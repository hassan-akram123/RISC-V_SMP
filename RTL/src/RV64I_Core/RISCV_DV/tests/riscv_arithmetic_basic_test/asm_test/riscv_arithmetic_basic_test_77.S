.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x11, 0x40000100
                  csrw 0x301, x11
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x11, mtvec_handler
                  ori x11, x11, 0
                  csrw 0x305, x11 # MTVEC

mepc_setup:       
                  la x11, init
                  csrw 0x341, x11

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x11, 0x1800
                  csrw 0x300, x11 # MSTATUS
                  mret
init:             
                  li x0, 0x7
                  li x1, 0xfc5a7031
                  li x2, 0x347a9258
                  li x3, 0x4181123f
                  li x4, 0x690d8aef
                  li x5, 0xdf393b29
                  li x6, 0xf481b77a
                  li x7, 0x80000000
                  li x8, 0xf9ed3097
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0xfd9329a8
                  li x12, 0xf8cc883b
                  li x14, 0xf498d001
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0xf17a0363
                  li x19, 0xa
                  li x20, 0xf99b1679
                  li x21, 0x9371d134
                  li x22, 0xfe0f76b1
                  li x24, 0x0
                  li x25, 0xc
                  li x26, 0x80000000
                  li x27, 0x5
                  li x28, 0x2
                  li x29, 0x5d28e7b5
                  li x30, 0x0
                  li x31, 0x9516947c
                  la x23, user_stack_end
