.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 1
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0x767b6c59
                  li x1, 0x8
                  li x2, 0x0
                  li x3, 0xf6b50ffd
                  li x4, 0xd5699657
                  li x5, 0xfdd98e82
                  li x6, 0xf85b98c7
                  li x7, 0x80000000
                  li x8, 0xb
                  li x9, 0x22475391
                  li x10, 0xa736da77
                  li x11, 0x4d35fe40
                  li x12, 0x0
                  li x14, 0x80000000
                  li x15, 0x2
                  li x16, 0xfd1fbbde
                  li x17, 0xc0b78325
                  li x18, 0x0
                  li x19, 0x5a0bcb56
                  li x20, 0xc
                  li x22, 0x2ef0733e
                  li x23, 0x0
                  li x24, 0xf718a322
                  li x25, 0xf4112f2e
                  li x26, 0x0
                  li x27, 0xfa5d1b18
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x7ba08431
                  li x31, 0x0
                  la x21, user_stack_end
main:             lui          a0, 509599
                  xori         a5, s6, -1648
                  sra          t3, t6, s4
                  la           tp, sub_1
                  xor          t3, ra, s11
                  auipc        zero, 27754
                  addi         tp, tp, -665
                  slli         a2, a7, 30
                  and          s1, t3, s0
                  slti         a6, a0, -1075
                  ori          t6, s8, 645
                  bne          s5, tp, main_j2 #branch to jump instr
                  and          zero, s10, t2
main_j2:          jalr         t1, tp, 666 #jump main -> sub_1
                  sub          s2, s3, a6
                  lui          s9, 103046
                  la           a1, sub_1
                  xor          s8, a2, sp
                  srai         s2, a4, 25
                  addi         a1, a1, 983
                  auipc        s9, 424038
                  bge          sp, s10, main_j3 #branch to jump instr
                  auipc        t2, 613908
main_j3:          jalr         t1, a1, -982 #jump main -> sub_1
                  la           a1, region_0+1990 #start load_store_instr_stream_1
                  la           gp, region_0+1221 #start load_store_instr_stream_0
                  sb           t3, 765(gp)
                  lb           zero, -83(a1)
                  lb           s4, -105(a1)
                  lw           s1, -853(gp)
                  lb           t4, -58(a1)
                  lh           t1, -232(a1)
                  lbu          t0, -791(gp)
                  lbu          a5, -163(a1)
                  lb           s11, 600(gp)
                  sb           t2, -209(a1)
                  sh           gp, 389(gp)
                  lhu          s9, -208(a1)
                  lw           a2, 487(gp)
                  sb           a7, 454(gp)
                  lh           a2, -252(a1)
                  sw           a5, -126(a1)
                  lb           a2, 158(gp)
                  lb           sp, -1000(gp)
                  lh           t6, -100(a1) #end load_store_instr_stream_1
                  sb           a2, -1066(gp) #end load_store_instr_stream_0
                  la           s8, region_0+1181 #start riscv_load_store_rand_instr_stream_0
                  add          s4, a2, t6
                  xori         a0, a5, -247
                  lb           s4, -250(s8)
                  sub          t1, a4, s1
                  add          t1, gp, s0
                  lbu          sp, 450(s8)
                  slt          t2, t6, s0
                  auipc        s10, 97142
                  sh           s11, -681(s8)
                  lbu          gp, 814(s8)
                  slti         a7, a3, -341
                  lhu          tp, -27(s8)
                  lbu          t0, -28(s8)
                  srai         a5, t1, 3
                  lui          a4, 192600
                  sll          s0, a0, a5
                  sb           s7, 66(s8)
                  add          s10, a0, a4
                  xori         a0, t0, -920
                  sltu         s4, a5, t5
                  xori         s6, tp, -1913
                  lhu          t0, 107(s8)
                  lb           s9, 658(s8)
                  lb           t1, -956(s8) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+796 #start riscv_load_store_hazard_instr_stream_0
                  lbu          t4, 199(sp)
                  slli         a2, a7, 10
                  nop
                  sh           tp, 242(sp)
                  lbu          s10, 242(sp)
                  sb           zero, -214(sp)
                  sb           s3, -33(sp)
                  sub          s3, a4, sp
                  sub          t2, t5, a4
                  sb           s4, -33(sp)
                  lb           t4, -33(sp)
                  lw           s1, -200(sp)
                  lh           t5, -200(sp)
                  xori         s4, s11, -225
                  lb           a6, 108(sp)
                  sb           s9, 27(sp)
                  sb           a7, 27(sp) #end riscv_load_store_hazard_instr_stream_0
                  add          a5, sp, t1
                  andi         s2, s11, -1898
                  addi         sp, s5, 637
                  addi         s8, a1, -323
                  sltiu        a7, t0, -1401
                  xor          s1, gp, t0
                  slt          a5, t2, a7
                  nop
                  sll          a1, ra, zero
                  slli         s9, a1, 17
                  lui          sp, 464845
                  sltiu        s4, s6, 1282
                  slti         s3, a7, -1829
                  srli         a0, t0, 19
                  sra          s2, gp, gp
                  bne          t0, t5, 28f
                  blt          t6, a3, 30f
                  blt          a4, s8, 34f
                  sltiu        a0, s6, 309
                  bne          a3, s6, 32f
                  xor          t0, s5, s7
                  xori         t1, s1, -30
                  sltiu        s0, t2, 739
                  sra          t6, s8, t2
                  lui          a1, 995941
                  slli         a2, s1, 15
                  slli         a5, zero, 30
                  blt          t1, s9, 43f
28:               ori          a0, a1, 1442
                  beq          s1, s9, 32f
30:               add          t3, a0, s0
                  bltu         s1, a0, 40f
32:               or           zero, s7, tp
                  bgeu         s2, a5, 51f
34:               slli         s4, t1, 16
                  srli         s4, a2, 12
                  nop
                  bge          t5, sp, 53f
                  addi         t3, t6, 138
                  nop
40:               sub          t2, a5, s2
                  bge          a4, s0, 60f
                  slli         t5, s2, 11
43:               bgeu         s6, a0, 58f
                  ori          s0, t4, 1068
                  srli         t5, ra, 13
                  ori          t0, s6, 1252
                  sltu         s4, t3, s10
                  or           s1, s9, s4
                  srl          s1, s11, t4
                  bne          s2, zero, 58f
51:               add          t2, a0, t6
                  xori         gp, s0, 1743
53:               add          s0, s2, s11
                  add          tp, s0, s6
                  sub          t1, a2, a3
                  blt          s5, gp, 67f
                  or           a4, zero, a5
58:               sltiu        s7, s2, 2030
                  lui          a7, 1026236
60:               auipc        sp, 306150
                  ori          sp, a0, 1597
                  and          gp, s11, s5
                  add          a6, t3, t3
                  nop
                  nop
                  sll          zero, s0, a7
67:               bge          s9, a6, 80f
                  addi         t2, s11, -912
                  ori          s4, s4, -1649
                  auipc        s9, 531043
                  or           tp, a3, t2
                  and          s0, s5, sp
                  slti         t5, a1, -98
                  bge          gp, a1, 92f
                  slti         a6, a6, 768
                  slt          s2, t3, a2
                  or           t4, s0, t4
                  sub          s1, t0, s9
                  slli         t1, s1, 14
80:               sub          s11, t4, a0
                  slti         s0, s5, -568
                  sltiu        s0, s3, -1326
                  and          t4, t2, s8
                  sltu         t4, a4, t6
                  xor          t4, s11, t0
                  add          a4, t4, s7
                  nop
                  slti         zero, s0, 13
                  la           s2, sub_2
                  addi         s2, s2, -486
                  add          a7, s5, a1
main_j1:          jalr         t1, s2, 487 #jump main -> sub_2
                  xori         a2, a5, 1976
                  and          t3, t2, a2
                  xor          a0, t5, s3
                  nop
                  blt          s4, a5, 105f
                  xori         sp, s9, 1797
                  add          t2, s4, s0
                  sub          t0, t2, a7
                  lui          s1, 98807
                  bgeu         s9, s3, 99f
92:               xori         s10, a4, 121
                  sub          s9, a6, s1
                  andi         s11, zero, -725
                  srai         s10, t0, 22
                  xori         s8, s2, -607
                  beq          s1, a5, 98f
98:               srai         t2, s9, 14
99:               xori         t6, s5, -1063
                  auipc        s0, 544963
                  bne          s3, s10, 110f
                  slli         s9, sp, 2
                  bgeu         s5, t3, 112f
                  sra          t6, a5, s10
105:              blt          ra, s0, 107f
                  bne          s10, a2, 111f
107:              andi         gp, ra, -1413
                  or           zero, a7, s7
                  andi         s9, a1, -1607
110:              and          s0, s3, s4
111:              xori         a4, t0, -1357
112:              slli         s9, a0, 23
                  sll          gp, sp, t0
                  srai         s9, t3, 17
                  bgeu         t3, s2, 120f
                  slt          s10, a0, a1
                  srli         t1, s6, 19
                  beq          s8, t4, 133f
                  andi         tp, s7, -1009
120:              slli         a5, a1, 17
                  sltiu        a7, s3, -402
                  lui          a5, 895507
                  and          s9, t2, t1
                  lui          zero, 390909
                  xori         t5, s4, -1005
                  sub          t1, t4, s3
                  srl          t4, s0, tp
                  slt          s9, s3, a0
                  ori          s3, a6, 749
                  bge          t6, s1, 150f
                  srl          t0, s7, s8
                  andi         a4, gp, -1011
133:              andi         t3, a5, -1841
                  addi         s10, t0, 2017
                  and          a2, t3, s3
                  sra          t5, tp, a1
                  bltu         t6, a5, 155f
                  slli         a5, sp, 9
                  auipc        a5, 206510
                  slt          s2, sp, s1
                  bgeu         a3, s4, 144f
                  bltu         t0, s7, 159f
                  lui          s1, 883644
144:              slt          s2, s3, a4
                  xori         s8, t3, 324
                  xori         gp, s3, -447
                  sub          t3, t0, s9
                  auipc        s9, 800241
                  xor          s10, s9, ra
150:              srl          s2, s6, s9
                  andi         s2, a1, 1975
                  slt          gp, t0, s11
                  ori          s7, s0, -1193
                  and          a2, s2, a5
155:              bgeu         s4, t6, 163f
                  sra          s0, t6, s10
                  bltu         a0, s0, 166f
                  and          sp, s5, t4
159:              bltu         t6, s4, 167f
                  sltu         sp, s5, s3
                  bge          t1, a1, 178f
                  sll          t4, ra, a3
163:              xori         sp, s8, 1575
                  xori         a7, a0, 1394
                  srl          a7, s5, t3
166:              blt          ra, t0, 169f
167:              lui          s0, 584728
                  lui          s8, 661133
169:              xor          s1, t6, s5
                  beq          a7, s0, 183f
                  slli         a0, a4, 16
                  beq          zero, s1, 173f
173:              srli         a1, s7, 25
                  srli         gp, a0, 11
                  addi         a5, t0, -461
                  slti         tp, ra, -1787
                  ori          a4, a6, 1070
178:              andi         a5, zero, -1766
                  lui          s1, 287654
                  ori          s6, t2, 1602
                  bltu         s4, tp, 183f
                  slli         a1, sp, 19
