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
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 0
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0x7
                  li x1, 0x7
                  li x2, 0x8f6795f7
                  li x3, 0xf47d0451
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0xf2742eaa
                  li x7, 0xf79bef29
                  li x8, 0x80000000
                  li x9, 0x80000000
                  li x10, 0x8da5a9c0
                  li x12, 0xf
                  li x13, 0x80000000
                  li x14, 0xe
                  li x15, 0xc
                  li x16, 0x4
                  li x17, 0x0
                  li x18, 0x0
                  li x20, 0x6
                  li x21, 0xf6dc6f7b
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0x84b230be
                  li x26, 0xfebdc130
                  li x27, 0x1a3dc584
                  li x28, 0x80000000
                  li x29, 0xa
                  li x30, 0x5de3bab2
                  li x31, 0x0
                  la x19, user_stack_end
main:             li           gp, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           a5, 0xbb1fada0
                  li           s8, 0x80000000
                  li           s5, 0x80000000
                  li           a6, 0x0
                  li           t3, 0x0
                  li           s7, 0xffffffff
                  li           a4, 0x80000000
                  li           t6, 0x0
                  li           a2, 0xffffffff
                  lui          s5, 675572
                  auipc        gp, 575370
                  lui          gp, 855397
                  add          s7, s7, s5
                  addi         s5, s8, 1173
                  add          a4, t3, s5
                  addi         gp, s7, -2022
                  add          a5, a4, a6
                  addi         s5, s5, -1835
                  lui          s8, 510956
                  auipc        t3, 648134
                  add          a2, s5, t3
                  auipc        a5, 53840
                  add          s7, a6, a4
                  addi         gp, a2, 640
                  auipc        s8, 283639
                  addi         t3, s8, 462
                  lui          a6, 104719
                  auipc        t3, 610283
                  auipc        t6, 891279 #end riscv_int_numeric_corner_stream_7
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           s7, 0x80000000
                  li           t2, 0x235cbdc9
                  li           a7, 0x6dc86204
                  li           s0, 0xd6a17852
                  li           a0, 0x4c9676cd
                  li           gp, 0xffffffff
                  li           tp, 0xffffffff
                  li           a6, 0xe85fa749
                  li           t3, 0xffffffff
                  nop
                  lui          gp, 370727
                  auipc        s0, 527622
                  addi         t2, tp, 1374
                  nop
                  addi         t5, s7, 246
                  auipc        gp, 241465
                  auipc        s0, 485631
                  sub          a0, t5, tp
                  auipc        s7, 328739
                  addi         a6, tp, 910
                  auipc        gp, 275110
                  nop
                  auipc        t2, 748186
                  nop
                  addi         a7, s0, -1102
                  auipc        t3, 25232
                  sub          gp, gp, t3
                  sub          t2, tp, t5
                  add          t5, a0, s0
                  sub          s7, a6, t2
                  addi         t2, tp, 1484
                  addi         gp, tp, -1645
                  addi         t3, t2, 1293
                  lui          a7, 655337
                  auipc        t3, 744677 #end riscv_int_numeric_corner_stream_13
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           t2, 0xffffffff
                  li           sp, 0x812bfc2e
                  li           t5, 0xf229e304
                  li           tp, 0xffffffff
                  li           s5, 0xffffffff
                  li           a0, 0xb4fd7c7b
                  li           a4, 0x752800c9
                  li           t1, 0x0
                  li           s11, 0xffffffff
                  add          a4, s5, t1
                  nop
                  sub          s5, s11, a0
                  add          sp, a0, sp
                  nop
                  auipc        s10, 978568
                  lui          s10, 333834
                  lui          t2, 752824
                  addi         s11, s11, -804
                  addi         s5, t2, 494
                  lui          t5, 883312
                  add          s5, a4, a4
                  auipc        a4, 11981
                  addi         t2, sp, -1214
                  add          s10, t5, s5
                  nop #end riscv_int_numeric_corner_stream_6
                  li           s6, 0xd81bbbe5 #start riscv_int_numeric_corner_stream_11
                  li           t2, 0x80000000
                  li           tp, 0x80000000
                  li           s4, 0xffffffff
                  li           s1, 0x0
                  li           a5, 0x80000000
                  li           t5, 0xffffffff
                  li           s2, 0x80000000
                  li           s9, 0xffffffff
                  li           a6, 0x55b38112
                  auipc        t2, 237070
                  addi         t2, a6, 156
                  lui          a6, 930664
                  add          tp, tp, s9
                  lui          tp, 737475
                  auipc        s9, 750605
                  auipc        tp, 412807
                  sub          t5, s1, t5
                  sub          s1, s2, a5
                  lui          s4, 154122
                  nop
                  addi         s2, s2, 1676
                  addi         t5, t5, 779
                  sub          s2, s4, s2
                  addi         t2, s2, -65
                  add          s6, t5, s2
                  auipc        t5, 860715
                  nop
                  lui          t5, 1045017
                  addi         s9, s9, 1958
                  lui          s9, 945723
                  addi         a6, s9, 110 #end riscv_int_numeric_corner_stream_11
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           a6, 0x3fdc9ca8
                  li           tp, 0xffffffff
                  li           gp, 0x80000000
                  li           t2, 0xffffffff
                  li           t3, 0xffffffff
                  li           s4, 0xffffffff
                  li           a7, 0x80000000
                  li           s0, 0x80000000
                  li           a2, 0xffffffff
                  auipc        t3, 658136
                  sub          s4, a7, gp
                  nop
                  nop
                  auipc        tp, 74809
                  lui          a7, 216183
                  auipc        a6, 268728
                  sub          a6, t2, t2
                  add          t2, s4, s0
                  addi         gp, a2, -188
                  auipc        a6, 660036
                  lui          a3, 778951
                  add          t2, t2, a3
                  sub          t3, s4, a6
                  addi         a3, tp, 954 #end riscv_int_numeric_corner_stream_18
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           tp, 0x0
                  li           s7, 0x0
                  li           a3, 0xffffffff
                  li           s0, 0xffffffff
                  li           s10, 0xffffffff
                  li           s11, 0x0
                  li           s4, 0xffffffff
                  li           s2, 0x80000000
                  li           t3, 0x0
                  nop
                  auipc        s7, 773895
                  lui          a3, 57235
                  sub          s4, tp, s11
                  addi         ra, s2, 1856
                  nop
                  sub          s2, s10, s0
                  auipc        s10, 152119
                  lui          s11, 776715
                  addi         s11, a3, -59
                  lui          s4, 270362
                  lui          s4, 141658
                  add          s7, t3, s0
                  addi         s7, s7, -1333
                  auipc        ra, 515369
                  addi         t3, a3, 1321
                  add          a3, s11, a3
                  add          s7, s10, s7
                  addi         t3, s7, -666
                  lui          s0, 708930
                  nop
                  auipc        ra, 956736
                  nop
                  addi         s4, s10, 177
                  add          s4, t3, tp
                  sub          t3, s2, ra
                  nop
                  add          s10, s7, s10
                  nop
                  addi         ra, s11, -942 #end riscv_int_numeric_corner_stream_5
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           a2, 0xffffffff
                  li           a0, 0x80000000
                  li           t4, 0xffffffff
                  li           s11, 0xffffffff
                  li           s1, 0x80000000
                  li           s2, 0x0
                  li           s6, 0x56ed48f
                  li           s8, 0x80000000
                  li           t1, 0x0
                  addi         s1, s8, -967
                  sub          s8, t1, t1
                  auipc        t4, 270514
                  nop
                  add          a0, s1, s7
                  addi         a0, s7, -107
                  addi         s7, s2, 367
                  lui          s1, 621595
                  auipc        s2, 672327
                  sub          t4, s7, a2
                  add          s11, s7, t1
                  lui          s7, 164894
                  add          a0, a2, t4
                  lui          s7, 974667
                  auipc        a0, 765506
                  lui          a0, 78575
                  lui          a0, 555834
                  lui          s6, 776145
                  nop
                  auipc        a2, 575894
                  lui          t1, 413312
                  lui          a2, 682317 #end riscv_int_numeric_corner_stream_19
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           a4, 0x0
                  li           sp, 0x0
                  li           a3, 0x311f6064
                  li           a7, 0x80000000
                  li           s5, 0x80000000
                  li           t6, 0x0
                  li           s7, 0x4e93edce
                  li           s6, 0xffffffff
                  li           a6, 0x0
                  sub          s5, a3, s5
                  add          s5, a6, s6
                  addi         s5, a3, 1136
                  add          a3, s5, s7
                  sub          s7, t6, t6
                  lui          s7, 192576
                  nop
                  auipc        t6, 666434
                  add          a3, a6, s6
                  add          s7, t6, sp
                  sub          a3, a3, a4
                  add          s0, sp, s7
                  lui          a3, 261115
                  sub          a3, s5, s5
                  addi         s5, a6, 811
                  add          a7, s0, s0
                  addi         s7, a4, -1921
                  nop
                  lui          a6, 828768
                  sub          t6, s7, a7
                  nop
                  add          sp, a3, s6
                  sub          s7, sp, sp
                  sub          a3, a4, a4
                  nop
                  sub          sp, a3, t6
                  addi         t6, a7, -1784
                  sub          t6, a7, sp
                  add          s7, a4, a4 #end riscv_int_numeric_corner_stream_12
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           t4, 0x80000000
                  li           s9, 0x80000000
                  li           a4, 0xffffffff
                  li           s8, 0x80000000
                  li           s1, 0x0
                  li           tp, 0x599582d5
                  li           a6, 0x0
                  li           t6, 0x80000000
                  li           a0, 0x0
                  add          a6, a4, a4
                  auipc        s9, 233768
                  auipc        a4, 55307
                  auipc        s8, 451182
                  nop
                  auipc        s9, 471286
                  auipc        t4, 283792
                  add          a6, a6, a6
                  nop
                  add          s8, t6, a4
                  nop
                  auipc        s1, 136375
                  lui          t6, 960052
                  auipc        t6, 521191
                  nop
                  sub          s8, s8, s9
                  auipc        s9, 420300
                  nop
                  lui          t3, 882907
                  addi         a0, t3, -336
                  nop #end riscv_int_numeric_corner_stream_3
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           t2, 0xffffffff
                  li           s4, 0xffffffff
                  li           a0, 0xffffffff
                  li           t6, 0x0
                  li           ra, 0x80000000
                  li           s6, 0xffffffff
                  li           tp, 0x80000000
                  li           gp, 0x80000000
                  li           a5, 0x80000000
                  lui          a0, 702640
                  add          ra, t3, t3
                  addi         t2, t3, -1868
                  lui          ra, 514230
                  add          ra, t6, t3
                  addi         gp, t6, 838
                  auipc        t3, 674573
                  nop
                  sub          ra, ra, t6
                  add          a5, a5, s4
                  nop
                  sub          gp, a5, a5
                  lui          t2, 204077
                  sub          a5, s4, ra
                  lui          a5, 301789
                  nop
                  auipc        s6, 500101
                  auipc        t2, 191774
                  nop
                  addi         t6, s4, -424
                  addi         a5, t3, 1330
                  sub          t3, ra, a0
                  lui          s4, 1043633
                  addi         t6, s6, -206
                  lui          t3, 301717 #end riscv_int_numeric_corner_stream_4
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s0, 0x80000000
                  li           s8, 0xffffffff
                  li           tp, 0xffffffff
                  li           a4, 0x80000000
                  li           a3, 0x0
                  li           t6, 0x0
                  li           gp, 0x0
                  li           s7, 0x80000000
                  li           t5, 0xffffffff
                  nop
                  lui          s0, 706434
                  add          s8, s8, s8
                  nop
                  addi         t5, s8, 798
                  sub          gp, s0, s8
                  lui          t6, 915030
                  auipc        s0, 638852
                  lui          t6, 435059
                  auipc        s7, 508487
                  addi         t6, s0, 686
                  addi         s0, s8, 1369
                  add          t3, s8, s0
                  lui          t6, 585236
                  lui          s8, 502872 #end riscv_int_numeric_corner_stream_9
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           a7, 0x80000000
                  li           s9, 0x0
                  li           s6, 0xffffffff
                  li           s0, 0x80000000
                  li           t4, 0x687ba366
                  li           s11, 0x0
                  li           tp, 0x635941ea
                  li           sp, 0x80000000
                  li           s5, 0xffffffff
                  sub          t4, s6, s5
                  add          sp, t4, a7
                  auipc        t4, 883484
                  sub          sp, s5, s0
                  addi         s6, sp, 252
                  auipc        t4, 940978
                  nop
                  add          a7, sp, sp
                  sub          t6, s5, s0
                  auipc        s6, 992755
                  sub          a7, a7, t4
                  sub          s11, s0, s6
                  nop
                  lui          s0, 506873
                  nop
                  add          s0, s5, s11
                  lui          s6, 506678
                  lui          a7, 788409
                  auipc        t6, 130768
                  sub          sp, s0, s9
                  lui          s11, 77334
                  add          s6, s6, s9
                  lui          s5, 468059
                  lui          tp, 452167 #end riscv_int_numeric_corner_stream_17
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           s11, 0xffffffff
                  li           s6, 0x0
                  li           a4, 0x5836edc4
                  li           s10, 0x0
                  li           a5, 0x4683706a
                  li           ra, 0xbe360c3
                  li           t2, 0xffffffff
                  li           gp, 0xffffffff
                  li           s9, 0xffffffff
                  addi         s11, a5, -447
                  lui          s6, 468129
                  lui          a4, 264438
                  auipc        s10, 990868
                  lui          s11, 872668
                  auipc        s1, 905756
                  add          s6, s9, gp
                  add          s9, s11, s9
                  nop
                  addi         a5, a5, 882
                  auipc        ra, 1031102
                  sub          a4, gp, s10
                  sub          t2, s1, s10
                  addi         t2, t2, 653
                  sub          s1, s11, s10
                  nop
                  sub          a4, t2, a4
                  auipc        a4, 493450
                  auipc        a5, 1037464
                  lui          s10, 100903
                  auipc        s10, 228535
                  add          s10, t2, a5
                  lui          gp, 1836
                  addi         gp, ra, 1465
                  addi         a4, s1, -1021
                  add          t2, s1, t2
                  add          s9, s10, a4
                  addi         t2, gp, -396 #end riscv_int_numeric_corner_stream_14
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           a5, 0x80000000
                  li           a0, 0xffffffff
                  li           t5, 0x0
                  li           ra, 0x80000000
                  li           t3, 0x0
                  li           sp, 0xffffffff
                  li           s9, 0xffffffff
                  li           a2, 0x80000000
                  li           s2, 0xffffffff
                  addi         s9, sp, 1261
                  lui          t3, 435240
                  sub          a5, t1, s2
                  addi         sp, t5, -1493
                  add          a0, t3, t5
                  auipc        a2, 823051
                  nop
                  auipc        s9, 967116
                  sub          a5, t1, a5
                  sub          ra, a5, a2
                  add          ra, t3, s2
                  add          ra, a5, t3
                  auipc        a2, 640497
                  addi         t5, t3, -1369
                  addi         s9, t3, -1502
                  nop
                  auipc        s9, 847875
                  sub          t3, t5, s9 #end riscv_int_numeric_corner_stream_2
                  andi         s6, a7, 1038
                  ori          s10, s10, 20
                  sra          s2, s4, t4
                  lui          a2, 342622
                  and          a6, t0, s7
                  addi         s6, s6, -777
                  slt          s10, s5, t2
                  sltu         s1, s0, a6
                  auipc        a3, 256830
                  slli         t2, ra, 2
                  sra          t2, gp, t2
                  srl          s7, zero, t6
                  and          t5, s3, sp
                  or           s4, s11, t6
                  and          s9, s6, s7
                  nop
                  sltiu        s5, s4, -1905
                  sub          t1, a6, s1
                  sltu         s8, t0, a7
                  sll          t4, a1, s8
                  srl          ra, t5, t5
                  srli         t4, gp, 23
                  srl          a6, zero, zero
                  ori          s1, t5, 1249
                  xor          s8, a0, a6
                  nop
                  srai         t5, s2, 24
                  auipc        a4, 303841
                  sll          s1, gp, a5
                  slli         t6, s3, 26
                  addi         s7, s6, -1898
                  add          s11, s8, s2
                  or           s11, s1, t2
                  slti         tp, t6, 1148
                  slti         s6, t5, -139
                  or           t5, t4, t6
                  xori         s11, t1, 107
                  sub          tp, ra, a7
                  add          a4, t6, t5
                  sltiu        a0, tp, 1425
                  addi         sp, gp, 1054
                  ori          a2, s11, -1429
                  andi         t4, a0, 499
                  slt          t3, s9, s5
                  ori          s10, a0, -754
                  xori         s11, a2, -1452
                  ori          gp, s4, 1986
                  xor          s9, t1, s10
                  xor          s2, s3, s3
                  slli         sp, s10, 5
                  nop
                  auipc        a2, 683437
                  sltiu        s7, a6, -1848
                  lui          t5, 367440
                  xor          ra, a0, tp
                  or           t6, a7, a5
                  auipc        a0, 696862
                  srli         s1, a3, 30
                  andi         s6, a2, -716
                  slli         t6, s10, 2
                  srl          s5, a2, a0
                  and          sp, sp, zero
                  slti         s7, a6, -1960
                  lui          t4, 20607
                  add          a4, s3, sp
                  addi         s9, a3, -924
                  xori         s4, zero, -87
                  nop
                  slti         t4, a7, 1349
                  or           t6, ra, s1
                  slti         a5, a4, 657
                  add          a6, t0, s8
                  srl          t6, s4, t1
                  sltu         s1, t1, s6
                  andi         t5, a0, 1219
                  andi         t3, s6, 1467
                  and          zero, s3, t4
                  or           t4, a1, s2
                  nop
                  auipc        a7, 805677
                  sltu         a6, a6, s5
                  add          s10, s3, a5
                  srl          s4, t0, gp
                  xori         a4, a2, 870
                  lui          a4, 154201
                  sra          t2, s2, t4
                  srli         t1, s11, 24
                  add          s0, a0, s10
                  sub          t5, a7, zero
                  add          a4, ra, a1
                  sra          zero, s0, s0
                  or           s4, zero, t4
                  or           s2, a0, s3
                  addi         gp, s9, -892
                  nop
                  nop
                  sll          s7, ra, s0
                  auipc        s9, 501858
                  srli         ra, s1, 25
                  slt          a4, a1, t6
                  addi         t1, a2, -1642
                  sll          t2, t5, s2
                  xori         t2, t6, -393
                  add          t4, s8, s5
                  addi         s10, s4, 185
                  srl          a0, s5, s2
                  srl          t1, a1, s6
                  and          s9, ra, s2
                  nop
                  add          a5, s2, t6
                  auipc        s10, 1044418
                  slti         a7, s11, -1631
                  add          sp, a3, s4
                  andi         s6, t5, -891
                  srli         t2, t4, 13
                  addi         a5, a4, -1637
                  sltu         a5, a7, a3
                  slti         a7, t1, -211
                  sltu         s9, tp, a4
                  andi         s6, a2, 299
                  srli         t6, ra, 16
                  or           tp, t2, a5
                  xor          a4, tp, a1
                  srli         s8, t2, 18
                  ori          t2, gp, -534
                  nop
                  and          zero, a6, s6
                  sltu         a6, a4, t3
                  addi         sp, s10, 274
                  slli         t2, s0, 18
                  ori          t4, s5, 121
                  sra          s10, a5, t1
                  addi         t5, t4, -60
                  srai         s6, zero, 18
                  xori         a5, s9, -868
                  srai         t4, a7, 8
                  xor          a2, t4, gp
                  add          a5, s7, s2
                  srli         s5, a0, 1
                  lui          a7, 217265
                  slt          a3, a4, s4
                  or           t2, s7, s4
                  sltiu        gp, a0, 520
                  sub          a6, a7, t3
                  or           s11, tp, tp
                  slli         s7, s6, 7
                  and          a6, a7, a4
                  addi         a7, zero, -259
                  sra          a5, s4, zero
                  xor          a0, a7, t6
                  slt          s10, t4, s10
                  and          sp, s3, s1
                  or           s1, t6, s5
                  sltu         t6, t4, ra
                  srai         s5, s7, 12
                  srl          t6, t4, t1
                  addi         ra, s2, 1135
                  lui          t2, 280632
                  slli         t1, s2, 4
                  slli         a4, ra, 30
                  xor          s5, s1, a1
                  srl          s1, s6, t6
                  sll          s4, t2, s9
                  srl          t3, t5, t4
                  and          t3, s9, s11
                  ori          t5, s4, 726
                  xor          s6, t1, t2
                  sltiu        a2, a4, 1749
                  xor          a6, s3, a2
                  srai         s10, s2, 16
                  addi         a7, s10, 1670
                  sra          a4, zero, t4
                  sltiu        s8, t2, -1198
                  add          s0, sp, t4
                  addi         s10, s1, -919
                  xor          s8, s5, gp
                  sra          s11, s11, s6
                  srai         t3, s1, 10
                  sll          s4, s5, s3
                  srai         s2, s6, 7
                  addi         t1, t0, 1884
                  sltu         s5, t3, a4
                  or           a4, zero, t3
                  lui          s1, 497504
                  addi         a4, a1, 181
                  and          s6, t6, s8
                  slt          s6, a0, a3
                  sltiu        a5, a5, -523
                  slli         a0, s3, 25
                  srli         s7, s3, 18
                  auipc        s2, 33385
                  srl          a2, t2, s5
                  sub          a2, s9, s8
                  or           a3, a6, ra
                  sra          s8, t4, a7
                  xor          tp, gp, sp
                  auipc        t1, 888867
                  lui          s7, 331713
                  slti         s7, a7, -1411
                  srai         t1, a5, 2
                  sra          s8, t6, a0
                  lui          t5, 346616
                  addi         tp, s7, 20
                  addi         t1, gp, -72
                  slti         a7, a5, -323
                  srai         a5, s2, 7
                  xori         zero, a0, 1678
                  xori         a0, s7, 1914
                  slt          sp, s8, a0
                  sltiu        a3, s11, -809
                  auipc        t2, 184938
                  add          a5, a2, s0
                  srai         t5, a4, 18
                  sltu         a4, a4, a0
                  slt          s11, s11, gp
                  addi         zero, s2, -127
                  andi         a2, s3, 1897
                  srli         s5, s1, 18
                  xor          ra, a5, a6
                  nop
                  andi         s10, a0, 1138
                  addi         tp, a1, 1461
                  slt          tp, t5, s9
                  sltiu        a4, s10, -675
                  andi         s8, t0, 914
                  and          t5, s5, s7
                  sll          s6, a4, a7
                  srli         s5, s10, 23
                  add          a7, t2, s11
                  ori          t1, sp, -2010
                  addi         s4, a0, -1910
                  and          s2, gp, t4
                  or           a0, s9, t1
                  srl          a0, a2, a1
                  or           s5, s8, a2
                  sra          gp, s3, s8
                  add          s2, a6, s0
                  slt          t3, s5, a2
                  xor          t6, ra, s2
                  srai         t6, a3, 21
                  srli         t6, t0, 13
                  and          a3, tp, t2
                  lui          t6, 631922
                  sra          a4, t4, a5
                  xori         s0, s2, -159
                  slti         s9, t3, -1330
                  sll          s6, a2, a7
                  srli         s5, a4, 14
                  sra          t4, s2, s8
                  auipc        t2, 607790
                  sra          s6, t6, a3
                  add          a3, a5, s8
                  xori         t1, t4, 1010
                  sltiu        s1, s6, -706
                  nop
                  xor          sp, ra, s8
                  auipc        t3, 947525
                  nop
                  xor          t4, zero, a4
                  srl          t6, zero, a0
                  addi         s4, a7, 722
                  srli         t6, s0, 23
                  slli         a2, s3, 25
                  srl          t6, a3, s7
                  xor          a6, s8, ra
                  sub          s0, s9, s1
                  sub          s4, a3, s1
                  nop
                  sltiu        t3, s6, -1258
                  srli         a0, s0, 28
                  nop
                  srli         ra, t1, 22
                  xor          s2, gp, t2
                  ori          s0, s10, -1192
                  sltiu        a5, a2, -1279
                  sub          s1, s3, t1
                  or           t5, ra, zero
                  and          a6, s8, s11
                  slti         a2, s9, 1873
                  and          s10, s3, a6
                  sltu         s10, s7, s9
                  sra          ra, a2, t0
                  sub          t1, t1, a5
                  srli         sp, t2, 25
                  nop
                  auipc        t2, 72604
                  nop
                  andi         a6, tp, 1061
                  srli         a7, a2, 24
                  xori         s1, a0, 1849
                  srl          s0, s1, s0
                  srl          s5, a6, s0
                  sll          tp, s1, a3
                  srl          a2, ra, a6
                  slt          s4, s2, a5
                  add          s4, s11, zero
                  srai         t4, a6, 4
                  slli         s0, t4, 19
                  sub          a0, s3, s6
                  xori         t2, s4, -1474
                  sll          s0, s5, t5
                  slli         sp, t0, 0
                  xor          s7, s6, a3
                  srl          t2, a1, a1
                  slt          zero, zero, a2
                  lui          a7, 113764
                  srl          s6, t3, s5
                  slli         s10, s11, 6
                  srl          zero, gp, t5
                  andi         s0, a5, 936
                  slt          s11, t6, s4
                  lui          a6, 790545
                  or           s5, s5, a1
                  sra          gp, a6, gp
                  sltiu        s9, s0, 499
                  nop
                  sltu         t2, s8, t5
                  sub          s8, s10, zero
                  slt          s5, a5, s6
                  sltiu        s9, t1, 252
                  srl          s5, t2, sp
                  and          t6, t0, sp
                  andi         t1, ra, -1189
                  auipc        s11, 574817
                  srli         s0, zero, 25
                  sll          s9, t3, s1
                  auipc        ra, 1011670
                  sltiu        sp, s10, 1194
                  sub          a5, s6, t3
                  add          a7, t2, a6
                  nop
                  or           a5, a1, s3
                  add          s2, s2, s8
                  xori         s6, sp, 805
                  sll          s7, s11, a4
                  xori         zero, a1, -7
                  auipc        s7, 491599
                  slt          s1, t5, t4
                  srai         a4, a1, 19
                  srai         a0, sp, 2
                  xor          t6, s4, s2
                  and          s2, s9, zero
                  auipc        t2, 752578
                  sll          t3, a3, sp
                  xor          s1, a5, s10
                  auipc        s5, 89897
                  xor          t3, s10, t4
                  auipc        s1, 628405
                  xori         a3, a6, 1075
                  nop
                  slt          s0, t2, t5
                  sltu         s1, tp, t0
                  sltu         s8, s5, gp
                  slti         t1, s1, 1766
                  sltiu        s10, s8, 636
                  lui          t5, 669932
                  ori          t6, a7, -1167
                  and          a2, t1, t4
                  auipc        a5, 875563
                  sltiu        sp, a2, 401
                  srl          s9, t5, a3
                  auipc        gp, 226745
                  sltu         s0, a6, a0
                  nop
                  xor          sp, t5, a7
                  sltiu        zero, s9, 909
                  lui          gp, 478133
                  nop
                  srai         s8, s2, 20
                  xori         a4, s7, 1778
                  sltu         zero, a1, a1
                  srai         sp, s3, 15
                  nop
                  xor          sp, s7, s10
                  and          s11, a1, tp
                  srai         t2, t1, 13
                  sra          a3, a5, s2
                  nop
                  srai         a5, t3, 14
                  srai         t4, s4, 28
                  addi         t6, s7, -310
                  auipc        s0, 147769
                  sll          s4, s2, a6
                  auipc        a5, 762807
                  sub          zero, s0, a3
                  sra          t3, s5, a5
                  srai         t1, s1, 17
                  addi         ra, zero, 661
                  slli         s5, t6, 9
                  sra          zero, t5, zero
                  xori         s4, a0, -271
                  nop
                  add          s4, gp, a1
                  sltu         zero, a4, s3
                  xor          s6, s11, t5
                  xor          a3, t5, t3
                  add          s4, t3, t0
                  srl          a2, tp, ra
                  srli         t5, s0, 13
                  lui          s4, 265977
                  sub          a4, s1, a3
                  srl          s11, a5, a7
                  auipc        s1, 731926
                  slt          ra, zero, a4
                  slli         a6, a2, 17
                  sll          t2, s8, a4
                  auipc        s10, 858408
                  andi         a5, t3, 330
                  andi         s8, sp, -667
                  xori         tp, a7, 925
                  auipc        a2, 660223
                  or           s2, a7, s11
                  addi         t6, t6, 1221
                  sltiu        t4, t6, -1179
                  sub          s2, a5, t1
                  or           tp, s7, a1
                  xori         sp, t6, 1492
                  and          sp, s2, t1
                  slti         zero, a6, 1601
                  sltu         s1, a4, s0
                  xor          zero, a3, s11
                  sltiu        ra, a2, -1054
                  srai         a6, tp, 1
                  srl          t6, a7, a6
                  slt          s1, a3, a6
                  ori          t4, s1, 1733
                  nop
                  nop
                  add          a2, s3, a3
                  and          sp, a3, s9
                  andi         ra, s11, -796
                  andi         s10, gp, -29
                  sltiu        a6, sp, -1363
                  sra          s4, t2, s2
                  nop
                  slt          s5, s7, s11
                  ori          s11, zero, -1968
                  xor          a7, s8, s11
                  srli         t6, tp, 21
                  sra          t3, gp, t0
                  and          s11, s9, t1
                  sltiu        a0, sp, 482
                  slli         a3, s1, 31
                  addi         t4, a1, 1160
                  add          t1, t5, sp
                  sltu         a2, ra, a2
                  add          t6, t5, s7
                  slli         t6, a2, 9
                  andi         t6, s10, -472
                  srli         s8, sp, 11
                  sub          a2, s1, t6
                  lui          t2, 885216
                  sra          s6, zero, s3
                  sltu         a4, s1, t0
                  xori         s4, s1, 1622
                  xor          a0, zero, ra
                  srli         tp, a3, 17
                  slt          s1, s11, a3
                  srl          ra, s2, t0
                  add          s2, a3, t4
                  srai         gp, t6, 15
                  slti         a6, s6, -523
                  sltu         s7, s11, a7
                  sltu         a6, a0, s11
                  ori          a4, t4, -1595
                  sra          a3, s0, t1
                  slli         t5, gp, 6
                  slt          t5, zero, a3
                  slt          t2, tp, a6
                  xori         sp, s1, -588
                  xor          s8, a3, s2
                  ori          t6, s6, 1498
                  add          a2, t5, a6
                  xori         a5, t4, -1391
                  slt          s9, a3, a2
                  slti         ra, a3, 1611
                  auipc        a6, 206865
                  andi         t2, s3, 1253
                  andi         t5, ra, 142
                  sll          sp, t5, a3
                  or           a2, t3, t5
                  sltiu        a7, a3, 1188
                  andi         s4, a3, -213
                  add          a4, t4, ra
                  sra          s8, sp, t1
                  slt          a7, a3, s3
                  sll          s9, t3, t0
                  nop
                  and          t6, a2, t5
                  slt          s1, s5, a6
                  and          s9, a4, a0
                  xori         ra, a0, 1487
                  slt          a2, s5, s8
                  and          a3, s9, a1
                  sub          a0, s3, s7
                  addi         zero, s6, -649
                  and          s4, ra, a7
                  or           a5, s7, s11
                  sub          a0, a6, s0
                  sltiu        a0, a4, -569
                  or           zero, a2, t2
                  and          s11, t2, s5
                  or           s2, s3, s7
                  srl          s6, s9, s5
                  slt          t2, zero, zero
                  andi         a2, a3, -28
                  or           t1, t5, a3
                  srli         a3, t1, 14
                  srli         t2, t1, 13
                  srli         ra, t3, 31
                  and          t4, t5, t0
                  and          s6, gp, a5
                  sltiu        s7, t5, 624
                  add          s9, a4, s7
                  lui          a2, 771262
                  xori         s11, s7, 146
                  nop
                  slti         a7, s7, -1282
                  slt          s6, s10, s10
                  or           s9, s3, sp
                  ori          gp, a1, 945
                  slli         s7, a3, 22
                  srl          s0, s5, s8
                  addi         t6, s1, -1455
                  sltu         ra, s2, s0
                  xori         t5, s11, -1750
                  auipc        t6, 59394
                  sltu         t1, t5, s7
                  sub          s7, tp, t6
                  sltu         s2, s8, t2
                  xor          s5, a7, s6
                  nop
                  slli         a6, s11, 21
                  slt          s0, t6, s10
                  xori         sp, s7, -1403
                  sltu         s6, s0, t0
                  sra          t5, s0, t4
                  xor          s10, t6, s10
                  srli         s11, s1, 30
                  sra          ra, t0, t0
                  or           ra, s2, t6
                  sltiu        t4, s10, 1738
                  sll          s7, s5, gp
                  sltiu        a6, s9, -1264
                  xor          s0, a5, s10
                  srl          s11, t1, zero
                  srl          t3, a0, gp
                  xor          s11, s5, s2
                  slt          a2, t5, t1
                  and          a4, a1, s9
                  sra          a4, a3, t4
                  add          s4, a7, t3
                  srl          s2, s3, s8
                  srli         t2, s1, 20
                  nop
                  srli         s1, s9, 27
                  sra          t6, s1, s10
                  sub          a3, s11, tp
                  sub          a3, s5, sp
                  xor          a6, t3, t2
                  auipc        a3, 407653
                  lui          s2, 590980
                  slt          s5, a0, a2
                  srai         ra, a5, 12
                  sltiu        s11, t0, -1851
                  sltiu        a7, s5, -1084
                  nop
                  slti         s6, s9, 1805
                  ori          t1, s6, -1981
                  sll          a5, s5, s3
                  sltiu        a2, s9, 1494
                  nop
                  add          t5, t4, s11
                  auipc        s11, 256988
                  slt          a3, s6, t4
                  srai         a0, t3, 23
                  srli         ra, s8, 20
                  srl          s10, s4, s2
                  addi         s5, t3, 1726
                  slli         t5, s8, 1
                  slt          a6, s1, s1
                  and          a7, s6, t3
                  sub          tp, s6, a1
                  srai         t3, s10, 5
                  sll          t6, s3, sp
                  sub          s6, sp, t3
                  slli         a6, t1, 3
                  nop
                  nop
                  xori         s9, s0, -1299
                  xori         a3, t0, 1888
                  auipc        s11, 696981
                  xor          t3, t2, a1
                  srli         gp, t2, 24
                  sltu         s6, s5, s5
                  sll          a6, a2, gp
                  sltu         a7, t3, s8
                  sll          s4, sp, s1
                  sra          a6, s11, sp
                  and          a3, a7, gp
                  slti         a2, a5, -1761
                  xori         sp, a4, 1466
                  sll          ra, zero, s2
                  nop
                  add          s0, t0, gp
                  sll          a5, a4, s8
                  ori          s11, tp, -1840
                  and          t1, t2, a7
                  auipc        s11, 988791
                  sll          a4, s2, s8
                  andi         t2, a2, 34
                  ori          s5, s0, -129
                  slli         a2, s1, 5
                  xor          s6, ra, s10
                  slli         t1, a0, 12
                  xori         s1, sp, -178
                  sll          a2, a1, s1
                  slti         t1, a0, -640
                  srli         s0, a7, 28
                  sll          s8, a4, s4
                  sltiu        a3, s11, -10
                  andi         a5, tp, -1547
                  srli         t3, tp, 21
                  add          t5, a7, a1
                  ori          t4, t1, 983
                  srli         a0, t0, 12
                  nop
                  slti         a5, s9, 1208
                  slli         tp, s1, 10
                  or           t3, t6, t3
                  and          s5, a5, t5
                  sltu         s8, s5, s1
                  andi         s2, a7, -1049
                  nop
                  auipc        a3, 699477
                  and          t6, a4, a5
                  xor          t1, s6, a2
                  sll          a3, a1, s10
                  and          tp, t5, t1
                  add          a6, s11, ra
                  addi         a6, s4, -1355
                  slli         gp, s3, 13
                  slti         t4, t3, -103
                  sltu         s6, s8, s9
                  srl          zero, s7, s8
                  addi         s5, s3, 1
                  slt          t5, s3, s5
                  addi         s2, sp, -790
                  sltiu        t1, a6, 1073
                  nop
                  slli         s5, a5, 8
                  nop
                  srai         zero, a7, 7
                  auipc        a2, 63964
                  lui          a3, 202416
                  sltu         zero, a7, a5
                  slti         t6, s3, -849
                  sltu         gp, s11, a3
                  srl          s5, a6, t5
                  sll          a6, sp, tp
                  slt          t2, t0, a1
                  slli         t5, s2, 17
                  sra          t5, tp, s8
                  add          t1, s3, a2
                  andi         s6, t2, 1933
                  nop
                  nop
                  addi         a3, tp, -800
                  and          t2, a5, s11
                  addi         zero, gp, -879
                  addi         a7, t6, 577
                  slli         s7, t3, 15
                  sltu         s2, a4, s6
                  sll          a5, t3, t4
                  addi         s7, s9, 284
                  srli         ra, s3, 0
                  slli         s2, t2, 24
                  sll          s4, a7, s0
                  andi         t4, a0, 107
                  srli         t2, t4, 19
                  auipc        a4, 976744
                  nop
                  slli         a5, zero, 23
                  srl          sp, s11, a1
                  ori          a4, t1, -296
                  slli         s5, t0, 21
                  sltu         s0, s1, s9
                  srli         s11, s2, 1
                  slti         sp, s3, 1899
                  xori         s5, t3, 1411
                  slti         ra, ra, 1877
                  auipc        s10, 957460
                  ori          s4, s7, -1435
                  sltu         s9, t2, a3
                  ori          a4, sp, -1694
                  sra          s9, s3, s3
                  sltiu        ra, a1, -821
                  add          a7, s5, a3
                  and          gp, s3, a0
                  or           s7, t5, t6
                  or           s10, zero, a3
                  slti         t1, s9, 1206
                  slti         sp, t0, 1820
                  xori         sp, t5, -2
                  srai         s11, s3, 5
                  sll          a2, s9, ra
                  srl          tp, s1, s1
                  ori          a4, s1, -1906
                  lui          t1, 778933
                  add          s4, s1, s7
                  sub          a4, s9, a7
                  slt          s6, s3, ra
                  auipc        a2, 174831
                  srl          tp, t0, ra
                  addi         t4, a2, -592
                  sub          s4, gp, a3
                  sra          zero, t4, t4
                  srli         t2, s6, 17
                  or           sp, t5, zero
                  ori          zero, s4, 942
                  auipc        s7, 492674
                  auipc        t4, 21251
                  slti         s5, s7, -454
                  and          a0, a6, s2
                  nop
                  addi         ra, s0, 1085
                  srl          s5, t1, t3
                  sll          t1, sp, ra
                  add          s6, t5, zero
                  xor          a6, gp, s3
                  sltu         tp, s8, s1
                  srai         a7, a2, 14
                  auipc        a6, 409967
                  xori         gp, s1, 562
                  srl          a4, s9, a1
                  lui          s11, 883266
                  srai         s8, a3, 26
                  srl          t2, a1, s1
                  srli         tp, t1, 23
                  sltiu        t5, a6, -688
                  addi         s8, a1, 342
                  sub          s11, a1, s7
                  xori         t1, t1, 1683
                  slli         a6, t0, 10
                  sra          gp, t6, s3
                  sra          t1, t1, t6
                  slt          t4, t0, ra
                  add          zero, ra, a4
                  xori         a2, t4, -1601
                  sra          s7, zero, t5
                  sll          s4, tp, t2
                  or           s6, s8, t6
                  sltu         s9, t0, t3
                  slt          sp, s0, t2
                  andi         sp, a5, -457
                  slli         t1, t6, 16
                  auipc        a5, 497974
                  and          s0, a3, a6
                  andi         a5, t6, -1445
                  slli         s8, ra, 22
                  xor          a7, s9, ra
                  xori         t2, s11, 82
                  sltiu        a4, zero, 1521
                  slti         s7, a0, 479
                  slti         gp, t5, 287
                  sra          gp, t0, ra
                  auipc        s6, 581315
                  and          s2, t1, a0
                  xori         s7, a5, -1881
                  ori          a0, a2, -951
                  sll          a5, s0, t4
                  srai         t6, t0, 19
                  xor          s4, s9, tp
                  slti         s5, tp, 665
                  sub          a7, a0, a3
                  sub          s1, a5, s4
                  sra          t3, a3, zero
                  andi         t4, a2, 1191
                  and          s6, a7, s10
                  srli         t5, s5, 5
                  add          s10, s4, ra
                  slt          a2, t0, tp
                  lui          t2, 156687
                  andi         sp, s2, -971
                  slti         a3, s2, -736
                  sll          s0, a6, a0
                  addi         a0, s9, -1485
                  srai         t6, t3, 10
                  or           s11, a0, s11
                  srai         a3, a5, 0
                  sltiu        s10, s4, 1776
                  xori         sp, s8, 1216
                  slli         t3, t3, 30
                  srli         t6, a0, 12
                  ori          a3, t2, 715
                  andi         ra, sp, -645
                  sll          s11, s1, gp
                  ori          a5, gp, 1531
                  sra          a0, ra, s3
                  slti         t2, s2, -920
                  nop
                  and          t4, zero, a2
                  xor          a0, s5, s6
                  ori          ra, a3, -620
                  sll          a7, gp, s4
                  nop
                  sltiu        s5, a6, 638
                  srai         s5, s0, 1
                  lui          s6, 190830
                  sltiu        t6, s3, 754
                  or           t5, a3, ra
                  addi         s7, s6, 905
                  ori          a4, t2, 800
                  slli         tp, t6, 10
                  auipc        a7, 303563
                  sltiu        s10, s11, -1444
                  slt          t6, s8, s6
                  xori         a2, s1, -1114
                  slti         t2, a5, -1482
                  sltu         t1, s7, s3
                  sltu         s11, a1, zero
                  ori          s9, s11, 865
                  srli         a0, t6, 8
                  or           tp, a5, t5
                  lui          ra, 381301
                  slli         gp, t4, 29
                  nop
                  sll          a2, t4, a7
                  xori         s8, s8, -652
                  lui          s5, 222896
                  srli         ra, ra, 15
                  slti         s10, a5, 1568
                  andi         s1, t2, -1527
                  xor          gp, zero, s10
                  slli         s6, a4, 6
                  slti         gp, ra, 926
                  xor          a0, a5, a4
                  srai         ra, s5, 6
                  addi         sp, t2, -1132
                  and          a6, a3, s0
                  slt          a4, s3, s8
                  sll          s4, t3, s7
                  slti         a7, s4, -586
                  xor          zero, t0, s11
                  sra          s2, t1, t1
                  andi         s11, zero, -585
                  sltiu        a2, s7, 192
                  sltiu        t6, a6, 716
                  xori         s6, t3, 1079
                  slt          t5, s3, a2
                  srl          t4, t1, s8
                  xor          a5, sp, a7
                  lui          t2, 781370
                  lui          s9, 116839
                  ori          a0, gp, 515
                  sltiu        t1, t1, -623
                  slti         s9, s8, 1862
                  slt          s11, ra, sp
                  andi         t6, s6, -555
                  xor          s7, a3, s7
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           t5, 0xffffffff
                  li           t3, 0x0
                  li           t1, 0xbe899229
                  li           s10, 0x0
                  li           a3, 0x0
                  li           sp, 0xffffffff
                  li           a7, 0xffffffff
                  li           s11, 0xffffffff
                  li           t2, 0x80000000
                  sub          sp, t2, s11
                  lui          a3, 397873
                  nop
                  lui          a7, 716139
                  auipc        s10, 39743
                  lui          t3, 755232
                  addi         s1, a7, 155
                  nop
                  nop
                  add          a3, s1, t2
                  add          a7, sp, t3
                  auipc        a7, 106094
                  addi         s11, t5, 1369
                  lui          t2, 377284
                  add          t2, t2, s1 #end riscv_int_numeric_corner_stream_10
                  srai         t5, ra, 18
                  slti         s0, s4, 1747
                  ori          s1, s11, -499
                  xori         t3, s6, -895
                  srli         zero, tp, 6
                  xor          ra, gp, ra
                  sll          t2, t2, a1
                  ori          a6, s1, -993
                  xor          sp, s1, s10
                  add          t3, s6, gp
                  slli         t6, tp, 17
                  ori          s2, sp, -1875
                  xori         a2, s4, 505
                  add          s4, s9, s4
                  slti         t1, t0, -34
                  or           zero, a5, s5
                  srli         t2, a4, 15
                  sll          a6, s9, s6
                  xor          a7, a7, s9
                  sra          t6, a6, s0
                  srli         a3, s10, 14
                  xori         a3, a1, 1039
                  sltiu        t6, zero, 1666
                  srli         tp, t1, 24
                  slt          ra, s10, s9
                  ori          a3, s1, 26
                  or           a0, t2, a3
                  andi         s5, s10, 2014
                  sra          a7, s2, s9
                  xori         a5, s6, 1570
                  srli         s8, s8, 22
                  slti         s0, s8, -949
                  nop
                  srli         t5, t1, 30
                  slti         a0, s9, -1753
                  andi         tp, a0, 648
                  add          s9, t0, a3
                  xor          sp, t6, a5
                  or           sp, t2, ra
                  srli         t5, s1, 30
                  srl          a4, t4, a5
                  auipc        t4, 846131
                  srli         s11, gp, 26
                  sltu         s1, a0, s2
                  srli         s4, gp, 24
                  slti         a3, s10, -1500
                  addi         a4, a2, -1004
                  auipc        t4, 422705
                  sll          t1, tp, gp
                  sltu         a2, s1, t5
                  srli         s11, a5, 26
                  lui          s2, 881562
                  auipc        t1, 801702
                  or           a2, a5, s11
                  or           s5, a1, a0
                  and          s8, t2, s4
                  slt          s9, s8, a4
                  slti         s2, t1, -1698
                  andi         t4, a7, -1960
                  add          s8, s6, a0
                  add          s9, s0, t0
                  addi         a2, a1, 468
                  slt          s6, s0, s9
                  ori          a3, t4, -1726
                  xor          a0, a7, s10
                  srai         t4, s3, 31
                  or           s5, t2, s10
                  slti         tp, t6, -1836
                  sltu         t2, s5, s11
                  addi         gp, t4, 1890
                  srl          s4, ra, s2
                  nop
                  nop
                  xor          t6, s5, s11
                  addi         s4, t3, -202
                  srl          t3, s8, t3
                  ori          s8, a7, -543
                  sltiu        a2, a4, -2039
                  sub          zero, t0, t6
                  ori          s1, s10, -324
                  slti         s8, a2, 687
                  srai         t3, a7, 16
                  nop
                  xor          s1, t1, s8
                  sll          zero, t3, s11
                  slt          a2, s1, s1
                  srl          a3, a5, a1
                  andi         gp, a6, 426
                  sltu         s9, s1, a2
                  nop
                  srl          s11, a4, t6
                  sub          gp, t5, s9
                  sra          s4, gp, t5
                  and          t3, s0, a0
                  srli         a3, a2, 19
                  sltiu        s11, t3, -155
                  srl          s5, t4, s1
                  ori          s4, a1, 421
                  auipc        t3, 713966
                  sltiu        s6, gp, -1650
                  or           s7, s7, t1
                  andi         s5, t1, -1787
                  sll          s7, a0, s1
                  sra          s10, a3, s6
                  slt          a7, zero, s5
                  xori         s6, s4, 1128
                  sra          tp, zero, a3
                  addi         a6, s8, 1609
                  sll          a6, t6, gp
                  slli         s2, s5, 20
                  auipc        s8, 624667
                  srli         zero, a3, 30
                  nop
                  nop
                  lui          s8, 698322
                  sltiu        t4, s3, -658
                  sltu         s6, a7, a2
                  srl          a4, t4, sp
                  addi         t5, zero, 2011
                  sltiu        t1, a7, -1582
                  srl          t1, a6, t6
                  srl          t2, s7, tp
                  sltiu        t2, t5, -11
                  srai         t1, t5, 27
                  slti         a3, s4, 1657
                  ori          t6, gp, -128
                  xori         a0, a6, 2011
                  srl          t1, s5, t2
                  xori         t5, t2, -1242
                  sub          s8, t0, s4
                  srli         t3, t2, 19
                  srli         t2, s11, 2
                  xori         t4, s2, 1877
                  srai         s9, s3, 18
                  add          t2, a3, a2
                  addi         s11, t4, -972
                  ori          s2, a6, 425
                  andi         a5, t2, -875
                  andi         a5, a4, -532
                  sub          a5, a4, tp
                  ori          t5, s2, 359
                  sll          gp, a4, s7
                  nop
                  and          s2, ra, s6
                  slli         gp, tp, 10
                  sub          s2, s2, s1
                  add          a6, s6, s11
                  auipc        a3, 790259
                  srli         s2, t3, 9
                  add          t1, s11, s3
                  auipc        gp, 721616
                  and          a7, t4, s11
                  andi         t6, t5, 1346
                  andi         t2, s10, -1048
                  srai         t1, t0, 1
                  xor          a3, tp, gp
                  sltiu        sp, a5, 1326
                  slt          s9, a6, s1
                  srl          a3, t1, a6
                  sll          a5, s11, sp
                  lui          s4, 649580
                  xor          a3, t3, t5
                  or           a3, s8, a4
                  sltiu        t4, s11, 641
                  srli         gp, a2, 25
                  andi         a0, s11, 339
                  add          t5, a2, s0
                  slti         s4, a7, -1695
                  nop
                  xor          s6, s8, a4
                  add          t3, s1, sp
                  sltu         s10, a3, a5
                  auipc        t1, 905424
                  sltu         a7, s7, s5
                  addi         s9, t1, 2001
                  and          s7, a2, t0
                  lui          tp, 257943
                  xori         a0, ra, -1398
                  andi         tp, tp, -1993
                  sltiu        s2, ra, -1928
                  srl          s11, a0, s3
                  andi         a6, a0, 257
                  or           a5, s11, t4
                  nop
                  slt          a5, t2, s1
                  sltiu        gp, t0, -569
                  slti         t3, tp, 2028
                  sltiu        zero, a0, -497
                  or           ra, s8, ra
                  xori         t1, s7, -784
                  srl          s4, s2, a7
                  add          s4, t3, s2
                  sltiu        s6, a5, -2043
                  xori         s4, sp, 1680
                  addi         a6, s11, -593
                  sltu         s5, a5, t6
                  slti         s11, zero, 998
                  add          a0, s2, s2
                  slti         s1, tp, -942
                  sll          s0, a7, tp
                  sub          t3, tp, a0
                  xor          t2, s6, s0
                  sll          a5, t6, gp
                  lui          a7, 28945
                  srl          s4, t3, a1
                  and          s4, s5, s10
                  slti         s0, gp, 975
                  srai         s7, s8, 14
                  sltiu        t3, ra, -531
                  slti         a5, s0, 369
                  nop
                  sub          t5, s4, a6
                  srli         t1, a5, 2
                  sra          sp, t0, t0
                  add          s4, t4, a0
                  xor          a4, a7, s8
                  or           a6, a0, a2
                  addi         s4, s3, -1601
                  sltu         s0, a5, t3
                  or           a4, t3, gp
                  sra          s6, s0, sp
                  nop
                  add          sp, a3, t4
                  xori         zero, gp, 1074
                  addi         gp, s7, -916
                  sltu         t2, t1, a4
                  addi         s6, sp, -1675
                  srl          s4, sp, s7
                  and          a5, a4, s5
                  srli         t1, zero, 22
                  sub          s8, t2, zero
                  srai         a3, t0, 28
                  sll          t1, a0, s3
                  add          s4, s6, a4
                  sltiu        t5, t0, 870
                  nop
                  slt          t5, t3, tp
                  srai         s0, t4, 15
                  nop
                  srai         t5, s8, 28
                  add          a0, a4, s6
                  andi         t6, s5, 144
                  xori         s6, s7, -2013
                  sra          s2, gp, t2
                  andi         zero, a6, -166
                  slt          s9, a2, t6
                  add          s0, s7, t5
                  lui          zero, 112382
                  slt          t2, ra, a7
                  xor          s9, t5, tp
                  andi         a6, a2, -298
                  sltu         a5, a6, s1
                  ori          t5, sp, 725
                  sub          t4, s7, zero
                  slti         t2, gp, -746
                  xor          t2, s6, s8
                  add          t3, t6, t0
                  sll          s1, t0, s5
                  andi         s0, a0, 1644
                  xori         s11, s7, 1003
                  lui          t5, 952437
                  and          t4, s8, s7
                  ori          t6, s9, 203
                  or           a5, ra, a5
                  xor          s10, s5, a2
                  sltu         s6, a0, a6
                  srai         s11, t1, 7
                  srli         a0, a1, 13
                  srl          t4, a5, a4
                  nop
                  srl          t3, t3, ra
                  add          t1, s7, tp
                  sra          a5, t2, t1
                  addi         s1, a7, 188
                  ori          gp, a4, 1975
                  sltu         t4, zero, s1
                  sub          sp, t6, s8
                  sltu         t4, s6, s9
                  srli         a4, a3, 9
                  xori         ra, s11, 302
                  sra          s1, t6, a4
                  or           zero, s5, a6
                  sltiu        a6, s0, -466
                  xor          t3, a2, sp
                  sll          a7, a3, s7
                  xori         a6, s4, 354
                  slt          t5, s1, s8
                  sltu         a4, s7, a6
                  xori         tp, s3, -189
                  srai         s8, t6, 4
                  slt          ra, s0, t2
                  andi         s6, gp, 788
                  and          a6, t4, a0
                  sra          t3, a6, a6
                  slli         zero, t1, 20
                  xori         sp, a1, 1535
                  lui          t4, 705148
                  srl          s4, a2, t6
                  and          a5, a5, t3
                  addi         a0, a4, -1756
                  or           s0, t1, t5
                  or           s2, t2, t0
                  or           t1, t2, s11
                  srl          s6, a2, s11
                  sltu         zero, s11, s9
                  sltiu        ra, t5, -912
                  add          t5, a2, t0
                  slti         s2, s10, -1062
                  sll          gp, gp, t0
                  sll          sp, s8, t3
                  slli         a2, t1, 4
                  srai         a7, s3, 17
                  sra          t3, tp, tp
                  auipc        t4, 636014
                  xor          t3, a2, a3
                  or           t6, t4, t3
                  and          s11, s7, a4
                  lui          a7, 499312
                  srli         a7, a7, 1
                  addi         s1, zero, -1152
                  xor          s10, t2, a4
                  and          s11, s0, t1
                  auipc        a5, 681519
                  slli         t5, a6, 5
                  sub          t1, t3, s9
                  sra          s6, s3, a3
                  sra          zero, s4, a3
                  addi         t5, tp, 226
                  slt          t4, t4, s10
                  or           a7, t0, t5
                  srl          t3, t5, a2
                  sra          a6, a5, s5
                  auipc        gp, 270502
                  sltiu        a2, ra, 920
                  auipc        s6, 128686
                  xor          s0, s0, t3
                  add          s10, s9, s7
                  auipc        a6, 317149
                  ori          s10, s8, -599
                  add          ra, s5, a6
                  sltu         s5, s9, s11
                  sltu         a3, s7, s6
                  srli         s11, ra, 16
                  slli         s4, s7, 22
                  nop
                  srl          t1, ra, s8
                  and          a3, zero, s6
                  sub          s0, ra, a7
                  or           s6, s9, s0
                  andi         s10, sp, 1434
                  andi         a7, t5, -1289
                  add          t1, t6, s2
                  addi         a2, s0, -367
                  slt          ra, t6, t4
                  and          sp, a1, t4
                  sll          gp, t4, a2
                  ori          t4, s7, 1101
                  slt          s1, t4, s0
                  sltu         s1, ra, t6
                  xori         s1, t3, 1641
                  xori         s4, t6, -691
                  sll          s1, ra, s9
                  andi         t6, s11, -586
                  sltu         t4, tp, s4
                  sltu         t6, s0, s11
                  auipc        s1, 539221
                  slt          a2, s10, a5
                  sra          s10, s4, t3
                  nop
                  sub          t4, zero, s11
                  and          s7, sp, a7
                  srli         a0, s2, 23
                  sltiu        t3, a2, 1227
                  slti         s2, t2, 925
                  ori          s11, s0, -402
                  slt          a4, s3, t2
                  or           s2, t5, s0
                  lui          t4, 661356
                  lui          sp, 1015870
                  sra          t6, a6, zero
                  sll          s7, s8, a2
                  xor          t1, s3, a7
                  nop
                  xori         a3, gp, 503
                  ori          gp, s0, 1046
                  xori         ra, t1, 1271
                  sltiu        s7, s11, -1055
                  slt          a5, s9, s1
                  add          t3, t1, s11
                  slli         t1, s7, 27
                  and          s6, s10, s8
                  addi         s5, a3, 1304
                  srl          s1, zero, sp
                  srai         a5, zero, 13
                  andi         ra, s8, -916
                  lui          s7, 950167
                  xori         gp, s3, -1160
                  or           t2, a0, s0
                  addi         s9, a0, 1482
                  xori         s5, s3, 446
                  or           tp, gp, t5
                  srli         a6, s0, 28
                  slti         zero, s2, -254
                  and          s0, s4, sp
                  addi         a2, a5, 946
                  sra          s8, a3, a3
                  slti         t3, a0, 1012
                  sub          s11, s5, s9
                  slti         s11, s5, -1084
                  slti         t1, s3, -1342
                  sra          t2, s3, a3
                  and          s9, a1, a1
                  nop
                  srl          s4, a0, tp
                  srai         a7, tp, 28
                  ori          a2, s9, 64
                  srl          s6, s11, t4
                  sltiu        t3, tp, 317
                  slt          t2, s3, t5
                  xori         s2, s6, 1363
                  andi         tp, a6, -967
                  auipc        t6, 284776
                  ori          s9, a5, 1909
                  slti         t6, a3, -1837
                  srai         s0, a7, 31
                  lui          s6, 496973
                  sltu         s10, t2, s11
                  and          a7, a1, tp
                  sltu         a3, s9, s7
                  xori         s7, s3, 850
                  sltiu        gp, s2, 24
                  xori         t6, t3, -1693
                  slli         tp, s7, 2
                  sra          a4, t1, s8
                  srli         s8, t2, 1
                  slli         t4, ra, 16
                  ori          a5, s5, -1503
                  srli         a4, a4, 9
                  and          t2, t3, t5
                  sub          s2, s1, s0
                  addi         gp, a7, 1589
                  and          s8, t6, t5
                  srl          a0, t1, a7
                  slt          a0, s5, sp
                  or           a0, t3, s11
                  sub          s5, a0, tp
                  ori          s9, s7, -129
                  srli         a4, s10, 27
                  andi         s0, a0, 173
                  sra          a3, s4, ra
                  srli         s7, s7, 16
                  slli         s6, s7, 26
                  slti         zero, s3, -1608
                  or           a3, s0, a0
                  or           s4, s1, s4
                  xori         a3, s3, 1406
                  ori          s1, s5, 1994
                  and          t2, s10, a4
                  srl          s7, s4, t0
                  addi         s0, s1, -114
                  and          s7, a0, sp
                  srai         s2, t3, 14
                  srli         s7, a4, 3
                  or           a2, sp, t0
                  auipc        zero, 551529
                  slli         s1, ra, 24
                  ori          t1, t6, -596
                  srai         s10, s6, 6
                  srli         t2, ra, 12
                  addi         t3, t4, 1503
                  add          a5, t1, s9
                  or           a3, s7, a4
                  add          s9, a0, s7
                  addi         a6, s10, 777
                  nop
                  xor          t3, s3, t1
                  slt          s10, s8, s1
                  srai         s11, t4, 0
                  slt          t3, t6, t1
                  and          s8, a0, s8
                  sub          a5, a5, a6
                  srl          s7, a3, s11
                  sltu         a7, a1, t3
                  srl          s4, sp, a0
                  sltiu        t1, s11, 1137
                  lui          t4, 336979
                  srl          s7, ra, s5
                  addi         s7, t1, 1620
                  addi         t3, s2, -927
                  slli         t4, s9, 11
                  sltiu        sp, a4, 860
                  slli         s5, a0, 31
                  andi         s6, a7, -1607
                  lui          t3, 678924
                  sltiu        s1, s11, -1437
                  ori          zero, t2, -2030
                  nop
                  add          s11, a2, a6
                  xor          s2, s5, a0
                  sltu         a5, s2, ra
                  sltu         sp, s1, s4
                  auipc        s1, 526751
                  and          sp, a1, s9
                  lui          s4, 703371
                  addi         tp, t4, 1830
                  addi         t5, sp, -547
                  and          s6, s10, a0
                  slti         a2, s9, 1709
                  or           a3, gp, a6
                  sltiu        a6, t4, -335
                  xori         s6, s7, -1155
                  sltiu        a3, s1, 1409
                  or           t3, s3, a4
                  auipc        a4, 853621
                  or           a0, tp, a0
                  sub          s2, zero, sp
                  or           a6, s10, t6
                  sra          s8, t4, t0
                  slt          a3, a2, s8
                  xori         t4, zero, 285
                  sub          sp, s3, a3
                  sub          s4, t1, s8
                  slli         s9, t6, 7
                  auipc        t2, 65468
                  sltu         gp, ra, t0
                  sra          a7, s2, a3
                  and          a2, s10, a3
                  srl          t6, s1, s8
                  srai         s2, t5, 14
                  slli         sp, s10, 19
                  sltu         t3, ra, s11
                  ori          s11, a0, 1141
                  srai         t2, s2, 12
                  slli         s10, t5, 17
                  andi         a0, zero, 806
                  sub          s4, a2, t2
                  srl          t2, t4, s5
                  and          a2, s3, s4
                  srl          s0, t6, t0
                  or           gp, s4, gp
                  andi         a7, a6, 1013
                  srai         t6, a6, 2
                  xor          a0, tp, s0
                  sll          s11, t2, a1
                  slt          s7, a7, a3
                  and          s1, sp, a0
                  andi         gp, zero, -1900
                  srli         s9, s11, 21
                  slti         a7, s2, -171
                  ori          a5, a7, 1149
                  sltu         s1, a1, zero
                  and          t1, t3, s5
                  slti         a0, t3, -23
                  slti         s8, t6, 618
                  or           s11, a3, s11
                  and          s6, t4, t4
                  auipc        s5, 901774
                  and          t1, t2, s3
                  andi         s4, t3, -348
                  slti         s1, s0, -1568
                  slt          s7, a5, t4
                  lui          s6, 108210
                  slti         a0, gp, 1267
                  nop
                  sra          s5, a5, zero
                  slt          s11, s1, s8
                  andi         t1, t6, -1329
                  xor          s2, a5, s4
                  srl          a4, t1, t1
                  lui          s4, 189547
                  slli         gp, t5, 10
                  slli         s4, a5, 2
                  auipc        a6, 24957
                  sltiu        t3, s4, 1019
                  addi         a4, t3, -1943
                  slli         t3, a2, 14
                  lui          ra, 553815
                  srl          a2, tp, s4
                  srli         a4, s1, 11
                  nop
                  addi         a2, a2, 1850
                  addi         s10, s7, 735
                  sltu         s7, a6, a5
                  sltu         s9, tp, s7
                  sltu         s9, a1, a0
                  slt          s1, t6, tp
                  sub          s6, ra, zero
                  lui          tp, 693289
                  lui          a2, 167568
                  xor          a3, a2, s3
                  lui          a3, 315664
                  lui          s6, 943142
                  sltiu        tp, s8, 854
                  slli         tp, t3, 29
                  xor          a6, sp, s1
                  slt          s0, a1, a2
                  srli         a4, t0, 29
                  nop
                  lui          a0, 66902
                  lui          t5, 796177
                  sltiu        a4, s4, 129
                  and          a0, s1, t6
                  slti         a5, s1, 28
                  or           a0, s0, t0
                  or           s0, a1, a6
                  sll          a3, s5, a1
                  srl          s5, s6, gp
                  addi         s4, s11, -1540
                  xori         t1, a0, 1537
                  srli         s5, s1, 1
                  sll          gp, s7, t4
                  addi         a2, a3, 1267
                  andi         t5, t0, 468
                  slti         a7, s11, 863
                  xori         s9, s0, 444
                  sltiu        a3, t2, -51
                  slli         s6, sp, 31
                  xor          t1, a7, a4
                  andi         t6, s10, -1375
                  srl          s9, a0, s3
                  srli         s0, s11, 23
                  slti         t5, s5, -1418
                  sra          s10, t5, s11
                  xori         s2, s0, -162
                  xori         t1, tp, 588
                  sltu         t2, s3, a1
                  auipc        a3, 1047253
                  slti         t6, zero, 454
                  nop
                  andi         t1, ra, 1925
                  add          zero, t5, gp
                  slti         tp, t4, -1285
                  nop
                  and          s11, a3, t2
                  sltu         s10, sp, a6
                  srai         tp, t2, 19
                  sltiu        tp, t1, 840
                  sltu         t3, t4, a1
                  srai         a2, a3, 19
                  nop
                  sub          s9, s3, sp
                  slt          t6, a1, tp
                  or           tp, s2, a7
                  lui          zero, 521128
                  ori          t2, gp, 861
                  or           s4, t6, a0
                  add          s1, s5, s10
                  sltiu        s6, s0, 1635
                  srli         t6, sp, 1
                  nop
                  srl          a5, s6, zero
                  and          s8, s10, a4
                  sltu         s8, a4, t6
                  srl          t6, s4, zero
                  auipc        a4, 542012
                  slli         t3, a7, 24
                  sltiu        a4, s11, 433
                  sltu         zero, a7, tp
                  sltiu        s4, t5, -1217
                  sltiu        t4, s4, -95
                  sub          t1, s3, gp
                  srli         s5, a4, 29
                  add          a7, t3, s9
                  slti         s9, s6, 344
                  sub          s5, s11, t0
                  nop
                  srai         s0, s4, 18
                  add          t4, zero, t1
                  sltiu        s7, t6, -77
                  lui          s8, 770512
                  sll          a4, a5, a4
                  sltiu        zero, a6, 1615
                  sll          t6, tp, s7
                  sra          t5, t3, a1
                  slt          zero, a2, s7
                  add          a2, t6, a0
                  and          s0, s0, sp
                  xori         s6, s4, 1386
                  sltiu        gp, t2, 1482
                  addi         s11, a2, 115
                  slt          s8, zero, a3
                  add          a5, s9, t6
                  lui          s0, 177502
                  add          a0, t4, t0
                  srl          s5, t1, a6
                  lui          s7, 712570
                  auipc        s1, 54578
                  sltiu        s9, s6, 1545
                  sltu         t4, a4, a4
                  sll          t4, gp, t0
                  srl          t3, s10, s10
                  addi         s0, s4, -1281
                  add          s4, t1, a1
                  ori          a2, s5, 189
                  slli         a5, a2, 19
                  or           ra, s0, sp
                  srli         s0, gp, 9
                  sll          t1, s9, sp
                  xor          t6, a1, tp
                  srl          sp, s3, t6
                  or           ra, tp, s7
                  sltiu        s11, s0, 1972
                  sltiu        s0, tp, 1781
                  slli         t5, t1, 24
                  andi         s1, gp, -95
                  or           t3, s10, t2
                  or           ra, s7, s9
                  sll          ra, t2, s5
                  sll          sp, t2, a4
                  slt          t4, s3, a3
                  srai         a7, a3, 20
                  xor          a5, zero, t2
                  srai         s2, s9, 6
                  sll          a6, s5, s0
                  sra          zero, a7, s1
                  addi         a7, a2, -915
                  sltiu        a0, sp, 1169
                  andi         s0, t3, -1631
                  slt          s11, sp, a2
                  sub          sp, t5, s0
                  auipc        t4, 700964
                  xori         sp, s0, -839
                  slt          gp, s2, s9
                  andi         t4, tp, 339
                  addi         s10, t3, 816
                  sltu         s0, s7, t1
                  slt          s5, s7, s1
                  slli         s8, a2, 24
                  srai         a4, gp, 1
                  xori         a4, a5, 558
                  ori          t2, s11, -1298
                  sltu         a2, s2, t1
                  srai         s2, a6, 23
                  ori          a6, s9, -62
                  srl          tp, s3, s10
                  ori          s7, s0, 457
                  srai         s2, a1, 2
                  sltu         a7, a7, a3
                  slti         t6, t1, 1984
                  slli         a5, ra, 25
                  slti         t6, ra, -1016
                  andi         t2, t6, 1572
                  slt          s10, tp, s6
                  slti         s4, a4, -1360
                  slli         a6, s2, 4
                  and          t6, t6, t6
                  slt          t6, a4, t5
                  auipc        a7, 495602
                  and          ra, zero, ra
                  srai         s1, a1, 25
                  srli         t5, s11, 18
                  xor          s10, t2, s5
                  and          s11, tp, sp
                  sra          t4, s10, gp
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           a7, 0x0
                  li           t3, 0x3939f027
                  li           sp, 0xcc3db579
                  li           gp, 0xffffffff
                  li           s0, 0xffffffff
                  li           a5, 0xe6a49bb8
                  li           ra, 0xffffffff
                  li           t6, 0xeb36ddfe
                  li           a3, 0xffffffff
                  sub          ra, sp, gp
                  nop
                  addi         s9, s0, -346
                  nop
                  addi         s9, a7, 461
                  lui          ra, 167599
                  sub          a3, s9, s9
                  add          t6, s9, a3
                  lui          a3, 993213
                  lui          a5, 498348
                  add          ra, s0, s0
                  lui          s9, 575047
                  auipc        a5, 436086
                  addi         s9, ra, -100
                  add          a3, gp, a5
                  add          t6, a3, s9
                  addi         s9, a3, 868
                  addi         ra, t6, -346
                  nop
                  add          s9, gp, ra
                  add          s9, gp, ra
                  add          a5, t6, a5
                  addi         s0, a5, -124
                  nop
                  addi         a5, sp, 709
                  sub          s0, s9, a3
                  addi         s0, a7, -975
                  add          s9, sp, s0 #end riscv_int_numeric_corner_stream_8
                  lui          t3, 978394
                  srli         a5, a4, 1
                  slt          t2, a2, s1
                  nop
                  xor          s10, t0, tp
                  srli         s0, gp, 2
                  auipc        s8, 915864
                  sll          a4, ra, a2
                  add          t5, s4, a2
                  srl          t1, a2, a6
                  and          t2, s7, sp
                  auipc        ra, 487831
                  or           zero, a4, a6
                  srli         gp, s10, 16
                  sub          t5, s10, a3
                  sltu         a3, a4, s10
                  sra          a2, t4, t2
                  sra          a4, t5, s1
                  and          a6, t4, t6
                  sltiu        t1, a0, 2011
                  ori          a2, s4, -2011
                  xor          a2, s4, tp
                  nop
                  slt          tp, a0, t0
                  srai         a4, s11, 24
                  sltiu        t1, t6, 523
                  sltu         s7, t0, a5
                  slt          a4, s10, s8
                  xor          s1, s4, t0
                  addi         s9, a0, 199
                  xor          s2, s4, s3
                  xor          t5, s7, a2
                  or           ra, s11, zero
                  sltu         t3, zero, s11
                  slti         a6, tp, 1155
                  slti         s7, a3, -305
                  lui          a3, 1042330
                  srai         zero, s10, 16
                  auipc        t5, 191048
                  or           a4, a1, s8
                  auipc        sp, 759180
                  sll          s7, s6, a2
                  ori          ra, t5, 741
                  slt          s0, s2, a6
                  sltiu        s1, s2, 980
                  andi         a2, t5, -993
                  andi         a0, s11, -1054
                  xor          s8, sp, s8
                  lui          tp, 393154
                  xori         a3, a4, -1968
                  xor          s11, a3, s3
                  lui          s7, 371930
                  sltu         a0, s9, a0
                  slti         zero, s9, -224
                  sltiu        s11, s7, 1465
                  xori         t6, a5, 1295
                  addi         a6, a4, -1324
                  srli         s1, s11, 30
                  sltu         s1, s8, s6
                  or           ra, gp, a5
                  xor          tp, s6, s5
                  xor          s9, a4, s9
                  xor          s4, s1, sp
                  auipc        a6, 359882
                  srl          s9, a7, t2
                  xori         s4, t1, -723
                  addi         sp, a0, 2019
                  sltiu        t4, t4, -548
                  add          t3, t5, t1
                  andi         s6, t5, -1866
                  addi         s7, a6, -936
                  addi         a2, t2, 1653
                  andi         a7, a2, 476
                  srl          a7, t2, s7
                  sll          tp, s1, t1
                  ori          a0, s9, -174
                  srl          s5, a7, s7
                  lui          t4, 914182
                  lui          a2, 68599
                  lui          gp, 820469
                  srl          ra, s2, t4
                  and          tp, a3, t2
                  add          s0, s7, s3
                  sra          t2, s8, t2
                  ori          a0, a2, 1097
                  and          a3, t1, s11
                  addi         a5, s8, -867
                  sll          t2, t3, s10
                  or           a7, s7, s8
                  sll          t6, ra, tp
                  slti         s1, zero, -1463
                  addi         t5, t0, 1610
                  sltiu        s0, tp, -1726
                  auipc        s0, 812048
                  andi         gp, s7, -548
                  andi         a6, sp, -106
                  srl          s11, sp, t4
                  add          t6, s2, s11
                  sltu         tp, a3, s10
                  ori          gp, zero, -1604
                  lui          s0, 636427
                  sltiu        sp, zero, -593
                  xori         ra, zero, 1205
                  slt          s9, sp, a5
                  srai         gp, ra, 25
                  srli         s8, s6, 31
                  or           s1, a2, t0
                  ori          tp, a0, -784
                  slt          ra, s8, s3
                  srli         t4, a7, 16
                  addi         t5, s1, 1037
                  slti         s11, s4, 401
                  or           t4, s7, s6
                  auipc        a5, 968775
                  slti         ra, s5, 349
                  sll          t5, t4, s2
                  nop
                  or           s7, s10, s4
                  slt          s4, s11, s6
                  srai         s9, t6, 8
                  slti         a0, s5, -1334
                  or           a5, s4, s1
                  and          s2, s4, gp
                  slt          a6, t4, t0
                  sltu         tp, a2, s3
                  srai         t5, t2, 4
                  andi         s4, t1, 675
                  srli         s0, s3, 19
                  xor          a0, ra, a7
                  slt          a2, sp, a2
                  slti         t5, a5, 226
                  auipc        s0, 107960
                  auipc        t1, 979379
                  sll          a2, t0, t0
                  ori          t5, sp, -1310
                  sll          gp, t6, s7
                  auipc        t3, 921260
                  slli         sp, s6, 7
                  srli         a7, sp, 24
                  slt          s1, t4, s2
                  srai         s7, a1, 5
                  auipc        s4, 956515
                  sra          s5, a6, gp
                  auipc        a0, 908566
                  slli         t1, s10, 2
                  auipc        t6, 236279
                  xori         s10, s11, 33
                  xor          s5, t4, s9
                  sra          t4, a2, s7
                  srl          a0, s5, a0
                  slt          s9, s5, s1
                  sltu         s1, t6, t0
                  add          a4, s10, s3
                  sll          a3, a6, s3
                  or           t1, s2, t4
                  lui          zero, 269950
                  xori         s11, t0, -754
                  sltiu        s0, t2, 1484
                  sub          sp, t1, s10
                  andi         s1, a2, -1602
                  auipc        ra, 793106
                  sub          s4, zero, sp
                  ori          ra, a0, -889
                  add          s1, a7, t3
                  slt          t4, s0, s0
                  and          a5, s0, a0
                  srl          s7, a6, s9
                  addi         s9, sp, -1484
                  xori         t3, a1, -22
                  sll          t3, a1, a0
                  or           s5, a5, zero
                  sub          s6, s7, a0
                  nop
                  sltiu        t2, s11, 900
                  sub          s6, s0, t5
                  slt          a4, t2, s6
                  sra          a4, t1, a1
                  add          sp, s1, s3
                  or           s1, t0, t5
                  slli         sp, t0, 29
                  srai         t2, t5, 6
                  sll          s11, s6, s7
                  sltiu        a3, t5, -1378
                  slti         a6, a5, 1067
                  sub          a2, s4, a4
                  lui          s10, 750372
                  sub          s2, a7, s7
                  add          s8, ra, s10
                  ori          a7, tp, -537
                  andi         s6, a1, 1129
                  ori          s10, s6, -1770
                  add          s2, a5, a0
                  xori         s7, t1, 700
                  srai         t4, t2, 24
                  sltu         a2, t2, s7
                  add          a0, gp, t5
                  addi         ra, a7, 1424
                  ori          ra, t0, -790
                  sltiu        t5, s10, 145
                  srai         s7, a1, 20
                  auipc        a5, 7757
                  slt          s10, s4, t1
                  add          sp, s8, s9
                  slti         t5, gp, -1255
                  auipc        a5, 980719
                  slli         a2, s11, 30
                  or           s2, zero, a6
                  andi         s7, tp, 198
                  auipc        t3, 217904
                  or           tp, a6, t2
                  nop
                  ori          t1, a1, 210
                  andi         a5, s0, 1763
                  or           s11, a7, a7
                  slli         s6, a0, 12
                  add          a3, s7, s5
                  sub          t1, t4, t5
                  sll          sp, gp, s6
                  addi         s4, s3, -262
                  auipc        t1, 2869
                  srl          s1, a3, a4
                  and          t3, sp, a6
                  srli         t6, s5, 1
                  ori          a6, a3, 756
                  sub          t5, t4, a1
                  sll          ra, zero, s0
                  slt          s1, t3, a4
                  slli         t2, t1, 16
                  and          zero, t5, sp
                  xor          sp, t3, s7
                  srli         s1, s3, 13
                  add          a4, a0, t4
                  sub          ra, a0, t5
                  nop
                  sltu         s9, a0, s9
                  nop
                  xor          t2, s3, s3
                  slli         a2, a7, 3
                  slli         a0, s1, 20
                  sltu         tp, s10, s7
                  sltu         t5, s7, t1
                  or           t2, s3, a2
                  sltiu        t5, s11, -138
                  slti         t4, tp, 1350
                  auipc        t2, 343626
                  auipc        a5, 618150
                  sltu         sp, s8, s1
                  xori         tp, tp, 1272
                  sltiu        gp, t1, 1773
                  xori         t3, gp, -1205
                  sltu         a2, a7, gp
                  nop
                  add          s2, s4, a0
                  slli         s5, s5, 4
                  srai         s8, t3, 17
                  sll          a7, s7, s10
                  xor          a3, a0, s8
                  sra          s1, t1, a0
                  sltu         s11, t4, s11
                  sub          a4, a5, s1
                  add          s7, t6, s3
                  xori         a0, sp, -784
                  sub          s0, t1, t5
                  auipc        zero, 198398
                  add          s5, s4, a7
                  lui          a5, 344725
                  or           s6, t1, sp
                  sra          t1, ra, s3
                  sub          zero, s9, a1
                  slt          s10, s6, s1
                  slli         a2, t0, 23
                  and          s4, ra, t1
                  andi         s0, a5, -915
                  srai         zero, a0, 26
                  add          t1, t0, a5
                  srai         a3, a7, 6
                  lui          t4, 810778
                  srl          tp, gp, s9
                  andi         a0, s2, -2005
                  srli         t4, s5, 14
                  ori          s4, s2, -855
                  srl          a5, a6, s11
                  srl          gp, s0, s3
                  lui          t3, 174030
                  and          t3, s3, t5
                  or           t2, s0, tp
                  sra          a3, zero, a4
                  sub          s5, s10, a6
                  srai         t4, s1, 25
                  sltu         s7, s0, a1
                  addi         s10, s9, -1108
                  sub          ra, t2, zero
                  add          t1, s5, t4
                  sltiu        s2, a2, -540
                  srli         gp, a4, 22
                  addi         a6, a6, -210
                  andi         a3, s4, -460
                  srai         a0, gp, 6
                  slt          s9, a0, t0
                  lui          s11, 229513
                  slli         s5, a5, 14
                  sltu         sp, s3, t2
                  or           t4, a2, ra
                  auipc        a0, 244406
                  sltu         a2, a6, a5
                  lui          a4, 419970
                  slli         gp, gp, 8
                  sll          s9, zero, a6
                  slli         t1, s1, 13
                  lui          s4, 788352
                  sltiu        s10, s6, 787
                  srli         zero, a6, 31
                  auipc        t6, 108
                  sub          zero, gp, s0
                  slli         ra, a5, 7
                  srai         s1, s5, 9
                  sra          s1, t1, t4
                  sll          t4, t5, s1
                  sll          a4, t3, gp
                  lui          s5, 776980
                  slti         a5, s7, -90
                  ori          a5, s0, -499
                  xori         zero, s1, -1388
                  sltu         t3, s4, t3
                  andi         zero, tp, 1584
                  andi         t4, s4, -1484
                  or           t5, s4, zero
                  and          ra, t4, s8
                  andi         s2, t6, 1892
                  nop
                  lui          t6, 1024086
                  sub          ra, a0, a7
                  xor          tp, a2, t5
                  sub          t4, s0, a2
                  srai         s2, s1, 12
                  slti         s5, s10, -684
                  add          s4, a7, s5
                  sub          zero, s7, a0
                  xor          s1, gp, t6
                  and          t4, s6, gp
                  xor          t4, s3, s11
                  add          gp, t3, s4
                  sltiu        zero, a5, 1942
                  nop
                  andi         s5, a0, 179
                  ori          ra, s9, 1292
                  add          s6, s9, a7
                  and          s1, sp, a0
                  sra          s9, t0, s9
                  andi         s7, a7, 1174
                  sub          a3, t2, s0
                  auipc        tp, 80641
                  slti         a7, s10, -688
                  xori         a4, s8, 1432
                  slti         ra, gp, 1460
                  auipc        ra, 791982
                  slti         s1, s9, -1423
                  andi         s4, a2, -1197
                  lui          gp, 440378
                  nop
                  andi         s2, a3, -1049
                  srl          a7, s0, sp
                  xori         s4, sp, 853
                  lui          t2, 151969
                  and          t6, s1, a3
                  slt          gp, s1, t4
                  andi         s9, t4, -656
                  lui          s11, 967494
                  srai         a3, gp, 4
                  and          a3, s8, s7
                  xor          s7, s2, t5
                  srai         t1, t2, 2
                  sll          t1, s6, s7
                  add          a4, s9, s8
                  sra          gp, s0, gp
                  or           gp, a4, t4
                  xor          s6, t4, a3
                  lui          s10, 559853
                  srli         t1, s11, 25
                  xori         a0, s6, -1939
                  srai         s2, a5, 7
                  xor          s9, a7, a3
                  xori         t4, s11, -408
                  sra          a3, zero, s1
                  and          t3, a2, a0
                  sll          a3, s8, s0
                  auipc        a4, 541790
                  xori         s6, t0, -978
                  slli         t2, s6, 5
                  addi         t2, t1, 263
                  xori         t6, ra, 1297
                  srl          a7, gp, a7
                  add          a6, a6, tp
                  slt          t6, a2, ra
                  sra          a6, s7, a6
                  sltiu        sp, a6, 1161
                  auipc        a2, 207713
                  and          a7, s11, t2
                  lui          a5, 183317
                  sra          a3, a3, sp
                  andi         sp, s0, -1148
                  srai         s6, gp, 0
                  sltu         gp, s11, s3
                  or           s8, s10, a3
                  sub          s0, t3, a3
                  xori         t5, sp, -2030
                  lui          a5, 542448
                  sltu         s4, s6, t4
                  lui          a6, 821839
                  sub          s5, s5, sp
                  srl          s11, a0, a4
                  slti         s9, s9, 1678
                  srl          t4, s8, a2
                  sra          s0, t3, zero
                  or           a7, s3, a0
                  sll          s4, a4, s11
                  or           s1, s2, t4
                  srl          t4, s0, s8
                  slt          s6, a0, tp
                  srai         s4, s1, 24
                  sub          a3, a0, s11
                  add          gp, a3, a3
                  xori         s8, zero, -381
                  or           ra, tp, sp
                  slti         t3, zero, 708
                  add          s4, s7, tp
                  sll          s11, s7, s5
                  slt          a3, a3, t5
                  xor          sp, s8, a5
                  sltu         t5, s1, s1
                  srai         s2, s9, 26
                  xori         s10, s11, -968
                  sltu         s1, t4, sp
                  or           s0, t0, t1
                  sll          s6, a3, ra
                  slti         t6, s0, -362
                  sltu         s11, s1, a3
                  srli         ra, a6, 13
                  lui          a6, 918642
                  add          s11, a6, s10
                  addi         zero, a7, 827
                  add          a2, a0, a5
                  sub          t1, s10, s1
                  slli         a0, s4, 30
                  auipc        s4, 1007926
                  or           a6, a3, a1
                  nop
                  sltiu        a2, s8, 1339
                  andi         s6, s10, 1405
                  ori          s7, ra, 1045
                  slt          a7, s5, s10
                  sub          zero, t2, t5
                  slti         t4, a1, 90
                  ori          s4, s5, -1701
                  ori          a6, t2, -718
                  xori         t6, s5, 1737
                  sll          tp, s2, s2
                  xor          s10, a4, s4
                  slli         a0, s10, 18
                  nop
                  srai         s11, t6, 1
                  sltiu        a0, t6, 1127
                  slli         a5, s11, 7
                  sltu         gp, s8, s11
                  srl          s5, a7, a7
                  andi         t4, a6, 1417
                  ori          t1, s4, -34
                  lui          s2, 478382
                  srai         s5, sp, 27
                  slt          gp, s11, t3
                  srl          a7, s5, s7
                  addi         ra, a0, -831
                  sltu         s8, s9, s8
                  sub          s6, s2, a4
                  slt          s4, t4, gp
                  nop
                  nop
                  sll          s0, s4, zero
                  sltu         t3, s7, a2
                  slt          sp, s3, s9
                  sub          s5, s0, s4
                  auipc        s7, 477583
                  slli         a5, t5, 13
                  srli         s10, t2, 12
                  ori          s10, s1, 560
                  slt          ra, s3, t6
                  sra          sp, a2, a6
                  srli         t5, t1, 28
                  xori         t6, s10, -75
                  auipc        s0, 221408
                  andi         s8, a4, 767
                  ori          zero, t5, -1846
                  or           s2, s1, s9
                  add          s10, t2, a2
                  sltiu        s5, s4, -1532
                  nop
                  xori         s0, t5, 1239
                  xor          ra, s11, zero
                  lui          t6, 1023781
                  slli         tp, t3, 25
                  or           s6, s6, zero
                  xori         t5, tp, 1440
                  srai         s9, s8, 23
                  sub          tp, s2, s1
                  nop
                  lui          t3, 977625
                  lui          t3, 1088
                  or           a4, ra, a3
                  and          t4, a3, t5
                  and          s6, zero, t5
                  sra          s2, a2, s11
                  sltu         s7, s1, t3
                  sll          t5, s7, s9
                  sltiu        a2, tp, -1547
                  srai         t6, a3, 13
                  add          a4, a7, s1
                  addi         ra, a4, 658
                  xor          t4, t2, s11
                  auipc        a4, 731962
                  add          s6, s10, a4
                  srli         a7, a6, 25
                  add          a3, s10, s4
                  sltu         s6, s4, a4
                  add          ra, s3, a0
                  srli         a3, t6, 21
                  sltiu        t5, s5, 481
                  and          a3, t1, s1
                  add          a4, a6, tp
                  sltu         s4, a4, s1
                  add          t4, s9, s1
                  addi         s10, s5, 825
                  srli         a3, a5, 31
                  slti         sp, a1, 1826
                  or           t6, t3, s9
                  sltiu        tp, a2, -780
                  nop
                  xor          t5, a1, s10
                  and          gp, tp, s9
                  auipc        a5, 17114
                  auipc        s0, 653191
                  addi         s7, a3, -325
                  srli         s5, ra, 15
                  srli         zero, t1, 16
                  andi         s8, s8, -918
                  auipc        a6, 488808
                  sltu         s1, a1, ra
                  slt          ra, a1, s4
                  nop
                  nop
                  srli         t5, ra, 1
                  auipc        gp, 968023
                  srl          t1, tp, t6
                  or           s6, s3, t6
                  slli         a6, t0, 11
                  sra          zero, gp, t6
                  or           s0, s0, s2
                  xor          s11, a7, s3
                  slt          s1, a6, s1
                  sltu         t2, s0, s3
                  sll          tp, a0, a4
                  sub          gp, s6, t6
                  sltu         s10, a6, a1
                  auipc        t2, 620989
                  sra          s4, t4, t5
                  or           s5, s6, s7
                  sltiu        t2, a3, -941
                  sra          a4, t1, s7
                  srai         s5, ra, 17
                  xor          s7, t2, s6
                  lui          s6, 782920
                  slli         t6, a4, 23
                  xor          sp, s11, a1
                  slt          zero, zero, gp
                  sub          t1, t6, s10
                  nop
                  and          a0, s3, tp
                  ori          t1, s8, -1928
                  xori         s2, t0, -388
                  lui          a7, 160417
                  andi         a6, a2, 1749
                  slt          s10, s0, t3
                  addi         a6, tp, -102
                  ori          ra, t5, 999
                  xori         s6, s4, 1632
                  srl          s1, s11, a7
                  slti         s6, a1, 1889
                  xor          s11, s10, a6
                  or           zero, a2, ra
                  addi         s7, s10, -37
                  andi         zero, a2, 399
                  xor          a3, t2, s1
                  slli         t2, s1, 25
                  sra          t1, s10, t5
                  xor          s8, t2, tp
                  srli         s4, s0, 17
                  srl          a7, s0, t2
                  add          s8, a0, a0
                  xori         zero, a7, 1957
                  xori         s9, s3, 1352
                  xor          a5, s7, s2
                  ori          s10, t5, -802
                  add          a4, a7, gp
                  andi         a0, s4, 1362
                  srl          tp, tp, s11
                  lui          a5, 786748
                  nop
                  srl          s1, t0, s1
                  slt          s6, s0, a4
                  sub          s10, t1, s6
                  or           ra, t0, a6
                  slt          s1, s4, s3
                  sub          s5, a7, sp
                  andi         s2, s9, 61
                  sltiu        ra, a2, -1151
                  xor          a5, a7, a0
                  andi         s7, s2, 1406
                  slli         gp, a3, 22
                  sub          a0, gp, tp
                  slli         sp, s6, 10
                  srl          gp, zero, zero
                  auipc        s11, 55680
                  add          t3, a2, s8
                  xor          gp, s11, s11
                  slt          a2, ra, a3
                  sltiu        s10, s9, 1959
                  andi         s0, t4, -1944
                  ori          a0, s4, -200
                  or           gp, t6, a5
                  addi         a4, s3, 1117
                  srli         s6, s1, 20
                  and          ra, s3, s3
                  slti         ra, s1, 825
                  addi         s6, tp, -266
                  ori          sp, tp, 1026
                  auipc        a0, 235640
                  xori         s6, zero, 371
                  sra          a7, t3, s10
                  srai         tp, a1, 3
                  sltiu        sp, sp, 307
                  srl          s10, s6, t0
                  auipc        zero, 22036
                  ori          s11, s0, 454
                  xor          zero, gp, a6
                  srai         s7, s11, 24
                  slti         s11, s6, -625
                  srli         a0, a2, 10
                  nop
                  ori          t4, tp, 1837
                  slti         s10, a5, 995
                  srl          s5, s8, tp
                  slti         s11, a4, -53
                  auipc        a6, 663499
                  slti         tp, zero, 650
                  xori         a6, t5, -519
                  xor          t5, s1, a4
                  sub          t5, a7, t1
                  slli         s11, s5, 10
                  ori          s7, a6, 1960
                  lui          a5, 497748
                  slti         t2, a1, -910
                  slli         gp, a0, 30
                  ori          s7, a5, 1785
                  sll          t5, a6, s8
                  slt          s6, s3, t5
                  and          s8, a2, s7
                  add          s4, a4, s7
                  xori         s2, s4, -795
                  xor          sp, zero, t5
                  xori         ra, a7, -1413
                  xor          tp, s3, t0
                  lui          zero, 255481
                  srl          s9, a3, a0
                  add          a5, s9, s2
                  sltu         a5, t4, sp
                  lui          a7, 642878
                  sltu         s4, s2, s2
                  slt          zero, s5, gp
                  addi         s10, a7, -1835
                  andi         a4, s4, -1345
                  srli         s8, s10, 14
                  slt          s0, a5, s2
                  xori         t3, zero, -841
                  srai         s1, s8, 24
                  srli         gp, a3, 23
                  nop
                  and          a5, t5, a6
                  or           s7, a3, a3
                  auipc        a4, 155876
                  srli         t6, a2, 21
                  auipc        s1, 675372
                  sub          zero, t0, t3
                  addi         a4, t3, -802
                  sltiu        t3, t5, -398
                  srl          a0, t6, s6
                  andi         s1, s10, 1406
                  xor          s0, a6, s11
                  sll          t5, s4, sp
                  add          s2, a4, a4
                  xori         s10, t6, -258
                  sra          ra, a0, t5
                  sra          gp, a5, s5
                  nop
                  slti         gp, t6, 84
                  slti         s8, s5, -2046
                  add          s7, s11, a2
                  srl          a3, zero, a7
                  add          s10, s7, s8
                  xor          sp, zero, a2
                  xor          tp, t5, t4
                  sub          s11, s9, zero
                  and          t6, s1, sp
                  addi         ra, t0, -1581
                  srl          s5, a7, t0
                  slli         s9, a0, 29
                  sltu         a0, tp, s8
                  sub          tp, s5, t3
                  lui          s1, 789052
                  or           s10, zero, sp
                  sub          a2, s4, a2
                  sra          ra, sp, t5
                  nop
                  sll          tp, s10, s11
                  srl          a0, s9, a7
                  xor          s11, a4, a6
                  sltiu        a5, s3, -1436
                  nop
                  or           t2, t4, t3
                  slti         a7, s9, -542
                  auipc        a0, 102474
                  xori         s2, s9, 348
                  lui          s0, 404825
                  srl          s6, s8, a1
                  add          s8, s4, s1
                  addi         a5, t4, -259
                  slti         t6, a4, -1086
                  srai         a3, gp, 3
                  slti         a4, s10, -558
                  lui          s8, 904782
                  andi         a0, gp, -1644
                  sub          a7, s2, s11
                  sub          s7, t1, zero
                  addi         t6, t2, 1197
                  andi         t4, a3, -1529
                  slt          a6, s2, s8
                  lui          s7, 113777
                  sltiu        a6, s0, 1934
                  srli         s11, gp, 18
                  andi         s10, a0, 303
                  sra          s6, zero, t2
                  srl          t1, s7, gp
                  srl          a4, s7, t6
                  xor          s4, a5, s11
                  or           t3, s5, s4
                  ori          s9, a6, 79
                  lui          a3, 1009877
                  sub          t3, a7, t2
                  nop
                  srli         s4, s11, 11
                  sltu         a7, a7, s9
                  slt          a6, s2, t0
                  srai         s1, gp, 20
                  nop
                  nop
                  sltiu        s10, a7, 1732
                  auipc        zero, 132949
                  sll          a0, t1, s3
                  nop
                  sll          t6, t4, sp
                  sltu         gp, s7, a1
                  ori          s0, t3, -52
                  lui          s9, 788360
                  sub          a3, t2, sp
                  sra          t5, gp, s9
                  xor          a6, t4, sp
                  auipc        a7, 347576
                  add          a7, s6, s6
                  sltu         a6, s2, a0
                  add          t5, tp, tp
                  or           a5, s8, s4
                  xori         a5, s9, -1904
                  xori         a4, s6, 1204
                  sltu         s7, t6, s11
                  sub          t2, s2, sp
                  andi         s10, gp, -1530
                  sltu         sp, a5, t5
                  sra          a3, a2, s5
                  slli         t1, a1, 8
                  srli         s0, s11, 4
                  auipc        zero, 267267
                  or           s6, a3, t1
                  srli         t2, s8, 25
                  slti         t6, tp, -930
                  xor          s5, s11, s7
                  sra          s2, a7, a6
                  add          t6, t6, s7
                  srai         sp, a6, 24
                  sltu         a3, a6, gp
                  or           s11, a7, s11
                  auipc        zero, 211285
                  srl          zero, s4, s11
                  or           ra, s0, s2
                  slti         s2, s3, 1476
                  add          s11, s4, t0
                  srai         t6, s6, 3
                  add          a6, a0, zero
                  sub          tp, a2, a3
                  sub          s8, s7, sp
                  addi         s10, gp, -342
                  sub          a3, gp, s7
                  srl          t1, t3, s2
                  slti         a7, t1, 1103
                  nop
                  add          t6, t3, s10
                  sltiu        a0, s11, 880
                  srli         t5, ra, 0
                  nop
                  addi         a4, zero, -994
                  srli         a6, a6, 4
                  slti         t6, s6, 54
                  auipc        a6, 697933
                  nop
                  srli         s2, t1, 21
                  srl          a6, t1, s8
                  sltiu        a3, t3, 1050
                  sltu         zero, ra, tp
                  srai         s1, a3, 1
                  or           sp, tp, s5
                  slti         a3, sp, -1459
                  or           a4, s6, a6
                  sltiu        zero, a7, -189
                  slt          a5, sp, ra
                  slt          zero, s8, s2
                  srli         tp, t0, 12
                  srai         a0, s8, 31
                  slli         t4, s2, 13
                  sub          s9, zero, s1
                  xori         a5, s11, 1658
                  slti         s4, a0, 1744
                  sra          a3, t6, t4
                  addi         s2, a3, -1158
                  slti         s5, a0, -1659
                  ori          s8, s3, -320
                  and          ra, sp, s3
                  addi         a2, s3, -555
                  sra          s4, s11, s5
                  slli         s5, s7, 4
                  andi         a3, ra, -1843
                  sltu         gp, s3, s1
                  lui          s1, 358359
                  sub          t5, gp, a2
                  srai         s9, s5, 17
                  and          zero, t0, s3
                  xor          a6, s0, tp
                  slt          a7, t0, t3
                  lui          s5, 256883
                  srl          a2, a7, a1
                  srl          t4, t6, t2
                  ori          a4, sp, -1947
                  sltu         a3, s9, ra
                  nop
                  ori          s7, a2, -1597
                  sub          a3, t2, s1
                  xori         t5, a3, 1564
                  auipc        s5, 871729
                  xor          s2, t6, tp
                  slli         t3, t4, 6
                  slt          s6, a0, a1
                  srl          s7, s9, t1
                  srai         s7, s3, 30
                  andi         s2, s9, -475
                  add          a3, t6, t4
                  auipc        zero, 719065
                  sra          gp, a7, a1
                  sltu         s4, ra, t2
                  nop
                  auipc        t2, 697869
                  slti         t3, s8, 655
                  srli         s7, s9, 3
                  srai         s0, a1, 12
                  slti         s6, s8, 391
                  sltu         a2, gp, s7
                  slli         t3, a3, 19
                  sll          a2, sp, a3
                  or           s1, s8, s2
                  sltu         t3, s3, a2
                  xor          a0, s0, tp
                  andi         a4, s7, -800
                  lui          a4, 907851
                  nop
                  slli         gp, a7, 25
                  or           a5, t6, t6
                  ori          s7, t2, 1202
                  sltiu        zero, s3, -804
                  addi         a3, a3, -540
                  ori          a6, t2, -575
                  sub          s11, s4, a2
                  ori          a7, t6, -1021
                  slt          s9, s3, ra
                  srli         s4, s3, 21
                  addi         s4, s3, 1852
                  sll          s9, s9, t6
                  addi         t6, a0, 41
                  slti         t1, t1, -1019
                  addi         t3, t6, -643
                  srl          s11, t1, t2
                  sltiu        t1, s2, -588
                  sra          gp, s3, s7
                  and          s6, s3, t4
                  add          s11, sp, s6
                  or           a5, a7, a7
                  nop
                  andi         s4, ra, -1327
                  xori         s10, tp, 1817
                  sltiu        s2, a2, -1252
                  sltiu        t4, s10, 763
                  lui          ra, 682791
                  auipc        a5, 949884
                  srli         t6, a1, 28
                  and          t1, s4, tp
                  sub          a5, s7, s5
                  srl          a4, s9, a1
                  nop
                  xori         s0, a3, 435
                  slli         t4, sp, 11
                  addi         t6, s2, -459
                  sub          tp, t6, zero
                  sra          s10, ra, s1
                  sra          t1, ra, s1
                  auipc        zero, 214135
                  srl          ra, s6, a6
                  slt          s8, s9, tp
                  and          s5, s9, t6
                  slli         t6, a3, 3
                  srai         a7, a7, 14
                  slti         s4, a1, 1062
                  sll          a3, sp, a4
                  ori          s2, a6, -152
                  srl          sp, s5, a0
                  sub          s6, t0, t5
                  sltu         s4, t3, a7
                  ori          s7, gp, 997
                  xori         tp, s4, -929
                  sltiu        t6, a5, -1783
                  sltiu        t3, s5, 1225
                  slt          s0, s5, tp
                  nop
                  andi         a6, t2, -176
                  lui          a3, 807689
                  sltu         a5, t0, a3
                  add          s8, s4, a5
                  sltiu        a2, t0, -1134
                  or           a2, s6, sp
                  xori         a4, s3, -932
                  sltu         a0, a4, s6
                  ori          t6, s5, 935
                  or           s11, s10, a7
                  sll          a7, s6, s11
                  addi         s10, a1, 943
                  andi         s8, t4, 740
                  and          t2, s6, a0
                  srl          a6, t5, s11
                  sll          zero, a0, s2
                  or           s2, tp, s8
                  xor          s1, s1, ra
                  sra          a7, t6, s5
                  srli         t1, a3, 6
                  srai         s10, s8, 4
                  ori          t6, gp, 331
                  ori          t1, s8, -159
                  nop
                  addi         a3, t2, -348
                  and          s9, a7, s9
                  sll          gp, s6, s4
                  slt          a4, a7, a0
                  slt          ra, a4, t4
                  xori         gp, s0, -1856
                  sub          ra, t2, s0
                  nop
                  or           a2, s1, a2
                  addi         s6, s10, -321
                  add          a4, a7, a5
                  srli         a5, a3, 7
                  slti         a3, t1, -1100
                  xor          s0, s9, s6
                  nop
                  sra          s7, s10, t4
                  slli         t2, a4, 0
                  slli         a7, zero, 3
                  lui          a5, 461353
                  srli         a7, s2, 9
                  addi         s2, s5, 1413
                  sra          s11, t1, gp
                  slti         gp, a3, -994
                  sltiu        t5, t6, -322
                  sra          s2, t1, a3
                  sll          s9, s0, a0
                  auipc        gp, 918862
                  addi         s6, s0, 526
                  andi         a0, s7, 1231
                  nop
                  sltu         gp, s2, s8
                  srl          t3, tp, gp
                  nop
                  auipc        sp, 289073
                  add          t5, t1, s0
                  srai         s5, s11, 28
                  and          s11, s9, s0
                  xor          a0, a0, s4
                  slt          s6, a6, a2
                  and          t2, zero, a2
                  ori          s0, s5, 198
                  auipc        s10, 870647
                  srli         zero, s3, 24
                  sub          s6, s3, s6
                  add          s11, s11, tp
                  slti         s5, s11, -504
                  xor          a7, a2, s2
                  srl          sp, t5, a4
                  xor          t3, a3, s3
                  slli         t4, sp, 4
                  andi         s1, a5, 607
                  srli         s5, a7, 15
                  lui          s6, 753145
                  lui          s7, 512219
                  slti         s9, s1, 1509
                  or           a4, t2, a1
                  or           s7, s5, s4
                  sub          s10, t4, s11
                  slt          a7, t5, a7
                  add          t1, s7, tp
                  sltu         tp, s7, a7
                  addi         ra, a1, 1848
                  slt          t1, s3, s10
                  lui          s1, 234901
                  sll          s6, sp, a7
                  andi         sp, a1, 1667
                  ori          a3, a2, -53
                  lui          t6, 121696
                  ori          t6, a1, -1726
                  sra          s1, t5, s9
                  nop
                  sltiu        a6, ra, -452
                  ori          s5, s0, 1347
                  nop
                  andi         a6, a0, -33
                  xori         s4, s5, 269
                  sra          t3, s5, s9
                  slt          t6, s9, a7
                  add          a4, a2, t6
                  slt          s6, a5, gp
                  auipc        a2, 296203
                  lui          t2, 451766
                  slt          gp, a6, zero
                  sll          a2, s6, t0
                  slli         s10, a7, 16
                  slti         a5, t5, 1678
                  xori         t1, sp, -819
                  slt          s8, a1, a4
                  slt          s0, s10, tp
                  ori          s8, a7, -962
                  sltiu        s7, t6, 185
                  nop
                  sra          gp, t3, s2
                  addi         s1, a5, 1681
                  srai         s6, s9, 9
                  srl          t1, s2, s8
                  sltu         a0, a1, t1
                  or           sp, a2, t3
                  srli         s1, s6, 8
                  andi         a5, ra, -1669
                  or           a0, a7, a5
                  auipc        a5, 794977
                  andi         a2, t1, -232
                  nop
                  sub          ra, t0, a5
                  sltiu        s9, a4, -1607
                  slt          s8, s1, zero
                  sll          s11, a1, t3
                  ori          t1, a5, -814
                  sub          a4, t3, t4
                  srl          t5, a0, a1
                  slti         a6, gp, -644
                  lui          a3, 606545
                  srl          t1, a6, sp
                  srli         t3, a5, 29
                  slti         sp, s10, -767
                  srli         a4, s7, 0
                  sltiu        s11, s8, 1355
                  slli         s9, a1, 11
                  auipc        a4, 455634
                  ori          s4, a2, -183
                  andi         a7, gp, -2024
                  and          t3, a5, tp
                  sltu         s1, s10, a5
                  addi         t3, s5, 2000
                  sltiu        s10, s5, 1543
                  add          tp, s2, t0
                  addi         s8, s3, -1669
                  ori          gp, s8, 973
                  and          t3, t5, zero
                  sltu         a6, a2, s0
                  nop
                  addi         a6, sp, 1744
                  xor          s4, tp, gp
                  sub          s2, a1, zero
                  sra          s5, a5, ra
                  add          t2, s7, s0
                  sll          t5, s7, a3
                  sub          t3, s11, zero
                  addi         t4, s3, -1784
                  lui          t2, 628561
                  addi         t6, a5, -1755
                  slli         a5, a7, 15
                  xor          s9, t4, s6
                  slt          zero, sp, t3
                  addi         s0, a1, 1823
                  sra          a3, gp, s1
                  add          t6, s9, t0
                  addi         s11, s1, 1608
                  srai         ra, s7, 6
                  xor          s4, s2, tp
                  slti         tp, s4, 294
                  sltu         s8, t5, a4
                  srai         s6, s3, 29
                  slli         ra, s1, 9
                  sra          t3, a0, s1
                  srli         t3, a4, 9
                  srl          a2, tp, t6
                  srli         a0, s2, 24
                  andi         t6, s0, 1968
                  and          gp, t0, t2
                  and          s11, gp, a0
                  slt          a5, s0, t1
                  ori          t3, s3, 438
                  sub          zero, s4, s10
                  nop
                  ori          s1, t5, -1862
                  sub          s7, zero, sp
                  addi         s2, t5, -1432
                  sra          s5, s9, s4
                  sltu         t5, t5, t0
                  addi         s10, s0, 943
                  or           zero, a7, s1
                  xori         ra, t5, 750
                  andi         s8, a0, 1396
                  addi         s9, s0, 1260
                  srl          a4, a5, zero
                  srli         a2, a5, 12
                  xori         s2, ra, 1653
                  and          a4, a0, ra
                  addi         s9, s4, 468
                  sra          sp, t2, s0
                  auipc        a3, 586688
                  srli         a3, s2, 21
                  add          s1, a5, s0
                  xori         a2, tp, -735
                  addi         a6, s2, 1913
                  slli         a0, a1, 26
                  sub          s2, s9, tp
                  andi         sp, s1, 1206
                  srai         s9, t6, 7
                  or           s11, a1, s10
                  or           t5, s5, t2
                  sub          s5, gp, a3
                  srli         s4, a5, 5
                  sltiu        t2, s0, -303
                  and          a5, s8, a2
                  sltu         t5, tp, t3
                  nop
                  srli         t5, t1, 11
                  andi         a6, t1, -1868
                  and          ra, s2, s10
                  add          s1, s10, s2
                  and          a7, t4, t2
                  ori          s5, a5, 954
                  srai         s10, s10, 3
                  and          t4, s0, s3
                  srai         a6, s7, 25
                  or           t1, a0, a1
                  xori         a3, t1, -469
                  srai         t4, zero, 30
                  slli         sp, ra, 11
                  sra          t4, s4, t1
                  ori          tp, zero, -321
                  sll          s5, tp, a4
                  addi         zero, s1, 979
                  sub          tp, a1, s11
                  slt          s4, ra, s5
                  sub          sp, a2, a1
                  and          a6, s1, s0
                  ori          ra, zero, -1646
                  srl          a2, gp, s6
                  ori          s4, s6, 503
                  andi         a2, a4, -1276
                  add          t6, a4, t2
                  auipc        a7, 542777
                  auipc        a5, 142122
                  srl          s0, s4, a6
                  addi         a5, a6, -454
                  and          s0, a1, tp
                  ori          s11, s1, 1369
                  and          zero, a2, t2
                  sll          s2, s9, a0
                  and          s7, sp, t2
                  sltu         s0, s11, ra
                  slt          zero, zero, tp
                  srli         t1, t0, 31
                  auipc        a2, 889091
                  sub          s2, ra, s11
                  slli         s2, s10, 0
                  sll          zero, a3, s5
                  li           t6, 0xaa36033d #start riscv_int_numeric_corner_stream_16
                  li           s10, 0xea4ba4e1
                  li           a6, 0x80000000
                  li           s6, 0xffffffff
                  li           tp, 0x738595d
                  li           s1, 0x80000000
                  li           a4, 0x53709840
                  li           s11, 0xffffffff
                  li           s5, 0xc14142a3
                  li           a0, 0x80000000
                  lui          s6, 971498
                  lui          s1, 656522
                  lui          a4, 323102
                  sub          s1, s11, t6
                  nop
                  auipc        s5, 14971
                  auipc        t6, 643996
                  addi         tp, t6, 30
                  auipc        s10, 873993
                  add          a0, t6, a6
                  add          s1, s6, s5
                  lui          s1, 246340
                  sub          s5, s11, s1
                  sub          t6, s6, s11
                  lui          tp, 725630
                  nop
                  addi         s5, s5, -166
                  lui          a0, 287421
                  nop
                  addi         s5, a4, -1490
                  nop
                  auipc        a6, 1889
                  sub          s6, s11, a4 #end riscv_int_numeric_corner_stream_16
                  srli         s10, a4, 22
                  or           a4, t4, a6
                  addi         a4, t1, 535
                  or           t5, tp, ra
                  sra          s0, a4, s9
                  sltu         s8, ra, a4
                  andi         tp, s0, -1865
                  xor          a7, s0, tp
                  sub          s9, t1, s5
                  sltiu        t6, t4, 996
                  srli         a3, s8, 14
                  xori         s9, sp, -999
                  nop
                  addi         tp, s1, 1891
                  or           s4, t3, ra
                  xori         t6, a0, 540
                  xori         a2, t5, -925
                  slti         s10, s9, -353
                  ori          t3, t3, -433
                  slt          s8, sp, tp
                  and          ra, t2, s7
                  srli         gp, s8, 15
                  or           tp, zero, a4
                  slti         s0, s4, -590
                  slt          t2, a3, a7
                  srai         tp, a6, 10
                  srai         a2, s1, 17
                  lui          s8, 809960
                  and          zero, t0, a4
                  xor          a7, ra, t0
                  sll          tp, t4, t2
                  srli         t6, s2, 3
                  srli         ra, a4, 6
                  nop
                  sltu         gp, s11, s3
                  xor          t1, s2, a4
                  slli         s10, zero, 31
                  addi         a3, sp, -417
                  lui          a7, 752018
                  sub          s11, zero, s4
                  slti         s1, t6, 1342
                  sub          s7, t5, t1
                  or           tp, t0, s2
                  or           s0, s11, t0
                  sub          t5, t5, zero
                  nop
                  sll          a6, s9, s5
                  sra          gp, t6, s0
                  sra          a2, t5, s8
                  auipc        a7, 584813
                  xor          s11, a0, a7
                  add          ra, s8, t6
                  nop
                  slti         t5, s2, 1862
                  srai         s10, t1, 30
                  srli         t1, s10, 9
                  sub          zero, t3, a1
                  sll          s11, s3, t6
                  auipc        a5, 797221
                  slti         s5, s2, -247
                  sll          ra, ra, t2
                  sra          s4, a6, t2
                  xor          s8, t2, s0
                  add          s5, t3, t6
                  lui          a7, 315353
                  slti         a5, s3, 165
                  xor          a4, t4, t5
                  add          s2, s7, t0
                  srai         t3, t1, 27
                  sra          a3, t6, t6
                  or           s2, t2, zero
                  srl          s5, t3, t6
                  srl          s1, a6, t2
                  sltiu        t2, s8, 1513
                  xori         s4, s5, 1303
                  sub          t4, s5, s5
                  sltu         s0, s2, t5
                  xori         a0, gp, -657
                  ori          s10, s3, 140
                  sub          a2, t2, a5
                  xori         t1, s9, 860
                  or           tp, t6, s3
                  addi         s8, a0, -344
                  auipc        t6, 933589
                  xor          s9, a3, s3
                  auipc        sp, 838913
                  auipc        s7, 471418
                  sltu         s2, s4, s4
                  addi         s5, s1, -98
                  addi         s5, s1, 895
                  and          s0, s5, s7
                  or           sp, a1, t1
                  nop
                  ori          a2, s4, 282
                  srai         s7, a1, 22
                  slli         sp, s7, 22
                  and          t6, s1, tp
                  auipc        t4, 487318
                  slt          a2, gp, t0
                  srl          s10, sp, s4
                  srl          s0, s3, t0
                  add          s4, s0, s5
                  sll          s0, ra, ra
                  sltu         t6, a7, s7
                  slti         a2, s3, -31
                  srai         gp, a0, 10
                  ori          zero, s8, -899
                  xori         t3, t5, -203
                  and          sp, t3, t5
                  nop
                  nop
                  srl          s9, sp, a7
                  sll          a4, s0, s4
                  nop
                  auipc        ra, 93589
                  srl          t1, s7, s1
                  sll          s11, t5, s0
                  srli         s11, s9, 10
                  nop
                  add          s2, s3, s10
                  slt          sp, ra, t6
                  addi         s10, a4, 1418
                  slt          a3, s8, a7
                  add          s1, s7, a4
                  sltu         a2, tp, s3
                  lui          s1, 846390
                  addi         sp, a6, 819
                  add          t6, a3, ra
                  and          s1, t3, a1
                  srli         a5, zero, 30
                  sltu         s9, a6, a7
                  lui          t3, 76098
                  xor          t1, s6, a2
                  sub          s8, t3, a0
                  xori         gp, s11, -264
                  add          sp, t1, s7
                  sltu         t6, t1, t1
                  xori         s5, a5, 1176
                  nop
                  slli         gp, a7, 6
                  sltiu        t5, sp, -783
                  srai         ra, a2, 2
                  slti         t3, s10, 6
                  xori         s2, t4, -131
                  sra          t1, t6, s3
                  auipc        a4, 234478
                  sra          s10, s9, a3
                  sub          s9, a6, s0
                  srai         s2, t6, 5
                  add          a7, s9, a1
                  xor          t5, t2, a4
                  ori          s0, t4, -1812
                  or           s9, a4, t2
                  xor          s9, s8, sp
                  addi         t3, s6, -542
                  auipc        a2, 828884
                  srl          a6, t3, t3
                  sra          a6, a3, s7
                  or           s6, s6, a2
                  sub          a3, a3, a3
                  sll          t3, s4, s3
                  addi         a4, gp, -1721
                  slli         a6, s4, 2
                  sltiu        sp, s11, 1923
                  sub          t2, s7, a1
                  xor          s8, s0, a7
                  sub          s10, a7, s8
                  srli         zero, zero, 18
                  sra          s1, s11, t0
                  srl          s10, s8, s9
                  auipc        s11, 954851
                  sra          t5, zero, t0
                  and          s4, t1, ra
                  sra          t2, t2, t3
                  slti         s5, s7, 212
                  sub          t4, a7, s4
                  lui          a6, 1020676
                  xor          a4, a2, a4
                  sll          t3, s4, a4
                  or           zero, a5, a2
                  ori          t6, s6, -1308
                  slt          s0, a5, t3
                  xori         s6, a6, 1134
                  slt          s2, zero, t1
                  srli         tp, t1, 13
                  sll          t6, a6, a1
                  srli         s10, gp, 23
                  or           sp, s10, s9
                  sltu         a5, t5, t6
                  srli         t4, s4, 17
                  srli         a6, s4, 22
                  auipc        zero, 500234
                  sra          t1, a6, t3
                  slt          s1, s7, s2
                  andi         a3, s5, 1337
                  sll          s6, s8, gp
                  sll          a5, s5, a7
                  xor          s11, a4, s1
                  nop
                  srli         a3, gp, 23
                  sll          t1, s11, a6
                  xor          sp, t5, t1
                  srl          s7, ra, s9
                  srl          s11, s1, sp
                  ori          t5, a2, 109
                  slli         a4, s7, 4
                  slt          a0, s9, a7
                  sll          a7, a3, a5
                  xori         tp, a4, -692
                  and          s5, a7, ra
                  or           t6, sp, a0
                  slti         s1, a7, 707
                  or           s0, a4, a1
                  addi         s2, t3, -6
                  auipc        s2, 297625
                  sltu         s11, gp, t4
                  nop
                  andi         s9, gp, -1176
                  srl          s2, t2, s7
                  lui          s11, 440000
                  xor          t4, s0, a0
                  sltiu        s8, s6, -1283
                  addi         s2, a2, -1868
                  and          ra, t4, s2
                  sltiu        tp, s3, -1148
                  xor          s10, a5, t0
                  sll          s8, a7, a1
                  slt          gp, a1, s5
                  srl          s1, t6, zero
                  slli         t1, s9, 20
                  slli         a3, a0, 31
                  ori          s7, a6, -988
                  srl          a6, t5, t5
                  and          a0, s1, t3
                  xori         s10, s0, -915
                  or           s5, s5, s4
                  auipc        ra, 198995
                  sltu         ra, a3, sp
                  sub          gp, a1, t2
                  sll          sp, s9, t4
                  xori         s10, s4, -1379
                  xor          s6, t6, ra
                  slt          t2, s4, s1
                  sll          s10, s7, t1
                  andi         a7, s0, -260
                  srli         s6, tp, 3
                  xor          s5, s0, tp
                  srai         a5, a2, 15
                  lui          s7, 507904
                  lui          s10, 96933
                  auipc        sp, 949498
                  slt          t4, a0, a4
                  sll          a7, t2, s7
                  lui          a0, 520958
                  or           s6, ra, s10
                  srl          s2, gp, a3
                  andi         t6, s7, -1937
                  addi         s8, a3, -180
                  slti         tp, gp, -732
                  and          zero, s5, a5
                  add          tp, a1, s11
                  sub          s5, s0, s5
                  xori         s8, t4, -284
                  nop
                  add          gp, ra, a4
                  sra          a6, t6, s1
                  slli         a5, a6, 6
                  and          s7, a0, a4
                  addi         gp, a6, -1492
                  andi         s5, t3, -319
                  xori         t2, t3, -205
                  srli         zero, s6, 23
                  lui          s5, 457621
                  srli         s9, s3, 7
                  xori         s11, tp, -534
                  lui          s8, 156935
                  sltiu        s6, gp, 1444
                  slli         s5, tp, 18
                  andi         s10, a4, 1840
                  lui          ra, 185718
                  sltu         a4, zero, s6
                  auipc        s1, 716724
                  addi         sp, s3, -1662
                  sltiu        zero, s11, -1497
                  srai         s5, t5, 2
                  addi         t4, s2, -281
                  ori          gp, a3, -1969
                  auipc        t1, 437905
                  srli         a6, s2, 25
                  sltu         a7, t2, s9
                  andi         a6, a7, -1331
                  slt          t3, t6, s3
                  srai         s1, gp, 23
                  xor          t2, s7, sp
                  add          a4, s1, t6
                  nop
                  slt          s1, a5, s11
                  sltiu        s9, a2, -1386
                  slt          sp, s9, t3
                  lui          gp, 794934
                  ori          a6, a1, 378
                  srl          s2, t0, s2
                  srli         s9, a6, 2
                  nop
                  sltu         gp, s0, a1
                  sltu         s8, s8, s3
                  sltiu        a4, s6, 1071
                  lui          a3, 302553
                  or           t3, t0, a2
                  sra          zero, t0, t6
                  sltiu        a7, ra, -1611
                  or           gp, ra, a3
                  xori         a6, t0, 1867
                  srli         s2, a6, 5
                  ori          s4, t3, 1738
                  xor          sp, s7, s3
                  sltu         t1, s8, s1
                  sub          a6, a0, s8
                  xori         t4, a0, -24
                  slti         t1, a2, 1340
                  sltu         a3, zero, a7
                  sra          tp, s11, s5
                  sltu         ra, a4, s7
                  sltiu        s5, s3, -833
                  srl          sp, a0, s2
                  slli         s1, t2, 20
                  sra          t2, t6, s6
                  slt          s1, tp, s4
                  or           s8, a0, s0
                  add          a6, s9, zero
                  sll          s2, s0, a3
                  andi         s9, gp, -1592
                  and          s9, a0, zero
                  addi         s2, zero, -105
                  addi         ra, a7, -1869
                  sra          sp, s2, s7
                  sltiu        tp, a2, 1864
                  sra          t1, t5, s0
                  sra          a7, tp, a4
                  slt          tp, a3, s2
                  slli         s8, s4, 6
                  slti         s8, a5, 1898
                  srai         a0, t1, 7
                  addi         s8, t4, -921
                  addi         a6, s5, 770
                  ori          s5, t5, -879
                  sra          t4, a2, tp
                  sltiu        a2, t6, -365
                  slli         t5, t5, 16
                  srli         a6, t1, 14
                  srl          s7, a6, t0
                  ori          a5, tp, -1375
                  xori         s2, a2, -1117
                  sll          t1, sp, s0
                  lui          s9, 653534
                  ori          s1, a4, -1942
                  sub          tp, t2, s11
                  ori          s4, zero, 1241
                  auipc        t5, 723728
                  sltiu        s5, s8, -1960
                  auipc        s11, 342674
                  andi         gp, a2, -1218
                  srl          t1, a5, a6
                  slt          t6, s8, a6
                  sub          t5, zero, t0
                  srl          t1, a7, s0
                  add          s8, a3, a4
                  lui          zero, 451228
                  addi         a2, t0, 1615
                  slli         a2, a0, 23
                  auipc        s2, 861852
                  sltu         s11, t4, s0
                  add          s9, s0, s5
                  xori         a5, s9, -560
                  lui          a2, 817601
                  srai         s9, tp, 22
                  srl          ra, a2, t0
                  auipc        t1, 106228
                  srai         a5, a3, 7
                  srai         t5, s1, 24
                  addi         s8, tp, -1854
                  andi         a7, t5, 350
                  sll          sp, t0, t5
                  slti         gp, s11, -1957
                  andi         gp, s2, -680
                  and          t6, a1, s9
                  ori          a5, gp, 623
                  srl          a0, s4, a3
                  sll          tp, t2, s2
                  and          ra, t3, a5
                  or           a5, a4, s9
                  and          s9, s5, a1
                  sra          s1, t0, t3
                  addi         a4, s3, -650
                  ori          t4, a2, -381
                  sltu         s1, t3, t4
                  lui          a7, 641410
                  addi         a2, t3, 1071
                  xor          t2, a4, t1
                  ori          a5, a3, 1070
                  lui          ra, 56169
                  slli         t3, s8, 8
                  addi         s2, t3, 1944
                  srli         s9, zero, 1
                  sub          s4, a3, s4
                  auipc        a6, 418003
                  ori          s10, t3, -1117
                  auipc        gp, 721668
                  srli         gp, a3, 7
                  xori         tp, gp, 1010
                  sll          a3, s5, t1
                  xori         t1, t3, -900
                  auipc        a3, 736346
                  srai         s1, sp, 3
                  sub          t2, a6, a2
                  sll          s7, s0, t1
                  srli         s1, s3, 9
                  sltu         s4, t6, s10
                  slli         s2, s8, 24
                  and          s10, tp, a1
                  xori         s5, a1, 1186
                  ori          t1, t5, 1862
                  slli         a7, a6, 26
                  or           t5, t6, a6
                  nop
                  lui          s2, 621
                  srai         t2, s1, 6
                  and          t3, a0, s10
                  sub          t1, t4, ra
                  nop
                  sltiu        a0, t4, 90
                  srai         t6, a7, 26
                  sltiu        a6, a5, -1612
                  or           s10, t0, sp
                  slti         s2, gp, 306
                  ori          gp, s3, 1273
                  auipc        s5, 389287
                  xor          s4, s7, s5
                  sub          gp, s2, a0
                  andi         s0, t5, 92
                  sll          a3, s5, a4
                  slti         s6, tp, -688
                  sltiu        t2, t3, -161
                  sll          s10, tp, s7
                  sltiu        s0, a5, -153
                  srli         sp, s10, 27
                  sltiu        a2, s8, 1681
                  srli         s10, s7, 19
                  xor          s5, tp, s5
                  sltu         s4, a2, a1
                  auipc        a6, 232154
                  addi         s10, s2, -609
                  sltu         a4, s5, s6
                  srl          s5, t5, t4
                  sltu         sp, a0, t2
                  srli         s11, t6, 3
                  srli         s10, s6, 21
                  sub          t4, s7, a6
                  srl          s4, ra, s11
                  sltu         a5, a0, s11
                  slt          zero, t0, a4
                  auipc        s6, 121615
                  sltu         s10, s1, s1
                  ori          s7, s9, -1814
                  srai         t6, a1, 17
                  sub          a0, a2, t6
                  slli         s8, s7, 20
                  sltu         a3, t1, s8
                  xori         t6, t5, -1569
                  sra          s2, zero, ra
                  sltiu        s11, t5, -1763
                  and          t5, s6, s1
                  lui          a3, 199213
                  slt          a4, a3, tp
                  or           tp, a2, a2
                  srl          a6, gp, t2
                  or           a0, s1, s3
                  srai         tp, a5, 20
                  slt          t1, gp, s5
                  sltu         a4, a4, t1
                  sub          zero, s6, s3
                  slli         s7, a6, 16
                  ori          t1, zero, 1589
                  slt          a4, s11, t4
                  lui          t6, 804857
                  srli         s10, s10, 4
                  srl          s2, t3, t1
                  sltiu        t6, s1, 1928
                  srai         a7, s1, 19
                  slli         s11, sp, 31
                  or           t4, s0, s5
                  sltu         s4, s0, gp
                  slt          s7, a5, s4
                  sra          t1, sp, t1
                  sltu         t6, t4, s2
                  slti         s0, gp, -34
                  sltu         t2, zero, a7
                  add          t6, a3, a6
                  srai         s10, tp, 15
                  ori          a6, s7, -1604
                  nop
                  add          t4, s7, s10
                  slti         s2, a1, 1808
                  sll          s2, s5, s6
                  sll          gp, t3, a0
                  auipc        s1, 280632
                  srl          s0, a6, sp
                  slt          sp, gp, t1
                  nop
                  lui          gp, 308818
                  andi         gp, ra, 290
                  sub          a2, s0, s9
                  sltiu        a6, sp, -1660
                  nop
                  and          s8, sp, s2
                  add          a5, a4, s5
                  and          s4, s7, t5
                  srli         s10, s1, 10
                  sltiu        s2, s2, -1
                  srl          s0, tp, s2
                  slli         s6, a6, 4
                  nop
                  andi         a5, s7, -1945
                  srl          s4, t1, s5
                  srl          t2, a7, a1
                  slli         s5, s2, 5
                  xori         s0, t2, 1708
                  srl          s0, s0, t1
                  xori         s11, s10, -617
                  and          ra, a2, s6
                  nop
                  xor          ra, s7, a7
                  lui          t3, 866404
                  sltiu        a2, a7, -1958
                  srli         a4, t1, 2
                  sltu         s8, t0, t6
                  lui          t4, 956655
                  srli         a6, gp, 30
                  sll          s7, t0, t1
                  srai         sp, t2, 12
                  slt          t3, s2, a5
                  addi         s11, s7, 1030
                  sll          a2, s5, gp
                  slli         s10, gp, 29
                  slt          gp, s1, a6
                  slt          t6, ra, ra
                  slt          a6, a5, s5
                  slli         t6, a6, 9
                  srli         s0, tp, 29
                  sll          t5, gp, a1
                  slli         s9, t5, 14
                  slli         sp, s8, 22
                  nop
                  sub          a6, a3, s3
                  xori         a4, s1, 984
                  sll          t2, a7, tp
                  sltu         zero, a1, s2
                  slt          t2, s2, t5
                  and          t4, s8, t6
                  srai         s10, a6, 15
                  srli         a6, s1, 22
                  slti         a4, t5, -1782
                  sll          a0, s5, a1
                  slli         s10, t2, 2
                  slli         s11, a0, 9
                  srli         a3, sp, 24
                  andi         gp, sp, -1791
                  and          t1, s9, a0
                  addi         tp, s8, -1290
                  auipc        t3, 1034252
                  slti         s11, ra, 2041
                  addi         s10, gp, -1844
                  nop
                  sltu         zero, a4, s4
                  addi         ra, t3, -413
                  addi         t1, t1, 618
                  auipc        a4, 373536
                  ori          s9, t6, -1567
                  add          s11, s6, a3
                  slti         t6, a5, -747
                  auipc        ra, 951434
                  or           s6, s5, gp
                  srl          s5, t6, a2
                  srai         s9, s2, 25
                  sltu         ra, t3, s9
                  slti         ra, s10, -1231
                  srai         zero, sp, 1
                  ori          a6, gp, -1482
                  srai         s7, t3, 19
                  lui          a4, 391644
                  sub          s10, s6, s10
                  sra          s5, t3, a2
                  nop
                  xor          a2, s10, t1
                  addi         s2, a6, 1791
                  slt          a2, zero, tp
                  srli         t1, a2, 3
                  auipc        gp, 418697
                  sub          s5, s9, s11
                  sra          s5, gp, ra
                  add          zero, t3, s11
                  sub          t2, ra, ra
                  andi         s0, a5, 1446
                  xor          a5, t1, s3
                  and          s7, t2, a1
                  slti         s8, t0, -869
                  srl          t2, s2, s10
                  ori          t5, tp, -320
                  or           s0, ra, s0
                  srli         s5, zero, 8
                  and          s8, s2, s9
                  srai         a3, s11, 30
                  or           a2, a1, s8
                  sra          s4, sp, s10
                  andi         s8, t6, 61
                  srl          a3, t5, ra
                  slt          s1, t1, a0
                  sll          t1, s2, t1
                  sll          a7, sp, ra
                  sra          s6, s9, s3
                  lui          s8, 105383
                  sub          a4, a4, s1
                  xor          a4, a0, a0
                  or           s11, t4, t5
                  ori          a5, s8, 2046
                  lui          zero, 638347
                  xori         s7, s2, -1851
                  ori          tp, t5, 1631
                  slli         tp, t5, 10
                  nop
                  xor          sp, s3, t2
                  slti         t1, t5, 1145
                  slli         t6, t2, 4
                  add          s11, sp, ra
                  add          s4, s2, a1
                  or           t4, s2, s6
                  sra          s5, s8, a2
                  srai         ra, t2, 20
                  slli         s4, a4, 3
                  slli         t2, s3, 21
                  sltiu        t6, t5, -157
                  nop
                  srai         a7, s10, 5
                  lui          zero, 1038365
                  srli         t2, s2, 27
                  slt          gp, t2, s4
                  sub          s9, t0, t0
                  srai         t2, s2, 5
                  xori         sp, t6, 1212
                  srl          s8, t3, a6
                  srl          gp, t2, t0
                  add          s5, gp, t1
                  sub          s4, t6, s3
                  and          a4, a7, s2
                  srli         a4, a0, 8
                  lui          s6, 918839
                  addi         t4, a6, -1589
                  srl          s4, t3, s3
                  xor          zero, s4, zero
                  slt          a3, a7, sp
                  and          s2, a6, a1
                  add          s7, a4, s5
                  xori         a6, a6, 130
                  slt          sp, sp, s0
                  nop
                  sra          s9, tp, s6
                  andi         a5, s5, -1601
                  srli         a3, s11, 31
                  sltu         zero, s10, s10
                  slt          s10, s5, a7
                  sltu         s9, t2, t5
                  addi         a7, a4, -1685
                  andi         tp, zero, 287
                  slti         s5, s5, -432
                  sltu         s6, s8, tp
                  andi         a3, t6, -1234
                  add          a4, s10, t2
                  sll          s7, a1, a2
                  sltu         s11, a1, s3
                  auipc        s1, 149889
                  slli         s2, s11, 11
                  sltu         t2, t5, s11
                  nop
                  and          a4, t3, a2
                  sra          s7, s1, a6
                  sltu         a3, t0, s0
                  addi         s5, t4, 785
                  slti         t5, s2, -1013
                  addi         s0, s2, 1167
                  or           tp, tp, a6
                  addi         tp, a0, 95
                  and          s11, ra, s0
                  slli         zero, a7, 31
                  sll          zero, s0, t1
                  slti         zero, a3, 193
                  andi         a3, s5, -1871
                  xor          a4, t4, a3
                  sub          t4, a5, s6
                  slti         a3, a7, -2020
                  srai         a4, s9, 24
                  and          gp, a5, a4
                  and          a3, s6, a0
                  sltiu        s9, gp, 1416
                  lui          tp, 879664
                  ori          t6, a2, -726
                  slti         s7, s4, 1353
                  srli         sp, s3, 28
                  sltiu        t1, a6, -43
                  ori          ra, t0, -645
                  andi         a4, s3, 141
                  sra          s7, sp, a3
                  slli         s0, a2, 2
                  sll          a7, a1, s1
                  srli         ra, s1, 2
                  sub          s1, a7, s11
                  xori         t3, a6, -993
                  srli         t5, t4, 25
                  xori         t6, sp, -494
                  nop
                  sll          s4, s1, s0
                  srai         sp, tp, 28
                  or           s8, a3, s3
                  li           t6, 0x9b47a2c4 #start riscv_int_numeric_corner_stream_15
                  li           s9, 0xdd291993
                  li           ra, 0x80000000
                  li           s7, 0x80000000
                  li           t5, 0x80000000
                  li           a7, 0x0
                  li           a6, 0x80000000
                  li           a0, 0x0
                  li           s2, 0x80000000
                  li           s1, 0xffffffff
                  sub          s2, s1, s2
                  addi         a0, a7, 727
                  lui          s1, 793943
                  sub          a7, s1, ra
                  sub          s9, ra, s7
                  addi         a7, a6, -52
                  addi         t6, a6, -1330
                  lui          s2, 378581
                  sub          a6, a0, a7
                  lui          a6, 450020
                  auipc        t5, 838935
                  sub          s1, ra, s7
                  sub          a6, a6, s2
                  add          s2, t6, s7
                  lui          s9, 767085
                  addi         ra, ra, 621
                  addi         a7, s7, 1903 #end riscv_int_numeric_corner_stream_15
                  srl          tp, gp, t2
                  nop
                  sll          s7, a6, t6
                  or           a6, s0, s1
                  add          a2, s10, s10
                  xori         t5, t2, -419
                  slli         a3, sp, 8
                  sll          s4, s9, a2
                  or           s5, a4, a1
                  srai         s1, ra, 14
                  xor          tp, a4, a5
                  sub          t6, t5, t4
                  slt          t6, s3, a2
                  sub          gp, gp, t6
                  srai         s8, s1, 25
                  auipc        a4, 450984
                  slti         s9, a3, -600
                  slti         t3, s10, -1363
                  srli         s0, a5, 2
                  srai         s11, t1, 24
                  srli         t2, sp, 16
                  nop
                  andi         t6, gp, -1383
                  xori         zero, s6, 946
                  slli         a5, s11, 9
                  ori          s2, t6, -1908
                  andi         gp, a0, -408
                  xor          zero, a2, s4
                  ori          s6, a6, -315
                  addi         s2, s8, -1304
                  or           a4, ra, ra
                  add          zero, t4, t5
                  srli         s8, gp, 25
                  auipc        t3, 523409
                  srli         a3, a5, 3
                  andi         ra, t0, 1045
                  sra          a6, tp, a2
                  xori         s1, s6, 844
                  lui          t6, 133847
                  slti         tp, gp, 31
                  srli         a6, t5, 10
                  or           s8, s1, a1
                  and          tp, s10, t6
                  xori         s2, a0, 582
                  auipc        t4, 649952
                  add          t1, s2, a0
                  andi         zero, s6, -2031
                  or           t3, s6, zero
                  slt          a2, s6, ra
                  sltu         zero, t4, s0
                  sltiu        t3, a4, -1641
                  sll          a3, a0, t6
                  slt          s9, s4, t1
                  sra          s8, s8, t3
                  sll          s1, s2, a4
                  slli         s5, t2, 29
                  andi         s9, a7, 2043
                  slli         a4, s0, 17
                  sltu         s7, s4, a4
                  auipc        t3, 905929
                  nop
                  slt          gp, s10, t0
                  sll          s0, a3, s3
                  add          s0, s0, s5
                  addi         s10, a1, -1520
                  sltu         s11, s2, t2
                  xor          s8, s1, a3
                  srai         s0, s1, 27
                  srai         s8, s1, 15
                  sll          a0, a1, a0
                  xori         s11, t4, -608
                  andi         s10, a6, -903
                  andi         a4, s7, -1590
                  ori          a7, a6, -1049
                  srai         s5, a3, 31
                  srl          a0, s10, t4
                  srli         s4, s11, 21
                  xori         s11, sp, 241
                  andi         a3, a3, -1743
                  addi         t5, s0, 1937
                  sra          a3, a1, zero
                  sltu         s9, t3, zero
                  slli         t2, a2, 10
                  sub          s5, t1, a2
                  sltu         s9, t0, s6
                  nop
                  sub          gp, a1, ra
                  add          a7, a7, s8
                  or           a3, s4, a2
                  addi         tp, a0, -838
                  nop
                  auipc        t2, 872219
                  lui          a5, 411903
                  lui          s7, 992085
                  slt          ra, t3, a6
                  lui          t4, 878592
                  xori         s8, s9, 1754
                  and          s1, t4, s2
                  or           a7, a5, s8
                  xori         t4, t1, -548
                  slti         s6, a7, -659
                  xor          t1, s11, s11
                  srl          s2, s11, s6
                  andi         a3, a5, -1397
                  sltu         a6, sp, s7
                  sra          t5, sp, s2
                  add          s2, s2, a5
                  nop
                  auipc        a6, 844804
                  slti         a2, t3, -1988
                  srli         a5, t1, 31
                  srli         t1, tp, 12
                  xor          tp, t4, s5
                  sltu         a7, a1, a0
                  srl          gp, a7, s1
                  andi         zero, s4, 1732
                  xori         sp, ra, -1741
                  srl          s10, s4, s0
                  lui          s9, 6941
                  sra          a5, s1, a3
                  lui          gp, 447716
                  xor          s8, sp, s11
                  nop
                  srai         a5, s7, 1
                  slti         s9, s11, -489
                  auipc        a3, 542195
                  slti         s8, t5, -310
                  auipc        s11, 577428
                  slti         s2, t6, -1350
                  sub          a2, s8, s2
                  nop
                  slli         a4, t6, 11
                  nop
                  andi         a3, a7, 155
                  slli         t3, a3, 10
                  sltu         a4, t0, s10
                  auipc        s2, 1037294
                  addi         a6, s10, 249
                  ori          s8, gp, -1585
                  xori         a4, tp, -326
                  sll          a2, t3, s4
                  slli         t2, t3, 5
                  srl          s2, s0, t0
                  sub          s6, ra, a7
                  srli         s5, t4, 4
                  nop
                  sltu         ra, zero, gp
                  auipc        t6, 523852
                  sltiu        s1, s11, -1056
                  lui          t5, 317089
                  sra          t4, t1, gp
                  sub          gp, t5, s8
                  addi         sp, t5, -1827
                  srai         t4, a1, 26
                  or           ra, a7, gp
                  lui          a7, 409706
                  slli         a7, a6, 23
                  xori         a5, s7, 597
                  slt          s11, s7, t2
                  or           a6, a5, tp
                  addi         s6, s9, -1255
                  ori          t3, t0, 1485
                  sll          s4, a1, s10
                  or           a5, s8, sp
                  sra          t2, a5, t4
                  slti         t6, sp, 700
                  sra          t5, s11, a7
                  slti         s8, s0, -1648
                  sll          s0, zero, a7
                  srli         a2, a4, 1
                  sltiu        t5, t2, 1415
                  sltu         s11, s5, a0
                  lui          ra, 112749
                  nop
                  slli         s0, sp, 19
                  slt          s8, t0, s8
                  auipc        t3, 126032
                  sub          zero, t5, s9
                  auipc        s6, 140737
                  srl          s4, s0, s1
                  addi         a7, a0, -1185
                  slli         sp, a7, 23
                  sub          s0, t2, tp
                  ori          zero, s5, -821
                  srai         t2, a2, 4
                  srli         s0, s1, 31
                  nop
                  srai         ra, a3, 22
                  srli         tp, zero, 2
                  slli         zero, s11, 11
                  xor          s6, s0, t2
                  slli         sp, a1, 1
                  slli         a3, t2, 11
                  nop
                  srl          t1, s1, tp
                  nop
                  ori          a3, s1, 359
                  sra          t5, ra, tp
                  addi         ra, a3, -413
                  xor          t3, s10, a2
                  or           t6, s10, s6
                  and          sp, s1, s4
                  sub          s0, s10, a5
                  xor          s1, a6, s11
                  andi         s2, t1, -1360
                  slti         s10, a1, 1490
                  andi         a0, s0, 596
                  srl          tp, a0, gp
                  srl          s9, a1, t2
                  lui          tp, 20
                  or           gp, a6, a4
                  auipc        s2, 480974
                  sltu         zero, a5, s7
                  sltiu        t5, a3, -610
                  srl          s8, ra, s10
                  slt          ra, zero, s11
                  auipc        s10, 687904
                  or           t6, sp, zero
                  nop
                  slti         s9, tp, 1680
                  add          sp, t6, sp
                  srl          s4, a4, s3
                  and          s7, gp, a2
                  addi         s9, s1, -1630
                  xori         a6, s2, 151
                  sltu         s8, s2, t3
                  and          a7, t5, t0
                  srli         t4, t4, 28
                  srai         gp, sp, 0
                  slti         t2, a4, -520
                  sra          s8, t4, s0
                  srl          s7, t2, a2
                  or           s7, s11, sp
                  lui          gp, 208567
                  xor          s10, gp, ra
                  sltiu        t1, t0, -426
                  add          s2, t2, gp
                  slli         s0, zero, 0
                  auipc        gp, 484187
                  srai         t4, s6, 13
                  srai         a6, s4, 28
                  add          a2, zero, ra
                  ori          s10, s5, 392
                  xor          s2, s8, t2
                  sltiu        a7, s1, 389
                  andi         a4, a1, 35
                  or           s10, ra, t5
                  and          ra, s7, a2
                  nop
                  lui          t1, 688473
                  and          s7, a3, a4
                  sltu         t2, s5, a4
                  ori          s2, s11, 337
                  slt          s6, s4, a4
                  srai         s6, t1, 25
                  add          a6, s5, s8
                  srai         t5, t0, 9
                  auipc        tp, 105774
                  sub          t3, s6, s7
                  srli         s5, s5, 17
                  sltiu        s1, s2, -76
                  slt          tp, s8, t1
                  andi         zero, s8, 1714
                  srli         t6, a2, 11
                  andi         s4, s2, -656
                  sltu         s7, a0, a1
                  auipc        s9, 318854
                  srai         t3, s5, 21
                  ori          s6, a1, 824
                  add          ra, s6, t3
                  sltu         t5, t4, a7
                  auipc        s4, 319903
                  nop
                  sub          a4, s10, a6
                  srl          s5, a1, s2
                  lui          s11, 917062
                  addi         s7, sp, 1795
                  ori          s2, gp, 1372
                  addi         s10, s3, -790
                  andi         s2, a7, -2018
                  xor          a0, t5, sp
                  sltiu        s4, s7, 490
                  or           a6, s7, s8
                  slti         tp, s7, 937
                  sub          ra, sp, s6
                  sll          sp, s11, s11
                  srli         s4, s10, 7
                  lui          t1, 580639
                  add          a6, a0, t0
                  auipc        s5, 167915
                  slli         a2, s11, 14
                  ori          t5, zero, 1301
                  sltu         a2, a5, a2
                  sll          s1, s2, gp
                  or           s4, t5, s2
                  addi         s0, s7, 1302
                  srli         s5, s3, 15
                  xori         a2, a7, -1225
                  slt          s6, tp, a4
                  nop
                  slli         t5, ra, 20
                  and          s4, t1, s11
                  ori          s1, s1, 933
                  srl          s8, s3, a0
                  andi         t1, a5, 185
                  auipc        t2, 905710
                  nop
                  lui          t6, 574007
                  slti         a4, s1, -1354
                  addi         sp, s9, 1512
                  slti         s4, s2, 450
                  lui          a5, 553712
                  or           gp, tp, ra
                  lui          a2, 819606
                  srl          t4, s6, t2
                  srai         a6, t6, 12
                  slt          a3, t2, s6
                  and          tp, a6, s5
                  sltiu        s8, s11, -579
                  srl          a7, a0, a1
                  slli         t4, s7, 24
                  sltiu        a3, s1, 651
                  slt          t4, a3, t1
                  xor          s7, s1, s3
                  xori         s6, t2, 1814
                  srli         a4, gp, 23
                  and          sp, tp, s6
                  add          t1, s7, a7
                  addi         a7, tp, 826
                  srli         a0, s7, 30
                  andi         t2, s0, 166
                  sll          a5, s11, s3
                  slti         a4, t6, -1511
                  sub          s0, t3, tp
                  xori         a5, s1, -150
                  and          t5, s5, sp
                  and          a4, t1, t2
                  srl          s7, t1, gp
                  addi         s6, t3, 383
                  sll          zero, s1, a0
                  slti         tp, s1, -505
                  and          t1, s4, t3
                  auipc        s4, 872290
                  srai         t2, ra, 19
                  srai         a4, t5, 17
                  and          t2, a1, s1
                  xor          gp, s9, a2
                  slti         s8, s0, 116
                  or           s5, tp, t2
                  xor          a7, a4, t5
                  addi         a5, a6, -2005
                  add          gp, s7, s7
                  and          s7, t0, t1
                  sub          s6, a0, s1
                  nop
                  srli         t5, s10, 0
                  or           s2, t6, s4
                  lui          s7, 918866
                  nop
                  xor          a4, t2, s3
                  add          s7, t2, a2
                  srai         a2, s8, 14
                  sra          ra, sp, s1
                  srai         s1, s6, 23
                  slti         t2, a2, 880
                  andi         zero, s11, -1808
                  addi         s0, s11, 178
                  auipc        t5, 306454
                  xori         s11, s0, -1966
                  slli         t4, a2, 14
                  auipc        gp, 480034
                  nop
                  auipc        ra, 113189
                  sub          a5, a6, gp
                  sll          a2, a4, a3
                  slt          t6, a2, s6
                  sra          s9, s9, t2
                  ori          tp, t4, -861
                  lui          s4, 459374
                  andi         a6, s6, -857
                  addi         a3, s2, -833
                  sltu         a2, a5, s0
                  xori         a5, t2, -905
                  slti         a3, s7, -1723
                  and          s2, s11, s0
                  sra          t4, s5, a4
                  andi         s0, s7, 1320
                  srl          a4, s9, s7
                  auipc        a6, 890272
                  slti         a7, t6, -580
                  sltu         t2, t2, t4
                  sll          gp, s3, s0
                  xori         s6, gp, -344
                  sub          t1, s5, a7
                  addi         sp, a3, -604
                  slt          t2, a4, gp
                  sra          sp, s7, s7
                  auipc        s7, 85182
                  or           s5, t6, zero
                  sra          a0, a4, s10
                  lui          a2, 674754
                  srli         s2, a0, 16
                  add          t1, tp, a5
                  andi         s5, ra, -442
                  srl          a5, a7, a1
                  add          s8, s10, t4
                  slt          t6, zero, s7
                  sub          zero, zero, a4
                  srai         a2, a4, 25
                  sll          t6, s10, s11
                  or           t3, s3, a0
                  srai         s8, t6, 24
                  sra          s0, s5, s3
                  andi         s10, t1, 1048
                  sltiu        s0, t4, 1398
                  slt          s8, s9, t2
                  sltiu        a0, a6, -588
                  srli         s10, s6, 31
                  slli         a2, s2, 5
                  addi         a4, a0, 729
                  slli         a5, a4, 24
                  or           s1, ra, ra
                  sra          t2, a4, t2
                  slt          t4, a2, t6
                  auipc        s8, 633803
                  xori         a7, a4, 105
                  add          ra, t4, t0
                  slti         s6, t6, -482
                  sub          t5, s1, t0
                  ori          a2, a5, 108
                  slti         s5, ra, 1919
                  lui          a7, 176940
                  sra          s9, tp, s0
                  or           a6, s9, t6
                  addi         s7, a6, 774
                  sltiu        s7, t3, -1298
                  nop
                  auipc        a6, 960224
                  xor          t5, gp, a4
                  add          a3, s9, t6
                  srl          t2, t0, t2
                  xor          t3, ra, a6
                  srli         t5, s6, 24
                  srl          zero, t1, a4
                  srli         s0, t4, 24
                  andi         a3, s7, 1440
                  or           tp, a4, s9
                  xori         gp, a5, -1050
                  sltiu        t6, s5, -1026
                  srl          gp, t3, s6
                  auipc        a3, 270114
                  srl          s4, a1, a6
                  and          a5, gp, tp
                  sltiu        a2, t6, -1668
                  srl          t6, a1, s4
                  nop
                  srai         a5, s9, 7
                  slli         t6, t3, 21
                  sub          a5, s6, a3
                  and          s11, s5, s6
                  sub          gp, sp, tp
                  addi         a2, s8, -183
                  auipc        s7, 564610
                  andi         t1, t2, 1524
                  srai         t2, s1, 3
                  andi         s2, t0, -9
                  auipc        s1, 585456
                  sll          a5, s9, s4
                  auipc        t4, 238016
                  or           t4, t5, t0
                  and          a7, s1, s10
                  andi         s2, zero, -2013
                  lui          t2, 983766
                  sltiu        a6, s10, -83
                  slti         t3, a0, -855
                  auipc        a7, 453643
                  slt          t1, a1, s4
                  sub          s10, a7, a5
                  srli         s6, sp, 31
                  xor          a5, a2, s1
                  lui          s11, 772181
                  sll          s5, t1, t3
                  addi         a2, t0, 238
                  nop
                  ori          t4, s8, 804
                  sltiu        s10, s0, -882
                  sll          s10, a2, t4
                  or           zero, t6, s10
                  sltiu        s8, a6, -1543
                  sra          s2, s2, gp
                  slt          t3, t4, zero
                  add          t5, a3, t1
                  slt          gp, s11, t4
                  addi         a0, a7, -1005
                  sub          a2, a4, s7
                  srli         gp, gp, 8
                  auipc        s1, 456994
                  srai         ra, s8, 26
                  slt          s8, s8, s1
                  auipc        zero, 33295
                  nop
                  or           s11, sp, s5
                  sub          t1, s1, t1
                  lui          t4, 184173
                  sltiu        a2, a0, 888
                  andi         s1, t3, 1968
                  sll          s1, a2, s3
                  lui          a5, 905616
                  sra          s9, s6, t6
                  srli         t1, s7, 16
                  ori          t2, a0, -965
                  li           s0, 0x8df9fc07 #start riscv_int_numeric_corner_stream_0
                  li           a7, 0xffffffff
                  li           t3, 0xffffffff
                  li           ra, 0xc08b22f8
                  li           s10, 0x0
                  li           s6, 0x80000000
                  li           t2, 0x0
                  li           a5, 0xffffffff
                  li           a0, 0x80000000
                  li           gp, 0x80000000
                  sub          a0, t3, s6
                  nop
                  lui          gp, 1021922
                  lui          ra, 90999
                  nop
                  addi         s6, s0, -889
                  addi         a7, t3, -465
                  nop
                  add          s6, a5, t2
                  sub          t2, t2, ra
                  lui          t3, 48155
                  addi         a0, a0, 1660
                  sub          a0, s0, t3
                  lui          t2, 184837
                  sub          a0, s6, s10
                  addi         a5, s0, 706
                  auipc        a5, 1044965
                  add          s10, a0, s6
                  nop
                  add          gp, t3, s0
                  add          a5, ra, ra
                  sub          s10, a5, ra
                  auipc        ra, 730543
                  add          s6, t2, t2
                  nop #end riscv_int_numeric_corner_stream_0
                  xori         a6, sp, 2034
                  andi         s0, s11, -727
                  addi         sp, a1, 305
                  sltiu        a3, s5, -31
                  auipc        zero, 596417
                  slt          t2, sp, a4
                  auipc        s1, 892379
                  and          gp, a1, t2
                  sll          a5, s2, a4
                  sltu         gp, s6, ra
                  and          t4, s4, a4
                  auipc        s1, 633519
                  addi         sp, s4, 515
                  srl          a0, a7, a5
                  srl          s0, tp, s9
                  xor          s5, s11, s2
                  srl          a6, a1, tp
                  ori          a4, s10, -2022
                  sltiu        tp, s8, 309
                  sltu         t5, s2, s1
                  ori          t4, s9, -1361
                  auipc        t5, 891647
                  sub          t2, s0, s4
                  sltu         a6, gp, s5
                  lui          sp, 219922
                  slti         s1, s5, -1356
                  sub          s9, a5, gp
                  srl          a3, ra, s7
                  xori         tp, a2, -992
                  slt          gp, s2, s1
                  and          t4, s11, s1
                  nop
                  addi         s11, s5, 1836
                  srai         gp, t0, 15
                  sltu         a5, t2, s11
                  xori         s7, s1, -1264
                  xori         s7, s2, -268
                  andi         s0, sp, 1836
                  sltiu        s9, tp, 273
                  srl          s10, s3, zero
                  srli         tp, a4, 25
                  slli         s4, t0, 7
                  sub          s1, a4, s2
                  andi         t6, s1, 1265
                  sltiu        a3, a7, -1821
                  sra          a4, s6, s7
                  sra          s10, zero, s3
                  auipc        a4, 783671
                  slti         t4, gp, 1132
                  ori          s6, a3, -1995
                  auipc        zero, 434980
                  ori          s10, s5, -515
                  sltiu        s4, ra, -1411
                  sltiu        gp, s1, 1370
                  srai         ra, a6, 2
                  or           s1, a2, t2
                  xori         gp, t2, -1116
                  andi         s5, a2, -1812
                  addi         gp, a0, 1076
                  slli         s10, s0, 9
                  slt          gp, s11, a4
                  srai         t1, s5, 7
                  or           sp, s11, zero
                  sra          a6, a6, s10
                  sltu         a4, a3, s4
                  nop
                  xor          s10, a2, a1
                  srl          s5, s7, a2
                  xor          s0, s6, t3
                  xor          s9, a0, a6
                  srai         s6, zero, 4
                  sra          tp, gp, a2
                  xori         t5, sp, 323
                  xor          gp, s8, s7
                  auipc        s6, 335296
                  andi         sp, zero, 1438
                  srai         t1, s11, 11
                  lui          sp, 639440
                  slt          a5, t5, s11
                  and          s4, a4, t4
                  and          s9, t3, a7
                  srai         a3, a4, 2
                  add          t5, a4, sp
                  srli         a2, t1, 17
                  srl          s6, s8, zero
                  slli         t5, t2, 18
                  and          a0, s0, a3
                  sltu         a6, a6, a1
                  addi         s2, s3, -1673
                  slli         s10, s5, 19
                  srli         a0, a4, 4
                  nop
                  xor          a3, s3, a3
                  xori         tp, s0, 108
                  slti         a5, a5, 386
                  sra          s1, a2, s4
                  ori          a4, s8, 459
                  srli         t1, a0, 27
                  and          a5, s3, s8
                  xor          s8, a6, t3
                  slt          t3, a4, t6
                  srl          s2, t0, a0
                  auipc        s9, 561917
                  ori          a7, tp, 663
                  and          sp, t0, tp
                  add          a2, ra, zero
                  slti         a3, t4, 774
                  sra          s4, a3, s8
                  auipc        a4, 873074
                  add          s9, a6, t0
                  sra          a5, a3, s3
                  sll          a7, a1, a7
                  sltiu        s6, s6, -1115
                  addi         tp, a0, 1644
                  auipc        s8, 492588
                  srli         s4, a6, 14
                  xor          t1, t2, a5
                  srai         t2, a0, 22
                  nop
                  srai         t5, t6, 13
                  sltiu        t6, sp, 729
                  srl          a3, s4, a4
                  srai         s10, t2, 3
                  and          t4, s0, a6
                  add          s11, s3, t4
                  andi         s0, t6, 417
                  sra          s8, s1, a0
                  slt          a2, s2, a2
                  slt          s2, s0, t3
                  sll          a0, t0, tp
                  xori         a2, s8, -1448
                  ori          t6, sp, 913
                  slli         s1, t3, 14
                  lui          a2, 52115
                  auipc        t5, 338033
                  and          t6, t6, s1
                  sub          s7, t2, a5
                  lui          s5, 1028079
                  xori         a3, t4, 666
                  auipc        t3, 733967
                  sra          a7, s1, s10
                  andi         s0, a6, 575
                  ori          a0, gp, -463
                  lui          s8, 881426
                  lui          s4, 338730
                  xor          zero, s4, ra
                  sltu         s0, s3, sp
                  sltiu        a0, zero, -1808
                  sub          t5, t6, a4
                  addi         s4, s1, 671
                  srl          zero, tp, s2
                  auipc        s2, 82788
                  andi         a3, s11, 1975
                  srl          s7, s11, a1
                  xori         s2, t4, 1546
                  slti         t6, a7, 1583
                  slli         a5, s5, 23
                  ori          s1, s3, 730
                  add          a4, t3, a3
                  auipc        s11, 302465
                  sltu         s6, s9, s8
                  sll          t6, s8, s10
                  srli         zero, a6, 17
                  slti         tp, s0, 1642
                  addi         tp, s10, 1370
                  andi         s9, a6, 591
                  slli         t2, sp, 25
                  lui          t3, 758970
                  and          a6, t0, s11
                  sltiu        t5, s2, -93
                  srli         a3, s6, 24
                  andi         s1, a2, 278
                  xori         s0, a7, 1491
                  ori          a0, s2, -262
                  xori         a2, tp, -907
                  xori         a7, t0, -167
                  and          gp, s1, sp
                  sub          s7, s7, s4
                  slli         s4, t2, 6
                  sra          a6, t2, a6
                  sll          s10, s9, a3
                  ori          s2, zero, -68
                  nop
                  sra          s1, s2, ra
                  srai         a7, t4, 18
                  auipc        s10, 760156
                  xor          a6, s0, s0
                  sll          a3, ra, a0
                  or           s10, a1, t3
                  lui          zero, 543171
                  ori          s7, s1, 964
                  srai         s2, a0, 9
                  sub          s9, s8, s8
                  addi         s0, t6, 1031
                  addi         t5, s7, 703
                  srai         s2, s1, 6
                  sltu         s6, ra, a3
                  srl          t6, s1, a4
                  auipc        t1, 951201
                  sra          s8, s9, tp
                  lui          a2, 888330
                  nop
                  sub          s11, s2, t4
                  sltiu        tp, a6, 646
                  andi         t3, a7, -1941
                  sra          s0, t3, s6
                  sltu         a0, s8, t2
                  slti         t1, t6, -679
                  or           s11, s5, a5
                  addi         s0, s3, 858
                  sll          a3, tp, s11
                  srl          gp, s1, sp
                  sll          zero, t2, t6
                  ori          a3, t1, 256
                  lui          s7, 832232
                  slti         t4, t6, -1762
                  sltiu        a6, s1, -769
                  srai         a5, a1, 1
                  slt          s6, t3, t0
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           t3, 0x892b335a
                  li           s11, 0xffffffff
                  li           tp, 0x80000000
                  li           s4, 0xffffffff
                  li           a5, 0x80000000
                  li           a2, 0xffffffff
                  li           a6, 0xffffffff
                  li           s0, 0x80000000
                  li           a7, 0x0
                  sub          a6, tp, a2
                  sub          tp, s11, s4
                  auipc        s0, 933460
                  nop
                  auipc        a6, 440576
                  lui          a6, 523212
                  add          a2, t3, s11
                  auipc        a3, 426596
                  auipc        a7, 869998
                  nop
                  lui          a5, 683511
                  auipc        s11, 525215
                  lui          a3, 12670
                  addi         a6, a3, -576
                  nop
                  addi         s4, a6, -1408
                  sub          a7, a7, a2
                  sub          s0, tp, a5
                  nop
                  sub          s4, a5, a5
                  addi         tp, tp, 855
                  lui          a7, 145429
                  addi         a7, t3, -702
                  nop
                  auipc        a2, 716779 #end riscv_int_numeric_corner_stream_1
                  lui          s5, 834378
                  slti         s9, ra, -1794
                  ori          s1, tp, -303
                  or           t4, sp, t4
                  and          a2, s2, a4
                  auipc        s10, 657540
                  sra          a6, s2, s5
                  addi         t4, t3, -2040
                  and          a5, a2, s7
                  sltu         gp, a1, s11
                  xori         s8, s11, -467
                  sltiu        t3, t5, -1214
                  lui          t3, 368996
                  srli         s11, t3, 4
                  sra          s2, t2, sp
                  xori         a0, s8, -775
                  or           s6, a7, sp
                  slti         t6, a0, -640
                  andi         a6, a1, -979
                  nop
                  slti         tp, t0, 191
                  srl          zero, a3, t4
                  nop
                  srli         t1, t2, 6
                  sra          s2, t6, sp
                  slti         a3, t0, 1798
                  add          t6, t2, s5
                  sub          s0, a7, s6
                  nop
                  ori          s8, t2, -1087
                  sll          t6, s1, t2
                  nop
                  nop
                  slt          a5, s6, s5
                  slti         s10, s7, 1960
                  sub          ra, t1, s8
                  ori          s9, t1, 477
                  xor          s8, s11, s2
                  xor          t3, a5, s0
                  and          t1, t3, a7
                  slli         t3, t1, 26
                  ori          t1, s6, 263
                  xor          a0, ra, s6
                  slti         s5, zero, -1769
                  lui          s5, 505307
                  ori          s7, t0, 458
                  slli         a0, a2, 17
                  and          t3, s1, t4
                  sll          s10, t6, t6
                  sra          s10, a0, s10
                  srai         s6, s5, 15
                  slt          s7, a4, s9
                  srl          t2, t2, a3
                  sltiu        s1, ra, -101
                  srli         a6, s1, 8
                  srli         s10, s6, 17
                  slt          s2, a3, s1
                  xor          sp, a5, sp
                  slli         s5, t6, 12
                  lui          s8, 113139
                  slli         a6, s7, 22
                  addi         s1, a6, 733
                  lui          zero, 674655
                  slli         ra, s3, 1
                  slti         ra, a3, 1010
                  sll          s6, a5, a0
                  add          t2, tp, a3
                  lui          gp, 65029
                  slti         t6, ra, -312
                  srli         t2, s3, 2
                  nop
                  add          s6, a7, s6
                  srl          a5, s5, s1
                  srl          s1, tp, s6
                  xori         a0, a7, 1397
                  sltu         t6, a5, t0
                  ori          a3, s9, 1214
                  sltu         s11, s0, t0
                  srli         tp, gp, 20
                  srl          t6, t3, s11
                  and          gp, t3, s9
                  sltiu        zero, a6, 323
                  slti         s10, s4, -1968
                  sltiu        s6, s2, 1893
                  xori         s10, t0, -1551
                  srli         a2, t5, 28
                  andi         s1, t2, -1758
                  and          a5, sp, a5
                  andi         s7, s1, -1968
                  or           s6, gp, t1
                  srli         sp, t3, 8
                  lui          s9, 795042
                  and          a3, s4, t3
                  srai         a5, s2, 21
                  sltiu        t6, ra, 1597
                  sra          s9, a7, s5
                  sra          s5, sp, s4
                  nop
                  slt          t6, s10, sp
                  lui          a0, 119957
                  auipc        ra, 163988
                  slli         s6, t3, 9
                  lui          s7, 178568
                  or           ra, s7, t1
                  sll          zero, a3, t5
                  add          s8, t2, s10
                  and          a6, sp, t2
                  slti         a6, s4, -170
                  and          t5, gp, a4
                  srli         a6, a6, 18
                  xori         s5, gp, 1993
                  slli         sp, s11, 15
                  srli         s7, s6, 1
                  lui          gp, 166299
                  sub          s1, s3, s1
                  auipc        s2, 500301
                  sra          s6, s9, a5
                  srl          a7, t3, a6
                  addi         s1, s2, 1548
                  add          tp, t2, s3
                  and          gp, t5, t0
                  srl          s10, s1, s5
                  andi         s8, zero, -1783
                  slli         t2, t2, 12
                  addi         tp, a6, 1628
                  sltiu        a5, a0, -281
                  slli         s9, s1, 16
                  ori          gp, a1, -238
                  andi         gp, s0, -1276
                  sltu         s1, tp, zero
                  sltiu        s6, ra, 1556
                  lui          s5, 286840
                  srl          s5, a2, t0
                  addi         s1, s4, -1198
                  auipc        a2, 822016
                  ori          a5, t3, -1638
                  slti         s10, s7, 850
                  lui          zero, 101178
                  add          a4, a5, zero
                  slli         t3, t5, 15
                  sra          t2, s7, t0
                  slt          s10, t6, sp
                  and          a5, zero, tp
                  xori         a4, a0, 132
                  auipc        sp, 534628
                  lui          t5, 690769
                  auipc        a4, 662023
                  srli         a2, s4, 23
                  or           s5, s5, t1
                  srai         a3, t1, 7
                  sltu         zero, t2, a3
                  slti         t5, zero, -377
                  xor          tp, t3, a6
                  sra          a6, s8, s7
                  or           a4, a7, s10
                  sltu         t6, t1, s9
                  slti         a4, s0, -1115
                  lui          t6, 814677
                  auipc        s9, 584079
                  sra          t3, a4, gp
                  nop
                  sub          sp, s5, a6
                  srl          ra, a5, zero
                  sltu         t5, s5, t0
                  xor          s11, s2, s1
                  srai         s10, s2, 17
                  andi         s2, s6, 1242
                  auipc        a3, 156202
                  slli         a4, t5, 5
                  or           tp, s0, t6
                  sltiu        t3, a5, 856
                  xor          s8, t6, ra
                  sll          zero, ra, s5
                  sra          t6, s4, a6
                  and          a0, s11, t5
                  sltiu        t6, t3, 336
                  xori         t5, a7, 1271
                  sll          t1, s11, sp
                  sll          a0, s9, t3
                  or           s11, s7, s7
                  slli         gp, t6, 6
                  andi         a6, a1, -914
                  sub          zero, t5, s1
                  srli         s7, t0, 4
                  sltiu        a5, s1, 778
                  ori          ra, s9, 142
                  sltiu        s2, a5, -1275
                  slli         t3, a3, 15
                  sub          a3, s9, t2
                  and          t1, s6, t2
                  sub          tp, a3, s7
                  sub          a7, s10, s8
                  slt          t2, s2, a6
                  srl          s7, a1, t5
                  add          zero, tp, t5
                  slli         a3, a6, 15
                  addi         s6, s8, -1196
                  slt          t5, a0, s10
                  slt          a7, s6, s3
                  nop
                  sub          s4, s5, t3
                  auipc        sp, 1022149
                  sub          s6, t1, a2
                  sub          a5, a0, s7
                  slt          s6, t1, t3
                  add          a0, t0, a2
                  nop
                  auipc        a5, 841973
                  nop
                  sltiu        a2, s1, -225
                  nop
                  xori         a5, a6, -333
                  sub          t5, a3, s6
                  srli         s6, a3, 7
                  slt          s7, t5, a2
                  or           a5, s5, t2
                  srai         s0, a2, 23
                  sltiu        a7, t5, 120
                  addi         s0, t5, 387
                  sub          t6, t3, sp
                  andi         t5, t3, -1629
                  srai         a2, a0, 2
                  and          s7, s2, s8
                  nop
                  sltu         s1, s2, s6
                  slt          s5, a3, a7
                  lui          t3, 933713
                  sltiu        sp, sp, 1645
                  sub          s4, ra, s0
                  andi         a2, a2, 228
                  and          gp, t6, s1
                  srli         s8, s1, 1
                  ori          s11, a1, 1462
                  srli         gp, s2, 2
                  sub          a4, tp, a4
                  srl          a4, a4, s2
                  nop
                  add          a0, gp, ra
                  or           tp, s10, a1
                  sltiu        a0, t6, 321
                  slti         s8, s5, 296
                  srli         a2, t2, 30
                  lui          a0, 626059
                  sltiu        t3, a6, 959
                  lui          a2, 65977
                  and          t3, s0, s11
                  add          sp, s5, s1
                  srli         a0, s6, 16
                  sll          t3, s10, s0
                  sra          tp, a4, t5
                  slt          s10, t5, a2
                  sra          s4, a2, s7
                  sltu         t2, s6, s4
                  auipc        tp, 248043
                  slti         zero, zero, 1860
                  sltu         s1, a2, s11
                  sub          t6, a1, a5
                  addi         a0, s8, 1704
                  slti         t5, s4, 260
                  srl          a0, a4, t2
                  nop
                  sll          s4, s0, a6
                  add          s1, a1, s9
                  xori         s2, s8, 1251
                  nop
                  srai         gp, tp, 13
                  or           tp, s6, a3
                  slli         a3, zero, 14
                  slt          s4, gp, a5
                  lui          a7, 351439
                  srai         a4, s2, 31
                  lui          s2, 42215
                  and          tp, s1, t6
                  slti         t2, t4, 1904
                  srl          t5, a7, zero
                  sub          ra, t1, a5
                  or           s0, a5, a0
                  sll          s5, t5, s11
                  nop
                  and          a6, zero, s0
                  add          s4, a5, zero
                  slt          s6, s10, a3
                  xor          t6, s3, s6
                  nop
                  sll          tp, a4, s8
                  slti         t4, s9, 1137
                  xori         s7, t6, -1488
                  sll          a2, s3, s3
                  sll          s9, ra, a6
                  addi         t6, s4, -1445
                  sltu         t1, t0, t2
                  add          s6, t1, ra
                  sltiu        s11, a3, -92
                  sltiu        t6, t0, -788
                  sra          a4, sp, a3
                  addi         t5, a0, -1201
                  srai         a4, a0, 13
                  slti         s4, a3, 693
                  and          a6, t4, tp
                  and          t6, a7, a2
                  srai         sp, s6, 8
                  slli         s1, zero, 19
                  lui          s1, 15113
                  andi         s1, tp, -1389
                  sltu         t2, a6, s9
                  or           s0, s11, ra
                  slt          t2, s0, s2
                  srai         s8, sp, 24
                  nop
                  srli         t5, s2, 31
                  nop
                  sub          t5, s3, a0
                  sll          s6, a2, tp
                  andi         t3, t0, -246
                  sll          t4, s3, t1
                  srai         s4, a6, 12
                  xor          tp, s8, s2
                  srai         s8, t4, 26
                  xor          a0, sp, t6
                  sltu         t5, a5, a2
                  sltu         t4, a7, a6
                  sltu         a6, s7, t2
                  add          tp, sp, a0
                  andi         t3, s11, -759
                  andi         s5, a5, -1796
                  add          s8, s7, s0
                  xori         t2, zero, 142
                  sltiu        sp, a5, -1850
                  slti         a6, a0, -610
                  slt          a2, t0, s4
                  nop
                  sltu         t5, a1, t0
                  lui          s10, 134891
                  srli         a4, sp, 8
                  sltu         a2, s3, t2
                  srli         t1, gp, 0
                  nop
                  slti         ra, s7, 1121
                  slt          s10, s4, s3
                  add          s0, s8, t3
                  xori         t4, a3, 117
                  or           t2, t5, ra
                  sll          gp, zero, s0
                  ori          t5, zero, 560
                  and          t5, t4, zero
                  xor          s2, tp, sp
                  and          s4, t3, tp
                  ori          gp, a0, 287
                  xori         t3, s3, 145
                  addi         s9, zero, 1587
                  lui          a5, 694018
                  andi         s10, t2, -1545
                  xor          t5, s9, s6
                  srl          s6, s7, a7
                  slli         t6, s2, 27
                  sltu         t6, t0, s9
                  srli         t6, a5, 26
                  or           s11, gp, a7
                  xori         tp, gp, 624
                  lui          a7, 126312
                  slt          a0, a3, s0
                  addi         s10, s9, -1397
                  lui          s2, 258756
                  srli         s11, sp, 20
                  and          s10, s0, t1
                  ori          t6, tp, -1477
                  slt          a6, a0, t2
                  or           a6, gp, s6
                  sra          t5, a5, s4
                  sra          sp, ra, a1
                  sltu         s1, s8, s8
                  sltu         s8, t4, s3
                  lui          s10, 386314
                  slt          s2, ra, a6
                  sltu         t4, s5, a0
                  xori         tp, t4, -747
                  auipc        s11, 179431
                  sll          t6, s1, a1
                  xori         s8, a4, -1214
                  slli         a7, s4, 31
                  sub          a5, t3, t0
                  sltiu        s11, s0, 1853
                  add          s5, a6, s4
                  sll          tp, s10, s11
                  sll          t6, t2, t3
                  slti         s8, a4, 1350
                  or           s7, t5, s7
                  sltu         t6, a1, s10
                  lui          a5, 23296
                  nop
                  slti         t6, s9, -373
                  srai         s5, a2, 20
                  and          s0, s3, s6
                  srl          tp, s5, t3
                  srai         gp, s0, 5
                  auipc        a7, 282295
                  xor          t6, t0, a5
                  sltiu        s1, t3, -184
                  slt          s2, s6, s9
                  sra          a7, a0, gp
                  nop
                  sra          a7, s6, s6
                  xor          a2, a2, t0
                  addi         s9, s11, 412
                  nop
                  slt          s1, t3, a3
                  ori          sp, s3, -1403
                  auipc        t3, 872845
                  add          s7, a6, a2
                  sll          s1, t5, s2
                  srl          a2, a4, a5
                  slti         tp, sp, 734
                  add          t2, a2, t0
                  nop
                  and          t4, s5, t4
                  sll          t4, a6, ra
                  sltu         a0, s10, a0
                  and          s6, a6, a5
                  addi         sp, t4, 845
                  add          t6, s0, s7
                  sra          t3, t2, a3
                  slti         a2, s10, 260
                  or           s1, s0, s7
                  sll          t6, t3, t4
                  slli         sp, s4, 23
                  andi         t6, ra, -391
                  srli         a2, a2, 1
                  srl          s6, s11, s7
                  srli         a5, a3, 7
                  auipc        s0, 921880
                  xori         ra, s9, 618
                  xor          a3, s2, s5
                  sltiu        a5, t3, 88
                  add          a5, a7, a4
                  sll          t5, t0, a6
                  lui          s1, 374697
                  lui          s11, 227426
                  auipc        s7, 220727
                  or           a0, t4, a1
                  nop
                  and          sp, a4, a3
                  sra          sp, s0, a3
                  srl          ra, s8, t6
                  andi         a7, t4, -1957
                  xori         t4, s1, 206
                  srl          s0, s4, s7
                  add          s7, a5, s3
                  auipc        s6, 450681
                  sll          s4, t3, s2
                  sub          t5, s1, s5
                  sltiu        s0, s9, -1085
                  srai         t2, a7, 19
                  srl          s8, s5, t0
                  auipc        a4, 261935
                  ori          t3, tp, 66
                  srl          a5, s7, t1
                  xor          s0, t0, a4
                  add          a6, a5, a4
                  srli         s8, a2, 30
                  andi         s4, s5, -1194
                  and          s1, t2, s6
                  or           gp, s1, a4
                  sltu         t5, s2, a7
                  auipc        s5, 830979
                  slli         s4, s7, 2
                  add          a4, s2, zero
                  sltiu        s0, a3, -667
                  sra          s9, s7, s7
                  slti         s10, a0, -180
                  xori         a3, t4, -1862
                  and          gp, s0, a0
                  nop
                  sltiu        t1, s7, -789
                  addi         a4, sp, 199
                  or           tp, s7, s0
                  addi         t5, a2, -703
                  sll          t5, s0, t3
                  sltu         t1, s6, s10
                  xori         a3, s3, -1675
                  xori         ra, s4, -1271
                  sll          a7, s8, s7
                  xori         s5, s1, 284
                  ori          s2, t4, -131
                  addi         ra, t0, -1037
                  auipc        a7, 831172
                  sltu         ra, s9, a6
                  xor          t5, zero, s9
                  xor          a6, s9, t2
                  slti         s6, s9, 503
                  xori         s2, a7, -341
                  sra          tp, a5, a2
                  and          t2, a0, t2
                  srai         t3, sp, 5
                  srli         a5, a0, 1
                  sra          t1, a6, a3
                  ori          s9, t2, -159
                  auipc        s8, 516023
                  xori         s1, s7, -163
                  sltiu        gp, gp, 1536
                  sll          t6, t0, gp
                  srai         t5, a3, 4
                  and          a0, s4, s11
                  and          a7, s3, s3
                  sltu         s6, a6, a0
                  slli         s6, s11, 15
                  auipc        ra, 711744
                  srl          s2, s11, s3
                  sltu         gp, s1, s1
                  nop
                  srl          a5, s2, s11
                  xor          a4, a2, s11
                  srai         t4, s7, 13
                  lui          s5, 952532
                  srai         a6, a6, 30
                  srl          t4, zero, ra
                  sra          t2, s9, s0
                  xor          t5, sp, s9
                  ori          s10, s5, 1670
                  sub          a7, t2, tp
                  ori          a4, a0, -194
                  sub          t3, s7, s8
                  nop
                  srli         zero, s3, 1
                  sll          tp, a2, s7
                  auipc        sp, 560668
                  slti         s6, s7, 2046
                  xori         t6, s10, 1939
                  slti         s9, s8, -203
                  sll          t3, t1, t2
                  slt          a6, s0, a2
                  ori          s10, s3, 1833
                  sub          s7, t2, a4
                  lui          a0, 394971
                  sub          t5, s9, a0
                  sltu         a2, a7, s8
                  xor          t6, t4, t6
                  sub          a6, t2, zero
                  sltu         t2, s0, a4
                  xori         a6, s5, 883
                  auipc        s10, 345354
                  xori         t1, t4, 173
                  nop
                  srai         s11, t3, 16
                  slli         gp, s11, 23
                  add          a7, t5, a2
                  andi         sp, t3, 2038
                  slli         sp, ra, 19
                  sltu         t5, s3, t4
                  add          t1, s8, s6
                  add          t2, s11, s11
                  slt          t4, s10, s10
                  srl          t3, sp, a1
                  sll          ra, t6, ra
                  sltu         a0, t3, a3
                  slli         t6, tp, 8
                  lui          a4, 1029612
                  slli         t1, t6, 28
                  slli         a3, a0, 17
                  nop
                  auipc        ra, 729652
                  slti         zero, s10, 254
                  slli         t4, a2, 26
                  sltu         t3, s5, a4
                  srli         t3, t1, 24
                  auipc        a3, 748386
                  auipc        zero, 753643
                  srli         zero, s4, 14
                  and          t3, a4, a0
                  andi         a6, zero, -1163
                  sub          s1, a7, t6
                  xori         s4, a5, -225
                  sub          s7, s10, s4
                  addi         a7, s11, -653
                  srli         tp, t5, 10
                  slti         t2, a5, -259
                  ori          s0, a0, -1044
                  addi         t5, s5, -1405
                  slli         zero, s4, 12
                  sra          s9, s3, a4
                  srl          s10, t4, t4
                  xori         a4, s0, 303
                  xori         s2, s0, -840
                  sltiu        a5, s1, 885
                  srl          zero, t1, s0
                  slt          s5, t6, s2
                  addi         s5, s5, -40
                  srai         a0, s8, 16
                  lui          a0, 104632
                  srli         s1, t5, 11
                  sltu         t1, a4, s9
                  sltiu        tp, s0, -1122
                  srai         a5, s3, 14
                  sltu         s0, a0, t3
                  slli         zero, s9, 19
                  slt          sp, s5, s7
                  andi         t6, sp, -1463
                  lui          s0, 355410
                  xori         s8, a5, 1792
                  nop
                  and          zero, s7, a2
                  auipc        a4, 452691
                  addi         s10, a4, -102
                  srli         t4, t0, 11
                  srai         zero, s7, 24
                  sltu         a7, t5, a5
                  and          a7, s0, ra
                  sll          a0, tp, a3
                  xori         s5, a7, -1334
                  add          s4, t1, s6
                  sll          s7, a1, sp
                  xor          s2, t1, s11
                  slt          s7, sp, a0
                  ori          s6, t3, 1642
                  sra          s11, tp, sp
                  slt          a0, s5, t0
                  slt          tp, sp, ra
                  lui          a7, 560393
                  sltu         t6, a5, s5
                  or           s11, t4, zero
                  or           s1, t6, s5
                  sll          t4, a6, s10
                  slti         zero, ra, -79
                  andi         zero, t6, -1408
                  sra          s8, a1, s10
                  slli         a7, s9, 0
                  srai         s2, tp, 23
                  srai         gp, t2, 4
                  sra          s5, a6, zero
                  srli         t6, a4, 27
                  srl          zero, a3, s8
                  srli         a4, a2, 25
                  sltiu        sp, a3, 1397
                  slt          s2, a4, t6
                  auipc        s8, 732756
                  add          t4, a5, a4
                  lui          a7, 584592
                  sub          t5, t1, a6
                  sra          s1, s11, s10
                  auipc        a4, 264753
                  sltu         ra, ra, a1
                  srli         s6, a2, 28
                  slti         s6, a1, -303
                  ori          s11, s10, 85
                  slli         s0, a5, 12
                  addi         s7, s7, -1504
                  add          s0, t6, s9
                  srli         s9, s9, 2
                  slt          a3, s1, zero
                  ori          a4, s2, 2039
                  auipc        s4, 1022845
                  addi         a2, a5, -1792
                  nop
                  sub          a4, s4, s10
                  sltiu        tp, t1, -936
                  ori          sp, t6, -1718
                  sltiu        a7, t6, 779
                  srli         s6, a3, 27
                  slli         a2, t5, 19
                  srai         t2, a1, 29
                  andi         a4, s10, -336
                  xor          s7, s2, s1
                  sub          t2, s11, s3
                  add          a3, sp, a6
                  add          s11, a5, a4
                  add          a4, s3, t6
                  addi         zero, s1, 561
                  auipc        s9, 459283
                  xor          a5, s1, s7
                  and          t1, a1, a7
                  sub          zero, t3, a4
                  addi         s0, s7, 1806
                  sll          s11, s0, a6
                  nop
                  sub          s4, a4, s10
                  xor          s9, a3, t4
                  slt          s0, gp, ra
                  sltu         a3, t4, s0
                  andi         s7, t1, 576
                  lui          s9, 202617
                  xor          a0, s11, a1
                  and          sp, t1, s6
                  or           a5, zero, t1
                  sltu         a2, a4, s9
                  nop
                  slli         gp, s8, 26
                  xor          s4, s2, s9
                  srai         s8, s2, 4
                  srli         s0, a1, 31
                  andi         t5, a1, -642
                  sltiu        t3, t2, -1468
                  andi         a7, s2, 1280
                  srli         s10, t2, 17
                  slti         s1, s1, -1458
                  slli         a0, s10, 9
                  srl          t4, t2, s5
                  or           s6, t2, gp
                  ori          a7, ra, -676
                  slt          tp, a2, t2
                  srai         sp, gp, 26
                  slt          t6, s9, a3
                  auipc        a6, 414751
                  lui          a2, 286525
                  or           s4, t2, t3
                  slli         s2, s6, 23
                  slti         ra, a6, 1115
                  andi         t6, a5, 1311
                  slli         t3, t6, 0
                  sltiu        s8, s8, -44
                  srli         ra, a4, 22
                  and          a5, ra, s11
                  sub          t2, a0, a0
                  sll          s10, ra, s2
                  sra          t4, s6, t1
                  slti         s7, a7, -1962
                  srli         t2, a7, 28
                  auipc        s2, 324200
                  sltu         tp, a5, a6
                  and          s8, t5, t2
                  lui          zero, 9696
                  sra          t4, s1, t4
                  lui          tp, 96558
                  xori         tp, t2, -1722
                  slli         t3, s4, 19
                  la x5, test_done
                  jalr x0, x5, 0
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
                  add x11, x19, zero
                  csrr x7, 0x300 # MSTATUS
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 31
                  bne x7, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x7, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x7, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x7, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x7, x17, ecall_handler
                  li x17, 0x1
                  beq x7, x17, instr_fault_handler
                  li x17, 0x5
                  beq x7, x17, load_fault_handler
                  li x17, 0x7
                  beq x7, x17, store_fault_handler
                  li x17, 0xc
                  beq x7, x17, pt_fault_handler
                  li x17, 0xd
                  beq x7, x17, pt_fault_handler
                  li x17, 0xf
                  beq x7, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x19, x11, zero
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
                  add x19, x11, zero
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
                  add x19, x11, zero
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
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x19, x11, zero
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
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x19, x11, zero
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
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x19, x11, zero
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
