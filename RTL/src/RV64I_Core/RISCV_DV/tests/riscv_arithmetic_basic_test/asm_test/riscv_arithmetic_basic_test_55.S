.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x8, h0_start
jalr x0, x8, 0
h0_start:
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x30, kernel_stack_end

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
                  li x0, 0x834f5727
                  li x1, 0xfbe5cb1c
                  li x2, 0x80000000
                  li x3, 0x67782b1
                  li x4, 0x80000000
                  li x5, 0x1
                  li x6, 0xf3f563de
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x80000000
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0xc
                  li x14, 0xa
                  li x15, 0xfc51bb33
                  li x16, 0x9
                  li x17, 0xfeba6eac
                  li x18, 0xe
                  li x19, 0xe
                  li x20, 0x46390445
                  li x21, 0xfa81fe33
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x9
                  li x25, 0xf6586e90
                  li x26, 0x9
                  li x27, 0x0
                  li x28, 0x2
                  li x29, 0x7
                  li x31, 0xb87b7ebb
                  la x10, user_stack_end
main:             li           s4, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           ra, 0x17c116f6
                  li           sp, 0xffffffff
                  li           s9, 0x80000000
                  li           a2, 0xffffffff
                  li           t6, 0xffffffff
                  li           t4, 0x80000000
                  li           s5, 0x0
                  li           a7, 0xffffffff
                  li           a1, 0xcff1a988
                  nop
                  lui          s5, 1005680
                  lui          t6, 120852
                  sub          t4, ra, ra
                  nop
                  nop
                  sub          ra, a1, s4
                  add          ra, s4, t6
                  lui          s5, 800831
                  auipc        a1, 304387
                  add          ra, a7, s5
                  lui          a7, 391205
                  auipc        a2, 215913
                  nop
                  add          s5, sp, ra
                  sub          ra, s9, a7
                  nop
                  add          t6, sp, ra
                  addi         sp, a1, -1858
                  addi         a7, sp, -741
                  sub          s9, a1, s5
                  addi         sp, sp, 515
                  auipc        sp, 402134
                  lui          a2, 807855
                  add          a1, sp, s4
                  addi         t4, s5, 1414 #end riscv_int_numeric_corner_stream_1
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           s4, 0xb817a329
                  li           s1, 0xffffffff
                  li           s8, 0x0
                  li           t6, 0x93b47e7c
                  li           sp, 0x67a1a9f9
                  li           a1, 0xbccfe74a
                  li           gp, 0xffffffff
                  li           a5, 0xffffffff
                  li           a7, 0xc85b4f4b
                  add          gp, a5, sp
                  addi         a5, s4, -1926
                  addi         s8, gp, 50
                  sub          s1, t0, s1
                  nop
                  nop
                  add          a7, s8, s8
                  add          gp, s1, s1
                  lui          gp, 269022
                  auipc        t6, 419323
                  auipc        a7, 369760
                  addi         s1, s8, 1820
                  add          s8, s1, a7
                  nop
                  nop
                  sub          t6, a1, a7
                  auipc        a7, 196542
                  nop
                  nop
                  lui          s1, 907296
                  sub          t0, s8, s8
                  sub          gp, s8, a5
                  lui          sp, 669724
                  addi         sp, s4, -1523
                  sub          a7, sp, gp
                  lui          a7, 110920
                  auipc        sp, 984431 #end riscv_int_numeric_corner_stream_12
                  li           a4, 0xd2155d7a #start riscv_int_numeric_corner_stream_19
                  li           a1, 0x80000000
                  li           a5, 0xffffffff
                  li           t6, 0x80000000
                  li           a2, 0xd416c129
                  li           t3, 0x0
                  li           tp, 0x0
                  li           a3, 0xffffffff
                  li           ra, 0x80000000
                  li           s8, 0xffffffff
                  sub          a1, t3, a5
                  add          tp, a1, tp
                  sub          t6, tp, a2
                  nop
                  auipc        a2, 372853
                  lui          ra, 379865
                  sub          tp, t3, a2
                  add          t3, t6, a4
                  add          ra, s8, a3
                  add          a3, a1, a4
                  lui          ra, 539271
                  sub          a4, s8, a3
                  addi         t6, t3, 903
                  addi         t3, a3, 241
                  sub          tp, a1, a1
                  nop
                  add          a1, a3, a1
                  sub          tp, s8, a1 #end riscv_int_numeric_corner_stream_19
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           sp, 0x0
                  li           s1, 0xb0ee05e
                  li           t1, 0xffffffff
                  li           t0, 0x0
                  li           s2, 0x0
                  li           a4, 0x0
                  li           a2, 0x0
                  li           s7, 0x80000000
                  li           a3, 0x80000000
                  add          sp, t1, a4
                  add          a3, s7, t0
                  add          a2, a4, s1
                  auipc        t0, 700479
                  lui          s7, 11154
                  add          a2, s2, t1
                  nop
                  sub          t0, t1, s2
                  nop
                  nop
                  lui          a2, 767546
                  lui          a7, 302117
                  auipc        a4, 894916
                  auipc        a2, 738046
                  add          a3, t1, s2
                  auipc        s1, 1015629
                  addi         a3, a4, -1040
                  addi         s1, a3, -1589
                  lui          s1, 347813
                  auipc        a7, 751124
                  auipc        s1, 830254
                  add          a3, s2, s2
                  sub          s1, t1, a4
                  lui          sp, 691528
                  nop
                  add          s1, t1, s7
                  nop
                  addi         sp, s1, 363
                  addi         sp, a4, 1920 #end riscv_int_numeric_corner_stream_2
                  li           s11, 0xf9c5b66b #start riscv_int_numeric_corner_stream_16
                  li           s7, 0x0
                  li           s6, 0x18f06ff
                  li           t0, 0x2b938968
                  li           a5, 0x953bedf0
                  li           s9, 0x80000000
                  li           t1, 0x72b1534e
                  li           s3, 0x530be427
                  li           ra, 0x80000000
                  li           t4, 0xffffffff
                  addi         ra, s9, 1604
                  lui          a5, 355927
                  sub          a5, s7, ra
                  add          t4, s9, a5
                  sub          t0, s7, s11
                  auipc        t0, 819778
                  lui          s6, 918264
                  add          t4, s3, s9
                  add          s9, s7, t0
                  auipc        s3, 834907
                  auipc        t1, 563305
                  nop
                  nop
                  add          ra, s9, ra
                  nop
                  add          s6, s7, s6
                  nop
                  addi         s7, t1, 360
                  addi         s6, s9, 720
                  add          a5, s11, s3 #end riscv_int_numeric_corner_stream_16
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           a7, 0x4dec14f5
                  li           a4, 0x80000000
                  li           t1, 0x0
                  li           s7, 0x0
                  li           s9, 0x80000000
                  li           t0, 0x80a47696
                  li           s10, 0xffffffff
                  li           s2, 0x68e330e0
                  li           s11, 0x0
                  addi         s11, s7, 709
                  nop
                  addi         t0, s11, -577
                  auipc        s7, 694632
                  add          s2, t1, s9
                  add          a4, s11, s2
                  addi         s7, s11, 743
                  add          s10, t0, s9
                  add          s9, t0, t0
                  nop
                  nop
                  auipc        s2, 938154
                  addi         a4, s10, 1859
                  addi         t1, s3, 429
                  nop
                  sub          s11, s7, s9
                  auipc        a4, 252003
                  auipc        s11, 467187
                  sub          t0, s11, s3
                  sub          s10, a7, s3
                  lui          s2, 294230
                  lui          s10, 1048033
                  sub          t0, s9, a4
                  sub          t1, s11, t0
                  addi         a7, s10, -346
                  addi         a7, a4, 1341
                  lui          a4, 349186
                  nop
                  auipc        t1, 1027118
                  add          t0, t0, s3 #end riscv_int_numeric_corner_stream_10
                  li           a1, 0x8a135c7b #start riscv_int_numeric_corner_stream_15
                  li           s9, 0xfe8488b6
                  li           t1, 0xffffffff
                  li           s1, 0xffffffff
                  li           a6, 0xfeed85a4
                  li           s8, 0x3d945150
                  li           s5, 0xffffffff
                  li           s10, 0xffffffff
                  li           gp, 0xed6b247
                  li           t6, 0x0
                  add          t1, s10, gp
                  lui          t6, 282667
                  lui          a6, 597860
                  addi         s5, s1, -447
                  add          gp, gp, s1
                  lui          a6, 723396
                  sub          a1, s8, s8
                  addi         s8, a1, 1650
                  addi         t1, s1, 398
                  addi         s9, gp, 350
                  add          s10, s10, t6
                  addi         t6, s9, 1859
                  add          s8, s8, s1
                  add          a6, s5, t1
                  add          s10, t1, s8
                  lui          s10, 198038
                  sub          s8, s8, s8
                  nop #end riscv_int_numeric_corner_stream_15
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           a1, 0xc0a6dccd
                  li           s3, 0x80000000
                  li           gp, 0x5f245be1
                  li           s5, 0x80000000
                  li           t2, 0x0
                  li           s7, 0x80000000
                  li           a6, 0x80000000
                  li           a4, 0x86cd828c
                  li           t3, 0xab30d6f9
                  sub          s8, t3, s8
                  lui          a1, 446289
                  nop
                  sub          s3, a6, a4
                  lui          a6, 95519
                  addi         a4, s3, -178
                  sub          gp, a6, s3
                  sub          t2, s5, t3
                  auipc        s7, 683846
                  addi         a6, s7, -1051
                  auipc        a6, 750730
                  add          s5, t2, a1
                  addi         s5, a6, -1533
                  add          t3, a1, s3
                  addi         t3, t3, 1895
                  auipc        t2, 890074
                  nop
                  lui          s7, 358781
                  nop
                  auipc        gp, 247404
                  add          t2, a6, s3
                  nop #end riscv_int_numeric_corner_stream_6
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           a6, 0x0
                  li           a2, 0x4031abe3
                  li           ra, 0x80000000
                  li           a7, 0x0
                  li           t0, 0x80000000
                  li           a4, 0x80000000
                  li           a5, 0xffffffff
                  li           t3, 0x0
                  li           s11, 0x734f0a4
                  auipc        a2, 241784
                  nop
                  addi         a7, a2, -1113
                  nop
                  auipc        a7, 472065
                  sub          a2, a2, ra
                  auipc        ra, 748082
                  auipc        a5, 589746
                  add          a5, t3, t3
                  lui          s11, 778045
                  sub          ra, a2, s11
                  add          a2, a7, s11
                  add          a2, t0, a2
                  lui          a6, 407162
                  sub          t3, t0, t0
                  lui          tp, 270968
                  auipc        a6, 550293
                  addi         tp, s11, 615
                  auipc        t3, 653648 #end riscv_int_numeric_corner_stream_18
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s9, 0x22d883b7
                  li           t1, 0xffffffff
                  li           sp, 0xffffffff
                  li           s4, 0x0
                  li           a3, 0x80000000
                  li           a2, 0xcf90186e
                  li           a4, 0xffffffff
                  li           s5, 0x80000000
                  li           tp, 0x14e45597
                  add          tp, s9, a3
                  nop
                  nop
                  lui          s2, 680305
                  nop
                  auipc        s5, 72077
                  add          s4, a2, s4
                  lui          a3, 110712
                  nop
                  add          s5, s2, s5
                  add          a3, t1, s4
                  nop
                  nop
                  lui          s2, 941077
                  sub          s9, s4, a3
                  nop
                  addi         s2, a2, 697
                  lui          s5, 121260
                  sub          s2, s2, sp #end riscv_int_numeric_corner_stream_11
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           gp, 0xba5341a7
                  li           s11, 0xffffffff
                  li           tp, 0x0
                  li           ra, 0x970cc51d
                  li           a2, 0x80000000
                  li           a6, 0x0
                  li           s1, 0xfaf0e619
                  li           s6, 0xffffffff
                  li           t3, 0x9f326368
                  lui          s1, 280327
                  sub          tp, a1, t3
                  sub          s1, s11, gp
                  lui          a2, 911958
                  add          t3, gp, a2
                  auipc        t3, 598051
                  nop
                  addi         s1, a6, 864
                  addi         s1, gp, -1165
                  lui          a1, 639149
                  sub          s6, tp, a1
                  sub          ra, a1, gp
                  lui          tp, 891461
                  auipc        gp, 706554
                  lui          a2, 1034197
                  lui          s6, 950809
                  nop
                  lui          s11, 481382
                  nop
                  addi         s1, s11, -897 #end riscv_int_numeric_corner_stream_4
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           t2, 0x0
                  li           t1, 0x4b7eb0ef
                  li           s4, 0xbdf1b534
                  li           s10, 0xffffffff
                  li           a3, 0xffffffff
                  li           t3, 0x47173b20
                  li           a1, 0x0
                  li           s7, 0xffffffff
                  li           t0, 0xffffffff
                  nop
                  lui          t3, 502072
                  nop
                  lui          t0, 303517
                  addi         t1, t2, 334
                  addi         a1, a3, 781
                  nop
                  auipc        s7, 680569
                  addi         s4, a1, 1292
                  lui          s10, 710552
                  sub          t0, t2, s1
                  nop
                  sub          t1, a3, s10
                  addi         a1, s1, 1716
                  sub          t1, s10, s7
                  lui          s4, 827610
                  nop
                  lui          t2, 1017738
                  auipc        t3, 509360
                  nop #end riscv_int_numeric_corner_stream_9
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s11, 0x80000000
                  li           t2, 0x0
                  li           s8, 0x0
                  li           t3, 0x0
                  li           t1, 0x0
                  li           s2, 0x80000000
                  li           s5, 0x2dd2c297
                  li           s4, 0x80000000
                  li           ra, 0x80000000
                  nop
                  auipc        ra, 569459
                  addi         s2, t2, 1320
                  lui          t2, 850122
                  lui          t1, 427222
                  auipc        t2, 107276
                  nop
                  sub          ra, s4, t2
                  nop
                  sub          s11, s2, t2
                  nop
                  sub          t2, s5, s11
                  nop
                  sub          s5, a7, s4
                  sub          t1, s5, s2
                  addi         a7, t3, 1316 #end riscv_int_numeric_corner_stream_3
                  or           a1, a3, gp
                  add          s6, s4, t2
                  srl          s5, zero, s4
                  sltu         t1, s0, s7
                  or           ra, ra, s10
                  sub          a1, t5, s3
                  srli         t1, s4, 18
                  sra          s3, s3, a7
                  xori         a5, gp, 749
                  ori          s3, a4, -583
                  sltu         sp, sp, a7
                  lui          t3, 334726
                  or           s7, s6, a4
                  xor          zero, s4, a6
                  slti         sp, a6, -915
                  ori          a2, t3, -499
                  nop
                  auipc        s3, 517554
                  slli         ra, s6, 10
                  sltiu        tp, t0, 815
                  sll          t4, a6, t6
                  xori         tp, t5, 1884
                  srli         s10, t1, 9
                  add          a4, s11, s6
                  ori          a5, a4, 232
                  ori          s2, zero, -96
                  nop
                  andi         t4, zero, -1782
                  lui          s6, 350571
                  slti         a1, t4, 696
                  slti         a4, a5, 240
                  andi         sp, s4, -32
                  slt          s6, s9, t3
                  addi         ra, a7, -642
                  sub          s11, a1, a0
                  sra          a5, gp, s10
                  lui          t3, 881039
                  and          a4, s7, s5
                  slli         a4, a1, 9
                  nop
                  ori          a3, zero, -1786
                  xor          s5, t6, a6
                  auipc        s3, 342909
                  ori          a2, a0, 145
                  addi         a1, zero, 291
                  andi         t0, ra, 33
                  xor          t2, a2, a0
                  andi         s8, t3, 1630
                  ori          gp, ra, 1198
                  sltiu        a7, s7, 973
                  sltiu        t2, s8, -144
                  srai         t3, s8, 15
                  srai         s11, s11, 16
                  lui          t1, 615538
                  add          s11, a6, s3
                  sltiu        s7, t3, -2020
                  sra          a2, s10, t2
                  ori          s7, gp, -1400
                  ori          t2, t2, 1021
                  andi         a5, s2, 870
                  slt          zero, t5, s10
                  lui          s4, 82994
                  andi         t0, s5, -595
                  addi         t4, a7, -1441
                  slti         t2, a0, -352
                  srli         a7, gp, 27
                  srl          s9, s5, a7
                  andi         gp, s7, 1218
                  lui          s9, 261803
                  slt          tp, t3, a7
                  xor          s5, tp, a1
                  add          ra, s5, tp
                  and          t1, t1, a6
                  sra          t6, t0, t4
                  srl          t6, sp, t4
                  add          sp, a0, a2
                  sra          t3, a4, ra
                  lui          s3, 410585
                  xor          tp, a0, sp
                  slli         s5, t4, 11
                  and          a5, s10, tp
                  sltu         s6, a1, a0
                  slti         s6, s3, 46
                  slt          t6, s7, t6
                  lui          a1, 1029421
                  xori         tp, sp, 315
                  and          a1, t1, a3
                  add          gp, s6, a2
                  auipc        gp, 620149
                  slti         t6, s10, 2007
                  xori         s3, t1, 1672
                  sltiu        s1, t4, 295
                  sll          t4, s5, s9
                  sra          s10, a7, s2
                  sra          zero, zero, t1
                  sll          s8, s5, a5
                  addi         ra, a3, -475
                  slli         ra, s4, 12
                  sll          a2, s2, a4
                  or           s10, t4, a0
                  sra          sp, s2, s6
                  sub          t4, a1, t4
                  xori         s5, s5, 1205
                  slt          t4, zero, t4
                  lui          s10, 497383
                  auipc        t1, 955263
                  sra          t6, a5, s11
                  nop
                  sltiu        t6, s7, 45
                  slti         a6, s6, -558
                  srli         t6, s7, 3
                  slti         s10, s9, 230
                  sub          t6, t2, s0
                  srai         a6, a1, 18
                  sra          sp, s11, s10
                  auipc        s7, 603306
                  andi         gp, t2, -1924
                  srli         s1, a5, 19
                  slt          s11, ra, ra
                  srl          t0, s0, sp
                  srl          s6, t4, t4
                  andi         tp, t1, 1748
                  sll          a4, t4, s4
                  sltu         a2, s2, t0
                  srai         a1, t3, 9
                  sll          gp, a1, t1
                  slli         s11, a3, 7
                  ori          zero, t6, -283
                  and          s7, a1, a3
                  xor          a1, tp, t6
                  srai         a4, ra, 13
                  lui          s10, 930718
                  ori          t6, t1, 1837
                  and          s5, s0, a3
                  and          s4, a1, a3
                  sltu         s11, a0, s2
                  sltu         t3, t2, a1
                  auipc        a5, 607593
                  addi         s8, t1, -1932
                  sltu         s4, s4, t4
                  auipc        a2, 30697
                  srl          a4, s9, a1
                  srai         t2, t6, 11
                  srai         t1, a5, 19
                  sltu         a5, tp, s2
                  xori         t2, t4, -791
                  srl          a5, s3, s10
                  sll          a6, s6, t2
                  auipc        s7, 882397
                  auipc        t2, 183993
                  xor          t0, a7, s1
                  slli         t6, t0, 1
                  sltiu        gp, a7, 1807
                  slti         a7, a1, -351
                  srai         t0, a1, 17
                  sltu         t3, gp, t4
                  srli         t1, a7, 3
                  slti         tp, a3, -138
                  lui          t0, 218094
                  slt          a3, t0, ra
                  srai         t4, gp, 8
                  xor          s8, t0, t1
                  or           s7, sp, ra
                  xor          s8, a2, t1
                  xor          s11, t5, s8
                  and          t6, a6, s3
                  xori         t4, s4, -489
                  andi         a3, t0, -1543
                  xori         t6, s8, 442
                  auipc        tp, 143779
                  or           a4, ra, a2
                  srai         a2, zero, 26
                  slli         sp, t5, 0
                  or           s3, s4, t1
                  or           a3, a3, s6
                  slti         s5, s5, -373
                  slt          a6, s8, zero
                  andi         s9, zero, 1867
                  lui          t4, 955279
                  xori         s6, s8, 2016
                  srl          a4, a1, tp
                  srli         s10, s8, 8
                  addi         t2, a7, -930
                  xor          ra, t0, t5
                  xor          s10, s3, zero
                  and          s4, a0, s6
                  srl          gp, sp, sp
                  auipc        s5, 754027
                  andi         zero, t4, -292
                  auipc        a5, 426900
                  auipc        s9, 184663
                  srli         s3, t4, 14
                  or           s9, s0, t3
                  srl          s11, s1, t3
                  add          zero, s4, a1
                  add          a3, gp, zero
                  andi         a1, s6, -1684
                  srl          a4, s4, s1
                  ori          s11, s3, -914
                  and          t2, s8, s6
                  srai         t3, a5, 10
                  xori         zero, s5, 1823
                  add          s8, s4, sp
                  srai         ra, a3, 8
                  sltiu        a1, s1, -1147
                  srai         s10, s4, 3
                  sra          t1, tp, s7
                  sltiu        sp, a1, 1237
                  sltu         s7, a4, a3
                  sra          s3, a6, t1
                  slti         s8, t0, 1564
                  andi         gp, s6, 721
                  and          t1, a6, sp
                  xor          t4, s11, s10
                  sra          a7, s3, a6
                  srai         t1, a5, 30
                  or           gp, a1, a6
                  sltu         a7, s6, a7
                  ori          s2, s1, -579
                  xori         ra, s7, -1786
                  sltu         s4, ra, t0
                  lui          t4, 841296
                  or           s11, s6, s0
                  lui          t1, 284346
                  sll          a2, a1, s6
                  xori         s2, a3, 412
                  srli         a6, s2, 21
                  slli         a1, a7, 20
                  andi         t6, ra, 1495
                  sll          a3, s6, sp
                  lui          t6, 923227
                  sra          s5, gp, a7
                  ori          t4, zero, -878
                  lui          t0, 74364
                  addi         ra, s1, -457
                  sra          tp, t3, s0
                  sub          a5, t6, t3
                  slti         s10, a7, -1503
                  slt          a7, a5, gp
                  slli         a4, s10, 26
                  srl          s11, ra, tp
                  nop
                  ori          a3, s4, 1073
                  andi         t6, t2, 1421
                  slt          t6, sp, ra
                  andi         a7, a7, -260
                  auipc        ra, 390570
                  andi         s1, t6, -1912
                  xor          s3, s10, t2
                  lui          s5, 516277
                  slli         ra, t2, 16
                  slli         gp, s4, 7
                  slli         s4, t6, 21
                  sll          gp, t5, s10
                  sra          a2, s10, s8
                  addi         s10, t4, 1656
                  xor          s8, sp, s1
                  nop
                  sll          a6, s10, sp
                  add          gp, a4, t2
                  sltu         tp, a6, s11
                  sltu         s2, a4, s11
                  srai         a2, s11, 27
                  srl          t3, t1, s4
                  srl          a2, ra, a5
                  nop
                  andi         a5, s4, 1119
                  sltu         t1, ra, s0
                  srai         s1, zero, 31
                  xori         ra, s4, -1456
                  andi         t2, a7, 116
                  sltu         s6, s1, t1
                  ori          s10, a6, 1964
                  slt          tp, sp, t3
                  lui          s4, 345995
                  srl          t2, t6, a1
                  slli         t1, t2, 14
                  slt          t6, t5, s1
                  add          t3, s7, a5
                  slt          ra, a6, ra
                  or           a5, t1, s6
                  srl          t1, a3, a6
                  addi         a1, s8, 1378
                  ori          s3, s8, -1280
                  slti         t2, tp, -2038
                  auipc        t3, 58729
                  lui          a7, 743150
                  xor          s11, a2, a4
                  sra          s1, s7, a3
                  sltiu        t2, s8, -1283
                  sll          a2, s3, t0
                  srli         a1, a5, 8
                  sltu         s3, ra, s3
                  lui          ra, 972693
                  lui          a4, 669833
                  xori         t4, s0, 1475
                  auipc        s2, 516939
                  sll          s4, s9, s9
                  auipc        a6, 440918
                  sra          s11, ra, s3
                  sub          t1, s6, s0
                  add          a5, gp, t4
                  ori          a7, s0, -1827
                  sltu         ra, s10, a0
                  sub          t6, s5, s10
                  ori          a4, gp, -1760
                  auipc        zero, 855257
                  srl          ra, s5, a7
                  sub          sp, a2, a6
                  lui          a4, 879073
                  sub          s8, t4, a2
                  nop
                  or           s7, gp, t1
                  andi         s5, s8, 1253
                  xori         t4, gp, 238
                  sra          t6, t0, t1
                  sll          gp, a4, tp
                  slli         t4, t5, 29
                  srli         a5, s5, 5
                  auipc        t3, 469589
                  xor          a7, a2, t5
                  sltu         a5, ra, a6
                  addi         t1, s1, 435
                  nop
                  sll          t3, t0, a2
                  or           s6, t3, s10
                  srli         s3, a1, 22
                  srl          t0, s2, t1
                  xor          t1, a3, a2
                  add          zero, t4, a3
                  ori          s8, a1, -1645
                  or           a6, s1, s1
                  or           s9, s9, s9
                  slt          t2, a3, a0
                  add          t1, a2, t0
                  slt          zero, zero, t3
                  xor          sp, a1, s8
                  sll          s9, a1, a0
                  nop
                  nop
                  srl          a4, s7, a2
                  ori          a1, t4, -569
                  or           zero, s11, s11
                  slli         s1, s11, 20
                  sltiu        s7, s11, 985
                  ori          s7, s4, -540
                  nop
                  sra          s9, a7, a0
                  ori          a3, zero, -1727
                  andi         s10, t5, -794
                  sll          s4, t2, s3
                  addi         s1, sp, 655
                  slli         s5, a1, 24
                  add          t2, t5, a7
                  srli         t3, s3, 30
                  and          t0, a2, t0
                  sltu         s4, s11, t2
                  addi         a3, t1, -452
                  slt          s10, t0, s1
                  sltu         tp, a2, s0
                  srli         a7, ra, 15
                  lui          t4, 520102
                  lui          s7, 580838
                  or           s2, s6, a3
                  or           s5, t6, tp
                  nop
                  srl          ra, s0, s2
                  nop
                  xor          t1, a7, sp
                  ori          t1, a4, 728
                  sltiu        s2, s2, -1955
                  or           t1, a1, a4
                  srai         a2, a2, 0
                  auipc        t6, 648536
                  xori         a1, gp, -181
                  slli         a3, a6, 6
                  sra          a1, s0, a0
                  lui          tp, 87379
                  add          zero, a1, tp
                  slt          t3, s1, a2
                  ori          s10, a0, -1329
                  and          s1, a7, a5
                  add          a7, a4, t0
                  nop
                  srl          a2, s5, a6
                  nop
                  andi         a5, s11, 1976
                  add          s4, t0, a5
                  auipc        t0, 993681
                  slt          a6, a2, s7
                  auipc        s7, 366787
                  srli         s3, a6, 1
                  xor          s4, tp, t6
                  or           s7, s10, s11
                  andi         s4, zero, 886
                  slti         gp, t1, -1398
                  xor          a2, s9, a2
                  sltiu        tp, s4, -1451
                  add          zero, s7, t2
                  or           t0, s5, s1
                  or           a1, a2, t2
                  srai         a4, t0, 31
                  sub          s7, sp, a5
                  sra          s4, s11, s6
                  add          a5, s7, a3
                  addi         t2, zero, 578
                  sra          zero, gp, a6
                  srli         s4, s5, 4
                  nop
                  srli         t1, s7, 10
                  nop
                  sltiu        s9, s8, 1049
                  auipc        s5, 781440
                  sra          s6, s7, s10
                  sra          ra, ra, gp
                  addi         t4, t6, -1396
                  sll          t0, t5, s3
                  andi         s9, s10, 76
                  xori         a4, zero, -1825
                  add          s9, s1, s3
                  ori          t4, t5, 568
                  add          s9, a7, t3
                  sltu         a6, a0, s1
                  sltiu        tp, s11, 887
                  xori         s1, a0, -1021
                  slti         t0, t5, 409
                  sub          sp, s3, t6
                  ori          s6, s8, -97
                  xori         t1, t2, 1529
                  sub          a3, s9, gp
                  andi         a5, a5, -62
                  sll          zero, s0, t4
                  or           s11, s6, s5
                  add          s2, s7, a0
                  slti         s10, ra, 776
                  slli         a5, a7, 1
                  sub          a6, a0, s1
                  add          s4, zero, s5
                  srl          t3, a1, a3
                  andi         a4, s11, 417
                  lui          sp, 193579
                  sltu         s3, t3, ra
                  slti         s5, a7, -1826
                  or           t0, s10, s5
                  slti         s2, t4, 2004
                  slt          t6, a4, t2
                  srli         t0, gp, 28
                  xor          tp, a5, s5
                  xori         s8, s9, 1790
                  lui          a2, 255587
                  and          s6, a1, s1
                  add          t2, s5, t1
                  xori         s11, gp, 784
                  lui          t6, 998153
                  sltiu        t2, sp, -945
                  slti         tp, t5, 1048
                  xori         t4, s1, -1145
                  ori          a1, s6, -29
                  xor          a2, s0, s7
                  auipc        sp, 615842
                  xori         a6, ra, -36
                  andi         a3, s7, 1617
                  xor          a5, tp, s3
                  and          s1, t0, s4
                  add          a7, t4, t1
                  ori          s6, t5, -1724
                  sll          zero, a1, s5
                  sltu         t0, zero, a4
                  addi         s8, s7, -669
                  slt          zero, a1, t3
                  xor          t2, s6, zero
                  auipc        t3, 338976
                  slt          a7, gp, a7
                  addi         t3, t4, -423
                  sra          a7, s5, a0
                  slti         t2, s2, -927
                  srli         t4, sp, 19
                  sub          t3, t3, sp
                  nop
                  sra          s2, s5, s9
                  addi         tp, zero, -1918
                  srl          a6, t5, s1
                  sltu         gp, s9, s9
                  add          zero, a0, a0
                  srli         s3, s4, 1
                  or           a5, t0, s5
                  and          s7, zero, t1
                  sltu         s7, t5, t6
                  sub          s11, s1, a2
                  nop
                  sub          s7, s5, t5
                  sra          s11, s5, t0
                  addi         a5, a1, 417
                  xor          s11, a0, s9
                  addi         s6, zero, -1146
                  srli         ra, a7, 12
                  sltiu        tp, s4, 270
                  sub          t1, ra, tp
                  srai         t1, ra, 18
                  slt          a6, a6, s10
                  slli         s7, s9, 2
                  sra          s2, s2, a1
                  sra          s7, t4, s5
                  or           s1, a4, s6
                  srli         ra, sp, 3
                  slt          t0, a1, s11
                  xori         s6, t3, -506
                  srai         s3, a0, 27
                  srai         s11, s11, 3
                  srl          t4, t1, s0
                  srli         s9, ra, 27
                  or           t6, s9, s6
                  andi         a6, s11, -638
                  sll          a4, s10, s1
                  slt          sp, t3, s10
                  auipc        t0, 820041
                  lui          s3, 378124
                  or           gp, sp, t3
                  add          s11, s5, s3
                  nop
                  nop
                  ori          gp, s1, 556
                  srai         t4, s2, 11
                  lui          s4, 597235
                  slt          a2, s11, gp
                  slt          s3, s8, t5
                  ori          s9, s8, -1948
                  lui          a6, 962733
                  sltiu        t2, s3, -193
                  sll          a3, a1, tp
                  sll          a4, a4, s9
                  ori          t2, a0, -1825
                  add          sp, a7, ra
                  sub          ra, t4, s8
                  addi         a3, s3, -399
                  srl          s4, s4, sp
                  add          a1, a0, a6
                  sra          a7, a6, s9
                  andi         a5, a1, -1094
                  add          s11, gp, t3
                  sub          s2, s8, s1
                  sltiu        s7, s2, -1181
                  auipc        sp, 161469
                  slti         s10, a0, 1638
                  xor          t3, t0, sp
                  add          a3, sp, s7
                  slti         tp, t6, -130
                  srli         s5, s2, 24
                  slti         t1, s11, 287
                  andi         s6, a7, -194
                  srl          t1, s0, t0
                  nop
                  srl          s6, tp, s2
                  xor          s3, a7, s3
                  andi         a6, gp, -63
                  srli         s9, zero, 1
                  or           s5, s3, s11
                  sltu         t0, a3, t3
                  srli         a7, s7, 28
                  xor          zero, t1, s1
                  xor          t6, a6, s1
                  sll          a2, a3, a0
                  xor          a4, s1, a3
                  sltiu        gp, t1, -853
                  nop
                  addi         t3, a5, -91
                  add          s1, t0, s11
                  srli         t2, a1, 6
                  sra          t4, a1, sp
                  sltu         t4, s10, s1
                  and          s1, tp, a6
                  srli         s6, t3, 4
                  or           a5, a0, s5
                  addi         t3, s9, 535
                  sub          a7, t0, s6
                  slti         a7, t3, -914
                  srai         s2, s11, 7
                  xor          t4, t2, t6
                  sltiu        t6, a4, -821
                  add          s10, sp, a2
                  sll          a5, s7, zero
                  ori          s8, s7, 454
                  sltu         a5, s6, a3
                  slt          s8, s3, s6
                  add          s2, t6, s11
                  srai         ra, s4, 29
                  slti         t6, a7, 821
                  slli         s10, a3, 17
                  addi         t1, t4, -160
                  xori         s3, zero, 2008
                  slli         s5, s4, 16
                  srai         s8, t5, 1
                  srl          s9, s9, t4
                  andi         a6, t0, -923
                  addi         s6, s8, -1861
                  slli         s3, s0, 14
                  xori         a7, gp, 1523
                  sltu         t6, gp, gp
                  slt          t6, t6, a2
                  or           a2, a7, t2
                  andi         s7, s10, 767
                  ori          t2, t4, -474
                  sra          a6, t4, s7
                  srl          sp, s1, t0
                  auipc        t0, 483078
                  srai         t0, zero, 12
                  slt          s5, s11, gp
                  sltu         a1, s3, gp
                  slt          a3, tp, s5
                  xori         zero, t1, -2021
                  sub          t2, sp, t6
                  ori          s3, s9, 1213
                  andi         t6, a2, -1154
                  ori          a4, a5, -102
                  slt          a2, t5, a3
                  sltiu        a2, s10, -740
                  nop
                  and          zero, a3, s9
                  xor          a4, s3, s11
                  andi         t2, t1, 842
                  srli         ra, s4, 20
                  slti         ra, s10, 315
                  andi         s1, t4, 1066
                  andi         s8, s10, 193
                  nop
                  auipc        s7, 837126
                  sltu         sp, s0, s3
                  sll          a7, s3, s5
                  auipc        sp, 673626
                  nop
                  slti         t0, a4, -1445
                  ori          s2, a2, 758
                  xori         sp, a7, 916
                  add          t1, t6, a3
                  ori          a4, a3, 1903
                  sltu         t3, a0, s10
                  ori          a4, t5, 526
                  sub          s3, a7, ra
                  srai         a2, s4, 19
                  auipc        s10, 669961
                  slti         a4, s10, 1985
                  nop
                  auipc        s5, 1025279
                  addi         s10, a6, 1849
                  ori          a4, ra, 553
                  addi         a6, a3, -1984
                  slli         s8, s11, 27
                  slli         s4, s2, 15
                  srli         a4, gp, 30
                  add          s5, a4, ra
                  andi         t0, s1, 455
                  sub          a4, s1, a7
                  lui          t2, 69813
                  slti         s10, a7, 764
                  xor          s4, t4, s10
                  addi         ra, sp, 1204
                  slti         a7, t2, -675
                  xori         s7, tp, -1907
                  slt          a3, sp, s8
                  sltu         s9, a5, t4
                  ori          a4, a4, -1976
                  slti         a3, s4, 180
                  srai         gp, s10, 1
                  add          a4, gp, s1
                  slli         s2, s1, 20
                  slt          ra, s10, ra
                  sra          tp, ra, s5
                  add          s1, a3, s9
                  sub          t6, s0, a6
                  sll          t3, t6, s8
                  sltu         a5, t3, a7
                  auipc        a7, 40992
                  srli         s9, t0, 1
                  srl          ra, s6, t1
                  and          t0, t2, zero
                  addi         gp, t6, 1078
                  srai         s2, a3, 19
                  sltu         t1, a4, t1
                  srl          a5, a7, t6
                  sltiu        tp, s7, -1239
                  ori          ra, s2, 1924
                  and          s10, s2, a3
                  slli         s1, a6, 16
                  sra          gp, s7, s8
                  add          s7, t2, t2
                  slti         s1, a1, 1025
                  slli         s8, tp, 28
                  or           a6, s1, s5
                  xori         tp, t2, -2020
                  sltiu        sp, ra, -141
                  ori          a6, a7, -1223
                  addi         a7, t6, 1612
                  nop
                  addi         s10, s3, -197
                  sltiu        s1, a2, 1373
                  slli         s5, s8, 9
                  sltiu        t2, t2, 1514
                  auipc        s9, 461772
                  xor          a2, a4, a5
                  sltu         t0, gp, t1
                  or           s8, s6, s4
                  slti         s5, s2, -134
                  srli         s3, s2, 4
                  lui          a7, 1009861
                  xori         s3, t3, 2001
                  sra          s4, t0, s3
                  slt          a4, tp, a2
                  nop
                  sll          a1, ra, a7
                  addi         t1, s10, 282
                  xor          s5, t6, s8
                  nop
                  sll          s7, zero, t0
                  xori         s6, s9, -620
                  slt          a2, sp, s5
                  sra          s5, s6, t0
                  srl          a4, zero, t1
                  add          t3, a2, a7
                  srl          t4, a6, t2
                  sll          t1, a4, s9
                  or           a1, tp, a7
                  ori          s1, t6, -1782
                  srl          s8, t5, t1
                  andi         a5, t4, -948
                  and          s8, gp, s3
                  addi         t0, a4, 549
                  xor          a2, s2, s6
                  sltiu        a1, s9, -920
                  or           t6, s1, t3
                  sub          ra, ra, t3
                  xor          t6, s1, zero
                  sltiu        ra, a6, -2038
                  or           a7, a7, s3
                  or           a1, s11, a3
                  srl          ra, s11, t2
                  srli         a3, s7, 27
                  srl          t2, a0, a4
                  lui          a2, 985848
                  andi         t4, s10, 25
                  xor          t6, a1, s0
                  sub          s10, sp, a3
                  sltu         t2, s4, a3
                  and          t3, s7, t3
                  slli         zero, s2, 24
                  xori         s1, a1, -839
                  sltu         s8, s2, s4
                  xor          s5, a6, s3
                  srai         s11, s11, 20
                  xori         t1, t4, -144
                  nop
                  srl          gp, s7, a3
                  andi         zero, a2, -425
                  sra          s4, s2, a2
                  sltu         s9, gp, s8
                  xori         a2, ra, -1273
                  sll          s8, a5, t5
                  slti         t2, a4, 1899
                  sltiu        s11, a3, 15
                  add          t1, t4, zero
                  sll          t1, t0, ra
                  or           a3, t4, ra
                  srai         s3, s10, 1
                  sub          zero, s0, a6
                  sltu         s5, s11, zero
                  srai         a2, t0, 1
                  ori          a4, a0, -1665
                  srli         t3, a6, 3
                  auipc        a3, 496892
                  and          s4, s10, t0
                  srl          s9, a3, a1
                  slti         a2, tp, 522
                  lui          a2, 271874
                  sltu         s8, t5, gp
                  add          s10, a0, a3
                  nop
                  sub          s8, s4, zero
                  sra          s4, s8, s11
                  slti         s8, s0, 1852
                  addi         gp, sp, 1719
                  slli         s6, s9, 6
                  lui          a6, 855307
                  lui          s8, 135339
                  srli         gp, t1, 0
                  srai         s5, a7, 25
                  add          a4, s0, s8
                  slli         s11, a7, 29
                  sub          a1, t1, a6
                  srl          s10, a6, s1
                  add          ra, a6, t1
                  slti         s9, a6, -307
                  sltiu        a7, a6, 632
                  srl          s6, s5, t0
                  srl          s7, s8, t2
                  srai         s11, ra, 27
                  sra          s9, a1, t1
                  and          zero, a7, a0
                  sltiu        a3, t0, -665
                  sltiu        sp, t1, 144
                  lui          gp, 470828
                  auipc        a3, 169827
                  ori          s10, gp, 1591
                  and          a1, t6, t4
                  addi         a7, s4, 1517
                  srai         gp, t3, 8
                  and          t6, t1, s5
                  and          zero, s9, s1
                  auipc        t0, 987023
                  lui          gp, 781700
                  slli         s4, t0, 7
                  srli         t4, s4, 22
                  sll          t4, t3, s0
                  and          t6, s6, sp
                  xori         t0, t5, -2035
                  ori          s2, s5, -937
                  slt          s1, a5, t5
                  slti         s8, t4, 74
                  or           a2, a0, s6
                  sltiu        gp, s1, 958
                  sltu         s10, a2, s3
                  add          tp, s1, a2
                  xori         t0, s10, 498
                  lui          t4, 646821
                  andi         a3, a7, -1899
                  slt          s1, ra, zero
                  or           a1, s8, a4
                  ori          zero, s9, 2003
                  sub          t1, a6, a7
                  srli         s6, a1, 19
                  addi         a3, s1, 509
                  slli         s9, a7, 28
                  srli         s10, t2, 14
                  sub          sp, a4, s5
                  and          t2, a6, t6
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           t4, 0x80000000
                  li           a6, 0x80000000
                  li           gp, 0x80000000
                  li           t6, 0xffffffff
                  li           s8, 0x217d4ef3
                  li           s4, 0xf3c75387
                  li           s11, 0x7be0164e
                  li           a7, 0xffffffff
                  li           tp, 0x0
                  sub          a6, gp, tp
                  add          s2, s4, t6
                  addi         s4, a7, -717
                  add          t4, t4, tp
                  nop
                  addi         t4, t4, 1736
                  sub          t4, s4, s11
                  nop
                  sub          tp, s2, gp
                  addi         s2, s4, 607
                  add          tp, a7, gp
                  auipc        gp, 36861
                  lui          a6, 376548
                  add          s2, t4, gp
                  auipc        tp, 72372
                  add          a6, gp, tp
                  nop
                  sub          t6, s4, tp
                  lui          a6, 919075
                  nop
                  sub          a7, s4, s8
                  auipc        tp, 996528 #end riscv_int_numeric_corner_stream_17
                  or           ra, ra, t0
                  slt          t6, s5, a1
                  addi         zero, gp, -1209
                  addi         gp, a7, 14
                  srli         ra, a7, 0
                  sltiu        s7, a1, -1693
                  xor          s9, a1, zero
                  srai         ra, s4, 4
                  slli         s8, s9, 13
                  slti         t1, sp, 215
                  nop
                  and          s9, s2, a0
                  slt          a7, a5, s1
                  srai         s8, a5, 26
                  or           a4, t1, t6
                  sll          t3, zero, s8
                  srl          s10, tp, tp
                  nop
                  xor          a7, s10, zero
                  slli         a2, s10, 13
                  sltu         zero, s5, t1
                  and          zero, s9, s4
                  sub          s1, sp, t0
                  slt          t0, t2, s0
                  xor          s11, s5, a2
                  xor          sp, t1, t2
                  xori         t3, t5, -973
                  andi         a2, s9, 753
                  or           a3, s1, s1
                  and          s9, s2, zero
                  ori          s7, s9, -1872
                  nop
                  sltu         t6, s2, s1
                  srli         s2, a0, 26
                  andi         t0, tp, 227
                  andi         s2, s5, 1497
                  sub          s9, a2, t0
                  lui          s2, 37783
                  auipc        a4, 376020
                  sll          a6, ra, ra
                  sll          s9, s10, a4
                  lui          zero, 180088
                  sll          t6, a5, s0
                  slli         s3, tp, 26
                  andi         s9, s7, 358
                  sltu         s4, a3, s8
                  andi         t2, t5, 89
                  andi         t1, t4, -426
                  ori          s3, s1, -832
                  xor          tp, ra, a3
                  add          a3, t1, t1
                  lui          a1, 742572
                  srl          s8, s3, a0
                  srli         a3, s8, 29
                  sltiu        s5, s6, 378
                  ori          zero, s1, -2037
                  srl          a6, t4, s6
                  srai         t6, a3, 26
                  xor          s4, a3, s6
                  srl          a1, a0, gp
                  sub          a4, s4, t1
                  and          zero, t6, a5
                  srai         a5, s2, 11
                  slli         s7, zero, 12
                  andi         s2, t6, -897
                  andi         s3, a5, -1628
                  sra          s7, s7, s3
                  or           s11, s2, t4
                  srai         a3, s6, 5
                  srai         t0, t4, 30
                  slli         s11, t6, 8
                  sll          a2, t4, a0
                  xor          s8, t1, sp
                  nop
                  ori          a6, s1, -952
                  srli         tp, ra, 25
                  sltiu        tp, s8, -115
                  auipc        s3, 325905
                  nop
                  or           t1, a6, s0
                  auipc        s11, 920079
                  xor          s5, t0, s9
                  or           s11, s7, t4
                  xori         t3, a4, -1285
                  slti         s2, s0, -931
                  or           sp, s2, s6
                  andi         ra, s2, 1572
                  sll          s2, a4, t3
                  lui          s8, 552540
                  slti         sp, gp, 607
                  sltu         a7, a2, tp
                  ori          s9, t3, 593
                  sll          a6, a3, a7
                  sll          t4, t0, t6
                  slli         t4, ra, 7
                  sra          s4, s2, a4
                  slli         t1, s10, 3
                  srai         s8, t2, 1
                  andi         s10, a1, -1883
                  lui          t2, 790810
                  srai         t6, gp, 9
                  auipc        s2, 1003984
                  auipc        ra, 354895
                  srl          a2, a7, a6
                  slti         s6, s2, 1342
                  auipc        a4, 39699
                  sltiu        t1, t2, 1235
                  xor          sp, a5, a6
                  slli         s8, gp, 13
                  auipc        t0, 80623
                  sltiu        a6, s1, 912
                  slli         a6, t5, 14
                  andi         t3, s8, 1928
                  addi         t0, gp, 1008
                  andi         a6, a2, 115
                  or           s5, s4, a4
                  srli         t6, s7, 28
                  srai         a4, a1, 13
                  slti         gp, t5, -500
                  and          t1, t4, s9
                  lui          s6, 44679
                  srai         a5, ra, 4
                  addi         gp, gp, -111
                  xor          a5, a4, zero
                  lui          a3, 74116
                  or           s5, s10, s9
                  add          s10, s11, gp
                  sra          ra, t6, s11
                  srai         s6, tp, 11
                  srli         tp, s8, 28
                  sub          s2, a1, s7
                  sltiu        a5, a4, -359
                  andi         a5, s5, -740
                  andi         a6, t3, -1582
                  sltu         a6, zero, ra
                  lui          s4, 930347
                  xor          t4, s4, gp
                  sub          s6, a2, a5
                  add          s5, gp, s7
                  nop
                  nop
                  srai         t4, ra, 4
                  sll          s4, gp, a7
                  sub          s5, s7, s7
                  auipc        a3, 868500
                  xor          s5, t3, t2
                  srli         a6, a5, 16
                  addi         s3, gp, -494
                  srli         gp, s1, 21
                  slli         s5, s7, 20
                  lui          s9, 372268
                  sra          a5, s7, s10
                  sltu         tp, sp, a7
                  sll          s5, a2, t6
                  auipc        s3, 838478
                  xor          t0, gp, a1
                  sltiu        s5, s9, -1038
                  ori          a2, a7, -1342
                  auipc        tp, 300197
                  add          sp, a0, s0
                  sub          t0, a3, ra
                  xori         s1, s10, -1466
                  srl          s6, s6, s5
                  or           s4, s9, s1
                  nop
                  sra          a1, a0, t5
                  sll          a2, s11, s2
                  add          a1, a1, s6
                  xori         a7, a3, -490
                  or           a5, t5, t4
                  nop
                  sll          a5, a6, a1
                  slti         s5, a4, 460
                  slt          sp, a0, s0
                  auipc        s6, 568980
                  slt          ra, ra, s7
                  or           t4, ra, a0
                  sub          s11, t6, s1
                  lui          s5, 117631
                  lui          t2, 3845
                  and          s9, t5, a5
                  slli         t2, t3, 13
                  slti         s4, a7, -360
                  srai         t0, s7, 18
                  xori         t4, s11, 1765
                  add          s5, s5, a1
                  slli         s2, t5, 8
                  slli         s3, s3, 18
                  sll          a1, a7, s11
                  xor          a3, a2, s2
                  andi         t0, a6, -1277
                  sltu         s5, s9, t1
                  sub          a4, s1, s6
                  srai         a1, s2, 7
                  xori         s2, s8, -655
                  slt          s2, t6, t1
                  slt          a1, s7, tp
                  slt          s8, a7, s2
                  addi         ra, s2, 423
                  and          s7, s1, s7
                  sltu         s4, s4, a3
                  srai         tp, s6, 26
                  addi         s7, s0, 514
                  sll          s6, t1, a6
                  lui          s2, 974199
                  auipc        s10, 60772
                  lui          a4, 978928
                  ori          s4, s1, 328
                  slt          s8, t5, a0
                  xor          t4, a2, s6
                  add          tp, a1, s10
                  xor          zero, a2, a6
                  srli         s11, tp, 28
                  xori         t4, a7, 1331
                  nop
                  sltu         s5, t2, ra
                  lui          t6, 452747
                  add          s11, s7, t6
                  srl          s9, a0, a7
                  srl          s1, t6, s4
                  add          s10, s6, s9
                  nop
                  sltiu        zero, s10, 399
                  add          s3, t5, t4
                  srli         s6, s10, 4
                  srl          s8, a1, s9
                  sltiu        s11, s11, 1904
                  nop
                  slt          s4, t1, s8
                  srli         s1, a1, 30
                  srai         t4, a0, 24
                  slli         sp, a1, 26
                  sra          s11, s7, t1
                  sltu         t6, t6, t6
                  sub          s5, s2, zero
                  and          sp, t4, a5
                  slti         s7, s1, -975
                  nop
                  and          a4, sp, s7
                  and          tp, a1, t4
                  lui          gp, 479153
                  xori         s4, zero, -179
                  or           s11, t2, a7
                  auipc        s8, 860158
                  xori         tp, t0, 1101
                  lui          a2, 694097
                  xori         a2, tp, -135
                  srli         s8, t6, 0
                  and          s11, s11, a7
                  srl          s3, t6, s9
                  srli         t0, s10, 29
                  sltiu        a5, a1, 1566
                  ori          t6, a2, 1251
                  srai         s5, s8, 19
                  sub          s8, t0, zero
                  sub          zero, s10, t3
                  or           s11, s3, t6
                  sra          a6, ra, a6
                  sra          zero, s5, t1
                  xori         a4, t6, 1348
                  xor          s9, s0, t4
                  srli         t6, t5, 1
                  ori          s8, s10, 1353
                  ori          ra, ra, -1706
                  lui          a6, 485888
                  andi         gp, s2, 1161
                  sltu         s3, a4, s2
                  nop
                  sra          t4, tp, zero
                  srai         s10, t5, 26
                  srai         s3, gp, 22
                  xori         s3, a3, -214
                  andi         s8, a5, -1574
                  sltu         gp, a1, sp
                  srl          t4, s6, a0
                  xori         s10, a2, -204
                  lui          tp, 277801
                  srai         ra, s4, 20
                  srl          a5, t2, a0
                  ori          t4, s10, -627
                  auipc        s10, 60765
                  sra          ra, s6, t5
                  sra          t1, a5, ra
                  nop
                  slt          zero, a6, t3
                  sltiu        s1, a1, -227
                  lui          a5, 446551
                  slti         s6, t0, 638
                  or           s1, gp, ra
                  srai         t2, s11, 18
                  sll          zero, tp, a1
                  slt          ra, tp, a0
                  slti         a1, s2, 1924
                  slti         a1, s1, 1030
                  auipc        t0, 849947
                  sra          t1, s9, s7
                  sll          s8, s2, a1
                  sltiu        s6, a5, 354
                  nop
                  sub          a3, s3, t5
                  nop
                  lui          t2, 994250
                  sra          a5, gp, sp
                  auipc        ra, 651006
                  srl          s3, t1, s1
                  sra          zero, a0, ra
                  srl          gp, t5, t5
                  and          a3, t1, a7
                  nop
                  and          t0, a6, t4
                  sltiu        a4, a7, -267
                  slli         a5, t6, 26
                  sll          gp, a1, a5
                  sub          t1, s9, s6
                  or           t6, t2, a2
                  auipc        gp, 588068
                  xori         t4, a3, -760
                  and          a4, s0, a6
                  lui          s7, 814153
                  nop
                  sra          s11, t5, a7
                  slti         s1, s5, -1859
                  sltu         s1, tp, a4
                  slli         s3, s10, 13
                  sltu         t4, s5, gp
                  slli         t1, s9, 28
                  sub          s1, a0, s10
                  srli         s2, s6, 6
                  add          tp, a5, t0
                  addi         t3, a2, 1432
                  auipc        a3, 11467
                  nop
                  addi         zero, a5, -1851
                  xori         s7, s8, -1712
                  sll          a2, t6, tp
                  and          tp, a2, t3
                  sll          s5, a4, a1
                  andi         t2, s3, -1059
                  slt          s2, t5, s11
                  srai         t1, zero, 23
                  or           gp, t6, s5
                  ori          a2, s9, -699
                  slti         s4, s4, 902
                  sra          a4, t5, s11
                  sltiu        s11, s2, -829
                  add          s10, s9, a0
                  xor          s6, t0, zero
                  sub          s7, t6, s10
                  slli         a1, ra, 24
                  addi         t6, s10, -1215
                  srai         a5, s3, 15
                  add          t3, s2, t0
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           s5, 0x5a23e5eb
                  li           s10, 0x80000000
                  li           s9, 0x0
                  li           a1, 0x80000000
                  li           s7, 0x80000000
                  li           s3, 0x3bf1f2a1
                  li           s4, 0x80000000
                  li           s11, 0xffffffff
                  li           ra, 0x2cda22e6
                  lui          a1, 974866
                  nop
                  auipc        s10, 1005949
                  sub          s11, s4, s5
                  sub          ra, a1, s11
                  sub          s4, s9, s5
                  addi         s4, s8, -599
                  lui          s11, 531252
                  lui          ra, 678208
                  add          s5, s10, a1
                  sub          s11, s11, s10
                  nop
                  lui          s3, 771962
                  lui          s11, 457665
                  addi         s3, ra, 615
                  addi         s7, a1, -971
                  nop
                  add          s9, s11, s9
                  sub          s10, s7, s5
                  auipc        s5, 361858
                  lui          s4, 666091
                  add          s8, s5, a1
                  nop
                  auipc        s9, 98899
                  lui          ra, 747392
                  lui          a1, 361080 #end riscv_int_numeric_corner_stream_8
                  sll          s7, s9, tp
                  srl          s2, a0, s9
                  add          a4, t0, t2
                  or           gp, gp, s3
                  sltu         sp, s4, t3
                  add          a3, s4, s0
                  nop
                  sra          t4, a0, s2
                  sll          sp, a1, s7
                  nop
                  and          a7, a6, zero
                  xori         s4, s6, -759
                  xori         a5, s7, 1202
                  and          s3, s8, s4
                  srli         a5, zero, 16
                  srai         t2, a2, 31
                  andi         t3, ra, 1990
                  lui          s10, 471959
                  slli         a4, t0, 21
                  sub          tp, s1, t6
                  srai         t2, gp, 7
                  sll          t2, t1, t5
                  sra          s10, s8, gp
                  sltu         zero, a5, tp
                  sub          t2, s8, s7
                  xori         s8, a0, -1134
                  srli         s6, s10, 6
                  srai         s6, t3, 19
                  xor          a1, t5, s4
                  sra          a1, t0, s9
                  xori         a3, a2, -116
                  slt          a6, a2, s3
                  sltu         s2, s1, t3
                  sll          ra, s3, s10
                  xori         ra, s9, 1430
                  sll          s8, t4, s6
                  lui          s8, 87870
                  lui          a7, 295588
                  slli         t2, a7, 7
                  ori          t2, s5, 1504
                  srai         gp, a4, 14
                  slt          a7, a1, a2
                  srai         t3, a3, 13
                  srl          a3, t1, s6
                  nop
                  nop
                  addi         s3, s2, -972
                  sub          zero, sp, a6
                  nop
                  ori          a4, a2, -1157
                  sltiu        t2, t5, 663
                  addi         a5, s2, -1012
                  srl          a7, s11, a7
                  sltu         a1, a5, zero
                  and          s4, sp, t6
                  xor          a3, t5, sp
                  slti         t2, s11, -1356
                  nop
                  xori         a7, ra, -158
                  auipc        zero, 265052
                  or           ra, a7, a7
                  or           a3, a1, t2
                  xori         a2, t4, 100
                  andi         s4, s3, -10
                  or           s4, t1, a6
                  slt          a3, ra, zero
                  xori         sp, s10, -1521
                  or           a1, t2, a2
                  sltu         s10, a6, s10
                  andi         s4, ra, 521
                  addi         a6, t6, 345
                  ori          s7, t2, -1055
                  lui          s2, 157772
                  sltiu        s2, s10, 1216
                  slti         t1, t0, 74
                  sub          s6, s1, t5
                  srl          s6, s7, t3
                  addi         sp, s9, 1388
                  and          a4, t5, a1
                  sltiu        tp, t5, 618
                  ori          a1, t2, -2021
                  srai         gp, t5, 13
                  auipc        a7, 409547
                  srai         s2, t1, 2
                  slt          t6, a1, a5
                  sub          s6, s1, t1
                  slti         tp, t3, -257
                  slli         tp, a0, 3
                  addi         a4, s9, 1041
                  addi         zero, tp, -859
                  sra          t6, t4, s1
                  srai         ra, s3, 21
                  lui          t6, 707439
                  slt          a1, t3, gp
                  slt          a5, a5, s1
                  sra          t2, t1, s10
                  sll          s10, a7, s10
                  slti         a4, a0, -213
                  auipc        s9, 815960
                  slli         t2, ra, 28
                  sltiu        s10, s9, 792
                  sub          a1, s0, s1
                  sub          s9, s2, gp
                  srai         s8, s2, 15
                  and          s5, a1, sp
                  andi         s4, s9, 1412
                  slli         tp, a0, 22
                  add          s10, s9, t1
                  or           s10, t2, sp
                  xor          a7, s10, t0
                  sltiu        s7, ra, -566
                  auipc        s10, 958053
                  sll          s7, s1, s6
                  sll          s11, a6, ra
                  slt          s7, a5, s7
                  ori          t1, t3, 1082
                  xor          a4, t2, t5
                  nop
                  slti         s11, a0, -1286
                  add          s6, t6, a7
                  sltu         s5, t0, zero
                  andi         t6, t6, 822
                  add          s6, s3, t5
                  auipc        s7, 365979
                  lui          sp, 26676
                  auipc        s1, 809110
                  addi         a2, s4, -856
                  slti         zero, s11, 747
                  slli         s2, t3, 6
                  nop
                  add          t6, s2, s5
                  slli         s2, t2, 9
                  srli         a6, a0, 20
                  sub          s4, s2, t1
                  srai         s9, ra, 31
                  ori          s8, s2, 874
                  slt          s10, s2, s9
                  and          s5, a3, gp
                  srai         t1, s4, 2
                  addi         s2, s7, -1486
                  or           t3, t3, s10
                  srai         s2, t6, 0
                  xor          s10, s1, a6
                  srai         t4, t3, 30
                  xor          a7, t5, s5
                  sub          s5, s8, s6
                  sra          s2, s4, a1
                  addi         sp, a6, -1584
                  or           a4, s7, sp
                  or           t3, a3, sp
                  auipc        ra, 443839
                  sra          t1, t3, s7
                  addi         t4, s7, 1832
                  slli         ra, s9, 6
                  andi         t0, a2, -512
                  sll          a5, ra, zero
                  srai         a4, gp, 2
                  and          tp, t6, a3
                  sra          a4, a0, a7
                  add          t0, ra, a1
                  srl          s1, a3, s2
                  nop
                  add          s10, s1, a5
                  xori         s5, s8, -370
                  and          a7, t4, gp
                  slli         t1, s10, 9
                  srli         t3, a2, 23
                  srl          gp, a4, s6
                  lui          ra, 672781
                  xor          t3, t1, a3
                  sra          s7, a5, a0
                  srai         s5, s6, 14
                  sra          zero, s9, s10
                  or           t2, t4, s8
                  sra          zero, zero, zero
                  add          t4, s11, s8
                  ori          s9, s7, -1866
                  sltu         s6, s9, t0
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           a2, 0xffffffff
                  li           tp, 0x80000000
                  li           a4, 0xffffffff
                  li           s3, 0x80000000
                  li           s5, 0x0
                  li           s4, 0x8404eba2
                  li           t4, 0x0
                  li           ra, 0x80000000
                  li           s8, 0x80000000
                  lui          t4, 9527
                  nop
                  sub          s4, a3, s8
                  addi         s4, a2, -1112
                  add          s5, a2, s3
                  lui          t4, 761772
                  nop
                  addi         t4, a2, -345
                  auipc        ra, 83272
                  nop
                  addi         s4, ra, 119
                  addi         a3, s3, -1595
                  sub          ra, a2, s5
                  add          s8, s4, a2
                  sub          s8, a3, s4
                  add          s4, a3, tp
                  add          s8, s8, s3
                  add          tp, s4, a4
                  auipc        s3, 125649
                  auipc        a2, 266083
                  sub          a4, a4, a3
                  addi         s3, ra, 83
                  add          s8, tp, tp
                  sub          tp, t4, a4
                  sub          s4, a4, s8
                  add          s5, a2, s8
                  auipc        a4, 899054 #end riscv_int_numeric_corner_stream_0
                  addi         ra, s4, -1356
                  add          a3, zero, t2
                  slli         s3, gp, 5
                  slli         s3, s0, 23
                  xori         zero, s6, -465
                  sltu         t2, sp, t0
                  add          s9, a7, a3
                  srl          gp, t4, a4
                  sra          zero, s9, s6
                  slti         s2, a4, -1629
                  or           s10, t3, t2
                  sll          s1, s3, a1
                  sltu         t4, s11, a7
                  slti         s10, a6, 778
                  sltu         gp, a2, a6
                  add          tp, t1, sp
                  addi         a7, sp, -2010
                  ori          a7, ra, 1135
                  srai         t3, tp, 18
                  srai         s1, a7, 28
                  xori         s3, zero, 1444
                  and          zero, t3, a4
                  xor          s10, a2, t4
                  xori         ra, t2, 545
                  xor          t2, ra, tp
                  sltu         tp, sp, t5
                  or           sp, s8, t4
                  srl          s8, a2, s4
                  sub          a4, s2, a1
                  lui          s8, 467418
                  lui          a3, 113733
                  ori          s9, t3, 1
                  slli         gp, s10, 28
                  add          a1, s1, s9
                  addi         s9, t4, -1822
                  srai         t1, a1, 21
                  nop
                  srl          a4, sp, s9
                  sub          s7, s1, sp
                  sll          a4, gp, s0
                  sll          s6, a1, t5
                  auipc        s8, 246202
                  xori         s3, a4, -1944
                  and          a7, a4, tp
                  sra          s8, ra, t3
                  andi         s6, zero, -628
                  slt          a1, s4, s11
                  add          s5, s0, s8
                  slli         s1, a7, 10
                  ori          a5, tp, -2032
                  xori         ra, zero, -1533
                  ori          a6, t6, 2044
                  sra          sp, tp, s11
                  slti         t2, a2, 590
                  slti         zero, a2, 559
                  sra          s7, a3, a0
                  srai         s5, t2, 27
                  nop
                  slt          a5, t1, t4
                  ori          a5, a2, 1108
                  auipc        t2, 334678
                  sll          a7, zero, gp
                  lui          s2, 1002084
                  sll          a5, t2, a3
                  sra          a1, s3, s8
                  xori         a6, s10, 2006
                  sltiu        a3, a0, 1586
                  add          a3, a0, s3
                  xori         sp, t6, 763
                  srai         t2, s10, 22
                  slt          ra, a4, gp
                  srai         t4, t6, 30
                  srli         s1, s9, 6
                  auipc        a5, 275050
                  slt          s2, a6, a4
                  xor          t1, t5, s5
                  sra          t6, s8, a3
                  ori          s11, s9, 584
                  addi         s10, ra, 139
                  slt          a2, s1, s4
                  addi         t0, t3, -548
                  xor          t2, t6, s1
                  or           t2, a0, a4
                  auipc        s7, 1017741
                  srai         gp, a6, 31
                  slt          s1, ra, t1
                  ori          gp, t0, -1994
                  sub          s9, s9, s10
                  ori          s2, t4, 879
                  auipc        t4, 344733
                  sub          ra, gp, ra
                  slt          t3, s9, a2
                  xori         s1, s11, -288
                  slt          zero, a1, t2
                  add          s2, a7, tp
                  slli         s10, a2, 19
                  addi         t2, sp, 1928
                  srli         t1, t1, 5
                  lui          t0, 499470
                  or           a5, sp, s3
                  add          t2, a0, a6
                  srai         s9, ra, 31
                  slli         sp, t4, 6
                  sub          s8, a6, s0
                  xori         t3, s8, 1745
                  or           s10, s3, sp
                  andi         t1, t6, -1738
                  srli         s9, s0, 19
                  slt          tp, s7, a6
                  sra          a2, t6, t5
                  srl          ra, s8, tp
                  slti         s7, a4, 580
                  slt          t6, s3, ra
                  slt          t3, a0, t6
                  slli         s3, s8, 2
                  slti         s7, a5, -893
                  slt          s8, t0, s9
                  andi         ra, ra, 1995
                  srai         s9, s0, 5
                  sll          s8, s4, s0
                  sll          t2, s11, t0
                  slli         t6, t3, 25
                  ori          t0, t4, 1366
                  srl          t2, t3, s8
                  sll          s2, s6, a5
                  andi         a4, a0, 760
                  andi         tp, s0, -1642
                  nop
                  slli         t4, zero, 12
                  sltu         t1, tp, t0
                  lui          s5, 452019
                  slli         a1, s9, 27
                  sra          a6, a4, t0
                  addi         t2, s11, 1866
                  ori          ra, s1, -1033
                  sra          a3, s2, a4
                  sltiu        t3, s7, -163
                  nop
                  add          t2, t4, s11
                  slti         s6, gp, 688
                  addi         t1, a3, 959
                  slt          t6, t4, s11
                  sll          ra, s11, a1
                  srli         t6, t4, 14
                  slt          ra, s6, a7
                  sub          t0, t4, t1
                  srli         t4, s0, 27
                  nop
                  andi         a2, a1, 980
                  and          s4, s5, a7
                  auipc        s6, 879416
                  nop
                  srai         t1, a3, 8
                  srai         zero, s2, 23
                  srl          ra, s11, s5
                  xori         s5, s4, 576
                  sra          a3, t1, a5
                  srl          s4, s8, a1
                  srl          s10, a7, a6
                  srl          s5, a7, sp
                  srli         t1, t2, 16
                  addi         s8, s10, 989
                  srai         t4, t5, 2
                  sra          a5, s7, s8
                  slti         t6, s8, -740
                  or           zero, a0, tp
                  addi         a6, a2, -1922
                  add          s9, s11, a1
                  srli         s9, a7, 1
                  sub          s3, ra, t4
                  slt          t6, ra, s10
                  sll          s8, s4, t3
                  or           t4, s2, t1
                  sltu         t2, a6, t5
                  sra          s3, t1, a7
                  slli         a2, ra, 25
                  andi         s6, zero, -1657
                  sra          a5, s3, a5
                  and          s5, t5, s7
                  xori         s9, t1, -430
                  sub          t4, s10, gp
                  or           a1, t3, s10
                  srl          t0, a0, t4
                  sll          t0, s10, t6
                  sll          t0, tp, s7
                  srl          a2, s10, s5
                  andi         t6, s9, 1618
                  srai         s4, t4, 15
                  slt          s5, a3, s7
                  srl          s6, t2, t2
                  srli         gp, s11, 4
                  auipc        a3, 910414
                  lui          s6, 330180
                  lui          s1, 122144
                  srl          zero, s8, a3
                  srl          t2, s7, tp
                  sll          s7, sp, s4
                  sltu         t2, t4, s7
                  sltu         s7, zero, a4
                  xor          s2, a0, a5
                  srli         a5, t6, 0
                  auipc        s11, 604869
                  nop
                  add          sp, s4, a1
                  and          s10, t3, sp
                  or           t0, a1, t5
                  xor          s6, a3, s10
                  slli         t2, s2, 3
                  auipc        s11, 321313
                  slt          s10, s10, a0
                  srai         s4, s5, 9
                  sub          a1, tp, s0
                  sra          a5, a5, t6
                  slt          s11, gp, s8
                  and          a3, a1, s2
                  sltu         a6, t6, a3
                  addi         a3, a7, 1838
                  srl          a6, ra, t5
                  sra          s10, t2, t0
                  sub          tp, s7, a3
                  xori         sp, s4, -483
                  slli         t0, s4, 19
                  srli         s6, sp, 12
                  addi         gp, a4, -1764
                  srli         s2, a2, 16
                  slti         s7, s2, -1691
                  xor          s8, t6, a7
                  sll          t6, s7, tp
                  andi         t0, s2, 1094
                  srli         s5, t5, 13
                  nop
                  slli         s1, a3, 17
                  sltu         a1, s7, a2
                  slt          s5, s8, s10
                  and          ra, t0, t4
                  or           a2, s3, s7
                  and          s3, sp, s4
                  xori         t3, a3, 1495
                  auipc        t0, 919863
                  srai         s5, s7, 5
                  or           s3, sp, tp
                  sra          sp, a3, s9
                  auipc        t1, 954996
                  andi         s7, s9, -1425
                  add          s11, a0, s0
                  slli         s9, s3, 13
                  srai         t1, s10, 12
                  sltiu        s5, a3, 1557
                  or           zero, t6, a0
                  add          s5, t1, s6
                  ori          a3, a3, 260
                  xori         tp, t6, 319
                  sltiu        t4, a1, 1738
                  slti         gp, sp, -732
                  xori         a4, s4, -1773
                  nop
                  ori          s4, sp, -1875
                  or           ra, t5, ra
                  sltiu        ra, t6, -1055
                  or           sp, t6, a1
                  or           s3, t4, s7
                  ori          a1, a5, 2037
                  sltiu        s10, s1, -460
                  sll          sp, t1, s0
                  sltiu        a4, t6, 438
                  srai         a3, a6, 15
                  auipc        s1, 464045
                  srli         s5, gp, 24
                  andi         s9, s0, -186
                  srli         s11, s6, 11
                  sltu         t3, a1, s11
                  auipc        s9, 537190
                  and          s2, gp, t5
                  srli         s6, tp, 14
                  slli         a5, a7, 12
                  xori         s3, t0, -1049
                  xori         a3, s6, 1911
                  and          s10, s7, a2
                  and          s2, a1, s6
                  sub          a5, t5, a2
                  sll          tp, s10, t1
                  slt          a3, t5, a7
                  and          s1, tp, t4
                  sltiu        a5, t3, 1156
                  addi         s5, s4, 1712
                  lui          s4, 986251
                  sltiu        t0, a7, -697
                  ori          t6, t1, 898
                  add          a1, a7, sp
                  sra          s8, zero, tp
                  lui          s11, 528639
                  auipc        s7, 656668
                  sra          a1, s0, s6
                  and          a5, s7, s7
                  lui          tp, 491184
                  slt          tp, t5, s5
                  srai         a1, a4, 19
                  sub          t3, s11, s1
                  srl          ra, sp, s2
                  sltu         a5, t6, t4
                  sltiu        a5, t3, -63
                  auipc        s2, 761165
                  srli         s11, a5, 30
                  sub          t6, t1, a6
                  slt          a7, a3, s6
                  xor          a1, s6, a2
                  or           s10, a0, s4
                  sltiu        tp, s7, 356
                  lui          t1, 383274
                  slti         t1, t3, -1748
                  sub          s4, a1, t3
                  sltu         a2, s7, ra
                  slli         zero, ra, 11
                  addi         ra, s11, 329
                  sltu         s11, gp, t1
                  lui          s1, 216813
                  srl          gp, a6, s6
                  slti         a3, s7, 1770
                  lui          s2, 608702
                  slt          s1, a7, a5
                  sra          a1, s5, t6
                  sra          t6, s3, s9
                  lui          sp, 171354
                  sltiu        s6, s2, 1345
                  srli         t4, s11, 17
                  ori          a7, s5, -1575
                  slli         t4, a7, 17
                  or           zero, s6, s8
                  sltiu        zero, a0, -836
                  sra          tp, s0, t1
                  andi         s9, t0, 385
                  auipc        a3, 998348
                  auipc        a3, 682502
                  srai         s5, a0, 26
                  and          s2, s1, a4
                  srli         a3, s6, 7
                  sra          t0, s3, s9
                  nop
                  slt          t0, s10, a4
                  sll          a2, a2, s9
                  slti         s6, s0, -304
                  auipc        s10, 259100
                  sub          gp, s9, t5
                  addi         a4, s4, -1021
                  andi         a2, sp, -1153
                  sltu         tp, s1, s6
                  xor          t3, t1, a0
                  sltu         s6, a0, a6
                  addi         t6, t3, 1562
                  srl          a6, t4, s5
                  add          s2, a6, s8
                  lui          t1, 227809
                  xori         a3, t5, 37
                  sltu         s7, s11, s2
                  slti         s1, s0, -252
                  nop
                  slli         a5, ra, 15
                  and          a4, a4, t0
                  addi         a4, s8, -1889
                  srl          a7, a1, a4
                  xor          a7, a1, s1
                  lui          t2, 598934
                  slli         s3, a3, 2
                  srli         s7, s4, 8
                  sltu         s5, s11, zero
                  nop
                  nop
                  srli         s5, s6, 16
                  srli         tp, s4, 16
                  slt          s1, a4, sp
                  slt          t0, s10, a4
                  sra          s10, zero, s8
                  srl          zero, s11, a7
                  andi         s8, s6, 95
                  sltiu        a7, ra, 16
                  sll          a5, s0, tp
                  and          a7, t5, ra
                  sll          s5, s8, a5
                  srl          s2, t1, gp
                  srai         s5, ra, 1
                  nop
                  lui          s11, 164645
                  sra          t2, s9, s1
                  slli         s4, s2, 1
                  srl          a6, s2, t0
                  nop
                  sltu         zero, tp, s8
                  add          s6, s9, s4
                  addi         s9, t5, 1712
                  slti         s11, t4, -359
                  sra          s6, s11, s7
                  slt          tp, s7, t5
                  xori         zero, ra, 1047
                  sub          t6, s11, zero
                  slli         s8, a7, 19
                  and          s6, ra, s10
                  andi         a6, a6, 450
                  and          t4, a2, t6
                  sltu         a1, s3, sp
                  andi         a4, s8, -1319
                  slli         s11, s7, 20
                  lui          a1, 894840
                  sra          s3, s1, s1
                  sltu         t1, s5, s10
                  or           ra, a7, s8
                  and          sp, a0, t6
                  or           s1, a0, ra
                  srli         s10, a0, 6
                  or           t4, a5, s7
                  andi         s2, a7, -172
                  sub          s7, s7, t0
                  xor          gp, s8, tp
                  auipc        s3, 787120
                  sub          zero, a1, gp
                  srai         a3, t3, 28
                  sltiu        s5, s2, -310
                  add          t3, gp, a5
                  lui          s7, 763370
                  sltu         s3, t3, s1
                  andi         s4, s1, 244
                  and          tp, s11, s4
                  auipc        t0, 189767
                  slt          s1, s1, s9
                  xori         a1, t1, -1243
                  slli         s10, ra, 18
                  sltu         tp, t6, gp
                  or           zero, t3, a2
                  srl          a1, t6, sp
                  sll          a3, s1, s10
                  sub          s9, a4, a1
                  add          a3, s4, gp
                  srl          zero, t5, a7
                  sra          s1, t6, s8
                  andi         t0, ra, 1534
                  addi         s2, a6, 1499
                  or           a7, s6, a7
                  sub          tp, a7, tp
                  srl          s3, sp, sp
                  sra          t2, s10, sp
                  sll          s5, a0, s5
                  add          s8, sp, s0
                  xor          t1, s8, t0
                  add          t4, ra, t2
                  li           s3, 0x3eae60b8 #start riscv_int_numeric_corner_stream_14
                  li           t6, 0x80000000
                  li           s8, 0x80000000
                  li           a5, 0xffffffff
                  li           t2, 0x80000000
                  li           t4, 0x0
                  li           s7, 0x80000000
                  li           a7, 0x0
                  li           a4, 0x0
                  li           s4, 0xffffffff
                  nop
                  addi         s7, a4, -1183
                  addi         s8, s7, 1815
                  addi         s3, a7, -1527
                  sub          a7, t2, a4
                  addi         t2, s7, -889
                  sub          t4, a5, t2
                  auipc        s3, 944964
                  auipc        s7, 917967
                  addi         s7, s3, -621
                  add          a4, s4, a5
                  add          s3, t6, s3
                  addi         s3, s8, 1102
                  addi         s4, t4, -211
                  lui          s7, 589816
                  nop
                  add          s3, a7, s4
                  addi         s3, t4, -223
                  sub          t6, s3, t2
                  sub          t6, a7, s3
                  lui          t6, 102514
                  auipc        s3, 488160
                  auipc        t6, 160486
                  addi         s8, s7, -609
                  add          t2, s4, t6
                  addi         t2, s4, -1600
                  auipc        a5, 849957
                  nop
                  add          s3, t6, s3
                  sub          a4, s7, t4 #end riscv_int_numeric_corner_stream_14
                  sltiu        s4, a6, 1931
                  slt          s1, t5, t2
                  slti         ra, s8, 1190
                  sra          gp, zero, a0
                  xori         gp, t2, -1583
                  srli         a6, s10, 29
                  srai         s10, a4, 2
                  srai         s2, sp, 4
                  ori          a6, gp, 659
                  nop
                  sltu         sp, a1, t0
                  sub          s4, s2, a7
                  slt          t3, a6, s4
                  slti         s10, s2, -1673
                  andi         ra, t6, 970
                  or           s4, t3, s2
                  add          s3, a2, ra
                  xor          s1, s1, s11
                  andi         t2, s9, 528
                  slli         s2, tp, 1
                  srl          s11, a0, sp
                  add          sp, s1, t6
                  or           a1, a0, t5
                  sltu         t2, t3, a0
                  slti         s6, gp, -1976
                  slti         a6, t1, -1079
                  sra          t4, t5, t6
                  xor          a6, a7, s6
                  sltiu        t6, gp, -1507
                  or           sp, a4, t4
                  xor          zero, t0, s0
                  xor          s8, t5, s6
                  sltu         t4, a3, s0
                  auipc        ra, 348762
                  sltiu        s3, a4, 1322
                  auipc        s5, 297064
                  slli         a6, t6, 0
                  addi         s9, a6, -743
                  ori          a4, a4, -1407
                  ori          s2, a1, -387
                  add          a1, a6, s4
                  sub          a1, t3, t3
                  add          s7, a5, s3
                  slt          ra, t1, zero
                  xor          t4, a6, s1
                  sltiu        t2, s5, -1847
                  nop
                  srai         a2, s3, 17
                  add          ra, s7, ra
                  nop
                  sra          a1, t3, ra
                  srai         s1, a7, 11
                  add          gp, s6, gp
                  lui          t1, 903468
                  add          s7, s8, s10
                  slli         a1, t6, 4
                  sra          s9, a3, s4
                  slli         t1, a5, 17
                  sltu         s4, a7, a4
                  slt          a4, t2, t3
                  sltiu        ra, s9, -527
                  srli         t4, a6, 5
                  srai         t6, s6, 6
                  srli         t2, a2, 10
                  srl          a2, s1, ra
                  slt          gp, t3, s0
                  ori          a6, s3, -490
                  sltiu        a4, a3, 94
                  ori          s3, t1, -56
                  or           a2, t5, a7
                  slli         a7, a1, 11
                  slli         sp, t0, 3
                  slti         s11, a1, 1587
                  andi         gp, s7, -1645
                  sra          a3, a7, t6
                  slti         a3, s5, 1786
                  sltu         ra, s9, tp
                  and          t6, s8, t1
                  add          a1, s6, s6
                  sub          t3, a4, s9
                  slt          s10, sp, sp
                  slt          t2, t0, gp
                  andi         s6, t1, 625
                  xori         zero, t0, 2000
                  sra          a5, s7, a1
                  sra          s1, s10, s0
                  andi         t0, a4, -1490
                  sub          tp, s9, a6
                  xor          t1, t6, a3
                  sltu         a4, a2, sp
                  lui          sp, 486129
                  auipc        a7, 800648
                  or           gp, t2, s10
                  addi         s10, sp, -1997
                  ori          t3, t1, -76
                  srai         s3, s4, 11
                  sltiu        s4, s5, -265
                  and          s2, t1, t5
                  sra          s1, zero, s10
                  sltiu        a1, a1, -1489
                  lui          zero, 31474
                  srli         a5, ra, 1
                  xori         a7, s8, -29
                  slt          t2, s5, s5
                  auipc        t0, 780782
                  sltu         ra, a0, t2
                  sltu         a1, a6, a3
                  add          zero, t6, t4
                  and          gp, t4, s7
                  sra          a1, a0, tp
                  addi         a4, s5, 632
                  andi         s7, a2, 614
                  add          s7, t5, t4
                  and          s8, t2, t6
                  auipc        zero, 370879
                  srai         t0, s1, 7
                  sll          s8, s6, gp
                  addi         zero, a2, 1214
                  srl          s10, s5, t2
                  andi         s9, a4, -748
                  srai         t1, tp, 2
                  and          t4, s11, a4
                  sll          t4, zero, t5
                  and          s1, t5, a2
                  sltiu        s10, s1, 2043
                  addi         s3, s2, -1381
                  slti         a1, s4, -1666
                  slti         a7, s4, -1480
                  lui          s1, 565235
                  sra          t4, gp, a5
                  xori         sp, a2, 1277
                  nop
                  xori         t4, s7, -1521
                  sll          ra, s11, a1
                  addi         s8, s8, 473
                  or           a1, t4, t3
                  sll          sp, t1, a2
                  srl          a6, s7, a1
                  sltiu        s1, gp, 1196
                  or           a2, t1, gp
                  and          s2, s2, s6
                  xor          s9, sp, a6
                  addi         s9, s0, 1788
                  sltu         t0, t1, s2
                  and          s11, t3, s8
                  slt          ra, a5, a1
                  slt          s4, s3, s2
                  srli         ra, t1, 24
                  sub          zero, s9, s1
                  nop
                  slti         ra, s8, -401
                  srli         ra, s10, 28
                  xor          a7, s5, s7
                  nop
                  xori         t1, ra, -1580
                  xor          s7, s3, s1
                  sll          t1, t0, s11
                  auipc        s4, 307612
                  srl          s2, t1, s8
                  lui          sp, 257693
                  add          t1, a2, a6
                  and          s9, s11, t1
                  sra          ra, zero, t3
                  andi         s2, a6, -1972
                  or           tp, a1, ra
                  andi         a2, s5, -17
                  andi         a1, a2, 536
                  srl          zero, a6, gp
                  slt          s1, a1, s1
                  nop
                  slt          s8, s1, s1
                  sll          a5, gp, s4
                  slli         tp, gp, 5
                  andi         a1, t6, 61
                  lui          s9, 863858
                  sra          a2, s8, s7
                  sltu         s3, a1, a0
                  sra          a7, a2, a4
                  xori         s1, a7, -907
                  sltu         s3, a7, s5
                  sra          a7, s9, s6
                  sra          t0, t2, a7
                  sra          s6, a2, a1
                  srai         s4, s3, 3
                  andi         s10, s5, -1814
                  andi         t1, t3, 864
                  srl          t2, gp, t3
                  sltiu        s9, a3, -850
                  xor          t0, s0, a0
                  auipc        a3, 660705
                  xori         s4, a6, -412
                  srai         s9, s4, 30
                  and          gp, sp, gp
                  slt          t1, t0, s7
                  srli         tp, a1, 4
                  lui          t1, 403280
                  slt          s8, a2, a4
                  slt          s7, t2, s3
                  sub          t3, t6, s1
                  xor          s9, t1, s0
                  xor          zero, t0, s9
                  srli         t0, s1, 0
                  xor          s8, t1, t4
                  xor          zero, s11, a2
                  nop
                  slli         s1, s4, 8
                  xori         s2, s5, 81
                  andi         t0, s6, -532
                  xor          s9, t1, a5
                  or           s5, s1, t0
                  lui          s11, 90973
                  andi         s3, s8, 831
                  lui          sp, 194189
                  andi         ra, a5, -516
                  xor          a7, t2, tp
                  xori         a2, a6, -1456
                  sra          a2, t4, s1
                  slt          t2, a0, s4
                  sltu         a5, t0, s11
                  lui          s6, 377308
                  addi         t4, s5, 1844
                  xor          tp, s11, s7
                  slti         t1, s5, -931
                  xori         t1, t2, 812
                  nop
                  addi         t0, s6, 1777
                  sra          a4, t2, s7
                  srai         a2, gp, 27
                  sltu         a3, a6, a2
                  xor          t4, s8, t2
                  sll          a3, t3, a7
                  sltu         s7, gp, s4
                  sra          s3, t0, s11
                  srli         s2, s8, 7
                  add          s8, t5, t4
                  ori          a7, s11, 303
                  add          s1, s6, a4
                  slli         t3, s3, 3
                  sra          a5, t4, s8
                  srai         t6, s9, 25
                  add          t1, a6, s8
                  and          a6, s0, s5
                  srai         s4, t3, 14
                  ori          s1, s1, -1505
                  srl          a3, t0, t3
                  srai         ra, s2, 23
                  nop
                  auipc        ra, 96894
                  nop
                  auipc        s9, 638646
                  xori         gp, t2, -2011
                  or           s10, a4, s10
                  sll          a4, t5, s10
                  sub          ra, t0, s7
                  sub          a5, s0, a1
                  and          s11, a7, s5
                  srai         t4, a0, 6
                  sub          a2, a6, a2
                  ori          t1, a0, -538
                  slt          a6, t0, s1
                  slli         a1, gp, 12
                  or           a5, s11, s9
                  andi         t4, s1, -323
                  lui          s2, 237684
                  or           s6, a3, s1
                  ori          s5, s3, -1958
                  lui          a2, 905334
                  andi         t4, s0, -1897
                  ori          t2, a3, -775
                  slt          a2, s7, sp
                  sll          ra, s9, a5
                  andi         s10, t3, 1099
                  slti         t3, s6, -1561
                  slti         a3, gp, 1227
                  lui          a1, 909152
                  srl          t4, s8, gp
                  sll          a2, a1, a5
                  slli         s1, a7, 26
                  addi         s1, s8, -997
                  sltiu        a6, s2, 1376
                  slli         s3, a1, 7
                  auipc        s3, 370099
                  sll          s1, s0, a4
                  sub          a1, ra, t5
                  slt          t6, s5, s1
                  srli         t4, gp, 4
                  sra          s8, t3, s8
                  srli         a2, s3, 8
                  slti         a7, s7, 1683
                  sub          s6, s0, s8
                  addi         t0, sp, 1771
                  xor          a6, s2, s7
                  ori          s3, zero, 1584
                  srai         ra, t2, 4
                  auipc        sp, 99500
                  srai         s2, a0, 10
                  srli         gp, s6, 31
                  srli         a6, a7, 6
                  sll          t6, s0, s6
                  auipc        a2, 31262
                  sub          zero, s1, a1
                  srl          a2, s8, s8
                  sltu         s7, a3, s1
                  auipc        t6, 22104
                  andi         s3, s0, 238
                  xori         s1, a2, -190
                  ori          a1, t3, 1576
                  auipc        t1, 64221
                  nop
                  and          t0, t3, gp
                  srai         t4, gp, 4
                  auipc        s7, 549259
                  addi         t1, t3, 593
                  addi         a4, s10, 1567
                  xor          s6, a5, s9
                  addi         zero, s11, -813
                  sra          t1, s10, s8
                  andi         t2, s0, -1145
                  addi         s1, a7, 1647
                  addi         a2, t6, 1693
                  sub          a3, s9, s0
                  sub          a4, t6, s10
                  srai         a2, t6, 13
                  srli         s8, s3, 8
                  ori          t3, a1, 1389
                  sra          a3, a3, t1
                  srl          a1, sp, a6
                  sltu         s11, a3, s10
                  srl          s6, s2, zero
                  nop
                  addi         sp, a0, 1707
                  nop
                  sltiu        gp, s5, -737
                  andi         a4, s7, 1564
                  sll          a4, t2, s0
                  sub          s9, s2, ra
                  sub          a1, s8, s6
                  nop
                  slli         s7, t1, 26
                  auipc        t2, 788819
                  xor          s9, s10, s8
                  sub          s2, s10, s8
                  nop
                  addi         t4, s10, -768
                  and          t2, t3, s0
                  xor          a1, sp, a2
                  lui          gp, 567046
                  xor          tp, t4, s10
                  ori          s6, s5, 952
                  and          s6, s3, a5
                  slt          s3, s10, t4
                  srai         a3, t6, 12
                  srai         s5, t1, 5
                  sltu         s5, s5, t3
                  sltiu        ra, zero, -1247
                  sll          a4, t2, a1
                  slti         s6, t0, -430
                  or           a7, s1, a5
                  sltiu        t3, gp, 1955
                  or           s4, s5, a2
                  lui          a6, 920498
                  xor          t1, s0, t3
                  srli         s10, a3, 2
                  slti         t3, gp, -1539
                  xor          zero, a0, t6
                  sltiu        t3, s1, -1044
                  lui          t2, 674532
                  and          a1, t0, s3
                  and          s1, tp, a7
                  sll          a7, s7, a4
                  xori         a6, a5, -1662
                  sltu         t6, s4, a1
                  sll          a7, a2, s1
                  sltu         s2, s2, s1
                  sub          a3, s8, zero
                  sll          t1, t5, s3
                  addi         a2, t2, 1634
                  srli         s4, a6, 22
                  srai         s8, s7, 29
                  ori          s8, s5, 748
                  srl          t1, s0, s5
                  or           t4, t1, s9
                  ori          a7, s1, -1777
                  sltiu        a7, a1, 460
                  auipc        a7, 357638
                  xor          ra, s2, a7
                  sub          s11, a6, zero
                  sltiu        t4, sp, -684
                  and          s4, s8, gp
                  xori         s4, s4, 302
                  or           s10, s2, s9
                  addi         a1, t4, -713
                  sra          s5, s3, s8
                  xor          s7, a7, s7
                  slli         tp, a1, 27
                  auipc        a2, 654755
                  or           t6, a1, t0
                  add          t4, a7, s8
                  sub          zero, a5, sp
                  andi         zero, s2, -1927
                  sra          s11, a7, t1
                  srl          t4, a1, t3
                  or           s7, t2, s10
                  xori         tp, a2, -795
                  or           t0, zero, a0
                  auipc        s10, 224435
                  srli         a2, sp, 23
                  addi         t4, s10, -1869
                  or           s10, s1, s4
                  andi         s4, a0, -223
                  sltiu        a4, s8, 1159
                  sub          sp, s2, s9
                  xor          s8, s2, t3
                  lui          s4, 196318
                  xori         t4, s3, 1567
                  srli         a4, a7, 18
                  srai         t3, s5, 9
                  nop
                  or           a3, ra, t3
                  and          gp, t4, a0
                  sub          a2, a3, a7
                  andi         s4, a1, -2042
                  or           t6, s10, a6
                  sub          s6, t5, s0
                  sra          t1, s0, a6
                  auipc        t3, 900194
                  sltiu        s10, s9, 1036
                  slli         s3, s11, 6
                  xori         t6, t4, 1261
                  sra          a7, a3, s1
                  srl          s4, t2, s4
                  sltiu        a4, s9, 1634
                  sll          s9, a0, a3
                  lui          a6, 964834
                  and          t6, s3, sp
                  sltiu        t2, sp, 1882
                  lui          a2, 660919
                  slti         s11, a1, -480
                  xori         a4, t3, 870
                  addi         a3, s10, 846
                  lui          t6, 470716
                  srli         a5, zero, 6
                  ori          a2, a2, -1929
                  ori          a4, ra, 327
                  auipc        tp, 729722
                  srai         t0, a4, 28
                  xori         t1, s11, -455
                  xor          a4, a2, s0
                  sra          t3, s5, zero
                  nop
                  srl          tp, s4, zero
                  or           a2, a5, s1
                  sltu         s7, s6, a0
                  ori          a7, a5, -1429
                  add          a6, s3, a4
                  xor          a1, t4, s8
                  sub          s5, t0, s9
                  sll          a4, gp, t6
                  xori         s1, t0, 1434
                  addi         s10, s5, -1868
                  and          sp, s3, s10
                  srai         t2, s2, 12
                  ori          t3, a7, -398
                  sub          t4, t2, sp
                  srli         gp, tp, 20
                  sra          s7, t3, s1
                  slti         s2, s11, -828
                  slt          t3, t2, s6
                  sub          a2, s0, a3
                  slli         s2, ra, 19
                  ori          a7, s0, -170
                  srai         s2, a0, 26
                  srai         a2, a1, 25
                  slli         a3, s9, 30
                  ori          a2, t4, -955
                  xori         s3, a6, 176
                  slti         t1, t6, 1168
                  slti         t4, s9, 1400
                  nop
                  sltu         s8, a2, s0
                  xori         s11, s7, -1353
                  sra          t2, a6, a1
                  srl          a3, s3, t6
                  sll          s6, t2, s3
                  sll          ra, s5, s0
                  sltiu        sp, s10, -1364
                  nop
                  add          gp, t0, zero
                  or           a5, s9, t3
                  srli         s2, zero, 10
                  ori          s2, t3, 1983
                  srli         sp, s6, 25
                  nop
                  ori          sp, a6, -772
                  nop
                  add          a4, a6, t6
                  sltiu        a1, t2, 1237
                  slt          s10, s6, s4
                  or           a2, t0, a0
                  nop
                  sll          a1, a2, t2
                  srli         t2, t0, 7
                  sll          ra, s5, a2
                  sra          zero, zero, ra
                  add          s8, t2, a0
                  sub          s7, s2, ra
                  auipc        a6, 216883
                  srai         s11, tp, 18
                  xor          a2, t1, s7
                  add          s11, t4, t0
                  sltiu        s3, a2, -467
                  srai         t3, s11, 13
                  nop
                  slti         t4, s6, 468
                  andi         t4, s2, -1792
                  xor          a4, s5, s2
                  srai         s11, a6, 9
                  and          s5, a6, ra
                  slt          s9, ra, s4
                  lui          gp, 95277
                  sub          s5, t1, s8
                  sltiu        s7, t2, -1946
                  sll          sp, zero, s11
                  and          t6, a4, s0
                  sll          a5, t5, gp
                  and          a5, t1, a7
                  sltiu        s1, s2, 2016
                  xor          tp, t6, s3
                  and          s2, t6, a3
                  xor          s1, ra, a6
                  slt          gp, t5, s0
                  or           ra, s0, s9
                  andi         s9, s1, 1956
                  nop
                  xor          s1, a3, s5
                  xori         t6, a7, -1729
                  slt          a3, s3, a2
                  andi         t2, s9, 932
                  and          sp, s6, a2
                  ori          a6, a2, 1913
                  slti         t0, a5, -727
                  slti         t3, s6, -1106
                  sub          s8, ra, s10
                  sll          a1, s10, a7
                  or           s2, tp, s0
                  sub          t1, sp, t1
                  or           a2, a4, s3
                  add          t3, a7, zero
                  add          a6, ra, ra
                  nop
                  sub          t6, s10, s11
                  and          a5, s1, t3
                  ori          s3, ra, 992
                  srli         gp, s8, 20
                  nop
                  sub          t3, a5, sp
                  slt          s2, a7, a4
                  sra          t2, tp, s3
                  slt          a1, a7, a0
                  ori          a2, s10, -1975
                  ori          s11, a1, -1653
                  srli         s9, s2, 31
                  and          sp, a3, a0
                  sll          a7, s7, s5
                  andi         t1, tp, 832
                  or           s8, a4, s4
                  or           a4, t4, s0
                  sll          a7, t3, a4
                  xori         t2, a0, 868
                  addi         s11, t2, 1303
                  lui          tp, 906240
                  xor          s10, s6, t4
                  xori         s9, t4, -309
                  ori          a7, sp, 1763
                  sltiu        a1, a2, -1909
                  andi         s11, s2, -1959
                  nop
                  lui          s8, 1000875
                  slli         s2, t3, 14
                  nop
                  srli         zero, tp, 8
                  slli         s1, ra, 24
                  slti         a2, s2, 1718
                  ori          t4, s8, 482
                  and          a7, t5, a7
                  lui          t4, 847356
                  addi         s4, ra, -275
                  xori         a3, s7, -582
                  xor          a6, t0, a3
                  sll          s5, s10, a1
                  sltiu        s9, s10, -229
                  sra          t3, s4, s6
                  add          a2, s3, s7
                  sll          gp, s4, a1
                  srl          t2, s6, t3
                  slli         a4, s11, 15
                  sltiu        ra, s4, 391
                  sltiu        s5, s7, 1588
                  sll          a1, t2, s9
                  xori         s2, t0, -625
                  srl          s11, gp, t4
                  srai         t3, a6, 10
                  or           a3, gp, s7
                  srai         t4, sp, 14
                  srl          t4, a4, s9
                  or           gp, a0, a0
                  sub          s8, a2, a2
                  ori          s9, s2, 1509
                  slti         s5, t0, 1634
                  sra          t1, a3, s6
                  sltu         a4, t0, s11
                  addi         tp, a7, 1241
                  ori          s4, sp, 573
                  and          t4, a2, t0
                  sltiu        s4, s0, 1412
                  andi         t2, s10, -1035
                  slti         gp, ra, 422
                  lui          s7, 757683
                  add          s3, a7, t4
                  sra          t0, t0, s10
                  sltiu        sp, s4, -908
                  sltiu        a5, gp, -162
                  srli         s5, a4, 31
                  nop
                  nop
                  xor          s5, sp, a4
                  slt          s7, tp, t3
                  xori         s5, s2, 1864
                  xor          t0, a3, t0
                  sltiu        a4, s10, -1255
                  ori          s9, s2, 103
                  sltu         a2, s0, a4
                  xori         a4, t3, 179
                  srl          s8, tp, t2
                  slti         t4, t2, 76
                  xor          sp, t2, s2
                  sub          s5, tp, s10
                  sltu         s8, t0, s3
                  srai         s8, s5, 1
                  or           s2, t4, s1
                  add          s6, sp, s1
                  auipc        a1, 1041158
                  sra          a4, a6, t0
                  addi         a3, a0, 533
                  or           t0, a1, t4
                  xor          zero, s2, a6
                  sltiu        gp, s6, -1182
                  slli         s6, s11, 3
                  and          tp, s9, t1
                  auipc        a4, 771131
                  sll          ra, a4, a5
                  slli         s1, t1, 26
                  sltu         s6, gp, a1
                  lui          a1, 431486
                  srai         t6, s5, 20
                  xor          t1, s9, a1
                  srli         t2, a2, 9
                  sll          zero, s8, t6
                  slti         t3, a4, -1493
                  lui          a3, 693484
                  sltu         s2, t6, s0
                  add          s6, s3, s3
                  auipc        s1, 241823
                  andi         t0, a3, -1084
                  sub          s3, a0, t4
                  sra          s5, s2, tp
                  srli         s2, gp, 22
                  sltiu        tp, s3, -1087
                  sltiu        tp, gp, 1406
                  and          tp, t3, a0
                  srai         s4, s10, 16
                  slt          t2, ra, a5
                  lui          s11, 377759
                  nop
                  sra          t4, a2, a7
                  or           t0, zero, t6
                  add          t6, a4, s5
                  sltu         t4, s3, s2
                  srli         s8, s11, 9
                  sub          zero, a6, t3
                  sub          s1, a1, a6
                  sub          t1, s7, a3
                  sll          s5, t6, s1
                  auipc        a2, 315675
                  and          s6, s6, a0
                  sll          zero, t5, a4
                  sra          a5, t2, s9
                  add          s4, s1, a6
                  addi         a1, a1, 1348
                  xor          s1, gp, a2
                  andi         s10, s8, -623
                  slt          a5, a0, t0
                  slti         s5, t5, 1308
                  addi         t4, s0, 1180
                  slt          ra, a1, t4
                  andi         t6, a4, 1031
                  auipc        gp, 1032777
                  slt          s7, sp, s7
                  xori         ra, s10, 16
                  slli         s3, t2, 26
                  xor          t3, a0, t0
                  lui          s3, 626368
                  srli         a6, t6, 6
                  xor          s10, a5, a3
                  add          gp, a1, a1
                  auipc        s2, 1026501
                  nop
                  andi         a4, a5, 1667
                  srli         a3, t6, 21
                  xor          t1, s4, t1
                  lui          tp, 560009
                  andi         s9, s1, -305
                  addi         s10, s10, 1718
                  and          zero, s1, sp
                  add          a6, s0, s9
                  srl          tp, a0, a5
                  xori         s1, a5, -56
                  lui          sp, 763186
                  sltiu        t4, s4, -456
                  auipc        s8, 363826
                  andi         a6, t5, -655
                  sra          a1, s3, s0
                  nop
                  sltiu        s3, a6, -1155
                  and          a3, a0, s6
                  and          s2, s1, gp
                  ori          s9, t0, -394
                  nop
                  sltu         a1, sp, s11
                  slli         tp, s1, 26
                  sll          s11, t6, a1
                  srli         s6, s0, 31
                  andi         a3, s3, -1328
                  sltu         a1, gp, s4
                  slli         zero, t0, 18
                  xor          a1, gp, t6
                  ori          s8, ra, 1255
                  sltu         gp, s11, a7
                  andi         t1, s0, -1346
                  xori         s10, gp, 537
                  slt          s1, t0, t6
                  sltu         s8, a7, s1
                  sub          t3, t6, tp
                  or           a3, a2, s3
                  xor          a1, sp, t0
                  slli         s6, a4, 2
                  lui          s7, 498798
                  add          t4, t4, t5
                  and          s6, t0, t5
                  addi         s5, a2, 1328
                  sra          t2, t2, s1
                  sra          s9, t6, sp
                  lui          a2, 116830
                  xori         s10, a2, 1388
                  sub          zero, s9, s11
                  srai         s5, a5, 13
                  and          t1, a0, t0
                  and          tp, gp, t2
                  srli         a5, t3, 1
                  ori          s1, s1, -137
                  slti         a4, t5, 547
                  auipc        a6, 473885
                  sltu         ra, s10, s1
                  sll          s7, t5, a5
                  sll          t6, t1, t4
                  auipc        zero, 388147
                  sltiu        s1, s8, 1756
                  srl          t2, a5, tp
                  xori         t0, s8, -461
                  xori         s5, t6, 616
                  ori          a2, t3, 1226
                  and          s4, a2, a6
                  srli         t1, a4, 12
                  srl          a7, s6, t6
                  andi         a6, a1, 1323
                  xori         t1, a6, 921
                  sub          a6, s7, a7
                  ori          gp, s9, 1756
                  xor          a7, a2, s3
                  srai         gp, t0, 3
                  slli         s4, t0, 16
                  nop
                  srl          t1, s1, s4
                  and          s3, t2, a6
                  xor          s11, t3, s8
                  srl          ra, a5, s7
                  srl          a7, s11, t1
                  ori          s1, sp, 401
                  srli         t6, t0, 1
                  srli         a7, a2, 13
                  xori         zero, a6, -1875
                  sltiu        a5, a1, -1731
                  sltiu        s2, a4, 1632
                  srl          zero, a7, a3
                  sltu         a5, t0, tp
                  and          a1, a5, s2
                  srli         s3, s10, 24
                  slli         a2, s6, 14
                  ori          s1, a6, 1217
                  slti         t3, s0, 1529
                  sub          a6, a2, s6
                  sltu         s11, s1, sp
                  sra          s8, gp, t6
                  srli         t0, s2, 3
                  xor          s9, zero, s9
                  sll          s3, sp, t6
                  sll          t1, a3, a1
                  srai         s8, s2, 4
                  slt          t4, s9, t2
                  lui          t6, 459262
                  slt          a1, a2, a6
                  xori         s6, a1, -1441
                  srl          ra, a1, a1
                  lui          s6, 442523
                  auipc        tp, 964352
                  lui          a7, 440916
                  addi         s1, s6, -1481
                  add          s5, a3, t6
                  ori          a3, a5, -108
                  srai         t4, t5, 28
                  slli         t4, s0, 17
                  sll          tp, a6, s9
                  ori          t1, a2, 825
                  sub          a7, a6, a7
                  andi         t3, a0, -1256
                  or           t2, s3, s11
                  lui          s11, 907516
                  addi         s6, s6, 1893
                  sll          s2, a4, t5
                  slt          a7, t3, s3
                  xor          s8, s10, t3
                  nop
                  slti         t3, a7, 2029
                  sltu         s9, s1, s9
                  nop
                  sub          s2, zero, s3
                  srl          t3, a3, t1
                  sltu         s10, s11, t1
                  add          s9, t3, s5
                  lui          s2, 491546
                  add          s10, t5, a4
                  slli         t6, t3, 28
                  andi         s8, a3, -446
                  sltu         s5, t5, t3
                  xori         s3, s5, 465
                  addi         tp, s7, 582
                  slli         gp, t4, 17
                  sub          gp, a5, t0
                  sltiu        s6, t2, -1552
                  add          a2, s6, s8
                  xor          a2, sp, a4
                  add          s2, s4, s1
                  sltu         t6, t4, s5
                  or           s3, tp, s4
                  or           a1, a2, s6
                  sub          gp, t5, t2
                  auipc        s11, 383105
                  and          s11, a5, t1
                  and          tp, s0, a4
                  lui          tp, 186543
                  and          s2, s2, s11
                  addi         a6, s6, -1866
                  addi         sp, t4, -846
                  or           zero, tp, t2
                  sltu         s6, s1, ra
                  sra          s5, a3, t0
                  lui          a1, 660604
                  auipc        s9, 875866
                  xori         a1, tp, -989
                  ori          a3, s10, -297
                  or           a2, ra, s10
                  sra          s5, t2, s2
                  srl          s6, a5, a5
                  xori         s11, zero, -1523
                  andi         a6, a0, -1562
                  sra          a4, gp, t1
                  or           s10, sp, a5
                  xori         s11, s4, 837
                  auipc        t3, 574
                  ori          a5, t0, 999
                  addi         t6, t1, 201
                  slti         ra, a2, 1551
                  sll          s4, a4, t3
                  nop
                  sub          t6, a6, t6
                  andi         s5, a0, -474
                  sltiu        s7, a2, 1329
                  ori          t1, gp, -574
                  xor          t2, s2, t0
                  sltu         s10, zero, sp
                  srl          s9, a6, s2
                  xor          tp, s10, t6
                  add          t2, t5, t0
                  sll          t0, a0, s0
                  addi         zero, s2, 274
                  nop
                  or           s1, s4, s9
                  sltu         s8, a3, a5
                  lui          zero, 907290
                  srl          s5, a3, a6
                  slti         s4, s11, 926
                  and          a3, s8, sp
                  auipc        a3, 753436
                  ori          a6, a0, 1567
                  sltu         a2, s0, s11
                  add          s8, tp, t0
                  or           s6, a7, s7
                  add          a4, tp, gp
                  xori         s6, t6, 1829
                  sub          s1, s1, tp
                  andi         a3, t0, -1585
                  xor          s6, a3, t5
                  sra          s2, t0, sp
                  lui          s4, 215896
                  nop
                  sra          t0, s2, tp
                  sra          s10, s8, s10
                  add          ra, zero, t6
                  srli         t3, a4, 15
                  ori          a4, t4, 526
                  xori         a3, s0, 286
                  xor          s11, a5, s8
                  ori          s3, t0, 427
                  lui          t3, 551329
                  sltiu        a3, s3, 529
                  sll          s1, a2, s6
                  add          s11, a1, s4
                  add          s3, sp, s10
                  slli         a1, s6, 30
                  sub          s10, s6, a7
                  sra          sp, tp, sp
                  slli         a6, gp, 28
                  slti         s4, t3, -687
                  srli         a1, t2, 9
                  addi         a7, s9, -834
                  addi         s8, s1, -1297
                  slti         s7, a0, -941
                  xori         zero, tp, -1607
                  nop
                  addi         a5, t1, 1197
                  auipc        s1, 932082
                  sra          t3, a7, sp
                  sltiu        ra, a0, -28
                  xor          a3, s10, s7
                  sra          a1, a3, a0
                  slli         s1, a5, 21
                  srli         a2, s6, 31
                  addi         t2, s11, 1143
                  xor          gp, t0, s7
                  srai         s11, t0, 26
                  li           a5, 0xda064eb8 #start riscv_int_numeric_corner_stream_7
                  li           a7, 0xffffffff
                  li           s10, 0x10800a4b
                  li           t6, 0x0
                  li           a2, 0xffffffff
                  li           tp, 0x0
                  li           a3, 0x532c6f5
                  li           s8, 0x80000000
                  li           a1, 0xffffffff
                  li           sp, 0xffffffff
                  auipc        t6, 448335
                  auipc        a5, 556357
                  auipc        t6, 701886
                  add          a2, s8, t6
                  lui          a7, 931077
                  addi         tp, a3, -1182
                  lui          a5, 172488
                  auipc        s8, 84501
                  auipc        s10, 413834
                  auipc        s8, 233370
                  add          a3, a2, sp
                  nop
                  sub          a1, a5, s10
                  lui          a2, 600658
                  addi         a5, a2, 157 #end riscv_int_numeric_corner_stream_7
                  addi         tp, a0, 400
                  andi         a6, t6, 1727
                  ori          t6, s5, 1343
                  ori          t6, a6, 189
                  sub          s6, a6, t1
                  auipc        gp, 919024
                  sltiu        s7, s11, -144
                  add          s2, tp, t2
                  srai         s5, zero, 14
                  add          s5, gp, t5
                  lui          t3, 774860
                  sra          ra, s3, t5
                  slt          a6, s6, s6
                  xor          tp, s7, s2
                  slli         t4, s10, 9
                  nop
                  nop
                  sub          s8, sp, a7
                  or           s10, s2, t3
                  sltu         s6, s9, s8
                  sll          t2, s2, t3
                  add          s11, s1, sp
                  andi         t1, t6, 722
                  auipc        sp, 376423
                  sltu         t1, tp, a3
                  slti         s3, s4, -491
                  srli         s9, zero, 23
                  andi         t0, s9, 5
                  addi         ra, s3, 939
                  andi         s2, s8, 94
                  sll          s7, s0, a1
                  srl          a1, a4, a7
                  sub          a5, a4, a0
                  auipc        t3, 798340
                  ori          sp, gp, 852
                  sltiu        t2, s8, -311
                  ori          gp, t4, -195
                  auipc        s8, 1025588
                  slt          s3, a5, a5
                  sra          tp, s6, t1
                  addi         s11, t0, -205
                  nop
                  srai         t1, t5, 21
                  srli         s3, t1, 13
                  auipc        a3, 952544
                  xori         t2, a6, -1508
                  andi         t6, s10, 2038
                  xori         s6, a5, 283
                  ori          s3, s4, -1544
                  addi         t2, tp, -1760
                  andi         s6, s9, 1073
                  slti         a5, a4, 1625
                  ori          t0, a7, 637
                  slt          t3, s7, a5
                  slli         s8, a4, 23
                  auipc        s11, 86320
                  xori         a1, a7, 1419
                  or           s2, a7, ra
                  slli         a4, tp, 30
                  srli         tp, a4, 2
                  lui          a6, 153119
                  auipc        s2, 344576
                  lui          s8, 407828
                  andi         a3, t3, 1057
                  srai         s1, s3, 28
                  slti         a2, s6, 1622
                  auipc        gp, 88958
                  addi         t6, a5, -71
                  slt          s10, s5, s9
                  andi         t4, t0, -1588
                  slt          s11, a1, t2
                  ori          s10, s10, 1443
                  srl          s9, t1, s9
                  sub          t3, s1, t3
                  or           gp, a3, ra
                  xori         ra, ra, 1043
                  and          s4, s7, s9
                  slt          s7, s2, sp
                  sltu         s2, s3, zero
                  or           a3, ra, s3
                  xori         a5, t6, -751
                  sltu         a2, tp, a3
                  sltiu        ra, a1, -814
                  and          s11, s5, s9
                  xori         s4, s9, -1026
                  sltu         s6, t3, s4
                  nop
                  sltu         t3, s9, t1
                  sll          s9, sp, s2
                  or           gp, s5, a3
                  auipc        s3, 739612
                  slt          a5, s11, s2
                  slt          s7, a7, t6
                  sra          s5, sp, a0
                  sltiu        a5, a7, -116
                  slli         s8, a3, 24
                  sltiu        ra, a6, 574
                  sub          tp, a2, t1
                  sra          t1, s9, t2
                  srli         t3, s7, 21
                  or           s2, t1, t0
                  sra          a1, s8, a0
                  srai         t4, t2, 11
                  ori          t3, a1, -326
                  addi         s9, s11, -1208
                  auipc        a5, 497740
                  lui          s8, 252525
                  sub          t4, t3, t4
                  lui          t2, 174773
                  nop
                  auipc        s5, 621011
                  slli         a7, s2, 9
                  and          a5, a3, s1
                  add          s10, s3, ra
                  addi         s2, s6, 488
                  srai         gp, gp, 9
                  xor          s10, zero, s7
                  andi         t4, s0, -1535
                  sll          t6, ra, a4
                  xori         s6, s4, -1374
                  slli         a2, s8, 18
                  srl          s7, t0, s9
                  sltu         s11, s10, a5
                  slt          s8, a5, a1
                  sll          gp, zero, zero
                  auipc        s3, 723600
                  srli         s4, s8, 8
                  sra          s1, s5, gp
                  slli         t6, s3, 5
                  addi         s2, a6, 312
                  srai         t3, a2, 12
                  srli         a1, ra, 30
                  nop
                  auipc        a7, 282356
                  and          s8, t2, ra
                  lui          t1, 344554
                  ori          t4, sp, 449
                  auipc        ra, 80463
                  and          s8, a7, a4
                  andi         s11, ra, 445
                  slt          t6, t3, t6
                  slti         s6, tp, -293
                  sll          t0, t4, t0
                  lui          tp, 739683
                  auipc        s11, 794145
                  xori         s6, s2, 564
                  sra          t0, a2, s0
                  xor          tp, t2, ra
                  slti         a6, s0, 1765
                  auipc        a5, 372318
                  auipc        a4, 423192
                  srai         s9, a2, 0
                  srli         s11, s4, 26
                  sll          a2, gp, a3
                  addi         s8, s8, 84
                  auipc        a7, 613049
                  slti         s11, s3, -376
                  ori          a4, gp, 1971
                  nop
                  slli         a6, a5, 25
                  srl          s6, s5, s2
                  slli         t1, t3, 9
                  srli         a4, t6, 15
                  srl          s1, sp, t5
                  srai         a1, s1, 19
                  sltu         s9, t6, tp
                  or           a2, t1, s8
                  or           s7, s1, t3
                  nop
                  ori          s1, s0, 1467
                  andi         s5, s2, -1831
                  slli         t2, s5, 11
                  and          s3, a1, ra
                  slli         t3, s6, 31
                  sub          s7, t2, s1
                  sub          tp, t0, a2
                  sra          s1, a3, s8
                  lui          s9, 376367
                  srli         t1, a2, 17
                  srai         ra, s6, 2
                  addi         t0, s11, -1349
                  srli         s9, s0, 24
                  slt          s6, a6, s11
                  nop
                  xor          sp, t3, t0
                  slli         zero, s0, 23
                  sltiu        s2, s6, 430
                  auipc        zero, 459604
                  srai         t6, t3, 20
                  sll          s2, a1, t2
                  slli         t2, zero, 24
                  and          a7, s1, a5
                  ori          s2, a3, -446
                  slli         t6, tp, 11
                  sltu         a5, s11, gp
                  sll          a5, t2, s7
                  srai         a1, a3, 24
                  srl          s1, a3, s1
                  xor          a4, a1, a2
                  srli         s2, a6, 15
                  sltiu        a1, s0, 1697
                  xor          a1, zero, a0
                  nop
                  sltiu        s9, s9, -1292
                  sra          t6, a1, s2
                  or           s10, tp, a2
                  addi         ra, s0, 726
                  sltu         a4, s3, t6
                  sltiu        s3, s2, 305
                  auipc        t6, 619665
                  xori         s5, s9, 495
                  auipc        s11, 135498
                  addi         s10, a2, -654
                  sll          s4, s10, t3
                  ori          t2, a7, -1292
                  sltu         s5, t1, t4
                  slti         tp, s5, 1137
                  sltiu        t2, a4, 1224
                  slti         s7, t5, 881
                  sra          t0, t1, s10
                  sra          a7, t4, s5
                  srl          s7, s10, t6
                  sra          a5, a3, s6
                  slt          t0, a1, s5
                  slti         s11, s7, -1478
                  slt          a7, ra, a2
                  srl          a1, zero, a3
                  and          gp, a3, s10
                  addi         sp, sp, -1636
                  sub          t2, a1, t4
                  srli         s4, tp, 4
                  srai         t4, a7, 12
                  addi         s2, t4, 233
                  xori         t1, a5, -110
                  add          a4, t1, t4
                  sub          t1, gp, t5
                  xor          a4, s2, sp
                  add          s6, s1, t6
                  andi         t0, t6, 1877
                  sub          s5, a6, t6
                  srl          t1, a6, gp
                  slti         sp, t1, 888
                  slli         s1, t2, 30
                  sltiu        t6, gp, -1071
                  slli         t2, a2, 26
                  sltiu        t0, s8, -48
                  and          a6, zero, s4
                  and          s2, ra, t1
                  sltiu        ra, s10, 524
                  sltiu        s9, s1, 1865
                  sra          t2, s2, a1
                  sltiu        sp, s7, 1021
                  add          a5, s11, a5
                  xori         a2, ra, -394
                  lui          t4, 972802
                  and          a1, t6, a3
                  sltiu        s4, s6, 1724
                  auipc        a1, 671683
                  sra          s5, t3, gp
                  sub          s5, s4, a6
                  sll          s8, s3, s2
                  auipc        t4, 32968
                  sub          t6, s1, a2
                  addi         t3, a4, -1941
                  sltiu        gp, sp, 173
                  add          a6, t3, t5
                  nop
                  or           a7, t0, a5
                  ori          tp, t1, -565
                  lui          t4, 608636
                  lui          a2, 27635
                  sll          a4, t3, s9
                  sltu         a2, a1, a5
                  srl          t0, s9, t4
                  or           a3, t2, sp
                  auipc        a7, 628521
                  nop
                  lui          t6, 497285
                  xori         a2, a5, -277
                  srli         a5, s2, 13
                  and          a5, s11, s9
                  srli         t2, a4, 0
                  lui          s2, 526812
                  slli         a6, s0, 1
                  or           gp, s9, gp
                  srli         sp, t4, 18
                  srai         tp, s6, 4
                  add          t1, s10, a6
                  and          t4, s2, t2
                  xori         s5, s5, -1173
                  slli         s11, a1, 0
                  slti         a6, t6, -2017
                  xor          a4, sp, a0
                  ori          a7, a6, -310
                  srli         s8, s0, 20
                  andi         zero, a3, 1834
                  srai         gp, s2, 11
                  srl          a2, s5, s9
                  sll          s10, a2, s5
                  sltiu        t4, s9, -1765
                  srai         a2, s3, 20
                  nop
                  slt          zero, s9, a0
                  xor          gp, a3, t3
                  nop
                  add          gp, a6, a3
                  slli         a6, sp, 26
                  lui          tp, 681048
                  add          t0, ra, s11
                  xori         t2, s8, -1090
                  addi         s1, s2, -158
                  slti         s6, ra, 585
                  addi         s8, a0, -1001
                  and          s6, t5, s0
                  slli         ra, zero, 31
                  and          s3, ra, ra
                  addi         a6, s3, -1785
                  and          a2, a6, s1
                  slti         t0, s7, -1236
                  lui          a2, 363075
                  addi         a4, t5, 1179
                  sltiu        tp, s1, -1767
                  andi         s6, a5, -897
                  auipc        a6, 365289
                  slli         t1, t6, 15
                  xor          t6, s6, t5
                  andi         s6, t6, -1592
                  sll          t2, t3, t1
                  or           a3, s7, tp
                  slli         t0, t4, 27
                  sltu         zero, s4, s7
                  and          s5, s11, t0
                  xor          a3, t6, a6
                  ori          s1, ra, -1551
                  srl          t6, a3, a5
                  xor          a3, t0, t2
                  add          t1, a3, t4
                  srli         a5, s6, 28
                  slti         s7, a4, -528
                  srai         sp, a1, 13
                  sll          s6, s10, a3
                  sra          a7, s3, a0
                  sll          s4, s2, a4
                  or           s10, s6, gp
                  nop
                  srai         s3, s2, 30
                  slt          a1, s3, a3
                  addi         a5, t2, -1639
                  nop
                  addi         s3, s10, -1780
                  slt          s9, t3, s8
                  srli         zero, a7, 13
                  and          s8, s3, s6
                  andi         a1, t6, 1182
                  xor          a6, gp, s10
                  and          t6, s4, s10
                  add          t6, s5, a7
                  sub          a6, s2, s11
                  srli         ra, gp, 2
                  sra          s7, zero, t1
                  add          t6, t0, gp
                  lui          a4, 81858
                  and          a3, s6, tp
                  andi         a3, t2, 1125
                  or           s3, a5, s4
                  ori          t6, t3, 490
                  auipc        t6, 230359
                  srli         s2, zero, 7
                  andi         s11, a1, -1941
                  srl          zero, t3, t0
                  slt          s3, gp, a1
                  sll          ra, a3, t6
                  addi         zero, t0, 1723
                  srli         s8, t2, 9
                  and          ra, a0, a7
                  slti         ra, s5, 498
                  sltiu        a7, t3, -1891
                  sltiu        s5, s2, -1265
                  sll          s4, t2, a7
                  srli         s3, a3, 12
                  srl          s5, s2, a3
                  xor          s7, s11, s4
                  xori         a4, a2, 973
                  xor          s6, t0, s8
                  sra          a3, a2, a1
                  addi         s2, ra, 1487
                  xor          s6, s4, s9
                  lui          a5, 488891
                  sub          s1, a2, a4
                  sra          a2, a6, ra
                  srli         t2, a5, 30
                  sltu         a7, s7, t6
                  ori          a1, t3, -789
                  sll          t3, zero, a7
                  sll          s1, a6, a4
                  auipc        a3, 1004506
                  xori         t3, ra, -1414
                  or           a7, t4, a7
                  andi         zero, t2, 1982
                  auipc        a3, 472796
                  sub          s1, s5, t5
                  auipc        tp, 618017
                  add          t0, s9, s0
                  slt          a3, t6, t4
                  xori         t3, s6, -976
                  sltiu        t3, gp, 1904
                  sll          tp, s5, a5
                  or           a1, a2, tp
                  or           sp, t1, a4
                  lui          a2, 518849
                  sltiu        s10, s9, 95
                  srai         s7, s5, 13
                  and          s7, a5, a3
                  and          sp, s6, a4
                  xor          s7, zero, a4
                  slt          s10, a4, t6
                  sll          s7, s3, tp
                  srl          s1, t1, a7
                  lui          s11, 466918
                  sub          t0, t6, s2
                  lui          a5, 691673
                  slli         s8, a7, 23
                  srli         s9, s7, 26
                  auipc        s3, 978210
                  xori         t4, s7, 1586
                  sltu         s1, ra, s5
                  andi         ra, s6, -214
                  sll          a1, a3, t3
                  ori          s3, s7, -664
                  xori         zero, s2, -349
                  and          zero, s11, s1
                  sltu         t3, sp, t6
                  xori         a2, s5, -1106
                  xor          a3, s3, s6
                  addi         t1, zero, 1338
                  srai         s10, s7, 12
                  sll          s6, s6, s11
                  sra          s3, a2, s0
                  andi         t0, t5, -1897
                  srl          a5, a5, s5
                  srl          s8, s1, s1
                  slt          t3, sp, s10
                  sub          t4, a5, a1
                  sltu         s6, t1, a4
                  auipc        t4, 345983
                  sll          s7, t2, s1
                  andi         t2, a7, -42
                  add          t1, s3, a1
                  sub          a2, sp, s11
                  lui          t6, 150423
                  srai         a3, a5, 14
                  and          a3, t2, a3
                  sub          s6, s1, s1
                  sltu         s3, t3, a0
                  slti         tp, s5, 453
                  sltu         s9, s9, a6
                  srai         s9, a2, 3
                  addi         a5, t5, 213
                  srai         zero, t0, 6
                  andi         s10, t2, -936
                  slt          ra, sp, s5
                  sub          s8, a3, tp
                  slli         a4, gp, 2
                  sra          sp, a6, s4
                  andi         s1, t4, -550
                  sra          a6, t4, a0
                  nop
                  sll          zero, a7, t1
                  or           s2, gp, s6
                  xor          t0, a3, sp
                  sra          a5, zero, s7
                  sll          ra, s9, s0
                  xor          s1, t3, tp
                  slti         a6, s10, 1924
                  sra          a6, a7, s0
                  lui          ra, 979494
                  lui          zero, 117328
                  xori         a1, s2, 198
                  xori         s7, s1, 481
                  sltu         zero, ra, s9
                  srai         a3, a5, 20
                  slt          ra, s1, s2
                  slt          a7, s5, t2
                  slti         t4, t2, -921
                  addi         s7, s10, 557
                  sub          a2, s0, a0
                  sltu         tp, a5, s4
                  add          t3, ra, s10
                  and          a6, s7, tp
                  auipc        gp, 164149
                  sra          a2, t3, t2
                  slli         t6, t6, 18
                  ori          s7, a4, 826
                  xor          zero, ra, s10
                  srai         s3, s11, 30
                  add          s9, a4, t4
                  add          s1, t6, a1
                  xori         a7, s9, -1263
                  nop
                  or           zero, tp, a3
                  xori         a1, a5, 1946
                  nop
                  add          gp, s3, t1
                  auipc        a5, 758126
                  auipc        ra, 802404
                  sub          s9, t5, t5
                  sra          zero, ra, ra
                  addi         s9, s9, 608
                  sltiu        s9, s2, 689
                  srli         s5, s7, 17
                  sll          a4, s5, s10
                  nop
                  srli         s2, s2, 25
                  sll          sp, sp, a3
                  and          s1, s6, a0
                  slli         s7, a6, 6
                  slt          tp, gp, a0
                  sll          a6, s1, a5
                  nop
                  sra          a6, a5, t4
                  xori         s9, s0, 598
                  ori          s1, t0, 624
                  sub          t1, a0, t2
                  sra          ra, s3, a4
                  lui          t3, 793303
                  add          s5, s5, a3
                  srai         zero, s5, 9
                  slt          s9, t0, ra
                  nop
                  slt          tp, s8, t6
                  sltiu        s8, s4, 1586
                  add          a5, t3, t6
                  sltiu        a1, s1, 1811
                  sub          a5, tp, s1
                  slli         a6, a6, 10
                  add          sp, s9, a4
                  slti         s4, a4, 1361
                  slli         s7, ra, 21
                  srai         t6, t6, 12
                  xor          s8, s7, ra
                  lui          s5, 422555
                  xor          s10, s6, s2
                  lui          s10, 205099
                  sll          s9, s5, s6
                  nop
                  sll          ra, a2, gp
                  lui          s11, 475384
                  slt          s1, t0, a3
                  ori          a3, ra, 110
                  auipc        s5, 936323
                  lui          s9, 322766
                  and          a2, t5, tp
                  lui          zero, 9715
                  slti         sp, s6, 317
                  sll          tp, s7, a3
                  sll          a1, ra, t0
                  srl          t6, t6, t6
                  and          ra, s9, s0
                  sltu         s8, a5, ra
                  sra          sp, gp, s5
                  ori          t0, s8, 1536
                  auipc        a3, 83901
                  nop
                  slti         s8, t6, -413
                  slti         zero, t4, -356
                  sll          s4, t0, a4
                  andi         a6, s6, 1558
                  lui          s7, 153880
                  addi         a2, sp, -1468
                  sra          s6, t0, a5
                  slli         s1, s10, 20
                  slli         s10, a0, 30
                  srli         s3, a6, 21
                  sra          sp, a6, t3
                  andi         s11, a1, 1526
                  ori          s6, t5, 1020
                  slt          s6, t3, s8
                  xori         s7, s6, 1570
                  sltiu        s5, ra, -1438
                  slti         s10, s5, -478
                  srai         sp, ra, 12
                  slti         s9, s7, -1423
                  andi         ra, a7, 753
                  sra          s10, s4, t2
                  slti         t2, zero, -1204
                  sub          s1, a0, s10
                  slli         s1, s0, 19
                  sltu         t6, zero, s11
                  nop
                  auipc        t4, 212911
                  auipc        s5, 484340
                  sll          s3, s9, a4
                  slt          a2, a4, t2
                  xori         a7, s4, -1383
                  auipc        s2, 1023575
                  or           ra, a4, ra
                  srl          t0, t0, zero
                  and          t1, s11, s9
                  nop
                  add          s4, s11, gp
                  sltu         s7, s3, s5
                  sra          a3, a7, a3
                  sltiu        tp, t4, 393
                  sltiu        s9, gp, -1055
                  xor          s7, t2, s3
                  or           s4, a4, a7
                  sltiu        s5, s11, 707
                  addi         s6, t4, -1541
                  lui          a5, 532903
                  sra          s2, a6, s0
                  srli         a4, a3, 27
                  auipc        zero, 700004
                  addi         a1, a5, -1703
                  add          gp, a2, a2
                  slti         gp, s0, -1074
                  addi         t2, t4, -1826
                  slli         t4, s10, 24
                  slt          zero, s11, zero
                  and          t0, t1, t4
                  slti         ra, t4, -927
                  sub          ra, s2, gp
                  auipc        zero, 731125
                  sltiu        t6, gp, 253
                  and          t1, gp, zero
                  slti         t1, s9, -2021
                  slti         zero, a5, 1635
                  sll          a4, a4, s1
                  slt          a5, t5, a5
                  srli         s5, s3, 21
                  srai         tp, s4, 21
                  sra          sp, s10, sp
                  andi         a6, t6, -1876
                  slt          s3, t0, a6
                  and          a1, a0, s8
                  slti         a2, zero, -400
                  xori         t0, a7, -1329
                  ori          t1, s7, 1884
                  srai         s6, a5, 18
                  srai         s11, t3, 28
                  slli         sp, s11, 0
                  sltiu        t0, a1, -749
                  and          t2, t2, s11
                  sra          tp, a0, gp
                  ori          tp, a2, 1035
                  xor          a1, s5, t5
                  auipc        ra, 485095
                  sltu         ra, a4, a6
                  and          s9, gp, s7
                  sub          gp, a2, s4
                  andi         s2, s8, 1296
                  auipc        a1, 162628
                  xor          a7, a4, s6
                  slti         a6, s5, -1166
                  auipc        a7, 615843
                  ori          a7, a3, -597
                  slti         s11, a4, 209
                  sll          a7, t1, a7
                  sltiu        a1, s11, -797
                  auipc        ra, 787127
                  srl          s11, t4, gp
                  sltu         a6, s4, a3
                  slt          sp, s10, sp
                  sltiu        ra, s1, -303
                  slti         s3, s0, 1876
                  sltiu        a6, s4, 581
                  add          t3, a5, t5
                  xor          s7, s2, s2
                  or           s4, s10, t0
                  nop
                  auipc        gp, 311775
                  xori         a4, gp, -1899
                  sll          t3, t6, s11
                  andi         s5, s1, 904
                  sll          t3, a1, s10
                  addi         a5, a3, -526
                  ori          zero, a6, 1796
                  or           a2, s7, s10
                  and          t1, sp, s8
                  addi         t3, a3, -1635
                  auipc        s2, 67096
                  srli         a5, tp, 17
                  auipc        a5, 242380
                  and          s1, s4, tp
                  slti         t0, t3, 1618
                  slti         t0, s6, 1732
                  sub          a4, t4, t4
                  slt          s5, zero, t1
                  srl          s5, s10, s2
                  slli         s6, t3, 23
                  and          t4, s6, t1
                  sltu         t0, a1, gp
                  srl          s9, t4, s10
                  slli         t6, s3, 21
                  sub          a3, a2, t6
                  nop
                  ori          sp, s7, -483
                  sltu         a4, s2, s6
                  and          a4, s0, s7
                  slti         s11, s0, -704
                  sltiu        t1, s8, 1515
                  slt          a1, gp, s1
                  srli         s1, a1, 25
                  andi         t3, s6, 187
                  slti         s2, t4, 1051
                  and          tp, s9, s7
                  sll          t1, t1, a2
                  addi         t2, a6, 601
                  slti         tp, s9, 883
                  or           a1, s6, a1
                  lui          s9, 57778
                  auipc        s11, 722574
                  slli         s5, t5, 24
                  sltu         s1, t6, ra
                  or           s10, s11, s3
                  xori         t3, a1, 1613
                  slli         a6, s4, 11
                  addi         s6, s0, 556
                  sltu         a4, s8, s7
                  nop
                  nop
                  addi         s5, s6, -511
                  add          tp, s1, a6
                  srl          t3, s10, s10
                  sll          t0, s10, s2
                  slli         sp, t3, 15
                  sltiu        ra, t2, 1524
                  slti         t0, s5, 8
                  sltu         t2, s1, s1
                  srli         a5, s9, 0
                  srai         t2, s9, 4
                  sll          ra, a4, tp
                  srai         t0, t5, 7
                  xori         t2, t5, 572
                  slti         s8, t5, -1246
                  sltu         gp, s6, s10
                  srai         a5, t4, 28
                  add          t0, a2, t3
                  sub          tp, a4, t6
                  sll          s4, t1, s11
                  srl          ra, s3, t2
                  sub          s2, sp, zero
                  sltiu        s10, a2, 1053
                  and          a7, s9, t4
                  slt          s9, a4, s11
                  xor          s7, a6, tp
                  xori         zero, s11, -711
                  xori         zero, a7, 315
                  and          a5, gp, t2
                  xor          t4, t3, a0
                  and          s10, ra, s8
                  add          ra, t0, t5
                  andi         s4, tp, -995
                  slli         s3, s6, 22
                  or           gp, s7, s0
                  sltiu        a3, a1, -1195
                  slti         tp, s6, -1210
                  or           a4, t0, a4
                  srai         sp, a0, 19
                  addi         s5, s0, 1911
                  xori         a6, a3, 100
                  slli         t0, s10, 14
                  andi         a5, s3, 867
                  slti         a6, t0, -1027
                  nop
                  addi         s6, a4, 1206
                  sll          s2, a6, s4
                  slti         a3, t3, -271
                  addi         a2, a5, -1493
                  andi         t4, s8, 1682
                  xor          s4, s7, gp
                  slli         s3, a0, 18
                  andi         a2, a0, -509
                  ori          ra, s4, 838
                  slt          s11, s6, a2
                  sll          a2, t0, s4
                  ori          tp, t5, -1915
                  lui          gp, 943330
                  srli         t6, a0, 31
                  and          a6, s5, t4
                  addi         t3, a1, 1433
                  and          s2, t1, s10
                  slli         s7, s4, 19
                  sra          ra, a6, gp
                  andi         gp, s3, -1564
                  or           tp, t6, s11
                  andi         s3, s3, 56
                  andi         a6, s1, -623
                  sltiu        t6, zero, 1646
                  sltiu        a5, s4, 1187
                  sub          t6, gp, s7
                  srl          a5, a6, sp
                  srai         gp, s9, 6
                  srai         a3, a0, 25
                  addi         t2, s1, -218
                  sub          tp, tp, t4
                  srl          zero, sp, ra
                  sltu         s9, a7, a2
                  srai         zero, a2, 21
                  sll          a2, s0, s8
                  srl          s6, t5, s3
                  xori         s11, s7, 468
                  lui          a4, 886680
                  and          zero, a5, a5
                  srli         a4, t3, 5
                  xori         zero, sp, 778
                  srl          t4, s3, a2
                  sll          a7, s6, s8
                  srai         s1, tp, 31
                  sra          sp, zero, a4
                  xor          s9, s1, zero
                  srl          zero, s10, zero
                  slt          ra, a3, t5
                  sltiu        ra, t6, -558
                  andi         s11, s10, -979
                  sra          s9, gp, a7
                  sra          s2, t4, a1
                  nop
                  slti         ra, s2, -419
                  slti         a2, s3, -625
                  xori         s2, zero, 725
                  nop
                  srai         t4, t0, 8
                  sltiu        s11, s7, 1747
                  slti         a5, s4, -1835
                  sub          s3, s4, a5
                  ori          gp, s9, -1078
                  srli         s5, a5, 29
                  and          a7, zero, s1
                  and          t3, s9, tp
                  srai         t0, s0, 24
                  auipc        s6, 1008408
                  xor          t2, s4, a6
                  srai         s6, s11, 18
                  andi         a4, s1, -592
                  nop
                  ori          s9, t0, 810
                  auipc        s6, 781595
                  sub          t3, t5, s11
                  slti         s8, t1, -489
                  add          s3, t5, s6
                  auipc        ra, 662954
                  ori          s9, a4, -1418
                  nop
                  slt          a5, a5, s1
                  auipc        a5, 118612
                  sll          a1, t4, a4
                  sll          s10, s7, s2
                  andi         s2, zero, -1889
                  srli         sp, a7, 27
                  srai         s4, t2, 31
                  xor          s6, t4, a1
                  sll          t2, t4, s4
                  sltiu        t0, t5, 1193
                  lui          tp, 195005
                  sltiu        gp, s6, 850
                  and          s6, ra, s10
                  slt          sp, gp, t1
                  addi         a6, t4, -1782
                  sll          s10, a3, s11
                  xor          a3, t6, a2
                  slti         a1, gp, -1796
                  srli         s11, s1, 16
                  sltu         a6, t3, a0
                  add          s6, s0, gp
                  slli         a7, s11, 30
                  or           gp, s2, t4
                  nop
                  srai         a4, s6, 6
                  lui          s10, 411853
                  slt          s8, t1, s8
                  srai         a4, s10, 13
                  and          s1, s5, t2
                  slt          zero, a0, s3
                  addi         s2, a0, 790
                  and          ra, s4, t5
                  addi         t2, a0, 666
                  addi         gp, s7, 1801
                  sll          s6, t3, t2
                  xor          s5, a6, a2
                  sra          t2, t3, a0
                  sll          s7, zero, t5
                  andi         ra, a3, 1423
                  srai         s1, t3, 21
                  nop
                  sub          s5, s9, s5
                  or           a1, t5, t0
                  xori         tp, sp, 724
                  nop
                  srl          s3, t5, t1
                  srl          s3, a2, a6
                  sltiu        ra, zero, -945
                  srai         a1, s4, 22
                  slti         t4, s2, -348
                  sll          s10, gp, s1
                  addi         s8, ra, 134
                  slt          a1, t0, s2
                  lui          s10, 702133
                  srai         t2, a4, 25
                  lui          t3, 585866
                  slt          t0, tp, zero
                  srl          s8, a0, a5
                  srai         ra, zero, 30
                  xori         s2, sp, -443
                  sltu         s9, s6, a0
                  sltu         a6, t3, s9
                  sll          gp, a5, s10
                  slti         s6, s9, 1575
                  sltu         tp, a6, s10
                  ori          t0, a1, 1127
                  xori         s6, s5, -201
                  auipc        a5, 724923
                  sltu         s2, t0, zero
                  lui          s11, 9469
                  srli         s10, ra, 0
                  addi         sp, gp, 227
                  xor          t1, ra, zero
                  sra          t6, tp, t2
                  or           gp, t6, zero
                  addi         t3, a6, 2031
                  sra          s5, ra, t5
                  sltu         tp, a0, s1
                  srai         zero, t6, 21
                  xor          s1, s5, a6
                  slti         a4, t4, -673
                  and          s9, ra, s6
                  nop
                  srl          gp, t1, a0
                  slt          s3, s0, t2
                  sll          a1, s9, s6
                  srai         s8, a6, 16
                  addi         t4, t1, -207
                  slli         s1, s6, 11
                  xor          a1, s4, s6
                  sltiu        s5, t0, 965
                  xor          t4, s3, s0
                  xori         t3, s1, -547
                  srai         s7, s2, 22
                  srai         t2, t5, 21
                  auipc        tp, 585266
                  lui          s1, 276078
                  nop
                  andi         a1, s0, -285
                  andi         s7, t2, 17
                  slti         s2, s6, -379
                  or           s5, t6, a7
                  srl          s4, s9, s3
                  srl          a5, t2, s7
                  or           s7, a7, tp
                  slli         a2, s11, 29
                  sltiu        s10, t5, 1545
                  andi         t0, a6, 564
                  xori         a1, s0, 1758
                  auipc        a2, 203307
                  slli         a4, s8, 21
                  ori          t3, t5, -323
                  xor          gp, t5, t2
                  sll          a4, t1, a6
                  sub          s1, t4, t0
                  andi         gp, s7, -76
                  sltiu        s6, s8, -317
                  slli         t4, t6, 12
                  srli         s3, gp, 27
                  lui          zero, 792558
                  sltu         t0, s5, s11
                  addi         t4, s5, -869
                  nop
                  xori         tp, t3, 1178
                  addi         s7, t4, -1191
                  slt          s8, t0, a4
                  ori          t2, zero, -295
                  srai         s2, ra, 3
                  slti         t1, t5, -498
                  sll          sp, a7, s4
                  srai         sp, ra, 0
                  sltiu        t4, ra, 471
                  sltu         s2, t4, s5
                  sll          gp, s7, s8
                  add          t1, s4, s8
                  xori         a3, s7, 73
                  auipc        s2, 872473
                  and          s3, t1, s1
                  sltiu        s9, t3, 1962
                  slli         s5, s7, 13
                  add          s2, s11, sp
                  sll          gp, tp, a2
                  slt          s4, s3, a2
                  slti         tp, t4, 288
                  nop
                  srl          s1, s2, a3
                  slti         gp, a4, -390
                  srl          s1, a0, a0
                  slt          t6, s4, sp
                  slli         a4, a3, 8
                  auipc        a1, 394452
                  slli         s1, t3, 9
                  sltiu        a3, a5, -1267
                  andi         t1, s6, -836
                  add          t3, s4, sp
                  sll          a7, s5, t6
                  lui          t1, 480093
                  addi         s10, t4, -1562
                  auipc        a7, 935352
                  srli         s2, a3, 21
                  sltiu        a2, t5, 102
                  lui          t1, 964986
                  sra          s5, sp, ra
                  ori          s8, sp, 1372
                  ori          a7, t2, 618
                  sltiu        a1, t2, -1243
                  xor          zero, t3, t6
                  slli         a7, t3, 4
                  lui          s2, 69656
                  sra          s6, s3, t4
                  slli         a4, s5, 23
                  xori         a6, a1, 333
                  addi         s6, a3, 1955
                  sub          s8, s2, a6
                  sltiu        ra, s7, -380
                  slt          gp, a2, t4
                  srai         a5, t0, 23
                  addi         zero, a4, 203
                  srli         t1, s0, 29
                  sll          a3, s1, s10
                  xor          a3, t1, a7
                  lui          s4, 1017166
                  slti         a7, s6, -1502
                  srl          t1, s3, s10
                  slti         s1, a2, 1562
                  andi         s2, a7, 691
                  srli         a5, gp, 16
                  sltiu        s9, t6, -1170
                  slli         s7, a3, 23
                  and          s11, s0, a3
                  add          s9, a7, s8
                  slt          s6, a4, a3
                  addi         gp, t0, -1526
                  sltiu        a7, s4, -391
                  xor          s2, s2, t3
                  ori          a7, s6, 1326
                  and          a7, t1, zero
                  sub          t6, a4, s1
                  xori         s5, t5, -776
                  lui          a7, 17214
                  or           a7, s11, t6
                  sub          s9, a6, t5
                  slli         tp, s4, 18
                  lui          a5, 431075
                  auipc        s3, 941757
                  sll          a7, a7, s8
                  addi         t2, s5, -402
                  xori         a2, s8, -362
                  andi         zero, a4, 5
                  srai         a2, s0, 1
                  sltiu        ra, ra, 937
                  ori          t1, s10, 767
                  add          s6, a0, zero
                  slli         t1, t2, 7
                  srl          s7, s4, s1
                  srl          a6, s5, a0
                  auipc        s1, 129829
                  addi         sp, sp, -212
                  sra          s6, gp, t6
                  srli         t1, t3, 3
                  srl          t6, t5, t4
                  sltiu        s4, a1, 826
                  add          s1, s7, s10
                  xor          ra, t4, a1
                  or           t0, a0, s7
                  srli         t6, t6, 12
                  auipc        ra, 690098
                  xori         s1, s11, -1083
                  srai         s2, a5, 0
                  lui          s1, 315767
                  andi         s5, s5, -789
                  andi         a6, s2, -540
                  xori         s4, a2, -1232
                  or           a2, t2, s4
                  sll          a6, s0, a7
                  ori          s11, tp, 2018
                  slti         a4, s4, 710
                  sltiu        s3, a0, -181
                  nop
                  xor          ra, s7, s6
                  add          s4, s2, s6
                  or           t6, s2, s4
                  srl          t3, gp, t1
                  slti         gp, t5, -1973
                  slt          s10, a2, a1
                  srai         t0, a3, 19
                  sltiu        a1, s9, 1411
                  slt          s7, t5, gp
                  sra          s8, s5, a3
                  ori          gp, s4, -653
                  add          s9, s3, sp
                  ori          t4, s10, 871
                  srli         t2, a7, 31
                  slli         a4, s9, 18
                  or           a2, t0, t1
                  sll          a1, t1, s1
                  sub          a5, a3, gp
                  sub          sp, s5, s10
                  sub          ra, t0, s3
                  xor          s10, tp, t4
                  lui          s8, 770884
                  srl          t2, s1, t1
                  srl          s3, tp, zero
                  slti         t2, s0, 455
                  lui          gp, 762447
                  sll          s2, s7, a0
                  slti         a6, s8, -109
                  lui          s7, 196079
                  nop
                  and          s6, t1, s2
                  sra          a6, s0, s4
                  addi         t0, s8, -922
                  nop
                  sltiu        sp, a3, 1041
                  andi         t2, s3, 1621
                  slli         t0, s3, 16
                  auipc        gp, 567708
                  slti         s8, sp, 1796
                  andi         s2, gp, 1926
                  srli         gp, a5, 15
                  or           s3, s4, sp
                  sltiu        s6, a0, 1112
                  srai         sp, s2, 22
                  ori          s11, t6, 779
                  ori          sp, a3, 1248
                  sltiu        t4, s10, -1631
                  slti         a3, s1, 214
                  srl          s3, gp, a4
                  sltiu        a7, ra, -684
                  xor          a5, t5, t1
                  ori          zero, t3, 1233
                  srl          s10, s0, s11
                  sub          t6, t0, s2
                  slt          s10, s1, s0
                  addi         t2, s10, 1968
                  slli         s1, zero, 5
                  slli         t4, a7, 12
                  sub          zero, a0, a4
                  and          t1, s6, sp
                  sltiu        t6, zero, 1008
                  and          a4, t3, s2
                  lui          sp, 311978
                  andi         s2, s1, 181
                  sub          ra, gp, s1
                  slt          a6, a5, s10
                  auipc        s7, 476169
                  srl          ra, s7, gp
                  and          t2, a4, a2
                  xori         s10, s3, 329
                  sub          s8, a3, tp
                  xor          s8, t4, a0
                  sltu         sp, a7, s11
                  xor          t3, s5, a4
                  slt          a5, zero, t2
                  ori          s3, t5, 837
                  sltiu        t3, t6, -1048
                  xori         s7, s11, 1504
                  add          t1, t4, gp
                  sltiu        ra, a4, -803
                  add          s11, s10, a5
                  nop
                  auipc        s10, 357555
                  nop
                  sra          zero, a3, s6
                  auipc        zero, 1005441
                  and          s7, s5, s6
                  ori          s1, s3, -1130
                  and          sp, s1, a5
                  srl          t6, t0, t4
                  sltu         t2, t2, tp
                  addi         s4, sp, 534
                  srli         zero, t5, 27
                  lui          t0, 111399
                  xor          s2, t6, s1
                  ori          t0, t4, -1160
                  srl          s8, s7, a4
                  xori         s11, a1, -1882
                  xori         a7, s6, 1523
                  sltiu        a3, t3, -1104
                  or           a7, s4, sp
                  nop
                  sll          a5, ra, t4
                  sub          t6, t6, sp
                  sra          s8, s5, zero
                  nop
                  slli         gp, s1, 20
                  sub          s8, t4, a2
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s7, 0x63a631db
                  li           s4, 0xffffffff
                  li           s2, 0x47c8863c
                  li           a3, 0xffffffff
                  li           s1, 0xffffffff
                  li           t3, 0x9f0d16e0
                  li           gp, 0x0
                  li           ra, 0x80000000
                  li           a5, 0x0
                  addi         t0, ra, -373
                  add          a5, gp, t0
                  nop
                  nop
                  addi         gp, a5, 1092
                  auipc        s7, 1010279
                  addi         gp, s1, 1827
                  auipc        a3, 907606
                  nop
                  nop
                  addi         t0, gp, 1208
                  sub          s4, t3, s7
                  addi         a5, s4, 222
                  sub          s1, s7, gp
                  nop
                  add          a5, t3, t0
                  addi         t3, s2, 1470
                  sub          t0, s7, ra #end riscv_int_numeric_corner_stream_5
                  slti         tp, a0, -1907
                  xor          s6, t0, s3
                  srai         a1, s10, 12
                  sll          s8, s4, a5
                  lui          s4, 583546
                  srli         s6, t1, 6
                  srli         s4, ra, 0
                  addi         s1, s3, 219
                  slt          zero, s7, a0
                  srli         s4, t4, 13
                  or           t2, t3, s8
                  addi         gp, a1, -1152
                  ori          s7, ra, 1379
                  ori          gp, t5, -78
                  slli         t6, tp, 27
                  nop
                  sll          s1, s2, t3
                  andi         zero, a2, -1807
                  slli         a7, tp, 9
                  xor          t0, s1, t4
                  slli         tp, a2, 11
                  slli         a7, s5, 3
                  ori          a6, t6, 2000
                  slli         tp, tp, 1
                  slli         t0, s9, 29
                  sub          s7, a3, a3
                  slti         s10, s10, 1432
                  addi         s8, t5, -387
                  or           t6, a1, s6
                  or           a6, a1, zero
                  nop
                  xor          s1, s1, s5
                  slli         s1, t2, 1
                  srli         a7, a2, 30
                  ori          s4, ra, 1126
                  srl          t1, t5, a6
                  or           s8, a1, a2
                  slli         s7, a1, 3
                  slti         s2, a4, 184
                  srai         t6, s4, 12
                  slt          s11, s8, tp
                  slt          a1, s3, s9
                  xori         zero, a6, 1525
                  xor          zero, a2, s7
                  sltu         s7, a2, tp
                  sub          sp, a6, s0
                  srai         s9, t0, 17
                  ori          s2, sp, -854
                  auipc        s5, 103745
                  srai         t2, s6, 27
                  andi         gp, s2, 1747
                  addi         ra, t0, -60
                  srli         zero, a1, 23
                  sltiu        s6, s2, -818
                  addi         t6, s7, 367
                  xor          s8, s2, t5
                  nop
                  and          t0, s1, s8
                  ori          t1, s4, 835
                  xor          sp, t0, a6
                  or           t1, a4, t2
                  srli         s1, a6, 5
                  slti         s7, sp, -11
                  andi         t6, a0, 1334
                  or           zero, s4, a1
                  srai         s4, t5, 0
                  srai         s6, a3, 20
                  or           a3, t5, zero
                  auipc        t4, 923470
                  ori          t1, s6, 633
                  nop
                  sltu         s3, t3, t1
                  or           s6, zero, s11
                  srli         s1, a7, 22
                  auipc        s3, 79286
                  sltiu        gp, a3, -501
                  and          a5, s3, a4
                  nop
                  slli         s10, s4, 1
                  lui          t4, 876090
                  sltiu        t4, s7, 1450
                  sll          a6, zero, a3
                  xori         ra, sp, 695
                  xori         s10, s2, -1789
                  sltu         s5, s0, sp
                  nop
                  ori          t2, s5, 926
                  sltiu        a6, s8, 900
                  and          s8, s9, s7
                  sub          s8, s3, gp
                  and          a1, s4, t5
                  add          s2, a3, tp
                  sltu         s10, a4, s2
                  slt          tp, s1, t4
                  nop
                  addi         s1, a4, -841
                  andi         s1, a3, -1152
                  sltu         t4, t2, ra
                  slt          s5, s5, s8
                  sll          sp, s9, a4
                  sltu         s2, t5, t6
                  sltu         s8, gp, a4
                  srl          t2, s9, t0
                  slli         sp, s3, 28
                  srl          a2, t5, s8
                  and          tp, a4, gp
                  srl          s9, s9, zero
                  srl          s2, s0, a1
                  addi         a4, a1, 1954
                  sra          t6, gp, t6
                  sll          t2, s6, t5
                  lui          t6, 448762
                  srai         t1, s3, 26
                  slti         s5, t4, 1283
                  andi         t2, s5, 733
                  lui          s1, 676346
                  srli         sp, t4, 23
                  add          s5, s0, s1
                  sra          sp, a7, s0
                  nop
                  addi         a6, a7, -72
                  lui          s8, 832942
                  sltu         tp, s1, a3
                  nop
                  and          t0, t6, a6
                  andi         a6, s9, 682
                  slli         tp, t2, 12
                  slt          a1, a1, a5
                  lui          t4, 395195
                  slti         t0, s1, 192
                  srl          a1, s1, t3
                  and          a4, s9, t2
                  sltu         s5, s2, s1
                  addi         a5, s0, 1395
                  auipc        zero, 709504
                  srl          zero, zero, t0
                  srli         a6, a0, 0
                  add          s10, s8, a1
                  xori         zero, t2, 843
                  sll          s1, s11, t6
                  sra          a4, s1, s5
                  xor          sp, s10, ra
                  slli         zero, s5, 25
                  andi         s10, a6, 733
                  slli         s6, zero, 19
                  xor          a2, s1, zero
                  or           s7, t1, s0
                  add          t3, s10, a1
                  srai         a5, s1, 19
                  sltu         sp, s11, s7
                  sll          a1, zero, a6
                  lui          s9, 602759
                  srli         s11, sp, 16
                  auipc        a2, 334445
                  xori         a4, s3, -163
                  sltiu        tp, s8, 1923
                  xori         a7, s4, 232
                  sub          a2, zero, a0
                  slti         s11, s8, -652
                  sltu         a1, a7, s10
                  or           s7, a5, a6
                  sltiu        a5, s5, -69
                  xor          s2, t1, s8
                  slti         t6, s8, -1555
                  sltu         s4, s4, a1
                  sll          sp, s10, ra
                  auipc        s2, 543937
                  sra          s10, s7, a1
                  slt          s3, a5, s11
                  srli         t6, t6, 10
                  xori         t4, s7, -1239
                  srl          t0, t2, s7
                  sll          t0, s11, s1
                  slli         a1, s5, 13
                  srai         a2, ra, 14
                  lui          s1, 549765
                  slt          a5, s6, gp
                  andi         s11, ra, 2016
                  sll          zero, ra, t5
                  addi         s6, t3, 791
                  andi         a5, s8, -561
                  xor          a3, a3, a1
                  add          t3, a7, s9
                  slli         s10, s8, 20
                  slli         t6, s6, 2
                  sub          sp, s8, a1
                  xor          t0, t2, a5
                  andi         t6, sp, 669
                  slli         a2, a5, 10
                  ori          tp, s5, -1606
                  sltiu        s7, t4, 6
                  lui          t4, 505681
                  srl          t1, gp, t2
                  srai         s7, sp, 30
                  nop
                  srl          t0, tp, zero
                  sub          a5, s9, s1
                  ori          gp, t0, 1251
                  srli         a5, t0, 0
                  slt          a1, t6, zero
                  auipc        s7, 509606
                  srai         s9, s9, 23
                  add          a6, a6, a3
                  xor          s4, a6, t4
                  lui          s9, 794690
                  slt          t2, ra, s7
                  sra          a7, a5, a5
                  addi         s3, t4, 165
                  slti         tp, s4, -227
                  add          s3, a0, s2
                  and          s3, a0, gp
                  ori          zero, t1, -985
                  slti         s1, t2, 1782
                  slli         a6, s2, 5
                  srli         a2, a7, 14
                  or           s6, sp, a4
                  slti         a7, s10, -1830
                  auipc        t0, 654359
                  srli         a3, ra, 28
                  lui          zero, 120301
                  slti         s10, s8, -607
                  xor          s5, a6, s10
                  xori         sp, s2, 117
                  xor          t2, s3, gp
                  sll          tp, t1, s9
                  ori          t6, t5, -497
                  auipc        s3, 195403
                  xor          ra, s4, s8
                  sltu         a2, t3, s7
                  srl          s10, s6, s4
                  sltu         t6, sp, s10
                  slt          s10, s2, t6
                  addi         s10, s4, -379
                  slt          s10, s2, a7
                  sra          sp, s5, t5
                  sll          a6, t0, a7
                  slli         s6, t0, 5
                  add          s6, s10, s6
                  sll          s11, t6, t4
                  xori         t0, a0, -1645
                  andi         a6, t4, -239
                  slt          zero, gp, zero
                  srli         s3, t6, 31
                  srai         s3, s8, 22
                  sra          a5, s0, t1
                  sltiu        s6, s8, -1029
                  sltiu        zero, a6, -1853
                  auipc        a1, 180826
                  srai         a7, a0, 25
                  sltiu        a1, s9, 965
                  srli         t1, t2, 31
                  slt          s5, a3, a6
                  addi         s6, s2, 1286
                  slti         s9, s5, -498
                  sltu         sp, s5, s10
                  xor          s5, s8, a3
                  slti         s9, zero, -812
                  sltu         t6, t6, t1
                  srl          a6, t5, s3
                  xori         t4, a7, -108
                  add          s8, a2, s9
                  sll          s11, s2, t0
                  srai         gp, t5, 19
                  and          s4, s6, t0
                  sra          sp, t2, s6
                  slti         t1, a2, -1610
                  or           a7, a3, a2
                  add          s6, t4, t3
                  sltu         s9, a7, s9
                  slti         a2, zero, 1374
                  sra          s2, t5, a5
                  add          s8, zero, s0
                  add          a7, sp, s10
                  sltiu        s6, t5, -1324
                  slti         s11, s10, -429
                  sub          s5, ra, a3
                  add          s3, a1, a0
                  andi         tp, a2, -1594
                  ori          s6, gp, -301
                  slli         a2, zero, 21
                  sra          a7, t0, a0
                  sub          s10, t5, s8
                  slt          sp, s3, s9
                  sltu         a4, t6, t5
                  srli         a6, t1, 8
                  addi         s7, s5, 2018
                  sll          s7, s7, s2
                  sltiu        s2, s8, -725
                  sll          a2, t0, t6
                  srli         t4, ra, 5
                  addi         a1, s9, -1359
                  srai         t1, s6, 25
                  slli         s10, a1, 27
                  srl          tp, s9, t6
                  addi         s9, s4, -1195
                  slt          t6, t0, a5
                  srl          s10, s4, gp
                  andi         ra, t3, 1807
                  nop
                  sra          zero, a1, s5
                  add          t3, t3, s2
                  andi         s6, s7, -25
                  and          s10, s2, zero
                  srli         sp, a6, 7
                  sll          ra, s5, a2
                  srl          s11, t3, t2
                  nop
                  sub          s5, a6, s6
                  auipc        s2, 180644
                  lui          a2, 505450
                  or           s7, a3, t6
                  andi         t2, a7, 569
                  sltu         s2, s5, t3
                  ori          ra, sp, 1298
                  sra          a5, a5, a3
                  xor          s5, a1, t5
                  sltu         ra, tp, s7
                  andi         ra, sp, -533
                  sltu         a1, a5, a7
                  slt          t2, a4, s5
                  and          s1, t2, s2
                  andi         tp, t6, -1490
                  slti         t4, a2, -1363
                  sub          a3, t3, ra
                  sltiu        a1, t2, -977
                  sltu         a7, s3, t2
                  auipc        s11, 971680
                  addi         sp, s9, -117
                  srli         a3, s11, 21
                  sra          a2, t3, s3
                  sltu         s5, a7, tp
                  xor          t0, t6, s2
                  slti         a5, t4, -1979
                  ori          s7, t6, -552
                  andi         s2, a2, -1668
                  nop
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s6, 0x0
                  li           tp, 0x80000000
                  li           t2, 0x0
                  li           a1, 0xffffffff
                  li           t1, 0x9e84042b
                  li           s5, 0x2793021d
                  li           a6, 0x80000000
                  li           s8, 0xffffffff
                  li           sp, 0x46d6a6b
                  add          s2, tp, s6
                  addi         tp, s2, -193
                  nop
                  addi         s5, s5, 1707
                  nop
                  nop
                  nop
                  addi         sp, sp, 23
                  add          s6, s8, tp
                  lui          a1, 723754
                  auipc        s8, 217364
                  nop
                  add          tp, a1, s2
                  lui          s6, 847915
                  lui          s8, 880595
                  addi         tp, s6, -1886
                  addi         s6, s8, -842
                  nop
                  lui          s5, 561720
                  nop
                  sub          sp, tp, s6
                  lui          s8, 481382
                  add          s2, t1, s2
                  addi         t1, t2, -1720
                  add          s5, a1, tp
                  lui          s8, 576159 #end riscv_int_numeric_corner_stream_13
                  sub          t1, sp, t2
                  slti         s4, s8, 111
                  sll          s10, a1, s10
                  xor          t3, s4, s9
                  lui          tp, 94761
                  and          s3, s7, a7
                  and          a3, s2, a3
                  lui          t2, 320124
                  sltu         t3, t3, s11
                  ori          sp, s0, -293
                  slti         t4, s8, 256
                  or           sp, s3, t3
                  sll          s5, s0, a4
                  nop
                  srli         a1, a4, 20
                  sltu         s10, t2, t3
                  lui          s3, 636803
                  lui          s2, 417884
                  sra          a7, a1, s10
                  and          s2, a5, s11
                  addi         t3, ra, 714
                  slli         s3, a7, 4
                  sub          s9, t3, s3
                  sll          s7, s8, a0
                  lui          t4, 706269
                  srl          a7, a4, a2
                  srl          t2, t6, t2
                  xor          a2, s6, a2
                  xori         t0, s6, 1094
                  sll          t0, s9, gp
                  andi         a7, a6, 1149
                  slli         a6, s11, 10
                  or           s2, gp, s11
                  srli         s2, t1, 17
                  sltiu        a6, s6, -514
                  sltu         t6, s3, t0
                  xori         s11, s11, -1074
                  sub          t2, s3, a2
                  srai         t1, a5, 7
                  nop
                  sll          s4, t5, s5
                  sltu         s2, t5, s10
                  sltu         s3, s3, s3
                  sra          sp, s10, tp
                  andi         a1, s4, 1397
                  sra          s5, t1, a2
                  lui          a3, 462311
                  slt          sp, s5, t0
                  auipc        s8, 644989
                  sll          s3, t6, t0
                  nop
                  sll          t6, tp, gp
                  andi         t6, t5, -901
                  xor          tp, s4, s7
                  xori         t6, s5, 1559
                  add          a1, s11, s2
                  ori          ra, s2, 669
                  xori         t6, a7, -1523
                  srl          t1, t1, s4
                  slt          t6, a5, s3
                  slti         s8, a3, -1746
                  sra          t6, s2, tp
                  sll          t4, s3, sp
                  or           a6, s9, s6
                  slti         s5, t2, 485
                  andi         a6, a4, 101
                  srli         sp, gp, 2
                  srli         t1, s2, 26
                  andi         a2, s9, 520
                  xori         gp, s2, 338
                  sll          t1, a2, t1
                  ori          t1, s10, 216
                  srl          t6, sp, t0
                  add          t1, zero, s1
                  and          s3, t3, a5
                  add          s11, s9, a6
                  addi         gp, t4, 1092
                  xor          a7, t3, a7
                  add          t2, s7, s5
                  srli         s6, a7, 3
                  nop
                  sll          a6, s4, a5
                  sltiu        s10, s2, -1602
                  and          t0, a5, t5
                  ori          gp, s10, -412
                  sltu         t4, a3, s3
                  srl          a5, s2, s10
                  sltiu        s4, s4, 1077
                  and          s10, a7, gp
                  or           s2, t4, a7
                  nop
                  sra          t0, t5, s2
                  srai         zero, t0, 19
                  sltiu        t1, s8, 1397
                  or           s4, t1, a7
                  andi         t0, t1, -744
                  lui          ra, 923976
                  lui          a4, 239115
                  xor          t0, zero, s6
                  sltu         a1, s5, a5
                  srli         s10, t1, 5
                  srli         s3, ra, 8
                  addi         a7, s1, -4
                  sltiu        a3, s11, -602
                  sltiu        s2, t5, -1105
                  lui          a5, 327116
                  add          t6, sp, a1
                  sltu         tp, s10, t2
                  andi         a1, t3, -1942
                  and          t3, a0, t4
                  lui          ra, 216265
                  add          s8, ra, t2
                  slti         t6, s0, -1431
                  slli         t6, s7, 16
                  or           s1, zero, t6
                  lui          s11, 557442
                  andi         gp, s3, -704
                  auipc        t2, 320821
                  add          a3, s0, s8
                  sub          t4, t6, t6
                  slli         gp, s0, 28
                  sltu         t4, s5, s7
                  ori          zero, t6, 1191
                  xori         a1, t5, -1920
                  slt          a2, s0, a1
                  and          s3, gp, s1
                  sltiu        sp, tp, 1742
                  and          a4, s11, s0
                  lui          s4, 566209
                  lui          s1, 1022143
                  srai         a3, a1, 22
                  add          sp, a3, a4
                  sra          gp, t0, s7
                  xor          s7, a1, s2
                  srai         gp, s11, 3
                  sra          s9, a1, a3
                  sltu         a5, t5, s7
                  slt          t6, t2, s6
                  ori          t6, s10, -1742
                  sub          s3, s11, s2
                  and          s8, t5, a3
                  sub          a6, s9, s4
                  sub          s7, sp, s10
                  slti         zero, t5, 483
                  slti         t0, t6, -958
                  sub          zero, a7, s11
                  or           a6, s11, t4
                  or           s1, t4, a4
                  xori         a4, a0, -143
                  slli         sp, s7, 31
                  auipc        s3, 776576
                  lui          t1, 573314
                  sll          t6, a5, s6
                  sub          a1, t6, a3
                  slli         s8, a5, 17
                  lui          t3, 290239
                  slt          s4, s11, a7
                  add          s2, s5, gp
                  andi         s1, s8, -148
                  xori         t4, s6, 1738
                  slti         a3, s1, -496
                  srai         a7, s8, 31
                  auipc        s11, 760436
                  srli         t0, s7, 12
                  nop
                  slli         gp, t0, 9
                  srli         t4, s8, 12
                  srl          s11, t1, a0
                  slli         gp, s10, 10
                  or           s4, tp, gp
                  srl          gp, t0, t5
                  and          zero, a6, t4
                  slt          t6, a1, s7
                  srai         s7, s1, 17
                  nop
                  ori          s7, t0, 1445
                  sltu         t0, t2, ra
                  auipc        t4, 805837
                  auipc        s4, 662496
                  or           zero, t6, a6
                  and          s1, s3, gp
                  lui          gp, 411173
                  or           a4, a4, s8
                  xor          t2, a2, t0
                  add          s8, t2, a3
                  slt          s3, a7, s11
                  slti         t4, s0, 455
                  andi         s3, t1, -635
                  xori         s9, s11, 2030
                  or           a4, s6, t1
                  srai         a6, t2, 26
                  xori         a6, a3, -547
                  ori          t4, a2, -1711
                  srli         s10, s6, 17
                  addi         a7, t0, 495
                  srl          s6, t6, s9
                  srai         s8, t6, 2
                  slli         sp, t5, 26
                  slt          a1, s11, tp
                  srli         s6, s6, 24
                  and          zero, s3, s2
                  slli         s11, a3, 12
                  ori          a1, s7, 427
                  sll          t6, s5, gp
                  sltu         s3, s11, s10
                  sltiu        s3, t5, -77
                  and          t2, t4, s5
                  ori          a4, s10, 1159
                  nop
                  nop
                  srl          s5, t4, t5
                  xor          a3, gp, s9
                  auipc        s2, 19056
                  and          t2, tp, s0
                  auipc        s5, 122461
                  srli         t1, t5, 5
                  xori         a2, a1, 1417
                  srli         a5, tp, 22
                  sltiu        t4, s2, 1402
                  add          s6, a6, s10
                  addi         t2, sp, -1054
                  xor          t4, s9, t3
                  slti         t0, a7, 226
                  xori         t4, s6, 1017
                  sub          t1, a2, s1
                  xor          s4, t3, t3
                  xor          t2, t3, s6
                  xori         s5, t2, 942
                  auipc        a1, 259673
                  nop
                  addi         t1, s11, -25
                  addi         a3, a2, -1367
                  srli         s9, s10, 1
                  sub          t3, s11, t5
                  addi         s11, ra, 252
                  nop
                  slti         a3, zero, -1060
                  ori          a5, t0, -849
                  slti         gp, t0, -1867
                  sll          tp, s10, ra
                  auipc        t1, 637319
                  srai         zero, gp, 17
                  sltu         sp, s6, tp
                  nop
                  sll          s7, s4, zero
                  slli         s4, a6, 21
                  sltu         zero, s3, s1
                  srai         t2, t6, 14
                  andi         s7, tp, -596
                  srli         a4, ra, 25
                  slli         s2, s2, 31
                  srai         s3, a3, 10
                  srl          s8, a4, s5
                  sltiu        t3, s0, -45
                  sll          a4, a6, a2
                  sltu         a7, s8, t6
                  srl          ra, t2, s5
                  srl          t1, zero, tp
                  ori          s2, sp, -717
                  lui          a1, 26384
                  slt          tp, t2, tp
                  nop
                  sltiu        s7, s6, -702
                  addi         s3, a0, 526
                  slt          s9, t1, t3
                  sra          t3, s8, a4
                  sll          a2, s1, s5
                  andi         t3, ra, -1113
                  slt          a5, s5, s6
                  lui          t1, 490764
                  addi         t1, zero, 855
                  addi         t3, sp, 919
                  srl          t6, t0, s11
                  and          a7, zero, a2
                  srl          ra, a1, a6
                  sltu         s5, s3, s10
                  srli         s10, s3, 9
                  sltu         s6, zero, s6
                  or           s6, a3, s2
                  slt          tp, s7, s11
                  and          a6, s3, t3
                  sltu         s8, s1, t5
                  lui          gp, 944847
                  xori         a1, a5, 1018
                  addi         s9, t6, -1718
                  sltiu        t3, s0, 1500
                  sub          a5, s2, s4
                  andi         t0, a7, -255
                  sltu         sp, t4, a3
                  ori          t2, a1, 875
                  ori          a5, s4, 1684
                  sub          t3, s0, a6
                  add          s5, t6, t4
                  nop
                  or           s9, zero, a6
                  xori         a3, a7, -1012
                  and          t6, sp, s5
                  andi         a1, a1, 1811
                  and          gp, a1, s6
                  slli         s6, s2, 4
                  nop
                  and          zero, s3, s7
                  srli         ra, s10, 9
                  nop
                  sll          a1, a2, s4
                  sll          a5, a3, t0
                  and          tp, s11, t5
                  or           a2, t2, s8
                  slt          a4, a1, gp
                  nop
                  slt          a4, gp, tp
                  sll          a3, t5, t5
                  xor          tp, a6, t1
                  add          s4, s10, a0
                  sub          s10, zero, sp
                  srl          s8, a0, s7
                  auipc        a3, 508212
                  or           s11, s8, t5
                  srai         sp, s10, 21
                  sra          s6, sp, s11
                  sra          a7, t4, tp
                  slli         t1, sp, 23
                  sub          t2, t0, a4
                  and          s5, t4, s0
                  slti         t2, a7, -1665
                  xor          t4, t5, ra
                  sub          s9, t3, s10
                  ori          s7, ra, -1091
                  sub          a4, s6, s10
                  xor          a2, s1, a7
                  slli         s3, sp, 30
                  srl          s4, s11, t4
                  xori         s2, a5, -1804
                  sltu         a2, a0, a5
                  lui          a4, 858864
                  lui          a4, 684079
                  sltu         t4, s0, a7
                  nop
                  nop
                  add          s1, t3, t5
                  nop
                  sub          t1, a2, gp
                  srai         a1, t3, 16
                  xor          s10, t2, t6
                  and          sp, a1, gp
                  auipc        s4, 866179
                  auipc        t1, 179067
                  or           a3, a4, t3
                  andi         t0, s7, -1507
                  sra          s7, s5, s9
                  lui          t3, 318977
                  addi         ra, s5, 559
                  and          t1, s0, s2
                  sltiu        a6, a5, 1073
                  add          t3, s5, a7
                  andi         a6, s7, -328
                  nop
                  xori         sp, ra, 1642
                  slt          gp, t3, t1
                  or           s7, t4, a0
                  or           s10, s0, s8
                  ori          t1, t5, -618
                  or           zero, a5, s2
                  sltu         t2, s1, s8
                  xori         t2, s11, 1332
                  andi         s3, t2, -1007
                  xor          sp, a3, tp
                  srai         s3, t4, 20
                  xori         s1, s5, -1279
                  addi         s11, tp, -234
                  auipc        a2, 769165
                  srl          a2, a6, a2
                  auipc        sp, 95633
                  sub          s2, s4, t2
                  sra          a3, t6, a4
                  ori          s6, tp, 549
                  sltu         t0, t1, s2
                  and          gp, gp, ra
                  or           s10, t4, a7
                  andi         a2, s7, 944
                  and          a3, s5, a7
                  addi         s5, s10, 276
                  srl          s8, gp, t4
                  and          s4, a1, ra
                  add          s1, t0, t4
                  auipc        s4, 120253
                  sub          t2, s9, a0
                  addi         s6, s6, -614
                  andi         a7, a3, -970
                  srl          a6, zero, t5
                  ori          t0, t6, 7
                  srli         s11, s4, 23
                  and          tp, a7, a5
                  auipc        s2, 103346
                  ori          gp, t5, -585
                  andi         a3, t3, 1684
                  lui          s9, 450924
                  ori          a1, s6, 1251
                  lui          s2, 862100
                  sub          s5, a3, tp
                  addi         a4, a3, -434
                  slt          t0, s7, a7
                  addi         tp, s10, -1685
                  nop
                  nop
                  and          gp, s3, tp
                  srli         s7, s7, 16
                  add          ra, t1, a4
                  andi         s1, ra, 796
                  xor          a3, s1, a6
                  sra          a1, s7, s4
                  sll          a3, a3, sp
                  andi         s11, s1, -1884
                  srli         s5, s4, 4
                  srli         t6, gp, 26
                  sltiu        a3, s8, 1235
                  nop
                  addi         s9, sp, 1157
                  slli         s5, t2, 29
                  slt          s3, ra, a7
                  srli         a1, gp, 3
                  sltiu        t6, t3, -2019
                  sltu         s2, zero, t3
                  sub          ra, ra, t2
                  auipc        s1, 996343
                  or           gp, s3, t2
                  sra          sp, a2, s0
                  sltiu        a7, a4, 6
                  sll          zero, s10, s9
                  addi         zero, gp, -2015
                  ori          a5, a6, 1269
                  xor          s9, t5, a1
                  or           s10, t1, tp
                  auipc        s5, 309279
                  and          t0, s0, s4
                  add          a6, s9, t4
                  ori          a1, s4, 702
                  slti         a7, a4, -993
                  srl          a1, s2, t0
                  slt          t6, t0, sp
                  sra          s2, s0, a0
                  lui          t6, 992918
                  slli         gp, a0, 23
                  srli         s3, t6, 22
                  srl          s6, s6, s2
                  or           s9, s8, s8
                  nop
                  sll          a2, t3, t0
                  and          t0, a7, t5
                  sll          s7, s9, s8
                  nop
                  sltu         s11, s7, zero
                  and          tp, a1, t5
                  sltiu        gp, a1, -55
                  or           t3, s11, zero
                  srl          a5, t6, s8
                  srai         t2, t0, 23
                  ori          s7, tp, -748
                  add          t3, gp, t2
                  sub          t3, a4, s5
                  or           a5, t2, t3
                  srli         t1, s5, 29
                  slli         s6, a6, 3
                  sltiu        s9, t3, 976
                  auipc        t3, 132341
                  xori         a3, a7, -954
                  xor          t0, a6, t1
                  ori          zero, s6, 916
                  add          s5, s2, s3
                  sltiu        t2, s3, -201
                  sub          a3, t1, s2
                  slti         s5, sp, 309
                  slt          s1, s5, a2
                  ori          s7, s9, 584
                  or           zero, t6, s6
                  srli         a7, a6, 10
                  and          s9, gp, s10
                  srl          t0, s9, t3
                  xori         s5, t4, -1532
                  slt          a5, s1, t6
                  sra          a2, s7, zero
                  addi         a3, a1, 331
                  lui          sp, 963361
                  andi         s11, t2, -1167
                  or           s3, s6, s9
                  srai         ra, s8, 24
                  slt          s9, t3, a0
                  or           gp, s7, t6
                  addi         s8, t4, 666
                  slli         s10, ra, 13
                  sra          t6, zero, a6
                  ori          t2, t4, -1042
                  sra          s7, ra, s7
                  sub          s4, s8, zero
                  nop
                  xor          s11, tp, s9
                  sll          a7, a5, a2
                  add          s1, t3, a2
                  xor          tp, tp, s9
                  andi         s1, gp, -806
                  sub          s10, s10, s1
                  sra          a5, s9, a6
                  sltiu        a5, s8, -1198
                  slli         ra, a0, 21
                  sub          a5, s8, s8
                  sll          a6, zero, a2
                  sltu         t4, t0, s11
                  sltu         s8, t0, s5
                  sltiu        tp, tp, -2024
                  sll          t3, s0, sp
                  xor          s10, a6, t2
                  xor          gp, s0, s0
                  sub          t3, s9, t0
                  sll          s8, a7, t1
                  sltiu        a3, a6, 486
                  sra          s3, t1, s0
                  auipc        t2, 1002569
                  sltu         s2, t3, a7
                  nop
                  srai         s10, sp, 17
                  andi         s10, s1, -10
                  srl          t3, t5, a4
                  or           s6, a5, s7
                  lui          a5, 188692
                  sll          s2, zero, s4
                  slti         s3, s2, 381
                  slli         s11, a5, 13
                  ori          a4, s5, -102
                  slt          ra, a3, a3
                  xori         s11, s3, -1252
                  add          s8, zero, zero
                  addi         a2, gp, -59
                  sra          zero, s11, gp
                  sltu         tp, a1, zero
                  ori          t3, s2, 1679
                  add          s4, s4, s1
                  srl          a2, a7, ra
                  nop
                  xori         tp, s4, 702
                  srli         a6, s5, 24
                  sltu         a5, s1, t5
                  andi         s8, s9, 240
                  auipc        s10, 976356
                  slli         t2, t3, 29
                  and          s2, t5, s2
                  xor          sp, t4, gp
                  sll          s10, s4, s11
                  andi         s2, s6, -586
                  srli         a5, t5, 3
                  slli         t0, s2, 27
                  andi         s1, t5, -1262
                  sltu         sp, zero, s10
                  sub          s9, t2, s2
                  slli         t6, a7, 17
                  sll          s5, a3, t4
                  lui          a2, 39243
                  lui          s6, 71659
                  and          sp, t2, s8
                  andi         t3, a2, 419
                  andi         a5, a6, 1461
                  slti         tp, gp, -1644
                  sub          a7, t3, gp
                  slti         s9, a2, -1958
                  sra          t1, s10, s4
                  slt          a1, a7, t4
                  sub          a6, t6, s8
                  and          s6, ra, ra
                  slt          a4, s7, t2
                  sra          ra, gp, a5
                  sra          s9, zero, s7
                  or           ra, s11, a4
                  xor          ra, s4, s2
                  sub          s2, a7, t1
                  slti         s4, s7, 1000
                  srl          t0, s8, s0
                  slti         s3, t5, -632
                  slti         s9, s6, 1288
                  xori         t6, t6, 119
                  addi         t1, s3, 919
                  sltu         ra, gp, s9
                  add          gp, s4, t5
                  slt          tp, a4, s3
                  slti         t4, t6, 1224
                  srli         a1, s3, 13
                  slti         gp, t2, 513
                  and          s1, s0, t6
                  add          a5, a6, sp
                  or           a7, s3, s4
                  add          gp, t5, s10
                  addi         s6, ra, -891
                  sra          t4, s10, s7
                  lui          s7, 552928
                  srl          s8, tp, a4
                  ori          s11, s9, 1151
                  or           t6, a7, a4
                  xor          t4, a4, t2
                  ori          a5, t3, -1929
                  slli         a3, a2, 14
                  srai         a7, s9, 28
                  xor          a7, sp, s6
                  xori         s7, s1, -943
                  ori          t6, s10, 723
                  and          a3, t0, s2
                  sltu         a1, a7, s6
                  nop
                  srai         gp, t3, 28
                  or           s7, tp, s9
                  slli         s1, t2, 13
                  srai         s4, t2, 19
                  or           tp, s6, sp
                  sltu         s5, s6, t5
                  slli         sp, a0, 1
                  slli         s7, s2, 0
                  or           s9, t6, s7
                  ori          s11, a5, -1684
                  sll          s1, s5, t3
                  auipc        a6, 696525
                  addi         sp, s4, 493
                  lui          t1, 658166
                  sltiu        t0, s0, 1170
                  sll          s8, s7, s4
                  ori          s2, t2, 1299
                  sll          s6, a1, s6
                  or           gp, t4, a1
                  srai         s5, a0, 11
                  sltiu        s3, t4, -2043
                  xor          tp, a4, s0
                  nop
                  and          t3, s10, a5
                  sra          s2, a3, sp
                  lui          a3, 925929
                  xori         s10, s6, 1185
                  add          t6, gp, t1
                  slli         gp, t6, 23
                  sub          s8, t1, t6
                  addi         s3, s4, -1843
                  slti         s4, s1, 1635
                  sltu         s10, t5, sp
                  xor          a2, t1, s0
                  auipc        t6, 478537
                  sltiu        a4, a2, -810
                  sll          zero, a4, a5
                  slti         s6, gp, -1928
                  xor          tp, s8, a2
                  addi         t1, t2, 1382
                  andi         s4, s4, 698
                  addi         s3, s3, 1654
                  auipc        a6, 773769
                  ori          a6, s8, -1151
                  sub          s9, t0, s9
                  auipc        zero, 1027980
                  nop
                  andi         s7, tp, -648
                  nop
                  sltu         s9, s2, s9
                  srl          ra, tp, s6
                  auipc        s11, 538737
                  nop
                  sltu         s2, s0, a5
                  auipc        a5, 1011650
                  slti         s10, a2, 583
                  auipc        s6, 402528
                  ori          zero, s3, -182
                  slt          s6, s0, ra
                  lui          a7, 201654
                  auipc        t0, 745206
                  slt          a5, s1, s10
                  srai         ra, s8, 5
                  add          t3, s7, t4
                  addi         s11, a7, 133
                  sra          t1, a3, s3
                  sltu         s2, a7, s1
                  nop
                  add          a2, s9, a0
                  and          t2, s3, t5
                  slti         t3, tp, -37
                  sltiu        ra, a2, 2043
                  add          s6, s11, s8
                  or           t3, s8, t4
                  lui          t3, 612069
                  auipc        a7, 614434
                  or           a2, t3, t2
                  slt          s6, a7, a3
                  sll          s3, a6, a1
                  lui          tp, 494893
                  sltu         t2, t6, ra
                  sll          a3, t0, s1
                  xori         a3, s0, 1933
                  nop
                  xor          t0, s1, s8
                  sll          s1, gp, s9
                  addi         a2, t0, 1459
                  srl          gp, a2, s6
                  srl          a6, s0, s4
                  ori          t0, zero, 639
                  xori         s2, s4, 1064
                  or           s11, tp, t0
                  lui          s5, 657974
                  or           s7, s0, a4
                  and          a1, t3, t1
                  auipc        a4, 455049
                  slli         s3, t4, 25
                  ori          t6, a5, -1812
                  sll          s9, s8, s2
                  addi         t2, ra, 842
                  andi         s1, gp, -801
                  sll          a7, s0, t3
                  andi         a4, s0, 1082
                  and          s8, s1, a5
                  sub          sp, a4, a7
                  slti         s3, tp, -1004
                  and          a6, t2, a5
                  andi         s10, s11, -257
                  sltiu        zero, zero, -1379
                  slti         zero, a2, 577
                  srai         a5, a6, 1
                  andi         s7, a6, -180
                  slt          t6, gp, t3
                  la x8, test_done
                  jalr x0, x8, 0
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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  add x30, x10, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x26, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x26, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x26, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x26, x7, ecall_handler
                  li x7, 0x1
                  beq x26, x7, instr_fault_handler
                  li x7, 0x5
                  beq x26, x7, load_fault_handler
                  li x7, 0x7
                  beq x26, x7, store_fault_handler
                  li x7, 0xc
                  beq x26, x7, pt_fault_handler
                  li x7, 0xd
                  beq x26, x7, pt_fault_handler
                  li x7, 0xf
                  beq x26, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

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
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x10, x30, zero
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
                  add x10, x30, zero
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
                  add x10, x30, zero
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
                  add x10, x30, zero
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
                  add x10, x30, zero
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
                  add x10, x30, zero
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