183:              sltu         s11, a6, a6
                  sll          t2, gp, s3
                  slti         s4, s2, 1021
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sub          s6, a1, a0
                  addi         s5, s5, -60
                  sltu         s9, s3, s3
                  sltiu        s1, sp, -1556
                  andi         t4, a7, 1215
                  xori         t3, s9, 2023
                  xori         t5, a3, 1257
                  sw           t1, 4(s5)
                  sll          t5, a0, s7
                  srai         s11, t5, 24
                  xori         a7, t5, 1430
                  auipc        t0, 172639
                  la           s9, region_0+897 #start load_store_instr_stream_0
                  lb           s3, 14(s9)
                  la           s1, region_0+1061 #start load_store_instr_stream_1
                  la           s11, region_0+1348 #start load_store_instr_stream_3
                  la           a1, region_0+1047 #start load_store_instr_stream_4
                  lhu          t1, -13(s1)
                  sb           s1, 12(s9)
                  lh           t5, -207(a1)
                  sh           s1, 9(s1)
                  la           a2, region_0+292 #start load_store_instr_stream_2
                  lbu          zero, 6(s1)
                  sb           s7, 2(s9)
                  lhu          a7, -58(a2)
                  lbu          s2, 5(s11)
                  lbu          t5, 179(a1)
                  sh           t0, -1(s1)
                  lb           a7, -10(s11)
                  sh           a4, 30(a2)
                  lb           a7, 14(s9)
                  lb           t0, 1(a1)
                  sb           a3, -10(s1)
                  lbu          a5, -6(s9)
                  lhu          a0, 16(s11)
                  lb           s7, -57(a2)
                  sb           s4, 110(a1)
                  sb           a1, 16(s11)
                  lbu          t5, -12(s9)
                  lbu          a7, 2(s9)
                  lb           s7, 26(a2)
                  lb           a6, 191(a1)
                  lbu          a5, 16(s11)
                  lbu          a4, 1(s9)
                  lbu          t1, -7(s11)
                  lb           t5, -6(s1)
                  lw           s10, -147(a1)
                  sb           sp, -5(s1)
                  lhu          s7, 1(s9)
                  lb           t2, -20(a1)
                  lbu          t0, -14(s1)
                  sb           s11, 33(a2)
                  lbu          tp, 0(s1)
                  sh           ra, 42(a2)
                  sh           a6, 6(a2)
                  sb           sp, -131(a1) #end load_store_instr_stream_4
                  sw           a2, 24(a2) #end load_store_instr_stream_2
                  lb           t2, -13(s11) #end load_store_instr_stream_3
                  sh           t5, 5(s1) #end load_store_instr_stream_1
                  lhu          s6, 13(s9) #end load_store_instr_stream_0
                  la           a5, region_0+769 #start load_store_instr_stream_1
                  lb           s6, 61(a5)
                  la           gp, region_0+292 #start load_store_instr_stream_0
                  sb           t6, -39(a5)
                  sb           t0, -61(a5)
                  lbu          s2, -58(a5)
                  sw           s10, -40(gp)
                  lhu          s8, -5(a5)
                  lbu          s0, 42(a5)
                  sb           s5, 27(gp)
                  lhu          s1, 34(gp)
                  lbu          a6, 8(a5)
                  lbu          t2, -53(gp)
                  lh           sp, 53(a5) #end load_store_instr_stream_1
                  sh           s10, -10(gp) #end load_store_instr_stream_0
                  la           sp, region_1+320 #start riscv_load_store_hazard_instr_stream_3
                  slli         t5, a4, 1
                  lhu          s8, -12(sp)
                  xor          a4, s10, s8
                  sb           a3, -12(sp)
                  lhu          s2, -12(sp)
                  sb           s8, -12(sp)
                  sw           s3, -12(sp)
                  sw           tp, -12(sp)
                  sw           t1, -12(sp)
                  lw           s10, -12(sp)
                  lui          t4, 154635
                  lbu          t1, -12(sp)
                  lh           a2, -12(sp)
                  slti         s6, s1, -1219
                  sb           t4, 25(sp)
                  srai         gp, t0, 28
                  sb           t3, 25(sp)
                  lb           s6, 25(sp)
                  sb           t0, 25(sp)
                  lb           s7, 25(sp)
                  lbu          t1, 25(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_0+1453 #start riscv_load_store_rand_instr_stream_3
                  lb           s8, -1007(sp)
                  lbu          t3, 294(sp)
                  sub          s6, gp, a5
                  slli         tp, a0, 12
                  nop
                  lbu          t3, -932(sp)
                  ori          s4, s7, -1884
                  sra          t2, t4, s1
                  sb           gp, -758(sp)
                  or           s8, t2, t6
                  nop
                  sltiu        zero, a5, -759
                  lhu          t5, 347(sp)
                  srl          a7, s8, a4
                  sb           t3, -170(sp)
                  lb           t2, -1306(sp)
                  sw           s10, 459(sp)
                  lui          tp, 63389
                  slli         t1, s0, 18
                  nop
                  lb           t4, -434(sp)
                  sb           t4, -623(sp)
                  lbu          s10, -219(sp)
                  add          a1, s10, s9
                  lb           t3, -971(sp)
                  lb           s8, 476(sp)
                  lhu          t0, 25(sp)
                  lh           s7, -1167(sp)
                  sh           t2, -1393(sp)
                  srli         s1, s5, 11
                  sltu         s8, a7, s5
                  lbu          s3, -1043(sp)
                  lb           s3, -659(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+692 #start riscv_load_store_rand_instr_stream_4
                  srl          s1, t2, s3
                  addi         s9, t3, -1068
                  sh           a5, 8(sp)
                  lb           s4, 49(sp)
                  slti         t4, a6, -1591
                  or           s2, s6, tp
                  lbu          tp, -22(sp)
                  sub          tp, a2, s1
                  slt          t2, t2, a7
                  xori         a4, ra, -36
                  auipc        a7, 227319
                  sltiu        t6, a0, 1642
                  addi         t2, t0, 423
                  slti         s7, a7, 955
                  lbu          a5, 47(sp)
                  xor          s1, t4, tp
                  lb           a5, 31(sp)
                  lhu          t1, 0(sp)
                  lb           a2, 3(sp)
                  slt          a0, zero, ra
                  lbu          s11, 6(sp)
                  nop
                  lbu          s0, 15(sp)
                  ori          tp, a5, -39
                  sb           s0, 2(sp)
                  sw           a3, -60(sp)
                  slli         s2, sp, 16
                  lbu          s7, 25(sp)
                  lbu          t4, 35(sp)
                  sll          gp, sp, gp
                  lbu          a1, -29(sp)
                  xori         s8, gp, 1322
                  srli         s2, t2, 20
                  sb           t4, 23(sp)
                  sra          zero, s10, t4
                  lbu          t2, -5(sp)
                  lb           t3, -22(sp)
                  sltiu        s4, t6, -1325
                  lb           t6, -1(sp)
                  slt          s10, a6, zero
                  sb           a3, -20(sp)
                  sra          s8, s4, t2
                  sb           t5, -54(sp)
                  lhu          s1, 18(sp)
                  ori          a6, tp, 904
                  slt          s1, a0, a4
                  lw           gp, 56(sp)
                  sb           t4, -2(sp)
                  xori         zero, a2, -1083
                  lbu          s0, -51(sp)
                  lb           a1, -19(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a6, region_1+1083 #start load_store_instr_stream_1
                  la           s11, region_1+1274 #start load_store_instr_stream_2
                  sb           s8, 447(a6)
                  lhu          s2, -2(s11)
                  sb           s8, -6(s11)
                  la           s4, region_1+1535 #start load_store_instr_stream_0
                  lb           s6, 302(a6)
                  sb           a1, 286(s4)
                  sb           s8, -846(a6)
                  lb           s6, -3(s11)
                  lb           s7, 6(s11)
                  lb           s10, 124(a6)
                  lbu          tp, 325(s4)
                  lbu          tp, -15(s11)
                  sb           gp, -121(s4)
                  lhu          s2, 12(s11)
                  lb           t3, -82(a6)
                  lb           a4, 330(s4)
                  sb           a5, -864(a6) #end load_store_instr_stream_1
                  sb           a1, -5(s11) #end load_store_instr_stream_2
                  lh           a5, -31(s4)
                  lbu          a0, -1441(s4) #end load_store_instr_stream_0
                  la           a5, region_1+23 #start riscv_load_store_hazard_instr_stream_4
                  sb           zero, -15(a5)
                  sh           zero, -15(a5)
                  sw           s7, -15(a5)
                  sw           a1, -15(a5)
                  sw           t5, -15(a5)
                  srl          a4, s10, s10
                  sb           t3, -8(a5)
                  addi         tp, s11, 1740
                  lb           s9, -8(a5)
                  lbu          s11, -8(a5)
                  lbu          s1, -8(a5)
                  sb           a3, -8(a5)
                  sb           t4, -8(a5)
                  lbu          s4, -2(a5)
                  lbu          t1, -2(a5)
                  add          s0, s8, a0
                  sb           a1, -2(a5)
                  lbu          s4, 0(a5)
                  lbu          t2, 0(a5)
                  sb           s0, 0(a5)
                  sb           t3, 0(a5)
                  sh           a4, 11(a5) #end riscv_load_store_hazard_instr_stream_4
                  la           sp, region_0+828 #start riscv_load_store_rand_instr_stream_1
                  sb           s4, 11(sp)
                  sb           s6, -9(sp)
                  andi         s10, t2, 1767
                  xor          s9, a0, a6
                  lhu          t2, 4(sp)
                  nop
                  lb           t6, -9(sp)
                  lb           t0, 15(sp)
                  slt          t0, t1, s11
                  sltu         t5, a0, t1
                  lb           a4, -14(sp)
                  srai         s7, a2, 25
                  sra          a4, s11, t2
                  lb           s11, -14(sp)
                  slli         a2, s2, 29
                  slt          s7, a5, a7
                  sb           a2, 8(sp)
                  lbu          gp, 9(sp)
                  lhu          a4, 10(sp)
                  lui          a1, 265536
                  slt          s8, t4, s0
                  sw           s5, 8(sp)
                  srl          t5, a0, gp
                  lbu          t5, 9(sp)
                  andi         s9, a4, 252
                  nop
                  xor          t5, a2, sp
                  or           s3, t1, sp
                  lbu          s6, 5(sp)
                  slt          a4, t0, s6
                  ori          t2, s3, 554
                  lw           s9, 16(sp)
                  sb           s9, -4(sp)
                  slli         s0, t5, 11
                  ori          t6, t0, -1298
                  andi         a5, s3, -583
                  lh           t6, -16(sp)
                  sub          zero, a5, s3
                  sll          a7, t5, s3
                  sb           s8, 16(sp)
                  nop
                  sltu         s10, t4, s10
                  lhu          t5, 12(sp)
                  sltiu        s1, a6, -1359
                  lbu          s9, -5(sp)
                  sb           t6, 7(sp)
                  lb           a7, -3(sp)
                  lh           t2, -8(sp)
                  lhu          t2, -8(sp)
                  and          s11, s9, a4
                  lhu          t0, 2(sp)
                  lbu          t1, 14(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t0, region_1+36 #start riscv_load_store_rand_instr_stream_0
                  lb           a5, -12(t0)
                  lbu          a7, -14(t0)
                  lb           s10, -9(t0)
                  sw           s1, 16(t0)
                  auipc        s10, 602081
                  lh           s0, -16(t0)
                  lh           s0, -2(t0)
                  lh           s8, -14(t0)
                  and          s3, a4, t6
                  lui          t4, 738589
                  and          s6, s3, a4
                  ori          s10, s2, 1491
                  sra          t3, s10, s5
                  srli         t4, a2, 6
                  srai         a2, s11, 3
                  slti         a0, t0, -224
                  lb           s10, -11(t0)
                  andi         t6, t6, -1184
                  lb           s1, -2(t0)
                  xori         s7, s7, -807
                  add          t1, t5, s1
                  lb           t6, 11(t0)
                  xor          zero, a4, sp
                  srli         a1, t3, 17
                  lb           a4, 9(t0)
                  sb           s1, 2(t0)
                  sll          t5, t5, s3
                  lb           t6, 9(t0)
                  or           s0, s1, t5
                  lb           sp, -8(t0)
                  lb           t1, 13(t0)
                  lbu          t5, -6(t0)
                  sra          t1, s8, a2
                  sb           s8, 5(t0)
                  srli         s7, s11, 25
                  lbu          s11, 13(t0)
                  lhu          t4, -16(t0)
                  sb           s2, 9(t0)
                  add          a1, a4, s4
                  sb           t1, -7(t0)
                  lh           t2, -16(t0)
                  sltiu        s0, a5, -1449
                  slli         s6, s6, 19
                  or           a4, t0, t4
                  add          a5, t4, a0
                  lui          a4, 98474
                  sub          s10, t3, t6
                  slt          sp, a6, a5
                  srli         s1, s4, 25
                  slt          t3, t6, gp
                  lb           zero, -1(t0)
                  sra          t3, a1, t4
                  xori         t2, s9, 821
                  sb           a2, 11(t0) #end riscv_load_store_rand_instr_stream_0
                  la           s2, region_0+1241 #start riscv_load_store_hazard_instr_stream_2
                  lbu          a7, -62(s2)
                  lb           a4, -62(s2)
                  sb           s0, -62(s2)
                  sb           t4, 55(s2)
                  lw           s1, 55(s2)
                  lbu          t6, 55(s2)
                  lh           t2, 55(s2)
                  xor          s0, s1, s8
                  lw           a6, 55(s2)
                  lh           s1, 55(s2)
                  sb           gp, -9(s2)
                  lhu          a5, -9(s2)
                  add          a7, sp, a1
                  lw           s11, -9(s2)
                  add          t2, s3, t0
                  lh           tp, -9(s2)
                  sb           t5, -9(s2)
                  lw           s6, -9(s2)
                  lb           sp, -9(s2)
                  sb           t3, -9(s2) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+1785 #start riscv_load_store_rand_instr_stream_2
                  lbu          gp, 24(sp)
                  sb           zero, -32(sp)
                  lbu          s1, -59(sp)
                  sb           a1, 18(sp)
                  nop
                  lbu          s6, 34(sp)
                  slt          a1, s7, a0
                  and          a1, a0, tp
                  lb           a0, 50(sp)
                  srl          s4, a7, ra
                  sltiu        zero, ra, 1666
                  sll          s1, s5, t4
                  sb           t3, 4(sp)
                  auipc        s6, 171310
                  srl          a5, t0, s10
                  lbu          a5, -26(sp)
                  sltiu        zero, s2, -700
                  add          s6, s11, a0
                  lbu          s3, 43(sp)
                  slti         s9, gp, 1206
                  nop
                  or           s7, a2, s3
                  slti         s9, zero, -1666
                  auipc        t1, 668207
                  lbu          t2, 28(sp)
                  sw           s11, -49(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t1, region_0+568 #start load_store_instr_stream_1
                  lbu          s2, -488(t1)
                  la           s7, region_0+853 #start load_store_instr_stream_0
                  lbu          t5, -329(t1)
                  lb           t6, -15(s7)
                  lbu          a1, 1105(t1)
                  sh           s7, 442(t1)
                  sb           s0, 737(t1)
                  lbu          a2, -8(s7)
                  lb           s11, -8(s7)
                  lbu          s8, -460(t1)
                  sb           ra, 10(s7)
                  lbu          a1, 387(t1)
                  lhu          s3, -5(s7)
                  sb           a6, 775(t1) #end load_store_instr_stream_1
                  sw           sp, -1(s7) #end load_store_instr_stream_0
                  la           s6, region_1+435 #start load_store_instr_stream_4
                  la           s11, region_1+1021 #start load_store_instr_stream_1
                  la           a1, region_1+588 #start load_store_instr_stream_2
                  lbu          a4, -6(s6)
                  sw           s0, 463(s11)
                  la           s9, region_1+401 #start load_store_instr_stream_3
                  lb           t4, -320(s11)
                  sb           sp, -52(s9)
                  la           t1, region_1+888 #start load_store_instr_stream_0
                  sb           a0, 27(s6)
                  lw           a4, 499(s11)
                  lbu          s1, 2(t1)
                  sb           a2, -2(t1)
                  sh           t1, 21(s9)
                  lb           a6, 38(s6)
                  lb           t6, 7(s9)
                  lb           a0, 9(a1)
                  lb           a6, 542(s11)
                  lbu          t5, 38(s6)
                  sb           a7, -434(s11)
                  lb           a0, 9(t1)
                  lbu          s2, -411(s11)
                  sb           a5, 26(s6)
                  lb           s1, -6(t1)
                  lb           t3, 60(s9)
                  lb           s3, 302(s11)
                  sh           t6, -10(t1)
                  lhu          t5, -8(a1)
                  sb           a7, 64(s6)
                  lh           a4, -14(t1)
                  lb           t4, 7(a1)
                  lb           t2, -15(t1)
                  lbu          t5, 16(t1)
                  lw           s8, -317(s11)
                  sb           sp, 8(s9)
                  lb           a4, -36(s9)
                  sb           a4, -843(s11)
                  lh           a0, -2(t1)
                  sw           s11, 12(a1)
                  sb           t4, 898(s11) #end load_store_instr_stream_1
                  lw           zero, -16(a1) #end load_store_instr_stream_2
                  lh           s10, -9(s6)
                  sb           a5, -45(s6) #end load_store_instr_stream_4
                  lhu          zero, -5(s9) #end load_store_instr_stream_3
                  lb           s8, 1(t1) #end load_store_instr_stream_0
                  la           t6, region_1+1866 #start riscv_load_store_hazard_instr_stream_0
                  lbu          zero, -129(t6)
                  lbu          a5, -129(t6)
                  sb           s3, -129(t6)
                  lbu          s7, -129(t6)
                  lb           a4, -129(t6)
                  lb           a7, -129(t6)
                  lbu          s9, -129(t6)
                  and          s10, a0, t0
                  lb           t4, -129(t6)
                  lb           a5, -129(t6)
                  sb           tp, -129(t6)
                  lb           s4, -129(t6)
                  lb           a7, -129(t6)
                  xor          zero, t2, s11
                  lbu          sp, -129(t6)
                  srl          s9, a2, a2
                  lbu          zero, -129(t6)
                  sb           s2, -129(t6)
                  lbu          s11, -129(t6)
                  lbu          t4, -129(t6)
                  lb           t3, -129(t6) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+365 #start riscv_load_store_rand_instr_stream_5
                  slli         a6, t2, 25
                  auipc        t4, 89653
                  xori         zero, a7, 215
                  srli         s10, a6, 19
                  sltu         a1, zero, t5
                  andi         a0, s8, 80
                  sb           t4, 8(sp)
                  sw           s2, 19(sp)
                  or           a7, s6, s10
                  lb           a1, -49(sp)
                  sltiu        s6, s8, 1541
                  auipc        t4, 258396
                  lbu          t0, -4(sp)
                  lhu          t4, 3(sp)
                  addi         s9, a4, -660
                  lb           s6, -35(sp)
                  and          zero, a6, t0
                  lb           t6, 58(sp)
                  sb           s5, -51(sp)
                  lb           s9, 62(sp)
                  lhu          t4, -59(sp)
                  sltu         tp, a3, a4
                  lui          a2, 132786
                  sll          t4, a1, t1
                  lw           s11, 27(sp)
                  sra          zero, s3, s2
                  lw           t0, -29(sp)
                  srl          s9, a5, a0
                  lhu          t3, -49(sp)
                  sh           s10, 37(sp)
                  sw           a2, 11(sp)
                  lb           s10, -16(sp)
                  lbu          gp, -58(sp)
                  lbu          gp, -52(sp)
                  sb           t4, 9(sp)
                  lbu          s9, -4(sp)
                  lb           a1, -56(sp)
                  ori          tp, a6, 1464
                  sb           a5, 47(sp)
                  lhu          a5, -55(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+439 #start riscv_load_store_hazard_instr_stream_5
                  sw           t3, 901(sp)
                  addi         a5, s8, -821
                  or           s4, t3, a2
                  sb           s8, 901(sp)
                  srli         s0, ra, 16
                  lbu          t5, 901(sp)
                  slti         s9, s11, 1545
                  add          s7, a2, s8
                  ori          s10, t2, 1297
                  lbu          t4, 433(sp)
                  sw           s4, 1265(sp)
                  lb           s7, 1265(sp)
                  nop
                  lb           t3, 205(sp)
                  lbu          a7, 135(sp)
                  lbu          a7, 1094(sp)
                  lb           s0, 669(sp) #end riscv_load_store_hazard_instr_stream_5
                  bne          s5, a7, 10f
                  and          s0, s3, s0
                  sltu         tp, t6, a6
                  blt          s2, s7, 18f
                  slti         a0, s1, 1303
                  beq          a1, t1, 16f
                  add          a6, s11, s4
                  lui          s8, 576119
                  nop
                  sra          a2, a2, a4
10:               auipc        s8, 162535
                  bne          t2, s3, 26f
                  srai         s8, s6, 12
                  blt          s7, gp, 25f
                  beq          t1, a5, 27f
                  bltu         s5, s4, 24f
16:               srai         s7, s2, 26
                  bge          s6, a5, 18f
18:               blt          s2, t1, 36f
                  and          a6, s2, s6
                  sll          s9, a0, s10
                  and          s11, s10, s11
                  blt          t1, a7, 23f
23:               xori         s3, a5, 1477
24:               or           a4, ra, t5
25:               blt          s9, s6, 42f
26:               srl          tp, t4, s11
27:               beq          s6, a3, 46f
                  andi         a1, a6, 1848
                  and          gp, s2, s8
                  sub          t3, a2, a5
                  xori         t4, a3, 224
                  sltiu        s1, a5, -1804
                  xor          s6, t4, s10
                  ori          a0, s2, 225
                  bltu         s1, sp, 52f
36:               sll          s1, s6, s7
                  bge          a5, sp, 57f
                  srai         s11, s10, 1
                  xor          a1, s5, tp
                  sub          a6, a4, a2
                  nop
42:               add          s0, a2, sp
                  blt          s2, sp, 61f
                  nop
                  slli         s9, t5, 10
46:               and          zero, a0, t3
                  xor          t1, a4, tp
                  xor          t6, a0, s8
                  xor          s6, s9, s3
                  slli         t0, s9, 27
                  sra          tp, s10, t0
52:               bne          tp, a6, 59f
                  srl          a5, s11, t0
                  nop
                  bgeu         ra, s9, 71f
                  bgeu         a5, s5, 75f
57:               xor          a0, tp, t6
                  bgeu         t1, zero, 75f
59:               auipc        a6, 938368
                  add          t6, s6, a6
61:               bne          s9, a0, 74f
                  sra          a5, s5, t2
                  sltu         zero, a1, a5
                  bne          a1, sp, 71f
                  and          t5, a6, t4
                  andi         t5, s6, 1268
                  slli         s1, s7, 15
                  nop
                  sra          a1, sp, a0
                  bltu         s11, t2, 88f
71:               bltu         tp, a7, 82f
                  andi         a1, s11, 861
                  or           s2, s3, s9
74:               addi         tp, zero, 825
75:               nop
                  and          t2, a1, t5
                  and          a1, s6, t1
                  sra          a4, t6, s10
                  sltu         t6, s9, s6
                  nop
                  sub          zero, a4, a4
82:               sltu         a4, a4, s8
                  bne          t2, s11, 86f
                  srai         a1, a1, 16
                  andi         a2, sp, 416
86:               sll          a5, sp, s11
                  blt          a0, s9, 99f
88:               auipc        t6, 172660
                  slli         gp, s6, 24
                  bgeu         s7, s9, 104f
                  sltiu        a0, s2, 1514
                  lui          zero, 730170
                  sub          zero, t0, a0
                  bltu         tp, s7, 111f
                  ori          t4, s2, -929
                  sub          a2, a1, s7
                  andi         a0, zero, -1413
                  xori         a4, t5, 1805
99:               sub          s11, a7, s4
                  slti         t0, tp, -199
                  srli         t4, s2, 24
                  auipc        zero, 444835
                  sll          t2, s1, s2
104:              bltu         t2, s10, 106f
                  slti         t5, s11, -1368
106:              bgeu         s7, s5, 114f
                  sra          t1, s11, t1
                  bge          a5, t5, 118f
                  slti         s8, s4, 285
                  nop
111:              andi         tp, t5, -1228
                  xori         s2, a5, -921
                  bge          t3, s9, 130f
114:              slt          a4, a2, t1
                  sra          a4, ra, sp
                  xor          s10, t5, s8
                  lui          a1, 674207
118:              xor          tp, gp, a4
                  sltiu        tp, s8, -1815
                  nop
                  slt          t1, tp, tp
                  bgeu         a3, a2, 129f
                  sltu         t1, a5, t6
                  and          a2, t3, s7
                  lui          t2, 427125
                  sltu         s10, s11, t3
                  slti         s7, t3, 359
                  add          a7, zero, s8
129:              bltu         gp, a1, 144f
130:              sltiu        zero, s8, -754
                  addi         s7, s2, 1986
                  xori         s2, s6, 363
                  lui          s3, 184183
                  lui          sp, 734713
                  auipc        s10, 259739
                  sll          s3, s9, a7
                  srli         s6, a0, 28
                  sra          t4, a2, a3
                  sra          t0, s4, t2
                  sub          s0, s11, s1
                  srli         a2, a4, 3
                  or           a2, a3, s1
                  sltiu        t0, a0, 1344
144:              xori         s1, a1, -1024
                  slli         t4, a2, 14
                  bge          t2, s7, 147f
147:              xori         t6, s5, -1824
                  andi         a7, a3, 139
                  xor          s0, s5, s7
                  slti         s2, zero, 1518
                  slti         a5, a1, -890
                  auipc        a0, 450446
                  xori         s8, t5, -1165
                  nop
                  blt          a7, t6, 168f
                  slt          s9, a3, t1
                  sub          s10, t6, t2
                  bgeu         tp, tp, 167f
                  sll          t3, a0, s5
                  sll          s3, t2, a0
                  lui          s7, 709372
                  srai         a7, t2, 0
                  addi         a5, a2, 1761
                  lui          t5, 966697
                  slli         a4, t6, 25
                  ori          s8, tp, 1402
167:              add          t5, a7, t2
168:              bgeu         t2, t4, 170f
                  ori          a0, s7, 1300
170:              beq          a2, s0, 185f
                  xor          zero, s7, a0
                  blt          t3, t1, 185f
                  bgeu         a3, t5, 184f
                  srl          t3, a3, a4
                  and          a1, a6, gp
                  or           t2, t0, sp
                  nop
                  or           t0, s10, s7
                  sra          t6, s5, tp
                  addi         zero, s0, 2024
                  sra          t5, a4, s5
                  sltiu        s9, s0, 1589
                  auipc        s8, 199332
184:              sltu         a7, t3, a2
185:              andi         s7, zero, 1119
                  ori          s8, s1, 883
                  xor          s9, s1, s0
                  bgeu         s2, a2, 198f
                  xori         zero, s11, 1663
                  or           a4, s8, t6
                  andi         a6, a4, -574
                  blt          a2, a1, 209f
                  xori         t4, gp, 565
                  bne          a4, ra, 197f
                  srai         t5, sp, 31
                  or           t0, a4, t0
197:              xori         s6, s2, 1570
198:              lui          a7, 901686
                  slli         t1, s5, 2
                  nop
                  or           t0, t5, s0
                  ori          a0, tp, 1429
                  slti         s10, a4, 27
                  beq          s8, s10, 224f
                  slli         t3, s9, 25
                  and          a1, a1, a3
                  slli         s2, s5, 12
                  beq          ra, a7, 225f
209:              add          s6, a0, s1
                  lui          t5, 80546
                  andi         s1, s10, -484
                  slt          t2, a0, t1
                  slti         gp, a7, 1704
                  sll          t6, a2, a5
                  slti         gp, t6, 2018
                  add          a7, t3, a5
                  sra          gp, a4, s3
                  sub          a6, t3, a2
                  srli         s7, t2, 9
                  sll          s3, t0, s2
                  srl          t4, a0, s1
                  bgeu         s9, s10, 240f
                  srai         t3, s10, 25
224:              slti         t3, s2, 1187
225:              or           t2, s7, a7
                  sub          t5, a2, t6
                  andi         a0, s10, -689
                  andi         gp, s0, -1443
                  andi         t1, s6, 1627
                  slti         gp, a7, -1447
                  ori          s8, t1, 897
                  srli         a2, tp, 16
                  beq          a2, ra, 245f
                  sll          t2, s10, s4
                  sub          a5, t1, ra
                  srli         a2, t1, 3
                  srl          s8, zero, s6
                  sub          zero, a1, gp
                  ori          sp, t1, -735
240:              sltiu        s10, t1, 53
                  blt          t4, a5, 258f
                  bne          a7, t1, 243f
243:              srl          s6, a2, a3
                  nop
245:              bge          s7, tp, 264f
                  sltu         sp, s1, s7
                  sra          s4, s3, s0
                  add          a7, t4, sp
                  ori          s0, a4, -2021
                  add          t0, s1, t0
                  la           sp, region_1+465 #start riscv_load_store_hazard_instr_stream_1
                  lw           a6, -61(sp)
                  lui          s8, 116198
                  and          s10, a1, s6
                  sll          a5, s1, s9
                  lhu          a6, -61(sp)
                  lb           t1, -244(sp)
                  lbu          s10, -134(sp)
                  lw           t4, 95(sp)
                  sh           s0, -199(sp)
                  lb           s2, -199(sp)
                  sb           s10, -95(sp)
                  lbu          s4, -95(sp)
                  or           s7, s2, s6
                  andi         s1, s4, -1880
                  sb           s1, -153(sp)
                  srl          s11, t1, t3
                  xori         t0, a0, 632
                  lh           a0, -153(sp) #end riscv_load_store_hazard_instr_stream_1
                  ori          s11, t2, 790
                  auipc        a7, 372831
                  slli         a6, a6, 28
                  bne          t2, s2, 272f
                  xor          tp, s4, s11
                  or           t1, t3, s10
                  or           a0, s0, s5
258:              sra          t1, s3, t1
                  xor          zero, s10, t3
                  bgeu         s2, a4, 271f
                  bne          t3, s11, 268f
                  sll          zero, s0, a1
                  srl          s7, t2, s6
264:              andi         s1, a5, 1417
                  blt          a5, a4, 279f
                  ori          s3, s4, 1236
                  bgeu         t4, a2, 283f
268:              srli         s9, a2, 29
                  blt          s1, t6, 277f
                  add          a1, s10, a4
271:              ori          a6, t2, 1056
272:              lui          a5, 563135
                  sll          s9, s2, zero
                  auipc        t4, 315756
                  slti         s0, a2, 1614
                  slti         a2, tp, 1718
277:              beq          s7, s8, 287f
                  nop
279:              srai         a2, a5, 18
                  sltiu        s8, t4, 56
                  srai         s0, t0, 30
                  and          tp, ra, s11
283:              srl          a2, t1, a4
                  ori          tp, s4, -75
                  sltu         a0, t2, t1
                  slt          s10, s9, t2
287:              srai         a7, s3, 7
                  srl          t0, t3, s9
                  bne          a7, ra, 308f
                  sltiu        t2, a7, -283
                  blt          t6, a6, 309f
                  bgeu         a4, a3, 304f
                  or           s4, tp, s9
                  srli         gp, t4, 6
                  or           a2, a3, t5
                  xor          a5, t4, a5
                  bltu         s6, t5, 311f
                  addi         a6, ra, 1896
                  sra          s0, ra, s1
                  bge          zero, a6, 307f
                  srai         gp, s8, 0
                  srai         t4, a3, 15
                  ori          s7, a2, -1550
304:              bne          a1, a3, 321f
                  auipc        s10, 92855
                  nop
307:              xori         s10, s9, -195
308:              addi         a4, a2, -2023
309:              sltiu        s0, s4, -1508
                  bge          s8, a6, 323f
311:              xor          s8, s11, gp
                  sltu         s6, s2, tp
                  sra          sp, s0, a1
                  beq          t0, a7, 332f
                  slti         t2, s9, 62
                  xori         a5, s9, -758
                  ori          a5, a1, 1981
                  bgeu         s7, a0, 329f
                  srli         a7, s3, 13
                  auipc        t3, 446990
321:              bge          s10, a5, 338f
                  xor          s2, s4, t1
323:              bgeu         s6, s10, 326f
                  bltu         s4, t0, 339f
                  addi         s8, t4, -644
326:              sltiu        s6, tp, -819
                  xori         a6, s2, -535
                  sub          s7, tp, s3
329:              sra          s10, s6, a6
                  auipc        a5, 776608
                  and          s8, zero, t3
332:              sub          s3, a2, s2
                  or           sp, s4, s9
                  and          s9, t0, gp
                  slti         a1, tp, -184
                  bge          s8, t5, 347f
                  sub          tp, a3, s5
338:              or           t5, a1, t5
339:              or           a1, t5, sp
                  ori          s1, t0, -1882
                  lui          s11, 129813
                  srai         gp, a1, 15
                  and          t1, s10, s0
                  bge          sp, s0, 345f
345:              srli         a6, zero, 16
                  or           s9, t1, sp
347:              sll          s11, zero, a0
                  beq          a7, s1, 361f
                  srl          s10, a0, t3
                  bge          zero, a1, 369f
                  srai         t6, t2, 9
                  xori         s6, s3, -1210
                  addi         a4, a4, -118
                  nop
                  slt          a7, zero, a6
                  add          s1, a0, s9
                  and          a6, a7, s10
                  srli         tp, s10, 4
                  nop
                  ori          a0, a7, -2022
361:              lui          t1, 675021
                  sltiu        s0, t1, -1818
                  sltiu        t5, s9, -231
                  xor          s6, gp, t2
                  beq          sp, s9, 377f
                  xor          t6, t0, s11
                  sub          gp, s6, gp
                  slt          s10, s1, s3
369:              addi         t6, a0, -705
                  lui          t5, 627301
                  xori         s9, a6, -47
                  srli         t2, s0, 19
                  slti         tp, s5, 755
                  slt          t5, a2, s0
                  blt          s5, s9, 392f
                  bltu         t6, t1, 392f
377:              or           s6, t6, t6
                  lui          zero, 685712
                  andi         s7, s1, 403
                  andi         s4, t3, 1466
                  xor          t6, s1, s0
                  bge          t1, a1, 394f
                  slli         s0, t2, 14
                  sub          a1, s0, s0
                  srl          s11, s3, a3
                  slt          a4, s10, t1
                  srli         a6, s11, 14
                  slli         a6, a4, 4
                  lui          a6, 905425
                  slt          a1, a5, zero
                  xor          s0, a1, t1
392:              slli         gp, t6, 26
                  sltiu        t0, s0, 1375
394:              lui          t6, 944187
                  xor          t6, s9, t5
                  xor          s3, t6, s7
                  sll          t1, s2, ra
                  ori          tp, t4, 1671
                  lui          t1, 77396
                  sltu         a5, sp, t1
                  blt          s11, zero, 420f
                  bne          zero, tp, 419f
                  auipc        t1, 126056
                  slt          t1, t6, s10
                  bne          a3, a1, 415f
                  sub          a4, s0, tp
                  sub          a2, s4, gp
                  slt          t6, s11, a6
                  sltu         s4, t3, ra
                  or           s8, s6, tp
                  bne          a7, a7, 420f
                  addi         t4, t2, -1683
                  auipc        s2, 773361
                  slt          gp, a5, s2
415:              or           s6, t2, t2
                  blt          zero, a4, 417f
417:              nop
                  blt          s2, t4, 436f
419:              lui          s4, 647554
420:              sltu         s3, zero, s4
                  srai         a6, a6, 29
                  xor          a6, s3, s11
                  addi         t5, s1, 1722
                  beq          a7, s10, 442f
                  slt          s9, ra, s3
                  lui          s3, 460296
                  beq          s9, a5, 434f
                  xori         s4, gp, -796
                  srli         s9, ra, 23
                  and          s4, a6, t1
                  sub          tp, sp, s5
                  beq          a1, t1, 434f
                  slti         a7, a6, 8
434:              add          t4, t2, ra
                  beq          ra, t6, 450f
436:              slti         a1, ra, -239
                  beq          gp, s10, 447f
                  sltiu        t2, s7, 1008
                  srl          a0, t1, tp
                  addi         sp, a0, -206
                  nop
442:              srai         a7, zero, 1
                  blt          s4, a3, 451f
                  srai         t0, t1, 30
                  or           s0, a0, s6
                  auipc        s0, 483209
447:              bne          s8, s5, 467f
                  lui          tp, 66287
                  sltiu        s10, t4, -610
450:              ori          s11, s8, 749
451:              srl          s0, gp, s2
                  slti         s9, s8, 453
                  sltiu        sp, t4, 305
                  srl          s10, a7, s5
                  andi         s4, a5, -3
                  andi         s11, gp, 1611
                  srli         sp, t3, 14
                  xor          a1, gp, s3
                  ori          a1, a4, 554
                  ori          t0, s5, -728
                  auipc        s2, 663350
                  or           s0, s5, s2
                  andi         a5, s1, -1841
                  auipc        s4, 320368
                  slli         s3, s5, 10
                  srl          zero, t3, tp
467:              and          t4, a2, t2
                  bne          t2, s11, 479f
                  or           s3, s5, s7
                  and          t5, ra, a6
                  bgeu         s4, ra, 484f
                  sub          zero, sp, a4
                  blt          t3, t2, 487f
                  bge          a4, ra, 493f
                  auipc        zero, 672871
                  blt          zero, s6, 491f
                  and          s6, s7, t1
                  andi         s2, s10, -1789
479:              bgeu         s9, s2, 496f
                  lui          s7, 818997
                  auipc        t2, 398408
                  slli         s1, zero, 30
                  srl          sp, s0, s9
484:              ori          s1, ra, -419
                  and          a5, s3, t1
                  addi         s8, s3, -571
487:              slt          s8, s2, s10
                  auipc        s2, 239629
                  blt          s8, t6, 496f
                  auipc        t6, 25307
491:              blt          a7, s5, 504f
                  sra          t4, tp, s5
493:              lui          a5, 779772
                  nop
                  sltiu        t3, zero, -264
496:              xor          t0, t4, s9
                  auipc        s0, 254010
                  or           sp, gp, s6
                  addi         t4, s4, 1507
                  slt          s3, ra, s7
                  bne          s7, a0, 503f
                  auipc        a4, 206818
503:              xor          t3, s3, a0
504:              beq          t0, s5, 522f
                  xori         t6, a0, -1828
                  sltiu        t0, gp, 307
                  bgeu         t5, s7, 519f
                  addi         t4, sp, 1665
                  nop
                  and          s11, t1, t3
                  add          s2, s0, s8
                  ori          s0, s4, -626
                  slli         s0, a1, 24
                  nop
                  srli         s11, t1, 16
                  sra          t6, zero, t0
                  nop
                  srai         t6, a1, 8
519:              bgeu         a5, t6, 537f
                  bge          s10, t0, 527f
                  xor          t0, t6, t2
522:              slt          a4, s8, s7
                  auipc        a4, 1012173
                  xori         s3, a2, 771
                  auipc        sp, 3775
                  sll          t5, s11, t4
527:              ori          s6, t5, 143
                  auipc        s6, 590613
                  bne          s5, s9, 539f
                  srl          a1, a4, s8
                  bgeu         a2, a7, 532f
532:              bne          tp, t4, 551f
                  bgeu         t4, a6, 534f
534:              bgeu         t5, a4, 537f
                  or           t4, s9, s0
                  or           t6, s9, a3
537:              auipc        gp, 41314
                  sltu         s10, s6, t1
539:              ori          a6, sp, 227
                  slt          a2, a7, s7
                  ori          t6, a6, 1865
                  ori          s0, zero, -12
                  ori          t1, a3, -1946
                  srai         s4, a7, 24
                  slli         a5, sp, 0
                  sra          zero, s5, tp
                  srl          s2, s7, t6
                  xor          a2, t3, a4
                  bgeu         ra, a3, 559f
                  slli         s9, s3, 2
551:              sll          t5, a5, sp
                  srli         a2, tp, 7
                  bgeu         t4, s9, 562f
                  auipc        t3, 566038
                  blt          ra, ra, 573f
                  sltu         s8, ra, s1
                  sltu         s3, s1, a3
                  xor          a2, a1, ra
559:              add          a7, s6, tp
                  addi         a2, a0, -1872
                  srl          s6, s7, t3
562:              lui          s11, 735035
                  slli         s1, s3, 6
                  srli         a0, a6, 4
                  andi         t2, t5, 1077
                  slli         a2, a5, 20
                  bgeu         s4, t0, 584f
                  srl          t6, t4, a0
                  bne          a0, a1, 577f
                  slli         a6, s0, 30
                  srli         s11, a0, 11
                  sub          gp, a5, a4
573:              srai         tp, s10, 26
                  bltu         a6, s3, 591f
                  nop
                  beq          ra, t3, 588f
577:              bgeu         s7, a4, 588f
                  add          s7, s11, s8
                  slti         s0, s9, -445
                  and          s4, a7, t5
                  andi         s6, s3, 663
                  andi         zero, s6, 594
                  bne          gp, s8, 600f
584:              addi         s0, a3, 2012
                  lui          a7, 682497
                  bne          s4, s0, 601f
                  andi         s4, s5, -557
588:              bge          tp, s9, 608f
                  bne          gp, a0, 605f
                  sub          a6, a0, s6
591:              bgeu         a3, s8, 592f
592:              andi         a7, a4, -1446
                  srai         s10, t5, 14
                  beq          t0, s0, 613f
                  and          a2, t0, s3
                  bgeu         s5, s0, 609f
                  bge          t1, t1, 615f
                  add          a4, a4, t3
                  bge          a1, gp, 616f
600:              bge          s6, t1, 616f
601:              blt          s9, s1, 610f
                  add          t4, a1, t5
                  nop
                  slt          s8, t1, s0
605:              auipc        s0, 358
                  slt          a1, a3, t5
                  beq          s11, sp, 625f
                  la           s7, region_1+725 #start load_store_instr_stream_0
                  la           s8, region_1+928 #start load_store_instr_stream_1
                  la           a6, region_1+1235 #start load_store_instr_stream_2
                  lw           sp, 1(a6)
                  sh           s2, -230(s8)
                  sb           a0, 10(a6)
                  lh           s3, 317(s7)
                  lbu          t2, 118(s7)
                  sb           s8, 7(a6)
                  lb           s3, 79(s7)
                  lbu          s6, 663(s8)
                  lbu          s2, -16(a6)
                  sb           s1, 8(a6)
                  lbu          s9, -903(s8)
                  lb           s9, 890(s8)
                  sw           a6, 672(s8)
                  lb           gp, 811(s8)
                  lb           t6, -9(a6)
                  sw           a4, -133(s7)
                  lb           s10, 0(a6)
                  lb           tp, -923(s8)
                  lb           a7, 97(s8)
                  lb           s9, 119(s8)
                  lhu          t5, -521(s7)
                  sb           tp, -722(s7)
                  lbu          s4, -111(s8) #end load_store_instr_stream_1
                  lb           t1, 14(a6)
                  lb           sp, 112(s7)
                  sb           a0, 10(a6)
                  sb           s5, 890(s7)
                  lbu          s6, -4(a6) #end load_store_instr_stream_2
                  sb           s3, 214(s7) #end load_store_instr_stream_0
608:              blt          s11, s6, 626f
609:              blt          a2, s9, 617f
610:              srai         s2, s9, 14
                  bgeu         a1, s0, 621f
                  bne          t3, t0, 629f
613:              bne          sp, t6, 620f
                  srl          t0, tp, a2
615:              add          zero, s10, s11
616:              xori         a6, s7, -1360
617:              slti         s3, a1, -1952
                  and          s9, a7, a5
                  srl          s6, s6, a5
620:              sra          s2, a2, s1
621:              bltu         s1, t3, 640f
                  beq          t6, zero, 633f
                  addi         a2, s9, -379
                  bne          a5, a1, 639f
625:              bne          s10, s5, 640f
626:              xori         zero, tp, -1663
                  lui          a0, 460832
                  add          sp, ra, s1
629:              ori          s3, a3, -33
                  srai         t4, gp, 18
                  xori         a2, a6, -1530
                  srai         s7, a7, 26
633:              and          t1, tp, a3
                  sll          t5, s11, ra
                  auipc        t0, 539847
                  sub          s6, t5, s8
                  sra          t0, a3, zero
                  or           t0, t5, s7
639:              beq          s11, a5, 649f
640:              bgeu         s3, t2, 654f
                  slti         s4, a6, 288
                  beq          s10, sp, 657f
                  sltu         t5, a7, t0
                  blt          s3, s2, 646f
                  xori         t5, t3, -1028
646:              srli         s11, t4, 29
                  beq          t5, t6, 657f
                  srl          s10, a2, s6
649:              auipc        s4, 151251
                  or           a0, tp, s4
                  xori         a2, a2, -1075
                  bgeu         s1, a0, 657f
                  sltu         t3, t6, t2
654:              bgeu         sp, t6, 657f
                  andi         a2, a3, 1356
                  sra          tp, s9, t3
657:              andi         s7, s5, -1969
                  sltiu        s11, s8, 322
                  and          a7, s9, t1
                  sub          a0, t6, t5
                  lw           t1, 4(s5)
                  addi         s5, s5, 60
                  ori          t3, a3, 149
1241:             addi x9, x6, 1
1241:             jalr x9, x9, 0
sub_1:            slt          s10, s10, a5
                  addi         s5, s5, -12
                  slli         a7, a5, 7
                  lui          a5, 30142
                  sw           t1, 4(s5)
                  slti         a4, a2, -1569
                  slti         t0, s1, 577
                  srl          a6, t0, t3
                  la           sp, region_1+32 #start riscv_load_store_rand_instr_stream_0
                  lb           s0, 829(sp)
                  srli         s1, t0, 18
                  srl          s1, tp, t5
                  xori         t3, s0, -478
                  lbu          t1, -24(sp)
                  sb           a1, 137(sp)
                  xor          s2, s1, t6
                  sh           t5, 788(sp)
                  or           a7, a1, a2
                  srli         t5, s6, 27
                  lui          a6, 346322
                  lbu          t3, 602(sp)
                  lb           s8, 1543(sp)
                  lb           s10, 1494(sp)
                  slti         a2, a2, 1237
                  sb           a1, 741(sp)
                  sub          t4, t3, sp
                  lh           s7, 72(sp)
                  srli         s7, a7, 14
                  lbu          t6, 960(sp)
                  addi         s10, s1, -1963
                  srl          a4, a1, t0
                  lbu          a6, 286(sp)
                  srli         s11, gp, 25
                  sb           t0, 1770(sp)
                  lb           a4, 1301(sp)
                  sb           zero, 1421(sp)
                  lh           s11, 1790(sp)
                  or           a4, a0, s11
                  srai         s2, s10, 8
                  ori          s2, gp, 2
                  lhu          t4, 146(sp)
                  lui          t6, 906226
                  sub          zero, tp, tp
                  sub          t4, a7, s0
                  sltu         t2, t4, s5
                  sub          s1, gp, a3
                  and          tp, s6, s0
                  nop
                  xor          s8, s7, s5
                  sb           s9, 714(sp)
                  sb           a1, 1070(sp)
                  or           s11, s4, t5
                  lbu          s7, 529(sp)
                  lhu          tp, 1210(sp)
                  sb           gp, 216(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a4, region_0+436 #start riscv_load_store_hazard_instr_stream_0
                  sh           s11, 110(a4)
                  lh           s1, 110(a4)
                  lhu          a1, 110(a4)
                  srli         a6, s11, 12
                  slti         a1, t3, 2016
                  sh           tp, -212(a4)
                  auipc        s4, 1034083
                  sra          t0, t5, s2
                  lw           a1, -212(a4)
                  lbu          s10, 125(a4)
                  srai         t4, s9, 9
                  srai         t2, s0, 28
                  lhu          t0, 204(a4)
                  lw           t4, 204(a4)
                  lw           s8, 204(a4)
                  xori         s11, gp, 174
                  lw           t2, 204(a4)
                  lw           s4, 204(a4)
                  lhu          a5, 204(a4)
                  lbu          sp, 9(a4)
                  lb           t1, 9(a4) #end riscv_load_store_hazard_instr_stream_0
                  la           t1, region_0+33 #start load_store_instr_stream_2
                  lb           s7, 6(t1)
                  la           a2, region_0+212 #start load_store_instr_stream_3
                  la           sp, region_0+976 #start load_store_instr_stream_1
                  la           s9, region_0+1244 #start load_store_instr_stream_0
                  lb           t5, -221(sp)
                  lbu          t4, 61(sp)
                  lhu          zero, -122(sp)
                  lb           s7, 869(t1)
                  sb           zero, -223(s9)
                  lbu          zero, -11(a2)
                  lb           t3, -28(a2)
                  lb           a4, 1516(t1)
                  lhu          t3, -202(s9)
                  lh           a6, 56(sp)
                  lbu          s0, 25(a2)
                  lb           s1, -155(s9)
                  lb           t5, -73(s9)
                  lb           a7, -251(s9)
                  lw           s4, 52(a2)
                  lhu          a4, -246(s9)
                  lb           a5, 681(t1)
                  sb           a2, 214(sp)
                  lh           s2, -170(s9)
                  sb           a4, 1522(t1)
                  lh           a6, 58(sp)
                  sb           tp, 25(sp)
                  lh           gp, 46(a2)
                  lbu          a6, 63(s9)
                  lb           t4, 512(t1)
                  lb           s11, 254(sp) #end load_store_instr_stream_1
                  lbu          s0, 17(a2) #end load_store_instr_stream_3
                  lhu          a7, 783(t1) #end load_store_instr_stream_2
                  lbu          a1, 225(s9) #end load_store_instr_stream_0
                  sra          s3, tp, s0
                  bgeu         t0, t3, 2f
2:                srai         s10, s8, 0
                  slli         t0, s4, 27
                  slti         s11, s7, 2041
                  slli         s11, a0, 19
                  beq          gp, s9, 9f
                  auipc        t0, 1005653
                  srli         tp, s3, 29
9:                sltiu        sp, s11, -1397
                  blt          s7, t5, 26f
                  slt          t5, gp, a1
                  sltu         t4, a2, sp
                  srl          a1, s7, a0
                  ori          t1, t3, -1518
                  bltu         s5, gp, 18f
                  sll          a6, a3, t5
                  or           a4, a1, a6
18:               or           s6, t0, a4
                  blt          a0, a4, 20f
20:               sltu         s2, s3, t3
                  andi         a6, s11, -1700
                  add          t0, a6, s9
                  blt          gp, t1, 39f
                  slli         sp, s11, 17
                  xori         a4, t4, 1956
26:               blt          ra, s10, 29f
                  sub          zero, tp, tp
                  sra          s2, a1, zero
29:               srli         s11, s11, 0
                  bne          t2, s8, 32f
                  auipc        s2, 568415
32:               andi         sp, a1, 1497
                  bgeu         t3, s8, 48f
                  andi         t6, a4, 409
                  bne          t0, s6, 47f
                  sub          s10, gp, t0
                  slti         a7, s7, -1650
                  bge          s7, sp, 47f
39:               sra          a6, a5, a1
                  xori         s4, tp, -1555
                  sltiu        t3, a3, -104
                  bne          s7, a2, 45f
                  sll          a0, s0, t2
                  addi         a0, t3, 1575
45:               sll          s8, s7, tp
                  slli         a6, s8, 16
47:               xor          tp, a0, t4
48:               srl          s11, zero, s10
                  bltu         a1, s4, 59f
                  bge          s11, a7, 58f
                  andi         s0, s5, 163
                  slt          s7, t3, s8
                  blt          s6, a5, 73f
                  sub          gp, s0, s0
                  bge          zero, t0, 75f
                  srai         a0, a4, 22
                  srli         s7, a7, 4
58:               add          sp, a3, s1
59:               slt          sp, a3, a0
                  bltu         s2, s6, 80f
                  andi         a7, a6, -1934
                  slti         t3, sp, -999
                  bltu         s0, s6, 68f
                  sltu         a2, s1, a7
                  andi         a5, a3, 1268
                  sub          t0, a5, s0
                  sll          a5, a5, t6
68:               srl          a4, s10, s5
                  bge          s6, t5, 77f
                  or           a7, a1, ra
                  sltu         t5, t4, t4
                  bgeu         a7, s2, 79f
73:               lui          t3, 195299
                  add          s9, s4, a4
75:               nop
                  slli         a1, s0, 11
77:               add          s4, s8, sp
                  srai         s1, t5, 10
79:               sub          s7, a7, s1
80:               slti         s10, a4, 1257
                  or           s1, a2, a3
                  srl          a5, s10, t6
                  slti         t1, s0, 993
                  ori          t4, a0, -8
                  sra          t0, a0, a1
                  andi         t5, s11, -1880
                  nop
                  lui          s8, 930782
                  srli         t3, s3, 18
                  beq          s0, tp, 91f
91:               ori          t2, t4, 460
                  bne          s3, s10, 108f
                  sll          s0, t0, s4
                  lui          a5, 841749
                  xor          t1, a1, t3
                  and          zero, s3, a4
                  beq          a2, s5, 101f
                  sltu         tp, t2, tp
                  bne          gp, s0, 113f
                  bgeu         s11, s0, 116f
101:              sub          s6, t6, s11
                  lui          s8, 744457
                  srai         s0, sp, 2
                  ori          s8, a6, -237
                  nop
                  add          a1, s4, a2
                  sra          t6, a4, t2
108:              slt          t6, a0, s0
                  slt          s0, s0, a5
                  sra          zero, tp, sp
                  bne          t6, a2, 117f
                  add          a6, t2, s11
113:              beq          a3, a4, 130f
                  auipc        t3, 981045
                  add          gp, a3, t1
116:              lui          gp, 98272
117:              bltu         a5, s3, 127f
                  xor          s11, a7, s6
                  sltu         s8, a5, s1
                  sltu         s10, a3, ra
                  auipc        t5, 247274
                  addi         tp, a1, -475
                  bne          t2, s1, 124f
124:              bge          t4, s0, 133f
                  lui          s1, 269831
                  slli         a5, a1, 8
127:              sltu         a5, s8, t6
                  add          t3, t3, t0
                  sra          s1, gp, a7
130:              nop
                  slt          t2, s10, tp
                  beq          s3, a4, 133f
133:              blt          a3, s4, 138f
                  and          s6, sp, t4
                  sltu         s3, s7, a6
                  srai         s0, s7, 18
                  sub          s1, s8, tp
138:              bne          s6, ra, 153f
                  xori         t0, a6, -357
                  slti         s6, s11, 703
                  slt          tp, a1, s7
                  andi         s1, s8, 1838
                  slt          a7, t1, s3
                  or           s11, ra, zero
                  beq          a6, s8, 149f
                  sll          a7, a4, s0
                  blt          a2, s0, 150f
                  nop
149:              bgeu         s4, a5, 155f
150:              xor          t3, tp, tp
                  bge          s10, s10, 154f
                  slli         t5, gp, 3
153:              addi         s0, s8, 1360
154:              sltiu        sp, s9, 327
155:              srai         s2, a3, 12
                  sltiu        t5, t2, -489
                  sltiu        t6, t3, 612
                  lw           t1, 4(s5)
                  sltu         a4, t1, a2
                  addi         s5, s5, 12
                  and          s10, a1, t5
                  srai         t0, sp, 19
274:              addi x27, x6, 1
274:              jalr x27, x27, 0
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
.word 0x6d3488d2, 0x6153d19c, 0xe91a85b9, 0x85b24380, 0x311a5924, 0xa2cb150c, 0xcde29e6e, 0x373f8ccf
.word 0x50bc959e, 0x32df6b11, 0x3d418182, 0x48addf12, 0x22524605, 0xd6c1fbdb, 0x5bf99d5f, 0x95965d1b
.word 0x8f75790a, 0xfc537686, 0xc578dffd, 0x9320d69f, 0xc69f9296, 0x95920907, 0xdfdec72f, 0xcaa94a41
.word 0xfc547fe3, 0x8ba047e3, 0x7677c11c, 0xe763f691, 0xb77c350b, 0x18282110, 0x666b40eb, 0x9a7bfecb
.word 0xeef8d3e2, 0xffeb1238, 0xff8e8c52, 0x5486f009, 0x61a67b07, 0x61ae4260, 0x7bf757df, 0x56aa9ca8
.word 0x0e30e5ad, 0x3af1bbbc, 0x6e42f2e0, 0x6f668e50, 0xe9accc09, 0x427d93ac, 0xbdbd7300, 0x9590ffda
.word 0xeeef1d44, 0x083b23c4, 0xfedddfb7, 0x4893823c, 0x207b912f, 0xa41c051e, 0xf653212a, 0x17911cf4
.word 0x2d0bd3dd, 0x338fc277, 0xb5d855e6, 0x35ddf6af, 0x259ed734, 0x71119f49, 0xeadbdcc1, 0xff5fc09f
.word 0x7a5aac73, 0xf18cc3fd, 0xccabfae4, 0xaf87dbda, 0x6e675345, 0x9ebbaba7, 0xe4139f30, 0xc491481e
.word 0x6be7f3dc, 0x737325ab, 0xd1f35803, 0x518d8885, 0xbae5e396, 0x531e3ece, 0xd85a9a40, 0xc1d2ad37
.word 0xe88a038b, 0x8d66885c, 0x60f34003, 0x723bd503, 0x0cd1b663, 0x0944615e, 0xb616b18a, 0xe54f6214
.word 0x1d2ee7b0, 0x1e8d3d81, 0x8c7d940c, 0xeacd6161, 0x9cf4fa6d, 0xedf08756, 0x134d7db5, 0x4ecc5f4a
.word 0xbfba0607, 0x8ac07063, 0x41466654, 0x649ac49b, 0x3f85fb5d, 0x9fbf91c2, 0x296a5935, 0xab330e5c
.word 0x2ffa7a55, 0xcc12efbf, 0x9207aa6a, 0x84a9647f, 0xbd37fe6e, 0x71ab7cfc, 0x042e03e8, 0x14ca4617
.word 0x193b80d5, 0xda13381e, 0x733ea8f2, 0x778a84f1, 0x88638531, 0xc8785c1c, 0x2eda9a66, 0x6118c5b3
.word 0xf7f65445, 0x090c40e5, 0x18f37a04, 0xfeab12c3, 0xbe12e3b6, 0xe906d55e, 0x65c39967, 0x82dabea8
.word 0x24f33e15, 0x099aa2f1, 0x8ed9fcc2, 0x35cc06be, 0xd7d908c6, 0xa0c9da3e, 0xbb7da317, 0x1bbf3843
.word 0xf0cbb6cd, 0xe93ef17e, 0xe41fb1c1, 0x9139f637, 0xe9876879, 0x2ee75b49, 0x1e6dde68, 0xc61041f3
.word 0xa798537a, 0x9241807a, 0xe65c7ff5, 0xd84473a9, 0xb54d0d80, 0x2e645c5e, 0x8752f7aa, 0x14baf4ec
.word 0xac60880a, 0x6bb3fb87, 0x3fa1815a, 0xa541641a, 0xeb9b365a, 0xc39add41, 0xddd02c66, 0xeda008b6
.word 0x126b85c9, 0xb134dd59, 0xa9b081f5, 0x7b406760, 0x7ae514d0, 0xa08427c6, 0x492d3011, 0x0be4f858
.word 0x71e7b2ea, 0x1ae66974, 0xd0b5122d, 0x22afacff, 0x130585dd, 0x222cf6f3, 0x30126f18, 0x06d86cd4
.word 0x911e10bc, 0x41f728b8, 0x6567adeb, 0xdcd99804, 0x6aa66585, 0xb8be35b3, 0xfe088249, 0xbda9c5d7
.word 0x014e705d, 0xeebc4ba1, 0x0b366046, 0x00ef12fe, 0x173f5599, 0x9c155402, 0xa5e27d8e, 0x3c4ba83b
.word 0x09aa5ac3, 0xfae8092d, 0xbc5c9f1c, 0x94f8f747, 0xc3eecf41, 0xfb4d4f4d, 0x22e5fb0a, 0xb6250f89
.word 0xebc58681, 0xe6a4ea16, 0x43bac1b8, 0x8b335d13, 0x5bddf3fe, 0x0a0e7b18, 0xd1518eb9, 0x730a3727
.word 0x94f78371, 0xd73ee36e, 0x5f7e693e, 0xdea0574b, 0xf4e28d3f, 0xdb4c637f, 0x3a976fe4, 0x3763c2e5
.word 0x344a778c, 0xa6d8382d, 0x766838cb, 0x863b84c2, 0xc3668477, 0xce4e4eb9, 0x655ca1e4, 0xc286768d
.word 0x658076b8, 0xf36a9c9b, 0xc47b4f3c, 0xf300d731, 0x68477325, 0x062e89c3, 0xbee385c9, 0x0e621eb9
.word 0x44b138ff, 0x773abab1, 0x34ebb72e, 0x2803cc79, 0x1998fb8b, 0x6e3f95c8, 0xa1a29978, 0x416ef8ee
.word 0xca7530b9, 0xb7c3280e, 0x035b1007, 0x40719f20, 0x5ff58d61, 0x926f468d, 0xe5711c27, 0xcbda69e5
.word 0x398ffba0, 0x1420fd6b, 0x5967fcbc, 0x3bbd9987, 0x92f81efd, 0x41ba14fb, 0x56bfeb71, 0x33bdde61
.word 0x29f003e2, 0xde9a5f28, 0x3a9e6e37, 0x3f939429, 0xee74041b, 0x1107331e, 0xb7b713ca, 0xdd16bd55
.word 0xa6f9ba93, 0x028ab6d7, 0x19e70e73, 0x2dccd64f, 0x7db33219, 0x0d60727e, 0x780e8143, 0x0dc5f69b
.word 0x72959f84, 0x91dfa944, 0x05e78892, 0x7891f96d, 0x5ce5a6c2, 0x1651edea, 0x8ccb82ad, 0xcd5d3f24
.word 0x0f660aaa, 0x431d52ce, 0xd1c3402d, 0x5108df4a, 0xe1203c36, 0xea784bfe, 0x765569ef, 0x9818af77
.word 0xf8f54981, 0x42803d9c, 0xba72b133, 0x3ba4359a, 0xb84f6654, 0xfeb651ea, 0x339d88aa, 0x439ca449
.word 0x614c74d5, 0x703fe998, 0xf70b74f4, 0x5080023c, 0x102e408b, 0x3539a62c, 0x8614e4c8, 0x5109fd95
.word 0xd0fa294e, 0x32d44e08, 0xca8ec91e, 0xc61b8a36, 0x21ad0f32, 0x4323cc65, 0x2661fc2c, 0x22da90a2
.word 0xb0dd33bd, 0x43d73216, 0x4aa57e91, 0x2301669b, 0xe60661f2, 0x5711fdf2, 0x5bdccfce, 0x9b5d5f2a
.word 0x0eaa4fa1, 0xdc05d9e7, 0xa507d4fa, 0x1ad579fe, 0xd7bd55b7, 0x8bc4781b, 0x01404212, 0x63e3f187
.word 0xda1432bc, 0x326011e7, 0x07af6049, 0x2cbec3e7, 0x8d012600, 0x68586205, 0x2d1af574, 0x80ea2f79
.word 0x2ee34ea5, 0xd0adeccb, 0x7b2a75f2, 0x239ebef9, 0xf6f5b96f, 0x20769861, 0xee6baab3, 0x6dcbe9f0
.word 0x471ca773, 0xe4367de2, 0x9c35b4b5, 0xebf60607, 0xa7eb5d12, 0x36d7f424, 0x0fdc5dc2, 0xdce6d836
.word 0xfde55789, 0xf3287ef7, 0xa5dd2936, 0x668b732e, 0x4627a93e, 0x4df95d03, 0xf57e4b20, 0x43699f68
.word 0x1d4ddbd8, 0x38a00883, 0x8fa6daef, 0xc012a7e1, 0x3252ecd0, 0x6751bcd8, 0x5ae695f9, 0x8c1226c6
.word 0x8c15dfc7, 0x8fd6b92a, 0xe079996a, 0x1c3dc747, 0xf2e52c55, 0x241e472d, 0x275159b1, 0xc4d89e0c
.word 0xae1a3f97, 0x9795e930, 0x70c014d1, 0x0a783f3e, 0xcfe61068, 0xc836ae47, 0xea368f2a, 0xde8f63bb
.word 0x17880f29, 0x3e1215e9, 0xb9cc53ab, 0xff5f8ee4, 0xdeeb49af, 0x0adb33c1, 0xfa8d4762, 0xad9c8c43
.word 0xc9044f70, 0x628430e6, 0xc4d3c22e, 0xd09ae274, 0x517e9ac9, 0x5b1cf061, 0xe2a794a5, 0xe5131469
.word 0xf3be7d08, 0x9d89f0eb, 0xad6b9c14, 0x0cccc8db, 0x2534f82a, 0xf503acf7, 0xecfca628, 0xa25e7cff
.word 0xabfb81e1, 0x484c23c8, 0xec9eb25c, 0x820c044b, 0x63b5cd4c, 0x1e2abd43, 0x1bf94156, 0x45cfa0a0
.word 0x25c1e3bf, 0xf7723248, 0x2fa5dd9f, 0xf362f3a1, 0x89ef3d2b, 0x07479573, 0x2fc1ef47, 0x5c80102e
.word 0xa3824235, 0xbf2fe7f0, 0xf61bc3c7, 0xa67f6d5f, 0x5591288c, 0x88a5edee, 0xc5337888, 0x680165fb
.word 0xcccfaa0a, 0x84516ed9, 0xdbf53ef0, 0x65ffc235, 0xffc0853b, 0x6537455c, 0x4a24bad3, 0x0743d2a7
.word 0x3ce77457, 0xc9a65633, 0xf5098020, 0xf24182e0, 0x3f593473, 0x48443ba1, 0xc6e21780, 0xaac49cbc
.word 0x60b5bfa5, 0x651c38ed, 0xa262440b, 0x8c273216, 0x85a8f914, 0x36b1c57e, 0x992b3112, 0x6a393a09
.word 0x380eb6b5, 0x0a93ea7b, 0x89e4fd88, 0xefbaf7c7, 0x426b2b72, 0x31fef6b1, 0x13696bb4, 0x584f65d0
.word 0x11fecde8, 0x3887d941, 0x48a7231c, 0xfd2349b0, 0xfe33bce3, 0x7c75ec8d, 0xc7f01154, 0x878a0070
.word 0x44374d2a, 0xd9004aba, 0xdde65c5f, 0x994d1a75, 0x36061ee2, 0x78e69de7, 0x6b9fe004, 0x76a3e076
.word 0xada07b07, 0x6e99608e, 0xb748706e, 0x8bfcf945, 0xebdf7959, 0xec1ae299, 0xfe8d69a9, 0xe33dd9ba
.word 0x499e0c8b, 0x165343d6, 0xb1b5e291, 0xd0d6ac82, 0x53850d3f, 0xc3e90eb0, 0x3f3da459, 0x900e242b
.word 0xdfbe013e, 0xda384ed2, 0xc059a1ce, 0x9f582cfd
.section .region_1,"aw",@progbits;
region_1:
.word 0x06e21db5, 0xfa3db062, 0x7d61ba50, 0x7d741b03, 0x814e5a9a, 0x9726386b, 0xde087bc1, 0xd072d190
.word 0x3284c981, 0x9b82aefe, 0x3a749b0d, 0xffdd3b39, 0x6cd62c1e, 0x7c19d561, 0x9efd22e1, 0x62bf2cd3
.word 0xe2a0b0d1, 0x98ad9e35, 0x8af70c6d, 0x8407c241, 0x4ce2fa4f, 0xeafcd4c2, 0x45668021, 0x4075f881
.word 0x33d6007c, 0x8ff432fe, 0xcf2249c6, 0x39508b97, 0xf0b817b8, 0x36c64665, 0x699055de, 0xe3e70086
.word 0xfca34234, 0x148ece9d, 0x1f77955b, 0x9cc133f0, 0x3cc3c030, 0xd6a19efe, 0xf31db366, 0x07b42027
.word 0x4a1185d4, 0xfe96dba7, 0x8dc31395, 0x6f6b2fdf, 0x1a320540, 0xa52dead0, 0x003a171f, 0x81f6f2d0
.word 0xc52076b2, 0x4079dca6, 0x25565022, 0x88a66861, 0x8a4b311c, 0x736a250b, 0x366821e6, 0x5bb2e85f
.word 0x2c8ccd52, 0xe848be87, 0xc0b7264b, 0x576adb4d, 0x5b93ac31, 0x3fd65195, 0x168d31fa, 0x09570caa
.word 0x90147b92, 0x2e641cf1, 0x29a7413c, 0x60dbd8b2, 0xabcc7148, 0x37b9a5ad, 0x71013c0c, 0x42f8e81b
.word 0xf971a384, 0xdec20526, 0xd0b54f78, 0x08767b58, 0x8dccb3a0, 0xf92931cd, 0xd9fb0d0f, 0xe6291ccd
.word 0x1a453b87, 0x1dc0ac76, 0x767b13be, 0x5011c66d, 0x00313a61, 0x665da409, 0xb27107b7, 0xabcb6758
.word 0x664eb938, 0x1025a9a0, 0x363fa467, 0x93233a70, 0xbd28b8ce, 0x4cf9fd66, 0x5e5a3c95, 0x91532130
.word 0x556cac04, 0xfa17d771, 0x41172a18, 0x8f8c1a9f, 0x14158e73, 0x8b650531, 0x2cad4fd7, 0xa9dbe522
.word 0x7eba2c06, 0x80cba42d, 0x98f37bb6, 0x971541b3, 0x4e66cb3d, 0xfccc7d91, 0x3222196f, 0x5df26c04
.word 0x7946227d, 0x7dde115d, 0x89df44ac, 0xa65557bb, 0xa0c402cd, 0xc3eb3623, 0x9a32dc37, 0x0adce585
.word 0x1e7eaa57, 0xf2cf9b07, 0x1e332657, 0x9e569e29, 0x25c6de4d, 0x6dfc1bbb, 0xcbfaadd4, 0x6eabbb7c
.word 0xabd8ba55, 0xff0a5099, 0x312d399b, 0xd5e90fb2, 0x2b0db898, 0xb4e8bbad, 0x400b8605, 0x3a8d5718
.word 0x0e23e553, 0x6efa4f84, 0xa3f2a289, 0xcc6e59bd, 0x0e1abb5f, 0x44ec56b6, 0x64c19779, 0x9ba34af4
.word 0x2fceec2d, 0x136cda5c, 0x7b7247a6, 0x8c4d1bd4, 0x70da38f7, 0x9c9b44c9, 0xc6d7b763, 0x65dcd267
.word 0x89636003, 0xd7075360, 0xce7ef5da, 0x65f5c9ca, 0x53b63f80, 0x38bb9591, 0x959a5e79, 0x313f7fc8
.word 0xb4f34ed3, 0xede501dd, 0xeb20712f, 0x15860cb2, 0x788839dd, 0xe741432d, 0x0629154c, 0x1feb6cbd
.word 0x06d29cdc, 0x61c70d46, 0xef2f6fe4, 0x20643b6e, 0xab1e2dbb, 0x7d9ca02d, 0xb487e1bf, 0xdaebc538
.word 0xacc33691, 0x2bd6092f, 0x9896d663, 0xf7efa6ec, 0x2b6bb53b, 0x3f0a5376, 0x2a7c0ce3, 0x9ff483e9
.word 0xb78c7561, 0x7a3cd98f, 0x10ca2042, 0xcae3b815, 0x249396dd, 0x889b9d3e, 0xd410f468, 0xa772f24d
.word 0xdf73d194, 0x17ee0d59, 0x06f816dd, 0x50367200, 0xf0ee6e67, 0x3029b66b, 0x30886d8f, 0x85b0c0a0
.word 0xdef952b3, 0x5f76080d, 0xb917b401, 0xa98959cb, 0x56f58108, 0xbaef5d70, 0x17a33d3f, 0x803368c4
.word 0x40130b3b, 0x31db36b2, 0xb33fbc5b, 0x8d568e2d, 0x28bfe991, 0xc4870f27, 0xd834a238, 0x9072f683
.word 0xfe3ce294, 0x21bc2a4c, 0xab41cff7, 0x7e98cd2a, 0xbc78f03c, 0xe98c61e0, 0x47f4caed, 0xe6a68f86
.word 0xb718e47c, 0xd860156f, 0xf0a2accf, 0x79404d7d, 0x087a4533, 0xe1b5d393, 0xdfe0c49f, 0xf3a04fde
.word 0x1ea80e13, 0xd85d0872, 0xfa809986, 0xea6f2db0, 0xdbc3984c, 0x8f8b23a8, 0x5a54ea9c, 0x230a6ae7
.word 0x87d2c8db, 0xe47384c7, 0x2b189f45, 0x38aab140, 0x5ef91a6b, 0x9e6e8f36, 0x6f8fd7d4, 0x4dda8b3d
.word 0x01fbfb65, 0xfed91f98, 0x3ad889f1, 0x53b9a861, 0xff5f46c5, 0x48163182, 0x1be11349, 0x5d6c9cb9
.word 0x1904ce92, 0x9762e831, 0x83ecd4c4, 0xaa0b6c40, 0xada37b68, 0x95ff5036, 0x14a545c1, 0xb4a87afc
.word 0xda45fa7e, 0xed9468cc, 0x3c478bea, 0x477f1e8b, 0xd36cd29a, 0xf800e47f, 0x6c1907e9, 0x83f70bb8
.word 0xab5d4499, 0x55008358, 0xde59f164, 0xa2f089ee, 0x0f5a90ef, 0xa0dc8c17, 0x9b2eeeeb, 0x8399a432
.word 0xd78a3f71, 0x74e78a8b, 0x779b457e, 0xe1b421b4, 0x8553a125, 0xba6ba4e0, 0x01fe4c26, 0xc7ed0325
.word 0x5b6d5cf0, 0x2f59f11c, 0xfd2e87bf, 0xa5dd1d71, 0x71f65193, 0xee7a0a41, 0x12749ede, 0x5556cf24
.word 0xa7cb25d9, 0x08159ab4, 0xfde092b2, 0x5c9c596e, 0x592faec2, 0x21eaeec3, 0xdccb0f21, 0x4eeab293
.word 0x9b2b3088, 0x52ee8a99, 0xbecde0be, 0x803f8075, 0x3aa50063, 0x289ae0de, 0x5f57201f, 0x53b2a443
.word 0x78c08851, 0xe5623fcf, 0xb91ba5c5, 0x1ec12413, 0xa5299055, 0xc630797d, 0xf0e49739, 0x4bf5263c
.word 0x84ca3d18, 0x189085ed, 0xfe9d769d, 0x5874181b, 0x58614074, 0xc40956ac, 0x4427aff4, 0x84ba2827
.word 0xca3ad60c, 0xfba79438, 0x61af20d3, 0x21de3c05, 0xf8ea20f5, 0xce887089, 0x409815f2, 0x993a1c5c
.word 0x2eb12bb3, 0xb1d3e303, 0x503f8eea, 0xd167539e, 0x47e5ae32, 0x1f167326, 0xb34e806a, 0x74104b05
.word 0x79c885bf, 0xbc53d091, 0x7c4a0f87, 0x8cf9e99e, 0xfc702ca4, 0x9906f9e7, 0x7bdba0de, 0xcf0fd404
.word 0x9c6632d4, 0xe19e4ff8, 0xb9149de8, 0x2e18de7a, 0x967d59a2, 0x4a29b08e, 0xd5d631a7, 0xbc92b9c2
.word 0x17242f88, 0xd5f2a319, 0x3727ad7d, 0x1cafd5e4, 0xc12e55c1, 0xdab6ff5d, 0xbc40e451, 0x82a4c0cb
.word 0x981ceba7, 0x40a63d4b, 0x97942a7b, 0x3ab81fe6, 0x855ca7a3, 0x9f5d8ad1, 0xef102a7f, 0xc5e7d2a8
.word 0x9367e74a, 0x63f0817c, 0x6d0b878b, 0xe6f56ed1, 0x8d8c73f1, 0x29f34990, 0x920b3e16, 0x45b4bd7f
.word 0x43da7274, 0xddaf261a, 0xdabd0201, 0xaf2aaa18, 0x4b973b83, 0x19bf26d2, 0xfa760023, 0x49cc2a05
.word 0x3a94201b, 0xa1df3cd2, 0x15da3f4c, 0x118ca1c6, 0x0d52dbfc, 0x28d719da, 0x65559246, 0x50c65035
.word 0x7a608391, 0xb2f1c827, 0x3936972e, 0x54c62103, 0x165769a2, 0x852cdc2b, 0xe75f6efe, 0x7786e620
.word 0xdf9d1ff6, 0x43ad0c0f, 0x74b52a8f, 0xf9c87336, 0x58d6d8a3, 0x2b1af04e, 0x13471b6d, 0xeadcee9f
.word 0xae767e2a, 0xd64c291c, 0xa2255e0a, 0x7713c757, 0x6d296e6b, 0x30e10ca8, 0xbc91b73f, 0xf323438b
.word 0x9c858270, 0x975da91d, 0x254bb510, 0xa24f877e, 0x0d63e1c2, 0xe4556c81, 0x5a6938c4, 0x82d50856
.word 0x055d6c09, 0xbbcb4d72, 0x01e7d70b, 0x5549382a, 0x73e6d32f, 0x1e0b47ed, 0x8beb36b6, 0x097aaeaa
.word 0x33336da0, 0xe4b35ad3, 0x40444a6a, 0xcf689bf1, 0x3bd70d5d, 0x01399009, 0x7f06071a, 0x31e60379
.word 0x955df212, 0xefc331a5, 0x65ebaf65, 0x2d497fb1, 0x6e2b6955, 0xea619b71, 0xd3fbe2df, 0x0f116f27
.word 0xfbf4f96f, 0xb6c3cf52, 0x6877cc1f, 0x1c5eedf2, 0x0c34fed0, 0xa3dc6cc7, 0xef48b31b, 0xcd18e44c
.word 0xadc9ffa7, 0x316e9b57, 0x20e4d5dc, 0xdc220474, 0xaf3b51b6, 0x24da845b, 0x37b8139a, 0x2dfbed9c
.word 0xed488af2, 0xeb674202, 0x00dc063f, 0x076c2faf, 0x6dd966ea, 0x46b40263, 0x558a2c97, 0xf753e03c
.word 0x49526adc, 0x5c3e402d, 0x652f5009, 0x76c8b283, 0x6f8ef2a9, 0xf1ab0a33, 0xb9210724, 0x198c88ca
.word 0xb4f38215, 0x63399230, 0x0dbedef8, 0xccf7cf54, 0x550ec080, 0x28af6b1a, 0x19d61d9b, 0xa0484184
.word 0xe097a422, 0xdbe7c287, 0x1d5e4900, 0x635ae935
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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x13, x21, zero
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x27, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x27, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x27, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x27, x18, ecall_handler
                  li x18, 0x1
                  beq x27, x18, instr_fault_handler
                  li x18, 0x5
                  beq x27, x18, load_fault_handler
                  li x18, 0x7
                  beq x27, x18, store_fault_handler
                  li x18, 0xc
                  beq x27, x18, pt_fault_handler
                  li x18, 0xd
                  beq x27, x18, pt_fault_handler
                  li x18, 0xf
                  beq x27, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x21, x13, zero
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
                  add x21, x13, zero
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
                  add x21, x13, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x21, x13, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x21, x13, zero
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
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x21, x13, zero
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
