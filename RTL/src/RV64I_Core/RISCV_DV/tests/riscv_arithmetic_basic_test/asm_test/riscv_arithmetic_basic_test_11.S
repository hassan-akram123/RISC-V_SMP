.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x14, h0_start
jalr x0, x14, 0
h0_start:
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 1
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0xe3862d93
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0xc
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x72735f2
                  li x9, 0x80000000
                  li x12, 0xd0f6bd71
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xb7a82a0a
                  li x16, 0x7
                  li x17, 0x80000000
                  li x18, 0x6
                  li x19, 0xa
                  li x20, 0x80000000
                  li x21, 0xff5979ed
                  li x22, 0xe
                  li x23, 0x0
                  li x24, 0x93a06faa
                  li x25, 0x7238166b
                  li x26, 0x4
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0xd
                  li x30, 0xdf546db6
                  li x31, 0x2bcc9211
                  la x10, user_stack_end
main:             li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s2, 0xffffffff
                  li           gp, 0xffffffff
                  li           s9, 0x16c457a4
                  li           t6, 0x1255246f
                  li           t3, 0x0
                  li           s7, 0xffffffff
                  li           s0, 0x80000000
                  li           s10, 0x66e4813b
                  li           t1, 0x0
                  sub          gp, s7, s2
                  add          gp, s9, s10
                  nop
                  addi         s10, gp, 1543
                  add          s2, t1, s8
                  lui          s2, 822837
                  addi         s7, t1, -2038
                  sub          s10, t3, s2
                  addi         t6, s2, 108
                  addi         s8, s7, -1466
                  nop
                  addi         s2, s2, -1154
                  nop
                  auipc        t3, 896384
                  sub          t3, s2, s8
                  nop
                  sub          gp, gp, gp
                  addi         t6, s8, 247
                  sub          s10, t3, gp
                  addi         t6, t6, -886
                  sub          s7, s2, s9 #end riscv_int_numeric_corner_stream_1
                  li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           s7, 0x0
                  li           tp, 0x80000000
                  li           t5, 0x0
                  li           t6, 0x80000000
                  li           s3, 0xbd0ca7dd
                  li           s10, 0xffffffff
                  li           s5, 0xc5b09cba
                  li           s1, 0xffffffff
                  li           gp, 0xe8da1a52
                  sub          s7, s1, s1
                  add          t5, t6, t5
                  lui          tp, 370632
                  auipc        s1, 953096
                  auipc        s1, 451363
                  lui          tp, 750948
                  add          tp, s5, s5
                  sub          s3, s10, s7
                  addi         s3, gp, 798
                  addi         s1, s3, -829
                  addi         s10, gp, -684
                  addi         s5, s3, 940
                  auipc        s5, 965239
                  add          s3, gp, tp
                  auipc        s1, 266957
                  sub          t2, t2, s1
                  lui          t6, 380617
                  addi         s7, s3, -1409
                  nop
                  nop #end riscv_int_numeric_corner_stream_19
                  li           s6, 0x2a9e2369 #start riscv_int_numeric_corner_stream_0
                  li           a5, 0x0
                  li           s4, 0x8df7c7d4
                  li           s11, 0x80000000
                  li           t6, 0xffffffff
                  li           s10, 0xffffffff
                  li           t3, 0xffffffff
                  li           s9, 0x0
                  li           s2, 0x80000000
                  li           t5, 0x1ec5b8cb
                  lui          s9, 818328
                  add          t3, s11, a5
                  nop
                  lui          a5, 753496
                  sub          s6, t5, s11
                  addi         s9, s11, -1583
                  addi         s4, t3, -129
                  addi         s9, t6, -1287
                  nop
                  auipc        s10, 387814
                  addi         s9, t5, -535
                  addi         t6, s2, 1142
                  auipc        s6, 103562
                  nop
                  addi         s4, a5, 1627
                  lui          s9, 839785
                  lui          s2, 109193
                  addi         s2, s11, 1989
                  nop
                  addi         s11, s10, 1552
                  lui          s2, 253075
                  addi         s9, t5, 531
                  add          t5, a5, t6
                  lui          s11, 279580
                  auipc        s10, 386583
                  lui          s2, 890399
                  add          t5, s6, s10 #end riscv_int_numeric_corner_stream_0
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           s2, 0x0
                  li           t6, 0x0
                  li           a6, 0x0
                  li           s1, 0xffffffff
                  li           t4, 0xd89ae3c6
                  li           tp, 0xffffffff
                  li           s4, 0x80000000
                  li           gp, 0xffffffff
                  li           s6, 0x0
                  auipc        s1, 372314
                  lui          s1, 998033
                  addi         s5, tp, 2032
                  add          s2, t4, t4
                  auipc        gp, 999477
                  lui          a6, 812851
                  nop
                  nop
                  sub          t6, s6, gp
                  lui          s1, 357052
                  sub          t6, tp, t6
                  auipc        t4, 1040947
                  auipc        a6, 885628
                  auipc        gp, 614443
                  addi         s4, s2, -668 #end riscv_int_numeric_corner_stream_3
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           ra, 0x822c050c
                  li           sp, 0x80000000
                  li           s1, 0xffffffff
                  li           s9, 0x80000000
                  li           t6, 0xffffffff
                  li           s11, 0xffffffff
                  li           s7, 0x0
                  li           s3, 0x0
                  li           tp, 0x51428c21
                  addi         t4, s3, -1108
                  auipc        s9, 733372
                  lui          t6, 504755
                  addi         t4, ra, 689
                  nop
                  auipc        s11, 284870
                  lui          t6, 773561
                  nop
                  lui          sp, 56054
                  add          s9, t4, s3
                  lui          s1, 121261
                  auipc        s1, 66972
                  sub          tp, s3, s1
                  lui          tp, 879278
                  sub          tp, s9, tp #end riscv_int_numeric_corner_stream_17
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           a5, 0x0
                  li           s2, 0xac7982f1
                  li           s4, 0x80000000
                  li           gp, 0xffffffff
                  li           t5, 0x0
                  li           s11, 0xc6d39e0e
                  li           t0, 0xdc22ad01
                  li           a7, 0x80000000
                  li           t1, 0x1d6eb00c
                  lui          a7, 663566
                  lui          s11, 922755
                  addi         s4, a7, 1634
                  nop
                  auipc        a7, 31421
                  add          t0, t5, gp
                  auipc        s11, 353496
                  add          s2, gp, t0
                  addi         s6, t5, -818
                  nop
                  lui          a7, 545204
                  auipc        gp, 360905
                  add          s6, a7, s6
                  addi         s6, t0, -1993
                  lui          t1, 339252
                  auipc        a5, 325747
                  lui          s2, 1023738
                  sub          t0, s4, a5
                  addi         a7, s6, -1685
                  add          s6, gp, a7
                  nop
                  nop
                  nop
                  add          t0, s6, s6
                  addi         a7, gp, -1 #end riscv_int_numeric_corner_stream_18
                  li           a3, 0x1b424640 #start riscv_int_numeric_corner_stream_16
                  li           s3, 0xffffffff
                  li           t3, 0x80000000
                  li           s9, 0x0
                  li           s0, 0x0
                  li           a6, 0x80000000
                  li           s4, 0x73b9b282
                  li           s6, 0xa4cbe0b5
                  li           s8, 0xffffffff
                  li           t1, 0x8a8bcb69
                  lui          s4, 167273
                  auipc        s9, 784119
                  auipc        a6, 305338
                  auipc        t3, 59141
                  auipc        a6, 782096
                  auipc        s9, 972315
                  sub          a3, s8, s0
                  sub          a3, s6, s4
                  auipc        s0, 83446
                  addi         s9, a6, 1432
                  sub          s0, s8, s9
                  nop
                  lui          s9, 558546
                  sub          t3, t3, s0
                  sub          s3, a3, t1
                  nop
                  sub          t1, s3, a3
                  sub          a6, s0, s9
                  sub          s9, s3, a3
                  add          s9, s9, s6
                  sub          a3, s8, s9
                  lui          t3, 1004124
                  sub          a6, s0, s6
                  add          s0, s9, s6
                  addi         s9, a6, -172 #end riscv_int_numeric_corner_stream_16
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s11, 0x13a5d5f9
                  li           s7, 0x80000000
                  li           t2, 0xa06758c2
                  li           t4, 0x80000000
                  li           t0, 0xffffffff
                  li           a6, 0x9a4fd8c4
                  li           ra, 0xa5ca088a
                  li           s6, 0x80000000
                  li           s8, 0xffffffff
                  add          s9, s8, ra
                  auipc        a6, 580186
                  addi         s6, t0, -533
                  add          s6, a6, s6
                  lui          t2, 369827
                  lui          s6, 647377
                  auipc        s8, 361581
                  addi         t4, s11, -630
                  auipc        t2, 603516
                  addi         ra, s6, -340
                  auipc        a6, 305274
                  add          s6, s11, a6
                  lui          s7, 693448
                  lui          s7, 488728
                  auipc        t2, 1006388
                  add          a6, s11, ra
                  addi         s9, s7, 1881
                  auipc        s8, 828179
                  sub          ra, a6, s8
                  nop
                  auipc        s7, 36208
                  add          s8, s7, s6
                  add          s6, ra, s6
                  add          s7, a6, t4
                  nop
                  addi         s9, t0, 389 #end riscv_int_numeric_corner_stream_9
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           t6, 0x74d41803
                  li           s1, 0x80000000
                  li           t4, 0x80000000
                  li           s6, 0x80000000
                  li           t1, 0x363ca1e3
                  li           t2, 0xffffffff
                  li           a6, 0x0
                  li           s3, 0xffffffff
                  li           t5, 0xffffffff
                  sub          t4, gp, t1
                  nop
                  lui          t2, 161477
                  nop
                  addi         s1, s6, 238
                  auipc        gp, 862386
                  addi         gp, s6, -1074
                  lui          t4, 542990
                  addi         s6, t4, -672
                  lui          t5, 74201
                  add          t2, t1, t1
                  addi         s3, s6, 235
                  sub          t6, t6, t4
                  addi         t2, t6, -1084
                  addi         t4, t2, 448
                  sub          s3, s1, t5
                  sub          a6, t6, s3
                  auipc        s6, 791702
                  add          t4, s3, a6
                  nop
                  addi         s3, s3, 1359
                  sub          gp, t2, t5
                  addi         t5, s6, 1946
                  nop
                  addi         t5, t5, -927
                  add          t2, t4, a6
                  addi         t4, gp, 1530
                  add          t4, t5, t6 #end riscv_int_numeric_corner_stream_7
                  nop
                  srai         s8, t3, 22
                  ori          a7, t4, -92
                  lui          t6, 970456
                  sra          tp, s5, s0
                  xori         t5, s2, -679
                  srai         ra, sp, 30
                  srl          t1, t5, tp
                  auipc        gp, 449667
                  nop
                  sub          a7, t5, s5
                  or           zero, gp, t3
                  addi         s9, sp, -577
                  sra          s3, ra, s8
                  sltiu        t5, a2, -502
                  xori         t2, a6, 1284
                  srl          a5, t1, t5
                  slt          a3, tp, a3
                  slt          t0, zero, a2
                  xor          t3, s6, s4
                  add          t0, ra, s5
                  srli         s2, a0, 23
                  srli         zero, s7, 11
                  srai         s11, ra, 27
                  add          t5, tp, s11
                  srai         s10, ra, 8
                  lui          t2, 586517
                  xor          a7, s5, t0
                  addi         s7, a2, -1509
                  sub          t3, s5, s11
                  sll          s2, gp, t1
                  auipc        t0, 282675
                  sll          gp, t4, s5
                  lui          t1, 556420
                  xor          s10, s6, t1
                  nop
                  xor          s2, gp, t2
                  slli         sp, t3, 2
                  nop
                  add          t5, zero, s2
                  xor          s4, a4, s1
                  or           t2, zero, s2
                  xor          t3, s1, a6
                  slt          t3, a7, t5
                  and          s0, s10, zero
                  srai         s10, t1, 11
                  ori          s5, s4, 1934
                  slli         s1, sp, 2
                  xori         zero, a7, -696
                  srli         s4, t1, 23
                  or           s3, t2, s6
                  and          t4, gp, tp
                  andi         s10, s4, 315
                  xori         a2, gp, -800
                  or           zero, t0, a3
                  auipc        t5, 481731
                  sltiu        s2, t4, -1595
                  ori          zero, t3, 1389
                  sll          a2, a5, zero
                  sltiu        s1, s11, -695
                  sra          s3, a5, t0
                  addi         a2, s5, 1559
                  sll          s5, s1, s10
                  sll          s2, a1, tp
                  slti         t6, ra, -738
                  slti         t3, s9, -933
                  sll          s8, t0, s10
                  slli         s2, a6, 29
                  slt          ra, s2, a3
                  sltiu        s2, s8, 1517
                  add          s7, s5, s8
                  sra          t2, a3, a6
                  sltiu        s8, t1, 888
                  auipc        t1, 254542
                  slt          a3, ra, s0
                  slli         s1, gp, 14
                  ori          s9, a1, 549
                  or           a5, s1, t2
                  srl          sp, a2, s9
                  lui          s11, 479250
                  or           s3, a3, a1
                  srli         t2, tp, 29
                  or           s9, a1, s9
                  sra          a3, s7, s5
                  or           s5, s3, a6
                  sltiu        t5, ra, 800
                  sra          a2, t3, sp
                  lui          s10, 349874
                  sltiu        sp, s1, -1633
                  slt          zero, t5, s8
                  srai         s11, ra, 31
                  xor          s6, zero, s3
                  srl          a5, ra, a0
                  xori         a6, t4, 1562
                  xor          s2, a0, zero
                  slli         t1, zero, 5
                  sub          a5, ra, s2
                  xori         a7, t1, -628
                  auipc        a3, 938509
                  or           s2, s3, s4
                  srai         s4, t0, 12
                  xor          s4, t2, s2
                  ori          sp, tp, 238
                  nop
                  sub          s5, zero, s10
                  slti         a2, s5, 1137
                  sra          a3, s5, t0
                  slt          sp, s2, a3
                  sra          s0, a7, s3
                  add          a3, s7, s7
                  auipc        s6, 233613
                  sltiu        a7, s7, 1783
                  sub          sp, s11, s7
                  auipc        s2, 649966
                  nop
                  sub          a2, s1, a0
                  sltu         t6, sp, s4
                  srl          t2, a4, t6
                  sltu         t4, gp, a4
                  slt          t4, s6, s9
                  auipc        s1, 269266
                  srai         s11, s1, 0
                  addi         a5, a4, -2017
                  srai         t6, a6, 21
                  sltu         a2, s5, a2
                  srai         s3, s1, 19
                  lui          s5, 768828
                  addi         a2, s10, -1880
                  xor          a5, t3, a3
                  srl          t5, t5, a1
                  slt          s2, a1, s1
                  sll          s8, s6, s4
                  sltu         t4, s8, a2
                  auipc        s1, 563682
                  sltu         a6, a6, s10
                  nop
                  sra          s5, a2, tp
                  srai         gp, a5, 13
                  auipc        a6, 724992
                  lui          a6, 784278
                  sltiu        sp, a3, 106
                  addi         s10, s0, -1498
                  sltu         s3, s8, s10
                  xori         t0, s1, 1477
                  srl          s8, a7, zero
                  sll          a2, s3, s5
                  slt          t1, s6, sp
                  sltiu        t6, gp, -132
                  xor          a2, a2, a0
                  sltu         tp, tp, a5
                  sll          zero, s5, s0
                  addi         ra, s8, 999
                  sll          gp, t6, a6
                  andi         s5, a5, -1947
                  andi         s8, t3, 1867
                  add          s7, s7, s3
                  lui          s5, 67516
                  xori         t4, s2, 541
                  or           s4, s1, a1
                  slt          s5, a0, s10
                  add          s8, s7, a4
                  sub          s9, ra, s4
                  slli         s2, sp, 23
                  lui          s2, 243626
                  sltu         t6, a7, s11
                  xor          s6, a1, t0
                  andi         a7, ra, -573
                  addi         s9, sp, 457
                  slli         t4, gp, 4
                  slli         t6, gp, 14
                  add          s9, s5, s8
                  sra          s11, t3, s3
                  or           t1, a4, t3
                  xori         a2, a4, -617
                  xor          t5, s4, s9
                  sra          ra, t0, a6
                  srl          s10, s9, a5
                  sub          a3, s8, s7
                  srai         t6, s2, 11
                  addi         t2, a7, -2001
                  or           tp, a1, s9
                  sra          t1, a1, t5
                  andi         a7, s6, -1730
                  xori         s3, t6, 1934
                  sub          s8, zero, s11
                  srli         s3, s1, 23
                  or           t4, s4, s8
                  xori         t5, t1, 767
                  sll          t4, s10, tp
                  sra          s9, gp, gp
                  slti         s7, a2, 1703
                  add          s6, s6, tp
                  addi         t4, a1, -77
                  xor          s2, a0, s1
                  xori         s6, t5, -1473
                  nop
                  sra          s7, t6, gp
                  xor          a2, s10, s6
                  slt          zero, t3, ra
                  sltu         gp, s11, s4
                  or           gp, a7, s11
                  or           t5, t4, t3
                  slli         a2, sp, 24
                  sltiu        a2, s8, 706
                  sltu         zero, s10, s5
                  lui          s0, 146326
                  andi         s2, t2, 830
                  slt          s4, t1, s3
                  sltu         s9, a5, zero
                  srli         a2, s4, 29
                  xori         a3, s6, -847
                  xor          s8, a2, gp
                  srl          t5, s7, s9
                  xor          s6, sp, s7
                  slti         s6, s6, 178
                  srli         zero, tp, 2
                  auipc        s3, 308757
                  srai         s1, s8, 13
                  or           a3, a4, t4
                  sra          s1, s11, t3
                  slt          s0, s10, a6
                  srai         t3, a4, 21
                  srai         tp, s3, 26
                  andi         t1, s10, -1118
                  ori          sp, a0, 1102
                  sltiu        s0, gp, 1210
                  add          gp, t5, s9
                  or           s8, t5, t3
                  sltu         t2, t6, sp
                  srl          s3, t3, s0
                  sub          s0, a0, a6
                  add          s4, s8, a0
                  lui          s11, 243382
                  slt          s3, s3, a7
                  add          s5, s8, s11
                  slti         sp, s5, -854
                  or           s5, a0, s5
                  slli         a2, s5, 12
                  srai         s11, gp, 23
                  xor          s4, sp, a3
                  and          s3, s9, s9
                  srai         t0, zero, 10
                  xor          s4, s3, sp
                  slt          s8, a4, ra
                  slt          t3, gp, s10
                  lui          t0, 272772
                  and          a3, a3, s2
                  lui          t2, 26796
                  srli         sp, sp, 13
                  lui          s1, 413498
                  sltiu        s10, gp, 849
                  andi         t3, a5, 1315
                  sub          s4, s9, t3
                  sltiu        t0, a5, -1396
                  add          t3, a5, zero
                  sltu         zero, t4, s6
                  srai         t6, zero, 21
                  auipc        zero, 845963
                  srli         s9, a5, 24
                  srl          s5, s3, a1
                  slt          t5, t5, t1
                  srl          a2, t6, s1
                  sltu         s6, a0, a5
                  srl          s1, sp, s6
                  srai         t6, a5, 22
                  add          s6, s7, a4
                  auipc        tp, 14866
                  sll          a7, t6, a6
                  addi         s3, a4, -432
                  sll          gp, s3, s7
                  srli         t0, t6, 20
                  slti         s7, t5, -615
                  xori         t2, s7, 210
                  sub          s11, a4, t1
                  srli         s4, s0, 3
                  srli         t5, s9, 26
                  xor          s2, gp, t3
                  xori         s3, t1, 1162
                  xor          t3, s11, a2
                  auipc        s8, 234934
                  sll          s2, a1, t2
                  srai         a3, t5, 27
                  sra          t5, a5, s8
                  xor          a5, a2, s6
                  slli         t0, s10, 28
                  slli         s3, s1, 16
                  srai         s11, s8, 31
                  nop
                  add          s7, s6, s2
                  add          t4, gp, s7
                  ori          zero, gp, -498
                  auipc        s11, 444583
                  addi         a2, a5, 137
                  add          t5, tp, s6
                  auipc        s5, 711714
                  andi         s7, s2, 782
                  xori         a3, s10, -295
                  xori         ra, t3, -600
                  auipc        s11, 260559
                  sub          s11, t4, s4
                  slti         t2, s6, -726
                  nop
                  slli         a6, s2, 21
                  slt          t4, s1, a5
                  addi         zero, s11, 1701
                  sltiu        s5, s2, -1709
                  addi         s7, s5, -211
                  lui          s6, 434724
                  auipc        a7, 89414
                  ori          t6, a4, -861
                  xori         tp, t5, -1601
                  srli         s5, s9, 2
                  sltu         s9, s9, s6
                  srai         s9, s10, 27
                  auipc        s2, 93979
                  sltu         t5, s8, s4
                  andi         tp, t5, 1718
                  add          sp, a0, s7
                  nop
                  srl          t3, s5, t5
                  sltu         s5, ra, t4
                  auipc        t0, 512087
                  sub          s3, s1, a0
                  auipc        s6, 409996
                  sltiu        s5, sp, -1120
                  xor          t4, s7, s9
                  sub          zero, s3, ra
                  srl          a5, a7, a1
                  slli         tp, s7, 12
                  andi         s7, s8, 1180
                  add          t0, t5, t2
                  lui          s1, 443018
                  sll          s10, s11, s0
                  ori          t6, t3, 137
                  sra          t6, s8, t1
                  auipc        gp, 464903
                  srli         s8, s3, 19
                  sub          t3, a6, s3
                  ori          sp, ra, -111
                  srli         s4, a2, 31
                  add          s8, s2, s2
                  and          sp, zero, s0
                  slt          s1, t4, sp
                  xori         s9, s2, 51
                  add          s2, a3, ra
                  srai         gp, s8, 16
                  sltu         s3, ra, s10
                  slt          sp, zero, s3
                  and          t3, a6, zero
                  sra          t1, a6, a3
                  ori          tp, t4, -645
                  srai         t1, a6, 5
                  or           t2, gp, a2
                  auipc        s3, 277737
                  xori         gp, gp, -515
                  addi         zero, s2, -353
                  add          zero, s0, t5
                  ori          t6, s4, -1094
                  add          zero, s3, a0
                  addi         a2, s6, -1970
                  sub          s2, s10, t0
                  nop
                  srli         t0, s7, 19
                  slli         a7, a4, 1
                  slt          t3, t0, a5
                  sra          s7, s8, s11
                  add          a5, s7, t5
                  sltiu        tp, sp, 304
                  auipc        s9, 38505
                  xor          s9, t4, s0
                  andi         s5, s5, -1172
                  xori         s5, t1, -1568
                  xor          t6, a3, s10
                  andi         t3, a3, 1825
                  xor          tp, a1, s8
                  slli         t3, s8, 8
                  slli         t6, t1, 20
                  srl          t0, a2, gp
                  and          tp, sp, a5
                  nop
                  auipc        s7, 955215
                  addi         s8, a2, -163
                  xori         s8, t5, 82
                  xor          a3, t5, t4
                  srl          s11, ra, s11
                  ori          a2, t1, -1162
                  addi         s0, s11, -959
                  sltiu        s7, s5, -731
                  srli         s11, a6, 28
                  xori         s10, t6, -739
                  sltiu        gp, s1, 288
                  add          s2, s9, s9
                  addi         a7, sp, 1180
                  srli         s10, a1, 2
                  sub          t4, a1, a2
                  or           sp, s5, s9
                  add          t6, tp, a6
                  sltiu        s0, a4, -1804
                  sll          t1, s9, s4
                  nop
                  slti         s11, s5, -149
                  lui          t6, 184779
                  lui          sp, 288077
                  andi         t4, ra, 388
                  or           s1, s8, s0
                  sltiu        gp, a4, 618
                  andi         s0, a7, -316
                  lui          a5, 542959
                  and          a3, a5, sp
                  ori          ra, s6, -1234
                  xor          t3, s2, s9
                  sltiu        s7, s11, 787
                  and          a7, t4, s4
                  lui          s1, 444111
                  srli         t2, a7, 3
                  add          zero, s8, s6
                  or           t2, ra, a2
                  or           a5, t3, t5
                  addi         s0, s1, 364
                  addi         s3, a4, 1936
                  addi         s2, zero, 1914
                  sll          a2, sp, s9
                  sub          t0, sp, a1
                  xor          t3, zero, t5
                  xor          s8, a2, a2
                  and          s11, s3, s0
                  xor          a3, t0, a2
                  or           a7, t0, t5
                  srli         t2, t3, 12
                  slt          t0, a5, a0
                  lui          s6, 182906
                  slti         gp, gp, -897
                  andi         t5, t5, -191
                  sub          sp, s6, s4
                  sltu         a3, s6, s3
                  nop
                  sltiu        ra, s9, -668
                  xor          s5, a3, gp
                  slt          zero, gp, s8
                  andi         a5, s2, -1441
                  sltiu        s9, zero, 333
                  srli         tp, a6, 28
                  sub          t6, s0, s6
                  and          s0, a7, t0
                  add          t0, s0, s0
                  and          t1, tp, a4
                  lui          a6, 598219
                  slt          a3, t6, gp
                  andi         s0, s2, -1491
                  slti         s8, zero, 1372
                  sra          t2, a7, s8
                  slli         s3, ra, 25
                  srai         t0, t1, 24
                  andi         gp, ra, 343
                  sra          gp, s10, gp
                  xor          s4, a1, gp
                  sltu         t4, s11, a7
                  sub          s5, a1, a0
                  sll          t4, a4, s5
                  slli         zero, a7, 7
                  or           t6, a1, s6
                  sub          gp, s6, s10
                  andi         a6, a4, -654
                  slti         s4, s4, -1785
                  srl          s5, a3, s6
                  sra          t6, s0, s5
                  srai         gp, s4, 0
                  addi         tp, a3, 1556
                  ori          sp, s9, -1866
                  addi         zero, ra, -134
                  addi         a7, a7, -447
                  xori         s6, a0, -437
                  slli         t1, s7, 3
                  addi         t2, s11, 2029
                  auipc        t4, 389466
                  sra          t2, t1, s10
                  slli         s4, ra, 4
                  sltiu        zero, a0, 1947
                  xori         t3, s5, 1399
                  andi         t2, ra, -361
                  slti         t1, t6, -1306
                  xor          a2, t3, t0
                  sll          a3, a3, s9
                  srl          sp, a7, gp
                  srl          t4, a0, gp
                  and          gp, zero, s10
                  ori          s10, t6, 1341
                  slt          s6, a6, a4
                  andi         s9, s2, -1801
                  sra          gp, s2, a4
                  andi         s0, t3, -1516
                  slti         s2, ra, -1556
                  sll          t1, t3, s2
                  slt          s0, a0, a0
                  addi         s9, s8, -1752
                  xori         s7, a7, -621
                  xor          t6, s7, a0
                  and          a2, ra, s7
                  addi         a7, a1, -829
                  auipc        t1, 493459
                  sltu         t4, a6, s9
                  sll          a2, ra, t5
                  add          s1, s6, s9
                  or           a7, t2, t0
                  and          s5, s3, a4
                  nop
                  srai         s2, ra, 7
                  sll          tp, s7, gp
                  add          ra, s5, s7
                  andi         t3, gp, 407
                  slt          s11, s6, a5
                  sub          t4, zero, tp
                  slli         a7, a3, 13
                  andi         s6, a3, 1806
                  nop
                  slli         s8, a3, 11
                  andi         zero, a7, -986
                  sub          s9, a5, a1
                  slli         s7, s1, 12
                  sltiu        a3, zero, -618
                  nop
                  srli         a2, t5, 20
                  and          s11, s7, t3
                  xor          t2, tp, a6
                  nop
                  addi         s11, s11, -1425
                  srai         t6, s6, 9
                  sub          a6, s4, a5
                  addi         s6, a3, -227
                  auipc        s9, 946262
                  add          t3, zero, s10
                  srai         a7, t4, 31
                  and          s1, t2, s9
                  andi         zero, s6, 898
                  add          zero, s2, t5
                  xor          s8, s11, t0
                  slti         s9, t5, -752
                  srai         s6, a7, 28
                  srl          t5, s0, t1
                  srl          zero, t5, t4
                  xori         t5, s0, -237
                  sltu         s7, s1, s9
                  sub          s4, a2, s9
                  slli         a7, s9, 10
                  or           sp, s2, t2
                  srai         s1, s3, 21
                  and          a2, a7, s3
                  sll          sp, tp, sp
                  srli         sp, t3, 1
                  andi         s0, sp, 1346
                  slt          a5, t3, s4
                  slt          s10, s3, a7
                  slti         a3, s0, -903
                  lui          a5, 396658
                  srli         sp, s3, 31
                  lui          a3, 454755
                  xor          s9, a6, ra
                  addi         s10, t1, -389
                  xor          zero, a7, t3
                  srai         sp, s8, 20
                  nop
                  and          s6, a1, a0
                  xori         zero, s6, -1106
                  lui          t0, 359867
                  addi         s3, gp, -84
                  or           s3, ra, gp
                  slti         a5, ra, 1131
                  auipc        tp, 1004447
                  srl          s8, a3, s4
                  addi         s8, a2, 282
                  andi         s2, s6, 1255
                  sra          tp, a1, s3
                  srli         t3, a5, 0
                  add          t4, s4, s8
                  slli         a2, s9, 19
                  srli         a5, a1, 19
                  xor          t4, t3, a3
                  sltiu        a2, gp, 192
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s7, 0xffffffff
                  li           sp, 0xd36827b
                  li           t3, 0x0
                  li           gp, 0x0
                  li           s4, 0x4757eb24
                  li           s6, 0x80000000
                  li           a6, 0x80000000
                  li           t4, 0x9ffa4cce
                  li           tp, 0x0
                  lui          a6, 693592
                  auipc        s6, 160469
                  lui          s6, 589290
                  auipc        a6, 670234
                  sub          s7, s7, a2
                  lui          gp, 146685
                  nop
                  nop
                  nop
                  sub          s7, a6, t3
                  nop
                  sub          sp, s4, gp
                  auipc        s6, 884899
                  add          tp, t3, a2
                  nop
                  sub          s7, tp, tp
                  add          a6, sp, s7
                  auipc        sp, 141308
                  auipc        s4, 387501
                  add          a6, a2, s7
                  sub          a2, t4, tp
                  addi         tp, gp, 1519
                  nop
                  sub          s6, sp, s7
                  addi         s4, s7, -1581
                  addi         s4, t4, 382
                  addi         t4, s4, 727
                  add          t3, t4, a6 #end riscv_int_numeric_corner_stream_5
                  lui          tp, 320016
                  lui          s9, 128535
                  andi         t6, s6, 1444
                  srai         s7, a4, 20
                  andi         s2, ra, -1750
                  sltiu        zero, a4, 494
                  srli         s5, s0, 29
                  slli         sp, s10, 23
                  slti         s7, t2, 1381
                  addi         s10, s1, -1215
                  and          t1, t6, s10
                  slli         t5, a4, 0
                  or           s10, s1, s11
                  and          s3, s1, a7
                  auipc        a7, 199155
                  srl          s11, s0, gp
                  nop
                  ori          s5, a2, -2031
                  slti         s3, t4, -590
                  and          a5, t5, gp
                  sltu         s7, a5, a5
                  srai         t4, ra, 5
                  sll          t6, a6, a5
                  slti         a6, gp, 858
                  ori          a2, s10, 1439
                  lui          t3, 844281
                  xor          s5, s2, s1
                  srai         t1, a7, 31
                  auipc        a5, 36942
                  srl          ra, t3, a3
                  sll          s5, a2, t6
                  lui          t6, 343433
                  xor          ra, a7, a0
                  andi         ra, gp, -235
                  srai         s3, t5, 11
                  sra          t6, s5, a7
                  sltiu        t1, a1, -211
                  addi         t6, a7, 1293
                  add          s10, tp, a3
                  auipc        s0, 943755
                  sra          t5, s11, a1
                  sra          s1, sp, gp
                  and          s5, a5, s1
                  xor          s0, a3, t2
                  sra          s3, t0, a7
                  slt          a3, t6, gp
                  auipc        t6, 291346
                  lui          s7, 933574
                  and          gp, t2, t6
                  ori          s8, s7, 975
                  slli         s0, a2, 11
                  sltu         t6, t0, s2
                  srl          tp, a6, s7
                  srli         a7, sp, 22
                  sra          a6, s8, s4
                  or           s8, a0, t3
                  xor          s11, zero, t5
                  srai         sp, t4, 17
                  sltu         sp, a0, s8
                  and          s7, t6, t6
                  lui          a2, 937143
                  xor          s4, zero, s5
                  add          t1, a7, s1
                  slli         s7, a7, 28
                  slt          t3, t4, s8
                  add          sp, s10, a2
                  nop
                  srli         s5, a1, 16
                  xori         ra, a1, 1047
                  andi         a2, a6, -1122
                  slt          s1, s3, a4
                  add          t5, s9, s2
                  xori         s5, s8, -122
                  xori         s6, t6, -1648
                  srai         a3, a2, 26
                  lui          gp, 760605
                  sll          ra, sp, s9
                  sll          t1, a2, s3
                  sll          sp, zero, t3
                  nop
                  xor          s9, t0, s11
                  sub          s1, t2, a2
                  nop
                  slt          zero, s5, a5
                  srl          t3, a6, s1
                  auipc        s3, 96252
                  sll          s5, s6, t0
                  srl          tp, s6, t5
                  xor          s5, a0, tp
                  slti         s1, t6, 131
                  andi         s0, t2, -1758
                  auipc        s5, 695859
                  slt          s5, s5, a3
                  sll          t0, a7, t6
                  sll          a2, sp, a1
                  srai         a3, s8, 17
                  sub          zero, a1, t6
                  and          s10, s4, a0
                  addi         s11, tp, -110
                  and          sp, s1, t4
                  sltu         a7, s5, t3
                  srl          a7, s2, s4
                  srl          s9, sp, s11
                  xor          t5, s7, s11
                  sra          s0, s10, s7
                  andi         t1, s11, -2039
                  nop
                  srl          s9, s10, a6
                  sltiu        sp, t0, -983
                  srl          t4, s8, t5
                  sltiu        sp, s9, 614
                  slli         a6, s8, 22
                  addi         a7, a3, -662
                  lui          t6, 654502
                  addi         s1, a0, -1183
                  xori         s6, a0, 1346
                  xori         a6, s4, -991
                  sltiu        tp, t4, 2000
                  lui          sp, 96942
                  sltu         zero, ra, a3
                  addi         s1, s0, -99
                  and          s2, gp, gp
                  nop
                  srli         t6, t4, 24
                  srli         s10, t4, 5
                  ori          ra, sp, -1130
                  ori          t6, a0, -909
                  xor          zero, t4, t1
                  or           zero, s2, t6
                  xori         tp, a1, 1762
                  sll          sp, s3, sp
                  ori          sp, a3, -89
                  lui          s11, 951336
                  srai         a2, t2, 8
                  slti         t0, s3, -639
                  addi         s5, t1, 865
                  ori          s9, s4, 604
                  srli         s9, a3, 15
                  auipc        ra, 244548
                  addi         s10, s8, -1183
                  xori         sp, s10, -1691
                  addi         s6, t2, -1380
                  srl          a6, s3, a6
                  sub          a6, a1, s3
                  auipc        gp, 212980
                  or           gp, gp, s8
                  sra          t1, tp, gp
                  auipc        s4, 897555
                  lui          s11, 700304
                  and          s8, t3, s3
                  xori         a3, s4, -972
                  sll          s11, t3, s5
                  xori         s0, s0, -2012
                  slti         t2, t5, 1195
                  slli         s7, a2, 15
                  sltu         s0, s1, t1
                  srli         ra, t2, 10
                  andi         a6, s8, -1014
                  srli         a7, t1, 9
                  srli         s5, a1, 24
                  sub          t2, a7, a4
                  lui          s11, 542049
                  auipc        t4, 553374
                  ori          t4, s6, 2047
                  slli         s9, a6, 15
                  or           t0, t2, tp
                  nop
                  xor          s6, a3, a3
                  xori         s4, a1, 1736
                  ori          a7, a2, -554
                  addi         t3, s4, -908
                  sll          s3, s4, sp
                  srai         sp, t3, 9
                  sll          a3, s5, s10
                  or           t1, zero, s0
                  xor          s2, s6, s11
                  slt          s4, t6, t5
                  andi         tp, t4, -1630
                  nop
                  slli         zero, s9, 6
                  sltiu        s11, a7, 1561
                  add          a5, t2, a0
                  nop
                  sltu         s6, a2, t4
                  lui          s9, 270232
                  xor          gp, a2, t6
                  xor          t5, a0, ra
                  ori          tp, s3, -292
                  sll          t5, t0, t1
                  srli         a6, gp, 2
                  lui          t3, 568915
                  sltiu        a3, a0, 2035
                  xor          s6, tp, s11
                  xor          ra, zero, gp
                  xori         s0, t1, -581
                  andi         s0, s1, 1515
                  slli         t6, a1, 17
                  sltu         s7, a6, s0
                  add          s4, s3, a0
                  sub          s7, a0, s8
                  and          s10, a3, t6
                  srli         t5, sp, 12
                  sra          ra, a4, a1
                  sra          t4, t4, s7
                  slti         s3, a1, -811
                  nop
                  srai         t6, s4, 19
                  or           t5, s4, t5
                  slli         s0, s5, 11
                  add          t1, a7, gp
                  ori          t3, a5, 1212
                  srli         t5, a7, 27
                  sub          t6, tp, t5
                  andi         t2, gp, 771
                  slt          s7, t0, s3
                  xor          s11, a2, t3
                  xor          s7, s6, zero
                  sub          sp, t5, s8
                  srai         t2, s8, 27
                  sltu         s10, a2, a3
                  or           s11, a0, t5
                  add          s8, s11, a0
                  sltu         s2, a6, a3
                  sll          s5, a5, a7
                  nop
                  srl          s6, s2, s7
                  slt          s8, s2, s8
                  and          a5, t1, t0
                  slli         a7, t2, 5
                  nop
                  slt          s4, s4, sp
                  sra          ra, t2, s2
                  andi         s0, t0, -1606
                  and          a2, zero, t4
                  andi         s5, ra, 658
                  sltu         a3, a4, a2
                  srl          t0, a2, tp
                  xor          tp, s2, t4
                  srli         t5, t3, 4
                  sltiu        a5, a2, 1696
                  addi         s4, a6, -407
                  nop
                  srli         s11, s11, 11
                  sub          t2, a3, ra
                  slti         s10, a3, 1389
                  xori         zero, s1, -105
                  sub          s3, a3, a7
                  nop
                  and          gp, a7, t6
                  auipc        s2, 878883
                  sll          s4, tp, ra
                  srli         t6, tp, 11
                  slt          a3, a6, a2
                  sra          ra, t0, zero
                  srai         zero, a3, 13
                  auipc        zero, 305550
                  ori          s6, tp, -328
                  or           s9, t0, ra
                  addi         t1, t5, -866
                  nop
                  xori         t3, a6, 658
                  sra          t0, t2, zero
                  lui          a6, 398605
                  sltiu        s10, gp, 120
                  sltiu        s8, a1, 932
                  sub          s9, a1, s8
                  and          t3, s0, ra
                  slli         t5, s10, 19
                  srl          t4, t2, gp
                  nop
                  xori         s11, t5, 1564
                  slli         s0, t3, 10
                  srl          s6, sp, t4
                  sll          gp, t0, t3
                  srli         t3, s10, 16
                  xor          a2, a3, t1
                  xor          s4, a1, s9
                  sub          s8, s1, a4
                  nop
                  slli         a7, s8, 12
                  srl          tp, s11, s9
                  auipc        s2, 566880
                  srl          t3, s4, a1
                  or           s0, a2, s7
                  ori          t6, a1, 1106
                  ori          tp, s2, -876
                  or           s6, s9, sp
                  slli         s10, a1, 19
                  and          a3, a6, t5
                  sll          s5, s1, s0
                  andi         s2, s6, -1556
                  slti         s9, t4, -613
                  andi         t5, a2, 1343
                  sra          s8, sp, a2
                  srl          t3, tp, zero
                  sub          t0, s3, a4
                  nop
                  ori          t3, s5, 486
                  srli         t4, tp, 27
                  srl          s11, tp, gp
                  andi         ra, s5, 1781
                  slli         ra, s5, 2
                  sll          s5, t2, gp
                  slli         t4, a0, 17
                  sltu         t0, s3, sp
                  or           s2, t6, ra
                  srli         sp, s11, 1
                  slti         a5, s0, 1032
                  slli         sp, s4, 11
                  slti         s2, s7, -447
                  or           s10, s2, sp
                  andi         zero, a2, 791
                  srl          t6, a2, a4
                  sra          t4, a0, s5
                  add          s8, t3, s5
                  add          s6, t5, t3
                  lui          zero, 981000
                  xori         a3, s1, 639
                  andi         t3, t3, -1558
                  slli         t3, a5, 26
                  srli         s0, s11, 27
                  xor          t5, s7, s6
                  or           a3, s5, s11
                  srli         a3, a1, 24
                  sra          sp, gp, a1
                  sltiu        s0, t1, 1226
                  sra          gp, t5, s10
                  srai         a5, a0, 4
                  sltiu        t1, a0, 422
                  sltiu        t6, gp, 678
                  sll          s7, t3, s7
                  sltiu        a2, tp, -1583
                  add          a6, ra, a0
                  and          s2, s5, t5
                  and          a3, t1, t1
                  ori          a3, s4, -573
                  and          s5, a1, a6
                  nop
                  add          ra, gp, zero
                  or           t4, s4, s3
                  auipc        s10, 299936
                  sub          tp, s8, s5
                  sltu         a6, s2, a5
                  sra          t0, a5, t0
                  or           s10, t0, s4
                  xor          s4, a1, a5
                  or           sp, s2, s8
                  sra          gp, s10, s11
                  and          s8, s7, ra
                  slt          t4, sp, tp
                  srl          s1, a3, s6
                  addi         s8, a0, 272
                  add          a2, s5, t0
                  add          a7, zero, a7
                  slti         t3, t5, 405
                  xori         zero, s1, 2013
                  sll          s0, t1, a3
                  and          s9, t5, s11
                  lui          s4, 371586
                  sll          t0, s2, a5
                  sltiu        t1, s1, 1691
                  srl          s7, a0, s3
                  xor          s4, a7, s11
                  slli         t5, a3, 20
                  addi         t5, a7, -538
                  add          t3, s2, t0
                  lui          t3, 1028440
                  add          a3, t0, s1
                  ori          s10, s4, -2034
                  sra          t2, s8, a3
                  srl          a2, t0, a4
                  xori         t2, gp, 163
                  add          s4, a0, s2
                  or           s9, s3, t0
                  or           s2, a3, s11
                  auipc        t5, 715264
                  nop
                  slli         s1, t4, 30
                  add          s10, s2, s2
                  or           s5, s7, s8
                  addi         tp, a6, -876
                  lui          a5, 214418
                  auipc        s3, 130345
                  sltiu        a7, s5, 951
                  sll          zero, t1, s11
                  xori         a5, s2, -124
                  and          ra, s7, a3
                  srl          s0, s6, s6
                  xor          s7, t5, s5
                  sltiu        s0, s11, -221
                  srai         s0, t3, 9
                  sltu         s7, a5, s10
                  and          tp, t2, s8
                  slli         s11, t6, 3
                  srli         s7, t3, 20
                  sltiu        t2, s9, 470
                  xori         s8, t3, -254
                  xor          t4, t6, s7
                  auipc        t6, 199109
                  or           t0, a0, ra
                  ori          s2, s1, -763
                  ori          s5, a0, -1829
                  xor          a6, s3, a7
                  andi         s4, s7, 282
                  nop
                  slt          s6, s10, s6
                  sub          a6, a5, t3
                  sra          zero, s0, a2
                  slt          s0, t2, s4
                  sltu         s7, tp, t4
                  srli         s4, a3, 7
                  andi         s3, ra, 1139
                  srli         a2, sp, 7
                  srli         t3, t5, 3
                  and          s6, a2, s4
                  lui          s1, 786168
                  lui          a7, 765292
                  sra          ra, s9, a0
                  srai         s7, t0, 24
                  slt          t3, s0, s1
                  auipc        sp, 106577
                  slti         t5, a2, -99
                  srli         s11, gp, 27
                  sub          s0, s11, s9
                  srl          t4, ra, a3
                  sub          ra, ra, t3
                  slli         s7, tp, 12
                  xori         a7, s11, 1813
                  add          t0, t2, a6
                  andi         t2, a6, 1958
                  srli         gp, t1, 28
                  sra          s6, s3, s0
                  slt          s10, gp, a4
                  sll          t2, ra, s11
                  add          s4, a7, s5
                  sll          t3, s8, s0
                  srai         a3, gp, 18
                  sltiu        s8, s4, 255
                  sub          s7, t0, sp
                  auipc        zero, 927362
                  nop
                  sltiu        a5, sp, -1568
                  srai         t0, s6, 1
                  slli         t2, a5, 8
                  andi         s7, s4, 395
                  srli         s0, s2, 7
                  lui          s6, 446401
                  sltiu        s9, gp, 228
                  lui          a6, 885770
                  xor          t6, s10, a2
                  slt          a6, s8, t5
                  andi         s6, a3, 954
                  and          t3, a5, t2
                  sra          s9, s8, s11
                  add          s5, t5, tp
                  xori         s2, a5, -1122
                  sltiu        t3, gp, -1783
                  add          t1, s3, ra
                  ori          ra, zero, 1049
                  auipc        t4, 560575
                  addi         zero, s10, -1864
                  slti         t1, s11, 364
                  nop
                  nop
                  slti         a3, s2, 203
                  xori         t2, zero, -1329
                  sltiu        a3, s11, 1815
                  sub          a5, s5, a1
                  addi         s9, a0, 1115
                  lui          t1, 581480
                  add          ra, t4, gp
                  sub          s4, t1, t5
                  xor          t1, s5, t4
                  sltiu        s0, s10, -1544
                  sub          t6, s2, ra
                  srli         t6, t5, 5
                  sra          s5, s0, s0
                  sltu         a7, ra, a6
                  ori          t2, ra, -573
                  auipc        a5, 716765
                  addi         s9, gp, 754
                  slli         s11, gp, 2
                  srli         s6, gp, 4
                  ori          s6, a1, -225
                  or           s7, s1, ra
                  srli         t1, s5, 14
                  ori          s8, s0, 298
                  srli         a2, s7, 27
                  srai         t4, s10, 12
                  ori          s0, sp, 831
                  sltu         a5, s0, a7
                  and          t3, s3, s0
                  srl          s11, sp, s3
                  add          a6, s2, t3
                  ori          s11, a0, -11
                  addi         t3, s8, 1433
                  sub          t5, zero, sp
                  srli         sp, s11, 2
                  addi         s1, a2, -579
                  slli         s8, s9, 12
                  slli         t3, s0, 5
                  or           a6, a3, t5
                  slti         s3, gp, 229
                  sltu         tp, t4, s5
                  ori          s7, s8, -5
                  andi         t0, a5, 1013
                  nop
                  xor          a3, s2, t4
                  nop
                  sltu         s9, s3, t2
                  addi         t0, gp, -693
                  sltiu        t5, t1, -522
                  andi         a5, t2, 1890
                  sra          s4, s4, a4
                  addi         s7, a6, -73
                  lui          s7, 108589
                  sub          s7, s2, s5
                  srli         t0, s0, 14
                  nop
                  sub          s7, t2, s6
                  xor          s2, s4, s0
                  sub          t4, t2, t3
                  slt          t1, sp, zero
                  ori          t3, s10, -774
                  nop
                  sll          a2, t0, ra
                  andi         s11, s3, 795
                  auipc        gp, 209103
                  slt          t1, a1, t5
                  nop
                  auipc        t1, 691857
                  auipc        t0, 863890
                  addi         s6, s5, -1212
                  addi         gp, ra, 1967
                  slti         t4, a6, 1357
                  add          t4, s3, a0
                  add          s4, a2, a6
                  andi         a3, sp, -1652
                  andi         t3, t5, -479
                  xor          s3, t4, s1
                  and          s1, a3, ra
                  sra          s8, s9, a0
                  sll          t4, zero, tp
                  srl          t3, a5, s6
                  xor          s7, s7, t4
                  addi         t4, t6, -1740
                  addi         s5, a4, -1663
                  lui          a3, 547711
                  srai         t5, tp, 22
                  or           t1, a0, zero
                  slt          ra, s11, s9
                  addi         s9, s11, 1038
                  xori         s1, a6, -1767
                  andi         t1, tp, 663
                  slt          t4, s8, s4
                  sra          t5, ra, gp
                  sltiu        t1, a7, 1843
                  srai         t5, sp, 24
                  srli         gp, ra, 2
                  add          s2, s0, tp
                  and          sp, t4, a7
                  ori          s3, s9, 620
                  sltiu        s0, t4, 1340
                  andi         s4, zero, 348
                  ori          s3, a1, -1231
                  srai         t0, sp, 31
                  ori          a3, t3, 969
                  add          s3, a5, s5
                  addi         t3, t1, -622
                  srl          s4, s6, s4
                  andi         s10, s6, -1534
                  or           a5, a6, a7
                  slt          t4, a6, zero
                  slti         s8, s5, 1413
                  auipc        a2, 922559
                  sltiu        t4, zero, -1323
                  sub          tp, s4, t5
                  slli         s3, gp, 14
                  sra          t0, t0, s8
                  sub          ra, t3, s3
                  xori         s0, tp, 1079
                  sll          s9, t2, t0
                  srai         a3, a1, 25
                  srai         s1, zero, 27
                  or           s1, s6, tp
                  srl          s7, s7, s1
                  srai         s5, t0, 31
                  lui          s6, 592212
                  addi         s5, a6, 1137
                  sll          a3, s0, s6
                  slt          tp, t4, ra
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t5, 0x2e35f147
                  li           gp, 0xffffffff
                  li           s7, 0xf1096c3e
                  li           t1, 0x620ad474
                  li           tp, 0xffffffff
                  li           sp, 0xffffffff
                  li           s0, 0xffffffff
                  li           t2, 0x80000000
                  li           s8, 0x80000000
                  addi         s8, s8, 1340
                  addi         sp, t5, 2034
                  auipc        s0, 880869
                  lui          gp, 835305
                  addi         a3, s0, 1971
                  add          a3, tp, s7
                  add          gp, s7, t5
                  add          a3, s8, s7
                  lui          s7, 1044087
                  auipc        t2, 946274
                  addi         tp, s7, 558
                  sub          gp, s8, t2
                  lui          gp, 370248
                  lui          t1, 333069
                  auipc        t1, 514381
                  auipc        t1, 866934
                  add          s0, t2, tp
                  nop
                  sub          t1, s0, t5
                  sub          s8, t2, s0
                  nop
                  nop
                  addi         s7, sp, 1873 #end riscv_int_numeric_corner_stream_6
                  slli         s2, t3, 19
                  nop
                  sub          sp, gp, a5
                  xor          s1, s0, a4
                  and          t4, gp, a4
                  ori          t2, t2, 1157
                  sll          a6, sp, t4
                  srli         sp, t5, 2
                  slt          a2, t5, gp
                  srai         s2, s1, 1
                  auipc        sp, 896264
                  ori          s3, a1, -2037
                  slti         t4, t2, 1528
                  srl          gp, t5, s11
                  auipc        a3, 517170
                  sltiu        s1, a3, -998
                  slti         s0, s0, 1457
                  auipc        tp, 753930
                  andi         t5, a6, -1920
                  xor          zero, a6, s8
                  nop
                  addi         a6, a3, -1862
                  slt          a6, s2, s5
                  addi         a2, t1, -1134
                  sub          s6, a3, s0
                  lui          s1, 161221
                  and          s11, a0, t3
                  slti         a3, a6, -17
                  nop
                  srl          t1, s11, s11
                  sltu         s8, s4, a0
                  lui          s10, 998498
                  sra          a3, s11, s0
                  addi         s0, s0, 1110
                  or           t2, s3, t3
                  srai         t1, a5, 16
                  lui          t6, 689328
                  sltu         a5, s9, s3
                  xori         s11, s10, -1078
                  srl          a5, s6, tp
                  nop
                  sll          gp, s1, a6
                  sra          a3, s11, sp
                  xor          s8, s3, a7
                  xor          t2, a6, sp
                  sltu         t0, a1, t3
                  srli         s5, t5, 27
                  srai         s11, s10, 0
                  srli         gp, s8, 16
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s9, 0x83db9376
                  li           s3, 0x0
                  li           s4, 0x0
                  li           s0, 0x80000000
                  li           t3, 0x80000000
                  li           a5, 0x7c821bc2
                  li           s1, 0x0
                  li           a3, 0x80000000
                  li           gp, 0x0
                  nop
                  sub          s0, t5, s3
                  addi         s9, s1, 1465
                  auipc        a5, 944814
                  sub          t3, gp, a5
                  lui          t3, 384546
                  nop
                  add          a5, t5, s1
                  add          s1, s0, a5
                  sub          s9, t3, s3
                  addi         gp, a5, -354
                  addi         s0, gp, 384
                  auipc        s3, 291914
                  nop
                  lui          a5, 463207
                  sub          a3, s0, s4
                  lui          s3, 933817
                  addi         t5, a5, 2010
                  auipc        s3, 791420
                  add          a3, a5, a5
                  lui          s4, 776263 #end riscv_int_numeric_corner_stream_14
                  srl          s10, s3, s1
                  sub          a3, s1, t5
                  addi         s2, gp, -315
                  sra          s0, s6, tp
                  sub          sp, t5, s11
                  add          a5, t2, s2
                  sll          s9, s6, a1
                  sra          s9, s2, s6
                  and          t1, a6, a3
                  sub          s7, gp, s11
                  sltiu        s9, t0, -1239
                  sub          sp, t0, s4
                  add          a5, a3, ra
                  lui          t0, 641900
                  sra          t0, s9, s1
                  or           s7, s9, s2
                  srl          a7, a6, gp
                  xor          s8, a1, zero
                  nop
                  auipc        zero, 273995
                  sub          s7, s8, a6
                  ori          s10, a7, 781
                  srai         t2, s4, 3
                  slt          s9, a5, ra
                  add          a7, s11, s3
                  xori         s9, a1, 1824
                  xori         s11, ra, 1046
                  slt          tp, t3, gp
                  nop
                  auipc        t6, 1004489
                  srai         t1, s6, 16
                  andi         t1, zero, -1131
                  auipc        s6, 979880
                  srai         s5, s6, 14
                  sll          s3, t5, a2
                  slti         sp, s0, 267
                  sll          tp, s1, a6
                  slti         a3, zero, -515
                  xori         tp, s4, 479
                  or           a7, t3, t0
                  srli         zero, s3, 23
                  nop
                  nop
                  addi         s1, t5, -534
                  ori          s3, a6, -1031
                  andi         s5, a1, 67
                  srai         s1, a3, 23
                  xor          ra, a3, a1
                  slti         s9, s8, -1129
                  srl          a5, s10, s2
                  srl          s4, gp, a0
                  sltiu        s3, a2, -1218
                  sltu         a7, zero, s7
                  add          a5, s3, t2
                  sra          t4, s9, a6
                  xori         s10, t3, 1768
                  slt          a5, t6, sp
                  ori          s5, t6, 1751
                  ori          s11, a7, -567
                  ori          t2, a6, 1219
                  sltu         s6, s2, a7
                  or           s4, s7, s9
                  srl          tp, a6, s11
                  slli         t2, gp, 2
                  andi         s4, a5, 11
                  srai         s4, s2, 8
                  xor          s7, a1, t2
                  slli         s2, s7, 20
                  slli         s6, a0, 19
                  sra          a6, s9, t5
                  addi         s2, a1, 1911
                  xori         s8, s10, 859
                  srai         sp, ra, 17
                  lui          a3, 518385
                  srai         t5, t6, 7
                  sltu         s0, a2, s2
                  sll          s11, ra, a1
                  xori         tp, t2, -468
                  or           tp, t2, a7
                  slti         a6, a4, -1888
                  slli         a5, s3, 7
                  slt          s9, s5, a0
                  sltu         sp, t3, s6
                  or           t4, zero, s11
                  slt          s1, t6, t5
                  sltiu        t1, a6, -332
                  or           s0, gp, s10
                  sll          zero, s9, s3
                  sra          ra, t0, s4
                  andi         t2, a5, -138
                  srai         t0, a5, 25
                  sltiu        a5, s4, 1005
                  nop
                  slli         s5, a5, 27
                  ori          tp, s7, 633
                  sub          sp, t2, sp
                  sll          t2, s7, t0
                  sub          t6, s10, a0
                  sltiu        t4, a3, -566
                  auipc        ra, 488711
                  andi         tp, gp, -628
                  nop
                  xor          gp, s0, a1
                  addi         t1, tp, 387
                  sltiu        ra, t5, 1119
                  slt          tp, t5, t2
                  add          tp, a5, ra
                  slti         s4, t1, -267
                  xor          a3, s3, s7
                  srai         t0, tp, 0
                  sltu         s3, a2, t0
                  andi         t4, s1, -1881
                  add          t5, t4, s2
                  nop
                  sll          zero, s3, a4
                  slti         gp, t4, 1267
                  slli         t4, s4, 28
                  xor          a7, zero, sp
                  sltiu        s2, a3, -895
                  andi         t0, t0, -873
                  slli         a6, sp, 6
                  addi         s11, s3, -297
                  sll          s6, s2, a7
                  add          a6, s3, t5
                  srl          a7, a7, t2
                  andi         s7, s0, -756
                  srli         s0, s2, 3
                  xor          s10, a3, sp
                  slti         s0, s1, -945
                  add          t0, zero, zero
                  slt          t5, s2, a4
                  auipc        a6, 389248
                  and          s7, s8, t5
                  or           a7, t6, t0
                  and          s5, t5, s8
                  nop
                  srai         sp, s5, 2
                  srli         t6, a7, 12
                  and          t4, s7, s6
                  lui          s0, 31511
                  sub          s1, ra, a0
                  or           s9, s7, gp
                  srli         t1, s8, 28
                  slt          ra, s4, a2
                  sltiu        ra, s6, -262
                  slti         t1, a0, 1947
                  srli         t6, s2, 15
                  and          s9, a5, zero
                  slti         s5, t2, -1641
                  and          t3, s1, sp
                  slli         s11, s2, 31
                  addi         t3, s1, 676
                  srai         s0, s1, 10
                  srli         s2, a2, 26
                  add          a6, s6, ra
                  lui          t0, 491743
                  srl          s11, t3, t2
                  srli         t2, t5, 29
                  slti         s5, ra, 987
                  slli         s2, tp, 10
                  or           s0, zero, a0
                  slli         t2, s11, 13
                  srai         a3, ra, 6
                  add          s11, t2, t0
                  xori         a6, zero, -1147
                  nop
                  sll          s11, t5, s3
                  lui          s1, 116477
                  srl          s8, t2, s8
                  auipc        t0, 374336
                  sltiu        a2, s10, -334
                  sll          t1, s6, t4
                  sub          t4, tp, a3
                  sub          a7, s6, a2
                  lui          s11, 748607
                  addi         s7, a7, 314
                  sra          s0, a4, s2
                  sltu         sp, s8, s1
                  srli         a3, s4, 26
                  slt          t6, t1, t3
                  and          a3, a7, a1
                  nop
                  slli         t4, a6, 25
                  nop
                  lui          s7, 714307
                  and          a5, t5, a0
                  slli         t4, s2, 31
                  slt          s7, t3, zero
                  or           t4, s11, s3
                  sra          s3, s1, s10
                  and          t5, gp, ra
                  srl          s0, t5, a3
                  slti         sp, t1, -1188
                  lui          t6, 1002584
                  slti         t3, a0, -1475
                  nop
                  xori         s3, s7, -1347
                  addi         t5, s3, -1148
                  xori         s11, a0, -719
                  slli         a3, s8, 13
                  or           s6, t0, sp
                  sltiu        t2, a1, 1989
                  add          a6, tp, s9
                  andi         s4, s5, -705
                  srli         t1, t3, 21
                  slt          a6, t6, s9
                  sra          a7, ra, s9
                  xori         t0, a0, -564
                  sub          tp, a3, t3
                  sltu         a6, t6, a4
                  srl          zero, a7, t4
                  auipc        s10, 505862
                  slt          tp, t0, a0
                  sltiu        s5, t2, 1205
                  sltu         t2, s11, s0
                  lui          tp, 524553
                  srl          s6, t4, s10
                  nop
                  lui          a5, 852477
                  add          t2, a7, a5
                  addi         ra, s5, 77
                  add          gp, a2, tp
                  sltiu        zero, a4, 1257
                  lui          t1, 45519
                  sra          s10, t0, gp
                  slli         s1, s3, 11
                  auipc        s6, 672699
                  add          t3, t4, s1
                  andi         t3, gp, 630
                  or           s6, a3, s5
                  lui          a7, 746225
                  lui          s8, 62273
                  sra          s7, t6, s2
                  sra          s6, ra, a7
                  and          s1, gp, t3
                  xori         t0, s3, -846
                  sll          a3, a7, s8
                  add          s4, s10, s6
                  srli         t1, s0, 6
                  addi         t3, a7, -1566
                  srl          gp, gp, gp
                  xor          t2, s3, s0
                  srai         a6, a2, 27
                  sub          s9, a7, a6
                  slti         s5, t0, 945
                  srli         s4, t2, 9
                  sll          a3, gp, t4
                  srli         s8, s6, 27
                  sltiu        ra, t2, 220
                  sll          s5, a5, ra
                  or           a3, s4, a7
                  and          a7, a1, t6
                  nop
                  sub          s5, t6, a0
                  lui          t3, 702780
                  xor          s2, a7, s5
                  srl          s0, t0, s7
                  add          s11, s8, t0
                  sltiu        s6, a4, 146
                  sub          s1, s7, t1
                  slt          ra, t3, a5
                  add          sp, t1, tp
                  or           s10, s6, sp
                  sub          gp, s1, a3
                  add          a7, a6, a1
                  xor          a6, s8, t3
                  slli         t0, a7, 6
                  addi         t0, s9, -1708
                  sub          tp, s4, s1
                  srai         s4, a2, 24
                  xor          t2, a2, a5
                  slt          t6, s1, ra
                  sltiu        s7, t4, -1609
                  lui          s3, 801752
                  srl          a6, t0, s5
                  slt          a6, s9, tp
                  srli         s1, a5, 1
                  sra          s4, a2, gp
                  nop
                  or           s1, a2, s4
                  sltu         s11, s5, s1
                  add          t3, t5, tp
                  srl          t0, t6, a6
                  srl          t4, t6, a5
                  srl          s2, s9, s6
                  srli         s1, sp, 18
                  slli         t1, s1, 16
                  xori         t6, s11, 1408
                  lui          s7, 699922
                  and          t6, a3, s5
                  or           ra, s1, t2
                  sltu         t4, t4, s6
                  andi         s7, t6, 1072
                  srli         a6, a3, 31
                  lui          t0, 209014
                  slli         t3, a5, 21
                  or           a6, a0, tp
                  sub          s9, s0, tp
                  sra          a6, t0, zero
                  sll          t0, s4, s10
                  slt          a2, zero, s11
                  xori         s7, gp, -1343
                  slti         s7, a5, 1425
                  slt          s4, t3, t0
                  addi         t4, s5, 1730
                  xori         t5, t5, 93
                  or           s8, s0, a4
                  auipc        sp, 823646
                  and          a6, s5, tp
                  andi         s7, a2, -1372
                  auipc        t6, 929190
                  sra          a6, s3, sp
                  add          a7, a7, zero
                  slli         s0, t1, 10
                  add          a2, t0, a7
                  or           s3, t1, t3
                  srli         s10, s6, 31
                  andi         s5, s0, -1335
                  slt          a5, t5, ra
                  sra          t5, a5, sp
                  sub          s3, a4, s11
                  add          t3, a1, t2
                  sltiu        s6, t6, -1049
                  andi         a3, tp, 226
                  add          s5, a5, a3
                  add          t6, a5, s5
                  xor          a5, ra, t6
                  srli         s6, ra, 13
                  ori          t1, t5, 199
                  or           t1, a2, sp
                  or           s3, t5, a2
                  and          tp, a3, s9
                  sltu         a3, s5, s0
                  auipc        s2, 253494
                  srli         tp, t4, 10
                  auipc        a6, 291454
                  lui          a5, 852220
                  ori          s3, s5, 1627
                  slt          s7, s3, t5
                  and          t2, ra, a1
                  xori         s8, t2, -1052
                  sltu         a3, t4, t6
                  nop
                  lui          s7, 611470
                  xori         tp, t2, 1233
                  or           s0, a7, a2
                  li           gp, 0x5d623fcf #start riscv_int_numeric_corner_stream_13
                  li           a2, 0x9f2982a9
                  li           s10, 0xffffffff
                  li           sp, 0xffffffff
                  li           t2, 0xffffffff
                  li           s3, 0xa2c1f157
                  li           a6, 0xab98a8cf
                  li           s7, 0x0
                  li           t3, 0xffffffff
                  li           a3, 0x80000000
                  auipc        s3, 875867
                  sub          a6, s3, a2
                  lui          a6, 965388
                  lui          t2, 881490
                  addi         a2, t2, 590
                  sub          sp, gp, s3
                  nop
                  sub          a3, gp, sp
                  lui          sp, 431947
                  lui          gp, 330890
                  lui          s10, 306417
                  auipc        s3, 899747
                  nop
                  auipc        s3, 551492
                  add          a6, t3, t2
                  addi         a6, s3, 1677
                  sub          t2, s7, a3
                  addi         a3, t2, 1762
                  add          s10, t2, s3
                  addi         s3, gp, -1445
                  nop
                  lui          sp, 185756
                  addi         s3, s7, 741
                  nop #end riscv_int_numeric_corner_stream_13
                  ori          a3, s0, -1425
                  sra          t2, s4, a0
                  slti         t1, t0, -963
                  srai         s0, a1, 31
                  add          gp, t0, t2
                  and          a2, tp, s8
                  slti         s10, t5, -249
                  auipc        s7, 476548
                  ori          s3, a3, 1002
                  andi         t5, t3, 1450
                  srai         s0, a4, 14
                  sltiu        s3, t2, 348
                  ori          a2, a7, -251
                  slti         s10, s6, -1347
                  slt          s0, s5, zero
                  sltu         s2, s3, a2
                  sltiu        tp, s7, -985
                  sltiu        t2, a5, 912
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           t1, 0x80000000
                  li           sp, 0x75d79d3d
                  li           s1, 0x80000000
                  li           s0, 0xffffffff
                  li           s4, 0x0
                  li           s3, 0x71561ac
                  li           ra, 0xc04ab2e7
                  li           s6, 0x0
                  li           gp, 0xffffffff
                  add          sp, gp, t6
                  auipc        t1, 660861
                  lui          s6, 128027
                  sub          s3, s4, t6
                  nop
                  nop
                  addi         s1, sp, -855
                  lui          ra, 804338
                  auipc        t1, 59199
                  add          sp, t1, s6
                  sub          s6, sp, s3
                  addi         s3, t6, 688
                  add          s4, t1, s1
                  auipc        ra, 203723
                  sub          s4, t6, s1
                  sub          s0, s0, t1
                  lui          s6, 152170
                  sub          s3, s4, s0
                  lui          ra, 429720
                  auipc        t1, 943092
                  addi         s1, s3, 413
                  add          s6, s6, ra #end riscv_int_numeric_corner_stream_4
                  add          zero, s1, zero
                  addi         tp, t6, 919
                  slt          s8, s11, s10
                  addi         ra, s10, -564
                  ori          ra, a3, -802
                  xori         s3, zero, -1102
                  xor          t1, s6, s0
                  nop
                  or           a2, t5, s7
                  sltiu        t6, t1, -117
                  xor          zero, s10, s7
                  srli         a2, a3, 15
                  sub          gp, a2, ra
                  and          t0, t6, a0
                  andi         a3, s0, 1787
                  sll          t2, s11, a1
                  addi         s4, a1, 1267
                  sub          s3, a5, s7
                  ori          t1, zero, 1571
                  srli         t0, t4, 24
                  sra          a6, s10, a7
                  sltiu        s3, s4, 1765
                  and          t4, a4, t5
                  sra          a6, gp, t1
                  add          s3, s10, a4
                  auipc        a6, 851735
                  sll          s10, a0, s11
                  srai         t1, gp, 19
                  srli         t6, a3, 17
                  sltu         ra, a5, ra
                  srl          t2, s5, s1
                  slt          s11, s5, s9
                  srl          s8, a1, s3
                  srai         s10, s9, 1
                  slli         t1, s5, 7
                  sltiu        s6, t2, -1294
                  ori          t4, s4, 1431
                  auipc        t1, 605841
                  sltu         s1, t1, t2
                  add          a3, t4, t2
                  ori          zero, s2, 1925
                  auipc        s10, 606708
                  sltiu        s9, a3, -957
                  auipc        s6, 85290
                  slt          t0, zero, tp
                  sll          s4, a7, s0
                  lui          a2, 714370
                  auipc        ra, 472028
                  andi         s6, t2, 1435
                  xor          s10, ra, zero
                  srli         s11, t3, 28
                  andi         t3, tp, 63
                  ori          t6, s5, -1313
                  xori         s10, ra, -484
                  or           t6, a1, t5
                  or           s7, a5, a4
                  auipc        ra, 290246
                  srli         tp, t2, 21
                  auipc        s11, 795558
                  or           tp, a2, a6
                  slti         tp, s7, 99
                  sltiu        s5, a1, -292
                  slt          tp, a1, t1
                  slli         s9, a1, 24
                  sltu         sp, s8, s4
                  slt          s8, a0, gp
                  sltiu        s8, a1, 2016
                  auipc        t4, 650546
                  addi         t4, sp, -1113
                  sltiu        a6, ra, 1643
                  auipc        t2, 54040
                  auipc        sp, 5860
                  sltu         s8, a1, ra
                  addi         a5, a4, 1324
                  slti         t2, s2, 1263
                  sltiu        t5, t3, -1124
                  sra          a5, s1, a3
                  slti         s8, a7, -1075
                  auipc        s11, 483802
                  addi         t4, t6, -1277
                  sub          sp, s2, a7
                  addi         t6, tp, 63
                  sub          s5, s6, a2
                  sra          zero, a3, a4
                  srli         s5, a4, 15
                  srli         s4, s2, 27
                  add          t0, t6, s2
                  lui          zero, 62643
                  sll          s8, a0, t2
                  sltu         t0, s11, s8
                  srai         t5, s6, 13
                  sra          t5, s7, a7
                  or           s2, sp, a4
                  srl          ra, a1, s0
                  sltu         s10, a0, sp
                  or           s4, a6, s8
                  xor          ra, a0, a5
                  nop
                  ori          s10, s9, -1035
                  auipc        t0, 5064
                  and          s10, s0, s2
                  xor          s10, a6, zero
                  and          t3, s7, t6
                  xor          s8, sp, s10
                  addi         a7, a1, 561
                  nop
                  ori          s6, s11, -1300
                  auipc        gp, 529439
                  xor          s0, t0, a6
                  sra          s4, t2, t4
                  lui          s6, 676140
                  xor          s8, a5, t3
                  srai         a5, zero, 12
                  addi         s1, t5, 1870
                  addi         t2, s11, -178
                  auipc        ra, 579120
                  xori         s11, a0, -545
                  sub          s9, t6, a6
                  auipc        gp, 751243
                  sll          t5, s2, s0
                  auipc        t3, 238280
                  xori         s3, s11, 671
                  sub          s3, a2, a4
                  addi         s6, a2, -5
                  sltiu        a2, t0, -515
                  slt          sp, a1, s0
                  and          s8, t4, s11
                  ori          sp, tp, 1885
                  slli         s4, s10, 1
                  add          s10, s5, a0
                  srli         t6, t5, 1
                  slli         a5, t2, 7
                  slt          s8, sp, a7
                  andi         zero, a2, 1865
                  srai         a6, s10, 23
                  sltu         ra, s3, a2
                  xori         s5, sp, -1743
                  sub          s4, a2, ra
                  srl          a2, s7, s1
                  slt          s1, a6, s11
                  and          s9, s3, t2
                  sltiu        tp, s3, 1031
                  nop
                  auipc        s7, 642129
                  slli         t5, s3, 27
                  andi         s7, t2, -1002
                  addi         a5, t1, 927
                  srli         a3, tp, 15
                  sub          s4, s9, a2
                  auipc        s9, 1002356
                  srl          t0, s7, s1
                  sub          ra, t5, t0
                  lui          s2, 500036
                  sll          s9, s2, s0
                  ori          tp, t2, -467
                  nop
                  slt          s7, t5, s0
                  sub          s2, a6, t6
                  and          t3, s8, s3
                  lui          ra, 81153
                  nop
                  srli         t1, s6, 12
                  sll          s5, s3, t0
                  sra          a5, s6, s9
                  srli         s9, sp, 10
                  slti         s2, a6, 1419
                  srl          s8, a3, a2
                  sltiu        s3, t6, 1181
                  and          t4, s0, s10
                  slli         t5, a7, 11
                  add          a5, s7, zero
                  xor          s7, s10, s5
                  sub          s2, sp, t5
                  sll          a6, t3, s3
                  srai         t2, zero, 27
                  nop
                  xor          s3, s1, s3
                  xor          t3, ra, tp
                  xor          a2, s4, t5
                  add          s7, s1, tp
                  sll          a6, s4, gp
                  sltiu        s4, s0, 1354
                  ori          s2, s0, 1659
                  slli         t3, tp, 11
                  sra          t3, s3, t5
                  sltu         s0, s10, a2
                  and          s3, tp, s10
                  xori         t3, s2, 1357
                  ori          s1, a0, -1097
                  sltiu        t5, s6, 293
                  srl          s8, a3, s11
                  sub          a2, s4, a3
                  sll          gp, a4, t2
                  lui          a7, 120260
                  sra          s5, a0, s6
                  xori         t0, tp, 988
                  sltu         t0, a4, a1
                  auipc        t3, 138682
                  or           t5, t4, a7
                  auipc        gp, 237176
                  srl          t0, a0, s11
                  xori         t6, a5, -830
                  nop
                  xor          s1, s3, s9
                  lui          t4, 840852
                  and          tp, tp, t4
                  nop
                  and          sp, zero, ra
                  addi         s8, t6, 1169
                  or           t3, a3, s3
                  sll          s3, tp, t6
                  sltiu        t2, s4, -1431
                  nop
                  srai         a7, a0, 17
                  srl          a2, t4, s10
                  auipc        t0, 398615
                  auipc        s8, 344574
                  sll          t0, t2, a0
                  slt          a5, t3, t2
                  slt          sp, s1, s8
                  sub          s0, a4, a4
                  auipc        s1, 148606
                  slti         s2, s1, 1877
                  srli         s2, t1, 12
                  or           t1, s4, s0
                  slti         t5, a2, -1514
                  srai         tp, s1, 1
                  sub          s7, s7, s1
                  auipc        t3, 132
                  srai         t5, tp, 0
                  srai         s2, a0, 28
                  xor          s7, gp, a3
                  addi         t4, tp, -977
                  sltiu        t6, t5, -1271
                  auipc        a5, 768059
                  or           a2, a4, a1
                  add          a5, s0, a5
                  srai         s3, t3, 18
                  sltu         t1, t6, ra
                  sll          s7, ra, s2
                  sub          a7, s5, s9
                  slt          s6, t1, t1
                  ori          t0, t5, -1336
                  srai         t1, a0, 16
                  sll          a3, sp, s1
                  slli         a2, t3, 14
                  andi         s9, t1, 1818
                  sub          s7, s9, a3
                  or           a3, a2, s3
                  auipc        t1, 751724
                  sltu         t1, a4, ra
                  srli         s9, s9, 23
                  addi         s3, a1, 1181
                  sltu         s0, gp, s6
                  or           s3, s2, tp
                  srli         s10, a0, 26
                  sub          t5, zero, a2
                  and          s8, a1, t0
                  ori          gp, tp, -288
                  sltiu        s10, a0, -813
                  xor          s0, a2, a7
                  auipc        a3, 319088
                  add          s8, a7, sp
                  sltu         a5, a0, s6
                  or           ra, ra, s6
                  sra          s7, gp, s8
                  srai         s11, t6, 30
                  srai         s4, s9, 26
                  slli         t4, t3, 18
                  sub          s2, s2, s11
                  add          ra, a1, s1
                  and          s10, t6, s6
                  nop
                  slt          t2, a4, t5
                  slli         a2, a0, 13
                  and          s7, t5, t4
                  ori          a7, tp, -1739
                  auipc        t5, 886318
                  nop
                  sub          s6, s10, s4
                  xori         s9, s1, -802
                  or           a6, s3, s2
                  add          a6, s11, t6
                  sltiu        gp, t2, 1900
                  srai         a2, t0, 27
                  xori         t2, s5, 304
                  xor          s9, s9, s3
                  add          ra, s1, t2
                  xor          s10, a4, s8
                  sra          s4, a6, t6
                  srl          a7, s1, t1
                  addi         zero, s0, 645
                  xori         t6, s11, 1455
                  sltiu        a6, t4, -568
                  srl          s2, s0, s0
                  sra          tp, t3, a7
                  addi         s6, s2, -872
                  slli         s5, s3, 5
                  lui          a6, 977352
                  srl          s6, s10, t4
                  nop
                  slti         t1, a4, -126
                  add          sp, t6, t3
                  nop
                  nop
                  lui          zero, 847974
                  xori         a7, gp, -436
                  sll          a7, zero, sp
                  auipc        t0, 930408
                  sra          t1, s2, s0
                  addi         s9, tp, 245
                  addi         a2, t2, -1919
                  sltu         t3, tp, s1
                  xor          t5, s5, ra
                  xor          a3, a0, a0
                  srli         s4, t1, 12
                  nop
                  ori          s2, zero, 148
                  slli         s6, s5, 18
                  sll          t2, s4, a7
                  add          t4, t6, s10
                  ori          s0, a4, -1561
                  ori          s4, gp, 1966
                  nop
                  slt          a6, tp, a2
                  srl          a7, s3, s2
                  xori         a7, t4, -1734
                  srli         a3, s5, 0
                  sub          gp, a0, s5
                  sltu         s8, t0, a0
                  xori         t1, a2, 258
                  sll          t6, t6, a2
                  srai         s6, t4, 0
                  lui          s6, 401775
                  lui          tp, 969217
                  andi         s8, a6, 1147
                  nop
                  xori         a2, sp, 1487
                  slti         s9, s10, -1448
                  or           s5, s1, a2
                  srli         zero, s4, 13
                  xori         t6, a6, 166
                  slli         zero, t3, 22
                  nop
                  auipc        t4, 135717
                  auipc        s1, 964690
                  srai         s11, t2, 13
                  sra          s1, s1, a3
                  xori         t0, s4, -1957
                  andi         s5, s11, -640
                  sltu         t3, a6, a5
                  srai         s3, gp, 23
                  lui          a6, 59197
                  sra          s3, s2, s7
                  andi         t6, zero, -1447
                  sub          t6, s7, a2
                  sll          t1, a1, s6
                  and          s0, tp, t5
                  sub          a3, sp, a2
                  slt          s10, sp, sp
                  slli         a3, t6, 23
                  lui          zero, 153599
                  slt          s10, a7, a5
                  auipc        a6, 383280
                  sltiu        t3, t2, 494
                  sra          s11, t0, sp
                  and          gp, s0, t0
                  sub          a6, s3, a5
                  srl          s8, s9, ra
                  lui          s4, 182121
                  slti         a2, a4, -237
                  srl          t5, s1, a2
                  sll          s10, t2, a3
                  ori          s7, sp, -433
                  sub          sp, s10, a6
                  slti         t4, s1, -1162
                  xori         t4, a2, 1005
                  slli         a5, a3, 14
                  sltiu        s4, t0, 1721
                  nop
                  srli         s4, t3, 12
                  sra          sp, s10, sp
                  srl          t6, s4, s5
                  xor          a2, s4, a4
                  nop
                  slt          s4, ra, a2
                  sltu         t2, s9, s7
                  sll          a5, t4, t1
                  lui          sp, 353386
                  nop
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           s7, 0x32768117
                  li           s2, 0x2d4a2c
                  li           tp, 0x0
                  li           a2, 0x80000000
                  li           t2, 0x80000000
                  li           s6, 0x412df374
                  li           t1, 0x80000000
                  li           s9, 0xd5695dee
                  li           s11, 0x80000000
                  lui          t1, 76595
                  add          s7, s6, a2
                  nop
                  sub          a2, s7, tp
                  lui          s2, 738938
                  sub          s6, a2, s7
                  nop
                  lui          t1, 368975
                  addi         s9, t1, 1432
                  addi         t2, tp, 1935
                  lui          s3, 74107
                  nop
                  sub          s3, t1, a2
                  nop
                  add          t2, t1, tp
                  lui          s6, 697030
                  add          s9, s2, a2
                  sub          s11, t2, tp
                  nop
                  addi         s11, s7, -40
                  add          s6, s7, a2
                  addi         a2, a2, 1557
                  add          s6, s9, tp
                  auipc        tp, 902631
                  nop
                  lui          tp, 174408
                  sub          a2, s9, s6
                  nop
                  auipc        t1, 269827
                  auipc        s9, 178553 #end riscv_int_numeric_corner_stream_11
                  sltiu        a2, ra, -807
                  xori         t4, a1, -566
                  sub          s5, s1, a1
                  and          t4, s2, s3
                  addi         s11, t1, 1465
                  slti         t0, s1, -177
                  srl          t2, s4, a7
                  xor          t3, t4, a7
                  add          a3, s0, a4
                  andi         t3, ra, -1920
                  or           t6, t3, s3
                  add          a3, a6, a7
                  srl          a6, t3, t2
                  lui          ra, 997557
                  slt          t6, s7, s4
                  slti         a3, t6, -1468
                  srli         a5, s6, 25
                  sub          zero, zero, sp
                  srl          t2, a7, s4
                  lui          t5, 354728
                  slti         t0, sp, 1951
                  sub          tp, t6, a1
                  or           s7, a7, s10
                  auipc        t0, 464884
                  add          s2, t2, a7
                  slli         t0, a1, 8
                  sll          a2, zero, s8
                  sll          s10, a5, t0
                  nop
                  xor          s6, s1, a6
                  sra          t2, s4, a4
                  auipc        s1, 368653
                  sltiu        s2, zero, -1174
                  sltu         s1, a3, a2
                  xori         a2, a6, -1876
                  srl          a6, tp, t0
                  nop
                  slti         s8, t3, 487
                  sll          zero, tp, tp
                  slt          tp, s4, a7
                  xori         sp, t5, -1644
                  ori          s8, s4, -1888
                  add          s0, s10, a4
                  lui          a2, 354209
                  sll          s11, t3, a1
                  lui          s5, 328599
                  slt          a5, s3, s10
                  xori         a6, t2, 64
                  slli         t6, s1, 27
                  lui          s8, 323357
                  sra          s0, a6, s8
                  auipc        t2, 995769
                  srai         s0, t4, 30
                  srli         t4, t3, 7
                  xori         t3, s3, 1471
                  srli         s3, t4, 0
                  andi         s4, s9, -400
                  sub          t6, s3, a4
                  sra          t3, t6, t6
                  srli         a2, s0, 5
                  or           ra, s0, t5
                  ori          s7, s7, 12
                  slt          t4, tp, t3
                  slt          s8, a4, a2
                  slt          ra, t2, a1
                  addi         t6, s7, 326
                  sub          a6, a3, s9
                  srli         t0, ra, 6
                  slli         a7, ra, 12
                  slti         s7, sp, -1009
                  sub          s9, a1, t6
                  addi         s7, s6, 60
                  add          s2, t1, a4
                  nop
                  sltu         s1, t6, ra
                  srai         s6, a4, 2
                  lui          t1, 705576
                  add          ra, t4, s9
                  addi         t1, s6, 894
                  lui          zero, 329808
                  sll          gp, t4, s1
                  sltu         t6, s6, zero
                  slti         a3, ra, -1210
                  sub          t2, sp, s1
                  srli         s6, s6, 7
                  sltiu        t1, a5, 849
                  srai         a7, s3, 0
                  auipc        s9, 629215
                  or           ra, a3, s5
                  sra          t4, s9, a1
                  andi         t4, a3, 715
                  nop
                  nop
                  sra          a7, a6, a3
                  add          t0, t1, tp
                  sra          t0, ra, a7
                  sltiu        s6, s11, 592
                  auipc        s0, 815427
                  srl          t1, t2, s11
                  srli         t5, a5, 13
                  and          a7, a1, a4
                  srai         a2, a5, 23
                  srai         s3, tp, 28
                  addi         t1, a2, -1864
                  xori         s11, a6, 123
                  slt          s6, s3, a5
                  addi         a2, t1, 1002
                  andi         s10, t6, -1087
                  slli         s7, t5, 0
                  slt          s4, zero, sp
                  slt          t2, t0, ra
                  xori         s9, t5, -1738
                  slli         ra, a7, 15
                  addi         s0, t2, 183
                  add          a6, ra, s11
                  sltiu        sp, sp, -1448
                  addi         zero, s10, -1214
                  lui          t5, 203417
                  sub          sp, t1, s11
                  nop
                  sltiu        s6, s7, 360
                  andi         a6, t0, -513
                  addi         t5, s4, 306
                  sltu         s2, t5, s11
                  or           s3, s7, a6
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           s3, 0xffffffff
                  li           t2, 0x80000000
                  li           t1, 0x4e329658
                  li           tp, 0x0
                  li           a2, 0x9f95a5ef
                  li           s8, 0xa52bc9a3
                  li           sp, 0xffffffff
                  li           s5, 0x4c71a5dc
                  li           t6, 0x0
                  lui          t2, 581061
                  nop
                  auipc        s5, 389952
                  sub          t2, s5, tp
                  add          t1, t2, t2
                  auipc        t1, 1010946
                  lui          tp, 115048
                  lui          s5, 1643
                  add          sp, s8, s5
                  lui          t6, 947343
                  lui          tp, 193186
                  auipc        s5, 101757
                  auipc        t2, 708889
                  sub          sp, tp, a2
                  auipc        sp, 332177
                  nop
                  nop
                  addi         tp, s4, -1974
                  nop
                  add          tp, t2, sp #end riscv_int_numeric_corner_stream_12
                  sra          ra, t0, s2
                  slt          a7, s6, a0
                  sra          s10, s4, a2
                  and          a6, sp, tp
                  xori         t2, a2, -633
                  slt          s5, s7, a3
                  sub          t3, zero, t3
                  sll          s9, t6, s8
                  srai         t4, s2, 30
                  or           s7, gp, a3
                  or           gp, s1, ra
                  addi         s9, s0, 1364
                  auipc        ra, 986351
                  xor          s0, a4, s11
                  and          tp, t6, s5
                  andi         t3, a1, 1823
                  srai         a2, ra, 31
                  auipc        s3, 985922
                  sub          zero, s9, a2
                  sltu         sp, ra, s6
                  srl          s2, s3, a4
                  sll          s2, s7, t0
                  xori         a6, a1, 1432
                  addi         a5, s0, -1349
                  srli         s6, gp, 22
                  addi         a2, sp, -1858
                  slti         s11, a2, 1118
                  slt          s0, s9, gp
                  sltu         s2, tp, s4
                  xor          sp, t0, t1
                  srl          t6, s8, t1
                  addi         sp, gp, 271
                  sra          s4, s8, t1
                  sub          s0, a5, s7
                  srli         t2, a7, 16
                  lui          t1, 624714
                  xor          t6, t2, s5
                  slti         a2, s4, -1658
                  slt          t6, a4, s0
                  and          s9, a1, ra
                  srl          t5, a1, s5
                  sub          t0, s1, a2
                  sra          s9, a0, zero
                  xori         t1, ra, -560
                  xor          s2, s6, zero
                  addi         a6, a7, 1431
                  lui          gp, 890514
                  sltu         s1, t5, t5
                  sll          a3, t2, tp
                  slt          s11, a5, s7
                  auipc        t5, 443368
                  sra          t0, tp, tp
                  nop
                  sub          a3, a3, t4
                  slti         s5, t3, 742
                  srai         s1, a4, 1
                  sltiu        t3, s0, -1228
                  sub          t4, s6, s1
                  add          a3, s6, a2
                  xori         ra, s5, -408
                  add          t4, t0, t4
                  slti         s0, a1, 1067
                  srai         t0, ra, 7
                  xori         s8, gp, -491
                  andi         s4, s11, 937
                  auipc        a7, 973644
                  xori         a7, ra, -105
                  xor          s1, sp, zero
                  slli         a3, s0, 9
                  srl          s2, t1, a0
                  lui          zero, 566562
                  slt          t0, a7, t5
                  srai         s7, t5, 3
                  sub          s9, s5, s3
                  andi         sp, s11, 175
                  xori         s9, s9, -957
                  add          s4, a4, a6
                  ori          t6, s8, 140
                  addi         s6, s6, -1221
                  auipc        s0, 1005294
                  sltiu        s1, t1, -188
                  or           s2, t0, sp
                  xori         a2, t6, -1942
                  slti         zero, a4, -1642
                  sltu         tp, t1, t1
                  sll          s10, t0, a4
                  ori          a5, s1, -1789
                  sltu         t5, t4, s11
                  nop
                  sll          t6, sp, s1
                  slt          tp, a3, s7
                  addi         t3, a6, 1638
                  srli         t2, s10, 1
                  sra          s1, t1, s10
                  auipc        t3, 657221
                  slli         t3, s2, 24
                  srai         s5, a1, 30
                  nop
                  srai         a2, zero, 20
                  and          t5, t5, ra
                  and          s9, a6, a2
                  and          ra, ra, a6
                  add          a2, a2, t5
                  xori         s7, t5, 1359
                  and          t6, a5, s9
                  sltu         a7, a0, t6
                  srli         t4, s2, 21
                  srai         a7, zero, 25
                  sra          s2, s0, t0
                  xor          s11, a1, s4
                  slti         s2, s9, -621
                  nop
                  addi         t4, s11, 1721
                  sltiu        s4, s4, 1186
                  ori          zero, a0, -1111
                  srai         a7, a5, 17
                  and          a5, a2, zero
                  slt          t5, t4, t0
                  slli         s4, a0, 16
                  andi         sp, sp, 108
                  auipc        s8, 796730
                  sll          s9, a0, t0
                  srli         s9, s7, 14
                  xori         s5, t1, -21
                  ori          s6, a2, 2030
                  and          s1, a7, t2
                  sltu         s5, s3, t5
                  auipc        s1, 553745
                  sltiu        s9, a5, -1278
                  or           t5, ra, t5
                  sll          s9, gp, a5
                  srl          s0, s10, t2
                  add          t5, a0, s6
                  ori          s10, s2, -1508
                  ori          t4, t0, -46
                  sltiu        a5, s10, 1069
                  or           s1, a1, a0
                  ori          s5, s4, -158
                  sub          s9, s7, gp
                  slti         s8, a4, 77
                  sltiu        tp, a5, 262
                  srli         a3, s3, 25
                  or           a5, t1, sp
                  sltu         s7, a4, t1
                  sltu         s4, t4, a4
                  auipc        s3, 435904
                  auipc        s10, 771050
                  sra          s6, t3, s0
                  or           a7, s11, s0
                  slti         s2, s9, -1869
                  lui          a6, 248685
                  sltiu        gp, s8, 1557
                  ori          a6, tp, 1855
                  nop
                  auipc        t2, 980705
                  srai         s9, s0, 27
                  slti         ra, a4, -543
                  slli         s1, gp, 4
                  sltu         t0, t4, ra
                  add          s3, gp, a1
                  sltu         a3, t5, s3
                  or           s5, a2, a3
                  lui          s10, 57897
                  and          s8, t6, a5
                  sltu         s1, s8, s10
                  addi         s0, t3, -457
                  xori         s3, s4, -752
                  srl          gp, sp, s10
                  srai         zero, a3, 22
                  or           a5, a5, s3
                  lui          s11, 539753
                  sltiu        t2, sp, -742
                  sll          a5, t4, t2
                  srli         s2, s2, 19
                  sll          s11, t2, tp
                  nop
                  nop
                  slt          s10, s6, s0
                  andi         ra, t0, 35
                  nop
                  slt          s9, zero, s10
                  sltu         t5, ra, s2
                  sltu         s7, s6, a5
                  sltu         a5, zero, s6
                  and          t3, t4, ra
                  sub          zero, zero, s10
                  addi         sp, a4, 783
                  nop
                  xor          t0, s1, t6
                  sub          s8, s11, tp
                  sub          s11, a0, a7
                  slti         s6, s7, -505
                  sll          t3, s0, s3
                  slt          gp, t5, s0
                  xor          t3, a4, t3
                  srli         t6, s4, 5
                  sub          gp, a6, t1
                  lui          ra, 647943
                  xor          t2, sp, s11
                  slti         a6, a1, 1383
                  add          a5, t3, t5
                  sll          gp, s2, a0
                  ori          a2, t5, 259
                  sltiu        s0, s2, -1509
                  sltiu        t6, s2, 195
                  addi         t0, s3, 849
                  ori          s8, s6, -680
                  sll          t0, zero, a3
                  and          a3, t2, a1
                  sll          t2, s2, t4
                  srai         s9, s1, 29
                  nop
                  or           t5, zero, a5
                  addi         zero, s0, 413
                  and          t2, t5, s4
                  add          a3, s9, a0
                  andi         s10, t2, 1799
                  nop
                  sltu         gp, s3, s7
                  xori         s4, s4, -1552
                  ori          s4, s2, -33
                  xor          a2, gp, s0
                  slli         a2, s6, 1
                  auipc        t4, 929197
                  xor          s7, s1, s5
                  andi         sp, a1, -580
                  srai         s3, s5, 9
                  sub          ra, t1, s6
                  xor          a7, s9, t0
                  or           s1, s4, s6
                  sra          sp, s4, t3
                  and          a2, s2, tp
                  addi         gp, tp, -1721
                  srai         s0, t3, 12
                  lui          a7, 580910
                  andi         zero, gp, 1642
                  xori         a5, a5, 1882
                  nop
                  slli         gp, gp, 16
                  slti         ra, a2, 1887
                  and          sp, s5, t3
                  lui          t2, 239318
                  slt          a3, t0, a6
                  srli         t3, t4, 12
                  and          s3, a0, tp
                  andi         t4, zero, 229
                  xor          gp, a5, s10
                  sub          a2, gp, a4
                  srl          a6, s7, t4
                  sltiu        zero, a6, 1237
                  sll          s0, s3, s8
                  or           s10, t3, s9
                  andi         t2, a7, 777
                  xori         s1, s8, 1254
                  ori          s5, a7, -582
                  and          s6, ra, sp
                  nop
                  lui          t1, 401162
                  sltiu        s2, t4, -1253
                  srai         s7, zero, 23
                  xori         a7, a7, 1631
                  srli         t1, s10, 3
                  sra          t6, t4, a6
                  sltu         s8, t5, s10
                  lui          s10, 826539
                  sll          s7, zero, s7
                  auipc        sp, 917156
                  auipc        zero, 853126
                  xor          t4, s10, a4
                  sub          zero, s2, s3
                  auipc        s4, 338559
                  xori         t2, s1, -2042
                  srai         a5, a4, 18
                  andi         s4, ra, -1729
                  slt          s10, a6, s10
                  sra          t2, t3, a2
                  slli         s10, a0, 16
                  andi         s2, t3, 1046
                  sltu         t3, a4, t1
                  srli         ra, s5, 17
                  lui          s4, 549041
                  andi         a3, s6, 1682
                  xori         s11, s8, -1862
                  slti         s4, tp, 672
                  sub          s0, s5, s10
                  auipc        s1, 877930
                  sll          t4, t2, a6
                  sra          s1, a6, a4
                  or           s10, s7, a7
                  sll          t5, s4, gp
                  srai         s2, s10, 26
                  sltu         s1, s10, s3
                  nop
                  slt          t6, a5, a2
                  sra          s6, a3, a0
                  and          t6, a6, s2
                  sltu         s3, t3, s0
                  sll          a5, tp, t1
                  srai         s10, t4, 31
                  and          s8, t1, s2
                  srli         a7, a3, 29
                  andi         a2, t3, -1703
                  sltiu        s7, sp, 55
                  and          t3, tp, s6
                  lui          a7, 285656
                  add          s11, t1, gp
                  lui          t5, 365430
                  slli         s9, gp, 12
                  and          s1, s5, s0
                  and          a3, t5, ra
                  xor          zero, t6, t6
                  add          a7, ra, t6
                  sltiu        a6, t6, 1819
                  and          t1, s8, s8
                  slti         zero, s2, -1286
                  add          s0, a0, s5
                  srl          s4, s10, a4
                  and          a6, a1, a2
                  sll          ra, s0, sp
                  lui          ra, 891367
                  lui          s6, 71777
                  nop
                  srai         s6, t5, 5
                  nop
                  sltiu        zero, a6, -49
                  andi         t5, s6, 1718
                  slti         s5, t4, 522
                  ori          s4, s0, 1240
                  lui          s9, 663995
                  ori          t0, zero, 157
                  srli         a6, t6, 7
                  srai         s9, s7, 22
                  sub          s4, s4, s2
                  srl          s9, a4, s7
                  slli         t6, zero, 26
                  sll          t6, s7, s9
                  slli         ra, s9, 22
                  addi         t4, t3, -285
                  slti         ra, a6, -804
                  addi         s6, s3, -481
                  sub          gp, a3, a0
                  slli         a2, s8, 3
                  sltu         s2, s8, t6
                  srl          t5, t2, a2
                  ori          a2, zero, 1648
                  slt          s4, sp, t3
                  ori          t5, a4, 442
                  and          s2, s4, a2
                  sra          t4, s1, a5
                  slti         s2, gp, -390
                  sll          a5, s4, a5
                  andi         t3, sp, -1027
                  slti         s8, s5, 1739
                  srai         t4, a0, 17
                  sltiu        a7, a6, 385
                  xor          t4, s0, a0
                  slt          s6, gp, s7
                  ori          a5, a0, 118
                  srai         s6, s0, 9
                  sra          t3, tp, tp
                  lui          t2, 17349
                  xor          t1, a6, t4
                  lui          s7, 166877
                  sub          s6, t2, s3
                  ori          ra, a5, 1287
                  slt          a2, a6, s11
                  sll          s6, gp, s8
                  ori          s5, s4, 747
                  sub          t3, a3, a4
                  ori          s0, gp, -1250
                  srli         s5, a1, 16
                  sltu         s9, t0, a0
                  lui          a3, 1032638
                  sra          t6, s1, a3
                  sll          t5, s6, gp
                  andi         s11, a4, 954
                  slt          t6, s2, a0
                  sltu         zero, s11, t3
                  lui          a6, 653696
                  add          t4, sp, t1
                  srai         a6, a4, 20
                  srai         tp, ra, 25
                  lui          s3, 966056
                  sub          s5, t3, t5
                  sll          a7, s3, t1
                  srl          s2, t2, s0
                  sltiu        sp, t2, 1825
                  and          tp, s7, tp
                  auipc        s5, 231561
                  slt          s11, gp, t3
                  sra          s5, sp, a3
                  add          s11, a0, a7
                  sub          s8, s2, a0
                  srl          a3, t2, a1
                  srai         s4, s4, 24
                  add          s11, a3, sp
                  lui          t4, 1004869
                  srai         s11, s0, 3
                  sll          a6, s7, s0
                  or           s6, zero, a3
                  auipc        s6, 601932
                  xor          a2, a7, tp
                  srl          s8, gp, gp
                  sll          sp, s5, a5
                  sub          sp, t6, s11
                  sll          t3, t3, t2
                  xor          s5, a2, t4
                  andi         sp, s9, 722
                  andi         s9, s1, -969
                  sltu         s6, s1, t1
                  sub          a5, t1, t0
                  slti         sp, a2, 765
                  srl          t0, zero, s8
                  sll          s4, s11, t6
                  sltiu        t3, s5, 1808
                  addi         s1, t1, -1143
                  xor          s9, s2, s7
                  srli         t0, gp, 14
                  sll          a3, s3, a7
                  lui          s3, 422574
                  auipc        s5, 699756
                  or           a5, s1, t2
                  srl          a2, t5, s7
                  andi         s3, t3, -1568
                  slli         s1, a1, 1
                  slti         s6, t5, -1854
                  srli         a6, a5, 6
                  andi         gp, a0, -1393
                  slti         a3, s4, 1331
                  sub          a6, a0, s6
                  slli         s3, a6, 10
                  xor          t5, a2, s3
                  srai         a2, s3, 17
                  add          a5, s4, gp
                  or           zero, t0, s11
                  lui          tp, 715330
                  nop
                  slli         a3, s10, 26
                  and          s3, sp, t5
                  slt          a7, t0, ra
                  xori         gp, s1, -1133
                  slti         a6, a0, -1511
                  ori          a2, s3, 998
                  srai         a7, t3, 11
                  ori          t6, a3, -53
                  slt          tp, a4, a1
                  srl          s8, t4, t2
                  and          t0, t4, t0
                  ori          sp, s1, 977
                  andi         a7, zero, 420
                  sltiu        a2, a3, 1520
                  slt          a7, s6, a1
                  auipc        a5, 260873
                  sltiu        zero, tp, -122
                  lui          s11, 777845
                  and          t3, s3, s0
                  xori         gp, s6, 1318
                  lui          zero, 797096
                  sltu         a5, s8, s4
                  and          s10, s2, t0
                  nop
                  sll          s9, t2, zero
                  srli         tp, t2, 13
                  addi         t1, s5, -37
                  slli         a2, zero, 6
                  andi         a5, t4, -1987
                  add          s4, sp, a3
                  sltu         gp, a0, a7
                  ori          tp, t0, 1305
                  sll          a7, a1, a5
                  or           t2, s10, a2
                  srai         t5, sp, 6
                  sltiu        s10, a5, -353
                  auipc        ra, 814654
                  srai         a2, a1, 18
                  ori          s0, s3, 586
                  sll          t3, s5, t3
                  srl          t3, t5, a5
                  srli         s7, s11, 14
                  and          t3, a3, s5
                  ori          a5, t2, 1561
                  sltiu        a6, s7, 1870
                  srli         s11, t3, 5
                  srli         s9, a5, 24
                  and          a6, sp, a2
                  xor          ra, s3, s5
                  srli         s7, t0, 27
                  srli         s7, t3, 13
                  srai         sp, t4, 10
                  andi         s0, s3, 1680
                  lui          s10, 145248
                  slli         t5, a4, 11
                  srai         s7, gp, 22
                  add          t3, s0, a5
                  ori          s9, gp, 266
                  andi         t4, a2, 354
                  addi         s2, t1, -715
                  xor          s4, tp, s4
                  and          t4, s11, a7
                  auipc        gp, 611797
                  addi         s6, s5, -283
                  lui          gp, 732475
                  xori         a7, sp, 803
                  xori         s8, t4, -1661
                  sll          t1, a4, t4
                  sra          s7, sp, a3
                  sltiu        t0, s8, 110
                  nop
                  sltu         t3, ra, gp
                  slti         t2, t3, -1878
                  xori         s9, a5, 1626
                  ori          t2, t4, 344
                  sub          a7, t4, t4
                  sll          t3, t0, t4
                  andi         t1, tp, 2012
                  or           s11, t6, gp
                  and          ra, s11, gp
                  lui          t6, 929116
                  xor          t4, a6, gp
                  lui          t1, 456309
                  ori          a2, s8, 2016
                  nop
                  slli         s11, s2, 1
                  lui          tp, 579877
                  slti         t6, t2, -117
                  slli         ra, t3, 27
                  srli         a3, s6, 12
                  andi         t0, s2, -253
                  sra          s2, a1, s10
                  xor          s4, s8, a7
                  xor          a2, ra, a6
                  andi         s7, ra, 490
                  srai         t4, gp, 17
                  xori         ra, a4, 1865
                  srai         tp, a5, 27
                  slli         s5, t0, 22
                  sll          s0, tp, a1
                  nop
                  sra          s4, t1, a2
                  sll          s6, zero, a2
                  andi         t3, sp, 36
                  add          a6, s1, s9
                  slli         s8, a4, 24
                  addi         a7, s3, -1689
                  sra          s2, t6, s4
                  lui          t2, 690571
                  add          t6, t2, gp
                  nop
                  xor          a2, a2, s4
                  srl          s8, s11, s6
                  or           s6, a1, s9
                  andi         ra, sp, 457
                  auipc        a6, 537112
                  auipc        s2, 3836
                  sltiu        s7, s3, 510
                  and          s2, ra, tp
                  add          a3, s8, a0
                  ori          a6, s2, 1863
                  sub          s6, a3, a7
                  auipc        sp, 626637
                  sltu         a2, a5, sp
                  sra          s3, ra, a5
                  lui          t2, 311910
                  sra          t4, ra, a3
                  sub          t6, s4, zero
                  xor          s8, tp, gp
                  nop
                  srai         s10, s9, 17
                  xor          a6, t2, t3
                  andi         s4, t0, 1522
                  sltiu        sp, gp, -1624
                  sltu         sp, a2, sp
                  andi         s8, t4, -1681
                  srli         a2, a7, 9
                  xor          s2, ra, ra
                  srai         a7, a4, 9
                  xori         s4, a3, 276
                  sra          s4, a7, t6
                  sltiu        a2, ra, -624
                  or           t1, zero, s1
                  ori          a5, t5, -338
                  srli         s3, t1, 15
                  slli         zero, s2, 27
                  slti         tp, s5, -567
                  sra          s8, s3, gp
                  sltu         a3, s5, a1
                  or           s11, s1, t1
                  xori         t6, s11, -1552
                  srl          s11, s2, a5
                  add          s0, tp, t2
                  srli         s11, t6, 29
                  addi         t5, s5, -1184
                  slt          sp, s1, t3
                  auipc        t5, 907819
                  auipc        t3, 602642
                  sub          t2, ra, s7
                  sll          s4, a0, a6
                  ori          a3, a7, -1324
                  and          s10, t1, t5
                  ori          t4, s0, 185
                  andi         s8, s1, -241
                  sll          a6, a2, s8
                  srai         tp, s2, 7
                  xor          t6, ra, zero
                  and          s6, s10, s3
                  srli         a6, a0, 17
                  addi         s7, ra, 29
                  sll          s9, s11, t6
                  slti         t3, t0, 156
                  nop
                  andi         t1, s9, -1233
                  sltiu        t5, s11, 524
                  srai         s1, tp, 11
                  nop
                  auipc        sp, 792326
                  sra          s6, s1, tp
                  xori         t3, s1, -1918
                  xori         t3, a2, -485
                  srl          s10, s10, a5
                  lui          s6, 86311
                  srli         ra, t2, 4
                  srl          t4, s9, s9
                  srai         s0, s6, 3
                  srli         s3, t0, 22
                  xori         a7, a7, 1310
                  sra          s8, ra, sp
                  addi         s7, t0, 261
                  auipc        gp, 38050
                  addi         t1, s6, 371
                  slli         gp, a1, 13
                  sub          tp, t0, t6
                  addi         s7, gp, 1161
                  or           gp, s8, t0
                  sltu         s4, t6, a5
                  srai         a2, s0, 3
                  slt          a5, s2, t2
                  sltu         t3, t0, a4
                  ori          s6, s11, -1628
                  sll          gp, t0, a1
                  sub          t5, a7, a7
                  sra          s3, tp, s7
                  srai         a5, s9, 27
                  slt          ra, a1, s2
                  or           tp, s2, s8
                  srai         s9, a0, 15
                  sll          a7, t6, t0
                  add          s6, tp, s0
                  xor          zero, tp, s2
                  srai         s8, s11, 20
                  ori          sp, t1, 1479
                  slli         t2, t0, 6
                  srl          t4, gp, sp
                  or           a6, s10, t5
                  sll          ra, s6, t6
                  xor          a5, t1, t6
                  slt          t6, s7, t2
                  sltu         a6, a6, sp
                  and          s9, s5, t6
                  slt          a7, a1, ra
                  ori          t4, t4, 1834
                  sltu         t6, s6, a3
                  auipc        s5, 9705
                  srai         s5, t1, 6
                  lui          a6, 352280
                  xor          t2, a1, tp
                  srl          s6, sp, t4
                  nop
                  nop
                  nop
                  slli         s10, a6, 6
                  srli         tp, a2, 21
                  andi         s8, s1, 1014
                  add          zero, s10, s0
                  addi         t1, ra, -478
                  or           t3, s3, s9
                  xori         tp, a2, -76
                  sub          s7, s11, s9
                  slli         s3, t2, 18
                  srli         s8, s3, 18
                  srl          ra, t3, a4
                  lui          a6, 376628
                  sub          s6, t2, s5
                  add          zero, a7, zero
                  ori          sp, s11, 1995
                  sltiu        t4, a1, 2020
                  and          a7, s10, s11
                  or           t3, s4, s2
                  slt          s0, sp, a0
                  addi         t4, a2, -1371
                  ori          s2, s5, -163
                  sll          s7, s0, a6
                  srli         a2, s7, 13
                  addi         s10, s5, -939
                  addi         a2, tp, -1131
                  srai         a5, t5, 2
                  slli         a2, tp, 26
                  addi         s1, s5, 315
                  slti         a2, a5, -915
                  sltu         s4, sp, sp
                  xori         t6, a2, -70
                  srli         a3, sp, 25
                  slt          s2, s4, a0
                  sub          t5, t1, t4
                  slt          s10, s5, s8
                  srl          a6, s0, s11
                  sub          s2, s7, s0
                  add          a3, s1, a1
                  sltiu        tp, s8, 853
                  sll          t0, s0, t1
                  srai         zero, t0, 13
                  auipc        tp, 368981
                  srl          t4, s4, s3
                  srl          t6, a0, t3
                  sltu         tp, a2, a0
                  sll          s0, s10, a1
                  slti         tp, a0, 885
                  andi         sp, t3, 988
                  lui          s8, 1013049
                  andi         t0, s6, 535
                  xor          s6, s9, s10
                  sltu         s9, t1, zero
                  add          sp, t4, a0
                  and          t3, s9, a7
                  xor          a3, t2, s1
                  sltu         s9, s9, s4
                  srl          t4, a1, t0
                  or           sp, gp, s10
                  srli         s2, a4, 8
                  sltu         t6, sp, a2
                  srai         t2, s1, 1
                  sra          s4, gp, a6
                  slli         t2, s11, 30
                  slti         t3, a0, -1106
                  slti         zero, a6, 1389
                  or           s6, s11, s1
                  slt          s0, zero, t4
                  slli         s5, a1, 12
                  xor          s2, a5, a1
                  srli         a7, a6, 2
                  sltu         a2, s9, a3
                  slti         a5, a5, 1093
                  sra          s6, s11, s3
                  add          t2, t1, a2
                  sub          s4, a2, a4
                  slti         t1, t2, -1783
                  slt          t4, gp, a7
                  slt          s5, s8, s1
                  nop
                  lui          t5, 877989
                  nop
                  sub          t3, a4, s9
                  and          s0, t5, a1
                  nop
                  xor          s7, a1, a2
                  sra          t0, a6, sp
                  ori          gp, s7, -415
                  slt          sp, ra, zero
                  and          s0, t3, s3
                  auipc        t3, 364002
                  slli         t2, s6, 29
                  addi         a2, t4, 1107
                  lui          s10, 696794
                  slti         a6, t2, -49
                  lui          zero, 845832
                  add          t2, s4, s7
                  nop
                  auipc        s3, 956952
                  or           s4, t1, t6
                  or           a2, ra, ra
                  slt          t0, a5, s9
                  addi         t6, s7, -692
                  xori         t0, a3, 495
                  xori         s0, ra, -1418
                  sltu         s4, s4, s10
                  sll          a3, t0, t0
                  addi         tp, a2, 1210
                  auipc        t5, 788445
                  lui          a3, 371834
                  slti         s5, a5, 1309
                  sub          s3, a0, a6
                  sub          t1, s0, gp
                  andi         a2, a3, 451
                  add          a5, s3, s6
                  srl          s7, t6, ra
                  ori          a5, t1, -689
                  slt          sp, a1, zero
                  sra          t2, a2, a1
                  sltu         t0, s5, s10
                  add          ra, s4, s2
                  addi         a6, gp, 244
                  slti         a2, a1, -1779
                  sll          t4, gp, gp
                  addi         s4, s2, 1121
                  add          a2, tp, a7
                  sub          s3, ra, s6
                  sub          s4, s10, t4
                  sltiu        s3, a1, -1493
                  sltiu        t5, a4, -1770
                  xori         tp, s1, -430
                  sltiu        s7, s6, -1509
                  ori          tp, a2, 1869
                  sub          t1, t3, gp
                  slli         a5, a6, 29
                  or           tp, a4, a0
                  nop
                  sltiu        a7, t0, -953
                  sll          s1, s3, s9
                  andi         a7, sp, 493
                  nop
                  lui          t5, 976344
                  and          s7, ra, t2
                  andi         t5, a0, -464
                  or           s5, s6, s0
                  sub          s6, sp, s8
                  andi         a5, sp, 141
                  ori          t3, sp, -1377
                  ori          a2, s11, -841
                  lui          t2, 907162
                  sltu         zero, gp, zero
                  slt          t1, gp, a3
                  sltiu        t5, s5, 868
                  slti         s8, a0, -1951
                  ori          sp, t4, -61
                  addi         s9, t4, -1032
                  add          t6, s2, gp
                  xor          s9, a4, a0
                  sll          s6, t6, s8
                  srli         gp, a2, 8
                  srai         s11, s7, 16
                  ori          s10, s11, 1936
                  auipc        a5, 1009865
                  srai         a3, a6, 25
                  addi         sp, t5, 386
                  xori         a6, a5, -1241
                  xor          ra, zero, t4
                  xori         s7, s6, -1760
                  sltiu        s6, t4, -756
                  srai         s11, s11, 18
                  sra          ra, t2, s5
                  slli         s9, s10, 9
                  andi         tp, a3, -731
                  srli         sp, a2, 6
                  srai         t4, s0, 24
                  xori         t4, a2, 1022
                  add          s4, gp, t2
                  srai         s1, s7, 1
                  xor          tp, s4, sp
                  xor          t0, s8, s6
                  ori          s6, s10, 122
                  sltiu        s6, a7, -2034
                  or           s4, s6, a1
                  addi         s2, s0, -726
                  srai         t5, s6, 28
                  auipc        s1, 1002157
                  slti         sp, s5, -175
                  auipc        s5, 882289
                  slt          tp, t1, a1
                  add          s4, a7, s9
                  sll          s11, t1, s3
                  srl          a6, a2, a7
                  auipc        s8, 652956
                  andi         s10, sp, 643
                  srli         sp, s1, 3
                  sltu         a2, s4, a2
                  ori          s5, gp, -345
                  slti         s9, s6, 1735
                  slli         s0, s11, 31
                  srai         s5, t3, 0
                  xor          s9, t1, s7
                  or           s3, t3, a2
                  srl          a5, s1, t1
                  xor          a2, t2, s11
                  nop
                  lui          s5, 858567
                  addi         s2, a4, 413
                  slti         ra, a3, -1155
                  srl          s8, s3, s10
                  ori          sp, a3, 1481
                  slti         gp, zero, -482
                  and          zero, ra, ra
                  addi         a2, a0, -2029
                  lui          zero, 30593
                  lui          s9, 79515
                  srl          t1, t0, a6
                  auipc        t6, 439675
                  sltiu        t2, zero, 1395
                  xori         s2, s5, -1802
                  add          s8, s1, a4
                  and          tp, s10, a0
                  and          s7, t6, zero
                  xori         s3, gp, 480
                  xori         t6, t3, -1762
                  and          s3, a1, s4
                  xori         a6, sp, -364
                  lui          t0, 1045684
                  sra          t4, a6, s10
                  sltiu        t3, t2, -555
                  auipc        a7, 906927
                  andi         s5, s10, -1410
                  srai         t4, s6, 11
                  nop
                  ori          a5, zero, 1987
                  andi         sp, s10, 192
                  andi         zero, a1, 1000
                  ori          t0, a3, -499
                  slli         s3, a4, 13
                  slt          s11, t2, a0
                  ori          t0, s10, 1848
                  srai         zero, a5, 4
                  xor          sp, zero, a2
                  xori         a7, s4, -1142
                  slti         s9, a4, 1385
                  or           s6, t3, s5
                  add          s5, t4, a2
                  auipc        s9, 506595
                  addi         t0, s7, -1157
                  sltiu        t1, s5, -1394
                  slli         sp, s2, 6
                  or           s2, t4, tp
                  ori          t4, s10, -1454
                  or           s3, t2, zero
                  ori          t2, a3, 905
                  sltu         ra, s11, a2
                  srl          s11, gp, s3
                  srl          s8, s7, t3
                  addi         s0, t5, 1756
                  srli         a2, a6, 23
                  xori         s2, a7, -1417
                  add          s7, tp, t2
                  xori         s9, a2, 1119
                  sub          a5, t1, s3
                  andi         s5, t1, 820
                  ori          s5, t2, 1415
                  slt          s7, a4, s11
                  auipc        t2, 96698
                  srl          s3, s3, tp
                  srl          gp, sp, s3
                  sub          t2, t6, s4
                  sltu         s6, t5, s3
                  auipc        a5, 381492
                  addi         t5, s6, -1738
                  auipc        s3, 628431
                  slli         t5, t3, 3
                  sltiu        s7, s11, 1653
                  sltiu        zero, gp, -65
                  slti         s11, t5, -1585
                  or           ra, s0, s1
                  srai         s6, t5, 2
                  auipc        s2, 159164
                  sltu         t0, s6, a3
                  or           t1, s7, s4
                  slti         s8, s1, 1408
                  srai         s1, t4, 3
                  or           sp, ra, t1
                  srai         s10, a0, 18
                  ori          sp, t2, -460
                  slti         s4, s7, -1750
                  nop
                  sub          s0, t1, t3
                  srai         s7, s9, 22
                  and          t0, a4, tp
                  lui          t3, 1043511
                  slt          s6, s1, s6
                  slti         s2, a2, -1611
                  sltiu        zero, s11, -1385
                  nop
                  nop
                  slt          s5, s5, a7
                  sltu         s2, s11, gp
                  slli         s9, s0, 2
                  slt          s4, s11, s4
                  srl          t4, s3, s10
                  sub          t4, a7, tp
                  sltu         gp, a5, t2
                  slti         tp, ra, 1228
                  sll          t0, ra, s11
                  or           t2, a1, s2
                  lui          s4, 940988
                  slti         t1, s7, 612
                  srai         t2, t3, 11
                  andi         s7, s0, -114
                  andi         t2, s9, 150
                  ori          sp, t4, 1249
                  sra          s0, a0, s2
                  add          s8, t6, s9
                  sltu         t0, a6, t3
                  and          tp, t0, a6
                  and          t1, tp, a4
                  srai         a3, a5, 27
                  and          s10, t1, sp
                  lui          gp, 204866
                  sltu         a5, a4, s11
                  xor          sp, tp, s8
                  slt          a7, t2, gp
                  add          s4, a3, t1
                  xor          s10, t0, a0
                  slti         a7, t6, -532
                  ori          ra, s6, -599
                  sltu         s6, s9, s11
                  sll          s1, sp, s11
                  andi         a7, s8, 1402
                  slli         gp, a7, 27
                  nop
                  sll          s2, a0, s6
                  ori          a2, a3, -1456
                  sra          sp, s0, a2
                  li           s6, 0x25a85d8c #start riscv_int_numeric_corner_stream_8
                  li           t5, 0x0
                  li           sp, 0xffffffff
                  li           a2, 0xc6d549e2
                  li           gp, 0x80000000
                  li           s9, 0x80000000
                  li           ra, 0x0
                  li           s3, 0xffffffff
                  li           a5, 0x0
                  li           tp, 0x407b9050
                  nop
                  sub          ra, s3, s6
                  sub          a2, s6, a5
                  addi         sp, tp, -374
                  auipc        sp, 512970
                  addi         gp, t5, -2020
                  add          gp, a2, a2
                  add          a5, s9, a2
                  auipc        s6, 872472
                  addi         s6, a2, 856
                  nop
                  addi         s3, a2, -1508
                  lui          a5, 369325
                  auipc        ra, 231960
                  add          sp, t5, a5
                  addi         gp, s6, 1333
                  nop
                  nop
                  nop
                  sub          s9, tp, s3 #end riscv_int_numeric_corner_stream_8
                  sra          s11, ra, t4
                  srai         s5, a3, 28
                  lui          s2, 248272
                  nop
                  sra          s5, t2, s6
                  sub          a2, t1, a3
                  sll          a2, zero, sp
                  srli         a3, s10, 3
                  add          s7, t2, s5
                  auipc        a7, 137821
                  slli         s2, s8, 24
                  or           a2, a1, s11
                  slt          gp, s7, a0
                  slti         ra, a6, -1750
                  andi         a2, ra, 564
                  lui          s6, 777088
                  andi         s3, t5, 1975
                  slt          s7, a4, zero
                  sll          a6, zero, t4
                  andi         s4, zero, 77
                  and          t4, a2, t4
                  xori         t0, t1, 282
                  srl          s6, s4, gp
                  sra          a6, tp, tp
                  srl          s3, t4, a7
                  lui          s0, 909821
                  ori          t5, a3, 1797
                  xor          t4, t4, s9
                  and          s3, t2, s4
                  sra          t6, sp, a7
                  xor          s10, a3, a5
                  slt          s3, t3, s3
                  srli         s2, t4, 21
                  srl          a3, t6, a1
                  slti         a5, a7, -1777
                  add          t4, s3, s5
                  xori         s10, s11, 996
                  slt          s6, s8, t4
                  sub          t6, s7, s10
                  sltiu        s9, a2, 1042
                  lui          t4, 711997
                  and          sp, t1, t0
                  sub          ra, a4, a1
                  slli         gp, t0, 29
                  andi         t4, s10, -2027
                  or           zero, a0, t0
                  slti         s8, s11, 328
                  sll          s11, a1, s7
                  addi         s8, s7, -123
                  srai         a2, gp, 23
                  add          s0, sp, s0
                  sltiu        zero, t6, 1150
                  andi         a6, s10, 819
                  sll          t4, a3, a4
                  srl          s2, s5, t0
                  sltiu        t1, s9, 506
                  xori         s11, zero, -674
                  auipc        a3, 734623
                  sra          zero, tp, t1
                  add          s3, a1, t5
                  or           a3, sp, s0
                  ori          t2, s9, 660
                  addi         a5, a6, 148
                  sra          t4, s4, sp
                  addi         s0, t6, -277
                  sub          t6, a7, a1
                  xori         s6, a2, -257
                  xor          gp, s8, a4
                  lui          zero, 783374
                  ori          t6, s9, 1834
                  xori         s3, s2, -1620
                  ori          s10, s4, -1891
                  sll          s11, sp, s4
                  andi         s10, t1, -1150
                  sltiu        s7, t4, -1459
                  sltu         s3, zero, t6
                  sub          s5, t3, s10
                  or           t4, gp, s7
                  andi         s6, s7, 535
                  add          s3, s11, t6
                  andi         tp, s0, -1090
                  sltiu        s11, s9, -5
                  srli         t3, s8, 3
                  xori         s4, s4, 830
                  andi         t2, s1, -1222
                  or           gp, zero, a2
                  add          s11, s3, a6
                  addi         s8, s6, -1384
                  or           a2, s8, ra
                  xor          s11, t0, s0
                  lui          a5, 675768
                  sra          a7, t0, s8
                  ori          s2, t0, -2045
                  andi         sp, t2, 1056
                  xori         s8, gp, 462
                  lui          s4, 18485
                  sub          gp, a2, s7
                  slti         s1, a1, 1590
                  slti         t4, t4, -1688
                  or           t3, a0, s3
                  sra          s3, s2, zero
                  or           t1, t6, s7
                  srl          a7, s2, t3
                  slt          s3, s9, a5
                  sltu         t6, gp, ra
                  nop
                  andi         t6, tp, 288
                  add          t4, t2, a0
                  addi         t2, s5, -95
                  srai         s9, ra, 19
                  xor          t3, a6, s11
                  add          s8, tp, s1
                  andi         s9, s6, 1210
                  sra          a7, t6, s5
                  xor          t2, ra, tp
                  addi         zero, s0, 514
                  sll          s10, s2, s2
                  srli         s3, s9, 23
                  addi         t4, t1, 1028
                  or           s11, s8, a0
                  sra          s5, t3, s5
                  srai         t4, s10, 24
                  add          t4, a5, s0
                  lui          s8, 120013
                  sltiu        s1, t1, 1629
                  nop
                  slt          t3, s7, t3
                  nop
                  xori         s1, ra, 1406
                  srai         s11, a0, 23
                  auipc        t0, 279358
                  slt          t5, a7, t2
                  sra          s7, t4, a0
                  sub          s8, t1, a7
                  ori          s9, s5, 919
                  srai         s3, s2, 17
                  ori          t6, s7, -1466
                  sltu         t2, t2, s3
                  xori         s9, zero, -1401
                  slli         s3, s5, 25
                  sltu         s4, s9, t6
                  sra          s8, a5, t5
                  slt          s9, t1, ra
                  andi         s8, s8, 1276
                  nop
                  ori          a2, t0, -1933
                  slti         s8, t5, 1221
                  slli         t1, t2, 14
                  and          a5, s0, s2
                  srl          ra, s3, sp
                  slli         a5, t1, 16
                  slti         s11, sp, -92
                  srli         t0, a7, 21
                  or           t0, ra, ra
                  srl          s3, a7, zero
                  nop
                  or           s1, s6, a4
                  sub          gp, t6, a5
                  xor          s3, s8, gp
                  sltiu        zero, a3, 1054
                  sltiu        s4, ra, -187
                  slti         s8, gp, 54
                  sll          s7, tp, gp
                  sltu         a6, t3, t6
                  xori         a5, t5, 890
                  srli         t1, s1, 19
                  srl          zero, s1, s11
                  sltiu        s3, s4, -1610
                  xor          s0, a3, s10
                  addi         t6, s9, 576
                  xori         ra, a3, -558
                  sltiu        a3, s11, -1260
                  sra          s6, t0, a4
                  sll          s3, gp, t5
                  sra          t6, s2, t2
                  srl          t6, a2, a1
                  sltu         s1, a7, s3
                  slli         s1, s1, 6
                  srl          a6, gp, a4
                  slti         s7, s1, -1090
                  srli         s6, s4, 5
                  and          s11, gp, t2
                  addi         gp, s7, 789
                  sub          a6, s6, a4
                  sll          ra, t4, a5
                  andi         t5, s9, -519
                  sltu         t5, a2, t6
                  sub          a5, s9, s2
                  slti         s11, a6, -550
                  add          a6, a6, a4
                  sll          s8, a4, zero
                  srl          a5, a0, s11
                  and          s7, t5, sp
                  slti         a2, gp, 1919
                  sltu         s3, gp, a2
                  srai         s9, t0, 20
                  sltu         ra, ra, t3
                  and          t6, t2, a6
                  sra          t6, t6, gp
                  slli         s4, t0, 8
                  xor          t6, t2, s11
                  slt          sp, s10, a5
                  sltu         s5, s5, s0
                  xor          s3, a7, zero
                  slli         s9, s3, 29
                  andi         s5, a7, 945
                  xor          zero, s0, s8
                  xor          s2, a3, zero
                  xor          a2, s10, s10
                  xor          s0, a3, s11
                  andi         t1, a6, 1697
                  sra          s4, s7, t1
                  sll          t4, s0, s0
                  or           t0, t5, s8
                  srl          a5, tp, s10
                  and          t5, tp, t4
                  sub          t3, t1, sp
                  sub          t6, gp, tp
                  srli         a6, s5, 15
                  andi         s8, t3, -958
                  srl          t2, s9, a6
                  add          t5, zero, t1
                  sll          t4, s4, t1
                  and          s4, s0, s9
                  sra          a3, ra, s1
                  sub          a2, a1, zero
                  slt          s9, s4, a3
                  sltu         a6, t3, s7
                  addi         t0, s7, 1860
                  or           a7, a1, a2
                  nop
                  lui          s9, 147276
                  xor          ra, s4, s7
                  slli         t6, s9, 1
                  lui          t4, 986768
                  and          t1, a3, ra
                  addi         gp, a4, -57
                  sltu         t3, a0, a0
                  sra          s4, t3, s1
                  add          s5, a3, t6
                  and          s4, sp, a7
                  sltiu        s3, s3, 497
                  nop
                  xor          t4, t4, s7
                  andi         s7, a3, -954
                  addi         t1, a0, 483
                  addi         gp, s1, -1476
                  lui          t3, 574766
                  nop
                  lui          tp, 292816
                  sltiu        s11, a4, -1354
                  slt          s5, a3, a5
                  slli         t6, s9, 25
                  andi         s9, s6, 1318
                  slti         zero, a2, -981
                  add          gp, s5, t0
                  andi         s7, s5, -1362
                  nop
                  or           s4, s9, s4
                  sltu         t4, a0, s9
                  sll          s10, t4, s7
                  srai         a2, zero, 13
                  slti         tp, a4, 742
                  xori         s8, t6, 220
                  lui          t3, 152897
                  ori          t1, t3, 650
                  srli         t5, t1, 19
                  add          a5, s9, t0
                  sub          s9, s3, s0
                  add          s11, s1, ra
                  sub          s7, ra, a6
                  or           s3, s5, ra
                  srl          t5, a4, a5
                  lui          s6, 457955
                  sub          t0, t3, s6
                  srli         t3, s9, 28
                  addi         t6, a5, 1864
                  srli         s2, s4, 28
                  srl          ra, t3, ra
                  and          s11, t4, s9
                  slli         s9, a0, 19
                  and          s6, t2, a6
                  nop
                  slti         s8, gp, 891
                  sltiu        a2, s11, 786
                  addi         a6, s1, -92
                  or           sp, s3, a7
                  addi         zero, a1, 1508
                  sra          ra, a5, a4
                  li           s3, 0x6b3bb59c #start riscv_int_numeric_corner_stream_2
                  li           ra, 0x50cda7e4
                  li           gp, 0x80000000
                  li           a3, 0xc4de11a0
                  li           a7, 0x0
                  li           t6, 0x80000000
                  li           t1, 0xffffffff
                  li           a5, 0x0
                  li           a6, 0x80000000
                  li           t3, 0xce897144
                  auipc        a7, 635101
                  addi         ra, a5, -531
                  add          ra, ra, t6
                  addi         a6, gp, -1589
                  lui          t1, 491165
                  addi         t3, t1, -1607
                  add          a7, ra, a5
                  sub          a7, gp, ra
                  add          a6, a6, t6
                  lui          s3, 253990
                  nop
                  sub          a7, a7, t3
                  sub          a6, t3, a3
                  auipc        a6, 932456
                  add          a6, a3, s3
                  lui          a6, 1000865
                  sub          t6, t3, a6
                  nop
                  lui          a7, 179609
                  auipc        a7, 853709
                  add          t6, gp, t1
                  addi         a3, a6, 1014
                  add          t3, t6, gp
                  addi         t6, a7, -34
                  nop #end riscv_int_numeric_corner_stream_2
                  slli         s5, s6, 0
                  nop
                  auipc        t5, 312406
                  lui          s9, 655940
                  xori         tp, tp, -1033
                  sub          s0, t0, s7
                  sltiu        t5, a0, 1532
                  nop
                  lui          t2, 756059
                  sra          a7, t3, s9
                  add          s6, a3, t2
                  nop
                  slti         a7, a7, 178
                  srli         s10, ra, 2
                  addi         s6, a6, -1652
                  sltu         s3, a6, s2
                  sub          s9, t1, t1
                  or           a6, t4, s4
                  sub          s2, s5, t2
                  add          s10, s4, s5
                  sltiu        gp, s2, 1982
                  srl          t0, a1, t6
                  add          tp, a1, t5
                  slli         t0, t6, 2
                  sltu         a3, t3, s8
                  add          s1, s11, s4
                  or           t4, s5, s9
                  sub          t2, s1, s9
                  slti         ra, s0, -367
                  and          s3, a1, t6
                  sub          s5, s9, zero
                  ori          s3, gp, 1611
                  slli         s11, s5, 4
                  auipc        ra, 128833
                  ori          a2, t4, -1475
                  sra          a7, s3, t1
                  xor          s1, s6, s2
                  sub          a7, a6, a0
                  xori         s3, ra, 1102
                  and          gp, s10, s9
                  srli         s10, a7, 24
                  sltiu        s8, a4, -1590
                  lui          t0, 133170
                  sra          a5, gp, a3
                  srl          s8, a5, t2
                  slli         a3, zero, 9
                  nop
                  auipc        s1, 358520
                  sll          s0, s0, ra
                  slti         s1, t4, 888
                  or           ra, a4, a4
                  sll          s4, s6, gp
                  addi         t3, a4, -311
                  sltu         a2, a0, s4
                  sltiu        t3, a6, -1389
                  addi         t6, s0, 79
                  and          ra, s9, t5
                  sll          t2, t0, tp
                  nop
                  xori         s7, s0, 645
                  xori         s8, s5, 1551
                  slli         s7, s3, 24
                  sltiu        tp, t4, 1306
                  or           s6, a0, s5
                  lui          s3, 180727
                  sra          s5, a0, s10
                  sub          t3, a4, t0
                  sltiu        a2, s6, -1284
                  slli         gp, t0, 21
                  sll          sp, s5, a5
                  xori         a3, s8, -1890
                  nop
                  srli         s7, zero, 5
                  auipc        a7, 258346
                  sltiu        t6, t1, -1979
                  sub          t1, t1, s7
                  srai         a6, s1, 13
                  sra          s7, s6, tp
                  xor          sp, t0, a6
                  auipc        t1, 727636
                  addi         t0, zero, 1285
                  and          s8, a7, sp
                  xori         t1, s2, -1894
                  slli         t3, s11, 11
                  or           s8, s11, a5
                  addi         s4, s4, 1162
                  andi         a2, zero, -1603
                  sltu         t0, s7, s1
                  slt          t6, t5, s8
                  lui          a2, 698172
                  auipc        t3, 833802
                  sub          t0, tp, s8
                  slti         s2, s3, -140
                  srai         sp, t1, 16
                  add          a2, tp, t2
                  xori         s1, s1, 619
                  sltu         s7, a0, ra
                  and          s6, a6, a5
                  sub          gp, sp, s6
                  ori          s3, s4, -1240
                  andi         t1, t6, 446
                  add          a7, a3, s8
                  lui          s9, 992051
                  lui          t2, 132916
                  xor          s7, t0, sp
                  srai         a7, t3, 6
                  add          zero, t2, a0
                  srai         s0, t4, 8
                  srli         a7, s4, 4
                  xori         t0, a5, 1324
                  slli         a6, t1, 20
                  slt          ra, s2, a2
                  and          s6, a2, t5
                  addi         ra, t2, 686
                  auipc        s11, 148175
                  andi         t3, a5, 1619
                  xori         s2, a5, -452
                  auipc        sp, 453438
                  nop
                  sub          t3, sp, s2
                  slli         a7, t5, 0
                  lui          t1, 251568
                  sub          s11, ra, tp
                  xori         tp, s4, 43
                  srli         s6, zero, 15
                  auipc        a3, 229493
                  xor          s6, a2, s4
                  auipc        t5, 784196
                  lui          s10, 488353
                  sub          a7, a3, t1
                  slli         t5, t0, 5
                  xor          zero, s5, t0
                  xori         a5, s3, 1116
                  srli         a7, t0, 24
                  or           a7, t1, a4
                  add          s3, a2, a1
                  sra          a2, zero, t1
                  or           a2, t1, a4
                  xori         s3, t3, -156
                  sltu         t3, gp, t1
                  ori          s6, a3, 427
                  sll          ra, a0, s7
                  srai         sp, a7, 29
                  addi         gp, s2, 120
                  add          s1, a1, tp
                  xori         sp, t1, 474
                  add          s8, ra, s5
                  addi         s0, s2, -1145
                  add          s11, t2, s6
                  sub          s2, a0, s0
                  sra          a3, a4, a6
                  sltu         s11, sp, t0
                  slti         s0, a5, 624
                  srl          a7, s9, s11
                  srai         a3, s1, 17
                  addi         s10, a6, -1794
                  srli         t0, s0, 8
                  and          ra, s10, t1
                  sub          zero, a3, a1
                  sra          t1, s1, t2
                  auipc        ra, 270847
                  srli         a3, ra, 18
                  slli         ra, a7, 8
                  sub          t0, tp, s11
                  sltu         t4, s3, s3
                  slti         ra, t0, -350
                  sltu         a7, s2, zero
                  lui          gp, 691300
                  or           s7, s10, t2
                  sltu         s4, s5, s7
                  sll          s11, a7, gp
                  slli         gp, s5, 11
                  slti         s10, s7, 1101
                  lui          s7, 485878
                  or           s5, ra, a5
                  srai         s11, a6, 15
                  auipc        s2, 999213
                  nop
                  auipc        s1, 616925
                  auipc        a5, 967701
                  lui          t0, 485441
                  and          sp, s3, sp
                  auipc        t3, 1030650
                  srli         t6, s4, 6
                  lui          t4, 713217
                  and          s3, s1, a2
                  lui          s3, 362729
                  ori          tp, zero, -582
                  sltu         a7, a6, s2
                  addi         ra, t1, 53
                  andi         s3, a3, 179
                  sltu         s7, t0, t1
                  sll          s8, t1, gp
                  sub          s11, t2, s5
                  xori         tp, s2, 1590
                  xor          t6, a1, ra
                  ori          s5, ra, 1523
                  srli         s1, a1, 26
                  sra          s2, s5, s9
                  xori         s8, a5, -1890
                  sltu         s9, a6, zero
                  sub          s2, s11, s4
                  sll          a3, a6, a5
                  sltiu        gp, tp, -651
                  srl          s1, s4, a1
                  slti         s10, s11, 986
                  slt          t6, s5, s10
                  andi         t3, tp, -2029
                  sltiu        a6, zero, -1399
                  srl          t3, s8, a0
                  or           tp, s8, a6
                  xor          s4, a0, t2
                  andi         s8, t5, 879
                  srl          a2, s11, s5
                  srl          a3, s0, s9
                  slt          s4, gp, a0
                  sltu         t2, tp, s1
                  sub          s8, ra, t0
                  or           gp, a3, t1
                  srai         sp, s5, 18
                  slti         s11, ra, -1097
                  or           t4, s1, s10
                  and          s9, s11, a6
                  srai         t6, s9, 30
                  slti         a2, s9, -1236
                  sltiu        s1, tp, 1303
                  auipc        t6, 479799
                  add          s8, a5, s8
                  add          tp, s8, zero
                  sra          a5, s6, s9
                  nop
                  nop
                  add          gp, a4, s8
                  sll          t1, t2, sp
                  xor          s8, s2, s8
                  srli         a2, s2, 31
                  sra          ra, tp, gp
                  xori         s7, gp, 1181
                  srl          t0, s0, s9
                  nop
                  lui          s7, 282600
                  srai         t5, s7, 30
                  xori         t4, t0, -1018
                  xori         s0, a5, -216
                  andi         s0, a7, 205
                  xor          s1, a1, s1
                  addi         s3, s0, 1066
                  sub          s7, a3, gp
                  slt          t5, t3, a2
                  slli         t0, t0, 16
                  and          s6, s5, t0
                  or           a7, tp, a3
                  srli         s7, s1, 21
                  slli         a6, t6, 31
                  auipc        s2, 465806
                  slli         t6, s3, 20
                  xor          t5, t4, a6
                  sll          t5, s2, a1
                  xori         s7, zero, 1320
                  slt          a6, a4, a7
                  slt          s0, a0, s7
                  ori          t5, s2, -760
                  add          a6, a3, s7
                  srl          s7, s8, a2
                  and          s5, s7, s1
                  auipc        a6, 620899
                  xor          s9, a0, s7
                  auipc        s8, 195164
                  lui          s11, 510775
                  slli         s3, a4, 0
                  sltiu        s2, a1, -1351
                  addi         a7, a6, 1858
                  sltiu        s8, a0, -880
                  ori          a7, t5, 1735
                  nop
                  xori         a2, s9, -607
                  add          t6, tp, a4
                  addi         s5, t6, -91
                  xori         s7, s5, 952
                  sra          s1, t6, t0
                  andi         zero, a5, -1792
                  ori          a7, a1, -1317
                  slt          t1, a6, a6
                  add          gp, t4, s11
                  slti         a3, a1, 1716
                  auipc        s3, 662856
                  slti         s9, a7, 849
                  sra          a7, s8, s7
                  or           s11, a6, a5
                  sub          t3, s5, t5
                  xor          t2, a6, s6
                  nop
                  srli         tp, t2, 27
                  xor          ra, t5, s0
                  srai         zero, gp, 2
                  addi         s9, s2, -2028
                  srai         a2, s10, 24
                  andi         a3, gp, -1750
                  ori          a3, s4, -1171
                  srli         s5, zero, 22
                  andi         sp, t1, -737
                  and          ra, s3, a6
                  xor          t6, t2, t2
                  auipc        s4, 22132
                  sra          t3, a7, a1
                  sltu         t3, a3, s11
                  sll          s0, t6, a2
                  sll          t2, s9, gp
                  ori          ra, t0, -1719
                  srai         a6, sp, 11
                  ori          sp, s8, -1831
                  xori         s7, s2, 1197
                  sltu         ra, a7, s2
                  add          s11, s5, s5
                  add          t1, s0, s0
                  sra          s0, t6, ra
                  or           sp, t4, s8
                  sll          s10, sp, a1
                  xori         ra, s0, 1260
                  or           sp, s0, a0
                  addi         t5, s1, -109
                  nop
                  nop
                  sltiu        gp, t6, 1223
                  sll          t2, s11, t0
                  slli         t4, a2, 10
                  nop
                  sltiu        a7, zero, 534
                  slli         tp, s2, 30
                  sll          t5, a5, s7
                  srli         s1, tp, 3
                  sra          gp, s11, s0
                  srai         s6, t5, 19
                  xor          s1, t6, t3
                  sltu         s2, s2, a2
                  sltiu        s8, a0, -1421
                  sll          t4, s1, gp
                  slli         t4, s10, 6
                  slli         a5, a4, 8
                  and          a2, s8, t0
                  auipc        t3, 131453
                  sub          sp, s2, s5
                  srli         t0, s7, 22
                  add          sp, s7, gp
                  and          gp, t6, zero
                  xor          t2, t6, s1
                  addi         ra, s1, 806
                  or           s10, a5, a3
                  nop
                  sltu         s11, tp, tp
                  sra          s11, t0, s4
                  nop
                  sra          a2, sp, gp
                  srl          t0, ra, t4
                  lui          a5, 668987
                  auipc        t2, 665953
                  slt          s1, t0, gp
                  sra          t2, t5, zero
                  slt          t4, zero, ra
                  sub          ra, a1, s8
                  slli         a2, a3, 15
                  slli         t2, a5, 27
                  add          s4, t4, a4
                  or           s2, t6, t6
                  addi         zero, s11, -1049
                  sub          t4, a3, ra
                  nop
                  slt          s3, s6, a0
                  slti         s7, t6, 1591
                  srli         t4, s11, 17
                  slt          s8, a0, a3
                  or           s5, s8, t3
                  lui          s3, 653942
                  addi         s0, a2, -44
                  andi         s10, ra, 1917
                  sub          ra, a4, a5
                  sltiu        s0, a4, -52
                  ori          a3, a2, -1723
                  add          s10, s9, t1
                  andi         t2, zero, -1950
                  sltu         s9, a0, t4
                  srli         t3, zero, 17
                  srl          a7, a4, s11
                  sra          s8, s2, t5
                  sltu         sp, s9, ra
                  or           t6, sp, t6
                  srli         s7, a3, 31
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           t2, 0x0
                  li           s9, 0x80000000
                  li           a7, 0x727ddec8
                  li           a3, 0x80000000
                  li           ra, 0xffffffff
                  li           s8, 0x80000000
                  li           t6, 0xe3095e0e
                  li           s2, 0x80000000
                  li           s5, 0x0
                  nop
                  nop
                  sub          t2, s9, t6
                  lui          s5, 901187
                  sub          a7, s4, t2
                  addi         s8, ra, 1491
                  nop
                  addi         t2, ra, 1333
                  add          s4, a7, s2
                  auipc        s2, 228238
                  nop
                  auipc        a3, 572949
                  nop
                  lui          a3, 1033226
                  addi         ra, ra, -563
                  lui          s9, 364933
                  lui          s8, 465809
                  addi         ra, s4, 537
                  lui          s5, 78781
                  sub          ra, s2, t2
                  addi         s4, t6, -760
                  sub          s9, s5, t6 #end riscv_int_numeric_corner_stream_15
                  sra          sp, s3, s4
                  auipc        s10, 913949
                  nop
                  add          t1, a6, t6
                  ori          zero, a7, 1153
                  slt          t2, t3, t4
                  sub          gp, zero, s0
                  sub          t1, s8, a7
                  add          s5, a5, s3
                  srl          s10, a6, t4
                  lui          s8, 905875
                  sub          ra, t6, gp
                  xori         a7, s4, 345
                  and          a6, s0, t0
                  sra          t3, s7, t5
                  srli         t3, s4, 7
                  ori          a6, a1, 161
                  or           s11, t4, t5
                  srai         s10, a6, 15
                  nop
                  sltiu        s9, a5, 555
                  auipc        s10, 718155
                  add          s1, s11, t4
                  lui          s3, 132954
                  slt          t1, a7, a5
                  sltu         t0, a1, s7
                  nop
                  addi         s2, sp, 219
                  or           ra, s8, s8
                  xor          gp, a1, t3
                  andi         t0, s0, 1299
                  nop
                  slt          t0, sp, a3
                  srli         a3, s9, 3
                  add          s7, s5, a1
                  xori         t4, s5, -1401
                  and          t6, s4, s3
                  sll          t3, s6, a4
                  slti         a6, a0, -1086
                  add          t2, a0, a3
                  sra          s5, s7, t0
                  ori          t3, sp, 1402
                  sll          zero, a4, s9
                  or           t4, a2, a3
                  sra          a3, a0, s11
                  sltiu        s2, a6, -467
                  slt          t3, s6, s0
                  slt          s0, ra, t0
                  xori         gp, t5, -646
                  xor          s0, t4, s10
                  xori         s0, s8, 236
                  xori         a2, s2, -111
                  sltiu        s1, sp, -1818
                  slli         t0, s3, 7
                  slli         a5, sp, 19
                  nop
                  sltu         a7, a0, a4
                  srl          a3, a3, s4
                  slt          zero, t0, s8
                  auipc        t0, 357932
                  lui          t3, 90119
                  ori          s3, a0, -1996
                  srl          t3, t4, zero
                  srl          t5, sp, s0
                  slt          s8, a5, a5
                  sra          t5, a4, s2
                  add          a6, a2, t2
                  slti         s9, s7, 1605
                  or           s0, a7, a3
                  sltu         tp, s8, s1
                  nop
                  srai         sp, t3, 11
                  auipc        s3, 664277
                  sltu         s4, t0, ra
                  xori         s1, s6, 645
                  sub          t1, s11, s6
                  slti         s6, t2, 1202
                  ori          s8, zero, -1558
                  srli         s3, t0, 26
                  slli         s6, a0, 29
                  xori         t5, sp, 1571
                  srl          s3, t5, s11
                  srai         s11, s6, 13
                  andi         s2, a1, 1210
                  srl          ra, a1, s3
                  slt          zero, t1, a5
                  slt          tp, t6, ra
                  xor          t2, s10, a2
                  sltu         s9, t6, s4
                  sltiu        t3, t5, -2048
                  or           s6, gp, tp
                  sub          s9, s1, ra
                  srl          s5, tp, a3
                  addi         s10, a5, -1262
                  slli         s8, t6, 26
                  srai         t4, a2, 6
                  addi         s11, s7, 1753
                  add          a7, a6, s5
                  sra          t4, t6, a0
                  nop
                  slti         t3, gp, -81
                  xori         sp, sp, 1061
                  srl          t0, zero, tp
                  xori         s11, s0, -1987
                  lui          s3, 422953
                  or           t0, t4, sp
                  lui          t3, 602338
                  add          t3, a2, zero
                  or           s4, a3, tp
                  slti         s5, a0, 138
                  sltiu        s9, s7, 472
                  sub          s6, a5, ra
                  lui          ra, 177035
                  srl          s11, t2, s6
                  lui          s2, 609110
                  auipc        s9, 590345
                  slti         s5, s11, -1167
                  lui          zero, 160570
                  sltiu        s10, s2, 356
                  sltu         s1, gp, a4
                  sltu         tp, a6, t1
                  xori         a2, a7, -1072
                  srl          a5, t2, a7
                  xor          ra, s2, a1
                  srai         s2, a4, 7
                  add          s11, s0, gp
                  andi         t1, t2, 1342
                  and          t1, s9, a3
                  slti         t6, s8, 1460
                  sltiu        s0, a1, 741
                  addi         t0, s0, -605
                  slt          s9, a7, a2
                  srl          s10, s9, a5
                  sltiu        s3, t4, 87
                  slt          t2, t4, a1
                  sll          a7, zero, a1
                  slt          t6, t5, gp
                  slti         gp, a7, -609
                  sll          t2, a7, s1
                  slt          t6, s2, s0
                  slt          s3, t2, t2
                  add          s3, s1, s11
                  slt          a2, s10, t6
                  nop
                  sltiu        s5, t1, 698
                  lui          a5, 342261
                  lui          a3, 528431
                  add          a7, s3, t1
                  ori          a6, t6, 664
                  sll          s7, gp, t3
                  sltu         s1, ra, t0
                  sra          s0, s3, t1
                  srai         s11, zero, 24
                  add          zero, s2, a1
                  xori         s11, a2, -1583
                  xor          t0, gp, t1
                  auipc        s11, 788974
                  sll          s0, a5, s6
                  srl          t2, s2, s3
                  andi         t5, tp, 236
                  srli         a7, ra, 7
                  sra          s9, a1, a6
                  sltiu        a2, a0, -1729
                  sltu         s5, t0, a1
                  srai         t5, s9, 2
                  sub          a6, gp, s0
                  srl          a2, t1, a0
                  ori          t6, a5, -1317
                  slti         a3, t0, 1988
                  sltiu        s1, t0, 699
                  auipc        s7, 776632
                  or           s8, a2, a4
                  slli         a3, s5, 14
                  sub          t3, a5, a0
                  andi         t5, a0, 359
                  ori          a3, sp, -70
                  andi         a3, s3, 151
                  sra          t0, s1, s2
                  xori         a7, a5, -1108
                  sltu         s2, s6, s2
                  and          t4, ra, s11
                  addi         s7, t4, 1052
                  or           t1, a5, tp
                  slli         ra, ra, 9
                  sltu         tp, s10, s10
                  sub          t3, tp, s11
                  sltiu        s3, a5, 131
                  xori         tp, s1, -282
                  and          a6, s1, s4
                  sra          t4, s8, s7
                  or           a2, s7, sp
                  andi         zero, a7, -787
                  srli         s0, s7, 28
                  and          t6, zero, s9
                  slti         a5, s5, -1924
                  srl          tp, t1, t3
                  add          a2, t4, s9
                  add          a6, a4, s2
                  slli         t0, t2, 7
                  lui          t2, 817698
                  lui          s2, 68981
                  sltu         a2, s11, s6
                  srli         t6, s5, 15
                  ori          s6, zero, 152
                  sltu         s3, t2, t5
                  xor          s6, a5, t6
                  sra          ra, ra, s6
                  andi         s1, t5, -1412
                  andi         tp, a5, -1505
                  nop
                  and          a6, ra, t2
                  lui          ra, 928079
                  slli         s2, s6, 9
                  srai         t2, s8, 31
                  srli         s9, s3, 10
                  sltu         s0, s8, s8
                  addi         s2, s10, 155
                  xor          tp, s11, s5
                  slli         s5, t4, 20
                  sll          a5, s7, s0
                  slli         s7, s9, 31
                  ori          s3, a0, 429
                  slli         t0, gp, 10
                  sltiu        tp, s6, 2029
                  or           s7, a7, gp
                  ori          s2, s0, 421
                  or           gp, a3, t5
                  or           ra, t1, a1
                  slli         s0, sp, 20
                  andi         gp, t0, -895
                  or           t2, a1, a0
                  auipc        s3, 326119
                  xor          s10, s3, a0
                  srli         a6, zero, 29
                  auipc        t0, 6095
                  and          t6, t1, sp
                  xori         s7, a1, -211
                  auipc        a6, 357883
                  slti         a5, a1, 210
                  sub          s1, s2, t2
                  sltu         a2, s8, s7
                  sltu         s7, s1, t6
                  sub          t1, a2, sp
                  nop
                  sra          t1, tp, t0
                  auipc        s4, 207534
                  srl          gp, s10, s10
                  sra          s0, s5, t3
                  sltu         t1, a4, s8
                  and          a7, s5, s5
                  slt          t0, s3, a5
                  add          a2, t3, a1
                  addi         s8, sp, 751
                  srl          t4, s4, s1
                  srli         t4, a1, 14
                  auipc        s11, 778673
                  sltu         s7, a5, t6
                  xori         ra, t2, -824
                  sltiu        s11, t5, -1371
                  sra          s0, a1, gp
                  slti         t1, t3, 1591
                  srli         s3, t4, 4
                  slti         gp, s9, -1711
                  slli         t2, s0, 15
                  addi         s0, a3, -1565
                  or           s9, s1, a2
                  slt          s9, s6, s0
                  slti         t6, a0, 1807
                  add          a6, s3, t4
                  andi         a5, s9, -146
                  andi         s11, t0, 321
                  or           a7, gp, s8
                  sub          tp, a6, t4
                  addi         s9, a4, -394
                  xori         s0, s5, -563
                  and          sp, s7, s4
                  sub          s2, zero, t0
                  sub          s6, t3, t3
                  srl          t4, t5, a5
                  sltu         t2, zero, t2
                  xori         tp, t2, 476
                  slt          t0, s5, s1
                  ori          s6, a6, -1516
                  sltu         s11, a2, s2
                  sltiu        a6, s7, 320
                  sub          tp, zero, s0
                  addi         s4, t4, 227
                  nop
                  sra          a2, ra, ra
                  nop
                  xori         s6, t4, -1215
                  nop
                  addi         s7, a6, 1184
                  sll          s5, s10, t3
                  srai         t6, a4, 18
                  lui          t1, 190100
                  sra          s6, s10, a1
                  slti         ra, a1, -464
                  auipc        t6, 223772
                  slt          s2, a2, gp
                  srai         a5, a1, 28
                  add          t6, s3, s6
                  slli         sp, t6, 15
                  xor          s3, s6, s4
                  nop
                  sltiu        a6, t1, 1894
                  srli         s8, s5, 16
                  sra          t1, a4, s6
                  add          s3, a6, s9
                  sltu         a3, a5, ra
                  xori         s5, s2, 1925
                  or           s4, a5, s3
                  add          a6, a0, s9
                  and          t2, a6, a6
                  slt          sp, t1, t2
                  srli         t2, a2, 19
                  xori         t3, a5, -255
                  ori          a6, a0, -1031
                  srli         tp, s8, 6
                  or           s5, t4, a2
                  srai         s2, t5, 17
                  sra          t6, ra, zero
                  ori          s11, t3, 360
                  xori         t1, a3, 37
                  sra          t0, s8, tp
                  sltiu        ra, a6, -979
                  slti         t4, s0, 1184
                  nop
                  and          s4, s11, a7
                  sll          s10, t2, gp
                  srai         s4, t5, 10
                  slt          s1, s9, a5
                  ori          s1, tp, 1666
                  add          a5, tp, t4
                  and          sp, t3, s9
                  srai         ra, zero, 27
                  slli         a5, t3, 7
                  xori         t3, a6, 780
                  slli         gp, a3, 30
                  addi         t3, s11, -377
                  auipc        ra, 1011052
                  sra          s3, t0, t2
                  sra          s8, a4, t6
                  slt          a6, s2, s2
                  sll          a2, a4, s10
                  addi         a5, a4, -749
                  srai         t0, a1, 13
                  sltiu        t1, s3, 940
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           s5, 0x0
                  li           s10, 0xb82756ca
                  li           s11, 0x6d7e9a56
                  li           t1, 0x80000000
                  li           a2, 0x0
                  li           t4, 0x0
                  li           s6, 0x80000000
                  li           s7, 0x0
                  li           s9, 0x80000000
                  sub          t1, a2, s9
                  add          s10, s7, s11
                  lui          s7, 716119
                  auipc        t4, 690503
                  sub          t4, s11, t1
                  auipc        ra, 48864
                  sub          t1, ra, s7
                  sub          s9, t1, s10
                  add          s7, s11, t1
                  add          s5, s6, s5
                  addi         a2, s7, 1653
                  nop
                  sub          ra, t4, s7
                  nop
                  sub          s11, s9, s5
                  lui          s11, 162054
                  lui          s10, 405518
                  lui          t1, 119178
                  nop
                  sub          s5, s6, s11
                  nop
                  lui          ra, 61960 #end riscv_int_numeric_corner_stream_10
                  auipc        sp, 658574
                  sltu         a2, s1, t2
                  add          ra, a3, a7
                  add          s2, s11, tp
                  addi         s6, a4, 1411
                  srli         ra, s7, 27
                  sltiu        s5, s10, 1647
                  ori          zero, s2, 1247
                  or           s4, s9, a6
                  add          t4, s4, s1
                  sltu         sp, s3, a7
                  andi         s9, a4, -811
                  slti         s11, a0, -428
                  slli         t3, s7, 1
                  slt          s5, s1, s2
                  srli         s8, a7, 12
                  slti         s11, s1, 840
                  and          s8, s1, ra
                  lui          s0, 843708
                  andi         s8, s11, -1456
                  xori         t1, a6, 1736
                  xor          s11, s1, s3
                  sll          gp, t6, s6
                  srli         ra, s7, 20
                  xori         zero, a4, 1028
                  sll          s1, s7, a6
                  srai         t2, tp, 1
                  srli         s10, a5, 28
                  sra          s4, a7, tp
                  andi         a6, s10, -763
                  slt          s6, tp, sp
                  sltu         s4, s11, s3
                  lui          s4, 497656
                  srai         t2, sp, 13
                  srai         a3, t6, 29
                  add          s1, a4, s7
                  slt          s7, s3, s4
                  or           a3, t6, s1
                  sltiu        a2, t5, 1565
                  xor          a2, s0, zero
                  lui          zero, 440707
                  xor          tp, s9, a6
                  sll          s2, s11, s6
                  auipc        s10, 804025
                  or           t2, a1, s6
                  sra          s1, a7, a4
                  or           s0, zero, t5
                  sltiu        s8, a5, 1929
                  sub          s5, s9, s6
                  xor          a7, s5, a5
                  ori          s5, s10, -1857
                  lui          zero, 354114
                  xor          gp, s0, t3
                  add          sp, s4, a0
                  sub          s1, t2, t2
                  ori          s10, zero, 966
                  andi         s5, zero, -805
                  srai         t2, a7, 16
                  add          t0, ra, s11
                  xori         a3, s7, 787
                  auipc        t0, 582197
                  lui          s0, 495662
                  sltiu        t6, t2, -1276
                  auipc        t0, 810252
                  andi         t1, t0, 1577
                  nop
                  auipc        a7, 639539
                  sra          t5, s9, a5
                  srl          ra, a5, t6
                  sltu         s7, t2, a3
                  sltiu        sp, s10, -1625
                  slli         t3, s3, 10
                  sltu         t5, a0, t5
                  lui          s1, 68093
                  slli         s9, tp, 8
                  andi         a6, ra, 1049
                  ori          ra, s10, 618
                  sub          s11, t0, s6
                  add          t6, tp, s2
                  andi         s9, s4, 134
                  srli         t6, s7, 23
                  xori         a3, s0, -800
                  andi         s2, gp, -550
                  sra          s9, s4, s4
                  srai         a5, a5, 2
                  slti         s10, a4, -2037
                  slli         t3, a3, 10
                  sub          a7, s11, s6
                  slli         s6, t6, 0
                  slli         sp, s2, 27
                  ori          t4, t4, 1572
                  xori         s10, a7, 595
                  slti         s1, a6, -592
                  andi         ra, s7, -1618
                  ori          a3, t0, 1546
                  addi         a2, a4, 913
                  xori         a5, a4, 1461
                  srli         t1, s9, 7
                  srai         ra, gp, 21
                  srli         zero, a1, 24
                  or           s4, s1, t5
                  sub          t4, s1, s6
                  add          tp, s9, t6
                  sub          t2, a7, ra
                  slli         t2, a4, 17
                  slli         s2, s11, 13
                  srai         s8, s11, 28
                  slli         s3, sp, 0
                  sll          a2, t1, s2
                  or           s10, s0, t1
                  sub          a5, a1, t1
                  sra          s9, sp, s4
                  srai         a7, t2, 15
                  srli         s7, a3, 18
                  lui          s3, 444327
                  srli         gp, s3, 22
                  add          s4, t0, s2
                  slli         a7, s4, 29
                  xor          tp, s10, sp
                  or           sp, s2, s6
                  addi         ra, t2, -1265
                  addi         s0, zero, -838
                  addi         s1, a2, 1100
                  or           s11, t0, s1
                  sltu         ra, s10, a6
                  xori         t3, s5, 980
                  or           a5, s5, ra
                  nop
                  sub          s4, t4, s7
                  sub          s2, t4, a1
                  srli         s1, s9, 21
                  sltiu        a5, a2, 1979
                  add          s10, s10, zero
                  nop
                  and          t4, a4, a6
                  sub          t1, a5, s3
                  ori          gp, a0, 1240
                  slti         s2, t1, -1968
                  addi         zero, s2, -981
                  add          ra, s8, s4
                  and          tp, t6, t1
                  xori         a3, t0, -209
                  srai         s8, s9, 5
                  sll          s1, s6, t6
                  nop
                  sll          s9, s9, t0
                  srli         t4, zero, 19
                  nop
                  srai         s4, s5, 28
                  sltiu        zero, t0, 1435
                  lui          s6, 728861
                  sll          sp, a7, s4
                  slli         zero, a2, 7
                  sub          t1, a2, t3
                  srl          s2, s5, a6
                  srli         s4, ra, 26
                  andi         s1, t6, 219
                  slt          a7, s9, a7
                  slt          a2, a0, a7
                  slli         s11, a1, 20
                  slti         s5, t4, -1893
                  slli         s8, tp, 7
                  slli         s9, t3, 7
                  auipc        s4, 287483
                  sltu         s1, s3, tp
                  or           s9, tp, t6
                  and          s8, s4, tp
                  addi         t0, s9, 655
                  xor          t3, a0, s6
                  sltiu        s5, t3, 1453
                  sltiu        a7, t2, 200
                  slli         s11, a5, 17
                  sll          s10, s10, s4
                  slli         a5, ra, 14
                  auipc        tp, 714070
                  add          s1, s0, s8
                  or           s4, sp, s11
                  nop
                  srai         s11, a0, 6
                  sltiu        tp, t3, 1655
                  sra          zero, a2, t0
                  xori         t3, s8, -470
                  and          t3, t6, a3
                  nop
                  sltiu        t6, a3, 1255
                  slti         s4, a7, 434
                  slti         t5, a0, -736
                  and          s7, t1, s2
                  slti         s4, s10, 1558
                  lui          t0, 1021100
                  sltiu        s8, zero, 2009
                  auipc        s2, 868745
                  auipc        t3, 496982
                  slti         a3, a2, -383
                  lui          s7, 1019785
                  lui          t4, 80174
                  auipc        s7, 426697
                  xor          a3, t2, s1
                  slti         t2, s11, -853
                  auipc        a6, 427313
                  slt          s10, t5, a5
                  xor          gp, a7, sp
                  addi         t6, sp, 919
                  add          s4, gp, t0
                  slli         tp, gp, 19
                  ori          s1, s7, -458
                  sll          sp, s11, a7
                  auipc        t5, 962417
                  sll          s6, a1, sp
                  srai         t3, s10, 21
                  add          s4, gp, a3
                  sra          a2, s0, s8
                  srai         a7, a5, 4
                  sltiu        s5, a0, 1533
                  sub          a2, a0, s7
                  addi         ra, t0, 520
                  sra          t3, s11, t2
                  nop
                  xor          s4, s10, zero
                  slli         s3, t6, 6
                  and          s7, s3, t2
                  and          s8, s5, gp
                  lui          sp, 840307
                  srli         s4, tp, 12
                  lui          s8, 106200
                  or           t0, s10, sp
                  sltu         a7, a2, t4
                  slti         s0, s10, -1003
                  xor          t6, a6, t3
                  sltu         ra, a4, t1
                  srl          s3, t2, a2
                  sltiu        t5, s8, 2005
                  lui          t4, 209863
                  slt          a2, s7, s10
                  sll          a6, a7, ra
                  slt          sp, a4, a2
                  auipc        s7, 931471
                  lui          a6, 317326
                  lui          s11, 558672
                  sltiu        zero, s6, -1417
                  slti         t0, s9, 836
                  nop
                  andi         s10, a5, -354
                  srai         s5, s0, 31
                  sra          sp, a4, s4
                  xor          t5, t6, t4
                  sll          a5, t1, s5
                  sltu         s7, t0, ra
                  andi         s5, t5, -859
                  slti         s2, s11, 251
                  slti         s1, s2, -1865
                  xor          tp, s10, s8
                  auipc        a7, 715263
                  sub          s1, s8, s2
                  add          sp, t1, a3
                  sra          s3, gp, s10
                  andi         a2, ra, -1000
                  slli         s8, t2, 29
                  ori          s8, s2, 1785
                  slti         t5, a5, 1214
                  auipc        sp, 815070
                  sub          t1, a6, s10
                  srl          a6, ra, s8
                  nop
                  slti         gp, s3, 1888
                  slli         t3, tp, 2
                  slli         t6, s6, 8
                  addi         t2, a1, 1374
                  xor          zero, s3, gp
                  or           s2, t4, t1
                  ori          t2, t6, -380
                  sltiu        s11, s0, -86
                  sra          sp, t3, t6
                  andi         s3, a5, 1373
                  slti         t6, t0, -1274
                  slt          tp, a6, t2
                  srl          a3, ra, s8
                  sll          t2, a2, s9
                  lui          t3, 499177
                  addi         ra, t0, -1852
                  sll          gp, a4, s10
                  lui          gp, 548336
                  sub          s5, s0, a0
                  add          s11, a1, ra
                  xor          tp, s5, t2
                  ori          s0, s11, -1951
                  xor          t0, sp, a6
                  sltu         s7, a1, t6
                  xor          s2, t0, zero
                  sub          gp, a4, s5
                  slt          s9, sp, a3
                  ori          tp, a0, 1161
                  xori         t5, a3, -24
                  sub          s1, a3, t3
                  auipc        s7, 720516
                  add          t3, a6, s11
                  sll          a2, a6, s3
                  andi         ra, s10, -1872
                  auipc        gp, 456316
                  auipc        s0, 779135
                  add          a7, a2, s1
                  auipc        s6, 745208
                  slt          sp, gp, t0
                  ori          t0, t6, -1811
                  or           s7, s10, tp
                  srl          s1, a7, a5
                  sll          s1, sp, sp
                  and          a3, s2, t0
                  sra          ra, a0, a4
                  xor          tp, tp, a6
                  slti         s6, ra, 1986
                  sltiu        s3, s0, 170
                  and          t2, zero, s3
                  slli         t0, s5, 12
                  xori         ra, a3, 1786
                  addi         a6, a6, -727
                  slt          t4, a0, a4
                  srl          s9, a1, s6
                  slti         s9, s8, 713
                  sltu         t0, s11, a7
                  srli         s0, tp, 23
                  slti         t3, t5, 991
                  srai         t2, zero, 26
                  addi         ra, a5, -89
                  srai         s2, a3, 0
                  addi         gp, s5, -1143
                  slt          t6, s2, sp
                  sll          s3, a6, s5
                  sra          s9, s7, s3
                  srli         t4, t4, 28
                  nop
                  or           s7, s0, t4
                  sra          a3, s3, s6
                  add          a3, a4, a6
                  srli         s9, gp, 29
                  add          s0, t5, t6
                  slt          s8, a4, a2
                  srl          s5, a7, s8
                  and          t6, s11, a0
                  sltiu        t3, a0, -153
                  srli         s5, t4, 8
                  xori         s3, a1, 344
                  and          a3, a1, a7
                  sub          t2, sp, s8
                  sra          s3, a1, t3
                  add          zero, ra, t2
                  slti         sp, a3, -673
                  lui          ra, 339859
                  lui          s9, 646591
                  sub          s8, t3, zero
                  andi         a2, t5, 1456
                  ori          t5, sp, 906
                  sltu         a2, a6, t1
                  nop
                  ori          tp, zero, -1936
                  and          s0, s5, a0
                  slti         s3, a4, -1825
                  sra          t5, t4, s0
                  slli         tp, sp, 4
                  ori          s3, a6, -1371
                  xor          a3, tp, a7
                  nop
                  sltiu        tp, t3, -546
                  srai         t2, t6, 25
                  sltu         s1, a5, a0
                  or           t1, sp, zero
                  sll          t6, a2, s10
                  srai         s9, a7, 24
                  and          zero, t0, s0
                  lui          s11, 533145
                  nop
                  auipc        tp, 852743
                  andi         ra, s5, 1815
                  srli         s0, s8, 20
                  sll          s11, a2, t2
                  sra          s1, s1, s10
                  slt          s3, a5, s5
                  sltu         s6, a2, t2
                  slti         s4, t6, -1322
                  srl          s1, gp, s2
                  sub          zero, s6, s11
                  srai         s6, t1, 18
                  sltiu        t6, a7, 1634
                  xor          s10, a6, a2
                  slti         s1, t3, -596
                  slli         s7, a7, 2
                  sll          s3, a7, t4
                  sltiu        s9, s11, -255
                  srl          gp, s10, s8
                  xor          s7, a6, sp
                  sra          s7, s2, tp
                  sltiu        s9, a0, 21
                  slli         s5, s7, 27
                  sub          s8, t5, a3
                  addi         s10, gp, -233
                  srli         a3, s7, 5
                  ori          s1, t0, -1360
                  slt          s6, sp, t4
                  slli         t5, a3, 24
                  slti         s8, t3, 2021
                  xor          s3, sp, s3
                  xori         s11, s8, 278
                  slti         t3, a6, -35
                  xor          s4, t3, t6
                  sub          t2, t5, s8
                  add          s3, t4, a4
                  sra          a6, t0, s0
                  xor          a7, ra, a7
                  xor          t4, t1, a3
                  slli         s2, t5, 18
                  slt          s2, a3, s5
                  srli         s5, a0, 16
                  xor          s9, t4, s8
                  add          gp, a4, a3
                  xori         t0, s7, -1441
                  lui          a5, 155673
                  srl          a2, a5, s10
                  sltiu        t6, t5, 102
                  xori         a7, s6, -1734
                  sra          s9, s10, t6
                  srl          t6, t6, s9
                  xori         s6, t2, 1001
                  sra          s4, s6, s5
                  xori         a5, t5, 1289
                  sltiu        a6, s8, -158
                  ori          ra, s8, 427
                  slli         zero, t4, 1
                  lui          a7, 710021
                  sltiu        a3, t6, 1288
                  xori         t0, a6, -825
                  nop
                  sra          t6, s7, gp
                  sll          a6, a3, tp
                  addi         s5, s10, 16
                  sltu         s4, a5, a1
                  xor          t6, s3, s7
                  sll          a2, s3, s11
                  xori         s5, t4, 1072
                  lui          zero, 683681
                  sll          s11, ra, gp
                  srli         s1, t4, 5
                  srl          ra, gp, s4
                  ori          s10, ra, -1244
                  sub          gp, s7, s2
                  slt          s6, sp, t0
                  nop
                  ori          t5, gp, -145
                  slti         s4, s11, -1013
                  slt          s5, sp, t1
                  sub          gp, s0, a3
                  srai         t5, t4, 11
                  slti         s6, ra, -1952
                  nop
                  srai         t1, t6, 26
                  sub          a7, t1, s7
                  slli         s5, a0, 9
                  sub          s6, t1, s4
                  sltiu        s6, a6, -134
                  xor          s11, sp, ra
                  slti         a5, gp, 41
                  or           s5, t6, s5
                  sltu         sp, s9, s4
                  xori         t2, a1, 1689
                  srl          a3, t6, s1
                  sltu         s11, t5, ra
                  sll          s8, sp, a7
                  srl          s8, t6, a7
                  add          s6, a1, t6
                  sltiu        t4, s4, -510
                  sltiu        s4, a1, -1437
                  sltu         s2, s2, s6
                  lui          t1, 480098
                  nop
                  slt          s3, a6, a0
                  slli         s10, a1, 7
                  lui          zero, 715686
                  xor          t0, a1, s0
                  slli         s1, a4, 7
                  nop
                  or           s3, a6, s7
                  srli         s8, s8, 27
                  slli         sp, a4, 12
                  andi         tp, sp, 599
                  srli         s3, a2, 21
                  lui          a5, 463373
                  srai         t2, s8, 8
                  sll          tp, s6, t3
                  srai         t1, a4, 1
                  andi         t6, s4, -57
                  andi         gp, t6, -1548
                  ori          t5, s8, 1674
                  xori         s6, tp, -1976
                  slli         s10, s0, 22
                  srli         t5, s4, 20
                  addi         ra, t3, -219
                  nop
                  xor          ra, t4, t2
                  nop
                  addi         a5, t4, 555
                  addi         t1, s4, -1944
                  srl          s4, s3, s0
                  sra          t0, s9, s6
                  add          t4, s4, s7
                  srai         a6, a6, 10
                  srai         s5, gp, 20
                  and          s8, t4, tp
                  lui          gp, 972964
                  slt          zero, sp, a5
                  sll          t5, s0, t6
                  sltiu        s11, sp, -1900
                  xor          a5, s8, s5
                  slt          s0, tp, t3
                  sra          t1, a1, t5
                  or           s7, s3, s5
                  sll          tp, a7, a3
                  sub          t2, a5, s0
                  or           s7, t6, s4
                  or           a5, a5, t1
                  slti         s11, t0, -1585
                  add          t4, tp, tp
                  add          s0, a3, a2
                  auipc        t6, 176792
                  nop
                  add          s10, t5, a2
                  ori          t3, a5, 266
                  or           a6, sp, s8
                  ori          s3, t2, 737
                  slt          a7, sp, t4
                  slli         a3, a6, 6
                  sra          t6, t3, sp
                  sll          a7, s3, ra
                  xor          tp, t2, s9
                  slli         t2, a3, 28
                  slli         s8, ra, 18
                  slt          s11, s10, s0
                  srai         s9, ra, 16
                  and          s8, t5, s6
                  srai         gp, a6, 23
                  ori          s2, a2, 1966
                  ori          gp, s5, -1613
                  sltiu        s11, ra, -951
                  add          a5, s5, a2
                  sll          s4, s11, a7
                  sltu         tp, s6, gp
                  sub          t2, s3, zero
                  sll          s6, s1, s7
                  slt          s7, s10, a3
                  sll          s6, a0, s4
                  sll          s8, t6, s9
                  sll          s2, t0, t3
                  ori          s3, s7, 1958
                  ori          t5, t1, 1029
                  sub          a2, sp, s9
                  auipc        s11, 273043
                  sltiu        gp, sp, 360
                  sub          a7, a3, ra
                  andi         gp, a0, -963
                  sltu         s11, t3, a0
                  xor          s10, s1, s0
                  addi         t3, a4, 1986
                  auipc        t0, 227570
                  srli         s5, t6, 28
                  and          s3, a1, s6
                  nop
                  or           s7, t4, zero
                  xor          s3, s1, a7
                  srl          t4, tp, s9
                  addi         a5, t3, 338
                  sltiu        s4, a2, 1592
                  srli         s8, t2, 17
                  andi         s8, a4, 13
                  xor          s8, tp, s9
                  ori          ra, s1, -515
                  srai         t3, t0, 23
                  srl          zero, t1, a2
                  slt          t5, s2, t1
                  srli         ra, a0, 4
                  srai         t0, s5, 26
                  sub          a7, s4, s8
                  srai         gp, t1, 10
                  xori         zero, a4, -446
                  sub          t0, a5, t3
                  sltiu        s9, t3, 1576
                  slt          gp, a4, a1
                  sltiu        t4, s2, 20
                  sra          s6, t3, gp
                  slti         a6, s3, -1487
                  andi         s2, a6, -309
                  andi         s6, s11, 877
                  slli         s9, a5, 18
                  srl          a6, a0, s8
                  sll          a7, t2, t1
                  xori         sp, gp, 84
                  or           t0, s2, t3
                  srli         t3, s2, 21
                  slli         gp, gp, 1
                  sltiu        t3, t5, -1274
                  andi         s8, a6, 824
                  nop
                  and          t2, s1, ra
                  nop
                  sltiu        a3, s0, 504
                  add          zero, t3, s4
                  srl          a3, s9, s8
                  add          s5, sp, a2
                  srl          a7, tp, s6
                  srai         gp, s2, 30
                  lui          s9, 972596
                  sltiu        s9, t6, -970
                  auipc        a3, 637291
                  xor          a7, s10, a1
                  auipc        s5, 36975
                  auipc        t4, 1014509
                  ori          s0, s10, 1310
                  xori         a5, s9, 1904
                  lui          t6, 893904
                  xori         tp, s1, 1718
                  ori          a3, s1, -1104
                  srai         ra, s6, 12
                  andi         gp, a5, 402
                  sltu         s3, t1, ra
                  or           a6, t1, s7
                  slti         s4, t2, -59
                  lui          s2, 741522
                  andi         s7, s10, -1024
                  slt          t6, a3, t1
                  lui          a5, 284255
                  auipc        a7, 234594
                  sra          a5, s4, s10
                  srai         a5, t6, 5
                  sltiu        s9, zero, 1212
                  auipc        s5, 993143
                  sltiu        a7, a7, -1269
                  srli         sp, a4, 17
                  and          t3, a0, s1
                  sra          gp, tp, a7
                  sltu         t6, s10, t2
                  sltiu        a2, s8, -1112
                  auipc        t3, 216238
                  srl          t4, s1, t2
                  slt          t4, s5, t6
                  auipc        t1, 45846
                  slli         a5, a1, 20
                  andi         t0, a2, -158
                  sltiu        a7, s10, 1401
                  sra          s1, s4, s4
                  srl          s4, s11, a5
                  add          tp, ra, s7
                  xori         s5, a7, 812
                  xori         t1, a0, 720
                  ori          t6, s9, 168
                  and          a5, s8, t4
                  sub          s7, tp, s0
                  and          a6, a5, s11
                  ori          s7, t4, 925
                  srai         a3, t3, 14
                  sltu         zero, a1, t2
                  xor          t2, s2, s7
                  sltu         ra, s5, a1
                  srl          ra, a6, s1
                  sub          t4, t4, sp
                  or           ra, s8, a6
                  sltiu        s4, a1, 1799
                  slti         s8, t0, 434
                  slt          gp, s10, t0
                  srli         s6, t1, 12
                  srai         gp, s5, 3
                  sltiu        ra, t6, -596
                  add          s10, a3, a0
                  slti         a7, gp, 1509
                  or           sp, s9, a3
                  srai         s2, s2, 29
                  sub          sp, a3, a5
                  slti         s3, s8, -1705
                  andi         s11, s3, 558
                  slt          a6, s0, a3
                  slti         s7, s9, 598
                  add          t6, a2, s7
                  sltiu        a6, s9, 1787
                  ori          t1, a2, -100
                  lui          a6, 262825
                  slti         tp, a1, 1913
                  addi         t4, s0, 538
                  slti         zero, t5, -632
                  xor          s1, s0, sp
                  srai         tp, s8, 13
                  xori         t6, a0, 580
                  sltiu        ra, a6, 1315
                  and          t1, s9, a3
                  add          t2, s11, t2
                  nop
                  andi         s11, s0, -663
                  srli         a5, t6, 22
                  xor          s6, tp, s1
                  slli         a3, s9, 16
                  sub          a7, ra, t4
                  sltu         gp, s3, s4
                  xor          tp, s5, tp
                  sltu         s11, a0, s10
                  auipc        ra, 427394
                  slli         a7, a2, 29
                  slli         tp, t4, 2
                  srl          t1, t4, a3
                  sll          s1, s2, s1
                  sub          s10, a3, a5
                  slti         t6, t1, 1088
                  xor          t1, s11, s9
                  srli         s6, s4, 25
                  srai         a7, sp, 6
                  andi         t5, t4, 1820
                  auipc        s3, 1022357
                  nop
                  sltiu        s3, s5, -405
                  sltu         s11, a2, s10
                  auipc        a3, 71074
                  ori          sp, s3, 747
                  ori          tp, a6, -116
                  ori          s1, s11, -893
                  srai         a3, a4, 1
                  sub          t4, t3, a7
                  or           zero, a5, tp
                  sltu         t0, gp, s8
                  sll          zero, s0, ra
                  srl          sp, s1, ra
                  addi         t5, s11, -949
                  lui          t4, 843240
                  sub          s3, ra, t0
                  nop
                  ori          gp, t6, -1086
                  sub          s2, s8, a1
                  lui          a5, 203053
                  sltiu        s3, t3, 428
                  slt          s4, a5, ra
                  ori          s4, t5, -1305
                  sltiu        t5, t5, 256
                  and          t0, t6, t0
                  slti         t6, s9, -626
                  srli         s6, a4, 12
                  slli         t0, s4, 0
                  sltiu        t3, s11, 776
                  slli         ra, a6, 6
                  addi         tp, t1, -1498
                  ori          s8, ra, 956
                  nop
                  nop
                  sll          s10, a2, s4
                  xori         s4, a5, -88
                  sltiu        t2, s0, -670
                  srli         t3, s4, 4
                  auipc        a7, 177559
                  xor          t0, zero, s11
                  xor          a7, s1, s10
                  add          t4, t5, t5
                  lui          t5, 97947
                  sltu         s4, t3, t5
                  add          a3, s2, s2
                  or           t5, gp, tp
                  auipc        sp, 159102
                  sltiu        s9, s9, 746
                  lui          t5, 632522
                  lui          s7, 865097
                  add          s9, t6, a0
                  and          a6, a3, t6
                  srli         t5, t1, 22
                  slt          s6, s0, a2
                  or           s1, a3, s9
                  lui          a5, 104171
                  add          s6, s2, s4
                  slli         t1, s4, 6
                  andi         s11, s6, -1405
                  nop
                  slli         t6, a0, 6
                  or           s0, gp, t1
                  auipc        t4, 135483
                  srli         s9, t3, 23
                  and          s9, t4, a5
                  slli         s2, gp, 8
                  srl          s4, a0, gp
                  slli         a2, t1, 0
                  sltu         tp, a0, gp
                  and          s7, a6, gp
                  srl          s5, s8, a6
                  auipc        t4, 578594
                  srli         a5, s8, 31
                  xori         s9, a6, 772
                  andi         s10, a0, -373
                  andi         t0, zero, -1752
                  sra          t4, sp, t5
                  slt          sp, a7, a3
                  srl          t1, s6, gp
                  addi         s2, s8, 862
                  and          a7, s2, gp
                  xori         s4, gp, -1917
                  slti         s8, t4, -792
                  slt          t3, a1, t5
                  sra          a6, s5, s0
                  srl          s5, a5, a1
                  nop
                  addi         a5, tp, -85
                  sltiu        t4, s11, 1657
                  sltu         a3, s11, t5
                  slli         ra, t2, 23
                  or           sp, gp, t3
                  sltu         s1, ra, s10
                  slli         t1, t5, 11
                  slt          t3, ra, s7
                  addi         t4, s0, 1809
                  ori          a7, s1, -390
                  srl          s0, a2, s9
                  add          t6, s10, s11
                  sra          s1, s9, zero
                  auipc        t5, 927866
                  xor          t2, a2, s6
                  and          ra, tp, ra
                  and          t1, t4, t1
                  xori         ra, t2, 327
                  addi         s11, s1, 1693
                  or           t6, tp, a6
                  and          t5, t1, a1
                  auipc        s10, 795693
                  or           s10, t3, s9
                  srai         t6, t1, 7
                  srai         s3, s8, 10
                  sltiu        s3, s0, -1080
                  sub          t6, a3, s4
                  srl          t5, s5, t0
                  slti         ra, a6, 871
                  sub          a5, s2, zero
                  lui          s4, 42618
                  sra          a6, a1, t0
                  srl          tp, s6, a5
                  or           a5, t0, t5
                  xori         t2, gp, -1719
                  and          t3, s7, zero
                  sll          t2, s0, s2
                  lui          a6, 992419
                  auipc        s2, 212514
                  srl          s7, s9, a4
                  auipc        s0, 604020
                  ori          s1, a7, -1479
                  addi         t1, t0, 19
                  xor          zero, s5, s6
                  srai         t1, s4, 19
                  xori         gp, s6, 382
                  sltiu        s8, s1, -634
                  xor          t5, s11, gp
                  slti         t2, t2, 1185
                  and          t3, a5, s7
                  nop
                  sra          s7, s3, a1
                  add          t3, sp, ra
                  sltiu        s2, s4, -1489
                  auipc        s9, 895132
                  sltu         s8, s2, s7
                  slli         s1, sp, 30
                  slti         t0, t4, 1052
                  slti         s2, s11, -54
                  sll          t4, a7, a0
                  lui          s6, 60653
                  slt          a7, a2, s3
                  sltiu        s3, ra, -1818
                  srai         a7, s9, 10
                  lui          t4, 308804
                  slli         s1, t5, 22
                  and          a5, s1, s10
                  slt          s7, t5, s4
                  nop
                  addi         s4, t0, -1092
                  or           a6, s8, t6
                  slti         s6, t0, 1187
                  sub          s0, t3, s6
                  sub          t5, t4, t5
                  sltu         ra, t0, s4
                  la x14, test_done
                  jalr x0, x14, 0
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_2:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_3:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_4:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_5:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_6:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_7:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_8:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_9:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_10:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_11:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_12:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_13:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_14:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_15:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x26, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x26, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x26, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x26, x9, ecall_handler
                  li x9, 0x1
                  beq x26, x9, instr_fault_handler
                  li x9, 0x5
                  beq x26, x9, load_fault_handler
                  li x9, 0x7
                  beq x26, x9, store_fault_handler
                  li x9, 0xc
                  beq x26, x9, pt_fault_handler
                  li x9, 0xd
                  beq x26, x9, pt_fault_handler
                  li x9, 0xf
                  beq x26, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x10, x11, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x11, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x11, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x10, x11, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x10, x11, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x10, x11, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
