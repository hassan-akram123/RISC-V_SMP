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
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x26, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 0
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0xcac8f284
                  li x3, 0x80000000
                  li x4, 0xfce49e6d
                  li x5, 0xf791e7c
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0x7abac820
                  li x10, 0xf8670630
                  li x11, 0x0
                  li x12, 0x99e4c298
                  li x13, 0xe
                  li x14, 0x2
                  li x15, 0xfe586765
                  li x16, 0xfeaf728f
                  li x17, 0xfe42c351
                  li x18, 0x80000000
                  li x20, 0xf2e88e96
                  li x21, 0x80000000
                  li x22, 0xfb655f19
                  li x23, 0xeeba727a
                  li x24, 0x80000000
                  li x25, 0x4
                  li x27, 0x80000000
                  li x28, 0xe29e6029
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x80000000
                  la x19, user_stack_end
main:             slti         a3, t6, 306
                  la           s9, sub_1
                  andi         a6, ra, 1730
                  lui          t3, 884402
                  slli         sp, s11, 6
                  addi         s9, s9, 700
                  andi         s2, a0, 1870
                  sll          s4, s1, gp
main_j2:          jalr         ra, s9, -700 #jump main -> sub_1
                  and          gp, s9, t1
                  la           tp, sub_3
                  srai         t2, a2, 0
                  srl          s9, a6, a7
                  slt          t1, tp, s0
                  addi         tp, tp, -736
                  and          s4, s8, a7
                  lui          s8, 757922
                  slt          s9, s6, s5
main_j3:          jalr         ra, tp, 737 #jump main -> sub_3
                  xor          a2, s0, a2
                  srai         zero, a1, 25
                  la           t3, sub_2
                  addi         t3, t3, -274
                  srai         zero, a0, 20
                  sll          s4, s7, a4
                  andi         t6, s5, 1814
                  slt          s5, s10, a5
                  bne          t6, a5, main_j4 #branch to jump instr
                  srli         s1, t2, 1
main_j4:          jalr         ra, t3, 275 #jump main -> sub_2
                  slli         a0, a6, 19
                  slli         s1, tp, 16
                  slti         s7, a0, -1654
                  la           a6, sub_4
                  sra          a0, s3, tp
                  addi         a6, a6, 388
                  bltu         tp, s4, main_j5 #branch to jump instr
                  addi         s11, a5, 221
                  add          t3, s9, t1
                  srli         s2, s4, 28
main_j5:          jalr         ra, a6, -388 #jump main -> sub_4
                  la           s8, region_1+1493 #start riscv_load_store_rand_instr_stream_0
                  xori         s7, tp, -977
                  sh           ra, -11(s8)
                  slli         a5, s2, 3
                  lb           s0, -146(s8)
                  lw           ra, 23(s8)
                  lbu          t5, -101(s8)
                  nop
                  and          tp, a7, s3
                  lbu          sp, -92(s8)
                  lb           sp, 22(s8)
                  slli         ra, s8, 3
                  lhu          gp, 17(s8)
                  slti         t2, s7, 1457
                  lbu          t6, -198(s8)
                  lbu          a6, 210(s8)
                  sb           s6, 217(s8)
                  srli         a5, ra, 14
                  lbu          t2, -162(s8)
                  lb           s11, 81(s8)
                  sb           s1, -166(s8)
                  sb           t1, -226(s8)
                  sh           t2, -195(s8)
                  sub          tp, s11, t0
                  sub          a2, gp, t5
                  slti         t2, zero, 515
                  srli         t5, t0, 14
                  sb           s1, -14(s8) #end riscv_load_store_rand_instr_stream_0
                  xori         a1, s4, 666
                  auipc        s2, 866633
                  bge          a3, s3, 7f
                  bltu         a7, s5, 12f
                  bltu         a7, a6, 24f
                  srli         s5, a0, 6
                  slli         a3, a4, 14
7:                bge          sp, a6, 19f
                  bge          s8, s9, 21f
                  srli         a1, t5, 30
                  bgeu         a2, t3, 18f
                  andi         gp, ra, -739
12:               srl          tp, tp, s6
                  blt          a6, a6, 22f
                  srl          t2, a5, s3
                  srli         gp, t0, 28
                  sll          tp, a7, a7
                  sltu         a7, s10, t5
18:               slti         s6, tp, 713
19:               addi         s8, t0, -1058
                  sub          t2, s0, s10
21:               bltu         s10, s0, 34f
                  la           s6, sub_5
                  slti         a0, s10, -222
                  or           s7, s7, a4
                  srli         a5, sp, 18
                  srli         a0, t1, 0
                  add          s7, a2, s4
                  srli         t1, t6, 9
                  auipc        s9, 743996
                  addi         s6, s6, 718
                  or           a0, s3, s6
                  slti         s7, s7, 992
                  srl          gp, a2, s7
main_j1:          jalr         ra, s6, -718 #jump main -> sub_5
22:               and          a0, t0, t4
                  xori         a1, s11, -759
24:               auipc        s6, 977673
                  sub          a5, a6, a5
                  add          a4, a4, a0
                  addi         s7, s0, 1026
                  slli         t5, tp, 2
                  bge          a6, a7, 40f
                  beq          a5, s2, 46f
                  lui          tp, 776016
                  sub          s6, s9, t5
                  andi         t3, s10, -62
34:               sub          sp, s5, t2
                  srl          s4, s3, a7
                  sra          s6, s7, s11
                  beq          s0, s9, 46f
                  srai         s2, s11, 21
                  beq          ra, a1, 40f
40:               ori          a0, a7, 858
                  sra          t6, a5, a5
                  andi         s6, t3, -1357
                  slt          s2, s1, tp
                  bgeu         s2, s6, 50f
                  xor          a0, sp, s10
46:               bltu         s9, a7, 63f
                  sra          a2, t0, a5
                  srai         t5, s7, 17
                  bltu         s8, t1, 53f
50:               bne          a6, s11, 53f
                  and          s0, a5, s4
                  bne          sp, a7, 70f
53:               sll          s5, s11, a2
                  bgeu         t4, zero, 66f
                  bgeu         a4, s2, 57f
                  addi         s7, ra, 1117
57:               addi         a0, s2, -1799
                  or           t1, a4, s3
                  lui          t3, 23257
                  bltu         a5, s9, 65f
                  slti         a3, s9, 313
                  lui          ra, 694996
63:               lui          a2, 956270
                  xor          gp, s5, t3
65:               slt          gp, s3, s0
66:               sub          a5, t5, s2
                  auipc        s11, 793644
                  slti         s4, s3, -648
                  or           s7, s4, a6
70:               and          s11, s7, s11
                  xori         s6, s9, 180
                  sll          a7, ra, s0
                  bgeu         s8, s4, 81f
                  sra          s5, gp, tp
                  xori         s4, t0, -492
                  beq          gp, a6, 81f
                  lui          s7, 795849
                  sra          a0, s3, gp
                  lui          s4, 427841
                  sltu         tp, zero, s9
81:               srl          s4, s4, gp
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            sltiu        t1, s10, -156
                  sltiu        a2, a1, -978
                  sra          a3, sp, ra
                  sltu         a7, ra, s9
                  sltu         s11, s8, s2
                  bltu         s4, s1, sub_8_stack_p
sub_8_stack_p:    addi         s3, s3, -28
                  sw           ra, 4(s3)
                  xori         s0, s11, -2009
                  ori          zero, s8, -1374
                  sll          a6, t3, a0
                  beq          s5, s3, 12f
                  srai         a3, s11, 12
                  sub          sp, t1, a6
                  or           a1, t2, t1
                  blt          s7, a5, 13f
                  sll          a1, t6, t4
                  sra          s11, t3, t6
                  bge          s7, s11, 13f
                  slt          a7, a6, t1
                  ori          a2, t3, 1404
                  bltu         t2, tp, 13f
12:               ori          a7, t4, -1937
13:               xori         a3, s5, 1533
                  add          s5, s4, t0
                  andi         a0, t2, -629
                  lw           ra, 4(s3)
                  sra          s11, a7, s7
                  addi         s3, s3, 28
                  nop
30:               addi x3, x1, 0
30:               jalr x3, x3, 0
sub_2:            srai         a0, a7, 18
                  bge          s10, s7, sub_2_stack_p
                  slt          s0, t3, a4
sub_2_stack_p:    addi         s3, s3, -8
                  sltiu        t3, tp, -509
                  sltu         s7, s3, s4
                  slt          zero, t2, s8
                  sw           ra, 4(s3)
                  sra          s1, s7, s7
                  nop
                  sll          t2, t3, s8
                  la           s9, region_1+484 #start riscv_load_store_rand_instr_stream_0
                  lb           t4, 1229(s9)
                  ori          t5, s4, 1696
                  xori         a5, s11, -1788
                  sltiu        a1, gp, -151
                  lb           tp, 871(s9)
                  sra          t6, s9, t4
                  lb           s6, -43(s9)
                  add          zero, a5, a5
                  lb           a0, 687(s9)
                  addi         a1, s2, 2045
                  lui          gp, 251915
                  andi         t2, a5, -924
                  sh           s8, -20(s9)
                  lbu          a1, 999(s9)
                  lb           a6, -419(s9)
                  sb           a6, 637(s9)
                  add          t5, s7, s2
                  slti         s4, s0, 1151
                  addi         s1, t4, -930
                  auipc        s7, 331915
                  or           s0, s0, zero
                  sb           a3, 221(s9)
                  lw           t1, 648(s9)
                  lb           sp, 557(s9)
                  slt          s1, s10, a7
                  sub          s8, s3, a0
                  lhu          zero, 8(s9)
                  srl          s2, t1, s2
                  lbu          tp, 295(s9)
                  sltiu        s11, s3, 15
                  srli         s0, sp, 31
                  lui          gp, 333182
                  lbu          s11, 1317(s9)
                  and          s5, a7, zero
                  lb           a4, 1188(s9)
                  slti         ra, s1, 1543
                  and          s8, s5, ra
                  lh           s7, -14(s9)
                  sh           s10, -180(s9)
                  sb           t2, 1290(s9)
                  slli         s4, s8, 31
                  addi         t6, t4, 1025
                  sltu         tp, a7, s10
                  srli         ra, a2, 30
                  or           a2, s10, s9
                  sw           s6, 1504(s9)
                  sll          s0, s0, t0
                  lb           a5, 357(s9)
                  lh           s0, 652(s9)
                  slti         a7, s5, -166
                  lbu          a0, -263(s9)
                  sb           t5, 855(s9) #end riscv_load_store_rand_instr_stream_0
                  sra          s7, s11, a6
                  sra          s9, s0, t2
                  srai         zero, s3, 29
                  sub          t3, s11, a0
                  nop
                  srli         t3, s5, 23
                  sub          t6, t2, a1
                  slti         t1, s0, 227
                  bge          s8, t3, 19f
                  and          a6, a6, zero
                  slli         s9, ra, 10
                  andi         a2, s0, -1115
                  addi         s7, s7, -1608
                  blt          s9, t3, 30f
                  bgeu         s5, t1, 32f
                  slt          s4, a3, t4
                  xori         t4, t1, 110
                  blt          s8, s3, 24f
                  or           s11, s4, a3
19:               sub          gp, s7, a0
                  sra          gp, a4, zero
                  add          t1, s7, t1
                  sub          t5, gp, gp
                  addi         t6, tp, 394
24:               add          s9, gp, s0
                  srl          s6, s7, s11
                  sll          s9, a7, t1
                  auipc        t5, 425826
                  andi         a7, t1, -1430
                  sltiu        s7, s2, 818
30:               sltiu        a2, a6, 1352
                  srai         s6, a3, 16
32:               srli         s2, a3, 19
                  auipc        s4, 985731
                  slli         tp, a2, 2
                  srai         t2, s3, 27
                  bge          s1, t2, 37f
37:               bltu         s11, t0, 51f
                  slti         t3, s3, -1238
                  addi         s11, a7, -1676
                  beq          t5, s3, 54f
                  sll          a2, a6, t5
                  or           t3, gp, s9
                  xor          t2, s3, s6
                  xori         a1, s0, 1647
                  slti         t1, s4, -552
                  slt          t3, a1, s2
                  beq          sp, t0, 61f
                  bge          a4, s9, 55f
                  slt          s8, sp, s2
                  ori          s8, s8, 1628
51:               srli         t1, gp, 12
                  or           a1, s2, s6
                  andi         ra, ra, -808
54:               bge          ra, s0, 72f
55:               bne          s11, s3, 64f
                  bgeu         s3, a4, 59f
                  andi         ra, s10, -180
                  sll          t2, sp, gp
59:               lui          a5, 330553
                  slt          t5, tp, t5
61:               addi         tp, a7, 210
                  srai         t5, s5, 6
                  srai         a1, ra, 0
64:               nop
                  xori         t2, s3, 926
                  blt          s4, s4, 77f
                  srai         s0, s4, 4
                  srl          s6, s10, a2
                  slt          t6, t4, s10
                  srl          s1, s10, sp
                  lui          s1, 1045992
72:               sltiu        a3, gp, 37
                  bne          tp, t4, 76f
                  addi         t4, s8, 862
                  andi         s7, t0, -1873
76:               nop
77:               bge          s10, a5, 95f
                  xor          a6, t5, s6
                  bne          sp, gp, 86f
                  slt          a0, s4, ra
                  slti         s0, t3, -1248
                  or           a7, zero, s10
                  xori         s9, a1, -1727
                  srli         s7, s11, 5
                  ori          s9, a6, 1297
86:               nop
                  bge          t3, s2, 95f
                  bge          tp, t4, 90f
                  srli         t5, a7, 1
90:               bne          s1, s0, 99f
                  add          s6, a5, s8
                  sra          t6, s7, t5
                  slti         s0, t0, -1148
                  sltiu        zero, ra, -126
95:               sltu         s9, gp, s1
                  slli         s2, a3, 15
                  xori         s7, a4, -2041
                  beq          t6, s1, 118f
99:               sltiu        zero, s6, -1530
                  lui          a0, 315135
                  xor          t3, s7, a1
                  or           a6, s5, t4
                  srl          a0, s9, a2
                  bge          a6, zero, 113f
                  ori          zero, s11, 456
                  blt          s10, a7, 116f
                  andi         a0, sp, 499
                  add          s8, s10, s10
                  bne          t6, s7, 120f
                  andi         a2, a0, 456
                  beq          a0, s3, 119f
                  add          a5, t5, t4
113:              blt          a4, t3, 132f
                  andi         s0, s3, 660
                  xori         t4, s5, -925
116:              sll          t2, s1, s2
                  sltiu        a6, t3, 1763
118:              bltu         s9, s2, 124f
119:              nop
120:              xor          a0, a3, t2
                  ori          s4, s5, 660
                  lui          s8, 729366
                  srl          s11, s10, a0
124:              and          sp, tp, t0
                  bgeu         s9, t4, 144f
                  or           s4, t0, a0
                  sltu         t3, t5, a1
                  slli         a0, zero, 10
                  bge          a6, zero, 149f
                  nop
                  lui          s5, 411674
132:              add          s0, a3, a3
                  srl          gp, t2, t5
                  sltu         s4, gp, t3
                  sltiu        zero, t2, 796
                  srl          a1, a6, a0
                  xor          a2, s6, t3
                  sra          s2, s8, t6
                  blt          a5, t1, 154f
                  addi         s9, a5, 1433
                  sll          a1, s4, gp
                  xori         a5, t3, 1868
                  slti         s0, s9, 204
144:              srli         t1, s10, 2
                  auipc        a4, 558634
                  addi         s9, t1, 89
                  and          s2, s1, a2
                  bne          t4, s8, 155f
149:              srl          t6, s7, t1
                  and          s5, a7, s6
                  bltu         s11, sp, 171f
                  andi         a1, s10, 118
                  auipc        s7, 352326
154:              bltu         s1, s4, 165f
155:              add          t1, s3, s2
                  slt          t4, s8, a1
                  srl          a1, s9, s5
                  srl          s5, s10, a1
                  sub          t3, tp, t2
                  xor          s2, a0, tp
                  sltu         a2, a6, s5
                  xori         a2, s6, -873
                  slt          s9, s6, t5
                  addi         sp, gp, -432
165:              sltiu        s2, t2, 461
                  sltiu        s2, t2, -1986
                  slt          a7, s8, ra
                  ori          s5, t6, 557
                  sra          t6, a3, s11
                  bge          t3, s1, 171f
171:              and          a0, s5, s10
                  sub          s6, s11, t2
                  blt          t3, t5, 187f
                  xori         a5, t4, -1851
                  andi         s2, t1, 918
                  sltiu        a7, t5, -242
                  sra          t6, gp, a5
                  ori          t6, s6, 1079
                  blt          tp, a7, 197f
                  nop
                  sltu         s5, s0, a7
                  bge          t3, ra, 201f
                  xor          tp, t2, a1
                  and          a1, a6, t5
                  xor          t1, t2, s11
                  bltu         tp, ra, 192f
187:              sub          s5, s6, sp
                  xori         gp, t2, -628
                  auipc        t1, 1012059
                  nop
                  bltu         a3, a5, 205f
192:              and          a0, a3, t0
                  sltiu        a4, t0, -1320
                  add          s8, gp, t3
                  sub          t2, t0, t2
                  srl          t6, a2, zero
197:              bne          t1, t1, 205f
                  or           s0, s2, s2
                  srai         a2, t6, 31
                  lui          s0, 799847
201:              beq          s9, t3, 212f
                  addi         a0, sp, -1982
                  sub          s11, a6, a5
                  slli         s1, gp, 7
205:              sltiu        t4, gp, -578
                  add          tp, s8, s10
                  slli         sp, s1, 5
                  bgeu         s0, t0, 214f
                  sll          s9, t3, s11
                  bgeu         a1, s10, 214f
                  auipc        s9, 149831
212:              or           s4, t3, s6
                  beq          s11, sp, 214f
214:              ori          s8, a5, 1058
                  sll          s9, s2, s1
                  xori         s6, a7, 790
                  and          t6, t5, s0
                  lw           ra, 4(s3)
                  addi         s1, a5, -1134
                  addi         s3, s3, 8
                  ori          t3, ra, 1061
                  sra          s8, a7, a4
                  slti         t3, t4, 1688
                  slti         a5, a7, 1096
                  andi         sp, s0, -1833
                  auipc        a7, 1031927