main:             li           s3, 0xe91053ef #start riscv_int_numeric_corner_stream_19
                  li           ra, 0x0
                  li           a4, 0x80000000
                  li           tp, 0x80000000
                  li           t6, 0x919c3d62
                  li           s11, 0xa4d6bcee
                  li           a0, 0x0
                  li           sp, 0xffffffff
                  li           t5, 0x80000000
                  li           a5, 0x80000000
                  sub          t6, t5, a4
                  nop
                  add          a0, t5, s11
                  sub          a4, a5, sp
                  addi         a5, a5, 774
                  lui          s11, 588800
                  nop
                  lui          s3, 645898
                  lui          a4, 356062
                  auipc        a5, 220459
                  sub          a0, t6, a0
                  addi         tp, a5, -1503
                  addi         a5, s11, -350
                  lui          t6, 354829
                  nop
                  sub          sp, t5, s11
                  lui          t5, 1043376
                  addi         t6, a4, 1288
                  sub          a4, s3, ra
                  auipc        a4, 949296
                  auipc        ra, 521131
                  addi         t5, s3, 847
                  addi         a5, t5, 1457
                  lui          a5, 974962
                  addi         s3, a5, -1241
                  lui          t6, 90153
                  sub          tp, a4, a4
                  sub          a4, s3, ra
                  sub          sp, s11, tp #end riscv_int_numeric_corner_stream_19
                  li           sp, 0x11529be7 #start riscv_int_numeric_corner_stream_14
                  li           t5, 0x80000000
                  li           a4, 0x0
                  li           a5, 0x80000000
                  li           gp, 0x54094fd5
                  li           s9, 0xffffffff
                  li           s2, 0x93a4b501
                  li           a1, 0xffffffff
                  li           t0, 0xffffffff
                  li           tp, 0xffffffff
                  sub          a5, a4, a4
                  lui          t0, 478906
                  auipc        s2, 333705
                  nop
                  auipc        tp, 266890
                  addi         a5, s9, -1792
                  sub          s9, a5, s2
                  auipc        s2, 653306
                  auipc        a1, 24810
                  nop
                  sub          a1, s2, s9
                  lui          sp, 522338
                  add          s9, s2, a4
                  add          gp, sp, a5
                  lui          gp, 1032244
                  lui          s2, 279227
                  add          t5, s2, a1
                  auipc        tp, 177082
                  lui          a4, 348486
                  sub          t0, tp, s2
                  auipc        gp, 13721
                  nop
                  sub          tp, tp, gp
                  lui          s9, 56180
                  add          a5, t0, tp
                  auipc        s9, 1021665 #end riscv_int_numeric_corner_stream_14
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s8, 0x80000000
                  li           s3, 0x0
                  li           a7, 0x0
                  li           s11, 0x4794f625
                  li           s5, 0x80000000
                  li           ra, 0xffffffff
                  li           t2, 0xffffffff
                  li           s4, 0x8ac145ce
                  li           a1, 0xffffffff
                  sub          s5, t2, s11
                  addi         s11, s8, -743
                  nop
                  lui          a1, 633351
                  nop
                  nop
                  lui          s8, 160372
                  add          s3, t2, s5
                  addi         s3, s8, 677
                  sub          sp, s4, a1
                  add          a1, a7, a7
                  add          s4, s5, ra
                  auipc        s4, 356881
                  add          t2, s8, a1
                  add          a7, t2, a1
                  nop
                  lui          s5, 270272
                  sub          a7, ra, s11
                  add          t2, a7, a1
                  sub          sp, sp, a1
                  sub          a1, ra, t2
                  addi         t2, s3, 175
                  auipc        s8, 298343
                  sub          ra, s11, s3
                  add          s5, a1, a1
                  sub          s8, s4, a7
                  lui          s8, 587605
                  auipc        sp, 74283 #end riscv_int_numeric_corner_stream_3
                  li           s4, 0x4add0677 #start riscv_int_numeric_corner_stream_18
                  li           a0, 0x0
                  li           s1, 0x0
                  li           s2, 0x0
                  li           t5, 0x80000000
                  li           t2, 0xffffffff
                  li           s10, 0x0
                  li           s8, 0x80000000
                  li           a1, 0x7b61ebbb
                  li           a4, 0x0
                  lui          t2, 553813
                  sub          s8, t2, a1
                  nop
                  addi         a1, s2, 1116
                  lui          s2, 610265
                  lui          s8, 620832
                  addi         s8, t5, -1032
                  addi         a4, s4, -1949
                  nop
                  nop
                  add          t2, t5, s2
                  lui          s2, 682737
                  add          s4, t2, a1
                  sub          t5, a4, a1
                  auipc        t5, 200840
                  add          a1, s8, t2
                  auipc        s4, 456063
                  auipc        a4, 455931
                  sub          s8, t5, s10
                  auipc        s2, 637805
                  auipc        s10, 419001
                  auipc        s8, 10205
                  sub          a1, s1, s1
                  sub          s2, t2, s8
                  nop
                  lui          s4, 571427
                  lui          a1, 543671 #end riscv_int_numeric_corner_stream_18
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           t1, 0x622d1e17
                  li           a5, 0x0
                  li           s6, 0x32a55ad9
                  li           gp, 0x0
                  li           s3, 0x0
                  li           a6, 0xffffffff
                  li           ra, 0x0
                  li           tp, 0x80000000
                  li           s1, 0x8b8c4cc8
                  lui          a6, 15661
                  add          gp, t1, s3
                  addi         a6, tp, 1890
                  add          gp, gp, gp
                  nop
                  lui          s1, 956039
                  add          s3, s6, s3
                  nop
                  nop
                  lui          ra, 26676
                  nop
                  sub          a7, ra, ra
                  sub          a6, s6, s1
                  nop
                  nop
                  nop
                  sub          a5, s3, ra
                  nop
                  sub          tp, s3, s6
                  auipc        t1, 418426
                  addi         a5, s3, 1593
                  lui          s3, 952131
                  add          s1, t1, a7
                  sub          s3, tp, a5
                  addi         a7, a6, 2021
                  lui          tp, 913980
                  auipc        s6, 309623
                  sub          ra, tp, ra
                  sub          s6, ra, ra
                  sub          s3, s3, s1 #end riscv_int_numeric_corner_stream_12
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           s10, 0xffffffff
                  li           sp, 0x0
                  li           s6, 0x80000000
                  li           s3, 0x0
                  li           t1, 0x1ae00d1b
                  li           s8, 0x7c46a453
                  li           ra, 0x191fee15
                  li           a6, 0xffffffff
                  li           s5, 0x5c7c9056
                  add          t1, s6, tp
                  addi         sp, s5, 753
                  addi         sp, t1, 1716
                  addi         a6, s3, -1724
                  sub          a6, s10, tp
                  lui          t1, 954769
                  sub          s3, t1, s8
                  sub          s6, sp, t1
                  addi         sp, sp, 1022
                  addi         s3, sp, 1557
                  lui          s5, 128646
                  nop
                  addi         s8, s10, 1791
                  addi         ra, s5, 730
                  lui          ra, 2692
                  lui          t1, 818177
                  addi         s8, s8, -779
                  lui          s3, 718946
                  lui          s10, 921508
                  nop
                  sub          s6, tp, t1
                  addi         s10, t1, 829
                  addi         sp, s8, -1165 #end riscv_int_numeric_corner_stream_10
                  li           t0, 0x7621681e #start riscv_int_numeric_corner_stream_8
                  li           a5, 0x6180aff8
                  li           s11, 0x3b99758c
                  li           s1, 0xffffffff
                  li           s5, 0x80000000
                  li           s4, 0x0
                  li           a0, 0x2f0565c8
                  li           t1, 0xffffffff
                  li           gp, 0x80000000
                  li           t2, 0x80000000
                  lui          a5, 76316
                  lui          s11, 561448
                  auipc        t1, 1024211
                  auipc        t2, 429085
                  sub          t1, gp, gp
                  sub          s1, t1, gp
                  sub          t1, t2, t2
                  sub          s5, s5, s5
                  add          t2, s5, s1
                  nop
                  lui          s5, 857722
                  add          s1, s1, s5
                  lui          t1, 423620
                  add          t1, s4, s1
                  sub          t0, gp, t2
                  nop
                  sub          a0, t2, s5
                  add          a5, a0, t0
                  auipc        gp, 617411
                  lui          s11, 100960
                  sub          gp, s11, a5
                  addi         s11, s1, -116
                  nop
                  auipc        s1, 940712
                  nop
                  nop #end riscv_int_numeric_corner_stream_8
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s1, 0xfce0bf62
                  li           gp, 0x0
                  li           s11, 0x80000000
                  li           s3, 0xffffffff
                  li           ra, 0x80000000
                  li           s5, 0x80000000
                  li           s6, 0x80000000
                  li           a6, 0xffffffff
                  li           s0, 0xe9f68f65
                  add          s1, a6, s11
                  nop
                  addi         s1, s5, -1104
                  add          a6, s5, a6
                  lui          s5, 159030
                  addi         s1, s0, 64
                  sub          s1, s6, s11
                  nop
                  auipc        s1, 176995
                  auipc        s1, 952497
                  auipc        gp, 942930
                  nop
                  sub          s1, s1, s6
                  add          s3, s5, gp
                  add          ra, s6, a6
                  auipc        s5, 1001406 #end riscv_int_numeric_corner_stream_17
                  ori          t4, t6, -1777
                  slti         t4, tp, 495
                  srl          gp, s10, sp
                  srai         s6, a6, 15
                  srl          a6, t6, tp
                  srli         s4, a6, 3
                  sub          t4, s7, zero
                  add          s6, a2, t0
                  and          s2, s4, s10
                  srai         s1, s10, 7
                  ori          t0, tp, -193
                  addi         a6, s5, -212
                  lui          s4, 125732
                  sltu         sp, s9, t2
                  sll          t4, s3, s10
                  xor          s4, t2, t0
                  slli         s5, s7, 20
                  sra          a7, a6, s6
                  auipc        t1, 371056
                  sub          sp, s3, t5
                  addi         a5, t1, -272
                  xor          s11, s6, a7
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           t3, 0x6508787a
                  li           sp, 0x3e92c6f9
                  li           t5, 0x80000000
                  li           s1, 0x80000000
                  li           s11, 0x0
                  li           s3, 0xffffffff
                  li           s9, 0xb23e179
                  li           t2, 0x80000000
                  li           a7, 0xffffffff
                  add          sp, a7, s1
                  sub          gp, t2, s11
                  lui          a7, 1009367
                  nop
                  auipc        a7, 186512
                  sub          s11, s11, a7
                  lui          t5, 793752
                  lui          t5, 257185
                  add          s3, t3, sp
                  nop
                  addi         t3, s9, 953
                  lui          t2, 279996
                  lui          sp, 213765
                  sub          a7, t3, s3
                  addi         sp, t3, -836
                  addi         t5, s11, -1835
                  lui          t5, 529174
                  add          s9, gp, gp
                  sub          t2, t5, gp
                  auipc        t5, 793506
                  add          s11, t3, s1
                  nop
                  lui          s11, 178370
                  addi         gp, a7, -1632
                  addi         s1, s9, 756
                  nop
                  lui          gp, 512208 #end riscv_int_numeric_corner_stream_1
                  andi         s4, a6, 140
                  sltu         gp, s5, zero
                  andi         s4, zero, -1282
                  addi         s9, a6, 822
                  srai         t6, a3, 17
                  andi         s9, s11, 548
                  sub          s0, a4, s10
                  and          gp, s1, t0
                  or           s4, zero, t3
                  or           s11, s7, ra
                  slli         s0, gp, 0
                  sltiu        s1, s7, 1865
                  slt          t0, t0, tp
                  ori          sp, s9, 1101
                  sub          t6, s7, s9
                  sltiu        s2, a2, -313
                  lui          t2, 191640
                  sll          t5, t5, a1
                  sll          t2, a0, zero
                  sltiu        s10, t6, 31
                  sltiu        t0, tp, -1647
                  srl          zero, t3, a1
                  srli         s0, s11, 0
                  sub          a5, t6, a2
                  auipc        s6, 434408
                  auipc        s10, 528418
                  srl          s3, a4, a3
                  srl          t6, s1, a0
                  and          s4, t6, s7
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           s0, 0xffffffff
                  li           t6, 0x55e8e62
                  li           a6, 0x80000000
                  li           s3, 0x21c46078
                  li           t3, 0xffffffff
                  li           ra, 0x9b1c85fa
                  li           a5, 0x80000000
                  li           s8, 0x97a58239
                  li           s2, 0x80000000
                  nop
                  lui          a5, 777360
                  nop
                  addi         a5, s3, 159
                  sub          ra, s8, a5
                  nop
                  add          t3, s8, s0
                  nop
                  nop
                  add          tp, s3, ra
                  nop
                  lui          t6, 745215
                  sub          a5, s8, s8
                  add          tp, s8, s0
                  add          s3, s3, s8
                  addi         s3, t6, 810
                  addi         ra, t3, -1450
                  nop
                  add          a5, ra, s3
                  lui          a6, 1001367
                  add          a6, s8, t6
                  addi         tp, ra, -409
                  sub          t3, a5, t3
                  nop
                  auipc        t6, 293208
                  add          t6, a5, s2
                  lui          a5, 826834
                  add          s0, s0, a5
                  addi         t3, s8, 588 #end riscv_int_numeric_corner_stream_16
                  xori         t1, t5, 950
                  ori          s9, t6, 336
                  slli         t2, a6, 5
                  or           s10, s0, s11
                  slti         s8, t5, 1751
                  andi         t1, s4, -277
                  srli         zero, s9, 13
                  sltiu        s8, t6, -1886
                  slti         gp, t0, 1179
                  ori          s8, a7, 755
                  sltiu        t0, a4, 246
                  srli         t2, s5, 10
                  srl          t1, t6, ra
                  sll          s8, a7, tp
                  nop
                  srai         t2, s5, 26
                  sub          t3, s10, s5
                  andi         t6, sp, -310
                  auipc        s4, 441132
                  srl          s8, a3, t5
                  sll          t3, sp, s11
                  sltiu        t5, a0, -1253
                  sub          a1, s8, s9
                  sltiu        a5, t6, -389
                  sra          t1, a5, s0
                  slt          t6, a1, t4
                  srli         t1, t5, 29
                  and          s3, s0, t1
                  or           a4, s10, t4
                  sltiu        t3, a2, -640
                  slli         s4, a1, 12
                  srli         t4, s0, 7
                  slt          a0, s1, s8
                  nop
                  ori          t2, s5, -111
                  slli         a4, t4, 8
                  slti         sp, t5, 1398
                  sltu         s9, a2, s0
                  nop
                  xor          zero, gp, s10
                  xori         a6, a0, 1763
                  ori          t6, t4, 1195
                  slt          a7, ra, t4
                  add          a0, zero, a6
                  slli         a6, t5, 26
                  lui          t0, 820576
                  nop
                  ori          t2, a6, 1089
                  sub          s0, s0, ra
                  nop
                  slli         zero, sp, 26
                  sltu         a7, s1, s4
                  sltu         t6, s2, sp
                  srai         sp, t5, 11
                  ori          a6, a7, -675
                  slti         s0, a3, 1064
                  or           s5, a2, t2
                  sll          a6, s6, a3
                  and          s9, a7, s1
                  nop
                  xor          s2, s0, s1
                  add          s11, a5, s4
                  addi         t4, a7, -1303
                  and          zero, s9, a4
                  auipc        s4, 967111
                  auipc        gp, 567895
                  slli         s9, t6, 2
                  addi         t1, a4, 234
                  or           ra, gp, s9
                  addi         a6, a1, -2047
                  or           sp, s6, s8
                  srl          ra, t1, s6
                  nop
                  srli         s11, s0, 10
                  andi         a4, t2, -99
                  xor          zero, t5, t1
                  or           s0, gp, a1
                  auipc        a5, 861202
                  srl          s9, a6, a0
                  srai         a5, s4, 19
                  lui          a0, 962759
                  andi         t4, a1, 599
                  srl          t1, s4, s1
                  lui          a5, 693764
                  lui          gp, 492637
                  li           s3, 0x3edecc2b #start riscv_int_numeric_corner_stream_11
                  li           tp, 0xffffffff
                  li           gp, 0xffffffff
                  li           s8, 0xd8cdff2d
                  li           a7, 0xffffffff
                  li           t1, 0x80000000
                  li           s4, 0x0
                  li           s11, 0xffffffff
                  li           t5, 0x80000000
                  li           t6, 0x0
                  nop
                  addi         a7, t5, -116
                  sub          t6, t1, s4
                  lui          s3, 36583
                  auipc        s8, 156466
                  add          gp, gp, s3
                  add          s4, s3, s11
                  add          s4, tp, t6
                  nop
                  addi         t1, gp, 1872
                  addi         s8, s3, 1154
                  lui          s11, 590824
                  auipc        tp, 575
                  sub          s3, t6, s8
                  nop
                  addi         s11, tp, -1266 #end riscv_int_numeric_corner_stream_11
                  andi         s4, zero, -1535
                  lui          t6, 618383
                  or           a0, t3, s7
                  andi         a5, s5, 1179
                  or           zero, a7, t6
                  lui          ra, 766982
                  srli         t3, a4, 13
                  xor          s1, s3, s7
                  auipc        sp, 5689
                  sra          t2, t5, s8
                  or           tp, s7, t2
                  xor          t0, t1, a7
                  sltiu        sp, t6, -219
                  srai         s9, ra, 9
                  andi         s10, t2, 77
                  addi         t2, s2, -1665
                  srl          sp, t6, sp
                  sll          s2, s11, tp
                  slt          s6, s9, s11
                  slli         t1, s1, 14
                  xori         zero, s9, -1561
                  lui          s5, 260060
                  sll          gp, t5, a1
                  lui          sp, 662225
                  nop
                  sltu         a5, s2, t4
                  slli         s10, a6, 11
                  addi         s3, a2, -777
                  sll          t3, s10, s0
                  xor          s10, t3, a5
                  sll          a5, a5, s11
                  or           t5, a5, t4
                  and          s3, a3, t6
                  auipc        gp, 972464
                  addi         sp, s3, 559
                  or           s2, s5, a3
                  nop
                  slt          t0, t6, s0
                  xor          s6, a0, t2
                  or           ra, a0, s8
                  srl          s11, s11, s11
                  sub          zero, t2, s8
                  nop
                  or           s4, a4, a5
                  and          s5, a4, s0
                  lui          t6, 727937
                  ori          s3, a0, -1331
                  xori         s6, s8, -628
                  sltiu        s10, s4, 1389
                  auipc        s8, 443241
                  and          s10, s6, s11
                  ori          t0, a0, 1738
                  sll          s1, t2, zero
                  and          s1, s5, t2
                  ori          s11, a0, -251
                  slt          s0, t1, s8
                  srl          a4, t2, s7
                  sub          zero, t0, sp
                  and          a5, a1, a7
                  slti         t0, a6, -1515
                  xor          a6, t2, a6
                  sltu         gp, s3, a1
                  sra          s8, a4, gp
                  srl          t0, a1, sp
                  srai         s8, s6, 27
                  sll          t6, s8, s4
                  sub          s6, a6, t5
                  auipc        s3, 600373
                  sll          s3, sp, a1
                  lui          s10, 564627
                  sub          s5, a1, sp
                  xori         t6, s1, -1041
                  sltu         s6, a7, t4
                  addi         tp, s3, -186
                  lui          s2, 923282
                  xori         s6, s3, 1783
                  andi         a7, s9, -596
                  and          s0, a4, s10
                  lui          s0, 67836
                  andi         tp, t4, -455
                  xor          a4, t3, tp
                  slt          zero, t0, a1
                  and          s9, t5, s3
                  slt          t1, t1, t6
                  sltu         t0, s7, a2
                  srai         a7, t1, 16
                  srli         s1, s7, 0
                  slti         zero, s4, 1368
                  xor          s4, zero, gp
                  xor          s5, s4, s5
                  sra          zero, s3, a6
                  sll          zero, a5, s7
                  slti         t5, t1, -1026
                  srai         a4, a7, 21
                  ori          t1, t0, -1424
                  nop
                  nop
                  srai         a5, s7, 10
                  sll          t2, a7, s5
                  slt          gp, s1, s7
                  sll          t3, s1, a0
                  sub          s0, s4, s0
                  xori         s2, s10, -515
                  xori         t6, gp, 481
                  sll          s0, ra, s5
                  and          s10, s6, ra
                  ori          sp, s10, -1301
                  ori          t2, t1, -1508
                  srli         s3, a2, 17
                  and          t6, a3, s6
                  srl          t6, a4, s3
                  or           t5, s9, s11
                  srli         t0, s4, 15
                  addi         t0, gp, -376
                  sltiu        a5, s5, -70
                  andi         t2, t0, -2026
                  lui          t4, 892226
                  slt          t2, s3, t3
                  sra          t1, s1, s8
                  sll          a4, s6, s9
                  slti         s0, s2, 159
                  nop
                  ori          t1, s10, 1874
                  andi         tp, t2, -1733
                  sltu         s0, ra, zero
                  sltu         sp, s6, a2
                  sltu         gp, s11, s4
                  slt          gp, a7, s3
                  andi         ra, t6, 15
                  sll          t6, a1, a1
                  xor          s2, a3, a2
                  sltiu        t6, s8, 1423
                  xori         s1, a7, -1231
                  srl          s10, a2, a4
                  lui          a0, 565673
                  lui          s1, 920830
                  add          t4, s3, a4
                  andi         t3, s11, -1232
                  ori          s8, a3, -1982
                  sltiu        a1, a0, 1741
                  slti         t5, s6, 904
                  sltiu        a7, tp, -756
                  sub          a7, gp, t0
                  srai         s11, a6, 2
                  slti         t1, t6, 936
                  and          s10, a1, gp
                  sltiu        t0, a7, 946
                  nop
                  andi         t1, s3, -1702
                  slli         s9, ra, 18
                  xori         t2, tp, -1882
                  lui          zero, 649197
                  sra          s10, s2, s8
                  nop
                  sub          s11, t0, a5
                  addi         t0, s8, -624
                  xori         t3, s0, 926
                  and          t1, s7, gp
                  sll          a7, s7, zero
                  sra          a4, s8, zero
                  slli         t4, ra, 29
                  sltu         s8, ra, s5
                  sltu         s10, s5, zero
                  ori          t4, a4, -843
                  or           t3, s10, t6
                  srai         t3, s2, 30
                  auipc        t1, 662208
                  slti         s9, s4, -684
                  lui          gp, 776000
                  slti         t2, gp, -129
                  and          a5, t5, t1
                  addi         t3, a6, 182
                  slli         t2, s5, 21
                  slti         t0, a3, -1449
                  and          ra, s5, s5
                  slti         t4, t3, 57
                  xor          s5, t5, a5
                  slt          t1, t3, t0
                  auipc        t5, 960208
                  addi         t6, s3, -980
                  slt          a0, t4, sp
                  sub          t2, sp, ra
                  xor          s6, s2, a6
                  sltu         a5, s1, gp
                  and          t3, s9, a7
                  sll          s11, s3, t1
                  sra          a6, gp, a0
                  add          a5, s3, s10
                  lui          t4, 218469
                  andi         a6, s7, 2017
                  or           s3, s6, t3
                  nop
                  slt          tp, s9, ra
                  xor          sp, s4, gp
                  nop
                  sub          s0, a1, gp
                  slli         gp, s4, 13
                  sltu         tp, s9, s7
                  andi         s1, s1, 1074
                  slti         gp, a4, -1269
                  slti         s3, s1, 385
                  slli         a7, s9, 8
                  xor          a0, s9, s8
                  andi         s10, s1, 1259
                  andi         t2, a2, 476
                  xor          tp, a4, s3
                  sub          s1, t2, ra
                  srl          s1, s10, t2
                  srl          s11, s8, s5
                  sra          a4, a1, s9
                  or           s10, gp, t4
                  srl          s4, s0, zero
                  srl          t0, sp, s5
                  sra          t6, s1, a1
                  ori          a1, t1, -1665
                  sltu         s0, t6, s3
                  sub          t2, t6, s6
                  sll          s1, ra, s5
                  sll          s1, s8, s5
                  sll          t4, t1, s3
                  ori          s1, t5, -1863
                  sll          s6, t2, s1
                  srl          s6, s3, a3
                  add          a6, t4, a0
                  lui          t6, 999906
                  addi         t2, s11, 1705
                  auipc        t0, 748474
                  andi         a0, s3, -1656
                  add          a1, t4, s9
                  nop
                  srl          zero, a7, t2
                  auipc        a7, 709055
                  srl          a1, a6, s1
                  sub          a4, gp, s0
                  sra          t2, t1, s4
                  slli         s9, s0, 22
                  sub          t5, a1, t4
                  sltiu        t5, a4, 240
                  srai         a7, s2, 22
                  and          sp, s4, s11
                  lui          tp, 698994
                  xor          s0, zero, t6
                  lui          s11, 189399
                  srli         a5, sp, 4
                  and          s3, s1, t4
                  andi         s11, t2, 836
                  sll          gp, ra, t0
                  sltiu        s9, t6, -12
                  and          a4, a3, a7
                  andi         s11, t1, 818
                  slt          t6, s8, s6
                  xori         t2, s6, 844
                  auipc        t2, 894261
                  add          zero, t2, tp
                  xori         s6, s10, -1789
                  andi         gp, s4, -423
                  srl          zero, s8, t0
                  lui          t1, 522641
                  slti         a5, a2, 71
                  add          t2, s6, a7
                  srli         t5, s11, 27
                  sub          s5, s8, s1
                  xori         s5, a2, 274
                  nop
                  ori          s2, s1, 380
                  addi         a0, t2, -992
                  xori         s8, s2, 1772
                  nop
                  srai         s5, a3, 1
                  nop
                  ori          zero, s10, -257
                  sra          s4, a0, s4
                  slt          t6, t6, s7
                  xori         s6, a0, -1286
                  andi         a1, a5, -223
                  slt          tp, sp, s5
                  or           s6, t4, tp
                  srai         s4, t0, 11
                  nop
                  add          t0, s0, t6
                  and          s9, s6, t2
                  ori          ra, a6, -624
                  slti         a7, a5, -849
                  srai         t2, a6, 0
                  srai         tp, t2, 20
                  nop
                  slli         t5, s9, 21
                  sll          s3, t6, t5
                  nop
                  xori         tp, s6, 1115
                  sra          a1, t1, s0
                  auipc        t4, 556971
                  srli         ra, s11, 16
                  xor          s11, s11, a6
                  add          a4, a4, s11
                  xor          s10, t5, t6
                  nop
                  or           a5, s8, s7
                  slt          t1, tp, t1
                  or           t2, t5, s1
                  lui          a1, 942464
                  nop
                  srai         s5, t4, 23
                  and          zero, t0, s1
                  sltu         ra, a0, s4
                  sra          s6, zero, s1
                  nop
                  xor          t0, s9, a3
                  sll          s4, s11, a2
                  xori         s6, s11, 429
                  auipc        a5, 888299
                  slli         s10, t0, 22
                  srai         t5, s4, 24
                  or           t3, s1, t4
                  ori          a0, t5, 1179
                  nop
                  andi         t1, s4, -16
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           a7, 0x80000000
                  li           s1, 0x324b9190
                  li           a1, 0x0
                  li           gp, 0x0
                  li           tp, 0xffffffff
                  li           t3, 0x80000000
                  li           t1, 0x0
                  li           s10, 0x832d82d8
                  li           t5, 0xffffffff
                  addi         t1, a6, 148
                  sub          t3, t1, s1
                  add          tp, tp, a1
                  sub          t5, a6, s1
                  auipc        t1, 315006
                  lui          s1, 465578
                  auipc        s1, 959325
                  sub          t5, s1, a6
                  addi         s1, s1, -986
                  nop
                  auipc        t3, 368293
                  lui          gp, 563605
                  nop
                  auipc        t3, 163513
                  sub          a7, a6, a6
                  auipc        t5, 143580
                  addi         gp, a6, 5
                  addi         t3, a7, -1862
                  auipc        t1, 923549
                  nop
                  nop
                  auipc        a6, 95900
                  auipc        t5, 332034
                  sub          a7, gp, a6
                  sub          t1, a1, s10
                  addi         t1, gp, 258
                  lui          t3, 176371
                  add          a7, t5, s10 #end riscv_int_numeric_corner_stream_7
                  or           s2, s2, s10
                  auipc        t0, 990910
                  addi         s2, s2, 1225
                  xori         s1, a4, 1108
                  xori         a1, s11, 2018
                  slti         a6, s4, 1851
                  srli         s3, t2, 0
                  sltiu        s11, a0, -147
                  nop
                  andi         s2, s11, -922
                  addi         s4, s8, -669
                  slt          s2, tp, s3
                  sltiu        t0, s4, 749
                  srl          a6, a0, s5
                  andi         s4, s7, 1226
                  and          s4, t4, a4
                  slti         t1, a6, 1701
                  slti         a1, t1, -1737
                  ori          t4, s8, 383
                  sltiu        sp, a5, -389
                  slti         t3, s3, -1397
                  sub          a6, t3, ra
                  slt          a5, s9, s3
                  andi         sp, t0, 331
                  add          s0, a0, tp
                  sltu         a0, a4, t3
                  add          sp, s8, s6
                  addi         t5, a6, -736
                  nop
                  nop
                  addi         a5, a4, -45
                  or           s11, a7, s1
                  add          a5, s7, a7
                  xor          a4, s2, s6
                  srli         s10, a6, 11
                  sra          sp, s9, s7
                  auipc        a0, 349993
                  or           s10, a5, gp
                  addi         t1, a6, -41
                  slti         t5, s9, -437
                  addi         s1, s2, 269
                  sub          a4, s11, s2
                  or           a6, a0, s10
                  sltu         s9, a4, s3
                  addi         s8, s8, 9
                  auipc        t5, 963557
                  lui          s9, 614320
                  or           s1, a2, zero
                  lui          a1, 321599
                  slt          s10, s9, s2
                  sub          s9, a1, s5
                  xor          a1, t0, a1
                  sub          a5, s1, a2
                  sub          t4, a7, t4
                  slt          t0, s9, s5
                  xor          s3, a5, a5
                  addi         sp, s4, 1566
                  auipc        s5, 769405
                  sll          sp, a7, s6
                  slti         s1, a4, 1541
                  slli         ra, t2, 12
                  sll          s1, s1, gp
                  xori         a7, a5, 1511
                  srli         t5, s0, 7
                  and          s2, a5, t2
                  addi         t0, t6, 772
                  srl          a4, s8, t4
                  or           tp, t3, t3
                  srl          s0, a6, s4
                  srl          t0, a0, s6
                  slti         zero, a5, -208
                  sll          s2, a0, t3
                  ori          t6, s4, -49
                  lui          s10, 727335
                  lui          a4, 627495
                  srai         s4, t0, 14
                  addi         a6, t6, -756
                  addi         t3, t3, -1991
                  add          s2, a5, s8
                  slt          s4, a3, a2
                  xor          a1, s2, t3
                  slti         s6, s1, 1974
                  xori         t5, s8, 1747
                  sll          t1, a6, a3
                  sll          t2, a4, s11
                  srli         a1, a5, 22
                  or           s6, s7, s5
                  slti         a6, s6, 676
                  add          s2, s9, a2
                  slli         s4, s4, 26
                  ori          a1, t6, 1939
                  sltu         a5, a0, s2
                  srli         s2, a5, 31
                  add          a1, s4, t1
                  slt          s8, t3, zero
                  sltu         s2, s4, s2
                  addi         a5, t6, 1411
                  and          s1, s10, s9
                  ori          t4, s11, -1963
                  xor          zero, a6, t2
                  nop
                  sll          gp, t1, s3
                  slt          t1, s3, a1
                  or           a6, s10, a1
                  slt          s4, t4, s2
                  addi         s3, a6, -197
                  nop
                  srli         s9, t0, 25
                  auipc        gp, 751212
                  srli         s10, a1, 9
                  xori         s11, s7, -441
                  srai         s8, gp, 3
                  xori         s0, a5, 1746
                  auipc        s0, 738137
                  slt          a7, a3, s2
                  slli         sp, a2, 17
                  lui          s1, 587731
                  or           t3, t4, s9
                  and          sp, s7, s1
                  and          t5, a2, t6
                  andi         s4, s1, 1008
                  slti         a7, s4, -1160
                  sltu         t2, s2, t2
                  srli         s6, zero, 16
                  slli         s0, t3, 7
                  sltu         s11, tp, a0
                  slli         t6, a6, 20
                  sltiu        s11, tp, -1520
                  ori          t3, s7, 905
                  slli         s11, a0, 22
                  auipc        s1, 807491
                  nop
                  srli         t5, t2, 8
                  sltu         t4, s5, zero
                  ori          a4, a1, 62
                  srai         a6, s9, 27
                  add          a0, a1, s9
                  sltiu        s4, s1, 812
                  sra          s3, s9, s2
                  addi         gp, s1, 1280
                  andi         t2, a6, -1177
                  nop
                  srli         t6, t0, 22
                  slt          s1, s10, a6
                  slli         a5, a6, 0
                  sub          t5, a2, t1
                  or           zero, a3, t0
                  and          t3, gp, a4
                  andi         s3, t4, -16
                  auipc        a1, 1028590
                  or           s3, zero, s5
                  add          t2, s0, t2
                  xori         t5, t1, 320
                  and          s5, gp, t3
                  sll          t1, s2, t5
                  srai         s10, a3, 9
                  xori         s4, tp, -1
                  srl          t0, ra, t4
                  slti         s2, sp, 781
                  slli         zero, s5, 15
                  xor          t0, ra, a3
                  srai         t0, a1, 23
                  sub          gp, s0, t3
                  addi         t3, s0, 423
                  sll          t6, s2, t5
                  slt          s0, s5, t0
                  sltu         gp, a0, s4
                  slt          s0, a7, sp
                  addi         a1, tp, -1666
                  srai         zero, t5, 7
                  slli         t4, s0, 12
                  auipc        s6, 806379
                  srli         zero, s1, 23
                  srli         a1, s7, 16
                  or           t0, t3, s11
                  andi         ra, a6, 1456
                  ori          t0, s2, 1866
                  ori          s0, t4, 786
                  lui          t6, 482404
                  slt          t6, a5, s5
                  sltu         s6, s10, a4
                  lui          t1, 48641
                  srl          a7, ra, s0
                  or           s0, s6, a7
                  xori         sp, s2, -1887
                  lui          t6, 951640
                  sltiu        s10, s4, 281
                  slli         a5, a5, 25
                  srl          t3, s7, a7
                  lui          sp, 354100
                  andi         ra, a7, -1537
                  andi         a0, s5, -1790
                  and          s3, tp, s6
                  and          a5, s5, s7
                  slti         t5, s9, 372
                  nop
                  sll          t1, t2, a5
                  or           t4, s4, s0
                  srli         s0, a1, 12
                  srl          a7, s1, t5
                  nop
                  sll          a6, t6, a6
                  ori          a1, s1, -1103
                  sll          tp, t4, s9
                  auipc        tp, 416763
                  ori          a6, t2, 148
                  srai         t5, s7, 13
                  srl          a0, s4, a3
                  addi         s9, zero, 1365
                  lui          s5, 931542
                  sra          s2, s4, t4
                  srli         t1, a1, 10
                  ori          s2, s9, -948
                  slli         s5, s4, 13
                  srai         tp, s10, 12
                  slti         t4, t3, 664
                  sltiu        a6, t4, 103
                  auipc        a6, 918909
                  slti         s1, s5, -1679
                  slti         a1, t5, -450
                  add          s4, s2, s2
                  slli         s1, t0, 7
                  slli         s10, s4, 20
                  srli         t1, s6, 21
                  slt          t2, zero, t4
                  nop
                  slli         gp, t5, 19
                  and          ra, a5, s11
                  slli         a1, tp, 13
                  srai         t4, t5, 19
                  sra          a5, ra, a7
                  ori          zero, a5, 368
                  xor          s6, a6, s1
                  sll          t1, t1, a0
                  xor          t3, s10, t0
                  slti         s9, s6, -161
                  srai         s3, a7, 0
                  and          a1, s5, s6
                  slli         t2, s3, 23
                  add          s6, s11, a6
                  andi         s9, a1, 437
                  sltiu        s11, s4, -272
                  srl          s6, zero, s0
                  addi         s9, zero, -526
                  sll          tp, s3, s3
                  slt          t6, a3, a3
                  and          a4, s1, t6
                  slli         t5, s11, 27
                  and          a1, a7, t0
                  add          t4, s10, t3
                  srli         s9, a4, 12
                  sltiu        a7, t0, -900
                  sll          a4, s10, t5
                  srl          t6, t1, s0
                  sll          a0, t3, t2
                  ori          s6, s5, -1403
                  sltiu        s5, a1, -634
                  auipc        t3, 332237
                  andi         a0, a3, 1044
                  andi         a1, s11, -1520
                  ori          s4, t0, -1669
                  auipc        s3, 491427
                  or           t6, s9, s2
                  xori         t3, t4, 378
                  slli         a7, s8, 26
                  slt          a7, zero, sp
                  ori          t2, t1, 1366
                  andi         s9, a1, 1794
                  sll          sp, s1, tp
                  xor          zero, s7, a2
                  sltiu        s0, s8, -1455
                  lui          s1, 741964
                  andi         s8, a2, -1354
                  slli         a7, a2, 13
                  and          t2, sp, s6
                  srai         a6, t1, 2
                  srl          s5, s2, a1
                  sra          a5, s9, t4
                  addi         s8, sp, -711
                  add          a7, t0, ra
                  lui          t4, 676655
                  sll          s11, s11, zero
                  sltu         sp, s5, sp
                  sltu         a1, s10, s5
                  add          t6, t2, s10
                  lui          s4, 145400
                  nop
                  sltiu        s8, a2, 1228
                  addi         t6, a0, -220
                  and          s4, t0, tp
                  add          s4, zero, a0
                  xori         gp, a4, -484
                  andi         t6, gp, -1616
                  nop
                  slt          a0, t5, sp
                  or           s1, a3, s4
                  xori         gp, t4, -1358
                  ori          a1, gp, 375
                  srl          t4, zero, t0
                  ori          s1, s5, 1676
                  xori         a7, s10, 1977
                  xor          s9, s11, a4
                  addi         a0, s4, -1665
                  sra          tp, ra, a4
                  xor          a0, t4, s3
                  lui          s8, 748158
                  addi         t0, s1, -1865
                  andi         gp, s5, 98
                  sra          s1, ra, s5
                  slti         a4, gp, 1906
                  lui          t0, 864323
                  add          s3, t4, s11
                  add          s3, s10, t4
                  sltu         s11, t5, a3
                  sltiu        s0, t0, -916
                  lui          t0, 854461
                  xor          s11, s5, t0
                  slt          s6, t3, s1
                  and          ra, a1, t3
                  slti         a0, t0, 1793
                  srli         s6, s1, 14
                  auipc        t3, 875828
                  srli         sp, sp, 30
                  sltiu        s6, s3, 679
                  lui          s1, 923714
                  or           s1, t5, a2
                  xor          t1, s1, a7
                  srli         t0, t4, 20
                  srli         t3, s1, 15
                  and          s8, a6, t2
                  slli         sp, s5, 27
                  srai         s11, s0, 12
                  sltiu        t0, ra, -867
                  sub          s3, s3, s3
                  sub          sp, tp, s2
                  slti         s9, ra, -2
                  ori          s2, zero, 1530
                  xor          t5, a4, t5
                  srai         t6, s0, 4
                  slti         sp, t1, 96
                  lui          s9, 945059
                  slti         a5, s8, -467
                  srai         t6, s0, 10
                  or           a5, a4, s7
                  sra          s0, s5, t4
                  or           s4, s9, t3
                  srai         a1, s5, 3
                  sra          a4, s5, t3
                  and          t5, s9, s8
                  lui          t5, 437690
                  auipc        t0, 100307
                  and          s0, s7, t1
                  or           zero, s10, a6
                  or           a6, s11, s11
                  slt          t3, s11, t5
                  srai         t3, t2, 23
                  addi         s9, a3, -498
                  addi         t4, a2, -8
                  nop
                  auipc        s4, 29320
                  sll          gp, s10, s9
                  slt          t4, a7, zero
                  srli         s11, t0, 18
                  srai         t4, a1, 30
                  srl          t4, a2, zero
                  andi         t3, a0, -1796
                  add          s2, a1, zero
                  add          s3, zero, a3
                  lui          t0, 308941
                  andi         s2, a1, 1059
                  lui          s8, 514178
                  ori          a1, a6, 609
                  or           s5, a1, a7
                  slti         s2, s5, 23
                  ori          a6, a1, -82
                  auipc        a7, 326386
                  srli         t4, s11, 21
                  slt          a7, ra, s9
                  lui          t3, 6131
                  sra          s10, s3, s10
                  srli         a7, s9, 22
                  auipc        gp, 447058
                  sltu         s9, s7, t3
                  slt          a6, ra, a7
                  sub          t1, ra, a5
                  sra          t5, a7, sp
                  add          t5, s10, s4
                  slt          t2, s0, s4
                  andi         s6, t0, -1097
                  sub          s5, a3, t4
                  srai         t4, s7, 11
                  addi         s3, t5, 812
                  slli         a7, s6, 3
                  add          s11, a0, a1
                  auipc        s1, 871581
                  srl          s2, s0, s0
                  slli         a4, s1, 23
                  sll          gp, zero, t1
                  sll          s0, a1, s6
                  sub          t3, tp, s3
                  slli         t4, s8, 21
                  slt          s11, s1, s6
                  add          t6, s1, a3
                  andi         a5, a2, 1755
                  lui          s8, 718363
                  addi         t0, s3, -291
                  srli         a1, t3, 30
                  ori          s3, t0, -1394
                  xori         s11, gp, -1904
                  srli         s5, a2, 28
                  andi         a4, ra, 142
                  slt          t0, s2, a2
                  sltiu        t5, s1, 1281
                  addi         s1, a0, -60
                  srl          s4, a4, a4
                  addi         zero, s5, -68
                  lui          a1, 295246
                  srai         zero, s6, 16
                  srai         a4, a0, 23
                  srl          t1, zero, s10
                  slt          tp, s5, t0
                  slti         a4, s11, 434
                  sll          a4, gp, t6
                  sll          a0, a2, a4
                  slt          ra, s2, a1
                  srai         a7, t2, 19
                  srai         ra, a2, 3
                  add          tp, a6, t4
                  slti         s10, s9, -674
                  auipc        s1, 708574
                  or           ra, a0, s4
                  nop
                  slt          s11, s8, t5
                  slti         t5, s0, -1631
                  srli         gp, s10, 5
                  srl          a1, s2, tp
                  sub          t3, s7, a5
                  srl          s0, t2, s6
                  xori         s9, s1, -1972
                  nop
                  or           a0, s9, t2
                  sub          a5, t6, s7
                  slli         s0, t5, 31
                  sltiu        a6, t6, 285
                  srl          s4, a1, s3
                  auipc        tp, 872595
                  sub          s9, s7, a6
                  nop
                  sltu         s11, a4, s9
                  ori          s9, a0, -1771
                  xori         s0, ra, -1105
                  andi         gp, t0, -1259
                  srli         s6, s3, 23
                  slti         a1, tp, -1557
                  nop
                  srl          a1, a5, s4
                  andi         gp, a4, -1064
                  or           s0, t5, s2
                  slt          t0, s11, a5
                  xori         a6, t3, -997
                  sll          a0, sp, s4
                  srli         s4, s2, 1
                  slli         s9, zero, 14
                  sra          s5, sp, ra
                  addi         t5, t4, 1878
                  add          t2, t5, s4
                  slti         gp, s10, -1442
                  sra          a4, t5, s1
                  ori          t0, t2, 410
                  sll          s1, t6, a3
                  sltiu        s1, a4, -1076
                  add          s9, ra, ra
                  sra          s4, s2, a3
                  add          t0, s11, a5
                  sltiu        a5, s6, 1478
                  srli         ra, t6, 24
                  lui          zero, 21044
                  srai         s6, s7, 10
                  sub          t0, a4, s9
                  addi         ra, s4, 843
                  addi         s5, t2, 1356
                  slli         a6, a5, 6
                  sltu         s11, t2, a7
                  sll          s9, a0, ra
                  ori          a6, a2, 1190
                  xori         a4, a4, 825
                  sltu         s0, a7, s0
                  slt          sp, s0, s6
                  xor          s9, a2, t1
                  addi         s5, t4, -349
                  srl          s2, sp, a4
                  sll          s8, s10, s0
                  slli         s1, s3, 27
                  and          a0, t3, a5
                  or           t4, a4, t2
                  addi         s4, a2, -808
                  slt          s5, gp, t0
                  srli         s1, gp, 5
                  ori          a6, a1, -1004
                  nop
                  srl          zero, t1, t5
                  auipc        s4, 190269
                  sll          a5, a6, s7
                  sra          s2, s6, s1
                  xor          t6, s2, a2
                  sltiu        t0, t6, -1553
                  srli         t3, a6, 23
                  lui          a6, 757409
                  and          s9, a7, ra
                  andi         t6, s9, 748
                  srli         s4, t2, 3
                  xori         a6, a6, -1487
                  and          a0, t1, ra
                  nop
                  addi         s5, t2, 1388
                  xori         a4, s0, -833
                  ori          s11, s0, 1183
                  auipc        t3, 5176
                  ori          s4, s0, 1874
                  sra          s0, t6, t6
                  sltu         t6, t5, a5
                  auipc        s4, 284331
                  add          s8, tp, t2
                  andi         t0, t1, 1828
                  addi         gp, s5, 1151
                  sltu         a7, s10, a5
                  auipc        s2, 113173
                  and          a6, t4, s10
                  or           s9, t3, a2
                  ori          a6, ra, -1704
                  srli         t3, t4, 18
                  sltu         a1, sp, t2
                  lui          t0, 136876
                  addi         tp, s2, -1273
                  srl          t3, zero, ra
                  sltiu        t0, s4, 1034
                  or           s9, s11, t4
                  xori         a1, t5, -1729
                  xori         s1, s1, -1993
                  srli         s1, t3, 30
                  sltu         s3, s11, t5
                  sll          s5, t5, t4
                  srli         a1, s0, 0
                  slti         t2, a2, -2036
                  srl          ra, s1, t1
                  or           a0, a2, s10
                  srl          t6, t3, t1
                  and          s2, t5, s7
                  sub          t5, s4, t6
                  slli         t5, a5, 2
                  addi         tp, ra, 407
                  and          s3, a4, s1
                  add          s1, a3, s8
                  srl          gp, t1, a5
                  sltu         zero, t3, s1
                  slt          tp, sp, t6
                  or           a7, tp, s3
                  add          s0, s8, s8
                  sll          gp, a2, a4
                  ori          t4, a4, -549
                  ori          s8, a3, 1074
                  slli         s10, t6, 13
                  lui          a7, 290640
                  srl          zero, ra, a6
                  sra          t0, s10, ra
                  sltu         zero, s10, a5
                  or           s0, s10, s0
                  add          s0, a5, t0
                  and          tp, t5, s3
                  sltiu        s5, sp, -467
                  sra          t0, s2, a7
                  xori         t0, s2, -133
                  slli         s2, a4, 22
                  auipc        s1, 131096
                  nop
                  nop
                  sltiu        t4, a6, -1894
                  srl          a0, t5, s2
                  andi         zero, a1, 1781
                  xor          a6, a0, s1
                  ori          s1, a1, -1074
                  addi         t5, gp, 329
                  srli         a4, sp, 16
                  sll          a6, a0, s2
                  sub          sp, zero, s9
                  xor          a0, s6, s11
                  slt          sp, t1, s11
                  sra          s1, t5, a7
                  slli         s8, s3, 22
                  sltiu        t5, tp, 1102
                  addi         s1, t4, -771
                  srl          tp, gp, s2
                  xor          s4, t6, ra
                  sltiu        tp, s1, -1208
                  sltiu        s11, s8, -902
                  slt          a0, s10, s11
                  srl          s4, ra, t6
                  slti         t3, s9, -1275
                  sll          t4, t4, t6
                  slli         t2, s1, 4
                  or           s2, gp, a2
                  and          a4, s6, t4
                  xor          a5, t1, sp
                  sll          s9, t1, s2
                  slt          sp, a3, s3
                  add          s5, gp, t6
                  sra          t2, a0, s10
                  sra          ra, t5, s2
                  srli         t1, a7, 16
                  nop
                  add          a4, s8, t0
                  sra          zero, s9, s7
                  xori         t3, s4, 1356
                  slti         gp, a4, 731
                  sra          a5, a2, sp
                  slli         t5, tp, 16
                  sltiu        t2, s2, -110
                  andi         s5, zero, -384
                  auipc        t3, 569600
                  sll          t5, s2, sp
                  slli         s11, gp, 1
                  slt          s1, t5, s7
                  addi         t3, t2, -230
                  slt          t3, t1, a7
                  sltu         s1, a7, a5
                  ori          a1, s4, 1083
                  addi         sp, s10, 930
                  sra          t0, t3, a4
                  sra          s9, s6, a2
                  lui          s2, 430305
                  sub          zero, s7, t0
                  ori          t6, s6, 1874
                  xori         s11, gp, -678
                  srl          s2, zero, zero
                  or           s11, s3, a3
                  andi         a6, sp, 1184
                  add          sp, t5, a4
                  srli         a0, gp, 22
                  and          s1, s2, t4
                  xor          t3, s4, s3
                  slli         s3, a2, 5
                  xori         t0, a1, 1987
                  slti         s0, ra, -1218
                  auipc        t0, 356951
                  auipc        s5, 380034
                  slli         s8, s10, 8
                  sub          s11, ra, a4
                  srli         s8, t6, 16
                  srai         s11, t1, 16
                  sltu         zero, t5, s1
                  auipc        tp, 458646
                  and          s11, s3, s8
                  sra          s11, s10, s7
                  or           t3, a0, ra
                  auipc        t1, 13901
                  and          s0, a2, s1
                  sltu         gp, t3, s7
                  slli         t4, a3, 9
                  slt          a0, a5, a1
                  sll          ra, sp, s11
                  sub          ra, s0, s9
                  add          ra, gp, zero
                  sltu         t4, s1, a3
                  slli         a0, s10, 1
                  xori         ra, a6, -1402
                  nop
                  sra          t5, t4, t2
                  sltu         s5, gp, t4
                  or           t2, a6, zero
                  sltiu        s9, s8, -824
                  xori         t0, a7, -19
                  ori          t3, a2, 1818
                  auipc        sp, 947361
                  srl          t6, a1, s7
                  lui          s0, 418461
                  addi         tp, ra, 857
                  sltiu        sp, ra, -1671
                  xori         ra, zero, 1980
                  and          t2, a0, s3
                  sltiu        gp, s4, -599
                  andi         s1, a6, 1228
                  srli         zero, s3, 21
                  addi         tp, s6, 110
                  ori          s10, t0, 1248
                  lui          t0, 623902
                  and          t4, s1, s2
                  slli         t4, s7, 26
                  auipc        a6, 818451
                  or           s11, s11, s4
                  lui          s8, 334044
                  addi         s3, a0, 151
                  sll          s3, s3, ra
                  andi         a6, s11, -1758
                  and          s10, s0, s3
                  sll          s8, s5, t4
                  auipc        t5, 271533
                  sra          s0, ra, s0
                  addi         tp, s2, -1749
                  nop
                  xori         tp, sp, 416
                  xor          s4, s10, sp
                  srl          a1, s5, s3
                  srl          s9, t1, t3
                  lui          t0, 226381
                  nop
                  srl          a7, s8, s6
                  nop
                  andi         zero, a1, 40
                  ori          a6, gp, 130
                  srli         a0, s4, 22
                  srl          zero, a7, t5
                  sltu         t0, t5, s11
                  or           s1, a7, s1
                  auipc        t4, 293783
                  srli         a7, a3, 25
                  or           s6, t0, s10
                  addi         s9, s1, -1477
                  xor          s11, s4, a3
                  sub          s3, a1, s10
                  slt          a0, sp, s7
                  xor          s8, tp, a5
                  and          tp, s10, a0
                  srli         a1, s2, 27
                  lui          t0, 151161
                  xor          s8, t2, a6
                  srl          a0, a1, a1
                  slt          a4, a7, s11
                  andi         s8, t5, -1113
                  andi         s2, tp, 982
                  slt          s0, s5, s2
                  nop
                  nop
                  srl          a6, sp, a4
                  xor          t1, gp, s3
                  sltiu        s4, a2, -609
                  sra          a7, s6, s4
                  xori         a6, t3, 1414
                  auipc        t3, 192394
                  lui          gp, 551028
                  srl          zero, s8, t4
                  lui          s5, 47243
                  sltiu        zero, s5, 444
                  srai         zero, ra, 31
                  sub          t6, s6, s3
                  sub          s1, a4, s7
                  lui          s6, 225873
                  ori          t5, s6, -1767
                  xor          s8, a0, a6
                  and          gp, t1, a1
                  slli         t5, ra, 14
                  slli         sp, a4, 16
                  sra          t6, t3, a5
                  auipc        t6, 68819
                  andi         s2, a6, -1348
                  slti         t1, ra, -1230
                  slt          s9, zero, a1
                  slt          a1, a1, a6
                  nop
                  or           s0, t4, tp
                  ori          s0, t4, 119
                  ori          a7, s11, 1799
                  addi         s10, t6, 1327
                  slt          s9, s11, t6
                  or           s5, s11, a4
                  or           a4, s10, a5
                  nop
                  and          s0, s1, s10
                  sub          s5, s4, t0
                  or           tp, t3, a3
                  xori         s3, t5, -1092
                  slti         s9, s8, 1558
                  andi         s2, s1, -155
                  srli         s0, a4, 2
                  slti         s3, a5, -1626
                  addi         t6, s3, 1225
                  srl          zero, a5, a2
                  xor          t6, a6, gp
                  slti         s1, s8, 879
                  addi         s11, tp, 659
                  slli         s2, s4, 21
                  or           s8, ra, a2
                  nop
                  srai         tp, tp, 29
                  sll          t5, ra, t6
                  andi         a5, t5, -661
                  srl          s1, s4, a4
                  auipc        t0, 571727
                  addi         t3, ra, 386
                  sra          t4, s9, gp
                  addi         t5, t5, -1595
                  sub          s8, sp, a1
                  add          a6, s8, s2
                  sll          ra, a3, s3
                  slli         t3, s5, 17
                  sub          gp, s9, s4
                  slt          t6, a3, s7
                  srli         s5, a5, 17
                  sub          a5, t3, s7
                  slli         sp, s5, 5
                  xori         zero, a0, -1089
                  addi         a7, s2, 1705
                  add          ra, a3, s1
                  lui          s8, 394375
                  sltiu        s2, s4, -1167
                  srl          t5, a2, s7
                  srai         s9, t6, 1
                  slti         a6, s8, 339
                  sra          s2, s1, gp
                  sll          s3, gp, a3
                  lui          t3, 526434
                  andi         t1, gp, 1637
                  srli         a0, s2, 12
                  srai         t4, s3, 7
                  sub          a0, a7, s4
                  addi         a1, sp, -346
                  srl          a1, a6, t2
                  andi         zero, s3, 803
                  andi         s5, sp, -1500
                  nop
                  ori          s5, a0, -1298
                  or           t0, t2, t0
                  slt          a6, ra, a3
                  slt          t5, a0, gp
                  slt          a5, ra, s10
                  sub          a0, s2, a6
                  or           s10, s2, a3
                  srai         s1, t0, 6
                  srli         s4, t4, 7
                  lui          a7, 498369
                  sll          a7, t1, a7
                  xor          t1, t1, a3
                  addi         s4, s5, -1377
                  slli         t5, s8, 15
                  sra          t3, t5, gp
                  andi         a1, s7, -1148
                  add          s3, a6, t6
                  xori         a1, a6, 689
                  sra          zero, a7, s8
                  auipc        zero, 129591
                  ori          ra, zero, -1565
                  xori         t1, s8, 675
                  slti         t0, s9, 1267
                  srli         a0, s6, 28
                  srai         a7, t6, 19
                  and          s10, s1, s4
                  and          t6, gp, s2
                  sra          t6, t4, a3
                  srai         t5, s6, 18
                  and          a4, s11, s4
                  add          s11, t2, s5
                  and          s4, s0, t1
                  xori         s1, s8, -22
                  sll          t3, t2, s3
                  slli         ra, t4, 14
                  auipc        s1, 728861
                  sra          t5, t3, a1
                  and          s3, sp, s10
                  and          a1, t1, t2
                  xori         t3, a2, -1155
                  srli         s8, tp, 18
                  srli         a5, a2, 16
                  add          s0, a4, a5
                  srai         a7, a7, 2
                  sra          s5, s4, a3
                  addi         s9, s3, 1143
                  andi         zero, t5, 1546
                  add          a6, a1, s9
                  andi         s2, s5, 656
                  and          t1, s6, s3
                  srai         ra, a1, 10
                  addi         s8, t1, 1404
                  and          a4, s2, t2
                  srai         s4, a2, 26
                  sub          s6, gp, sp
                  sll          t1, s8, a3
                  lui          a4, 139058
                  sra          a4, t6, s9
                  andi         a7, s0, 1910
                  slti         a6, a1, 488
                  slt          a4, a6, a5
                  xor          s5, s4, ra
                  nop
                  add          tp, a5, a4
                  and          s4, a2, a1
                  nop
                  slti         s10, s3, -1386
                  or           a1, a2, s10
                  slt          s5, t5, a2
                  srl          s6, s7, s0
                  xori         t2, a6, 1424
                  addi         s1, s9, 341
                  add          s11, a0, t0
                  lui          a1, 3548
                  srli         t0, a4, 17
                  xor          t5, s8, s4
                  slt          t3, a5, s1
                  srl          t2, zero, t2
                  xori         a6, s0, 1822
                  lui          t3, 225567
                  srli         t5, s9, 28
                  sltu         s8, t3, t3
                  sll          ra, t6, zero
                  andi         t4, t3, 241
                  sra          t2, t0, a1
                  and          sp, ra, s6
                  srli         s4, s1, 17
                  nop
                  auipc        t5, 255406
                  and          tp, a7, a4
                  sll          s0, sp, ra
                  ori          t5, s0, -62
                  slt          t5, gp, zero
                  add          t4, sp, a1
                  or           s10, sp, a7
                  slt          a6, a7, tp
                  srai         s8, sp, 15
                  sll          a7, zero, a4
                  lui          t0, 718879
                  xori         a4, a5, 1490
                  auipc        s11, 554086
                  slli         s10, a6, 18
                  auipc        a7, 845023
                  ori          t1, t6, 124
                  sub          s5, s10, a0
                  sll          sp, zero, t6
                  auipc        s4, 775409
                  slt          t1, ra, t2
                  add          s8, s0, a7
                  xor          t2, a4, a0
                  auipc        s11, 427271
                  slt          s1, a2, t0
                  nop
                  slti         s8, a0, 1101
                  and          a6, s9, s10
                  xori         t1, t2, -290
                  srl          a5, s4, s3
                  sra          ra, a7, s11
                  ori          s3, tp, -741
                  ori          t3, tp, 148
                  slt          s9, s10, t2
                  sltu         s2, tp, a2
                  add          s9, t1, ra
                  ori          s5, s10, -676
                  xori         a5, s4, -1223
                  srli         a4, t4, 26
                  srai         a0, t6, 14
                  sltu         s6, t5, s2
                  slti         a7, s10, 1266
                  srai         s5, a4, 3
                  srai         s1, a7, 22
                  or           s0, a1, zero
                  xor          ra, a2, a6
                  sltu         a1, a0, t6
                  slti         s10, s7, -306
                  sltu         a0, a0, a0
                  slt          s1, s3, s5
                  srli         ra, s2, 24
                  andi         sp, a1, -532
                  srli         a6, s9, 24
                  slti         t2, s0, -216
                  srl          s4, s8, a0
                  ori          t2, s9, -1107
                  srai         s11, t2, 28
                  sll          t0, s6, a5
                  or           a1, s7, s9
                  or           tp, s11, t6
                  srli         sp, ra, 30
                  or           s1, s3, s3
                  andi         s6, t1, 1706
                  lui          ra, 794947
                  sub          s10, t1, a0
                  andi         tp, a7, 239
                  xor          tp, s4, t1
                  sltu         s5, a2, s1
                  xor          s3, s7, tp
                  slt          s0, s7, s11
                  lui          s5, 296967
                  lui          a5, 448159
                  li           s2, 0x3c81dd10 #start riscv_int_numeric_corner_stream_9
                  li           s6, 0xffffffff
                  li           t0, 0x0
                  li           a1, 0xc4317858
                  li           t6, 0xffffffff
                  li           s10, 0xffffffff
                  li           s11, 0xffffffff
                  li           a4, 0xeea7ca53
                  li           t4, 0x11988b0e
                  li           a0, 0xb98ba5e4
                  auipc        s10, 643576
                  auipc        s10, 5500
                  sub          s2, a4, a1
                  sub          a4, s10, s6
                  addi         a0, a0, 60
                  nop
                  lui          a0, 375391
                  nop
                  add          t0, s11, s6
                  add          t0, a0, t0
                  auipc        t4, 233230
                  sub          s2, s11, s11
                  addi         t6, s11, -490
                  auipc        a1, 947168
                  auipc        s6, 739747
                  addi         a1, t0, 172 #end riscv_int_numeric_corner_stream_9
                  slti         a0, a2, 1468
                  lui          s3, 384309
                  add          t6, t5, s0
                  sll          a1, s10, s11
                  slt          ra, a0, a3
                  slt          a6, s5, zero
                  add          s6, s10, t2
                  auipc        t2, 444933
                  xori         a4, s10, 980
                  lui          t3, 714600
                  xori         s11, zero, -1978
                  auipc        s5, 576461
                  addi         a6, zero, -1469
                  sltiu        t5, a6, 1078
                  srli         s10, s2, 8
                  and          s10, s7, a1
                  slt          t4, t2, t3
                  addi         s9, ra, 235
                  add          s10, s8, ra
                  xor          s0, s0, a4
                  add          s3, s1, s0
                  auipc        a0, 261397
                  xor          s6, zero, a4
                  auipc        s5, 476125
                  slt          a4, t5, s8
                  sll          s11, zero, t5
                  addi         t1, s7, -516
                  sltu         t0, s4, t1
                  sra          tp, t1, a3
                  andi         s0, s11, -511
                  srai         t3, a5, 18
                  slti         a5, a6, -78
                  sub          s5, s7, sp
                  addi         a7, s10, -506
                  sltu         s8, a0, a5
                  srl          a7, sp, s0
                  lui          tp, 552068
                  andi         ra, a3, 1578
                  xor          tp, zero, ra
                  srai         s6, t5, 29
                  slti         t5, t6, -1541
                  sll          t2, t3, tp
                  srl          s6, s9, a4
                  srli         s11, a1, 20
                  or           s3, a5, s7
                  ori          t4, s7, 1467
                  slli         s8, s8, 10
                  and          gp, a7, tp
                  nop
                  lui          gp, 191605
                  slti         sp, t3, -883
                  or           a4, s1, s5
                  auipc        s8, 851117
                  sll          s10, s11, s9
                  addi         a6, s3, 791
                  srai         s6, s0, 0
                  ori          t0, s10, 1891
                  sub          t2, t0, t3
                  lui          t3, 931580
                  add          t5, s4, a0
                  slti         a5, a1, 1829
                  auipc        a1, 474584
                  slt          t6, sp, s6
                  slli         s4, t2, 14
                  slli         s5, t5, 27
                  nop
                  add          t0, t3, a3
                  addi         s1, s11, 1059
                  sltiu        t1, t3, -1684
                  sra          a4, t6, s7
                  slti         s2, t5, 1889
                  and          zero, s0, s10
                  ori          t6, a3, 950
                  sltu         s9, a1, s2
                  lui          s8, 969008
                  srl          t5, a0, t2
                  sra          t2, a4, zero
                  sra          s9, a7, s0
                  slt          tp, a5, s11
                  sll          ra, sp, a7
                  sltiu        zero, s11, 1678
                  sltu         s2, s1, t1
                  nop
                  slt          t3, s10, s9
                  ori          a6, s5, 148
                  addi         s6, s3, 1005
                  sll          tp, s8, a4
                  srl          a5, s10, t6
                  srai         sp, s1, 26
                  addi         s0, t2, 1417
                  add          a4, a2, s0
                  xor          s2, sp, s1
                  andi         t2, s6, -1726
                  and          s4, s7, s4
                  srl          s4, a3, s8
                  sltiu        t4, t3, -215
                  and          s0, a4, zero
                  sra          a5, a7, t5
                  xor          t3, a2, sp
                  or           sp, a2, t0
                  addi         s9, a4, 1551
                  xori         a5, a0, 220
                  srai         s4, s2, 8
                  sra          t1, s3, t2
                  slti         t4, s10, -1054
                  xor          ra, s0, tp
                  xor          s0, s11, a5
                  sltu         ra, s11, s0
                  auipc        s2, 751379
                  slt          t3, s10, t0
                  sra          zero, s8, tp
                  ori          a4, zero, -1431
                  sltiu        a5, s0, 1636
                  andi         tp, s10, 760
                  xori         t6, s7, -1209
                  sltiu        a5, a4, -269
                  sltiu        s5, s11, -22
                  sltu         ra, a3, a2
                  and          s5, tp, t3
                  srl          a5, s9, a2
                  lui          t3, 178692
                  lui          s4, 882178
                  srai         zero, t0, 16
                  or           ra, t0, zero
                  slti         t1, t5, -978
                  sra          tp, zero, a6
                  addi         t0, a3, 1730
                  xor          a6, s10, ra
                  xori         t0, s7, -1215
                  nop
                  srai         s0, t6, 28
                  auipc        a0, 142882
                  slti         ra, gp, 2025
                  sltu         s2, t3, a2
                  sub          a1, s2, tp
                  srli         s3, s11, 17
                  slt          a4, a0, a6
                  add          sp, s3, a0
                  nop
                  nop
                  andi         s8, s11, -1942
                  slt          sp, s11, s6
                  sll          zero, t0, a1
                  sltu         s9, zero, t4
                  nop
                  sltu         t0, a7, t6
                  srli         s11, s11, 31
                  sra          gp, s11, s10
                  ori          ra, ra, -1737
                  xori         a1, zero, 1274
                  addi         s6, t5, -1946
                  add          t1, a0, s2
                  sltiu        s11, a7, 307
                  xor          a6, sp, s6
                  ori          s8, s1, -885
                  andi         s1, a1, 301
                  add          t2, t2, s3
                  sltiu        s2, a6, 577
                  srl          s4, s8, s9
                  sub          s2, a4, zero
                  xor          s10, t3, t2
                  srl          s8, s8, s2
                  xori         t3, zero, -363
                  andi         sp, s6, 1855
                  srai         sp, ra, 27
                  slt          t4, s9, s4
                  srai         a0, t1, 25
                  ori          a4, a4, 751
                  addi         t0, t1, -318
                  lui          s2, 812291
                  add          t4, t3, a2
                  ori          t0, t1, 515
                  slti         s2, a0, 1671
                  or           a6, s2, s4
                  sub          a7, a1, s2
                  andi         t6, t5, -1386
                  srli         gp, s11, 19
                  and          sp, t1, s6
                  ori          a5, gp, 1157
                  addi         t5, a1, 1424
                  sltiu        s10, a4, 18
                  slti         tp, s8, -1934
                  sra          s5, t0, zero
                  srl          a6, s8, t5
                  srai         s5, t0, 18
                  andi         a6, a4, -7
                  sra          s4, s9, sp
                  lui          a4, 963418
                  and          s9, t3, t2
                  auipc        gp, 506793
                  xor          s10, t3, zero
                  sll          zero, a4, a2
                  slli         s8, a0, 28
                  sltiu        t3, s1, -251
                  addi         s10, s11, -1710
                  slt          s4, t6, a7
                  sltu         s2, s7, t2
                  auipc        t2, 1000591
                  addi         t2, t3, 1622
                  xor          a4, s6, t6
                  sub          gp, ra, s4
                  and          t4, s1, s8
                  sltiu        a1, a5, -978
                  lui          t4, 67825
                  srli         zero, a0, 1
                  sll          a5, ra, gp
                  sltiu        a1, s9, 712
                  or           a7, s10, s5
                  auipc        t4, 821538
                  nop
                  slti         s8, s2, -1175
                  srl          a7, a4, tp
                  slti         a0, s3, 1947
                  sll          sp, s10, s8
                  srl          ra, a4, a2
                  slli         t0, tp, 11
                  srai         s2, s11, 4
                  slli         s3, a7, 14
                  add          t3, t2, s7
                  nop
                  xor          gp, s9, s10
                  sll          t2, t5, s1
                  srai         a4, sp, 31
                  slli         s6, s3, 13
                  slli         a7, zero, 22
                  add          t5, t5, s2
                  sltiu        s1, a5, 130
                  slt          s11, s11, s4
                  xor          s5, s6, a1
                  sra          t4, a7, s7
                  or           zero, a6, gp
                  sra          a7, t2, s0
                  andi         t3, a7, 640
                  sll          zero, zero, a6
                  sll          s10, t6, a7
                  sltu         s2, s8, t1
                  sltiu        t2, a5, -1279
                  nop
                  sra          t1, a2, a4
                  ori          zero, s5, 1215
                  or           s1, s4, t3
                  sub          s11, s6, a2
                  sltu         s2, tp, s4
                  xor          s6, a7, s0
                  xor          t4, t0, s0
                  sltu         s4, t5, s11
                  auipc        s6, 18861
                  slti         a5, t4, 282
                  srli         s8, s5, 12
                  sra          t5, s6, t2
                  andi         a4, a5, 228
                  slli         t3, s0, 26
                  slt          tp, a2, a5
                  add          t4, s9, t3
                  slt          ra, t0, s3
                  srl          s0, a5, tp
                  srai         sp, s3, 17
                  nop
                  sltiu        a0, s9, -823
                  slli         t4, tp, 0
                  srl          a7, gp, a3
                  slti         s4, s5, 842
                  xori         t4, t6, 1760
                  andi         a1, s1, -1844
                  slti         a0, a7, 1477
                  srl          t5, a5, s10
                  sll          s3, gp, a4
                  srli         a0, s8, 30
                  srl          zero, zero, s1
                  auipc        s5, 241198
                  add          a6, a4, s2
                  add          t5, tp, a4
                  slt          sp, s8, t1
                  xor          sp, t3, s3
                  nop
                  slti         t0, s2, -881
                  andi         a1, t6, -143
                  addi         s8, t2, -619
                  andi         s3, s4, -1574
                  or           s6, a5, a7
                  slt          a6, s5, a2
                  andi         gp, s7, 806
                  sll          s1, s9, t3
                  nop
                  sltiu        t1, t6, 1277
                  xor          s5, s11, t2
                  or           s11, a0, s11
                  sra          ra, a0, s1
                  ori          s8, t2, 1556
                  addi         sp, gp, -1797
                  sltu         s6, s9, s0
                  sltiu        s0, a2, -1102
                  nop
                  sltu         t3, s4, t6
                  sra          a4, s4, t2
                  sll          t4, ra, ra
                  slti         a5, a4, -386
                  addi         a5, s1, -164
                  srli         s1, s11, 31
                  sra          a4, t0, ra
                  sll          s3, a4, s9
                  sub          s6, a1, t4
                  xori         s1, a2, -1793
                  sll          a6, a6, s2
                  sltu         s6, s6, t2
                  slt          sp, s8, ra
                  slli         a4, t3, 28
                  add          sp, a1, a2
                  srli         t6, s3, 18
                  lui          s11, 796524
                  ori          s3, a7, 945
                  auipc        s0, 706842
                  srai         sp, t0, 31
                  slti         t3, t1, 1243
                  lui          a7, 657913
                  nop
                  sub          a0, a5, a3
                  addi         a7, t2, -1850
                  srli         s2, s11, 22
                  slli         s9, t4, 6
                  slti         t3, zero, 1293
                  ori          s8, a5, -508
                  srai         zero, a0, 19
                  xor          a1, gp, a5
                  xori         t5, s11, -396
                  xor          a6, s11, s4
                  addi         t5, ra, -34
                  sll          t0, s8, s8
                  sra          t1, s0, t4
                  sll          a6, t5, s6
                  slti         t5, s7, -1657
                  slli         s11, t6, 14
                  slt          s9, s11, s3
                  sltu         a4, a1, t1
                  srli         s0, zero, 21
                  sra          s1, s4, s3
                  add          zero, s5, ra
                  sll          t4, t4, s3
                  auipc        a7, 612390
                  auipc        s1, 598290
                  slti         t3, tp, -1975
                  add          a1, s7, t4
                  auipc        a7, 931595
                  addi         a1, a0, 1575
                  andi         zero, s4, -1333
                  add          s4, s4, t3
                  andi         t6, s10, 1323
                  sll          a7, a6, t1
                  sll          t3, s6, gp
                  sltiu        s1, s0, -1835
                  sltu         t2, zero, a5
                  sra          t4, t5, a7
                  sra          a6, t2, s6
                  and          a4, s5, ra
                  srli         a7, gp, 6
                  slli         s9, s1, 2
                  slti         t3, a3, 2017
                  nop
                  xori         zero, s8, 586
                  xor          sp, s10, ra
                  auipc        t0, 377914
                  slli         s11, a6, 28
                  srl          a7, a3, s9
                  sra          s11, a7, t2
                  sll          a1, s7, t1
                  auipc        s0, 288734
                  slt          s1, t0, a0
                  slti         s11, gp, 1058
                  sub          s1, t3, a1
                  srl          a4, tp, t6
                  sll          a6, a4, tp
                  slti         t5, a1, -1387
                  slli         s4, zero, 19
                  xor          t5, s4, s9
                  slt          zero, s6, sp
                  srli         s4, s11, 12
                  slli         s11, tp, 2
                  sltiu        a6, s1, -527
                  addi         a5, s4, 295
                  sltiu        t6, a7, 1884
                  slti         t6, t2, -490
                  nop
                  slti         t1, s11, -1579
                  lui          s9, 1043033
                  xori         t0, tp, -727
                  slti         a0, a1, 386
                  sub          t1, s10, zero
                  srai         s2, t3, 24
                  srl          s3, t2, t4
                  srai         s1, tp, 2
                  addi         ra, a7, 341
                  addi         gp, a4, -209
                  sll          s6, s1, s1
                  sltu         s6, s6, a4
                  addi         s5, s4, 1165
                  sra          s0, s0, t0
                  slt          ra, gp, a5
                  sll          sp, s0, t4
                  ori          s3, s4, -531
                  and          s9, ra, s9
                  slli         tp, s1, 17
                  nop
                  nop
                  slti         t0, a6, 367
                  or           s6, a4, a0
                  sltu         s9, a7, t1
                  and          a6, t0, s0
                  nop
                  addi         a0, a4, -904
                  slt          t5, a3, s7
                  lui          t3, 799003
                  lui          s0, 551427
                  sltu         t5, t3, s9
                  sll          s4, t6, a2
                  auipc        sp, 694904
                  andi         a4, a2, -1324
                  srl          tp, s6, tp
                  addi         t6, a2, 1019
                  add          s8, a3, t3
                  auipc        s9, 125523
                  addi         a6, tp, 26
                  xori         s5, t4, -530
                  addi         gp, a0, -971
                  srl          s0, s0, a7
                  addi         s4, a4, -741
                  srli         a4, a6, 25
                  srl          t2, t1, a2
                  sra          s8, a7, a4
                  slt          s10, a6, s6
                  and          s11, s7, gp
                  sra          a7, s0, a6
                  xori         a1, a7, -739
                  slti         s5, a3, 64
                  sltu         t5, s9, s8
                  lui          a6, 621760
                  lui          a1, 516344
                  nop
                  sll          s1, tp, s10
                  andi         a7, s5, -1696
                  slli         a7, t1, 1
                  srai         s3, a1, 5
                  sltu         s0, s4, t6
                  slt          a6, s11, t0
                  xori         t4, t6, -889
                  addi         s5, t6, -1030
                  xor          s2, a4, s0
                  nop
                  or           tp, zero, s8
                  sra          s4, t4, t3
                  sltu         s10, s1, a1
                  slt          t1, t6, s9
                  xori         a7, a1, -802
                  sra          t3, s4, s2
                  slli         ra, a7, 1
                  ori          a4, t4, 1180
                  lui          t1, 284936
                  slti         a5, s7, -200
                  sra          sp, t2, a0
                  auipc        s4, 162925
                  xor          a4, s9, s3
                  xori         s0, s6, -1470
                  nop
                  sub          t6, s10, t3
                  xor          s6, s9, a3
                  or           t5, zero, a0
                  ori          s2, s10, 2020
                  sltu         gp, a1, t4
                  slti         t2, tp, 814
                  auipc        sp, 80414
                  xori         t5, s8, 1895
                  and          s5, zero, a0
                  slli         s10, t0, 2
                  sll          s4, s5, a5
                  lui          a4, 143376
                  ori          gp, s2, 949
                  xor          a4, a5, t1
                  xor          zero, t5, a4
                  and          s9, t5, t5
                  srli         t1, t3, 22
                  sltiu        ra, t2, -1633
                  auipc        t5, 791967
                  add          sp, a2, s8
                  xori         s2, a5, 914
                  nop
                  srai         s9, s4, 16
                  slt          s1, a2, t3
                  nop
                  or           a1, a3, s5
                  srai         s10, s1, 30
                  andi         ra, a2, 354
                  srl          t1, s4, gp
                  sltu         a5, a1, s8
                  auipc        sp, 1000610
                  srli         a5, s1, 8
                  xor          s1, t3, a3
                  xori         s9, tp, -407
                  or           a7, s10, a2
                  lui          s10, 176992
                  srli         ra, t3, 25
                  auipc        a5, 392383
                  xori         a5, s9, 1442
                  slli         a4, a4, 19
                  ori          t6, t2, 287
                  auipc        s9, 961929
                  xor          t3, ra, a6
                  sltu         a5, t0, t5
                  srai         t4, t6, 6
                  and          a5, s5, gp
                  srli         s2, s10, 11
                  slli         s11, a0, 25
                  ori          s6, s5, -353
                  nop
                  xor          gp, tp, a1
                  sll          ra, t3, s2
                  xori         t3, t5, -747
                  nop
                  andi         s2, t5, -1109
                  auipc        s1, 399458
                  sra          t4, s3, t1
                  addi         a0, a5, 1680
                  sll          s10, sp, ra
                  srai         a1, t0, 17
                  sub          ra, t3, a0
                  sra          a4, t3, s3
                  srl          s8, s5, a0
                  slli         t5, a5, 1
                  srl          a7, s4, t0
                  slli         t4, sp, 15
                  slt          t3, s8, t3
                  andi         a0, ra, 415
                  slti         s10, a6, -1095
                  slli         s10, s5, 20
                  srl          t5, s9, s8
                  slli         s5, t0, 18
                  srl          s4, a6, a0
                  xor          s0, a6, a6
                  sltu         s11, zero, t2
                  xor          a6, tp, tp
                  sll          s10, a3, a7
                  addi         s11, a4, -56
                  sltiu        t1, s8, 1905
                  sub          a0, tp, ra
                  slt          s8, t0, a7
                  ori          s4, ra, 831
                  srl          zero, s2, t1
                  sltu         t2, s9, a0
                  nop
                  auipc        s1, 111451
                  srl          a7, t1, a2
                  xori         s8, s6, -1172
                  ori          a7, ra, -1667
                  add          s4, s9, t4
                  sll          a6, a5, s3
                  ori          tp, sp, -2038
                  andi         sp, t4, -1270
                  ori          t0, a1, 986
                  andi         s11, zero, -664
                  sll          s6, tp, t4
                  sub          ra, t4, sp
                  xori         t2, s1, -1076
                  ori          t0, s11, 750
                  srli         t6, a5, 28
                  xori         a1, t4, -494
                  xor          t1, a3, s6
                  slt          a5, s4, gp
                  lui          t6, 203797
                  slti         tp, a3, -1888
                  sltu         a4, s1, a1
                  sll          s9, s3, a6
                  sll          sp, s10, t1
                  xor          s0, sp, sp
                  and          t0, s0, t0
                  xor          t0, s10, t1
                  slti         t4, s8, 2038
                  add          s10, s0, s2
                  andi         s9, a2, 222
                  sltu         a4, a1, t2
                  add          s5, s7, a4
                  addi         s5, s2, -1276
                  srli         sp, t5, 3
                  sltu         t0, ra, a5
                  srai         s0, a1, 30
                  xor          a4, s8, t4
                  nop
                  sra          s10, t5, s5
                  or           a1, ra, s11
                  ori          s11, s9, -1467
                  andi         a0, t6, 657
                  auipc        gp, 948389
                  srl          t2, s3, t4
                  xor          t1, a3, a1
                  srli         s5, s7, 4
                  add          s1, s11, a3
                  srl          t4, s1, s0
                  slt          t1, s6, a0
                  sll          s3, s8, t0
                  sub          t0, zero, s10
                  sltu         a6, s0, s1
                  andi         a0, t3, 1357
                  sltu         zero, a1, t4
                  xori         gp, a6, 479
                  sltu         tp, s9, s10
                  xor          ra, a7, zero
                  nop
                  add          s8, s8, zero
                  auipc        t0, 686411
                  xori         s8, sp, 1141
                  or           zero, a0, a3
                  or           a0, s4, s9
                  srl          s9, a1, s4
                  slti         s11, sp, -883
                  sltiu        tp, s9, 278
                  and          s3, s10, t0
                  xor          a6, t1, a1
                  srai         a4, zero, 26
                  auipc        sp, 524190
                  auipc        a5, 608070
                  sll          a6, s0, t3
                  slti         zero, t5, -333
                  xori         s9, a0, -1058
                  sltu         a6, s4, s1
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           s2, 0x85237656
                  li           s9, 0x0
                  li           ra, 0xffffffff
                  li           a4, 0x0
                  li           s10, 0x80000000
                  li           t4, 0xffffffff
                  li           s0, 0x80000000
                  li           s3, 0x4a95d2a1
                  li           s1, 0x0
                  nop
                  addi         s3, s3, -232
                  lui          ra, 75506
                  nop
                  addi         s10, ra, 1030
                  sub          t4, s1, s4
                  add          s1, t4, a4
                  sub          s10, s9, s0
                  nop
                  addi         s4, s9, -1609
                  lui          s2, 533543
                  nop
                  addi         ra, s4, 62
                  add          s0, s2, a4
                  sub          s0, s0, s1
                  add          s4, s9, s1 #end riscv_int_numeric_corner_stream_2
                  srli         t4, ra, 28
                  andi         s9, t5, -78
                  andi         s4, gp, 746
                  sub          s3, a7, t3
                  sltiu        s6, t2, -747
                  slti         s11, sp, -2036
                  and          t5, zero, t6
                  srai         t1, t3, 26
                  auipc        s8, 551490
                  nop
                  sll          t6, s4, gp
                  sltiu        tp, t2, 572
                  slli         t6, a6, 28
                  srai         s9, s5, 22
                  nop
                  xori         s1, s6, -583
                  sltu         zero, s8, a7
                  add          s2, gp, a1
                  srai         a6, a0, 18
                  srli         s0, a6, 14
                  auipc        s11, 75503
                  slli         a1, s7, 27
                  or           s8, t4, a5
                  add          a0, a5, t0
                  nop
                  ori          t2, sp, -1863
                  auipc        a4, 906436
                  xor          t5, sp, a4
                  lui          s6, 599875
                  nop
                  andi         a4, tp, -2017
                  slt          s10, a1, a3
                  lui          s0, 225657
                  addi         s8, s7, 1293
                  ori          t2, a2, 1233
                  lui          t6, 389696
                  or           t6, a3, s3
                  and          a6, a4, sp
                  andi         s11, zero, -1168
                  lui          t4, 257648
                  xori         sp, s10, -1759
                  and          t1, t5, t6
                  auipc        ra, 514080
                  srai         a5, s1, 28
                  sltiu        t0, t1, 1002
                  srli         tp, a1, 23
                  auipc        s3, 470765
                  sub          a1, a0, t3
                  ori          s4, s0, -142
                  addi         zero, t4, -1128
                  lui          t5, 265594
                  slli         s1, a3, 23
                  sub          s6, s4, s9
                  slli         s11, t5, 8
                  add          t5, s11, a0
                  nop
                  andi         s9, ra, 1386
                  sltiu        a5, t0, 644
                  or           a1, s0, s4
                  sll          ra, t4, s2
                  ori          s11, a4, -994
                  auipc        a7, 514367
                  xori         a7, sp, -195
                  sub          s8, t0, s11
                  xor          s4, tp, s4
                  or           ra, a5, s4
                  lui          s9, 718878
                  sub          t6, gp, t4
                  slli         s10, t1, 13
                  sltiu        s0, s7, -250
                  xor          s3, t6, s2
                  sra          t0, t0, a3
                  andi         t3, a1, 120
                  slt          s3, s10, a2
                  nop
                  or           a1, s8, a4
                  srl          tp, a0, s0
                  slti         s8, s3, 224
                  add          s11, ra, s2
                  or           t1, s6, s2
                  srai         s8, t2, 20
                  sra          t2, s11, a3
                  xori         a4, s2, -685
                  slti         s0, a0, 1585
                  xor          ra, s7, a7
                  add          s11, s7, s5
                  slti         s6, s2, -1003
                  or           s3, s11, t4
                  sra          sp, t5, a4
                  or           a0, s2, gp
                  sltu         ra, ra, tp
                  sltu         s2, a1, s1
                  add          t0, s10, t2
                  srli         t2, a4, 15
                  slli         s0, zero, 8
                  srai         s10, s2, 6
                  sltu         s10, zero, s0
                  nop
                  and          a4, sp, t2
                  addi         tp, s7, -1931
                  srli         a7, s6, 31
                  or           a1, zero, s4
                  srai         s8, t2, 19
                  srai         t0, s2, 9
                  sll          t6, a0, s6
                  srli         s10, a6, 10
                  auipc        a6, 405897
                  sltiu        tp, a1, 547
                  andi         t1, zero, 508
                  or           tp, s0, a1
                  addi         a1, a1, -1135
                  lui          tp, 489614
                  andi         s4, t0, -1587
                  nop
                  ori          t2, sp, 1688
                  and          a5, s5, zero
                  auipc        s9, 867077
                  auipc        s0, 319117
                  lui          a7, 956047
                  sltiu        sp, gp, -1717
                  sll          a6, s3, sp
                  slli         s10, s6, 19
                  andi         a1, t6, 752
                  srai         tp, t4, 8
                  sll          s2, ra, a2
                  lui          a0, 862204
                  addi         s8, s4, -1659
                  srai         zero, t5, 4
                  srl          zero, t6, t6
                  andi         a5, a1, 1299
                  andi         gp, s1, -1263
                  addi         t5, s10, -982
                  slti         a0, s1, 1466
                  ori          s3, a6, -1303
                  sltu         t1, zero, s11
                  xori         t1, s1, 99
                  slt          gp, s10, ra
                  add          s0, a5, s9
                  sub          s0, s3, t5
                  nop
                  and          a6, s8, t6
                  srli         t5, sp, 0
                  srli         t3, a3, 13
                  slt          sp, sp, gp
                  slti         t6, t0, -1113
                  srli         t0, t4, 19
                  sll          sp, ra, a7
                  srl          t2, t6, s10
                  lui          t3, 482832
                  nop
                  sra          t5, t1, t0
                  ori          a5, s3, 1497
                  addi         s5, sp, -1649
                  and          t1, s4, t1
                  lui          tp, 14196
                  xor          a0, tp, s1
                  and          zero, a5, a3
                  andi         a1, a7, -1965
                  sltiu        t5, s3, 457
                  andi         s0, s3, 453
                  ori          s8, sp, 837
                  sub          s5, t6, t1
                  and          a1, s2, t1
                  andi         tp, s9, -533
                  srl          a5, a2, t2
                  addi         s9, a4, -864
                  sub          s6, a2, t4
                  andi         a4, a6, -419
                  add          t6, t2, s0
                  srl          sp, t5, s11
                  xor          a6, a0, s0
                  sub          s9, a4, a5
                  add          t6, s5, s7
                  slti         t2, a5, 654
                  auipc        s10, 220245
                  srl          a4, a7, a0
                  sll          s8, s10, sp
                  add          s9, t4, t3
                  andi         t2, t3, -672
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           sp, 0xffffffff
                  li           s2, 0xffffffff
                  li           gp, 0x80000000
                  li           a1, 0x80000000
                  li           t4, 0xeb7450fc
                  li           a7, 0x0
                  li           s10, 0xffffffff
                  li           s8, 0xffffffff
                  li           a0, 0xbd231a04
                  nop
                  addi         s8, s10, 593
                  sub          a5, s8, s2
                  addi         s8, gp, -1692
                  add          a5, s8, gp
                  lui          a7, 493802
                  nop
                  add          a5, t4, a1
                  addi         s10, t4, 1356
                  auipc        t4, 329379
                  auipc        t4, 545937
                  auipc        a0, 783737
                  nop
                  add          t4, gp, a1
                  auipc        a5, 15342
                  lui          s10, 121677
                  add          s8, t4, s8
                  nop
                  nop
                  nop
                  add          a1, sp, s2
                  addi         a7, s10, 1419
                  auipc        a0, 840806
                  nop
                  sub          t4, a0, gp #end riscv_int_numeric_corner_stream_13
                  sub          gp, a7, a3
                  add          s6, a1, s4
                  slli         s6, a2, 26
                  xor          a5, a2, s4
                  and          a0, t2, s7
                  and          s4, zero, s11
                  nop
                  nop
                  andi         t6, t6, 41
                  nop
                  slli         s0, a7, 3
                  sltiu        t5, zero, -1745
                  sltiu        zero, gp, -909
                  xor          a0, s10, s9
                  andi         s5, t0, -994
                  srl          t0, s4, t0
                  add          s1, a3, t4
                  auipc        t3, 741687
                  ori          t3, zero, -630
                  xori         s10, t4, 323
                  auipc        s6, 361792
                  srai         s0, s10, 7
                  or           t1, s8, a4
                  and          s2, ra, a2
                  addi         s2, t0, -1502
                  add          ra, t2, tp
                  nop
                  slli         s1, s10, 4
                  sub          a1, tp, t5
                  sra          t1, t2, s7
                  addi         gp, s7, 887
                  addi         zero, s11, -333
                  srl          s0, s4, a6
                  sltiu        a6, s3, 550
                  ori          s4, s7, 1760
                  xor          s10, s0, s2
                  srai         s6, s7, 1
                  ori          a6, s4, 1841
                  srai         a1, a4, 29
                  addi         s5, s11, -1536
                  add          t1, a6, t5
                  xor          a7, s4, s9
                  sra          s3, s10, zero
                  or           s5, a7, a6
                  sltiu        a4, s3, -1368
                  srl          a4, s0, t6
                  addi         a0, s10, -970
                  or           s1, t0, zero
                  srl          s5, s3, s7
                  sub          s10, a3, a4
                  sll          t3, s8, gp
                  slli         t2, s10, 2
                  auipc        s6, 488054
                  srai         t3, t2, 25
                  sltiu        s9, t6, 1067
                  nop
                  slt          a7, a3, a3
                  srai         s0, ra, 22
                  sub          a5, t3, a5
                  slt          t3, a6, a0
                  srai         t0, t3, 4
                  srl          a4, s3, s5
                  sltiu        s9, a4, -1011
                  xor          s4, tp, s3
                  andi         tp, s3, -1129
                  slli         tp, s5, 25
                  add          t1, t4, s11
                  addi         s5, t5, -637
                  slt          s10, s5, s2
                  or           gp, a1, a4
                  addi         s10, gp, -1953
                  sub          a6, s0, t0
                  sltiu        a0, a1, 1223
                  add          a6, t0, s2
                  slti         zero, a5, 2001
                  slti         s8, sp, -715
                  and          s0, s10, s1
                  lui          t0, 86804
                  add          s5, s11, ra
                  slli         sp, s4, 8
                  lui          t2, 412223
                  ori          gp, a2, -1847
                  or           a4, a5, t4
                  sra          t6, s3, t0
                  slli         sp, a2, 28
                  slti         s5, s2, 611
                  nop
                  andi         gp, t5, -457
                  srli         a0, t2, 13
                  lui          t0, 149518
                  addi         s1, a0, -1291
                  lui          t5, 212690
                  xori         t5, t0, 295
                  xori         t4, s1, -552
                  sll          a4, s3, s8
                  xor          t4, a2, s4
                  add          s4, t0, sp
                  xor          sp, a5, s1
                  srli         s10, a0, 26
                  sra          ra, a4, gp
                  auipc        ra, 313125
                  add          s11, s7, s0
                  addi         s6, a3, -1294
                  srai         a0, s5, 26
                  and          gp, s5, gp
                  sltu         s2, s7, t5
                  srai         s3, s5, 31
                  ori          a0, ra, -138
                  srl          t1, s5, t6
                  slti         s9, s9, -307
                  srli         t3, s11, 0
                  srl          gp, gp, s4
                  andi         sp, a7, -703
                  srai         s9, s0, 6
                  xor          s1, t4, s9
                  auipc        a5, 988926
                  sltiu        t4, a7, 817
                  sltu         s10, gp, zero
                  or           ra, s2, a5
                  srl          s8, s5, gp
                  auipc        s3, 939815
                  xori         s2, ra, 112
                  slli         s11, t5, 2
                  add          tp, sp, s9
                  sll          a7, gp, t6
                  sltu         a5, a2, s11
                  sra          s2, t5, s1
                  add          s3, s3, t3
                  and          gp, a2, gp
                  xor          t1, s10, t4
                  srli         zero, t6, 20
                  slt          a0, a7, a6
                  and          a0, a2, a3
                  srli         s11, a0, 9
                  andi         s2, ra, -779
                  srl          t2, t5, tp
                  sll          sp, s2, s4
                  addi         a1, s5, -540
                  srli         a5, sp, 20
                  sltu         zero, a1, s6
                  or           s2, s3, t5
                  srai         s11, a0, 26
                  xor          tp, t1, a5
                  sltiu        a6, a1, 902
                  slti         gp, a1, 1661
                  sub          a7, a6, a3
                  xori         a7, s0, -1036
                  addi         zero, t4, -115
                  xor          s4, zero, s10
                  slt          t3, t1, sp
                  srl          t6, s3, a4
                  sra          t4, a6, s11
                  srai         s10, a1, 28
                  srl          a1, t1, s0
                  add          a6, s11, ra
                  lui          a0, 667841
                  sll          a0, a3, s0
                  slt          sp, s4, s8
                  andi         s2, a1, -1157
                  xori         s10, zero, 1416
                  ori          t1, s11, -526
                  slt          t4, s4, s0
                  sll          a5, a1, a0
                  sra          s2, s10, s6
                  auipc        tp, 973325
                  srl          s9, s11, t0
                  addi         s3, t2, -1252
                  sll          t2, t3, s0
                  srl          s6, t3, tp
                  ori          gp, s11, -1409
                  and          zero, t4, s9
                  sltu         a4, s9, a3
                  nop
                  srl          t3, tp, s6
                  addi         a0, zero, -34
                  srl          a4, s4, a5
                  slt          t3, a2, a0
                  ori          s8, a7, 844
                  lui          ra, 455294
                  addi         a0, a5, -614
                  srli         s8, s10, 26
                  add          s11, t0, a3
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t0, 0xffffffff
                  li           s9, 0xffffffff
                  li           ra, 0xffffffff
                  li           s2, 0x80000000
                  li           s4, 0x9b12fb5f
                  li           t2, 0x0
                  li           sp, 0xffffffff
                  li           a5, 0xf43adb59
                  li           s0, 0xffffffff
                  addi         s9, s9, -785
                  nop
                  sub          t2, a6, s4
                  auipc        ra, 607966
                  addi         a5, ra, 486
                  add          a5, s2, s0
                  auipc        a6, 357034
                  add          s2, s9, a5
                  addi         sp, s0, -1920
                  lui          t0, 380516
                  add          a6, s9, a5
                  addi         a5, t0, -692
                  addi         ra, s9, 262
                  nop
                  auipc        s4, 422740 #end riscv_int_numeric_corner_stream_6
                  sltiu        a5, s1, -1183
                  auipc        a4, 591834
                  addi         t3, a3, 203
                  ori          s6, a5, 574
                  add          t3, a0, ra
                  auipc        t4, 134692
                  slt          sp, a2, s3
                  and          a5, t3, t0
                  xor          gp, t0, sp
                  andi         s9, s1, 375
                  add          s10, t1, s10
                  slti         t3, s10, -873
                  slt          a0, t0, s2
                  lui          t6, 512279
                  and          sp, s0, s3
                  slli         a1, s7, 3
                  lui          tp, 854718
                  and          t2, t6, a5
                  slt          a7, a6, s6
                  nop
                  add          a5, s1, zero
                  or           tp, s6, s2
                  nop
                  lui          s9, 734709
                  xor          t0, t4, s5
                  sltiu        sp, a4, 1013
                  sll          a7, a3, s2
                  ori          s4, a0, 1175
                  sltu         s0, a5, zero
                  or           s1, a6, a7
                  add          t5, s7, s9
                  sltu         sp, zero, gp
                  slt          s11, s5, s7
                  ori          s11, s7, -531
                  slli         s0, s7, 6
                  srli         t4, s4, 17
                  and          a5, gp, s8
                  srai         s2, t3, 1
                  auipc        ra, 590945
                  sra          s1, a3, s7
                  srai         s10, t1, 30
                  xor          a1, a5, zero
                  sll          t0, s1, a6
                  sltiu        t3, s6, -525
                  sltiu        s1, t1, -651
                  slti         t2, s7, -655
                  srli         t1, gp, 29
                  slli         gp, s5, 11
                  slli         s2, t1, 24
                  and          s11, sp, a1
                  sub          t1, s3, a7
                  sub          s9, s2, sp
                  sll          s4, a1, s8
                  sltiu        t1, tp, -893
                  sll          sp, s11, t4
                  and          a6, t1, a1
                  sub          s11, s9, s7
                  sltiu        t3, t1, -780
                  andi         s4, a6, 746
                  ori          s6, s8, -553
                  srl          zero, t2, ra
                  andi         zero, s3, -499
                  nop
                  andi         a4, s1, -589
                  slli         a4, t6, 14
                  sltiu        s11, s9, -1884
                  slli         s6, tp, 27
                  xori         s11, t4, 952
                  nop
                  srli         t1, a7, 7
                  srl          s0, t2, a3
                  and          ra, s4, s8
                  sltiu        a6, gp, 1243
                  and          a7, s7, sp
                  sll          s10, a0, s4
                  ori          a0, zero, -1965
                  sra          t3, t6, a3
                  add          t4, a0, s0
                  lui          ra, 1007329
                  andi         s5, t3, 1533
                  sltu         tp, t6, s2
                  nop
                  srl          s9, t0, t3
                  addi         s4, ra, 1155
                  sra          s1, t4, a1
                  xor          s0, t6, a5
                  sltiu        a6, s3, -550
                  sltu         a1, t4, t3
                  nop
                  slli         s2, tp, 0
                  sll          gp, sp, t6
                  ori          a4, a3, 665
                  slt          s5, t2, a6
                  slti         gp, sp, -1602
                  sub          a6, sp, a5
                  srai         s11, s7, 6
                  slti         t3, a4, -670
                  auipc        s9, 1045488
                  xori         t3, s8, 1523
                  sll          s6, t3, gp
                  sub          t0, a5, s9
                  addi         a4, a6, -507
                  xor          s5, a5, t3
                  and          s4, a5, zero
                  addi         ra, a6, -343
                  addi         a1, sp, -513
                  sll          t0, s7, s3
                  srai         a0, s10, 19
                  slt          tp, s4, t4
                  addi         s1, a4, 584
                  srai         tp, s0, 22
                  slt          a6, s2, s7
                  add          t5, s9, s6
                  or           sp, a2, a6
                  addi         s2, sp, 57
                  add          a1, s7, s1
                  sra          sp, t3, a1
                  nop
                  lui          t5, 1009168
                  ori          s11, a4, -187
                  sub          s10, s3, ra
                  sub          s0, s10, a0
                  slli         t4, s7, 21
                  sub          t0, a5, zero
                  xor          s6, zero, tp
                  srl          s9, t0, s4
                  lui          ra, 1046272
                  xori         t4, s6, -1256
                  sltiu        a5, s10, 1981
                  slli         s9, a5, 10
                  add          a6, gp, s1
                  ori          t0, tp, -1718
                  sll          s4, a0, a5
                  slli         a5, a1, 6
                  slti         ra, t2, 186
                  auipc        t6, 119604
                  nop
                  and          s1, ra, gp
                  xor          t6, a4, sp
                  addi         s5, gp, -435
                  srl          s9, a7, s9
                  xor          s3, sp, s5
                  addi         s3, t1, 1084
                  nop
                  sltiu        zero, a0, -1939
                  addi         s1, ra, -558
                  sltiu        tp, sp, 1997
                  and          t0, s4, s6
                  auipc        s2, 809155
                  ori          s10, s9, -1539
                  slli         s8, a0, 6
                  ori          sp, s4, -223
                  slli         s11, s0, 19
                  addi         t2, a5, 647
                  auipc        a5, 443889
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           t3, 0x0
                  li           a0, 0xe1c5657f
                  li           t2, 0xffffffff
                  li           t0, 0xee50dcd
                  li           t6, 0x81a2ee7e
                  li           s3, 0x80000000
                  li           a7, 0xffffffff
                  li           sp, 0x80000000
                  li           tp, 0xffffffff
                  add          sp, s4, t2
                  auipc        s3, 833176
                  nop
                  auipc        sp, 1017402
                  auipc        s4, 746690
                  lui          sp, 43904
                  sub          sp, a7, t6
                  addi         t0, s4, 1317
                  sub          tp, t0, t0
                  lui          s4, 159056
                  auipc        tp, 674161
                  lui          a0, 212866
                  nop
                  auipc        t2, 947344
                  lui          t2, 120910
                  addi         t3, t3, -1273
                  add          t0, a0, sp
                  sub          t3, t3, t2
                  add          tp, t3, t2 #end riscv_int_numeric_corner_stream_5
                  sra          zero, s1, ra
                  xori         s4, t3, 1425
                  srl          s8, s10, t3
                  sltiu        zero, s6, 1967
                  lui          s9, 939942
                  nop
                  xori         s9, a7, -191
                  auipc        a1, 666106
                  sll          a6, s6, sp
                  andi         s4, s5, 923
                  srai         a4, tp, 21
                  add          s8, s8, s8
                  srl          s9, tp, s1
                  sra          s11, t2, a6
                  slti         zero, a1, -1656
                  sltiu        a5, a7, 1166
                  xori         a4, a7, 1433
                  slli         a7, t6, 6
                  xor          s10, a4, s1
                  sltu         a1, s4, t5
                  slti         s0, t1, -580
                  sub          s10, s0, gp
                  sll          sp, t5, s7
                  and          tp, ra, t0
                  srl          s10, s8, t6
                  sra          s11, t1, gp
                  sra          s4, s5, s10
                  sll          t3, s6, s4
                  nop
                  addi         a7, s10, -493
                  addi         ra, t6, -228
                  slti         t0, a4, -610
                  sll          t5, s11, zero
                  sra          s1, t4, t5
                  srai         s6, s3, 11
                  add          t5, s11, s1
                  sll          s8, gp, a4
                  sltu         s3, zero, s6
                  xori         tp, sp, -1859
                  sra          s1, a2, s9
                  or           sp, ra, s5
                  andi         sp, s11, 825
                  addi         s0, t3, -578
                  lui          s4, 771171
                  lui          s9, 208944
                  xori         s3, a4, 1816
                  nop
                  nop
                  sltiu        ra, t3, 478
                  nop
                  add          a1, a0, s9
                  nop
                  srai         s3, s2, 5
                  srli         s6, ra, 1
                  sll          s2, a6, s7
                  add          a7, sp, s9
                  nop
                  srli         t2, t2, 21
                  sra          s8, s0, a3
                  auipc        s0, 400736
                  sltiu        s1, s4, -536
                  sub          t1, zero, t2
                  slt          t2, a2, t2
                  sltiu        t0, gp, 289
                  andi         s5, t6, -1341
                  add          s3, a1, a5
                  xor          s8, s6, sp
                  or           zero, gp, s1
                  srl          a0, s0, s3
                  sltiu        s11, a7, -568
                  slt          s2, a5, tp
                  slti         t0, s10, 1977
                  slli         t0, s11, 16
                  and          s1, a4, s11
                  and          a7, a6, s11
                  srli         t1, s6, 22
                  and          s5, s3, zero
                  addi         ra, t6, 1503
                  sub          s2, s6, a4
                  sll          a5, a2, s3
                  or           t0, s5, a0
                  ori          ra, t1, 1294
                  srli         t0, a6, 0
                  srl          s3, s10, t0
                  or           ra, a5, ra
                  add          t5, s1, a5
                  andi         s3, tp, 2038
                  sra          s2, ra, s1
                  addi         ra, a4, 1178
                  srl          s11, a3, ra
                  srl          t5, s6, gp
                  sltu         tp, s5, zero
                  srli         s5, a6, 15
                  sltiu        a5, ra, 1257
                  xori         gp, ra, -942
                  sll          t0, s9, a3
                  or           s10, s6, t2
                  auipc        ra, 194861
                  ori          s0, gp, -67
                  nop
                  auipc        t6, 286449
                  sltiu        s10, a4, -1469
                  slti         s5, s10, 754
                  slti         s9, s8, -295
                  slli         t2, t5, 21
                  slli         s8, sp, 16
                  sll          tp, s10, s5
                  slt          zero, t6, sp
                  sub          s5, a6, s5
                  slti         s5, a0, -1112
                  sll          t6, t5, a1
                  lui          s6, 72719
                  andi         s2, zero, -1788
                  slt          s0, gp, t6
                  nop
                  nop
                  lui          gp, 317387
                  or           t2, s9, a0
                  lui          t6, 354388
                  srl          zero, s7, ra
                  srl          s10, a4, a2
                  sra          s5, s7, s5
                  slt          t1, s8, a4
                  sltu         t3, s1, s6
                  srl          s8, s2, s5
                  srl          s8, s4, gp
                  xori         t4, zero, -693
                  srli         s2, s6, 7
                  slt          gp, s11, s2
                  addi         a5, s6, 1648
                  nop
                  sltu         t4, s1, s2
                  sltu         s3, a7, s11
                  ori          s0, t6, -1481
                  slti         t4, s4, 1185
                  sra          s3, a1, a0
                  sltiu        gp, tp, -1508
                  addi         s6, a4, -205
                  ori          t5, s7, -652
                  xori         s8, s8, 1990
                  slli         a5, a6, 24
                  sltiu        sp, s11, -176
                  sltiu        s10, t5, 1576
                  xori         tp, s0, 793
                  srli         a5, s8, 21
                  srai         s2, s3, 28
                  slti         s6, s5, -1362
                  slti         a6, t5, -1778
                  lui          s11, 689334
                  slli         s6, s0, 1
                  nop
                  and          s1, a3, a0
                  ori          t3, s11, -1368
                  srai         t2, a4, 29
                  add          zero, a7, s6
                  sll          a4, s0, a1
                  sra          a1, a6, s1
                  srli         zero, s8, 6
                  slti         t2, a5, 1871
                  srli         a4, s10, 2
                  lui          ra, 525255
                  sub          tp, s3, ra
                  ori          gp, s1, -1934
                  slli         sp, s6, 10
                  auipc        ra, 489492
                  nop
                  sra          t6, s8, t4
                  add          t0, t4, s7
                  sltu         s2, a0, s9
                  srl          a1, t2, s1
                  slli         s10, zero, 30
                  slti         a5, s8, -89
                  xori         s10, t4, -1682
                  add          t4, s4, s7
                  lui          s8, 319700
                  srl          sp, s5, tp
                  sltu         s9, s8, a4
                  nop
                  slti         a0, s1, -1493
                  xori         t3, a3, 784
                  sub          s8, s7, s6
                  andi         s11, a6, 1168
                  sra          t5, s0, t4
                  and          s8, a3, zero
                  nop
                  slli         s2, s7, 12
                  sltu         a4, a6, a0
                  and          s6, a1, sp
                  or           ra, t5, a3
                  srai         zero, s2, 1
                  slli         s8, a2, 11
                  xor          s2, s2, s1
                  sub          a0, s7, s7
                  srl          t6, a7, s0
                  xori         t3, t3, 1665
                  srli         s9, ra, 25
                  srli         s10, s2, 15
                  slti         t6, s9, -687
                  addi         s4, ra, -132
                  ori          a1, a2, -83
                  andi         zero, a6, 206
                  nop
                  sra          gp, s9, gp
                  slli         t3, ra, 27
                  ori          s10, gp, -627
                  sltiu        s11, sp, -1757
                  sll          a1, s10, s10
                  ori          s1, t2, -1842
                  slt          s3, s5, tp
                  andi         t1, s6, -1109
                  nop
                  srl          s3, a3, a1
                  sltiu        a6, s6, 1053
                  slli         t6, a5, 24
                  ori          s9, t3, -820
                  or           t3, t2, a5
                  auipc        s10, 618925
                  or           s0, a0, t4
                  or           a1, s0, s5
                  slti         s10, s0, -450
                  slt          s8, a2, s7
                  xor          zero, a4, gp
                  xor          a1, t6, t3
                  xori         s6, s7, -193
                  nop
                  xor          t3, gp, t1
                  slli         s8, s11, 9
                  and          s3, s9, s4
                  slti         s5, t5, -2008
                  or           t0, t3, s6
                  srl          s4, t4, s11
                  sltu         t4, t6, sp
                  sub          s8, s10, a5
                  sra          t0, s5, a1
                  sltu         sp, s3, s2
                  slli         tp, t6, 0
                  srli         a5, zero, 31
                  sll          t2, s9, gp
                  xor          s11, zero, t5
                  lui          a6, 917472
                  add          s11, a5, tp
                  srli         t0, sp, 13
                  addi         ra, a2, -855
                  ori          s2, s5, -691
                  add          s2, s6, a0
                  xori         t2, t0, -1282
                  or           t4, s2, a0
                  ori          tp, sp, 759
                  slli         t0, t3, 15
                  auipc        t0, 874258
                  or           a5, t3, s5
                  slt          gp, s8, sp
                  slti         t0, s4, -1296
                  ori          tp, s10, -963
                  nop
                  sll          tp, zero, a3
                  slti         t2, a1, -1569
                  and          t1, tp, s1
                  slli         gp, t0, 0
                  slti         s0, a5, -1711
                  addi         gp, s8, -1013
                  or           t3, t5, t3
                  or           a7, a4, gp
                  andi         s8, s8, 395
                  srl          a1, t5, sp
                  srai         s6, t5, 20
                  slli         a7, a4, 14
                  add          t5, gp, a3
                  or           s4, zero, s4
                  xor          ra, a4, s9
                  srl          s4, a2, gp
                  slli         a5, s5, 10
                  srli         a5, a2, 27
                  slti         a5, a0, -1408
                  xori         zero, s8, 591
                  lui          s4, 709009
                  auipc        t5, 1042955
                  sra          t4, t2, s5
                  addi         a4, s11, -1716
                  and          a4, a5, a0
                  sltu         s1, a1, s7
                  or           s4, t0, a3
                  auipc        a6, 633630
                  sub          a7, t1, s2
                  xor          sp, t0, s1
                  andi         s8, a3, -879
                  srli         s0, s4, 5
                  sra          t4, a7, ra
                  sub          s5, a1, a0
                  addi         s0, s0, 132
                  ori          a7, s5, -499
                  srl          a5, s7, gp
                  slt          s0, a3, t6
                  add          a7, s2, zero
                  andi         tp, t5, 1533
                  slli         a1, a3, 28
                  nop
                  add          t6, t6, t3
                  sub          s8, a2, s8
                  auipc        t1, 558912
                  and          t0, a4, t6
                  add          s10, a5, gp
                  sltu         t1, s11, a4
                  nop
                  sub          t4, a5, a6
                  addi         t3, t5, -1828
                  sub          t0, a0, a7
                  nop
                  ori          t0, ra, -1914
                  ori          s2, a5, 1465
                  srl          s10, s1, a2
                  srli         s9, sp, 25
                  slt          zero, a6, t2
                  sra          t2, t3, s7
                  andi         s9, s0, -1386
                  sltu         t5, a6, s1
                  slli         t4, tp, 30
                  nop
                  lui          s1, 89709
                  xori         t0, zero, 1520
                  nop
                  lui          gp, 932117
                  auipc        zero, 894543
                  slti         t2, a2, -21
                  sltiu        s8, s7, -1787
                  slli         t6, s7, 13
                  ori          s0, a1, -100
                  srli         s1, s1, 25
                  sll          a1, a3, a3
                  sra          a7, sp, a5
                  ori          t4, t2, 292
                  sltu         t3, s1, s6
                  auipc        a7, 136410
                  sll          t0, tp, t2
                  srli         s3, a0, 28
                  andi         a4, a3, -1333
                  xor          t5, s10, s8
                  sra          s0, a7, a5
                  or           sp, a5, s10
                  srl          s4, s5, s3
                  or           s11, t4, t5
                  andi         s5, ra, 1406
                  ori          t6, s0, -2044
                  srli         s2, a6, 17
                  sltiu        a4, gp, -1558
                  lui          s2, 17280
                  slti         a1, s2, 1040
                  xori         a7, t4, -1495
                  sub          s8, sp, a5
                  auipc        s6, 465238
                  andi         s9, s5, 1609
                  ori          s4, a2, -220
                  sltiu        zero, t5, 1376
                  or           tp, t6, t3
                  and          t0, a4, s1
                  or           s2, s3, s3
                  add          s5, s0, s2
                  ori          s11, s1, -1976
                  addi         s8, s1, -2040
                  addi         a1, a1, -825
                  nop
                  xori         a0, a7, 1904
                  ori          s0, s1, 1737
                  ori          a0, s1, -742
                  srli         s0, a5, 2
                  sll          a6, a2, a0
                  lui          t1, 956706
                  lui          s3, 222764
                  slli         t4, a1, 30
                  addi         zero, a4, 457
                  lui          s4, 3684
                  ori          t2, t2, -1947
                  sltiu        t2, gp, -565
                  sltiu        zero, t1, -734
                  sltu         t1, t2, a4
                  sll          s1, a3, a7
                  xori         a5, s11, -631
                  sll          s9, ra, s5
                  slti         s2, t1, -841
                  or           s0, a1, s5
                  sll          s4, s7, s8
                  or           t3, a7, tp
                  andi         s5, s11, 1987
                  sltiu        s0, t0, 551
                  sra          t0, s8, zero
                  srai         s1, a7, 24
                  and          s3, a4, s1
                  slt          zero, a0, sp
                  srli         t1, t5, 31
                  slli         t5, s10, 8
                  sltu         s8, a7, t3
                  nop
                  or           s11, s11, s8
                  sra          zero, s4, t3
                  srli         s8, gp, 4
                  nop
                  slt          t6, s4, s2
                  nop
                  sltiu        s6, t6, 1610
                  slli         t3, s11, 27
                  ori          s9, t3, 1724
                  auipc        sp, 1034238
                  add          a5, a2, t2
                  sub          s0, s10, a3
                  sll          ra, t0, a5
                  nop
                  sltiu        zero, s7, 53
                  sltu         s11, s10, t0
                  slt          s9, a1, a1
                  xor          t2, a3, s9
                  ori          s0, a3, 305
                  or           sp, s9, a2
                  srli         s4, s4, 27
                  and          s6, s6, ra
                  add          t2, t0, ra
                  slli         gp, s3, 0
                  or           a1, t1, a1
                  slt          t6, t0, t0
                  sra          zero, tp, a4
                  auipc        t0, 130011
                  lui          a4, 284081
                  sub          t2, t6, s8
                  srli         s0, t3, 3
                  add          a5, ra, t1
                  xor          t1, zero, s11
                  sra          tp, s6, s7
                  and          gp, t2, s1
                  sll          s9, a4, t1
                  sra          s5, t6, s3
                  sub          t1, a5, s7
                  xor          a0, s9, s9
                  srai         s2, s10, 9
                  srl          s1, t3, t1
                  sltiu        zero, a3, 96
                  slli         t2, a2, 7
                  lui          s5, 1007606
                  and          s11, gp, s6
                  slli         t2, t2, 21
                  or           s1, s1, s8
                  sll          s9, a0, t0
                  andi         a7, ra, 1855
                  or           t0, a1, t3
                  srl          s6, s7, s2
                  ori          s10, s4, 1843
                  srli         t6, t5, 8
                  sltu         s11, t0, a6
                  slti         s6, s1, 952
                  srli         s0, s6, 20
                  sra          s11, s3, ra
                  srl          s2, t4, tp
                  slti         a5, t3, 1650
                  xori         t4, t1, -1286
                  slli         t6, s3, 7
                  and          t4, s2, tp
                  auipc        a7, 672814
                  srli         t0, s2, 24
                  xori         gp, a7, 55
                  xor          t3, s10, t6
                  addi         t6, s3, 1675
                  srai         a4, a1, 16
                  srli         t0, t1, 9
                  sltiu        s2, s4, -881
                  sltu         a0, t5, a0
                  xor          s10, s8, t0
                  or           a7, s11, s7
                  sub          s8, a1, a5
                  nop
                  sra          t5, zero, gp
                  xor          t4, a7, a1
                  or           s10, t2, s7
                  andi         t1, s5, -1426
                  srli         s6, s3, 4
                  slt          t5, t1, t1
                  xor          t2, s11, t4
                  lui          t0, 220063
                  slti         s3, a5, -1433
                  or           s8, a5, tp
                  or           a6, zero, s7
                  srl          a7, s2, ra
                  andi         a1, s6, 168
                  ori          t1, a5, -1530
                  or           s5, s1, t4
                  add          s3, a7, s5
                  addi         s2, a1, 239
                  slt          t6, a7, zero
                  sra          t4, a1, t3
                  srai         s9, ra, 5
                  xori         s0, a1, -1538
                  nop
                  ori          s10, s10, 1562
                  srai         s4, s9, 16
                  xor          gp, s8, s3
                  add          a1, s2, a5
                  add          s10, sp, s0
                  slt          a6, s4, s5
                  srai         s9, s8, 29
                  srai         sp, a7, 15
                  sra          gp, a0, t0
                  xor          s10, t3, a2
                  ori          t3, s2, -1169
                  slli         a5, s10, 13
                  sub          t6, s2, gp
                  or           s5, a0, gp
                  slli         a4, tp, 18
                  nop
                  sltu         t6, s8, s8
                  slt          s2, s8, a7
                  lui          s4, 684199
                  slli         s1, a0, 6
                  srai         a6, ra, 31
                  and          s11, a0, sp
                  auipc        t0, 465738
                  add          t6, a1, sp
                  sltiu        a7, s2, -69
                  srai         s3, sp, 4
                  and          t1, s8, gp
                  slli         s11, t3, 23
                  sll          s10, t5, t2
                  sra          t1, t6, s3
                  add          t2, s7, s11
                  andi         a4, s1, -125
                  srl          sp, t6, t5
                  srli         s5, a4, 27
                  ori          t4, s8, -1550
                  lui          s1, 554693
                  srl          t5, a0, t3
                  add          s0, s11, s8
                  addi         a5, t1, 1647
                  and          tp, s2, t2
                  xor          ra, s6, s2
                  nop
                  slli         s3, s2, 13
                  ori          t5, s1, -1674
                  nop
                  sub          s3, t3, gp
                  and          s8, t6, zero
                  or           s8, t3, a6
                  srli         s9, ra, 1
                  srl          ra, a3, t3
                  srli         a1, t6, 3
                  xori         zero, t3, 1770
                  addi         t1, a3, 1771
                  xori         s1, tp, -220
                  addi         s4, s4, 641
                  srai         t4, s1, 16
                  sra          a7, a2, a7
                  addi         s11, a2, 19
                  srl          t0, a6, gp
                  nop
                  sub          t1, gp, s7
                  auipc        sp, 755056
                  sltu         s11, t2, t2
                  srl          t4, t0, gp
                  andi         t2, s8, 1182
                  srli         gp, a0, 6
                  lui          s2, 587428
                  ori          sp, tp, 1957
                  xor          sp, s1, s10
                  xori         s8, t3, -1895
                  and          a6, a3, ra
                  add          s4, s4, t5
                  slli         s10, s9, 25
                  nop
                  srai         s0, s7, 23
                  sub          t6, s4, s0
                  addi         t3, s11, 1949
                  xori         a1, t2, 1810
                  nop
                  addi         s11, s7, -325
                  xor          t0, a5, ra
                  xor          s6, s6, zero
                  lui          a7, 612375
                  srli         s6, a5, 5
                  slli         s0, s6, 8
                  xor          t2, s1, ra
                  xor          s3, s5, s11
                  slli         sp, t3, 12
                  andi         s11, a5, -48
                  slli         s8, s7, 22
                  or           s10, a2, t1
                  srai         a0, s7, 10
                  sra          s9, a5, s6
                  srli         a1, a7, 1
                  slli         a4, s4, 22
                  slt          sp, a0, a5
                  sltu         a0, a1, t2
                  nop
                  slt          s10, s0, s7
                  add          s10, a7, t6
                  slti         t0, s5, 1879
                  slti         s1, a2, -1296
                  slt          s6, a2, s6
                  ori          a6, s1, 362
                  xori         t6, sp, 1374
                  addi         zero, a4, 2033
                  nop
                  or           t5, t0, t6
                  lui          s3, 24134
                  sltu         s3, t5, t3
                  nop
                  slti         a6, ra, 847
                  xori         a5, a6, 1735
                  nop
                  srli         s3, s0, 28
                  or           s4, s6, t3
                  ori          s9, a4, -934
                  srl          gp, t0, tp
                  nop
                  and          s5, a1, a6
                  srl          sp, s7, a5
                  add          s0, t3, a1
                  xori         a7, sp, -644
                  andi         gp, ra, -1273
                  srl          t4, a6, s8
                  sll          a0, t6, t5
                  sltu         t6, s8, s2
                  addi         t6, t6, -1755
                  slt          s9, s11, t1
                  sra          sp, a2, s11
                  sub          s9, t4, s4
                  srai         zero, s2, 26
                  srl          s4, zero, t6
                  andi         s4, a2, -658
                  srl          s6, t6, a2
                  srai         ra, t2, 29
                  auipc        a7, 89202
                  xor          ra, s9, t4
                  sll          a7, t5, t4
                  sll          s6, s9, s1
                  xori         t6, t1, 60
                  ori          tp, a6, 1259
                  srli         t2, ra, 7
                  srli         a6, s11, 8
                  sltiu        s1, zero, -675
                  sub          s1, a2, a5
                  srli         s5, s10, 11
                  sltu         s5, a0, a2
                  srai         sp, t5, 10
                  slti         t1, s1, -855
                  slli         s3, a6, 13
                  addi         t0, a7, 146
                  and          s2, sp, zero
                  or           sp, s2, s8
                  auipc        s0, 507046
                  slli         a1, s6, 23
                  sll          sp, s4, a1
                  and          a5, a4, a0
                  srai         a5, sp, 24
                  sra          zero, a0, a0
                  sltiu        gp, t3, -456
                  sltiu        s8, a0, -1590
                  srl          s6, s1, tp
                  srai         s11, s8, 4
                  srli         s5, a3, 7
                  andi         s5, s7, -550
                  srl          s11, ra, s5
                  and          s10, ra, s2
                  nop
                  slt          a4, a7, a0
                  slt          t4, s9, s6
                  auipc        s6, 999992
                  sltu         gp, a3, a3
                  slt          s10, s9, s7
                  sltiu        s11, t0, 1510
                  lui          t0, 67241
                  addi         t6, t2, 652
                  sltiu        s2, a0, -1149
                  add          t1, s3, a3
                  ori          s3, t6, 1013
                  auipc        s8, 793724
                  lui          a5, 545858
                  auipc        s10, 87426
                  ori          a0, s6, -870
                  auipc        t3, 522437
                  slti         a1, s10, -617
                  nop
                  srli         s2, s4, 18
                  or           zero, t2, t4
                  slli         s10, a3, 16
                  srai         s0, a0, 7
                  sll          s10, a7, sp
                  srl          a6, t6, t5
                  ori          t0, tp, 1433
                  slti         t3, s7, 802
                  add          s9, t2, s7
                  sub          a1, t1, t0
                  srli         s0, s10, 16
                  sltiu        t1, a1, 1599
                  sra          a6, a5, zero
                  xor          a1, s7, a6
                  andi         s9, sp, -1463
                  sub          a1, s0, a0
                  add          t2, tp, a1
                  nop
                  srl          s5, sp, zero
                  srl          t3, tp, s3
                  srl          s9, s2, s11
                  sltu         s2, a5, a1
                  or           s1, t2, a0
                  xori         s5, a7, 1589
                  xori         t5, t6, 1348
                  sltu         s2, a0, s5
                  and          t5, s8, ra
                  and          t5, a0, a1
                  xor          t4, a5, a6
                  xor          tp, a2, a6
                  sub          s10, t5, a4
                  srai         s8, s4, 15
                  sll          s2, s9, a1
                  auipc        gp, 735934
                  xor          gp, s2, sp
                  or           t3, t1, s0
                  lui          t3, 924205
                  addi         zero, gp, -356
                  auipc        sp, 487320
                  slti         s6, sp, 1795
                  and          gp, a2, ra
                  srai         t3, a0, 2
                  slt          t5, t1, s11
                  and          t0, a7, a2
                  andi         t5, s0, -1586
                  add          tp, a3, s4
                  sltu         s8, zero, s3
                  srl          a5, s0, s10
                  sltiu        s4, ra, -163
                  sub          a7, t4, a2
                  add          s8, s9, s3
                  slti         s5, s9, 1645
                  and          a4, t1, gp
                  andi         t2, t5, -1811
                  sltu         gp, a4, s5
                  nop
                  andi         t3, s8, -1373
                  add          a5, s11, sp
                  andi         t1, s0, 538
                  or           t3, s3, s1
                  addi         s6, t6, 469
                  slli         s8, a4, 12
                  srai         a5, t0, 19
                  sra          s6, a6, t1
                  slti         a5, a6, -274
                  srli         a1, s3, 4
                  slti         t0, t0, -1249
                  srai         a7, s2, 22
                  sra          s0, s2, s4
                  xor          sp, a6, s0
                  sltiu        a7, s3, 520
                  and          s8, a0, t1
                  auipc        zero, 694273
                  xori         a4, sp, 1240
                  andi         tp, s9, -53
                  sub          a1, s10, a1
                  nop
                  srli         t3, s9, 12
                  andi         t5, t6, -1996
                  andi         s3, sp, -1292
                  srli         s9, t6, 14
                  sltiu        a7, s8, -354
                  sra          t6, t1, t0
                  sltiu        t4, t3, 218
                  sra          t1, a4, s5
                  or           s1, s0, s6
                  sub          s5, zero, s3
                  slli         zero, a1, 28
                  addi         s1, s6, -236
                  addi         s10, a0, -800
                  and          s6, s11, t1
                  xori         s3, t2, -831
                  lui          s4, 948477
                  sra          t4, t3, s11
                  sra          s4, a1, s2
                  sll          s4, s5, s10
                  sltiu        s5, a3, 1927
                  and          s2, tp, t6
                  or           a0, a7, s0
                  slli         tp, s9, 2
                  sub          s1, sp, a7
                  sltiu        zero, s5, 1695
                  sll          t0, a7, a5
                  auipc        t2, 610988
                  srai         gp, zero, 27
                  sll          s0, t1, a5
                  sub          s11, t3, zero
                  lui          t6, 548450
                  nop
                  addi         s8, s2, 1582
                  sra          a0, s9, a0
                  sltiu        s5, a1, -290
                  addi         s10, t5, -367
                  or           t4, a0, a3
                  andi         s3, gp, 1623
                  add          tp, s8, s10
                  sra          s9, tp, a5
                  slli         t1, t4, 12
                  auipc        gp, 668989
                  slt          a1, s4, s10
                  slti         t4, s3, -233
                  srai         s3, a2, 18
                  slti         gp, t4, 1774
                  auipc        sp, 122046
                  srli         a6, a0, 17
                  and          s11, sp, t5
                  xori         s9, s0, 1139
                  sltu         t4, s8, s5
                  srli         zero, s11, 22
                  sra          s1, s0, s0
                  srli         s2, a7, 6
                  srai         a0, t1, 1
                  sub          t5, s0, s8
                  or           t2, s1, tp
                  sub          t2, tp, t3
                  srai         a4, a4, 11
                  srai         s0, tp, 20
                  auipc        s6, 379024
                  addi         t5, s1, -506
                  xor          sp, t6, zero
                  sra          a7, t3, t2
                  slti         t3, s7, 1814
                  and          gp, s1, s0
                  sra          a5, a1, s2
                  nop
                  xori         s1, a3, -482
                  andi         a0, s9, 104
                  slli         t2, t2, 10
                  slli         a6, a0, 6
                  srl          t3, zero, s6
                  srl          gp, tp, a6
                  add          s8, s6, t4
                  lui          t4, 550007
                  srli         zero, s4, 16
                  ori          sp, tp, 774
                  and          a1, a1, t2
                  sub          s1, a4, tp
                  auipc        a0, 124246
                  sltiu        tp, s2, 596
                  sub          t0, t6, s8
                  nop
                  sub          t3, t1, a4
                  xor          s11, sp, zero
                  lui          t4, 871369
                  srl          t1, s2, s5
                  or           s0, s3, a5
                  slli         s1, gp, 20
                  slli         tp, t6, 25
                  addi         s1, s9, -1452
                  slti         s4, sp, 537
                  addi         s5, zero, -1586
                  srl          a1, s2, s9
                  xori         s1, t5, 809
                  ori          t6, t0, -979
                  srai         a7, s0, 1
                  srli         a0, gp, 29
                  addi         a7, s7, -857
                  sra          a0, s4, gp
                  auipc        s4, 755431
                  srai         t3, a6, 22
                  addi         tp, sp, 1659
                  auipc        s8, 544318
                  sll          a4, zero, t5
                  or           s10, t2, a2
                  srai         s9, t5, 11
                  or           a1, s7, s10
                  slti         s1, t0, -1481
                  sltiu        ra, s8, 1886
                  sltu         t3, sp, s1
                  slti         ra, t6, 1979
                  sltiu        a4, a2, 898
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           a1, 0x80000000
                  li           s5, 0x0
                  li           s2, 0x80000000
                  li           s4, 0x5e255a68
                  li           t5, 0x80000000
                  li           t6, 0x80000000
                  li           gp, 0x49247e5a
                  li           s3, 0x0
                  li           s10, 0x73896ad7
                  addi         t6, t6, -881
                  auipc        s3, 500441
                  lui          t5, 522963
                  nop
                  auipc        s3, 776811
                  sub          s5, s2, t4
                  auipc        gp, 361167
                  sub          s5, s4, t4
                  lui          t6, 136492
                  addi         s5, a1, -317
                  auipc        t5, 300556
                  lui          gp, 1044450
                  nop
                  auipc        a1, 851101
                  auipc        t5, 763204
                  nop
                  nop
                  addi         s4, s5, -1046
                  add          gp, s4, s10
                  nop
                  lui          t4, 111760
                  nop #end riscv_int_numeric_corner_stream_4
                  srli         t6, s3, 23
                  nop
                  addi         sp, a1, -1141
                  sll          tp, a4, a2
                  xor          t1, a3, t6
                  slli         s11, a1, 25
                  xor          s4, a3, t6
                  slli         a5, a6, 0
                  nop
                  auipc        s9, 327611
                  or           s0, s7, a5
                  ori          sp, s5, 979
                  add          a4, sp, a4
                  or           t4, a7, s8
                  srl          s4, s3, s4
                  sltiu        a7, t1, -497
                  andi         gp, a2, -47
                  add          t4, tp, sp
                  sra          gp, s10, a7
                  srli         t0, zero, 26
                  add          a0, a7, s3
                  addi         ra, s0, 178
                  add          s9, s5, sp
                  slli         a1, ra, 1
                  srai         t3, s6, 17
                  slli         s1, t4, 2
                  xori         t2, a4, 329
                  sra          sp, t2, t2
                  xor          a1, s10, t4
                  sltu         t4, s9, t2
                  nop
                  ori          t1, s6, -699
                  sra          a6, a6, t2
                  add          s9, a3, s11
                  or           zero, sp, a5
                  or           t0, a0, s2
                  srai         t0, s9, 3
                  or           t5, s11, a1
                  andi         s8, ra, 1083
                  ori          s11, a5, 29
                  ori          sp, t5, 1723
                  sll          a4, s7, sp
                  slli         s9, tp, 19
                  slli         gp, s7, 18
                  sub          s4, t4, t4
                  srai         s5, t0, 23
                  sra          a5, s8, t5
                  sub          s3, t2, t2
                  nop
                  sltu         t1, t3, a0
                  and          zero, s9, t5
                  auipc        a6, 531031
                  addi         s5, s11, -1939
                  slt          sp, t6, gp
                  sltu         s6, t1, s5
                  slti         gp, s6, -1874
                  slti         a6, a1, 1827
                  auipc        a1, 679489
                  sltu         s8, t5, t4
                  add          s5, t4, s9
                  sra          sp, s7, s4
                  addi         a1, t4, 1863
                  xor          t1, t5, s1
                  addi         sp, t1, 127
                  xori         zero, a7, -1001
                  sub          s6, s7, ra
                  sra          tp, a7, t1
                  add          t0, a6, a1
                  sltiu        t2, s7, -1378
                  auipc        t3, 174986
                  andi         t0, t6, 1655
                  sltu         t0, a0, s4
                  lui          tp, 419517
                  xor          a4, t5, t4
                  srl          s5, a1, a0
                  sltu         s6, t6, s0
                  lui          t6, 686648
                  sra          a0, t5, s11
                  lui          s3, 450611
                  or           s10, t0, zero
                  add          a6, s1, t1
                  slli         s5, s6, 13
                  slt          tp, s5, a2
                  slti         t0, a4, 115
                  addi         s11, s0, 464
                  addi         a6, a0, 1025
                  and          s6, tp, s6
                  srli         a6, s0, 22
                  slt          s1, s7, s7
                  sub          s8, t2, t5
                  or           t4, zero, tp
                  add          s3, t1, a3
                  add          a1, t5, t1
                  and          sp, sp, t4
                  and          t3, s10, t5
                  srai         s0, a5, 8
                  lui          a4, 791133
                  auipc        t4, 743858
                  auipc        s0, 781946
                  sltu         t0, s7, s10
                  slli         s0, s5, 27
                  ori          t1, t4, -1566
                  srai         t2, t3, 25
                  slli         s11, a6, 8
                  sll          s3, a3, a5
                  srl          s8, tp, sp
                  srli         s8, t5, 10
                  srl          sp, t4, s0
                  auipc        s8, 662330
                  sltiu        s11, a3, -1483
                  and          zero, s1, t2
                  xori         s8, s10, -1571
                  srl          s10, s10, a5
                  slt          t6, sp, s8
                  or           s6, s4, s1
                  lui          s9, 247047
                  nop
                  andi         t4, s4, -301
                  sltiu        a7, s3, -1658
                  sltu         s1, t1, s10
                  srl          zero, sp, a3
                  slli         s4, sp, 16
                  add          a1, t4, t4
                  and          zero, a4, gp
                  sra          t4, s3, ra
                  slli         t6, s0, 13
                  addi         a4, a2, -1382
                  nop
                  sub          t5, tp, a1
                  andi         a1, s6, 280
                  xori         a7, a4, 1252
                  srai         s2, s9, 14
                  sll          t2, t3, s8
                  sll          s8, s5, t5
                  slli         s2, s4, 25
                  slti         s10, a3, -975
                  auipc        s10, 830407
                  add          s5, a0, t5
                  ori          t1, t2, -1021
                  srai         a4, s3, 3
                  srai         ra, s7, 4
                  sra          a4, s5, s10
                  xori         a0, s8, 889
                  srai         a7, s7, 15
                  sll          s10, s9, t4
                  sltu         t6, sp, a2
                  auipc        s10, 945308
                  sub          tp, a4, a1
                  slt          s10, t3, s4
                  sltiu        s11, tp, -434
                  addi         s2, s7, -1290
                  sltu         s2, a1, sp
                  sltu         t4, a1, s7
                  xori         s8, s6, -316
                  srl          ra, a5, s4
                  addi         a7, s3, -1662
                  sub          t6, a4, zero
                  srl          t5, a1, a5
                  nop
                  slt          s3, a7, s3
                  auipc        tp, 809072
                  ori          a6, a6, -1974
                  addi         a0, a1, -1494
                  sltu         a0, a7, s5
                  sub          s5, t5, a0
                  srli         a0, s10, 10
                  srl          t4, s4, s9
                  sra          s9, s4, a5
                  xor          sp, s3, ra
                  nop
                  sra          t2, t0, s1
                  ori          a6, s10, -1527
                  or           t4, t4, s3
                  andi         a6, gp, 4
                  sll          t6, gp, ra
                  slti         t6, s11, -1780
                  nop
                  and          s11, s5, t2
                  ori          s6, a5, -1494
                  lui          sp, 981526
                  sll          s11, s1, a5
                  srli         tp, t2, 8
                  ori          s0, s5, -964
                  sub          t2, t0, t4
                  sltu         s4, s1, a1
                  xor          a4, t3, s11
                  srai         gp, t5, 9
                  slt          a5, a6, s7
                  lui          t6, 875395
                  addi         s2, tp, -949
                  srai         s4, s0, 22
                  sltu         a6, s11, a7
                  srli         a1, t5, 6
                  auipc        a4, 874191
                  ori          ra, s7, -1066
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           ra, 0x0
                  li           a6, 0x34c94cc8
                  li           s9, 0x80000000
                  li           t3, 0x0
                  li           s6, 0x80000000
                  li           a0, 0xffffffff
                  li           s2, 0xffffffff
                  li           tp, 0xffffffff
                  li           s5, 0x574badd3
                  add          s9, t3, s5
                  auipc        ra, 599124
                  nop
                  addi         t3, s9, 620
                  nop
                  auipc        s5, 782341
                  add          s5, s5, ra
                  add          s6, t3, a6
                  auipc        t3, 947523
                  nop
                  addi         s2, s9, 797
                  auipc        s9, 716781
                  add          s9, s5, s5
                  nop
                  add          a6, a6, t3
                  addi         s6, t2, 978
                  nop
                  nop
                  lui          a6, 896575
                  auipc        a6, 360526
                  add          s5, a0, s9
                  nop
                  addi         t2, ra, -931
                  lui          ra, 939626 #end riscv_int_numeric_corner_stream_0
                  sub          s4, t3, s1
                  xor          t5, t5, s4
                  slti         s4, a6, 1389
                  andi         s2, a7, 1903
                  xori         s11, a4, -708
                  lui          s8, 987808
                  slti         t4, a0, 455
                  srli         a6, a4, 24
                  sll          t2, t2, zero
                  nop
                  sra          s8, t0, s6
                  lui          t4, 340967
                  sub          s0, a1, a7
                  srli         s8, s0, 17
                  addi         a6, s3, 596
                  srai         sp, s8, 24
                  addi         s11, a7, 524
                  xor          s5, s4, a6
                  slt          a6, a4, s6
                  or           s9, a0, t2
                  and          s3, a1, gp
                  or           a0, s7, a1
                  sll          s10, t2, a7
                  auipc        s3, 115425
                  and          s6, s10, a1
                  andi         t6, a3, 803
                  sra          s0, s4, s2
                  srli         ra, s1, 25
                  addi         s10, s11, 386
                  srli         gp, zero, 30
                  xori         s10, a7, -1066
                  and          s4, ra, t5
                  auipc        t1, 895116
                  auipc        s4, 11209
                  sll          t2, a5, a3
                  sltiu        s0, a6, 113
                  sub          a0, zero, s3
                  sltiu        s9, t2, -1492
                  or           s9, t4, s9
                  nop
                  andi         s0, sp, -1482
                  lui          tp, 49581
                  slli         zero, a1, 19
                  xori         s3, a2, -450
                  auipc        a5, 891640
                  srai         s6, a3, 1
                  auipc        s3, 431315
                  or           a5, a1, t1
                  sub          s10, s9, a1
                  slli         t5, a4, 18
                  andi         tp, s11, 1520
                  sll          t6, s7, s10
                  srai         a0, s4, 10
                  ori          a5, ra, 1487
                  add          ra, s9, a1
                  slli         s2, t2, 13
                  xori         sp, t1, -1358
                  xor          t4, s6, s2
                  xori         zero, a6, 958
                  sltiu        t2, ra, -1318
                  ori          s3, t2, -1336
                  sra          t1, s5, a0
                  slli         s10, t4, 18
                  srli         s1, a2, 17
                  xor          s6, a5, a7
                  sra          zero, s5, a6
                  auipc        t6, 862219
                  xori         s11, s7, -1140
                  srli         a7, s2, 21
                  or           s5, t1, s6
                  and          a1, a2, s9
                  lui          t2, 192747
                  lui          s5, 885729
                  ori          s11, s7, 1736
                  addi         tp, s2, -1090
                  srl          t1, t4, t6
                  or           t4, a1, s1
                  ori          s11, a4, 1131
                  srl          t6, ra, s3
                  slti         s10, s9, 1845
                  slti         sp, a2, -1539
                  slli         tp, sp, 28
                  sltu         s6, a6, gp
                  sll          a0, t5, a7
                  slti         a5, a3, 2046
                  andi         a0, s5, -56
                  ori          t4, t6, 1508
                  slt          gp, s9, s6
                  lui          s6, 120172
                  xori         a4, s3, -346
                  srai         t0, s7, 20
                  add          s5, a5, s8
                  sra          gp, s10, a2
                  ori          t3, gp, -410
                  xori         s0, a7, 2018
                  xor          s9, a7, a4
                  xori         s3, t6, 389
                  slt          s9, s10, a0
                  srai         a7, s6, 0
                  slt          tp, t6, s6
                  and          s3, s11, t1
                  srai         a1, s8, 24
                  nop
                  sra          a6, gp, t0
                  sll          tp, t3, t3
                  slt          t5, t0, s10
                  sra          a7, a5, t5
                  lui          t4, 900526
                  and          tp, s3, tp
                  xor          a7, t5, tp
                  and          s10, s8, s3
                  lui          s9, 911279
                  and          zero, s11, s5
                  srl          t5, sp, t6
                  sltiu        s9, s4, -1086
                  sltu         s5, s6, s5
                  srli         zero, zero, 17
                  andi         s6, t1, 1430
                  sub          a0, s5, a7
                  or           s5, ra, t6
                  or           a6, a3, s0
                  ori          s8, t3, -883
                  xor          s3, t2, a1
                  srl          s4, a4, a1
                  ori          s5, t6, 486
                  xor          a4, sp, t6
                  sltiu        t2, s7, 1043
                  slli         gp, t6, 26
                  slli         t0, a4, 25
                  ori          t5, sp, -588
                  sltu         s1, s6, gp
                  srai         a0, t5, 10
                  addi         t3, a4, 1414
                  addi         a5, sp, 1465
                  sra          s0, t4, a3
                  and          t6, t4, s5
                  and          a7, a1, s4
                  sll          s2, tp, t2
                  nop
                  srli         t5, t0, 4
                  slti         t5, s5, -362
                  sub          s1, s10, gp
                  sltu         t3, t5, a5
                  sra          gp, s6, t3
                  ori          t2, a5, 1862
                  xor          a4, gp, a2
                  sll          s1, a2, s8
                  nop
                  xori         a7, s11, 878
                  sub          a6, s3, s8
                  srai         s10, s6, 19
                  auipc        t4, 814178
                  lui          s10, 876410
                  sra          s0, t1, s7
                  slti         t1, t1, -762
                  auipc        s1, 953726
                  andi         ra, s3, -1697
                  add          t2, s1, t4
                  slti         s8, t0, -1146
                  srai         t5, a1, 6
                  sra          sp, a6, sp
                  slti         tp, t4, 1111
                  srai         t2, s5, 16
                  slti         a4, t4, 1842
                  add          s1, zero, s9
                  xor          s0, t4, t2
                  slli         t6, tp, 14
                  sltiu        s8, t5, 324
                  sra          tp, tp, zero
                  ori          s10, sp, 1135
                  sltu         s2, s6, a1
                  lui          t0, 105068
                  addi         t6, s3, -438
                  ori          s4, gp, 1892
                  srl          t3, s9, s1
                  addi         s3, t2, 1734
                  slti         gp, s0, -1000
                  andi         tp, s10, -263
                  or           a6, s6, a6
                  sltu         s9, a3, a4
                  add          a0, t4, t5
                  nop
                  sll          sp, t5, t2
                  and          s8, ra, s10
                  and          t1, t4, tp
                  xor          s8, s7, gp
                  xor          a0, t2, t0
                  andi         a5, ra, -451
                  auipc        a1, 412509
                  srl          s2, s11, sp
                  srli         ra, t6, 25
                  sltu         zero, a3, a3
                  srai         s9, a2, 21
                  or           s2, a0, a6
                  sltiu        s9, sp, 1884
                  andi         s10, s8, -1041
                  slli         t0, t0, 22
                  addi         t5, s5, 1901
                  srl          a0, s4, s0
                  srai         a6, t2, 7
                  slli         s4, t4, 3
                  andi         s8, s3, -453
                  sub          s5, t1, s11
                  sub          t2, zero, a7
                  auipc        tp, 1034356
                  sra          a5, s7, s7
                  sll          s11, s8, a1
                  srli         s11, tp, 13
                  add          s2, t0, a5
                  sltu         a5, s7, s7
                  srai         t2, a6, 26
                  or           s10, s4, s3
                  sll          s9, a3, a7
                  slli         tp, s3, 9
                  srai         sp, t4, 8
                  sra          s11, s0, t4
                  sll          zero, tp, gp
                  add          a7, t0, sp
                  ori          zero, s1, 952
                  xor          ra, s7, s11
                  sra          a4, t2, t0
                  sltu         s0, a5, s8
                  andi         sp, t5, -1880
                  srl          s8, a3, s7
                  and          a1, s6, t2
                  nop
                  sub          a4, a7, s11
                  sra          ra, a3, t2
                  srai         t5, s7, 4
                  ori          a0, s4, 1672
                  slt          t2, s10, t1
                  ori          a0, s6, 1023
                  sltiu        s9, a5, 12
                  and          s10, a5, sp
                  ori          a6, s11, -698
                  slti         s6, s1, 1148
                  ori          s9, a5, -1730
                  ori          t2, s5, 1094
                  slti         s4, a2, 511
                  auipc        t5, 159070
                  add          s10, s10, s3
                  sub          s5, s7, s2
                  srli         a6, a1, 26
                  nop
                  srl          s0, t4, s0
                  srl          gp, t2, a1
                  slt          gp, s1, zero
                  nop
                  sub          s10, sp, tp
                  ori          a7, a6, 570
                  srl          s2, ra, a0
                  auipc        sp, 82737
                  ori          s4, s6, -1323
                  srli         s8, a2, 30
                  or           t6, a5, a2
                  sub          t6, sp, t2
                  and          t0, s10, s0
                  srai         ra, s4, 1
                  sll          a4, s9, t4
                  slli         t2, a2, 27
                  xori         gp, t5, -42
                  sub          s6, a2, t1
                  slli         gp, gp, 23
                  srl          s11, t4, t2
                  nop
                  and          s1, a4, t2
                  ori          s3, s6, 482
                  addi         t5, s5, 982
                  slti         s3, a4, -1757
                  xori         a7, ra, 1683
                  nop
                  slti         a5, s2, -1951
                  slt          s9, s6, s3
                  srai         s0, s3, 10
                  lui          t6, 936244
                  slli         t2, t5, 27
                  xori         s10, a1, -1045
                  srai         s4, s11, 5
                  andi         tp, s8, 656
                  ori          a0, a3, -1394
                  andi         ra, tp, 438
                  xori         t0, t1, 1663
                  and          ra, t1, s6
                  nop
                  slt          t3, a4, a7
                  sll          a7, zero, s4
                  srli         sp, t5, 28
                  and          a1, a3, a4
                  auipc        a7, 678439
                  sub          zero, t0, t0
                  addi         a7, a7, 1279
                  slti         t6, a3, -1540
                  nop
                  nop
                  nop
                  auipc        t4, 787404
                  srai         a7, s10, 27
                  slt          a0, t1, tp
                  nop
                  srai         t3, t4, 8
                  sll          s2, s7, sp
                  sra          s1, a2, s9
                  slt          s10, t6, a3
                  sub          s1, a2, t3
                  srli         t5, a0, 14
                  sltu         sp, s6, a0
                  sra          t3, a7, t1
                  lui          s8, 1020645
                  slli         a5, s4, 31
                  ori          zero, t6, -983
                  sra          s2, tp, tp
                  add          s6, s8, s7
                  srli         ra, a6, 7
                  sltu         a0, t0, a7
                  or           s11, a5, s8
                  or           t3, s9, s10
                  sub          t0, t0, a4
                  andi         s9, s6, -1196
                  addi         ra, s4, -464
                  sltu         zero, s7, s1
                  srli         a0, s2, 5
                  add          t6, s1, t3
                  srli         t4, t5, 25
                  sltiu        gp, ra, -1582
                  slli         a1, tp, 21
                  addi         tp, gp, -728
                  sltiu        s2, s9, 27
                  srai         t1, t0, 13
                  addi         gp, a7, -241
                  slt          a1, s11, s3
                  xor          zero, s1, t1
                  sra          t0, ra, s1
                  nop
                  and          s3, s0, t3
                  srai         t1, s3, 1
                  xor          t6, a1, s2
                  slli         s2, a6, 6
                  addi         s2, a2, -1372
                  nop
                  srai         ra, a0, 28
                  srai         sp, zero, 21
                  sltiu        s1, s2, -1509
                  nop
                  xor          s1, s7, s5
                  srli         ra, t3, 11
                  lui          a4, 3300
                  add          sp, sp, t6
                  ori          a0, a7, -984
                  srl          s8, zero, a7
                  nop
                  srl          a7, t6, s0
                  sltiu        s2, s3, -1800
                  slti         ra, a3, -395
                  srli         s10, ra, 21
                  ori          a1, a1, -1665
                  sltu         a6, t1, tp
                  add          s11, s11, t2
                  slt          s0, s9, s10
                  ori          t5, a7, -202
                  srai         s2, zero, 15
                  sra          t3, s9, s4
                  and          t4, t6, tp
                  slti         a6, s1, -753
                  sltu         a5, s5, a0
                  ori          s10, s9, 1342
                  xor          zero, a2, t2
                  xori         s5, s3, 371
                  lui          t5, 1033120
                  auipc        gp, 914588
                  sltiu        s10, s3, -1111
                  ori          s8, s10, 1246
                  srli         t5, t0, 31
                  sll          t2, t0, a5
                  lui          s8, 308134
                  andi         s5, t5, -354
                  andi         s6, s1, -68
                  sltu         t3, a3, s8
                  sltu         s0, s5, tp
                  sltiu        s5, sp, 139
                  sra          tp, a7, s10
                  sll          a6, s9, s2
                  nop
                  andi         s5, sp, -442
                  srl          t6, a2, gp
                  srl          s8, s9, s5
                  nop
                  srli         s11, a5, 7
                  lui          ra, 404029
                  sra          s5, tp, t4
                  slli         a4, t3, 26
                  ori          ra, s9, -1413
                  lui          s8, 408893
                  slli         ra, t4, 11
                  slt          t4, ra, sp
                  sltu         s4, s1, s3
                  xor          a5, a0, a0
                  sltu         s11, sp, gp
                  auipc        t5, 807588
                  slli         s0, s8, 12
                  auipc        a5, 660300
                  sltu         ra, s2, a7
                  slti         s11, a2, -1150
                  srl          s2, ra, a4
                  xori         s10, a4, 1617
                  xor          a5, s1, a1
                  sltu         tp, a3, t3
                  and          t2, t5, s11
                  slti         s11, a2, -51
                  srl          gp, gp, s3
                  andi         s9, ra, 616
                  nop
                  sll          a1, t0, t5
                  auipc        zero, 540248
                  sltu         zero, s4, s5
                  srli         t6, s7, 14
                  andi         tp, a6, -1212
                  sltu         s8, s2, t3
                  sll          t4, s10, t4
                  addi         s8, s7, 967
                  andi         a6, a5, -1241
                  xor          t4, a5, t2
                  nop
                  xori         s1, t3, 955
                  xor          t5, a2, s4
                  sra          t6, t1, s1
                  or           t6, a1, t0
                  slli         s4, t1, 21
                  sub          s0, a2, s0
                  sra          a5, s5, s4
                  sltiu        s5, a0, 788
                  ori          t1, zero, 602
                  and          s8, zero, a7
                  and          s8, a1, s7
                  sll          t5, sp, s1
                  auipc        a4, 208927
                  add          s3, a2, s5
                  addi         s3, a7, 1461
                  lui          sp, 550909
                  xori         a6, t6, 881
                  and          s1, t1, s6
                  andi         s6, sp, 865
                  xori         s8, ra, -1293
                  add          t4, s11, s2
                  sra          tp, a6, sp
                  and          t2, s5, s0
                  add          s5, a2, t0
                  ori          t4, a1, -1125
                  sltiu        ra, a0, -919
                  add          t3, t3, s2
                  lui          s6, 685977
                  xor          s9, s1, a6
                  sra          s10, a6, t2
                  or           a1, s1, a3
                  srli         s11, s3, 2
                  lui          s2, 342649
                  xor          s5, a6, t6
                  andi         s9, a7, -510
                  srai         s4, a0, 0
                  add          a4, s10, t3
                  nop
                  add          s8, s4, s9
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           t0, 0x80000000
                  li           a0, 0x80000000
                  li           t5, 0x977cf06e
                  li           ra, 0x0
                  li           t6, 0x0
                  li           s10, 0xffffffff
                  li           a7, 0xffffffff
                  li           a1, 0xbc0c4fe4
                  li           t3, 0x0
                  add          t6, t3, ra
                  lui          a0, 696596
                  auipc        a7, 180755
                  add          t3, s10, t5
                  nop
                  sub          s10, t5, s8
                  auipc        a1, 962947
                  auipc        t0, 434590
                  sub          t5, s10, s10
                  sub          t5, s8, a1
                  lui          a7, 133818
                  add          a0, t3, a0
                  addi         t3, t3, 1754
                  lui          t3, 1002651
                  lui          t6, 746201
                  auipc        t3, 572530
                  sub          t3, ra, a1
                  lui          s8, 808104
                  addi         t0, a7, 1218
                  sub          t6, t0, t6
                  auipc        a1, 861727
                  lui          s10, 339905
                  lui          a7, 399913
                  lui          t6, 128902
                  auipc        t3, 66043
                  nop
                  lui          s8, 416664 #end riscv_int_numeric_corner_stream_15
                  srai         ra, s8, 27
                  srl          a6, t2, a3
                  or           s5, s8, s1
                  sll          t2, t4, s3
                  lui          t2, 653121
                  lui          gp, 1024836
                  or           s10, s10, s0
                  and          a5, ra, a0
                  slt          sp, a4, t4
                  auipc        a1, 480933
                  sltu         a6, ra, s8
                  ori          a1, zero, -36
                  srli         a1, s5, 7
                  auipc        t6, 342977
                  addi         s9, s3, -1629
                  srli         a5, s3, 13
                  srl          a0, t5, a2
                  sltu         t2, a5, s2
                  auipc        a7, 527172
                  auipc        ra, 657933
                  auipc        s9, 74038
                  addi         a4, t1, 490
                  and          ra, a5, a2
                  sub          t5, s5, ra
                  slti         s1, s4, 1723
                  and          a1, a3, s8
                  srl          t1, s2, s0
                  srli         s9, a0, 1
                  ori          a5, a3, 957
                  sub          s9, s8, s11
                  andi         a6, s8, -1623
                  srai         sp, s8, 2
                  ori          s11, a5, 1162
                  sub          gp, t4, s3
                  srli         s2, a6, 11
                  sra          s5, a0, s1
                  sra          s11, gp, t0
                  ori          a4, t2, 1527
                  srl          s11, tp, t0
                  slt          a4, s1, s0
                  srl          t6, tp, s5
                  slti         s3, s0, 420
                  srli         a7, s0, 20
                  slti         s8, zero, 1974
                  srl          tp, sp, sp
                  slti         a1, s4, -1201
                  srai         t6, t0, 22
                  sll          s5, t1, ra
                  sra          ra, s8, t1
                  sra          s0, tp, a4
                  addi         a0, s11, 816
                  slli         s6, a2, 15
                  add          t6, s10, s5
                  srai         a1, s10, 24
                  auipc        t4, 122972
                  andi         t6, a7, -1370
                  sra          s2, s3, ra
                  slti         a1, a3, -2002
                  srl          t2, gp, a6
                  slti         s6, a7, -719
                  nop
                  slli         t5, a5, 19
                  add          s11, t1, a6
                  xor          a4, s1, a2
                  sltu         a7, s7, a1
                  andi         s3, zero, 737
                  lui          s5, 948147
                  sltiu        s2, t4, -1713
                  and          s6, t5, gp
                  sltu         t0, s5, s0
                  addi         t1, s2, 892
                  auipc        s1, 494217
                  auipc        gp, 864316
                  slti         t4, tp, 1184
                  xori         t6, t4, 1549
                  srai         t3, a7, 15
                  sub          a0, t2, s7
                  srli         sp, t3, 1
                  srli         s3, gp, 29
                  auipc        sp, 319250
                  ori          ra, s11, -1064
                  sra          s8, s10, a2
                  srli         a6, s10, 19
                  srli         zero, s3, 22
                  and          s6, ra, s3
                  sra          t4, a0, zero
                  lui          ra, 779188
                  sltiu        ra, s8, 1287
                  srl          s0, a7, a1
                  sltu         a7, a1, t5
                  srai         s6, a7, 27
                  sll          a0, tp, s7
                  auipc        t6, 529649
                  addi         s4, s6, -585
                  add          s0, gp, a3
                  ori          tp, a4, -472
                  and          t3, s1, t1
                  slt          gp, gp, s5
                  srli         gp, a6, 31
                  slli         s11, s5, 14
                  srli         gp, s3, 23
                  srai         gp, t1, 1
                  sra          s0, s9, s1
                  xor          a0, t5, s0
                  slli         a4, s5, 12
                  srli         t6, t6, 25
                  lui          s11, 726810
                  slli         t5, a1, 16
                  sub          tp, s9, s5
                  and          a0, a4, s11
                  or           a6, a3, s8
                  addi         t3, tp, 421
                  sltu         t2, s4, t4
                  auipc        a1, 810074
                  sltu         s5, s11, a0
                  sra          s4, s1, a7
                  sub          s9, t0, zero
                  srai         t6, s9, 22
                  srl          a1, s9, zero
                  sra          tp, s7, t4
                  sra          gp, s9, tp
                  and          a0, a2, sp
                  slt          s6, sp, ra
                  sltu         a4, a1, s0
                  sltiu        a6, s1, -129
                  sub          s4, s4, a4
                  sltiu        a6, s1, 1291
                  ori          s9, gp, -484
                  srli         a6, t3, 21
                  srai         t3, zero, 30
                  srai         zero, ra, 8
                  slti         a0, zero, -827
                  sltiu        s5, a6, -1092
                  andi         s0, s9, 1407
                  sub          sp, s4, sp
                  srl          s0, a5, a6
                  sltu         s8, s3, s10
                  nop
                  and          t4, ra, a2
                  xori         ra, t6, -1406
                  lui          gp, 683134
                  srl          t0, s6, s10
                  andi         t1, s5, 646
                  auipc        ra, 83245
                  xor          s4, t4, s8
                  nop
                  xor          s3, a4, a0
                  srli         t0, s8, 3
                  slti         s11, gp, 1622
                  sra          sp, t4, s5
                  sltiu        a5, ra, -2028
                  or           a6, s11, gp
                  nop
                  or           t3, gp, a6
                  or           a4, s6, a5
                  slt          t4, t3, a2
                  slt          s4, s7, s2
                  srai         s0, t6, 0
                  sra          s4, s8, sp
                  and          gp, s8, s5
                  nop
                  srli         a0, s2, 20
                  sra          ra, t0, tp
                  sll          gp, tp, a6
                  lui          gp, 1002973
                  add          s5, s1, a1
                  auipc        a7, 676483
                  nop
                  sub          s5, s0, a7
                  xori         a5, s5, 1935
                  or           s3, t5, s4
                  sub          zero, a4, s8
                  lui          s5, 717729
                  ori          t0, t1, 1657
                  sra          t5, gp, sp
                  addi         s11, s4, -1621
                  ori          s2, s8, -231
                  sra          ra, s11, t3
                  xori         s0, tp, -1071
                  auipc        a6, 1001172
                  slti         s6, sp, -2040
                  srai         zero, s2, 11
                  xor          s1, a6, sp
                  ori          s9, gp, -851
                  sra          s11, zero, s3
                  lui          a1, 245663
                  sltiu        s8, a1, 1558
                  nop
                  slli         s10, s11, 7
                  sub          a5, a0, s8
                  auipc        a5, 609474
                  ori          s3, t6, -327
                  srl          t5, s5, t5
                  xor          s8, s9, sp
                  sll          a1, s8, t4
                  slli         t4, t1, 21
                  xori         t3, a6, -1908
                  srai         a1, a1, 14
                  and          s0, t5, s5
                  slli         s1, s8, 25
                  sub          t0, a2, t4
                  sll          t0, s10, t0
                  andi         s0, t5, -1812
                  nop
                  sltiu        gp, t2, 1136
                  sltu         a5, t3, s5
                  add          a5, a4, s0
                  srai         s11, t1, 18
                  srli         a0, t5, 2
                  andi         s2, a4, 282
                  andi         t4, s10, 1590
                  or           ra, a3, s1
                  sltiu        t3, s5, -204
                  sltu         a5, s9, a5
                  auipc        s0, 203330
                  auipc        t1, 812707
                  xor          t0, s5, s6
                  and          sp, s5, t3
                  ori          a5, a0, -102
                  srl          a5, a1, s4
                  ori          a5, t4, 59
                  addi         tp, s6, 1475
                  and          s10, s10, s1
                  xori         ra, t1, 1208
                  srai         gp, s4, 8
                  add          s1, a5, s3
                  lui          a4, 869031
                  addi         t4, t1, -415
                  sub          t5, t2, a2
                  sra          a1, a2, a2
                  addi         t3, sp, -1505
                  or           s8, gp, a3
                  slti         s5, s3, 182
                  sra          s0, gp, s2
                  or           s2, t6, a4
                  auipc        s9, 310536
                  srai         t5, sp, 31
                  add          a6, sp, t3
                  or           s2, a7, t5
                  srai         a6, t0, 0
                  sltu         s6, t3, t5
                  sll          s2, s11, s5
                  addi         s6, s3, 1623
                  srai         tp, t2, 22
                  ori          s4, s0, -418
                  addi         t6, s11, 394
                  sltu         t2, sp, s6
                  slt          sp, t3, t3
                  lui          s4, 375019
                  sra          a7, s8, a5
                  or           s11, a2, t2
                  xor          t4, a6, a7
                  sra          s10, s3, a3
                  sll          s9, t0, a6
                  auipc        s3, 819934
                  and          s10, a7, s2
                  xor          a4, s10, t3
                  slti         s3, a4, 269
                  slti         t5, t3, 658
                  or           s11, a0, gp
                  addi         t4, t3, -93
                  xori         s5, s5, -728
                  auipc        s1, 117464
                  lui          t3, 596254
                  xor          s3, a4, s2
                  srl          zero, t5, gp
                  srl          zero, s8, s0
                  srli         t3, a0, 22
                  sub          t3, s1, t6
                  srl          s5, s11, s10
                  srli         a1, t3, 9
                  sub          t0, t3, s3
                  addi         s5, zero, -1401
                  slti         a4, s3, 1082
                  sll          s9, a6, sp
                  and          gp, s6, s9
                  auipc        s5, 600349
                  nop
                  srli         gp, zero, 4
                  sll          s3, s6, t1
                  and          s10, a1, tp
                  xori         s4, s7, -674
                  and          t2, tp, sp
                  slt          s11, a4, zero
                  and          s10, t4, a4
                  ori          s1, t1, 278
                  addi         t2, s9, -976
                  andi         s4, s9, 500
                  sub          s5, t3, s7
                  nop
                  nop
                  or           ra, s6, a2
                  ori          s2, a3, 36
                  sub          t0, a5, a3
                  xori         s2, a3, -949
                  xori         s1, s11, 1901
                  sltu         tp, t1, t0
                  slli         a1, s5, 16
                  srl          s2, a2, s8
                  sltu         ra, gp, a1
                  nop
                  or           s9, ra, a6
                  xori         a4, a0, -1565
                  slti         t0, s11, 616
                  sll          s2, a6, a6
                  sra          s2, t3, s10
                  add          t0, s5, s4
                  sltiu        s8, s11, 1285
                  srli         a0, s5, 1
                  slt          t4, s11, t2
                  lui          s2, 465327
                  nop
                  slli         s2, ra, 16
                  slti         a0, s0, 1764
                  slt          t0, a0, a2
                  sltu         s3, s5, t6
                  srai         a5, s3, 17
                  addi         t5, ra, -488
                  slli         ra, s9, 4
                  sra          t1, s11, s8
                  lui          t3, 693281
                  ori          t0, s5, -1514
                  slt          t0, s6, t2
                  ori          s11, t1, -716
                  addi         a4, s5, -26
                  lui          a7, 280363
                  ori          zero, t4, -1208
                  add          t2, s0, a3
                  xor          gp, s3, a0
                  ori          s3, gp, 1404
                  xori         s11, s4, 1893
                  andi         s8, a2, 1464
                  or           tp, s6, zero
                  slti         s2, t5, -552
                  lui          t3, 73937
                  sub          a1, a3, ra
                  slt          s11, s7, s2
                  or           t3, s6, t4
                  sltu         s9, sp, a6
                  xori         a6, a2, 953
                  xor          s6, sp, s3
                  sltiu        t2, a2, -1989
                  nop
                  slt          t0, t0, gp
                  sll          gp, t6, s3
                  xori         s0, s6, -88
                  srli         a5, tp, 30
                  add          s6, t1, a4
                  slli         s10, s3, 2
                  xori         s5, s0, 1848
                  xori         s9, t5, 1646
                  slt          s8, t6, s11
                  sltu         a1, t5, t4
                  slt          a5, t0, gp
                  sll          tp, ra, s3
                  slli         s1, t1, 27
                  add          t1, a4, t3
                  lui          zero, 401006
                  slt          s9, a6, s1
                  or           a1, s10, gp
                  slti         s2, a1, -483
                  sra          gp, a0, t5
                  srli         t4, s9, 12
                  slti         s11, t3, 837
                  add          t1, a2, t3
                  slti         s1, s4, 879
                  sub          t5, a3, s3
                  xor          t4, t1, s3
                  slti         gp, a7, 1162
                  slt          t0, s1, zero
                  sltiu        a0, a2, -1087
                  xori         a4, s3, 708
                  slt          s1, a1, a5
                  srl          s3, t0, t3
                  xori         t1, s8, -1508
                  sltu         a6, a4, a1
                  and          a1, s10, a3
                  slti         t6, s7, 1025
                  ori          s9, s3, -797
                  nop
                  nop
                  srl          t2, t3, a2
                  andi         t6, s6, 289
                  xor          s9, a7, s6
                  or           a4, s1, t3
                  slt          s3, ra, tp
                  xor          ra, s2, t4
                  slti         t6, a1, -331
                  and          a1, t6, t0
                  sll          t2, s11, a7
                  slli         s2, t3, 30
                  andi         s4, tp, 643
                  sltu         s11, a2, s9
                  slli         zero, a5, 23
                  ori          s9, s10, -37
                  slli         a0, a0, 31
                  sltu         ra, a7, t5
                  slti         a7, s6, 1766
                  slti         s1, ra, -2001
                  xor          ra, s8, a1
                  auipc        a1, 871437
                  slt          a4, s10, t1
                  slti         tp, s5, -34
                  srl          tp, a7, s3
                  sltiu        a7, t3, -1937
                  lui          t4, 883752
                  xor          t6, s9, tp
                  lui          s8, 204225
                  slli         gp, t2, 10
                  andi         gp, t4, -1093
                  srl          s4, zero, t5
                  sra          a0, a0, t2
                  xor          s4, s10, a1
                  srli         s9, t5, 6
                  srai         sp, tp, 12
                  ori          tp, a2, 912
                  srai         s11, s9, 0
                  ori          s6, s10, -1535
                  sltu         sp, s7, s2
                  nop
                  slt          s0, a2, t0
                  slt          s2, s9, s7
                  xor          t2, ra, t5
                  and          ra, tp, s0
                  xori         s11, s4, -836
                  slli         t4, s3, 24
                  xor          t2, s7, a4
                  add          t1, t0, s1
                  slti         t6, s0, 540
                  srai         sp, a7, 12
                  addi         zero, s3, 1364
                  xor          a4, ra, ra
                  nop
                  slli         ra, t2, 23
                  addi         sp, a2, -1222
                  xori         tp, zero, 830
                  slli         s11, s8, 29
                  slt          t6, s9, gp
                  slli         a1, s9, 2
                  srai         t1, s1, 13
                  srl          a0, s0, zero
                  ori          t1, a3, -641
                  and          s6, sp, s4
                  slli         tp, a0, 19
                  sltiu        gp, a7, 1278
                  lui          s6, 222639
                  ori          tp, s0, -1634
                  sll          t4, a4, t3
                  auipc        t0, 936571
                  srai         s2, s5, 8
                  slti         s11, a6, 14
                  lui          t2, 460547
                  ori          s5, s0, 1238
                  srl          a4, a5, t4
                  srl          t3, a2, a5
                  or           tp, t0, s3
                  lui          t1, 412166
                  nop
                  slt          a7, s0, a7
                  slt          sp, s5, ra
                  sra          t0, s5, s4
                  nop
                  srli         s4, s7, 11
                  srl          t0, s11, a3
                  add          s1, s1, s4
                  and          t6, a0, s0
                  or           s3, a1, t1
                  xor          sp, a1, t3
                  slti         sp, gp, -1460
                  sub          a5, t3, s1
                  srl          zero, s2, s8
                  srai         s0, a3, 4
                  or           t4, sp, s3
                  addi         s0, a7, -1898
                  slt          s5, s0, a0
                  sltiu        s10, s8, 904
                  slli         a0, t5, 30
                  xor          a5, s3, a6
                  srl          t6, s0, gp
                  sll          t0, a7, s4
                  andi         t4, tp, -986
                  xori         sp, t2, 1078
                  slt          a0, a3, ra
                  xor          a4, s5, t4
                  or           s4, s8, ra
                  srli         ra, a1, 16
                  xori         s9, s8, -746
                  lui          t4, 333476
                  sra          gp, t2, a4
                  slti         s6, s10, -32
                  srai         zero, s10, 0
                  sll          s4, t2, ra
                  slli         t2, s5, 10
                  slt          t2, a7, a4
                  addi         a5, s9, -390
                  sltu         s8, s1, zero
                  add          s1, s6, a3
                  srl          a0, s9, ra
                  or           s11, s6, ra
                  nop
                  sltu         gp, s0, s5
                  srli         a6, s6, 23
                  addi         a5, a2, 1101
                  sll          a1, a0, s5
                  srl          s0, s5, s8
                  or           ra, s4, a0
                  sra          t0, tp, a2
                  addi         s1, a4, -1885
                  addi         t4, sp, -1178
                  auipc        a1, 38600
                  srl          s4, s1, s11
                  lui          s8, 868185
                  srl          zero, s2, s2
                  sll          s6, t6, s7
                  slli         s6, s4, 14
                  and          a6, t5, t0
                  or           s5, a7, s10
                  or           sp, tp, a7
                  lui          t4, 411252
                  slli         s5, s10, 29
                  ori          a6, ra, -485
                  slli         s10, t1, 9
                  sll          t2, s8, t1
                  addi         gp, t6, 1759
                  sll          s9, t4, a1
                  sub          s9, t5, s9
                  sll          a7, t2, s11
                  and          a1, a3, s11
                  andi         a1, a6, -1851
                  xori         tp, a5, -48
                  sltu         t0, s7, tp
                  srl          s2, a3, s11
                  auipc        s4, 452641
                  and          t4, a2, t4
                  xor          t3, s4, t6
                  lui          s0, 858920
                  andi         t3, a1, -1988
                  slti         s11, s2, -1332
                  addi         a0, s1, -839
                  add          s11, t1, a2
                  slti         zero, a6, -673
                  nop
                  andi         s3, a0, 159
                  auipc        s6, 280767
                  slli         gp, s10, 6
                  ori          a4, t6, 520
                  sltiu        s11, a4, -303
                  srl          t4, a6, a0
                  nop
                  slli         s1, a1, 15
                  add          s6, t6, s0
                  xori         ra, s11, 17
                  sub          s3, s5, a4
                  slti         s10, t5, -1262
                  xori         s0, a3, 1779
                  sub          a6, a2, a2
                  xori         ra, a3, 428
                  sra          s3, tp, s5
                  add          s11, t2, s6
                  srli         s6, ra, 24
                  and          ra, a5, s5
                  sltiu        t3, s2, -856
                  srai         s8, a0, 6
                  srli         a5, t4, 26
                  srai         s9, a0, 16
                  srai         gp, t3, 16
                  sltu         ra, a6, zero
                  auipc        t2, 598817
                  and          a5, sp, t0
                  srai         sp, s9, 11
                  lui          a0, 614704
                  sra          s3, a4, ra
                  sll          ra, t6, t0
                  srl          s8, zero, tp
                  srai         a0, t4, 14
                  srai         gp, t2, 22
                  addi         s5, a4, 1008
                  addi         a7, s5, 1723
                  sltu         s8, a2, s7
                  ori          s1, s5, 772
                  auipc        s4, 396273
                  srl          s6, zero, t3
                  sub          a1, s4, s11
                  ori          zero, s0, 549
                  sltiu        tp, a5, 1969
                  sll          s3, s6, t3
                  addi         ra, tp, 21
                  lui          s0, 869452
                  ori          t1, s9, 1355
                  srli         sp, t3, 14
                  srli         sp, t3, 11
                  sub          s3, s7, tp
                  srli         s10, s5, 4
                  sltu         t3, s1, t3
                  srli         a7, a4, 11
                  ori          s11, a6, -1043
                  srai         s9, t1, 26
                  slli         a5, a2, 5
                  ori          t5, s9, 420
                  srli         a7, s9, 18
                  nop
                  slti         s10, gp, -947
                  slt          s8, a6, t5
                  sltu         s3, s8, t2
                  addi         t1, a3, 1300
                  add          t6, s8, zero
                  ori          s6, a7, -917
                  sra          gp, t6, a1
                  and          a4, a4, s4
                  sltiu        t2, sp, -647
                  add          t4, a7, a6
                  xor          s0, t6, t1
                  sra          s4, a7, s5
                  sltu         s0, s2, zero
                  xori         t5, t5, -1657
                  xori         zero, t3, -1719
                  ori          s3, s5, 292
                  andi         s1, a1, -1288
                  sltiu        t0, s0, -1046
                  and          t5, tp, s6
                  srl          zero, s4, t2
                  xori         a5, a2, -611
                  andi         gp, a1, 1206
                  lui          t0, 70724
                  sra          s6, t5, s10
                  slti         s4, t1, -105
                  sltu         a4, t1, s0
                  sll          t3, s8, s10
                  srli         t0, t1, 17
                  sub          ra, a2, ra
                  xor          a7, a4, gp
                  addi         a5, a5, 1990
                  nop
                  xori         s1, s9, 1309
                  xor          t4, s7, s1
                  sltiu        s5, gp, 637
                  lui          t0, 592268
                  srli         a5, gp, 13
                  add          s2, ra, s0
                  sltu         t5, s6, s9
                  addi         s1, gp, 356
                  sll          s5, s8, gp
                  slli         s2, t3, 30
                  nop
                  srai         ra, a7, 15
                  addi         s11, s3, 1951
                  sub          a6, a2, s7
                  sll          s3, s10, s8
                  sub          a7, s1, s3
                  srai         sp, a0, 2
                  srli         s10, s8, 14
                  srl          t1, s0, s3
                  sltiu        s11, s1, 1956
                  and          s1, tp, sp
                  slt          a0, t4, s6
                  ori          t1, gp, -1890
                  xor          t5, s1, a5
                  sll          t5, a5, s8
                  nop
                  sltu         gp, s9, t2
                  add          a0, a5, zero
                  slli         t2, s3, 27
                  add          t6, s2, s4
                  addi         t0, ra, -81
                  auipc        s6, 313550
                  slli         tp, s4, 19
                  sltu         a1, gp, t4
                  sra          t0, a4, s5
                  auipc        s4, 57815
                  sub          s8, a3, t2
                  srai         a0, s3, 4
                  lui          t5, 116959
                  lui          t0, 514461
                  sra          s11, s4, a4
                  and          a4, a3, t2
                  srli         a1, a5, 14
                  xori         t6, ra, -364
                  srli         sp, t4, 6
                  srli         sp, a2, 23
                  slt          a7, a1, a3
                  andi         gp, a0, 1375
                  andi         ra, a1, -553
                  ori          s11, a2, 1225
                  sub          sp, s9, s0
                  srai         sp, s4, 1
                  srli         a1, sp, 9
                  andi         s9, t5, -636
                  xori         t0, a7, -312
                  sltiu        t0, t0, -109
                  nop
                  ori          s6, t6, 256
                  srli         sp, a0, 3
                  sub          zero, tp, gp
                  srai         t0, t0, 18
                  ori          s2, s6, 368
                  ori          t4, s5, 850
                  srli         a5, s4, 8
                  slt          t2, s2, a5
                  sltu         s10, s6, tp
                  or           a1, ra, gp
                  nop
                  or           s0, s7, zero
                  auipc        a4, 251601
                  andi         s1, s3, -1962
                  slt          s2, a0, s10
                  xori         s9, t5, -603
                  nop
                  add          a7, s10, t1
                  lui          t2, 837129
                  addi         s9, t3, 1543
                  or           a7, ra, t5
                  slti         s3, a1, -512
                  sll          a7, a2, s8
                  slt          tp, t4, t5
                  slli         s1, t6, 2
                  lui          s2, 540470
                  sltu         s9, s3, s8
                  add          gp, a4, s4
                  add          t4, tp, s3
                  sll          t1, t4, s8
                  srl          ra, s5, a4
                  xor          a6, gp, zero
                  lui          gp, 315843
                  sltiu        s9, ra, -853
                  slli         a0, a6, 28
                  slti         t4, t0, 664
                  srl          a4, a7, a1
                  srai         tp, s0, 8
                  slti         a7, s9, 1322
                  nop
                  srai         t0, s11, 14
                  xor          t6, s5, t1
                  add          s8, s11, t2
                  and          t3, a6, s7
                  sub          s4, t0, s8
                  sra          s11, s2, a4
                  or           t3, ra, t6
                  and          s10, s3, s7
                  slt          t4, t1, zero
                  slli         s10, tp, 18
                  xor          a7, sp, t0
                  auipc        s2, 226045
                  addi         t4, a2, -253
                  sltiu        a4, s2, 72
                  xori         s6, s4, -1109
                  sltiu        a7, ra, 434
                  sub          s8, a1, t6
                  sll          t2, s7, a1
                  slti         s10, a5, -1332
                  or           ra, s5, s11
                  lui          s9, 313519
                  slt          s10, s11, sp
                  sll          s1, t1, s6
                  sltu         t5, s11, t0
                  addi         gp, t2, -1989
                  andi         t6, t1, -88
                  xori         t0, s8, 1484
                  lui          a4, 739662
                  ori          zero, s3, -596
                  sltu         s2, t1, tp
                  andi         gp, t5, 1582
                  slti         t1, s8, -81
                  nop
                  sll          s10, t6, s6
                  sra          s6, tp, a4
                  addi         a1, sp, 601
                  xor          s6, s1, a1
                  srai         t2, s8, 19
                  xori         s8, s0, 795
                  sub          a5, s1, s2
                  sltu         ra, s6, a7
                  sltu         zero, ra, a2
                  sltu         t0, t1, s2
                  xor          s6, s5, s8
                  lui          t1, 886719
                  auipc        s10, 532223
                  srai         a6, s7, 23
                  sll          s11, a5, a0
                  add          a1, a7, t4
                  sub          s3, s1, s9
                  sub          t2, a3, a5
                  and          s1, a1, a2
                  add          a1, tp, tp
                  sltu         s6, s0, tp
                  sra          a4, s8, a7
                  sra          s6, a3, s4
                  sub          s5, t0, s0
                  sltu         t5, a4, zero
                  slti         t3, t1, -1230
                  and          a7, s2, t0
                  nop
                  slti         s10, ra, 1365
                  andi         s3, t1, -1931
                  srl          t2, t4, s3
                  addi         t5, t1, -952
                  srai         s4, a1, 8
                  ori          t4, t5, -1388
                  slli         zero, s0, 4
                  sll          a0, tp, t2
                  andi         t0, s4, -1158
                  slt          a6, a6, s7
                  sltu         t0, a0, a1
                  srai         zero, t6, 22
                  slti         t1, ra, -956
                  slli         a5, gp, 9
                  lui          t0, 759825
                  addi         s0, tp, 1086
                  srai         a1, gp, 6
                  srli         a6, a6, 5
                  sra          s0, s1, s9
                  auipc        s3, 663035
                  xori         t2, s2, -1050
                  and          gp, s0, t5
                  xori         s2, s10, 1958
                  nop
                  ori          a0, t6, -1231
                  srl          s10, s10, a2
                  srai         t5, a3, 7
                  sra          s1, t0, a2
                  slti         s9, s5, 1216
                  slt          s9, sp, a0
                  addi         a7, s5, -339
                  ori          a5, s6, 1486
                  xori         s11, zero, 48
                  addi         s10, t3, -1098
                  and          s3, a0, t1
                  ori          s3, ra, 135
                  srli         sp, a7, 22
                  xor          s10, s5, t6
                  add          s3, t4, a6
                  auipc        t2, 243062
                  sll          zero, a5, a5
                  lui          gp, 354565
                  auipc        s4, 500337
                  srai         s3, s3, 16
                  ori          s3, t3, -983
                  lui          t6, 1002488
                  sltu         s9, s0, s6
                  sub          a5, a6, a1
                  srl          ra, a6, s8
                  srai         s1, t6, 1
                  andi         sp, t1, -1419
                  add          ra, s2, a4
                  xori         t0, s6, 909
                  nop
                  andi         s1, sp, -1516
                  slt          zero, zero, a6
                  or           t0, a0, a2
                  sub          s9, a1, s7
                  nop
                  addi         s8, s11, 29
                  or           a1, a1, gp
                  nop
                  slli         zero, s2, 2
                  lui          s10, 239043
                  xori         s9, a2, -1154
                  xori         a6, s4, -1984
                  addi         t5, s6, -344
                  addi         a1, s11, -269
                  nop
                  and          s8, a2, t2
                  sub          s5, s3, a3
                  or           t3, t4, t1
                  add          t4, s8, t0
                  auipc        a6, 1004492
                  srai         zero, s9, 24
                  or           s2, s4, a7
                  slt          a5, a3, s1
                  xori         s11, s9, 1490
                  sub          ra, a0, s8
                  lui          a1, 768310
                  sltiu        s1, a2, 979
                  or           t4, a1, a2
                  xori         s8, t6, 1350
                  ori          a1, gp, 1424
                  slt          a4, s9, t2
                  slti         s4, s3, 624
                  srai         a5, s4, 25
                  slti         a0, gp, -1154
                  slli         a5, a5, 19
                  ori          a4, a2, -1989
                  sra          s3, s8, s6
                  add          t1, a0, a4
                  lui          s3, 484633
                  xor          t0, a2, t3
                  slti         s6, a2, 1948
                  sra          s3, t6, s8
                  and          s10, t5, t6
                  add          s5, s8, a7
                  slli         gp, sp, 8
                  andi         s6, s11, 217
                  lui          s4, 272956
                  sub          s5, s2, a4
                  sra          a7, s6, s5
                  xori         t3, s11, -1944
                  sub          a7, s5, s11
                  sltiu        t3, s10, -801
                  and          a5, a5, s5
                  nop
                  sll          s1, zero, sp
                  slli         t1, s1, 2
                  ori          gp, s8, 815
                  slt          zero, s6, a7
                  and          s5, a6, t1
                  srli         tp, s5, 24
                  auipc        a0, 539119
                  sll          s8, t1, s4
                  addi         s1, s3, -1377
                  addi         s10, a6, 1996
                  la x12, test_done
                  jalr x0, x12, 0
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
.align           2
mtvec_handler:    
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x13, x23, zero
                  csrr x11, 0x300 # MSTATUS
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 31
                  bne x11, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x11, 0x341 # MEPC
                  csrr x11, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x11, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x11, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x11, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x11, x7, ecall_handler
                  li x7, 0x1
                  beq x11, x7, instr_fault_handler
                  li x7, 0x5
                  beq x11, x7, load_fault_handler
                  li x7, 0x7
                  beq x11, x7, store_fault_handler
                  li x7, 0xc
                  beq x11, x7, pt_fault_handler
                  li x7, 0xd
                  beq x11, x7, pt_fault_handler
                  li x7, 0xf
                  beq x11, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x11, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

