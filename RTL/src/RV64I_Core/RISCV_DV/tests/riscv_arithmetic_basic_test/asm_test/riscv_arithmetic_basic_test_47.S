.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x23, h0_start
jalr x0, x23, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x13, kernel_stack_end

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
                  li x0, 0xfc87a27d
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0xf22b9b2f
                  li x5, 0xd211ead
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0xff5c25a4
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0xa
                  li x12, 0x80000000
                  li x15, 0x80000000
                  li x16, 0x35969097
                  li x17, 0xf9077a1c
                  li x18, 0xc2680b6f
                  li x19, 0xf8b374fe
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x1060428b
                  li x23, 0xf61deb3b
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0xb
                  li x27, 0xf3ba5c75
                  li x28, 0x80000000
                  li x29, 0x9
                  li x30, 0x8
                  li x31, 0x0
                  la x14, user_stack_end
main:             li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           t3, 0x144b9456
                  li           tp, 0x6d11599a
                  li           s6, 0x80000000
                  li           s11, 0x80000000
                  li           s9, 0x80000000
                  li           t4, 0xffffffff
                  li           s3, 0xffffffff
                  li           a1, 0x0
                  li           gp, 0xb6ec0661
                  add          s11, s3, t3
                  nop
                  lui          s6, 798869
                  addi         s4, tp, 507
                  sub          s6, s11, tp
                  sub          s4, s9, t3
                  sub          s6, s4, s4
                  nop
                  auipc        gp, 297941
                  lui          gp, 323401
                  lui          s4, 456664
                  auipc        gp, 286762
                  sub          gp, s6, t3
                  lui          s11, 833270
                  sub          gp, t4, s4
                  sub          s11, a1, t3
                  auipc        s9, 644850
                  lui          s4, 911291
                  nop
                  nop
                  lui          s4, 509893
                  nop
                  sub          s3, s9, gp
                  add          gp, s11, s9 #end riscv_int_numeric_corner_stream_5
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           a7, 0x80000000
                  li           a0, 0x18a7c9a7
                  li           ra, 0x6da6e52e
                  li           s0, 0x80000000
                  li           a2, 0xffffffff
                  li           s3, 0x842d9dd9
                  li           a5, 0x80000000
                  li           s2, 0x80000000
                  li           t0, 0xb326b6c4
                  nop
                  sub          a7, a0, a7
                  auipc        s0, 93657
                  sub          a7, a7, s3
                  auipc        a7, 27724
                  nop
                  lui          s2, 840693
                  lui          s2, 352990
                  auipc        a0, 997179
                  auipc        s11, 1016792
                  nop
                  nop
                  lui          ra, 738295
                  sub          s0, ra, a5
                  add          a2, s3, s3
                  auipc        s3, 968488 #end riscv_int_numeric_corner_stream_12
                  li           s10, 0x5548c92b #start riscv_int_numeric_corner_stream_6
                  li           s5, 0xffffffff
                  li           t0, 0x80000000
                  li           s3, 0xffffffff
                  li           t2, 0x0
                  li           a1, 0x80000000
                  li           sp, 0x0
                  li           a2, 0x0
                  li           s6, 0x0
                  li           a7, 0x91b70428
                  sub          a2, sp, a7
                  nop
                  auipc        s5, 940509
                  nop
                  auipc        s6, 4635
                  sub          a7, a2, a1
                  nop
                  sub          s3, a2, a7
                  auipc        s6, 560179
                  lui          t0, 640778
                  sub          s5, sp, a1
                  nop
                  add          t2, t2, s5
                  lui          t0, 519512
                  addi         a7, s5, -877
                  auipc        a2, 734546
                  add          s3, a7, s6
                  add          t2, s3, s10 #end riscv_int_numeric_corner_stream_6
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           t2, 0x0
                  li           s8, 0x80000000
                  li           a1, 0x2fad9c71
                  li           s10, 0xda0c37ad
                  li           s4, 0x2dc3fdd
                  li           a5, 0xffffffff
                  li           s5, 0x80000000
                  li           gp, 0xba4ea9a0
                  li           s6, 0x0
                  add          gp, s10, a5
                  lui          s5, 68340
                  add          ra, s6, s10
                  addi         t2, s6, 785
                  add          ra, s8, s6
                  add          s6, t2, gp
                  lui          t2, 277267
                  nop
                  addi         s4, ra, 1210
                  auipc        s5, 611630
                  auipc        t2, 172534
                  auipc        s6, 654416
                  sub          ra, s4, s4
                  add          s6, s5, s4
                  auipc        s8, 152934
                  lui          t2, 539578
                  auipc        s4, 1003985
                  auipc        ra, 167212
                  nop
                  add          s10, t2, t2
                  nop
                  lui          s10, 127907
                  lui          s5, 831023 #end riscv_int_numeric_corner_stream_7
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           gp, 0xffffffff
                  li           t3, 0xffffffff
                  li           t2, 0x0
                  li           a2, 0x80000000
                  li           s10, 0x80000000
                  li           t0, 0x0
                  li           t6, 0x80000000
                  li           s0, 0x0
                  li           s11, 0x80000000
                  add          t0, s0, t0
                  add          t3, a2, t6
                  lui          t6, 121733
                  addi         t6, t2, -1595
                  lui          s11, 381794
                  lui          t0, 193074
                  sub          s11, t0, s0
                  sub          gp, t3, s10
                  auipc        a2, 178788
                  lui          t2, 749797
                  nop
                  lui          gp, 569095
                  add          a2, t0, s4
                  lui          t0, 323190
                  auipc        s11, 329612
                  auipc        s10, 99419
                  auipc        s0, 984086 #end riscv_int_numeric_corner_stream_4
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           a1, 0x23fd93a0
                  li           a0, 0x80000000
                  li           s2, 0xffffffff
                  li           t6, 0x0
                  li           a5, 0xffffffff
                  li           s10, 0xffffffff
                  li           t2, 0xffffffff
                  li           t3, 0x80000000
                  li           gp, 0xffffffff
                  addi         a5, a5, -1158
                  add          gp, t6, t6
                  auipc        s2, 150099
                  sub          a1, t6, s10
                  add          a1, t3, t6
                  sub          t3, tp, s10
                  addi         gp, s10, -383
                  addi         s10, t3, -182
                  auipc        a1, 142850
                  sub          s10, t3, tp
                  auipc        t3, 188671
                  add          a0, t6, a0
                  sub          tp, a5, t6
                  auipc        t2, 291978
                  auipc        gp, 760300
                  add          a1, gp, a0 #end riscv_int_numeric_corner_stream_13
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           s4, 0x80000000
                  li           a2, 0x80000000
                  li           s9, 0xffffffff
                  li           t6, 0x0
                  li           s1, 0x3aac3c9d
                  li           ra, 0x0
                  li           s3, 0x80000000
                  li           t1, 0x80000000
                  li           a5, 0xffffffff
                  sub          t6, ra, s1
                  addi         s1, s3, 714
                  addi         s9, ra, 1733
                  lui          t0, 984420
                  nop
                  addi         t1, s1, 770
                  add          t6, s9, t6
                  add          ra, s3, t0
                  nop
                  lui          s4, 3195
                  lui          a5, 683335
                  addi         a5, s3, 467
                  lui          s9, 681650
                  nop
                  add          s3, t1, ra
                  nop #end riscv_int_numeric_corner_stream_3
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           s5, 0x79e5a847
                  li           a6, 0x80000000
                  li           a7, 0x0
                  li           t3, 0x80000000
                  li           ra, 0xffffffff
                  li           s10, 0x80000000
                  li           s1, 0x80000000
                  li           t4, 0x80000000
                  li           s4, 0x80000000
                  sub          a6, ra, a6
                  nop
                  sub          s4, a6, a7
                  auipc        t3, 129833
                  nop
                  add          t3, s5, t4
                  lui          a7, 191747
                  lui          s5, 503298
                  lui          ra, 844637
                  auipc        t4, 553385
                  auipc        s5, 221974
                  add          t4, t3, s1
                  add          t3, s10, s5
                  auipc        t3, 783195
                  lui          s5, 349732
                  add          a7, s4, t3
                  add          s5, a6, s5
                  add          a6, s10, a6
                  add          a0, a0, s10
                  nop
                  sub          s10, t3, ra
                  sub          ra, a0, a6
                  auipc        t4, 944135 #end riscv_int_numeric_corner_stream_9
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           t4, 0x0
                  li           t0, 0x6193a95d
                  li           s8, 0xffffffff
                  li           s4, 0xffffffff
                  li           a7, 0x80000000
                  li           a0, 0x80000000
                  li           a2, 0xffffffff
                  li           t3, 0xffffffff
                  li           s0, 0x80000000
                  auipc        t3, 629056
                  auipc        a7, 506400
                  nop
                  addi         t3, t3, 590
                  sub          a7, a6, a7
                  add          t0, a6, s4
                  lui          a6, 687256
                  addi         s0, a2, 248
                  nop
                  addi         a7, s8, 1815
                  addi         s4, a7, 533
                  lui          s8, 807318
                  add          a2, t0, a6
                  nop
                  add          t0, t4, t4
                  auipc        s0, 188253
                  addi         s4, a7, -683
                  lui          a7, 926495
                  add          t0, s4, s4
                  addi         a7, t3, 535
                  nop #end riscv_int_numeric_corner_stream_8
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           s5, 0xffffffff
                  li           sp, 0x80000000
                  li           s0, 0xffffffff
                  li           a6, 0x0
                  li           gp, 0x1acff0a4
                  li           t2, 0x80000000
                  li           t6, 0xb6806995
                  li           t4, 0x0
                  li           a2, 0xffffffff
                  lui          a2, 714207
                  add          t6, t4, t4
                  sub          s0, a2, gp
                  addi         t6, t2, 1562
                  sub          t6, t4, a6
                  lui          t3, 245866
                  add          sp, a6, t2
                  add          s0, a6, t6
                  nop
                  add          s5, s0, t4
                  add          gp, t2, t2
                  add          t6, s0, a2
                  nop
                  nop
                  lui          sp, 205655
                  sub          t2, a2, s5
                  lui          t4, 151193
                  sub          s5, t3, sp
                  add          sp, t3, s5
                  sub          sp, s5, t4
                  auipc        gp, 239688
                  addi         a2, t4, -491 #end riscv_int_numeric_corner_stream_18
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           t2, 0xad37d3cf
                  li           ra, 0x7f7096e0
                  li           tp, 0x80000000
                  li           sp, 0x80000000
                  li           s8, 0x0
                  li           t6, 0xffffffff
                  li           t0, 0x80000000
                  li           a1, 0x0
                  li           a0, 0x61f9acff
                  addi         ra, s8, -1054
                  auipc        t2, 188822
                  sub          tp, tp, t6
                  addi         a0, a0, 276
                  lui          t2, 932263
                  add          t6, sp, sp
                  add          tp, ra, tp
                  addi         sp, tp, 1501
                  sub          tp, sp, s8
                  auipc        a0, 787943
                  auipc        s6, 282462
                  auipc        sp, 515964
                  sub          a1, tp, t0
                  sub          a1, t6, ra
                  add          s6, t2, t6
                  auipc        a0, 858283
                  lui          sp, 906086
                  auipc        sp, 68490
                  add          ra, tp, tp
                  add          t0, s8, a1
                  sub          t0, s6, ra
                  sub          s6, a1, a0
                  lui          s8, 881717
                  lui          s6, 127669 #end riscv_int_numeric_corner_stream_14
                  nop
                  srl          t3, a0, t0
                  ori          s10, s11, 1773
                  sltu         s6, t3, a6
                  xori         zero, s0, -1602
                  and          zero, s0, zero
                  nop
                  srl          tp, ra, t6
                  sll          t6, s11, a7
                  auipc        t0, 21944
                  sll          t4, a1, a5
                  lui          s2, 570134
                  xori         a0, s10, -362
                  add          s9, s2, a4
                  or           zero, zero, a4
                  auipc        s5, 449721
                  ori          s8, a4, 432
                  sll          s8, s11, s6
                  xori         s10, ra, -318
                  and          s2, s11, t3
                  srli         s5, t2, 18
                  lui          gp, 445379
                  and          s11, s9, t1
                  xori         a1, tp, -46
                  slt          s6, s6, s6
                  slli         t0, t2, 20
                  addi         t3, s11, -1406
                  add          a5, s3, s2
                  auipc        t1, 984822
                  sra          t3, s0, s6
                  slli         s1, s9, 18
                  auipc        a5, 6111
                  slli         s4, s5, 7
                  srai         a0, t5, 19
                  or           gp, s7, zero
                  nop
                  add          ra, t1, s8
                  and          s0, zero, s7
                  andi         s10, a6, 128
                  srai         t2, sp, 17
                  or           t4, a4, s9
                  slt          t3, t5, a4
                  slt          s4, s9, a1
                  addi         gp, s8, 48
                  sub          a1, a0, s5
                  sub          s0, s9, a5
                  slti         s2, s4, -971
                  xori         t1, zero, -1682
                  sltu         s5, t5, sp
                  srl          a1, t5, a4
                  xori         s1, t1, 439
                  nop
                  sll          gp, s9, a5
                  or           t2, s10, a2
                  srli         a6, a5, 20
                  sub          zero, t3, s9
                  slt          t0, a5, t3
                  slti         t0, a7, -836
                  lui          a1, 282595
                  slli         s5, a7, 20
                  add          a2, s10, s2
                  sltu         t4, s5, gp
                  ori          s3, a0, 47
                  nop
                  add          t0, s8, t6
                  addi         s4, t3, -1701
                  slti         s4, s3, -1415
                  xor          t2, a4, t0
                  ori          t3, s0, -876
                  slli         s6, s8, 13
                  nop
                  andi         s3, s10, 796
                  addi         a7, s4, 1345
                  sll          a5, a2, s5
                  andi         sp, t4, 1128
                  addi         t5, gp, -1573
                  lui          ra, 259393
                  add          t4, a5, a6
                  nop
                  ori          a0, s1, 1165
                  sll          s6, a6, s4
                  xori         s0, s4, 1957
                  slti         t3, s10, -120
                  nop
                  sra          a1, s9, zero
                  ori          s4, s11, 477
                  xor          s8, s2, s8
                  or           t1, t3, s6
                  slt          s10, s0, a3
                  sub          t0, zero, t3
                  srli         s5, ra, 6
                  slti         zero, t6, -949
                  ori          s9, zero, -114
                  andi         t6, s5, 1013
                  slli         s1, s2, 26
                  sltiu        s1, s10, -704
                  sll          a2, a4, s2
                  srl          s3, a0, t3
                  lui          s8, 206866
                  sub          s2, t3, a2
                  or           t1, s10, a5
                  srl          ra, s11, s3
                  add          t4, a0, t1
                  sub          s2, s5, a2
                  addi         tp, a1, 59
                  srai         a2, a4, 24
                  xor          t3, t3, t5
                  lui          s1, 552811
                  sra          gp, a1, a3
                  slt          t1, t3, t3
                  nop
                  or           ra, a5, a6
                  addi         t4, a1, 682
                  ori          s3, t1, 293
                  addi         s10, gp, -717
                  xori         sp, s0, 820
                  slt          t2, t2, sp
                  auipc        t0, 552536
                  sltu         s5, s9, t3
                  sra          t6, tp, a4
                  xor          t2, s2, a1
                  xor          s8, tp, s11
                  sltu         sp, ra, a0
                  addi         t0, s4, -1707
                  srai         ra, s11, 12
                  sub          s1, zero, s2
                  or           zero, s1, s11
                  ori          s3, s3, 1972
                  or           a1, t6, s10
                  sub          a0, s9, s11
                  or           s2, s0, s1
                  slli         s5, a4, 31
                  sll          s8, s6, s4
                  srai         a5, t0, 14
                  sub          s5, s11, t2
                  add          s9, t1, a7
                  xori         a5, t0, -1272
                  lui          t3, 365616
                  srli         sp, s1, 11
                  nop
                  and          s0, tp, a7
                  nop
                  sra          s9, gp, s11
                  andi         tp, a5, -317
                  andi         t1, s0, -1733
                  sll          s0, s8, t3
                  sltu         t6, s9, t6
                  srli         s5, s7, 8
                  nop
                  and          t3, a0, s5
                  ori          s2, s10, -1426
                  srai         a6, s8, 23
                  sll          t3, t5, t4
                  slti         s9, s10, 754
                  sltu         s1, s11, gp
                  sub          s5, sp, s1
                  andi         t6, t5, 1122
                  sltiu        a1, gp, -1599
                  sub          t3, s5, a7
                  slli         a1, t3, 11
                  andi         t1, tp, 1021
                  and          ra, s2, a7
                  and          zero, t0, t3
                  sra          t0, s6, t2
                  srl          a7, s5, s0
                  srai         a1, s4, 5
                  sltiu        t0, gp, -717
                  andi         t6, s10, 1366
                  nop
                  sub          a1, a2, s9
                  and          t1, s3, a1
                  srl          sp, s3, s6
                  slli         s11, s6, 28
                  sltiu        t0, s2, 1965
                  slt          tp, s5, s1
                  xori         t2, s1, -1837
                  andi         s10, s2, -1556
                  ori          s3, a2, -1223
                  srl          sp, a6, s6
                  addi         ra, a2, 511
                  srai         t5, a1, 29
                  ori          t1, t5, 573
                  xor          t6, t4, t6
                  srl          s4, s10, a1
                  srai         a2, t2, 8
                  ori          t2, t5, 1755
                  srai         a0, t6, 24
                  addi         a5, s8, -1538
                  sltiu        t2, a5, 741
                  sra          t0, a1, t1
                  addi         s11, sp, 1397
                  srli         s6, s4, 17
                  nop
                  andi         s6, s7, -1675
                  sltu         s6, gp, s8
                  xor          a5, tp, a6
                  srli         t6, t2, 8
                  sra          a0, s11, ra
                  andi         a2, s10, -803
                  sub          s4, s3, a6
                  slti         a5, a1, 898
                  sll          t3, t5, a7
                  srli         t2, s10, 2
                  add          ra, s11, t4
                  sltu         t0, t3, s11
                  sra          s0, a4, a0
                  xor          a1, t5, zero
                  addi         s10, s9, 1129
                  nop
                  nop
                  slli         a6, a1, 14
                  slli         s5, ra, 20
                  nop
                  li           s10, 0x16294a4b #start riscv_int_numeric_corner_stream_16
                  li           s8, 0x0
                  li           t4, 0x80000000
                  li           s4, 0x25f155a6
                  li           s0, 0x0
                  li           tp, 0x0
                  li           s1, 0xffffffff
                  li           s2, 0x80000000
                  li           s5, 0xca8f2aac
                  li           a7, 0x80c7e0b7
                  sub          s0, s0, a7
                  lui          a7, 338510
                  sub          s1, s0, tp
                  auipc        s10, 799680
                  auipc        s10, 145349
                  auipc        t4, 730812
                  auipc        s0, 68223
                  addi         s10, s2, -59
                  auipc        s0, 886542
                  add          s5, t4, s0
                  lui          s1, 804420
                  lui          s5, 393176
                  add          s8, s8, s5
                  add          a7, s10, s8
                  auipc        t4, 566224
                  addi         a7, s4, 599 #end riscv_int_numeric_corner_stream_16
                  slli         t1, s1, 29
                  srli         tp, s0, 25
                  sll          t0, s1, s3
                  xor          s8, a3, zero
                  auipc        a6, 296128
                  sltu         s6, t4, zero
                  slti         t3, t5, -2012
                  or           a0, t3, t5
                  srli         t1, t2, 4
                  xor          a0, s4, a0
                  xor          gp, s1, ra
                  addi         a6, t5, 2039
                  sltu         sp, t2, t6
                  sra          t4, ra, a5
                  sub          t1, a5, t4
                  xor          s8, zero, s6
                  addi         t0, t4, 1297
                  xori         s8, s2, -1857
                  srli         s5, s11, 10
                  xor          t5, t3, a1
                  sltu         s0, s7, t3
                  nop
                  sub          s3, a6, s10
                  add          gp, s11, t2
                  srl          a5, a4, s5
                  srai         t5, a3, 22
                  srl          zero, a6, a3
                  nop
                  sll          a5, tp, s2
                  nop
                  nop
                  slli         t0, a0, 2
                  srl          s5, s4, a3
                  or           s11, s4, gp
                  sll          a5, s3, a1
                  sub          s0, t3, a1
                  sltu         tp, a3, ra
                  and          tp, a0, sp
                  srli         a0, t6, 18
                  lui          t3, 535928
                  sll          s11, a4, a1
                  or           s6, a6, tp
                  sll          sp, a4, s2
                  srl          a1, s0, t4
                  ori          t3, ra, -1778
                  srli         s0, a3, 27
                  lui          t4, 132107
                  andi         t3, s8, 1173
                  sub          tp, t1, t5
                  andi         tp, t6, 636
                  xor          a1, s7, s5
                  andi         s11, t6, 757
                  slti         a5, zero, 339
                  or           t3, a6, sp
                  sra          s4, s0, sp
                  sltu         a0, s10, s10
                  auipc        s2, 87704
                  auipc        s6, 774432
                  or           t5, zero, sp
                  srl          s3, t0, s6
                  xori         a7, ra, -1111
                  nop
                  sltiu        t5, s6, -1955
                  xor          s1, a0, a4
                  xor          sp, ra, t0
                  slti         a0, s0, -398
                  sltiu        s2, s11, 672
                  sltiu        sp, a4, 1786
                  srai         a1, a1, 4
                  sra          t6, a7, s11
                  auipc        a0, 365263
                  srai         a1, gp, 17
                  lui          s11, 185812
                  nop
                  andi         s10, a5, 1166
                  and          s3, s1, s11
                  slt          a0, a3, s8
                  xor          s3, t0, s5
                  srli         ra, t3, 21
                  xor          sp, a1, ra
                  xori         t3, s9, 979
                  auipc        s1, 495371
                  nop
                  and          s11, a1, s3
                  sll          ra, a2, a5
                  srli         s8, s6, 4
                  and          sp, s6, s6
                  andi         t2, a0, 1039
                  addi         s5, t6, 1801
                  sra          s5, t1, a0
                  nop
                  srli         a7, t6, 10
                  lui          s3, 654577
                  ori          s6, t3, -73
                  xori         t2, a6, 274
                  ori          a2, t3, -1835
                  slt          t1, a0, a4
                  slt          a2, a6, tp
                  ori          t1, a6, 1206
                  ori          zero, t2, -1157
                  lui          s10, 996560
                  xor          s10, s3, t1
                  nop
                  addi         t5, zero, -1686
                  ori          t3, t0, -566
                  or           tp, t4, s5
                  auipc        s2, 909075
                  sll          t3, a0, s5
                  srl          s11, s3, ra
                  or           tp, a3, sp
                  srai         gp, a6, 6
                  sub          s5, s9, t3
                  sltiu        s10, s0, 1533
                  sltu         a1, t6, a7
                  srli         t2, t6, 20
                  ori          a7, a5, 1320
                  add          t1, ra, t4
                  slti         a1, s0, -900
                  slli         s5, sp, 22
                  add          a1, tp, t5
                  nop
                  xor          tp, s7, s4
                  or           t4, s3, s0
                  andi         a6, s10, -503
                  ori          s6, t2, -1271
                  and          t4, t0, a7
                  andi         a2, s8, 597
                  add          t3, t5, t1
                  andi         s10, tp, 1332
                  nop
                  srl          t3, s5, s0
                  or           a2, t1, s0
                  srai         a5, t0, 25
                  andi         s0, s1, 126
                  sltiu        s0, a3, 1822
                  ori          s1, s10, 1867
                  sll          a5, t0, s7
                  and          s11, s2, a7
                  srai         s2, a0, 1
                  sub          a5, t2, t6
                  srli         t0, tp, 2
                  or           t5, s10, s11
                  srai         t0, s11, 1
                  andi         s8, gp, -805
                  slti         s10, a1, -1273
                  xor          sp, s1, s9
                  nop
                  slli         t6, zero, 26
                  sltiu        t0, s1, -562
                  slt          tp, s0, ra
                  sltu         gp, a7, t1
                  ori          gp, s0, -821
                  sltu         t0, a2, tp
                  xori         s5, t2, 980
                  ori          s4, t4, 1427
                  srli         sp, s0, 1
                  srai         a2, t1, 31
                  srai         ra, s1, 16
                  sltiu        t2, sp, 1533
                  lui          a1, 494680
                  and          zero, t2, a2
                  nop
                  andi         t3, s5, 1429
                  sltu         s8, tp, a5
                  slti         s1, t2, 1373
                  auipc        ra, 587250
                  addi         sp, s2, -1150
                  srl          gp, zero, s6
                  srl          zero, gp, zero
                  srai         sp, t1, 21
                  and          a7, s5, s3
                  auipc        gp, 97375
                  sll          s11, s2, t5
                  srai         s4, s7, 6
                  ori          ra, a2, 1093
                  and          t1, a2, a0
                  and          a1, a7, s9
                  srli         s3, tp, 12
                  sll          s11, t4, s5
                  srai         ra, s6, 14
                  sub          a0, a6, a4
                  ori          s3, a4, 1220
                  slti         s10, s4, 362
                  nop
                  sll          a1, a7, s9
                  sll          s0, a5, t0
                  add          s2, a2, a7
                  andi         a0, t3, -1218
                  sra          a6, a7, t5
                  srai         s8, s5, 31
                  or           s3, t1, s0
                  sra          s1, tp, tp
                  sltiu        sp, t0, -1311
                  or           t5, a2, gp
                  addi         s10, a5, -569
                  sub          s8, t1, s11
                  andi         s9, t6, -436
                  srli         zero, a7, 25
                  sll          a6, s10, s4
                  add          sp, s10, sp
                  sltiu        s3, gp, 1885
                  srl          s1, s5, s9
                  auipc        t4, 863053
                  addi         s3, t0, 1041
                  nop
                  xor          a2, s5, t6
                  sltu         s1, ra, a4
                  sll          s2, s0, s6
                  xor          zero, s0, s5
                  or           s4, t0, t5
                  slli         a5, t2, 12
                  lui          a5, 344261
                  sll          t1, a0, ra
                  add          s8, s9, a5
                  addi         s2, t0, -182
                  srl          s6, t4, s9
                  lui          t0, 964589
                  auipc        s1, 884921
                  srai         a7, zero, 23
                  sra          s6, s7, t3
                  srl          a2, s7, sp
                  sltiu        t3, s9, -1400
                  slt          zero, t6, gp
                  nop
                  or           gp, a1, a2
                  sub          t5, t5, tp
                  andi         a1, t0, -954
                  srai         s4, t0, 15
                  add          t6, s5, s11
                  nop
                  slli         s6, t1, 3
                  auipc        t0, 291003
                  nop
                  add          a7, t4, s7
                  xor          s11, s6, t2
                  xor          s6, t3, a6
                  add          ra, s8, s1
                  sltiu        t4, s7, -2023
                  addi         t6, s2, 701
                  sltiu        t2, a7, 446
                  lui          s4, 293520
                  addi         ra, s7, 141
                  slti         t1, gp, -1793
                  nop
                  slt          a7, ra, s1
                  slt          s10, s8, t1
                  auipc        ra, 99935
                  sltu         sp, t2, tp
                  and          t4, a7, s10
                  sltu         zero, sp, t0
                  slt          s2, s7, t6
                  sltu         a6, s4, t2
                  sll          s5, s1, ra
                  slti         t5, tp, -1892
                  sll          a6, s3, t1
                  slti         a2, gp, -1278
                  slt          a6, t3, s0
                  andi         a0, s5, -967
                  srai         t4, s7, 14
                  andi         s4, s4, -1831
                  andi         a0, t6, 200
                  addi         sp, a1, -1576
                  sltu         t3, s10, zero
                  sra          sp, a6, s3
                  sll          t4, gp, s2
                  ori          gp, s2, -375
                  sll          a7, a5, s10
                  sltiu        t5, gp, -494
                  auipc        t4, 227537
                  sltu         s3, t0, a6
                  or           s9, a5, a4
                  slti         s5, t6, -1792
                  xor          s0, s0, a2
                  or           s11, t4, s3
                  xori         t4, s4, -125
                  ori          ra, a0, 300
                  and          s2, a3, a4
                  nop
                  or           s11, a2, t6
                  and          s2, a7, gp
                  sub          s8, gp, a5
                  lui          t6, 912756
                  andi         t1, s0, 1766
                  andi         t1, s9, 478
                  sub          gp, s3, s8
                  slti         gp, a6, -1354
                  andi         t5, a6, -1625
                  srli         s4, s11, 25
                  slli         a7, t3, 3
                  add          t1, s5, s9
                  srli         ra, ra, 26
                  xor          s4, a2, s8
                  nop
                  sltiu        a5, s5, 538
                  ori          a0, a4, 72
                  and          a5, t1, sp
                  slt          t3, ra, a2
                  auipc        a5, 871469
                  xori         s6, zero, -1088
                  and          tp, s1, a1
                  srli         t0, t4, 5
                  sll          a5, a1, s1
                  xori         s10, zero, 2000
                  slt          a7, a4, t2
                  ori          a7, a2, 1323
                  xori         t4, s3, 1537
                  sra          s10, t0, t1
                  and          t1, t5, sp
                  or           s5, a2, t3
                  sub          a6, a5, s1
                  sub          sp, a0, s7
                  sra          a6, a2, s2
                  or           s8, t0, t3
                  sra          s2, s11, a0
                  sltiu        tp, gp, -1964
                  sub          s9, t3, t3
                  lui          t6, 467745
                  andi         s10, zero, 168
                  add          zero, s5, a5
                  nop
                  and          t6, a2, ra
                  srai         s11, a3, 17
                  srli         tp, s1, 1
                  xori         a1, s8, 805
                  slli         s0, s2, 27
                  addi         s11, t0, -1473
                  lui          s9, 272030
                  slt          s8, ra, t3
                  sltiu        s3, s10, 730
                  or           t0, s9, a5
                  and          a5, s6, sp
                  srli         t4, t6, 8
                  and          s0, a1, s9
                  sltu         s10, s11, tp
                  nop
                  srai         a5, a5, 0
                  sltu         s4, s9, s0
                  and          sp, s2, s1
                  srai         s2, a6, 15
                  auipc        s0, 548571
                  sltu         t0, t2, sp
                  auipc        a2, 345776
                  sll          s0, s3, s9
                  nop
                  add          sp, a2, t5
                  sub          s4, s0, s7
                  sra          s10, s6, s6
                  srli         sp, s11, 4
                  xor          ra, t5, a5
                  srl          ra, s11, t6
                  xori         s10, gp, -920
                  auipc        s9, 840121
                  srai         s8, s3, 20
                  addi         s8, s7, -552
                  sltiu        t3, t0, -677
                  addi         a6, t3, 1317
                  and          t0, t6, s11
                  sub          s10, s3, s9
                  sltu         a1, s3, a2
                  addi         zero, a4, -879
                  srai         s9, a0, 24
                  slti         ra, a0, -773
                  add          a5, s8, s5
                  sub          s10, a3, sp
                  slti         s0, t5, -213
                  srl          s8, a5, t2
                  xori         a0, t5, 645
                  xor          s9, a3, a2
                  nop
                  auipc        s9, 624215
                  slli         t5, a7, 30
                  or           a2, sp, ra
                  slti         tp, s0, 718
                  auipc        a2, 308368
                  and          zero, s8, sp
                  sub          s2, s11, s7
                  sll          s5, s11, a5
                  andi         s4, s7, -514
                  srli         t6, s6, 15
                  srl          s1, s2, t1
                  srl          ra, sp, ra
                  add          s0, gp, t2
                  srl          gp, s11, s5
                  ori          s6, s9, 1942
                  or           a1, a2, s2
                  srli         t0, a6, 27
                  srli         t4, s11, 31
                  andi         s3, s8, -1445
                  auipc        a1, 694230
                  sltu         t5, ra, t3
                  slt          s2, gp, a5
                  andi         a0, ra, -618
                  lui          s10, 832220
                  ori          s2, s7, -928
                  xori         s0, a4, -957
                  sra          s10, t6, gp
                  xor          s10, t2, t2
                  srl          t5, a1, a6
                  sltiu        s4, a5, -469
                  slti         sp, a0, 269
                  srli         tp, sp, 20
                  srai         a2, t6, 28
                  lui          gp, 11379
                  sra          sp, s8, gp
                  lui          s4, 352274
                  add          a2, s1, gp
                  auipc        t1, 343401
                  andi         a1, s3, -503
                  slti         a6, a7, -1906
                  and          s11, t2, s1
                  lui          a1, 376213
                  or           t4, s11, s0
                  add          t1, a3, a2
                  sll          s4, ra, a0
                  sub          s4, s11, a0
                  auipc        a6, 975506
                  auipc        s10, 661607
                  sltiu        s2, t1, 1994
                  sltiu        s4, s0, -558
                  srai         s9, s9, 1
                  srai         a1, s4, 28
                  sltu         t5, t1, zero
                  slli         s6, a1, 28
                  srli         a2, a3, 31
                  sra          a7, a3, s7
                  add          zero, s11, s1
                  slti         gp, s9, 1446
                  nop
                  xor          t4, a0, t1
                  sltiu        t3, a2, 120
                  and          s4, zero, ra
                  or           s1, t2, s10
                  srli         t6, a1, 14
                  sra          ra, t1, s11
                  andi         t5, s6, 2047
                  or           t1, t1, s8
                  slli         a5, t2, 27
                  srli         ra, s6, 7
                  slli         ra, a4, 17
                  lui          ra, 382377
                  slli         s1, t2, 13
                  slti         s10, zero, -1942
                  xor          ra, a0, s6
                  addi         a6, s0, 745
                  sltu         s10, s1, a3
                  xor          t2, s9, t4
                  sra          a2, t3, a6
                  sll          s11, s6, s7
                  ori          s6, s3, -797
                  addi         s8, s3, -51
                  srli         a1, a6, 31
                  srli         t0, t6, 30
                  slt          t6, tp, t4
                  xori         t5, t0, 828
                  add          s5, ra, t4
                  auipc        zero, 771969
                  auipc        s5, 685678
                  xor          sp, s1, t4
                  addi         s3, s0, -574
                  srai         s6, s11, 0
                  andi         a5, s0, -97
                  slti         s3, a6, 1482
                  sltu         s9, s1, s6
                  auipc        t1, 81228
                  andi         s0, a0, 118
                  xori         gp, s8, 1652
                  sll          a6, s10, t4
                  nop
                  srli         s3, s8, 11
                  ori          a5, s4, -1004
                  add          s4, s5, s9
                  slti         t6, a6, -604
                  xor          zero, s2, s2
                  slt          ra, s10, s8
                  auipc        tp, 3498
                  sll          a1, t6, a1
                  sll          s9, t5, t0
                  slt          zero, t1, s6
                  addi         s1, a3, -1937
                  slt          gp, a6, a7
                  xor          zero, s1, s3
                  slt          a0, s3, a3
                  sra          t1, s2, s3
                  xor          a2, sp, a2
                  slti         t5, t4, -2014
                  sltiu        t2, t2, 1405
                  srl          s11, s2, s9
                  lui          s1, 1028775
                  xori         s11, s6, -1650
                  xori         a5, t5, -1540
                  and          s2, t5, s7
                  sub          s5, a1, ra
                  slti         a0, a0, -2026
                  or           sp, s11, s2
                  and          s3, t2, a4
                  xor          a2, a0, a4
                  addi         a0, s0, -946
                  slti         s11, tp, -1325
                  srli         sp, s4, 30
                  srl          s1, s7, s9
                  srai         t0, t6, 23
                  xori         sp, a2, 1854
                  sub          a7, s11, a0
                  lui          t2, 639121
                  sltu         s0, tp, t0
                  or           t5, t2, a6
                  lui          sp, 895614
                  sll          s0, s5, t6
                  nop
                  xor          t2, sp, t0
                  sra          s11, a3, s10
                  xori         ra, s6, -786
                  ori          s3, sp, 2001
                  sra          t2, s9, a0
                  add          gp, zero, a6
                  sltu         zero, s9, s1
                  sub          s1, ra, s6
                  andi         t4, ra, -1546
                  srl          s10, s1, a6
                  slli         t1, sp, 4
                  sub          a1, s2, a3
                  sra          s3, t6, s0
                  slti         sp, t1, 1285
                  slt          a7, s7, t2
                  sra          a5, s3, sp
                  slt          a0, t3, a3
                  ori          t0, s4, -1011
                  sra          a2, s1, t2
                  or           s6, s9, s9
                  and          s8, s3, a1
                  ori          s11, s5, -943
                  slli         a0, s11, 27
                  andi         s4, s3, 326
                  srai         t3, t4, 9
                  slli         t4, t5, 12
                  andi         s2, s9, 1735
                  sra          t2, a0, s7
                  add          a6, s8, sp
                  slt          a6, s6, s4
                  andi         t5, t6, -1378
                  or           t4, s11, ra
                  slt          a1, s7, a3
                  addi         s9, ra, -1479
                  slt          s0, t5, sp
                  auipc        a1, 791071
                  add          a6, t1, a5
                  ori          s2, a4, 619
                  srai         t6, a6, 14
                  nop
                  sltu         t6, tp, s7
                  auipc        a5, 856464
                  srai         a2, s6, 16
                  srai         s9, tp, 6
                  lui          t6, 845633
                  sll          s8, s11, sp
                  xor          gp, s11, a0
                  srai         s10, a0, 15
                  xor          a5, a0, t6
                  or           s5, a2, sp
                  xori         s3, s8, 687
                  srai         gp, a6, 16
                  slli         t2, a5, 13
                  srl          tp, a5, s3
                  sll          gp, a0, t5
                  andi         a6, t1, 175
                  auipc        s1, 963034
                  sra          s10, s0, t4
                  sltu         a1, a1, a6
                  or           s4, ra, s9
                  slli         a1, s0, 10
                  add          a6, a6, t5
                  sltiu        zero, s3, -973
                  xori         s0, t4, -420
                  srai         s4, s4, 1
                  and          s2, s4, zero
                  add          a5, s7, s5
                  ori          ra, t0, 278
                  srl          sp, s5, s9
                  add          s10, a7, ra
                  srai         t6, a6, 22
                  srl          a2, t3, s3
                  sra          a2, t1, zero
                  nop
                  srl          t2, s1, a0
                  sltiu        s11, a3, 1164
                  lui          t6, 435315
                  sra          s5, s3, t3
                  xori         s11, s3, -1638
                  srl          t5, t4, t4
                  srai         t6, t1, 17
                  slti         s0, s2, -1265
                  slt          tp, tp, t5
                  slt          t4, s9, a0
                  xor          t3, ra, t5
                  sltu         s8, s7, s3
                  xor          a5, s10, sp
                  sltu         s11, s9, t4
                  srli         a0, sp, 27
                  xor          t1, t0, tp
                  and          tp, t6, s10
                  auipc        t5, 348850
                  ori          a6, a4, -1381
                  sra          s4, tp, s8
                  xor          a5, sp, s4
                  nop
                  or           sp, sp, t3
                  andi         a0, a5, 124
                  add          t3, a7, t1
                  srai         t5, a0, 23
                  or           s6, s0, s8
                  ori          t6, t4, 1852
                  slli         a1, t6, 16
                  add          s3, zero, s6
                  slt          s3, t3, s7
                  sll          t0, zero, s4
                  add          a5, s4, s10
                  andi         t0, t2, 137
                  add          t6, t1, s5
                  add          a1, t0, zero
                  auipc        s9, 212304
                  and          t0, a2, t5
                  srai         t3, a4, 7
                  nop
                  and          s10, sp, s11
                  addi         s0, a1, 538
                  srli         a6, t5, 7
                  srl          t0, a2, s1
                  auipc        sp, 23345
                  addi         t3, gp, -227
                  slt          zero, t4, t6
                  slti         a2, a5, -555
                  ori          tp, a0, -124
                  auipc        t2, 479587
                  sltiu        s8, s1, 290
                  slt          s5, t0, t5
                  add          s3, t1, a2
                  sub          t2, s4, s6
                  sra          a7, s7, zero
                  sra          a6, s10, s3
                  addi         t5, s10, 1257
                  sub          s4, a1, gp
                  srai         t1, t1, 6
                  nop
                  and          zero, s0, s2
                  sra          s10, t5, zero
                  lui          s10, 164842
                  slt          s0, t2, a5
                  slli         t4, a1, 1
                  ori          a5, a2, -1773
                  or           s3, t0, a2
                  sub          s4, a2, s11
                  addi         t5, s9, 875
                  xori         s1, t2, -1514
                  sra          t4, s2, a0
                  xori         s3, t1, 937
                  lui          t0, 397359
                  slt          s4, s7, gp
                  sra          a5, a1, t1
                  or           t4, a4, s0
                  srl          a6, t1, s7
                  slt          a6, a1, a0
                  slt          a5, zero, s8
                  xori         s9, tp, -1716
                  sll          s2, t5, s1
                  slt          s6, s9, a0
                  xori         s2, t5, -359
                  slti         zero, a0, 617
                  srli         sp, s9, 23
                  auipc        s8, 926072
                  andi         gp, t0, -220
                  xori         a2, s10, -1289
                  sltu         s9, a1, ra
                  srli         t5, s2, 27
                  add          s6, t4, t3
                  sltu         a6, a4, s5
                  nop
                  nop
                  sub          s2, a0, s1
                  srl          t1, a2, tp
                  xor          tp, zero, a0
                  or           s2, a2, s2
                  ori          s10, zero, -940
                  auipc        zero, 391505
                  xor          t1, zero, t3
                  sltiu        t2, gp, 1905
                  xori         s4, t0, 1312
                  sub          a2, ra, s8
                  xor          s11, ra, s7
                  and          zero, s2, ra
                  addi         ra, t2, 1449
                  srli         s10, t1, 29
                  sub          a1, ra, ra
                  nop
                  xor          a1, zero, s10
                  slt          ra, t4, s7
                  slli         s2, s0, 26
                  xori         s9, a3, 609
                  xor          s2, t0, zero
                  xor          s5, a7, s7
                  lui          a2, 171373
                  slli         t0, a1, 2
                  sll          a1, s10, ra
                  slli         t2, a1, 25
                  auipc        s10, 730402
                  auipc        s0, 397170
                  or           ra, a6, s5
                  sll          t6, ra, t2
                  sltiu        s1, s3, 2034
                  sll          a5, a3, s4
                  srl          s10, a0, a0
                  srl          s6, gp, a6
                  sll          a5, a7, gp
                  or           s3, a3, a2
                  sra          zero, a6, gp
                  slli         s6, a2, 18
                  srai         tp, zero, 3
                  srli         a1, a3, 22
                  sltu         t4, s11, a3
                  slt          a2, a0, s1
                  xor          t0, s6, a7
                  srli         t5, a4, 9
                  sltiu        gp, s6, 642
                  sll          s8, s6, ra
                  and          s10, a2, s1
                  srli         a5, s4, 0
                  sub          ra, gp, s11
                  lui          s8, 496560
                  srl          s2, zero, t3
                  andi         a1, a3, -591
                  addi         s1, t0, 1707
                  srai         t1, s5, 24
                  slt          s5, s2, t4
                  sll          a0, t5, s7
                  slti         zero, t5, 1420
                  slti         s2, t0, 434
                  add          s6, a5, s4
                  add          sp, a7, s1
                  srl          a6, a7, t5
                  srli         s4, s9, 23
                  sra          a7, s1, s5
                  sll          s6, s5, a6
                  srai         t0, sp, 9
                  auipc        s10, 159151
                  srai         s4, s6, 27
                  slt          t5, t3, a3
                  slt          s8, s10, t4
                  ori          s5, t2, -823
                  srl          t5, a0, t5
                  sltiu        t6, s11, 1083
                  xori         s5, gp, 547
                  and          t5, s9, t6
                  lui          s10, 652334
                  auipc        s1, 851440
                  auipc        t5, 409430
                  sltu         s0, s7, s10
                  sll          ra, a7, a5
                  srli         ra, s0, 21
                  ori          t2, s11, -520
                  addi         s11, t2, 1913
                  add          a6, ra, s0
                  and          t3, t2, sp
                  add          a2, gp, a4
                  srl          s11, s5, s0
                  nop
                  sll          s5, t0, t6
                  srai         a2, tp, 9
                  slt          t0, a1, t0
                  srl          a0, t5, a7
                  srai         t0, s6, 20
                  andi         t5, a5, -1738
                  srli         a7, a0, 8
                  slli         t5, t1, 24
                  or           s11, s7, s0
                  xori         s8, t1, -1411
                  sltu         s11, a3, a3
                  auipc        t5, 699327
                  slli         s1, a4, 3
                  lui          a0, 108187
                  andi         s0, a1, 1649
                  ori          a0, s9, -535
                  auipc        s0, 1956
                  auipc        s2, 312729
                  add          ra, s11, s9
                  auipc        s3, 943067
                  nop
                  srai         a0, t0, 24
                  slli         t2, s6, 28
                  srai         a5, s9, 10
                  andi         s11, s7, 994
                  sltiu        s5, s3, 109
                  ori          zero, a0, 414
                  nop
                  andi         sp, s7, -420
                  sltu         t3, gp, t0
                  srl          tp, a7, t2
                  andi         s6, ra, 294
                  srli         a1, a6, 0
                  slti         s8, a5, 768
                  auipc        s9, 422000
                  andi         s4, s3, -310
                  nop
                  or           a0, t1, a3
                  sltu         t2, s3, a0
                  ori          s9, a2, -381
                  or           a6, zero, s6
                  xor          a6, t0, s0
                  addi         s5, t5, -1436
                  or           t6, a7, s4
                  sltu         s8, a3, s2
                  nop
                  addi         sp, s4, 1281
                  ori          t0, a0, -1437
                  sra          sp, t5, t5
                  andi         sp, s11, 91
                  sltu         a0, s5, a5
                  or           a1, a2, s1
                  or           tp, s7, a7
                  xor          a5, s9, s11
                  srai         s11, s7, 3
                  xori         sp, s0, -579
                  auipc        t3, 140181
                  addi         t1, t6, -1810
                  sub          s0, t3, tp
                  add          s0, s0, a6
                  nop
                  sub          t1, t3, s6
                  ori          t6, sp, -126
                  lui          sp, 624723
                  or           s6, s10, a4
                  srai         s6, ra, 29
                  slt          s0, a3, s11
                  andi         tp, t0, 82
                  slli         s1, sp, 8
                  srli         ra, s10, 20
                  andi         t6, s9, 723
                  sub          a0, t0, s0
                  ori          s4, s11, 155
                  srai         t1, t1, 3
                  addi         tp, zero, 97
                  sra          t2, t6, t3
                  xori         s3, s3, 1466
                  sll          t2, t5, tp
                  or           a6, t5, s10
                  sltu         s8, t4, gp
                  slti         s5, s2, -1898
                  sltu         a5, a5, a6
                  sltu         s6, t5, zero
                  sll          t4, sp, a4
                  xor          t2, s6, s0
                  addi         s3, t5, -1029
                  xori         gp, ra, 111
                  sra          tp, t4, zero
                  xor          s6, a3, gp
                  sra          t5, a4, gp
                  or           t4, s1, s9
                  addi         s4, s11, 1273
                  addi         s9, a6, 1505
                  sltu         a6, t6, tp
                  nop
                  sra          s8, s10, s4
                  slli         a7, a0, 29
                  addi         t0, a3, 1076
                  sltu         tp, s10, s10
                  nop
                  andi         ra, a6, -426
                  srl          s4, a0, t0
                  sra          a7, s11, t2
                  slt          a2, gp, s7
                  slt          s11, a1, t1
                  sub          sp, t0, s11
                  add          t0, s5, s1
                  sltu         s4, s4, t1
                  sub          s6, t2, a5
                  slt          s2, a7, a4
                  srl          t1, s10, s3
                  slt          t0, t6, s1
                  add          sp, t6, t6
                  andi         s6, a7, 1965
                  slti         s10, t0, -1523
                  addi         t6, s6, -1311
                  and          sp, t6, s3
                  sra          s5, a1, a1
                  or           t6, a3, zero
                  sltu         s4, s5, s7
                  add          s3, s1, zero
                  andi         t3, a0, -917
                  srli         t1, a0, 25
                  andi         sp, sp, 225
                  xor          s11, zero, s7
                  slti         s2, zero, 1859
                  slti         a5, s4, 1714
                  add          s4, a1, ra
                  addi         a7, s6, -1562
                  sll          s3, gp, t2
                  sub          t0, sp, gp
                  or           t3, a3, s4
                  slt          s5, a4, t0
                  srai         a1, t5, 17
                  addi         t3, sp, -547
                  srli         s5, a2, 15
                  srl          t4, s2, s8
                  sra          t4, s6, s6
                  ori          a1, s10, 1293
                  or           a5, tp, s11
                  srl          s0, s4, gp
                  sra          s4, a0, s9
                  sra          s2, t0, gp
                  slli         s4, tp, 20
                  or           t3, s9, a0
                  srli         t1, zero, 4
                  auipc        gp, 180376
                  add          tp, a4, gp
                  lui          a6, 317223
                  or           ra, s5, t0
                  srli         zero, s4, 12
                  andi         s1, t4, -152
                  srl          t4, a2, a6
                  ori          s1, ra, 522
                  sltiu        s9, s3, 1889
                  slt          gp, a5, t6
                  sra          sp, s6, s1
                  xor          s2, a4, a1
                  sra          t1, s3, s1
                  ori          t1, t6, -1806
                  srl          zero, zero, s11
                  addi         s2, s11, -747
                  add          t0, t4, s1
                  xor          t2, s6, t0
                  auipc        t1, 838640
                  slti         a5, a1, 665
                  sll          s9, s11, a4
                  sltiu        sp, s8, 1567
                  srli         s3, a5, 12
                  lui          s1, 813373
                  andi         t5, a5, 1274
                  slli         a5, s1, 26
                  sll          a2, s6, a6
                  andi         t1, a1, -1247
                  sltiu        tp, s1, -1316
                  addi         a0, zero, -283
                  srli         sp, t2, 12
                  sltiu        zero, s9, 1962
                  sll          zero, t5, s4
                  sltu         t4, t2, t2
                  sub          t5, t0, a4
                  ori          sp, a3, 79
                  ori          s5, s4, -706
                  slt          a5, s5, a5
                  add          t3, gp, t3
                  slli         s5, a3, 26
                  add          sp, ra, s5
                  xori         s4, gp, -457
                  srai         a2, s4, 5
                  xor          a0, s9, s11
                  slti         s9, a6, -1496
                  addi         a7, s5, -1785
                  nop
                  slt          s3, s3, a5
                  srai         s2, zero, 7
                  srli         s8, sp, 14
                  andi         a5, s0, -1888
                  srl          s0, t6, s0
                  sltu         s4, t6, a6
                  sltiu        s9, s6, -1227
                  slti         ra, t6, -1239
                  lui          t6, 467518
                  sltiu        s0, gp, -381
                  sra          t5, a7, a2
                  nop
                  lui          sp, 141684
                  srli         t0, s8, 29
                  sub          s8, s3, a6
                  srli         s10, zero, 14
                  slti         tp, s0, -1696
                  srl          sp, s11, a3
                  lui          s4, 713261
                  xor          s5, s7, s11
                  and          gp, sp, s4
                  and          s10, t3, a3
                  xori         s3, sp, -279
                  xori         sp, t4, -1219
                  addi         ra, a1, -1409
                  and          t5, t4, t0
                  nop
                  auipc        t4, 455837
                  auipc        s2, 835063
                  auipc        t2, 42205
                  sltiu        a1, t1, -373
                  sltiu        t5, s8, 746
                  sll          s5, t1, s10
                  sub          t3, s6, tp
                  add          a0, s1, a2
                  sll          tp, s3, t6
                  sltiu        a5, a3, -1364
                  srl          s8, s4, sp
                  nop
                  sra          s8, s2, tp
                  auipc        s2, 467464
                  addi         t3, t1, -654
                  slli         s5, a2, 10
                  sub          s8, s9, t2
                  xori         ra, ra, 397
                  srai         s1, a2, 23
                  slli         t1, a7, 13
                  sll          t6, a7, zero
                  slli         t0, s8, 1
                  xor          t5, a1, sp
                  slti         a1, t4, -1993
                  srl          s6, ra, a1
                  addi         s4, s6, 1619
                  sra          zero, a1, s11
                  sra          t2, s4, zero
                  slt          a5, s5, s11
                  xori         s6, s10, 1496
                  xor          s11, a6, s1
                  add          s5, a3, a5
                  sltiu        gp, s2, 251
                  or           s10, t5, a0
                  nop
                  srl          s0, t3, gp
                  srli         tp, t0, 16
                  xori         t2, t4, -83
                  sub          t2, s6, t5
                  xori         t5, s7, 565
                  sltu         t5, a5, s1
                  and          s8, sp, a2
                  sra          a6, sp, a2
                  slli         s9, s5, 25
                  sltiu        s0, s11, 51
                  xor          a0, s5, t0
                  srli         ra, s1, 3
                  srl          s1, a1, a3
                  srl          s1, t0, s5
                  sub          s11, s2, s0
                  ori          s9, a5, 810
                  or           s6, t4, gp
                  xori         a0, s8, -1604
                  or           t3, t0, t3
                  srli         t0, t6, 27
                  srl          a1, s4, sp
                  xor          a1, t1, a1
                  slli         tp, s2, 31
                  sub          a5, a1, s10
                  xor          t6, tp, s0
                  add          s10, s0, t2
                  sltiu        t1, a2, 1283
                  srai         tp, gp, 6
                  srli         a6, s2, 8
                  slli         t1, a5, 15
                  addi         t1, s1, 1478
                  slti         s10, a0, 712
                  sub          ra, a5, a2
                  xor          gp, s5, s5
                  nop
                  add          s1, t3, sp
                  andi         s9, t2, 1329
                  srl          t2, a5, s7
                  slti         t6, t3, 41
                  srai         t5, s6, 5
                  add          t5, s5, a4
                  ori          t6, gp, 622
                  lui          s8, 827944
                  slli         tp, t2, 27
                  slt          s0, t6, zero
                  xor          t6, a5, t1
                  and          a7, a0, s2
                  sltu         a0, s2, t6
                  andi         zero, a2, 961
                  sltu         a7, a3, t1
                  slti         s10, s5, -464
                  ori          a1, s4, -1058
                  slti         a0, s8, 80
                  srli         zero, s5, 23
                  ori          s0, t4, -1973
                  sll          s9, t0, a3
                  add          t4, a7, s7
                  nop
                  srai         tp, t0, 2
                  auipc        t4, 618300
                  slli         s1, a1, 19
                  xori         gp, a0, 1702
                  sll          s6, s3, s1
                  and          s10, a3, a7
                  srai         s2, s11, 28
                  xori         a6, s0, -1509
                  sra          a5, s8, a7
                  nop
                  and          s1, a7, a5
                  ori          s2, t4, 1975
                  ori          s1, a2, -2033
                  nop
                  sltu         t3, s8, s5
                  andi         t6, s11, -947
                  sra          s8, a2, s0
                  srl          t3, a4, s5
                  slli         ra, t4, 3
                  sll          s11, s9, s2
                  lui          s2, 278464
                  xor          ra, t1, sp
                  slt          s8, a0, sp
                  add          t5, a4, tp
                  slli         s3, s11, 22
                  srai         tp, s5, 10
                  srai         t6, sp, 2
                  srai         t5, ra, 19
                  xori         t2, s2, -907
                  sltiu        a7, s6, -578
                  lui          s9, 663420
                  xor          a1, s10, a1
                  add          s10, t4, s1
                  xori         tp, s2, -1626
                  or           s9, s2, a0
                  addi         s5, zero, 1998
                  sra          s9, t4, a6
                  lui          s6, 540619
                  sra          s5, a3, s4
                  sub          s10, a3, gp
                  lui          a1, 452215
                  srli         a1, s4, 11
                  andi         s1, t1, 553
                  and          t0, t3, zero
                  xori         t2, zero, 1962
                  add          s4, s3, a1
                  auipc        a1, 400234
                  or           s6, tp, a6
                  srai         s3, a5, 12
                  xor          s9, a6, t1
                  auipc        s0, 1024970
                  or           s2, gp, tp
                  sltu         a6, s1, a5
                  ori          s10, s1, -1098
                  srl          sp, a1, a2
                  slti         t3, t3, 1673
                  sll          a2, ra, a0
                  sll          gp, s6, t1
                  lui          t0, 829228
                  or           s5, zero, s11
                  add          a5, a7, s10
                  sltu         t0, s7, s4
                  or           t1, t5, t5
                  srl          t4, zero, a6
                  ori          s5, s10, -1340
                  slti         s8, ra, 413
                  sltiu        a0, s9, 1597
                  sll          a1, s0, s11
                  sll          s5, s2, s6
                  nop
                  auipc        s4, 369746
                  xori         s4, s8, -2010
                  andi         ra, s6, 845
                  sltu         t4, s2, ra
                  sra          t6, s1, s11
                  srl          a2, tp, s0
                  xori         gp, s4, -1589
                  sltu         a6, a5, t5
                  sub          tp, sp, s2
                  slt          a2, s0, a1
                  srai         s0, s5, 28
                  srl          sp, zero, a6
                  and          zero, t1, a7
                  slti         s5, s2, 391
                  lui          tp, 743997
                  srl          s11, s9, zero
                  sltu         a6, t0, a6
                  sub          ra, s1, s8
                  sub          gp, s0, ra
                  auipc        s3, 295953
                  and          t6, s5, a4
                  sll          sp, zero, tp
                  add          zero, sp, s4
                  sltu         s9, s8, s9
                  and          t6, a3, a3
                  add          t3, s8, s4
                  addi         s4, t1, -750
                  sll          a7, t1, t5
                  sra          a2, s0, a4
                  slt          s0, s11, a5
                  sll          t4, a6, a4
                  slt          zero, t1, t2
                  auipc        s8, 665890
                  or           s0, a2, a2
                  sltu         t4, a6, t2
                  addi         a0, t4, -2026
                  slti         t5, a5, 787
                  addi         sp, s9, -366
                  lui          s6, 489883
                  xor          s4, s10, tp
                  slt          s1, s5, t2
                  sll          s3, t0, t4
                  addi         t3, s9, 300
                  sub          s4, s7, s5
                  sra          s6, s6, t0
                  srl          ra, a4, zero
                  slli         s5, a0, 26
                  nop
                  addi         a7, zero, 1236
                  slt          t5, s9, s7
                  add          t1, t6, tp
                  xor          zero, t6, a6
                  sltu         zero, a1, a5
                  lui          t2, 510149
                  or           s2, a0, s10
                  sra          t4, a3, gp
                  auipc        s11, 754133
                  and          a2, s7, s2
                  xor          a0, s10, s4
                  auipc        t3, 685693
                  add          t3, s0, s2
                  addi         s1, zero, 4
                  srli         t6, s1, 17
                  nop
                  or           a7, s6, a7
                  addi         tp, s2, 769
                  addi         gp, zero, -1036
                  auipc        a6, 42124
                  lui          s3, 805251
                  nop
                  xor          s3, s4, s3
                  sra          ra, a2, t3
                  xor          a0, t1, t1
                  xor          t5, s2, a7
                  sltiu        s8, a1, 2022
                  srai         t2, s0, 29
                  nop
                  sub          s9, s1, a7
                  srl          s4, t0, s2
                  andi         t2, a3, -682
                  srai         s11, s10, 12
                  auipc        s5, 387630
                  xori         t2, a1, 1280
                  add          s10, s2, s2
                  add          t6, s2, t3
                  slti         t1, s4, 1353
                  ori          t6, s7, -1695
                  nop
                  auipc        ra, 758612
                  xori         tp, ra, 151
                  sub          t3, s0, zero
                  sra          s4, s10, s0
                  addi         ra, s10, 1951
                  sub          t0, s3, a4
                  sltiu        a5, gp, 20
                  add          a6, t3, s4
                  slti         s1, s8, 1883
                  add          s2, sp, s5
                  srli         a0, a7, 0
                  slli         a6, s9, 23
                  ori          s0, a6, 1820
                  srl          s2, s3, s3
                  srl          s10, a0, a6
                  xor          sp, gp, a6
                  sltu         gp, s11, s8
                  sltu         t3, s0, s6
                  xor          a7, s1, t1
                  xori         a1, a1, 1609
                  sltu         zero, zero, a5
                  xor          s1, a6, sp
                  add          a6, a3, s4
                  slli         t0, s7, 6
                  slti         gp, zero, 685
                  sub          s11, s1, t1
                  slti         s3, t5, -1112
                  slti         s10, t2, -1817
                  addi         a5, a7, -1796
                  xor          ra, s2, s6
                  or           s3, s4, t4
                  and          a2, s10, s4
                  and          s2, a1, a6
                  slti         t4, s11, -1820
                  srli         s11, ra, 7
                  srai         zero, s1, 29
                  srai         ra, t0, 24
                  srli         t2, s8, 16
                  xori         t1, t4, -1853
                  sub          s1, s11, a4
                  lui          s6, 162311
                  nop
                  slt          t3, t3, t2
                  sll          a1, a5, a2
                  sltiu        t4, tp, 312
                  srl          s10, tp, t5
                  srai         a2, s10, 20
                  sra          s5, s2, s6
                  auipc        s10, 343665
                  andi         a1, s10, 1851
                  andi         a0, t2, -1884
                  lui          zero, 321444
                  auipc        s3, 725755
                  or           s1, t4, s2
                  xori         s2, a4, -1728
                  sra          s9, t6, s4
                  add          s0, a5, a6
                  srl          a2, gp, a4
                  sltiu        s11, s3, 815
                  nop
                  ori          sp, zero, -1409
                  addi         a7, t1, 888
                  addi         s9, s2, -620
                  andi         s2, s9, 1592
                  xori         a7, t4, -1429
                  and          t3, t0, t5
                  srai         zero, sp, 1
                  auipc        s0, 746921
                  nop
                  sltu         t1, s11, t4
                  lui          a6, 326980
                  xor          s2, a3, a0
                  or           t3, s8, ra
                  lui          t1, 314760
                  xori         a0, a2, -812
                  add          a1, s10, a5
                  sltu         s0, t6, t2
                  slt          t2, s7, s8
                  xori         t5, s5, 1036
                  xori         s10, ra, -1447
                  sltu         t2, s6, s4
                  addi         s3, a2, -1005
                  sll          a7, zero, t0
                  sltu         gp, s3, s10
                  andi         s2, t0, -600
                  sltiu        s2, a0, 1259
                  slti         s0, t3, -1618
                  sll          s1, a5, t6
                  ori          a0, zero, -56
                  andi         zero, a7, 201
                  auipc        t4, 976277
                  slli         t4, s9, 21
                  xor          a7, s10, s7
                  or           s3, a1, a4
                  auipc        s10, 424087
                  sltu         s6, s8, s3
                  sub          a1, t5, s0
                  srl          t1, s7, t4
                  srl          t6, s5, t1
                  sub          gp, zero, s11
                  nop
                  sub          a7, t4, s7
                  slt          gp, s5, tp
                  nop
                  auipc        s2, 28941
                  sll          ra, a7, t3
                  sub          t5, a7, t3
                  xori         s11, t2, 359
                  srai         s8, s3, 30
                  ori          s11, s2, 591
                  srli         s0, s0, 10
                  sub          s9, t2, t1
                  sra          a5, t5, t1
                  sltu         a6, t0, s5
                  or           ra, a0, s4
                  sll          s9, ra, a6
                  srl          a7, zero, a1
                  slti         t4, s8, 380
                  sll          t5, s8, s4
                  sltiu        s4, s2, -1365
                  slti         a5, a3, 1253
                  slti         a5, t6, -95
                  sra          t1, s7, t4
                  andi         tp, gp, -274
                  andi         s11, s6, 611
                  sll          t5, s4, s3
                  sub          s4, a2, t0
                  srai         s6, a0, 24
                  andi         s10, s2, -497
                  or           s4, a4, t2
                  srai         t1, s1, 4
                  slli         s2, s11, 8
                  slli         t5, t6, 17
                  and          s8, s11, s2
                  slt          t5, s10, s7
                  add          s5, s8, a2
                  sra          s6, s3, a0
                  sub          s5, t1, ra
                  or           a1, s11, s10
                  slti         gp, t5, -689
                  add          tp, a7, t3
                  slti         a2, t3, -1303
                  sub          zero, a7, t4
                  and          gp, s2, t3
                  and          t5, a7, s10
                  xori         t0, a7, 1700
                  srli         t1, t3, 4
                  xori         s2, t6, -1904
                  xor          t2, s5, zero
                  add          t3, s3, zero
                  xori         t2, a2, 243
                  srli         gp, s11, 18
                  sltu         s6, s8, t6
                  srai         t1, s6, 19
                  xor          s0, s11, sp
                  addi         s11, s3, -264
                  srai         s8, ra, 25
                  or           a5, tp, t6
                  add          t3, a5, t1
                  slti         t1, s10, 1114
                  addi         s6, zero, -1032
                  sub          a1, a5, gp
                  sub          s4, s2, tp
                  add          s9, t3, t1
                  sltu         a6, zero, t4
                  sub          a7, s4, zero
                  or           t0, s10, t5
                  addi         sp, t5, -870
                  addi         s1, t5, -808
                  srli         s8, gp, 4
                  andi         sp, s10, -1337
                  andi         t1, s0, 1075
                  sltiu        a2, s11, -1279
                  xor          a1, tp, tp
                  xori         sp, s1, 39
                  ori          s3, t5, -516
                  or           s11, t3, gp
                  slt          s9, s5, s11
                  xor          s10, s3, a6
                  xori         t2, zero, -1120
                  and          s3, a5, ra
                  sltu         t4, s10, zero
                  slli         t1, t2, 16
                  slli         ra, tp, 31
                  auipc        s10, 792121
                  srl          t0, t6, s11
                  srl          a1, tp, t2
                  or           sp, t0, t5
                  auipc        s10, 1044858
                  xori         t5, t0, -1794
                  and          s0, t2, s10
                  nop
                  sltu         t3, a7, a4
                  srl          t5, tp, s5
                  slt          s11, a0, a1
                  sll          s8, zero, s8
                  addi         ra, s5, -526
                  xori         a7, s2, -2003
                  ori          a6, gp, 807
                  auipc        s6, 874674
                  addi         s11, s9, 507
                  ori          t3, a2, 548
                  sll          s2, t4, a7
                  andi         tp, t6, -1463
                  add          s9, t1, a0
                  sub          s11, s6, sp
                  addi         t2, s2, 1709
                  sub          s6, s2, s0
                  srl          t6, t6, s6
                  lui          s1, 966797
                  sra          zero, s11, tp
                  slti         t1, sp, 298
                  srl          ra, sp, s7
                  lui          s6, 198932
                  addi         s9, sp, -374
                  srai         t2, t1, 31
                  nop
                  slti         t4, s6, -581
                  or           t1, s6, a6
                  auipc        t2, 311412
                  slti         s0, s11, -204
                  sltiu        t1, t1, -886
                  slti         s6, s3, -1430
                  add          gp, s2, s6
                  sub          t2, a5, t1
                  xor          t0, s9, tp
                  xori         s1, s7, 140
                  srl          ra, s4, s9
                  add          s10, a4, s10
                  and          s5, t0, a2
                  or           t3, t5, a1
                  srai         t5, sp, 26
                  ori          s10, a2, -245
                  nop
                  xor          a0, t5, a3
                  sra          t0, s5, s11
                  lui          s2, 100919
                  sll          t3, s10, s11
                  xor          sp, s10, s9
                  xori         s9, s7, 1629
                  add          s4, t6, a4
                  slli         s2, s4, 12
                  xor          t0, a0, a2
                  sltu         a1, a7, zero
                  slt          sp, s10, s10
                  sltu         s1, t5, t2
                  nop
                  sltu         sp, s5, t0
                  ori          t5, a7, 534
                  srli         zero, a6, 8
                  slti         s3, a0, 656
                  auipc        s5, 500177
                  srli         s5, t2, 2
                  addi         s11, a3, 1537
                  or           gp, t6, s6
                  andi         a0, a7, -1721
                  slti         s2, a4, -1593
                  slt          s2, a3, s8
                  auipc        t2, 715048
                  srl          t5, s4, a6
                  ori          zero, s9, 1285
                  andi         a5, sp, 22
                  and          s6, sp, s6
                  nop
                  sll          s9, sp, s4
                  nop
                  or           a5, t1, s3
                  or           a0, tp, a7
                  srai         s8, tp, 0
                  auipc        t4, 18572
                  lui          a5, 640037
                  slti         t0, t6, 1005
                  ori          t6, s2, -1169
                  srai         sp, a6, 12
                  nop
                  sltu         t2, t1, t3
                  srai         t1, a4, 24
                  sll          tp, sp, a5
                  slti         s2, gp, 1420
                  or           s4, t5, s1
                  srai         t0, s11, 15
                  slt          s11, s9, ra
                  andi         a6, t0, 862
                  srl          s3, gp, a3
                  ori          sp, t4, 1610
                  sltiu        t6, a1, 1127
                  lui          s1, 19481
                  and          t2, a5, a1
                  andi         s11, s7, -790
                  xor          a2, t5, s8
                  lui          s3, 975685
                  nop
                  xor          t1, s2, a5
                  srai         s6, a4, 23
                  xori         a7, a2, 873
                  slli         s8, t4, 28
                  slli         s10, a7, 13
                  sra          a2, a5, t0
                  sltiu        t6, t4, -1361
                  add          t0, s0, tp
                  xor          s5, s0, t4
                  andi         a1, s7, 1663
                  sra          s4, s6, s4
                  slti         t4, zero, -1791
                  srai         a1, a7, 20
                  andi         a2, a7, 1483
                  xori         s1, s11, 680
                  ori          s11, s5, 78
                  add          tp, tp, s6
                  sltu         t1, sp, s3
                  sll          s2, a6, a0
                  nop
                  slt          s1, s4, a7
                  slli         a6, t3, 11
                  srl          a2, s2, s3
                  slli         s4, a2, 19
                  slti         s0, s9, 203
                  slti         s2, t1, -1895
                  xor          s6, t5, ra
                  or           s3, s1, t3
                  nop
                  slt          s2, s5, s9
                  auipc        a6, 664184
                  xori         zero, a2, 901
                  auipc        s1, 160058
                  auipc        ra, 18509
                  sltu         t0, a7, t0
                  auipc        s11, 627536
                  xor          t0, t4, a2
                  srl          zero, a5, s0
                  srai         s11, a0, 7
                  sltu         t4, t6, a5
                  xori         s3, zero, -1606
                  sll          s1, a2, t4
                  and          tp, tp, s0
                  add          s2, t6, s7
                  sll          gp, a6, t4
                  nop
                  auipc        tp, 751273
                  srai         t5, t1, 18
                  nop
                  srl          a6, gp, s1
                  sub          t5, t4, t0
                  slt          t1, t2, a3
                  sltiu        a0, a3, -1207
                  xor          zero, s11, sp
                  or           s9, s0, a2
                  add          zero, a0, a4
                  sra          a0, a6, s1
                  ori          ra, a6, 24
                  ori          s5, ra, 82
                  slli         tp, t2, 23
                  slti         ra, s0, 1255
                  srli         a5, a7, 14
                  andi         t0, t1, -494
                  and          s2, s0, s5
                  srli         t3, s9, 20
                  slti         gp, t5, -1819
                  xori         s0, a5, -160
                  xori         s8, s10, -1773
                  srai         s1, t4, 9
                  nop
                  xor          a1, s1, sp
                  sltu         t4, s6, t0
                  srl          s11, a0, t0
                  srl          t4, s9, t1
                  sltu         s5, s1, s6
                  slti         t5, t1, -1660
                  or           a0, s1, t1
                  sra          t5, s9, t5
                  srai         a0, a0, 27
                  sub          s2, zero, t3
                  slli         a0, t5, 11
                  sub          t4, s11, a0
                  sll          s0, a1, s4
                  sra          t2, s9, s5
                  srli         s10, a6, 20
                  sub          s2, a3, tp
                  xori         s10, a1, -397
                  srl          a7, s4, s9
                  nop
                  andi         sp, s8, -784
                  addi         s1, s5, 1219
                  slt          s5, t2, s5
                  nop
                  ori          s3, sp, 1530
                  or           s6, t4, s10
                  xor          a1, s4, a5
                  srai         s5, ra, 23
                  andi         t4, s6, 2039
                  slli         t6, t4, 17
                  slti         t2, s1, -879
                  lui          a7, 895148
                  nop
                  slli         s4, t2, 2
                  sll          s6, t0, s2
                  sltu         a2, t0, a5
                  slli         s0, zero, 11
                  xori         s6, s1, 1239
                  sltu         s3, a3, sp
                  sltiu        t0, t3, -1113
                  add          a7, t4, t1
                  srai         s8, s1, 14
                  xori         a2, s5, 1115
                  srl          t5, t3, t4
                  xor          a6, t0, sp
                  andi         tp, t0, -726
                  sltu         ra, tp, sp
                  srai         s3, a1, 24
                  xori         s0, s3, 2022
                  sltu         zero, s11, a0
                  sltu         t3, t3, s1
                  add          s5, s11, s3
                  slli         ra, t1, 0
                  nop
                  addi         t4, a3, -1551
                  li           s3, 0xdb23e7b6 #start riscv_int_numeric_corner_stream_2
                  li           a2, 0xe4b61e72
                  li           t2, 0x7e306aa4
                  li           a1, 0xffffffff
                  li           sp, 0x484189fb
                  li           s9, 0x0
                  li           s8, 0x0
                  li           s10, 0x9e91b734
                  li           s5, 0x80000000
                  li           t3, 0xffffffff
                  sub          t3, a2, s8
                  lui          s9, 39105
                  lui          s8, 24157
                  add          s3, s8, s9
                  add          s9, a1, s8
                  sub          s5, sp, sp
                  lui          s9, 3003
                  nop
                  sub          s8, t2, sp
                  auipc        s3, 480746
                  auipc        s9, 572460
                  nop
                  nop
                  sub          s9, s5, sp
                  nop
                  addi         s10, s8, 117
                  add          s9, s9, sp
                  addi         s10, s3, -199
                  lui          s5, 532197 #end riscv_int_numeric_corner_stream_2
                  andi         t2, t3, 1984
                  sra          s9, s8, a3
                  li           a5, 0xc9334c97 #start riscv_int_numeric_corner_stream_1
                  li           t1, 0x80000000
                  li           s5, 0x4e343c9e
                  li           sp, 0xe7494e05
                  li           t2, 0x0
                  li           ra, 0xb1c734d1
                  li           s11, 0x7f246ecf
                  li           s9, 0x0
                  li           t4, 0x0
                  li           s1, 0x14fbae3c
                  addi         t1, sp, 425
                  sub          s11, a5, a5
                  addi         a5, s11, 1684
                  addi         s11, s5, 653
                  add          ra, t1, t4
                  auipc        t2, 772587
                  nop
                  auipc        a5, 940064
                  lui          a5, 357265
                  addi         t2, t2, -296
                  add          t1, t4, t1
                  addi         t1, t2, 759
                  lui          ra, 141952
                  sub          s11, ra, ra
                  auipc        s9, 120736
                  addi         a5, a5, 979
                  lui          s9, 200414
                  addi         t2, sp, -1331 #end riscv_int_numeric_corner_stream_1
                  sltiu        s9, t2, 2042
                  slti         a1, s3, -951
                  nop
                  add          t6, s5, t0
                  sra          a7, s7, t5
                  xor          a1, a5, s11
                  addi         gp, a2, -1444
                  srai         s5, a5, 24
                  sll          t2, a5, ra
                  sra          s2, gp, s7
                  sltiu        sp, t4, 101
                  slli         ra, s8, 13
                  srli         s9, t2, 27
                  sltiu        s1, t3, -1064
                  lui          a2, 184595
                  srl          t5, s6, s3
                  lui          zero, 29245
                  or           s8, t0, ra
                  xori         s8, a6, -918
                  srl          t5, t4, a5
                  ori          s10, a7, 1007
                  sub          s4, s0, t5
                  slli         zero, gp, 20
                  xor          t3, a5, a5
                  sltiu        s2, s9, 882
                  slli         tp, s6, 1
                  and          s4, a1, s9
                  srli         a0, a1, 4
                  add          s2, sp, a0
                  andi         t6, s2, -1776
                  and          t6, a7, zero
                  lui          sp, 284437
                  nop
                  sltiu        a2, s11, -76
                  srai         a2, s7, 7
                  add          a5, t1, t5
                  xori         a5, t3, -863
                  sra          a0, t3, t6
                  srl          a2, s2, s3
                  srl          s3, a0, a6
                  and          t5, s1, s0
                  and          a5, t4, s2
                  auipc        tp, 953683
                  and          s1, s4, a0
                  slti         a0, sp, -1347
                  addi         a6, s3, 1193
                  and          s9, a7, t1
                  sltu         t2, s4, a1
                  slli         t0, s6, 12
                  andi         s1, a2, 473
                  sll          t1, t2, t2
                  add          a7, s9, a5
                  slt          t4, s11, gp
                  sub          s8, t4, a7
                  sll          s4, tp, a2
                  xor          t4, a6, t5
                  srl          t3, a7, t4
                  ori          s3, sp, 1090
                  add          t6, s9, t0
                  sltiu        s4, t5, -1372
                  addi         t2, a6, -252
                  xor          s3, t4, t4
                  sltiu        t4, a0, -886
                  slt          s8, t3, s3
                  xori         s4, t5, 1419
                  auipc        t5, 346760
                  addi         zero, s6, 422
                  or           a6, s0, s7
                  or           ra, zero, s3
                  nop
                  srai         a6, sp, 30
                  srl          s11, t1, zero
                  sll          s4, a6, t2
                  xori         ra, s6, 1524
                  xori         t2, ra, 25
                  and          s3, a7, gp
                  andi         s6, a5, 924
                  sll          a7, a5, a5
                  addi         a6, a7, 652
                  slti         a2, t2, 1019
                  srai         s0, t6, 22
                  slli         s1, a0, 31
                  sltu         s10, s5, t6
                  slli         s2, s0, 31
                  xor          s2, t1, s8
                  or           zero, a5, s1
                  and          s5, s7, s7
                  xori         s5, s5, -1490
                  slli         s6, t1, 29
                  ori          s5, t6, 244
                  sra          s8, tp, s1
                  sltiu        s1, s1, -1733
                  sltu         tp, s5, t1
                  lui          s10, 867983
                  ori          tp, a5, -243
                  lui          s0, 926984
                  ori          s2, t2, -1775
                  srl          sp, t0, t1
                  sltiu        t2, s6, 892
                  and          s1, s0, zero
                  sltu         a7, s8, zero
                  slti         t0, a5, 29
                  lui          s4, 484248
                  add          s10, s8, s7
                  xori         s1, a7, 1829
                  and          s9, t5, t5
                  or           ra, a3, s7
                  lui          t1, 75610
                  xori         zero, a5, -82
                  srai         s8, s10, 12
                  andi         s10, zero, 1050
                  srli         t5, a5, 10
                  srai         t1, sp, 5
                  sltu         s9, t4, t0
                  and          gp, ra, s0
                  xor          t1, a2, s9
                  or           s10, s9, t0
                  add          a2, s11, s6
                  auipc        t5, 815100
                  ori          ra, s3, 252
                  addi         a7, t3, -1926
                  xor          s3, s6, a0
                  slli         s3, s4, 25
                  ori          a1, s9, 1280
                  sub          s11, a2, t2
                  sub          a6, a0, t3
                  sltu         s5, s8, s6
                  sll          a2, sp, s8
                  sra          t5, s4, t4
                  sltiu        s9, tp, -1496
                  add          s4, s11, a0
                  add          s1, tp, t4
                  andi         t1, s5, -877
                  srli         gp, t5, 31
                  srai         ra, a7, 7
                  and          s2, t1, a1
                  slli         t0, t6, 22
                  srli         gp, s11, 2
                  srai         s9, zero, 5
                  xor          gp, zero, s9
                  xor          a0, sp, zero
                  and          gp, a1, t5
                  srai         ra, gp, 17
                  nop
                  srl          s2, t1, gp
                  slt          ra, s7, a2
                  srli         s6, t5, 14
                  add          zero, s7, t6
                  slli         t6, s8, 27
                  sra          a5, s8, s3
                  sltiu        sp, s6, -283
                  sltiu        s8, a7, 674
                  addi         t2, t6, -406
                  sub          t4, s5, gp
                  sll          t0, ra, t4
                  slti         s6, s5, -1788
                  sub          a7, s8, t0
                  sltiu        s10, s3, 1907
                  slt          s2, t0, ra
                  and          s9, s3, t5
                  slli         a2, s10, 0
                  sra          a6, s1, a5
                  and          tp, a1, s10
                  xor          a1, s8, s9
                  sub          a6, s8, s9
                  xor          t5, s0, s8
                  srl          t4, t1, t3
                  slt          a7, gp, zero
                  xori         s6, s7, 1572
                  andi         tp, s10, 1859
                  srl          t5, ra, t2
                  lui          s4, 508490
                  sll          t1, gp, gp
                  sltiu        a1, s5, 399
                  sltu         s8, zero, gp
                  xori         s8, s0, 623
                  xori         ra, sp, -1575
                  sra          t2, gp, s4
                  add          t1, a2, a4
                  sltiu        a1, s5, -1171
                  sra          a1, t1, s0
                  sra          sp, t4, s6
                  nop
                  srli         a0, t5, 21
                  nop
                  nop
                  slli         t3, t0, 5
                  sltiu        s5, s4, 1546
                  andi         s0, t1, 1033
                  sub          t0, t3, zero
                  srli         a0, ra, 2
                  andi         a7, s10, 1038
                  srli         gp, s5, 16
                  auipc        a7, 330906
                  ori          a1, s1, 1327
                  add          s11, a7, s2
                  slt          gp, t4, s6
                  sub          s8, a7, sp
                  sltu         a6, sp, s6
                  srli         a6, a2, 9
                  srli         s8, s11, 12
                  ori          s3, t0, 1729
                  xor          s0, s2, t1
                  slt          s8, a7, ra
                  add          s9, s10, s6
                  and          t3, t5, s10
                  andi         ra, s4, 968
                  or           s3, s1, t6
                  ori          s2, gp, 1445
                  slt          a2, gp, zero
                  srli         t3, t3, 8
                  xori         a5, tp, -345
                  sll          s11, ra, tp
                  andi         a6, s10, -1704
                  ori          ra, s10, -1818
                  sltiu        s6, a5, 375
                  ori          a1, a4, 119
                  sltu         a7, s10, s8
                  add          a2, s1, s1
                  and          s8, s8, a7
                  srli         s9, t2, 20
                  add          sp, a0, a0
                  sll          t1, t4, gp
                  addi         t1, t2, 165
                  sra          t0, a7, sp
                  sra          t3, a5, s2
                  srai         s5, sp, 23
                  add          s3, s8, t2
                  ori          t2, a6, 75
                  ori          t2, zero, 622
                  xori         t5, s4, 1731
                  lui          s9, 921865
                  lui          t1, 317581
                  nop
                  or           t0, s9, t6
                  slti         sp, t4, 1529
                  srl          a2, s6, t1
                  add          s2, gp, s9
                  srl          s1, a3, s6
                  addi         s3, a0, -1153
                  sub          a0, tp, a5
                  andi         t2, t2, 270
                  auipc        a6, 118632
                  lui          s0, 903171
                  add          t1, s1, a0
                  sltiu        a5, a7, 1451
                  sll          s0, s8, t3
                  sra          t5, s5, s9
                  xori         s0, a6, 1184
                  and          s1, s6, t3
                  andi         a7, t0, 1932
                  sra          s10, a2, ra
                  srai         t4, tp, 27
                  and          t2, t5, a5
                  srl          s5, a4, sp
                  slt          t6, tp, s2
                  xori         a6, zero, 109
                  lui          a5, 573973
                  slti         tp, s11, -438
                  andi         ra, a5, 1058
                  addi         gp, zero, 1057
                  nop
                  srai         t1, ra, 10
                  srli         t0, s8, 7
                  slli         s11, a0, 20
                  slli         t0, t1, 11
                  xor          s2, s11, t0
                  addi         t3, a3, -459
                  xori         t0, t6, -725
                  sltu         s11, s0, gp
                  slt          t4, a3, s2
                  andi         a1, t0, -1242
                  sltu         t4, t6, ra
                  sltu         t6, a3, s2
                  addi         a6, s3, -1157
                  addi         s4, s11, 273
                  and          a5, t4, s9
                  andi         t1, s7, -1963
                  xor          a5, gp, tp
                  lui          a6, 498839
                  sra          a6, t6, s0
                  sra          gp, s0, t6
                  and          t2, s11, a5
                  and          s8, t0, s1
                  sra          a5, s3, s0
                  sll          s3, s3, s3
                  sra          a6, t1, s8
                  andi         s11, s0, 1522
                  auipc        a2, 192086
                  addi         s6, s7, 1792
                  slti         t0, s7, 1978
                  auipc        t4, 740913
                  sll          s1, s8, s8
                  xori         tp, zero, -1454
                  ori          s10, s0, -283
                  xori         s10, ra, 1280
                  and          a1, a5, s2
                  and          t4, s7, s9
                  ori          t4, a5, -1662
                  nop
                  addi         a7, a5, 1360
                  nop
                  sltiu        a6, s5, 1515
                  or           gp, s8, t1
                  srl          s5, t2, s7
                  xor          gp, gp, t1
                  sll          a5, t5, t2
                  xori         tp, s2, -993
                  slli         a6, t1, 27
                  slli         s11, ra, 29
                  sll          s5, t1, tp
                  and          t1, s2, s5
                  slli         t6, s4, 4
                  ori          gp, a3, -997
                  nop
                  and          s5, s3, t6
                  xor          t6, s9, a4
                  nop
                  xori         t2, a4, 480
                  lui          tp, 532694
                  srai         t4, s5, 1
                  nop
                  sll          s6, t4, sp
                  sll          s3, s8, t6
                  auipc        s4, 147493
                  add          a5, t1, sp
                  auipc        s1, 964824
                  slt          a1, t4, a2
                  and          t2, t3, a5
                  sltu         s3, a4, s11
                  slti         s6, t0, 1081
                  slti         a2, a2, -1312
                  slli         a7, a1, 12
                  srl          a2, t6, a4
                  sll          ra, tp, s2
                  ori          s8, s7, -632
                  slti         zero, tp, -1072
                  sll          s6, s9, tp
                  sltiu        a7, gp, -1926
                  slli         s10, s1, 9
                  ori          s2, gp, -1128
                  srli         s9, t5, 14
                  sub          t4, t2, gp
                  slti         tp, t6, 1851
                  ori          a0, s1, -1218
                  xor          t6, ra, s8
                  add          s4, a4, t5
                  xori         t2, t1, 1043
                  and          s9, s0, s4
                  ori          a6, s5, -1941
                  nop
                  xori         t3, s10, -80
                  and          t0, s7, s6
                  addi         s3, zero, 1588
                  srai         s0, zero, 22
                  slti         a6, zero, 471
                  add          s1, a7, a0
                  srli         t5, s9, 30
                  add          ra, a6, t3
                  xori         s1, zero, -1090
                  andi         s3, s11, 597
                  auipc        t5, 814078
                  addi         tp, s11, -1566
                  lui          t3, 990447
                  slti         s3, s11, 55
                  andi         gp, s11, 1257
                  srai         a5, s7, 2
                  or           gp, s8, a3
                  andi         s2, s2, 1170
                  sltu         tp, s11, a2
                  slli         s9, t2, 29
                  addi         t2, s4, 1335
                  sltu         t5, s7, s8
                  ori          t0, s11, -1443
                  sll          a1, t4, sp
                  lui          gp, 47038
                  srl          s5, s0, s3
                  srai         t4, a6, 0
                  or           t0, a7, zero
                  srl          s8, t1, t4
                  slt          a0, s7, tp
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           gp, 0xad8afd7
                  li           a5, 0x80000000
                  li           s4, 0x0
                  li           s10, 0x45ac6891
                  li           ra, 0xaa910d0f
                  li           a1, 0x80000000
                  li           s5, 0x6526fba2
                  li           s2, 0x0
                  li           t6, 0x0
                  lui          t6, 166556
                  addi         ra, s10, -41
                  auipc        s5, 105175
                  auipc        a5, 149052
                  lui          s4, 390889
                  sub          s5, s5, a1
                  add          a1, s10, s4
                  nop
                  nop
                  addi         s5, ra, -1782
                  sub          t6, s4, s4
                  addi         a1, s2, 704
                  sub          t6, s10, s10
                  addi         t6, s2, 214
                  sub          s4, s2, t6
                  add          a6, s5, s4 #end riscv_int_numeric_corner_stream_15
                  addi         t3, s6, 1513
                  sltu         s4, s4, tp
                  xori         s1, a4, -1900
                  slt          t4, t3, s7
                  srai         s9, t2, 2
                  sra          s0, a2, s4
                  srl          t4, a2, s4
                  ori          t5, t4, -1812
                  srai         zero, s2, 15
                  and          a1, gp, t2
                  nop
                  ori          s3, sp, 1979
                  lui          a1, 973402
                  slt          a2, t2, a4
                  and          s5, s4, s3
                  sra          s6, a5, a4
                  or           tp, s7, ra
                  srl          ra, s7, a3
                  add          gp, sp, s6
                  sll          t1, gp, t0
                  sltiu        a0, s11, 1374
                  srli         tp, a0, 21
                  srli         s9, t4, 29
                  sra          s0, ra, tp
                  ori          t3, s3, 300
                  or           sp, s7, s5
                  slli         t3, a1, 1
                  sltu         t5, s0, t4
                  srli         a0, s3, 21
                  slti         zero, a1, -2029
                  srli         t0, gp, 24
                  slt          sp, t4, ra
                  sub          s1, s2, s6
                  srli         a2, s10, 1
                  lui          t1, 958040
                  slt          gp, a0, s2
                  srai         s6, s4, 30
                  auipc        s4, 625497
                  sub          gp, ra, tp
                  xor          s8, ra, zero
                  slli         t0, a2, 4
                  and          t5, s1, t1
                  or           a5, s3, s8
                  srli         s4, zero, 8
                  sub          zero, a0, t2
                  addi         t5, s10, 943
                  auipc        t0, 636092
                  xor          t5, a3, t1
                  slt          a2, s6, s5
                  slli         s1, t2, 10
                  slli         t0, t5, 9
                  slli         t6, tp, 14
                  sub          s1, s9, sp
                  slt          t1, s8, a3
                  slt          s4, s0, a6
                  ori          t1, t3, 1181
                  slt          t2, a3, sp
                  addi         s8, s5, -524
                  slt          a2, tp, a5
                  addi         zero, a0, -1386
                  add          a1, t0, tp
                  or           s1, gp, s0
                  slt          a7, a6, s3
                  srl          zero, a0, t5
                  slti         s4, s8, 1889
                  nop
                  xori         a5, s3, 1120
                  sltu         a0, ra, s9
                  slli         tp, a7, 9
                  sltiu        t4, tp, -1081
                  sra          t4, a5, s8
                  xor          t4, t2, s0
                  lui          s6, 219797
                  slti         s2, gp, 200
                  srai         t5, a3, 0
                  or           t1, a0, s1
                  lui          tp, 328483
                  slli         s2, zero, 12
                  slt          t0, s7, s5
                  ori          s10, s1, 983
                  ori          s1, s11, -1956
                  sll          t3, s10, sp
                  slt          a1, t0, t3
                  slli         t1, s11, 10
                  addi         s10, s4, -1214
                  lui          t0, 301252
                  xor          s10, t5, a6
                  sltu         s4, t5, ra
                  srli         s10, s5, 26
                  slli         a6, s5, 11
                  slli         sp, s2, 9
                  srai         s5, zero, 28
                  slli         ra, a6, 27
                  slt          s8, s2, s8
                  srli         a0, a2, 7
                  sltu         tp, s7, s2
                  srl          t2, t3, t3
                  lui          s8, 176759
                  auipc        a7, 316366
                  add          t0, t3, t5
                  auipc        s6, 888330
                  slli         s2, s4, 1
                  and          t2, s2, sp
                  lui          a5, 950646
                  sub          s6, s6, s3
                  add          s8, t5, t2
                  auipc        t2, 536647
                  sltu         a7, a2, s6
                  sltiu        s8, t3, 1615
                  srai         s11, s8, 19
                  sltiu        a7, s7, -1515
                  add          t5, s6, gp
                  add          s5, a2, tp
                  sll          s4, a4, t2
                  and          a0, t6, t3
                  srli         a2, s6, 17
                  sll          a5, a1, s11
                  sra          s1, t4, s1
                  lui          zero, 350458
                  xor          t5, sp, tp
                  slti         zero, s9, -733
                  slt          s5, t2, gp
                  sub          gp, a5, s9
                  and          t4, s0, a1
                  and          t1, t4, a7
                  srli         gp, zero, 21
                  srai         a0, t0, 30
                  srai         s9, a7, 7
                  xor          s0, t0, ra
                  addi         a7, s2, -1020
                  sltu         s11, t3, a2
                  sub          t6, a6, t1
                  nop
                  and          a2, gp, t1
                  lui          s9, 915137
                  sub          ra, s5, gp
                  srai         a6, s9, 30
                  slt          gp, t2, s11
                  ori          s9, t6, 340
                  andi         s11, t6, 1882
                  srl          t0, s6, tp
                  xor          s10, s9, s2
                  srai         t5, s3, 2
                  ori          t3, s5, 213
                  andi         s5, tp, -1629
                  andi         t4, gp, -394
                  sub          s8, s10, s5
                  slt          s9, a1, gp
                  xor          t5, t3, s5
                  andi         s8, t1, -1393
                  srai         a0, t3, 4
                  add          s8, a1, s2
                  sra          s1, a1, s7
                  srai         a0, s6, 13
                  or           a5, sp, tp
                  ori          ra, s3, -428
                  srl          a6, a0, s8
                  sra          zero, t4, sp
                  sub          t2, s10, a4
                  sub          a0, a4, t4
                  addi         t2, t3, -253
                  or           zero, zero, a2
                  srl          sp, s7, zero
                  and          a0, s11, s7
                  slt          t4, s2, tp
                  nop
                  or           s11, s11, t3
                  andi         s3, gp, -1809
                  srai         a1, a5, 21
                  sra          a1, s6, a5
                  andi         t6, s1, 262
                  add          t1, a1, sp
                  nop
                  andi         a0, s0, 703
                  addi         a6, a1, 1398
                  xor          a1, zero, zero
                  srai         s6, s7, 26
                  sub          t0, s11, t0
                  sra          s11, s7, a0
                  sltu         s5, s0, s10
                  srai         s8, a6, 16
                  nop
                  srli         s10, a0, 5
                  sltiu        ra, t1, -183
                  and          t0, s1, s9
                  slti         tp, s6, -1488
                  srai         a1, s8, 0
                  srai         ra, gp, 18
                  sll          t4, s1, a5
                  andi         s0, a0, 642
                  slti         t2, t3, 304
                  or           s3, s1, t3
                  addi         a5, t4, 1707
                  srl          tp, s7, zero
                  slli         gp, t2, 29
                  andi         a1, s11, -1221
                  srl          s4, s4, a6
                  slti         s11, s10, -784
                  sltiu        t4, s9, -1700
                  srli         t0, s4, 11
                  sltiu        t4, gp, 318
                  sra          s10, s6, t1
                  nop
                  sltu         t0, a7, a3
                  addi         a1, a2, 1966
                  slli         s10, s3, 16
                  xor          ra, a7, a3
                  xor          s11, sp, tp
                  srai         ra, sp, 22
                  sltu         s8, tp, a2
                  nop
                  xori         t5, s2, -1195
                  sub          s4, s6, a2
                  nop
                  sll          a6, s9, s7
                  sltu         a2, gp, s7
                  ori          s11, s9, 1217
                  nop
                  nop
                  add          t0, a7, t4
                  addi         a6, a6, 1582
                  xori         s3, zero, 1311
                  xori         a6, s5, 2045
                  xor          a2, s7, t4
                  addi         a5, s1, 206
                  srli         a1, t6, 27
                  slt          s8, zero, a4
                  slt          a5, ra, s7
                  add          t6, s9, s8
                  addi         t2, s2, -906
                  srli         t0, a5, 16
                  sra          s6, s10, gp
                  or           a5, a1, s5
                  srli         zero, s2, 2
                  srl          s9, a6, t4
                  lui          s2, 941518
                  auipc        s9, 821893
                  slti         s4, a2, 891
                  xori         t2, t3, 1133
                  sub          t6, t3, s6
                  add          s10, s2, a5
                  xor          t6, ra, s4
                  sra          gp, a0, a3
                  sub          sp, a2, tp
                  sub          a7, t3, t6
                  and          s3, s5, a0
                  ori          s5, a5, 912
                  add          t5, ra, t3
                  sra          t6, t6, a3
                  sltu         s9, s10, s8
                  auipc        s11, 472714
                  li           a1, 0xd4ba3283 #start riscv_int_numeric_corner_stream_17
                  li           s5, 0x0
                  li           gp, 0x80000000
                  li           t3, 0xffffffff
                  li           t2, 0x0
                  li           t5, 0x0
                  li           t0, 0x80000000
                  li           s9, 0xffffffff
                  li           tp, 0xc43e8902
                  li           s1, 0xba64e131
                  add          s1, t2, a1
                  sub          s9, gp, s1
                  add          s9, tp, gp
                  add          t3, s1, t3
                  lui          tp, 117231
                  sub          t0, t3, a1
                  add          s9, s9, a1
                  addi         t0, t5, 912
                  nop
                  lui          s9, 562944
                  add          s9, t5, t5
                  auipc        t3, 119742
                  add          t5, a1, a1
                  sub          t2, s1, s5
                  auipc        gp, 603779
                  addi         t3, s1, -699
                  lui          s5, 457129
                  nop
                  auipc        gp, 88493
                  sub          s9, t0, s1
                  auipc        gp, 355777
                  auipc        s1, 527858
                  sub          t5, a1, s9
                  add          t5, a1, t0
                  lui          t2, 83386 #end riscv_int_numeric_corner_stream_17
                  andi         s10, a6, -1124
                  lui          a0, 171551
                  sltiu        t4, a2, -93
                  sub          s9, sp, s3
                  srai         t3, tp, 2
                  srl          gp, s4, t5
                  sub          a0, s7, a3
                  xori         a7, a0, 60
                  sub          s0, t5, s9
                  xor          t2, a1, a0
                  srli         s8, a2, 11
                  nop
                  lui          s4, 206395
                  add          s9, a5, a1
                  slli         s6, s2, 22
                  xor          a1, t6, t2
                  xor          s10, a1, ra
                  andi         s11, t0, -882
                  srl          t1, a1, t3
                  slti         sp, t3, -377
                  or           t1, s0, tp
                  add          ra, a0, tp
                  sll          s2, a1, t5
                  slt          s6, a3, s0
                  sltiu        s3, s3, -1333
                  auipc        s0, 802804
                  slt          sp, t5, s4
                  xori         s1, t6, -841
                  auipc        s10, 64857
                  addi         t5, s8, -917
                  sll          a6, t0, t2
                  sll          s1, t0, a4
                  slt          a5, s2, s0
                  xori         t2, t4, 482
                  slti         a2, s1, -710
                  addi         gp, a7, -1721
                  xor          s11, s0, t6
                  xori         s3, a7, 418
                  auipc        gp, 754471
                  add          zero, t3, s5
                  andi         s1, t4, -156
                  addi         s10, s1, 1964
                  add          ra, s11, t3
                  andi         zero, ra, -387
                  nop
                  xori         s1, gp, -1213
                  sub          a7, s8, s4
                  sll          s0, s3, tp
                  ori          s0, a4, -1945
                  srli         s2, a0, 30
                  srli         a2, a1, 5
                  xor          a5, t4, a5
                  andi         s3, t1, 209
                  sra          t4, t5, zero
                  sra          t1, s3, t2
                  nop
                  xori         tp, a3, 271
                  nop
                  sltiu        t1, a1, -468
                  slli         s8, s7, 11
                  slti         t5, s6, -218
                  srai         t3, s3, 15
                  auipc        ra, 931763
                  andi         a5, t4, 1798
                  xor          t0, s2, ra
                  or           t2, a0, gp
                  sub          s9, a6, t2
                  slt          a5, a1, t0
                  addi         s1, t3, 1382
                  sra          sp, a6, s5
                  nop
                  sub          t1, t2, s3
                  xori         a7, t0, -999
                  sltiu        t1, a4, -1070
                  srli         s8, a5, 6
                  or           s10, a2, a6
                  sra          s10, a0, s7
                  sltiu        t6, a4, 443
                  and          s8, s3, gp
                  andi         s0, tp, -835
                  slli         ra, s3, 30
                  nop
                  srl          a5, t3, ra
                  srli         a1, s9, 12
                  xor          s4, s3, a2
                  add          t1, a0, s5
                  sra          s9, s0, s7
                  srai         a2, a1, 21
                  nop
                  sub          s9, a2, a1
                  sra          s8, s5, a5
                  xori         t0, t3, 492
                  nop
                  auipc        s9, 997178
                  slli         t5, sp, 24
                  ori          t6, s3, 1307
                  slli         s10, s11, 14
                  and          a1, s8, a1
                  slli         a7, s3, 25
                  xori         s9, s0, 487
                  slt          a0, t6, s8
                  addi         s10, a3, -473
                  sra          a7, gp, t4
                  ori          sp, t2, 1028
                  sll          s5, a3, zero
                  srai         zero, t0, 30
                  addi         a0, s3, 590
                  add          s0, s9, ra
                  andi         s1, a7, 139
                  xori         gp, s6, -512
                  andi         a0, s3, -1536
                  slti         a6, ra, -548
                  auipc        a6, 495424
                  nop
                  slli         tp, t2, 0
                  slti         t2, t4, -106
                  slli         s5, t4, 14
                  slli         zero, s4, 4
                  slt          s3, s9, a3
                  lui          t4, 729047
                  or           t4, sp, t5
                  srl          tp, s1, ra
                  or           s5, a3, a2
                  xori         a0, s10, 434
                  srai         t1, a1, 18
                  srai         gp, gp, 18
                  sll          t2, sp, t1
                  slli         tp, t1, 26
                  srai         t0, t0, 12
                  xor          s0, a4, s4
                  add          sp, a6, a3
                  andi         s6, s7, 726
                  or           t4, t3, a7
                  addi         t0, t2, -1077
                  or           t4, t3, a4
                  slt          s5, tp, s3
                  andi         t0, a7, 1014
                  xor          ra, a2, s11
                  ori          zero, a2, 1134
                  ori          a0, t3, 688
                  srl          t0, s7, s5
                  addi         t1, gp, -1614
                  sra          s4, a0, t3
                  lui          s0, 725219
                  sltu         a1, a5, t1
                  sub          a6, s1, s0
                  sltu         t1, s11, t5
                  xori         a0, a4, 1615
                  slli         a2, a7, 5
                  srl          s6, sp, a7
                  slli         s11, t6, 24
                  srl          zero, s6, a1
                  or           s8, t5, t2
                  xor          s10, a3, s11
                  xor          s8, gp, t6
                  add          a0, s5, a5
                  sll          t1, t2, s9
                  or           s4, a2, a5
                  slt          a6, tp, s9
                  xori         t6, a4, 567
                  slt          s9, t6, s2
                  andi         s9, t3, 865
                  or           s9, zero, t0
                  sltiu        a7, t6, -434
                  lui          s1, 614645
                  nop
                  xor          ra, t0, t0
                  srai         t5, s7, 16
                  srai         s6, t5, 18
                  srl          s0, s10, s5
                  lui          s8, 589903
                  slt          tp, t1, ra
                  and          s6, a6, t6
                  srai         s10, t3, 11
                  srli         s1, t0, 20
                  nop
                  sub          s9, s10, s6
                  sub          a7, s9, sp
                  sll          sp, s8, s10
                  auipc        a1, 736408
                  slt          t2, a2, a6
                  slti         t5, a7, 393
                  or           a2, s0, s5
                  sltu         s2, t6, tp
                  srli         s9, s5, 18
                  sra          s2, s8, a0
                  sub          a5, a3, t1
                  lui          a2, 258632
                  slli         s11, s8, 2
                  sltiu        t5, ra, -1112
                  lui          s6, 1003567
                  sub          ra, ra, a4
                  slti         t2, t3, 155
                  sra          a5, ra, t5
                  srli         t6, a2, 7
                  srl          s2, a0, a0
                  add          s0, a1, zero
                  nop
                  srl          tp, a3, t5
                  sltiu        s2, ra, 2003
                  add          zero, sp, a7
                  slti         s9, s5, 1880
                  slt          t5, s1, a2
                  srli         sp, s6, 24
                  andi         s11, s9, -1579
                  lui          a0, 627298
                  sltu         s9, a5, t2
                  sltiu        t0, s0, 252
                  sra          a7, s1, t3
                  add          gp, s9, t4
                  ori          s3, s9, 1175
                  srli         s9, s7, 15
                  sub          a0, s6, ra
                  sll          a0, gp, t1
                  nop
                  addi         a0, s11, -1643
                  xor          s0, s3, a5
                  sub          t2, s6, t3
                  and          s4, t2, a5
                  ori          t1, a4, -787
                  srai         a1, a3, 10
                  slt          a2, s7, tp
                  addi         s10, tp, 727
                  addi         zero, a4, 367
                  and          gp, a1, s8
                  sra          s9, a3, s9
                  srli         s10, t1, 25
                  xori         s0, ra, 638
                  ori          gp, s9, 804
                  slt          t0, s11, t0
                  srli         t4, a7, 30
                  sltiu        tp, ra, -465
                  auipc        t0, 22331
                  addi         s11, a6, 564
                  add          s11, s4, s5
                  andi         s2, a0, -516
                  srl          t0, s1, t4
                  ori          s3, zero, 112
                  ori          t6, a1, -62
                  nop
                  addi         t5, s10, 1316
                  srai         zero, a0, 28
                  add          tp, a2, a6
                  sltiu        a5, gp, -444
                  ori          s9, zero, 745
                  slti         s6, t6, 1471
                  add          s9, t6, t3
                  slt          s10, s10, s1
                  or           sp, sp, s10
                  srl          s11, s11, t3
                  or           t2, s2, t0
                  andi         s10, tp, 1481
                  slti         s0, s8, 1833
                  sub          s1, sp, a2
                  sub          t1, s2, s10
                  sltiu        s4, s1, 1664
                  ori          t1, sp, 446
                  xor          ra, t0, a6
                  sub          s1, a5, s11
                  srli         a0, a7, 22
                  and          tp, a7, t2
                  sltiu        s6, s0, 860
                  andi         s9, s9, -802
                  sub          t3, a2, s9
                  lui          a1, 920084
                  xori         a7, t5, 861
                  slt          s4, t3, s2
                  sll          sp, s4, t4
                  or           s8, s8, s5
                  addi         t6, t2, -1203
                  nop
                  lui          s4, 348433
                  add          tp, sp, s9
                  slli         s4, gp, 11
                  srli         sp, t3, 23
                  sll          t0, s4, s11
                  srai         a1, a4, 28
                  sltiu        tp, s2, -698
                  nop
                  xori         t1, ra, 1419
                  srl          s10, gp, a6
                  sra          gp, s6, a4
                  sltiu        s0, a2, 2023
                  or           gp, t3, s0
                  and          t5, s0, t1
                  srl          gp, s4, a0
                  xori         a6, a4, 1914
                  auipc        t6, 641984
                  srl          t5, gp, a7
                  slli         s2, s0, 12
                  nop
                  slli         s9, ra, 1
                  addi         t0, s3, -1218
                  ori          a1, t5, -961
                  auipc        s4, 731305
                  srl          s9, t4, t5
                  sltu         a0, t4, a2
                  xor          s11, a4, gp
                  slli         t2, t2, 3
                  sub          s10, t5, s8
                  auipc        a7, 265766
                  slli         a5, gp, 8
                  slti         s9, a2, 1069
                  lui          s10, 587375
                  xori         a0, s10, 407
                  sltu         tp, s6, t4
                  sltu         a7, a0, s3
                  ori          s1, t6, -572
                  sltu         s8, t3, a6
                  ori          ra, a0, -1585
                  lui          t6, 898502
                  addi         s4, t3, -648
                  add          a1, a4, s5
                  slt          a1, s11, t4
                  addi         s0, s8, 333
                  andi         a0, t1, -1800
                  srai         a1, t4, 7
                  srai         s0, t5, 18
                  srli         s6, s6, 4
                  xor          t6, sp, s8
                  sltiu        ra, s6, 1269
                  addi         s3, t1, 1684
                  slli         t0, s2, 4
                  sltu         t4, a5, s4
                  sltiu        t3, a5, 1412
                  slli         sp, t5, 24
                  addi         zero, s0, 1204
                  slti         t2, s8, 1826
                  sltu         s10, s9, t4
                  addi         s9, s0, -499
                  and          s3, zero, a0
                  sub          s1, t0, s5
                  or           s4, t5, a1
                  ori          zero, t3, -549
                  and          t2, s5, s2
                  xor          a5, s1, gp
                  slti         s11, t6, -1533
                  xori         s9, a5, -1283
                  ori          s1, s3, 1840
                  slti         a5, s11, -1689
                  sll          a0, gp, s7
                  andi         ra, ra, 1352
                  ori          tp, s3, 1861
                  or           a5, gp, t3
                  add          s0, t3, tp
                  sltu         ra, zero, a1
                  slti         t5, gp, -1111
                  slti         s3, s6, 1902
                  srl          t6, s5, t2
                  auipc        t3, 223316
                  slt          s6, a6, s8
                  addi         s10, s8, -637
                  sra          s11, a5, sp
                  xor          s3, a0, ra
                  andi         s10, a5, 610
                  and          a0, gp, tp
                  srai         a0, s8, 15
                  nop
                  and          sp, a5, s6
                  addi         a0, s3, 2043
                  andi         s6, zero, 93
                  sub          s10, ra, a7
                  or           s6, sp, a6
                  andi         a0, gp, -1310
                  slti         t0, a5, -566
                  auipc        a5, 541574
                  slt          sp, t2, a6
                  lui          s5, 864229
                  sub          t3, a6, a7
                  addi         t5, s3, -598
                  sra          t3, a3, gp
                  sra          s3, t2, s3
                  andi         gp, a1, 1121
                  addi         s9, zero, -598
                  andi         s10, s2, 158
                  add          s10, t4, t0
                  sll          a0, s2, s9
                  sltu         t0, s11, t3
                  slti         tp, zero, 1385
                  sltiu        t1, t3, 1784
                  ori          s8, t3, 1297
                  auipc        a2, 403338
                  xor          t6, s4, s9
                  sra          a6, s0, s7
                  sra          t5, s3, t1
                  xor          s9, s7, a2
                  slti         t3, sp, -41
                  sra          s2, a1, s9
                  nop
                  or           s0, s4, t4
                  lui          t3, 620721
                  srli         gp, t1, 3
                  srli         s5, s10, 18
                  and          s1, s9, a3
                  sll          a2, a3, a2
                  sltiu        s8, s1, 1423
                  slti         a0, s11, 46
                  add          t3, s7, s8
                  andi         s1, sp, -1829
                  lui          s5, 666435
                  lui          s6, 896714
                  xori         s8, ra, 836
                  andi         tp, s1, -1540
                  srai         a6, s6, 17
                  add          s3, t5, s4
                  lui          a0, 639045
                  andi         s5, a1, -688
                  addi         tp, s4, -377
                  sll          t0, a2, a5
                  sll          a1, a2, gp
                  sll          sp, s5, a3
                  sll          a2, t3, a2
                  addi         s4, s5, -1832
                  nop
                  or           s9, s7, s5
                  sub          s9, a3, t5
                  sll          s5, a4, a7
                  sra          gp, s8, t4
                  slti         t4, s5, 436
                  lui          s1, 1025705
                  sll          a5, s6, gp
                  srli         a1, a4, 20
                  auipc        t6, 594257
                  or           s5, a1, a0
                  sltiu        t2, s1, -1693
                  andi         t4, t1, 508
                  andi         a6, t4, -1753
                  sll          s8, t1, t2
                  lui          s4, 152240
                  sra          s5, s10, t5
                  nop
                  ori          s3, s5, 31
                  nop
                  xori         ra, s3, 840
                  ori          s5, t1, 1916
                  sll          a6, s0, ra
                  sra          a0, zero, t6
                  slt          t5, s1, a5
                  add          a6, a6, a2
                  srli         a7, t5, 27
                  sltu         a0, t3, t4
                  sub          s3, s2, s9
                  sll          t6, s1, s7
                  sra          s0, s11, gp
                  andi         a7, s3, 1512
                  lui          a6, 379462
                  nop
                  sltiu        a6, zero, -1759
                  slli         t4, s6, 1
                  slti         t4, t3, 418
                  sltiu        s9, s3, 509
                  sltu         zero, s6, a7
                  srl          sp, s9, s11
                  slli         s11, s5, 10
                  slt          tp, a1, s3
                  and          t0, s8, a2
                  lui          t1, 717766
                  auipc        t3, 671316
                  auipc        a2, 307258
                  or           s1, s7, zero
                  add          s11, t0, a3
                  sra          t4, s2, a2
                  sll          a6, a3, s4
                  slt          tp, s5, a6
                  slti         a0, a2, -753
                  slti         t0, t0, -409
                  xori         t2, s5, 224
                  addi         gp, s10, -1939
                  nop
                  srl          s10, a1, a3
                  auipc        s10, 365829
                  ori          t3, a4, 1646
                  sltiu        a2, t2, -367
                  srai         s5, a2, 8
                  andi         a5, gp, 807
                  srai         s0, a3, 31
                  ori          t4, t4, 674
                  lui          s8, 912391
                  addi         a1, t6, -1036
                  sub          t0, t4, t4
                  xori         t4, s9, -109
                  auipc        t5, 938320
                  or           s2, gp, t1
                  srli         t2, a6, 12
                  slli         tp, s6, 13
                  or           tp, s7, s6
                  srl          gp, a4, a1
                  sltiu        s8, zero, 1004
                  sll          a7, a7, s11
                  sltu         s5, ra, s3
                  ori          a5, s7, 1206
                  lui          a2, 405941
                  ori          sp, t4, 1067
                  xor          s0, a2, a4
                  add          a5, gp, s8
                  and          gp, t6, gp
                  sll          a1, s11, s3
                  or           tp, t0, a2
                  sll          s10, gp, a1
                  sub          tp, t0, t2
                  addi         s9, t1, -1274
                  or           tp, t3, a6
                  nop
                  lui          a0, 436542
                  sll          a1, t5, t6
                  ori          a7, s11, -416
                  sltiu        tp, s4, 1603
                  andi         t1, zero, 1661
                  nop
                  nop
                  xor          sp, s0, a0
                  srl          a0, a7, s9
                  sltiu        s2, s10, -364
                  sltiu        a5, t5, 1643
                  ori          t5, s3, 190
                  ori          t0, s4, 631
                  or           zero, a0, zero
                  addi         t2, s2, -1546
                  srl          sp, t5, a4
                  xori         s8, a6, -1425
                  nop
                  sra          a6, s3, s10
                  sltiu        s1, tp, 1272
                  sltu         s8, s3, t6
                  add          s6, a2, t5
                  sra          ra, s9, a3
                  xori         a5, ra, -1208
                  and          gp, t4, a4
                  add          s11, s0, t6
                  add          s11, s5, t2
                  sltu         ra, ra, a3
                  xori         a1, s8, 1642
                  srai         tp, a5, 1
                  auipc        a5, 957092
                  slt          s2, t4, a3
                  ori          t2, s2, -1117
                  sltiu        s2, s0, -317
                  slti         a0, a4, 1369
                  srli         s3, t0, 29
                  sltiu        s10, s6, -886
                  sll          s0, t3, a7
                  or           ra, a1, t5
                  lui          zero, 8464
                  sra          s0, s6, t0
                  auipc        t6, 515094
                  slli         gp, t3, 10
                  auipc        s8, 807216
                  slti         sp, s8, -946
                  slti         t6, a2, 259
                  lui          a6, 759295
                  addi         s4, zero, 692
                  add          s2, s3, a1
                  slt          t0, ra, s2
                  srl          a7, t5, s8
                  sub          a1, zero, a0
                  xori         gp, s5, 117
                  sra          s9, s11, s9
                  auipc        t4, 704691
                  srai         s9, a4, 1
                  nop
                  srli         a5, t5, 14
                  sub          a6, s8, s10
                  sra          zero, s8, t5
                  ori          tp, s3, -226
                  xori         sp, t6, 421
                  sub          t4, s11, t4
                  add          s3, a0, t3
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           s10, 0x80000000
                  li           a7, 0xffffffff
                  li           s1, 0x0
                  li           a6, 0x0
                  li           a1, 0x0
                  li           s2, 0x80000000
                  li           s0, 0x2292a774
                  li           a2, 0x0
                  li           s5, 0x7950220
                  lui          t4, 272774
                  sub          a7, a1, a2
                  nop
                  add          a7, s10, t4
                  auipc        s1, 429985
                  add          a1, s0, a6
                  sub          s0, s10, a1
                  sub          t4, a2, a2
                  nop
                  lui          a1, 56994
                  nop
                  nop
                  addi         t4, a1, 1440
                  add          a7, s2, s0
                  sub          s0, t4, s0
                  sub          a7, a6, a1
                  sub          s10, s1, a2
                  auipc        a2, 461407
                  nop
                  auipc        a6, 887915
                  lui          s2, 601159
                  lui          s0, 185920
                  nop #end riscv_int_numeric_corner_stream_10
                  sltiu        t4, sp, 669
                  srai         s6, zero, 10
                  sll          a5, s5, a5
                  addi         s2, t5, -120
                  srl          s2, a5, a2
                  add          t0, s6, a6
                  ori          s3, a5, -1420
                  slt          t2, s1, s0
                  sra          s1, s11, s11
                  sltiu        s5, s2, -1028
                  xori         t3, ra, 1594
                  slt          t1, s5, s10
                  sub          t6, a5, s3
                  sltiu        t2, a6, 1821
                  slti         s4, t4, 252
                  ori          t3, a0, -1252
                  sub          s9, a2, tp
                  slli         t6, gp, 2
                  xori         a6, t3, 2028
                  slt          ra, a2, s8
                  srli         sp, t1, 23
                  sltiu        gp, t3, -44
                  addi         a6, t1, 185
                  slt          gp, s7, a7
                  sra          sp, s0, s3
                  srli         s8, zero, 29
                  auipc        s9, 894656
                  sll          s6, t0, a1
                  sub          s9, a3, s4
                  srli         tp, a3, 4
                  srai         t1, s8, 28
                  slt          s4, t4, a7
                  sltu         a5, s0, a0
                  auipc        t2, 898826
                  or           sp, a1, s5
                  or           s0, a4, s3
                  srli         a0, s9, 25
                  sra          s8, s0, a1
                  nop
                  slli         tp, s5, 19
                  slli         t4, zero, 4
                  add          t3, s5, a6
                  or           a2, s1, s4
                  xori         a5, t1, 1747
                  xor          zero, tp, s8
                  sll          a2, s11, ra
                  slli         a7, a6, 14
                  lui          s6, 606836
                  ori          t2, a5, 1783
                  srli         t0, a1, 5
                  ori          a0, s7, -238
                  or           tp, s6, zero
                  add          t3, s9, s3
                  lui          s9, 248020
                  lui          s1, 221487
                  srl          t6, sp, s11
                  srl          a5, s9, a3
                  sub          a1, s6, s4
                  sra          s0, a0, s9
                  srli         s3, a1, 22
                  addi         s8, a1, -1106
                  srai         t2, s10, 7
                  add          tp, t4, tp
                  srl          sp, s5, t3
                  srl          t0, sp, zero
                  srai         t4, t6, 16
                  ori          t2, gp, 877
                  sub          a7, t2, a7
                  xor          s2, gp, sp
                  add          gp, s0, s4
                  slli         a5, a3, 31
                  addi         zero, t6, 33
                  andi         ra, a6, 832
                  xor          s0, t1, s9
                  sra          a7, t5, a1
                  lui          a1, 916403
                  and          s4, t3, s2
                  sll          s6, t4, a1
                  lui          a2, 451073
                  srai         zero, a7, 10
                  slt          s3, s1, tp
                  slt          zero, a1, s11
                  and          a7, s6, s6
                  nop
                  addi         a0, a4, 736
                  and          s1, t0, s3
                  slt          a7, s0, s10
                  or           a1, a7, s5
                  xor          s10, a2, a0
                  slti         ra, s10, 1330
                  sltu         t6, a0, t2
                  lui          sp, 65708
                  slli         a1, s10, 18
                  slli         gp, s2, 11
                  or           t3, sp, s4
                  sltiu        a5, t0, -1944
                  add          s0, s6, ra
                  sra          a6, t3, a4
                  xor          s8, a1, s3
                  auipc        s9, 520659
                  ori          a0, a2, 673
                  srai         a5, a6, 28
                  addi         t6, a7, 1182
                  auipc        s11, 531997
                  lui          s10, 622042
                  auipc        s0, 282441
                  andi         t1, s5, -1680
                  addi         s3, a6, 1973
                  ori          s6, a7, 457
                  and          a7, a1, s6
                  auipc        s6, 465180
                  xori         t2, s7, -757
                  and          s10, a4, sp
                  slti         a1, gp, -1691
                  sltiu        t4, s10, 562
                  auipc        s2, 14036
                  srli         s10, s7, 11
                  andi         a2, s9, 1899
                  nop
                  srli         t3, a0, 11
                  xori         t1, gp, 646
                  slti         t2, gp, -1484
                  sub          s8, ra, a7
                  sltiu        t2, s1, 1359
                  or           s11, s7, t1
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           s8, 0xcc3392c
                  li           tp, 0x0
                  li           t6, 0x0
                  li           s3, 0x80000000
                  li           s11, 0x3f1e95e9
                  li           s10, 0x0
                  li           t2, 0x0
                  li           s6, 0xffffffff
                  li           a7, 0x0
                  addi         t2, s3, 326
                  addi         a7, s11, 430
                  sub          s9, t6, s10
                  auipc        s11, 39494
                  add          s8, s8, t6
                  add          s9, s9, tp
                  lui          a7, 484609
                  addi         s11, s8, -648
                  auipc        s8, 207235
                  lui          t2, 234992
                  auipc        s11, 754977
                  lui          s10, 498987
                  addi         s10, s6, -1073
                  addi         s8, t2, -354
                  addi         tp, s8, 727
                  sub          s8, s11, s3
                  addi         t6, t2, 89
                  addi         t2, s6, 1413
                  add          s6, s10, s6
                  nop
                  add          a7, t2, s8
                  nop
                  sub          a7, t2, s11
                  nop
                  nop
                  auipc        s9, 594296 #end riscv_int_numeric_corner_stream_0
                  sra          s3, t5, gp
                  slli         t2, gp, 2
                  and          s0, a4, t0
                  nop
                  srli         t1, a5, 16
                  auipc        t5, 545341
                  lui          t5, 221823
                  srai         s2, gp, 18
                  and          s1, a1, t0
                  slt          tp, s8, a6
                  xor          t0, sp, s2
                  addi         tp, t6, -883
                  sra          zero, t2, a2
                  or           a5, sp, t3
                  srai         a2, sp, 15
                  srl          s9, a4, zero
                  slt          s9, s8, s3
                  sltu         a5, sp, s5
                  andi         sp, ra, -1231
                  srl          s0, s9, sp
                  andi         a2, s7, -9
                  srl          ra, t4, s6
                  or           s0, a1, s8
                  lui          s2, 543418
                  srl          s1, a4, sp
                  and          t1, t0, t0
                  sub          s5, t0, t5
                  andi         s4, s2, 560
                  addi         t5, t2, -403
                  auipc        zero, 258876
                  nop
                  add          ra, t5, ra
                  nop
                  slli         t0, a5, 12
                  xor          s0, s9, a4
                  sra          a1, s9, s7
                  slti         s5, s9, -52
                  lui          t2, 213804
                  xor          a7, t0, s3
                  add          a5, zero, ra
                  xori         s6, a2, 713
                  addi         t1, a7, 1870
                  or           t4, s3, s3
                  slli         s0, s3, 16
                  nop
                  xori         t2, t6, 1824
                  srli         s9, gp, 26
                  srl          t2, a7, zero
                  slti         zero, a0, -1177
                  ori          s10, a2, -610
                  sltu         s6, t2, s10
                  srai         gp, ra, 10
                  addi         t5, t6, -310
                  andi         s9, sp, -622
                  srai         s4, a2, 1
                  srai         t4, s10, 18
                  sll          a0, s11, ra
                  sra          a6, a7, a7
                  slli         s10, t6, 20
                  slt          t6, s7, t5
                  srl          s9, a4, a3
                  xori         s11, t3, 1652
                  srli         a0, s7, 14
                  auipc        zero, 640678
                  sra          gp, s2, a1
                  xor          t1, zero, s8
                  ori          a7, s1, 1246
                  sltu         sp, s5, s5
                  srl          s10, a7, t2
                  srli         a2, a6, 17
                  nop
                  sll          ra, t2, a0
                  srli         a2, s5, 0
                  sub          s2, t4, a7
                  add          s6, t1, a4
                  sra          a2, sp, t4
                  ori          s11, gp, -380
                  sltiu        t4, gp, 1264
                  xor          a2, a7, t6
                  xori         t2, t4, 1170
                  slli         s4, s5, 7
                  andi         zero, t6, 421
                  auipc        a7, 193998
                  sll          t2, sp, s4
                  sltiu        s2, t6, -44
                  add          a2, s2, t4
                  xor          gp, a2, s2
                  slli         s3, a1, 20
                  srli         t4, t4, 1
                  slt          a5, a3, sp
                  xor          a0, a7, tp
                  sub          s1, gp, a1
                  srli         a0, s11, 5
                  srl          s2, sp, s5
                  or           t6, a0, s9
                  sltiu        a6, s11, -760
                  sltu         tp, s3, a2
                  slti         gp, s8, 78
                  srai         t0, a2, 22
                  ori          t5, s1, -1999
                  srli         t2, s0, 22
                  andi         s3, a5, -1309
                  xori         ra, a3, -985
                  slt          s0, t1, t2
                  andi         s11, s8, 950
                  and          s10, s7, a1
                  slli         s10, a1, 6
                  slli         s2, s10, 31
                  xori         s3, s8, 764
                  lui          s1, 358100
                  and          t1, zero, s10
                  xori         ra, s5, 1693
                  slt          t0, a6, t1
                  and          sp, a3, s3
                  xor          t1, s0, s7
                  srl          t3, sp, s0
                  sub          s11, t1, ra
                  and          t4, a6, a2
                  sll          s3, a4, t4
                  add          a5, a4, s0
                  addi         s4, a6, -1536
                  srli         gp, s3, 22
                  and          a0, t2, a2
                  srl          s1, s2, s0
                  andi         t5, sp, -579
                  xori         a6, t3, -914
                  xori         s10, a7, 463
                  or           t6, sp, s11
                  andi         ra, zero, 1758
                  addi         a0, s2, -1995
                  slt          a1, s2, a6
                  add          sp, s2, s10
                  sub          s5, s5, t3
                  slti         s1, a7, -1699
                  srai         t3, a0, 30
                  auipc        t3, 16310
                  slti         s1, t5, 471
                  andi         a0, a6, 1007
                  add          s6, t4, s9
                  sltiu        a6, s6, -805
                  ori          t3, t6, -455
                  or           t5, tp, a2
                  ori          a5, s3, 1464
                  add          s4, t0, a7
                  srai         s9, s5, 18
                  sltiu        t3, t3, 1439
                  auipc        s2, 390176
                  sltiu        s0, ra, -319
                  sltiu        s9, s10, 1427
                  srli         t4, sp, 24
                  andi         s9, s5, 475
                  sll          s9, a3, a4
                  slt          a0, s4, s2
                  addi         s1, gp, 646
                  sltu         s8, a3, sp
                  auipc        s6, 54555
                  or           t4, s9, a0
                  sltu         t3, s5, a2
                  sltiu        s1, s11, 281
                  nop
                  srli         a6, zero, 8
                  sltu         a0, s5, s10
                  ori          tp, s1, 1304
                  slti         ra, a2, 1511
                  nop
                  sltu         a7, tp, t2
                  xor          s3, tp, t6
                  add          gp, s10, t1
                  sub          t2, s11, a3
                  slli         s2, s8, 3
                  sll          s3, t4, s8
                  xori         a1, t6, 788
                  slt          a5, a7, a4
                  slti         t0, s6, -1635
                  xor          sp, s9, s0
                  addi         a2, s0, 1847
                  sra          t0, t4, t3
                  addi         s3, s10, 236
                  sltu         t0, s3, s3
                  sra          s9, s8, s5
                  sltu         a1, s11, a6
                  nop
                  add          s6, t2, s10
                  slti         s8, a2, -684
                  slti         s11, s1, 170
                  sltiu        t4, a2, -790
                  addi         s8, s0, 1879
                  or           t6, t4, s5
                  sub          sp, a6, t3
                  ori          s10, a3, -385
                  xori         t6, s0, 1477
                  auipc        a6, 1653
                  sltiu        t0, t3, 698
                  sub          s1, s6, a3
                  xori         a2, s3, -1634
                  lui          a1, 1024237
                  or           ra, s4, s10
                  srai         s10, s7, 21
                  lui          t4, 590341
                  and          s5, tp, a6
                  and          a7, s2, s6
                  slti         t1, t5, -31
                  andi         s4, a6, 1799
                  xori         s0, t5, -1110
                  auipc        s2, 502177
                  sltu         s6, a7, a4
                  or           s10, t2, a6
                  lui          s4, 265703
                  ori          t5, s9, 903
                  lui          s9, 838943
                  auipc        t4, 631787
                  sra          s0, s4, s1
                  srl          s9, t5, s10
                  srli         t5, gp, 17
                  slt          s1, a2, t4
                  slli         t1, a3, 2
                  slti         ra, s8, -1973
                  sra          s0, t3, s9
                  srli         a7, s9, 7
                  addi         s4, ra, 90
                  sltu         zero, a6, gp
                  ori          s9, s10, -1260
                  slt          a5, tp, s9
                  srli         t0, s6, 27
                  sub          s6, s2, a0
                  slti         t3, a5, 1504
                  srai         s4, a7, 9
                  sltiu        s10, a7, 655
                  and          a7, t6, t2
                  xor          s5, s8, zero
                  slli         t6, s9, 31
                  sub          tp, a1, s4
                  nop
                  xori         s10, ra, 1981
                  slli         s5, a5, 5
                  andi         s1, a0, -944
                  sltu         s9, ra, s4
                  xor          ra, s1, gp
                  slti         t4, a0, 557
                  lui          s0, 628792
                  auipc        s9, 71651
                  sll          s6, t2, s11
                  sltu         t5, s9, t0
                  lui          t5, 368254
                  ori          zero, s6, -2009
                  or           tp, a5, t5
                  auipc        s0, 38314
                  auipc        t3, 627889
                  add          t6, sp, s0
                  add          t2, t1, s6
                  auipc        s8, 947506
                  sub          s6, a6, s11
                  andi         s3, s11, 1037
                  or           a7, a0, sp
                  xor          gp, t6, a7
                  lui          a1, 578986
                  add          t4, a0, ra
                  nop
                  srli         a2, t5, 4
                  sub          ra, s2, s10
                  or           a0, t0, a0
                  lui          t6, 524372
                  srai         s1, t2, 0
                  sra          t4, a7, a3
                  slli         s3, s3, 17
                  addi         t1, t0, 854
                  or           s9, s1, s10
                  add          s6, t1, t5
                  srli         s9, a0, 16
                  slti         t1, t1, -907
                  auipc        s8, 963941
                  ori          t0, a3, 1685
                  lui          s6, 685844
                  sll          t4, t6, t1
                  srl          t6, a3, s5
                  srl          a1, a1, a4
                  addi         s4, t1, -71
                  sltu         s0, a5, s4
                  sltu         a2, t1, a0
                  lui          s5, 1010871
                  sltiu        t4, s0, 484
                  slli         t2, s0, 21
                  xori         s6, s8, -678
                  slli         s9, a2, 30
                  srai         s0, zero, 5
                  slli         s3, ra, 2
                  sra          gp, sp, s9
                  andi         s6, s3, 1925
                  srai         a5, a0, 1
                  sll          a0, a1, tp
                  sltiu        a0, s2, 1954
                  slt          s8, a1, s3
                  or           zero, s2, t2
                  srli         t4, a6, 30
                  ori          gp, s5, 186
                  lui          zero, 488403
                  srai         s3, zero, 19
                  nop
                  sltu         s0, t5, s2
                  slli         a6, s1, 19
                  add          tp, a3, t3
                  addi         a5, s0, 459
                  andi         a6, t6, -127
                  ori          gp, ra, 1943
                  sra          s8, t3, a6
                  slti         s2, s0, -1406
                  slli         s9, sp, 10
                  lui          s2, 204189
                  srai         s5, a3, 22
                  or           s4, s5, t3
                  sub          t2, a6, t0
                  slti         t6, s7, 1668
                  srli         t4, sp, 15
                  slti         gp, s6, -513
                  addi         t5, t2, 2027
                  sltiu        a6, zero, -784
                  srai         s3, t6, 5
                  sll          t1, s6, tp
                  lui          a7, 577337
                  sltiu        tp, s0, 1084
                  srl          gp, s9, a5
                  srai         a1, s2, 14
                  xori         t0, t4, 1164
                  xor          s9, s1, s6
                  lui          gp, 1028799
                  sltiu        gp, t4, -1259
                  sltu         a6, s4, s7
                  sra          s4, s2, zero
                  auipc        s4, 114193
                  slt          s4, s7, s3
                  sltu         s8, t3, t2
                  xor          t6, a2, t5
                  srl          s9, t5, s8
                  slti         s0, s3, 1869
                  add          s6, sp, s4
                  srli         t1, t5, 4
                  lui          s1, 713374
                  srai         s4, a1, 10
                  slti         t1, t6, -1723
                  sll          a1, a7, t5
                  or           t2, t0, s3
                  sra          s6, s7, s0
                  srl          s9, t1, a6
                  ori          s6, s4, 1573
                  sltiu        a0, tp, -2015
                  andi         s9, t1, 1506
                  sltiu        s10, t1, 587
                  nop
                  sltu         s3, s10, s0
                  add          a2, a6, s10
                  sll          s6, a7, zero
                  srl          s10, ra, s7
                  slli         t3, a1, 6
                  srl          t4, a5, s0
                  nop
                  auipc        a5, 496365
                  sltu         a7, s0, s8
                  sltu         sp, t0, s5
                  sll          t1, gp, t5
                  or           s5, tp, zero
                  srl          s2, s6, t2
                  srai         sp, t4, 30
                  auipc        gp, 696707
                  sll          t2, s2, s3
                  addi         a6, s4, -837
                  slt          s2, ra, sp
                  srli         t4, s3, 15
                  addi         t1, a5, 1489
                  sub          s10, s1, a1
                  add          s0, s11, zero
                  sll          tp, a0, s2
                  lui          s9, 230923
                  sltu         s9, tp, t6
                  or           a2, tp, t3
                  and          t5, s1, sp
                  xori         t5, a1, -60
                  andi         s3, sp, -1706
                  auipc        s1, 575990
                  slt          t0, t4, t2
                  srl          s11, a4, t1
                  and          a5, s0, a0
                  sll          gp, gp, s11
                  srai         a5, a6, 2
                  slli         t3, s1, 1
                  slt          a0, s0, s8
                  sltu         t3, a5, t5
                  sub          t5, t1, tp
                  add          t3, s1, s1
                  lui          s2, 94972
                  auipc        s11, 482373
                  addi         s0, ra, -1133
                  sub          s5, s7, s5
                  nop
                  add          sp, a4, s3
                  srl          a5, a6, s8
                  nop
                  lui          t3, 908996
                  sub          s3, t0, t3
                  srl          s3, a6, s0
                  sltiu        s8, sp, 1984
                  sll          s4, s3, zero
                  slti         s2, s10, -1350
                  andi         a1, t3, -1249
                  nop
                  slti         a0, t4, -1656
                  sltu         s1, zero, t0
                  sltu         s9, s10, s0
                  auipc        t1, 708878
                  or           s0, gp, a5
                  ori          a1, t3, 761
                  or           t6, s0, zero
                  addi         s1, t1, 209
                  sll          s5, a6, s11
                  and          s8, t1, tp
                  slti         t3, s9, -1256
                  addi         s2, t3, 1066
                  nop
                  sll          a7, t6, t4
                  xor          t5, t3, a6
                  add          a2, s8, a7
                  slt          t1, a1, a7
                  andi         t1, t4, 1476
                  slti         s11, t2, -337
                  sll          s9, zero, sp
                  srai         s3, s4, 27
                  slli         s5, s8, 19
                  addi         s2, a2, -1559
                  sra          s3, t4, t4
                  slli         sp, ra, 1
                  or           s5, a2, a2
                  sra          t1, a3, ra
                  or           s8, a1, s9
                  srl          ra, a5, s0
                  sll          s9, s1, s5
                  srai         t3, s7, 5
                  addi         s0, s11, 1441
                  addi         a2, ra, -1525
                  ori          s11, sp, -282
                  sub          t4, sp, t4
                  sltu         s9, s3, a3
                  sltiu        sp, t5, -42
                  and          t4, ra, s11
                  add          t4, a1, s8
                  nop
                  srai         t4, s0, 19
                  sub          s6, s9, zero
                  srai         t0, s7, 23
                  sll          s8, s11, s9
                  sub          s10, a2, s1
                  sltiu        t6, t2, -1352
                  andi         s0, s11, -11
                  srl          t4, t6, ra
                  sra          s3, s3, tp
                  xor          a0, s9, a0
                  sll          s11, t1, s0
                  nop
                  nop
                  sub          a6, sp, s10
                  auipc        a5, 701008
                  add          s9, s7, a0
                  andi         s11, zero, 1070
                  sltiu        t3, sp, -1118
                  or           s9, s11, s4
                  or           t3, gp, s5
                  sub          a5, s9, t1
                  sltu         tp, tp, ra
                  xor          a0, s6, s6
                  and          s8, t3, t0
                  srl          t4, s1, t0
                  andi         s6, s3, -1688
                  sltu         s6, s0, s4
                  andi         s2, a0, 1178
                  addi         gp, zero, 390
                  lui          t1, 117613
                  sra          tp, a4, a4
                  and          zero, t4, s10
                  lui          a2, 918681
                  ori          a0, a0, -1458
                  auipc        s2, 608956
                  sltiu        a2, t2, -1531
                  sub          s11, a1, s9
                  sltiu        t1, s8, -1937
                  xor          a2, s1, s7
                  xori         s8, sp, -870
                  and          ra, a4, t2
                  slt          zero, t1, gp
                  and          s5, gp, t1
                  slli         a5, t3, 10
                  add          t1, ra, a0
                  slti         s4, t4, -1696
                  ori          a5, a1, -1671
                  ori          zero, a3, 1900
                  slt          a5, t3, a0
                  srl          ra, t6, s2
                  sra          s4, s11, s0
                  slti         a7, s1, 610
                  auipc        a6, 297699
                  srli         t2, ra, 18
                  srl          a0, s6, s5
                  sll          t1, t3, t6
                  sub          s0, s9, s0
                  srl          s2, s7, t2
                  and          t6, gp, t1
                  srai         s4, a7, 23
                  srai         s0, s3, 8
                  andi         a5, tp, 2022
                  sltiu        a1, s7, -643
                  sub          s5, t1, a7
                  sra          s11, s9, t3
                  nop
                  add          a1, a7, s6
                  slt          t2, t1, t2
                  srai         s9, s6, 25
                  auipc        s9, 277118
                  and          zero, s4, ra
                  sra          t4, a6, s11
                  and          t4, t5, tp
                  slti         sp, t6, 1732
                  xori         s11, t4, -565
                  sltiu        s10, zero, 1278
                  xor          s2, t3, a3
                  xori         t4, a2, -716
                  xori         t5, s11, 1908
                  xor          a0, s2, t1
                  ori          t6, t1, -713
                  slt          a6, t6, a7
                  slti         s10, s11, 948
                  srai         s5, a3, 22
                  sra          gp, t4, a4
                  srli         t6, s4, 18
                  nop
                  srli         s4, a4, 18
                  sltu         s8, t4, a5
                  sra          t0, s8, t5
                  srl          s6, gp, s10
                  sltu         sp, s2, a0
                  sub          a6, s11, t4
                  ori          a5, s11, 1635
                  lui          s8, 752336
                  and          s0, zero, t4
                  lui          s4, 55910
                  srl          s8, a3, t6
                  srai         ra, zero, 16
                  slti         s5, a5, -152
                  ori          s2, t2, 1125
                  sltu         tp, a3, a5
                  lui          a7, 303443
                  sltiu        t5, sp, -1543
                  addi         s11, a0, 1067
                  slt          gp, s10, gp
                  srl          a6, a2, s9
                  xori         s8, s11, -540
                  sll          t2, t5, s11
                  or           s6, a0, a3
                  add          a5, a2, t0
                  xor          a1, ra, t1
                  slli         a5, s2, 8
                  andi         s6, s11, 1419
                  nop
                  add          a5, a2, t2
                  srli         a7, ra, 24
                  xori         a7, a0, 1831
                  andi         gp, t4, -493
                  andi         s2, t2, -715
                  slti         t5, a4, 392
                  srl          t5, s6, a4
                  nop
                  sra          s11, s1, s2
                  srli         a6, a2, 5
                  addi         s3, a7, 1331
                  andi         a5, sp, -1066
                  xori         s4, s5, 1045
                  add          a1, s6, s10
                  andi         a2, t4, -1717
                  srl          t3, t0, a0
                  slli         s8, s11, 10
                  or           s9, a2, zero
                  srli         t3, s7, 0
                  lui          t5, 484976
                  slti         s3, s4, 1448
                  sll          tp, a7, s4
                  xor          t5, s11, a6
                  srl          t1, t0, t6
                  srl          s8, s4, t0
                  sra          s5, t1, a7
                  sltu         s9, s2, s9
                  ori          s2, ra, 64
                  add          t5, s0, s9
                  sltu         s6, sp, t6
                  or           t1, s9, t1
                  sltu         s8, a3, s8
                  addi         sp, t5, 1730
                  xor          s5, s8, a3
                  srli         s2, a1, 18
                  slt          s8, a2, s8
                  srli         zero, s2, 19
                  and          s9, t2, zero
                  nop
                  sra          a1, a5, a4
                  sub          a5, t2, t0
                  ori          t6, s1, -1419
                  or           t4, s0, s6
                  sll          sp, s7, s4
                  addi         t1, gp, -1414
                  andi         a5, s5, 1840
                  andi         s5, t4, -710
                  sll          s9, a2, s7
                  srl          t0, sp, a0
                  slli         tp, a2, 27
                  or           ra, a1, s8
                  lui          t0, 207914
                  slti         zero, s2, -1669
                  andi         zero, s0, -1450
                  slti         t2, s8, 1717
                  sltu         tp, sp, s8
                  lui          a1, 878876
                  sra          s10, s7, a6
                  or           a7, sp, a5
                  slt          t4, s8, t5
                  auipc        s2, 898359
                  nop
                  or           t4, t0, s2
                  add          t5, a3, s1
                  xori         ra, s0, -1539
                  andi         s0, t2, -1749
                  sll          s4, t1, t1
                  slti         s6, s3, 33
                  srli         t1, a0, 18
                  sll          s3, s2, a5
                  sltu         a0, t4, s2
                  and          a5, t1, s5
                  add          a1, a0, tp
                  andi         s5, s2, -1213
                  sra          t0, t5, gp
                  slli         tp, zero, 0
                  ori          a1, s8, 788
                  xori         s5, ra, -2032
                  srl          s10, s7, s3
                  add          s2, a1, t2
                  ori          t0, s11, -1181
                  or           s0, s11, s0
                  ori          a7, a7, -309
                  slt          t2, t4, s8
                  add          tp, t2, tp
                  nop
                  srli         gp, a6, 21
                  slti         a1, s7, 72
                  auipc        sp, 998968
                  andi         s4, s9, -1451
                  sltiu        a5, t4, 1952
                  slli         s4, t0, 22
                  slli         s10, a5, 3
                  sub          sp, t5, a4
                  sra          s3, s0, a1
                  sub          a6, s5, s2
                  nop
                  srai         s4, ra, 14
                  nop
                  xori         t5, a1, -1175
                  sra          ra, sp, t3
                  lui          a5, 599029
                  sltu         t4, t3, ra
                  slli         a1, a7, 4
                  sub          t6, a5, t0
                  ori          s1, s10, -1859
                  xor          a1, s7, tp
                  sub          s11, s5, t0
                  sra          a5, ra, t6
                  ori          s6, s1, -1921
                  srli         t5, sp, 24
                  sltu         zero, ra, sp
                  srai         s8, t3, 22
                  lui          s11, 12892
                  sra          s6, t5, tp
                  sltu         ra, s10, a1
                  slli         tp, s7, 12
                  slti         s6, t5, 1772
                  andi         s5, t2, -370
                  or           a1, ra, t1
                  addi         a1, s11, -1782
                  auipc        s9, 830634
                  and          s9, a4, s7
                  srai         ra, t3, 2
                  and          s9, a3, s0
                  srai         s0, s11, 4
                  sltiu        zero, tp, -435
                  lui          gp, 278737
                  srl          a0, s8, s2
                  xor          s3, sp, tp
                  sub          s11, t4, ra
                  andi         zero, s9, -92
                  add          s5, t5, s1
                  slt          s4, s2, a7
                  sltu         s10, a0, s11
                  srai         s10, s1, 10
                  srli         t0, s4, 26
                  and          t6, a3, s1
                  xori         t6, gp, 619
                  slt          s0, a1, gp
                  or           s11, s2, ra
                  ori          s8, a6, 1337
                  sra          t6, gp, a4
                  slt          t1, s11, a2
                  srl          s10, s6, s11
                  slt          t4, s10, tp
                  nop
                  andi         s2, s9, 519
                  slti         tp, s7, 1721
                  slt          a6, s1, s6
                  nop
                  sra          s11, s11, t4
                  ori          s1, s3, 1473
                  slt          s8, gp, sp
                  ori          sp, tp, -1309
                  add          t3, a7, t2
                  addi         gp, s4, 697
                  andi         zero, s11, -1438
                  sra          a1, a7, a5
                  slt          a6, zero, sp
                  or           s10, s6, s9
                  and          s4, s2, gp
                  sltiu        s6, t1, -1847
                  sub          t6, tp, ra
                  or           a5, a0, gp
                  sub          a7, s8, s11
                  srli         sp, s7, 18
                  xor          ra, tp, ra
                  slti         a7, t2, -1927
                  slti         s10, s3, -2040
                  sltu         a2, zero, s2
                  srai         s5, zero, 5
                  xori         s5, zero, 1340
                  sltu         s0, zero, s10
                  auipc        a7, 743970
                  addi         ra, s9, 1933
                  addi         s5, s1, -21
                  srai         a6, s10, 4
                  auipc        a1, 7882
                  slt          t3, s6, s9
                  addi         s11, s9, -543
                  add          s9, t5, s6
                  sltiu        t1, t2, -199
                  srli         t0, s11, 9
                  slt          sp, t1, s11
                  ori          a6, s2, 2017
                  srl          s6, t0, s6
                  add          a1, a7, a0
                  auipc        a1, 937912
                  addi         s6, t6, -1022
                  sll          ra, s1, s3
                  auipc        s2, 415449
                  or           t5, s7, a3
                  srai         a7, s1, 17
                  slti         a0, s3, 1081
                  sra          zero, tp, t1
                  nop
                  slt          a0, a2, ra
                  auipc        t4, 468728
                  andi         a7, t6, 699
                  and          t4, t1, tp
                  addi         ra, s11, -877
                  add          s1, a1, t3
                  add          s6, a3, a2
                  xor          tp, s10, a7
                  sltu         s3, a0, a4
                  and          t6, s8, t3
                  andi         a2, t5, 1376
                  andi         t2, s0, -960
                  and          s11, s2, s3
                  sltiu        s9, gp, -460
                  auipc        s0, 157103
                  srli         s10, zero, 31
                  sltiu        s2, s7, 329
                  srai         a5, s9, 24
                  or           t6, s1, s1
                  sll          t5, a3, sp
                  nop
                  add          t2, s8, t0
                  andi         s3, s10, -1972
                  slt          s9, tp, a5
                  andi         t3, s11, 703
                  slli         a5, a3, 6
                  lui          a2, 970201
                  and          s4, s8, s4
                  add          a1, s4, a1
                  srli         t1, ra, 26
                  sra          t2, s4, a1
                  nop
                  sub          s0, a5, a3
                  auipc        s5, 868756
                  slli         s1, s0, 30
                  srai         a0, s11, 4
                  sll          s9, s1, ra
                  addi         a6, a4, -391
                  sltiu        t1, t6, -1356
                  auipc        s5, 718211
                  ori          a2, s4, 1049
                  add          s0, s10, gp
                  andi         a1, a5, -996
                  srai         s2, sp, 30
                  srli         s3, s10, 14
                  slt          a5, a5, a0
                  lui          s1, 84076
                  slti         s8, s11, -1090
                  sll          s2, s9, zero
                  srl          a7, a4, a6
                  slti         s11, a6, -846
                  srai         a7, s5, 21
                  sltu         gp, tp, s3
                  ori          zero, t1, 606
                  slti         ra, a5, -1994
                  addi         t5, tp, 931
                  sll          a0, s3, s3
                  xor          s2, t6, a3
                  srai         s6, a0, 20
                  srai         s4, ra, 19
                  lui          a6, 783265
                  srai         s10, s8, 8
                  slli         a6, t0, 21
                  slti         s8, s1, 675
                  sra          tp, a3, a3
                  nop
                  srl          s9, t0, a2
                  addi         t6, t3, 470
                  andi         t3, s0, 1660
                  or           ra, a3, a7
                  ori          s0, s10, 1066
                  or           s11, t1, s7
                  or           s11, a0, tp
                  sltiu        s9, s3, 1656
                  sltu         s11, s6, s1
                  srl          s8, t6, s4
                  srai         a6, s5, 16
                  sll          s6, s4, a1
                  auipc        t3, 40540
                  ori          a5, a4, 360
                  sltu         t4, a5, s0
                  slt          t4, a7, a5
                  sub          sp, s10, tp
                  auipc        a7, 891994
                  srai         s11, t6, 16
                  add          s5, s4, a2
                  sll          a6, a6, zero
                  xor          gp, s8, a7
                  lui          t2, 69105
                  xor          sp, t5, tp
                  xor          sp, t1, a5
                  xor          t5, a2, s3
                  and          t3, t3, s9
                  sll          t0, s6, a5
                  nop
                  sltiu        tp, t0, 839
                  ori          gp, s10, 1395
                  nop
                  sll          t1, sp, t1
                  srl          gp, t5, gp
                  sltiu        s4, t0, -783
                  auipc        s1, 487850
                  add          a7, a5, s3
                  srli         s11, a3, 26
                  nop
                  xori         a5, a6, 319
                  xori         tp, a2, -1155
                  ori          a7, s9, -1088
                  slli         s3, gp, 25
                  nop
                  slti         s3, t3, -27
                  sll          s0, a0, a3
                  srli         s5, a7, 28
                  slti         s6, t3, 1088
                  or           a6, a7, s3
                  srl          t6, a5, s1
                  andi         zero, t0, -1537
                  slt          s8, a1, s1
                  sub          s4, zero, s7
                  add          gp, t1, s4
                  lui          s3, 816639
                  or           s9, s6, t0
                  andi         s1, tp, 323
                  xori         s3, t0, -282
                  xori         tp, a5, 847
                  slti         s8, t5, -553
                  xori         t5, tp, 1794
                  addi         s9, s1, 573
                  slli         t1, sp, 27
                  xori         s8, t0, -1954
                  sltu         s9, sp, a3
                  add          gp, s7, s8
                  add          s1, s7, s7
                  and          s1, s9, a2
                  sltu         t2, zero, t2
                  srl          t5, ra, a5
                  slli         t2, a0, 28
                  ori          s10, s5, 734
                  srl          s1, s0, a0
                  sll          s9, a7, tp
                  xor          a6, a6, s2
                  srl          t4, s6, a1
                  srai         s2, s11, 28
                  srli         a0, t0, 20
                  srl          t2, sp, s6
                  andi         sp, a2, -2047
                  nop
                  xori         a2, s8, -1613
                  slli         t2, t5, 11
                  auipc        t3, 175866
                  auipc        t6, 924324
                  srai         s9, a0, 10
                  add          tp, a6, s6
                  sll          t6, s9, s0
                  srl          s3, s1, a0
                  sll          s1, s11, s2
                  auipc        s11, 91630
                  slli         s4, a1, 25
                  srli         s0, s1, 3
                  xori         a7, t1, -116
                  add          s0, a3, s10
                  sltu         tp, s9, a4
                  sltiu        t5, tp, 1733
                  slt          t5, a1, sp
                  sltiu        sp, a1, 1064
                  ori          sp, s6, 1678
                  sub          s2, gp, s7
                  sltiu        a0, a0, 1918
                  srl          a5, s6, zero
                  add          t5, ra, s7
                  slti         s10, t0, -647
                  andi         sp, t2, 269
                  auipc        t2, 543020
                  sra          t0, s8, ra
                  or           s10, s9, t0
                  slti         s2, s4, -1415
                  lui          t4, 163237
                  add          s0, a1, t4
                  sub          s11, zero, sp
                  slt          s6, a4, s10
                  sub          t6, s2, t2
                  sltiu        sp, s8, -1165
                  slti         t6, a7, -225
                  xori         sp, a7, -1107
                  srli         s0, s11, 27
                  sltiu        ra, tp, -1765
                  sub          s10, s8, s9
                  xori         s4, zero, -960
                  xor          t3, a1, t5
                  xor          a6, s2, s6
                  slt          a0, a3, a6
                  xor          a6, s5, a0
                  addi         s5, a0, 397
                  xor          s1, a5, a5
                  nop
                  xor          s9, s4, s4
                  xori         t2, a4, -1173
                  auipc        s8, 554504
                  srli         a0, s5, 4
                  srli         s6, t5, 21
                  and          s11, a0, s4
                  and          t0, s11, a1
                  ori          s6, s2, 1357
                  add          s6, s4, a4
                  srl          t1, s0, a4
                  xori         s10, a4, -115
                  and          s8, s3, t6
                  sra          t3, a5, ra
                  andi         a6, s7, 393
                  sra          t2, t6, t4
                  slli         s2, gp, 26
                  xori         s8, t6, 1411
                  sll          gp, s7, t6
                  add          s3, t3, t0
                  sltu         s6, gp, s6
                  add          s4, sp, s8
                  add          a6, s10, a7
                  slt          a5, s4, t0
                  add          t6, s3, s6
                  andi         t4, s0, 1471
                  srli         s9, s5, 21
                  sub          s11, s6, a7
                  xori         a1, s6, 1033
                  slli         s3, a6, 3
                  sltiu        ra, t3, 1723
                  srl          a1, t1, gp
                  ori          gp, s10, 1101
                  nop
                  auipc        t1, 895985
                  slli         t1, a7, 11
                  sll          t0, sp, sp
                  sub          s6, gp, a4
                  sll          a0, t6, a1
                  or           s9, s1, t6
                  auipc        s6, 713048
                  ori          s11, a0, 1133
                  sltu         s0, a3, a7
                  srli         tp, a5, 31
                  sltiu        a0, s0, 585
                  ori          tp, t1, -1178
                  sltiu        t0, s1, -634
                  nop
                  slt          a2, s7, s9
                  nop
                  sub          a7, t1, s1
                  add          s9, a4, a3
                  srli         a1, s2, 3
                  slti         a7, t3, 1501
                  slt          a1, zero, t6
                  add          s0, t4, s9
                  addi         zero, s5, 656
                  or           s9, a5, a0
                  nop
                  and          s9, s5, s7
                  and          a0, t3, a3
                  slti         s3, t4, -1403
                  slt          s2, t5, a4
                  slt          gp, t0, t6
                  auipc        s0, 118125
                  slli         t3, s6, 22
                  srli         s10, a7, 3
                  and          s10, s9, a6
                  xor          t0, s3, s7
                  srli         s4, a7, 13
                  xori         gp, t4, -1800
                  ori          t2, s7, 175
                  slli         a5, a3, 21
                  ori          gp, a0, 1929
                  lui          s10, 846313
                  and          a0, a4, a4
                  andi         a0, s4, -1323
                  srli         s5, s3, 26
                  sltiu        s0, s9, -1678
                  sltiu        t1, s10, -120
                  addi         s9, s2, -121
                  andi         t2, s5, -1669
                  sltu         a2, s9, s10
                  sltu         a1, s2, a0
                  sub          s1, gp, s3
                  slli         t2, ra, 12
                  nop
                  sra          s1, tp, gp
                  sub          s5, tp, a3
                  slt          gp, a0, t2
                  nop
                  slt          t4, a2, a1
                  sub          a5, s8, t3
                  slt          t0, a5, s11
                  slti         t4, t3, 837
                  slli         t1, s3, 9
                  sltu         s0, t2, a0
                  or           s1, s2, a4
                  addi         s0, gp, 333
                  or           t4, a4, t6
                  slti         s4, gp, -535
                  or           a7, a1, s6
                  addi         t4, t2, -385
                  xori         s4, s4, 1949
                  auipc        t5, 694131
                  srai         s0, a4, 16
                  sll          s3, s3, s2
                  add          t6, a2, t1
                  xori         s1, a4, 1650
                  ori          s9, a7, -1345
                  add          a0, tp, s1
                  slt          a2, t2, s4
                  srai         a5, a5, 0
                  add          tp, s5, a2
                  slt          t2, a3, t2
                  add          zero, a1, t0
                  srai         zero, a7, 19
                  xor          s11, ra, t2
                  sub          s0, t4, gp
                  or           s1, t3, a1
                  auipc        s11, 260988
                  srai         t3, t0, 27
                  xori         a6, t1, -1034
                  addi         s1, a4, 853
                  slt          t0, t0, t2
                  sra          t2, t4, sp
                  srl          t6, s4, s5
                  srl          s5, s9, a2
                  srl          s4, a2, t4
                  sra          t1, a7, s11
                  slt          a0, a6, a3
                  and          s11, a3, t2
                  auipc        s2, 1012187
                  sll          s3, s9, s10
                  xor          s3, s2, a6
                  srli         a7, a3, 12
                  slt          s10, a1, sp
                  slt          s5, a2, a7
                  sltu         a2, ra, t3
                  and          a2, a6, a5
                  or           s8, s5, t5
                  srl          ra, s4, s4
                  add          t3, t4, tp
                  auipc        a1, 275917
                  xori         sp, s6, -662
                  nop
                  add          t4, s2, s4
                  or           s3, a7, gp
                  sltu         ra, s4, t5
                  xor          a7, a7, t2
                  nop
                  xori         t5, a0, -1514
                  sll          t4, a1, s0
                  addi         s2, sp, -296
                  or           tp, s5, a7
                  xor          a1, a6, a0
                  slti         s10, tp, 439
                  ori          t1, s11, -731
                  lui          s9, 201945
                  srai         s0, s1, 22
                  sltiu        s5, a7, -939
                  srl          s2, ra, a1
                  and          a7, s2, t4
                  sll          t1, t5, t3
                  add          gp, a4, t4
                  xori         gp, s5, -923
                  sub          tp, s1, s11
                  andi         ra, a4, -1974
                  lui          a5, 345843
                  andi         s2, a2, -241
                  slt          s11, a6, t6
                  auipc        a0, 532351
                  srai         t3, s4, 14
                  sltiu        a1, s9, 682
                  sll          s3, s7, s6
                  sltiu        t1, a1, -1503
                  addi         a6, s11, 559
                  sra          t6, a1, s3
                  srli         tp, s5, 25
                  srai         t0, t3, 1
                  nop
                  srai         s10, a2, 9
                  sltu         t6, t3, a3
                  nop
                  srl          t2, t2, ra
                  or           s5, a7, t3
                  srli         s2, s7, 31
                  auipc        s10, 456564
                  ori          s8, s3, 889
                  sub          t4, a2, s10
                  slli         s11, s10, 13
                  lui          s10, 512022
                  add          t3, t4, t6
                  or           a7, s9, s5
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s1, 0x80000000
                  li           s4, 0x9ac6cd7c
                  li           s9, 0x0
                  li           s8, 0x0
                  li           a1, 0xffffffff
                  li           t4, 0xffffffff
                  li           t2, 0x0
                  li           s5, 0x0
                  li           s2, 0x0
                  nop
                  auipc        t4, 344089
                  sub          t2, t4, t1
                  nop
                  add          t4, s5, s4
                  sub          t4, t1, s8
                  addi         t1, s9, -373
                  lui          t2, 938369
                  nop
                  sub          a1, s8, s5
                  auipc        t2, 739129
                  addi         t4, a1, -623
                  lui          s8, 808579
                  auipc        t2, 594616
                  add          s2, t2, s5
                  add          s1, t1, s1
                  sub          a1, t2, s1
                  add          t2, t4, s5
                  addi         t4, s1, 1531
                  lui          s9, 340022
                  nop
                  lui          s1, 894451 #end riscv_int_numeric_corner_stream_11
                  srl          s10, t3, t2
                  srli         a2, t3, 28
                  xor          s10, s10, s9
                  andi         a0, t1, 1659
                  sub          a2, t1, sp
                  add          a5, t1, a7
                  srai         t1, a7, 19
                  sltiu        s2, s3, -479
                  add          a1, a6, t5
                  sll          s2, t1, s5
                  srai         tp, a1, 6
                  xori         a1, a4, -837
                  lui          s0, 30025
                  srl          s2, t4, ra
                  nop
                  add          s6, a1, s1
                  slli         t3, t2, 3
                  xor          s4, s2, s2
                  lui          zero, 379949
                  slli         a1, s1, 31
                  slli         s4, a3, 15
                  and          a7, s7, s1
                  srai         sp, s10, 15
                  sltiu        s3, a1, 647
                  lui          s11, 619336
                  slt          a6, a3, ra
                  srai         a0, s1, 29
                  srai         a7, t3, 4
                  auipc        s0, 657896
                  and          a2, a0, a3
                  slti         s2, s11, -1240
                  nop
                  slt          t4, a3, t1
                  xori         s2, s10, 670
                  xor          s9, s4, a7
                  slti         a0, t4, 90
                  sra          s0, sp, ra
                  sltiu        sp, s9, 1831
                  slti         t5, sp, 329
                  slli         gp, zero, 4
                  andi         t2, s10, -857
                  auipc        a0, 880668
                  srli         s10, a4, 23
                  xor          s8, s7, sp
                  auipc        a1, 10224
                  slti         sp, a7, 229
                  sltu         a0, s1, a0
                  sll          tp, s6, t5
                  and          t5, s11, s4
                  or           s5, s8, s2
                  srl          t3, s8, t6
                  sub          sp, a0, sp
                  sltu         t2, s6, s5
                  slti         s4, a6, 47
                  or           a1, a2, t0
                  slti         t0, a5, -749
                  xor          a5, s3, s5
                  slli         t2, s5, 27
                  nop
                  and          t3, t2, t1
                  and          s8, s3, t6
                  lui          a1, 172596
                  slti         t0, tp, -1782
                  sltiu        t5, s9, 1682
                  slti         a2, t5, 1423
                  slt          s10, t3, s6
                  slli         t2, a5, 10
                  ori          s9, a3, 1172
                  or           s0, ra, s6
                  sll          sp, a7, s3
                  or           s11, a0, s10
                  and          t2, a2, zero
                  srli         ra, t4, 7
                  ori          gp, a6, 639
                  srl          t3, t2, t6
                  andi         s8, a4, -1561
                  srl          a0, t6, ra
                  or           tp, s9, s8
                  srli         t3, a6, 16
                  srai         t6, s2, 0
                  sll          t6, s8, s3
                  slli         a6, t2, 25
                  sltiu        tp, s9, -143
                  slli         s10, s2, 23
                  andi         tp, s5, 859
                  nop
                  srl          a1, s2, t6
                  xori         s6, s2, 1009
                  sltiu        s2, s10, -2032
                  sll          ra, a7, tp
                  addi         s3, s9, 801
                  sub          s2, t3, gp
                  ori          a2, a5, 236
                  or           zero, gp, t0
                  xori         t1, t5, -546
                  slli         t4, tp, 29
                  sll          a7, s6, ra
                  auipc        s1, 131882
                  sltiu        t5, t4, -2008
                  sra          a6, s4, sp
                  sub          t6, s9, zero
                  andi         s9, s6, 1549
                  slt          ra, a3, tp
                  sll          t4, s6, ra
                  xori         ra, a4, -1866
                  slti         s3, t6, 864
                  slli         s6, t3, 31
                  auipc        s3, 237969
                  nop
                  srli         t1, zero, 18
                  xori         gp, s0, 612
                  sra          zero, a2, s10
                  and          gp, a7, s9
                  srl          a7, t2, s11
                  or           s8, t2, t0
                  srli         s5, a1, 21
                  slli         s10, tp, 29
                  srai         s9, tp, 25
                  andi         tp, s2, 739
                  sra          t5, s10, a3
                  sll          ra, t6, s8
                  lui          s3, 595159
                  sra          a2, tp, a5
                  nop
                  nop
                  andi         sp, s1, 73
                  addi         t6, tp, 1013
                  sltu         s2, t2, a3
                  slli         s10, s4, 23
                  add          tp, s0, s5
                  add          a5, s3, ra
                  srai         t4, t5, 15
                  slli         s5, s6, 3
                  andi         s0, s5, -335
                  lui          a6, 431436
                  andi         s0, s10, 1372
                  slli         s0, gp, 3
                  slti         t3, a3, -68
                  sltiu        ra, t1, -1110
                  lui          s1, 400684
                  xori         t6, s0, -1560
                  sll          s5, s6, tp
                  srai         t6, sp, 2
                  slt          s11, a4, s8
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s5, 0xddcf1428
                  li           t6, 0x9fa3bd2c
                  li           a6, 0x80000000
                  li           s6, 0x80000000
                  li           t5, 0xffffffff
                  li           s11, 0x80000000
                  li           s10, 0x3782f60d
                  li           ra, 0x85a42cf7
                  li           s2, 0x0
                  auipc        s6, 226009
                  add          t5, s2, s11
                  addi         s2, s2, 890
                  add          s5, s11, s5
                  lui          a6, 870584
                  nop
                  addi         s5, t5, 1305
                  nop
                  add          t6, ra, s5
                  nop
                  lui          ra, 494276
                  addi         t5, s6, 339
                  nop
                  addi         ra, t5, 752
                  lui          s6, 450760
                  add          s10, t6, t5
                  sub          s10, a6, s11
                  lui          a6, 919483
                  auipc        s10, 757112
                  nop
                  lui          t6, 639105
                  nop
                  lui          s11, 828892
                  addi         t5, s11, -1161
                  nop
                  addi         s6, t6, -353
                  auipc        s1, 712760
                  lui          ra, 868884
                  add          s11, ra, s5 #end riscv_int_numeric_corner_stream_19
                  nop
                  sltu         a6, a1, a3
                  or           t4, s1, t4
                  slli         t2, s0, 0
                  slt          a2, a5, t2
                  add          s2, s2, sp
                  slli         s2, a0, 5
                  sll          t6, s8, t2
                  slli         t0, gp, 24
                  slt          s2, t2, t4
                  srli         t0, s11, 12
                  sltu         s3, gp, a3
                  srl          s6, t1, tp
                  addi         a7, t4, -459
                  xori         s11, s10, -1751
                  sub          a5, a2, s5
                  auipc        a0, 205044
                  slti         ra, t5, -1647
                  sltu         a5, t4, s6
                  sltu         t0, zero, s5
                  lui          sp, 776011
                  addi         zero, a2, -65
                  slli         a5, s4, 23
                  add          a7, sp, t6
                  nop
                  sra          sp, t0, s4
                  xori         s0, s10, 1919
                  or           tp, s9, s6
                  andi         t6, a3, 783
                  sra          s5, a0, s8
                  srli         t0, a7, 10
                  auipc        a1, 959254
                  addi         a7, t3, 1407
                  lui          s5, 518803
                  srli         tp, a1, 2
                  sltiu        t6, ra, -1720
                  nop
                  srl          t0, s4, t2
                  add          a5, s2, a6
                  sltiu        s9, t5, -1856
                  addi         t0, s4, 1704
                  and          a2, sp, s5
                  auipc        s6, 662485
                  auipc        s1, 743747
                  sltu         sp, t4, sp
                  xor          a7, t3, zero
                  sll          a6, t3, tp
                  and          s1, a0, zero
                  add          ra, a4, s11
                  sltu         gp, t6, t4
                  auipc        a6, 96611
                  srai         t0, a7, 19
                  srai         s4, a5, 1
                  ori          s9, a4, -1971
                  andi         a5, t5, -126
                  ori          t2, s8, 819
                  slti         a5, s0, -261
                  or           s0, t2, zero
                  xor          a5, t0, s1
                  addi         s10, a0, -302
                  sll          gp, tp, gp
                  addi         t5, t2, 741
                  sltiu        ra, s9, 189
                  nop
                  nop
                  andi         t6, t2, 43
                  or           s1, gp, t3
                  lui          a7, 130766
                  xori         sp, t2, 1273
                  srl          a1, s1, t3
                  slt          s0, a0, s3
                  xori         t3, t2, -643
                  lui          s5, 296909
                  srai         t5, a0, 27
                  srl          t2, t5, s7
                  add          t5, ra, t4
                  srl          s0, a3, sp
                  srl          s0, s11, s9
                  auipc        s8, 815320
                  srai         a7, s7, 6
                  slti         s11, tp, 299
                  auipc        t1, 568845
                  sll          a0, s0, a4
                  slli         s5, s9, 13
                  slt          a2, tp, s3
                  slt          a6, t2, a5
                  ori          s9, a1, 762
                  xor          gp, s10, t1
                  sltu         a6, zero, a5
                  xor          t4, gp, a6
                  slti         t6, t2, -1450
                  srli         a1, a7, 15
                  srli         s3, gp, 19
                  sll          t1, s10, t6
                  xor          s10, a5, s3
                  xori         t1, s9, -1116
                  lui          a0, 538804
                  srli         s11, a0, 27
                  srl          a1, s3, s6
                  nop
                  or           ra, a7, a1
                  lui          s8, 493734
                  ori          s1, s5, 46
                  or           a0, s8, sp
                  slli         s4, s8, 31
                  nop
                  slti         s8, s5, -336
                  slti         tp, s1, 540
                  sll          a2, s3, t4
                  lui          a0, 835038
                  xori         t4, tp, 993
                  slli         t0, t3, 6
                  slti         a0, s7, 1137
                  sll          a6, s9, a0
                  slti         a6, sp, 44
                  lui          s4, 484411
                  slli         t1, sp, 2
                  or           s6, a3, ra
                  nop
                  slli         s8, t6, 17
                  sll          a7, t2, a4
                  slt          s9, zero, t6
                  add          s5, s7, t4
                  sra          s0, s0, a2
                  xor          t1, s9, t5
                  lui          s4, 926613
                  slli         t5, s5, 5
                  srl          a7, a6, sp
                  andi         s10, ra, 929
                  xori         s4, t0, -1889
                  srl          s3, s1, s1
                  sltu         a7, t1, s11
                  sll          zero, a1, t4
                  or           sp, s2, s0
                  sra          t2, a7, a5
                  andi         t4, gp, -1943
                  nop
                  srl          a6, s8, s5
                  srl          s11, a0, t6
                  ori          ra, s1, 1607
                  srli         ra, s1, 0
                  and          t4, t5, t2
                  srli         s11, a1, 23
                  srai         t6, s1, 20
                  sub          s6, s6, t3
                  sltu         s3, a4, tp
                  slt          a2, a0, t4
                  slt          t0, t1, s10
                  sra          s10, ra, a7
                  sltu         s9, t3, s8
                  nop
                  sub          t0, t1, s3
                  slt          a6, a5, tp
                  sra          s2, s0, zero
                  add          zero, zero, t2
                  add          a2, t0, a2
                  sltiu        s11, a3, -493
                  andi         a0, a3, 1052
                  or           s6, t6, a6
                  slli         gp, s8, 1
                  sra          a0, s10, s4
                  sltiu        t1, t0, 1056
                  srli         s10, t1, 9
                  nop
                  xor          t5, a1, a7
                  srl          s4, tp, t0
                  srli         s6, a6, 18
                  auipc        gp, 935827
                  srli         zero, a5, 11
                  ori          s4, s3, 1060
                  addi         zero, s5, -1533
                  auipc        s1, 259777
                  srai         a0, a6, 25
                  xor          t2, s5, s9
                  add          ra, a0, zero
                  srli         s2, s5, 17
                  srai         t5, sp, 5
                  slli         s2, s1, 21
                  andi         a1, t0, -1014
                  sra          gp, t5, t3
                  nop
                  nop
                  auipc        s6, 131165
                  addi         sp, t2, 1131
                  sltu         s2, a0, a1
                  sra          s5, s1, t0
                  slt          t0, gp, zero
                  addi         t6, a3, 1478
                  sltiu        ra, s7, -1331
                  sra          s9, t5, t6
                  sub          s3, s0, s8
                  srli         ra, t6, 26
                  sll          s1, t1, s6
                  auipc        sp, 122057
                  addi         t4, zero, 1402
                  or           a0, t3, s7
                  add          a1, gp, s3
                  sll          tp, a3, zero
                  sra          a7, zero, t0
                  sll          t4, a5, t5
                  slli         a1, tp, 18
                  or           s8, t4, a4
                  lui          s6, 651816
                  sltiu        t2, s7, -1603
                  and          t0, t2, zero
                  slti         a2, t6, 1014
                  slti         t4, s1, -83
                  nop
                  addi         s9, t2, -1107
                  lui          t6, 1012350
                  slti         t5, a0, 705
                  slli         s1, a7, 12
                  slti         s5, s11, -136
                  auipc        s9, 134745
                  sra          t1, a6, s5
                  slt          s8, s6, s10
                  slti         s11, s0, -942
                  addi         a5, gp, 1116
                  srai         s10, s7, 7
                  andi         s3, s3, 1397
                  sra          s10, t6, s7
                  slli         t2, s1, 10
                  auipc        a6, 165630
                  slti         a0, s4, 160
                  slt          s2, s7, a5
                  sub          s9, a5, tp
                  srai         s6, t1, 18
                  or           t3, s8, t0
                  or           a7, a1, s2
                  sltu         t5, a5, s3
                  slt          t2, t2, s4
                  ori          a0, s9, -708
                  sra          s5, t6, t3
                  xor          zero, s0, t4
                  srai         zero, s5, 30
                  sub          t2, s1, a7
                  slt          a1, t2, s1
                  slli         t3, s1, 2
                  xor          t3, s8, a2
                  sll          a1, s1, s4
                  auipc        t3, 788394
                  sltu         a7, a7, a2
                  addi         s4, t5, 879
                  and          s2, s10, s3
                  slli         sp, s10, 11
                  srl          s10, s10, t5
                  add          t5, t6, s10
                  slt          t5, a6, s11
                  xori         s9, zero, 946
                  srl          gp, t2, s6
                  slli         ra, s7, 31
                  srli         ra, a7, 5
                  xori         t2, a3, -892
                  xor          s1, gp, a7
                  slli         s11, a0, 24
                  auipc        tp, 281550
                  nop
                  sltu         a0, s11, t6
                  add          s2, sp, a5
                  lui          ra, 29381
                  xor          s9, ra, ra
                  add          s1, a2, s10
                  lui          a7, 807393
                  sltiu        s9, s11, -623
                  srl          t4, t2, tp
                  srli         ra, s9, 7
                  or           a2, s6, a0
                  sltiu        t5, t6, -1305
                  xori         s11, a5, 1158
                  sltiu        a1, t1, 1923
                  srai         s8, s9, 18
                  andi         a6, t3, -1844
                  srl          tp, sp, tp
                  and          s1, a7, s3
                  nop
                  and          s10, a7, a3
                  slli         s2, tp, 14
                  or           s5, zero, a7
                  slti         t3, t4, 1773
                  srli         t4, t0, 25
                  andi         a6, s1, 75
                  slt          a1, a7, s1
                  srli         tp, tp, 12
                  and          a5, t2, a3
                  srai         a6, a5, 16
                  slt          t1, a4, zero
                  add          t3, t2, a1
                  sub          t0, a4, s8
                  nop
                  sltiu        s0, t6, 539
                  sltu         t4, s1, sp
                  slli         s2, t6, 20
                  srli         tp, s5, 8
                  slti         a2, s7, -146
                  sra          s4, s0, t4
                  slt          s4, s3, s11
                  srai         a1, a1, 5
                  slli         t1, t2, 25
                  add          a0, s0, tp
                  addi         t0, s0, -335
                  auipc        s5, 26667
                  nop
                  srai         tp, a1, 30
                  and          a7, t2, gp
                  sub          s8, a2, a4
                  addi         s10, t6, -1106
                  sll          s8, a7, s6
                  slt          zero, a6, a7
                  sltu         zero, s2, a5
                  add          s4, ra, t1
                  srli         s3, s11, 12
                  sub          sp, ra, a6
                  addi         s11, s9, 1583
                  sltiu        t3, s6, -724
                  xor          t2, t1, s1
                  sub          s1, t4, ra
                  and          s8, t4, s6
                  xori         a1, sp, -1380
                  sra          a1, s2, a0
                  srli         s4, sp, 31
                  ori          t4, a6, 1163
                  sltu         t6, s9, a1
                  xor          s1, gp, a1
                  slli         a1, a2, 6
                  sll          ra, zero, s8
                  or           t4, t2, s2
                  xor          a2, s1, t6
                  auipc        s1, 117686
                  sub          a5, s4, t6
                  sltu         s11, s5, t0
                  xor          s0, gp, s3
                  lui          gp, 1007044
                  sltiu        t2, s8, 1013
                  lui          s9, 513706
                  slli         t2, t4, 21
                  ori          a1, t5, -1221
                  addi         t1, sp, -286
                  slti         s4, s6, -850
                  sltu         s5, gp, tp
                  sub          t5, s1, t5
                  sltiu        a6, a5, -1654
                  srli         a0, a5, 22
                  sltiu        s10, zero, 1153
                  sll          s0, a7, a3
                  xor          a5, t0, t5
                  sll          s9, zero, t0
                  srli         s8, a5, 31
                  slli         a7, t5, 21
                  slli         tp, s11, 9
                  srli         s11, zero, 4
                  sltiu        a0, t6, 394
                  addi         s6, a1, 1497
                  or           a0, t1, s3
                  srai         t1, s3, 16
                  srl          a6, a0, a0
                  xor          s8, a0, s6
                  slti         s3, s6, 1160
                  auipc        s6, 588977
                  or           t1, a2, s6
                  srli         a6, t5, 6
                  or           t4, t3, a5
                  sra          t4, s0, gp
                  sltiu        t4, s1, 1055
                  sra          a7, a7, a7
                  andi         gp, s11, 50
                  srai         s1, s4, 1
                  slt          s9, ra, s5
                  xori         a0, s10, -677
                  sltiu        s9, s6, 1911
                  addi         a0, t5, 1529
                  sra          s9, t1, tp
                  sra          t0, a2, s6
                  sra          t3, t4, s7
                  andi         a7, s11, 1435
                  sltiu        t0, t1, -83
                  sra          t2, ra, t1
                  andi         a0, tp, 1475
                  ori          gp, s5, 808
                  sltiu        s9, a7, -746
                  slli         gp, s5, 6
                  add          a5, s10, s10
                  addi         s9, s4, -1840
                  slti         s3, s11, 1157
                  slli         a7, t4, 6
                  ori          s3, s3, 1268
                  srl          sp, t3, t1
                  auipc        t5, 917289
                  or           zero, s10, t0
                  sltu         s1, s5, a6
                  andi         a6, s2, -1320
                  or           s2, s6, s5
                  andi         tp, a0, 90
                  xor          s8, s5, a5
                  and          zero, sp, zero
                  xor          zero, s1, t2
                  sltu         s11, a2, t4
                  and          ra, a2, s8
                  sra          zero, s3, a0
                  sltu         t4, s4, s10
                  addi         s11, a2, -2048
                  nop
                  and          a2, t0, t4
                  xor          gp, a1, t0
                  auipc        t5, 676061
                  xor          s9, a4, t5
                  slti         t2, s9, 908
                  nop
                  slti         a0, s10, 746
                  or           tp, s1, zero
                  xori         zero, a7, -1139
                  srli         a6, s2, 20
                  sub          s0, a3, a2
                  lui          s10, 813982
                  xori         s0, a3, 614
                  nop
                  slt          s9, gp, t3
                  slt          t5, s5, a2
                  srli         t5, a5, 0
                  sub          s5, a4, s2
                  srli         t4, t6, 25
                  nop
                  sub          t5, sp, t1
                  addi         tp, a4, 1119
                  addi         t4, t5, 1639
                  add          t5, a1, t6
                  add          s4, t3, a6
                  add          t0, t5, s3
                  slli         a1, a2, 20
                  xor          s6, a5, s7
                  addi         s6, s0, 16
                  slti         tp, s11, -1478
                  lui          tp, 275297
                  andi         s3, a1, 642
                  addi         tp, a2, -461
                  andi         a2, s9, 1938
                  andi         sp, t3, -1392
                  lui          t0, 338598
                  slti         t3, t5, 1714
                  or           a2, t2, s10
                  srli         sp, ra, 8
                  or           a7, t5, s1
                  slt          t6, s10, a4
                  srli         s1, s2, 18
                  slti         a1, t3, 1228
                  and          s1, t3, s1
                  auipc        s5, 1005811
                  and          s4, s0, t6
                  and          a2, s0, ra
                  auipc        s6, 622163
                  xor          s0, t4, a3
                  srai         tp, a0, 24
                  sltiu        ra, zero, -429
                  srl          a2, a0, a2
                  addi         t3, t1, -1321
                  srli         s1, t2, 20
                  xori         a7, t5, 1336
                  sltu         s1, s7, a2
                  or           a5, t2, t3
                  xor          t2, gp, s2
                  lui          tp, 958316
                  ori          s6, s10, -2
                  or           t2, a6, s4
                  lui          s3, 35496
                  xor          a7, t2, s0
                  slti         s2, a4, -1575
                  add          ra, a2, a1
                  ori          a5, a7, -1374
                  lui          gp, 682075
                  addi         t3, a2, -46
                  srl          s10, s6, t4
                  srli         ra, s8, 25
                  add          s8, tp, sp
                  sll          s4, s6, s11
                  lui          a6, 704844
                  auipc        sp, 897358
                  addi         t6, t6, -1457
                  auipc        a1, 460324
                  nop
                  slti         s0, tp, 284
                  sll          t2, a5, t0
                  lui          s9, 392611
                  nop
                  andi         s6, gp, 223
                  andi         a2, t6, -809
                  nop
                  or           t4, s4, a1
                  srl          a0, a5, s5
                  srai         t2, s8, 14
                  xori         t6, s0, -153
                  add          s0, s0, a7
                  slti         gp, s5, 1326
                  sltiu        t5, a4, -1929
                  srai         ra, zero, 29
                  slli         s0, t1, 6
                  xor          s8, sp, t4
                  nop
                  srl          s0, zero, a4
                  srli         t6, tp, 13
                  andi         gp, t1, 1409
                  slli         a6, t1, 24
                  nop
                  srai         a0, t1, 15
                  srl          zero, t1, t3
                  nop
                  ori          s2, gp, -1775
                  slli         a5, t1, 30
                  sll          s1, t1, s3
                  srai         t4, ra, 14
                  andi         s11, s0, 1247
                  sltiu        s10, sp, 361
                  and          tp, a2, t3
                  or           t6, s3, a4
                  sub          s4, s10, s4
                  sltiu        a7, s6, 1054
                  auipc        s5, 375624
                  sra          s10, s0, a7
                  xori         gp, s8, -1547
                  slli         t5, ra, 0
                  srli         t2, s6, 13
                  xor          s0, s7, sp
                  auipc        t1, 554459
                  auipc        t4, 966178
                  la x23, test_done
                  jalr x0, x23, 0
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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x13, x14, zero
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x29, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x29, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x29, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x29, x9, ecall_handler
                  li x9, 0x1
                  beq x29, x9, instr_fault_handler
                  li x9, 0x5
                  beq x29, x9, load_fault_handler
                  li x9, 0x7
                  beq x29, x9, store_fault_handler
                  li x9, 0xc
                  beq x29, x9, pt_fault_handler
                  li x9, 0xd
                  beq x29, x9, pt_fault_handler
                  li x9, 0xf
                  beq x29, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

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
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x14, x13, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

load_fault_handler:
                  add x14, x13, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

store_fault_handler:
                  add x14, x13, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

ebreak_handler:   
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x14, x13, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x14, x13, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x14, x13, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
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
