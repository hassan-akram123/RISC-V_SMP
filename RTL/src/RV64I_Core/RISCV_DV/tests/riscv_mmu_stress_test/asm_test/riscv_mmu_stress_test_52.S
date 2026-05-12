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
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 0
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xfc045b18
                  li x2, 0xf158e9d2
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0x1
                  li x6, 0xf90deec3
                  li x7, 0x337d82ac
                  li x8, 0x9c4e5d0c
                  li x9, 0xab7395ca
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x2
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0xfa6ac89f
                  li x18, 0x0
                  li x20, 0xf272239e
                  li x21, 0x0
                  li x22, 0xd67e3371
                  li x23, 0x9
                  li x24, 0x953fd086
                  li x25, 0x80000000
                  li x26, 0xf2fc335a
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0x0
                  la x10, user_stack_end
main:             la           s5, region_1+1075 #start riscv_load_store_rand_instr_stream_0
                  slli         tp, s0, 23
                  sub          sp, a3, s11
                  sh           t0, 25(s5)
                  sb           t4, -154(s5)
                  lb           s9, 238(s5)
                  nop
                  sub          s10, s6, a3
                  slt          s10, t2, s1
                  slli         a1, sp, 27
                  andi         sp, s4, 247
                  and          s1, a0, t2
                  nop
                  xori         s11, t2, 455
                  and          ra, tp, ra
                  sb           a7, 161(s5)
                  lb           s9, 100(s5)
                  ori          tp, a1, 1436
                  sltu         s1, s2, t2
                  lh           s4, 235(s5)
                  lw           s7, -143(s5)
                  sw           t1, -91(s5)
                  slti         s7, t6, -676
                  lb           s4, 112(s5)
                  lhu          a3, 135(s5)
                  nop
                  sb           s7, -20(s5)
                  lb           a2, 20(s5)
                  andi         s4, t4, -300
                  auipc        ra, 764659
                  lw           t6, 121(s5)
                  slti         s0, t5, -392
                  lhu          gp, -115(s5)
                  slli         a3, s0, 17
                  sb           s2, -24(s5)
                  or           t0, s9, t5
                  sll          s4, tp, s8
                  sll          s2, s8, s9
                  lbu          s6, -92(s5)
                  sll          sp, s0, s10
                  srli         s6, s1, 17
                  sb           t2, 149(s5)
                  slti         a6, a0, 966
                  xor          s11, t5, a7
                  lbu          t5, -18(s5)
                  xori         s1, ra, 893
                  lhu          a2, -87(s5)
                  lb           a3, 40(s5)
                  sb           s7, -59(s5) #end riscv_load_store_rand_instr_stream_0
                  la           t6, region_1+1196 #start riscv_load_store_hazard_instr_stream_1
                  lb           s5, 37(t6)
                  lb           s6, -229(t6)
                  lbu          s8, 199(t6)
                  sll          gp, gp, gp
                  lb           zero, 199(t6)
                  sb           s2, 199(t6)
                  srai         t2, s10, 10
                  or           tp, s4, s6
                  lb           zero, 57(t6)
                  lbu          s8, -193(t6)
                  sh           t3, 100(t6)
                  sh           ra, 8(t6)
                  lhu          t5, 8(t6)
                  sw           a2, -20(t6)
                  sw           s3, -160(t6)
                  sw           a5, -160(t6)
                  lb           s9, -75(t6)
                  lb           a7, 76(t6) #end riscv_load_store_hazard_instr_stream_1
                  la           s5, region_0+956 #start riscv_load_store_hazard_instr_stream_0
                  sb           s8, -115(s5)
                  sb           s8, -115(s5)
                  lbu          t6, -115(s5)
                  lb           s9, -115(s5)
                  xori         s6, s11, -211
                  lb           s11, -800(s5)
                  lbu          a7, -800(s5)
                  lb           a6, -800(s5)
                  sb           t5, -800(s5)
                  lh           t2, -800(s5)
                  lbu          a4, 643(s5)
                  lb           t6, 643(s5)
                  sb           a5, 643(s5)
                  or           a1, t6, s8
                  lb           zero, 643(s5)
                  lb           a3, 643(s5)
                  sb           s3, 643(s5)
                  sh           t4, -744(s5)
                  lbu          ra, -355(s5)
                  sb           s2, -139(s5)
                  sb           zero, -139(s5)
                  lbu          a1, -139(s5) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+24 #start load_store_instr_stream_0
                  lb           a2, -9(sp)
                  la           s4, region_1+1521 #start load_store_instr_stream_1
                  lb           s10, 5(sp)
                  lh           a5, -14(sp)
                  sb           a2, -4(sp)
                  sb           ra, -13(s4)
                  lh           a7, 6(sp)
                  sh           s5, -7(s4)
                  sb           s7, -3(sp)
                  lh           t1, -15(s4)
                  lbu          s10, -10(sp)
                  sb           s5, -15(s4)
                  lbu          s2, 15(sp)
                  lb           s7, 16(sp)
                  lbu          s2, 10(s4) #end load_store_instr_stream_1
                  lb           a1, -1(sp) #end load_store_instr_stream_0
                  la           sp, region_0+516 #start riscv_load_store_rand_instr_stream_1
                  auipc        s6, 905929
                  lb           s9, 7(sp)
                  lbu          gp, -5(sp)
                  and          t1, s8, tp
                  sb           a7, 3(sp)
                  lbu          t1, 9(sp)
                  andi         t6, a3, -1554
                  or           ra, zero, t3
                  and          s5, s8, a5
                  lw           s1, 8(sp)
                  slli         a7, sp, 17
                  lbu          s11, 12(sp)
                  sltiu        s4, a0, 1093
                  or           zero, t6, s7
                  andi         s7, s11, -1080
                  srl          t1, t6, a5
                  sw           s10, 16(sp)
                  add          a7, a6, s4
                  sb           s2, 11(sp)
                  sll          s6, a1, s9
                  and          t3, s4, a0
                  lb           s2, 3(sp)
                  lb           s6, 8(sp)
                  lh           tp, -14(sp)
                  sub          t3, a7, s7
                  lui          a1, 80464
                  sb           t3, -1(sp)
                  lbu          t6, -4(sp)
                  slti         s9, t5, 1260
                  slti         zero, sp, 1351
                  lhu          t3, 14(sp)
                  addi         s0, s5, -1139
                  addi         s6, s7, 512
                  slti         a1, a6, -337
                  lb           a1, 3(sp)
                  add          t0, t4, a5
                  sb           a3, 11(sp)
                  sb           a0, 11(sp)
                  sb           s1, -11(sp)
                  sltu         a6, t3, a2
                  sh           s11, 14(sp)
                  addi         t3, s0, 215
                  sltiu        t1, a5, -2027
                  lhu          t6, -16(sp)
                  sb           s3, 5(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s0, region_0+63 #start load_store_instr_stream_0
                  la           s1, region_0+1478 #start load_store_instr_stream_1
                  lhu          t5, -9(s0)
                  sb           a7, 12(s0)
                  lbu          gp, 4(s1)
                  lb           tp, 13(s0)
                  lbu          t6, 13(s1)
                  lb           tp, 16(s0)
                  sb           a7, -1(s0)
                  lb           tp, -15(s1)
                  lh           a6, 0(s1)
                  sb           t4, -8(s1) #end load_store_instr_stream_1
                  sb           s6, 8(s0)
                  sw           a2, -7(s0)
                  lbu          s7, -4(s0)
                  lbu          ra, -16(s0) #end load_store_instr_stream_0
                  or           s6, s4, a3
                  ori          s6, a1, 1105
                  xor          sp, t5, s4
                  ori          s11, a7, -1913
                  andi         s0, a2, -1483
                  slli         a5, a1, 10
                  beq          a1, t3, 15f
                  slti         a7, tp, 1515
                  auipc        t3, 704800
                  slli         s10, t1, 22
                  andi         s8, a6, -2021
                  and          s5, a1, s4
                  sltiu        t5, t2, 661
                  beq          a6, tp, 23f
                  blt          a6, s4, 31f
15:               beq          s0, a6, 35f
                  xor          s2, s6, gp
                  sll          s5, s2, a0
                  bge          t5, s7, 25f
                  bne          s3, s11, 23f
                  sltiu        t2, s2, -1240
                  ori          tp, t6, 1040
                  addi         s10, s1, -994
23:               slli         a2, a2, 11
                  sra          a5, gp, sp
25:               srai         gp, t5, 31
                  lui          s5, 32277
                  addi         gp, s2, 719
                  sltu         s0, tp, s11
                  xor          gp, a1, s3
                  slt          t2, s4, a1
31:               srli         s10, s3, 24
                  beq          a7, s2, 38f
                  xori         sp, a3, 342
                  sltu         t0, a4, a3
35:               auipc        t1, 171263
                  nop
                  or           t1, a7, s0
38:               srl          a5, s5, t3
                  srai         a2, s10, 14
                  sll          t0, t4, t0
                  bltu         a6, a6, 51f
                  srl          gp, s4, s1
                  xor          s10, s4, a2
                  slti         a6, a4, 462
                  bgeu         gp, a2, 57f
                  beq          t0, s3, 65f
                  and          a2, t2, s5
                  sub          s10, t1, t0
                  add          sp, a6, s9
                  slt          a3, t0, t2
51:               or           t0, s7, a6
                  beq          sp, t4, 57f
                  beq          a4, s3, 69f
                  nop
                  slli         a7, s8, 17
                  xori         ra, s10, -326
57:               bne          s2, gp, 63f
                  xori         a6, s11, -1724
                  sltu         s7, s9, s11
                  sub          a3, s8, s0
                  bge          s4, ra, 71f
                  addi         t6, s10, -517
63:               blt          a1, a1, 76f
                  and          a5, sp, a0
65:               add          s7, s2, t3
                  sltiu        a7, t3, 623
                  srl          a1, s7, s6
                  srl          a6, s1, s6
69:               sra          a7, t5, s7
                  sltiu        a3, a4, -765
71:               sll          s6, gp, s2
                  srai         t5, t0, 13
                  slli         a6, s2, 29
                  or           tp, s11, ra
                  slti         s11, s10, 1892
76:               slli         a5, zero, 21
                  bge          s7, a0, 91f
                  srai         tp, ra, 20
                  slli         a2, a5, 11
                  bge          s5, a0, 86f
                  nop
                  slti         s10, a7, 726
                  lui          s9, 773997
                  ori          zero, gp, 331
                  xor          a6, ra, s5
86:               sltiu        s2, sp, -173
                  slli         a7, t2, 9
                  srai         a1, s5, 18
                  srai         s5, a7, 15
                  srai         s9, a0, 12
91:               or           s0, a3, a6
                  bge          sp, t2, 102f
                  beq          a5, s8, 96f
                  slti         s2, s10, -1888
                  bgeu         t2, a0, 98f
96:               srai         a5, a7, 22
                  sltiu        s2, a7, -1137
98:               srai         gp, a3, 10
                  srai         a6, t2, 11
                  bge          s3, a0, 114f
                  srai         s5, a2, 8
102:              sltu         gp, ra, s7
                  srai         t6, s4, 22
                  andi         t3, s10, 1821
                  nop
                  slt          a6, s0, s6
                  xor          t5, zero, t0
                  add          a3, s5, a3
                  auipc        s6, 751838
                  beq          a7, t6, 126f
                  bne          a1, sp, 118f
                  slti         a4, s5, 1907
                  andi         t0, s7, 522
114:              sub          ra, s1, t3
                  srl          ra, t6, s2
                  nop
                  lui          s4, 606412
118:              slt          sp, sp, s1
                  srl          t1, s3, a0
                  sll          a3, a0, t3
                  xor          ra, s7, a4
                  bltu         t5, s9, 137f
                  sltu         a6, a0, t4
                  bge          a2, s9, 137f
                  lui          a4, 97395
126:              andi         s7, t5, 1747
                  srli         s0, ra, 3
                  sltiu        s4, s0, 760
                  beq          t5, t0, 130f
130:              beq          s6, a0, 133f
                  addi         t6, s6, 707
                  sltiu        s11, gp, 884
133:              sll          zero, a2, a2
                  srl          t1, s8, s8
                  bge          s7, s4, 140f
                  and          tp, a2, s2
137:              bltu         s0, s11, 143f
                  sltiu        tp, ra, -509
                  ori          s0, a3, -1808
140:              bne          s0, tp, 145f
                  or           s4, a4, s8
                  sll          a3, s11, s1
143:              bgeu         t3, t4, 149f
                  slli         s2, a5, 9
145:              slt          t6, t1, s7
                  bgeu         a7, s8, 151f
                  slti         t1, s6, -1048
                  bgeu         s6, s10, 162f
149:              addi         a5, t6, -1948
                  bge          s9, t5, 156f
151:              lui          s6, 798117
                  bne          s0, s1, 155f
                  srl          sp, t1, s8
                  sltu         a6, tp, s6
155:              xor          t2, s3, tp
156:              sltiu        s10, s5, 1750
                  srl          s6, s0, a3
                  srl          ra, t1, t0
                  lui          t0, 965954
                  andi         s0, a2, -541
                  sra          s10, s9, s10
162:              auipc        s5, 91772
                  beq          a2, s4, 167f
                  lui          t6, 330739
                  slt          s9, s8, ra
                  blt          a5, gp, 182f
167:              slli         s11, sp, 13
                  srai         t2, a7, 1
                  auipc        sp, 684243
                  nop
                  sltu         a5, sp, s8
                  and          s11, t5, t6
                  andi         s7, s1, -745
                  bne          gp, s1, 190f
                  and          t0, tp, a0
                  bgeu         t6, sp, 185f
                  slt          t5, sp, s3
                  sltiu        t2, t5, 1207
                  addi         t0, a2, 1082
                  la           s9, sub_1
                  addi         s9, s9, -107
                  slli         sp, a4, 4
                  slti         s5, s9, 1890
                  lui          t3, 156545
                  blt          a0, a0, main_j1 #branch to jump instr
                  slt          a3, s6, zero
                  sltiu        a1, a0, 149
                  nop
main_j1:          jalr         t1, s9, 107 #jump main -> sub_1
                  bgeu         a7, sp, 191f
                  srai         a3, a6, 15
                  lui          s2, 439243
                  blt          gp, s9, 197f
                  blt          t5, s11, 193f
182:              lui          ra, 756253
                  nop
                  bne          s10, zero, 187f
185:              bne          s3, s0, 191f
                  xori         s5, s9, -1472
187:              bgeu         s4, a5, 200f
                  bne          t1, s0, 208f
                  sll          s6, a2, ra
190:              bgeu         s1, t6, 203f
191:              sub          s4, s1, t2
                  srai         t1, t5, 20
193:              or           t1, ra, s5
                  slli         a2, s5, 23
                  bge          t0, s9, 202f
                  auipc        a6, 99646
197:              addi         s0, gp, 1206
                  nop
                  xori         zero, s7, 1676
200:              sltu         a2, a3, a4
                  add          t1, a2, s0
202:              blt          sp, zero, 211f
203:              beq          t2, sp, 204f
204:              add          s2, a1, a1
                  slti         a3, s1, -1072
                  xori         s10, t5, -1227
                  xor          s9, t3, t3
208:              blt          s9, a1, 211f
                  add          s10, t2, t1
                  blt          s0, a4, 211f
211:              xori         t6, a7, -1338
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            srai         ra, s0, 28
                  addi         a0, a0, -52
                  sub          zero, t3, t5
                  sltu         t3, ra, s11
                  slti         a6, s9, 1840
                  sw           t1, 4(a0)
                  srl          a5, s1, s3
                  auipc        s0, 1046320
                  auipc        s8, 247689
                  sltiu        s1, s9, 1211
                  ori          a3, t0, 812
                  or           s10, a3, a5
                  auipc        tp, 659854
sub_1_j2:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  la           s2, sub_2
                  or           s4, t4, t6
                  addi         s2, s2, 721
                  auipc        s0, 155317
                  xor          t2, s10, zero
                  bgeu         t3, ra, sub_1_j3 #branch to jump instr
                  lui          s7, 351870
                  or           s9, a5, a7
                  lui          t6, 86513
                  sra          s6, s3, s8
                  lui          a7, 223288
                  xori         a4, t3, -126
sub_1_j3:         jalr         t1, s2, -721 #jump sub_1 -> sub_2
                  bge          s10, t1, 3f
                  sll          t3, ra, t0
                  beq          a3, gp, 16f
3:                sltu         s4, s10, t3
                  blt          t2, a5, 20f
                  slt          s4, s5, a4
                  xori         t2, s11, -204
                  sltiu        ra, tp, 1140
                  slt          s8, sp, s6
                  auipc        a6, 406584
                  or           s7, a1, s4
                  sltiu        s0, s7, -636
                  bltu         tp, t5, 30f
                  nop
                  sll          a6, s3, s5
                  nop
16:               bge          s7, s1, 17f
17:               ori          t6, t0, 1863
                  add          tp, zero, t1
                  nop
20:               xori         t5, t5, 15
                  slt          s0, s10, a5
                  sub          tp, s9, a1
                  addi         t1, s0, 781
                  ori          a6, a5, -878
                  slli         a6, gp, 31
                  xori         t3, s9, -1123
                  or           s8, s3, a5
                  and          a1, s5, s7
                  nop
30:               sub          a2, s5, s3
                  and          s9, t0, t2
                  slti         t0, a4, -1446
                  nop
                  lw           t1, 4(a0)
                  or           s5, s4, s4
                  sub          s7, t2, s11
                  auipc        a6, 326371
                  addi         a0, a0, 52
                  slt          a7, s0, a7
                  srli         s11, a5, 7
                  nop
                  or           t0, ra, a7
70:               addi x6, x6, 1
70:               jalr x6, x6, 0
sub_2:            xor          a5, zero, s7
                  blt          s3, a2, sub_2_stack_p
                  nop
sub_2_stack_p:    addi         a0, a0, -24
                  lui          s1, 463809
                  sw           t1, 4(a0)
                  auipc        t2, 58382
                  la           a2, region_1+698 #start load_store_instr_stream_1
                  lhu          t1, 128(a2)
                  la           t6, region_1+1225 #start load_store_instr_stream_0
                  sb           a0, -339(t6)
                  sb           zero, 156(a2)
                  lb           sp, -698(t6)
                  lhu          s2, -14(a2)
                  lbu          t3, -106(a2)
                  lbu          s5, 306(t6)
                  lh           sp, -182(a2)
                  sh           s2, -849(t6)
                  lb           s11, 119(a2)
                  lbu          s5, -109(a2) #end load_store_instr_stream_1
                  lbu          a4, 290(t6) #end load_store_instr_stream_0
                  la           a6, region_1+377 #start load_store_instr_stream_1
                  la           s10, region_1+203 #start load_store_instr_stream_0
                  la           a5, region_1+1166 #start load_store_instr_stream_2
                  lh           a2, 51(a6)
                  lb           t6, 109(a5)
                  lb           tp, -8(s10)
                  sb           s4, -20(a6)
                  lh           s1, 1(a6)
                  lb           t6, -10(s10)
                  sw           a3, 102(a5)
                  lhu          s11, 104(a5)
                  sb           s7, 4(a6)
                  lh           s5, 31(a6)
                  lh           a2, -5(s10)
                  lhu          s11, 31(a6)
                  sb           s6, 50(a6)
                  lw           s11, 114(a5)
                  lb           a3, -26(a6)
                  lbu          gp, -4(s10)
                  lb           a2, -49(a6)
                  lw           t6, 5(s10)
                  lbu          s8, 79(a5)
                  lbu          t0, -27(a5)
                  sb           s5, 200(a5)
                  sb           s10, -35(a6) #end load_store_instr_stream_1
                  lw           s0, -94(a5) #end load_store_instr_stream_2
                  lb           ra, -10(s10)
                  lb           s7, 10(s10) #end load_store_instr_stream_0
                  la           s11, region_0+521 #start riscv_load_store_hazard_instr_stream_5
                  lbu          s2, 99(s11)
                  lhu          s10, -239(s11)
                  lh           a2, -239(s11)
                  slt          s2, s11, s9
                  sh           s2, -255(s11)
                  sb           sp, -170(s11)
                  sb           gp, -170(s11)
                  lhu          s9, -203(s11)
                  sh           s6, -203(s11)
                  lb           s1, 214(s11)
                  sh           t1, 47(s11)
                  sw           s7, 47(s11)
                  lbu          t1, -176(s11) #end riscv_load_store_hazard_instr_stream_5
                  la           tp, region_1+991 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s9, -6(tp)
                  sb           t5, -6(tp)
                  sb           a2, -6(tp)
                  ori          s9, a6, 2006
                  lbu          a2, -6(tp)
                  lb           gp, -6(tp)
                  lbu          s11, -6(tp)
                  sb           a5, -6(tp)
                  addi         sp, t6, 1335
                  lh           t6, -9(tp)
                  and          s1, a3, a2
                  lh           a7, -9(tp)
                  lbu          s9, 10(tp)
                  lbu          a4, 10(tp)
                  slti         s9, a5, -1402
                  lb           a7, 10(tp)
                  lb           a1, 10(tp)
                  lb           a7, 10(tp)
                  sb           s6, 10(tp)
                  and          zero, s2, s8
                  nop
                  lh           s11, -5(tp)
                  sb           t2, -5(tp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+947 #start riscv_load_store_hazard_instr_stream_6
                  sb           ra, 16(sp)
                  sh           s0, 1(sp)
                  lb           s9, -6(sp)
                  auipc        t2, 556792
                  lbu          t1, -6(sp)
                  sb           gp, -6(sp)
                  sb           s7, -6(sp)
                  lbu          s8, -10(sp)
                  addi         t5, t0, 1162
                  lb           gp, 11(sp)
                  sb           t3, 11(sp)
                  andi         a6, a3, 260
                  sb           s11, 11(sp)
                  srl          s2, s8, ra
                  sb           a2, -8(sp)
                  sb           s8, -8(sp)
                  sb           a6, 3(sp)
                  lbu          s9, 3(sp)
                  lbu          tp, 3(sp)
                  sltu         s1, gp, a4
                  lh           s6, 3(sp) #end riscv_load_store_hazard_instr_stream_6
                  la           gp, region_0+1149 #start load_store_instr_stream_1
                  la           s7, region_0+237 #start load_store_instr_stream_0
                  sw           ra, -1(gp)
                  sb           s0, 0(s7)
                  sh           a1, -13(s7)
                  lb           s10, 0(gp)
                  lbu          s2, -2(s7)
                  sh           ra, 3(gp)
                  lbu          s1, -5(gp)
                  sb           t1, 3(s7)
                  lbu          s8, -14(gp)
                  lbu          s2, -8(s7)
                  sb           ra, 10(gp)
                  lb           s9, -4(s7)
                  lb           s11, 7(gp)
                  lhu          s5, 3(gp)
                  sb           a4, -8(gp) #end load_store_instr_stream_1
                  lbu          a7, 8(s7) #end load_store_instr_stream_0
                  la           sp, region_0+1473 #start riscv_load_store_rand_instr_stream_1
                  lh           a3, -1385(sp)
                  sh           a3, 329(sp)
                  lbu          zero, 185(sp)
                  sb           sp, -1058(sp)
                  slli         ra, a3, 1
                  lh           s11, 519(sp)
                  lui          s11, 321260
                  sb           t2, 173(sp)
                  sb           s4, -1274(sp)
                  lb           tp, -1195(sp)
                  srl          t2, t5, sp
                  sb           s0, -812(sp)
                  lbu          s8, -686(sp)
                  lb           s7, -1025(sp)
                  nop
                  lb           a6, -813(sp)
                  sb           sp, 508(sp)
                  lh           s5, 165(sp)
                  lbu          a6, -857(sp)
                  addi         s6, a0, 1026
                  sw           sp, -953(sp)
                  sltiu        s10, t6, -2047
                  addi         a1, t0, 1730
                  lb           s10, -17(sp)
                  nop
                  sb           s9, -276(sp)
                  ori          s9, t4, 828
                  lbu          zero, -1472(sp)
                  lhu          s2, -759(sp)
                  slli         s8, zero, 22
                  sltu         a5, a2, a0
                  sb           s3, -902(sp)
                  lh           s9, -1165(sp)
                  addi         s10, gp, -241
                  add          s7, s11, t3
                  sltu         s5, a0, a4
                  sh           s4, -1419(sp)
                  lbu          t0, -32(sp)
                  srli         t5, a7, 11
                  sb           a6, -749(sp)
                  add          a3, s0, s6
                  addi         s7, t2, -1787
                  lbu          a3, 151(sp)
                  sltu         s10, t5, s3
                  lb           t5, -81(sp)
                  lb           s11, -806(sp)
                  slt          tp, a5, s0
                  lbu          s10, -278(sp)
                  lb           gp, -1021(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1250 #start riscv_load_store_rand_instr_stream_4
                  sb           s11, 1(sp)
                  lbu          a1, 41(sp)
                  sll          a3, sp, s9
                  ori          a1, s11, -1370
                  lhu          s9, -64(sp)
                  srl          s6, a0, a0
                  or           s1, a7, s4
                  and          s7, gp, a6
                  sra          tp, ra, ra
                  sh           t6, -50(sp)
                  lbu          tp, -48(sp)
                  xori         zero, s0, 703
                  lb           s0, 5(sp)
                  lb           gp, 41(sp)
                  sw           s2, 50(sp)
                  lb           s1, -20(sp)
                  srai         ra, s11, 30
                  srai         t0, tp, 27
                  lh           s5, 20(sp)
                  add          a5, t4, s5
                  srli         a5, s6, 13
                  or           a6, s9, sp
                  lhu          s7, -28(sp)
                  slt          a3, s11, s11
                  and          s11, s3, t2
                  lw           ra, -54(sp)
                  sltu         a6, t6, a6
                  sll          s10, t6, a5
                  xori         t3, a1, -1084
                  sb           s4, 25(sp)
                  lhu          s6, 14(sp)
                  lbu          s7, 24(sp)
                  sb           a3, -8(sp)
                  sb           a1, 48(sp)
                  andi         t5, a7, 875
                  and          t2, t0, t1
                  lb           s8, -19(sp)
                  nop
                  lhu          a4, 0(sp)
                  sll          a2, t2, gp
                  lbu          s11, 37(sp)
                  sh           t5, 12(sp)
                  sb           zero, -21(sp)
                  lbu          a4, 34(sp)
                  slti         s11, t6, 1318
                  srli         s11, s2, 1
                  andi         s7, t0, -1976
                  slti         s5, s7, -376
                  lh           ra, 26(sp)
                  lbu          a7, 46(sp) #end riscv_load_store_rand_instr_stream_4
                  la           gp, region_1+681 #start load_store_instr_stream_2
                  la           t2, region_1+1359 #start load_store_instr_stream_1
                  sh           t3, -31(gp)
                  lb           s4, -50(gp)
                  la           s6, region_1+842 #start load_store_instr_stream_0
                  sb           sp, -2(t2)
                  lb           s4, 2(gp)
                  sb           s0, -14(t2)
                  lb           ra, 40(gp)
                  lh           s10, 4(s6)
                  lbu          tp, 16(t2)
                  lh           s1, 8(s6)
                  sb           s5, 38(gp)
                  lb           tp, 1(s6)
                  sh           ra, 53(gp)
                  sb           ra, 40(gp)
                  lh           a6, -15(t2)
                  sw           s9, -3(t2)
                  lb           tp, 28(gp)
                  lh           s9, 4(s6)
                  lbu          t1, 5(s6)
                  lb           t0, 5(t2)
                  sb           s7, 42(gp)
                  lbu          a3, -11(gp) #end load_store_instr_stream_2
                  sb           t5, 12(t2)
                  lbu          s9, 2(t2) #end load_store_instr_stream_1
                  lb           a4, -3(s6)
                  lbu          a1, 14(s6) #end load_store_instr_stream_0
                  la           sp, region_0+692 #start riscv_load_store_hazard_instr_stream_2
                  sb           s10, -51(sp)
                  lb           s1, -51(sp)
                  xori         a2, a0, 193
                  xor          gp, tp, s1
                  lb           t6, 7(sp)
                  sb           s5, 7(sp)
                  lbu          s10, 7(sp)
                  and          s10, t1, a6
                  sb           a4, 39(sp)
                  lbu          t0, 39(sp)
                  lbu          s6, -39(sp)
                  sb           a1, -39(sp)
                  lb           t3, -39(sp)
                  lbu          t3, -39(sp)
                  sb           s3, -39(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+1609 #start riscv_load_store_rand_instr_stream_5
                  lw           s0, 71(sp)
                  lbu          tp, -129(sp)
                  lbu          a1, 193(sp)
                  lbu          a1, -238(sp)
                  and          s6, gp, t6
                  slti         a1, a6, -177
                  lui          a7, 857134
                  lb           a2, -134(sp)
                  lb           a7, -24(sp)
                  sb           t2, 107(sp)
                  srl          s0, a3, t2
                  sb           s3, -210(sp)
                  lbu          t1, -74(sp)
                  lb           s5, 24(sp)
                  lh           a6, 191(sp)
                  srai         a4, tp, 3
                  sll          s7, s3, zero
                  sb           a4, -210(sp)
                  lui          a5, 899576
                  lb           a3, 67(sp)
                  nop
                  and          a4, t6, a0
                  sb           a1, -176(sp)
                  sub          s7, a2, sp
                  lb           t2, -58(sp)
                  lh           a1, -25(sp)
                  sb           t6, -40(sp)
                  sll          s5, s10, t6
                  slli         t0, sp, 13
                  sub          s11, t2, a4
                  lb           s1, 79(sp)
                  lb           s8, 166(sp)
                  lb           s5, 109(sp)
                  slt          tp, s3, s8
                  or           t5, a4, a7
                  sra          gp, s9, a6
                  sb           a4, -23(sp)
                  lb           s11, -239(sp)
                  lui          a3, 396011
                  lhu          zero, 231(sp)
                  srl          s1, t1, s3
                  sb           s8, 46(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+224 #start riscv_load_store_rand_instr_stream_0
                  xor          s0, tp, sp
                  andi         t2, s2, 746
                  or           t1, s11, s10
                  lb           a5, 45(sp)
                  auipc        s11, 518969
                  srli         s7, t5, 25
                  lb           tp, 193(sp)
                  srl          t0, t3, a1
                  lb           s5, 39(sp)
                  sra          zero, t3, tp
                  lw           a2, 92(sp)
                  lw           s2, 68(sp)
                  sll          a4, s5, s10
                  or           s7, s3, t3
                  lb           s2, 67(sp)
                  lbu          s2, 227(sp)
                  lb           s8, 26(sp)
                  sltu         a3, s1, a3
                  sw           gp, -64(sp)
                  sw           s5, 4(sp)
                  sb           tp, 27(sp)
                  xori         t5, t1, -281
                  sb           s0, -157(sp)
                  sub          s7, t2, s11
                  sb           a7, 191(sp)
                  srai         a7, s8, 24
                  auipc        a5, 836645
                  srai         s4, a6, 18
                  lbu          zero, -33(sp)
                  lbu          a3, -66(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a2, region_0+894 #start load_store_instr_stream_1
                  la           s1, region_0+1414 #start load_store_instr_stream_2
                  la           s10, region_0+1413 #start load_store_instr_stream_0
                  lb           s6, -3(a2)
                  lhu          a1, 8(s1)
                  sb           sp, 338(s10)
                  lh           ra, 0(s1)
                  sb           t2, -60(a2)
                  sb           s10, 6(s1)
                  lbu          a3, 9(s1)
                  sh           s6, -2(s1)
                  lbu          tp, -1378(s10)
                  lb           s8, 191(a2)
                  sb           gp, 3(s1)
                  sb           s8, 567(s10)
                  lbu          t0, -622(s10)
                  lh           zero, 289(s10)
                  lhu          tp, 8(s1) #end load_store_instr_stream_2
                  lbu          s11, 249(a2)
                  sh           a5, 168(a2)
                  lbu          a6, 19(a2)
                  lbu          s8, -60(a2)
                  sb           t3, 9(a2) #end load_store_instr_stream_1
                  lbu          a6, -1170(s10) #end load_store_instr_stream_0
                  la           ra, region_0+825 #start load_store_instr_stream_1
                  lbu          t3, 154(ra)
                  lb           s0, -209(ra)
                  la           a4, region_0+874 #start load_store_instr_stream_0
                  sb           s7, 105(ra)
                  lh           s11, -45(ra)
                  sb           a2, -12(ra)
                  lw           s7, 186(a4)
                  lbu          a2, 19(a4)
                  lb           a6, -204(a4)
                  lb           t2, -176(ra)
                  lbu          a5, 75(ra)
                  sb           a6, -108(a4)
                  sh           s5, 175(ra)
                  lhu          a1, 125(ra)
                  sh           a5, -44(a4)
                  lhu          t2, -207(ra) #end load_store_instr_stream_1
                  sw           s5, 50(a4)
                  sb           s7, 169(a4) #end load_store_instr_stream_0
                  la           sp, region_1+1085 #start riscv_load_store_rand_instr_stream_2
                  lbu          t5, -3(sp)
                  sb           sp, 10(sp)
                  sb           a4, 26(sp)
                  sh           a0, 63(sp)
                  nop
                  nop
                  sll          t2, a4, tp
                  sll          a5, a7, s4
                  sb           s0, -27(sp)
                  lh           s9, 1(sp)
                  lb           t5, 22(sp)
                  lh           t3, 57(sp)
                  lbu          s10, 22(sp)
                  lhu          a5, -23(sp)
                  sb           a1, 52(sp)
                  srai         a6, a0, 11
                  xor          s2, zero, t1
                  sltiu        s8, s11, 550
                  lbu          a7, -7(sp)
                  nop
                  lb           s5, -42(sp)
                  lb           zero, -61(sp)
                  lw           s0, -9(sp)
                  add          tp, a4, gp
                  sb           a4, 48(sp)
                  lbu          s0, 31(sp)
                  lhu          t5, -51(sp)
                  lb           s11, -36(sp)
                  slt          gp, t1, a5
                  srl          a6, a7, a6
                  lb           a5, -48(sp)
                  and          t0, t1, s1
                  add          s0, s9, zero
                  addi         ra, s10, 1717
                  ori          s11, t4, -556
                  sw           s6, -21(sp)
                  slti         s8, zero, 91
                  nop
                  sltu         zero, ra, a1
                  sltiu        gp, ra, -1093
                  sb           t6, 33(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+481 #start load_store_instr_stream_2
                  la           s5, region_1+866 #start load_store_instr_stream_0
                  lw           s7, -142(s5)
                  sb           s1, -37(sp)
                  lb           a3, 132(s5)
                  lb           s6, 162(s5)
                  lb           ra, 108(s5)
                  la           a5, region_1+1143 #start load_store_instr_stream_1
                  lw           a1, -182(s5)
                  lbu          gp, -85(s5)
                  lbu          a1, 60(sp)
                  lbu          a7, -130(a5)
                  sb           s5, 130(a5)
                  lhu          s1, 43(sp)
                  sb           t2, 108(a5)
                  sb           s9, 4(sp)
                  lh           a3, -28(s5)
                  lb           t0, 11(sp)
                  lh           gp, 19(sp)
                  sb           tp, -4(sp)
                  lb           s8, -209(a5)
                  lhu          a7, 15(sp)
                  sb           a7, 172(s5)
                  sh           a4, -37(sp)
                  lw           a4, -9(sp) #end load_store_instr_stream_2
                  lb           s7, 43(a5) #end load_store_instr_stream_1
                  lh           s2, 52(s5) #end load_store_instr_stream_0
                  la           sp, region_0+44 #start riscv_load_store_rand_instr_stream_6
                  sltiu        s4, a2, 66
                  lui          ra, 1022494
                  lb           a7, 189(sp)
                  sh           a1, 98(sp)
                  ori          t0, s2, 1204
                  sb           s6, 111(sp)
                  lbu          a1, 31(sp)
                  auipc        tp, 688056
                  sra          s8, ra, sp
                  lbu          t0, 107(sp)
                  lb           s2, 159(sp)
                  lb           a2, 167(sp)
                  lh           a5, 112(sp)
                  ori          a3, s1, -739
                  sb           t0, 208(sp)
                  sh           a3, 94(sp)
                  lb           t6, 43(sp)
                  lui          t1, 879696
                  srl          t0, t4, t2
                  sh           s1, -24(sp)
                  slli         t5, s4, 3
                  srli         t6, s7, 24
                  sh           gp, 66(sp) #end riscv_load_store_rand_instr_stream_6
                  la           t1, region_0+1523 #start riscv_load_store_hazard_instr_stream_3
                  sw           a1, 1(t1)
                  sh           t6, 1(t1)
                  sub          s10, a5, s3
                  lh           s10, -5(t1)
                  sltu         s5, a6, a1
                  lh           zero, -7(t1)
                  add          s11, s8, s4
                  lw           ra, -7(t1)
                  lhu          s9, -7(t1)
                  sw           t1, -7(t1)
                  lh           tp, -7(t1)
                  srli         tp, ra, 14
                  lb           s11, -7(t1)
                  xor          a1, s8, a4
                  lb           t3, -7(t1) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_1+1169 #start riscv_load_store_hazard_instr_stream_4
                  sll          s7, t1, s3
                  lbu          s4, 12(sp)
                  sw           t1, -9(sp)
                  lw           s1, 3(sp)
                  sb           s6, -2(sp)
                  lbu          a5, 16(sp)
                  lbu          zero, -4(sp)
                  lb           a2, -4(sp)
                  sb           s0, -5(sp)
                  add          a1, s10, zero
                  lbu          s9, 14(sp)
                  sw           s11, 11(sp)
                  addi         a1, ra, -265
                  lw           s6, 11(sp)
                  lb           a4, -6(sp) #end riscv_load_store_hazard_instr_stream_4
                  addi         a7, sp, 487
                  srai         a7, s4, 16
                  auipc        tp, 1046228
                  bgeu         s3, s5, 18f
                  xor          tp, t6, t3
                  slt          gp, s10, s6
                  addi         a7, a3, 795
                  bltu         a4, t5, 19f
                  nop
                  beq          s9, tp, 11f
                  srai         t3, s4, 11
11:               sll          s2, a2, s1
                  slti         t6, s8, 432
                  and          gp, t5, gp
                  sll          a6, t5, t5
                  slt          a6, zero, s7
                  sub          a6, a4, s10
                  sll          s0, a4, s5
18:               sltiu        tp, t0, 2028
19:               auipc        a7, 462242
                  sra          s7, s11, tp
                  xori         sp, a4, 1881
                  lui          s11, 112401
                  bge          a6, s5, 29f
                  slti         s4, t5, 1089
                  bltu         a0, a4, 29f
                  slli         s2, s8, 27
                  or           t3, s0, s7
                  xori         t5, s10, 1546
29:               bne          t5, s10, 45f
                  auipc        s4, 736706
                  lui          a4, 822997
                  sub          s10, s10, gp
                  nop
                  andi         zero, zero, -395
                  sra          gp, s10, t0
                  blt          a7, sp, 49f
                  xor          t1, ra, a5
                  srai         a2, s10, 12
                  bge          s5, s10, 46f
                  andi         s9, s10, 599
                  srl          a2, s9, tp
                  andi         a2, s6, 321
                  bge          s3, tp, 50f
                  add          zero, a4, s9
45:               sub          t3, t2, zero
46:               beq          gp, t5, 66f
                  srl          s6, s4, t2
                  srl          s5, s2, t2
49:               bge          t4, s2, 67f
50:               sll          tp, s7, gp
                  beq          a1, ra, 67f
                  auipc        s11, 41587
                  or           a5, s9, s10
                  srli         s0, t5, 9
                  sltu         s1, t6, s10
                  blt          s8, s5, 70f
                  bltu         t1, t6, 76f
                  beq          s0, s6, 71f
                  sub          s11, t0, a5
                  andi         t6, s3, 1845
                  and          s5, s4, s3
                  sltu         zero, s5, s9
                  sra          s0, t1, t1
                  ori          a5, t2, 318
                  xor          a5, t1, t3
66:               bge          s2, s5, 83f
67:               bge          a5, t6, 86f
                  slli         s5, s4, 14
                  sll          a4, a4, t4
70:               andi         s9, s3, -920
71:               add          sp, s10, t5
                  xor          t1, s4, s11
                  and          s1, t4, t6
                  beq          a4, a0, 88f
                  slli         t1, t0, 9
76:               ori          a4, s0, 421
                  slli         tp, t3, 22
                  sub          a3, t6, s7
                  beq          a7, s8, 95f
                  ori          t3, s11, 1503
                  sltu         zero, a7, s7
                  xori         s6, s4, -921
83:               slli         t0, t2, 22
                  slti         s7, s5, 1110
                  and          a5, a1, s7
86:               srai         zero, a1, 3
                  nop
88:               sll          s4, gp, gp
                  and          t5, t5, ra
                  la           sp, region_0+224 #start riscv_load_store_hazard_instr_stream_1
                  lhu          gp, 150(sp)
                  lbu          ra, -1(sp)
                  lb           t6, -72(sp)
                  lbu          s11, -75(sp)
                  lui          s5, 710103
                  sltiu        s7, ra, -376
                  lb           a5, 31(sp)
                  lbu          s4, 31(sp)
                  lb           s1, 123(sp)
                  lui          s6, 570967
                  sb           t3, 123(sp)
                  lb           s9, 136(sp)
                  lw           t1, -56(sp)
                  lh           s8, -8(sp)
                  sb           ra, 243(sp)
                  lhu          a7, 172(sp)
                  lhu          zero, 172(sp) #end riscv_load_store_hazard_instr_stream_1
                  sll          s9, a3, t2
                  srli         s6, t0, 2
                  xor          s6, a2, s8
                  bne          t5, a6, 113f
                  sub          a4, s0, s2
95:               ori          s4, a1, 4
                  add          a3, t4, s1
                  addi         t1, ra, 519
                  srai         t3, s4, 21
                  srl          sp, s2, a7
                  slti         a6, s2, 1489
                  slt          a3, s0, a2
                  beq          s0, a6, 112f
                  srli         t6, a2, 10
                  sll          s7, s2, s1
                  bltu         s4, t2, 115f
                  sll          t6, s6, tp
                  add          a6, zero, t2
                  sub          t3, tp, t6
                  bge          a5, t0, 127f
                  xor          s4, gp, zero
                  ori          s7, t2, 1890
112:              add          a3, gp, ra
113:              bltu         t4, tp, 120f
                  sub          tp, s6, s2
115:              sltiu        t1, s7, 1583
                  bltu         s5, t0, 120f
                  sub          sp, t1, s10
                  nop
                  slti         a5, s1, 1963
120:              sltu         zero, sp, t3
                  srl          t1, s2, s11
                  and          zero, zero, a6
                  sub          zero, s11, s10
                  srai         a7, t0, 11
                  lui          a6, 245807
                  and          a7, s10, t1
127:              auipc        s6, 411549
                  add          a6, gp, s2
                  bge          s2, a6, 149f
                  srli         s4, t5, 9
                  andi         a7, s11, -1735
                  and          s1, s0, t6
                  ori          a7, ra, 764
                  or           sp, ra, s3
                  slti         a6, a2, 1545
                  lui          a4, 352843
                  srl          s6, zero, s11
                  slli         s1, s3, 21
                  sub          a5, t6, s0
                  bne          t2, a6, 156f
                  sub          s8, t6, a1
                  addi         t2, t4, -980
                  sub          t2, s6, s1
                  sub          s11, t4, t0
                  andi         a5, t5, 1283
                  slti         s7, a7, 1186
                  xor          ra, a4, ra
                  sra          a7, a5, t5
149:              xori         s11, s6, 1758
                  slti         zero, s10, 425
                  add          s0, zero, s0
                  bne          t2, s9, 168f
                  sltiu        a3, s9, -869
                  beq          t4, s2, 172f
                  beq          zero, s7, 165f
156:              xori         t6, t0, 1968
                  slti         t3, ra, 1284
                  sltu         a4, s3, t1
                  auipc        s7, 483017
                  slli         s8, s9, 19
                  xor          t1, a2, a7
                  la           sp, region_1+1691 #start riscv_load_store_rand_instr_stream_3
                  lbu          s9, -133(sp)
                  sb           s10, -215(sp)
                  addi         a4, s1, -214
                  or           t5, s11, s4
                  sh           a0, 161(sp)
                  lh           tp, -219(sp)
                  xor          gp, sp, a3
                  lui          t6, 1012096
                  sb           t5, 72(sp)
                  lbu          a1, -204(sp)
                  lh           s11, -93(sp)
                  lb           t6, -188(sp)
                  lbu          a3, -206(sp)
                  andi         s1, ra, -1709
                  slli         t2, s9, 0
                  lhu          s2, 119(sp)
                  lbu          t1, -78(sp)
                  sb           t4, 182(sp)
                  lb           tp, 20(sp)
                  xori         s1, a2, 608
                  sb           a2, 182(sp)
                  sb           t5, 178(sp)
                  lbu          t1, -148(sp)
                  srai         s7, a2, 15
                  sub          s1, a7, gp
                  slt          s9, t5, sp
                  srli         t1, t3, 20
                  auipc        a3, 522753
                  nop
                  lb           s10, 222(sp)
                  lbu          s8, 13(sp)
                  sb           a4, 80(sp)
                  sll          t3, s7, t1
                  lb           t5, -20(sp)
                  srai         s11, tp, 26
                  sltu         t1, t6, s4
                  lb           s5, -104(sp)
                  lw           s10, 157(sp)
                  slt          t5, t4, s9
                  addi         s10, tp, -955
                  lbu          t6, 181(sp)
                  addi         s6, s10, 1037
                  lbu          a6, -93(sp)
                  sw           tp, -107(sp)
                  lb           a2, -46(sp)
                  sb           a7, -54(sp) #end riscv_load_store_rand_instr_stream_3
                  srai         s4, s2, 23
                  slt          s8, a6, s7
                  auipc        s10, 348653
165:              beq          a1, s4, 179f
                  sra          zero, ra, s2
                  xori         t3, zero, 870
168:              sub          a5, sp, a5
                  blt          a5, a1, 184f
                  sltiu        a6, ra, 1948
                  slt          a7, t5, t4
172:              bltu         s7, sp, 191f
                  and          t6, t3, t3
                  bltu         a7, zero, 187f
                  srl          s10, a3, s2
                  bgeu         a4, t4, 186f
                  bgeu         t2, tp, 193f
                  srl          a1, t4, sp
179:              auipc        s1, 603624
                  nop
                  bgeu         a7, tp, 197f
                  srai         sp, t5, 22
                  bne          a6, a1, 193f
184:              sltiu        t0, t6, -1249
                  or           s7, sp, s9
186:              sub          s10, s11, s2
187:              bne          ra, a3, 194f
                  or           s11, s0, sp
                  sltu         s9, t1, t6
                  sll          a7, t4, s3
191:              bgeu         a5, t2, 208f
                  sub          s10, s9, a2
193:              xor          s5, a6, s1
194:              blt          s9, s3, 214f
                  srai         a5, s9, 20
                  beq          s6, s5, 200f
197:              ori          s7, t5, 1858
                  ori          s10, sp, -1652
                  bne          gp, a7, 205f
200:              bltu         t5, t0, 207f
                  or           a1, s3, a0
                  bltu         a0, t6, 220f
                  nop
                  slli         a3, s9, 23
205:              slt          a3, s1, zero
                  sll          a6, s3, tp
207:              blt          s4, t5, 225f
208:              or           s6, t3, gp
                  bgeu         tp, sp, 219f
                  slt          gp, t0, s1
                  xor          t3, a4, ra
                  ori          t0, tp, 540
                  srai         s4, t2, 0
214:              auipc        a3, 599770
                  andi         t0, s6, 1773
                  sltiu        t0, a7, 366
                  bltu         s5, t1, 237f
                  bne          t2, s7, 231f
219:              slt          s8, t0, tp
220:              auipc        sp, 254174
                  lui          t3, 37506
                  sltiu        s5, a4, -1325
                  ori          ra, t6, 1614
                  or           s5, s0, a1
225:              slli         sp, s0, 17
                  xori         s11, s5, 1790
                  sltiu        ra, s6, 410
                  srl          s0, sp, a5
                  xori         t0, a3, 1248
                  xor          t5, s0, sp
231:              bltu         s2, a0, 250f
                  srl          s6, t0, s8
                  slti         s4, a3, 268
                  slti         s1, gp, 1520
                  sll          t1, t6, t2
                  sub          a1, gp, s9
237:              sltiu        s5, a3, 953
                  srli         s7, ra, 7
                  sub          t2, s2, ra
                  sra          a5, a0, s8
                  or           a3, a0, s4
                  auipc        s8, 804244
                  and          s5, t5, a7
                  sub          s0, s6, ra
                  addi         a5, s1, 1540
                  slti         s6, t6, 1731
                  srli         sp, a3, 28
                  srl          t6, t3, gp
                  add          a1, s9, s2
250:              ori          s11, a3, 1156
                  srl          a2, s3, s7
                  auipc        zero, 755156
                  ori          a4, s2, -1550
                  sltiu        s2, a0, -486
                  slli         a1, ra, 26
                  slti         a3, s1, -1267
                  beq          t2, s0, 261f
                  srli         gp, s7, 26
                  slti         s11, zero, 1981
                  sll          s1, t5, a1
261:              srai         a3, t2, 0
                  lui          s2, 486798
                  srli         t3, t3, 30
                  srai         s4, t3, 25
                  slt          s2, s3, gp
                  nop
                  add          s9, zero, s0
                  srli         a5, s6, 20
                  nop
                  bne          a3, a0, 286f
                  sra          tp, t3, s10
                  addi         s8, s0, -70
                  bgeu         s2, s7, 287f
                  addi         s1, s8, -1792
                  andi         s11, tp, 948
                  slli         s10, a0, 11
                  andi         gp, s10, 571
                  addi         s1, s10, -1480
                  ori          a7, t1, -2038
                  slli         t5, a2, 15
                  and          gp, s7, a7
                  xori         s11, t3, -813
                  slli         a1, s11, 3
                  bgeu         s8, s11, 296f
                  srai         s0, s9, 24
286:              sltu         t2, t6, sp
287:              slli         s0, s7, 16
                  srai         gp, a1, 18
                  slti         a3, s7, 1435
                  blt          s6, s8, 297f
                  slli         ra, t3, 29
                  srl          t0, s8, s4
                  ori          s0, a3, 1653
                  srai         t3, s11, 10
                  sltiu        s0, s8, 1424
296:              beq          t6, ra, 314f
297:              srl          s0, s7, a5
                  srl          t6, t3, a5
                  bne          a2, t1, 301f
                  slti         t0, a6, -542
301:              nop
                  bne          s6, a0, 322f
                  ori          s10, a7, 1854
                  sra          zero, ra, a5
                  sltu         s7, s10, zero
                  andi         t0, a4, 1590
                  beq          zero, s2, 323f
                  nop
                  beq          a3, a7, 325f
                  srl          s1, a4, gp
                  bne          t5, t2, 327f
                  sra          t3, s11, s5
                  srli         a5, s11, 3
314:              bge          a1, s7, 333f
                  xor          s6, a1, a0
                  srli         s1, t1, 26
                  add          s9, a5, a7
                  bge          s2, a7, 330f
                  sub          a6, a2, t3
                  beq          s10, zero, 334f
                  srai         s6, s3, 7
322:              sltu         a1, ra, t5
323:              andi         zero, t1, -1457
                  andi         a5, s11, -275
325:              beq          sp, t3, 329f
                  srl          s11, s11, t2
327:              xori         s0, ra, 1521
                  addi         s4, sp, -42
329:              ori          s0, a5, 1563
330:              srli         a7, t6, 12
                  sltu         a3, s2, t5
                  xor          a3, s1, gp
333:              and          tp, a4, tp
334:              sub          t3, t6, a2
                  srai         s1, a0, 21
                  slt          t5, tp, t2
                  sll          a1, s10, s10
                  bne          t4, s8, 357f
                  blt          a7, sp, 349f
                  sltiu        zero, s7, -669
                  bne          a3, s10, 355f
                  srli         t0, s6, 2
                  ori          tp, s3, -1528
                  xori         ra, a5, -1048
                  nop
                  or           t5, a3, s9
                  andi         s4, a5, -53
                  bltu         t5, s8, 363f
349:              sltiu        t5, ra, 861
                  addi         zero, s1, -822
                  bltu         t2, s3, 361f
                  or           a5, a3, a3
                  sltu         a4, a7, s6
                  or           s0, a2, s4
355:              andi         s6, s8, -1096
                  xor          a2, ra, sp
357:              bne          t1, a0, 364f
                  xori         s1, s3, -402
                  auipc        s10, 296406
                  srl          gp, gp, a5
361:              slt          t1, s10, a3
                  blt          t0, a4, 369f
363:              srl          a5, s5, s6
364:              bltu         s9, t3, 384f
                  and          a7, a2, t4
                  bltu         s6, a5, 379f
                  slli         a1, s4, 3
                  srli         s11, sp, 4
369:              bge          t3, a1, 389f
                  lui          gp, 504445
                  slt          ra, a0, s2
                  or           s10, s2, t0
                  sltiu        s5, t5, 936
                  sra          s5, a6, s0
                  srai         s7, t4, 10
                  srl          a3, s3, s7
                  beq          s7, s6, 393f
                  bltu         a1, s0, 394f
379:              slti         t5, t4, -652
                  add          t2, a3, a2
                  lui          s8, 711412
                  auipc        s2, 1039182
                  xor          a1, t1, a7
384:              srl          t2, s1, t5
                  bltu         a2, ra, 401f
                  beq          s10, s5, 404f
                  or           tp, a1, ra
                  slli         s2, s2, 3
389:              xor          s10, s0, sp
                  srai         zero, t3, 23
                  sltiu        s8, t4, -634
                  bge          s4, s7, 410f
393:              sub          s10, s11, t6
394:              sra          s11, a1, gp
                  sltu         s9, tp, s10
                  bne          t1, a7, 402f
                  auipc        t2, 892158
                  nop
                  srl          a1, a0, zero
                  slli         gp, a1, 7
401:              slt          s1, ra, ra
402:              bltu         t1, s11, 420f
                  bge          sp, a3, 413f
404:              sub          tp, t1, a5
                  sltiu        s6, a5, 565
                  sltu         t0, gp, gp
                  srai         t5, s1, 13
                  sub          t6, s9, t4
                  srli         zero, s6, 27
410:              andi         tp, s10, 941
                  beq          s8, t0, 415f
                  add          ra, a6, tp
413:              nop
                  ori          t1, a5, -1335
415:              sra          t6, s10, ra
                  lui          s5, 243054
                  xor          a4, s1, s7
                  slli         s4, t5, 11
                  srli         sp, a5, 5
420:              add          gp, s0, t4
                  ori          t6, a6, -621
                  auipc        t1, 100277
                  slli         t0, a0, 15
                  sltu         s2, a0, a2
                  xor          t2, s7, s1
                  bltu         s1, t1, 443f
                  bltu         tp, sp, 447f
                  srl          t6, a1, s7
                  xor          t3, t0, a3
                  slt          sp, s8, zero
                  srli         s4, a6, 10
                  or           a1, a1, s10
                  slli         ra, s11, 11
                  xor          t2, t5, t2
                  bltu         t1, a5, 448f
                  slt          gp, s6, s5
                  sltiu        zero, t1, 1379
                  bgeu         ra, s11, 454f
                  and          zero, zero, a6
                  sll          gp, s6, s0
                  slt          a3, tp, t1
                  bge          t2, a0, 449f
443:              slli         s1, t4, 0
                  sub          a6, a0, sp
                  srai         a7, s3, 20
                  auipc        s5, 664779
447:              nop
448:              srli         t3, s11, 29
449:              srai         t0, a5, 24
                  sub          s10, s10, t4
                  xor          t3, a5, a4
                  slli         s7, s7, 8
                  slt          s0, s11, t6
454:              andi         a4, t3, -1563
                  blt          sp, t4, 457f
                  andi         s1, s8, 1271
457:              auipc        a2, 814117
                  nop
                  srl          t3, ra, s11
                  add          s11, t5, s9
                  srli         s4, s11, 14
                  andi         a4, a6, -1122
                  srl          s7, a4, s7
                  slt          t6, t3, s5
                  bne          a6, s10, 471f
                  lui          a4, 181012
                  nop
                  addi         t1, s2, 796
                  bltu         s0, a5, 473f
                  bne          a1, t0, 477f
471:              bge          t4, t5, 481f
                  ori          s9, a6, 1554
473:              add          s7, s9, s6
                  slt          tp, t6, t2
                  ori          s7, ra, 1885
                  blt          s6, s2, 490f
477:              beq          sp, s4, 487f
                  and          a7, s7, s4
                  srai         s4, tp, 25
                  beq          sp, a4, 493f
481:              bge          sp, t2, 496f
                  auipc        s2, 968670
                  sll          s8, ra, s9
                  bgeu         t3, a6, 504f
                  slli         t6, s8, 5
                  or           a5, t6, s9
487:              bltu         sp, tp, 497f
                  ori          tp, a7, 625
                  sll          s11, s3, t0
490:              sltu         a6, s4, s1
                  srl          tp, a3, s8
                  bge          s2, a2, 506f
493:              auipc        gp, 789485
                  bge          s1, t0, 512f
                  ori          s5, zero, -1926
496:              andi         t6, s1, 1225
497:              bne          t1, s10, 513f
                  bltu         s11, s10, 517f
                  and          s2, s7, t5
                  blt          zero, s8, 520f
                  bltu         t3, s9, 519f
                  sltiu        a6, a2, 107
                  srli         s7, s4, 27
504:              bgeu         s6, s3, 520f
                  bge          a3, a5, 517f
506:              sub          t5, a1, ra
                  andi         s8, s8, -1631
                  and          s2, s6, s8
                  beq          t4, gp, 516f
                  auipc        gp, 740382
                  bgeu         t6, a3, 527f
512:              beq          s0, t3, 529f
513:              beq          t6, a7, 529f
                  slti         ra, t2, -1587
                  srai         s1, s11, 21
516:              bltu         t3, t4, 532f
517:              add          zero, t4, t3
                  xor          t1, t2, ra
519:              xor          s8, s10, t2
520:              srli         zero, a5, 19
                  sub          t5, zero, s7
                  bgeu         tp, a7, 540f
                  bne          gp, t0, 536f
                  bge          a0, a3, 526f
                  blt          s5, tp, 529f
526:              lui          a2, 311574
527:              srai         t2, a2, 13
                  slt          t2, t1, ra
529:              xor          s9, a0, s10
                  or           tp, t0, s10
                  bltu         s7, t4, 538f
532:              add          a6, s7, t2
                  sltu         a4, t5, a3
                  lui          t5, 335118
                  lui          t1, 909038
536:              xori         s1, t4, -966
                  sltiu        zero, t6, -32
538:              slti         gp, t4, 1631
                  sll          s5, a2, s2
540:              slt          gp, s8, a5
                  lui          ra, 771440
                  and          s5, s0, a2
                  xori         s9, a5, -1155
                  and          t5, s0, s10
                  slti         t5, s0, -133
                  addi         tp, s3, -608
                  sra          t2, s7, a2
                  srli         s10, t1, 30
                  slti         gp, s5, 862
                  srai         t5, t1, 12
                  sll          t3, a5, t0
                  add          a4, sp, a3
                  auipc        t6, 530521
                  slti         s2, s7, 316
                  srli         sp, t0, 23
                  and          s9, s6, a4
                  bge          sp, ra, 576f
                  slt          a2, gp, a0
                  sra          tp, s0, tp
                  srai         a7, gp, 15
                  or           t5, tp, t4
                  sll          t0, s5, t2
                  nop
                  sra          t1, s9, s3
                  ori          t5, s6, -1630
                  add          t5, zero, s8
                  srli         zero, a5, 7
                  beq          a1, s4, 588f
                  srli         s11, t0, 8
                  addi         a1, a4, 1209
                  srai         ra, sp, 7
                  xor          t2, a6, sp
                  bne          a1, t3, 589f
                  auipc        a5, 831245
                  srl          sp, t3, s0
576:              lui          ra, 600339
                  sltu         s8, a0, s5
                  lui          t0, 209438
                  srai         s11, tp, 21
                  sltiu        s9, a4, -1020
                  srai         s11, s1, 14
                  and          s7, t4, a5
                  bgeu         s11, t1, 596f
                  srai         s10, sp, 28
                  sltiu        sp, t6, -333
                  beq          a4, t3, 606f
                  slt          s11, t2, s2
588:              xor          s2, s1, t4
589:              andi         a3, s3, -1613
                  sub          a6, s2, a2
                  sltiu        s4, s4, 894
                  bne          a0, a5, 608f
                  lui          a3, 19498
                  or           s10, a3, s0
                  slli         s10, a2, 11
596:              lui          gp, 611665
                  auipc        s10, 11408
                  sll          s7, s0, a1
                  bltu         a3, a0, 611f
                  bltu         t6, t0, 616f
                  xor          s1, ra, t1
                  srli         s7, s9, 15
                  lui          a2, 104619
                  xori         a4, ra, 1783
                  sltiu        s10, ra, -847
606:              sub          t3, t2, a2
                  srl          a6, s7, s4
608:              addi         s10, t5, -525
                  sltiu        tp, s4, 267
                  andi         a6, s0, 1410
611:              addi         s9, a2, -783
                  sltiu        s10, a1, 1404
                  sra          tp, t0, tp
                  bltu         a4, s4, 620f
                  sltiu        a5, s8, 486
616:              andi         a5, t2, -959
                  srli         a4, t2, 30
                  sll          s1, s11, s8
                  bgeu         t0, s1, 629f
620:              sltu         t5, tp, gp
                  nop
                  sll          a7, s2, s7
                  xori         s8, s1, 809
                  or           zero, gp, a1
                  andi         t0, sp, 834
                  auipc        tp, 175648
                  slli         gp, a6, 4
                  ori          t6, t6, -1455
629:              add          s10, a4, t6
                  sltiu        zero, zero, -65
                  blt          sp, t2, 641f
                  add          s11, a7, t6
                  ori          a6, a6, 867
                  add          a5, a4, a6
                  blt          s4, s7, 645f
                  or           gp, zero, s8
                  slli         a5, s0, 9
                  nop
                  srli         tp, t3, 20
                  bgeu         a5, s8, 644f
641:              andi         t3, t2, -1182
                  auipc        t5, 381784
                  sltiu        s9, s0, 14
644:              andi         gp, t3, -1641
645:              beq          a7, a7, 659f
                  srl          gp, s5, s6
                  bne          a7, s6, 660f
                  srai         t1, t6, 10
                  sra          s8, s0, s11
                  bne          t1, ra, 669f
                  nop
                  xori         s6, s2, 487
                  srai         s1, s4, 2
                  ori          ra, s1, -1674
                  nop
                  xor          s9, a1, t1
                  slti         s0, t2, -101
                  add          s6, s4, a3
659:              blt          a7, s5, 677f
660:              slli         sp, t6, 19
                  nop
                  srl          t6, s0, t6
                  or           s11, t6, t4
                  bge          s0, a0, 683f
                  or           s11, zero, s10
                  lui          s6, 509072
                  srl          s6, a6, s3
                  or           a6, s9, s7
669:              sltiu        a2, t2, 985
                  nop
                  slli         t2, t3, 0
                  beq          s9, s1, 690f
                  lui          t3, 550833
                  srli         zero, t0, 11
                  sltu         s6, s0, t0
                  sltiu        t6, s6, -242
677:              sub          a1, s9, ra
                  sltu         a7, tp, a4
                  slli         s5, s0, 13
                  nop
                  slt          s10, s6, s0
                  bge          t2, t1, 702f
683:              nop
                  andi         sp, s11, 501
                  beq          s7, t0, 702f
                  and          s10, a6, t5
                  add          t5, tp, gp
                  and          t6, a0, t2
                  sltiu        a5, a2, 1183
690:              sra          s5, a4, s3
                  or           a7, s4, s2
                  sltu         a3, gp, s4
                  bge          s10, a6, 695f
                  srli         s2, t2, 7
695:              sra          t2, s1, t6
                  sll          a1, t4, s8
                  srai         s9, gp, 24
                  srli         t2, s6, 25
                  sub          t5, s3, ra
                  blt          s2, sp, 714f
                  andi         t2, s7, -1569
702:              slt          s2, s7, t1
                  sra          t1, ra, s0
                  xor          zero, a1, t1
                  sll          s6, s4, ra
                  bltu         zero, t4, 724f
                  bltu         s8, s9, 723f
                  bge          ra, a6, 715f
                  slt          s10, a6, t4
                  bne          s6, sp, 725f
                  lui          t5, 427038
                  sltiu        sp, s7, 935
                  andi         s7, zero, -1386
714:              sub          zero, s3, t6
715:              bne          s6, s6, 722f
                  slli         s6, s3, 23
                  bge          s4, a1, 721f
                  bne          t1, t2, 734f
                  slli         a6, s1, 21
                  bltu         s10, s8, 727f
721:              bgeu         a1, s0, 741f
722:              and          a7, t0, a1
723:              bne          t4, a7, 730f
724:              slti         ra, s3, -18
725:              add          sp, a5, s9
                  sll          a5, ra, s10
727:              add          s6, s4, a3
                  sub          a1, gp, s8
                  bge          s6, t3, 745f
730:              bgeu         s4, tp, 750f
                  sltu         s2, t3, t1
                  bltu         ra, sp, 738f
                  sub          t5, s2, a2
734:              sra          tp, t3, s11
                  lui          s4, 452703
                  srl          t5, s2, t4
                  beq          t1, t4, 747f
738:              and          a1, gp, s1
                  bltu         sp, t5, 753f
                  auipc        s2, 809812
741:              slli         gp, t4, 21
                  andi         s5, s8, 565
                  srai         t5, s4, 4
                  lui          s8, 751926
745:              slt          tp, tp, a3
                  xor          ra, t5, a1
747:              xor          s10, s3, t1
                  beq          a4, t5, 753f
                  add          a2, t3, t5
750:              ori          a7, a6, -104
                  and          ra, s4, a4
                  lui          s11, 467034
753:              xor          s5, t2, s8
                  lw           t1, 4(a0)
                  xor          s11, s10, t6
                  addi         a0, a0, 24
                  slt          s5, t2, s10
                  srl          a3, zero, a1
                  srai         a6, s9, 28
1339:             addi x3, x6, 0
1339:             jalr x3, x3, 0
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
.word 0x5ed50842, 0x9e5f7028, 0x46282211, 0x370029a2, 0xc59a71f8, 0x45f9e4b2, 0xb3ca6080, 0xc957ec1d
.word 0x73600266, 0x7148c508, 0xd533e759, 0xfb179300, 0xd6bd54b4, 0x4e33c8f4, 0xbbb907da, 0xb93088bb
.word 0xd385e6a2, 0x71100058, 0x743515b2, 0xf87c3649, 0x0efa4832, 0xddc73065, 0xba08c2f5, 0xc456bf6f
.word 0x530e0875, 0xfa616b53, 0x9fa23ab0, 0x427fe48c, 0x9d7b0d7a, 0xdda98329, 0x62bc7f9f, 0x7766c51f
.word 0x5886ba2d, 0xd239c78f, 0x5a81a7a6, 0x8fd85005, 0x74f4bea9, 0x7b547d1b, 0x6f2cb746, 0xb2eadfc5
.word 0xb0a23c22, 0x325131ff, 0x0aaafdf5, 0xb1c1b3d1, 0xbb960a3f, 0xa54bc0fd, 0x5e8c9d58, 0xf269bd3f
.word 0xfdfa2769, 0x9fa10e2e, 0x5d921829, 0xaacc669e, 0x0dd7bb74, 0x66d2802f, 0xbbd977ba, 0x58216106
.word 0x547f5d5e, 0x0aa51942, 0xcc2dea9f, 0x0dd70b86, 0x6e20f9d8, 0xd2f61dbf, 0xe2ac4f65, 0x7e56a30c
.word 0xcccdadc9, 0xb4293baa, 0x50382b65, 0x22c2a488, 0xf287a754, 0x1f37dcaf, 0x826012c5, 0x1ab9156a
.word 0x677b2d7b, 0xc9ba0909, 0x612831e6, 0xbbffff78, 0x41d66c89, 0x811eea57, 0x3e8c0446, 0x755620a4
.word 0x476882b9, 0xb25641e6, 0xe4b47a46, 0x64e5bd41, 0xb59bc510, 0x2a8ac8b4, 0x55c32f31, 0x84656a2d
.word 0x2a5b4d2d, 0x70fcf5e9, 0xe68d5aa5, 0x7998c9de, 0xe880f031, 0x5136d078, 0x1447f334, 0x1dae7574
.word 0x0cb65eb4, 0xf8dd8b69, 0x66c7220c, 0x8a19d4b8, 0x776351fa, 0xd69e9045, 0x3c29d040, 0x445f5ea8
.word 0x7f4dea76, 0xcc068744, 0xd8ed60f5, 0x52d271ef, 0x897e7d0b, 0xe7f95e73, 0xe7212152, 0xf7cec19d
.word 0xf686edd7, 0xa8fc0b53, 0x3b242b04, 0xa723f87a, 0xc9dafacd, 0xcbce962a, 0xce03e189, 0x274f6ff5
.word 0xc3430e68, 0xd1d2105a, 0x17244c9e, 0xa3ec67b5, 0xb5ea03d6, 0x7f97eed5, 0xb8050e04, 0x0876bf2c
.word 0xe460ffcf, 0xe58eb0c3, 0x7dbe9e07, 0xf1b5c013, 0xfb553880, 0x047f6d92, 0xb9905ab0, 0xac323733
.word 0xdd71a100, 0x1f16b37e, 0x6688bc73, 0xd34cb914, 0x6031aa2b, 0xf658cc6c, 0x703963ef, 0x60eea5f0
.word 0x8ec33a88, 0xe1e7a648, 0x4130ac26, 0x4134d928, 0x31343818, 0x8c6afff0, 0x8bfafd6a, 0x3d75eca5
.word 0x9ed3785e, 0xcc8d16bc, 0x54bb92b9, 0xa85453d7, 0x5e0aafba, 0x79072c1d, 0x4f96bccd, 0x8fa8b532
.word 0xa4830f13, 0xcaf54f80, 0x0a4a93cc, 0xf2b39531, 0x0069805a, 0x3303766b, 0xfb109321, 0x07804788
.word 0x8395105a, 0x9fecbf7e, 0x8d33d75d, 0x10d238b7, 0x53bb808b, 0x4c286e7c, 0x7d466ba2, 0x514804d5
.word 0xada4bf52, 0xe0974cfe, 0x0d6e5388, 0x99f82a0d, 0xe22b8016, 0xf917bcf0, 0x4df96bbd, 0x267c4cc3
.word 0xd79bc252, 0x151ca004, 0x0edbad43, 0xb727953a, 0xec4382f4, 0x3d298e7f, 0xfd8e9c86, 0x38e8966a
.word 0x59af4cf1, 0xbf8e229b, 0xf0b66537, 0x9ecf0776, 0x26391f81, 0x740b9cd2, 0x2d07a201, 0x1130c319
.word 0x1e2f85c2, 0x73dac5a7, 0x811b175b, 0x85c8f69b, 0x418bd9ad, 0x90024211, 0x5c626ad8, 0x0646858c
.word 0xab18b93c, 0x1a012c2c, 0x3304b7e9, 0x413b25fd, 0x5f58e666, 0x7ae66c10, 0x3f1c11dd, 0xbd299644
.word 0xcd7fa9c2, 0x8f36534f, 0xd5e37834, 0x91a0556e, 0x5d7f2c5a, 0xc4314adb, 0x30860c83, 0x14152de8
.word 0x71f44c09, 0x5ea78274, 0xb13589c3, 0xd4e9f601, 0xf2dcb872, 0xeb001ca3, 0xc6611b2d, 0xf2bd8448
.word 0x7e4b7dc2, 0xbe7558f1, 0xde225442, 0x19e8dee2, 0xefdb7496, 0x43c1cad4, 0x75010db6, 0xb8dfc15d
.word 0xc1559872, 0x687e0df5, 0xdd32daf6, 0x63bbbd6d, 0x8dec07b5, 0x917ac682, 0x29ecc2ef, 0x4f92746f
.word 0x62af2446, 0x41200f53, 0x563b8d6b, 0xd0f05115, 0x8ed47b7d, 0xba9803b1, 0xc34fcf47, 0xe70db333
.word 0x01638663, 0x4017d0a3, 0xb20ec026, 0x96ea731b, 0x8a364bdc, 0xf68c324e, 0xeaf3a1e4, 0xb8185aea
.word 0x5eb46848, 0xd438b226, 0x436245d4, 0x242f4cea, 0x23fd8a77, 0xc043d364, 0xfc940153, 0x2354bc19
.word 0x33778988, 0xd24fd27e, 0x4d464504, 0x4cf613dd, 0xc23bba6a, 0x99487f25, 0xc170757d, 0xc4ab3207
.word 0xb78208c3, 0xc0500278, 0xd252f2a1, 0x97f357df, 0x7b57cefd, 0x2682b8f9, 0x00ca2eae, 0xa1e7455d
.word 0xb7b5cd17, 0x9fd35ecd, 0x5ed6de6c, 0xcdd43a0c, 0xdccfcec7, 0xfb17e985, 0x8573350a, 0xad3fe51d
.word 0x8d9d37cd, 0x4740ae71, 0x844a5508, 0x04bee39e, 0x9d3ccaf5, 0xdb0d9c66, 0x96171b4e, 0xe11a3ccd
.word 0x3113fd9c, 0xd55505b9, 0x1934c341, 0x685a64ad, 0xcc531fa5, 0xe62b6a5e, 0xb0217678, 0xbd85642f
.word 0x604b6bb7, 0xf4dea87b, 0x587d7ca4, 0xc5d8d642, 0x48980ef2, 0xb01cf29b, 0xda8720a3, 0x5ca35d56
.word 0x86768580, 0x7bc1d546, 0x931bec2f, 0xb829a728, 0x6ac90b72, 0x883fd9c8, 0x492a45e1, 0x75998451
.word 0x7bda532d, 0x78a7b3ed, 0x5e0b0690, 0x216e72f5, 0x6cfb17dc, 0xe1aafd04, 0x3ab63547, 0xf36d2cbb
.word 0xaa05de0a, 0xe698c2fe, 0x3ba95e4a, 0xe161f185, 0x29bed662, 0xa10a97ae, 0xa15147cd, 0x295cb215
.word 0x3180bd85, 0x92727076, 0xa8b5b13b, 0x4624cf93, 0x4551c443, 0x17cff664, 0x2c6a656a, 0xf0e7eb5d
.word 0x00fd8201, 0x2e4990e4, 0x769fccfa, 0x1103d26f, 0xfef92836, 0xa645531d, 0x3c980f66, 0xee24bbb1
.word 0x9a54efa0, 0xe401db73, 0xe1078ae6, 0xb0f66db7, 0xc6c20ed5, 0xcfb726c3, 0x987cbe2b, 0x4ecc26da
.word 0x2e11d8cc, 0x63e27e3e, 0xb52d4bcf, 0xac8211e2, 0xbf6a4de0, 0x31050959, 0x43e62f8c, 0x4d2cf5c8
.word 0x4b2c2df3, 0xfd66a1a0, 0x28d6b072, 0x89c72f6d, 0xee7659ee, 0x4be1eaf0, 0xb9254b69, 0xd9822e86
.word 0x729003c1, 0xbc9fd45a, 0x7743e131, 0x3181e9c5, 0x10da1443, 0x5e42df10, 0x0c6ad1c9, 0xc916cca1
.word 0xd88723f3, 0x57e1e54a, 0xaf45ceb6, 0xeab5fdf2, 0xccdfdff4, 0x71384bcf, 0x07daf6aa, 0x9c9ea88f
.word 0x52f6a597, 0x81c141d8, 0x8fd254ae, 0xda0a3153, 0xcc676192, 0xbc017d98, 0x4cc1da4b, 0x63862224
.word 0xf9db6cf3, 0x59183407, 0xa38bf3c2, 0x2f9014b6, 0x52ff3691, 0xeb526459, 0xdc33695b, 0x0c0573a2
.word 0xc8dbda70, 0x60203e9d, 0x42cb1ae8, 0xba32fce2, 0x8523a784, 0xace46ccf, 0xdac34814, 0x3ec045ac
.word 0x19d8cfe3, 0x3cca417c, 0xb75ee03d, 0x2e23d7d0, 0x1e7752a0, 0x83df461e, 0x44c6935d, 0x36dac9de
.word 0x33fe5492, 0x00d88951, 0x925eed85, 0x5a9d524f, 0x9b9ee3e4, 0x0497fe51, 0x66d6db22, 0x969184bb
.word 0x3609d993, 0xe4c34050, 0xa6d61262, 0xcac708c1, 0x9643d69b, 0x06f0e98f, 0x5abbd82e, 0x2445b4a2
.word 0xd3323b59, 0x426e81c5, 0xa9715cd6, 0xf5ea220c, 0x487e9590, 0x184c7933, 0x4705bf69, 0xd46d227e
.word 0x0ae2358a, 0x564855a4, 0xf91c6ecf, 0x2e3285b6, 0x76484704, 0x68ac6e36, 0x4517cc7c, 0xa41df753
.word 0x6d1c75af, 0x82ca8f0c, 0x88909cc0, 0x3684d608, 0xb42165a1, 0xd5249f47, 0xc3c5b2c9, 0x657daa32
.word 0xa41413a5, 0xfb5740a9, 0x3a3b9b9c, 0xa53723d7, 0xcd928f71, 0xcbb2107d, 0x3c0dca28, 0x1851c9e5
.word 0x1b402640, 0xcd7a364a, 0xf093827c, 0x8a1ccbe2, 0xded672bd, 0xb41216ae, 0x86b11b69, 0xd743172d
.word 0x2dd26403, 0xd74d2b4a, 0x5bbc2722, 0xd93db573, 0x8f11ba78, 0xc1cd506f, 0x0bb28fa1, 0xe9d6fd00
.word 0x3c920e91, 0x0a620142, 0xb7524365, 0xe77329e2
.section .region_1,"aw",@progbits;
region_1:
.word 0x6e27cd99, 0x4d734634, 0xece94965, 0x58e1e5a8, 0x99e38837, 0xbfa764c8, 0xa6678e19, 0x2bcb36e2
.word 0x13ff7324, 0x77b88268, 0x3dccb9d4, 0x70c66159, 0x4dc0b88f, 0x4a5e0356, 0xbc7f2b36, 0x89111070
.word 0xada1936f, 0x57dbc605, 0x88b61454, 0xf0ef9863, 0xf6a06ff7, 0x2a49c243, 0x9632b045, 0xe3e5bbc2
.word 0xd7c799bc, 0x2ef3c9e6, 0x3ef9763a, 0x39fd956a, 0x3e7040c0, 0xa19781f6, 0xc4c7d0ef, 0xf9aea88d
.word 0x1834b6dd, 0xd51311fa, 0xe70220aa, 0xa6a4e408, 0x7dcb8761, 0xca832e35, 0xf310bb25, 0x07eed173
.word 0xd8a4eda1, 0xcf38d0ac, 0xb080f5e3, 0xb03e8358, 0x0b0900ec, 0xc734bcfb, 0xa28a0860, 0x15f61f37
.word 0x002f31af, 0x9088036e, 0xde2c6722, 0x258395a1, 0x4e029715, 0x0d42e8c1, 0x0d72bafd, 0x0d927d4c
.word 0x70c910ea, 0x009b8fa3, 0xa0c33341, 0x7201c6ff, 0x6e00c297, 0xecadf520, 0x274fbec9, 0xb0bb2add
.word 0xe459d3c6, 0xdb1c9f16, 0x9b8049d7, 0x1f16af05, 0xa55b06b8, 0xc4d7edbf, 0x375c83fc, 0xfb7370ec
.word 0xd2585c70, 0x4c7995be, 0x178d6b40, 0x71b29bd5, 0xa609c356, 0xdd1b9dd5, 0x3aed4de2, 0x7b7a11f3
.word 0x6514c91d, 0xd8c794ae, 0xeb309b8c, 0x46f7077f, 0xcf453645, 0x81b097ff, 0x7bad6b00, 0xd6f83ae3
.word 0x4c6f3f4f, 0x11e12876, 0x85a9a60f, 0x68b45e08, 0xbb836e40, 0x022cee62, 0xc14568bd, 0xc7b00ebb
.word 0xd1b3710a, 0x1167afaa, 0x07316c69, 0xe7f43323, 0x752ae78c, 0x76a53f7f, 0xd3527db5, 0x8cba8702
.word 0x5e9e0a03, 0x31821764, 0x38c829a1, 0xae432220, 0x1c6dd893, 0xe0c8b51c, 0x8a3da4a6, 0x9f5f5659
.word 0x3760db3f, 0x27394b18, 0x4eca8d61, 0x5cdb1d60, 0xff39aad6, 0x49564239, 0xe2222b54, 0xc3b7a00b
.word 0x873b35bd, 0x97028719, 0x005c7543, 0x637bcb6b, 0xc7e08160, 0x0d50de58, 0x203756f3, 0x81bcc36b
.word 0x6cbb06e6, 0x62cc36bb, 0xcae3678b, 0xd1699478, 0xbc4f92cd, 0xe121859a, 0x3330f12c, 0x28cb338b
.word 0xd4cbc6db, 0xf0dcef40, 0xcdf5d54b, 0x866d7962, 0xc2b6445d, 0x2deb8622, 0x0d97783c, 0xe942315f
.word 0x5a8dd7f6, 0xa3b05d97, 0xa32ff94c, 0x81d500d6, 0x45e80321, 0x9d136edb, 0x8fc2e5cc, 0x85de0426
.word 0x44e93d98, 0x2da29661, 0x0b726cda, 0x7d2fd0c0, 0xfb73791b, 0x5ff7d3e3, 0xcd94766a, 0xcc393f5b
.word 0x0e96b126, 0xe2e40885, 0x6de8b4aa, 0x625da32d, 0x428f8a51, 0x2d638da9, 0x87fbc30d, 0x60d701fa
.word 0xb6821a77, 0xf6ba2ae1, 0xff6d6042, 0xa88f35de, 0xbc91a50c, 0x2fe2b72f, 0x9dfa3131, 0x9ef4475f
.word 0xe6b36d9a, 0x2ede458c, 0xdb86ee0a, 0xf07a0791, 0xf8781356, 0xe817ba6b, 0x1cf3da53, 0xdfdba8f3
.word 0xaaf5ac70, 0xf58b5aa0, 0x2af80e65, 0x99ab373d, 0xf36b7b56, 0xafc6de40, 0x7a281b45, 0x1a9c0431
.word 0xc0812cea, 0xdec0afc9, 0x94f6ce3f, 0x6cf931db, 0xe42c079c, 0xfb790e5b, 0x6502ce18, 0x762d8416
.word 0xddb5672c, 0xcf37dd51, 0x255cbfee, 0xd6e106ea, 0xe8f4b9e0, 0x1824c6b3, 0xea3574bd, 0x61dd60ae
.word 0x0206d278, 0xcf4b63bd, 0x7c31428e, 0xb048266e, 0x64e4f892, 0x448ee133, 0x76c5ab65, 0x7a0f70ca
.word 0x5c5ebc46, 0x7630989e, 0x9ecba595, 0xee4f8b1b, 0x8a173a19, 0x35bbd587, 0xa4561a6c, 0x60b0a01e
.word 0x95c920ef, 0x5fed4452, 0x52334948, 0x3eefc730, 0x00f2e94c, 0xc765d75d, 0x46fa5a31, 0x421e9e13
.word 0x7947179c, 0xfd2591ae, 0x8bd6993e, 0x3090e419, 0xb39528d8, 0x534fd76a, 0x8aeb994a, 0x539f20a4
.word 0x1fbc6cca, 0xcf436484, 0xd6c0aecd, 0xf4f00b72, 0x3204c1fb, 0x076a8618, 0xa6c2ea1c, 0x724959fc
.word 0x37f9dbff, 0xfb0039ba, 0x4a19bc49, 0x8116d3a3, 0x75413919, 0x09304c74, 0xad49fbe8, 0x33efe3d6
.word 0x92bdcd2a, 0x2f0a145e, 0x5828d834, 0x64b08ff5, 0x702cd2f0, 0xcdac5c9e, 0xba860a69, 0xe41172d6
.word 0xc75d7806, 0x727a3216, 0x4f70637c, 0x72b7779c, 0xfcb691f3, 0x0e668b77, 0x4964e7ba, 0x95d61e0d
.word 0x184095fd, 0x89ff25d8, 0xcefcf782, 0x785f1d60, 0x55d85d19, 0xa7120d27, 0x94adc457, 0x8c8fae40
.word 0x9e734c82, 0xc337e974, 0x3f7b6051, 0xb854e385, 0x876ec1c2, 0x83d40489, 0x35869eb0, 0xf7475506
.word 0x960c5398, 0xd171acee, 0xf6e83e78, 0xe17e77da, 0x96643ff0, 0x6d2fe6c4, 0xa2e5712d, 0x57f1d6b9
.word 0xde80c9a8, 0x470f059e, 0xa1d35095, 0x28f8b411, 0x2fae9eee, 0x6134c3c6, 0xe38c801e, 0xa410b2c4
.word 0xfa3c63e4, 0x6f2bc55f, 0x3c750e80, 0xb709db04, 0xdc951235, 0x1fb51909, 0x0774d593, 0xa9c27e44
.word 0x4bee7847, 0xbe03859b, 0x0b47b342, 0x2d88ffa2, 0x72396dce, 0x3f6fbee1, 0x4afcf31f, 0x586ce243
.word 0x5ae2cbb2, 0x6d50e35b, 0xfc075b63, 0x7a5012c9, 0x70787c7b, 0x389b9bd0, 0xd786ec38, 0xc857775a
.word 0xfb0d4a82, 0x47b17127, 0x1abaa8c7, 0xbee918e9, 0x4d7a93b8, 0xab8d1f27, 0xec77e138, 0x7170c198
.word 0x09725331, 0x2d6cf4c1, 0x7b9407f6, 0x56d0a753, 0x915004cf, 0x6225c8dc, 0xd394611f, 0x59bdeac4
.word 0x23013f85, 0x2e860d90, 0x3cb7393a, 0xf6623917, 0x1299791c, 0x5fee01d1, 0x50e20f35, 0x5a765e98
.word 0x0b86aa45, 0xa65b31b2, 0xb28a269f, 0x08f96e9d, 0xd0b4c359, 0x971c7f0b, 0xdc574bde, 0x4c9e4319
.word 0x2a30a93f, 0x6223f080, 0xf1a301ca, 0xe9de2270, 0xce9d831e, 0xe8ea7fe8, 0x796c244d, 0x0ed19acf
.word 0x2d14bb93, 0x278a4aac, 0x41f759af, 0xdf1294c6, 0x0b2b01ba, 0xcc96678e, 0xc6320167, 0xff5a4360
.word 0x1b363a16, 0xe565adfd, 0xef7b35b9, 0x562106eb, 0x5bd8b7e6, 0x284c9fdf, 0x6455eccf, 0x951a05cb
.word 0xf721f3b4, 0x7d482506, 0xf033cedc, 0x60ef54d1, 0x3e25e871, 0x254a30d1, 0x29567938, 0x8dc50231
.word 0xc0ca0693, 0x19123464, 0xa41dfb87, 0x7752c7a6, 0x8ea789db, 0x2fbde697, 0x5f52573e, 0x0a377c3d
.word 0xb54d2f06, 0xfbe60bca, 0xcc821321, 0x73fdf0ab, 0x36b78bc0, 0x17531b07, 0x1967f59f, 0xfc4deddd
.word 0x205ff82d, 0xa2b8b647, 0x6b6f486f, 0xbad993a0, 0x10f6bd06, 0x29bc7ea7, 0x376dcf30, 0x284c894e
.word 0xe27ddcef, 0xe2c1e6f0, 0xda0bded4, 0xa9ea1e42, 0x7aa0579d, 0xb954c7a2, 0xf53ea63e, 0x3037793e
.word 0x50794d00, 0x7782cc05, 0xc51836b7, 0x8a2e06ec, 0x86dbe582, 0x19230aa7, 0x28468d2f, 0x7af72c23
.word 0x2af63168, 0x3f30892a, 0x9289e73f, 0x68773b94, 0xb669e54c, 0x3030f75b, 0x16ce75ec, 0xed67f467
.word 0x28702cb2, 0xb401f6b8, 0x189918e2, 0xd1138493, 0x1682525f, 0x82fcd3d5, 0xff8c1515, 0x271fbf97
.word 0x949ef222, 0x8a2ac47d, 0x09163c75, 0x0518ce7a, 0xa12ee059, 0x7e8277d7, 0xbcaa12a5, 0x14b9d7ad
.word 0x7b09a97b, 0xfd7f7ee5, 0xd7408b8e, 0x37b08b57, 0x9646b53f, 0x99209c42, 0x7ac4c6e6, 0x36985108
.word 0xd0de2cb5, 0x04e97e63, 0x80a1f00b, 0x8c234a31, 0x18aa59be, 0xf87e9f5c, 0x0dbbc31a, 0x428a2f84
.word 0x8aa62ce3, 0x319c91bf, 0x7b4d6194, 0xcd278f2d, 0xcdd74ee2, 0x854421da, 0x2161e174, 0xa75d3b32
.word 0x52176664, 0x387a99de, 0x61edc772, 0x6eb5413f, 0xfd7b1c0b, 0x248e01f2, 0xfb841c6a, 0x2b07e043
.word 0x9b747081, 0xdecb398e, 0xdc406f91, 0x8e6152ab, 0x7d133c06, 0x03b04626, 0xd67bef8e, 0xd33701f3
.word 0xf4e05867, 0x1075d67b, 0x4326bf3e, 0x2ebd1f3e
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x19, x10, zero
                  csrr x26, 0x300 # MSTATUS
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 31
                  bne x26, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x26, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x26, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x26, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x26, x16, ecall_handler
                  li x16, 0x1
                  beq x26, x16, instr_fault_handler
                  li x16, 0x5
                  beq x26, x16, load_fault_handler
                  li x16, 0x7
                  beq x26, x16, store_fault_handler
                  li x16, 0xc
                  beq x26, x16, pt_fault_handler
                  li x16, 0xd
                  beq x26, x16, pt_fault_handler
                  li x16, 0xf
                  beq x26, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x10, x19, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x19, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x19, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x10, x19, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x10, x19, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x10, x19, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
