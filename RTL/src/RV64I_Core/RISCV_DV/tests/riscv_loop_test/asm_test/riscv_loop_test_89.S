.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 0
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xf573b2fa
                  li x2, 0x80000000
                  li x3, 0x1e90ba08
                  li x4, 0x7a154c0c
                  li x6, 0x75f7ada0
                  li x7, 0xf0386a89
                  li x8, 0x536690c4
                  li x9, 0x1
                  li x10, 0x0
                  li x11, 0x7
                  li x12, 0xb1ce310a
                  li x13, 0xa66f33e8
                  li x14, 0x80000000
                  li x15, 0x2
                  li x16, 0xf915a776
                  li x17, 0x80000000
                  li x18, 0xc
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x1
                  li x22, 0x0
                  li x23, 0x4424ab4f
                  li x24, 0x80000000
                  li x25, 0xf7a74b67
                  li x26, 0x5f6d008c
                  li x28, 0x147f5b03
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0xb440a915
                  la x5, user_stack_end
main:             srai         a5, a7, 11
                  sll          t2, t2, ra
                  xori         s1, s4, -178
                  la           sp, sub_2
                  srl          t5, a2, a4
                  nop
                  lui          a4, 952343
                  srl          s1, t0, s5
                  addi         sp, sp, 548
                  andi         t1, a7, 974
                  slt          s9, s6, s10
                  and          s0, a7, s4
main_j2:          jalr         t1, sp, -548 #jump main -> sub_2
                  addi         s9, zero, -1 #init loop 1 counter
                  nop
                  addi         t2, zero, -19 #init loop 1 limit
main_0_1_t:       xor          a4, s5, t6
                  addi         s9, s9, -4 #update loop 1 counter
                  srl          a3, s4, a0
                  addi         sp, zero, 10 #init loop 0 counter
                  addi         s6, zero, 17 #init loop 0 limit
                  srai         ra, a7, 27
                  lui          a1, 628427
                  slli         zero, s5, 28
                  andi         a6, a7, 911
                  ori          a4, t2, -525
                  addi         s4, s6, -1980
                  srl          t4, t3, s8
                  xori         s7, t4, -1922
                  auipc        a3, 636335
main_0_0_t:       and          a7, s7, t4
                  addi         sp, sp, 7 #update loop 0 counter
                  slt          s10, t0, t4
                  sub          zero, s0, a3
                  bne          sp, s6, main_0_0_t #branch for loop 0
                  auipc        s7, 671513
                  xori         a4, s8, 676
                  addi         a4, a4, 1173
                  ori          a2, a4, 1141
                  nop
                  slli         t5, s1, 11
                  add          s4, a0, sp
                  bge          s9, t2, main_0_1_t #branch for loop 1
                  slli         s2, s1, 6
                  ori          t6, s4, -1743
                  slli         sp, s9, 29
                  srli         t6, t1, 31
                  xor          s0, s10, a7
                  la           s3, sub_1
                  addi         s3, s3, 437
                  slt          s9, a1, a3
                  sltu         s0, s1, s1
                  slti         t1, a2, -1034
                  addi         a4, t5, 254
                  sra          s4, t6, s9
                  xori         a7, t0, -1600
main_j1:          jalr         t1, s3, -437 #jump main -> sub_1
                  bne          s8, a4, 19f
                  nop
                  sltu         tp, s9, t1
                  sltiu        gp, s8, 1263
                  srli         a0, tp, 3
                  bge          s7, s7, 18f
                  lui          sp, 11392
                  srli         s1, a7, 7
                  slli         s0, s7, 23
                  bltu         t3, t6, 25f
                  beq          a6, t2, 26f
                  bge          t4, ra, 26f
                  srli         t1, s2, 6
                  srai         ra, a7, 4
                  sub          t5, t2, s6
18:               srli         a2, s3, 15
19:               srai         zero, a6, 10
                  ori          s1, s8, 1977
                  add          s0, a5, s6
                  auipc        s3, 623447
                  auipc        t2, 436864
                  bge          s5, s3, 26f
25:               srai         a3, t5, 10
26:               auipc        t1, 538147
                  la x21, test_done
                  jalr x0, x21, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            blt          t4, s6, sub_5_stack_p
                  xori         s9, ra, -581
sub_5_stack_p:    addi         t0, t0, -36
                  sltu         a0, s2, s4
                  slt          t5, s11, s6
                  slt          s1, s8, s6
                  sw           t1, 4(t0)
                  sll          sp, t6, s8
                  slti         a0, a3, 1696
                  nop
                  srli         a0, a2, 18
                  addi         s2, zero, 0 #init loop 0 counter
                  sltiu        s0, s4, -1884
                  xor          s3, t5, a3
                  and          s6, s6, gp
                  ori          t5, s0, -1929
                  sub          s7, a7, t2
                  sra          s9, s10, a7
                  lui          ra, 910565
                  addi         a4, zero, 8 #init loop 0 limit
                  sltu         s4, s10, t1
                  sra          s10, zero, gp
                  slt          t1, t5, s6
                  srli         tp, s9, 16
                  srai         a2, a1, 12
                  sltiu        a1, zero, 1237
                  sltiu        s4, s3, -470
sub_5_20_0_t:     slti         t4, t3, -1319
                  slt          zero, t5, s0
                  addi         s2, s2, 4 #update loop 0 counter
                  slli         s9, s3, 5
                  srai         ra, a7, 25
                  blt          s2, a4, sub_5_20_0_t #branch for loop 0
                  sltiu        t4, s5, 1593
                  addi         t1, zero, 7 #init loop 0 counter
                  sub          t5, s2, s11
                  lui          s2, 627307
                  xori         a4, a4, -987
                  slt          t4, a0, a4
                  slt          s2, zero, s8
                  and          s2, t3, t1
                  addi         a0, zero, 14 #init loop 0 limit
                  addi         a6, a6, 485
                  sra          t6, a5, t2
                  sra          a4, a7, t1
sub_5_16_0_t:     auipc        a7, 53
                  auipc        a1, 94156
                  ori          tp, s9, -731
                  addi         t1, t1, 7 #update loop 0 counter
                  beq          t1, a0, sub_5_16_0_t #branch for loop 0
                  sra          s9, a1, a6
                  addi         a7, zero, 8 #init loop 0 counter
                  xori         s9, s9, 1810
                  nop
                  sltu         a6, s2, a4
                  and          a1, zero, tp
                  andi         t2, a2, -666
                  andi         s0, t2, -1905
                  addi         a2, zero, 18 #init loop 0 limit
                  addi         s0, gp, 1775
sub_5_8_0_t:      nop
                  auipc        s6, 954097
                  andi         s9, s6, 1584
                  addi         a7, a7, 2 #update loop 0 counter
                  bltu         a7, a2, sub_5_8_0_t #branch for loop 0
                  sub          ra, a1, a3
                  addi         t2, zero, -6 #init loop 0 counter
                  srl          t6, a6, t1
                  nop
                  lui          s2, 62736
                  addi         s9, s5, 1882
                  add          gp, a0, s3
                  sltiu        zero, s11, -924
                  srai         t5, a4, 2
                  addi         a4, zero, 8 #init loop 0 limit
                  or           a0, s6, a3
                  lui          s1, 295879
                  and          s2, s4, s7
                  or           gp, t5, t3
                  sltiu        ra, a4, -1312
                  or           s6, t2, s7
                  sra          gp, s8, a4
                  slti         s3, s0, 1867
                  sll          s2, s4, sp
sub_5_3_0_t:      addi         s9, t5, -186
                  addi         a1, s10, 412
                  srl          s9, a1, t0
                  and          s3, a6, s2
                  srli         zero, s5, 5
                  xori         a2, tp, 232
                  srli         t5, gp, 28
                  addi         t2, t2, 2 #update loop 0 counter
                  sub          zero, t2, sp
                  bne          t2, a4, sub_5_3_0_t #branch for loop 0
                  slt          a6, ra, a4
                  addi         s9, zero, 9 #init loop 1 counter
                  sltiu        a6, a6, 52
                  nop
                  andi         t3, a5, -1273
                  addi         a3, zero, 12 #init loop 1 limit
sub_5_10_1_t:     xori         gp, a3, -813
                  lui          s8, 851988
                  addi         s9, s9, 10 #update loop 1 counter
                  addi         t2, zero, 2 #init loop 0 counter
                  srl          a6, a3, s11
                  ori          t5, s9, -331
                  xor          a6, s4, a5
                  add          s7, s2, t2
                  slt          s6, s9, t1
                  nop
                  auipc        t1, 727989
                  sltiu        a4, s3, 1777
                  srl          s10, s7, sp
                  sll          zero, s2, gp
                  add          ra, s0, a1
                  addi         s0, zero, 10 #init loop 0 limit
                  slli         sp, t1, 15
                  slli         gp, s9, 2
sub_5_10_0_t:     auipc        tp, 450638
                  addi         t2, t2, 8 #update loop 0 counter
                  bltu         t2, s0, sub_5_10_0_t #branch for loop 0
                  nop
                  ori          t1, s10, -1718
                  sra          s6, s3, t3
                  auipc        t4, 716370
                  sub          s1, s11, tp
                  ori          sp, a6, 1488
                  add          t1, a3, s3
                  blt          s9, a3, sub_5_10_1_t #branch for loop 1
                  slli         t3, a4, 13
                  addi         a7, zero, 8 #init loop 1 counter
                  xor          s0, a4, a1
                  xor          zero, s7, t0
                  slti         s0, a0, -1393
                  addi         s3, zero, 11 #init loop 1 limit
sub_5_4_1_t:      sub          gp, a6, t6
                  sra          t2, s9, sp
                  lui          s8, 969500
                  srai         a6, a4, 13
                  addi         a7, a7, 6 #update loop 1 counter
                  srai         s7, s9, 29
                  slt          a1, t0, a2
                  auipc        s6, 839719
                  addi         s9, zero, 5 #init loop 0 counter
                  slt          s2, t6, s3
                  addi         t3, zero, 5 #init loop 0 limit
                  sltu         s4, s4, a2
sub_5_4_0_t:      slt          s4, t6, s1
                  slt          ra, s11, a5
                  addi         s10, tp, -1438
                  sltiu        s1, a5, 1572
                  sltu         s7, s0, t1
                  addi         s9, s9, -4 #update loop 0 counter
                  sltiu        tp, t5, 1542
                  slli         a2, a3, 21
                  srai         s0, ra, 23
                  xori         a4, t6, -741
                  or           s6, t3, a0
                  bgeu         s9, t3, sub_5_4_0_t #branch for loop 0
                  blt          a7, s3, sub_5_4_1_t #branch for loop 1
                  sltiu        t5, s4, 1896
                  addi         t6, zero, 9 #init loop 1 counter
                  lui          a4, 128588
                  lui          t2, 216654
                  addi         s1, t1, -705
                  sub          t2, a1, a0
                  addi         t5, zero, 9 #init loop 1 limit
                  add          s4, s0, s9
                  andi         s9, s5, -1980
                  xor          t3, t5, gp
sub_5_0_1_t:      slt          a7, s3, a6
                  slli         s6, s5, 29
                  xor          a5, s11, t0
                  addi         t6, t6, -4 #update loop 1 counter
                  addi         sp, zero, 5 #init loop 0 counter
                  xori         a2, a4, 1976
                  addi         gp, zero, 20 #init loop 0 limit
sub_5_0_0_t:      and          s6, a0, t0
                  or           ra, s5, a5
                  and          s0, tp, a2
                  addi         sp, sp, 2 #update loop 0 counter
                  slt          a5, s4, a4
                  xor          s3, s2, t1
                  srai         s10, s10, 8
                  ori          a1, s5, -436
                  blt          sp, gp, sub_5_0_0_t #branch for loop 0
                  add          s6, s6, s7
                  sltu         a2, a6, s0
                  ori          t1, s0, -164
                  andi         zero, s5, -1422
                  andi         tp, a4, 1496
                  or           s7, t0, s0
                  bgeu         t6, t5, sub_5_0_1_t #branch for loop 1
                  or           s1, t3, s5
                  addi         t4, zero, 10 #init loop 0 counter
                  sltiu        t1, s8, 655
                  nop
                  and          s3, s3, a0
                  and          a5, t0, gp
                  slti         s4, s3, -1943
                  addi         s3, a3, 61
                  addi         s6, s0, 298
                  andi         s9, a3, 137
                  andi         s1, s5, -1630
                  srai         s6, a2, 8
                  ori          s2, a6, -865
                  sltu         a3, t2, s7
                  addi         s8, zero, 16 #init loop 0 limit
                  andi         s4, a4, 587
sub_5_12_0_t:     slt          s1, s1, t6
                  add          t2, s9, t4
                  addi         t4, t4, 3 #update loop 0 counter
                  nop
                  sub          a4, t6, a7
                  bltu         t4, s8, sub_5_12_0_t #branch for loop 0
                  andi         zero, t3, -1064
                  addi         a7, zero, 6 #init loop 1 counter
                  srli         t3, a7, 2
                  slt          s4, t4, s7
                  slli         s1, a6, 31
                  addi         a1, zero, -12 #init loop 1 limit
                  sll          a4, zero, a5
                  add          a6, zero, a4
                  lui          s3, 451632
sub_5_2_1_t:      ori          s3, s8, -1920
                  nop
                  srai         tp, t1, 11
                  addi         a7, a7, -9 #update loop 1 counter
                  addi         ra, zero, 10 #init loop 0 counter
                  or           gp, zero, a3
                  and          a6, a4, t0
                  nop
                  addi         s6, zero, 10 #init loop 0 limit
                  andi         t1, s10, -1223
                  ori          a2, a7, 1638
                  srl          t3, t0, s10
sub_5_2_0_t:      add          s0, a4, s9
                  sltu         t4, s5, s0
                  addi         ra, ra, -9 #update loop 0 counter
                  srli         a2, s11, 10
                  bgeu         ra, s6, sub_5_2_0_t #branch for loop 0
                  xori         t4, tp, 1851
                  beq          a7, a1, sub_5_2_1_t #branch for loop 1
                  sltiu        s4, a5, 1706
                  addi         sp, zero, 8 #init loop 1 counter
                  addi         s4, zero, 8 #init loop 1 limit
