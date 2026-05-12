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
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 1
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0x88525654
                  li x1, 0x2
                  li x2, 0x2
                  li x3, 0xa
                  li x4, 0xa
                  li x5, 0xf67192be
                  li x6, 0xe
                  li x7, 0xc301567c
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x0
                  li x12, 0x75faf705
                  li x13, 0xfe798051
                  li x14, 0xf7144574
                  li x15, 0xf708b616
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x19, 0x80000000
                  li x20, 0xf2a4cc63
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0xf632185c
                  li x26, 0x4
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0xe78c5680
                  li x30, 0x3a5e69b8
                  li x31, 0x0
                  la x11, user_stack_end
main:             or           a4, a5, s0
                  xor          a3, sp, s5
                  srli         a6, t4, 21
                  ori          s10, a5, -148
                  la           gp, sub_1
                  addi         t0, a2, 237
                  addi         gp, gp, 185
                  andi         tp, a2, 559
                  sll          a2, t1, s0
main_j2:          jalr         ra, gp, -185 #jump main -> sub_1
                  la           a7, region_1+971 #start riscv_load_store_rand_instr_stream_1
                  lbu          t1, 188(a7)
                  lbu          t1, 234(a7)
                  sub          sp, t6, s9
                  lb           a3, -142(a7)
                  or           zero, sp, t1
                  and          t1, a3, ra
                  sll          a4, a3, s0
                  slli         sp, gp, 17
                  lw           zero, 89(a7)
                  lbu          a6, 136(a7)
                  lb           a2, -190(a7)
                  sb           t5, 170(a7)
                  lbu          tp, -152(a7)
                  lw           t0, -79(a7)
                  lhu          s3, 181(a7)
                  sb           sp, 98(a7)
                  sltiu        a0, s3, -1886
                  sh           a0, 103(a7)
                  addi         s6, t4, -1945
                  sra          t2, s3, s11
                  slli         s7, s8, 21
                  xori         t6, t4, -1741
                  lh           s7, -113(a7)
                  srl          s4, a6, a2
                  andi         t2, a3, 1504
                  lw           t3, 173(a7)
                  addi         s8, s8, -1101
                  sb           t4, -132(a7)
                  slt          s7, gp, ra
                  lh           ra, -53(a7)
                  lb           s0, -18(a7)
                  slli         s10, t0, 28
                  lbu          t5, -18(a7)
                  andi         tp, t1, -885
                  sb           s3, 16(a7)
                  lui          t2, 149551
                  auipc        a3, 316999
                  srl          ra, tp, s8
                  lbu          t6, -94(a7)
                  and          a2, s2, t0
                  sb           s5, -5(a7)
                  sltiu        tp, s0, 851
                  lhu          t1, -221(a7)
                  lbu          ra, -8(a7)
                  lui          s8, 890084
                  lhu          tp, 255(a7)
                  addi         a2, s3, 644
                  nop
                  slti         t3, s9, -616
                  lb           s11, 1(a7) #end riscv_load_store_rand_instr_stream_1
                  la           t5, region_1+1952 #start riscv_load_store_hazard_instr_stream_0
                  lbu          a4, 22(t5)
                  ori          s10, a5, -987
                  sb           t5, 35(t5)
                  lbu          a7, 35(t5)
                  lb           a4, 35(t5)
                  ori          s8, gp, 1775
                  lb           a5, -35(t5)
                  sb           t4, -35(t5)
                  lb           a0, -35(t5)
                  sb           a7, -63(t5)
                  sb           sp, 27(t5)
                  lbu          t2, 27(t5)
                  lb           s4, 27(t5)
                  lb           t3, 38(t5)
                  lh           t2, 38(t5)
                  lh           t6, 38(t5)
                  lbu          a7, 25(t5) #end riscv_load_store_hazard_instr_stream_0
                  la           s0, region_0+1944 #start riscv_load_store_rand_instr_stream_0
                  sb           a7, 10(s0)
                  lbu          t1, -15(s0)
                  lhu          s3, -2(s0)
                  xori         s4, t5, -1563
                  lb           t5, -8(s0)
                  andi         t6, a6, -471
                  sb           s3, 13(s0)
                  lbu          t0, 9(s0)
                  lbu          s5, 11(s0)
                  lbu          sp, 6(s0)
                  ori          s8, a3, 564
                  slt          a4, ra, ra
                  slt          s9, t6, t3
                  slt          t5, tp, s1
                  srai         a0, s8, 31
                  nop
                  sb           s10, 2(s0)
                  lbu          s10, 11(s0)
                  lb           t6, 15(s0)
                  slli         t3, s2, 22
                  add          t0, s6, s3
                  lb           ra, -15(s0)
                  lb           t2, -1(s0)
                  lbu          s4, 11(s0)
                  sltiu        t6, t5, -459
                  lb           t0, 11(s0)
                  srli         t0, t4, 22
                  lb           s1, -1(s0)
                  add          zero, s6, ra
                  srai         a6, zero, 9
                  lb           zero, 14(s0)
                  xor          a5, s6, s3
                  lhu          s7, -6(s0)
                  srai         a3, ra, 15
                  sw           s9, -4(s0)
                  srai         t6, a2, 8
                  srli         s11, t0, 2
                  lb           t0, 11(s0)
                  slti         a4, t2, 604
                  lbu          t3, -10(s0)
                  sb           t0, 4(s0)
                  slli         s8, t2, 23
                  and          zero, s7, tp
                  lb           s6, -7(s0)
                  sb           s3, -3(s0) #end riscv_load_store_rand_instr_stream_0
                  la           t2, region_0+1730 #start load_store_instr_stream_0
                  la           t5, region_0+1878 #start load_store_instr_stream_1
                  sb           t5, 111(t2)
                  lb           s7, -1067(t5)
                  lb           zero, -181(t2)
                  lh           s11, -1414(t5)
                  sb           s5, 106(t5)
                  lh           s0, -456(t5)
                  lbu          t6, -667(t2)
                  lbu          s7, -334(t5)
                  lb           sp, 114(t2)
                  lb           a0, -295(t5)
                  sb           a3, -1089(t5)
                  sb           s4, -747(t5)
                  sb           zero, -423(t5) #end load_store_instr_stream_1
                  lb           s3, -1473(t2)
                  lb           s10, -1190(t2) #end load_store_instr_stream_0
                  la           s6, region_1+786 #start load_store_instr_stream_0
                  sb           a1, 509(s6)
                  la           s0, region_1+822 #start load_store_instr_stream_2
                  la           s3, region_1+1904 #start load_store_instr_stream_1
                  lb           a6, -163(s0)
                  lb           s8, -529(s6)
                  sb           s2, 93(s3)
                  lbu          t3, -53(s3)
                  lh           s8, -182(s6)
                  sb           t5, -7(s3)
                  lh           a3, -220(s3)
                  sw           t1, -150(s0)
                  lb           a7, 767(s6)
                  lbu          s11, -113(s3)
                  lbu          a3, -152(s0)
                  lh           a0, -214(s0)
                  lbu          tp, 744(s6)
                  sh           s10, 220(s0)
                  sh           t1, -104(s0)
                  lbu          s5, -177(s3)
                  sb           t2, 219(s0)
                  sw           s5, 64(s3)
                  sb           s2, 577(s6)
                  lb           s10, 149(s0)
                  lbu          t1, 43(s3)
                  lb           a7, 865(s6)
                  lbu          s5, -212(s6)
                  lbu          s8, 61(s0)
                  sb           s8, 61(s3)
                  lbu          t3, -211(s0) #end load_store_instr_stream_2
                  lbu          a6, -243(s3) #end load_store_instr_stream_1
                  lbu          t5, 1135(s6)
                  sb           t4, -257(s6) #end load_store_instr_stream_0
                  la           sp, region_1+1466 #start riscv_load_store_hazard_instr_stream_1
                  srli         t3, a6, 23
                  lhu          ra, 38(sp)
                  lb           ra, 61(sp)
                  lbu          s1, 61(sp)
                  sb           s8, 61(sp)
                  lb           s6, -38(sp)
                  lh           a2, -38(sp)
                  lw           zero, -38(sp)
                  sh           s11, -58(sp)
                  sub          s8, t3, s6
                  lb           s3, -53(sp)
                  sh           t5, 56(sp)
                  lb           gp, 9(sp)
                  slli         s11, s0, 5
                  sb           a1, 49(sp)
                  srai         a6, a0, 6
                  slli         gp, s10, 30
                  sw           a6, 18(sp)
                  sh           a0, -52(sp)
                  and          ra, s5, a4
                  lbu          a2, 59(sp) #end riscv_load_store_hazard_instr_stream_1
                  nop
                  and          a2, s4, a7
                  addi         s1, s1, 470
                  sra          ra, sp, a6
                  slli         ra, t0, 24
                  beq          s10, zero, 20f
                  sub          s8, s0, a3
                  xori         t5, t4, 1219
                  bne          a1, t6, 24f
                  bgeu         tp, s2, 15f
                  or           s7, t5, s1
                  sltiu        s5, t6, -33
                  xori         a6, s8, 497
                  slt          a6, sp, s10
                  srli         t1, a6, 0
