.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 1
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x21, 0x1800
                  csrw 0x300, x21 # MSTATUS
                  mret
init:             
                  li x0, 0x5
                  li x1, 0x5439e1e6
                  li x2, 0xf3427c26
                  li x3, 0x80000000
                  li x4, 0x6
                  li x5, 0xc2cd9be9
                  li x6, 0x80000000
                  li x7, 0xfa32b6be
                  li x8, 0x0
                  li x10, 0xf80e4454
                  li x11, 0xf
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0x77e16f8c
                  li x15, 0x0
                  li x16, 0xe
                  li x17, 0xfa34a221
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0xb
                  li x21, 0x9fdb202f
                  li x22, 0x98ccf9da
                  li x23, 0x72821f01
                  li x24, 0x80000000
                  li x25, 0x7a39808b
                  li x26, 0x0
                  li x27, 0xe
                  li x28, 0x80000000
                  li x29, 0xe
                  li x31, 0xfdb291cc
                  la x30, user_stack_end
main:             nop
                  add          s4, a1, tp
                  slli         s5, t2, 18
                  beq          t1, a3, 6f
                  add          a6, a0, t4
                  or           a1, s9, a6
6:                bltu         s6, s11, 19f
                  sub          s10, ra, s10
                  xori         s2, s9, 1457
                  srl          s3, a1, s4
                  slli         a1, t1, 26
                  slti         tp, s4, 6
                  nop
                  and          s2, s9, s0
                  sub          s10, s3, a1
                  slli         sp, s11, 25
                  srai         zero, a7, 16
                  nop
                  or           a5, s11, s1
19:               addi         t3, t3, -2033
                  xori         a4, tp, -1492
                  srl          a0, s11, ra
                  slli         gp, s5, 16
                  bltu         s8, s8, 32f
                  xor          ra, s1, t3
                  ori          t0, t3, 529
                  beq          a2, s2, 35f
                  lui          t4, 680701
                  xori         s2, a1, 29
                  ori          s7, s5, 193
                  sltiu        sp, t3, -181
                  sll          gp, t4, gp
32:               lui          a2, 292575
                  add          a3, s0, s9
                  sra          s3, a4, t5
35:               bge          a3, a2, 54f
                  sub          s8, s2, s4
                  nop
                  addi         a4, s9, -1891
                  nop
                  bge          t4, a0, 58f
                  ori          s0, t5, 1191
                  or           s0, tp, sp
                  ori          s5, s8, -191
                  slti         tp, a3, 1880
                  sll          a4, s5, t2
                  sll          s8, s10, t3
                  la           a4, sub_1
                  sltiu        gp, a4, -493
                  addi         t1, a1, 1406
                  slti         a5, s7, -374
                  xori         s3, a6, 692
                  sltiu        t6, a2, 1347
                  addi         a4, a4, 13
                  sll          a5, s5, ra
                  sra          a5, s2, sp
                  slli         t4, a4, 27
                  addi         t0, s3, 1009
main_j1:          jalr         t2, a4, -13 #jump main -> sub_1
                  sra          zero, a5, s0
                  srl          t0, s8, a3
                  bge          t0, a7, 53f
                  bgeu         a5, gp, 68f
                  slli         gp, s4, 11
                  andi         s3, zero, -1428
53:               or           zero, s10, s10
54:               blt          a5, s5, 66f
                  bltu         a7, a5, 75f
                  xori         t2, a6, -1173
                  srli         s8, s4, 21
58:               beq          t2, t3, 78f
                  srli         s7, s0, 28
                  sll          t1, gp, a0
                  srai         s10, a0, 25
                  auipc        s9, 972070
                  lui          a3, 164988
                  srli         s5, t0, 30
                  bltu         t5, s9, 83f
66:               slli         a4, a5, 5
                  slli         s3, t1, 30
68:               bgeu         a2, t1, 72f
                  addi         sp, s4, 1398
                  bgeu         zero, a7, 89f
                  srli         t6, a0, 13
72:               or           ra, s10, a2
                  lui          t2, 984903
                  bltu         a6, s5, 89f
75:               nop
                  addi         s5, a0, 1638
                  bne          a7, a2, 80f
78:               or           a5, s1, ra
                  sra          a3, tp, s10
80:               andi         s10, sp, 452
                  lui          s3, 48097
                  andi         s4, s6, 1065
83:               xori         s2, t5, 1679
                  bltu         s10, a0, 90f
                  nop
                  and          a5, zero, a3
                  addi         t4, a0, -1452
                  sltiu        t1, a2, 976
89:               sltu         t3, t3, zero
90:               bge          s10, a4, 97f
                  slti         s0, a4, -1155
                  nop
                  slt          ra, t6, a5
                  xori         t6, a7, -477
                  ori          s4, s4, -721
                  and          a3, t4, s0
97:               andi         gp, s2, -775
                  sub          s0, s7, a3
                  bltu         s6, a4, 102f
                  and          s2, s6, a5
                  addi         a5, a4, -1911
102:              srli         s5, zero, 18
                  slli         s5, a7, 27
                  srai         t0, t2, 9
                  sltiu        a4, t6, -1342
                  bne          t0, zero, 126f
                  add          s8, a0, t2
                  bge          s8, sp, 110f
                  lui          s7, 50220
110:              sltu         a3, t1, t4
                  and          a3, t0, t4
                  ori          s0, a5, 1317
                  lui          a4, 726770
                  bgeu         s4, t3, 126f
                  blt          s11, t0, 119f
                  and          t4, gp, s9
                  auipc        zero, 828118
                  or           s11, a0, s2
119:              bltu         a4, s4, 137f
                  lui          s3, 957725
                  xori         t3, s6, -585
                  xori         a6, t4, 875
                  sra          t4, s1, a1
                  srl          a6, a6, a4
                  xor          gp, t0, a0
126:              bgeu         s11, t5, 142f
                  sltiu        s5, s7, 1916
                  slli         ra, s2, 18
                  sll          t1, a5, zero
                  srli         a2, s5, 7
                  srli         tp, a2, 16
                  nop
                  slti         s5, a2, 955
                  nop
                  sub          a3, s5, s7
                  xori         s3, a4, -1249
137:              sltu         a7, s0, tp
                  sltu         t4, sp, s5
                  bgeu         tp, gp, 145f
                  slti         a7, sp, -1505
                  nop
142:              sltiu        s3, zero, -1848
                  and          s7, t2, t6
                  bgeu         a6, zero, 147f
145:              xor          ra, s5, a1
                  sra          a7, s5, s7
147:              auipc        a0, 595052
                  sra          s7, ra, a1
                  slti         s5, tp, -1969
                  slli         a5, a5, 4
                  srli         a3, s0, 24
                  beq          tp, gp, 158f
                  sltiu        a5, s8, -570
                  sra          a1, a4, zero
                  nop
                  bgeu         tp, s8, 163f
                  bltu         t0, t1, 171f
158:              addi         t2, s1, 761
                  srai         t2, s4, 4
                  beq          s8, a3, 178f
                  sll          a7, s7, s10
                  bgeu         t1, s11, 174f
163:              or           s2, s4, s0
                  slti         s0, t4, 1819
                  ori          a7, s11, 171
                  bltu         a5, gp, 175f
                  srl          a3, zero, t1
                  beq          s10, a2, 183f
                  auipc        t4, 969887
                  slli         t4, a0, 31
171:              srai         tp, s10, 30
                  nop
                  bne          a3, t0, 189f
174:              bltu         t4, s11, 188f
175:              slt          s10, a5, s10
                  addi         gp, s9, 418
                  beq          t6, t2, 183f
178:              xori         a4, s0, -1522
                  xori         t6, t6, 1631
                  beq          tp, s9, 183f
                  lui          a0, 672943
                  xori         t0, t5, 1861
183:              add          s7, s6, s9
                  xor          s11, a3, a1
                  xori         sp, ra, -663
                  slti         s3, sp, 1845
                  srl          gp, s0, a2
188:              bltu         ra, a6, 207f
189:              srl          t3, s5, s5
                  lui          s3, 794926
                  bne          a1, s11, 197f
                  srl          a7, s10, t5
                  addi         s5, ra, 908
                  sltiu        s3, t5, 306
                  addi         tp, s3, 332
                  sltiu        t6, s10, -1764
197:              xori         s3, s5, 40
                  auipc        s0, 128101
                  srai         s4, t2, 14
                  lui          a1, 451845
                  sll          sp, gp, zero
                  auipc        tp, 454209
                  beq          t2, a0, 209f
                  la           gp, region_0+1549 #start riscv_load_store_rand_instr_stream_0
                  xori         s9, s2, -1883
                  lw           ra, 75(gp)
                  lbu          t0, 69(gp)
                  sb           s8, 110(gp)
                  lb           a3, -229(gp)
                  lb           a5, 156(gp)
                  sltiu        tp, t4, -1438
                  nop
                  srli         tp, s11, 31
                  sb           t2, -148(gp)
                  sb           a0, 190(gp)
                  lb           s10, 134(gp)
                  sll          a1, t5, sp
                  lbu          s5, 104(gp)
                  sra          zero, zero, s1
                  sh           a4, -25(gp)
                  ori          a4, t0, 1701
                  lhu          t3, -107(gp)
                  or           a7, a3, s5
                  lbu          a1, -224(gp)
                  sb           a5, 243(gp)
                  addi         a5, t3, -47
                  addi         a7, s5, 1263
                  sh           a4, 173(gp)
                  nop
                  sb           t3, 236(gp)
                  lh           tp, 137(gp)
                  srl          a1, s6, s6
                  lbu          a2, 70(gp)
                  lbu          sp, 151(gp)
                  lbu          t3, 106(gp)
                  lw           t2, -29(gp)
                  lb           a5, 41(gp)
                  sh           s9, -137(gp)
                  lb           s5, -40(gp)
                  sltiu        s2, a7, -954
                  lb           a4, -142(gp)
                  addi         s0, s8, 722
                  lb           s0, 82(gp)
                  lh           s0, 29(gp)
                  srli         s5, a5, 28
                  sw           s0, 187(gp) #end riscv_load_store_rand_instr_stream_0
                  slli         s4, gp, 21
                  andi         s3, t6, 456
                  sub          a1, t5, s9
207:              slt          s2, s11, zero
                  xori         s0, a1, -1828
209:              and          t0, s10, a3
                  sltiu        t1, a7, 1609
                  xori         a4, a1, -496
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            addi         t5, t5, -16
                  srli         s3, zero, 12
                  srli         s11, a6, 2
                  or           t6, zero, t6
                  lui          tp, 630540
                  and          tp, a2, t4
                  auipc        s7, 799591
                  sw           t2, 4(t5)
                  or           a6, t6, s2
                  la           s11, sub_4
                  and          ra, zero, a7
                  sra          t1, a2, s7
                  add          a5, s10, gp
                  lui          s10, 562279
                  auipc        a6, 478587
                  sltiu        a4, a0, 1078
                  addi         s11, s11, -403
                  srl          ra, s1, s8
sub_3_j5:         jalr         t2, s11, 403 #jump sub_3 -> sub_4
                  andi         sp, t4, -1023
                  slli         a0, s4, 11
                  and          a5, a6, t1
                  lui          ra, 405641
                  nop
                  slti         a0, t0, -1253
                  xor          a6, s1, s9
                  bgeu         a6, t2, 20f
                  srl          s2, a5, s4
                  srl          s9, a6, t2
                  slti         sp, a0, -1144
                  bltu         gp, s8, 16f
                  slli         t0, t5, 0
                  blt          a7, s9, 27f
                  bne          a2, s8, 27f
                  sra          s11, a2, t1
16:               andi         s11, s6, 1453
                  and          s10, a1, t0
                  add          s2, t2, t4
                  andi         s0, gp, -986
20:               xor          s8, s4, s1
                  sltiu        t4, t2, -1226
                  and          s4, t1, t0
                  ori          a1, a1, 654
                  andi         s5, a3, 1122
                  bne          s8, sp, 40f
                  lui          s11, 278302
27:               slt          a1, a6, ra
                  blt          t1, s5, 31f
                  sltiu        s3, t5, 299
                  add          s7, t3, s1
31:               andi         s7, s1, -734
                  slti         tp, s6, -1467
                  bgeu         sp, t1, 42f
                  lui          a7, 736650
                  bltu         s9, a5, 44f
                  add          s10, s1, t3
                  andi         s2, a4, -592
                  srli         s9, tp, 9
                  srai         a4, ra, 18
40:               blt          t5, a2, 46f
                  sltu         s4, s4, t1
42:               sub          ra, zero, a4
                  and          s5, s9, a4
44:               bgeu         s7, gp, 48f
                  auipc        t3, 622501
46:               or           s8, ra, a2
                  andi         t4, t4, 1687
48:               and          t6, a0, s1
                  sra          a3, a2, a5
                  sra          s5, t6, a6
                  beq          zero, a6, 57f
                  bltu         s0, s10, 57f
                  beq          t4, a7, 55f
                  addi         s11, t1, 1410
55:               xori         a7, a5, 932
                  slli         s8, a4, 29
57:               sra          s3, s10, t6
                  lw           t2, 4(t5)
                  and          a7, t1, s10
                  andi         s2, s6, 110
                  sra          s10, ra, s8
                  addi         t5, t5, 16
                  auipc        s5, 190447
                  or           zero, t4, s0
                  ori          s5, t6, -179
                  sll          s3, s2, sp
                  slt          t6, a3, t6
                  addi         ra, a1, -994
88:               addi x26, x7, 1
88:               jalr x26, x26, 0
sub_8:            auipc        sp, 181522
                  sll          s4, a5, s4
                  srai         t1, a5, 10
                  beq          s11, s5, sub_8_stack_p
sub_8_stack_p:    addi         t5, t5, -60
                  and          ra, t3, s6
                  sub          t3, a0, zero
                  sw           t2, 4(t5)
                  auipc        a5, 918440
                  addi         s7, a6, -286
                  srai         s2, ra, 0
                  blt          a1, a0, 11f
                  sub          s4, s0, t5
                  sltu         sp, a6, s3
                  sll          a3, a5, s9
                  lui          t3, 563072
                  blt          gp, a7, 11f
                  sltiu        s8, s2, -85
                  srai         s4, s8, 1
                  sltiu        a0, s6, -630
                  auipc        t6, 596823
                  xor          t6, s2, t6
11:               ori          s11, a3, 504
                  auipc        s4, 252927
                  xor          s2, a5, a4
                  lw           t2, 4(t5)
                  auipc        s4, 474532
                  addi         t5, t5, 60
                  sra          s11, ra, s10
                  or           t6, s0, a2
30:               addi x5, x7, 1
30:               jalr x5, x5, 0
sub_7:            bne          s0, t3, sub_7_stack_p
sub_7_stack_p:    addi         t5, t5, -44
                  xori         s4, s7, -412
                  slli         a1, s3, 4
                  or           s5, a5, a5
                  sw           t2, 4(t5)
                  ori          a3, a5, -1366
                  or           tp, t0, s1
                  or           ra, s4, s9
                  srli         a1, a3, 2
                  slt          ra, s5, s6
                  srl          s4, sp, s6
                  bne          s2, s2, 4f
4:                bgeu         gp, s9, 9f
                  sltiu        s5, t5, -1848
                  srli         t2, s3, 3
                  add          s3, sp, t6
                  blt          t0, a5, 9f
9:                xor          gp, t1, a4
                  lw           t2, 4(t5)
                  slt          a7, a6, s11
                  sltu         a5, t1, a2
                  srl          a3, t5, s0
                  addi         t5, t5, 44
                  sub          a6, s5, t6
25:               addi x1, x7, 1
25:               jalr x1, x1, 0
sub_1:            addi         t5, t5, -12
                  ori          a6, a2, -756
                  sra          tp, s3, a1
                  slli         t6, s3, 20
                  sw           t2, 4(t5)
                  sra          a1, s11, s1
                  xori         t6, s0, 1316
                  and          a0, a7, a1
                  bne          s8, tp, sub_1_j2 #branch to jump instr
                  add          a4, s9, s10
                  slt          a0, s3, a3
                  ori          t1, a2, 1147
                  slt          s2, sp, a7
                  srai         t2, s7, 10
                  addi         zero, s3, -359
sub_1_j2:         jal          t2, sub_3 #jump sub_1 -> sub_3
                  la           t6, region_0+1905 #start riscv_load_store_rand_instr_stream_0
                  srai         s2, s1, 16
                  lb           sp, -286(t6)
                  srai         s4, s5, 7
                  lhu          zero, -1119(t6)
                  lbu          a6, -1260(t6)
                  lw           s5, -1433(t6)
                  auipc        s10, 187556
                  addi         t2, t5, -1488
                  lbu          a7, -1028(t6)
                  slti         s5, s8, -1038
                  lb           t4, -7(t6)
                  addi         a3, s11, 318
                  and          a3, t0, s0
                  sltiu        a0, t1, -1352
                  sb           s6, -1176(t6)
                  ori          gp, zero, 690
                  lbu          a3, -908(t6)
                  slli         s0, sp, 23
                  lhu          zero, -331(t6)
                  sw           s9, -1685(t6)
                  slt          a5, t1, a1
                  lh           s3, 45(t6)
                  lbu          s11, -1856(t6)
                  sb           a3, 84(t6)
                  lb           a4, -1109(t6)
                  sh           t2, -1701(t6)
                  sb           a6, -1810(t6)
                  sb           a2, -700(t6)
                  lbu          zero, -1027(t6)
                  lh           a2, -739(t6)
                  lb           a0, -1063(t6)
                  andi         a7, s11, -255
                  lb           a5, -750(t6)
                  andi         t3, s6, -164
                  sb           s9, -400(t6)
                  lbu          sp, -1452(t6)
                  sh           s3, -1545(t6)
                  ori          s10, zero, 553
                  sb           sp, -158(t6) #end riscv_load_store_rand_instr_stream_0
                  la           s5, region_0+1538 #start riscv_load_store_rand_instr_stream_2
                  lbu          s3, -8(s5)
                  lbu          a6, 15(s5)
                  sltiu        a7, ra, -1769
                  addi         s2, t2, -941
                  sltiu        gp, s8, -707
                  sb           a5, 14(s5)
                  sltiu        a6, t3, -1217
                  srai         s11, s7, 19
                  lbu          s11, -7(s5)
                  or           t4, gp, a3
                  lh           s2, -2(s5)
                  lb           s11, -3(s5)
                  sb           s6, 16(s5)
                  sltu         t3, tp, s0
                  sll          a1, s0, a0
                  sh           s4, -4(s5)
                  lb           s4, -7(s5)
                  xor          a6, s10, s6
                  lb           t0, -13(s5)
                  sb           t1, 7(s5)
                  lbu          ra, -7(s5)
                  sb           t2, -8(s5)
                  sra          ra, s2, s10
                  lb           t6, -9(s5)
                  lb           a4, -16(s5)
                  sb           a6, 4(s5)
                  sltiu        t4, s10, -1066
                  lb           s0, -7(s5) #end riscv_load_store_rand_instr_stream_2
                  la           t1, region_1+1805 #start riscv_load_store_rand_instr_stream_1
                  lbu          a0, 16(t1)
                  sh           tp, 5(t1)
                  lbu          zero, -16(t1)
                  slt          s4, s1, s10
                  lbu          s9, 12(t1)
                  lui          a0, 31420
                  lb           a1, -9(t1)
                  lbu          ra, 4(t1)
                  sb           zero, -6(t1)
                  sra          gp, t4, s10
                  lbu          s2, 11(t1)
                  lhu          a1, 13(t1)
                  auipc        t6, 655698
                  lhu          s2, 5(t1)
                  lb           a3, 4(t1)
                  lh           s3, 9(t1)
                  sh           t2, 13(t1)
                  add          a3, s11, t1
                  lb           ra, 14(t1)
                  xor          t4, sp, t4
                  andi         sp, t5, -335
                  auipc        s2, 651585
                  lw           a4, -13(t1)
                  lw           sp, -13(t1)
                  sh           tp, 13(t1)
                  sltu         a2, a0, s2
                  andi         zero, t3, 300
                  lbu          s10, -10(t1)
                  sra          s7, t5, t4
                  sb           a3, 7(t1)
                  sltiu        a6, s7, 683
                  ori          s9, tp, 1774
                  sb           ra, 13(t1)
                  lbu          s0, 10(t1)
                  srl          t0, s10, s0
                  lbu          s5, -14(t1)
                  sb           t1, 10(t1)
                  lb           a0, -4(t1) #end riscv_load_store_rand_instr_stream_1
                  lui          s8, 19580
                  srai         a2, s11, 13
                  sub          s8, s3, s6
                  and          ra, s11, gp
                  beq          s4, s10, 23f
                  auipc        t1, 127779
                  add          a7, t2, a1
                  beq          s7, t1, 12f
                  slt          a3, t2, t6
                  and          s3, t0, a6
                  slti         s0, s0, -571
                  beq          tp, t1, 27f
12:               slli         a6, a0, 25
                  bge          ra, a1, 31f
                  sub          t0, s8, a2
                  sltu         s7, s2, s2
                  sltu         s9, tp, a7
                  srl          a4, t1, t4
                  blt          s4, a0, 25f
                  or           s9, a6, a5
                  slti         gp, a7, 1214
                  bltu         ra, t3, 24f
                  xor          a3, s6, a3
23:               sltiu        t2, s6, -803
24:               srli         t1, ra, 16
25:               sltu         s3, a3, s10
                  ori          a0, t3, -1034
27:               slli         s0, t3, 9
                  ori          ra, t1, 486
                  auipc        s8, 492663
                  blt          a7, t4, 35f
31:               sub          a3, t0, a0
                  slli         a1, s3, 13
                  slt          a5, s5, a6
                  and          a5, s5, s1
35:               sltu         a0, s7, zero
                  bltu         t6, t1, 40f
                  sra          s9, a5, a0
                  srli         tp, s10, 10
                  slli         a3, t3, 29
40:               sltiu        a4, tp, 535
                  beq          t3, a5, 54f
                  sll          tp, a1, s4
                  slt          s3, s10, a0
                  srai         t0, s6, 16
                  bge          a6, a3, 63f
                  sltiu        t6, a5, -985
                  sll          a5, a0, gp
                  srl          a7, s3, a6
                  bne          s8, t1, 50f
                  auipc        t1, 592313
                  slli         t4, t0, 3
                  xor          a5, s3, s0
                  and          t0, s1, ra
                  srl          s3, t0, s3
                  slti         s5, s9, 1877
                  lui          s5, 453575
                  sltu         t2, s9, a5
                  auipc        s5, 53625
sub_1_j3:         jal          t2, sub_2 #jump sub_1 -> sub_2
50:               ori          t6, ra, -661
                  xori         s7, s7, -787
                  slt          s10, t2, a5
                  bge          s2, s4, 54f
54:               xori         s9, t5, 1710
                  or           gp, s6, s0
                  sltu         t2, t3, t1
                  srli         s7, t2, 1
                  bge          s3, sp, 61f
                  srl          zero, gp, tp
                  srai         s9, t2, 2
61:               bne          s6, ra, 79f
                  and          s5, s9, s4
63:               xori         s9, s10, 1427
                  slti         t1, a6, -1582
                  sltu         t0, t3, s3
                  blt          t3, t3, 73f
                  bge          s10, t3, 74f
                  sltu         a0, t3, ra
                  sll          a5, a1, s2
                  addi         t0, s2, -1314
                  addi         t3, s1, 1148
                  beq          s1, s11, 91f
73:               xori         a7, s3, 781
74:               sub          a4, t2, s7
                  slti         a0, t4, -88
                  srl          t3, s4, s10
                  slt          s5, tp, s6
                  lui          s3, 445184
79:               xor          ra, s10, t6
                  xor          s10, s1, tp
                  bgeu         t5, ra, 101f
                  nop
                  andi         a7, t5, -1131
                  sltu         s11, a1, s5
                  ori          sp, t4, -849
                  beq          s10, t6, 100f
                  slli         a4, t4, 6
                  sra          s8, s10, s5
                  srai         a6, s9, 15
                  slti         sp, t2, -1388
91:               xori         t2, a4, -18
                  sra          s11, s4, t4
                  slli         a6, t1, 19
                  add          zero, t3, t1
                  xori         s10, zero, 579
                  sll          a6, s5, sp
                  add          tp, s6, t4
                  slt          t1, a4, s3
                  slt          gp, a1, s1
100:              slt          s4, t2, a2
101:              and          s8, a1, s4
                  add          t4, sp, s0
                  bltu         t5, s5, 113f
                  ori          tp, a3, -195
                  lui          s0, 1030695
                  slli         s9, s1, 11
                  slt          zero, tp, t5
                  add          s10, a7, s3
                  or           s10, gp, s9
                  andi         a7, s11, 425
                  bge          ra, a6, 128f
                  bge          s8, t3, 129f
113:              sra          a7, s3, s4
                  add          a2, s7, s4
                  sltu         a1, s6, a3
                  add          s10, s7, s11
                  bltu         tp, a2, 123f
                  sltiu        a5, s8, -2044
                  and          s2, s11, s10
                  bltu         a0, s10, 125f
                  addi         s7, s2, -1737
                  beq          t2, s3, 129f
123:              sra          a4, tp, tp
                  bne          ra, t5, 125f
125:              slt          s8, tp, zero
                  sra          a0, a5, gp
                  bge          a4, t2, 128f
128:              ori          a3, t1, 701
129:              beq          t5, a3, 130f
130:              bge          gp, a4, 141f
                  nop
                  sltu         t3, t4, a3
                  sltu         s5, t3, s4
                  srl          s8, a4, s3
                  andi         tp, s2, -935
                  sra          t2, a5, a3
                  beq          s8, a4, 138f
138:              slt          t0, t2, a1
                  srai         s5, s1, 19
                  sltiu        a2, a4, -1795
141:              xori         s11, a1, 795
                  slt          s2, tp, s0
                  ori          t0, t3, 1834
                  addi         a2, s6, 698
                  slli         a6, a1, 29
                  sub          ra, t2, ra
                  xor          a1, s4, s0
                  lui          ra, 286069
                  bltu         a3, t1, 167f
                  or           s0, a0, t6
                  sll          a7, t3, t2
                  slt          t0, s4, s2
                  auipc        a4, 572085
                  auipc        ra, 235700
                  auipc        s9, 135793
                  sra          tp, s9, t2
                  slt          t4, a2, t4
                  or           t1, gp, s9
                  bgeu         a3, s2, 160f
160:              auipc        zero, 390842
                  sltu         a5, a4, s9
                  slli         t1, t5, 9
                  beq          s11, t1, 164f
164:              sra          t6, a5, a4
                  lui          a5, 78037
                  bgeu         t1, s2, 183f
167:              addi         a7, a1, 1666
                  xori         a6, s1, 388
                  blt          s3, s8, 172f
                  sll          t0, s5, a7
                  slti         zero, s10, -813
172:              blt          t0, t5, 191f
                  auipc        s5, 423991
                  slli         a3, gp, 1
                  sra          sp, s0, t6
                  nop
                  nop
                  bne          s7, s8, 194f
                  sltu         s10, a3, s5
                  lui          a0, 27462
                  beq          s6, s9, 195f
                  lui          tp, 577317
183:              bgeu         a7, a5, 188f
                  addi         s4, t1, 1221
                  and          zero, a5, a2
                  auipc        a1, 179651
                  slti         a0, sp, 743
188:              sll          t0, s7, a6
                  slt          t4, s3, a0
                  xori         a1, s11, 1
191:              bge          s4, zero, 192f
192:              xori         a5, a1, -150
                  andi         t2, a7, 307
194:              xor          a2, s3, a6
195:              nop
                  xor          s5, t3, sp
                  xori         s5, s1, 1713
                  addi         t4, t3, -1188
                  srli         t0, s4, 3
                  bge          t5, t5, 218f
                  xor          s3, t5, s9
                  ori          t6, s5, -1485
                  xori         a7, s7, 124
                  slt          s4, a1, a2
                  slt          zero, s0, a3
                  sll          tp, a6, a7
                  or           s10, sp, a5
                  ori          s4, a3, -2040
                  slt          zero, s11, s6
                  slti         a7, s9, 1001
                  srli         a4, s0, 6
                  addi         t0, s2, -1753
                  blt          s11, a3, 217f
                  slti         sp, t4, -757
                  nop
                  bge          t4, a6, 221f
217:              sra          a7, a2, t5
218:              beq          t6, s9, 236f
                  blt          t6, a3, 226f
                  auipc        ra, 722297
221:              lui          a7, 964101
                  add          s5, t3, s10
                  ori          s10, s10, -1032
                  slli         s10, s6, 0
                  auipc        tp, 628132
226:              lui          zero, 481894
                  or           s10, a4, a6
                  sub          s9, a1, t4
                  sll          a0, a2, t6
                  andi         s0, t6, 476
                  srai         s10, s8, 5
                  sra          a2, gp, t6
                  srli         tp, t2, 25
                  slli         s9, gp, 24
                  sub          s8, gp, t5
236:              xori         s0, t4, 1978
                  bne          s10, a0, 257f
                  and          a6, t5, a0
                  xor          a5, gp, s9
                  lui          t3, 108379
                  sub          ra, s11, s6
                  slli         t2, zero, 9
                  xori         t4, a2, -1654
                  slli         t6, t6, 26
                  sra          s4, s6, zero
                  sll          zero, t0, s3
                  sltu         s9, s11, a0
                  sll          s5, s7, t3
                  sra          a0, a4, s0
                  sll          s9, t4, s5
                  sub          a7, a1, a3
                  lui          zero, 945146
                  slti         t4, a4, -1232
                  and          s7, t0, a7
                  xori         a6, a4, -1723
                  auipc        a6, 244706
257:              sltu         tp, a1, a2
                  srli         a1, t5, 6
                  bltu         s11, t5, 266f
                  ori          a3, s11, 1204
                  addi         s3, s11, 830
                  auipc        a3, 644208
                  srl          ra, gp, s5
                  sll          a3, a2, a4
                  sra          s10, s4, s5