sub_5_17_1_t:     sltu         a0, s10, s11
                  addi         a4, a5, 1779
                  xori         s7, s3, 1957
                  lui          a7, 198037
                  addi         sp, sp, -6 #update loop 1 counter
                  slt          ra, t1, t0
                  addi         s2, zero, 2 #init loop 0 counter
                  srli         a3, a0, 27
                  sltiu        a4, s5, -949
                  addi         s1, zero, 8 #init loop 0 limit
                  slt          a7, a2, t5
sub_5_17_0_t:     sltu         s6, s1, a3
                  andi         t4, ra, 1041
                  addi         s2, s2, 10 #update loop 0 counter
                  addi         a0, s6, 229
                  slli         t4, s9, 24
                  srl          a1, s6, t5
                  xor          ra, a6, sp
                  slti         t4, t2, 104
                  slt          t4, a1, a5
                  sra          s0, s0, s3
                  bltu         s2, s1, sub_5_17_0_t #branch for loop 0
                  xori         t2, t1, 1741
                  srai         ra, a5, 26
                  bgeu         sp, s4, sub_5_17_1_t #branch for loop 1
                  srl          t3, s8, t5
                  addi         s9, zero, 1 #init loop 0 counter
                  srli         s6, t1, 8
                  addi         s0, zero, 9 #init loop 0 limit
                  srli         s7, ra, 28
                  add          a7, t1, s11
sub_5_7_0_t:      xor          t6, s0, a4
                  auipc        a7, 614203
                  addi         s9, s9, 6 #update loop 0 counter
                  srl          a5, t3, s10
                  srai         a5, s10, 15
                  nop
                  srai         s2, a2, 21
                  bltu         s9, s0, sub_5_7_0_t #branch for loop 0
                  srai         t5, t6, 12
                  addi         s2, zero, -2 #init loop 0 counter
                  slt          t6, s1, a4
                  sub          zero, t2, t2
                  sltiu        s10, a3, 1400
                  xori         t3, s7, 993
                  addi         sp, zero, -20 #init loop 0 limit
                  srli         t2, sp, 7
                  slli         s7, a2, 1
sub_5_1_0_t:      slti         s9, a1, 468
                  lui          s4, 771570
                  nop
                  addi         s2, s2, -8 #update loop 0 counter
                  slt          s3, a0, ra
                  sltiu        s1, t3, 644
                  add          a6, a6, s4
                  add          t5, s6, s1
                  ori          t2, t5, -1826
                  sub          a6, t4, t3
                  srli         t6, a7, 9
                  auipc        a5, 543416
                  bge          s2, sp, sub_5_1_0_t #branch for loop 0
                  nop
                  addi         ra, zero, 9 #init loop 0 counter
                  and          a1, tp, gp
                  sll          a1, gp, s10
                  and          a7, t2, a4
                  sltu         s2, ra, s11
                  lui          s6, 426804
                  slti         gp, s0, -1458
                  xori         t6, t0, 369
                  xori         a0, tp, -568
                  addi         s9, zero, 9 #init loop 0 limit
                  sltu         t6, s0, a2
                  auipc        s8, 682283
                  sltu         s10, ra, s6
                  lui          t5, 592725
                  xori         a2, t3, 848
                  add          t5, s8, s0
                  xori         s8, zero, 1354
                  ori          t2, s9, -1336
sub_5_13_0_t:     sub          s1, s2, a4
                  addi         ra, ra, -8 #update loop 0 counter
                  xori         t2, s7, -107
                  slli         a6, t0, 12
                  sll          a4, a1, s1
                  lui          a1, 65348
                  bgeu         ra, s9, sub_5_13_0_t #branch for loop 0
                  auipc        t1, 937010
                  addi         t3, zero, 7 #init loop 0 counter
                  xori         a3, a7, 118
                  addi         a5, zero, 12 #init loop 0 limit
                  add          s6, a4, s9
                  add          s3, s6, t6
                  sltiu        a2, t1, 1743
                  slli         a4, a6, 15
sub_5_19_0_t:     slt          a1, t2, a0
                  sra          t4, t3, t1
                  srl          t2, t2, a0
                  ori          t2, a7, -1603
                  sll          a7, t3, a0
                  and          s9, s2, s7
                  add          ra, s8, s2
                  lui          s10, 957188
                  sll          a2, a2, s3
                  addi         t3, t3, 9 #update loop 0 counter
                  slti         a1, s11, -404
                  and          a2, a5, s10
                  and          s8, s10, a7
                  xori         t6, a5, 281
                  lui          s6, 479207
                  sltu         s8, s2, a7
                  and          gp, s10, a4
                  srl          sp, gp, sp
                  slt          s0, s8, ra
                  andi         s9, a5, 270
                  srai         sp, a0, 30
                  blt          t3, a5, sub_5_19_0_t #branch for loop 0
                  slti         a3, s7, -1879
                  or           s7, t3, t6
                  slli         t4, a5, 18
                  ori          sp, a2, 1183
                  slt          ra, a5, a2
                  nop
                  andi         s6, s1, -1867
                  blt          s10, s4, 15f
                  sltu         a0, s2, a3
                  add          t2, t5, sp
                  slt          s0, s8, t3
                  andi         zero, t4, 1608
                  srai         s9, s11, 11
                  sltu         t5, s0, tp
                  slti         ra, s11, -1638
                  blt          s2, s7, 25f
15:               bne          s10, t1, 26f
                  slt          t1, a5, t2
                  andi         a3, a3, -1144
                  srai         s7, s0, 2
                  andi         gp, a5, 975
                  sll          s1, s1, t3
                  auipc        s0, 702012
                  srl          ra, t5, s10
                  bgeu         s8, t3, 40f
                  sub          t3, t5, s8
25:               bne          s10, s7, 35f
26:               bge          s4, s7, 43f
                  add          a1, a3, s1
                  bge          ra, s5, 44f
                  add          t4, s11, s4
                  sltu         sp, gp, tp
                  auipc        t3, 438033
                  nop
                  bne          s11, s10, 41f
                  bne          s9, sp, 49f
35:               andi         s8, t3, -1516
                  add          a0, s7, s5
                  bgeu         s3, a4, 38f
38:               sra          t4, a0, a4
                  srl          gp, zero, s4
40:               or           ra, s1, t4
41:               sltu         gp, s10, s11
                  sltiu        sp, a7, -1261
                  addi         t6, zero, 10 #init loop 1 counter
                  auipc        a5, 874903
                  slt          tp, a1, a3
                  sltiu        a2, a5, -1556
                  addi         s1, zero, 4 #init loop 1 limit
                  xor          sp, t1, a7
                  or           ra, s0, zero
sub_5_14_1_t:     sub          a7, t0, ra
                  srl          a5, t1, t5
                  addi         t6, t6, -2 #update loop 1 counter
                  addi         s4, zero, 6 #init loop 0 counter
                  andi         a7, s5, 598
                  sub          a3, t6, tp
                  sltu         zero, tp, s11
                  slti         zero, t3, 259
                  sll          a1, zero, t2
                  slt          a2, a3, zero
                  sll          s9, s4, sp
                  addi         a1, a7, -662
                  xor          s0, a4, a1
                  addi         t4, zero, -11 #init loop 0 limit
                  slt          s3, a7, ra
sub_5_14_0_t:     or           a3, s4, s10
                  slti         tp, a6, -1875
                  addi         s4, s4, -5 #update loop 0 counter
                  bge          s4, t4, sub_5_14_0_t #branch for loop 0
                  bgeu         t6, s1, sub_5_14_1_t #branch for loop 1
                  and          s3, t5, gp
43:               beq          s9, a2, 44f
44:               srli         t4, t5, 13
                  ori          s0, t0, -128
                  bltu         s2, s2, 54f
                  slli         gp, t6, 30
                  sra          a3, t3, t5
49:               sra          a2, a7, t1
                  srai         s9, s3, 14
                  slt          t3, a4, t6
                  slt          s9, s8, a2
                  slti         t6, gp, -1800
54:               srai         a5, sp, 11
                  bgeu         s0, tp, 72f
                  srli         t4, t3, 8
                  blt          a3, s3, 77f
                  bgeu         s3, s8, 72f
                  beq          t3, s11, 68f
                  beq          s6, tp, 71f
                  andi         ra, tp, -675
                  bgeu         t0, s5, 66f
                  andi         a5, s2, 1307
                  srli         tp, sp, 18
                  bge          s4, t3, 74f
66:               ori          s10, s0, 415
                  bltu         a7, t4, 76f
68:               beq          s11, sp, 88f
                  ori          t6, a6, 524
                  ori          a0, t6, -534
71:               sll          s0, t2, s5
72:               bltu         t1, a7, 85f
                  or           t6, s3, gp
74:               blt          s3, a0, 81f
                  xori         s2, s5, 951
76:               lui          t6, 495925
77:               bne          s9, s4, 96f
                  sltu         s0, ra, a1
                  auipc        a0, 240349
                  nop
81:               sub          a2, s8, s7
                  lui          a2, 834623
                  srl          s1, a2, s5
                  blt          t2, t6, 97f
85:               xor          a4, ra, tp
                  sub          s3, s7, t5
                  blt          gp, ra, 89f
88:               srli         a5, t0, 6
89:               addi         a1, a1, 1152
                  bge          s0, zero, 104f
                  beq          s0, a1, 100f
                  srli         zero, gp, 23
                  and          a0, ra, s3
                  andi         a0, gp, -1131
                  beq          a2, s2, 103f
96:               sub          a6, sp, s5
97:               slti         s9, t2, 141
                  xor          t5, t4, a4
                  or           t6, ra, s4
100:              xor          a5, t4, a1
                  bltu         ra, t3, 113f
                  blt          t4, a5, 104f
103:              srl          s10, t1, s6
                  addi         a5, zero, -9 #init loop 1 counter
                  addi         s1, zero, -1 #init loop 1 limit
                  slt          a6, s9, s5
sub_5_5_1_t:      slti         ra, t0, -1140
                  addi         a5, a5, 7 #update loop 1 counter
                  addi         s3, zero, 7 #init loop 0 counter
                  addi         a3, zero, 11 #init loop 0 limit
                  sltiu        t6, s1, 1239
sub_5_5_0_t:      ori          t4, a1, 993
                  addi         s3, s3, 2 #update loop 0 counter
                  xori         a2, a1, -937
                  beq          s3, a3, sub_5_5_0_t #branch for loop 0
                  blt          a5, s1, sub_5_5_1_t #branch for loop 1
                  sltu         a4, s10, a2
104:              slt          s9, a0, s1
                  bne          sp, a2, 106f
106:              srl          a7, sp, s11
                  srl          tp, s0, s0
                  slti         s2, s10, 370
                  addi         a7, zero, 2 #init loop 1 counter
                  addi         s9, zero, -4 #init loop 1 limit
                  sltu         gp, sp, a6
                  or           a1, a6, s10
sub_5_15_1_t:     auipc        t5, 679509
                  addi         a7, a7, -2 #update loop 1 counter
                  xori         gp, s5, 1140
                  addi         sp, zero, -5 #init loop 0 counter
                  slti         t2, t1, -1291
                  addi         s0, zero, -1 #init loop 0 limit
sub_5_15_0_t:     andi         s1, s1, 939
                  ori          s2, ra, -1528
                  addi         sp, sp, 6 #update loop 0 counter
                  blt          sp, s0, sub_5_15_0_t #branch for loop 0
                  srai         a0, a5, 24
                  auipc        t4, 279197
                  bne          a7, s9, sub_5_15_1_t #branch for loop 1
                  lui          t4, 724860
                  ori          a0, s8, 492
                  auipc        t2, 600458
                  auipc        s7, 796220
                  auipc        s3, 450568
113:              sub          a7, t2, ra
                  add          s0, t6, zero
                  sll          a2, a6, s9
                  sub          s8, s10, a4
                  srli         s3, s5, 19
                  slti         t2, a7, -1883
                  sra          s1, a0, a4
                  sll          t3, t4, s10
                  sltu         ra, s6, s7
                  sltu         t2, a4, a4
                  beq          s10, a2, 140f
                  srli         ra, s11, 25
                  sra          t1, a3, a4
                  slli         s8, sp, 8
                  nop
                  slt          s8, a7, s0
                  bne          t6, sp, 133f
                  srli         s3, gp, 10
                  bgeu         s4, t0, 140f
                  andi         a1, t4, 972
133:              srli         s0, s5, 25
                  beq          s2, s10, 154f
                  bne          s0, t4, 145f
                  lui          sp, 1021560
                  and          s3, a6, s5
                  bgeu         ra, gp, 147f
                  and          s7, s11, t6
140:              xori         tp, a5, -705
                  slli         s2, a3, 21
                  or           s9, s0, t3
                  srl          a0, t4, gp
                  srl          zero, t3, s5
145:              srli         a1, a3, 12
                  xor          s6, s2, s8
147:              slli         tp, a7, 10
                  srl          ra, t1, s11
                  slt          tp, s4, t4
                  nop
                  auipc        t4, 185637
                  beq          a3, s1, 161f
                  bgeu         s0, t3, 172f
154:              srli         a3, a6, 5
                  addi         t1, s9, -1468
                  bne          zero, t4, 157f
157:              andi         s7, t3, 745
                  xor          s2, t1, a4
                  sll          a5, t1, t5
                  addi         a0, ra, 170
161:              sltiu        s4, a3, 683
                  blt          s3, a6, 171f
                  sll          t5, s4, ra
                  sltu         sp, s3, a0
                  srl          a1, s4, a2
                  slt          a3, a4, t5
                  xori         a7, a4, -1892
                  andi         s8, zero, 952
                  sltiu        s1, ra, 1154
                  sltu         t4, a3, zero
171:              slt          tp, s11, a0
172:              andi         t1, a6, 1357
                  bne          s11, s2, 184f
                  sub          t6, t5, t2
                  or           s10, a4, a5
                  or           a4, s3, gp
                  sltiu        a6, gp, 520
                  sra          t6, s4, s2
                  lui          zero, 415075
                  bltu         sp, s5, 196f
                  sra          s0, t1, sp
                  beq          s10, a4, 196f
                  srai         s4, t0, 10
