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
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 1
                  csrw 0x305, x18 # MTVEC

mepc_setup:       
                  la x18, init
                  csrw 0x341, x18

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x18, 0x1800
                  csrw 0x300, x18 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xf860685c
                  li x2, 0xf2e012ec
                  li x3, 0x3
                  li x4, 0xa
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0xe
                  li x9, 0x0
                  li x10, 0xfe1789c6
                  li x11, 0xf5553445
                  li x12, 0x0
                  li x13, 0xf7a0f636
                  li x14, 0x80000000
                  li x15, 0x5edff44b
                  li x16, 0xd64e1598
                  li x17, 0x26d21a42
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0xf8df015f
                  li x21, 0xf36e0025
                  li x22, 0x1
                  li x23, 0xf10eef3f
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0xa
                  li x27, 0x0
                  li x29, 0xe0d3e436
                  li x30, 0xf05ca91d
                  li x31, 0x5
                  la x28, user_stack_end
main:             la           t1, region_0+741 #start riscv_load_store_rand_instr_stream_0
                  sw           a7, -57(t1)
                  sltiu        t6, t0, -734
                  sltiu        s2, s2, 1071
                  lb           s9, -48(t1)
                  sltiu        ra, a6, 959
                  add          s8, s1, t4
                  sb           a2, -26(t1)
                  lw           sp, 19(t1)
                  lhu          t5, -1(t1)
                  sb           a4, 38(t1)
                  lb           zero, 63(t1)
                  sb           a6, 34(t1)
                  sb           s0, 23(t1)
                  lbu          a4, 30(t1)
                  slli         a0, t5, 17
                  or           s1, t2, ra
                  sb           t1, -52(t1)
                  sltu         s2, s9, a7
                  lb           tp, 40(t1)
                  lw           tp, -49(t1)
                  lbu          s10, -34(t1)
                  lui          a4, 441430
                  lb           t6, -50(t1)
                  lbu          s0, -60(t1)
                  xor          a5, t6, a0
                  lb           s9, 61(t1)
                  lb           s1, 6(t1)
                  lb           a0, -14(t1)
                  sra          s2, s11, t6
                  slti         s4, s3, -421
                  lhu          s6, 55(t1) #end riscv_load_store_rand_instr_stream_0
                  la           a6, region_0+808 #start riscv_load_store_hazard_instr_stream_0
                  sb           s4, -20(a6)
                  sb           s2, -11(a6)
                  or           t5, s6, t2
                  srai         s5, t4, 6
                  sb           s0, -11(a6)
                  lbu          s11, -11(a6)
                  lb           s5, -11(a6)
                  lb           s10, -11(a6)
                  lbu          a0, -11(a6)
                  lb           ra, -11(a6)
                  lb           a1, -11(a6)
                  lb           ra, -11(a6)
                  sb           t0, -11(a6)
                  sb           a4, -11(a6)
                  lbu          s0, 17(a6)
                  lh           a2, -28(a6)
                  lh           s3, -28(a6)
                  sb           s3, 37(a6)
                  lbu          ra, 37(a6)
                  sb           a6, 37(a6)
                  lb           s7, 37(a6) #end riscv_load_store_hazard_instr_stream_0
                  la           s5, region_1+91 #start load_store_instr_stream_1
                  la           a2, region_1+995 #start load_store_instr_stream_2
                  lh           s9, -37(a2)
                  la           s10, region_1+462 #start load_store_instr_stream_0
                  sh           s0, 47(s5)
                  lbu          zero, 44(a2)
                  lh           s11, 606(s10)
                  lb           gp, -4(s5)
                  sb           ra, -245(s10)
                  sb           s6, 1411(s10)
                  lbu          a1, -38(s5)
                  lbu          a0, 14(a2)
                  lb           s6, 156(s10)
                  lb           s3, -7(a2)
                  sb           s6, -171(s10)
                  lbu          gp, -23(s5)
                  lw           tp, 57(s5)
                  lb           tp, -44(a2)
                  sb           s4, 3(a2) #end load_store_instr_stream_2
                  sh           a5, 23(s5) #end load_store_instr_stream_1
                  sw           s5, 966(s10) #end load_store_instr_stream_0
                  la           sp, region_0+163 #start riscv_load_store_hazard_instr_stream_1
                  sb           a2, -117(sp)
                  lhu          a4, -151(sp)
                  lbu          s6, -151(sp)
                  lw           a7, -151(sp)
                  srl          ra, a5, s10
                  sh           zero, 77(sp)
                  sb           t5, 220(sp)
                  srai         gp, sp, 20
                  lbu          t6, -153(sp)
                  lbu          a7, 198(sp)
                  lb           s9, 198(sp)
                  sltiu        zero, s2, 1908
                  lb           s2, 198(sp)
                  lb           a7, 181(sp)
                  lb           t2, 46(sp)
                  sb           t6, 46(sp)
                  sub          s4, a5, a5
                  lbu          a7, 46(sp)
                  lbu          t6, 46(sp)
                  lh           a3, 243(sp)
                  lui          t1, 589499
                  slli         s10, t6, 2
                  nop
                  lh           s9, 243(sp)
                  sb           s4, 243(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           t5, region_0+1258 #start load_store_instr_stream_1
                  la           t6, region_0+1373 #start load_store_instr_stream_0
                  la           a6, region_0+1357 #start load_store_instr_stream_2
                  lb           a7, -5(t5)
                  lb           s7, 10(a6)
                  sb           gp, 8(a6)
                  sw           a3, -577(t6)
                  la           a3, region_0+147 #start load_store_instr_stream_3
                  lbu          s6, 54(a3)
                  sb           s7, -216(t6)
                  lb           a1, -13(a6)
                  lb           t1, -5(a3)
                  lhu          s10, -31(a3)
                  lh           zero, -399(t6)
                  lh           t2, 27(a3)
                  lbu          a1, 11(t5)
                  lbu          a0, 53(t6)
                  lw           s3, -1(a6)
                  lbu          t2, -26(a3)
                  sb           t3, 64(a3)
                  lbu          s8, -13(t6)
                  lb           s11, -38(a3)
                  sh           t5, -1191(t6)
                  lb           s7, -6(t5)
                  sb           ra, -11(a6)
                  sb           a6, -342(t6)
                  lbu          t2, 0(t5)
                  sb           t5, 1(a6)
                  sb           a3, 46(a3)
                  sb           a2, -1259(t6)
                  lbu          s5, -3(t5)
                  sw           s2, -35(a3)
                  sb           t4, -7(a6)
                  lb           s4, -20(a3) #end load_store_instr_stream_3
                  sb           s1, -11(t5) #end load_store_instr_stream_1
                  lh           ra, -1(a6) #end load_store_instr_stream_2
                  sb           zero, -1060(t6) #end load_store_instr_stream_0
                  la           gp, region_1+766 #start riscv_load_store_rand_instr_stream_1
                  lh           s7, -178(gp)
                  lb           s5, -145(gp)
                  lb           s11, 189(gp)
                  lbu          a2, -111(gp)
                  srai         s4, s0, 11
                  sb           a0, 68(gp)
                  sb           t1, -3(gp)
                  lb           s1, -11(gp)
                  and          ra, ra, s2
                  sltiu        a7, s10, 268
                  srl          s11, s7, ra
                  xor          a3, gp, s6
                  sb           s4, -219(gp)
                  lbu          s3, 229(gp)
                  lb           s1, -189(gp)
                  sll          s3, t5, s0
                  sltiu        s2, t4, 870
                  sh           t6, 142(gp)
                  sb           a6, -181(gp)
                  lh           s5, 254(gp)
                  lbu          sp, -35(gp)
                  lbu          a3, -41(gp)
                  lb           a2, -65(gp)
                  sll          s5, t2, gp
                  sb           s2, -97(gp)
                  lbu          s11, -192(gp)
                  sltu         a6, s6, a0
                  lb           t5, -13(gp)
                  sb           ra, -26(gp)
                  lb           s3, 141(gp)
                  addi         a2, s11, 1612
                  srli         t1, a2, 25
                  lui          s9, 461066
                  slt          a3, s11, s0
                  xor          ra, a2, a3
                  lbu          s10, -87(gp)
                  nop
                  ori          a1, t0, 1833
                  andi         a4, zero, -1862
                  sltu         t2, a3, s1
                  lhu          s1, -248(gp)
                  lbu          a3, 175(gp)
                  lh           s7, 138(gp)
                  lbu          a5, 201(gp)
                  sub          s10, a5, t1
                  addi         s6, a6, 684
                  lbu          s6, 28(gp)
                  sb           s1, 203(gp)
                  lbu          sp, 99(gp) #end riscv_load_store_rand_instr_stream_1
                  add          a6, t0, s7
                  bne          t0, s8, 11f
                  bgeu         ra, s1, 22f
                  and          a6, s6, sp
                  slli         s2, a0, 22
                  andi         a4, ra, -1651
                  bgeu         s7, s0, 13f
                  and          a1, s7, t6
                  sub          a3, sp, tp
                  srl          s3, s5, t5
                  add          a7, t2, s10
11:               sltiu        s8, t6, -1575
                  ori          s1, t0, -844
13:               xori         s4, t5, 1914
                  andi         a2, a7, 1766
                  beq          a5, s2, 29f
                  lui          s4, 636664
                  srli         a5, a0, 4
                  addi         a6, a3, 2045
                  bne          s8, a7, 26f
                  add          tp, zero, s9
                  andi         s1, s7, 367
22:               bltu         s10, s1, 25f
                  slt          a5, a0, s1
                  andi         t1, a5, -828
25:               srli         s6, t1, 29
26:               srl          s7, gp, s4
                  or           s1, t4, s8
                  bltu         a6, s10, 40f
29:               sltu         s9, ra, s6
                  xori         a2, a0, 1037
                  ori          a4, s2, 1350
                  blt          zero, s2, 47f
                  slt          s11, s2, s5
                  xori         s9, s3, 1205
                  slt          a6, t1, t0
                  slli         s10, s1, 10
                  sra          s3, s8, t3
                  blt          t5, t4, 44f
                  srli         t6, gp, 22
40:               bge          s5, t3, 53f
                  slli         a6, a3, 8
                  sub          s2, s10, t3
                  bgeu         s8, s11, 44f
44:               lui          s7, 447464
                  slli         tp, s1, 8
                  nop
47:               srli         s5, sp, 14
                  beq          a3, s9, 68f
                  bne          s7, a0, 65f
                  srl          a6, t5, tp
                  beq          t6, ra, 60f
                  add          t6, t0, t6
53:               nop
                  ori          s6, s7, -1209
                  srai         s7, sp, 19
                  add          a6, s3, a0
                  or           t6, s0, tp
                  addi         ra, sp, -1125
                  bne          t6, a4, 63f
60:               auipc        a0, 1029856
                  bge          t6, t3, 78f
                  bltu         s3, a5, 79f
63:               sltu         a7, gp, s8
                  or           a2, s3, s10
65:               bge          zero, s1, 72f
                  slli         s11, s1, 29
                  xor          t1, t1, a3
68:               add          s7, s4, s1
                  lui          s1, 62700
                  sll          a6, a3, s9
                  and          a3, t3, s3
72:               sll          t6, ra, t6
                  blt          t4, s5, 80f
                  srli         s4, a5, 18
                  bge          s5, t1, 93f
                  bltu         s10, s1, 96f
                  srai         a4, s2, 19
78:               slli         t5, s1, 24
79:               bltu         t5, s11, 83f
80:               ori          t1, s10, -1375
                  auipc        s6, 888364
                  and          t2, tp, ra
83:               slt          s2, a6, a6
                  slti         s0, t5, 1107
                  sltiu        a5, ra, -955
                  slt          t1, tp, s2
                  srl          t5, s11, a4
                  bltu         s1, sp, 89f
89:               xor          s11, s0, s11
                  slli         t2, ra, 15
                  bne          sp, a6, 92f
92:               and          s6, t1, zero
93:               xori         a7, s3, 1427
                  auipc        a1, 711807
                  auipc        a6, 422287
96:               sub          ra, a0, s7
                  slt          a2, a1, tp
                  sltu         s9, a7, s5
                  bgeu         s7, t5, 111f
                  bgeu         a6, s4, 116f
                  sra          s10, s0, s10
                  bgeu         t6, a7, 118f
                  lui          s7, 638877
                  addi         s3, s3, -561
                  ori          s2, a0, 1121
                  slt          t1, t6, t1
                  andi         t5, t3, 1042
                  blt          t4, s7, 128f
                  bne          a3, s2, 120f
                  andi         a4, s8, -1714
111:              sll          s6, a4, a4
                  xor          s7, a1, t4
                  nop
                  and          s11, s7, s4
                  sll          gp, a7, s4
116:              auipc        t5, 64935
                  and          t6, s9, t4
118:              srl          s10, a3, a5
                  and          a2, a0, s9
120:              addi         s9, t3, -946
                  slli         t5, s3, 5
                  sub          a4, s2, a7
                  srli         s8, a5, 19
                  slli         s4, gp, 13
                  bgeu         a2, a6, 139f
                  srai         s6, t4, 19
                  sll          a3, s3, zero
128:              sll          s2, a3, a6
                  nop
                  lui          s3, 79690
                  srl          s5, ra, a4
                  addi         gp, zero, -260
                  bne          s5, s11, 140f
                  blt          t6, sp, 151f
                  blt          s10, tp, 150f
                  srli         a0, zero, 4
                  andi         t2, s3, -1779
                  beq          s5, sp, 139f
139:              bge          zero, t6, 145f
140:              addi         s1, tp, 952
                  andi         s7, s1, 121
                  xori         t1, t2, -1167
                  blt          a2, s0, 152f
                  blt          s1, t5, 158f
145:              sub          t2, a6, s4
                  xori         zero, s7, -1837
                  sll          t1, a3, s8
                  bne          tp, a7, 155f
                  bne          a3, s6, 167f
150:              bne          s11, a5, 157f
151:              ori          a4, a0, -1668
152:              addi         a7, s5, 333
                  or           s5, t1, t3
                  sltiu        s0, t2, 760
155:              lui          sp, 9223
                  lui          ra, 621656
157:              bltu         a6, t6, 177f
158:              slti         s10, a2, 1966
                  blt          s3, t3, 175f
                  srl          zero, ra, t0
                  lui          s11, 1021657
                  xor          ra, s4, s4
                  bgeu         s6, t6, 180f
                  bltu         a2, s0, 180f
                  beq          s0, ra, 169f
                  bgeu         t6, s4, 180f
167:              bge          s10, a4, 177f
                  auipc        tp, 303564
169:              add          s8, s6, t5
                  nop
                  slli         t6, s7, 2
                  xor          s9, sp, s4
                  bltu         a6, a6, 174f
174:              auipc        ra, 51280
175:              bgeu         t1, t3, 195f
                  bgeu         s8, zero, 196f
177:              sra          t2, zero, s0
                  auipc        zero, 739895
                  bltu         s9, t1, 182f
180:              bne          a7, t1, 191f
                  slli         a6, s10, 15
182:              bgeu         t3, gp, 186f
                  bge          t1, s10, 203f
                  beq          t1, sp, 185f
185:              bltu         t1, a4, 192f
186:              ori          t6, a1, -904
                  slti         gp, a7, -62
                  srai         s9, gp, 13
                  sra          a2, a1, gp
                  addi         s1, s10, 1925
191:              slt          s10, t3, s10
192:              ori          s8, a7, 1928
                  srai         a5, t3, 28
                  beq          sp, gp, 207f
195:              sra          s1, a1, s11
196:              and          s11, s11, s8
                  add          a1, a7, s2
                  slt          a7, s3, s4
                  bltu         s3, s0, 211f
                  sltiu        a2, a2, 836
                  srl          t6, t3, zero
                  sltu         s7, s7, a2
203:              srli         a4, s3, 14
                  srli         a7, s1, 0
                  addi         s5, t2, 1606
                  sltu         ra, t5, zero
207:              bge          t2, s2, 223f
                  bltu         s11, s3, 220f
                  bltu         t6, a0, 223f
                  ori          s3, a1, 1164
211:              beq          s7, s11, 212f
212:              srl          a1, s11, s0
                  sltiu        a7, s9, 553
                  bgeu         t4, s8, 228f
                  slt          a4, s8, tp
                  sll          s3, a0, s10
                  blt          a7, s11, 237f
                  sltiu        a0, s11, 1407
                  sll          t5, ra, t3
220:              sltiu        a1, a5, -705
                  sltu         s2, tp, ra
                  nop
                  la           s3, sub_1
                  addi         s3, s3, 654
                  addi         a0, s8, -1707
                  srli         s11, s0, 29
                  ori          a5, gp, 1316
                  bltu         t6, a0, main_j1 #branch to jump instr
                  sub          a0, t0, s0
                  addi         s4, sp, 531
main_j1:          jalr         ra, s3, -653 #jump main -> sub_1
                  bltu         t2, a1, 222f
222:              ori          ra, gp, -991
223:              beq          s6, sp, 234f
                  ori          s1, s11, -939
                  add          gp, a2, s3
                  srli         t2, a4, 14
                  ori          tp, tp, -911
228:              blt          sp, s5, 237f
                  xor          t2, s0, t4
                  sltu         a2, s10, a6
                  ori          s3, a6, -344
                  xor          s11, s0, a4
                  srli         s1, s7, 5
234:              ori          s8, sp, 632
                  bgeu         s10, s3, 255f
                  sltiu        tp, s1, -1993
237:              bgeu         s0, s4, 253f
                  srli         tp, sp, 7
                  andi         s2, a7, 287
                  bne          s7, gp, 246f
                  xor          ra, gp, s11
                  sltu         s10, sp, a4
                  xori         tp, t5, -320
                  bne          a7, a5, 261f
                  sll          s7, s10, a5
246:              nop
                  sltiu        a0, a4, -1444
                  sltiu        s1, a7, 162
                  auipc        s1, 790407
                  slti         t1, tp, 1789
                  nop
                  xor          s5, sp, zero
253:              slli         a4, t5, 17
                  srai         s10, s8, 31
255:              and          s9, s6, tp
                  auipc        tp, 778642
                  nop
                  or           a4, s3, t3
                  sra          s7, a7, t3
                  sll          s6, s5, t6
261:              sub          sp, t5, tp
                  bltu         s4, a0, 269f
                  auipc        gp, 721856
                  srli         t2, s8, 0
                  auipc        a3, 281004
                  srli         s2, s10, 2
                  slt          a6, sp, t0
                  beq          s3, s1, 269f
269:              and          a3, s4, t1
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            bne          t0, t2, sub_2_stack_p
sub_2_stack_p:    addi         t3, t3, -32
                  slt          a3, t1, tp
                  sw           ra, 4(t3)
                  andi         s6, s5, -1379
                  srl          t6, a0, a7
                  la           s5, region_1+451 #start riscv_load_store_rand_instr_stream_1
                  lbu          a5, 47(s5)
                  addi         a3, t4, 1196
                  sll          a4, s9, zero
                  sb           s5, 228(s5)
                  lb           a1, 129(s5)
                  srai         zero, a3, 4
                  or           s2, t6, ra
                  and          s2, gp, s2
                  lbu          t6, -60(s5)
                  sw           s8, -211(s5)
                  sll          tp, s2, sp
                  sll          a2, t5, a4
                  srli         a7, ra, 0
                  sw           s1, 229(s5)
                  lb           t1, -162(s5)
                  nop
                  sh           s5, -113(s5)
                  andi         s9, s7, -914
                  lhu          s11, 243(s5)
                  sb           a2, -126(s5)
                  add          a1, a7, s5
                  lbu          s11, -79(s5)
                  addi         a2, a3, 988
                  lhu          s6, 69(s5)
                  srai         s8, t5, 17
                  auipc        t6, 83825
                  sra          s1, s10, a3
                  srli         a1, s6, 2
                  addi         a4, s7, 267
                  slt          ra, a7, s10
                  lb           a3, -171(s5)
                  sb           s9, 148(s5)
                  lb           sp, 226(s5)
                  srai         ra, s1, 2
                  sb           t1, -176(s5)
                  slt          s0, ra, gp
                  sh           s7, -205(s5)
                  or           s1, ra, ra
                  lbu          s2, -58(s5)
                  sltu         s0, a3, t2
                  sub          t5, a1, zero
                  sb           s3, 198(s5)
                  nop
                  slt          a3, tp, s4
                  sb           s8, 12(s5)
                  sra          a5, s3, ra
                  or           s8, a3, t6
                  lbu          a0, 94(s5)
                  xor          s11, zero, a3
                  addi         tp, t1, -844
                  sb           a2, -30(s5) #end riscv_load_store_rand_instr_stream_1
                  la           s2, region_0+1255 #start load_store_instr_stream_4
                  la           s4, region_0+1017 #start load_store_instr_stream_2
                  la           sp, region_0+345 #start load_store_instr_stream_1
                  lbu          gp, 202(s4)
                  sb           gp, 2(s2)
                  la           s11, region_0+539 #start load_store_instr_stream_3
                  lh           a3, 45(s11)
                  lb           a0, -64(s4)
                  lbu          tp, -160(s11)
                  la           s7, region_0+112 #start load_store_instr_stream_0
                  lb           ra, -74(s11)
                  lb           a4, -10(sp)
                  sb           sp, -10(sp)
                  sh           s3, -78(s7)
                  sh           t1, -11(sp)
                  lhu          a6, -81(s11)
                  lb           s0, -4(sp)
                  sb           a0, -219(s4)
                  lbu          s3, -16(s2)
                  lbu          a6, -107(s7)
                  lh           s9, 5(sp)
                  sw           ra, 56(s7)
                  lh           s3, 149(s4)
                  lbu          tp, -13(s2)
                  lb           a0, 252(s4)
                  lhu          a2, -81(s4)
                  lb           s9, -160(s11)
                  sb           s9, 169(s7)
                  lb           ra, -125(s11)
                  lhu          t1, -255(s4)
                  lbu          s8, 12(s2)
                  lb           zero, 14(sp)
                  lbu          a5, 85(s11)
                  lb           a0, -16(s2)
                  sb           s10, 16(s2)
                  lbu          s0, 63(s7)
                  lhu          a4, -15(s2)
                  sh           t1, -33(s4)
                  lb           a7, -8(s2)
                  lb           s0, 115(s7)
                  lhu          t6, 7(sp)
                  lhu          a2, 5(sp)
                  lh           zero, -1(s2) #end load_store_instr_stream_4
                  sb           s3, 169(s4)
                  lhu          t2, -9(sp) #end load_store_instr_stream_1
                  lb           tp, 144(s4) #end load_store_instr_stream_2
                  lb           t5, 160(s11)
                  lh           s9, 227(s11) #end load_store_instr_stream_3
                  lb           t6, 88(s7) #end load_store_instr_stream_0
                  la           sp, region_0+1912 #start riscv_load_store_hazard_instr_stream_2
                  sll          s8, a2, s2
                  lb           s2, -1210(sp)
                  xori         s2, s3, -175
                  sw           a4, -1572(sp)
                  srai         a7, t3, 8
                  slti         tp, a4, 453
                  lhu          a0, -1572(sp)
                  lb           a1, -1023(sp)
                  sb           a6, -1023(sp)
                  lbu          a0, -1023(sp)
                  sll          a5, s5, s8
                  lbu          s5, -1023(sp)
                  lb           s4, -1023(sp)
                  sb           s9, -1023(sp)
                  lb           s10, -1023(sp)
                  slti         a5, t4, 997
                  lb           s8, -1023(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           s9, region_0+1476 #start load_store_instr_stream_1
                  la           s2, region_0+764 #start load_store_instr_stream_2
                  la           a2, region_0+1467 #start load_store_instr_stream_3
                  lbu          t2, -41(s9)
                  la           t6, region_0+555 #start load_store_instr_stream_0
                  lhu          s4, -256(s2)
                  lb           s4, -19(s9)
                  lbu          a4, 41(s2)
                  lb           t1, 130(a2)
                  lbu          t2, 57(a2)
                  sb           a4, 1237(t6)
                  sb           s5, 81(s2)
                  sh           s1, -31(t6)
                  lb           gp, 195(s2)
                  lb           s8, -23(s9)
                  lb           gp, -225(s2)
                  sb           sp, -335(a2)
                  sb           s10, 227(s2)
                  sb           tp, 27(s9)
                  lb           zero, -806(a2)
                  sb           a3, -347(t6)
                  sh           gp, 38(s9)
                  lhu          a3, -28(s9)
                  lbu          s7, 11(s2)
                  sb           ra, -308(a2)
                  lhu          s3, -60(s9) #end load_store_instr_stream_1
                  lb           a4, 251(s2)
                  lb           a5, 1412(t6)
                  lh           s0, 208(s2)
                  sh           t2, -851(a2) #end load_store_instr_stream_3
                  lh           a3, -124(s2) #end load_store_instr_stream_2
                  lbu          s4, -384(t6) #end load_store_instr_stream_0
                  la           sp, region_1+1281 #start riscv_load_store_rand_instr_stream_0
                  slt          gp, s5, s7
                  lbu          s7, 12(sp)
                  lb           s0, -6(sp)
                  sw           t6, 7(sp)
                  auipc        zero, 278350
                  andi         ra, s10, -162
                  lbu          a2, 0(sp)
                  slti         a5, s7, -1550
                  lbu          s0, -8(sp)
                  sb           s3, 4(sp)
                  lb           s11, -10(sp)
                  srli         a7, a6, 25
                  sb           a6, 2(sp)
                  add          ra, s3, a4
                  sb           s1, 7(sp)
                  slt          s8, s1, s3
                  slti         gp, s5, -1655
                  srli         a6, a7, 30
                  lb           a2, -16(sp)
                  sb           s10, -10(sp)
                  lbu          s8, -14(sp)
                  lbu          t2, -10(sp)
                  sll          a7, s3, t3
                  xori         a1, a3, -1459
                  lb           a5, -1(sp)
                  and          a2, tp, s7
                  lbu          a7, -14(sp)
                  sb           s7, -2(sp)
                  slli         a2, s9, 19
                  lb           s8, 15(sp)
                  lui          s4, 447894
                  lb           s2, 8(sp)
                  sh           a3, 15(sp)
                  lbu          s10, -4(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_1+414 #start riscv_load_store_hazard_instr_stream_3
                  lhu          t1, 116(s9)
                  lhu          s11, 40(s9)
                  lh           a3, 40(s9)
                  lbu          s1, 40(s9)
                  lb           a2, 40(s9)
                  lh           s10, 40(s9)
                  xori         ra, s0, -1215
                  sb           s2, 40(s9)
                  sb           s11, 40(s9)
                  sh           s2, 40(s9)
                  sb           s10, 40(s9)
                  sh           a0, 40(s9)
                  lh           s6, 40(s9)
                  sb           s5, -101(s9)
                  lbu          t6, -101(s9) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_1+939 #start riscv_load_store_rand_instr_stream_2
                  lbu          a7, 93(sp)
                  sltiu        zero, a3, -638
                  sra          s6, s0, s0
                  srai         a7, t6, 22
                  srl          s11, a5, s11
                  add          s10, a5, a2
                  lb           s3, 188(sp)
                  sll          s1, s2, a3
                  lb           s4, 55(sp)
                  lb           a1, -2(sp)
                  sh           gp, -149(sp)
                  lhu          zero, -223(sp)
                  or           s2, s4, t0
                  lhu          s5, 213(sp)
                  sltu         ra, t5, s6
                  nop
                  add          s10, t2, s1
                  srli         s5, s10, 26
                  lhu          a7, -109(sp)
                  lui          s9, 843480
                  lb           ra, 189(sp)
                  lb           s9, -98(sp)
                  lb           s2, 196(sp)
                  srl          a4, s7, t3
                  sh           a5, -239(sp)
                  slt          t1, sp, s9
                  sll          t2, a7, zero
                  lbu          a3, 35(sp)
                  slti         tp, s5, 1159
                  sw           s1, 113(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s10, region_0+1185 #start load_store_instr_stream_1
                  la           s5, region_0+817 #start load_store_instr_stream_0
                  sw           s6, 11(s5)
                  sh           t6, -807(s10)
                  lw           s7, -941(s10)
                  lh           gp, -587(s10)
                  lb           gp, 14(s5)
                  lhu          a1, -1(s5)
                  lb           s3, 616(s10)
                  lbu          a7, -136(s10)
                  lbu          s1, -474(s10)
                  sh           s11, 27(s5)
                  lbu          s8, 50(s5)
                  lb           t1, 163(s10)
                  lb           s4, 6(s5)
                  sh           gp, -31(s5)
                  lb           s2, 94(s10) #end load_store_instr_stream_1
                  lbu          a1, 22(s5)
                  sb           gp, 28(s5)
                  lbu          s9, 48(s5) #end load_store_instr_stream_0
                  la           s7, region_1+196 #start load_store_instr_stream_1
                  la           a6, region_1+110 #start load_store_instr_stream_0
                  lb           tp, 1495(s7)
                  lh           s6, 180(s7)
                  lbu          a3, -15(a6)
                  la           s8, region_1+1288 #start load_store_instr_stream_2
                  lbu          t1, 1442(s7)
                  sb           zero, 905(s7)
                  lh           a2, 538(s7)
                  sb           t5, 28(a6)
                  lb           s0, 29(s8)
                  lbu          s10, 53(a6)
                  lb           zero, -5(a6)
                  sb           t6, -87(s8)
                  lbu          a7, 1271(s7)
                  lhu          a7, 236(s8)
                  sb           t3, 3(s8)
                  lh           s10, -22(a6)
                  lb           zero, -27(a6)
                  sb           sp, 53(a6)
                  lhu          s5, 52(a6)
                  lhu          t2, 248(s8)
                  lhu          zero, 1736(s7)
                  lb           s2, -63(s8)
                  lbu          s2, 47(s8)
                  lb           gp, 155(s7) #end load_store_instr_stream_1
                  sb           sp, -158(s8) #end load_store_instr_stream_2
                  lbu          a5, 19(a6) #end load_store_instr_stream_0
                  la           t1, region_1+1661 #start riscv_load_store_rand_instr_stream_3
                  sra          gp, s9, s8
                  srl          s8, a0, s9
                  lbu          s7, -2(t1)
                  nop
                  lbu          s0, -16(t1)
                  lbu          a2, 8(t1)
                  sltiu        s2, t4, -162
                  lui          ra, 862897
                  slt          s9, s9, tp
                  andi         t6, s4, -1798
                  lbu          s2, -1(t1)
                  sltu         t2, a1, s10
                  lb           a5, 2(t1)
                  xori         s5, s1, 1559
                  lw           ra, -13(t1)
                  sltiu        ra, s8, -1802
                  and          t2, t0, s4
                  lb           a6, 4(t1)
                  sb           a7, -9(t1)
                  lh           s11, 1(t1)
                  lb           s2, -11(t1)
                  lb           sp, 8(t1)
                  sra          a4, a3, sp
                  lb           s2, 11(t1)
                  lb           a5, 12(t1)
                  lhu          s4, -13(t1)
                  sb           t0, -7(t1)
                  sh           s8, 3(t1)
                  sb           t6, 8(t1)
                  lw           a5, 15(t1)
                  lb           s5, 1(t1)
                  sra          ra, s6, tp
                  lbu          a1, 16(t1)
                  and          ra, a1, s5
                  lbu          a7, 0(t1)
                  slti         t5, a4, -1224
                  sra          a0, s5, a5
                  lbu          a7, -10(t1)
                  sw           a6, -1(t1)
                  nop
                  and          a3, s11, t3
                  ori          a5, s9, -1644
                  lbu          s1, -12(t1)
                  slti         s11, s7, -693
                  sltiu        a4, ra, -1473
                  or           s1, a7, s7
                  lbu          s1, -14(t1)
                  sltiu        s2, s9, -514
                  lb           tp, -3(t1)
                  sh           tp, 7(t1)
                  slt          s2, a5, t2
                  lb           a6, 15(t1) #end riscv_load_store_rand_instr_stream_3
                  la           t2, region_1+617 #start riscv_load_store_hazard_instr_stream_0
                  lb           a0, 269(t2)
                  sub          a5, a4, a0
                  lh           s1, 269(t2)
                  addi         s7, sp, 1860
                  lhu          s8, 269(t2)
                  lb           a2, -454(t2)
                  lh           tp, 1343(t2)
                  lbu          t5, 922(t2)
                  sb           zero, 803(t2)
                  lb           zero, 803(t2)
                  sw           ra, 847(t2)
                  lb           s7, 847(t2)
                  andi         s8, t5, -542
                  lh           a5, 847(t2)
                  sra          a7, s0, s7
                  slti         s5, t3, 507
                  lbu          a5, 847(t2)
                  lbu          t1, 738(t2)
                  lbu          a1, -298(t2)
                  xor          t1, a2, a5
                  sb           t4, -298(t2)
                  sb           ra, -298(t2)
                  sb           s8, -463(t2) #end riscv_load_store_hazard_instr_stream_0
                  andi         t6, a0, -2022
                  sub          a7, a1, s4
                  addi         zero, tp, -1586
                  slti         tp, gp, 1751
                  and          a3, a3, t0
                  auipc        t5, 985052
                  and          s9, gp, a2
                  and          s5, s4, s10
                  sltiu        s0, t6, 389
                  slti         a5, t2, 2025
                  nop
                  xori         a7, a5, -604
                  bne          s11, a5, 26f
                  bgeu         a5, s4, 17f
                  ori          s10, s0, -1140
                  or           a3, a7, a2
                  beq          zero, s5, 35f
17:               bne          t5, zero, 30f
                  slti         a5, t4, 1424
                  auipc        s0, 540970
                  nop
                  sltu         sp, ra, s11
                  blt          a2, t6, 33f
                  sll          a3, zero, t4
                  xor          s11, s3, s3
                  ori          s10, a5, 1221
26:               xori         t2, t0, 1652
                  add          s5, t4, s0
                  nop
                  slli         a4, ra, 17
30:               sub          s3, s6, s0
                  sll          a6, s10, s7
                  bltu         s8, s6, 41f
33:               sltiu        t1, gp, 1404
                  beq          a1, t5, 52f
35:               andi         t2, zero, -1565
                  srli         a2, t6, 6
                  lui          s6, 330596
                  auipc        a4, 447636
                  slli         a3, a2, 27
                  auipc        s0, 943714
41:               bltu         s3, a5, 43f
                  add          ra, t0, s5
43:               auipc        t2, 652620
                  bne          s1, a6, 64f
                  xori         s11, zero, -129
                  xor          s1, a2, ra
                  beq          a1, a6, 64f
                  and          a6, a3, sp
                  sltu         t5, t2, a2
                  bne          s6, tp, 58f
                  xor          s11, ra, a2
52:               lui          tp, 254476
                  slti         s0, t0, -315
                  bne          t0, a1, 60f
                  sub          t1, s11, t1
                  srai         t2, a2, 29
                  auipc        s6, 951461
58:               bgeu         t4, s2, 60f
                  bgeu         a1, t5, 64f
60:               bge          tp, a7, 70f
                  ori          sp, t0, -1454
                  nop
                  beq          t5, t1, 82f
64:               andi         t5, a1, 916
                  srai         sp, s7, 25
                  and          s0, s11, a2
                  bltu         t4, t6, 86f
                  lui          ra, 577700
                  slti         s9, s4, -262
70:               or           s1, s10, s10
                  addi         t5, t3, -581
                  and          s3, a3, s11
                  lui          a0, 977637
                  slli         s8, s8, 13
                  xor          tp, s0, s0
                  slti         ra, a4, 91
                  sub          t5, s7, gp
                  xori         s7, a7, -1596
                  and          t6, a1, s5
                  slli         a1, ra, 22
                  auipc        s9, 832791
82:               beq          t1, a2, 86f
                  slt          a5, a6, s11
                  addi         a2, a1, 46
                  bge          t1, a0, 88f
86:               beq          a2, s5, 99f
                  lui          s8, 201770
88:               andi         s6, t1, -386
                  srli         s7, sp, 31
                  sub          a5, tp, a6
                  bgeu         a1, s11, 111f
                  blt          gp, sp, 100f
                  sltu         s3, s11, a2
                  lui          s1, 276616
                  xor          a3, s5, s1
                  and          a7, s6, a2
                  sra          s8, sp, a0
                  bgeu         zero, sp, 103f
99:               srai         a4, a2, 7
100:              addi         s8, s1, 546
                  slti         a1, zero, 1492
                  bgeu         s9, gp, 119f
103:              auipc        s0, 224101
                  sll          s1, a1, a4
                  srai         zero, t6, 13
                  bge          s9, s5, 110f
                  srl          a7, t3, a5
                  slti         s0, t6, 102
                  auipc        t6, 859188
110:              srli         tp, a3, 1
111:              slti         a7, a4, 1369
                  srl          s8, t5, s3
                  add          s3, zero, a0
                  sll          s6, s8, t3
                  add          ra, s5, s3
                  slli         s8, s4, 19
                  ori          tp, s4, 2039
                  sll          t2, a3, s3
119:              bltu         s1, a7, 134f
                  slli         a0, s6, 29
                  and          ra, s2, s10
                  beq          t6, a4, 130f
                  sra          a7, s8, tp
                  sra          s2, tp, ra
                  sub          a6, a1, s1
                  auipc        a4, 789222
                  nop
                  andi         s7, s10, 787
                  xori         t6, s2, -952
130:              slt          a0, a6, a2
                  blt          tp, s9, 137f
                  slti         s8, s9, 1792
                  slli         gp, s7, 30
134:              andi         a3, sp, 11
                  srl          a3, zero, tp
                  sltu         t5, a7, gp
137:              sltu         sp, s0, s8
                  sra          gp, t3, t2
                  srl          a4, s6, s1
                  xor          a1, s4, s6
                  slli         a7, t6, 30
                  sub          s1, s0, s8
                  slti         s6, t1, -2023
                  xor          sp, t0, a1
                  ori          tp, s8, -124
                  or           s1, s0, t5
                  sltu         s8, s3, a0
                  addi         s4, sp, -45
                  auipc        sp, 973359
                  srai         zero, a5, 20
                  sll          a6, t3, gp
                  blt          s0, zero, 163f
                  and          s2, s0, s9
                  addi         a7, t1, -1317
                  bge          s0, s4, 168f
                  bltu         a2, ra, 167f
                  slti         zero, s10, 1164
                  sltiu        gp, s6, 1233
                  sll          s10, s9, zero
                  sltu         s2, s1, a0
                  bgeu         s8, a6, 178f
                  addi         s9, s4, -1828
163:              sltu         t5, s6, s3
                  srli         s6, t3, 22
                  xori         s8, s10, 1246
                  auipc        a7, 914368
167:              beq          s6, a7, 186f
168:              nop
                  and          s7, t3, zero
                  sll          gp, s11, t2
                  sltiu        s6, a4, -1702
                  and          a6, s4, a1
                  auipc        t1, 306710
                  ori          t6, t2, -1652
                  bne          a3, s8, 179f
                  slt          t2, s10, a4
                  addi         a1, a1, -1855
178:              bgeu         sp, a5, 197f
179:              and          a2, a7, s4
                  srai         gp, a0, 0
                  xori         s6, a0, 1058
                  addi         a5, ra, 1497
                  auipc        t6, 1014675
                  blt          s9, s4, 199f
                  auipc        sp, 216720
186:              bltu         t5, s3, 199f
                  and          s9, ra, sp
                  nop
                  srai         t2, s11, 13
                  sll          a7, sp, a5
                  nop
                  sll          a1, t3, a5
                  ori          s0, a1, 1539
                  xor          s10, t0, t4
                  slt          s6, t6, s8
                  ori          a3, t6, 574
197:              sll          s1, a1, s11
                  slt          s2, a6, s8
199:              srl          a0, s0, t6
                  or           s2, s6, t2
                  beq          tp, gp, 210f
                  xori         s4, s11, 1524
                  or           a7, t6, t1
                  bltu         a5, t1, 214f
                  xor          a5, s2, t2
                  slti         t6, a0, 162
                  srai         ra, s3, 15
                  slti         s8, s6, 431
                  andi         sp, s10, 1546
210:              srl          a1, s7, t2
                  auipc        a1, 946014
                  ori          s4, t2, -1536
                  andi         zero, a7, 1976
214:              blt          a4, t6, 217f
                  and          a4, a1, a4
                  xor          tp, a7, a6
217:              ori          s3, gp, 1215
                  auipc        s5, 281715
                  xor          a1, t6, t1
                  add          t6, s3, s5
                  add          gp, a5, s7
                  andi         s8, a2, -497
                  srli         s1, a6, 15
                  xor          a0, a4, s8
                  beq          a5, s4, 245f
                  slti         a3, a1, 818
                  lui          s11, 181347
                  srli         s9, a3, 26
                  slti         gp, t1, -46
                  lui          s11, 659115
                  blt          gp, s4, 236f
                  sltu         s3, t3, sp
                  or           sp, s11, t0
                  sub          s9, a1, t0
                  andi         tp, t3, -1109
236:              beq          s6, s9, 244f
                  srli         s8, s10, 1
                  xori         s10, tp, -1250
                  slli         a4, s4, 8
                  srl          s10, t0, s0
                  slt          a5, s10, s1
                  bne          s6, s7, 256f
                  add          t1, t3, sp
244:              slli         a2, a5, 28
245:              slti         ra, s11, 1226
                  add          a3, zero, a5
                  sll          a4, a6, s8
                  andi         t6, zero, 326
                  xori         s0, s10, 682
                  xori         a3, t2, 1245
                  blt          s3, s3, 255f
                  xori         a1, s0, 1061
                  auipc        a7, 442495
                  xori         s0, a1, -1836
255:              xori         a7, s9, 498
256:              xor          gp, tp, t4
                  sub          gp, a7, t5
                  blt          t3, t5, 264f
                  auipc        s4, 599107
                  nop
                  bge          t3, s9, 281f
                  sll          t1, t1, s9
                  auipc        ra, 928767
264:              slti         t2, t2, 2042
                  and          a6, s7, t5
                  or           zero, t0, t4
                  add          t5, a5, s8
                  sltiu        s11, s10, 1443
                  xor          s11, a2, a5
                  bgeu         gp, gp, 283f
                  beq          t3, a1, 275f
                  xor          s7, t6, a3
                  bne          s5, s2, 291f
                  sll          sp, t1, s1
275:              ori          t6, a2, -876
                  sltiu        a6, s2, 1908
                  beq          a1, a3, 294f
                  auipc        tp, 669640
                  sra          t6, s11, s5
                  blt          sp, t0, 285f
281:              lui          sp, 371215
                  srl          s2, a4, gp
283:              andi         a5, s6, -833
                  blt          a5, s2, 292f
285:              addi         zero, t1, 1174
                  bltu         ra, tp, 297f
                  srai         s2, s11, 26
                  sub          a5, s11, s3
                  sltu         a3, t5, ra
                  slt          ra, a7, a4
291:              nop
292:              srli         s1, t3, 8
                  srl          a1, zero, s3
294:              srai         s3, a3, 27
                  blt          tp, tp, 314f
                  blt          zero, a7, 302f
297:              and          a2, s6, tp
                  bltu         t5, sp, 300f
                  bgeu         ra, a1, 301f
300:              sll          t6, s2, t4
301:              or           a3, t2, s7
302:              blt          s3, a0, 310f
                  bge          a5, s1, 316f
                  bgeu         s5, t4, 321f
                  andi         t5, t2, 878
                  slli         s2, s4, 0
                  or           s6, s1, a6
                  beq          zero, s5, 316f
                  auipc        a6, 1012276
310:              xori         s4, a5, 660
                  sra          a6, a0, s3
                  and          s4, s7, s3
                  sub          s7, a3, t2
314:              sub          a0, a6, a5
                  srl          s8, a1, a5
316:              beq          s8, tp, 321f
                  addi         a5, t3, 655
                  and          sp, s4, s9
                  sltu         zero, s5, a5
                  blt          a5, t4, 330f
321:              sra          t1, zero, s0
                  sra          s3, s7, t2
                  sltu         s8, ra, t6
                  sra          s6, s6, t1
                  slti         s5, s8, -1944
                  and          tp, a0, a1
                  blt          a6, s8, 329f
                  beq          a2, a1, 331f
329:              bge          a3, s4, 333f
330:              nop
331:              xor          a5, s6, t1
                  bne          ra, sp, 337f
333:              bltu         t0, t0, 353f
                  bgeu         a0, t6, 348f
                  addi         s3, s4, -17
                  srli         a2, s5, 30
337:              bge          a5, a3, 339f
                  sll          zero, s4, ra
339:              xori         a0, t1, 1349
                  ori          s3, t3, -382
                  srl          sp, sp, s2
                  slt          s8, t5, a5
                  nop
                  bne          ra, a0, 348f
                  bltu         a0, t2, 365f
                  addi         s6, s1, 378
                  sub          gp, a1, gp
348:              andi         gp, s11, -865
                  auipc        a6, 531925
                  srai         t1, s1, 4
                  or           a1, s6, s0
                  sltiu        s4, s3, 1572
353:              srli         a0, sp, 10
                  bltu         sp, a1, 362f
                  srai         s7, s8, 29
                  sltiu        s11, s4, 1576
                  srai         s4, a2, 28
                  slt          s7, zero, s8
                  beq          zero, t0, 370f
                  xori         s5, a1, -2032
                  bge          t1, a5, 380f
362:              add          s2, zero, s10
                  slti         a3, s4, 1897
                  add          s10, t6, s11
365:              xori         a3, s3, 1601
                  xori         s11, t6, -279
                  bge          s9, s11, 378f
                  slti         s1, a7, 278
                  sltiu        a2, s6, -1497
370:              and          s8, s5, sp
                  slli         a7, t6, 16
                  nop
                  srli         a6, t1, 17
                  or           s11, s5, a0
                  blt          s9, a3, 384f
                  sll          a4, t3, a0
                  slli         ra, a4, 15
378:              sra          gp, s1, a0
                  sub          s0, s6, s0
380:              auipc        t1, 97142
                  beq          t0, a3, 394f
                  bltu         s10, gp, 388f
                  sltiu        t5, a3, 148
384:              xor          zero, s1, s8
                  sltiu        s9, a2, -1757
                  srl          sp, s10, s0
                  bgeu         a5, t0, 393f
388:              srai         s1, s2, 15
                  bgeu         zero, t4, 402f
                  srai         a4, s0, 30
                  ori          s6, gp, 128
                  lui          s1, 988979
393:              bge          s0, t1, 412f
394:              auipc        zero, 142526
                  sub          t6, ra, a7
                  bne          s5, s11, 409f
                  add          s2, sp, a3
                  slti         s0, t5, 1107
                  beq          t2, t3, 414f
                  addi         s11, s9, -1708
                  bgeu         t1, s4, 418f
402:              sll          s5, s6, s10
                  bne          s11, s9, 411f
                  beq          s0, s9, 408f
                  srai         a1, s8, 8
                  bge          s0, t0, 424f
                  auipc        t5, 508788
408:              bgeu         sp, t5, 427f
409:              blt          a0, s7, 429f
                  addi         a2, t6, 628
411:              or           ra, s3, a1
                  la           a2, region_1+1623 #start riscv_load_store_hazard_instr_stream_1
                  sb           s0, 10(a2)
                  sb           gp, 10(a2)
                  sw           t6, 9(a2)
                  sra          t6, s11, s7
                  lb           tp, 44(a2)
                  lb           zero, 44(a2)
                  lb           gp, 44(a2)
                  sb           a1, 44(a2)
                  lb           t5, -64(a2)
                  lbu          s6, 22(a2)
                  sh           s2, 47(a2)
                  lhu          s3, 47(a2)
                  lh           s8, 47(a2)
                  lbu          s3, 64(a2)
                  sb           s10, -57(a2)
                  lb           a1, -57(a2)
                  lbu          s7, -54(a2)
                  sb           a6, -33(a2)
                  lb           s7, -62(a2)
                  lbu          s8, 18(a2)
                  lb           sp, -19(a2) #end riscv_load_store_hazard_instr_stream_1
412:              lui          a1, 119750
                  sltiu        gp, zero, -1208
414:              sltu         s2, sp, t4
                  sltu         a0, t1, t2
                  nop
                  sll          s8, s7, sp
418:              auipc        t5, 968033
                  xori         s4, s3, 1693
                  ori          t6, a0, -1656
                  srai         t5, t2, 26
                  bgeu         t5, t1, 439f
                  ori          s9, a6, 1041
424:              sltiu        t6, t1, 1811
                  sltiu        s10, s11, -762
                  bltu         s10, a0, 443f
427:              auipc        s8, 941127
                  addi         s5, sp, -1754
429:              sltu         a4, a3, a4
                  sra          a1, a3, t6
                  auipc        a2, 851269
                  lui          s0, 130094
                  add          a0, a4, a3
                  bgeu         gp, t2, 453f
                  srli         a1, sp, 10
                  beq          a6, s0, 444f
                  lui          s3, 345425
                  slt          s5, t5, s4
439:              slti         s8, s10, -951
                  auipc        a6, 106956
                  srai         ra, s6, 31
                  addi         a1, tp, 1491
443:              bgeu         s7, gp, 452f
444:              bge          s10, a7, 457f
                  slti         gp, s0, -192
                  ori          a0, t5, 519
                  slti         tp, t5, 1520
                  beq          a2, s3, 461f
                  auipc        tp, 797864
                  add          t1, s7, s10
                  bgeu         gp, zero, 456f
452:              srli         s2, t4, 5
453:              slti         s1, a5, 1252
                  addi         s9, s9, -979
                  nop
456:              blt          s1, a1, 464f
457:              lui          t5, 126394
                  srli         tp, zero, 16
                  sll          sp, a5, t4
                  bne          s0, s0, 473f
461:              srai         s4, s9, 10
                  srl          s0, sp, a2
                  srli         t2, a0, 8
464:              bge          a1, s9, 483f
                  andi         s8, s4, 108
                  xori         s8, a4, -15
                  nop
                  srai         sp, gp, 7
                  bltu         s4, s3, 473f
                  auipc        a4, 501699
                  sub          s7, t6, s6
                  blt          a7, s7, 483f
473:              sub          s10, s3, gp
                  beq          a1, t5, 490f
                  sub          a6, t5, gp
                  beq          a4, t2, 480f
                  srai         a0, s2, 8
                  bge          t3, a2, 480f
                  sra          a4, a1, s8
480:              auipc        s8, 831980
                  bgeu         t4, gp, 486f
                  ori          s2, s9, -1017
483:              sltu         a0, t4, gp
                  sub          a1, a3, a5
                  or           t6, a1, t4
486:              slli         s11, t3, 15
                  bgeu         s10, a1, 490f
                  blt          t0, s3, 490f
                  srli         sp, s11, 24
490:              slli         a7, t0, 0
                  lw           ra, 4(t3)
                  xori         s6, t4, 579
                  ori          s4, tp, -1350
                  add          a7, s5, s7
                  auipc        s10, 396042
                  addi         t3, t3, 32
                  nop
                  srli         a3, zero, 12
                  nop
                  auipc        t2, 18030
                  sltiu        t5, gp, -676
                  auipc        a1, 938059
889:              addi x25, x1, 1
889:              jalr x25, x25, 0
sub_1:            slli         t5, s0, 7
                  sll          s6, s1, sp
                  andi         s2, s10, -1113
                  addi         t3, t3, -48
                  sw           ra, 4(t3)
                  nop
                  add          s10, tp, s1
                  sltu         s1, s0, a3
                  slti         a6, t1, 189
                  la           t5, sub_2
                  slli         a7, tp, 27
                  addi         t5, t5, -656
                  bne          a5, s5, sub_1_j2 #branch to jump instr
                  sub          t6, s1, t4
                  sra          ra, a1, s0
                  or           s2, t5, s7
                  srli         ra, s8, 0
                  nop
                  lui          s0, 473495
sub_1_j2:         jalr         ra, t5, 657 #jump sub_1 -> sub_2
                  la           a4, region_0+1388 #start riscv_load_store_hazard_instr_stream_0
                  lb           ra, -123(a4)
                  lbu          s10, -123(a4)
                  lbu          t1, -123(a4)
                  lb           s2, -123(a4)
                  sb           s3, -123(a4)
                  addi         t6, ra, 1927
                  sb           s2, -123(a4)
                  lb           a3, -123(a4)
                  lb           s4, -123(a4)
                  sb           t0, -123(a4)
                  sb           a1, -123(a4)
                  lb           a0, -123(a4)
                  lb           sp, -123(a4)
                  sb           sp, -123(a4)
                  sltiu        s6, a0, 853
                  srl          a7, s4, s10
                  sb           a3, -123(a4)
                  lbu          sp, -119(a4)
                  srli         s10, a3, 4
                  sb           s6, -119(a4) #end riscv_load_store_hazard_instr_stream_0
                  la           a7, region_0+867 #start load_store_instr_stream_0
                  lb           s7, 836(a7)
                  la           t6, region_0+1130 #start load_store_instr_stream_2
                  la           t1, region_0+1888 #start load_store_instr_stream_4
                  la           s8, region_0+1022 #start load_store_instr_stream_3
                  la           t2, region_0+1827 #start load_store_instr_stream_1
                  lbu          s5, -218(a7)
                  lbu          s4, -382(t6)
                  sb           zero, 587(s8)
                  sh           t0, -475(t2)
                  sb           s1, -463(s8)
                  lbu          s1, -509(t6)
                  lbu          zero, -1694(t2)
                  lh           s6, -500(s8)
                  lb           s2, 420(t6)
                  lb           s4, 898(a7)
                  lbu          s9, -1593(t2)
                  lh           s7, 671(a7)
                  lh           a5, -741(t2)
                  sh           s8, -26(t1)
                  lbu          s7, -498(t6)
                  lb           tp, 50(t1)
                  lb           gp, -711(t6)
                  lbu          a5, -1778(t2)
                  sh           zero, 44(t1)
                  lb           sp, 600(a7)
                  lb           s3, -711(s8)
                  lh           zero, 58(t1)
                  sh           t5, -848(s8)
                  sb           zero, -1346(t2)
                  lbu          s10, -906(t6)
                  sb           a2, -63(t1)
                  lbu          s11, -464(a7)
                  lhu          s3, -736(t6)
                  sb           s1, 21(t1) #end load_store_instr_stream_4
                  lb           tp, 308(s8)
                  lb           sp, -554(t2) #end load_store_instr_stream_1
                  sw           a3, 426(t6) #end load_store_instr_stream_2
                  sh           tp, 504(s8)
                  sb           tp, 501(s8) #end load_store_instr_stream_3
                  sb           ra, -272(a7) #end load_store_instr_stream_0
                  la           sp, region_0+527 #start riscv_load_store_hazard_instr_stream_1
                  lb           a0, 8(sp)
                  lbu          a3, 8(sp)
                  lb           a4, 8(sp)
                  sb           s9, 8(sp)
                  lbu          s4, 8(sp)
                  lb           s10, -6(sp)
                  sub          t5, s6, a4
                  lbu          t6, -6(sp)
                  lb           a1, -6(sp)
                  sh           tp, 11(sp)
                  srl          a1, s4, s10
                  or           s9, s0, s7
                  lhu          a4, 11(sp)
                  lh           a6, 11(sp)
                  sll          s5, a6, s10
                  sb           a7, 1(sp)
                  slti         zero, s0, 1467
                  sb           s10, 1(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_1+1379 #start riscv_load_store_rand_instr_stream_0
                  lhu          t5, -3(sp)
                  slti         ra, a3, 2047
                  sll          t5, a6, s10
                  slt          ra, a7, s4
                  lbu          t1, 10(sp)
                  sltiu        a0, a0, -1358
                  slti         s2, s0, 9
                  sb           a2, 8(sp)
                  sltu         s3, s2, s10
                  lui          s2, 597195
                  sb           s11, -10(sp)
                  sw           s0, 5(sp)
                  lbu          s4, 5(sp)
                  slt          s2, a1, t5
                  sltu         s7, zero, s9
                  xor          zero, ra, s6
                  sh           a2, 15(sp)
                  nop
                  lb           s8, -3(sp)
                  slli         a3, ra, 23
                  sw           s10, -11(sp)
                  lb           a1, -9(sp)
                  lh           s2, -15(sp)
                  lbu          a4, 4(sp)
                  lb           a3, -12(sp)
                  lw           s2, -7(sp)
                  lbu          t5, -14(sp)
                  lb           gp, 8(sp)
                  lb           s11, 11(sp)
                  sra          s2, sp, s2
                  sub          a2, s7, s7
                  addi         s0, a1, 629
                  addi         s2, t3, -1850
                  sb           t6, -7(sp)
                  nop
                  lbu          s3, -9(sp)
                  srl          t2, gp, a0
                  xor          s8, t3, s2
                  sra          s9, s2, sp
                  sb           sp, -2(sp)
                  sh           sp, 1(sp)
                  slti         s6, t5, 1031
                  lbu          a3, 6(sp)
                  slli         s4, s9, 17
                  sb           t3, -14(sp)
                  lhu          s0, 5(sp)
                  lw           a2, -7(sp)
                  sll          s4, a7, t4
                  and          s9, s3, a1
                  sb           s6, 16(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s4, region_0+1071 #start load_store_instr_stream_0
                  lbu          a2, 428(s4)
                  la           s7, region_0+1725 #start load_store_instr_stream_1
                  lw           s5, 105(s4)
                  sb           zero, -667(s4)
                  lb           a4, 16(s7)
                  lbu          t6, 678(s4)
                  lb           s8, -666(s4)
                  lb           s9, 8(s7)
                  lbu          a6, 5(s7)
                  sb           s2, 344(s4)
                  lh           t5, 7(s7)
                  lbu          ra, -394(s4)
                  lb           tp, -4(s7)
                  lhu          s0, -7(s7)
                  lbu          t5, -748(s4)
                  sh           t0, 9(s7)
                  lb           s9, -8(s7) #end load_store_instr_stream_1
                  lb           t5, -538(s4) #end load_store_instr_stream_0
                  la           s3, region_0+755 #start riscv_load_store_rand_instr_stream_1
                  addi         s2, a6, 1688
                  and          a5, sp, a3
                  slt          a7, s10, s7
                  sltiu        a3, a1, -978
                  lhu          s4, 191(s3)
                  nop
                  nop
                  sb           sp, 48(s3)
                  lh           a2, 147(s3)
                  andi         s5, a2, 1626
                  lb           gp, 136(s3)
                  slli         s4, a0, 25
                  sb           t5, -170(s3)
                  sltu         s0, s4, t4
                  auipc        a0, 439463
                  lb           s5, -174(s3)
                  sb           s11, -28(s3)
                  lb           s2, 158(s3)
                  sb           a1, -248(s3)
                  lhu          s6, 19(s3)
                  srli         s5, sp, 9
                  sb           s3, 60(s3)
                  sb           t6, 36(s3)
                  andi         t5, t4, -2046
                  slt          a7, s9, a3
                  sh           ra, -89(s3)
                  sltiu        tp, a1, -595
                  and          a4, a0, s8
                  slli         s10, s1, 8
                  andi         t2, s10, -83
                  sub          t5, s1, a5
                  sb           s10, -42(s3)
                  addi         t5, s3, -371
                  andi         s11, t5, 1151
                  ori          a6, s9, 1639
                  lw           s2, -155(s3)
                  ori          s6, t3, 1322
                  lb           a1, 154(s3)
                  xor          s0, s1, t0
                  lbu          a4, -228(s3)
                  srli         s8, s7, 8
                  lb           s9, 52(s3)
                  nop
                  lh           a2, 47(s3)
                  sb           a6, 2(s3)
                  sb           ra, -5(s3)
                  lb           a1, -151(s3)
                  lb           s4, 16(s3)
                  lbu          s9, -131(s3)
                  lhu          a4, -177(s3)
                  sb           a5, 109(s3) #end riscv_load_store_rand_instr_stream_1
                  slt          tp, t4, a1
                  addi         a2, t6, -1660
                  sltu         t6, sp, t3
                  andi         s4, s4, 1622
                  sll          s9, s3, t4
                  slli         t1, s9, 31
                  lui          sp, 434121
                  and          t5, t1, a5
                  sra          s1, a5, a1
                  ori          s0, s4, 2011
                  sll          s8, t4, a0
                  or           s10, a1, s3
                  sll          a4, s11, s8
                  sub          s2, s0, s4
                  auipc        a7, 609949
                  nop
                  and          a7, s6, a2
                  sub          s1, a6, tp
                  srl          s4, a6, a6
                  lui          s11, 336613
                  sltu         t5, t1, s1
                  add          a2, ra, s11
                  or           s3, a7, s2
                  nop
                  add          s3, s0, gp
                  srli         s2, t3, 19
                  slt          a1, zero, s9
                  lui          a7, 466074
                  nop
                  bne          s8, s10, 36f
                  add          s2, zero, s6
                  slt          s7, t4, a0
                  add          s6, s1, a3
                  slt          s0, s10, s7
                  xori         a3, s9, 1662
                  bne          s6, s6, 45f
36:               xori         s8, s8, 271
                  slti         s2, a6, 1583
                  add          s7, s6, sp
                  bltu         s4, s9, 44f
                  xori         sp, gp, 1085
                  slti         t2, a2, -747
                  bgeu         s8, s6, 44f
                  srl          a5, gp, a2
44:               slt          a4, a3, a5
45:               sltiu        t6, s4, -1843
                  sll          s0, t5, t2
                  xori         a6, a1, -624
                  slt          t5, t2, s10
                  slt          s1, a2, s0
                  addi         a5, t1, -152
                  nop
                  srai         a2, t4, 27
                  bge          s0, a3, 70f
                  bgeu         s4, s7, 58f
                  slt          ra, t4, zero
                  and          s5, a2, s6
                  sltiu        t5, s5, -957
58:               beq          s8, t2, 66f
                  auipc        gp, 127579
                  addi         s9, tp, -1134
                  blt          a2, zero, 65f
                  sub          a3, s6, s9
                  slt          a0, a2, a4
                  blt          s5, a0, 81f
65:               xor          s6, a5, s1
66:               add          s7, zero, a1
                  beq          a1, a1, 87f
                  srl          tp, s0, sp
                  xor          s5, s9, s11
70:               blt          a6, a6, 75f
                  and          s11, t2, s3
                  slt          a7, s4, s10
                  and          t5, a7, t0
                  bgeu         t0, a0, 78f
75:               srli         a7, a1, 4
                  xor          sp, a0, t6
                  xori         ra, s7, 1834
78:               slt          t1, t2, a2
                  or           s11, a7, a7
                  and          a2, gp, s7
81:               srai         s2, sp, 19
                  ori          s2, gp, 570
                  bgeu         t3, t6, 101f
                  srai         t1, t0, 28
                  blt          t0, zero, 96f
                  srl          s7, s1, t6
87:               addi         a5, t4, -515
                  bgeu         a1, t6, 94f
                  nop
                  srl          s7, a0, s4
                  nop
                  sltu         t1, t0, t4
                  bne          a7, s0, 105f
94:               sltu         s3, t2, gp
                  slt          s7, a4, tp
96:               beq          t1, t4, 112f
                  slt          s5, s9, s1
                  ori          s9, gp, -626
                  add          t1, s0, s0
                  ori          s0, a6, -1683
101:              andi         s4, t1, 1570
                  beq          s0, ra, 108f
                  and          t2, s3, sp
                  srl          tp, s8, s2
105:              bltu         t3, a2, 120f
                  sub          sp, tp, a7
                  sra          sp, s5, a0
108:              slti         s1, t2, -1357
                  xor          s9, t3, a2
                  srl          s8, sp, s7
                  sub          t2, sp, gp
112:              bge          a5, s0, 132f
                  sub          s10, s9, a5
                  srai         s2, s7, 25
                  lui          ra, 984822
                  bgeu         s10, s9, 131f
                  nop
                  add          s0, s2, sp
                  and          a0, s1, a4
120:              bgeu         a6, zero, 128f
                  lui          s11, 878967
                  srl          a7, s7, gp
                  slt          a0, a7, s2
                  andi         a2, a4, -1359
                  bgeu         s9, s10, 135f
                  auipc        ra, 721601
                  sltu         ra, s0, ra
128:              srai         a1, s7, 24
                  addi         s5, t4, 1778
                  add          s4, zero, t1
131:              slt          s0, zero, ra
132:              or           s7, zero, s4
                  andi         ra, s1, -209
                  slti         ra, a7, 678
135:              slt          s1, a3, t3
                  sltiu        s2, s8, -1369
                  auipc        a0, 427126
                  xori         a2, s5, -643
                  bgeu         a7, ra, 154f
                  ori          s6, a2, -735
                  slli         a4, zero, 5
                  sra          s5, t0, t2
                  add          sp, s9, ra
                  or           a1, a0, s8
                  blt          ra, s11, 165f
                  and          t2, a2, t5
                  beq          t4, a3, 150f
                  ori          a1, t0, 128
                  bltu         s4, t2, 150f
150:              bltu         zero, t4, 164f
                  nop
                  and          a0, s9, t2
                  nop
154:              slli         gp, s11, 22
                  bne          a3, a6, 167f
                  or           t1, s2, s11
                  beq          a7, s5, 159f
                  andi         s2, s9, 591
159:              sll          a3, s5, a3
                  srli         a5, a1, 17
                  sltiu        gp, a3, 447
                  sltu         a2, s1, a7
                  ori          a3, a4, -1578
164:              add          a3, sp, t2
165:              xor          tp, a4, s8
                  andi         gp, t6, 974
167:              ori          t2, t0, 709
                  srli         a6, a5, 16
                  slti         s3, t5, 1100
                  and          ra, s6, sp
                  sltiu        t6, a6, 214
                  blt          a4, s11, 176f
                  bne          s4, a3, 175f
                  addi         s7, a1, -88
175:              bne          s7, ra, 183f
176:              srl          a2, a1, zero
                  ori          sp, s3, -495
                  bltu         s2, s8, 181f
                  auipc        a3, 241674
                  bne          a5, a7, 191f
181:              addi         zero, a7, -1052
                  nop
183:              and          gp, s10, a7
                  add          s6, s3, t3
                  addi         zero, a2, 295
                  sub          s2, s4, s2
                  slt          t6, s0, s10
                  nop
                  auipc        sp, 878584
                  sltiu        s2, a6, 2013
191:              nop
                  bltu         sp, s8, 197f
                  nop
                  bne          tp, s10, 211f
                  blt          a1, s0, 213f
                  sltu         t2, s8, s8
197:              xor          a3, s8, zero
                  bne          s7, a2, 208f
                  xor          a2, a7, a7
                  addi         s11, a2, -1369
                  sll          a2, s0, s3
                  srli         s4, a5, 20
                  bge          s1, s1, 210f
                  addi         ra, s11, -462
                  sll          s2, a4, a0
                  ori          s4, s10, -1142
                  bltu         a1, s9, 221f
208:              sltu         a4, zero, t4
                  blt          s8, s11, 213f
210:              sll          a2, sp, a5
                  la           a1, sub_2
                  slti         a0, s7, -873
                  and          tp, s4, s8
                  sltiu        s7, s0, 1783
                  sltu         a7, a2, a3
                  addi         a1, a1, 409
                  bgeu         t4, a0, sub_1_j3 #branch to jump instr
                  lui          s9, 934420
                  andi         s10, s3, -486
                  auipc        a2, 698833
                  slti         s2, s1, -895
sub_1_j3:         jalr         ra, a1, -408 #jump sub_1 -> sub_2
211:              slti         gp, t4, 1443
                  slti         a4, t1, 1178
213:              bge          s6, s5, 225f
                  andi         sp, s7, 701
                  sra          a7, s11, a3
                  addi         a0, a1, -792
                  add          gp, t3, s4
                  or           s4, gp, t5
                  auipc        a6, 715300
                  add          a5, gp, a5
221:              sub          gp, tp, a3
                  slli         a6, a1, 28
                  ori          t5, s9, 425
                  add          t6, s7, s8
225:              sub          sp, t5, s2
                  nop
                  or           t1, s4, zero
                  slt          a4, ra, a1
                  sltiu        s6, s8, 1198
                  sra          s5, t4, a1
                  slt          a7, t2, a5
                  bge          s4, a2, 237f
                  slt          t6, s4, s9
                  xor          a7, a4, s1
                  ori          s4, a7, 869
                  addi         tp, a2, 568
237:              sll          a5, ra, ra
                  lw           ra, 4(t3)
                  andi         s9, a4, -660
                  addi         t3, t3, 48
                  ori          s0, a5, -1518
                  nop
478:              addi x6, x1, 0
478:              jalr x6, x6, 0
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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_2:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_3:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_4:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_5:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_6:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_7:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_8:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_9:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_10:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_11:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_12:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_13:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_14:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_15:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x18, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x18, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x18, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x18, x11, ecall_handler
                  li x11, 0x1
                  beq x18, x11, instr_fault_handler
                  li x11, 0x5
                  beq x18, x11, load_fault_handler
                  li x11, 0x7
                  beq x18, x11, store_fault_handler
                  li x11, 0xc
                  beq x18, x11, pt_fault_handler
                  li x11, 0xd
                  beq x18, x11, pt_fault_handler
                  li x11, 0xf
                  beq x18, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x18, _start
                  sw x0, 0(x18)
                  sw x1, 4(x18)
                  sw x2, 8(x18)
                  sw x3, 12(x18)
                  sw x4, 16(x18)
                  sw x5, 20(x18)
                  sw x6, 24(x18)
                  sw x7, 28(x18)
                  sw x8, 32(x18)
                  sw x9, 36(x18)
                  sw x10, 40(x18)
                  sw x11, 44(x18)
                  sw x12, 48(x18)
                  sw x13, 52(x18)
                  sw x14, 56(x18)
                  sw x15, 60(x18)
                  sw x16, 64(x18)
                  sw x17, 68(x18)
                  sw x18, 72(x18)
                  sw x19, 76(x18)
                  sw x20, 80(x18)
                  sw x21, 84(x18)
                  sw x22, 88(x18)
                  sw x23, 92(x18)
                  sw x24, 96(x18)
                  sw x25, 100(x18)
                  sw x26, 104(x18)
                  sw x27, 108(x18)
                  sw x28, 112(x18)
                  sw x29, 116(x18)
                  sw x30, 120(x18)
                  sw x31, 124(x18)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x28, x5, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x5, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x5, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x28, x5, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x28, x5, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x28, x5, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
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
