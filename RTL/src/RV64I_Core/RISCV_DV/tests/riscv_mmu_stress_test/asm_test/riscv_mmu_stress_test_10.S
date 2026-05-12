.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x18, h0_start
jalr x0, x18, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 1
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x2
                  li x2, 0x8
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x47c1a60a
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x9, 0xf4e91e24
                  li x10, 0xf2ad4b09
                  li x11, 0xf2c17c8c
                  li x12, 0x9
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xfdf913ff
                  li x16, 0x6
                  li x17, 0xf237b6f3
                  li x18, 0xff4546c0
                  li x19, 0x7
                  li x20, 0x0
                  li x21, 0xfcff7d3c
                  li x22, 0x0
                  li x23, 0x7
                  li x24, 0xf69aa92c
                  li x25, 0xc7089935
                  li x26, 0xf50e78a8
                  li x27, 0xf
                  li x28, 0x0
                  li x30, 0xf587dfa6
                  li x31, 0x80000000
                  la x29, user_stack_end
main:             la           sp, region_1+1654 #start riscv_load_store_rand_instr_stream_1
                  srl          a7, s7, sp
                  nop
                  xori         s7, s1, 823
                  slti         s11, a3, 1648
                  sll          a4, s10, t0
                  srai         s6, a4, 27
                  srl          a3, a1, s10
                  srl          a5, sp, ra
                  sltiu        s1, a6, 1966
                  andi         s7, ra, 911
                  lbu          s10, 30(sp)
                  andi         gp, t6, 927
                  ori          t2, s11, 1087
                  add          s4, s4, s0
                  srli         s8, t2, 28
                  sub          a7, s3, a0
                  or           t6, t6, a7
                  sra          a4, s1, s4
                  xori         t6, a4, 1559
                  lbu          s5, 35(sp)
                  lb           t2, -29(sp)
                  sra          t2, s7, s11
                  sltu         s9, t3, tp
                  sub          s1, s5, s5
                  auipc        t1, 5288
                  or           t0, t0, a5
                  slt          zero, zero, s8
                  slt          s5, s10, s2
                  lbu          tp, -13(sp)
                  lb           t2, -52(sp)
                  sltu         s4, a3, a3
                  lw           a4, -6(sp)
                  sltiu        a2, s6, 71
                  sh           sp, -24(sp)
                  lhu          s4, -50(sp)
                  sub          zero, a6, t0
                  lbu          s1, -11(sp)
                  lb           tp, -19(sp)
                  lbu          s6, 33(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_0+3 #start load_store_instr_stream_2
                  la           t1, region_0+1979 #start load_store_instr_stream_1
                  la           a4, region_0+1324 #start load_store_instr_stream_3
                  la           tp, region_0+1312 #start load_store_instr_stream_0
                  lb           t0, -16(t1)
                  lh           ra, -140(tp)
                  lbu          s4, -11(a4)
                  sh           a4, 3(t1)
                  sb           t3, 1254(s5)
                  lw           a1, 204(tp)
                  sb           t6, 1313(s5)
                  lb           a3, 10(t1)
                  lb           a2, 11(a4)
                  sb           a4, 1020(s5)
                  sb           a6, 9(a4)
                  lbu          t3, 181(tp)
                  sb           s10, 1(a4)
                  lhu          t2, -252(tp)
                  lb           t3, 48(tp)
                  lhu          s9, 12(a4)
                  lbu          a3, 352(s5)
                  sh           s6, -160(tp)
                  sb           a5, 15(t1)
                  lbu          t2, -255(tp)
                  lbu          a3, 12(a4)
                  lb           s4, 768(s5)
                  lbu          t0, 926(s5)
                  lbu          s11, -12(a4)
                  lbu          t6, -14(t1) #end load_store_instr_stream_1
                  lbu          a0, -183(tp)
                  lbu          a3, 990(s5)
                  sb           a5, 206(tp)
                  sb           s2, 2(a4)
                  lw           a7, 225(s5)
                  lh           a5, 1105(s5) #end load_store_instr_stream_2
                  lhu          a5, -6(a4) #end load_store_instr_stream_3
                  lb           sp, 236(tp) #end load_store_instr_stream_0
                  la           a1, region_0+302 #start load_store_instr_stream_0
                  la           s9, region_0+1728 #start load_store_instr_stream_1
                  la           a4, region_0+845 #start load_store_instr_stream_2
                  lb           t6, -64(a1)
                  lh           s6, -214(s9)
                  lb           s10, -72(s9)
                  lhu          s5, -200(a1)
                  lb           ra, 224(s9)
                  lbu          a7, -237(s9)
                  lh           tp, -5(a4)
                  sb           t4, -212(a4)
                  sh           s1, 236(a1)
                  lbu          s3, -127(s9)
                  lb           gp, -36(a4)
                  sb           s6, -69(a1)
                  lbu          t2, -221(a1)
                  lhu          a7, 169(a4)
                  lbu          a5, 52(a1)
                  lb           s1, 8(a4)
                  sb           s6, 94(s9) #end load_store_instr_stream_1
                  lbu          t0, -110(a4) #end load_store_instr_stream_2
                  sb           s5, -18(a1) #end load_store_instr_stream_0
                  la           a3, region_0+1146 #start load_store_instr_stream_1
                  la           s4, region_0+706 #start load_store_instr_stream_0
                  la           s1, region_0+120 #start load_store_instr_stream_3
                  la           t0, region_0+1251 #start load_store_instr_stream_2
                  sw           s0, -39(t0)
                  sh           s7, 1742(s1)
                  lb           tp, -237(a3)
                  sb           a2, 337(s1)
                  sb           tp, 81(a3)
                  sb           zero, 165(a3)
                  sb           s8, -52(s1)
                  lh           s5, 35(t0)
                  lb           s8, 563(s1)
                  sb           t4, 1720(s1)
                  sh           a0, 326(s4)
                  sb           s8, 170(a3)
                  sh           t2, -236(a3)
                  lb           a4, -655(s4)
                  sb           a5, -13(t0)
                  lb           ra, -25(t0)
                  sb           a3, 131(a3)
                  lb           zero, 345(s1)
                  sb           a1, 372(s4)
                  lb           a0, 1819(s1)
                  lb           a2, -62(a3)
                  lbu          t2, 209(a3)
                  lb           ra, 83(a3) #end load_store_instr_stream_1
                  lb           zero, 1139(s4)
                  lbu          s7, 4(t0) #end load_store_instr_stream_2
                  lb           s6, 805(s1)
                  lhu          gp, 1314(s1) #end load_store_instr_stream_3
                  lb           ra, 1206(s4) #end load_store_instr_stream_0
                  la           t1, region_1+920 #start riscv_load_store_rand_instr_stream_3
                  lbu          a2, -181(t1)
                  lbu          sp, -167(t1)
                  ori          a3, s10, 862
                  lw           s11, 104(t1)
                  lb           t0, -63(t1)
                  xori         sp, t6, 1032
                  xor          a2, s8, t3
                  sub          s5, s1, s4
                  lb           s4, -1(t1)
                  lb           a2, 16(t1)
                  lb           s3, 207(t1)
                  lbu          s11, 191(t1)
                  andi         a0, ra, -808
                  lbu          t6, -151(t1)
                  auipc        a7, 267845
                  lbu          s8, 33(t1)
                  sb           t4, 123(t1)
                  lb           s1, 97(t1)
                  lb           t0, 110(t1)
                  xori         zero, ra, 1472
                  srli         t6, a7, 12
                  add          t2, s6, t5
                  lbu          t2, -17(t1)
                  srl          s8, s3, t2
                  or           a4, t2, s10
                  ori          zero, t2, -139
                  lbu          s3, 68(t1)
                  sra          zero, zero, s2
                  andi         s10, t3, 1575
                  xori         t0, s10, 1048
                  srli         t5, s11, 26
                  lbu          s7, 185(t1)
                  lui          a5, 326414
                  lb           a7, -125(t1)
                  sll          a2, tp, s3
                  lb           s6, 169(t1)
                  lhu          s9, 114(t1)
                  ori          s9, tp, -55
                  sb           ra, -79(t1) #end riscv_load_store_rand_instr_stream_3
                  la           a3, region_0+823 #start riscv_load_store_rand_instr_stream_2
                  lb           s8, 76(a3)
                  lb           tp, 92(a3)
                  lh           a1, -17(a3)
                  ori          s11, s2, -1582
                  sltu         tp, s9, t4
                  lhu          t2, 113(a3)
                  and          s5, a3, s2
                  slli         t6, a1, 21
                  addi         t1, s4, -1470
                  lw           a2, -71(a3)
                  lbu          a5, 123(a3)
                  sh           a2, 169(a3)
                  lbu          sp, 221(a3)
                  sltu         t6, t0, ra
                  lbu          s7, -250(a3)
                  lhu          a4, -97(a3)
                  slti         s8, a5, 1866
                  sll          t3, t2, zero
                  sub          s8, s3, s7
                  andi         sp, sp, -8
                  slli         ra, s7, 30
                  lbu          a2, 223(a3)
                  sll          s7, t3, s4
                  add          t1, s7, s4
                  lbu          t6, -184(a3)
                  ori          t2, a6, -2006
                  sltu         s4, gp, a7
                  sw           t3, 217(a3)
                  srai         zero, a0, 7
                  xori         s1, t3, 1091
                  sb           s1, 89(a3)
                  lb           s3, -44(a3)
                  lw           a2, 17(a3)
                  lhu          s7, 201(a3) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+393 #start riscv_load_store_hazard_instr_stream_2
                  lhu          s9, 3(sp)
                  andi         a7, ra, 919
                  sw           s11, 51(sp)
                  lh           t0, 19(sp)
                  sub          s9, a1, s0
                  sh           a5, 17(sp)
                  lh           t3, -29(sp)
                  xori         a6, zero, -1180
                  ori          t6, t4, -1822
                  lbu          gp, -44(sp)
                  andi         a7, s1, 1271
                  lb           t0, 40(sp)
                  lb           t2, 40(sp)
                  lb           s7, 40(sp)
                  lh           s8, -5(sp)
                  lbu          t2, -20(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           a3, region_0+1111 #start riscv_load_store_hazard_instr_stream_0
                  sltu         t1, t3, a4
                  lb           s9, 28(a3)
                  lbu          t0, 28(a3)
                  lbu          a0, 59(a3)
                  lbu          a5, 26(a3)
                  lb           t6, 17(a3)
                  lbu          s9, -64(a3)
                  lhu          t0, -17(a3)
                  lb           ra, 38(a3)
                  sb           zero, 38(a3)
                  lui          s9, 596950
                  sb           t1, 38(a3)
                  lb           s9, 38(a3) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1453 #start riscv_load_store_hazard_instr_stream_3
                  lb           s11, 12(sp)
                  lb           s7, 8(sp)
                  lb           a3, 15(sp)
                  sb           s3, 15(sp)
                  sub          t5, s10, s5
                  lbu          tp, 15(sp)
                  lw           s11, -5(sp)
                  sltu         a2, t1, t0
                  ori          tp, a7, -2025
                  lui          s11, 622581
                  lb           t1, 11(sp)
                  lbu          s6, 11(sp)
                  lbu          tp, 11(sp)
                  slt          t0, zero, t5
                  lb           ra, 14(sp)
                  lb           a5, 7(sp)
                  sw           s9, 7(sp)
                  lb           t2, 16(sp)
                  lbu          s6, 10(sp)
                  lh           t1, 13(sp)
                  sb           sp, 15(sp)
                  sb           s8, -5(sp)
                  lbu          t2, -14(sp) #end riscv_load_store_hazard_instr_stream_3
                  auipc        gp, 727247
                  beq          s8, t3, 21f
                  bgeu         s3, s0, 7f
                  sltu         s11, a1, a6
                  bge          ra, sp, 22f
                  bltu         sp, s7, 7f
                  and          a0, a0, tp
7:                slli         s4, s9, 20
                  sltu         s9, s5, s1
                  slli         a6, a7, 22
                  bltu         zero, t6, 13f
                  addi         zero, a6, 209
                  slti         s1, gp, 221
13:               slt          t5, t3, t3
                  lui          s5, 594029
                  andi         sp, t4, -1754
                  sra          t0, a7, tp
                  sltiu        t0, s8, 1973
                  auipc        s5, 99297
                  addi         tp, s6, -511
                  sub          a4, s2, t6
21:               srai         s5, ra, 12
22:               slli         a0, t0, 0
                  beq          t3, t6, 36f
                  slt          s6, zero, t3
                  srai         a6, a1, 12
                  sltu         a3, t1, t2
                  slli         a5, a5, 5
                  auipc        a6, 621113
                  srli         t1, s11, 24
                  addi         t1, tp, 162
                  bge          s11, s4, 41f
                  sub          a0, t5, sp
                  srli         s8, s5, 27
                  sra          a1, tp, a6
                  xor          s10, s7, a6
36:               bgeu         s7, s5, 56f
                  bltu         s4, s2, 52f
                  beq          ra, t1, 47f
                  la           t5, region_1+30 #start riscv_load_store_rand_instr_stream_0
                  slti         a5, a6, -901
                  addi         sp, s5, -1628
                  lb           t6, 171(t5)
                  lbu          tp, 157(t5)
                  srli         zero, s0, 20
                  slti         s3, t1, -680
                  lb           a7, -22(t5)
                  srl          gp, a7, s2
                  add          a1, t1, s11
                  sh           a4, 176(t5)
                  slt          s8, ra, s9
                  xor          a1, t5, gp
                  andi         s3, t6, -1315
                  sb           gp, 239(t5)
                  lh           a7, 8(t5)
                  lb           t3, 58(t5)
                  srl          tp, s11, s4
                  sb           a1, 65(t5)
                  lh           a2, 180(t5)
                  and          a2, zero, s2
                  sub          t2, t0, a5
                  lbu          s8, 144(t5)
                  lui          t3, 883219
                  slti         a3, t3, -284
                  lb           sp, 67(t5) #end riscv_load_store_rand_instr_stream_0
                  srl          a1, a7, t3
                  slt          a6, zero, ra
41:               andi         a1, ra, -1221
                  xor          a5, t3, a4
                  sub          gp, t3, zero
                  andi         a2, s11, 664
                  sll          a2, s4, t4
                  slli         s3, t2, 3
47:               bge          s11, a4, 67f
                  bne          s0, s3, 62f
                  slli         a3, a6, 18
                  or           s1, s6, s11
                  blt          s0, zero, 58f
52:               slt          s5, t2, ra
                  beq          s2, a0, 71f
                  xor          sp, a7, ra
                  bltu         s0, t2, 61f
56:               xori         a2, t4, 936
                  add          a6, gp, a5
58:               slli         gp, s7, 31
                  srli         a0, t6, 4
                  slt          t1, s2, a3
61:               xori         a5, s1, 108
62:               nop
                  ori          s9, t0, -1790
                  la           t3, region_0+1277 #start riscv_load_store_hazard_instr_stream_1
                  sub          a6, ra, a0
                  lw           t6, -673(t3)
                  lhu          a1, 245(t3)
                  lb           zero, 245(t3)
                  lb           a6, 273(t3)
                  lhu          a4, -373(t3)
                  lhu          gp, -373(t3)
                  xor          s10, s6, gp
                  sh           s1, 707(t3)
                  sll          t6, a1, s2
                  lb           t1, -792(t3)
                  sh           a7, -921(t3)
                  nop
                  lbu          s6, 156(t3)
                  lb           a6, -650(t3) #end riscv_load_store_hazard_instr_stream_1
                  add          a0, s4, sp
                  beq          s9, t4, 68f
                  xori         t0, t0, -859
67:               nop
68:               auipc        s5, 73153
                  bgeu         a5, t6, 71f
                  xor          ra, a0, a4
71:               bgeu         s5, a3, 84f
                  sub          tp, s7, s7
                  lui          s11, 330084
                  srl          t6, a5, s4
                  or           a7, t2, s2
                  slti         a1, s3, 1381
                  or           a7, t4, s8
                  bltu         a0, s6, 86f
                  slti         s5, sp, 1705
                  andi         t2, s6, 788
                  srl          s8, ra, s10
                  bltu         s9, a7, 96f
                  and          s8, s11, tp
84:               slt          s1, s8, a7
                  andi         s8, sp, -773
86:               auipc        gp, 664356
                  and          s6, zero, gp
                  blt          s4, sp, 91f
                  blt          ra, ra, 101f
                  blt          s8, s11, 95f
91:               bne          a2, ra, 111f
                  lui          a4, 728713
                  bgeu         s4, s1, 103f
                  slli         a3, a5, 29
95:               andi         s8, a0, 444
96:               xori         s7, s1, -77
                  add          a5, s4, a0
                  xori         a7, a0, -907
                  or           a5, t5, t6
                  andi         s4, sp, -215
101:              bge          a2, s10, 108f
                  nop
103:              ori          tp, s7, 1090
                  auipc        t1, 511446
                  sra          t3, tp, s4
                  xor          a5, a4, s2
                  addi         t5, s10, -30
108:              sub          s5, a6, s3
                  bge          gp, t5, 125f
                  srl          a7, s6, a2
111:              and          ra, t1, t4
                  xori         gp, t5, 537
                  sra          a5, a1, s9
                  srai         a4, s2, 19
                  andi         tp, sp, 1715
                  and          t6, a1, tp
                  srai         a2, t5, 12
                  nop
                  bltu         s8, zero, 121f
                  srl          a1, s11, t2
121:              add          a7, t6, s10
                  beq          s8, ra, 130f
                  beq          ra, a0, 127f
                  bge          a1, t4, 144f
125:              sra          s6, ra, t3
                  slt          tp, a2, s11
127:              nop
                  bgeu         a4, a5, 134f
                  ori          a3, s2, 1773
130:              slti         a5, s11, -684
                  nop
                  srl          a4, s7, zero
                  xor          s7, s7, a3
134:              lui          a5, 416897
                  slti         t6, s1, -686
                  srai         s3, a0, 0
                  blt          s4, ra, 147f
                  slt          t2, t5, a1
                  srl          zero, t5, sp
                  slt          s11, a2, t0
                  sltu         s11, t4, sp
                  la           s6, sub_1
                  addi         s6, s6, -846
                  addi         s10, t2, -811
main_j1:          jalr         s4, s6, 847 #jump main -> sub_1
                  and          tp, s0, a3
                  sltu         s9, s0, sp
                  bge          t2, zero, 153f
                  srai         tp, s7, 27
                  xor          a4, t6, gp
                  blt          tp, s3, 157f
144:              and          a3, a1, tp
                  xori         sp, a2, -1100
                  slt          t2, s3, s9
147:              bne          a5, a6, 161f
                  andi         gp, a1, -95
                  add          a6, tp, s0
                  srl          s4, t5, t3
                  sll          s8, s9, s1
                  srl          s9, s6, s2
153:              sub          s10, t6, s5
                  srl          t3, tp, sp
                  srai         t0, s10, 26
                  srai         s10, s9, 8
157:              blt          s5, t6, 177f
                  bgeu         t1, t2, 176f
                  sra          t2, t6, gp
                  xor          a0, a4, ra
161:              sra          t1, s3, a5
                  sltu         t5, t2, t1
                  srli         t6, s4, 19
                  slti         tp, sp, 1784
                  beq          a1, t5, 167f
                  blt          s9, s8, 186f
167:              bge          a1, a5, 169f
                  beq          a2, gp, 181f
169:              sll          s8, s5, gp
                  sltiu        s3, t2, -1858
                  sub          s4, a4, t3
                  slt          s10, tp, t4
                  beq          a6, a6, 193f
                  sll          t3, a7, a2
                  bge          ra, t5, 178f
176:              srai         a7, t2, 23
177:              auipc        a4, 589921
178:              ori          t1, t0, -1305
                  beq          s7, tp, 182f
                  slti         s8, a6, 796
181:              bltu         t5, a0, 186f
182:              auipc        s10, 809412
                  bgeu         a5, t1, 193f
                  ori          a3, s1, 1366
                  sll          sp, gp, t3
186:              and          a0, zero, s6
                  blt          s9, a2, 202f
                  andi         s8, t4, -655
                  add          t5, a1, t0
                  sub          s1, t1, s4
                  xor          s9, a1, s2
                  ori          s1, s7, 746
193:              xori         a4, t1, -1098
                  auipc        a5, 447558
                  slli         a6, t0, 17
                  beq          s10, t5, 201f
                  sltu         a5, t3, a1
                  beq          a5, tp, 206f
                  andi         a5, s9, 960
                  slt          s10, s9, t5
201:              ori          a7, s2, -877
202:              bgeu         s1, s5, 204f
                  auipc        zero, 521085
204:              andi         t6, t2, -1637
                  bne          t1, sp, 212f
206:              lui          s8, 405764
                  slli         s10, s10, 12
                  xori         s7, s0, 724
                  beq          gp, t6, 216f
                  bgeu         s6, s0, 222f
                  or           s1, sp, t3
212:              beq          s11, t0, 215f
                  bgeu         t4, t2, 231f
                  bgeu         tp, t5, 223f
215:              and          s8, t0, zero
216:              slti         t6, s7, -1296
                  and          a3, t3, t6
                  bge          a0, gp, 234f
                  lui          t6, 862924
                  ori          s5, s3, -577
                  sll          a2, s11, ra
222:              slti         a6, t1, -1128
223:              srl          s11, a3, s11
                  bgeu         s8, s9, 232f
                  bltu         a7, a6, 229f
                  bne          a6, s2, 246f
                  bltu         s10, gp, 237f
                  and          t6, s3, zero
229:              slti         a5, s9, 56
                  bne          s11, s7, 243f
231:              add          a1, a6, zero
232:              sra          t0, sp, t4
                  add          s1, a4, a6
234:              and          s1, s3, s2
                  xori         a1, s0, -1525
                  lui          s3, 944222
237:              beq          a5, a2, 247f
                  and          tp, t2, a5
                  sra          a7, s6, zero
                  ori          zero, zero, 1990
                  slt          s4, a6, t3
                  and          a5, s0, s1
243:              srai         a6, sp, 8
                  addi         s5, t4, -1613
                  lui          a6, 575782
246:              bgeu         s9, a3, 254f
247:              slli         a1, s1, 26
                  add          s10, a5, s0
                  slt          a6, a3, t5
                  sub          s7, s11, t1
                  addi         t6, t5, -1372
                  beq          a7, a4, 254f
                  or           tp, s8, t2
254:              bge          s7, t2, 257f
                  bltu         t2, a0, 275f
                  bge          t0, t0, 264f
257:              beq          t0, s7, 261f
                  srli         s5, t1, 8
                  add          t2, t5, a6
                  bne          a7, a7, 267f
261:              beq          t3, t4, 266f
                  sltu         s4, gp, s9
                  beq          t0, a0, 265f
                  la           ra, region_0+874 #start load_store_instr_stream_1
                  lb           t3, -30(ra)
                  la           s7, region_0+1555 #start load_store_instr_stream_0
                  lbu          s6, -10(ra)
                  lhu          a1, -109(s7)
                  la           s5, region_0+159 #start load_store_instr_stream_2
                  sh           s3, 52(ra)
                  sh           a1, 697(s5)
                  lbu          zero, -1539(s7)
                  lbu          t6, 522(s5)
                  lbu          t0, 31(ra)
                  sb           a0, -59(ra)
                  lb           a6, 346(s7)
                  lhu          a0, -40(ra)
                  lbu          t1, 16(ra)
                  lb           s6, 118(s7)
                  lbu          s6, -54(ra)
                  lbu          t3, 238(s7)
                  lb           t2, 854(s5)
                  sb           a2, 59(ra) #end load_store_instr_stream_1
                  lbu          s3, 1654(s5)
                  sb           s10, 311(s7)
                  lb           t6, -143(s5)
                  lb           s1, 368(s5) #end load_store_instr_stream_2
                  lbu          t6, 275(s7) #end load_store_instr_stream_0
264:              ori          t3, a3, -1514
265:              or           ra, t2, s9
266:              slti         s9, s8, -757
267:              lui          s6, 810613
                  andi         a4, zero, 1675
                  bltu         t5, s3, 283f
                  sltu         t5, a0, t1
                  sub          s5, s5, a0
                  slli         t5, t0, 3
                  srai         tp, s7, 16
                  auipc        t1, 473638
275:              slli         a5, t0, 19
                  xor          a0, t3, s3
                  slli         sp, s10, 15
                  and          t2, t0, t5
                  srai         s4, a0, 27
                  bne          t0, s10, 298f
                  srai         sp, s0, 0
                  addi         t5, a7, -1868
283:              and          a6, a3, a1
                  andi         a4, s1, 1169
                  srli         tp, a5, 6
                  slt          s9, a5, s3
                  sltu         s7, t1, zero
                  slli         s4, s9, 2
                  add          s7, a0, s4
                  slt          s10, s1, s10
                  or           s4, a6, t5
                  sra          s11, a4, t3
                  slt          t1, t3, a1
                  bne          s11, t6, 309f
                  xori         t2, t6, -1449
                  slti         tp, sp, -643
                  slli         a1, t3, 18
298:              bgeu         s5, s2, 316f
                  slti         s6, t6, 1556
                  or           gp, s3, a7
                  srli         sp, gp, 7
                  sll          zero, t6, t1
                  sub          t2, a4, s2
                  srl          a3, a0, a1
                  xori         a1, s0, 535
                  ori          s8, s2, -482
                  add          a1, s10, s1
                  blt          s3, s9, 313f
309:              slti         t1, s1, -141
                  slli         t3, ra, 1
                  xor          s3, s10, t5
                  xori         t5, gp, -735
313:              sll          ra, s4, s7
                  srl          sp, t2, a6
                  srl          zero, s5, s8
316:              or           t2, s6, a2
                  srl          a7, t2, s4
                  beq          t2, t1, 321f
                  sub          a1, s1, s2
                  sub          t6, s9, a5
321:              sltu         ra, a4, a6
                  bge          a1, s5, 342f
                  sll          a6, s7, s2
                  nop
                  slti         s3, zero, -1442
                  beq          t6, s2, 339f
                  lui          a6, 790312
                  and          t3, a4, a3
                  sra          s5, gp, zero
                  xori         s1, t3, -1275
                  bgeu         zero, s7, 338f
                  bne          t3, t0, 344f
                  auipc        a3, 795094
                  add          a3, t0, a3
                  sra          s11, s9, a2
                  sub          s11, s11, ra
                  sub          a3, s3, zero
338:              slt          t2, s7, t4
339:              bltu         a6, s2, 353f
                  lui          gp, 330334
                  beq          a6, a6, 350f
342:              and          t5, s4, t1
                  addi         s7, s8, 1886
344:              sltiu        t1, a4, -648
                  bne          s0, s11, 347f
                  sub          a3, s9, t0
347:              xor          t6, t1, t1
                  slti         s8, s6, -201
                  srli         t1, t4, 24
350:              bgeu         s10, s1, 356f
                  srai         a1, a2, 5
                  srl          s1, s1, s8
353:              and          t5, s3, tp
                  beq          zero, gp, 374f
                  bgeu         a0, t5, 371f
356:              sltiu        t2, s10, -584
                  add          s5, s9, s9
                  slt          a3, ra, s3
                  sra          a2, tp, s8
                  auipc        a7, 87726
                  bge          s10, a7, 364f
                  andi         s9, a4, -2007
                  ori          s3, t5, -536
364:              nop
                  srl          t5, a7, s2
                  sll          t5, a3, s6
                  srai         s10, s5, 23
                  or           tp, s5, s3
                  slti         a4, s2, -1611
                  sub          a7, t3, t1
371:              blt          zero, s9, 374f
                  blt          a6, s6, 378f
                  sra          s7, sp, sp
374:              bge          s1, a6, 381f
                  beq          t6, s2, 380f
                  sltu         a2, t6, s5
                  addi         s7, s7, -261
378:              auipc        t2, 364110
                  xori         s7, s9, 835
380:              sltu         sp, t1, a5
381:              sltiu        t2, t0, -603
                  andi         a6, a7, -751
                  xor          t1, s7, a4
                  sltu         s11, gp, s2
                  blt          t1, t5, 392f
                  nop
                  xori         gp, s9, -944
                  srli         s11, a4, 22
                  bltu         t5, gp, 404f
                  sltu         gp, zero, a5
                  ori          sp, t3, 1286
392:              lui          s9, 1320
                  auipc        a2, 704794
                  lui          s5, 773334
                  srai         a1, t3, 18
                  andi         a2, s8, 1784
                  beq          a3, s1, 399f
                  sltu         s8, s7, s4
399:              slt          a3, s10, sp
                  slli         ra, s1, 0
                  slt          t1, t4, s7
                  and          t0, gp, tp
                  srli         a1, ra, 19
404:              srai         t2, ra, 12
                  sltiu        a0, tp, 1567
                  sub          a5, s0, s11
                  blt          s10, a6, 417f
                  ori          t1, a6, -1346
                  srai         a3, t3, 7
                  andi         s1, s1, -1439
                  andi         a4, s5, -641
                  sltiu        t5, s0, -572
                  srli         tp, a3, 30
                  beq          s10, s4, 427f
                  srl          s1, s5, t0
                  sub          s10, a3, t4
417:              srli         t3, s3, 0
                  slli         t3, a4, 26
                  auipc        a6, 253288
                  srai         zero, s8, 28
                  slt          t0, s8, sp
                  lui          a5, 800309
                  xor          t2, a5, zero
                  sra          s5, a2, s5
                  srai         ra, a3, 7
                  sll          a5, s9, t0
427:              bgeu         s5, s10, 447f
                  srl          s7, t1, t2
                  bgeu         s3, tp, 445f
                  lui          s6, 429831
                  add          s7, a2, s0
                  and          sp, a3, zero
                  sltu         a3, a0, s1
                  and          s3, s7, t6
                  sltiu        s3, a3, 2003
                  srli         s10, s2, 30
                  add          tp, s1, s5
                  or           t2, sp, a4
                  ori          a4, t3, 1904
                  xori         s9, gp, 1956
                  sltiu        s1, t5, -687
                  xor          t5, a1, tp
                  sub          a1, a0, s10
                  bne          t1, a3, 448f
445:              bne          s8, s9, 459f
                  sub          a7, t3, a7
447:              xori         t3, s0, 1740
448:              slli         s6, a5, 27
                  sub          t0, a6, s4
                  auipc        ra, 1026941
                  bltu         a4, s7, 454f
                  blt          sp, s11, 457f
                  slt          s8, s7, s0
454:              bgeu         a0, t5, 463f
                  srl          a3, ra, t3
                  ori          s7, t1, 1240
457:              blt          tp, s1, 459f
                  beq          t5, t3, 463f
459:              sll          t3, gp, t0
                  slti         s11, t2, -336
                  sltiu        s11, a7, -1033
                  xori         s9, gp, 1297
463:              srli         gp, a3, 1
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            bne          s8, s6, sub_2_stack_p
                  srai         s6, s1, 0
sub_2_stack_p:    addi         t4, t4, -36
                  andi         sp, t4, 1224
                  sw           s4, 4(t4)
                  xori         gp, s8, -1525
                  nop
                  la           a1, region_0+26 #start load_store_instr_stream_0
                  la           a5, region_0+1295 #start load_store_instr_stream_1
                  la           s9, region_0+1323 #start load_store_instr_stream_2
                  lbu          a7, 123(a1)
                  sb           sp, 127(a1)
                  lbu          s6, -74(a5)
                  sb           s0, -1140(s9)
                  lbu          s4, 122(a1)
                  lb           a4, -128(s9)
                  lb           t5, 189(a1)
                  sh           s11, 435(s9)
                  lb           s5, 176(a5)
                  lw           a2, -71(a5)
                  lh           t1, -1117(s9)
                  sb           gp, 136(a5)
                  sh           s2, -1265(s9) #end load_store_instr_stream_2
                  lbu          t3, 189(a1)
                  sh           sp, 211(a5) #end load_store_instr_stream_1
                  sb           a6, 89(a1)
                  lbu          s1, 9(a1) #end load_store_instr_stream_0
                  la           a7, region_0+1937 #start load_store_instr_stream_1
                  la           a1, region_0+1088 #start load_store_instr_stream_0
                  lbu          a3, -679(a1)
                  sb           a4, -3(a1)
                  lb           a5, 807(a1)
                  lbu          t6, -50(a7)
                  lw           a2, -13(a7)
                  lbu          t2, -40(a7)
                  lb           a5, -26(a7)
                  lb           t0, -104(a1)
                  sh           ra, 2(a1)
                  lhu          a2, -21(a7)
                  lb           s6, 576(a1)
                  lbu          s7, 22(a7)
                  lb           a3, 14(a7)
                  lb           a4, 40(a7)
                  sw           s8, 27(a7) #end load_store_instr_stream_1
                  lhu          t0, -700(a1) #end load_store_instr_stream_0
                  la           t3, region_1+1229 #start riscv_load_store_hazard_instr_stream_0
                  lb           s7, -12(t3)
                  lbu          t1, -12(t3)
                  lbu          a3, -12(t3)
                  sb           t6, -12(t3)
                  lbu          t2, 9(t3)
                  lh           sp, 9(t3)
                  srai         sp, a3, 6
                  sub          a2, t1, s5
                  srl          t0, a3, s8
                  sltu         s8, t4, a5
                  lh           t0, 9(t3)
                  lbu          a7, 9(t3)
                  lh           s8, 9(t3)
                  lbu          a2, 9(t3)
                  lb           a2, 9(t3)
                  slli         a0, t3, 22
                  sb           s0, 9(t3)
                  lhu          a1, 9(t3)
                  lb           a0, 9(t3)
                  lh           s7, 9(t3) #end riscv_load_store_hazard_instr_stream_0
                  la           t0, region_1+1801 #start riscv_load_store_rand_instr_stream_0
                  add          a7, a4, a0
                  slti         a0, t6, -1760
                  lw           zero, 15(t0)
                  addi         t1, t2, -1971
                  andi         a5, tp, 1064
                  or           a3, t4, s9
                  sltu         a4, t1, s10
                  sb           s7, -11(t0)
                  sb           a2, -7(t0)
                  sb           ra, 8(t0)
                  lhu          zero, 13(t0)
                  lbu          a6, -2(t0)
                  sltiu        s5, a4, -1675
                  sw           s11, 3(t0)
                  slt          a4, t3, t3
                  xor          s8, s5, t5
                  sll          t3, tp, s2
                  lbu          a7, -14(t0)
                  lhu          a5, -7(t0)
                  lb           a4, 2(t0)
                  auipc        a0, 980267
                  srai         s3, t6, 24
                  srli         tp, tp, 16
                  slti         ra, a2, -1783
                  lbu          t2, 14(t0)
                  lbu          ra, -16(t0)
                  sub          s9, s8, s11
                  sb           a1, 0(t0)
                  lbu          t2, -6(t0)
                  lb           a0, -11(t0)
                  sh           ra, 1(t0)
                  sb           s5, 12(t0)
                  lhu          a7, 1(t0)
                  andi         a3, ra, -952
                  lb           t3, -16(t0) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1854 #start riscv_load_store_rand_instr_stream_2
                  lui          a3, 193073
                  sltiu        t1, s5, 1008
                  lh           s9, -16(sp)
                  lw           t3, -46(sp)
                  lbu          zero, 44(sp)
                  lbu          tp, -41(sp)
                  sltu         s9, s4, s2
                  lbu          s6, -51(sp)
                  sub          a5, s9, t3
                  nop
                  add          a6, t1, s7
                  nop
                  lbu          a2, -8(sp)
                  lb           a1, -53(sp)
                  lbu          a6, -27(sp)
                  sltiu        s11, s4, -1571
                  nop
                  slti         ra, t0, 2019
                  or           s1, gp, a5
                  lui          a2, 857721
                  xor          a2, s7, a0
                  sll          a3, a6, t5
                  add          s3, s11, t5
                  sra          s3, a1, ra
                  slt          s10, a1, s9
                  srai         a1, a0, 22
                  sltiu        s9, s11, 1954
                  srl          a2, a2, s9
                  srli         t0, s2, 17
                  sb           t6, 37(sp)
                  addi         s8, a5, -1909
                  lbu          s7, 54(sp)
                  sb           s10, -20(sp)
                  lbu          t5, -51(sp)
                  sb           a2, 44(sp)
                  ori          s3, s0, 1478
                  lb           a3, -46(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a5, region_1+255 #start riscv_load_store_rand_instr_stream_1
                  or           t3, s2, t3
                  slt          s5, tp, a2
                  addi         s1, ra, -499
                  nop
                  sb           t2, 36(a5)
                  or           ra, s3, s0
                  lb           s6, 17(a5)
                  addi         a1, t2, 1220
                  sb           a7, 8(a5)
                  sltiu        ra, t0, 64
                  lb           s3, 54(a5)
                  lb           t0, 53(a5)
                  lhu          gp, 3(a5)
                  lw           t3, 29(a5)
                  andi         a0, ra, -68
                  slti         ra, s7, -2028
                  lhu          s7, 13(a5)
                  slt          gp, s5, sp
                  sltu         a4, a4, sp
                  srl          s8, gp, gp
                  andi         a2, t0, -1514
                  lb           a2, -37(a5)
                  or           t3, t1, s9
                  or           a2, t0, s4
                  and          tp, a6, s8
                  lb           zero, 34(a5)
                  lbu          t0, 36(a5)
                  and          zero, tp, a2
                  auipc        s10, 290901
                  sb           ra, -16(a5)
                  xori         t3, s8, -1524
                  addi         s6, ra, -1310
                  sltu         s5, t0, s8
                  lbu          t3, 1(a5) #end riscv_load_store_rand_instr_stream_1
                  sltu         s7, s11, t0
                  bgeu         t2, a6, 10f
                  andi         s10, s8, 1103
                  auipc        s3, 635734
                  nop
                  sra          t0, a2, t5
                  sra          sp, gp, sp
                  addi         a2, t3, -923
                  sra          s11, t1, s1
                  addi         s6, t0, -678
10:               slli         t0, t0, 31
                  or           s10, s4, s4
                  slt          s1, s11, t2
                  sll          gp, s3, a7
                  slli         s7, s3, 26
                  or           s1, s11, a0
                  and          s4, s6, s11
                  srli         ra, a6, 16
                  xori         a6, s8, 1784
                  add          a1, ra, a3
                  xori         ra, s4, -1203
                  addi         s3, t2, -978
                  sub          t6, a7, t1
                  auipc        t0, 467766
                  bne          ra, sp, 28f
                  sra          s4, t6, t6
                  la           s3, region_1+426 #start load_store_instr_stream_2
                  lb           t0, 172(s3)
                  la           tp, region_1+1484 #start load_store_instr_stream_1
                  sb           t0, 256(s3)
                  lbu          s7, 39(tp)
                  sb           t4, -213(s3)
                  la           a1, region_1+1661 #start load_store_instr_stream_0
                  lbu          a6, -35(tp)
                  sb           t2, -15(a1)
                  lbu          zero, -148(s3)
                  lb           sp, -42(tp)
                  lbu          s5, 208(a1)
                  sb           sp, 16(a1)
                  lw           a2, -198(s3)
                  lbu          a7, 61(tp)
                  lbu          a2, -186(a1)
                  lw           s6, -48(tp)
                  lb           t6, -47(tp)
                  lh           t6, 207(a1)
                  lb           t3, 93(s3)
                  lbu          ra, 154(a1)
                  sh           t0, -32(tp)
                  lb           t0, 227(s3)
                  lb           s7, 73(s3)
                  sb           s0, -168(a1)
                  lb           s5, 116(s3) #end load_store_instr_stream_2
                  lhu          ra, 123(a1)
                  sh           a7, -14(tp) #end load_store_instr_stream_1
                  lh           a4, 23(a1)
                  lbu          a2, -186(a1) #end load_store_instr_stream_0
                  bne          ra, a1, 28f
                  bge          s6, s4, 32f
28:               sltiu        s10, t6, 1269
                  and          t1, a0, a1
                  sll          a2, t3, s2
                  bltu         t0, a5, 49f
32:               bltu         ra, s3, 37f
                  slt          s8, t5, s10
                  srai         tp, a1, 17
                  andi         s3, tp, 1712
                  ori          s7, a0, 1305
37:               bne          t3, s10, 49f
                  lui          t0, 554320
                  xori         gp, s9, -92
                  xori         s11, a0, 805
                  slt          a4, a1, s11
                  sub          s4, a0, s3
                  slti         zero, s0, 222
                  bge          s0, t4, 59f
                  beq          t6, s10, 53f
                  ori          a4, s7, -12
                  bgeu         t1, s10, 52f
                  srl          s5, sp, s11
49:               slti         ra, sp, -1156
                  sltiu        a1, t6, -55
                  auipc        s8, 871854
52:               srai         a2, a1, 3
53:               lui          tp, 990223
                  addi         s10, s9, -827
                  srli         s9, a7, 1
                  xori         s8, s5, 651
                  sra          s9, gp, a2
                  bltu         s0, t2, 70f
59:               sltiu        s4, t4, 856
                  sltiu        tp, t4, -287
                  blt          t3, s3, 80f
                  bgeu         s11, s7, 81f
                  sll          t6, s2, t5
                  slti         ra, s3, 1624
                  sltiu        s4, a6, 1686
                  srli         sp, t3, 2
                  slt          a6, t3, s9
                  slti         s1, s9, 557
                  add          t6, gp, s7
70:               blt          s11, a7, 85f
                  bne          t5, s0, 89f
                  beq          s4, zero, 86f
                  srl          a1, zero, t5
                  blt          a6, s10, 84f
                  or           t6, t0, a2
                  ori          s5, s6, -1633
                  sra          zero, s3, t2
                  sll          a3, s2, a1
                  slti         t2, a5, -204
80:               slti         s1, ra, 1777
81:               nop
                  sra          s7, s10, a4
                  sub          t6, a2, a7
84:               xori         a3, s7, -1923
85:               bgeu         a3, t3, 93f
86:               ori          t3, t0, -1018
                  slt          s7, gp, t0
                  add          a2, a1, s2
89:               slti         zero, s9, -1843
                  slli         s8, s1, 25
                  andi         s4, t5, 326
                  or           a3, s8, gp
93:               addi         gp, s7, 1341
                  sltu         s8, s4, t0
                  lui          t2, 959401
                  bge          s7, s10, 98f
                  bgeu         s5, t6, 105f
98:               slli         s1, s9, 23
                  bge          s1, sp, 107f
                  add          a7, t2, a5
                  or           t6, s6, a1
                  sra          t5, s10, a4
                  xor          s6, sp, a2
                  auipc        s6, 402929
105:              lui          s9, 549242
                  srl          s11, t1, s5
107:              andi         t1, a3, -1025
                  srai         a3, a4, 31
                  andi         t5, s2, -1639
                  xori         a7, s3, -1679
                  sltu         s1, s6, s6
                  srl          s7, t1, a7
                  or           a5, a3, a5
                  sltiu        a1, ra, -860
                  slti         a0, s8, -1794
                  bgeu         a6, s4, 126f
                  add          gp, a2, a7
                  and          a5, s11, s9
                  and          sp, s1, tp
                  sltu         a2, t4, s4
                  srai         s3, s0, 26
                  add          tp, t5, t6
                  sub          t3, s4, s4
                  blt          s7, s9, 127f
                  xori         s5, s10, 1981
126:              andi         t6, sp, -1691
127:              srai         s6, s4, 20
                  slli         s1, sp, 27
                  bltu         a0, t3, 140f
                  lui          a4, 603863
                  sll          s8, a0, a3
                  xor          tp, a5, a4
                  sub          t5, tp, s6
                  addi         a6, t2, 1103
                  srai         s1, s4, 26
                  beq          t0, s7, 141f
                  sll          sp, t3, s7
                  addi         t6, a6, -1196
                  sub          a3, s4, s8
140:              blt          a2, a5, 146f
141:              slti         s1, s8, -114
                  add          t1, a4, tp
                  la           sp, region_0+141 #start riscv_load_store_hazard_instr_stream_2
                  or           s1, t5, a5
                  sb           ra, -4(sp)
                  sb           a4, -4(sp)
                  lbu          s1, -4(sp)
                  slli         s8, tp, 15
                  sb           s2, 0(sp)
                  lbu          s8, 0(sp)
                  slt          a3, s2, s10
                  sh           tp, 11(sp)
                  lbu          s11, -8(sp)
                  sb           t4, 12(sp)
                  sub          s9, s5, tp
                  lbu          t2, 5(sp)
                  lb           t1, 5(sp)
                  sh           a2, 9(sp)
                  addi         t5, s11, 34
                  lbu          a2, 9(sp)
                  lh           s10, 9(sp)
                  lhu          s6, 9(sp)
                  lh           a6, 9(sp)
                  lh           s10, 9(sp)
                  lbu          t2, 5(sp) #end riscv_load_store_hazard_instr_stream_2
                  xori         t2, tp, 770
                  srl          sp, s0, s9
                  bltu         t6, t5, 146f
146:              srli         s3, s0, 27
                  bne          t2, a3, 153f
                  nop
                  sub          t1, tp, ra
                  xor          a6, t6, t6
                  xori         a1, a6, -1735
                  blt          t6, s11, 158f
153:              xor          ra, a0, a5
                  sltu         s4, gp, s10
                  lui          a4, 276108
                  ori          s4, t2, -257
                  blt          s1, a5, 174f
158:              bge          s7, s9, 170f
                  srai         s1, t2, 21
                  srl          s4, tp, a7
                  lui          t3, 892449
                  slti         t1, gp, 850
                  bltu         s7, ra, 172f
                  slli         t0, s0, 10
                  sra          s6, t2, a0
                  blt          a6, t2, 171f
                  and          t3, ra, s1
                  auipc        t0, 445949
                  auipc        a1, 89719
170:              sub          a5, t3, t0
171:              bge          a4, s5, 174f
172:              sltiu        s7, a2, 763
                  bltu         s1, t6, 192f
174:              sub          s1, gp, a0
                  slli         s9, t0, 26
                  sll          s7, s1, a5
                  xor          t2, s8, s3
                  sltu         a7, t5, s6
                  srai         ra, s3, 26
                  add          ra, s3, a6
                  auipc        s9, 119139
                  auipc        s8, 31678
                  sltu         a7, s5, s2
                  sltiu        t5, a4, 1363
                  add          tp, a3, sp
                  beq          s0, s3, 198f
                  srai         s10, s6, 14
                  sra          t6, s10, s2
                  slt          t1, t3, s10
                  bne          s4, s9, 191f
191:              bge          a4, s6, 197f
192:              add          a7, a5, gp
                  add          t3, s1, s7
                  and          t1, t1, t4
                  lui          a6, 445435
                  bne          a5, s0, 200f
197:              sll          s6, s10, s4
198:              and          t1, a5, t4
                  slt          s8, s1, s4
200:              sub          a5, a1, t5
                  srai         s5, s1, 4
                  xor          tp, a3, a5
                  xor          s1, s10, s9
                  beq          s5, ra, 219f
                  sub          s9, t2, t0
                  slli         s4, t0, 31
                  ori          a0, a6, 145
                  nop
                  lui          a2, 344462
                  sltiu        a6, s1, -1622
                  bne          t0, a3, 219f
                  bge          s0, s1, 214f
                  bgeu         s0, s6, 231f
214:              andi         s10, a4, 1331
                  andi         s9, t5, -632
                  bne          sp, s5, 224f
                  bltu         s10, s9, 235f
                  sll          a6, tp, t1
219:              xor          zero, s6, s1
                  blt          tp, s4, 226f
                  sub          gp, s2, a2
                  bltu         a6, t4, 227f
                  addi         s10, t0, -1752
224:              sltiu        t2, s6, 1763
                  add          s1, tp, t2
226:              auipc        sp, 36969
227:              sltu         s10, s10, s2
                  sra          a0, t1, t3
                  sltiu        t3, t4, 1712
                  blt          a3, s9, 238f
231:              srli         t3, gp, 25
                  slti         t6, t2, -397
                  srl          sp, s1, tp
                  slti         a0, t6, 827
235:              blt          a1, gp, 254f
                  xori         s11, a7, -615
                  sltiu        t1, s9, 1864
238:              ori          a4, a6, -180
                  sltu         s8, s10, t0
                  sltu         s3, s9, sp
                  srai         s5, a6, 10
                  bgeu         s1, gp, 256f
                  or           a3, a2, s4
                  sub          a7, gp, gp
                  slli         s11, t6, 10
                  xori         s9, t6, -289
                  auipc        s11, 490809
                  sll          s3, s7, t6
                  sltu         s8, t1, t2
                  srli         t1, t4, 27
                  srai         sp, sp, 27
                  or           t1, a0, s1
                  xori         a1, sp, 750
254:              bge          a0, a7, 256f
                  bne          a6, gp, 272f
256:              srli         a2, s2, 27
                  sub          s9, a3, s1
                  bgeu         s1, sp, 268f
                  slti         a4, t6, -1115
                  srai         s10, s0, 25
                  slt          a5, ra, a1
                  auipc        tp, 223480
                  add          a4, s11, t6
                  sub          a6, s3, a2
                  bne          t0, t6, 270f
                  srli         a3, sp, 6
                  beq          a6, s6, 272f
268:              bgeu         a6, a1, 274f
                  srli         s3, a0, 27
270:              xor          t1, a1, s8
                  addi         s4, s11, -530
272:              slti         t6, tp, -1379
                  ori          a2, t4, 1558
274:              sub          sp, a3, s6
                  slli         s5, t5, 24
                  beq          t3, t5, 284f
                  srli         t5, s3, 2
                  lui          t1, 884997
                  sltu         t0, a6, s6
                  add          sp, a3, s5
                  andi         s9, s3, -373
                  slt          t1, a5, t2
                  slti         tp, gp, -1518
284:              sll          a6, s8, s7
                  sltiu        s8, a1, 370
                  blt          s5, s6, 301f
                  srli         t1, zero, 8
                  ori          a4, zero, -643
                  sra          s7, a1, a0
                  bne          a4, s5, 300f
                  or           s3, a1, s11
                  add          a7, ra, t6
                  srl          zero, s6, t6
                  blt          t6, t0, 305f
                  slli         a3, s1, 18
                  xori         s10, s4, 1770
                  sltu         s9, sp, s10
                  nop
                  and          t0, sp, ra
300:              srli         gp, t0, 25
301:              or           s4, s4, s1
                  slti         t3, s11, -1401
                  ori          s7, gp, -2032
                  nop
305:              lui          s4, 425575
                  nop
                  xor          t5, t4, t0
                  auipc        s1, 781249
                  sra          a4, ra, t3
                  slt          tp, a7, a2
                  srai         a4, t6, 0
                  xor          a2, t5, zero
                  blt          s8, sp, 321f
                  srai         s7, a2, 23
                  slli         s11, ra, 30
                  slti         s7, s1, -1447
                  slli         s10, t6, 6
                  srai         a6, a5, 28
                  sltiu        s5, a6, -83
                  beq          gp, a7, 329f
321:              srai         t3, ra, 9
                  slti         a5, s8, 1754
                  bge          s10, s8, 328f
                  add          t6, s5, a7
                  sub          a0, s9, a6
                  lui          t2, 663877
                  blt          t0, s11, 335f
328:              auipc        a0, 102595
329:              sltu         sp, ra, ra
                  srai         s10, s8, 17
                  xori         gp, s8, -247
                  add          a3, a3, t6
                  la           sp, region_1+1634 #start riscv_load_store_hazard_instr_stream_1
                  srli         t3, t6, 22
                  sb           a2, -278(sp)
                  lh           t3, -278(sp)
                  sb           a5, -278(sp)
                  nop
                  or           a2, s6, t3
                  lbu          t3, -278(sp)
                  sh           a3, -278(sp)
                  lhu          s6, -278(sp)
                  ori          t2, s7, -1467
                  sltu         s5, s7, a4
                  lbu          ra, -278(sp)
                  sw           a4, -278(sp)
                  and          s4, a3, a5
                  lbu          t2, -133(sp)
                  lbu          a5, -133(sp)
                  xor          t2, s0, gp
                  sb           t6, -133(sp) #end riscv_load_store_hazard_instr_stream_1
                  bne          a0, gp, 339f
                  ori          t6, zero, -1509
335:              bge          s2, a4, 345f
                  xor          a7, s7, s2
                  auipc        t3, 317219
                  bltu         s7, s6, 357f
339:              srli         sp, sp, 11
                  srai         s5, s8, 0
                  slli         ra, s11, 13
                  xor          s7, s1, tp
                  srai         s10, s6, 13
                  bgeu         s9, tp, 345f
345:              or           a3, s0, a5
                  addi         a6, a1, 535
                  xori         a2, s0, 1669
                  nop
                  sub          zero, s3, s2
                  sub          a1, t2, t6
                  bltu         s5, t5, 353f
                  bge          a1, s3, 357f
353:              lui          t0, 213138
                  bge          s6, s7, 369f
                  sra          ra, s1, a0
                  xor          a3, a4, t4
357:              or           zero, t6, tp
                  or           t2, tp, s8
                  xori         s8, t2, -196
                  sltiu        tp, a3, 1349
                  add          t3, a1, tp
                  auipc        a0, 384838
                  auipc        a1, 438030
                  or           ra, t0, a3
                  bge          t3, s2, 370f
                  bge          zero, ra, 370f
                  blt          s4, s7, 370f
                  andi         s8, tp, -29
369:              sll          s8, s4, a4
370:              xor          gp, s6, t0
                  lw           s4, 4(t4)
                  or           a7, s4, t2
                  sltu         s6, s2, s1
                  addi         t4, t4, 36
                  xori         a0, a0, -1294
                  srli         t5, a0, 24
                  nop
625:              addi x10, x20, 0
625:              jalr x10, x10, 0
sub_1:            addi         ra, s3, -3
                  bgeu         t6, s6, sub_1_stack_p
                  xori         ra, s4, -295
                  sltu         t0, s7, s0
                  ori          s9, gp, 353
                  xori         s9, gp, 614
sub_1_stack_p:    addi         t4, t4, -28
                  sw           s4, 4(t4)
                  addi         s11, a5, 1447
                  add          s1, a7, zero
                  ori          a3, a7, -751
                  nop
                  add          t2, a7, s10
                  auipc        t2, 722923
                  sll          a0, a6, s4
                  blt          t4, s11, sub_1_j2 #branch to jump instr
                  andi         a5, a0, -505
                  sra          t0, a0, s0
                  sltiu        a5, s10, -108
                  auipc        a7, 798530
                  slti         s10, s8, 1274
                  sll          a7, t3, t4
sub_1_j2:         jal          s4, sub_2 #jump sub_1 -> sub_2
                  bgeu         t1, ra, sub_1_j3 #branch to jump instr
                  srl          a0, t5, a7
                  sub          s6, s9, s5
                  andi         t6, sp, 761
                  andi         s10, s9, 2037
                  slti         a7, s11, -713
                  sltu         t3, t6, s11
                  slli         zero, s11, 25
                  sltu         s4, s6, a7
sub_1_j3:         jal          s4, sub_2 #jump sub_1 -> sub_2
                  la           gp, region_0+1812 #start riscv_load_store_hazard_instr_stream_0
                  sh           s5, -60(gp)
                  sb           a5, 37(gp)
                  sb           s1, 37(gp)
                  lbu          t3, 37(gp)
                  sb           s7, -51(gp)
                  lbu          sp, -51(gp)
                  lbu          s8, -51(gp)
                  add          t0, sp, s7
                  lbu          ra, -51(gp)
                  lbu          s11, -5(gp)
                  lbu          t3, 13(gp)
                  lhu          s5, -62(gp)
                  sb           a5, 7(gp)
                  lbu          tp, -39(gp)
                  sltiu        s4, t2, -1285
                  sub          s4, t5, t1
                  lbu          s4, 11(gp)
                  srl          a7, sp, a1
                  lw           s6, 52(gp)
                  lh           s1, 52(gp)
                  sw           ra, 40(gp)
                  sb           gp, -57(gp)
                  lbu          ra, -57(gp)
                  sb           a5, 49(gp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+390 #start riscv_load_store_rand_instr_stream_0
                  srl          s9, s5, t6
                  sra          zero, t0, a5
                  add          a3, t5, s10
                  slli         t2, sp, 17
                  or           s4, zero, s10
                  auipc        a0, 708891
                  auipc        s7, 468226
                  srl          s4, a6, s9
                  lbu          s4, -154(sp)
                  lhu          a3, -6(sp)
                  xori         s3, tp, -134
                  sra          s11, t3, s2
                  lb           s11, 119(sp)
                  sb           s6, 7(sp)
                  slli         t2, s2, 3
                  sltu         s4, a2, a6
                  or           s7, a7, s1
                  sb           a0, 63(sp)
                  lb           s5, 25(sp)
                  or           s11, a7, a3
                  lh           t0, -206(sp)
                  lb           s1, -178(sp)
                  sltiu        t5, s4, 261
                  slti         ra, s9, -255
                  sra          t3, s2, a1
                  auipc        s10, 1035288
                  sub          a6, a5, a2
                  sltiu        s1, t6, 1502
                  auipc        t2, 733588
                  lhu          t2, 124(sp)
                  addi         t6, s6, 1759
                  sltu         t0, a4, s1
                  or           t6, t3, a3
                  addi         s11, gp, 647
                  sb           a5, -122(sp)
                  lb           ra, -228(sp)
                  srli         s1, s10, 9
                  lui          tp, 560700
                  lbu          a3, 91(sp)
                  sll          s7, t5, a5
                  slti         s8, t0, -1701
                  sb           a0, 33(sp)
                  slli         s7, s11, 21
                  lhu          s1, -112(sp) #end riscv_load_store_rand_instr_stream_0
                  blt          a1, s5, 1f
1:                bgeu         s3, s6, 18f
                  srl          t2, a3, s10
                  bgeu         ra, a3, 7f
                  beq          s3, t6, 10f
                  bne          a7, t1, 17f
                  or           t5, s8, s1
7:                ori          s10, a7, -1829
                  slli         s9, a1, 17
                  bge          a6, s5, 29f
10:               add          a7, s4, s10
                  auipc        zero, 516639
                  add          s7, a4, a7
                  addi         s10, s7, 1730
                  xor          t3, s6, s7
                  sll          a3, t1, s8
                  sltu         s8, t1, a2
17:               bne          s5, t4, 30f
18:               sra          t0, a2, a3
                  slli         s7, t5, 4
                  slt          s7, t2, s6
                  bge          s1, t6, 36f
                  slti         a6, gp, 913
                  slti         a3, tp, 1635
                  bne          t5, s7, 27f
                  slti         s3, s11, -1234
                  ori          s8, ra, -88
27:               nop
                  add          a7, t5, s8
29:               auipc        zero, 857760
30:               sltu         a6, a4, t1
                  addi         a5, a7, 121
                  blt          s5, a5, 46f
                  bne          s10, s5, 37f
                  and          s6, s5, ra
                  xori         a5, t5, 591
36:               bgeu         s2, s2, 42f
37:               sub          s8, ra, s9
                  sll          a4, t6, ra
                  ori          t0, tp, 657
                  srli         s9, s0, 3
                  beq          a2, t4, 56f
42:               and          a6, s4, t4
                  slli         a6, a1, 31
                  sltiu        t3, tp, 236
                  ori          s3, t6, -1275
46:               nop
                  srli         s1, s7, 7
                  lui          tp, 124637
                  ori          sp, ra, 713
                  sra          a0, gp, s1
                  xor          s11, s4, s8
                  slli         a2, t2, 15
                  sltu         t6, t5, a3
                  bgeu         s1, s11, 57f
                  sub          a4, t6, t5
56:               sra          zero, t3, a3
57:               bgeu         s10, a2, 59f
                  slt          a0, t0, t1
59:               bltu         t4, t3, 65f
                  xori         a2, s8, 348
                  bltu         a1, zero, 65f
                  xor          t6, ra, s1
                  srli         a7, a7, 19
                  ori          a6, s8, -350
65:               sltu         sp, a1, t3
                  sll          a4, a4, gp
                  lui          a3, 11191
                  sltu         a6, a6, s5
                  xori         s9, ra, -1836
                  srai         a4, s5, 24
                  sra          t6, t1, a0
                  and          a6, a3, ra
                  beq          s1, a1, 78f
                  blt          a4, a6, 87f
                  slli         a0, ra, 19
                  sltu         s6, s3, t1
                  srai         a1, s1, 24
78:               andi         t2, s2, 368
                  slt          t3, s6, t6
                  slti         ra, a0, 842
                  bge          s7, a5, 100f
                  sub          zero, a0, s3
                  slt          t1, gp, a1
                  slti         s3, s11, -1076
                  sll          a5, a3, s7
                  srai         a4, s6, 30
87:               sra          s1, s4, t0
                  sll          t1, tp, a1
                  slli         a7, s6, 31
                  addi         s7, s5, 1214
                  srai         a0, s6, 0
                  beq          sp, s9, 99f
                  nop
                  sra          t2, t5, a6
                  sltu         s7, s0, t0
                  sltiu        t1, t6, -506
                  blt          s0, s0, 110f
                  addi         sp, sp, -1398
99:               and          a2, tp, gp
100:              sub          t6, s9, a2
                  sltiu        t6, s2, -1306
                  ori          a6, a0, -684
                  nop
                  la           s10, region_1+166 #start load_store_instr_stream_1
                  la           ra, region_1+209 #start load_store_instr_stream_0
                  lbu          s4, -36(ra)
                  lb           s8, -141(ra)
                  lb           s1, 11(s10)
                  sb           s3, 94(ra)
                  lhu          s4, 32(s10)
                  lbu          s4, -13(s10)
                  lb           s8, 190(ra)
                  lbu          t5, 42(ra)
                  lb           s5, 158(ra)
                  lb           s7, 33(s10)
                  sb           tp, -116(ra)
                  sb           a1, -36(s10)
                  lw           s1, -18(s10) #end load_store_instr_stream_1
                  sh           a0, 131(ra)
                  lb           t2, 13(ra) #end load_store_instr_stream_0
                  sltiu        a0, t0, -1007
                  and          t6, t1, t3
                  slt          s4, t0, a4
                  andi         s9, t6, 1544
                  lui          a0, 74195
                  bltu         t1, a7, 120f
110:              slt          sp, s3, t6
                  bne          s10, gp, 126f
                  slli         t1, a6, 30
                  auipc        zero, 518588
                  xor          gp, a3, s4
                  sltiu        a5, s4, -1177
                  auipc        s1, 851527
                  srai         t6, tp, 23
                  lui          a6, 753990
                  nop
120:              lui          s6, 81442
                  and          s10, t2, s9
                  slt          t0, t0, sp
                  srl          s11, s4, gp
                  slt          t2, a7, a1
                  xor          t1, s9, a2
126:              blt          a0, s4, 127f
127:              sltiu        a3, tp, 503
                  or           a0, s2, a2
                  srl          a0, t4, a3
                  lui          t0, 381419
                  sll          a5, t1, s7
                  srl          t5, t5, s4
                  sltiu        t1, t0, -852
                  xori         tp, ra, 1301
                  add          a5, t3, a1
                  bge          t3, s1, 151f
                  srl          sp, t0, a5
                  srai         s3, s9, 25
                  beq          t2, s11, 152f
                  andi         s1, s10, 720
                  beq          t2, s1, 155f
                  sltu         t1, s5, s7
                  and          s9, ra, zero
                  beq          sp, zero, 152f
                  blt          s6, gp, 148f
                  beq          s2, a5, 150f
                  sltiu        s8, sp, -2011
148:              sltu         s9, t0, gp
                  blt          t4, s4, 162f
150:              bltu         t4, a2, 152f
151:              auipc        gp, 138062
152:              bne          s8, a5, 159f
                  or           t2, a0, gp
                  bne          a0, s3, 158f
155:              beq          s3, tp, 161f
                  slli         a2, s3, 14
                  lui          a7, 680799
158:              addi         a5, a3, 278
159:              ori          t6, a1, 63
                  bltu         ra, s5, 162f
161:              xori         t1, s7, 1691
162:              xori         s10, t6, 1707
                  lw           s4, 4(t4)
                  xori         s11, s4, 188
                  ori          t3, t1, -900
                  auipc        t1, 602684
                  andi         t6, gp, 971
                  srli         zero, s2, 10
                  srli         a7, s9, 23
                  addi         t4, t4, 28
                  slti         t5, s11, -1613
292:              addi x11, x20, 0
292:              jalr x11, x11, 0
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_2:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_3:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_4:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_5:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_6:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_7:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_8:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_9:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_10:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_11:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_12:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_13:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_14:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_15:
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
                  add x8, x29, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

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
                  add x8, x29, zero
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x25, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x25, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x25, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x25, x11, ecall_handler
                  li x11, 0x1
                  beq x25, x11, instr_fault_handler
                  li x11, 0x5
                  beq x25, x11, load_fault_handler
                  li x11, 0x7
                  beq x25, x11, store_fault_handler
                  li x11, 0xc
                  beq x25, x11, pt_fault_handler
                  li x11, 0xd
                  beq x25, x11, pt_fault_handler
                  li x11, 0xf
                  beq x25, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x29, x8, zero
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
                  add x29, x8, zero
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
                  add x29, x8, zero
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
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x29, x8, zero
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
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x29, x8, zero
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
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x29, x8, zero
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