184:              or           t2, s3, a7
                  beq          a0, t2, 200f
                  ori          t5, s10, 689
                  lui          t5, 78162
                  sub          a1, s6, a2
                  srli         s9, s6, 9
                  bge          s2, a7, 207f
                  bltu         s5, tp, 202f
                  slti         ra, s9, -1281
                  xori         s10, s0, -825
                  bne          s7, zero, 202f
                  ori          s10, a7, 2033
196:              sltiu        ra, a2, 1347
                  sltu         t1, s8, s1
                  srai         s4, t1, 16
                  sltu         t4, s1, a2
200:              xori         t4, sp, -1511
                  sll          s1, s3, tp
202:              beq          s9, s7, 209f
                  bltu         a0, a0, 215f
                  bltu         s4, s5, 221f
                  sltiu        a0, t1, -770
                  auipc        s4, 797918
207:              sltu         tp, ra, sp
                  sll          a5, s3, a3
209:              andi         s4, a1, -1061
                  xori         s0, t3, 671
                  slli         a1, t4, 7
                  bge          a4, s7, 221f
                  or           a3, s4, s0
                  blt          a0, a0, 227f
215:              srai         t2, s6, 16
                  xor          s9, s3, s7
                  addi         a1, s5, -526
                  bge          t3, s4, 226f
                  bgeu         a7, a0, 230f
                  xor          a5, t1, s1
221:              andi         s3, t2, -339
                  addi         s7, s10, 8
                  srl          a5, s8, s9
                  auipc        s7, 555357
                  addi         s0, a7, -945
226:              srai         t6, s3, 1
227:              bltu         s6, s2, 240f
                  andi         s8, a4, 165
                  bltu         t1, t6, 237f
230:              slli         s1, a5, 12
                  srai         t1, gp, 19
                  sltu         t1, a3, ra
                  srai         s10, gp, 0
                  nop
                  ori          s8, s0, 1503
                  xori         a6, s6, 1485
237:              srli         s1, s0, 28
                  srl          ra, s1, s3
                  xori         t1, a4, -1133
240:              auipc        a1, 626221
                  srl          t1, t0, gp
                  sll          tp, s7, t5
                  bge          s2, t5, 257f
                  ori          s0, a6, -55
                  add          s2, tp, s10
                  addi         t5, s9, 337
                  slti         a1, s3, -1279
                  srl          t2, s10, s3
                  ori          s10, s4, 806
                  srl          a6, s9, s5
                  xori         t1, a5, -1445
                  beq          a3, s11, 272f
                  sub          s0, s10, s7
                  slt          sp, t0, a5
                  sltu         s6, s10, t4
                  srl          t1, t4, s4
257:              srli         a2, s7, 9
                  srai         s10, s10, 4
                  slt          s1, a0, s0
                  sltu         s10, s7, a4
                  and          t3, sp, s8
                  andi         a6, t5, 1136
                  bgeu         a1, t4, 280f
                  or           zero, a7, a3
                  add          s8, s11, ra
                  srai         a3, gp, 0
                  srl          a7, a4, s3
                  addi         t6, a0, -442
                  bgeu         ra, s1, 277f
                  addi         gp, s11, 293
                  xori         ra, t5, -1698
272:              bltu         s2, a1, 280f
                  xor          t3, s6, a4
                  bgeu         t6, s3, 284f
                  sub          t6, t1, s0
                  beq          sp, a6, 287f
277:              srai         t5, t4, 19
                  andi         ra, gp, 865
                  bne          a0, t0, 288f
280:              srli         a0, a3, 29
                  sltiu        a5, a0, -1503
                  bge          s10, s1, 289f
                  bltu         t5, sp, 287f
284:              bne          t0, a5, 297f
                  lui          t5, 471923
                  srai         gp, a4, 5
287:              nop
288:              lui          t6, 803643
289:              xor          zero, s0, s9
                  srl          s3, gp, s11
                  slt          zero, s5, t1
                  xor          a6, s3, a3
                  bne          s1, s3, 307f
                  srai         s10, zero, 19
                  slt          a4, a5, a0
                  slli         ra, a4, 3
297:              srai         t4, s8, 28
                  nop
                  andi         s4, s4, 652
                  and          zero, s11, tp
                  blt          t3, t5, 318f
                  sra          s6, t0, a7
                  beq          t4, s5, 316f
                  ori          t5, a7, 846
                  slli         s4, a1, 22
                  sltiu        t5, zero, -478
307:              nop
                  sll          ra, ra, s4
                  srl          s2, a7, s6
                  bne          t2, t2, 329f
                  addi         s7, s1, 285
                  sub          s2, s2, tp
                  srl          a6, s7, gp
                  sub          t2, s10, a7
                  bge          s2, t4, 323f
316:              sll          s10, s5, a5
                  addi         s0, a0, -1046
318:              sra          t4, s1, zero
                  sll          a6, sp, t6
                  slt          a7, a5, s9
                  sub          t2, ra, s5
                  lui          a0, 560721
323:              slti         a4, s10, -346
                  sub          s9, a4, s5
                  srai         s8, s0, 31
                  sltu         a6, s9, t5
                  bgeu         t5, sp, 336f
                  blt          s10, t5, 345f
329:              add          s10, tp, s1
                  and          s9, s3, t3
                  slli         a5, a7, 11
                  slt          t4, s3, s6
                  srai         t4, t4, 3
                  bgeu         t5, s11, 343f
                  slt          a3, s8, a0
336:              andi         gp, sp, 1701
                  addi         a7, s1, -1248
                  srai         a3, t3, 22
                  slti         a4, a4, -537
                  srli         t2, a6, 13
                  auipc        s2, 546325
                  sltiu        s0, zero, 1453
343:              xori         s2, s7, -95
                  slti         tp, a4, 1315
345:              blt          t0, sp, 365f
                  addi         gp, a4, -257
                  blt          s5, t0, 348f
348:              sub          s6, a4, s3
                  beq          s6, s0, 351f
                  xor          zero, s10, a4
351:              srl          sp, t2, t1
                  andi         t1, t4, 190
                  srl          s6, a7, s1
                  auipc        t3, 355553
                  lui          a2, 970591
                  addi         tp, s1, 1158
                  nop
                  blt          t5, a0, 367f
                  bgeu         s7, s10, 360f
360:              bltu         tp, t3, 371f
                  ori          s8, a5, 1604
                  or           sp, a7, s11
                  srai         t4, t2, 21
                  nop
365:              and          s7, t6, t0
                  bge          a0, a4, 377f
367:              slt          t3, gp, t2
                  or           t4, a4, a6
                  bge          a6, zero, 381f
                  xori         a3, a6, 1174
371:              ori          tp, t4, -1718
                  add          t2, s7, a0
                  and          a2, sp, a0
                  bltu         s7, a3, 390f
                  nop
                  sll          t5, t5, s0
377:              sll          s8, a4, a1
                  bgeu         a5, t0, 393f
                  and          s1, a5, ra
                  addi         tp, s6, -1448
381:              ori          a4, a4, -674
                  sltu         gp, a1, s2
                  srli         s2, t1, 17
                  srli         zero, s2, 22
                  beq          s2, a3, 399f
                  ori          s3, t6, -836
                  bgeu         t6, sp, 396f
                  bne          t3, s0, 408f
                  srli         sp, s11, 30
390:              auipc        t6, 745041
                  srai         a2, s2, 9
                  lui          s4, 625928
393:              beq          s0, s10, 394f
394:              add          gp, a3, ra
                  or           t1, a6, t1
396:              slt          s10, sp, s11
                  blt          s3, a2, 414f
                  bne          tp, s3, 402f
399:              slli         gp, a1, 5
                  auipc        a1, 489767
                  auipc        a2, 39121
402:              slli         ra, t1, 30
                  sltiu        a6, t1, -1282
                  sltu         s8, t1, s0
                  auipc        t6, 1015608
                  bge          s7, s11, 423f
                  bltu         t3, a5, 424f
408:              lui          a0, 940410
                  blt          s7, s4, 418f
                  ori          a7, a0, 796
                  and          s10, tp, a5
                  bgeu         a6, s8, 432f
                  sra          a4, s11, s4
414:              or           a2, s3, s11
                  srl          s4, a3, sp
                  addi         t4, s0, 2018
                  slti         gp, s3, -577
418:              sra          s3, s9, t6
                  addi         gp, s3, -1597
                  srai         t4, a3, 20
                  blt          t5, t5, 433f
                  srli         a2, s3, 21
423:              xor          s4, a1, s7
424:              bltu         t0, a7, 433f
                  lui          s9, 545961
                  slt          a3, gp, s3
                  slt          a4, s8, t5
                  sra          a6, t6, s9
                  sub          a7, a3, a4
                  bne          a2, a2, 438f
                  srl          tp, a2, s4
432:              and          a7, a3, tp
433:              beq          a5, t6, 441f
                  lui          a1, 153587
                  ori          s1, s6, 1033
                  bne          zero, a3, 450f
                  sra          t3, s0, s6
438:              srai         s2, a6, 19
                  blt          a0, gp, 449f
                  bltu         a7, a3, 453f
441:              sub          ra, a1, s11
                  bgeu         s2, gp, 453f
                  or           a7, t0, s4
                  bge          t2, s10, 464f
                  sltiu        sp, tp, 1509
                  srl          a1, s6, a5
                  addi         s6, zero, -2 #init loop 0 counter
                  sll          t4, a3, a3
                  andi         s10, s6, -1033
                  addi         a4, zero, 3 #init loop 0 limit
sub_5_11_0_t:     slt          s8, t1, ra
                  addi         s6, s6, 5 #update loop 0 counter
                  ori          a3, a2, -1048
                  bne          s6, a4, sub_5_11_0_t #branch for loop 0
                  sra          s2, t6, a0
                  slt          s6, s10, s10
                  or           s3, s3, s9
449:              nop
450:              or           zero, t3, s6
                  srli         a0, s9, 1
                  and          a7, s10, tp
453:              ori          s10, tp, -1244
                  ori          s1, a3, 1231
                  blt          a4, a3, 469f
                  lui          s0, 648572
                  slt          s0, s3, s5
                  beq          s2, s9, 473f
                  bltu         s8, s3, 468f
                  srai         zero, t5, 15
                  add          zero, t3, t6
                  auipc        s0, 155781
                  lui          t5, 156992
464:              bltu         t1, a3, 472f
                  addi         ra, zero, -9 #init loop 0 counter
                  add          t4, tp, ra
                  addi         t1, zero, 16 #init loop 0 limit
sub_5_6_0_t:      sltu         a1, s3, a1
                  sltiu        s9, s0, -427
                  addi         ra, ra, 7 #update loop 0 counter
                  ori          sp, sp, 1831
                  bltu         ra, t1, sub_5_6_0_t #branch for loop 0
                  sra          s7, a4, s5
                  auipc        a2, 772405
                  sub          a0, a2, a2
                  bne          s7, s4, 469f
468:              bge          a7, gp, 477f
469:              srli         s10, zero, 17
                  bne          s5, t4, 481f
                  sll          t6, a0, s3
472:              slt          a3, tp, t5
473:              sra          s4, s11, t2
                  sltiu        s6, s4, -2000
                  andi         t2, a0, 1373
                  nop
477:              sub          s2, tp, sp
                  blt          t1, a1, 489f
                  sltu         s3, s4, a7
                  sub          zero, t4, s7
481:              xor          a4, a4, s11
                  slti         gp, s8, -364
                  srai         tp, gp, 21
                  sltiu        s3, t5, 231
                  sub          sp, a3, t1
                  bgeu         s3, a2, 505f
                  ori          s4, a3, -515
                  sll          t3, sp, a4
489:              bne          s10, s3, 498f
                  addi         s6, a5, -1295
                  srl          s6, zero, sp
                  sll          s0, t1, t0
                  sra          a5, a4, sp
                  slt          a7, s7, a0
                  xori         s4, s1, 299
                  sltiu        s3, s4, 1706
                  srl          s4, s1, t5
498:              nop
                  slti         sp, t3, 1581
                  addi         a2, t6, -1111
                  srai         s6, s3, 29
                  sltiu        a6, a0, -899
                  ori          zero, s1, -50
                  sub          t5, a5, s5
505:              xor          ra, t2, a2
                  bne          s5, s1, 513f
                  xori         tp, zero, 707
                  lui          t4, 236184
                  sltiu        s2, s9, 476
                  andi         s1, zero, -1890
                  xor          ra, s1, a0
                  srli         t6, s5, 16
513:              nop
                  sub          s6, s8, tp
                  ori          a7, t2, -979
                  srli         a0, t6, 6
                  blt          a2, a0, 533f
                  srai         ra, s0, 30
                  ori          s3, s3, -1128
                  bgeu         t1, gp, 533f
                  auipc        s10, 1039092
                  bne          zero, s5, 523f
523:              sll          s0, s11, s5
                  slli         a5, s10, 9
                  slt          s10, a7, s0
                  xor          a6, a2, s11
                  blt          a7, a3, 538f
                  sra          a4, t2, a4
                  addi         t2, zero, 7 #init loop 0 counter
                  slti         t5, t4, -1653
                  srli         s10, tp, 6
                  addi         a6, s6, 925
                  sub          a6, t5, sp
                  sltu         a4, a6, s0
                  sra          a4, t4, t1
                  slt          a1, a7, s7
                  addi         s0, zero, -9 #init loop 0 limit
                  ori          s1, a6, -568
                  slt          a0, s5, s6
                  sra          t1, a6, a3
sub_5_18_0_t:     add          s1, a7, gp
                  srl          a1, s5, sp
                  sltiu        t6, t2, -1112
                  addi         a1, s1, 1600
                  auipc        a6, 582579
                  addi         t2, t2, -8 #update loop 0 counter
                  andi         sp, s5, 258
                  xor          s7, a0, t2
                  add          a3, t0, zero
                  or           gp, ra, s11
                  sltiu        a5, s8, 14
                  auipc        s9, 1032009
                  sra          a1, t1, s2
                  bne          t2, s0, sub_5_18_0_t #branch for loop 0
                  or           s2, s11, s2
                  sltu         t2, a4, a5
                  slli         s10, gp, 1
                  or           a3, a7, t5
                  bge          s1, s10, 540f