15:               slti         s0, t3, 1102
                  auipc        t6, 129261
                  srl          s7, a6, tp
                  srai         s5, s1, 30
                  bge          t3, sp, 23f
20:               xori         s6, a0, -722
                  add          s10, t4, s9
                  addi         s1, s3, -1317
23:               nop
24:               xor          zero, ra, gp
                  bne          s11, s11, 34f
                  ori          s7, s4, -1578
                  srai         tp, zero, 31
                  sltu         s10, a7, t3
                  slli         t0, a4, 25
                  blt          s7, a0, 36f
                  or           t1, gp, t1
                  xor          s1, zero, a2
                  slt          s8, s6, t0
34:               sll          a5, ra, a5
                  sub          t3, s3, s5
36:               addi         a3, t1, 45
                  xori         s4, ra, -1142
                  sltu         s1, tp, a3
                  slli         t2, ra, 12
                  slti         t6, s7, -229
                  nop
                  srli         a5, s3, 11
                  addi         a3, a2, 607
                  bltu         s4, t0, 64f
                  ori          gp, s6, 1500
                  sll          t6, a6, a2
                  addi         a5, tp, -1271
                  sltiu        gp, a7, 451
                  beq          s9, sp, 51f
                  bgeu         s10, a3, 65f
51:               addi         a2, zero, 2030
                  xori         t1, t2, -940
                  slli         a2, s3, 17
                  srai         s7, tp, 6
                  bne          t0, t0, 58f
                  sub          sp, a7, s4
                  slli         a7, s8, 27
58:               blt          t3, s1, 63f
                  auipc        sp, 1039824
                  sltiu        s1, sp, -1522
                  xori         sp, a2, 1588
                  srl          s5, s8, a0
63:               bgeu         s9, s9, 72f
64:               sltiu        sp, t5, 516
65:               sub          s6, s5, t6
                  or           t3, s10, s0
                  add          a6, s6, a5
                  srai         t5, a1, 19
                  bge          s4, a7, 88f
                  beq          s9, s11, 75f
                  sltu         s3, s5, tp
72:               sltu         t3, t3, s6
                  bne          sp, s9, 79f
                  nop
75:               lui          s11, 632005
                  bltu         a1, t2, 92f
                  or           t1, t0, a6
                  addi         s5, t5, 803
79:               and          t3, s11, t6
                  and          s7, zero, t1
                  sub          t3, s2, tp
                  or           a7, s4, s8
                  lui          s6, 568114
                  srli         tp, s7, 10
                  slti         t1, a2, -1063
                  xor          ra, s6, a4
                  slti         s5, a0, -1654
88:               and          s9, s3, t5
                  xori         sp, t0, 1738
                  sltiu        s5, s11, 158
                  srl          t5, t0, zero
92:               xor          s7, a7, t2
                  srai         ra, a6, 7
                  bgeu         s1, s1, 109f
                  sltiu        s6, t6, 1818
                  nop
                  sub          s5, s1, t3
                  bltu         a1, s10, 114f
                  add          s5, t2, t2
                  addi         s5, t3, 384
                  slt          s4, a5, a0
                  sltu         gp, ra, s4
                  and          a2, a0, a1
                  lui          s6, 737148
                  xori         s7, s0, 2047
                  bltu         s4, a5, 126f
                  sra          s11, t3, t5
                  add          ra, a0, a1
109:              ori          s6, a7, -157
                  beq          a0, t5, 122f
                  srl          sp, a7, zero
                  bgeu         s5, s2, 115f
                  andi         s10, a7, 1004
114:              ori          a2, t1, 750
115:              auipc        s0, 1047688
                  andi         tp, t3, -371
                  bge          a3, a7, 132f
                  beq          zero, a5, 126f
                  add          gp, a0, s8
                  sltu         sp, s1, a2
                  sltu         s0, a4, sp
122:              sltiu        a6, t0, 1630
                  slti         s1, gp, 918
                  slli         a7, t6, 29
                  srl          s6, a7, s9
126:              xor          a7, t4, a1
                  or           s1, a3, a5
                  sll          t0, s10, t1
                  or           a6, zero, sp
                  slt          t5, t1, t6
                  add          s10, s5, t2
132:              sltu         s0, s1, a7
                  sll          s8, t5, s10
                  srl          zero, s0, s9
                  ori          a4, s7, 655
                  andi         t3, a2, 534
                  la           t1, sub_1
                  srl          s5, t1, a2
                  and          a0, a5, t6
                  addi         t1, t1, 847
                  or           a2, s8, a4
                  add          s9, a5, a1
main_j1:          jalr         ra, t1, -847 #jump main -> sub_1
                  or           s3, tp, t1
                  slti         s9, a7, -1841
                  sub          a5, t5, s1
                  and          s8, t1, sp
                  sltu         s4, a4, a2
                  or           t0, s8, s8
                  lui          s11, 629615
                  bge          t3, a6, 143f
                  bge          sp, s10, 146f
143:              srli         s3, a6, 12
                  or           a7, ra, s4
                  bgeu         s4, a3, 163f
146:              add          s1, zero, t4
                  bge          a0, s9, 166f
                  sltiu        s1, s7, -1133
                  ori          zero, t5, -165
                  bltu         s9, sp, 151f
151:              auipc        a5, 670051
                  sll          tp, s9, zero
                  ori          s1, a4, 1806
                  srai         s6, s5, 20
                  bne          s11, ra, 166f
                  xori         t2, t1, -931
                  beq          s11, a0, 159f
                  andi         tp, s7, 15
159:              sub          t2, gp, s10
                  lui          s7, 992566
                  sub          s6, a0, t1
                  andi         s4, a3, 190
163:              sltiu        s0, t2, 2003
                  andi         t5, s10, -776
                  andi         s0, sp, -119
166:              xor          t2, tp, t0
                  sub          s3, t2, a5
                  sub          t0, a6, t2
                  sub          gp, t2, s2
                  bne          sp, s1, 172f
                  slt          a7, s10, s3
172:              bne          t0, s6, 174f
                  slt          sp, t0, a1
174:              and          gp, sp, s8
                  nop
                  sra          s6, s10, s4
                  srli         s9, s2, 25
                  sra          sp, sp, a0
                  add          s11, a0, s10
                  bge          s4, a2, 186f
                  nop
                  addi         s8, t2, -211
                  sltu         t3, s8, t6
                  bge          a7, ra, 204f
                  lui          t3, 566228
186:              xor          s3, gp, gp
                  or           tp, a3, a2
                  sll          tp, s9, gp
                  srl          s5, t3, s8
                  and          s0, ra, t5
                  lui          s11, 892326
                  srai         a2, s2, 15
                  beq          zero, s1, 204f
                  lui          s1, 857315
                  and          a4, s6, a5
                  blt          a0, s11, 200f
                  andi         t2, a1, 1155
                  lui          ra, 588918
                  bltu         a6, a0, 219f
200:              or           s11, zero, t3
                  add          t5, tp, s4
                  lui          a7, 188154
                  xor          a2, s0, a7
204:              andi         t3, a7, 1536
                  sltu         a4, t6, s6
                  ori          s5, t5, -1576
                  sltu         s5, s4, s8
                  or           a2, t0, t4
                  sltu         t0, a1, s8
                  add          gp, a4, s5
                  sll          t3, s0, t2
                  auipc        s9, 705773
                  andi         s11, t3, 1247
                  addi         a2, s1, -2000
                  srai         s10, sp, 28
                  and          gp, s10, a5
                  blt          a3, s5, 221f
                  nop
219:              auipc        s8, 988799
                  beq          a1, s2, 228f
221:              bgeu         a3, s3, 223f
                  andi         a5, a1, -495
223:              blt          s5, a2, 241f
                  slti         ra, s10, -652
                  and          s11, t0, t0
                  ori          s0, a4, 1068
                  beq          t1, a0, 236f
228:              slt          t6, s7, s0
                  andi         t2, s5, 438
                  sll          s8, s3, a0
                  ori          t0, s0, 813
                  bltu         a0, s0, 247f
                  bgeu         s5, ra, 249f
                  srai         a2, gp, 29
                  auipc        s1, 658110
236:              and          t6, s5, s4
                  andi         a2, s10, 395
                  sll          a7, t0, a7
                  srli         a7, t5, 29
                  slt          t2, tp, s9
241:              nop
                  sub          s3, a7, a7
                  bne          a7, a7, 259f
                  auipc        s10, 831452
                  bge          a4, s2, 254f
                  bgeu         t6, gp, 247f
247:              andi         s4, gp, 950
                  lui          t5, 755823
