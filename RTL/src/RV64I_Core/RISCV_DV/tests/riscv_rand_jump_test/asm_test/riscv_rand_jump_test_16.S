.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 0
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0x4cc7e7f1
                  li x1, 0xfe3da17e
                  li x2, 0x82d5d10b
                  li x3, 0x6
                  li x4, 0x0
                  li x5, 0xf6fd7f6d
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0x5
                  li x9, 0xb
                  li x10, 0x0
                  li x12, 0x80000000
                  li x13, 0xf7e2319f
                  li x14, 0xf10cdcf8
                  li x15, 0xd4e30093
                  li x16, 0x6
                  li x17, 0x2
                  li x19, 0xa2dbc8ca
                  li x20, 0x0
                  li x21, 0xa6ca468f
                  li x22, 0x0
                  li x23, 0x8c518ad6
                  li x24, 0x7679d13a
                  li x25, 0x17f1e7e1
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0x5
                  li x30, 0xd
                  li x31, 0x0
                  la x18, user_stack_end
main:             la           a5, region_1+595 #start riscv_load_store_rand_instr_stream_0
                  lhu          t1, 1215(a5)
                  sh           t1, 1145(a5)
                  add          s5, t2, a3
                  xor          t4, t5, s9
                  xori         t1, s0, 1690
                  lbu          ra, 603(a5)
                  lhu          sp, 1181(a5)
                  sltiu        a3, s7, 899
                  lh           t3, -133(a5)
                  lbu          s9, 1151(a5)
                  ori          t5, a1, -1932
                  sll          s4, a1, s8
                  lb           ra, -552(a5)
                  slt          sp, a3, s2
                  lh           s5, 1123(a5)
                  lui          t5, 486653
                  lb           t6, 777(a5)
                  sll          sp, t4, tp
                  lb           s1, -345(a5)
                  add          s4, t5, t6
                  sb           s3, 915(a5)
                  lbu          s11, -256(a5)
                  sb           s10, 140(a5)
                  sw           t0, 497(a5)
                  srli         gp, a5, 14
                  slli         t4, t3, 23
                  lbu          t6, 50(a5)
                  sb           s1, -112(a5)
                  lbu          a2, 392(a5)
                  lh           a2, 769(a5)
                  lbu          s0, 496(a5)
                  lhu          s0, 691(a5)
                  lb           s7, 116(a5)
                  xori         t2, a4, -1819
                  sb           s8, 226(a5)
                  sb           s3, 536(a5)
                  sltu         zero, gp, s3
                  sb           a3, 294(a5)
                  lw           s4, 129(a5)
                  lbu          a7, 741(a5)
                  or           s8, s6, sp
                  nop
                  xori         s1, zero, 985
                  and          s11, t6, t5
                  sll          s7, s5, t2
                  xor          s11, a0, s0
                  addi         zero, s2, -1306
                  lw           s1, -291(a5)
                  sh           t1, 503(a5)
                  lb           a6, 932(a5)
                  andi         s8, t4, 338
                  ori          a7, s9, -680
                  lb           s0, 1200(a5) #end riscv_load_store_rand_instr_stream_0
                  ori          a6, a3, -557
                  sltu         s1, s4, t0
                  or           a2, s7, s9
                  sltiu        a7, a6, -399
                  xori         ra, a3, 1557
                  srai         a5, ra, 11
                  sra          a5, t1, s11
                  bgeu         s5, s0, 20f
                  ori          s7, s9, -1781
                  slti         s5, t5, -955
                  sub          a2, a1, zero
                  srli         a2, t0, 16
                  sub          s8, s8, s9
                  lui          s8, 737029
                  slt          a2, s4, t5
                  sll          zero, ra, sp
                  nop
                  bltu         a4, gp, 21f
                  addi         s11, a6, 1771
                  sltiu        t1, a4, 1542
20:               xori         a3, a5, -2007
21:               beq          s0, t3, 31f
                  bltu         t2, s7, 32f
                  bgeu         t3, s10, 33f
                  srai         a3, a1, 11
                  sll          ra, s5, s5
                  beq          s8, ra, 39f
                  srli         s4, t1, 13
                  ori          a3, s4, 205
                  sltu         s0, s10, sp
                  slti         sp, t0, 39
                  sltu         a2, a4, s5
                  and          t2, gp, zero
                  slt          s5, a7, s0
                  la           s4, sub_1
                  andi         a3, s5, 1551
                  xor          s3, t2, s1
                  addi         s4, s4, -270
                  andi         s6, t4, 759
                  xor          s1, t2, s6
main_j1:          jalr         s0, s4, 270 #jump main -> sub_1
                  add          s0, tp, s10
                  sltiu        a3, zero, -620
31:               bgeu         s4, s8, 32f
32:               srai         gp, t3, 6
33:               lui          t3, 723303
                  slt          zero, a0, tp
                  and          s4, a0, t4
                  sll          t1, a5, a7
                  or           ra, s2, a4
                  srli         ra, zero, 27
39:               bne          t3, s7, 46f
                  beq          gp, sp, 42f
                  bgeu         s8, s6, 42f
42:               slti         s5, a3, 1673
                  slt          t3, a3, s7
                  bne          s3, a6, 59f
                  sra          tp, a3, ra
46:               blt          t2, s1, 49f
                  blt          s3, a3, 62f
                  slli         t5, t4, 15
49:               slli         a0, t4, 8
                  nop
                  auipc        t6, 233277
                  xori         a5, ra, 1361
                  sltiu        s3, zero, -688
                  la           a7, sub_1
                  addi         a7, a7, 556
                  slti         s5, s11, -293
                  sltiu        gp, t4, 644
                  addi         sp, t0, 533
                  bltu         a1, t0, main_j2 #branch to jump instr
                  add          s6, t1, a3
main_j2:          jalr         s0, a7, -555 #jump main -> sub_1
                  auipc        a0, 62468
                  bge          a3, a1, 54f
                  beq          s1, zero, 54f
54:               bge          t1, ra, 62f
                  andi         s9, t5, -101
                  srli         a0, gp, 29
                  xori         s6, s3, 1572
                  xori         a2, s0, 1223
59:               sltu         s7, a5, t3
                  ori          tp, a7, 49
                  bgeu         a5, a1, 62f
62:               srli         s5, a6, 3
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            bne          a4, t2, sub_3_stack_p
sub_3_stack_p:    addi         s2, s2, -44
                  srai         tp, t5, 2
                  sra          a6, sp, t0
                  sw           s0, 4(s2)
                  srl          t6, s11, a1
                  srl          t2, gp, ra
                  la           ra, sub_9
                  and          s8, a2, s3
                  add          gp, s2, s5
                  srli         s6, t6, 23
                  addi         ra, ra, 185
                  sub          s10, s3, t2
                  sra          t2, a3, t1