ecall_handler:    
                  la x11, _start
                  sw x0, 0(x11)
                  sw x1, 4(x11)
                  sw x2, 8(x11)
                  sw x3, 12(x11)
                  sw x4, 16(x11)
                  sw x5, 20(x11)
                  sw x6, 24(x11)
                  sw x7, 28(x11)
                  sw x8, 32(x11)
                  sw x9, 36(x11)
                  sw x10, 40(x11)
                  sw x11, 44(x11)
                  sw x12, 48(x11)
                  sw x13, 52(x11)
                  sw x14, 56(x11)
                  sw x15, 60(x11)
                  sw x16, 64(x11)
                  sw x17, 68(x11)
                  sw x18, 72(x11)
                  sw x19, 76(x11)
                  sw x20, 80(x11)
                  sw x21, 84(x11)
                  sw x22, 88(x11)
                  sw x23, 92(x11)
                  sw x24, 96(x11)
                  sw x25, 100(x11)
                  sw x26, 104(x11)
                  sw x27, 108(x11)
                  sw x28, 112(x11)
                  sw x29, 116(x11)
                  sw x30, 120(x11)
                  sw x31, 124(x11)
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x23, x13, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

load_fault_handler:
                  add x23, x13, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

store_fault_handler:
                  add x23, x13, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

ebreak_handler:   
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x23, x13, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

illegal_instr_handler:
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x23, x13, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x11, 0x300 # MSTATUS;
                  csrr  x11, 0x304 # MIE;
                  csrr  x11, 0x344 # MIP;
                  csrrc x11, 0x344, x11 # MIP;
                  add x23, x13, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
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