266:              nop
                  bge          zero, s10, 272f
                  auipc        s5, 357798
                  and          ra, s5, s6
                  nop
                  bne          gp, t0, 272f
272:              add          a3, s0, s11
                  slli         zero, s9, 12
                  blt          a0, s11, 287f
                  xori         a2, s1, 874
                  addi         a4, ra, -809
                  beq          t4, a3, 287f
                  andi         s4, s5, -531
                  nop
                  beq          a3, a7, 291f
                  bltu         a5, s8, 287f
                  auipc        t3, 790827
                  sltiu        ra, s0, -513
                  srli         s8, s1, 3
                  sltiu        a0, a2, 1326
                  xor          s0, s6, s9
287:              andi         s9, a7, 1846
                  xor          t3, s7, a5
                  beq          s7, s7, 296f
                  or           a4, t3, s0
291:              or           a4, t3, gp
                  or           s2, s3, t4
                  sltu         a3, a5, ra
                  add          zero, s11, s3
                  blt          a0, t0, 298f
296:              bge          zero, a6, 297f
297:              bltu         s0, s10, 316f
298:              bne          a2, s1, 299f
299:              sra          a7, a7, s2
                  or           t6, s8, t1
                  srai         a2, a1, 25
                  sltu         s8, a1, a3
                  slli         a4, t6, 13
                  bgeu         s10, s8, 321f
                  sltiu        gp, ra, -707
                  srl          s7, s2, t1
                  srai         t6, s6, 26
                  bge          s10, t0, 315f
                  ori          t0, zero, -1125
                  add          s8, t2, s7
                  xor          s9, ra, a2
                  lui          a7, 594602
                  sltu         s9, a3, a0
                  auipc        t6, 190438
315:              bge          t1, gp, 333f
316:              ori          a2, gp, 870
                  slli         zero, a7, 0
                  beq          s9, a7, 319f
319:              addi         s9, s3, 1694
                  bge          t6, t4, 325f
321:              slti         s9, s4, -1855
                  and          s7, a7, a0
                  bgeu         s1, a0, 328f
                  slti         t6, zero, -848
325:              sltiu        a0, a5, -55
                  bne          zero, a2, 327f
327:              xori         a1, a4, -1545
328:              xori         s7, s2, 857
                  bne          t3, tp, 349f
                  slt          zero, a1, s0
                  lui          gp, 200535
                  auipc        s5, 462674
333:              nop
                  beq          a3, s5, 341f
                  xori         s4, gp, 1518
                  slt          t3, zero, s5
                  lui          a3, 679414
                  la           s8, sub_3
                  auipc        s10, 116509
                  sltu         t3, s1, t1
                  addi         s8, s8, 708
                  srli         a7, t2, 31
                  auipc        gp, 319740
                  beq          ra, gp, sub_1_j4 #branch to jump instr
                  xori         gp, t4, -798
                  lui          s7, 369406
                  andi         s4, a3, 1449
sub_1_j4:         jalr         t2, s8, -707 #jump sub_1 -> sub_3
                  bgeu         a1, t2, 354f
                  slt          t6, a5, a5
                  srl          a3, s11, a6
                  auipc        a5, 546121
341:              add          tp, a0, t6
                  ori          a6, s6, -455
                  sltiu        gp, t5, -1525
                  blt          s8, tp, 357f
                  xori         s8, s3, 848
                  slt          a2, a2, s7
                  sub          a5, a5, s5
                  or           a2, a7, a7
349:              bgeu         s4, s6, 352f
                  addi         tp, sp, -515
                  sll          s0, s4, t2
352:              srli         a1, s7, 10
                  bgeu         s8, tp, 354f
354:              sra          a2, a1, s1
                  sra          a4, s9, s10
                  blt          tp, a1, 359f
357:              andi         s7, t1, -1474
                  slti         a1, t0, 1831
359:              nop
                  bgeu         gp, t5, 361f
361:              or           ra, s2, a4
                  blt          s6, s7, 372f
                  blt          a4, s9, 382f
                  andi         zero, a6, 1223
                  sub          a3, ra, s3
                  bgeu         a2, s8, 370f
                  auipc        zero, 103934
                  srli         ra, a1, 8
                  bgeu         s10, s6, 386f
370:              slti         s9, a2, 493
                  srai         a6, sp, 15
372:              bne          gp, s7, 378f
                  xori         t3, a7, -1474
                  ori          sp, t1, 1266
                  or           s8, s3, a7
                  slli         gp, a6, 7
                  bge          s5, a5, 395f
378:              slt          s11, a5, a7
                  ori          t3, s10, -1350
                  sltiu        a3, s3, -1041
                  beq          t1, s5, 399f
382:              slli         s11, tp, 27
                  bltu         t1, ra, 390f
                  sub          zero, t0, a3
                  srli         zero, gp, 19
386:              sub          t3, a7, s2
                  bltu         s4, t2, 388f
388:              srl          s11, sp, a0
                  slli         t4, ra, 14
390:              sltu         t6, t3, t6
                  add          s8, s4, gp
                  slt          a7, gp, s10
                  bgeu         a4, s0, 407f
                  srai         a3, t0, 13
395:              slli         zero, s3, 5
                  auipc        s4, 637977
                  sra          ra, t1, s7
                  lui          a3, 308128
399:              bgeu         t5, t3, 406f
                  slti         s10, s11, 1928
                  bge          s11, t5, 412f
                  slti         a6, s7, 1222
                  addi         s5, s10, -1533
                  slt          a2, s3, a6
                  sub          tp, s11, t3
406:              beq          a1, a5, 425f
407:              blt          gp, a0, 408f
408:              slti         t1, s11, -1605
                  xori         s10, a4, 1678
                  slt          t4, t3, t2
                  srl          sp, a0, a2
412:              sltiu        s8, t6, -1578
                  srai         a1, s10, 25
                  sll          gp, s8, s9
                  blt          s3, t5, 420f
                  bltu         s2, a5, 428f
                  bge          a2, a6, 424f
                  xor          a4, s9, s9
                  srai         tp, s3, 14
420:              srai         s10, a7, 28
                  sra          s11, s8, s6
                  sltu         s8, a6, zero
                  sltu         s5, t3, s7
424:              srl          a3, s1, s0
425:              bltu         a0, t6, 428f
                  sra          sp, t6, t2
                  sll          s5, t6, a7
428:              andi         s10, s9, -938
                  lw           t2, 4(t5)
                  xori         s8, a0, 1346
                  andi         a5, t1, 1853
                  sra          s3, s4, sp
                  addi         t5, t5, 12
                  srl          a7, ra, s9
                  ori          t1, a6, 1653
                  sll          t4, tp, t4
                  or           s3, s5, tp
584:              addi x1, x7, 1
584:              jalr x1, x1, 0
sub_10:           addi         t5, t5, -60
                  xori         s8, a3, 1502
                  slli         s7, gp, 14
                  sw           t2, 4(t5)
                  srai         t0, a4, 29
                  xori         s7, t1, -16
                  or           s3, a4, t2
                  addi         s7, t2, 152
                  srli         s10, s0, 23
                  sra          s8, s9, a4
                  addi         tp, s2, -1847
                  slti         a4, s8, -419
                  sra          t2, a1, s7
                  sub          s10, tp, a2
                  auipc        t4, 77854
                  srli         t0, t3, 4
                  sll          s9, s7, t3
                  sub          a3, t1, t6
                  lui          s5, 221971
                  sltu         ra, a0, a3
                  ori          tp, tp, 1534
                  slt          s4, s8, t5
                  auipc        t1, 195204
                  lui          s3, 741460
                  xori         s11, s11, 893
                  sra          t2, s10, a3
                  nop
                  xor          s8, s11, s1
                  bne          s0, sp, 21f
                  bltu         a2, sp, 22f
                  slt          ra, sp, s10
21:               blt          s1, s8, 38f
22:               sltiu        a6, a4, -1
                  bltu         t6, t4, 38f
                  sll          s0, s10, a7
                  sra          a2, a1, t0
                  nop
                  slti         s9, s0, 1672
                  slti         t6, s6, -272
                  bne          a6, a3, 31f
                  auipc        t3, 63835
31:               srl          s10, s2, s9
                  bne          t5, zero, 50f
                  sltu         zero, s9, a3
                  sra          tp, zero, s6
                  slti         s9, a6, 1772
                  bge          s1, gp, 48f
                  blt          t3, zero, 55f
38:               sltiu        s10, s6, -296
                  and          a5, sp, t3
                  xor          s2, s5, s3
                  bgeu         s3, s10, 61f
                  srai         a3, s9, 10
                  sub          s2, s5, zero
                  and          a0, t4, s11
                  srai         s5, s11, 9
                  beq          s4, t1, 55f
                  blt          s2, t2, 55f
48:               sra          s9, s4, s7
                  blt          s4, tp, 58f
50:               slti         s8, a5, -294
                  xor          tp, s3, s10
                  lui          a6, 193112
                  sltu         s2, ra, t1
                  bne          s7, t0, 73f
55:               lui          a1, 901912
                  slt          s7, s9, a0
                  xori         s10, s9, 1369
58:               sll          t4, a3, s10
                  beq          t6, s7, 63f
                  andi         a7, zero, 1354
61:               or           a2, a6, s1
                  andi         tp, a3, 1315
63:               beq          t3, a4, 81f
                  auipc        a5, 1035178
                  xor          a7, s8, a2
                  slti         a1, t3, 556
                  srli         t4, s5, 2
                  slli         t2, s9, 25
                  beq          zero, s6, 73f
                  auipc        t1, 780229
                  bge          t5, s10, 91f
                  bgeu         s2, t1, 75f
73:               add          a4, t4, a1
                  sub          a1, s3, t0
75:               xori         ra, s6, -830
                  xor          t6, s0, s8
                  auipc        a3, 191522
                  bgeu         s7, s2, 92f
                  slti         ra, s4, 610
                  slti         t6, a5, -1019
81:               nop
                  xor          t2, tp, s5
                  blt          a3, t0, 88f
                  sra          s0, t0, a6
                  and          a0, t4, t2
                  slt          s2, s3, s4
                  srai         a6, t4, 30
88:               bge          a5, t5, 89f
89:               sll          a7, t4, t5
                  blt          a4, s1, 99f
91:               or           a7, ra, s5
92:               sltu         a1, sp, s2
                  srli         tp, s6, 16
                  nop
                  and          t2, s9, s1
                  bne          gp, a0, 98f
                  or           s2, s11, s11
98:               lui          tp, 852731
99:               xori         s11, t1, -1759
                  addi         s7, t6, 1272
                  auipc        s3, 312406
                  andi         ra, t1, -502
                  xori         t0, s8, -845
                  add          s11, s6, s7
                  xor          zero, ra, s2
                  ori          s2, a7, 204
                  xor          t4, t2, ra
                  sra          a2, s11, s1
                  beq          s5, s11, 122f
                  andi         s4, a1, -473
                  srai         s0, s2, 23
                  bltu         a0, t2, 127f
                  srai         t4, s0, 21
                  srl          a1, s10, s3
                  srli         tp, a5, 23
                  lui          ra, 829149
                  slt          zero, a5, s10
                  srai         s5, tp, 22
                  xor          t1, tp, s5
                  sra          t3, a1, a2
                  auipc        s11, 807866
122:              beq          s8, s3, 140f
                  auipc        s2, 323055
                  bltu         s3, t0, 133f
                  bge          s11, s5, 133f
                  or           tp, t0, s11
127:              srli         sp, t3, 9
                  bltu         a5, s2, 141f
                  beq          s0, s7, 145f
                  bgeu         t2, t5, 148f
                  or           s8, zero, sp
                  andi         s8, s5, -1991
133:              xor          s9, sp, tp
                  blt          a7, s5, 143f
                  add          s7, t6, a3
                  srai         a6, gp, 1
                  beq          a4, a4, 145f
                  sll          zero, a4, gp
                  sltiu        t1, t4, -641
140:              auipc        s0, 685907
141:              blt          t6, t4, 156f
                  andi         zero, s5, -167
143:              bne          s3, tp, 145f
                  beq          s8, s3, 157f
145:              srai         a5, t0, 29
                  srai         s9, t0, 22
                  bge          sp, ra, 152f
148:              xori         s7, s9, 2047
                  slti         s8, a1, -569
                  slti         t2, t3, -238
                  slti         s9, s5, 791
152:              sub          a6, t5, s3
                  nop
                  and          s9, a5, zero
                  sra          s10, s6, ra
156:              bge          gp, s1, 165f
157:              beq          t2, a4, 161f
                  andi         s4, sp, 743
                  addi         sp, s8, -553
                  sll          t6, a2, gp
161:              xor          sp, zero, s0
                  sltu         t0, s5, a0
                  blt          gp, a5, 178f
                  or           t1, a5, zero
165:              sltiu        s9, s9, 1811
                  add          a1, s5, a0
                  lui          t6, 381169
                  srli         a4, sp, 15
                  ori          sp, t2, -474
                  srli         t2, t1, 29
                  la           t1, region_0+31 #start riscv_load_store_rand_instr_stream_1
                  srli         a1, t0, 2
                  lbu          s0, 1908(t1)
                  auipc        s7, 946788
                  lb           gp, 1649(t1)
                  sb           a2, 122(t1)
                  slti         sp, t0, 680
                  lb           a7, 1700(t1)
                  xor          sp, s4, s5
                  srli         a6, s4, 16
                  sb           t4, 1812(t1)
                  lb           s3, -27(t1)
                  nop
                  slt          s3, a1, t3
                  sb           s10, 154(t1)
                  lbu          t4, 452(t1)
                  xor          t3, sp, s10
                  slli         s2, t0, 8
                  srl          t3, s0, t0
                  andi         s7, a7, 1437
                  add          a4, a0, ra
                  lbu          s3, 772(t1)
                  srl          t4, a2, gp
                  lbu          a2, 1072(t1)
                  lb           t6, 1170(t1)
                  sh           s2, 979(t1)
                  sb           a3, 1578(t1)
                  sb           s7, 302(t1)
                  lbu          t4, 559(t1)
                  and          t6, t3, ra
                  sltu         s2, s10, a1
                  lb           t3, 1000(t1)
                  sb           t3, 554(t1)
                  sltiu        a0, s10, 579
                  nop
                  sll          gp, s9, s10
                  lb           s2, 1541(t1)
                  sll          t3, a6, s10
                  lhu          t2, 577(t1)
                  lb           a3, 656(t1)
                  lb           t0, 48(t1)
                  lbu          gp, 155(t1)
                  sh           s1, 1443(t1)
                  auipc        s2, 206049
                  sb           t3, 478(t1)
                  lbu          a5, 754(t1)
                  lhu          ra, 1293(t1)
                  lbu          t2, 304(t1)
                  sh           gp, 431(t1)
                  sb           s8, 669(t1) #end riscv_load_store_rand_instr_stream_1
                  sltiu        gp, a5, 1952
                  xor          s9, gp, s0
                  add          gp, s2, t1
                  auipc        a3, 897638
                  xori         tp, tp, 218
                  and          t4, a1, a7
                  beq          t5, a3, 191f
178:              beq          s6, s0, 180f
                  srl          a1, s1, t3
180:              srli         a5, s1, 0
                  slli         s5, s11, 6
                  xori         a3, a5, -353
                  srai         s9, a6, 22
                  nop
                  xori         a1, s2, 1382
                  slli         gp, s3, 3
                  sll          zero, a3, a6
                  or           s8, s3, s1
                  auipc        t4, 595150
                  bne          a7, a3, 193f
191:              lui          tp, 344591
                  nop
193:              auipc        zero, 343801
                  bgeu         t0, a6, 207f
                  blt          t3, a4, 204f
                  slli         s10, a6, 20
                  add          t3, s8, s3
                  srl          a6, a4, s1
                  bgeu         a1, a2, 207f
                  la           sp, region_1+465 #start riscv_load_store_rand_instr_stream_0
                  slli         a2, t5, 8
                  lb           a4, 420(sp)
                  lbu          s8, 640(sp)
                  sltiu        t2, s2, 36
                  sb           s6, 892(sp)
                  lb           a1, -68(sp)
                  slli         gp, a2, 12
                  lbu          s3, 1357(sp)
                  lb           t2, 867(sp)
                  lw           s7, 355(sp)
                  sb           ra, 957(sp)
                  lb           s2, 168(sp)
                  lb           s8, 752(sp)
                  or           a6, t3, a0
                  lb           s5, 928(sp)
                  or           t0, t3, s11
                  ori          s3, t5, 426
                  lbu          s9, -277(sp)
                  addi         t2, a7, 1037
                  andi         a4, gp, 1047
                  sb           a5, 824(sp)
                  lb           a0, 1506(sp)
                  sra          s2, s0, a6
                  sb           a4, 1142(sp)
                  slli         a0, s5, 27
                  lb           s11, 749(sp)
                  sb           s11, 625(sp)
                  lhu          a2, 495(sp)
                  sb           s9, 826(sp)
                  lb           s4, 652(sp)
                  sltiu        a3, s2, 1018
                  sub          s0, t3, a6
                  lbu          a5, 1176(sp)
                  lhu          a6, 1131(sp) #end riscv_load_store_rand_instr_stream_0
                  bne          s4, t6, 218f
                  ori          s11, s4, 1674
                  bge          a1, a2, 222f
                  sll          zero, s4, a1
204:              sltu         s4, t2, t3
                  addi         s8, s9, 845
                  auipc        s3, 796124
207:              srai         t0, t5, 15
                  slt          a1, t4, s4
                  xori         s0, s5, 68
                  slli         s10, t0, 15
                  blt          a3, sp, 214f
                  slli         a3, s3, 28
                  andi         s8, t5, 997
214:              auipc        sp, 82054
                  bgeu         a4, s6, 219f
                  slt          s2, a6, a4
                  blt          tp, s0, 236f
218:              bge          s8, s6, 238f
219:              slt          a2, t5, s3
                  slti         s0, a0, -15
                  sll          a0, s2, s1
222:              addi         zero, s4, 1487
                  slt          a1, a3, s6
                  blt          gp, t3, 227f
                  andi         a3, a6, 858
                  ori          a0, zero, 72
227:              beq          s7, s0, 236f
                  bltu         a0, t3, 245f
                  bge          t1, gp, 247f
                  andi         s7, t6, 320
                  bge          tp, t4, 247f
                  slt          a4, t3, t6
                  bne          t3, s8, 251f
                  sltiu        a6, s4, -198
                  ori          t1, s0, -574
236:              srli         a1, a1, 6
                  srai         s7, a5, 23
238:              srai         a7, a1, 22
                  slli         t3, s8, 15
                  beq          sp, t6, 252f
                  addi         ra, a1, -962
                  srai         ra, t4, 23
                  ori          sp, ra, 677
                  sub          s11, s7, a1
245:              andi         t1, s1, -563
                  andi         a6, a0, -571
247:              bltu         t6, s9, 248f
248:              or           a6, s3, s2
                  ori          ra, t6, 812
                  or           tp, a6, t0
251:              lui          a1, 911306
252:              ori          a5, ra, -139
                  bne          s2, a6, 273f
                  slt          s10, s4, s8
                  andi         a1, s5, -1790
                  sub          s5, a4, s7
                  lui          s7, 951553
                  slli         a6, gp, 17
                  srai         a6, a4, 31
                  srai         t4, a0, 18
                  andi         t1, s9, -1358
                  bgeu         a7, t3, 263f
263:              or           s10, zero, a3
                  srai         s0, a6, 22
                  xor          s10, s0, t4
                  bgeu         s0, ra, 274f
                  slli         s2, t2, 19
                  ori          t1, tp, 980
                  blt          s10, t5, 272f
                  slti         s9, s2, 1836
                  nop
272:              addi         t1, t6, 1638
273:              andi         sp, a7, -185
274:              slt          gp, s0, s0
                  sub          s8, s9, a0
                  beq          gp, t1, 294f
                  and          a1, t3, tp
                  xor          s3, t2, s9
                  sll          a0, s10, s5
                  xori         s3, a7, -192
                  nop
                  srli         s7, t4, 29
                  xori         s2, s6, -1667
                  ori          a5, s2, 294
                  sltu         t2, a7, tp
                  andi         sp, t4, 302
                  and          zero, s6, a0
                  xori         a3, t5, 595
                  sltiu        zero, tp, -1676
                  slt          a2, t0, gp
                  sltiu        a3, a5, -59
                  xori         s3, t5, -992
                  ori          s11, a7, -1783
294:              slti         s5, t4, -1843
                  srli         zero, s0, 3
                  bne          a2, a4, 309f
                  xori         a6, s11, -1136
                  bge          s3, t2, 318f
                  sra          sp, a3, t6
                  andi         zero, a5, 1721
                  slt          ra, s7, a0
                  blt          tp, s4, 319f
                  lui          tp, 895916
                  auipc        a4, 452703
                  add          zero, t0, s4
                  and          t3, a4, s3
                  sub          a2, t5, a4
                  srai         a1, zero, 15
309:              or           s5, s7, s1
                  xori         a4, a3, 1638
                  addi         s4, t6, 125
                  addi         zero, s7, -950
                  slt          s10, t2, s10
                  beq          s10, ra, 318f
                  sra          t1, a0, s9
                  srli         s11, t3, 23
                  sra          a1, t2, ra
318:              slt          gp, s6, t2
319:              auipc        a2, 906253
                  bltu         a0, s4, 334f
                  auipc        a6, 38547
                  srli         ra, s10, 9
                  addi         tp, s5, -1307
                  xor          gp, s4, s8
                  or           a4, s7, s1
                  or           t4, zero, s3
                  and          a3, a4, s11
                  bne          t5, a5, 334f
                  lui          a6, 543671
                  blt          zero, s8, 334f
                  slt          a1, t1, a6
                  sll          t0, a0, s10
                  slti         s2, s7, 68
334:              sll          s7, s9, a0
                  or           s11, t6, t5
                  lw           t2, 4(t5)
                  sll          s8, t1, s11
                  sltu         s5, t4, s9
                  nop
                  addi         t5, t5, 60
                  slli         t1, sp, 6
                  or           t3, zero, sp
                  slti         ra, sp, 183
                  slti         s7, t4, -433
440:              addi x21, x7, 0
440:              jalr x21, x21, 0
sub_4:            srl          a0, a1, t0
                  blt          t6, a4, sub_4_stack_p
                  sll          s2, ra, t6
                  nop
sub_4_stack_p:    addi         t5, t5, -36
                  sw           t2, 4(t5)
                  sll          a4, s2, s0
                  xor          t3, gp, t6
                  sltiu        s8, s11, 1851
                  xori         tp, tp, -448
                  sltu         s9, s4, t1
                  slt          a7, t0, ra
                  slli         s11, t3, 0
                  lui          s11, 507459
                  la           tp, sub_8
                  auipc        s10, 717229
                  addi         tp, tp, -635
                  bge          a5, t1, sub_4_j6 #branch to jump instr
                  slti         s0, a1, 1451
                  sltu         s10, gp, t5
sub_4_j6:         jalr         t2, tp, 635 #jump sub_4 -> sub_8
                  sra          s9, s7, a2
                  la           t1, sub_7
                  srai         t2, s1, 13
                  addi         t1, t1, -255
                  slli         s10, a2, 5
                  slt          s4, s2, zero
                  srai         a3, a4, 8
                  auipc        t0, 966166
sub_4_j7:         jalr         t2, t1, 255 #jump sub_4 -> sub_7
                  xor          a1, t6, s9
                  or           s10, t6, zero
                  andi         s10, s0, -1131
                  sra          t6, zero, t4
                  sra          a4, t1, s7
                  ori          a3, a4, -1429
                  sltu         tp, s10, s1
                  slti         a4, s3, 1685
sub_4_j8:         jal          t2, sub_6 #jump sub_4 -> sub_6
                  sra          a5, a5, t1
                  la           gp, sub_9
                  addi         gp, gp, 315
                  bne          t2, t0, sub_4_j9 #branch to jump instr
                  xori         s0, s9, 401
                  addi         a2, a5, 1334
                  add          t0, a0, a3
                  andi         s5, a6, 301
                  lui          t2, 760476
sub_4_j9:         jalr         t2, gp, -314 #jump sub_4 -> sub_9
                  la           a5, sub_10
                  or           s4, a2, s3
                  andi         s8, gp, -59
                  addi         a5, a5, -921
                  sub          s8, s10, zero
                  sub          zero, t1, gp
                  andi         s10, t4, 1747
sub_4_j10:        jalr         t2, a5, 922 #jump sub_4 -> sub_10
                  sll          gp, a7, s7
                  slli         sp, sp, 17
                  sub          s5, s6, s7
                  and          s11, s10, a1
                  sub          a5, gp, s8
                  la           t6, sub_5
                  addi         t6, t6, 309
                  slli         a1, gp, 1
                  slli         t3, a5, 28
                  xori         ra, s7, -369
                  ori          s3, s5, 497
                  slt          s2, t0, zero
sub_4_j11:        jalr         t2, t6, -309 #jump sub_4 -> sub_5
                  la           a7, region_0+1411 #start riscv_load_store_rand_instr_stream_0
                  sb           t0, -82(a7)
                  lb           t1, -48(a7)
                  lb           s4, 140(a7)
                  lh           t3, -201(a7)
                  lh           t3, -69(a7)
                  ori          s10, tp, 1725
                  sb           t3, -230(a7)
                  ori          a2, t3, -357
                  lb           t0, -96(a7)
                  nop
                  nop
                  ori          s11, t0, 676
                  lb           s11, -64(a7)
                  slli         s9, sp, 4
                  sra          t3, a7, s7
                  srli         s8, s6, 0
                  slt          s7, s3, a1
                  lb           s5, 156(a7)
                  or           a5, t0, zero
                  sh           t6, 19(a7)
                  sw           a6, 245(a7)
                  lhu          s9, 41(a7)
                  sb           s9, -204(a7)
                  slli         s7, t2, 5
                  auipc        s4, 357441
                  xori         a6, zero, 315
                  lhu          zero, -73(a7)
                  lh           t3, 199(a7)
                  lb           t6, 242(a7) #end riscv_load_store_rand_instr_stream_0
                  add          a1, a3, s9
                  srai         s11, s5, 17
                  slti         t3, s4, 1802
                  slt          t2, a4, a2
                  sra          s5, s4, s1
                  lui          s4, 688394
                  andi         s11, s1, 379
                  sll          sp, a4, t6
                  andi         sp, a2, 1508
                  slt          s11, t1, s2
                  sra          s2, s8, s5
                  auipc        sp, 856707
                  ori          s9, a5, -1146
                  andi         a4, s2, 903
                  sll          a7, t0, s9
                  nop
                  or           a3, s2, ra
                  blt          s0, t0, 19f
                  add          a6, t4, t1
19:               srai         s2, t5, 4
                  xor          s10, t0, a6
                  sll          s9, s11, s10
                  lui          t3, 502865
                  slli         gp, a4, 30
                  srli         gp, s2, 23
                  xor          sp, t0, t4
                  add          a5, zero, sp
                  slli         tp, s3, 4
                  xor          a0, s5, s0
                  slti         zero, tp, -1982
                  slli         t2, t5, 24
                  bltu         sp, s3, 33f
                  bge          s2, ra, 48f
33:               beq          t2, s9, 46f
                  add          s4, gp, a4
                  bge          zero, a1, 36f
36:               slt          s2, t3, gp
                  bne          t0, t2, 43f
                  srai         s4, s2, 0
                  xori         a1, t5, 263
                  xori         zero, a7, 1335
                  bltu         a5, t3, 51f
                  andi         a2, s8, 1595
43:               addi         s8, t0, -1636
                  bge          a0, s10, 48f
                  ori          s4, s11, -1141
46:               sltu         a5, t5, s9
                  srl          t0, t5, s9
48:               add          ra, ra, s1
                  addi         t3, ra, -864
                  bge          a7, t2, 65f
51:               add          a3, s5, t2
                  andi         t6, tp, 1929
                  sub          a4, s11, a3
                  bgeu         s11, zero, 57f
                  auipc        s9, 834596
                  bltu         s5, a0, 73f
57:               ori          a6, s3, -1161
                  beq          s0, a0, 66f
                  slti         s8, gp, 1017
                  sltu         a5, s10, t4
                  slli         a1, a4, 14
                  sltiu        a4, t5, 1478
                  sub          t2, s7, t5
                  nop
65:               addi         s11, s3, 1202
66:               bltu         s5, t1, 74f
                  slli         a3, a5, 17
                  xor          a5, s0, s8
                  sll          s8, sp, a0
                  or           a3, gp, t0
                  sltiu        a7, a5, 1684
                  bge          sp, a0, 81f
73:               auipc        s7, 208740
74:               srai         a7, s8, 24
                  xor          a7, t4, gp
                  slti         s8, t4, 1980
                  andi         sp, a5, -1953
                  bltu         s9, zero, 80f
                  srai         gp, t2, 16
80:               sub          s7, s10, s5
81:               slli         zero, a5, 17
                  ori          s7, t5, -389
                  or           s2, t3, t2
                  addi         a6, tp, 1788
                  srli         sp, s6, 27
                  srai         s0, s11, 21
                  bne          s5, tp, 107f
                  andi         zero, s1, 1967
                  bge          gp, t4, 94f
                  add          a4, a6, t1
                  lui          tp, 379764
                  slti         s8, zero, 519
                  blt          s8, t6, 99f
94:               srl          ra, s7, a6
                  sll          a7, s10, a0
                  blt          t5, s10, 105f
                  sll          a2, t0, s0
                  srl          sp, s3, s4
99:               slti         s5, s7, 1458
                  srai         s11, s9, 3
                  addi         a5, a5, -116
                  sra          gp, t4, s4
                  bne          s3, gp, 122f
                  sltu         a6, s8, t6
105:              ori          a1, a5, -767
                  auipc        s4, 504197