sub_3_j8:         jalr         s0, ra, -185 #jump sub_3 -> sub_9
                  la           sp, region_0+645 #start riscv_load_store_rand_instr_stream_1
                  sra          s11, t0, tp
                  lbu          t1, 282(sp)
                  sra          a3, s1, t6
                  sb           tp, 674(sp)
                  sb           s6, 920(sp)
                  nop
                  lh           s5, 1059(sp)
                  lw           s3, -157(sp)
                  srli         s10, tp, 26
                  sh           zero, 1145(sp)
                  srl          a7, s2, s9
                  lb           s10, 1280(sp)
                  lhu          zero, -465(sp)
                  sb           s6, 778(sp)
                  sb           s9, -325(sp)
                  ori          a6, s2, 1440
                  sh           s1, 1013(sp)
                  slli         a5, s8, 27
                  lb           a4, -398(sp)
                  srli         ra, t0, 24
                  lb           s7, -451(sp)
                  srli         t5, s1, 16
                  lhu          t2, 445(sp)
                  lhu          ra, -25(sp)
                  lh           t2, -359(sp)
                  slli         t5, s4, 6
                  srl          s7, s0, s11
                  sub          s11, a7, t0
                  slli         a4, a2, 20
                  srl          s10, gp, zero
                  add          t1, t3, t3
                  sb           s4, 256(sp)
                  addi         gp, s11, 212
                  srai         gp, s4, 7
                  sltu         s6, a2, t3
                  xori         s9, s7, 1056
                  sh           t5, -431(sp)
                  srl          a0, t0, a2
                  sb           tp, 970(sp)
                  slli         s10, s9, 17
                  sltiu        gp, a6, -1096
                  lui          s5, 227780
                  sb           a2, -42(sp)
                  lhu          t6, -607(sp)
                  slt          tp, t5, zero
                  srli         s0, t0, 29
                  ori          s9, zero, 695
                  lb           a6, 1082(sp)
                  lhu          s8, -577(sp)
                  lb           t6, 1204(sp)
                  andi         s1, a7, 581
                  srai         ra, ra, 27
                  lbu          t2, 6(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s0, region_0+329 #start riscv_load_store_rand_instr_stream_4
                  auipc        s7, 249703
                  lhu          a4, 27(s0)
                  sb           a3, -40(s0)
                  and          a5, s10, s2
                  sll          ra, tp, a2
                  sb           a4, -40(s0)
                  lb           a6, -24(s0)
                  sra          s10, a1, a4
                  lh           s10, 17(s0)
                  lbu          t4, -27(s0)
                  sb           t0, -43(s0)
                  lb           t4, 6(s0)
                  lb           t3, -39(s0)
                  lbu          t1, 60(s0)
                  lbu          s10, 43(s0)
                  sb           s5, -15(s0)
                  and          s7, t5, s2
                  sltiu        s11, s3, 1836
                  ori          s3, t3, 701
                  sb           s7, 59(s0)
                  srl          s11, s7, a6
                  lb           t4, -45(s0)
                  lbu          gp, -52(s0)
                  lbu          a3, 27(s0)
                  sb           s3, 44(s0)
                  lbu          tp, 62(s0)
                  lbu          t2, -30(s0)
                  lb           s3, -9(s0)
                  lbu          t2, -4(s0)
                  lhu          s10, 13(s0)
                  sh           s0, -13(s0)
                  sll          tp, a4, s1
                  lh           s10, -55(s0)
                  sll          a6, zero, a2
                  lw           s11, -9(s0)
                  lbu          s6, -62(s0)
                  lbu          t1, 53(s0)
                  sb           a3, -31(s0) #end riscv_load_store_rand_instr_stream_4
                  la           s9, region_0+1708 #start riscv_load_store_rand_instr_stream_0
                  lhu          s8, -6(s9)
                  sb           ra, -8(s9)
                  sb           s2, -8(s9)
                  lbu          s6, 10(s9)
                  addi         sp, a2, -1342
                  sh           s3, -16(s9)
                  sb           s4, 5(s9)
                  auipc        sp, 1012659
                  sw           s7, 16(s9)
                  lbu          a4, -7(s9)
                  sb           ra, -9(s9)
                  sh           t2, 0(s9)
                  slt          t6, a1, s3
                  srai         s11, tp, 10
                  andi         ra, s1, 1369
                  sub          a4, t0, tp
                  lw           gp, -8(s9)
                  srli         a3, zero, 23
                  lbu          s10, 0(s9)
                  auipc        s6, 625458
                  nop
                  lh           a5, -12(s9)
                  sb           s9, -13(s9)
                  sh           a7, -6(s9)
                  lh           s7, 16(s9)
                  sra          a2, t5, a6
                  lb           t6, 4(s9)
                  sb           s0, 14(s9)
                  sra          t1, t6, t3
                  ori          s0, s9, 880
                  sb           s1, -4(s9)
                  xori         s10, t0, -2003
                  sra          s11, t4, sp
                  srli         a5, t5, 23
                  sh           s7, -14(s9)
                  lbu          t2, -6(s9)
                  lb           s7, -11(s9)
                  and          a5, s5, a1
                  or           tp, t4, s10
                  sb           a7, -6(s9)
                  sub          t6, s4, s9
                  sra          zero, s3, s6
                  sh           s10, 0(s9)
                  add          s1, a2, a1
                  lw           tp, -4(s9)
                  lbu          s7, -11(s9) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1087 #start riscv_load_store_rand_instr_stream_3
                  lh           ra, -11(sp)
                  slli         a5, a6, 30
                  lbu          a3, -10(sp)
                  lh           s10, 1(sp)
                  and          gp, sp, s3
                  lui          a3, 253241
                  slli         s1, t1, 7
                  sb           t3, -10(sp)
                  lb           gp, 1(sp)
                  lh           tp, -15(sp)
                  or           s8, t3, s0
                  slli         t6, gp, 4
                  lbu          a6, -8(sp)
                  sub          s7, tp, a6
                  lbu          ra, -10(sp)
                  sb           s8, 8(sp)
                  ori          t5, a4, -39
                  ori          t2, a2, 952
                  sh           t4, -9(sp)
                  lb           t6, 6(sp)
                  sb           s4, 5(sp)
                  lbu          s3, 5(sp)
                  sb           s10, -9(sp)
                  lbu          s3, 14(sp)
                  lb           t1, -16(sp)
                  andi         s9, s8, 531
                  sb           s8, -4(sp)
                  lbu          a6, 12(sp)
                  sb           a7, -10(sp)
                  sltiu        s0, a5, 1594
                  sb           s10, -4(sp)
                  lbu          a7, -11(sp)
                  sb           s2, -10(sp)
                  lb           s6, 10(sp)
                  ori          s11, t4, -422
                  lb           s5, -12(sp) #end riscv_load_store_rand_instr_stream_3
                  sltiu        s11, s0, 243
                  beq          t1, tp, 7f
                  bge          tp, t0, 11f
                  blt          a3, t0, 5f
                  srli         sp, s2, 9
5:                andi         s5, a6, 634
                  sltiu        s9, a3, 2035
7:                xori         s4, a7, -1277
                  slti         a0, s8, 1103
                  sltu         sp, s0, a5
                  sra          s4, t1, s5
11:               bne          s5, zero, 26f
                  bgeu         t0, a2, 31f
                  beq          t1, a5, 24f
                  and          s1, t0, tp
                  or           a0, t0, t6
                  sub          s0, t3, a4
                  slt          a6, ra, a1
                  sra          t6, t0, s5
                  and          t5, s6, s3
                  bgeu         a4, a1, 24f
                  bge          s6, ra, 40f
                  andi         s9, t0, 826
                  srli         a5, a5, 13
24:               ori          s0, gp, -1313
                  srl          a2, a5, gp
26:               xor          s9, s7, a7
                  addi         zero, ra, 208
                  slli         s8, s7, 8
                  xor          s0, a7, t5
                  bge          ra, a0, 49f
31:               xori         s3, s7, -1713
                  bltu         gp, t4, 39f
                  add          a0, t4, s9
                  xori         ra, sp, 387
                  addi         a4, a4, 1526
                  bgeu         t6, s0, 41f
                  sltu         s6, s5, s0
                  beq          s1, s9, 53f
39:               beq          zero, a1, 53f
40:               slti         s5, s3, 594
41:               sra          s3, s4, tp
                  xori         sp, s0, -58
                  and          t4, s3, s10
                  bne          s6, t5, 49f
                  sra          s6, s11, s9
                  slti         s9, a1, 1040
                  xor          s10, t6, a0
                  bgeu         a2, a5, 52f
49:               ori          a3, a1, -1679
                  beq          s2, sp, 51f
51:               sltu         s9, a6, s1
52:               sra          a5, gp, a1
53:               bne          zero, t1, 56f
                  ori          a3, zero, -1555
                  sll          t5, t2, a6
56:               bne          t2, gp, 57f
57:               bge          a5, s1, 67f
                  add          a6, gp, s10
                  slti         gp, s1, -1501
                  sra          s6, t6, t0
                  add          a5, s7, a1
                  blt          s0, a7, 77f
                  slti         t4, t4, 1775
                  srl          sp, s8, a7
                  slli         s6, t5, 1
                  blt          s1, s8, 73f
67:               sub          s8, a0, t4
                  sltiu        t2, s6, -1593
                  andi         sp, s7, 1268
                  sra          zero, s6, t6
                  auipc        tp, 525941
                  sltu         a5, a6, a2
73:               slli         t6, s10, 11
                  beq          s2, s2, 81f
                  slt          a4, a6, s11
                  srai         s10, s6, 6
77:               srli         zero, a0, 24
                  blt          a6, a1, 89f
                  or           a2, gp, zero
                  nop
81:               xori         sp, ra, -1192
                  xor          s5, a1, s9
                  srli         t5, a3, 18
                  bltu         t6, s3, 91f
                  sltiu        s10, s1, -976
                  srli         gp, a0, 28
                  and          s8, s1, tp
                  sltiu        s8, s2, 812
                  sltiu        s0, s1, -1574
                  srli         s9, t1, 31
                  xor          s6, gp, a2
                  andi         s0, s2, -1966
sub_3_j10:        jal          s0, sub_10 #jump sub_3 -> sub_10
                  sub          a0, s4, s9
                  bgeu         s7, t1, 108f
89:               beq          s10, a3, 90f
90:               andi         s7, t0, 2010
91:               bgeu         t4, a5, 109f
                  nop
                  sra          t6, s8, t4
                  lui          s5, 807649
                  xori         a7, tp, 1951
                  blt          a2, t1, 116f
                  blt          s3, t0, 112f
                  xori         a4, gp, 1828
                  bge          t0, a4, 113f
                  nop
                  addi         a3, gp, 1500
                  bgeu         s8, sp, 108f
                  srai         sp, a4, 16
                  beq          tp, s9, 119f
                  sltu         s8, t6, t3
                  bge          s5, s5, 113f
                  srai         s3, t6, 15
108:              bne          a6, a2, 113f
109:              sltu         a7, a2, t5
                  bgeu         tp, s10, 121f
                  bne          t2, a4, 112f
112:              bltu         s0, s10, 116f
113:              bgeu         s10, s6, 128f
                  xor          t6, s11, t1
                  bne          a3, s9, 118f
116:              sra          s1, s10, t2
                  xori         a2, a3, 1041
118:              beq          s8, zero, 133f
119:              and          s0, t6, s1
                  sltu         t4, a7, s0
121:              bge          s0, a7, 123f
                  bgeu         t4, t4, 141f
123:              bne          s7, s9, 124f
124:              blt          a3, t4, 143f
                  or           t3, tp, t1
                  sll          s1, s3, a6
                  sltu         s1, t1, s2
128:              slti         t6, t2, 1613
                  or           s1, a2, t1
                  srl          ra, t5, zero
                  slli         t6, a0, 15
                  beq          s4, s6, 151f
133:              addi         s8, t2, 561
                  ori          s7, gp, 629
                  sub          s10, t0, tp
                  sra          t1, a4, s4
                  xori         s9, zero, 839
                  bge          a3, tp, 156f
                  xor          s1, s9, s5
                  sltiu        ra, a4, 358
141:              sll          t2, s5, tp
                  sra          tp, a6, t3
143:              slti         s10, t3, 414
                  sll          a0, t1, tp
                  bltu         s9, a1, 159f
                  srli         s1, s6, 7
                  slli         t2, a7, 30
                  slti         a6, gp, -853
                  and          s7, s0, zero
                  auipc        ra, 586306
151:              bltu         sp, s6, 155f
                  add          a6, s4, tp
                  xor          s11, sp, a3
                  or           a6, s0, a7
155:              srli         s9, s11, 4
156:              add          s1, s9, s7
                  bgeu         a2, s1, 166f
                  bge          s4, s5, 165f
159:              srl          ra, t5, a1
                  sub          a3, zero, tp
                  sltu         a4, ra, s8
                  lui          s11, 148704
                  srl          t5, sp, t6
                  bltu         s0, s6, 165f
165:              beq          t2, ra, 185f
166:              bgeu         a5, s2, 173f
                  bne          t6, t4, 177f
                  srl          s11, a1, s3
                  sltiu        zero, s7, 871
                  xori         s6, s1, -340
                  bne          s9, t2, 182f
                  sltiu        s10, t6, 1401
173:              auipc        ra, 276826
                  add          s4, s1, t0
                  slti         ra, s4, -1529
                  bne          a1, t0, 183f
177:              bne          a7, t6, 197f
                  ori          t5, s4, 119
                  or           a4, a2, t6
                  xori         s6, t1, -1190
                  and          s4, t5, gp
182:              ori          ra, ra, 1955
183:              add          sp, t4, s10
                  srai         a2, s10, 13
185:              beq          t0, s11, 190f
                  addi         tp, a4, 64
                  bne          s4, s1, 201f
                  sltu         a0, gp, zero
                  sltiu        t3, t1, -1662
190:              slt          s8, s8, s0
                  sub          s11, a4, t2
                  ori          s7, tp, 609
                  srl          t6, s4, gp
                  addi         sp, s9, -1512
                  sll          s10, a2, a1
                  bne          a4, t0, 211f
197:              slti         a6, t2, 384
                  auipc        s5, 465483
                  or           a4, s0, s5
                  slti         t2, s9, 734
201:              nop
                  sra          s1, s1, gp
                  bne          s8, s0, 208f
                  bltu         t3, a7, 205f
205:              andi         s11, s9, 1913
                  addi         s0, tp, 440
                  lui          a5, 778319
208:              andi         sp, t1, 578
                  addi         a0, s6, -1681
                  srl          a4, t4, s9
211:              bgeu         s11, s5, 226f
                  blt          s7, ra, 221f
                  or           s8, s3, s4
                  srl          a2, a2, a3
                  nop
                  bge          a3, ra, 223f
                  and          t6, s1, a5
                  bltu         t3, tp, 225f
                  srl          tp, a2, s3
                  blt          s4, zero, 230f
221:              srai         a6, s11, 3
                  bne          t3, s8, 242f
223:              auipc        t6, 1045749
                  andi         gp, ra, 466
225:              or           t1, t1, ra
226:              andi         a6, a1, -722
                  or           a7, t3, s3
                  sll          tp, t5, s2
                  bgeu         t6, s4, 230f
230:              bltu         s6, s9, 232f
                  and          t1, a4, t1
                  la           sp, region_0+1364 #start riscv_load_store_rand_instr_stream_2
                  sb           s2, -174(sp)
                  andi         a7, s11, -1580
                  addi         s8, tp, 454
                  lbu          s4, -221(sp)
                  sb           s1, -146(sp)
                  lhu          a5, 224(sp)
                  sb           s1, -205(sp)
                  srai         t5, s0, 17
                  sb           tp, 184(sp)
                  sb           s5, 202(sp)
                  and          s9, t3, t2
                  addi         a0, s10, -1006
                  lhu          s7, 218(sp)
                  ori          t3, t1, 1226
                  lbu          a3, 25(sp)
                  sw           a0, -216(sp)
                  nop
                  sh           a6, -234(sp)
                  addi         t6, a6, 207
                  ori          t4, t6, -1333
                  lb           t4, 45(sp)
                  lb           a6, 139(sp)
                  nop
                  lbu          s10, 225(sp)
                  slti         a2, a0, 105
                  lbu          s7, -150(sp)
                  sb           a6, 210(sp)
                  lb           s11, -57(sp)
                  lhu          a3, -2(sp)
                  lh           tp, 98(sp)
                  lb           s0, -97(sp)
                  lhu          s1, -182(sp)
                  sll          s6, a0, s3
                  lbu          ra, 107(sp)
                  lb           s11, -65(sp) #end riscv_load_store_rand_instr_stream_2
232:              beq          tp, s8, 239f
                  srai         t6, s5, 20
                  bltu         a2, tp, 252f
                  bne          s1, s6, 254f
                  add          s1, zero, a3
                  bgeu         a3, t0, 243f
                  xori         ra, s2, -1476
239:              srli         s5, tp, 12
                  sltu         s7, a1, s10
                  auipc        zero, 770491
242:              add          a0, zero, s8
243:              blt          s11, s1, 254f
                  lui          s0, 565829
                  sll          s5, a1, ra
                  or           s0, tp, a5
                  addi         s4, s2, 406
                  blt          a3, a6, 252f
                  or           a7, a1, s4
                  bge          s11, t3, 265f
                  nop
252:              sltu         s1, t5, gp
                  slti         a4, a3, 1964
254:              sltu         t5, t6, a2
                  sub          t1, a4, a7
                  slli         s10, a7, 9
                  sltu         s7, s2, a5
                  auipc        s5, 173000
                  slti         s4, zero, 2008
                  srl          zero, s5, t3
                  sltu         s10, t1, s8
                  slli         sp, gp, 5
                  or           t1, s5, s0
                  sra          tp, s2, t0
265:              sltiu        a5, ra, -1424
                  blt          s10, a1, 269f
                  srli         t4, t0, 3
                  srai         t1, s8, 3
269:              slt          a2, s5, s8
                  lui          t6, 555023
                  auipc        s10, 200621
                  beq          s10, gp, 286f
                  srl          sp, s2, s6
                  beq          t0, s11, 289f
                  slt          a6, s8, s5
                  ori          s7, a3, 1187
                  slti         tp, s2, -2043
                  slti         s4, a5, -1902
                  sltiu        a3, a5, 1457
                  sub          t3, s1, t4
                  bltu         a3, s6, 295f
                  sll          a6, s6, a7
                  sra          t6, s1, a1
                  sltu         a2, s0, s2
                  auipc        a6, 995642
286:              blt          t1, a6, 306f
                  slt          a0, t4, sp
                  bltu         t6, t5, 303f
289:              slt          s8, a7, a4
                  slli         s11, a3, 24
                  nop
                  srli         a3, s8, 23
                  nop
                  addi         tp, s2, 1341
295:              slti         zero, s3, -392
                  addi         a3, t0, 132
                  srl          gp, t6, s8
                  auipc        gp, 56151
                  add          a0, a7, t3
                  sll          t3, s8, t2
                  addi         s1, a2, 819
                  srl          t3, s6, t3
303:              sub          s0, ra, t6
                  slti         t3, t2, -716
                  andi         gp, t0, -352
306:              bgeu         s6, s7, 310f
                  sltu         ra, a7, t6
                  and          a5, a7, s3
                  sub          s4, a1, gp
310:              or           t4, s2, s5
                  beq          t5, s6, 322f
                  xori         t4, s9, -1508
                  xori         a4, zero, 411
                  slt          s5, a2, s10
                  andi         t6, s0, -1405
                  bltu         a7, a4, 323f
                  srl          a3, a3, ra
                  sra          gp, s5, s8
                  slti         sp, s1, -996
                  srli         ra, s10, 11
                  andi         a6, a5, 1438
322:              sub          t5, s6, t1
323:              bgeu         t0, s9, 342f
                  srai         sp, s5, 27
                  bltu         ra, a0, 344f
                  andi         a7, a1, -812
                  sll          a7, s9, a0
                  bgeu         sp, t5, 333f
                  or           gp, a6, a3
                  srli         t6, s6, 25
                  ori          t4, a1, 1703
                  la           s3, sub_7
                  or           gp, tp, t4
                  sra          t1, s3, t2
                  addi         s3, s3, 1020
                  srai         s6, a5, 12
                  slli         t2, sp, 7
                  sra          gp, a5, a0
sub_3_j9:         jalr         s0, s3, -1019 #jump sub_3 -> sub_7
                  add          a7, a3, tp
                  sub          a7, a4, a2
                  sll          a7, s1, s0
                  auipc        sp, 501955
333:              sra          tp, a4, s9
                  bge          ra, s5, 335f
335:              add          t5, a3, ra
                  sltiu        t1, s8, 1640
                  nop
                  bgeu         s11, gp, 349f
                  and          a4, s5, s2
                  andi         s7, t5, 1041
                  xori         a5, s9, 1999
342:              sll          s1, gp, t0
                  add          sp, s5, sp
344:              and          t4, s3, a6
                  bltu         s5, t1, 359f
                  lui          a7, 703123
                  srai         t4, t1, 6
                  add          a3, s2, s1
349:              auipc        tp, 1045977
                  addi         s8, a0, 1519
                  bgeu         t0, tp, 366f
                  srli         a2, a7, 13
                  bltu         a3, a1, 357f
                  nop
                  srli         t1, a6, 21
                  xor          ra, t4, sp
                  andi         a0, a1, -1545
                  xori         t4, gp, -1325
                  and          s8, t5, a2
                  lui          a6, 878973
sub_3_j7:         jal          s0, sub_10 #jump sub_3 -> sub_10
                  auipc        s11, 201882
                  xor          tp, s8, s4
                  slli         t5, s1, 9
357:              slt          s0, s2, a5
                  beq          s0, t1, 365f
359:              srl          tp, a4, t5
                  sll          s8, s7, t0
                  or           s11, s11, s0
                  blt          s6, t6, 363f
363:              sub          t1, a0, a0
                  nop
365:              ori          a6, t3, -1435
366:              srl          a7, a3, a0
                  andi         t2, s6, -1318
                  beq          a2, a0, 373f
                  blt          s10, s5, 370f
370:              sltiu        s1, s5, 231
                  srai         gp, s3, 12
                  andi         s6, t4, -430
373:              beq          s2, s0, 392f
                  or           s8, a3, a1
                  srl          s7, a2, s4
                  sltu         a5, s3, t0
                  slli         gp, gp, 11
                  lui          t2, 751752
                  andi         s8, t0, -885
                  srai         sp, s4, 20
                  bgeu         s9, t5, 395f
                  lui          a4, 242211
                  sll          s9, t3, a4
                  bge          s5, sp, 404f
                  ori          s6, tp, 699
                  andi         t5, t2, 420
                  sra          s0, t6, s2
                  beq          s8, a4, 393f
                  add          s0, a6, t1
                  nop
                  slt          t2, tp, t5
392:              bge          s9, a1, 401f
393:              slti         s7, s1, 1059
                  sltiu        s4, t2, 335
395:              and          s7, t2, a0
                  add          a3, s1, s9
                  sll          a6, s7, t6
                  bgeu         zero, ra, 402f
                  srli         a0, zero, 4
                  andi         sp, s5, 1295
401:              slli         s0, s2, 12
402:              srli         s0, s4, 2
                  beq          t2, t6, 423f
404:              srl          s10, gp, zero
                  xor          t1, a3, a5
                  xor          s1, t3, a6
                  xori         t2, a6, -491
                  slti         s4, sp, 1736
                  ori          s9, s9, 698
                  or           sp, t0, s6
                  and          s6, t5, a4
                  bltu         s5, t4, 413f
413:              sltu         ra, a1, a0
                  srl          s0, t6, a1
                  slli         a6, t3, 17
                  slt          s9, a5, s10
                  nop
                  bne          t5, a6, 433f
                  lui          s7, 753021
                  sltu         tp, s11, s1
                  beq          t1, t6, 423f
                  beq          s3, s0, 437f
423:              bltu         s10, tp, 434f
                  andi         s4, s6, -1820
                  slti         a2, s11, -1030
                  slli         t2, a2, 5
                  beq          zero, t4, 446f
                  xor          t6, t0, s5
                  andi         s11, s2, 661
                  blt          s2, a4, 445f
                  sltu         t2, s1, s9
                  nop
433:              sra          s11, s7, ra
434:              or           s11, a7, s5
                  xor          a0, zero, a6
                  and          a3, ra, t1
437:              slti         zero, s2, -45
                  sra          s6, s1, s1
                  srai         sp, a5, 28
                  slli         t4, t3, 26
                  sltu         s4, s0, s5
                  auipc        s5, 750457
                  andi         s1, zero, 708
                  and          s1, t5, a3
445:              lui          t2, 880868
446:              andi         t2, gp, -1589
                  slti         a5, zero, -1053
                  xori         a4, a6, 1031
                  andi         a2, a7, -1145
                  srl          a0, s8, s0
                  sub          t2, gp, ra
                  sltu         a0, zero, s3
                  sll          t4, tp, a2
                  add          a5, t2, s8
                  nop
                  bge          t4, s10, 463f
                  add          t6, a1, a3
                  bge          gp, t4, 465f
                  srai         sp, s3, 13
                  srai         s10, a4, 21
                  sll          s10, t2, s2
                  bge          a5, a5, 480f
463:              sltiu        s7, a1, -1860
                  bne          t3, a0, 470f
465:              xor          t2, t3, tp
                  blt          t4, a5, 485f
                  sll          t1, a0, s3
                  sub          t4, t3, a0
                  slli         s5, a5, 13
470:              sra          t4, t5, t4
                  slti         ra, s9, 886
                  xori         a5, tp, -1410
                  blt          zero, t3, 483f
                  nop
                  xori         s6, a2, -1688
                  or           t1, t2, t3
                  bgeu         t5, t4, 484f
                  slti         t1, s2, 1839
                  sll          sp, t0, t2
480:              sltiu        s10, t6, 945
                  sltiu        t1, zero, 410
                  slt          s9, tp, t4
483:              andi         a7, s9, -1235
484:              auipc        s11, 181548
485:              nop
                  xori         t3, a4, 198
                  srli         s3, t5, 0
                  slli         t4, t3, 6
                  and          s5, s1, s10
                  slli         ra, a3, 17
                  bge          t4, s1, 494f
                  sltu         t1, s4, a7
                  ori          s4, sp, -1931
494:              srl          t1, t0, s2
                  srli         s4, s5, 21
                  add          a2, s10, t5
                  andi         s5, tp, 1959
                  or           s10, s7, s7
                  sltiu        s7, s8, 576
                  blt          a6, t1, 510f
                  srli         a4, s10, 3
                  srl          s1, s11, t3
                  or           t6, s4, s6
                  andi         tp, s6, 850
                  xori         t3, a7, -1784
                  sltiu        t5, ra, 2004
                  slti         t3, a6, -926
                  sub          ra, s8, ra
                  srli         zero, sp, 27
510:              lui          ra, 666609
                  srai         s5, s0, 31
                  sltiu        s4, gp, 934
                  xori         ra, a2, -128
                  blt          t4, a0, 518f
                  add          s3, s10, s0
                  srli         s7, a6, 3
                  andi         zero, s8, 657
518:              andi         a3, s10, 667
                  slti         s1, t6, 152
                  xor          s3, s10, a3
                  bge          t5, t6, 523f
                  add          t3, t1, a5
523:              sltiu        t6, t2, -1607
                  sltu         a4, sp, sp
                  add          s3, ra, a2
                  bltu         a6, t1, 546f
                  srai         s7, sp, 20
                  addi         tp, s8, 62
                  add          a2, s3, s0
                  blt          s9, s3, 535f
                  or           a6, a7, s11
                  sltu         s7, a3, a0
                  blt          s6, s1, 540f
                  slt          zero, s8, a1
535:              nop
                  or           s10, s10, a4
                  bltu         a3, t6, 556f
                  slti         s11, s5, 1064
                  srai         s0, sp, 24
540:              lui          s0, 962836
                  xori         sp, t2, -1438
                  srl          s0, a2, s11
                  slt          s7, t2, a1
                  xori         a3, t0, 1149
                  xor          zero, s7, s6
546:              addi         s4, s4, 605
                  slli         s11, a3, 31
                  andi         sp, a6, -1419
                  nop
                  sltu         gp, s2, s2
                  auipc        a6, 590238
                  sra          a5, t0, s5
                  or           t4, t6, a0
                  andi         zero, a3, -1071
                  slti         a7, a0, -54
556:              beq          t5, a6, 563f
                  andi         s0, s2, 1425
                  sra          tp, ra, a4
                  or           s11, s6, a2
                  sll          t3, s3, gp
                  nop
                  ori          a7, a0, 1636
563:              blt          t0, s7, 578f
                  bne          a2, a1, 573f
                  slt          a5, s7, a5
                  addi         t1, s3, 1667
                  slti         zero, s7, 1049
                  srli         zero, zero, 0
                  sltiu        s8, a2, -441
                  sub          s6, ra, a2
                  xor          ra, t3, s6
                  slti         t6, s5, 1764
573:              bne          t6, a4, 580f
                  slli         s9, s5, 9
                  slli         s8, gp, 17
                  slti         s11, a2, 1947
                  or           s7, s4, s3
578:              or           gp, t5, s1
                  slli         a0, gp, 14
580:              and          s8, s10, a3
                  lui          t2, 716228
                  srai         s8, sp, 15
                  nop
                  andi         zero, s2, 1936
                  beq          t4, a0, 589f
                  bne          s7, a4, 601f
                  sll          t5, sp, s4
                  lui          ra, 568837
589:              or           a4, a7, a4
                  sub          s1, gp, a5
                  andi         s5, s3, 436
                  sub          a0, a5, a7
                  srli         a2, t3, 28
                  srl          a6, a7, a2
                  srai         t6, t1, 1
                  bltu         t2, s11, 615f
                  sltiu        a4, t2, 1011
                  sltiu        s11, sp, 1152
                  slli         s8, a4, 11
                  ori          a7, gp, -1420
601:              srl          a4, s10, gp
                  sll          s6, t5, s2
                  srli         s11, a5, 5
                  slti         s10, t0, -994
                  sub          t6, s2, a0
                  sltiu        s0, s4, -718
                  bltu         s8, s0, 618f
                  ori          s9, a5, 1978
                  ori          t3, a5, 842
                  bgeu         s11, s8, 611f
611:              sll          t5, a0, t3
                  xori         t4, a7, -485
                  bne          a0, s9, 624f
                  auipc        s4, 892834
615:              blt          t2, s1, 629f
                  sll          t5, t6, s4
                  blt          s0, a3, 618f
618:              slli         s3, s4, 13
                  or           s4, t6, sp
                  sra          a4, a7, s0
                  ori          t2, t4, -44
                  slti         a4, gp, -1116
                  bgeu         tp, s0, 630f
624:              srli         a6, tp, 25
                  slt          t4, s8, s0
                  sra          t1, a7, s6
                  xor          a3, s11, ra
                  slt          s5, a3, t5
629:              slti         ra, a3, -968
630:              addi         s0, s7, -1638
                  sub          a4, s11, t0
                  slt          s4, ra, s4
                  slti         a3, t2, 1201
                  addi         s10, a7, 1687
                  bgeu         a4, s11, 649f
                  srli         a7, t5, 5
                  lui          a3, 979484
                  add          zero, a0, s0
                  slt          s9, s7, a5
                  auipc        s4, 572911
                  srli         t2, t4, 14
                  sltu         a6, a5, s2
                  or           a4, t2, gp
                  blt          a1, zero, 659f
                  nop
                  xor          a0, s4, a5
                  srl          s4, t6, tp
                  sub          a2, s6, s8
649:              sll          s11, ra, s3
                  sltiu        ra, a1, -1897
                  sltu         s6, a5, t6
                  or           s0, t0, s6
                  and          a0, ra, a7
                  auipc        s10, 632836
                  andi         a6, t1, -1135
                  srli         t5, ra, 1
                  addi         s5, s6, -115
                  andi         s1, t0, -1007
659:              srai         s1, s4, 26
                  or           t6, a6, a7
                  addi         t1, a0, -526
                  slti         t1, a2, -301
                  or           a0, gp, t3
                  add          s11, a5, a7
                  slti         a0, s0, 458
                  nop
                  sltiu        t6, s5, 1762
                  lui          s5, 397463
                  sltu         tp, a1, s2
                  add          t4, t6, s5
                  ori          a6, t6, -512
                  beq          a4, t4, 690f
                  srai         ra, a6, 5
                  srl          a2, sp, sp
                  nop
                  xori         t4, t4, -527
                  bne          a3, t3, 697f
                  add          s5, zero, t5
                  sltu         s10, a7, t0
                  beq          s11, s7, 681f
681:              add          s11, sp, gp
                  slt          a6, a4, s5
                  or           a7, a0, t1
                  andi         s4, a5, -570
                  sltiu        s8, s2, -814
                  slli         zero, s2, 6
                  srli         t6, a7, 8
                  bgeu         t4, t0, 693f
                  bgeu         s11, s1, 692f
690:              xori         t5, sp, -887
                  slli         a3, a7, 13
692:              srli         a5, s10, 9
693:              xori         t6, a1, -1006
                  auipc        a6, 53642
                  bltu         ra, a6, 710f
                  blt          a5, gp, 715f
697:              ori          ra, a3, 271
                  andi         zero, a5, 226
                  sll          a4, tp, a0
                  bltu         zero, s5, 706f
                  sll          tp, a3, s5
                  srai         s4, s10, 23
                  or           t3, a3, t3
                  sra          s5, s9, tp
                  bltu         s1, s7, 716f
706:              sltiu        s11, s11, -1116
                  sll          s5, t2, t6
                  beq          ra, t2, 726f
                  add          s6, t3, s11
710:              bne          t6, tp, 711f
711:              bne          s8, t4, 713f
                  srli         s7, t0, 9
713:              bltu         ra, a6, 720f
                  srli         t6, s2, 16
715:              andi         s3, s7, 448
716:              and          s3, s1, s0
                  add          zero, s11, ra
                  sltu         a7, ra, s6
                  sub          s9, s11, a4
720:              add          t5, a7, a7
                  slli         s0, s1, 23
                  sltu         zero, a1, ra
                  slt          t6, s4, a0
                  slt          zero, s0, t6
                  bge          s7, s5, 736f
726:              xor          s4, s9, s2
                  add          s0, a3, s9
                  sltiu        sp, tp, 1332
                  bge          a2, a7, 736f
                  sra          s10, s3, s2
                  bgeu         s9, a6, 734f
                  xor          a0, s4, t4
                  xor          a0, gp, s9
734:              sltu         s6, s9, s10
                  srl          gp, t1, s8
736:              srli         s9, s9, 18
                  lui          s10, 664513
                  ori          s5, s6, 520
                  lw           s0, 4(s2)
                  sra          s8, a0, a5
                  addi         a2, a0, -1641
                  andi         s9, a0, 106
                  slli         a6, s11, 20
                  addi         s2, s2, 44
                  ori          t1, a2, -1359
                  lui          s5, 742444
1001:             addi x28, x8, 0
1001:             jalr x28, x28, 0
sub_5:            auipc        t2, 170039
                  addi         s2, s2, -16
                  sltu         s8, s9, t0
                  ori          t3, t5, 838
                  xori         s6, s8, 1064
                  sw           s0, 4(s2)
                  auipc        gp, 1316
                  srli         a7, s4, 8
                  lui          a4, 376986
                  bgeu         s5, a4, 7f
                  slli         t5, s7, 31
                  sub          t3, sp, s6
                  blt          sp, sp, 10f
                  srai         t6, sp, 5
7:                bne          a1, a2, 10f
                  xori         s11, s2, 838
                  add          a4, s3, s7
10:               srli         a3, s4, 3
                  sub          t6, s4, t6
                  nop
                  lw           s0, 4(s2)
                  srl          s9, s2, s3
                  sll          s11, s8, a0
                  slt          t5, t6, a5
                  addi         s2, s2, 16
                  sra          t5, a7, a5
                  slti         s1, s5, -1038
                  srli         a0, a5, 0
                  ori          gp, a3, 1082
29:               addi x31, x8, 1
29:               jalr x31, x31, 0
sub_8:            sll          a6, t3, s1
                  sll          a2, a4, a3
                  and          s6, a7, s11
                  slti         s6, t2, -670
                  addi         s2, s2, -60
                  sll          t4, s0, s7
                  sw           s0, 4(s2)
                  and          s3, s5, t6
                  add          tp, gp, s5
                  nop
                  slti         t1, a3, 1164
                  la           a0, region_1+1751 #start riscv_load_store_rand_instr_stream_2
                  lbu          a4, -30(a0)
                  ori          zero, a2, -568
                  lbu          s6, -29(a0)
                  addi         gp, s8, -543
                  lb           s8, -60(a0)
                  sb           s2, -31(a0)
                  sh           ra, -13(a0)
                  sh           s1, -27(a0)
                  lh           s1, 43(a0)
                  or           t5, s0, s2
                  slti         s9, a5, 395
                  sh           s7, 21(a0)
                  sb           s9, 50(a0)
                  srli         s5, sp, 29
                  sltiu        s7, t6, 510
                  sb           a4, -6(a0)
                  sb           a3, -36(a0)
                  lb           t1, -48(a0)
                  srai         a6, s0, 19
                  sb           a0, -13(a0)
                  lb           s1, -41(a0)
                  sb           a1, -50(a0)
                  andi         a5, s6, 1762
                  srli         ra, s6, 15
                  sb           gp, 10(a0)
                  sh           s0, -53(a0)
                  srl          ra, a7, s7
                  xori         t1, s4, 55
                  lbu          t4, -42(a0) #end riscv_load_store_rand_instr_stream_2
                  la           s1, region_1+821 #start riscv_load_store_rand_instr_stream_3
                  lbu          t5, 41(s1)
                  lb           t6, -12(s1)
                  srai         a4, a4, 20
                  sb           s0, 58(s1)
                  andi         gp, s11, 1308
                  lbu          t3, 50(s1)
                  add          a0, a0, t0
                  slti         ra, ra, 1485
                  lb           t4, -11(s1)
                  sh           s7, 47(s1)
                  sb           s7, 61(s1)
                  lb           a5, 40(s1)
                  lui          gp, 208654
                  addi         a7, t5, 781
                  lui          a0, 660681
                  lh           a2, 19(s1)
                  lb           a7, 2(s1)
                  slti         tp, s7, -1902
                  lbu          zero, 10(s1)
                  sra          s0, a3, s10
                  andi         s11, s10, 2047
                  lbu          s7, 49(s1)
                  lbu          s8, -57(s1)
                  lb           t6, 30(s1)
                  sb           t3, -22(s1)
                  sb           s10, -6(s1)
                  lb           a7, 14(s1)
                  srai         a3, s1, 9
                  or           sp, zero, t6
                  lhu          s8, 61(s1)
                  lb           s7, -28(s1)
                  sltiu        s8, a1, -380
                  sb           a3, 28(s1)
                  lw           a6, 55(s1)
                  slti         zero, gp, 1285
                  or           t3, zero, ra
                  lhu          t2, 13(s1)
                  sub          s4, a3, s11
                  xor          zero, tp, ra
                  sltiu        a7, tp, 1387
                  and          s3, s2, sp
                  lbu          t3, 28(s1)
                  lbu          zero, -22(s1)
                  srl          a0, t5, s1
                  or           a3, a6, t0
                  slti         a4, a0, -732
                  lui          a2, 811383
                  lhu          a2, -31(s1)
                  lb           sp, -14(s1)
                  sltu         sp, s5, zero
                  sw           s11, -57(s1)
                  srli         a0, a7, 9
                  sltu         a4, tp, s10
                  sb           a1, 23(s1) #end riscv_load_store_rand_instr_stream_3
                  and          a2, t5, s0
                  srl          t6, t1, s8
                  addi         ra, s7, -1694
                  bgeu         gp, s4, 11f
                  andi         sp, a1, -1357
                  slli         t5, ra, 8
                  bge          gp, t6, 7f
7:                addi         gp, t1, -1711
                  srai         s5, t6, 20
                  bne          s8, a1, 16f
                  sll          s8, s4, tp
11:               nop
                  nop
                  bne          ra, s4, 24f
                  slt          a3, a0, a6
                  xori         s0, s2, 1778
16:               xori         t1, t3, -909
                  addi         a7, t4, 628
                  auipc        tp, 24314
                  srl          s7, tp, s9
                  and          s6, t1, a1
                  sra          a7, s11, gp
                  add          zero, t4, s10
                  sltu         t4, a6, ra
24:               sra          a6, s1, t0
                  ori          a6, s3, 1332
                  and          a2, t3, s3
                  sltu         zero, a0, a3
                  add          s7, ra, a2
                  beq          a7, a3, 35f
                  slti         t3, a6, -251
                  bgeu         s10, s10, 46f
                  xor          s0, s3, t3
                  sltu         gp, t1, a3
                  bgeu         a0, t1, 49f
35:               xor          t1, a6, a1
                  slti         t5, sp, -1240
                  srai         gp, s1, 10
                  sra          tp, a0, s9
                  nop
                  bgeu         s6, s3, 57f
                  sub          s0, ra, s5
                  and          ra, t2, zero
                  bltu         t1, t2, 53f
                  bltu         zero, sp, 63f
                  bne          s9, t1, 61f
46:               beq          s7, s3, 48f
                  srl          s4, s11, t2
48:               ori          sp, t3, 466
49:               lui          a3, 901985
                  add          s1, t6, s1
                  slt          t6, s11, a2
                  sltiu        tp, s5, -1183
53:               srli         t6, a5, 26
                  addi         t6, a7, 2
                  auipc        t4, 781766
                  srl          a3, s0, a3
57:               slt          tp, a2, t3
                  auipc        a6, 799246
                  nop
                  sll          ra, t2, t6
61:               xori         s7, s11, -1390
                  add          tp, a7, t4
63:               sra          t4, gp, s1
                  sltiu        a7, a3, 1704
                  bge          t5, a6, 75f
                  lui          t6, 701054
                  or           t6, t2, t3
                  slt          a2, a7, t2
                  bge          a3, t4, 70f
70:               srl          s4, a6, s1
                  sub          sp, a1, t5
                  bgeu         a6, s0, 76f
                  lui          tp, 184032
                  sltu         t1, a0, s0
75:               addi         t1, s6, -1859
76:               sll          a0, t2, t5
                  sub          s6, a3, a7
                  sll          s8, s2, a3
                  beq          s7, zero, 89f
                  sltu         s3, s5, s11
                  sub          a6, a1, s10
                  beq          a4, s0, 101f
                  sltiu        a6, s2, 1973
                  add          s8, s10, s2
                  slt          t4, s5, a2
                  slt          s11, s0, a5
                  auipc        s9, 655492
                  andi         zero, s6, -313
89:               sll          s1, s11, t3
                  blt          a7, s6, 108f
                  srli         s5, a7, 27
                  srai         s10, sp, 29
                  beq          gp, tp, 99f
                  sll          s8, t4, t2
                  srl          a2, s2, t1
                  or           s11, s6, t2
                  la           sp, region_1+393 #start riscv_load_store_rand_instr_stream_1
                  lb           t3, -173(sp)
                  sltiu        s8, a6, 1606
                  addi         s9, a7, -1434
                  sb           t3, 141(sp)
                  sltu         gp, ra, s9
                  sb           a4, -125(sp)
                  sb           s8, -14(sp)
                  xor          s4, t2, a7
                  lbu          s4, -24(sp)
                  sb           a1, 204(sp)
                  lb           t6, 244(sp)
                  lh           t5, -11(sp)
                  sll          a2, a0, zero
                  lhu          t3, -23(sp)
                  srl          a2, sp, s11
                  lb           ra, 156(sp)
                  slli         s9, t5, 1
                  lb           s9, -204(sp)
                  lui          t1, 419865
                  sltu         t3, ra, s7
                  auipc        s8, 6922
                  and          ra, t0, t2
                  sub          zero, s4, t6
                  sub          s1, ra, s11
                  or           s7, a4, sp
                  sh           t1, -57(sp)
                  or           t6, zero, s2
                  sub          s8, s11, t6
                  lb           t4, 8(sp)
                  auipc        ra, 1046568
                  sb           s8, 56(sp)
                  lb           t6, -208(sp) #end riscv_load_store_rand_instr_stream_1
                  slti         t4, gp, 621
                  slti         tp, t2, 881
99:               auipc        gp, 850742
                  srl          t3, a3, sp
101:              addi         a0, s7, -736
                  slli         s1, s0, 9
                  add          s10, t1, s5
                  xori         a2, s10, -1358
                  and          s5, zero, t2
                  add          t6, zero, t0
                  xori         s11, a4, 1228
108:              srl          s5, zero, a0
                  auipc        a2, 358610
                  slt          a4, a0, t2
                  add          t3, t6, a0
                  bge          s5, s7, 121f
                  addi         a4, s4, -205
                  srl          s9, s0, a2
                  and          s9, t0, a5
                  sra          t1, s7, a2
                  slli         s3, t5, 31
                  ori          a2, a5, -73
                  xori         s8, s8, 265
                  blt          ra, ra, 135f
121:              sltiu        s4, a3, -1723
                  sltu         a7, a2, s3
                  bge          a0, a7, 134f
                  ori          s0, s4, 1423
                  beq          t0, gp, 142f
                  slti         s8, s11, 417
                  sra          s4, a0, a2
                  and          s8, s5, a5
                  blt          a5, zero, 145f
                  sub          t3, ra, a5
                  addi         a6, s8, -442
                  and          t4, a3, t1
                  add          zero, a1, sp
134:              bge          s10, gp, 138f
135:              slt          t2, a6, s8
                  addi         t2, t5, -2004
                  slt          ra, a0, a7
138:              sub          s0, a6, s6
                  sub          t4, a1, s4
                  add          t1, s8, t5
                  srli         s0, s2, 26
142:              sub          s3, s8, t1
                  addi         zero, s0, -357
                  blt          s2, zero, 153f
145:              blt          gp, s1, 151f
                  sra          s10, zero, t6
                  sltiu        s5, a2, -973
                  addi         s5, zero, -619
                  sub          s4, s9, s4
                  bge          t4, s6, 151f
151:              addi         s11, zero, -424
                  sll          zero, t6, t6
153:              bge          gp, s8, 173f
                  addi         s9, sp, -1957
                  srl          s1, s11, t1
                  slt          a4, tp, s1
                  lui          s11, 777432
                  sll          a7, t5, t6
                  bgeu         a1, a3, 169f
                  slt          s9, t5, a0
                  sra          ra, t3, sp
                  sltiu        t5, s1, 674
                  nop
                  srl          s9, a2, s0
                  sra          t4, zero, a7
                  auipc        s1, 240594
                  add          s5, s11, ra
                  nop
169:              and          s1, a4, ra
                  auipc        s3, 421584
                  srai         s6, s2, 12
                  auipc        s4, 61412
173:              lui          s7, 511453
                  or           t2, a4, s9
                  beq          s10, s8, 194f
                  sra          a3, s8, a6
                  sub          a4, a6, s9
                  addi         s6, s6, 185
                  srl          a7, gp, s11
                  xori         a3, a5, 1489
                  srai         s8, s2, 24
                  nop
                  sltu         gp, s4, s9
                  sub          s0, gp, t2
                  slli         ra, s0, 22
                  slt          a7, s0, s1
                  nop
                  lui          t6, 261370
                  ori          s10, t5, -235
                  beq          a6, t5, 196f
                  srli         t2, s8, 1
                  sltu         a5, tp, s1
                  sltiu        s9, s3, 469
194:              sub          s6, t0, t2
                  addi         s11, s9, -1279
196:              auipc        s9, 703070
                  sll          t1, t4, a3
                  sltiu        s5, zero, 1622
                  ori          s10, s1, -831
                  blt          t4, s8, 210f
                  srli         s11, ra, 11
                  srli         t2, t6, 16
                  sra          t6, s0, a3
                  nop
                  bge          s5, s2, 215f
                  xori         s9, t3, 445
                  sltu         s11, s6, t2
                  bge          s5, t6, 224f
                  sltiu        a2, a3, -1174
210:              lui          ra, 873919
                  ori          sp, sp, -1415
                  beq          a1, sp, 218f
                  xor          gp, s0, a7
                  srai         s7, s11, 20
215:              blt          a2, s3, 225f
                  nop
                  srl          a4, ra, t4
218:              ori          a5, t2, 1492
                  andi         s5, s11, 341
                  and          t1, a0, a0
                  sltu         gp, t0, s9
                  xori         s9, a4, -520
                  nop
224:              or           a0, s4, s2
225:              auipc        ra, 896451
                  lui          s6, 881130
                  and          t2, a7, t3
                  nop
                  or           gp, s10, a3
                  sltu         a3, t3, s5
                  sub          s9, s7, t5
                  slt          a6, s3, s5
                  sltiu        a4, s2, -1109
                  xori         gp, t1, -199
                  xori         sp, t5, -1637
                  ori          a7, t6, -642
                  srli         t2, t0, 29
                  add          ra, s6, s8
                  sltu         zero, a6, a0
                  bne          s2, a0, 241f
241:              lui          a6, 288091
                  bge          a3, s4, 257f
                  beq          ra, s11, 261f
                  bne          a4, t1, 245f
245:              srl          a6, s5, s5
                  addi         sp, ra, 1467
                  add          s3, t1, tp
                  sll          gp, sp, s0
                  bge          s1, ra, 258f
                  blt          s4, s9, 260f
                  auipc        t5, 652502
                  slt          s10, t0, t4
                  blt          a1, s11, 270f
                  blt          a6, ra, 271f
                  sra          s6, s6, a2
                  srai         s10, t2, 12
257:              slti         gp, ra, -960
258:              srai         zero, a2, 23
                  srl          t5, s3, zero
260:              sltiu        s0, a4, 1695
261:              add          s5, gp, s0
                  lui          s0, 834196
                  addi         a5, zero, 775
                  auipc        s6, 478206
                  srai         a2, ra, 15
                  addi         s0, s1, 1441
                  srai         s8, s3, 21
                  lui          a7, 382583
                  xor          tp, t0, s8
270:              blt          s9, s4, 272f
271:              bgeu         s0, gp, 279f
272:              bne          zero, s0, 278f
                  bne          t0, s2, 284f
                  sltiu        a0, s0, -1367
                  or           a4, ra, s4
                  bltu         s8, t1, 292f
                  slti         t1, a1, 1934
278:              lui          s9, 396624
279:              lui          ra, 45733
                  slti         t4, s1, -996
                  srai         a0, gp, 13
                  addi         tp, a5, -657
                  bltu         t0, s9, 290f
284:              slli         a3, t0, 29
                  sra          sp, a7, zero
                  blt          s7, a3, 301f
                  xor          s5, a3, sp
                  srai         ra, s11, 25
                  bltu         t3, tp, 290f
290:              slli         t2, s1, 17
                  add          s10, a7, s7
292:              andi         s11, t1, 967
                  srl          s10, s9, s0
                  beq          a2, s9, 298f
                  sltiu        a4, t1, 1
                  andi         s6, a2, -363
                  xori         s0, zero, -1647
298:              srai         s4, ra, 31
                  and          s1, s8, s4
                  auipc        ra, 990102
301:              slt          s5, zero, s10
                  srai         tp, s8, 5
                  sltiu        s4, t0, -1452
                  bltu         s5, sp, 313f
                  xor          sp, s11, a3
                  sub          s11, a6, a7
                  add          gp, t1, a3
                  sll          s7, gp, ra
                  bgeu         s5, a7, 313f
                  addi         t3, tp, 562
                  slt          a7, t0, s10
                  xori         a0, t4, -1117
313:              beq          s2, a2, 332f
                  auipc        s9, 623732
                  andi         t6, s3, -1997
                  slt          zero, a0, s10
                  xori         tp, t6, -88
                  bgeu         a1, t3, 338f
                  blt          a5, a0, 334f
                  blt          a4, a3, 331f
                  srai         t6, s6, 21
                  srl          t3, t6, t6
                  andi         t2, s9, -1109
                  sltiu        zero, s9, -205
                  sra          t5, a4, t4
                  sltiu        zero, s0, 410
                  nop
                  addi         s4, tp, -403
                  slli         s8, s11, 27
                  add          ra, tp, a0
331:              sub          a6, t0, t4
332:              add          gp, sp, t5
                  auipc        a7, 760888
334:              add          a5, s1, s4
                  lui          tp, 748462
                  sub          s1, t2, gp
                  sll          zero, ra, t6
338:              add          a3, a2, ra
                  sltiu        s3, s7, -1696
                  and          t3, s0, s2
                  or           s4, s4, s1
                  bne          a4, t4, 350f
                  slt          t4, a7, s10
                  bne          a2, a3, 359f
                  sltiu        t5, a4, -1600
                  addi         a0, a5, 87
                  slli         a6, a5, 0
                  srl          a2, s6, a5
                  add          sp, a6, sp
350:              bgeu         t6, t1, 367f
                  sra          a3, a0, s3
                  sltiu        ra, t1, 1633
                  bne          s10, s9, 363f
                  beq          a3, t6, 365f
                  slt          zero, zero, a3
                  blt          t0, t6, 375f
                  srli         tp, s6, 19
                  sltiu        s8, s10, -1835
359:              srli         t1, t1, 1
                  beq          s7, t4, 362f
                  srai         s4, a1, 18
362:              auipc        a2, 721226
363:              srai         a4, tp, 15
                  ori          tp, s11, -1412
365:              srli         s9, s9, 16
                  sra          s4, t6, ra
367:              auipc        a6, 678873
                  bne          t6, s9, 374f
                  slli         s11, t5, 24
                  srl          t6, s1, a2
                  bne          a5, a2, 378f
                  andi         t6, s11, -794
                  ori          s9, a3, -395
374:              sub          s8, t3, s9
375:              srai         tp, s3, 9
                  bne          tp, sp, 387f
                  sll          s8, t3, s6
378:              auipc        a5, 499794
                  bne          s5, s10, 389f
                  sltu         s0, tp, s3
                  beq          s6, t0, 385f
                  slli         t6, a1, 9
                  sra          s6, a0, s0
                  add          t3, t6, t1
385:              bne          a4, s1, 389f
                  or           ra, a3, a4
387:              bltu         s1, s11, 402f
                  and          t2, a0, gp
389:              sll          a3, t2, tp
                  add          gp, s11, ra
                  blt          a1, a5, 401f
                  and          s7, t0, t6
                  auipc        t4, 578236
                  srl          s6, s7, t5
                  addi         sp, t3, -548
                  srl          a3, s1, s10
                  or           a0, t2, a3
                  or           ra, a3, s9
                  addi         s3, a7, -740
                  slt          t4, a2, a7
401:              srl          t1, a6, zero
402:              sll          a4, s11, s2
                  and          a3, t4, a3
                  slti         s0, t1, -810
                  or           s3, s3, t4
                  bne          a2, s4, 412f
                  xor          s7, a3, s7
                  srli         s1, s9, 17
                  srai         a7, a5, 10
                  nop
                  sra          a2, t1, a0
412:              slli         a6, s8, 24
                  sub          s7, t3, s3
                  ori          a0, gp, -1910
                  and          s9, t2, s5
                  bge          sp, gp, 431f
                  srl          a2, a0, s2
                  and          s7, t6, a5
                  sll          a6, tp, s5
                  or           a2, s2, s5
                  or           t3, t3, s6
                  sra          t6, s3, t3
                  slli         s0, s0, 21
                  xori         t6, s10, 1781
                  bgeu         s1, a2, 441f
                  auipc        t5, 789938
                  andi         t1, s3, -691
                  srl          s0, s11, s5
                  sltu         t4, sp, a2
                  sll          t6, sp, t4
431:              bltu         a0, a6, 440f
                  beq          s2, s1, 452f
                  blt          t2, s5, 449f
                  beq          a2, s5, 435f
435:              slt          s1, t0, a5
                  auipc        a7, 953124
                  xor          t6, gp, a2
                  lui          zero, 748555
                  lui          a6, 447803
440:              or           s9, s5, zero
441:              sra          a6, a4, s1
                  bge          a0, s7, 443f
443:              slli         t2, a1, 19
                  or           s8, s8, t2
                  bge          a6, s4, 455f
                  srl          t2, t0, s4
                  bge          sp, s0, 464f
                  andi         a5, ra, -499
449:              sltiu        t6, s7, -217
                  auipc        ra, 421303
                  andi         s9, a0, 1542
452:              ori          s0, t3, -335
                  sub          a6, s5, s8
                  auipc        s7, 743387
455:              ori          t5, zero, 433
                  slt          t4, a4, s10
                  andi         s10, t6, -1031
                  beq          a1, a0, 467f
                  sll          gp, s11, s7
                  xori         s4, s0, -1628
                  xor          a7, t4, s5
                  addi         a2, gp, 1781
                  and          s8, ra, s3
464:              slti         s4, s10, 398
                  bne          a5, tp, 466f
466:              sll          s7, t2, tp
467:              slti         s7, t6, -1792
                  sltu         sp, s2, t4
                  addi         ra, s4, 572
                  beq          s3, t5, 489f
                  sll          a2, t4, a6
                  la           sp, region_1+1751 #start riscv_load_store_rand_instr_stream_0
                  lbu          a0, -109(sp)
                  sb           s11, 236(sp)
                  addi         ra, s10, -655
                  sb           t3, -153(sp)
                  sw           s11, -91(sp)
                  sltu         s1, a5, t4
                  lhu          s11, 151(sp)
                  sb           sp, -96(sp)
                  lbu          a2, 70(sp)
                  slt          t2, s7, zero
                  lui          ra, 155005
                  lui          a7, 502663
                  lbu          a3, 20(sp)
                  xor          s6, s6, a5
                  xori         a0, s0, 896
                  lui          s4, 943195
                  sh           s5, 129(sp)
                  sll          s6, t5, a4
                  lbu          t1, -216(sp)
                  sll          zero, t1, a6
                  addi         t6, a4, 1118
                  sb           a1, 200(sp)
                  lb           tp, -52(sp)
                  and          gp, t5, s7
                  srai         ra, s11, 13
                  lbu          ra, 219(sp)
                  lbu          a7, -114(sp)
                  sll          a0, s4, a5
                  lb           s3, -202(sp)
                  srai         t3, t6, 28
                  sb           t6, -233(sp)
                  xori         t2, s11, -916
                  sh           zero, 199(sp)
                  xori         s5, sp, 1675
                  sltu         t4, t3, a0
                  nop
                  sb           a3, 24(sp)
                  sub          zero, gp, a5
                  lh           t2, -191(sp)
                  lb           s3, -234(sp)
                  srl          a2, a7, a1
                  srl          s5, a1, a3
                  lb           a7, 230(sp) #end riscv_load_store_rand_instr_stream_0
                  nop
                  blt          sp, s11, 491f
                  and          a2, a2, a3
                  sra          t3, a6, t3
                  slti         s6, s11, 399
                  bge          s6, s0, 483f
                  sub          s8, zero, s5
                  bge          s3, t3, 489f
                  add          t1, t2, a1
                  blt          s10, t1, 488f
                  bne          s4, s8, 502f
483:              bge          a4, s0, 494f
                  beq          t1, a2, 499f
                  sll          a0, s2, s0
                  nop
                  srl          t1, s3, a1
488:              slti         ra, s3, -1226
489:              beq          gp, a6, 490f
490:              bltu         s9, ra, 492f
491:              sub          s10, s1, s7
492:              sltu         s1, t6, a0
                  addi         s8, t3, 378
494:              slti         t6, zero, -395
                  srai         s6, t4, 2
                  srli         s5, a6, 10
                  bne          t5, s6, 512f
                  slli         a4, s8, 30
499:              xor          a7, s1, sp
                  bgeu         s10, t6, 501f
501:              bgeu         zero, t2, 502f
502:              slt          a4, t6, s6
                  addi         zero, a2, 1029
                  srl          tp, s1, s9
                  ori          s6, zero, 166
                  or           a5, a2, t3
                  add          s6, s6, s10
                  srai         a0, a1, 1
                  sll          s1, a1, a7
                  and          s7, t1, t4
                  bgeu         ra, a0, 528f
512:              xor          s7, s2, s5
                  add          gp, t3, t2
                  bgeu         a0, s8, 525f
                  add          s5, a2, a4
                  or           t1, sp, t3
                  xor          a6, s9, t2
                  sltiu        s11, tp, 1939
                  sll          s10, t4, a6
                  xor          t2, s3, t5
                  srai         a4, s1, 24
                  auipc        t6, 225939
                  srli         s0, t2, 23
                  ori          s6, t2, 1780
525:              bgeu         s10, a6, 534f
                  or           t5, s5, s10
                  add          t3, s8, t4
528:              ori          a6, a6, 826
                  beq          sp, s8, 539f
                  lui          s11, 378508
                  sltu         t1, t5, t0
                  bne          a2, s5, 550f
                  slt          ra, t0, s6
534:              andi         s0, a5, 1320
                  xori         s9, s11, -359
                  srai         zero, s5, 9
                  ori          a2, gp, 1287
                  bne          s3, s4, 546f
539:              srli         s5, sp, 29
                  add          t4, s5, s3
                  or           s9, a6, a7
                  andi         s1, t4, 1433
                  addi         a4, s10, 1275
                  xori         a2, a7, -760
                  slt          a0, s5, s7
546:              lui          s3, 67782
                  slt          gp, a4, a0
                  srli         zero, s10, 30
                  add          s1, tp, a3
550:              xori         s10, t1, -1895
                  auipc        gp, 730232
                  auipc        s1, 33013
                  bge          s8, s3, 569f
                  beq          t6, s4, 573f
                  xor          s11, s5, sp
                  beq          s6, t4, 573f
                  sub          t2, a6, s6
                  sub          a2, s2, s8
                  xori         s4, t4, 180
                  ori          a2, zero, -979
                  slli         ra, t4, 8
                  slti         t2, s6, -323
                  xori         gp, a4, 502
                  sll          s4, s1, t3
                  or           s0, t3, a5
                  auipc        t3, 302757
                  ori          sp, s3, -1939
                  and          sp, s1, a1
569:              sra          a7, a0, s11
                  bltu         a7, s2, 586f
                  xori         a6, s3, -1822
                  bltu         t5, s2, 582f
573:              bge          s11, a4, 579f
                  bge          a3, sp, 578f
                  addi         s5, s4, -1974
                  bltu         tp, s5, 582f
                  add          s0, t0, s6
578:              nop
579:              sltu         s4, s9, s1
                  slli         s11, a3, 19
                  beq          s5, t6, 596f
582:              auipc        s8, 58956
                  srai         t1, s10, 13
                  sll          s4, t4, tp
                  slli         s7, s11, 2
586:              beq          s9, t2, 592f
                  xori         s9, s10, -559
                  bne          a2, ra, 597f
                  beq          a0, zero, 602f
                  xori         a4, a4, -110
                  sltu         ra, a3, gp
592:              srai         ra, tp, 23
                  bltu         s9, a4, 597f
                  add          s4, gp, s9
                  sra          s6, a3, s3
596:              and          s9, a0, t4
597:              sll          s11, t4, s7
                  srai         s3, ra, 22
                  srli         zero, t1, 19
                  add          ra, t5, sp
                  slti         s3, t1, -483
602:              srl          t4, s8, t3
                  ori          t6, t1, 1900
                  lui          s8, 404105
                  sltu         t6, tp, t5
                  andi         a7, s6, 1885
                  lw           s0, 4(s2)
                  addi         s2, s2, 60
                  xori         a7, a3, -571
                  lui          s9, 110876
                  ori          sp, a1, -1422
785:              addi x17, x8, 1
785:              jalr x17, x17, 0
sub_9:            sub          gp, a1, a0
                  slt          s4, a5, ra
                  addi         s2, s2, -24
                  srli         s1, s4, 13
                  sll          a0, s8, a6
                  sw           s0, 4(s2)
                  sra          s8, s0, a7
                  ori          s11, s11, 1925
                  xor          tp, t2, s11
                  slt          s1, t5, sp
                  auipc        t6, 386092
                  bltu         a4, t4, 9f
                  beq          s7, gp, 6f
                  sub          s5, t4, t5
                  sltu         s5, a3, a6
                  nop
6:                slli         s8, s9, 29
                  blt          s11, s11, 9f
                  sltu         t6, t1, t2
9:                srl          a4, s11, s8
                  slli         a6, a6, 0
                  sltiu        t5, a1, 117
                  srli         a2, s11, 17
                  srl          s1, s11, a2
                  slti         t3, sp, -1441
                  lw           s0, 4(s2)
                  addi         s3, sp, -1259
                  addi         s2, s2, 24
                  xor          s11, s4, t3
29:               addi x23, x8, 0
29:               jalr x23, x23, 0
sub_6:            srai         a2, s1, 29
                  sub          a5, gp, s9
                  lui          s8, 457869
                  and          a2, s1, s4
                  xori         s7, t0, 696
                  srl          t1, tp, a2
                  addi         s2, s2, -40
                  sra          s6, t6, s2
                  sw           s0, 4(s2)
                  srl          t3, zero, t2
                  xori         s5, s4, 1738
                  sltu         a5, ra, t1
                  la           s3, region_0+1048 #start riscv_load_store_rand_instr_stream_4
                  sb           t5, 35(s3)
                  lb           s0, 13(s3)
                  xor          a7, t0, s10
                  sb           a2, -41(s3)
                  ori          s8, zero, 1138
                  sub          tp, t5, s7
                  sh           sp, 14(s3)
                  srl          tp, s5, s3
                  lhu          ra, -20(s3)
                  sw           a6, -60(s3)
                  xor          tp, a5, a2
                  lbu          tp, 1(s3)
                  lbu          t4, -19(s3)
                  lhu          s0, -38(s3)
                  srl          sp, sp, t5
                  lbu          t1, -25(s3)
                  lb           ra, 27(s3)
                  lh           s5, -18(s3)
                  lw           s11, -60(s3)
                  nop
                  ori          t5, s7, 333
                  sll          a6, ra, s7
                  sb           a5, 35(s3)
                  and          t5, s6, t0
                  sb           t3, -27(s3)
                  lhu          s1, -20(s3)
                  lb           a3, -5(s3)
                  sb           s0, -11(s3)
                  sh           s1, 4(s3)
                  sltiu        a3, t0, -670
                  sb           a2, -34(s3)
                  lbu          tp, 47(s3)
                  sub          a0, s6, s1
                  lhu          s1, -4(s3)
                  sltiu        t6, a7, -606
                  sra          a0, s2, a1
                  lbu          t1, -1(s3)
                  sb           a6, -57(s3)
                  andi         s7, a1, 1535
                  ori          a7, a5, -448
                  lhu          a0, 10(s3)
                  sb           t5, 2(s3)
                  xor          a6, a1, t0
                  xor          s1, t1, s11
                  slt          zero, s7, t4
                  lb           a4, -33(s3) #end riscv_load_store_rand_instr_stream_4
                  la           a6, region_0+859 #start riscv_load_store_rand_instr_stream_5
                  lbu          s9, -178(a6)
                  sb           s5, -182(a6)
                  and          a4, s9, s0
                  lhu          sp, -241(a6)
                  lhu          a3, -157(a6)
                  lh           zero, 65(a6)
                  lhu          a5, -63(a6)
                  lbu          a2, -214(a6)
                  sltiu        s4, a2, -1162
                  sh           sp, -157(a6)
                  sb           ra, 218(a6)
                  sb           a0, -223(a6)
                  lb           gp, -73(a6)
                  or           a4, a5, s7
                  lhu          s1, 139(a6)
                  lhu          t5, 147(a6)
                  lb           s8, 140(a6)
                  sra          a7, t2, a1
                  lhu          s1, 3(a6)
                  sltu         gp, s8, a6
                  add          a4, t4, s2
                  and          tp, a3, a2
                  lhu          s3, -215(a6)
                  auipc        t2, 105175
                  lbu          s4, -37(a6)
                  srli         tp, s9, 22
                  lui          gp, 995085
                  lbu          zero, -74(a6)
                  srai         a2, a3, 18
                  lhu          s6, 51(a6)
                  lh           a7, -123(a6)
                  sb           a0, 188(a6)
                  lbu          t3, -96(a6) #end riscv_load_store_rand_instr_stream_5
                  la           a6, region_1+926 #start riscv_load_store_rand_instr_stream_0
                  nop
                  ori          s4, a7, -160
                  lhu          s6, -254(a6)
                  sw           a4, -150(a6)
                  lw           tp, 14(a6)
                  and          t5, s5, s2
                  slli         s5, s11, 5
                  sltu         t1, a5, s6
                  srli         s1, a2, 21
                  lhu          t3, 92(a6)
                  lbu          s8, -203(a6)
                  slt          a7, s6, s2
                  lhu          s9, 154(a6)
                  lh           t3, 16(a6)
                  sb           a4, -39(a6)
                  or           s0, a7, a3
                  sb           t2, 210(a6)
                  lbu          a7, -127(a6)
                  lb           tp, -51(a6)
                  srai         a5, t4, 24
                  auipc        zero, 41674
                  srl          a7, s6, a1
                  sb           zero, 215(a6)
                  sltu         gp, gp, sp
                  slti         t2, s7, -338
                  ori          t5, s11, 854
                  add          s0, a0, tp
                  sh           s2, -42(a6)
                  or           t6, s6, a3
                  sb           gp, -197(a6)
                  xori         t2, zero, 358
                  sb           t6, -207(a6)
                  addi         a0, gp, -148
                  sltiu        t3, a1, 41
                  sh           t2, -112(a6)
                  sb           s7, 143(a6)
                  lb           s11, -155(a6)
                  lh           gp, 62(a6)
                  sb           s7, 159(a6)
                  lb           tp, -140(a6)
                  lbu          a2, -81(a6)
                  sh           s11, -42(a6)
                  lb           sp, 41(a6)
                  slti         a2, s7, -2011
                  sra          a0, s8, sp
                  slli         tp, t0, 17
                  lbu          a2, -249(a6)
                  lbu          sp, 239(a6)
                  lbu          gp, 57(a6)
                  lui          s6, 560717
                  srl          s5, t6, t5
                  sh           a0, 252(a6)
                  and          a4, t6, a4
                  sub          a3, a5, a4
                  lb           s0, -87(a6)
                  sb           s7, 79(a6) #end riscv_load_store_rand_instr_stream_0
                  bltu         t4, a1, 11f
                  nop
                  bgeu         a3, a0, 3f
3:                sra          t4, a7, a1
                  auipc        s4, 441843
                  andi         t2, a3, -1741
                  ori          a5, t3, -345
                  lui          a6, 323761
                  bge          t3, a1, 12f
                  beq          t2, a3, 29f
                  bltu         s10, t4, 26f
11:               sltiu        tp, t0, 871
12:               bge          gp, t6, 21f
                  bne          s3, s5, 31f
                  bne          zero, t3, 32f
                  slt          t5, a6, sp
                  bgeu         s9, t5, 30f
                  lui          gp, 490787
                  sub          a6, gp, s10
                  bge          a4, a2, 30f
                  andi         t1, s5, 1887
21:               xor          sp, s4, zero
                  addi         t3, s6, -733
                  auipc        t2, 1042677
                  srl          a6, s7, ra
                  bgeu         a0, a4, 42f
26:               ori          t2, a5, -1296
                  addi         s10, a4, -1101
                  sra          a3, t5, s5
29:               srli         sp, t0, 24
30:               sltu         t3, s4, s2
31:               bge          s2, s3, 34f
32:               bne          zero, a6, 45f
                  xori         t2, ra, -1770
34:               sll          s10, sp, t4
                  sltu         s11, s0, t2
                  sltiu        a2, zero, 518
                  slti         t6, t1, 1457
                  srai         s8, s7, 22
                  auipc        s9, 971437
                  bgeu         s3, s10, 51f
                  auipc        tp, 111608
42:               beq          a0, s10, 46f
                  nop
                  srai         ra, s11, 17
45:               sra          s3, s4, tp
46:               sll          t2, t4, t2
                  addi         a2, s8, 1166
                  auipc        a2, 1000292
                  srai         gp, zero, 4
                  sltiu        s1, s2, 1689
51:               add          t6, s10, a7
                  sra          a2, t3, t6
                  add          s8, s3, tp
                  or           s7, t4, s4
                  srl          t4, a4, s0
                  sub          s5, zero, s0
                  bltu         a2, a3, 69f
                  add          a4, t4, a6
                  andi         t2, t1, -156
                  blt          t1, a4, 76f
                  addi         s3, s11, 130
                  bgeu         t3, a7, 75f
                  add          a0, a4, a7
                  sra          t3, a5, a3
                  sltu         s6, a5, t6
                  sltu         t4, s5, s7
                  slti         s4, a4, 634
                  sltu         a0, a6, zero
69:               auipc        a5, 1048566
                  sll          a3, t1, s6
                  addi         zero, s3, -614
                  bne          s9, s7, 77f
                  slti         s7, a3, -733
                  srli         t3, a4, 5
75:               auipc        s7, 531213
76:               sub          s3, s11, t1
77:               srl          s4, s4, s4
                  addi         s5, a0, -1925
                  bne          s6, s6, 98f
                  beq          a4, a7, 92f
                  beq          s6, a1, 84f
                  sra          tp, s4, t0
                  sltu         s8, t3, s3
84:               bgeu         t6, s2, 95f
                  auipc        s3, 463624
                  slli         s0, s3, 18
                  srli         s7, a0, 13
                  srli         a4, a7, 14
                  andi         zero, s6, 1712
                  sub          s5, a6, s1
                  srai         sp, a3, 24
92:               slli         s11, a1, 15
                  or           t5, t0, t1
                  or           s11, s1, t3
95:               bne          s2, a7, 99f
                  sra          zero, s7, s9
                  sltu         a6, a1, tp
98:               sltu         a0, t1, t0
99:               lui          s4, 63655
                  srli         t3, t1, 4
                  bge          ra, s2, 110f
                  srl          a6, s9, s10
                  and          a4, t5, a0
                  slli         s9, s11, 18
                  or           a3, s6, a2
                  bne          s9, a0, 126f
                  sltu         a0, s10, a1
                  sub          a2, s11, t1
                  srli         s8, tp, 16
110:              bge          s11, gp, 111f
111:              bne          a1, t2, 118f
                  blt          s0, ra, 128f
                  add          sp, a4, s1
                  xor          t2, a5, a1
                  la           t6, region_1+1349 #start riscv_load_store_rand_instr_stream_1
                  sub          zero, t4, ra
                  sh           a4, 7(t6)
                  slti         a7, t6, -1651
                  andi         gp, ra, -1989
                  and          s9, a6, ra
                  lbu          t5, -12(t6)
                  lbu          s4, 8(t6)
                  sb           a4, -15(t6)
                  sh           s5, 15(t6)
                  or           t5, s8, s2
                  sh           s0, -5(t6)
                  sb           s8, 13(t6)
                  slti         s8, ra, 434
                  slti         s1, s5, 1353
                  sltu         s6, t6, s10
                  sb           a4, -2(t6)
                  lbu          s0, 6(t6)
                  lh           s8, -3(t6)
                  sh           t4, -9(t6)
                  sb           s8, 2(t6)
                  xor          s3, s7, t6
                  or           s5, a2, s7
                  andi         s9, t1, -1788
                  slt          s0, t0, s2
                  lh           a2, -5(t6)
                  srli         t2, t2, 13
                  ori          zero, a3, 1602
                  addi         a0, s8, 1384
                  and          a2, t6, s6
                  lbu          t4, 4(t6)
                  nop
                  sb           a4, -12(t6)
                  lb           t3, 8(t6)
                  sb           s0, 10(t6)
                  lbu          s3, -10(t6)
                  xor          zero, sp, t3
                  or           s4, zero, t1
                  addi         ra, s7, -1474
                  lb           t5, -7(t6)
                  sb           t5, 0(t6)
                  lb           sp, 2(t6)
                  ori          t2, t2, -2017
                  lbu          tp, -12(t6)
                  add          t2, s9, s2
                  lb           s10, -8(t6)
                  lb           a5, 1(t6)
                  lb           tp, -10(t6)
                  lbu          s11, 16(t6)
                  slli         a6, t6, 23
                  andi         zero, a7, -520
                  lbu          a5, -13(t6) #end riscv_load_store_rand_instr_stream_1
                  blt          a5, s8, 118f
                  sltu         a6, t5, sp
                  slt          a7, s11, a1
118:              sltiu        a0, a5, -1271
                  sltiu        t6, s9, -1659
                  and          tp, s0, s0
                  addi         s10, t1, 35
                  auipc        s6, 581086
                  srli         t2, t0, 26
                  sltiu        s11, a2, -1757
                  beq          t3, sp, 128f
126:              ori          a7, s11, -526
                  slti         t3, t2, -44
128:              bge          s0, a0, 135f
                  ori          s4, s10, 1387
                  bgeu         ra, a4, 147f
                  bgeu         a3, a2, 135f
                  bltu         a6, s11, 148f
                  blt          a7, s1, 142f
                  bge          s4, s0, 145f
135:              srli         a6, s10, 28
                  add          sp, sp, ra
                  sll          a2, t4, a5
                  ori          zero, t6, 269
                  ori          s4, ra, -1991
                  add          s3, t1, a1
                  slti         a2, a1, 733
142:              bge          a2, s7, 153f
                  sub          a2, t5, ra
                  blt          zero, t5, 157f
145:              slt          s4, a4, s9
                  sub          tp, t6, s7
147:              nop
148:              bne          s5, s4, 162f
                  bgeu         s3, t0, 150f
150:              beq          t4, s5, 153f
                  sltu         zero, s8, t3
                  srli         s11, s10, 17
153:              sltiu        t5, a1, 1630
                  srl          s4, s6, s11
                  andi         ra, s10, 431
                  bne          t4, t0, 175f
157:              blt          s2, s7, 169f
                  xori         a6, a7, -751
                  bge          s8, tp, 170f
                  sra          s1, s9, a4
                  sub          s1, zero, a4
162:              sra          s9, s7, a5
                  srai         s3, t4, 14
                  and          s5, a1, a2
                  bne          a5, s7, 169f
                  nop
                  addi         sp, ra, 261
                  bne          t2, gp, 172f
169:              auipc        t4, 330786
170:              xor          s8, t4, s4
                  lui          s1, 503158
172:              andi         t5, sp, 977
                  lui          ra, 993463
                  sub          s3, a6, t2
175:              bne          tp, t5, 187f
                  and          a2, s3, sp
                  beq          sp, a5, 193f
                  srai         s3, s4, 19
                  xor          s4, s9, a2
                  sltu         sp, s9, s5
                  slti         t1, s9, -1770
                  lui          a2, 595043
                  lui          sp, 327294
                  srl          s11, a6, zero
                  addi         s0, s11, 216
                  addi         a5, a0, 1309
187:              srli         ra, t5, 28
                  sll          a5, s4, a4
                  andi         t3, t5, 1542
                  and          t4, s4, s0
                  ori          s7, t5, -1306
                  sra          t1, a6, a0
193:              sra          zero, a1, t0
                  ori          a3, s0, -1375
                  addi         s7, gp, -975
                  blt          s4, t2, 216f
                  bltu         s10, s10, 210f
                  xori         s11, a6, 1752
                  srli         sp, a7, 11
                  beq          a5, t1, 201f
201:              xori         a3, s3, -386
                  sub          sp, t4, t1
                  ori          ra, a3, 554
                  addi         tp, t0, 1970
                  blt          s2, a1, 216f
                  slt          s10, s10, s3
                  add          ra, a4, t4
                  sll          t3, s4, a5
                  srli         a3, a7, 23
210:              slti         t3, tp, -1269
                  bne          s5, a7, 220f
                  srai         tp, s6, 23
                  bge          a2, s1, 233f
                  auipc        s9, 1024565
                  beq          t5, s10, 231f
216:              sltu         s0, s4, a2
                  sll          s8, s9, t5
                  bne          tp, a1, 221f
                  la           tp, region_1+1115 #start riscv_load_store_rand_instr_stream_2
                  nop
                  slli         a0, s11, 27
                  lui          t1, 568807
                  sb           s11, -312(tp)
                  slt          sp, s7, a4
                  sltu         a5, s4, t4
                  auipc        s4, 533410
                  or           sp, t3, t5
                  auipc        a5, 173820
                  lhu          t4, -717(tp)
                  lhu          s7, -941(tp)
                  and          t4, gp, s10
                  and          s10, gp, t4
                  sb           a4, -219(tp)
                  sra          a2, s7, ra
                  sll          s6, s5, t1
                  lui          s8, 797761
                  auipc        a6, 12063
                  xor          t3, zero, t1
                  lbu          s7, 696(tp)
                  sb           t0, -442(tp)
                  slt          s11, s0, zero
                  sb           s9, 178(tp)
                  lbu          t3, -647(tp)
                  lb           t1, -126(tp)
                  lb           a3, -1021(tp)
                  sb           s2, -662(tp)
                  lbu          a5, -341(tp)
                  andi         gp, tp, 1858
                  lb           a2, 870(tp)
                  sb           s2, 184(tp)
                  lui          t4, 577746
                  or           s8, gp, t3
                  lui          t4, 1018983
                  ori          s10, s1, -2029
                  srl          t3, s11, t2
                  lbu          sp, -953(tp)
                  sub          s7, s9, a6
                  sll          s10, s7, a4
                  slt          a7, sp, s9
                  lb           a4, 134(tp) #end riscv_load_store_rand_instr_stream_2
                  bgeu         s11, s6, 237f
220:              ori          sp, a3, -344
221:              addi         t2, s2, -838
                  and          a6, t5, s11
                  nop
                  blt          a7, a2, 229f
                  addi         s8, t3, -1674
                  sll          t5, a7, s0
                  bge          s5, tp, 245f
                  sll          tp, gp, t6
229:              sltiu        a5, t4, -477
                  auipc        s9, 784092
231:              lui          a7, 975883
                  xor          s10, a0, s0
233:              slti         a5, sp, -1796
                  add          a3, tp, s10
                  add          t3, s4, s6
                  and          s8, t3, s4
237:              slli         t4, s2, 26
                  bge          s3, s7, 255f
                  sltiu        s1, s8, -1130
                  addi         a5, a6, 538
                  beq          t1, t3, 259f
                  srl          s7, gp, s4
                  srai         s3, s11, 17
                  slli         sp, s1, 11
245:              sltiu        s9, s2, 717
                  add          a3, s6, a7
                  lui          t3, 142786
                  bltu         s11, tp, 261f
                  bge          s11, t0, 253f
                  lui          t4, 10056
                  srai         s5, s1, 24
                  bgeu         sp, ra, 263f
253:              slt          s10, a1, s10
                  or           t6, zero, s6
255:              bne          t0, t6, 268f
                  ori          a3, a7, -1225
                  bltu         tp, t2, 277f
                  sub          sp, s3, a7
259:              slt          a0, a3, s10
                  xor          a5, s9, a4
261:              blt          t0, a4, 272f
                  addi         s10, s8, 55
263:              beq          a3, a1, 264f
264:              auipc        t3, 76837
                  addi         t4, t4, -660
                  ori          s5, a5, 1888
                  sll          t1, t4, a6
268:              xor          t2, sp, a4
                  blt          t5, t3, 270f
270:              and          s9, zero, t5
                  auipc        s8, 821016
272:              add          tp, sp, ra
                  beq          t1, t3, 276f
                  and          s4, s4, a6
                  srl          s9, t3, t6
276:              ori          t2, s9, -589
277:              xor          s6, s10, zero
                  beq          a4, t3, 298f
                  slt          s1, s3, s0
                  srai         s6, s2, 8
                  xori         s4, s3, 1810
                  lui          s11, 249792
                  auipc        t4, 596678
                  slli         ra, t2, 22
                  sltu         a3, s7, s7
                  sra          ra, a1, s9
                  slt          t1, tp, s8
                  xor          s5, gp, t5
                  slt          s6, t6, ra
                  xor          a0, a3, s8
                  addi         a5, s10, -172
                  slti         t5, s11, 1586
                  srl          a5, zero, s2
                  beq          a7, s7, 297f
                  blt          s1, s2, 300f
                  srl          zero, s4, s0
297:              blt          s11, s11, 308f
298:              srli         t4, s9, 16
                  bne          a6, s10, 315f
300:              srai         t4, s6, 8
                  slti         s7, zero, 466
                  sltu         t3, a0, s5
                  bne          a5, s1, 319f
                  slti         s9, t5, 143
                  and          zero, a1, a3
                  srai         t3, a2, 1
                  and          s7, s10, s8
308:              bgeu         s4, tp, 327f
                  addi         t1, t5, 420
                  sltiu        s7, t4, -104
                  or           s4, zero, t1
                  xori         a4, t6, -1376
                  add          a2, s11, tp
                  sub          zero, s6, s3
315:              or           s7, s4, gp
                  ori          s8, tp, 530
                  srli         s6, s10, 30
                  sub          t1, a1, s5
319:              lui          a2, 209448
                  lui          zero, 354715
                  or           s5, a5, a1
                  bne          t0, s9, 329f
                  sub          t1, s10, t2
                  xori         a4, s9, 939
                  bne          a6, s10, 341f
                  add          s4, a5, a2
327:              slt          s10, s0, a7
                  nop
329:              bge          gp, a0, 341f
                  srli         s11, a6, 28
                  sub          a4, t0, s7
                  sra          zero, s3, a0
                  bgeu         a0, s0, 347f
                  xori         s1, a5, 1297
                  bltu         s11, a2, 344f
                  srl          t1, t2, s9
                  sll          s3, a3, s7
                  slli         s5, tp, 6
                  bge          a6, a2, 350f
                  auipc        gp, 795636
341:              slli         s4, t0, 25
                  and          t2, sp, t3
                  lui          s10, 1015564
344:              add          t2, ra, a6
                  sltu         s3, s1, s0
                  bne          s11, s1, 358f
347:              sltiu        s1, zero, 1555
                  lui          gp, 912195
                  bne          ra, s9, 352f
350:              addi         a5, a7, -1830
                  or           s10, s7, t5
352:              add          s7, s6, tp
                  andi         tp, t6, -734
                  bge          a4, gp, 372f
                  sll          s5, zero, sp
                  nop
                  andi         ra, s6, -1773
358:              ori          s4, zero, -842
                  blt          t0, a3, 368f
                  blt          a3, s10, 364f
                  xori         a0, t0, -550
                  and          t3, ra, t6
                  xori         t3, t4, -1836
364:              lui          t3, 281584
                  bge          a5, t0, 369f
                  bne          t0, a6, 380f
                  xor          sp, s11, ra
368:              add          s5, sp, s6
369:              sll          a3, s4, a7
                  srl          sp, a2, t5
                  or           a7, a5, s11
372:              srli         gp, s7, 13
                  and          s7, ra, sp
                  slli         s4, s4, 22
                  sra          t3, a4, t0
                  sra          s7, t2, s10
                  and          a2, s1, t5
                  bgeu         s9, s0, 381f
                  and          t6, a6, s5
380:              bge          t2, s11, 383f
381:              addi         t5, a6, -1380
                  srl          s10, t3, gp
383:              bgeu         t2, s10, 387f
                  bltu         t6, gp, 395f
                  ori          s4, t1, 1761
                  sub          a7, s3, zero
387:              bne          s8, t0, 396f
                  add          a2, s0, a2
                  bne          s7, s11, 407f
                  sltu         ra, s4, s3
                  add          t5, t4, a0
                  bgeu         s1, s2, 411f
                  and          s7, zero, s4
                  bgeu         s1, a1, 395f
395:              srli         s4, s0, 5
396:              srli         s6, a3, 8
                  sub          s11, sp, t1
                  blt          ra, a5, 414f
                  xor          gp, s2, t6
                  addi         a7, a6, -970
                  sra          s9, s0, a0
                  sll          sp, a7, a3
                  slli         t4, t5, 0
                  srai         s9, t6, 16
                  sra          s10, a0, s7
                  srli         a7, s11, 6
407:              add          a2, a1, s6
                  slt          s4, t2, s4
                  ori          t3, t4, 330
                  bgeu         s11, s1, 422f
411:              bltu         zero, a0, 422f
                  sub          s6, s11, s0
                  sll          zero, a7, sp
414:              auipc        t5, 146188
                  or           s11, a2, t0
                  bgeu         s3, s3, 433f
                  auipc        a4, 635448
                  ori          ra, a5, 329
                  sltu         a0, s5, a5
                  blt          s7, t6, 440f
                  bge          sp, t1, 430f
422:              auipc        a4, 1008933
                  bgeu         s5, ra, 427f
                  nop
                  slli         a4, sp, 13
                  slt          gp, tp, t4
427:              sltiu        t3, s2, 1994
                  blt          a3, t2, 433f
                  sltu         sp, gp, gp
430:              xor          sp, s9, s6
                  nop
                  add          a5, a4, s7
433:              sra          t4, gp, a6
                  xori         a0, a3, 446
                  sltiu        a4, a4, 716
                  or           ra, t2, s8
                  or           s7, a3, s10
                  bge          a2, t6, 445f
                  xor          t6, a7, t0
440:              slli         s0, s5, 9
                  andi         t4, s5, -955
                  sll          s5, s7, s0
                  addi         s8, zero, 424
                  sra          s7, a1, zero
445:              sll          zero, s11, s2
                  add          s4, s4, s2
                  slli         zero, s2, 20
                  bgeu         tp, s1, 449f
449:              slti         t2, t1, -1683
                  bltu         s0, s4, 463f
                  sub          s10, s10, s10
                  add          a6, s2, t1
                  slli         zero, a0, 17
                  bltu         a1, tp, 470f
                  bgeu         tp, t4, 468f
                  andi         a7, s11, -577
                  slti         s9, s6, -1616
                  and          zero, a1, s7
                  andi         s8, s5, 1346
                  srai         a5, t4, 2
                  slli         s0, a4, 14
                  sll          a4, s10, s8
463:              addi         zero, a7, 1329
                  and          s7, t4, sp
                  blt          s7, s8, 469f
                  and          a2, t2, t5
                  xor          s7, s3, t2
468:              beq          ra, a4, 479f
469:              srli         a2, a7, 12
470:              addi         a4, a2, -1487
                  sltiu        s7, t6, -767
                  bgeu         s0, a4, 475f
                  sra          s10, s8, s11
                  sll          a6, s11, s4
475:              andi         s7, a1, -401
                  bge          t6, s5, 492f
                  addi         t2, a2, 1678
                  add          s7, sp, t1
479:              beq          s11, t1, 497f
                  bne          t1, s11, 491f
                  sub          s3, a2, s6
                  xor          a7, t3, ra
                  addi         zero, s10, -1676
                  slti         s5, t6, -710
                  slti         s0, t6, 2039
                  bge          a1, a7, 506f
                  beq          s5, a0, 499f
                  auipc        s5, 866724
                  ori          s5, t2, 311
                  beq          t1, sp, 506f
491:              bgeu         a7, s8, 492f
492:              ori          a2, a4, 1248
                  and          s6, a1, a3
                  sub          a4, t1, s6
                  srl          a0, a7, s9
                  addi         zero, a5, 432
497:              nop
                  bne          t0, t0, 515f
499:              srl          sp, s2, a1
                  sltu         t5, s1, a1
                  sub          t5, s6, a6
                  andi         t4, s9, -1381
                  slli         s8, s11, 5
                  slt          s3, a2, t4
                  sub          s10, s2, s6
506:              beq          s0, s2, 526f
                  bge          a3, s10, 523f
                  auipc        gp, 811970
                  sub          a2, t0, s8
                  slt          t4, a5, t3
                  slti         s3, s6, 883
                  sub          t5, a7, s5
                  blt          s11, zero, 524f
                  srl          s6, s6, s5
515:              add          a0, s9, t5
                  addi         a2, t2, 702
                  slti         s8, s9, -1494
                  bgeu         a7, t0, 521f
                  sltiu        t3, gp, -1851
                  blt          t4, t5, 525f
521:              srai         t5, t3, 28
                  slli         t2, a5, 31
523:              add          a6, t6, sp
524:              srli         t4, s4, 17
525:              srai         a5, a5, 10
526:              slli         s1, s0, 1
                  ori          s11, t1, 1340
                  srai         a7, t5, 22
                  blt          a6, s11, 540f
                  sltu         s11, t0, a5
                  srai         t1, ra, 9
                  bne          s2, s7, 539f
                  bne          s9, a4, 546f
                  lui          t3, 966534
                  slli         s9, s0, 0
                  xor          a4, a3, a1
                  andi         a7, s1, 480
                  sll          sp, t1, s1
539:              slti         s11, a2, 1367
540:              nop
                  ori          gp, s9, -13
                  sltiu        s8, tp, -1092
                  slti         t6, s6, -515
                  xori         ra, s8, -1345
                  andi         t2, a5, -1953
546:              sll          a2, s8, a1
                  sll          a4, t5, s4
                  bltu         s11, s10, 568f
                  sltu         zero, a1, s9
                  blt          ra, a2, 562f
                  and          a0, t0, s8
                  sub          s11, gp, s0
                  sra          zero, zero, s9
                  and          a5, s7, s8
                  or           s8, s9, s6
                  beq          t5, t1, 574f
                  slti         a4, a6, 513
                  srl          s8, s4, t6
                  slti         t2, t0, 1668
                  ori          s6, zero, -1402
                  sltiu        s0, gp, -1401
562:              nop
                  nop
                  sub          a5, a0, s5
                  sra          t2, s7, t0
                  sra          t5, s9, t5
                  nop
568:              sub          s8, t6, s2
                  bge          s5, s7, 573f
                  add          a3, s10, zero
                  bgeu         a3, tp, 585f
                  srl          gp, t1, s5
573:              ori          zero, a3, 1601
574:              bltu         s9, t5, 593f
                  srli         a6, a7, 9
                  or           a5, a3, s4
                  bltu         t2, s1, 590f
                  srl          t4, a3, tp
                  addi         a6, a5, -1464
                  slt          zero, s2, t2
                  lui          t2, 43134
                  srli         s10, a5, 3
                  bgeu         t0, a1, 587f
                  srai         t2, t4, 28
585:              sub          a0, t6, a1
                  la           s4, region_1+185 #start riscv_load_store_rand_instr_stream_3
                  lh           zero, 9(s4)
                  lbu          tp, -15(s4)
                  srai         s6, s11, 20
                  lbu          s6, 3(s4)
                  lhu          s9, -1(s4)
                  lh           a7, 15(s4)
                  sh           s3, 1(s4)
                  addi         ra, s4, 364
                  sltiu        s8, s7, -656
                  sb           s8, 0(s4)
                  sh           s4, -11(s4)
                  lbu          s9, -10(s4)
                  srai         s5, s4, 12
                  lui          tp, 307290
                  add          t4, s2, tp
                  sb           s11, 3(s4)
                  lhu          a7, -15(s4)
                  nop
                  sb           a1, -10(s4)
                  lbu          a0, -10(s4)
                  sb           s6, 15(s4)
                  ori          a2, t5, -1163
                  sll          a3, gp, s11
                  srli         s11, tp, 28
                  slli         t5, t0, 19
                  slli         sp, t1, 26
                  ori          a0, t2, 551
                  srl          zero, a2, t0
                  lbu          s8, -6(s4)
                  xori         a4, s1, 940
                  lb           zero, 6(s4)
                  lui          s8, 283414
                  slt          tp, a2, a5
                  xor          t2, s3, a4
                  sh           s5, -15(s4)
                  sb           a3, -12(s4)
                  sb           s3, 0(s4)
                  sll          zero, a1, t6
                  sh           s9, -7(s4) #end riscv_load_store_rand_instr_stream_3
                  lui          s5, 906328
587:              sub          s10, t2, t1
                  addi         a3, a3, -92
                  slli         s7, s10, 30
590:              auipc        s7, 683283
                  auipc        s1, 169632
                  sll          a2, s4, t6
593:              slli         a5, a4, 9
                  srl          t1, a1, s9
                  srl          s8, a2, sp
                  slti         s6, a2, 512
                  auipc        s1, 155835
                  bge          s10, a3, 602f
                  bltu         tp, t6, 611f
                  srli         s10, s2, 3
                  xor          t4, s3, s10
602:              ori          s4, s5, 989
                  sra          a4, a4, tp
                  add          s0, s5, s10
                  srli         s5, t6, 15
                  ori          s7, a3, -1640
                  beq          t3, a2, 608f
608:              srli         a0, s7, 11
                  andi         a2, a0, -100
                  add          t1, t1, sp
611:              blt          t0, tp, 620f
                  add          t6, s11, s2
                  sra          t2, t4, a3
                  slti         gp, s4, 1380
                  or           s3, a0, s9
                  sub          a5, a2, s11
                  addi         s4, a5, -431
                  addi         ra, tp, -981
                  blt          a4, a2, 622f
620:              slt          s3, s3, ra
                  sub          zero, a5, gp
622:              srl          t2, sp, t2
                  bne          tp, s1, 634f
                  sub          s8, t0, a0
                  slti         zero, t4, -518
                  bltu         s3, ra, 642f
                  add          a6, a6, s1
                  bgeu         s4, sp, 639f
                  sltiu        a3, t1, -1798
                  add          ra, a7, a7
                  lui          a0, 788113
                  or           t6, t5, a2
                  srl          s3, zero, a3
634:              sra          s11, s7, tp
                  lui          a3, 518745
                  srli         a5, t1, 24
                  xori         t5, s1, 600
                  slli         s8, a7, 13
639:              andi         s0, s6, 1209
                  srai         a5, t2, 21
                  addi         zero, a0, 1292
642:              addi         sp, s0, 1332
                  sltiu        gp, s1, -1677
                  sll          gp, zero, t3
                  addi         s8, gp, -934
                  beq          s7, a7, 664f
                  lui          s11, 515723
                  sub          s6, s5, a1
                  srl          a0, s8, t3
                  sltu         t3, s6, s11
                  bge          a0, a5, 654f
                  add          sp, s8, s11
                  bltu         t5, gp, 662f
654:              sltu         gp, s4, t2
                  xor          s9, s7, s6
                  sll          s4, s6, t3
                  sltu         a5, t4, s2
                  sltiu        a0, t5, 1554
                  srl          t4, a7, t1
                  xori         s10, gp, -1237
                  slti         ra, t4, 656
662:              slli         s7, a4, 29
                  bgeu         gp, a0, 679f
664:              bge          a5, s9, 673f
                  auipc        s8, 834431
                  andi         a4, a0, -588
                  slt          s1, s4, s11
                  sltu         t1, s4, t5
                  srai         t3, a6, 10
                  ori          s6, a6, -1725
                  addi         t6, t6, 56
                  beq          s2, s1, 676f
673:              sll          s3, s0, s2
                  lui          s3, 447603
                  and          ra, zero, s7
676:              and          s10, t3, s6
                  or           s6, a1, a6
                  sll          s11, s6, s6
679:              blt          t6, t6, 690f
                  srli         a0, t0, 10
                  slt          s3, t3, s4
                  blt          a6, t5, 696f
                  srli         gp, s7, 7
                  nop
                  auipc        a4, 1042122
                  bne          a6, a1, 703f
                  sub          a0, s0, t0
                  auipc        s11, 1029567
                  xor          s1, gp, t6
690:              srl          t4, gp, s2
                  sltu         a2, s5, t3
                  srai         s9, a6, 13
                  sub          a2, t3, s0
                  srai         a6, a5, 12
                  sra          s3, s1, t5
696:              bgeu         s6, a3, 697f
697:              nop
                  andi         a0, t1, -1058
                  slli         s6, s1, 15
                  andi         s4, s9, -1104
                  nop
                  sltu         s3, a2, s0
703:              xor          s9, sp, gp
                  bltu         s4, a5, 709f
                  and          t2, zero, s11
                  sltu         s6, s1, s3
                  and          t4, s4, s5
                  bne          t1, a0, 719f
709:              srl          a6, s9, s3
                  sra          a2, tp, s4
                  sltu         tp, t4, s3
                  andi         tp, s3, 1002
                  or           t4, s6, s1
                  srl          s4, a7, a7
                  addi         t1, s1, -1554
                  or           ra, s6, a3
                  srai         s6, t1, 14
                  slt          t6, s3, s6
719:              lui          s3, 438480
                  ori          s5, a6, -2009
                  andi         s11, a2, 835
                  beq          t6, t1, 729f
                  and          s6, s2, t0
                  addi         t6, a5, -1341
                  auipc        s3, 626203
                  ori          s11, s7, -6
                  add          s0, t3, a4
                  nop
729:              sub          t3, a6, s3
                  sll          gp, tp, a1
                  xor          ra, s4, t4
                  sra          ra, t4, t0
                  xor          s1, t4, s1
                  beq          s6, t1, 750f
                  sll          a3, s5, a1
                  sll          s7, a3, s1
                  addi         gp, s8, -2015
                  andi         a5, s8, -63
                  srai         s6, a3, 27
                  slli         s11, a4, 17
                  slti         t5, t5, 1787
                  nop
                  addi         s1, s11, 1497
                  add          s10, t3, s11
                  sltu         s1, a0, s0
                  beq          t6, a5, 749f
                  and          a5, s7, t1
                  addi         s3, a1, -1963
749:              bge          s1, a6, 753f
750:              ori          s10, s8, -1769
                  sub          t1, t6, s8
                  add          s5, t1, a0
753:              slli         s0, a0, 4
                  srli         ra, s5, 8
                  lui          sp, 225251
                  nop
                  srai         gp, s1, 12
                  nop
                  addi         ra, a0, -178
                  slt          s3, s5, s7
                  sltu         a0, a7, a4
                  sll          s8, t0, s10
                  lui          zero, 923065
                  slti         a2, s11, 1217
                  slli         s0, a5, 9
                  sltu         t5, zero, s7
                  slli         sp, s3, 21
                  nop
                  sra          gp, s11, t5
                  bne          a5, a1, 773f
                  bne          t0, s0, 774f
                  slli         a3, s1, 18
773:              nop
774:              srl          a2, s8, t6
                  slli         t5, s2, 26
                  srli         a3, t4, 10
                  bgeu         s4, s9, 781f
                  slt          s8, gp, s2
                  xor          a4, a3, gp
                  sll          a5, t2, s0
781:              bgeu         s2, s9, 801f
                  xor          s1, s9, s7
                  addi         t3, t5, -807
                  blt          a1, t6, 796f
                  addi         t3, ra, 1777
                  blt          s7, a7, 797f
                  ori          t2, s3, 964
                  or           t6, ra, s3
                  addi         t4, s11, -1113
                  sltu         a5, s8, a3
                  add          ra, s8, t3
                  srai         zero, a7, 23
                  blt          a3, t6, 809f
                  nop
                  ori          gp, s3, -1434
796:              lui          s3, 788690
797:              blt          gp, a3, 815f
                  sll          gp, t2, s5
                  bne          a7, t5, 812f
                  bge          s7, a4, 812f
801:              srli         t3, ra, 15
                  or           t2, a7, t0
                  bgeu         s1, a7, 816f
                  and          a5, a4, s6
                  sll          a0, s11, t3
                  sltu         tp, s10, a7
                  andi         a5, s8, -1739
                  srai         s7, s3, 24
809:              bge          t2, a5, 818f
                  and          a6, s2, a1
                  lui          s8, 270959
812:              bltu         t1, t2, 830f
                  auipc        a6, 960580
                  xor          a7, a2, t3
815:              sra          gp, s10, sp
816:              xor          s6, s2, s4
                  bge          t2, zero, 837f
818:              or           a3, t3, s4
                  slti         a7, s0, -440
                  bne          a4, s2, 831f
                  xori         gp, s1, -1954
                  srl          a0, s6, s4
                  addi         s3, t5, 1890
                  bgeu         t2, s2, 843f
                  sltu         s6, t2, ra
                  sra          gp, gp, s5
                  bgeu         t4, t1, 828f
828:              srli         tp, a3, 13
                  blt          zero, s11, 840f
830:              bge          s4, s2, 842f
831:              sltiu        s8, ra, 82
                  auipc        s6, 971977
                  auipc        s6, 869829
                  xor          t1, a2, ra
                  srli         s10, a6, 27
                  andi         a3, a5, -1100
837:              bge          a3, t2, 853f
                  beq          t5, s11, 850f
                  nop
840:              srai         t1, s6, 28
                  slli         a6, t5, 9
842:              andi         t4, s2, 1348
843:              sltiu        s3, a6, -677
                  sub          a2, t3, s6
                  add          t3, t2, t5
                  bltu         a3, s6, 850f
                  srai         t6, s3, 24
                  sltiu        ra, s3, 856
                  sltu         a5, a7, s6
850:              sltiu        a3, s0, -142
                  xori         a0, s9, -1028
                  slt          zero, a3, s6
853:              bne          t0, t3, 857f
                  sll          a0, s11, a4
                  nop
                  bne          t4, t6, 857f
857:              sltiu        s1, s2, 1517
                  nop
                  lw           s0, 4(s2)
                  add          gp, a1, t6
                  srai         s1, s2, 22
                  addi         s2, s2, 40
                  lui          s4, 904935
1148:             addi x27, x8, 1
1148:             jalr x27, x27, 0
sub_4:            sltu         a0, t4, a6
                  srl          t4, s2, a3
                  sll          s5, a1, a6
                  auipc        a6, 262816
                  addi         s2, s2, -16
                  ori          zero, s2, 1456
                  or           t6, a0, s11
                  sw           s0, 4(s2)
                  and          a2, s3, t6
                  nop
                  lui          zero, 978587
                  slt          s7, t5, zero
                  xor          a3, t1, s10
                  andi         s10, s11, -249
                  sra          s4, a7, s7
                  sra          a0, s0, a5
                  addi         a4, gp, 1281
sub_4_j12:        jal          s0, sub_8 #jump sub_4 -> sub_8
                  la           sp, region_0+854 #start riscv_load_store_rand_instr_stream_4
                  add          t5, s11, s5
                  slli         a7, a0, 31
                  sltu         s0, ra, t0
                  sub          a0, s6, zero
                  addi         s7, a1, 1685
                  slt          t2, a0, s8
                  slt          s9, a0, tp
                  lhu          s8, -184(sp)
                  lbu          ra, 8(sp)
                  lui          s10, 485740
                  slt          a7, zero, t5
                  lhu          tp, -50(sp)
                  lb           s3, 9(sp)
                  slli         t4, t0, 29
                  sltu         a5, s11, a2
                  sltu         s9, s2, s4
                  lhu          ra, -156(sp)
                  sb           a0, -162(sp)
                  lh           s4, 130(sp)
                  lb           gp, -193(sp)
                  sll          s0, s4, t0
                  xor          a7, t1, ra
                  sb           s9, -7(sp)
                  sh           t0, -58(sp)
                  slli         s1, t1, 18
                  sb           t0, 27(sp)
                  sb           s4, -111(sp)
                  sb           a6, 17(sp)
                  lb           s6, 16(sp)
                  or           t1, s6, t4
                  lb           t5, -99(sp)
                  auipc        t4, 989711
                  lbu          gp, -58(sp)
                  or           tp, t6, s10
                  sb           s2, -168(sp)
                  ori          s0, a7, -725
                  srli         s7, gp, 15
                  or           a2, sp, s2
                  sw           a2, 62(sp)
                  sra          a3, a3, ra
                  lbu          s11, 149(sp)
                  sb           zero, -203(sp)
                  sw           s11, -130(sp)
                  or           t2, t2, s4
                  sub          s4, ra, s7
                  lb           t1, -33(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1931 #start riscv_load_store_rand_instr_stream_1
                  or           ra, s9, s1
                  ori          s5, s5, -910
                  srli         s4, s6, 26
                  srl          t5, s9, a2
                  lbu          t6, 44(sp)
                  lh           tp, -11(sp)
                  srai         gp, s1, 3
                  sb           s6, 7(sp)
                  slli         a4, a3, 6
                  sb           s6, -62(sp)
                  lh           a5, 17(sp)
                  xori         a0, a1, -935
                  lbu          a2, 30(sp)
                  sra          t2, a2, ra
                  sra          t2, sp, s3
                  lb           t3, 39(sp)
                  lb           t6, 36(sp)
                  lbu          a2, -9(sp)
                  lb           a6, 50(sp)
                  lh           s3, -41(sp)
                  sb           s6, 30(sp)
                  lbu          t4, 25(sp)
                  addi         tp, t1, 987
                  sb           t3, 33(sp)
                  add          a4, a3, s3
                  lui          t4, 81382
                  lbu          a5, 36(sp)
                  lhu          t4, -45(sp)
                  sb           s3, 42(sp)
                  sll          t2, sp, s4
                  sb           t3, -8(sp)
                  lb           gp, 49(sp)
                  lhu          s5, -15(sp)
                  lui          t2, 797722
                  and          s6, t1, s1
                  lh           s4, 41(sp)
                  sll          ra, s6, s8
                  sltu         s10, t0, t5
                  auipc        t1, 602915
                  lui          s5, 864353
                  lb           s10, -50(sp)
                  add          s10, a0, gp
                  lbu          s1, 6(sp)
                  and          a3, s7, t0
                  sb           s3, 44(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+726 #start riscv_load_store_rand_instr_stream_2
                  sb           a2, -27(sp)
                  srl          s10, s2, s10
                  or           ra, s10, a7
                  add          t1, s0, s10
                  ori          s4, gp, 343
                  slti         s8, s6, 1469
                  and          a2, t4, t4
                  lbu          gp, -213(sp)
                  lb           a4, -9(sp)
                  srli         s4, a1, 27
                  lbu          t2, 37(sp)
                  andi         tp, sp, -1280
                  lhu          t4, -22(sp)
                  xori         t4, t5, 1471
                  lb           gp, -87(sp)
                  lhu          s9, -162(sp)
                  lbu          tp, -184(sp)
                  sltiu        s8, a5, -16
                  sltiu        a2, s9, -1697
                  lb           s10, 139(sp)
                  lbu          s3, 95(sp)
                  sw           a0, 206(sp)
                  slli         ra, a5, 11
                  and          t2, ra, s6
                  lb           a0, 202(sp)
                  lb           t5, -86(sp)
                  sb           a1, 38(sp)
                  lbu          a7, -245(sp)
                  xor          a0, s1, a5
                  xor          zero, zero, sp
                  srai         s8, s6, 6
                  sb           s5, 54(sp)
                  sll          ra, a5, gp
                  and          s3, t0, a5
                  slt          s6, s1, s5
                  ori          a4, s5, -734
                  addi         tp, sp, 1801
                  auipc        ra, 702703
                  slt          s4, a3, s6
                  lb           s4, 88(sp)
                  lw           s0, 226(sp)
                  slti         t1, sp, 1260
                  add          t6, s10, s0
                  lbu          a5, 75(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s5, region_0+1547 #start riscv_load_store_rand_instr_stream_3
                  add          s10, a0, s5
                  slti         a3, zero, -767
                  xori         s10, t6, 461
                  sra          tp, a3, a2
                  lhu          s6, -9(s5)
                  srl          sp, gp, s4
                  lhu          a2, 3(s5)
                  srai         zero, t6, 12
                  lb           a0, -6(s5)
                  sb           t1, 13(s5)
                  nop
                  lbu          s9, 12(s5)
                  xori         zero, a2, -183
                  lhu          t3, 15(s5)
                  sra          s0, s9, zero
                  sra          s1, s11, t1
                  lb           t5, 1(s5)
                  srli         a5, a1, 13
                  sltu         s7, t0, t3
                  sb           s3, 2(s5)
                  xor          a7, s6, tp
                  sb           s8, 10(s5)
                  lb           a5, -14(s5)
                  lb           gp, 14(s5) #end riscv_load_store_rand_instr_stream_3
                  la           a7, region_1+289 #start riscv_load_store_rand_instr_stream_5
                  srl          a5, zero, a2
                  sra          a5, a7, gp
                  srli         s10, s9, 24
                  lh           zero, 3(a7)
                  slli         t2, sp, 10
                  lh           s4, -13(a7)
                  ori          t2, s7, 1675
                  sb           s5, 2(a7)
                  lb           t4, -15(a7)
                  sb           a6, -11(a7)
                  slti         gp, t6, 172
                  lhu          s10, 3(a7)
                  lbu          s10, -4(a7)
                  auipc        t5, 835982
                  andi         ra, a6, -779
                  or           t6, s2, a5
                  lbu          t6, 16(a7)
                  lhu          s5, -9(a7)
                  lbu          t6, -14(a7)
                  srl          sp, s11, s0
                  sltiu        s3, a5, -500
                  lb           a3, -2(a7)
                  lb           s11, 14(a7)
                  srli         s9, s11, 2
                  slti         s7, a1, 130
                  xori         s5, sp, 46
                  auipc        zero, 931318
                  lbu          t1, 16(a7)
                  lb           s3, -9(a7)
                  lhu          t4, -15(a7)
                  srl          s7, t6, s2
                  andi         s11, ra, 173
                  sltu         a4, s0, s5
                  sra          t6, gp, a7
                  lb           t5, 7(a7)
                  nop
                  srli         s3, s0, 20
                  lbu          a3, 7(a7)
                  sb           s3, -12(a7)
                  lb           gp, -4(a7) #end riscv_load_store_rand_instr_stream_5
                  srli         a7, s2, 25
                  slt          s3, s10, a1
                  sltiu        zero, ra, 905
                  bne          s1, s2, 10f
                  ori          s1, t4, 1271
                  sltu         t6, a6, a3
                  slt          a5, s7, a5
                  sll          a5, t2, s3
                  srli         sp, ra, 31
                  slt          t4, s6, s6
10:               nop
                  srai         t5, s2, 25
                  xor          t4, a7, s9
                  srl          a6, ra, t6
                  sltiu        t5, t4, -629
                  xori         t6, a3, 344
                  nop
                  sll          tp, s11, t6
                  sra          ra, s6, t5
                  slli         a6, s0, 17
                  slti         a5, ra, 1172
                  srai         s5, gp, 31
                  srl          s6, a2, s3
                  lui          s5, 715033
                  xori         s9, t1, -455
                  ori          s3, a4, -1015
                  bgeu         a7, s4, 43f
                  srl          a0, a2, s4
                  add          s10, s6, s7
                  blt          gp, s10, 37f
                  slli         s11, s5, 8
                  sltu         s5, t2, a6
                  andi         a7, a3, 1664
                  blt          a0, a1, 47f
                  sltu         t2, gp, a3
                  bne          s2, a6, 48f
                  sll          s9, s11, a3
37:               beq          s10, a5, 43f
                  addi         a0, a7, -1797
                  auipc        s4, 571029
                  auipc        s10, 290910
                  sll          s5, s8, s9
                  srai         s8, s10, 2
43:               bge          t0, s2, 51f
                  beq          gp, s9, 45f
45:               bge          t4, s10, 46f
46:               srl          s1, s11, a0
47:               srl          t3, a5, zero
48:               addi         ra, s10, 356
                  sra          gp, a2, s2
                  sltiu        a2, t6, 768
51:               bne          gp, s2, 57f
                  add          s7, a4, a2
                  srli         s6, t3, 21
                  sra          a7, s10, gp
                  srl          s11, a7, tp
                  slli         gp, a2, 30
57:               bge          a5, a3, 69f
                  la           sp, region_1+1825 #start riscv_load_store_rand_instr_stream_0
                  auipc        zero, 771293
                  sh           a1, -59(sp)
                  lw           s7, -209(sp)
                  lbu          t3, 130(sp)
                  sub          ra, s7, a6
                  lh           s4, -47(sp)
                  lh           a3, -89(sp)
                  srai         s1, t2, 26
                  addi         a4, s3, -909
                  sb           s2, 106(sp)
                  sltu         s9, s5, a5
                  slti         gp, a6, -961
                  sb           s9, -39(sp)
                  or           s4, gp, tp
                  xor          t5, s8, s0
                  sh           s6, -87(sp)
                  slt          s5, s0, gp
                  xor          s11, a2, s9
                  sb           s1, 80(sp)
                  lhu          t3, -75(sp)
                  lbu          s0, 6(sp)
                  lui          t2, 592814
                  srai         s6, s7, 0
                  sb           s0, 111(sp)
                  slli         a2, a4, 11
                  lbu          s3, -139(sp)
                  sb           zero, -69(sp)
                  slli         a0, s10, 13
                  sll          s3, t1, t0
                  lbu          s5, -192(sp)
                  sw           t4, 3(sp)
                  srai         s9, a1, 21
                  lhu          s8, -103(sp)
                  xori         t1, s6, -779
                  ori          t2, t5, -1169
                  slt          s6, s1, s10
                  lbu          s11, -166(sp)
                  lh           a0, -5(sp)
                  lbu          zero, -76(sp) #end riscv_load_store_rand_instr_stream_0
                  ori          gp, t0, 1196
                  sltu         s5, sp, t2
                  sltiu        a6, s4, 1794
                  addi         a3, s5, -863
                  auipc        s7, 382641
                  sub          a2, sp, t1
                  srai         t4, t0, 15
                  lui          a0, 308973
                  nop
                  andi         ra, a1, 1979
                  srl          s8, a2, a2
69:               slti         a6, s6, 1648
                  beq          zero, t6, 74f
                  or           s0, s5, t0
                  auipc        a2, 99838
                  slt          t5, a0, s5
74:               srai         a3, s9, 11
                  lui          a7, 624218
                  nop
                  nop
                  srai         s3, tp, 6
                  sub          t4, s4, s10
                  addi         s0, a4, -728
                  slti         s0, s7, -779
                  slt          t3, a3, s6
                  auipc        s8, 729552
                  bltu         a6, a3, 99f
                  sra          s6, s0, t6
                  lui          s3, 930436
                  srai         sp, t6, 8
                  sub          t1, t4, a4
                  nop
                  sltiu        s10, a3, -495
                  sub          s5, gp, a0
                  auipc        s1, 640000
                  ori          s3, s6, -1101
                  srli         t6, s5, 15
                  add          t5, t6, t2
                  slt          t2, a1, s2
                  auipc        s3, 654967
                  xor          s1, s7, tp
99:               slti         t5, s6, 1213
                  xori         s10, s8, 192
                  slti         s1, s3, -106
                  ori          s1, t0, -1761
                  bltu         t4, s1, 118f
                  andi         t6, ra, -1660
                  bgeu         t4, a4, 110f
                  auipc        s11, 353011
                  blt          a5, t4, 108f
108:              blt          t4, a0, 110f
                  slli         s6, s10, 13
110:              beq          t0, t1, 123f
                  and          a5, t4, a5
                  sra          a5, a2, s6
                  sltu         ra, t0, zero
                  bltu         s3, t5, 116f
                  nop
116:              ori          s8, s2, 1478
                  srl          s1, s1, a6
118:              bgeu         a6, s7, 126f
                  bne          s5, t1, 133f
                  bge          t3, s1, 133f
                  bge          s2, s4, 135f
                  sub          s3, s7, s9
123:              auipc        t2, 253258
                  srai         s5, t1, 31
                  srl          tp, s7, t6
126:              slt          a5, t6, t1
                  bltu         s8, t6, 141f
                  blt          zero, zero, 142f
                  blt          s6, a7, 142f
                  sltiu        t2, a3, -1152
                  sll          s10, tp, s8
                  xori         a5, s6, -725
133:              srai         s10, t2, 11
                  bge          s3, a0, 149f
135:              sll          a6, s3, a1
                  bltu         zero, gp, 152f
                  andi         s1, s11, 971
                  xor          tp, sp, s6
                  bgeu         t4, a5, 158f
                  srai         s9, a5, 0
141:              auipc        a3, 387076
142:              xori         a5, s0, 839
                  bge          a7, s3, 156f
                  lui          s11, 951462
                  sra          a6, a5, a6
                  bgeu         t3, t1, 161f
                  bltu         s9, a6, 154f
                  or           gp, t4, s5
149:              beq          a0, t2, 157f
                  addi         a2, t4, -1802
                  or           a3, a5, s8
152:              auipc        a3, 851894
                  bne          s3, a6, 159f
154:              add          s11, a3, s9
                  bge          s11, a3, 169f
156:              lui          t3, 940992
157:              sltu         a2, t1, a1
158:              xor          a2, s6, s10
159:              nop
                  add          t2, s4, t5
161:              bltu         s4, s8, 176f
                  srai         s9, s0, 3
                  srli         tp, s2, 16
                  slt          gp, s8, t3
                  srai         t1, t6, 31
                  bne          a1, a7, 180f
                  sub          t1, t5, s5
                  slti         t2, s2, -947
169:              slt          sp, s4, s0
                  and          a6, t4, t3
                  srl          s1, a1, s2
                  addi         a0, t0, -2037
                  xor          s9, t1, t1
                  sltiu        a7, s5, 325
                  bge          s7, s11, 194f
176:              blt          t2, s9, 177f
177:              blt          t3, s6, 185f
                  add          s5, s5, a7
                  srli         s1, t5, 18
180:              sub          s3, s7, a3
                  lui          s7, 129463
                  bltu         t6, a4, 188f
                  sltu         s10, a3, s10
                  bge          t1, s7, 197f
185:              bge          zero, a6, 198f
                  xor          s5, tp, t6
                  andi         gp, zero, 1034
188:              nop
                  xori         a0, s6, -452
                  bltu         a6, a7, 204f
                  srl          a6, a5, a2
                  bne          t3, s4, 206f
                  slti         sp, s3, -1207
194:              nop
                  and          t5, t6, sp
                  or           t5, s3, t3
197:              xori         s0, s4, -156
198:              srai         sp, s6, 1
                  xori         t1, s10, -370
                  sra          tp, s9, a3
                  lui          s9, 411874
                  blt          ra, t4, 203f
203:              or           s3, s9, s3
204:              add          a2, s2, sp
                  andi         gp, sp, -632
206:              xor          a0, s11, gp
                  srai         a7, sp, 27
                  add          t3, tp, t3
                  xor          zero, a0, gp
                  blt          a0, a6, 227f
                  blt          zero, tp, 227f
                  lui          a0, 599827
                  sra          s7, a5, sp
                  auipc        a3, 396407
                  bne          gp, s1, 216f
216:              bge          t2, s4, 221f
                  blt          t2, a1, 225f
                  bgeu         s0, s1, 231f
                  blt          s6, t2, 231f
                  srai         tp, s3, 20
221:              add          s8, s8, s1
                  bge          s2, t0, 236f
                  slli         zero, t5, 0
                  addi         t4, ra, 1663
225:              andi         gp, a4, -645
                  slt          a6, s9, a3
227:              sltu         s4, a0, s5
                  bltu         a4, tp, 232f
                  or           s8, sp, gp
                  sll          t4, s8, a3
231:              slli         s3, a4, 12
232:              slt          a6, s1, s4
                  auipc        s1, 989314
                  andi         s9, a6, -1468
                  addi         t2, a0, -309
236:              bltu         s10, s11, 238f
                  addi         ra, a5, -243
238:              bne          s1, s6, 240f
                  sra          s8, s2, t5
240:              sltu         s1, zero, t1
                  sub          t5, t4, s4
                  srli         zero, t3, 13
                  add          t5, a0, a5
                  slt          ra, t6, a4
                  sltiu        a4, a7, -584
                  sll          s5, t1, s8
                  nop
                  bne          s0, s11, 261f
                  srai         a0, a1, 16
                  slt          s9, s8, t3
                  slli         s10, ra, 7
                  slli         t4, ra, 4
                  sll          s9, t2, s3
                  auipc        tp, 963910
                  slt          s7, s0, s2
                  and          s11, a0, a0
                  lui          ra, 87377
                  slti         t4, ra, 435
                  bge          t1, s9, 272f
                  sltiu        s11, ra, -1219
261:              srli         s9, s0, 22
                  srl          a5, t0, t5
                  nop
                  or           t5, s9, t0
                  beq          a3, s2, 280f
                  bgeu         a5, tp, 268f
                  auipc        a2, 968532
268:              andi         a5, zero, 897
                  beq          t3, gp, 283f
                  srai         s4, t0, 23
                  sll          s3, s1, t2
272:              bltu         s4, a3, 278f
                  lui          t3, 62098
                  sub          ra, s7, s5
                  slti         sp, s6, -1161
                  xori         a5, a6, 1513
                  addi         a5, s9, 1531
278:              bltu         a1, t4, 292f
                  xori         t5, s1, -2
280:              sltu         t2, s8, t5
                  bltu         ra, t0, 282f
282:              lui          t2, 734410
283:              bgeu         s7, s11, 298f
                  bne          s7, a0, 297f
                  beq          gp, s11, 293f
                  sltu         a3, t3, sp
                  nop
                  sltu         a0, t0, t0
                  sltu         s1, s4, t6
                  nop
                  srl          s3, t5, t3
292:              srl          a3, s2, a2
293:              nop
                  srli         s10, t2, 3
                  bltu         s9, t2, 307f
                  bltu         s3, a5, 313f
297:              bge          sp, t4, 305f
298:              srai         s3, t6, 8
                  bne          a0, t5, 313f
                  bge          s5, zero, 304f
                  bltu         a2, a7, 314f
                  bne          t2, a6, 316f
                  or           a6, s5, s6
304:              sltu         s10, t1, s0
305:              srl          t1, a1, s2
                  xor          s5, s10, s0
307:              bgeu         s11, s9, 323f
                  sra          s10, s4, s0
                  slli         t6, a0, 5
                  andi         t1, t3, 1327
                  sub          s6, a1, s5
                  bge          a2, a4, 331f
313:              andi         zero, s8, -263
314:              sltu         t6, s4, s10
                  blt          s8, s9, 330f
316:              sltu         sp, s5, s10
                  auipc        s10, 780376
                  bge          zero, tp, 323f
                  srai         s1, a5, 12
                  xor          s5, sp, s8
                  andi         a2, s1, 707
                  lui          tp, 151297
323:              or           t6, s3, s3
                  and          s3, s4, a3
                  ori          t6, gp, 1717
                  xor          a0, a2, a7
                  nop
                  sra          s8, a7, a3
                  xor          t2, a3, tp
330:              and          t3, a4, s3
331:              lui          t2, 454842
                  slt          a2, t3, tp
                  slti         a6, s8, -75
                  beq          t6, tp, 342f
                  sll          s11, a1, s11
                  sra          ra, s2, a2
                  sltiu        s3, a2, -1634
                  or           ra, t5, s11
                  lui          a7, 452081
                  srli         s11, t2, 12
                  bgeu         gp, t2, 348f
342:              srl          sp, t1, s8
                  sltu         a3, a4, a0
                  lui          t4, 55211
                  addi         t1, a2, 1098
                  xori         ra, s11, 1168
                  ori          s5, s7, -98
348:              srai         a6, a0, 30
                  srli         t4, a6, 17
                  srli         a3, a2, 20
                  sll          a0, s0, s9
                  auipc        ra, 849066
                  slt          t1, s3, s6
                  sltiu        a2, s9, -1902
                  ori          a7, t3, 1423
                  bgeu         a5, tp, 370f
                  sll          a3, t1, t2
                  slt          t6, s0, s9
                  xori         gp, a2, 1996
                  nop
                  bne          a5, a1, 374f
                  bne          s9, a4, 375f
                  sub          s9, s0, t6
                  sll          s0, t0, s1
                  auipc        a2, 343671
                  srli         gp, s7, 1
                  slli         a6, s0, 29
                  bge          gp, a7, 374f
                  slt          s0, s9, sp
370:              andi         t5, t6, -503
                  slt          a6, t3, t4
                  blt          zero, s1, 374f
                  bge          a3, a7, 374f
374:              andi         t4, t1, -678
375:              auipc        a5, 342820
                  srli         t6, s6, 16
                  slti         tp, s2, 138
                  blt          a2, ra, 379f
379:              auipc        s1, 766564
                  or           s11, a0, s1
                  bltu         s5, a1, 396f
                  and          s10, t3, s9
                  bltu         t4, s2, 396f
                  addi         s5, t6, -1526
                  ori          t6, s0, 535
                  bne          tp, a0, 399f
                  xor          a2, a6, s9
                  and          a5, tp, s8
                  srai         a7, s3, 8
                  bgeu         tp, a7, 396f
                  xor          a4, t1, a0
                  beq          a0, s8, 406f
                  srli         t5, s3, 22
                  ori          a0, s9, -1854
                  bltu         s9, gp, 397f
396:              srli         a7, s11, 8
397:              nop
                  slt          a3, a4, ra
399:              xori         s9, s10, 1244
                  andi         t5, s4, 1460
                  auipc        s4, 793125
                  lui          t5, 687132
                  slli         a7, tp, 14
                  srl          t2, zero, a3
                  slti         t1, s8, 1058
                  xor          s1, tp, ra
                  sll          t1, s9, a4
                  sltiu        a2, t5, -998
                  or           s10, s4, a6
                  lui          s1, 747387
sub_4_j13:        jal          s0, sub_5 #jump sub_4 -> sub_5
                  sltu         s6, a3, s9
                  bltu         a6, a0, 410f
                  lui          s11, 600875
                  bne          t0, a4, 419f
406:              auipc        s5, 109697
                  srl          a4, a4, t4
                  sltiu        t3, s2, 411
                  slt          a5, s0, s7
410:              slti         s10, t3, 893
                  or           s9, gp, a0
                  addi         gp, s2, 265
                  or           t4, a5, s10
                  xori         s3, t2, 1928
                  addi         t6, a6, 194
                  or           s0, s10, a5
                  xori         t1, s8, 1826
                  xor          s6, t4, s1
419:              slli         s0, sp, 27
                  srl          s3, a7, s9
                  blt          zero, t0, 427f
                  xori         s1, sp, 410
                  ori          s11, tp, -1855
                  bne          t2, a0, 438f
                  add          ra, sp, s9
                  slli         gp, s5, 8
427:              xori         tp, s7, 1616
                  ori          t6, s6, 1559
                  srl          ra, ra, t1
                  sltiu        s7, t0, -65
                  la           t2, sub_6
                  lui          t1, 704386
                  addi         t2, t2, -899
                  xor          a4, t2, t0
                  lui          t5, 202757
                  add          a2, t0, zero
                  lui          s10, 1021690
                  bge          s10, t6, sub_4_j11 #branch to jump instr
                  sltiu        a4, gp, 1049
                  addi         a2, a5, 696
sub_4_j11:        jalr         s0, t2, 899 #jump sub_4 -> sub_6
                  add          zero, t0, s5
                  sub          t5, a5, s9
                  slti         s7, s6, -1481
                  blt          t6, sp, 448f
                  xor          zero, s6, gp
                  ori          t3, s9, 1087
                  or           s7, gp, a5
438:              addi         s0, a4, 1154
                  sra          a5, s1, s9
                  or           a4, s10, s8
                  auipc        t3, 450278
                  sltu         s10, t1, t3
                  srl          t1, zero, t3
                  auipc        s0, 471581
                  addi         t3, a4, -448
                  xori         s8, s4, -886
                  bgeu         s9, s1, 460f
448:              sll          s4, t2, a7
                  sll          s10, a2, t6
                  sub          s8, ra, a4
                  srl          gp, a0, a3
                  xori         a7, s5, 1415
                  addi         t6, s0, -1987
                  slt          s8, s2, t0
                  sltu         gp, t2, a2
                  nop
                  srai         t1, s4, 14
                  bne          s8, t2, 471f
                  nop
460:              srli         s1, gp, 1
                  sltiu        s5, a5, 1639
                  xori         s10, s6, -980
                  srai         t5, s5, 20
                  slti         s6, a7, -1746
                  and          t4, a3, s0
                  blt          t5, s7, 467f
467:              xori         tp, a7, 1139
                  and          a6, zero, t1
                  or           s0, s4, s4
                  beq          s3, s4, 487f
471:              nop
                  add          s7, a6, s3
                  and          a3, a2, s9
                  bge          s6, t4, 475f
475:              slti         gp, s7, 1400
                  xori         tp, gp, 823
                  bgeu         a2, t4, 491f
                  slti         a2, t3, 184
                  sll          t1, a1, ra
                  srai         s8, s10, 17
                  add          s11, sp, a4
                  xor          a3, s4, s7
                  srl          zero, t6, t1
                  sub          t1, a7, t1
                  srli         a2, s5, 18
                  slli         s3, t1, 0
487:              sub          s10, s10, a3
                  beq          a4, t1, 496f
                  bgeu         s10, a2, 504f
                  beq          s6, s0, 494f
491:              andi         s0, a2, 998
                  slt          s3, s1, s0
                  srai         s6, t2, 10
494:              sltu         ra, a2, s8
                  bgeu         s8, a3, 508f
496:              slli         s0, gp, 9
                  lui          s3, 865840
                  ori          s1, a3, 225
                  auipc        tp, 445501
                  or           a6, s9, s10
                  slti         s6, s5, -444
                  blt          s5, a1, 504f
                  blt          s10, a7, 511f
504:              andi         s6, sp, 472
                  addi         ra, a4, -1821
                  sltu         t5, s6, s11
                  sub          t4, s1, a2
508:              srl          s5, t6, tp
                  bltu         a0, t4, 524f
                  sltiu        gp, t4, 1128
511:              slli         a0, s6, 10
                  and          s8, s4, t3
                  slli         sp, s7, 15
                  bltu         t3, s1, 530f
                  beq          s8, t6, 520f
                  bne          a4, t0, 517f
517:              slti         a3, a7, 1676
                  lui          t4, 237960
                  add          a2, t4, a2
520:              nop
                  xor          s10, s7, s6
                  and          s0, s9, t5
                  srli         s9, s5, 2
524:              bge          t4, t2, 532f
                  beq          t4, tp, 538f
                  nop
                  auipc        s11, 423089
                  auipc        s4, 124285
                  addi         a5, t3, -1640
530:              bltu         gp, t2, 549f
                  xori         a0, s4, 587
532:              nop
                  bgeu         a5, t2, 548f
                  lui          s5, 605331
                  blt          t1, a1, 547f
                  nop
                  srli         a3, s11, 1
538:              blt          a1, s0, 552f
                  sll          s4, t3, a2
                  and          s4, t2, s3
                  slt          tp, a1, s2
                  srl          a4, tp, a6
                  xori         s0, a5, -465
                  xori         s3, a5, 1211
                  srai         tp, s4, 3
                  and          a7, t3, zero
547:              lui          t3, 978033
548:              or           sp, t6, a7
549:              srai         s8, s2, 12
                  ori          sp, a3, -529
                  nop
552:              xori         s0, t4, 1397
                  blt          t3, ra, 568f
                  slli         a2, a7, 25
                  slli         t1, s5, 20
                  srl          sp, s7, s5
                  srai         s10, a7, 24
                  ori          s1, t5, 826
                  srli         a6, s7, 8
                  xor          ra, a0, s1
                  lui          zero, 620485
                  and          t2, a5, gp
                  beq          s1, t6, 579f
                  add          zero, t1, a1
                  slli         tp, s8, 8
                  slti         s9, s6, 62
                  sltu         sp, s1, t6
568:              beq          sp, zero, 583f
                  and          t4, gp, a4
                  slti         a5, s3, 201
                  bge          a6, s2, 573f
                  and          t6, t0, s11
573:              auipc        s4, 448579
                  sll          a0, s4, a4
                  blt          s8, t4, 576f
576:              andi         s8, a2, 672
                  bgeu         gp, s2, 596f
                  lui          t4, 917312
579:              and          a6, tp, t2
                  xor          a5, s10, s2
                  bltu         a2, ra, 587f
                  bltu         a6, s5, 590f
583:              and          s3, a0, s7
                  xor          a4, t1, s7
                  sltu         s8, s2, sp
                  slli         a2, a7, 3
587:              or           a4, tp, a3
                  sll          s5, s2, a3
                  addi         sp, s3, -215
590:              add          s0, a5, t4
                  srli         tp, t2, 14
                  beq          a2, tp, 600f
                  sra          a0, t6, zero
                  sltu         s10, gp, s4
                  sll          s5, sp, t2
596:              xor          s8, sp, s2
                  and          s10, t6, tp
                  slti         tp, a4, -1161
                  sra          a7, t1, tp
600:              or           a3, s1, t5
                  nop
                  auipc        a2, 173427
                  andi         sp, s8, -1290
                  bltu         s4, s1, 605f
605:              sll          a7, s8, t1
                  slli         s1, s4, 30
                  ori          s11, a2, -1378
                  lui          t5, 383525
                  blt          s5, s3, 621f
                  ori          t5, t1, -1640
                  sra          s6, s7, t1
                  bne          t1, s10, 626f
                  bltu         s6, t3, 628f
                  lui          a3, 887164
                  beq          a0, s6, 621f
                  sltu         s1, a2, s10
                  slt          s6, t2, t2
                  srl          a3, a5, ra
                  xori         a0, t5, 1811
                  bge          s11, s7, 633f
621:              and          s8, a2, s5
                  slli         s0, ra, 7
                  srli         a6, a3, 16
                  srli         s11, s10, 13
                  sra          a0, s7, a5
626:              sll          a5, s5, a0
                  xori         s3, t6, 899
628:              blt          t2, s9, 642f
                  sltu         a2, a1, t2
                  sll          t5, s0, s10
                  beq          a7, t2, 633f
                  xori         t2, s2, -1856
633:              auipc        a2, 593123
                  srl          t4, s11, t0
                  slt          a5, t1, s9
                  beq          s10, s4, 650f
                  beq          s8, s4, 638f
638:              sub          a7, s0, s4
                  addi         s6, zero, -102
                  slti         s10, t5, 1352
                  sltu         sp, s8, s5
642:              xori         t2, a7, 1344
                  nop
                  addi         s1, s6, 98
                  ori          s4, a7, -1516
                  add          s4, sp, zero
                  sltu         s7, t0, t1
                  sll          s4, t5, t6
                  auipc        a3, 838358
650:              beq          s11, ra, 654f
                  sra          t1, t0, s1
                  andi         s5, s1, 1909
                  slt          tp, s8, t1
654:              srl          a0, t0, s7
                  bltu         a2, sp, 668f
                  blt          a5, ra, 670f
                  srli         s11, a0, 9
                  sltiu        s5, s6, -244
                  auipc        a0, 300090
                  sra          s0, s3, a3
                  srl          t5, t1, s2
                  sltiu        t2, s8, 500
                  bge          s3, a5, 680f
                  slt          s6, s9, s9
                  slli         ra, t3, 22
                  bne          a3, a0, 674f
                  bne          a5, s2, 680f
668:              addi         s11, s4, -285
                  lui          t4, 543877
670:              sltiu        zero, a2, 736
                  and          s7, a7, t4
                  sll          a2, s10, sp
                  ori          gp, a6, 445
674:              slt          s4, s7, a5
                  xor          t6, t1, t2
                  sltiu        a5, s8, -512
                  lui          t6, 878040
                  add          gp, a4, s1
                  blt          s10, s5, 686f
680:              nop
                  andi         t2, ra, 348
                  sltu         t2, a3, s11
                  sltu         s10, zero, t4
                  srl          a5, s5, s10
                  sll          t5, a2, s0
686:              xori         s5, a7, 2014
                  sub          gp, a1, a6
                  slti         a6, s10, -1839
                  sltu         zero, t6, s3
                  lui          a3, 588267
                  blt          s0, a0, 704f
                  add          zero, ra, s5
                  or           s5, a0, s0
                  slti         t1, a5, -1674
                  or           s5, sp, s8
                  or           a0, s1, sp
                  srli         s10, s0, 7
                  sra          s11, a7, zero
                  sll          t6, s1, s0
                  bge          tp, a3, 713f
                  nop
                  and          zero, t6, s5
                  xori         t6, a6, -1636
704:              srli         s10, s9, 22
                  sll          gp, s6, s11
                  slli         t5, sp, 17
                  bne          t0, t3, 712f
                  bltu         tp, a5, 710f
                  beq          sp, a5, 710f
710:              and          t1, s7, a6
                  nop
712:              xor          a6, s6, t5
713:              bge          s11, t0, 728f
                  srai         a3, s3, 9
                  sltu         s5, gp, s1
                  or           s3, s8, a5
                  xori         s6, s8, -1919
                  auipc        gp, 384772
                  andi         s6, s3, -894
                  slt          s5, s8, s5
                  sltiu        a0, t6, 687
                  bgeu         s2, a6, 729f
                  sub          zero, a4, tp
                  addi         t5, a4, -186
                  ori          s3, sp, -229
                  srl          sp, gp, zero
                  bne          t0, s0, 735f
728:              sll          s7, t3, s1
729:              sub          zero, a7, s2
                  blt          zero, ra, 744f
                  bltu         s1, s8, 747f
                  slt          ra, a1, sp
                  addi         t1, gp, 157
                  sltu         s1, s9, s5
735:              xor          t2, t2, ra
                  sra          s5, a1, s6
                  slti         a2, s4, -733
                  add          s6, a6, s0
                  auipc        s3, 608902
                  blt          a7, t3, 746f
                  srai         s5, a5, 21
                  lui          s5, 576088
                  srli         s0, t2, 30
744:              bgeu         a7, s5, 757f
                  sub          s1, a2, s3
746:              slli         t5, a3, 20
747:              blt          t3, sp, 748f
748:              ori          s0, s7, 1775
                  andi         s8, a1, 467
                  xor          ra, ra, t4
                  andi         t5, t0, -979
                  ori          s0, t4, 1182
                  xor          gp, s4, a3
                  srai         s7, s8, 9
                  sll          sp, gp, a6
                  beq          t1, zero, 766f
757:              and          a7, s3, t6
                  sll          t2, a5, s5
                  addi         t2, a3, -1271
                  xor          ra, s4, s9
                  slti         a0, tp, 41
                  sra          t5, a2, a4
                  bltu         a2, zero, 766f
                  sra          sp, s0, s9
                  lui          s4, 662678
766:              add          ra, a0, t3
                  addi         t6, a4, 1412
                  slti         a4, s5, -659
                  lw           s0, 4(s2)
                  sll          t4, t0, gp
                  ori          t3, s5, -1319
                  addi         s2, s2, 16
                  sra          a2, t5, a7
1057:             addi x21, x8, 1
1057:             jalr x21, x21, 0
sub_1:            beq          t5, a6, sub_1_stack_p
sub_1_stack_p:    addi         s2, s2, -40
                  sw           s0, 4(s2)
                  sltiu        s3, t5, -1429
                  addi         a4, t4, -1601
                  sltu         a2, gp, t6
                  srli         t1, a2, 28
                  srli         s4, s1, 26
                  sll          t6, t1, a4
                  sll          s4, a6, sp
                  add          t5, s3, a5
                  sltu         a2, a6, a3
                  xor          zero, sp, gp
                  slti         a7, zero, -1267
                  sltiu        gp, t4, -1955
                  lui          ra, 270349
                  nop
sub_1_j3:         jal          s0, sub_2 #jump sub_1 -> sub_2
                  and          t4, tp, a3
                  and          a6, t3, t5
                  blt          t2, s2, 11f
                  beq          t6, a3, 21f
                  or           s7, t3, a1
                  bgeu         s3, a2, 8f
                  bge          a5, a6, 7f
7:                sltu         a3, tp, s0
8:                sltiu        a0, t0, -420
                  addi         s7, t2, -486
                  slti         s3, a1, -1864
11:               bne          s4, s4, 14f
                  sltiu        a6, s11, 1541
                  srl          t6, t2, s7
14:               sub          a2, a4, t3
                  bne          zero, s7, 19f
                  nop
                  add          ra, tp, s0
                  slli         s11, a4, 27
19:               lui          gp, 503358
                  xor          s1, a4, t5
21:               slli         s7, s9, 21
                  bge          a6, t3, 41f
                  bltu         s6, a1, 35f
                  ori          ra, s4, -674
                  srl          a0, tp, gp
                  sltu         s9, a2, t1
                  or           s0, ra, a3
                  slt          s3, sp, a6
                  and          a5, a1, a2
                  sll          a2, a6, a4
                  slt          t4, t0, s6
                  andi         tp, a5, -419
                  slti         s6, t0, 423
                  addi         s8, s6, -2014
35:               or           a7, s3, s8
                  srl          a7, a7, s7
                  or           s10, tp, t1
                  beq          a7, s5, 51f
                  bltu         s5, t1, 49f
                  bne          a7, t6, 53f
41:               auipc        s3, 489884
                  bne          t0, s2, 44f
                  slti         a7, a3, 1142
44:               lui          a0, 950487
                  sltu         t5, tp, t5
                  slti         s9, tp, -812
                  xori         s8, t3, 1345
                  sltiu        s0, a4, 976
49:               auipc        a6, 847967
                  auipc        t2, 1035990
51:               srli         s4, t5, 21
                  xori         s8, t6, -638
53:               beq          t3, t2, 58f
                  xori         s1, s10, -821
                  sltiu        t2, t3, -1079
                  nop
                  ori          s11, s6, 1255
58:               bltu         a4, a2, 72f
                  xori         s0, a0, 229
                  or           s1, t2, s10
                  xori         s3, zero, -392
                  bltu         a6, zero, 67f
                  sra          a3, a0, s8
                  ori          s3, t4, -1814
                  andi         ra, a4, -190
                  nop
67:               sll          a6, a0, s8
                  andi         zero, s2, 1076
                  sltiu        s3, a3, 108
                  addi         s10, t4, 1747
                  bge          sp, gp, 82f
72:               slti         t2, s8, 834
                  andi         s0, a5, 1369
                  and          s5, a0, a7
                  srl          s5, a6, s11
                  add          t5, tp, t5
                  sra          a2, s3, s7
                  and          a7, t2, a5
                  sltu         t2, a3, a3
                  ori          s7, s1, 3
                  and          a4, t1, s1
82:               andi         s0, a1, -146
                  beq          a4, a7, 85f
                  beq          t0, s3, 92f
85:               sltu         s4, ra, s0
                  bgeu         s1, s7, 92f
                  slli         s7, ra, 5
                  andi         t4, a5, 801
                  bltu         s9, a0, 92f
                  sll          s9, s8, t2
                  andi         t3, s9, 405
92:               and          s7, s2, s5
                  slli         a7, s1, 29
                  slli         a2, tp, 17
                  lui          s5, 611114
                  add          sp, gp, s4
                  lw           s0, 4(s2)
                  srli         a4, gp, 22
                  slti         a0, s6, 1996
                  addi         s2, s2, 40
                  addi         a0, t6, 1359
                  srli         s3, t5, 15
                  sra          t1, s1, t4
122:              addi x3, x8, 0
122:              jalr x3, x3, 0
sub_10:           or           a7, s5, s6
                  sltu         t5, s4, s5
                  sltu         s5, a7, s11
                  bltu         s10, s8, sub_10_stack_p
                  xori         s8, s2, -1864
                  nop
sub_10_stack_p:   addi         s2, s2, -48
                  sll          t3, zero, t3
                  sw           s0, 4(s2)
                  andi         t6, a4, -120
                  sltiu        s10, s6, -1276
                  la           a2, region_1+860 #start riscv_load_store_rand_instr_stream_3
                  andi         t6, s5, 1438
                  lbu          t5, -58(a2)
                  sb           zero, -218(a2)
                  sb           sp, -97(a2)
                  sltu         t3, s3, a6
                  sb           s2, -243(a2)
                  sra          s0, a3, s7
                  lb           s4, -63(a2)
                  lb           a7, 13(a2)
                  lb           s5, -139(a2)
                  lh           s6, -182(a2)
                  sub          s6, t1, t3
                  addi         a3, ra, -19
                  srli         t5, s0, 7
                  lui          s4, 189
                  srai         a6, a1, 31
                  or           a3, a5, s5
                  ori          s4, s2, -1190
                  sltiu        s6, a4, -228
                  sb           a6, 139(a2)
                  sltiu        t4, s7, -1015
                  xori         tp, s6, -1987
                  sub          s1, s3, s0
                  lbu          s3, -173(a2)
                  srl          a0, t0, a1
                  xori         t2, gp, 343
                  xori         a4, s11, 318
                  lh           a0, 138(a2)
                  lhu          a4, 254(a2)
                  lbu          t2, 93(a2)
                  andi         s8, sp, 2000
                  lbu          a5, -175(a2)
                  lbu          a3, -158(a2)
                  slt          a0, s9, a5
                  lh           s1, -190(a2) #end riscv_load_store_rand_instr_stream_3
                  la           t1, region_0+1762 #start riscv_load_store_rand_instr_stream_5
                  lb           a0, 3(t1)
                  srai         s11, s10, 7
                  lb           s1, 9(t1)
                  lb           a0, -12(t1)
                  sra          s8, s5, t3
                  lbu          s8, -11(t1)
                  lb           gp, -3(t1)
                  sra          s4, s0, s6
                  lhu          a6, -6(t1)
                  sw           a2, 6(t1)
                  or           s5, t6, sp
                  and          a5, a7, tp
                  slti         s10, gp, 247
                  sb           a7, -11(t1)
                  ori          t6, zero, -1275
                  sh           a2, -8(t1)
                  lb           s3, -3(t1)
                  slt          t5, s2, a0
                  andi         a4, tp, 437
                  lb           s1, 16(t1)
                  sltiu        a5, s8, -283
                  add          ra, s6, t2
                  auipc        a4, 563258
                  lb           s1, 12(t1)
                  sll          tp, sp, a2
                  lh           s8, -2(t1)
                  slt          a0, s5, a3
                  slli         t4, t3, 17
                  andi         tp, t6, 791
                  sb           a0, -10(t1) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1366 #start riscv_load_store_rand_instr_stream_7
                  sh           s2, -800(sp)
                  and          s3, t6, t1
                  sll          s11, t2, a0
                  srl          a3, s10, t2
                  xor          s4, t6, s5
                  sw           sp, -870(sp)
                  sh           s11, -182(sp)
                  lbu          ra, 377(sp)
                  lb           s8, -1211(sp)
                  lbu          s3, -363(sp)
                  lbu          a0, -181(sp)
                  slli         a7, s0, 16
                  sb           ra, -79(sp)
                  lh           ra, 156(sp)
                  sb           s2, -439(sp)
                  xor          a4, t4, a5
                  sub          zero, a1, s10
                  sb           s2, 492(sp)
                  sb           s4, 559(sp)
                  lw           s7, -1270(sp)
                  sb           sp, -775(sp)
                  xor          s3, t2, s11
                  addi         s7, t3, 662
                  addi         a4, t1, 1418
                  auipc        t5, 375524
                  sltiu        a6, a5, 319
                  lh           s11, -1106(sp)
                  lh           s0, -212(sp)
                  lbu          s1, -179(sp)
                  lui          a0, 1025835
                  lhu          a6, -342(sp) #end riscv_load_store_rand_instr_stream_7
                  la           tp, region_1+1179 #start riscv_load_store_rand_instr_stream_12
                  lui          zero, 155996
                  srai         ra, t4, 4
                  sb           a6, -8(tp)
                  nop
                  lbu          t3, 14(tp)
                  xori         a5, s3, 375
                  sltiu        gp, ra, -1162
                  sll          a5, a5, t2
                  sb           s3, 13(tp)
                  sb           s8, -14(tp)
                  lb           s8, -14(tp)
                  sltiu        gp, s6, -1766
                  lb           a5, -15(tp)
                  addi         a5, s4, 754
                  lb           s3, -10(tp)
                  sh           s0, -11(tp)
                  sub          s7, a6, a2
                  sll          s0, t2, a0
                  addi         s8, s7, -334
                  andi         s8, gp, -977
                  lh           a5, 9(tp)
                  lb           sp, 5(tp)
                  lhu          s9, 3(tp)
                  slt          a7, a5, a2
                  ori          sp, zero, 1287
                  sw           s8, 1(tp)
                  lhu          s7, 9(tp)
                  andi         a7, s2, 337
                  sll          s9, a1, s6
                  sb           gp, 0(tp)
                  or           zero, s5, tp
                  lh           s6, 15(tp)
                  lbu          gp, -12(tp)
                  add          a0, s3, s7
                  lb           t5, -16(tp)
                  lb           s5, -16(tp)
                  lb           a7, 11(tp)
                  lhu          zero, 1(tp) #end riscv_load_store_rand_instr_stream_12
                  la           s6, region_0+1750 #start riscv_load_store_rand_instr_stream_0
                  sb           a1, -59(s6)
                  slt          s9, s5, a0
                  ori          t6, a5, -1440
                  sb           a4, 25(s6)
                  lb           a6, 45(s6)
                  lb           s5, -38(s6)
                  add          t3, a7, t1
                  slti         t5, a2, -1190
                  lb           t1, 1(s6)
                  lbu          gp, -63(s6)
                  lbu          t6, -16(s6)
                  srl          ra, s7, s7
                  sb           t6, 50(s6)
                  lbu          sp, 15(s6)
                  lbu          sp, 11(s6)
                  slt          a5, s8, s1
                  sh           t5, 8(s6)
                  lbu          a0, -36(s6)
                  sb           a3, 31(s6)
                  andi         t5, a7, 2025
                  andi         t5, s4, 494
                  lh           s0, -28(s6)
                  auipc        s8, 801961
                  lb           t1, -44(s6)
                  or           s4, s4, t4
                  sb           s1, 45(s6)
                  lbu          s8, -5(s6)
                  sra          a4, s5, t6
                  sb           zero, -43(s6)
                  lb           ra, -29(s6)
                  lbu          a7, -27(s6)
                  sb           a0, 44(s6)
                  auipc        a3, 693948
                  sb           t2, 43(s6)
                  sub          s0, t3, s8
                  addi         s1, t5, -890
                  andi         a6, s7, 2038
                  lb           s3, 21(s6)
                  sltu         t5, a6, s2
                  auipc        t3, 359335
                  sb           s5, -15(s6)
                  sb           s3, 28(s6)
                  sb           a4, 45(s6)
                  nop
                  sb           t5, -17(s6) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1418 #start riscv_load_store_rand_instr_stream_11
                  srai         a2, a4, 12
                  lhu          a2, 186(sp)
                  srli         gp, tp, 24
                  sb           a2, 516(sp)
                  slli         a2, a5, 28
                  sll          s11, s1, s10
                  and          s0, a2, s4
                  srai         a6, s10, 1
                  lh           t2, -740(sp)
                  lb           t6, 321(sp)
                  sltiu        t3, t5, 1627
                  lb           zero, -1348(sp)
                  lb           gp, -841(sp)
                  sh           a6, 136(sp)
                  lhu          t2, -788(sp)
                  lbu          t1, 425(sp)
                  lb           t4, -631(sp)
                  sw           s8, -1030(sp)
                  srl          s5, gp, a1
                  sb           a7, 141(sp)
                  sub          a3, gp, zero
                  ori          a7, t5, -955
                  lbu          ra, -341(sp)
                  lb           s5, -401(sp)
                  lui          s7, 787586
                  auipc        s6, 514447
                  addi         zero, s6, 746
                  lb           s8, -1154(sp)
                  srl          s3, s3, s8
                  add          s1, tp, gp
                  lb           s7, -1201(sp)
                  add          a4, gp, a1
                  sltu         a7, s3, s5
                  sh           a3, -1038(sp)
                  lbu          s11, -433(sp)
                  sb           a1, -485(sp)
                  lbu          a6, -202(sp)
                  xor          a7, a3, s9
                  sh           s9, -268(sp)
                  lb           zero, -1040(sp)
                  sll          a5, zero, a2
                  srai         s4, tp, 14
                  sb           s5, -700(sp)
                  sb           t5, 193(sp)
                  lbu          gp, -1080(sp)
                  andi         a5, s11, 180
                  sltiu        s11, s2, -1159
                  lb           s11, 559(sp)
                  sra          t5, s7, s7
                  ori          t6, s0, -1182
                  sb           s0, -874(sp)
                  slli         a7, a5, 24
                  lb           t1, -1330(sp)
                  xor          ra, a6, t4
                  lb           a3, 477(sp)
                  lw           s5, -1042(sp) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+1158 #start riscv_load_store_rand_instr_stream_10
                  slli         t2, a3, 8
                  sb           a1, -1105(sp)
                  sb           a4, -972(sp)
                  lhu          ra, 630(sp)
                  lw           s8, -150(sp)
                  sltiu        s1, s2, -1900
                  sb           a4, -661(sp)
                  lbu          t6, 247(sp)
                  sb           s4, -972(sp)
                  lbu          t2, -85(sp)
                  lb           a6, -103(sp)
                  sb           s7, 710(sp)
                  add          tp, s0, a1
                  srl          a6, a7, a4
                  lb           a4, 553(sp)
                  lbu          a0, 229(sp)
                  slti         a0, a3, 1031
                  sb           a5, -468(sp)
                  lbu          a0, 825(sp)
                  lh           s4, 780(sp)
                  slt          a0, s10, a2
                  lh           zero, -938(sp)
                  lh           a0, -346(sp)
                  sll          a0, ra, s1
                  addi         gp, s10, -861
                  lb           s8, -105(sp)
                  sub          a3, s11, s3
                  lbu          s10, 55(sp)
                  xor          s9, t4, s3
                  xori         a4, s6, -70
                  lbu          s5, -620(sp)
                  and          ra, s7, a6
                  sw           t0, -186(sp)
                  lhu          zero, 66(sp)
                  sh           s8, -1068(sp)
                  sh           t5, 400(sp)
                  auipc        t3, 1008423
                  lb           s7, -130(sp)
                  andi         a0, s10, -925
                  lb           s0, 80(sp)
                  lb           t2, 211(sp) #end riscv_load_store_rand_instr_stream_10
                  la           s6, region_0+39 #start riscv_load_store_rand_instr_stream_1
                  sb           t0, 6(s6)
                  lbu          s4, -2(s6)
                  sltiu        s0, t2, -1158
                  ori          s3, a0, -45
                  sh           s11, -3(s6)
                  slli         a3, sp, 8
                  xor          zero, s6, zero
                  lhu          s8, 15(s6)
                  and          zero, t5, s4
                  sll          t4, s0, s2
                  lh           s11, -7(s6)
                  sb           a3, -16(s6)
                  srl          s0, s5, gp
                  lb           t6, 16(s6)
                  lb           t6, -10(s6)
                  sb           s2, -5(s6)
                  sh           s4, -15(s6)
                  sh           s11, 11(s6)
                  sb           a0, -4(s6)
                  lbu          zero, -6(s6)
                  lbu          tp, -12(s6)
                  srl          s1, t4, s1
                  sb           a0, 4(s6)
                  lh           s4, -5(s6)
                  slt          s4, tp, s7
                  lb           gp, 12(s6)
                  sh           t2, 7(s6)
                  srl          t5, zero, s3
                  xor          t3, s3, t4
                  xori         ra, s0, -483
                  lh           t2, 3(s6)
                  slt          a6, a6, s3
                  srli         a6, a1, 27
                  sb           s11, 14(s6)
                  lbu          s4, -16(s6)
                  xori         s8, s11, -1910
                  slli         s10, s1, 13
                  slt          a6, s10, s7
                  lb           s11, -2(s6)
                  sra          t3, zero, t4
                  lhu          a0, -1(s6)
                  lb           s10, -9(s6)
                  sb           s0, 0(s6)
                  sb           s1, 16(s6)
                  lb           s4, 4(s6) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1675 #start riscv_load_store_rand_instr_stream_8
                  srai         t4, s5, 25
                  addi         t1, sp, -514
                  sb           a6, -258(sp)
                  slt          a7, s4, s11
                  slt          gp, a2, t4
                  slli         a2, a4, 17
                  sub          s11, t5, zero
                  lbu          s4, -980(sp)
                  lbu          t6, -22(sp)
                  xor          s0, t3, sp
                  nop
                  lhu          a2, -401(sp)
                  lb           s9, 39(sp)
                  xori         a3, a1, 748
                  sltiu        s9, s5, 1412
                  sh           t6, -799(sp)
                  lui          s4, 448400
                  sub          a2, s5, a4
                  lb           a3, -681(sp)
                  lhu          a4, -721(sp)
                  lbu          tp, -412(sp)
                  slt          s8, a6, a1
                  sub          t6, t4, t3
                  xori         t6, s10, 699
                  lb           zero, 130(sp)
                  lb           t3, -431(sp)
                  addi         s11, t1, -1199
                  auipc        gp, 534023
                  srli         s9, s2, 26
                  xori         a5, t0, 81
                  sb           t4, -62(sp)
                  lbu          t3, -944(sp)
                  andi         t6, a5, 459
                  addi         ra, s10, 837
                  srl          a3, t4, s1
                  nop
                  srai         s1, t0, 30
                  sb           a0, -1028(sp)
                  lh           a6, -1651(sp)
                  sb           a3, -965(sp)
                  sltu         a0, a4, ra
                  sra          s7, zero, s1
                  slt          a4, s10, s3
                  lb           t1, -124(sp)
                  lh           t2, -815(sp)
                  sb           t4, -542(sp)
                  sb           t1, -963(sp)
                  lh           ra, 163(sp)
                  lhu          s10, 133(sp)
                  sb           s7, -76(sp)
                  sb           a3, -1398(sp)
                  sra          gp, t2, s2
                  sh           t6, -691(sp)
                  srl          a0, a4, a3
                  sb           t3, 204(sp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_0+1973 #start riscv_load_store_rand_instr_stream_4
                  lb           zero, 10(sp)
                  add          t6, ra, a1
                  srli         a7, t2, 13
                  sb           tp, -6(sp)
                  or           a2, t1, a4
                  sb           a6, 1(sp)
                  sb           s1, 10(sp)
                  slli         s7, s9, 7
                  lbu          s10, -16(sp)
                  lb           s3, -8(sp)
                  xori         a5, a2, -1878
                  lb           t6, -1(sp)
                  nop
                  srl          s9, a7, t4
                  addi         a5, s2, 667
                  slli         a6, s1, 8
                  lb           t3, -16(sp)
                  auipc        s7, 637891
                  sll          t6, s2, s10
                  lbu          t5, -2(sp)
                  sltu         t1, s4, t2
                  lb           t2, 4(sp)
                  sb           tp, -6(sp)
                  lb           t6, -1(sp)
                  ori          t6, s10, 1062
                  sll          s11, t0, s0
                  sw           sp, 11(sp)
                  slti         a3, s3, 381
                  addi         ra, t3, 68
                  lhu          a6, 3(sp)
                  lui          s5, 287815
                  sltiu        t6, s10, -602
                  lbu          t6, -5(sp)
                  lui          s0, 581634
                  lb           a7, -3(sp)
                  xor          s4, s2, t1
                  xor          t3, s10, s11
                  auipc        s8, 73878
                  sw           s11, -13(sp)
                  sb           a5, 4(sp) #end riscv_load_store_rand_instr_stream_4
                  srl          gp, s3, s7
                  srai         t6, s10, 29
                  sra          s4, s2, t2
                  and          s10, s10, a6
                  sra          zero, s11, tp
                  slt          t4, a2, a2
                  sltiu        s7, t0, -1137
                  or           ra, a2, s5
                  slt          zero, s1, a5
                  bge          s3, sp, 21f
                  bne          s5, ra, 29f
                  andi         a6, s1, -442
                  lui          t6, 165327
                  lui          s11, 303307
                  blt          s0, t6, 33f
                  blt          t2, t1, 21f
                  srl          a6, sp, a1
                  andi         s4, sp, 438
                  sub          s10, a1, sp
                  srli         t6, s11, 28
                  srli         a5, ra, 15
21:               or           t2, t2, s4
                  sub          ra, a6, t6
                  ori          a6, ra, -424
                  sra          t6, zero, s11
                  bne          s0, gp, 43f
                  beq          a5, t1, 40f
                  slti         s4, t2, -1240
                  xori         s9, a4, -1391
29:               slli         t4, s4, 10
                  nop
                  bne          s4, ra, 35f
                  srai         a3, a4, 2
33:               bgeu         a5, a7, 45f
                  srli         a4, a3, 9
35:               auipc        a7, 219238
                  ori          s4, tp, 202
                  lui          a5, 605893
                  sub          s11, s11, s9
                  andi         tp, s11, -844
40:               bltu         s0, a5, 44f
                  addi         s0, s2, 86
                  srl          t6, s4, sp
43:               bge          t2, t4, 53f
44:               sub          s6, s0, s4
45:               sltiu        a5, t4, -140
                  slt          t6, s10, a7
                  bgeu         s2, t3, 57f
                  slt          s8, tp, a1
                  sltu         s3, t3, t6
                  bltu         s2, a3, 51f
51:               bgeu         s9, ra, 59f
                  bltu         sp, s10, 67f
53:               or           a4, t0, a2
                  auipc        s0, 1032540
                  xor          s6, t4, a1
                  xori         ra, s4, -775
57:               sll          gp, s8, a1
                  and          s10, s8, tp
59:               sltu         t4, t2, t3
                  srl          a5, t2, s3
                  sltu         ra, a4, a0
                  beq          a1, s0, 65f
                  or           sp, t1, ra
                  srai         t6, a3, 17
65:               and          s8, tp, t0
                  srai         a2, ra, 29
67:               xor          s4, a1, t1
                  slti         s5, a0, 1860
                  bgeu         a6, a3, 81f
                  nop
                  srl          s10, sp, t0
                  srai         s4, s6, 21
                  beq          t0, s5, 89f
                  bgeu         s8, s5, 83f
                  bne          t2, t2, 94f
                  sltiu        s1, s3, -1496
                  add          t3, a6, a3
                  andi         a4, a7, -2034
                  add          a6, t4, a0
                  srli         s8, a7, 24
81:               slt          s0, a4, s0
                  slli         t3, a1, 19
83:               bge          s8, a4, 98f
                  sra          t4, t1, s1
                  slli         s3, s0, 26
                  bgeu         sp, a7, 101f
                  addi         a4, s7, -1074
                  xori         t2, tp, 2021
89:               bge          s1, s9, 106f
                  andi         gp, s7, -1597
                  ori          s7, a6, 1311
                  bge          s2, t1, 105f
                  slt          s8, s1, t5
94:               lui          gp, 129334
                  sll          s11, t3, a5
                  xor          t1, t4, zero
                  bgeu         t4, s0, 113f
98:               beq          a1, gp, 117f
                  xor          s11, s9, a5
                  slt          s7, t5, a4
101:              andi         a3, s11, 1345
                  slt          s9, t1, a7
                  ori          gp, s9, -819
                  slti         a3, a2, 448
105:              xor          a2, a6, s8
106:              slt          gp, a0, s6
                  xori         s5, s5, 708
                  beq          ra, s5, 112f
                  ori          s1, sp, -315
                  and          s10, s2, zero
                  srai         s9, ra, 27
112:              ori          sp, t4, 2025
113:              beq          t3, t1, 116f
                  nop
                  beq          t5, a0, 130f
116:              bge          t1, s8, 136f
117:              ori          t3, t6, 1118
                  or           tp, s8, a2
                  bne          s5, s0, 139f
                  xori         s0, a6, -1809
                  sll          ra, t0, sp
                  srli         zero, gp, 23
                  bgeu         s9, t6, 138f
                  bge          a5, s9, 134f
                  srl          s7, a1, a7
                  xor          s5, s7, s3
                  addi         t3, a0, -510
                  sltiu        t3, t2, 804
                  sltiu        t1, t3, 863
130:              blt          s7, s7, 142f
                  or           s8, t6, a3
                  bne          t0, s2, 148f
                  ori          t3, s1, -866
134:              slti         a0, s6, -460
                  and          a2, t0, t2
136:              xori         ra, sp, -745
                  sra          tp, a0, s1
138:              srli         a3, s9, 23
139:              lui          sp, 758993
                  blt          s5, s1, 144f
                  sub          a0, t2, tp
142:              bgeu         s1, s4, 154f
                  xori         a7, s1, 2005
144:              bne          s4, s1, 159f
                  sltu         sp, s7, t6
                  ori          s5, a1, 2031
                  bge          s10, s0, 155f
148:              nop
                  lui          s11, 1045742
                  srli         sp, s8, 29
                  andi         s11, a1, -93
                  addi         gp, a5, -897
                  slt          s0, s8, ra
154:              auipc        a5, 297427
155:              srl          sp, t3, s10
                  bltu         a6, s4, 176f
                  auipc        a2, 928769
                  nop
159:              sll          s4, t0, zero
                  slt          s1, a4, gp
                  xor          t2, a0, a7
                  beq          a2, zero, 165f
                  andi         s0, a2, 312
                  xori         s9, a4, -1447
165:              nop
                  andi         s10, tp, 1479
                  addi         t4, s3, -179
                  beq          s4, s11, 172f
                  ori          s0, s2, 387
                  beq          s8, s7, 182f
                  lui          a2, 669127
172:              sub          t6, s0, t0
                  slli         s11, a3, 18
                  sll          s4, t5, a1
                  bne          s3, a4, 193f
176:              srai         zero, a5, 26
                  srai         ra, a3, 16
                  lui          a6, 21621
                  or           a4, s6, gp
                  bltu         a4, a2, 200f
                  nop
182:              xor          s10, s3, a2
                  slt          s8, a4, s0
                  bge          a1, a0, 203f
                  slt          a2, a2, tp
                  srli         s10, a3, 19
                  sll          s6, tp, t2
                  ori          s9, s3, 1029
                  sltiu        t2, a2, -1077
                  and          a4, s3, a4
                  and          a3, s2, a7
                  srai         tp, a5, 30
193:              auipc        tp, 434885
                  lui          ra, 338199
                  sll          t5, s1, s6
                  andi         gp, s5, -1119
                  bge          sp, s2, 213f
                  lui          s0, 706698
                  lui          s4, 413903
200:              slt          s5, zero, a7
                  slli         t6, t3, 4
                  srai         tp, ra, 29
203:              sra          t3, t2, ra
                  sll          a6, s9, s2
                  slt          s4, s11, a1
                  andi         s6, a7, 939
                  xori         s9, a6, 984
                  bge          ra, gp, 212f
                  xor          s1, t2, t5
                  beq          t0, s11, 211f
211:              blt          s4, gp, 228f
212:              nop
213:              and          t3, a4, s10
                  nop
                  srli         s7, s2, 9
                  bge          a3, zero, 222f
                  beq          a7, tp, 220f
                  nop
                  addi         s9, s9, 1925
220:              bne          s7, zero, 239f
                  srai         t1, tp, 3
222:              slti         t4, s3, 1593
                  slti         t2, s11, -881
                  nop
                  sll          a3, t1, a6
                  or           s3, s1, t5
                  addi         t1, t2, 1310
228:              bltu         ra, a5, 243f
                  andi         s5, a1, 113
                  bge          s7, s6, 239f
                  sll          s7, a0, t1
                  sll          s10, ra, s2
                  srl          t6, sp, gp
                  or           sp, s7, t1
                  slli         s10, s11, 7
                  srai         s8, s1, 13
                  bltu         s5, s9, 247f
                  and          a5, s4, t4
239:              srli         a4, t5, 15
                  and          s9, s8, zero
                  andi         a2, s5, -1888
                  slli         a4, s9, 17
243:              slli         t3, a4, 18
                  addi         a2, ra, -1876
                  srli         s0, a1, 3
                  bne          a5, t0, 260f
247:              sltiu        s9, s6, 46
                  bgeu         a7, s1, 261f
                  sltu         t6, gp, s10
                  bge          zero, s0, 269f
                  sub          t3, a3, s2
                  ori          a4, a2, -764
                  sll          a7, s6, t5
                  and          s9, s5, t2
                  bne          s4, t0, 270f
                  sltu         a0, s3, s2
                  bltu         a0, t3, 276f
                  add          s10, t4, s6
                  bltu         zero, ra, 268f
260:              blt          t3, sp, 279f
261:              nop
                  bgeu         a4, t3, 279f
                  sra          tp, s2, s6
                  bgeu         a4, tp, 284f
                  ori          s0, a6, 423
                  lui          a6, 623014
                  slli         a5, t1, 25
268:              sltu         s8, t5, t2
269:              blt          a2, a1, 279f
270:              add          a4, t4, s7
                  xori         s6, a7, -584
                  srai         s9, tp, 7
                  ori          s3, t1, 1855
                  sra          s6, t1, a6
                  nop
276:              bltu         t6, a0, 292f
                  and          s6, gp, s8
                  srl          ra, t0, s6
279:              slli         s1, t5, 11
                  slt          a4, zero, s1
                  sltiu        s1, a6, -1359
                  ori          s0, s1, -1469
                  add          s5, t3, a1
284:              srai         ra, s4, 26
                  slli         s8, sp, 15
                  lui          a4, 744579
                  bge          s10, t2, 295f
                  slti         t5, a3, 385
                  beq          a1, gp, 301f
                  andi         s10, t5, 358
                  add          a2, a7, t1
292:              beq          s9, s6, 311f
                  add          s5, s8, ra
                  add          t1, a7, tp
295:              nop
                  slt          s9, s3, a2
                  blt          s3, s2, 312f
                  beq          gp, zero, 310f
                  sltiu        t2, s5, -1570
                  auipc        t6, 352824
301:              sltiu        s5, s10, 257
                  andi         sp, t3, 1907
                  slli         a3, a5, 19
                  bne          s1, a6, 319f
                  andi         t1, t3, 853
                  bge          a5, t2, 316f
                  beq          ra, s8, 319f
                  xori         a4, s3, 1547
                  sltiu        s6, a1, 290
310:              sltu         gp, s7, s11
311:              srl          s6, a4, s9
312:              slti         sp, t5, -1709
                  addi         s6, a1, -1812
                  srai         s0, s10, 3
                  xor          sp, a1, s7
316:              sltiu        a0, s10, 1880
                  xori         s5, t3, 1386
                  srl          t2, a5, a0
319:              blt          t5, gp, 320f
320:              andi         zero, s11, 1056
                  srai         a6, a0, 16
                  slli         gp, s5, 1
                  blt          s1, t5, 342f
                  srai         s5, t3, 18
                  bge          a4, a3, 344f
                  beq          gp, a1, 344f
                  sll          s4, s4, s4
                  bgeu         s11, t0, 348f
                  andi         a3, a0, 1783
                  srai         s4, a5, 23
                  or           s10, a4, s0
                  auipc        a5, 835769
                  lui          t1, 886319
                  sll          zero, a5, t2
                  and          a3, s7, a5
                  sub          t2, a5, s7
                  srl          t1, s7, s7
                  sltiu        a3, s6, 1172
                  slli         zero, s6, 10
                  or           s0, s0, a5
                  sra          tp, s0, s3
342:              slti         s5, t1, 775
                  and          t3, a2, zero
344:              sra          t4, sp, a4
                  slt          s9, s0, s5
                  andi         s4, a2, 1639
                  addi         zero, s3, 398
348:              sltiu        a0, a7, 1370
                  add          s6, a0, a7
                  xor          a7, t4, s11
                  slt          a6, t5, a1
                  auipc        a7, 537408
                  xori         t5, a1, 1558
                  sub          s11, t3, s8
                  beq          t4, a7, 370f
                  xor          s6, s5, a5
                  ori          gp, t5, -1129
                  or           s9, s7, a0
                  sub          s0, ra, s0
                  bgeu         t4, t1, 374f
                  sll          s1, a6, s2
                  lui          a3, 158737
                  lui          s8, 1032607
                  srli         s1, a1, 22
                  add          s1, s0, sp
                  lui          gp, 734125
                  slt          t2, t3, s1
                  blt          s3, a1, 371f
                  srli         s3, s0, 20
370:              auipc        t2, 95114
371:              beq          t3, s7, 375f
                  andi         a7, sp, -1956
                  bgeu         a4, s10, 386f
374:              srai         t1, t6, 18
375:              srai         s5, a2, 2
                  nop
                  xor          a6, t0, s2
                  ori          zero, s4, -958
                  nop
                  sll          zero, a1, gp
                  bne          t6, s3, 397f
                  slli         s3, a7, 21
                  sltiu        s4, a3, -892
                  bge          zero, ra, 399f
                  srl          t2, zero, s0
386:              addi         a0, t3, -1941
                  add          t4, s0, t0
                  blt          s6, t6, 392f
                  sra          s7, ra, t0
                  blt          a4, s10, 394f
                  blt          a0, tp, 394f
392:              add          t2, s1, t5
                  add          a0, t4, s8
394:              sra          s3, s4, a7
                  la           sp, region_1+1994 #start riscv_load_store_rand_instr_stream_2
                  sll          a7, a6, t6
                  lb           gp, -48(sp)
                  sub          a6, t2, s5
                  slti         a2, s9, 322
                  lbu          a4, -217(sp)
                  lb           t5, -56(sp)
                  srai         s10, ra, 15
                  lb           a5, -87(sp)
                  sw           a4, -254(sp)
                  sb           s1, -193(sp)
                  add          t5, tp, s5
                  lb           a7, -25(sp)
                  lhu          s8, -232(sp)
                  nop
                  slt          t4, t0, a5
                  slli         s10, t2, 31
                  lb           a5, -3(sp)
                  lw           s4, -134(sp)
                  sb           s5, -3(sp)
                  sra          gp, s10, a4
                  ori          s8, gp, -698
                  sh           s1, -146(sp)
                  lui          a6, 661930
                  lhu          s7, -80(sp)
                  sb           zero, -103(sp)
                  lh           t6, -236(sp)
                  lbu          tp, -105(sp)
                  sltiu        s1, a6, -1177
                  sb           s7, -212(sp)
                  srl          a2, s9, a2
                  slli         t5, gp, 8
                  lb           a6, -73(sp)
                  lb           t3, -100(sp)
                  lui          s11, 1041801
                  lui          s3, 931519
                  slli         s6, s0, 16
                  sltiu        a4, s11, -358
                  and          s10, a7, t0
                  lbu          s7, -5(sp)
                  sb           a6, -147(sp)
                  lbu          s6, -44(sp)
                  sb           zero, -91(sp)
                  and          a2, zero, gp
                  sb           s3, -119(sp) #end riscv_load_store_rand_instr_stream_2
                  and          zero, zero, s10
                  sll          s1, s8, a3
397:              bge          s11, a2, 403f
                  or           a3, s5, s9
399:              addi         s11, t6, -1349
                  addi         t5, sp, 1535
                  sll          s6, a3, a7
                  sll          s9, s7, s4
403:              and          s3, s11, sp
                  bltu         t3, gp, 420f
                  slti         a0, t4, -864
                  auipc        s7, 175864
                  sltiu        a2, s2, -700
                  xor          a5, t6, a1
                  srli         t1, t2, 12
                  srli         tp, zero, 1
                  auipc        s4, 936915
                  and          a2, t6, s11
                  sltiu        s1, s2, -297
                  bge          s0, s2, 417f
                  ori          a3, a2, -1490
                  xori         tp, t0, -1800
417:              nop
                  slt          s7, t0, a2
                  bgeu         ra, s0, 438f
420:              ori          s3, s6, 1125
                  sltu         s11, s7, t6
                  sra          s11, s6, s8
                  bne          a2, s7, 443f
                  add          a2, s7, s7
                  ori          t3, zero, 924
                  beq          a7, t5, 445f
                  and          a7, a6, s11
                  or           t6, a3, ra
                  srl          s7, a4, a6
                  bge          s11, t6, 445f
                  slt          ra, zero, a2
                  srai         zero, s10, 5
                  xori         t5, s11, 1107
                  xor          t1, s6, a7
                  or           t4, a2, s3
                  addi         s9, a1, 651
                  slti         s9, s1, -258
438:              sltiu        ra, s9, -693
                  lui          a3, 877776
                  sub          t4, s2, a1
                  andi         s6, a2, -1661
                  sub          t1, tp, s1
443:              bltu         zero, t3, 462f
                  xori         s5, t1, 111
445:              or           zero, tp, t4
                  sll          a5, t6, a0
                  blt          t0, ra, 451f
                  blt          t2, s6, 454f
                  ori          s4, a2, 1751
                  bge          s6, a3, 466f
451:              auipc        t6, 148978
                  slti         a3, t6, -1036
                  xor          t1, a2, zero
454:              andi         s8, t5, 1722
                  blt          a0, s5, 459f
                  lui          a5, 896957
                  slt          ra, sp, t0
                  andi         s11, sp, -1540
459:              slti         tp, t5, -994
                  sub          t4, a6, s4
                  slt          gp, t2, a6
462:              auipc        s9, 127464
                  bne          s10, t4, 478f
                  srli         a7, s2, 16
                  and          t2, s4, s2
466:              lui          s4, 125159
                  lui          a6, 857548
                  andi         t6, t1, 1100
                  and          s8, s2, a5
                  lui          t4, 141538
                  bge          tp, a2, 483f
                  slt          s4, s7, t4
                  slti         gp, gp, -256
                  or           s11, gp, s6
                  beq          s9, a1, 490f
                  or           a3, s5, a4
                  slli         t1, a7, 13
478:              sll          a2, s8, a5
                  bltu         s1, s11, 499f
                  bge          s2, a7, 488f
                  srli         ra, a6, 30
                  bltu         t2, s9, 500f
483:              slli         zero, gp, 25
                  nop
                  xor          t5, a6, s7
                  addi         t4, a5, -302
                  srai         s4, t3, 9
488:              nop
                  nop
490:              bltu         s0, gp, 507f
                  beq          s6, s5, 505f
                  sub          s3, gp, s4
                  or           a2, a0, s1
                  and          ra, t1, s7
                  slli         s0, a3, 7
                  sra          s11, s6, s0
                  slti         t5, tp, -966
                  and          s0, a0, sp
499:              auipc        a5, 783653
500:              bgeu         t1, s3, 501f
501:              srl          t5, t2, t4
                  or           s4, tp, tp
                  bge          s5, t3, 513f
                  bltu         s8, t0, 508f
505:              beq          s7, s8, 508f
                  add          s9, ra, s0
507:              blt          t3, t0, 526f
508:              addi         t4, s3, 507
                  bge          s6, s7, 518f
                  andi         zero, s6, -1665
                  sll          s0, s4, a6
                  addi         zero, s5, 40
513:              bne          zero, s4, 525f
                  bge          a5, s8, 526f
                  sll          t5, s1, t2
                  xor          gp, sp, s1
                  sltu         a0, t5, t4
518:              xor          zero, a2, t3
                  sub          a7, t4, t4
                  srli         s8, gp, 5
                  blt          s5, s0, 531f
                  srli         s1, t2, 15
                  slli         a7, a1, 10
                  srli         s5, sp, 0
525:              sub          t6, gp, a2
526:              add          s11, a0, s9
                  bltu         ra, s5, 540f
                  lui          a2, 308099
                  slt          s10, sp, s4
                  xori         s5, s2, 661
531:              bge          t3, t0, 546f
                  bgeu         s5, tp, 544f
                  sltiu        gp, sp, 671
                  auipc        a4, 4073
                  add          a3, s5, s6
                  nop
                  auipc        s11, 859282
                  slti         s10, s7, -725
                  blt          zero, a0, 555f
540:              auipc        zero, 729047
                  xor          s10, zero, a0
                  xori         t4, sp, -1203
                  and          a2, s5, a6
544:              xor          ra, s5, s5
                  sll          a2, s5, s5
546:              xor          s6, s7, t3
                  add          t6, a4, s11
                  srai         s8, s11, 21
                  ori          zero, a5, 1353
                  slt          t3, t4, t0
                  sltu         ra, s1, t4
                  lui          a0, 391689
                  xor          s4, t5, s1
                  andi         s6, a0, -1569
555:              srl          t1, a4, zero
                  add          s4, s4, a7
                  lui          a6, 874061
                  srl          a6, s3, s0
                  bltu         a0, t5, 574f
                  bne          a7, a0, 564f
                  addi         t4, t0, -638
                  blt          sp, s5, 574f
                  blt          a0, s7, 569f
564:              and          s6, t2, a1
                  xor          s9, gp, a2
                  ori          ra, t1, 1706
                  sub          tp, s8, t2
                  xori         s6, t4, 296
569:              slli         s11, s8, 1
                  addi         ra, ra, -1284
                  slti         ra, s8, 1385
                  xori         s9, t5, -1919
                  auipc        t6, 786139
574:              addi         s4, s6, -1058
                  sltu         t1, gp, s8
                  and          s4, s0, s0
                  and          s11, s0, s8
                  addi         tp, s3, -1585
                  beq          ra, s0, 582f
                  addi         s10, a5, 1119
                  sltiu        s8, a4, -1026
582:              sltiu        sp, zero, 265
                  blt          a7, tp, 598f
                  srl          a2, t2, s4
                  blt          a0, s1, 595f
                  sltiu        s5, a4, -680
                  lui          ra, 141616
                  addi         s0, s4, 655
                  bltu         t4, s8, 602f
                  sltu         a3, a1, s9
                  add          s6, a2, s2
                  srai         a5, s5, 15
                  lui          gp, 324280
                  sltu         sp, a4, zero
595:              add          a0, sp, ra
                  sll          zero, t5, t6
                  xor          gp, s8, zero
598:              bgeu         t5, s10, 615f
                  slti         s10, ra, 458
                  bgeu         a3, a0, 615f
                  bne          s3, s3, 604f
602:              slli         t2, s3, 26
                  lui          s8, 797835
604:              ori          a6, s10, 1417
                  sltiu        s3, s9, 295
                  add          a7, t3, ra
                  add          ra, t1, t6
                  srai         ra, a3, 23
                  ori          t5, tp, -398
                  slt          s4, s7, a1
                  xor          s3, ra, t3
                  add          t5, t1, ra
                  nop
                  ori          s9, ra, -327
615:              or           s10, s11, s11
                  add          a0, s0, zero
                  slt          t4, s2, a2
                  bge          s2, a1, 619f
619:              blt          t3, gp, 628f
                  blt          s8, s3, 639f
                  blt          a4, a0, 640f
                  sra          a7, s11, a7
                  bltu         ra, s4, 641f
                  addi         a6, t5, 1997
                  or           a4, a1, t5
                  addi         s0, a6, -237
                  bltu         a3, zero, 637f
628:              sltu         a7, s10, a2
                  bge          s2, s1, 649f
                  srai         s11, s2, 20
                  bgeu         t5, a5, 650f
                  and          a4, a7, a0
                  srai         t3, s3, 8
                  sltu         sp, t3, gp
                  sltu         s5, s10, a0
                  slti         s3, t4, 606
637:              sltu         t6, s4, a3
                  srli         s4, s6, 11
639:              xori         t3, zero, -52
640:              add          a4, t6, s0
641:              and          t6, t6, t0
                  nop
                  slt          s0, a2, a5
                  sub          s5, s5, s8
                  lui          s1, 714507
                  xor          t5, s10, s8
                  bgeu         s0, t3, 651f
                  slli         ra, t4, 10
649:              beq          t4, s10, 661f
650:              xori         s10, t6, -549
651:              blt          s2, sp, 665f
                  srai         a2, a0, 21
                  bge          sp, t0, 669f
                  or           t2, s9, a2
                  bne          a4, s7, 659f
                  sra          s9, s6, a2
                  or           s11, a1, t5
                  sltu         tp, sp, a5
659:              xor          s0, a3, a2
                  lui          a3, 905395
661:              xori         t5, a6, -546
                  slli         sp, s11, 12
                  sll          t4, s8, tp
                  or           t3, sp, a3
665:              sltu         gp, s9, s9
                  srl          a0, ra, zero
                  ori          a5, a2, 1329
                  srl          tp, sp, a6
669:              sltu         s0, s4, s6
                  andi         s6, a5, -199
                  or           s0, t1, a3
                  sll          sp, t5, a3
                  srli         s6, a7, 13
                  addi         s6, t3, -1746
                  srai         s5, s10, 3
                  sltiu        tp, a5, 1892
                  beq          a1, a0, 692f
                  bgeu         ra, t5, 697f
                  bltu         s6, a2, 699f
                  blt          t1, s3, 688f
                  bne          a4, s6, 693f
                  xori         s6, a6, -1726
                  xor          gp, t4, s10
                  sra          s9, t3, s10
                  sltu         s1, t1, t5
                  bgeu         s6, a7, 701f
                  srl          gp, t1, t6
688:              srl          sp, t1, zero
                  srl          a6, a7, s7
                  and          s9, tp, t2
                  xori         a7, sp, 1715
692:              auipc        zero, 724919
693:              xori         a2, gp, -1175
                  slti         a2, a3, 777
                  ori          s5, s6, -2012
                  beq          t5, tp, 699f
697:              sll          s5, s8, s5
                  sll          zero, a1, sp
699:              blt          t3, zero, 719f
                  bge          t2, s8, 708f
701:              srli         zero, s2, 15
                  sub          s8, t2, tp
                  srl          t2, t3, a4
                  bltu         gp, a3, 719f
                  sltu         gp, t2, s2
                  bne          a0, a2, 725f
                  bgeu         t0, s10, 721f
708:              and          t4, t4, a3
                  and          s5, a1, s4
                  slti         a6, s0, 1053
                  auipc        s9, 509619
                  srl          ra, s4, s6
                  sub          a6, ra, s1
                  or           a2, t0, s0
                  add          s11, s10, a7
                  sll          t3, t3, s3
                  or           s9, t3, sp
                  and          a5, s8, s5
719:              srai         a2, s1, 17
                  sub          a7, a0, s11
721:              sll          a4, a7, sp
                  beq          a2, t6, 728f
                  and          s4, a0, a1
                  sub          t1, a7, a2
725:              auipc        s4, 218335
                  bge          gp, s10, 742f
                  andi         tp, t0, -1526
728:              auipc        a7, 134876
                  auipc        ra, 322569
                  sra          s5, s10, a1
                  bge          sp, t3, 734f
                  bne          s2, s7, 747f
                  andi         t5, s2, 1421
734:              sltu         a2, t1, t6
                  blt          s7, s7, 739f
                  nop
                  xor          s3, t6, a2
                  bgeu         s5, t5, 757f
739:              sltu         s1, a1, gp
                  addi         s4, t1, -430
                  sub          a6, s6, t1
742:              andi         a2, a4, 51
                  addi         s0, t1, 614
                  nop
                  bltu         sp, a0, 762f
                  addi         t3, s10, -1455
747:              and          ra, s0, t3
                  bltu         s11, s4, 752f
                  and          s7, s8, sp
                  srai         s4, a4, 1
                  bge          sp, sp, 752f
752:              addi         s7, s9, -3
                  slt          t5, s6, a4
                  srai         s6, a5, 12
                  slti         s10, s9, 1280
                  xor          s0, s3, a7
757:              nop
                  sll          a2, a3, s7
                  blt          s7, a7, 778f
                  blt          s0, s1, 773f
                  blt          t3, s7, 779f
762:              bltu         s7, a6, 766f
                  and          a7, sp, s11
                  addi         s3, s5, -643
                  bge          t0, s4, 775f
766:              srli         a0, t3, 9
                  bne          t4, s4, 779f
                  beq          s2, zero, 780f
                  and          s8, ra, t5
                  sra          a7, s11, s4
                  addi         s7, t6, -439
                  auipc        s10, 362213
773:              and          a2, a1, a6
                  blt          gp, t3, 794f
775:              bltu         t3, s8, 784f
                  bltu         t1, s9, 792f
                  or           t6, a3, s3
778:              bne          a5, s5, 788f
779:              ori          t2, zero, -1575
780:              bgeu         zero, s7, 795f
                  addi         s0, t2, -1681
                  ori          t4, s6, -937
                  srai         s6, sp, 5
784:              lui          s5, 241874
                  sra          a0, s1, s4
                  and          s9, t4, ra
                  beq          t0, a5, 806f
788:              blt          a5, t5, 803f
                  add          a7, gp, a7
                  andi         a7, a6, 1369
                  bltu         t6, gp, 806f
792:              slt          s10, ra, a6
                  add          ra, s7, a5
794:              xor          ra, s6, zero
795:              add          sp, ra, s0
                  srl          t1, a5, gp
                  xori         t3, s5, 135
                  nop
                  add          a3, s0, a6
                  ori          t3, s4, 1653
                  or           s4, a4, s2
                  blt          t3, s0, 819f
803:              and          a6, s9, s11
                  blt          s6, t4, 820f
                  addi         t1, a4, -141
806:              sltu         s5, t2, t4
                  addi         ra, a5, 1593
                  bne          t6, zero, 817f
                  sltu         s10, s2, a1
                  or           a5, s7, t5
                  sll          a5, s8, a6
                  add          a5, zero, a2
                  blt          s3, tp, 831f
                  add          t5, s1, s6
                  bgeu         s9, s2, 827f
                  sltu         a0, t5, ra
817:              srli         a4, s6, 8
                  bne          s6, tp, 824f
819:              sltu         s4, a5, a0
820:              beq          s7, t4, 830f
                  sltu         s9, a1, a3
                  sll          t2, s1, s5
                  or           s5, s6, s4
824:              srai         a7, a6, 5
                  slti         ra, a1, 1307
                  xor          zero, a7, a1
827:              slt          s9, s3, a2
                  beq          s8, s0, 848f
                  la           s0, region_0+1892 #start riscv_load_store_rand_instr_stream_9
                  lbu          s3, -17(s0)
                  sb           t2, 57(s0)
                  auipc        a7, 1048312
                  sll          s1, a0, s1
                  slli         a0, s1, 20
                  lbu          t1, -14(s0)
                  slti         s3, ra, -432
                  xor          a2, s8, tp
                  sub          s4, a4, t0
                  or           t1, t0, a0
                  sltu         t4, a4, s6
                  addi         s11, t4, -684
                  andi         a3, t1, 738
                  and          t6, a0, a1
                  lw           t3, 40(s0)
                  and          t6, sp, s3
                  slt          zero, t5, ra
                  slt          s7, s1, s7
                  sh           s4, -20(s0)
                  add          s9, s1, t0
                  slli         t6, t3, 21
                  xori         t3, t5, -196
                  lbu          t6, -38(s0)
                  sb           s4, 49(s0)
                  lbu          t1, 19(s0)
                  sll          a3, t5, sp
                  srl          t4, t0, s3
                  sub          s5, s3, t4
                  lh           s10, -4(s0)
                  slti         a3, s5, -678
                  or           t4, a0, tp
                  lb           sp, -23(s0) #end riscv_load_store_rand_instr_stream_9
                  sub          t5, s1, zero
830:              ori          a2, s4, 910
831:              slti         gp, s1, -1487
                  srl          a6, a2, s10
                  bgeu         t6, t4, 852f
                  andi         s4, gp, 609
                  and          s9, a5, a3
                  and          s5, s5, t3
                  addi         s1, s0, -1828
                  bne          s9, a3, 841f
                  sub          t4, t6, t4
                  slt          a3, gp, t1
841:              sltiu        t1, sp, 1840
                  ori          gp, t5, -861
                  sra          sp, ra, s5
                  blt          s7, gp, 863f
                  lui          s6, 505435
                  ori          zero, t6, -1319
                  bltu         s6, s7, 851f
848:              and          a5, t2, t0
                  bge          s3, t2, 863f
                  lui          tp, 114973
851:              bgeu         a5, s11, 855f
852:              slt          zero, t5, s11
                  blt          a5, t3, 863f
                  xori         a0, t3, -415
855:              sll          s5, t2, s5
                  sra          t2, s2, a0
                  andi         a4, ra, -560
                  bne          t1, t2, 862f
                  lui          zero, 748165
                  nop
                  slli         a5, t2, 3
862:              andi         a2, s10, -1349
863:              addi         t4, t5, 413
                  add          a5, t0, s7
                  slti         s9, s8, -302
                  blt          s4, s7, 886f
                  bne          s10, s9, 886f
                  ori          s4, s5, 1826
                  sltu         a5, a2, t4
                  bge          a1, t1, 882f
                  sll          s10, t5, t2
                  bgeu         s3, a0, 884f
                  sltiu        a2, s0, -1591
                  andi         s9, gp, 1363
                  bge          s0, gp, 890f
                  slti         t3, a1, -961
                  srai         t2, s6, 10
                  srai         a4, t5, 13
                  bne          s11, a3, 894f
                  nop
                  andi         t4, s6, 1233
882:              sra          zero, t6, s7
                  slti         s5, s6, 1486
884:              beq          a3, s0, 887f
                  sltu         a2, t4, s10
886:              bge          s8, a7, 887f
887:              xori         t2, s0, -1175
                  sll          s10, s10, s8
                  sltiu        tp, a6, -680
890:              sltu         ra, s8, s11
                  sra          s6, s7, s8
                  sltu         a6, s11, zero
                  blt          t3, s7, 909f
894:              add          s8, t0, t3
                  bne          a6, s5, 914f
                  bltu         s8, s6, 904f
                  bge          t0, s2, 910f
                  or           a7, a3, s0
                  srl          a7, s11, t4
                  auipc        ra, 349049
                  xori         s7, zero, -1318
                  nop
                  slt          a6, s1, t0
904:              addi         tp, s4, 918
                  bge          zero, a0, 909f
                  sltiu        a2, s2, -1135
                  slt          s0, s7, gp
                  andi         s0, tp, -197
909:              beq          s2, t2, 924f
910:              sub          a4, a6, zero
                  sub          s9, t4, a6
                  and          s10, tp, s7
                  sltiu        t3, s6, -366
914:              sltu         s10, ra, s8
                  addi         s6, zero, -1852
                  andi         t3, zero, -512
                  nop
                  blt          tp, t5, 933f
                  beq          a0, t5, 925f
                  blt          a4, s0, 923f
                  bltu         t4, a3, 933f
                  slt          a2, t6, s9
923:              srl          sp, s4, s9
924:              bge          s8, a0, 934f
925:              sltiu        a0, a6, -1075
                  ori          s11, s9, 1470
                  slt          t5, a0, a6
                  add          a4, zero, s7
                  bltu         a0, ra, 948f
                  bltu         s8, s7, 942f
                  blt          a3, s0, 951f
                  sll          a0, s6, a7
933:              and          sp, s11, s1
934:              blt          zero, a7, 949f
                  srai         sp, t6, 12
                  slli         t1, t0, 0
                  addi         a5, a3, -837
                  slt          tp, a5, t4
                  sltu         a4, s8, sp
                  sltu         a3, t4, s9
                  slti         a6, t1, 347
942:              srai         a2, a3, 5
                  srl          s10, t1, s9
                  srl          sp, t6, t1
                  bne          s7, sp, 963f
                  or           tp, s10, ra
                  slli         t1, a4, 4
948:              slti         a2, s5, 1577
949:              sll          s7, a6, ra
                  lui          zero, 1028644
951:              sll          t4, s3, s0
                  blt          s3, t4, 969f
                  ori          a4, t3, -1355
                  auipc        s9, 616844
                  nop
                  nop
                  srai         gp, s7, 1
                  addi         t6, ra, -1357
                  srl          s7, t2, a7
                  slli         s4, a0, 28
                  bne          a0, a0, 980f
                  or           sp, a6, s0
963:              srl          a4, t2, a1
                  srli         tp, ra, 25
                  xor          s0, zero, s0
                  bltu         t1, a1, 985f
                  and          s8, s9, s6
                  srli         t1, s8, 3
969:              or           t4, t3, s7
                  nop
                  xori         s0, s5, 205
                  srl          s1, t4, s2
                  bge          s3, sp, 988f
                  and          t5, sp, a3
                  or           a4, s6, s11
                  xori         s7, t1, -1640
                  sub          s3, s2, a3
                  bgeu         s9, s4, 992f
                  sra          tp, tp, s1
980:              nop
                  sltiu        t6, sp, 1350
                  bgeu         a6, s6, 998f
                  bgeu         s3, s6, 996f
                  addi         s6, a3, -1251
985:              srl          s1, tp, s7
                  srl          a7, t1, s10
                  auipc        s5, 936088
988:              bge          t5, a5, 1000f
                  sltiu        s10, s0, 1269
                  nop
                  lui          s0, 464613
992:              xori         t4, a5, -1675
                  sltiu        tp, s1, -1804
                  xor          s5, a1, t4
                  srl          a7, a2, s11
996:              bltu         s3, t5, 1000f
                  or           tp, t2, a4
998:              beq          a4, a1, 999f
999:              sll          s11, a7, t1
1000:             nop
                  blt          s7, s1, 1020f
                  xori         t3, t2, -224
                  sra          a7, a6, sp
                  srli         a2, s7, 1
                  bge          s2, a3, 1015f
                  nop
                  bne          a5, s1, 1023f
                  xor          s3, sp, s2
                  blt          t4, a5, 1012f
                  nop
                  lui          sp, 320765
1012:             andi         s6, t4, 395
                  slli         t4, a5, 22
                  xori         tp, t6, 1590
1015:             slt          a3, a1, t2
                  andi         t6, s5, 1549
                  slli         t6, gp, 29
                  xori         a3, s9, -716
                  srai         s6, a2, 26
1020:             bltu         a3, t5, 1024f
                  sltu         a4, gp, gp
                  sra          a0, a3, s3
1023:             sub          tp, s8, t4
1024:             nop
                  and          a6, tp, s4
                  sub          sp, t0, ra
                  srai         s8, zero, 14
                  slt          a6, a4, a0
                  srl          tp, s6, a3
                  xor          t1, a0, a7
                  and          a2, a7, t3
                  and          s4, t4, t1
                  xor          s7, a7, a7
                  srl          a3, t0, s1
                  srl          s8, s9, t2
                  lui          a5, 454713
                  xor          a2, a5, t5
                  lui          t4, 437059
                  bge          s7, s11, 1047f
                  slli         a5, a1, 23
                  bltu         a6, t0, 1061f
                  ori          a0, s10, -510
                  bge          s10, s2, 1052f
                  srl          a5, a1, s8
                  auipc        a5, 285158
                  lui          gp, 797061
1047:             auipc        a0, 538305
                  xor          s9, s8, a2
                  addi         s5, a7, 1132
                  sltiu        a7, a6, -1701
                  sra          a3, tp, a3
1052:             blt          s8, s6, 1056f
                  auipc        s10, 644515
                  sra          sp, s5, t5
                  blt          t1, s8, 1067f
1056:             bgeu         a3, s0, 1072f
                  blt          s6, s7, 1061f
                  sll          s0, ra, s0
                  sltiu        s0, s3, 1444
                  add          s0, gp, s6
1061:             sll          s1, a3, t3
                  ori          s11, a2, 1768
                  nop
                  slt          s1, t0, s3
                  nop
                  srai         t6, a4, 20
1067:             sra          s4, t5, tp
                  auipc        a6, 772268
                  slt          t3, s11, zero
                  auipc        s3, 617191
                  lui          a5, 359378
1072:             slti         t6, s11, -1224
                  sra          s5, s10, tp
                  sltu         s6, zero, s0
                  slt          s9, t1, a5
                  bge          s5, zero, 1080f
                  xor          s5, s11, t3
                  srai         a5, s4, 3
                  slli         a4, t4, 8
1080:             xor          a4, s7, s8
                  blt          a6, t6, 1100f
                  addi         a2, a0, 547
                  sll          s11, tp, t5
                  addi         s11, t2, 1470
                  ori          s0, s3, -1038
                  slti         s5, zero, 1835
                  bne          a2, a6, 1101f
                  sltu         sp, ra, t0
                  sra          s8, s7, s11
                  nop
                  addi         t4, s10, -1013
                  sll          t4, t0, s3
                  sltu         s10, s1, s10
                  or           s4, sp, t4
                  slti         ra, t3, -308
                  and          s11, s7, s8
                  ori          s1, s2, 1564
                  or           s9, s11, zero
                  addi         ra, zero, 335
1100:             xori         s6, a4, 1062
1101:             xor          tp, s10, t5
                  add          t2, s2, s9
                  sub          s3, a4, t2
                  slli         s9, a7, 28
                  bne          s6, s4, 1125f
                  srli         s11, sp, 23
                  add          s5, s3, t5
                  srl          t4, a3, s1
                  bne          sp, t3, 1110f
1110:             lui          t4, 723757
                  auipc        s4, 783900
                  bne          s5, s10, 1115f
                  slti         sp, zero, -417
                  srl          s5, s9, t6
1115:             xor          a3, t5, a6
                  slti         t2, s0, 1444
                  andi         s5, a2, -628
                  xor          a5, a3, ra
                  bne          a7, t4, 1129f
                  add          s6, a1, t2
                  or           t2, s0, zero
                  bge          t0, a5, 1134f
                  auipc        s3, 231608
                  lui          t4, 906584
1125:             slli         s3, t0, 9
                  sltiu        s1, t3, 29
                  blt          s4, zero, 1137f
                  sltu         s10, tp, t4
1129:             bgeu         s7, ra, 1132f
                  xori         a4, s1, -2003
                  slti         s3, gp, 966
1132:             xor          a7, ra, a2
                  sub          zero, gp, s9
1134:             blt          t2, a7, 1147f
                  srli         a5, s9, 26
                  sra          s0, s11, s3
1137:             lui          t2, 354883
                  nop
                  lui          a0, 499341
                  slti         s0, s8, -506
                  blt          s1, t2, 1157f
                  sltiu        t2, t4, 1629
                  or           t2, s10, zero
                  add          s3, t3, s5
                  bne          a6, s9, 1160f
                  bne          t4, t1, 1163f
1147:             add          zero, s0, s0
                  bge          t5, a6, 1167f
                  srai         s0, s5, 29
                  bgeu         s1, s8, 1169f
                  and          s3, s1, ra
                  bltu         s10, s2, 1171f
                  srli         s7, s7, 17
                  nop
                  blt          t0, s1, 1170f
                  sra          t4, s9, ra
1157:             srli         gp, a5, 8
                  sub          sp, a3, t6
                  auipc        a0, 870313
1160:             srai         a3, a5, 8
                  sltu         a3, a1, t5
                  sltu         a6, t4, a6
1163:             sll          t2, t6, t5
                  bgeu         a6, t2, 1170f
                  lui          sp, 547044
                  srai         t2, t0, 7
1167:             bne          sp, a6, 1182f
                  xor          t2, s4, t4
1169:             srl          t2, s8, t4
1170:             ori          t1, t2, -1204
1171:             ori          s4, s5, 1285
                  srl          sp, t4, sp
                  slti         s9, a2, 710
                  lui          a0, 137213
                  srai         s9, tp, 8
                  slli         a2, t0, 15
                  add          t1, zero, a1
                  add          zero, a3, t4
                  auipc        s6, 714327
                  or           a6, sp, a3
                  sll          s5, s10, ra
1182:             srl          s6, s8, s6
                  slti         gp, s11, 816
                  andi         a5, t6, -821
                  xori         t5, a3, -29
                  auipc        s0, 526784
                  xori         a4, s3, -650
                  sltu         tp, a5, a5
                  ori          sp, a6, -167
                  or           s3, t4, t2
                  and          s7, t0, s4
                  xori         a2, a7, -482
                  add          s11, t4, tp
                  srl          s3, tp, a0
                  slli         a0, t3, 30
                  slt          s8, a0, a2
                  srai         s6, t4, 23
                  srai         s10, s11, 0
                  blt          s11, a5, 1214f
                  and          s3, s4, s6
                  nop
                  bgeu         s9, t6, 1222f
                  sltiu        a0, s4, 1723
                  lui          a4, 55825
                  auipc        s3, 951273
                  slli         s11, s6, 5
                  beq          t5, zero, 1216f
                  blt          s7, a3, 1216f
                  slli         a4, s6, 31
                  andi         t6, s0, 65
                  addi         a5, t4, 283
                  sltiu        s3, a2, -1367
                  andi         t1, t2, -1279
1214:             auipc        s4, 602416
                  sub          s3, ra, s4
1216:             nop
                  sltu         a0, s7, t1
                  beq          zero, a5, 1236f
                  andi         a3, a4, -691
                  slti         s5, a2, 559
                  sub          s3, tp, a2
1222:             lui          s0, 491946
                  bgeu         a1, s6, 1235f
                  srai         a0, t5, 8
                  beq          gp, a6, 1237f
                  blt          tp, s3, 1238f
                  beq          t6, s2, 1246f
                  sltiu        s0, t3, -266
                  bgeu         s0, a0, 1245f
                  auipc        t1, 289281
                  bne          s5, s4, 1250f
                  andi         s0, a2, -503
                  slt          a0, a2, a5
                  srl          t1, zero, s9
1235:             sra          a7, a5, tp
1236:             lui          gp, 602185
1237:             or           s11, s3, s5
1238:             slt          a6, a6, a7
                  xor          ra, gp, zero
                  bltu         s9, a0, 1255f
                  bltu         s10, tp, 1255f
                  bne          t0, a0, 1261f
                  andi         s7, s5, 1330
                  or           zero, a6, s8
1245:             auipc        s11, 149868
1246:             bgeu         s0, t6, 1262f
                  sub          s0, a7, s10
                  slli         a6, s4, 9
                  auipc        t5, 626163
1250:             auipc        s8, 298087
                  nop
                  xor          a3, s7, t1
                  andi         a7, t0, -1465
                  srli         s4, ra, 21
1255:             auipc        t5, 616200
                  bgeu         s4, s5, 1265f
                  bne          t3, t4, 1261f
                  addi         t4, s11, 1935
                  and          t5, s8, s0
                  bltu         a4, a7, 1280f
                  la           t2, region_0+355 #start riscv_load_store_rand_instr_stream_6
                  srl          a0, zero, s10
                  sra          t4, a7, t2
                  srl          t1, s10, a3
                  sb           a7, -8(t2)
                  sltiu        s5, a0, -1629
                  sltiu        a0, t2, 1316
                  lui          t3, 122095
                  sh           t1, 23(t2)
                  sra          t4, s8, s2
                  lb           s7, 59(t2)
                  lb           a2, -55(t2)
                  lw           s0, 21(t2)
                  lbu          s6, 17(t2)
                  slti         t1, s6, 890
                  lhu          tp, 63(t2)
                  sb           a4, 45(t2)
                  sub          s3, s11, a3
                  lb           s11, -46(t2)
                  sh           t2, 39(t2)
                  and          t5, s11, a5
                  sb           s11, 10(t2)
                  sll          t3, s3, s9
                  sb           sp, 4(t2)
                  sw           s6, -11(t2)
                  lh           s9, -49(t2)
                  slti         t1, t5, 887
                  ori          s1, t6, 1077
                  lb           s3, -4(t2)
                  lb           t3, 50(t2)
                  lbu          s5, -62(t2)
                  lbu          s9, 38(t2)
                  sw           s8, -15(t2)
                  sb           t2, 8(t2) #end riscv_load_store_rand_instr_stream_6
1261:             bne          tp, t0, 1278f
1262:             andi         t3, t5, 668
                  lui          s11, 318669
                  ori          t6, sp, -377
1265:             bltu         s2, s6, 1266f
1266:             slli         a5, a7, 15
                  sltu         a3, s1, s3
                  bltu         sp, a2, 1283f
                  nop
                  bltu         s0, a4, 1289f
                  sll          t1, s2, a3
                  srl          s6, s9, a1
                  xori         t4, t6, 996
                  bge          gp, a6, 1286f
                  sltu         a2, s5, t3
                  bgeu         t0, t6, 1296f
                  and          s8, t3, sp
1278:             srai         tp, s3, 23
                  srai         s6, a6, 14
1280:             sltiu        t5, s2, -334
                  bltu         a6, a3, 1294f
                  xori         sp, zero, -842
1283:             slti         s7, s1, -639
                  srai         a6, s4, 7
                  sll          s9, t5, s4
1286:             sll          s11, s11, s4
                  srli         t4, s5, 26
                  and          s4, t5, a6
1289:             srl          s11, a6, t6
                  slt          a3, a2, a7
                  andi         a5, s3, 480
                  srai         t4, sp, 28
                  bltu         a5, zero, 1296f
1294:             srai         s0, s8, 10
                  add          tp, t6, ra
1296:             slti         t1, t1, -1915
                  sub          t4, sp, s7
                  srli         ra, s8, 5
                  sub          a6, t1, t3
                  srli         s6, a2, 10
                  sub          ra, a4, s1
                  auipc        tp, 743402
                  and          s11, gp, s9
                  slt          a0, ra, a6
                  addi         ra, t4, -580
                  srl          a3, t0, a6
                  bltu         zero, s11, 1310f
                  bltu         sp, a3, 1312f
                  blt          s7, s0, 1315f
1310:             srl          t1, s2, s6
                  nop
1312:             auipc        tp, 734454
                  xor          s11, s5, s3
                  andi         a6, s8, -509
1315:             bgeu         a5, t3, 1330f
                  bne          s3, tp, 1324f
                  slti         a7, sp, -77
                  blt          a6, s4, 1328f
                  and          s7, s6, t3
                  xor          gp, tp, a2
                  sltiu        s5, gp, -389
                  xori         a0, sp, -1032
                  and          t3, t1, a7
1324:             andi         s5, a7, -1410
                  auipc        zero, 590232
                  ori          a0, t6, -1170
                  addi         tp, s0, 1629
1328:             sltu         a2, s4, a5
                  srl          s1, t6, a7
1330:             and          s3, s9, s1
                  and          s8, a2, s6
                  and          a7, s10, a5
                  sra          a3, a2, t3
                  nop
                  xor          s0, t6, sp
                  bge          a0, s0, 1340f
                  sra          t1, s8, a7
                  sll          a3, t1, t1
                  add          s1, t1, t4
1340:             add          a0, a5, t0
                  sll          tp, a0, s2
                  andi         s6, gp, 1138
                  sltiu        a5, t4, 731
                  bgeu         t2, s6, 1362f
                  sub          s3, s7, s6
                  bgeu         s4, zero, 1361f
                  sub          t4, a6, t4
                  auipc        a7, 1006507
                  auipc        ra, 320108
                  add          t2, s5, a2
                  sra          tp, gp, s4
                  addi         t2, s6, 397
                  bge          s7, a2, 1363f
                  lui          s3, 555681
                  slt          s0, ra, ra
                  xor          zero, t3, t0
                  sub          s4, t0, s2
                  srai         s5, a4, 24
                  srl          t1, s8, a7
                  sra          t3, s5, a6
1361:             xori         s5, s5, 1155
1362:             andi         s5, tp, -127
1363:             lui          sp, 362933
                  xori         s8, s8, -1823
                  beq          t1, gp, 1379f
                  slli         s10, a0, 23
                  sltiu        tp, ra, -1951
                  auipc        a6, 954430
                  ori          a5, gp, -612
                  xori         t2, s0, 807
                  sub          s6, s2, a1
                  addi         s0, a1, -1462
                  sltu         s8, t3, t1
                  sll          t4, t5, t5
                  ori          sp, s8, 176
                  bltu         t4, sp, 1392f
                  auipc        a3, 1033400
                  bge          sp, s1, 1393f
1379:             sltu         a7, s5, s1
                  xori         a2, a1, 10
                  bgeu         t0, t0, 1389f
                  bltu         t0, s6, 1401f
                  xor          ra, s6, s7
                  xor          t6, a4, gp
                  and          t5, a5, s8
                  andi         s0, tp, -273
                  auipc        s9, 958253
                  blt          a3, a7, 1404f
1389:             bne          t5, s1, 1408f
                  slli         a7, s0, 5
                  bltu         a4, t5, 1403f
1392:             srli         s10, t1, 24
1393:             add          sp, s5, s0
                  bltu         t6, s3, 1404f
                  addi         s8, a4, -1892
                  lui          t6, 80025
                  beq          a4, t4, 1416f
                  sltiu        ra, sp, -702
                  blt          a7, ra, 1403f
                  sltiu        t1, s1, -1895
1401:             or           zero, s1, a5
                  sll          t4, a6, sp
1403:             blt          s1, a7, 1412f
1404:             slli         s6, s2, 19
                  beq          s9, tp, 1408f
                  slt          s7, a0, s11
                  addi         a7, a5, 339
1408:             bltu         gp, tp, 1428f
                  slt          s5, t3, t5
                  bltu         tp, tp, 1423f
                  xor          s4, t4, a4
1412:             slt          a2, ra, t1
                  or           sp, s5, t4
                  addi         ra, a1, -1730
                  auipc        a4, 354128
1416:             xori         a0, s2, 389
                  add          s5, s10, sp
                  auipc        s10, 197740
                  slti         t3, s4, 390
                  srli         s10, s2, 29
                  nop
                  sltiu        gp, a4, -1220
1423:             and          t4, s8, a5
                  srl          gp, t3, a3
                  and          s1, s11, s10
                  srl          s11, t5, s6
                  xori         t1, a1, 297
1428:             slli         zero, s5, 30
                  lui          ra, 676784
                  or           gp, s7, s2
                  slti         t1, a6, 156
                  xor          s8, t2, t1
                  bne          tp, s1, 1451f
                  addi         s0, a7, 248
                  nop
                  beq          t1, t2, 1446f
                  beq          s0, sp, 1449f
                  bne          t5, s8, 1450f
                  xor          s5, t2, a4
                  slti         tp, gp, 9
                  xori         t3, a7, -1892
                  slli         s9, a0, 6
                  slt          zero, s4, a4
                  sub          a4, t2, sp
                  add          t3, a4, s8
1446:             bltu         s8, s7, 1461f
                  srli         tp, a7, 9
                  addi         a0, s10, 630
1449:             blt          a6, a5, 1469f
1450:             beq          s2, t0, 1454f
1451:             ori          ra, a2, 343
                  bge          a6, a2, 1467f
                  addi         gp, s0, -327
1454:             xori         a7, a3, -1403
                  xori         s11, tp, 1780
                  or           s3, t2, a6
                  bgeu         s3, gp, 1463f
                  sltiu        ra, a6, 129
                  bge          s5, s6, 1462f
                  andi         s6, s7, -379
1461:             sltu         s7, s8, sp
1462:             srli         s9, s1, 4
1463:             srl          a5, s2, s0
                  blt          s8, s9, 1465f
1465:             srli         a4, t5, 7
                  ori          s9, s1, -1861
1467:             add          s7, s1, a6
                  bne          a5, s3, 1483f
1469:             blt          s11, s5, 1486f
                  slli         a2, s6, 18
                  blt          t2, s2, 1490f
                  srli         s11, s6, 2
                  sltu         tp, s7, a6
                  addi         tp, t2, -1341
                  sltu         s6, ra, a3
                  bge          s7, s1, 1480f
                  andi         gp, s8, -1339
                  slli         t5, s11, 9
                  slli         s8, a5, 29
1480:             bge          a4, sp, 1492f
                  srai         s0, s5, 27
                  slti         t2, s8, 1881
1483:             auipc        t6, 392716
                  lui          s11, 243573
                  blt          zero, s10, 1499f
1486:             sltiu        s4, t0, -256
                  sub          t3, sp, s6
                  ori          a7, t2, 115
                  ori          s6, gp, -1164
1490:             or           a7, a1, t4
                  slli         t1, s5, 2
1492:             bgeu         s3, s6, 1504f
                  xori         s6, t1, 1141
                  srli         gp, a5, 18
                  sub          gp, t3, a3
                  bne          s1, s5, 1509f
                  srl          t5, s10, s6
                  auipc        t4, 529360
1499:             sra          a2, s1, t5
                  blt          t1, t0, 1520f
                  bne          s9, t3, 1505f
                  add          t2, t3, ra
                  bltu         t2, t2, 1521f
1504:             lui          sp, 480445
1505:             and          s9, gp, t6
                  sltiu        s0, s0, -1011
                  slti         a5, s2, -857
                  auipc        s0, 988363
1509:             sra          t2, s10, a6
                  lui          s7, 394689
                  auipc        t1, 399089
                  slli         gp, s11, 13
                  beq          t4, a2, 1529f
                  nop
                  andi         s8, t0, -273
                  andi         t1, tp, 1561
                  srl          t5, s4, a2
                  and          s5, s10, s6
                  sra          t5, s6, a5
1520:             slli         gp, a6, 2
1521:             xor          s1, t5, t0
                  slt          s11, t3, s1
                  blt          ra, a2, 1533f
                  xori         s6, a5, -852
                  sub          a0, s6, zero
                  slli         a6, a7, 12
                  bltu         sp, s0, 1539f
                  sltu         s11, a6, s7
1529:             sub          t6, s9, a6
                  slti         s1, s10, -1978
                  sll          sp, a1, t5
                  auipc        s11, 11135
1533:             add          s6, tp, s2
                  bltu         s3, t5, 1549f
                  nop
                  or           a5, t0, a2
                  bgeu         tp, t0, 1552f
                  addi         a4, sp, 4
1539:             blt          s4, zero, 1543f
                  bne          s1, a5, 1548f
                  ori          t6, s5, -651
                  or           t4, a0, ra
1543:             slli         a0, s7, 3
                  slt          t2, t5, s10
                  addi         gp, s8, 713
                  srai         tp, a5, 19
                  bne          s1, s2, 1556f
1548:             nop
1549:             and          a5, t4, t4
                  slt          s1, t5, s2
                  auipc        s5, 782198
1552:             and          t4, t1, s6
                  sltiu        a7, s9, 501
                  and          a7, s8, zero
                  bge          zero, s1, 1558f
1556:             and          a0, t2, a2
                  blt          s2, tp, 1572f
1558:             xor          a2, s4, a1
                  srai         t3, s5, 9
                  bne          s10, a2, 1579f
                  sltu         gp, t3, t4
                  and          s5, s11, t2
                  slt          t2, a4, t5
                  add          a3, s6, s8
                  sltiu        s4, s9, -2033
                  andi         s5, t3, -1374
                  xor          t4, t5, s6
                  slt          s1, s7, gp
                  or           s1, s10, a2
                  xor          s4, zero, a3
                  sltu         s5, a1, a7
1572:             beq          gp, s11, 1576f
                  sub          s0, t0, gp
                  addi         s0, a7, -627
                  srai         s1, s6, 23
1576:             xori         gp, a4, 1056
                  slti         t6, tp, -524
                  blt          tp, gp, 1598f
1579:             sltiu        s8, gp, -597
                  addi         tp, t3, -231
                  sub          zero, t2, zero
                  bgeu         s9, t3, 1598f
                  srai         a0, t1, 26
                  sub          tp, s5, t3
                  sltiu        a5, t5, 754
                  sltu         s0, ra, s10
                  blt          s5, a4, 1593f
                  srli         sp, t6, 20
                  bgeu         a4, gp, 1599f
                  sra          s8, s2, s4
                  beq          t0, a1, 1606f
                  srai         a0, s4, 24
1593:             xori         s11, zero, 16
                  nop
                  slt          t3, sp, s9
                  nop
                  sra          a6, s0, sp
1598:             sub          t3, a2, tp
1599:             sra          ra, s2, t4
                  slli         a4, t0, 17
                  lui          s8, 945247
                  bge          s6, a1, 1621f
                  ori          t2, s9, -1508
                  bltu         t2, sp, 1623f
                  lui          t2, 900729
1606:             lui          a6, 843153
                  beq          t4, s3, 1608f
1608:             bltu         a4, s4, 1611f
                  xori         a3, s4, -7
                  andi         s9, t3, 770
1611:             sll          s7, s11, t6
                  andi         s4, a3, -1005
                  lui          a5, 178822
                  nop
                  slt          t4, t3, t5
                  bne          s4, t5, 1635f
                  slli         gp, tp, 16
                  srli         s7, s8, 19
                  sll          s9, tp, s5
                  sltiu        t3, s2, 194
1621:             beq          s10, sp, 1638f
                  lui          gp, 1004281
1623:             or           s10, a4, s11
                  or           a7, s5, s6
                  srai         t5, tp, 7
                  srai         s3, s3, 6
                  sra          a5, a7, sp
                  bne          s1, ra, 1632f
                  and          s10, t0, gp
                  ori          t3, s4, 410
                  srli         s4, s9, 28
1632:             sll          s0, sp, gp
                  auipc        gp, 388319
                  bge          a7, t5, 1642f
1635:             srai         a3, tp, 20
                  bge          s2, a3, 1646f
                  nop
1638:             and          s8, a1, s6
                  ori          s1, s6, 179
                  lui          s10, 92572
                  and          a5, a4, a0
1642:             ori          s3, zero, 518
                  ori          t3, s3, 608
                  slti         t1, t5, -54
                  lui          a5, 951590
1646:             srai         s11, a5, 15
                  ori          tp, s1, -495
                  lui          t5, 933627
                  and          t4, gp, s6
                  slti         t3, a0, 1906
                  bgeu         s10, a1, 1671f
                  beq          s7, s8, 1672f
                  sra          t4, s8, a4
                  ori          a2, s0, 1387
                  srai         a3, t5, 27
                  bne          t4, s3, 1660f
                  bge          gp, s6, 1676f
                  add          s4, s2, s7
                  slti         sp, s11, 1404
1660:             or           s6, gp, zero
                  slti         t1, sp, 569
                  bge          tp, t5, 1674f
                  xori         s1, a3, -700
                  bltu         t4, a7, 1665f
1665:             beq          tp, s8, 1684f
                  blt          s10, s9, 1670f
                  bgeu         s1, s5, 1679f
                  slt          a6, t3, s0
                  auipc        zero, 969793
1670:             addi         s10, tp, 1129
1671:             xori         a4, s11, -845
1672:             sll          a6, t1, t3
                  srl          s4, a4, s10
1674:             sub          t1, t6, a3
                  ori          s6, t6, -1232
1676:             add          t5, sp, s2
                  and          a6, a0, s5
                  bltu         a2, s11, 1693f
1679:             and          sp, t0, t6
                  addi         t1, t5, -992
                  sltu         ra, a4, a2
                  add          s10, s10, s0
                  lui          t3, 176235
1684:             auipc        s0, 461238
                  xori         zero, t4, -888
                  lui          t4, 259373
                  beq          s10, s11, 1703f
                  andi         ra, s10, -1519
                  slti         s9, a5, 478
                  srl          s5, sp, t1
                  bge          s6, s4, 1706f
                  bltu         a3, s7, 1709f
1693:             sll          a6, sp, s0
                  slt          s5, a2, t4
                  andi         s3, a5, -18
                  xori         s10, t4, -358
                  blt          a2, a0, 1715f
                  sll          s7, s10, a7
                  andi         sp, a1, -1587
                  beq          t1, a3, 1709f
                  bgeu         s3, s4, 1717f
                  and          a7, s5, a4
1703:             sltiu        sp, s8, 451
                  sub          s7, t3, t2
                  blt          s7, t2, 1708f
1706:             sra          a0, tp, s1
                  slti         s11, t4, 554
1708:             auipc        gp, 800702
1709:             bge          s2, a6, 1724f
                  addi         s3, t5, 1768
                  sltiu        t1, s10, 1149
                  srli         s7, s3, 2
                  sub          t3, gp, s6
                  slti         a2, t2, 967
1715:             blt          a5, sp, 1730f
                  slt          s1, a7, a3
1717:             sltu         a5, s9, s0
                  nop
                  sub          a7, gp, t5
                  and          s1, a7, s11
                  srl          s0, a0, a7
                  beq          s4, sp, 1725f
                  or           s5, a4, a7
1724:             andi         gp, t3, -807
1725:             sltu         t1, a5, t3
                  slli         s10, t5, 19
                  or           s3, a5, tp
                  xori         t3, tp, -2003
                  blt          s1, t3, 1748f
1730:             blt          s8, s8, 1743f
                  auipc        tp, 303043
                  ori          sp, s3, 1705
                  sltiu        t5, s8, 717
                  lui          s4, 524027
                  auipc        t5, 374833
                  lui          s6, 307109
                  slli         s5, s7, 28
                  sra          tp, t3, t2
                  srli         s6, a1, 12
                  and          t4, t0, s1
                  srl          s9, a1, t2
                  andi         a7, s9, 1795
1743:             auipc        a5, 815649
                  sltu         zero, s6, a3
                  or           s7, t3, t5
                  or           s0, ra, s1
                  sltu         s1, t1, t3
1748:             xor          a3, tp, a5
                  lw           s0, 4(s2)
                  addi         s2, s2, 48
                  lui          t2, 969711
                  ori          a6, s8, -174
                  sll          a7, s3, s0
                  or           ra, ra, ra
2304:             addi x23, x8, 0
2304:             jalr x23, x23, 0
sub_2:            srl          a6, s3, t3
                  addi         tp, s0, -955
                  andi         a2, s11, -424
                  lui          a6, 1035591
                  andi         a3, s1, -1644
                  bne          a5, gp, sub_2_stack_p
                  sltiu        s7, s9, 298
                  lui          a3, 670182
                  addi         s9, zero, -22
                  slti         a5, a0, -23
sub_2_stack_p:    addi         s2, s2, -28
                  sw           s0, 4(s2)
                  srai         s8, s7, 20
                  srli         a4, s11, 19
                  slti         t1, a2, 178
                  andi         s5, s0, -1341
                  lui          s3, 770733
                  sra          ra, a0, s4
                  la           gp, sub_4
                  addi         gp, gp, -955
                  srl          a0, zero, s1
                  bne          a2, t2, sub_2_j4 #branch to jump instr
                  lui          t2, 71476
sub_2_j4:         jalr         s0, gp, 955 #jump sub_2 -> sub_4
                  sltu         t6, sp, s11
                  la           s11, sub_3
                  add          s6, s0, a0
                  xori         t1, t3, 1726
                  addi         s11, s11, -777
                  slli         t2, s11, 9
                  sra          t1, s7, a0
                  sra          s6, a0, t3
                  addi         a4, a6, 389
sub_2_j5:         jalr         s0, s11, 778 #jump sub_2 -> sub_3
                  ori          t3, s0, 1381
                  or           s10, t5, zero
                  and          t1, a5, a7
                  la           s11, sub_4
                  slt          gp, a5, a6
                  addi         s11, s11, 469
                  sll          ra, a6, a3
                  bgeu         t6, t6, sub_2_j6 #branch to jump instr
                  sltu         s6, a4, s8
                  slti         s7, tp, 1287
sub_2_j6:         jalr         s0, s11, -468 #jump sub_2 -> sub_4
                  bltu         ra, sp, 8f
                  slt          s4, ra, tp
                  slti         tp, s5, 1870
                  andi         a6, s4, -213
                  nop
                  srai         s7, t2, 5
                  bge          s3, s8, 8f
                  auipc        s3, 112860
8:                and          sp, zero, a2
                  sltiu        a0, s11, 495
                  lw           s0, 4(s2)
                  slti         gp, s11, 1463
                  addi         s2, s2, 28
                  ori          s10, s2, 525
                  sltiu        a3, a1, 1300
                  andi         s6, t0, 458
                  slli         s1, s0, 5
                  sub          sp, s11, a2
                  sra          t3, tp, a6
64:               addi x29, x8, 1
64:               jalr x29, x29, 0
sub_7:            addi         s2, s2, -32
                  srli         t6, t0, 13
                  andi         sp, zero, -370
                  sw           s0, 4(s2)
                  ori          s1, ra, -1605
                  add          s8, t2, s6
                  lui          s7, 605132
                  srai         sp, s11, 6
                  andi         a7, s8, 1693
                  andi         s10, t6, -1322
                  sra          a4, zero, s2
                  sltu         s7, s3, s2
                  or           tp, t6, a2
                  or           a6, s11, s4
                  addi         a7, a5, 1498
                  sltiu        s6, s0, 436
                  nop
                  and          t3, s7, zero
                  xor          s9, t2, sp
                  bltu         sp, a5, 33f
                  or           s0, s10, s10
                  sll          a2, t6, t2
                  ori          a0, a1, -1363
                  sltu         s4, sp, s2
                  bge          a2, zero, 38f
                  auipc        a5, 627254
                  andi         zero, sp, -1689
                  or           s3, s5, s3
                  srl          a7, t6, s8
                  nop
                  addi         s9, t4, 641
                  sra          s8, t6, s1
                  add          a4, a1, t3
                  lui          a6, 532961
                  slti         s7, a0, 531
                  xor          t3, s9, s0
                  or           t5, t6, t3
                  slti         sp, a5, 702
33:               slt          a3, s2, tp
                  and          zero, t0, t4
                  beq          s7, t0, 44f
                  xor          a7, a5, s9
                  bgeu         zero, a4, 39f
38:               or           t3, s8, s10
39:               andi         s8, ra, 1743
                  bne          s9, t4, 51f
                  sltu         s3, sp, t1
                  auipc        s3, 43366
                  srli         s10, a2, 4
44:               xor          t2, s11, a5
                  bgeu         a6, gp, 65f
                  add          a3, a7, t4
                  sub          s9, s5, sp
                  lui          a6, 306377
                  ori          a2, a2, 897
                  bge          s6, t0, 59f
51:               sra          a7, s9, s11
                  sll          t1, t0, t0
                  slti         gp, a2, 402
                  sll          s8, t0, t6
                  auipc        s3, 580274
                  sll          t3, s6, a0
                  sll          a4, s11, s4
                  auipc        s6, 275840
59:               slt          ra, a7, tp
                  srl          a7, s8, t0
                  lui          gp, 988494
                  andi         a3, s11, 819
                  slt          s9, s10, a7
                  bge          s0, t0, 69f
65:               and          a2, t3, s1
                  or           s11, a3, gp
                  bge          s4, s11, 70f
                  add          s0, t2, gp
69:               sub          s6, a2, s6
70:               sll          t1, s0, s5
                  bgeu         gp, t6, 83f
                  auipc        a2, 504035
                  andi         t6, a3, -1897
                  srl          s0, a6, s3
                  nop
                  and          a0, a1, t2
                  srai         sp, ra, 31
                  blt          s2, s4, 91f
                  bltu         s4, tp, 83f
                  bne          zero, tp, 90f
                  srli         s9, s1, 14
                  sra          a4, t0, s11
83:               nop
                  auipc        a4, 71892
                  blt          a0, t4, 95f
                  sub          s6, s10, t5
                  sra          s5, tp, s9
                  beq          s5, s6, 95f
                  srli         s4, zero, 13
90:               lui          t3, 314974
91:               ori          a2, a4, -1356
                  and          s3, s6, t4
                  slli         a7, ra, 14
                  xori         s3, t5, 1759
95:               sra          gp, s9, a0
                  lw           s0, 4(s2)
                  addi         s2, s2, 32
                  xor          zero, t0, t6
                  add          t3, s9, a5
                  srai         t3, s7, 24
                  or           s7, s1, gp
107:              addi x1, x8, 0
107:              jalr x1, x1, 0
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
.word 0x28e32c5d, 0xb9cba0c7, 0xa82b7f40, 0x89514103, 0x91b29ba8, 0x98918112, 0x6cb89cf3, 0x0fc57d29
.word 0xedd2c5d0, 0xb02d43ee, 0x575a48cc, 0x020e411c, 0xcae744e3, 0xadb10693, 0x6b799457, 0x648b8991
.word 0xcd44da7b, 0x502947f3, 0xc27838a6, 0xe95385b1, 0x712994ef, 0xcee562d6, 0x65eb76b8, 0x8260ecbb
.word 0x01227622, 0x9354da6c, 0xe9f71283, 0xedfd2c2d, 0x22cd92ed, 0x7e409855, 0xa27abadb, 0xdbe9db46
.word 0x0033442f, 0x7747b9cd, 0xf1ae076a, 0xa8a47b5d, 0x9c322cc1, 0xae25880c, 0x82d1a761, 0xb0f5df81
.word 0xff3daa27, 0xc1f137dd, 0x2e537447, 0x64cf0ae0, 0xcad1e827, 0x8fd18165, 0xb979c36c, 0x75390e7a
.word 0xf80b0e65, 0x122e2137, 0x6746539f, 0xd7b96453, 0xae6c9dd4, 0x2d3041a2, 0xf859bc07, 0x5e95d6eb
.word 0x7558a4bf, 0x8f4558ea, 0xd6879ef9, 0x187a54bb, 0x5d031397, 0x7fc5ce36, 0x0ab055ec, 0x08fb78b2
.word 0x54e11387, 0xa67a6a05, 0xb4ac4651, 0x3f6e1305, 0x9ba7a41e, 0x5f5933d7, 0x8738fb99, 0x23f43824
.word 0x7e6936f7, 0x970349af, 0x03cd8d32, 0x004fc7e9, 0x0e64a92e, 0xa6b96131, 0x731573fd, 0xe26e56ad
.word 0xf719d4a1, 0x2c50c41a, 0xf7bde605, 0x5cc8f4ea, 0x0f51a12a, 0xe9872f4f, 0x339ad7b6, 0x8e0cd12d
.word 0x8c71447e, 0x5dee7fe3, 0x9d3d2b39, 0xa851df43, 0x39ede0e3, 0xaec5daa6, 0x65073ee7, 0xdfcfeee9
.word 0x8d3713c8, 0x71a80164, 0x3d141e6b, 0xa54a3dbf, 0x10dc2075, 0x758e0785, 0x5e01fa91, 0x38f428d1
.word 0xe9904043, 0xf9cecb2e, 0x90e4aa58, 0x7eddd3d0, 0x92e08d06, 0x9eaa9f81, 0x86364b2e, 0x7a26078b
.word 0x8cd6c52d, 0x75889b63, 0x6a5f0486, 0x3a6e080f, 0xd60d5f62, 0x66a487b9, 0x53be5f81, 0x9dcfdb0e
.word 0xb932b985, 0x46484609, 0x7ff7a8e0, 0x231fc3e9, 0xc8dc1c43, 0x6a745bbf, 0x5ae85465, 0x479b0c2d
.word 0xe9004c64, 0x15473c86, 0xeddb2c33, 0x852430f4, 0x2979dfeb, 0x5be1fea7, 0x21cfb598, 0x36860e11
.word 0xd10cbf6e, 0x84085012, 0xbcc34c51, 0xc0574bcc, 0xd48544cb, 0x0d60a9c2, 0xcee8b2db, 0xe7b39a36
.word 0xc81458e1, 0xc5f3428c, 0x69ebd225, 0x20b72948, 0x799db305, 0xc0b0c102, 0x623ad44b, 0x6a8416f7
.word 0xc104bb99, 0x49f88c54, 0xb0d18ae9, 0xe62d75f2, 0x0b376139, 0x1f8714fe, 0xa5d53bdb, 0xeb10b2d0
.word 0x40ba04a0, 0x8b951988, 0xf06eae3f, 0xab657daf, 0xd7c0bb39, 0x8d7b11e9, 0xbb854153, 0x2395cb16
.word 0xfa2a9a59, 0x5ca47ae1, 0x638c8f9d, 0x5ab1e39d, 0xcd7c876c, 0xb080804b, 0x49f2cb9c, 0xd363af2d
.word 0x37f079b9, 0xe6f4ea3c, 0xfe2427e8, 0x27117b71, 0xd3f8e4cb, 0x36f78642, 0xb841e0e1, 0x2de11ea0
.word 0x7b441261, 0x4aacd3ae, 0xb75edd3c, 0xdce68096, 0x0d660497, 0x2424a4f0, 0xe434afcc, 0xf72ef281
.word 0x925e07e3, 0x91a1abcb, 0x24ba2610, 0xd5d2cd61, 0x938ef169, 0x50e50990, 0x0ddc105b, 0x2205e15c
.word 0xb65eaa7f, 0x87bb6d1a, 0x8a5dd16c, 0x9bf42afe, 0xd31ca5cc, 0xac92335d, 0xeff5624e, 0x69385e55
.word 0x7b8fa77d, 0x1e61a685, 0x6f3bf76c, 0xc61d8624, 0x3a111245, 0xf43130d2, 0xdf4bcc04, 0x0524b163
.word 0xf6f7a97a, 0x0e779d2e, 0x383d590e, 0x619c145d, 0x44bd2d68, 0xf04298c5, 0x8a474b83, 0x6488e5de
.word 0x462b1dde, 0x75d782a4, 0xad2f040e, 0xab65d287, 0xae008827, 0x2296ca69, 0x460ae216, 0xc8d03bfa
.word 0x956bd430, 0x663d1ae6, 0xcf4aad1e, 0xc6dca153, 0xd4495ab0, 0x516da985, 0xee6c59d0, 0x68b42c44
.word 0xd4cb2d16, 0x36e2927e, 0x378aeef9, 0xc97c31a1, 0x9b3ab89a, 0x5a691846, 0xf8e4ae01, 0xc356668d
.word 0x04364448, 0x204f8e36, 0x770a5d72, 0x8ff4a9ee, 0x4ff03d7c, 0xe7ee155c, 0x11ad593c, 0x938385c3
.word 0x1b7656a9, 0xc99ea52a, 0x1543e365, 0x23b58ce7, 0xc53e4fb3, 0x29024eba, 0x4948b763, 0x4940bea4
.word 0xea25518e, 0x8509fac0, 0x8b95f48b, 0xf6fbac51, 0xf6364fe0, 0xd26b9544, 0x9e9ded43, 0xc6dff51e
.word 0xc3bc2c80, 0x0e2b24dc, 0x85453efd, 0xe4611eed, 0x38fed8d8, 0x7e49adbf, 0xd7d56c30, 0x33eb7c9a
.word 0x00ac253a, 0x110b7775, 0xfbb48e77, 0x14897b5b, 0x9c3f71f7, 0x2b1339d3, 0x3ed456e1, 0x62636d0b
.word 0xba0a218e, 0xf6a541fa, 0x927ba822, 0x8a8f46b1, 0x04ca2b26, 0xdaf554c3, 0xbe549136, 0xfc9b5b36
.word 0xa540abaf, 0x42396574, 0xf5d23572, 0x2471916d, 0x323efbe4, 0x9be5cb4e, 0x91808ddc, 0x4ee230a7
.word 0x7b6059b2, 0x64e1eb84, 0xea7effc1, 0x2b20424d, 0xd121d231, 0xb4c295d4, 0x133d72cc, 0x40b8d5ba
.word 0x0b34e50b, 0x516c28cb, 0xd00cad9b, 0x4cf1a943, 0x6437dff4, 0x62f467ca, 0x4ba02330, 0x150003cd
.word 0xe28c8962, 0xc44f0ad4, 0xdcb32ef5, 0xc3c37869, 0x9718b7a0, 0xdc689685, 0x6e49d201, 0xd29b7bb2
.word 0x2f6d8461, 0x95589978, 0xf64a5196, 0x95927bfb, 0xc37bf2d0, 0x91e88c71, 0x95740c17, 0xf0c3d559
.word 0xb0e7a54a, 0x6490aae2, 0x0421e61c, 0x29abc750, 0x18e9960a, 0xec8c96aa, 0x114712a6, 0x78da1d12
.word 0x483a67d0, 0x8c03b393, 0xc54b08d1, 0x01788343, 0x8ed63af2, 0xd8afb28e, 0x65a3a819, 0xa76b8b4c
.word 0x78da0103, 0x4ff9f7e9, 0xc32d3783, 0x226710db, 0xfc9b1c6d, 0x9f2fa5db, 0xec3ab02d, 0xe4cfdbdc
.word 0x9c8abe67, 0x43711189, 0xad7715a6, 0xd2a2a582, 0x2d7bb515, 0x4741641e, 0xccc7a5da, 0x021e5403
.word 0x7aa84ada, 0x2d5765a1, 0x4b67db0a, 0x78e8904b, 0x059a257c, 0x88748089, 0x4e76646b, 0x2a1768f2
.word 0xbd243e94, 0x13b9c384, 0x211b253d, 0x478ef3b8, 0xfc64b81f, 0x6bb9c853, 0xaddf0f76, 0x5cd24dad
.word 0x61c45e6a, 0x5bb76ceb, 0x10eef3d3, 0x257837aa, 0xbc3dad46, 0xf5619507, 0xc1e443c7, 0x0162ae55
.word 0xd8777655, 0x465629ff, 0x2a70bb0c, 0x5cc6876e, 0x5ac3d329, 0x60088893, 0x1fc40943, 0x434b27ea
.word 0xca212dd3, 0x049d2ceb, 0x26482b89, 0xfa444280, 0x483c9b5e, 0x3c3f7133, 0x8032583b, 0x49005960
.word 0x638d644b, 0x19f9566c, 0x750591ec, 0x03424444, 0x09180de9, 0x63415476, 0x7bfd0761, 0xe3590d8c
.word 0x9874af24, 0xa941e91d, 0x9b799412, 0xc0fbba09, 0x671d0cd2, 0xb5d3481a, 0x944798e9, 0x9085ae60
.word 0x4ba1cf76, 0xedcf7d8f, 0xcea3f576, 0x7a157d82, 0x2d95f229, 0xb837be0a, 0x1f4a8ed4, 0xdaae6755
.word 0x1bdf08cf, 0x6982ac98, 0xf91e759b, 0xada9175b, 0x28934993, 0x867201fc, 0x309c05c9, 0x33e832b3
.word 0x6b46e04f, 0xaa51d36a, 0x99707ad5, 0xfdde5f14, 0xf4ed5cc5, 0x38317d60, 0xffa4cfe4, 0x8a2f51ef
.word 0x92b7b8dd, 0x26ae6059, 0x1a7666b5, 0xacb0c44e, 0x31cdd17b, 0x750d9452, 0x3c293b98, 0x4727bdc6
.word 0x38f74d18, 0x23cd7efb, 0x055818f6, 0xae091eac, 0x098610a5, 0xd9cf3306, 0x1c698782, 0x25bc9226
.word 0x6f3071a6, 0xe7e34974, 0x67f6dfcd, 0x590dbac7, 0x9ea5afcc, 0xd6d1eff6, 0x6f65befe, 0x12149eff
.word 0xb812625c, 0x288b00f9, 0x17837787, 0x64fb136c, 0xe18e7ca0, 0x386bd666, 0xacde4be0, 0x322fe432
.word 0x877bd72c, 0x39b61c80, 0x098e6867, 0x25249ec8, 0x0be7b134, 0xcbf78d52, 0x41d8d24b, 0x61c03c99
.word 0x9c53ccd1, 0x7dc70ec8, 0xbef19221, 0x58d08488, 0x6634e217, 0xaccd4f2f, 0x639da989, 0xaac1e6a7
.word 0x49618920, 0x853b9ee4, 0xdae63ab8, 0x704964ae
.section .region_1,"aw",@progbits;
region_1:
.word 0x9a7db19e, 0x53ee1761, 0xf067a7a3, 0xee83dffb, 0xc0bdb71a, 0xd45a957a, 0x695eec3c, 0x8735378c
.word 0x475ee08f, 0x0506b14a, 0x13e33bc1, 0x9a191d4e, 0x3ba4ecce, 0x19088fc4, 0x2a98f4a2, 0x445fc512
.word 0xcf038c99, 0x19188e99, 0x416240bd, 0xe2067fe2, 0xe33fd18c, 0xc0d6fe90, 0xf74e6a9b, 0x8f941dad
.word 0xde34c8d4, 0x1ac7e1d7, 0x04be1c4b, 0x1ce489f5, 0xb1a14946, 0x8e5533a3, 0x83cecdea, 0xd2678bd4
.word 0x85c60169, 0xec0e3182, 0xd36bcf7d, 0xf11807b2, 0xd5ced3d7, 0x5cec5287, 0x10187d91, 0xf6626b4c
.word 0xe3171e77, 0x76ffda35, 0x77cb656f, 0x86a7ea62, 0x9987fafb, 0x100ca4e0, 0x5f3cf7be, 0xd85fbe31
.word 0x4560de3a, 0xa0555ec3, 0xea01d6df, 0x67a10814, 0x43b7c111, 0xccbb63ca, 0xafe6d09f, 0x0e09a32a
.word 0x540d2633, 0xa80cac7e, 0xecae8d4a, 0xd4cf3770, 0x41b743d4, 0x7c3410d1, 0x11725955, 0x1c23b46f
.word 0x2fde008b, 0x0ec812f3, 0x04a78fa3, 0xda42293b, 0x8311cbda, 0xd2dd8e62, 0x10eb8ac2, 0x8b4e5313
.word 0xc65bbbd2, 0xeefbf14d, 0x9c3cd65b, 0x885c8baa, 0x05c10575, 0x32186cd8, 0xfd8e6bdb, 0x6b08bbae
.word 0xcf63784b, 0xc9fc0427, 0xabfcf92e, 0x6014733f, 0x40e7559e, 0x08ce61a4, 0x0b06f93f, 0xff2cbc90
.word 0x3a8af22f, 0x1856de2c, 0xbe678fcc, 0xad04f524, 0xb0dd6412, 0x6152dbae, 0xae8c4856, 0xd1e6ff6b
.word 0x750a8d1f, 0x89842304, 0xb8a62c8b, 0xeccdbf8d, 0xb3bc11ba, 0x5e4f434d, 0xb03ebca3, 0x0963fd9a
.word 0x8d939343, 0x732040a6, 0x167ec08d, 0x60142bd0, 0xe509af18, 0xd9278f7e, 0x81705f24, 0x25932ba1
.word 0xa0a98b57, 0x8ff2033d, 0x26cb02c2, 0x25e1f9d9, 0xf9c0007f, 0x0cc5760b, 0x50cf7b96, 0x241c47ca
.word 0x48dd180b, 0xf3a942c7, 0x857cabec, 0x44ccc1d5, 0x99ed9c60, 0x3e0b8dce, 0x349e32f3, 0x8c84c029
.word 0xcdf2df06, 0x7d44180f, 0x32c35b9c, 0x65cbdb0c, 0xab273eef, 0x8a250efa, 0x17c27f54, 0xe57960dd
.word 0x9c46392a, 0x0edcebb2, 0x2d72b7b5, 0x7e099cf9, 0x8f56395b, 0x8f656a3e, 0x74076fe5, 0x15ee745b
.word 0x568554f3, 0x0a2ff246, 0xdb8d58e8, 0x38e4fc68, 0xbcdd18a9, 0xe3360b53, 0x870e38d4, 0x683e03ef
.word 0x0d5f4dfa, 0xf6cb80a8, 0x8e08105b, 0x14db71b2, 0x0c885df7, 0xd7cb2387, 0x363f020c, 0x4ec35c88
.word 0x57a463a9, 0x4c5f327a, 0xfb21b654, 0x319d6592, 0x735cb026, 0x5de87da8, 0xe7d7e244, 0x2b2c2f21
.word 0x57e748b0, 0x274d80d1, 0xa2a002f8, 0x2fa75696, 0xe9f35d90, 0xdc6911b0, 0xd70feda1, 0x7758d67d
.word 0xbc8455a4, 0x5771cfa0, 0xe9a688fe, 0x0487092b, 0x97fe4c6a, 0xf6b1ca36, 0x6b12b940, 0x741b2942
.word 0xb441a3ec, 0x9f1fb256, 0x861e9f0c, 0xf37db25a, 0x926d3774, 0xc2be9fbd, 0xa67f9f41, 0xa8cbac70
.word 0x1579d6e5, 0x214934fb, 0x522276bc, 0x21595d3b, 0x4c275b67, 0x74edd564, 0xad4e5353, 0xd94e45f8
.word 0x808ffa28, 0xfa534621, 0x48cea023, 0xf1f5aa16, 0x8b563ca2, 0x89ed7143, 0xb820236a, 0x9fcdf87c
.word 0xed64b4cc, 0x153d40fc, 0x8723a095, 0x3df66ba8, 0x2cf0a52b, 0x6fd42c57, 0x21cbc175, 0xd40105ec
.word 0x0bfd233b, 0x5197a829, 0x003d322e, 0x8f85e5af, 0x20e8b368, 0x2a586899, 0x95d70e5c, 0x544b04c7
.word 0x36c22950, 0x71e98e30, 0xabdaf8c3, 0xa5688dd3, 0xd44d333c, 0xcf87c6b3, 0x195819c9, 0xea0fdf3e
.word 0x9cf29818, 0x28cfd2eb, 0x16aaebef, 0x0a9d7e08, 0xd419cad2, 0x575d51d9, 0x28eb198b, 0xb32bb837
.word 0xb77f41fd, 0xe1aeaed4, 0x7b9b10e0, 0xeab1291d, 0xe40b1c66, 0x862961c7, 0xabcba0a4, 0x10bf667e
.word 0x76d19574, 0x1bd735f0, 0xf47e6a57, 0xa361d7f3, 0x88358c84, 0xcf046118, 0x7588f034, 0xfdd89918
.word 0x46d3793d, 0x877530d3, 0xaf02315b, 0x625b02bf, 0x123f798e, 0x31a2f714, 0x9bda76c4, 0x62366ca9
.word 0xc729f37b, 0x61c33ffa, 0x104da6a0, 0x690ea862, 0xb78c99ab, 0xd912577f, 0x3a31c29a, 0x4497a019
.word 0x70fedec0, 0x21a0a92c, 0x0d6ff668, 0x218449a6, 0xf96787da, 0x19ffb32e, 0xbac050a4, 0x0d6ec40a
.word 0x7e2ed484, 0x0d669dac, 0xb38c208d, 0xd28561c0, 0xd2af39be, 0x3f92f2bd, 0xf04ae5ec, 0x574003b5
.word 0xea9c86a6, 0x69f358d4, 0x3fbb2e17, 0x71035d57, 0x15cdc7d1, 0x3552c265, 0x896e6cb0, 0x04086782
.word 0x790739e2, 0x75cdb95c, 0xd23753bc, 0xe861f962, 0xce9e87c5, 0xd9c590f3, 0x397e7fbc, 0x9bec06d5
.word 0xea43c5f9, 0x151dfc07, 0xafe649e1, 0x3ff6bf53, 0xfbbe5c85, 0xb6571261, 0xad9863d3, 0x532dd6d6
.word 0x64163a2d, 0x65d5bca6, 0x92b32a4b, 0xe70ee04b, 0x775fa402, 0x5c6ff0bd, 0xb995b308, 0x190e080f
.word 0xd644d8b4, 0xaab9fd5c, 0x7b13851d, 0xce1bda31, 0xc766728b, 0xdc210a3f, 0x2bbb32c5, 0x76dae401
.word 0x89b092ce, 0x0316a818, 0x563bccf5, 0x7ee48ec3, 0x196c0df0, 0xf107dd4e, 0x524d895a, 0xc74eb602
.word 0x6aba68c6, 0xffa7ec2d, 0xf9b4b65d, 0xd67908da, 0x63af4ee3, 0xd8f1451a, 0xd10e57e3, 0x63d85753
.word 0x33658dca, 0x59323fb4, 0x0723378c, 0xaaf8af80, 0x3a918366, 0x113b2470, 0x3dc93b1c, 0xe1cf49b6
.word 0x758c7007, 0xbce2105d, 0xdb8ecabf, 0x527b8c70, 0x03f5f6d3, 0x6ce17680, 0xb0e6908c, 0xb16170ab
.word 0x988e1979, 0x8de3e8e0, 0xb7f29140, 0x3716eed3, 0x058b5af6, 0x700369b4, 0xa7a1f23e, 0xb4c02748
.word 0x2e47dec3, 0x41d85227, 0x8daae817, 0xdd25b4e8, 0x97924993, 0xd5dfba5f, 0xafa6eb0b, 0xad1774dc
.word 0x3cbafbae, 0xc44a994e, 0xe0e6d3f9, 0xa6ee1b7f, 0x44c277f7, 0xe455477e, 0x47d67a1b, 0x9d2a2ff3
.word 0x930fa961, 0x0ae16899, 0xa138080b, 0x1ea8d858, 0xec6b2649, 0x2242c1ba, 0xb76f2cc2, 0x3c3d0313
.word 0x4f09a4cd, 0xbf973e7b, 0xa84cf91f, 0x97bb9876, 0xe8cfec00, 0x15090af3, 0x10f97b61, 0xb8326eff
.word 0xf013821a, 0x0bdd2380, 0x80123217, 0xb9516065, 0x356caff1, 0x867a014a, 0x08cd8c3d, 0x171b7407
.word 0xdc4d0bd6, 0xaddc2476, 0xb9070d77, 0x76fe43e8, 0x2c51c60d, 0xa25dff0b, 0xfdbbd006, 0xf3b1d5b0
.word 0x90483181, 0x98fbbb8d, 0x23ddeddf, 0x8582cab2, 0x8f4f1e73, 0xa762b101, 0xa0b8d625, 0x6849e19e
.word 0x57ae13f1, 0x47c5ca2d, 0xf761d508, 0x8eadc67a, 0x99eddb7c, 0xe1aed88f, 0x4b73d8cc, 0x90502b9c
.word 0x6cd3bf6f, 0xdce27967, 0xf7c773d7, 0xcaef3493, 0x67aa57be, 0xff041871, 0x545ec0cf, 0x45ce10eb
.word 0xf7c6918f, 0x6917b049, 0x68ffbaa4, 0x11ec80f7, 0x92db0e57, 0xe003a47a, 0x608d2108, 0xc5b48233
.word 0x0d01d444, 0xc6b74397, 0xc7c18086, 0xcbf88596, 0xfd9431e6, 0x9278a506, 0xa66a4b5b, 0xe69ad8e6
.word 0x6a025141, 0xace1b424, 0x8a86b39f, 0x3c731cd4, 0x5c5af6af, 0xc230db73, 0x03540932, 0xf75a642b
.word 0xbc45dc66, 0xf89cd1d0, 0x66d76071, 0x30ca53f3, 0xbd5eda02, 0xd104b155, 0xae786a2e, 0xf57b8af1
.word 0x2cf05b12, 0xb93300da, 0x08582b1e, 0x0c933cbb, 0x41470195, 0x61f54a82, 0x1cca8da3, 0xaefb3613
.word 0x1c897b45, 0x876def34, 0x062544de, 0x02521f2e, 0xcc9f8157, 0xf1b1af26, 0x24b447fa, 0x50978505
.word 0xb13fdce9, 0xe6728b68, 0xb0f6086b, 0xb418a04e, 0xfb029050, 0xb2cc9b47, 0x435458a6, 0x384eaca5
.word 0xa52cb94b, 0x3ff2c398, 0x5d46f07b, 0xc9eb9ff0
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x11, x18, zero
                  csrr x30, 0x300 # MSTATUS
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 31
                  bne x30, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x30, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x30, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x30, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x30, x26, ecall_handler
                  li x26, 0x1
                  beq x30, x26, instr_fault_handler
                  li x26, 0x5
                  beq x30, x26, load_fault_handler
                  li x26, 0x7
                  beq x30, x26, store_fault_handler
                  li x26, 0xc
                  beq x30, x26, pt_fault_handler
                  li x26, 0xd
                  beq x30, x26, pt_fault_handler
                  li x26, 0xf
                  beq x30, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x18, x11, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x11, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x11, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x18, x11, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x18, x11, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x18, x11, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