533:              xor          s8, a1, s1
                  srl          gp, s9, s10
                  add          a2, gp, s2
                  and          s7, a3, a7
                  sra          a5, gp, ra
538:              sra          tp, a4, sp
                  srl          zero, t0, t2
540:              lui          t2, 446310
                  sltiu        t1, t4, -636
                  slli         s10, a0, 4
                  bge          gp, s3, 557f
                  or           s9, a0, s3
                  auipc        t3, 570322
                  sll          s10, sp, t1
                  sltiu        t3, gp, 502
                  sltu         s10, t6, gp
                  add          t4, zero, gp
                  slti         a7, tp, 1791
                  addi         a0, s8, 1283
                  xori         s7, s1, -1744
                  srli         a3, s7, 16
                  slt          s1, gp, t6
                  add          s10, t5, s0
                  or           a2, s2, s7
557:              or           a6, a5, a1
                  xori         zero, ra, 903
                  addi         a4, s6, 424
                  slti         a5, s10, 1502
                  addi         a5, s2, -938
                  bge          sp, a2, 579f
                  blt          a3, a3, 564f
564:              slti         a0, a5, -1531
                  xor          s10, s11, s5
                  sra          t1, s2, a6
                  xori         t5, s11, -210
                  or           s9, t6, s3
                  slli         sp, s11, 1
                  auipc        a0, 469980
                  sub          a6, s1, a4
                  blt          sp, s2, 580f
                  srl          a2, gp, s4
                  ori          gp, ra, 1064
                  sltiu        s9, a7, -798
                  add          a1, a5, s2
                  andi         tp, t1, 1659
                  sltiu        a6, a4, -514
579:              add          s8, a0, a1
580:              xori         s8, a6, 933
                  bne          s8, s6, 598f
                  and          s8, t5, t1
                  auipc        tp, 615826
                  sra          t3, s0, tp
                  sltiu        a3, a6, -179
                  sub          s10, s2, s11
                  srl          s7, t2, t3
                  srl          s10, s9, a6
                  ori          t6, t3, 1881
                  addi         t1, zero, -1110
                  andi         s7, a6, -703
                  slti         s7, s4, -1622
                  lui          s9, 1005980
                  add          t2, s7, s9
                  beq          ra, t2, 609f
                  sll          t4, a3, s4
                  or           s1, a2, s4
598:              andi         a1, a2, -1513
                  sll          a7, s5, s8
                  slti         t3, s0, 1556
                  and          s4, a4, t0
                  bne          t5, t4, 611f
                  slli         a1, tp, 24
                  sub          t4, s1, s7
                  sltu         s1, a6, gp
                  xori         s8, sp, 693
                  srl          ra, ra, s6
                  blt          t0, t0, 619f
609:              beq          zero, a6, 621f
                  bne          s3, t4, 619f
611:              and          s0, t0, s4
                  lui          a4, 514812
                  sub          a4, s2, a6
                  auipc        t3, 745190
                  bge          t4, t6, 617f
                  ori          t2, s5, -1800
617:              xor          a4, a2, gp
                  sltu         t5, gp, s1
619:              sltiu        t2, s8, 904
                  bltu         t3, a6, 636f
621:              slli         s1, ra, 29
                  auipc        a6, 216644
                  slti         s9, t3, -1554
                  srl          a7, a4, s4
                  auipc        s2, 880108
                  slli         gp, tp, 25
                  auipc        t4, 1025227
                  sltiu        a2, s9, 154
                  xor          s9, s5, a4
                  sll          a4, t1, t2
                  xor          s0, a6, sp
                  lui          a6, 724233
                  xori         s4, s4, -188
                  auipc        a2, 839374
                  sltiu        s2, s4, -1121
636:              xori         a7, s6, -1454
                  beq          t6, sp, 646f
                  ori          s10, s3, 708
                  sll          t1, a1, s7
                  srli         s2, a7, 0
                  slt          t5, a2, s6
                  sltu         s10, s0, a5
                  bltu         s1, t6, 656f
                  srai         a1, a0, 10
                  sltiu        s6, t2, -425
646:              nop
                  bltu         gp, s3, 657f
                  lui          a3, 821095
                  bge          sp, s4, 653f
                  and          s0, s2, s6
                  bne          a3, t2, 670f
                  srl          a7, s0, a1
653:              xori         a2, zero, -1264
                  beq          t2, s9, 655f
655:              andi         s1, t3, -1698
656:              or           a0, s0, t4
657:              add          s10, s5, a6
                  srai         s9, s10, 8
                  xor          a1, t4, t0
                  or           s7, s10, s1
                  sub          t5, zero, t3
                  blt          a5, t4, 671f
                  srli         t1, t1, 2
                  srai         s1, s3, 2
                  auipc        a1, 660745
                  sra          s2, s4, gp
                  slt          a2, a3, t3
                  sltu         a2, s1, s1
                  blt          sp, a0, 677f
670:              sll          s3, s3, ra
671:              ori          t2, t6, -1182
                  bltu         s2, t5, 681f
                  slt          s6, t5, t5
                  sub          a6, s4, s0
                  andi         t5, s1, 1150
                  slt          t2, a3, a0
677:              sll          t6, gp, zero
                  blt          s3, s0, 698f
                  addi         a5, a5, -2008
                  sltiu        a7, t5, 621
681:              beq          t1, s6, 696f
                  and          t4, t6, a3
                  lui          a7, 376778
                  nop
                  lui          a0, 223633
                  add          s8, s6, zero
                  sltiu        s2, t4, 1345
                  auipc        s7, 924536
                  sltiu        s8, a5, -1259
                  add          gp, s7, a4
                  sltu         s4, a2, s10
                  nop
                  sltiu        t1, s5, -1596
                  blt          a3, s11, 705f
                  slti         t3, s0, 1482
696:              lui          a6, 201585
                  xori         s4, t1, -645
698:              auipc        a5, 735586
                  sub          s8, tp, sp
                  sub          s6, t4, s2
                  bgeu         t6, s9, 721f
                  srai         a7, zero, 10
                  lui          s3, 502422
                  sll          s1, s0, t2
705:              bltu         a4, a1, 718f
                  bge          s3, t6, 713f
                  lui          s7, 692976
                  sltiu        s6, t3, 1836
                  slt          s0, a6, s10
                  sub          a0, s6, ra
                  slti         s0, s11, -1263
                  bge          s7, t5, 729f
713:              ori          s10, s3, -1289
                  xori         a1, s7, -592
                  srli         t6, a3, 25
                  nop
                  sub          s2, s5, s3
718:              beq          s7, a6, 726f
                  addi         s8, t6, -3
                  addi         t2, s2, -1771
721:              sra          tp, a3, s10
                  slt          gp, s4, a7
                  slli         t1, s6, 13
                  slti         a1, tp, -180
                  ori          a3, s10, -2009
726:              xor          s7, tp, s11
                  and          a6, s5, s6
                  nop
729:              lui          s2, 756588
                  ori          s9, s4, -268
                  sltu         s8, s3, s7
                  addi         s9, zero, -1 #init loop 0 counter
                  slli         s4, s3, 5
                  or           s8, s6, s9
                  sra          zero, s4, sp
                  srl          s0, zero, s0
                  or           s10, s7, t6
                  addi         t2, t4, -827
                  sub          s6, a6, s1
                  srli         sp, a0, 20
                  andi         tp, t2, 2031
                  addi         s2, zero, 4 #init loop 0 limit
                  lui          t5, 107153
                  and          s3, tp, a7
sub_5_9_0_t:      xori         t5, a3, 1412
                  addi         a6, zero, 1765
                  addi         s9, s9, 3 #update loop 0 counter
                  slt          s0, a5, s9
                  sltiu        s0, a6, -1777
                  lui          tp, 623275
                  bltu         s9, s2, sub_5_9_0_t #branch for loop 0
                  sltu         t4, t2, ra
                  slli         s3, a1, 29
                  slt          a5, a1, s8
                  lui          a3, 232145
                  beq          a5, s1, 736f
736:              lui          s4, 328670
                  bltu         t1, t2, 753f
                  add          s4, s7, a4
                  add          t2, s4, a6
                  bne          s7, t3, 757f
                  srai         a0, s1, 27
                  slli         t3, t4, 27
                  slti         t2, s0, 352
                  srl          t4, s1, t5
                  nop
                  sra          s0, t5, t1
                  sltu         a2, t6, s1
                  bge          s5, t3, 757f
                  andi         s8, s8, -775
                  andi         ra, t3, -499
                  beq          a4, tp, 753f
                  slli         zero, t2, 3
753:              bgeu         s9, a4, 767f
                  nop
                  nop
                  lui          t1, 803546
757:              srli         a2, t4, 14
                  lui          tp, 496208
                  add          tp, t6, sp
                  sltu         a0, a0, s6
                  lui          t3, 581419
                  sub          zero, tp, t1
                  ori          t5, s1, -373
                  sltu         s6, t6, t0
                  addi         s6, gp, -292
                  bgeu         gp, ra, 777f
767:              bltu         ra, a5, 786f
                  andi         s7, s5, 1283
                  xor          a3, ra, sp
                  beq          s4, sp, 774f
                  add          a5, s2, a3
                  andi         s3, t1, -1056
                  bne          s9, s2, 793f
774:              bgeu         s9, t3, 794f
                  srai         s0, s6, 13
                  srli         a7, zero, 6
777:              xori         s8, t0, 343
                  nop
                  sub          s10, s11, s4
                  bge          t4, ra, 788f
                  sll          ra, t6, s0
                  sra          ra, s1, a3
                  sra          s2, s7, s2
                  ori          t1, t3, 739
                  andi         t4, a3, -780
786:              ori          s8, s4, 1659
                  sltu         s2, s10, t0
788:              blt          a0, s9, 789f
789:              lui          s7, 218645
                  sub          t4, s7, s6
                  add          s10, t4, t2
                  addi         a3, s4, 1678
793:              nop
794:              sltiu        a2, t0, 562
                  sll          a0, s10, a3
                  nop
                  ori          a0, sp, 1109
                  sra          ra, s9, s9
                  addi         s2, t2, 520
                  sltiu        s2, t0, 189
                  addi         t2, tp, -694
                  lui          t6, 533927
                  slti         a4, t4, 358
                  blt          sp, s6, 813f
                  bltu         a3, s5, 816f
                  auipc        a4, 624462
                  srai         a0, t6, 29
                  beq          s6, s5, 821f
                  auipc        tp, 4180
                  auipc        a5, 786665
                  slt          s4, s10, s2
                  bltu         t5, s3, 829f
813:              srli         a1, s7, 16
                  and          s1, s8, s5
                  slt          s9, t4, t1
816:              sll          tp, a1, a7
                  sub          sp, a6, s4
                  add          t5, s0, a2
                  slti         a7, s1, 866
                  slti         a5, ra, -1308
821:              add          s6, s8, s10
                  slli         zero, s10, 26
                  ori          t1, t0, 749
                  or           sp, a1, zero
                  sll          a2, tp, ra
                  bltu         a3, a0, 843f
                  lui          a4, 632026
                  sra          a4, a2, a0
829:              bgeu         s4, a7, 836f
                  auipc        t3, 1024891
                  or           s2, tp, s7
                  xori         gp, sp, 1478
                  nop
                  or           s6, t3, tp
                  blt          s2, s7, 850f
836:              slti         s3, ra, -301
                  andi         s3, a1, 216
                  blt          t6, s9, 850f
                  sll          gp, a4, s8
                  slti         s8, s7, 7
                  bne          s1, zero, 854f
                  bgeu         t3, s3, 850f
843:              srai         s3, t3, 4
                  srli         s7, s1, 29
                  andi         s8, a5, -1092
                  sra          gp, s4, ra
                  add          s8, a1, a1
                  nop
                  bne          t5, s0, 858f
850:              ori          s1, t2, -1135
                  blt          t5, t4, 861f
                  and          s6, t6, t2
                  add          s8, t1, s3
854:              xori         a5, s10, -1434
                  bltu         ra, s1, 864f
                  srai         gp, s5, 9
                  sll          s9, s4, ra
858:              beq          a2, s0, 867f
                  srl          s0, s4, t1
                  xori         s6, t4, 841
861:              sll          a1, a6, s3
                  bge          s5, s7, 876f
                  beq          tp, t2, 874f
864:              sll          a5, s0, s2
                  sub          t6, t5, s5
                  nop
867:              addi         t5, s10, 1811
                  or           ra, a6, s9
                  sltu         s6, a3, a7
                  beq          t6, ra, 889f
                  xor          s8, zero, s1
                  sltu         a4, s7, s10
                  bge          a0, s10, 888f
874:              bne          zero, t3, 882f
                  blt          a2, s10, 876f
876:              lui          s9, 899836
                  xori         sp, s1, 1316
                  or           tp, t1, t4
                  bge          a1, s10, 890f
                  andi         a0, s7, 1403
                  bltu         sp, s2, 890f
882:              or           gp, t5, sp
                  srli         a5, a0, 28
                  nop
                  slti         sp, gp, -1745
                  andi         s10, a2, 1647
                  bgeu         tp, s8, 898f
888:              sll          t4, s0, a7
889:              sltiu        a3, s3, -1450
890:              sltu         sp, t4, s0
                  addi         s8, s7, 570
                  and          zero, a2, s7
                  bgeu         a7, t5, 895f
                  add          t3, s2, a1
895:              sub          a7, a0, s2
                  bltu         a0, a5, 916f
                  andi         s2, t2, -1583
898:              add          zero, a6, a2
                  srai         a7, s2, 4
                  sltu         s6, s2, t0
                  sltu         s3, s1, a6
                  sub          a0, t1, a0
                  lui          a3, 893946
                  andi         s2, t1, 997
                  bgeu         s7, s1, 909f
                  bgeu         sp, s10, 923f
                  or           s0, a2, a2
                  bne          a0, a1, 921f