107:              slti         a6, a3, -1282
                  addi         a3, a3, -1730
                  xori         tp, t4, -1875
                  srl          s3, a4, zero
                  andi         a2, gp, 135
                  xori         a2, a3, -1977
                  addi         t4, gp, -1633
                  sra          a7, s0, s9
                  sra          s5, sp, ra
                  srli         s5, s5, 2
                  andi         a5, sp, 1620
                  and          a1, t6, zero
                  beq          s0, ra, 129f
                  xor          s10, a4, s10
                  blt          s9, s3, 124f
122:              bne          ra, s10, 136f
                  andi         a1, s5, -336
124:              or           s10, a0, a5
                  or           t0, s7, a0
                  auipc        s4, 1001092
                  andi         s3, t0, -123
                  slti         s0, t2, 595
129:              sra          a4, t3, t3
                  bge          a2, t6, 142f
                  srai         s9, t1, 14
                  bne          s3, t4, 148f
                  xor          s7, s4, t1
                  bltu         s1, zero, 139f
                  srl          t3, s2, t5
136:              sra          gp, sp, tp
                  srai         t6, ra, 30
                  nop
139:              auipc        t4, 948414
                  bge          s8, t1, 146f
                  andi         sp, s5, -310
142:              nop
                  add          s8, t6, ra
                  sub          a4, s8, t0
                  bgeu         s6, a3, 151f
146:              slti         a7, t2, -759
                  and          a2, t3, s4
148:              sub          s0, ra, a3
                  srli         a6, a4, 1
                  andi         sp, t5, -276
151:              srai         t4, a7, 23
                  slti         s10, a5, -806
                  srai         a0, s9, 15
                  slli         a6, gp, 7
                  xori         s10, t1, -860
                  lw           t2, 4(t5)
                  sra          s10, s10, a2
                  addi         t5, t5, 36
                  auipc        s2, 779748
260:              addi x17, x7, 1
260:              jalr x17, x17, 0
sub_6:            auipc        t0, 264848
                  blt          a0, tp, sub_6_stack_p
                  or           s0, s0, a2
                  slti         t0, t4, -1258
                  and          gp, t1, a0