249:              sltu         s7, sp, gp
                  blt          a2, t6, 266f
                  slli         s11, s2, 3
                  bltu         t0, a1, 267f
                  addi         zero, zero, -1138
254:              bgeu         s9, s1, 260f
                  sub          a2, a2, sp
                  srai         ra, s10, 16
                  sltu         sp, gp, a4
                  slti         a0, t0, 1070
259:              bltu         t0, sp, 278f
260:              blt          a6, s6, 265f
                  ori          s4, s1, -144
                  bgeu         s3, s6, 268f
                  srli         sp, a2, 4
                  nop
265:              ori          s10, s1, 634
266:              sltu         s6, s3, t3
267:              ori          a7, a6, -1635
268:              srl          t6, t4, zero
                  sltiu        t5, t2, 520
                  bgeu         s11, t0, 282f
                  addi         a0, a5, 776
                  beq          t0, s8, 291f
                  andi         t0, s9, 1463
                  srai         t0, t5, 30
                  xori         a4, t3, 61
                  bltu         t5, gp, 291f
                  xor          t5, a2, s2
278:              xor          s5, a1, t5
                  nop
                  ori          s7, gp, -1261
                  xor          s9, a2, t0
282:              srli         ra, s1, 15
                  and          a4, a7, gp
                  and          a4, zero, s2
                  add          t5, t0, s6
                  ori          zero, tp, 1829
                  bge          a3, a2, 290f
                  or           sp, s0, t1
                  bge          a2, a3, 294f
290:              ori          s0, t3, 14
291:              bgeu         s0, s10, 297f
                  srai         a0, a7, 0
                  slli         t0, gp, 22
294:              bge          t2, a2, 297f
                  ori          t5, a7, 760
                  srai         s1, a1, 8