909:              and          s3, sp, gp
                  srli         s6, t2, 1
                  slti         a0, s10, 2034
                  bltu         s8, s11, 920f
                  add          ra, s9, s4
                  bge          t2, a6, 930f
                  srli         a2, s11, 24
916:              slli         t4, a7, 0
                  xor          t6, s10, gp
                  slli         a2, t5, 27
                  ori          zero, tp, 649
920:              beq          gp, s9, 937f
921:              xor          s7, a1, s2
                  slti         t4, ra, 1539
923:              sll          s6, t2, s1
                  blt          a4, a3, 935f
                  and          s9, gp, s6
                  sltiu        a4, a2, 1523
                  nop
                  or           tp, t0, zero
                  bltu         s6, s9, 949f
930:              bge          s4, a6, 939f
                  srli         gp, gp, 8
                  bge          t5, s2, 946f
                  bge          a4, gp, 943f
                  bgeu         s2, ra, 951f
935:              bge          s6, t6, 948f
                  slti         a2, t5, -1874
937:              andi         s8, a2, 1905
                  beq          sp, a0, 947f
939:              slt          s4, t0, t0
                  sra          s9, tp, ra
                  sll          a1, t1, t6
                  addi         sp, t3, -378
943:              or           s0, sp, s5
                  xori         s9, a2, 198
                  slli         a3, s3, 20
946:              sll          tp, t1, s2
947:              bge          s6, s4, 956f
948:              srli         t2, a0, 7
949:              add          s10, s7, a2
                  or           a2, s0, a2
951:              or           ra, s9, a4
                  bltu         sp, t0, 953f
953:              sltu         s6, tp, t2
                  srai         s9, sp, 23
                  sll          s6, t4, t1
956:              slt          s2, t3, s4
                  srai         ra, zero, 23
                  auipc        gp, 923523
                  or           zero, a0, s0
                  sll          s1, s11, t4
                  slti         ra, t4, 311
                  sub          a5, t1, s0
                  lui          t5, 221451
                  srl          s4, t3, s0
                  nop
                  slt          s0, s9, s4
                  srai         s3, s8, 25
                  sll          t6, t2, a5
                  and          s8, a1, a4
                  srli         a0, t2, 29
                  slli         t5, s0, 7
                  andi         s6, t2, 512
                  sltu         t4, sp, t6
                  blt          a2, a2, 986f
                  blt          a7, a1, 984f
                  bne          a5, a3, 984f
                  bge          t4, s2, 984f
                  auipc        s4, 434617
                  xori         s10, t1, 1716
                  xori         s2, s4, -379
                  or           gp, s2, s10
                  bne          a7, s2, 996f
                  beq          s2, s8, 992f
984:              blt          s0, s1, 1001f
                  bgeu         s3, s10, 995f
986:              and          s4, sp, a0
                  srli         ra, s8, 27
                  sll          a4, t1, s1
                  slli         s6, s3, 17
                  blt          t2, a1, 1002f
                  bltu         t4, s4, 1004f
992:              sra          t5, t6, t2
                  auipc        s4, 245828
                  srl          s4, t0, s1
995:              ori          s4, a1, -162
996:              addi         t4, a7, -220
                  bne          s9, gp, 1004f
                  nop
                  sra          tp, s4, s1
                  xor          s4, a6, s8
1001:             bne          t3, s3, 1010f
1002:             sub          t2, zero, s5
                  bne          ra, a5, 1016f
1004:             bgeu         tp, ra, 1008f
                  bltu         t4, a3, 1016f
                  and          zero, s3, a0
                  bgeu         a0, s4, 1024f
1008:             sub          s6, ra, s2
                  xor          t2, a6, t2
1010:             bge          s6, s2, 1021f
                  slli         s2, ra, 11
                  srli         a7, a7, 6
                  lui          s10, 679768
                  addi         a4, a7, -1188
                  bgeu         tp, s7, 1034f
1016:             bgeu         a7, a7, 1017f
1017:             srli         s3, zero, 5
                  blt          a7, s5, 1032f
                  or           ra, t3, a5
                  slti         s2, a0, -1596
1021:             andi         t3, s5, -401
                  bne          a0, a4, 1030f
                  slti         s9, s10, -1309
1024:             srli         a6, sp, 12
                  andi         a0, t4, -1019
                  addi         s3, s5, 1202
                  addi         a3, s1, 461
                  sub          tp, t1, a5
                  nop
1030:             auipc        sp, 229042
                  blt          t2, s5, 1046f
1032:             sltiu        a2, s2, -383
                  sub          a6, ra, t0
1034:             slli         s8, t1, 29
                  xori         t5, s9, -893
                  bge          a0, s10, 1047f
                  blt          t3, t0, 1046f
                  auipc        s10, 230682
                  bne          a1, s10, 1041f
                  sra          a2, gp, a6
1041:             andi         s10, zero, 2012
                  sltu         s2, s3, t0
                  slt          s3, a3, t3
                  xori         t5, a5, 84
                  srl          s2, s8, t6
1046:             bgeu         t3, a3, 1054f
1047:             sltu         t4, a6, s9
                  or           ra, a5, ra
                  bne          s11, t5, 1065f
                  bge          a2, t2, 1051f
1051:             sltu         s10, tp, s9
                  addi         t2, t6, -1494
                  bltu         t2, s11, 1062f
1054:             beq          a4, s2, 1062f
                  addi         a1, t1, 1460
                  slt          tp, s10, gp
                  addi         ra, a3, -1467
                  ori          a5, t5, -18
                  lui          a6, 658618
                  addi         a5, a4, 7
                  auipc        a4, 866350
1062:             xori         t1, s7, 1001
                  sltiu        s7, t6, 988
                  and          s6, s7, a1
1065:             lui          s3, 353240
                  andi         zero, a3, 223
                  slt          a5, s10, t6
                  addi         s6, t4, 928
                  ori          t4, ra, 314
                  bne          a1, t2, 1079f
                  sub          a7, t6, s0
                  srai         ra, a3, 11
                  xor          a4, s3, t1
                  slt          s8, s6, s11
                  or           ra, sp, sp
                  andi         s3, t6, -1863
                  nop
                  xori         a7, s4, 1312
1079:             slli         a5, s6, 10
                  sra          s0, t4, s5
                  and          s7, a6, a6
                  sub          t2, t3, t6
                  and          a5, s3, tp
                  lui          s9, 19583
                  lui          s3, 652896
                  beq          t0, ra, 1093f
                  blt          gp, a4, 1093f
                  add          t4, a2, zero
                  ori          s2, t5, -915
                  bne          tp, a1, 1093f
                  ori          s1, s10, 11
                  slli         a0, s7, 3
1093:             sra          s4, s3, t4
                  lw           t1, 4(t0)
                  addi         t0, t0, 36
                  sltu         zero, a0, a1
                  sub          s9, sp, s10
                  xori         t2, s0, 1785
                  xori         s9, s0, -736
                  slti         tp, a3, 691
                  sra          s4, a0, a5
1592:             addi x29, x6, 0
1592:             jalr x29, x29, 0
sub_1:            blt          t0, tp, sub_1_stack_p
                  add          t2, s11, s5
                  slt          a5, t5, s9
sub_1_stack_p:    addi         t0, t0, -28
                  ori          s0, t3, 1744
                  sw           t1, 4(t0)
                  sltiu        s0, a4, 1048
                  lui          s8, 248309
                  sltu         zero, t1, a5
                  xori         s8, a4, 513
                  xori         s3, a2, 1786
                  slt          a5, t0, a6
                  and          a7, a1, t6
                  bltu         ra, a1, sub_1_j4 #branch to jump instr
                  srli         a2, a7, 24
                  srl          s0, s3, a6
                  sra          s2, a6, t0
                  slt          tp, s3, zero
sub_1_j4:         jal          t1, sub_4 #jump sub_1 -> sub_4
                  addi         a7, zero, 9 #init loop 1 counter
                  addi         t4, zero, 8 #init loop 1 limit
sub_1_3_1_t:      sub          a6, tp, s2
                  auipc        tp, 722858
                  or           gp, s1, t4
                  addi         a7, a7, -3 #update loop 1 counter
                  sll          a0, a7, t0
                  addi         a2, zero, -8 #init loop 0 counter
                  addi         a4, zero, 10 #init loop 0 limit
sub_1_3_0_t:      xori         s9, a5, -1256
                  lui          s7, 744913
                  addi         a2, a2, 1 #update loop 0 counter
                  blt          a2, a4, sub_1_3_0_t #branch for loop 0
                  bgeu         a7, t4, sub_1_3_1_t #branch for loop 1
                  sub          gp, t5, s3
                  addi         s2, zero, 6 #init loop 0 counter
                  nop
                  srai         s1, tp, 25
                  sltu         s0, ra, s10
                  xori         s1, t2, -245
                  addi         t5, s0, 1662
                  slli         a1, gp, 19
                  addi         a7, zero, 4 #init loop 0 limit
                  srl          a6, t5, t0
                  slt          a4, a5, a3
sub_1_1_0_t:      or           s10, a3, s8
                  and          a0, ra, t0
                  srl          a1, s4, s7
                  addi         a3, t2, -254
                  sra          t2, a0, s9
                  xori         a6, s7, -1405
                  auipc        s8, 688672
                  srai         gp, s1, 6
                  addi         s2, s2, -3 #update loop 0 counter
                  auipc        s10, 264353
                  or           s1, s0, s6
                  bgeu         s2, a7, sub_1_1_0_t #branch for loop 0
                  add          t3, ra, a0
                  addi         s2, zero, -10 #init loop 0 counter
                  addi         ra, zero, 15 #init loop 0 limit
                  xor          t6, s1, a0
                  auipc        s10, 148179
                  auipc        s1, 741827
                  srl          a0, s2, s9
                  ori          sp, ra, 990
sub_1_2_0_t:      nop
                  and          t6, gp, s3
                  addi         s2, s2, 10 #update loop 0 counter
                  slti         a4, a4, 1226
                  sltu         a7, a0, tp
                  srli         t6, t6, 15
                  sub          a3, s9, t5
                  bltu         s2, ra, sub_1_2_0_t #branch for loop 0
                  slti         s10, sp, 1801
                  addi         sp, zero, 4 #init loop 0 counter
                  addi         ra, zero, 3 #init loop 0 limit
sub_1_4_0_t:      xori         gp, a1, -1102
                  add          s4, t4, s4
                  ori          s6, t2, -1515
                  sra          s8, s10, t6
                  sltiu        a7, a2, -1430
                  sltiu        a7, s10, -314
                  and          t4, a7, s4
                  sll          a3, a3, t2
                  sll          s7, t4, t4
                  addi         sp, sp, -1 #update loop 0 counter
                  sra          s7, a6, a7
                  srai         a0, a0, 12
                  slli         a2, t6, 6
                  add          t6, a6, a1
                  bgeu         sp, ra, sub_1_4_0_t #branch for loop 0
                  slli         zero, t5, 11
                  add          a2, s11, a4
                  bltu         tp, t0, 10f
                  auipc        s3, 418491
                  addi         s2, s1, -1967
                  ori          t4, a3, -127
                  nop
                  or           ra, sp, ra
                  and          a4, t1, s8
                  bltu         a6, gp, 26f
                  sra          a4, t4, a0
10:               addi         zero, s6, -1585
                  bge          s11, s5, 22f
                  blt          sp, s5, 29f
                  andi         t4, t0, 150
                  lui          a7, 36710
                  srl          a3, s9, a5
                  sltu         s8, a6, zero
                  ori          t2, a5, 437
                  bge          s5, sp, 27f
                  lui          a7, 816811
                  srl          t2, a7, a4
                  slt          s4, s6, tp
22:               srai         s3, t3, 19
                  sltiu        s3, t0, 70
                  sub          s8, s11, a6
                  bne          t5, t4, 38f
26:               ori          a3, t0, 861
27:               slti         gp, a6, -1852
                  bgeu         zero, s5, 34f
29:               bgeu         a5, zero, 37f
                  sltu         a3, tp, a3
                  addi         a6, a6, -1050
                  add          a3, s0, gp
                  or           t2, t1, a5
34:               bltu         s11, s3, 43f
                  bne          a3, s6, 41f
                  slti         t3, t4, 2037
37:               xori         s6, zero, -1893
38:               bge          t3, a0, 46f
                  bne          t2, t5, 46f
                  sub          s8, s4, t5
41:               bne          t0, t1, 45f
                  slt          s9, sp, s6
43:               bne          s1, s5, 55f
                  sltiu        a5, t1, -1454
45:               srli         a0, t2, 26
46:               slt          zero, s3, zero
                  sub          s4, s3, a5
                  auipc        a3, 262742
                  bltu         a5, sp, 63f
                  slt          a3, s5, s11
                  srli         s9, s0, 28
                  srai         s4, a5, 3
                  nop
                  slli         t1, a0, 9
                  add          s8, zero, s9
                  sra          s0, a7, a7
                  bne          t4, s0, sub_1_j3 #branch to jump instr
                  sltiu        s9, s10, -306
                  auipc        s10, 567625
                  slt          a3, t1, s0
sub_1_j3:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  sra          t1, a6, sp
55:               or           s6, t1, a2
                  srai         sp, t1, 5
                  andi         a6, s7, -407
                  auipc        s10, 301702
                  sub          zero, zero, s7
                  blt          gp, s10, 66f
                  auipc        t5, 394130
                  sltiu        s9, s7, 859
63:               bltu         t4, zero, 74f
                  bgeu         t3, t6, 77f
                  srl          s8, t2, s9
66:               xor          a0, s1, s11
                  nop
                  sub          t5, sp, s10
                  bne          tp, a6, 80f
                  srli         s7, sp, 20
                  srli         s6, t2, 26
                  bge          tp, sp, 87f
                  bltu         t4, s6, 76f
74:               srli         s6, s7, 16
                  sltiu        t2, t6, 84
76:               xori         s8, a0, -885
77:               blt          t5, gp, 86f
                  sll          s4, t5, sp
                  auipc        t4, 921332
80:               addi         t2, ra, 1906
                  xor          a5, a5, tp
                  and          s3, s7, s8
                  srl          s9, a5, s7
                  or           s7, a0, a0
                  xori         a5, s3, -1831