sub_6_stack_p:    addi         t5, t5, -64
                  lui          zero, 52468
                  sw           t2, 4(t5)
                  ori          a6, s5, 1919
                  la           sp, region_0+495 #start riscv_load_store_rand_instr_stream_3
                  sltiu        a6, s6, 67
                  lb           a6, -14(sp)
                  lb           a7, 12(sp)
                  srli         s4, s0, 25
                  sra          s7, s3, sp
                  sll          s0, s8, a6
                  lbu          s0, 16(sp)
                  sltu         t6, a5, s2
                  sb           s6, -1(sp)
                  lb           s3, -12(sp)
                  sub          zero, s1, s3
                  srl          s11, s10, t0
                  sub          s3, s9, s3
                  and          a7, s3, s5
                  and          a4, a0, s5
                  srl          a5, t5, t1
                  sb           t3, -6(sp)
                  sltiu        s10, s6, 62
                  sltu         a3, gp, s9
                  lbu          s7, 10(sp)
                  sb           s3, -8(sp)
                  sltiu        zero, s5, 1599
                  lbu          ra, -4(sp)
                  sll          tp, s0, s3
                  slt          ra, s3, a0
                  lhu          t4, 15(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+662 #start riscv_load_store_rand_instr_stream_2
                  lbu          s5, -233(sp)
                  sra          t1, a1, a6
                  add          s9, s9, s3
                  lbu          s0, 187(sp)
                  srl          zero, t5, s8
                  srai         s5, a5, 15
                  lbu          s7, -196(sp)
                  lhu          s3, 94(sp)
                  sb           a7, 225(sp)
                  lb           s3, -129(sp)
                  lh           a2, -96(sp)
                  slti         s11, t3, -1222
                  slti         tp, t0, -1651
                  slti         a3, sp, 726
                  sb           zero, 256(sp)
                  sub          gp, t2, s6
                  auipc        t1, 1046118
                  lhu          gp, -40(sp)
                  slti         s5, ra, -692
                  sltu         a7, s5, s11
                  lhu          t2, -12(sp)
                  sll          s2, s4, a1
                  lh           s4, -146(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t1, region_1+1504 #start riscv_load_store_rand_instr_stream_0
                  lb           zero, -1045(t1)
                  lbu          a7, -1217(t1)
                  auipc        a5, 346701
                  sb           tp, 226(t1)
                  lbu          t4, -827(t1)
                  slti         a4, a7, -1134
                  lbu          s8, -279(t1)
                  lui          t3, 695391
                  xor          t3, a7, a0
                  or           a0, s5, t4
                  add          sp, t5, s7
                  sh           s4, -550(t1)
                  lbu          t3, -1113(t1)
                  lh           a3, -562(t1)
                  lui          a6, 233908
                  lhu          a1, -632(t1)
                  and          a4, s7, a5
                  lb           s5, -479(t1)
                  sw           zero, -1068(t1)
                  lh           a6, -150(t1)
                  sh           a1, -1038(t1)
                  lbu          zero, -959(t1)
                  lui          s10, 928466
                  lbu          t3, 375(t1)
                  srli         t2, a7, 15
                  lb           t3, -517(t1)
                  lw           gp, -200(t1)
                  ori          a5, s2, 200
                  slt          s10, sp, s1
                  slti         a7, s0, -1321
                  lb           ra, -1470(t1)
                  lb           t4, -1407(t1) #end riscv_load_store_rand_instr_stream_0
                  sub          s10, s9, t2
                  and          a7, t5, t0
                  lui          a0, 490000
                  srai         a7, a0, 18
                  xor          s10, t4, s10
                  or           t3, s6, t3
                  slti         s10, a3, 419
                  bge          s0, t5, 17f
                  add          tp, gp, s1
                  slti         a0, s11, 896
                  auipc        s0, 286461
                  blt          s3, s9, 27f
                  nop
                  srl          s10, a1, sp
                  ori          s10, s10, 1137
                  xor          s7, a0, t4
                  add          t6, s9, t3
17:               slli         a3, zero, 29
                  srai         s11, gp, 18
                  slti         a6, t6, 325
                  bltu         zero, t3, 32f
                  srl          s3, s10, a3
                  sltu         sp, a5, t2
                  and          a5, gp, s1
                  andi         a5, s8, 478
                  nop
                  auipc        a6, 300735
27:               sub          t3, ra, a7
                  or           s5, a1, a1
                  sltiu        a1, a3, -43
                  andi         s11, t0, -1906
                  bltu         s6, s9, 39f
32:               andi         a0, a6, 963
                  srai         t2, tp, 27
                  lui          s8, 646542
                  slt          s10, s4, zero
                  auipc        a5, 200701
                  addi         a3, t6, -153
                  xor          sp, t4, s1
39:               bne          s8, s1, 40f
40:               srli         a0, ra, 20
                  sltu         ra, sp, a3
                  sll          t3, a1, t6
                  bltu         s1, t5, 59f
                  sltu         a6, a5, t0
                  bgeu         s5, s10, 57f
                  andi         gp, a2, 1398
                  addi         t3, a0, 1243
                  beq          a4, a1, 64f
                  bge          s4, t5, 52f
                  slli         a6, s10, 12
                  ori          gp, a5, 1700
52:               sub          a2, s6, a3
                  srl          s4, t1, s7
                  or           s10, t2, s5
                  or           a5, a4, t5
                  blt          a2, gp, 72f
57:               sub          gp, a5, tp
                  srl          t6, tp, s11
59:               or           s3, a4, s0
                  sra          a2, s9, s4
                  add          gp, s9, s5
                  and          gp, a2, a0
                  srli         t6, s5, 17
64:               beq          a7, s6, 71f
                  bgeu         a2, t2, 70f
                  xor          a1, t6, s2
                  auipc        s7, 845335
                  ori          a7, a6, 167
                  srai         a4, s7, 3
70:               nop
71:               bltu         ra, a6, 85f
72:               and          a7, t4, a5
                  sra          s3, s2, s6
                  nop
                  bne          a2, s1, 88f
                  xori         s10, s7, 582
                  srl          ra, s4, s4
                  srl          t2, a2, s8
                  sll          a4, s10, s1
                  add          a5, zero, t2
                  slti         t3, s2, -1787
                  andi         s0, t4, 1814
                  sltiu        s9, a6, 1788
                  add          sp, a3, s4
85:               sra          sp, s1, s9
                  sltu         t6, s2, s9
                  sltiu        a2, a1, 900
88:               srli         s7, t1, 27
                  srai         t0, s8, 21
                  and          a7, t1, s7
                  sub          zero, s11, a7
                  bltu         a3, t3, 95f
                  or           s3, zero, s0
                  andi         ra, s3, 1348
95:               bgeu         s8, s1, 102f
                  auipc        t2, 421248
                  addi         a0, a0, 933
                  addi         t3, s8, 1870
                  slti         s8, s0, -44
                  xori         s11, gp, -1954
                  slti         t2, a1, -199
102:              srli         ra, a1, 6
                  ori          ra, s5, 577
                  bgeu         tp, s11, 124f
                  sra          a5, s5, s5
                  bge          s11, s7, 120f
                  sltu         gp, t2, ra
                  srai         zero, s2, 20
                  srl          s5, t5, a5
                  bge          s3, s10, 114f
                  sll          t4, s6, s0
                  sll          s3, s8, a4
                  and          a4, t1, gp
114:              lui          t6, 552761
                  slti         gp, s9, -1689
                  xori         s4, s5, 1778
                  srl          a6, a2, a6
                  nop
                  bge          ra, t1, 123f
120:              lui          zero, 597435
                  slt          a7, tp, gp
                  blt          a6, t6, 124f
123:              srli         gp, s6, 18
124:              slt          s10, t0, a2
                  nop
                  bne          zero, s6, 141f
                  srl          t4, t6, t2
                  beq          zero, t3, 130f
                  bge          s9, tp, 130f
130:              lui          s3, 1000727
                  xori         s4, s10, 1112
                  bltu         a4, t3, 141f
                  xor          s9, a3, t0
                  add          s3, s6, s2
                  or           s8, a0, gp
                  slti         tp, t5, -1341
                  bgeu         s0, s8, 141f
                  srli         a7, t1, 12
                  lui          sp, 830871
                  bgeu         s9, s9, 152f
141:              ori          s8, t3, 1482
                  bne          t3, t1, 148f
                  auipc        t6, 770891
                  bge          tp, s2, 146f
                  slli         a1, s1, 19
146:              add          t6, s6, s10
                  and          s3, a1, t0
148:              bgeu         s7, s11, 167f
                  sub          a0, s0, s3
                  sub          ra, ra, a7
                  auipc        a7, 619547
152:              addi         s10, zero, 1686
                  bltu         a4, s3, 172f
                  slli         zero, zero, 19
                  addi         a6, s11, -225
                  nop
                  bltu         a0, a3, 171f
                  xori         a5, a2, 583
                  ori          a3, a6, 1098
                  lui          a0, 434914
                  lui          s7, 159073
                  srl          a3, a2, s11
                  slli         t3, tp, 30
                  sll          t6, s3, s10
                  srl          ra, a0, s7
                  blt          s0, s3, 174f
167:              sltiu        tp, s6, -1654
                  xori         gp, s6, 1877
                  bgeu         t4, a3, 170f
170:              bltu         t4, s9, 182f
171:              slli         ra, t6, 11
172:              addi         s8, s5, -1869
                  andi         zero, a3, 728
174:              add          tp, zero, t4
                  srai         s11, sp, 21
                  ori          s9, s1, 1198
                  sub          a0, ra, s2
                  blt          a6, a1, 198f
                  nop
                  bltu         ra, s4, 192f
                  slti         a6, ra, 916
182:              slt          t4, a6, t5
                  sll          a2, a4, gp
                  xor          a5, sp, t6
                  add          s10, t3, a7
                  lui          t1, 359401
                  slli         t2, t5, 13
                  sll          a7, gp, gp
                  slt          s5, s8, s7
                  bge          a3, a2, 193f
                  lui          s5, 301993
192:              srli         s0, s0, 24
193:              sll          sp, sp, s2
                  lui          zero, 486801
                  bne          s4, s11, 211f
                  and          s9, a6, a4
                  sll          zero, zero, t1
198:              beq          s3, s11, 204f
                  slli         s3, a6, 6
                  bne          s8, s4, 202f
                  lui          zero, 1316
202:              sltu         s5, a5, s10
                  slti         a3, a2, 615
204:              auipc        tp, 162084
                  srl          a1, s2, s10
                  bne          a7, s3, 213f
                  addi         a6, gp, 421
                  sra          s11, gp, s9
                  slt          s7, a6, s4
                  and          t3, ra, s2
211:              auipc        s5, 961872
                  bgeu         s1, zero, 228f
213:              bne          s3, s6, 229f
                  srai         a1, s4, 7
                  srl          t4, t3, tp
                  auipc        s9, 809965
                  xori         t2, t4, -1776
                  slli         a4, s9, 26
                  sll          s5, sp, a6
                  auipc        s8, 989385
                  addi         a0, a7, -282
                  sub          a1, a0, s7
                  bge          t1, s3, 239f
                  bne          a1, s9, 225f
225:              bgeu         zero, a7, 230f
                  beq          sp, t6, 240f
                  sltu         a1, s7, a5
228:              sltu         s0, s6, t4
229:              sltiu        s10, t6, -625
230:              xor          t2, t5, a6
                  andi         s2, s2, 869
                  add          t2, a6, s3
                  bltu         s11, a3, 235f
                  lui          s5, 391909
235:              bge          a7, s9, 239f
                  bgeu         a0, s10, 239f
                  bltu         gp, t3, 250f
                  lui          s5, 425444
239:              lui          t1, 426982
240:              andi         tp, s11, 892
                  bne          s1, s11, 256f
                  add          s8, a7, a2
                  sltu         s8, t6, t6
                  slt          s8, t3, s10
                  bgeu         t1, sp, 254f
                  bltu         a1, a7, 258f
                  sra          tp, t2, s10
                  nop
                  auipc        a3, 887525
250:              slt          s5, s11, t3
                  srl          zero, a4, zero
                  sll          t1, t0, t5
                  slti         s8, t3, 825
254:              ori          s8, s4, -94
                  sra          a3, zero, t5
256:              srai         s3, zero, 22
                  srl          s9, gp, s7
258:              srai         t3, s11, 12
                  nop
                  nop
                  sltu         a5, tp, t6
                  or           s7, t6, s9
                  xori         s4, s9, 1223
                  slli         s11, s0, 28
                  xor          s8, s11, a5
                  ori          a6, t3, 290
                  add          a4, a2, t3
                  sra          a4, s4, t0
                  srai         ra, s11, 18
                  nop
                  beq          t1, a6, 275f
                  sll          s10, s8, a0
                  andi         t1, t0, -1232
                  xor          s0, gp, a0
275:              sub          t0, a1, a0
                  srai         t3, a2, 7
                  lui          a4, 334160
                  bltu         s3, s7, 282f
                  beq          s6, t1, 289f
                  or           t1, a6, s0
                  add          t2, zero, a0
282:              auipc        t6, 69644
                  and          t4, t3, a3
                  srl          s10, ra, t3
                  bne          a7, a4, 292f
                  and          a4, a6, gp
                  nop
                  blt          s4, s3, 290f
289:              slt          s9, t2, tp
290:              blt          t4, s2, 306f
                  andi         s11, t1, 2003
292:              sub          tp, ra, a1
                  slti         zero, s2, -311
                  xori         a0, s7, -1416
                  sra          t1, s6, t3
                  sltiu        a1, s6, 919
                  slt          a4, t6, t4
                  sltu         s0, a2, t3
                  xori         t6, s9, -1539
                  nop
                  sra          t4, s10, s8
                  or           t1, a7, s10
                  sltu         a3, s5, tp
                  andi         ra, a5, 1911
                  xori         a0, s9, 114
306:              andi         s4, s2, 200
                  bltu         ra, s7, 309f
                  or           a6, zero, a0
309:              sltiu        s4, a4, -885
                  sltu         s3, s11, s1
                  slli         t3, a7, 27
                  bge          t2, t0, 319f
                  auipc        a4, 623596
                  slli         s7, t1, 21
                  slli         t6, t0, 4
                  or           s3, s4, a3
                  bge          a2, t0, 331f
                  xori         s7, s0, 71
319:              bne          s0, a7, 323f
                  sll          s7, t4, t4
                  nop
                  sll          t4, s4, t4
323:              slt          t2, t0, a6
                  andi         a6, s7, 942
                  and          a7, s6, t5
                  sltu         s3, zero, a3
                  auipc        t2, 725865
                  srl          t2, zero, s11
                  sll          s11, a5, s7
                  addi         a7, t0, -253
331:              bge          t0, s1, 333f
                  sra          a4, s9, t3
333:              xor          a3, s2, t0
                  beq          t6, s2, 344f
                  sra          a5, ra, s3
                  bgeu         a1, t6, 352f
                  beq          t4, s11, 338f
338:              xori         s5, s4, -1596
                  bgeu         zero, a0, 348f
                  sltiu        a5, gp, 1307
                  andi         s0, a6, -801
                  xori         t6, s5, -2003
                  slt          s11, t2, s6
344:              srai         s9, a7, 28
                  srli         s5, s0, 10
                  and          a7, s3, a6
                  srli         t6, s1, 14
348:              xor          s5, t5, s4
                  srai         t4, gp, 29
                  sub          s5, t4, ra
                  lui          a2, 981249
352:              addi         a0, t1, -1992
                  sltiu        sp, zero, -1210
                  blt          s8, a7, 356f
                  bne          a1, tp, 367f
356:              auipc        a2, 213250
                  xori         ra, t4, 1722
                  sltu         t1, s7, s4
                  sltiu        t2, ra, -982
                  bltu         ra, s7, 367f
                  beq          a6, s8, 369f
                  srl          gp, a2, a2
                  sll          a4, a3, s6
                  add          tp, ra, a6
                  add          s9, tp, a7
                  sltiu        sp, a3, -1924
367:              beq          s10, s10, 379f
                  auipc        s9, 761999
369:              bne          s8, s4, 385f
                  slt          s10, a1, s5
                  ori          t1, s4, -1859
                  auipc        ra, 552509
                  bne          s2, s9, 385f
                  andi         s11, s0, 1614
                  la           t0, region_0+991 #start riscv_load_store_rand_instr_stream_1
                  add          a0, t2, s5
                  lhu          sp, -851(t0)
                  xor          a7, t5, a1
                  srai         s0, a0, 21
                  lh           s11, -829(t0)
                  sll          t2, ra, a2
                  slti         s5, a6, -273
                  slti         s11, s8, -424
                  lb           t6, 950(t0)
                  lbu          s10, 147(t0)
                  sb           s2, -872(t0)
                  sub          t1, s4, a2
                  sb           s11, 406(t0)
                  add          a3, s0, a5
                  sra          t3, a1, a1
                  sb           a0, 500(t0)
                  nop
                  andi         s8, s0, -536
                  srl          a3, t4, s8
                  lbu          a6, -904(t0)
                  lui          s0, 749384
                  nop
                  lb           t2, 446(t0)
                  and          s4, a0, a5
                  ori          a2, tp, -774
                  slti         a6, s0, 1540
                  srli         t2, s10, 2
                  sb           a0, -825(t0)
                  srl          s3, s11, zero
                  slti         t1, a2, -1002
                  sll          t4, a3, s1
                  lhu          t2, -321(t0)
                  sll          t3, s9, a3
                  xori         tp, s9, -236
                  lb           a2, 405(t0)
                  srai         a2, t3, 23
                  andi         s9, s7, -392
                  lbu          sp, -222(t0) #end riscv_load_store_rand_instr_stream_1
                  slt          a7, t1, gp
                  srl          s10, t6, sp
                  blt          ra, s3, 381f
                  slti         a3, a3, 624
379:              or           gp, s9, t1
                  bltu         s8, tp, 384f
381:              srli         a1, tp, 31
                  or           s7, a2, s10
                  srl          ra, a5, a1
384:              bne          s4, s7, 398f
385:              blt          tp, a0, 404f
                  bgeu         t2, s8, 399f
                  srl          t3, a0, tp
                  slt          a7, s5, t4
                  lui          s10, 97181
                  srli         a1, t1, 22
                  auipc        t6, 696437
                  bgeu         t4, zero, 395f
                  xori         a4, s3, 1460
                  sltu         a1, ra, t1
395:              srai         t1, a3, 16
                  ori          s3, s6, 496
                  sub          a5, s7, a4
398:              blt          s9, s7, 413f
399:              xori         s8, gp, 220
                  bge          t3, a7, 406f
                  and          s0, s10, s6
                  srl          tp, a7, s7
                  sra          a3, ra, s11
404:              beq          s3, s0, 405f
405:              nop
406:              srl          t0, s4, s10
                  andi         s2, t4, 622
                  bgeu         a4, s2, 413f
                  or           a6, a6, s3
                  sra          s8, a2, s2
                  auipc        s5, 720661
                  andi         t1, a1, 1241
413:              sra          s10, t6, s0
                  slti         tp, t2, 1099
                  srai         s2, s9, 15
                  srli         s4, gp, 23
                  slti         tp, t4, -2031
                  srai         a2, tp, 26
                  xor          a0, s9, ra
                  xori         tp, a1, 1771
                  slt          a0, tp, zero
                  sltu         t6, a0, t5
                  lui          s11, 299866
                  srai         s7, a2, 4
                  ori          t3, a5, -859
                  sra          tp, t3, s8
                  sll          s2, s3, t2
                  slti         sp, s1, -231
                  slli         s10, s6, 17
                  lui          tp, 1017694
                  bltu         a7, s0, 451f
                  auipc        s8, 684027
                  srli         s0, t6, 0
                  sll          a4, t4, a0
                  bltu         s3, t5, 438f
                  bgeu         a1, s5, 452f
                  sltu         s10, s6, t6
438:              blt          s7, s10, 440f
                  sra          a4, t4, t1
440:              bltu         s2, t0, 441f
441:              bltu         s6, t6, 453f
                  bgeu         a3, s6, 456f
                  srai         a4, t2, 18
                  blt          a3, sp, 458f
                  blt          a0, s6, 457f
                  srli         a4, s6, 9
                  and          tp, a2, t3
                  blt          s9, gp, 460f
                  and          s11, t4, s4
                  addi         gp, s8, 1388
451:              auipc        s7, 585698
452:              addi         s0, s9, 132
453:              addi         a3, s0, 1698
                  bltu         zero, a0, 458f
                  srai         t4, s7, 25
456:              bgeu         tp, a5, 472f
457:              sll          s3, t2, a5
458:              sra          s2, t5, s3
                  srl          s11, a7, s7
460:              slli         a7, t4, 17
                  ori          a4, t1, 97
                  srai         t4, tp, 29
                  blt          zero, gp, 479f
                  ori          s7, s1, 894
                  sltu         a0, ra, t6
                  sub          a7, s11, t2
                  add          s11, s2, s5
                  auipc        a2, 849603
                  xori         a2, s0, 1136
                  sra          s7, t6, t0
                  srl          t4, sp, a0
472:              xori         s4, a7, -708
                  sub          s8, zero, s4
                  andi         s2, zero, -1982
                  ori          sp, s4, -1044
                  addi         sp, s0, -95
                  blt          a6, t5, 483f
                  bltu         s4, s2, 481f
479:              bne          s3, t3, 494f
                  srai         s10, s6, 24
481:              addi         s8, s0, 1063
                  xor          a2, s8, t6
483:              addi         s4, t5, -1440
                  blt          s0, t4, 486f
                  bgeu         s3, t3, 495f
486:              bgeu         a7, a2, 490f
                  srai         s8, a2, 4
                  or           s10, s7, s9
                  ori          tp, s2, -354
490:              bge          s2, s9, 497f
                  srai         a0, t1, 26
                  bne          t6, t0, 497f
                  slti         s7, s3, -756
494:              addi         s9, t3, 1426
495:              addi         zero, t5, 554
                  lui          zero, 848881
497:              addi         s0, s10, 32
                  srl          t1, s4, a6
                  auipc        s7, 855356
                  slli         a7, s6, 26
                  andi         tp, s7, -1093
                  sltiu        t2, gp, -1496
                  blt          s5, zero, 505f
                  or           a3, s11, s1
505:              and          s4, sp, t1
                  srli         s10, a0, 26
                  slt          s9, a0, t0
                  bgeu         s6, s6, 524f
                  addi         s0, t0, 1395
                  sub          t3, t1, s7
                  bge          a1, s11, 531f
                  srl          s11, s4, tp
                  sll          a7, t3, a2
                  add          a3, s5, a4
                  sltu         s0, t4, s7
                  beq          s7, t4, 517f
517:              nop
                  slli         s5, s1, 11
                  slli         s8, t6, 10
                  auipc        a0, 776826
                  beq          s8, t6, 524f
                  srai         a6, t4, 12
                  lui          s9, 510008
524:              xori         s0, s7, 1920
                  bltu         s8, s7, 538f
                  xori         a0, s7, 79
                  bltu         a5, gp, 536f
                  xor          a6, tp, t0
                  beq          s1, t3, 545f
                  and          gp, t1, a1
531:              or           sp, s11, s2
                  srl          a6, t6, s9
                  xori         a5, t2, -268
                  auipc        s7, 957282
                  slli         t3, s6, 21
536:              xori         t1, s7, -1343
                  addi         t0, zero, -2024
538:              blt          t5, s7, 545f
                  bne          t4, s4, 558f
                  bgeu         sp, a0, 544f
                  addi         s9, s11, -391
                  srai         a7, tp, 27
                  bne          s10, s4, 551f
544:              nop
545:              bge          s0, t1, 554f
                  add          zero, t6, t3
                  bne          t6, s7, 567f
                  slt          a0, t2, s8
                  srli         s3, s7, 17
                  srai         s2, s1, 25
551:              or           a2, a5, s2
                  and          ra, gp, t6
                  sra          a0, gp, t5
554:              sltiu        s0, tp, -1277
                  sra          s8, s5, s5
                  bne          s2, a3, 557f
557:              ori          s9, s7, 132
558:              slti         t6, t5, 258
                  lui          t1, 162251
                  auipc        zero, 133969
                  blt          tp, s3, 573f
                  sub          ra, a4, zero
                  bltu         s6, s1, 573f
                  bge          a3, a3, 565f
565:              bltu         zero, t1, 573f
                  bne          a1, a4, 572f
567:              addi         sp, s1, 9
                  sll          tp, s6, t1
                  blt          t4, a2, 573f
                  sra          ra, zero, s1
                  xori         ra, s10, -985
572:              bltu         a3, s11, 573f
573:              sltu         ra, s2, t6
                  nop
                  lw           t2, 4(t5)
                  xori         t1, a5, 413
                  addi         t5, t5, 64
                  sltu         s4, t6, s1
711:              addi x29, x7, 0
711:              jalr x29, x29, 0
sub_2:            add          a2, gp, a0
                  auipc        a6, 697678
                  bne          s3, t5, sub_2_stack_p
                  lui          a2, 722930
                  slt          t0, sp, s8
sub_2_stack_p:    addi         t5, t5, -64
                  ori          s8, gp, 722
                  sw           t2, 4(t5)
                  and          t1, s4, a1
                  xori         t0, ra, -1455
                  auipc        gp, 691564
                  srai         s3, ra, 27
                  lui          a0, 698769
                  la           sp, region_0+518 #start riscv_load_store_rand_instr_stream_0
                  lbu          gp, 19(sp)
                  sb           a7, 7(sp)
                  lh           a1, -44(sp)
                  lb           gp, -11(sp)
                  lbu          s2, -41(sp)
                  lhu          a3, -36(sp)
                  lbu          s5, 17(sp)
                  lb           a7, 30(sp)
                  lb           s2, 55(sp)
                  and          t4, t6, s3
                  addi         t1, t0, -202
                  sll          s8, s2, t3
                  sb           s7, -35(sp)
                  lb           s0, 56(sp)
                  lbu          t6, 8(sp)
                  xor          a1, s6, s2
                  lhu          t2, 6(sp)
                  lhu          a7, 46(sp)
                  lbu          t1, -59(sp)
                  sb           t3, -43(sp)
                  lui          s0, 377605
                  sub          a5, s8, s8
                  lb           s11, 29(sp)
                  lb           s4, -27(sp)
                  sb           s0, 59(sp)
                  lhu          ra, 16(sp)
                  lhu          t1, -54(sp)
                  lb           s5, 19(sp)
                  slli         s3, a7, 23
                  lbu          a4, 16(sp)
                  and          t4, s1, s8
                  lui          t6, 267858
                  lbu          s4, -56(sp)
                  lbu          t4, -43(sp)
                  srl          ra, s0, a2
                  xori         tp, a0, -2037
                  lb           a7, 44(sp) #end riscv_load_store_rand_instr_stream_0
                  srli         a2, a3, 19
                  slt          t4, t2, gp
                  slt          tp, s8, sp
                  bge          s3, s5, 10f
                  bgeu         t0, s9, 14f
                  srli         a6, t4, 2
                  and          s3, s7, t3
                  srli         t2, s11, 21
                  sub          s4, s1, zero
                  and          a0, a4, sp
10:               and          a6, tp, s8
                  auipc        s4, 753161
                  addi         s0, a5, -322
                  add          s7, a0, a0
14:               slti         a0, t2, 1148
                  blt          s8, s6, 35f
                  blt          t4, s4, 23f
                  lui          gp, 478150
                  srl          s7, a1, s6
                  and          a6, gp, t1
                  sltiu        t0, a4, -443
                  or           s4, t5, t1
                  slt          ra, s1, t0
23:               blt          s7, ra, 34f
                  beq          s3, ra, 44f
                  xor          t3, t4, s0
                  sltiu        zero, a7, 358
                  nop
                  bgeu         s11, a6, 32f
                  bltu         s3, s2, 30f
30:               bne          s3, tp, 34f
                  auipc        a6, 176147
32:               add          s2, a3, a0
                  xor          s10, t2, s4
34:               srai         s7, t3, 23
35:               sltiu        t1, a6, -519
                  lui          t3, 265494
                  sub          s9, gp, t4
                  bge          tp, a2, 46f
                  bltu         s0, sp, 45f
                  auipc        a2, 392769
                  nop
                  bltu         t3, s2, 60f
                  sll          a4, s5, s6
44:               bne          ra, s3, 63f
45:               and          s7, s6, gp
46:               addi         a1, a1, -230
                  ori          ra, sp, 1243
                  slli         tp, s11, 14
                  srl          s8, s11, gp
                  and          sp, a5, s8
                  auipc        tp, 191899
                  sll          a2, s5, a7
                  and          s11, t2, t6
                  xor          t6, s11, a3
                  srli         a7, s7, 25
                  slli         s9, t6, 24
                  slli         a7, a7, 19
                  bgeu         gp, t5, 75f
                  xor          t4, t2, a5
60:               srl          t3, tp, s10
                  beq          s7, t4, 77f
                  lui          s9, 755783
63:               srl          t6, t4, tp
                  ori          a0, t4, -1058
                  lui          sp, 24552
                  auipc        zero, 48487
                  xori         s5, a4, -543
                  sll          s11, s6, a1
                  addi         s5, a0, 1683
                  sltu         t1, s8, t4
                  bltu         s5, a3, 77f
                  or           t3, zero, s1
                  blt          s9, s8, 79f
                  srli         a5, tp, 0
75:               slti         t1, t0, 300
                  addi         a0, a2, -325
77:               addi         a6, a2, -767
                  add          s4, s10, a1
79:               andi         a5, t0, -61
                  slti         gp, s6, 1003
                  slli         s0, s11, 31
                  bltu         a3, tp, 100f
                  or           a0, a5, a0
                  bge          ra, s3, 97f
                  lui          a1, 998151
                  xori         a6, a7, 1123
                  bgeu         t5, t6, 96f
                  addi         a7, t6, -184
                  add          ra, s3, s2
                  srl          a7, a0, s10
                  slt          s11, t1, a5
                  sra          a1, zero, s10
                  slti         s9, t2, 1964
                  sub          a6, a1, a0
                  xor          s2, zero, t1
96:               nop
97:               auipc        s4, 986936
                  srli         t3, a6, 25
                  or           a4, zero, s4
100:              sra          gp, s0, t2
                  bge          s2, s11, 120f
                  auipc        a4, 942532
                  beq          t2, a6, 119f
                  addi         a6, a2, 313
                  srli         ra, s6, 4
                  sra          s10, a4, t0
                  slt          s7, t4, s1
                  add          ra, a4, t2
                  bne          a3, t2, 111f
                  sll          s3, s4, s1
111:              bne          s3, s8, 121f
                  xori         s3, s5, -134
                  andi         s10, a3, 451
                  xor          s7, a0, ra
                  sub          zero, s4, t5
                  bgeu         a2, s3, 129f
                  ori          s3, t1, 1873
                  sltu         sp, s6, s0
119:              ori          a6, t1, 507
120:              or           a0, s1, s10
121:              bgeu         t3, a6, 123f
                  bge          s9, gp, 136f
123:              ori          a1, t1, -105
                  andi         s2, t4, -1273
                  srl          tp, a2, s2
                  srl          t3, a7, s11
                  or           s3, ra, s5
                  bge          s6, gp, 143f
129:              blt          t6, s1, 147f
                  ori          t6, a2, -1633
                  srli         a2, t1, 13
                  srli         s9, a1, 18
                  srli         s8, s3, 15
                  bltu         s4, s4, 139f
                  bgeu         t1, t5, 145f
136:              sra          t2, t5, t2
                  xor          zero, t5, a2
                  sra          gp, s4, t6
139:              slli         s4, s4, 11
                  sll          a5, t1, s7
                  sll          a6, s1, t6
                  slti         ra, a4, -1052
143:              addi         a4, s4, -7
                  addi         s0, s6, -811
145:              srai         s8, s0, 23
                  sll          s3, t4, s2
147:              bne          a2, s5, 163f
                  bge          ra, s2, 166f
                  slli         sp, t5, 3
                  sub          t6, t2, sp
                  ori          t3, s0, -1244
                  slti         s0, a1, 1613
                  blt          a2, s8, 173f
                  slt          a7, t0, s7
                  sltiu        a2, t0, -1545
                  slli         a0, a3, 23
                  ori          s7, s10, 1573
                  auipc        sp, 519356
                  slti         s8, s8, -1656
                  sltiu        s2, s11, 1604
                  nop
                  lui          a3, 744965
163:              beq          s1, t1, 173f
                  add          a1, zero, t4
                  andi         s7, t4, -1534
166:              sltu         s2, t0, a4
                  ori          s4, sp, 1281
                  andi         a6, a7, 530
                  andi         a5, a4, 748
                  xori         sp, s0, -348
                  slt          zero, s6, s8
                  ori          s0, t4, 1213
173:              srai         a2, t2, 21
                  sra          s2, s0, a0
                  and          a3, sp, a4
                  bltu         s9, a4, 181f
                  andi         t2, t4, -208
                  bltu         s5, a1, 181f
                  bge          zero, sp, 181f
                  andi         a7, gp, 1956
181:              or           t4, gp, a6
                  ori          a7, a2, 1888
                  lw           t2, 4(t5)
                  and          t3, s6, a4
                  auipc        s3, 865441
                  sub          s11, a3, t5
                  auipc        ra, 833518
                  srai         ra, gp, 28
                  addi         t5, t5, 64
                  sra          t6, s3, s11
                  srli         s4, s9, 23
                  auipc        a6, 1035841
                  srl          a6, a2, sp
245:              addi x8, x7, 0
245:              jalr x8, x8, 0
sub_5:            nop
                  addi         t5, t5, -36
                  sll          t3, s8, a1
                  srli         s0, s7, 4
                  sw           t2, 4(t5)
                  srai         s9, s11, 9
                  addi         t1, tp, 255
                  andi         ra, t2, -769
                  xor          a5, a5, sp
                  la           sp, region_1+1182 #start riscv_load_store_rand_instr_stream_1
                  lh           t3, 400(sp)
                  sub          t3, a2, s5
                  and          s9, t0, t2
                  srai         gp, a7, 12
                  sb           t1, -429(sp)
                  andi         a3, s5, 759
                  lbu          a2, 349(sp)
                  sb           tp, -1155(sp)
                  lb           a2, -839(sp)
                  srli         zero, t6, 22
                  lb           a4, -239(sp)
                  lbu          s10, 308(sp)
                  lbu          s3, 400(sp)
                  lb           t2, -767(sp)
                  sb           sp, -789(sp)
                  slli         a1, t0, 31
                  slti         s5, t2, -1960
                  sb           sp, 67(sp)
                  srli         s3, t3, 28
                  sltiu        s7, tp, -1614
                  sb           s3, 459(sp)
                  sh           sp, 38(sp)
                  srli         s7, s4, 13
                  sh           s5, 328(sp)
                  lb           s9, -1115(sp)
                  lb           s7, 153(sp)
                  lbu          a2, -729(sp)
                  lh           t2, -948(sp)
                  lb           s10, 479(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1029 #start riscv_load_store_rand_instr_stream_2
                  srai         a6, s6, 18
                  sra          s9, t0, t2
                  nop
                  lb           t0, -86(sp)
                  srl          s11, t4, t6
                  sltu         ra, t1, a5
                  sltiu        zero, s10, -391
                  sra          t0, ra, t6
                  auipc        a5, 1004331
                  srl          a2, s10, a4
                  sb           a0, 40(sp)
                  srai         t3, s7, 9
                  and          s0, s10, s8
                  sh           t4, 159(sp)
                  srai         a0, a2, 27
                  sll          s2, s10, tp
                  lhu          s8, 59(sp)
                  sltiu        s10, s4, -934
                  lh           s9, 87(sp)
                  lbu          s5, 127(sp)
                  lbu          s5, 251(sp)
                  lbu          a1, 211(sp)
                  lb           t6, -74(sp)
                  lbu          a7, -82(sp)
                  lh           s4, -15(sp)
                  addi         t6, s8, 54
                  lhu          t0, 27(sp)
                  lui          a7, 1015395
                  auipc        s8, 724062
                  lbu          a5, -46(sp)
                  andi         s7, t6, -1652
                  lb           a4, 92(sp)
                  sb           a4, -150(sp)
                  lb           a0, 100(sp)
                  sb           s8, 234(sp)
                  srl          s2, t1, s10
                  xori         tp, t5, 593
                  lb           a4, 78(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+336 #start riscv_load_store_rand_instr_stream_0
                  addi         a1, s2, -768
                  lbu          t3, 96(sp)
                  srai         s8, a3, 3
                  nop
                  srli         gp, a1, 21
                  xor          t4, t3, s8
                  lbu          s9, 171(sp)
                  sb           a2, 168(sp)
                  xori         a7, s7, -1669
                  add          t4, s11, t2
                  lhu          a5, 216(sp)
                  slti         a5, tp, -950
                  lb           s10, 225(sp)
                  slt          a7, s11, a0
                  slli         zero, s1, 23
                  slli         t4, t3, 22
                  sb           a0, -131(sp)
                  or           t1, s2, s8
                  lbu          s9, 142(sp)
                  xori         tp, t3, 1522
                  and          s5, s9, ra
                  lbu          a3, -15(sp)
                  sltiu        zero, sp, -309
                  sltu         gp, t6, a3
                  sltu         a7, t3, a2
                  lh           zero, -16(sp)
                  lb           a6, 118(sp)
                  xori         zero, t4, -1867
                  sll          t4, tp, s7
                  lb           s10, -95(sp)
                  sltu         a0, a4, s11
                  sltiu        t1, s0, -1032
                  lb           s9, 185(sp)
                  lbu          t3, 129(sp)
                  sh           t3, 156(sp)
                  sh           gp, 14(sp)
                  slti         s8, s4, -2042
                  sra          t4, gp, a6
                  and          s10, t2, t3
                  lbu          zero, 105(sp)
                  srai         a6, tp, 10
                  sw           a2, 128(sp) #end riscv_load_store_rand_instr_stream_0
                  sltiu        s3, s11, 1416
                  beq          a4, t0, 4f
                  srli         s3, t6, 10
                  nop
4:                slli         s10, s10, 14
                  sub          gp, sp, a1
                  nop
                  sra          s11, a3, t2
                  sltu         tp, sp, s4
                  lui          a7, 36038
                  bltu         t1, a5, 12f
                  and          t0, t5, t5
12:               xori         a5, t2, 938
                  xor          s7, a4, t5
                  sltiu        a0, s4, -1831
                  slti         s3, a0, -1304
                  bgeu         a4, zero, 30f
                  addi         zero, t1, -94
                  xor          gp, ra, s5
                  sra          t4, s0, s10
                  xori         sp, s6, -226
                  srli         s5, zero, 12
                  slti         tp, a4, -1847
                  sub          t2, a6, zero
                  srai         s2, t5, 18
                  xor          s8, t6, a4
                  srli         sp, a3, 2
                  sra          s8, a1, s4
                  blt          zero, t0, 41f
                  blt          s5, gp, 44f
30:               and          s9, s1, a2
                  nop
                  nop
                  lui          s11, 42214
                  sra          a2, s10, s10
                  andi         t2, gp, -249
                  sltiu        a2, a4, 1170
                  xori         t4, t0, -610
                  bltu         zero, a7, 40f
                  and          a3, t2, t5
40:               blt          a5, s11, 52f
41:               bne          s11, sp, 59f
                  or           s5, tp, ra
                  srl          tp, a1, s4
44:               add          gp, t4, a5
                  bge          t1, tp, 64f
                  srl          s4, a5, a2
                  xori         s10, a0, -1459
                  andi         tp, t2, 900
                  bge          gp, s9, 57f
                  add          gp, t6, s0
                  xori         a3, a4, 1754
52:               xor          a5, t0, s5
                  bne          s1, s1, 57f
                  srai         s9, s1, 14
                  addi         t1, s11, 837
                  and          a7, t5, s11
57:               sub          a3, t5, gp
                  blt          a3, s1, 73f
59:               or           a7, t1, a6
                  srli         t1, t0, 28
                  ori          a7, s2, 1701
                  srai         s8, s6, 15
                  xor          s10, s8, s2
64:               add          gp, ra, t6
                  bne          tp, t0, 73f
                  add          s0, a2, s5
                  sll          sp, t2, s4
                  or           t3, a3, t5
                  xor          s4, gp, s0
                  srai         gp, a4, 26
                  sub          t1, s0, t2
                  andi         s0, t1, -1872
73:               sll          t1, a0, s4
                  beq          s1, a3, 83f
                  beq          sp, s1, 85f
                  slt          s4, t1, t2
                  nop
                  blt          a5, tp, 91f
                  nop
                  nop
                  and          a7, ra, a0
                  slt          a6, a1, s8
83:               bgeu         a3, t1, 102f
                  srl          s11, t1, zero
85:               ori          s3, t6, -76
                  sll          t0, sp, s5
                  sub          s10, a7, s11
                  ori          sp, a4, -604
                  xori         s10, t3, 1715
                  ori          a0, t5, 1422
91:               nop
                  andi         s7, a5, -1680
                  sub          s8, a6, s6
                  sltiu        a6, t2, 760
                  slti         s9, t5, 876
                  add          s0, a7, s7
                  srli         a7, tp, 18
                  blt          s9, a2, 102f
                  nop
                  ori          sp, a4, -837
                  or           s7, s6, s3
102:              sltu         a2, s4, t1
                  sll          s0, s4, a7
                  xori         a1, tp, 1666
                  xor          s5, a1, a3
                  slli         s11, a2, 15
                  or           s0, a2, t1
                  bltu         s0, s3, 120f
                  nop
                  xor          a2, s11, s3
                  bge          s4, s5, 123f
                  sra          ra, ra, s6
                  sltiu        a2, s9, 1252
                  andi         s2, a3, -1857
                  or           t0, s6, a4
                  sltiu        a3, a6, 1186
                  slli         s0, sp, 26
                  sra          s2, s4, a4
                  blt          s1, s8, 136f
120:              add          a4, a3, s4
                  bgeu         t5, s4, 130f
                  and          s0, s5, s10
123:              ori          s7, a6, -803
                  lui          s8, 395184
                  blt          t3, a1, 145f
                  bne          s7, tp, 146f
                  add          s5, s3, t2
                  bne          t4, tp, 130f
                  sll          s9, t6, s10
130:              srl          a7, t2, a3
                  auipc        s7, 864402
                  sll          t6, zero, s10
                  auipc        zero, 732666
                  sltiu        s4, s3, -1474
                  beq          a1, sp, 155f
136:              add          s2, s3, t5
                  slli         t2, s4, 7
                  sll          t1, a5, gp
                  or           a5, s4, s3
                  beq          s2, t4, 158f
                  and          ra, t4, s0
                  sra          s3, t1, a7
                  beq          a0, a7, 160f
                  addi         a5, s6, -1793
145:              add          sp, a3, s6
146:              nop
                  xori         a3, t5, 527
                  ori          a5, ra, -1880
                  slt          a4, t3, s10
                  auipc        a6, 118552
                  bltu         s1, t6, 161f
                  bne          s7, a2, 167f
                  bgeu         s6, a3, 166f
                  sra          t2, tp, gp
155:              ori          s5, a1, -604
                  and          a7, a3, s0
                  srl          a3, a5, t3
158:              srl          ra, s7, s9
                  xor          sp, t0, t4
160:              lui          s0, 742698
161:              ori          tp, a1, -920
                  beq          t0, s8, 174f
                  beq          a0, t1, 175f
                  or           a1, sp, t6
                  ori          s5, t0, -663
166:              sltu         s7, s8, sp
167:              bne          s6, zero, 187f
                  slt          t1, t0, t0
                  bgeu         s11, tp, 186f
                  andi         a4, gp, 1025
                  blt          a3, s2, 173f
                  bne          t2, a6, 176f
173:              sub          s4, a3, t1
174:              auipc        s8, 392528
175:              slti         s5, gp, -1149
176:              add          a3, s9, a3
                  xor          gp, t5, t0
                  bltu         s2, t2, 193f
                  andi         t2, s0, 1331
                  slli         t6, a5, 30
                  bgeu         s7, a1, 200f
                  xor          s9, s4, a3
                  bne          s2, t4, 186f
                  srli         a7, a3, 4
                  sltu         a2, t6, a3
186:              bne          t1, a5, 206f
187:              sll          s5, s7, tp
                  xor          a3, a2, s10
                  lui          s9, 170180
                  xor          a7, zero, ra
                  sll          a5, a7, s0
                  nop
193:              ori          a0, s11, -1850
                  bne          s0, s3, 204f
                  addi         sp, tp, 143
                  lui          a2, 76801
                  slli         a0, s1, 15
                  slli         t6, a1, 17
                  bge          t4, t4, 201f
200:              bltu         s3, a4, 212f
201:              bne          tp, s7, 205f
                  srai         a0, a7, 21
                  sub          t0, a0, s7
204:              lui          t6, 410123
205:              srli         a0, s3, 8
206:              bne          s5, s1, 225f
                  andi         t1, gp, -1789
                  blt          t2, t5, 221f
                  srai         s2, t5, 5
                  srl          s10, s10, s3
                  nop
212:              sll          t1, s2, s8
                  beq          s7, s2, 233f
                  lui          s0, 302503
                  srl          s10, a6, s8
                  ori          s3, a4, -451
                  srli         a3, t3, 28
                  or           a0, a0, s1
                  sltiu        s5, t5, 1010
                  andi         s0, sp, -684
221:              sll          s5, tp, s6
                  sra          s5, t2, a2
                  blt          a4, s11, 238f
                  bne          a5, a0, 232f
225:              sltiu        a4, a6, -118
                  sra          s11, s2, gp
                  bltu         t2, s6, 229f
                  bgeu         s9, t3, 246f
229:              sltiu        t3, s11, -1672
                  srli         s0, a6, 9
                  nop
232:              beq          a4, s8, 249f
233:              bgeu         a6, a6, 247f
                  bne          s0, s5, 243f
                  or           t1, a5, s3
                  srli         t4, t4, 21
                  srl          t0, s7, a5
238:              srli         t6, s9, 23
                  srl          s0, s6, a2
                  andi         sp, t0, 1276
                  or           a0, s1, a4
                  srai         a5, t5, 11
243:              sll          a5, s7, a7
                  srli         t1, a3, 0
                  bne          s7, t2, 255f
246:              and          sp, s9, a5
247:              ori          s4, t0, -392
                  blt          a6, t3, 263f
249:              sltiu        s10, a6, 868
                  or           zero, tp, a6
                  bltu         ra, s1, 269f
                  nop
                  srl          s0, s0, tp
                  addi         tp, t3, -1517
255:              addi         a0, t5, -746
                  addi         a5, s7, -103
                  and          a6, a2, t3
                  xor          zero, s6, t4
                  lui          t1, 643290
                  xor          a5, s10, a7
                  slt          s10, t1, t3
                  sra          zero, a1, s0
263:              sll          t0, s2, gp
                  beq          a5, s4, 272f
                  sll          s5, s1, t1
                  andi         zero, s0, 286
                  ori          gp, zero, -308
                  or           a3, a3, t6
269:              xori         t2, s2, -777
                  bltu         a3, sp, 279f
                  sra          s7, a7, s8
272:              sltu         t4, t6, s10
                  srl          ra, a6, t3
                  auipc        a5, 186617
                  auipc        a7, 402716
                  lui          t6, 817580
                  nop
                  blt          a7, s2, 282f
279:              or           sp, s4, zero
                  srli         a3, s1, 25
                  xori         t2, t2, 1216
282:              slt          t1, a0, a0
                  sll          a0, t0, tp
                  srli         t3, t6, 13
                  srli         t6, sp, 29
                  auipc        a1, 686199
                  bne          a7, s7, 302f
                  nop
                  addi         tp, s6, -1026
                  bge          a6, s1, 309f
                  beq          t1, a7, 303f
                  bne          a7, gp, 300f
                  and          s2, s11, a2
                  bge          s11, t2, 302f
                  bge          a2, t4, 299f
                  nop
                  addi         t2, t5, -1364
                  bge          sp, a3, 310f
299:              bne          s10, t1, 308f
300:              nop
                  bgeu         s10, a5, 310f
302:              xori         a1, a6, -421
303:              bltu         s7, s8, 322f
                  and          a5, t0, s9
                  srai         t1, t4, 18
                  bge          s4, s7, 326f
                  bne          sp, s0, 320f
308:              nop
309:              andi         a4, a6, -1826
310:              xor          tp, s7, a7
                  sra          s9, a0, a2
                  ori          t3, a7, -453
                  bne          t3, a2, 333f
                  sll          a0, s0, s8
                  sll          s7, zero, gp
                  srl          t6, a7, s2
                  srli         tp, gp, 14
                  ori          a6, s6, 1876
                  slli         ra, tp, 18
320:              sra          a7, s10, zero
                  or           s9, a5, s9
322:              sltu         ra, a6, s2
                  slli         a0, s4, 30
                  slli         t0, s8, 13
                  xor          a7, sp, a0
326:              srai         t6, s1, 30
                  sub          a5, a0, gp
                  slt          tp, t4, t3
                  bgeu         tp, a3, 344f
                  add          s8, s7, zero
                  srai         a0, s11, 6
                  slti         sp, s1, 1681
333:              lui          a3, 792726
                  slli         ra, ra, 8
                  sltiu        sp, t1, -1350
                  and          t1, a3, tp
                  and          s5, sp, s10
                  blt          s7, zero, 352f
                  ori          a7, ra, -467
                  blt          t6, s9, 352f
                  beq          s6, t4, 359f
                  nop
                  andi         a7, ra, 344
344:              sll          zero, t0, zero
                  bgeu         a2, t1, 360f
                  addi         s8, a3, -110
                  bltu         s1, s4, 357f
                  addi         a3, s2, -1342
                  auipc        a2, 931105
                  xori         t1, s5, -1851
                  sra          a5, t6, t2
352:              or           a2, a3, s6
                  bltu         sp, s0, 356f
                  or           tp, s9, s5
                  slt          gp, s3, s6
356:              sltiu        s0, gp, 1536
357:              beq          s7, s7, 377f
                  sll          s2, tp, a6
359:              sra          t2, t2, tp
360:              lui          s9, 788735
                  and          s7, s3, s7
                  and          a0, s5, a1
                  srl          s2, t3, s6
                  beq          s10, a7, 366f
                  srli         sp, s11, 8
366:              bge          s7, sp, 376f
                  bge          ra, t0, 385f
                  srai         a1, s9, 29
                  lui          s9, 741397
                  srli         t0, a7, 6
                  srli         s8, a3, 24
                  srli         a4, t3, 17
                  ori          a6, s6, 293
                  nop
                  auipc        s3, 81202
376:              and          a7, zero, a3
377:              blt          s0, s3, 379f
                  auipc        zero, 588304
379:              srli         s2, s0, 12
                  slt          zero, zero, s10
                  ori          s11, t4, -1122
                  sll          s7, s9, zero
                  sltiu        t1, t1, -949
                  xor          a6, s10, s3
385:              andi         sp, s3, -565
                  andi         gp, s0, 1661
                  bgeu         t3, t6, 400f
                  auipc        sp, 88345
                  sltiu        t0, gp, 641
                  sltu         a4, sp, s11
                  sub          a7, ra, t1
                  srai         s2, s0, 9
                  and          a2, s10, a6
                  xori         s8, a7, 1241
                  slti         t3, zero, 266
                  sll          a1, s8, a4
                  sra          s8, a7, a0
                  slt          s3, s7, t2
                  and          sp, t0, t0
400:              sub          t1, t5, a6
                  sub          a5, a6, s11
                  xori         a1, t0, -1438
                  andi         t2, s3, -1720
                  beq          t0, a6, 406f
                  sltiu        t6, s10, 993
406:              sra          s10, s9, s11
                  bne          s11, t2, 424f
                  nop
                  sltiu        s7, t4, 1686
                  bltu         s2, t1, 426f
                  slli         s5, t1, 30
                  andi         t6, s10, -1654
                  ori          s0, zero, -1830
                  bgeu         t6, s10, 426f
                  add          s8, ra, a0
                  sub          s4, a7, t3
                  xor          s10, s9, t2
                  beq          a3, gp, 421f
                  and          s10, t1, s4
                  sra          a3, ra, t1
421:              slt          s0, s0, s7
                  nop
                  slti         s0, tp, -451
424:              ori          zero, s10, 137
                  ori          a0, a1, 58
426:              slt          sp, s9, s4
                  xori         a1, gp, 1742
                  nop
                  lw           t2, 4(t5)
                  slti         a6, gp, 1597
                  xori         t0, a4, 319
                  xori         t1, a6, -796
                  addi         t5, t5, 36
                  addi         t4, s2, -1530
556:              addi x20, x7, 0
556:              jalr x20, x20, 0
sub_9:            bne          s2, s10, sub_9_stack_p
                  sltiu        a1, gp, 1806
sub_9_stack_p:    addi         t5, t5, -56
                  xori         a5, s4, 1571
                  sll          tp, s1, t4
                  sw           t2, 4(t5)
                  slt          a1, s8, tp
                  la           s8, region_0+1305 #start riscv_load_store_rand_instr_stream_15
                  auipc        a0, 183473
                  sb           a1, -50(s8)
                  sh           a1, 59(s8)
                  ori          s7, tp, -327
                  andi         a4, t1, 540
                  lb           s4, 61(s8)
                  sltu         s7, s1, t5
                  lb           s9, -14(s8)
                  sh           s6, 193(s8)
                  sb           t2, -156(s8)
                  lbu          a6, -60(s8)
                  lbu          s9, 66(s8)
                  sltiu        tp, a3, -242
                  sub          a0, a0, s10
                  lb           s11, 81(s8)
                  lb           s4, 217(s8)
                  sb           s10, 190(s8)
                  lbu          a1, -78(s8)
                  andi         a6, a2, -1831
                  srli         sp, zero, 6
                  lhu          s7, 23(s8)
                  andi         a2, s2, -263
                  lbu          s10, 48(s8)
                  nop
                  lbu          t3, -208(s8)
                  add          a2, s3, t0
                  sb           s1, 202(s8)
                  or           ra, s6, a2
                  lh           tp, -85(s8)
                  lb           a4, 26(s8)
                  sltiu        tp, t2, 1374
                  or           s4, sp, s0
                  sb           a6, -102(s8) #end riscv_load_store_rand_instr_stream_15
                  la           s4, region_0+1513 #start riscv_load_store_rand_instr_stream_6
                  lb           a4, -2(s4)
                  lbu          s11, 9(s4)
                  lb           t3, -10(s4)
                  srl          s11, s7, t0
                  andi         s3, sp, 568
                  srl          t2, s9, tp
                  or           a2, s9, zero
                  add          s2, s8, ra
                  lb           s5, -10(s4)
                  lb           a6, -8(s4)
                  lbu          s8, 2(s4)
                  srl          s3, s2, s2
                  sub          sp, s3, t5
                  sb           sp, 12(s4)
                  auipc        a7, 373140
                  sb           s5, 12(s4)
                  or           s8, a2, a1
                  lbu          t4, 8(s4)
                  lw           t1, -9(s4)
                  sb           s11, 12(s4)
                  srl          gp, s4, a5
                  sb           t3, 13(s4)
                  and          a0, s7, s0
                  lbu          t6, -16(s4)
                  lhu          zero, 3(s4)
                  lbu          a6, 6(s4)
                  lh           t4, 5(s4)
                  lb           gp, 10(s4)
                  lb           t2, -5(s4)
                  sb           a3, -16(s4)
                  sh           s3, -11(s4)
                  lbu          sp, 8(s4)
                  lbu          s5, -8(s4)
                  sh           sp, 1(s4)
                  sb           s6, 1(s4)
                  lui          t1, 733003
                  srai         a1, tp, 9
                  lbu          a7, 7(s4) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+1662 #start riscv_load_store_rand_instr_stream_19
                  slli         a4, s2, 25
                  slt          s5, s0, a6
                  lb           a0, 1(sp)
                  sb           s10, -9(sp)
                  lb           s8, -6(sp)
                  lbu          ra, 0(sp)
                  sb           s0, 9(sp)
                  sub          a1, t0, t1
                  xor          t3, a4, s10
                  nop
                  or           s5, s9, gp
                  lw           t6, -14(sp)
                  sb           t2, -7(sp)
                  sh           s11, 10(sp)
                  or           s9, t3, tp
                  sb           s2, -7(sp)
                  sw           tp, -14(sp)
                  or           a7, ra, a4
                  srli         a3, s11, 10
                  sb           a5, -16(sp)
                  sh           a2, -4(sp)
                  sub          tp, s2, t2
                  sb           ra, 4(sp) #end riscv_load_store_rand_instr_stream_19
                  la           tp, region_1+309 #start riscv_load_store_rand_instr_stream_11
                  xori         t6, t6, -1556
                  lui          a4, 925585
                  lb           s0, 5(tp)
                  lhu          t6, 13(tp)
                  and          a0, s9, t3
                  lbu          t4, -6(tp)
                  and          zero, s7, a3
                  xori         t2, s6, 2024
                  sltu         s7, s9, s5
                  add          a4, tp, t1
                  slt          s8, sp, t1
                  slli         a3, s3, 9
                  xor          s3, t2, s0
                  sltu         t2, t3, a1
                  sltiu        a0, a3, 1840
                  or           s7, s7, sp
                  xori         zero, s3, 757
                  lh           s10, 13(tp)
                  or           a5, t5, t0
                  sb           ra, 9(tp)
                  sll          ra, s8, s3
                  slt          gp, t3, s10
                  sb           t1, 6(tp)
                  lb           t2, 2(tp)
                  slt          s9, s1, s2
                  lb           t1, 14(tp)
                  sub          gp, t2, zero
                  lui          sp, 443350
                  lb           s5, -11(tp)
                  sb           a6, -11(tp)
                  or           t4, t4, a3
                  sub          t6, gp, t4
                  sb           t1, 16(tp)
                  srai         s8, s1, 27
                  sb           a6, 16(tp)
                  xor          t4, s10, t4
                  ori          a3, s11, -751
                  and          s5, t3, s11
                  lb           s10, -10(tp)
                  lbu          s4, 15(tp)
                  lb           gp, -14(tp) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_0+1302 #start riscv_load_store_rand_instr_stream_10
                  lui          t6, 844810
                  sw           t1, -950(sp)
                  sb           s1, -709(sp)
                  lb           s10, -1073(sp)
                  or           a4, ra, a1
                  slti         a0, a4, 645
                  lb           t6, -855(sp)
                  lbu          a0, 309(sp)
                  lb           s2, -735(sp)
                  addi         a2, t4, 351
                  sra          s11, a7, s0
                  sltu         gp, sp, a6
                  lbu          a7, -1190(sp)
                  lb           t2, 589(sp)
                  lb           t3, 525(sp)
                  auipc        a2, 750331
                  xori         s11, a3, 1712
                  sb           s3, -30(sp)
                  lb           a0, 327(sp)
                  lb           s8, -603(sp)
                  add          a1, a5, a0
                  lbu          s11, -247(sp)
                  lh           ra, -976(sp)
                  sb           t6, 401(sp)
                  ori          a2, t1, 1581
                  lbu          t0, -565(sp)
                  lbu          s5, 371(sp)
                  sh           s3, 162(sp) #end riscv_load_store_rand_instr_stream_10
                  la           t4, region_1+1820 #start riscv_load_store_rand_instr_stream_3
                  lb           zero, -35(t4)
                  srli         zero, t6, 1
                  lbu          s10, 1(t4)
                  lhu          a2, -6(t4)
                  sb           s8, 15(t4)
                  lbu          a6, 10(t4)
                  slti         sp, tp, 527
                  lbu          s11, 17(t4)
                  lbu          s5, 11(t4)
                  slli         t2, a4, 0
                  lh           a0, -26(t4)
                  slti         a3, s8, 703
                  auipc        s11, 317449
                  lb           t6, -30(t4)
                  lb           a5, 21(t4)
                  lw           t3, -24(t4)
                  lbu          s0, -25(t4)
                  sb           t1, -16(t4)
                  sb           s10, 7(t4)
                  sh           s4, -30(t4)
                  add          a5, a4, a1
                  sb           a5, 13(t4)
                  sra          s10, s5, s7
                  or           t0, gp, tp
                  lb           s5, 15(t4)
                  sb           t4, 13(t4)
                  sltiu        s4, tp, 967
                  slti         a2, t4, 1722
                  lbu          ra, -34(t4)
                  sb           s0, 22(t4)
                  lh           a5, 20(t4)
                  lbu          ra, 36(t4)
                  sw           sp, -4(t4)
                  lbu          s4, -24(t4) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1544 #start riscv_load_store_rand_instr_stream_7
                  addi         a1, a3, 1169
                  sltu         t6, s0, t1
                  lb           tp, 13(sp)
                  nop
                  lbu          t4, -59(sp)
                  srai         a7, a6, 16
                  srli         t3, a6, 8
                  lhu          gp, 32(sp)
                  lbu          tp, -18(sp)
                  lbu          s10, 28(sp)
                  and          s7, s1, t0
                  lui          t6, 605429
                  sb           a7, -25(sp)
                  sltu         a5, s1, s9
                  lb           s10, -9(sp)
                  auipc        tp, 826871
                  sb           s7, 46(sp)
                  xor          s7, t0, s0
                  and          s2, a6, t1
                  lb           a5, 57(sp)
                  lui          gp, 155878
                  lh           t0, -34(sp)
                  lh           t2, -48(sp)
                  lbu          s8, 25(sp)
                  add          zero, zero, t1
                  andi         a4, s4, 1743
                  sub          a2, a1, sp
                  lb           a2, -55(sp)
                  srl          s3, a6, s8
                  sw           a3, 60(sp)
                  add          t0, a5, zero
                  slli         s4, s11, 3
                  sltiu        t2, a4, -1853
                  lh           s7, 22(sp)
                  xori         zero, a1, 1714
                  lui          s5, 939277
                  sll          t4, s1, t6
                  lw           t2, -56(sp)
                  nop
                  lhu          s7, -58(sp)
                  ori          s3, a4, 251
                  lb           s11, 25(sp)
                  srl          t6, t1, gp
                  lb           a1, 22(sp)
                  slli         s0, s6, 26
                  sltiu        t4, a1, 347
                  lbu          a0, 17(sp)
                  andi         s7, sp, 1323
                  lb           s10, -63(sp)
                  sb           t4, 51(sp) #end riscv_load_store_rand_instr_stream_7
                  la           s0, region_1+611 #start riscv_load_store_rand_instr_stream_13
                  sb           s7, 3(s0)
                  sb           a5, 12(s0)
                  lbu          s4, 10(s0)
                  lbu          a1, -15(s0)
                  lb           ra, 3(s0)
                  sub          a5, zero, s6
                  auipc        s8, 143959
                  lbu          zero, -4(s0)
                  slt          s4, sp, s11
                  sb           s10, -3(s0)
                  sub          t4, a7, s0
                  lb           a5, 3(s0)
                  slt          t0, zero, t1
                  lbu          ra, -12(s0)
                  slt          s11, t1, t5
                  lb           a3, 0(s0)
                  sb           gp, 12(s0)
                  lb           s9, 14(s0)
                  sb           s6, 8(s0)
                  srli         tp, a4, 11
                  sb           t3, -10(s0)
                  srl          s11, t5, a5
                  sb           s4, 6(s0)
                  srli         sp, a4, 7
                  auipc        s3, 1031697
                  auipc        s10, 494967
                  sb           a1, -6(s0)
                  andi         s11, a0, -1533
                  lb           tp, 7(s0)
                  sra          s5, t2, zero
                  sb           t1, 10(s0)
                  andi         s4, a0, -115
                  slt          a5, t0, s11
                  add          s7, a6, s11
                  or           s11, a0, t3
                  xor          t0, a2, t5
                  lb           s11, 9(s0)
                  sltiu        tp, gp, 1151
                  sltiu        t1, s0, 1672
                  lb           s7, 12(s0)
                  lb           t0, -16(s0)
                  lbu          s9, 11(s0)
                  sll          a5, s11, s2
                  sh           ra, 11(s0)
                  lb           tp, -3(s0)
                  lb           tp, 6(s0)
                  lbu          s8, 4(s0)
                  slt          a4, s6, s0
                  and          s11, a1, a0
                  ori          t0, a3, -1178
                  lb           a3, -16(s0)
                  lb           zero, 12(s0)
                  srai         s8, s11, 11
                  lhu          sp, -1(s0)
                  lb           s2, -14(s0) #end riscv_load_store_rand_instr_stream_13
                  la           s10, region_1+866 #start riscv_load_store_rand_instr_stream_18
                  lb           a2, -37(s10)
                  sw           t3, 390(s10)
                  lw           a0, 318(s10)
                  lbu          t0, 63(s10)
                  sb           a6, -451(s10)
                  add          a6, s5, s4
                  slti         gp, t3, -854
                  sub          s7, t1, t3
                  srai         a6, s4, 29
                  lb           t0, 709(s10)
                  xor          a6, s4, s6
                  lb           tp, 961(s10)
                  lh           s2, -494(s10)
                  lb           s5, -263(s10)
                  sb           sp, 592(s10)
                  lbu          s7, 547(s10)
                  lbu          a7, -759(s10)
                  andi         a1, t3, 199
                  sra          s9, sp, s5
                  lbu          t4, -77(s10)
                  sra          s3, t2, ra
                  xor          t1, a1, a2
                  sb           s5, -538(s10)
                  sh           t5, 920(s10)
                  slli         t4, t1, 4
                  sh           t3, -560(s10)
                  lbu          s2, -479(s10)
                  srl          t3, s0, s11
                  srai         s8, s8, 5
                  lui          sp, 432707
                  srli         s3, sp, 7
                  srl          s2, s7, a2
                  sltu         s9, t1, t6
                  sb           s1, 215(s10)
                  lb           s5, 743(s10)
                  sw           a7, 930(s10)
                  sh           s2, 412(s10)
                  xori         a4, t5, -479
                  addi         zero, gp, -1152
                  lh           a2, 708(s10)
                  or           gp, a4, s2
                  slli         a3, t5, 28
                  lui          tp, 899359
                  or           a7, s0, t5
                  lb           s9, 813(s10)
                  lw           s0, -134(s10)
                  sb           t6, 617(s10)
                  lb           sp, -700(s10)
                  lb           a4, -617(s10)
                  lh           s2, 1012(s10)
                  srai         zero, a0, 1
                  srli         s7, a1, 20
                  lh           a0, 320(s10)
                  srl          gp, s5, s7
                  xor          a1, a3, sp
                  sub          a7, s8, s5
                  and          s2, t2, t3
                  sh           s6, -524(s10) #end riscv_load_store_rand_instr_stream_18
                  la           sp, region_0+635 #start riscv_load_store_rand_instr_stream_2
                  sltu         t3, a2, a7
                  lb           zero, 1318(sp)
                  lw           s9, 453(sp)
                  andi         gp, a1, 1261
                  lb           a4, 990(sp)
                  srli         s9, a5, 14
                  xori         t0, t0, -200
                  sb           zero, 102(sp)
                  sh           zero, 703(sp)
                  xori         a5, a6, 1530
                  xori         t2, tp, 1186
                  lb           a2, 1301(sp)
                  andi         s5, s11, 869
                  sb           a1, -458(sp)
                  nop
                  srai         a7, sp, 17
                  slli         ra, s4, 31
                  slti         s5, a6, 1518
                  lb           gp, -207(sp)
                  lb           a4, 1069(sp)
                  andi         t0, a3, -344
                  sra          gp, s10, s6
                  sh           s4, 631(sp)
                  sra          a6, a4, tp
                  and          a5, a3, s1
                  sb           s6, 65(sp)
                  sb           t2, 1266(sp)
                  lbu          t3, -273(sp)
                  srl          tp, s11, tp
                  sb           a7, -598(sp)
                  lb           s0, -598(sp)
                  sw           a1, 97(sp)
                  sw           a6, -79(sp)
                  lb           s4, 1036(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a4, region_0+1891 #start riscv_load_store_rand_instr_stream_8
                  add          s4, t5, s9
                  lhu          zero, 13(a4)
                  auipc        gp, 148032
                  srai         gp, t0, 27
                  sb           s4, -16(a4)
                  lb           a3, -16(a4)
                  lb           t4, 4(a4)
                  sltiu        s8, a1, -1889
                  lh           zero, -3(a4)
                  sb           s2, -6(a4)
                  sll          tp, t6, s10
                  auipc        t1, 926403
                  addi         s10, s8, 700
                  sub          s2, s3, s4
                  add          t1, a2, s11
                  and          s10, tp, t4
                  lbu          a5, 14(a4)
                  sltiu        s0, t0, -1278
                  sub          a3, tp, a2
                  lbu          s11, 10(a4)
                  lb           ra, -8(a4)
                  sw           a6, 9(a4)
                  lui          t2, 73235
                  lb           s2, 4(a4)
                  sb           t1, 9(a4)
                  xori         a2, t6, -245
                  add          a7, s10, s8
                  lbu          gp, -14(a4)
                  sb           t3, 12(a4)
                  slt          s8, s10, t5
                  lui          s9, 322819
                  sb           a6, -16(a4)
                  srai         s2, a1, 0
                  sll          t2, s0, s8
                  lhu          a0, 3(a4)
                  srli         a2, a4, 24
                  sb           t2, 0(a4)
                  sw           s10, -7(a4)
                  sra          s8, t3, s4
                  sb           sp, -2(a4) #end riscv_load_store_rand_instr_stream_8
                  la           t3, region_0+21 #start riscv_load_store_rand_instr_stream_12
                  lb           a5, -2(t3)
                  lhu          gp, -5(t3)
                  auipc        s8, 576083
                  lb           s2, -2(t3)
                  lb           s11, 16(t3)
                  sll          gp, zero, s8
                  lb           s0, -14(t3)
                  lhu          s5, 13(t3)
                  lui          s11, 1019706
                  sltiu        t1, a3, 1640
                  srai         tp, t1, 23
                  lbu          a2, 13(t3)
                  nop
                  addi         a2, t1, -1847
                  or           s2, sp, gp
                  lb           a3, 8(t3)
                  lbu          ra, 12(t3)
                  sll          s2, s9, t1
                  addi         gp, s10, -1266
                  auipc        zero, 186631
                  lbu          a0, 1(t3)
                  sb           t1, 2(t3)
                  lui          t1, 718161
                  sb           tp, -12(t3)
                  lhu          a7, 9(t3)
                  lb           s4, 4(t3)
                  lhu          a6, -3(t3)
                  sb           a1, 12(t3)
                  ori          s2, a3, -1676
                  sw           a5, 15(t3) #end riscv_load_store_rand_instr_stream_12
                  la           a3, region_0+335 #start riscv_load_store_rand_instr_stream_4
                  and          s10, t4, a1
                  lui          a5, 619183
                  andi         s8, s4, 1237
                  sub          a4, s0, s5
                  lbu          a6, -291(a3)
                  xori         s0, a0, 517
                  addi         t1, t3, -437
                  lb           a5, 488(a3)
                  andi         zero, s10, -746
                  lbu          t4, 78(a3)
                  andi         s7, s9, 1974
                  sb           s5, 412(a3)
                  lbu          s3, 94(a3)
                  lbu          s2, 3(a3)
                  sw           a7, 1005(a3)
                  addi         ra, t5, 464
                  sh           tp, 1067(a3)
                  slt          s5, a6, t6
                  lb           t3, 270(a3)
                  sltu         s5, t3, s10
                  slti         s4, s1, 335
                  xori         s4, t3, 1206
                  lbu          a1, 344(a3)
                  slti         tp, a3, 63
                  lbu          s3, 87(a3)
                  lbu          a7, 104(a3)
                  addi         ra, s4, -1614
                  sb           t6, 471(a3)
                  slti         a2, s5, 1839
                  lbu          a6, 1520(a3)
                  auipc        t3, 6714
                  sb           t2, 792(a3)
                  lb           t3, -309(a3)
                  lb           a4, 667(a3)
                  auipc        zero, 676028
                  lb           t6, 1199(a3)
                  xor          a0, s5, a0
                  lh           t4, 353(a3)
                  sb           sp, 1428(a3)
                  lb           s3, 199(a3)
                  sltiu        t0, a2, -1480
                  sb           sp, 1154(a3)
                  lui          ra, 503081
                  sb           a7, 1424(a3)
                  slli         a0, ra, 29
                  sll          a2, s10, ra
                  lhu          s2, 1483(a3)
                  sltiu        zero, s9, -1368
                  srli         s9, sp, 9
                  andi         s0, s4, 711
                  lb           s4, -271(a3)
                  sw           zero, 901(a3)
                  ori          t0, s9, -951
                  sb           sp, 1346(a3)
                  lbu          a0, 1410(a3) #end riscv_load_store_rand_instr_stream_4
                  la           s4, region_0+957 #start riscv_load_store_rand_instr_stream_9
                  sub          s11, t3, a1
                  srai         s2, a7, 0
                  auipc        tp, 236704
                  lbu          s8, -52(s4)
                  sb           t4, -56(s4)
                  lui          a1, 792589
                  sltiu        s0, tp, -1798
                  sra          a1, t4, s3
                  lw           a7, -45(s4)
                  sb           t2, 21(s4)
                  lbu          a5, -58(s4)
                  xori         gp, ra, 778
                  lhu          t2, 25(s4)
                  sw           a4, 39(s4)
                  lb           s7, 62(s4)
                  lh           a7, -43(s4)
                  sb           a1, 46(s4)
                  or           s5, a6, s9
                  lbu          t1, -27(s4)
                  lb           gp, 48(s4)
                  addi         ra, a4, -2009
                  sb           t2, -30(s4)
                  lb           sp, 28(s4)
                  lhu          a7, 55(s4)
                  lbu          a4, -6(s4)
                  sltiu        a1, sp, -331
                  sltu         s0, gp, t5
                  sltiu        s10, sp, -1058
                  srli         s2, s3, 0
                  lbu          gp, 38(s4)
                  lbu          a4, 26(s4)
                  lhu          s9, -55(s4)
                  lb           zero, 6(s4)
                  sltiu        s9, a4, 706
                  lbu          s7, -64(s4)
                  srai         s11, s10, 9
                  slti         s7, ra, -1146
                  lb           a5, -16(s4)
                  sb           a5, 34(s4)
                  add          t2, a0, s11
                  lb           zero, 2(s4)
                  srai         zero, a3, 0
                  lh           a1, -25(s4)
                  lbu          a4, -27(s4)
                  lbu          s10, -58(s4)
                  ori          a4, a5, -1084
                  lw           tp, 55(s4)
                  lh           a2, -25(s4)
                  sb           s1, -18(s4) #end riscv_load_store_rand_instr_stream_9
                  sltiu        t6, a3, -1450
                  bltu         s10, s6, 13f
                  sra          s2, t0, gp
                  slti         tp, t5, 441
                  auipc        a0, 288189
                  la           a1, region_1+452 #start riscv_load_store_rand_instr_stream_14
                  lh           gp, -46(a1)
                  ori          a3, t0, -1899
                  sub          a0, s11, s10
                  srl          tp, a2, s9
                  lw           s0, 32(a1)
                  sra          s5, t6, t1
                  lbu          t2, 19(a1)
                  sub          zero, tp, a5
                  srai         a5, t3, 7
                  xor          a7, a4, t2
                  lhu          s8, 58(a1)
                  lhu          tp, -58(a1)
                  xori         a3, s7, -1434
                  lhu          gp, -42(a1)
                  addi         t3, a1, -248
                  and          a2, t3, tp
                  lbu          s5, 57(a1)
                  xori         s11, t4, 860
                  sw           a1, -40(a1)
                  and          a0, s2, s6
                  sh           s10, -8(a1)
                  slt          sp, s10, a2
                  nop
                  sll          sp, a3, t3
                  lh           tp, -22(a1)
                  sw           s11, -36(a1)
                  slli         t6, a7, 8
                  lb           tp, 25(a1)
                  sb           a5, -64(a1)
                  lb           sp, -27(a1)
                  sb           gp, 60(a1)
                  lhu          tp, -8(a1)
                  slt          t1, s7, t2
                  sll          a5, gp, s6
                  addi         a4, s2, -852
                  lhu          s8, -50(a1)
                  addi         s7, a3, -995
                  lb           a4, 53(a1)
                  lui          t2, 830162
                  lbu          s11, 42(a1)
                  sb           a2, 61(a1)
                  slt          a4, s2, a4
                  sb           t0, 11(a1)
                  lui          ra, 42539
                  xori         t0, t4, -977
                  sb           s11, -33(a1)
                  lbu          s4, 63(a1)
                  lbu          s7, 63(a1)
                  slti         s0, t0, -48
                  sh           sp, 10(a1)
                  auipc        t1, 141188
                  sb           s10, 55(a1)
                  lh           s2, -30(a1)
                  nop
                  addi         s3, tp, 147
                  lbu          a4, 38(a1)
                  lb           t6, 63(a1) #end riscv_load_store_rand_instr_stream_14
                  bne          s7, s9, 12f
                  slti         s10, t6, 1554
                  xori         s11, a4, 286
                  xori         a0, t3, 869
                  xor          t3, s9, gp
                  sra          s8, a7, t3
                  bltu         a6, tp, 13f
12:               beq          t5, s6, 32f
13:               and          a3, ra, a4
                  add          t4, a7, a0
                  auipc        s2, 84331
                  sub          s10, a2, s3
                  add          ra, gp, s0
                  bgeu         s11, a6, 27f
                  ori          sp, s6, -333
                  srl          s10, t0, t2
                  addi         a4, a7, 86
                  bge          t2, a5, 36f
                  slli         sp, a0, 10
                  slli         s10, s2, 29
                  sltu         s5, s3, t4
                  blt          a7, a7, 38f
27:               or           tp, s9, t4
                  bge          t5, a0, 42f
                  sra          a6, sp, s11
                  nop
                  add          a0, s4, a5
32:               sltu         s11, s0, sp
                  srl          t3, gp, s2
                  ori          s5, s6, 714
                  srai         t0, s8, 26
36:               beq          tp, a4, 43f
                  sltiu        tp, s9, 1136
38:               ori          t4, s2, 459
                  slli         a0, gp, 0
                  srl          a6, a0, t4
                  blt          t1, sp, 49f
42:               srli         a0, a6, 18
43:               srai         s9, t6, 30
                  sltiu        s8, s2, -1991
                  nop
                  slt          ra, s5, s9
                  lui          s11, 89834
                  srli         a0, ra, 2
49:               xori         zero, t3, -235
                  bne          a3, t2, 56f
                  nop
                  sub          a7, s6, zero
                  andi         s11, gp, 517
                  srai         gp, s6, 4
                  slli         t3, t5, 31
56:               sra          a6, a4, s5
                  blt          a2, s11, 69f
                  slli         gp, t5, 13
                  sub          t4, t6, ra
                  nop
                  and          a3, t5, s5
                  slti         a5, s4, -7
                  beq          a1, t4, 67f
                  sub          gp, t1, t2
                  nop
                  bltu         s6, a3, 79f
67:               blt          t6, a4, 72f
                  sltiu        ra, a2, 1011
69:               bgeu         t4, s11, 82f
                  beq          t6, zero, 89f
                  slli         a3, s9, 1
72:               slt          s2, s0, sp
                  beq          t1, a7, 88f
                  nop
                  bgeu         t3, s0, 95f
                  and          gp, tp, a4
                  blt          s5, t2, 83f
                  srli         t6, s1, 7
79:               slli         a6, s3, 23
                  srl          gp, t3, t4
                  lui          a6, 989753
82:               bne          s10, t5, 86f
83:               xori         zero, s3, 706
                  bltu         zero, s11, 102f
                  add          s8, t2, tp
86:               bgeu         t4, s6, 96f
                  andi         s5, t4, -1230
88:               and          a2, s0, s7
89:               auipc        t2, 913910
                  bgeu         a1, t6, 99f
                  nop
                  bge          a2, t0, 101f
                  beq          t2, t6, 101f
                  add          a0, a0, a7
95:               lui          t4, 776908
96:               and          a3, t0, t6
                  sub          s3, t2, s8
                  auipc        t6, 891422
99:               bne          t6, sp, 111f
                  srl          sp, a1, t4
101:              slti         t1, a0, 354
102:              add          t2, a5, s4
                  bne          a3, t4, 119f
                  sub          t4, t4, t6
                  or           a2, t5, s8
                  srl          t4, s0, a2
                  beq          a4, t2, 126f
                  ori          a6, s5, -1430
                  slti         t2, t5, -112
                  slli         s3, a6, 13
111:              sra          zero, s1, a5
                  slli         a3, s2, 25
                  sub          s5, t4, t1
                  slt          a0, a0, s6
                  slt          s0, s7, s10
                  andi         gp, s7, -593
                  sltiu        s7, a1, 329
                  lui          a3, 150260
119:              beq          a0, s2, 138f
                  auipc        a3, 433467
                  srli         a6, zero, 4
                  srli         t6, a0, 20
                  or           a4, gp, s1
                  bge          zero, s3, 137f
                  srl          t0, s10, a4
126:              addi         a4, t2, -146
                  andi         s0, s1, -844
                  slti         t0, t1, 1097
                  or           a1, a1, t1
                  xori         a4, t6, 4
                  sltiu        s7, s10, -1453
                  add          s5, a1, ra
                  or           t4, ra, a0
                  bltu         sp, t5, 146f
                  or           a4, t1, a3
                  or           gp, t4, s4
137:              slli         a0, s2, 19
138:              slti         a6, s7, 1094
                  sltu         s0, t5, a4
                  bge          a5, t4, 144f
                  sra          gp, t0, a0
                  ori          s0, s2, -1001
                  xori         sp, a6, 96
144:              xori         a5, s8, 1338
                  lui          gp, 371507
146:              sub          a2, a0, a3
                  xori         a2, t0, 1276
                  sub          sp, sp, s5
                  sll          s3, s4, t3
                  slli         t6, t0, 26
                  sll          t4, s7, a6
                  xori         t0, ra, -1176
                  sltiu        ra, s1, -1764
                  add          gp, s3, s4
                  blt          t6, t0, 161f
                  srli         s11, t2, 13
                  sltiu        tp, a1, 1319
                  sltu         t3, a4, a6
                  addi         t1, t1, 590
                  nop
161:              sub          s10, a5, s4
                  sltu         s8, s10, t5
                  blt          a0, s9, 183f
                  srai         s4, s8, 6
                  bltu         t0, s1, 185f
                  srl          sp, a5, gp
                  bne          t0, s7, 181f
                  blt          a2, zero, 175f
                  xor          a0, sp, s3
                  sra          a3, s5, t3
                  auipc        a0, 498212
                  srli         a1, zero, 25
                  slt          zero, sp, s11
                  bge          t2, t0, 189f
175:              xori         a1, t1, -1598
                  sltu         gp, t0, s0
                  lui          zero, 744271
                  slt          a1, t5, t4
                  bge          s10, t4, 188f
                  srai         a7, s0, 27
181:              sll          gp, t2, zero
                  and          a0, gp, s2
183:              slt          s3, s6, s10
                  bne          a4, t4, 192f
185:              add          a3, s1, s9
                  srli         a2, s4, 18
                  sra          t3, s2, tp
188:              or           t2, s11, a2
189:              sltu         ra, a5, s9
                  xori         s7, zero, 1788
                  srai         s3, zero, 10
192:              blt          zero, ra, 194f
                  addi         a2, a0, 115
194:              slti         a0, t2, -128
                  lui          s11, 427152
                  srl          s3, s3, a2
                  bltu         t0, sp, 216f
                  xor          a3, gp, t2
                  bge          t0, a3, 204f
                  addi         s8, a2, 1515
                  srai         s7, a5, 26
                  or           s7, t1, tp
                  slt          a3, s10, s0
204:              and          a2, s5, s5
                  andi         s11, t0, -774
                  slt          a6, s1, s5
                  and          ra, s5, s2
                  ori          a3, tp, -175
                  nop
                  and          a5, s11, t5
                  ori          a7, s8, 393
                  slti         t4, a6, -1316
                  sra          s2, s6, s5
                  bgeu         s6, t3, 233f
                  srai         s5, s6, 20
216:              bne          s4, t4, 220f
                  slli         a7, sp, 3
                  srl          tp, t6, s7
                  bgeu         s5, t0, 228f
220:              bge          s3, s7, 227f
                  or           t2, a0, s0
                  bgeu         s0, t4, 235f
                  add          s8, a2, a5
                  andi         t1, a7, -307
                  add          t1, t4, t1
                  add          a5, t1, zero
227:              slti         t1, a3, 320
228:              xor          a2, s1, a7
                  sub          s3, t4, s7
                  nop
                  addi         a2, a6, 1700
                  bne          a6, a4, 251f
233:              sub          a7, s5, s9
                  srli         a0, a4, 6
235:              sra          t6, tp, t1
                  slt          a7, a2, s5
                  beq          t0, tp, 246f
                  bgeu         s8, a4, 250f
                  srli         sp, s3, 24
                  and          s3, tp, t1
                  sub          s9, a3, t3
                  xor          s10, a6, t1
                  slt          a5, s1, a0
                  auipc        s5, 737912
                  bge          s9, s6, 263f
246:              auipc        t4, 557748
                  bge          t6, ra, 255f
                  srl          s3, tp, gp
                  srai         s3, a2, 0
250:              beq          s6, a5, 262f
251:              add          t2, a4, tp
                  or           s4, tp, a7
                  lui          t0, 244972
                  nop
255:              srli         s3, s6, 22
                  nop
                  ori          t3, t1, 1122
                  sub          s3, s1, s9
                  bge          t4, s8, 269f
                  slti         a0, sp, 638
                  sltiu        t4, s5, 1311
262:              srai         t4, sp, 15
263:              ori          s7, s11, 1379
                  addi         a5, a3, -1593
                  bltu         t3, t4, 281f
                  nop
                  or           a5, s4, a7
                  or           t2, s9, t6
269:              srli         s0, s9, 8
                  sub          a1, t6, s6
                  blt          t0, zero, 283f
                  sltu         tp, s6, a6
                  or           s10, t0, a6
                  or           s7, s0, tp
                  srli         gp, t1, 9
                  bltu         s0, a7, 282f
                  slt          t3, zero, t1
                  sra          s5, a1, s6
                  sltu         ra, t6, t1
                  add          t1, ra, a0
281:              blt          s9, a5, 295f
282:              addi         s11, a0, 1399
283:              or           s10, s0, s9
                  and          a7, s0, s4
                  auipc        t3, 101809
                  bne          a0, a0, 301f
                  sll          t2, t5, a1
                  bge          a0, s5, 300f
                  bgeu         s4, ra, 301f
                  add          a4, s3, t5
                  sltu         s4, ra, s4
                  auipc        gp, 234301
                  sltiu        t6, a6, 183
                  srli         gp, s1, 4
295:              srli         t0, s10, 31
                  srl          s2, a3, s0
                  sltu         s8, s10, zero
                  addi         sp, t2, 1659
                  lui          t4, 48797
300:              srli         a7, s8, 13
301:              slli         a2, a5, 30
                  sltiu        ra, t6, -1399
                  addi         a0, s7, -973
                  bgeu         s0, t4, 312f
                  nop
                  add          a2, s11, a4
                  srl          s0, s1, s5
                  sub          a7, t4, a4
                  sub          a6, s7, s9
                  auipc        t6, 953959
                  bne          a2, tp, 321f
312:              sub          s4, a2, s11
                  and          t0, t0, t0
                  slti         t4, t0, -1373
                  xor          a5, a6, s4
                  beq          a1, a1, 325f
                  sltiu        t3, s6, -86
                  andi         a1, s5, -928
                  slli         t2, a0, 2
                  srl          t0, s2, s4
321:              andi         ra, s4, -1484
                  bge          t5, s2, 341f
                  or           s10, t1, t5
                  sll          s11, gp, s10
325:              bne          a0, t1, 333f
                  beq          s11, s3, 344f
                  ori          zero, zero, -1376
                  and          a3, s6, s0
                  beq          s7, ra, 334f
                  bltu         a1, s2, 343f
                  or           s3, a7, s4
                  srl          sp, s3, gp
333:              sll          s8, s7, s8
334:              xori         s7, a1, 477
                  nop
                  xor          a0, t4, a3
                  xor          a3, s4, s9
                  or           t2, tp, s11
                  blt          s5, a2, 353f
                  xor          gp, zero, gp
341:              srl          sp, s9, s1
                  srli         gp, s3, 14
343:              add          a7, t6, t3
344:              lui          s3, 91536
                  xor          s9, t2, a1
                  xori         a6, a0, -373
                  ori          s2, a4, -431
                  ori          s11, s0, 1063
                  bgeu         a0, s10, 355f
                  nop
                  slli         s2, sp, 1
                  bge          tp, a5, 371f
353:              or           tp, t5, s6
                  xori         t3, t4, -1256
355:              xor          tp, sp, a2
                  sra          t2, t1, s5
                  ori          s4, t5, 2046
                  sub          a4, s9, s4
                  blt          s10, s8, 378f
                  andi         a4, ra, -1618
                  srli         a7, a5, 18
                  and          gp, a1, t6
                  xori         tp, t1, -1682
                  slli         s5, a5, 2
                  sll          a3, s8, t3
                  sll          a4, a0, tp
                  or           s4, a0, s6
                  auipc        zero, 56661
                  bgeu         gp, a3, 381f
                  bne          s6, a7, 379f
371:              bge          s6, s1, 373f
                  addi         s4, s10, -192
373:              srli         s7, a2, 16
                  add          t1, s1, s5
                  andi         s10, t6, -1811
                  slt          s10, t2, s4
                  bltu         t5, s10, 386f
378:              nop
379:              sltu         s3, s8, s5
                  lui          a6, 530794
381:              beq          t1, s1, 385f
                  srli         a4, s3, 22
                  srli         s7, t5, 25
                  lui          a0, 382476
385:              bne          s7, a7, 398f
386:              bgeu         gp, t5, 400f
                  and          a4, zero, s7
                  bne          tp, s6, 394f
                  ori          s7, ra, 102
                  add          t6, t5, ra
                  blt          s0, a1, 407f
                  bge          t1, gp, 412f
                  srli         t1, a6, 7
394:              slti         s3, s2, -1204
                  xor          s9, s1, s9
                  blt          t3, s11, 400f
                  sra          tp, s0, s1
398:              xori         s2, s9, 1375
                  sub          t6, a2, s2
400:              blt          s8, a4, 420f
                  sltu         s2, s1, a3
                  blt          s5, s5, 409f
                  xor          s5, a3, s2
                  xori         a1, a0, 201
                  or           s4, t4, sp
                  blt          t2, s8, 418f
407:              srli         gp, a2, 24
                  beq          s11, s7, 415f
409:              nop
                  beq          sp, sp, 414f
                  xor          s0, a1, t4
412:              xor          gp, t0, s5
                  nop
414:              auipc        s3, 833793
415:              slli         s4, a7, 16
                  bne          s2, sp, 428f
                  bltu         t5, t0, 421f
418:              slt          a1, t4, ra
                  bltu         s10, t2, 431f
420:              auipc        t2, 467207
421:              blt          t5, a6, 437f
                  nop
                  and          s11, t2, sp
                  beq          s11, a2, 433f
                  sltiu        s10, sp, 1612
                  bltu         a5, t5, 445f
                  add          ra, s0, a3
428:              sll          a5, s1, s11
                  auipc        s0, 513653
                  xori         a6, t5, 1173
431:              addi         a6, t1, 430
                  nop
433:              addi         t4, t0, -1618
                  slli         s7, gp, 3
                  and          s11, a7, t3
                  blt          t4, s8, 454f
437:              blt          a1, a3, 446f
                  blt          a0, a2, 458f
                  xor          tp, s0, a0
                  auipc        a4, 968540
                  srli         ra, a7, 9
                  sra          gp, t5, s1
                  srl          a1, gp, a3
                  lui          s11, 779388
445:              lui          sp, 939154
446:              bge          a2, s5, 460f
                  srl          t4, t5, s4
                  slli         a3, t5, 12
                  bne          s4, tp, 456f
                  slti         a0, a3, 198
                  and          s3, a5, t4
                  srl          sp, s7, s7
                  xor          t1, a5, t0
454:              sltu         s11, a4, a4
                  sltiu        a7, t3, -1675
456:              slti         s3, ra, -1294
                  addi         s11, a5, -630
458:              nop
                  slti         s9, s6, -392
460:              auipc        s9, 686035
                  srl          a3, s11, a7
                  nop
                  sra          s3, a7, s2
                  blt          a3, a7, 483f
                  bgeu         ra, t6, 479f
                  ori          a6, tp, -563
                  ori          tp, s2, 757
                  slti         a0, t1, -1451
                  addi         s7, s9, -1516
                  add          t0, s1, t6
                  ori          gp, a7, -1103
                  addi         a2, gp, -1091
                  xori         t3, sp, -858
                  nop
                  bge          a6, a6, 483f
                  andi         ra, s9, -408
                  nop
                  srl          a6, zero, t6
479:              srl          a4, a7, s8
                  sltu         s11, s7, a5
                  bge          sp, sp, 493f
                  blt          gp, s8, 494f
483:              addi         t3, s3, -102
                  sltiu        s9, t5, -1107
                  bge          s5, s2, 500f
                  sra          t6, s10, s11
                  blt          t0, sp, 500f
                  srli         a3, t0, 1
                  bne          t3, s1, 491f
                  sub          t1, ra, s4
491:              bge          a4, s9, 499f
                  bltu         a1, s7, 498f
493:              bge          a4, s9, 506f
494:              slti         a6, t2, 130
                  srl          s9, s3, t2
                  bge          s10, t0, 515f
                  bge          t2, tp, 517f
498:              lui          s11, 759138
499:              blt          s0, a0, 504f
500:              and          s0, a2, s8
                  ori          t1, gp, -120
                  bge          s2, t4, 508f
                  beq          tp, sp, 510f
504:              sub          s9, t5, t4
                  bgeu         a1, t3, 514f
506:              blt          s3, zero, 516f
                  sltiu        a3, a7, -776
508:              beq          t6, a2, 520f
                  or           t4, s8, ra
510:              andi         a5, s8, -1302
                  beq          tp, s10, 516f
                  lui          t4, 611515
                  beq          s1, s4, 521f
514:              add          s2, sp, s3
515:              xor          a1, s3, s2
516:              xor          zero, s8, t0
517:              or           a2, t2, t6
                  bgeu         s11, s11, 534f
                  or           zero, t3, a0
520:              bge          s9, a0, 535f
521:              beq          sp, t3, 523f
                  beq          sp, a0, 526f
523:              srl          a2, t5, t5
                  and          gp, s11, s1
                  sltu         s11, zero, s6
526:              bltu         s4, gp, 545f
                  lui          s10, 133681
                  bge          t1, a2, 535f
                  bltu         a3, a4, 538f
                  or           a4, s6, zero
                  or           t1, a5, s3
                  lui          zero, 989125
                  or           s9, t1, zero
534:              add          s4, s8, s5
535:              blt          gp, a5, 555f
                  add          s8, t0, a4
                  sltu         t0, t6, s8
538:              or           a0, s7, s6
                  bltu         a7, s2, 557f
                  bgeu         a4, a2, 544f
                  srli         s9, zero, 17
                  bgeu         s10, a7, 548f
                  blt          s9, t2, 553f
544:              slt          s9, s0, t5
545:              blt          t0, s6, 554f
                  nop
                  addi         a4, a2, 472
548:              slt          sp, zero, a2
                  auipc        gp, 815280
                  bne          zero, s0, 562f
                  ori          a1, s7, 118
                  la           t1, region_1+799 #start riscv_load_store_rand_instr_stream_1
                  or           a1, s7, a1
                  slti         t2, s0, 1724
                  lhu          a3, -159(t1)
                  lw           ra, 49(t1)
                  lbu          gp, 20(t1)
                  lb           a4, 94(t1)
                  srli         a1, a3, 19
                  sb           t2, 7(t1)
                  lbu          s0, 34(t1)
                  sub          a4, s5, a5
                  srli         s5, a5, 6
                  slt          sp, a7, s0
                  lbu          a1, -178(t1)
                  addi         t3, s1, -476
                  sh           tp, 177(t1)
                  lbu          t6, 186(t1)
                  sw           s3, -203(t1)
                  xor          ra, a5, a7
                  lb           a1, 192(t1)
                  nop
                  sh           a5, -23(t1)
                  lhu          zero, -255(t1)
                  ori          s7, t3, -684
                  lbu          a2, 108(t1)
                  add          t3, a3, a5
                  sltu         sp, a6, zero
                  sll          a0, t4, a4
                  sh           s6, 11(t1)
                  slli         s4, zero, 16
                  sll          s11, t5, t2
                  andi         ra, s7, 290
                  lui          a0, 457565
                  sh           a0, 21(t1)
                  lui          tp, 649521
                  sb           t0, -161(t1)
                  nop
                  sb           a0, 160(t1)
                  sltiu        a6, s3, 733
                  lbu          s4, 134(t1)
                  lb           a2, -2(t1)
                  lw           a2, 161(t1)
                  lbu          t2, -175(t1)
                  lb           a5, 106(t1)
                  sb           t3, 173(t1)
                  andi         a0, s1, -339
                  lb           a2, 192(t1)
                  ori          tp, s7, -66
                  sb           s9, 252(t1)
                  lb           t4, -161(t1)
                  lb           a1, -216(t1) #end riscv_load_store_rand_instr_stream_1
                  sub          s8, s4, ra
553:              bne          s0, s6, 562f
554:              srai         t4, s0, 20
555:              bge          t1, zero, 562f
                  ori          s9, a5, 2047
557:              ori          sp, a6, -83
                  slt          t2, t1, t4
                  bltu         t0, gp, 579f
                  addi         t3, a3, 138
                  nop
562:              and          a6, a0, a7
                  sltiu        gp, t1, 1715
                  andi         a1, a2, 350
                  nop
                  bge          tp, s4, 578f
                  or           a0, a5, t1
                  bgeu         s4, a2, 581f
                  slti         s5, s8, 72
                  sltu         t2, t1, t5
                  lui          t6, 657036
                  xori         zero, s2, -1595
                  slli         s10, gp, 27
                  xori         t1, t1, -827
                  slt          zero, s1, tp
                  slt          ra, s10, gp
                  blt          t2, a1, 596f
578:              bne          t1, a5, 584f
579:              andi         s11, gp, -1664
                  ori          s3, t2, -879
581:              nop
                  add          s7, s8, s11
                  auipc        s2, 174640
584:              bgeu         s10, s9, 598f
                  xor          a5, a1, s3
                  sltiu        s7, a1, 861
                  slli         tp, s7, 19
                  srli         t3, a3, 10
                  add          s8, t6, t0
                  slti         a4, zero, 491
                  beq          a5, a4, 599f
                  addi         tp, a2, 1428
                  slti         t2, a5, 650
                  slti         t3, tp, 1189
                  bgeu         a6, s1, 614f
596:              nop
                  and          a2, s5, s2
598:              srai         a7, s8, 24
599:              auipc        a3, 438485
                  slt          t1, t4, t6
                  auipc        s0, 737917
                  bne          a0, a3, 614f
                  srai         a3, t2, 31
                  bge          a0, t6, 618f
                  srai         ra, a7, 7
                  bge          t3, t1, 619f
                  xori         t2, zero, -1128
                  bgeu         s1, a2, 621f
                  srli         zero, a2, 21
                  sra          s5, t5, s4
                  auipc        s8, 302099
                  sltiu        t0, s0, -759
                  sub          a4, s6, s9
614:              addi         t2, s10, 72
                  slti         gp, s2, 1380
                  sltu         s0, t6, zero
                  andi         t0, s11, 1063
618:              srai         s7, gp, 6
619:              blt          a4, a5, 638f
                  and          t4, s9, s0
621:              nop
                  sll          t6, s7, s8
                  srl          t1, a7, s0
                  slli         sp, s1, 15
                  bne          a1, a3, 645f
                  srli         t3, s11, 25
                  add          a0, sp, t0
                  add          a4, zero, t0
                  xor          t3, a1, a1
                  slli         sp, s4, 1
                  bne          s5, s0, 635f
                  and          a1, tp, a2
                  xori         a5, a2, -1867
                  or           a1, gp, tp
635:              blt          t4, a6, 654f
                  srli         tp, s2, 1
                  sltiu        s8, s2, -1424
638:              slli         s2, ra, 22
                  nop
                  bge          s8, a1, 652f
                  auipc        t1, 833420
                  blt          s5, s9, 660f
                  ori          a0, s11, 1644
                  sub          s11, s0, t6
645:              bltu         s8, a6, 651f
                  nop
                  srai         ra, t4, 3
                  sltiu        a2, a4, -20
                  srai         t0, t3, 2
                  slti         t2, t0, 172
651:              lui          gp, 68628
652:              sltu         zero, gp, s9
                  bltu         t1, t6, 661f
654:              srl          a6, s3, s11
                  bne          s7, s4, 669f
                  or           s0, t2, a4
                  lui          t3, 378966
                  or           a7, t2, gp
                  blt          s6, sp, 671f
660:              and          s5, tp, tp
661:              blt          gp, a0, 670f
                  blt          s5, a0, 671f
                  sltiu        s7, s8, -928
                  xor          t1, s7, s7
                  sub          s7, a6, a5
                  slt          a7, a0, s7
                  sra          a3, s5, t1
                  srai         s8, s2, 10
669:              sub          s9, a1, t4
670:              bne          s8, s1, 685f
671:              auipc        s7, 256029
                  andi         t3, a5, -156
                  auipc        t4, 545259
                  sltiu        tp, t3, 41
                  sub          t6, t1, a6
                  sra          s11, s8, t4
                  sra          a6, t5, gp
                  bltu         s4, s9, 694f
                  nop
                  and          s10, s2, gp
                  srli         s8, a7, 28
                  sra          a4, s8, tp
                  addi         t6, a4, 911
                  slti         s4, tp, -121
685:              bltu         t3, s1, 695f
                  srli         s11, t5, 19
                  beq          t1, s8, 701f
                  slli         a1, zero, 6
                  sll          a1, s4, sp
                  sra          t2, ra, t4
                  add          s3, a7, a6
                  bltu         ra, t6, 705f
                  lui          t0, 845715
694:              bne          t5, a6, 696f
695:              sra          t4, a4, sp
696:              addi         s11, s1, -1883
                  slli         t3, s6, 7
                  bgeu         s11, s5, 705f
                  andi         a0, a1, -1283
                  sltu         sp, s11, s10
701:              andi         s9, a6, 1026
                  lui          sp, 285738
                  sltu         a4, t6, t2
                  sltu         s8, s6, s0
705:              bne          a3, a1, 717f
                  bne          s6, s6, 725f
                  bltu         a6, ra, 716f
                  srli         t3, a1, 13
                  srli         s0, a1, 13
                  xor          a5, a2, tp
                  addi         a4, ra, -987
                  srai         a2, s7, 31
                  srai         s10, sp, 13
                  add          t1, gp, t0
                  slli         t0, t3, 21
716:              sub          a5, sp, s0
717:              add          a4, s0, sp
                  auipc        t1, 35902
                  nop
                  sltiu        a0, a7, 1964
                  andi         a7, s11, -1112
                  srl          s3, a0, s0
                  srai         a5, t1, 26
                  blt          tp, t5, 731f
725:              auipc        a2, 750205
                  xori         a7, t2, 1508
                  blt          t6, s6, 735f
                  slt          s5, gp, t1
                  bge          t6, zero, 734f
                  bne          a7, a6, 750f
731:              srl          s7, s5, s5
                  sll          s2, zero, t3
                  blt          s0, t3, 745f
734:              sub          gp, a4, s0
735:              add          a4, t6, a3
                  or           t2, ra, s9
                  srli         t3, a2, 7
                  sub          t4, s8, s6
                  sra          zero, t6, s10
                  bne          ra, a6, 744f
                  or           a3, s4, s8
                  beq          s11, sp, 748f
                  xor          gp, s0, t1
744:              bgeu         s0, a2, 764f
745:              slti         t1, s0, 519
                  nop
                  bltu         t0, t2, 759f
748:              and          s10, a3, s2
                  beq          t4, a2, 755f
750:              addi         s5, a1, -766
                  addi         s9, s11, -24
                  srai         t2, s6, 17
                  sltiu        a7, s1, -1470
                  lui          s10, 232517
755:              or           a5, s5, s5
                  sltiu        gp, s7, 140
                  beq          s4, t6, 767f
                  and          a7, sp, t3
759:              sra          s11, t1, a6
                  slti         s10, a0, 1949
                  slli         t2, s11, 11
                  srl          s8, a7, s6
                  blt          t1, a7, 775f
764:              and          a5, a5, a6
                  or           t0, s2, s7
                  ori          s2, a1, 893
767:              sra          ra, t6, ra
                  beq          s7, a4, 775f
                  slti         t2, a2, 1033
                  bltu         a3, s0, 777f
                  addi         ra, t0, 348
                  bgeu         s0, s6, 781f
                  auipc        s11, 244799
                  and          s3, t3, s1
775:              bne          a1, zero, 795f
                  srl          zero, a4, sp
777:              bgeu         a1, a1, 789f
                  bne          sp, s6, 782f
                  and          s3, s8, s1
                  ori          sp, s9, 796
781:              auipc        s9, 791419
782:              andi         t3, s2, -1662
                  bge          s6, a0, 791f
                  or           t6, s2, s9
                  beq          a0, s4, 798f
                  bge          t2, sp, 805f
                  bne          t0, a6, 793f
                  bgeu         s8, s5, 792f
789:              sltiu        t6, a0, 1555
                  sltu         s0, sp, s8
791:              srl          s9, s2, tp
792:              bge          ra, t6, 801f
793:              nop
                  sra          s2, s3, s9
795:              ori          tp, a2, -73
                  xori         gp, a1, -11
                  sltiu        s8, t0, -1646
798:              slti         zero, s3, 1502
                  sll          a3, a7, a7
                  auipc        t4, 782966
801:              beq          sp, t2, 809f
                  srl          a5, a7, tp
                  srai         s5, a5, 11
                  blt          a7, zero, 817f
805:              bge          s10, a3, 814f
                  slt          t4, tp, t3
                  lui          s9, 812081
                  nop
809:              bne          t3, s10, 825f
                  slti         t1, s11, -1202
                  addi         s2, s10, -236
                  blt          s7, s5, 817f
                  ori          s10, a0, -1342
814:              and          a6, tp, t3
                  or           s5, s0, s6
                  xor          tp, s1, ra
817:              bgeu         t5, s1, 836f
                  or           a7, zero, s8
                  blt          t5, s11, 833f
                  sltiu        zero, t0, -784
                  addi         tp, a2, -205
                  sub          s9, s4, a7
                  slti         a4, t5, -1728
                  slli         t4, t1, 27
825:              slt          a4, a5, a3
                  sll          t0, s10, s7
                  sltiu        a5, s1, -113
                  auipc        t3, 925052
                  bne          s5, a0, 848f
                  sll          t0, a0, t6
                  bge          s7, s0, 833f
                  sltiu        a1, s6, -574
833:              beq          s11, t0, 847f
                  sltu         gp, t1, t0
                  bgeu         a5, t4, 850f
836:              nop
                  srai         a3, a4, 31
                  srli         s0, s3, 23
                  sra          a0, a7, gp
                  ori          s8, s4, -1813
                  sra          gp, s0, s1
                  sub          a3, gp, t4
                  blt          a2, s6, 855f
                  addi         s10, a3, 364
                  bltu         a7, t4, 863f
                  blt          zero, tp, 864f
847:              and          a6, s7, t0
848:              xor          t3, a7, s2
                  ori          s2, a5, 1779
850:              beq          s4, ra, 859f
                  andi         t1, t4, -563
                  addi         ra, s2, 2009
                  auipc        sp, 532586
                  add          a1, gp, s4
855:              beq          a6, ra, 867f
                  slti         t0, a1, 879
                  bltu         s11, ra, 876f
                  sltu         t0, a5, a0
859:              srl          t3, s1, ra
                  add          t2, t2, s11
                  sub          gp, a3, t1
                  slti         t4, t5, -1630
863:              or           ra, t6, a6
864:              slli         s7, s3, 10
                  bgeu         t4, a2, 884f
                  or           s5, s11, s9
867:              xori         s8, s3, 1742
                  nop
                  and          s8, a6, a4
                  xor          t6, zero, t0
                  xor          t3, s9, a4
                  nop
                  bge          s3, s1, 892f
                  addi         a5, s11, -1859
                  andi         s11, s4, -1132
876:              xor          s0, ra, t1
                  auipc        tp, 291721
                  srli         s7, a2, 22
                  bge          a5, a1, 899f
                  slt          s2, zero, s6
                  and          t2, s0, s0
                  sra          s4, a4, s5
                  sll          a0, s2, t2
884:              lui          s7, 543746
                  slti         s3, s11, -355
                  sltiu        zero, a1, -1573
                  bge          zero, gp, 893f
                  beq          s8, s6, 908f
                  addi         s5, sp, -1529
                  srai         tp, t4, 8
                  add          a2, zero, tp
892:              xor          ra, a6, tp
893:              bne          s2, s7, 898f
                  bne          s9, t3, 908f
                  xor          a3, sp, sp
                  srai         s11, s9, 20
                  beq          t2, s11, 904f
898:              sltiu        a0, a2, 1199
899:              sub          a7, zero, a4
                  or           s9, a6, zero
                  slt          a7, t2, a2
                  lui          s11, 683377
                  xori         a7, s1, -723
904:              auipc        a7, 18228
                  nop
                  nop
                  slti         s11, s1, -1600
908:              sub          a7, s5, s10
                  xor          a1, s9, a5
                  slt          a4, t4, s2
                  sub          t2, t1, a0
                  ori          a6, s6, -1780
                  nop
                  bltu         a3, t4, 926f
                  lui          t3, 277054
                  sltu         a2, a0, gp
                  sra          a7, s2, s6
                  auipc        a4, 877205
                  slt          s0, s1, s1
                  sll          sp, t3, a7
                  srai         s10, s8, 6
                  nop
                  add          s10, s8, gp
                  beq          a5, t1, 934f
                  srai         sp, t2, 20
926:              bltu         s5, s6, 939f
                  andi         s4, a1, 1070
                  sra          t4, s11, s1
                  slt          s2, t6, t5
                  bgeu         tp, a1, 932f
                  add          t3, zero, s9
932:              bltu         t3, a7, 944f
                  srl          tp, t0, t0
934:              and          tp, zero, s9
                  bgeu         sp, t4, 939f
                  slt          s8, ra, a2
                  lui          gp, 21095
                  beq          t5, a7, 947f
939:              sltu         a5, s10, t4
                  auipc        t3, 391993
                  sltiu        a1, a4, -463
                  add          a3, s10, s9
                  addi         a2, t0, 1547
944:              sub          a5, s3, a6
                  lui          a6, 861684
                  bge          s4, s10, 954f
947:              blt          a4, t1, 954f
                  ori          s3, t5, -1528
                  slt          s8, t0, a6
                  ori          s3, tp, -972
                  bltu         a7, a7, 964f
                  ori          t3, t6, -560
                  and          a4, a6, zero
954:              sra          a1, t6, sp
                  lui          a1, 1010694
                  bltu         a4, s5, 960f
                  ori          a2, t0, -1300
                  sub          s4, a1, s11
                  slt          s8, s8, s10
960:              blt          s1, a4, 968f
                  sltu         s9, s0, a2
                  andi         zero, ra, -1793
                  and          s7, a4, s2
964:              xori         a1, a0, -2006
                  srai         t6, s7, 7
                  bltu         sp, a1, 975f
                  sll          tp, t1, zero
968:              auipc        a7, 175038
                  bltu         gp, a7, 975f
                  or           a6, sp, t0
                  bne          a5, t0, 986f
                  xori         s11, a0, -1285
                  beq          s6, s10, 987f
                  ori          t3, s3, -43
975:              sll          zero, s8, s0
                  xor          s5, a5, s2
                  xori         s7, a3, 1108
                  nop
                  sll          t1, tp, tp
                  add          gp, a6, t2
                  xor          s9, a3, t3
                  sltiu        a3, ra, 821
                  sltiu        s5, s3, 1386
                  bne          t6, a5, 1000f
                  and          tp, t4, a7
986:              sub          ra, a3, a0
987:              srai         s5, t0, 22
                  slti         zero, s3, -1425
                  bge          tp, s7, 1001f
                  sll          t4, s5, gp
                  bltu         t0, t5, 1009f
                  and          s7, a5, a3
                  sub          s8, a5, s2
                  bge          s2, ra, 1003f
                  sltu         s11, s9, s9
                  and          a4, a0, s3
                  bgeu         t0, s3, 1003f
                  nop
                  srl          a0, t3, zero
1000:             sll          a5, s5, s9
1001:             slti         t1, s6, 285
                  srl          a2, s1, s0
1003:             bgeu         a3, s2, 1017f
                  srl          zero, sp, sp
                  slt          a7, zero, s0
                  beq          a5, s6, 1010f
                  sra          s9, s0, s11
                  xor          t6, s11, t2
1009:             sltiu        s0, gp, 1028
1010:             srli         sp, a5, 2
                  nop
                  sra          a4, a5, t1
                  auipc        s2, 611026
                  ori          a5, a4, 491
                  bgeu         s1, s2, 1023f
                  sll          s7, a5, s10
1017:             beq          t1, s0, 1037f
                  slli         sp, a6, 1
                  sll          sp, s3, ra
                  andi         t1, s9, 691
                  beq          a6, s2, 1026f
                  bltu         s5, tp, 1035f
1023:             srai         tp, s9, 22
                  ori          ra, t3, -340
                  srai         t2, t5, 26
1026:             sll          t1, s8, s6
                  sll          a5, t5, a6
                  srli         gp, s8, 15
                  srli         s3, s11, 21
                  srli         sp, zero, 13
                  srli         s9, s3, 1
                  bge          s5, s5, 1039f
                  srli         t1, a5, 19
                  add          a7, zero, t2
1035:             sub          s2, s0, t5
                  sll          s0, zero, s11
1037:             sra          s10, a7, a5
                  lui          ra, 108759
1039:             or           a1, a3, s9
                  slti         s3, s1, -849
                  sll          t0, t1, s3
                  beq          s2, s6, 1054f
                  sltiu        a3, a7, -1652
                  sub          s7, s1, s8
                  xor          tp, a2, a5
                  sltiu        a2, a4, 1779
                  srl          t3, t6, t1
                  auipc        tp, 1038621
                  sub          s4, s6, s10
                  auipc        t0, 162687
                  srl          sp, s9, a5
                  addi         s2, t6, 1904
                  and          sp, a7, s10
1054:             xor          s7, sp, s1
                  bgeu         s4, t6, 1068f
                  blt          a6, zero, 1076f
                  sra          s7, s5, a7
                  bge          a2, a7, 1077f
                  sub          a1, t2, t2
                  sll          a3, t4, s6
                  slli         sp, t4, 31
                  addi         t6, gp, 1487
                  sltiu        sp, s5, 566
                  ori          s8, gp, -230
                  sll          a5, sp, s10
                  bne          t3, s3, 1068f
                  bltu         tp, a6, 1075f
1068:             srai         s11, ra, 28
                  sub          s9, a4, a4
                  slt          sp, t1, s3
                  xori         s7, t0, 1452
                  and          a0, s7, s3
                  srli         t6, t0, 7
                  sub          s9, t3, t0
1075:             or           s7, t2, t1
1076:             nop
1077:             add          s8, s11, t5
                  andi         t1, s0, 1106
                  bge          s11, a4, 1098f
                  ori          a4, a7, -844
                  bge          a0, t1, 1100f
                  xor          s11, s3, a2
                  sll          t6, s9, s4
                  srl          a7, t2, s0
                  auipc        s8, 30182
                  xori         a4, s0, -1943
                  auipc        s0, 75064
                  slt          gp, t5, s2
                  bltu         t6, a4, 1101f
                  bne          tp, a1, 1097f
                  or           sp, s1, t4
                  andi         ra, s2, 1395
                  srli         s11, a4, 31
                  sltu         a3, a4, gp
                  xori         s11, sp, 1119
                  blt          s11, s0, 1112f
1097:             lui          a5, 121452
1098:             nop
                  and          s5, s7, a2
1100:             sltiu        s9, s7, -1369
1101:             bltu         zero, t0, 1107f
                  add          t2, s11, s4
                  auipc        t0, 359752
                  lui          zero, 158134
                  sltu         a3, t4, s8
                  bgeu         s4, a6, 1118f
1107:             sub          t1, s3, tp
                  xori         a4, gp, 7
                  bltu         t4, a5, 1124f
                  sll          tp, s0, t0
                  srl          tp, t3, a6
1112:             slti         a7, ra, 1507
                  bgeu         s1, t0, 1122f
                  sub          s8, s0, s3
                  add          t1, s9, s9
                  sltiu        a7, a0, 1403
                  nop
1118:             addi         s2, a7, -552
                  srli         s11, s2, 8
                  srl          a1, s5, gp
                  andi         s8, a3, 604
1122:             slt          t4, a6, a6
                  slli         s2, t1, 16
1124:             bltu         s4, s1, 1133f
                  sra          s3, s2, t4
                  srli         ra, gp, 10
                  bgeu         s10, s4, 1131f
                  slli         t2, s10, 2
                  nop
                  srl          a1, a1, sp
1131:             beq          s11, s11, 1145f
                  bge          t2, t2, 1142f
1133:             sub          a1, s6, t3
                  xori         s9, a1, -393
                  bltu         s2, t3, 1147f
                  xori         s7, t6, -1455
                  slli         gp, t3, 3
                  beq          ra, s7, 1157f
                  xor          s11, s3, s7
                  sltiu        t1, a3, -475
                  xor          sp, s8, t4
1142:             bne          gp, a1, 1156f
                  bgeu         a6, s7, 1162f
                  lui          t2, 609289
1145:             bltu         s2, s9, 1163f
                  sll          t1, s11, s2
1147:             sll          s0, a7, t6
                  andi         s7, s7, 325
                  bltu         s5, s2, 1156f
                  or           s5, s1, a5
                  andi         tp, t4, -1354
                  sltu         s2, t2, s3
                  bge          s8, a6, 1157f
                  slti         t4, s4, -1744
                  srl          s11, tp, s10
1156:             ori          a5, a2, -944
1157:             blt          s1, s0, 1171f
                  or           ra, ra, gp
                  bne          s0, a7, 1174f
                  slli         a0, s5, 11
                  srl          s2, t0, t3
1162:             auipc        a3, 816286
1163:             bne          s9, s0, 1175f
                  andi         a1, a0, 1143
                  sub          a3, a1, a1
                  srai         tp, t6, 3
                  andi         a7, a1, -1228
                  srl          s9, a3, a2
                  lui          s5, 944603
                  srai         a4, t5, 27
1171:             srli         t6, s11, 19
                  addi         s7, a5, -435
                  and          s2, t6, t1
1174:             sub          a0, a2, t4
1175:             bgeu         t6, a3, 1187f
                  slli         t2, s6, 2
                  nop
                  bgeu         a0, zero, 1184f
                  nop
                  xor          ra, s9, s3
                  srl          t2, t4, s6
                  srai         ra, s7, 9
                  bltu         a0, t4, 1192f
1184:             and          a6, t5, s7
                  slt          s8, a5, s0
                  add          t1, tp, t2
1187:             slt          s4, s6, t0
                  slti         a5, s10, 1107
                  srli         t1, t2, 16
                  ori          s2, a4, -1246
                  sll          s0, s1, s8
1192:             xor          s7, a3, t4
                  bge          t5, a4, 1202f
                  ori          a2, t1, 719
                  srli         t6, zero, 28
                  bne          t5, gp, 1204f
                  xor          tp, s10, a5
                  slt          a2, t4, a3
                  auipc        a6, 606973
                  andi         a4, t4, 1120
                  sltiu        a4, t3, 1520
1202:             sltiu        zero, s3, -2019
                  srai         tp, t6, 6
1204:             bltu         t2, t0, 1223f
                  bgeu         tp, a3, 1209f
                  beq          a0, a2, 1226f
                  nop
                  slli         tp, a4, 30
1209:             blt          sp, s8, 1225f
                  add          a4, ra, t3
                  and          s9, a3, t3
                  auipc        t6, 759997
                  sub          a0, s3, s2
                  srl          zero, s1, t6
                  blt          s0, a3, 1224f
                  slti         a2, gp, 1395
                  sltu         a0, a7, t5
                  bge          a0, a0, 1224f
                  srl          a5, t6, a0
                  slt          zero, t1, s1
                  blt          s0, t3, 1229f
                  slti         s2, gp, 425
1223:             ori          sp, tp, 867
1224:             srl          gp, ra, s8
1225:             bltu         t0, t6, 1230f
1226:             addi         ra, sp, -303
                  slt          s2, s2, t1
                  slt          a1, t0, s6
1229:             blt          a7, a4, 1236f
1230:             addi         a6, t3, 100
                  bgeu         a0, s10, 1241f
                  and          a1, a3, s4
                  andi         s11, s0, -1521
                  sll          a3, t4, s3
                  sra          t3, t2, a2
1236:             or           ra, a1, s2
                  bge          s7, s7, 1250f
                  srl          s7, s8, ra
                  sltu         s3, s8, gp
                  nop
1241:             and          a0, s5, tp
                  slti         t3, t6, 1363
                  xor          t3, s9, s7
                  sll          a5, s0, s2
                  srl          s0, a7, s5
                  add          t1, s8, a2
                  lui          s11, 1036528
                  sltiu        s2, zero, 1709
                  bge          s6, t5, 1261f
1250:             xor          s11, s9, s10
                  bge          s7, a0, 1263f
                  srli         s8, a7, 10
                  bltu         t2, s9, 1255f
                  sub          a2, a5, a5
1255:             or           t2, ra, s6
                  auipc        t3, 904387
                  bge          s8, ra, 1277f
                  addi         t0, a0, -1271
                  bltu         a2, t1, 1272f
                  add          a3, zero, s3
1261:             sltu         tp, t3, a2
                  xor          ra, t3, sp
1263:             sll          ra, a7, t6
                  ori          a3, a0, 851
                  slt          s10, zero, s10
                  sub          s4, t6, a1
                  blt          a2, s4, 1286f
                  ori          s2, a6, 602
                  bge          a4, a0, 1277f
                  or           t4, sp, t2
                  andi         a7, sp, -474
1272:             xor          s3, a1, s2
                  sll          a4, a3, s10
                  srli         t0, t2, 4
                  srl          s0, a2, s7
                  xor          s9, s3, t0
1277:             nop
                  xori         s2, s9, -135
                  sll          a1, t2, a3
                  and          s9, a5, tp
                  sub          s0, s7, s8
                  xori         t2, sp, -425
                  srai         t0, s9, 10
                  srl          s10, zero, gp
                  beq          s10, s4, 1293f
1286:             nop
                  addi         sp, a3, -168
                  sub          s0, zero, a3
                  slti         tp, a3, -1354
                  sltiu        s2, t4, 1263
                  xor          a5, t1, a6
                  sll          t3, sp, t4
1293:             bgeu         sp, s10, 1306f
                  auipc        a7, 248374
                  bge          zero, a2, 1304f
                  ori          gp, s6, 1806
                  addi         a6, t1, -1652
                  ori          s4, s2, -1290
                  slt          t6, t6, t0
                  slti         a6, a1, -975
                  add          s9, a5, s3
                  xori         t6, s3, 1313
                  sub          t3, t3, s7
1304:             andi         zero, s8, -402
                  nop
1306:             srai         s5, a3, 30
                  sra          t1, s0, a2
                  slli         t3, s10, 27
                  sra          tp, s11, s0
                  add          s11, t3, a0
                  slt          s4, s4, a4
                  nop
                  bge          gp, sp, 1327f
                  bge          s8, a1, 1334f
                  slt          s7, t2, ra
                  addi         a4, a5, 1289
                  srai         a0, t4, 0
                  bltu         tp, zero, 1325f
                  andi         t0, s6, -348
                  sll          t6, zero, s9
                  bge          gp, s9, 1325f
                  beq          s3, sp, 1328f
                  sltiu        s5, ra, -2017
                  slti         a3, t1, -1436
1325:             bne          s7, a1, 1331f
                  srli         t2, s3, 10
1327:             sll          s5, a4, a3
1328:             srl          s9, a3, zero
                  srai         t6, gp, 13
                  xor          tp, t5, ra
1331:             bne          t6, t4, 1343f
                  bge          ra, a6, 1345f
                  sll          tp, a0, a5
1334:             slti         t4, a2, 1624
                  slti         a7, t5, 1481
                  sub          a5, tp, s4
                  la           sp, region_0+1354 #start riscv_load_store_rand_instr_stream_0
                  slti         s10, zero, 1486
                  srai         s7, s3, 10
                  lbu          a5, -1(sp)
                  sll          tp, t1, t0
                  lb           s9, -6(sp)
                  lb           s5, -1(sp)
                  lw           s7, 14(sp)
                  lb           s7, 4(sp)
                  srli         s8, t6, 11
                  srl          s10, s2, t5
                  auipc        s8, 670299
                  srl          s7, s0, t5
                  auipc        a3, 89750
                  sub          t4, a5, a0
                  lh           s7, 10(sp)
                  add          t2, t0, s2
                  lbu          t2, 2(sp)
                  lbu          zero, 10(sp)
                  slti         a2, t4, -1463
                  lbu          a6, -2(sp)
                  srai         s5, s4, 21
                  srl          a0, tp, t3
                  sub          a3, s7, t3
                  addi         ra, t1, 1971
                  lb           a1, 9(sp)
                  sb           a2, -13(sp)
                  srl          s2, zero, s3
                  lb           t4, 6(sp)
                  add          s10, s8, sp
                  sb           sp, 13(sp)
                  lbu          s4, -1(sp) #end riscv_load_store_rand_instr_stream_0
                  srli         s7, t0, 17
                  andi         s8, zero, 1036
                  sll          s11, a0, a7
                  add          s2, t1, a0
                  beq          s7, s9, 1343f
                  and          a1, t6, a5
1343:             sra          s7, sp, t0
                  srai         t3, zero, 9
1345:             srai         sp, s11, 27
                  slt          t6, a0, a4
                  nop
                  xori         t2, sp, 1377
                  beq          a6, a4, 1365f
                  blt          s3, s7, 1370f
                  srl          s2, s3, a2
                  beq          s4, t4, 1361f
                  xori         t2, t0, 89
                  and          a4, s10, a1
                  sub          a6, tp, t2
                  bne          a5, s0, 1370f
                  sll          sp, a1, t0
                  srai         zero, a1, 13
                  nop
                  blt          s6, t0, 1372f
1361:             xor          s11, a0, a5
                  auipc        s8, 253982
                  or           t1, a3, a6
                  lui          t6, 208773
1365:             slti         s0, ra, -387
                  blt          a1, s1, 1385f
                  lui          s5, 1008311
                  xor          t6, s0, a0
                  or           s4, t2, s5
                  la           s2, region_0+1861 #start riscv_load_store_rand_instr_stream_17
                  srli         a0, a5, 8
                  sb           t0, -10(s2)
                  lbu          a6, -3(s2)
                  andi         a7, t1, 807
                  slt          s8, s2, a1
                  xori         a7, s5, 1470
                  sra          s11, t2, a6
                  sb           s8, 8(s2)
                  lbu          s7, -16(s2)
                  and          a4, a0, s9
                  sll          gp, s1, s2
                  lbu          sp, 3(s2)
                  xor          a1, t0, t0
                  ori          t3, gp, 1917
                  sub          a5, s4, s6
                  nop
                  lhu          t0, -3(s2)
                  and          s8, a1, s1
                  andi         a4, s10, 1447
                  lhu          a3, 7(s2)
                  slli         s7, zero, 8
                  sb           a0, 2(s2)
                  lbu          s10, 14(s2)
                  lbu          s10, 7(s2)
                  andi         s4, ra, 1004
                  lb           tp, 8(s2)
                  lbu          t2, -5(s2)
                  lb           s8, 9(s2)
                  nop
                  and          a0, s0, s1
                  sb           s0, 4(s2)
                  lhu          s7, 5(s2)
                  lbu          a7, -10(s2) #end riscv_load_store_rand_instr_stream_17
1370:             sub          t6, tp, a6
                  auipc        t4, 694878
1372:             auipc        gp, 446480
                  bne          a7, a6, 1385f
                  add          a1, t3, s1
                  bne          a6, t6, 1379f
                  bne          t0, zero, 1381f
                  ori          s8, t2, -1941
                  auipc        gp, 230088
1379:             addi         t2, t3, 1691
                  or           s4, a7, a6
1381:             lui          a5, 601707
                  slli         s8, a0, 28
                  sub          s9, zero, ra
                  slti         t4, s8, 287
1385:             sub          s8, a7, a4
                  xor          s10, a0, a5
                  nop
                  blt          t6, tp, 1400f
                  slti         s11, t2, 1370
                  lui          t3, 162110
                  sltu         a2, t2, t1
                  bgeu         a5, t2, 1407f
                  and          a7, s8, t1
                  slt          a2, t2, s5
                  beq          zero, t0, 1404f
                  slli         s0, t2, 1
                  or           tp, s10, t3
                  blt          a4, s11, 1416f
                  srai         a0, t0, 19
1400:             bgeu         s9, t0, 1410f
                  nop
                  or           tp, a2, t2
                  or           a4, t3, s5
1404:             bgeu         a2, t5, 1423f
                  xori         s10, a6, 39
                  and          t2, s2, s3
1407:             sra          s8, s2, t1
                  lui          a2, 535991
                  auipc        t6, 760239
1410:             add          a7, a0, t6
                  sra          t3, gp, s4
                  beq          t3, t6, 1419f
                  sra          s2, a4, a3
                  sltiu        t4, a3, 930
                  and          t3, t2, s8
1416:             andi         a4, ra, 1838
                  add          a6, s10, t1
                  srai         s0, s3, 15
1419:             slli         t3, s11, 19
                  beq          zero, tp, 1429f
                  or           t0, t3, a7
                  xor          t3, s10, t6
1423:             bltu         s3, a1, 1429f
                  add          a5, a0, s9
                  or           s0, s8, t6
                  slt          ra, s9, s2
                  auipc        a5, 194684
                  slli         a2, a2, 3
1429:             sub          s8, t5, t4
                  sltu         zero, s8, t4
                  srai         a1, a5, 12
                  nop
                  srai         t0, zero, 6
                  blt          a6, t1, 1453f
                  and          gp, t0, sp
                  sub          a3, s7, a7
                  addi         t2, t5, 1495
                  andi         s4, t4, 1255
                  srai         s4, a2, 31
                  sll          tp, gp, s8
                  add          s11, s5, tp
                  add          a1, sp, gp
                  bgeu         t1, a6, 1447f
                  addi         zero, s5, 236
                  beq          s6, ra, 1453f
                  sra          s4, t4, t0
1447:             auipc        s5, 627864
                  sltu         s3, gp, a7
                  sltiu        a6, ra, 1143
                  blt          t2, zero, 1464f
                  auipc        sp, 642731
                  bne          t6, a3, 1472f
1453:             sltiu        a3, s6, -1458
                  sltiu        t6, t0, 933
                  addi         a0, s4, -1152
                  auipc        s5, 686520
                  slti         t1, a4, 313
                  nop
                  beq          tp, a4, 1466f
                  sltu         a7, zero, tp
                  andi         s9, s5, -507
                  ori          t0, gp, -1669
                  bgeu         t6, s0, 1475f
1464:             bge          s1, gp, 1483f
                  lui          a6, 674718
1466:             add          s4, zero, s10
                  bltu         t3, s0, 1476f
                  srli         t1, s6, 13
                  addi         sp, t5, -1020
                  bne          s0, ra, 1485f
                  slti         zero, a7, 174
1472:             sll          a7, a3, s1
                  srl          s0, t0, a7
                  ori          t0, t2, -1277
1475:             slli         t6, a6, 20
1476:             lui          a6, 429513
                  bne          t1, s8, 1493f
                  sltiu        gp, ra, -524
                  srl          s0, a3, s8
                  bne          tp, s4, 1490f
                  and          s3, s6, a4
                  and          a7, zero, gp
1483:             xor          s11, ra, s0
                  bne          a4, s5, 1496f
1485:             sub          s5, tp, tp
                  sltiu        s0, s10, -40
                  beq          ra, a1, 1489f
                  lui          s0, 638122
1489:             bge          s7, tp, 1501f
1490:             bne          t2, a5, 1503f
                  bltu         a1, s3, 1503f
                  srli         t0, t5, 15
1493:             slti         gp, s9, 970
                  srl          s0, a0, s2
                  sltu         a1, a6, t4
1496:             beq          a6, zero, 1503f
                  bge          s7, s2, 1501f
                  blt          a5, s0, 1517f
                  slt          a2, t1, a2
                  andi         t2, t1, -218
1501:             sll          t1, a6, t1
                  sll          s3, s7, s7
1503:             lui          s4, 264456
                  add          s11, s9, a5
                  blt          ra, a5, 1523f
                  srai         s5, s10, 16
                  and          ra, a6, a3
                  srli         a4, a1, 29
                  lui          s7, 1030020
                  auipc        zero, 331662
                  sltiu        t1, s10, 122
                  blt          s9, s9, 1525f
                  or           zero, s11, t4
                  srli         s5, a1, 27
                  sra          s10, ra, a3
                  beq          s9, s2, 1524f
1517:             slti         s3, s1, -1898
                  nop
                  nop
                  slti         t2, t5, 346
                  sltu         a7, s9, a0
                  slt          t0, zero, a7
1523:             slli         s2, ra, 9
1524:             srli         a6, tp, 13
1525:             srai         s0, zero, 23
                  slti         t0, s6, -760
                  xori         t1, s1, -665
                  auipc        sp, 49863
                  sub          a0, s4, ra
                  add          a0, t1, s11
                  ori          a0, s1, 2008
                  andi         a6, s0, 522
                  sltiu        a4, s4, -1972
                  or           a4, t2, s6
                  sub          s8, gp, a0
                  sltu         a6, a6, s10
                  addi         s9, s11, -960
                  srli         s3, t2, 7
                  srl          t3, a4, a5
                  slli         ra, t6, 3
                  add          t1, a6, s7
                  or           t0, s7, s7
                  xori         zero, zero, 1254
                  srli         t3, t6, 20
                  sra          t2, t0, s0
                  bgeu         a5, s0, 1566f
                  slt          s8, a7, a5
                  sra          s5, a5, s6
                  sub          a2, zero, s2
                  andi         ra, s9, 1752
                  slti         a7, s8, 720
                  bne          ra, t2, 1566f
                  slti         tp, s6, 1659
                  and          s11, a6, ra
                  xori         t3, t3, 969
                  bltu         s4, s2, 1565f
                  and          t1, s7, s6
                  sub          a6, t2, s2
                  and          a5, s5, s10
                  nop
                  srai         gp, s6, 10
                  addi         t3, s5, 929
                  or           a0, a1, s7
                  ori          s7, a2, 2016
1565:             andi         ra, s5, -277
1566:             and          t3, t4, a2
                  slli         a3, zero, 29
                  bne          s0, a1, 1573f
                  sltiu        s2, s7, -1736
                  bge          tp, s5, 1576f
                  bgeu         a0, a4, 1584f
                  and          s2, s3, s3
1573:             or           zero, t6, s2
                  srai         a0, t1, 6
                  addi         s4, t4, 596
1576:             ori          s10, s7, 407
                  bne          a6, s6, 1596f
                  sra          ra, t3, s7
                  sra          a7, t4, t5
                  and          ra, a6, a4
                  and          s9, s7, a4
                  lui          a3, 836050
                  bgeu         s11, a1, 1597f
1584:             or           s3, t4, t6
                  bne          s5, s5, 1591f
                  sub          gp, a1, zero
                  sra          s7, t4, t6
                  bltu         gp, s10, 1607f
                  or           s4, s7, a7
                  lui          s7, 883648
1591:             auipc        a7, 694235
                  bltu         t2, s3, 1599f
                  lui          a6, 27394
                  addi         zero, s3, -2044
                  bge          s6, s1, 1602f
1596:             blt          s3, sp, 1605f
1597:             xori         a4, sp, 1950
                  nop
1599:             bne          s3, t6, 1612f
                  srli         s2, s1, 0
                  andi         a3, zero, -1123
1602:             sltiu        t6, a7, -1988
                  bge          s9, t5, 1611f
                  bltu         a3, a3, 1619f
1605:             slt          s10, s6, s11
                  andi         t6, s7, 689
1607:             sltiu        s0, ra, 1840
                  nop
                  auipc        ra, 272107
                  andi         t6, gp, -1584
1611:             sltu         s3, a3, s10
1612:             bge          a2, a2, 1628f
                  ori          s3, gp, -423
                  or           a1, a3, a7
                  sll          s11, s4, s1
                  auipc        t6, 353153
                  srli         s5, s3, 11
                  bgeu         a4, s7, 1624f
1619:             xori         s5, s9, -1989
                  and          gp, s2, a2
                  bge          s9, s10, 1641f
                  beq          t3, s7, 1634f
                  slt          ra, s10, a3
1624:             sltu         s4, s0, a6
                  ori          zero, a2, -130
                  bge          a5, gp, 1630f
                  sltiu        s9, t2, -1656
1628:             or           s9, s6, a0
                  srai         sp, a2, 15
1630:             sub          s5, a0, s10
                  and          a3, a4, sp
                  auipc        a3, 804665
                  sltu         t0, t4, s4
1634:             sltu         s0, a7, a6
                  xor          sp, s7, s0
                  sltu         a7, t1, a0
                  slli         t1, s5, 9
                  bltu         s6, s7, 1647f
                  sltu         gp, t2, a3
                  slt          a4, a7, s5
1641:             bltu         s0, t2, 1661f
                  sltiu        s9, a5, 43
                  sll          s9, t4, a6
                  auipc        zero, 145804
                  xor          a7, a0, s1
                  slt          t3, s0, a3
1647:             nop
                  slti         gp, a3, -1826
                  ori          t4, t0, 1163
                  slti         s0, zero, -531
                  blt          t1, t6, 1656f
                  slli         s9, s3, 24
                  blt          a5, s8, 1662f
                  nop
                  xor          s10, s6, s5
1656:             nop
                  nop
                  sra          ra, a3, a4
                  slli         a2, s5, 24
                  sll          s9, a5, s5
1661:             slt          s5, t3, gp
1662:             srai         s0, a7, 8
                  srl          a6, t3, s6
                  ori          gp, t0, -529
                  nop
                  andi         a7, s3, -445
                  nop
                  beq          s7, tp, 1670f
                  or           s11, t4, a0
1670:             bne          s7, a4, 1689f
                  xori         t3, a2, -967
                  auipc        tp, 111507
                  srai         s0, tp, 29
                  xor          a1, a4, a4
                  ori          t2, a4, -1977
                  sltu         s4, a3, s8
                  srai         a6, a2, 13
                  addi         a7, a7, 298
                  ori          s11, t4, -1676
                  xor          ra, t0, s0
                  sub          s3, t3, t0
                  srai         s4, s10, 16
                  srli         t4, t1, 4
                  bltu         ra, t3, 1698f
                  sltu         s7, t0, a1
                  xor          s2, a6, ra
                  srai         a7, s8, 11
                  bne          t2, s3, 1692f
1689:             addi         a1, a4, -1791
                  addi         s4, a1, 513
                  srli         t1, gp, 14
1692:             sltu         a4, t4, s2
                  srl          s5, a0, a4
                  bgeu         s10, t6, 1706f
                  blt          a5, s4, 1707f
                  sub          a0, a1, t4
                  sltu         ra, a5, a3
1698:             srai         a2, t0, 29
                  nop
                  srl          sp, s4, t5
                  srai         a4, s10, 14
                  add          s2, a5, a6
                  bge          s9, gp, 1713f
                  srai         a1, s2, 14
                  srl          t6, t2, a4
1706:             add          a7, s4, t0
1707:             srli         a3, a4, 2
                  and          s2, s7, s7
                  sra          tp, s8, a4
                  sra          s4, a6, a5
                  or           s11, t3, s11
                  auipc        a2, 1037529
1713:             bge          s0, t2, 1721f
                  xor          a2, sp, a7
                  add          t6, s11, s9
                  bltu         s2, s0, 1728f
                  srli         s4, gp, 10
                  slt          t0, a7, a3
                  slli         zero, t6, 7
                  sltu         s0, a6, t2
1721:             slli         a0, a6, 10
                  nop
                  or           s9, s7, a0
                  xor          a7, gp, s10
                  srli         s5, s3, 9
                  slt          zero, a2, a0
                  auipc        s8, 758995
1728:             and          t2, s5, s10
                  srl          a3, a5, t3
                  sll          a1, s9, a5
                  and          a2, zero, zero
                  lui          a4, 268945
                  xori         s0, a5, -734
                  auipc        zero, 270339
                  auipc        a2, 412329
                  sll          a2, t4, t3
                  ori          a1, t1, 608
                  sll          a7, t1, s8
                  sra          t2, a6, s8
                  andi         t6, a6, 319
                  sra          t6, a6, s1
                  blt          t6, a3, 1760f
                  ori          s2, t0, 23
                  xori         a7, s7, 831
                  bgeu         s3, ra, 1754f
                  or           a6, tp, a7
                  srli         a0, sp, 4
                  bge          s4, s6, 1762f
                  slli         s11, s8, 9
                  xori         s4, s8, -1254
                  ori          s4, s9, 964
                  srl          sp, s3, s6
                  add          a0, a2, s8
1754:             bne          sp, a6, 1762f
                  bge          s6, a7, 1771f
                  xor          s4, s1, s11
                  bne          s3, s8, 1761f
                  or           a4, s10, s3
                  sll          tp, s5, a6
1760:             beq          s2, a3, 1764f
1761:             sub          ra, a0, a2
1762:             add          s5, a1, a3
                  auipc        gp, 639336
1764:             bne          s9, tp, 1771f
                  blt          s6, s0, 1771f
                  beq          s4, a4, 1784f
                  bge          tp, a6, 1786f
                  slli         a3, s4, 15
                  blt          s10, gp, 1774f
                  bne          s4, t4, 1778f
1771:             srli         sp, tp, 14
                  sltu         zero, s3, s7
                  blt          t0, t3, 1779f
1774:             sll          sp, s9, tp
                  addi         gp, a5, 1171
                  nop
                  andi         ra, s11, -380
1778:             bge          a2, ra, 1798f
1779:             srai         a4, t5, 21
                  sra          s3, zero, t5
                  srai         s8, s6, 17
                  sltiu        ra, s0, -1167
                  beq          s0, s2, 1797f
1784:             beq          s8, s11, 1794f
                  bge          s3, a1, 1797f
1786:             sll          s5, a2, tp
                  slli         t4, s3, 26
                  sub          t3, t5, s5
                  bne          s4, s1, 1802f
                  srl          a5, a6, sp
                  srl          s11, t4, a3
                  lui          s8, 790644
                  xori         s2, s1, 1665
1794:             bge          a4, s10, 1807f
                  sub          a1, t2, t5
                  add          s11, a5, tp
1797:             ori          s9, t5, 1419
1798:             slti         a2, s6, -862
                  bge          a1, a5, 1811f
                  bgeu         s9, a2, 1820f
                  bge          s8, t4, 1803f
1802:             addi         t3, s1, -980
1803:             bne          s10, a5, 1822f
                  addi         a3, zero, -665
                  srai         a4, s2, 20
                  nop
1807:             andi         t6, a6, -1499
                  srli         t6, s1, 4
                  slti         s2, t2, -696
                  slti         s2, s7, 1845
1811:             bge          s3, a4, 1826f
                  bne          a3, t3, 1821f
                  slt          t2, s5, a1
                  ori          s5, s0, -1760
                  lui          s9, 877476
                  beq          s4, s11, 1828f
                  sra          s10, ra, s1
                  blt          a0, s7, 1830f
                  or           t6, s0, t6
1820:             lui          t6, 357633
1821:             lui          sp, 350735
1822:             sll          ra, s2, sp
                  xori         s7, t5, 792
                  sll          t4, t4, tp
                  xor          a1, s0, s3
1826:             bgeu         s3, zero, 1833f
                  sltu         t2, t2, s0
1828:             bge          s4, s9, 1837f
                  sll          s0, a4, a2
1830:             sra          t6, sp, t3
                  addi         tp, a5, -1184
                  xori         s9, s8, -1557
1833:             ori          s5, t2, 271
                  sub          gp, s11, t3
                  addi         tp, sp, -739
                  sub          t2, s1, s3
1837:             sra          t2, a4, s1
                  sub          s5, s9, s4
                  add          t1, s5, t6
                  nop
                  srli         t4, s1, 21
                  blt          a4, ra, 1861f
                  and          s9, s9, sp
                  blt          s9, a6, 1851f
                  slli         a6, s4, 29
                  xori         s11, t1, -553
                  srli         s9, s5, 1
                  xori         a5, s0, 1898
                  xor          s7, t4, a7
                  ori          gp, s2, 1040
1851:             add          a5, s9, a0
                  sub          tp, s0, a0
                  sra          sp, tp, a7
                  xor          a0, a5, s6
                  auipc        a1, 852782
                  srl          a7, t5, a2
                  xor          s7, s0, s7
                  srli         s5, s11, 13
                  bne          sp, s1, 1866f
                  sra          s2, s4, a4
1861:             beq          t2, a5, 1866f
                  auipc        t3, 190124
                  sltu         s10, a3, tp
                  slli         ra, zero, 15
                  srli         t4, a5, 11
1866:             slt          s4, t6, s11
                  xor          t1, s0, s2
                  sltu         zero, s9, s0
                  sra          s11, a0, t0
                  or           a1, s11, s6
                  bge          s4, t3, 1886f
                  xor          a6, s3, gp
                  blt          s4, a7, 1887f
                  sra          a2, a5, s6
                  andi         s10, s11, 1758
                  xor          s7, a2, a3
                  addi         t3, t1, -98
                  slli         gp, t1, 6
                  auipc        a2, 562348
                  srai         s3, zero, 2
                  and          s0, zero, s2
                  srl          s10, zero, s10
                  la           sp, region_0+1559 #start riscv_load_store_rand_instr_stream_16
                  lbu          s4, 271(sp)
                  auipc        t3, 109308
                  lbu          a7, 346(sp)
                  srai         s2, a4, 0
                  slt          t1, sp, a1
                  xor          t6, a7, a6
                  and          s7, a0, a3
                  lb           s10, -1238(sp)
                  lb           s9, -774(sp)
                  sb           zero, 257(sp)
                  sh           s10, -117(sp)
                  sltu         a0, s0, s7
                  lbu          t2, -439(sp)
                  slli         gp, s5, 16
                  slti         t4, a7, 1659
                  lb           t2, 422(sp)
                  sub          tp, gp, s8
                  lb           gp, -538(sp)
                  srl          s8, a4, t6
                  lb           gp, -1290(sp)
                  lbu          a2, 78(sp)
                  lhu          s0, -413(sp)
                  auipc        s10, 140658
                  lbu          s7, -1118(sp)
                  sra          s5, s5, s5
                  nop
                  lb           zero, 79(sp)
                  lb           t0, -792(sp)
                  sb           a6, -407(sp)
                  sra          s10, sp, a0
                  lbu          s9, -1077(sp)
                  lb           a7, -1141(sp)
                  sltiu        t4, t4, -559
                  sra          t3, sp, a3
                  xori         s11, s0, 1849
                  lhu          t4, -147(sp)
                  lh           a7, 243(sp)
                  lbu          a1, -448(sp)
                  lhu          t6, -13(sp)
                  andi         t4, s5, 199
                  and          a2, a1, gp
                  slt          a7, s1, s4
                  sb           s3, -532(sp)
                  sb           s7, 361(sp)
                  sub          t4, t3, t5
                  lhu          ra, 169(sp)
                  lh           a2, -629(sp)
                  sh           tp, -363(sp)
                  lb           a1, -692(sp) #end riscv_load_store_rand_instr_stream_16
                  auipc        ra, 866835
                  xori         s8, a3, 999
                  lui          a0, 675417
1886:             andi         a1, a3, -1512
1887:             ori          s2, a5, 840
                  srl          s7, s9, s8
                  sra          s2, t5, ra
                  nop
                  slt          s11, a3, t1
                  xori         a1, s6, 1085
                  slli         t2, s3, 31
                  sub          a0, zero, a5
                  srai         t4, s2, 10
                  ori          s11, s2, 1204
                  sltu         a7, a2, s8
                  slli         s9, s3, 26
                  bne          t6, a6, 1907f
                  or           t2, a7, t0
                  ori          a6, s8, -1027
                  bne          a0, s5, 1918f
                  xor          s10, t2, s1
                  add          zero, a7, s5
                  sltiu        s8, s5, -2010
                  andi         s8, s8, -26
1907:             add          ra, a0, t4
                  bgeu         a5, s7, 1921f
                  slt          t2, s11, ra
                  and          s3, t5, s11
                  auipc        t3, 502480
                  srai         a3, s1, 10
                  nop
                  srli         s11, a0, 15
                  srli         s9, a0, 24
                  lui          s7, 260050
                  xor          t1, s7, a1
1918:             beq          a7, a6, 1931f
                  bgeu         t4, a0, 1928f
                  add          s7, s2, a1
1921:             sltu         ra, t6, t3
                  beq          s2, ra, 1926f
                  beq          s3, s8, 1935f
                  sra          t6, s5, t4
                  beq          s8, s8, 1934f
1926:             slt          t0, s7, s6
                  sltiu        s10, s2, -1495
1928:             sltu         tp, s4, t4
                  addi         a7, a4, -613
                  srl          a6, s2, t2
1931:             slti         a0, s5, -478
                  and          tp, s2, t3
                  xori         t2, s8, -63
1934:             sll          t3, a6, t5
1935:             sltiu        a2, t0, -247
                  addi         s7, t5, -973
                  sub          t1, t5, a0
                  sub          a7, ra, a3
                  slti         tp, s9, 102
                  slti         a1, s6, -863
                  beq          sp, t5, 1950f
                  and          tp, s2, t1
                  sltiu        s11, t5, -1628
                  slti         s0, a7, 877
                  slti         s9, a7, 765
                  or           t1, a6, s8
                  or           t6, zero, s0
                  xori         zero, s6, 49
                  bne          s8, a5, 1959f
1950:             bltu         a6, t5, 1954f
                  sltu         s2, t6, s9
                  sub          a7, zero, s5
                  slli         s9, s7, 12
1954:             sub          a1, t4, t3
                  beq          a0, t5, 1975f
                  addi         s9, t5, -490
                  ori          ra, tp, 1817
                  slli         a3, a2, 3
1959:             sub          t4, ra, ra
                  srai         s8, t3, 5
                  ori          t6, s3, 1192
                  blt          a4, s8, 1968f
                  sltu         s10, a6, a7
                  bltu         t3, t3, 1970f
                  slt          a7, s7, t2
                  srli         s2, s11, 24
                  or           zero, t2, s5
1968:             sra          t6, t4, s8
                  add          a3, sp, t6
1970:             bltu         s9, a5, 1989f
                  addi         s11, t0, 985
                  slti         t6, t0, -1643
                  add          s0, t1, s4
                  or           s9, t1, t2
1975:             sub          a3, s0, a5
                  slli         t1, a7, 27
                  beq          t4, zero, 1989f
                  addi         sp, tp, 566
                  xori         s10, t1, -941
                  xor          a5, a1, a4
                  beq          s4, a1, 2001f
                  ori          s10, s1, -597
                  srl          t0, t4, s5
                  slt          s2, s6, a6
                  sll          s2, tp, s11
                  bne          s11, ra, 1994f
                  add          t4, s3, s9
                  lui          s9, 392267
1989:             bltu         sp, sp, 2001f
                  xor          s5, s5, s9
                  add          a2, t0, s5
                  add          a5, t1, s6
                  sltu         t6, tp, s5
1994:             slti         t3, gp, 1589
                  andi         tp, a7, -1010
                  ori          t6, s10, -312
                  sub          s2, s4, t3
                  add          s0, a2, t3
                  sltu         a7, s6, s10
                  and          ra, s3, zero
2001:             blt          t0, sp, 2020f
                  or           s2, t3, t4
                  bne          zero, a1, 2022f
                  bgeu         s1, sp, 2016f
                  sltu         tp, t3, s3
                  bltu         t2, s11, 2020f
                  sub          s10, a6, t6
                  bgeu         t3, s10, 2010f
                  bltu         s3, a1, 2027f
2010:             sra          a0, s11, s7
                  or           s9, s2, s2
                  sra          s10, s11, t2
                  blt          a5, s9, 2027f
                  sltu         s5, zero, a3
                  xori         a5, t6, 920
2016:             xori         s8, ra, 507
                  xor          zero, s10, a7
                  bge          a7, s1, 2024f
                  bltu         ra, s8, 2038f
2020:             beq          sp, s0, 2032f
                  lui          s10, 143988
2022:             auipc        t1, 357958
                  sll          s5, t0, t2
2024:             sub          s10, sp, t1
                  bne          a5, gp, 2038f
                  auipc        a1, 904823
2027:             andi         s8, t5, 1668
                  blt          t1, s9, 2037f
                  ori          gp, a4, 1156
                  andi         s10, s8, 1117
                  slti         a6, t5, 1798
2032:             slti         a3, s4, 919
                  lui          s11, 5711
                  beq          a6, a6, 2038f
                  bge          a4, s9, 2051f
                  sltiu        a7, t5, -1298
2037:             nop
2038:             xor          s7, sp, s9
                  srli         s5, s8, 24
                  slti         s9, tp, -1690
                  or           t1, t3, t2
                  srai         t0, a0, 28
                  lui          s11, 1031717
                  xor          tp, s2, gp
                  bne          t5, t0, 2065f
                  srai         s10, a2, 5
                  addi         a2, a1, -746
                  add          s3, a1, t3
                  bltu         s0, t6, 2056f
                  or           s5, s10, a2
2051:             andi         a7, a4, -984
                  sub          t1, t5, a4
                  addi         t1, a2, -965
                  addi         s11, ra, 400
                  auipc        s11, 400794
2056:             sub          tp, s9, a4
                  bgeu         a5, s11, 2076f
                  xor          s3, t4, s2
                  bne          s7, a6, 2068f
                  andi         s7, t6, -116
                  xor          t6, a1, t4
                  sll          s2, t5, a7
                  bge          s1, a5, 2071f
                  bltu         s7, t4, 2078f
2065:             bgeu         s0, tp, 2077f
                  beq          s10, t3, 2072f
                  sll          sp, s6, s11
2068:             sra          t2, s3, zero
                  lui          a3, 375560
                  andi         tp, t0, 2019
2071:             add          a3, tp, sp
2072:             bne          t6, t5, 2074f
                  bge          t3, zero, 2088f
2074:             addi         s7, tp, 127
                  srl          t3, s5, s5
2076:             slt          sp, a0, t3
2077:             addi         s8, s0, -1670
2078:             sll          tp, s9, t1
                  auipc        s2, 182585
                  slli         t2, s8, 28
                  lui          a4, 704395
                  bne          gp, t1, 2086f
                  sltiu        s4, t0, 425
                  or           t1, s11, t4
                  bgeu         s10, s2, 2092f
2086:             xori         a4, ra, 1388
                  bge          a0, s11, 2099f
2088:             or           gp, sp, a6
                  sltu         s5, a1, a1
                  sltiu        a5, a2, -182
                  addi         a4, s6, 1769
2092:             auipc        ra, 187477
                  blt          sp, t0, 2102f
                  xori         sp, gp, 204
                  sra          s4, s1, s1
                  srli         t0, a1, 27
                  and          s4, t1, s10
                  bge          s6, a1, 2110f
2099:             bne          s6, ra, 2107f
                  bgeu         s0, a1, 2110f
                  xori         gp, s10, 247
2102:             andi         t1, tp, -9
                  bgeu         s10, a1, 2108f
                  sll          s5, t1, s7
                  sub          t3, s9, s6
                  xor          s7, s0, ra
2107:             slli         t4, s9, 29
2108:             slti         a7, s8, 1478
                  slti         a3, zero, -1096
2110:             xor          a6, t1, s0
                  ori          sp, t3, -1612
                  sltu         a7, s8, sp
                  xori         a2, a7, -972
                  xor          s2, a6, a0
                  beq          s5, s1, 2135f
                  or           t0, s1, zero
                  bge          t0, t4, 2130f
                  bltu         tp, a4, 2137f
                  sub          s8, a7, s11
                  sub          s7, s7, t5
                  srli         s8, sp, 24
                  slt          t4, s2, t0
                  add          s2, a5, t3
                  bne          s4, a3, 2142f
                  ori          ra, t4, 1127
                  sra          a5, a4, s11
                  ori          a2, t0, -1184
                  ori          a0, s6, -2007
                  bne          t2, sp, 2138f
2130:             bltu         s6, zero, 2143f
                  lui          s4, 162762
                  xori         tp, s9, -298
                  sub          a3, ra, t6
                  xori         s7, t4, 1715
2135:             xor          t4, a1, sp
                  sltu         a5, s10, a3
2137:             ori          s10, s11, -1341
2138:             sltiu        a3, a2, 571
                  sltiu        t3, t0, 1433
                  blt          s0, a3, 2152f
                  srl          s0, a3, a1
2142:             addi         a1, s0, 1251
2143:             and          t3, a7, a2
                  auipc        s3, 110911
                  slt          s11, s3, s2
                  srl          s3, tp, t2
                  slli         t4, s5, 15
                  or           a4, a2, a2
                  beq          gp, t1, 2155f
                  nop
                  xori         t1, a3, -243
2152:             slt          s4, gp, s4
                  la           t2, region_1+1688 #start riscv_load_store_rand_instr_stream_5
                  nop
                  lw           a3, 16(t2)
                  sb           a1, -15(t2)
                  lbu          a6, -15(t2)
                  sb           sp, -15(t2)
                  xor          a1, a4, a0
                  xori         a6, sp, 1333
                  addi         t3, a1, 1771
                  lb           s9, -1(t2)
                  sh           a2, -6(t2)
                  lb           t4, -7(t2)
                  sub          s9, a1, a2
                  andi         s11, t6, -1749
                  lbu          s0, -3(t2)
                  lb           s7, -9(t2)
                  lbu          a5, -5(t2)
                  slli         a5, s0, 10
                  srl          t1, s10, ra
                  lbu          t4, -7(t2)
                  lb           ra, 5(t2)
                  sltu         a7, a4, t4
                  nop
                  lbu          a1, -9(t2)
                  sll          s3, s5, s3
                  lui          s5, 344014
                  srli         t1, a1, 9
                  lbu          s7, 15(t2)
                  sb           s7, -13(t2)
                  xor          t6, a7, s2
                  lb           s10, -11(t2)
                  lbu          zero, 12(t2)
                  lbu          s10, -15(t2)
                  sub          a7, gp, tp
                  xor          tp, s9, a6
                  and          s3, a2, t4
                  slt          t1, s10, a2
                  lhu          tp, 8(t2)
                  auipc        s8, 130623
                  lh           gp, 10(t2)
                  xori         tp, zero, 1192
                  ori          s7, t3, 1080
                  lbu          t6, -9(t2)
                  srai         a5, t2, 21
                  sb           t5, 7(t2) #end riscv_load_store_rand_instr_stream_5
                  andi         gp, t6, 1024
                  sltiu        ra, s11, 1289
2155:             srl          t0, s7, s3
                  nop
                  lui          s4, 67802
                  auipc        zero, 567304
                  addi         t3, ra, 198
                  auipc        s0, 332261
                  srl          zero, t6, s5
                  ori          a3, t4, -764
                  slti         tp, s3, 1185
                  and          s10, a4, a4
                  and          s0, s10, a7
                  srl          tp, s10, t1
                  addi         s9, sp, 1498
                  bge          s11, a7, 2175f
                  xor          s11, a4, a6
                  srli         a5, t4, 21
                  sltiu        a4, t3, 1270
                  xor          t2, a2, gp
                  bge          s2, gp, 2192f
                  and          gp, a4, s0
2175:             slt          s7, s5, a2
                  bgeu         t0, a4, 2188f
                  srli         a7, s8, 21
                  xor          s11, s5, s4
                  sll          s4, s2, a5
                  bne          a0, t2, 2182f
                  bge          t6, a5, 2190f
2182:             ori          zero, s5, -14
                  sll          a3, t5, t0
                  bge          s7, t6, 2198f
                  sll          gp, a4, s3
                  sra          a4, ra, s2
                  sra          t0, a3, t2
2188:             bgeu         t3, sp, 2204f
                  bltu         s6, t1, 2194f
2190:             xor          s5, s5, t1
                  auipc        zero, 824775
2192:             slti         t4, s9, -1142
                  lui          s9, 521227
2194:             addi         s11, a6, -1208
                  sltiu        t4, s1, -42
                  xor          s10, a1, a0
                  slti         ra, t3, 1821
2198:             lui          t2, 124602
                  xori         sp, a2, -1043
                  srl          s0, s4, s2
                  sub          s2, s8, s1
                  bne          t5, a2, 2222f
                  auipc        t3, 966433
2204:             sltiu        zero, zero, -177
                  bne          a2, a7, 2213f
                  add          t2, t3, a5
                  srli         a5, t1, 7
                  nop
                  slli         s3, a4, 31
                  bge          a1, a4, 2217f
                  slli         a6, s7, 6
                  xori         a1, t3, -229
2213:             ori          s10, s8, 152
                  blt          s9, sp, 2226f
                  sub          zero, t1, s5
                  srli         gp, a4, 8
2217:             add          s11, t6, tp
                  auipc        gp, 601493
                  or           s3, s8, s9
                  bge          t1, t3, 2238f
                  srli         zero, t3, 25
2222:             sll          a7, sp, s6
                  sltiu        a1, t2, 854
                  bltu         a7, t2, 2243f
                  addi         s10, t5, 1203
2226:             or           zero, s8, s7
                  and          t4, t4, a7
                  xori         t1, t3, 1198
                  srl          a1, s3, a4
                  sub          a7, t1, s6
                  or           t4, a3, zero
                  sltu         a6, s9, s0
                  bgeu         t5, sp, 2252f
                  lui          t1, 741657
                  nop
                  bge          gp, s9, 2240f
                  slti         s10, s9, 346
2238:             sltiu        sp, a0, 855
                  sltiu        t3, t0, -453
2240:             addi         a0, a2, -162
                  sll          s9, a4, t1
                  slt          t4, t6, s0
2243:             add          t2, s7, s10
                  slli         s2, gp, 12
                  andi         s0, s4, 1866
                  sll          a5, s0, s5
                  beq          t6, s3, 2261f
                  xor          t0, t6, a3
                  ori          a5, s0, 15
                  and          s9, s7, s11
                  ori          t4, ra, -1681
2252:             srli         s10, a2, 18
                  andi         s0, s9, -1376
                  add          s2, s10, a4
                  slti         a5, t0, 1084
                  ori          ra, s0, -1122
                  auipc        s9, 784297
                  beq          s4, gp, 2266f
                  bge          a4, a3, 2274f
                  and          a5, a3, s0
2261:             xor          a0, a7, a5
                  bltu         t6, s1, 2282f
                  slli         t4, t5, 27
                  bne          s6, a7, 2273f
                  ori          zero, s6, -1178
2266:             beq          sp, s11, 2279f
                  sltu         s3, t6, s11
                  beq          s5, gp, 2278f
                  beq          gp, s10, 2275f
                  srl          a6, a5, a4
                  add          sp, t2, s11
                  sra          tp, s4, a2
2273:             srl          a1, ra, s9
2274:             sltiu        s2, tp, -1093
2275:             slti         s7, s0, 1208
                  bltu         gp, a5, 2280f
                  bge          gp, t2, 2289f
2278:             add          sp, a5, s7
2279:             and          t4, zero, s8
2280:             srli         a2, ra, 10
                  ori          s7, sp, 843
2282:             slli         a3, t3, 10
                  bltu         s10, a6, 2303f
                  blt          s0, s9, 2303f
                  add          a1, s2, tp
                  bne          t0, s4, 2298f
                  sltu         s10, a0, s0
                  xor          sp, s8, a4
2289:             slt          a3, s1, t2
                  addi         t4, s3, 257
                  sra          t4, t0, t1
                  srai         s9, tp, 22
                  bge          s3, a6, 2305f
                  slli         a4, s11, 22
                  sll          s8, s1, s4
                  srai         t1, t6, 25
                  sra          t3, s6, t1
2298:             bltu         t4, gp, 2308f
                  lui          a1, 650111
                  xor          a4, t2, gp
                  or           a5, t1, a5
                  bltu         s8, tp, 2306f
2303:             xori         ra, t1, -301
                  xor          a6, tp, s7
2305:             auipc        t0, 34852
2306:             and          s4, s11, s8
                  sltiu        t1, a0, 1420
2308:             beq          t6, gp, 2327f
                  srli         s7, a0, 12
                  srli         s3, s11, 4
                  slt          tp, t1, t1
                  bge          a2, s10, 2331f
                  sltu         t0, t5, t2
                  sltiu        s3, s3, -1428
                  addi         a3, t6, -480
                  sub          a1, a4, a0
                  bgeu         t2, s2, 2331f
                  blt          s2, t2, 2327f
                  sltu         t3, a0, a2
                  bltu         s8, t2, 2326f
                  sltiu        s4, s0, -1175
                  bge          a1, a0, 2330f
                  sltu         a0, t2, t4
                  blt          s9, s2, 2337f
                  slt          sp, t5, s6
2326:             srli         t1, tp, 11
2327:             or           a0, a0, t0
                  sll          tp, s3, zero
                  beq          s5, t0, 2336f
2330:             sltu         a2, a0, a5
2331:             ori          a5, tp, 737
                  sltiu        a4, a7, 1497
                  bne          s5, s3, 2342f
                  xor          s2, a4, a7
                  nop
2336:             srl          tp, s1, a4
2337:             xor          s9, ra, s9
                  auipc        a1, 678754
                  slt          s11, a5, a3
                  bltu         a4, s3, 2342f
                  lui          t0, 675768
2342:             bge          s4, a6, 2358f
                  slt          t2, s11, ra
                  bltu         t0, s8, 2353f
                  sra          tp, s10, sp
                  sltu         t6, s1, a2
                  xor          s7, a4, s11
                  nop
                  sra          sp, s11, s7
                  or           tp, s3, gp
                  sll          ra, s5, a7
                  bltu         t0, s10, 2358f
2353:             auipc        sp, 455222
                  nop
                  bgeu         t2, a1, 2368f
                  xor          s9, ra, s1
                  sub          s0, a4, t1
2358:             bgeu         t6, a3, 2366f
                  bgeu         tp, s9, 2371f
                  xori         s5, t3, 353
                  sltiu        a1, sp, -971
                  slti         s3, s2, -398
                  sll          s10, t1, s7
                  bltu         t1, a1, 2369f
                  add          s7, ra, s6
2366:             slli         a1, s1, 6
                  slt          s2, t6, t1
2368:             bgeu         t6, t6, 2388f
2369:             bne          s8, t6, 2384f
                  srai         zero, t2, 21
2371:             sll          a5, s4, a4
                  xori         s2, ra, -570
                  ori          a6, s5, 1451
                  or           t3, s5, s2
                  srli         a6, s6, 13
                  sltu         t2, s4, a3
                  sra          s9, t1, t1
                  sll          t6, t1, sp
                  sll          s2, t0, s2
                  lui          tp, 625287
                  slt          s9, s6, s9
                  xori         tp, t1, 1996
                  slti         a6, s8, -286
2384:             sltiu        s0, sp, 1848
                  addi         s0, s11, 1083
                  lui          a6, 585442
                  bgeu         sp, s7, 2405f
2388:             sll          a7, sp, s2
                  beq          s0, t2, 2393f
                  andi         a5, a6, -1665
                  sll          a0, s8, s1
                  slli         tp, a3, 12
2393:             sll          a0, t2, s4
                  xor          s8, s4, a7
                  nop
                  ori          t4, tp, -1451
                  auipc        sp, 541850
                  addi         gp, s7, -1746
                  sra          a2, t6, a7
                  ori          sp, s11, -351
                  ori          t2, s6, 1372
                  slti         gp, gp, -1610
                  ori          sp, a6, 1335
                  slli         a3, t6, 18
2405:             srai         a5, zero, 8
                  and          a3, t1, a3
                  blt          s10, s1, 2414f
                  sltu         s2, zero, t0
                  addi         zero, t1, 512
                  or           a2, t6, sp
                  ori          t6, a3, -175
                  blt          a1, t1, 2424f
                  sub          ra, s8, s2
2414:             or           a7, t2, s8
                  beq          t3, gp, 2429f
                  bne          a5, a4, 2426f
                  or           a7, s3, s2
                  sll          a0, t4, s7
                  lui          s11, 116078
                  srl          a3, s2, a0
                  slti         t1, t3, 1396
                  ori          sp, t3, 936
                  srl          a0, t2, s9
2424:             sra          s11, s0, a0
                  sltiu        tp, ra, -1335
2426:             addi         a3, s5, -1873
                  auipc        a6, 685145
                  blt          t4, a4, 2434f
2429:             slli         a3, a7, 27
                  sll          a7, ra, t6
                  lui          a3, 455838
                  bltu         s2, a3, 2445f
                  sltiu        a6, a1, 1300
2434:             sra          t3, a3, a0
                  bltu         s3, t2, 2454f
                  nop
                  sll          sp, ra, s2
                  xor          a1, gp, a7
                  bge          s5, s6, 2457f
                  lui          s3, 666124
                  auipc        a5, 67109
                  bne          t6, a4, 2462f
                  xor          t4, gp, s8
                  sltu         s2, a6, s8
2445:             xor          t2, sp, s9
                  sltiu        s4, t3, -394
                  blt          t0, s6, 2466f
                  and          s5, s4, s10
                  bgeu         a4, s2, 2453f
                  or           s2, a5, t6
                  bge          a4, a5, 2458f
                  bltu         t0, a1, 2471f
2453:             bgeu         s3, t4, 2462f
2454:             andi         a7, zero, -692
                  srl          a7, s8, t5
                  bltu         tp, s1, 2463f
2457:             sra          t6, s4, s10
2458:             xor          tp, a0, a2
                  sra          zero, s1, gp
                  ori          s11, s6, -248
                  and          a3, gp, t6
2462:             sll          sp, sp, s1
2463:             sra          t2, t2, s1
                  slti         tp, t5, 1188
                  bge          gp, t4, 2470f
2466:             add          s0, a1, s1
                  sub          a5, s7, sp
                  slt          a6, sp, s2
                  bge          s7, a7, 2475f
2470:             addi         s2, s4, -1603
2471:             bgeu         t5, s3, 2485f
                  slli         a6, gp, 25
                  srl          t6, a0, a2
                  srai         s0, a4, 1
2475:             add          a5, s9, a3
                  addi         s5, zero, -312
                  blt          s6, s3, 2489f
                  blt          s2, a2, 2482f
                  slli         s5, a7, 13
                  bne          s2, s11, 2492f
                  xor          a6, s8, s3
2482:             bltu         t5, gp, 2494f
                  slli         s7, gp, 26
                  xori         tp, a4, 1864
2485:             addi         s8, s4, -589
                  slt          s7, s3, s8
                  bge          gp, s3, 2500f
                  andi         s11, a5, 860
2489:             bgeu         t2, s1, 2497f
                  addi         s5, a3, -1572
                  add          s11, s10, a4
2492:             bne          s5, t4, 2501f
                  andi         gp, t5, 330
2494:             slli         zero, s0, 24
                  lui          s2, 530774
                  and          gp, s9, a5
2497:             xori         zero, a2, 655
                  ori          s7, t4, 569
                  sub          tp, s5, a7
2500:             srli         s4, s4, 15
2501:             bgeu         a7, s6, 2515f
                  or           s8, s8, t0
                  nop
                  or           s8, a1, a4
                  addi         s0, a6, -1775
                  sra          a7, s0, gp
                  xori         a5, a0, 23
                  auipc        s3, 671753
                  lui          a6, 609800
                  sltiu        s8, t4, 719
                  sra          s7, ra, t6
                  srl          t2, s0, t5
                  nop
                  add          a4, t0, t1
2515:             ori          gp, s7, -1559
                  sra          t4, t4, s3
                  srai         s11, s6, 11
                  slt          s8, a2, a7
                  beq          s8, a2, 2534f
                  bge          s9, s11, 2540f
                  srli         s4, t1, 11
                  sltu         a6, s3, a2
                  beq          s0, s8, 2539f
                  auipc        t6, 603926
                  beq          s0, gp, 2534f
                  bne          s11, tp, 2534f
                  and          t3, gp, t2
                  sll          s4, s1, s1
                  or           s7, ra, s0
                  and          zero, gp, s3
                  beq          tp, s6, 2533f
                  beq          gp, s10, 2544f
2533:             sltiu        s11, t1, 1533
2534:             and          a7, s8, s10
                  auipc        a4, 722976
                  sltiu        t2, zero, -615
                  bgeu         t6, t5, 2551f
                  blt          a1, a2, 2546f
2539:             and          s2, a0, s8
2540:             sra          s0, t4, s4
                  nop
                  andi         zero, t0, 1471
                  blt          t2, s8, 2548f
2544:             bge          sp, s4, 2563f
                  nop
2546:             bge          gp, s1, 2548f
                  ori          s11, t1, 1334
2548:             bgeu         a1, s11, 2555f
                  bltu         s8, t0, 2568f
                  or           s9, s9, a4
2551:             sub          t0, ra, s7
                  andi         tp, s4, 1123
                  sltiu        s8, t3, 1451
                  bltu         s8, zero, 2563f
2555:             sltu         s5, s8, s0
                  slti         s3, s5, -836
                  sll          t3, t5, s8
                  add          s0, s8, a0
                  ori          s4, a0, 2002
                  slt          sp, s1, a4
                  bltu         sp, zero, 2567f
                  addi         s8, s2, -1585
2563:             sll          s5, a3, s2
                  or           a0, s4, s3
                  slt          s3, a5, t1
                  blt          s5, s1, 2585f
2567:             bltu         a6, a6, 2581f
2568:             bltu         a7, t0, 2575f
                  sra          s4, a2, a6
                  andi         t0, gp, 1091
                  sltiu        t3, s3, 1435
                  andi         tp, t2, -1109
                  auipc        t1, 553726
                  bge          a0, a4, 2584f
2575:             xori         ra, t3, 1406
                  slli         t6, s5, 24
                  sll          t4, a5, a6
                  slti         s2, a0, -737
                  addi         t6, gp, -1505
                  nop
2581:             nop
                  sll          a6, s7, s1
                  add          sp, a2, a2
2584:             addi         s5, zero, 1714
2585:             sltu         a6, t3, s10
                  sra          s0, s9, t6
                  sub          s9, s2, s6
                  bne          gp, s7, 2604f
                  add          a4, zero, a7
                  nop
                  addi         tp, a1, -230
                  add          t6, s5, a0
                  bge          s8, t0, 2604f
                  lui          s0, 350564
                  ori          t1, t3, -1871
                  blt          s6, t2, 2604f
                  nop
                  blt          t1, t4, 2604f
                  bge          a6, a1, 2604f
                  bge          s2, t6, 2604f
                  and          a6, s8, a6
                  lui          a6, 126884
                  slli         t0, a3, 5
2604:             add          s9, s7, sp
                  xor          t1, s0, s8
                  or           a6, t5, s1
                  lw           t2, 4(t5)
                  ori          tp, zero, 938
                  xor          s2, a4, a1
                  add          t3, s10, s0
                  addi         t5, t5, 56
                  sub          s7, a5, a6
3472:             addi x10, x7, 0
3472:             jalr x10, x10, 0
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_2:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_3:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_4:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_5:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_6:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_7:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_8:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_9:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_10:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_11:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_12:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_13:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_14:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_15:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x9, x30, zero
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x21, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x21, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x21, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x21, x13, ecall_handler
                  li x13, 0x1
                  beq x21, x13, instr_fault_handler
                  li x13, 0x5
                  beq x21, x13, load_fault_handler
                  li x13, 0x7
                  beq x21, x13, store_fault_handler
                  li x13, 0xc
                  beq x21, x13, pt_fault_handler
                  li x13, 0xd
                  beq x21, x13, pt_fault_handler
                  li x13, 0xf
                  beq x21, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x30, x9, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x9, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x9, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x30, x9, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x30, x9, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x30, x9, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