297:              srl          s7, t2, t6
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            nop
                  or           s4, sp, a7
                  addi         a1, a1, -44
                  slli         s5, zero, 14
                  sub          a3, zero, s0
                  lui          s4, 1018753
                  add          s11, t1, a7
                  addi         a7, a6, -1538
                  sw           ra, 4(a1)
                  add          t2, s3, a7
                  auipc        gp, 397227
                  la           s4, region_0+1369 #start riscv_load_store_hazard_instr_stream_2
                  sb           gp, 248(s4)
                  lbu          s10, 248(s4)
                  lbu          a2, 167(s4)
                  lh           s1, 157(s4)
                  lhu          s9, 157(s4)
                  lh           s11, 157(s4)
                  lbu          ra, 18(s4)
                  sb           s1, 18(s4)
                  lbu          a5, 18(s4)
                  sh           a1, 193(s4)
                  lbu          t0, -101(s4)
                  srl          gp, s1, ra
                  lb           a7, -160(s4)
                  lb           ra, -160(s4)
                  sb           t1, 94(s4)
                  addi         s7, sp, 1521
                  or           s0, s8, s6
                  lh           s9, 59(s4)
                  sh           s0, -89(s4)
                  sh           t3, -145(s4)
                  sh           s11, 13(s4)
                  lh           a0, -115(s4) #end riscv_load_store_hazard_instr_stream_2
                  la           s3, region_1+1169 #start riscv_load_store_rand_instr_stream_3
                  ori          t1, t3, 1099
                  auipc        a3, 974813
                  sb           t5, 16(s3)
                  ori          a2, t6, 501
                  sub          s6, a5, s10
                  srl          t5, t5, s6
                  andi         sp, a3, -137
                  lbu          a3, 22(s3)
                  lbu          s7, -62(s3)
                  sb           sp, 24(s3)
                  slt          s11, t2, a1
                  xori         s5, t6, -171
                  nop
                  slli         a5, t3, 22
                  addi         a4, ra, -116
                  nop
                  xor          a4, a2, a0
                  lh           s6, 51(s3)
                  srl          s5, a6, gp
                  andi         s10, s9, 833
                  xor          s0, s0, t4
                  xori         s10, s2, 1820
                  lb           a6, -46(s3)
                  lh           s7, -13(s3)
                  sra          s10, gp, a3
                  auipc        s1, 621336
                  sra          a0, a6, s9
                  nop
                  lbu          a6, -20(s3)
                  addi         a5, a1, -1340
                  lb           a3, 21(s3)
                  sltu         s0, ra, s4
                  lui          a3, 830669
                  sub          tp, s3, t2
                  lhu          t6, -25(s3) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+177 #start riscv_load_store_hazard_instr_stream_0
                  lb           a4, -14(sp)
                  sb           a1, -14(sp)
                  sb           s7, -14(sp)
                  lb           t6, -14(sp)
                  lbu          a0, -12(sp)
                  lbu          a7, -12(sp)
                  sll          s3, t4, a7
                  srl          s9, t4, t4
                  lb           s3, -12(sp)
                  srli         s3, ra, 26
                  lbu          s9, -12(sp)
                  sub          a0, a1, s1
                  lh           tp, 15(sp)
                  lbu          s9, 15(sp)
                  auipc        s5, 1043882
                  sb           s2, 16(sp)
                  sb           t6, 16(sp)
                  lw           a6, 11(sp)
                  lbu          zero, 11(sp)
                  srl          s10, s0, ra
                  lbu          a5, -3(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+395 #start riscv_load_store_hazard_instr_stream_3
                  sh           a0, -163(sp)
                  lbu          t5, -57(sp)
                  sb           a2, -57(sp)
                  lb           s6, -57(sp)
                  lh           a2, -57(sp)
                  sh           s0, -57(sp)
                  srl          t0, a5, zero
                  sb           a1, -131(sp)
                  lb           s0, -131(sp)
                  lbu          t5, 154(sp)
                  srai         zero, t4, 31
                  lbu          s4, 154(sp)
                  lui          tp, 689326
                  sb           a1, 154(sp)
                  lbu          a6, 154(sp)
                  lbu          t0, 154(sp)
                  sltiu        s7, t4, 1087
                  sb           s1, 174(sp)
                  sh           s10, -103(sp)
                  lhu          a2, -103(sp)
                  lh           a6, 25(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           t6, region_0+1755 #start riscv_load_store_rand_instr_stream_0
                  add          a4, a0, a6
                  sub          a3, sp, t0
                  lb           s7, 8(t6)
                  addi         a4, s11, -1750
                  xor          t0, a0, a0
                  lb           t0, 2(t6)
                  sb           s7, 7(t6)
                  auipc        s8, 255887
                  sb           s0, 13(t6)
                  srl          s8, a0, sp
                  srai         a6, s8, 13
                  or           s9, s8, zero
                  sb           t3, -1(t6)
                  sb           s6, -12(t6)
                  slli         s1, sp, 7
                  lbu          s3, 3(t6)
                  and          t0, a4, a2
                  add          a2, s3, s7
                  srl          a6, s0, s7
                  lb           s10, -9(t6)
                  and          a2, t2, a4
                  or           a7, a7, t3
                  lbu          s10, 16(t6)
                  or           zero, t5, t4
                  sll          s8, a6, a7
                  lw           s4, -7(t6)
                  sll          t2, a4, a1
                  lbu          a0, 16(t6)
                  lui          s0, 1019893
                  andi         a6, s10, 801
                  srai         s6, t2, 5
                  lb           t3, 7(t6)
                  sub          zero, s6, t4
                  slt          s10, s3, sp
                  ori          s4, t3, -1691
                  sh           s0, 1(t6)
                  sh           t4, -5(t6)
                  sh           a0, -5(t6)
                  lui          ra, 518092
                  lb           gp, 0(t6)
                  sll          s8, a5, t6
                  add          tp, a3, s2
                  slli         s3, t6, 10
                  add          a4, t6, t1
                  sb           t2, -6(t6) #end riscv_load_store_rand_instr_stream_0
                  la           a5, region_0+1558 #start load_store_instr_stream_2
                  la           a4, region_0+635 #start load_store_instr_stream_1
                  la           s4, region_0+1527 #start load_store_instr_stream_3
                  la           t3, region_0+1266 #start load_store_instr_stream_0
                  lbu          s3, 10(s4)
                  lb           s3, -4(a5)
                  lb           t2, -27(a4)
                  lbu          t5, -56(a4)
                  sb           t3, -2(s4)
                  lh           a7, -8(a5)
                  lbu          t1, 6(s4)
                  lh           s3, -12(t3)
                  lh           a2, -8(t3)
                  lw           t1, -2(a5)
                  lbu          zero, 7(a5)
                  sh           ra, 13(a4)
                  lb           tp, -3(a5)
                  sb           s7, -11(a5)
                  lhu          s8, 58(t3)
                  lb           a7, -9(s4)
                  lbu          s0, -13(a5)
                  lh           t5, -3(s4)
                  lb           s8, -52(a4)
                  lb           s9, 5(a5)
                  lbu          sp, 10(t3)
                  lb           s8, 15(a5)
                  sh           t5, -9(a4)
                  lbu          a2, 16(s4) #end load_store_instr_stream_3
                  sb           a7, -9(t3)
                  sb           s6, 8(a5) #end load_store_instr_stream_2
                  lhu          t1, -15(a4) #end load_store_instr_stream_1
                  lh           a2, 64(t3) #end load_store_instr_stream_0
                  la           s1, region_1+440 #start load_store_instr_stream_0
                  lhu          a2, 1182(s1)
                  la           sp, region_1+562 #start load_store_instr_stream_1
                  lhu          a7, 12(sp)
                  la           t3, region_1+1390 #start load_store_instr_stream_2
                  lh           tp, -70(t3)
                  lbu          a7, -419(s1)
                  lh           s3, -164(t3)
                  sb           s6, -7(sp)
                  lb           t2, 913(s1)
                  sb           sp, 237(t3)
                  lb           s7, -14(sp)
                  lb           a3, 98(t3)
                  lh           s3, 860(s1)
                  sh           s11, 130(t3) #end load_store_instr_stream_2
                  sw           s1, 10(sp)
                  lbu          a7, 773(s1)
                  lbu          a3, 13(sp) #end load_store_instr_stream_1
                  lb           s9, -307(s1) #end load_store_instr_stream_0
                  la           a5, region_1+899 #start riscv_load_store_rand_instr_stream_2
                  lbu          t3, 822(a5)
                  sb           s4, 196(a5)
                  lb           s6, 978(a5)
                  and          ra, s4, ra
                  sb           s5, -836(a5)
                  sh           sp, 465(a5)
                  lw           a7, -779(a5)
                  lbu          a2, 103(a5)
                  slt          a7, a6, a4
                  ori          s10, s2, 1878
                  lb           s7, -25(a5)
                  sb           s7, 884(a5)
                  lbu          s4, 942(a5)
                  lb           a2, -462(a5)
                  slti         s8, s1, -1776
                  sh           gp, -321(a5)
                  add          s10, a3, s8
                  sb           a1, 278(a5)
                  lh           s4, 95(a5)
                  sra          a2, t0, s11
                  slt          zero, s6, a3
                  lb           s11, 454(a5)
                  or           gp, s9, s3
                  sltu         s6, t3, sp
                  sltu         t6, a1, s0
                  sub          a0, a2, t2
                  sb           tp, 204(a5)
                  lbu          a6, 898(a5)
                  addi         a4, t2, -679
                  lui          s5, 375909
                  slt          t5, s6, t5
                  lbu          ra, 90(a5)
                  sub          t3, zero, sp
                  sll          t5, a3, a0
                  sb           a2, 719(a5)
                  sb           tp, -360(a5)
                  lw           s6, 693(a5) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1977 #start riscv_load_store_hazard_instr_stream_4
                  lb           a5, -598(sp)
                  sh           s5, -767(sp)
                  sh           ra, -767(sp)
                  sb           t2, -767(sp)
                  nop
                  lhu          a7, -767(sp)
                  lh           s3, -767(sp)
                  sh           t0, -1331(sp)
                  lhu          t0, -1757(sp)
                  srl          t1, sp, a5
                  sh           sp, -1757(sp)
                  sh           s8, -1149(sp)
                  lbu          t5, -864(sp)
                  lb           t0, -1810(sp)
                  lbu          ra, -1442(sp)
                  lb           a2, -1184(sp)
                  sb           a6, -32(sp)
                  lbu          s8, -1189(sp)
                  lh           s1, -1147(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           a6, region_0+1975 #start load_store_instr_stream_0
                  la           a3, region_0+536 #start load_store_instr_stream_1
                  lb           s6, -16(a6)
                  sb           s4, -2(a6)
                  lhu          a2, 15(a6)
                  lh           a0, 1166(a3)
                  lbu          s9, 1274(a3)
                  lbu          t1, -10(a6)
                  lhu          tp, -98(a3)
                  sb           a7, 4(a6)
                  sb           sp, -13(a6)
                  lhu          t2, 74(a3)
                  sb           zero, 1114(a3) #end load_store_instr_stream_1
                  sb           s9, -3(a6)
                  sh           t0, 13(a6) #end load_store_instr_stream_0
                  la           tp, region_1+314 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s7, 103(tp)
                  lhu          t5, 436(tp)
                  lb           s9, 1443(tp)
                  lb           t3, 1443(tp)
                  lb           sp, 1443(tp)
                  sltu         a0, t2, s3
                  lbu          s4, 1443(tp)
                  sb           s1, 776(tp)
                  sb           t1, 1407(tp)
                  sra          s8, a1, s8
                  sb           t4, 1407(tp)
                  sh           s2, 1636(tp)
                  sb           s2, -81(tp)
                  sb           tp, -81(tp)
                  sub          t1, t0, s6
                  sb           s10, -81(tp)
                  xori         s1, t4, -279
                  sra          s4, ra, s10
                  auipc        zero, 951437
                  lbu          s5, -227(tp)
                  sb           s2, -227(tp)
                  sw           s5, 1078(tp)
                  lb           t3, 1078(tp)
                  lb           ra, 1078(tp)
                  lw           s1, 1078(tp) #end riscv_load_store_hazard_instr_stream_1
                  la           a6, region_1+1901 #start riscv_load_store_rand_instr_stream_4
                  add          t2, a4, ra
                  slt          t0, s8, s8
                  lbu          a7, -716(a6)
                  lui          a3, 109636
                  srli         a0, s4, 6
                  lui          s0, 123154
                  sb           zero, -1826(a6)
                  lbu          sp, -1736(a6)
                  nop
                  sb           s0, -1187(a6)
                  lhu          a7, -849(a6)
                  lh           t3, -1793(a6)
                  lhu          t3, -975(a6)
                  sltu         s3, a6, a2
                  sra          tp, s0, t5
                  lbu          a2, -1084(a6)
                  slti         s7, a1, 1498
                  sltu         ra, a3, s0
                  or           t5, t3, ra
                  lb           s10, -1151(a6)
                  xor          t6, a5, t6
                  sw           gp, -461(a6)
                  or           t1, s6, s9
                  sub          t2, t6, a7
                  andi         sp, a2, 1002
                  sb           s5, -1368(a6)
                  sb           t0, -1038(a6)
                  lbu          t0, -436(a6)
                  or           t6, t0, s10
                  lb           a5, -1003(a6)
                  sw           a2, -213(a6)
                  slt          a2, a0, zero
                  sltiu        t0, a1, 1664
                  lb           s0, -456(a6)
                  sb           s10, -986(a6)
                  lbu          s7, -926(a6)
                  lbu          a4, -1571(a6)
                  srai         s8, t1, 17
                  lbu          s8, -304(a6)
                  lbu          a5, 80(a6)
                  sb           a3, -1839(a6)
                  add          tp, t2, s1
                  sh           s4, -639(a6)
                  sltu         a5, t0, s11
                  lhu          ra, -1683(a6)
                  lbu          t2, -680(a6)
                  lh           s5, -181(a6) #end riscv_load_store_rand_instr_stream_4
                  la           a6, region_1+1965 #start riscv_load_store_rand_instr_stream_1
                  andi         t5, sp, 68
                  lb           tp, -224(a6)
                  srli         t1, s11, 4
                  lh           a3, -203(a6)
                  auipc        gp, 207635
                  lb           gp, -90(a6)
                  lh           t6, -99(a6)
                  lhu          t6, 25(a6)
                  srl          t3, a5, a5
                  and          t2, gp, t1
                  nop
                  lbu          s3, -140(a6)
                  srli         sp, s4, 12
                  lbu          s8, -118(a6)
                  addi         s11, s4, 1378
                  lbu          s6, -167(a6)
                  lbu          a5, 25(a6)
                  lbu          t6, -1(a6)
                  lb           a4, -77(a6)
                  lh           s8, 13(a6)
                  and          zero, a3, s9
                  lbu          a2, -24(a6)
                  lbu          s7, -50(a6)
                  sb           s2, -112(a6)
                  auipc        t0, 194606
                  lbu          gp, -46(a6)
                  sw           s10, 11(a6)
                  slli         t3, s2, 8
                  sub          t1, t6, t4
                  lh           tp, -245(a6)
                  sb           s8, -90(a6)
                  sb           a1, -54(a6)
                  lb           s0, -160(a6)
                  auipc        s6, 1038460
                  sb           s10, -1(a6)
                  lb           a2, 14(a6)
                  slt          s0, s4, zero
                  lbu          t5, 17(a6)
                  lbu          s10, -185(a6)
                  slt          a7, s8, a1
                  lb           t6, -89(a6)
                  sra          gp, t6, t0
                  andi         s1, s9, -1428
                  lbu          sp, -202(a6) #end riscv_load_store_rand_instr_stream_1
                  slli         a7, s1, 30
                  sll          zero, a0, s3
                  or           t6, sp, sp
                  srl          a2, s7, s10
                  bge          a4, s6, 11f
                  addi         gp, zero, -1115
                  bne          a5, s10, 25f
                  bltu         t4, s4, 22f
                  addi         tp, t5, 1031
                  srli         a7, a0, 29
                  add          s11, zero, s1
11:               sub          ra, a1, t5
                  ori          a7, s3, 874
                  srai         t5, t5, 13
                  or           s4, s11, s11
                  add          a6, a1, s9
                  srai         t2, s2, 21
                  or           t3, sp, s5
                  slti         t0, s5, 617
                  xori         t0, s4, 2011
                  xor          t1, s0, a6
                  srai         a5, zero, 1
                  xori         a0, s1, 2003
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  bltu         s9, t1, 31f
                  srai         s5, a7, 5
                  bltu         s11, gp, 24f
                  slli         s4, sp, 3
                  auipc        s4, 1011074
22:               bne          t2, ra, 26f
                  slt          s6, s7, sp
24:               sltiu        s0, a1, 1718
25:               or           s6, gp, a5
26:               beq          t3, t4, 38f
                  sll          a0, s2, gp
                  addi         zero, s2, -258
                  nop
                  lui          a3, 88690
31:               and          a2, s7, s5
                  lui          s7, 720853
                  and          t5, s9, t2
                  sra          t5, s9, a4
                  slli         s4, tp, 31
                  sltiu        a4, a2, -1206
                  ori          a2, s11, -1279
38:               srai         ra, t1, 9
                  auipc        t6, 780955
                  bge          s5, a1, 51f
                  srli         a6, t4, 16
                  slti         a3, s11, 1751
                  lui          t5, 156084
                  or           s11, gp, t0
                  bltu         t6, a5, 47f
                  sltu         gp, s9, zero
47:               bge          t3, s7, 66f
                  add          t1, a7, t0
                  sll          zero, t3, s2
                  xor          t2, a1, a0
51:               xor          a4, t3, a6
                  add          s11, a2, t0
                  srli         s9, t6, 19
                  sll          t6, s3, ra
                  sltu         zero, t1, a1
                  slt          s1, s9, s7
                  bge          gp, s8, 65f
                  and          s9, a5, a2
                  add          t3, tp, s8
                  xor          s0, a5, t6
                  blt          t5, a2, 64f
                  sll          ra, a0, a1
                  bgeu         s5, a6, 69f
64:               bltu         a0, t5, 67f
65:               andi         t6, s5, -1310
66:               srai         s4, s10, 13
67:               add          gp, s9, s5
                  sltiu        t0, a2, -620
69:               sltu         s1, s6, s3
                  sltu         s10, a5, s2
                  sra          a7, s11, s11
                  bge          s1, tp, 75f
                  and          t1, a0, s2
                  auipc        t3, 987572
75:               slli         tp, s5, 6
                  xor          t3, t4, gp
                  addi         a6, t2, -819
                  srai         s8, a7, 29
                  bne          s6, zero, 97f
                  bgeu         a5, s11, 90f
                  srl          a2, s7, a2
                  slt          s11, s2, t6
                  addi         a6, t3, 1117
                  xor          a6, t6, s0
                  xor          ra, s7, t1
                  auipc        t6, 26537
                  bltu         s4, s10, 93f
                  bge          s11, tp, 100f
                  addi         t0, s2, 1161
90:               or           s7, s3, s2
                  bge          a3, s7, 109f
                  sll          s10, t2, a0
93:               bge          t4, s4, 96f
                  sra          gp, s3, a3
                  and          t2, s8, s3
96:               nop
97:               andi         s4, s0, 1990
                  blt          a5, s4, 104f
                  bgeu         s3, ra, 118f
100:              sltiu        a4, ra, 1753
                  auipc        a5, 473867
                  sll          s3, sp, t3
                  slti         zero, s6, -533
104:              nop
                  addi         s3, t1, 1635
                  slti         ra, a6, 1354
                  sltu         t2, s2, a5
                  blt          a3, s4, 109f
109:              sra          s4, a6, a5
                  nop
                  auipc        a5, 256996
                  and          sp, gp, a0
                  sltu         s4, t5, s3
                  andi         s10, t0, 375
                  or           s8, s8, t2
                  slt          t2, a3, t5
                  blt          s4, s3, 135f
118:              sltu         t1, t0, sp
                  bne          a5, s0, 123f
                  ori          s8, gp, -1012
                  beq          a4, a7, 126f
                  addi         a4, a0, -1804
123:              sltu         a4, s5, s3
                  srli         a6, s0, 20
                  sub          t5, a5, a3
126:              ori          sp, a1, -1589
                  slli         s5, a6, 0
                  bne          s10, s7, 137f
                  srl          t3, s11, t3
                  sll          t2, a1, s7
                  srai         tp, s7, 21
                  andi         s10, sp, 698
                  or           t0, s11, t6
                  add          s7, a4, tp
135:              ori          tp, gp, -1584
                  andi         t5, s10, -496
137:              sltiu        a3, t3, -468
                  sltiu        s4, ra, 1206
                  blt          a5, tp, 156f
                  bge          tp, s8, 152f
                  or           s1, t6, s8
                  auipc        t5, 92385
                  slt          ra, a2, s0
                  sub          tp, tp, zero
                  bgeu         a1, s3, 164f
                  auipc        a7, 715693
                  ori          s4, zero, -1742
                  ori          gp, a7, -732
                  bge          zero, s7, 168f
                  addi         a4, tp, -931
                  ori          s4, a5, -1330
152:              sll          tp, a4, sp
                  srai         s6, a4, 29
                  beq          t4, ra, 163f
                  sltu         t3, zero, s3
156:              bge          t5, a7, 160f
                  bltu         t2, s0, 160f
                  sltu         s3, tp, t1
                  and          sp, ra, s7
160:              add          s7, a3, s2
                  bne          t0, a7, 168f
                  srai         a4, a7, 4
163:              srai         a2, a4, 1
164:              bltu         s8, t4, 175f
                  bge          s10, a4, 183f
                  andi         s11, a6, -1408
                  add          s9, s3, gp
168:              srl          a7, s5, s0
                  slli         a5, s4, 6
                  or           a3, s6, s9
                  slli         s9, ra, 15
                  bne          s10, t0, 177f
                  xor          t5, s4, a4
                  add          t2, s11, t5
175:              ori          s1, a3, 624
                  bltu         s8, a4, 177f
177:              sltu         a5, gp, gp
                  sltiu        sp, a3, 1124
                  sub          s11, sp, s8
                  blt          t5, ra, 195f
                  sltu         s3, s9, s8
                  auipc        s11, 144558
183:              sltiu        s5, t3, -1667
                  nop
                  beq          s10, a4, 203f
                  nop
                  sub          ra, t0, s7
                  beq          ra, t5, 202f
                  bne          s0, a3, 192f
                  addi         t0, ra, 1736
                  slt          a0, gp, s6
192:              srai         s1, s6, 5
                  nop
                  srli         s7, t3, 16
195:              add          s5, s7, a2
                  sra          sp, t2, a1
                  xori         a6, a7, 1383
                  auipc        a6, 524222
                  andi         s9, ra, -1036
                  sub          a2, a2, a7
                  xori         a2, s3, -250
202:              add          s11, s1, s11
203:              srl          s10, s4, t3
                  andi         a2, t2, 1801
                  andi         a4, s1, 1233
                  slt          t3, a0, s2
                  bne          s10, zero, 226f
                  bge          a4, t4, 210f
                  sltiu        gp, a1, 539
210:              sltu         a0, t0, s11
                  sub          gp, s11, s4
                  auipc        s9, 959564
                  sltiu        t5, s10, 148
                  nop
                  sub          a2, s8, s2
                  xor          s6, a5, t6
                  srai         s0, t3, 13
                  srl          s8, ra, t0
                  auipc        a7, 670612
                  nop
                  xori         a5, t1, -324
                  add          t0, s2, s9
                  bgeu         gp, s3, 229f
                  add          a2, t3, s8
                  bltu         a4, a3, 237f
226:              sltu         s5, ra, t1
                  andi         t2, s7, -731
                  srai         s6, a6, 20
229:              srli         s3, gp, 21
                  lui          t5, 368072
                  slt          t0, a0, s6
                  blt          t4, t3, 237f
                  beq          s10, s4, 239f
                  sub          a5, s1, s5
                  bge          a2, a3, 253f
                  or           s1, s10, ra
237:              srai         t0, a0, 23
                  and          s5, s9, t2
239:              sltiu        gp, t2, 379
                  slt          t3, s2, sp
                  sltu         a4, t2, a3
                  sub          a2, s6, s5
                  addi         s0, s11, -2006
                  sll          t5, s3, a6
                  xor          ra, s8, zero
                  srai         s10, t5, 15
                  srli         t0, a7, 17
                  bgeu         ra, s0, 256f
                  sltu         t3, a4, s2
                  slt          s11, s6, s2
                  sll          s10, t2, s8
                  or           s10, s3, tp
253:              beq          t3, s0, 259f
                  slt          s1, t4, t5
                  or           a6, s0, a7
256:              beq          s11, s10, 259f
                  xor          t0, s5, s4
                  bgeu         s4, a3, 262f
259:              srai         tp, zero, 2
                  sll          s1, s10, s2
                  or           t1, s5, gp
262:              slt          a3, a4, t0
                  nop
                  slli         s6, a3, 25
                  sra          s11, s8, a4
                  bge          s1, t0, 283f
                  bgeu         ra, s2, 279f
                  blt          s6, s3, 271f
                  slli         a2, t0, 3
                  andi         s5, t3, 1862
271:              slti         t1, s1, -1254
                  andi         a4, s10, -1016
                  xori         s11, s9, -238
                  andi         t1, s1, -1211
                  xori         s10, s0, 320
                  srl          t1, tp, s7
                  sltiu        a0, s0, -1737
                  bgeu         a7, s5, 290f
279:              ori          t5, s1, 1896
                  sub          zero, a3, s5
                  xori         t5, a2, -1208
                  xor          a0, s8, s2
283:              beq          s5, s7, 293f
                  addi         a4, zero, -124
                  slli         t1, a4, 12
                  srl          s3, s2, s7
                  bgeu         s10, a3, 302f
                  blt          ra, s4, 294f
                  srai         s9, ra, 25
290:              or           s5, a6, a1
                  la           s9, region_1+378 #start load_store_instr_stream_1
                  la           a2, region_1+623 #start load_store_instr_stream_0
                  lbu          s6, -163(a2)
                  lb           t2, -185(a2)
                  lh           s10, 252(s9)
                  lbu          t2, 216(s9)
                  sb           s11, 248(s9)
                  lhu          s8, 5(a2)
                  sh           t3, 33(a2)
                  lb           a4, -51(s9)
                  lb           s8, 137(s9)
                  sh           s11, -169(a2)
                  sw           s6, 42(s9)
                  lb           a6, -115(a2)
                  lb           s7, -117(s9)
                  lhu          a4, 92(s9)
                  lb           a6, 56(a2)
                  sb           ra, 165(s9) #end load_store_instr_stream_1
                  lb           s6, -93(a2)
                  lhu          s10, 55(a2)
                  lb           t5, 136(a2) #end load_store_instr_stream_0
                  sltiu        s0, a3, -1458
                  sra          tp, s8, a6
293:              lui          s1, 783223
294:              xori         t1, s9, -1264
                  bgeu         zero, t1, 298f
                  bltu         a2, a6, 315f
                  xori         gp, t6, 695
298:              srai         s7, s2, 15
                  lui          gp, 37285
                  sltu         s6, s7, zero
                  auipc        a3, 597895
302:              sltu         tp, tp, gp
                  nop
                  and          ra, s5, ra
                  or           tp, s4, t5
                  beq          s4, a6, 325f
                  slti         s0, tp, -882
                  sra          s7, ra, a4
                  xor          s1, s2, a1
                  addi         sp, s9, -1855
                  srai         ra, a4, 4
                  nop
                  nop
                  bltu         sp, t3, 318f
315:              srl          a5, s7, t2
                  srli         s9, a0, 24
                  sltu         s7, s1, gp
318:              xori         t6, a3, -1175
                  slt          sp, t6, s9
                  sltiu        s9, s5, 612
                  beq          t3, s5, 331f
                  and          a2, t0, s1
                  srli         tp, sp, 7
                  or           t3, ra, s7
325:              add          s7, s7, t2
                  bgeu         t0, s7, 331f
                  ori          s9, a5, -1743
                  addi         a4, gp, -1609
                  srl          sp, a2, zero
                  andi         a6, a7, 1715
331:              srl          t0, a1, tp
                  srli         gp, s1, 8
                  or           s10, a5, a1
                  xor          a6, a2, s11
                  lui          a0, 379052
                  add          s8, a3, s6
                  ori          a5, a2, 1407
                  addi         s10, s1, 235
                  add          t5, a7, sp
                  bltu         s2, s9, 352f
                  srl          ra, s3, t3
                  slt          s7, zero, zero
                  srli         s0, a0, 11
                  la           s5, region_0+1572 #start load_store_instr_stream_0
                  la           s0, region_0+1271 #start load_store_instr_stream_4
                  la           s4, region_0+1776 #start load_store_instr_stream_3
                  la           s9, region_0+479 #start load_store_instr_stream_1
                  la           a7, region_0+1741 #start load_store_instr_stream_2
                  lhu          s1, -4(s5)
                  lhu          t0, -15(a7)
                  lhu          t1, -3(a7)
                  lh           s11, 49(s0)
                  sb           s2, 161(s0)
                  sb           s4, 1078(s9)
                  lb           s7, 172(s0)
                  lbu          s10, 13(a7)
                  lb           ra, -55(s4)
                  sb           a3, 453(s9)
                  lbu          a6, 45(s4)
                  sb           s11, 1486(s9)
                  lb           t1, 18(s0)
                  sb           a5, 7(s5)
                  lw           t0, 109(s9)
                  sb           ra, 13(s4)
                  lb           a4, 652(s9)
                  lbu          a4, 272(s9)
                  lb           s7, 2(s0)
                  lbu          a2, 10(s4)
                  lbu          s8, -140(s0)
                  lbu          tp, -51(s4)
                  sb           s5, 1(s5)
                  lhu          ra, 11(a7)
                  lb           zero, -14(s5)
                  lb           t0, -189(s0)
                  lw           t5, -56(s4)
                  lw           t6, 48(s4) #end load_store_instr_stream_3
                  sb           s6, -2(s0) #end load_store_instr_stream_4
                  lbu          t0, 434(s9)
                  lb           s1, 8(a7) #end load_store_instr_stream_2
                  lbu          t5, 14(s5)
                  lb           tp, -207(s9)
                  sh           a4, -91(s9) #end load_store_instr_stream_1
                  sb           s0, -15(s5) #end load_store_instr_stream_0
                  blt          gp, t4, 355f
                  srl          zero, s9, a4
                  sra          s3, a1, a3
                  bgeu         s5, t4, 350f
                  bgeu         t1, gp, 350f
                  beq          t6, t0, 361f
350:              bltu         a4, s7, 362f
                  bne          s10, sp, 358f
352:              lui          a3, 675499
                  bge          ra, t1, 358f
                  bgeu         a0, t4, 355f
355:              bgeu         ra, s4, 359f
                  srl          s10, s0, sp
                  sra          zero, a6, s2
358:              sub          s5, s1, s8
359:              slti         s5, t3, 1392
                  and          t6, a6, t0
361:              bge          t3, t6, 379f
362:              srli         a4, t6, 14
                  xor          t6, t4, a5
                  bgeu         a5, a7, 367f
                  addi         s3, a2, -555
                  slt          s4, t6, s7
367:              sra          s7, s2, a6
                  sub          s9, a6, s7
                  addi         s1, t4, -69
                  andi         zero, a7, 21
                  sltu         s3, tp, s4
                  slti         sp, s9, 909
                  srl          tp, t1, sp
                  or           ra, s9, s0
                  xori         s10, a4, -1071
                  bge          t4, a0, 390f
                  xor          tp, s2, a2
                  sra          a4, s6, a3
379:              sll          s1, s9, s4
                  srli         s0, a6, 13
                  bltu         s9, s4, 399f
                  ori          s7, t2, -236
                  srli         a5, a1, 14
                  bge          a1, a0, 390f
                  auipc        s4, 579715
                  bne          a0, s1, 403f
                  ori          a6, t5, -1053
                  ori          s6, t6, 180
                  bltu         s0, t3, 392f
390:              bltu         s11, s2, 396f
                  xor          s6, s7, t3
392:              sub          t6, t1, a7
                  bne          a2, tp, 411f
                  lui          tp, 126651
                  addi         t0, s10, -1347
396:              add          t1, a1, s11
                  slt          sp, tp, a6
                  bge          sp, a7, 406f
399:              sltiu        t0, s0, -808
                  xori         zero, gp, -1243
                  sra          s7, s3, s5
                  and          a2, zero, s0
403:              slli         a7, t4, 25
                  srl          t3, s9, s2
                  sll          tp, tp, a0
406:              auipc        s8, 144324
                  bne          a2, s4, 416f
                  bltu         t6, gp, 427f
                  lui          s5, 918455
                  srai         s9, s6, 24
411:              sll          a4, s0, gp
                  srai         a3, s1, 12
                  bgeu         s10, t1, 422f
                  xori         t6, t1, -1424
                  xori         a0, s2, 681
416:              bltu         s8, s9, 434f
                  xor          a7, a7, s7
                  slti         s1, tp, 25
                  sll          a0, s7, a6
                  bgeu         s5, t5, 425f
                  beq          t1, s4, 425f
422:              sll          s0, t6, s4
                  sltiu        t0, tp, 481
                  slti         t3, t3, 1431
425:              bge          s2, s5, 431f
                  sltiu        t0, t3, 1504
427:              auipc        tp, 486728
                  srai         t0, sp, 25
                  sltu         s10, sp, s3
                  or           s0, s10, s0
431:              bne          a2, t6, 448f
                  xor          a5, a1, t5
                  sub          s11, s4, a2
434:              srai         sp, a1, 26
                  sltiu        t2, t5, -1059
                  bge          sp, a7, 439f
                  sltiu        t0, t5, -639
                  slt          zero, s2, s11
439:              nop
                  or           s3, s8, s4
                  ori          t2, tp, -1180
                  sub          t3, s1, s0
                  nop
                  bne          s3, s3, 450f
                  sub          s7, zero, zero
                  slli         s11, s1, 19
                  or           s0, s11, s2
448:              slli         a4, gp, 6
                  add          t3, t5, t1
450:              xor          tp, s0, zero
                  srli         gp, t0, 26
                  sltu         a6, a7, a2
                  bltu         s3, tp, 458f
                  and          sp, s0, a0
                  bgeu         t4, t4, 469f
                  or           s3, s1, s3
                  auipc        t1, 914195
458:              blt          a5, s5, 476f
                  bgeu         s5, t5, 460f
460:              sll          s7, t4, s0
                  addi         sp, a4, -15
                  blt          s6, zero, 464f
                  addi         gp, t5, 2036
464:              ori          s10, ra, -1034
                  blt          a4, t6, 473f
                  bltu         s2, t5, 477f
                  or           a5, s6, a6
                  srai         s8, s1, 20
469:              or           a5, s10, a2
                  add          a6, s1, a3
                  andi         a2, s9, -1148
                  slt          s5, s1, s11
473:              beq          a2, a2, 480f
                  bgeu         a2, a2, 492f
                  andi         s4, a2, -365
476:              sub          t6, t2, t6
477:              slti         a7, a6, -2033
                  bne          s1, t5, 497f
                  or           t2, sp, s1
480:              bgeu         gp, zero, 492f
                  bgeu         s5, t6, 499f
                  xori         a7, a5, -283
                  srl          a4, a1, s3
                  srai         zero, s1, 2
                  ori          a5, s5, 677
                  lui          a7, 648568
                  auipc        s5, 893552
                  bne          s1, gp, 499f
                  ori          s6, a7, -1991
                  beq          gp, s7, 499f
                  slli         a2, t5, 10
492:              sub          a6, s4, gp
                  srli         s6, a1, 8
                  addi         gp, a7, 1943
                  addi         s8, a7, 1121
                  slt          sp, s3, t1
497:              auipc        t5, 664868
                  auipc        a4, 62018
499:              sll          t3, s9, s2
                  ori          s10, t3, -530
                  lw           ra, 4(a1)
                  add          zero, s4, sp
                  or           sp, s3, gp
                  andi         sp, t0, 768
                  addi         a1, a1, 44
                  slt          zero, a2, s0
978:              addi x8, x1, 1
978:              jalr x8, x8, 0
sub_2:            nop
                  auipc        a3, 11820
                  bne          a0, s8, sub_2_stack_p
sub_2_stack_p:    addi         a1, a1, -20
                  sw           ra, 4(a1)
                  nop
                  slti         t2, a4, -439
                  lui          a5, 787601
                  la           a2, region_1+988 #start load_store_instr_stream_1
                  la           a7, region_1+1875 #start load_store_instr_stream_0
                  lhu          t6, -88(a2)
                  sb           t0, 0(a7)
                  lb           s10, -14(a7)
                  lbu          s6, 118(a2)
                  sh           s0, -15(a7)
                  lb           tp, 13(a7)
                  lb           a5, 201(a2)
                  sb           s9, 125(a2)
                  sb           s9, -8(a7)
                  sb           a7, -103(a2)
                  lb           s5, 14(a7)
                  sw           t5, -7(a7)
                  lbu          s7, 12(a7)
                  sw           t1, -56(a2)
                  sb           a0, -157(a2) #end load_store_instr_stream_1
                  lbu          s4, -10(a7) #end load_store_instr_stream_0
                  la           s1, region_1+1338 #start riscv_load_store_rand_instr_stream_1
                  sltiu        s11, s3, 586
                  lui          s4, 686184
                  auipc        t2, 371217
                  ori          a2, s8, -1919
                  lb           s8, 29(s1)
                  lh           s10, 6(s1)
                  auipc        a5, 377892
                  sra          a3, s4, s1
                  add          s8, a3, ra
                  sb           s10, -19(s1)
                  sra          t5, s1, s10
                  sh           s10, -6(s1)
                  sltiu        t1, t6, -1120
                  sub          a7, s7, s5
                  lui          a5, 318906
                  sub          s6, s10, tp
                  sub          t2, s5, a7
                  slti         t2, t1, 1135
                  sb           a1, 47(s1)
                  auipc        a3, 589318
                  slt          t5, gp, a4
                  sb           a6, 11(s1)
                  ori          ra, t0, -705
                  nop
                  slli         t0, zero, 23
                  lui          a6, 88449
                  sb           a7, -58(s1)
                  sra          t5, a0, t2
                  add          t5, s10, s3
                  srli         s6, ra, 25
                  auipc        t5, 945460
                  sub          ra, t5, t6
                  auipc        t0, 278950
                  sb           s4, 19(s1)
                  xor          a0, t0, zero
                  srl          s4, a5, s0
                  lhu          s10, 28(s1)
                  or           t2, s6, t6
                  slt          s5, s2, s9
                  sb           a0, 14(s1) #end riscv_load_store_rand_instr_stream_1
                  la           tp, region_1+1204 #start load_store_instr_stream_1
                  la           gp, region_1+441 #start load_store_instr_stream_0
                  sb           a5, -16(tp)
                  lbu          s9, -167(gp)
                  sb           ra, -47(gp)
                  lb           a0, -10(tp)
                  lbu          a7, 2(tp)
                  lb           t5, -10(tp)
                  lbu          t5, 166(gp)
                  sb           t2, 5(tp)
                  sb           a2, 160(gp)
                  sb           s4, -210(gp)
                  lhu          t0, 14(tp)
                  sw           a0, -12(tp) #end load_store_instr_stream_1
                  sb           t0, 255(gp) #end load_store_instr_stream_0
                  la           sp, region_1+1897 #start riscv_load_store_rand_instr_stream_0
                  lh           t2, -13(sp)
                  lhu          a0, -9(sp)
                  addi         s8, s9, 1736
                  xor          s3, s11, sp
                  sra          zero, tp, a3
                  sltu         s4, a2, s11
                  sb           t6, 2(sp)
                  and          t2, t2, gp
                  sb           s9, -14(sp)
                  ori          t2, a7, 387
                  lbu          s3, 0(sp)
                  slti         a4, a3, 2007
                  lbu          s5, 10(sp)
                  xor          a0, tp, a1
                  sh           t3, 15(sp)
                  ori          s0, zero, 863
                  lbu          s8, 6(sp)
                  srai         a5, s3, 15
                  slti         a6, s7, -752
                  slt          a5, t4, a0
                  srl          s7, s5, t6
                  xor          a5, a1, t5
                  srai         t0, a6, 6
                  add          s8, tp, s6
                  lb           a3, 16(sp)
                  lb           a5, -2(sp)
                  lbu          s8, 5(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1779 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s4, -3(sp)
                  lbu          t5, -3(sp)
                  and          s4, t6, a0
                  lbu          a4, -3(sp)
                  sw           t0, -3(sp)
                  lw           a4, -3(sp)
                  lb           s9, -3(sp)
                  sh           s6, -3(sp)
                  sltu         t1, a5, a7
                  sh           s8, -3(sp)
                  srli         s4, a7, 28
                  sw           a5, -3(sp)
                  lbu          t6, -3(sp)
                  lw           t2, -3(sp)
                  sb           s0, -3(sp)
                  lhu          s6, -3(sp)
                  lh           s1, -3(sp)
                  sb           a2, -3(sp)
                  sh           s8, -3(sp)
                  sh           s2, -3(sp)
                  sb           s0, -3(sp)
                  sh           a5, -3(sp)
                  sw           sp, -3(sp) #end riscv_load_store_hazard_instr_stream_1
                  sltu         s5, a1, s6
                  blt          t5, t4, 4f
                  auipc        tp, 745644
                  or           zero, gp, a4
4:                blt          a1, s4, 17f
                  blt          a0, t3, 6f
6:                beq          zero, sp, 9f
                  sltiu        a7, s2, 111
                  nop
9:                auipc        s3, 618218
                  bne          a5, sp, 11f
11:               sub          zero, s5, a6
                  or           t0, s6, s10
                  slti         t1, t6, 1270
                  ori          s9, t3, -1984
                  add          t0, sp, s6
                  beq          s7, a5, 17f
17:               sra          s9, gp, s3
                  beq          s6, zero, 35f
                  lui          ra, 60502
                  slli         a4, t1, 21
                  bne          gp, tp, 25f
                  blt          s0, t2, 36f
                  bgeu         a0, t4, 26f
                  sltiu        ra, s5, -1131
25:               slti         t5, sp, -1899
26:               ori          s5, t1, 1431
                  srli         a3, s0, 7
                  blt          ra, s9, 39f
                  sll          a2, t6, a3
                  bltu         a2, t6, 35f
                  auipc        s1, 15394
                  and          a0, ra, a2
                  beq          ra, a7, 36f
                  bgeu         s9, a3, 39f
35:               bne          a5, s7, 40f
36:               sll          s1, t6, s0
                  bge          t5, s9, 38f
38:               and          t6, s7, s1
39:               sltiu        t1, s9, -1324
40:               bltu         s5, t4, 56f
                  ori          s7, t4, 1113
                  la           sp, region_0+711 #start riscv_load_store_hazard_instr_stream_0
                  lhu          s4, 1119(sp)
                  xor          a7, t4, s11
                  or           a2, a4, s0
                  sb           a3, 1119(sp)
                  lh           s1, 1119(sp)
                  srl          s8, s0, s3
                  sh           a5, 1119(sp)
                  lbu          s3, 1119(sp)
                  lbu          s8, 642(sp)
                  srai         a3, s5, 29
                  lb           a6, 642(sp)
                  lbu          s11, 642(sp)
                  lb           s11, -294(sp)
                  xori         t2, s1, -828
                  lbu          s8, -51(sp)
                  lb           a4, -51(sp)
                  sh           s7, -51(sp)
                  lhu          s8, -51(sp)
                  lb           t6, 278(sp)
                  sltu         gp, a5, s5
                  lbu          a6, 1068(sp)
                  lbu          s3, 1220(sp) #end riscv_load_store_hazard_instr_stream_0
                  slti         sp, s11, -2033
                  addi         s4, t2, -317
                  auipc        t1, 729720
                  sub          gp, t5, t3
                  ori          gp, a7, -1931
                  bltu         s3, s11, 51f
                  slti         s9, gp, -230
                  or           t6, t2, s3
                  addi         s11, s3, 1987
51:               slli         s6, s0, 8
                  bne          s2, t4, 63f
                  sltu         s0, t0, t2
                  addi         a5, t0, 732
                  ori          s9, a6, -1770
56:               bgeu         s10, s4, 59f
                  sltiu        tp, s3, -1846
                  bge          tp, tp, 61f
59:               bgeu         a4, a5, 78f
                  xor          zero, s8, s4
61:               or           s1, gp, s10
                  sub          t1, s6, a1
63:               slt          s1, s9, s5
                  lui          t6, 806243
                  srl          s6, s4, tp
                  or           tp, t0, s8
                  xor          s0, a0, s10
                  slti         ra, s4, -1030
                  sltiu        a0, sp, -588
                  bge          sp, gp, 85f
                  bgeu         s7, s3, 72f
72:               beq          gp, s0, 86f
                  srai         a0, a6, 20
                  xor          t6, a3, t2
                  srl          s10, s2, t4
                  srli         s1, t2, 17
                  xori         a6, a5, 2007
78:               auipc        zero, 391349
                  srli         s10, a4, 15
                  ori          t3, gp, -1916
                  ori          s1, t0, 1812
                  sltiu        t0, s2, -1972
                  bne          s7, gp, 88f
                  srli         a6, t0, 13
85:               and          s5, a6, gp
86:               srli         t0, a6, 18
                  andi         a6, s11, -777
88:               srl          tp, t0, a7
                  slt          a3, zero, t4
                  srl          a3, a4, a4
                  sltiu        a5, a0, -651
                  bltu         a3, s9, 100f
                  slti         s10, a0, -875
                  bgeu         s11, s8, 101f
                  sra          sp, s2, gp
                  nop
                  srl          s10, s9, s6
                  sra          t2, t5, t1
                  nop
100:              bltu         a1, s2, 111f
101:              ori          sp, a4, -1302
                  srli         t2, s8, 15
                  bge          s8, a6, 117f
                  sltu         t1, s2, s7
                  and          ra, t4, a4
                  add          s9, t6, s3
                  nop
                  beq          zero, s11, 111f
                  sltu         s4, a0, s5
                  bge          t3, t3, 124f
111:              or           s1, a2, a2
                  or           a6, a5, s4
                  xori         t6, s9, -1907
                  xori         a3, s8, -1914
                  sub          t5, t1, a7
                  add          t0, s10, gp
117:              slli         t1, t3, 18
                  xori         a6, s7, -805
                  xori         s8, a0, 1068
                  slti         sp, t5, 292
                  sltiu        s0, a7, -1079
                  srl          t1, s7, a5
                  ori          a0, t4, -86
124:              slt          t1, zero, s3
                  sra          t2, t1, t2
                  xor          t5, t4, s9
                  xori         sp, s3, 830
                  addi         a3, tp, 1873
                  slt          s10, s6, a7
                  blt          zero, t1, 133f
                  or           a2, a3, t0
                  srli         a7, a5, 20
133:              sub          s10, s1, s10
                  srl          s1, a5, s9
                  srli         s6, s5, 25
                  bltu         s0, s4, 143f
                  sltiu        sp, a0, -82
                  nop
                  xor          t3, a0, s2
                  bgeu         t6, s6, 145f
                  auipc        t3, 157442
                  sll          gp, a4, a4
143:              slti         tp, a4, 1682
                  slt          s4, a2, a0
145:              sub          t3, tp, a2
                  bltu         ra, t3, 147f
147:              add          a5, t2, s1
                  bgeu         t1, s3, 162f
                  lui          t1, 32576
                  and          a6, t5, s8
                  srli         a5, s4, 9
                  blt          s4, a7, 153f
153:              add          s5, a5, s11
                  beq          a0, s5, 157f
                  sltu         a5, s0, s1
                  add          a5, a1, zero
157:              beq          a0, a2, 172f
                  nop
                  srli         s9, ra, 31
                  slli         t1, t3, 5
                  sub          s10, a0, sp
162:              slt          a4, s2, s4
                  auipc        s11, 903700
                  slt          zero, s0, s1
                  blt          a0, s4, 168f
                  srl          s3, t3, ra
                  xori         a2, s2, 1090
168:              slti         t5, a2, -700
                  auipc        s5, 402209
                  slti         a2, s0, -927
                  sub          a0, a6, t2
172:              srai         a3, t1, 11
                  andi         a6, sp, -423
                  auipc        gp, 56244
                  and          gp, s2, a7
                  xor          s0, gp, t0
                  add          a3, a4, a3
                  srl          t5, s10, zero
                  auipc        a6, 514657
                  andi         t1, s6, 1849
                  bltu         zero, gp, 186f
                  addi         gp, tp, 634
                  xori         t0, a1, 65
                  sll          t5, s3, s0
                  ori          t2, a4, 1882
186:              or           s6, s6, s6
                  auipc        t3, 749555
                  sll          ra, a3, a2
                  sll          s7, t5, s10
                  srai         a2, a4, 24
                  slti         t0, t5, 35
                  sra          s7, t2, a1
                  slt          s7, s8, t3
                  slli         t5, sp, 16
                  andi         s10, t3, 152
                  bne          s6, s6, 199f
                  bge          s0, ra, 200f
                  srli         a4, s9, 19
199:              beq          s8, s3, 200f
200:              slli         s9, gp, 5
                  slt          a5, tp, t6
                  lw           ra, 4(a1)
                  nop
                  addi         a1, a1, 20
                  nop
                  add          tp, s2, a3
364:              addi x4, x1, 0
364:              jalr x4, x4, 0
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_2:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_3:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_4:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_5:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_6:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_7:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_8:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_9:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_10:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_11:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_12:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_13:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_14:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_15:
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
                  add x18, x11, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
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
                  add x18, x11, zero
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x31, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x31, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x31, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x31, x20, ecall_handler
                  li x20, 0x1
                  beq x31, x20, instr_fault_handler
                  li x20, 0x5
                  beq x31, x20, load_fault_handler
                  li x20, 0x7
                  beq x31, x20, store_fault_handler
                  li x20, 0xc
                  beq x31, x20, pt_fault_handler
                  li x20, 0xd
                  beq x31, x20, pt_fault_handler
                  li x20, 0xf
                  beq x31, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x11, x18, zero
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
                  add x11, x18, zero
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
                  add x11, x18, zero
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
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x11, x18, zero
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
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x11, x18, zero
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
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x11, x18, zero
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
