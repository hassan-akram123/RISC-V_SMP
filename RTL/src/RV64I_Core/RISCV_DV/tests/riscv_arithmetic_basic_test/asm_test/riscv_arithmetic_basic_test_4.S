.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 1
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0xf26b59c0
                  li x1, 0x7
                  li x2, 0x5
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0xb34e4721
                  li x7, 0xa590a7dc
                  li x8, 0xfdb276fb
                  li x9, 0xc
                  li x10, 0xf27bcdc7
                  li x11, 0x0
                  li x12, 0xd
                  li x13, 0xf
                  li x14, 0x80000000
                  li x15, 0x2
                  li x16, 0xa
                  li x18, 0x0
                  li x19, 0x69d46c41
                  li x20, 0xf33ef0bc
                  li x21, 0x80000000
                  li x22, 0x5
                  li x23, 0x89bd2597
                  li x24, 0xf5d730c0
                  li x25, 0xbd2ed9a9
                  li x26, 0x419800d1
                  li x27, 0xf799ef9b
                  li x28, 0x8da7f66c
                  li x29, 0x0
                  li x30, 0x80000000
                  la x17, user_stack_end
main:             li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           a0, 0xffffffff
                  li           s8, 0xffffffff
                  li           t4, 0x0
                  li           a2, 0xe8ff731f
                  li           t2, 0x80000000
                  li           t3, 0x0
                  li           t5, 0xdd30dc89
                  li           a5, 0x889ef870
                  li           s6, 0x910b2ce5
                  sub          t4, t3, a2
                  addi         s5, a5, 2046
                  addi         a2, a0, -1965
                  sub          t3, s5, a2
                  auipc        t5, 481172
                  sub          a2, a5, a5
                  sub          s6, t4, s8
                  nop
                  sub          s5, s5, t2
                  sub          a0, t4, t5
                  auipc        s6, 841353
                  sub          a2, s6, t4
                  lui          t4, 493979
                  lui          t5, 710141
                  lui          s5, 736633
                  addi         a0, a2, -225
                  nop
                  addi         s8, a0, 1542
                  sub          t5, t2, a0
                  auipc        t4, 53386
                  add          a0, a5, a2
                  lui          s8, 632649
                  auipc        s8, 407450 #end riscv_int_numeric_corner_stream_2
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           t3, 0xed4a9407
                  li           a4, 0x3e4ad7ef
                  li           a2, 0x0
                  li           t1, 0x398e9816
                  li           ra, 0x400dc620
                  li           s7, 0x80000000
                  li           sp, 0x1938ee0f
                  li           s3, 0x80000000
                  li           tp, 0x80000000
                  auipc        sp, 57879
                  lui          s3, 128712
                  auipc        tp, 376908
                  auipc        t3, 247810
                  lui          ra, 929354
                  add          sp, a2, sp
                  lui          a4, 136005
                  sub          s3, s7, a0
                  lui          tp, 216245
                  nop
                  sub          a2, tp, t1
                  add          sp, a0, sp
                  add          sp, s7, s7
                  nop
                  auipc        s7, 878886
                  auipc        ra, 67785
                  addi         ra, a0, 1937
                  addi         a0, tp, 708
                  sub          sp, tp, t3
                  nop
                  lui          s7, 722808
                  sub          s3, tp, a4
                  sub          tp, ra, s3
                  lui          t3, 354747
                  lui          a4, 698405
                  auipc        s7, 680667
                  auipc        a4, 282633
                  addi         tp, tp, 1658
                  addi         a4, a4, -502
                  addi         t1, tp, 1454 #end riscv_int_numeric_corner_stream_11
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           sp, 0x80000000
                  li           t3, 0xd42534a6
                  li           t4, 0x0
                  li           a0, 0x80000000
                  li           t2, 0x25c443e
                  li           ra, 0x118561ad
                  li           gp, 0xffffffff
                  li           a1, 0x0
                  li           t0, 0xe0baf5a0
                  auipc        s2, 322328
                  add          s2, a0, a0
                  sub          t0, t4, gp
                  lui          a0, 724203
                  add          t4, sp, t4
                  sub          s2, s2, t3
                  auipc        s2, 490316
                  auipc        sp, 289582
                  nop
                  sub          t0, t4, sp
                  sub          s2, t4, t3
                  add          ra, gp, ra
                  add          gp, s2, t3
                  nop
                  lui          t0, 382669
                  auipc        t2, 38501
                  auipc        gp, 82849
                  add          t3, a0, t3 #end riscv_int_numeric_corner_stream_19
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s8, 0x80000000
                  li           t3, 0x0
                  li           a0, 0xb80c1a5
                  li           sp, 0x80000000
                  li           t0, 0xffffffff
                  li           s1, 0xffffffff
                  li           s6, 0x4fe86bcd
                  li           t1, 0x47476c51
                  li           a6, 0x80000000
                  auipc        s6, 585110
                  auipc        s6, 249676
                  sub          s9, s6, t1
                  auipc        s8, 870043
                  lui          t1, 627497
                  nop
                  lui          s9, 78074
                  auipc        sp, 179081
                  add          sp, a6, s8
                  auipc        a6, 344761
                  add          t3, t3, t3
                  auipc        sp, 310319
                  auipc        t1, 537630
                  auipc        s8, 781857
                  addi         sp, sp, 1223 #end riscv_int_numeric_corner_stream_3
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s8, 0x0
                  li           s0, 0x0
                  li           tp, 0x80000000
                  li           s7, 0x0
                  li           s9, 0x80000000
                  li           a6, 0x0
                  li           s3, 0xffffffff
                  li           t4, 0xffffffff
                  li           a3, 0xffffffff
                  auipc        s3, 956382
                  nop
                  auipc        a3, 155411
                  sub          a6, s7, s3
                  nop
                  sub          tp, a3, s7
                  auipc        t4, 389787
                  lui          a6, 818118
                  auipc        tp, 552411
                  add          s3, t4, tp
                  add          s8, s8, s0
                  addi         s3, s1, -1587
                  auipc        s9, 927769
                  add          a6, s3, s0
                  nop #end riscv_int_numeric_corner_stream_18
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           t1, 0xffffffff
                  li           t2, 0xffffffff
                  li           a2, 0x67bb0849
                  li           s6, 0xffffffff
                  li           a1, 0x80000000
                  li           s3, 0xffffffff
                  li           tp, 0x80000000
                  li           s10, 0x80000000
                  li           t0, 0xffffffff
                  nop
                  nop
                  auipc        t0, 951022
                  sub          t0, s10, s10
                  nop
                  lui          s10, 530076
                  auipc        t2, 274819
                  nop
                  addi         s6, a2, -288
                  nop
                  nop
                  addi         t1, ra, 283
                  addi         a1, ra, 167
                  nop
                  auipc        t2, 600639
                  lui          t0, 340306
                  nop
                  lui          ra, 980452 #end riscv_int_numeric_corner_stream_16
                  li           a0, 0xd6519b76 #start riscv_int_numeric_corner_stream_1
                  li           a3, 0xffffffff
                  li           tp, 0xffffffff
                  li           s6, 0x0
                  li           s8, 0x80000000
                  li           s9, 0xe819a6ba
                  li           t3, 0x80000000
                  li           t5, 0x6eb54ac
                  li           s7, 0xe274513d
                  li           s11, 0x80000000
                  lui          s6, 368446
                  sub          s8, a0, s11
                  nop
                  lui          s8, 893744
                  sub          t3, s8, s11
                  auipc        a3, 895779
                  addi         s9, s9, -1764
                  addi         a3, s9, 239
                  lui          a3, 6613
                  sub          tp, s6, s8
                  sub          s9, a0, s6
                  sub          t5, s11, s8
                  sub          s7, t5, a3
                  nop
                  lui          tp, 140292
                  auipc        s11, 90618
                  nop
                  nop
                  lui          s9, 618680
                  addi         s7, t3, -244
                  auipc        s11, 204177
                  add          t5, s7, s6
                  nop
                  addi         s9, a3, 1031
                  sub          s6, a3, s7
                  addi         tp, a0, -1817
                  add          s7, s8, tp
                  lui          a0, 888028 #end riscv_int_numeric_corner_stream_1
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           a4, 0xffffffff
                  li           s5, 0x80000000
                  li           t1, 0xc989a613
                  li           s10, 0x80000000
                  li           s8, 0xffffffff
                  li           gp, 0xe288865e
                  li           t4, 0x1b1ac3bb
                  li           s2, 0x0
                  li           a6, 0x0
                  add          s10, t4, tp
                  nop
                  auipc        s2, 291437
                  lui          s10, 174344
                  nop
                  auipc        gp, 498867
                  add          t4, s8, s5
                  nop
                  lui          a6, 1001393
                  add          a6, gp, t1
                  add          a4, t1, s8
                  auipc        a4, 296105
                  addi         t1, s10, -626
                  add          a4, tp, a6
                  auipc        gp, 502555
                  auipc        a6, 895113
                  lui          s2, 864228
                  auipc        s8, 555399 #end riscv_int_numeric_corner_stream_6
                  addi         t5, a7, 339
                  slti         a4, a5, -1649
                  sll          a4, t0, s6
                  slli         a3, s7, 13
                  xor          a6, s9, s11
                  slli         s11, s1, 22
                  sll          t0, t2, a0
                  sltiu        a2, t3, -1306
                  nop
                  slti         s8, t5, 662
                  sub          tp, a2, t5
                  sltiu        s5, s11, 1803
                  andi         t2, ra, -1540
                  slti         t2, s2, -147
                  sltiu        s1, a3, 423
                  sltiu        a1, a2, 286
                  xor          s2, t4, t0
                  srli         s0, a3, 3
                  slli         s8, s4, 21
                  sll          a3, s10, gp
                  andi         s11, s5, 836
                  auipc        s11, 254944
                  slt          a2, zero, s1
                  sra          sp, a2, t6
                  xor          s11, s4, t1
                  slti         zero, s3, 147
                  andi         s2, s10, -268
                  addi         s6, a4, 614
                  or           s11, ra, s1
                  srai         s0, a2, 16
                  addi         s1, s0, -347
                  srai         a3, zero, 24
                  nop
                  lui          s1, 958047
                  or           s7, tp, t3
                  srl          s7, t5, s8
                  sra          t0, t1, a6
                  xor          t3, s5, t2
                  sra          t5, t6, a6
                  sltiu        a3, a7, 1734
                  sltiu        s11, s5, -1030
                  xor          s8, a1, a4
                  add          s1, t4, t6
                  sll          s5, s2, a2
                  sra          s8, s1, a7
                  add          t0, s0, s6
                  add          a2, a0, a6
                  lui          s0, 887274
                  xori         s5, a6, 711
                  and          a1, t3, a0
                  add          a4, a0, t3
                  srl          a1, s9, s1
                  sll          s11, s7, a5
                  slli         t4, a0, 12
                  andi         s8, t4, 834
                  and          a6, sp, t4
                  add          a2, s10, s4
                  or           t3, s0, t5
                  sub          t5, t2, s9
                  srli         a6, t6, 19
                  and          s2, tp, s5
                  auipc        t1, 939573
                  xor          s2, s7, a1
                  srl          s0, s1, s1
                  slt          t2, sp, s3
                  xor          tp, s2, gp
                  srai         zero, s1, 15
                  sltu         s9, a2, s0
                  srai         t5, s0, 22
                  sltu         tp, s5, s4
                  auipc        s0, 88400
                  auipc        t1, 850728
                  xor          s0, t5, s1
                  slt          s5, s3, s9
                  slli         tp, t6, 17
                  nop
                  sltu         s10, a1, a0
                  srli         t1, a7, 18
                  addi         a4, a3, -775
                  srl          s3, gp, t0
                  xor          a0, ra, t0
                  xori         t3, t0, 1610
                  sltiu        t4, s9, 1944
                  add          a3, a6, s6
                  and          a6, s1, s11
                  ori          t4, s7, 220
                  lui          ra, 1000289
                  sll          gp, s3, s11
                  sltu         s0, s3, s8
                  sub          s10, s2, a6
                  nop
                  slti         a0, ra, 734
                  slt          tp, t0, sp
                  and          s8, s5, t3
                  lui          zero, 532061
                  ori          sp, t2, 2000
                  xori         t4, a7, 1554
                  sltiu        a5, a0, 1860
                  andi         a1, s5, 86
                  sub          s11, t5, s2
                  andi         s6, s6, 1367
                  ori          s5, s2, 441
                  xori         t5, s6, -894
                  nop
                  xori         a2, s2, 81
                  sub          t0, s1, t0
                  nop
                  slt          t5, a6, s9
                  sltu         s6, t1, s3
                  sltu         t5, ra, s5
                  slt          t5, a2, t5
                  sltu         t1, s10, a5
                  slti         s9, tp, -1600
                  slt          t5, a6, s7
                  srl          a0, t1, tp
                  srai         zero, s0, 1
                  sll          t0, t3, t3
                  slli         s1, s9, 3
                  and          a6, a1, sp
                  xori         a6, tp, 1403
                  slli         s9, sp, 21
                  xor          s5, t4, a6
                  slt          s6, a1, a4
                  sltu         a1, a6, ra
                  auipc        a2, 976799
                  slti         s10, t3, -1845
                  xor          tp, t5, a6
                  xori         t4, s10, 632
                  or           a1, t6, a0
                  srai         s3, s8, 4
                  sltiu        a0, s10, -813
                  nop
                  auipc        gp, 108747
                  auipc        s7, 741980
                  add          t2, gp, s2
                  addi         ra, a1, 336
                  and          tp, a0, s5
                  sub          s3, s8, zero
                  ori          t3, s0, -2
                  sra          t5, s4, s7
                  xor          s1, t0, s6
                  lui          a5, 180586
                  andi         s2, s7, -509
                  slt          sp, a6, a0
                  addi         a3, t5, 829
                  auipc        t3, 349130
                  and          s9, ra, s11
                  addi         t5, t6, -672
                  or           t0, t4, s1
                  ori          s7, a0, 1737
                  and          s7, t0, a7
                  xori         s11, a4, 1001
                  slti         zero, t1, 1741
                  slt          s2, t0, zero
                  srli         s3, sp, 23
                  or           s3, s5, t1
                  srl          a5, s0, t2
                  and          t5, t6, t5
                  sll          zero, a6, s9
                  add          t0, zero, s7
                  slt          a4, s3, a2
                  ori          s0, t3, 821
                  add          s10, t3, a6
                  sra          sp, s7, t0
                  sra          t3, gp, gp
                  auipc        a2, 914803
                  srl          s2, a5, a4
                  xor          t3, s6, gp
                  slti         s3, s5, -1827
                  slti         s10, a6, -833
                  ori          t1, a1, 7
                  auipc        tp, 588278
                  and          a0, t3, s11
                  and          s7, sp, t2
                  srl          s11, s8, a0
                  xori         s7, zero, 717
                  ori          t5, t1, 1154
                  srli         a0, s9, 19
                  xor          sp, gp, s8
                  andi         ra, s4, 1147
                  slti         t4, s6, 1064
                  addi         a2, a4, 584
                  or           t1, gp, t4
                  sub          s3, t3, s10
                  auipc        a0, 360549
                  ori          s6, t1, -882
                  slt          a1, s0, s3
                  slli         s0, t0, 20
                  or           s0, s11, s1
                  sll          a3, t6, t6
                  lui          s10, 291825
                  andi         t1, sp, -1596
                  slt          s5, a4, t6
                  srai         t3, t2, 15
                  srai         s3, a0, 14
                  or           s3, s1, s1
                  slt          t0, a5, a7
                  slti         tp, a5, -25
                  sub          s2, tp, a3
                  sltu         s5, a7, a0
                  sltu         s5, a1, s3
                  slli         a2, t6, 10
                  srai         a4, a7, 21
                  and          s8, t3, t2
                  slt          s6, s10, t6
                  slti         a5, t3, 1379
                  andi         s1, s4, 935
                  slti         zero, s10, 190
                  srl          a2, t4, a2
                  xori         s6, gp, 996
                  sub          tp, s9, s4
                  addi         s8, s9, -988
                  sra          s0, s3, a0
                  add          s9, t6, a2
                  xori         s6, a7, 1439
                  sll          a5, s6, t4
                  slt          s2, tp, a1
                  sltiu        a2, ra, 788
                  addi         a2, a5, -1147
                  sub          s10, t6, a0
                  addi         s11, s1, 826
                  add          t3, s11, zero
                  slt          gp, zero, s2
                  sub          tp, tp, gp
                  nop
                  srl          t4, s5, a5
                  or           t2, t1, s3
                  nop
                  slti         s2, s9, 1526
                  srai         s3, a6, 9
                  sra          s8, t3, s3
                  addi         s10, tp, 1590
                  srl          s3, t1, t4
                  sub          s2, a7, t2
                  sltu         s0, t5, tp
                  lui          a5, 920485
                  sub          a5, s3, ra
                  sll          a3, s0, t3
                  slti         s8, ra, -16
                  lui          t1, 364506
                  xori         s10, s0, 1578
                  nop
                  addi         s5, s8, 197
                  xor          t2, t6, t6
                  slti         s0, t2, -839
                  sltu         gp, zero, t4
                  xori         s0, s11, 639
                  add          s10, ra, a0
                  srai         s0, gp, 31
                  sltiu        t5, t2, -241
                  auipc        tp, 699575
                  sltu         zero, a0, t6
                  slt          ra, zero, s9
                  sub          s9, t1, s5
                  ori          s5, t6, 219
                  slli         gp, a3, 15
                  lui          s2, 55962
                  sltiu        s10, s5, -1590
                  sltiu        t3, a4, -1687
                  srai         a6, s9, 16
                  sub          s9, s6, a2
                  sub          t2, tp, a5
                  xor          a3, gp, t0
                  ori          a3, s4, 591
                  sltiu        a6, t0, 1028
                  addi         s10, t6, 1725
                  xori         t0, t2, 939
                  auipc        s8, 299596
                  or           s7, s3, s1
                  sub          s8, t4, s10
                  sltiu        gp, t6, 345
                  sub          s7, s0, t4
                  andi         t1, t5, -636
                  slt          zero, s6, t1
                  srli         s1, a0, 20
                  nop
                  sra          t0, a3, tp
                  add          s9, s8, s3
                  ori          a3, t6, -824
                  or           s7, a6, a0
                  sltu         t2, t4, ra
                  sltiu        t2, s6, -1328
                  srl          t4, s0, a2
                  sltiu        s2, s6, 710
                  slli         s10, s3, 11
                  and          a2, s5, a3
                  addi         t3, s3, 1486
                  slti         t1, s10, 1484
                  srl          s6, t5, a7
                  srl          zero, s3, a1
                  slli         t4, zero, 19
                  andi         s10, tp, -1977
                  addi         ra, a2, -1729
                  xor          a0, s2, t0
                  slli         tp, zero, 26
                  andi         sp, s11, -255
                  nop
                  sltu         tp, tp, a5
                  or           tp, s9, a2
                  add          a2, s1, a2
                  sll          a5, a5, t2
                  andi         sp, s11, 671
                  xori         s6, tp, 1292
                  nop
                  sltu         ra, a7, a2
                  andi         s0, a4, -1438
                  andi         a2, s6, 1023
                  srai         a6, s2, 22
                  srli         tp, s5, 26
                  slli         t5, t5, 4
                  addi         gp, s11, 398
                  sub          t3, tp, gp
                  auipc        s9, 721880
                  xori         s0, s3, -495
                  srl          ra, a5, t5
                  nop
                  add          s9, a2, s6
                  slli         t4, t6, 16
                  srai         t4, a5, 28
                  srli         t4, s7, 0
                  auipc        t0, 351004
                  nop
                  xor          sp, t3, s9
                  slli         s7, t0, 4
                  auipc        s2, 718525
                  auipc        a4, 464833
                  sub          t4, t6, a7
                  add          zero, s2, s10
                  sub          s3, s3, a7
                  srli         s11, a6, 20
                  slli         s6, t1, 10
                  and          a2, ra, a2
                  auipc        t2, 215388
                  srai         t1, t2, 2
                  sltiu        s1, s9, -203
                  ori          s5, t6, -1359
                  sra          s0, s5, t0
                  xor          a5, a5, s8
                  sll          t0, s5, a5
                  srli         t3, s11, 5
                  xor          zero, t3, t4
                  xor          s1, s10, s0
                  srl          t0, t4, s7
                  addi         t5, s6, 725
                  xor          zero, sp, a1
                  slli         s11, a2, 25
                  sra          t0, sp, s4
                  xor          a3, t2, a0
                  nop
                  srl          sp, s6, t2
                  xori         t3, a7, 1395
                  lui          a2, 93985
                  xor          s1, gp, s7
                  srai         t3, sp, 14
                  srai         gp, t5, 28
                  ori          s11, a6, 1892
                  xor          tp, zero, s0
                  nop
                  slt          zero, t2, a0
                  sra          a1, s6, s9
                  sltu         s10, t6, s6
                  xor          s6, s1, a6
                  srl          s6, t2, a3
                  xor          t3, t0, sp
                  slti         a1, s0, 1111
                  sltu         a5, t2, gp
                  sll          s0, a5, s4
                  xor          t0, a1, s5
                  sltu         t4, t1, a7
                  sll          s5, s9, zero
                  add          s3, a3, s4
                  sltu         t5, s11, s9
                  sltiu        s3, s4, 2044
                  slli         a4, ra, 17
                  addi         s1, t3, -414
                  andi         gp, s7, 268
                  slli         s2, a0, 16
                  xor          s0, s4, s8
                  andi         s10, t4, -34
                  sltiu        sp, s6, 109
                  srai         a0, t5, 9
                  srai         zero, s5, 4
                  xori         a3, t1, -1161
                  sll          s11, s7, gp
                  sltiu        t0, a7, -267
                  srl          s11, tp, a3
                  andi         gp, a6, -149
                  sll          s5, s11, s4
                  xor          a6, t5, a4
                  xor          s8, tp, t6
                  xori         s1, s10, -1609
                  auipc        s10, 67490
                  xor          tp, a3, gp
                  sub          s1, a1, t1
                  ori          a6, s3, -1690
                  srli         s1, t1, 25
                  add          s5, t4, s10
                  xor          s5, s11, s10
                  sra          t0, a1, s3
                  srai         s3, t5, 20
                  sll          ra, t3, s9
                  sltu         s7, t3, a1
                  andi         s8, t3, 1427
                  sub          s3, a4, a2
                  sltiu        a2, s5, -1164
                  xor          s1, s8, a0
                  slti         s1, a6, 850
                  auipc        s10, 218685
                  sra          t1, t1, a6
                  sra          s11, s3, s10
                  slt          t0, a5, s3
                  srai         a0, a1, 13
                  and          s0, s8, t3
                  lui          a2, 347567
                  xor          t0, s10, t4
                  sltiu        t3, t1, -467
                  and          t3, s10, s7
                  sra          a2, a5, t3
                  ori          t2, a7, -267
                  sra          t0, a3, t6
                  srl          s9, s11, s4
                  xor          s5, t1, gp
                  ori          s1, gp, -1786
                  sltiu        a2, t6, 1856
                  srli         zero, s11, 15
                  auipc        s0, 700652
                  xori         t4, a7, 1524
                  and          s0, a0, s6
                  addi         s6, a3, -189
                  sra          s3, a3, s4
                  slt          a5, t1, t4
                  xori         a6, a3, 1368
                  sra          a6, s11, t3
                  srli         ra, tp, 21
                  srl          t2, gp, ra
                  lui          s6, 539391
                  sra          a4, zero, t3
                  sltiu        s11, s3, -750
                  sra          s8, s0, t4
                  and          sp, s11, ra
                  lui          s8, 674732
                  xori         gp, s1, -428
                  srai         s11, sp, 16
                  and          s6, s3, zero
                  sra          s2, s3, s2
                  sub          a6, a0, s3
                  andi         t2, zero, -1249
                  slt          t0, s0, sp
                  xor          sp, s9, a7
                  slli         t1, a4, 29
                  xori         a2, a1, 1143
                  add          a4, t4, a4
                  slli         t4, s3, 18
                  or           s6, s9, a2
                  slt          s1, a7, s8
                  srl          s9, t0, a0
                  srai         t1, tp, 12
                  addi         s8, t6, -1929
                  addi         s1, t0, 1938
                  sub          t1, t1, s1
                  srl          s10, a7, zero
                  lui          t3, 660347
                  xori         sp, s5, -696
                  xor          t3, s5, sp
                  lui          s7, 7273
                  slti         s3, s7, -622
                  lui          a1, 946238
                  xor          s3, s8, s3
                  ori          t5, a3, 1042
                  srl          a5, s5, a5
                  and          a5, a3, t3
                  xor          s6, s3, a5
                  auipc        a3, 66676
                  sub          s1, s7, s10
                  srl          s8, s4, s4
                  sra          a1, zero, a0
                  srai         a0, gp, 17
                  sub          t2, ra, gp
                  addi         s11, t1, 1317
                  xori         a4, t6, -1131
                  or           gp, a2, t5
                  srli         s1, t6, 27
                  ori          a4, s1, 230
                  slt          a3, a2, a7
                  addi         sp, s10, 996
                  sltu         ra, s4, tp
                  sltiu        t0, t6, 323
                  srli         zero, s8, 1
                  add          sp, a2, s4
                  xori         s5, a1, 409
                  sltiu        s0, a4, -237
                  srli         a4, a2, 24
                  auipc        a6, 897397
                  ori          s5, t3, -153
                  xor          s1, a0, t6
                  add          s1, tp, a4
                  sltiu        zero, ra, 746
                  slt          tp, s8, sp
                  slli         a1, a6, 29
                  sra          ra, s0, ra
                  srli         s1, t0, 1
                  or           t1, t2, ra
                  xori         s11, s10, -740
                  slt          gp, t4, ra
                  ori          t3, s11, -119
                  srl          s7, s8, a0
                  slli         s10, sp, 5
                  andi         tp, s9, 2012
                  addi         ra, s0, 212
                  sltu         t1, s2, a6
                  xor          a6, s0, s2
                  nop
                  xor          s2, gp, s5
                  ori          ra, s5, 1076
                  srl          tp, sp, t0
                  add          ra, s8, tp
                  slt          t5, a7, gp
                  xori         s7, t2, -1387
                  sub          s6, s7, a3
                  slt          s2, ra, a2
                  sltiu        s7, zero, 1122
                  sra          s5, t0, t5
                  auipc        t3, 1047624
                  sra          s8, t5, a1
                  xor          s3, gp, s8
                  slt          a1, s8, s10
                  lui          s3, 996387
                  ori          s9, a5, 890
                  add          a3, s7, a3
                  sll          a5, s0, s1
                  xor          ra, s9, sp
                  sub          s3, sp, t0
                  xori         sp, t5, -628
                  srli         s3, s2, 22
                  slt          a0, s1, s0
                  srli         a1, tp, 23
                  slti         t3, zero, 1340
                  srli         t5, s7, 28
                  add          s3, a3, s9
                  auipc        a2, 978307
                  slti         s7, t6, -2038
                  slti         a1, s10, -315
                  xor          a5, s4, a3
                  slti         a0, zero, 1096
                  sra          a5, zero, s9
                  sll          t2, t2, t5
                  sltiu        a3, t0, -330
                  addi         a1, gp, -1522
                  slti         t2, t6, -1274
                  xori         a5, s2, 542
                  slli         s9, s3, 5
                  slti         ra, a1, -1580
                  srli         s3, a2, 6
                  xori         a1, t2, 548
                  srli         a0, t1, 8
                  or           a2, a6, a2
                  addi         t0, sp, -1332
                  add          s11, t5, ra
                  sltu         s2, t2, a0
                  add          s7, s0, s4
                  nop
                  xori         a5, a4, 1858
                  xor          t3, s7, a7
                  srli         gp, gp, 4
                  or           a5, sp, zero
                  ori          t2, s2, -1640
                  xor          t0, t5, t2
                  xor          tp, gp, s6
                  auipc        s0, 277910
                  sltu         s6, t2, s2
                  and          s1, s0, t0
                  nop
                  srai         a6, t1, 24
                  sltu         a4, t4, s9
                  sltiu        s6, a2, 419
                  sltiu        s7, tp, -1015
                  addi         s8, s11, -861
                  slt          a2, zero, a1
                  slli         s10, s5, 15
                  sltu         sp, t4, t2
                  slt          ra, s1, a0
                  sltiu        zero, s3, 1732
                  andi         ra, a3, -1821
                  slt          s11, s8, t1
                  xori         zero, sp, -145
                  xori         s7, t3, 115
                  sltiu        s11, s4, 1411
                  sra          s6, s5, s8
                  xor          s7, s11, a4
                  srl          t4, zero, sp
                  slti         t0, t2, -362
                  slti         s7, a4, -893
                  andi         a3, a0, 2020
                  ori          t2, s6, 669
                  srli         zero, sp, 14
                  srai         t4, tp, 6
                  sltu         t0, s9, s5
                  nop
                  xori         s10, t5, 183
                  slt          t2, s6, a5
                  srai         a0, t2, 15
                  lui          s3, 1040276
                  slli         s3, s3, 15
                  lui          t3, 953163
                  slli         t1, s5, 24
                  and          s11, s8, s2
                  slli         sp, s9, 21
                  slli         s3, t0, 19
                  nop
                  sll          ra, t4, a3
                  addi         zero, t6, -514
                  nop
                  add          t2, t2, a5
                  andi         a0, t0, 1854
                  add          t0, a2, t0
                  auipc        s1, 686896
                  srl          t2, t2, s7
                  sltu         s8, a0, a0
                  addi         a4, s8, -277
                  srai         zero, ra, 8
                  srli         a0, t0, 4
                  sltiu        s7, s0, -1845
                  and          sp, s7, a7
                  nop
                  xori         t4, s2, -1900
                  srai         s5, s1, 26
                  slli         a2, s0, 12
                  slti         s10, s1, 109
                  srl          s10, gp, s4
                  xor          t0, s10, t4
                  sub          a6, s10, tp
                  andi         s2, a2, 1937
                  auipc        s1, 305240
                  slli         ra, s9, 28
                  slti         a6, s1, -1333
                  or           s3, ra, zero
                  srai         t3, a4, 23
                  xor          s0, s5, t6
                  add          s2, s1, s0
                  slli         s8, s4, 31
                  slli         s9, s11, 24
                  srl          s3, a2, s2
                  auipc        a6, 467377
                  or           s6, a5, a5
                  nop
                  xori         s5, a5, 90
                  nop
                  slti         s10, t1, 1883
                  sll          tp, s6, t6
                  andi         s2, a7, 533
                  auipc        s7, 571902
                  addi         a6, tp, -1924
                  srl          a4, a6, t1
                  nop
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           t1, 0x0
                  li           s1, 0x87991d9
                  li           s7, 0x50932d95
                  li           s5, 0x80000000
                  li           a0, 0x80000000
                  li           gp, 0xffffffff
                  li           t0, 0x80000000
                  li           s9, 0x790f388a
                  li           tp, 0x0
                  lui          t1, 589313
                  addi         s7, t1, 1033
                  add          tp, a0, s5
                  auipc        s5, 154529
                  add          a0, s5, s5
                  lui          a0, 485916
                  sub          s9, s7, s5
                  sub          s9, s9, t0
                  add          a0, a3, gp
                  addi         tp, s1, 591
                  auipc        tp, 554636
                  add          a0, s7, s9
                  add          s5, t0, tp
                  auipc        gp, 399738
                  nop
                  add          s5, gp, s1
                  sub          s1, s1, s5
                  nop
                  add          a0, s1, s5
                  sub          gp, t1, gp
                  addi         t0, s1, -1621
                  lui          tp, 235518
                  auipc        t1, 448807
                  add          s5, tp, s7
                  nop
                  sub          a0, a0, a3
                  nop
                  nop #end riscv_int_numeric_corner_stream_15
                  ori          s2, s5, 342
                  srai         zero, t4, 13
                  srl          s5, t0, s4
                  slli         s10, s11, 5
                  add          gp, a2, a3
                  xori         s10, t5, 499
                  sra          a0, a3, a6
                  xori         t1, a4, 1551
                  sub          gp, s8, s3
                  and          a6, s8, a5
                  slti         a1, tp, 954
                  lui          a5, 997274
                  addi         s2, ra, -122
                  srai         a4, t2, 29
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           tp, 0x80000000
                  li           s7, 0x80000000
                  li           s5, 0xffffffff
                  li           a6, 0xffffffff
                  li           s10, 0x80000000
                  li           s0, 0x0
                  li           t1, 0x80000000
                  li           t2, 0x80000000
                  li           t3, 0x0
                  add          a6, a3, tp
                  lui          t3, 278840
                  auipc        a3, 295454
                  add          s10, t1, a6
                  addi         t3, a3, 1905
                  sub          s0, s10, tp
                  sub          s0, a3, a6
                  add          s7, a6, s10
                  sub          a6, t1, a3
                  add          t3, t3, s10
                  nop
                  sub          s5, a6, a3
                  lui          a3, 279369
                  lui          tp, 529901
                  addi         s10, t2, -670
                  auipc        t1, 877712
                  sub          a3, t1, a3
                  add          s7, s7, s0
                  addi         s7, a3, 1581
                  add          s7, tp, t1
                  sub          t1, tp, a6
                  lui          tp, 953698
                  addi         s7, s7, 95 #end riscv_int_numeric_corner_stream_4
                  sltu         a5, tp, s10
                  sltu         a6, a0, t0
                  sll          tp, t5, s7
                  sra          t2, s1, a3
                  auipc        t0, 280361
                  xori         gp, s7, 482
                  sltu         a1, s7, a6
                  nop
                  sll          s1, s0, ra
                  add          ra, ra, s7
                  addi         t0, s4, 315
                  add          s3, a3, s3
                  sltiu        s5, t1, -6
                  lui          t2, 744808
                  nop
                  nop
                  slli         a1, t0, 8
                  andi         sp, t1, 1692
                  add          a3, zero, a2
                  slti         s10, gp, -1175
                  auipc        t5, 681235
                  sub          a4, a2, sp
                  slli         a6, a3, 17
                  addi         s1, s1, 914
                  nop
                  or           zero, s0, s1
                  add          s11, sp, s6
                  slti         s1, t2, -299
                  sra          t4, ra, gp
                  addi         s3, t4, 1313
                  andi         a0, s3, -1472
                  andi         s3, a1, 507
                  lui          t5, 813997
                  lui          zero, 97186
                  or           a5, zero, s0
                  or           a0, t1, a5
                  sll          gp, ra, s3
                  lui          s9, 742273
                  addi         t4, zero, 67
                  or           t1, a5, t2
                  lui          s2, 225301
                  sltu         s2, s2, s2
                  nop
                  sltiu        s5, a3, 160
                  sra          t3, sp, t2
                  srai         gp, a1, 21
                  sltu         a4, a2, s9
                  sltiu        a4, s0, -1356
                  slt          s10, s9, s1
                  sll          tp, s7, t2
                  and          a1, t5, ra
                  slli         sp, s3, 19
                  or           a1, s2, gp
                  add          a1, t4, gp
                  nop
                  srli         t0, t0, 2
                  sub          t2, s10, s8
                  xori         t1, s11, 1809
                  slti         s1, s8, -139
                  sra          s0, t1, a3
                  srl          a2, a1, s1
                  sltiu        s1, t2, -385
                  auipc        a3, 746640
                  and          t4, t6, sp
                  sltu         s2, s6, t6
                  sltiu        s8, gp, 151
                  sub          s6, s7, s10
                  andi         s7, t5, 1040
                  slli         s2, s8, 12
                  ori          s9, sp, 1491
                  slli         t4, a7, 12
                  slt          s11, zero, t5
                  nop
                  srai         a5, t3, 8
                  srli         a0, gp, 16
                  addi         s2, t6, 343
                  lui          a3, 558189
                  slli         t4, a4, 14
                  add          tp, t2, sp
                  slti         s7, s7, -958
                  slt          s10, s9, a1
                  sub          zero, a6, s5
                  sub          s7, s11, s1
                  srl          a3, t0, a4
                  xori         s1, s2, -562
                  ori          a4, a7, -1755
                  and          s0, s3, t2
                  nop
                  slt          a1, s5, t0
                  sltu         s2, zero, s3
                  slt          s8, s3, ra
                  add          a6, s11, s11
                  srli         a4, s9, 30
                  slt          zero, s1, a6
                  addi         a6, a4, 460
                  srai         s7, a4, 12
                  andi         a4, s6, 1088
                  slti         a5, s2, -673
                  sub          a2, t1, t4
                  addi         a6, tp, -1777
                  addi         s0, t1, 1874
                  add          tp, s7, t0
                  srai         a5, s6, 31
                  and          s2, s3, s3
                  sll          gp, s3, a0
                  sltiu        ra, a0, 1650
                  add          s5, t5, s11
                  or           s7, t4, gp
                  ori          s6, s9, -1444
                  srai         t4, s2, 3
                  sltu         a6, a4, s8
                  andi         gp, s1, 1925
                  andi         a1, s4, 1709
                  addi         s9, t5, 786
                  and          s7, t2, s4
                  srli         t2, t0, 12
                  sll          a2, a5, s2
                  srai         sp, a6, 1
                  or           s3, s9, a7
                  ori          s0, s7, 364
                  sll          s0, a7, t0
                  sub          ra, s6, sp
                  ori          s5, t5, 1100
                  sub          sp, t0, a0
                  srli         a3, s6, 17
                  nop
                  auipc        s1, 513193
                  ori          s7, ra, -72
                  slt          s2, ra, a0
                  srli         s6, s2, 21
                  sll          t4, s3, a4
                  srli         s10, s2, 10
                  xor          s7, a5, t3
                  ori          a5, s6, 362
                  srl          s6, tp, s4
                  slt          a1, s8, s10
                  srai         s0, zero, 11
                  and          s11, s2, t6
                  xor          a0, a6, tp
                  srl          ra, t2, s8
                  ori          a3, s2, -335
                  srl          s2, gp, t6
                  slti         s5, s5, 492
                  srli         a2, a1, 25
                  and          ra, t3, s6
                  auipc        gp, 722043
                  slt          a4, s6, a2
                  and          zero, s9, s11
                  slt          a5, t0, a6
                  sltu         s1, s1, tp
                  addi         s6, a0, 713
                  lui          zero, 481126
                  ori          a4, s4, -1024
                  lui          t1, 1032650
                  andi         t0, s1, 156
                  xor          t4, a5, s1
                  sltiu        a4, s5, -787
                  auipc        a1, 757624
                  slli         t5, s7, 10
                  andi         s8, t5, -949
                  slti         s2, a6, -364
                  auipc        t1, 215356
                  slti         t0, a3, -1396
                  and          s9, s5, a5
                  add          t1, sp, t4
                  or           s5, a5, sp
                  slt          s5, zero, a7
                  sltu         s6, s11, a3
                  xori         ra, s5, -364
                  srl          s1, s3, s10
                  xor          a6, s5, a5
                  srl          sp, s6, a0
                  srl          s9, tp, a0
                  andi         t1, tp, 1519
                  srli         a0, t0, 0
                  srai         s3, a2, 29
                  addi         t0, s1, 976
                  sltiu        s10, a3, 43
                  auipc        s6, 520759
                  and          zero, a6, sp
                  lui          t5, 504944
                  andi         a6, a5, -1604
                  slt          a3, t1, a0
                  add          s10, a7, t0
                  auipc        gp, 609590
                  or           t4, a5, s7
                  xor          gp, s6, a4
                  xori         t1, s9, -1660
                  srli         a0, a6, 29
                  srl          a3, s8, t1
                  srl          zero, tp, a0
                  lui          s9, 560414
                  sub          a5, a1, a5
                  sll          s5, s10, s3
                  addi         t3, s3, 847
                  andi         s9, a4, 1176
                  lui          s6, 933068
                  sltiu        a6, s0, -459
                  srli         t2, s7, 31
                  lui          tp, 930027
                  ori          t2, a4, 244
                  srai         t2, s11, 8
                  sra          zero, s3, t0
                  sub          zero, a3, a1
                  slt          s6, a2, a0
                  ori          s0, s10, -1067
                  slti         s6, a0, 1844
                  srli         s8, s4, 15
                  sll          s10, gp, a3
                  slli         s5, a7, 9
                  add          s2, a1, t3
                  slti         a6, s4, 1421
                  xori         a6, a4, -17
                  nop
                  xor          a2, sp, s6
                  ori          tp, t1, -2034
                  slti         s1, s7, -885
                  xori         a2, sp, 1279
                  and          s1, a1, zero
                  lui          sp, 495137
                  auipc        a1, 55962
                  sltu         a3, zero, s9
                  ori          a0, a1, -1244
                  xor          s9, t4, a0
                  sltiu        tp, t5, -1951
                  addi         t0, t5, -1677
                  slt          s3, a2, s0
                  sltu         s11, t5, t0
                  sub          s7, zero, s8
                  add          a0, a6, s1
                  slt          s5, s7, s5
                  srli         t5, s5, 8
                  sub          t4, s3, a4
                  ori          t4, t1, 163
                  ori          a5, a4, -130
                  sll          s8, t4, s7
                  srli         s11, a5, 9
                  slti         a6, s6, 306
                  sltu         s2, s3, sp
                  sll          a6, t3, s7
                  sltu         s0, t5, s9
                  sltu         s10, s8, s4
                  xor          a1, s3, zero
                  auipc        s3, 81104
                  auipc        s8, 244032
                  xori         a6, t3, 1771
                  andi         a5, tp, 721
                  or           tp, s2, s8
                  srai         t1, s0, 5
                  lui          s3, 603722
                  sltiu        s1, s6, -1684
                  nop
                  auipc        sp, 174238
                  andi         s2, zero, -1716
                  xori         s11, zero, -1100
                  or           s9, s9, s1
                  nop
                  nop
                  sra          s1, s10, ra
                  xori         s3, t1, -1978
                  xori         sp, s11, 1080
                  or           ra, s5, gp
                  addi         tp, s6, 1112
                  nop
                  lui          zero, 103670
                  slli         zero, tp, 18
                  and          zero, s11, s11
                  sll          gp, t4, s4
                  add          s1, s4, s4
                  sub          a3, s8, t0
                  sltiu        t5, s8, 1176
                  and          s2, s1, s11
                  xor          s6, t2, tp
                  andi         tp, t3, -1572
                  addi         s7, a3, 1431
                  add          t3, s10, sp
                  sub          t0, t0, s5
                  sltiu        s11, s4, 145
                  sltiu        s0, s10, -1328
                  and          a5, s6, t6
                  andi         s6, t4, -1181
                  lui          sp, 377420
                  sub          a3, ra, s4
                  add          s10, t6, s7
                  slli         t5, a6, 30
                  xor          a4, s8, t5
                  srai         s5, ra, 3
                  addi         s3, a1, 54
                  ori          s10, s11, 1983
                  sra          a4, a5, a0
                  sltiu        s1, s0, -327
                  sra          zero, s2, zero
                  addi         t1, tp, 1170
                  srli         t5, s9, 15
                  sltu         t3, s6, ra
                  slt          s0, s3, t0
                  sub          a3, s4, a6
                  slt          t5, s5, s6
                  and          s2, a3, a0
                  sltiu        s10, a7, 1301
                  srl          ra, a4, t3
                  lui          a3, 146528
                  srli         t1, t4, 29
                  xori         t5, s4, 1631
                  srli         t0, s4, 25
                  or           a1, a5, s5
                  srai         s6, s11, 9
                  auipc        sp, 33310
                  ori          t3, s1, 1012
                  srl          a2, t4, s4
                  add          s8, a7, a5
                  ori          s2, s2, 1824
                  and          a6, s11, t4
                  andi         s8, s10, 58
                  sll          zero, a5, a4
                  slt          s6, a0, a0
                  slti         t1, t1, 837
                  and          a4, s4, t3
                  and          s5, s0, s1
                  sltiu        t0, s2, 1562
                  ori          s10, a3, 494
                  srai         s10, s3, 29
                  ori          a3, t3, 569
                  ori          zero, t0, 23
                  srli         t4, t5, 16
                  sltu         t3, gp, tp
                  srai         s10, s2, 20
                  or           a5, s0, t5
                  lui          s11, 374566
                  sltiu        a2, t5, 1561
                  sra          a2, a3, a4
                  slli         s7, t3, 28
                  slli         a1, a3, 15
                  addi         t0, a3, 1941
                  sub          t2, ra, s9
                  sra          gp, s0, s5
                  lui          s1, 457088
                  xor          s9, t4, a7
                  srli         zero, t5, 3
                  xor          t0, a5, t2
                  and          s10, s0, s11
                  xori         s3, s11, -886
                  sltu         sp, zero, t3
                  sltiu        t3, a4, 799
                  sra          a5, s5, a6
                  addi         t3, a4, 1959
                  sll          a5, sp, a0
                  addi         t0, s10, -1702
                  lui          s1, 569064
                  sll          a4, t1, a0
                  and          a4, t4, t4
                  xor          s11, sp, s3
                  or           t2, t4, s5
                  sub          s7, a7, t0
                  sub          a1, tp, gp
                  ori          a1, t5, 538
                  nop
                  sll          s8, t5, a0
                  lui          s1, 531968
                  sll          s6, s8, gp
                  srli         a3, t0, 20
                  lui          tp, 971125
                  lui          s10, 1007087
                  sub          a4, t4, ra
                  sltu         a3, tp, a3
                  slti         a0, ra, -1335
                  sub          t0, s3, s3
                  addi         t4, t2, -832
                  andi         s3, zero, 1036
                  sltiu        s2, t6, -1958
                  xor          s7, s1, s11
                  slli         t2, a4, 21
                  xori         t5, s2, -1520
                  sub          a6, a0, t6
                  nop
                  and          t2, s0, tp
                  and          zero, s7, s6
                  lui          t3, 173123
                  slli         gp, a2, 6
                  or           s1, ra, a4
                  auipc        s10, 281992
                  sll          a2, ra, s0
                  srli         zero, a6, 4
                  sra          s9, a2, tp
                  or           ra, s5, tp
                  auipc        sp, 29393
                  slli         a2, t2, 22
                  or           tp, ra, sp
                  srl          a0, t5, s2
                  andi         t3, s11, -1004
                  slti         s3, t4, -1667
                  srli         a4, s7, 31
                  nop
                  andi         tp, t2, -790
                  xor          s8, s11, t2
                  sltu         s11, a0, s10
                  srl          zero, s2, gp
                  slt          t3, s0, zero
                  add          gp, s4, s10
                  slt          s0, s2, s2
                  or           s0, a4, a0
                  nop
                  or           s11, t3, s10
                  srli         s5, s8, 5
                  slti         s0, s2, 643
                  add          ra, s4, s5
                  sll          s10, s10, a7
                  sltu         s5, s10, t6
                  and          t5, s3, t3
                  xor          s11, a7, a1
                  sra          a2, s7, s11
                  nop
                  or           t5, s6, a1
                  srl          s6, s9, a6
                  sll          t1, a1, t4
                  sll          t4, ra, a0
                  srl          s7, sp, t0
                  nop
                  addi         a5, s0, 1432
                  addi         a4, a1, 961
                  sltu         a5, s4, a0
                  sltiu        s7, s1, 1038
                  srai         t2, s7, 25
                  sltiu        a3, a2, 298
                  srai         s9, a3, 0
                  ori          s6, s8, -1275
                  sltiu        a3, t6, -282
                  srl          a1, a6, s3
                  add          s0, sp, s8
                  and          a3, t5, s5
                  sltu         a5, a4, ra
                  ori          s1, s5, 1644
                  srl          a3, t5, a0
                  srli         a3, t1, 6
                  srl          a6, s1, a5
                  slt          s7, s4, a7
                  slt          s10, s2, a1
                  slt          a6, s6, a1
                  andi         t3, s8, -130
                  sltiu        tp, a0, 954
                  sll          t1, s2, s10
                  slt          s7, s3, s5
                  ori          a4, ra, -277
                  or           s7, s11, a0
                  andi         s6, t5, -351
                  or           s1, t1, s10
                  slli         t4, s7, 24
                  xori         s6, t2, -991
                  slt          s8, gp, s8
                  srli         a5, t6, 10
                  slli         s1, a0, 27
                  and          s6, s10, a3
                  andi         s6, s3, 1105
                  or           s1, a1, t6
                  sll          a5, a4, s1
                  sra          s0, a3, a6
                  sra          a4, s9, s2
                  andi         a2, a6, 577
                  and          s2, t5, a3
                  sub          s0, a6, zero
                  srai         zero, t4, 8
                  add          a5, tp, s0
                  sll          t4, a1, gp
                  andi         a5, a5, -1594
                  or           s11, a4, sp
                  slli         s9, s4, 29
                  sra          a3, a5, ra
                  addi         ra, s5, 1907
                  sltu         t4, ra, s3
                  slti         t5, s6, 1037
                  andi         t1, s5, 548
                  and          s5, a3, gp
                  sub          t2, a4, a6
                  nop
                  sra          ra, s8, s8
                  srli         a4, t1, 9
                  srl          a3, a3, s7
                  xori         a5, a3, -895
                  sltiu        a6, s10, -458
                  srai         s9, t0, 12
                  slt          s9, t2, t1
                  slt          a6, gp, s1
                  nop
                  ori          tp, a6, 1525
                  xor          t5, s8, a4
                  sra          s7, s7, t2
                  and          t5, s4, s8
                  sub          a6, s9, s3
                  sltu         ra, s4, gp
                  auipc        s3, 735249
                  sub          a5, s8, s4
                  auipc        t0, 420473
                  addi         t2, a6, 988
                  sll          s11, s4, ra
                  andi         s6, a7, -1785
                  srl          a5, a6, a1
                  addi         zero, a3, -390
                  slti         a2, s11, -382
                  slti         s0, s6, 1818
                  slti         s11, ra, 236
                  sltu         t1, s6, s2
                  srai         a6, s1, 27
                  slt          ra, a5, ra
                  sra          gp, gp, sp
                  slli         t5, a3, 21
                  srl          s7, t2, a5
                  sltiu        t0, zero, -1348
                  sltiu        t4, gp, 1757
                  slt          s0, a3, s8
                  slti         s10, zero, 835
                  sra          t2, a2, s4
                  add          a0, s2, t1
                  slli         zero, s10, 1
                  ori          s11, s8, -1503
                  srl          s6, t2, t3
                  srli         sp, a0, 27
                  slt          ra, t1, s7
                  xor          s3, s7, sp
                  andi         t2, zero, -777
                  slli         a5, t2, 11
                  slt          gp, a2, t1
                  sltiu        s11, a0, -1193
                  xor          s9, s4, t5
                  nop
                  ori          sp, t5, 648
                  add          a4, tp, gp
                  add          t1, s1, s7
                  slti         s11, s9, 1639
                  sltiu        gp, s7, 156
                  and          s0, s4, t1
                  sll          a5, ra, s5
                  andi         t3, a5, 1782
                  srl          t5, sp, a7
                  srli         s0, t4, 5
                  slt          a0, a7, a5
                  ori          a1, ra, -727
                  sltu         t2, s11, s11
                  lui          s11, 398950
                  lui          a3, 66542
                  auipc        s0, 4232
                  or           s1, a2, s6
                  xor          s9, a6, s11
                  srli         s5, s8, 0
                  nop
                  nop
                  lui          a2, 67397
                  sra          ra, s5, sp
                  srli         a2, s3, 20
                  addi         a4, zero, 564
                  and          s7, s2, s6
                  ori          t3, zero, 2034
                  andi         t1, a2, 177
                  ori          sp, s8, 713
                  ori          a6, s5, 1362
                  xor          s10, t6, s2
                  sub          ra, s4, a3
                  srai         t4, a4, 31
                  auipc        sp, 403097
                  auipc        s7, 739818
                  slti         zero, zero, -1834
                  add          s1, s10, s8
                  addi         s1, a1, -54
                  slli         a6, sp, 24
                  auipc        s1, 137842
                  sll          gp, t2, a0
                  srai         a4, s0, 21
                  ori          s1, t6, 1294
                  sltiu        s7, t3, -874
                  sltu         s6, s3, s2
                  sll          s11, s10, s8
                  srl          t5, t4, tp
                  and          t2, gp, t4
                  addi         tp, sp, 1902
                  slti         s2, s0, 895
                  sll          s1, a3, s10
                  or           s10, a6, s7
                  add          s1, ra, t3
                  xor          tp, zero, s4
                  slt          sp, a2, a4
                  and          t2, sp, a3
                  sll          t4, t2, t3
                  sltu         s3, a1, s9
                  sra          zero, a6, a5
                  sltiu        s6, a3, 1683
                  nop
                  sltu         a0, s3, t2
                  slt          s11, s10, a4
                  andi         t0, a4, 701
                  andi         a1, s7, -1471
                  srl          a1, t5, s1
                  slt          s9, t1, tp
                  srli         a0, s6, 24
                  addi         sp, t6, -171
                  andi         gp, a3, -1710
                  srai         t0, t3, 10
                  lui          gp, 75365
                  srai         s2, gp, 9
                  sra          t2, a6, a5
                  srli         t3, a5, 30
                  sltu         a4, s4, t2
                  slt          s5, s8, a4
                  xori         a6, a5, 922
                  sub          zero, s6, zero
                  add          a2, a0, s4
                  or           s6, t6, s10
                  addi         s2, zero, 929
                  xor          a6, s6, s5
                  sub          a4, a7, a1
                  sll          s10, a4, s1
                  andi         s10, t6, -672
                  slti         s2, s1, -993
                  and          a3, a3, t1
                  xor          s5, s9, t2
                  andi         t0, s10, 1824
                  ori          zero, s2, -946
                  xor          s0, t3, t4
                  add          s10, t4, ra
                  add          a1, s7, gp
                  sltiu        s11, s2, -853
                  srli         s6, gp, 16
                  auipc        ra, 187220
                  xor          a3, a1, a5
                  srai         s9, a6, 29
                  xori         a4, s5, 418
                  xor          a2, t5, s9
                  slti         ra, t1, 10
                  sltiu        sp, t4, 1066
                  xor          s1, s5, t2
                  sll          a1, a1, a7
                  addi         a6, sp, -903
                  sltu         t0, zero, s8
                  sub          s2, a4, s5
                  or           sp, a6, t4
                  srl          t2, s1, s7
                  sra          s9, s9, a2
                  sub          t1, t3, sp
                  and          t2, a4, s10
                  nop
                  auipc        t1, 1008091
                  sltiu        s9, t2, -649
                  slli         t2, s10, 27
                  srai         a0, sp, 21
                  addi         sp, zero, 441
                  xor          a2, a0, t3
                  srai         a1, tp, 16
                  slti         s5, ra, 1056
                  sltiu        t5, s6, 690
                  auipc        t2, 457776
                  sll          s3, s6, t4
                  srli         t0, t1, 27
                  lui          a3, 751554
                  nop
                  sltu         a2, s2, t0
                  add          a5, t1, t1
                  sra          s1, s3, t5
                  slt          t1, a7, a6
                  addi         a4, a0, -1158
                  ori          a0, s9, -835
                  xor          a5, a2, s5
                  sll          a5, sp, a3
                  slt          gp, t1, s2
                  xor          s2, a1, s7
                  srli         s8, s7, 9
                  lui          tp, 141461
                  sub          tp, s7, s1
                  add          t1, t5, zero
                  or           t0, a3, s11
                  srl          s2, gp, s11
                  slt          a4, s11, ra
                  srli         gp, s6, 13
                  auipc        a1, 858807
                  sltu         a3, ra, a0
                  auipc        s8, 539082
                  andi         a3, t1, 572
                  ori          a1, a7, -549
                  srli         t5, gp, 6
                  add          a4, a0, a6
                  slti         a2, s7, -1128
                  srl          gp, a2, s6
                  srli         a1, gp, 5
                  xori         t3, t1, 912
                  andi         gp, a7, -1478
                  sltiu        a5, a3, 1701
                  srai         s3, a5, 22
                  xor          a1, s6, t3
                  slti         s0, s6, 1466
                  sra          a6, s6, tp
                  slti         a2, t5, -940
                  add          s7, a4, tp
                  xor          gp, a7, a2
                  sll          t2, s7, t1
                  or           a0, t5, s4
                  slli         t4, zero, 8
                  sltiu        sp, s2, -942
                  lui          ra, 929834
                  xori         s3, s0, 32
                  xori         t0, s7, 1449
                  auipc        a2, 1037239
                  ori          a4, s2, 1972
                  slti         a4, sp, 1965
                  sltiu        t1, t0, -467
                  sltiu        sp, t4, -391
                  slt          a6, a1, t4
                  and          s11, s2, a4
                  xori         t1, s10, -2048
                  andi         sp, a6, -1726
                  sll          s7, s10, s7
                  addi         s11, zero, -71
                  nop
                  addi         a5, t6, -663
                  xor          s2, tp, zero
                  andi         a3, s10, -1917
                  sra          a2, t2, s11
                  xori         s6, t1, -1501
                  xori         t0, t1, 1200
                  sra          s0, s3, t2
                  andi         gp, s1, -1621
                  xori         sp, a7, 880
                  slt          tp, zero, tp
                  sltu         s1, ra, s6
                  lui          t1, 260971
                  add          a4, t0, a2
                  addi         gp, t0, 914
                  nop
                  and          a3, a3, a1
                  srli         s8, zero, 1
                  sra          t5, s4, t5
                  and          a5, t1, s3
                  sll          s7, s5, s0
                  xor          zero, s5, a0
                  lui          t3, 746204
                  nop
                  srli         a0, s3, 20
                  andi         s6, gp, -1437
                  sll          s0, a1, s4
                  sltu         a4, t2, ra
                  andi         a6, a6, -339
                  xori         s11, sp, -1760
                  add          zero, a0, t4
                  add          s8, gp, ra
                  sltu         s10, a3, t4
                  nop
                  addi         zero, s5, 794
                  srli         gp, s6, 21
                  sltiu        s11, s0, 1009
                  srli         s8, s5, 6
                  xori         s2, sp, -1983
                  slli         tp, a4, 29
                  slli         a4, s3, 16
                  nop
                  sra          t1, t4, t3
                  lui          s5, 136030
                  and          s11, s9, a1
                  add          s1, s1, a3
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           tp, 0x80000000
                  li           s0, 0x80000000
                  li           t1, 0x0
                  li           t2, 0x80000000
                  li           s8, 0x0
                  li           sp, 0x80000000
                  li           a6, 0xffffffff
                  li           s7, 0x80000000
                  li           s9, 0x80000000
                  add          t2, a6, sp
                  addi         s8, a6, 1038
                  auipc        s9, 814052
                  addi         s9, s9, 1253
                  nop
                  nop
                  addi         s8, a6, -512
                  lui          t2, 1028315
                  sub          s9, sp, a3
                  nop
                  sub          a6, a3, tp
                  addi         s0, s8, 1534
                  lui          sp, 91503
                  sub          a3, t2, s0
                  nop
                  nop
                  nop
                  nop #end riscv_int_numeric_corner_stream_12
                  slli         a3, sp, 15
                  sra          t5, a7, t2
                  sltu         zero, zero, gp
                  sub          zero, a2, s2
                  sll          gp, gp, s4
                  sra          s9, sp, zero
                  and          a3, gp, a4
                  slti         a3, zero, -1710
                  sub          a4, a4, s8
                  srl          t5, s6, s8
                  srli         tp, s11, 24
                  sll          s9, s1, s1
                  ori          ra, t2, -1065
                  slti         a4, t6, 1890
                  srli         s3, t5, 21
                  srai         a3, s6, 6
                  ori          a6, s5, -1265
                  srli         s11, t6, 8
                  and          t5, tp, s1
                  nop
                  sltiu        s11, t0, -1925
                  sll          t3, t0, t6
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           tp, 0x80000000
                  li           a6, 0xc0870524
                  li           a2, 0xffffffff
                  li           t5, 0xffffffff
                  li           s2, 0x61abd0
                  li           a5, 0xffffffff
                  li           a4, 0x6310d0b1
                  li           t1, 0x60b4aa0d
                  li           s0, 0xe2e8d239
                  add          s2, s1, s0
                  addi         s2, s1, -1554
                  addi         a2, t5, 1646
                  add          a2, s1, t5
                  lui          a2, 711900
                  addi         a5, t1, 1214
                  addi         tp, a4, -1140
                  auipc        s0, 330598
                  sub          a2, a5, a4
                  auipc        t1, 399831
                  lui          s0, 306780
                  lui          t5, 638472
                  addi         a5, tp, -1682
                  lui          t1, 299509
                  lui          s2, 274177
                  nop #end riscv_int_numeric_corner_stream_13
                  sltu         zero, a2, s10
                  sll          s10, s8, s11
                  sll          a2, s5, t0
                  addi         t2, a1, -790
                  slt          s10, s10, a0
                  or           s7, s8, s2
                  sltu         s9, a2, a0
                  addi         s11, s10, -1553
                  auipc        s5, 376123
                  sub          t3, s0, t0
                  lui          a4, 579553
                  sll          a3, s9, s3
                  sll          s11, a6, a1
                  slli         ra, a3, 5
                  slt          gp, gp, ra
                  sltiu        sp, sp, 1937
                  add          t4, a0, s4
                  xor          t0, a5, a7
                  slli         t5, t3, 8
                  srli         s5, t1, 19
                  or           a1, t3, t4
                  sra          a1, t3, tp
                  sltu         t5, s9, s6
                  slti         t1, t6, -941
                  lui          gp, 405593
                  ori          s10, t2, 1054
                  lui          s3, 547971
                  sltu         gp, a4, s2
                  srai         s2, ra, 30
                  add          zero, ra, t4
                  sra          a4, a0, a3
                  addi         a4, s4, -342
                  sub          t1, a1, a6
                  srl          a1, a2, t2
                  lui          s3, 323826
                  sub          t1, a0, a3
                  ori          a2, t6, -1032
                  srai         ra, s2, 18
                  ori          s9, a3, -1074
                  lui          t1, 986334
                  srai         t2, s5, 7
                  or           a1, s2, s9
                  lui          s3, 730449
                  srl          a6, s9, t5
                  sltiu        s7, t5, -1936
                  srl          s1, s5, gp
                  andi         s3, t2, -2012
                  slt          s10, a6, tp
                  sltiu        s7, t0, 603
                  li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           a1, 0x179ed6c
                  li           a3, 0xfe591d1b
                  li           s2, 0xffffffff
                  li           a5, 0xffffffff
                  li           s9, 0x96bb9838
                  li           t5, 0x80000000
                  li           s10, 0x0
                  li           s3, 0xdef5a459
                  li           t4, 0xa87f103f
                  addi         a3, t5, 856
                  auipc        a3, 823977
                  sub          t5, s3, t2
                  lui          t2, 236863
                  auipc        t5, 932028
                  auipc        s2, 696761
                  auipc        t2, 763725
                  add          s2, s9, a1
                  addi         t5, a5, -1889
                  addi         s2, t4, -332
                  addi         s3, t5, -1739
                  add          t5, a1, s3
                  addi         a1, s10, 700
                  lui          a1, 388825
                  auipc        t4, 283888
                  nop
                  nop
                  auipc        s2, 53026
                  add          t4, s10, a3
                  nop
                  add          a1, s10, a5 #end riscv_int_numeric_corner_stream_0
                  auipc        s0, 542622
                  srl          t4, s5, s2
                  slli         s5, s9, 18
                  slli         a3, s7, 18
                  sltiu        t5, ra, -830
                  ori          t3, s5, -1693
                  or           t3, sp, s0
                  sltiu        s8, t6, -1423
                  auipc        s2, 798359
                  xor          s10, s2, s3
                  andi         s0, s1, 338
                  add          tp, ra, ra
                  srai         sp, t6, 13
                  sll          ra, s0, s7
                  sltiu        s1, s4, 1873
                  sub          t5, s9, s0
                  sra          s5, s7, s5
                  xor          s9, s11, s7
                  sll          a4, s10, a2
                  andi         a2, s8, 783
                  slli         zero, gp, 24
                  sra          t4, t0, ra
                  sll          a1, t4, s7
                  slli         s3, t0, 23
                  slli         zero, a0, 0
                  auipc        a1, 163531
                  nop
                  auipc        ra, 726655
                  xor          s8, zero, s0
                  and          t1, a0, sp
                  ori          zero, a5, -447
                  srl          s7, s1, s7
                  addi         s9, s10, 1626
                  slti         a5, s11, 342
                  and          s10, a4, s11
                  nop
                  and          a2, s1, zero
                  and          a3, a2, t1
                  and          s1, t5, s5
                  nop
                  lui          s9, 257768
                  sra          s7, zero, a2
                  sra          a2, s0, a0
                  addi         gp, a0, -917
                  xor          t5, s6, t0
                  addi         gp, s2, 1846
                  or           t2, s8, s3
                  sltu         t0, s6, a6
                  srai         t1, gp, 13
                  xori         s9, tp, 1854
                  sll          sp, t5, gp
                  srli         s8, gp, 19
                  nop
                  sub          sp, sp, s8
                  slt          s9, s0, a7
                  ori          a3, a7, 1192
                  ori          a0, s10, -286
                  lui          t2, 688192
                  xori         zero, a2, 1548
                  srl          zero, t1, t2
                  slt          s1, s2, s7
                  sll          a6, sp, a2
                  sra          a6, t3, s6
                  addi         s2, s4, 582
                  sra          s8, s6, a0
                  slti         a4, tp, 1068
                  lui          gp, 77474
                  auipc        t4, 232059
                  sub          s5, s7, a2
                  sra          sp, a1, t1
                  slli         t2, s4, 11
                  srl          t2, a6, t3
                  slti         t0, s3, 1034
                  sll          t5, s1, t1
                  add          t5, t2, a2
                  slti         a0, s11, -656
                  sltiu        a2, a0, -1405
                  auipc        a1, 446783
                  slt          tp, t1, a7
                  xori         t2, s10, -1825
                  srl          s11, a0, t1
                  slti         a5, a4, 316
                  srai         a6, s4, 0
                  addi         t3, s8, -1561
                  slt          sp, s11, t6
                  ori          s11, s10, 1972
                  slti         t0, t3, -884
                  slti         a6, t6, 981
                  ori          a2, s1, 155
                  lui          s10, 316641
                  lui          a1, 939699
                  xor          s9, s10, s2
                  and          s11, tp, s11
                  sra          t4, s7, s1
                  slli         s7, t1, 21
                  xori         t1, s4, -38
                  ori          gp, a6, -1619
                  srl          t5, gp, s1
                  srai         t5, t0, 22
                  sub          a6, zero, s6
                  andi         s3, a3, -1305
                  slt          a0, s1, t4
                  xori         tp, s3, -230
                  sll          t1, s1, t6
                  addi         t2, t3, 1305
                  sra          s3, t6, a0
                  auipc        a2, 438128
                  add          s5, a4, s6
                  andi         t3, a4, 405
                  xor          s11, s0, s1
                  and          tp, gp, t2
                  srl          t3, s1, s7
                  srl          a5, a1, s3
                  sltu         s3, ra, a0
                  sra          a5, t5, s7
                  addi         a0, t4, -1932
                  addi         gp, s9, 1972
                  ori          ra, s7, 405
                  slt          s7, s0, a6
                  srai         s9, s6, 16
                  srai         a4, t3, 4
                  sra          s9, t6, t5
                  or           t3, t2, a0
                  srl          sp, t0, a0
                  sltu         a6, s4, a6
                  sltiu        s7, s3, 1135
                  srai         a1, a7, 22
                  sra          ra, a3, a0
                  xor          a1, zero, a0
                  nop
                  lui          s10, 178209
                  andi         a2, s1, 275
                  sub          a1, t6, s6
                  andi         sp, a3, 949
                  sltiu        ra, t6, 120
                  andi         a0, t5, -1687
                  ori          tp, s5, 1897
                  ori          a3, s2, 1257
                  or           s5, s1, a6
                  srl          s7, s0, tp
                  srli         s1, ra, 5
                  slt          s3, a3, s2
                  ori          s2, s4, 1461
                  xori         a6, zero, -2036
                  xori         a6, t3, 1756
                  slt          s2, sp, s1
                  addi         a0, a6, 603
                  slti         a4, s3, 415
                  sra          tp, s0, s11
                  slt          a4, s4, a7
                  or           s6, a0, s6
                  ori          sp, t2, -1932
                  or           t5, t2, a6
                  xori         s6, a0, 1382
                  sra          a5, s1, tp
                  xor          s10, a2, s8
                  ori          s9, a2, 193
                  ori          s5, a3, -507
                  srli         s5, s7, 21
                  srai         s3, t4, 30
                  and          a2, ra, a5
                  and          s8, s3, ra
                  sltiu        a6, s10, 1165
                  add          a6, s1, s3
                  xori         s2, s10, 319
                  slt          s7, t0, s1
                  ori          zero, s11, 1865
                  andi         a4, t1, -581
                  slli         s9, s5, 21
                  nop
                  ori          s10, a3, 1509
                  or           t5, t6, s10
                  slli         s11, s8, 15
                  srai         a1, t1, 7
                  or           t2, s9, a0
                  auipc        s10, 56745
                  xori         s1, a0, -2042
                  addi         zero, s8, 1630
                  addi         s6, s5, -1952
                  srli         s10, a6, 17
                  sltu         gp, t0, s11
                  sub          s8, a2, a1
                  sltiu        s3, a4, 571
                  ori          zero, s1, 494
                  sub          s2, s7, tp
                  xor          s0, t1, tp
                  andi         t4, s10, -776
                  nop
                  lui          s2, 520509
                  srai         a4, a1, 19
                  srai         a5, s0, 0
                  slti         a1, t4, -416
                  and          zero, t1, a5
                  sltu         s11, s3, tp
                  xor          a2, a7, t6
                  xor          s5, a6, a5
                  srli         t5, s6, 14
                  xor          ra, a0, s1
                  ori          zero, s1, 467
                  srai         a2, s4, 13
                  sltu         ra, ra, a0
                  auipc        t2, 831299
                  slt          a6, s6, t2
                  lui          s5, 158102
                  and          s10, s4, zero
                  slt          s6, s11, t0
                  or           a6, a5, s0
                  slli         ra, t4, 5
                  or           t1, s9, s0
                  and          s6, t6, s10
                  srai         s5, s3, 5
                  addi         s10, s0, -41
                  and          t1, ra, ra
                  lui          s2, 1016684
                  ori          a4, sp, 1143
                  sub          s8, s11, a4
                  nop
                  auipc        s9, 974545
                  addi         a5, a3, 1787
                  sll          s9, a4, s11
                  xori         s2, a3, 1060
                  lui          s5, 92843
                  sub          a2, t5, s9
                  andi         a4, s5, -356
                  xori         s9, a4, 1828
                  srli         s6, t2, 11
                  sub          s1, tp, a3
                  sub          s11, s1, s1
                  slli         a4, s1, 18
                  sltu         t5, a4, s8
                  sub          s3, s7, t3
                  xori         s11, tp, 161
                  sltiu        t0, a4, -981
                  slt          t0, a1, zero
                  srl          zero, a1, a2
                  srai         s8, a2, 28
                  xor          s0, a4, s8
                  sltiu        gp, s11, -3
                  addi         s6, s11, -797
                  ori          a5, a3, -902
                  slti         ra, a6, 1461
                  auipc        ra, 895010
                  ori          s10, t3, -24
                  slti         ra, s3, 82
                  sra          s3, a5, sp
                  srai         s9, s11, 0
                  ori          s0, a4, 1144
                  srli         gp, s5, 1
                  andi         s0, t0, 1740
                  sltu         s7, s6, zero
                  slti         sp, tp, -965
                  andi         s8, t3, -1294
                  sltu         t2, t4, a4
                  xori         s10, ra, 154
                  lui          s10, 34324
                  srl          s11, s3, tp
                  addi         t4, s7, 1505
                  sub          s1, zero, t4
                  sll          s11, a1, t5
                  slti         tp, zero, -1865
                  slti         tp, a4, 1714
                  lui          gp, 32301
                  xor          t3, t1, s2
                  or           a4, s8, s9
                  and          a5, t0, s4
                  srai         t4, a5, 25
                  xori         t3, t1, -1125
                  xori         s3, t3, 1983
                  sub          a0, a2, s4
                  lui          s11, 467107
                  srai         a3, t2, 19
                  sltiu        s10, a7, 1323
                  srai         s8, t0, 31
                  addi         s10, t0, 197
                  nop
                  sll          s5, sp, t0
                  add          a4, zero, a4
                  slt          s6, zero, s8
                  add          s9, a6, gp
                  slti         gp, sp, -605
                  addi         s1, s10, 239
                  sra          a2, sp, s8
                  sll          s5, t2, a5
                  andi         s5, s9, 21
                  srl          s6, a4, s0
                  slti         ra, s0, 1272
                  addi         a4, s11, -1586
                  sltu         a0, t2, a0
                  lui          tp, 218028
                  xor          s10, a3, ra
                  sltu         a4, t4, s3
                  srli         s11, zero, 21
                  and          a6, t4, ra
                  slt          s3, s10, a3
                  nop
                  sltu         a2, t0, t2
                  add          s0, a6, a6
                  sltiu        a6, s4, -1007
                  andi         a0, t5, 179
                  sll          s0, s3, zero
                  srai         t5, s1, 28
                  xori         t5, s2, -70
                  sltiu        t3, s7, 2036
                  and          s3, a2, ra
                  and          s10, a0, t6
                  srai         a6, a0, 28
                  auipc        t4, 981289
                  nop
                  and          a6, s5, s6
                  addi         a6, a6, 141
                  srai         s5, s1, 0
                  slli         ra, ra, 8
                  or           t4, a4, a4
                  sub          s0, t2, sp
                  slli         ra, t6, 31
                  srai         t3, s0, 23
                  xori         t5, s5, -1882
                  add          t3, a3, t6
                  xori         t0, gp, -727
                  lui          s11, 205376
                  srai         s5, t2, 22
                  srai         a5, a5, 18
                  andi         t4, s10, 1142
                  srli         a2, t4, 15
                  srai         s6, t4, 28
                  ori          a6, tp, -940
                  lui          a2, 973335
                  sra          t3, a6, s8
                  srl          gp, a2, t4
                  addi         t1, tp, -1154
                  addi         gp, s1, 1412
                  slti         a4, s9, -1768
                  sll          zero, zero, tp
                  sra          t3, sp, s8
                  slli         a4, s2, 18
                  xori         t5, s10, -1008
                  sub          a6, t3, a2
                  sltu         t4, tp, gp
                  addi         s3, s9, -1570
                  slt          t5, s3, s8
                  xor          a3, s1, s11
                  add          s11, tp, s6
                  xor          s7, a7, s2
                  addi         a1, a7, 898
                  addi         s3, s4, 1856
                  sltu         s10, t2, a4
                  lui          tp, 328047
                  xor          a1, s6, t1
                  sra          t2, a3, ra
                  srai         s6, zero, 25
                  sub          t1, a4, tp
                  xori         t0, t4, 36
                  sltiu        t5, zero, -1812
                  srai         a0, s4, 4
                  srl          a5, a5, t3
                  sll          s3, a4, ra
                  lui          s7, 252118
                  srl          t4, s7, t5
                  auipc        t5, 50566
                  addi         s1, s8, -337
                  srai         sp, s0, 20
                  xor          a2, s1, a6
                  ori          gp, s9, -415
                  sltiu        t3, t3, -1789
                  srli         t3, a1, 10
                  sltiu        s9, t1, 161
                  nop
                  auipc        a0, 966984
                  slt          s10, gp, t1
                  srai         t5, a7, 0
                  add          zero, a1, a7
                  sll          s0, s11, s0
                  ori          t1, a2, 372
                  slti         s6, zero, -670
                  srli         s5, sp, 15
                  ori          s5, t4, -1839
                  add          s2, t2, t5
                  add          gp, a1, s11
                  xor          a6, s8, zero
                  slli         t0, t4, 19
                  xor          a1, s10, t2
                  sll          t0, zero, a3
                  xor          s7, s7, s7
                  sub          zero, s8, s7
                  slli         t1, tp, 10
                  slti         s2, a4, -1668
                  nop
                  srl          t2, a0, t2
                  sltu         s1, s4, s11
                  nop
                  sub          t3, gp, zero
                  lui          s3, 126465
                  xori         s1, t0, 11
                  lui          s3, 131380
                  ori          t3, s8, 1193
                  srl          a2, s6, s8
                  sub          a6, t3, zero
                  addi         s8, t0, -117
                  srli         sp, t5, 2
                  srli         s2, s11, 13
                  xori         s3, a0, -903
                  and          a4, t2, a1
                  sltu         s9, a7, t2
                  or           s9, sp, s5
                  slti         t0, s9, 833
                  lui          a1, 783465
                  andi         s9, a4, -322
                  xor          s0, s9, t6
                  srl          s6, s11, s0
                  add          a0, a1, ra
                  auipc        a1, 454883
                  or           a5, a2, s6
                  slti         t2, tp, 1369
                  sltiu        t5, s3, -1051
                  slti         s1, t2, 1168
                  sltu         t3, s7, t6
                  srai         t4, t5, 15
                  auipc        s11, 509893
                  srai         s8, s1, 26
                  ori          t5, t3, -1557
                  andi         a1, t4, -701
                  srl          sp, a4, s10
                  andi         a5, s4, 1815
                  auipc        t2, 639956
                  or           t3, s8, a2
                  lui          s0, 420520
                  lui          a3, 368073
                  srai         t5, s4, 14
                  or           t4, a7, ra
                  addi         tp, s7, 1753
                  srli         a3, s2, 24
                  sub          s2, s11, s11
                  sltu         sp, t2, t2
                  slti         sp, s0, -2028
                  auipc        ra, 599004
                  srl          a3, gp, zero
                  sltiu        t0, s4, -54
                  lui          s0, 868968
                  sltiu        t3, s5, -1124
                  srli         t3, s2, 26
                  auipc        a5, 552068
                  ori          zero, a5, 991
                  srli         s5, a1, 26
                  sra          s11, a7, s2
                  sll          a3, zero, s9
                  sub          t2, s1, s7
                  andi         t0, s8, -1746
                  slli         s3, t3, 18
                  sub          s3, s11, a7
                  sra          t5, a6, a0
                  or           a5, a3, tp
                  or           a2, a4, t0
                  xori         t3, s8, -549
                  srl          a4, a5, s1
                  srl          s1, sp, t2
                  xor          a3, s9, t1
                  and          t4, a5, s3
                  addi         s7, t5, 1679
                  srl          t5, a7, s3
                  xori         a5, t2, -1869
                  andi         t2, ra, 496
                  srli         a1, zero, 24
                  andi         t5, a4, 1073
                  srli         t2, s8, 24
                  xori         t4, sp, 554
                  xor          a0, s7, s7
                  nop
                  srli         t2, s7, 26
                  ori          t1, t4, 1723
                  srli         sp, t1, 4
                  addi         a5, s2, 1509
                  srl          a6, s3, a5
                  addi         s2, t1, 1673
                  lui          t3, 458578
                  srl          s7, sp, s5
                  nop
                  xori         a1, sp, -1786
                  sltiu        a5, t2, -1318
                  auipc        a3, 972014
                  slli         s9, a4, 0
                  slli         s5, s0, 26
                  lui          t2, 747180
                  slt          s7, s3, s9
                  sltiu        zero, t4, 753
                  sra          s8, s1, s0
                  srli         a4, s10, 11
                  andi         s2, s10, -1498
                  auipc        s9, 824570
                  sltu         sp, s3, a0
                  auipc        a5, 528430
                  and          t5, a3, a1
                  nop
                  nop
                  slti         a4, a4, -1908
                  nop
                  sll          s11, a4, a0
                  sra          s9, a3, t1
                  sll          a6, s5, t4
                  or           s1, zero, s4
                  auipc        s2, 908211
                  srl          t2, zero, t0
                  sltu         s7, s6, a3
                  nop
                  andi         s11, s5, 808
                  sll          s5, s0, a3
                  srai         gp, a4, 11
                  sra          s0, s2, s2
                  sra          s1, s11, zero
                  andi         s9, a1, 659
                  sub          gp, gp, s7
                  addi         gp, a1, -1495
                  lui          s5, 99689
                  xor          s5, a0, t1
                  nop
                  addi         a1, a4, 839
                  add          s5, ra, a7
                  sltiu        t5, s7, -1423
                  ori          t1, tp, -299
                  slti         a5, s2, 628
                  nop
                  nop
                  sltu         s9, t1, s11
                  sub          s11, a0, t0
                  srli         a1, sp, 11
                  and          gp, s11, sp
                  or           t3, s10, t4
                  lui          s10, 223966
                  sltiu        a5, s0, 1135
                  addi         a4, t6, 1937
                  sltu         gp, a6, t0
                  sll          a6, s5, s10
                  slt          s11, s5, sp
                  and          s2, s5, t5
                  slt          t0, a3, a4
                  ori          t3, t5, 248
                  srli         s5, a3, 20
                  slti         t5, a0, 213
                  andi         t2, s3, 1854
                  sltu         s10, sp, a6
                  slt          gp, s1, s2
                  sltu         ra, t3, tp
                  sltu         ra, sp, zero
                  or           a3, ra, s1
                  and          a5, t5, t5
                  sra          s1, a5, t0
                  sra          gp, a1, t2
                  andi         a5, a3, -357
                  sll          s6, s0, ra
                  auipc        a0, 934671
                  lui          a4, 482054
                  nop
                  add          a5, s8, tp
                  srli         a1, a6, 31
                  sra          a6, s5, s1
                  sltiu        t2, a4, 1464
                  srl          s5, a0, gp
                  sra          gp, t4, ra
                  slli         s1, s0, 31
                  add          tp, ra, a0
                  slti         s8, s6, 160
                  srl          t5, tp, s0
                  add          a1, a1, a5
                  slti         sp, s0, -1145
                  sltiu        a5, t4, 903
                  srl          s0, s2, zero
                  ori          t0, s10, -1842
                  sra          t2, a3, gp
                  sra          t4, tp, s1
                  and          s2, t3, a7
                  ori          gp, a5, 1542
                  srl          ra, a2, a4
                  xor          a6, s8, t5
                  and          t4, s1, s7
                  lui          a2, 250476
                  srai         s7, s10, 0
                  lui          s2, 552210
                  sra          t1, ra, t4
                  auipc        s3, 990098
                  slt          s3, t3, s0
                  andi         t5, t4, -1774
                  and          t4, a2, t5
                  sra          a0, a7, a7
                  srli         a5, s11, 15
                  slt          s0, s11, s2
                  add          a6, sp, s5
                  addi         t1, s7, 1969
                  andi         s6, t6, 475
                  xori         t3, s1, 1163
                  srli         t1, s8, 22
                  sll          s8, s5, t5
                  auipc        s10, 771687
                  srli         s2, gp, 4
                  sltu         t2, zero, a1
                  sltu         a0, s1, a5
                  lui          s10, 486692
                  ori          t0, s4, -894
                  srl          s3, s1, s11
                  srl          a0, zero, t3
                  or           a6, s1, a6
                  xori         zero, s5, 2040
                  lui          s0, 644473
                  add          a2, a3, a3
                  nop
                  nop
                  sltiu        t5, s11, 1198
                  xori         zero, t4, -394
                  addi         s5, a1, 57
                  sltiu        a0, t3, -1143
                  andi         s9, gp, -780
                  slti         a5, s3, 668
                  srli         s0, t3, 30
                  or           t4, s9, t3
                  lui          a1, 940026
                  nop
                  slt          a2, s1, t5
                  slt          s8, t3, a0
                  sra          ra, s2, a0
                  nop
                  lui          s8, 320857
                  and          t3, a1, zero
                  sub          ra, a1, a0
                  slt          a1, tp, s8
                  xor          s10, sp, s8
                  addi         a3, s5, -254
                  srl          a6, t0, sp
                  lui          sp, 246006
                  sra          gp, a7, s4
                  sll          s7, a4, s0
                  sltu         a5, gp, tp
                  xori         a4, s8, -1200
                  lui          s1, 780746
                  sltiu        s9, a3, 1502
                  sll          ra, gp, zero
                  sltiu        a6, t4, -748
                  slti         t0, a5, -1246
                  sll          gp, s1, gp
                  sll          s1, a7, t5
                  or           a4, a0, s5
                  sra          s1, s10, a6
                  xor          zero, a7, s1
                  lui          s6, 558448
                  add          t3, zero, a1
                  sra          t3, a0, ra
                  sltiu        t4, s2, 157
                  slli         s8, s7, 2
                  andi         a4, t5, -145
                  sll          sp, s4, s11
                  addi         t0, a6, 962
                  auipc        s0, 450998
                  andi         tp, s8, 1150
                  sltiu        ra, a1, 1095
                  srli         s8, gp, 11
                  addi         t4, a6, 1173
                  and          t4, a4, s3
                  slti         s10, s6, 1873
                  lui          sp, 290582
                  or           tp, s6, t2
                  ori          s2, s1, 107
                  slti         s10, a7, -793
                  nop
                  lui          a0, 958716
                  sltu         t3, s9, s2
                  srli         s8, s6, 11
                  and          a4, s2, a5
                  xori         gp, t3, 607
                  xor          t0, s9, a6
                  add          s5, s7, t3
                  auipc        a4, 767505
                  lui          s9, 494802
                  addi         sp, a2, -2010
                  xor          s6, a0, a5
                  slti         a4, sp, -1967
                  srli         t2, s1, 20
                  sltiu        zero, a7, 1534
                  slti         s3, s11, 1425
                  sra          a6, s0, t4
                  ori          s1, s7, -890
                  xori         s5, s4, 2012
                  srli         zero, a1, 30
                  or           s2, s3, a3
                  xor          tp, t5, s9
                  srai         t1, s1, 9
                  and          s6, s8, s11
                  nop
                  xor          t1, a6, t1
                  lui          a6, 5869
                  and          a4, s11, s2
                  sra          a0, s11, t1
                  sub          s1, a6, t6
                  sltiu        s2, s3, -951
                  sra          t1, a5, sp
                  add          a6, t2, s1
                  slli         t2, a2, 18
                  add          sp, s6, a3
                  slli         tp, ra, 23
                  sra          a4, gp, a2
                  lui          t4, 246475
                  sll          s8, s8, t3
                  xori         s8, s5, -977
                  add          s0, a6, a5
                  slt          s6, s11, s8
                  srl          t2, t5, s5
                  sltiu        s1, a1, -1758
                  sub          t0, a7, a3
                  and          a4, t5, t0
                  slti         s1, s6, 1341
                  sub          t3, ra, s0
                  srai         gp, gp, 25
                  srl          s11, a6, t1
                  nop
                  xor          s3, zero, a4
                  sll          t3, t0, a0
                  slt          a5, s8, sp
                  and          gp, s10, t0
                  or           s1, s8, s3
                  xori         a5, t6, 560
                  or           t3, t5, a3
                  srai         a0, a0, 27
                  lui          sp, 889722
                  slt          s9, t1, s11
                  lui          t1, 20456
                  ori          zero, t1, -358
                  add          a3, s10, a2
                  sra          s0, sp, gp
                  slti         t4, t3, 1466
                  or           a0, zero, tp
                  add          s11, s5, s4
                  xori         s10, t6, -936
                  slli         a2, gp, 9
                  add          a1, a6, a6
                  srai         s7, a2, 13
                  addi         t4, a3, -1816
                  or           zero, sp, a0
                  srli         s2, s2, 26
                  slli         s0, sp, 18
                  sll          s9, t4, t5
                  slt          tp, s7, a7
                  srl          t5, tp, a4
                  auipc        s2, 572911
                  slli         t2, s9, 29
                  lui          gp, 951761
                  or           s0, s8, t6
                  nop
                  add          s10, ra, a6
                  srli         t1, a3, 19
                  sll          t5, a6, t1
                  nop
                  sltiu        s1, s10, 743
                  sub          gp, t0, zero
                  sltiu        t5, s3, 369
                  andi         a6, t1, 771
                  auipc        a3, 79919
                  addi         s9, s0, 945
                  sltiu        a4, s4, -1979
                  xori         sp, s9, 1536
                  andi         t0, t4, -272
                  ori          sp, t6, -1622
                  add          tp, s7, ra
                  slt          ra, s4, t3
                  addi         zero, ra, 280
                  nop
                  sltu         zero, t3, t0
                  sll          tp, t4, s2
                  sltiu        a6, s4, 1144
                  slt          ra, a6, a0
                  lui          zero, 849224
                  andi         sp, ra, 1356
                  add          a6, a1, t5
                  nop
                  auipc        s3, 313522
                  sra          a0, s10, s6
                  sltiu        s9, s6, 582
                  srli         tp, t2, 18
                  xori         a2, ra, 1935
                  srl          t1, a2, a4
                  lui          tp, 938195
                  sra          t2, s9, s6
                  slli         sp, a2, 18
                  slti         t1, zero, -777
                  lui          s8, 172773
                  andi         s5, s9, 1959
                  ori          s10, zero, -1313
                  addi         t1, t6, 941
                  ori          a4, tp, 386
                  ori          s2, s2, -993
                  sub          s6, zero, t1
                  or           a3, a1, t1
                  srl          s9, s5, a1
                  sra          zero, ra, s6
                  and          sp, s1, t6
                  auipc        a6, 266322
                  sll          t2, a0, a0
                  sltu         t4, s0, a4
                  lui          s7, 205372
                  addi         t1, t5, -959
                  and          t1, s5, a3
                  ori          a2, s7, 696
                  slt          a2, s6, a2
                  and          a1, s2, t0
                  slti         t1, s7, -930
                  sltu         a4, t6, s3
                  slli         t3, t5, 23
                  or           t4, t1, s8
                  slt          a0, zero, a4
                  sltu         a3, ra, a2
                  slti         t2, s4, 61
                  slti         a5, t1, -653
                  slt          tp, a5, s3
                  slli         a4, a6, 28
                  sltiu        a1, a1, 1826
                  slli         s0, a6, 3
                  sltu         gp, tp, t4
                  or           t4, s7, s3
                  nop
                  sltu         s3, a0, t2
                  lui          t1, 595395
                  xori         s0, gp, 363
                  sll          s3, tp, a7
                  slt          s1, s9, s1
                  xori         s5, sp, -1581
                  auipc        s0, 294544
                  slt          s10, gp, zero
                  nop
                  slti         a1, s1, -1768
                  sltu         a1, t3, s4
                  sra          a3, tp, tp
                  andi         sp, gp, -743
                  sltu         a3, zero, s8
                  or           s10, t5, a3
                  sltiu        a3, t6, -1071
                  slt          s0, s10, t0
                  srai         t1, zero, 13
                  or           ra, s9, s9
                  slti         s9, s10, -1797
                  lui          sp, 335493
                  or           a4, t6, s1
                  sltu         a3, s4, s2
                  lui          t1, 576301
                  sub          a0, t4, t5
                  sub          s5, gp, s7
                  srai         s10, s2, 4
                  xor          a6, s9, a4
                  slti         t0, t6, -1372
                  srai         tp, a3, 3
                  nop
                  ori          s7, s3, 667
                  sll          gp, t4, s1
                  lui          t0, 1024035
                  sub          s8, s9, tp
                  xori         s5, ra, 656
                  sra          zero, t0, a0
                  xori         s3, s4, -1132
                  or           s5, a4, t6
                  sltu         t2, a1, t1
                  sub          ra, s0, s6
                  srl          s11, a0, s10
                  lui          s9, 293172
                  lui          s9, 191961
                  srai         s2, t0, 27
                  lui          t5, 581037
                  xor          ra, t3, gp
                  slli         s11, s0, 11
                  srli         a1, t0, 7
                  xor          a2, s3, t0
                  slti         t2, t5, -905
                  add          s1, t1, a5
                  slt          t2, t6, tp
                  sltiu        a5, s11, -251
                  sub          a2, s3, gp
                  andi         s11, a6, -554
                  sll          s1, sp, s4
                  auipc        sp, 567242
                  sra          ra, a7, s2
                  and          s1, s6, s9
                  srai         a1, a5, 13
                  srli         t1, t2, 30
                  sll          gp, s5, s11
                  sub          a4, s0, s8
                  slt          sp, tp, s8
                  sub          a3, a0, zero
                  xori         s8, gp, 1610
                  sltu         tp, t1, gp
                  xor          tp, s7, t5
                  andi         s5, sp, 401
                  sltu         t2, ra, s2
                  ori          a1, a0, 896
                  add          s9, s11, a1
                  add          s9, s7, a7
                  srai         t2, s7, 19
                  sltu         gp, t5, a2
                  ori          s10, t3, -1606
                  slt          t1, gp, a4
                  sll          sp, t3, t1
                  sltiu        a5, t1, 628
                  and          ra, s9, s3
                  srli         ra, s8, 13
                  or           t2, zero, a6
                  slti         s10, s10, 1481
                  srai         zero, a4, 24
                  nop
                  slli         s3, s9, 4
                  srl          t3, a4, zero
                  slt          a1, t0, ra
                  slt          a0, t3, a6
                  sll          a0, s2, a5
                  ori          a2, a3, -1885
                  xor          a3, s8, t6
                  slli         s11, s1, 19
                  srl          t0, s0, a6
                  ori          t2, t0, 1988
                  lui          a5, 608128
                  sra          gp, t3, s7
                  slli         a0, s8, 31
                  nop
                  lui          a1, 949994
                  slti         s11, t3, -1377
                  srai         sp, a0, 1
                  srai         a1, s8, 6
                  sub          s2, a2, t0
                  sub          a2, tp, t5
                  slt          a1, t2, ra
                  sltiu        s5, a3, -892
                  srli         t2, s11, 27
                  or           t0, s4, a0
                  add          tp, s1, s7
                  srai         s11, sp, 10
                  sra          s11, s4, s7
                  srl          t5, s1, a4
                  srli         t3, t5, 5
                  addi         a2, a0, -1294
                  slt          a4, a4, s9
                  lui          t5, 672098
                  or           a0, s2, t3
                  srai         s9, a5, 28
                  xor          a3, a2, a3
                  and          a1, s1, a4
                  sltiu        tp, a7, -1241
                  and          zero, s0, s1
                  addi         s8, s8, 1553
                  sltiu        t2, a0, -770
                  srl          t2, t1, a1
                  nop
                  slli         s8, tp, 4
                  add          t0, a6, a1
                  slli         t4, a6, 10
                  nop
                  addi         tp, s2, -962
                  srl          tp, s1, s1
                  nop
                  nop
                  srai         a3, t3, 16
                  sltiu        a6, s11, -200
                  sub          zero, a3, a4
                  sltu         zero, a4, t0
                  sll          t3, s5, s9
                  slti         s5, tp, 848
                  srl          zero, tp, s2
                  ori          s5, sp, 1473
                  srli         s3, t0, 1
                  and          a6, s1, s7
                  andi         a6, t1, -518
                  and          s9, s0, s10
                  sltu         tp, t3, tp
                  sra          a1, s4, s3
                  and          a5, t1, a4
                  andi         a4, zero, -1646
                  sra          ra, s6, t5
                  auipc        s9, 489355
                  slt          s10, t1, sp
                  slt          a6, s0, s4
                  sltiu        gp, s1, -440
                  srai         a6, s5, 15
                  xori         tp, s6, -621
                  sra          s3, s0, s0
                  ori          s6, a7, -928
                  sra          s6, s4, t6
                  sltiu        zero, zero, 209
                  sltu         s3, s9, s6
                  srai         a6, tp, 10
                  lui          ra, 562530
                  srli         a6, t3, 28
                  srli         ra, a5, 4
                  auipc        s2, 681741
                  srai         ra, ra, 25
                  auipc        s8, 936069
                  srli         s5, a3, 8
                  sll          t0, a7, t1
                  xori         a1, s1, -9
                  srl          s3, gp, tp
                  srai         s5, s5, 29
                  sll          sp, s3, t1
                  addi         t3, s10, -1944
                  auipc        s1, 829284
                  sra          tp, zero, s10
                  addi         s10, a0, -1030
                  add          ra, a5, sp
                  or           t0, s2, s5
                  sub          a3, a0, s8
                  ori          t0, ra, -841
                  and          t0, gp, t0
                  srl          a2, sp, a6
                  ori          t1, a3, 194
                  lui          t0, 44531
                  lui          t4, 135603
                  sltiu        a0, s8, 911
                  lui          ra, 158714
                  ori          s5, t6, 774
                  addi         a3, sp, 1272
                  lui          a1, 650928
                  or           s11, a5, a7
                  xor          t0, s8, s2
                  sll          t4, sp, s9
                  slli         t0, a0, 10
                  xori         t0, s9, 1553
                  addi         t3, s6, 1673
                  srl          s0, s1, a7
                  xori         ra, s0, 961
                  slti         a1, s8, 746
                  addi         tp, a2, 176
                  xori         a1, t4, 1754
                  andi         t3, a0, 1485
                  slti         s1, a2, -703
                  srai         s6, s6, 3
                  sll          t3, sp, t0
                  and          t0, a6, a7
                  ori          s0, t2, 846
                  sra          t2, s3, t3
                  andi         s6, a4, -595
                  ori          a1, a1, 1983
                  auipc        t0, 726209
                  ori          t1, a2, 868
                  xori         s7, a4, -1923
                  lui          s5, 64131
                  xori         a3, ra, -1017
                  srli         zero, s2, 14
                  sra          t2, s11, sp
                  sra          a0, sp, gp
                  sub          t4, t2, s2
                  slt          s3, ra, gp
                  andi         s11, s5, -1647
                  sltu         t5, a5, s10
                  nop
                  addi         t3, s8, -1692
                  or           s3, a6, s1
                  slt          t5, a0, s3
                  lui          a3, 322313
                  lui          s5, 590803
                  and          t5, a1, ra
                  sltu         s6, s2, s9
                  srl          a5, t6, s7
                  or           gp, a5, gp
                  sltu         s7, t6, s11
                  xori         a5, t2, 1746
                  sra          gp, t2, s2
                  srli         s2, ra, 23
                  slt          gp, gp, s6
                  slti         a5, s7, -1230
                  and          t1, s1, a2
                  addi         a0, t2, 302
                  add          t5, a3, a2
                  srai         gp, s9, 2
                  slt          sp, s1, s11
                  xori         s3, s2, -6
                  sltiu        t2, s9, -2016
                  slti         a3, tp, 1633
                  or           zero, t1, t0
                  and          a1, s2, s8
                  xor          t1, s11, t0
                  srl          s9, tp, s8
                  auipc        s2, 87940
                  srl          a1, t1, sp
                  slli         a2, a4, 7
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           a1, 0x239f5523
                  li           t2, 0xbec6d617
                  li           a3, 0x6bfb70fe
                  li           s5, 0x6149ceab
                  li           gp, 0x80000000
                  li           s6, 0x0
                  li           s0, 0x311252ff
                  li           s7, 0x80000000
                  li           s9, 0xffffffff
                  addi         a3, t2, -141
                  nop
                  lui          s9, 506258
                  add          s9, s9, a1
                  nop
                  addi         t2, t5, -274
                  add          s0, s9, t5
                  auipc        t2, 160054
                  lui          a3, 107092
                  nop
                  auipc        a3, 725867
                  add          gp, s7, s6
                  add          t5, s0, s6
                  sub          a1, s6, a3
                  nop
                  addi         t2, s9, -1997
                  sub          s5, a3, s0
                  nop
                  sub          s7, s0, a1
                  add          t5, s7, s6
                  nop
                  sub          gp, t5, t5
                  sub          s0, a3, s7
                  add          s6, s5, a1
                  nop
                  sub          s9, s0, t2
                  addi         gp, s5, -1169
                  add          a3, gp, s7
                  lui          s6, 91562 #end riscv_int_numeric_corner_stream_7
                  sra          a4, a6, s6
                  sra          sp, t4, s2
                  andi         s9, s3, 899
                  sra          a4, t3, sp
                  lui          s0, 415996
                  or           s2, s0, a0
                  auipc        s8, 222799
                  and          gp, s3, s8
                  srai         s8, gp, 4
                  slti         t0, gp, -1508
                  sltu         t0, sp, a4
                  slt          a0, a2, s6
                  srli         s6, s10, 22
                  sltu         t5, a4, a7
                  sub          s6, s11, s4
                  sra          a1, t4, s2
                  or           s5, t0, s6
                  slt          t4, s2, a1
                  add          s9, zero, t2
                  ori          s6, t6, -877
                  sra          zero, a0, sp
                  slli         s10, s0, 29
                  andi         s9, s8, 1866
                  add          s2, s6, a4
                  srl          s5, s9, a7
                  sltiu        t4, s1, -146
                  sub          ra, a7, sp
                  sra          s11, sp, t6
                  slt          zero, s11, s3
                  xor          s3, s3, t3
                  sltiu        s2, s10, 215
                  andi         t1, a0, -1162
                  slti         s2, s7, -701
                  andi         s1, t5, -1467
                  slli         s8, s2, 27
                  or           a3, t0, gp
                  ori          sp, s9, 491
                  slt          t3, tp, a4
                  sltiu        t0, a6, 113
                  or           a1, s0, t3
                  xori         a2, s11, -1602
                  or           t5, a3, s6
                  slt          s0, t4, a3
                  slt          t5, s4, t1
                  add          a3, s9, s7
                  sltiu        s6, a1, -752
                  sll          s9, a5, t6
                  slti         a2, a5, 1457
                  or           t3, a4, t3
                  sra          t0, s8, t3
                  ori          a0, a1, -786
                  sltiu        a5, s0, -1352
                  srai         s2, a6, 15
                  xori         s5, s7, -426
                  srli         ra, s10, 20
                  sra          a3, s2, t0
                  lui          s11, 919529
                  slt          s0, s10, sp
                  andi         a2, a3, 505
                  sltu         s7, s5, s6
                  add          a4, tp, zero
                  slli         ra, s1, 19
                  slti         s1, a3, 1799
                  sub          a0, s10, a7
                  srli         a2, t2, 31
                  xor          t3, a7, s0
                  sltiu        gp, t1, 1074
                  sub          s3, t0, t3
                  xori         s8, s4, -120
                  addi         ra, t4, -398
                  and          gp, zero, t1
                  sll          tp, a2, s9
                  sra          ra, s2, s2
                  andi         s9, a7, 1893
                  xor          t0, s11, a3
                  srai         a2, zero, 19
                  auipc        a1, 981706
                  sltu         a4, a0, t1
                  or           zero, s8, t1
                  sub          tp, t2, s7
                  slli         s9, s4, 8
                  srl          sp, s8, a7
                  and          s7, ra, t5
                  andi         t2, a5, 904
                  xori         s9, a1, -640
                  slli         s6, a7, 11
                  srai         zero, zero, 24
                  lui          s7, 890622
                  sltiu        a2, a3, 1678
                  slli         a5, a5, 10
                  slli         t1, s11, 28
                  sub          s7, t4, tp
                  addi         s1, a6, 991
                  sra          t5, s8, a7
                  auipc        t0, 552226
                  srai         s6, s4, 25
                  srl          t5, t2, a5
                  and          s2, t0, tp
                  add          t1, s2, s1
                  and          a2, t2, s0
                  srl          s1, t6, s10
                  sll          s5, a2, s2
                  sub          s2, sp, s5
                  sub          a3, a2, a4
                  sub          tp, s9, a5
                  slt          s10, tp, ra
                  andi         s3, t0, 1481
                  ori          a0, s6, 1243
                  sltiu        s9, t1, -422
                  addi         t4, a1, 163
                  slti         s8, t0, 1901
                  andi         s1, s1, 137
                  and          t2, t1, t3
                  sltu         a3, s3, a5
                  sltu         a5, s8, s4
                  lui          ra, 655561
                  sra          a1, t6, a2
                  add          s3, s6, t0
                  add          t0, s0, t2
                  slti         s5, a7, -1572
                  or           s3, t0, a0
                  srai         t2, a5, 27
                  auipc        s1, 446015
                  addi         sp, s1, -1755
                  srli         s0, s3, 0
                  add          s3, tp, sp
                  nop
                  sub          s2, a3, a5
                  slti         s0, a3, -1618
                  nop
                  sra          t3, s5, a1
                  addi         ra, s10, 34
                  slli         a3, s6, 29
                  and          s7, s10, t1
                  sltu         a5, t5, s1
                  and          s6, a7, s7
                  srai         a6, s11, 3
                  add          s7, s1, a1
                  auipc        a2, 441132
                  and          t0, s1, a7
                  ori          ra, s1, -1739
                  slli         s6, s5, 1
                  xor          s9, t0, t6
                  xori         tp, s3, 87
                  sltiu        s6, gp, -283
                  sub          s0, s10, s11
                  auipc        a1, 810716
                  sltiu        a2, a1, 530
                  slti         s3, tp, 988
                  ori          a6, s2, 1064
                  andi         s6, s7, -357
                  sra          s5, sp, s4
                  srai         a4, t5, 5
                  slli         a1, t2, 3
                  nop
                  slt          s8, t2, a0
                  xor          s6, t0, a6
                  srl          t4, s9, zero
                  lui          t2, 355113
                  lui          ra, 474638
                  xori         a6, s7, 980
                  srli         ra, a2, 23
                  ori          t1, sp, 1457
                  auipc        s3, 743144
                  sll          s8, s8, s6
                  lui          zero, 212188
                  andi         s9, gp, 1831
                  slli         s8, gp, 3
                  ori          t3, gp, -1447
                  slt          a6, a3, s9
                  and          s0, s11, a2
                  andi         gp, a7, 565
                  andi         s0, s9, -189
                  addi         a6, a2, 1947
                  xor          s8, t1, a1
                  xor          a5, s10, a6
                  and          a3, s3, s3
                  slt          a6, a3, s0
                  addi         a6, t6, 75
                  srli         s9, a2, 2
                  srai         s1, t4, 13
                  addi         a5, gp, -1539
                  slti         a3, zero, -785
                  slt          ra, a2, s11
                  xor          s7, a6, a0
                  lui          a2, 365744
                  sra          a3, a4, a4
                  ori          a6, s5, -1560
                  slt          a3, s0, t1
                  srai         s6, s8, 20
                  sltiu        a5, gp, -852
                  srli         s1, a0, 10
                  ori          ra, a2, -939
                  sra          s3, s0, sp
                  sll          s3, t4, s4
                  sltiu        gp, t1, -226
                  lui          s7, 162217
                  ori          s5, a0, 1716
                  andi         s3, s7, -1530
                  slti         a1, s10, -406
                  sub          s11, s3, s3
                  sll          a3, a5, s0
                  slli         s3, t4, 31
                  xori         s2, t2, -305
                  sub          a2, s4, ra
                  xori         gp, a3, 44
                  sra          zero, s0, s1
                  andi         s8, zero, -972
                  slti         s0, t0, -778
                  sra          t2, s7, s10
                  slt          t2, s4, gp
                  ori          a2, s7, 1955
                  srai         t2, gp, 26
                  sll          ra, t2, t4
                  sltu         a0, a4, t2
                  sltiu        a0, sp, 1199
                  and          s0, a2, tp
                  addi         a1, s6, -1468
                  auipc        a1, 275601
                  sra          a6, s10, t0
                  auipc        t0, 723781
                  nop
                  sltu         t0, a6, t2
                  sub          s3, s6, s1
                  sub          s9, s8, a0
                  sll          t3, a6, s10
                  srai         a6, a3, 20
                  add          s3, t4, t6
                  add          t0, t1, s5
                  sltiu        a2, t3, 1946
                  xor          t1, zero, sp
                  sltiu        s8, a6, 864
                  sltu         a1, a6, a5
                  sll          a2, t4, a5
                  sltu         t5, s3, s8
                  auipc        a1, 718961
                  sra          tp, s2, s6
                  sub          t0, sp, a2
                  slti         s6, a2, 144
                  xori         zero, a1, -513
                  sub          a0, s5, s2
                  sltu         s10, s3, a6
                  srl          a1, ra, t4
                  srli         a5, sp, 22
                  and          s0, s5, s4
                  slli         sp, s8, 26
                  or           t2, t5, s0
                  ori          sp, a5, -774
                  and          t3, tp, sp
                  sub          t3, sp, s7
                  auipc        a2, 993170
                  or           s9, s0, zero
                  ori          s9, s1, -691
                  auipc        a4, 328498
                  or           s5, t6, s7
                  sub          s6, s9, a1
                  srli         s3, a0, 20
                  sub          t5, t5, s3
                  slli         a1, s1, 29
                  andi         s8, a2, 2047
                  srai         a6, t4, 15
                  sltiu        a0, a4, 654
                  srli         a1, s7, 8
                  xori         t4, a7, -804
                  andi         a2, s10, -2
                  sltiu        s5, s11, -1667
                  srli         s2, s8, 8
                  srl          t4, s3, zero
                  srli         s3, s8, 17
                  and          s6, t0, s7
                  xor          s11, s9, a3
                  slti         s10, t6, 1778
                  xori         a4, ra, 1108
                  sltu         a5, t1, sp
                  and          a5, s6, s4
                  xori         t0, s11, 626
                  or           t3, s4, a7
                  sltiu        a2, s4, 77
                  lui          sp, 296432
                  slt          s9, t5, s10
                  slti         a4, a6, 819
                  srai         gp, t1, 9
                  sltiu        ra, t4, -63
                  srai         t0, s5, 30
                  slt          s5, s10, gp
                  srli         s6, t0, 2
                  or           t1, ra, a4
                  slli         gp, t4, 24
                  srli         a6, a2, 24
                  sltu         s5, s2, a4
                  slt          s5, a1, a4
                  srli         s3, gp, 1
                  xori         s5, t2, -1238
                  andi         s10, a6, -1191
                  and          a6, a2, a6
                  srli         a5, t6, 31
                  add          t2, s10, zero
                  or           s8, s11, s9
                  sra          s10, a0, a1
                  srl          s9, s9, s2
                  srli         ra, s9, 21
                  sltu         s0, a3, gp
                  slti         t2, s7, 617
                  nop
                  addi         a2, tp, -762
                  ori          s0, s11, 828
                  addi         t0, a5, -134
                  sub          a6, a7, t3
                  slti         t0, s8, -1439
                  lui          t4, 56360
                  and          tp, s7, s11
                  ori          t1, t4, -703
                  slli         gp, a1, 3
                  xor          a6, s0, s0
                  sra          s9, s1, t3
                  nop
                  srai         s6, ra, 25
                  ori          t5, s2, -1871
                  ori          t1, s4, -971
                  or           ra, s2, t6
                  srl          ra, gp, s3
                  sra          s0, s5, s10
                  nop
                  auipc        s5, 593556
                  sll          s10, s8, t2
                  auipc        s7, 1034877
                  andi         s7, a2, -1937
                  slt          s3, sp, zero
                  sltiu        s7, s11, 334
                  addi         s1, t5, -942
                  or           t0, sp, s9
                  sltiu        s2, s10, 1714
                  slli         s3, s6, 1
                  ori          a6, a1, -1600
                  add          s3, t3, s3
                  slt          a3, t6, t5
                  sltiu        sp, s8, 1645
                  srl          s6, s4, s3
                  sub          a5, t3, s2
                  sll          s2, a6, a1
                  sltu         s10, s3, s7
                  slli         t3, t3, 30
                  xor          s7, sp, a5
                  srl          s11, t0, s10
                  slti         t0, t4, -1434
                  or           t4, s1, a2
                  sub          tp, a0, s4
                  srl          s2, t5, a2
                  or           s8, a5, s4
                  srli         a5, tp, 28
                  addi         sp, a4, 35
                  slt          s6, ra, s1
                  sltiu        s2, a7, 599
                  srai         t2, s4, 22
                  slli         s8, t4, 26
                  ori          s10, tp, 171
                  srai         a6, t3, 30
                  xor          a0, s3, a6
                  sltu         a4, t4, s9
                  srli         s10, s5, 11
                  srai         s9, a5, 3
                  sltiu        t5, s0, 1807
                  srai         t1, s1, 15
                  auipc        s9, 289650
                  sra          a4, s8, s6
                  slli         s9, a7, 23
                  slt          t2, t3, sp
                  sll          a0, s7, gp
                  addi         t3, s5, 1944
                  ori          s2, a7, -678
                  sub          s0, t6, s6
                  slli         s10, a5, 16
                  sub          tp, a3, t2
                  add          gp, a6, t5
                  slti         a1, a3, 258
                  slli         a4, s2, 2
                  sll          s10, s6, t2
                  or           s9, ra, t6
                  sub          s1, s5, a2
                  sub          ra, ra, t3
                  andi         s11, gp, -169
                  srai         s6, tp, 26
                  lui          t5, 114419
                  xori         zero, a6, 1079
                  srai         sp, a1, 19
                  slli         s7, ra, 1
                  addi         t0, ra, -966
                  sll          t0, t4, t1
                  nop
                  nop
                  andi         t4, s4, -1022
                  sltu         a2, t0, s6
                  nop
                  srli         t0, t1, 29
                  xori         tp, t3, -510
                  or           a3, a6, s11
                  ori          a5, a1, -1939
                  sltiu        s10, s1, -561
                  slt          ra, tp, s11
                  slti         t3, t2, 1623
                  sltiu        s0, s2, 1142
                  sltiu        t0, tp, -1072
                  xori         t3, t5, -278
                  sra          a0, a3, tp
                  srl          sp, s4, t6
                  addi         s6, s3, -443
                  auipc        t0, 224037
                  andi         t4, a6, -31
                  or           s7, s7, s4
                  addi         zero, s7, 1081
                  srli         a3, t6, 5
                  xor          s7, s9, s8
                  auipc        tp, 473633
                  addi         t3, t2, 290
                  lui          s8, 71853
                  slt          tp, s11, s8
                  srl          t2, s5, s11
                  xor          t3, a1, t3
                  or           s1, s10, a0
                  or           t2, a2, s4
                  sltu         zero, t1, zero
                  srl          s1, ra, s10
                  xor          a4, tp, tp
                  srli         a1, s1, 4
                  xor          zero, s3, t0
                  nop
                  slli         t1, s4, 2
                  xori         a1, t4, 1015
                  add          s6, a1, t0
                  xori         t4, ra, 1430
                  srl          s7, tp, s0
                  slti         t3, a3, -1422
                  ori          t0, tp, 1702
                  sltiu        tp, a4, -1158
                  slti         ra, a6, -24
                  sll          a3, s1, zero
                  auipc        a1, 41977
                  ori          s3, a7, -1729
                  sub          s1, a5, a5
                  sltu         s2, s9, sp
                  auipc        s10, 569784
                  lui          tp, 544433
                  srl          s2, a4, a2
                  slti         zero, a3, 1788
                  add          s6, s1, a0
                  sub          tp, sp, a4
                  add          sp, s9, sp
                  xor          s9, s3, t1
                  addi         t3, s3, -1999
                  slti         t2, a0, 94
                  lui          s2, 171878
                  auipc        s11, 86494
                  slt          sp, s9, s10
                  slli         t0, a2, 8
                  auipc        s8, 73332
                  andi         a2, t3, 790
                  ori          ra, a7, 1976
                  andi         ra, s11, 2003
                  xor          a0, s7, a3
                  slt          t0, sp, a3
                  auipc        t1, 298909
                  srl          a4, a6, a6
                  sra          ra, s7, s11
                  srl          t4, s10, t6
                  slti         s8, s8, 1799
                  slli         s10, t6, 17
                  srai         a6, s10, 9
                  ori          a6, t2, -1681
                  ori          ra, ra, 1906
                  slti         sp, s10, -1904
                  slt          gp, s1, t3
                  xor          t0, t5, s4
                  slti         zero, s10, 1726
                  and          s9, s4, s2
                  srli         t2, t5, 22
                  nop
                  add          s6, s7, s7
                  slti         a5, a7, -1677
                  slli         tp, s0, 9
                  auipc        gp, 654304
                  sltiu        a3, s3, -1512
                  lui          t2, 509190
                  xori         a0, s6, -1424
                  addi         s2, zero, 1169
                  srai         s11, t1, 28
                  slt          tp, t2, a6
                  slt          s7, t4, t4
                  ori          t4, a3, 1205
                  andi         s10, t6, 118
                  slti         sp, t4, 1844
                  or           s8, a7, s1
                  slti         t0, s6, 1332
                  sra          s6, s2, a4
                  andi         s9, t2, 1966
                  nop
                  lui          tp, 801809
                  srli         s11, s2, 24
                  srl          a2, s4, a5
                  auipc        s11, 54880
                  sub          s1, a7, a3
                  sltu         s9, s11, s11
                  addi         a5, a4, -262
                  sra          s6, s9, a2
                  sra          a5, a6, t1
                  nop
                  srai         t3, s10, 14
                  slli         t4, s3, 26
                  lui          s11, 932751
                  or           a0, t5, s3
                  xori         a5, t1, 335
                  sra          t3, t6, s7
                  nop
                  lui          gp, 307692
                  sll          a2, a5, t0
                  sltu         s6, t2, a4
                  auipc        tp, 523864
                  or           t3, t6, a3
                  nop
                  or           a2, s0, s2
                  and          s1, t0, s2
                  srl          a0, ra, zero
                  srai         s10, s0, 10
                  slt          s2, t4, a6
                  auipc        t2, 283112
                  srli         s2, s6, 7
                  slt          a5, a3, a7
                  sub          t5, t6, s11
                  and          zero, a0, s7
                  addi         s0, t0, 1242
                  slti         tp, s6, -1071
                  and          a2, s4, s2
                  or           s9, s7, s1
                  auipc        a6, 751477
                  srai         s11, zero, 23
                  or           s2, tp, a2
                  add          a1, ra, t4
                  slti         t5, a2, -1644
                  xori         a0, t0, 1542
                  xori         tp, t5, 1660
                  srai         t0, t3, 5
                  lui          s9, 268736
                  nop
                  slt          t2, s6, a5
                  sll          t2, s8, t4
                  srl          s6, s0, s9
                  srl          t2, s11, a2
                  nop
                  srl          a4, t3, s10
                  srl          t1, s10, s1
                  srli         s5, a0, 16
                  sub          t1, s0, sp
                  sub          tp, a2, a1
                  addi         t0, s2, 1387
                  slti         a3, t6, 932
                  sra          s10, s3, t0
                  sub          a5, s1, t3
                  sra          a4, s1, s3
                  xori         s10, s1, -1146
                  nop
                  slt          s5, a2, s0
                  andi         a6, a1, -809
                  lui          s8, 63376
                  lui          s10, 144165
                  sra          t5, a4, a2
                  ori          s2, a4, -362
                  auipc        s7, 33993
                  or           s1, s7, t1
                  slli         s7, s11, 23
                  xor          ra, sp, t1
                  srai         s5, sp, 12
                  addi         t4, s10, -36
                  sltu         a2, s9, a5
                  nop
                  addi         a1, a2, 544
                  or           s11, tp, t0
                  slt          a5, s9, t1
                  srai         s2, a5, 15
                  sra          zero, s8, a0
                  andi         s1, a3, 1215
                  xor          s11, ra, s6
                  sub          a3, s1, s4
                  and          a6, s0, s6
                  sra          a4, a2, t1
                  slli         s6, t2, 2
                  sll          t0, s6, zero
                  sra          t3, t1, t6
                  sltu         a0, t3, a0
                  ori          a4, t4, 1519
                  add          a2, t1, t1
                  sub          a3, t6, s11
                  and          s2, a0, t6
                  xor          a5, a3, s9
                  sltiu        tp, tp, -723
                  addi         a3, t1, -219
                  lui          s1, 103520
                  andi         s7, s1, -1578
                  slli         s0, s0, 18
                  ori          s10, t1, -1117
                  sltiu        zero, t0, -1193
                  addi         a3, s8, 443
                  sra          gp, s11, t3
                  xori         zero, s11, -1752
                  sltu         a3, a3, t3
                  nop
                  xor          t4, sp, t5
                  slt          s6, t5, t3
                  xor          s5, t5, s7
                  nop
                  xori         a2, t6, -178
                  add          t2, t6, t3
                  sltu         a2, s11, gp
                  srl          s2, a1, s3
                  nop
                  srai         s8, a5, 20
                  sltu         a3, a1, s6
                  sll          s11, s4, a0
                  slti         t5, a2, 1283
                  andi         t2, s1, 1384
                  andi         t5, gp, 10
                  lui          s10, 214368
                  slt          sp, s10, sp
                  ori          t2, s0, 1399
                  sltu         s0, t2, sp
                  and          s3, a5, t4
                  xor          s1, a4, t0
                  or           ra, s4, t3
                  nop
                  xori         s1, t3, 1951
                  addi         a3, t1, 579
                  srli         a6, s4, 3
                  srai         a3, t4, 24
                  lui          s0, 173447
                  srl          s8, s10, t4
                  srli         a5, gp, 15
                  and          t0, s3, s8
                  xor          t3, ra, s7
                  lui          sp, 866168
                  auipc        s2, 489944
                  and          s2, a4, s6
                  nop
                  slt          s7, a0, s11
                  and          a4, ra, s11
                  slt          t5, a0, t4
                  srl          s11, t3, a6
                  lui          t0, 123737
                  sltu         s6, s8, s7
                  addi         s9, s0, -777
                  and          a2, zero, s8
                  lui          a1, 651382
                  slli         a2, s0, 7
                  add          s11, a6, t2
                  add          gp, s3, t3
                  ori          s0, s0, 911
                  sltu         a3, s8, s4
                  nop
                  sltu         a4, t2, t4
                  srai         s2, s10, 5
                  lui          s10, 323392
                  sltu         zero, a5, s0
                  slt          a1, t4, s11
                  sll          tp, t0, gp
                  add          s9, a1, tp
                  sra          t0, t1, sp
                  srli         gp, a6, 21
                  slt          s6, s2, s5
                  slt          a6, a0, t0
                  auipc        s1, 229464
                  addi         a5, t5, 1878
                  lui          a5, 202370
                  auipc        gp, 16525
                  addi         s8, a4, 1742
                  andi         s10, tp, 669
                  sll          a0, t3, s5
                  auipc        a3, 113810
                  auipc        t3, 497714
                  and          t2, a6, t6
                  andi         sp, t6, 416
                  addi         t5, s3, -104
                  sltu         a5, a6, a1
                  slti         a3, t1, 616
                  srli         t0, s5, 27
                  nop
                  or           t3, a1, s1
                  ori          sp, zero, -536
                  sltu         t2, t4, a5
                  add          s11, s5, s4
                  nop
                  slt          tp, a6, a1
                  and          s1, t0, ra
                  add          s0, zero, ra
                  xor          s8, ra, t3
                  sra          s11, t0, t0
                  auipc        tp, 303291
                  slt          ra, a3, s8
                  or           a3, s5, t0
                  addi         a5, s11, 1798
                  xor          s2, a0, s6
                  sltiu        s0, gp, -339
                  slli         s10, a5, 25
                  andi         a2, s1, -1525
                  addi         a4, sp, -1194
                  srli         a4, a7, 19
                  ori          s0, a3, 1335
                  nop
                  or           t3, a6, s11
                  sll          zero, s10, s3
                  sltu         t2, a0, s4
                  xori         a4, a1, -854
                  and          a4, a3, t2
                  add          t4, s0, s6
                  srai         s2, a4, 8
                  or           a3, t0, t4
                  srl          a3, a7, a2
                  sltu         ra, t5, a4
                  srai         a5, s8, 5
                  sltu         s6, t1, a4
                  srai         a4, a1, 18
                  nop
                  srl          a1, t4, s5
                  slti         s10, s8, -1012
                  srl          s8, t2, a0
                  srai         t5, gp, 26
                  and          s2, a5, zero
                  slt          a4, t5, t6
                  or           s0, a3, sp
                  xori         s5, t0, -1377
                  addi         t2, s7, -842
                  addi         s1, a6, 241
                  andi         gp, a4, -1222
                  nop
                  slti         t5, a2, -718
                  slli         gp, gp, 0
                  and          s1, s0, s9
                  slt          sp, a5, ra
                  srli         s8, s1, 18
                  add          s3, a6, a5
                  andi         s9, s6, 2036
                  sltu         t5, s11, s3
                  srli         tp, t2, 10
                  lui          s10, 79078
                  sltu         tp, s6, s8
                  slli         t0, s9, 0
                  add          s9, a4, gp
                  sltu         s2, tp, s1
                  ori          s2, s0, 1349
                  sll          t3, sp, a1
                  slli         a5, t3, 25
                  or           s8, t0, tp
                  slli         t0, a2, 5
                  xor          a2, a2, a1
                  srl          zero, t4, a6
                  lui          t5, 343037
                  xor          ra, s6, s3
                  addi         ra, sp, 291
                  srl          t2, a1, s8
                  sub          s11, s3, s4
                  sll          s7, t1, a2
                  slli         a0, t6, 16
                  auipc        gp, 169364
                  lui          t2, 993088
                  srl          tp, a5, a0
                  srl          gp, t0, a5
                  add          tp, s0, s3
                  and          t3, t5, s10
                  sra          s1, ra, a5
                  srai         ra, s5, 20
                  xor          tp, a4, t3
                  xor          a5, t5, a6
                  nop
                  sltiu        s9, s5, 866
                  slti         t3, s6, -1621
                  slti         t5, zero, -1928
                  srl          t1, s1, t1
                  slt          s5, a3, s2
                  andi         t5, s5, -1908
                  addi         s7, zero, 1491
                  auipc        s8, 41758
                  lui          s0, 672633
                  sltiu        s8, t0, -1606
                  add          t2, s1, t6
                  slt          a4, s5, s7
                  add          zero, tp, gp
                  auipc        t4, 387399
                  sltiu        a4, s4, -634
                  slli         a4, gp, 24
                  xor          ra, s8, ra
                  sra          s0, s10, a0
                  xor          s1, zero, t6
                  sltu         a0, gp, s2
                  sub          sp, s4, t6
                  nop
                  sll          s9, t3, zero
                  add          s7, gp, a3
                  add          a5, t3, t2
                  andi         ra, ra, -1188
                  xori         a2, a0, 1281
                  xori         a4, s10, 1777
                  ori          s8, t2, -109
                  sra          tp, a3, t0
                  sltiu        a1, s3, -1460
                  slli         s10, s1, 0
                  srl          zero, t1, t2
                  srai         s3, s8, 10
                  slt          t4, s0, a5
                  sub          s5, s7, s0
                  add          t4, s3, s8
                  lui          zero, 204409
                  sltiu        s9, gp, 707
                  sltiu        zero, tp, 1118
                  add          ra, s5, t0
                  auipc        s1, 83010
                  xori         s2, t0, 1565
                  slli         t5, a2, 30
                  sub          ra, gp, t6
                  slti         t4, gp, -769
                  slli         s2, a7, 13
                  sll          t1, s4, s3
                  auipc        s6, 928870
                  srl          sp, t3, s10
                  andi         a0, t2, -2041
                  xori         zero, sp, 1478
                  xori         s1, a0, -201
                  sltu         a6, s2, a3
                  sltiu        a3, gp, -1177
                  or           gp, a0, s10
                  auipc        s9, 253733
                  or           s2, a6, a5
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           t4, 0xffffffff
                  li           s10, 0xba89419c
                  li           t1, 0x0
                  li           a5, 0xb53faf61
                  li           s7, 0x80000000
                  li           t5, 0x80000000
                  li           t0, 0xe278475a
                  li           a1, 0x82791e49
                  li           gp, 0xffffffff
                  auipc        t5, 273534
                  auipc        gp, 917113
                  add          s10, t1, s0
                  auipc        t4, 559064
                  addi         s10, s0, -1225
                  lui          a5, 746819
                  auipc        t1, 779211
                  nop
                  auipc        t4, 548094
                  addi         t1, t5, -344
                  auipc        t1, 1030137
                  add          a5, t1, s0
                  sub          t5, t5, t1
                  auipc        gp, 558581
                  nop
                  nop
                  addi         s10, s7, -300
                  sub          t5, s10, s0
                  auipc        s0, 91640
                  addi         t4, s10, -456
                  nop
                  addi         a1, t4, -1245
                  auipc        s10, 203877
                  add          a1, t5, a1
                  lui          t0, 984354 #end riscv_int_numeric_corner_stream_8
                  srl          a6, ra, s9
                  xor          a3, t5, t3
                  sra          a3, t5, a2
                  srli         a6, zero, 1
                  auipc        t2, 203592
                  sltiu        a3, a2, -2023
                  sra          s11, t0, a6
                  and          s10, zero, t3
                  addi         t2, a0, -173
                  sltu         t1, s6, t0
                  and          a5, t4, sp
                  slti         s2, gp, 713
                  auipc        s6, 23770
                  xor          a6, s8, s8
                  srl          s7, s11, s8
                  add          a1, tp, t4
                  sltiu        s2, a2, 1010
                  sra          s2, s8, s9
                  sll          t4, t4, a4
                  or           s9, t4, a2
                  slli         s10, s8, 10
                  srai         t3, a0, 10
                  lui          t5, 894156
                  sub          t1, s6, sp
                  addi         gp, s10, -1936
                  xor          a2, a3, t5
                  nop
                  srli         s7, s4, 28
                  slli         s1, a1, 28
                  sltu         a0, t1, t3
                  xori         a0, t6, -2013
                  slt          a3, a4, t5
                  xori         a2, s8, 1138
                  srai         a3, s5, 16
                  slti         s10, s8, 368
                  ori          s9, s7, -438
                  sll          t5, s3, a6
                  srai         a3, s1, 27
                  sub          a5, t4, t2
                  auipc        a0, 243751
                  lui          gp, 582317
                  sltiu        t1, s10, 1673
                  sra          t4, s6, s1
                  xori         t5, s7, -1278
                  xori         a3, s6, -972
                  sll          s11, s0, a5
                  addi         t2, t4, -1151
                  sra          s0, gp, a6
                  auipc        a3, 467521
                  xori         s7, sp, -661
                  srai         s6, sp, 15
                  lui          zero, 914010
                  auipc        s1, 503258
                  add          a6, t3, s4
                  lui          s2, 635366
                  auipc        a2, 547967
                  slt          s10, s0, s9
                  lui          zero, 397578
                  sra          t3, t5, t3
                  sltiu        s2, s10, 2032
                  ori          s0, s7, -1564
                  auipc        t0, 688198
                  slli         t3, t5, 20
                  sltu         s11, s5, zero
                  auipc        gp, 1002743
                  sltiu        t1, zero, -776
                  sltu         s5, s4, a6
                  xori         t0, a4, -2035
                  xor          s1, a3, zero
                  sra          a5, s2, t0
                  srli         ra, s10, 29
                  xor          sp, a3, s5
                  slt          t2, a4, s5
                  sltu         t5, zero, t2
                  or           s2, sp, zero
                  ori          t2, t5, 1712
                  add          t0, gp, s9
                  srl          s11, s7, t4
                  lui          a3, 623827
                  slli         a2, s4, 28
                  andi         s9, t4, 453
                  srl          ra, s1, a0
                  sra          gp, t3, a7
                  andi         s1, a1, 117
                  andi         a5, s1, 76
                  lui          t5, 369719
                  addi         t2, t0, -1244
                  addi         t5, s9, -615
                  sub          t3, a0, ra
                  srai         t5, s3, 8
                  sltiu        t3, a7, 245
                  auipc        s10, 131654
                  slt          t3, s5, a0
                  slti         a5, a1, 1105
                  lui          s6, 503172
                  addi         s0, s0, 1729
                  nop
                  sltu         t0, t5, s10
                  addi         a2, s1, 1315
                  sltiu        t5, s4, -995
                  ori          t4, zero, -642
                  srl          t5, a1, a4
                  xori         s5, s0, -1981
                  or           s5, a1, a0
                  slli         t1, a2, 25
                  andi         zero, gp, 1307
                  srl          s9, a1, a0
                  slti         s6, a6, 1415
                  ori          a0, t5, -620
                  auipc        s0, 996910
                  srai         t2, a5, 3
                  xor          t0, zero, s11
                  slt          s8, gp, s9
                  xori         s10, s9, -1168
                  or           t2, s3, a5
                  xori         t4, s2, -688
                  add          ra, zero, tp
                  xori         tp, t6, 953
                  slt          a4, zero, s5
                  slt          a5, s6, s4
                  srli         a0, t4, 29
                  slli         a4, a0, 15
                  xori         s7, t1, 738
                  xori         s0, t3, 1457
                  srl          t3, t3, ra
                  sltiu        s2, sp, 1325
                  andi         s0, t6, -124
                  sltu         a6, sp, a5
                  auipc        t3, 60760
                  sltu         tp, s3, s4
                  andi         t3, tp, 94
                  srai         a2, t5, 5
                  sltu         a0, a4, s3
                  lui          s1, 780267
                  srai         a5, sp, 2
                  slti         gp, sp, -426
                  sltiu        s3, s1, -902
                  slli         t2, s6, 0
                  srai         sp, s1, 6
                  add          t4, s4, tp
                  slli         s2, s3, 31
                  andi         zero, a7, -1861
                  slti         s0, s0, 455
                  sra          a0, a2, a7
                  andi         t0, s5, 1036
                  sra          s10, a7, a6
                  nop
                  or           s0, s1, s2
                  sra          s9, ra, zero
                  xor          a6, s3, a3
                  nop
                  or           sp, t6, gp
                  nop
                  add          ra, s0, t0
                  ori          a4, a7, -1463
                  xor          a1, t6, s8
                  auipc        tp, 667917
                  andi         s10, a7, 1384
                  sub          s8, s1, s2
                  xori         s1, a3, -129
                  ori          a0, t1, 2022
                  andi         s0, t4, -1609
                  ori          a6, gp, 652
                  auipc        s1, 387402
                  nop
                  sub          t2, s9, t5
                  sltu         a2, a7, ra
                  sltiu        s5, s9, 213
                  sub          s6, t3, s11
                  nop
                  and          t3, sp, t2
                  slti         a3, sp, -957
                  slt          gp, a0, a1
                  srli         sp, sp, 17
                  sll          s7, t5, tp
                  sra          a5, t2, t0
                  nop
                  nop
                  andi         t0, t5, -404
                  auipc        a1, 166851
                  sub          a6, s1, t3
                  sltu         s0, t1, s9
                  or           s8, s11, s9
                  lui          tp, 93232
                  sltiu        s11, a6, -830
                  srli         s7, t0, 20
                  slt          a3, a6, s5
                  slti         s7, zero, -685
                  ori          s6, s10, -1472
                  lui          s6, 642036
                  or           s11, s6, a2
                  sltiu        t3, gp, -581
                  sub          s8, s7, a0
                  lui          ra, 616201
                  addi         s0, gp, -1220
                  xor          s10, t5, s8
                  sra          t2, a1, t3
                  srl          s1, s3, s1
                  addi         t0, a4, 53
                  slli         s9, s4, 23
                  addi         a5, s2, 1035
                  sub          sp, a0, s5
                  nop
                  sltu         t5, s10, t0
                  srli         s2, a4, 18
                  slt          s1, t4, s6
                  add          s0, s6, s5
                  srli         t3, s4, 27
                  slli         tp, s11, 19
                  slti         s6, a0, -1810
                  slt          s7, s3, a4
                  slli         s8, ra, 30
                  sltu         t2, a1, a1
                  sub          a5, s3, s10
                  xor          s0, s8, s2
                  nop
                  ori          sp, s3, 1812
                  srl          s8, a7, s10
                  sltiu        s0, a1, -289
                  sltiu        s9, s11, -1386
                  srai         t4, t6, 17
                  slt          a1, a3, s2
                  slti         s9, s8, -625
                  sra          a5, t0, sp
                  xor          a0, t5, s7
                  and          t0, s10, a4
                  andi         s1, tp, 742
                  add          s8, s0, a5
                  ori          a3, s0, 351
                  or           s11, zero, s7
                  lui          gp, 260424
                  nop
                  sll          t1, s6, a7
                  nop
                  srai         s2, s8, 27
                  add          s7, s4, a4
                  add          s3, s10, t6
                  sltu         a0, t1, t2
                  srai         s11, s2, 3
                  srl          t3, s10, s3
                  auipc        sp, 143830
                  srli         t1, s3, 16
                  sll          a6, t6, t1
                  srl          s10, t0, t4
                  sub          s11, a3, t2
                  add          s9, tp, a0
                  and          s1, s7, s0
                  nop
                  auipc        s3, 42978
                  and          a2, s7, a6
                  sub          t5, zero, s11
                  ori          a3, a4, -1962
                  srli         s0, ra, 5
                  xor          a5, a1, t6
                  nop
                  sltu         a4, a6, tp
                  srl          s2, s4, zero
                  slti         a6, t0, 1793
                  xor          tp, a2, a5
                  sub          a3, t2, s7
                  srl          s9, t5, s9
                  andi         t3, t2, -362
                  slti         s6, s9, -1
                  addi         s3, a5, 883
                  srai         a3, ra, 28
                  srai         s8, a6, 21
                  srl          a3, s5, a6
                  sra          s3, s6, t0
                  slli         s10, s3, 11
                  sub          sp, t1, a2
                  add          sp, t3, a0
                  sra          t1, s4, s7
                  sltu         s8, t3, s5
                  srli         t3, t3, 0
                  nop
                  auipc        a1, 1019200
                  srl          s0, gp, s10
                  slt          sp, s0, a5
                  add          a1, s0, a4
                  sra          gp, t3, s3
                  nop
                  sltiu        t3, s11, 979
                  nop
                  lui          t3, 160480
                  slti         gp, s0, 1172
                  xori         s1, gp, 250
                  ori          gp, s10, 731
                  sra          t1, tp, t4
                  and          t3, s10, t6
                  slt          t4, t6, a6
                  add          s7, a0, ra
                  sra          zero, a1, a7
                  slli         s11, s9, 21
                  slt          t4, t0, s0
                  sub          t5, a7, a1
                  slt          s2, t3, a1
                  slt          a4, t1, t5
                  add          a5, a3, zero
                  auipc        t4, 1020854
                  nop
                  sll          t0, t6, a6
                  nop
                  sll          t1, a3, a4
                  lui          t0, 705535
                  sltiu        s1, a4, -1351
                  srli         a5, a7, 27
                  sub          s8, s4, t0
                  andi         s3, a4, -1460
                  sll          s3, t0, a7
                  xori         t0, sp, 1928
                  srai         s1, s2, 10
                  sll          zero, t5, t5
                  addi         tp, s1, 1503
                  slti         a0, gp, -1741
                  slli         t1, t3, 5
                  sub          s8, a5, tp
                  lui          t5, 855660
                  slti         a5, t0, -2043
                  srai         tp, s11, 31
                  slli         s9, s7, 28
                  lui          t4, 918947
                  add          a0, t4, a3
                  addi         t2, s1, -603
                  sltu         t4, s1, zero
                  srli         t5, s9, 25
                  li           a5, 0x88019671 #start riscv_int_numeric_corner_stream_14
                  li           t4, 0x0
                  li           s7, 0x80000000
                  li           gp, 0x80000000
                  li           t0, 0x80000000
                  li           a2, 0xffffffff
                  li           s9, 0x80000000
                  li           s11, 0xdb65a7b9
                  li           sp, 0x8dc0178
                  li           a6, 0x0
                  lui          a5, 778926
                  nop
                  auipc        s7, 510502
                  addi         gp, t0, -107
                  nop
                  addi         t4, sp, 1229
                  auipc        a6, 852946
                  auipc        s9, 922382
                  nop
                  addi         gp, t0, -914
                  auipc        s9, 705940
                  sub          a6, s7, s9
                  lui          s11, 151780
                  sub          s7, s7, a6
                  lui          s7, 853427
                  auipc        a2, 542975
                  add          s11, s7, a2
                  lui          a5, 358719
                  auipc        t4, 424648
                  add          t4, a2, s11
                  add          s9, s9, a2
                  auipc        t0, 621799
                  addi         a6, t4, 447
                  auipc        s7, 924889
                  lui          a5, 1033952
                  lui          a5, 880662
                  add          s11, a5, t4 #end riscv_int_numeric_corner_stream_14
                  andi         s3, t2, 317
                  addi         tp, s11, -1917
                  sltiu        zero, s3, -826
                  auipc        sp, 503291
                  slli         s8, a4, 5
                  andi         s10, s9, 1609
                  sub          s0, a5, s9
                  sltiu        t1, t4, 1103
                  sltu         s2, t6, s4
                  slli         t4, a3, 27
                  srl          s1, s6, a7
                  srl          t0, gp, zero
                  xor          a1, s0, t2
                  xor          tp, s8, t6
                  and          zero, a4, s8
                  srai         s2, sp, 20
                  srli         t5, t5, 7
                  add          s8, t3, s10
                  sll          s6, t6, t6
                  srai         a4, s5, 3
                  lui          s10, 297572
                  andi         a6, s11, 520
                  xor          s1, t1, s0
                  slti         t1, ra, 754
                  and          s10, tp, s0
                  sltiu        s10, s7, -1383
                  auipc        a5, 539293
                  add          a2, a1, gp
                  or           s2, t3, a4
                  add          s8, s11, t5
                  slti         t0, s10, -1699
                  xor          a3, t6, sp
                  sll          a1, s4, s9
                  srl          sp, tp, t0
                  sltu         a1, s2, ra
                  slti         s6, tp, -1937
                  slti         tp, ra, -366
                  or           t5, s3, a2
                  sll          zero, s9, s11
                  xori         t0, s1, -357
                  slti         s8, a1, -1203
                  xor          s10, a1, t0
                  sltiu        t5, zero, -314
                  lui          s8, 827929
                  lui          sp, 304493
                  xori         a6, s7, -37
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           a3, 0xdc3e040
                  li           s5, 0x0
                  li           sp, 0x80000000
                  li           s6, 0x80000000
                  li           a5, 0xffffffff
                  li           s3, 0x0
                  li           s1, 0xffffffff
                  li           t1, 0x0
                  li           a0, 0xffffffff
                  addi         s3, s0, -1232
                  lui          a5, 819313
                  auipc        t1, 577846
                  lui          s3, 707557
                  addi         s3, s3, 1349
                  nop
                  lui          a0, 374443
                  sub          s0, a3, s6
                  nop
                  lui          a0, 350730
                  sub          a5, a3, s0
                  addi         s6, a3, -290
                  nop
                  nop
                  add          s0, s0, t1
                  addi         s6, a0, 1412
                  auipc        s6, 952870
                  add          s5, s6, a5
                  sub          s0, s3, s0
                  lui          s0, 823627
                  nop
                  auipc        t1, 865924
                  sub          t1, s6, a0
                  auipc        a0, 288793
                  nop
                  auipc        t1, 755674
                  add          s0, a0, a5
                  nop
                  add          a0, s6, s0 #end riscv_int_numeric_corner_stream_5
                  slt          a5, s9, a5
                  auipc        s10, 943260
                  lui          a4, 507517
                  auipc        s3, 892379
                  ori          a5, t0, 422
                  add          t1, sp, t5
                  sra          s10, a7, a4
                  xori         ra, a5, -134
                  sra          s11, a2, s6
                  ori          s0, t1, 1837
                  sra          a3, s4, t2
                  nop
                  slti         t1, t2, 899
                  sll          a3, a6, t4
                  sra          ra, ra, a3
                  srl          a5, s1, s11
                  nop
                  srli         s6, s6, 13
                  srai         sp, ra, 18
                  auipc        t4, 678617
                  srai         ra, zero, 1
                  sub          a4, t5, s6
                  andi         t4, t1, 636
                  sltiu        s10, s8, -1615
                  srai         s0, s11, 22
                  addi         s3, t2, -1414
                  li           s1, 0xdc9b207e #start riscv_int_numeric_corner_stream_17
                  li           t1, 0xffffffff
                  li           s0, 0x80000000
                  li           s6, 0x0
                  li           s11, 0xffffffff
                  li           s9, 0x80000000
                  li           s8, 0x80000000
                  li           s3, 0x80000000
                  li           s10, 0x3de8206b
                  li           t2, 0xffffffff
                  add          s10, s3, s0
                  addi         t2, s1, 1194
                  sub          s0, s11, s9
                  auipc        s1, 982272
                  auipc        t1, 237495
                  add          s6, s8, t1
                  nop
                  nop
                  nop
                  auipc        s3, 701001
                  lui          s0, 979037
                  sub          s8, t1, t2
                  auipc        s11, 378127
                  auipc        t1, 271514
                  lui          s10, 223452
                  auipc        s9, 449336
                  auipc        s8, 667239
                  addi         s10, s10, 326
                  add          t2, t2, s10 #end riscv_int_numeric_corner_stream_17
                  sub          t3, sp, t0
                  sra          a4, zero, s5
                  nop
                  sll          t1, s10, t2
                  andi         t0, s2, 457
                  srli         sp, s5, 16
                  auipc        a0, 90168
                  auipc        gp, 537826
                  and          t2, s8, a3
                  and          s6, s10, t5
                  nop
                  xori         s7, gp, 1836
                  ori          t4, t1, 1259
                  sltiu        s10, tp, 363
                  slt          a1, t2, s3
                  sltu         a4, ra, gp
                  andi         t0, s10, -393
                  sra          s5, t6, gp
                  sll          t4, t6, s2
                  nop
                  sll          t3, tp, t3
                  sltu         t1, t2, t6
                  and          s6, t5, t2
                  ori          s0, s6, -360
                  srl          t4, s3, zero
                  slli         t0, zero, 11
                  and          sp, t2, s9
                  sll          s5, s6, a7
                  slt          s1, a6, s2
                  slt          a5, s5, a3
                  ori          t0, zero, -1603
                  andi         t5, tp, -1193
                  sub          a6, a4, t0
                  sltu         a6, t5, s10
                  ori          s8, t5, 283
                  add          s8, t5, tp
                  sra          t4, s0, a6
                  lui          a2, 90105
                  andi         s2, a2, -868
                  slti         s3, a0, -2029
                  addi         s6, t1, -1633
                  srai         a6, t6, 1
                  lui          t5, 135633
                  lui          t5, 383884
                  sub          a1, s1, zero
                  addi         a4, s9, -2007
                  add          s6, zero, ra
                  slt          a4, s1, a6
                  sll          s2, t3, ra
                  sltu         s11, t2, s4
                  slt          s6, s2, s10
                  slti         a0, a6, -376
                  srai         ra, s1, 22
                  sra          s7, t2, a5
                  add          s0, t2, t2
                  auipc        s0, 270754
                  slli         t2, a0, 19
                  xor          s9, t6, gp
                  and          a2, s5, a1
                  nop
                  andi         a3, sp, 1015
                  or           t1, a4, s7
                  and          s11, t6, t0
                  addi         s2, s2, 1352
                  addi         s3, t5, 544
                  xori         a0, zero, 168
                  sltu         t0, s0, t1
                  srl          a3, t4, s2
                  addi         s3, sp, 1229
                  or           s9, a0, s9
                  sll          s3, s5, s10
                  ori          tp, s9, 58
                  xor          t5, s8, t0
                  add          gp, sp, a4
                  addi         a1, s6, -2017
                  xori         s10, s5, -321
                  addi         t0, s4, 890
                  xori         s11, s5, 602
                  slt          t0, a4, t0
                  and          s2, tp, s6
                  sltiu        s5, t3, -87
                  xor          ra, s6, a2
                  lui          s10, 722298
                  and          zero, s10, a0
                  sltiu        s3, a7, 1528
                  sra          a5, s6, t3
                  sub          ra, a7, a0
                  sra          a2, tp, a4
                  slli         s1, s5, 7
                  or           a4, a2, tp
                  sltu         zero, gp, a5
                  or           ra, s9, s3
                  srli         t3, s10, 25
                  slti         s3, a6, 1977
                  srai         zero, t3, 31
                  slti         zero, t3, -895
                  nop
                  nop
                  srai         a1, t5, 30
                  addi         a2, s5, -175
                  li           a3, 0x64714eb #start riscv_int_numeric_corner_stream_10
                  li           s3, 0xffffffff
                  li           sp, 0x890958c9
                  li           s11, 0xd877e596
                  li           a5, 0x80000000
                  li           s10, 0x3ab29f5e
                  li           s2, 0x393697d8
                  li           t2, 0x80000000
                  li           s6, 0x50ab8e23
                  li           a6, 0x80000000
                  addi         s10, sp, 799
                  sub          s11, a6, t2
                  addi         s10, s3, 1006
                  addi         a3, a3, 21
                  addi         a6, a6, 1058
                  auipc        sp, 247839
                  nop
                  nop
                  auipc        a5, 641499
                  nop
                  addi         a5, a3, 1305
                  addi         s3, sp, 1417
                  lui          s2, 335274
                  sub          s10, s6, t2
                  nop
                  add          s2, s11, s11
                  auipc        a5, 172235
                  nop
                  add          a6, s2, s11
                  sub          a3, a3, s2 #end riscv_int_numeric_corner_stream_10
                  srli         tp, a7, 23
                  srl          s1, a5, t5
                  sltiu        t4, a0, 725
                  sll          s8, s2, gp
                  nop
                  xori         tp, t1, -231
                  and          s10, s0, t5
                  addi         zero, s1, -578
                  add          s6, a2, t5
                  xor          ra, s0, ra
                  xori         a0, a6, -1342
                  auipc        a4, 119351
                  lui          a2, 128414
                  xor          t3, s9, a7
                  andi         a1, a4, 1051
                  add          s3, t5, a4
                  andi         s6, t5, 290
                  srai         s7, t5, 15
                  srli         s5, ra, 17
                  and          s3, t6, a3
                  add          s2, a6, t4
                  srai         s11, a0, 4
                  srli         s5, sp, 20
                  srl          t2, sp, s4
                  slt          s5, a0, s6
                  ori          a2, t3, 708
                  slli         zero, a3, 28
                  slt          s1, t6, a3
                  sltu         s8, zero, a2
                  nop
                  auipc        t0, 1004091
                  xor          s2, s6, a0
                  sll          gp, a5, zero
                  xor          s11, a7, sp
                  slli         s5, a4, 4
                  sra          s5, a1, a7
                  sltiu        s5, a1, 1860
                  auipc        t2, 666690
                  nop
                  slt          s9, a3, a0
                  add          t2, s8, t6
                  and          s3, sp, s9
                  slti         s3, s0, 424
                  srl          a0, s3, s11
                  andi         sp, s8, 1117
                  nop
                  addi         sp, s2, 1950
                  lui          s2, 346115
                  and          a0, t0, a6
                  sub          a2, s2, a0
                  srl          s7, t0, a3
                  or           a0, a5, zero
                  andi         t3, sp, 1240
                  add          s3, t4, s4
                  nop
                  addi         sp, t4, 170
                  sub          s5, t4, ra
                  ori          a3, zero, -684
                  srl          s9, s11, gp
                  slt          s10, t0, gp
                  nop
                  slti         s8, a1, 303
                  lui          s3, 1027240
                  lui          a1, 460808
                  nop
                  sltiu        s9, sp, -586
                  add          a2, gp, s8
                  xor          s11, t1, s8
                  slti         s7, t1, -511
                  sra          s11, t5, zero
                  slli         a1, s9, 13
                  sra          s5, a6, s10
                  addi         a0, s6, 40
                  xori         gp, s3, -502
                  xori         s3, a5, -1410
                  sll          a4, t0, s3
                  slli         s8, s0, 24
                  slli         ra, s0, 12
                  srli         a6, t6, 8
                  or           sp, s11, a3
                  lui          a6, 320528
                  ori          a3, t2, -226
                  addi         s7, a1, 229
                  ori          s8, s1, 395
                  add          a0, s8, s3
                  ori          t5, a0, -331
                  sll          t4, a6, a0
                  srai         s2, s10, 0
                  and          s8, s2, s6
                  nop
                  nop
                  and          t1, s11, sp
                  lui          t0, 513678
                  sra          a0, s4, t3
                  ori          s2, a2, -2010
                  sltiu        s0, ra, 360
                  addi         a6, t0, -467
                  sub          s8, s0, s0
                  add          a2, t3, s6
                  auipc        a6, 311671
                  sub          a0, s11, s7
                  andi         a0, s2, 1374
                  sub          s7, t2, a5
                  srai         a6, s5, 7
                  srl          t5, s0, a5
                  and          s10, a7, s0
                  srl          a1, a7, a4
                  nop
                  auipc        s9, 818109
                  slt          s10, s6, t0
                  addi         s0, tp, -1415
                  xor          a6, s5, a5
                  sltu         a2, s10, s10
                  sra          t1, sp, s2
                  slt          a0, t5, s2
                  sll          s6, s11, s0
                  sra          s2, zero, s8
                  lui          s9, 626783
                  addi         s11, s7, 1035
                  srai         a6, s9, 22
                  sltiu        a4, s11, 1545
                  auipc        a1, 825992
                  srai         s10, a4, 2
                  srai         s9, t6, 0
                  srl          sp, a1, s10
                  srli         t4, ra, 16
                  srl          t3, t0, a6
                  auipc        s7, 175926
                  ori          a1, t3, -204
                  slli         t2, s4, 14
                  sll          t0, zero, t2
                  slti         s11, s3, 569
                  slt          s10, s11, s7
                  andi         sp, s7, -2001
                  xori         s1, s1, 1156
                  sll          s5, ra, a3
                  ori          a4, t1, 1778
                  sll          sp, a7, s6
                  sub          a3, a3, s5
                  slti         s10, s10, 388
                  sub          a4, s0, a1
                  sltiu        zero, s7, 1692
                  sltiu        a3, t0, 810
                  slt          a1, sp, s1
                  add          s3, a3, s11
                  sltu         a2, s10, a4
                  nop
                  or           gp, ra, a1
                  slli         gp, s8, 23
                  nop
                  srai         a5, s7, 22
                  sra          tp, s2, t5
                  nop
                  xor          s2, s5, s1
                  srli         s2, s3, 21
                  sub          t5, a4, a0
                  auipc        gp, 25107
                  srai         s7, a2, 23
                  auipc        s9, 458579
                  nop
                  sll          s5, a2, ra
                  srai         a3, s0, 28
                  sll          s1, zero, s11
                  srai         zero, t2, 27
                  addi         a6, t2, 823
                  nop
                  or           s1, s9, t2
                  and          s11, s4, a1
                  sll          tp, t6, t0
                  sltu         s6, s10, t4
                  andi         t0, s10, -1621
                  ori          s3, a5, -40
                  sra          s1, s5, ra
                  slli         gp, a5, 26
                  xor          sp, s4, a7
                  or           s3, s1, s11
                  slt          sp, zero, t5
                  xor          ra, s6, t1
                  sll          zero, s3, a4
                  andi         s5, t2, 1974
                  srai         a4, sp, 25
                  lui          s11, 396719
                  sltu         s3, t2, t1
                  or           t0, a2, t2
                  sra          a4, a4, s6
                  sub          t3, t2, t2
                  srl          t0, a3, s7
                  sub          t2, t2, s7
                  srl          t4, gp, t1
                  slli         t2, a3, 6
                  slt          s9, a6, s8
                  sra          s7, s10, t5
                  sub          zero, zero, s6
                  sltiu        t1, a1, -1447
                  xor          a2, a1, t1
                  and          s6, a1, sp
                  sltiu        t0, s10, 1344
                  sll          zero, t0, s2
                  or           s2, s6, a4
                  nop
                  slli         s7, s4, 23
                  sltu         s7, a6, a0
                  xor          zero, t6, a5
                  slli         a1, t3, 20
                  xor          s3, s2, s7
                  sub          gp, s8, a4
                  srai         a4, s1, 4
                  slt          s0, s5, a0
                  slti         s1, s10, -2012
                  or           s1, s5, a7
                  addi         a4, s1, 20
                  srl          s8, s7, a3
                  andi         a1, s11, -1351
                  lui          s7, 224608
                  slti         s5, t6, 220
                  slt          s6, gp, t5
                  or           a1, s10, t5
                  xor          t5, zero, s3
                  and          t0, s1, s2
                  xori         a1, zero, -1367
                  srli         s6, a2, 8
                  nop
                  slli         sp, ra, 14
                  srl          a6, t6, a0
                  lui          s6, 559748
                  sll          a4, t2, t6
                  nop
                  slt          s3, s7, s1
                  sltiu        s7, t3, -1804
                  lui          s2, 642860
                  srai         a0, s0, 5
                  srai         s9, zero, 31
                  addi         s5, sp, 1164
                  and          s8, s5, a5
                  sub          t4, t1, s8
                  srai         a6, zero, 6
                  sll          t4, t4, s3
                  and          s8, s10, a5
                  xori         s8, s1, -886
                  andi         tp, s9, -1953
                  slt          a5, s1, t4
                  auipc        s11, 281650
                  sub          s1, a1, t2
                  addi         s5, s8, 1052
                  addi         t5, a6, -1868
                  xor          zero, a1, t5
                  srl          s7, s4, s10
                  srli         s3, s9, 31
                  sub          a3, s1, t3
                  add          sp, gp, zero
                  and          t0, s1, a5
                  nop
                  sub          a3, a2, a1
                  slli         t5, t6, 15
                  and          s6, zero, s11
                  or           a6, zero, s0
                  sub          t5, t2, a1
                  ori          s3, a0, -937
                  lui          s0, 120605
                  srl          s11, s7, t0
                  sll          s9, a1, a0
                  nop
                  srai         a6, s10, 1
                  addi         a4, a2, 1868
                  sltiu        s2, s0, -708
                  lui          a3, 118628
                  andi         t2, t3, 1649
                  sub          t5, zero, s0
                  sub          t2, a7, t4
                  lui          t4, 263720
                  sll          s0, s3, s7
                  xor          s11, gp, sp
                  sub          t4, s6, s10
                  sll          s3, a2, t6
                  xor          tp, s1, a4
                  slt          a0, t0, t6
                  sub          t3, t6, s8
                  sra          gp, gp, s3
                  and          t1, s0, a6
                  xor          s8, s2, s9
                  slt          a2, sp, s4
                  addi         a3, s6, 1748
                  and          s7, a7, a0
                  add          t2, s4, s3
                  and          s9, a4, s9
                  sltu         s5, s11, t4
                  sub          s2, t2, s3
                  slli         t3, a5, 26
                  sltu         a1, gp, s3
                  auipc        t5, 133191
                  srai         t5, s3, 28
                  lui          sp, 675395
                  srl          t5, a5, s7
                  sra          a3, zero, ra
                  srli         s3, s2, 30
                  slt          gp, t3, t3
                  slli         a0, zero, 15
                  sub          a6, a7, s5
                  slli         a5, a3, 4
                  and          s10, t1, t6
                  slli         gp, t1, 26
                  sll          s10, a1, a6
                  slti         a6, s6, 1595
                  xori         tp, t1, -1273
                  sltiu        s5, tp, -439
                  andi         t3, s9, -480
                  xor          zero, a7, a0
                  srl          gp, t0, s7
                  addi         t0, s11, -440
                  sra          a6, s3, a3
                  andi         s10, ra, 2031
                  auipc        s9, 142737
                  sltiu        s3, zero, 749
                  sra          t4, t1, a0
                  slli         sp, sp, 31
                  slli         ra, gp, 13
                  slt          t0, t2, a0
                  xor          t1, zero, s9
                  add          a1, s2, t6
                  xor          s9, s11, ra
                  srli         s9, a7, 4
                  and          s7, zero, t5
                  or           a6, s0, s10
                  slli         a3, a4, 17
                  slti         t3, t3, 1600
                  sra          a6, t5, a0
                  lui          tp, 478972
                  srl          s5, a3, t1
                  or           a6, s11, s10
                  ori          t1, s6, 1720
                  srl          s9, s9, t3
                  xor          sp, t1, s1
                  xor          s0, s4, ra
                  slt          t4, s10, s6
                  xori         t2, s7, -344
                  or           a2, s10, gp
                  xor          a6, a7, s3
                  slt          a2, s0, s3
                  sll          t2, t3, t5
                  sra          s8, s10, ra
                  srli         t2, s5, 3
                  xori         s5, t5, -2031
                  slli         a4, a7, 21
                  xori         s7, ra, 42
                  srli         s3, t2, 23
                  or           s6, a3, t6
                  ori          t3, s8, 1978
                  slli         a1, s7, 13
                  lui          a6, 289682
                  slt          t0, tp, a4
                  lui          s9, 947677
                  srl          s0, s11, s5
                  xori         a6, s3, -1437
                  sll          s10, s5, t3
                  xori         s0, a6, 132
                  slt          sp, t4, s10
                  sltu         a3, s6, t0
                  auipc        s3, 615202
                  sltiu        s2, t3, 831
                  xor          s11, s3, s3
                  xori         s9, t4, -1832
                  lui          s11, 355640
                  addi         t5, a3, 1258
                  and          t4, t3, s9
                  slli         s0, t4, 0
                  andi         s3, a6, 1578
                  slti         t4, t1, -1486
                  slti         t1, zero, -722
                  srl          a2, s8, s9
                  srli         t3, s3, 15
                  sltiu        tp, a0, 658
                  addi         a5, s11, 1587
                  srli         ra, t4, 13
                  slti         a0, s0, -874
                  xori         s2, t5, -84
                  addi         a6, t0, -1843
                  auipc        s5, 1001639
                  sra          s10, t1, sp
                  slti         t0, a2, -1458
                  slt          s5, a1, ra
                  sub          a4, t2, t3
                  srli         a4, tp, 19
                  or           a6, a3, a7
                  nop
                  and          a0, s3, t0
                  auipc        a6, 688849
                  nop
                  srl          s7, s8, a6
                  lui          a4, 157896
                  sltiu        s10, sp, -1999
                  sll          s9, s5, tp
                  sll          t5, s2, s1
                  slti         s0, a0, 958
                  xori         sp, zero, 622
                  addi         s6, gp, 1124
                  add          zero, s0, t5
                  srli         s6, s11, 6
                  slli         s2, s3, 14
                  andi         a5, t1, 1141
                  srl          t4, a6, a1
                  or           s8, a0, s1
                  addi         zero, s11, -1668
                  auipc        a4, 297824
                  slti         a3, a5, -726
                  sltu         sp, s11, s6
                  srl          s1, s7, s8
                  xori         t4, t6, -27
                  srl          s5, s0, t2
                  or           s8, t1, a2
                  or           a0, s3, s8
                  xori         sp, t1, 2021
                  slli         s3, gp, 2
                  sra          t4, a3, s11
                  lui          ra, 28657
                  slt          s2, a6, s11
                  or           t5, s11, gp
                  srai         t5, a4, 2
                  slli         s2, t2, 24
                  lui          s1, 508635
                  slt          s11, a3, sp
                  srli         a1, a1, 16
                  addi         a4, a7, 204
                  srl          tp, s0, s0
                  slti         tp, tp, 824
                  addi         a0, a7, -1879
                  and          zero, ra, s0
                  and          s1, a3, a4
                  xori         a2, a6, -1388
                  sra          s1, a6, t0
                  addi         t3, a3, -946
                  xori         s5, s3, 93
                  sltiu        zero, s1, 625
                  addi         ra, s8, 794
                  or           s9, t3, t2
                  ori          zero, t5, 564
                  sltu         sp, s3, sp
                  srli         s10, s4, 19
                  and          a3, a3, a6
                  nop
                  andi         s7, a0, -1323
                  lui          s0, 293504
                  sub          a2, tp, zero
                  sub          s1, zero, s6
                  sub          gp, a6, s6
                  nop
                  nop
                  sub          t1, s1, s11
                  xor          s11, a7, s4
                  srli         s5, t3, 26
                  slli         t5, a1, 19
                  slli         a6, s9, 24
                  sltu         sp, t4, t2
                  sltiu        s11, sp, -255
                  ori          t0, s11, -1362
                  lui          s2, 239168
                  sra          s11, t5, ra
                  sub          a5, s5, t3
                  srli         ra, a3, 19
                  srl          tp, a7, a0
                  sltu         s8, s6, s1
                  slli         a3, a7, 6
                  slli         s8, a6, 20
                  add          s0, s7, a4
                  slli         s2, t0, 7
                  sll          zero, t0, s9
                  lui          a1, 374544
                  sra          s9, s6, a5
                  sll          s0, tp, a5
                  sltiu        a2, a6, 164
                  and          s3, a4, sp
                  auipc        a6, 455541
                  auipc        s3, 668311
                  auipc        s5, 815890
                  sra          s2, t1, s11
                  slt          ra, a2, s10
                  and          t5, s3, zero
                  xori         tp, s9, -57
                  sub          tp, sp, s2
                  srai         ra, s2, 17
                  auipc        t5, 355401
                  xori         s11, s11, 1577
                  and          s3, s1, s0
                  ori          s0, s0, 30
                  add          s3, t0, a0
                  sub          s1, sp, tp
                  add          s6, s0, a5
                  auipc        a5, 179640
                  lui          a1, 494101
                  sub          s0, s8, a6
                  or           t5, s2, t5
                  ori          t5, gp, 1130
                  slti         a1, sp, -640
                  ori          a2, a0, -298
                  add          s7, t3, s4
                  srai         s6, a1, 16
                  srai         t2, s3, 16
                  auipc        s0, 345342
                  slti         s1, zero, -1804
                  xor          s9, a2, s1
                  sltu         t5, t4, s10
                  addi         a5, a2, 809
                  xor          a5, t0, a7
                  or           a5, tp, t2
                  or           a6, s6, a3
                  slt          t3, s9, a4
                  auipc        a0, 899275
                  ori          a2, t5, -101
                  slti         s6, ra, 1410
                  addi         s1, zero, 643
                  sra          t1, s9, t4
                  sltu         s9, t1, t0
                  nop
                  slli         a0, t1, 20
                  srli         s5, a4, 25
                  auipc        t5, 66548
                  sll          s7, t5, gp
                  srai         s5, s5, 3
                  srli         t0, tp, 11
                  slti         sp, gp, -780
                  sltiu        a1, a6, 1926
                  srl          t0, s11, s8
                  slt          zero, a7, s10
                  lui          s11, 903030
                  xori         s7, s10, 1597
                  or           s7, a5, a0
                  andi         t0, a4, -1188
                  sltu         ra, s7, s5
                  sll          zero, s2, a6
                  andi         t5, t2, 90
                  and          t1, a7, a5
                  sub          ra, s0, s11
                  xori         t3, s10, -1368
                  sltiu        a1, tp, 979
                  srli         t5, a5, 27
                  srai         t3, s2, 29
                  andi         s1, a3, 1203
                  slti         sp, s2, 761
                  sltiu        ra, a3, -75
                  srl          s8, s8, t3
                  slli         a5, s9, 26
                  lui          t3, 142738
                  slti         s8, s11, 1000
                  xor          s6, s4, s7
                  sltu         t1, s0, t5
                  slli         s8, t3, 11
                  auipc        s1, 774280
                  srl          s10, s1, a4
                  srli         s0, tp, 31
                  srl          s0, sp, gp
                  ori          a1, s5, 1436
                  slti         s3, s8, -300
                  ori          s9, tp, 1020
                  and          t1, sp, zero
                  add          s3, ra, zero
                  addi         s1, tp, 1006
                  srli         s8, s0, 24
                  srl          s9, s9, t5
                  and          a1, a3, a1
                  slli         a1, a7, 22
                  ori          t1, zero, -1427
                  sltiu        a5, t1, 2038
                  ori          zero, s9, -202
                  sub          s9, s2, s1
                  sra          ra, gp, s11
                  addi         a4, s1, -954
                  auipc        s10, 366113
                  auipc        s6, 170555
                  sub          a6, t2, s11
                  sra          t2, zero, zero
                  sra          t1, t3, tp
                  sll          a0, t3, gp
                  xor          t0, a6, s4
                  add          gp, t1, t5
                  slli         a5, s4, 19
                  addi         a3, s3, -85
                  sll          s8, a0, s4
                  slli         a3, s11, 11
                  sub          s2, t5, gp
                  slti         a2, sp, -969
                  slti         a5, a7, -916
                  xor          tp, t0, s8
                  and          a4, a1, t3
                  ori          zero, s7, -1332
                  ori          tp, s10, -1104
                  srl          t3, t4, s2
                  or           a4, s6, t6
                  xori         s3, s2, 431
                  srl          tp, a3, s5
                  srai         t0, s11, 29
                  lui          s3, 479252
                  sub          s8, s2, t4
                  srl          t5, t3, sp
                  andi         tp, t6, 2007
                  srli         a3, t3, 22
                  srl          t5, t3, s11
                  andi         t4, s9, -1837
                  srai         s9, a3, 7
                  or           a6, s5, s9
                  sltiu        gp, a2, 1619
                  srai         a6, s4, 5
                  srl          s7, a6, a0
                  sltu         tp, zero, a3
                  andi         a5, a5, -1269
                  addi         a0, a5, -1550
                  ori          s11, s9, -583
                  and          a1, s2, s2
                  sra          a2, a4, s5
                  sra          a4, a3, a5
                  slti         s5, a2, 699
                  or           zero, a0, t0
                  slt          sp, s4, a0
                  sltiu        s9, s5, -1144
                  slt          t3, a6, a7
                  sra          s2, a7, s6
                  and          s11, a1, s10
                  and          a6, a7, t2
                  or           a2, s1, a0
                  xor          s3, gp, a7
                  auipc        a4, 290372
                  slt          a2, a4, a1
                  sll          zero, t0, s10
                  add          s10, s2, s8
                  xor          t4, s5, a4
                  srli         ra, t5, 30
                  andi         a3, s6, 1565
                  auipc        a5, 406453
                  srai         s10, s10, 27
                  srli         s2, s3, 24
                  auipc        tp, 712817
                  slli         tp, a3, 0
                  lui          a3, 897258
                  nop
                  and          sp, a3, a3
                  sltu         a2, t1, s5
                  and          a4, s1, tp
                  sltu         s5, zero, s1
                  sltu         sp, s9, s6
                  sub          gp, t2, zero
                  xori         s1, s3, 1879
                  sra          s9, t2, gp
                  slti         t3, a0, 1407
                  srl          s5, t4, s10
                  sltiu        a1, a1, 901
                  auipc        tp, 749339
                  srli         a1, t1, 27
                  lui          s7, 1043946
                  slt          t5, s6, t2
                  srai         sp, t6, 17
                  sll          a3, s3, a6
                  auipc        a3, 919322
                  sltu         s8, a3, s11
                  addi         t4, sp, 1353
                  xori         s10, ra, 862
                  slt          a4, a0, zero
                  addi         s7, s5, 1650
                  slti         t5, s8, -1569
                  nop
                  ori          ra, t1, -460
                  sll          t4, a1, t3
                  ori          s0, s10, -2047
                  sra          a0, s6, s3
                  lui          t0, 198729
                  andi         t1, s5, 1184
                  lui          s0, 762294
                  sll          s7, s5, t5
                  andi         zero, s4, 1174
                  sub          a0, a0, t6
                  addi         s1, s7, 1501
                  andi         t2, s9, 712
                  sub          a0, t2, a5
                  slt          s8, zero, s2
                  and          a1, t1, a6
                  xori         tp, sp, -1883
                  xor          s5, t1, s8
                  slt          ra, zero, s4
                  nop
                  slti         s9, sp, -1191
                  sra          tp, a7, t5
                  auipc        sp, 189124
                  xori         sp, s1, -316
                  nop
                  sltiu        s3, ra, 1684
                  addi         a4, s8, 841
                  srai         ra, t3, 31
                  andi         t3, s0, 1445
                  sll          s11, t0, s11
                  add          a2, a7, s2
                  sub          a2, s3, s7
                  andi         a3, ra, 1292
                  srl          s7, t0, s10
                  slli         s10, gp, 10
                  andi         s8, a3, -82
                  sra          a2, s5, t2
                  ori          s0, sp, -563
                  srli         s9, s9, 17
                  or           t5, ra, s5
                  andi         t2, a3, -569
                  lui          gp, 301162
                  andi         t2, s11, -387
                  sra          s2, t4, t4
                  andi         t0, tp, 822
                  nop
                  srli         t4, t3, 4
                  add          s2, t0, s7
                  sltu         s0, s0, t2
                  xori         a2, a1, 508
                  addi         s11, tp, 634
                  sltu         s6, t4, s1
                  sll          a1, t3, a0
                  slti         t4, t2, 355
                  srl          gp, s4, t3
                  slli         a5, t6, 14
                  sltiu        gp, s4, 2007
                  sltu         t1, t6, s3
                  srli         s1, s0, 13
                  auipc        t0, 962846
                  srai         s1, t1, 0
                  sll          s6, a0, sp
                  add          a6, a7, sp
                  addi         s9, a7, -776
                  sra          a1, t6, t2
                  ori          gp, a6, -1189
                  or           s10, t5, a6
                  xor          ra, t2, s8
                  sra          s8, s9, s6
                  slt          a1, t2, s11
                  sltiu        a5, a2, -674
                  sltiu        sp, ra, -1277
                  and          s8, s11, t6
                  slt          s7, s5, s8
                  addi         s1, s0, -918
                  xor          t3, a4, s1
                  srai         a1, s1, 26
                  sll          t3, a5, a0
                  andi         tp, a2, 1994
                  add          a6, t6, s11
                  and          s1, a0, a0
                  xori         s10, t0, 1080
                  sltu         a3, t1, a0
                  srli         s1, t5, 16
                  add          a2, tp, t2
                  lui          a2, 313697
                  slt          tp, t1, s8
                  ori          ra, a3, 1164
                  slli         s5, t1, 24
                  sltu         t2, s4, a7
                  sub          gp, s4, t3
                  sub          t5, t0, zero
                  nop
                  lui          s7, 620260
                  slli         t1, tp, 2
                  sltu         t2, s1, s8
                  sltiu        t2, ra, 224
                  addi         t1, a1, -266
                  ori          s7, t4, 93
                  sll          sp, s2, a6
                  sra          sp, a0, s2
                  sra          s5, t1, a0
                  or           s10, s3, a7
                  sll          t1, t6, sp
                  srli         a4, a4, 27
                  slti         t0, a2, 1693
                  srli         ra, ra, 25
                  sra          a0, tp, t2
                  srai         s8, zero, 30
                  ori          t0, t2, 644
                  sra          t3, s5, a0
                  slt          sp, gp, s6
                  slli         s7, t4, 31
                  add          tp, a2, s0
                  sltiu        ra, s5, -253
                  sub          s5, s6, a4
                  ori          s10, tp, -1254
                  sltu         gp, s9, sp
                  and          t0, s4, a6
                  or           t0, a5, s8
                  srli         s1, s6, 8
                  or           a5, s0, a3
                  srli         sp, s4, 31
                  xor          s5, t0, sp
                  sll          s10, zero, a2
                  sltu         s9, s4, t4
                  sub          s6, s2, gp
                  addi         t0, a2, 1255
                  xor          s3, zero, t3
                  sub          a1, a6, gp
                  slt          s9, s2, s2
                  xori         t2, s5, -1731
                  and          t2, s10, s8
                  andi         t3, s1, 1821
                  slti         s7, s5, -1016
                  sub          t4, t0, a5
                  sra          s5, s6, a3
                  srai         a3, s4, 24
                  nop
                  add          t4, s5, a1
                  xori         s11, s10, -121
                  xori         zero, t6, -421
                  sll          s9, a6, s8
                  slti         tp, s9, 993
                  sltiu        a3, s3, 210
                  xori         a3, s11, -220
                  nop
                  or           zero, sp, a5
                  andi         gp, sp, -1541
                  srai         ra, s9, 24
                  and          a0, a2, s9
                  andi         s6, zero, 948
                  xori         s5, zero, 1363
                  srai         a1, t3, 7
                  add          s7, t3, s4
                  sub          s6, t3, s8
                  addi         t4, s6, -1032
                  ori          a6, s1, -990
                  andi         ra, s6, -1814
                  nop
                  xor          t2, t5, a3
                  sra          gp, t4, s3
                  lui          t5, 813709
                  addi         s7, t2, 1445
                  sltu         s6, s6, a2
                  slt          ra, t4, t6
                  sra          s9, a3, zero
                  sub          gp, sp, s7
                  sltiu        s11, s6, -1119
                  auipc        s8, 439369
                  nop
                  lui          sp, 832392
                  sltu         a6, tp, t6
                  sltiu        a0, s7, -699
                  sltu         s0, a4, sp
                  sltiu        s1, a0, 1417
                  addi         a4, tp, 872
                  or           s5, a6, t0
                  sub          sp, a2, a0
                  sltiu        s2, zero, -1002
                  and          a3, s11, s11
                  lui          s9, 838529
                  xori         a5, s3, 1238
                  sra          ra, t6, tp
                  xor          zero, t4, a7
                  or           a6, zero, t0
                  andi         t2, s3, -1491
                  sltu         ra, t6, a4
                  and          s9, t0, a5
                  srl          tp, s9, sp
                  auipc        s6, 791950
                  slti         a3, t1, 734
                  slt          a4, t1, s0
                  xori         t5, t4, -418
                  lui          s2, 805547
                  or           a5, a0, s0
                  srli         s7, t6, 10
                  sltiu        s2, a5, 678
                  sub          t3, t0, t1
                  andi         t0, t0, -1654
                  xor          t4, a0, a0
                  lui          s10, 818681
                  sub          t3, s9, a1
                  sra          s5, t6, s5
                  ori          tp, a5, -1498
                  srai         t4, a5, 11
                  xori         s0, s2, 909
                  and          a6, t4, zero
                  srli         t0, a0, 23
                  srl          t3, a5, t2
                  srli         a4, s4, 22
                  srli         a2, s1, 16
                  srl          tp, a0, t4
                  sltiu        s1, tp, -487
                  slli         s9, s3, 28
                  xori         t3, s0, 1052
                  slli         s9, s3, 27
                  slti         s2, s5, -239
                  sub          s0, a5, a4
                  addi         t5, t2, -202
                  sltiu        ra, t4, -1399
                  and          s2, s6, a7
                  sltiu        s9, s3, -123
                  add          zero, a6, s2
                  sltiu        ra, t6, -265
                  or           s5, t6, a6
                  and          t4, a4, gp
                  addi         a2, a3, 772
                  auipc        t2, 38097
                  slti         t0, s10, -735
                  xori         tp, t4, 1714
                  xori         a3, s2, -1000
                  add          t0, s6, s2
                  sltu         t3, s11, t2
                  or           s11, gp, ra
                  slti         a1, s8, 1443
                  lui          tp, 102206
                  or           s3, s10, s2
                  srli         a1, s9, 20
                  lui          a4, 1048198
                  sltu         ra, a6, s5
                  xor          s6, s11, a5
                  ori          a2, a7, 1195
                  xor          a3, a6, sp
                  sltu         s6, s8, s1
                  sub          a3, s11, a6
                  add          s3, s7, sp
                  slt          sp, s10, s1
                  srl          tp, zero, s9
                  sub          tp, a5, t1
                  nop
                  nop
                  sltiu        tp, s1, -829
                  ori          ra, a6, -442
                  andi         s1, a3, 1994
                  slti         a6, a5, -759
                  sll          s5, s4, t5
                  srai         a5, ra, 16
                  srli         gp, ra, 12
                  srli         s3, a1, 1
                  or           a0, s5, gp
                  sltiu        gp, s4, -632
                  auipc        a2, 106903
                  lui          a6, 60236
                  srl          t5, s0, s8
                  xor          a3, t1, a5
                  sltu         a3, s4, t1
                  slt          zero, s9, s9
                  srai         a0, a5, 4
                  srli         s9, a1, 2
                  sub          s9, s9, t5
                  lui          t0, 311611
                  or           t4, s4, s10
                  lui          s0, 248527
                  slti         s6, s1, -494
                  lui          s7, 66997
                  lui          t2, 702316
                  add          t2, s9, zero
                  nop
                  sra          a6, s4, tp
                  slt          a6, a0, t2
                  nop
                  nop
                  add          s9, t1, a4
                  nop
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           a4, 0x80000000
                  li           tp, 0x35d617c5
                  li           s2, 0x0
                  li           t0, 0xffffffff
                  li           s5, 0x5b95d8b4
                  li           s7, 0x0
                  li           s10, 0x582b452d
                  li           a0, 0x0
                  li           t3, 0x80000000
                  nop
                  addi         t3, s5, 1270
                  sub          s10, a4, a5
                  add          a5, s5, a0
                  sub          s2, s7, a4
                  sub          t3, t0, s5
                  auipc        t3, 15984
                  lui          tp, 4257
                  add          a4, a5, tp
                  add          a4, s7, a4
                  auipc        a0, 122179
                  sub          t3, s10, s5
                  sub          a4, tp, tp
                  sub          s5, tp, s10
                  add          s7, a0, s5
                  sub          s10, t3, s5
                  lui          tp, 28700
                  add          t3, s5, s2 #end riscv_int_numeric_corner_stream_9
                  andi         s0, a7, 1000
                  sll          s10, sp, s0
                  srl          a4, gp, s5
                  xor          t2, s4, s8
                  xor          s10, t0, t5
                  ori          a4, s10, -921
                  ori          gp, t6, 1252
                  lui          tp, 694909
                  srl          t2, s9, t2
                  sll          t1, tp, a3
                  sub          gp, a2, t0
                  sra          a0, a3, t5
                  slti         a0, t0, 1453
                  slt          s6, gp, s2
                  add          a1, zero, a2
                  sltu         t2, a6, t4
                  sltu         t0, a0, s5
                  add          t4, s8, a2
                  sub          s5, s8, t1
                  slt          a5, s6, s4
                  sll          t0, t3, a1
                  and          t4, sp, sp
                  sra          t3, t0, s10
                  sltiu        t3, s7, -1311
                  lui          zero, 620772
                  sra          t1, sp, tp
                  and          sp, s11, s3
                  slti         s7, s10, -1866
                  slt          a1, s9, s4
                  or           s2, a6, gp
                  sra          t4, s6, a1
                  sltiu        t3, s1, 361
                  srai         t2, a1, 20
                  srl          a2, t2, a2
                  slt          s9, a7, t0
                  addi         s9, a1, -1931
                  auipc        s6, 639532
                  or           s6, ra, s2
                  addi         s5, zero, 2033
                  slti         a0, t0, -118
                  slli         tp, s7, 31
                  sltiu        s10, t4, 1472
                  srai         t1, s11, 24
                  slti         t3, s0, -1731
                  srli         s8, s1, 31
                  auipc        s3, 64854
                  slti         ra, s5, 298
                  sub          s10, s9, ra
                  xor          zero, s3, gp
                  xor          t0, a1, s3
                  srl          zero, t5, a1
                  sub          s2, a4, s8
                  addi         s7, s6, 716
                  add          s11, t5, a4
                  slli         t5, sp, 6
                  sltiu        a5, a1, -1491
                  add          a1, a2, s3
                  slti         a1, a6, 1807
                  sra          t5, s6, a3
                  srai         t4, t6, 19
                  and          t3, s11, t2
                  addi         s2, s1, 1219
                  slt          t1, t4, s8
                  xori         gp, s1, 1025
                  addi         t4, s3, 1299
                  sltu         s5, a4, a2
                  xori         a4, s0, 1900
                  srai         a1, a4, 14
                  xor          s8, s11, s10
                  sub          s8, t5, zero
                  ori          ra, s6, 517
                  or           a2, s11, sp
                  or           sp, t1, a0
                  andi         t1, a2, -3
                  nop
                  slti         s9, a7, -569
                  srai         ra, a6, 0
                  sub          sp, t5, s2
                  sltu         s10, s8, t6
                  ori          zero, zero, -396
                  srli         a2, t6, 29
                  srli         s9, s3, 15
                  xori         gp, s3, -1135
                  sltiu        a4, s4, -975
                  xor          tp, s6, sp
                  andi         s10, s5, -803
                  and          sp, a7, ra
                  srli         s0, s4, 11
                  auipc        s2, 947342
                  nop
                  sub          t0, gp, a7
                  addi         t5, a6, 1254
                  addi         s10, s10, -1715
                  add          a4, a0, s9
                  sll          a4, s9, t5
                  or           zero, s5, s10
                  slli         a3, s10, 14
                  slti         s2, s1, -951
                  sltu         a1, gp, s11
                  sra          s10, gp, a2
                  or           s0, a3, s1
                  addi         t5, t6, 1232
                  add          a0, a3, s6
                  add          t1, a0, s1
                  addi         a0, a2, -1963
                  sltu         s0, s0, sp
                  srl          s3, ra, t5
                  xor          t4, ra, s9
                  srai         a5, s6, 5
                  sra          zero, t4, ra
                  lui          tp, 228559
                  slti         s6, tp, -974
                  or           t3, a0, t0
                  slt          t0, s7, s1
                  srli         tp, a6, 7
                  andi         s11, sp, 992
                  nop
                  xor          a4, t4, ra
                  sltiu        sp, a1, -729
                  add          t0, a5, a6
                  andi         s8, t6, 1589
                  sltiu        t5, s5, 784
                  xori         tp, s11, 383
                  slti         tp, a5, -937
                  srli         a3, gp, 1
                  srli         t0, gp, 27
                  or           a5, a4, s1
                  slti         a6, s7, -204
                  add          t2, a1, a5
                  srl          a1, a3, t0
                  addi         sp, tp, -820
                  slt          s3, t6, s3
                  sll          t3, a1, s0
                  addi         a3, sp, -51
                  sra          s6, t3, t0
                  sltiu        s0, t0, 151
                  xor          t2, t0, t5
                  sll          a6, a0, t4
                  sltiu        s6, s7, -1574
                  srli         t5, t5, 7
                  slti         a5, ra, 906
                  nop
                  auipc        sp, 575446
                  andi         s8, a3, 1910
                  xori         sp, a1, -1254
                  slti         gp, t1, -1141
                  auipc        s8, 802570
                  sub          a6, s9, t2
                  nop
                  and          t4, t0, s8
                  ori          t5, s5, 892
                  slli         s1, t2, 14
                  auipc        s2, 632590
                  or           s5, a0, t2
                  and          s2, s3, t0
                  or           tp, s1, s0
                  slt          t5, a7, t1
                  xori         a3, t0, 1350
                  ori          gp, t2, 1832
                  srai         sp, a7, 15
                  slti         a3, t4, -261
                  srli         s5, gp, 9
                  or           a5, s9, t1
                  srai         t0, t3, 4
                  and          gp, s8, a4
                  or           zero, tp, a3
                  srl          a5, t6, a5
                  slt          s1, zero, a1
                  slt          a4, ra, s0
                  addi         s8, a3, 1421
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_2:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_3:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_4:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_5:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_6:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_7:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_8:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_9:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_10:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_11:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_12:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_13:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_14:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_15:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x13, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x13, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x13, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x13, x29, ecall_handler
                  li x29, 0x1
                  beq x13, x29, instr_fault_handler
                  li x29, 0x5
                  beq x13, x29, load_fault_handler
                  li x29, 0x7
                  beq x13, x29, store_fault_handler
                  li x29, 0xc
                  beq x13, x29, pt_fault_handler
                  li x29, 0xd
                  beq x13, x29, pt_fault_handler
                  li x29, 0xf
                  beq x13, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x17, x31, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x31, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x31, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x17, x31, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x17, x31, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x17, x31, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