86:               sub          s6, t6, t5
87:               xor          s1, sp, gp
                  bne          s5, ra, 106f
                  slt          s6, t4, s11
                  addi         a7, sp, -51
                  ori          a4, s5, 152
                  ori          t4, t0, 412
                  addi         s0, a7, 2017
                  beq          t3, s1, 111f
                  sub          s9, tp, s11
                  add          gp, s11, s3
                  sltiu        tp, s1, 984
                  srai         zero, a4, 13
                  slli         s2, tp, 28
                  sub          sp, a6, s2
                  lui          s8, 770518
                  auipc        s7, 945745
                  bge          tp, s9, 108f
                  andi         a6, s5, -945
                  nop
106:              andi         gp, s1, -1951
                  sltiu        t2, s6, 1913
108:              sra          t4, a1, t2
                  bgeu         s0, s9, 111f
                  sltu         s8, gp, s3
111:              beq          s6, s6, 124f
                  srl          s9, a3, t1
                  ori          a5, t0, 1354
                  add          a3, t2, s0
                  srli         t2, t4, 18
                  and          a5, s5, t6
                  srai         t5, a7, 13
                  ori          a6, s4, 200
                  bltu         s0, s1, 120f
120:              blt          a0, s0, 127f
                  xori         t3, sp, -832
                  xor          ra, s1, zero
                  ori          s6, zero, -1116
124:              srl          a4, t0, gp
                  sltiu        t2, a4, -1136
                  add          t2, ra, t6
127:              andi         s9, s0, -1387
                  sra          a7, s9, s2
                  xor          a2, t1, a7
                  slti         t3, t0, -864
                  auipc        s4, 966992
                  or           a4, t0, tp
                  srl          t6, a2, s3
                  xor          s2, t0, t6
                  srli         s8, s2, 21
                  auipc        ra, 481542
                  sub          a6, t6, a6
                  beq          a7, s10, 146f
                  bltu         t1, a7, 148f
                  slt          gp, s8, t1
                  and          a5, a1, s3
                  srai         a2, ra, 25
                  bne          t5, s0, 147f
                  auipc        a1, 182603
                  blt          s6, a3, 158f
146:              ori          a0, t6, -836
147:              sll          a7, t4, s1
148:              slti         a4, s6, 1714
                  bgeu         t1, a7, 157f
                  sra          zero, s11, s0
                  ori          s6, s3, -246
                  lui          s2, 938799
                  slti         a2, s2, -1878
                  bgeu         a2, zero, 163f
                  add          t4, a5, t6
                  lui          s2, 886853
157:              lui          t2, 476121
158:              sra          a1, t4, a4
                  slli         a5, a7, 4
                  lui          a3, 183874
                  sll          s8, a7, a5
                  sll          t4, s5, t1
163:              add          s4, s4, t6
                  srai         gp, ra, 21
                  blt          a5, a3, 183f
                  bgeu         t6, a4, 178f
                  and          a3, a2, a5
                  sub          s2, sp, t3
                  beq          s9, a6, 187f
                  beq          sp, s5, 183f
                  slli         zero, a1, 10
                  sra          s6, ra, t4
                  or           s0, s1, s8
                  srl          s1, t3, a3
                  bltu         a2, s0, 177f
                  auipc        a6, 1031968
177:              sltu         a6, tp, a1
178:              blt          a7, s1, 191f
                  auipc        t4, 129655
                  add          a4, s10, a1
                  add          t4, s2, t5
                  bgeu         tp, s0, 190f
183:              srai         a6, t0, 27
                  beq          t4, s8, 198f
                  srli         s0, sp, 24
                  bgeu         t2, s7, 194f
187:              lui          a4, 1010322
                  srli         ra, a2, 4
                  slli         a2, ra, 28
190:              srai         s6, a5, 2
191:              lui          a4, 459478
                  xori         tp, a7, 2018
                  bge          s8, s4, 199f
194:              add          s1, a5, s10
                  ori          a5, gp, -32
                  and          a3, t1, s8
                  lui          a0, 936190
198:              bne          t3, a0, 199f
199:              add          s2, a3, tp
                  addi         s0, t3, -642
                  bge          tp, t1, 210f
                  sltu         sp, a2, ra
                  and          s2, s4, a4
                  bgeu         a3, gp, 213f
                  srai         ra, t6, 20
                  ori          t2, s11, 1519
                  xor          s8, ra, a1
                  lui          s6, 782467
                  blt          s7, t0, 212f
210:              sub          a0, ra, a3
                  srli         a2, s2, 0
212:              srai         ra, t0, 6
213:              lui          s7, 49458
                  addi         t1, zero, 3 #init loop 1 counter
                  sll          t6, s1, s1
                  andi         s2, a1, -336
                  addi         a0, zero, -5 #init loop 1 limit
sub_1_0_1_t:      lui          gp, 412212
                  sub          t3, a1, tp
                  ori          t2, s5, 632
                  slt          a4, a6, s9
                  or           s6, t1, a7
                  slli         s2, a2, 0
                  addi         t1, t1, -1 #update loop 1 counter
                  or           t3, a5, s8
                  addi         a5, zero, 5 #init loop 0 counter
                  xor          s6, a7, a4
                  sll          sp, a7, a0
                  addi         s3, zero, -15 #init loop 0 limit
                  xori         t6, t6, -1422
                  and          s10, s6, s11
sub_1_0_0_t:      auipc        s8, 25381
                  srai         zero, s0, 13
                  addi         a5, a5, -10 #update loop 0 counter
                  beq          a5, s3, sub_1_0_0_t #branch for loop 0
                  srl          s8, t1, s7
                  bne          t1, a0, sub_1_0_1_t #branch for loop 1
                  lui          sp, 873270
                  slli         s2, a3, 15
                  sltu         t2, zero, a4
                  sll          s4, t5, t2
                  sltu         zero, s0, s6
                  sltu         s3, s6, s6
                  bge          a3, s6, 236f
                  srli         t1, s2, 20
                  or           a0, s5, t2
                  add          gp, zero, s7
                  andi         a7, t3, 454
                  add          a2, t0, a2
                  sltiu        a7, gp, 861
                  xor          gp, gp, s7
                  xori         s4, a0, -620
                  srai         zero, a7, 7
                  bne          t1, a2, 234f
                  beq          sp, a1, 241f
                  slti         s3, a5, 1796
                  sltiu        a0, t6, -1918
                  add          s8, gp, a5
234:              sltu         t5, s11, a7
                  slti         t4, s4, -1613
236:              sltu         s1, t3, s3
                  beq          t0, s8, 243f
                  beq          a5, s4, 245f
                  beq          gp, gp, 254f
                  or           s0, a2, s0
241:              addi         a7, a6, 1161
                  xori         sp, a4, 1135
243:              srli         gp, t6, 16
                  xor          t1, t1, s0
245:              srl          t3, s10, s7
                  blt          s7, a6, 263f
                  bgeu         s10, s5, 258f
                  auipc        t4, 43162
                  sll          a2, s7, s6
                  sltu         s1, zero, a4
                  and          t6, a1, s9
                  srli         a2, s11, 4
                  andi         sp, sp, 1829
254:              srli         a0, ra, 19
                  srl          a7, s5, s0
                  srai         a6, a3, 8
                  slt          s2, s8, t4
258:              bgeu         t6, zero, 265f
                  lui          s2, 398816
                  sltu         t4, s9, s3
                  slli         s6, t4, 1
                  bge          s8, s4, 273f
263:              srl          t4, s9, s3
                  sll          a0, s1, t6
265:              blt          t2, s9, 271f
                  slt          s0, s1, s11
                  and          ra, s4, t3
                  xori         t5, t0, -954
                  slti         ra, t5, -783
                  sll          a2, a3, t0
271:              bltu         s10, a6, 283f
                  ori          t2, a5, 927
273:              bge          a4, t2, 275f
                  blt          s4, t6, 280f
275:              sll          a0, t4, s1
                  sub          t6, ra, s11
                  srl          a0, sp, s11
                  lui          tp, 94860
                  or           t3, t3, zero
280:              srl          a3, t4, t2
                  bgeu         s8, a1, 283f
                  bgeu         a6, t2, 283f
283:              xori         gp, s5, 831
                  lw           t1, 4(t0)
                  slti         sp, s10, 1540
                  nop
                  sltiu        gp, a6, 911
                  lui          s7, 37989
                  slli         a0, t4, 13
                  addi         t0, t0, 28
                  ori          s2, s8, 867
416:              addi x8, x6, 1
416:              jalr x8, x8, 0
sub_4:            nop
                  srli         s6, a5, 17
                  addi         zero, a5, 1318
                  addi         t0, t0, -60
                  or           a0, a5, s0
                  sw           t1, 4(t0)
                  sll          t3, gp, s10
                  or           t4, s3, t2
                  sra          s7, t1, a4
                  bgeu         a0, s0, 15f
                  sll          a1, sp, t1
                  sltu         t5, sp, s0
                  ori          a1, a4, 957
                  and          s9, tp, a7
                  blt          t4, s9, 15f
                  slt          gp, t4, a5
                  srl          s2, s0, a3
                  bgeu         s10, ra, 11f
11:               xori         t2, s1, -729
                  sra          a0, s5, a6
                  ori          s9, s3, -594
                  andi         tp, t0, -1601
15:               ori          a2, s4, -463
                  lw           t1, 4(t0)
                  sra          a1, t2, a7
                  lui          a5, 757727
                  addi         t0, t0, 60
                  add          a4, a7, t3
                  slli         s10, t2, 28
29:               addi x4, x6, 1
29:               jalr x4, x4, 0
sub_2:            add          a3, t1, s9
                  addi         t0, t0, -32
                  ori          t4, sp, -1769
                  sw           t1, 4(t0)
                  lui          s3, 750262
                  srai         a6, a5, 17
                  la           s9, sub_4
                  addi         s9, s9, 269
                  lui          s2, 99362
                  xor          t2, t5, t5
                  add          s2, s8, t2
                  auipc        sp, 792686
                  ori          t6, a5, 165
                  sra          sp, s10, gp
                  auipc        ra, 395951
sub_2_j5:         jalr         t1, s9, -268 #jump sub_2 -> sub_4
                  sltu         a1, a5, a6
                  nop
                  andi         sp, s2, 1465
                  and          a0, a1, a2
                  srli         sp, tp, 17
                  andi         s0, t0, 444
                  add          t2, t0, sp
                  slti         a4, t2, -225
                  sltu         s2, t4, ra
                  sub          a7, t2, a7
sub_2_j6:         jal          t1, sub_5 #jump sub_2 -> sub_5
                  nop
                  andi         a1, a7, 511
                  auipc        s10, 517017
                  xor          t1, t3, s0
                  auipc        a6, 713765
                  lui          t5, 916518
                  beq          s6, s4, 26f
                  beq          s2, t2, 16f
                  slt          a0, a0, t6
                  andi         s3, s6, -1515
                  andi         zero, t5, -1796
                  bgeu         t2, t4, 26f
                  ori          t1, tp, -1476
                  slt          zero, zero, s4
                  srl          a1, s9, a4
                  srl          s7, a7, s1
16:               srli         s2, tp, 26
                  xor          ra, s7, s10
                  xor          s7, s1, gp
                  blt          s8, gp, 36f
                  srli         zero, tp, 17
                  nop
                  srli         ra, s8, 2
                  ori          s7, s0, 1407
                  sltu         tp, t2, s5
                  lui          s1, 241825
26:               addi         t3, s4, 647
                  add          a4, s9, s1
                  bgeu         t4, a5, 39f
                  slt          a1, s8, s8
                  andi         s0, ra, -1995
                  srl          s9, s0, s2
                  xori         tp, s9, 2001
                  srl          s9, a7, s6
                  sll          s4, s5, t3
                  srli         t3, s8, 14
36:               srai         s3, a0, 27
                  add          tp, a7, zero
                  ori          s9, a7, 74
39:               slti         t4, a7, -303
                  lw           t1, 4(t0)
                  sltiu        a2, a2, 1623
                  slti         s2, s5, -359
                  nop
                  slt          t6, s2, s7
                  xor          s1, t2, s9
                  addi         t0, t0, 32
                  srli         a7, s10, 31
75:               addi x17, x6, 1
75:               jalr x17, x17, 0
sub_3:            auipc        t5, 49844
                  bgeu         sp, t4, sub_3_stack_p
                  nop
                  add          t5, t2, zero
                  sltiu        s1, s6, -773
                  sltiu        ra, tp, 748
                  srai         t6, a0, 7
                  lui          a5, 91487
                  ori          s7, s8, 1903
sub_3_stack_p:    addi         t0, t0, -48
                  sra          a3, s6, sp
                  sw           t1, 4(t0)
                  srli         zero, a0, 9
                  addi         s0, zero, -6 #init loop 1 counter
                  add          a1, zero, s8
                  or           a1, sp, s4
                  or           s3, t6, t0
                  sltiu        s6, ra, -2023
                  addi         sp, zero, 11 #init loop 1 limit
                  srl          a6, s4, s10
sub_3_5_1_t:      slt          s7, t1, sp
                  addi         s0, s0, 9 #update loop 1 counter
                  xor          t6, s10, a6
                  addi         a3, zero, 6 #init loop 0 counter
                  srli         zero, s1, 13
                  addi         a0, zero, 10 #init loop 0 limit
                  sll          ra, s1, t3
sub_3_5_0_t:      andi         a5, s9, -211
                  or           s2, zero, t5
                  addi         a3, a3, 9 #update loop 0 counter
                  blt          a3, a0, sub_3_5_0_t #branch for loop 0
                  sll          tp, a0, s1
                  srai         tp, gp, 13
                  or           tp, s4, a6
                  srli         t2, t0, 3
                  bltu         s0, sp, sub_3_5_1_t #branch for loop 1
                  addi         s10, s9, -714
                  addi         a4, zero, 10 #init loop 0 counter
                  slt          s8, s3, t2
                  andi         t1, zero, -318
                  add          t2, s2, t4
                  xor          s6, s9, s6
                  slti         t4, a7, -316
                  addi         s3, zero, 16 #init loop 0 limit
