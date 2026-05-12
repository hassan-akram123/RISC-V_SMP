.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x19, kernel_stack_end

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
                  li x0, 0x80000000
                  li x1, 0xfc366511
                  li x2, 0x0
                  li x3, 0x0
                  li x5, 0xfe120db3
                  li x6, 0x7
                  li x7, 0x80000000
                  li x8, 0xf5cfc040
                  li x9, 0x80000000
                  li x10, 0xf196783a
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x2
                  li x14, 0xf
                  li x15, 0xf
                  li x16, 0xf5a1f1cb
                  li x17, 0x0
                  li x18, 0x0
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x2
                  li x24, 0xe
                  li x25, 0xfb643222
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0x0
                  la x4, user_stack_end
main:             li           s11, 0xbd018a0a #start riscv_int_numeric_corner_stream_11
                  li           s10, 0x53a7b4b3
                  li           s6, 0x0
                  li           a5, 0x80000000
                  li           sp, 0x0
                  li           s0, 0xd38f55dd
                  li           ra, 0xffffffff
                  li           t6, 0x80000000
                  li           t3, 0x80000000
                  li           t5, 0x80000000
                  lui          ra, 305067
                  auipc        s0, 833117
                  lui          s11, 180577
                  nop
                  lui          t3, 591386
                  nop
                  lui          s10, 503743
                  auipc        s10, 561694
                  addi         ra, t6, 486
                  add          s10, s0, sp
                  add          s6, s10, sp
                  sub          s0, a5, sp
                  auipc        ra, 962445
                  auipc        s6, 793850
                  sub          s10, s11, s11
                  addi         t6, t3, -998
                  auipc        t3, 928501
                  lui          ra, 969084
                  add          sp, sp, t5
                  add          t6, s6, ra #end riscv_int_numeric_corner_stream_11
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           s8, 0xef9787bf
                  li           t1, 0x80000000
                  li           s7, 0xffffffff
                  li           t4, 0xffffffff
                  li           s11, 0xf557e04b
                  li           t2, 0x0
                  li           s9, 0x280faef
                  li           s5, 0x80000000
                  li           a5, 0x0
                  add          t6, s7, t4
                  sub          s5, s5, s11
                  add          a5, s7, s11
                  sub          t1, s7, a5
                  nop
                  auipc        s11, 872503
                  auipc        a5, 778151
                  nop
                  auipc        t6, 819073
                  lui          s11, 1033327
                  add          s9, s9, s8
                  addi         t2, s9, -1207
                  auipc        t4, 175142
                  addi         s5, a5, 1940
                  sub          a5, s8, t4 #end riscv_int_numeric_corner_stream_16
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s6, 0x30311daa
                  li           s1, 0x80000000
                  li           t6, 0x80000000
                  li           t4, 0xffffffff
                  li           t5, 0x0
                  li           a6, 0x80000000
                  li           a4, 0xe8f46680
                  li           s4, 0x80000000
                  li           t1, 0x0
                  lui          t4, 967927
                  addi         a1, a1, 377
                  auipc        t6, 368255
                  lui          a4, 989943
                  auipc        t6, 901705
                  sub          a1, s4, s4
                  sub          t4, s6, s1
                  auipc        s1, 287407
                  auipc        s4, 540263
                  nop
                  addi         a6, a4, 1354
                  addi         a1, s1, 724
                  add          a6, a4, t5
                  lui          s6, 482736
                  auipc        t4, 114344
                  lui          a6, 330260
                  sub          a4, t4, s6
                  lui          s4, 753186
                  nop
                  nop
                  nop
                  add          s1, t5, a6
                  addi         s6, t6, -1960
                  auipc        a4, 840481
                  sub          s4, t5, s6 #end riscv_int_numeric_corner_stream_5
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           a4, 0x65275c4c
                  li           a3, 0xffffffff
                  li           gp, 0xffffffff
                  li           a7, 0xf8c9b3c4
                  li           s7, 0x8f8cd41d
                  li           t3, 0xffffffff
                  li           ra, 0x80000000
                  li           s9, 0x8fed1448
                  li           s1, 0x1403c28e
                  auipc        sp, 422673
                  auipc        s7, 442661
                  nop
                  addi         a3, a3, -1754
                  add          ra, a4, ra
                  add          s9, a4, t3
                  nop
                  addi         ra, s9, 689
                  nop
                  sub          s7, a3, gp
                  addi         sp, sp, -1258
                  lui          ra, 678484
                  add          gp, gp, t3
                  addi         gp, a3, 1054
                  auipc        t3, 561799
                  auipc        s1, 163245
                  nop
                  sub          a3, ra, t3
                  add          t3, a3, a7 #end riscv_int_numeric_corner_stream_13
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           a1, 0xffffffff
                  li           t0, 0x80000000
                  li           s2, 0xffffffff
                  li           t1, 0xffffffff
                  li           a3, 0xffffffff
                  li           sp, 0x80000000
                  li           a2, 0xffffffff
                  li           s7, 0x2c618fd0
                  li           s9, 0xc03cf47f
                  addi         s5, t0, -614
                  addi         a2, t0, 1337
                  sub          t1, s9, a1
                  addi         sp, t1, 557
                  lui          a3, 363926
                  auipc        s2, 112464
                  sub          sp, t0, a1
                  nop
                  nop
                  sub          s7, s2, a3
                  sub          s2, sp, a2
                  lui          s7, 799283
                  addi         t0, sp, -1155
                  add          s2, a3, t0
                  addi         t1, s5, -199
                  addi         t0, s5, 1175
                  sub          s2, a3, sp
                  lui          t0, 925963
                  auipc        s5, 587363
                  auipc        sp, 274097
                  addi         s5, a1, -929
                  lui          sp, 721973
                  nop
                  sub          a1, s7, t1
                  addi         a3, s7, -1979
                  add          t0, a1, sp
                  addi         a1, a3, -1971 #end riscv_int_numeric_corner_stream_12
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           a7, 0xffffffff
                  li           t2, 0x717f8966
                  li           s2, 0x3e93b1b0
                  li           s7, 0x80000000
                  li           t4, 0xffffffff
                  li           s11, 0x8b1f9cfa
                  li           s4, 0xffffffff
                  li           t5, 0x1b40fed8
                  li           s0, 0x80000000
                  nop
                  add          t2, a7, s11
                  auipc        a7, 910423
                  lui          t1, 503977
                  sub          s7, t4, t1
                  sub          s11, a7, s7
                  add          a7, t4, s11
                  add          t4, s2, t4
                  addi         t1, s0, -291
                  auipc        s2, 206455
                  add          s7, t2, s2
                  lui          s4, 917945
                  auipc        t2, 648261
                  add          t5, t2, s2
                  sub          a7, t2, t1
                  nop
                  lui          t1, 564445
                  addi         s11, a7, 1214
                  lui          s0, 919247
                  addi         t4, s11, -9
                  lui          t2, 877906
                  lui          t5, 707810
                  addi         s7, s0, 526
                  lui          t5, 671352
                  lui          s4, 796842
                  auipc        s4, 231770
                  auipc        s2, 974082 #end riscv_int_numeric_corner_stream_14
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           ra, 0xffffffff
                  li           a3, 0xffffffff
                  li           s9, 0xffffffff
                  li           a4, 0x80000000
                  li           t5, 0xffffffff
                  li           s4, 0x80000000
                  li           s1, 0xffffffff
                  li           sp, 0xb31ad7b8
                  li           s5, 0xffffffff
                  sub          a3, s9, t5
                  sub          s4, sp, a3
                  add          sp, sp, s9
                  nop
                  lui          a6, 458117
                  lui          a6, 71080
                  add          a6, a3, s9
                  add          a4, sp, s4
                  auipc        a3, 1045305
                  addi         s4, a4, 1172
                  lui          sp, 471598
                  nop
                  auipc        s1, 784557
                  sub          a4, s5, sp
                  auipc        a3, 916448
                  auipc        ra, 17101
                  add          s9, a6, ra
                  nop
                  lui          ra, 560570
                  addi         a6, t5, 1067
                  add          s4, s4, t5
                  auipc        s1, 293578
                  add          ra, s1, a4
                  lui          s1, 53719
                  auipc        s4, 981431
                  nop #end riscv_int_numeric_corner_stream_18
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s9, 0x7e95355a
                  li           t1, 0x518be575
                  li           a4, 0x80000000
                  li           s1, 0x0
                  li           a1, 0x80000000
                  li           a3, 0x0
                  li           s0, 0x54c2d6df
                  li           t6, 0x0
                  li           a7, 0xcf585d69
                  add          t6, a3, s9
                  nop
                  sub          a4, s9, s1
                  lui          a1, 839482
                  auipc        ra, 111375
                  addi         a7, t6, -1788
                  lui          a1, 589730
                  nop
                  addi         t1, s1, 1103
                  lui          t6, 690033
                  nop
                  sub          a3, t6, t1
                  add          s0, a4, t6
                  nop
                  nop
                  lui          a7, 682381
                  lui          t6, 877209 #end riscv_int_numeric_corner_stream_10
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s1, 0x0
                  li           a1, 0x0
                  li           t3, 0x0
                  li           t4, 0xffffffff
                  li           a3, 0x0
                  li           s10, 0x3e245d77
                  li           s9, 0x0
                  li           t5, 0xffffffff
                  li           t1, 0x0
                  addi         s10, a3, -1359
                  nop
                  lui          s1, 508622
                  auipc        t3, 761209
                  sub          s10, s10, t4
                  add          s1, a1, a1
                  addi         s10, a1, 1988
                  nop
                  addi         t1, s1, -119
                  sub          t5, s9, s10
                  nop
                  addi         s1, s1, -1594
                  auipc        t5, 309846
                  nop
                  lui          a1, 741148
                  lui          t5, 523202 #end riscv_int_numeric_corner_stream_2
                  li           a6, 0x419060d5 #start riscv_int_numeric_corner_stream_7
                  li           s5, 0xc1ff995c
                  li           t0, 0xffffffff
                  li           t5, 0xffffffff
                  li           s9, 0x80000000
                  li           a4, 0xac07ec2f
                  li           t4, 0x80000000
                  li           a7, 0x0
                  li           t3, 0xf4e19d12
                  li           s11, 0x80000000
                  lui          a7, 1007601
                  nop
                  lui          s11, 879955
                  add          t0, s5, a4
                  nop
                  sub          t3, a4, t0
                  sub          t3, a7, t0
                  nop
                  lui          t0, 634419
                  auipc        a7, 900931
                  nop
                  sub          s9, t3, t3
                  lui          a7, 909999
                  add          a6, s11, a6
                  lui          a4, 195946
                  nop #end riscv_int_numeric_corner_stream_7
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           s8, 0x80000000
                  li           a7, 0x0
                  li           s11, 0x0
                  li           a3, 0x80000000
                  li           a2, 0x0
                  li           s5, 0x80000000
                  li           s9, 0x0
                  li           t0, 0x112dc10c
                  li           a1, 0x0
                  lui          t0, 75494
                  sub          t0, s11, t0
                  auipc        s8, 416820
                  add          a2, s11, s8
                  auipc        a7, 653983
                  lui          t0, 208375
                  nop
                  lui          s8, 249952
                  nop
                  add          t0, t0, s11
                  sub          a1, t0, a1
                  addi         s8, a2, 924
                  nop
                  addi         a7, s11, -1930
                  addi         s11, s5, 871
                  addi         s0, a3, -571
                  auipc        s8, 441132
                  add          s0, a3, t0 #end riscv_int_numeric_corner_stream_8
                  and          s9, zero, t6
                  srl          t5, tp, s10
                  slti         s1, s6, -1743
                  andi         s2, ra, 1527
                  sra          s5, ra, s5
                  xori         s5, s4, 350
                  and          a6, tp, s2
                  lui          zero, 651537
                  srl          a7, s6, s8
                  sltu         a1, tp, a2
                  lui          s8, 459219
                  ori          t5, s1, 216
                  slt          s6, s6, ra
                  xor          s6, s5, sp
                  nop
                  srl          gp, s1, s6
                  slti         sp, t0, -496
                  slt          s10, zero, a7
                  sll          s9, sp, t0
                  sltiu        t0, s2, -1792
                  slt          s7, s5, a1
                  sltu         a1, t0, t3
                  ori          s5, t5, -1617
                  and          a4, s4, s9
                  srli         s6, t1, 16
                  srai         a4, s10, 1
                  slt          t5, s9, t0
                  sltiu        t4, s3, 679
                  slt          a7, ra, s3
                  srai         t5, s5, 18
                  sltu         t5, t4, s5
                  andi         t5, sp, -335
                  addi         t2, sp, -1160
                  ori          gp, a4, 1197
                  slti         s0, a7, -1420
                  nop
                  sra          a5, s1, a3
                  srli         t4, a1, 18
                  sltiu        a1, s4, -666
                  add          s10, s6, a5
                  slti         a5, a2, -341
                  or           ra, t0, t3
                  and          zero, s5, t4
                  sra          t0, s6, a3
                  srli         t2, s0, 11
                  ori          s9, s6, 1867
                  sltiu        a3, s6, 1731
                  srl          a2, a4, a5
                  sub          s5, tp, a2
                  sra          ra, s3, t2
                  sltiu        s0, a4, 1759
                  xor          t6, s2, sp
                  add          s7, a3, a1
                  ori          s11, t4, 709
                  ori          t3, s3, -940
                  slli         s6, gp, 1
                  addi         zero, a6, -1278
                  and          a7, t5, t0
                  srl          a5, a7, a4
                  ori          s8, t4, -1614
                  and          s1, t0, s8
                  auipc        a5, 774122
                  slli         s5, t3, 21
                  slli         a5, s1, 19
                  xori         s2, t5, 1
                  slli         t3, tp, 28
                  addi         s4, a6, -1325
                  slli         t0, a2, 24
                  sltiu        a3, s7, -523
                  addi         t5, s5, 986
                  xori         s10, s3, -1348
                  lui          a3, 424208
                  srai         s4, t0, 23
                  and          t3, a4, t6
                  sll          a7, s9, t0
                  slt          a5, t4, s5
                  auipc        s7, 6297
                  srli         s7, a3, 2
                  slli         s7, t6, 20
                  xori         a1, s5, 1056
                  slt          sp, ra, a3
                  or           s4, s2, s0
                  xor          zero, t4, a0
                  sll          a3, zero, a6
                  auipc        a3, 1005487
                  ori          s2, a5, 117
                  andi         zero, s9, -1509
                  sub          s4, t5, a5
                  sra          s5, s7, ra
                  lui          t0, 409539
                  sub          s4, t6, t1
                  and          s10, t3, s9
                  lui          ra, 810334
                  srl          zero, t3, t4
                  slti         a6, tp, -796
                  nop
                  add          a4, t4, t6
                  sll          a1, t5, zero
                  sub          t1, ra, tp
                  srai         gp, s11, 15
                  lui          s11, 93203
                  andi         s7, s1, 1357
                  sltu         a7, s10, s10
                  slli         s7, a2, 3
                  auipc        t0, 843518
                  slli         ra, s8, 29
                  sub          s1, t2, s6
                  lui          gp, 48760
                  sltiu        t0, a6, -1617
                  auipc        s0, 190950
                  srli         a5, zero, 25
                  xor          s11, s7, t5
                  auipc        s2, 507373
                  srli         s0, t6, 0
                  addi         a5, a5, -1752
                  srai         t6, t0, 15
                  srai         t2, t0, 18
                  slt          s11, a3, tp
                  sra          s10, s1, sp
                  srli         t5, s9, 17
                  xori         gp, s0, -1993
                  addi         sp, s0, -1726
                  addi         s0, t6, -1426
                  auipc        sp, 922127
                  srai         s11, t6, 13
                  sltu         a4, t5, t1
                  sub          t3, tp, s11
                  xor          t5, a2, s8
                  add          gp, a3, s1
                  sub          s2, sp, s10
                  srl          t1, s8, a2
                  slti         a4, s6, 1058
                  srai         t6, t0, 19
                  ori          t2, a2, 1821
                  slt          s2, t4, t2
                  sub          gp, t1, sp
                  sltiu        a5, t2, 593
                  andi         a6, s1, 2027
                  slti         s0, a2, -502
                  addi         s9, a2, 1134
                  sra          t5, t5, a6
                  nop
                  or           a6, s2, a2
                  add          t5, s11, a6
                  slli         a5, t2, 18
                  andi         a5, gp, -1355
                  and          s6, t6, s6
                  and          t1, ra, s11
                  sub          ra, s7, s5
                  sll          s8, s3, s7
                  ori          ra, tp, 1564
                  xori         t1, a4, -181
                  sll          s4, a5, a3
                  auipc        t5, 526879
                  nop
                  sub          a5, tp, gp
                  xor          gp, a5, a3
                  addi         s9, tp, 1119
                  and          s11, s8, a0
                  nop
                  slli         s1, t1, 26
                  xor          a5, tp, ra
                  srli         a1, s11, 15
                  srli         s11, s9, 11
                  andi         s5, a5, -1495
                  nop
                  andi         s9, s7, -59
                  slli         s8, t6, 23
                  srli         gp, t3, 28
                  slti         a2, s3, 906
                  xor          a2, a0, a1
                  srli         a5, s11, 25
                  slti         t6, t2, 1488
                  sltiu        t4, s5, -461
                  andi         a7, s9, -756
                  andi         t2, s3, 1657
                  slt          s9, s4, t1
                  sltu         s9, s10, s4
                  slli         s10, s10, 7
                  nop
                  sltu         zero, s8, s10
                  xor          t5, tp, a3
                  auipc        a6, 8843
                  lui          a5, 631098
                  and          t6, s4, t6
                  lui          t4, 500467
                  xor          t2, a4, a5
                  sll          s8, t1, t4
                  sra          a4, s9, sp
                  sltu         t4, a0, s2
                  xori         t5, t2, 1972
                  nop
                  srai         s11, sp, 23
                  slti         s0, t0, 1102
                  srai         t5, t6, 28
                  add          a6, a4, s10
                  srl          sp, tp, t0
                  or           t3, s9, a1
                  sltu         s9, s10, s9
                  xori         s2, a1, -914
                  addi         a5, a7, -1464
                  xori         gp, ra, 204
                  slti         s11, s2, -1728
                  nop
                  lui          zero, 476322
                  nop
                  nop
                  nop
                  add          t3, ra, s0
                  slti         t5, a2, -200
                  srai         a3, gp, 4
                  lui          s5, 1011372
                  sltiu        s11, a7, 385
                  addi         t1, a3, 1667
                  slt          t6, a7, s8
                  slt          a2, a1, zero
                  and          zero, s7, t1
                  xori         s7, t3, -439
                  sub          t4, s11, s5
                  srai         t0, s3, 26
                  slt          a4, s4, tp
                  sub          a4, a0, s1
                  auipc        a4, 508109
                  addi         a7, s11, 1170
                  sltiu        a7, a5, 1105
                  andi         t5, a7, 35
                  or           t6, t5, s5
                  srai         t2, s10, 8
                  sra          s10, t1, s2
                  lui          t0, 695964
                  sra          s0, t4, s10
                  nop
                  nop
                  srli         t2, zero, 13
                  srli         gp, tp, 13
                  addi         s11, s7, 1577
                  nop
                  and          t5, s7, a5
                  slli         s8, t5, 2
                  slti         t0, s6, 1165
                  addi         s8, a6, -1342
                  srl          sp, a4, t5
                  xori         gp, s0, -9
                  and          s0, s10, ra
                  srli         t4, s0, 29
                  xor          t4, t4, t5
                  sra          s9, t3, a4
                  ori          s2, s6, 313
                  auipc        s10, 774191
                  sltiu        s0, s9, 525
                  xor          s0, a5, s11
                  slti         zero, t6, -1167
                  srl          zero, a1, t1
                  xor          a7, t0, s6
                  lui          t3, 204407
                  sll          s2, s2, s7
                  srli         t2, a3, 31
                  add          a6, s5, s7
                  srl          gp, s2, s0
                  andi         a1, s2, -640
                  lui          a1, 667570
                  slti         t6, t5, 1046
                  andi         t6, s10, 461
                  slli         zero, s3, 19
                  srai         sp, a0, 28
                  slt          s6, s1, s9
                  srai         s8, s6, 4
                  xor          a4, t0, a2
                  ori          t2, s8, -361
                  and          a3, s3, t4
                  srai         s11, gp, 29
                  auipc        t5, 967252
                  auipc        s10, 9373
                  slt          a1, s5, sp
                  slt          a2, s8, s1
                  sub          a7, a4, a6
                  lui          s9, 658367
                  sra          gp, s4, a6
                  or           a6, s0, t4
                  andi         s8, s10, -1883
                  xori         t5, t6, -1670
                  srl          a1, s0, ra
                  xor          t3, s5, s3
                  xor          ra, s8, s7
                  ori          t5, t1, 1392
                  auipc        t1, 660265
                  add          t3, gp, a0
                  sltiu        s8, t4, 29
                  srl          s8, s8, s1
                  ori          t3, t2, -55
                  sltiu        s2, t0, 2024
                  add          t4, a0, s3
                  nop
                  srl          s1, s4, s3
                  slt          a7, s1, ra
                  xori         t1, a0, -595
                  auipc        s4, 204522
                  sll          s5, a6, a2
                  nop
                  slli         t5, s11, 12
                  slti         t4, gp, -836
                  nop
                  xori         s10, t4, 869
                  slli         t3, s6, 2
                  srl          t6, ra, a5
                  sltu         t4, s1, a7
                  srai         a1, a4, 30
                  addi         s1, gp, 1191
                  ori          a5, s7, -1231
                  add          s8, t2, zero
                  slt          sp, tp, s10
                  ori          a7, t4, -1733
                  slli         s0, s10, 31
                  sub          s10, a5, s8
                  nop
                  sub          sp, s6, t1
                  ori          s9, s9, -832
                  or           a4, s3, t5
                  sltu         a5, s5, t2
                  or           t3, sp, a1
                  sltiu        s0, s2, -1929
                  sll          s11, t3, s3
                  srli         s4, a4, 27
                  auipc        t3, 573297
                  auipc        s1, 941006
                  and          a3, s10, ra
                  sub          a5, a1, ra
                  sub          t2, tp, t3
                  sltiu        a6, t0, -1452
                  srl          s9, s6, a6
                  nop
                  srai         s10, a1, 2
                  add          t5, s5, a6
                  sltu         s2, a6, a6
                  sltiu        s9, a0, 1835
                  nop
                  xori         a3, a3, -205
                  srli         s0, tp, 27
                  srai         s9, a6, 7
                  add          t6, a3, a2
                  sra          t6, s3, t1
                  ori          s7, t4, -423
                  or           t6, sp, t2
                  auipc        s7, 964511
                  sltiu        t3, tp, -631
                  sltiu        t6, a2, -1386
                  slti         a2, a0, -1801
                  nop
                  sltu         s8, s11, s11
                  xori         t1, t4, -1115
                  lui          a1, 521902
                  sltu         s6, t1, t1
                  slt          t5, t5, s5
                  slti         s7, s5, -1388
                  sll          a3, s10, t3
                  addi         a4, t5, 794
                  auipc        s11, 203638
                  srl          s8, s10, a5
                  auipc        s10, 19608
                  slt          s2, s9, s4
                  sub          t6, t0, s9
                  sll          t4, a0, t1
                  ori          sp, a0, 709
                  lui          t4, 906855
                  srai         t6, s5, 28
                  sltiu        s6, a6, -1964
                  and          s5, t0, s5
                  slli         t4, tp, 19
                  sltiu        s11, zero, -145
                  srai         s0, s9, 14
                  xori         t1, a7, 425
                  sub          t0, a2, a2
                  xor          t2, t2, a2
                  and          ra, a3, s5
                  xor          zero, a7, s9
                  sll          s1, t5, a4
                  sll          a7, s11, s9
                  slti         s1, tp, 1310
                  sll          a2, a1, t5
                  slti         s1, s8, -1450
                  andi         s1, s8, 1100
                  srl          s7, s1, t3
                  xor          s7, s6, t6
                  sltu         ra, s8, a7
                  srai         s6, a1, 24
                  and          zero, s9, zero
                  slt          t2, a5, a3
                  and          s9, a7, s9
                  sltiu        s1, s8, 1751
                  or           t3, a4, a3
                  or           a6, t3, zero
                  ori          a3, s0, 126
                  lui          t6, 515683
                  slti         s5, a3, -205
                  sll          a2, a2, t3
                  srli         t1, a1, 20
                  lui          t4, 397104
                  xor          t4, t2, gp
                  auipc        ra, 199015
                  slt          a1, t3, t5
                  slti         s10, t3, -1528
                  slti         t0, a0, -1972
                  add          s0, a3, s6
                  nop
                  addi         a7, a3, -1063
                  add          a6, t6, a1
                  auipc        t1, 839385
                  sltu         zero, tp, s1
                  sltiu        t6, a0, 2005
                  slti         s2, a7, 341
                  ori          ra, a6, 698
                  and          t0, s5, ra
                  srli         t2, t5, 19
                  sltu         s4, gp, a0
                  sltiu        s6, s2, -783
                  or           s8, a7, a6
                  slti         s4, s7, -174
                  sltu         s0, s4, t5
                  slli         a2, ra, 26
                  xori         t0, s4, 1004
                  slti         s2, s1, 232
                  srl          t5, sp, a1
                  xori         a3, a4, -681
                  sra          s1, s1, gp
                  srli         a4, ra, 15
                  sub          a1, s2, gp
                  slli         t1, t1, 19
                  slti         t4, a6, -1767
                  slti         s6, zero, 38
                  xori         s5, s8, -789
                  add          t5, tp, ra
                  xori         s4, a1, 1178
                  add          s9, s4, s8
                  auipc        sp, 241107
                  or           t0, zero, a7
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           a1, 0xffffffff
                  li           t0, 0xffffffff
                  li           sp, 0xffffffff
                  li           t5, 0xffffffff
                  li           a4, 0xffffffff
                  li           s7, 0xffffffff
                  li           s1, 0xf17f5a6a
                  li           t6, 0x0
                  li           s0, 0xffffffff
                  nop
                  nop
                  nop
                  lui          s6, 690650
                  auipc        a1, 202358
                  nop
                  auipc        a1, 628218
                  auipc        sp, 363468
                  nop
                  auipc        a4, 316588
                  add          a1, s6, sp
                  nop
                  add          sp, a1, sp
                  auipc        a1, 4315
                  nop
                  auipc        s7, 68469
                  addi         s6, sp, -1063
                  add          s7, t6, s7
                  nop
                  add          t6, a4, sp
                  add          s0, s7, t0
                  lui          t5, 279385
                  auipc        a4, 857038
                  nop
                  sub          sp, a1, sp
                  auipc        s6, 435566
                  auipc        s7, 683569 #end riscv_int_numeric_corner_stream_19
                  sll          t1, s10, ra
                  add          ra, sp, t3
                  sltu         t4, t6, s10
                  auipc        gp, 167715
                  slti         gp, t1, 1368
                  xori         a1, t2, 1425
                  srli         a4, a3, 15
                  or           a3, a3, a5
                  srl          t1, ra, sp
                  xori         sp, s8, -985
                  slti         zero, t1, 1342
                  slli         t6, s0, 23
                  srl          s1, a2, s1
                  xori         s2, s6, -1817
                  srai         s10, s1, 0
                  sll          a2, t6, t0
                  addi         s6, sp, 659
                  xor          a6, s4, s4
                  sra          t0, sp, t0
                  sll          s7, a4, s5
                  sltu         ra, t4, s10
                  srli         a2, sp, 4
                  slt          s0, s6, a0
                  srli         s9, a2, 17
                  srl          a2, t1, s3
                  sll          s0, s9, t5
                  srl          s7, s2, s4
                  andi         ra, t6, -267
                  add          a7, gp, a1
                  addi         s8, a5, 860
                  nop
                  or           t4, a1, a5
                  auipc        a3, 945445
                  slt          t6, t4, t4
                  and          t6, t4, zero
                  addi         t3, gp, -203
                  slli         s8, a4, 3
                  slt          t1, t3, s4
                  addi         s4, s6, 554
                  slt          s6, a1, s0
                  sltu         s4, s10, t6
                  srai         t3, s9, 6
                  andi         s6, t2, 820
                  slti         a7, a3, -404
                  or           a2, s11, tp
                  srai         a7, a0, 19
                  slt          t4, s10, ra
                  srl          t5, s10, a2
                  srai         a1, s8, 18
                  xor          a2, tp, a2
                  sltiu        s4, sp, -1318
                  sltiu        a5, s2, 1533
                  srl          s10, s4, t0
                  srl          a4, zero, a6
                  ori          s0, a7, 1858
                  nop
                  sra          s4, s10, zero
                  andi         s7, a4, -17
                  nop
                  xori         t1, s6, 1184
                  nop
                  or           t2, s6, a4
                  slli         t4, t3, 7
                  andi         s10, s4, -1048
                  slli         a7, gp, 12
                  nop
                  srli         a2, t2, 15
                  slli         s9, t0, 28
                  srli         a4, s8, 22
                  sra          t6, a1, a4
                  srl          gp, s8, t2
                  nop
                  auipc        a2, 648021
                  and          gp, zero, s2
                  sub          sp, a3, zero
                  nop
                  sra          s7, s10, a2
                  xor          zero, s0, t1
                  auipc        s5, 61831
                  andi         s2, a6, 626
                  lui          s7, 18822
                  andi         s9, s9, 1620
                  sra          a3, a7, zero
                  srai         a5, a2, 9
                  or           s0, s10, a7
                  add          s7, s4, a1
                  add          t4, s1, t3
                  add          ra, zero, s4
                  srli         a1, s4, 7
                  nop
                  srli         sp, t3, 0
                  srai         a4, s7, 21
                  sltiu        t2, s9, -409
                  srl          a2, sp, s2
                  slti         s4, a7, -880
                  sltiu        zero, s7, 1469
                  sub          t4, t6, s9
                  sltiu        a6, s11, 1463
                  addi         s5, t0, -1594
                  auipc        a4, 92184
                  andi         s5, a2, 585
                  nop
                  srai         t4, t3, 14
                  srl          s9, t2, t0
                  xori         ra, zero, -499
                  sltiu        gp, s7, -1556
                  and          s6, s6, t3
                  sltu         ra, a0, sp
                  sub          s1, a0, ra
                  auipc        zero, 28661
                  and          s7, a0, a3
                  addi         s11, s7, 884
                  xor          a7, zero, sp
                  or           sp, t3, s0
                  xor          a3, a6, t0
                  xori         a5, t2, 965
                  xori         a3, a3, -1968
                  nop
                  xor          s2, t0, gp
                  slli         t0, a6, 10
                  auipc        t2, 52477
                  slt          t3, t0, s6
                  sltu         a4, s11, sp
                  addi         t3, s7, -419
                  slt          s2, s5, a2
                  nop
                  sra          s7, a4, s3
                  sltiu        t5, gp, 123
                  sll          a1, sp, a7
                  lui          s9, 768495
                  sra          a1, s1, t2
                  ori          s1, t6, -1018
                  addi         t4, t6, -563
                  sltu         a3, t3, a4
                  slt          s2, s1, a3
                  sra          sp, t1, s1
                  and          s4, tp, gp
                  srl          a2, s3, t0
                  slt          a7, s5, t3
                  add          s9, a5, a3
                  sltu         s4, s5, a7
                  srl          a5, a5, a1
                  or           zero, s9, a2
                  xor          t6, s5, s3
                  sltu         a5, a4, t5
                  slt          s1, s4, s11
                  or           t0, zero, a7
                  ori          a2, t3, 348
                  sra          a2, s8, a6
                  srli         s6, s6, 29
                  slti         s11, a2, 1328
                  lui          s10, 125777
                  xor          a5, sp, tp
                  slt          s10, t0, a4
                  slti         sp, sp, -1008
                  auipc        a2, 262486
                  slti         a7, s4, -500
                  sltu         s4, a6, a6
                  slti         s7, t5, 1659
                  and          a4, s3, s3
                  sub          a6, a2, ra
                  srli         t0, s3, 15
                  andi         a5, t4, -379
                  ori          t5, s6, 1632
                  slli         t0, a1, 2
                  srli         s0, t2, 29
                  srai         a6, s9, 26
                  auipc        a3, 440115
                  slti         s4, t4, 757
                  sltu         s10, a6, t0
                  xor          a5, a5, a5
                  nop
                  andi         zero, t6, 728
                  srai         t5, a3, 28
                  srli         t1, t5, 12
                  slt          s9, t1, s2
                  slti         zero, s6, 1659
                  andi         t1, a3, -1266
                  slti         zero, s7, -1227
                  srl          a5, a6, s7
                  ori          t0, a4, -1879
                  sll          s2, s3, s3
                  sltiu        a1, t2, -720
                  auipc        t0, 130467
                  sra          s6, s9, t2
                  srai         gp, a2, 28
                  srai         a4, t5, 16
                  xori         s1, a0, -1027
                  add          ra, a7, t6
                  sltu         s5, t5, a3
                  addi         t4, s11, -125
                  srli         a2, t5, 26
                  and          s9, s11, sp
                  andi         s5, s2, 560
                  auipc        s7, 261974
                  sltiu        s1, s2, 778
                  xori         t1, s10, -1925
                  srli         t0, s9, 12
                  xori         s2, gp, -1232
                  srl          a6, t5, s5
                  or           s10, s5, s2
                  slti         sp, a3, 1769
                  slli         t6, a1, 14
                  sub          t4, s11, s8
                  srli         ra, s5, 11
                  auipc        s11, 39912
                  or           a1, t2, a7
                  and          s9, a5, s8
                  srli         s7, s4, 25
                  sltu         s5, s2, s3
                  addi         a6, s0, -1660
                  srli         t0, s2, 22
                  add          sp, s8, s11
                  addi         a7, s8, -1050
                  xori         gp, s5, -494
                  add          a1, ra, zero
                  addi         a5, s8, 463
                  sltiu        s7, a2, 2034
                  andi         s8, s6, 241
                  sltiu        a5, tp, -559
                  addi         a1, t1, 606
                  sll          t6, s10, s6
                  andi         a4, s4, -1564
                  sub          t6, s3, tp
                  add          gp, zero, t2
                  sll          t1, t1, s2
                  and          s0, t5, a4
                  sll          s7, sp, t4
                  and          a2, s2, a1
                  sub          s0, s10, s10
                  xori         s0, s10, 1745
                  and          a4, t3, t4
                  add          t4, a6, t0
                  ori          s1, a3, -900
                  auipc        s4, 269158
                  lui          t1, 800752
                  sub          s7, s2, a2
                  srai         s4, t5, 24
                  srli         s9, zero, 15
                  or           s5, a4, t1
                  sub          s8, gp, s11
                  xor          a2, s0, t0
                  sltiu        s5, t2, 138
                  srai         s10, t2, 24
                  srl          s1, s5, s0
                  srai         t4, zero, 12
                  srai         t0, gp, 25
                  slli         gp, a2, 6
                  slt          t6, a5, s8
                  lui          a2, 1008322
                  srl          t6, s1, s3
                  sra          ra, t3, s11
                  slti         a6, a7, 461
                  xori         t6, t4, -1007
                  slti         s10, a5, -1194
                  lui          t4, 417170
                  sra          a4, t2, s11
                  slt          a1, a5, a6
                  slli         a7, s10, 17
                  xor          t3, s3, t6
                  ori          t5, gp, 1439
                  xori         a4, s7, -1598
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           a4, 0x0
                  li           s11, 0x0
                  li           a2, 0xb2c79703
                  li           s8, 0xffffffff
                  li           gp, 0xffffffff
                  li           a1, 0x9881f6cf
                  li           t1, 0x9dcc13c9
                  li           ra, 0x80000000
                  li           t2, 0xffffffff
                  sub          s8, a1, a2
                  addi         gp, a1, -225
                  auipc        s8, 863680
                  nop
                  auipc        a3, 403354
                  sub          s8, a2, t2
                  nop
                  lui          t1, 565444
                  auipc        a1, 928659
                  nop
                  add          ra, a1, ra
                  add          a2, a1, t1
                  nop
                  sub          t2, a4, a4
                  nop
                  auipc        ra, 418077
                  sub          a3, t1, a3
                  nop
                  addi         s8, a1, -88
                  lui          a1, 510009
                  add          s8, a3, ra
                  addi         a2, s11, -1536
                  auipc        gp, 354253
                  add          gp, ra, a1
                  addi         ra, gp, -694
                  add          s8, s11, ra
                  nop
                  add          a4, t2, a2
                  nop #end riscv_int_numeric_corner_stream_0
                  and          s1, a2, a2
                  srai         zero, s8, 24
                  or           t0, t0, s0
                  or           a6, t3, s2
                  xor          a2, a2, a4
                  sll          s11, s4, a5
                  or           a6, s2, a3
                  sub          zero, a1, a2
                  and          t5, a2, a1
                  sll          a6, t1, t6
                  sltiu        ra, s7, 194
                  srai         gp, t0, 12
                  srl          t1, a0, t1
                  or           gp, s0, s6
                  xori         s10, a1, 143
                  and          t4, s6, s3
                  slt          s2, s4, t2
                  andi         s1, t6, -442
                  or           s0, a3, zero
                  or           t4, s8, t6
                  ori          s9, t0, -1396
                  auipc        a4, 196743
                  srai         s0, a1, 8
                  slti         t1, s2, 1955
                  lui          a5, 788219
                  addi         s5, s11, -1585
                  slli         s2, s11, 3
                  auipc        s1, 558788
                  srai         a7, ra, 10
                  nop
                  add          a6, a0, tp
                  slti         s0, s6, -1385
                  xor          s10, a6, t2
                  ori          s10, t3, -1478
                  slt          s0, s9, s6
                  srl          a3, a3, t6
                  srli         t4, t1, 10
                  ori          zero, a2, 525
                  nop
                  add          a1, a4, t2
                  ori          s6, a0, -36
                  srai         zero, s5, 12
                  slt          s9, s4, tp
                  sra          s4, sp, ra
                  slti         sp, tp, -422
                  slti         s1, a0, 1093
                  ori          t4, a3, -371
                  sra          a2, zero, ra
                  srai         t4, s6, 23
                  xor          a3, ra, s7
                  sra          s1, t1, sp
                  sltu         t3, a6, s4
                  xori         sp, s5, 1770
                  or           a5, s5, s8
                  sltu         a7, s7, t1
                  or           s11, t3, gp
                  xori         s9, s10, 1427
                  xor          s7, a6, a5
                  srl          gp, s1, t1
                  srai         s1, s2, 25
                  andi         zero, sp, 148
                  add          t4, s4, s0
                  slli         s4, a0, 10
                  srli         t5, a7, 21
                  sltu         sp, s0, a0
                  or           t6, s7, t6
                  andi         s6, s11, 409
                  sltu         a1, t2, sp
                  xori         t4, zero, 1379
                  slt          sp, t2, s0
                  addi         t1, a2, 1427
                  xor          s7, zero, t5
                  and          sp, t1, a2
                  slli         t5, t5, 17
                  srai         t4, s10, 5
                  nop
                  slti         s2, s9, 2023
                  sra          s4, sp, zero
                  add          t1, s3, zero
                  or           a7, zero, s10
                  xor          gp, t1, a2
                  sltu         s6, t3, gp
                  nop
                  sll          t6, t2, a2
                  auipc        t6, 716065
                  xor          ra, a1, s0
                  addi         a2, s0, -2032
                  add          s6, s6, s11
                  sltiu        sp, s2, -2
                  sra          t2, sp, s9
                  or           s1, t0, a0
                  and          s8, s7, a4
                  sltiu        t1, t0, -1365
                  add          s8, gp, a3
                  add          s4, s3, s10
                  addi         s0, a2, 1548
                  lui          a5, 226162
                  ori          s0, t3, -1639
                  add          s7, zero, s2
                  xor          a7, a2, a3
                  slli         s0, zero, 25
                  srl          t4, t3, a6
                  lui          s7, 389110
                  sltu         s10, a3, t5
                  ori          s6, s0, -1189
                  slt          s2, s11, s4
                  nop
                  slli         a2, s3, 30
                  sub          t2, a2, s5
                  ori          a7, a5, 1295
                  slt          s10, a0, a7
                  slli         s4, t5, 8
                  sll          t5, a2, a4
                  ori          s6, s0, 2007
                  or           t2, a5, t1
                  slli         s0, t0, 7
                  or           gp, t3, s0
                  srai         t3, zero, 25
                  slli         s6, s4, 19
                  auipc        gp, 438696
                  xor          sp, t3, a1
                  slti         gp, a7, -510
                  sra          ra, s10, t3
                  srl          t0, a0, s5
                  auipc        s5, 973542
                  and          t4, a7, a0
                  and          ra, a6, s11
                  sltiu        a5, s4, -998
                  srl          s2, tp, s1
                  xor          s2, t2, s2
                  sll          s5, s2, t4
                  ori          s0, a6, -1197
                  xori         a2, s3, -519
                  nop
                  lui          a7, 685170
                  sll          s0, t2, t1
                  slti         a7, gp, -1330
                  sub          a2, a2, s2
                  sub          gp, tp, a4
                  add          s7, s4, gp
                  sltiu        t4, t0, -1550
                  or           a1, s9, zero
                  addi         ra, t1, 1681
                  auipc        s4, 234420
                  auipc        t3, 420935
                  sltiu        s6, ra, -654
                  sltu         a1, sp, s11
                  auipc        zero, 942840
                  slli         t6, a5, 26
                  andi         s7, t4, 296
                  slti         s0, s1, -665
                  sltu         s8, a3, a7
                  slt          s4, s3, sp
                  sltiu        t4, a1, -1622
                  and          s6, a0, zero
                  slti         zero, t5, 287
                  srl          t3, tp, a1
                  srl          t3, s0, s1
                  slli         t0, t2, 31
                  slt          gp, tp, t4
                  srli         t6, s7, 19
                  add          t3, t0, zero
                  slti         s5, a4, 1215
                  slli         t3, a1, 7
                  add          t5, sp, t5
                  slli         t5, s5, 10
                  sltiu        a5, a4, -682
                  or           ra, t1, s0
                  srai         t0, s4, 29
                  sltiu        s10, s8, 1156
                  slli         sp, a3, 24
                  sll          a1, a7, s3
                  slt          a5, t3, ra
                  addi         s1, s4, 1206
                  srli         a7, sp, 14
                  auipc        zero, 525513
                  xori         t0, s4, 243
                  sra          a6, s1, s9
                  sub          s5, a4, zero
                  sltiu        s5, s2, -722
                  xor          s11, s7, s5
                  and          sp, s0, s10
                  sltu         t3, t1, s3
                  sltu         t4, a7, t6
                  sltu         s11, s7, tp
                  xor          s5, t3, s6
                  addi         a4, a2, 1343
                  slli         t6, a3, 26
                  and          a7, tp, s9
                  sra          s7, s1, t1
                  srli         gp, s2, 21
                  addi         s8, s2, 159
                  ori          s8, a7, -1642
                  srli         t3, a6, 4
                  srai         t0, s1, 20
                  ori          sp, t1, 105
                  srai         s1, a3, 1
                  auipc        t0, 290848
                  lui          a3, 768698
                  lui          s2, 124861
                  slt          a6, s6, s3
                  and          s4, a4, s10
                  lui          s2, 453082
                  or           t0, t0, a5
                  slt          t0, a2, s3
                  and          s0, t0, a2
                  nop
                  srli         s8, tp, 14
                  sub          s11, t2, s3
                  auipc        gp, 380970
                  nop
                  sll          gp, t5, s9
                  slli         a1, s1, 12
                  sltu         zero, a2, s3
                  auipc        a5, 996781
                  srai         t1, s10, 25
                  slt          a5, s5, a3
                  sltiu        s4, a1, -1064
                  auipc        ra, 227854
                  xori         s10, s4, 1039
                  andi         s2, s5, -927
                  add          s5, s9, a3
                  andi         s4, s10, 1686
                  or           a6, a4, t3
                  sra          sp, s2, sp
                  srai         a7, s8, 1
                  srli         a6, s1, 28
                  ori          t5, t5, -1167
                  sltiu        s11, sp, -386
                  auipc        a2, 737426
                  sltu         t2, s5, zero
                  slti         t0, s4, -526
                  srai         s4, t0, 19
                  sra          s4, gp, ra
                  srl          t1, a6, t1
                  or           a6, a1, s11
                  sltu         a2, s6, s6
                  xor          t0, t0, s5
                  sltu         a4, t0, t3
                  auipc        t1, 596787
                  slt          t0, t4, t2
                  sub          t5, tp, a2
                  slt          a3, s5, a2
                  sub          zero, a2, s4
                  slli         a3, s0, 28
                  slt          s2, s3, t4
                  sll          s5, ra, sp
                  srai         t2, t5, 14
                  or           s6, t0, t3
                  sra          a1, s10, s4
                  auipc        t5, 367840
                  sub          t3, a4, s10
                  xor          a7, s0, s8
                  sub          s0, s9, a5
                  srli         s6, gp, 28
                  nop
                  xori         s9, s5, 1176
                  addi         a4, s10, 1387
                  slt          s6, tp, s2
                  addi         s0, gp, 479
                  andi         t0, zero, -1068
                  addi         s1, a7, 447
                  xori         s4, a1, 1763
                  xori         a7, s8, -1754
                  sltiu        ra, a4, -1561
                  sltu         t2, a2, s6
                  sltiu        s6, s6, 461
                  auipc        s6, 97908
                  sll          s2, a7, a7
                  srl          s2, s11, s9
                  sub          s4, a2, t4
                  slli         s6, a6, 14
                  lui          a4, 220038
                  nop
                  slt          a4, t0, zero
                  or           a2, gp, a0
                  xor          t0, t3, s8
                  xor          zero, s4, gp
                  andi         a3, t6, 536
                  or           a7, s0, a3
                  sra          s5, t3, a5
                  slli         s7, ra, 24
                  addi         t4, a7, 344
                  sltiu        t0, t4, 1550
                  srai         s5, a7, 29
                  sra          s2, ra, s2
                  srl          s7, s2, s8
                  nop
                  nop
                  srl          t2, a6, s8
                  sra          a3, a6, t4
                  addi         s9, a5, 45
                  srl          s4, s4, t3
                  nop
                  nop
                  and          s11, a3, a4
                  sltiu        a2, tp, 1260
                  srli         a5, s1, 21
                  or           t2, s11, a2
                  or           ra, s8, s4
                  addi         s0, a0, 1315
                  add          s9, ra, a2
                  sll          t5, t3, gp
                  xor          a6, t1, s9
                  sra          t3, s2, t0
                  ori          a7, zero, 1832
                  srli         a7, s8, 19
                  lui          a4, 882552
                  sub          t4, t3, a5
                  sra          s8, s3, t1
                  and          s11, t6, tp
                  srai         a2, s6, 10
                  and          t4, tp, s9
                  addi         zero, a1, -463
                  auipc        s5, 653301
                  sll          s5, t4, t2
                  or           s5, a5, a2
                  sltu         s4, s10, a0
                  andi         a2, t1, 363
                  sub          ra, t2, ra
                  lui          a1, 28772
                  addi         t5, s3, 1828
                  slli         t6, gp, 3
                  sltiu        zero, s3, 425
                  and          a1, a6, a6
                  addi         sp, s9, 1635
                  srai         sp, sp, 22
                  auipc        t4, 245811
                  and          a4, t4, s7
                  or           a3, a4, t5
                  srl          a5, a7, t2
                  or           s0, s10, s0
                  sltiu        t1, tp, 1496
                  xori         t3, a6, 317
                  srli         zero, s4, 14
                  or           s2, ra, a0
                  nop
                  sra          s0, tp, t4
                  slti         t5, a1, 1185
                  sltiu        a1, a1, -1176
                  srai         a7, a0, 9
                  sltu         s9, sp, s8
                  srli         a4, s11, 8
                  addi         s8, gp, 390
                  add          t6, a1, a7
                  lui          zero, 342493
                  slti         t2, a4, -436
                  addi         s11, s9, 76
                  add          s6, a1, s3
                  srl          t1, a6, s7
                  add          s8, a4, a7
                  sltiu        a2, s3, -942
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t6, 0x0
                  li           ra, 0x1c6661d3
                  li           s1, 0xfabc99cc
                  li           s9, 0xbd4ae1a4
                  li           t3, 0x0
                  li           a3, 0xffffffff
                  li           s8, 0x0
                  li           s11, 0x80000000
                  li           s0, 0xffffffff
                  addi         s9, t6, 1245
                  addi         t6, s0, 1948
                  auipc        t2, 987337
                  add          s9, ra, s8
                  nop
                  addi         a3, s1, -1309
                  addi         ra, t2, 1446
                  sub          ra, a3, s9
                  sub          ra, t6, t2
                  nop
                  sub          a3, t6, t6
                  add          s9, a3, t2
                  sub          s0, s9, t2
                  addi         t6, t6, 890
                  lui          t2, 988613 #end riscv_int_numeric_corner_stream_6
                  auipc        s7, 524543
                  or           s2, s5, a6
                  add          s0, s7, gp
                  srai         s10, s1, 29
                  andi         s2, a3, -731
                  sub          s7, a6, s11
                  andi         t1, s0, 1223
                  srl          s4, a5, s7
                  add          s5, a3, a0
                  sltu         zero, t1, s4
                  andi         a4, s10, 407
                  srai         t0, t0, 30
                  add          t2, tp, zero
                  sltu         a6, a7, s4
                  sll          t2, tp, a2
                  srl          a2, t3, t1
                  sra          t2, s5, s7
                  auipc        s10, 114943
                  srli         t3, a7, 19
                  or           t4, s8, s3
                  andi         t3, s9, 1125
                  sra          s8, s4, s9
                  slli         t5, s1, 19
                  sltiu        t2, a2, -1505
                  addi         a6, tp, -1698
                  xori         ra, a5, -684
                  sra          t6, t5, s6
                  xori         s7, a4, -258
                  auipc        a5, 1019588
                  nop
                  sll          t4, gp, s0
                  srli         ra, zero, 30
                  sltiu        s4, t0, -1209
                  sra          t5, a2, a1
                  auipc        s8, 1014343
                  lui          t0, 1028166
                  and          a7, s10, s7
                  lui          t2, 320629
                  addi         s2, tp, 1167
                  sra          a4, a3, gp
                  nop
                  srli         s10, t6, 19
                  ori          t5, s5, 867
                  xor          s5, tp, s8
                  sltu         s0, s3, t5
                  sltu         s11, a3, s5
                  slti         s11, a6, 1193
                  auipc        a7, 718223
                  ori          a4, a2, 1670
                  sltu         t6, t5, a0
                  nop
                  addi         gp, sp, -93
                  lui          zero, 285092
                  slti         s1, s9, -573
                  sltu         s1, s8, sp
                  slti         t4, s9, -1072
                  srai         s10, s3, 21
                  srli         s9, a7, 1
                  xor          s8, s11, t4
                  slli         a7, zero, 22
                  slt          t1, s11, t6
                  xori         t5, a3, 1562
                  sll          sp, t0, t3
                  sltiu        sp, a5, -574
                  slti         t2, s8, 793
                  sra          s4, s2, t6
                  slti         a2, a2, -1091
                  nop
                  srl          t2, s8, s7
                  slti         t5, ra, -1723
                  add          s9, s6, t1
                  sll          t6, a4, a6
                  srl          t3, s4, t4
                  andi         t0, tp, 776
                  nop
                  and          s10, a0, t3
                  addi         a5, s6, 293
                  sltiu        zero, s10, -1641
                  slli         s4, t3, 7
                  srai         s7, gp, 8
                  srl          a6, gp, s2
                  add          a1, t6, t1
                  add          s6, t0, s4
                  xori         a7, a0, -982
                  xori         s1, sp, -451
                  slti         s10, s1, 2007
                  add          a4, s10, a1
                  slti         a3, s10, 158
                  or           a3, s2, gp
                  srl          s0, t6, tp
                  lui          s8, 311125
                  sltiu        gp, t4, -657
                  ori          s7, s3, -1895
                  and          t4, gp, t5
                  sll          t0, s2, s10
                  xor          s1, a6, s6
                  nop
                  sub          s0, a4, zero
                  sra          t3, zero, zero
                  srli         t1, s1, 23
                  sll          zero, t2, a4
                  ori          t1, a0, 1839
                  sra          gp, a5, t2
                  addi         s9, a4, 1275
                  sltiu        sp, t0, -1182
                  sub          s0, a4, s5
                  sltu         s9, a5, gp
                  andi         s10, s10, -106
                  sll          s6, a1, a3
                  srli         a1, t2, 18
                  sll          t4, gp, a2
                  addi         t6, a3, 620
                  nop
                  auipc        a3, 911385
                  sltu         s8, t0, s0
                  sltiu        s6, a1, 1571
                  nop
                  auipc        a5, 789609
                  nop
                  xor          a2, s7, t1
                  lui          s7, 497877
                  sltu         s8, s4, s11
                  andi         a4, a1, 895
                  slli         a2, t2, 17
                  addi         t6, a0, 1450
                  nop
                  srl          a6, a7, s7
                  nop
                  and          t2, s5, a0
                  nop
                  srli         s8, a1, 24
                  sll          a7, t3, s1
                  ori          ra, s11, 1755
                  add          s7, s11, sp
                  srai         t6, s2, 30
                  srli         t6, zero, 31
                  xori         a1, s4, -912
                  srli         sp, s2, 2
                  andi         s6, s3, -1756
                  srl          s8, sp, t6
                  or           s7, t3, a7
                  auipc        t6, 280356
                  nop
                  slt          s4, a4, a5
                  or           a4, s1, a6
                  andi         s2, zero, -609
                  xor          a3, a2, t4
                  add          a1, s9, t2
                  nop
                  slti         s11, a0, 1418
                  srli         s9, a6, 7
                  srai         s1, s4, 22
                  srli         s8, s0, 5
                  xori         sp, t6, 269
                  xor          a7, gp, a4
                  xori         t2, s3, 40
                  andi         t4, s7, -1794
                  srai         s4, a6, 22
                  lui          a3, 46885
                  ori          a2, s3, 1882
                  slti         sp, tp, -1386
                  and          zero, a0, s10
                  sra          a4, s7, s6
                  lui          s1, 235494
                  auipc        s10, 578320
                  addi         ra, zero, -1515
                  auipc        t6, 255067
                  slt          t3, s4, t3
                  srli         t3, s8, 11
                  slli         gp, a0, 5
                  or           t1, t0, tp
                  sub          gp, t1, s5
                  nop
                  and          t6, s8, a0
                  sll          ra, a5, a3
                  andi         a6, s7, 1602
                  and          t2, a4, a7
                  and          t6, s4, tp
                  add          t6, t1, a0
                  sltu         a6, t6, t1
                  sra          s7, s10, t2
                  ori          s4, s9, -1516
                  sltiu        a7, t3, 368
                  or           s6, zero, a5
                  sll          a4, t4, ra
                  sltiu        t6, a1, 1358
                  and          s1, s10, a1
                  xori         sp, zero, -230
                  sra          s9, s5, a4
                  srai         a7, a4, 18
                  addi         gp, s3, 1866
                  li           s10, 0x665fab8f #start riscv_int_numeric_corner_stream_4
                  li           s2, 0x0
                  li           s5, 0x4d1957cc
                  li           t6, 0x311b427d
                  li           t1, 0x80000000
                  li           a5, 0x80000000
                  li           s4, 0x0
                  li           s11, 0xab0f508b
                  li           gp, 0x59e6cc6b
                  li           a2, 0xffffffff
                  sub          a2, gp, t6
                  nop
                  add          s10, gp, t1
                  addi         s10, s11, 1265
                  lui          s4, 641349
                  auipc        s2, 622163
                  auipc        a5, 231166
                  addi         s10, t1, 1963
                  sub          t1, t6, s10
                  add          t6, gp, a5
                  addi         a2, s4, -1945
                  lui          t1, 386733
                  addi         s4, a5, 768
                  auipc        s10, 109175
                  nop
                  add          gp, t1, s2
                  lui          a2, 74002
                  addi         s4, s4, 2008 #end riscv_int_numeric_corner_stream_4
                  lui          s10, 341919
                  add          gp, t1, s9
                  sltu         s4, s4, a0
                  xori         a4, sp, -551
                  srai         t5, t4, 30
                  and          t2, s9, sp
                  slt          s7, tp, a0
                  lui          t1, 580429
                  add          zero, s2, t4
                  slt          t5, s7, s0
                  add          a3, s7, zero
                  slli         gp, a5, 9
                  srl          t3, zero, a3
                  lui          t2, 609475
                  srai         a5, t2, 5
                  or           s10, a0, a1
                  or           t3, s2, s7
                  lui          a7, 932464
                  slli         s8, s9, 29
                  nop
                  lui          s6, 34220
                  andi         s9, sp, 1630
                  xor          a6, ra, t2
                  ori          s6, s10, -285
                  srl          s0, s9, s8
                  andi         a5, t4, -1618
                  and          s10, t4, gp
                  sra          a2, a0, ra
                  auipc        a5, 679736
                  addi         t5, ra, 91
                  slt          t5, t0, a4
                  sub          s11, s3, s7
                  sltiu        a5, s11, -1025
                  sltu         t1, s9, t4
                  srl          s7, a2, s4
                  sltu         s1, s6, ra
                  or           t1, a1, a5
                  or           a6, t2, a6
                  sra          s8, t3, sp
                  srl          a4, a2, tp
                  slli         t0, s10, 21
                  sub          s7, s4, s3
                  xori         a1, t6, -1181
                  sra          t4, t6, s10
                  and          a4, s8, t2
                  ori          s8, a2, -1752
                  sra          s4, s3, s11
                  srl          t2, a0, gp
                  and          a6, a4, a0
                  lui          s1, 185304
                  sub          s11, s3, t0
                  addi         s8, s5, -1624
                  xori         a2, t4, 1835
                  sra          t5, gp, t1
                  xori         a7, t4, 38
                  sub          s6, s8, a2
                  sll          s1, t2, s7
                  srl          s0, t6, t3
                  addi         a1, s10, -2006
                  xori         a4, s0, -812
                  srl          s10, s7, s6
                  slti         a2, a7, 1826
                  ori          s8, s7, 456
                  xori         s8, s8, 930
                  lui          sp, 393482
                  srl          a3, s6, a7
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           a5, 0x80000000
                  li           t2, 0xbc86179a
                  li           s0, 0xf8649fe2
                  li           t5, 0x80000000
                  li           s9, 0x80000000
                  li           t0, 0x80000000
                  li           s2, 0x80000000
                  li           t4, 0x1c41750c
                  li           s4, 0x0
                  nop
                  sub          s0, s9, t2
                  sub          t2, t0, t2
                  sub          a6, s4, t4
                  addi         a6, t5, 646
                  nop
                  nop
                  nop
                  addi         s0, a6, 161
                  auipc        t2, 189569
                  nop
                  auipc        s2, 160693
                  sub          t2, a5, t0
                  sub          s4, t0, t4
                  add          t0, s2, s2
                  sub          t0, t2, t4
                  lui          a6, 160779
                  addi         s2, t4, 145
                  addi         s2, t4, 1953
                  addi         t2, s0, -1667
                  lui          s0, 406398
                  auipc        s4, 774064 #end riscv_int_numeric_corner_stream_9
                  sll          ra, s2, t3
                  or           a7, a2, t0
                  addi         s5, a0, -772
                  auipc        t4, 308401
                  srai         a2, a2, 25
                  xor          a4, sp, t0
                  srl          sp, t6, ra
                  addi         t2, a5, 1722
                  slli         s4, zero, 9
                  xor          t2, s3, a1
                  xor          t2, s7, s9
                  addi         t3, gp, 2041
                  sll          a6, a5, gp
                  sltiu        t2, sp, 1022
                  ori          t0, a6, -1589
                  xori         a7, a2, -1130
                  auipc        s8, 800086
                  sltiu        a5, ra, -1221
                  sra          s8, gp, sp
                  xori         s10, s7, -1904
                  srai         a6, s1, 22
                  addi         s0, t0, -1135
                  xori         a2, gp, 1748
                  sltiu        s9, t1, 252
                  sll          gp, a0, a1
                  ori          s4, s10, -1247
                  and          a4, a4, t3
                  nop
                  sltiu        s4, t0, -628
                  sll          t2, t4, s6
                  addi         a5, t6, 196
                  or           t5, t2, ra
                  sra          a7, a7, s10
                  sltu         t0, s3, tp
                  lui          s7, 363255
                  srli         a5, t4, 9
                  slt          a1, t3, a0
                  sub          t0, a4, a1
                  sltiu        t4, t0, -224
                  srai         s4, a5, 6
                  slt          s10, t6, a1
                  add          t6, sp, t4
                  or           s6, s8, ra
                  auipc        s8, 313453
                  auipc        s2, 354468
                  srai         s9, s8, 0
                  and          gp, a6, s3
                  slli         a1, a5, 6
                  slt          ra, s0, t5
                  sll          t4, gp, s6
                  auipc        s9, 396025
                  sltiu        a6, t2, -414
                  sltu         t0, t5, a5
                  and          s7, s5, t3
                  ori          ra, s2, 700
                  auipc        s6, 1007202
                  srai         t6, a2, 20
                  nop
                  slt          s11, zero, a2
                  srli         t6, a0, 10
                  sub          s9, t2, a3
                  sra          s4, s11, t4
                  sll          a3, a2, s8
                  ori          a4, s9, -1648
                  or           s11, tp, zero
                  slt          s4, t0, s0
                  srl          s4, s11, t6
                  nop
                  lui          t6, 298336
                  sub          a2, a5, a3
                  sltu         a1, s2, a7
                  xori         t3, t1, -216
                  slli         s4, s2, 26
                  sltiu        s10, gp, -1706
                  slt          sp, sp, t4
                  addi         t1, a5, -51
                  nop
                  sub          s9, t1, s3
                  sltu         gp, s1, zero
                  addi         t3, s11, 890
                  slli         a7, a6, 10
                  lui          s11, 96992
                  sll          s6, t1, s2
                  sll          s10, s8, a4
                  ori          t6, tp, -775
                  xor          ra, sp, s11
                  ori          ra, gp, -1250
                  nop
                  sra          t3, zero, a1
                  add          s0, a7, a4
                  and          s1, gp, ra
                  xor          s1, a6, t0
                  slti         a1, gp, 1314
                  sltu         s2, s10, ra
                  sltu         a7, s2, t4
                  srl          s2, t2, s5
                  addi         s0, s6, -1570
                  or           s2, s5, a0
                  add          t5, s6, s4
                  sltu         t6, s0, ra
                  sltu         t4, t1, t4
                  ori          a2, s7, -797
                  add          s1, ra, a7
                  nop
                  srli         t0, t6, 25
                  sll          a4, s0, gp
                  slt          ra, t3, a4
                  and          t0, sp, zero
                  xor          s7, s4, s11
                  lui          sp, 450033
                  andi         gp, ra, 1353
                  xori         a7, s8, 1429
                  addi         s10, t0, 778
                  slt          s2, t4, s6
                  slli         a3, s3, 31
                  sltu         a2, a6, t6
                  sra          t5, a1, t2
                  sub          s6, s1, gp
                  auipc        s1, 709731
                  xor          t3, a1, s4
                  nop
                  ori          s4, ra, -487
                  slli         a2, a1, 28
                  add          a1, t5, t4
                  sltiu        a1, t4, -524
                  sltu         a6, a7, a6
                  nop
                  sltiu        s7, s8, 1525
                  auipc        t3, 292878
                  sltiu        t1, gp, -1335
                  nop
                  add          t4, s8, a2
                  sra          a5, t1, ra
                  srl          t2, gp, s11
                  slti         ra, t0, -690
                  slti         t2, s9, -505
                  ori          a6, a6, 1270
                  auipc        a7, 79376
                  xor          s11, zero, zero
                  sub          t3, s5, s0
                  srl          s2, s5, a6
                  nop
                  and          s0, a2, t4
                  andi         s10, s2, -1182
                  sra          t4, t3, s6
                  addi         ra, t5, -661
                  ori          t6, t5, 498
                  and          sp, s6, zero
                  sra          gp, t3, s7
                  add          t1, t0, a4
                  srli         s4, t1, 23
                  slli         gp, sp, 4
                  srl          s5, a6, a4
                  slli         a2, s6, 9
                  sll          s6, s11, gp
                  sltiu        s4, a3, -2031
                  slti         s4, t1, 729
                  sra          sp, s1, t2
                  add          a7, t3, s4
                  slt          s9, s1, a0
                  sll          a1, a7, t0
                  slti         s5, sp, 61
                  nop
                  andi         s8, s4, -617
                  and          s7, a2, a1
                  and          t1, t6, s11
                  sltiu        t5, a6, -1132
                  sltu         a2, s9, t2
                  auipc        t6, 508215
                  slti         a1, a3, 425
                  sll          t2, t3, a5
                  lui          s2, 84683
                  sra          t2, t0, sp
                  auipc        a1, 942737
                  addi         a7, s6, -1962
                  andi         s2, s11, -507
                  srli         t4, s4, 29
                  addi         t6, t3, 239
                  xori         s5, gp, 1086
                  add          ra, s3, gp
                  xori         gp, s9, -545
                  slli         s2, s4, 9
                  sltiu        t5, t4, 962
                  srl          s8, s8, a1
                  xori         a6, gp, -2015
                  sltu         s5, s9, t2
                  ori          zero, s0, -1095
                  auipc        a5, 372188
                  srli         s4, a3, 11
                  lui          s6, 411005
                  lui          s6, 104606
                  and          a7, a6, s0
                  and          ra, a0, ra
                  add          s8, t5, s3
                  slli         t2, s2, 27
                  sll          gp, t3, ra
                  srl          t4, s7, sp
                  sltiu        s1, t1, -1953
                  addi         sp, t0, -864
                  sub          s1, tp, s11
                  or           s10, a5, s0
                  ori          s1, s10, -1717
                  andi         s5, s5, 1013
                  lui          t6, 789257
                  srli         s1, s5, 20
                  ori          s2, a2, -1857
                  sltiu        a1, s3, -1773
                  srli         a5, a5, 27
                  slli         s7, s1, 10
                  sub          s0, s1, a6
                  sltiu        t5, s10, -1590
                  xor          gp, a0, t5
                  slti         s9, s8, -1774
                  sub          t5, s4, zero
                  xor          s5, s0, a7
                  srai         a2, zero, 27
                  sll          s10, a7, s11
                  auipc        a4, 182460
                  sll          a6, a7, sp
                  slt          a7, zero, zero
                  add          t3, sp, t3
                  sra          a5, t4, a3
                  auipc        a2, 436975
                  sltiu        s0, s0, -1392
                  srli         t5, s10, 27
                  slli         s0, s1, 9
                  sra          a5, a4, ra
                  ori          a6, s3, -134
                  xori         zero, t6, -526
                  lui          s7, 914503
                  srl          t1, a6, t1
                  xori         s8, t4, 866
                  slti         s11, s1, -452
                  srai         s1, s1, 18
                  srl          s2, zero, s1
                  and          t3, t4, t2
                  slti         s2, s7, 1885
                  addi         a1, t6, 1385
                  add          s6, zero, s9
                  sltu         gp, s3, s0
                  sub          s2, a1, s1
                  andi         a3, ra, -288
                  lui          a6, 409077
                  srli         a7, s2, 27
                  srai         a3, a7, 15
                  add          s8, a7, tp
                  andi         s0, s9, -1405
                  andi         zero, s2, -1015
                  lui          t2, 349151
                  addi         s1, t2, -837
                  andi         s1, ra, -1207
                  sll          a2, t1, t1
                  slti         t5, zero, -693
                  slt          t1, gp, s8
                  nop
                  sra          t0, tp, sp
                  sltiu        a7, zero, 1757
                  srli         t2, s11, 20
                  andi         a4, t4, -374
                  or           t5, s6, s8
                  xori         s0, s0, 918
                  slli         a5, s0, 29
                  sltu         a1, s10, t0
                  nop
                  sra          s8, s6, t2
                  slli         s11, s2, 24
                  slti         s1, a7, -640
                  slli         t2, a7, 28
                  nop
                  sltiu        a6, s9, 914
                  slti         a4, t1, 1984
                  lui          a2, 120886
                  sub          t6, t3, a0
                  srli         t6, s0, 9
                  and          s6, a4, a4
                  andi         s0, s7, 1352
                  andi         s7, s1, 1372
                  sll          s11, s6, s8
                  srli         gp, ra, 19
                  nop
                  sub          t5, s3, s3
                  sll          a3, tp, sp
                  ori          s11, t0, -877
                  add          a1, t4, s8
                  srl          t0, gp, t4
                  srl          t6, s0, a7
                  nop
                  slt          t1, tp, sp
                  sltu         a3, a7, s6
                  srl          s9, t0, a5
                  lui          t5, 8373
                  nop
                  add          t5, sp, t5
                  xor          t2, tp, s11
                  and          ra, a0, a2
                  and          t0, a1, a7
                  auipc        a6, 919691
                  sub          s6, s4, t1
                  xori         s1, s9, -1339
                  sra          t5, s0, s7
                  srai         t0, sp, 27
                  nop
                  sltiu        s6, t5, -635
                  and          a7, s11, s9
                  srai         gp, a0, 10
                  add          t0, a0, s10
                  ori          s9, s3, -297
                  and          a6, tp, sp
                  addi         a2, s0, -372
                  andi         t5, a5, -1457
                  sltiu        t1, s3, 1583
                  add          s2, t0, s0
                  sub          t0, t4, t3
                  andi         t1, s10, -9
                  slt          a1, s5, s8
                  slli         s0, a0, 27
                  xor          s11, a1, s3
                  sltiu        s1, a4, -187
                  add          a3, s2, s2
                  slt          s1, a2, a0
                  srai         zero, a5, 2
                  auipc        zero, 337906
                  auipc        t5, 404852
                  sub          t0, s3, tp
                  sra          a2, zero, s8
                  slli         s2, a7, 20
                  sub          s2, a1, a1
                  slli         a1, s7, 4
                  addi         a1, a0, -1282
                  sll          t0, a2, tp
                  srl          a7, a0, a4
                  srai         s10, s6, 15
                  srl          t0, s3, a1
                  or           t4, s1, s10
                  sll          gp, t6, s6
                  srai         t5, s4, 0
                  and          a3, t6, t6
                  srai         t2, a0, 26
                  srai         a3, t6, 27
                  srai         t5, s1, 19
                  ori          s11, t0, 1208
                  srai         ra, s5, 18
                  srl          s0, gp, a5
                  xori         t2, s4, 2006
                  xori         t0, sp, -1481
                  sra          s7, tp, ra
                  addi         t2, a4, -865
                  slti         s10, t5, 1521
                  slli         t0, zero, 16
                  ori          a1, gp, -1592
                  srai         t4, s5, 15
                  slti         s5, tp, 1170
                  and          s7, ra, s11
                  addi         s0, sp, 1440
                  srai         a3, a7, 15
                  addi         s6, t4, -719
                  andi         a6, s9, -600
                  srl          sp, t1, t0
                  sub          ra, t4, a1
                  andi         s0, s2, -1494
                  slti         t1, s6, -432
                  srli         t1, s0, 16
                  auipc        a3, 338033
                  srl          s6, s5, gp
                  slli         a7, a0, 20
                  ori          t1, s11, -1193
                  add          a6, s11, ra
                  sltiu        s2, ra, 1133
                  sltu         s10, s11, zero
                  addi         s9, s8, -136
                  auipc        s1, 937861
                  and          zero, s10, s9
                  or           a3, a3, t1
                  slt          a4, s1, s3
                  sltu         sp, s8, ra
                  xor          s2, sp, ra
                  addi         t6, s2, -1538
                  xori         a7, s7, 237
                  ori          s10, s2, 865
                  slti         a6, a2, -888
                  sltiu        s6, t2, 625
                  xor          s11, tp, s4
                  sub          gp, t6, a5
                  srai         t0, sp, 13
                  slt          s4, s5, s3
                  sub          s7, s10, tp
                  sll          t2, a2, s6
                  srli         s6, s10, 26
                  srai         a7, t6, 29
                  sltiu        s11, a5, 1197
                  xori         gp, t1, 511
                  add          a3, s10, tp
                  nop
                  sll          a7, a3, gp
                  lui          s8, 65101
                  slli         a3, a5, 8
                  and          s6, t5, s9
                  addi         ra, s4, -1353
                  auipc        t5, 410989
                  lui          sp, 241106
                  addi         t5, t1, -900
                  xori         a7, s3, -157
                  auipc        s4, 621054
                  srl          s7, t0, zero
                  slti         a6, s11, -546
                  srli         a2, s3, 13
                  srli         a7, s3, 15
                  srli         t3, s0, 14
                  sll          s8, t1, s10
                  sll          s8, t1, s0
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           s7, 0x0
                  li           s1, 0x80000000
                  li           s11, 0x80000000
                  li           a2, 0xffffffff
                  li           sp, 0xad6b4393
                  li           a7, 0x80000000
                  li           t3, 0x0
                  li           t0, 0x80000000
                  li           s2, 0x76133b06
                  add          s2, sp, a2
                  sub          t0, a2, s11
                  auipc        s9, 147923
                  lui          t0, 328440
                  sub          sp, t0, s2
                  sub          sp, s1, t0
                  add          s11, s7, a7
                  add          s1, s1, a7
                  sub          a2, t0, a7
                  lui          s2, 511638
                  auipc        s2, 288910
                  sub          s1, s1, sp
                  addi         sp, sp, 1474
                  lui          s1, 625171
                  add          s7, sp, t3
                  nop
                  nop
                  add          t0, s7, s2
                  add          t3, a2, s1
                  add          s2, s1, sp #end riscv_int_numeric_corner_stream_17
                  auipc        s7, 277259
                  slt          s2, t1, a4
                  sltiu        a4, tp, 298
                  xor          s8, s5, t1
                  srai         zero, a7, 25
                  sltiu        s9, t4, -1427
                  sub          a6, a4, sp
                  srli         a6, s8, 1
                  and          t4, t4, ra
                  sll          s0, s7, zero
                  sra          s10, ra, a0
                  srai         s9, t4, 30
                  sltu         s1, s1, a7
                  or           a1, s11, t0
                  andi         t1, a6, 966
                  sll          s8, s6, t2
                  lui          sp, 328989
                  auipc        t6, 103341
                  or           s5, s0, ra
                  xori         s9, a2, -12
                  slli         s7, s2, 0
                  srai         s1, a4, 10
                  andi         a5, gp, 583
                  add          gp, a0, s11
                  addi         s10, s5, 933
                  and          a4, t1, s6
                  nop
                  srai         t4, s5, 23
                  xori         gp, s10, -15
                  and          a7, a6, ra
                  auipc        s1, 381813
                  slli         s9, t5, 22
                  xori         t5, s6, 905
                  sra          s7, t4, t6
                  sra          gp, t4, gp
                  add          t1, t5, t0
                  srl          a6, sp, t4
                  sub          zero, t3, s0
                  ori          t2, t2, 500
                  srli         s5, s6, 11
                  srai         s2, s4, 3
                  srai         a5, sp, 27
                  slli         gp, t6, 1
                  srli         sp, s2, 11
                  add          t4, a1, a6
                  srli         gp, zero, 28
                  slt          s6, s9, s10
                  sub          s6, zero, gp
                  srl          s6, sp, a2
                  sltu         s10, a2, s11
                  andi         s0, a2, -169
                  or           a4, t1, a2
                  slti         zero, s8, -1425
                  sra          s5, a5, a6
                  srai         sp, t2, 3
                  slti         s5, a3, -1547
                  add          a7, t1, s4
                  sltiu        s4, a1, 1873
                  addi         t3, a6, -1021
                  sub          s2, a4, t0
                  slti         sp, a0, -363
                  slti         gp, s1, 1088
                  and          sp, a1, s11
                  sltu         sp, t2, s11
                  slt          t1, s4, t2
                  andi         s1, t5, 1972
                  xor          sp, zero, s3
                  slli         a3, a7, 22
                  xor          t5, a5, t6
                  sra          a4, ra, s9
                  addi         s4, s3, -508
                  slli         a6, s5, 26
                  xor          ra, s5, s3
                  xor          a2, s11, zero
                  add          a6, s6, ra
                  add          s0, s0, s7
                  slli         t3, tp, 4
                  ori          s1, s5, 1370
                  andi         s7, s7, 1588
                  sub          s9, sp, a7
                  ori          sp, s9, -26
                  and          s11, t2, t2
                  slt          t4, a1, a7
                  auipc        s7, 881103
                  sltiu        s7, sp, 1549
                  srli         a2, s10, 11
                  addi         a2, t2, -576
                  andi         t0, sp, -840
                  slli         s10, s8, 28
                  or           t1, a4, t0
                  xori         t0, t6, 827
                  xori         t1, s11, -815
                  xori         s4, zero, -177
                  and          t0, t6, s11
                  auipc        s2, 30531
                  sltu         a4, s2, s9
                  srl          a3, s7, s0
                  srai         t3, tp, 26
                  andi         a1, t0, -1265
                  sltu         s6, a2, gp
                  xor          s1, s11, s6
                  or           ra, t6, s9
                  slt          s11, s6, t5
                  auipc        s9, 350459
                  slt          s9, sp, a2
                  sll          s0, a0, s2
                  sub          a4, t4, a5
                  add          t3, a1, t1
                  slli         a5, s6, 15
                  auipc        a3, 31588
                  andi         t4, a5, -1404
                  slli         a2, a5, 3
                  srl          s4, a1, s3
                  xori         t4, t1, 1249
                  sub          t5, sp, tp
                  xori         gp, a1, -1913
                  srl          gp, a7, zero
                  sltu         a6, a2, tp
                  srli         s6, a3, 17
                  and          zero, t2, tp
                  sltu         a1, s5, a7
                  addi         a3, s1, -1990
                  lui          s2, 839031
                  and          a1, a1, a7
                  slti         a1, s3, 2004
                  lui          a1, 433689
                  sra          s2, a1, zero
                  andi         t3, t1, -1298
                  auipc        t2, 677769
                  slti         gp, zero, 459
                  xor          s8, s9, a0
                  sll          s4, s11, t2
                  srli         t6, t0, 21
                  or           t0, s7, a5
                  auipc        t3, 711636
                  addi         t4, ra, -1701
                  slti         s6, t1, -188
                  ori          s10, ra, -1204
                  srai         a3, s6, 24
                  sltiu        a3, t3, -1032
                  sltiu        s1, t3, 675
                  sra          s9, t5, t1
                  sra          s11, s3, a3
                  ori          gp, s3, -1519
                  slti         s10, s2, -1593
                  slti         gp, s11, -1683
                  and          gp, s4, s8
                  sub          s2, t1, s6
                  or           t5, s1, zero
                  sra          t0, s5, s8
                  sltiu        zero, t4, -987
                  xor          t1, t5, t1
                  addi         t5, a5, -1893
                  sltu         t0, gp, ra
                  xori         a6, t2, -368
                  addi         s10, s11, -1503
                  or           s8, a6, s9
                  andi         s1, s1, 1041
                  addi         a2, t0, 89
                  sll          t1, s2, a3
                  ori          zero, tp, -1709
                  nop
                  slli         a2, t5, 25
                  and          a6, t1, gp
                  srai         a4, s11, 4
                  andi         t1, zero, 847
                  ori          t2, ra, 1028
                  slti         t1, t1, -1509
                  slt          t5, t0, t5
                  srai         ra, t2, 2
                  srl          t6, s10, t1
                  xori         s1, ra, -1101
                  nop
                  slti         s4, tp, 721
                  sll          s9, a2, zero
                  sub          a4, zero, a2
                  slli         t6, t4, 31
                  addi         s5, s11, -1351
                  xori         t6, ra, -1563
                  add          s10, t3, a6
                  nop
                  nop
                  and          s0, a1, a2
                  slt          a2, s8, a6
                  auipc        t3, 176147
                  and          s7, s7, t2
                  srai         sp, s9, 22
                  srai         t0, a0, 23
                  nop
                  add          t5, t0, t5
                  sll          t1, t1, t4
                  xor          t0, sp, sp
                  slt          s7, s4, a5
                  auipc        s2, 606894
                  sra          a2, s11, zero
                  sltiu        t3, t1, -1930
                  xori         s1, s1, -197
                  sltiu        s4, t5, -1110
                  srli         sp, tp, 15
                  slti         a5, s10, 1314
                  ori          a2, s11, 2013
                  sra          s5, zero, t0
                  slt          a2, t2, sp
                  auipc        a5, 83741
                  srli         sp, t0, 3
                  add          a7, a1, s2
                  sra          s4, t4, s8
                  lui          ra, 1015432
                  ori          s7, a6, -1218
                  sltiu        s8, a5, 726
                  sll          t1, s8, a5
                  srli         s2, s10, 29
                  sltiu        t5, a5, 460
                  srli         a3, a0, 12
                  sll          s9, s3, tp
                  xori         s7, t6, 769
                  addi         s4, s0, 1022
                  srai         s8, s0, 10
                  slli         t2, t6, 11
                  lui          t5, 46377
                  auipc        ra, 156380
                  lui          s6, 765334
                  nop
                  nop
                  auipc        gp, 891353
                  slt          t6, a3, s2
                  slt          t0, a2, a2
                  lui          a4, 654248
                  andi         t2, t5, 413
                  auipc        t2, 6035
                  slli         t5, tp, 5
                  or           s11, gp, s6
                  addi         ra, s2, -495
                  auipc        s10, 300046
                  sub          s7, a6, s10
                  slli         a5, s2, 21
                  srl          a5, tp, t5
                  and          s10, tp, t6
                  addi         t2, zero, 619
                  auipc        t5, 507661
                  sll          a7, s4, t5
                  srl          zero, s11, s2
                  sra          s9, ra, ra
                  ori          a6, ra, -1658
                  slt          s4, a0, t2
                  srl          gp, a2, a1
                  xor          s11, ra, a4
                  andi         s1, t0, 398
                  srai         s5, a3, 17
                  xori         s4, t1, -757
                  srl          s8, s4, t3
                  xor          t6, a5, s7
                  sltu         s5, t4, t6
                  slti         s7, a5, -1952
                  sltu         s7, tp, s9
                  and          t2, t4, zero
                  sra          s5, s6, a6
                  andi         s7, s8, -895
                  sltu         s9, ra, s3
                  slt          a2, s1, t3
                  srl          s2, t0, s2
                  or           t0, t0, t1
                  add          sp, zero, a0
                  and          t0, s4, t2
                  xor          ra, s2, s2
                  and          t5, s6, zero
                  auipc        s11, 456406
                  slli         t2, sp, 1
                  or           ra, t2, a2
                  srl          a5, a5, gp
                  or           t2, t4, s5
                  sltiu        a3, s11, -915
                  andi         gp, s1, 317
                  sra          s8, t6, zero
                  srai         s2, ra, 1
                  sltiu        s2, sp, -226
                  srli         s10, t5, 0
                  andi         a1, a6, 16
                  and          ra, t1, s6
                  add          s10, s8, t2
                  sltiu        s8, s7, -1422
                  or           zero, s11, a1
                  or           s1, s1, a4
                  srli         s5, s7, 3
                  srl          t2, t5, t3
                  slli         t6, a4, 16
                  nop
                  xori         a6, s9, 1885
                  xori         s5, a4, -1199
                  srai         t6, t4, 22
                  auipc        a6, 960715
                  auipc        t1, 180049
                  sltu         t1, t1, s6
                  or           a4, s5, s4
                  xori         a2, a5, -1729
                  sltiu        s2, t1, -949
                  srai         t6, tp, 6
                  add          s1, t5, s5
                  slti         t2, s8, 869
                  xori         s7, a3, 425
                  srli         a2, s10, 7
                  xori         a2, s7, 1007
                  sub          s9, s11, s1
                  add          a6, t1, s2
                  auipc        s11, 673417
                  xori         a6, a5, 168
                  ori          ra, t0, -1446
                  nop
                  addi         s11, zero, 1259
                  and          a6, t2, tp
                  lui          s0, 264012
                  slt          ra, s5, t4
                  and          t3, s9, s6
                  srl          a5, t4, s7
                  sll          s6, a2, a0
                  addi         t3, s1, 950
                  xori         a4, t3, -1765
                  lui          t3, 819440
                  ori          t1, a6, -635
                  add          s9, a0, t6
                  addi         t3, t0, -904
                  srl          s2, s9, t1
                  ori          t5, s5, 1550
                  sll          t0, s6, s1
                  auipc        a7, 74922
                  sll          s7, t4, t4
                  xori         t6, s1, 2008
                  xor          t0, t2, t1
                  sub          s6, zero, a7
                  addi         s8, a7, 558
                  add          a3, s0, a5
                  slti         s10, s7, -1384
                  lui          a4, 239177
                  and          t4, s1, zero
                  slt          a6, s4, t5
                  slli         a7, tp, 15
                  andi         a5, t4, -816
                  lui          t4, 522163
                  slt          t1, s3, t2
                  nop
                  lui          a1, 339801
                  and          s5, s10, s0
                  sltiu        s5, s11, -409
                  ori          zero, a1, 716
                  and          a2, s2, s2
                  ori          s5, t6, 907
                  addi         t1, s3, 144
                  auipc        t6, 994540
                  sltu         s1, s4, a3
                  lui          a6, 612751
                  xori         a5, gp, -23
                  xor          s11, s6, s2
                  xori         ra, t0, -1457
                  and          s9, gp, t5
                  sub          t2, t5, s11
                  ori          a4, s0, 420
                  andi         t0, a1, -568
                  nop
                  xori         s7, a4, -1965
                  srli         a6, t1, 21
                  and          a4, a6, s6
                  and          s5, t4, gp
                  auipc        t6, 632072
                  and          a5, s8, tp
                  slli         s11, s4, 31
                  ori          s9, gp, 2035
                  srli         s5, a3, 29
                  sltiu        s4, s8, -155
                  sltiu        t3, s8, 786
                  slti         a7, t6, -519
                  srl          sp, s8, s9
                  xor          s5, t2, t1
                  srai         zero, s5, 0
                  srl          s5, t6, s2
                  sra          a1, s7, ra
                  add          sp, sp, s11
                  add          s9, s4, s4
                  slli         t4, a1, 21
                  slli         a7, a3, 15
                  sltu         s10, a0, t2
                  slt          s4, a0, t2
                  sra          t5, a0, a2
                  sltiu        ra, s6, -1654
                  xori         a1, s3, 529
                  xor          a6, s7, s10
                  sltiu        s10, zero, 1765
                  addi         a1, t2, -196
                  addi         s10, s2, 1337
                  srl          t6, a6, s10
                  or           s7, a1, s7
                  xori         s5, a1, 1863
                  nop
                  xor          t2, ra, a6
                  xori         ra, a5, -1777
                  sub          t5, s8, a7
                  sra          zero, s6, gp
                  andi         s4, s1, 895
                  xor          s2, s7, s1
                  slti         s5, s6, 764
                  andi         s4, a2, 740
                  or           a4, zero, a4
                  and          a5, t3, s8
                  slti         t3, t3, -67
                  sub          a7, a5, s6
                  sub          t3, a5, s8
                  and          s8, a1, s9
                  slti         a2, a5, 1326
                  slli         s9, a0, 1
                  xori         s9, s8, 590
                  srai         sp, s3, 4
                  andi         a2, a3, 1705
                  xori         a4, t5, -1884
                  and          t0, s9, s9
                  lui          a3, 189542
                  sltiu        t3, s2, 1362
                  srli         a4, a0, 30
                  srai         gp, s5, 29
                  sltu         t2, s0, a6
                  nop
                  and          s10, s6, s4
                  xori         s1, s0, -79
                  slli         a2, t1, 17
                  or           t4, t4, ra
                  auipc        zero, 33794
                  lui          sp, 740904
                  auipc        a5, 943305
                  srai         zero, s0, 5
                  srli         zero, s6, 27
                  srli         t6, s8, 16
                  xori         zero, t5, -1005
                  srli         a3, s9, 26
                  addi         s0, s10, 74
                  sub          s4, s5, a2
                  srai         t1, zero, 16
                  xori         a3, s7, 458
                  ori          t2, s7, 1791
                  or           t5, a0, s2
                  ori          ra, s10, 19
                  srl          a6, s3, a5
                  slli         t5, t0, 31
                  lui          s5, 575
                  srai         a4, a5, 8
                  srl          ra, a6, t2
                  andi         t5, s6, 857
                  sub          s1, s11, s11
                  sub          t1, s5, s7
                  and          s1, s4, sp
                  ori          sp, t6, -1322
                  srl          zero, a7, s9
                  lui          s6, 511439
                  sra          a4, a7, s4
                  add          s9, t6, t4
                  addi         s6, s5, -1277
                  xor          t0, s3, sp
                  sll          s7, t1, a1
                  sra          zero, t0, t3
                  auipc        sp, 691694
                  ori          t0, t4, 1380
                  or           s10, a4, t4
                  sub          sp, gp, t6
                  sll          s4, ra, t5
                  slti         s6, a3, -791
                  nop
                  srai         s1, s1, 20
                  andi         s2, s10, -315
                  addi         s8, tp, 1880
                  srl          s7, a4, a0
                  nop
                  add          s1, s11, s0
                  ori          s0, a7, 616
                  li           s8, 0x6f4847a3 #start riscv_int_numeric_corner_stream_15
                  li           t3, 0x80000000
                  li           s1, 0x92e35b2
                  li           s10, 0x80000000
                  li           a3, 0x80000000
                  li           s11, 0x3e90d681
                  li           a6, 0x0
                  li           t2, 0x0
                  li           s2, 0x80000000
                  li           ra, 0x0
                  lui          a3, 349034
                  addi         a3, a3, -852
                  lui          s11, 23954
                  nop
                  addi         ra, t2, -1418
                  sub          a6, s2, t2
                  nop
                  addi         t3, s8, -1441
                  addi         s2, a3, -1786
                  add          ra, s11, s10
                  lui          ra, 536780
                  sub          s10, t2, s1
                  nop
                  sub          a6, s10, t2
                  auipc        s10, 624609
                  sub          s1, s10, s2
                  add          s10, t3, ra
                  addi         ra, a6, -1961
                  nop
                  nop
                  auipc        a3, 873305
                  add          a3, ra, t2
                  lui          s8, 982679
                  add          ra, s1, s2
                  sub          s2, s2, t3
                  sub          ra, s2, a3
                  add          a6, t2, t3
                  sub          s2, s11, s2 #end riscv_int_numeric_corner_stream_15
                  sub          s11, a4, zero
                  slli         zero, s8, 18
                  lui          s10, 74081
                  sltu         t4, s8, a4
                  sll          a6, a3, t4
                  sll          s8, t6, t6
                  slt          s2, s2, t2
                  slti         t0, sp, 1426
                  lui          s4, 605721
                  slti         s6, t3, 819
                  xori         a3, ra, 1272
                  sub          a3, t1, gp
                  sub          a4, s0, a0
                  or           s10, s11, s4
                  sltiu        a1, s4, -1393
                  nop
                  sltiu        s8, s5, -377
                  sra          s11, a5, a7
                  addi         s11, s4, 1051
                  lui          s11, 345133
                  srl          s1, s4, s6
                  srai         t3, s7, 1
                  sub          s1, a4, s3
                  slt          a5, s5, a0
                  nop
                  sll          a7, s8, s9
                  srai         zero, tp, 1
                  slt          s8, s11, a1
                  auipc        s5, 18340
                  sltiu        s2, a7, -433
                  srl          s0, s6, s1
                  or           s7, ra, a0
                  slli         a1, s9, 14
                  slli         s4, t6, 0
                  sll          gp, s11, zero
                  xori         a3, s2, -1796
                  and          s0, sp, a4
                  sra          t2, t5, t0
                  add          a4, t4, s0
                  ori          s7, ra, -253
                  srl          s1, s4, s1
                  nop
                  xori         a3, a4, -1571
                  xori         s8, t1, 396
                  sub          sp, t4, s3
                  sltiu        s10, s3, -1162
                  addi         a6, s3, 1281
                  nop
                  or           s11, t4, a1
                  srli         t5, tp, 15
                  lui          a3, 982747
                  slt          a3, t4, a4
                  slli         a6, t6, 4
                  srai         ra, a1, 27
                  srli         a3, gp, 30
                  slti         s11, a2, 834
                  slti         s10, a3, 935
                  sltiu        s9, s5, 188
                  slti         s7, a3, 536
                  sll          s5, a2, s8
                  lui          sp, 81776
                  srai         t6, a5, 9
                  sra          a6, a5, s11
                  slt          s5, gp, t6
                  sltiu        s4, s1, -655
                  sltiu        s8, s8, -1382
                  srli         t6, a5, 21
                  srl          a2, s7, a0
                  slt          s7, s3, zero
                  sra          s4, a6, s2
                  srai         t1, t6, 12
                  lui          a5, 206754
                  sra          t0, s8, tp
                  sub          s7, t2, s9
                  add          s9, a6, a4
                  srli         a2, ra, 18
                  auipc        t6, 834864
                  slti         ra, t5, -1019
                  sll          a4, a7, s9
                  sltiu        ra, s4, -1100
                  auipc        a7, 659432
                  andi         s0, gp, 1994
                  add          gp, tp, zero
                  sub          a5, s3, zero
                  and          s7, t4, s3
                  or           a1, a2, t1
                  and          a5, s10, s8
                  srli         gp, s8, 30
                  auipc        t5, 1023430
                  sra          s8, gp, sp
                  and          s11, s8, a7
                  lui          t2, 415765
                  sra          s0, s8, t3
                  nop
                  srl          a4, s3, gp
                  sll          s5, s2, sp
                  addi         a3, s3, 847
                  sra          a1, s8, t3
                  and          s9, a6, sp
                  auipc        s2, 143908
                  ori          t3, t3, -95
                  slti         s8, s0, 1824
                  srl          a2, gp, a7
                  addi         s7, t2, -1635
                  and          a5, t2, a0
                  ori          s6, s8, -394
                  sltiu        gp, t3, -786
                  srai         t4, a4, 16
                  srl          zero, ra, s5
                  sltiu        s1, t3, -191
                  xori         a2, a3, -1779
                  nop
                  xor          t2, s1, a3
                  sll          s5, s10, t2
                  andi         ra, s6, 762
                  lui          a7, 838742
                  slt          gp, s1, t4
                  slt          s8, s5, s2
                  sltiu        s1, ra, 1207
                  sll          t5, a0, s6
                  nop
                  sltu         t4, gp, gp
                  addi         t5, a5, -1264
                  nop
                  sltiu        t2, s1, -898
                  ori          t0, s8, 719
                  and          t5, t3, sp
                  slt          t5, s9, a1
                  ori          t1, t1, -920
                  srai         s2, zero, 10
                  sra          ra, s11, s4
                  xori         s5, a1, 464
                  nop
                  sub          a3, t4, a1
                  or           zero, s9, a7
                  addi         ra, t0, -1547
                  ori          s1, gp, 1901
                  sll          s11, sp, gp
                  sra          t1, t5, t4
                  nop
                  auipc        zero, 498505
                  and          s5, s8, sp
                  or           zero, t4, t1
                  slli         s4, gp, 4
                  ori          a4, s6, -977
                  auipc        s5, 68624
                  sub          a4, t1, sp
                  srl          s11, t0, a4
                  sltu         t0, t6, a2
                  sra          a5, a1, s0
                  sll          a6, s11, s9
                  auipc        a5, 867191
                  addi         t4, t4, -248
                  add          t0, zero, ra
                  ori          t6, a0, -1905
                  sra          ra, s5, t3
                  srl          a2, s11, s3
                  xori         s1, s10, 991
                  add          t2, s10, s6
                  sltiu        s4, t0, -663
                  sltiu        s4, s4, 106
                  slt          t0, t3, s6
                  sltu         a6, gp, a6
                  sll          s8, t3, a6
                  sra          ra, a1, a4
                  lui          t3, 164607
                  sub          s1, a1, s5
                  addi         s10, a4, -81
                  sub          t3, s10, a6
                  lui          a3, 86999
                  add          a6, sp, t2
                  xori         s9, s11, -616
                  sltiu        s0, tp, 1550
                  ori          s5, s4, 309
                  or           s11, s10, ra
                  srli         a5, t2, 30
                  lui          t4, 165589
                  xor          t4, s6, a1
                  srai         a3, zero, 27
                  and          s4, s0, t0
                  srai         s6, t0, 31
                  slli         t1, a2, 19
                  sra          s2, s3, s3
                  slti         a2, a7, -929
                  slti         a7, s3, 419
                  add          s8, a3, s11
                  srli         s7, s1, 1
                  xor          ra, a7, a7
                  xor          a5, a5, a3
                  addi         s10, t3, -55
                  sltiu        a7, tp, 988
                  auipc        a2, 508886
                  sll          s8, tp, s0
                  sub          t0, t1, s5
                  srli         s7, a4, 23
                  andi         s5, s4, 1286
                  xori         ra, ra, 1832
                  add          ra, t6, t0
                  slli         ra, s0, 17
                  add          a7, t3, s3
                  sll          sp, s2, s1
                  slti         ra, t3, -1335
                  slt          zero, t6, a3
                  xori         t4, a2, -431
                  sll          a1, s8, s8
                  slli         s5, s0, 4
                  xori         t0, t2, 482
                  srli         a5, s3, 8
                  andi         a7, a0, 1199
                  srli         t6, t5, 31
                  or           zero, zero, a5
                  and          t2, t2, t3
                  slti         s5, t3, 1203
                  auipc        t0, 813094
                  lui          ra, 7995
                  sltiu        t2, s8, 1845
                  xor          s0, zero, t0
                  sra          t2, t1, s6
                  sra          s5, s9, a5
                  or           s5, s1, t2
                  and          t6, s3, s5
                  nop
                  auipc        ra, 233848
                  srli         t6, t6, 9
                  srl          t5, s0, t3
                  slli         zero, s11, 16
                  srai         s10, zero, 30
                  ori          s0, s8, -1284
                  xori         s9, s11, 1332
                  auipc        s1, 814902
                  sra          a5, s6, s2
                  and          s0, sp, s0
                  slti         sp, t2, -350
                  and          a2, s8, s8
                  srai         s9, s9, 6
                  add          s1, a0, sp
                  lui          t6, 702388
                  srl          ra, t6, t2
                  ori          s0, gp, 875
                  xori         a4, a7, 1034
                  xori         a3, zero, -635
                  sltiu        a7, t3, -917
                  slt          a2, sp, t2
                  lui          sp, 309999
                  srli         t6, s8, 9
                  andi         t2, a1, -142
                  auipc        ra, 593979
                  xor          s4, s5, a4
                  addi         s10, s2, -1768
                  lui          s7, 994176
                  add          s10, a7, s4
                  nop
                  lui          t0, 951993
                  andi         gp, a6, 669
                  sll          s10, sp, s1
                  slli         a2, tp, 17
                  sltiu        s9, t4, -1459
                  xori         t2, a2, -1254
                  ori          zero, a7, 579
                  srl          a4, t4, s7
                  lui          a6, 23079
                  slti         sp, s0, 693
                  slli         t5, gp, 13
                  auipc        s8, 712051
                  srai         a7, s6, 27
                  slli         t2, gp, 10
                  sra          s10, s9, t2
                  srli         sp, t3, 8
                  add          t3, tp, t1
                  ori          t3, a6, 386
                  sltiu        s4, s1, -552
                  add          a1, s2, tp
                  andi         s1, a5, 815
                  srli         a2, t4, 7
                  add          a4, a4, s0
                  slt          a2, a5, a3
                  slti         s8, s2, 1801
                  auipc        a1, 462827
                  srai         a2, t4, 21
                  nop
                  slti         s5, t6, 154
                  andi         t3, a4, -1681
                  sra          s8, a7, t4
                  slt          t4, t0, s3
                  or           t5, a3, a4
                  slti         s5, a2, -181
                  xor          s2, a0, s8
                  addi         ra, ra, -1542
                  slt          s5, t6, sp
                  nop
                  slli         zero, s3, 14
                  srai         a1, gp, 28
                  add          s9, a1, s4
                  ori          a1, s3, -68
                  xori         s5, a5, -487
                  sltu         s5, s7, s3
                  sltiu        ra, s0, 886
                  xor          sp, s6, t4
                  andi         a6, zero, 1090
                  nop
                  slti         t3, a1, -1420
                  slt          a7, a4, a1
                  and          a2, s11, a3
                  srli         s0, t0, 29
                  sra          s6, t2, ra
                  xor          s9, s6, s4
                  or           s5, s3, t4
                  xor          t3, s4, a5
                  xor          s5, s5, ra
                  add          t1, s9, t4
                  slti         a2, gp, 21
                  srl          a3, s1, s9
                  or           a6, t5, s10
                  srli         t5, a0, 24
                  sub          gp, s3, t5
                  sltu         s0, a4, zero
                  or           t3, s0, s8
                  add          s8, s8, a1
                  slti         t2, ra, -1725
                  srai         s5, s6, 15
                  ori          s9, t0, 756
                  xor          a6, a3, ra
                  xor          t6, s2, s9
                  sltu         s7, a3, a1
                  sltiu        a7, t6, -914
                  xor          s9, gp, t0
                  slt          t4, t2, t0
                  sub          s1, s4, t5
                  slli         t6, s11, 2
                  xor          s4, s11, a7
                  auipc        sp, 884947
                  auipc        s10, 246893
                  addi         s6, t0, -1001
                  sll          a2, a5, s10
                  sra          s1, s6, a1
                  srl          s10, ra, s10
                  or           t6, t2, s5
                  sra          a7, t0, t6
                  slli         a5, t1, 25
                  lui          s5, 697196
                  srli         a4, a0, 12
                  srai         s0, sp, 6
                  auipc        a4, 483257
                  and          s11, t5, s5
                  slt          zero, t2, t3
                  lui          sp, 591552
                  sltiu        sp, s9, -818
                  add          s1, s5, a4
                  srl          ra, a1, s8
                  xori         t5, s6, -1653
                  srli         s9, a3, 26
                  auipc        s7, 680140
                  slti         a4, s11, -325
                  slt          s2, t2, s2
                  xor          a2, s5, s3
                  nop
                  xor          t5, a0, gp
                  sll          sp, s5, t1
                  srai         a2, t0, 9
                  slti         a7, t4, -189
                  srl          a4, s9, ra
                  xor          s11, gp, a2
                  sll          t1, a3, s8
                  sltu         s5, tp, s9
                  srai         t0, tp, 29
                  sltiu        s2, s11, 819
                  srl          s9, t6, a0
                  sra          t4, a7, s2
                  and          sp, a4, t1
                  sltiu        a2, a0, -249
                  slli         s10, s7, 21
                  andi         a4, gp, -1799
                  srl          a2, t6, zero
                  and          t2, s2, a2
                  and          t2, s2, a0
                  slt          a3, s3, tp
                  andi         t1, s4, -659
                  add          s8, s6, a1
                  srai         a4, t1, 19
                  addi         sp, zero, 1332
                  addi         a3, zero, -1251
                  andi         s1, t4, -1869
                  addi         zero, gp, 263
                  slti         zero, s10, -941
                  addi         a4, t2, -1224
                  and          s0, ra, sp
                  andi         t5, s9, 181
                  nop
                  ori          s4, s9, -1472
                  add          a4, s0, s11
                  srli         s9, ra, 2
                  and          s6, ra, t2
                  sltiu        s7, s2, -664
                  sltu         ra, t6, a1
                  andi         zero, a1, -308
                  slli         s2, zero, 15
                  auipc        s1, 263941
                  sra          s7, t5, s9
                  xor          s5, t3, a6
                  sub          s8, s3, s8
                  add          s6, sp, s0
                  addi         s1, s6, 1504
                  or           a6, ra, s7
                  srl          s2, s10, a1
                  and          a6, a0, s10
                  slli         a1, a7, 7
                  sub          t5, s7, s4
                  and          a3, a2, t0
                  addi         t1, s1, 1235
                  slti         t0, a7, -855
                  sltu         s1, gp, s1
                  sll          s2, s10, s9
                  slti         a1, s6, -1006
                  srli         s1, zero, 19
                  sub          s1, t5, gp
                  nop
                  slli         t3, t1, 10
                  sub          a6, t3, s10
                  addi         a4, tp, -1473
                  sltiu        s7, t6, 1321
                  lui          a4, 640119
                  srl          ra, s1, s11
                  slti         t1, s10, -1361
                  sll          s7, a5, ra
                  addi         a3, a7, 686
                  add          s8, a1, t1
                  ori          a5, s8, -1920
                  sra          a6, s3, s0
                  sub          s1, s6, a0
                  sltu         s10, t1, tp
                  sltiu        ra, a3, 818
                  sll          a3, s1, a4
                  sra          t0, a0, ra
                  srl          s0, s3, zero
                  xor          s8, t0, s6
                  sll          s10, s9, sp
                  lui          t0, 592268
                  slt          ra, tp, t5
                  slti         a7, t0, -1286
                  nop
                  xor          s2, sp, t5
                  srai         t4, t3, 26
                  or           a7, s8, t0
                  srli         t6, tp, 8
                  sltiu        s5, s8, -1926
                  auipc        s9, 888940
                  slli         s5, t2, 13
                  sltu         t2, s2, a7
                  slti         t5, a2, 1915
                  sll          t6, s11, t2
                  nop
                  auipc        s9, 495548
                  sltu         s4, s3, t5
                  or           t1, s10, a4
                  addi         t2, s3, -995
                  srli         a4, a2, 15
                  slli         a2, s5, 15
                  ori          t2, t3, -1913
                  sub          a4, a2, tp
                  srli         s0, s8, 7
                  sub          s5, s0, a1
                  slli         t0, a5, 25
                  sra          s0, a7, a3
                  andi         s0, t3, -729
                  xori         s6, s2, -1791
                  srai         a4, a5, 8
                  sra          a7, tp, t1
                  slt          t6, t6, s10
                  slti         t2, sp, -770
                  xori         t4, s10, -1333
                  srl          s4, a5, s0
                  slt          s9, t6, t2
                  add          s5, s10, ra
                  srli         t2, a5, 16
                  addi         ra, s5, -232
                  sra          a4, s6, a5
                  lui          s0, 400177
                  andi         t2, a0, -477
                  slli         a3, a5, 12
                  addi         t5, a2, -282
                  xori         t6, t5, -821
                  slli         a2, a4, 18
                  srli         a1, tp, 15
                  andi         a1, a3, -507
                  andi         s7, a3, 712
                  lui          sp, 466147
                  and          s0, tp, sp
                  or           t6, a7, t5
                  srli         s6, s3, 19
                  slt          zero, t2, gp
                  sltiu        a5, t3, 762
                  andi         t0, zero, 1256
                  sub          a7, t3, a4
                  lui          sp, 91556
                  srli         s9, a5, 5
                  and          a6, t3, s1
                  slli         s8, s4, 24
                  xori         s1, s5, 1392
                  xori         t6, a5, -274
                  srai         s9, t3, 2
                  slli         a7, t1, 25
                  xor          s10, a3, s7
                  addi         t1, t2, 478
                  srl          a1, s11, s1
                  srl          s7, a2, sp
                  slli         s8, t4, 1
                  add          t3, s2, s9
                  xori         a4, t6, 985
                  auipc        t6, 294331
                  add          a5, t0, t4
                  add          t5, ra, t2
                  xor          s2, s9, t4
                  xor          zero, zero, sp
                  andi         a3, s11, 1266
                  sltiu        sp, gp, -1899
                  add          s5, s11, a6
                  andi         zero, s3, 1998
                  sra          sp, s8, s8
                  nop
                  xor          a7, a3, gp
                  srl          a5, s6, t4
                  sub          s9, s11, t1
                  or           zero, t0, s10
                  sub          gp, t3, s11
                  sub          s4, a7, a6
                  srai         s8, t3, 21
                  srl          t4, s1, t4
                  nop
                  sra          s4, s2, a6
                  and          s1, s7, s4
                  sub          a2, s9, a3
                  auipc        s11, 428252
                  slli         t2, sp, 28
                  lui          a6, 702687
                  sra          s1, a4, s8
                  srli         s0, s9, 22
                  add          s8, ra, t6
                  lui          s1, 470099
                  ori          s0, t3, -645
                  add          s6, a4, a3
                  sub          t6, a4, s0
                  add          a4, s7, s4
                  sub          s2, t5, s9
                  lui          t4, 525830
                  sll          s8, s9, s8
                  and          a3, a3, s2
                  auipc        s5, 294876
                  nop
                  srai         a7, a6, 27
                  srl          t5, gp, a2
                  or           a4, zero, s1
                  andi         s8, a4, 1400
                  slli         t0, s2, 21
                  xor          s4, a0, s1
                  ori          ra, a4, -1699
                  addi         a5, s10, -944
                  sll          gp, s10, t0
                  addi         gp, s5, -578
                  auipc        s9, 94851
                  xori         s11, s4, 1946
                  slti         a4, t3, 1768
                  or           ra, a7, sp
                  sub          t6, s2, s0
                  sra          a1, sp, s5
                  xor          t2, t4, t4
                  xori         s1, sp, -1453
                  ori          s4, tp, -768
                  sll          ra, s7, s5
                  xori         gp, s8, 1208
                  lui          a5, 1004487
                  xor          gp, s11, a6
                  sltiu        a3, s9, -1456
                  sub          a2, s8, a5
                  srai         t1, s5, 4
                  nop
                  slti         t2, s4, 153
                  and          t5, s10, t4
                  xor          t0, s4, t6
                  slli         s8, a5, 9
                  slli         s4, s5, 7
                  lui          s2, 705139
                  addi         t6, s10, -1675
                  slti         sp, t6, 959
                  srli         t6, s7, 16
                  xor          t3, t1, s1
                  slli         a7, t3, 28
                  sltu         a2, gp, ra
                  lui          s5, 507555
                  sltiu        s10, s6, -100
                  lui          t5, 584745
                  xori         t4, s10, 972
                  sltu         gp, s5, s6
                  slli         s5, s4, 0
                  srli         a3, a6, 22
                  srli         t5, gp, 25
                  sll          t5, ra, t2
                  and          s5, t1, t5
                  nop
                  add          s8, a1, s11
                  srl          s0, a3, s6
                  sra          t3, a0, t0
                  sltu         t3, t5, s4
                  slt          a6, a5, s6
                  srli         s10, a4, 27
                  add          s1, a3, a0
                  sub          t2, s0, s4
                  or           a2, s8, s7
                  auipc        t1, 584186
                  sltiu        s11, s8, 923
                  srli         t1, s11, 8
                  ori          s6, a2, -1060
                  addi         s0, t5, -1304
                  ori          t4, a3, 866
                  or           t4, a7, t0
                  srli         s11, a4, 8
                  sltiu        gp, a0, 1960
                  ori          t5, sp, 1555
                  slti         s5, a6, 914
                  lui          a4, 123155
                  sra          t0, t2, s2
                  sltu         t1, s9, t3
                  or           s9, s0, s6
                  sra          t1, s10, s5
                  and          t0, t3, ra
                  addi         a2, s2, -1752
                  sltu         a4, a2, zero
                  lui          s5, 126137
                  xori         a3, a0, -938
                  ori          s11, s11, 1716
                  srai         t1, s7, 24
                  ori          a4, zero, 856
                  auipc        t5, 310034
                  sltiu        a2, gp, -1957
                  xor          s2, s11, t4
                  slt          zero, s8, t2
                  sub          s0, s4, t6
                  srli         s2, s4, 30
                  srl          s11, s5, t0
                  and          a3, s0, s7
                  nop
                  sub          s5, s2, a0
                  srl          s1, t0, t6
                  auipc        s2, 1034784
                  and          s1, ra, gp
                  add          s4, s1, t5
                  srli         sp, s9, 22
                  srl          s5, s6, ra
                  or           s1, s7, sp
                  and          a7, a5, s0
                  slli         t1, s3, 11
                  srai         s2, t6, 9
                  sub          s10, a1, a7
                  or           a5, t4, t5
                  slti         a2, s4, 1069
                  and          s6, gp, t1
                  srl          gp, a6, ra
                  addi         t0, a2, -232
                  slti         ra, a6, 1889
                  srli         t2, t6, 19
                  ori          ra, a7, -1844
                  sll          t5, t3, a3
                  xor          a1, a5, s8
                  nop
                  addi         s8, zero, -362
                  sltiu        a4, s4, 1776
                  sra          s2, a3, s8
                  srai         t1, sp, 5
                  sltiu        a3, a0, 1700
                  addi         s2, s2, 1617
                  xor          a4, a4, s4
                  auipc        t1, 781006
                  andi         gp, s1, 491
                  sltiu        t3, s7, 826
                  xor          a1, s10, a5
                  sra          a5, a6, s11
                  sub          zero, tp, t5
                  slti         s7, sp, 1453
                  nop
                  srai         sp, s0, 7
                  sltiu        t3, ra, -371
                  xori         zero, s9, 1298
                  slti         a6, s2, -1152
                  addi         a6, s11, 18
                  lui          s1, 665864
                  addi         zero, s4, 994
                  auipc        s10, 209598
                  sra          s11, s2, s2
                  ori          t3, a5, -54
                  srl          s8, t0, a1
                  xori         ra, a5, -679
                  srli         a7, s6, 22
                  add          a1, s4, a4
                  ori          t0, s8, -584
                  nop
                  sll          zero, t0, s11
                  xori         s6, t0, 1228
                  sra          a7, a3, t2
                  andi         s8, t1, -824
                  xori         s6, s6, 1191
                  and          zero, s10, s7
                  lui          s11, 970136
                  srl          a5, s7, a2
                  sub          t4, s1, gp
                  slti         t1, s5, 1751
                  srai         t0, t4, 11
                  xori         a2, a0, -925
                  sltiu        s2, a1, -1127
                  addi         s2, t3, -1577
                  slli         a1, s2, 4
                  slli         t1, t2, 25
                  add          a7, s1, s11
                  and          s4, t1, gp
                  sll          s10, s3, s3
                  slt          gp, t6, s4
                  srai         a7, a5, 21
                  xori         s2, t2, 1618
                  slli         s6, zero, 19
                  lui          t0, 287523
                  slli         a1, a5, 21
                  sltu         t5, s5, t0
                  sub          t5, t2, a4
                  andi         gp, s4, -1086
                  add          s5, t6, s5
                  addi         s1, s4, -400
                  sll          t0, s8, s7
                  srl          s1, s5, t1
                  or           a2, s3, t5
                  andi         zero, a4, -1879
                  or           s0, s5, s10
                  addi         t6, s4, 1512
                  nop
                  xori         a6, s1, -357
                  sltiu        s0, s4, 1645
                  addi         a1, s8, 1422
                  and          s4, a0, t6
                  sra          t0, s4, a2
                  lui          sp, 1028873
                  srli         s7, a1, 11
                  sltiu        s5, t1, 822
                  lui          s8, 351008
                  nop
                  sub          a7, t0, a7
                  sltu         s10, gp, t5
                  and          zero, s9, s2
                  slli         a1, s7, 21
                  and          a6, sp, s1
                  add          s2, t3, s7
                  xori         ra, s6, -1088
                  sra          s9, a2, s5
                  sll          t1, ra, s4
                  srai         zero, s6, 27
                  slli         sp, s2, 28
                  slli         s8, s5, 26
                  ori          s0, zero, 1305
                  nop
                  sltu         s7, s11, a3
                  nop
                  ori          s4, t3, -947
                  xori         a4, s8, -368
                  lui          t6, 266394
                  andi         zero, s10, -1505
                  ori          t6, s5, 226
                  slt          t3, a2, a2
                  add          a3, sp, t1
                  auipc        s1, 424693
                  sub          s2, s11, t3
                  or           s9, s0, s5
                  lui          a4, 149511
                  slt          s11, t6, t2
                  ori          gp, zero, -543
                  sll          t6, t0, zero
                  srai         s5, s7, 4
                  add          a1, t2, a5
                  or           t3, t4, s6
                  sltiu        sp, a7, 1408
                  slli         s2, a2, 28
                  lui          s5, 918335
                  and          t4, a5, tp
                  srl          zero, a4, a2
                  srl          a5, sp, t1
                  xor          s7, s7, sp
                  sltiu        a4, s8, 1021
                  add          s11, s11, gp
                  sltu         zero, s0, s5
                  or           s4, a5, s4
                  nop
                  sra          s2, gp, t3
                  slli         s11, t4, 18
                  sltu         a5, a6, s7
                  sltu         a4, s9, a7
                  sltu         s6, a3, s10
                  xori         zero, s6, 124
                  slli         a6, s1, 3
                  srai         a7, a5, 15
                  lui          sp, 150823
                  srai         ra, gp, 8
                  lui          s8, 403692
                  sltu         a6, s7, s2
                  andi         s11, t6, -826
                  srli         a3, s4, 23
                  sra          t3, s0, t1
                  xori         t5, t3, 1
                  slt          t1, s11, s11
                  auipc        sp, 666728
                  nop
                  sub          s5, t3, t0
                  srli         t3, t4, 23
                  lui          a3, 625360
                  add          s5, s2, a5
                  xori         sp, a3, 884
                  or           gp, s9, a6
                  slti         t4, gp, 1656
                  srai         t4, s1, 7
                  sltu         s8, t4, t2
                  sra          a6, s9, s1
                  add          t5, t1, s1
                  srai         a7, s7, 8
                  lui          t2, 246484
                  add          a6, ra, sp
                  and          t6, s0, s0
                  ori          s10, a2, 1701
                  addi         a7, a3, 1456
                  add          t4, s6, s0
                  slti         t2, a3, 1914
                  sub          a3, t3, s7
                  srai         s7, t2, 13
                  or           s5, a3, a6
                  sll          zero, gp, gp
                  xori         t6, sp, -1046
                  sltiu        t3, s3, 984
                  xor          a2, s6, s8
                  sltu         sp, a3, a2
                  srl          sp, zero, t3
                  sltu         s5, s4, s4
                  sub          a3, t4, s7
                  auipc        s4, 423436
                  sub          s7, zero, tp
                  auipc        s6, 617862
                  sll          ra, s5, s4
                  xori         s0, tp, 1857
                  slli         s4, s5, 16
                  and          s11, tp, s3
                  ori          a5, tp, 104
                  sltu         t6, s5, s4
                  sra          s7, a4, s5
                  and          t6, t6, tp
                  xor          t4, tp, a4
                  ori          a4, s11, 113
                  xori         s2, a4, 313
                  auipc        s5, 313710
                  ori          s11, a6, 669
                  sll          a2, s6, a6
                  sltu         a5, sp, s3
                  sll          t2, a0, t2
                  xori         t3, ra, 1481
                  slt          s6, t6, gp
                  xor          t0, a0, s11
                  sltiu        sp, s8, 620
                  xor          t6, s11, s10
                  and          gp, s1, t6
                  srai         gp, s5, 19
                  nop
                  slli         s11, a5, 15
                  slt          t1, s4, t5
                  auipc        s9, 329509
                  slt          a2, s10, tp
                  xori         t6, a2, -579
                  sltu         s2, s5, s1
                  srai         s0, a1, 22
                  srli         a1, a3, 26
                  xori         s7, t0, 649
                  slti         a3, a6, -1608
                  addi         a6, a4, 922
                  srli         a4, s9, 13
                  ori          t5, zero, -1969
                  sub          t0, s0, gp
                  ori          a3, a5, -1786
                  and          ra, s1, t3
                  sll          s0, s0, s8
                  addi         s4, t4, -1331
                  sltu         t1, s4, t4
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           a6, 0x0
                  li           s2, 0xcb09c4b7
                  li           a2, 0xffffffff
                  li           s11, 0xffffffff
                  li           s9, 0xffffffff
                  li           a7, 0xd45f6a0f
                  li           t2, 0x0
                  li           t6, 0xffffffff
                  li           t3, 0xffffffff
                  auipc        t6, 216523
                  lui          t6, 908408
                  addi         t3, a4, 433
                  sub          s11, t2, a6
                  addi         t2, t2, 567
                  auipc        t6, 1007298
                  auipc        s2, 649270
                  sub          s9, a4, a6
                  add          s11, s11, a4
                  add          s11, t6, t2
                  nop
                  nop
                  lui          a4, 814747
                  lui          t6, 615382
                  addi         s2, s2, 31
                  nop
                  addi         t6, a6, 1558
                  nop
                  sub          s11, a4, t2
                  addi         t2, t6, 1822 #end riscv_int_numeric_corner_stream_1
                  sub          s2, s4, s3
                  xor          a1, ra, s4
                  xor          t3, s4, gp
                  or           a3, s4, s5
                  and          zero, a4, a3
                  add          s9, a7, t6
                  slli         t5, t4, 25
                  ori          s6, t5, -1163
                  add          t4, a5, s9
                  or           s8, t4, s9
                  slti         a3, a4, -749
                  addi         a5, a5, 220
                  xori         t1, s0, -642
                  srai         s6, t3, 19
                  slti         s8, s1, 1408
                  srl          ra, tp, t2
                  add          a3, s1, t1
                  sltu         zero, s4, t1
                  slti         a2, a0, 1983
                  xor          a6, a3, a2
                  and          a7, zero, s6
                  xor          s8, t1, a7
                  slli         a2, a3, 0
                  sll          t3, a0, a5
                  andi         a7, s7, -979
                  slt          s11, s11, t3
                  lui          gp, 264731
                  slti         t4, s11, -190
                  add          t1, s1, a0
                  srli         s1, s1, 4
                  sub          t1, s6, t4
                  xor          t5, a4, zero
                  nop
                  xori         a5, s5, 8
                  andi         t4, a4, 736
                  sra          t6, sp, s4
                  and          a7, s7, a3
                  xori         s9, a5, 1365
                  sra          s1, s4, t0
                  lui          t6, 739889
                  slt          a4, t2, s7
                  sra          t4, s9, s7
                  srai         a2, a0, 21
                  srli         s2, s4, 17
                  addi         t0, s10, 1660
                  sltiu        a1, a2, -117
                  xor          s4, s8, s9
                  auipc        a3, 420823
                  sltiu        a5, gp, 702
                  sll          s11, s8, t5
                  or           t2, s1, s11
                  srli         s10, s7, 31
                  slt          t3, gp, s0
                  auipc        s10, 330220
                  xori         s9, s8, 1405
                  nop
                  xor          s2, t4, s4
                  slt          s8, s2, s6
                  sltiu        t5, a2, 720
                  slli         s2, a6, 7
                  srli         a6, a7, 3
                  addi         s1, a7, -677
                  sltiu        t2, s11, -1188
                  or           zero, a7, s1
                  xor          s7, s11, s11
                  srai         sp, s5, 2
                  ori          t6, s9, 267
                  and          gp, s6, gp
                  andi         s1, s3, -400
                  slti         s7, t2, -538
                  and          s7, s2, s1
                  sltu         a4, s4, s4
                  srli         ra, a3, 2
                  and          s6, a7, zero
                  ori          a5, a2, 2012
                  sltiu        s2, s3, -1102
                  or           zero, zero, a7
                  xor          s2, t0, s8
                  sltiu        s1, a3, 1371
                  xori         s9, s9, -1915
                  sll          zero, t0, a3
                  sltu         t2, a4, a5
                  sltiu        a7, a0, -954
                  nop
                  sra          s10, s8, gp
                  or           sp, a4, t6
                  sltiu        a7, s11, 1895
                  nop
                  xor          a5, t1, tp
                  sra          ra, ra, tp
                  addi         t0, a2, -1446
                  auipc        s6, 480127
                  ori          s9, a4, -2018
                  nop
                  sub          t0, gp, s2
                  xor          zero, a6, a5
                  andi         ra, t2, 397
                  xor          t1, t0, a0
                  or           t1, t3, a4
                  add          s8, s10, s3
                  ori          a3, a4, -961
                  nop
                  addi         t0, s10, -761
                  sub          ra, s5, t1
                  add          t5, s8, a2
                  ori          t2, t0, 593
                  ori          a1, s9, 965
                  sltu         s7, s4, tp
                  sra          s0, ra, ra
                  xori         a2, a5, -508
                  and          zero, a1, gp
                  sub          a7, t4, a1
                  srli         s8, a3, 17
                  srai         s11, t1, 25
                  srl          t6, s4, t5
                  sub          s2, s10, t2
                  auipc        ra, 250355
                  sll          a7, a7, t0
                  srl          sp, s2, s0
                  add          a6, a6, t5
                  and          a1, gp, sp
                  sltu         zero, s7, s0
                  xor          t0, a7, a6
                  or           a1, ra, s7
                  sltu         s9, s11, s6
                  sub          s0, a3, a2
                  srl          sp, t5, s5
                  xor          a7, zero, t2
                  sub          s6, t1, s3
                  sltiu        zero, t2, 419
                  sltu         ra, s11, s1
                  sltiu        a2, s7, -526
                  addi         t3, s7, -715
                  slt          s10, sp, s6
                  srai         t5, a3, 24
                  sra          s0, sp, a3
                  slti         s9, a6, -1444
                  xori         s0, a6, 822
                  andi         t6, s1, -1757
                  slti         a4, s8, -399
                  and          s2, s4, s1
                  slt          s8, s9, s8
                  ori          s1, tp, -1048
                  lui          a3, 628492
                  auipc        t6, 377525
                  ori          s8, s2, -701
                  lui          s2, 345570
                  lui          t5, 573805
                  sltiu        a1, t0, 402
                  srl          zero, t0, gp
                  sll          t1, t2, a4
                  sll          s9, t5, s5
                  add          s5, t4, gp
                  slli         a3, a3, 27
                  ori          s9, s8, -808
                  nop
                  addi         s11, s9, -468
                  sltiu        t0, a2, 243
                  srl          t0, s2, s11
                  slt          s5, s4, a2
                  sra          s8, s0, a7
                  sll          s10, s6, s9
                  xor          zero, s5, s8
                  ori          sp, tp, 199
                  auipc        a5, 380171
                  nop
                  ori          t6, gp, -1098
                  auipc        s8, 38118
                  xori         s10, t2, -1017
                  srli         t4, t1, 2
                  auipc        t0, 975522
                  auipc        a2, 811691
                  sltu         s11, t4, s6
                  slli         a7, s5, 16
                  sltu         a2, ra, a1
                  nop
                  addi         s6, ra, -1119
                  sll          s5, ra, a4
                  add          zero, a3, s8
                  lui          t3, 569745
                  srl          a6, t4, t1
                  and          t2, a3, s4
                  andi         sp, a1, -1484
                  sltiu        a1, t4, 1796
                  addi         gp, s3, -741
                  slti         t4, tp, 1891
                  add          s0, a7, a7
                  sra          s1, s4, ra
                  slt          a6, a7, sp
                  xor          s2, a4, a2
                  srl          t5, s10, s5
                  xori         a7, s0, 1455
                  slt          t4, s7, a6
                  sltiu        t0, s6, -1250
                  xori         a7, s0, -259
                  slli         s9, s0, 16
                  srai         s11, t6, 7
                  srai         t4, s5, 14
                  ori          s4, zero, 1000
                  sll          t1, gp, s0
                  sub          t1, a3, zero
                  sll          s7, t0, a7
                  nop
                  andi         t0, a2, 1143
                  xor          a7, s5, s2
                  auipc        s4, 84147
                  auipc        t6, 498836
                  nop
                  ori          s1, a3, 465
                  and          a1, a5, t3
                  addi         a5, a6, 1803
                  sub          s6, a1, s9
                  addi         s4, a5, -1589
                  or           t4, tp, gp
                  slt          t4, a2, s1
                  sub          a7, s5, t0
                  and          s9, t6, t6
                  add          s7, t4, a4
                  nop
                  or           s5, s11, s9
                  srli         ra, a7, 17
                  slt          t5, t4, t5
                  slti         t1, a7, 922
                  lui          a2, 130106
                  slt          s5, a3, gp
                  nop
                  sltiu        t4, s9, 715
                  srl          t1, s11, a6
                  sltiu        a2, a3, 36
                  sra          gp, s9, s5
                  xor          a2, tp, a1
                  srai         sp, zero, 3
                  sltiu        a3, a4, 1607
                  andi         a3, t3, -1180
                  sra          s11, t3, s7
                  add          s10, s6, a7
                  srai         s1, a2, 11
                  and          t0, t6, t5
                  ori          t0, tp, -428
                  slli         gp, s0, 27
                  andi         t0, s3, -1715
                  slt          s9, t3, a3
                  andi         a2, t0, -1678
                  auipc        gp, 142249
                  slti         t2, ra, -245
                  sub          t1, s6, s1
                  srl          ra, a6, t1
                  sll          t5, a4, t1
                  srli         s4, t0, 24
                  slti         s5, s10, 434
                  add          t1, a2, s7
                  or           a3, s10, t2
                  lui          s8, 198702
                  ori          a3, s0, -371
                  or           ra, a6, s11
                  srai         s10, t0, 6
                  srai         a3, tp, 11
                  or           s6, a7, t2
                  addi         a6, s3, 1688
                  xori         sp, s5, 1503
                  slt          t5, s10, s0
                  srli         s2, s6, 28
                  xor          t1, a4, s4
                  slti         a4, a6, 762
                  sub          t0, a3, gp
                  addi         s0, s0, 1557
                  xor          t5, t1, s0
                  ori          a7, a6, -300
                  lui          s10, 167685
                  nop
                  srl          a1, a2, s4
                  sltiu        t2, s4, 1852
                  xori         s6, t3, 995
                  sltu         s5, s2, s8
                  sltiu        s1, a4, -1432
                  slli         a7, s0, 25
                  and          s10, s5, s10
                  srl          ra, a5, t6
                  lui          t2, 901226
                  srli         s2, zero, 20
                  sra          gp, s4, a6
                  nop
                  slli         s4, s8, 0
                  sra          t0, s3, t0
                  or           s2, s2, a6
                  andi         a2, ra, 1647
                  lui          a6, 696208
                  sltiu        gp, ra, -1887
                  sltiu        a6, t1, -1202
                  sll          zero, a4, a4
                  slti         a1, s7, 1253
                  addi         ra, s1, 1474
                  sltiu        t6, s9, 1037
                  sltu         s8, sp, s5
                  xor          s4, a5, s4
                  sll          t3, a2, s10
                  xor          s9, sp, a6
                  xor          s1, a7, s2
                  xor          s0, sp, s2
                  add          s1, t5, s4
                  srli         a2, t4, 2
                  slt          t0, a7, a0
                  srai         s4, s2, 16
                  sra          s1, a5, a1
                  sub          zero, sp, a0
                  slti         t2, a2, -469
                  lui          s9, 1030355
                  slli         s1, a1, 24
                  slt          s11, a3, s4
                  and          a6, a1, a2
                  sltu         zero, t6, a6
                  ori          a3, t1, 36
                  andi         t0, gp, 1635
                  nop
                  slti         t3, s6, 678
                  slli         s6, a6, 3
                  sra          s1, sp, s8
                  slt          sp, t5, s11
                  or           a1, gp, t4
                  sltu         s2, sp, a4
                  or           s5, zero, gp
                  xor          t3, s8, t0
                  xori         a6, s8, -431
                  slli         a5, tp, 30
                  slt          a2, sp, a5
                  xor          t4, s4, s0
                  sll          s11, t4, t4
                  and          s2, t6, a4
                  and          s2, t1, s8
                  sub          t2, t6, t1
                  srl          zero, t1, s6
                  srli         s11, s8, 21
                  sltiu        t1, tp, -1036
                  sltu         a2, t3, s1
                  nop
                  sll          t6, s3, t1
                  nop
                  sra          a4, s0, zero
                  sltu         t4, s7, a3
                  nop
                  addi         t1, sp, 585
                  and          a4, a1, tp
                  nop
                  slt          t4, t2, s2
                  slli         s2, s2, 14
                  andi         t1, zero, -937
                  addi         sp, s5, -452
                  sltiu        s0, s11, -1420
                  srl          s1, a4, s0
                  or           s8, a0, s11
                  xori         a2, tp, -443
                  and          ra, s4, a7
                  slti         s8, a6, 1413
                  sltu         sp, a7, ra
                  sra          zero, s11, ra
                  nop
                  srli         a6, s5, 24
                  addi         gp, s1, 1167
                  sltu         t3, a5, zero
                  auipc        s8, 278717
                  slti         a4, t4, 581
                  sra          s11, t5, s1
                  add          t1, a3, s3
                  srl          s1, t0, t1
                  add          t6, a1, t4
                  sub          s6, a2, s10
                  auipc        a6, 307313
                  addi         a4, t3, -1209
                  lui          gp, 435331
                  slt          s5, s2, ra
                  xori         ra, s10, 11
                  slt          t6, s10, a7
                  lui          s11, 334905
                  ori          t6, a2, 112
                  sltiu        a3, s7, -1906
                  sltiu        s10, sp, -161
                  srl          s1, s3, t4
                  slt          a5, a5, t6
                  addi         a3, t1, 1093
                  sra          s8, t4, t1
                  slti         s7, a1, 1500
                  sltu         t2, a4, a7
                  sra          t3, a0, t6
                  sltu         s8, gp, s0
                  ori          t5, s4, -691
                  sltu         t6, t2, s6
                  slti         t2, a6, 313
                  and          s1, s3, a3
                  sltu         s8, a6, a0
                  addi         a1, gp, -1139
                  srli         a2, s0, 27
                  srai         s11, s3, 11
                  sltu         s11, s3, ra
                  srli         s0, t3, 17
                  slli         t5, a5, 22
                  srli         s0, s4, 26
                  slli         s11, gp, 18
                  and          a1, tp, t5
                  addi         s1, t2, 513
                  sltu         t5, s9, s10
                  xori         a2, zero, 603
                  sra          t0, t2, t2
                  ori          s7, ra, 1529
                  andi         a5, t1, -636
                  srli         s7, gp, 29
                  srli         t0, t1, 20
                  or           s1, s2, a6
                  sll          a1, t0, s5
                  slt          a6, a1, s0
                  sll          a6, s6, t6
                  srli         s1, s9, 19
                  or           a5, s2, a6
                  xori         a4, s10, -1691
                  slti         s4, a5, 1726
                  xor          a2, a1, s0
                  and          ra, s3, t1
                  sltu         t2, a6, t4
                  sltiu        a6, s2, 255
                  sltu         s9, s10, zero
                  sll          s9, a2, s3
                  ori          s9, ra, 1062
                  slti         t6, s3, 1101
                  sltu         s10, a5, gp
                  sltu         a3, s1, a1
                  sltu         sp, t2, s7
                  or           s2, a5, s9
                  srai         zero, t1, 11
                  sub          s4, s11, s10
                  sltu         t6, zero, a3
                  addi         s8, a3, -1234
                  srli         gp, s1, 13
                  ori          a5, s8, -875
                  addi         gp, tp, -804
                  srai         a1, s6, 9
                  xori         gp, s6, -1194
                  xori         t6, a2, 891
                  xori         t6, a7, -1034
                  sltu         s10, s0, t1
                  add          s1, t5, s7
                  or           a4, a5, a7
                  slli         a2, a7, 29
                  slli         t4, tp, 0
                  lui          gp, 530365
                  srli         zero, s11, 25
                  or           s7, tp, t6
                  sltiu        a4, zero, -1047
                  slt          t2, a1, t0
                  lui          s8, 398924
                  auipc        a3, 220543
                  sltu         s0, s7, t2
                  sub          s6, s2, s8
                  ori          s10, a4, -1614
                  and          s2, t3, a6
                  slli         a1, a0, 10
                  sll          t6, t5, zero
                  andi         t3, s1, 157
                  xor          s2, t5, t0
                  nop
                  andi         s6, a0, -846
                  sra          s11, t5, t5
                  srai         t6, a4, 27
                  auipc        zero, 360322
                  sra          a1, t6, t4
                  xor          s4, a4, s10
                  sra          s2, a7, s4
                  srl          t5, s11, s9
                  andi         t1, t0, -1645
                  xor          s11, s0, t6
                  slt          a1, s8, s5
                  sub          t5, tp, t6
                  and          a5, s2, t0
                  sra          t3, s9, a7
                  sll          a3, s5, a0
                  nop
                  sra          a1, s9, t0
                  srl          s1, s5, s2
                  srl          s10, s2, t5
                  xor          s11, s9, a5
                  slti         t2, a6, 676
                  sltu         ra, t1, s5
                  sltu         a2, a6, s9
                  slt          sp, s8, s5
                  xor          s2, a4, s7
                  srli         a5, s8, 1
                  sltu         a7, s2, a7
                  nop
                  slti         a6, a6, 986
                  ori          t3, t5, 525
                  lui          a7, 595579
                  add          s0, t4, zero
                  andi         s7, gp, -433
                  ori          s4, t3, 1417
                  nop
                  slli         zero, sp, 2
                  auipc        zero, 869686
                  addi         t3, sp, 939
                  slt          t6, s0, gp
                  lui          s11, 558117
                  srli         s8, t0, 11
                  srl          s7, a7, a3
                  sll          t2, s5, s8
                  nop
                  srl          s0, s10, a0
                  lui          t4, 986511
                  srai         t0, t6, 12
                  srai         t3, s3, 31
                  andi         ra, a3, 1074
                  add          s11, t0, s8
                  srli         zero, a4, 26
                  slt          a6, s11, t1
                  ori          a5, s9, -1542
                  auipc        a1, 33602
                  lui          a2, 470600
                  or           s10, zero, gp
                  sltiu        s0, s11, -763
                  add          t1, t2, a2
                  and          s6, a6, s11
                  xor          a2, a3, a2
                  nop
                  ori          t6, s8, 639
                  or           s7, gp, s1
                  xor          s7, a4, s7
                  nop
                  srli         s11, s4, 5
                  auipc        a6, 1038733
                  srai         zero, gp, 10
                  sub          s10, s11, t1
                  andi         s2, tp, -1384
                  sll          ra, a1, s10
                  srli         s4, s1, 9
                  lui          t1, 876816
                  srli         a4, t5, 29
                  sltu         a1, t2, s6
                  slti         s0, s2, 1932
                  nop
                  sltu         t4, s5, s8
                  xor          t2, s0, a6
                  srli         a5, s1, 17
                  srai         t3, s0, 30
                  or           t4, sp, a0
                  srl          s2, s2, t0
                  sltu         s4, t1, s8
                  sltiu        t3, a7, 565
                  slt          t1, s6, s0
                  sltu         s6, s8, gp
                  srai         t0, s9, 20
                  and          s2, a3, s9
                  slli         s5, zero, 22
                  ori          gp, a2, -1209
                  ori          t3, s3, 1616
                  andi         s1, s6, -759
                  sltiu        s7, s2, -1083
                  nop
                  lui          a3, 918171
                  andi         s9, s4, -1508
                  sll          t1, s2, s3
                  nop
                  and          a5, a7, s2
                  xori         t2, s6, -299
                  nop
                  sltu         t3, t1, s9
                  ori          gp, t4, 683
                  and          t2, gp, t2
                  srli         s1, s0, 13
                  ori          s0, tp, -64
                  slt          a5, s1, s3
                  sltiu        gp, a1, 1301
                  and          zero, s7, s2
                  lui          sp, 8186
                  srai         s7, zero, 27
                  sub          a1, ra, s6
                  or           t4, t6, s4
                  or           gp, a7, s4
                  add          s8, ra, t6
                  slti         s1, s3, -31
                  add          s7, sp, s3
                  auipc        s8, 215580
                  auipc        a6, 75092
                  srli         s9, t5, 23
                  andi         a5, s1, -1898
                  add          a6, a0, a4
                  slti         s10, a5, -818
                  sltiu        s7, s7, -591
                  nop
                  lui          t4, 135756
                  xor          s11, s10, a1
                  and          zero, s3, t0
                  xori         a3, zero, 1664
                  lui          s8, 1002581
                  srli         gp, gp, 20
                  sra          t4, tp, sp
                  or           a7, a5, s6
                  sub          s9, s3, s8
                  sll          a3, s7, a1
                  nop
                  slli         s2, a5, 18
                  srli         s5, sp, 6
                  andi         a1, tp, -1698
                  slti         a3, sp, 1823
                  srai         t4, s5, 21
                  sll          a7, a0, s10
                  or           a2, s2, t0
                  or           s9, s5, a3
                  slli         a2, s3, 31
                  srai         s1, a3, 23
                  or           a6, tp, s3
                  or           a6, s7, t3
                  auipc        s1, 47073
                  slt          a6, s8, s1
                  xori         s1, s6, -1767
                  sra          t5, s10, t0
                  addi         s11, s10, 1450
                  auipc        gp, 134026
                  nop
                  sra          s6, gp, t0
                  srai         t0, s2, 19
                  addi         a4, tp, 460
                  or           s7, s6, s3
                  sub          zero, tp, a4
                  andi         a1, a2, 1799
                  srl          s8, a6, tp
                  sll          t0, s4, s5
                  and          t5, a1, t3
                  srl          t1, t1, t5
                  sll          s0, t0, s5
                  xor          sp, a3, a7
                  sub          s5, tp, a2
                  ori          s11, s9, 335
                  add          s11, s9, s3
                  lui          t6, 87170
                  auipc        t3, 1028434
                  ori          a7, sp, 1568
                  nop
                  sra          a2, a3, gp
                  sltiu        a3, s3, 810
                  slt          t2, t3, a4
                  sra          t2, s10, s2
                  srai         t3, s6, 19
                  sra          s8, a4, a6
                  sltu         s4, a0, t0
                  slli         t5, t4, 2
                  auipc        a3, 491804
                  andi         a6, s10, 405
                  ori          t3, a5, -264
                  or           s0, t3, zero
                  sltiu        s4, s10, 1754
                  add          a2, s7, sp
                  xori         s6, t5, -332
                  or           t6, s10, a7
                  ori          a4, sp, 201
                  slli         a2, s0, 12
                  xori         sp, s0, -175
                  xor          a2, s5, t0
                  sltu         zero, gp, s2
                  srai         s5, a2, 27
                  and          a6, s5, a4
                  and          s5, s3, t5
                  sll          a2, a3, tp
                  srli         a1, t4, 9
                  srli         t0, s6, 31
                  srl          t3, s10, s7
                  sll          s10, t4, s8
                  ori          s8, s8, 426
                  lui          t6, 505171
                  slti         t0, s5, -2048
                  sltu         s9, t5, s7
                  slt          zero, t2, s11
                  sub          gp, s0, t5
                  xor          t2, tp, a3
                  auipc        a5, 185303
                  or           s10, s8, s8
                  addi         a5, sp, 588
                  sltu         s8, s1, s11
                  sra          ra, t2, t2
                  xori         t5, t2, 1074
                  ori          a3, gp, 1657
                  sltu         t0, tp, a0
                  sub          s4, zero, gp
                  srai         s11, s4, 31
                  slt          gp, gp, tp
                  xor          s4, t5, s7
                  srli         t2, s8, 3
                  add          s11, tp, t1
                  xor          t2, t4, s4
                  srai         s1, t0, 16
                  andi         t4, s3, -382
                  andi         a6, t1, 2008
                  or           s7, s11, gp
                  addi         s8, s8, -670
                  sltiu        s5, sp, -615
                  sltiu        gp, a5, -132
                  sll          s0, t5, tp
                  auipc        a3, 973458
                  and          s10, s9, t0
                  sra          a5, s11, s3
                  sltiu        a6, t5, 1087
                  or           zero, ra, s1
                  ori          s10, s11, -325
                  xori         a7, ra, 123
                  andi         s4, a5, 1854
                  sltiu        s8, a5, -1263
                  sll          s6, s2, a2
                  sltiu        s8, s0, 218
                  srai         a7, a3, 3
                  slt          s11, t1, a5
                  sll          t4, s2, t4
                  slti         s0, a5, -1473
                  xori         t6, s6, -8
                  srai         s9, zero, 7
                  sub          t4, a2, tp
                  nop
                  slli         t6, s9, 15
                  srl          a6, s1, s4
                  xor          s11, t1, a0
                  slti         t1, a6, -300
                  slli         a2, a0, 31
                  xori         s8, t1, -523
                  sltu         a6, t2, s11
                  nop
                  sltiu        t3, s4, 1218
                  sra          sp, a2, s9
                  srl          sp, t4, a1
                  add          s1, t3, s2
                  srl          t4, s3, a1
                  sltiu        s1, s4, -1701
                  lui          s9, 198447
                  slti         a6, s3, -1121
                  or           a3, t6, t0
                  sub          t1, t3, t6
                  sra          s7, a7, zero
                  sltu         t5, a4, t5
                  slti         t1, a7, 1244
                  and          s0, s1, a5
                  sra          s1, a2, gp
                  auipc        a3, 302514
                  srl          s0, t5, s3
                  ori          t1, t2, -1173
                  xori         t0, s8, -1245
                  srli         t2, s2, 12
                  xor          s9, a5, t4
                  srai         t4, s7, 4
                  srai         t4, s3, 11
                  lui          a1, 243426
                  sll          a1, gp, t6
                  lui          t5, 733585
                  sub          s10, s2, gp
                  srai         a6, t6, 11
                  srl          s10, s11, s10
                  andi         a7, ra, 331
                  slt          t2, s9, t4
                  sll          a6, s7, a2
                  and          a2, s5, a5
                  slli         s10, t6, 16
                  srai         s2, s7, 31
                  slli         gp, s1, 31
                  sltiu        t3, a7, -1369
                  srl          s10, s7, t4
                  slt          t4, a0, s4
                  xor          zero, s10, t3
                  add          t3, a1, a4
                  ori          s9, t0, -1196
                  andi         s5, tp, -1618
                  andi         s10, a0, -1730
                  andi         a2, a7, 2035
                  sltu         t6, s10, sp
                  addi         t3, a4, -1199
                  sltiu        t2, zero, 470
                  srl          t0, s11, a2
                  add          gp, s9, a5
                  sll          s8, a6, s1
                  sub          s1, a6, s1
                  addi         t6, s7, 464
                  sll          s9, a7, s3
                  sll          s7, a1, s1
                  srai         s10, t0, 18
                  sltiu        sp, a3, -559
                  slti         t3, tp, -1899
                  sll          s2, a4, s11
                  xori         s2, s4, -1281
                  sll          s2, s6, s10
                  slt          zero, t3, a2
                  and          s7, s9, s2
                  slti         s5, s2, 942
                  ori          a4, s3, 1097
                  and          gp, s3, a2
                  sra          zero, s6, s1
                  xor          s4, zero, a6
                  xor          a1, s3, s1
                  srai         ra, a5, 13
                  ori          s8, t2, 39
                  sltu         t5, t6, s9
                  sll          a3, s0, s1
                  xori         s0, tp, 879
                  slt          t0, s7, s1
                  add          a6, gp, t0
                  slli         zero, a1, 18
                  andi         s0, t6, 345
                  sltiu        a1, s11, -1138
                  srai         sp, t4, 9
                  ori          t6, sp, -1428
                  slli         s10, s10, 23
                  lui          t6, 997241
                  auipc        s7, 234808
                  ori          t6, s9, 1452
                  xori         ra, zero, -319
                  addi         s8, t0, 63
                  auipc        s11, 419430
                  slt          a4, a3, s1
                  auipc        a7, 804352
                  lui          a5, 133614
                  nop
                  auipc        s8, 478418
                  xor          t2, a3, t2
                  srai         ra, t0, 1
                  andi         a6, s9, 1703
                  srli         s1, a2, 27
                  auipc        s7, 137744
                  and          a5, s11, a5
                  srai         s11, gp, 20
                  auipc        s0, 825320
                  add          s7, t6, a4
                  slli         s10, s1, 23
                  xori         a5, zero, -440
                  sra          a5, s11, s0
                  add          s2, s4, a3
                  sub          ra, s3, s2
                  srli         a3, gp, 6
                  srai         a3, s5, 6
                  addi         s5, t4, 1263
                  sltu         a3, s7, t4
                  andi         a4, a6, -1971
                  sltu         a1, s6, tp
                  slt          s0, s10, a0
                  ori          s11, a0, 551
                  or           a4, sp, t0
                  xor          t0, a6, t3
                  ori          gp, a7, -1039
                  sra          ra, zero, t4
                  sra          s8, sp, s6
                  nop
                  srai         s7, s11, 22
                  ori          ra, a0, -483
                  or           a1, s8, s7
                  slt          a3, s2, s11
                  nop
                  xori         a3, s10, 1534
                  sltiu        a5, zero, -1224
                  sltiu        s11, t5, 68
                  addi         s9, s4, 1362
                  nop
                  add          a2, s9, gp
                  slt          a6, a6, s4
                  srli         s6, zero, 2
                  auipc        s7, 320329
                  sltiu        t6, tp, -1864
                  xor          t0, s10, a0
                  sub          s9, s8, a6
                  sll          t4, a0, a5
                  srli         a7, s0, 20
                  add          a4, t5, a4
                  or           a4, s10, s8
                  addi         s4, sp, 1258
                  nop
                  sltiu        zero, t4, -514
                  slt          t2, a5, zero
                  sra          t4, s3, s10
                  and          t0, a6, a4
                  auipc        t4, 220549
                  srl          t6, s11, a1
                  ori          t6, a7, -395
                  srl          t0, s5, a3
                  sub          gp, s5, s5
                  and          s1, a5, t1
                  srai         s6, s11, 22
                  nop
                  slti         t2, s2, -1468
                  auipc        s7, 943254
                  ori          zero, tp, 268
                  slli         s0, s7, 27
                  sll          s9, s2, a2
                  slt          s2, a2, s0
                  lui          a3, 108303
                  srl          t2, t3, s7
                  and          s1, ra, s2
                  auipc        t5, 134995
                  and          s9, s6, s11
                  xor          a1, s7, s3
                  lui          s5, 838090
                  sltu         s11, s10, t4
                  sub          a7, s2, s8
                  sltiu        a5, t0, 1705
                  add          ra, s9, s2
                  sltiu        t1, s2, 1023
                  slti         t0, s2, -209
                  srl          s11, s2, a0
                  lui          a7, 480876
                  slt          sp, t2, a6
                  srli         s7, a4, 22
                  xori         s2, s5, 193
                  sltu         s6, s5, ra
                  add          t1, s10, tp
                  lui          ra, 169439
                  lui          s8, 150702
                  sll          ra, t0, t0
                  and          s8, s4, s1
                  slt          gp, a4, t0
                  srl          t1, zero, a7
                  sltiu        t6, a7, -1297
                  sra          s0, s10, s8
                  sub          zero, t0, s10
                  addi         s0, a3, 616
                  srli         a6, t0, 23
                  add          s11, t2, s10
                  xor          s0, a0, gp
                  andi         a5, sp, 1043
                  srai         s7, t0, 22
                  auipc        s1, 361280
                  slti         a4, a6, 1060
                  slt          zero, a5, a3
                  sub          t3, tp, ra
                  sra          a4, a3, s11
                  or           s5, s4, t6
                  sltu         t0, a4, ra
                  sub          a4, s2, a4
                  slt          s6, s8, a0
                  xori         a4, t3, -827
                  xori         a7, s4, -1643
                  sll          a2, s11, t3
                  sltu         s1, s11, a3
                  and          sp, a2, a2
                  srl          a4, s0, t2
                  or           s0, s8, t2
                  sub          s10, s3, t3
                  or           s8, a2, a5
                  or           t5, t3, a1
                  xori         sp, t0, -111
                  sub          s5, a7, s3
                  nop
                  xor          t2, s8, t0
                  sub          s11, t6, s11
                  srl          s9, t3, t2
                  sub          a3, a3, a0
                  addi         s4, a4, -1293
                  andi         t1, a7, -1471
                  slt          t3, a6, t2
                  slt          t0, t3, a6
                  and          ra, a6, s7
                  and          a2, s9, s4
                  and          s1, a3, t4
                  or           t4, tp, s2
                  and          s9, s1, tp
                  auipc        a5, 354537
                  sll          a5, s4, s11
                  srai         a7, t5, 17
                  slli         gp, a3, 6
                  slti         t2, s7, -268
                  slt          t4, s1, t2
                  xor          t2, s8, t5
                  slt          t5, t0, gp
                  sub          zero, s3, t6
                  sltu         s2, tp, ra
                  sll          a5, s5, s1
                  sra          t6, s4, s1
                  nop
                  lui          a7, 102050
                  and          s7, s5, zero
                  slt          t0, a2, t1
                  srli         t2, t3, 25
                  auipc        s4, 466083
                  sll          a5, s1, a4
                  and          t0, tp, t6
                  nop
                  sltiu        s9, t2, 1187
                  and          t1, t6, t0
                  slli         s11, s8, 16
                  srl          s4, t1, sp
                  slti         s9, s8, 690
                  ori          s10, ra, 461
                  xori         s6, s6, -2007
                  and          s2, t5, t4
                  srli         a7, a1, 28
                  sub          t2, t0, t2
                  sltu         t4, a7, s9
                  andi         a5, a5, -975
                  sltiu        a5, a2, -1138
                  sltu         t2, sp, a4
                  and          t2, a3, tp
                  ori          a7, t0, 141
                  slti         s9, t3, -213
                  sltiu        s9, s9, 1893
                  srli         ra, a4, 15
                  ori          a7, s2, -591
                  slt          a3, t3, a7
                  slli         gp, s6, 22
                  slli         sp, a6, 12
                  sub          a4, a3, ra
                  xor          a5, zero, sp
                  slt          s4, t0, t5
                  srl          a2, sp, a4
                  sll          s9, a3, gp
                  xor          s8, t5, s1
                  nop
                  sll          a4, s11, s5
                  ori          s10, a5, -1362
                  sra          s2, a1, s7
                  sltiu        a5, a7, 777
                  ori          a1, a2, -301
                  srli         s10, sp, 17
                  srl          t4, t4, gp
                  slt          t6, s4, t5
                  or           a4, gp, t4
                  xori         s0, a7, 656
                  slt          t4, s10, t2
                  nop
                  xor          s2, gp, s7
                  srai         s9, s9, 28
                  addi         ra, zero, -691
                  srl          s2, t1, a4
                  sra          t0, sp, s2
                  addi         a2, s9, -1737
                  addi         s8, t4, 1743
                  and          s1, a4, s11
                  sltu         t6, s3, a1
                  srai         a3, t1, 18
                  slli         a4, tp, 17
                  ori          s10, gp, 1394
                  xori         s9, t5, 976
                  sub          a5, a4, a1
                  sltu         a5, t5, s10
                  sub          t4, a7, a5
                  xor          t6, s2, s7
                  lui          s6, 692533
                  sltiu        a7, t6, 2015
                  sltiu        s4, a0, 1848
                  slli         t6, s8, 27
                  lui          s6, 1042327
                  nop
                  auipc        a4, 157503
                  xori         a1, s8, -10
                  srl          s5, gp, s5
                  lui          t1, 734552
                  xor          a3, s8, t5
                  sltu         s6, s0, t2
                  add          a7, t5, t6
                  ori          s8, s3, -1450
                  sltiu        t6, s6, -1683
                  lui          t0, 757508
                  and          a7, s2, sp
                  srai         a2, a5, 4
                  sll          a1, t6, t2
                  add          a4, s4, s0
                  andi         s2, tp, 1974
                  srl          t4, t3, s4
                  sub          s7, a3, s4
                  srl          a3, zero, s0
                  sltiu        s8, ra, 2016
                  slli         s11, t4, 24
                  srai         t0, a1, 26
                  sltu         sp, sp, a4
                  sltiu        s5, s3, -1144
                  xor          t2, gp, s7
                  sll          s9, ra, s3
                  and          s5, gp, s3
                  xori         a3, s8, -1176
                  or           s0, t6, a6
                  sub          t5, zero, s11
                  srl          a1, a6, t4
                  srl          s0, t1, gp
                  sll          t6, t2, gp
                  addi         s5, s3, 541
                  slli         s9, s1, 17
                  or           a5, t4, a3
                  srai         s2, s9, 15
                  auipc        s11, 760119
                  or           s6, s6, sp
                  srl          zero, s6, t3
                  nop
                  ori          a4, t4, 1416
                  srl          s0, s9, s10
                  sltiu        s8, s10, 283
                  andi         s2, tp, -1139
                  ori          s11, s7, 1378
                  slti         s1, t4, 93
                  add          s5, s11, t5
                  xor          t0, s1, s2
                  addi         t0, a3, -547
                  slti         sp, sp, -860
                  addi         t0, s3, -788
                  sll          ra, s9, tp
                  addi         t3, gp, -1878
                  sltu         t5, s6, ra
                  slli         t2, zero, 10
                  and          a5, a5, s3
                  lui          t5, 336671
                  srli         s7, ra, 17
                  srai         t5, t1, 8
                  sub          a3, a6, t5
                  srl          t0, a5, s3
                  slli         s9, t1, 10
                  add          a2, s11, s6
                  andi         s6, a3, 1440
                  sltu         t4, s4, sp
                  and          a4, s1, a3
                  auipc        gp, 557852
                  lui          t2, 289415
                  and          t1, t2, a4
                  ori          a2, t6, -1815
                  sub          gp, s1, a4
                  sltiu        s10, ra, 2021
                  andi         t0, s3, 80
                  slt          ra, sp, a7
                  lui          s2, 555634
                  sll          sp, a3, a0
                  slti         t3, ra, -426
                  ori          s9, t0, 687
                  slt          s6, s8, t6
                  sltiu        a3, s0, 239
                  lui          s4, 865962
                  nop
                  add          ra, t4, t4
                  slli         a2, s11, 14
                  sltiu        s7, t2, 1603
                  srli         a6, a4, 12
                  ori          sp, s3, 1839
                  slt          t1, s10, s9
                  slt          s9, a3, sp
                  auipc        s8, 341099
                  sub          s5, s11, tp
                  srl          t0, a3, a5
                  addi         s0, a2, 386
                  or           a7, s3, a4
                  or           s0, s3, sp
                  sll          gp, a1, a7
                  slti         t5, a2, -469
                  ori          t0, t0, -291
                  addi         t1, t2, 827
                  sltu         a6, t4, ra
                  auipc        gp, 808273
                  sltiu        a2, a3, -1988
                  srai         a3, s9, 19
                  xor          s0, t6, t5
                  xori         gp, s9, -322
                  srl          a3, t2, s5
                  sll          zero, a4, t3
                  ori          ra, t5, 637
                  nop
                  sltu         s8, a2, s2
                  addi         t2, a5, -283
                  nop
                  addi         a4, zero, -113
                  ori          a6, ra, -1748
                  sltiu        a7, s11, -749
                  ori          s4, s5, 975
                  sra          s5, t6, a4
                  sub          s5, t1, zero
                  auipc        sp, 965050
                  add          s4, s8, t4
                  ori          s11, a2, 1632
                  slli         t3, s2, 13
                  slt          s0, t6, t4
                  add          s8, s1, a5
                  andi         a3, s2, -1470
                  or           a5, a1, a4
                  srl          zero, a4, t3
                  add          s11, t2, t6
                  slli         sp, zero, 26
                  sltu         a4, s3, s6
                  or           s0, t3, s8
                  lui          t0, 132749
                  slli         s11, s1, 14
                  ori          t4, s6, -470
                  add          s7, s3, zero
                  slt          zero, s9, t4
                  sub          s8, a5, a7
                  or           a1, s6, s10
                  nop
                  ori          a5, a0, 684
                  add          s5, a0, ra
                  slt          s11, s6, s7
                  sub          a7, t2, s0
                  addi         s4, s2, -1459
                  sltiu        a4, s1, 549
                  sltiu        s4, t1, 2047
                  sll          zero, t3, s5
                  sub          s9, ra, s2
                  srai         t5, tp, 9
                  sra          t3, t5, a1
                  add          t5, a2, gp
                  sll          s9, t3, s6
                  sra          a5, s4, t2
                  lui          ra, 872906
                  srl          a6, t0, a3
                  sltiu        a3, t4, -6
                  andi         s9, a6, 1568
                  slli         zero, t0, 10
                  slli         s11, a2, 27
                  auipc        t4, 913742
                  srai         s0, t6, 9
                  sltiu        a2, a5, 172
                  andi         t2, t3, 1164
                  addi         s2, s1, -1810
                  add          a6, t3, s7
                  srli         t5, ra, 8
                  addi         s7, t1, -1453
                  xori         s11, a4, 828
                  and          a5, a3, t2
                  sll          t5, s3, a2
                  and          s4, ra, a5
                  sltu         t2, s1, s11
                  ori          sp, sp, -1881
                  nop
                  ori          t1, t5, -1373
                  sltiu        s11, t0, 272
                  lui          gp, 426017
                  srai         a4, a6, 12
                  auipc        ra, 269909
                  sra          t4, sp, s4
                  sltiu        s1, s3, 1220
                  and          a6, s10, a0
                  srai         a6, s9, 28
                  srli         s8, s11, 14
                  srl          a5, t4, t4
                  sub          a5, a7, t5
                  sltu         s6, a7, a5
                  and          t2, t0, sp
                  ori          s4, t5, -1892
                  or           a4, t6, a6
                  slt          s11, zero, a3
                  xor          a2, a2, t3
                  sltu         a7, tp, s6
                  and          a7, s2, s9
                  ori          s6, a0, -839
                  ori          a2, a6, 1396
                  andi         s6, s9, 1478
                  add          a4, s10, t1
                  sltu         s7, s0, a4
                  srl          a3, s3, t5
                  sltiu        s8, t5, -427
                  srli         a5, t3, 8
                  and          t2, a5, s2
                  addi         s11, t6, -1492
                  srl          t6, t6, a1
                  add          s11, t4, a0
                  and          t0, a2, s3
                  xori         t1, ra, 512
                  xori         s9, s5, 70
                  xori         s0, s5, -1810
                  ori          s11, zero, -1325
                  auipc        a1, 961078
                  ori          a6, t6, -1029
                  sltu         s5, s7, a1
                  slt          zero, t5, s2
                  xori         s9, t1, 973
                  auipc        gp, 101413
                  sra          t6, s3, s8
                  and          s1, s7, t2
                  addi         s8, t4, 662
                  srli         a6, t4, 21
                  srai         t3, t3, 18
                  xori         s6, ra, 381
                  sub          s4, s9, t3
                  xor          t0, zero, a4
                  srli         a1, a5, 4
                  slt          a7, gp, t2
                  addi         s1, s9, -444
                  addi         sp, s8, 1341
                  srai         s9, s0, 23
                  xori         s5, t3, -335
                  sltiu        gp, t2, 118
                  srl          s10, s0, t4
                  slt          t2, tp, a5
                  add          t0, t5, a2
                  lui          s5, 967947
                  xori         s7, ra, 1695
                  slli         a4, ra, 17
                  sltiu        s8, zero, -1119
                  slti         a2, gp, -458
                  slt          a4, s0, a5
                  slt          s5, zero, t5
                  auipc        t5, 867046
                  or           zero, t6, s0
                  add          s2, t1, sp
                  sub          ra, t2, s1
                  ori          t2, tp, -1668
                  auipc        s8, 893189
                  sltiu        a5, a7, -1674
                  sub          s11, s0, a2
                  sra          s4, gp, s4
                  xori         s7, a3, 1298
                  lui          t2, 738809
                  addi         a2, t0, -796
                  sltu         t6, t0, a0
                  ori          t5, a0, 380
                  addi         t0, s1, 760
                  sltiu        a5, s6, -482
                  nop
                  srl          a6, s6, sp
                  ori          t4, s3, -1239
                  sll          t3, t1, t1
                  and          t6, s10, s0
                  addi         a7, tp, 893
                  or           a3, s0, a3
                  sltu         s6, a5, t6
                  sltu         t4, a5, gp
                  addi         s5, t4, 1800
                  slt          s6, gp, s0
                  sll          s4, a0, t1
                  addi         s2, a4, -215
                  and          a5, s8, s4
                  add          s4, a7, a7
                  or           s7, t0, s6
                  nop
                  sltiu        a2, s2, -33
                  and          s7, a6, zero
                  and          s1, sp, s9
                  and          gp, s6, s7
                  xori         ra, s9, -997
                  add          s10, a3, a4
                  add          gp, t4, a1
                  srai         s1, a0, 5
                  sltiu        s1, s1, 331
                  sub          t5, s9, s0
                  and          t3, s2, t5
                  srli         s6, s9, 16
                  xori         t1, a5, -726
                  srai         a5, s4, 20
                  slti         s4, t3, 1706
                  srli         zero, gp, 28
                  srli         t6, a7, 16
                  slti         a4, s8, 1567
                  nop
                  slli         s1, ra, 2
                  srli         a4, s3, 3
                  srl          a4, s7, s1
                  sltu         s0, a1, a6
                  sra          s10, ra, s7
                  nop
                  slt          gp, s7, s11
                  lui          t3, 465092
                  nop
                  andi         s8, t3, -543
                  add          s1, a7, a1
                  andi         t3, t5, 1362
                  sub          sp, s6, a6
                  or           a7, sp, a5
                  auipc        s6, 390619
                  nop
                  srai         a6, t6, 10
                  addi         t6, s0, 1912
                  srl          sp, s6, s7
                  auipc        a4, 300775
                  xor          s7, s11, s10
                  srl          t6, a1, t2
                  srai         t3, ra, 14
                  srli         s7, ra, 17
                  ori          t1, sp, 730
                  sra          t0, t6, s0
                  xori         t3, s3, 1855
                  nop
                  auipc        s9, 1038188
                  srli         t1, s9, 12
                  or           a3, t2, s9
                  ori          s5, s9, -1608
                  andi         a7, s5, -133
                  auipc        a4, 27392
                  srli         t6, s9, 0
                  and          s0, t6, s10
                  ori          s2, a5, 1966
                  srli         s10, a5, 29
                  slti         ra, s6, 1913
                  xor          a2, s7, s2
                  or           a4, s10, t6
                  auipc        s1, 661222
                  slt          s1, tp, a6
                  sra          s1, s7, t6
                  add          t2, a1, a2
                  sll          a7, t2, a4
                  auipc        ra, 324885
                  sltu         t6, zero, s6
                  xor          t6, s8, s2
                  sltu         t6, a6, s8
                  lui          s5, 21031
                  sltu         t0, s4, s8
                  slti         s4, a7, 616
                  sub          a7, t2, s9
                  sll          a1, sp, t4
                  auipc        a6, 1039587
                  andi         t5, ra, 1444
                  srl          s10, s10, t3
                  srli         t6, a1, 14
                  andi         t3, s1, 837
                  srl          t5, s10, s4
                  and          s4, t3, a4
                  andi         t2, s8, 1348
                  auipc        s6, 238174
                  andi         s7, zero, -1519
                  ori          a7, s9, -1967
                  addi         zero, sp, 1538
                  slli         a1, s11, 1
                  slli         s11, a6, 8
                  srl          s6, a5, sp
                  srl          s6, s6, t2
                  and          s0, a3, s9
                  slt          s11, t3, a0
                  and          t6, t2, a1
                  xori         t1, tp, -302
                  srli         s7, gp, 18
                  srai         s0, gp, 1
                  sra          a4, t5, t0
                  srli         a1, s3, 8
                  addi         s8, s10, 728
                  nop
                  andi         a2, a0, 711
                  slti         t0, s10, -1730
                  ori          t0, ra, 1962
                  lui          a4, 833062
                  auipc        s6, 597565
                  auipc        a6, 412993
                  xori         t1, s8, 1191
                  addi         ra, s2, -1738
                  xori         ra, s4, 1246
                  nop
                  andi         a5, s9, -1392
                  xori         s1, t1, 1059
                  and          t5, t5, s8
                  slli         a4, tp, 28
                  ori          s11, s10, -1016
                  nop
                  auipc        t3, 620179
                  or           t6, s5, t4
                  ori          sp, a7, -1900
                  srai         t3, t0, 25
                  srl          sp, t1, ra
                  or           a4, gp, s9
                  sra          a1, a5, a4
                  ori          s8, s6, -556
                  add          s10, t1, s7
                  xor          ra, t3, t4
                  sub          s5, s5, s2
                  add          a3, zero, s3
                  addi         a6, t1, 810
                  add          s10, a6, a5
                  xori         s1, t1, -117
                  and          s6, s0, a4
                  auipc        s10, 201100
                  and          s4, t5, zero
                  sll          gp, a4, a1
                  sltiu        a5, gp, -83
                  srli         s1, s0, 13
                  sll          t1, s9, t6
                  srli         a3, a5, 27
                  srl          s0, a3, s7
                  srl          t2, tp, zero
                  srl          sp, s4, t5
                  andi         t4, s3, 2035
                  srli         s2, a1, 7
                  auipc        s8, 323685
                  addi         t3, a5, 1113
                  xor          t0, t1, t1
                  sll          gp, t1, s6
                  lui          a2, 103831
                  xor          a1, s7, s2
                  addi         ra, t5, -1978
                  xori         t5, t5, 1210
                  srai         s10, s3, 24
                  addi         s7, a0, -1060
                  or           t6, a2, sp
                  sltiu        gp, t5, -1795
                  slti         a4, s2, 311
                  nop
                  srai         ra, gp, 16
                  nop
                  and          t3, a0, a4
                  add          s1, s11, s1
                  add          a6, a7, t3
                  srli         s6, s6, 23
                  auipc        t3, 529587
                  ori          a5, sp, 317
                  lui          s7, 477621
                  srai         s8, a4, 12
                  or           a5, zero, s1
                  sll          a1, a2, s9
                  or           a3, t0, s2
                  sltu         t4, zero, s1
                  ori          s7, a5, 1268
                  or           t4, t2, a7
                  auipc        t3, 629547
                  slti         a1, s5, -1117
                  srli         gp, t5, 16
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s7, 0x0
                  li           t2, 0x80000000
                  li           a7, 0xcca031e7
                  li           gp, 0xffffffff
                  li           s1, 0xffffffff
                  li           s6, 0x80000000
                  li           ra, 0xffffffff
                  li           a3, 0x0
                  li           a6, 0x0
                  nop
                  sub          s7, t2, gp
                  add          t2, ra, gp
                  addi         ra, s7, 398
                  lui          t5, 371454
                  nop
                  auipc        s1, 29119
                  nop
                  addi         ra, t2, -1103
                  add          t2, t2, a6
                  addi         s6, gp, -793
                  nop
                  auipc        t2, 505276
                  nop
                  addi         s7, a7, 1333
                  addi         t2, t5, -1085
                  nop
                  auipc        s1, 215931
                  add          s7, a3, t5
                  lui          s7, 487919
                  auipc        ra, 701714
                  nop
                  lui          t2, 397997
                  addi         s6, gp, -991
                  sub          a7, s7, gp
                  lui          a3, 317118
                  nop #end riscv_int_numeric_corner_stream_3
                  srli         s6, ra, 18
                  srli         a6, gp, 31
                  or           s6, s11, t1
                  xori         a4, t3, -1522
                  nop
                  srai         t4, s3, 11
                  sra          a4, ra, a1
                  add          a6, a0, a0
                  sltiu        s6, s5, -337
                  xori         t2, tp, 1900
                  slti         t4, t2, 1980
                  lui          t6, 259509
                  sub          a1, s9, tp
                  sltiu        gp, t2, 96
                  auipc        a1, 539570
                  slli         s8, a2, 24
                  xor          s9, s1, t0
                  srai         s5, t4, 7
                  ori          a6, s5, -673
                  sltiu        s9, t0, -836
                  lui          t3, 479958
                  srai         s6, t5, 5
                  slti         t4, tp, -1300
                  auipc        a6, 248749
                  sub          t3, a4, a0
                  sll          t6, gp, a7
                  srli         s2, t1, 24
                  slti         t3, s7, -1306
                  add          s1, gp, s11
                  ori          s10, s9, 1149
                  andi         a6, a2, -1479
                  xor          s4, t5, s2
                  sra          a7, ra, s10
                  slli         s0, a1, 0
                  xori         t1, a6, 1053
                  srli         s5, a1, 5
                  xori         t4, s5, -410
                  sltu         s11, s4, ra
                  addi         zero, t4, -2034
                  sltiu        t3, s0, -2028
                  add          s5, s9, a7
                  add          s2, t3, t1
                  andi         t2, t0, 14
                  auipc        s7, 608895
                  xor          s1, t2, a5
                  ori          s2, s5, 1075
                  nop
                  srai         a4, a5, 18
                  or           s5, s10, s5
                  sltiu        t6, s6, 2032
                  sltiu        sp, s4, 194
                  sltiu        t2, a4, -1285
                  and          ra, s2, a1
                  ori          s6, a3, -621
                  and          s6, s1, t2
                  or           t4, a2, s8
                  sub          gp, a4, a1
                  addi         t4, sp, -819
                  add          s5, a0, t6
                  sltu         s6, s3, s4
                  sub          s4, a4, t3
                  andi         zero, s7, 1963
                  slti         t2, a2, 562
                  xor          a4, a6, t0
                  sll          t6, sp, a5
                  andi         a1, a2, -656
                  srl          s2, s3, a0
                  slli         s6, a4, 18
                  sra          ra, ra, a3
                  lui          a1, 619147
                  nop
                  sub          s8, a7, gp
                  srli         t6, s5, 13
                  lui          t2, 815969
                  ori          s5, t0, -1789
                  sll          a7, t2, s8
                  slli         s2, s7, 25
                  sra          t0, t0, t2
                  slti         s6, t2, -1596
                  andi         t3, t5, -446
                  add          s6, s4, s4
                  add          s5, s0, t6
                  srl          t1, s7, a2
                  or           s10, s0, s8
                  sra          gp, t1, t0
                  lui          a1, 411772
                  sra          s5, a1, t5
                  sltiu        a5, t5, -146
                  srl          t3, s9, t4
                  or           s1, a6, s8
                  sra          a5, s6, tp
                  addi         t0, t4, -1411
                  add          s5, a4, a4
                  srai         t1, s7, 15
                  sltiu        a7, sp, -950
                  sll          a3, a0, a0
                  auipc        s11, 661283
                  auipc        s7, 375925
                  and          t6, s0, ra
                  slt          a5, s11, gp
                  and          t2, s3, t4
                  sltu         t6, t1, s1
                  auipc        s2, 946870
                  sltu         s8, a2, ra
                  sltu         a4, s3, a5
                  addi         a3, a4, -117
                  nop
                  ori          s9, s10, -1859
                  sub          a7, s1, a2
                  xor          sp, s11, tp
                  lui          gp, 723622
                  add          t1, a7, s8
                  ori          t6, s6, 801
                  sra          a2, a4, t1
                  sub          s11, a2, s6
                  nop
                  xori         t3, a0, -2
                  nop
                  sra          a1, sp, a5
                  lui          zero, 198618
                  add          a2, s10, a0
                  auipc        a6, 905383
                  sltu         s0, s6, gp
                  ori          s5, a3, -1710
                  slti         sp, t0, -1912
                  slti         gp, s6, -1342
                  sub          ra, a7, t3
                  addi         a3, a3, 755
                  xor          t3, s3, a6
                  or           t3, a3, t0
                  or           t5, sp, t6
                  sltu         s7, t0, t1
                  lui          s7, 797224
                  or           t1, s5, s7
                  lui          a1, 655807
                  xori         s1, s1, 1782
                  addi         ra, gp, -1929
                  or           s2, ra, s9
                  auipc        ra, 999733
                  xori         a5, a7, -518
                  auipc        a4, 574280
                  srai         a2, s1, 1
                  srli         s2, a2, 16
                  nop
                  sub          s11, s8, t4
                  xori         s9, a5, 1620
                  add          s2, s10, s0
                  slt          s1, s2, a6
                  add          t2, t3, s2
                  slti         a1, s4, 1271
                  auipc        a7, 1032787
                  sra          a6, s6, a7
                  ori          a1, s10, 557
                  srl          zero, s5, tp
                  ori          t3, t4, -1306
                  xor          s11, s11, a4
                  sra          a5, tp, s8
                  sra          t5, t5, s10
                  slti         t0, a2, 716
                  xori         t3, ra, 1943
                  auipc        a2, 916698
                  sltiu        t6, a3, 1106
                  xor          s5, s7, s11
                  or           sp, ra, a1
                  lui          ra, 61941
                  ori          a7, a4, -1088
                  add          zero, a2, t1
                  sra          s10, a7, s4
                  sll          gp, a0, s5
                  sltiu        a5, s8, 1392
                  nop
                  auipc        a4, 294740
                  xori         a2, s6, 1298
                  slt          t2, ra, s2
                  and          a3, t1, a3
                  add          t2, gp, a2
                  auipc        sp, 387225
                  nop
                  sra          a5, s1, tp
                  srli         t3, ra, 9
                  slt          s6, s9, gp
                  lui          a5, 165789
                  xor          a2, s2, t6
                  sltiu        sp, s11, 1221
                  srl          s8, s10, s6
                  xor          t5, a1, a2
                  srl          a6, a5, s1
                  sub          s10, a4, a6
                  lui          s10, 687858
                  or           a2, t2, a1
                  andi         t6, s11, 564
                  slt          t3, a1, t4
                  ori          t3, s4, -199
                  xor          t1, a5, s1
                  srli         a5, s9, 22
                  srai         s7, t0, 11
                  add          t0, t2, a7
                  srl          s11, s3, a7
                  sra          a4, s11, t4
                  add          t2, zero, tp
                  lui          s2, 231001
                  ori          t5, a6, -305
                  auipc        t2, 501984
                  and          ra, s8, a3
                  ori          s7, s3, -1708
                  or           a6, a3, s11
                  add          t2, s7, a3
                  srai         s8, t3, 6
                  andi         a2, s2, -1109
                  sll          a3, t4, gp
                  and          s0, gp, a1
                  or           t1, a4, sp
                  andi         s7, t6, -1815
                  addi         t4, gp, 1379
                  sra          gp, t0, t0
                  and          s11, s5, s10
                  sltiu        s8, t1, -975
                  srli         sp, s6, 26
                  addi         gp, s0, -319
                  or           s4, s8, t0
                  sltu         a5, s6, s9
                  xor          s11, a7, s4
                  nop
                  and          gp, a5, a6
                  sltiu        a2, t4, 1516
                  andi         s4, a1, -494
                  sra          s0, s3, s4
                  or           a3, s8, t5
                  xori         a3, a7, -1704
                  slti         s2, s5, 741
                  slti         a3, s5, -929
                  srai         s6, a1, 29
                  srl          s10, sp, s2
                  sra          s8, s3, s1
                  sltu         t0, t3, s9
                  slt          s1, s6, t4
                  sra          t6, a0, s9
                  sra          ra, a6, s5
                  slt          gp, a3, sp
                  srli         a7, s3, 11
                  or           a4, s10, a0
                  sltu         ra, a1, zero
                  andi         s5, t3, 90
                  sub          ra, a4, t0
                  slt          t4, s8, tp
                  lui          zero, 249865
                  sltiu        a7, s4, 279
                  sltiu        t3, s7, 1570
                  sll          s11, s11, sp
                  slt          s6, t2, tp
                  lui          s11, 460375
                  srli         t5, a0, 4
                  auipc        s11, 805201
                  addi         ra, a6, 1437
                  xor          a6, s7, a6
                  ori          s8, s9, -577
                  nop
                  nop
                  sra          s9, t5, a0
                  sll          s5, gp, zero
                  sltiu        a3, t5, -1945
                  sub          s0, t0, s10
                  nop
                  xori         a4, t5, -1153
                  ori          a1, a4, -479
                  sub          a1, zero, s0
                  slti         a1, s4, 945
                  auipc        s10, 213484
                  sll          sp, a5, a1
                  sltu         s7, s7, s11
                  sltiu        s11, s1, -1636
                  addi         t6, t2, -1987
                  srai         s11, a2, 6
                  addi         s11, s10, -324
                  sltiu        s8, s4, -1017
                  xor          sp, a5, tp
                  auipc        t5, 347559
                  srl          a2, s5, t4
                  sltiu        s9, a2, 317
                  srai         a5, s1, 13
                  sra          sp, s1, a1
                  xor          s10, a2, sp
                  nop
                  or           s6, a4, s5
                  auipc        s7, 518667
                  or           t6, s8, a0
                  sra          a3, gp, s11
                  or           s4, s9, a3
                  sll          s9, t5, s6
                  slt          a5, s6, s1
                  sltiu        a7, a4, -751
                  sltiu        a7, t1, -1734
                  lui          t4, 634561
                  lui          gp, 487902
                  sra          a2, s1, tp
                  andi         s0, s6, -262
                  slti         s7, t5, -1208
                  slt          s4, s2, s4
                  slti         s6, s4, 554
                  andi         t1, s6, 1191
                  add          gp, a4, zero
                  auipc        a2, 766119
                  or           s0, a5, t4
                  nop
                  sltu         s4, s3, t0
                  xor          s10, s6, ra
                  sra          s10, a1, s2
                  add          t6, s9, a2
                  nop
                  add          t1, sp, s10
                  add          sp, a6, a4
                  slti         a6, tp, -1689
                  slti         s1, s8, -1619
                  lui          t1, 451883
                  srli         a2, tp, 3
                  lui          a2, 184500
                  srai         a4, sp, 24
                  srli         a1, s8, 4
                  srl          t6, s5, s2
                  xor          zero, s3, t6
                  sltiu        t6, t5, -1707
                  or           gp, t4, t1
                  ori          a6, t4, 1308
                  and          a5, s10, s2
                  sltu         a7, t5, a5
                  add          s0, tp, t1
                  sra          a6, s11, s7
                  sltu         t2, gp, a6
                  slli         t6, a0, 8
                  srl          s5, ra, s7
                  sltiu        gp, s6, 394
                  ori          t6, a1, -1367
                  sltu         t1, s5, a6
                  slli         s4, t0, 12
                  srai         zero, t4, 0
                  slt          t0, t3, s5
                  sra          a2, s1, a0
                  slt          s0, a6, t3
                  ori          s8, t2, 942
                  srai         t0, s11, 29
                  xor          s9, t0, s9
                  or           a7, s7, s8
                  srli         gp, s3, 16
                  srl          t1, sp, s0
                  sltiu        ra, gp, 1739
                  srai         a6, t3, 11
                  and          a5, a6, t4
                  addi         s10, t6, 1821
                  lui          t5, 848684
                  andi         s6, sp, -2048
                  add          s7, s5, t6
                  slti         t6, a2, 1391
                  sll          s11, tp, zero
                  sll          s7, t6, tp
                  auipc        a2, 635124
                  sra          s8, t1, s11
                  sltu         s2, a3, sp
                  add          a7, t1, a1
                  xor          a6, tp, sp
                  andi         a3, t1, -793
                  lui          a4, 606486
                  xori         zero, gp, 12
                  sltiu        s4, t6, -1758
                  slli         t2, gp, 28
                  slt          t4, s3, a2
                  lui          s8, 665234
                  sll          s2, s11, a4
                  lui          s11, 562644
                  sltiu        t4, s3, -2011
                  srai         ra, s9, 30
                  slti         s2, sp, -423
                  srl          a1, t0, a2
                  slt          s10, s4, t6
                  sltiu        t5, a1, 1767
                  sltu         s8, t2, ra
                  sltiu        s7, s2, -822
                  andi         a4, s2, 1837
                  and          a1, s0, t3
                  auipc        s0, 521975
                  srli         a2, s4, 29
                  and          t5, t4, s9
                  slli         a6, a4, 4
                  slti         t3, s5, 1430
                  auipc        s2, 702322
                  xori         s0, a3, -1895
                  addi         s4, t2, -1260
                  sltu         sp, s11, tp
                  or           s1, s6, ra
                  slti         s10, s1, -986
                  sub          gp, s1, t5
                  slt          s10, s9, t1
                  sltu         s1, t3, a1
                  auipc        gp, 204451
                  addi         s9, s10, -730
                  slti         t3, s4, -1739
                  slt          a7, s1, t6
                  sra          s9, t0, s9
                  lui          ra, 331000
                  sltiu        s5, a4, -261
                  xor          s4, s5, zero
                  andi         a1, a0, 495
                  sll          s0, s11, zero
                  sub          s10, sp, s10
                  ori          a2, t5, -1255
                  and          s7, zero, s8
                  or           t5, t2, t6
                  andi         s0, zero, 1099
                  lui          s11, 1001370
                  and          a7, s11, t6
                  srl          s4, t4, t3
                  xor          s4, s2, t2
                  srli         s7, gp, 7
                  sll          ra, t3, a2
                  slt          s0, s5, s4
                  auipc        a3, 869483
                  nop
                  or           s11, ra, s1
                  sltu         t6, tp, tp
                  slti         gp, t3, 444
                  srl          gp, a2, zero
                  lui          sp, 797253
                  slt          t6, s7, t3
                  slt          s9, a4, s4
                  sll          s6, sp, t6
                  nop
                  srai         a4, s6, 31
                  addi         s10, s8, -1188
                  srli         t3, a3, 5
                  srli         a6, s9, 12
                  xor          t5, a1, a3
                  srli         s7, a6, 25
                  addi         s10, s10, 1426
                  sll          s4, a1, a3
                  addi         s2, a2, 229
                  ori          sp, s5, -2020
                  srai         a3, t6, 12
                  slti         t6, t4, 726
                  slti         t1, a6, 1962
                  sll          a4, t4, s1
                  add          gp, s10, a7
                  auipc        s2, 233434
                  slt          s8, a1, s3
                  srli         a5, s6, 29
                  srai         s5, t2, 31
                  la x10, test_done
                  jalr x0, x10, 0
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_2:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_3:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_4:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_5:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_6:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_7:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_8:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_9:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_10:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_11:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_12:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_13:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_14:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_15:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x19, x4, zero
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x13, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x13, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x13, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x13, x11, ecall_handler
                  li x11, 0x1
                  beq x13, x11, instr_fault_handler
                  li x11, 0x5
                  beq x13, x11, load_fault_handler
                  li x11, 0x7
                  beq x13, x11, store_fault_handler
                  li x11, 0xc
                  beq x13, x11, pt_fault_handler
                  li x11, 0xd
                  beq x13, x11, pt_fault_handler
                  li x11, 0xf
                  beq x13, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

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
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x4, x19, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x19, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x19, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x4, x19, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x4, x19, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x4, x19, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
