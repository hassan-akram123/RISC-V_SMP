.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 0
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
                  li x0, 0x0
                  li x1, 0x9
                  li x3, 0xf903d5a0
                  li x4, 0xf
                  li x5, 0xf654c901
                  li x6, 0x6
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x5e8246c5
                  li x12, 0xf704ce4e
                  li x13, 0x4
                  li x14, 0x80000000
                  li x15, 0xf6ddd9df
                  li x16, 0x80000000
                  li x17, 0xd4c7e9c6
                  li x18, 0xa
                  li x19, 0x0
                  li x20, 0xfda9ab9a
                  li x21, 0x7
                  li x22, 0xd
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0xb
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0xd
                  li x30, 0x7
                  li x31, 0x80000000
                  la x11, user_stack_end
main:             li           a2, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           s4, 0xffffffff
                  li           t0, 0x20ae7a7
                  li           s9, 0x319a1244
                  li           t4, 0x80000000
                  li           t1, 0x80000000
                  li           s7, 0xcc8b3b50
                  li           s1, 0x3b9ef5b6
                  li           t3, 0xbac29c86
                  li           s11, 0xffffffff
                  addi         t4, t0, -1371
                  nop
                  auipc        s4, 267171
                  add          t1, t4, t3
                  sub          s9, t0, s4
                  sub          a2, s1, s4
                  addi         t3, t1, 888
                  nop
                  addi         s7, s1, 1523
                  nop
                  addi         s11, t0, 1918
                  add          t0, t0, t1
                  nop
                  add          s9, s9, s7
                  add          s4, a2, t1 #end riscv_int_numeric_corner_stream_15
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           a2, 0x3c7a7e7f
                  li           a6, 0xffffffff
                  li           s10, 0x61f03cda
                  li           s3, 0x80000000
                  li           a4, 0x0
                  li           t2, 0x80000000
                  li           tp, 0x0
                  li           ra, 0xa9739170
                  li           a0, 0x80000000
                  nop
                  nop
                  lui          s10, 274894
                  add          a0, a0, ra
                  lui          t2, 178635
                  lui          ra, 314610
                  auipc        s10, 593650
                  sub          s2, a4, a0
                  add          a6, s2, s10
                  add          s2, ra, s10
                  addi         s10, a0, 1354
                  auipc        a2, 423134
                  sub          ra, ra, t2
                  sub          s2, tp, t2
                  lui          tp, 263036 #end riscv_int_numeric_corner_stream_5
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           t6, 0xfe307f63
                  li           a3, 0x1e0f9a9
                  li           s0, 0xa788ab5d
                  li           s5, 0xffffffff
                  li           a2, 0xfa663a79
                  li           s8, 0xffffffff
                  li           a4, 0xffffffff
                  li           t1, 0x0
                  li           t2, 0x80000000
                  addi         s11, s5, -1810
                  nop
                  lui          a3, 220615
                  nop
                  nop
                  add          t1, a2, t6
                  auipc        t6, 84327
                  auipc        a4, 471938
                  lui          s11, 575363
                  nop
                  lui          t1, 844020
                  add          s11, t2, t2
                  add          a2, s8, a2
                  nop
                  lui          t2, 846521
                  sub          a2, a2, a3
                  lui          s5, 314456
                  add          s5, s0, a2
                  nop
                  lui          s11, 1014178
                  addi         a4, s11, -935
                  auipc        a4, 508219
                  addi         s8, a4, -1314
                  lui          a3, 605914 #end riscv_int_numeric_corner_stream_14
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           a0, 0x80000000
                  li           s1, 0xffffffff
                  li           a7, 0x80000000
                  li           s3, 0xffffffff
                  li           s2, 0xffffffff
                  li           a5, 0x80000000
                  li           s6, 0x30109496
                  li           a4, 0x80000000
                  li           gp, 0x0
                  addi         a4, s2, -273
                  add          s2, a4, tp
                  add          gp, s2, a4
                  lui          gp, 133901
                  addi         s3, s2, -382
                  auipc        s3, 676872
                  addi         a5, s6, 1495
                  auipc        a5, 9748
                  auipc        s3, 299455
                  auipc        s2, 403111
                  sub          s3, a5, tp
                  lui          a4, 153534
                  addi         gp, a0, -1447
                  nop
                  auipc        gp, 678530
                  lui          s2, 237953
                  sub          a0, a7, a4
                  auipc        a0, 150778
                  addi         gp, s6, -547
                  addi         a4, a7, 335
                  nop
                  lui          s6, 932157
                  lui          s2, 29059
                  nop
                  add          a7, gp, s1
                  addi         a4, tp, 677
                  nop
                  lui          gp, 802607 #end riscv_int_numeric_corner_stream_12
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           tp, 0x9ddf1782
                  li           gp, 0x0
                  li           t0, 0x0
                  li           ra, 0xffffffff
                  li           s4, 0xffffffff
                  li           s6, 0x80000000
                  li           a6, 0xffffffff
                  li           t6, 0xffffffff
                  li           a2, 0xffffffff
                  add          a2, a6, s6
                  sub          tp, t0, s6
                  nop
                  nop
                  auipc        t6, 227568
                  lui          a5, 621097
                  add          ra, gp, a2
                  addi         a6, t6, 228
                  nop
                  sub          a5, s4, t0
                  lui          s4, 754438
                  lui          tp, 835741
                  sub          s4, ra, t0
                  nop
                  lui          a5, 919686
                  auipc        tp, 746659
                  lui          tp, 188697
                  nop
                  auipc        a6, 186731
                  nop
                  lui          t6, 996790 #end riscv_int_numeric_corner_stream_18
                  li           s9, 0x19a3edde #start riscv_int_numeric_corner_stream_1
                  li           s4, 0x0
                  li           a0, 0x6d46515
                  li           t1, 0x0
                  li           t3, 0x80000000
                  li           s5, 0x80000000
                  li           a2, 0xffffffff
                  li           a4, 0x80000000
                  li           t0, 0x80000000
                  li           ra, 0x80000000
                  nop
                  lui          s4, 231800
                  lui          t1, 345379
                  addi         s5, t3, -1570
                  addi         ra, s9, 2
                  nop
                  nop
                  nop
                  nop
                  nop
                  add          ra, s5, s4
                  auipc        t3, 522278
                  auipc        t1, 474940
                  nop
                  addi         a0, ra, 937
                  sub          a4, s9, t3
                  addi         s4, a4, -926
                  addi         t3, s9, 1221 #end riscv_int_numeric_corner_stream_1
                  li           a5, 0xf17d054d #start riscv_int_numeric_corner_stream_2
                  li           s0, 0xeb828c
                  li           t2, 0x0
                  li           s11, 0xffffffff
                  li           t3, 0xb5071bd5
                  li           tp, 0xffffffff
                  li           a3, 0x80000000
                  li           s2, 0xffffffff
                  li           s8, 0xd5eb39be
                  li           s10, 0x280e4285
                  add          t3, s0, tp
                  sub          t3, s10, a5
                  addi         a3, s2, 886
                  sub          s0, s2, a3
                  nop
                  auipc        s11, 806201
                  nop
                  addi         s0, tp, -1912
                  sub          s2, s10, s11
                  add          a5, s0, s2
                  addi         s10, a5, -415
                  lui          a3, 410181
                  addi         t2, a3, 1023
                  lui          s0, 815978
                  addi         s2, s2, -1946
                  nop
                  nop
                  lui          tp, 7408
                  nop
                  add          s11, s8, s0
                  sub          t3, a5, tp
                  nop
                  lui          t3, 271889
                  sub          tp, s0, a5
                  add          s0, s2, t3
                  sub          s2, s8, s8 #end riscv_int_numeric_corner_stream_2
                  li           a4, 0xd60e7310 #start riscv_int_numeric_corner_stream_9
                  li           s9, 0x80000000
                  li           s2, 0xa2b05238
                  li           a0, 0x0
                  li           s4, 0x3f7b5bc9
                  li           s7, 0x583d5ccd
                  li           t0, 0x1f53cd58
                  li           s11, 0xffffffff
                  li           a7, 0xffe1eac4
                  li           s0, 0x80000000
                  auipc        s7, 566497
                  lui          t0, 938399
                  nop
                  addi         a7, s9, -1719
                  add          s11, s4, a0
                  add          a0, s7, s11
                  add          t0, t0, s11
                  auipc        s11, 817888
                  addi         s7, a7, -288
                  addi         s7, s9, 1483
                  auipc        t0, 1017128
                  nop
                  auipc        a0, 136959
                  add          s9, s9, a0
                  addi         a7, s2, -1586
                  nop
                  sub          s11, a7, s2
                  auipc        t0, 16781
                  lui          a0, 624446
                  lui          s11, 413982
                  lui          s11, 213295 #end riscv_int_numeric_corner_stream_9
                  sub          t2, s7, s7
                  auipc        s3, 348039
                  srai         s8, a2, 15
                  add          s6, t0, gp
                  srl          s0, a0, tp
                  sltiu        a3, s3, -1713
                  ori          a4, gp, -1805
                  sll          s8, a4, t0
                  auipc        s5, 725738
                  slti         t0, sp, 648
                  srl          t6, a0, t4
                  slt          a0, s3, tp
                  srai         gp, a3, 2
                  slti         t0, s8, -1425
                  auipc        a0, 349527
                  sltiu        s6, a0, 215
                  srli         s8, tp, 18
                  sub          s9, a0, s9
                  sltu         a6, a5, a3
                  or           s10, s4, s4
                  sltu         a6, a2, sp
                  sra          a2, a2, s11
                  xori         a3, s9, 1668
                  xor          t3, a1, a3
                  auipc        s4, 602150
                  slti         gp, s6, -1226
                  srai         s0, a5, 14
                  sltu         s0, t2, a5
                  sll          tp, t4, s4
                  srai         a3, zero, 3
                  sltiu        s10, s0, -769
                  addi         t2, tp, -1671
                  addi         s1, a6, -1094
                  srl          a5, a0, t2
                  addi         tp, t2, -548
                  ori          a7, a7, 915
                  sltiu        s11, s10, -782
                  or           s8, t3, s9
                  sub          s10, s0, s6
                  addi         ra, tp, 1758
                  slli         zero, a4, 22
                  ori          s4, zero, -1457
                  add          s5, s10, t6
                  nop
                  andi         a6, ra, 1218
                  ori          s1, s11, -380
                  sltu         t3, s2, t6
                  sltiu        a5, s6, 1061
                  or           a3, s8, s4
                  ori          zero, s8, 1018
                  lui          gp, 882041
                  slti         s9, s0, 782
                  slt          a0, t1, t4
                  or           s3, t5, t0
                  and          a4, a7, s8
                  addi         s3, t0, -825
                  sub          ra, t6, t2
                  and          a4, s5, s11
                  xori         t0, a4, -1923
                  and          tp, s5, s11
                  sra          zero, s2, t1
                  lui          zero, 591963
                  auipc        gp, 15184
                  li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           t4, 0x21b33c19
                  li           s4, 0x80000000
                  li           a7, 0x80000000
                  li           a4, 0x0
                  li           ra, 0x0
                  li           a3, 0xffffffff
                  li           t6, 0xe9f73a22
                  li           s6, 0xffffffff
                  li           a0, 0x80000000
                  nop
                  lui          t4, 1043301
                  nop
                  lui          a3, 585585
                  lui          s4, 363138
                  nop
                  lui          a0, 378893
                  sub          a3, a3, a4
                  auipc        t4, 836529
                  add          a3, a7, t6
                  add          t2, a7, a7
                  sub          t6, t4, ra
                  sub          t6, t4, s4
                  nop
                  addi         a7, a4, -296
                  nop
                  addi         a7, s4, 301
                  sub          t6, a3, ra
                  lui          s6, 726874
                  sub          a7, s6, t2
                  auipc        s6, 475252
                  auipc        a0, 284335
                  nop
                  lui          s6, 303171
                  sub          ra, a4, a3
                  add          a7, s6, t6 #end riscv_int_numeric_corner_stream_4
                  xori         gp, a1, 584
                  sub          s7, t5, a6
                  slt          s11, zero, t3
                  srai         s9, s10, 1
                  xor          t2, a7, t4
                  slti         tp, a4, 1141
                  andi         a0, a5, 1598
                  add          s0, a4, gp
                  nop
                  xori         s9, s0, 23
                  srli         s6, t3, 31
                  sll          a5, s10, s6
                  ori          t4, a1, 792
                  nop
                  slli         t1, s2, 26
                  srl          a4, s6, s9
                  auipc        s8, 1028775
                  xor          zero, a5, a0
                  srli         s5, s7, 29
                  sra          s9, gp, a5
                  sltu         ra, t2, s0
                  sll          s3, s6, a6
                  srli         s9, t2, 22
                  xori         a5, a3, 1946
                  andi         s4, t4, 46
                  srl          ra, s4, tp
                  ori          a7, t0, 1037
                  slti         a7, a5, -181
                  srai         s2, a5, 26
                  sltiu        zero, sp, 1170
                  srl          s6, s10, s0
                  xori         s7, s10, 956
                  lui          s5, 611921
                  addi         s0, t0, -842
                  slt          ra, s1, sp
                  srai         s5, s5, 5
                  sll          t4, a4, t5
                  xor          a4, sp, sp
                  sub          s5, a2, tp
                  sra          tp, t0, a7
                  sub          s4, a6, a4
                  or           a2, zero, a5
                  sll          a5, s6, a1
                  sub          t2, t1, gp
                  ori          s6, t5, -236
                  addi         t2, a6, 1367
                  xor          s6, ra, s4
                  addi         a2, t4, -1678
                  sra          s5, gp, t4
                  srai         a2, t1, 7
                  sra          a2, a7, t2
                  srli         ra, a6, 6
                  slti         gp, a3, 1957
                  nop
                  sub          s1, gp, t2
                  auipc        a7, 173614
                  addi         a7, a5, -61
                  xori         s4, zero, 580
                  add          gp, s5, s9
                  xor          ra, tp, ra
                  andi         t4, a3, 1434
                  slli         s11, s0, 3
                  and          a2, s6, a6
                  sll          t0, t3, s8
                  auipc        s10, 121528
                  addi         s3, tp, 1258
                  sltu         s3, a6, a0
                  slt          s0, s4, t6
                  addi         zero, a4, 1638
                  srli         s7, s8, 16
                  sra          a7, tp, a7
                  sub          s8, a6, s4
                  and          tp, tp, a4
                  lui          tp, 722943
                  andi         s0, zero, 1471
                  sub          s0, t5, s11
                  addi         t0, a7, -1348
                  lui          t0, 231999
                  srai         a5, s5, 24
                  srli         t1, t6, 8
                  sltu         a7, ra, t5
                  and          s10, sp, t2
                  or           a2, s1, a3
                  lui          s2, 295459
                  sltiu        a5, s7, -1696
                  slli         gp, s10, 15
                  or           s10, s10, gp
                  xor          a3, zero, a3
                  xori         a0, s2, 1907
                  nop
                  lui          s10, 876000
                  add          s8, t1, t6
                  sra          s9, t0, a0
                  addi         s2, s6, 1
                  and          s1, ra, t1
                  or           a2, s3, ra
                  andi         a3, s4, 1906
                  srli         a6, s3, 8
                  srl          s4, a6, t5
                  ori          t0, t1, -1980
                  ori          ra, s7, 345
                  sra          t4, s10, s8
                  srli         t2, t6, 30
                  ori          s10, gp, -1263
                  sra          a5, s5, s0
                  ori          zero, a5, 322
                  sll          a7, s2, a7
                  auipc        s9, 81170
                  sll          t0, a1, s3
                  or           a2, s7, a3
                  andi         s6, a0, 947
                  sll          t1, s0, s3
                  srl          ra, a1, s1
                  lui          s11, 596255
                  sltiu        zero, a0, 234
                  sltu         s9, s9, a3
                  addi         gp, s10, 178
                  slt          t6, s11, s0
                  slt          a0, t0, a2
                  or           a4, s2, s10
                  addi         a5, t3, 1360
                  and          gp, t2, a5
                  slli         zero, a2, 11
                  andi         a0, t0, 157
                  xor          ra, a7, a3
                  sltiu        t6, sp, 685
                  sll          t3, a0, s1
                  lui          zero, 432575
                  slli         t4, a7, 11
                  slti         a6, s9, 1011
                  sub          s4, a4, s9
                  andi         t0, s8, 814
                  lui          t0, 518596
                  lui          t4, 855791
                  xori         s2, s8, 1720
                  sra          s6, s11, t5
                  xor          s10, t5, s1
                  add          s1, s2, s7
                  add          s1, t2, tp
                  srai         t4, a3, 10
                  xor          zero, t2, s2
                  srli         s10, t0, 8
                  srli         t1, s0, 25
                  addi         tp, t4, 1260
                  srl          s0, ra, s10
                  slti         s7, s3, 901
                  addi         s3, tp, -1136
                  slt          s7, s1, a4
                  addi         s10, zero, 1529
                  sltiu        a3, s4, 868
                  sra          a0, s6, ra
                  lui          s5, 72174
                  sltiu        ra, a4, 1812
                  sll          a2, a0, t1
                  addi         s11, t4, -192
                  xori         s6, s2, 1136
                  srai         s4, a5, 30
                  auipc        s4, 184034
                  srli         s9, s10, 4
                  xori         a2, s7, 816
                  xor          ra, a5, t3
                  or           a2, a6, ra
                  sra          s6, s2, t1
                  sll          t3, tp, a0
                  addi         s5, s9, -1565
                  sltu         t0, tp, s4
                  srli         ra, t1, 7
                  andi         a4, s9, 504
                  xori         s9, a1, -812
                  ori          s8, s7, 432
                  srai         s4, s1, 6
                  sub          ra, t1, a0
                  sltu         a2, t2, a4
                  lui          s0, 943486
                  or           s6, t4, a2
                  sltiu        t4, s7, 486
                  lui          t6, 481771
                  nop
                  sra          s8, a6, s7
                  add          s1, s6, s9
                  sltu         s11, a2, s5
                  srai         s9, t0, 19
                  srai         tp, a6, 23
                  sub          s3, a6, t1
                  and          s7, tp, sp
                  auipc        a6, 564223
                  or           s2, s4, t2
                  sub          a4, a4, ra
                  slti         t3, s7, -276
                  slti         a7, t4, 1614
                  sra          t4, a4, sp
                  nop
                  sub          a4, ra, t6
                  and          a3, gp, gp
                  nop
                  addi         s7, t3, 226
                  auipc        a0, 619076
                  sltu         a7, t6, t5
                  nop
                  or           s6, t5, gp
                  sltu         s3, t3, s7
                  ori          t2, zero, -869
                  srai         a2, t2, 31
                  srl          t3, tp, a1
                  srai         t4, a0, 13
                  slti         a3, s9, 1465
                  auipc        s8, 76875
                  add          s11, a7, s5
                  and          s5, sp, s0
                  srai         a3, s6, 21
                  and          a5, s7, a2
                  xori         gp, s7, 653
                  and          a5, s3, s0
                  sll          t2, s3, gp
                  lui          gp, 780983
                  sll          t3, s4, gp
                  lui          s9, 488198
                  or           s10, s0, a6
                  sra          s9, s9, a4
                  andi         s7, t4, 649
                  sltiu        s3, a4, 1285
                  sra          ra, ra, tp
                  xori         s6, s9, 289
                  xor          s2, s5, s3
                  or           a0, s8, s0
                  nop
                  sltu         s9, a3, s4
                  slli         ra, gp, 12
                  slti         t4, zero, 1269
                  or           a3, s0, t4
                  sltu         s6, t1, t6
                  addi         ra, s4, -636
                  nop
                  sub          a3, t5, a4
                  and          s3, s5, s5
                  slti         s4, a1, -625
                  slli         gp, t6, 4
                  lui          zero, 259387
                  slti         t1, a2, -1894
                  srl          a7, sp, t4
                  slt          s11, s5, t4
                  sltiu        s3, s11, 1735
                  addi         s11, gp, -435
                  sub          t6, a1, a0
                  slli         s5, tp, 6
                  add          zero, t4, s6
                  srl          s4, s1, s6
                  xori         t3, s8, -1786
                  add          t3, a4, s3
                  srli         s6, a3, 11
                  sltiu        t4, s7, 407
                  and          zero, s3, gp
                  sll          s1, t0, a3
                  slti         s8, s2, -596
                  sub          t1, s2, t3
                  and          s7, s7, s1
                  add          s2, s11, zero
                  sub          t2, s10, s0
                  sltiu        s4, a0, -1532
                  sltiu        gp, s6, 1685
                  xor          a4, a5, t4
                  sltu         t3, ra, s1
                  nop
                  xori         a2, s2, -1882
                  xori         t0, a1, -821
                  xori         s7, t1, 1766
                  or           t3, t2, a3
                  auipc        s4, 216005
                  srli         s7, a1, 16
                  sub          a5, a2, s4
                  lui          t6, 905726
                  li           s5, 0x2d81529e #start riscv_int_numeric_corner_stream_16
                  li           s0, 0x88545fc2
                  li           a5, 0x80000000
                  li           s10, 0x80000000
                  li           t3, 0x575a10fd
                  li           a6, 0xf6d74a35
                  li           s8, 0xffffffff
                  li           s1, 0x79e3136f
                  li           tp, 0xffffffff
                  li           s2, 0x0
                  lui          s8, 681328
                  sub          s10, t3, s10
                  lui          s0, 970973
                  auipc        t3, 1020579
                  lui          a6, 460944
                  lui          tp, 361053
                  sub          t3, s8, s10
                  addi         t3, s5, 431
                  auipc        tp, 365023
                  addi         s5, s1, 1086
                  sub          s1, s10, s1
                  add          tp, tp, s2
                  add          s5, t3, s2
                  addi         tp, s1, -846
                  nop
                  addi         s5, s10, -1343
                  sub          s10, s5, tp
                  addi         s5, s10, 1812
                  nop
                  auipc        a5, 314216
                  add          s10, s5, s8
                  add          s2, t3, s0
                  auipc        a5, 985668
                  sub          tp, s5, a5
                  sub          s0, s5, s8
                  auipc        s5, 509693 #end riscv_int_numeric_corner_stream_16
                  slti         a2, s1, 347
                  lui          s5, 679722
                  sra          s4, s7, a5
                  srli         a6, s4, 20
                  slli         s7, t4, 19
                  slli         s2, s9, 15
                  andi         zero, t2, -162
                  slti         t2, s4, -60
                  slli         t3, sp, 22
                  sll          gp, sp, a3
                  auipc        s9, 137237
                  srli         a2, t0, 22
                  sltu         a3, t4, a5
                  and          s11, a1, t3
                  nop
                  slt          s7, a0, a3
                  slt          s1, t2, s1
                  slli         t3, s11, 5
                  andi         s10, a4, 166
                  andi         a2, a5, -731
                  srai         a2, t0, 6
                  srli         t4, ra, 12
                  addi         t3, a5, 87
                  xor          a7, a7, s5
                  and          s1, t6, tp
                  sub          ra, a0, s3
                  nop
                  addi         s3, s7, 204
                  slli         t2, a0, 26
                  ori          s7, a7, -256
                  srli         t2, t5, 10
                  and          s4, s3, s7
                  xor          gp, s0, a6
                  addi         t1, a2, -1633
                  srai         tp, a1, 10
                  andi         a7, a6, -1791
                  srai         s1, t4, 16
                  slt          a4, t0, s0
                  nop
                  sub          s10, t6, t0
                  auipc        zero, 10030
                  xor          ra, t5, a4
                  sll          s6, t4, s3
                  auipc        t4, 626259
                  slt          t4, a4, s10
                  srl          t6, s11, s6
                  and          s8, a5, a7
                  slti         t4, s4, 1046
                  ori          a3, a2, -582
                  nop
                  lui          s0, 462217
                  srl          s4, s4, s10
                  slti         a5, a0, -521
                  sll          s2, gp, a2
                  slli         s7, zero, 27
                  or           s11, s0, a2
                  slti         t3, t2, 1816
                  auipc        t6, 246731
                  xori         s4, t3, -181
                  sra          t0, ra, ra
                  sll          s6, gp, t6
                  and          s11, t1, t3
                  slti         s3, t1, 257
                  slt          gp, sp, s7
                  srai         a6, s7, 28
                  srl          ra, a7, t6
                  srai         s7, a7, 23
                  andi         t3, a2, -1634
                  ori          a5, t6, 184
                  sll          s9, a5, gp
                  addi         t2, a6, 898
                  auipc        s9, 854853
                  srai         s0, gp, 24
                  nop
                  or           s7, t2, tp
                  add          a3, t0, t2
                  srai         s5, s1, 6
                  srli         t2, s10, 14
                  addi         a7, s8, -2042
                  srai         t4, ra, 5
                  auipc        a5, 468739
                  sll          s8, t2, t6
                  lui          t1, 841200
                  srai         t1, t2, 7
                  sub          t3, s11, tp
                  add          t6, a7, a5
                  ori          a7, a2, -964
                  sltu         t1, s0, ra
                  andi         s0, a4, -931
                  slti         s5, s7, 1609
                  srli         t0, s10, 6
                  lui          a3, 872560
                  xor          t1, s4, t3
                  sltiu        a3, ra, -1161
                  andi         a0, gp, -392
                  xori         s3, a2, -1685
                  srli         ra, a4, 28
                  slt          a4, gp, tp
                  or           s4, a4, s10
                  sub          t3, t2, s6
                  sll          zero, ra, s8
                  slt          t1, ra, s6
                  srli         t6, a2, 26
                  sub          t2, s4, ra
                  sub          s9, t1, s6
                  xor          t2, a5, t1
                  slti         s8, t2, 556
                  slti         a3, s2, -207
                  sltu         s3, s9, s3
                  andi         gp, a3, 1166
                  xor          t3, a0, t5
                  auipc        s10, 907235
                  nop
                  sub          a4, s3, s5
                  srl          t0, t2, a4
                  slli         t1, s3, 14
                  auipc        s3, 855828
                  or           s5, ra, s3
                  sra          s1, a7, s11
                  slt          t4, a7, a7
                  slt          a4, gp, s2
                  andi         gp, s2, 1380
                  sra          tp, tp, s8
                  add          s1, a4, a1
                  xori         t4, t5, -1527
                  sltiu        zero, s10, 1746
                  slli         a5, s3, 1
                  auipc        a7, 737096
                  slti         t0, a6, 1958
                  slti         a2, s7, -569
                  add          s10, a6, s8
                  xor          s9, gp, a5
                  ori          s1, s10, -1186
                  ori          gp, s5, 720
                  sub          a6, gp, a5
                  sra          t1, t4, s5
                  slti         s6, t6, -1269
                  xori         t1, t4, -1877
                  xori         s4, t5, -945
                  andi         a5, t2, -30
                  andi         s8, s3, -1019
                  slti         s6, t4, 171
                  slli         t0, sp, 25
                  or           t2, t5, s2
                  sub          s1, t1, ra
                  slti         s7, t3, 334
                  sra          s2, t6, a1
                  sub          a6, s9, s6
                  srli         ra, a7, 22
                  srli         s1, a3, 0
                  sll          t4, tp, s7
                  add          s0, t5, s3
                  srl          a4, a4, ra
                  lui          s5, 19637
                  auipc        s2, 660489
                  srli         s0, t6, 8
                  srai         s8, a4, 23
                  add          s3, t4, t2
                  srli         t0, s3, 22
                  slli         s10, s10, 9
                  sub          s3, s7, s11
                  slti         a6, a7, -1832
                  addi         t0, s7, 1346
                  lui          gp, 72956
                  slt          t3, s4, zero
                  sltu         s6, sp, s2
                  andi         s10, t4, 425
                  add          a7, s6, s11
                  lui          s1, 1022904
                  srai         t6, a5, 3
                  slti         s8, t2, 104
                  srai         t1, s2, 19
                  sltiu        s3, s0, 1875
                  nop
                  ori          s2, t4, 1700
                  auipc        s2, 288298
                  srli         s2, s10, 7
                  slti         t3, a3, -1474
                  sltu         gp, sp, s4
                  sll          a0, t4, t5
                  add          s10, s9, s1
                  addi         s8, a2, 1672
                  sra          s1, s5, t2
                  sll          zero, t6, a4
                  auipc        s4, 682563
                  sub          s0, s4, a1
                  andi         t6, a0, 1693
                  sltu         s2, ra, gp
                  sll          a3, t4, s3
                  andi         t0, s9, 983
                  addi         s6, a4, -1192
                  or           gp, t5, t3
                  auipc        s3, 485507
                  srai         a4, a7, 30
                  xor          s2, a1, t4
                  or           s1, t5, a2
                  slt          t6, s2, s10
                  add          s4, zero, s4
                  addi         a0, s5, 878
                  sra          t1, s7, a0
                  slli         t6, s3, 8
                  add          t6, a6, s8
                  andi         a3, s7, -1487
                  nop
                  slti         a0, ra, -903
                  lui          tp, 875213
                  slti         a3, t5, 1748
                  slli         s9, a0, 6
                  and          s7, a7, gp
                  andi         s10, a0, 1620
                  sub          gp, t1, s6
                  sltu         a7, a5, a5
                  slti         s3, s0, 1513
                  auipc        t2, 328629
                  ori          t3, ra, 1621
                  srl          s4, t6, t6
                  addi         s0, s10, -792
                  slli         s7, s0, 10
                  nop
                  slt          s5, s4, s5
                  addi         a5, s5, -1861
                  srl          s2, s2, s9
                  slt          s2, zero, tp
                  addi         s3, t3, 1828
                  sltiu        a2, s11, -646
                  or           s5, s8, s7
                  srl          a4, t2, s5
                  xori         t3, s10, -1624
                  addi         ra, s3, 492
                  xor          s2, a7, s10
                  or           a3, s7, t6
                  sll          a2, s1, s10
                  srli         s0, s3, 21
                  srai         s8, a7, 12
                  sra          a5, t6, a1
                  sltiu        t6, s8, -1928
                  srli         a0, s6, 4
                  slt          tp, s11, a5
                  slti         zero, a1, -807
                  sll          t6, s7, ra
                  xori         s0, t4, -620
                  sltu         s5, s7, a0
                  add          a3, a6, t3
                  nop
                  sll          a0, t6, s3
                  and          a0, ra, a2
                  or           tp, a4, a0
                  xor          t0, s0, t0
                  slt          s8, a0, a2
                  srai         s3, t0, 16
                  srl          a4, s5, a0
                  nop
                  srli         s7, s8, 25
                  xor          a0, s2, gp
                  and          a0, s9, t0
                  slli         t6, a4, 19
                  andi         t6, a1, 264
                  slti         a6, a1, -793
                  andi         a5, s6, 1590
                  andi         t1, s11, -749
                  srli         a5, a1, 20
                  srai         t0, t5, 26
                  srl          s4, s4, s10
                  slt          tp, s5, a1
                  addi         t1, ra, -194
                  slt          s5, zero, s11
                  sltiu        t6, a6, -1931
                  ori          zero, a4, -438
                  lui          a7, 960452
                  lui          t0, 867529
                  sra          s1, a4, s3
                  xor          s7, s8, a1
                  sub          a7, a7, zero
                  ori          s4, t6, 792
                  or           zero, s11, s10
                  xor          s7, t3, s2
                  sra          s11, a0, t2
                  or           s0, s6, a0
                  sltu         s10, t1, a3
                  sltiu        a6, a3, 571
                  addi         a0, s5, -979
                  slti         zero, gp, 262
                  slt          s8, a1, s9
                  slt          a5, a6, s11
                  add          ra, s1, s11
                  or           s6, a7, a7
                  add          a3, a3, s8
                  sub          s7, t6, gp
                  slt          t6, gp, a7
                  slt          s2, sp, tp
                  sll          s1, t3, a0
                  auipc        s9, 677923
                  srai         s0, s7, 3
                  sltu         t6, a4, s4
                  nop
                  ori          a4, t1, -1363
                  sll          s1, s3, s2
                  add          s10, a7, a7
                  sltiu        s3, a0, -556
                  andi         t1, t5, -838
                  xori         s8, t6, 1070
                  sltiu        s6, s8, 1646
                  addi         gp, s4, 1275
                  lui          s9, 532885
                  sra          tp, tp, a7
                  nop
                  sltiu        t0, s0, 1629
                  nop
                  add          s8, s5, a3
                  xor          t3, a3, s6
                  add          s8, s2, ra
                  srli         tp, gp, 27
                  and          a3, t6, s10
                  sll          s10, s5, s6
                  sltiu        t3, a0, -987
                  auipc        s10, 1005923
                  xori         s0, s10, -2017
                  lui          s11, 124226
                  srl          t3, a4, sp
                  addi         s6, s1, -160
                  slt          s2, s3, s3
                  sltiu        tp, a7, 1415
                  sub          t3, gp, a7
                  slt          t4, a3, s6
                  ori          s2, s7, -758
                  addi         t3, s2, 1414
                  srai         s9, s5, 1
                  and          a2, sp, s9
                  xori         a4, gp, -1123
                  andi         s3, s6, -1240
                  or           tp, a7, t5
                  slli         t0, s0, 18
                  slli         t1, s6, 27
                  sll          s0, t1, s3
                  slt          t3, zero, tp
                  sra          s11, s2, s1
                  xor          s7, s6, tp
                  sltu         a4, a6, sp
                  sll          t6, a3, tp
                  auipc        a7, 471771
                  lui          s3, 862133
                  xori         t6, a7, -709
                  xor          s7, s7, t3
                  ori          t1, s7, 1317
                  slti         t6, s3, -721
                  andi         a5, a7, -49
                  auipc        s6, 620408
                  srl          s3, t2, s0
                  srli         t1, t3, 15
                  or           t6, t0, s3
                  addi         a7, t6, -1368
                  ori          s8, s11, -650
                  nop
                  sltu         t4, s6, a0
                  andi         s8, a3, 1455
                  or           a6, s11, s2
                  ori          t3, a1, 1926
                  srl          t2, s2, ra
                  sra          gp, a0, t5
                  sltiu        a5, t3, 389
                  nop
                  sltu         tp, a7, t4
                  sub          t3, a3, s3
                  sub          a4, a2, s7
                  or           s11, t5, a6
                  add          s7, s8, gp
                  sltiu        t1, t6, 391
                  slli         t4, s10, 21
                  xor          t2, a3, a0
                  slti         s2, s8, -1124
                  srli         t0, s5, 0
                  sltu         s2, a7, tp
                  and          s5, s8, sp
                  addi         a4, a3, -1049
                  ori          t2, t3, -32
                  sll          s6, a0, s1
                  slti         ra, s5, 413
                  auipc        tp, 760305
                  sltu         a7, s10, t6
                  sub          a4, a3, tp
                  add          s2, t2, a1
                  add          s1, s4, tp
                  sll          a2, t6, t4
                  add          a5, s10, sp
                  slt          s11, s10, ra
                  xori         s5, s9, 461
                  slt          a4, t5, t6
                  and          gp, a3, ra
                  xori         s9, tp, -585
                  xori         a0, s1, 1019
                  xor          t0, tp, s10
                  sltu         t2, a6, tp
                  srai         s9, s9, 6
                  andi         s0, a7, -11
                  andi         zero, a0, -1537
                  addi         s9, sp, 1925
                  nop
                  nop
                  add          t0, s6, a2
                  ori          t3, tp, -1156
                  srl          s1, zero, a5
                  slti         t3, a2, 922
                  sltu         a0, s1, s0
                  addi         s3, ra, 237
                  and          a2, a2, t4
                  sub          a5, a3, tp
                  xor          a3, t6, s0
                  sltiu        a7, t2, -881
                  sll          t4, t6, s2
                  sub          gp, gp, s5
                  ori          a5, tp, 270
                  xori         t4, a6, -1919
                  srai         a5, s0, 7
                  srli         s10, a3, 1
                  slt          s7, a2, t5
                  slli         tp, s9, 24
                  srai         tp, s1, 13
                  sub          s2, t2, s4
                  auipc        a6, 944155
                  sra          s3, s3, s11
                  or           a3, a1, t3
                  sub          t3, tp, a1
                  lui          gp, 432817
                  addi         s0, s10, 953
                  or           s5, t6, t4
                  sub          s2, s5, s1
                  sra          s0, s5, s7
                  srl          s10, t2, s4
                  xor          a7, a6, gp
                  sltu         s8, t1, t0
                  xori         a2, s1, 1443
                  and          s4, a7, s11
                  slli         s4, s5, 9
                  auipc        a2, 763576
                  srai         s3, a2, 31
                  lui          t2, 395805
                  sltu         s2, s8, t6
                  srai         s11, a2, 12
                  sltiu        s1, a3, -1079
                  srli         s10, zero, 0
                  xor          s11, ra, a5
                  sra          s5, s2, s1
                  xori         zero, t0, -1720
                  slti         t3, gp, -2
                  nop
                  slli         t3, s11, 9
                  ori          t1, s11, -1077
                  ori          gp, t2, 46
                  lui          t4, 927238
                  addi         s7, zero, 393
                  slli         t1, s4, 3
                  addi         s11, s2, 601
                  add          ra, gp, a4
                  slt          s8, tp, a5
                  sltiu        tp, s11, 614
                  sltiu        t4, s2, -870
                  sll          s6, a1, s6
                  addi         s0, t4, -51
                  nop
                  and          a5, ra, s8
                  sll          a3, a3, t2
                  or           s5, t1, t5
                  and          s3, a1, t3
                  ori          tp, s8, 232
                  lui          t6, 434575
                  srl          s1, s2, s5
                  lui          t1, 451367
                  srl          tp, s2, a2
                  nop
                  sra          zero, t2, t3
                  sltu         t0, t6, s6
                  sra          s10, t2, s3
                  or           a5, t2, gp
                  and          a7, a2, a0
                  addi         t4, s5, 151
                  slti         s1, t3, -2035
                  ori          s0, s8, -388
                  sltu         a4, s6, s1
                  slli         s3, a5, 29
                  slt          a6, s7, ra
                  srli         a5, s3, 5
                  and          a3, sp, s11
                  ori          t3, s0, 498
                  sll          s1, a1, s7
                  and          t1, zero, a6
                  addi         s7, s6, -1808
                  ori          s5, tp, -1286
                  srl          a7, a7, a7
                  auipc        a4, 163089
                  sltiu        tp, a6, -306
                  slti         a3, a4, -929
                  sltu         s10, a6, t3
                  nop
                  add          a6, a3, s10
                  srai         s10, a7, 7
                  srai         s9, t1, 13
                  srai         s0, s1, 29
                  sll          t4, t2, s10
                  auipc        a4, 221629
                  add          a4, t0, t4
                  sra          t2, t5, a2
                  add          s7, a2, s8
                  sll          a5, s10, t4
                  auipc        s3, 789640
                  and          s10, s8, s11
                  auipc        a7, 470470
                  srai         a0, s7, 8
                  auipc        s2, 839599
                  nop
                  sltiu        s4, a2, 1882
                  and          s0, t0, a3
                  sltu         s8, a1, s9
                  sub          t3, t2, s11
                  lui          t0, 190127
                  srai         s9, sp, 15
                  add          s7, t4, a1
                  srai         t1, s6, 21
                  sltu         a4, zero, a6
                  slli         a7, sp, 8
                  sltiu        s6, s9, 1192
                  sub          a2, s8, a5
                  lui          s11, 702392
                  xori         gp, a6, -1580
                  nop
                  xori         a5, s6, 1678
                  xor          s7, t4, s7
                  sll          s5, t5, ra
                  sltiu        s11, a4, 1136
                  xori         tp, s9, -742
                  slt          gp, a2, t0
                  sll          t4, t2, s2
                  addi         a7, a6, 1630
                  auipc        t2, 703591
                  slti         s8, a7, 164
                  addi         t4, a1, 1695
                  sll          t4, t5, a1
                  addi         s4, s2, -184
                  andi         s0, s0, 556
                  xori         a0, s8, 867
                  sltu         s8, s10, s9
                  srl          a4, s4, a3
                  srai         gp, s11, 4
                  srli         s6, t5, 26
                  sra          t3, t5, s11
                  nop
                  srli         a7, a6, 17
                  slt          t2, gp, a1
                  srli         t6, t1, 25
                  addi         t1, ra, -1449
                  sll          s4, zero, s6
                  sltu         gp, zero, a0
                  sltu         t0, tp, s9
                  lui          s8, 623054
                  or           s7, t4, s10
                  slt          s6, t2, s11
                  nop
                  xori         s2, s6, -24
                  xor          t1, s2, tp
                  ori          tp, s8, -1467
                  srl          a3, s4, a3
                  ori          a5, s6, -723
                  nop
                  sub          s4, sp, t0
                  srl          s7, s3, a7
                  auipc        a0, 154571
                  or           t0, t6, gp
                  andi         s11, a7, 1298
                  andi         s6, a5, 1509
                  and          s5, s2, ra
                  xor          a5, a5, s2
                  addi         s6, s6, 1060
                  slti         a3, s7, -1214
                  ori          s1, sp, -1010
                  sll          s3, t5, zero
                  xori         a0, s8, -1569
                  lui          s11, 961478
                  sll          s3, a4, a7
                  slti         a6, sp, 539
                  sltu         t1, t6, s3
                  slt          t6, a5, t6
                  addi         t4, a7, 1661
                  xor          zero, a6, t6
                  srl          a4, sp, a2
                  andi         t2, a0, 1291
                  slti         a2, a1, 1184
                  add          s3, s1, t1
                  or           ra, s3, s11
                  sltiu        s5, s10, 1146
                  lui          t3, 283854
                  xori         s6, a0, -1544
                  auipc        tp, 445749
                  addi         s4, t4, 1997
                  lui          t2, 529102
                  nop
                  slti         ra, gp, 1505
                  lui          zero, 968218
                  lui          s8, 72218
                  sra          t6, s11, a3
                  nop
                  srl          s3, s6, s11
                  addi         t3, t3, 1670
                  slli         s4, zero, 12
                  andi         gp, a3, 1683
                  auipc        s3, 343318
                  slti         s7, s1, -1007
                  addi         s1, t5, 660
                  slt          t3, t3, s4
                  sltu         s8, zero, a6
                  sltu         a4, a3, a1
                  sltu         s1, s0, a1
                  srai         a3, t3, 9
                  slt          zero, s0, t4
                  and          t3, t4, s6
                  andi         s3, s6, -1762
                  xori         tp, s1, -1675
                  andi         a7, t4, -114
                  sll          zero, s11, a1
                  xor          tp, s3, a4
                  sltu         s2, t2, a5
                  slli         t6, t5, 10
                  auipc        a2, 302324
                  xor          a2, t3, t3
                  sltu         s8, a3, s1
                  xor          a5, a1, gp
                  sra          t2, zero, a0
                  xor          a6, s6, s8
                  addi         s10, s4, 1448
                  sra          t2, t0, s7
                  sub          zero, a7, s11
                  lui          s6, 735923
                  sll          a4, a7, s7
                  sltiu        a6, s5, -1069
                  slt          s4, s2, s4
                  sub          s7, s8, s9
                  xor          a3, gp, a5
                  addi         t3, t6, -469
                  sltiu        a5, s6, -717
                  andi         s4, a1, -1407
                  srai         gp, a6, 25
                  srai         ra, s4, 31
                  auipc        t1, 802761
                  lui          a7, 345813
                  slti         t3, a7, -358
                  addi         s7, t2, 402
                  slli         t3, a3, 29
                  lui          a2, 526930
                  auipc        a3, 565796
                  sltiu        a5, s6, 978
                  ori          t0, s3, 735
                  sub          ra, t4, ra
                  sltiu        t4, s0, 382
                  sra          zero, s5, a4
                  srl          s10, a4, ra
                  slli         s7, t6, 22
                  xor          s0, s1, s3
                  lui          s7, 116166
                  xor          a7, t6, a0
                  xori         s8, t2, 942
                  nop
                  or           a3, a2, t1
                  andi         s1, t2, -1957
                  auipc        a2, 1002085
                  ori          s8, a7, 885
                  auipc        tp, 609416
                  sltu         ra, s7, ra
                  sltu         s5, s10, s5
                  sll          s1, t4, t5
                  slt          s0, t3, a3
                  xori         zero, t1, 505
                  xori         s7, s10, -245
                  sub          a7, t4, t3
                  add          s5, s7, a5
                  add          s2, t3, s1
                  srai         ra, t2, 3
                  andi         s4, a0, -1540
                  xor          tp, s8, a0
                  sltu         t0, t6, t5
                  and          s2, t5, s4
                  lui          s1, 88726
                  sub          tp, s7, t2
                  sltu         s9, a0, t0
                  sra          t4, a4, gp
                  sltiu        s7, s6, 1418
                  srl          gp, a0, tp
                  andi         zero, s8, 1223
                  sll          t6, t2, t3
                  sltiu        s3, t6, -1798
                  srli         a0, s0, 1
                  srli         a3, t2, 13
                  srai         s10, ra, 16
                  sll          a6, a5, gp
                  srli         s1, s1, 25
                  sltiu        a0, s5, 1608
                  ori          s10, a5, 1648
                  slt          s9, a1, a7
                  or           tp, ra, t4
                  ori          a0, t6, 1003
                  sra          a4, s8, s1
                  slti         s9, a5, -610
                  ori          tp, gp, 1946
                  ori          a3, a2, 1400
                  lui          s11, 488504
                  sltiu        t4, a7, -52
                  addi         t6, s6, -946
                  lui          s1, 450575
                  srl          t3, s0, t6
                  addi         tp, ra, 1364
                  andi         a2, s6, -285
                  xor          s2, a1, t0
                  slli         gp, t1, 18
                  auipc        a3, 156281
                  addi         s11, t0, -1905
                  addi         t2, s6, -10
                  srli         t2, s9, 6
                  and          s9, s5, a7
                  xori         a2, t0, 909
                  slli         s9, s1, 26
                  sub          a6, zero, a1
                  sll          t3, gp, a3
                  or           s8, t5, a4
                  ori          a3, s3, 1901
                  sltu         s8, t3, a7
                  add          t1, t4, zero
                  srl          s8, s7, t4
                  and          t6, s2, s4
                  srli         a3, s9, 19
                  slli         s6, a0, 13
                  sltiu        s0, a3, 122
                  nop
                  srai         ra, s6, 10
                  xori         s10, s4, -1746
                  or           s2, s0, t4
                  sll          s8, s7, tp
                  sub          gp, s3, a5
                  srl          a6, s0, t6
                  auipc        a0, 875029
                  slti         gp, s10, -433
                  ori          s10, s0, 71
                  ori          a7, t6, 686
                  auipc        tp, 235214
                  or           a5, a5, a1
                  sll          a2, gp, sp
                  slli         tp, a4, 11
                  or           a0, s5, a5
                  lui          a7, 120112
                  sltu         t6, t0, s11
                  and          s9, a7, a5
                  auipc        tp, 239042
                  sltiu        a3, s2, 1347
                  xori         t2, t4, 791
                  andi         zero, a4, -1087
                  srl          s4, s3, t1
                  xor          s0, a0, a3
                  or           t1, tp, s6
                  xor          a7, t6, a5
                  sll          a7, tp, s8
                  auipc        a5, 910039
                  xori         a7, a5, 660
                  srli         t2, t4, 16
                  sub          gp, s2, s3
                  and          a4, s9, sp
                  addi         a0, t3, 30
                  and          s10, s8, zero
                  slt          s6, s0, a4
                  sltiu        a7, a1, 2019
                  lui          s4, 803207
                  srl          tp, a2, t0
                  xor          t4, gp, s0
                  slli         a7, t2, 14
                  sll          ra, s6, s1
                  sra          a5, a7, tp
                  and          tp, s3, s2
                  srai         t6, tp, 6
                  sra          s4, t1, t5
                  sltu         s5, s9, s11
                  slli         s1, a2, 9
                  xori         a0, a3, -1136
                  slli         a3, a7, 8
                  andi         s3, ra, -1241
                  andi         a2, t4, -1354
                  add          a2, a6, s2
                  add          a4, a0, a1
                  sll          a4, s7, gp
                  nop
                  slti         s11, a4, -1454
                  and          tp, s3, a1
                  sub          a4, a6, zero
                  sltu         t2, s1, t5
                  and          a7, zero, s11
                  srl          s8, gp, a1
                  xori         t6, a7, 802
                  slli         t0, a2, 26
                  slt          s1, a2, s7
                  lui          s11, 223386
                  lui          a6, 226158
                  sub          a6, s1, gp
                  andi         t0, a1, -578
                  slli         a7, s4, 1
                  slli         t3, a5, 15
                  nop
                  srai         a3, t5, 3
                  andi         a7, s7, -314
                  sub          s4, zero, a2
                  sra          a2, t4, s5
                  slli         a2, s8, 25
                  sltiu        s1, t3, -1072
                  sltiu        t3, sp, -433
                  and          zero, s7, s2
                  add          a2, s6, a1
                  lui          a4, 238626
                  slti         a0, s10, 327
                  sltu         s1, t6, s4
                  auipc        s7, 854142
                  auipc        zero, 293031
                  xori         s5, s1, -2016
                  xor          a6, s8, s8
                  sltu         s10, t5, t2
                  slti         t2, s10, -706
                  and          s6, a1, a4
                  sltu         s1, a3, t3
                  andi         t3, gp, -930
                  slti         a5, t4, 1193
                  and          a3, a7, tp
                  sltiu        s7, s3, 781
                  sltiu        s4, s7, 150
                  sll          s10, tp, s8
                  srai         t2, t4, 30
                  xor          t1, s3, s11
                  auipc        s10, 530453
                  xori         s6, s5, 1309
                  or           s2, a3, ra
                  nop
                  add          s8, a3, s3
                  slli         s9, a4, 31
                  slti         s8, sp, 1691
                  sltu         a0, a7, t0
                  sub          tp, a3, ra
                  ori          s1, a1, 715
                  add          s8, t0, a6
                  srai         s11, a7, 17
                  nop
                  lui          s0, 515435
                  sltu         s11, a7, t6
                  srl          s0, ra, tp
                  xori         a7, a0, -1063
                  slti         t3, tp, 612
                  add          s7, a2, s0
                  slti         t6, t3, -1330
                  srli         s11, a4, 0
                  and          s0, s11, s11
                  xor          gp, a5, s4
                  sltu         s9, a7, s8
                  xor          a6, t3, a0
                  and          t1, s4, a0
                  and          t1, s6, a7
                  addi         zero, ra, 935
                  srl          s5, s3, t0
                  sra          s9, zero, a4
                  sll          ra, s9, t4
                  auipc        a7, 714483
                  sltiu        s9, ra, 1592
                  slti         s9, a7, 1932
                  xori         s4, t0, -122
                  sub          gp, t2, gp
                  srl          s0, s1, s8
                  slti         s11, s10, -616
                  and          t2, t4, s7
                  and          t2, a0, a0
                  sltiu        tp, s8, 1144
                  andi         s10, a6, 1715
                  xori         t1, t2, 593
                  and          t0, gp, s11
                  slti         s11, t5, 823
                  sub          t4, a5, ra
                  slt          t6, a4, tp
                  ori          s7, s5, 825
                  slti         s5, s10, 1966
                  slti         s10, s1, -718
                  andi         s4, t6, -222
                  slli         s3, a0, 4
                  auipc        a4, 883822
                  srl          ra, sp, t2
                  sltiu        t1, s7, -304
                  srli         t6, a3, 21
                  sltiu        a0, t0, -1895
                  xori         a5, a1, -1282
                  sltiu        zero, t1, 1422
                  srai         t2, sp, 13
                  nop
                  nop
                  xori         s9, s11, -1749
                  sltu         s0, s8, s10
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           a5, 0x80000000
                  li           a0, 0x0
                  li           t1, 0xffffffff
                  li           t3, 0x80000000
                  li           s2, 0x0
                  li           s3, 0x80000000
                  li           a2, 0x9b24a51a
                  li           tp, 0x80000000
                  li           ra, 0x0
                  sub          a5, t1, t3
                  auipc        a6, 510839
                  add          tp, s2, ra
                  sub          t1, a2, t3
                  auipc        a6, 861223
                  auipc        a0, 116784
                  lui          a0, 769653
                  addi         tp, tp, -1451
                  addi         a0, s3, -392
                  add          a5, t1, t1
                  addi         ra, a0, 135
                  nop
                  add          a2, a2, s3
                  lui          a0, 325409
                  add          t1, t1, a2
                  nop
                  lui          ra, 889742
                  add          ra, tp, t1
                  lui          a6, 897352
                  nop
                  addi         s3, a2, -715
                  sub          t1, a5, a0
                  nop
                  addi         ra, a5, -1923
                  lui          a0, 475090
                  addi         s2, a6, 1794
                  add          a6, a5, t3
                  add          ra, t1, s3
                  sub          a0, a2, t3 #end riscv_int_numeric_corner_stream_7
                  xor          s2, a3, s10
                  nop
                  slt          ra, t5, a4
                  or           s6, t6, t3
                  srai         gp, s7, 21
                  srli         s1, a3, 23
                  sltiu        s3, s4, -1676
                  slli         a6, s8, 30
                  addi         zero, s11, 795
                  srai         s2, s0, 12
                  slli         t0, a6, 19
                  sltu         s3, a2, s0
                  or           s10, ra, a0
                  xor          a5, a3, t3
                  or           a6, a4, t0
                  xori         t0, t5, 1516
                  nop
                  or           a5, s7, a0
                  auipc        s7, 762154
                  slti         s11, t6, 1392
                  addi         s9, sp, 1986
                  auipc        t3, 401609
                  ori          s3, a7, 366
                  srai         a0, s0, 18
                  srl          a2, s6, s4
                  addi         a5, zero, 1846
                  auipc        gp, 794592
                  srl          t1, s2, t3
                  xori         s1, s1, 41
                  and          gp, a3, a7
                  ori          a6, zero, -1229
                  slti         a6, s9, 1351
                  slti         s8, t1, 179
                  srl          s5, zero, s0
                  nop
                  and          t4, t0, a1
                  lui          s3, 510152
                  sltiu        t0, a7, 976
                  srli         a5, t3, 12
                  addi         s8, s1, -1392
                  slli         zero, a7, 21
                  lui          s1, 880834
                  srli         a7, s6, 7
                  slt          s6, gp, ra
                  srai         zero, ra, 10
                  sra          t4, a7, sp
                  srl          s0, s2, a2
                  srl          a3, t1, s0
                  slti         a7, t4, 1044
                  sll          a3, a0, t0
                  auipc        t1, 444334
                  xor          a2, zero, a3
                  andi         s0, a5, 1077
                  sll          t3, s1, t0
                  ori          t2, s11, 462
                  lui          s4, 274294
                  and          s2, a7, t0
                  sra          s5, s11, a5
                  slli         ra, s8, 9
                  slli         a0, s6, 4
                  sltiu        tp, a5, 1571
                  slti         t0, a7, -319
                  sub          s6, s0, s3
                  or           a6, a3, s8
                  srli         s9, a4, 24
                  sltu         s7, s1, t0
                  slt          s2, a3, gp
                  srai         a4, t6, 4
                  slti         t4, s5, 1974
                  add          s0, s5, ra
                  addi         s9, tp, -678
                  xori         s0, s8, -1147
                  sra          s0, s5, gp
                  sra          s1, t4, t0
                  srai         t0, s10, 20
                  ori          s2, t1, 870
                  slt          s6, a2, t1
                  srai         s10, zero, 9
                  xor          a3, s8, gp
                  auipc        s2, 957804
                  sltu         s11, t1, t0
                  xori         a7, s4, -1671
                  nop
                  add          s1, a4, sp
                  srai         t4, s11, 3
                  or           zero, t5, s4
                  srai         s6, gp, 7
                  ori          s0, s0, -414
                  srai         ra, t6, 15
                  xor          s11, s1, t4
                  add          gp, t0, zero
                  sll          s8, t1, s7
                  sltiu        tp, t5, -724
                  sll          a3, s4, a5
                  sra          a6, a7, a4
                  add          s8, a3, a0
                  xori         t6, a7, -1408
                  sll          s3, t2, s5
                  sltu         a6, t5, s6
                  lui          s7, 683450
                  auipc        t1, 41127
                  or           s9, t1, s9
                  add          s6, t0, s4
                  ori          s1, t4, -1704
                  andi         s6, a5, -235
                  sltiu        s11, t6, 1899
                  slli         t2, s6, 23
                  andi         a3, ra, 1049
                  sra          a7, gp, s4
                  or           s4, t0, s3
                  xor          tp, s4, t2
                  srl          ra, t6, t5
                  srai         a3, a4, 0
                  sltu         s8, a4, s9
                  sub          s4, a5, a7
                  srli         ra, a0, 20
                  slli         s5, s11, 10
                  and          s9, a5, s7
                  sltiu        tp, s0, -1667
                  ori          ra, t6, 1030
                  xori         gp, s4, 339
                  nop
                  sub          a5, t2, a3
                  lui          a4, 155548
                  lui          t4, 367929
                  sll          a2, zero, zero
                  andi         a2, t3, -833
                  slt          a3, a6, zero
                  add          a5, a7, a2
                  or           s7, s6, a4
                  slt          a0, a6, s7
                  andi         gp, s11, 797
                  srli         s0, gp, 6
                  sltiu        s10, s5, 1072
                  and          t0, a2, t3
                  addi         s9, ra, -927
                  andi         t4, a0, 1940
                  add          s11, s9, ra
                  sll          s8, zero, t2
                  sub          s8, s6, a2
                  ori          ra, s2, -2030
                  add          t0, s9, a4
                  slti         a6, zero, 1532
                  or           t1, a4, a2
                  lui          t0, 98091
                  addi         t6, s8, -1762
                  lui          s11, 327461
                  andi         ra, t1, 496
                  or           s1, a7, s10
                  sll          a3, a1, a4
                  srl          zero, s5, a1
                  slti         t6, t4, -937
                  addi         zero, s5, 1269
                  xori         a5, a4, -1670
                  xori         s1, a2, -1826
                  or           s7, t1, a3
                  srl          ra, s3, a7
                  addi         s6, a2, -1338
                  addi         a0, t0, 936
                  andi         zero, ra, 727
                  auipc        s1, 546134
                  nop
                  addi         t4, s9, -1659
                  xori         t6, gp, 2038
                  slti         a0, t3, 459
                  sltu         a2, t1, a3
                  lui          s6, 614965
                  srli         s2, t6, 15
                  and          t2, s9, t5
                  slt          t0, a5, t2
                  xor          t0, t3, ra
                  sltu         s9, zero, t4
                  xori         a5, s7, 1612
                  add          s9, ra, zero
                  slli         tp, a0, 26
                  srli         s11, s7, 5
                  slt          s9, s9, s7
                  lui          s8, 102698
                  or           s6, t1, s4
                  srl          zero, s7, t5
                  sltiu        t6, zero, -1638
                  slt          s11, s7, t0
                  sll          a0, a1, s10
                  sra          s10, a3, t3
                  addi         s4, s6, -848
                  xor          zero, t6, a2
                  sltu         t6, t3, s9
                  sltu         t3, t0, a3
                  and          s10, t1, t3
                  or           s9, t4, a1
                  srai         s11, ra, 6
                  andi         a2, a0, -605
                  add          a3, s1, s4
                  sltiu        a6, ra, -1391
                  or           s2, gp, t2
                  or           gp, zero, tp
                  sll          s10, s10, t3
                  xori         s7, s5, 828
                  auipc        a4, 57905
                  sll          s3, a6, s3
                  sltu         a3, ra, a2
                  auipc        s5, 806022
                  srai         tp, sp, 5
                  ori          a5, t0, 991
                  slt          a7, t6, s6
                  srli         s7, s6, 24
                  xori         a4, s9, -1376
                  slli         s6, tp, 19
                  slti         a3, ra, -1101
                  addi         a7, s1, 885
                  sub          t0, s10, a1
                  xor          a5, a0, a6
                  andi         t6, a0, -659
                  addi         s6, sp, -871
                  sll          t4, s3, tp
                  xori         s10, a4, -1947
                  xori         t3, a6, -1641
                  slt          s8, a1, ra
                  sra          tp, sp, t1
                  srli         a6, s0, 9
                  add          a2, a6, s4
                  ori          s7, ra, -1058
                  sll          t3, t6, s3
                  ori          s4, t3, 473
                  andi         s1, s4, 98
                  ori          t6, a6, -1282
                  andi         t6, t3, 1203
                  slli         gp, a5, 29
                  slt          a0, s4, t0
                  or           ra, t1, s10
                  sll          t1, a6, ra
                  slt          s7, a2, s9
                  slt          s9, a3, s2
                  sltiu        s0, t2, 603
                  slli         s0, t4, 8
                  slli         s10, s5, 29
                  sll          a2, t0, sp
                  srai         a5, a7, 12
                  srai         s4, t1, 5
                  sltu         s1, t1, t1
                  add          s0, s1, a6
                  lui          t0, 522329
                  xor          a3, sp, t1
                  or           a7, a4, t6
                  andi         a3, t4, 1838
                  addi         t2, gp, 1858
                  andi         s3, ra, -600
                  nop
                  srli         t4, tp, 20
                  slli         a0, ra, 10
                  sll          s2, t5, tp
                  sltu         a6, a2, s11
                  sltu         s4, s7, a6
                  slli         a5, s8, 29
                  slti         a5, s2, 387
                  andi         a2, a2, 464
                  or           t2, t3, a3
                  ori          t0, s6, 998
                  srl          t0, s10, s5
                  slti         a5, s10, 594
                  nop
                  nop
                  sltu         s10, s7, s2
                  srl          t4, t5, s9
                  add          a2, t6, t2
                  auipc        ra, 127933
                  andi         gp, t2, -1368
                  lui          t0, 879323
                  xor          t6, s0, s1
                  add          a0, sp, s2
                  sll          a5, t6, s5
                  srai         s1, s11, 27
                  nop
                  sltu         a0, a7, s10
                  and          s8, t4, s1
                  lui          a7, 337670
                  and          t4, s3, s10
                  sub          a5, a6, a1
                  add          ra, a0, s5
                  add          s9, a2, t6
                  nop
                  andi         s9, a1, 1605
                  slli         a3, a2, 14
                  nop
                  srli         a3, t0, 19
                  srl          ra, a1, gp
                  sltu         s11, s5, s9
                  or           a5, t0, sp
                  add          a2, a5, sp
                  addi         s4, s9, 762
                  and          a7, tp, t3
                  slt          s11, a4, s2
                  and          t2, t4, a3
                  lui          s2, 645406
                  lui          s5, 645275
                  and          a0, a0, s8
                  sra          s2, s0, s4
                  xori         a5, a0, -421
                  sltiu        s11, s4, 225
                  sra          zero, t4, t1
                  xori         s11, sp, 483
                  srai         t4, s5, 6
                  add          t0, s11, a4
                  sltiu        t0, gp, 977
                  srl          s11, s5, gp
                  slli         s7, a1, 12
                  sll          tp, s4, ra
                  sub          zero, t0, s11
                  slti         s7, s0, 37
                  lui          a2, 585274
                  sltiu        a7, s0, 1708
                  sltu         a7, s9, a6
                  xor          a3, t5, t3
                  and          t2, a7, s5
                  slti         a2, t2, 459
                  srl          t6, s11, t2
                  slt          s8, s1, s5
                  nop
                  xor          s10, t2, tp
                  nop
                  srai         ra, a4, 7
                  ori          tp, s1, -151
                  sll          s7, t0, s9
                  lui          s9, 903315
                  ori          ra, s6, 77
                  srli         s2, s10, 29
                  add          s5, s3, s4
                  auipc        t3, 601457
                  slt          t1, s9, s1
                  sltu         t4, a1, s8
                  addi         s2, s11, -1663
                  sub          gp, t6, s0
                  andi         s9, a1, 822
                  srai         s10, t3, 19
                  slli         a7, t4, 2
                  slti         s11, s1, 865
                  slti         a6, zero, -368
                  nop
                  add          s4, a5, a4
                  auipc        s6, 65423
                  sra          a2, a1, t1
                  or           s9, t0, tp
                  ori          t1, s3, 1533
                  xori         t0, sp, 1124
                  auipc        a5, 811594
                  or           gp, s4, a5
                  slti         s2, t4, -1880
                  ori          s3, tp, -274
                  srli         s4, s0, 23
                  add          t2, s4, a2
                  xor          t3, zero, s11
                  xor          t0, t0, t2
                  slli         tp, a3, 6
                  sltu         s6, s3, s5
                  lui          s7, 358781
                  slli         t2, s10, 11
                  slti         zero, s6, -970
                  ori          a3, t0, -1827
                  ori          t2, a6, 731
                  sub          zero, t4, t0
                  lui          t2, 765356
                  auipc        s2, 237917
                  addi         a6, s7, 692
                  nop
                  lui          s7, 13002
                  srl          t0, s0, sp
                  slt          s0, s8, t5
                  sltiu        s7, ra, 156
                  and          a7, a5, s2
                  nop
                  sll          a7, t4, s10
                  nop
                  auipc        tp, 561478
                  srai         a3, s1, 12
                  slti         s7, t5, -781
                  srai         s9, sp, 2
                  and          s9, a2, s0
                  sltu         s2, a6, s0
                  slli         s4, s6, 12
                  sub          s4, s5, a6
                  or           t3, s10, s0
                  slli         s1, a3, 4
                  sltiu        t4, a6, -666
                  sra          tp, ra, a6
                  auipc        s4, 348855
                  sltiu        s0, t1, 967
                  lui          t1, 568042
                  srli         s2, s1, 22
                  ori          a5, s8, -2011
                  sub          s6, a0, gp
                  ori          s4, t3, 113
                  or           a0, s0, t3
                  xori         s1, a2, 406
                  srl          s6, t3, a3
                  sltu         s2, a0, a3
                  srli         a2, sp, 20
                  srl          s3, a7, a7
                  addi         a7, s8, -362
                  auipc        a4, 698163
                  add          t4, s7, a5
                  ori          s7, s5, -117
                  or           ra, t6, a4
                  lui          t4, 328379
                  sra          t6, s4, s8
                  addi         s6, t3, 367
                  sub          s0, zero, a3
                  sra          gp, t1, t6
                  sll          a6, s1, s5
                  xor          s6, t3, s7
                  andi         a2, s6, 588
                  lui          a5, 494267
                  srai         s9, t6, 4
                  or           a4, a4, s7
                  srl          a7, s6, s5
                  nop
                  auipc        gp, 166933
                  sub          gp, s7, s3
                  slli         s4, t3, 26
                  sub          ra, s5, t0
                  and          t0, s11, a1
                  sub          s2, s4, s2
                  add          tp, a0, t4
                  slti         ra, s7, -355
                  auipc        s10, 426365
                  sltiu        a0, t5, -709
                  srli         s3, tp, 25
                  xori         a0, t3, -1755
                  sltu         t2, s1, ra
                  srai         gp, a3, 28
                  lui          t2, 549785
                  slt          s5, s2, t2
                  xor          s1, tp, t1
                  slt          a7, t1, s2
                  or           s2, t3, s1
                  slt          t3, a2, s10
                  sltiu        t0, t1, 1188
                  ori          gp, a3, 1825
                  lui          s1, 957515
                  auipc        zero, 106567
                  andi         s10, ra, 402
                  xori         s6, s6, 2006
                  sltiu        s9, a2, -740
                  sltu         zero, t5, sp
                  slli         s4, a5, 22
                  sltu         s4, a5, a0
                  lui          t3, 305511
                  slli         s5, t6, 1
                  sub          gp, s1, a2
                  sltu         zero, a6, a6
                  xori         s11, a4, 1733
                  ori          a6, s4, 821
                  xor          t6, t0, tp
                  slli         t4, gp, 5
                  lui          a6, 50244
                  srl          s11, a5, s2
                  xori         s7, t2, 305
                  ori          t4, a0, 485
                  ori          s3, a4, -997
                  and          a7, a6, a3
                  slt          s0, t1, s11
                  slti         s3, a0, 528
                  addi         t6, tp, 1916
                  slti         s8, a3, 360
                  srai         t4, a6, 3
                  or           s11, tp, a6
                  srli         s0, s5, 11
                  sra          t3, a7, t1
                  srl          ra, zero, s4
                  slt          t6, a2, s8
                  sub          a7, a4, a4
                  sltu         s3, t6, s8
                  srli         s7, s6, 29
                  srai         a3, ra, 5
                  addi         ra, s10, -306
                  add          t4, tp, gp
                  slt          a5, s2, s2
                  andi         s0, ra, -1780
                  andi         s6, a4, -1752
                  andi         zero, a0, 790
                  srai         a6, t0, 0
                  auipc        s8, 785014
                  sub          s8, s6, s0
                  sltu         a5, a4, s4
                  sltiu        s3, s10, 230
                  slt          a2, t4, s8
                  nop
                  sltu         t4, gp, t5
                  sltu         tp, t6, t5
                  sub          zero, s0, sp
                  addi         gp, s11, -1280
                  andi         s3, t4, -1662
                  srai         a5, tp, 11
                  lui          s6, 977862
                  sltiu        t0, s1, 32
                  and          s0, s2, t0
                  and          s10, s4, a1
                  addi         s1, a6, -1510
                  slt          s6, t0, ra
                  sltu         s7, a0, t1
                  sltu         zero, a2, a1
                  and          t1, a5, a7
                  slli         t1, ra, 6
                  sub          a7, t3, s6
                  srl          s11, t1, s9
                  addi         a7, s11, -1780
                  srli         s2, a0, 21
                  sltu         s3, t3, a5
                  sltiu        t4, a0, -1282
                  andi         s3, t3, 1481
                  sra          t4, s8, t6
                  add          s1, s8, a0
                  slti         s2, gp, 544
                  srli         a5, s9, 4
                  sltu         s1, s3, s5
                  or           a0, s10, s8
                  slt          s1, a2, a5
                  sll          s10, s1, a5
                  srl          a4, a2, s5
                  ori          a3, s8, -421
                  and          t0, a4, t4
                  auipc        t4, 997077
                  and          t6, a2, s9
                  srai         tp, sp, 23
                  nop
                  nop
                  andi         s3, sp, 2024
                  and          s7, t5, a2
                  srli         a0, t5, 20
                  srl          s6, t0, s0
                  lui          a6, 902677
                  sltu         s3, zero, a0
                  andi         a7, s1, -1928
                  srai         a6, a6, 8
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s9, 0x0
                  li           s7, 0x58033dff
                  li           a0, 0xa4feeac0
                  li           s4, 0x6d05e54b
                  li           s0, 0x25022860
                  li           tp, 0x80000000
                  li           t2, 0xffffffff
                  li           s5, 0x74bb01ca
                  li           t3, 0x6a12d4cf
                  addi         s5, s5, 1962
                  addi         s7, tp, -409
                  addi         s9, s4, 815
                  auipc        s9, 140157
                  auipc        t3, 912851
                  auipc        t2, 843251
                  add          s4, t3, s7
                  nop
                  sub          a0, s9, s0
                  nop
                  sub          s4, t3, s0
                  sub          tp, tp, tp
                  sub          a0, s7, t3
                  sub          t2, s5, a0
                  auipc        s9, 799850
                  sub          s4, s4, a0
                  nop
                  nop
                  auipc        s5, 771786
                  sub          a0, s5, s0
                  sub          s7, a0, a0
                  addi         s5, a0, 1804
                  add          tp, s7, tp
                  lui          t2, 584481
                  addi         s4, s4, -1503 #end riscv_int_numeric_corner_stream_8
                  sltu         s7, t6, s3
                  or           a5, s11, a1
                  slt          a6, a6, sp
                  or           s7, s2, s11
                  srli         s3, a4, 10
                  ori          a6, a7, 224
                  sra          gp, s2, a3
                  add          a6, tp, a3
                  sltu         a6, s2, s7
                  sltu         s10, s8, sp
                  lui          s3, 899688
                  xori         t1, s5, 320
                  slt          a7, s5, s11
                  sll          s3, t2, a1
                  srai         s6, a1, 26
                  or           a2, t0, s11
                  xor          a2, t2, s2
                  sltiu        a5, t3, -755
                  slli         s1, t1, 21
                  slt          a4, a0, a6
                  sll          zero, t1, ra
                  xor          t2, a0, a5
                  or           t2, s11, a5
                  addi         s2, a3, -666
                  xori         t6, t2, -1147
                  srl          t1, s5, s10
                  addi         s6, s0, 448
                  addi         s11, s5, 317
                  srai         t1, a6, 25
                  slti         a2, zero, 1444
                  sltiu        s10, tp, -1450
                  or           s4, s7, s2
                  sltu         t0, t6, a4
                  lui          zero, 23240
                  srai         s5, t6, 31
                  nop
                  slt          tp, s10, a6
                  sra          s3, a4, t5
                  slt          a5, t6, zero
                  and          t6, s9, s6
                  andi         t6, a1, 2021
                  ori          s9, s10, 166
                  slti         zero, zero, 1722
                  srli         a2, t1, 17
                  auipc        s5, 409073
                  slli         a6, t6, 10
                  or           a7, s5, t1
                  sll          a3, a4, a5
                  or           s2, zero, ra
                  andi         s10, tp, 1576
                  slt          t1, s2, a4
                  ori          s3, a2, -40
                  sra          a0, a7, tp
                  sub          a2, s9, s6
                  xori         tp, s9, 1327
                  auipc        a0, 533587
                  addi         a7, t2, 482
                  add          t0, a2, s4
                  nop
                  xor          s9, s4, a3
                  sltiu        s0, s1, -1914
                  add          s11, a3, s0
                  or           a2, s10, a6
                  or           gp, s1, tp
                  and          s10, t4, s8
                  sra          t0, a0, t2
                  or           s3, s8, s7
                  ori          t4, a7, 761
                  slli         s10, a1, 28
                  andi         tp, s2, -1489
                  srai         s7, s9, 21
                  srl          a2, t0, s10
                  sltu         s4, t5, t1
                  lui          s1, 118694
                  sll          s6, s0, a7
                  sll          tp, t1, a1
                  auipc        s3, 130670
                  slti         t1, a2, 1571
                  andi         s1, s9, 1763
                  sra          s6, s9, s10
                  sltu         a6, t5, a3
                  slti         a5, s10, -2034
                  srai         t3, s5, 15
                  andi         a4, s7, -510
                  sltiu        gp, t4, 890
                  xori         a3, tp, -1407
                  sra          a6, a7, a5
                  slt          s9, s9, t2
                  xori         gp, ra, -1717
                  nop
                  or           s0, s3, s4
                  srl          a4, t3, t5
                  andi         s9, zero, 191
                  srai         s9, gp, 27
                  slti         zero, s6, -1579
                  auipc        t4, 1013177
                  sltu         tp, a6, ra
                  auipc        s6, 868189
                  xor          t3, a3, s10
                  or           a3, a2, t3
                  addi         s2, s11, -855
                  srli         t6, gp, 14
                  sub          s11, s1, a6
                  sll          s2, s6, a0
                  auipc        a3, 810915
                  nop
                  srai         s6, sp, 0
                  ori          s3, t1, -1925
                  sltu         s6, a5, t4
                  sll          a4, zero, zero
                  sltiu        s2, t4, -1893
                  xori         t3, gp, 113
                  srl          t2, t0, gp
                  or           t2, t3, t6
                  sub          s10, t3, t3
                  sltu         s8, s0, s10
                  slli         s5, s5, 13
                  ori          a5, s4, 877
                  xori         s7, t2, -984
                  slti         t3, s1, -606
                  srl          s6, t2, tp
                  sra          t4, a4, s1
                  xori         s3, t6, 1037
                  xor          ra, s9, s7
                  sll          a4, gp, t6
                  sra          t1, a1, s9
                  slli         a4, s9, 19
                  andi         s8, t5, -528
                  auipc        a7, 552864
                  srai         a3, s11, 19
                  sll          s8, gp, s5
                  sltu         a4, a2, t2
                  auipc        s9, 328542
                  andi         a2, s5, -1298
                  nop
                  nop
                  slli         s8, tp, 7
                  srl          t4, zero, a3
                  ori          t4, t6, -652
                  sll          a3, a6, s3
                  sltiu        a2, s2, -961
                  slti         s11, s3, -1530
                  srai         s6, t3, 18
                  sltu         a3, s9, gp
                  addi         a0, s0, 427
                  addi         s10, a3, -1358
                  xori         a5, t2, 905
                  ori          s11, t3, -353
                  srai         s7, s9, 5
                  xor          s3, s1, s3
                  slli         t0, a0, 15
                  lui          t1, 239368
                  slti         t1, s0, 302
                  sltiu        a5, t3, 1509
                  and          ra, ra, a0
                  srli         gp, s6, 0
                  sub          s11, a1, a4
                  add          s10, t2, t1
                  sltiu        s6, s2, 1331
                  srai         a4, s3, 10
                  sub          s10, s9, t5
                  slt          t1, s7, s11
                  slt          s2, t0, a5
                  srai         s1, a3, 10
                  slti         t3, s1, 1457
                  srai         t4, s0, 18
                  sltu         t2, t0, t1
                  srl          s1, gp, gp
                  add          gp, s7, a1
                  xori         s5, t4, 1584
                  sltiu        s2, a7, 1654
                  and          s3, t6, a3
                  sub          a0, s5, a2
                  sub          t2, s0, s9
                  lui          t3, 455883
                  lui          a5, 815069
                  sub          s8, t5, a6
                  andi         s0, s2, 2014
                  lui          ra, 862660
                  sub          zero, zero, zero
                  ori          zero, tp, 1152
                  ori          ra, t0, -1615
                  or           a2, s2, a3
                  andi         a6, t0, -404
                  srl          s7, gp, s8
                  srl          s5, a3, sp
                  auipc        s4, 927668
                  add          s10, zero, s8
                  ori          s1, t4, -415
                  sra          a6, sp, a2
                  nop
                  slt          t2, sp, s2
                  sll          ra, s7, t2
                  sra          a3, tp, ra
                  sub          t6, zero, a2
                  add          t2, s1, s9
                  srai         a2, tp, 13
                  lui          a5, 746637
                  nop
                  and          zero, sp, t4
                  sra          t2, t0, a1
                  andi         t4, s6, 128
                  xori         t0, t5, -1688
                  or           t1, a1, s1
                  addi         t0, t6, -1283
                  xor          a5, a4, a2
                  lui          a5, 912032
                  sltu         a5, s11, s11
                  sub          t4, s4, s3
                  andi         a5, s0, -360
                  srai         s6, a2, 23
                  slti         s1, a7, -527
                  sll          t4, t2, s2
                  lui          gp, 191080
                  srai         s1, t2, 17
                  sra          s10, s3, s8
                  sltu         zero, zero, a5
                  slti         s2, ra, 488
                  slt          a6, a1, s3
                  slt          s3, zero, s7
                  and          s0, sp, s10
                  sltu         s0, s10, a7
                  andi         t0, s9, -1930
                  xori         ra, t2, -1835
                  nop
                  srai         a4, s0, 28
                  slli         zero, zero, 24
                  sltu         a3, t5, a5
                  nop
                  sltu         s1, sp, ra
                  nop
                  slti         t4, t2, 1157
                  srai         gp, a2, 12
                  auipc        a4, 347681
                  lui          a5, 949847
                  slt          t3, zero, zero
                  slt          gp, s7, t1
                  addi         a2, s3, 87
                  sltu         a2, sp, s10
                  sub          a2, a7, zero
                  and          t1, s10, s9
                  sltu         a5, sp, a6
                  or           a2, gp, t5
                  lui          s11, 627341
                  slli         a4, a6, 19
                  sra          s10, t3, t5
                  srai         s7, t3, 17
                  sltu         a0, a3, tp
                  or           s4, s8, t4
                  or           s0, zero, a5
                  xor          t4, s4, s6
                  sra          s7, t0, s8
                  sra          s10, t5, t2
                  andi         s2, a6, -926
                  srl          s11, a5, zero
                  sltiu        s2, s2, 1644
                  or           a3, s0, a6
                  slli         t0, a2, 1
                  sll          t3, zero, t1
                  xor          a4, s3, a0
                  nop
                  nop
                  lui          s8, 140952
                  or           s8, a5, t6
                  srl          a6, a3, a3
                  sltu         t0, t6, s6
                  addi         t2, a3, 986
                  slti         t2, a1, -1919
                  xor          t2, a7, zero
                  andi         s8, a5, -1617
                  nop
                  or           a7, sp, s9
                  slt          zero, a2, a4
                  sra          t1, t5, s10
                  slti         t0, a0, 759
                  xor          zero, s1, a0
                  sll          s8, tp, s3
                  slli         a0, a1, 24
                  add          s7, a2, a2
                  add          t3, a7, t3
                  sltiu        tp, t3, -149
                  srli         t2, s0, 2
                  nop
                  sll          a7, a4, a6
                  lui          a4, 988807
                  xor          t4, s9, t3
                  nop
                  slti         t4, s4, 1861
                  andi         t0, s10, 1154
                  srli         a3, t3, 21
                  sra          s0, zero, sp
                  or           t6, a6, s10
                  srl          a7, t4, t2
                  add          a2, t6, s6
                  xori         s10, s11, 1096
                  add          s5, gp, s4
                  slti         a0, t5, -799
                  nop
                  andi         s11, s10, -1641
                  srai         tp, s1, 0
                  srli         s7, s9, 24
                  slli         t2, gp, 31
                  sltiu        s1, s5, -766
                  andi         a0, t6, 1286
                  nop
                  nop
                  sra          gp, t6, gp
                  and          s11, sp, a6
                  auipc        a2, 683682
                  sltu         t6, a2, t5
                  srai         s8, s10, 22
                  srai         t3, zero, 9
                  xori         s4, t5, 249
                  sltiu        s7, s4, 552
                  auipc        s7, 26872
                  xor          s1, t3, t2
                  andi         s7, sp, 560
                  xori         a7, t3, -1286
                  slli         a7, s3, 20
                  srai         s1, s4, 5
                  auipc        a4, 811707
                  add          a0, zero, s9
                  auipc        s11, 977379
                  sra          s8, t4, a0
                  sra          s8, ra, a2
                  slli         s6, t1, 21
                  slli         zero, t3, 23
                  nop
                  slt          t3, t5, s3
                  lui          zero, 378106
                  sub          a5, s4, a6
                  add          s4, t2, t0
                  slti         gp, s4, 1374
                  or           a4, a6, s3
                  lui          s11, 558334
                  add          s8, t0, t0
                  sll          s10, s8, s9
                  slt          s6, s7, s4
                  slt          a4, s3, a2
                  lui          t3, 147212
                  andi         s9, s9, -1060
                  sra          s9, zero, s3
                  sll          t2, zero, a3
                  sltu         a2, t1, a0
                  srl          s11, t6, t6
                  srli         ra, t5, 21
                  lui          s2, 568884
                  srai         s8, gp, 0
                  addi         a7, s1, 1371
                  or           a6, s4, t6
                  slti         t3, zero, -1311
                  add          s2, a6, s3
                  srai         s9, a6, 28
                  sltiu        a0, s5, 1040
                  andi         s5, sp, -2031
                  sltiu        a2, t2, 724
                  xor          a0, a7, ra
                  nop
                  xor          s4, a6, s8
                  or           s8, s8, s8
                  sub          s9, s8, s1
                  slli         s2, t5, 24
                  lui          s5, 863789
                  srl          a5, s0, a2
                  sltiu        s0, gp, 741
                  auipc        s6, 421389
                  srai         s0, s2, 19
                  srai         s0, a2, 15
                  sltiu        s9, s5, 1606
                  or           a4, zero, tp
                  sltiu        s11, s5, -1972
                  sll          a4, s2, a2
                  srai         s3, s10, 14
                  addi         tp, a4, -365
                  auipc        s8, 478697
                  add          s10, a3, s10
                  auipc        s6, 47898
                  srai         zero, t6, 20
                  andi         s3, gp, -1042
                  nop
                  slli         a5, s6, 14
                  srl          gp, a2, s5
                  slti         s11, t3, -1552
                  lui          s3, 266434
                  andi         gp, a1, 749
                  slti         s9, sp, 1859
                  add          s10, s6, t6
                  xor          s8, s1, s9
                  lui          s10, 482694
                  or           s9, s11, sp
                  srli         s9, a1, 15
                  andi         s10, t4, -218
                  srl          a6, s5, s0
                  lui          s7, 248649
                  srl          tp, s2, t2
                  srli         zero, sp, 17
                  or           s5, s5, t0
                  slti         a7, s1, -1731
                  srai         a7, a3, 5
                  sltu         tp, s1, t5
                  srai         s10, t2, 23
                  srl          s3, s2, zero
                  srl          gp, a4, a4
                  sll          a7, t4, a7
                  or           s8, s11, t2
                  xor          s4, s9, s2
                  auipc        a4, 43356
                  sltiu        gp, ra, 696
                  nop
                  or           t6, sp, s9
                  add          s7, a1, s11
                  sltiu        s10, ra, 1132
                  ori          s11, s8, 1729
                  auipc        s5, 188954
                  srai         s1, t5, 23
                  add          gp, s1, a4
                  add          t6, t1, s10
                  slt          a6, a5, s7
                  xori         ra, sp, 1097
                  xori         t3, s5, -1496
                  sll          a7, t1, a1
                  sub          a0, a2, t0
                  sub          s3, tp, s10
                  ori          t2, tp, 1975
                  slli         t0, s2, 10
                  slli         a2, t0, 12
                  or           a0, gp, t1
                  lui          gp, 423959
                  slti         s1, a0, -1487
                  and          a2, a7, s6
                  sra          s6, s4, s1
                  srai         tp, t3, 5
                  xor          s5, s2, zero
                  sltu         gp, t6, s10
                  sltiu        s1, t1, -1365
                  slli         s5, s8, 30
                  auipc        s7, 977558
                  srl          t0, t1, s6
                  lui          a6, 173887
                  add          s5, s4, s2
                  addi         a0, s5, -1578
                  lui          s5, 925277
                  nop
                  or           a3, t2, a6
                  sub          t0, a4, s4
                  or           t3, s10, s8
                  srai         s3, t4, 29
                  sra          a4, s8, s5
                  auipc        s8, 571254
                  xor          t0, s3, s7
                  sltu         s3, t0, s0
                  nop
                  srai         a7, a4, 31
                  srl          t0, a0, s3
                  sra          tp, s3, s5
                  addi         s0, s10, 1555
                  srli         tp, s5, 29
                  or           t2, s1, zero
                  add          t2, t2, gp
                  slt          a6, s1, t0
                  srli         t1, s10, 24
                  auipc        a7, 567391
                  or           t2, a7, a2
                  sub          s0, a4, s7
                  or           t4, a2, tp
                  srl          t4, sp, s2
                  auipc        t3, 691152
                  auipc        a6, 724212
                  sltu         s3, ra, s1
                  and          t0, a7, a4
                  srl          gp, a2, s10
                  slti         t2, gp, 71
                  srai         a4, gp, 30
                  sltiu        s7, ra, 278
                  lui          s11, 247232
                  slt          a0, a7, s8
                  xor          s6, s5, a5
                  addi         t2, t0, -354
                  slt          s10, tp, a6
                  auipc        a6, 841523
                  and          s11, a7, a5
                  srl          ra, zero, s2
                  srl          a2, s3, s11
                  slli         s10, gp, 22
                  slli         s1, ra, 30
                  lui          ra, 317264
                  lui          s6, 789552
                  and          s11, a2, s2
                  xor          tp, gp, t4
                  auipc        s2, 79614
                  srl          tp, a3, s8
                  add          s10, ra, tp
                  and          s11, s3, t6
                  slt          s2, ra, s0
                  xor          s5, a1, s3
                  srl          s5, t4, a0
                  sltiu        zero, t5, 1036
                  nop
                  srai         t6, t3, 12
                  slli         tp, s5, 20
                  srl          s3, zero, t1
                  lui          t2, 484590
                  slti         a6, a4, 1037
                  andi         s7, t4, 1452
                  xor          s11, s8, s1
                  slt          s8, a6, a7
                  srli         s6, a7, 17
                  slti         s0, gp, -375
                  slli         a5, t0, 26
                  sra          s3, s1, s0
                  or           ra, s10, a0
                  srl          s8, a0, t0
                  sltiu        s11, a4, 691
                  sra          a7, sp, a6
                  add          zero, s1, a2
                  lui          a0, 900771
                  nop
                  srl          t2, s9, ra
                  and          s9, t3, t4
                  srli         zero, s10, 0
                  addi         s3, s7, 1416
                  sltu         a3, t2, gp
                  xori         s7, a5, -1927
                  and          a4, zero, zero
                  srl          s2, s5, a4
                  add          s6, s1, s8
                  srai         t3, a2, 11
                  srli         a5, a4, 19
                  sra          a6, s10, s11
                  lui          zero, 905166
                  andi         tp, a7, 1712
                  xori         gp, gp, -1377
                  sra          s10, a4, a6
                  srl          zero, a0, a1
                  sltiu        s1, a2, 891
                  xori         s9, t2, 1507
                  add          t4, sp, a5
                  srli         s9, a7, 25
                  xor          a7, s1, s5
                  sub          s1, gp, s8
                  or           s2, s1, s11
                  sra          zero, a3, a6
                  andi         a6, tp, -1706
                  nop
                  sltiu        t1, tp, -485
                  sra          t4, t1, a4
                  slli         a2, s8, 12
                  xori         tp, s4, 1724
                  sltiu        s10, t3, -572
                  and          t6, s10, zero
                  auipc        s10, 985019
                  slti         a2, s6, 438
                  sll          t2, a4, zero
                  andi         a0, a3, 584
                  srl          a0, ra, a3
                  sll          zero, t1, a4
                  ori          s7, s5, 1000
                  sra          s0, s4, t1
                  slti         a3, a6, 1533
                  ori          zero, t4, 1032
                  and          t1, t5, ra
                  srli         t2, tp, 9
                  lui          a3, 906217
                  lui          a6, 695164
                  sll          gp, gp, s8
                  and          s2, a1, a4
                  add          tp, tp, s4
                  add          s9, s1, a2
                  or           gp, tp, a3
                  sll          zero, tp, s4
                  addi         a2, a2, 1276
                  slti         gp, ra, -1702
                  sll          s6, t2, t1
                  sub          tp, t5, t1
                  srai         a6, s7, 13
                  and          s11, s4, s3
                  nop
                  srl          s4, a0, t1
                  nop
                  sra          s4, a7, a2
                  addi         a6, t6, -669
                  sltu         s4, tp, a0
                  andi         s0, s4, 56
                  add          t4, s3, a6
                  nop
                  sltiu        s5, a0, 1709
                  and          a4, s9, t4
                  slt          zero, t5, tp
                  addi         s1, s11, 1234
                  sltiu        s11, a1, -1806
                  sub          s3, t5, s1
                  sltiu        t2, s9, 502
                  sra          ra, t2, t1
                  sub          tp, gp, s11
                  xori         a6, s11, 1121
                  srl          a2, s5, s2
                  lui          a4, 288374
                  sub          a7, s6, s11
                  srli         s5, a3, 11
                  andi         t6, s7, -266
                  slt          tp, t5, a2
                  or           t2, a7, sp
                  xor          t1, t3, s0
                  nop
                  auipc        t4, 486576
                  and          s9, s5, t0
                  auipc        t0, 463653
                  lui          s11, 669240
                  lui          a4, 771568
                  add          s7, t5, t0
                  xor          t6, t1, s4
                  srai         zero, gp, 23
                  addi         s6, zero, 222
                  slti         s10, a2, 1677
                  xori         a4, s11, -1035
                  srai         t2, s10, 13
                  sltu         s8, s9, s2
                  sub          a2, a0, s9
                  addi         t0, t2, 357
                  ori          a0, s0, 867
                  sltiu        s6, t6, 650
                  sub          s6, s2, a6
                  or           s7, t0, s1
                  sra          zero, s3, s11
                  lui          t1, 993406
                  slt          t0, a7, sp
                  xor          s4, t5, s7
                  slti         t4, s7, -1128
                  ori          s0, t4, 1734
                  slli         a2, gp, 29
                  sll          s4, s2, t6
                  srli         t6, t4, 2
                  sra          s7, s11, s8
                  sltu         t6, t1, t3
                  slli         s0, a0, 14
                  sltu         t0, s11, s5
                  xor          s11, t2, t4
                  srli         s0, s10, 9
                  srl          tp, s5, a7
                  auipc        s0, 375511
                  xori         s7, t4, 48
                  xor          t1, s8, a5
                  sll          t2, t0, s9
                  sub          s5, t2, s7
                  lui          s5, 506801
                  sub          t2, s2, s7
                  sub          t3, a0, s1
                  sll          a4, s4, tp
                  nop
                  slt          zero, sp, s10
                  srai         a5, s6, 18
                  srli         s10, s9, 20
                  lui          a6, 894239
                  slli         t2, t1, 2
                  addi         t3, sp, -1218
                  nop
                  andi         a3, t0, -866
                  xor          t4, zero, sp
                  nop
                  srai         tp, t5, 8
                  sra          a6, t2, s2
                  nop
                  srai         a4, a6, 1
                  xori         ra, tp, -403
                  sll          a3, t3, a7
                  nop
                  slt          a6, a5, s3
                  sub          s8, ra, a4
                  lui          zero, 729852
                  sltu         a0, sp, s5
                  xor          s2, t3, s6
                  ori          zero, gp, -153
                  srai         s5, a7, 26
                  slti         ra, s4, 881
                  slli         a6, gp, 17
                  lui          a5, 1014144
                  xori         s2, a2, -250
                  sub          s7, sp, t2
                  sltu         s10, s5, s11
                  add          s7, s0, gp
                  auipc        s10, 528858
                  sltiu        s7, sp, 1701
                  sll          s9, s5, gp
                  sub          s11, s2, s1
                  and          tp, t3, zero
                  ori          a4, s3, -702
                  sra          a2, s1, t4
                  or           zero, t1, s5
                  andi         t4, s0, 147
                  srli         t3, s3, 13
                  xori         a6, s7, 1570
                  auipc        s0, 824633
                  auipc        s0, 1046166
                  sra          s6, t2, t1
                  sll          t6, sp, tp
                  slli         a5, ra, 11
                  srl          s3, s10, s4
                  sra          s6, tp, s8
                  ori          s10, s11, -394
                  ori          s0, t0, 1678
                  srli         ra, s8, 30
                  auipc        t1, 187859
                  slti         s8, t5, 1107
                  nop
                  sltu         gp, t5, s4
                  andi         a4, a4, 1455
                  sltu         s10, a6, a1
                  sub          a3, a0, s4
                  srai         ra, s8, 7
                  slti         a2, a1, 1912
                  srli         s8, s2, 0
                  srai         a4, s11, 29
                  addi         s6, s0, 1668
                  srai         s1, a5, 12
                  srai         s0, zero, 30
                  srai         t2, s2, 28
                  nop
                  and          zero, s7, s5
                  srl          a4, ra, s1
                  sltiu        a0, gp, 201
                  xor          s7, t6, s0
                  and          a7, ra, t5
                  addi         a6, s1, -1986
                  andi         s7, a7, 1739
                  slti         zero, s0, 1697
                  xori         s3, a2, 1483
                  addi         a3, a4, 145
                  ori          s9, s6, -66
                  addi         gp, t3, 1323
                  srli         t1, sp, 27
                  ori          t2, s4, -1526
                  srai         t0, a7, 5
                  or           s4, t3, t3
                  slt          t2, t2, t4
                  addi         s3, s6, 311
                  srli         s10, s6, 17
                  and          s6, s5, a1
                  and          s2, s10, zero
                  add          s3, ra, a4
                  sltu         gp, s7, sp
                  xor          s10, gp, zero
                  add          s3, t1, t1
                  andi         t6, s5, -1032
                  srl          a6, zero, s9
                  xor          a5, s11, s9
                  lui          t6, 367919
                  slt          s11, s3, s7
                  auipc        s3, 5276
                  xori         a3, s0, 1750
                  lui          s0, 205676
                  nop
                  sub          zero, a5, t6
                  sltu         s3, tp, zero
                  sra          t4, gp, sp
                  slli         s7, zero, 23
                  sll          s2, s8, s2
                  slt          a2, s9, a2
                  lui          a5, 227032
                  slli         s11, tp, 11
                  sub          s4, s6, s5
                  lui          s6, 198567
                  slli         ra, s1, 30
                  addi         tp, s2, 1725
                  addi         s9, s0, -961
                  and          s7, s9, tp
                  add          s0, t6, a1
                  addi         a6, t5, -1162
                  sub          s1, t1, s11
                  or           a3, a7, a3
                  xor          t1, s7, s7
                  xor          t3, s11, s8
                  and          s9, t5, t1
                  sltu         t3, a5, a4
                  or           t2, s6, a6
                  addi         s4, a5, -1437
                  sltu         s11, t2, s5
                  srl          s5, a2, a0
                  andi         a4, a2, -1938
                  addi         s8, s0, -643
                  srli         a5, a3, 19
                  slli         a4, a1, 21
                  srli         a5, a1, 19
                  ori          s8, sp, 952
                  slti         a7, t4, 1222
                  sub          a7, t0, a1
                  lui          a4, 628291
                  sltu         s9, a5, t4
                  add          gp, zero, s5
                  srli         s7, a7, 23
                  sltu         s0, s7, s7
                  sltiu        s6, s11, -116
                  addi         s3, gp, 954
                  lui          t1, 847042
                  srl          a6, a6, t0
                  sltu         a7, s2, t1
                  lui          a0, 780733
                  and          t4, sp, zero
                  lui          t1, 956454
                  slt          a0, s1, s2
                  slti         a3, t0, -624
                  srai         s4, t0, 11
                  sub          a5, zero, s4
                  sll          t4, s9, s11
                  addi         gp, tp, 121
                  xori         s7, a4, -1174
                  auipc        a0, 121118
                  sltu         s1, gp, a6
                  sll          t1, s3, t6
                  auipc        a6, 428300
                  andi         s8, a2, 340
                  srli         s1, t1, 3
                  nop
                  slt          gp, a1, t5
                  add          a3, zero, t4
                  andi         s7, t5, 818
                  andi         t6, sp, -1289
                  slli         s4, a7, 7
                  ori          a4, tp, -558
                  lui          a0, 162171
                  xori         s6, gp, 811
                  sltu         s7, t2, s5
                  srli         s10, a0, 17
                  sll          s2, tp, t1
                  sltu         t4, t2, s2
                  sra          s1, s8, tp
                  srl          zero, s9, t1
                  sltu         a6, s1, t3
                  slt          t4, a2, t2
                  andi         s0, a6, -1941
                  sltu         t3, tp, t3
                  nop
                  lui          t2, 87562
                  sub          s7, t2, s9
                  sra          s4, s2, s9
                  slli         s11, s3, 18
                  or           s7, a5, zero
                  sll          gp, gp, s4
                  xor          tp, t3, a7
                  add          s9, a0, a1
                  lui          t4, 393402
                  srli         s2, s6, 20
                  srli         s1, t2, 30
                  xor          t6, s9, a6
                  ori          s9, s5, 590
                  and          s5, s4, s5
                  or           s3, gp, t2
                  add          s4, t0, a6
                  sltiu        s9, a4, 1882
                  or           t4, t2, s5
                  srl          t1, a0, s7
                  add          a3, s10, a2
                  slti         a7, a3, 308
                  lui          s9, 308665
                  srli         zero, t3, 3
                  lui          a6, 891982
                  slt          s10, a2, t6
                  nop
                  sll          s9, a6, s2
                  sll          t4, gp, s3
                  srai         s0, s7, 9
                  or           s2, gp, s11
                  sra          t6, s6, s10
                  lui          s2, 643598
                  srai         t2, a3, 25
                  andi         s5, ra, -1785
                  lui          t1, 357763
                  and          s3, a4, a2
                  sltu         s9, s5, s3
                  sltu         s5, t2, a1
                  sltiu        zero, s3, 230
                  add          s10, t4, s10
                  xor          s4, s7, zero
                  xori         t2, s10, 566
                  slt          ra, t4, tp
                  slti         a0, a3, -1003
                  or           t0, s5, tp
                  lui          s11, 769504
                  auipc        gp, 391308
                  sltu         tp, a0, s3
                  ori          s5, ra, 1360
                  ori          a0, t0, -1124
                  xor          t6, s4, tp
                  auipc        t3, 647470
                  addi         a4, s3, 114
                  xor          s6, t4, a4
                  add          s7, t3, a5
                  slti         t2, s0, -534
                  auipc        s7, 95263
                  addi         t0, t2, 245
                  andi         s3, s11, -1412
                  addi         s4, t6, -1002
                  srl          a2, a1, gp
                  or           s8, s5, ra
                  sltu         tp, sp, a0
                  sub          a0, a5, t1
                  or           s4, a4, s4
                  ori          s10, a2, 1869
                  srl          a0, a4, s7
                  and          t2, a4, s8
                  srai         a2, s11, 30
                  add          s9, a4, s0
                  auipc        t2, 683742
                  xor          a0, s3, s9
                  sltu         s1, a3, a3
                  nop
                  slli         a6, a5, 31
                  xor          t1, s1, ra
                  ori          t0, a2, 11
                  sll          ra, a1, s3
                  sub          s9, t0, a2
                  slli         tp, s6, 27
                  slt          t6, t5, s0
                  slti         s6, t3, -1464
                  andi         s10, t2, 725
                  sll          a6, tp, a1
                  srai         s11, gp, 24
                  xor          a4, ra, a4
                  sltu         ra, t2, s6
                  sub          s6, s11, s10
                  srli         ra, s8, 31
                  sltu         ra, zero, t4
                  slti         s8, a7, -778
                  nop
                  srl          s9, a5, t6
                  sra          s2, s7, t2
                  srai         s5, s9, 27
                  srl          t1, a3, t2
                  and          s6, s4, a3
                  ori          s9, t6, 483
                  xori         a3, a3, 177
                  slt          t0, tp, zero
                  auipc        a4, 899709
                  or           s2, t3, t1
                  and          t1, t4, s0
                  srl          ra, s10, s9
                  srl          a3, t1, a1
                  auipc        t2, 573865
                  slt          a4, t0, t5
                  srli         t4, a6, 3
                  sub          t2, a7, a2
                  slli         a3, zero, 0
                  srli         s6, a3, 22
                  addi         a4, a0, -1377
                  lui          t4, 458222
                  xori         s6, s6, -1096
                  srli         tp, s10, 14
                  and          tp, s5, s5
                  srai         a3, tp, 9
                  slli         s6, a1, 16
                  add          s4, t2, tp
                  sra          zero, s5, s6
                  lui          t6, 552603
                  lui          t0, 504549
                  srli         s9, s2, 22
                  slli         s2, a3, 27
                  addi         t6, a0, 11
                  andi         gp, s8, 684
                  sll          t4, a3, t6
                  xor          s7, a7, a1
                  xor          a7, a3, t4
                  addi         s6, a7, 522
                  andi         t6, t2, -833
                  sltu         a4, s4, t6
                  andi         tp, zero, 1274
                  sltiu        s7, s3, -1717
                  addi         s1, a2, -935
                  ori          s6, s9, -1120
                  srli         t0, gp, 7
                  srl          a5, ra, a1
                  sub          s3, t2, zero
                  nop
                  auipc        t6, 588154
                  sltu         tp, s6, sp
                  addi         a2, t4, 653
                  ori          s2, t2, 1825
                  sra          s9, t1, tp
                  slt          a5, sp, t4
                  auipc        s11, 549183
                  srai         s8, ra, 5
                  nop
                  srai         tp, t0, 10
                  and          zero, a0, s2
                  or           gp, zero, s6
                  sra          gp, t5, a0
                  sra          t2, s4, t6
                  slt          s1, a2, zero
                  srli         s8, t2, 19
                  andi         s7, a5, -330
                  sltu         a0, s4, t5
                  andi         t3, t3, -1819
                  addi         s11, tp, -431
                  nop
                  sub          a4, sp, a4
                  andi         s8, s10, 1661
                  andi         s5, s9, 593
                  auipc        s3, 586438
                  srli         tp, a2, 13
                  or           s8, t5, s4
                  sltu         a6, ra, s2
                  andi         s10, a4, -276
                  srai         t0, s7, 2
                  slti         a0, s1, -351
                  andi         s9, s11, 964
                  srl          t2, s2, s0
                  sll          tp, s0, sp
                  slli         t1, a3, 7
                  xor          t6, t4, a3
                  auipc        a7, 335887
                  srli         a6, s8, 7
                  sltiu        t2, s2, -1398
                  sra          s11, sp, t4
                  sltu         s7, ra, t2
                  srli         zero, s3, 21
                  nop
                  auipc        tp, 527138
                  srli         gp, s6, 23
                  sra          s0, a1, s9
                  srai         gp, s11, 30
                  nop
                  xor          gp, s2, a3
                  lui          s11, 194518
                  auipc        s3, 521883
                  sltiu        s2, zero, 650
                  and          s4, t3, s5
                  sra          s6, a6, tp
                  auipc        a3, 814529
                  srl          s8, t5, t5
                  andi         s9, tp, 1461
                  xori         s10, s2, 481
                  sra          ra, t5, tp
                  lui          a4, 970137
                  slti         gp, s4, 1856
                  sub          a7, a3, s5
                  slli         a0, a0, 31
                  slt          a4, s6, t5
                  and          gp, a0, s6
                  xori         a2, s11, -941
                  add          t3, t1, t4
                  xor          t0, s3, t0
                  auipc        t3, 485340
                  ori          s4, s6, -700
                  andi         t3, tp, 501
                  slti         t1, a4, 1351
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s9, 0xffffffff
                  li           s7, 0x80000000
                  li           a0, 0x0
                  li           a3, 0xffffffff
                  li           t0, 0xe6a461d4
                  li           a2, 0x0
                  li           s8, 0x195b630b
                  li           a5, 0x20550031
                  li           a4, 0x80000000
                  sub          a0, s7, s8
                  nop
                  sub          a4, a2, a0
                  lui          a4, 488269
                  add          a4, t0, a5
                  lui          s9, 208178
                  auipc        s9, 1019115
                  lui          t0, 711343
                  sub          a2, t0, s9
                  lui          s9, 323438
                  add          a3, s7, s9
                  sub          s9, s8, s9
                  nop
                  add          t0, a2, a0
                  addi         s7, s7, -134
                  auipc        a5, 43325
                  add          a0, s8, a5
                  add          s9, t0, a3
                  nop
                  sub          a0, a5, t0
                  lui          a3, 851131
                  sub          a5, s7, a2
                  nop
                  sub          a4, s9, a0
                  sub          s8, a3, s3
                  sub          t0, s7, s9
                  sub          a3, a3, t0
                  auipc        s7, 725589 #end riscv_int_numeric_corner_stream_10
                  srai         s5, s4, 2
                  slti         a4, zero, -156
                  ori          a2, a4, 1523
                  addi         a5, s3, 631
                  and          s4, t6, s4
                  add          s3, t4, tp
                  slti         s10, a7, 457
                  and          tp, s10, a5
                  nop
                  addi         s1, s0, -687
                  xori         s4, tp, -1489
                  sra          s10, t5, a3
                  slt          tp, t6, t1
                  xor          a3, s7, s2
                  sra          s2, gp, ra
                  slt          s8, s8, s2
                  sltu         t4, s1, a6
                  nop
                  xor          gp, s4, zero
                  or           ra, t1, t3
                  slti         s5, s7, -1358
                  sltiu        s2, s7, -427
                  and          t6, s5, a1
                  slti         a4, s4, 1335
                  sra          s4, ra, s9
                  auipc        a5, 418971
                  add          s6, a3, s4
                  lui          s6, 78090
                  sra          s4, t1, tp
                  or           s2, t0, t1
                  addi         t3, t2, 317
                  addi         s6, ra, 1071
                  and          ra, t6, a5
                  nop
                  ori          a0, t5, 1311
                  srl          a3, gp, s1
                  sra          s5, t4, t4
                  add          s0, a7, a1
                  xori         t2, a2, 247
                  sltiu        t4, a1, -1520
                  srl          a6, a0, s7
                  slt          s11, t4, a3
                  slti         s1, t6, -176
                  andi         s11, t2, 1522
                  and          a7, s6, s5
                  slti         t6, gp, -1027
                  sltiu        s0, ra, -963
                  xori         s4, s5, 37
                  slt          a6, s6, gp
                  or           t0, t1, a6
                  nop
                  xori         t2, t4, -1229
                  srli         s7, a4, 17
                  ori          a6, s7, 747
                  srl          s10, a3, t2
                  nop
                  add          a0, zero, s6
                  slti         ra, s2, -1532
                  xori         a7, ra, 1386
                  ori          t4, t5, 1527
                  ori          tp, zero, -191
                  sltu         s4, tp, s7
                  slt          s3, zero, gp
                  sra          s6, t1, s5
                  srli         a7, s8, 10
                  addi         t1, s7, -1561
                  ori          ra, a6, -726
                  addi         s0, a2, 1683
                  sub          s4, s4, a6
                  sub          t0, ra, zero
                  xori         s7, a3, -1159
                  li           a4, 0xb6d3bfe3 #start riscv_int_numeric_corner_stream_0
                  li           a0, 0x0
                  li           t6, 0x168e24a7
                  li           a5, 0xda124ed
                  li           s10, 0x8f6cef75
                  li           t1, 0x80000000
                  li           s8, 0x0
                  li           s9, 0x80000000
                  li           a7, 0x1b109962
                  li           s1, 0x80000000
                  sub          a5, a7, s9
                  sub          t1, t6, a5
                  addi         t6, s9, -226
                  lui          t1, 603454
                  auipc        a0, 172113
                  addi         t1, t6, -1113
                  lui          a5, 673087
                  add          s10, a4, a4
                  add          t1, s1, s10
                  auipc        s9, 145072
                  sub          s10, s9, s9
                  add          s9, s10, s1
                  addi         t1, s8, -1888
                  addi         a4, s8, 1308
                  sub          s9, a7, s8
                  addi         s1, a5, 2021
                  addi         a7, s1, -44
                  lui          s8, 391243
                  auipc        s9, 98811
                  lui          a7, 677958
                  nop
                  auipc        a0, 106091
                  sub          s1, s10, a7
                  sub          s9, s1, s9
                  lui          s9, 963399 #end riscv_int_numeric_corner_stream_0
                  sltiu        t6, a0, 865
                  srli         t4, s10, 31
                  andi         t2, s9, 31
                  srl          s3, a3, s1
                  slt          gp, t1, a7
                  sra          a5, s6, a0
                  srl          s9, s4, t0
                  srai         s1, s0, 15
                  xori         s3, t6, -1486
                  slt          s0, gp, t1
                  sll          s10, t3, s11
                  auipc        t4, 533000
                  auipc        t2, 727053
                  addi         a6, s8, -287
                  slt          t4, t4, ra
                  slti         a7, a4, -1234
                  and          s3, gp, sp
                  slti         zero, t1, 904
                  andi         a4, s6, -1519
                  sltu         a3, t0, s10
                  ori          a5, a5, -1791
                  andi         s0, a5, 947
                  auipc        t0, 93814
                  sll          t0, t1, s9
                  addi         s9, s6, -211
                  addi         t3, a2, -493
                  xor          t3, s5, a5
                  slli         t1, tp, 4
                  slt          s11, s10, s6
                  sra          s5, a6, t2
                  xor          a0, s6, a3
                  sra          a5, a4, sp
                  slt          s11, s7, s8
                  slt          s7, a5, gp
                  add          s6, zero, s10
                  srl          a5, a2, a3
                  srl          ra, t3, a3
                  sub          t3, s7, s10
                  slti         a3, t5, -1423
                  sltu         t6, s6, sp
                  lui          a3, 920835
                  or           s2, s7, s10
                  slti         t3, gp, -1010
                  slli         t3, a4, 2
                  srl          a3, t5, s1
                  sub          a6, s6, s2
                  xori         t6, s10, -443
                  addi         s8, zero, 713
                  sltu         a6, s5, s2
                  slt          zero, a2, a6
                  lui          s9, 417705
                  srai         zero, s3, 9
                  and          gp, s8, t4
                  slti         a6, a7, -680
                  auipc        s10, 34617
                  xori         s8, t4, 599
                  addi         a2, s10, 571
                  sra          s10, s9, t5
                  andi         s7, s3, 1352
                  auipc        t1, 369301
                  or           s2, gp, ra
                  addi         t4, a4, -1960
                  xor          t2, s6, t6
                  slti         s10, t0, -1142
                  xori         zero, sp, 574
                  add          a7, s4, a0
                  srli         a4, s8, 20
                  add          ra, a7, s11
                  add          tp, a7, a3
                  nop
                  and          s2, s11, sp
                  srai         a3, t2, 23
                  auipc        s0, 778979
                  auipc        a6, 372238
                  sub          s3, s8, a4
                  xor          a4, s5, t1
                  andi         a2, t2, 974
                  slti         t6, s8, -765
                  addi         tp, zero, -959
                  srl          s10, s6, t6
                  sll          a6, s4, s8
                  or           s7, a5, t1
                  slt          zero, s2, a1
                  lui          s0, 741666
                  srli         s7, zero, 11
                  slt          s3, s4, s5
                  sltiu        s9, t2, -1364
                  sra          s10, a7, a2
                  slli         t6, s1, 23
                  add          gp, tp, s3
                  sll          a0, a2, a4
                  srli         ra, s9, 21
                  add          ra, tp, s9
                  sra          a7, t5, t6
                  sll          s1, s9, a0
                  srli         t2, s11, 27
                  xor          gp, s8, s4
                  addi         a4, s2, -1604
                  andi         s10, s4, -549
                  lui          s2, 913667
                  lui          s6, 73090
                  slt          a2, t0, a6
                  srl          s10, zero, s7
                  sltiu        s11, s11, -1183
                  or           s6, s5, a0
                  sub          a5, t6, s2
                  srli         ra, s3, 5
                  nop
                  srl          a0, s7, s7
                  slti         a5, s10, 1861
                  xor          a4, a0, a6
                  ori          t3, s11, -93
                  andi         a0, a7, 1076
                  or           t2, t4, a6
                  srai         a5, s7, 19
                  sll          s2, t1, tp
                  ori          s5, s6, 1794
                  sra          s8, t4, t3
                  andi         s11, t2, 1304
                  srl          s4, s3, s0
                  slti         t6, gp, -1904
                  or           a0, s6, t3
                  and          s0, s2, t5
                  srai         ra, t1, 14
                  lui          a2, 961668
                  addi         gp, s8, -508
                  xor          s10, s9, s6
                  andi         a4, sp, -1676
                  srli         s7, s2, 9
                  sltiu        t3, s3, 1106
                  auipc        s8, 724822
                  sub          s11, a4, s11
                  xor          s0, a0, t2
                  and          a7, s6, s5
                  auipc        a4, 996643
                  slti         zero, zero, -319
                  sra          s5, a1, t5
                  add          s8, t3, a0
                  srai         gp, tp, 29
                  add          zero, a4, gp
                  addi         a6, s3, -824
                  andi         s4, t2, 368
                  lui          a4, 143936
                  sub          s5, t2, s7
                  add          s4, tp, a2
                  add          s1, zero, ra
                  sub          a6, s11, s6
                  sra          t2, s1, ra
                  auipc        s9, 197183
                  sra          gp, s6, a0
                  sra          t4, t4, s7
                  ori          a3, a4, -994
                  srli         a6, s1, 1
                  slli         t6, s11, 10
                  sra          t1, a2, tp
                  add          s5, s8, s11
                  slli         t1, s11, 16
                  sll          t2, t4, a2
                  xor          tp, t3, s9
                  slt          zero, t5, gp
                  slt          s5, a4, s7
                  slt          t3, s11, tp
                  slti         s8, a6, 970
                  ori          a4, s7, 1273
                  andi         tp, a6, 590
                  srli         t2, s1, 13
                  srl          s5, s9, t5
                  slli         a6, a5, 15
                  sltiu        s11, zero, -826
                  and          s8, a6, a6
                  slli         s4, s2, 3
                  srai         s7, s11, 1
                  slti         gp, s6, -989
                  addi         s10, sp, 1814
                  slti         s2, s11, -481
                  sll          s8, t2, s2
                  slti         zero, a7, -1336
                  andi         s8, t3, -353
                  sltiu        t2, t5, 1504
                  sra          gp, s5, t0
                  sra          tp, s11, a4
                  ori          zero, a0, -1703
                  sltiu        s4, a5, 705
                  slli         a7, a5, 0
                  andi         ra, s11, -1436
                  sltiu        t1, s0, -1446
                  slt          s4, a7, a4
                  nop
                  andi         a4, tp, 326
                  slli         s6, s11, 17
                  add          s1, s11, zero
                  addi         s9, ra, 884
                  ori          s11, s2, 1343
                  slli         t2, a7, 3
                  auipc        s7, 156556
                  srli         ra, t0, 17
                  slt          s4, a5, s10
                  sltiu        s4, s10, 1532
                  xori         tp, a4, 938
                  xor          s0, s7, t4
                  slli         s10, s0, 12
                  slt          t6, t4, s8
                  sltu         zero, s10, a5
                  srli         a6, s9, 16
                  lui          t4, 335605
                  sub          s6, s4, s5
                  add          s8, t1, t5
                  lui          ra, 51353
                  lui          a5, 391170
                  sra          zero, s7, t0
                  sll          t0, a7, t4
                  sra          a5, t0, gp
                  sltu         a6, s2, a5
                  sub          s10, sp, s11
                  ori          t3, s11, 22
                  ori          gp, ra, -121
                  auipc        s6, 58277
                  and          tp, zero, s0
                  srli         a0, s1, 9
                  slli         zero, t3, 9
                  lui          s3, 987575
                  slti         t4, a1, 1806
                  add          t6, s8, a5
                  sll          s11, t5, s6
                  addi         s9, s0, 869
                  ori          s2, s10, -1359
                  lui          a0, 501142
                  sltiu        s9, t3, -426
                  nop
                  srai         a0, s5, 0
                  andi         s9, s6, 206
                  ori          a4, a0, 27
                  auipc        s2, 12273
                  add          s9, t5, a5
                  nop
                  slti         s6, a7, -356
                  srli         s11, s6, 17
                  sltiu        a0, a4, 1604
                  sub          gp, tp, a3
                  srai         s9, s11, 13
                  slt          t2, t1, s3
                  sll          ra, a0, s5
                  sltiu        gp, sp, -1649
                  sll          a0, s9, s3
                  slti         t3, t6, -1216
                  sltiu        tp, s7, -1080
                  sll          a3, s6, a0
                  auipc        a5, 765388
                  srl          t2, zero, s8
                  addi         s7, s11, -1428
                  add          a5, s8, zero
                  nop
                  ori          s7, t4, 1844
                  ori          s2, s0, 989
                  andi         s10, gp, -1205
                  slt          a3, a0, t5
                  add          s6, t5, a1
                  slti         gp, a0, 1350
                  xori         t0, t2, 901
                  nop
                  sub          s2, sp, s9
                  sub          a5, zero, t2
                  andi         s8, a0, 316
                  slt          s10, tp, s7
                  slt          t3, a2, a5
                  xori         s9, t2, 597
                  sll          s8, sp, s5
                  srl          s4, t4, sp
                  srli         s10, s9, 16
                  sll          s2, gp, t1
                  addi         a0, zero, -242
                  and          s5, t4, s2
                  slli         a3, s2, 22
                  xori         s1, t6, -797
                  sll          t3, a7, a6
                  srai         s5, s6, 3
                  andi         t6, gp, -1058
                  nop
                  slli         a5, t2, 3
                  ori          t6, a5, -1568
                  addi         s10, s9, 208
                  sll          tp, t1, gp
                  lui          s4, 714708
                  sra          s9, s8, s6
                  srai         s10, s2, 14
                  srl          t6, s5, s2
                  addi         a0, s7, -1707
                  slt          ra, a2, ra
                  sll          s10, s5, ra
                  sra          a4, t3, s10
                  and          t2, s5, zero
                  slt          t0, s9, s1
                  srli         zero, s9, 7
                  nop
                  sll          s11, gp, a5
                  sll          s2, a6, t6
                  lui          a7, 29424
                  sltiu        a4, t5, -231
                  add          a5, s4, s1
                  sltiu        t3, s11, -423
                  srl          a6, t2, sp
                  srli         a2, s6, 6
                  or           t4, s9, a5
                  slli         s0, t2, 24
                  xori         a3, tp, -1969
                  sll          a3, s1, s0
                  sltiu        s11, t1, 1859
                  slt          ra, s10, t0
                  and          s10, a7, a2
                  sra          zero, a4, s10
                  srai         s9, a1, 4
                  sra          s10, s1, t3
                  sub          s11, a6, ra
                  ori          ra, a5, -1307
                  sra          s4, t6, a0
                  xori         t4, s4, -27
                  sltiu        t2, s1, -669
                  srl          a4, a1, tp
                  xori         s10, s9, -893
                  slt          t2, s6, s6
                  sltiu        t3, a7, -1124
                  xori         s9, t3, -764
                  and          s10, s0, ra
                  srli         a6, a7, 12
                  sll          a4, t0, a3
                  slt          s0, zero, t3
                  lui          s3, 72053
                  sltiu        a7, s1, 167
                  sra          t4, s0, s10
                  sub          s0, s2, s10
                  srli         a6, t5, 0
                  or           a4, a2, a6
                  nop
                  sltiu        zero, sp, 769
                  or           s11, s8, s6
                  sub          t4, t6, s7
                  auipc        t6, 64029
                  ori          s6, t4, 1099
                  add          s0, tp, a1
                  slt          s2, s6, s2
                  sltu         s6, s6, a0
                  sltu         t4, ra, a1
                  and          a3, t6, s11
                  sltiu        zero, a6, -1106
                  slt          s2, t6, a5
                  nop
                  sltu         s11, sp, s11
                  xori         s8, s5, -1431
                  or           a4, s0, a7
                  or           t1, s11, s0
                  sra          t2, t2, t3
                  ori          s8, t3, 1824
                  andi         s10, a1, -807
                  srli         s11, s1, 27
                  addi         s7, s10, 554
                  sra          a2, t0, s5
                  sub          a4, gp, s4
                  sub          s1, s9, ra
                  sra          t4, t4, a5
                  srai         t0, t2, 19
                  and          s1, a6, a3
                  srai         a3, s6, 16
                  xor          t0, ra, t5
                  slli         ra, t5, 15
                  sub          t1, a0, gp
                  srl          a7, a0, a1
                  ori          s2, a5, -489
                  lui          s7, 744136
                  add          a0, a1, s4
                  slli         s8, s1, 5
                  srai         a3, t1, 9
                  lui          tp, 474106
                  slli         s4, t3, 31
                  add          a7, t5, s9
                  ori          zero, a5, -1951
                  xori         a4, s9, -1839
                  addi         s6, s11, -998
                  sltu         s6, s5, s4
                  sub          s5, a0, zero
                  ori          zero, a0, 1241
                  nop
                  addi         t0, a3, 1678
                  xor          s10, a6, t0
                  sltu         s11, s9, s4
                  nop
                  or           a6, t5, a7
                  or           a2, t3, s1
                  ori          t0, s0, 1187
                  sltu         s5, s11, t6
                  add          s9, s8, tp
                  xor          ra, a5, a7
                  xori         t1, s11, 1141
                  slt          s4, t5, t2
                  lui          t0, 624178
                  srl          s7, s6, s3
                  srai         s9, a7, 2
                  xor          a4, s0, a5
                  and          s7, a1, sp
                  slli         s6, tp, 1
                  ori          a3, s5, -1915
                  sltu         s11, t1, t4
                  slt          s11, s10, s7
                  slt          s10, zero, t4
                  addi         s9, t2, -768
                  lui          t1, 77337
                  andi         t3, s10, -1359
                  slt          ra, a0, t4
                  andi         s0, s8, 180
                  or           a7, a4, s3
                  xor          gp, t1, s1
                  ori          tp, gp, -1345
                  srl          s8, s10, t5
                  srl          a3, a7, sp
                  slli         s6, s2, 9
                  slli         a7, s8, 18
                  sltu         s2, s2, t3
                  sltu         a0, s7, ra
                  lui          a0, 761231
                  xor          a3, t4, t0
                  srai         s9, a6, 8
                  xori         a6, s4, 1333
                  xori         s5, t4, 393
                  addi         s8, zero, -333
                  srl          ra, t0, t6
                  srli         t1, s4, 31
                  xori         s7, s5, 1742
                  slti         a2, t4, -1578
                  srl          gp, a6, a6
                  nop
                  slti         a4, ra, -359
                  add          t6, gp, s4
                  ori          t0, s10, 1771
                  sra          s7, a2, t0
                  slli         s3, s11, 21
                  andi         a0, s4, -1974
                  addi         a3, t4, -67
                  and          t2, a4, s9
                  xori         t2, gp, -575
                  add          s6, s0, t2
                  or           t4, a4, s7
                  lui          s3, 23776
                  sltiu        s5, tp, -1467
                  srli         s6, zero, 5
                  srl          tp, t0, s2
                  srai         a5, sp, 28
                  addi         s3, s7, -1681
                  slli         s0, a1, 17
                  slt          t1, tp, s5
                  srai         s5, gp, 24
                  sltu         s2, s11, t4
                  auipc        a5, 580313
                  slli         a0, s7, 22
                  or           s10, s3, sp
                  addi         s9, a1, -1942
                  add          s5, a4, s1
                  slti         a6, t3, -628
                  ori          s8, a0, -1775
                  andi         a6, a7, 1314
                  slti         t1, t5, 1764
                  xor          t6, t3, s9
                  xor          ra, t2, tp
                  srl          s10, s11, ra
                  andi         a2, t3, 372
                  srl          t6, a4, a2
                  ori          tp, s4, -1363
                  nop
                  srai         s2, a3, 22
                  slti         gp, t6, 1778
                  addi         gp, t5, 637
                  sltu         s9, a1, a1
                  nop
                  andi         s11, a7, 1131
                  lui          s10, 797519
                  lui          a3, 14132
                  lui          s1, 269308
                  ori          t2, t6, -883
                  xor          zero, s0, s4
                  sltu         s11, s1, s9
                  or           s0, s5, s11
                  addi         s9, a5, 358
                  sra          s9, s7, gp
                  andi         t6, a3, -1660
                  slti         s8, s7, -493
                  slti         t0, t1, 1704
                  sub          a2, s6, t5
                  srl          a3, s7, a2
                  sra          s1, s11, a0
                  add          s3, t2, s1
                  slti         s10, s11, -1567
                  ori          t6, t0, -1642
                  srli         a7, a7, 8
                  sltiu        t2, s9, -1344
                  and          t1, a1, ra
                  addi         s6, sp, -1981
                  andi         ra, ra, 815
                  ori          tp, tp, 605
                  xori         ra, t6, -962
                  sltu         s0, t5, s1
                  xor          s5, s11, a5
                  nop
                  sll          a3, a0, s8
                  srl          a7, s5, s2
                  lui          a0, 974031
                  srl          s7, a2, s0
                  addi         gp, sp, 662
                  addi         tp, a4, 1393
                  sltiu        s4, gp, 964
                  sltu         t6, sp, t6
                  andi         s10, a1, 1011
                  add          zero, s10, t4
                  ori          a0, gp, -1606
                  sub          s1, gp, tp
                  srl          a0, sp, a2
                  sub          tp, a5, s5
                  sltiu        zero, t2, -160
                  xor          zero, sp, s5
                  xor          t4, t1, s9
                  srl          t4, s9, t2
                  xor          a6, zero, a3
                  sub          a5, ra, a0
                  srai         t3, s8, 17
                  slt          a3, t4, s10
                  or           s1, a2, a7
                  slt          a7, t2, t1
                  sltiu        s4, s10, -1401
                  srai         a5, a3, 25
                  addi         s11, a4, -1248
                  ori          a7, a3, 979
                  and          a2, a5, s5
                  lui          s7, 482705
                  nop
                  andi         s2, t2, 943
                  add          s5, t1, s2
                  xori         s8, t6, -1831
                  srl          t2, a2, s3
                  sra          s6, ra, s1
                  add          s5, ra, a2
                  srai         ra, s2, 13
                  lui          a4, 184984
                  xori         tp, s9, 968
                  srl          a3, a5, ra
                  sltu         s8, s8, a0
                  xori         t2, a4, 1053
                  slt          s3, t2, t6
                  sra          s6, t2, s1
                  andi         t6, s5, 816
                  and          t1, s9, t4
                  lui          s3, 443674
                  sra          ra, t0, a0
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           s7, 0x80000000
                  li           t4, 0x0
                  li           s11, 0x0
                  li           s4, 0x80000000
                  li           t2, 0x0
                  li           a3, 0x41bf42bc
                  li           t6, 0x80000000
                  li           a6, 0xffffffff
                  li           tp, 0xffffffff
                  sub          t4, tp, tp
                  add          tp, t4, s7
                  add          a6, s7, a6
                  sub          tp, tp, t4
                  add          s7, a6, a3
                  nop
                  auipc        a6, 653802
                  auipc        a6, 257807
                  nop
                  sub          s7, a3, t2
                  sub          s11, tp, s7
                  lui          s11, 228668
                  addi         s7, s11, 575
                  add          t6, t2, s11
                  addi         a3, t3, 529
                  addi         s11, s4, -1676 #end riscv_int_numeric_corner_stream_13
                  sltu         t4, s9, s1
                  sll          a4, t5, t5
                  addi         s3, s1, 1328
                  xori         s4, t0, -1563
                  xori         a7, a3, -176
                  xor          s1, zero, s4
                  auipc        s3, 585395
                  or           s3, s2, sp
                  andi         a7, s4, -681
                  addi         s3, s10, 851
                  nop
                  addi         s5, a4, -573
                  srl          gp, a2, s11
                  auipc        gp, 319488
                  srli         a6, t2, 29
                  sltiu        t3, a2, -1223
                  sll          a0, a7, sp
                  sltu         t6, s4, s1
                  and          a5, s5, tp
                  auipc        s5, 1160
                  slt          tp, t2, s3
                  slli         ra, a7, 21
                  xori         s9, t3, -2018
                  slti         t3, s10, 397
                  or           s8, gp, tp
                  xori         a4, s5, -690
                  sltu         s6, s0, zero
                  xor          t0, t4, sp
                  slli         s11, zero, 2
                  sub          ra, t1, s6
                  sra          t4, a5, zero
                  and          s8, a3, a6
                  sra          a5, t2, gp
                  auipc        s5, 198619
                  xori         s1, s4, 193
                  and          s0, tp, a4
                  lui          t1, 360882
                  addi         s6, a3, 1858
                  slt          s8, t3, a2
                  sltiu        s1, s2, 1812
                  sltu         a5, a7, a5
                  add          s2, t0, ra
                  ori          s1, s2, 1054
                  sltiu        s5, t5, 1380
                  sltu         zero, gp, t4
                  addi         t0, tp, -597
                  sra          s8, s2, tp
                  srli         s0, a0, 3
                  srli         gp, s4, 2
                  srai         s6, a1, 22
                  srl          s3, s4, a4
                  ori          t3, a2, 972
                  sra          a0, s4, s6
                  sra          t6, s11, sp
                  srl          s1, s0, gp
                  srli         s5, s10, 13
                  add          t0, a5, tp
                  add          tp, t1, gp
                  srl          s4, s5, a5
                  auipc        t3, 439809
                  addi         s5, t3, 168
                  srai         gp, t4, 8
                  and          t6, a7, a0
                  sltu         s7, s11, t0
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s6, 0x4f6bc627
                  li           a5, 0x0
                  li           a2, 0x0
                  li           s0, 0x0
                  li           a3, 0x0
                  li           s8, 0x0
                  li           a6, 0x4e17988d
                  li           t1, 0x0
                  li           s2, 0xffffffff
                  auipc        a6, 396238
                  nop
                  lui          s0, 46654
                  nop
                  lui          a3, 307669
                  addi         s10, s2, 1626
                  auipc        s6, 102041
                  add          s6, a3, s2
                  lui          s0, 572214
                  nop
                  add          s10, s0, s0
                  nop
                  nop
                  auipc        s10, 139477
                  lui          s6, 844308
                  sub          s8, s8, a3
                  auipc        a2, 111091
                  add          a2, t1, s10
                  add          s6, s10, a3
                  auipc        a6, 578485
                  lui          s0, 348254
                  nop #end riscv_int_numeric_corner_stream_11
                  andi         s8, a7, 315
                  sub          s4, a5, s1
                  slti         s3, a7, 1643
                  sltiu        t1, a1, -1198
                  add          t0, a3, s8
                  ori          t2, a0, -1210
                  sub          s9, t3, s8
                  sltu         s7, s11, a4
                  add          a6, s9, s0
                  sra          t2, a2, t0
                  nop
                  srai         s10, a3, 30
                  sra          a4, s7, s2
                  and          a5, s5, a6
                  and          a7, a6, a0
                  sltu         s4, s0, a0
                  sra          a2, s3, s3
                  xor          s10, t6, gp
                  srl          s5, s2, s8
                  srai         a0, a1, 27
                  slt          a2, ra, s2
                  xor          tp, sp, a2
                  addi         s8, s10, 1545
                  andi         s4, t1, 664
                  auipc        a5, 869968
                  and          gp, s0, a4
                  and          t4, t6, t2
                  sub          s11, s4, s11
                  slti         a0, s7, -1473
                  sub          s11, gp, tp
                  nop
                  sltu         a6, gp, s4
                  sra          t4, s9, a4
                  srl          a6, t2, s6
                  sub          s5, t0, tp
                  srli         t2, a5, 25
                  or           s4, a1, t6
                  sll          a5, t1, a7
                  ori          s8, tp, 1225
                  sltiu        s2, s0, -171
                  slli         s5, s1, 4
                  sltiu        t2, t5, 445
                  srli         a5, t4, 7
                  lui          a2, 160530
                  srli         s1, a7, 3
                  or           a4, t1, s0
                  lui          s8, 235114
                  ori          s9, t0, -1672
                  srl          s5, s5, a3
                  sll          s7, a1, zero
                  addi         s3, s0, 825
                  slt          t1, zero, t5
                  srai         gp, gp, 11
                  ori          t2, t6, 556
                  sltu         tp, zero, s4
                  srli         ra, t2, 10
                  xori         a5, t5, -1124
                  sub          t1, t4, s10
                  or           s11, zero, t1
                  sltu         t2, s5, t6
                  slti         s5, a4, -272
                  and          s7, a2, t0
                  srai         a7, t1, 2
                  slti         a7, s0, -1672
                  sltu         a7, s10, s5
                  add          s0, a1, t2
                  addi         s1, tp, 1778
                  or           t1, a6, s9
                  xor          s4, a0, a2
                  auipc        s4, 208577
                  srli         s0, s5, 22
                  lui          s0, 605504
                  add          s7, sp, s11
                  andi         a0, s7, 1107
                  add          t1, a0, ra
                  slti         s8, s10, -338
                  srli         s2, a7, 20
                  or           t3, s9, gp
                  slti         t6, ra, -1484
                  sub          a4, a5, s10
                  or           gp, s10, sp
                  ori          t6, sp, -1222
                  srli         s8, s7, 14
                  and          s4, a3, sp
                  andi         a7, s9, -399
                  sltiu        ra, s6, -1774
                  lui          s9, 664590
                  or           a7, t0, zero
                  srl          s5, t1, a4
                  auipc        t0, 233194
                  slti         a6, sp, -1482
                  srl          s7, s3, s6
                  xor          s7, gp, s1
                  andi         a0, a1, 65
                  nop
                  lui          a2, 27201
                  xori         gp, a5, -1306
                  xor          s0, s7, a0
                  lui          s0, 926852
                  lui          gp, 19212
                  auipc        s2, 392085
                  sltiu        s11, s3, 1369
                  add          a0, ra, t0
                  addi         s1, t3, 629
                  slti         s1, a0, 1827
                  srl          ra, gp, a7
                  ori          t0, t3, -1474
                  sltu         s11, t5, s0
                  xori         t0, gp, -1531
                  lui          s2, 555988
                  sub          s1, s11, s1
                  nop
                  or           a4, a6, tp
                  srli         tp, s6, 29
                  sltu         s0, s1, t3
                  addi         s9, s0, -861
                  srl          a2, s2, a3
                  slti         a2, a7, -1988
                  ori          s2, s10, -663
                  xor          s4, s8, gp
                  slti         s7, t2, -1205
                  slt          s7, tp, a1
                  auipc        zero, 355701
                  slli         t2, s3, 6
                  xor          tp, s0, s0
                  sltu         t0, a2, s6
                  srl          s4, s8, s2
                  srl          t6, t5, a6
                  xor          t0, s10, s6
                  sra          t3, t2, a1
                  xori         s8, s7, -1819
                  and          t1, s0, s10
                  andi         s0, s0, -660
                  srl          t4, s8, a1
                  srl          t4, a1, s8
                  sub          s8, a2, t3
                  sltu         t1, s3, s8
                  ori          s5, s10, 1520
                  sll          a7, sp, a6
                  and          s7, t6, s9
                  lui          a5, 542753
                  nop
                  nop
                  sra          s11, s9, t1
                  srl          s8, a1, tp
                  add          t0, t3, sp
                  sll          t1, zero, a6
                  and          s6, a4, gp
                  add          t3, s5, s6
                  sltiu        a4, s11, 172
                  sll          s9, sp, s9
                  add          s11, t3, s8
                  xori         zero, s10, -1715
                  auipc        t4, 970262
                  sll          t0, s9, a0
                  srl          s7, a1, s3
                  add          zero, zero, s5
                  and          s2, s2, t3
                  srl          a2, s4, a1
                  srl          s8, s3, s0
                  sra          t2, s3, tp
                  sll          s9, sp, t3
                  add          s9, s0, a7
                  srai         t3, s7, 6
                  srai         a4, s10, 19
                  slti         s7, tp, -1446
                  lui          s11, 709745
                  lui          s1, 223453
                  sub          a5, s0, s5
                  srai         s11, zero, 9
                  slt          t0, s9, zero
                  auipc        s9, 906381
                  slli         s11, s2, 12
                  nop
                  slt          s10, s2, a5
                  sltu         a2, s8, tp
                  xor          t3, t6, t4
                  xori         t3, s2, -892
                  xor          a7, sp, t2
                  sra          a2, t3, s2
                  ori          t1, t6, -599
                  srli         s2, t6, 11
                  sub          s7, s1, t0
                  srai         s11, a0, 4
                  slti         s4, t5, 1210
                  slli         s9, tp, 11
                  add          a6, s4, a1
                  or           s11, t5, zero
                  sltu         zero, s8, a4
                  sub          t4, t0, s4
                  sra          s11, a1, a3
                  andi         tp, a7, 645
                  slli         s2, a7, 8
                  sub          a3, s3, sp
                  auipc        zero, 936683
                  xor          a0, a5, a4
                  xor          a7, t2, s7
                  add          gp, ra, t2
                  slli         tp, a6, 16
                  xor          s10, zero, t1
                  and          s2, s6, a2
                  sltu         t2, a4, a4
                  sra          a5, t1, s11
                  andi         t6, zero, 678
                  srli         t3, t6, 31
                  add          s11, t3, sp
                  add          s4, t5, s9
                  sll          a4, t5, s0
                  sltiu        s10, t6, -220
                  srli         s5, a6, 8
                  srli         s2, t2, 24
                  addi         a7, s1, 83
                  andi         a6, s4, -1694
                  srli         s9, t1, 18
                  andi         s1, a6, 1632
                  xori         a3, t6, -1148
                  auipc        a4, 788494
                  sll          s9, s4, s10
                  srli         a4, t4, 9
                  sltu         gp, s1, a2
                  sltu         t4, ra, t3
                  andi         s11, t6, -873
                  sll          s3, a0, s5
                  slti         t1, t0, -1634
                  slt          s9, s2, a2
                  srai         ra, a5, 10
                  sll          s6, s9, s8
                  slt          ra, a0, s3
                  srli         s1, t4, 22
                  nop
                  srai         ra, ra, 17
                  srli         a2, tp, 8
                  srli         zero, a6, 20
                  ori          s11, sp, -1388
                  srli         a5, s1, 2
                  slli         s1, s5, 27
                  auipc        t1, 516265
                  slt          t6, zero, t5
                  and          a0, t5, t6
                  sra          s0, s0, a1
                  auipc        t2, 689772
                  slti         s8, s11, 1958
                  lui          s7, 874498
                  add          s8, a6, zero
                  xori         a2, t1, -1908
                  slt          s3, s3, tp
                  srli         s8, t4, 11
                  addi         s5, a0, -1746
                  addi         s5, s8, 1626
                  lui          zero, 1039196
                  lui          a6, 931457
                  srl          gp, a1, a2
                  srl          t6, t3, a3
                  sltu         gp, a3, t3
                  ori          gp, s8, 600
                  andi         s5, s2, 480
                  sub          t2, s3, s11
                  sll          t0, tp, gp
                  xori         s10, tp, -1864
                  xor          t2, t1, a2
                  sltu         t0, s4, s1
                  auipc        ra, 751195
                  sll          s0, s5, s4
                  nop
                  andi         s2, s8, -1241
                  slt          s3, a1, sp
                  xor          a6, t2, t0
                  and          s5, s5, a0
                  sltu         gp, s8, s3
                  srli         s4, s1, 16
                  srai         t1, a6, 27
                  ori          ra, gp, 1611
                  nop
                  auipc        s3, 347619
                  and          s8, s3, s4
                  auipc        ra, 849391
                  srli         s9, t4, 0
                  addi         a4, a4, 1705
                  or           t1, s4, sp
                  slt          s5, s2, tp
                  sub          zero, s3, t0
                  srai         s11, zero, 7
                  srli         t0, t5, 13
                  slli         zero, a7, 15
                  sra          ra, s3, t2
                  srl          tp, a3, a5
                  sltu         s7, t5, t3
                  srl          t2, s9, t4
                  or           a7, a1, t0
                  sltiu        t3, tp, -1502
                  slti         t3, gp, 1353
                  nop
                  sltiu        a7, t2, -192
                  slli         t4, tp, 29
                  sltiu        gp, a0, -1144
                  add          a6, sp, t4
                  sra          tp, s0, t4
                  auipc        s11, 862771
                  and          a7, gp, s9
                  addi         s2, s8, -1452
                  ori          t3, a0, 789
                  addi         s11, t3, 1810
                  sra          s8, gp, s7
                  srli         s4, a1, 12
                  andi         s2, s9, 1493
                  sub          s10, s3, t2
                  nop
                  and          s5, a7, ra
                  auipc        t3, 366547
                  auipc        a5, 1027290
                  andi         zero, a2, 71
                  slti         a2, s4, -176
                  xori         a2, s2, -1426
                  lui          s4, 926761
                  auipc        zero, 978862
                  srl          t6, gp, tp
                  andi         t2, ra, -712
                  lui          ra, 818499
                  xor          a4, s1, t5
                  add          s0, t6, s2
                  xori         s4, t1, 679
                  sltiu        s3, a2, -1686
                  add          ra, tp, s10
                  sltu         t6, s2, s1
                  srl          a6, t2, t5
                  lui          ra, 106150
                  slt          a4, a7, a0
                  xor          s11, s2, s11
                  sltu         s6, s3, a4
                  and          s9, s8, a4
                  nop
                  xor          s7, a0, sp
                  or           s2, t2, t3
                  or           s0, a6, s2
                  sltu         t2, s4, a4
                  sll          zero, s9, sp
                  xori         a7, t5, 1714
                  nop
                  xor          a0, t2, a4
                  srai         a2, s4, 18
                  slt          s1, t0, s11
                  sll          t2, t1, s5
                  andi         t3, s7, -503
                  sub          t4, s6, s5
                  lui          t2, 471453
                  sub          s9, a7, a7
                  xor          a4, s2, a6
                  andi         t0, gp, -1040
                  add          t4, gp, t0
                  xori         t1, tp, 171
                  andi         a0, a1, -945
                  addi         s5, s4, 52
                  addi         s3, a4, 867
                  auipc        s11, 512186
                  sra          s5, t2, tp
                  srl          gp, t5, a1
                  and          s4, a4, a3
                  lui          s3, 499987
                  srli         t1, a3, 7
                  sub          a0, s1, tp
                  sub          t0, a1, zero
                  srai         s6, t0, 3
                  add          s4, t2, s7
                  xor          s7, ra, s6
                  nop
                  slt          t6, s6, t2
                  sub          gp, a3, s8
                  slti         s4, s9, 1369
                  slt          a0, a3, s0
                  sltu         s7, s5, s5
                  xori         t0, sp, -1580
                  srli         a4, s11, 8
                  sub          s5, s4, s2
                  slt          a2, a1, t5
                  srl          s5, s0, s4
                  srl          t4, s4, t1
                  srl          a6, a3, sp
                  ori          a4, s1, -332
                  srl          s10, t4, t4
                  sra          s9, s5, t4
                  sub          s2, a5, s11
                  xori         s5, a2, 976
                  slt          a3, a6, a5
                  ori          a6, s0, -1839
                  nop
                  addi         t0, s9, 1049
                  and          s11, a7, s7
                  sltiu        s4, tp, 1046
                  srli         gp, a4, 23
                  sll          a4, a6, s0
                  auipc        t3, 966279
                  addi         t0, s11, 766
                  xor          s4, sp, s10
                  nop
                  auipc        a7, 170818
                  sub          t2, s4, a1
                  slti         gp, s8, 407
                  sltiu        t6, a7, 381
                  sll          s10, a7, a2
                  sll          t6, t1, t3
                  srl          s10, t0, a6
                  ori          t4, a7, -1383
                  sltiu        a7, t5, 928
                  add          tp, a6, s8
                  sltu         t2, s5, t3
                  sub          s6, s3, a3
                  srl          t2, t4, t5
                  sra          s3, a7, t0
                  slt          t3, t2, s4
                  sll          tp, s7, t1
                  slti         s6, a3, -665
                  sra          a5, t1, a7
                  srai         a6, a6, 3
                  sll          s0, a0, t5
                  nop
                  slti         t2, zero, 1747
                  srli         s8, s9, 5
                  srli         zero, s11, 14
                  ori          s10, s7, 760
                  nop
                  addi         s9, s3, 1349
                  sll          t6, zero, sp
                  lui          s0, 67682
                  slt          t0, a4, s3
                  ori          s11, s11, 1577
                  xori         t3, s4, 965
                  srli         s11, s0, 2
                  slli         t3, s5, 2
                  and          s1, a7, t4
                  sltu         ra, sp, t1
                  srai         s2, a6, 21
                  auipc        t2, 171888
                  and          s4, a5, s0
                  and          s11, ra, a3
                  xori         tp, s9, -1333
                  srl          s3, s7, a1
                  srai         s6, s5, 12
                  sll          gp, ra, s10
                  srli         a3, zero, 10
                  xor          gp, t5, s8
                  addi         t3, s0, 1957
                  sra          gp, t3, s0
                  xor          s6, s8, t0
                  auipc        s8, 10156
                  srli         s0, a3, 10
                  sub          s6, t4, a1
                  auipc        a5, 91223
                  andi         s2, s6, 1377
                  xor          zero, s6, a3
                  ori          s6, t0, 1892
                  sra          t0, s9, a0
                  and          zero, t4, zero
                  srl          t4, t5, s10
                  xori         s0, t6, -982
                  xor          s3, a3, t6
                  xor          s10, t1, a0
                  addi         s4, a2, -873
                  srl          s1, s5, a7
                  srli         t1, s4, 6
                  slli         t0, s6, 21
                  sra          a5, t5, t2
                  addi         ra, t4, 1885
                  auipc        tp, 596868
                  srl          t6, zero, s6
                  or           ra, s10, s4
                  slti         a2, a7, -1696
                  xori         t6, s0, -1674
                  xori         a0, ra, 953
                  srai         a3, a5, 2
                  srl          a0, s2, tp
                  slt          s10, t4, t0
                  sub          a5, s1, a5
                  srai         s3, t5, 13
                  sub          t0, s2, ra
                  sltiu        s4, s6, 1723
                  sra          s8, a1, ra
                  andi         t6, t6, -968
                  and          s9, s0, t4
                  lui          t1, 753343
                  nop
                  srai         a5, s11, 30
                  slt          s4, s4, t5
                  addi         a6, t5, 1020
                  add          s10, a1, t6
                  ori          t0, s6, -400
                  and          t4, a7, t1
                  slti         s3, s8, -926
                  slli         t6, t4, 21
                  xor          s10, t0, t0
                  slt          t6, a6, t1
                  sltiu        s4, s9, 358
                  and          s2, s11, s10
                  sltiu        t0, s2, 1575
                  slli         s9, t2, 19
                  srai         s7, s10, 7
                  slli         s1, s4, 21
                  nop
                  add          zero, s10, t4
                  xor          s6, t1, ra
                  lui          a0, 72490
                  slti         s2, s1, -211
                  sll          s11, a7, t3
                  addi         a7, a3, 311
                  slli         a0, a7, 11
                  or           gp, s5, a1
                  ori          t6, s5, -1335
                  slt          t0, s8, a3
                  and          s4, a7, t6
                  andi         ra, s4, -339
                  sra          s5, t3, s1
                  srl          s2, t5, s9
                  or           a0, s10, a5
                  sltiu        a6, t6, -475
                  or           s8, s8, s9
                  lui          a5, 3157
                  srl          a2, s4, s9
                  sub          a6, ra, a1
                  slli         t1, s4, 22
                  andi         a2, a2, 966
                  slli         a0, s11, 31
                  sra          tp, t1, s1
                  sll          t6, tp, s11
                  ori          t1, s2, -1571
                  or           ra, zero, s2
                  and          s9, t0, a3
                  srl          a7, t5, s6
                  srl          tp, s4, a3
                  or           s5, s1, zero
                  auipc        t6, 189383
                  addi         t4, t2, 1120
                  addi         t1, a6, 663
                  sll          t4, a7, s3
                  sll          s0, s11, s2
                  xori         s10, a6, -1857
                  srl          tp, s10, s2
                  xor          s8, a1, s4
                  ori          s7, t2, 557
                  xor          s3, zero, t5
                  or           s9, s10, s3
                  sltu         s3, t4, a3
                  sltu         gp, zero, s3
                  sra          a6, tp, s4
                  slt          s0, s0, a6
                  sra          t2, s1, t4
                  srli         a0, t5, 13
                  sll          s5, s0, t5
                  slti         s10, a0, -984
                  auipc        t2, 642914
                  sra          a3, s11, a0
                  lui          s10, 850006
                  auipc        s1, 779998
                  auipc        zero, 661608
                  sltiu        s3, t3, 1498
                  andi         s4, s5, 1744
                  sub          s11, s7, gp
                  ori          tp, ra, 1757
                  auipc        s4, 927216
                  slt          t3, a1, a7
                  srli         s0, a2, 3
                  slli         a0, tp, 15
                  sub          a4, a5, gp
                  and          a2, s10, s6
                  slti         s10, a7, 1821
                  andi         t0, s6, 460
                  or           s7, s9, gp
                  or           tp, s10, s8
                  srli         s11, zero, 4
                  slli         s8, a6, 29
                  xori         s1, zero, -732
                  sll          s8, t0, s11
                  slti         s6, a1, 1201
                  andi         t0, ra, 782
                  add          t3, s0, a4
                  sra          s11, a3, t0
                  or           t1, a6, s5
                  nop
                  srai         s6, gp, 12
                  auipc        tp, 1014943
                  srai         t3, s4, 24
                  lui          t1, 895969
                  nop
                  and          s9, ra, s4
                  sll          a4, t2, s11
                  addi         s0, t4, 1925
                  ori          t3, s0, -493
                  slli         a0, s0, 1
                  nop
                  srli         t6, t6, 31
                  andi         t1, s6, -1753
                  lui          s8, 709303
                  and          a5, s5, t2
                  andi         s8, s2, 98
                  srli         s8, s3, 31
                  sltu         s0, s11, s11
                  nop
                  srl          s3, t2, s4
                  slli         a3, tp, 12
                  srai         s10, a2, 7
                  srai         t6, zero, 18
                  sltiu        t4, gp, -651
                  lui          s5, 238967
                  sltu         ra, s2, s5
                  sll          t0, t3, s1
                  sll          s9, s11, zero
                  srai         t1, t0, 21
                  xor          a2, s9, a6
                  xori         tp, t4, 149
                  slt          a6, s9, a6
                  slti         a0, s10, -1920
                  srai         a6, t5, 27
                  srli         a3, s1, 1
                  srli         a2, t1, 3
                  and          s3, t2, t3
                  xor          s1, s10, s1
                  addi         s7, t4, 1837
                  ori          a3, a3, 10
                  slt          a6, s3, s9
                  auipc        gp, 343186
                  xor          s9, t1, a4
                  srli         a0, zero, 14
                  sll          a7, s0, s10
                  srli         s10, t4, 7
                  slti         gp, t4, 253
                  nop
                  sub          a2, s1, t0
                  sltiu        a0, t4, -1275
                  sra          s7, a4, a1
                  lui          t4, 345168
                  xor          s0, zero, zero
                  sltiu        a4, a7, 1390
                  nop
                  srai         a3, s2, 23
                  srl          s7, t0, a4
                  sub          t3, a0, a1
                  slti         t3, s0, 1096
                  ori          s3, a3, -1482
                  or           s6, s7, s2
                  sltu         a2, s10, zero
                  auipc        a2, 628996
                  and          t6, a6, ra
                  slt          ra, a3, gp
                  slli         s0, a2, 7
                  sltu         s9, t4, sp
                  ori          s3, zero, 1196
                  lui          t2, 376951
                  nop
                  addi         t0, a0, 1676
                  slti         s0, ra, -1775
                  slli         a4, zero, 8
                  slt          a2, a6, gp
                  and          s3, gp, s4
                  andi         a6, t3, 1068
                  add          zero, a1, s4
                  slli         gp, a6, 9
                  or           s7, t4, a7
                  srai         t2, a1, 21
                  sltiu        s2, t6, 1064
                  sltiu        a4, a0, 1763
                  lui          s10, 610963
                  srai         a3, t2, 22
                  nop
                  slli         gp, a1, 17
                  add          a2, t1, ra
                  sub          s7, s3, s8
                  add          t1, s0, t2
                  addi         a6, a6, -1276
                  sltu         s11, s7, s5
                  or           t6, s6, t4
                  ori          s2, t0, 671
                  sll          gp, gp, s11
                  and          a7, a7, tp
                  auipc        s1, 928948
                  slli         t0, s3, 14
                  add          t6, s6, t1
                  or           t0, t4, sp
                  or           s1, s6, t5
                  auipc        a3, 497583
                  sltu         a0, s0, s4
                  srli         t4, s11, 8
                  slt          t4, t5, tp
                  srai         t1, t6, 22
                  andi         t0, s10, -1214
                  sra          a7, a0, s1
                  andi         zero, s11, 1861
                  srl          a3, t1, ra
                  nop
                  srl          t1, a6, a6
                  add          s7, s0, s8
                  add          s6, a2, t6
                  add          s9, s4, a6
                  addi         s4, a4, -1291
                  slti         s2, a7, -1347
                  and          a5, s9, a1
                  srli         a6, s6, 22
                  and          s8, gp, s11
                  srai         a5, s9, 16
                  ori          s5, a2, 1002
                  srl          a2, s5, s10
                  srai         t3, s11, 9
                  or           a7, a1, ra
                  andi         s9, s11, 1693
                  srl          s5, sp, t6
                  sll          s9, a1, t2
                  slli         a3, t3, 7
                  sll          s5, zero, s11
                  slt          gp, a0, s8
                  xori         a6, s3, -2015
                  and          t4, s4, a3
                  sll          s8, s11, t4
                  sltiu        t2, s10, -248
                  lui          ra, 712371
                  add          s2, sp, s5
                  addi         s1, a5, -1791
                  sltu         a4, t5, s7
                  and          s6, a1, t6
                  srl          s8, t6, s5
                  nop
                  srli         t0, t6, 13
                  srai         s7, zero, 16
                  slti         a0, a3, 585
                  andi         s5, ra, -421
                  ori          zero, s2, 899
                  and          s0, gp, sp
                  addi         s9, s10, 1119
                  ori          t6, s6, -1730
                  sll          zero, s10, t6
                  slt          s4, t6, t2
                  xor          a6, s2, s3
                  sll          a3, gp, t0
                  srai         t3, a4, 23
                  sltiu        a6, a4, 849
                  ori          t3, s9, 375
                  sltu         s2, a4, a3
                  slti         a6, t6, 206
                  srai         s0, a5, 27
                  sltu         tp, a4, a6
                  add          a3, s4, s10
                  srl          t4, a4, a6
                  sra          t1, t2, a4
                  or           t0, tp, s9
                  sub          t0, gp, tp
                  sll          s7, s11, a6
                  srl          tp, s9, a7
                  lui          s5, 842013
                  sub          s6, s0, sp
                  slt          tp, a6, s8
                  slti         s11, a0, -323
                  andi         a5, a7, 77
                  nop
                  add          a5, s1, s8
                  slt          s0, a1, a3
                  sll          t0, ra, t0
                  and          a2, t5, s2
                  srai         s0, a7, 1
                  andi         s5, s5, -1025
                  srli         a5, s6, 17
                  srli         a3, t5, 12
                  sra          s6, t2, s5
                  slli         t4, s3, 21
                  auipc        a6, 707984
                  andi         zero, s9, 182
                  sub          t6, t4, a2
                  add          t6, a6, a7
                  sltu         s9, s0, t3
                  srai         gp, a0, 5
                  addi         s1, a1, 1361
                  and          s8, a7, t2
                  xor          s11, s9, gp
                  xori         tp, a4, -1451
                  lui          s4, 693817
                  lui          s6, 7822
                  slti         s6, s9, 330
                  slt          s7, s9, s5
                  and          s2, a2, s9
                  and          a4, a4, a3
                  andi         s10, gp, -1747
                  xori         tp, t3, -2048
                  andi         s5, sp, -581
                  srl          t4, s9, zero
                  lui          s6, 53157
                  lui          s7, 247078
                  srli         gp, t6, 15
                  sub          t3, s6, s10
                  xori         a3, sp, -1866
                  slti         gp, a5, -1504
                  auipc        t2, 962968
                  or           s1, s9, s1
                  auipc        a2, 151131
                  auipc        a7, 401892
                  slt          s2, a2, s4
                  auipc        s0, 178265
                  lui          tp, 48552
                  nop
                  srai         a0, s11, 26
                  and          t1, a0, s9
                  sltiu        t1, s7, 891
                  or           a3, t2, a4
                  slt          t6, s6, ra
                  slti         a4, t6, 1344
                  andi         s4, s10, 2011
                  slli         t1, t1, 22
                  ori          s8, a0, -1417
                  andi         s4, a7, -232
                  add          tp, a2, sp
                  slti         tp, t1, -1512
                  sub          s6, t6, tp
                  nop
                  auipc        zero, 394957
                  sltu         a0, s1, s0
                  andi         s0, t4, -76
                  or           a5, s5, t3
                  srli         s0, a3, 13
                  and          s4, t0, a3
                  lui          t1, 401282
                  sra          a3, a4, a0
                  ori          zero, a2, -1688
                  srai         s6, s2, 28
                  ori          t4, s5, -395
                  slti         s9, s7, -1237
                  srl          a3, s2, t1
                  sub          t3, s6, t5
                  slt          s10, t4, a1
                  sra          a5, s3, a0
                  addi         s2, s0, -1837
                  sra          s11, a3, s5
                  or           t1, t0, t4
                  and          s1, sp, a1
                  srl          gp, a3, zero
                  xori         t4, t6, -154
                  slt          a4, s2, a4
                  andi         s7, s9, 1892
                  sll          s11, a3, a0
                  or           s6, a4, a6
                  srai         t0, s0, 5
                  xor          t6, s8, sp
                  ori          s11, s0, 1326
                  nop
                  andi         a3, a5, -1791
                  auipc        t6, 741061
                  auipc        zero, 992547
                  addi         a2, a0, -1419
                  sra          s9, tp, a4
                  addi         s6, t5, 622
                  slt          s1, s0, a7
                  and          t3, s3, t4
                  and          a4, a3, s2
                  slli         s2, a6, 28
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           a7, 0xffffffff
                  li           s10, 0x0
                  li           tp, 0x80000000
                  li           a6, 0x0
                  li           a5, 0x9a8a207d
                  li           s7, 0x6566612b
                  li           a2, 0x80000000
                  li           ra, 0x80000000
                  li           s3, 0xab6a32cd
                  sub          a5, s10, s7
                  addi         a6, s3, 1200
                  add          a6, s8, s10
                  nop
                  addi         s7, s7, 638
                  lui          ra, 664526
                  auipc        tp, 838452
                  sub          tp, s8, tp
                  addi         s8, a5, -853
                  lui          s10, 1021438
                  add          s10, s7, ra
                  sub          s8, a5, a6
                  nop
                  lui          s10, 554679
                  add          a5, s10, s10
                  lui          s3, 466632
                  lui          a6, 581484 #end riscv_int_numeric_corner_stream_3
                  andi         s10, sp, -980
                  sltu         zero, s2, a2
                  addi         a5, tp, 1326
                  sltu         s9, a0, sp
                  ori          s8, s2, 84
                  sub          a6, s2, s8
                  auipc        t6, 105773
                  sltu         s6, s8, t4
                  xor          s1, a2, t2
                  add          s1, s6, s8
                  sub          tp, s8, zero
                  sltiu        zero, a2, -201
                  xori         s3, sp, -1228
                  ori          s7, s11, 1122
                  slti         tp, tp, 933
                  sltu         s6, t0, t0
                  add          s9, s10, t6
                  sltu         a4, zero, t4
                  ori          ra, a7, -1748
                  sll          s3, a2, a7
                  and          s10, a3, t0
                  andi         s1, s6, 1346
                  add          s5, s6, t5
                  sra          a0, s10, a3
                  sll          s1, t1, s7
                  sltiu        s11, s6, 1295
                  sub          a3, a3, a7
                  lui          s5, 659894
                  and          zero, s11, a0
                  srai         s1, a0, 5
                  sra          a7, s8, s1
                  sub          s2, t0, t2
                  srl          s3, gp, s0
                  xor          ra, s6, t6
                  sltiu        s6, t2, -1812
                  slti         gp, ra, 1922
                  ori          t4, t6, -469
                  srai         a6, s0, 11
                  addi         s6, s4, -1047
                  andi         s5, gp, 1068
                  srai         a4, s9, 12
                  and          gp, t5, s4
                  sub          t1, s6, a6
                  xori         s11, s11, -360
                  sra          a7, t6, s2
                  or           t3, a3, s0
                  auipc        a4, 722797
                  srl          gp, t5, a6
                  srai         a2, a6, 4
                  srai         s8, a3, 17
                  auipc        ra, 298097
                  xor          t3, gp, s1
                  slt          s9, t0, ra
                  srli         zero, a0, 19
                  slt          a7, a7, tp
                  addi         t6, t5, -424
                  srai         a0, t4, 7
                  sltiu        s4, zero, -1127
                  sll          tp, s8, sp
                  xori         s1, gp, 1714
                  sra          s10, s1, s2
                  slti         s2, gp, -1238
                  add          tp, a2, a7
                  addi         t2, t0, -1203
                  xor          s10, s11, t2
                  slli         s2, a4, 10
                  srai         t6, t3, 15
                  srl          s2, a0, s1
                  slti         gp, s9, 528
                  andi         s5, s0, -1819
                  lui          a6, 728423
                  srai         a7, t1, 9
                  xori         gp, a7, 1444
                  sltiu        t2, a0, 1226
                  and          a5, a2, a3
                  sltiu        a0, ra, -539
                  srl          s3, s2, t6
                  srl          a6, s0, ra
                  andi         s5, ra, -1435
                  and          a6, t1, s1
                  auipc        s0, 133287
                  srli         t3, s0, 21
                  sltiu        t3, t4, -1089
                  nop
                  lui          t1, 322360
                  sra          s4, t0, a5
                  srai         a4, a6, 19
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s8, 0x0
                  li           s1, 0x80000000
                  li           t6, 0x80000000
                  li           tp, 0xffffffff
                  li           t1, 0x80000000
                  li           s9, 0x0
                  li           s10, 0x18af87ea
                  li           ra, 0xffffffff
                  li           s0, 0xffffffff
                  auipc        s9, 258090
                  nop
                  sub          s7, s10, s1
                  sub          tp, s1, s1
                  nop
                  auipc        s0, 83425
                  sub          ra, s8, s1
                  addi         t1, s0, 1496
                  sub          s0, s7, t6
                  nop
                  auipc        ra, 103930
                  add          tp, ra, s9
                  add          s8, s10, ra
                  lui          s1, 480949
                  lui          ra, 367982
                  auipc        s10, 517161
                  sub          s7, tp, t1
                  lui          t6, 189551
                  nop
                  sub          s9, s8, s0
                  nop
                  auipc        s10, 13635
                  auipc        t1, 226013
                  nop
                  add          s9, s9, t6
                  sub          s8, s9, ra #end riscv_int_numeric_corner_stream_6
                  andi         t4, a0, -978
                  sra          tp, s0, a5
                  andi         a0, s1, -1696
                  add          s8, s0, tp
                  nop
                  xori         s0, a3, -441
                  xor          tp, tp, a7
                  add          a3, a2, s10
                  nop
                  slt          s10, zero, s11
                  srli         s5, t3, 14
                  andi         t1, s7, 1901
                  lui          s0, 883353
                  xor          a4, t6, s9
                  srli         s10, a4, 20
                  srai         t1, s7, 25
                  and          zero, t4, s3
                  andi         a5, t1, 124
                  slt          s5, s10, t4
                  auipc        t0, 150713
                  andi         t0, a2, 868
                  auipc        a2, 12296
                  slti         t2, t5, -1122
                  xori         a4, s8, 1948
                  sltu         tp, s11, t0
                  ori          a6, s0, -1760
                  addi         s7, sp, -1647
                  addi         s10, t3, 1330
                  srl          s1, a5, s3
                  xor          s2, s10, s1
                  xori         a5, s9, 1466
                  ori          t4, zero, -1789
                  slli         s7, zero, 31
                  auipc        t6, 236316
                  sub          t3, s3, a0
                  sltiu        a7, t5, 1729
                  ori          a5, s4, -1142
                  sra          a0, a6, a3
                  srli         s9, t2, 10
                  auipc        a5, 689352
                  andi         s9, a7, 477
                  srli         s0, t2, 16
                  sll          gp, s3, t4
                  and          s8, s0, zero
                  nop
                  sll          tp, s11, a2
                  auipc        s11, 623111
                  auipc        gp, 1021558
                  and          s4, a5, a2
                  add          s2, gp, a4
                  sltu         ra, t0, a1
                  sltiu        s0, tp, 65
                  slt          s10, s3, gp
                  add          a4, s9, a4
                  slt          t1, t3, t4
                  srli         t3, a5, 5
                  lui          s5, 56912
                  addi         a5, t6, 441
                  andi         a3, a7, -2042
                  ori          s0, a0, 638
                  slli         t1, ra, 24
                  lui          a4, 704369
                  or           t3, a4, tp
                  andi         t6, a5, 1337
                  nop
                  sra          s11, t1, t6
                  nop
                  or           s10, tp, s3
                  andi         a3, a4, 528
                  xori         a0, sp, 39
                  xor          s9, a2, a4
                  slti         s7, t6, -985
                  auipc        t3, 253316
                  sra          gp, s9, a3
                  sra          s6, zero, s8
                  andi         t3, zero, 177
                  sltiu        a3, s9, -1856
                  sltu         a2, a1, zero
                  srl          a7, t2, s1
                  sra          t6, a5, s10
                  lui          a2, 828965
                  sltu         t1, s3, a6
                  or           zero, t0, s1
                  auipc        s11, 161723
                  slli         a6, sp, 23
                  sll          a0, t4, tp
                  andi         s4, s10, 582
                  srli         a3, tp, 13
                  sltiu        a7, a0, 1880
                  srai         t1, a6, 15
                  lui          a0, 254797
                  sra          t4, t0, t3
                  srai         s0, tp, 19
                  nop
                  slt          a0, s4, s9
                  srai         s4, s1, 21
                  auipc        s2, 116541
                  xor          s5, s7, s10
                  srl          a0, t2, gp
                  xori         a7, tp, -516
                  add          s9, t5, a7
                  srai         a5, s9, 23
                  sll          t4, a0, t0
                  ori          s1, s11, 903
                  srl          a2, a3, a1
                  slti         s2, a7, -1624
                  or           t2, s10, s9
                  nop
                  auipc        a6, 224087
                  lui          t1, 41678
                  andi         a3, s6, -921
                  xori         a4, a3, -409
                  or           a0, s11, s3
                  add          s4, s4, t0
                  andi         s3, s10, -2028
                  add          t2, s0, s8
                  sra          a5, s11, s11
                  andi         s11, a0, 1652
                  sra          gp, a2, s4
                  srl          s11, t1, a2
                  andi         a3, a4, 838
                  srli         zero, s9, 31
                  xori         s0, t6, -1808
                  sub          s11, a6, s11
                  or           t3, s8, t6
                  srai         t3, s6, 18
                  slti         a3, t3, 1185
                  sll          a0, a6, sp
                  or           ra, s10, t4
                  and          t1, t1, tp
                  srli         a7, t3, 24
                  auipc        t2, 294722
                  sub          tp, t6, s10
                  nop
                  sll          s0, s10, a0
                  nop
                  nop
                  auipc        s0, 368120
                  sll          s6, zero, s9
                  nop
                  ori          gp, a3, -145
                  sra          s10, s0, t4
                  slt          a3, t6, t5
                  auipc        gp, 97374
                  srl          s5, s9, a7
                  slt          s0, s10, sp
                  slt          s4, s6, s7
                  slli         t6, zero, 5
                  sub          s1, t3, zero
                  or           ra, a7, t4
                  srai         a3, gp, 17
                  nop
                  srl          t3, a5, a1
                  or           a7, a0, t1
                  srli         a2, s8, 31
                  sra          s0, s7, s5
                  xori         a0, a0, -480
                  srl          s1, a1, s9
                  auipc        s7, 267566
                  add          s7, s1, ra
                  slti         gp, t0, -256
                  sub          a3, a0, s5
                  and          s6, gp, a2
                  slti         a7, s10, 636
                  addi         t4, ra, 636
                  srai         t2, s10, 2
                  addi         ra, s7, -1374
                  xori         s2, s2, 1093
                  sltu         t3, a3, a7
                  sltiu        zero, a6, -914
                  xor          a3, a2, ra
                  lui          s2, 880285
                  xori         a6, s7, -128
                  slt          t3, s10, s6
                  sltu         a5, a1, s2
                  slli         s9, s5, 21
                  lui          a4, 929984
                  sltu         t3, s1, t6
                  xor          t1, s8, s6
                  or           s1, t4, a0
                  sll          a2, ra, t6
                  sltiu        s8, s9, -1484
                  auipc        s10, 125269
                  sub          a4, t0, t3
                  nop
                  sltiu        s1, s4, 753
                  sltu         s8, s7, s5
                  auipc        s2, 704561
                  nop
                  srai         a6, t4, 1
                  srli         tp, a7, 1
                  andi         s9, t3, 584
                  nop
                  sltu         a3, zero, s9
                  sltu         t4, t2, s1
                  addi         s11, t4, 347
                  xori         t0, gp, 722
                  add          s11, a1, t1
                  slti         s3, zero, -1586
                  add          t3, t1, t1
                  xori         s4, s2, -216
                  sll          s10, s1, t2
                  srli         gp, s6, 22
                  xor          t4, a1, s2
                  slt          gp, t5, a1
                  xor          a5, s8, a7
                  slti         s3, s0, 161
                  sltiu        s7, a7, 1513
                  lui          t1, 934778
                  sub          t4, s10, a1
                  or           s1, s2, a7
                  slti         t4, t4, 1612
                  xori         s10, t0, -722
                  andi         s3, s6, 6
                  srl          s2, t2, s9
                  ori          a2, t4, 1276
                  sltu         a6, t2, t5
                  nop
                  srl          a7, s6, a3
                  andi         s11, a6, 1099
                  add          a4, s11, gp
                  xori         t3, t3, -1663
                  xori         s11, tp, -655
                  or           a6, s9, s1
                  andi         tp, ra, 286
                  xori         t0, sp, 1426
                  srli         s8, s11, 12
                  sll          t0, gp, gp
                  srai         a3, t6, 12
                  xor          s2, a5, a4
                  srl          s7, s10, t4
                  add          t3, t5, a7
                  slti         zero, a5, -320
                  sub          a5, s6, s2
                  ori          s4, t1, 452
                  or           s2, zero, t4
                  ori          s1, s1, 1389
                  ori          s2, a0, 1854
                  srli         a6, t5, 17
                  xori         s11, t5, -619
                  xori         s8, s0, 461
                  slt          s6, t5, t2
                  sltu         s5, s2, t3
                  andi         s1, t2, -1459
                  slli         a7, s3, 4
                  sltiu        a4, zero, -347
                  srli         a4, ra, 0
                  xori         a6, ra, 1083
                  andi         s8, zero, -914
                  sltu         s3, tp, s7
                  nop
                  lui          t6, 278938
                  addi         s0, s4, -1770
                  xori         s6, s10, -1650
                  sltiu        t1, t4, -1772
                  add          s1, t4, tp
                  sll          s4, t1, a7
                  srai         s2, s6, 1
                  xori         a6, a6, -1332
                  sltu         a2, a6, a6
                  add          s8, t3, ra
                  srli         t4, a4, 10
                  addi         a0, zero, 1981
                  auipc        s3, 418564
                  addi         s4, t2, -357
                  auipc        s4, 884124
                  sra          s6, a7, a1
                  sll          a5, s7, s9
                  nop
                  slt          s4, a0, s2
                  sra          s5, s9, s4
                  sra          t1, s1, a1
                  slt          a4, a0, a0
                  sltiu        s11, s0, 1802
                  sltiu        s8, a0, -980
                  slli         s8, a7, 14
                  slli         a5, t3, 1
                  nop
                  addi         a5, s4, 1726
                  or           s10, s9, a3
                  lui          a4, 769986
                  addi         a2, t6, -1379
                  xori         s7, s11, 1948
                  slt          a0, a4, s6
                  sub          s3, s1, ra
                  srli         a2, gp, 25
                  sll          a4, s2, ra
                  xori         s7, s8, 331
                  nop
                  sub          t6, s6, s11
                  auipc        a7, 659882
                  or           a5, s0, gp
                  slli         t0, ra, 27
                  srl          t1, s8, sp
                  slti         a0, s9, -1829
                  lui          s3, 934797
                  srai         a7, a4, 9
                  slli         s0, a3, 3
                  add          s8, t4, t2
                  andi         gp, s9, 464
                  nop
                  auipc        s8, 642446
                  sltiu        s0, t4, -1392
                  auipc        t4, 35928
                  sra          t3, a7, t5
                  srli         a3, a6, 8
                  srli         a2, a3, 13
                  and          s6, s9, zero
                  xor          t3, s6, s3
                  srl          s7, s9, t2
                  add          s6, s9, a4
                  srai         t3, tp, 8
                  sll          s2, t2, a2
                  nop
                  sltiu        a5, s4, -1821
                  ori          a2, t1, 1103
                  ori          a3, a0, -2037
                  lui          s11, 501184
                  nop
                  sltu         t2, a0, s6
                  add          tp, zero, gp
                  srl          a4, tp, t4
                  nop
                  xor          t0, s2, gp
                  ori          t0, s1, -1216
                  sub          s1, a0, s9
                  slt          s3, a1, s10
                  sra          s0, s10, a6
                  srai         t2, a2, 22
                  sub          a2, s7, s9
                  add          s7, t3, s10
                  lui          s3, 494396
                  slt          s11, tp, tp
                  xor          gp, s9, t2
                  nop
                  srli         s8, sp, 16
                  addi         s5, s1, 1333
                  srli         t3, t3, 13
                  or           s4, t6, t2
                  xor          t0, a2, a6
                  srl          s5, sp, a5
                  addi         a7, s11, -804
                  and          a0, t1, t1
                  srai         t0, t4, 6
                  nop
                  sra          a3, t6, a3
                  lui          s9, 910069
                  addi         t1, s7, -1499
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           a3, 0x0
                  li           s6, 0x0
                  li           s8, 0x0
                  li           s9, 0x0
                  li           t2, 0xecf31c86
                  li           t0, 0xffffffff
                  li           s11, 0x80000000
                  li           a6, 0xa0de9204
                  li           gp, 0x80000000
                  add          t0, s8, a6
                  addi         t0, gp, -490
                  sub          a3, a6, s9
                  add          gp, gp, s8
                  nop
                  sub          s9, a6, s9
                  lui          a6, 54218
                  lui          t0, 736317
                  lui          s9, 1023191
                  add          a6, s6, s6
                  auipc        s8, 375631
                  nop
                  lui          s11, 1040592
                  nop
                  nop #end riscv_int_numeric_corner_stream_19
                  sra          a0, s7, zero
                  srli         s1, t1, 26
                  andi         zero, a4, 1354
                  xori         zero, s3, 443
                  srai         s0, t2, 7
                  slt          zero, s5, s5
                  slti         a3, s1, -1214
                  slt          t4, t5, s0
                  sltu         t0, gp, zero
                  addi         s2, s10, 269
                  ori          t0, ra, -979
                  andi         t6, a2, -515
                  sltu         s0, a3, s0
                  sra          a7, t5, sp
                  sra          gp, a3, a2
                  slti         zero, t6, 731
                  and          zero, s8, a4
                  ori          a5, t3, -739
                  add          s9, s6, a6
                  andi         s9, s9, -386
                  slt          a2, a5, t3
                  sub          s6, t2, t5
                  srli         s6, s4, 9
                  add          t0, t4, s11
                  xor          a7, s4, a2
                  and          a6, sp, s1
                  sra          s9, gp, t0
                  lui          tp, 321266
                  sra          s3, s11, tp
                  sub          s1, zero, a6
                  xor          t6, t5, a2
                  xori         s2, ra, 888
                  slt          s5, s5, t2
                  ori          s6, s0, 1161
                  slti         s0, s11, -1011
                  sltu         s3, s7, t1
                  slti         ra, t3, 209
                  srai         a2, s5, 20
                  or           a3, a3, t1
                  addi         s3, s7, -1783
                  and          zero, t6, s9
                  lui          s6, 122787
                  lui          t1, 480629
                  slt          a0, a4, t1
                  sub          a7, s8, t0
                  and          ra, t3, a4
                  slt          zero, t0, sp
                  slti         s1, t3, 1816
                  sltu         a6, s9, s7
                  srli         a4, s0, 3
                  add          s3, sp, s3
                  addi         a4, ra, -106
                  sltiu        t6, s3, -1167
                  and          t0, s8, zero
                  ori          t1, t4, 943
                  sltu         s6, s10, s0
                  sra          zero, s4, s1
                  sra          s4, t2, t4
                  sra          a3, s8, s9
                  lui          gp, 825433
                  sra          a7, t5, a4
                  srli         s9, t1, 5
                  slti         zero, t2, -830
                  xor          s5, sp, t4
                  sub          s1, s10, s7
                  srai         tp, s4, 28
                  xor          tp, s9, s0
                  add          t1, s9, tp
                  sltiu        s5, t6, -1793
                  sltu         gp, a5, s6
                  slli         a7, a7, 18
                  ori          t6, t3, 1182
                  sltu         t3, sp, gp
                  slt          s3, t0, s5
                  ori          gp, t0, -1885
                  andi         t6, s1, 166
                  srai         s5, ra, 29
                  srli         s8, ra, 24
                  auipc        a6, 876553
                  sltu         a6, a4, a0
                  slti         s7, t0, 1046
                  srl          s5, a7, s6
                  ori          a4, a7, 598
                  srli         ra, s11, 24
                  add          s11, a6, t1
                  sub          t3, a0, a0
                  nop
                  sll          s8, t0, zero
                  sll          s5, tp, a4
                  auipc        s11, 27416
                  lui          ra, 320681
                  xori         zero, ra, -674
                  andi         s6, t6, -640
                  xor          t6, sp, s11
                  addi         s3, t5, -456
                  or           s2, a2, a4
                  nop
                  lui          zero, 447790
                  slti         s2, a5, -1394
                  auipc        s8, 889778
                  sltiu        s0, a6, 1042
                  slli         s8, a1, 27
                  slti         a3, t5, -1489
                  sltu         s9, s2, s6
                  auipc        ra, 186473
                  or           s1, a1, t5
                  andi         s2, s4, 42
                  andi         s5, t0, -942
                  nop
                  ori          s0, a0, 1306
                  auipc        t6, 88547
                  sra          gp, t4, ra
                  add          s8, s9, a7
                  slli         s7, t5, 10
                  xor          s7, sp, t5
                  srli         s10, s7, 5
                  srai         a0, a3, 0
                  srli         s0, a0, 26
                  srli         t2, s9, 29
                  addi         t2, sp, -138
                  srli         s6, a1, 26
                  srai         a4, zero, 15
                  auipc        tp, 855604
                  slt          s9, s10, s3
                  slt          s9, a1, s6
                  addi         s1, a5, -893
                  and          a4, s4, a2
                  sll          ra, tp, a3
                  srl          a4, s3, a5
                  xori         tp, t3, 363
                  sub          s9, gp, ra
                  addi         s0, ra, -1563
                  sltiu        s10, a3, -1948
                  ori          t3, s9, -1722
                  andi         s6, t1, -350
                  auipc        t4, 556767
                  ori          s2, a0, -797
                  srli         s4, a2, 5
                  sltu         zero, a7, a2
                  sub          a3, a4, s2
                  srli         t4, s7, 5
                  sll          s0, t6, t6
                  sra          s1, t4, tp
                  nop
                  sra          s2, tp, s7
                  slt          a5, a5, s7
                  auipc        t2, 31675
                  sra          a3, s4, s11
                  add          s1, t4, s6
                  sra          s3, s2, gp
                  auipc        s5, 614207
                  sll          t2, t1, s10
                  srai         s2, zero, 16
                  add          t1, s8, a4
                  addi         s1, a1, -1391
                  addi         t4, a1, -1737
                  auipc        s5, 98650
                  or           s9, s0, zero
                  addi         s6, s8, 1304
                  xor          a4, ra, t0
                  slli         s11, a5, 15
                  andi         t4, a5, 2040
                  slt          t0, a1, a3
                  srli         a2, a2, 6
                  srli         a7, s7, 30
                  lui          ra, 387134
                  nop
                  lui          s5, 322056
                  srli         s4, a7, 28
                  sra          a2, tp, t6
                  slti         s6, sp, -285
                  sltiu        gp, s8, 1854
                  srl          t2, gp, s7
                  slt          s5, s5, t2
                  and          s11, s4, s8
                  sra          t3, s1, zero
                  sra          a7, s2, s9
                  slli         ra, a1, 4
                  sltu         t4, s8, t0
                  xori         s11, a4, 238
                  srli         s6, t1, 15
                  xor          s8, a4, s7
                  sltu         t3, s3, s7
                  and          t0, s11, t6
                  auipc        s6, 28937
                  sltiu        zero, t4, 1
                  slli         s11, t0, 24
                  sub          a0, t3, t6
                  sub          s2, t5, zero
                  xori         gp, t3, -496
                  srai         a2, s7, 13
                  sub          a7, a3, t1
                  sra          s2, a7, s3
                  slti         a2, t6, -736
                  slt          a7, s9, s0
                  sra          s9, t6, s9
                  sltiu        zero, t3, -1508
                  srl          t3, s7, t5
                  xor          s7, ra, s9
                  srl          s9, a5, a7
                  srl          t6, s5, s1
                  srai         s7, t6, 26
                  sltiu        a4, s9, 192
                  slti         gp, s11, 1954
                  slli         t6, s11, 1
                  nop
                  or           t2, t4, t4
                  slti         s4, a4, -1057
                  sub          a7, s4, a0
                  ori          t2, a3, -1170
                  slli         s0, a6, 17
                  sub          s1, a1, a0
                  add          s1, a6, a7
                  srl          zero, t0, s5
                  sra          t3, a2, s5
                  slt          s7, s2, s7
                  srl          s8, t5, s10
                  sltu         a0, gp, t2
                  auipc        gp, 873006
                  or           s1, a6, t5
                  or           s9, s4, zero
                  sltiu        s7, s2, -1281
                  slt          s6, s8, ra
                  xori         t6, a7, -1304
                  slti         a6, s5, 923
                  xor          a4, a7, zero
                  auipc        t4, 298995
                  addi         s8, s7, 1190
                  andi         s4, t5, -504
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           t2, 0xffffffff
                  li           t6, 0x0
                  li           s7, 0x80000000
                  li           ra, 0x0
                  li           s6, 0x0
                  li           s9, 0x80000000
                  li           s2, 0x80000000
                  li           a6, 0x80000000
                  li           a7, 0xffffffff
                  addi         t2, a0, -842
                  addi         t2, s7, -1750
                  auipc        a0, 750450
                  lui          a0, 874658
                  lui          ra, 797370
                  addi         s7, s6, 198
                  sub          s6, t2, a6
                  addi         a6, t6, 897
                  addi         s7, a7, -93
                  nop
                  addi         s2, s6, -429
                  addi         a7, a6, -864
                  add          t2, s7, s6
                  add          s2, s9, s2
                  lui          a7, 478213
                  auipc        a6, 119951
                  sub          a7, s7, a6
                  auipc        s6, 954537
                  sub          t6, s6, s6
                  lui          s9, 766206
                  addi         a6, s2, 348
                  nop
                  sub          t2, a0, t6
                  auipc        s6, 880441
                  add          t2, t6, a0
                  lui          s2, 551763 #end riscv_int_numeric_corner_stream_17
                  srai         s1, s7, 30
                  srli         zero, t3, 6
                  xori         a4, a4, -1493
                  la x30, test_done
                  jalr x0, x30, 0
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
                  add x2, x11, zero
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x13, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x13, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x13, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x13, x18, ecall_handler
                  li x18, 0x1
                  beq x13, x18, instr_fault_handler
                  li x18, 0x5
                  beq x13, x18, load_fault_handler
                  li x18, 0x7
                  beq x13, x18, store_fault_handler
                  li x18, 0xc
                  beq x13, x18, pt_fault_handler
                  li x18, 0xd
                  beq x13, x18, pt_fault_handler
                  li x18, 0xf
                  beq x13, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

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
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x11, x2, zero
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
                  add x11, x2, zero
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
                  add x11, x2, zero
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
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x11, x2, zero
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
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x11, x2, zero
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
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x11, x2, zero
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