sub_3_8_0_t:      or           a1, s2, t4
                  sub          s10, s4, s8
                  srli         tp, t2, 1
                  addi         ra, s11, 185
                  slli         s2, t0, 25
                  lui          s4, 317110
                  addi         a4, a4, 6 #update loop 0 counter
                  xori         s9, t6, 72
                  auipc        zero, 834006
                  auipc        t1, 785820
                  sub          s2, s11, t6
                  xori         s9, a4, 403
                  slti         t6, t1, 1927
                  slli         ra, tp, 8
                  slt          sp, t6, a5
                  add          gp, a3, s7
                  slt          t4, s5, a5
                  srai         t6, t1, 4
                  nop
                  beq          a4, s3, sub_3_8_0_t #branch for loop 0
                  srli         a7, s10, 25
                  addi         a2, zero, 3 #init loop 1 counter
                  sra          s1, s11, s2
                  addi         s8, zero, 10 #init loop 1 limit
sub_3_6_1_t:      add          t3, a6, a5
                  addi         a2, a2, 3 #update loop 1 counter
                  slti         s0, s2, 486
                  addi         t5, zero, 10 #init loop 0 counter
                  addi         gp, zero, 10 #init loop 0 limit
                  auipc        s7, 645322
                  srl          s10, a7, a5
                  sltu         s6, s8, t2
                  xor          s4, s10, a7
sub_3_6_0_t:      xori         sp, zero, 1590
                  addi         t5, t5, -7 #update loop 0 counter
                  or           t2, s10, a5
                  bgeu         t5, gp, sub_3_6_0_t #branch for loop 0
                  bltu         a2, s8, sub_3_6_1_t #branch for loop 1
                  auipc        t4, 799224
                  addi         a6, zero, 6 #init loop 0 counter
                  and          ra, s3, s1
                  srli         t1, a0, 3
                  addi         a3, zero, 15 #init loop 0 limit
                  slli         sp, tp, 19
                  ori          a7, s9, 1545
                  sltu         tp, gp, a6
sub_3_7_0_t:      auipc        t4, 305268
                  nop
                  slti         a2, a4, 1824
                  sra          t6, t6, s4
                  lui          a2, 972912
                  srl          s8, s10, gp
                  srl          s3, s11, t5
                  nop
                  sltiu        s10, ra, 29
                  ori          s0, t5, -93
                  xor          t5, s2, a0
                  srai         s3, t5, 11
                  slli         s3, tp, 9
                  addi         a6, a6, 9 #update loop 0 counter
                  sll          t4, t4, a7
                  or           a2, s0, zero
                  bne          a6, a3, sub_3_7_0_t #branch for loop 0
                  srai         a0, tp, 27
                  addi         a7, zero, 2 #init loop 0 counter
                  srai         zero, a5, 3
                  auipc        ra, 1002263
                  addi         t1, zero, 11 #init loop 0 limit
                  sltu         s1, s4, a7
                  sll          a1, a7, s8
                  sra          t2, s7, s7
                  or           gp, s6, a0
                  sll          s2, a2, a0
                  sll          gp, t3, t5
sub_3_0_0_t:      slti         s1, t2, -510
                  and          t3, a5, t5
                  and          s9, sp, t6
                  addi         a7, a7, 5 #update loop 0 counter
                  sltu         tp, a1, s1
                  addi         s3, s2, -1218
                  srai         s10, zero, 6
                  sltu         a1, t2, sp
                  and          s4, a7, t6
                  add          a0, t6, a2
                  add          t3, s6, a0
                  and          ra, a1, t1
                  srli         tp, s3, 0
                  sll          s3, s5, a4
                  andi         sp, s6, -2033
                  and          a3, s5, a4
                  bltu         a7, t1, sub_3_0_0_t #branch for loop 0
                  xor          s3, s10, t0
                  addi         t2, zero, 6 #init loop 0 counter
                  sub          zero, tp, t1
                  or           a7, s10, s11
                  slti         zero, a6, -261
                  slt          s10, t5, zero
                  slt          tp, t0, s9
                  addi         s7, zero, -15 #init loop 0 limit
                  xor          s9, t0, gp
sub_3_4_0_t:      sltiu        s4, t4, -1836
                  sra          s4, s3, s6
                  add          s6, s3, a1
                  sub          a5, a5, s2
                  slt          gp, s3, t4
                  srli         s4, a4, 3
                  addi         t2, t2, -7 #update loop 0 counter
                  sra          a1, s0, t4
                  beq          t2, s7, sub_3_4_0_t #branch for loop 0
                  srli         s1, a0, 22
                  addi         sp, zero, 9 #init loop 0 counter
                  sll          t2, sp, zero
                  addi         a6, zero, 9 #init loop 0 limit
                  auipc        t1, 167990
sub_3_9_0_t:      slt          a7, a3, a5
                  addi         sp, sp, -7 #update loop 0 counter
                  add          a5, a1, t3
                  addi         t2, a4, 448
                  bgeu         sp, a6, sub_3_9_0_t #branch for loop 0
                  xor          a3, t3, t3
                  addi         a1, zero, 10 #init loop 1 counter
                  and          sp, gp, t4
                  addi         ra, t4, 420
                  addi         t1, zero, 10 #init loop 1 limit
                  auipc        s10, 138191
                  nop
                  lui          tp, 739919
                  xor          s7, s6, t2
sub_3_3_1_t:      slti         s0, a3, 1021
                  ori          ra, s1, -372
                  addi         a1, a1, -5 #update loop 1 counter
                  add          s10, t4, gp
                  ori          s2, s3, -655
                  srai         tp, a3, 24
                  addi         a5, zero, 6 #init loop 0 counter
                  srai         t5, s0, 22
                  sltiu        s10, gp, 1924
                  nop
                  addi         s9, zero, 20 #init loop 0 limit
                  srl          t3, s10, t4
                  addi         a6, a3, -1611
                  andi         zero, t3, -403
                  lui          s10, 555631
sub_3_3_0_t:      nop
                  addi         a5, a5, 2 #update loop 0 counter
                  sll          t5, a2, a1
                  xor          a7, s5, t5
                  bne          a5, s9, sub_3_3_0_t #branch for loop 0
                  sltu         s3, s1, s2
                  bgeu         a1, t1, sub_3_3_1_t #branch for loop 1
                  sltiu        a0, t3, -857
                  addi         s6, zero, 9 #init loop 1 counter
                  nop
                  xori         a5, s3, -94
                  addi         t5, zero, 10 #init loop 1 limit
                  xori         a7, s5, -1777
sub_3_1_1_t:      add          a4, s0, a2
                  slli         s4, s5, 16
                  addi         s6, s6, 3 #update loop 1 counter
                  srli         a0, a3, 1
                  srl          s0, s4, a2
                  addi         s10, zero, 10 #init loop 0 counter
                  add          s7, ra, a3
                  srl          a7, s10, a0
                  addi         t2, zero, 16 #init loop 0 limit
                  xori         a3, s6, -723
                  slti         s7, a1, -1622
sub_3_1_0_t:      and          tp, a0, s3
                  addi         s10, s10, 6 #update loop 0 counter
                  bne          s10, t2, sub_3_1_0_t #branch for loop 0
                  sub          a0, a0, a4
                  and          a6, a1, a2
                  sra          zero, s9, gp
                  sltu         a7, a0, a0
                  blt          s6, t5, sub_3_1_1_t #branch for loop 1
                  slt          t1, s10, a5
                  addi         ra, zero, 10 #init loop 1 counter
                  xori         gp, a0, 933
                  addi         s6, zero, 10 #init loop 1 limit
                  sll          s7, tp, s8
sub_3_2_1_t:      addi         tp, s9, 1610
                  addi         ra, ra, -6 #update loop 1 counter
                  addi         s10, zero, -3 #init loop 0 counter
                  add          s1, s5, t6
                  addi         t1, zero, 14 #init loop 0 limit
sub_3_2_0_t:      slt          gp, tp, t3
                  andi         tp, t5, 323
                  or           s4, a1, a1
                  addi         s10, s10, 5 #update loop 0 counter
                  slli         s9, s9, 27
                  bltu         s10, t1, sub_3_2_0_t #branch for loop 0
                  add          zero, s2, t5
                  sltiu        a5, t1, 1220
                  srli         s8, s3, 1
                  slli         t4, s9, 0
                  srl          a3, t0, s8
                  bgeu         ra, s6, sub_3_2_1_t #branch for loop 1
                  and          s8, t6, s2
                  bgeu         a1, s9, 8f
                  srai         zero, t5, 26
                  xori         a0, s6, 827
                  slti         zero, t6, 265
                  bge          s1, s3, 6f
                  sra          s10, t3, gp
6:                ori          a3, s7, -79
                  andi         s0, a4, 1919
8:                slt          sp, s10, s0
                  slti         a6, ra, 111
                  lui          s8, 398943
                  bne          t3, s0, 16f
                  bne          s8, s5, 24f
                  sub          a1, t5, s5
                  sra          a2, s2, gp
                  ori          s6, t4, 652
16:               sll          a2, a0, gp
                  sub          a5, t2, s7
                  lui          a5, 986568
                  lui          a6, 898586
                  slti         s0, tp, 2010
                  beq          a7, s11, 23f
                  sll          s4, a4, s3
23:               sra          s9, a5, s8
24:               bne          s11, a1, 43f
                  or           s2, ra, t4
                  auipc        t4, 896492
                  blt          t6, tp, 43f
                  addi         s10, zero, -1580
                  nop
                  auipc        sp, 155440
                  addi         a6, a7, 819
                  srai         a5, a3, 10
                  sub          tp, t3, a0
                  sll          a3, a6, a7
                  bgeu         tp, t1, 46f
                  srl          a6, s7, gp
                  or           s7, a2, s0
                  xori         t6, a1, -896
                  lui          s7, 655761
                  ori          t5, t3, -1086
                  srl          s9, a6, t1
                  srl          gp, s3, t0
43:               sltiu        s8, s2, -465
                  nop
                  andi         tp, s1, 1372
46:               or           s0, zero, a4
                  bltu         s0, s2, 66f
                  srl          gp, a5, t1
                  srai         t4, gp, 23
                  slt          sp, s0, s4
                  bne          a2, s1, 57f
                  slti         a1, a0, 1397
                  sub          s6, sp, s0
                  addi         a3, t1, 1998
                  sltiu        s7, t6, -266
                  bgeu         t6, t2, 68f
57:               and          tp, sp, s4
                  bgeu         a4, a4, 72f
                  sll          a5, s8, s10
                  srli         tp, a1, 10
                  lui          a4, 300257
                  nop
                  bne          t6, ra, 75f
                  bltu         a1, t4, 78f
                  bgeu         s3, a2, 82f
66:               srl          s0, t0, gp
                  blt          s8, s1, 77f
68:               xori         t3, a6, -2010
                  slti         a2, a5, 1880
                  srli         s2, ra, 24
                  sltu         a0, s10, a3
72:               slti         s0, t6, -131
                  sltu         a7, s6, s9
                  sltiu        s6, t4, 1647
75:               and          a5, t5, zero
                  sub          sp, t6, gp
77:               lui          a6, 42952
78:               xori         t5, t2, -1804
                  ori          s10, a5, 1887
                  nop
                  or           sp, s1, s8
82:               srai         ra, a2, 29
                  sltiu        ra, a4, 1992
                  bgeu         t0, gp, 94f
                  blt          t2, t4, 87f
                  srli         gp, s6, 10
87:               bge          a4, t6, 107f
                  and          a5, sp, s0
                  lui          t1, 623553
                  and          gp, t5, t2
                  slli         s2, s4, 4
                  andi         s6, ra, 870
                  blt          t3, a4, 103f
94:               beq          ra, gp, 101f
                  bltu         tp, a6, 115f
                  bltu         t5, t2, 107f
                  beq          a3, s0, 104f
                  slti         a0, t0, 1216
                  xori         a0, a6, 1114
                  bgeu         s6, a0, 120f
101:              addi         a7, a0, 1566
                  slt          sp, t3, s9
103:              and          gp, t3, t4
104:              andi         s9, s0, 35
                  xori         a5, a0, 1501
                  xori         s3, s7, -1151
107:              bgeu         a4, tp, 124f
                  sra          s4, gp, s4
                  addi         ra, s9, -1852
                  lui          s0, 427103
                  srai         a3, s6, 16
                  sltiu        s9, t1, -233
                  or           t2, s4, ra
                  bgeu         s0, s7, 125f
115:              srai         gp, t5, 15
                  sltu         t4, a4, s2
                  nop
                  sub          t5, ra, a5
                  xor          a4, a7, a4
120:              sltu         s1, a4, a3
                  bne          zero, t5, 135f
                  beq          s10, s3, 126f
                  srai         s6, t1, 12
124:              and          s10, t0, s10
125:              slti         zero, a6, -438
126:              bgeu         t0, s7, 127f
127:              srai         s0, t4, 19
                  slt          a7, t0, a7
                  bne          s4, s10, 143f
                  or           tp, t2, s9
                  xori         a6, s0, 1137
                  sll          t3, t3, a1
                  sll          t5, t0, a2
                  beq          a1, t3, 153f
135:              sra          t2, a0, ra
                  addi         a5, a3, 1131
                  srli         s3, sp, 1
                  slli         a4, t3, 13
                  xor          a4, a0, a0
                  bgeu         s2, a0, 160f
                  or           t1, a2, s9
                  xor          s7, tp, t6
143:              or           t1, s9, s4
                  srl          a7, t3, a7
                  and          t5, s9, ra
                  xori         t1, ra, 271
                  add          t4, a7, s1
                  bgeu         s6, t6, 168f
                  bge          ra, a2, 159f
                  beq          a3, a2, 157f
                  addi         s10, s2, 412
                  blt          t3, a7, 154f
153:              sltu         s8, t0, ra
154:              bgeu         s5, a3, 164f
                  xori         gp, t2, 907
                  beq          s4, t4, 170f
157:              srli         t1, s2, 17
                  or           t3, s8, ra
159:              slti         ra, s11, -633
160:              sub          zero, tp, zero
                  srl          s9, t2, t0
                  bne          t2, a2, 173f
                  auipc        t4, 691442
