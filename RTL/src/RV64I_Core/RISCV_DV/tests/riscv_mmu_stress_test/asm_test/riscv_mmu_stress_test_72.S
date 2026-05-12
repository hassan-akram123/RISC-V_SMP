.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 1
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0x8
                  li x1, 0x83dac1b2
                  li x2, 0x0
                  li x3, 0xf191ace0
                  li x4, 0x80000000
                  li x5, 0x2
                  li x6, 0x4c5acf9
                  li x7, 0xfbe03281
                  li x8, 0x0
                  li x9, 0x289f6889
                  li x10, 0xcd58bb09
                  li x11, 0x0
                  li x12, 0xfb54da46
                  li x14, 0x7c2a9e0d
                  li x15, 0xc363d077
                  li x16, 0x5
                  li x17, 0xf1822460
                  li x18, 0x80000000
                  li x19, 0x0
                  li x21, 0xf3a8badd
                  li x22, 0xf1a27eae
                  li x23, 0x80000000
                  li x24, 0x8c5f4759
                  li x25, 0xac085830
                  li x26, 0x496e51f6
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x80000000
                  la x20, user_stack_end
main:             la           a5, region_1+1103 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s2, 14(a5)
                  lhu          s7, 7(a5)
                  lb           s9, 28(a5)
                  sb           gp, 29(a5)
                  lbu          a1, 20(a5)
                  lw           a0, -47(a5)
                  nop
                  lbu          s5, -47(a5)
                  xor          s6, gp, a0
                  lhu          s0, -27(a5)
                  add          a4, s8, a1
                  lb           s2, -42(a5)
                  lbu          s6, 13(a5)
                  sltiu        s0, t3, -372
                  lb           s5, -12(a5)
                  lbu          a0, -12(a5)
                  sw           t0, -23(a5)
                  lbu          s10, -61(a5)
                  lbu          t1, -61(a5)
                  lbu          a7, 30(a5)
                  sb           sp, 48(a5)
                  lbu          a6, 56(a5)
                  sb           gp, -5(a5)
                  sb           s10, -5(a5) #end riscv_load_store_hazard_instr_stream_1
                  la           gp, region_1+667 #start riscv_load_store_rand_instr_stream_0
                  lbu          s10, 211(gp)
                  srai         s8, s8, 30
                  lb           t6, -249(gp)
                  srli         a6, a5, 28
                  and          t3, tp, zero
                  sb           t5, -93(gp)
                  lh           t1, -159(gp)
                  srl          t5, a1, t0
                  lb           zero, -150(gp)
                  xori         s0, t1, 1172
                  sb           t2, -88(gp)
                  lui          s9, 915202
                  sb           a2, 131(gp)
                  sub          sp, t4, s7
                  srl          s8, t0, s9
                  sll          s10, a2, s5
                  lbu          t1, -204(gp)
                  srli         s2, s2, 14
                  andi         s10, tp, -840
                  sltu         t2, s4, s5
                  lb           s9, -41(gp)
                  sra          s10, sp, t6
                  and          t6, s9, t6
                  srai         a6, s7, 27
                  add          a1, t6, s1
                  and          a1, s3, t5
                  xori         ra, a1, -258
                  lhu          t4, -1(gp)
                  sb           s7, 192(gp)
                  lb           s0, 16(gp) #end riscv_load_store_rand_instr_stream_0
                  la           t6, region_1+979 #start load_store_instr_stream_1
                  sh           t4, 49(t6)
                  la           s0, region_1+1926 #start load_store_instr_stream_0
                  lbu          s2, 651(t6)
                  la           t3, region_1+877 #start load_store_instr_stream_2
                  lbu          t2, 15(s0)
                  lbu          gp, 688(t6)
                  sb           a3, 0(t3)
                  lb           a0, -1(s0)
                  sb           s8, 660(t6)
                  lh           a4, -7(t3)
                  lhu          sp, -121(t6)
                  lhu          a1, -7(t3)
                  lbu          zero, -47(s0)
                  lbu          s11, 1(t3)
                  lb           a5, 852(t6)
                  lh           gp, -52(s0)
                  sh           t0, 13(t3) #end load_store_instr_stream_2
                  lbu          a5, -371(t6)
                  lh           t4, 767(t6) #end load_store_instr_stream_1
                  sb           s9, -61(s0) #end load_store_instr_stream_0
                  la           sp, region_0+983 #start riscv_load_store_hazard_instr_stream_0
                  lbu          a1, -20(sp)
                  lhu          s7, 17(sp)
                  lbu          t2, 5(sp)
                  lb           tp, 60(sp)
                  lb           a5, 60(sp)
                  lbu          s2, 60(sp)
                  sb           a3, 62(sp)
                  lbu          s11, 4(sp)
                  lb           s11, 4(sp)
                  slt          s6, ra, gp
                  lb           s2, 4(sp)
                  lb           t4, -20(sp)
                  sb           ra, 42(sp)
                  lbu          a5, 42(sp)
                  lbu          zero, -48(sp)
                  lb           t0, 24(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s1, region_0+1036 #start riscv_load_store_rand_instr_stream_1
                  or           a1, t0, t4
                  nop
                  lb           a7, -39(s1)
                  lui          s10, 15664
                  sb           a3, -45(s1)
                  slli         t0, a5, 30
                  srl          a7, a3, gp
                  srl          a5, s8, t0
                  sb           a4, 62(s1)
                  auipc        a7, 315035
                  andi         gp, gp, -679
                  sb           t0, 11(s1)
                  lbu          a7, 8(s1)
                  xor          a0, t4, t2
                  sll          t4, a0, a7
                  sb           t4, -16(s1)
                  xori         a5, s0, 1182
                  sb           s7, -64(s1)
                  sltiu        a6, zero, 1661
                  lw           s11, -4(s1)
                  sll          s11, s10, s3
                  lbu          t0, 18(s1)
                  lb           t4, -25(s1)
                  lhu          s0, 20(s1)
                  sb           t6, -14(s1)
                  lbu          s6, 1(s1)
                  sb           t4, 52(s1)
                  sb           a3, 34(s1)
                  sb           s1, 63(s1)
                  addi         ra, tp, 1129
                  lb           s0, 51(s1)
                  lb           s5, -64(s1)
                  sb           s8, -42(s1)
                  lbu          t1, -53(s1)
                  srai         a2, s3, 8
                  lbu          t1, -41(s1)
                  lui          t0, 390221
                  andi         s7, s2, 500
                  lbu          gp, 27(s1)
                  xori         tp, t5, -2039
                  slli         a2, s6, 15
                  addi         t1, a6, 1216
                  slti         sp, t6, 253
                  sll          s11, s10, sp
                  lhu          t6, -18(s1)
                  sb           a2, -29(s1)
                  sb           s5, 43(s1)
                  slti         gp, s9, -662
                  lhu          s0, 36(s1)
                  lbu          t2, -42(s1)
                  slli         t3, s4, 18
                  lui          s2, 223494
                  xori         zero, a3, -347
                  sb           s2, -33(s1)
                  sll          t4, s1, s4
                  ori          a7, s10, -538
                  lb           t5, -53(s1)
                  sh           zero, -20(s1) #end riscv_load_store_rand_instr_stream_1
                  bgeu         a6, a6, 16f
                  beq          s8, gp, 8f
                  blt          t5, s6, 16f
                  slti         s1, s8, 307
                  sra          t1, zero, a2
                  sltiu        s1, a7, -903
                  beq          zero, zero, 13f
                  ori          t3, s8, 1368
8:                sltu         s1, s10, a3
                  sra          a5, s8, s1
                  xori         t6, gp, 1898
                  sra          a6, t0, s8
                  sra          s11, s6, sp
13:               ori          a2, sp, -134
                  slti         a5, t4, 1462
                  bge          s0, zero, 26f
16:               beq          t5, ra, 34f
                  or           s9, s9, t6
                  slli         zero, tp, 9
                  slli         s11, s8, 17
                  slli         a4, a5, 13
                  srl          s1, a3, tp
                  or           a5, t3, s7
                  bltu         s2, t1, 30f
                  bne          s6, a0, 34f
                  or           t1, t3, s1
26:               sub          s5, s11, a5
                  beq          t6, s6, 29f
                  andi         a2, t0, 1854
29:               andi         s7, s0, 1037
30:               bge          s11, s10, 39f
                  blt          s0, s3, 35f
                  sra          s2, zero, s10
                  srl          sp, s3, s11
34:               srl          a4, sp, a3
35:               bge          s11, s0, 54f
                  sltu         a2, s10, ra
                  andi         s6, t5, 675
                  blt          s5, gp, 52f
39:               bge          s1, a0, 59f
                  slli         a6, tp, 30
                  bge          tp, a0, 54f
                  la           t3, region_0+132 #start load_store_instr_stream_2
                  la           s7, region_0+1892 #start load_store_instr_stream_1
                  lbu          s6, -883(s7)
                  la           a6, region_0+832 #start load_store_instr_stream_0
                  lb           t5, 41(a6)
                  sb           sp, 191(t3)
                  lw           s6, -1828(s7)
                  lb           s0, 203(t3)
                  sw           a4, 28(t3)
                  sh           t0, 68(t3)
                  lbu          t0, 11(a6)
                  lb           s11, 2(t3)
                  sb           s1, 38(s7)
                  lb           s9, -43(a6)
                  lbu          s0, -151(s7)
                  sw           s6, -56(a6)
                  sh           zero, -336(s7)
                  lb           s8, 211(t3)
                  sh           t2, -1742(s7)
                  lb           s10, -26(t3)
                  lbu          a0, 189(t3) #end load_store_instr_stream_2
                  lh           t5, -1628(s7) #end load_store_instr_stream_1
                  lb           ra, 3(a6) #end load_store_instr_stream_0
                  and          t4, s1, s0
                  bgeu         tp, s1, 46f
                  sltiu        t1, t5, 409
                  andi         t4, a0, -820
46:               sub          a6, s10, a4
                  sll          tp, a6, ra
                  srai         a2, t0, 18
                  srl          a4, sp, a3
                  addi         t0, ra, 1911
                  srli         s11, t3, 0
52:               add          t0, t2, t6
                  srli         gp, s2, 7
54:               ori          s7, t1, 749
                  sra          gp, sp, a2
                  srl          zero, s11, a0
                  slt          a1, t5, s6
                  andi         t6, s9, 864
59:               sltiu        s5, a4, -1277
                  bgeu         s10, a2, 61f
61:               slt          a2, s9, t4
                  slli         t1, t5, 20
                  slt          t3, tp, a2
                  auipc        t3, 857144
                  xor          a4, s7, t3
                  auipc        s9, 380184
                  sltiu        a4, s3, 1496
                  nop
                  srl          t6, s11, a7
                  blt          t4, s1, 79f
                  slti         t1, s9, 1523
                  ori          s1, sp, 1176
                  sll          ra, t0, ra
                  xor          s2, a2, s5
                  and          t5, s11, t5
                  and          t1, a5, t0
                  or           s5, s2, zero
                  slti         s6, s11, 1671
79:               srl          s8, ra, a5
                  slt          a7, s0, s6
                  sll          s0, s11, s10
                  sra          a7, a2, t3
                  nop
                  sltu         t5, s10, s1
                  la           tp, sub_2
                  addi         s0, s1, 1805
                  sub          gp, s3, s7
                  lui          s5, 193950
                  addi         tp, tp, -677
                  ori          a0, t1, 1094
                  addi         s5, sp, -1765
                  add          a5, gp, sp
                  srl          t0, a0, s1
                  sub          a0, a2, t6
main_j3:          jalr         t4, tp, 678 #jump main -> sub_2
                  bge          gp, a5, 103f
                  slli         sp, s0, 16
                  lui          t6, 816055
                  nop
                  or           s11, s0, t1
                  sltiu        s6, t4, -718
                  and          t4, a0, t4
                  srl          a6, a0, s8
                  bge          s2, s7, 102f
                  sltu         s5, sp, s5
                  ori          t4, ra, 277
                  slti         t5, s8, 2
                  sltu         t5, t4, a5
                  sltu         a4, ra, a1
                  ori          t4, t0, 227
                  slt          s7, a5, a3
                  sub          s11, s6, sp
                  beq          s3, s4, 116f
102:              sltu         a2, t0, a1
103:              xor          s1, a3, s1
                  bltu         s11, zero, 111f
                  sltiu        t4, t0, 175
                  sra          t2, s5, t0
                  beq          s7, a7, 123f
                  and          a7, a6, s7
                  or           s9, a6, s8
                  srli         s6, s9, 9
111:              bne          s3, t3, 126f
                  bgeu         sp, t2, 119f
                  slti         a0, a5, 1968
                  xori         s8, ra, 2020
                  andi         ra, s4, -1123
116:              sll          t0, s3, s10
                  nop
                  sltiu        sp, s9, -1980
119:              or           tp, s6, s10
                  sll          s5, tp, s4
                  sltiu        s11, s0, -420
                  lui          tp, 905699
123:              bltu         a7, ra, 137f
                  slti         t2, s1, -1198
                  ori          t3, a5, 360
126:              blt          a5, t6, 133f
                  bgeu         gp, s1, 130f
                  andi         a7, s6, -1890
                  sltu         s5, a1, t6
130:              srli         a7, sp, 29
                  srai         a2, s1, 28
                  la           a1, sub_1
                  slli         a6, t1, 22
                  addi         tp, s8, -1978
                  sll          a5, t6, s5
                  or           t6, a2, a2
                  addi         a1, a1, 607
                  xori         s2, s4, 115
                  srl          s1, t5, t6
                  slt          s2, s5, s8
                  slli         t5, t3, 0
main_j2:          jalr         t4, a1, -607 #jump main -> sub_1
                  addi         s9, t0, 1301
                  srli         s0, a6, 16
133:              slt          s7, s1, s3
                  nop
                  or           t1, t1, a0
                  addi         a2, a0, -978
137:              andi         s6, a5, 383
                  lui          s10, 732822
                  add          a2, s11, s10
                  srai         t3, tp, 6
                  and          a5, s0, a6
                  sll          s6, gp, t6
                  bgeu         t1, ra, 144f
144:              beq          tp, a0, 163f
                  beq          a6, s11, 148f
                  sll          sp, s0, s7
                  slti         zero, t4, -1288
148:              bgeu         a5, a2, 167f
                  bne          a5, a2, 159f
                  bltu         t3, t0, 157f
                  or           a6, a5, t6
                  nop
                  xor          t4, a5, s9
                  srai         a2, a5, 22
                  srai         s2, t5, 27
                  add          s8, a0, s4
157:              sltu         t2, tp, s11
                  sltu         gp, t4, a5
159:              auipc        a0, 376208
                  bltu         a0, s8, 162f
                  bge          s8, a7, 168f
162:              sub          t3, t1, s7
163:              andi         t5, s1, -1968
                  nop
                  lui          gp, 870341
                  nop
167:              auipc        a7, 804333
168:              beq          ra, s10, 179f
                  add          a6, s2, s0
                  add          s6, s10, s11
                  and          s7, sp, a4
                  srai         s8, s3, 16
                  sltiu        gp, t2, 1422
                  slli         t4, s6, 30
                  lui          s6, 706050
                  slt          s10, t4, s0
                  srai         ra, s4, 6
                  slti         t4, t3, -1916
179:              sub          s9, tp, s6
                  sltiu        s7, a4, 431
                  ori          a0, t5, -1814
                  xor          s7, gp, a3
                  lui          t0, 814859
                  or           a6, t0, a6
                  blt          a4, s5, 186f
186:              andi         t2, a6, -1657
                  bne          s10, s1, 194f
                  sra          t0, t5, sp
                  add          a1, s6, s8
                  sltiu        s5, a6, 795
                  srl          sp, s7, a4
                  lui          tp, 457381
                  srl          s10, t3, ra
194:              slli         s6, s7, 5
                  beq          t1, s0, 211f
                  bltu         a6, sp, 211f
                  la           s8, sub_1
                  sltiu        s1, a7, 17
                  addi         s8, s8, 861
                  auipc        s11, 609727
                  xor          t6, a6, t3
                  sll          s7, s11, zero
                  srli         s1, t6, 6
main_j1:          jalr         t4, s8, -861 #jump main -> sub_1
                  sltu         a6, s6, ra
                  sltu         t1, a0, a0
                  sltiu        ra, s3, 314
                  sll          s7, t2, s7
                  bge          t4, a7, 208f
                  bne          a7, s8, 205f
                  and          zero, t0, t6
                  xor          s1, a6, a5
205:              sltu         tp, t0, s11
                  srli         s7, s1, 19
                  srai         t6, t1, 25
208:              slli         tp, a0, 18
                  ori          zero, t5, -877
                  andi         s9, a5, -149
211:              and          s8, s1, sp
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         s4, s4, -12
                  sw           t4, 4(s4)
                  sra          s6, a0, a4
                  slli         a2, s9, 0
                  slli         a6, s1, 10
                  sub          s6, ra, a0
                  la           s5, region_0+125 #start load_store_instr_stream_0
                  la           s1, region_0+889 #start load_store_instr_stream_1
                  lbu          sp, 20(s5)
                  sb           s9, -240(s1)
                  lw           gp, -253(s1)
                  sb           t0, 133(s1)
                  lb           s2, -144(s1)
                  lh           gp, 49(s5)
                  lb           a2, -172(s1)
                  lb           sp, 7(s5)
                  lhu          t3, -19(s1)
                  sh           a6, 1(s5)
                  lw           a0, -25(s1)
                  lbu          a0, -58(s1)
                  sb           a1, -80(s1) #end load_store_instr_stream_1
                  sb           s0, 14(s5) #end load_store_instr_stream_0
                  la           s10, region_0+1261 #start riscv_load_store_hazard_instr_stream_2
                  lb           s2, -159(s10)
                  lhu          a2, -159(s10)
                  lbu          t2, -159(s10)
                  or           s6, s4, s7
                  sh           s3, 149(s10)
                  lh           s1, 149(s10)
                  lb           ra, 127(s10)
                  srli         s11, a3, 10
                  lhu          s11, -55(s10)
                  sh           a1, -55(s10)
                  lbu          s6, -55(s10)
                  addi         s9, a0, 946
                  lbu          zero, -55(s10)
                  lbu          s11, -55(s10)
                  sll          t4, s11, s10
                  lb           s2, -55(s10)
                  sra          s11, a3, sp
                  lhu          s7, -55(s10)
                  lw           s7, -221(s10)
                  sb           s6, -221(s10)
                  lb           ra, -221(s10)
                  lb           t1, -221(s10)
                  lhu          ra, -221(s10)
                  sb           s9, -221(s10)
                  sh           a1, -221(s10) #end riscv_load_store_hazard_instr_stream_2
                  la           t6, region_1+1281 #start riscv_load_store_hazard_instr_stream_0
                  lh           s9, -11(t6)
                  lb           a7, -11(t6)
                  lb           s6, -11(t6)
                  lhu          s5, -11(t6)
                  lhu          sp, -11(t6)
                  lbu          s9, -11(t6)
                  sb           a5, -11(t6)
                  sh           a4, -11(t6)
                  lbu          s2, -11(t6)
                  lhu          s5, -15(t6)
                  lhu          s9, -15(t6)
                  lh           tp, -15(t6)
                  lbu          a0, -10(t6)
                  lb           s8, -10(t6)
                  andi         s8, a2, 659
                  sb           a3, -10(t6)
                  lbu          s7, -1(t6)
                  srli         t1, a7, 13
                  lbu          s1, 6(t6)
                  lbu          zero, 6(t6)
                  lbu          sp, -10(t6) #end riscv_load_store_hazard_instr_stream_0
                  la           s7, region_1+1594 #start riscv_load_store_rand_instr_stream_4
                  slti         a1, a5, -1022
                  lui          s9, 243583
                  lb           ra, 8(s7)
                  lw           t4, 6(s7)
                  sb           s2, -15(s7)
                  auipc        s8, 767574
                  lb           t6, -10(s7)
                  sb           s2, -11(s7)
                  nop
                  slli         tp, s11, 11
                  lbu          gp, -5(s7)
                  sh           a7, -8(s7)
                  lbu          t1, 13(s7)
                  sb           a2, -15(s7)
                  lb           zero, -5(s7)
                  lbu          a0, -9(s7)
                  andi         s10, s10, 297
                  sub          ra, s8, s0
                  lbu          tp, -8(s7)
                  and          s9, t1, a4
                  sb           t1, -13(s7)
                  lh           s1, -16(s7)
                  lb           s5, 13(s7)
                  lbu          t2, 13(s7)
                  sb           zero, -3(s7)
                  sb           gp, 15(s7)
                  sb           s11, -13(s7)
                  sb           zero, -1(s7)
                  srli         a0, s4, 13
                  lb           t5, 15(s7)
                  lb           t1, 4(s7)
                  ori          zero, a7, -578
                  lb           t1, -13(s7)
                  sll          t3, s1, s7
                  add          s1, t6, t0
                  lbu          a0, -3(s7)
                  addi         s11, s4, 1283
                  sb           zero, -4(s7)
                  sb           a4, -7(s7)
                  sh           s9, -8(s7)
                  lb           s9, 5(s7)
                  lh           sp, 2(s7) #end riscv_load_store_rand_instr_stream_4
                  la           s1, region_1+1868 #start riscv_load_store_rand_instr_stream_2
                  sh           s10, -10(s1)
                  lbu          t3, -9(s1)
                  lb           gp, -10(s1)
                  ori          tp, a3, -1649
                  xori         s9, s9, 2005
                  lb           a5, 2(s1)
                  sw           s9, 0(s1)
                  sb           s9, -10(s1)
                  lw           a5, 16(s1)
                  lbu          a4, 5(s1)
                  auipc        s5, 378330
                  sb           s11, 3(s1)
                  lb           a1, 1(s1)
                  lb           t4, 1(s1)
                  slt          t0, t4, a7
                  lb           a0, 9(s1)
                  sb           s2, 13(s1)
                  add          s8, t1, s4
                  andi         s9, s11, -1171
                  lw           s9, 8(s1)
                  and          ra, s6, s0
                  lb           t0, -10(s1)
                  sb           a4, -11(s1)
                  lw           t5, 12(s1)
                  ori          a7, s5, -1613
                  lb           s2, 14(s1)
                  lbu          t5, 16(s1)
                  lbu          s0, 15(s1)
                  lb           s6, -9(s1)
                  lb           s5, -14(s1)
                  lbu          a0, -3(s1)
                  srli         t2, s9, 23
                  sb           a0, -10(s1)
                  sra          tp, s11, t3
                  lb           zero, -9(s1) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1660 #start riscv_load_store_rand_instr_stream_1
                  auipc        a4, 673907
                  or           s9, s8, s10
                  sb           t5, 134(sp)
                  sb           s6, 5(sp)
                  sll          s5, a6, s9
                  lb           t0, 89(sp)
                  lbu          a5, -197(sp)
                  sb           sp, 109(sp)
                  lbu          s1, -99(sp)
                  addi         t5, s4, 1102
                  sltu         tp, t4, s9
                  lb           s1, 167(sp)
                  andi         a1, s2, 879
                  lb           tp, -167(sp)
                  slti         tp, sp, 586
                  sb           s8, -139(sp)
                  sb           t6, 87(sp)
                  andi         a7, s1, 1145
                  lb           a6, -177(sp)
                  or           s1, s11, a0
                  andi         gp, a4, 1908
                  sb           a1, 129(sp)
                  slti         s10, s7, -414
                  sltu         s9, t6, t2
                  sra          t0, a1, sp
                  lh           t6, -78(sp)
                  sb           a2, 47(sp)
                  lhu          s10, -190(sp)
                  lb           s8, -151(sp)
                  sll          tp, a2, s7
                  sh           s3, 230(sp)
                  lb           s6, -179(sp)
                  or           a6, s4, a6
                  lb           s11, -172(sp)
                  addi         tp, a6, -818
                  sb           s10, -59(sp)
                  and          gp, a7, a0
                  sltu         a2, s0, t6
                  sb           ra, -91(sp)
                  auipc        t1, 35359
                  lbu          s10, 163(sp)
                  lui          tp, 657248
                  nop
                  addi         ra, s7, -234
                  slt          t0, a3, t1
                  sltiu        s8, zero, 1238
                  ori          a7, s6, -931
                  lb           ra, -123(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_0+1041 #start load_store_instr_stream_3
                  sh           t4, -221(a0)
                  la           ra, region_0+954 #start load_store_instr_stream_2
                  lbu          s7, -158(a0)
                  lh           s1, -111(a0)
                  la           s6, region_0+949 #start load_store_instr_stream_0
                  lh           a5, -42(ra)
                  lbu          zero, 242(a0)
                  sb           a5, -16(s6)
                  lb           a2, -14(s6)
                  la           s11, region_0+505 #start load_store_instr_stream_1
                  lb           a5, 251(a0)
                  sh           s0, -5(s6)
                  sb           t6, 57(ra)
                  lbu          s7, -14(ra)
                  lw           a5, 18(ra)
                  lbu          s0, 1390(s11)
                  lbu          s2, 504(s11)
                  lbu          s8, 54(ra)
                  sb           a2, 4(s6)
                  lb           sp, 29(a0)
                  lb           t4, 15(s6)
                  lh           t4, -34(ra)
                  lbu          tp, -10(s6)
                  lbu          s9, -20(a0)
                  sh           a3, 1001(s11)
                  sb           s4, 126(a0)
                  lhu          t5, 233(a0) #end load_store_instr_stream_3
                  lb           s0, 1060(s11)
                  lbu          t4, 14(s6)
                  lb           zero, 412(s11)
                  lb           a1, 13(ra)
                  sb           a6, -6(s6)
                  lb           a5, 64(ra) #end load_store_instr_stream_2
                  lb           a6, -375(s11)
                  lhu          a2, 285(s11) #end load_store_instr_stream_1
                  sh           s1, -5(s6) #end load_store_instr_stream_0
                  la           t0, region_0+1944 #start load_store_instr_stream_0
                  la           s8, region_0+693 #start load_store_instr_stream_1
                  la           a5, region_0+278 #start load_store_instr_stream_2
                  lh           zero, -230(t0)
                  la           a6, region_0+499 #start load_store_instr_stream_3
                  lb           tp, 1423(a6)
                  sh           a6, 13(s8)
                  lb           s9, -30(s8)
                  lbu          ra, -67(a6)
                  sw           gp, -1324(t0)
                  lbu          t5, -1(a5)
                  la           s1, region_0+1743 #start load_store_instr_stream_4
                  lbu          a0, -544(t0)
                  lb           t5, 54(a5)
                  sw           t0, 809(a6)
                  sb           s0, -23(a5)
                  lbu          s10, 204(a6)
                  lb           s11, 39(s1)
                  sw           t1, 1205(a6)
                  sb           s5, -1557(t0)
                  sb           s8, -10(s1)
                  sb           s3, 446(a6)
                  sh           t5, 1301(a6)
                  lbu          t2, -28(a5)
                  lb           a7, 23(a5)
                  lhu          ra, -51(s8)
                  lb           s5, -32(s8)
                  lb           s2, -25(s1)
                  lb           gp, -1087(t0)
                  lbu          a4, 57(s8)
                  lb           sp, 911(a6)
                  sb           t3, -18(a5) #end load_store_instr_stream_2
                  sb           s10, -1773(t0)
                  lbu          a1, -64(s8)
                  sh           s11, -22(t0)
                  lbu          a0, 45(s8)
                  lw           a1, -15(s1)
                  sb           t2, 200(a6)
                  lhu          s9, 19(a6) #end load_store_instr_stream_3
                  lhu          t4, 1(s1)
                  sh           s9, 5(s1) #end load_store_instr_stream_4
                  lbu          zero, 10(s8) #end load_store_instr_stream_1
                  lb           gp, -638(t0) #end load_store_instr_stream_0
                  la           s6, region_0+51 #start load_store_instr_stream_0
                  la           t2, region_0+1605 #start load_store_instr_stream_1
                  lw           t0, -7(s6)
                  sh           s5, -433(t2)
                  lbu          tp, 2(s6)
                  lh           tp, -3(s6)
                  lb           s9, -556(t2)
                  sb           a4, 2(s6)
                  lbu          t4, -1024(t2)
                  lb           a0, 12(s6)
                  sb           s1, 12(s6)
                  lb           a0, 7(s6)
                  sb           a2, -1090(t2)
                  sw           a2, 283(t2)
                  lbu          t6, 14(s6)
                  sb           s8, -303(t2)
                  sb           s7, 6(s6)
                  sh           a6, -1485(t2)
                  lh           t3, -81(t2) #end load_store_instr_stream_1
                  lbu          t3, 14(s6) #end load_store_instr_stream_0
                  la           s10, region_1+701 #start riscv_load_store_hazard_instr_stream_4
                  lb           a5, 23(s10)
                  lb           t5, -50(s10)
                  sb           a4, 228(s10)
                  sb           s7, 228(s10)
                  lb           a4, -182(s10)
                  sb           t4, -182(s10)
                  lb           t1, -182(s10)
                  srli         a6, s7, 14
                  lhu          a0, -143(s10)
                  lbu          s0, -143(s10)
                  sh           zero, -143(s10)
                  lhu          t6, -143(s10)
                  lh           sp, -143(s10)
                  lb           t5, 22(s10)
                  sb           a6, -8(s10) #end riscv_load_store_hazard_instr_stream_4
                  la           s7, region_1+21 #start riscv_load_store_rand_instr_stream_0
                  sub          ra, tp, ra
                  sltiu        a1, s9, -66
                  sb           sp, 191(s7)
                  sra          sp, t1, s9
                  sw           a1, 179(s7)
                  lb           t4, 86(s7)
                  sll          a7, a6, a4
                  lw           t6, 219(s7)
                  and          ra, a3, sp
                  lui          a1, 321552
                  lb           a5, 9(s7)
                  lb           s10, 39(s7)
                  xori         a1, a0, 1034
                  lbu          gp, 230(s7)
                  lw           t1, 203(s7)
                  lb           s11, 189(s7)
                  sh           t4, 209(s7)
                  lb           s11, 162(s7)
                  sw           a6, 47(s7)
                  addi         a2, a7, 19
                  sb           gp, 68(s7)
                  lbu          a5, 66(s7)
                  lhu          ra, 175(s7)
                  lhu          t1, 71(s7)
                  lhu          s1, 101(s7)
                  lhu          a6, 255(s7)
                  lbu          a1, 220(s7)
                  ori          a1, s4, 1029
                  slt          s2, s8, t4
                  lbu          ra, 86(s7)
                  srai         s2, ra, 6
                  slt          t2, tp, s2
                  lb           a5, 41(s7)
                  lb           s8, -18(s7) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_0+117 #start riscv_load_store_rand_instr_stream_3
                  lbu          s11, 58(s7)
                  addi         ra, a1, 655
                  sb           a2, 57(s7)
                  auipc        t2, 313300
                  or           ra, sp, a6
                  lb           s9, -61(s7)
                  sb           a3, 44(s7)
                  lh           t5, -41(s7)
                  lh           s2, -55(s7)
                  andi         a6, s0, 917
                  sb           a1, 26(s7)
                  slt          t4, ra, a6
                  sb           sp, 36(s7)
                  lh           t0, 9(s7)
                  or           s10, s11, s11
                  add          t0, s11, s0
                  sb           s10, -30(s7)
                  sw           s10, 47(s7)
                  sb           s6, 40(s7)
                  lb           s10, -44(s7)
                  slt          ra, gp, a2
                  sb           t6, -62(s7)
                  addi         t3, t0, 196
                  srl          s6, s1, t0
                  lbu          a5, 38(s7)
                  sh           t3, -17(s7)
                  lbu          tp, 26(s7)
                  lb           s10, 54(s7)
                  xor          t0, s8, s1
                  lb           t0, 46(s7)
                  nop
                  lb           s0, -55(s7)
                  sra          s5, a4, a4
                  srli         t2, t2, 2
                  lh           s1, 25(s7)
                  lbu          a1, 44(s7)
                  andi         s6, t4, -2044
                  sltiu        a6, t5, -486
                  lbu          t2, 2(s7)
                  lbu          a2, 42(s7)
                  add          a7, t5, s11
                  lbu          s2, 31(s7)
                  sb           a1, -55(s7)
                  and          a6, zero, a7
                  lbu          s6, -58(s7) #end riscv_load_store_rand_instr_stream_3
                  la           t3, region_0+404 #start load_store_instr_stream_3
                  la           s6, region_0+249 #start load_store_instr_stream_2
                  la           gp, region_0+879 #start load_store_instr_stream_1
                  lhu          s1, 22(t3)
                  sb           tp, -116(s6)
                  la           a0, region_0+888 #start load_store_instr_stream_0
                  sb           a2, -728(gp)
                  lb           s9, 31(t3)
                  lb           a4, 121(s6)
                  lbu          s5, -160(s6)
                  lb           s10, 983(a0)
                  lbu          a5, -191(a0)
                  sb           gp, -63(s6)
                  lhu          t2, 286(a0)
                  lw           sp, 32(t3)
                  lb           a1, -681(gp)
                  sb           s10, -389(a0)
                  lh           s2, -831(gp)
                  lbu          s1, 1092(a0)
                  sb           t2, 553(gp)
                  lh           ra, -702(a0)
                  lb           a1, -523(a0)
                  lbu          s2, -25(t3)
                  lw           a2, -41(s6)
                  lh           t5, -32(t3)
                  lhu          a4, 60(t3)
                  sb           t2, 1098(a0)
                  lbu          s7, -56(t3)
                  lbu          s1, -245(s6)
                  lbu          s7, -747(gp) #end load_store_instr_stream_1
                  lbu          s2, -33(t3) #end load_store_instr_stream_3
                  lbu          s8, -795(a0)
                  lbu          s7, -72(s6) #end load_store_instr_stream_2
                  lbu          s5, -168(a0) #end load_store_instr_stream_0
                  la           sp, region_1+155 #start riscv_load_store_hazard_instr_stream_1
                  lb           s11, 50(sp)
                  lbu          s8, -34(sp)
                  lb           t6, -34(sp)
                  sb           s5, -34(sp)
                  lbu          a4, -34(sp)
                  lb           s5, -34(sp)
                  sh           gp, 23(sp)
                  sw           t2, 53(sp)
                  sltu         s8, a7, s10
                  lb           a6, -2(sp)
                  lb           t5, -28(sp)
                  sb           a4, -28(sp)
                  sb           zero, -44(sp)
                  lbu          a6, -44(sp)
                  sb           t2, -50(sp)
                  lbu          t4, -50(sp)
                  sb           s5, -50(sp) #end riscv_load_store_hazard_instr_stream_1
                  ori          s8, s5, 1342
                  srai         t5, s11, 30
                  andi         s10, s4, -1040
                  bne          zero, s11, 20f
                  blt          t4, a1, 11f
                  lui          s5, 379892
                  sltiu        s1, ra, -1652
                  and          s8, s8, s2
                  slt          a2, a1, a0
                  sub          s2, ra, s2
                  xori         a2, s9, 254
11:               blt          gp, s9, 25f
                  slli         a5, s4, 5
                  bgeu         s6, s10, 23f
                  la           t2, region_0+159 #start riscv_load_store_hazard_instr_stream_3
                  lh           t5, -7(t2)
                  lhu          s7, -7(t2)
                  sh           a5, -11(t2)
                  add          s5, t5, s3
                  lh           s2, -11(t2)
                  sb           s11, -11(t2)
                  lhu          gp, 11(t2)
                  andi         a5, s10, 1402
                  lbu          a7, 2(t2)
                  lbu          gp, 1(t2)
                  sb           s5, 10(t2)
                  lbu          s2, 15(t2)
                  auipc        t4, 167319
                  lh           s11, -13(t2)
                  lbu          t6, -2(t2)
                  sb           s0, 0(t2)
                  lb           tp, -14(t2)
                  lb           a1, -14(t2)
                  lb           s7, -14(t2)
                  lbu          a2, -2(t2)
                  lb           t0, -14(t2)
                  lb           a2, -14(t2)
                  lb           tp, -14(t2) #end riscv_load_store_hazard_instr_stream_3
                  srai         ra, tp, 10
                  sll          sp, t0, a4
                  beq          t6, sp, 32f
                  slti         s7, t2, -661
                  xor          a1, t1, s1
                  slli         gp, a5, 7
20:               srli         t3, s2, 2
                  addi         a2, a1, 1661
                  auipc        a1, 589872
23:               lui          sp, 562349
                  slt          s1, s8, a3
25:               slli         s8, t1, 2
                  bge          a1, a3, 28f
                  add          a2, t2, s11
28:               bne          s1, a5, 35f
                  slli         ra, t2, 30
                  blt          a2, t5, 41f
                  srai         sp, t4, 30
32:               add          zero, t5, t2
                  or           t2, s0, s3
                  nop
35:               addi         s10, t6, 505
                  sltiu        s5, s7, -885
                  auipc        a7, 918140
                  slli         a2, s4, 8
                  xori         a1, t2, 428
                  xor          s0, t5, a2
41:               nop
                  ori          s0, s1, -399
                  blt          a4, t2, 62f
                  and          t2, tp, s1
                  lui          t3, 52624
                  beq          a5, t0, 58f
                  ori          s9, s8, -1172
                  sll          t4, t5, s1
                  ori          a4, ra, 3
                  lui          s9, 752069
                  xor          t5, s2, s0
                  srl          t3, a4, t1
                  add          gp, tp, a1
                  srli         a4, gp, 21
                  xori         s0, a6, 151
                  bltu         s8, t0, 60f
                  add          t2, s8, tp
58:               sltiu        ra, t0, -1553
                  beq          t0, a0, 70f
60:               bge          a7, ra, 61f
61:               or           ra, a4, gp
62:               bge          t6, a4, 73f
                  sub          a6, sp, t3
                  or           a4, s7, a1
                  andi         a5, ra, 1569
                  auipc        zero, 86157
                  or           tp, s8, t6
                  xor          s6, a0, s1
                  slti         s6, a7, -1328
70:               addi         sp, t1, 1232
                  sub          gp, t3, t3
                  slti         a6, a3, -1320
73:               xor          s9, s6, ra
                  beq          s11, s4, 85f
                  bne          t0, s8, 85f
                  lui          ra, 233382
                  srli         a0, ra, 9
                  srl          s10, t4, ra
                  srli         t3, t0, 24
                  nop
                  bltu         s8, a5, 89f
                  bltu         t3, t6, 99f
                  sub          s0, a7, t0
                  nop
85:               auipc        a7, 768814
                  sltiu        a4, s11, 330
                  ori          a5, a2, -131
                  srai         sp, a4, 8
89:               srl          ra, s6, gp
                  slt          a5, t0, s8
                  nop
                  or           tp, t4, a5
                  srli         a6, a4, 0
                  slti         gp, s9, 1038
                  andi         t4, a6, 867
                  and          a7, zero, t1
                  and          a7, s0, s8
                  beq          s5, s2, 109f
99:               sra          t2, s4, zero
                  ori          t2, a1, 1730
                  srai         s2, t0, 24
                  bne          a7, t2, 115f
                  bne          s5, s8, 108f
                  add          s5, tp, gp
                  slti         t0, t5, 492
                  and          t3, a5, t4
                  and          t6, zero, t2
108:              srli         a7, a7, 7
109:              add          zero, s5, s3
                  ori          sp, s5, 1556
                  bgeu         s1, s11, 113f
                  addi         s10, zero, -587
113:              srai         s10, s6, 31
                  bne          sp, t3, 129f
115:              slt          t2, a7, a5
                  auipc        a5, 754460
                  slt          t6, t5, s10
                  bgeu         s7, s1, 132f
                  bgeu         s6, s6, 120f
120:              sub          t0, s4, s3
                  nop
                  bge          t6, s11, 135f
                  srli         s0, s8, 20
                  andi         t1, s8, 1906
                  bne          gp, s10, 130f
                  sltiu        t2, s11, 1256
                  slti         s0, s6, -1599
                  slli         s1, s8, 24
129:              ori          s2, t5, 1109
130:              lui          zero, 862070
                  xor          a1, t6, a2
132:              blt          s8, s11, 145f
                  slti         a2, t2, -474
                  lui          gp, 49343
135:              sll          s2, s5, s8
                  add          s9, s5, a3
                  and          s9, s2, s3
                  sltiu        a5, s3, 1240
                  beq          ra, s10, 141f
                  slli         t4, a2, 2
141:              auipc        s0, 132212
                  bltu         s9, t2, 143f
143:              sltu         t5, s11, tp
                  andi         s8, a7, -856
145:              addi         t2, t5, -1158
                  sra          sp, s9, ra
                  blt          a2, s1, 154f
                  slti         zero, a4, 1661
                  bgeu         a7, s10, 153f
                  or           s8, ra, s0
                  sltiu        a5, gp, -1555
                  auipc        a6, 681173
153:              blt          s11, a3, 158f
154:              sltu         sp, s1, s0
                  bne          t1, s2, 170f
                  srl          s9, s0, s5
                  sltu         s2, s1, t6
158:              bge          t6, gp, 172f
                  slt          t4, t2, s7
                  xori         a7, s6, 1679
                  srl          t0, t1, s6
                  blt          t6, gp, 175f
                  xor          s7, t4, s11
                  sltu         s9, s3, a2
                  sltiu        a0, a6, -1705
                  srai         s8, t5, 17
                  lui          s10, 849322
                  slli         s6, t1, 16
                  or           t6, s0, s11
170:              sltu         s2, s8, s5
                  sra          t0, s9, s7
172:              or           tp, s4, t2
                  sub          a6, s0, gp
                  add          s7, a6, s9
175:              slli         s10, a0, 26
                  auipc        a2, 483423
                  addi         s2, t0, 1714
                  lui          ra, 981393
                  bge          ra, s2, 181f
                  nop
181:              srl          s11, a7, s4
                  slti         s2, t4, -1432
                  add          gp, s5, t0
                  slli         gp, s1, 19
                  blt          s3, a3, 204f
                  or           a2, t2, t6
                  auipc        s2, 928705
                  blt          t5, s8, 189f
189:              sltiu        s1, t1, -1261
                  srl          t6, a0, t2
                  auipc        s8, 487474
                  slti         t6, a5, 498
                  bltu         t4, t5, 206f
                  bltu         s10, t3, 201f
                  lui          s8, 356020
                  xori         s9, t4, 577
                  sltu         a0, s2, a3
                  srli         s1, t2, 0
                  sltu         t2, s10, s0
                  srai         t2, a7, 26
201:              addi         s9, a7, 1009
                  sll          s10, s6, t6
                  blt          s11, s11, 219f
204:              bge          s4, t0, 215f
                  and          s6, ra, s10
206:              bgeu         a6, a7, 208f
                  add          t5, s1, tp
208:              bne          s6, t2, 219f
                  blt          a0, a5, 211f
                  sll          s1, s11, s3
211:              beq          a7, s7, 222f
                  beq          ra, a5, 217f
                  srai         s7, a2, 1
                  slti         a0, s5, -1929
215:              addi         s2, t1, 439
                  lui          zero, 1020846
217:              and          a6, s2, s10
                  xor          tp, s10, a2
219:              or           a0, s11, s4
                  bge          t3, gp, 221f
221:              sll          a6, a6, zero
222:              sltiu        t2, t4, 873
                  or           s9, t3, s5
                  slli         t0, s0, 19
                  slt          s11, s4, gp
                  srli         a0, s2, 27
                  bge          tp, zero, 244f
                  xori         t5, s1, 1844
                  nop
                  bltu         zero, a6, 244f
                  srai         t4, sp, 0
                  lui          a7, 5721
                  bgeu         s2, a1, 241f
                  sll          a7, a2, gp
                  bltu         s3, a7, 245f
                  sltu         t3, zero, s8
                  lui          s10, 559710
                  srl          s7, s1, t4
                  slti         t5, t2, -107
                  slti         s2, a7, 1498
241:              lui          s1, 541059
                  srai         t0, a1, 15
                  bne          t3, s4, 253f
244:              bltu         t6, a7, 261f
245:              sub          a4, tp, s4
                  srl          t1, t2, s9
                  addi         t2, t2, 89
                  sll          a2, t6, s6
                  xori         t2, s8, -199
                  and          tp, t6, t4
                  addi         t4, a3, -1532
                  auipc        s1, 241564
253:              andi         s8, s10, 492
                  and          tp, ra, a0
                  xori         a1, s2, 1536
                  sltu         s5, ra, t6
                  sltiu        s7, gp, -1363
                  sltu         sp, a4, s2
                  xor          s7, a5, t6
                  sltiu        a7, s2, -1900
261:              bge          s5, t3, 272f
                  addi         s7, t1, -205
                  sra          s5, s2, a6
                  add          s8, s8, ra
                  sub          t1, ra, s2
                  sub          t4, s4, a4
                  blt          zero, a5, 280f
                  srai         t4, a4, 24
                  or           s5, s1, s4
                  sltu         a7, a3, a0
                  lui          s6, 681474
272:              xor          t2, a2, a1
                  slli         a1, a7, 24
                  xor          s10, s3, ra
                  xori         s6, t2, 160
                  auipc        ra, 668890
                  xor          a5, t0, s8
                  sra          zero, a7, s4
                  sub          s6, s9, sp
280:              ori          s2, s8, 1168
                  auipc        t5, 917511
                  slli         t4, s9, 26
                  slli         a5, ra, 31
                  slti         s2, s2, 6
                  ori          a6, s10, -896
                  lui          a0, 792011
                  slli         s9, t5, 1
                  auipc        s10, 137221
                  addi         a4, s5, -196
                  sll          s9, s0, t0
                  srai         s2, s4, 11
                  srli         t0, t5, 30
                  bgeu         s1, t1, 304f
                  or           a5, a1, a7
                  slt          a2, s2, t2
                  xori         a2, s8, -892
                  srl          a0, a7, s9
                  sll          tp, s1, s4
                  srai         t0, t6, 7
                  srl          a6, s10, t2
                  sltiu        ra, s4, -1369
                  bltu         t3, zero, 314f
                  and          a6, a6, a6
304:              or           t3, s10, t2
                  nop
                  and          s7, t6, t6
                  xor          a5, a3, s9
                  srai         a0, a3, 18
                  or           s9, a5, a2
                  bgeu         s4, s6, 311f
311:              and          t4, a4, s1
                  auipc        s10, 507913
                  sltu         a2, s6, a0
314:              xori         t1, a4, -1018
                  slt          s1, s4, s9
                  xor          a6, t5, a7
                  bgeu         t1, s3, 322f
                  sltu         a7, a2, s3
                  andi         a7, s8, -532
                  or           s0, s11, t2
                  sub          t0, s5, t6
322:              lui          tp, 342593
                  lui          a0, 1021079
                  add          a0, t4, a2
                  auipc        s2, 871532
                  srai         a7, t3, 16
                  srli         a6, s4, 9
                  bge          a3, sp, 329f
329:              srli         a6, t5, 2
                  addi         s0, a6, -1412
                  or           s8, a0, s6
                  sll          tp, s11, a5
                  srl          t2, t6, s4
                  addi         s9, a4, 1159
                  bltu         t2, tp, 346f
                  bge          a6, a5, 350f
                  sra          tp, t3, t2
                  sra          t5, s10, s10
                  xor          t5, a5, t0
                  bne          a7, t0, 348f
                  xor          a6, s3, s4
                  addi         t1, t1, 1971
                  xori         s5, t2, 394
                  sltu         s9, a2, a1
                  srl          a1, a3, t2
346:              srli         a0, gp, 11
                  or           s9, a1, s4
348:              xori         s10, a0, -1718
                  bne          s8, s2, 360f
350:              xori         a5, gp, -1878
                  slt          s11, t5, s4
                  ori          s9, s0, 1516
                  add          s9, a6, t1
                  blt          a5, a5, 365f
                  sltu         a1, t4, a7
                  srl          s2, zero, a0
                  srai         t4, a7, 4
                  xor          s8, t3, s8
                  srl          s9, t2, a5
360:              blt          gp, a4, 377f
                  xor          sp, a2, sp
                  sltiu        s9, s6, -926
                  addi         ra, t1, -1475
                  and          s0, zero, s7
365:              nop
                  lui          a5, 887088
                  slti         s2, a5, -1113
                  sltiu        s11, t3, -511
                  addi         a1, s2, -653
                  sll          s10, t0, t4
                  xori         s7, a5, 1226
                  srai         s9, tp, 14
                  sra          s0, a1, t0
                  sltiu        a7, s10, 960
                  sll          t5, s7, s9
                  bltu         t4, t1, 388f
377:              bge          gp, s8, 394f
                  srai         a1, s4, 13
                  sll          s11, ra, s6
                  beq          a4, t2, 395f
                  sub          gp, gp, a4
                  bge          a6, t0, 401f
                  blt          a4, a1, 384f
384:              bltu         ra, s9, 397f
                  bge          s11, s9, 387f
                  srai         s11, s7, 19
387:              or           s2, s0, sp
388:              srli         t6, s3, 17
                  nop
                  xor          gp, tp, s8
                  bge          s2, a5, 405f
                  andi         a2, sp, -233
                  sltiu        a1, t3, 311
394:              sra          a0, sp, gp
395:              slli         gp, a5, 17
                  sra          a0, ra, s8
397:              xor          s0, t5, a5
                  bgeu         s0, s8, 411f
                  slli         a5, ra, 31
                  xori         s0, s10, 476
401:              sra          t4, a0, s4
                  xori         gp, ra, -1643
                  and          s6, t5, s4
                  srl          s7, s11, s11
405:              srli         t5, a4, 15
                  sltu         a2, a0, s1
                  andi         s7, t5, 2015
                  slli         s11, s4, 25
                  sltu         s9, a7, s6
                  bge          t4, t1, 417f
411:              add          tp, t4, a6
                  bge          a0, a6, 417f
                  addi         s8, s9, 1571
                  bne          ra, gp, 418f
                  xori         a4, a1, 528
                  sra          s6, t2, t2
417:              nop
418:              slli         t2, a6, 18
                  addi         s7, a3, -1396
                  sltiu        a0, a1, 1578
                  srl          s6, a5, s1
                  srl          s8, a4, ra
                  bgeu         s1, t2, 425f
                  beq          a0, a7, 437f
425:              ori          s11, s2, 263
                  bne          s7, a6, 436f
                  slli         ra, sp, 9
                  bltu         zero, gp, 444f
                  sltu         a6, a4, t6
                  lui          s11, 796328
                  slli         sp, s0, 24
                  slti         s6, s0, 1560
                  bltu         a4, gp, 435f
                  or           t6, a1, tp
435:              ori          t0, s4, -750
436:              srli         sp, a0, 30
437:              srl          s11, s9, a6
                  ori          a4, a3, 1347
                  sll          s6, a2, a0
                  bgeu         a7, t2, 451f
                  lui          a5, 160551
                  auipc        gp, 949271
                  bge          a1, s7, 444f
444:              blt          t2, a7, 451f
                  andi         t6, t5, -1755
                  beq          t1, a6, 457f
                  sltu         s5, tp, s9
                  slti         s9, t1, -709
                  srli         a7, t3, 13
                  sub          a6, s2, sp
451:              or           ra, s2, s10
                  addi         gp, s6, 1573
                  and          s8, s0, s8
                  bgeu         s5, s8, 464f
                  sub          ra, gp, t0
                  sltiu        a7, s7, -2022
457:              bltu         s4, s4, 458f
458:              addi         gp, t5, 1117
                  addi         t2, s10, 761
                  andi         t6, s2, 1763
                  slti         a4, gp, 1633
                  slt          s10, s6, s0
                  and          a0, t0, t0
464:              or           a5, t2, t0
                  beq          s5, s5, 466f
466:              lui          t4, 664991
                  lui          sp, 664515
                  ori          gp, a4, 1594
                  auipc        t4, 580869
                  slt          s10, t2, a6
                  sra          a7, a7, a3
                  xor          a1, a3, a1
                  srai         zero, t1, 10
                  beq          s8, s0, 485f
                  lui          t4, 1016273
                  xori         s1, s4, 1127
                  srli         s1, t5, 29
                  slt          t1, tp, a3
                  sltu         t1, s8, a2
                  bgeu         a5, s9, 491f
                  sub          s5, gp, s2
                  bge          a5, a0, 490f
                  bne          t1, zero, 498f
                  addi         tp, s2, -1387
485:              sll          a4, gp, a3
                  slti         tp, tp, 1657
                  lui          s0, 195562
                  auipc        gp, 654363
                  sltiu        sp, s7, 576
490:              slli         gp, s0, 1
491:              blt          s8, a6, 493f
                  nop
493:              add          a7, s10, a2
                  andi         a0, a3, -1430
                  or           t2, s2, t4
                  slti         s2, s0, 1499
                  sltiu        t6, t1, -140
498:              srl          t4, a1, a3
                  sltu         t5, t3, s3
                  slli         s10, sp, 4
                  ori          s8, a5, -96
                  xor          s7, t1, s8
                  srai         s2, sp, 27
                  sra          ra, s7, t6
                  slt          t4, s6, s1
                  nop
                  addi         s2, s4, 1254
                  andi         ra, a4, 975
                  sltiu        a0, tp, 183
                  lui          s11, 95947
                  slli         a4, t3, 22
                  bltu         s6, s2, 517f
                  bgeu         s2, gp, 520f
                  srli         tp, s6, 25
                  bge          s4, s6, 526f
                  sll          s10, t1, a0
517:              sll          a1, a6, s4
                  lui          a6, 444186
                  sltu         t6, t6, t6
520:              srli         t2, a0, 22
                  slti         s11, a4, 343
                  bltu         sp, s10, 539f
                  ori          t3, a6, 1730
                  sltu         a0, t2, tp
                  slt          s2, s9, t4
526:              bgeu         a5, t0, 542f
                  xori         s9, s1, -1547
                  lui          t2, 11996
                  sll          a6, t1, a1
                  srl          s2, t6, s2
                  slti         sp, zero, 575
                  and          s11, a6, s11
                  bgeu         s6, gp, 538f
                  slti         s0, a0, -1686
                  nop
                  lui          ra, 530650
                  blt          s4, gp, 550f
538:              and          s8, t6, a1
539:              auipc        s11, 879261
                  sltiu        t2, zero, -195
                  auipc        tp, 299612
542:              or           t3, s1, sp
                  sltiu        s1, t4, -1630
                  srli         s1, a1, 27
                  bge          t0, s2, 547f
                  nop
547:              sub          t3, a7, t1
                  and          s9, zero, s7
                  addi         s8, a0, -1712
550:              srli         s9, s10, 20
                  bne          s8, s0, 564f
                  slti         t5, t5, 292
                  bge          a2, t5, 560f
                  auipc        s10, 154501
                  addi         s8, s0, -1048
                  srai         s1, s2, 16
                  sub          s1, zero, a5
                  bne          zero, a4, 572f
                  ori          s10, tp, -680
560:              addi         t2, s6, -818
                  blt          tp, s10, 573f
                  and          s9, sp, a5
                  lui          s6, 309468
564:              lui          a1, 215662
                  slti         s1, zero, 1325
                  addi         a1, a7, -1195
                  sll          s0, t2, a4
                  lui          a7, 48825
                  add          tp, a5, gp
                  or           s6, s4, a2
                  beq          a4, s9, 578f
572:              beq          t2, zero, 578f
573:              srai         s6, tp, 9
                  or           s5, s3, s2
                  slli         s2, s6, 17
                  and          t4, s5, s1
                  add          gp, s2, s6
578:              srai         s10, s4, 30
                  slt          s11, s10, a4
                  lw           t4, 4(s4)
                  xori         s7, a2, 845
                  add          s7, s8, s11
                  addi         s4, s4, 12
                  xor          s8, a4, ra
                  xor          a7, a4, t2
                  sltiu        a0, a7, 1174
                  sll          a7, t5, a5
1059:             addi x22, x29, 0
1059:             jalr x22, x22, 0
sub_2:            beq          s2, a5, sub_2_stack_p
                  andi         gp, s7, -1253
                  lui          t5, 694383
sub_2_stack_p:    addi         s4, s4, -52
                  sltiu        s5, a4, -845
                  add          s9, a5, s9
                  or           a0, zero, s6
                  sw           t4, 4(s4)
                  addi         s10, t2, 168
                  sra          gp, t6, s0
                  la           s1, region_1+1833 #start load_store_instr_stream_2
                  la           a7, region_1+530 #start load_store_instr_stream_1
                  lbu          a0, 2(s1)
                  sh           s11, -8(a7)
                  sb           s7, 11(s1)
                  sb           s6, 7(a7)
                  la           tp, region_1+641 #start load_store_instr_stream_0
                  sb           gp, -3(a7)
                  sb           s6, 3(s1)
                  lb           s11, 15(tp)
                  lb           s8, 16(a7)
                  lb           a5, -15(a7)
                  lb           t6, 6(s1)
                  sb           s11, -13(s1)
                  lbu          t4, 8(tp)
                  sw           a1, -2(a7)
                  lb           a2, 5(s1)
                  sb           s5, 1(tp)
                  lbu          t0, -12(s1)
                  sb           s9, 6(tp)
                  sh           t4, -13(tp)
                  lb           s8, 16(a7) #end load_store_instr_stream_1
                  lbu          s10, -14(tp)
                  lbu          t2, 14(s1) #end load_store_instr_stream_2
                  sh           t6, 13(tp) #end load_store_instr_stream_0
                  la           sp, region_0+84 #start riscv_load_store_hazard_instr_stream_1
                  sb           a1, 406(sp)
                  lh           a1, 406(sp)
                  addi         t5, a1, -1344
                  lhu          ra, 406(sp)
                  lb           t0, 1673(sp)
                  lbu          s11, 1673(sp)
                  nop
                  or           s2, a2, t0
                  srli         a6, s8, 11
                  lb           t1, 1673(sp)
                  sb           s10, 1673(sp)
                  srl          s9, a3, tp
                  addi         tp, s3, -618
                  lb           t0, 1673(sp)
                  lbu          s2, 1673(sp)
                  lbu          a0, 1673(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           gp, region_0+1492 #start load_store_instr_stream_1
                  la           a7, region_0+410 #start load_store_instr_stream_4
                  la           a4, region_0+247 #start load_store_instr_stream_3
                  lb           s8, 16(a7)
                  la           t0, region_0+424 #start load_store_instr_stream_0
                  la           sp, region_0+1268 #start load_store_instr_stream_2
                  sw           a4, -1392(gp)
                  lbu          ra, -6(a4)
                  lb           a2, 44(t0)
                  lh           s1, 420(gp)
                  lb           a5, -1005(sp)
                  lh           s1, 628(a7)
                  sb           s3, 10(a4)
                  lhu          s9, 672(a7)
                  lb           s2, -439(gp)
                  lbu          s0, 14(a4)
                  lhu          t2, -1274(gp)
                  lbu          s9, 44(a4)
                  sw           t2, 1434(a7)
                  lbu          s6, -41(a4)
                  sb           a3, 60(sp)
                  lbu          s1, 185(gp)
                  sh           s11, -14(t0)
                  lhu          s0, -1154(sp)
                  lbu          t4, -1(a4)
                  sb           tp, -107(a7)
                  lbu          a0, 366(gp)
                  lbu          a6, -550(gp)
                  lb           ra, 981(a7)
                  lb           s5, 253(t0)
                  lbu          s5, -28(a4)
                  lbu          a5, -1041(sp)
                  sb           s11, -19(a7)
                  sh           a6, -746(gp)
                  sh           a4, 21(a4)
                  lbu          s8, 1384(a7)
                  lbu          t2, 115(t0)
                  lhu          s1, -1028(gp)
                  lbu          s1, -441(sp)
                  sb           s7, -439(sp)
                  lw           s1, 188(t0)
                  lb           t1, 611(sp)
                  lbu          tp, 1581(a7) #end load_store_instr_stream_4
                  lhu          s11, 226(gp) #end load_store_instr_stream_1
                  lbu          s0, -17(a4)
                  lb           t2, 6(a4) #end load_store_instr_stream_3
                  sb           s9, -288(sp) #end load_store_instr_stream_2
                  lhu          s5, -218(t0) #end load_store_instr_stream_0
                  la           sp, region_1+626 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s10, 361(sp)
                  lhu          s7, -332(sp)
                  add          s6, sp, gp
                  sltiu        s11, a4, -1201
                  lb           t2, -332(sp)
                  lbu          gp, -60(sp)
                  sb           a2, 353(sp)
                  lb           s9, 353(sp)
                  lbu          ra, 353(sp)
                  sb           t6, 1289(sp)
                  lui          a4, 972423
                  xori         gp, s4, -131
                  sll          a2, t1, s6
                  lbu          zero, 339(sp)
                  lbu          a7, 663(sp)
                  sb           s2, -20(sp)
                  lbu          a7, 1072(sp)
                  lhu          s6, 1294(sp)
                  slti         s9, s6, -1735
                  sb           s6, 641(sp) #end riscv_load_store_hazard_instr_stream_0
                  beq          ra, a2, 8f
                  and          s5, a7, ra
                  andi         a0, t5, -910
                  blt          t3, t4, 23f
                  nop
                  bne          gp, a5, 12f
                  auipc        ra, 858070
                  srli         a0, t4, 31
8:                sltu         s9, sp, t0
                  slt          s0, a4, a4
                  srai         gp, a2, 27
                  beq          a3, s1, 12f
12:               ori          zero, a4, -1920
                  slli         s8, t5, 5
                  sll          s10, t1, sp
                  slti         t3, a0, 288
                  sltiu        a5, ra, 1187
                  srai         t1, t2, 7
                  andi         s6, s9, 576
                  sltiu        s8, a7, 1599
                  addi         a0, s4, -1039
                  srl          t6, s3, s4
                  sltu         zero, s8, a1
23:               slt          zero, s1, a4
                  lui          gp, 960175
                  slt          s2, t2, t2
                  slli         gp, gp, 8
                  auipc        a4, 411290
                  bltu         s10, s0, 33f
                  sra          s11, t4, s1
                  srli         ra, a3, 8
                  srl          a1, t6, tp
                  addi         s9, s2, -911
33:               xor          sp, s5, t6
                  bge          t4, t0, 43f
                  slti         s0, tp, -1470
                  sub          a7, t4, sp
                  bge          s6, s5, 52f
                  ori          t1, zero, -2007
                  slli         a7, a2, 19
                  beq          t2, s3, 46f
                  addi         ra, a1, -1824
                  srai         s8, ra, 9
43:               slt          t2, a2, a1
                  ori          t0, t0, 1004
                  bge          s5, ra, 55f
46:               blt          sp, a3, 51f
                  add          s6, gp, a5
                  srli         s0, s7, 15
                  bltu         t2, s9, 51f
                  xor          t2, a0, a7
51:               bgeu         s7, a4, 54f
52:               sra          sp, a4, s9
                  bltu         t5, t3, 73f
54:               srai         a7, a6, 21
55:               ori          ra, a6, -1728
                  auipc        t3, 507266
                  bne          a6, s0, 67f
                  addi         s7, t2, -245
                  and          a6, tp, a6
                  or           s1, a6, s8
                  sra          s6, a0, a1
                  slti         s10, sp, -1179
                  lui          t3, 598028
                  srai         t6, t3, 30
                  slli         a1, a7, 24
                  lui          t4, 556730
67:               srl          a1, s7, s5
                  sra          t1, s4, s2
                  auipc        a0, 711299
                  bne          s9, t3, 76f
                  or           a1, t0, ra
                  sltiu        a2, t4, 78
73:               sra          zero, a2, a1
                  slli         s0, t5, 13
                  sltu         sp, a1, t3
76:               slti         s1, s11, 1720
                  and          gp, s4, t5
                  add          a4, a6, s4
                  and          s11, s2, a2
                  bne          a1, t3, 95f
                  sll          s5, ra, s2
                  slli         t6, t4, 2
                  slt          t1, sp, a0
                  srai         s5, t5, 17
                  or           s9, s9, t3
                  sll          s6, t5, s5
                  ori          sp, t2, -2037
                  slti         s7, t6, 356
                  xor          sp, a4, zero
                  beq          zero, s11, 103f
                  lui          s10, 452358
                  bgeu         s7, ra, 112f
                  srai         a0, a2, 31
                  sub          t4, t3, a5
95:               sll          s1, t0, s8
                  bltu         t2, s9, 110f
                  add          a4, sp, t0
                  nop
                  bne          t5, a3, 109f
                  bltu         tp, tp, 115f
                  beq          zero, s9, 119f
                  slti         t2, sp, 1230
103:              bgeu         t6, s3, 114f
                  nop
                  lui          a2, 207235
                  bltu         gp, s10, 122f
                  lui          ra, 813257
                  slt          a1, s9, s5
109:              bgeu         a4, a7, 127f
110:              bge          zero, a5, 113f
                  slti         a1, s6, -1142
112:              slti         t6, a3, -100
113:              xor          t2, a5, t1
114:              bge          t1, t0, 127f
115:              sll          t3, s11, sp
                  bltu         t2, tp, 121f
                  bgeu         a6, a6, 122f
                  lui          t6, 21681
119:              sltiu        s5, s0, 1566
                  sra          s10, a2, t5
121:              bne          s5, s7, 129f
122:              bltu         t0, sp, 132f
                  bgeu         s10, t3, 128f
                  srai         s2, s7, 7
                  slt          s7, gp, s3
                  sltu         s6, s8, gp
127:              or           t0, s9, ra
128:              srli         s1, gp, 13
129:              srl          gp, a6, gp
                  bge          t6, t2, 140f
                  auipc        s2, 130868
132:              sltu         t5, t0, a2
                  bltu         a4, zero, 142f
                  or           s8, s7, sp
                  andi         s1, a3, 1057
                  sltiu        s8, a3, 1841
                  and          t5, t0, a7
                  srl          a1, t0, t1
                  auipc        t0, 988615
140:              slti         zero, gp, -774
                  addi         t1, s11, -895
142:              sra          s6, t2, a2
                  sltiu        s10, s10, 1671
                  xor          t5, t5, s3
                  xori         s6, s6, -1701
                  sltiu        a6, t1, 2002
                  sra          zero, a1, s9
                  srl          a4, t1, t0
                  srl          t4, s4, zero
                  srl          s6, s2, a7
                  la           s0, region_1+988 #start riscv_load_store_rand_instr_stream_0
                  addi         s6, s8, 178
                  nop
                  sll          tp, t4, ra
                  sb           t2, 154(s0)
                  sb           a3, 230(s0)
                  srai         t5, t0, 29
                  or           s7, s4, s9
                  sb           zero, -173(s0)
                  or           tp, s6, tp
                  sra          a1, a1, t3
                  lb           ra, 201(s0)
                  sb           t5, -253(s0)
                  add          s11, s5, tp
                  lhu          s7, -24(s0)
                  lh           s6, -154(s0)
                  or           t2, a0, t5
                  sll          s5, a4, zero
                  lh           gp, 162(s0)
                  srli         t3, t5, 4
                  xori         s8, tp, -172
                  srai         a2, t4, 13
                  sb           t6, -239(s0)
                  lb           s6, 82(s0)
                  and          a7, s5, a6
                  slt          a4, t4, zero
                  sra          s1, gp, s4
                  or           s6, sp, t6
                  lb           a1, 42(s0)
                  sh           s10, 84(s0)
                  xori         t6, ra, -47
                  srl          a1, a5, s1
                  xori         t3, t3, 1466
                  srl          a5, s8, a2
                  xori         t1, s4, 1391
                  lb           s11, 145(s0) #end riscv_load_store_rand_instr_stream_0
                  sltu         s11, t2, s8
                  ori          a1, a7, -1691
                  xor          s11, s11, a2
                  srl          s5, s2, s0
                  or           a0, t4, t2
                  blt          s9, t3, 163f
                  sra          sp, t1, s11
                  or           t5, s10, a1
                  srl          s10, s8, a5
                  sub          s2, t5, s3
                  lui          s10, 842159
                  addi         s6, s10, 127
163:              blt          s6, s9, 171f
                  slli         gp, a0, 8
                  bgeu         ra, zero, 180f
                  bge          s0, a5, 167f
167:              slt          a1, a0, a2
                  beq          a6, s5, 184f
                  bltu         a5, s6, 172f
                  add          a6, a3, s0
171:              auipc        a5, 608521
172:              andi         s10, t5, -1380
                  lui          s5, 739179
                  lui          s10, 883251
                  lui          t0, 538687
                  srli         s9, a2, 6
                  andi         s6, s9, 167
                  slli         t0, a4, 25
                  bge          s7, t4, 185f
180:              xori         s10, s7, 1571
                  bge          t3, s9, 196f
                  blt          t5, t2, 202f
                  auipc        a2, 261264
184:              addi         a2, s3, 1783
185:              srli         t6, sp, 17
                  nop
                  sltu         s5, t4, a5
                  or           zero, t4, tp
                  srli         t1, s2, 3
                  add          gp, t0, s7
                  beq          a1, s1, 199f
                  and          s8, t6, t1
                  ori          s6, s5, 1891
                  auipc        s7, 895917
                  addi         s11, tp, -1491
                  la           ra, region_0+958 #start riscv_load_store_rand_instr_stream_1
                  sub          s8, t1, zero
                  slti         a1, a6, 1580
                  and          t3, ra, t0
                  lw           t0, 262(ra)
                  sll          s10, a5, a4
                  andi         gp, s8, 505
                  sltiu        t4, t6, 683
                  auipc        s5, 90890
                  slt          s0, t2, s5
                  lb           a1, 441(ra)
                  lbu          s0, -177(ra)
                  slli         a5, a3, 4
                  or           a0, tp, s4
                  slti         a6, t2, 1780
                  slt          t0, s1, s11
                  lb           s1, 77(ra)
                  auipc        t5, 523963
                  lbu          zero, -595(ra)
                  lui          s10, 221641
                  xor          a5, tp, zero
                  sll          t4, a0, a7
                  sb           t2, -425(ra)
                  andi         t5, s5, -742
                  slli         sp, t6, 14
                  sltu         t5, sp, s9
                  auipc        a2, 1017312
                  sll          s8, a4, t0
                  srai         tp, s3, 23
                  sb           t3, -625(ra)
                  sb           s6, 16(ra)
                  and          a1, s9, zero
                  lh           s7, 244(ra)
                  andi         a6, gp, -1931
                  sb           a1, 122(ra) #end riscv_load_store_rand_instr_stream_1
196:              slti         s10, t3, 1455
                  slli         a1, t2, 17
                  srai         t6, a7, 26
199:              lui          s9, 730553
                  slt          s6, a2, s3
                  sll          s1, t6, a1
202:              srai         s5, tp, 9
                  add          s1, a7, t0
                  sltu         ra, s5, t1
                  lui          a0, 458738
                  srl          s0, s4, s3
                  sltiu        s9, s0, 1730
                  auipc        zero, 919092
                  slli         s7, s1, 24
                  lw           t4, 4(s4)
                  addi         s4, s4, 52
                  auipc        s1, 8669
                  or           s9, t0, sp
                  lui          tp, 695453
                  lui          s0, 741687
                  srai         ra, s9, 15
409:              addi x27, x29, 0
409:              jalr x27, x27, 0
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_2:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_3:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_4:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_5:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_6:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_7:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_8:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_9:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_10:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_11:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_12:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_13:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_14:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_15:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x23, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x23, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x23, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x23, x18, ecall_handler
                  li x18, 0x1
                  beq x23, x18, instr_fault_handler
                  li x18, 0x5
                  beq x23, x18, load_fault_handler
                  li x18, 0x7
                  beq x23, x18, store_fault_handler
                  li x18, 0xc
                  beq x23, x18, pt_fault_handler
                  li x18, 0xd
                  beq x23, x18, pt_fault_handler
                  li x18, 0xf
                  beq x23, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x20, x13, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x13, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x13, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x20, x13, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x20, x13, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x20, x13, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