291:              addi x13, x1, 1
291:              jalr x13, x13, 0
sub_4:            sltiu        t4, s6, -92
                  nop
                  sra          s5, a7, s1
                  addi         s3, s3, -32
                  sltu         s4, gp, s0
                  sw           ra, 4(s3)
                  sltu         a6, a6, gp
                  la           gp, region_1+1528 #start riscv_load_store_rand_instr_stream_0
                  sra          s5, a0, a1
                  sb           a7, -9(gp)
                  sb           t2, 3(gp)
                  sb           ra, -7(gp)
                  sh           a3, -14(gp)
                  lb           s1, 15(gp)
                  ori          s5, a7, 1841
                  ori          zero, a5, 558
                  lb           s9, -16(gp)
                  xori         s4, s2, 1339
                  lbu          t5, -4(gp)
                  sb           t6, 5(gp)
                  sh           tp, 16(gp)
                  lbu          s5, -15(gp)
                  lbu          s0, -1(gp)
                  sra          a6, ra, a4
                  lhu          s9, 4(gp)
                  sh           sp, -6(gp)
                  ori          sp, s10, -1574
                  sh           sp, 14(gp)
                  sb           t5, -6(gp)
                  lhu          s9, 10(gp)
                  sra          a4, t0, a4
                  slti         t2, t0, -1450
                  nop
                  add          s2, s9, a4
                  sb           a6, -15(gp)
                  sltu         s5, s11, t6
                  lhu          s0, 8(gp)
                  sltiu        a4, a3, 1308
                  xor          s7, s10, s11
                  lui          t1, 604989
                  slti         ra, s8, 1070
                  andi         a5, s4, -1285
                  lbu          t6, -16(gp)
                  sh           t0, 0(gp)
                  lui          a5, 158166
                  lhu          a4, 4(gp)
                  slli         s4, a0, 11
                  slti         s8, gp, -444
                  lbu          a1, 1(gp)
                  lhu          s6, 8(gp)
                  sll          s1, s2, s7
                  slt          s7, a1, a3
                  lbu          a0, 11(gp)
                  lbu          s0, -7(gp)
                  lb           s5, -15(gp)
                  lbu          s6, 15(gp) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_0+727 #start riscv_load_store_rand_instr_stream_3
                  lbu          t5, 28(s9)
                  lbu          s4, 4(s9)
                  auipc        s11, 900662
                  lbu          t4, -46(s9)
                  lb           t5, 42(s9)
                  lbu          a1, 17(s9)
                  lbu          t5, -29(s9)
                  srli         gp, ra, 23
                  lhu          s4, -35(s9)
                  sll          a6, s2, t2
                  addi         t1, a4, -730
                  lbu          s8, 54(s9)
                  lb           s6, -61(s9)
                  sh           s3, 1(s9)
                  sb           s11, 25(s9)
                  sh           s2, -37(s9)
                  sb           s8, 46(s9)
                  lb           t3, 32(s9)
                  sb           a0, 5(s9)
                  auipc        s8, 542262
                  lbu          zero, -60(s9)
                  slt          zero, s7, t0
                  sll          t6, s3, s0
                  srl          s1, s4, s0
                  lb           a0, -30(s9)
                  sb           tp, 59(s9)
                  lbu          a6, 37(s9)
                  sra          a0, t2, t0
                  sb           a0, 24(s9)
                  lbu          s11, -46(s9)
                  lb           ra, -2(s9)
                  lb           sp, 38(s9)
                  lui          t5, 478855
                  srl          a0, s3, s2
                  lb           s4, -46(s9)
                  lb           s4, -28(s9)
                  lhu          s2, 1(s9)
                  slli         tp, s3, 29
                  lb           s4, -58(s9)
                  sh           t6, 9(s9)
                  lbu          a2, -40(s9) #end riscv_load_store_rand_instr_stream_3
                  la           s6, region_1+1015 #start riscv_load_store_rand_instr_stream_5
                  lh           s1, -1(s6)
                  lbu          a1, 62(s6)
                  lhu          a4, 13(s6)
                  lb           s2, 6(s6)
                  sb           a7, -43(s6)
                  addi         t4, s9, 1531
                  lb           s7, 32(s6)
                  srai         s2, ra, 5
                  lbu          s9, -64(s6)
                  lbu          s8, -8(s6)
                  sb           ra, 16(s6)
                  lb           s5, 16(s6)
                  sb           tp, 35(s6)
                  srl          a7, a6, s11
                  and          a5, t0, t5
                  sll          s0, s9, s8
                  sw           s7, -47(s6)
                  sll          a2, sp, gp
                  lb           a3, 44(s6)
                  sb           zero, -63(s6)
                  lb           a4, -58(s6)
                  lbu          a2, -38(s6)
                  lbu          s8, 28(s6)
                  sltu         t1, a7, a4
                  andi         s1, t4, 1368
                  lbu          s1, 59(s6)
                  sb           tp, 4(s6)
                  sb           s2, -53(s6)
                  lb           s5, 42(s6)
                  lw           a1, 25(s6)
                  xor          t3, sp, ra
                  sb           a7, -2(s6)
                  sltu         t2, a6, a4
                  lb           a7, -37(s6)
                  lw           s11, -63(s6)
                  slt          s1, t4, a4
                  lb           t6, 56(s6)
                  nop
                  lhu          tp, -3(s6) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+741 #start riscv_load_store_rand_instr_stream_2
                  addi         s7, s10, 1526
                  xori         t5, ra, 507
                  lhu          s0, 3(sp)
                  lb           a2, 89(sp)
                  lbu          s2, -142(sp)
                  lhu          s11, -127(sp)
                  auipc        s5, 656071
                  lh           ra, 245(sp)
                  sb           s11, -208(sp)
                  sb           t6, -176(sp)
                  lb           s9, -199(sp)
                  lb           s7, 24(sp)
                  sub          t4, s10, s0
                  addi         a3, s9, 1744
                  lbu          ra, -104(sp)
                  sh           a7, -135(sp)
                  lhu          a0, 5(sp)
                  slli         a4, a4, 23
                  auipc        s6, 47489
                  slli         t3, t3, 8
                  lb           s11, -238(sp)
                  srl          a4, gp, t4
                  lbu          a2, 238(sp)
                  sra          t3, a7, s6
                  sltu         t6, s6, s3
                  addi         s11, s11, -1664
                  or           t6, s0, zero
                  sb           s1, 16(sp)
                  sltu         t4, s2, t5
                  auipc        s0, 920190
                  or           a5, t1, a7
                  lb           s5, -168(sp)
                  sb           s10, 116(sp)
                  srli         s4, a7, 1
                  lhu          t4, -115(sp)
                  slt          s1, a5, s6
                  lbu          a2, -181(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t2, region_1+1147 #start riscv_load_store_rand_instr_stream_1
                  xori         ra, t0, 432
                  lw           s5, -123(t2)
                  lbu          s0, 201(t2)
                  andi         s0, t4, -1333
                  ori          gp, t4, -1679
                  sb           s5, 55(t2)
                  srli         s11, t3, 17
                  lbu          a5, 46(t2)
                  sh           a7, 193(t2)
                  lbu          s8, 118(t2)
                  sb           t0, 5(t2)
                  sb           tp, 84(t2)
                  auipc        s7, 713720
                  lw           a1, 61(t2)
                  sw           gp, 9(t2)
                  lui          t6, 120942
                  sh           a7, -41(t2)
                  slli         ra, t1, 5
                  nop
                  lui          s2, 925815
                  lb           t5, -241(t2)
                  sb           sp, -110(t2)
                  slli         gp, a6, 14
                  sb           s10, 226(t2)
                  lbu          tp, -195(t2)
                  andi         s5, s4, -1572
                  sll          s6, s6, a1
                  sub          gp, a2, s10
                  or           s1, t0, a5
                  add          a6, s7, t6
                  slli         s8, t2, 31
                  sll          zero, a3, t6
                  lb           s1, -244(t2)
                  slt          tp, gp, a6
                  sb           a0, 14(t2) #end riscv_load_store_rand_instr_stream_1
                  la           a7, region_0+1217 #start riscv_load_store_rand_instr_stream_4
                  lbu          s11, -182(a7)
                  add          t4, sp, gp
                  srai         tp, tp, 14
                  sh           gp, -9(a7)
                  lhu          s9, 251(a7)
                  lui          t5, 758865
                  srli         s4, t4, 22
                  srai         s8, s0, 4
                  slti         s8, ra, -752
                  sw           t6, 231(a7)
                  sb           s11, 0(a7)
                  lhu          a0, 53(a7)
                  slli         s2, s2, 19
                  sh           a1, -41(a7)
                  slli         sp, s4, 12
                  lb           sp, -32(a7)
                  slt          tp, s4, t2
                  lb           s11, 3(a7)
                  xori         s6, s3, -1606
                  lbu          a3, 240(a7)
                  sltiu        zero, s11, 2037
                  sh           t5, -123(a7)
                  lbu          a0, 60(a7)
                  sw           a3, 231(a7)
                  lw           s2, -245(a7)
                  lh           t2, 169(a7)
                  lb           gp, 129(a7)
                  srli         gp, s0, 20
                  sb           gp, 11(a7)
                  ori          gp, a2, -51
                  lbu          s0, 42(a7)
                  sub          a0, gp, a6
                  sb           a4, -116(a7)
                  sll          s4, t1, s7
                  lh           sp, -103(a7) #end riscv_load_store_rand_instr_stream_4
                  or           tp, s1, s3
                  andi         a0, a3, -1980
                  bne          t3, s8, 19f
                  xor          t1, s9, a0
                  sll          a7, s9, t2
                  blt          sp, a0, 22f
                  slt          a4, zero, t4
                  sll          s4, s4, s10
                  bne          s6, t1, 26f
                  sra          a2, a5, s5
                  bgeu         s6, a5, 19f
                  bge          a1, s4, 29f
                  beq          a4, gp, 29f
                  ori          a1, sp, -1904
                  srli         t4, gp, 24
                  or           a0, sp, a3
                  srl          t2, t0, ra
                  sra          tp, a7, a2
                  ori          tp, t5, -407
19:               blt          t4, a6, 29f
                  xori         gp, t4, 1036
                  sltu         s5, ra, t1
22:               lui          sp, 862077
                  addi         s8, s2, -791
                  bgeu         t2, a6, 44f
                  bltu         a7, t6, 44f
26:               sll          t5, sp, s5
                  nop
                  sll          s5, s10, s4
29:               srl          s7, t6, a4
                  auipc        a2, 295654
                  auipc        zero, 283768
                  or           t2, s0, s6
                  sltu         s11, a6, t2
                  bltu         sp, t2, 47f
                  beq          a3, a6, 45f
                  slti         ra, t4, -1629
                  sra          t3, s9, t6
                  blt          s10, s8, 57f
                  addi         a4, a1, -604
                  slli         s8, t0, 9
                  bne          s10, a2, 53f
                  slli         a2, t2, 9
                  auipc        s6, 344201
44:               bltu         s0, t1, 54f
45:               andi         s1, a0, 1769
                  lui          s8, 964610
47:               bge          a0, t2, 54f
                  bltu         t3, t2, 51f
                  bne          a4, s1, 61f
                  srl          s6, s0, s3
51:               beq          s6, tp, 65f
                  sltiu        a0, t4, -1089
53:               auipc        s0, 984286
54:               bgeu         a1, t4, 64f
                  xor          t5, a4, a5
                  sltiu        t6, tp, 1831
57:               xori         a5, s2, 406
                  addi         a6, s11, 505
                  sltiu        s4, s1, -695
                  srli         a0, s1, 8
61:               slt          t6, t3, t3
                  addi         a2, zero, 1554
                  sub          s6, a4, zero
64:               xor          a2, gp, t4
65:               xor          a6, s10, t3
                  sltu         s7, t6, a1
                  beq          t4, s8, 75f
                  sub          a5, s6, zero
                  slt          a5, t3, t4
                  bltu         s9, a4, 71f
71:               srl          s6, s3, a0
                  slt          tp, s5, t4
                  sub          t5, s3, t1
                  addi         s0, sp, 414
75:               addi         t1, s8, 1170
                  bne          t4, a4, 77f
77:               bne          a2, a5, 94f
                  slt          s7, s3, gp
                  sltiu        a5, s8, 51
                  sltu         s8, a4, t2
                  bltu         t1, a1, 84f
                  sll          a1, sp, zero
                  bgeu         sp, s0, 100f
84:               srli         s4, s9, 24
                  add          a3, t0, s2
                  srai         s11, gp, 9
                  andi         a5, sp, 331
                  nop
                  sub          s6, a1, s10
                  sltu         s11, s8, a0
                  or           s5, s3, gp
                  bge          s8, t1, 111f
                  addi         s1, s0, -515
94:               bne          s5, s7, 107f
                  xor          s4, a0, s1
                  sra          s1, a7, a1
                  srli         s8, zero, 30
                  or           a4, tp, s0
                  beq          t2, t5, 101f
100:              srl          zero, s3, a3
101:              slli         s8, s0, 9
                  bltu         t4, a5, 121f
                  auipc        s11, 369878
                  xor          t3, a7, s10
                  or           a5, sp, a5
                  srai         s4, a7, 0
107:              sll          s11, s10, s0
                  ori          t2, s3, -664
                  lui          t3, 376170
                  bgeu         a5, a7, 112f
111:              bgeu         s11, t4, 112f
112:              or           s2, t4, t6
                  beq          s1, ra, 122f
                  sltiu        a1, s6, -1578
                  bgeu         t5, a5, 125f
                  addi         a7, a3, -1719
                  beq          tp, a3, 134f
                  bge          t1, s4, 135f
                  beq          t1, t2, 121f
                  srl          s1, a0, tp
121:              beq          t0, ra, 123f
122:              sra          s6, t6, s7
123:              add          a0, s8, s10
                  bgeu         s8, tp, 132f
125:              xori         tp, t4, -183
                  and          a4, t5, a0
                  sra          s7, sp, a6
                  beq          s11, s3, 147f
                  sltu         t6, s11, t5
                  sltu         t6, s11, s1
                  andi         a7, s5, 345
132:              xor          s4, sp, a3
                  nop
134:              srli         gp, s4, 24
135:              srl          s6, s0, t1
                  blt          zero, s10, 139f
                  andi         s2, s8, 1576
                  ori          tp, a6, 1676
139:              bne          a1, s2, 156f
                  sra          s8, s0, t2
                  sub          t1, t1, t1
                  and          tp, t6, a1
                  or           s6, s6, s8
                  ori          tp, zero, 1904
                  andi         a5, ra, -151
                  sra          a3, a4, gp
147:              sub          gp, t1, t4
                  xori         a6, a0, -1973
                  bne          s3, gp, 159f
                  slti         s6, s2, -969
                  ori          s11, a2, 1783
                  bltu         a3, tp, 171f
                  slti         sp, a7, 536
                  bltu         s6, s3, 171f
                  srai         a2, s2, 15
156:              and          s5, sp, s7
                  addi         a0, sp, 1190
                  addi         zero, s0, -1088
159:              ori          a0, a7, -67
                  lui          tp, 1046919
                  addi         s4, a1, -1732
                  bne          a5, s10, 174f
                  bge          a6, s10, 166f
                  lui          sp, 625687
                  nop
166:              and          t3, s4, s9
                  bge          a4, s9, 174f
                  andi         gp, s6, -1841
                  bltu         s5, a6, 188f
                  sltu         s9, a5, a2
171:              bge          zero, s11, 181f
                  auipc        ra, 423166
                  auipc        t1, 758847
174:              slt          s9, t5, t3
                  sltu         s6, t2, a3
                  sltiu        s9, ra, 1603
                  xor          a4, s2, a3
                  slti         s0, s9, -455
                  bltu         zero, s10, 191f
                  bltu         t1, s11, 193f
181:              andi         s6, a7, 1517
                  slt          ra, t3, s9
                  slt          tp, s3, ra
                  bgeu         t1, zero, 198f
                  xor          t3, a1, s4
                  bge          a6, a2, 203f
                  andi         s9, gp, -1066
188:              sll          gp, a1, s7
                  blt          s11, t2, 207f
                  andi         s5, sp, -1996
191:              and          s0, t1, t1
                  auipc        s4, 573812
193:              xori         s11, t4, 698
                  xor          s8, s9, s6
                  srl          a1, t1, sp
                  add          s0, s9, a2
                  sra          t1, sp, a4
198:              slt          s4, s8, a5
                  andi         a0, s4, -1009
                  blt          zero, sp, 220f
                  sub          tp, t5, s9
                  sll          tp, sp, a7
203:              add          t6, a2, a4
                  bge          s11, t6, 223f
                  slti         ra, t2, 965
                  auipc        s5, 328102
207:              sra          t3, tp, gp
                  lui          a2, 191686
                  sll          t3, t0, s2
                  sll          a2, a2, sp
                  sltiu        s9, t1, 1267
                  and          zero, s10, t1
                  slli         t6, s11, 9
                  sra          s2, s11, gp
                  xori         gp, ra, -590
                  srli         s8, zero, 4
                  srli         t4, s7, 7
                  blt          s1, s2, 236f
                  bltu         t4, s11, 232f
220:              bltu         a6, a7, 230f
                  xori         s8, t6, -107
                  xori         t3, s6, -166
223:              srai         t3, s10, 8
                  blt          s2, a1, 225f
225:              bne          s6, tp, 228f
                  lui          a3, 352458
                  addi         a5, a5, 1905
228:              auipc        a5, 838882
                  sra          a5, a3, a2
230:              auipc        tp, 305795
                  slli         a0, t5, 14
232:              andi         t3, t6, 1471
                  slti         a0, s10, -382
                  slti         s7, t0, -524
                  srl          s0, s5, s9
236:              blt          a4, s10, 237f
237:              bgeu         s0, s5, 247f
                  sub          ra, t0, t6
                  bge          s7, ra, 242f
                  slt          s4, s0, a5
                  sll          t2, s6, tp
242:              and          s9, s11, a4
                  blt          s1, t1, 260f
                  nop
                  slt          a1, a4, sp
                  slli         s0, a7, 16
247:              bge          ra, s8, 259f
                  srl          s11, a3, s10
                  nop
                  sltiu        a2, t4, -278
                  bne          s5, zero, 252f
252:              slt          zero, s11, t3
                  ori          s0, sp, -288
                  sll          t5, s2, a0
                  add          s7, a4, t4
                  bge          t6, a6, 275f
                  srai         a4, s4, 29
                  slt          a5, a5, a5
259:              andi         a3, a2, -646
260:              sub          a2, s0, a2
                  or           gp, s7, s1
                  srl          a5, tp, ra
                  add          a6, a0, s3
                  addi         t4, a1, -1146
                  or           gp, gp, gp
                  and          ra, a3, t1
                  bne          a4, tp, 277f
                  ori          a7, a6, 1223
                  lui          a6, 720543
                  slt          s6, s1, t1
                  sltu         gp, t2, a0
                  blt          s4, s9, 292f
                  andi         t1, s9, 501
                  bge          s6, s2, 293f
275:              slt          a4, s7, a7
                  sll          sp, t0, s2
277:              auipc        t6, 216795
                  andi         tp, s7, -1920
                  lui          s6, 778538
                  bge          t4, s8, 288f
                  sltu         s11, s5, ra
                  auipc        t6, 593631
                  and          a7, s6, s2
                  srli         s5, s8, 13
                  addi         s6, t6, 271
                  slti         s11, ra, -672
                  sltiu        s9, s10, -999
288:              slt          ra, s6, sp
                  xori         a1, s8, 1558
                  slti         s5, s7, -906
                  sltu         s2, s9, t0
292:              bgeu         s5, a5, 306f
293:              addi         t6, a2, -890
                  slt          a5, t3, s8
                  bgeu         a6, a0, 313f
                  bgeu         s6, t0, 308f
                  bltu         s0, s0, 314f
                  lui          s0, 763697
                  bltu         a6, t1, 312f
                  sll          s2, a7, a7
                  lui          ra, 726323
                  auipc        t1, 494025
                  slti         ra, sp, 1707
                  sltu         s0, a4, s1
                  sltu         s4, s11, tp
306:              nop
                  bltu         t0, t4, 309f
308:              xor          s1, a2, s7
309:              nop
                  nop
                  sll          a2, s9, s1
312:              beq          s0, t1, 314f
313:              nop
314:              srl          s1, s9, t4
                  slt          s8, s8, s11
                  sll          s0, t5, gp
                  slt          t3, t2, s8
                  add          s0, zero, ra
                  srai         s4, s2, 15
                  bgeu         s10, t0, 327f
                  bltu         a5, s4, 338f
                  slt          t4, t6, s1
                  ori          s2, a5, 555
                  sltu         s4, t3, t6
                  blt          t4, t1, 335f
                  bne          t4, ra, 343f
327:              slt          t6, a1, t1
                  bltu         ra, s1, 338f
                  sll          a1, s0, s8
                  sra          zero, a5, a7
                  blt          s8, t0, 349f
                  xori         t1, s9, -2047
                  bgeu         s4, a6, 342f
                  bne          a3, a6, 351f
335:              bltu         s6, t6, 348f
                  bne          a3, a0, 355f
                  sll          a5, t4, t6
338:              auipc        sp, 38657
                  beq          a7, ra, 358f
                  slli         ra, s9, 18
                  blt          s0, s6, 355f
342:              auipc        s11, 582922
343:              sltiu        a0, s10, -1998
                  bltu         a0, s0, 361f
                  bltu         s1, sp, 348f
                  slli         a2, t4, 19
                  bge          s0, s5, 354f
348:              bltu         a0, t6, 349f
349:              beq          t6, zero, 359f
                  sll          t2, t5, sp
351:              slli         t1, a5, 28
                  srl          a6, s6, t0
                  sub          zero, s9, s5
354:              sltu         s4, gp, s9
355:              auipc        t2, 764158
                  xori         tp, t1, 1415
                  lui          s6, 383710
358:              andi         tp, t4, -183
359:              bltu         s11, s7, 367f
                  or           t2, s4, tp
361:              bltu         t2, ra, 363f
                  sra          tp, a1, s2
363:              xor          zero, zero, zero
                  bltu         t2, s5, 383f
                  beq          sp, a2, 378f
                  xor          s11, a2, s6
367:              slti         s0, t0, 2012
                  xori         a1, s0, 1220
                  and          s8, sp, a4
                  sub          s4, s11, s8
                  sub          s7, tp, s3
                  srli         ra, zero, 11
                  srai         s0, s1, 27
                  sll          a0, s6, s11
                  slti         s8, zero, 1487
                  addi         a4, tp, 1366
                  slt          s1, a0, t1
378:              srai         t6, a0, 26
                  xor          gp, t5, s7
                  sltu         a4, t1, a2
                  srai         t6, a0, 12
                  blt          tp, t5, 399f
383:              xori         s7, a4, -240
                  beq          s0, a5, 403f
                  bgeu         gp, t0, 395f
                  bgeu         a1, t4, 398f
                  bne          s10, t2, 390f
                  beq          a4, s4, 398f
                  ori          s2, t3, -1730
390:              bge          a5, s5, 409f
                  addi         a0, a5, 1042
                  srli         sp, a3, 28
                  sub          s5, tp, gp
                  srai         tp, t2, 18
395:              add          t1, s7, t5
                  srai         s4, s9, 9
                  sltu         a6, a6, zero
398:              bgeu         s2, s5, 416f
399:              sub          sp, zero, a0
                  and          a4, t4, s0
                  auipc        s1, 147485
                  srai         t5, s9, 13
403:              slt          t4, t1, zero
                  ori          t4, s1, -264
                  and          s8, a2, s11
                  srl          s4, s2, a2
                  sltu         tp, s1, s11
                  srai         s5, s7, 24
409:              srl          a3, t4, t3
                  sltiu        s1, t1, 1171
                  srai         a4, s5, 27
                  slli         t3, a7, 11
                  slti         t4, s11, 1889
                  bne          gp, a5, 423f
                  and          a4, s10, t1
416:              slli         gp, s7, 23
                  slli         s8, sp, 4
                  auipc        t5, 1041317
                  bltu         t5, t6, 421f
                  sra          s1, s4, a4
421:              lui          s9, 688766
                  bne          s5, a3, 434f
423:              blt          a4, t1, 443f
                  slli         s7, s11, 31
                  or           t1, t4, a7
                  slli         t6, a5, 17
                  bltu         a3, t5, 446f
                  srai         a7, s9, 29
                  nop
                  slli         s8, t5, 25
                  auipc        s8, 581323
                  srl          s7, a3, a5
                  lui          s2, 254531
434:              srli         s2, s0, 31
                  sra          a0, s3, a2
                  bne          s6, s2, 446f
                  bne          a1, tp, 438f
438:              slti         s6, s11, -1096
                  beq          s5, a4, 456f
                  bge          a7, a3, 458f
                  bltu         zero, s5, 458f
                  bge          s11, s4, 455f
443:              sra          a7, s11, s0
                  slt          tp, s11, t2
                  srl          zero, a7, t5
446:              slti         s7, t2, -301
                  srli         a7, ra, 2
                  beq          s11, a2, 465f
                  sll          a0, s6, s0
                  bne          a6, s6, 463f
                  slti         a7, zero, 265
                  bltu         a5, s3, 469f
                  srl          t5, s8, s7
                  lui          t6, 652043
455:              xori         t3, a6, -671
456:              bltu         s1, gp, 473f
                  sra          zero, zero, s0
458:              sltiu        a6, s2, -404
                  srl          ra, t0, a0
                  and          tp, s9, a0
                  addi         s0, a5, -1337
                  srai         s1, t2, 0
463:              bgeu         t4, s4, 476f
                  lui          t5, 693173
465:              sra          a1, zero, ra
                  sltu         a3, s6, a5
                  slti         s0, t6, -1008
                  sll          t4, t6, gp
469:              srl          zero, s3, s4
                  sub          t2, a2, sp
                  sltiu        s6, t6, 1776
                  andi         zero, s8, 148
473:              and          t1, t5, zero
                  add          ra, t3, sp
                  bgeu         s10, a2, 492f
476:              add          a1, s0, s4
                  xor          a6, a1, a1
                  bltu         s6, s4, 496f
                  lui          s7, 281377
                  addi         a2, a6, 1553
                  beq          t2, s2, 501f
                  sltu         sp, zero, s2
                  sll          s1, s11, a0
                  srli         s2, a4, 19
                  add          t6, s0, a1
                  andi         t1, s6, 633
                  bgeu         s8, ra, 504f
                  sltu         s4, s5, t3
                  ori          a4, a0, 1139
                  slti         a2, s5, -335
                  sub          t1, s9, s9
492:              slli         s5, s4, 29
                  sltiu        s4, s6, 1091
                  slli         s2, gp, 25
                  nop
496:              sltiu        s4, zero, -1717
                  and          a7, ra, s4
                  srai         s0, s11, 21
                  bltu         s11, t1, 507f
                  beq          s7, s11, 519f
501:              andi         s0, t1, 1215
                  bge          t3, s2, 512f
                  xori         a4, zero, -771
504:              auipc        t5, 1026369
                  srli         ra, t4, 27
                  slt          t4, a5, s7
507:              or           t3, s3, s0
                  auipc        a7, 200746
                  srai         s1, t2, 29
                  and          tp, a0, s1
                  slli         a4, tp, 23
512:              bltu         a7, zero, 524f
                  sltu         s7, a1, a2
                  sub          gp, s11, s5
                  bge          t4, s4, 517f
                  bne          s2, t2, 528f
517:              slli         t6, a4, 31
                  srli         s2, s3, 10
519:              slt          t3, t3, t6
                  bne          s4, t0, 539f
                  slti         t3, ra, 702
                  srli         s5, sp, 30
                  blt          sp, a4, 542f
524:              blt          t4, s11, 543f
                  bne          s9, a3, 528f
                  add          a3, t5, t2
                  bge          s10, s4, 545f
528:              bne          zero, a6, 531f
                  auipc        gp, 723257
                  andi         s5, gp, 870
531:              slt          s1, a7, a3
                  andi         tp, t2, -409
                  sub          a6, a4, tp
                  slli         tp, a7, 6
                  srli         s2, gp, 2
                  bgeu         a4, s3, 537f
537:              andi         a3, tp, 916
                  auipc        a5, 456382
539:              sub          t3, gp, s2
                  bne          tp, a1, 547f
                  xor          s9, a6, s1
542:              ori          s4, s4, 1582
543:              ori          a6, s1, 1457
                  bge          t3, s10, 558f
545:              srli         a0, zero, 28
                  sltu         t2, a6, tp
547:              srl          t3, tp, a3
                  slti         s0, zero, -1005
                  sltiu        s8, s4, 1725
                  sltu         t1, s0, t2
                  sll          t3, t5, a1
                  bge          s1, a2, 554f
                  sll          s0, s7, t6
554:              blt          zero, a6, 564f
                  slti         gp, a2, 1951
                  and          s9, s6, s0
                  auipc        s1, 201440
558:              slt          t2, t1, t3
                  bne          sp, zero, 569f
                  srai         t1, s4, 28
                  or           gp, s10, a4
                  bge          t5, t5, 563f
563:              sltu         s2, gp, a6
564:              or           a7, gp, gp
                  and          a4, s10, t3
                  andi         t3, t3, -250
                  slt          s8, s7, ra
                  bgeu         s10, s11, 577f
569:              sltiu        zero, s8, -914
                  sub          a7, s0, a2
                  lui          t1, 108300
                  addi         s0, s2, 341
                  sltu         a4, a6, t4
                  blt          t2, gp, 584f
                  sub          s9, a4, t5
                  beq          s0, s5, 593f
577:              andi         s4, ra, 1437
                  slti         a1, t6, 1306
                  nop
                  xor          gp, s8, a5
                  sltu         ra, s7, s1
                  sub          a5, a6, gp
                  bgeu         sp, zero, 600f
584:              xori         s2, t1, -1453
                  lui          a2, 492744
                  sll          a0, t1, sp
                  beq          s9, t4, 596f
                  bgeu         t2, s10, 598f
                  nop
                  srai         zero, t5, 2
                  sra          ra, s5, a6
                  sltiu        a4, s3, -288
593:              nop
                  slli         a4, s4, 9
                  auipc        s2, 1010401
596:              xor          a3, s4, s6
                  srai         a1, a2, 30
598:              bne          t6, a1, 616f
                  srl          s1, a6, s8
600:              xori         t2, sp, -1615
                  ori          a4, s4, -1689
                  beq          ra, gp, 614f
                  xori         tp, zero, 463
                  lui          s8, 146367
                  addi         tp, s7, 1069
                  slt          a0, s3, a6
                  sra          s1, s10, s6
                  ori          a5, t2, 2002
                  blt          s3, t1, 628f
                  srl          s5, t4, sp
                  addi         s6, s7, 1393
                  add          sp, ra, a2
                  slli         a0, t0, 18
614:              and          s1, s4, sp
                  sub          a3, t3, t0
616:              slli         s4, s4, 6
                  sltu         t1, tp, t4
                  sub          s8, a3, s6
                  ori          gp, t1, -532
                  srl          a6, s10, s1
                  andi         a2, t2, -1680
                  beq          t2, s2, 624f
                  xor          t6, s10, s5
624:              add          sp, a0, zero
                  xori         a4, t6, 1888
                  sub          s7, s6, a6
                  nop
628:              lui          ra, 614674
                  sltiu        s5, t0, 1700
                  blt          a6, a4, 647f
                  sltiu        t5, t1, -181
                  slli         t6, tp, 4
                  auipc        a2, 696883
                  slt          t3, t3, sp
                  ori          zero, s7, -1443
                  sub          a6, gp, s8
                  beq          s4, t5, 656f
                  blt          s10, a2, 648f
                  bltu         tp, a0, 656f
                  and          s8, s4, a3
                  xori         ra, t5, 867
                  addi         tp, s2, 143
                  slli         t3, a7, 12
                  srai         gp, a2, 18
                  add          s0, t6, t3
                  sltu         a4, t5, a3
647:              slli         s0, s10, 10
648:              sltiu        ra, s11, 1529
                  or           a1, s3, a1
                  or           gp, t3, a3
                  bgeu         t0, a0, 653f
                  sltu         a4, t0, a1
653:              slti         sp, ra, -77
                  sub          a5, a1, s10
                  sub          a7, a0, s11
656:              bne          t0, s6, 666f
                  xor          s9, t3, t0
                  sltiu        a3, a5, -688
                  bge          s9, s10, 676f
                  srai         a7, a4, 10
                  add          t5, t6, a7
                  ori          t5, t6, -1981
                  bge          s8, a5, 676f
                  slt          s2, s7, s8
                  lui          s5, 904464
666:              sub          gp, a2, t4
                  nop
                  sltu         a5, s9, tp
                  or           gp, t1, tp
                  srai         a6, a3, 5
                  beq          t1, a2, 685f
                  srli         s6, t4, 8
                  andi         t4, a1, -362
                  srai         a6, t1, 3
                  bge          a1, t6, 694f
676:              srli         a4, s11, 31
                  addi         a3, s9, -1841
                  sra          a2, s6, tp
                  beq          s9, ra, 682f
                  slt          a2, a3, t4
                  xori         gp, a4, -1497
682:              srl          zero, s4, s7
                  auipc        s5, 580523
                  auipc        gp, 403892
685:              xori         s7, a0, -15
                  lui          s5, 429357
                  sltu         s11, s0, zero
                  sra          s1, t1, a1
                  andi         t2, s3, 668
                  beq          t4, s6, 697f
                  bgeu         sp, t5, 704f
                  srl          a0, a1, ra
                  slt          s1, s0, s8
694:              ori          t4, s6, 1276
                  srli         t4, s10, 0
                  sll          a3, a4, sp
697:              srl          a7, s6, s7
                  lui          s4, 450724
                  addi         s6, s1, -957
                  beq          s0, t1, 708f
                  ori          sp, s11, -388
                  lui          t6, 869610
                  beq          a2, s11, 706f
704:              bgeu         sp, s3, 724f
                  slt          t6, a3, s11
706:              bge          a2, tp, 724f
                  addi         t4, s4, 1032
708:              sltu         s5, a1, s10
                  sltu         tp, t5, a3
                  blt          s10, s0, 722f
                  sll          s4, a1, s10
                  bne          t1, s7, 722f
                  or           zero, s8, s0
                  sll          sp, s5, s8
                  sll          s9, t2, ra
                  blt          t3, s11, 733f
                  srli         a3, t6, 4
                  bltu         a3, a2, 719f
719:              bge          a0, tp, 738f
                  auipc        a6, 987908
                  addi         t1, a1, 1888
722:              sra          zero, a4, s2
                  srl          t1, ra, t0
724:              sll          a0, tp, t5
                  lui          s8, 690748
                  bne          s4, s1, 727f
727:              andi         zero, t6, 705
                  nop
                  la           sp, region_1+955 #start riscv_load_store_rand_instr_stream_6
                  lui          s6, 821070
                  andi         s1, a7, -1341
                  add          t4, s8, tp
                  sltu         s2, a2, a2
                  addi         t6, s6, 1620
                  slli         a7, s10, 22
                  andi         s2, zero, -951
                  addi         s8, tp, 1864
                  lb           t6, -60(sp)
                  sll          t1, tp, t6
                  nop
                  srai         t3, t0, 28
                  sll          gp, t4, s6
                  srli         a3, a3, 4
                  lui          gp, 621941
                  sb           sp, 4(sp)
                  xori         s8, t0, 1329
                  lhu          s4, -31(sp)
                  lh           a1, -19(sp)
                  sltu         a0, s7, ra
                  nop
                  addi         gp, a6, 1700
                  lui          s8, 807276
                  sltiu        t4, a3, -223
                  addi         s6, ra, -569
                  lbu          zero, 10(sp)
                  slti         s0, t5, 1514
                  ori          a2, a3, -1369
                  lh           s1, 39(sp)
                  sh           s11, 25(sp)
                  xor          t4, s9, a6
                  slti         a5, a1, -778
                  lw           s5, 21(sp)
                  sltiu        ra, a2, 1893
                  srl          t4, a2, t6
                  sh           s6, 33(sp)
                  lh           a2, -31(sp) #end riscv_load_store_rand_instr_stream_6
                  sltu         t1, s1, a2
                  ori          s9, a1, -918
                  bne          gp, ra, 743f
                  slli         a0, s0, 16
733:              blt          t5, t5, 752f
                  xor          a3, s8, s0
                  ori          a1, s2, -715
                  and          s11, a2, s7
                  sltu         s6, s9, ra
738:              sra          s1, t3, s10
                  xori         s5, s3, 381
                  lui          t2, 929132
                  sltu         s1, tp, a2
                  xor          s4, a7, t3
743:              and          s6, s5, s11
                  andi         s2, a7, 1324
                  xor          s5, s6, sp
                  slti         t2, a1, 456
                  beq          sp, t3, 766f
                  add          tp, t5, a4
                  bgeu         t5, s4, 766f
                  beq          s11, t1, 758f
                  srai         a6, s11, 24
752:              or           t2, s4, t3
                  ori          sp, a0, -1624
                  sltiu        s9, ra, 1217
                  andi         a6, s7, 1474
                  xor          t1, s7, t1
                  xori         t4, s4, -220
758:              and          a4, s4, s10
                  ori          t1, sp, -865
                  bge          zero, t3, 772f
                  srl          a4, a1, s6
                  sub          t3, s2, a5
                  sltu         tp, s8, gp
                  nop
                  beq          t4, sp, 772f
766:              andi         s9, s10, -684
                  xor          s4, gp, t3
                  srli         s11, s1, 10
                  srl          a0, t0, s1
                  bne          a1, t4, 788f
                  and          s1, t0, t6
772:              sll          ra, a2, a4
                  sub          t4, t4, s3
                  xori         a1, s6, 594
                  bne          a3, s11, 794f
                  bgeu         ra, s9, 793f
                  slt          s2, t4, a0
                  add          gp, a0, t1
                  sltiu        a5, t2, 1689
                  bne          s2, tp, 793f
                  bltu         t1, s7, 798f
                  add          t2, t3, a6
                  or           a1, t0, t1
                  auipc        a3, 154733
                  srl          a1, s9, tp
                  sra          s5, a5, s10
                  add          ra, a3, a3
788:              sll          a4, tp, s5
                  bge          t4, a5, 798f
                  bltu         s0, s6, 807f
                  slt          a6, a5, sp
                  slli         a1, t0, 23
793:              xor          s4, s6, a7
794:              sll          s1, a3, s3
                  ori          s0, t0, -582
                  add          t3, t3, s7
                  bltu         a5, a1, 807f
798:              auipc        a4, 775184
                  bltu         a7, zero, 812f
                  xori         s0, a5, -383
                  ori          t6, s5, -999
                  lui          t2, 439421
                  auipc        a6, 785910
                  auipc        s6, 992680
                  addi         a5, s6, 927
                  slli         s0, tp, 30
807:              sll          t2, a4, t6
                  bge          t0, t4, 825f
                  bgeu         s9, t0, 811f
                  slt          s7, tp, t1
811:              auipc        t5, 17655
812:              slli         t3, a5, 28
                  sltiu        a6, s3, 1400
                  slt          sp, t1, ra
                  srai         s8, a1, 25
                  bgeu         t3, a4, 817f
817:              sll          t2, s11, t1
                  srai         t5, t3, 7
                  bge          a0, s7, 837f
                  add          gp, s11, t6
                  slt          a3, s1, s4
                  or           a1, s6, s2
                  lui          zero, 782703
                  slt          a1, s9, a6
825:              auipc        a7, 934901
                  slti         a1, t5, 488
                  srl          sp, t0, sp
                  auipc        a0, 771428
                  srl          a6, t1, a6
                  add          s11, sp, tp
                  sltu         a0, t5, a1
                  slli         s1, s11, 16
                  addi         s2, a0, -1512
                  beq          a3, s4, 853f
                  auipc        t2, 129497
                  andi         t4, gp, 1406
837:              srai         sp, ra, 21
                  bltu         tp, a0, 858f
                  sra          t4, s0, s2
                  bge          a2, t4, 850f
                  slti         a7, t5, -1568
                  xori         a6, s9, -392
                  srl          t1, s11, s1
                  addi         t4, sp, -318
                  and          s6, a4, t1
                  add          t4, a6, s5
                  sub          a2, s9, s8
                  srli         t3, s8, 2
                  bne          a4, t3, 851f
850:              sltu         t3, t1, s6
851:              auipc        t5, 659908
                  bltu         s7, t2, 855f
853:              ori          t5, gp, -36
                  and          t3, a0, s6
855:              add          s4, a7, t0
                  bltu         a7, t1, 857f
857:              bgeu         a7, t2, 867f
858:              nop
                  bltu         tp, s0, 862f
                  andi         s7, tp, 1676
                  sll          a1, a3, sp
862:              xori         t1, ra, -984
                  bne          a7, tp, 873f
                  lui          gp, 173317
                  auipc        s8, 474963
                  sub          a4, a1, t5
867:              and          s8, s1, s0
                  slti         s7, a5, -473
                  sub          zero, a2, s10
                  slli         a2, a4, 26
                  blt          s7, a3, 885f
                  srl          t2, t3, s8
873:              addi         tp, t5, -1204
                  srai         s5, a7, 20
                  sltiu        sp, s11, -74
                  blt          s1, a3, 877f
877:              or           t2, s11, t4
                  srl          t3, t0, tp
                  slti         t3, s7, 1755
                  slti         sp, t3, -1409
                  srai         a4, tp, 10
                  bge          t3, sp, 899f
                  auipc        s8, 627365
                  beq          a6, a1, 901f
885:              sltiu        a4, t5, -37
                  srli         s7, t2, 17
                  slli         a5, gp, 3
                  ori          s7, a4, -1764
                  auipc        t5, 628499
                  beq          t1, s7, 909f
                  bltu         a2, a4, 909f
                  bltu         tp, zero, 899f
                  bge          s11, a1, 906f
                  sra          s4, sp, a4
                  sltu         t5, s9, a4
                  ori          s5, a5, 307
                  srli         s11, t2, 4
                  xor          a5, s9, sp
899:              bltu         a5, ra, 909f
                  bgeu         s8, s2, 920f
901:              addi         t3, s3, 666
                  ori          a7, tp, 50
                  sltu         a6, s4, a0
                  nop
                  bge          s3, t2, 907f
906:              slt          zero, s11, t4
907:              slti         a7, t3, 903
                  and          t6, t0, t5
909:              beq          a4, s6, 912f
                  bltu         t4, a4, 927f
                  slli         a1, s0, 12
912:              bne          t6, s2, 914f
                  beq          s7, s7, 922f
914:              slti         t2, s1, -1417
                  add          t1, s1, a1
                  lui          s8, 528475
                  bltu         a7, zero, 936f
                  blt          a1, gp, 936f
                  sra          t4, t0, s5
920:              sltu         s7, s1, s1
                  or           a5, a2, t2
922:              nop
                  srli         ra, gp, 13
                  slli         s0, s8, 22
                  srli         a2, a0, 8
                  slli         tp, sp, 2
927:              bge          a2, s4, 937f
                  slli         s6, a6, 7
                  add          s5, a4, s5
                  ori          ra, s0, -1155
                  andi         tp, a5, 1653
                  bgeu         s6, a0, 946f
                  slt          s9, t4, s5
                  addi         a0, t4, -337
                  bne          ra, a5, 954f
936:              add          s4, tp, s7
937:              or           s5, sp, t4
                  bgeu         s3, s11, 955f
                  slli         a6, sp, 1
                  xor          s2, s10, gp
                  bne          gp, a2, 951f
                  srai         t5, s5, 17
                  auipc        s0, 140395
                  or           sp, a6, t5
                  slti         t6, t2, 1518
946:              srai         a5, a2, 21
                  srli         t5, s11, 11
                  auipc        s0, 322501
                  blt          s7, s11, 961f
                  auipc        t4, 771536
951:              beq          t2, s7, 954f
                  add          a5, ra, a5
                  srl          s9, t1, t2
954:              sltu         t6, s3, s7
955:              bltu         s2, s1, 965f
                  srl          t1, a6, a0
                  andi         s5, a7, -1549
                  xori         a7, t0, 1749
                  nop
                  bne          a6, s7, 973f
961:              xor          a6, ra, t5
                  xori         t2, s11, -1086
                  bne          a3, t6, 975f
                  and          a0, tp, zero
965:              slti         s5, s1, 1361
                  bne          t2, s0, 974f
                  add          a5, t3, t5
                  auipc        s0, 289791
                  ori          a6, ra, -1135
                  xor          ra, a5, tp
                  and          t3, s1, a7
                  srl          sp, s5, s8
973:              beq          s9, s0, 976f
974:              auipc        s8, 343795
975:              slli         s2, gp, 11
976:              sltiu        a2, s10, -1293
                  and          sp, s10, ra
                  srai         t4, zero, 19
                  xor          t2, ra, gp
                  srl          s7, a2, tp
                  sub          a3, a2, s10
                  sra          s2, t6, t4
                  slli         a0, s8, 26
                  xori         a6, t1, 297
                  lw           ra, 4(s3)
                  addi         s3, s3, 32
                  xor          a5, tp, a6
1274:             addi x18, x1, 1
1274:             jalr x18, x18, 0
sub_7:            beq          s4, a3, sub_7_stack_p
                  srai         s8, t2, 9
                  sltu         s0, tp, a1
                  slli         s8, s3, 13
                  slti         t5, a6, -1879
sub_7_stack_p:    addi         s3, s3, -40
                  sra          a2, s7, a6
                  addi         a1, s1, -1232
                  sw           ra, 4(s3)
                  slti         s8, s7, -750
                  la           t3, sub_9
                  sltiu        tp, s4, -486
                  addi         t3, t3, 949
                  slti         s1, a2, -732
                  sra          s8, a5, a5
                  and          t6, s1, s11
                  sltiu        gp, s5, -1437
sub_7_j9:         jalr         ra, t3, -948 #jump sub_7 -> sub_9
                  slt          a1, t2, a6
                  ori          s8, s7, -2042
                  slt          sp, a1, t0
                  srl          t6, s2, a2
                  xori         gp, s0, -1349
sub_7_j10:        jal          ra, sub_8 #jump sub_7 -> sub_8
                  xor          s5, sp, s5
                  sltu         a0, s1, a6
                  sltiu        ra, a1, 1746
                  blt          a5, tp, 11f
                  slti         t3, a3, -1225
                  lui          t1, 1003765
                  addi         s11, a3, -1806
                  slli         t5, t5, 18
                  bltu         s7, zero, 11f
                  blt          s2, s1, 11f
                  bgeu         a0, s9, 11f
11:               srl          s6, s9, a6
                  addi         a4, s8, 865
                  lw           ra, 4(s3)
                  and          sp, t3, t2
                  sltu         a6, t3, sp
                  addi         s3, s3, 40
                  sltiu        tp, s5, -1537
                  sltu         a0, s3, a0
                  slt          s8, s4, a0
44:               addi x23, x1, 1
44:               jalr x23, x23, 0
sub_3:            bltu         t2, t3, sub_3_stack_p
sub_3_stack_p:    addi         s3, s3, -48
                  sw           ra, 4(s3)
                  slti         s4, ra, -1411
                  slli         a6, t4, 13
                  andi         tp, s2, 792
                  sra          s5, s0, s3
                  la           a3, region_0+968 #start riscv_load_store_rand_instr_stream_9
                  or           s7, s10, tp
                  lbu          a0, -138(a3)
                  lb           s9, -136(a3)
                  sll          a4, t5, sp
                  lb           s5, -154(a3)
                  ori          zero, t0, 2037
                  sb           t0, -221(a3)
                  xori         t6, sp, -1872
                  addi         t1, t6, 166
                  addi         t3, s10, -1256
                  slt          s6, s8, t0
                  lb           a7, -118(a3)
                  lb           tp, 131(a3)
                  addi         t5, t6, 101
                  sb           t0, -241(a3)
                  xori         s2, a5, -203
                  lh           s0, -210(a3)
                  lbu          t4, 242(a3)
                  slt          a0, a4, s0
                  lbu          a1, -137(a3)
                  sh           s1, 46(a3)
                  sb           a5, 181(a3)
                  sb           s5, -68(a3)
                  or           a7, a4, s2
                  lb           a2, 21(a3)
                  ori          a7, a5, -1427
                  sltu         a7, t2, s2
                  ori          s5, a4, -1734
                  lh           a1, 26(a3)
                  srai         s7, t1, 22
                  xor          t6, s2, s0
                  sb           t0, 139(a3)
                  sb           a4, 245(a3)
                  nop
                  sb           s3, 3(a3)
                  lbu          sp, 31(a3)
                  sub          s6, s0, t1
                  lbu          s1, -175(a3)
                  lw           s8, -208(a3) #end riscv_load_store_rand_instr_stream_9
                  la           t6, region_1+1857 #start riscv_load_store_rand_instr_stream_6
                  sltiu        s8, gp, 1778
                  sh           s7, -35(t6)
                  sh           t1, -109(t6)
                  sb           a3, 43(t6)
                  lbu          t4, -139(t6)
                  sb           a3, -104(t6)
                  lhu          s5, 93(t6)
                  sb           t5, -244(t6)
                  and          s2, a5, a7
                  slli         t2, t6, 31
                  sb           t6, 99(t6)
                  lw           a5, -41(t6)
                  nop
                  lh           a3, -5(t6)
                  lb           a0, -176(t6)
                  andi         zero, zero, -1517
                  lh           s8, 53(t6)
                  srl          a0, s2, a5
                  sb           s4, 119(t6)
                  lbu          s9, -198(t6)
                  sb           s11, -9(t6)
                  srai         a0, s8, 13
                  add          t1, t0, t2
                  lbu          t5, -133(t6)
                  sb           s1, -256(t6)
                  sh           sp, 57(t6)
                  auipc        s5, 753397
                  andi         s6, s9, -1543
                  lbu          s7, 57(t6)
                  srai         ra, s5, 7
                  sh           tp, 119(t6)
                  auipc        s2, 203645
                  lb           s2, -11(t6)
                  sll          s6, a6, a1
                  addi         a3, s8, 1292
                  slli         tp, ra, 23
                  lbu          ra, -201(t6)
                  auipc        gp, 682520
                  auipc        t3, 849084
                  sra          s8, gp, a7
                  sll          s8, s3, a1
                  lhu          s11, 99(t6)
                  srai         s2, a7, 14
                  lb           a6, 8(t6)
                  sb           s8, -252(t6)
                  lb           a5, -6(t6)
                  sb           s9, 57(t6) #end riscv_load_store_rand_instr_stream_6
                  la           a2, region_1+1232 #start riscv_load_store_rand_instr_stream_4
                  lb           a4, -62(a2)
                  addi         s1, a1, -1743
                  xori         zero, t3, 382
                  sb           s5, 165(a2)
                  lw           s0, -20(a2)
                  sb           s4, -141(a2)
                  slt          a1, sp, s9
                  sh           s9, -196(a2)
                  sb           ra, 220(a2)
                  lbu          a6, 124(a2)
                  xori         s6, gp, -636
                  lh           tp, -202(a2)
                  lb           t1, -122(a2)
                  lui          tp, 151609
                  lw           a1, -128(a2)
                  add          t6, t4, t1
                  lhu          a5, 248(a2)
                  lb           t5, 213(a2)
                  lb           s9, 209(a2)
                  slti         sp, t5, -415
                  lb           tp, 162(a2)
                  lb           zero, 39(a2)
                  xor          t3, a1, a4
                  or           gp, gp, s8
                  slli         s2, s6, 1
                  nop
                  srli         t6, s5, 14
                  lb           t4, 37(a2)
                  lhu          s1, 246(a2)
                  lhu          a0, -32(a2)
                  sra          s5, a4, s8
                  lbu          s11, -251(a2)
                  auipc        t1, 302851
                  lhu          s2, 118(a2)
                  sb           t5, -221(a2)
                  srai         sp, s11, 23
                  nop
                  add          s8, t1, t2
                  andi         s1, s6, -909
                  lbu          a1, -177(a2) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_0+636 #start riscv_load_store_rand_instr_stream_10
                  and          s1, t2, s5
                  xori         s6, t5, 1689
                  srli         a5, s3, 5
                  lhu          a3, 160(a0)
                  add          s7, s10, t1
                  lh           tp, 10(a0)
                  sb           t0, 44(a0)
                  lb           a2, 193(a0)
                  nop
                  lbu          a5, -255(a0)
                  auipc        tp, 745897
                  sub          s4, ra, s8
                  sltiu        sp, a1, 218
                  lbu          s2, 36(a0)
                  auipc        s6, 680456
                  lb           s5, -233(a0)
                  slt          s4, ra, s6
                  lb           s6, -137(a0)
                  nop
                  xori         t6, zero, -1441
                  lbu          s11, 133(a0)
                  lh           s11, 166(a0)
                  lb           tp, 189(a0)
                  lbu          t3, -57(a0)
                  sltiu        s4, a7, -133
                  sb           t5, 122(a0)
                  lb           s1, -227(a0)
                  add          s1, t2, a7
                  sll          a2, t0, s4
                  sb           s7, 71(a0)
                  lbu          a7, 107(a0)
                  slli         a2, s1, 23
                  lbu          gp, -223(a0)
                  sb           t5, 123(a0)
                  lb           a3, 113(a0)
                  srli         s0, ra, 16
                  slti         a1, a3, -188
                  lb           s2, 46(a0)
                  srli         sp, a4, 5
                  lbu          a6, -127(a0)
                  lh           tp, 16(a0)
                  andi         t6, t5, -1357
                  sltu         s0, s8, t1
                  slt          t1, a7, a7
                  srli         s7, s6, 3
                  lhu          s5, 120(a0)
                  lb           t1, -232(a0)
                  and          t4, t0, s2
                  lb           s4, -114(a0)
                  lbu          t3, -137(a0)
                  nop
                  lbu          s4, -170(a0) #end riscv_load_store_rand_instr_stream_10
                  la           a1, region_1+149 #start riscv_load_store_rand_instr_stream_11
                  lw           t4, 15(a1)
                  lb           a3, 15(a1)
                  lhu          a6, -7(a1)
                  lbu          s4, 8(a1)
                  lbu          a3, 0(a1)
                  lbu          a0, 3(a1)
                  and          sp, s1, ra
                  sltiu        s7, s1, -1792
                  xor          sp, s0, t1
                  srl          gp, a7, s1
                  sltiu        s2, gp, -1282
                  add          s2, s5, t4
                  sub          s6, a6, zero
                  addi         tp, a4, 704
                  and          s1, s9, s8
                  sra          a2, a2, t3
                  slti         t5, s5, -1365
                  ori          a5, s2, -1206
                  lhu          s6, -15(a1)
                  or           s2, ra, t2
                  xor          t6, a1, a2
                  sh           ra, -5(a1)
                  lhu          s0, -15(a1)
                  lui          s8, 912724
                  lb           t1, 0(a1)
                  auipc        a0, 828325
                  lb           s9, 2(a1)
                  lh           s11, -15(a1) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+737 #start riscv_load_store_rand_instr_stream_12
                  andi         t3, s8, -271
                  srai         tp, t4, 19
                  lbu          s7, 159(sp)
                  sb           s3, -41(sp)
                  srl          s7, s0, t3
                  lb           s11, 219(sp)
                  slti         t4, s7, 1590
                  lh           t2, 199(sp)
                  lbu          t3, 150(sp)
                  srai         a1, s11, 25
                  sb           gp, 21(sp)
                  sw           t6, -193(sp)
                  sh           a5, -245(sp)
                  xor          a5, a5, s4
                  lb           a0, 147(sp)
                  slti         a1, a3, -1821
                  srl          t5, t1, t3
                  sll          t6, sp, s11
                  sh           s5, -241(sp)
                  slti         s4, t6, -128
                  lb           t6, 246(sp)
                  lhu          t2, 109(sp)
                  slli         s2, ra, 24
                  andi         a5, a6, -306
                  sub          t2, tp, s4
                  lhu          t3, 21(sp)
                  lui          gp, 437433
                  lbu          t3, 62(sp)
                  lb           a6, 34(sp)
                  add          t5, a4, sp
                  lbu          s4, 232(sp)
                  sb           t2, -236(sp)
                  sb           t1, 164(sp) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_0+1695 #start riscv_load_store_rand_instr_stream_8
                  andi         s5, a5, 548
                  sltiu        tp, s0, -282
                  xor          a1, sp, t1
                  andi         s6, gp, -1503
                  slli         a6, t3, 18
                  ori          t2, t4, -461
                  lw           a1, 41(sp)
                  and          a5, a0, s10
                  andi         t1, s8, 764
                  lhu          ra, 39(sp)
                  addi         s7, t4, 1872
                  lb           a6, -27(sp)
                  lh           a6, 37(sp)
                  sltu         a0, s7, s11
                  lw           s1, 49(sp)
                  lb           t2, -18(sp)
                  srli         s9, t3, 22
                  lui          a5, 230558
                  and          s2, a6, s9
                  sltiu        s2, s9, 312
                  sra          s11, s7, s2
                  sb           s0, -62(sp)
                  sb           t5, 18(sp)
                  sh           ra, -5(sp)
                  lbu          t4, 40(sp)
                  sll          t1, s4, s7
                  lbu          a4, 6(sp)
                  lbu          t4, 27(sp)
                  nop
                  ori          s2, s10, -625
                  auipc        a6, 390609
                  sh           t0, 9(sp) #end riscv_load_store_rand_instr_stream_8
                  la           s8, region_0+1909 #start riscv_load_store_rand_instr_stream_1
                  sb           a5, 58(s8)
                  sltiu        s7, a4, 767
                  srli         t3, s6, 26
                  addi         sp, s9, -2046
                  lb           s4, -23(s8)
                  nop
                  lhu          a4, -7(s8)
                  sb           gp, 4(s8)
                  srl          ra, t3, sp
                  lbu          s4, -28(s8)
                  lh           a4, -49(s8)
                  lb           a2, -20(s8)
                  lb           s4, 28(s8)
                  slt          ra, ra, ra
                  sb           s11, 42(s8)
                  srli         sp, a2, 9
                  sb           t1, -45(s8)
                  lb           s2, 36(s8)
                  add          zero, t3, a2
                  or           s7, zero, a6
                  add          s4, gp, a6
                  sb           a1, 58(s8)
                  nop
                  sw           a5, -57(s8)
                  lw           s7, -5(s8)
                  lb           gp, 22(s8)
                  sub          a0, s7, t2
                  lbu          s5, 16(s8)
                  sb           a1, 58(s8)
                  lh           a1, 61(s8)
                  lb           t1, 22(s8)
                  lbu          s9, -60(s8)
                  lb           a0, -58(s8)
                  lbu          a7, 56(s8)
                  ori          s7, t0, -1163
                  lb           t1, -25(s8)
                  lbu          t2, 51(s8)
                  sb           s9, 36(s8)
                  nop
                  lbu          gp, 6(s8)
                  lb           s4, -25(s8) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_1+1877 #start riscv_load_store_rand_instr_stream_7
                  sra          a7, t1, t6
                  lhu          a0, 57(s11)
                  lhu          t6, -53(s11)
                  lhu          s2, -7(s11)
                  sb           s8, 45(s11)
                  lb           a7, -56(s11)
                  sh           s9, -13(s11)
                  srai         tp, t6, 26
                  lbu          t6, 15(s11)
                  sb           s11, -15(s11)
                  sltiu        a4, sp, -196
                  sb           s6, -42(s11)
                  lb           a7, -44(s11)
                  lw           t2, -41(s11)
                  lh           a2, 59(s11)
                  lhu          gp, 33(s11)
                  srli         a6, s3, 12
                  lb           a7, -5(s11)
                  lbu          t2, 8(s11)
                  lbu          a1, 33(s11)
                  lb           s1, -20(s11)
                  lb           tp, 24(s11)
                  sb           t3, -24(s11)
                  and          t5, s8, s4
                  sub          gp, a4, s10
                  sll          s1, t5, a4
                  lh           a2, 1(s11)
                  slti         s8, s4, -409
                  lbu          a1, 49(s11)
                  sh           sp, -11(s11)
                  sltiu        ra, t5, 242
                  slti         s5, a2, 1382
                  lb           t2, -59(s11)
                  lbu          a4, 16(s11)
                  lb           gp, 50(s11)
                  add          s1, tp, t0
                  lb           s8, 13(s11) #end riscv_load_store_rand_instr_stream_7
                  sll          s4, t5, s10
                  beq          zero, zero, 9f
                  sll          a7, t0, t0
                  sltu         a2, a6, s9
                  add          s0, sp, a2
                  bltu         a1, s1, 23f
                  sub          t4, t5, s2
                  add          s0, ra, a6
                  bltu         s8, gp, 15f
9:                bne          s11, s6, 11f
                  sub          s6, s2, t5
11:               bltu         s11, s1, 13f
                  srli         a6, zero, 18
13:               add          sp, t3, t5
                  slli         s9, s11, 27
                  la           sp, region_1+1938 #start riscv_load_store_rand_instr_stream_5
                  sb           zero, 0(sp)
                  sh           t3, 6(sp)
                  or           t6, a1, t2
                  lb           s8, 3(sp)
                  add          a3, t5, s4
                  and          s8, a6, s5
                  or           a5, t0, zero
                  lh           s11, -2(sp)
                  lbu          a2, 15(sp)
                  ori          a3, a6, -21
                  srl          s1, a0, a6
                  lb           a4, 4(sp)
                  lhu          a6, 16(sp)
                  ori          s0, sp, -1220
                  lh           s2, -8(sp)
                  lbu          t1, 11(sp)
                  sltiu        s9, s9, 1390
                  lbu          a4, 7(sp)
                  xor          s4, a7, s0
                  slti         s8, t5, -241
                  or           a5, t4, s8
                  xor          s7, s1, t3
                  xor          a1, a5, s8
                  lh           s8, 8(sp)
                  lh           a0, 6(sp)
                  lh           s9, -10(sp)
                  lh           t1, -2(sp)
                  sb           s1, 15(sp)
                  lb           s1, 15(sp)
                  lbu          a2, 5(sp)
                  lbu          t2, -14(sp)
                  lhu          s0, -14(sp)
                  lb           a4, -15(sp)
                  xori         s7, tp, -1077
                  or           a7, s4, a6
                  lbu          a5, 1(sp)
                  ori          a6, tp, 905
                  lhu          gp, 12(sp)
                  lbu          t5, 7(sp)
                  lhu          a6, -6(sp)
                  auipc        a1, 600143
                  xori         tp, t4, -73
                  lbu          t5, 14(sp)
                  slt          t5, a0, sp
                  nop
                  sh           s4, -10(sp)
                  sltiu        s1, a1, -1551
                  sb           t3, -8(sp)
                  ori          s8, s2, 797
                  and          s11, zero, s2
                  andi         s6, s4, -517
                  lbu          a4, 3(sp)
                  sb           zero, -11(sp) #end riscv_load_store_rand_instr_stream_5
15:               nop
                  add          t4, a3, gp
                  ori          t2, s1, -382
                  and          a2, t2, sp
                  xor          t6, s1, zero
                  srl          s2, s7, t0
                  add          t3, a2, a0
                  and          a7, tp, a3
23:               sra          a4, t0, t4
                  blt          gp, t2, 30f
                  bge          t0, s8, 34f
                  addi         a7, ra, -1684
                  bne          t2, a0, 45f
                  srl          a5, s6, t2
                  srai         s6, tp, 0
30:               bltu         sp, s9, 50f
                  slli         a3, t4, 6
                  slt          t4, ra, s7
                  xor          tp, s8, a4
34:               srli         s6, t5, 31
                  sra          t1, tp, t1
                  bgeu         s2, tp, 41f
                  slli         s5, s5, 1
                  sltiu        a1, t4, 280
                  xor          zero, s7, t1
                  lui          sp, 443289
41:               srli         s5, tp, 12
                  slli         a3, gp, 6
                  beq          sp, s1, 61f
                  lui          s1, 289687
45:               srli         s0, s9, 1
                  slti         s9, t5, 1306
                  addi         a7, a3, 157
                  addi         tp, tp, 1937
                  xori         ra, s4, -793
50:               bne          t4, a1, 54f
                  addi         t3, zero, 1466
                  bne          s11, s7, 55f
                  sltu         s1, s11, a7
54:               sra          ra, sp, s4
55:               xor          a0, a5, t5
                  slti         a3, a5, 1952
                  sra          tp, a5, a0
                  bltu         s4, s10, 65f
                  slli         t6, s0, 16
                  ori          a6, t0, -255
61:               xor          a6, t3, s6
                  sltiu        s2, s4, 399
                  slti         tp, s3, -1487
                  and          s11, s6, a2
65:               bge          t1, a5, 79f
                  lui          a4, 384933
                  nop
                  addi         a6, a7, 1226
                  xor          s11, s7, sp
                  slti         s11, ra, 511
                  sub          ra, s0, tp
                  addi         t4, sp, -1349
                  nop
                  sra          t5, s9, a5
                  and          s5, s7, tp
                  sltiu        zero, a4, 764
                  sltiu        gp, a7, -1622
                  blt          a7, a2, 98f
79:               xor          t5, t0, s5
                  sub          a3, sp, s6
                  andi         gp, t5, -1475
                  blt          s2, a3, 83f
83:               bne          s10, s5, 103f
                  nop
                  sltu         s5, s2, s10
                  addi         a4, s2, 934
                  srl          zero, s1, a2
                  add          zero, t5, s11
                  addi         t6, t3, 21
                  xori         s8, s3, -1813
                  srli         s9, s2, 20
                  or           a6, s0, s10
                  xor          sp, s9, t2
                  auipc        s5, 32429
                  bge          gp, zero, 96f
96:               srli         s1, zero, 31
                  srl          ra, s8, t1
98:               bgeu         s1, s1, 101f
                  srl          a2, a2, ra
                  blt          s5, t1, 113f
101:              bltu         a5, t3, 103f
                  addi         t5, s3, -933
103:              sltiu        a0, t4, -48
                  bne          s9, ra, 124f
                  auipc        a1, 611049
                  sltu         s2, a7, s3
                  slt          sp, a6, a0
                  bne          t0, t3, 127f
                  ori          t4, a0, 227
                  srli         s1, s10, 5
                  nop
                  and          s7, t6, sp
113:              srli         s8, s6, 19
                  nop
                  xor          t4, s5, a5
                  add          t5, s1, t4
                  auipc        a1, 280011
                  srai         s11, s3, 20
                  slt          t2, tp, a4
                  srli         a5, tp, 21
                  sub          ra, s8, a6
                  sub          t4, s10, zero
                  and          tp, s2, t6
124:              srli         a3, a2, 24
                  addi         t3, a3, 778
                  bge          a3, t1, 143f
127:              srl          t3, t5, a7
                  sra          s2, a0, s4
                  sra          s0, a1, t3
                  and          tp, a6, s0
                  sll          t5, s4, a5
                  srli         s6, a5, 10
                  srli         a6, a7, 23
                  sltiu        t5, s4, 539
                  slli         sp, sp, 25
                  sll          s7, ra, s3
                  xor          zero, t1, a2
                  xor          a2, s11, s3
                  bge          a2, a0, 150f
                  srli         s2, t0, 19
                  bgeu         tp, s2, 145f
                  sltu         a6, t1, a1
143:              bgeu         t5, a2, 150f
                  bne          a5, s5, 148f
145:              nop
                  slli         t1, t5, 14
                  bge          a6, t5, 148f
148:              xor          t1, t4, a7
                  andi         s0, s6, 1893
150:              srai         t4, a0, 1
                  bne          t1, s4, 155f
                  bge          t4, sp, 163f
                  slli         t1, sp, 8
                  srl          s1, gp, s8
155:              srl          a6, gp, s0
                  sll          a0, a0, t0
                  auipc        a7, 889904
                  lui          s6, 398027
                  and          t3, t1, t2
                  srl          s0, a0, t6
                  nop
                  addi         gp, t6, 1441
163:              add          t4, s10, a1
                  srli         s7, s3, 28
                  add          s7, t5, s5
                  xori         s7, s3, -1578
                  addi         s6, s3, 1696
                  srai         a5, s11, 3
                  bltu         t0, ra, 189f
                  bge          s5, a7, 172f
                  lui          t2, 1031644
172:              sll          a0, a0, a1
                  sra          a5, gp, s5
                  xor          gp, a7, a1
                  bne          a6, a5, 176f
176:              slli         a5, a4, 7
                  slti         s9, s5, 2041
                  auipc        ra, 165193
                  slt          s1, gp, s3
                  add          s4, t3, zero
                  bge          t2, a5, 198f
                  slli         a0, t3, 22
                  addi         a5, s4, 895
                  bge          t0, s9, 202f
                  nop
                  slti         ra, zero, 1826
                  slt          a2, t0, s0
                  and          s11, a2, s7
189:              sll          a4, s10, s6
                  sra          a0, t4, a1
                  srli         a4, sp, 2
                  andi         t5, s7, -1134
                  and          s6, a7, t0
                  srli         a7, a7, 18
                  blt          s5, t6, 215f
                  srl          s9, a4, s9
                  slt          t6, s1, tp
198:              nop
                  slli         t4, s5, 31
                  xor          t1, t2, s11
                  bne          a0, t0, 207f
202:              bge          t4, a2, 206f
                  srai         s5, s9, 4
                  or           a2, s9, a3
                  xori         zero, s4, -1055
206:              slt          s1, s3, a0
207:              blt          s11, gp, 209f
                  xor          t5, s2, a5
209:              slli         s11, t2, 4
                  slt          t3, sp, t0
                  srli         zero, sp, 29
                  lui          a3, 411656
                  or           s2, t6, a0
                  blt          a4, s9, 217f
215:              sub          s7, a7, t2
                  lui          s5, 854836
217:              xori         s9, s1, 2025
                  slli         a4, a1, 9
                  sra          a4, a5, a3
                  xor          s1, a6, a6
                  slt          t4, s4, a6
                  or           ra, t4, s7
                  slti         s6, t1, -1600
                  srai         ra, t0, 13
                  and          a3, t4, s0
                  slt          t3, s6, zero
                  beq          s7, a3, 247f
                  slti         s9, t3, 284
                  sub          s0, t0, s0
                  add          s11, t3, a2
                  andi         ra, t6, 1991
                  blt          t0, t6, 251f
                  sltiu        s4, t4, 608
                  srai         s6, a6, 19
                  xor          s0, a2, s1
                  and          s5, s3, t2
                  srl          s9, s1, s2
                  bne          s10, a0, 252f
                  sub          t4, s5, s3
                  sub          tp, a2, a7
                  or           a7, t1, t6
                  beq          a6, a0, 251f
                  bne          t1, a1, 256f
                  bgeu         s3, ra, 251f
                  slt          a6, t5, s7
                  srl          s1, a0, s3
247:              andi         t2, t2, 629
                  auipc        a4, 658602
                  addi         t6, t2, -1150
                  bgeu         tp, t6, 253f
251:              srli         tp, s7, 23
252:              bgeu         s2, s9, 257f
253:              slti         t6, t0, 1253
                  srli         t4, a1, 24
                  lui          a3, 949344
256:              bgeu         t5, t4, 274f
257:              or           a3, zero, s8
                  sub          s9, s11, a3
                  bltu         s9, t3, 266f
                  bge          a4, a2, 267f
                  srl          s8, s6, a6
                  auipc        s7, 144994
                  sra          a0, s10, t0
                  bne          t5, a7, 268f
                  bltu         t3, ra, 267f
266:              sltu         s9, s5, s1
267:              add          ra, a3, a1
268:              sltiu        s6, a4, 164
                  beq          a7, tp, 289f
                  nop
                  slt          s4, a3, s6
                  bne          s9, sp, 280f
                  bge          s0, s3, 274f
274:              bgeu         s0, s3, 292f
                  srli         t5, s10, 13
                  or           s6, s3, t1
                  bne          s5, a7, 278f
278:              sltu         a7, t5, t1
                  sltiu        s9, ra, 1147
280:              bne          t5, s10, 298f
                  srai         ra, s10, 24
                  and          s9, t2, a4
                  auipc        s9, 129762
                  slli         t6, t6, 28
                  bgeu         a0, t6, 292f
                  bne          a2, a4, 287f
287:              bge          t5, s11, 292f
                  xor          s5, t5, s8
289:              srl          s2, s10, s4
                  sra          s4, s0, s8
                  sub          a6, s7, a5
292:              slli         s4, t6, 6
                  bltu         s8, t6, 310f
                  add          a4, t2, s1
                  lui          s8, 318713
                  and          gp, tp, ra
                  slt          a5, sp, a6
298:              xori         s6, a3, 1500
                  and          a7, s10, a5
                  andi         t1, t0, -352
                  bltu         t5, s2, 312f
                  beq          a3, s8, 305f
                  add          a2, s3, s9
                  srai         s7, a7, 4
305:              bne          s5, s9, 314f
                  blt          a4, s0, 320f
                  srai         ra, t4, 7
                  sltiu        a3, t6, -661
                  slt          s2, s2, t0
310:              srl          a1, a6, s6
                  and          zero, a1, s2
312:              slti         zero, t6, -131
                  bltu         s4, a5, 314f
314:              blt          s3, t5, 318f
                  sra          s2, a1, a5
                  auipc        s11, 142767
                  blt          a4, s8, 319f
318:              srli         t1, s11, 11
319:              slti         t4, s4, -1532
320:              auipc        a2, 240013
                  beq          t2, s2, 323f
                  srli         a7, s9, 21
323:              sll          a1, a2, t3
                  beq          zero, a2, 342f
                  ori          gp, s2, 98
                  lui          a1, 898591
                  srl          a3, a3, a6
                  blt          t2, zero, 336f
                  xor          a6, a7, gp
                  nop
                  bltu         s9, s8, 332f
332:              and          s1, zero, t1
                  sltu         gp, s1, s9
                  slt          t6, s2, s2
                  and          s7, t5, s5
336:              sll          s6, s4, a1
                  srai         a2, a3, 4
                  addi         s9, a7, 1391
                  srli         s11, s9, 28
                  srl          a1, a5, t5
                  srl          sp, a1, a1
342:              blt          s1, t0, 362f
                  auipc        t5, 647579
                  add          s2, t1, a0
                  slli         s2, t2, 27
                  sub          s9, t3, t3
                  bge          gp, a6, 367f
                  blt          s10, s2, 368f
                  bltu         t4, ra, 353f
                  add          s6, s1, s5
                  bge          s3, t6, 355f
                  sub          zero, t0, a5
353:              srl          a5, sp, s4
                  xori         s5, a7, 999
355:              or           s2, gp, s0
                  addi         s0, a1, 336
                  slli         ra, t3, 13
                  or           s11, s9, a4
                  sra          t6, s8, s10
                  sltiu        s8, t3, 1320
                  slt          tp, t3, a6
362:              ori          s1, a7, 794
                  andi         a2, s10, -1235
                  addi         t6, s11, 1772
                  xor          ra, a3, t1
                  sltiu        a3, zero, 1638
367:              andi         s1, s4, -336
368:              auipc        t3, 440066
                  xor          gp, s1, t6
                  lui          s8, 863741
                  sltu         s6, sp, a2
                  slli         gp, s9, 13
                  sra          t5, t3, a4
                  bge          s7, t6, 394f
                  nop
                  xori         a6, t1, -331
                  add          a4, sp, s9
                  add          t4, gp, s1
                  ori          s6, s7, -1061
                  lui          a4, 701795
                  bgeu         s2, s6, 383f
                  slt          s0, s0, s5
383:              sub          s4, t0, s11
                  add          a1, a7, s6
                  nop
                  sltiu        s0, gp, -1821
                  sub          t4, s7, s4
                  auipc        s1, 568276
                  beq          tp, s2, 395f
                  srai         t5, t4, 10
                  lui          s2, 51252
                  slt          ra, ra, t1
                  addi         s8, s4, 1443
394:              sll          a3, s10, s7
395:              bltu         a2, a1, 402f
                  slti         s1, t6, 1117
                  srl          a6, s8, zero
                  or           t3, a5, gp
                  sltiu        t4, a0, 1502
                  xori         s1, t3, 1561
                  andi         s7, t1, -152
402:              add          sp, s0, a3
                  blt          s9, a7, 422f
                  blt          a1, t6, 407f
                  bltu         a2, s11, 423f
                  bge          t3, s3, 413f
407:              slti         sp, s6, 686
                  srli         s9, s5, 7
                  add          t6, s6, s4
                  bltu         s7, a1, 423f
                  bltu         gp, s4, 431f
                  sll          gp, a1, t5
413:              srl          s1, a2, t3
                  sra          s8, s11, s6
                  bgeu         a6, s8, 433f
                  sub          t4, t5, gp
                  sra          s7, s8, s11
                  bge          s7, s11, 437f
                  nop
                  bne          a5, s10, 427f
                  lui          s1, 578326
422:              addi         s7, t6, 1806
423:              auipc        s6, 521903
                  srl          sp, a2, s11
                  bge          s8, a4, 434f
                  xori         a2, s2, 1727
427:              sll          zero, t0, a1
                  nop
                  xori         a6, tp, -1435
                  ori          t5, t5, -1939
431:              beq          ra, s0, 451f
                  addi         t2, s0, -894
433:              bne          a0, s9, 435f
434:              xori         s1, a0, -1716
435:              xor          s9, s10, sp
                  and          zero, s11, a3
437:              srai         sp, a7, 7
                  sll          a3, s4, t4
                  auipc        a1, 602700
                  srl          a1, sp, t1
                  addi         a6, a6, 1284
                  or           t3, zero, s2
                  add          t2, t6, a5
                  bgeu         a4, a5, 446f
                  andi         s5, t1, -1584
446:              bgeu         gp, t5, 450f
                  auipc        a3, 296195
                  srli         a2, gp, 17
                  sra          a0, t0, t2
450:              xor          ra, a7, t4
451:              sub          s8, t0, tp
                  slli         s4, t3, 13
                  sltu         t1, zero, zero
                  xori         t4, tp, 1348
                  bltu         a0, s5, 461f
                  and          a2, a2, t3
                  auipc        gp, 97279
                  bltu         t2, t5, 476f
                  srli         a7, s9, 28
                  bgeu         a6, a4, 463f
461:              xor          s11, s7, a1
                  xori         a3, t2, 1333
463:              sltu         zero, a5, s10
                  auipc        s11, 85516
                  beq          t2, s5, 472f
                  ori          s1, a0, -246
                  srai         s6, tp, 5
                  srai         s2, a7, 7
                  sub          s8, zero, s4
                  srl          t1, ra, s10
                  bne          ra, t4, 472f
472:              srai         s5, t2, 14
                  or           s0, ra, a4
                  xori         s1, s9, 631
                  bltu         t3, gp, 482f
476:              srl          tp, sp, a3
                  blt          t5, s8, 488f
                  xori         a3, t5, -1624
                  bgeu         s2, a7, 481f
                  auipc        s8, 802648
481:              sltiu        a2, a5, -1227
482:              bgeu         t3, t4, 486f
                  auipc        s0, 815270
                  bltu         s0, s6, 498f
                  and          a7, s9, t5
486:              xori         a7, t1, 983
                  ori          gp, a0, 1245
488:              bgeu         gp, t0, 491f
                  slti         s11, zero, -141
                  sll          t6, t5, s2
491:              and          a6, s11, t5
                  blt          zero, s4, 500f
                  slti         zero, zero, -1582
                  srai         s0, t0, 17
                  andi         s11, t6, 544
                  slt          a5, a1, t3
                  nop
498:              slli         s5, a5, 5
                  bgeu         s5, t1, 512f
500:              add          a4, s7, a3
                  bne          t3, a0, 518f
                  add          a1, t3, zero
                  slli         s2, a7, 29
                  beq          tp, s3, 524f
                  and          a6, s9, t2
                  sltu         a0, t3, t6
                  sltiu        tp, a7, -1505
                  slt          t4, a1, ra
                  sltiu        a5, s2, 1516
                  blt          t4, s7, 530f
                  addi         s11, t5, -318
512:              auipc        s4, 579052
                  and          t6, zero, gp
                  and          s7, s4, s8
                  addi         s6, t4, -1322
                  xor          s1, t1, s2
                  and          s11, a7, a4
518:              bge          a5, t2, 523f
                  srai         a1, s7, 30
                  sra          sp, t2, t2
                  slti         a5, t2, 685
                  sltu         s7, s0, s2
523:              auipc        s11, 778629
524:              ori          a2, t4, 1609
                  sra          t3, s6, s4
                  bge          a3, a0, 527f
527:              bne          tp, s11, 528f
528:              bge          a4, a0, 546f
                  srli         t4, t3, 29
530:              slt          tp, s4, a4
                  sra          a1, s8, s1
                  blt          a1, a6, 536f
                  nop
                  beq          a6, s7, 538f
                  sub          t1, s8, s0
536:              slli         s5, tp, 31
                  add          t3, s9, ra
538:              slli         a5, t1, 14
                  sll          s0, zero, s4
                  xori         s7, t0, -1094
                  slli         ra, s8, 15
                  srai         t5, s3, 1
                  ori          a6, t2, -1289
                  slt          s0, gp, a1
                  auipc        s6, 315006
546:              bltu         s2, s6, 564f
                  bge          a0, s6, 567f
                  sll          s1, t6, s0
                  bne          tp, s11, 550f
550:              add          s6, s3, t6
                  bgeu         s4, t3, 565f
                  slt          t5, s5, s8
                  slli         s4, s4, 2
                  bge          sp, s5, 560f
                  srai         gp, s4, 13
                  slt          s5, t4, zero
                  sltiu        s4, t2, -140
                  and          s9, t2, t4
                  and          a7, a7, a2
560:              blt          zero, a1, 567f
                  nop
                  slti         sp, t4, -1305
                  srl          t5, zero, a0
564:              nop
565:              add          s6, s9, s5
                  sltu         a5, s3, a2
567:              nop
                  ori          a7, s5, 127
                  nop
                  andi         a3, tp, -337
                  addi         s0, zero, -1059
                  addi         a2, a6, -689
                  xor          t3, t2, s5
                  bltu         gp, s1, 582f
                  and          s0, t1, a3
                  auipc        s6, 164696
                  addi         s4, t5, 1104
                  add          s9, t1, zero
                  nop
                  slt          s4, zero, a2
                  add          a4, s11, s10
582:              sltiu        a6, ra, 1249
                  bltu         t1, s10, 586f
                  bne          t5, gp, 604f
                  or           t2, t6, tp
586:              auipc        s5, 496838
                  slti         s7, zero, -858
                  sltiu        a0, s1, -1631
                  and          t4, t0, t3
                  slti         s11, t2, 1688
                  srl          a5, s7, a3
                  or           zero, s0, ra
                  sub          a6, s0, t6
                  ori          s7, s10, 1740
                  auipc        s2, 12493
                  auipc        s7, 960113
                  or           s8, t2, a5
                  xor          a7, tp, a6
                  nop
                  srl          s2, s5, s11
                  nop
                  srl          a7, s5, s10
                  addi         a2, t4, -2030
604:              and          s8, t5, sp
                  or           t1, tp, gp
                  sub          zero, t5, sp
                  xor          ra, s1, a2
                  ori          s6, s6, 317
                  srl          t3, t6, t5
                  sra          s9, ra, s3
                  addi         ra, s11, -1166
                  xor          tp, s5, a4
                  nop
                  bne          t1, s1, 634f
                  addi         s4, tp, -581
                  bltu         t1, s10, 620f
                  addi         t1, sp, -617
                  addi         tp, s11, -27
                  add          a7, s6, s6
620:              bge          s0, s8, 625f
                  sll          zero, s4, s2
                  sub          s7, s1, s1
                  nop
                  bne          t2, a7, 637f
625:              srai         s6, s0, 7
                  auipc        s6, 554236
                  srai         s5, zero, 10
                  sra          tp, t3, s4
                  ori          s7, t3, 974
                  srai         s1, a6, 15
                  auipc        s7, 164566
                  and          t3, a1, s0
                  srai         sp, s3, 9
634:              sub          a3, gp, t2
                  sltiu        a2, s4, -24
                  nop
637:              sltiu        a3, gp, 1503
                  slli         sp, t1, 0
                  sll          s2, t3, a0
                  ori          t3, t4, 1700
                  addi         s9, t0, -1845
                  slt          t1, a2, a3
                  and          s9, a6, s5
                  slti         s6, s10, -801
                  srl          zero, gp, zero
                  xori         t2, zero, -1941
                  srl          t3, s4, tp
                  bge          a5, a1, 650f
                  srl          a2, s2, a7
650:              blt          s0, t5, 661f
                  sll          t2, s6, a3
                  slti         s5, s7, -437
                  slti         s4, s8, -173
                  slti         s2, a5, 654
                  slt          s11, s2, sp
                  or           a7, s5, t5
                  slt          gp, s11, t0
                  and          a7, a4, a6
                  srli         s5, t6, 6
                  bge          t6, a1, 664f
661:              srli         a3, t2, 29
                  slli         t3, s8, 14
                  bgeu         ra, a1, 665f
664:              beq          s11, t3, 673f
665:              or           zero, a6, s8
                  sltu         s1, a4, s6
                  sltu         a1, t2, s4
                  sltiu        a5, a0, -2031
                  lui          a0, 968405
                  and          a5, a3, tp
                  slli         s9, t0, 26
                  srli         a6, t5, 25
673:              blt          s3, a6, 692f
                  sltiu        s7, s7, -573
                  ori          zero, a3, -530
                  and          t1, a1, a7
                  srli         t2, a6, 25
                  or           s1, ra, t0
                  nop
                  andi         a7, a3, 1103
                  ori          s8, a6, -1840
                  lui          t4, 245289
                  beq          a5, s4, 690f
                  sra          sp, a4, s7
                  beq          s7, t3, 692f
                  xori         gp, gp, 429
                  srai         a1, a7, 8
                  blt          ra, s7, 706f
                  xor          a6, a4, a4
690:              nop
                  blt          s8, s5, 694f
692:              bne          s6, a7, 712f
                  and          s9, s10, s4
694:              beq          s11, s2, 696f
                  lui          sp, 845831
696:              bne          a0, s2, 697f
697:              srli         tp, t2, 11
                  bgeu         tp, t6, 699f
699:              srl          t1, t1, s5
                  slti         zero, t2, 233
                  xor          s6, t5, s1
                  xori         s0, s5, 758
                  sltu         s7, t5, ra
                  add          gp, zero, t0
                  slti         t6, a5, -1451
706:              bgeu         s1, s11, 724f
                  bge          s8, s0, 724f
                  lui          gp, 269822
                  sub          ra, s10, s2
                  add          a1, ra, a6
                  sltiu        ra, a7, 444
712:              bltu         t4, a4, 716f
                  slli         s7, a2, 2
                  lui          sp, 391939
                  xori         t5, s1, 729
716:              srai         zero, s5, 10
                  bge          t0, t1, 726f
                  beq          t3, tp, 738f
                  bne          zero, gp, 739f
                  bgeu         a1, t0, 722f
                  sra          a7, s11, a0
722:              slt          t2, s1, s6
                  bge          s11, t0, 740f
724:              or           s5, t0, t6
                  add          a4, t6, a0
726:              slt          a3, a3, s7
                  beq          s4, s6, 741f
                  lui          s1, 262103
                  slt          tp, zero, t2
                  sltu         tp, s4, zero
                  and          zero, t0, s11
                  srl          sp, s10, s9
                  ori          a3, t5, -647
                  sra          s5, s8, sp
                  add          a2, a0, s1
                  bltu         s8, gp, 743f
                  xor          t6, a5, t3
738:              xor          s1, s1, t0
739:              sll          s2, a1, s7
740:              addi         a1, s0, -801
741:              xor          t4, t1, s7
                  sra          s7, a1, a7
743:              add          tp, s8, a1
                  sltu         s11, a0, s2
                  sltu         s0, a4, t3
                  bgeu         t3, a4, 749f
                  lui          s2, 237085
                  blt          s8, t1, 753f
749:              slti         s0, s5, 376
                  or           a2, s11, s10
                  bne          gp, t6, 757f
                  sltu         s9, s6, zero
753:              add          a7, a2, t6
                  nop
                  xori         s7, s10, 1791
                  slti         s9, sp, -1220
757:              sltu         t6, ra, ra
                  srli         a1, s4, 5
                  srli         a0, s0, 28
                  add          a7, a3, t1
                  sra          s6, t1, a4
                  or           t4, s10, s4
                  lui          a7, 738266
                  andi         a0, t2, -855
                  srl          gp, s2, s1
                  addi         gp, tp, 1222
                  srli         s0, a6, 25
                  blt          s8, a4, 787f
                  slti         t1, gp, -1037
                  xor          a7, zero, s7
                  srl          a0, a6, t6
                  xori         a2, s0, -102
                  nop
                  add          t6, s4, s5
                  bltu         s9, s8, 795f
                  bgeu         t4, t3, 796f
                  andi         t2, s6, 1274
                  and          sp, tp, a1
                  or           s2, a2, a7
                  add          s6, s0, zero
                  add          a7, t0, s4
                  srli         t4, s9, 12
                  slti         s8, a7, -246
                  sub          t3, t4, s7
                  slt          t5, s5, s1
                  lui          t2, 55439
787:              srai         s11, s0, 21
                  bltu         zero, t2, 795f
                  beq          tp, s5, 800f
                  andi         t6, a2, -594
                  beq          t5, s10, 809f
                  bne          t6, s11, 796f
                  bltu         s2, s4, 794f
794:              andi         s5, a0, 1283
795:              nop
796:              bge          t3, tp, 797f
797:              ori          gp, s0, -313
                  ori          s7, ra, 671
                  and          gp, ra, s9
800:              sltu         s2, s8, t3
                  beq          ra, s9, 809f
                  bge          t4, s10, 805f
                  or           a2, t5, s11
                  sll          ra, gp, t6
805:              slli         s11, gp, 7
                  bgeu         t2, a4, 808f
                  sltu         gp, s11, s8
808:              sra          t5, t3, sp
809:              lui          t5, 640111
                  xor          a6, s4, s5
                  bltu         s11, a6, 824f
                  srli         s7, s1, 13
                  slt          s7, s5, t4
                  sll          t4, t4, a0
                  bne          s8, s9, 817f
                  and          t1, t1, a1
817:              sll          a1, t4, t3
                  addi         a0, t6, 1421
                  xor          t5, a4, t4
                  slti         s9, zero, 1681
                  sub          s2, s5, t6
                  bltu         s6, a6, 840f
                  bgeu         s8, a7, 830f
824:              srli         sp, s4, 29
                  auipc        s4, 128753
                  srl          s2, ra, s9
                  addi         a2, s11, -611
                  bne          sp, t1, 846f
                  lui          a3, 631081
830:              or           s4, a7, a4
                  and          a1, t5, zero
                  andi         s9, gp, -1356
                  or           a0, s3, s7
                  blt          a0, a0, 838f
                  beq          ra, s4, 836f
836:              auipc        a4, 842364
                  xori         zero, s7, -1819
838:              slti         s11, t3, -781
                  bgeu         t3, t0, 859f
840:              blt          tp, t4, 858f
                  slli         zero, s3, 29
                  xor          a7, tp, t1
                  beq          s10, s5, 849f
                  bge          a4, t1, 851f
                  slti         s1, s11, -1339
846:              sltu         a0, s10, t0
                  or           a5, s10, t0
                  sltu         a1, a0, s1
849:              andi         t2, s5, -819
                  blt          s5, s5, 863f
851:              bne          s3, a5, 870f
                  lui          gp, 335877
                  blt          s1, sp, 867f
                  xor          t6, t3, s5
                  beq          a5, s3, 859f
                  xori         s4, zero, 279
                  ori          s2, s10, -449
858:              sub          s9, s3, t0
859:              srli         s5, t3, 26
                  srli         a3, t2, 14
                  ori          gp, s8, 1893
                  andi         t6, t2, 1403
863:              andi         s1, a5, 1097
                  bne          s4, s9, 867f
                  bgeu         gp, zero, 885f
                  sub          s1, a4, s8
867:              sltiu        a2, s6, -1550
                  beq          s1, t2, 885f
                  slli         a0, sp, 0
870:              add          t2, sp, t3
                  and          s2, sp, t2
                  or           s2, a2, a6
                  slli         s11, s4, 5
                  sltu         s5, t4, a3
                  bltu         a4, s1, 893f
                  add          t3, s5, s10
                  or           a3, s3, s7
                  xori         t1, t5, 720
                  srli         sp, a7, 30
                  add          gp, gp, s10
                  addi         s0, a7, 1274
                  ori          s8, zero, 1139
                  ori          s8, s2, -225
                  beq          a7, s2, 886f
885:              nop
886:              addi         s9, t1, -899
                  or           s1, t3, tp
                  srli         a7, gp, 14
                  beq          ra, sp, 907f
                  bge          a5, t0, 891f
891:              blt          s1, t4, 911f
                  srli         a5, t1, 29
893:              ori          s1, ra, -1111
                  addi         a1, gp, -1217
                  beq          s1, s10, 906f
                  srai         s11, s4, 30
                  lui          tp, 556913
                  bge          s8, s5, 918f
                  sub          s11, t6, ra
                  bltu         t6, s1, 907f
                  sub          gp, a4, a6
                  sll          t2, t4, a5
                  beq          a5, a0, 908f
                  auipc        s1, 355710
                  srli         a5, tp, 11
906:              sll          zero, s8, tp
907:              slli         t1, gp, 21
908:              addi         a4, a1, -1606
                  bge          t2, s0, 910f
910:              lui          a4, 849551
911:              sra          a0, s2, t4
                  ori          a3, t0, -989
                  slti         s9, a7, 1118
                  sltiu        sp, a5, -1014
                  beq          a2, s3, 918f
                  sub          s0, s11, t3
                  slli         gp, t0, 14
918:              slt          a4, ra, s9
                  bne          s7, a6, 923f
                  auipc        t6, 446101
                  slli         a4, tp, 23
                  xor          s6, zero, s6
923:              lui          t6, 160178
                  sll          s2, t2, a1
                  andi         t4, t1, -882
                  slli         s8, s0, 26
                  beq          s1, t4, 935f
                  bge          s11, tp, 930f
                  andi         s9, s11, -1598
                  la           sp, region_1+629 #start riscv_load_store_rand_instr_stream_0
                  srli         t2, s2, 3
                  sh           s3, -217(sp)
                  sh           a0, -119(sp)
                  sw           tp, 135(sp)
                  sw           s9, 1283(sp)
                  nop
                  sw           s5, -89(sp)
                  lb           a2, 976(sp)
                  ori          s1, s11, 2022
                  lw           ra, 763(sp)
                  lb           s7, 268(sp)
                  lb           s7, -416(sp)
                  lh           gp, 879(sp)
                  lhu          a1, 191(sp)
                  lbu          t2, 654(sp)
                  xor          t3, t3, s1
                  lh           tp, 1201(sp)
                  sltu         t1, s11, a5
                  sb           s7, -126(sp)
                  sb           s1, -514(sp)
                  lb           s4, 304(sp)
                  lb           gp, 364(sp)
                  sb           zero, 136(sp)
                  sb           t4, -543(sp)
                  lh           zero, -275(sp)
                  lbu          a4, -464(sp)
                  srl          a0, t5, a6
                  auipc        gp, 711804
                  lh           a7, -125(sp)
                  sb           sp, 337(sp)
                  lb           s1, 450(sp)
                  lbu          t3, -394(sp)
                  lui          ra, 102126
                  srli         s7, tp, 22
                  sh           s2, 1089(sp)
                  sh           s8, -11(sp)
                  addi         t5, s11, 1424
                  sra          s7, a0, tp
                  lbu          tp, 809(sp) #end riscv_load_store_rand_instr_stream_0
930:              or           ra, s11, s8
                  bge          s9, s0, 940f
                  slt          s5, a7, t0
                  slti         a1, t4, 410
                  sub          zero, t1, a6
935:              slli         t1, zero, 24
                  lui          s0, 810653
                  nop
                  blt          s1, s10, 940f
                  beq          a1, s10, 940f
940:              bltu         t3, s11, 944f
                  bgeu         s5, t4, 948f
                  add          a0, s7, t4
                  srai         s9, s8, 17
944:              bltu         s1, t1, 955f
                  bne          s9, s1, 964f
                  beq          sp, s11, 948f
                  srai         t2, a6, 21
948:              srl          t5, t2, s4
                  bne          s7, s1, 953f
                  xor          s0, a5, s8
                  xori         sp, a4, -658
                  xori         zero, s9, 540
953:              slt          t1, t4, s6
                  lui          a4, 443803
955:              ori          t4, sp, 1079
                  blt          s3, a7, 969f
                  beq          tp, t6, 977f
                  addi         s5, a4, 720
                  srli         gp, t0, 11
                  lui          s0, 900505
                  slli         s5, s6, 23
                  auipc        sp, 440884
                  sra          ra, s9, t3
964:              auipc        s0, 838992
                  lui          s5, 1036005
                  and          s8, ra, a3
                  bne          s5, gp, 987f
                  lui          sp, 749928
969:              and          s1, a2, a4
                  srli         s2, s5, 30
                  slt          a4, gp, s5
                  srai         a0, t0, 2
                  sra          a0, tp, a7
                  sub          s5, a4, a6
                  slt          a2, zero, t4
                  add          s9, t4, s0
977:              blt          s0, a4, 980f
                  andi         a7, s4, 573
                  sltiu        a0, ra, -745
980:              sltu         a2, a1, tp
                  lui          s0, 131534
                  srl          a4, a6, sp
                  slti         gp, tp, -76
                  srl          ra, a3, s5
                  andi         t3, s4, -959
                  nop
987:              slli         a5, a2, 29
                  lui          tp, 365977
                  xori         t3, a0, -1086
                  andi         s0, gp, 236
                  srai         ra, s8, 10
                  lui          s7, 620107
                  xori         a6, t5, 1595
                  slt          s8, s7, s6
                  bge          a0, t0, 1012f
                  sltu         s8, gp, s8
                  xor          sp, t5, ra
                  and          s1, s3, a1
                  andi         a1, zero, 894
                  andi         s4, s1, 1635
                  sub          s7, s3, ra
                  ori          a3, tp, -1178
                  blt          t3, t4, 1007f
                  srai         s0, s3, 16
                  srl          a7, ra, s11
                  srli         s6, a0, 22
1007:             srli         a6, a5, 6
                  srl          a2, a0, zero
                  slli         tp, a0, 26
                  xor          a5, t1, s1
                  andi         a6, sp, -1795
1012:             nop
                  bne          t5, s5, 1014f
1014:             sra          t6, s11, zero
                  bne          t6, gp, 1022f
                  slli         s11, sp, 13
                  or           t6, a6, a6
                  slt          t4, a0, t6
                  xori         s8, s2, 416
                  slti         t2, t2, 415
                  bgeu         s0, tp, 1028f
1022:             nop
                  lui          t3, 189648
                  xori         s7, t0, -839
                  srli         t2, s2, 12
                  sll          s7, a5, a1
                  and          s6, s10, s4
1028:             lui          a1, 660249
                  bne          s3, t4, 1031f
                  bne          s6, s8, 1038f
1031:             sll          t2, t6, s8
                  or           t6, a7, s3
                  bne          s3, gp, 1038f
                  xor          t6, s8, s9
                  srli         t4, tp, 21
                  bne          a6, sp, 1039f
                  auipc        a0, 208210
1038:             sub          t4, gp, s1
1039:             nop
                  blt          t1, s3, 1047f
                  slti         a7, s11, -777
                  sll          s4, s11, ra
                  bgeu         a4, zero, 1061f
                  lui          t4, 41405
                  slli         t5, s7, 8
                  sll          t3, a2, s10
1047:             srl          t6, s10, s6
                  slt          gp, s7, tp
                  srl          a5, a4, t3
                  beq          ra, s0, 1068f
                  srli         ra, a0, 20
                  bgeu         a4, s5, 1056f
                  auipc        s5, 760315
                  slt          s9, t2, gp
                  srl          a4, a6, s11
1056:             beq          s5, s8, 1076f
                  andi         a7, t2, -1789
                  srai         t4, ra, 25
                  bgeu         a7, s1, 1077f
                  sra          a1, a3, a2
1061:             add          s6, s2, t6
                  nop
                  bgeu         s3, a7, 1065f
                  bgeu         s8, s8, 1070f
1065:             srl          a6, s11, s10
                  addi         t4, zero, 675
                  xori         a7, a4, -2043
1068:             xor          sp, a6, sp
                  and          s0, t1, s7
1070:             sltiu        a6, ra, 1587
                  beq          s4, t5, 1085f
                  sltiu        t6, a2, 1039
                  bgeu         s8, s9, 1093f
                  bgeu         zero, tp, 1075f
1075:             blt          s7, a1, 1076f
1076:             sll          a1, sp, gp
1077:             or           s5, t4, a7
                  xori         a1, s8, 447
                  sra          s11, s9, s5
                  bne          t3, a0, 1089f
                  srl          a5, sp, a4
                  sra          ra, a6, t5
                  sltu         s9, zero, t6
                  or           a5, a1, t2
1085:             xori         s6, tp, 1853
                  ori          tp, s4, 1307
                  srl          s4, s4, s3
                  or           a7, a2, t4
1089:             slt          zero, t4, a3
                  srai         s4, s9, 0
                  slli         a2, a5, 7
                  nop
1093:             slti         tp, a2, 1109
                  srl          a4, a0, s11
                  xori         a1, s3, 931
                  or           t3, t4, t1
                  bne          a1, a1, 1102f
                  srai         s7, t3, 4
                  bne          gp, s11, 1110f
                  srai         a6, ra, 23
                  ori          a1, t2, -366
1102:             ori          s7, a1, -54
                  sltiu        a3, a0, -1921
                  beq          t5, t1, 1105f
1105:             bltu         s8, ra, 1122f
                  bgeu         t5, a1, 1109f
                  or           gp, t4, ra
                  sll          t3, s7, s4
1109:             bgeu         ra, a0, 1112f
1110:             and          zero, a0, t6
                  srli         a4, s2, 4
1112:             sub          s11, a5, a4
                  srli         t3, t2, 20
                  beq          s6, s10, 1121f
                  ori          a6, a4, 1110
                  addi         a2, a1, -1086
                  bltu         zero, s5, 1124f
                  addi         t5, a1, 563
                  auipc        ra, 417841
                  and          s11, s4, t1
1121:             sra          a5, s0, t2
1122:             ori          s4, a3, 392
                  add          s7, t1, t2
1124:             andi         t2, s5, -802
                  nop
                  sub          t4, s5, s9
                  slt          gp, s11, s0
                  add          t4, a3, a6
                  or           s5, t1, s5
                  sltu         a1, s2, s4
                  xori         a5, t0, -319
                  bne          ra, a2, 1134f
                  sll          s0, s5, t3
1134:             srl          a5, zero, s5
                  slt          t5, a2, tp
                  sra          gp, s3, t6
                  andi         t6, s6, -1607
                  lui          a1, 748727
                  sra          a2, zero, a4
                  xor          a5, a6, a3
                  beq          s9, s11, 1149f
                  and          s4, a6, t2
                  or           a6, a1, s6
                  bge          t1, a3, 1148f
                  bne          a1, tp, 1165f
                  auipc        s9, 564864
                  slli         ra, s3, 19
1148:             andi         s6, t6, 435
1149:             slt          t6, t1, s6
                  bgeu         s7, s10, 1152f
                  bge          t4, s11, 1164f
1152:             sub          a2, a5, a2
                  ori          ra, zero, 301
                  slt          t5, a2, a3
                  addi         a2, s4, -402
                  add          sp, ra, t1
                  sltiu        a4, t2, 1833
                  srl          ra, a5, t0
                  or           t1, s7, a3
                  ori          a4, t4, 1449
                  sra          t1, a3, t4
                  lui          a6, 534645
                  bne          a6, gp, 1181f
1164:             add          sp, s10, s9
1165:             bgeu         s0, s11, 1183f
                  bgeu         t5, a4, 1167f
1167:             bltu         t4, t3, 1187f
                  sub          a5, s5, sp
                  add          a3, s4, s7
                  sra          s5, t3, a5
                  lui          gp, 214570
                  bgeu         s2, a2, 1186f
                  blt          a7, a1, 1177f
                  bne          t4, s3, 1180f
                  lui          sp, 955541
                  bltu         s5, a1, 1194f
1177:             slti         s7, a6, 1162
                  and          s1, s2, a4
                  xor          t6, s10, a2
1180:             add          s5, s7, t3
1181:             and          zero, t1, ra
                  or           zero, ra, s8
1183:             and          t3, s2, s0
                  bltu         s9, s3, 1191f
                  xori         s2, s0, 1252
1186:             xori         s8, a3, 775
1187:             sll          t2, s3, s2
                  ori          a1, s5, 1199
                  slti         s1, tp, 1458
                  sll          s8, s7, s4
1191:             bge          a0, a4, 1200f
                  and          a7, s10, a5
                  sub          sp, t1, s3
1194:             bgeu         a0, s1, 1213f
                  auipc        t1, 474237
                  ori          ra, t2, 1652
                  beq          s3, a3, 1217f
                  beq          t6, t4, 1200f
                  xori         a4, t2, -971
1200:             srai         s0, s6, 4
                  nop
                  bltu         t6, a1, 1203f
1203:             sra          t1, t6, t6
                  lui          s1, 299034
                  nop
                  sltiu        s6, s0, -1813
                  and          t3, sp, s7
                  srl          s7, s2, s3
                  nop
                  xor          sp, a3, t1
                  sltiu        sp, t0, 1367
                  addi         t5, a4, -743
1213:             srl          s8, t0, a4
                  andi         s7, s11, 1015
                  srai         t6, s6, 18
                  auipc        s8, 713034
1217:             and          s4, t6, a6
                  srai         s11, tp, 5
                  beq          t3, s10, 1223f
                  ori          s2, t4, -362
                  bgeu         a6, s4, 1241f
                  bltu         t3, t4, 1228f
1223:             slli         a7, a0, 9
                  sra          a6, a0, a3
                  bge          t4, s10, 1227f
                  auipc        t1, 201442
1227:             srl          gp, s10, a2
1228:             slli         ra, a4, 20
                  srli         s9, t6, 8
                  sra          s5, a2, t4
                  ori          s8, a5, -1180
                  slti         a4, t6, -677
                  sltu         a3, s5, t5
                  slti         a2, a4, -797
                  bltu         s10, a4, 1255f
                  bltu         s4, t0, 1240f
                  lui          t4, 190059
                  sub          a0, s10, s7
                  bge          s0, a5, 1240f
1240:             andi         a5, s8, -1062
1241:             bne          t3, a2, 1261f
                  slt          a3, t2, s8
                  xori         a4, t0, -1120
                  and          a4, s2, tp
                  sll          a7, gp, sp
                  slt          s7, a7, a6
                  srl          t3, tp, s11
                  srli         a0, a4, 8
                  bgeu         s6, s4, 1253f
                  xori         a3, a1, -1926
                  blt          s10, a5, 1252f
1252:             blt          s6, s5, 1259f
1253:             sltu         a6, s4, t3
                  sll          t5, s2, sp
1255:             bne          ra, gp, 1275f
                  sra          s5, s3, s2
                  slti         tp, s7, -136
                  srli         s5, s10, 0
1259:             bne          s6, s5, 1268f
                  or           s9, t3, tp
1261:             and          s9, s4, a4
                  and          s11, a3, a1
                  bgeu         a7, a2, 1265f
                  or           sp, a6, s3
1265:             add          gp, gp, a4
                  or           s5, a2, s7
                  or           s8, t2, t4
1268:             and          s0, s10, gp
                  and          t1, a7, s9
                  bne          s11, t0, 1277f
                  sra          s1, s3, s8
                  sltiu        tp, s11, -593
                  blt          s1, s1, 1291f
                  sll          s0, a2, ra
1275:             xori         s8, s9, -1992
                  and          t4, s11, s6
1277:             srai         a0, a3, 25
                  sll          a4, t3, a0
                  sltiu        a0, a7, -177
                  slli         s7, s3, 5
                  bge          s3, a1, 1285f
                  or           a5, a3, s5
                  beq          a5, a6, 1303f
                  auipc        a6, 198488
1285:             nop
                  xori         s1, a5, 1935
                  slli         s6, s9, 5
                  xor          gp, s9, ra
                  bge          s9, s7, 1291f
                  add          s6, t3, t0
1291:             xor          a3, s0, t2
                  xor          t3, s9, s11
                  ori          a4, s6, 1060
                  bgeu         s8, t6, 1313f
                  beq          zero, s8, 1312f
                  andi         ra, a1, 1215
                  sub          a1, a3, s5
                  blt          a0, t5, 1306f
                  ori          t1, s3, -899
                  slli         a2, t2, 17
                  nop
                  blt          tp, a1, 1316f
1303:             slt          a4, s11, s10
                  sltiu        s2, s6, -258
                  slt          t4, zero, a7
1306:             sub          t6, s2, a2
                  slti         s11, s7, 1920
                  lui          s2, 48553
                  beq          s0, s3, 1316f
                  and          s0, zero, zero
                  slli         s5, zero, 9
1312:             add          s4, s10, tp
1313:             sub          sp, s0, a5
                  addi         s6, tp, 1131
                  bge          s11, zero, 1333f
1316:             xor          ra, s7, a1
                  add          a6, sp, zero
                  auipc        a7, 727498
                  sra          s4, a4, t0
                  sll          s6, t5, s7
                  or           zero, a5, s4
                  bge          a4, tp, 1325f
                  sub          s8, sp, s6
                  bge          ra, s4, 1325f
1325:             add          t5, ra, s4
                  auipc        t5, 949605
                  or           s4, t3, s11
                  xori         t2, t1, 1981
                  sltu         a7, sp, t2
                  slli         sp, t3, 26
                  lui          a3, 763937
                  auipc        a4, 357773
1333:             ori          s4, t4, 824
                  slt          t6, t1, s0
                  sub          s6, s4, s5
                  or           a0, zero, s11
                  bne          t2, a5, 1348f
                  nop
                  srai         a2, s6, 30
                  bgeu         s3, a4, 1345f
                  beq          s11, s10, 1359f
                  nop
                  addi         t5, s3, -1611
                  nop
1345:             lui          t4, 368550
                  bltu         gp, s6, 1349f
                  lui          a2, 984300
1348:             bne          s3, tp, 1361f
1349:             bltu         t2, gp, 1350f
1350:             lui          t3, 566601
                  xori         s6, s3, -915
                  srl          s0, a4, sp
                  srli         s1, a5, 19
                  bne          zero, a5, 1373f
                  srai         s8, t0, 3
                  srli         zero, gp, 18
                  sub          t2, a1, s5
                  bge          s5, t0, 1376f
1359:             blt          a0, t2, 1360f
1360:             add          s8, a3, s9
1361:             lui          t5, 257522
                  bge          s2, s10, 1365f
                  xori         ra, s3, -1268
                  sltiu        zero, s3, 649
1365:             sll          t1, s9, a5
                  beq          t5, a2, 1370f
                  srai         s6, tp, 17
                  slti         tp, t1, 584
                  bltu         s0, s7, 1372f
1370:             or           s2, s2, tp
                  bltu         t4, t3, 1373f
1372:             sub          s11, s5, a6
1373:             bltu         a7, t5, 1387f
                  sll          sp, a3, t1
                  sra          a6, t1, a5
1376:             add          s0, a1, s3
                  srl          s11, a7, s8
                  lui          sp, 893031
                  beq          a5, a5, 1397f
                  slti         tp, t2, -1299
                  andi         t3, a7, 750
                  auipc        t5, 971404
                  beq          ra, tp, 1403f
                  beq          s1, s3, 1391f
                  and          gp, s1, t2
                  bge          t5, s8, 1393f
1387:             xor          a2, a3, s7
                  addi         ra, s2, 25
                  blt          a3, a7, 1391f
                  ori          t3, s6, -1938
1391:             addi         t4, s4, 1715
                  sltiu        a0, t4, 1832
1393:             srl          zero, s1, s7
                  xori         s9, s5, -1643
                  bgeu         s6, t3, 1415f
                  slt          t6, s11, s8
1397:             slli         s2, sp, 18
                  slti         a6, s10, -1168
                  and          t2, a5, tp
                  la           sp, region_1+216 #start riscv_load_store_rand_instr_stream_3
                  sltiu        a0, a2, 8
                  sb           a4, 13(sp)
                  lbu          a0, -13(sp)
                  ori          a4, s2, -91
                  lw           t1, -16(sp)
                  sb           s11, 3(sp)
                  sb           s0, 13(sp)
                  lbu          zero, -1(sp)
                  lbu          a3, 7(sp)
                  sb           t4, -5(sp)
                  sb           s2, -8(sp)
                  lhu          s9, 0(sp)
                  lbu          s4, 5(sp)
                  sh           t4, -6(sp)
                  srl          ra, a2, a6
                  lbu          a0, -11(sp)
                  lh           s1, -12(sp)
                  lb           t2, 5(sp)
                  sb           s6, 11(sp)
                  slt          s0, a7, s3
                  sb           gp, -2(sp)
                  nop
                  lbu          a6, -16(sp)
                  lui          a7, 85716
                  lb           a0, 5(sp)
                  slti         t3, sp, -388
                  nop
                  sb           t6, -8(sp)
                  add          s8, ra, t0
                  sltu         a6, s0, tp
                  lw           s1, 4(sp)
                  andi         s6, tp, 1045
                  lbu          a0, 3(sp)
                  sb           gp, -10(sp) #end riscv_load_store_rand_instr_stream_3
                  sltiu        a5, ra, -1011
                  srai         gp, s5, 3
                  sltiu        a4, a4, -1136
1403:             sub          ra, ra, s6
                  sltu         a6, a6, s5
                  blt          zero, s3, 1409f
                  blt          a6, a2, 1419f
                  ori          s5, s6, 678
                  srli         a5, s3, 7
1409:             and          t6, tp, t5
                  slt          ra, sp, s0
                  addi         s6, s2, 757
                  sltu         a7, s6, s8
                  bltu         a5, t5, 1424f
                  blt          s5, s6, 1420f
1415:             andi         t5, ra, 1959
                  sltu         s6, t4, t1
                  sll          t3, t1, zero
                  xor          a5, t4, s2
1419:             and          s8, s9, t3
1420:             xor          t1, a1, s1
                  andi         s9, t4, 1883
                  and          t3, t0, ra
                  nop
1424:             auipc        t2, 303518
                  lui          s5, 893549
                  srl          a0, a5, a7
                  addi         a1, s9, -1141
                  xori         s5, s9, 1499
                  bltu         t3, s10, 1436f
                  sltu         a4, t2, t0
                  addi         t2, s9, 1442
                  addi         s7, s5, 56
                  xori         a4, a7, -1687
                  bge          s0, t3, 1454f
                  lui          a6, 292944
1436:             sltu         zero, t4, s2
                  srai         s0, t5, 18
                  and          a4, a3, t3
                  blt          a3, s9, 1440f
1440:             bge          s4, s8, 1444f
                  bgeu         t2, t6, 1461f
                  srl          t3, ra, s7
                  slli         a3, s6, 11
1444:             beq          t2, t6, 1462f
                  srli         zero, s4, 15
                  slti         s1, s4, -1644
                  addi         a0, a4, -758
                  or           s11, tp, s2
                  slti         s11, sp, 679
                  srl          a5, s10, t1
                  and          a1, t0, s8
                  nop
                  sltu         s0, t3, s1
1454:             sll          s4, s0, t4
                  xor          a0, t5, s6
                  or           t6, t3, a5
                  ori          s8, s3, -643
                  lui          a2, 924913
                  and          s4, a4, a3
                  sll          t2, s11, t6
1461:             and          t5, t5, a4
1462:             ori          s4, a3, 1898
                  xori         t2, s3, 358
                  beq          s6, s4, 1469f
                  lui          t3, 410014
                  bgeu         s5, s1, 1474f
                  add          a2, gp, zero
                  sltiu        a5, a6, 1860
1469:             xori         s7, t4, 1771
                  auipc        t5, 336489
                  srl          s11, s7, s2
                  lui          s1, 79051
                  sll          s7, a4, t5
1474:             srli         a4, a4, 13
                  auipc        s4, 805762
                  sll          ra, a3, s4
                  bne          s3, s10, 1479f
                  andi         a6, a0, -293
1479:             bltu         s7, a1, 1488f
                  sltiu        t5, a0, 1973
                  srl          t4, s4, s7
                  slti         a6, t5, 608
                  sll          a3, s6, a6
                  sltu         t6, a3, t0
                  sltiu        s7, s10, -380
                  sltiu        s8, t1, -1734
                  or           s7, s1, zero
1488:             auipc        zero, 466235
                  ori          s9, a2, -1525
                  la           tp, region_1+1272 #start riscv_load_store_rand_instr_stream_2
                  srl          a2, t6, tp
                  lhu          s8, -4(tp)
                  xori         t2, a5, -1956
                  sb           s1, -10(tp)
                  ori          ra, a6, -1768
                  sb           t0, -11(tp)
                  lb           a0, 3(tp)
                  sb           s1, 1(tp)
                  sll          a0, a2, a0
                  lui          a3, 816517
                  slt          s7, ra, a4
                  xori         s8, a2, -1825
                  lbu          t3, -11(tp)
                  lui          s4, 236261
                  lb           s9, -13(tp)
                  lbu          t1, 3(tp)
                  lui          s7, 326474
                  or           a5, a4, a5
                  lb           s6, 8(tp)
                  srai         a6, a0, 19
                  sb           s7, -13(tp)
                  xori         s1, s4, -1531
                  xori         s5, t3, -409
                  sb           sp, 10(tp)
                  sb           s2, -15(tp)
                  sra          a3, t2, s0
                  sb           s2, -10(tp)
                  lhu          s9, 16(tp)
                  auipc        t6, 748350
                  lb           a7, 3(tp)
                  lbu          sp, -11(tp)
                  slt          a4, t2, s7
                  lbu          sp, -14(tp)
                  or           a4, s0, s9
                  lb           t5, 3(tp)
                  sll          t5, tp, t1
                  lbu          gp, -13(tp)
                  sh           t1, 6(tp) #end riscv_load_store_rand_instr_stream_2
                  xor          s8, t5, s8
                  srli         t6, t5, 9
                  beq          s1, t4, 1509f
                  andi         s11, gp, 923
                  sub          s7, t2, sp
                  add          s7, a4, ra
                  srli         s11, a3, 25
                  bltu         a4, s7, 1517f
                  srli         s9, zero, 27
                  sll          s4, sp, tp
                  sub          a5, s10, t2
                  bne          a5, s4, 1520f
                  srai         s11, s11, 15
                  lui          t3, 375180
                  sll          s11, a3, gp
                  bge          s0, s9, 1523f
                  addi         ra, s10, 530
                  bne          a3, a3, 1510f
                  bltu         s1, s5, 1512f
1509:             sltiu        t6, s3, -1045
1510:             xori         t3, s6, -951
                  add          t2, t3, tp
1512:             sll          s8, s0, t6
                  sltiu        a2, a1, 365
                  srl          s11, s7, t0
                  blt          t1, gp, 1522f
                  slti         s4, s11, 1051
1517:             beq          tp, a5, 1518f
1518:             xor          a3, a1, t5
                  sltiu        s5, s6, -236
1520:             sub          zero, a1, s7
                  andi         a4, t3, 500
1522:             sltiu        a5, a0, 922
1523:             or           t5, s0, t6
                  slt          sp, t6, s2
                  slt          s0, a7, s6
                  nop
                  srl          s5, t5, a4
                  slli         gp, s0, 23
                  slt          t2, t2, s2
                  bne          tp, t1, 1538f
                  addi         t2, s2, 47
                  sra          a3, s7, s6
                  sub          a1, a4, t2
                  slti         s8, sp, -701
                  or           s0, t1, tp
                  and          ra, s11, s2
                  beq          ra, s10, 1538f
1538:             xori         tp, gp, 665
                  bne          s3, zero, 1541f
                  sub          sp, s0, s4
1541:             bge          s11, s5, 1546f
                  bgeu         t5, t1, 1556f
                  xor          s0, tp, t3
                  slt          ra, a5, ra
                  sub          ra, a1, a4
1546:             srai         a6, t1, 12
                  blt          t1, gp, 1564f
                  add          t4, s2, s4
                  sub          zero, s2, s10
                  blt          ra, s11, 1570f
                  auipc        a7, 627157
                  add          s0, t3, s8
                  sltu         s0, s8, a1
                  sll          a3, s7, gp
                  or           a0, tp, t4
1556:             srli         sp, s0, 1
                  bltu         t5, t5, 1563f
                  bne          t4, s0, 1562f
                  xor          s5, s11, s8
                  bltu         a2, zero, 1563f
                  bge          a5, s7, 1579f
1562:             bgeu         t6, gp, 1575f
1563:             bge          s4, s3, 1574f
1564:             auipc        ra, 50233
                  or           t1, tp, t1
                  slti         s11, tp, -760
                  and          a4, tp, t3
                  slli         s11, a1, 20
                  and          s5, ra, a0
1570:             xori         s8, zero, -1182
                  addi         t4, s1, 1028
                  sltiu        s0, s4, 1307
                  xor          zero, s9, a5
1574:             xori         t5, t2, 713
1575:             sltiu        s5, a2, -1703
                  nop
                  sll          s1, a0, s5
                  sub          t5, a0, s8
1579:             srai         s5, s8, 9
                  blt          t2, t0, 1582f
                  bgeu         s5, s3, 1585f
1582:             or           s11, s4, tp
                  add          a5, s6, t2
                  bgeu         s10, t4, 1591f
1585:             sub          t3, t0, a3
                  bge          s0, zero, 1587f
1587:             nop
                  beq          s11, s11, 1608f
                  andi         t6, t4, -1241
                  beq          s8, a6, 1597f
1591:             bne          s11, s0, 1611f
                  slt          s1, sp, a6
                  bltu         a4, a6, 1602f
                  bne          zero, sp, 1612f
                  auipc        a4, 633707
                  sra          t2, zero, s1
1597:             srai         s11, ra, 14
                  xor          s6, t4, s5
                  blt          zero, t0, 1601f
                  and          tp, sp, a5
1601:             bltu         t1, t3, 1620f
1602:             nop
                  sll          a0, t3, a0
                  srl          zero, s3, ra
                  auipc        sp, 169153
                  sltiu        t3, a4, -283
                  sltiu        a7, t4, -743
1608:             beq          t0, a0, 1622f
                  slli         ra, a0, 4
                  or           s5, ra, t1
1611:             slli         t3, t4, 17
1612:             sra          a2, s1, a4
                  xor          t2, s4, tp
                  nop
                  sra          gp, s6, t6
                  slt          s11, zero, s11
                  slt          a2, s6, t0
                  sub          s6, s6, a1
                  sra          ra, s8, sp
1620:             bgeu         gp, t3, 1640f
                  addi         s1, s8, -317
1622:             sltiu        t5, s10, 757
                  or           a6, t0, a6
                  add          a4, a0, a5
                  bltu         a0, s2, 1634f
                  blt          t6, s8, 1631f
                  add          s8, a3, t2
                  or           s2, t3, s10
                  nop
                  sub          t3, t1, t0
1631:             add          s9, gp, t1
                  add          s6, s4, a6
                  sltu         a1, s4, s3
1634:             or           t6, t2, s5
                  or           t1, t5, t0
                  slti         t2, a5, -1443
                  sltiu        ra, t2, -798
                  slli         t1, s5, 2
                  nop
1640:             srli         a4, zero, 27
                  and          t2, s3, a3
                  slt          zero, zero, s6
                  andi         s2, a6, -436
                  slti         s6, a4, -1459
                  add          tp, s1, a1
                  srai         a0, t1, 18
                  sra          s1, s8, t1
                  slli         t5, sp, 6
                  xori         s11, s1, -455
                  sll          s5, a4, t3
                  srl          zero, s2, s9
                  bne          t2, t4, 1670f
                  slti         s7, s3, 744
                  or           t4, t3, t4
                  slti         t1, a1, -135
                  sra          t3, a4, t0
                  srli         s6, s2, 7
                  ori          t1, t3, 1490
                  andi         a3, t5, -742
                  xor          t5, a2, t0
                  srl          gp, s0, s4
                  beq          s9, s1, 1673f
                  bltu         s5, s9, 1667f
                  addi         ra, tp, -1667
                  slti         s8, t0, -222
                  beq          a4, a0, 1668f
1667:             nop
1668:             add          tp, t2, t4
                  lui          ra, 1040777
1670:             lui          t1, 759040
                  bgeu         s6, s11, 1678f
                  addi         a5, s10, -1452
1673:             xor          sp, a3, s7
                  xor          t6, zero, s10
                  and          s6, s5, a7
                  and          a5, s2, t4
                  xor          s2, s10, s2
1678:             ori          t2, t2, 865
                  blt          s5, t4, 1699f
                  sub          s9, s4, gp
                  auipc        a5, 454484
                  sltiu        a6, s2, -163
                  nop
                  ori          s2, s11, -229
                  sll          t2, sp, a5
                  or           a4, t5, s0
                  sra          a4, a6, gp
                  slti         sp, s9, -1633
                  srl          s0, sp, s2
                  ori          ra, s0, -1073
                  bgeu         a4, s5, 1692f
1692:             xori         t2, s9, -759
                  sub          t3, ra, t6
                  bgeu         a0, gp, 1697f
                  xor          s1, a7, t3
                  bltu         s8, a2, 1702f
1697:             bltu         a4, s6, 1699f
                  ori          t2, s2, 908
1699:             or           a2, a7, s3
                  lui          gp, 121449
                  beq          a5, gp, 1702f
1702:             auipc        s1, 396192
                  slti         s4, s4, 529
                  ori          a2, ra, 844
                  sub          s5, s7, s9
                  add          a0, zero, a5
                  sra          s7, t2, a3
                  slli         t2, t4, 19
                  slli         s5, s5, 10
                  xori         a3, s10, -1146
                  srli         s7, ra, 1
                  or           tp, s2, tp
                  sub          a1, t3, s1
                  sra          s8, a6, s11
                  and          a4, s10, t1
                  srai         s1, gp, 17
                  auipc        a2, 979745
                  ori          a1, t5, 1516
                  auipc        s7, 724069
                  sltiu        tp, t1, 618
                  sll          sp, a5, a6
                  addi         s5, s3, -249
                  andi         zero, t0, 1459
                  sltiu        a3, tp, 503
                  slti         s6, t6, 906
                  srli         tp, sp, 16
                  auipc        t6, 30387
                  bltu         a0, s8, 1735f
                  xori         sp, s5, 1242
                  slli         t4, s0, 30
                  srli         t4, a2, 22
                  ori          ra, t3, 312
                  or           gp, t0, t3
                  xori         t1, s8, 1025
1735:             ori          s7, gp, -74
                  xori         a6, t1, 112
                  add          t3, s2, s2
                  sll          tp, t3, a2
                  lw           ra, 4(s3)
                  addi         s3, s3, 48
                  slli         s5, a0, 3
                  ori          a0, ra, -184
2276:             addi x7, x1, 0
2276:             jalr x7, x7, 0
sub_1:            nop
                  addi         s3, s3, -20
                  or           t5, t0, s11
                  sw           ra, 4(s3)
                  xor          gp, s10, a7
                  slli         a2, a3, 12
                  la           s9, sub_6
                  ori          a1, t0, -1301
                  sltiu        t1, a4, 1557
                  slli         a6, zero, 0
                  addi         s9, s9, -841
                  xor          a7, s11, a5
                  sra          s6, s11, a5
                  srl          a4, s3, s4
                  slt          s4, gp, gp
                  and          s1, a7, ra
sub_1_j6:         jalr         ra, s9, 842 #jump sub_1 -> sub_6
                  sll          t3, s5, s5
                  beq          a0, a5, 14f
                  xor          a3, s6, t3
                  lui          a3, 292489
                  bgeu         s11, ra, 18f
                  sub          s1, s5, t3
                  andi         t1, s8, -1953
                  slli         tp, gp, 23
                  slti         s6, s1, 1339
                  xor          a6, a0, t2
                  bgeu         t0, gp, 15f
                  and          s9, s9, a1
                  bge          a2, s7, 18f
                  slli         a4, sp, 17
14:               srli         s0, t4, 29
15:               andi         s7, s4, -961
                  andi         s8, a0, -124
                  xor          a0, a7, t4
18:               andi         t1, t0, 1732
                  lui          t4, 486596
                  sub          t4, t4, a7
                  lw           ra, 4(s3)
                  addi         s3, s3, 20
                  sltu         t6, s7, a0
                  auipc        a0, 175716
                  andi         zero, a6, -1285
                  srai         a6, a2, 14
                  srai         s8, s4, 21
45:               addi x14, x1, 1
45:               jalr x14, x14, 0
sub_10:           slt          s6, s3, a4
                  addi         a0, s2, 337
                  sll          tp, sp, a2
                  sll          tp, s6, a4
                  addi         s3, s3, -48
                  sltu         t1, s2, a0
                  lui          a6, 348347
                  auipc        s1, 512615
                  nop
                  addi         a2, tp, 1372
                  sw           ra, 4(s3)
                  and          s7, s7, a5
                  la           s1, region_1+169 #start riscv_load_store_rand_instr_stream_0
                  lb           t6, 86(s1)
                  sra          s4, sp, s5
                  sra          s4, s6, sp
                  sb           t4, 0(s1)
                  slli         a1, s6, 2
                  sh           tp, -19(s1)
                  xori         s0, t4, -761
                  lbu          s0, 146(s1)
                  lb           a1, -132(s1)
                  sw           a1, -165(s1)
                  sub          t1, t6, s9
                  sb           a4, 167(s1)
                  lhu          s11, 103(s1)
                  lb           a7, -30(s1)
                  lb           s8, -111(s1)
                  sb           a5, 207(s1)
                  sb           ra, 194(s1)
                  sb           a7, 76(s1)
                  slt          zero, t2, gp
                  and          t6, s11, s8
                  sub          s2, t4, t1
                  add          t5, s8, a3
                  srai         t6, s9, 31
                  sb           gp, 125(s1)
                  sb           s11, 239(s1)
                  slli         t4, t2, 3
                  sra          a3, a1, zero
                  xori         s5, s4, 825
                  sra          s2, s10, zero
                  sb           s6, 100(s1)
                  lhu          t2, -111(s1) #end riscv_load_store_rand_instr_stream_0
                  or           s1, a4, t0
                  slli         sp, s5, 25
                  bne          s4, a2, 12f
                  or           a5, a7, a2
                  or           a7, t5, s4
                  bne          a1, s2, 23f
                  beq          a3, s8, 22f
                  sub          s4, s5, s1
                  srai         s1, a0, 15
                  auipc        s4, 967936
                  lui          s11, 895847
                  auipc        a1, 611602
12:               sub          t3, t6, t4
                  and          a3, s10, s7
                  srl          a1, t5, zero
                  sltiu        a4, s6, 1487
                  slt          a3, s10, t6
                  sub          s8, a2, a7
                  sltiu        a2, a7, -130
                  or           a6, ra, s4
                  xor          a4, s5, a5
                  addi         t4, a3, -1653
22:               beq          sp, s3, 30f
23:               sltu         s8, gp, sp
                  lui          a3, 762846
                  bgeu         t3, gp, 32f
                  srl          t5, t1, s0
                  srl          t5, t0, a1
                  srai         sp, a3, 17
                  beq          ra, a0, 44f
30:               srl          t2, a7, s7
                  srl          a4, s1, zero
32:               bne          zero, a1, 40f
                  addi         a0, a5, 354
                  sltu         t4, s5, t3
                  slt          tp, t0, t2
                  and          a3, a6, a1
                  ori          t1, t5, 1704
                  sltiu        a1, ra, -665
                  srli         a7, t1, 25
40:               srai         s11, s4, 28
                  nop
                  srli         s4, s3, 4
                  add          t6, t0, t0
44:               andi         s1, t1, -1595
                  lui          s2, 458237
                  sll          sp, a6, s5
                  sltu         t5, t3, sp
                  slli         a2, s3, 5
                  and          a0, s5, t1
                  auipc        a3, 130202
                  xor          zero, s10, a6
                  slti         s11, s5, -738
                  andi         zero, a4, -1068
                  bne          s10, t0, 62f
                  sub          s2, a2, a6
                  bgeu         t5, zero, 57f
57:               xori         a3, tp, -558
                  blt          a6, s8, 65f
                  srli         s1, t6, 26
                  xori         a3, a5, 1169
                  bne          a3, t4, 72f
62:               add          a0, s4, a7
                  ori          t4, s8, 385
                  xor          a4, s3, s0
65:               bltu         s3, s6, 82f
                  srl          a6, s5, s2
                  auipc        a2, 146885
                  xori         a0, a5, 177
                  blt          s1, t2, 72f
                  nop
                  slt          s2, a1, t0
72:               slti         s8, t0, -1488
                  nop
                  auipc        a5, 57482
                  srl          s11, s6, s10
                  sub          a0, s4, tp
                  slti         s4, s5, -44
                  bltu         s6, s1, 96f
                  bge          s4, s9, 95f
                  bgeu         t5, s7, 87f
                  add          s8, t0, a4
82:               ori          a7, a2, -23
                  bgeu         a7, a3, 101f
                  srai         a4, s8, 9
                  srli         s2, t3, 13
                  nop
87:               bgeu         t5, a3, 105f
                  xor          a4, tp, a7
                  bge          a3, a4, 94f
                  sra          a7, s7, s3
                  or           ra, t2, ra
                  slti         s6, gp, 855
                  sltu         a6, s1, s2
94:               sltu         t4, a1, s9
95:               addi         ra, gp, 482
96:               andi         s5, a4, -796
                  srli         s8, t3, 26
                  ori          s8, a4, 2019
                  sll          a7, a6, zero
                  auipc        a1, 1002382
101:              bltu         s2, s10, 114f
                  slli         s7, zero, 1
                  add          a4, gp, s4
                  bge          a4, t1, 105f
105:              srl          t2, s11, s7
                  beq          t4, t1, 117f
                  nop
                  slti         gp, s3, 1788
                  andi         a6, zero, 463
                  bltu         a0, s0, 120f
                  nop
                  srai         s7, t6, 15
                  or           a5, a2, t0
114:              sub          t6, zero, t4
                  blt          gp, t4, 121f
                  auipc        a6, 253061
117:              srl          s4, s5, gp
                  srli         s1, t1, 13
                  sra          t3, a2, s6
120:              slti         t4, a2, -1173
121:              nop
                  srli         t1, ra, 4
                  sll          sp, a6, gp
                  bne          s1, s3, 131f
                  sra          a3, a1, s6
                  bne          s2, s8, 136f
                  andi         ra, t5, -1289
                  auipc        a6, 972210
                  sltu         t6, a6, t5
                  or           tp, s2, s4
131:              sub          t1, s1, tp
                  xori         s11, s8, 1557
                  ori          t4, s5, 1791
                  srai         a0, zero, 9
                  and          ra, a7, s10
136:              sll          t3, s3, s0
                  slli         zero, t2, 28
                  auipc        s4, 789852
                  sltiu        a5, a1, -1431
                  blt          a3, s11, 143f
                  bne          a7, s9, 143f
                  sub          s1, s3, a7
143:              sll          a7, t5, tp
                  nop
                  lw           ra, 4(s3)
                  slti         s7, s9, -1961
                  nop
                  srli         s0, t4, 7
                  addi         s3, s3, 48
                  sll          s2, tp, t3
                  sub          s1, gp, s9
196:              addi x28, x1, 0
196:              jalr x28, x28, 0
sub_9:            add          zero, s11, tp
                  or           sp, a2, t1
                  nop
                  addi         s3, s3, -64
                  slt          s4, s1, t3
                  auipc        a3, 503506
                  auipc        t1, 590338
                  sll          a1, s2, a3
                  sw           ra, 4(s3)
                  sra          s7, sp, a5
                  sra          zero, s7, a1
                  slli         t1, a6, 21
                  slli         t6, s2, 13
                  sll          gp, sp, s2
                  slli         a2, s2, 31
                  auipc        a7, 1046140
                  slli         t1, s7, 31
                  sll          s11, s0, a5
                  sra          ra, s5, a2
sub_9_j11:        jal          ra, sub_10 #jump sub_9 -> sub_10
                  or           t2, s2, s4
                  andi         a5, s4, 227
                  lui          s0, 780674
                  or           sp, t2, s11
                  bltu         a1, a3, 21f
                  sll          tp, t0, zero
                  slti         gp, s10, -1826
                  sltiu        s5, s5, -2018
                  beq          a3, s11, 12f
                  bgeu         ra, s0, 24f
                  lui          t2, 770228
                  srli         a3, t4, 29
12:               bltu         sp, s4, 30f
                  addi         sp, s2, -1318
                  nop
                  add          a1, t4, a0
                  addi         ra, a2, 1595
                  andi         s6, s7, -693
                  sub          a0, gp, a2
                  beq          ra, s4, 25f
                  auipc        t1, 325718
21:               bgeu         s6, s3, 28f
                  add          zero, sp, s7
                  slt          a1, a2, s11
24:               blt          s6, t0, 30f
25:               srl          a2, s5, a3
                  blt          a4, s11, 30f
                  add          a0, t2, sp
28:               sra          tp, t2, s4
                  bgeu         t5, t0, 30f
30:               or           s2, t2, t5
                  add          t1, t6, s9
                  srl          s7, a6, s2
                  nop
                  srli         zero, a7, 31
                  lw           ra, 4(s3)
                  ori          s7, t4, -1795
                  addi         s3, s3, 64
                  sll          s8, s5, a6
                  xor          s6, s6, ra
                  slli         a5, tp, 4
                  srl          s8, t1, t3
                  ori          a4, a1, 1129
63:               addi x27, x1, 1
63:               jalr x27, x27, 0
sub_6:            addi         s3, s3, -56
                  srli         a4, s8, 14
                  sw           ra, 4(s3)
                  sub          t1, a2, s2
                  slli         a6, a4, 8
                  or           s7, t5, t4
                  sll          zero, s7, a7
                  ori          sp, s3, -31
                  sll          sp, t6, s4
                  la           s0, sub_7
                  or           s7, a2, a4
                  add          a1, s10, a4
                  slt          sp, ra, zero
                  nop
                  addi         s0, s0, -861
                  sub          s8, s1, s6
                  bltu         a5, s9, sub_6_j8 #branch to jump instr
                  and          zero, a5, s2
sub_6_j8:         jalr         ra, s0, 861 #jump sub_6 -> sub_7
                  la           s6, region_1+466 #start riscv_load_store_rand_instr_stream_2
                  lbu          t4, -7(s6)
                  slli         t1, a5, 15
                  sb           s5, -8(s6)
                  sra          a7, ra, a2
                  sra          a2, t4, a3
                  lb           a1, 3(s6)
                  lw           t5, 14(s6)
                  sra          t2, a3, s11
                  slli         t2, s9, 3
                  addi         s11, a5, -1353
                  xori         a0, s4, 549
                  lhu          a3, 16(s6)
                  and          s9, a0, s3
                  lbu          tp, -10(s6)
                  sb           t2, 3(s6)
                  sub          s0, t2, t0
                  lbu          tp, -3(s6)
                  sltu         gp, zero, a6
                  sw           t5, 2(s6)
                  nop
                  lb           t4, 11(s6)
                  lb           a1, -5(s6)
                  sb           s11, -1(s6)
                  auipc        t1, 671340
                  lbu          sp, 2(s6)
                  lbu          s0, 7(s6)
                  nop
                  lb           t3, 10(s6)
                  slti         a4, s7, -1130
                  slt          t5, gp, s1
                  sltiu        t4, a5, 1377
                  srl          s9, t5, s8
                  nop
                  sb           t0, -15(s6)
                  add          sp, t0, a2
                  lhu          s4, -4(s6)
                  xori         s7, zero, -466
                  srai         a7, t4, 10
                  lb           a3, -5(s6)
                  auipc        s7, 92178
                  lui          a0, 253702
                  lbu          sp, -8(s6) #end riscv_load_store_rand_instr_stream_2
                  la           a6, region_1+169 #start riscv_load_store_rand_instr_stream_0
                  sltu         t5, s9, sp
                  lb           t6, -147(a6)
                  xor          a7, t6, s1
                  lbu          a0, 1012(a6)
                  sub          s7, ra, a0
                  lh           s2, -163(a6)
                  lb           a2, 528(a6)
                  sh           a6, 25(a6)
                  lbu          gp, 200(a6)
                  xor          zero, a0, ra
                  lbu          s0, 382(a6)
                  sb           a2, 1224(a6)
                  sh           a7, 729(a6)
                  sw           s9, -97(a6)
                  and          s9, t1, a2
                  sb           zero, 775(a6)
                  or           t1, s0, t5
                  lh           s11, 927(a6)
                  sb           s6, 1730(a6)
                  sw           s0, 423(a6)
                  lhu          a3, -135(a6)
                  lhu          sp, 1133(a6)
                  sb           gp, 1754(a6)
                  sra          t5, a6, t4
                  lbu          gp, -120(a6)
                  sw           s10, 1063(a6)
                  sb           zero, 32(a6)
                  sw           s0, 1439(a6)
                  lbu          t5, 1092(a6)
                  sb           s5, 1232(a6)
                  slt          t1, a2, s11
                  lb           a5, 282(a6)
                  srli         gp, t6, 24
                  lb           ra, -56(a6)
                  lhu          a1, 157(a6)
                  xor          s1, t1, t6
                  lb           sp, 854(a6) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1706 #start riscv_load_store_rand_instr_stream_7
                  lb           s11, -8(sp)
                  sra          a4, t4, a7
                  sw           a1, -10(sp)
                  slti         a0, ra, 336
                  add          s8, t1, t5
                  lbu          a1, 11(sp)
                  lb           a3, 16(sp)
                  lui          s11, 690802
                  sw           s3, 6(sp)
                  lw           a1, 10(sp)
                  srai         a5, zero, 22
                  lh           s4, -2(sp)
                  sh           s10, -14(sp)
                  lw           t6, 6(sp)
                  srai         a1, t3, 15
                  lbu          s6, 9(sp)
                  lb           a4, 2(sp)
                  lb           zero, 13(sp)
                  lhu          a3, -6(sp)
                  lui          s0, 114561
                  lbu          gp, -1(sp)
                  lb           t6, -2(sp)
                  srl          s9, s1, tp
                  sb           s9, -16(sp)
                  lb           tp, 0(sp)
                  lbu          a5, 2(sp)
                  or           s2, s6, zero
                  slt          gp, s10, t6
                  sb           ra, -7(sp)
                  sra          a5, gp, s9
                  slli         a3, s2, 8
                  lbu          a0, -5(sp)
                  slli         s5, s4, 24
                  lb           t6, 11(sp) #end riscv_load_store_rand_instr_stream_7
                  la           t1, region_0+1124 #start riscv_load_store_rand_instr_stream_3
                  sh           t3, 554(t1)
                  and          tp, t3, s7
                  sb           s7, -195(t1)
                  lhu          s5, 626(t1)
                  sb           gp, 795(t1)
                  srai         a5, sp, 26
                  lhu          a6, 184(t1)
                  sb           s0, 22(t1)
                  lb           s9, 555(t1)
                  lbu          s4, -645(t1)
                  and          s1, s0, s1
                  lbu          sp, -140(t1)
                  lh           s6, -500(t1)
                  lhu          sp, 28(t1)
                  sw           t1, -960(t1)
                  sb           a3, 80(t1)
                  srl          s5, t2, t4
                  lbu          a6, 407(t1)
                  sub          s9, a5, t1
                  lh           s2, -716(t1)
                  xori         a5, s6, 1274
                  auipc        gp, 375778
                  lbu          s9, -816(t1)
                  xori         sp, s5, 918
                  or           s6, s9, s0
                  lb           ra, 273(t1)
                  lbu          s7, 333(t1)
                  nop
                  lh           s9, -74(t1)
                  srli         s0, a6, 13
                  sll          s7, a7, t6
                  sb           tp, 707(t1)
                  lbu          a7, 671(t1)
                  sb           t6, -319(t1)
                  lui          s4, 817602
                  addi         s7, t2, 1379
                  slt          t4, gp, a6
                  lbu          s1, 509(t1)
                  xor          t2, a7, tp
                  lb           s5, -937(t1)
                  lh           s4, 824(t1)
                  lhu          a3, -1032(t1)
                  addi         s6, t0, -1438
                  sb           zero, -388(t1) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+654 #start riscv_load_store_rand_instr_stream_5
                  nop
                  and          ra, a5, s8
                  and          t4, a7, s6
                  lb           s9, 1(sp)
                  sb           zero, -2(sp)
                  lh           s7, 4(sp)
                  addi         s2, s2, 1224
                  lh           s2, 14(sp)
                  sh           s2, -8(sp)
                  sb           s0, -10(sp)
                  sh           s2, -14(sp)
                  add          a6, gp, t6
                  xor          s1, s1, a4
                  slli         a7, s3, 8
                  lh           a2, -14(sp)
                  sb           s2, -10(sp)
                  sll          tp, s0, s8
                  addi         s6, gp, 1994
                  sltu         t2, s9, a5
                  and          s6, a1, gp
                  sb           s1, 1(sp)
                  lh           t1, 2(sp)
                  lbu          s6, -15(sp)
                  srai         a2, s10, 30
                  srl          s5, s7, t5
                  sw           a1, -10(sp)
                  xor          a3, gp, s8
                  xori         a5, s1, 1512
                  sb           s4, 5(sp)
                  slt          t3, s8, t0
                  lw           s7, 10(sp)
                  sw           gp, -6(sp)
                  lb           t1, 14(sp)
                  slti         s6, t5, -388
                  lbu          a5, 4(sp)
                  sb           sp, 7(sp)
                  andi         a7, t4, -1890
                  lb           t4, 11(sp)
                  lh           s5, 2(sp)
                  srli         s2, a0, 27
                  sb           t0, 1(sp)
                  sra          a6, gp, t5
                  lbu          t1, 11(sp) #end riscv_load_store_rand_instr_stream_5
                  bge          s6, t3, 1f
1:                bne          s8, s6, 8f
                  beq          s3, s2, 3f
3:                sub          a6, t6, ra
                  sub          s8, t4, s0
                  add          a5, ra, t3
                  nop
                  blt          s10, s1, 21f
8:                addi         a5, a5, -162
                  beq          t0, ra, 17f
                  bne          s1, s10, 27f
                  auipc        a4, 398788
                  andi         a0, s7, 1218
                  bltu         a1, t3, 32f
                  or           a7, zero, s2
                  beq          t2, a1, 31f
                  and          zero, t3, s3
17:               sub          s1, s5, zero
                  sub          s11, a2, gp
                  slti         s0, a4, 101
                  bge          t2, t0, 23f
21:               bltu         s0, a1, 33f
                  nop
23:               sltiu        a7, a7, -1356
                  blt          t5, s6, 30f
                  srli         sp, gp, 2
                  srli         tp, a0, 1
27:               srai         s4, a4, 15
                  bltu         s2, s3, 48f
                  srli         t6, s10, 17
30:               sra          s11, t6, t4
31:               beq          a4, t1, 33f
32:               sra          sp, ra, a2
33:               srai         s1, s6, 21
                  sll          tp, s10, s6
                  bne          s5, s10, 46f
                  slli         s1, t0, 29
                  addi         t3, a0, -1991
                  srl          t4, a3, s3
                  addi         ra, s4, 208
                  sltu         s7, t4, t0
                  andi         a7, a7, 556
                  or           zero, a3, a1
                  bne          t2, a0, 46f
                  sub          s5, s3, t1
                  sll          s0, t5, s5
46:               and          a7, sp, a4
                  blt          ra, s5, 53f
48:               sltiu        tp, gp, -1697
                  slt          s4, s9, zero
                  sub          s2, t2, zero
                  nop
                  auipc        a5, 793598
53:               slt          s4, t4, a4
                  or           t3, t1, ra
                  sll          s0, s7, gp
                  sltu         a1, sp, a4
                  blt          t6, t5, 73f
                  andi         s5, tp, -220
                  bgeu         s7, t1, 63f
                  bne          s4, a1, 78f
                  bne          t4, s7, 63f
                  blt          s9, sp, 80f
63:               blt          a7, s6, 64f
64:               srli         s2, s6, 6
                  slt          s0, t6, t2
                  slt          s9, s7, gp
                  srli         t1, s10, 22
                  bne          a2, t2, 80f
                  and          s2, s3, s7
                  beq          a1, s5, 74f
                  bne          s2, a2, 87f
                  xori         a0, t0, -1174
73:               bltu         s2, t3, 85f
74:               lui          s0, 686489
                  sll          gp, sp, a0
                  sltu         s2, a7, t2
                  or           t2, s9, s10
78:               sll          s7, a2, s11
                  srl          s7, s10, tp
80:               sra          gp, a6, tp
                  bgeu         s4, s2, 87f
                  sltiu        a3, t2, -99
                  slti         a3, t1, -1284
                  ori          t5, s7, -383
85:               addi         a4, a6, 223
                  slt          gp, a2, s11
87:               lui          a6, 694768
                  srai         a0, t3, 16
                  slli         t2, a4, 30
                  sub          s1, a0, s6
                  auipc        sp, 672682
                  auipc        a7, 811185
                  xori         t2, s0, 962
                  sll          a4, zero, zero
                  slt          a7, s3, t6
                  and          zero, s0, a1
                  sltiu        ra, t4, 722
                  add          s6, a3, sp
                  andi         s2, s9, 19
                  addi         s11, s10, -316
                  and          ra, a2, s2
                  sll          a6, s9, a3
                  slli         t6, t2, 17
                  sll          t2, a2, s3
                  or           a5, ra, t1
                  blt          s3, s1, 110f
                  auipc        s1, 15280
                  sll          s4, a5, t0
                  bge          ra, s3, 114f
110:              slt          s5, ra, s7
                  lui          zero, 952896
                  sltu         t5, a0, t0
                  bne          ra, t5, 121f
114:              nop
                  srl          a6, s7, s9
                  sll          s7, s6, tp
                  sub          t6, s8, s8
                  auipc        a2, 814810
                  bne          a4, s3, 123f
                  bge          s7, s5, 121f
121:              bne          t5, s0, 129f
                  bge          t5, tp, 125f
123:              bge          a6, s5, 129f
                  srl          t1, s4, s11
                  la           t4, region_1+1415 #start riscv_load_store_rand_instr_stream_4
                  lbu          s9, -65(t4)
                  and          gp, a6, s6
                  slt          tp, t3, s1
                  xor          t6, a5, ra
                  lbu          a6, 110(t4)
                  lbu          s0, 34(t4)
                  sub          t5, s11, t3
                  sb           tp, -78(t4)
                  lb           a7, 142(t4)
                  lhu          t6, -113(t4)
                  and          sp, s0, t2
                  or           s9, s7, a7
                  sh           zero, 231(t4)
                  srli         s11, ra, 9
                  nop
                  slti         s6, t4, 1306
                  slli         s2, t5, 5
                  sltu         a3, a0, t4
                  srl          a3, s4, s6
                  srl          gp, a5, t4
                  ori          ra, a6, 1007
                  sltu         a4, s4, t0
                  srai         s2, s10, 31
                  sb           ra, 210(t4)
                  lw           t2, -95(t4)
                  sh           a1, -145(t4)
                  sb           t2, -4(t4)
                  or           s11, t3, sp
                  ori          gp, s3, -1209
                  srai         gp, a7, 17
                  lbu          s9, -91(t4)
                  add          a1, t6, s5
                  sb           t5, 208(t4)
                  srli         s9, s9, 12
                  sltiu        a7, t3, -1671
                  slti         gp, zero, -595
                  lb           a5, 86(t4)
                  sh           t2, -169(t4)
                  andi         a2, a6, -16
                  srl          s9, s7, s11
                  xori         tp, s0, -1605
                  lb           s9, -76(t4)
                  sh           s7, -89(t4) #end riscv_load_store_rand_instr_stream_4
125:              sra          s4, ra, t5
                  sra          sp, t6, s3
                  beq          a2, s0, 130f
                  sra          gp, a3, s0
129:              sra          t2, t3, s4
130:              nop
                  srai         s6, t3, 5
                  blt          t0, t6, 144f
                  sra          t4, s7, t0
                  sltiu        s0, s9, 1082
                  ori          s6, a5, 421
                  add          a5, t3, s7
                  ori          s6, s4, 1215
                  nop
                  blt          a3, a2, 150f
                  slti         s11, s0, -351
                  slti         a1, t4, 1525
                  srl          sp, a3, gp
                  sltiu        a0, a2, -61
144:              bne          s5, s10, 146f
                  ori          s6, t6, 551
146:              and          t3, s2, t0
                  addi         s0, a5, 1399
                  lui          t5, 531075
                  srl          t6, s0, zero
150:              lui          s5, 1007791
                  blt          t6, t6, 167f
                  lui          t5, 379202
                  bge          tp, t5, 154f
154:              addi         s8, s1, 1234
                  or           a4, gp, t3
                  lui          s7, 929250
                  bge          s0, t0, 173f
                  srai         sp, s0, 7
                  bge          zero, s6, 165f
                  srl          a4, s0, t1
                  or           s4, s2, t2
                  nop
                  srli         s8, a0, 7
                  sltu         s8, a0, tp
165:              srai         s6, a5, 2
                  sll          a0, s10, a2
167:              slti         s8, s4, -1732
                  sll          s0, s6, s10
                  srl          s1, s3, t6
                  slti         a5, s9, 1972
                  sll          s9, t3, s10
                  srai         s9, s9, 5
173:              sra          a1, a4, t2
                  sub          s5, a6, t2
                  sll          s9, sp, t1
                  xori         a4, s10, -1725
                  ori          a3, s6, 1920
                  srli         a1, a4, 17
                  slli         s6, ra, 8
                  add          gp, a3, t5
                  blt          t0, t4, 195f
                  bltu         a4, sp, 189f
                  ori          zero, t1, 177
                  bgeu         s9, s0, 190f
                  or           t6, ra, sp
                  ori          a7, ra, 1882
                  bltu         s4, s7, 203f
                  xor          s6, a1, t1
189:              sltu         t4, a6, t5
190:              xor          zero, s10, t1
                  xori         a4, tp, 238
                  andi         a0, ra, -690
                  nop
                  andi         s1, a2, 74
195:              addi         s0, a0, -1372
                  or           a4, gp, s5
                  blt          a6, s5, 215f
                  slti         a3, t6, 1353
                  add          a5, ra, ra
                  sra          a7, a2, t0
                  srl          s8, a4, t4
                  sra          s5, s9, s1
203:              or           sp, tp, gp
                  sltu         t4, tp, t1
                  sll          a1, s9, s0
                  slti         a5, sp, -732
                  nop
                  addi         s2, sp, 202
                  sra          t4, s6, s3
                  and          a6, a1, t2
                  sltiu        t2, s4, -1613
                  and          a6, s8, a0
                  xori         t5, t6, -169
                  bltu         t0, a2, 215f
215:              xor          s4, sp, t6
                  sub          s9, s7, s9
                  slti         zero, s0, -1551
                  ori          s5, t2, -282
                  lui          a7, 349092
                  auipc        s8, 863635
                  bltu         a5, s5, 240f
                  slti         a0, ra, -1055
                  sra          a6, t6, a4
                  bge          s7, a0, 226f
                  bne          a6, s10, 243f
226:              slti         a6, s11, -33
                  slti         s4, s4, 1875
                  bge          s1, s8, 232f
                  xor          t6, zero, s6
                  slli         s2, ra, 6
                  bgeu         s2, t2, 235f
232:              xori         a0, a2, 618
                  sltu         a3, a4, t5
                  add          t2, a4, s4
235:              andi         sp, t5, -1774
                  srli         s4, a6, 23
                  srai         s2, s7, 0
                  slt          tp, zero, t2
                  blt          s1, s2, 256f
240:              nop
                  ori          s8, s10, 194
                  slli         t1, a7, 0
243:              slti         gp, t5, 619
                  beq          a7, a4, 252f
                  bltu         s10, a7, 257f
                  sltu         a5, a7, s11
                  addi         s6, t5, -1882
                  slli         s2, t6, 3
                  srl          t4, a2, a2
                  bltu         t1, s4, 270f
                  srl          a4, zero, a2
252:              and          t5, s6, t3
                  nop
                  slti         a3, s4, -1267
                  bltu         t0, s0, 267f
256:              or           tp, t2, s10
257:              add          s7, s0, a6
                  and          t3, t6, a1
                  xori         s0, t3, -810
                  blt          s0, t4, 265f
                  srl          t1, t4, s4
                  sub          a7, a6, t5
                  bge          a3, s2, 265f
                  beq          a4, ra, 268f
265:              slli         zero, s8, 9
                  bne          s4, t5, 285f
267:              andi         tp, a7, -930
268:              bge          s11, s7, 282f
                  slt          s8, t5, a3
270:              addi         s5, s10, -125
                  auipc        gp, 193025
                  and          a2, s10, s10
                  blt          tp, s10, 279f
                  addi         tp, sp, 508
                  bgeu         t5, a6, 283f
                  xori         t4, s9, 1078
                  srl          t2, a1, s4
                  sll          a2, a7, t4
279:              andi         sp, a7, -583
                  auipc        ra, 381837
                  srli         a6, a7, 9
282:              sub          s1, t0, a5
283:              ori          s9, s3, 418
                  srli         s2, zero, 9
285:              addi         a0, a5, 19
                  lui          s0, 349056
                  srai         sp, s7, 31
                  bge          t3, s4, 293f
                  srl          sp, s4, t0
                  bltu         s5, s10, 291f
291:              srli         ra, a4, 17
                  sltu         t6, s7, zero
293:              srli         a5, t5, 19
                  andi         s0, a2, -1606
                  bltu         s2, a6, 307f
                  bge          a3, s0, 316f
                  addi         s11, s5, -1823
                  or           a4, s10, s5
                  sll          s1, s1, s1
                  andi         s2, t4, 3
                  andi         s8, t4, -1077
                  slli         s6, t5, 17
                  and          a5, s3, a5
                  slti         a5, t5, -1628
                  nop
                  addi         s4, a7, 1255
307:              bge          a7, ra, 311f
                  xor          t3, s5, s7
                  xor          a0, a7, a7
                  or           zero, t2, a4
311:              beq          t3, a2, 329f
                  sll          s4, s1, t1
                  xori         gp, s6, 1636
                  srl          a0, a5, s4
                  bgeu         s4, s9, 332f
316:              sll          sp, ra, s7
                  sra          s0, sp, a1
                  ori          a5, s11, -1624
                  addi         t4, a3, -1031
                  bne          s4, t3, 323f
                  bne          s1, s0, 327f
                  bgeu         a6, t4, 323f
323:              beq          t1, s0, 341f
                  srli         gp, s0, 24
                  sll          a1, tp, zero
                  add          t6, s8, s11
327:              bne          gp, a1, 328f
328:              srai         a3, t1, 22
329:              lui          t6, 632875
                  beq          s4, a2, 334f
                  la           t5, region_0+1967 #start riscv_load_store_rand_instr_stream_6
                  lui          gp, 485943
                  srl          t3, tp, a5
                  srli         a3, a5, 27
                  ori          zero, a6, 1484
                  xor          tp, t2, tp
                  sltu         t4, a3, s11
                  lh           s5, -585(t5)
                  slli         a4, a0, 26
                  slti         a3, s4, -1241
                  lbu          t3, -1952(t5)
                  sra          t2, a0, ra
                  lh           ra, -755(t5)
                  lb           s1, -1716(t5)
                  auipc        zero, 314723
                  lbu          t1, -670(t5)
                  lb           a4, -1622(t5)
                  sh           s4, -1349(t5)
                  lb           t4, -358(t5)
                  srli         a4, a4, 22
                  sb           a3, -880(t5)
                  sub          s7, s3, s2
                  sh           a5, -1693(t5)
                  lh           zero, -333(t5)
                  nop
                  sb           a4, -199(t5)
                  lb           s4, -914(t5)
                  andi         t3, s0, 1093
                  andi         a0, s3, -1371
                  sb           s8, -581(t5)
                  sb           t5, -938(t5)
                  sb           t2, -1778(t5)
                  lhu          s7, -1397(t5)
                  sb           t1, -963(t5)
                  sll          t1, a6, t2
                  lb           a0, -912(t5)
                  lb           t4, -1398(t5)
                  lui          s11, 612066
                  srai         s6, t5, 28
                  sh           s6, -619(t5)
                  lhu          s2, -1633(t5)
                  sra          s4, s9, s4
                  sw           s7, -435(t5)
                  sb           s11, -256(t5)
                  lh           a3, -761(t5)
                  sh           t5, 23(t5) #end riscv_load_store_rand_instr_stream_6
                  andi         a0, s0, -1844
332:              bgeu         t6, s1, 344f
                  auipc        t2, 32401
334:              addi         t6, t6, -1708
                  bgeu         t4, s0, 351f
                  sltiu        s11, s4, 512
                  addi         t5, gp, -19
                  slti         ra, a5, -686
                  nop
                  lui          s7, 558357
341:              sltiu        s8, s5, -1035
                  andi         t6, sp, -1021
                  sra          a5, ra, t5
344:              lui          sp, 885633
                  xori         a4, s10, 1178
                  xor          a3, s9, s5
                  sltiu        a4, s3, -654
                  xori         t3, a5, -1762
                  sra          t1, s6, s10
                  sub          s1, s11, t1
351:              addi         gp, s3, -238
                  bltu         s1, s6, 368f
                  bne          a4, a2, 356f
                  sltu         s2, t0, a6
                  auipc        tp, 94836
356:              bne          a3, a6, 358f
                  sltiu        t1, s2, 173
358:              or           a6, s7, s2
                  srli         s7, a7, 5
                  sltiu        s7, s0, 1269
                  nop
                  bne          s1, s3, 370f
                  andi         a0, t6, 1121
                  sltu         gp, a1, ra
                  auipc        zero, 812069
                  xori         a5, sp, 1063
                  sltu         a3, t2, s0
368:              sub          a1, s11, t5
                  auipc        a4, 555573
370:              beq          s4, s2, 377f
                  andi         t3, a6, -318
                  srl          a5, a3, a2
                  add          tp, s9, a4
                  and          s5, s0, s6
                  slli         s5, s3, 28
                  sltu         s8, a2, a1
377:              srli         a2, s11, 18
                  sra          ra, a6, t2
                  sll          s9, s6, s8
                  sub          t3, s2, a7
                  srli         sp, a3, 13
                  sltu         s2, a6, s1
                  auipc        t3, 74504
                  slli         gp, s2, 9
                  slti         sp, s2, 1782
                  lui          tp, 649209
                  sra          t6, t6, s10
                  sltiu        a5, s8, -728
                  addi         tp, s4, 1038
                  slt          ra, a6, s4
                  xori         zero, s5, 873
                  srl          t5, a0, s8
                  addi         s9, zero, -1296
                  and          t3, t0, t3
                  sra          a0, s3, a5
                  nop
                  beq          a4, s11, 408f
                  slt          a0, s11, t2
                  ori          s5, a4, -798
                  blt          a4, a6, 412f
                  blt          s2, a3, 407f
                  sll          zero, a5, s5
                  nop
                  sra          s6, s5, t1
                  auipc        s0, 411079
                  slt          a4, a1, t4
407:              blt          s5, s10, 423f
408:              blt          s9, s10, 428f
                  and          a0, s11, s2
                  slli         s1, a0, 31
                  sra          a0, a1, a4
412:              slti         tp, a5, -1988
                  srl          a1, s9, s3
                  xor          s11, s7, tp
                  or           s0, s0, t1
                  blt          s5, zero, 420f
                  nop
                  srl          s5, s3, a5
                  bne          a2, s2, 435f
420:              sll          zero, s5, a2
                  beq          t5, t6, 422f
422:              andi         t2, s9, -1632
423:              lui          t2, 370654
                  sra          a4, s7, a6
                  ori          s7, a4, -2022
                  slti         s9, s11, 1066
                  srli         a3, s2, 10
428:              bltu         gp, a6, 432f
                  or           s9, s4, s2
                  slt          s7, s7, s2
                  andi         a4, a0, -1523
432:              srai         a5, t3, 4
                  and          s6, tp, zero
                  slt          s9, a3, s9
435:              slt          s6, t6, t2
                  slt          a5, s5, a2
                  srli         s5, s5, 6
                  bltu         s0, sp, 444f
                  sra          t1, ra, s11
                  srli         t2, gp, 28
                  sub          t5, t4, ra
                  and          zero, s5, s3
                  srli         s1, a5, 24
444:              slti         sp, s11, -555
                  slti         s4, s5, -537
                  sll          s11, sp, t6
                  lui          t6, 243257
                  sra          t4, s11, s6
                  sltiu        a4, s10, 74
                  sub          a7, a1, t2
                  bge          zero, sp, 459f
                  srai         gp, a0, 19
                  sltu         a6, t5, a0
                  srai         s1, a2, 23
                  beq          tp, tp, 456f
456:              blt          sp, s9, 462f
                  blt          ra, t3, 474f
                  xor          a5, s0, zero
459:              slli         s1, s11, 11
                  sltu         s2, t4, t3
                  beq          s9, a3, 464f
462:              srai         a0, ra, 23
                  andi         t3, s10, -1541
464:              lui          s11, 506241
                  xori         t5, a2, -1748
                  sra          t1, s8, zero
                  srli         a2, s0, 1
                  slti         s5, a1, 1759
                  srl          t1, s10, a6
                  srli         a2, sp, 22
                  sub          t6, s9, a5
                  sltu         a7, a6, a1
                  bge          ra, s5, 475f
474:              slti         a1, s10, -1210
475:              ori          a2, s5, -116
                  ori          s0, s7, -997
                  sll          a5, sp, s10
                  srl          s1, ra, sp
                  bge          a2, a4, 491f
                  addi         s0, t1, 1100
                  andi         t5, sp, 941
                  addi         s6, s1, 1375
                  sltiu        s1, s9, -69
                  xori         ra, t6, -713
                  add          a4, s7, t6
                  srli         s5, t1, 29
                  addi         tp, s9, 1244
                  srl          a6, a6, a7
                  bne          s2, t4, 496f
                  sra          s1, sp, s3
491:              bne          s0, s3, 492f
492:              sll          t6, s2, s4
                  sub          s1, t0, t6
                  addi         s1, a1, 542
                  slti         s8, t3, 1464
496:              srl          s1, s5, a6
                  addi         zero, a0, 1900
                  sll          s6, t5, s3
                  lui          t3, 362382
                  ori          a1, s11, -1272
                  bltu         s10, t1, 519f
                  srli         a1, a2, 7
                  sub          s1, s8, t2
                  or           a0, a7, a4
                  bltu         s4, a7, 521f
                  add          t4, t3, s4
                  auipc        t5, 712030
                  and          s9, s10, s4
                  sltiu        a6, s11, 1730
                  or           s5, t1, a2
                  sltiu        a0, s4, 1573
                  slli         a2, sp, 21
                  nop
                  addi         a5, a2, 1957
                  sll          s0, a6, ra
                  sub          s11, ra, s5
                  nop
                  xori         s8, s2, -1322
519:              slt          s5, s5, a7
                  srli         s6, s4, 8
521:              slli         s9, t1, 5
                  nop
                  srai         gp, s4, 17
                  srai         a3, s0, 6
                  beq          t1, a0, 531f
                  srl          s7, s3, sp
                  srl          t6, t1, t2
                  sub          a3, gp, s7
                  sltu         s4, t2, zero
                  ori          t3, a7, -1252
531:              sra          s1, a0, t3
                  or           a3, t4, tp
                  srli         t6, zero, 5
                  xor          a1, a0, a2
                  auipc        sp, 524718
                  slt          a4, s4, t4
                  sltu         s11, ra, a4
                  bgeu         sp, a6, 556f
                  slt          t6, a7, s10
                  bge          t6, s11, 551f
                  nop
                  slli         sp, a1, 28
                  sra          a6, s4, gp
                  addi         s1, sp, -1882
                  add          s11, sp, t3
                  add          gp, sp, s7
                  beq          a4, a0, 551f
                  xori         t1, s10, -1378
                  and          t4, a1, a7
                  sltiu        s2, s1, -297
551:              or           tp, a1, a4
                  xori         a0, t1, 2
                  sltu         a7, t5, s8
                  sltiu        s11, s8, -1826
                  nop
556:              srl          a0, sp, ra
                  sll          a7, s0, s4
                  slli         ra, s3, 31
                  srl          a6, a5, zero
                  slt          t3, s0, t5
                  srli         a3, s6, 17
                  xor          s0, a6, a5
                  sra          t6, zero, a2
                  srli         t5, a7, 29
                  sll          a1, gp, ra
                  sub          t4, s9, a4
                  slti         t5, t3, -688
sub_6_j7:         jal          ra, sub_7 #jump sub_6 -> sub_7
                  bltu         s9, sp, 571f
                  slli         s8, a5, 0
                  bge          a1, a2, 577f
                  or           t2, s9, t0
                  addi         a6, s7, 1368
                  slt          a5, ra, s4
                  slt          s0, t0, t2
                  addi         s9, a6, 1532
                  sltu         t5, s10, s0
                  slt          a2, a6, t4
                  sll          s2, s6, a3
                  addi         s7, a1, 252
571:              sltiu        s6, a6, -416
                  slli         a2, zero, 28
                  or           s9, t0, a1
                  xor          s1, a2, t0
                  sltu         a4, gp, s6
                  auipc        t1, 64735
577:              bne          s1, s4, 580f
                  sub          tp, t4, t2
                  sltu         zero, a7, a4
580:              sra          t3, t3, ra
                  slti         zero, a1, -324
                  bge          a1, a4, 596f
                  sll          a0, a2, a0
                  xori         s2, s10, 841
                  beq          a1, t1, 597f
                  blt          t5, s3, 588f
                  slli         s11, t0, 29
588:              slt          s5, a6, s6
                  andi         s4, a3, 738
                  and          s4, s9, sp
                  bltu         t6, t0, 596f
                  auipc        a2, 900514
                  beq          a2, s9, 601f
                  ori          s0, a5, -1200
                  blt          t3, a0, 614f
596:              srli         t1, s0, 1
597:              sra          a7, t1, t3
                  bltu         s9, a6, 601f
                  slti         s2, s2, 644
                  xor          a7, s11, sp
601:              slli         t2, ra, 2
                  or           s11, t2, s11
                  sltu         s2, tp, s5
                  srl          s7, s2, s10
                  srai         a4, t2, 28
                  sltiu        s8, a7, -1161
                  beq          t4, s4, 613f
                  sub          a6, ra, a3
                  andi         tp, s4, -1559
                  ori          a5, t2, 798
                  sub          s6, a5, a1
                  sltiu        s4, s8, -556
613:              ori          a1, zero, 128
614:              beq          a4, s7, 633f
                  slti         a4, t6, 1064
                  andi         s2, a0, -545
                  addi         t1, a6, 1607
                  bne          s1, t5, 638f
                  andi         a0, gp, -1670
                  srl          s1, t5, gp
                  xor          s8, t0, s6
                  andi         s11, zero, -418
                  auipc        s9, 723570
                  slti         t6, tp, -870
                  slti         s4, a4, -1870
                  sub          a1, s1, a3
                  srai         s0, ra, 23
                  bge          s10, s11, 629f
629:              xori         s1, s4, 942
                  nop
                  blt          s0, ra, 648f
                  sll          s9, s2, a7
633:              sra          s1, s5, t2
                  addi         t5, t0, 596
                  bne          t5, t4, 638f
                  sltu         s8, s2, t4
                  and          a3, a2, s9
638:              bne          s8, s6, 656f
                  srai         s5, s0, 8
                  srai         s8, s4, 5
                  andi         s1, t2, 1643
                  bgeu         a2, s11, 654f
                  slt          s1, t5, a4
                  bge          a6, gp, 649f
                  slt          s6, t0, t2
                  bgeu         s2, a3, 650f
                  add          s1, ra, zero
648:              srl          a4, t3, a0
649:              and          gp, s2, ra
650:              sub          gp, a7, a5
                  xori         tp, a1, -1028
                  bge          t3, a0, 659f
                  sll          ra, s4, s4
654:              nop
                  bge          a0, a0, 663f
656:              srli         t6, a1, 25
                  sub          t6, a6, ra
                  beq          s8, s4, 664f
659:              nop
                  slt          t6, a6, a4
                  lui          s4, 874216
                  sltu         t5, ra, a1
663:              slti         ra, sp, -1977
664:              blt          s7, t4, 670f
                  sltiu        s8, tp, -13
                  xor          s5, s1, t2
                  slli         t6, ra, 26
                  auipc        a6, 310487
                  auipc        s0, 381923
670:              xor          a7, sp, s9
                  addi         a2, tp, -427
                  slli         t5, t3, 25
                  sub          t4, t5, t0
                  slt          a2, ra, s11
                  beq          t1, s2, 686f
                  lui          a3, 702552
                  slli         t6, s10, 6
                  xori         ra, a4, -1317
                  slli         tp, tp, 18
                  blt          a0, s2, 682f
                  xor          a6, s4, s1
682:              lui          s1, 923046
                  bge          sp, t1, 685f
                  sra          t2, s8, ra
685:              nop
686:              sltiu        s0, a3, -815
                  and          a4, t3, a2
                  sll          s6, s10, s2
                  blt          a3, t3, 705f
                  srli         a3, tp, 27
                  ori          s8, s3, 198
                  srai         a3, s8, 20
                  beq          a7, a7, 701f
                  xor          ra, s0, a7
                  blt          s8, tp, 711f
                  ori          s9, sp, 222
                  nop
                  bltu         a7, tp, 710f
                  blt          a7, ra, 711f
                  ori          s6, ra, 1330
701:              beq          s2, a3, 719f
                  lui          s9, 446629
                  bge          t2, t5, 704f
704:              add          t1, t0, t6
705:              beq          s11, s1, 721f
                  sub          a6, a3, t1
                  or           t4, t5, s11
                  sll          a1, a6, tp
                  sub          a1, a1, s3
710:              bge          s1, t0, 714f
711:              sltu         s2, s2, s10
                  bge          tp, s9, 716f
                  xor          s8, s6, t4
714:              sll          s8, s5, zero
                  srl          t4, sp, s1
716:              slti         t2, t4, -1827
                  andi         s7, s4, 988
                  slli         s9, t4, 3
719:              xor          a1, a5, s0
                  slti         t4, t3, -1780
721:              nop
                  andi         a0, t2, 354
                  sub          s11, zero, s0
                  sltiu        s11, s5, -1725
                  xori         s5, zero, 610
                  sltu         s7, t4, t2
                  add          t3, t0, t5
                  xori         t3, s10, -777
                  add          t1, zero, t3
                  bltu         s10, tp, 731f
731:              beq          s11, a2, 745f
                  or           t3, zero, s2
                  bne          t4, s4, 736f
                  sub          s11, a0, t6
                  srli         gp, s10, 7
736:              addi         a7, s3, -764
                  bltu         s5, s0, 741f
                  bltu         a0, a4, 750f
                  bltu         t4, t2, 757f
                  nop
741:              sub          ra, s7, gp
                  slli         s1, sp, 4
                  srai         t1, s3, 28
                  bltu         a4, s1, 752f
745:              sub          a0, t6, zero
                  sub          s6, s10, s8
                  xor          a7, s2, a4
                  or           sp, s4, t4
                  and          a4, a7, t3
750:              sub          a2, s10, tp
                  slt          a0, s0, tp
752:              or           a0, tp, s1
                  sltiu        s7, s6, 536
                  sra          a6, ra, s2
                  add          ra, a6, s2
                  or           a6, s9, s4
757:              bgeu         a2, s8, 775f
                  srai         a7, ra, 5
                  blt          s0, s6, 779f
                  bne          a3, t6, 762f
                  bgeu         a1, a4, 773f
762:              lui          sp, 32127
                  xor          s2, t6, t4
                  slli         t3, a7, 27
                  srli         s11, a6, 16
                  andi         s5, t0, -662
                  andi         t4, tp, -898
                  nop
                  bltu         s11, s3, 785f
                  slt          s5, t3, t0
                  addi         t5, t1, 946
                  sltu         s8, s3, zero
773:              slti         s6, s11, -1164
                  and          a1, a4, s6
775:              and          a5, t2, s8
                  bne          t0, t3, 790f
                  srli         s2, s9, 31
                  ori          ra, s11, -1325
779:              add          s1, s0, s6
                  beq          t5, tp, 784f
                  bne          gp, s10, 782f
782:              or           a0, gp, gp
                  srl          t2, s6, t6
784:              sub          t2, s9, a5
785:              sub          a1, a5, t2
                  bltu         a2, t3, 805f
                  sub          s0, t1, s5
                  slti         t4, s0, -1709
                  bge          a7, s7, 796f
790:              addi         t1, t4, 1217
                  sub          a0, tp, t1
                  xor          ra, s5, t6
                  sra          s2, s5, tp
                  lui          a6, 880419
                  beq          a7, s2, 800f
796:              srai         s7, gp, 10
                  slti         tp, t0, 821
                  xori         zero, tp, -1390
                  lui          s11, 125296
800:              beq          sp, t6, 806f
                  andi         s6, s7, 576
                  ori          s2, a4, 861
                  andi         s8, a4, 239
                  bltu         sp, t1, 807f
805:              bne          a1, a5, 821f
806:              slt          s7, t3, t0
807:              bgeu         a3, a0, 813f
                  lui          s1, 605182
                  addi         a6, t2, 1091
                  srli         a5, t5, 19
                  xor          a0, s1, s2
                  blt          s4, sp, 828f
813:              sll          s11, t1, s1
                  sll          s8, s1, zero
                  xori         a6, tp, -198
                  sub          a1, s3, t6
                  blt          s7, s0, 821f
                  xor          a3, a4, s3
                  bne          s9, ra, 820f
                  la           sp, region_1+1235 #start riscv_load_store_rand_instr_stream_1
                  sll          s4, s7, t3
                  ori          s5, s8, 1379
                  lbu          s8, 38(sp)
                  xori         s7, a1, -1778
                  or           t4, s0, a6
                  sh           s4, 47(sp)
                  add          t1, s10, s1
                  sltu         t4, sp, a2
                  lb           t1, 39(sp)
                  xori         s0, s7, 1862
                  lhu          t6, -33(sp)
                  andi         gp, t0, 1594
                  lh           s5, 5(sp)
                  lbu          a3, 51(sp)
                  srl          t6, s7, t4
                  slt          a2, a7, a4
                  nop
                  auipc        gp, 653092
                  lh           s9, 11(sp)
                  lbu          s1, -17(sp)
                  lbu          s0, -49(sp)
                  lbu          s1, 50(sp)
                  sb           s9, -4(sp)
                  lb           s4, 24(sp)
                  sub          t1, sp, a4
                  slli         t6, s6, 5
                  auipc        a4, 927171
                  lb           a0, 47(sp)
                  lh           a1, 33(sp)
                  lb           s0, -22(sp)
                  slt          s4, t2, a3
                  sb           s8, -54(sp)
                  lbu          s0, -17(sp)
                  sb           t1, -62(sp)
                  sll          a5, sp, t5
                  xor          tp, s10, s6
                  lbu          t2, -24(sp)
                  sll          ra, sp, t4
                  sltu         s1, a5, s11
                  lb           t1, -34(sp)
                  lbu          t3, 58(sp)
                  or           a0, s9, s6
                  xor          t6, t5, a1
                  sub          a0, a1, s8
                  lbu          s11, 12(sp)
                  lh           s2, 53(sp) #end riscv_load_store_rand_instr_stream_1
820:              srai         a2, t0, 29
821:              sra          s5, t5, s5
                  bltu         a3, t5, 833f
                  srl          s11, t0, a4
                  and          t2, s9, a6
                  sltu         s1, zero, s9
                  slli         t4, a4, 31
                  bne          t2, a0, 839f
828:              slti         a6, a4, 1798
                  xor          s2, t1, s5
                  srai         s9, t5, 15
                  slt          t4, a1, t4
                  sll          t2, t1, s11
833:              sub          sp, s5, t3
                  xor          s6, ra, t6
                  or           s0, a1, t6
                  bgeu         sp, t2, 853f
                  sltiu        s9, t0, -1222
                  sltiu        sp, t5, -1051
839:              sll          s7, gp, s1
                  blt          s11, t1, 842f
                  srli         a7, s10, 27
842:              bge          t0, t0, 843f
843:              xor          s8, gp, a4
                  srl          a0, s6, s10
                  srai         s11, s1, 6
                  bge          a3, t4, 854f
                  bltu         s9, t3, 853f
                  and          s4, gp, a5
                  add          t1, s7, tp
                  slli         t3, s5, 8
                  bgeu         zero, gp, 859f
                  andi         a3, s0, 1352
853:              or           s9, tp, s7
854:              nop
                  bne          t5, t5, 873f
                  sra          s11, gp, a3
                  sll          s9, a4, t5
                  bge          s4, s3, 866f
859:              sra          s1, s7, s5
                  srai         a2, a0, 4
                  slli         s11, a2, 17
                  sub          s1, s10, s9
                  auipc        ra, 648814
                  sra          s8, t1, t3
                  auipc        t6, 289746
866:              sltu         a2, s11, zero
                  slt          a2, s5, a4
                  bne          a0, sp, 888f
                  sra          t1, zero, s6
                  lui          s11, 251794
                  add          a2, s10, s8
                  bne          tp, t2, 884f
873:              blt          a2, sp, 884f
                  sub          s5, s9, s4
                  nop
                  xori         sp, s3, -381
                  bltu         s6, t5, 882f
                  andi         t3, t6, -971
                  sll          sp, s11, t0
                  slli         a1, s4, 26
                  or           a5, a4, s6
882:              sra          t2, s3, s2
                  ori          a1, s9, 557
884:              sltiu        a1, s4, -1939
                  xori         s6, t4, -1261
                  sra          s1, a2, a7
                  bgeu         t4, a1, 894f
888:              blt          a7, a4, 902f
                  sub          a6, t3, s0
                  sra          a6, t2, t4
                  bltu         a5, a6, 907f
                  srl          a5, s1, t6
                  slt          s4, t0, s5
894:              sub          s5, s6, a7
                  bgeu         a2, a4, 914f
                  slli         ra, s4, 20
                  and          s5, s11, t2
                  sltiu        s9, ra, 880
                  sub          sp, a5, t4
                  bge          sp, s0, 917f
                  srli         t1, s7, 12
902:              slti         a4, t0, 1266
                  sra          gp, a7, t4
                  auipc        t3, 1031743
                  blt          s9, s4, 923f
                  auipc        t4, 582220
907:              lui          t4, 628189
                  lui          a5, 709147
                  ori          s9, a1, -886
                  srai         s7, s10, 13
                  sltu         a7, a4, s9
                  add          t3, a4, s4
                  auipc        a1, 20085
914:              beq          s2, t5, 930f
                  srli         a2, sp, 21
                  bne          s3, a6, 917f
917:              sll          zero, sp, s11
                  add          a3, a2, t4
                  nop
                  andi         a7, t5, 1156
                  add          sp, a0, t5
                  bge          a5, t4, 924f
923:              slt          s2, t5, t5
924:              slti         a3, t0, 156
                  blt          s8, s1, 931f
                  sub          t6, a0, s1
                  bgeu         s1, zero, 930f
                  slt          t3, a1, a3
                  ori          a7, t5, -197
930:              bltu         s0, t5, 936f
931:              xor          s11, s8, a1
                  srai         a2, a7, 21
                  sltu         ra, t6, t0
                  sltu         s1, a0, sp
                  lui          s8, 357120
936:              sll          t1, t6, a5
                  ori          a6, t3, -772
                  bltu         s5, a1, 939f
939:              blt          s8, s11, 951f
                  sltu         sp, s11, s0
                  sltu         a2, ra, s1
                  sra          s6, s9, s11
                  slti         a1, t0, 1960
                  add          ra, s0, s10
                  srli         sp, s4, 7
                  xor          t1, gp, t0
                  bne          a4, tp, 948f
948:              srli         a6, t5, 26
                  bne          sp, s10, 965f
                  bne          a1, s2, 954f
951:              and          t3, a4, sp
                  xor          sp, a1, gp
                  ori          s5, s3, 239
954:              ori          s2, a3, 907
                  sll          a6, s3, s9
                  blt          s6, zero, 968f
                  andi         a3, t6, 1248
                  slli         a3, sp, 29
                  xor          sp, t5, tp
                  srl          s7, s11, t5
                  or           a5, zero, s6
                  nop
                  ori          s2, a5, 1768
                  addi         gp, s2, 610
965:              sll          a1, s6, s0
                  beq          s10, t2, 970f
                  lui          a5, 851690
968:              sra          a5, t3, t4
                  sub          s11, s11, t1
970:              nop
                  and          a6, s8, s4
                  bltu         t2, s4, 976f
                  add          ra, s11, gp
                  bltu         s6, s0, 976f
                  bge          s9, tp, 978f
976:              andi         t4, s6, 771
                  sub          t3, s6, s11
978:              addi         s5, s7, -579
                  slli         t6, s10, 0
                  and          s9, s11, s4
                  sll          s6, t2, sp
                  bltu         a6, tp, 988f
                  srli         s4, gp, 2
                  nop
                  sltu         s8, zero, s8
                  slt          t1, t4, t4
                  lui          tp, 505125
988:              and          t6, a7, s3
                  slli         s2, a0, 4
                  slt          s0, a3, s5
                  xori         s11, t6, 1829
                  srai         t4, t6, 28
                  srli         a2, a1, 27
                  ori          t5, a2, -1466
                  bge          a4, s2, 997f
                  xor          sp, a0, a6
997:              sra          sp, s2, a1
                  xori         s5, t0, 1775
                  add          a6, tp, t6
                  bltu         t2, t5, 1006f
                  sra          a7, s0, s7
                  ori          a7, ra, -37
                  nop
                  beq          s11, s5, 1010f
                  bne          t0, s7, 1022f
1006:             auipc        s0, 349766
                  bne          s11, t4, 1019f
                  slli         s9, s7, 11
                  bgeu         s4, t4, 1014f
1010:             srl          a0, gp, a1
                  add          a0, s8, t0
                  sltiu        s5, a1, 1529
                  slli         a2, s9, 1
1014:             nop
                  bgeu         gp, t6, 1027f
                  ori          a0, t2, -10
                  add          ra, a2, t0
                  andi         t2, ra, -995
1019:             nop
                  srai         tp, t0, 4
                  srl          a2, tp, a3
1022:             addi         zero, s3, 334
                  sltu         s0, a3, zero
                  sub          s9, s5, t3
                  sub          a1, ra, t6
                  or           a5, t3, a5
1027:             andi         a2, t4, -1982
                  andi         t5, gp, -313
                  auipc        s9, 532877
                  blt          s1, a4, 1034f
                  srli         s0, s6, 22
                  sll          s9, t2, s7
                  sub          a3, t5, a3
1034:             srai         s8, a2, 29
                  bltu         s1, s11, 1037f
                  slt          t3, s8, s2
1037:             slt          s4, a5, a4
                  addi         a6, s1, -1988
                  or           sp, t5, s7
                  xor          s11, ra, a6
                  sltu         s2, s1, s0
                  nop
                  slt          s6, a1, a2
                  bne          t1, a5, 1052f
                  srl          tp, t6, a2
                  sra          sp, a4, gp
                  andi         a0, a0, 1091
                  add          a6, tp, a1
                  blt          a5, gp, 1053f
                  xori         t4, t0, 918
                  srai         a3, s7, 0
1052:             xori         sp, s7, -372
1053:             andi         a2, a2, 1719
                  srli         a4, a6, 11
                  xor          a5, t2, t0
                  addi         s4, s1, 1468
                  nop
                  srl          s4, sp, sp
                  bne          s8, s3, 1077f
                  sltiu        t3, s4, -440
                  blt          s9, a0, 1075f
                  or           s2, a1, t5
                  beq          a1, t3, 1066f
                  bltu         s5, tp, 1083f
                  bne          a1, gp, 1081f
1066:             bltu         s5, a5, 1069f
                  ori          a4, s5, -330
                  add          a3, ra, a3
1069:             sltiu        s8, t6, 1062
                  sub          t1, s9, s10
                  srli         t6, s3, 3
                  and          a3, t6, a3
                  srl          s2, a0, t0
                  auipc        s2, 271767
1075:             bne          t5, s2, 1079f
                  lui          ra, 50671
1077:             slli         t3, s0, 23
                  blt          gp, s7, 1089f
1079:             sltiu        t3, t1, -751
                  slli         sp, s2, 8
1081:             sltu         s6, t5, s2
                  sltiu        a6, a7, -1632
1083:             sub          a3, s3, a6
                  and          s4, s9, s7
                  bgeu         s2, a6, 1101f
                  xori         t1, s6, -572
                  lui          t5, 653579
                  xor          t1, s10, s8
1089:             lui          s2, 762072
                  auipc        a5, 114576
                  auipc        s7, 603991
                  sltu         s9, s2, s6
                  auipc        ra, 581661
                  slti         a0, t2, 1018
                  slli         s0, s4, 28
                  ori          a5, t4, -1681
                  sltiu        a6, s5, -1775
                  srai         ra, s5, 29
                  add          s7, t1, s2
                  slt          zero, t1, t4
1101:             srai         sp, s0, 10
                  addi         s8, a4, 805
                  slli         a6, gp, 7
                  nop
                  auipc        s7, 747434
                  srai         s11, t5, 21
                  ori          t5, ra, -295
                  nop
                  srl          s4, a1, a1
                  ori          s4, t1, 514
                  bltu         s3, s1, 1116f
                  blt          s7, a0, 1116f
                  slt          tp, sp, s7
                  sltu         a2, t4, a1
                  ori          a6, gp, 1843
1116:             srl          t2, s4, a5
                  sub          t1, a5, ra
                  srai         s2, a1, 0
                  lw           ra, 4(s3)
                  slt          s2, a4, s4
                  sltiu        a5, gp, -1861
                  addi         s3, s3, 56
                  ori          a2, gp, 1762
1495:             addi x6, x1, 0
1495:             jalr x6, x6, 0
sub_5:            auipc        tp, 739741
                  andi         gp, a6, 73
                  bge          s7, t0, sub_5_stack_p
sub_5_stack_p:    addi         s3, s3, -28
                  or           a1, s5, zero
                  sw           ra, 4(s3)
                  auipc        s4, 14940
                  xori         t5, t2, 601
                  sll          s0, t6, s9
                  la           a7, region_1+767 #start riscv_load_store_rand_instr_stream_2
                  xor          t2, t0, s1
                  srai         t6, s1, 21
                  lbu          t1, 648(a7)
                  nop
                  lb           s7, -269(a7)
                  srli         a0, t5, 4
                  lh           s7, 51(a7)
                  lhu          s2, 1083(a7)
                  add          s11, ra, t3
                  lb           zero, 76(a7)
                  ori          t1, a0, -768
                  sh           zero, -339(a7)
                  addi         t6, sp, 1080
                  ori          a6, a2, -1780
                  sb           zero, 1088(a7)
                  sb           s3, 1050(a7)
                  lb           t6, 1057(a7)
                  sltu         gp, s2, t4
                  sub          t4, tp, t4
                  auipc        s11, 916331
                  srai         sp, s6, 21
                  lb           a0, 1066(a7)
                  lb           s0, 620(a7)
                  lbu          s1, 1002(a7)
                  srai         a6, zero, 9
                  or           t6, a7, s11
                  xori         t5, s5, 1711
                  lb           s1, 883(a7) #end riscv_load_store_rand_instr_stream_2
                  la           a5, region_1+721 #start riscv_load_store_rand_instr_stream_0
                  sltiu        s1, a7, 856
                  lbu          sp, -30(a5)
                  lh           ra, 61(a5)
                  lw           s0, -57(a5)
                  xor          s6, t0, a0
                  sb           a6, -24(a5)
                  ori          a1, s9, -1286
                  sw           a6, -1(a5)
                  lb           t1, 9(a5)
                  sltu         t1, s11, sp
                  andi         t4, s2, 455
                  add          ra, s2, a7
                  and          t5, tp, t1
                  sh           s9, -15(a5)
                  xor          t2, s2, tp
                  lb           a1, -36(a5)
                  srli         gp, zero, 7
                  slt          t3, a3, a2
                  sw           sp, 27(a5)
                  srl          a1, tp, zero
                  sb           a0, -15(a5)
                  ori          tp, t5, -1001
                  auipc        a1, 527550
                  sltiu        s9, gp, -1762
                  or           s8, t2, a4
                  auipc        a6, 871296
                  sltu         s0, sp, zero
                  lbu          t2, 64(a5)
                  sb           a2, -1(a5)
                  sltiu        s2, s8, -1546
                  sw           s6, -21(a5)
                  sh           a1, 31(a5)
                  lb           s6, -52(a5)
                  lbu          s9, 20(a5)
                  lb           s9, -58(a5)
                  sb           s8, 6(a5) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_0+1884 #start riscv_load_store_rand_instr_stream_4
                  sra          s9, a4, sp
                  sltiu        gp, s1, -1137
                  lb           a1, -2(t3)
                  lbu          s7, 11(t3)
                  slli         zero, sp, 0
                  lbu          s2, 9(t3)
                  sltiu        s9, a4, -262
                  ori          s0, s0, 639
                  and          s6, s6, a7
                  lbu          a6, 15(t3)
                  sb           s8, -14(t3)
                  sll          s11, a2, sp
                  nop
                  sub          a0, a2, a6
                  lui          gp, 37031
                  lhu          t6, 8(t3)
                  sll          s5, zero, s6
                  lhu          s4, -8(t3)
                  slt          s2, t6, t0
                  slt          t1, s10, t5
                  sb           gp, -9(t3)
                  addi         t6, a2, 1232
                  lb           t2, -9(t3)
                  nop
                  slti         t5, gp, 1464
                  or           s2, t4, s9
                  lui          sp, 486949
                  nop
                  lb           zero, -7(t3)
                  sb           a1, 6(t3)
                  sub          gp, s1, sp
                  slt          a2, s11, t2
                  lb           t5, -7(t3)
                  sh           tp, -16(t3)
                  sb           zero, -9(t3)
                  lbu          t2, 14(t3) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+735 #start riscv_load_store_rand_instr_stream_3
                  srli         t4, a6, 28
                  sw           s1, 837(sp)
                  slt          t4, s0, t0
                  lui          zero, 885738
                  sb           s11, -55(sp)
                  lbu          zero, 500(sp)
                  sh           s9, 679(sp)
                  lb           t4, 122(sp)
                  sub          a5, a6, t6
                  lbu          t2, -546(sp)
                  srl          s9, a1, a6
                  sltiu        s11, zero, 707
                  lb           a3, 710(sp)
                  sb           s2, -112(sp)
                  sw           s7, -455(sp)
                  sh           a1, 441(sp)
                  lhu          s9, 1131(sp)
                  lb           s1, -163(sp)
                  lh           a2, -369(sp)
                  sh           s11, -63(sp)
                  lw           t2, -319(sp)
                  lhu          tp, -423(sp)
                  lhu          a6, 237(sp)
                  sh           a1, 793(sp)
                  sb           a0, -34(sp)
                  sb           t3, -150(sp)
                  lbu          t6, 50(sp)
                  lh           a7, 1179(sp)
                  ori          s2, s9, 1320
                  sb           s0, -725(sp)
                  lh           s8, 923(sp)
                  sltiu        ra, a0, 994
                  lb           s5, -301(sp)
                  addi         s6, s11, -1418
                  sltiu        t5, s10, -1207
                  lbu          s4, 293(sp)
                  xor          a2, s6, a1
                  sh           s0, -723(sp) #end riscv_load_store_rand_instr_stream_3
                  ori          s9, zero, 835
                  sub          t3, a0, s6
                  add          a4, gp, a7
                  sltu         gp, t1, t6
                  slli         a7, s11, 18
                  addi         a6, a6, -1068
                  sll          gp, s3, a7
                  sltiu        s6, s8, -735
                  bgeu         t2, s1, 19f
                  ori          a6, s4, -269
                  blt          t6, gp, 25f
                  addi         tp, a4, -873
                  srai         ra, s11, 19
                  bne          a1, t6, 20f
                  auipc        a7, 955048
                  slti         gp, s9, -69
                  sll          sp, t6, tp
                  beq          ra, s8, 34f
                  slti         a6, a2, -231
19:               nop
20:               slt          a7, a0, s6
                  slt          a1, t5, s3
                  add          s11, gp, a7
                  and          s2, a5, s3
                  slti         a6, s0, -224
25:               xor          a7, sp, s4
                  srli         s5, t0, 23
                  bne          s7, a3, 43f
                  sra          sp, a7, s11
                  srl          s8, t2, s9
                  srli         ra, a3, 30
                  slt          t5, sp, s11
                  bge          t2, tp, 43f
                  bne          t5, a3, 35f
34:               nop
35:               slti         a4, a4, -1969
                  sub          tp, t4, t4
                  slli         t3, s2, 15
                  slt          a4, t6, t0
                  srli         s0, a3, 27
                  beq          s5, t5, 43f
                  slt          t3, a1, s7
                  auipc        a2, 65732
43:               ori          a4, t2, 1660
                  xori         sp, t0, -1342
                  slli         gp, a7, 9
                  sub          a0, s3, s5
                  add          s11, s4, a2
                  bne          gp, s4, 51f
                  addi         t3, s7, -1071
                  lui          t5, 957408
51:               slti         t5, a0, 784
                  lui          a0, 62998
                  srl          a4, s11, s6
                  blt          a7, a4, 63f
                  sltu         ra, t3, zero
                  auipc        t2, 408734
                  addi         s9, a7, -811
                  or           t3, a1, s5
                  ori          s6, s4, 1274
                  or           t2, a6, zero
                  xori         s9, a3, 1197
                  addi         a5, s3, 411
63:               andi         t3, t5, -1641
                  and          t4, t3, s0
                  slli         a1, sp, 16
                  andi         t3, sp, -404
                  sub          a3, s9, s9
                  srai         s4, s8, 2
                  sltu         t3, s7, gp
                  bne          a7, t5, 87f
                  andi         a2, sp, 32
                  bgeu         s9, s11, 73f
73:               sub          a5, zero, t5
                  beq          a1, sp, 85f
                  and          s6, s11, s3
                  slti         sp, s4, 1495
                  slli         a2, t2, 20
                  xori         s5, t0, 245
                  and          t6, s1, s10
                  xor          a6, s9, s10
                  ori          t1, t1, 1107
                  slt          a4, s1, t2
                  sltu         s2, t4, s8
                  xor          t3, a6, s6
85:               addi         s11, zero, 338
                  srli         s11, a0, 29
87:               sltu         s4, a3, a6
                  xori         s5, a7, 150
                  xor          s9, s9, zero
                  blt          a5, t0, 103f
                  slli         sp, a2, 21
                  slt          t3, gp, t1
                  srli         a6, a7, 16
                  or           t3, t1, s4
                  add          s5, s10, sp
                  slli         gp, s0, 9
                  srai         ra, s1, 3
                  bgeu         s1, a2, 103f
                  bge          s3, zero, 112f
                  slt          s7, tp, a6
                  nop
                  ori          s5, s1, -478
103:              bne          s0, gp, 113f
                  and          ra, s1, t3
                  slt          t1, t4, s4
                  addi         zero, sp, -669
                  bne          s5, tp, 108f
108:              nop
                  and          s6, zero, s5
                  auipc        t4, 207179
                  xori         a1, s9, 476
112:              slt          gp, a3, a1
113:              xor          t1, a5, t0
                  nop
                  sltu         a2, s7, sp
                  sltiu        s6, s6, 1040
                  sub          t1, s0, a5
                  xori         s5, ra, -710
                  and          s6, ra, t1
                  sra          s9, a5, a2
                  add          s7, t2, s11
                  blt          s1, s9, 139f
                  auipc        a4, 482388
                  beq          gp, s6, 126f
                  bgeu         s7, a6, 142f
126:              slt          s1, a7, s7
                  lui          a7, 113926
                  lui          a0, 741915
                  bltu         t0, s1, 131f
                  srl          s6, zero, a2
131:              lui          zero, 685999
                  andi         s6, s9, -472
                  srai         t5, a2, 29
                  add          a7, zero, ra
                  bltu         s4, s10, 136f
136:              add          a7, s3, a3
                  xori         t3, a6, -1678
                  bltu         a0, gp, 145f
139:              ori          zero, t2, -1660
                  auipc        t3, 501076
                  nop
142:              or           sp, t0, s1
                  sll          s0, tp, s10
                  nop
145:              sub          s0, s10, s5
                  slli         t3, s6, 12
                  sra          a1, gp, t1
                  srl          s7, tp, a5
                  slti         s2, a0, -1241
                  srli         s1, a7, 9
                  xor          a1, s7, a6
                  slli         s4, t0, 14
                  auipc        gp, 262130
                  xori         a6, s1, 312
                  slt          t6, s10, a1
                  addi         tp, s3, -1955
                  sltu         s11, a0, s11
                  srli         s4, s1, 26
                  sub          s7, s8, a2
                  xori         s9, a6, 111
                  sra          s8, sp, t6
                  or           a6, s10, t2
                  blt          ra, s4, 166f
                  bne          s9, t1, 171f
                  or           sp, s4, s1
166:              or           a3, s8, s2
                  addi         s0, s9, -1000
                  sltiu        gp, t4, -1996
                  ori          s11, a0, -550
                  slti         a4, s0, 541
171:              slli         a0, a7, 12
                  auipc        a7, 1012696
                  slli         s6, zero, 24
                  slli         a5, s5, 30
                  ori          t1, t0, 1835
                  bge          s7, t6, 196f
                  bgeu         s9, s2, 191f
                  blt          s8, t2, 179f
179:              beq          s4, s3, 181f
                  blt          a2, s0, 191f
181:              or           a6, s0, a3
                  srl          s6, a1, a0
                  bgeu         a1, t1, 200f
                  and          t1, a6, ra
                  bne          t2, s8, 186f
186:              sll          t3, a1, s3
                  nop
                  bgeu         s7, gp, 205f
                  xor          s6, a5, a7
                  add          a5, s0, a5
191:              add          a4, s10, sp
                  lui          t6, 427226
                  xor          a4, tp, a5
                  ori          a6, s6, 1981
                  bgeu         s8, a3, 210f
196:              ori          t5, sp, 1651
                  auipc        s6, 980910
                  sll          s6, s5, s5
                  srl          a1, tp, t4
200:              sll          t4, t6, s5
                  sub          t2, tp, t6
                  sub          t4, t4, a0
                  slli         a6, tp, 24
                  sub          s11, s9, t0
205:              sll          a1, t3, s7
                  la           s5, region_0+629 #start riscv_load_store_rand_instr_stream_1
                  sh           s6, 1(s5)
                  slt          t2, t6, a7
                  nop
                  sltu         s1, s11, a3
                  nop
                  lb           a3, -44(s5)
                  sra          tp, ra, s3
                  lh           t6, 39(s5)
                  add          s6, a7, a7
                  srli         s9, s3, 30
                  nop
                  and          a6, s8, t6
                  lbu          s4, -27(s5)
                  sb           s11, -32(s5)
                  srli         s2, s7, 16
                  lb           a5, 60(s5)
                  andi         t1, a7, -385
                  sb           s0, 6(s5)
                  or           t3, t1, s6
                  slti         a6, s2, -1264
                  lb           s11, 2(s5)
                  lhu          t1, -39(s5)
                  lbu          s1, -10(s5) #end riscv_load_store_rand_instr_stream_1
                  andi         t6, s8, -115
                  sra          s6, a7, t6
                  bltu         zero, a1, 211f
                  sltiu        s7, a6, -477
210:              blt          s11, t4, 223f
211:              xori         a2, a7, -349
                  addi         a6, a2, -1205
                  ori          s7, s4, 491
                  sltu         s7, sp, tp
                  andi         t6, a5, -1019
                  auipc        a1, 665222
                  xori         a2, s3, 164
                  sub          s5, ra, t2
                  sltu         a0, s9, t5
                  lui          s8, 673833
                  sub          s6, s11, s5
                  srli         t5, s3, 23
223:              addi         gp, t6, 1999
                  beq          a4, gp, 225f
225:              bltu         gp, s6, 241f
                  sltiu        a3, t2, -1768
                  xor          a6, s0, s6
                  srl          s6, a6, sp
                  bge          s11, a1, 242f
                  srl          s5, s0, s0
                  slti         s1, a3, -1560
                  bgeu         sp, s10, 239f
                  srai         a7, t0, 11
                  bne          s1, gp, 254f
                  auipc        s11, 946310
                  add          tp, t2, s9
                  xor          t2, s6, a1
                  ori          a0, a7, -316
239:              bgeu         s9, t6, 250f
                  srli         s2, tp, 15
241:              sra          tp, a3, t3
242:              xori         a7, a7, -1742
                  addi         s11, t0, 329
                  andi         s2, a7, -598
                  xor          a1, t0, gp
                  or           a0, a5, t2
                  and          gp, t1, t0
                  sub          s8, sp, gp
                  bge          gp, s9, 251f
250:              ori          gp, sp, 1620
251:              xori         a2, a1, -332
                  auipc        s0, 114684
                  sra          s8, s6, t3
254:              slt          s2, sp, s11
                  or           a0, zero, sp
                  srli         t6, s1, 22
                  srli         t6, a4, 0
                  nop
                  srli         s11, a7, 19
                  sub          t2, a6, a4
                  srl          a2, t0, t5
                  xori         s5, a3, 931
                  blt          s11, a7, 280f
                  sra          t1, a1, s5
                  addi         a2, a7, -85
                  bne          a5, s4, 267f
267:              bgeu         zero, tp, 268f
268:              srai         a3, s1, 19
                  lui          ra, 427959
                  sra          zero, t5, gp
                  srli         a7, t0, 24
                  sub          a4, s7, a3
                  add          s0, a1, t2
                  sltiu        a0, s9, -454
                  sltu         sp, zero, t0
                  bne          s1, gp, 281f
                  srl          t5, s8, a7
                  sra          t5, s7, a2
                  nop
280:              beq          t6, gp, 283f
281:              beq          a7, s4, 283f
                  sltiu        s5, t3, 1959
283:              srl          ra, a0, a0
                  xori         a3, s11, -290
                  lui          sp, 796231
                  sltu         a3, t1, t2
                  auipc        t4, 678705
                  xori         s2, s11, 26
                  bne          s0, gp, 292f
                  slti         a5, zero, -1029
                  and          tp, t0, s1
292:              and          t3, s11, s7
                  auipc        s0, 60378
                  xor          s7, zero, a7
                  nop
                  blt          s1, s4, 303f
                  sltu         t3, gp, s5
                  srl          a0, t2, a0
                  xor          t1, t4, s4
                  and          t4, s1, zero
                  sll          t6, tp, a7
                  sra          a3, t2, s10
303:              andi         s11, zero, -1546
                  nop
                  xori         s2, s6, -812
                  sub          s5, s9, s11
                  bge          ra, s11, 316f
                  addi         s6, s5, 39
                  andi         s1, s11, 238
                  beq          s6, s5, 317f
                  sltu         a5, a7, zero
                  bge          a0, a1, 314f
                  auipc        s7, 214602
314:              add          t6, t3, s9
                  bgeu         t0, s2, 332f
316:              srl          s0, a0, s2
317:              nop
                  sltu         s4, s4, sp
                  srli         a1, s2, 23
                  add          s11, zero, t1
                  and          t5, a1, t4
                  sub          a3, t5, s1
                  sltiu        s0, s9, -314
                  sltiu        ra, a5, 1360
                  bgeu         sp, s10, 336f
                  blt          s8, t0, 336f
                  addi         a2, t4, -1602
                  beq          s0, ra, 330f
                  blt          s10, a6, 343f
330:              bgeu         t1, a5, 331f
331:              lui          sp, 368065
332:              auipc        s11, 407532
                  sltu         a5, a1, a1
                  andi         tp, t5, -323
                  bltu         t5, s3, 348f
336:              nop
                  sra          s0, s2, ra
                  srl          t4, gp, a7
                  bge          a6, a7, 340f
340:              beq          a4, s8, 356f
                  ori          s6, t4, 537
                  addi         s0, ra, -1560
343:              auipc        t5, 622855
                  sub          gp, t0, s3
                  bltu         t0, ra, 356f
                  ori          s2, t6, -1860
                  srli         t5, s5, 1
348:              sra          tp, s9, t6
                  sltu         t5, s10, t5
                  nop
                  sltu         gp, gp, t2
                  bge          gp, t2, 363f
                  xori         a6, a3, -1849
                  beq          t0, tp, 368f
                  bltu         s8, sp, 372f
356:              and          s5, a7, t6
                  sub          s9, a4, t3
                  sll          sp, t1, sp
                  blt          t1, s3, 379f
                  and          a2, t3, a0
                  addi         t2, a0, 510
                  slti         s0, s9, -1463
363:              and          s7, a7, t4
                  andi         ra, a3, 253
                  and          a3, s1, a2
                  auipc        s1, 821892
                  slt          s9, s7, t0
368:              sub          a1, t0, s8
                  slti         t6, s8, 572
                  slti         a4, s7, -1467
                  addi         a4, s0, 1218
372:              slli         a7, a2, 26
                  add          t1, s5, a5
                  blt          tp, t2, 387f
                  sll          s6, a6, t5
                  add          a3, gp, a3
                  ori          gp, t6, -442
                  bne          sp, sp, 381f
379:              blt          t1, a3, 386f
                  slt          tp, s8, t5
381:              nop
                  sub          s7, t2, a3
                  ori          s5, t0, -861
                  ori          s4, a2, -1685
                  bne          s11, gp, 390f
386:              addi         s1, t5, 558
387:              bge          zero, t3, 398f
                  addi         s2, a5, 1665
                  blt          zero, zero, 391f
390:              xori         a6, s3, -82
391:              blt          s4, t2, 394f
                  sltiu        s2, a4, -1610
                  xor          t2, a2, s10
394:              nop
                  xori         a3, s10, 817
                  add          a0, s3, s11
                  or           a6, t4, s2
398:              sltu         zero, s10, a0
                  xori         t2, a4, 1272
                  bne          t4, t1, 403f
                  ori          a7, t1, 1850
                  bgeu         s11, t2, 404f
403:              lui          gp, 578944
404:              addi         t2, s6, -1879
                  add          tp, t4, s4
                  srli         t2, s10, 30
                  lui          a3, 513416
                  bgeu         s10, s3, 425f
                  sub          sp, a5, t1
                  auipc        s9, 729771
                  andi         t5, a4, 407
                  srl          a5, a2, gp
                  beq          s4, s5, 420f
                  slti         ra, a2, 1113
                  slti         s1, s11, -1494
                  slti         a5, a1, 740
                  srl          s8, s11, s11
                  slti         t3, ra, -925
                  or           s5, s11, s10
420:              bne          zero, s9, 430f
                  beq          t1, s5, 438f
                  sra          t5, t2, t3
                  sra          s5, s3, s1
                  beq          a6, t5, 431f
425:              andi         a0, a3, 1376
                  sltiu        a1, ra, 170
                  add          a5, tp, s3
                  slti         t2, a5, 452
                  xori         t3, a7, 727
430:              slli         a6, s4, 4
431:              sltiu        s6, s8, -1642
                  andi         s7, s1, -668
                  slt          s8, a5, a2
                  blt          a0, t4, 435f
435:              sra          zero, s5, s3
                  or           a3, s2, s2
                  sra          s11, a6, s10
438:              slti         s5, tp, 24
                  slli         zero, t4, 9
                  bltu         a1, a7, 442f
                  srai         t5, s10, 31
442:              slt          s11, s9, a5
                  bne          a4, t1, 460f
                  xor          a6, a1, s0
                  lui          s5, 670625
                  bne          t4, t1, 447f
447:              bltu         a6, s2, 462f
                  bne          s6, s3, 450f
                  sll          a7, a6, s5
450:              xor          a6, a0, s4
                  sra          t4, tp, a5
                  xori         a3, s1, 1727
                  and          ra, t0, t0
                  lui          s7, 978812
                  xori         sp, s9, 920
                  ori          s1, a1, 586
                  andi         a7, s5, 1861
                  slli         s7, t1, 19
                  andi         a3, t2, 145
460:              bge          t4, a6, 469f
                  lui          tp, 661439
462:              bge          s2, t0, 463f
463:              ori          s7, a2, -100
                  xor          ra, t2, t2
                  sra          t4, t5, s2
                  slti         s1, s3, -159
                  or           tp, t1, a6
                  bne          a6, s2, 479f
469:              bltu         s5, t5, 486f
                  srli         a2, a1, 2
                  sub          a3, t0, s0
                  srli         t4, s0, 2
                  sltiu        ra, t1, 466
                  xor          sp, s0, s11
                  sltiu        sp, s4, -830
                  slt          s2, s3, s10
                  srai         a5, t0, 25
                  bge          t4, s6, 480f
479:              or           sp, a7, a6
480:              ori          a2, s7, 1163
                  bne          s1, a3, 494f
                  bne          t0, t3, 499f
                  addi         s0, a3, -590
                  sltiu        s8, s10, -770
                  xori         a3, s6, 887
486:              add          sp, s2, a6
                  auipc        a1, 195291
                  bne          t3, t0, 490f
                  lui          a1, 606819
490:              bne          tp, t3, 507f
                  bltu         a0, a2, 493f
                  sltiu        a6, gp, -59
493:              slli         s7, t1, 28
494:              sltiu        sp, t0, 1271
                  sltu         t2, t0, s5
                  sll          gp, s5, t0
                  srai         s0, t6, 3
                  add          a5, t2, zero
499:              sra          t5, gp, s3
                  add          s9, t0, s7
                  sub          a7, t4, ra
                  srl          a0, t5, a1
                  sltu         t4, a4, a2
                  ori          ra, s2, 1924
                  bgeu         sp, ra, 518f
                  add          t4, s0, t0
507:              sltiu        a5, a7, -744
                  srai         gp, gp, 26
                  sltiu        t6, ra, -414
                  sltiu        a5, a4, -871
                  slt          a0, s0, a5
                  bgeu         tp, s2, 515f
                  srai         a1, s6, 27
                  bgeu         a6, zero, 521f
515:              bne          a7, a1, 530f
                  srli         t2, t1, 28
                  sltu         a0, s4, gp
518:              bge          s1, zero, 521f
                  nop
                  beq          s10, s2, 521f
521:              andi         t2, t0, -557
                  andi         a3, t1, 1369
                  slt          a3, t3, t3
                  bltu         a6, a0, 531f
                  bgeu         sp, a7, 536f
                  sltu         a4, a4, s3
                  srai         zero, s4, 25
                  slti         gp, s9, 205
                  blt          a1, a7, 530f
530:              srai         a4, a7, 20
531:              slt          s6, a1, s8
                  or           t6, t1, gp
                  sltu         s2, t3, ra
                  xor          ra, s9, t4
                  bge          s0, s8, 555f
536:              sltu         t5, zero, t6
                  add          s7, s5, s11
                  auipc        s6, 565459
                  srl          s11, t1, t3
                  andi         t5, s0, -663
                  xor          a6, s3, gp
                  srl          a2, s3, s8
                  and          ra, a0, a3
                  sll          t4, t3, s9
                  xori         t1, zero, 472
                  blt          a2, gp, 560f
                  xor          t1, s9, t0
                  xor          s4, a7, s4
                  and          sp, s2, a7
                  srli         t4, s1, 24
                  nop
                  bne          tp, s11, 557f
                  sltu         gp, s1, s1
                  lui          sp, 267169
555:              sll          zero, a1, s5
                  slli         s4, s0, 9
557:              nop
                  addi         a2, t6, -1807
                  srai         zero, zero, 31
560:              andi         t5, t5, 238
                  andi         a0, tp, -391
                  sltu         t1, a7, s9
                  xor          s7, s6, ra
                  andi         a3, a2, 633
                  xori         s5, a7, -1317
                  or           s5, s2, s0
                  and          s11, s0, gp
                  slli         a3, a5, 30
                  auipc        s4, 423542
                  sltiu        a4, s11, -1733
                  add          a7, s0, t0
                  blt          t6, s4, 582f
                  xori         a1, s10, -401
                  srli         a7, s1, 16
                  andi         s6, sp, -1571
                  beq          a2, s6, 577f
577:              sll          s1, t4, a6
                  or           s4, t3, s10
                  xori         a4, t0, -976
                  ori          s0, s0, -1291
                  ori          a6, gp, -1133
582:              andi         zero, a7, -134
                  srai         a0, a7, 14
                  bltu         t5, gp, 601f
                  and          sp, s11, s3
                  slti         t2, tp, 1365
                  bltu         s9, a2, 603f
                  sll          t4, t6, s3
                  auipc        zero, 938553
                  sra          t6, a2, a0
                  ori          a7, a1, 1939
                  lui          t4, 972835
                  sub          t1, t4, a5
                  ori          t4, s1, 126
                  andi         t5, s3, -906
                  andi         s2, s8, -1546
                  and          t4, s6, s4
                  auipc        s9, 514599
                  xori         s2, s6, -1964
                  auipc        zero, 467351
601:              blt          s3, s1, 608f
                  add          a5, s6, a2
603:              beq          s4, s7, 612f
                  or           s4, s9, a2
                  bge          s0, t2, 607f
                  lui          t5, 951373
607:              beq          t4, t3, 610f
608:              sll          s0, s7, s7
                  or           a0, s6, sp
610:              beq          s7, t0, 621f
                  addi         a7, a1, -1582
612:              sra          s1, tp, s3
                  slti         ra, a6, -211
                  slt          s2, s11, s7
                  lui          a0, 949677
                  sra          t4, s1, tp
                  slt          a0, tp, a3
                  slt          s1, sp, t3
                  or           s0, a2, t5
                  xori         t4, t4, -263
621:              nop
                  slt          a4, s7, a6
                  srli         gp, s4, 23
                  beq          a7, a7, 635f
                  auipc        a6, 752042
                  addi         s2, gp, -1145
                  sub          a5, s8, t1
                  lui          s2, 433900
                  blt          ra, a2, 646f
                  bge          ra, s6, 635f
                  addi         s0, a4, -396
                  xori         t3, s5, 61
                  xor          s5, s0, t0
                  bne          a4, a1, 637f
635:              addi         a0, t0, -1143
                  sra          s1, t1, ra
637:              bgeu         a7, t1, 638f
638:              xor          s4, s2, t2
                  or           s4, a7, s10
                  ori          a3, tp, -111
                  sll          gp, a3, t5
                  auipc        s5, 838959
                  and          sp, s10, s3
                  slt          a6, a0, s7
                  slti         tp, a2, 1298
646:              andi         a4, zero, -1724
                  nop
                  and          t1, a0, t1
                  sll          a4, a7, ra
                  lw           ra, 4(s3)
                  sltiu        s5, a0, -473
                  and          a6, tp, sp
                  auipc        t1, 427269
                  addi         s3, s3, 28
                  sll          s11, sp, a1
                  ori          t3, t2, 828
                  addi         t6, t4, -160
                  sltiu        a0, a1, 862
834:              addi x8, x1, 0
834:              jalr x8, x8, 0
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x26, x19, zero
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x29, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x29, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x29, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x29, x18, ecall_handler
                  li x18, 0x1
                  beq x29, x18, instr_fault_handler
                  li x18, 0x5
                  beq x29, x18, load_fault_handler
                  li x18, 0x7
                  beq x29, x18, store_fault_handler
                  li x18, 0xc
                  beq x29, x18, pt_fault_handler
                  li x18, 0xd
                  beq x29, x18, pt_fault_handler
                  li x18, 0xf
                  beq x29, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x19, x26, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x26, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x26, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x19, x26, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x19, x26, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x19, x26, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