164:              sra          t4, s6, t4
                  xori         s2, s4, 775
                  slti         a3, t4, -1208
                  bge          s5, ra, 178f
168:              xor          a2, t0, s1
                  sll          s8, zero, s9
170:              auipc        gp, 446311
                  addi         s10, s7, -83
                  sltu         a5, t2, t2
173:              slt          a4, a6, a7
                  beq          t0, t4, 182f
                  sra          s2, sp, s1
                  sltiu        s10, s3, -828
                  beq          s8, s9, 188f
178:              sra          a0, gp, s0
                  sra          sp, s4, s1
                  xor          a6, s5, s9
                  sra          t3, s5, s4
182:              ori          s9, s9, -298
                  slti         a0, a4, 1737
                  or           s3, gp, t4
                  add          gp, zero, t6
                  andi         t4, ra, -1565
                  add          t6, s0, s4
188:              srai         sp, s8, 1
                  sll          a5, s7, s1
                  add          a4, a5, s7
                  srli         a7, a4, 2
                  xori         s9, a1, 1538
                  bge          t3, s0, 199f
                  beq          zero, a4, 196f
                  blt          ra, s2, 205f
196:              srli         s8, s10, 31
                  ori          s6, ra, -986
                  bltu         a7, zero, 218f
199:              bne          zero, sp, 211f
                  andi         t2, s10, -1509
                  ori          s8, a4, 360
                  slt          t1, s8, s8
                  lui          s2, 484741
                  slt          s3, t4, a5
205:              sll          s7, s0, gp
                  slti         s4, s1, -1029
                  add          s6, a3, s10
                  sll          t5, t2, s5
                  sll          s7, t4, t6
                  auipc        t1, 268162
211:              xori         s3, s1, 114
                  addi         s8, a5, -1799
                  srli         a1, a1, 17
                  addi         s9, s11, 1419
                  auipc        zero, 616824
                  slt          t5, s7, a2
                  slti         zero, a6, 1098
218:              blt          s2, a6, 237f
                  nop
                  bge          t4, t2, 224f
                  or           gp, s1, s9
                  slt          a4, a2, s8
                  add          ra, a1, t0
224:              bge          s11, s4, 229f
                  bgeu         s5, a4, 226f
226:              bltu         t2, sp, 228f
                  srli         a0, s2, 30
228:              lui          s8, 652631
229:              ori          s8, s1, 816
                  nop
                  srl          a5, a0, s8
                  srl          s2, a0, sp
                  add          s2, t6, t3
                  srai         s6, s5, 4
                  sra          s8, sp, a6
                  srai         s3, a0, 20
237:              srli         s4, a5, 1
                  and          t1, a7, t6
                  srli         sp, a2, 27
                  xori         a4, sp, 2021
                  blt          t2, s5, 257f
                  and          a2, s8, ra
                  add          s2, s6, s11
                  sltu         ra, zero, s11
                  bgeu         s0, s11, 259f
                  srli         s8, a1, 20
                  sltu         ra, t6, a5
                  addi         s6, s2, -1997
                  srai         t4, t5, 22
                  slti         s9, s0, -1105
                  blt          t0, a7, 268f
                  sra          a7, s7, a3
                  blt          s11, a4, 265f
                  and          zero, sp, t6
                  add          s4, s9, sp
                  or           t3, t1, t6
257:              sltu         t3, s7, s5
                  bgeu         t0, s3, 270f
259:              sll          a0, s0, a6
                  sra          s2, a0, s1
                  sub          a6, t3, ra
                  slti         t4, tp, -374
                  beq          s5, a0, 280f
                  xor          s10, t0, sp
265:              slli         s3, sp, 30
                  slli         t1, s5, 0
                  beq          s6, s2, 274f
268:              srl          s1, s6, s9
                  bge          s11, a2, 283f
270:              ori          a5, a6, 1313
                  srl          a1, s1, a1
                  addi         a7, a5, -1390
                  sub          t4, a6, a5
274:              srli         a2, s2, 26
                  nop
                  srl          s10, t1, zero
                  bne          s11, tp, 288f
                  sra          s0, ra, t5
                  bltu         sp, s4, 296f
280:              and          a3, sp, s2
                  blt          t6, s9, 301f
                  lui          gp, 326890
283:              slt          a1, gp, a6
                  andi         s10, t6, 996
                  sub          t4, s7, s10
                  sltiu        t2, s10, 817
                  srli         zero, t6, 30
288:              addi         ra, s9, 1582
                  or           t4, t2, a6
                  add          a7, s11, a2
                  sltu         t2, s9, s9
                  addi         a1, s6, -115
                  and          sp, t1, s8
                  or           s7, s8, ra
                  srl          t2, s11, a4
296:              sltiu        t4, s0, -14
                  bge          t4, s0, 307f
                  bgeu         s9, a4, 306f
                  bne          s10, s11, 301f
                  sll          sp, s6, s5
301:              blt          s5, a1, 315f
                  slt          s4, a1, t5
                  andi         a1, s2, -1607
                  lui          t5, 278496
                  blt          s1, t6, 306f
306:              add          t6, s8, s1
307:              and          s7, a0, t3
                  srl          gp, s1, a5
                  sub          s8, s1, a0
                  sub          a1, s11, zero
                  and          t4, a6, t6
                  and          tp, s8, s11
                  slt          a3, s3, s0
                  bltu         t1, s10, 324f
315:              bgeu         t1, s3, 322f
                  addi         s8, a2, 966
                  addi         t6, s1, -1036
                  or           zero, t6, ra
                  slti         t1, a4, -88
                  slli         s3, s11, 4
                  and          a1, s2, s0
322:              slli         s2, a0, 16
                  sll          a2, tp, s2
324:              lui          s3, 339456
                  sltiu        s10, s7, -72
                  sub          t1, t3, s4
                  slti         s10, a5, 16
                  andi         s3, a7, 507
                  sltu         s8, zero, a2
                  bgeu         s2, a6, 342f
                  bge          t0, s1, 347f
                  sll          t5, s2, s11
                  slt          a0, s6, s7
                  slt          a2, tp, t2
                  slli         s3, s0, 0
                  srai         a2, s4, 25
                  sltu         a1, gp, s3
                  sltiu        a0, a1, -1699
                  nop
                  bne          zero, s6, 357f
                  bltu         a7, tp, 348f
342:              bltu         ra, s9, 356f
                  blt          s4, s8, 348f
                  bgeu         a2, s8, 356f
                  xori         s9, a1, -1125
                  srai         zero, a1, 10
347:              or           a5, t3, t4
348:              srai         ra, t5, 21
                  and          ra, s11, s0
                  srli         t5, s9, 6
                  sll          s8, s4, a3
                  bge          t5, s4, 362f
                  srl          t1, ra, a1
                  slt          a0, s4, s3
                  bgeu         t6, a0, 366f
356:              xor          s3, s10, a4
357:              bne          s3, s5, 377f
                  sltiu        t5, a3, -1971
                  xor          a1, ra, s9
                  slli         t3, a5, 18
                  bgeu         a4, t5, 363f
362:              xor          s8, s4, t6
363:              sub          s9, t1, a7
                  bne          a1, t4, 370f
                  ori          s10, a1, -911
366:              sltiu        ra, a3, -1398
                  andi         t3, a5, 1127
                  andi         s0, s4, -2046
                  srli         a0, s7, 11
370:              lui          s3, 759651
                  blt          a1, s9, 383f
                  or           s6, s9, s2
                  bne          t0, a6, 392f
                  srli         s3, s4, 30
                  srli         s10, tp, 28
                  add          t3, s11, gp
377:              bne          a7, sp, 396f
                  xor          tp, a0, t2
                  bge          s4, s0, 399f
                  xor          a7, a1, zero
                  sltiu        a4, sp, -946
                  auipc        ra, 74943
383:              sub          s7, s11, a1
                  slti         ra, s9, -498
                  sll          s6, a4, a3
                  slt          s4, s3, s5
                  sll          a2, t6, a2
                  bge          t5, s6, 392f
                  bge          zero, t6, 400f
                  sra          zero, t4, gp
                  xor          a3, s11, ra
392:              xor          s9, t2, t6
                  add          s1, s6, t5
                  nop
                  beq          s10, tp, 397f
396:              sltiu        ra, a4, 809
397:              slt          t1, s7, t4
                  bge          s11, zero, 409f
399:              auipc        t1, 762814
400:              blt          s10, gp, 402f
                  beq          a1, t6, 409f
402:              sltu         gp, s9, t6
                  auipc        s1, 468777
                  sll          a7, s5, s7
                  srl          a7, t1, a4
                  srai         a3, s10, 31
                  nop
                  add          s3, a6, a3
409:              addi         s9, s7, 254
                  bne          s10, a6, 417f
                  blt          s9, t2, 427f
                  addi         a6, s9, 405
                  nop
                  nop
                  sll          ra, sp, a3
                  srli         s3, s7, 25
417:              sltiu        tp, sp, 1800
                  bltu         t0, a4, 425f
                  lui          t2, 509830
                  slli         s9, a5, 29
                  ori          sp, s2, -1149
                  nop
                  xori         s4, ra, 716
                  auipc        s2, 5093
425:              xori         s10, s10, -294
                  srai         s0, a7, 27
427:              bge          a3, a5, 447f
                  sub          s4, s11, t3
                  xori         t3, s8, -661
                  sra          gp, s9, tp
                  xori         s9, tp, 1108
                  and          gp, t3, t1
                  lui          s3, 409735
                  bge          t5, gp, 446f
                  nop
                  beq          tp, a7, 456f
                  srl          t1, s5, a2
                  bltu         t3, s9, 443f
                  sll          a7, s7, s1
                  addi         s0, s3, 1888
                  xori         a1, s6, -905
                  sra          s4, t4, a6
443:              or           t5, t4, a5
                  addi         s3, t5, 1429
                  or           a2, s11, ra
446:              bge          t0, s4, 463f
447:              blt          s3, s6, 466f
                  srli         t1, a6, 23
                  add          t3, s6, s11
                  sltiu        s2, s1, 1428
                  xori         t6, s9, 1572
                  sub          t5, a5, s9
                  andi         t5, ra, -135
                  bgeu         a4, t0, 464f
                  sltiu        t6, s8, 1137
456:              lui          t5, 410873
                  bltu         s2, s9, 471f
                  andi         a5, s6, -1337
                  slli         t2, a5, 29
                  addi         s2, a0, -1979
                  blt          a5, s7, 463f
                  srli         t4, t3, 15
463:              sltu         t5, s5, a7
464:              bne          s0, t4, 475f
                  nop
466:              sltiu        s7, s2, 308
                  sub          s7, t1, t4
                  nop
                  srl          s7, t3, s8
                  and          s8, a0, t0
471:              blt          s7, a7, 485f
                  lui          s1, 149924
                  sub          t1, s1, t0
                  andi         s9, a6, -906
475:              xori         t5, s6, 564
                  ori          a1, s2, -1383
                  sll          s0, a0, s2
                  sub          a0, s9, t0
                  addi         t1, ra, 1232
                  beq          zero, t0, 490f
                  sltiu        t1, t2, 1497
                  slt          s4, a6, a4
                  or           a3, s2, a4
                  slli         a5, ra, 12
485:              slli         sp, a4, 1
                  add          a3, s2, s5
                  srli         t6, s4, 2
                  or           s3, a1, s0
                  xor          a0, s0, t6
490:              sll          s4, a6, s4
                  slti         tp, s2, -1951
                  bgeu         a7, a0, 511f
                  ori          s3, t6, -546
                  srli         t5, s11, 21
                  srl          t1, s5, t6
                  slli         a6, t6, 10
                  sub          a1, t0, t4
                  sltu         t3, sp, a6
                  lui          t1, 356206
                  and          s10, t0, t2
                  bltu         s0, s4, 513f
                  blt          s1, s8, 514f
                  auipc        s8, 987605
                  srai         a6, t3, 15
                  xori         zero, zero, 1980
                  sltiu        s6, t1, 513
                  sll          a1, s3, s3
                  srai         a2, t2, 19
                  bgeu         t2, s10, 511f
                  ori          s9, a7, 946
511:              lui          t1, 73499
                  sra          a1, a5, t5
513:              sra          a1, s10, t5
514:              sub          s9, t4, a5
                  srl          s4, t3, s9
                  srl          a1, ra, t3
                  beq          a3, t3, 518f
518:              sltiu        zero, a5, -2033
                  addi         s10, s10, 1625
                  sltu         sp, a0, a6
                  slt          s7, a6, t4
                  beq          s2, t2, 535f
                  bne          s0, t3, 535f
                  bltu         ra, sp, 530f
                  sll          s9, a2, s7
                  blt          a1, t0, 535f
                  auipc        t3, 102720
                  bne          t6, t0, 535f
                  auipc        s1, 864485
530:              auipc        t3, 823622
                  nop
                  slti         ra, s5, -1934
                  slli         a5, a5, 4
                  blt          s11, ra, 535f
535:              slli         t4, tp, 31
                  or           a5, s11, s3
                  auipc        a3, 693697
                  slti         a2, a1, -552
                  nop
                  add          t5, s4, s1
                  ori          tp, a3, 321
                  auipc        ra, 684581
                  lw           t1, 4(t0)
                  addi         t0, t0, 48
                  add          gp, t1, t5
                  sltu         a1, s11, a7
                  sltiu        s0, a4, -25
790:              addi x9, x6, 0
790:              jalr x9, x9, 0
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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x27, x5, zero
                  csrr x16, 0x300 # MSTATUS
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 31
                  bne x16, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x16, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x16, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x16, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x16, x13, ecall_handler
                  li x13, 0x1
                  beq x16, x13, instr_fault_handler
                  li x13, 0x5
                  beq x16, x13, load_fault_handler
                  li x13, 0x7
                  beq x16, x13, store_fault_handler
                  li x13, 0xc
                  beq x16, x13, pt_fault_handler
                  li x13, 0xd
                  beq x16, x13, pt_fault_handler
                  li x13, 0xf
                  beq x16, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x5, x27, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

load_fault_handler:
                  add x5, x27, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

store_fault_handler:
                  add x5, x27, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x5, x27, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x5, x27, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x5, x27, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
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
