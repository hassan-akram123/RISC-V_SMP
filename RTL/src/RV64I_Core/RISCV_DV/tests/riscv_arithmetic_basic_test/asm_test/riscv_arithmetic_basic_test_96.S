.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 0
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x1800
                  csrw 0x300, x8 # MSTATUS
                  mret
init:             
                  li x0, 0x8b83c12
                  li x1, 0xaaeb5e84
                  li x2, 0xcc12bad5
                  li x3, 0x9
                  li x4, 0xb44abe9
                  li x5, 0x96444da0
                  li x6, 0xf5623dbe
                  li x7, 0x80000000
                  li x8, 0x6
                  li x10, 0x80000000
                  li x11, 0x4a94601e
                  li x12, 0x80000000
                  li x13, 0xf1e8f005
                  li x14, 0x2
                  li x15, 0x5
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0xf7201cc4
                  li x19, 0x3561d98b
                  li x20, 0x80000000
                  li x21, 0x0
                  li x23, 0xa3d232c4
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x50869a69
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x263b3ba9
                  li x31, 0x3a2edb8f
                  la x22, user_stack_end
main:             li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           a0, 0xffffffff
                  li           a1, 0xffffffff
                  li           a7, 0x0
                  li           t6, 0xffffffff
                  li           s2, 0x80000000
                  li           t0, 0x0
                  li           s5, 0xffffffff
                  li           a3, 0x2f49752
                  li           s11, 0xff3b1fb9
                  add          a7, s11, s11
                  addi         s2, s5, 1706
                  nop
                  addi         s2, a0, -1934
                  lui          a4, 51429
                  lui          a1, 812551
                  lui          a3, 735940
                  nop
                  sub          a7, a4, s5
                  lui          t0, 450855
                  addi         a4, a7, -657
                  auipc        s11, 948650
                  sub          a3, a4, a0
                  nop
                  auipc        t0, 508632
                  lui          a1, 507989
                  nop
                  auipc        a4, 590010
                  add          s5, t6, a0
                  nop
                  sub          a4, a4, s11
                  auipc        s2, 558582
                  nop
                  lui          t0, 17890
                  sub          a3, s11, s2
                  auipc        a4, 758271
                  addi         t6, s2, 1716
                  lui          s11, 883240
                  add          s5, a0, s5
                  nop #end riscv_int_numeric_corner_stream_5
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s0, 0xffffffff
                  li           gp, 0xba04f976
                  li           s3, 0xffffffff
                  li           t4, 0x80000000
                  li           t5, 0x80000000
                  li           tp, 0x80000000
                  li           t0, 0xffffffff
                  li           s9, 0xffffffff
                  li           a4, 0xffffffff
                  lui          s0, 528434
                  lui          s0, 600889
                  lui          tp, 746886
                  auipc        t0, 306501
                  auipc        t0, 776434
                  lui          gp, 638951
                  add          s3, s0, tp
                  add          t0, t4, s9
                  auipc        s3, 1004245
                  auipc        t5, 1042787
                  sub          a4, s3, s0
                  addi         t5, t5, 1650
                  sub          t5, s3, gp
                  add          t4, s0, tp
                  addi         t5, s3, -1207
                  add          t0, s0, a4
                  add          tp, gp, t5
                  auipc        t0, 232096
                  nop
                  nop
                  lui          t5, 805587
                  auipc        t4, 1040028
                  addi         gp, t4, 1761 #end riscv_int_numeric_corner_stream_1
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           a3, 0xffffffff
                  li           s0, 0x0
                  li           t6, 0x0
                  li           a2, 0x80000000
                  li           t5, 0xffffffff
                  li           s2, 0x80000000
                  li           gp, 0xffffffff
                  li           a0, 0xffffffff
                  li           s3, 0x0
                  sub          s2, a0, s2
                  addi         s3, a2, -1744
                  addi         t6, s10, -1126
                  sub          a0, s10, t6
                  sub          s0, s2, a2
                  addi         gp, t6, 1319
                  auipc        a2, 734151
                  lui          t6, 695528
                  sub          s3, s2, a2
                  addi         t6, a0, 1715
                  auipc        t6, 640813
                  addi         gp, gp, 202
                  auipc        t5, 790021
                  nop
                  addi         t5, s3, -1158 #end riscv_int_numeric_corner_stream_16
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           a3, 0xffffffff
                  li           s10, 0x80000000
                  li           t6, 0xd74506cf
                  li           sp, 0xffffffff
                  li           a5, 0x0
                  li           s4, 0x35ef9ba5
                  li           s11, 0xffffffff
                  li           s3, 0x80000000
                  li           s2, 0xffffffff
                  lui          s10, 217115
                  lui          s11, 754531
                  sub          s11, s4, s11
                  addi         s2, s11, 416
                  nop
                  addi         s4, s3, 520
                  lui          a3, 595285
                  lui          sp, 356797
                  auipc        t6, 408186
                  nop
                  sub          s2, a5, s10
                  auipc        s11, 691948
                  sub          s11, s10, s10
                  addi         s11, sp, 1136
                  lui          sp, 439108
                  lui          a5, 828531
                  addi         s4, s3, 69
                  lui          a3, 429801
                  sub          a3, t1, t1
                  sub          s10, t6, s4
                  lui          s3, 105608
                  auipc        s10, 633494
                  nop
                  auipc        t1, 778451
                  auipc        sp, 259449 #end riscv_int_numeric_corner_stream_4
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           t6, 0x80000000
                  li           s5, 0x0
                  li           t3, 0x80000000
                  li           a5, 0xffffffff
                  li           s10, 0xffffffff
                  li           a6, 0x80000000
                  li           t1, 0xffffffff
                  li           tp, 0x0
                  li           s0, 0x80000000
                  sub          s5, t1, s10
                  nop
                  nop
                  lui          t3, 1031503
                  add          t3, a5, t3
                  addi         a5, s5, 866
                  auipc        s10, 1009515
                  lui          t6, 286783
                  sub          t3, a5, a7
                  add          a7, t1, s10
                  lui          s10, 671272
                  sub          t6, s5, s5
                  add          t1, s5, s0
                  add          a7, a5, s0
                  lui          s0, 340669
                  add          a5, a7, t6
                  sub          t3, s0, t6
                  auipc        t1, 210183
                  add          s10, a6, tp #end riscv_int_numeric_corner_stream_15
                  li           s7, 0x7b20b03f #start riscv_int_numeric_corner_stream_11
                  li           s3, 0x0
                  li           t4, 0x80000000
                  li           s5, 0x8d200903
                  li           gp, 0x0
                  li           s4, 0xffffffff
                  li           s11, 0xffffffff
                  li           a4, 0xffffffff
                  li           t1, 0xffffffff
                  li           sp, 0x0
                  sub          s3, t4, s7
                  add          s5, t4, sp
                  add          s11, sp, s11
                  lui          a4, 23059
                  addi         gp, s11, -1861
                  addi         s4, t1, 579
                  sub          s11, s11, sp
                  auipc        s5, 590449
                  sub          sp, gp, a4
                  nop
                  nop
                  add          s5, a4, a4
                  add          t4, s4, t4
                  lui          s11, 119524
                  nop
                  addi         s11, s3, -816
                  sub          t1, gp, t4
                  add          gp, a4, s3
                  nop
                  add          t1, t1, s11
                  sub          s5, a4, t1
                  nop
                  addi         a4, sp, 275
                  add          a4, s7, s7 #end riscv_int_numeric_corner_stream_11
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           a2, 0x80000000
                  li           t3, 0x0
                  li           s4, 0x80000000
                  li           t2, 0xea5eec9e
                  li           a5, 0x80000000
                  li           a1, 0xffffffff
                  li           s10, 0x0
                  li           a3, 0xffffffff
                  li           sp, 0xffffffff
                  sub          a2, a3, s10
                  addi         a2, a2, -1720
                  add          s4, s0, a2
                  lui          a5, 282455
                  add          sp, a1, a5
                  add          s4, s4, s4
                  sub          sp, a1, s4
                  addi         a1, t2, -2030
                  auipc        t2, 733587
                  addi         a2, s10, 596
                  auipc        t2, 331935
                  auipc        s0, 14004
                  addi         s0, sp, -1411
                  auipc        a2, 413597
                  sub          s4, a2, s0
                  nop
                  add          t3, s10, a1
                  nop
                  nop
                  nop
                  addi         s0, a3, -709
                  auipc        sp, 476864
                  add          a3, s10, sp
                  auipc        a3, 834717
                  lui          a3, 418576
                  sub          s4, a2, s0 #end riscv_int_numeric_corner_stream_17
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           a0, 0x0
                  li           a6, 0x80000000
                  li           t4, 0x0
                  li           a7, 0x80000000
                  li           s9, 0x0
                  li           a2, 0x80000000
                  li           t2, 0xffffffff
                  li           s11, 0x0
                  li           sp, 0x56639e2
                  add          a2, a0, a6
                  nop
                  addi         a7, s8, -111
                  nop
                  add          t2, sp, s9
                  auipc        a2, 64414
                  auipc        s8, 261236
                  lui          sp, 405753
                  add          s11, a7, s11
                  add          a7, sp, s11
                  nop
                  add          t4, a0, s11
                  auipc        s11, 112334
                  addi         t2, a7, 456
                  lui          a2, 426033
                  lui          s11, 1004032
                  auipc        t4, 458846
                  sub          s11, a6, s8 #end riscv_int_numeric_corner_stream_12
                  li           a2, 0x857a05a5 #start riscv_int_numeric_corner_stream_3
                  li           t3, 0x80000000
                  li           s2, 0x0
                  li           t5, 0xffffffff
                  li           s0, 0xffffffff
                  li           tp, 0xffffffff
                  li           a7, 0x80000000
                  li           a0, 0x80000000
                  li           s4, 0x17347be2
                  li           s8, 0x0
                  nop
                  lui          t5, 59549
                  add          t3, a7, t5
                  nop
                  add          s2, s4, s2
                  nop
                  add          a0, a0, a7
                  lui          s2, 572355
                  auipc        s2, 729395
                  sub          s8, a0, s2
                  add          t3, t5, s4
                  add          t5, s0, tp
                  nop
                  auipc        a2, 427666
                  add          s0, a0, s2
                  sub          s0, t3, a7
                  auipc        a7, 785609
                  auipc        s4, 364735
                  sub          t3, s8, t5
                  auipc        a7, 55510
                  lui          t3, 740660
                  add          a0, a2, tp
                  add          a7, t5, tp
                  add          s2, a0, a2 #end riscv_int_numeric_corner_stream_3
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           s10, 0xffffffff
                  li           a4, 0x80000000
                  li           t3, 0x0
                  li           s11, 0x80000000
                  li           s8, 0xffffffff
                  li           t6, 0x0
                  li           sp, 0x0
                  li           s2, 0x80000000
                  li           a3, 0x126696f8
                  auipc        sp, 48441
                  addi         a3, s4, 517
                  addi         s2, s8, 1803
                  auipc        s11, 315105
                  sub          s11, t6, t3
                  sub          s10, s10, s10
                  add          s8, s4, a3
                  nop
                  add          s11, s10, t6
                  lui          t3, 80197
                  add          s11, s10, a3
                  addi         t3, s11, 587
                  nop
                  add          s10, t3, s4
                  lui          s8, 341385
                  addi         t3, s10, 820
                  lui          t3, 737128
                  lui          s8, 382603
                  lui          s11, 786762
                  lui          sp, 305951
                  nop
                  add          s11, t6, a4
                  add          sp, s4, t6
                  addi         s4, a3, -103 #end riscv_int_numeric_corner_stream_0
                  slli         s0, s8, 23
                  sra          a6, a2, s11
                  lui          s7, 209375
                  srli         a5, t2, 25
                  sub          s7, a5, t4
                  or           t6, s1, s0
                  slli         a6, t1, 19
                  sltu         s8, sp, zero
                  lui          a6, 161214
                  sub          s10, s4, s4
                  auipc        s8, 682533
                  srli         t5, t3, 8
                  srli         zero, s7, 14
                  xori         s0, a4, -1364
                  slt          a5, s8, t2
                  lui          s0, 474517
                  srli         a3, sp, 5
                  sll          s5, a5, t6
                  lui          a2, 406114
                  add          gp, s6, ra
                  slt          s0, zero, gp
                  slti         t5, a6, 2019
                  slti         t3, a6, -689
                  sltiu        zero, t4, -703
                  and          s7, s7, s4
                  ori          s5, s3, -1737
                  auipc        s8, 712943
                  srli         s5, s6, 30
                  sra          gp, s2, ra
                  srai         s11, a6, 23
                  andi         a2, s4, -596
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           gp, 0xffffffff
                  li           a7, 0x80000000
                  li           a1, 0xffffffff
                  li           s9, 0x80000000
                  li           t2, 0xffffffff
                  li           tp, 0x80000000
                  li           s3, 0x80000000
                  li           t6, 0x0
                  li           t5, 0x9543838f
                  lui          t2, 520289
                  sub          t5, t2, gp
                  addi         s3, s9, 1538
                  add          s3, tp, t5
                  sub          t5, t5, t2
                  sub          t2, t5, t2
                  auipc        s3, 751290
                  lui          t5, 627927
                  sub          a1, a7, gp
                  addi         t6, a1, 522
                  add          s3, gp, s8
                  auipc        s3, 641187
                  addi         s3, a7, 594
                  add          s8, s3, a7
                  addi         a7, s3, -387
                  auipc        tp, 606241
                  auipc        t5, 792920
                  add          t2, a1, a7 #end riscv_int_numeric_corner_stream_7
                  andi         a5, s4, 473
                  sltiu        t3, s5, -273
                  xor          t0, t6, s3
                  srai         tp, s10, 15
                  sll          a0, sp, a2
                  nop
                  sltu         a0, t2, t3
                  sltu         s3, s9, s0
                  sltu         s2, s10, s9
                  srl          s2, s9, t6
                  ori          s11, s2, 886
                  auipc        t4, 771536
                  add          a5, s4, s9
                  addi         t6, a0, 759
                  ori          a5, s4, -1842
                  xori         t0, t2, 217
                  xori         t0, t1, 630
                  auipc        s10, 661292
                  add          s9, s1, ra
                  xor          s8, a2, t4
                  srai         t5, a7, 8
                  and          tp, a0, a6
                  xor          t4, t6, ra
                  sltu         s11, t0, t5
                  xori         s8, t6, 1011
                  auipc        gp, 245620
                  sra          a4, s7, s4
                  add          s3, s5, s8
                  and          tp, s1, s1
                  srai         t0, s11, 29
                  lui          zero, 554135
                  addi         s9, s10, -1123
                  sll          a6, s6, s5
                  slti         zero, a7, 398
                  srai         s11, a4, 5
                  sltu         sp, a5, s4
                  xor          a6, s5, t1
                  xori         t2, t5, 1304
                  slli         s10, s7, 18
                  ori          a5, s5, 877
                  sll          tp, s10, s4
                  nop
                  xor          s3, t0, s6
                  lui          t0, 559548
                  and          t6, a5, t5
                  sub          gp, t0, s6
                  or           t1, s10, a5
                  add          s0, a4, t4
                  auipc        zero, 24115
                  slli         t4, a1, 19
                  srl          s10, s8, s1
                  srai         s11, a4, 22
                  addi         s7, ra, 155
                  sra          t2, s8, s0
                  add          s10, ra, s7
                  xor          a4, t2, t6
                  and          s7, zero, a4
                  addi         tp, a0, -122
                  addi         s11, t0, -738
                  or           s2, s7, zero
                  or           s4, s8, t3
                  xori         a4, a1, -1647
                  nop
                  sll          a4, s11, sp
                  xori         s4, t3, 898
                  sub          zero, t2, s9
                  sltiu        tp, s0, 863
                  srli         t3, gp, 28
                  lui          s4, 1024547
                  xor          s4, t4, s6
                  andi         t6, t6, 560
                  sll          s4, s7, t3
                  slti         t6, ra, -268
                  sll          a1, s7, t1
                  andi         s2, tp, -2032
                  sltu         t1, t4, t6
                  sltu         a7, s0, zero
                  sll          a4, s0, a2
                  sltiu        s9, s7, -1247
                  slli         t5, t4, 23
                  lui          s0, 489813
                  sltiu        zero, t1, -468
                  xor          t6, a7, a5
                  sub          s11, s6, a0
                  and          s0, a1, sp
                  srli         a7, a6, 23
                  addi         t2, tp, 2043
                  addi         zero, a4, 577
                  srli         gp, t4, 16
                  lui          s5, 678196
                  srl          a4, s6, t2
                  srl          s9, s2, a7
                  sltu         t5, s9, t6
                  srli         s3, zero, 8
                  sll          s2, t3, s8
                  sltu         zero, a2, ra
                  slt          t6, s1, s1
                  lui          t3, 132717
                  sltu         a4, t1, t4
                  lui          t1, 159103
                  lui          t6, 948399
                  andi         s9, t0, -110
                  sltiu        a1, sp, -1212
                  addi         t4, t0, 1803
                  ori          a7, a5, 368
                  andi         tp, s2, -1573
                  sltu         zero, a0, t5
                  sll          a5, s0, s8
                  add          s3, tp, zero
                  slti         t5, s2, -925
                  and          a5, s11, s5
                  add          t2, sp, s0
                  sltu         s2, a7, s8
                  nop
                  sub          a2, zero, s0
                  addi         s5, a3, -38
                  andi         a4, t0, 877
                  srli         t0, a5, 22
                  slt          tp, s7, a6
                  add          s3, s2, a7
                  sra          sp, a4, sp
                  nop
                  addi         a1, a7, 1265
                  srai         a7, s9, 25
                  slt          a6, s5, sp
                  slt          s2, s7, t4
                  sltiu        t6, s6, 835
                  slt          t1, s8, a6
                  andi         a0, t2, -185
                  or           a6, s3, t3
                  sub          a7, s4, s9
                  sltu         a1, tp, s4
                  slli         a5, s5, 12
                  sltiu        s7, t4, -1189
                  sll          s2, a4, s5
                  ori          s4, t5, 632
                  sra          s9, s11, a1
                  add          a4, a2, s7
                  nop
                  sltiu        a5, gp, -1146
                  slli         s3, tp, 4
                  slli         a7, t1, 11
                  nop
                  ori          a2, s5, -700
                  or           s3, s11, a1
                  sltu         a0, a1, gp
                  addi         s7, t0, 250
                  srai         a4, sp, 29
                  srli         a6, s5, 13
                  sltu         s5, a5, t5
                  auipc        a6, 921883
                  auipc        a2, 92784
                  lui          a3, 581797
                  slti         s10, a5, -1248
                  addi         t2, t5, 752
                  or           t3, s8, s1
                  slti         s3, t5, 1202
                  srl          sp, ra, s7
                  addi         s8, t0, -1883
                  xor          t2, s6, t1
                  ori          tp, s0, 363
                  addi         s0, s6, -795
                  nop
                  srli         s7, t6, 11
                  add          s5, a0, a6
                  srl          a6, a3, a5
                  or           a4, gp, zero
                  xor          s2, s11, zero
                  or           s10, a4, a3
                  xori         s4, t1, -748
                  lui          s2, 882274
                  slt          s8, a7, a2
                  srl          s3, s9, tp
                  sltiu        a7, a6, -979
                  sltiu        a2, t3, -1796
                  and          s4, s8, s4
                  ori          t4, s5, -769
                  srli         a5, gp, 31
                  auipc        t0, 1002283
                  sltu         t4, s6, t2
                  srli         s2, ra, 24
                  andi         s11, a3, 1287
                  srl          s7, t0, s5
                  add          a5, t6, s10
                  auipc        a7, 72347
                  addi         a7, s4, -1188
                  andi         sp, ra, 565
                  sub          s4, t5, t4
                  sra          a0, t6, a4
                  sltu         a1, s0, s8
                  srai         a4, gp, 27
                  sll          t0, s7, s2
                  sub          a6, zero, a2
                  xor          a5, t2, t4
                  sltu         a7, zero, tp
                  lui          s2, 339701
                  slti         s11, s3, -1763
                  addi         t4, t3, 1436
                  srli         gp, s7, 4
                  or           a1, a4, t5
                  slt          a7, a7, s7
                  srl          t6, s8, s10
                  sltu         t2, s1, s6
                  nop
                  sltu         s5, s1, s8
                  sub          s8, a1, t5
                  sltu         s11, t5, a1
                  or           s3, s5, s10
                  auipc        s2, 649266
                  xori         sp, s4, -1751
                  slti         s9, t5, 1738
                  sll          s9, s9, gp
                  srai         s4, s4, 5
                  auipc        a7, 703999
                  srai         a0, a6, 19
                  slti         gp, t5, -768
                  srli         s5, a7, 6
                  srai         s11, t0, 16
                  or           tp, a7, t4
                  addi         a5, s1, -301
                  xori         t5, t2, 572
                  sub          s9, s2, t1
                  sub          s4, s6, s3
                  xori         t5, sp, -450
                  sra          s7, s8, t2
                  sll          a4, sp, s1
                  sra          zero, tp, ra
                  nop
                  slt          tp, s4, s5
                  slt          t3, a5, a3
                  li           a2, 0x84b50723 #start riscv_int_numeric_corner_stream_18
                  li           t4, 0x80000000
                  li           a1, 0x0
                  li           s5, 0x80000000
                  li           s0, 0x80000000
                  li           a0, 0x0
                  li           s4, 0xffffffff
                  li           sp, 0xffffffff
                  li           s3, 0x80000000
                  li           t1, 0xffffffff
                  sub          a2, s3, a1
                  add          s3, a0, t4
                  auipc        s3, 965838
                  sub          s0, a0, a2
                  lui          a0, 367581
                  auipc        s4, 532547
                  addi         s5, t4, 1118
                  auipc        s0, 529514
                  auipc        s3, 284620
                  add          s0, sp, s4
                  nop
                  lui          a2, 869488
                  sub          sp, a0, s5
                  lui          t4, 687910
                  nop
                  auipc        t4, 991409 #end riscv_int_numeric_corner_stream_18
                  sra          s0, a5, t2
                  srli         a4, t4, 24
                  srl          a3, t0, tp
                  sll          t1, s0, s8
                  xori         s7, a0, 1697
                  sltiu        zero, t5, -25
                  srli         a5, s4, 18
                  sll          a1, s10, t3
                  srai         t0, ra, 16
                  sub          t2, tp, t1
                  slt          a2, s0, s1
                  srli         gp, a3, 21
                  sub          zero, t6, a2
                  add          s5, a0, s7
                  auipc        t6, 126501
                  sll          s7, sp, sp
                  slli         s8, s10, 1
                  sub          a4, s4, s0
                  srai         t0, a5, 17
                  and          s10, tp, a3
                  lui          s0, 879560
                  slt          a5, s11, s5
                  add          a5, a5, s7
                  sll          t3, s0, t5
                  add          t3, a1, s0
                  nop
                  addi         a1, s3, 1324
                  sra          s8, a1, s3
                  slt          s0, s5, a4
                  nop
                  slli         s8, s2, 27
                  sltiu        s5, s1, -1914
                  nop
                  and          tp, s10, t4
                  sll          a6, s0, t2
                  ori          t6, s0, 1351
                  slli         t1, ra, 15
                  lui          a2, 263163
                  andi         a1, s11, -358
                  srli         t0, a0, 16
                  xori         s0, s5, -256
                  slt          s0, t2, t5
                  slti         t4, s7, 1095
                  slti         t1, a0, 1351
                  ori          s10, a3, -1373
                  or           s0, s6, s8
                  slti         a2, s0, -1769
                  nop
                  nop
                  sltu         a7, s8, s8
                  srl          a5, s9, t2
                  or           s10, t0, s8
                  lui          a7, 43466
                  sltu         a1, a6, sp
                  addi         s9, t0, 271
                  sltiu        a7, s3, -519
                  auipc        s4, 486425
                  xor          s7, t2, sp
                  sll          s3, sp, s2
                  or           a7, t1, s4
                  sra          a5, gp, s0
                  sub          t2, s6, s2
                  lui          a6, 130716
                  and          s11, sp, ra
                  xori         a5, s3, 758
                  xori         t0, t0, -1578
                  ori          s7, a0, -693
                  and          a3, a5, t5
                  addi         a2, a4, -686
                  sltu         s2, sp, s0
                  or           s10, a7, tp
                  srl          zero, tp, a5
                  addi         zero, t3, -588
                  sltiu        a1, a3, -1649
                  srli         a0, a3, 28
                  srli         s5, tp, 28
                  addi         a6, s7, -1427
                  lui          t4, 53987
                  nop
                  slt          a7, s0, t2
                  auipc        t5, 471293
                  andi         a1, t2, -858
                  slti         gp, a6, -1093
                  addi         a5, a3, -853
                  sra          t3, t4, sp
                  sll          s7, t6, tp
                  andi         s5, a4, -1333
                  srai         a7, t0, 5
                  lui          s10, 243909
                  andi         a6, s4, 2043
                  slt          s5, a7, a3
                  sltiu        sp, s5, -1136
                  xor          s2, s4, a0
                  sltiu        s4, a1, -281
                  sll          s9, s3, a1
                  sltu         t1, t2, a7
                  andi         a4, a2, -1708
                  srli         a4, a3, 18
                  addi         a2, sp, -854
                  srli         a6, s3, 19
                  lui          t0, 488269
                  addi         s10, t2, 870
                  srl          t0, t6, s3
                  slli         a1, a6, 3
                  sll          t2, s3, t0
                  sub          t6, t5, s5
                  sra          zero, a6, gp
                  andi         a6, s0, 17
                  lui          a1, 39830
                  addi         s4, s8, 605
                  auipc        gp, 645667
                  xori         s2, t3, 1522
                  srli         t3, t1, 29
                  srli         s7, s4, 31
                  auipc        zero, 882420
                  addi         a3, t0, 69
                  sltu         s2, s1, gp
                  sltu         t4, s8, s7
                  sltu         zero, s6, a0
                  sltiu        s2, a6, -1860
                  sll          gp, a0, t6
                  sra          s4, t5, s7
                  slti         s10, a5, 1255
                  or           t0, s5, s10
                  ori          t3, a1, 1754
                  addi         s11, s3, -1700
                  xor          t4, s7, s9
                  nop
                  srli         a4, s8, 26
                  lui          a1, 349678
                  xor          s7, tp, a4
                  slli         s8, s5, 1
                  srli         s8, t2, 27
                  andi         a2, t0, -1910
                  srl          t1, s5, s9
                  andi         t0, a5, -1902
                  slli         t0, sp, 17
                  or           s11, s7, gp
                  xor          t0, s4, s8
                  sub          a3, a7, s9
                  ori          t6, s7, -426
                  nop
                  lui          s0, 717079
                  or           a5, s10, a5
                  xor          a6, s5, s1
                  sltiu        t0, sp, -687
                  nop
                  srl          t0, t5, t5
                  add          a4, s4, t2
                  lui          s3, 1013566
                  lui          s0, 161432
                  srl          gp, s10, s5
                  lui          t4, 922561
                  ori          s10, t0, -1824
                  lui          t4, 824822
                  slti         a7, s5, 908
                  srl          gp, s4, s5
                  slt          s2, a6, a7
                  sltiu        s4, zero, -655
                  srli         s9, s1, 29
                  srli         s0, ra, 23
                  andi         t6, ra, 85
                  slt          t5, tp, s2
                  andi         tp, s0, 262
                  sltiu        a5, s0, 983
                  and          zero, t3, a3
                  auipc        a5, 501089
                  sll          a4, s5, a7
                  slti         t0, t1, -1244
                  andi         t6, a3, 69
                  sll          tp, zero, a7
                  or           a1, t0, t6
                  slti         zero, s8, -1694
                  sub          a2, zero, a0
                  srai         a5, s9, 9
                  xor          s8, s8, t3
                  addi         t5, s10, -652
                  srl          a5, a5, s9
                  srl          sp, t1, a6
                  srl          t6, s8, s9
                  addi         s0, gp, -1180
                  ori          s0, a4, 203
                  auipc        t5, 459596
                  srai         a5, a4, 23
                  addi         s3, gp, -17
                  srai         a2, t4, 0
                  srai         tp, a5, 3
                  sra          s10, s10, a5
                  sltu         t2, a0, a1
                  nop
                  addi         gp, t3, 1545
                  xori         t3, s4, 257
                  srai         t4, a5, 28
                  andi         s4, t3, -124
                  nop
                  sltu         t4, a1, tp
                  andi         t0, s8, 75
                  add          a4, s7, a0
                  lui          t3, 545511
                  ori          s3, ra, -1619
                  slti         s0, s6, -1455
                  xori         a7, sp, -352
                  and          t2, s11, a1
                  nop
                  sub          s5, a6, s6
                  sltu         a0, sp, t0
                  slli         s11, s3, 22
                  srli         t6, a4, 21
                  sll          t6, s2, t5
                  nop
                  slt          sp, s2, sp
                  srai         s11, s8, 12
                  srl          sp, zero, zero
                  srli         t3, t5, 15
                  sub          s10, a6, s0
                  nop
                  sltiu        t6, s3, 1625
                  add          t1, s6, gp
                  srli         tp, a7, 21
                  add          sp, a5, s1
                  sltu         a0, gp, s9
                  slti         s3, t0, -1778
                  srai         a5, t6, 6
                  and          a4, t2, s11
                  lui          s0, 656566
                  sll          sp, a4, tp
                  srli         a1, s0, 6
                  sra          a5, s9, a4
                  srl          t3, s5, t6
                  srai         s7, s9, 1
                  and          t1, t1, a6
                  xor          zero, ra, ra
                  srai         t2, s7, 20
                  xor          s3, a0, sp
                  xori         s4, sp, 1875
                  xori         s3, gp, 1702
                  sra          a2, t6, s10
                  sra          t0, s5, t3
                  sll          s10, t0, s1
                  sub          t4, a3, t3
                  addi         t5, t6, 643
                  sltiu        a0, t3, 1950
                  auipc        t5, 190543
                  add          t2, t5, s3
                  sll          a5, s7, a5
                  lui          a0, 113772
                  auipc        t1, 658120
                  srai         s3, zero, 29
                  andi         s10, s3, 217
                  xori         tp, s4, 1165
                  sll          tp, a3, zero
                  sra          s9, s11, t3
                  xor          a4, s10, s9
                  auipc        a5, 63264
                  sll          s4, a6, s3
                  xor          t6, s7, a3
                  add          s0, t4, s6
                  srai         s0, s0, 31
                  xori         t0, s6, 1486
                  srli         a2, s4, 11
                  sub          a1, s0, t4
                  slli         a3, t6, 25
                  sltu         a3, zero, t2
                  slti         s3, a0, -764
                  addi         t0, t1, 1646
                  add          a6, a2, a7
                  sltiu        s5, s5, -1893
                  srl          tp, a2, a1
                  ori          sp, t6, -287
                  slli         s5, a0, 13
                  xor          s7, s6, s7
                  sltu         a2, s7, t4
                  sltiu        sp, t2, 437
                  slli         a2, s11, 27
                  srl          tp, t6, t3
                  sltu         a0, s8, t0
                  and          s7, t5, s8
                  xor          t2, t1, sp
                  srl          s0, s4, sp
                  nop
                  or           s4, gp, t1
                  xor          zero, a1, t5
                  and          s8, s1, t6
                  addi         t5, s5, 849
                  srai         s11, a7, 7
                  sll          t3, gp, s0
                  sltiu        s9, t5, -1049
                  slti         t0, s6, -1909
                  srl          s11, t5, a6
                  sub          a6, tp, zero
                  lui          t1, 590672
                  andi         a2, t2, -1908
                  sra          t6, s6, gp
                  nop
                  auipc        a0, 510022
                  sltu         t3, t2, a2
                  nop
                  srli         a3, ra, 16
                  sltu         s4, zero, a3
                  sra          a6, s10, t5
                  sra          s10, t3, a5
                  and          s5, s0, s7
                  slti         s5, s10, -1780
                  and          a2, s8, zero
                  sltu         sp, a2, sp
                  srai         s0, gp, 21
                  slt          t6, s1, gp
                  ori          tp, s4, -980
                  sll          t2, t3, t0
                  slt          t3, a6, t4
                  or           a6, s5, t2
                  sltu         t5, t3, s3
                  and          gp, a4, s5
                  srli         s4, a5, 8
                  nop
                  sltiu        a2, s8, 233
                  lui          gp, 742095
                  sltu         t2, ra, t1
                  xori         t4, a0, 1601
                  nop
                  slt          a5, a1, a5
                  or           gp, s5, a0
                  and          s9, s4, a2
                  xor          a6, t1, a2
                  sub          s7, a7, zero
                  sra          a3, s10, t0
                  sll          s8, t2, t2
                  lui          a5, 841783
                  andi         s0, s5, 733
                  sll          a6, s3, s6
                  srl          zero, s4, zero
                  srl          t5, s2, t1
                  sltiu        s0, a6, 1452
                  xori         a6, a5, -729
                  auipc        tp, 479560
                  xor          zero, t4, a3
                  slt          t0, s2, zero
                  lui          t4, 885038
                  sltu         s0, sp, s4
                  nop
                  nop
                  auipc        s4, 982313
                  sra          s11, a6, a0
                  and          s9, gp, s10
                  slt          a6, s2, s3
                  slti         s0, t6, 374
                  srli         s3, t4, 10
                  srl          s0, s10, s6
                  andi         zero, s10, -1065
                  and          s10, ra, s9
                  sub          a5, s9, tp
                  or           sp, s0, sp
                  slt          t0, a5, t2
                  srli         t5, a5, 6
                  ori          a4, ra, 105
                  xor          s2, t2, sp
                  addi         t5, a3, 6
                  srai         a2, s1, 10
                  add          a2, a5, s7
                  andi         zero, s2, 143
                  srli         t4, gp, 24
                  sltu         a5, s7, s8
                  and          s0, a4, a0
                  lui          tp, 243133
                  or           a2, zero, a2
                  and          s0, a4, t5
                  slli         t0, t3, 8
                  auipc        a7, 570525
                  sltu         s3, t4, t1
                  srli         t1, t2, 5
                  addi         t3, a1, -1369
                  srli         s9, s0, 20
                  xori         zero, s6, -433
                  ori          a6, ra, -1833
                  sltu         t3, a3, zero
                  sub          t1, t3, t4
                  andi         a6, zero, -84
                  srl          a4, s9, s1
                  andi         zero, a5, 969
                  srli         t6, a4, 0
                  add          a4, t2, t1
                  slli         t2, t2, 15
                  slli         s3, a4, 5
                  sub          gp, s10, s4
                  sll          s7, t6, zero
                  slli         s10, tp, 20
                  xor          s4, t4, s6
                  auipc        s4, 669118
                  xor          s10, s6, a1
                  slti         a3, a2, 1212
                  sub          a7, a0, s10
                  sltu         t4, s9, t5
                  sltiu        s2, a0, -1323
                  srai         s3, s5, 29
                  sltu         a0, t5, s10
                  srl          t4, s0, t0
                  sra          s3, s2, s10
                  sltu         a4, s1, ra
                  and          s7, t6, t0
                  slti         t4, s4, -722
                  andi         tp, s9, -444
                  slti         a5, t6, -1475
                  addi         t1, a2, 1226
                  or           s7, s7, a5
                  sll          a3, a5, s3
                  ori          zero, s1, -1562
                  sltu         a3, s2, a3
                  sra          tp, a7, ra
                  slti         s5, t3, -1219
                  slt          t0, s4, t5
                  ori          s4, t1, -1103
                  add          a2, t2, a7
                  sll          a5, a2, a6
                  sltu         s10, a3, s6
                  add          s3, t1, a1
                  srai         a3, t0, 2
                  slli         zero, s6, 12
                  and          zero, zero, sp
                  sltiu        t0, a4, -1473
                  srai         sp, t3, 26
                  ori          t2, t6, 822
                  ori          s3, t2, -868
                  srai         a0, a5, 6
                  sll          s0, s9, s5
                  andi         tp, s7, -1945
                  and          a1, s1, a5
                  and          gp, t0, s3
                  andi         a5, a0, 1730
                  sltiu        s3, a7, -175
                  srl          a7, s8, tp
                  sll          s2, a2, a1
                  xor          a7, s1, s2
                  nop
                  auipc        a0, 544113
                  slli         a7, a7, 14
                  sltu         t0, s1, a0
                  and          sp, t0, gp
                  or           s0, s9, ra
                  addi         s8, tp, 662
                  slti         t2, sp, -1258
                  xor          sp, t5, a1
                  slli         gp, t4, 3
                  sra          t3, s8, ra
                  add          a3, zero, a7
                  ori          t1, s9, -1642
                  sra          s3, t5, ra
                  sltu         s0, s0, a4
                  lui          t4, 456674
                  sltiu        s7, s4, 689
                  slti         a3, a3, 1808
                  addi         t6, a2, 1572
                  ori          a6, a7, -636
                  xor          sp, t3, s6
                  or           s9, a1, t5
                  or           s2, a7, t1
                  auipc        t1, 196231
                  sll          s3, s7, sp
                  slt          t4, t6, s4
                  srli         s5, a2, 9
                  sub          a0, a5, t5
                  xor          s9, t1, t5
                  lui          s3, 797870
                  srai         t1, a1, 3
                  auipc        a3, 109463
                  slli         s5, t5, 10
                  sub          gp, a5, sp
                  xor          t1, a6, s7
                  or           sp, t1, t0
                  xor          t3, tp, s0
                  sub          a2, s3, t3
                  addi         t2, zero, 1883
                  auipc        s4, 942188
                  nop
                  sltu         t1, s9, t4
                  sltu         t6, a6, s0
                  or           sp, s3, a6
                  sltiu        a2, a0, 207
                  auipc        s8, 700219
                  sra          tp, tp, t3
                  sra          t2, gp, a4
                  sub          t0, s1, s6
                  or           s4, t4, a5
                  srl          a2, s6, s2
                  sltiu        t5, s0, -657
                  lui          zero, 555391
                  sub          a6, s1, tp
                  lui          t3, 895717
                  sll          a5, a4, a4
                  slti         s5, tp, -626
                  ori          zero, a3, -51
                  addi         t5, ra, -1542
                  srli         s5, t6, 14
                  and          a4, t4, s9
                  andi         t6, a1, -569
                  andi         s8, a1, 1603
                  addi         t3, tp, 1264
                  and          a7, a4, a7
                  slt          a3, s2, ra
                  and          tp, a1, s4
                  add          a2, t0, a0
                  lui          a0, 1015340
                  srl          t6, s3, tp
                  slti         a0, s9, 128
                  ori          s4, s1, -138
                  slti         t2, a1, -798
                  addi         t0, t6, -2040
                  sll          t3, s2, s6
                  nop
                  sltu         t0, t4, ra
                  sub          a3, s3, t6
                  ori          s4, t6, 1227
                  xor          t1, t2, s11
                  ori          t3, s4, 1462
                  lui          gp, 30286
                  auipc        a2, 615371
                  slt          t2, a1, t5
                  sltu         a1, s5, s0
                  srai         t0, a4, 28
                  sltu         s7, a6, zero
                  slti         s4, t3, 1657
                  ori          s0, t4, 580
                  and          s7, a5, s2
                  slli         tp, t5, 20
                  sub          a5, s6, t2
                  srl          zero, t3, s6
                  andi         s10, a2, -690
                  sltiu        s9, t2, 1946
                  addi         a3, s8, 755
                  andi         t5, tp, 1666
                  xor          s11, a0, gp
                  lui          a6, 193537
                  ori          s9, a1, -405
                  sltu         zero, zero, a7
                  lui          a4, 614211
                  andi         a6, s9, -1281
                  or           s8, s6, s0
                  xori         a6, a6, -1419
                  auipc        a5, 742581
                  addi         s5, a7, 1247
                  xori         a3, a2, 1259
                  xor          tp, s2, sp
                  or           s10, s5, s11
                  andi         a3, tp, 1391
                  slt          sp, s0, sp
                  xori         tp, s8, 1853
                  sub          s2, s0, t0
                  slti         s10, s1, -664
                  srl          zero, a4, a5
                  slti         a2, ra, 1138
                  sra          t0, a7, s8
                  auipc        s0, 249734
                  andi         a0, t1, -482
                  or           s7, a2, tp
                  srai         a1, a4, 0
                  slt          t4, s4, a3
                  or           a6, a4, s0
                  slti         t0, a3, 335
                  addi         t4, s5, 949
                  srai         a2, a7, 8
                  ori          a1, gp, 486
                  lui          t4, 612538
                  sub          a5, s3, s3
                  add          gp, s11, s3
                  xori         a5, t1, 1948
                  auipc        t2, 972847
                  or           s8, sp, s10
                  and          s5, a3, a7
                  sub          a6, t2, a5
                  xori         t4, s2, -906
                  or           a5, a7, s8
                  sltiu        t0, a0, 1902
                  or           s8, s7, a4
                  slli         s2, t2, 31
                  andi         a0, s0, -532
                  slti         sp, tp, -201
                  nop
                  addi         s11, a4, -1530
                  addi         s8, s6, 1221
                  srli         a7, a5, 14
                  lui          a3, 520814
                  andi         s2, t4, 2000
                  slti         a6, t3, -563
                  nop
                  auipc        s11, 615889
                  and          s11, s10, a0
                  slt          s3, a0, s8
                  and          a4, s0, zero
                  slli         t1, t2, 3
                  sub          t0, a4, a1
                  andi         s8, s8, -26
                  srai         s10, zero, 4
                  lui          s8, 415490
                  sra          s4, s5, s3
                  addi         sp, a3, 778
                  nop
                  add          s9, s5, t4
                  sub          s2, s0, s9
                  and          s5, s7, t0
                  srai         t4, sp, 7
                  andi         t5, t1, 1533
                  sltu         t2, tp, s1
                  xor          sp, s7, zero
                  and          t4, t1, ra
                  xor          t2, s4, s10
                  or           s4, s7, tp
                  or           gp, s3, gp
                  xori         s7, t6, 1634
                  auipc        s8, 405478
                  addi         s4, t0, 1404
                  and          s5, s0, gp
                  xor          a4, s10, gp
                  lui          s9, 923042
                  andi         a2, t0, -338
                  addi         a4, s4, -811
                  xor          a4, a2, s10
                  lui          gp, 217671
                  srai         a3, t0, 14
                  srai         sp, a1, 23
                  sll          s9, ra, s6
                  lui          a0, 1040544
                  slti         t1, t3, 520
                  sltu         sp, t5, s10
                  andi         a1, t3, 297
                  xor          t5, t6, a3
                  or           tp, a7, gp
                  srli         a7, s7, 31
                  auipc        zero, 240456
                  or           s5, t4, s4
                  srl          s7, a6, s1
                  sub          gp, t5, s9
                  andi         s0, a4, 1446
                  and          a6, s8, s11
                  xor          a4, t0, gp
                  slt          a4, s6, tp
                  srai         a1, s10, 30
                  xor          zero, s8, t5
                  auipc        t2, 961993
                  slt          s4, t2, s1
                  lui          s4, 727509
                  addi         t3, s10, -1644
                  or           a3, a0, t6
                  srl          a3, s3, a3
                  xori         s4, a0, -499
                  sra          zero, a7, a3
                  sll          s3, s8, a5
                  srli         a4, a1, 12
                  xor          tp, t3, t0
                  srl          gp, a0, s1
                  srl          s5, s8, t0
                  slli         t6, zero, 31
                  andi         s4, t5, 1076
                  srli         s3, s7, 12
                  lui          a0, 166210
                  lui          s8, 84948
                  nop
                  srli         t2, a7, 12
                  sltiu        t2, zero, -470
                  andi         s11, ra, -17
                  sra          a6, s8, s8
                  sltu         a4, s4, s1
                  sra          zero, a0, t2
                  sltiu        a6, s10, -580
                  sll          a6, t5, t1
                  nop
                  lui          a6, 641695
                  sub          a0, t6, t0
                  srl          s11, tp, tp
                  or           gp, t3, s8
                  sltu         a5, s2, sp
                  sltiu        s2, s5, 2004
                  slti         s2, s6, -1503
                  sltu         tp, t6, gp
                  srl          s10, a0, s11
                  addi         a2, s3, -1725
                  srli         t3, t4, 30
                  lui          a6, 623221
                  ori          a7, t4, 993
                  and          s11, s3, a3
                  xori         s10, s9, 1617
                  slti         s0, a3, 731
                  slt          a3, s6, t3
                  sltu         a4, a4, a7
                  sra          t2, s4, s7
                  nop
                  sub          s10, a4, t2
                  and          a2, a3, sp
                  sll          a3, zero, s0
                  auipc        s7, 329126
                  andi         t6, gp, 555
                  add          a2, a2, a3
                  sub          a1, s8, tp
                  slt          a7, s0, s2
                  addi         a4, s10, -1941
                  slt          zero, s3, t1
                  and          s3, t2, t1
                  andi         a0, s6, -125
                  addi         tp, t5, 408
                  slt          a7, a2, tp
                  xor          a3, t2, a5
                  and          a5, s0, s4
                  slti         a3, t1, -786
                  sra          t2, a0, t1
                  srai         a6, t4, 11
                  lui          a6, 611020
                  srl          s5, s8, a0
                  or           sp, s2, s4
                  ori          s0, s8, 1552
                  and          t2, t2, s0
                  srli         s0, s5, 19
                  or           a5, sp, a0
                  sra          s9, zero, s4
                  add          s9, a6, a6
                  ori          t4, t4, 748
                  sra          s7, t1, s10
                  srli         a0, s2, 18
                  andi         t6, a6, -588
                  ori          t6, a3, 156
                  sltiu        a6, s8, -405
                  srai         a3, a5, 24
                  auipc        s0, 995904
                  add          zero, a4, t6
                  auipc        a2, 388687
                  slli         s5, a5, 26
                  srai         a6, s1, 9
                  andi         a7, s8, 1994
                  xor          s7, a5, gp
                  andi         zero, t1, 1007
                  slt          a6, zero, ra
                  sltiu        s8, t1, -807
                  sub          t1, s1, t4
                  or           t3, t0, s4
                  lui          a7, 327649
                  lui          s2, 664828
                  srl          a6, t0, s1
                  sll          s11, s7, a0
                  slli         a7, a5, 1
                  sra          s10, a7, t2
                  add          tp, a2, s9
                  auipc        t1, 699695
                  nop
                  add          s10, s10, s9
                  or           s9, s7, s9
                  sub          a0, t2, t3
                  srli         a7, t5, 12
                  auipc        a3, 1004401
                  and          tp, t4, t0
                  slt          sp, tp, s7
                  or           gp, t6, s9
                  andi         a5, s8, -1944
                  nop
                  sltu         a0, ra, a7
                  sub          s11, a1, a7
                  slt          a7, ra, t4
                  nop
                  srli         s2, t2, 8
                  sra          t2, a5, s7
                  slt          t3, s5, a0
                  slli         t0, s0, 22
                  slli         s0, a2, 27
                  ori          s7, s4, -2012
                  slt          gp, t2, s4
                  lui          s3, 849922
                  sll          gp, s1, s3
                  slt          a4, s8, s2
                  xori         s4, s3, -1258
                  srai         t1, t6, 28
                  srli         t4, s2, 19
                  addi         a2, t5, 2014
                  slt          a6, a3, t5
                  auipc        s11, 123314
                  srl          s7, t4, t1
                  lui          s5, 496173
                  srai         s8, s3, 24
                  lui          a6, 292945
                  addi         gp, a4, 569
                  srli         s2, a1, 29
                  slt          s10, t2, s10
                  addi         t6, s9, 1060
                  sub          s7, a4, t2
                  andi         s4, t2, -746
                  slli         a0, s11, 17
                  sra          t4, s8, t2
                  slli         t6, a2, 12
                  sra          a7, s0, a5
                  lui          s4, 910341
                  sub          a2, s11, t2
                  sll          a2, s4, a6
                  sltiu        t4, s11, 815
                  slli         a5, zero, 27
                  auipc        t2, 452557
                  sra          t6, gp, s8
                  addi         zero, s3, 1260
                  srli         s5, t2, 21
                  slt          t3, gp, ra
                  sltiu        a1, s9, 222
                  xor          s3, s1, a4
                  ori          tp, ra, -949
                  sltiu        s10, t1, 1761
                  srai         t2, t2, 21
                  auipc        s11, 626735
                  andi         t4, s8, -1427
                  and          s0, t2, s11
                  and          s8, s0, s9
                  lui          s2, 915571
                  or           a0, zero, sp
                  xor          t1, a7, s11
                  nop
                  slt          a2, s9, s9
                  sub          gp, sp, s1
                  slli         tp, t5, 13
                  sll          s8, t1, t5
                  lui          t2, 598493
                  and          a0, a4, ra
                  slli         sp, s11, 18
                  xor          s0, t1, a4
                  lui          a4, 263925
                  and          s4, sp, zero
                  srli         s9, t5, 3
                  slti         s9, s8, 1446
                  xor          tp, gp, t5
                  auipc        t0, 109221
                  add          s2, s4, a7
                  srai         s9, a2, 15
                  addi         gp, a1, 418
                  nop
                  srli         s2, a2, 9
                  add          s9, a7, s0
                  add          t5, ra, s6
                  sll          s2, a5, a0
                  ori          s5, s10, 1158
                  addi         s11, t6, -1028
                  add          a3, s6, s5
                  nop
                  srai         zero, a5, 13
                  addi         a0, s3, 1430
                  andi         a1, a7, -1712
                  srai         s0, s6, 26
                  ori          a6, s5, 1855
                  sub          t3, s2, s1
                  lui          a3, 718130
                  nop
                  sltiu        t4, s3, -670
                  srl          a3, s5, s11
                  sll          gp, a6, s3
                  slt          s5, t6, s4
                  add          t5, a1, ra
                  sltu         s7, zero, zero
                  addi         a6, s6, 1807
                  sll          s10, a0, s6
                  and          a2, a1, s8
                  srai         t4, zero, 9
                  or           a7, s7, s5
                  ori          s0, t0, -1296
                  sub          s2, zero, s3
                  srli         t3, s0, 26
                  lui          a6, 741466
                  xori         s2, a4, 1200
                  ori          a7, zero, -1494
                  slli         t2, a7, 19
                  sltu         a4, a6, a3
                  and          s11, s4, s7
                  sra          a6, s6, s6
                  addi         a2, t2, 1516
                  srli         a3, s4, 29
                  ori          a5, s3, 313
                  ori          zero, s1, 635
                  srai         t1, s5, 27
                  srli         t6, t6, 9
                  srl          t4, t6, t0
                  lui          t2, 100791
                  addi         a6, a7, 1760
                  sll          t4, t4, a4
                  auipc        a7, 368126
                  andi         a0, zero, 910
                  xor          a1, s7, a2
                  slli         t6, a3, 9
                  add          sp, a2, sp
                  slt          s8, t4, tp
                  srli         s7, s1, 19
                  xori         a1, a2, -558
                  lui          t4, 1003929
                  addi         s2, a0, 2009
                  sub          sp, a0, t0
                  srl          s0, s2, s10
                  xori         s9, t3, 1970
                  sub          a0, a4, s1
                  srl          t3, sp, s10
                  slti         s10, s7, 1567
                  addi         a2, ra, 270
                  auipc        s11, 490801
                  add          t0, a6, s1
                  sltiu        t3, t2, -400
                  srai         a0, s11, 25
                  lui          sp, 305181
                  slli         t1, s2, 8
                  sll          s10, a6, a0
                  ori          t4, t2, -360
                  slti         a7, zero, -1542
                  sll          s5, s5, s6
                  sltu         a5, s10, s2
                  sub          t2, a0, t4
                  srai         gp, s9, 31
                  andi         a5, s6, 900
                  sltiu        s3, zero, -1722
                  slli         s7, a0, 25
                  lui          t4, 766041
                  or           s11, s2, a5
                  auipc        a1, 94953
                  slt          t1, s5, t1
                  srai         s9, t6, 24
                  add          t1, s6, t3
                  srli         sp, s10, 5
                  srl          s3, t3, t6
                  and          s9, s8, gp
                  andi         s10, s2, -118
                  sll          a7, a4, t6
                  sll          s11, a0, t4
                  srli         a3, t1, 26
                  andi         s0, s0, 776
                  sub          a0, sp, s10
                  srl          s2, s0, ra
                  srli         s9, a6, 17
                  srl          a4, a1, s5
                  nop
                  nop
                  ori          t1, t6, -515
                  slti         zero, s6, 392
                  or           a4, s6, a1
                  sltiu        s10, s9, 1285
                  sra          sp, a7, s10
                  nop
                  and          a2, s11, s3
                  slti         a2, a2, 1140
                  sll          s2, s10, a2
                  auipc        s9, 478788
                  xori         zero, a5, 1520
                  xor          gp, zero, a7
                  sltiu        a3, s10, 350
                  add          s9, s0, tp
                  sltu         s8, sp, zero
                  andi         t0, a4, -1497
                  sub          s11, s3, s11
                  srli         s9, a7, 24
                  nop
                  sltiu        a2, s2, 1715
                  srai         s2, sp, 29
                  srl          a7, a5, s5
                  sll          s3, t3, a5
                  xori         s9, a5, 109
                  auipc        s0, 44928
                  xori         t0, tp, 1900
                  auipc        t4, 265129
                  slti         sp, t4, -1433
                  lui          sp, 734359
                  xori         t6, s7, -294
                  slli         t0, t1, 25
                  slti         s3, s1, -748
                  srai         s3, sp, 26
                  and          s10, t0, s0
                  srl          t3, a1, s2
                  addi         a2, s7, 1520
                  or           sp, s10, t1
                  srl          s2, gp, a1
                  slli         s3, s10, 18
                  slli         a4, gp, 0
                  slli         t4, ra, 31
                  li           t6, 0x62af2362 #start riscv_int_numeric_corner_stream_8
                  li           sp, 0x0
                  li           t3, 0xffffffff
                  li           gp, 0x0
                  li           a4, 0x80000000
                  li           t2, 0xf9fc1fdc
                  li           s8, 0x0
                  li           s2, 0x80000000
                  li           a5, 0x80000000
                  li           s7, 0xffffffff
                  add          a4, a4, s2
                  lui          gp, 920654
                  addi         s2, sp, -1116
                  add          a5, s7, gp
                  add          s2, t3, gp
                  lui          s8, 654593
                  sub          a5, s7, gp
                  sub          t3, a5, t6
                  addi         s7, t6, -1596
                  nop
                  sub          sp, s2, t3
                  addi         a4, gp, -1019
                  auipc        t3, 518447
                  add          a4, a4, s8
                  lui          sp, 130052
                  add          a5, gp, s2
                  addi         s7, a4, 1181
                  sub          t3, t3, s2 #end riscv_int_numeric_corner_stream_8
                  srli         sp, s8, 0
                  sll          t6, s3, a0
                  addi         t0, t6, -7
                  slli         a3, s2, 6
                  or           t5, a6, t4
                  sltiu        t0, t6, 729
                  sll          a1, s4, t6
                  or           s9, s9, s1
                  sra          a3, t1, a5
                  auipc        s2, 990485
                  slt          t3, a7, t0
                  sltiu        t2, sp, 267
                  lui          a0, 356891
                  andi         s10, s4, 1303
                  sltiu        s7, a5, 669
                  srli         t2, s11, 1
                  or           t0, a4, s0
                  srli         a1, s5, 30
                  or           t6, s4, s2
                  andi         t6, s3, -861
                  slti         s5, ra, 1576
                  sub          tp, gp, t1
                  xor          a2, t0, s10
                  sub          t6, a5, zero
                  srli         a4, tp, 25
                  xori         t5, t5, 793
                  lui          s5, 798072
                  sll          a3, s0, t2
                  slli         t1, t1, 15
                  sltiu        a1, t4, -113
                  ori          s8, s6, -659
                  or           a5, a3, t5
                  sltiu        s4, a3, 1661
                  sltiu        a3, s6, 1001
                  nop
                  slt          t3, a5, a0
                  auipc        a2, 875540
                  sub          a7, s7, s1
                  sra          s8, a0, t4
                  xor          zero, a7, s5
                  and          s4, a7, tp
                  sltu         gp, s0, s3
                  sltiu        a7, a6, -1592
                  nop
                  slli         gp, a7, 2
                  srai         gp, a2, 30
                  sltu         t2, s11, s7
                  or           a1, sp, a5
                  and          t4, a1, sp
                  andi         t6, t4, 344
                  srai         a7, s8, 2
                  add          s3, s2, t4
                  sll          a0, t1, t4
                  lui          a0, 863322
                  srl          s8, sp, s4
                  xor          s11, t2, gp
                  xor          a6, s7, t3
                  auipc        tp, 495135
                  sub          a5, t2, s8
                  slti         sp, a2, 806
                  or           a5, s5, s2
                  sub          t1, t6, t5
                  sltu         s8, s2, a2
                  slli         t1, s3, 20
                  addi         t4, t2, 567
                  nop
                  sub          t5, a7, a2
                  and          t1, t1, t5
                  slt          t3, s9, s1
                  add          a0, sp, a4
                  ori          gp, a4, -1389
                  sltiu        s11, a2, -366
                  sub          t4, s3, t2
                  or           s10, t5, s8
                  slt          s3, a0, a1
                  slli         a4, s9, 5
                  or           a0, s0, a7
                  srl          sp, s2, s9
                  nop
                  slti         zero, s5, 1137
                  srli         t5, s4, 12
                  ori          a2, a2, -931
                  lui          gp, 941889
                  xor          gp, a0, zero
                  srai         t6, s6, 3
                  add          a3, s10, s0
                  add          sp, a7, s0
                  addi         a5, a5, -611
                  or           a4, a3, t6
                  sll          a7, a4, s6
                  nop
                  slti         gp, s10, -1059
                  and          a3, s2, a2
                  and          s7, a5, s9
                  lui          t6, 799825
                  add          a3, a1, t0
                  sra          t6, s2, s7
                  slt          a2, t0, t4
                  srli         t6, a5, 17
                  andi         s3, a2, 120
                  srli         s0, s3, 29
                  xor          t5, s5, t3
                  addi         s0, s11, -650
                  ori          a0, tp, -523
                  slti         t1, a6, -799
                  sltu         t4, t5, a6
                  ori          s10, s7, 1269
                  or           s11, a7, gp
                  srl          zero, zero, tp
                  xori         t6, a4, -1501
                  xor          s2, t6, t5
                  srli         a7, sp, 17
                  nop
                  slt          s9, s10, a6
                  lui          tp, 87310
                  andi         s4, t0, 1746
                  srl          a7, s3, s5
                  addi         a6, s7, -985
                  srli         t4, t6, 19
                  sra          tp, t5, gp
                  nop
                  andi         s3, t5, 1156
                  andi         a6, ra, -73
                  addi         s2, a4, 1514
                  auipc        a2, 905314
                  srl          s5, s11, t2
                  ori          s5, t2, 1221
                  sltu         s0, s1, t5
                  srl          t0, a0, s6
                  sub          s3, a4, a5
                  sll          t1, a5, s0
                  srai         s4, s2, 23
                  sltu         s10, ra, t0
                  auipc        t2, 801628
                  slt          s9, s7, s9
                  lui          s8, 352062
                  srai         a5, t6, 18
                  slli         gp, s6, 26
                  srli         gp, t5, 8
                  addi         a6, s4, -830
                  sub          s0, t2, s4
                  auipc        s11, 267466
                  srl          a2, a5, s0
                  srli         s9, t5, 3
                  srli         a2, t2, 29
                  slt          t1, t0, s4
                  sra          a5, s11, sp
                  lui          s9, 888169
                  srai         t3, tp, 16
                  or           a0, s3, s9
                  and          a5, t0, s11
                  sra          s8, s11, a4
                  or           t0, s4, t4
                  addi         t5, t5, -920
                  auipc        t2, 933597
                  add          s5, a3, a6
                  xor          gp, s3, s3
                  slt          tp, a2, tp
                  lui          t2, 831605
                  srai         t4, a4, 16
                  sub          a1, t3, a2
                  or           s0, a1, s8
                  slli         a0, a2, 14
                  slli         s11, t5, 0
                  add          s5, t0, gp
                  nop
                  auipc        gp, 328639
                  addi         a2, tp, 1708
                  slti         gp, t1, 596
                  auipc        a5, 181892
                  slt          t6, s11, s7
                  slli         gp, a2, 8
                  sub          s9, s5, ra
                  or           tp, t6, a0
                  addi         zero, s7, -767
                  srai         s7, a0, 17
                  sltu         s3, t0, s5
                  srai         t4, s4, 26
                  sra          s10, a3, a3
                  xori         gp, a5, -79
                  srai         s10, a5, 1
                  addi         zero, zero, -1784
                  xori         zero, gp, 655
                  slti         t4, a0, -1940
                  nop
                  sltiu        t2, a4, 24
                  srl          s10, s2, s10
                  sltu         s4, s8, t0
                  nop
                  sra          s9, s3, tp
                  and          a0, s7, zero
                  nop
                  nop
                  add          s2, t4, s4
                  slli         t4, s5, 5
                  ori          gp, s10, -2038
                  sltu         s4, zero, t6
                  sra          zero, t1, a7
                  sll          t4, s3, sp
                  xor          t4, zero, a0
                  sltiu        t6, s8, 1928
                  srai         t3, s11, 30
                  slt          a2, s2, s10
                  andi         tp, a3, -876
                  xor          s4, s10, a4
                  srl          a7, gp, t5
                  slt          s8, s8, t4
                  sub          a0, s3, a2
                  slti         s10, gp, 1623
                  or           s10, s7, t6
                  addi         s9, s8, 1635
                  ori          tp, s1, -285
                  sltu         gp, s8, s2
                  xori         t6, s7, 911
                  and          gp, zero, t5
                  sra          a0, t4, t5
                  lui          t3, 667945
                  sll          gp, s2, s0
                  auipc        s10, 961532
                  andi         s3, zero, -530
                  srli         t5, t1, 3
                  auipc        a2, 431725
                  sll          gp, zero, s7
                  srl          tp, t6, s3
                  slli         a0, a3, 3
                  sll          s10, s11, a4
                  addi         s2, a0, 1964
                  slt          s5, a4, a4
                  slti         s11, tp, 1202
                  auipc        a6, 935725
                  srl          s9, sp, a4
                  sra          t1, s10, s5
                  or           a6, sp, t1
                  xor          t6, t6, t2
                  nop
                  sra          s9, s9, a5
                  or           s10, s2, s9
                  auipc        t6, 959481
                  add          t6, s2, t5
                  add          s9, a0, tp
                  slti         t3, t4, 113
                  sub          s7, a0, t3
                  sltiu        a7, a7, -1678
                  srl          s11, s2, a7
                  nop
                  sltu         a7, gp, s5
                  nop
                  nop
                  sltu         t2, t4, s6
                  sra          s4, a1, t1
                  sll          s5, gp, a6
                  srl          t1, t2, t0
                  sub          t3, a0, s11
                  sra          gp, s5, a3
                  sub          gp, a2, a3
                  srai         s9, s4, 28
                  nop
                  xori         a7, a5, -1313
                  sub          t5, s10, ra
                  ori          a4, t6, 295
                  sra          sp, a2, a2
                  lui          gp, 856769
                  srai         s0, s3, 20
                  sltiu        gp, s8, 1710
                  xori         s2, t1, -670
                  auipc        t1, 269587
                  or           t2, t6, s7
                  lui          s8, 1006910
                  add          s0, a1, s1
                  sll          gp, a3, zero
                  slt          s3, a7, s7
                  sra          t5, a0, ra
                  add          t6, a5, a3
                  add          s0, t6, s0
                  sub          s4, a2, t1
                  sub          zero, t2, s1
                  xori         zero, s7, -1185
                  srli         s10, s10, 1
                  sltu         s2, a0, t2
                  sll          a3, a6, t2
                  sra          t4, a1, sp
                  slt          tp, t6, tp
                  andi         zero, t1, 1432
                  sltiu        tp, a1, 1444
                  sltiu        t0, t0, 852
                  sub          s3, s3, a5
                  srli         t4, t6, 9
                  xor          a3, ra, a0
                  xor          s10, a3, s3
                  or           t1, s9, t3
                  or           t5, t3, s6
                  andi         t2, s11, -256
                  slt          a2, s2, zero
                  xori         a4, s9, -48
                  addi         a6, gp, 1198
                  sub          t3, zero, t3
                  and          s7, t4, gp
                  andi         s4, s0, -711
                  add          zero, t1, sp
                  xori         s8, s11, -1349
                  srai         s11, a7, 19
                  slli         t6, s6, 15
                  xor          t4, a2, s0
                  srai         s2, s10, 9
                  srai         s8, s9, 19
                  add          t5, a7, a1
                  or           s10, s7, s8
                  srli         s7, a1, 11
                  or           a0, zero, a5
                  srl          t5, a5, t1
                  srli         tp, s7, 15
                  xor          sp, s10, a6
                  sltiu        a2, s9, 1017
                  xor          a4, t0, t3
                  auipc        a7, 706100
                  srl          a5, t1, s7
                  slli         s11, s3, 16
                  xori         s7, a1, 1942
                  xor          s0, a5, s3
                  ori          a4, a7, -1059
                  slti         sp, t4, 1260
                  andi         t1, s1, 1566
                  sll          a3, a5, t5
                  ori          zero, s6, 435
                  xor          tp, s5, t5
                  sll          t6, s2, s6
                  xor          t2, a5, a5
                  xori         s4, t5, 97
                  sub          s3, t1, s6
                  sltu         a6, a0, s9
                  or           a3, s4, a3
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           tp, 0xcc268fad
                  li           t4, 0x0
                  li           t6, 0x80000000
                  li           t0, 0x0
                  li           s9, 0xbb47258d
                  li           a0, 0x80000000
                  li           t2, 0xffffffff
                  li           s0, 0x80000000
                  li           a4, 0x67c37078
                  add          s0, t0, s9
                  sub          a4, t0, t4
                  lui          t6, 836502
                  auipc        s8, 819687
                  lui          a0, 116955
                  addi         s9, s8, 1997
                  add          s9, t4, s0
                  lui          s0, 375601
                  auipc        t2, 749106
                  nop
                  nop
                  auipc        s9, 385989
                  addi         t6, t2, 1881
                  addi         t6, s9, -1791
                  addi         s9, a4, 1316
                  auipc        s8, 55472
                  addi         a0, tp, 572
                  nop
                  addi         a0, a4, 593
                  nop
                  auipc        t2, 340477
                  addi         t4, t0, 204
                  add          s8, s9, s8
                  add          s8, a0, t4
                  lui          a4, 384698
                  lui          s9, 847645
                  add          a0, t2, t0
                  addi         s0, t4, 1049
                  auipc        s0, 595719
                  nop #end riscv_int_numeric_corner_stream_14
                  sltiu        a2, a6, 1599
                  auipc        t0, 62346
                  srai         s3, s5, 28
                  sltu         s11, s7, s4
                  ori          s8, a4, -1236
                  srli         t5, a4, 4
                  or           s7, s10, ra
                  xori         t6, t6, -1749
                  lui          sp, 221575
                  add          tp, a1, t0
                  xori         t0, a7, 918
                  sltiu        s2, s0, 22
                  addi         s5, s1, 1626
                  add          t5, s11, a6
                  lui          t0, 598619
                  or           s11, s1, t4
                  and          sp, a2, a0
                  slli         tp, tp, 25
                  srli         a4, s7, 6
                  sltiu        t5, s8, 1561
                  xor          s11, a2, a1
                  slli         a7, s6, 5
                  add          sp, t0, a7
                  srai         s9, a2, 27
                  sra          s3, s10, a7
                  slti         s4, s7, 72
                  or           s5, s4, s3
                  slt          s3, s7, s9
                  ori          t3, t2, 64
                  sub          zero, a0, a1
                  slti         s5, t1, 200
                  sll          s11, t3, t6
                  addi         s3, ra, 1195
                  add          s9, s9, a7
                  addi         t4, a0, -393
                  ori          s8, t5, 1696
                  sltiu        t3, t2, 234
                  sltiu        t1, t4, -1858
                  slli         s9, ra, 28
                  sra          s3, t6, t1
                  xor          zero, t4, a7
                  srli         s8, s5, 5
                  xori         t6, ra, -131
                  ori          s2, t6, 924
                  ori          zero, a0, -779
                  sltiu        t1, gp, -1748
                  ori          a3, t5, 1981
                  slti         s4, s10, 1666
                  sltu         s9, s2, a1
                  andi         a2, s1, -1970
                  srl          gp, t2, tp
                  sltiu        s4, s2, 551
                  sltiu        s7, tp, 975
                  srai         a5, s10, 16
                  sltu         a6, a5, s2
                  and          s9, zero, t2
                  slt          t6, s5, a1
                  slli         s7, t6, 9
                  slt          s2, a1, s1
                  xor          s7, t2, s11
                  addi         s4, sp, 1697
                  srai         a7, a3, 2
                  sub          t1, t1, sp
                  srl          s9, s8, a0
                  slt          tp, s4, s4
                  or           a2, t2, a5
                  sltiu        a0, zero, 1577
                  sra          a3, s8, s0
                  add          a7, t2, a2
                  slli         zero, s9, 19
                  ori          s10, t4, 1086
                  sub          s7, s4, s2
                  slt          t3, s8, t1
                  slli         a6, s0, 23
                  xor          t6, t0, t6
                  nop
                  slt          s9, tp, a1
                  sltiu        zero, s10, 52
                  sra          s11, a4, t0
                  sltu         s0, s2, a5
                  addi         s5, sp, -1802
                  xori         a2, t6, -442
                  and          s5, t1, s3
                  xori         sp, a5, 1713
                  slt          t0, s4, s9
                  xori         s5, t3, 956
                  slli         s2, a5, 14
                  auipc        t1, 940741
                  lui          s3, 1005757
                  lui          t6, 934948
                  addi         s5, ra, 1735
                  auipc        s8, 189920
                  add          s5, s7, s4
                  xori         a3, a4, -638
                  slli         s4, s2, 25
                  sll          a4, t6, s4
                  slt          a1, a7, a3
                  sub          s5, a7, s5
                  sll          t1, t0, gp
                  ori          gp, gp, 1168
                  srl          s10, s8, sp
                  xor          t3, a4, a5
                  sltiu        t3, a2, -1445
                  srli         a2, s3, 1
                  slti         t0, a7, -1757
                  or           gp, a5, s1
                  xori         t4, t4, -1265
                  sltu         a7, t1, t1
                  slti         s5, s8, 1878
                  andi         a6, a6, 1514
                  srl          s8, s0, t2
                  srai         t4, s5, 22
                  srai         t0, t5, 12
                  andi         t1, s5, -144
                  slli         a7, t0, 12
                  xori         zero, zero, -399
                  srai         s8, a0, 23
                  and          t2, s6, sp
                  xori         s0, t1, 517
                  auipc        s4, 819936
                  nop
                  sll          s0, s10, a2
                  slti         s2, a5, -1056
                  xor          s8, s0, a2
                  slli         s8, a6, 31
                  sra          tp, a2, ra
                  xori         t5, s5, -565
                  auipc        t2, 455613
                  sll          sp, s4, t6
                  srli         a6, s4, 10
                  slli         sp, t6, 27
                  sub          t5, s6, sp
                  sltiu        s5, a2, -319
                  srai         zero, a7, 12
                  add          t1, s2, ra
                  slli         s10, t5, 20
                  slt          s4, tp, t6
                  sltu         s11, t2, s9
                  sub          tp, t4, a3
                  slli         a5, t6, 21
                  xori         t3, s0, -1337
                  sltu         a4, t0, s1
                  srli         s4, a3, 21
                  nop
                  sltu         t0, a0, t2
                  slt          a4, ra, a5
                  or           t2, s3, s2
                  and          s8, s8, zero
                  slti         t4, s2, -638
                  and          s5, zero, s5
                  xor          a6, t0, s7
                  slt          a7, t5, zero
                  lui          a0, 873723
                  sll          t4, sp, t1
                  srai         t3, a3, 0
                  slti         s2, ra, 1097
                  nop
                  sll          s7, t3, s2
                  nop
                  sltu         s3, a5, s3
                  and          a2, t2, s6
                  addi         t2, s2, -117
                  sltu         s8, a7, s5
                  sltu         t4, t1, a4
                  ori          t4, s9, -120
                  sll          a3, a6, s10
                  xori         t4, t1, 1023
                  ori          s11, t0, 1911
                  and          s3, t2, t1
                  sltiu        s7, t5, -1852
                  sll          tp, s2, a2
                  sub          a7, t1, t5
                  xor          t6, t2, s5
                  addi         zero, s10, 1386
                  sub          s11, s5, s4
                  sltu         a1, tp, t3
                  nop
                  nop
                  li           t0, 0x1b296680 #start riscv_int_numeric_corner_stream_9
                  li           a6, 0x7c4d7b59
                  li           t4, 0x80000000
                  li           a1, 0x0
                  li           a4, 0xdaa3179f
                  li           s0, 0x80000000
                  li           t2, 0xffffffff
                  li           t1, 0xffffffff
                  li           s4, 0xffffffff
                  li           s3, 0xffffffff
                  auipc        s4, 328375
                  nop
                  lui          s3, 579342
                  nop
                  add          a4, t2, a6
                  nop
                  sub          s4, s0, a4
                  sub          t1, s0, t2
                  add          t4, t2, t4
                  add          t4, t2, t2
                  lui          s4, 657008
                  nop
                  addi         a6, s3, -174
                  add          s3, a4, s4
                  sub          s4, s4, a1
                  add          s4, a4, t4
                  add          s3, s4, s3
                  auipc        t0, 997755
                  auipc        t0, 390678
                  addi         s0, s0, -1485
                  lui          s3, 92355
                  add          s0, a1, a1 #end riscv_int_numeric_corner_stream_9
                  srl          s9, s7, t0
                  nop
                  nop
                  addi         s8, a2, -1621
                  ori          s11, a2, -656
                  sra          s8, tp, t5
                  addi         a1, a1, 1504
                  sub          a1, s8, t3
                  srai         sp, s1, 22
                  sub          t2, a1, t2
                  or           s8, a0, t2
                  slli         s7, s11, 5
                  add          t4, t1, a4
                  auipc        s5, 1032373
                  lui          s3, 331286
                  srli         s2, a6, 17
                  slti         a6, a0, 1371
                  lui          s2, 71934
                  andi         a0, s7, 672
                  add          a4, t5, a0
                  srl          sp, s2, sp
                  srl          a5, sp, tp
                  sltu         a5, s1, s3
                  add          t3, s0, a4
                  or           gp, t1, s6
                  sltiu        a3, s2, 1135
                  xor          s3, s8, s1
                  srai         t6, s4, 19
                  xor          t2, a2, a7
                  slli         t1, s4, 28
                  sra          s11, s2, s7
                  xori         t2, zero, -156
                  srai         s10, t0, 4
                  add          a4, s7, t1
                  ori          t4, s3, 133
                  or           a6, t6, s11
                  srl          s4, ra, a1
                  andi         t0, tp, -591
                  slli         a7, s8, 21
                  add          t3, s7, s6
                  auipc        s11, 327942
                  xor          a6, a3, a5
                  slt          s5, a2, a3
                  slti         t5, a4, 1147
                  auipc        s3, 688146
                  auipc        a6, 803817
                  srai         a7, s9, 19
                  auipc        a5, 185759
                  sra          s5, s1, tp
                  srl          s11, a4, t3
                  auipc        t4, 909891
                  sub          s7, sp, s9
                  lui          t3, 563566
                  slli         s8, s9, 12
                  add          a3, s2, s1
                  sra          s4, zero, t5
                  ori          t6, t3, -1641
                  sltu         s9, s10, s3
                  auipc        t2, 851912
                  sltiu        t0, ra, 1709
                  sra          t0, zero, s6
                  andi         t2, s0, 640
                  sra          s10, s4, a2
                  xor          s8, t3, a5
                  xor          gp, zero, s4
                  sll          a5, a1, s10
                  slli         s9, t6, 23
                  sltiu        s2, s4, -352
                  or           s4, a2, s9
                  or           a6, s1, s8
                  xor          a7, s5, t4
                  slli         s10, a0, 28
                  ori          a7, s10, -1011
                  auipc        s11, 204125
                  and          t2, a2, s8
                  addi         s4, t6, 1798
                  sltiu        a1, s9, 509
                  sltiu        t6, s1, -1091
                  ori          a2, s3, -442
                  sltiu        sp, s9, 1940
                  xor          a3, a5, t1
                  srli         a5, s5, 18
                  slt          s2, a7, s8
                  sub          t6, a5, a3
                  lui          s3, 310093
                  sll          s9, s11, s11
                  and          s9, s9, sp
                  srl          t5, t0, s6
                  addi         a0, zero, 1362
                  slti         t3, tp, -232
                  srl          t4, s5, sp
                  ori          s3, s7, 523
                  add          s9, t1, s0
                  or           tp, a3, sp
                  sltu         a0, s1, tp
                  or           s3, s11, a6
                  slli         t0, t3, 7
                  srli         s4, s11, 22
                  and          t3, sp, t6
                  sltu         t5, a6, a2
                  add          s5, a5, sp
                  sub          s4, tp, t4
                  lui          a1, 249674
                  srli         t5, s5, 11
                  or           tp, t1, s3
                  auipc        s2, 350910
                  lui          sp, 601570
                  sltu         t3, a0, a3
                  slli         s3, s8, 13
                  auipc        t4, 751963
                  sub          a6, t4, a7
                  srli         s4, t1, 7
                  slti         a3, a6, 292
                  or           t4, a0, t4
                  sltu         t3, t3, t3
                  or           sp, a3, s0
                  srl          s10, a1, t4
                  and          s9, t5, a7
                  sltu         a6, s1, s5
                  nop
                  add          a5, a0, gp
                  addi         t6, t3, -187
                  xori         s3, zero, 368
                  srai         s2, gp, 29
                  srai         a4, s0, 7
                  and          s2, zero, sp
                  srai         sp, a7, 31
                  slti         s4, t0, -133
                  slti         s10, s7, 340
                  sub          s3, a2, s11
                  sll          s8, a1, gp
                  sub          a5, a3, s1
                  auipc        a2, 395510
                  sra          a4, t0, a2
                  srli         s9, a5, 17
                  andi         a5, t4, -1748
                  sub          gp, sp, t3
                  lui          s4, 437725
                  slt          t3, gp, a0
                  xori         tp, s11, -716
                  ori          a2, t0, -795
                  srli         s3, s6, 2
                  sub          s9, a5, a5
                  sltu         zero, s1, t3
                  sub          a7, a1, s4
                  addi         s5, t1, 1687
                  addi         gp, s8, -160
                  sll          t6, a7, t2
                  sltiu        tp, a0, 469
                  add          a6, a1, a2
                  slli         a2, s3, 21
                  srai         s5, a6, 8
                  slli         t2, s2, 30
                  srl          tp, ra, s9
                  addi         s5, s8, -1700
                  slti         s10, s1, 1056
                  sra          zero, tp, a6
                  add          s10, t5, t3
                  addi         a6, s1, -1135
                  xori         a2, t0, 1974
                  sra          s7, gp, a4
                  addi         t0, s6, 135
                  addi         a6, t3, 1441
                  slt          s8, s4, a0
                  srai         a4, s6, 4
                  slt          t0, s8, s2
                  sltu         s2, zero, a5
                  addi         a3, s8, -1853
                  auipc        s8, 1043085
                  or           a0, a3, t6
                  andi         t1, s7, 1693
                  sra          a7, s3, a5
                  srai         s7, gp, 31
                  andi         t2, a2, 940
                  slli         a4, a0, 6
                  sltu         a0, s8, gp
                  srli         s5, a7, 9
                  xor          t6, s6, s4
                  lui          a7, 1008512
                  srai         a1, s6, 29
                  nop
                  sltu         a7, a4, a1
                  or           s0, s1, s7
                  sltu         t2, s8, s1
                  auipc        zero, 1015938
                  lui          s5, 682536
                  sltiu        a4, t2, 1121
                  slti         sp, s2, -1673
                  sra          a0, a0, a5
                  srai         s0, t6, 29
                  sltu         s5, a1, t5
                  auipc        s2, 811080
                  sltiu        s10, a2, 1587
                  sub          s5, a2, sp
                  sub          a5, a3, s3
                  sll          s11, t4, zero
                  or           s11, zero, a1
                  sll          a1, t4, gp
                  sltiu        s0, s8, 705
                  srli         t3, s8, 19
                  and          s9, ra, t3
                  and          s11, s8, s11
                  sra          t5, t5, s5
                  sltiu        a7, s5, 1617
                  sra          t1, s8, t4
                  andi         t0, s8, 153
                  srai         a3, a2, 16
                  sltiu        s5, a5, 1303
                  srl          a6, ra, t0
                  slti         s5, t2, -1668
                  srai         t0, s9, 9
                  sltiu        a6, s0, 1306
                  xori         t5, s0, 922
                  sltiu        t6, t4, 2010
                  ori          a7, s8, 1159
                  sltiu        t5, s4, 1179
                  nop
                  auipc        s7, 347931
                  sub          sp, s8, sp
                  slt          sp, a1, a2
                  slli         tp, gp, 12
                  srai         s3, s9, 17
                  addi         a2, s2, 1870
                  addi         t1, zero, 1394
                  srl          t2, a0, s3
                  xori         t4, s1, -396
                  xori         a4, s5, -2034
                  sll          a4, s9, t5
                  srli         t2, t0, 3
                  slli         t6, sp, 30
                  ori          a0, a1, 2021
                  andi         t1, s3, -284
                  srai         a2, sp, 2
                  and          t1, s11, a2
                  addi         s9, a1, 267
                  auipc        a0, 948892
                  ori          a1, t4, -288
                  slti         a7, sp, -590
                  and          a7, s8, t4
                  xori         s4, a6, 224
                  or           s5, t4, s5
                  add          a3, s6, zero
                  ori          s9, s11, 379
                  sll          a6, tp, s6
                  slli         t0, s8, 4
                  and          s8, t4, s5
                  sll          s10, a5, t5
                  xor          s8, s6, a4
                  or           gp, s6, zero
                  slt          t5, a0, t0
                  slt          a2, a5, t4
                  addi         tp, zero, -605
                  xor          a2, sp, t3
                  nop
                  and          s3, s5, a5
                  srli         zero, gp, 6
                  sra          s0, t0, s0
                  add          s9, s11, a5
                  auipc        s11, 497489
                  sra          t2, a5, s6
                  sltiu        t5, tp, 1713
                  slti         sp, s0, 699
                  slli         a5, s4, 20
                  or           s4, s5, s10
                  addi         t5, a4, -1394
                  and          t1, s11, s1
                  and          s11, a0, s6
                  or           s9, t6, sp
                  nop
                  andi         t3, a3, 1621
                  sra          a0, a7, zero
                  xor          s11, t0, t6
                  sltiu        t3, s5, 1910
                  ori          a2, a3, 1216
                  srai         s8, s9, 17
                  sub          a2, t6, a6
                  auipc        a1, 84661
                  addi         s9, t0, 1543
                  auipc        t6, 125974
                  nop
                  sltiu        t5, t4, -1435
                  ori          tp, s9, 1467
                  addi         a7, a7, 506
                  slti         t4, ra, 940
                  srli         t1, t6, 20
                  or           s4, a5, s10
                  or           sp, s5, a6
                  and          t6, a4, s5
                  nop
                  slti         gp, s7, -423
                  xori         s10, a7, -1568
                  xori         a2, a5, -493
                  xor          a3, t3, s3
                  addi         sp, s9, -25
                  xor          t6, s8, gp
                  srai         a0, s6, 2
                  add          a5, a4, s10
                  lui          t5, 760704
                  or           s10, a6, t3
                  lui          zero, 170151
                  or           a2, a6, s5
                  slti         s11, s0, 1457
                  nop
                  slti         sp, a4, 953
                  auipc        t1, 195524
                  srli         tp, a2, 27
                  srai         s10, s10, 21
                  sll          t4, a0, a1
                  lui          zero, 959818
                  xor          s9, a6, t4
                  addi         s10, s4, 470
                  srli         sp, s4, 18
                  sll          a1, s0, a6
                  nop
                  andi         t2, s8, 923
                  srli         a3, gp, 3
                  or           s4, t1, t0
                  addi         s5, gp, 1453
                  and          a5, s3, t6
                  srai         s7, zero, 3
                  slti         t2, a6, -1033
                  sll          s8, a6, a5
                  slli         a2, zero, 5
                  sltiu        tp, a6, 1437
                  and          a6, sp, s10
                  or           s8, t6, a1
                  srai         s0, a5, 27
                  sra          t3, a5, zero
                  add          zero, s1, s3
                  lui          a5, 401297
                  sra          a0, s4, s2
                  sub          a4, t4, s11
                  ori          a6, a4, 1757
                  slt          gp, a4, zero
                  nop
                  sltiu        t2, gp, -110
                  srli         t4, a2, 3
                  srai         s10, t1, 19
                  srli         t6, a2, 1
                  srl          s5, a0, a2
                  and          a1, s8, gp
                  sub          s5, t2, a4
                  ori          t1, tp, -17
                  sra          s11, s3, s0
                  srli         a7, a7, 4
                  auipc        s2, 330549
                  sub          s11, a4, s11
                  add          t5, s1, s5
                  slti         a4, s8, 1779
                  ori          s0, s5, -543
                  slli         t5, t4, 3
                  xori         s9, s9, 324
                  sltu         t3, s4, sp
                  xor          s4, s5, t4
                  sub          s9, s2, a6
                  and          s0, s4, t0
                  xor          s11, a3, gp
                  slt          s5, t4, a3
                  slti         a6, s7, 1867
                  sll          s2, s2, t0
                  add          s4, t0, ra
                  xor          sp, a6, t5
                  and          s10, t3, s9
                  srai         sp, t0, 9
                  xori         t1, s4, 898
                  ori          a5, s3, 1875
                  and          s0, t1, s10
                  lui          s10, 284592
                  and          s9, a1, a7
                  srli         a3, s11, 21
                  srli         s2, s6, 22
                  srli         s7, t3, 21
                  sltu         gp, a0, s2
                  auipc        sp, 956919
                  srl          s10, s2, a5
                  sltu         a4, sp, sp
                  sltiu        t1, a3, 952
                  addi         s4, s4, 2017
                  srli         s11, s11, 9
                  sltu         t2, s7, t6
                  srai         a2, t4, 9
                  or           s5, a3, s4
                  sub          tp, s2, t2
                  or           s5, zero, a5
                  sltu         s8, s0, s6
                  sltiu        t1, s9, 1009
                  or           sp, a1, s4
                  srai         a4, sp, 22
                  sltu         s4, zero, s1
                  slli         tp, a1, 6
                  addi         s11, s7, -362
                  sltu         sp, s2, s11
                  lui          a5, 915785
                  add          a6, sp, s7
                  slli         tp, t3, 10
                  and          zero, t0, t5
                  add          t5, a0, t1
                  or           s3, a3, t4
                  andi         s4, t5, 902
                  xor          s7, gp, a1
                  sll          t6, s8, s7
                  add          a3, t5, s9
                  xori         s7, t6, -2022
                  slti         t2, s10, 29
                  xor          sp, t0, s11
                  andi         t3, a4, 1748
                  sll          a7, a5, t6
                  sub          s7, s9, t4
                  sll          t0, s5, s11
                  xor          a1, sp, t5
                  slt          a7, a2, s4
                  srl          s4, a5, tp
                  ori          s3, t0, 1861
                  srl          a1, a6, s1
                  ori          s2, s8, 874
                  sub          a4, t3, a3
                  xor          tp, sp, s8
                  sra          s0, s4, a4
                  slli         a5, ra, 28
                  and          t1, a2, gp
                  xor          t5, s0, s4
                  ori          a2, t1, 1211
                  sra          a2, tp, s5
                  and          a3, a6, t2
                  lui          t6, 12366
                  slt          sp, s5, t0
                  slli         gp, tp, 23
                  xor          t0, t0, s4
                  add          t1, t3, s4
                  sltu         t0, a7, s4
                  sub          t0, ra, s7
                  slli         s7, gp, 0
                  addi         t6, s6, -918
                  srli         a5, a7, 22
                  nop
                  and          a2, a7, a4
                  xor          s9, t3, a1
                  sll          s11, s8, s2
                  addi         t5, a0, -103
                  slt          a7, a3, t2
                  auipc        sp, 849584
                  sltu         s2, s5, a5
                  lui          t5, 158787
                  slt          s7, ra, t2
                  srl          t2, s0, a0
                  xori         s3, s9, -329
                  sra          tp, s9, t6
                  ori          s9, a4, 648
                  or           t5, a3, ra
                  sltiu        a2, ra, -196
                  and          a4, t4, a2
                  add          t1, s7, a6
                  ori          s5, tp, -289
                  addi         s8, s6, 531
                  srai         a1, s8, 6
                  and          a5, t0, t0
                  sltu         s10, a7, a4
                  slti         s9, zero, 868
                  and          a4, t6, tp
                  slti         t6, s10, 1546
                  srli         a2, a3, 29
                  slli         s11, t5, 16
                  xori         s7, a6, -695
                  lui          a7, 372651
                  sra          t0, s2, a1
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           a4, 0x80000000
                  li           gp, 0x0
                  li           a3, 0x80000000
                  li           s7, 0xc10a7da2
                  li           s8, 0xffffffff
                  li           a6, 0xb757a08c
                  li           s9, 0x80000000
                  li           a2, 0x0
                  li           a5, 0xffffffff
                  nop
                  nop
                  add          s8, s5, a3
                  add          a6, s5, a3
                  auipc        a5, 883910
                  addi         a3, a6, -1523
                  addi         s8, a4, 1516
                  addi         s5, s8, -165
                  nop
                  sub          s5, a4, a6
                  lui          a3, 220268
                  addi         a4, a5, -1446
                  auipc        a4, 948553
                  sub          a5, s7, a5
                  add          gp, a4, a4
                  add          a3, a4, s5
                  addi         a4, a3, -615
                  add          a2, s9, s9
                  sub          gp, s7, s9
                  add          s7, s7, a5
                  lui          s8, 133489
                  nop
                  add          gp, gp, s5
                  add          s5, a4, s8
                  auipc        s5, 166954
                  auipc        s7, 721632
                  lui          a2, 321288 #end riscv_int_numeric_corner_stream_2
                  sub          s10, s9, s10
                  lui          tp, 152884
                  sll          s3, s3, sp
                  sub          a6, s11, s3
                  sub          t6, s5, a1
                  sra          gp, gp, a2
                  sltiu        t5, t0, 913
                  ori          a5, ra, -644
                  auipc        t0, 299892
                  or           sp, s3, s11
                  sll          s11, a7, a1
                  xori         tp, t4, 0
                  slti         a3, s5, -1622
                  sub          t3, a2, a2
                  slt          s2, s0, t4
                  auipc        t3, 960363
                  slti         t3, s7, -1804
                  sltu         s2, t5, s7
                  addi         t6, a2, -874
                  addi         s11, a0, -879
                  sltiu        s2, s4, -1308
                  xori         a3, t4, 1290
                  srl          a0, a3, t1
                  auipc        s3, 259531
                  srai         a2, a7, 22
                  slti         s4, s11, -1164
                  sltiu        t0, t6, 290
                  xor          s8, s3, a1
                  addi         a2, t6, 628
                  slli         a5, a2, 21
                  srai         s3, a6, 27
                  ori          a5, s7, -1188
                  andi         t3, a7, -474
                  xor          a5, t2, s2
                  sltiu        s3, zero, -525
                  slli         s3, s3, 17
                  srli         s11, a2, 25
                  slli         a4, s6, 30
                  lui          t5, 378878
                  auipc        t4, 890334
                  sltu         s3, s10, a5
                  slti         t5, s4, 1590
                  xori         s3, a3, 1604
                  slt          a5, a6, sp
                  sll          s0, s5, a3
                  nop
                  andi         s5, a2, 518
                  addi         s5, t2, 1145
                  sltiu        sp, a6, -540
                  xori         a6, s2, -1104
                  nop
                  sltu         a0, a0, s11
                  slt          a2, a5, t1
                  srai         a2, a1, 28
                  ori          a3, t6, 836
                  sltiu        s5, t1, 333
                  sra          a2, t1, a1
                  srli         a2, s5, 1
                  addi         t1, t2, 1331
                  ori          t0, gp, -1131
                  sub          s10, zero, t0
                  auipc        a4, 274213
                  add          a0, s9, a0
                  addi         a4, ra, -1606
                  andi         s9, t1, -1231
                  lui          t0, 491543
                  slti         t2, a6, 1720
                  andi         s2, a6, -951
                  xori         s4, a3, -1879
                  sra          s10, gp, s2
                  lui          s4, 1015168
                  sll          s11, s8, tp
                  andi         s9, a5, 1538
                  sub          s11, s2, s7
                  ori          a1, t1, 414
                  sub          s0, s3, sp
                  auipc        s5, 945701
                  srai         zero, sp, 26
                  sub          s4, t5, t4
                  xor          t6, sp, a3
                  slt          s4, ra, s9
                  slli         s7, a2, 21
                  sll          a5, t1, t5
                  nop
                  sltiu        a2, a3, 1337
                  sltu         t6, s1, sp
                  andi         t5, a7, 1421
                  and          t3, s3, ra
                  add          s5, t1, a1
                  sltu         s3, s2, a3
                  sltiu        s7, s10, 609
                  sll          s11, sp, s4
                  ori          a7, a7, -1446
                  addi         t2, ra, 49
                  srli         t6, a2, 21
                  sub          s11, a1, a2
                  lui          tp, 634587
                  xor          a1, s6, tp
                  sltiu        t1, a3, -148
                  xor          a2, t0, s4
                  sll          t4, a3, s0
                  andi         a0, t1, -861
                  sra          t5, ra, s10
                  sltiu        t6, s10, -493
                  slti         s7, t2, 306
                  and          a7, a6, sp
                  sra          gp, t2, a4
                  lui          gp, 701928
                  srai         sp, s9, 25
                  slli         sp, t1, 6
                  sll          a4, t0, s6
                  sra          t1, sp, t0
                  slti         t4, gp, 1456
                  srl          s11, sp, s5
                  srai         t3, s5, 21
                  srai         t4, s4, 3
                  nop
                  add          s2, t3, s4
                  addi         a7, s9, -886
                  srai         a1, a2, 25
                  sltiu        s3, a6, -943
                  and          a7, a1, zero
                  lui          s3, 699490
                  auipc        a7, 162229
                  ori          tp, t1, -309
                  lui          a0, 56095
                  and          s7, tp, t1
                  slti         a1, t3, -1489
                  sltiu        s7, s2, -1916
                  nop
                  sll          a6, ra, t2
                  ori          a0, s0, -569
                  slt          a0, t0, s2
                  xori         t1, t1, -1762
                  auipc        t2, 817132
                  add          s2, gp, a3
                  sll          t0, t5, gp
                  auipc        a6, 1007762
                  sll          tp, t5, t1
                  nop
                  srli         t4, t0, 15
                  sltiu        a0, a6, 1009
                  and          a3, gp, a3
                  xor          t4, a5, s0
                  slli         s2, a0, 20
                  andi         t0, t3, 1686
                  or           t1, t0, zero
                  and          s2, t4, a5
                  sltu         t5, t6, tp
                  srli         t3, gp, 26
                  srli         t0, s3, 1
                  srl          s9, a0, ra
                  slti         s0, s1, -911
                  sltiu        sp, zero, 1559
                  lui          s5, 815359
                  srai         sp, s4, 27
                  sub          t1, zero, a1
                  xori         sp, s10, -2009
                  or           a5, s8, t6
                  xor          a1, ra, zero
                  sll          a6, t6, t4
                  addi         s0, zero, -1312
                  and          t4, s9, s9
                  add          s8, gp, a7
                  slli         t4, s11, 4
                  and          a1, a3, s1
                  ori          s7, s8, 997
                  lui          t0, 793052
                  srl          s4, s6, a3
                  or           t2, ra, sp
                  auipc        a4, 719062
                  ori          s7, a0, -873
                  sll          s5, s11, s2
                  add          s0, t1, s11
                  srai         a0, s0, 2
                  slli         t0, a0, 23
                  xor          a5, s4, s2
                  slli         sp, a6, 31
                  and          sp, t3, s6
                  add          t3, s11, a3
                  or           sp, s9, s7
                  or           s4, s4, a1
                  add          a4, a7, t3
                  slli         a4, gp, 27
                  srai         a5, t5, 4
                  srai         a6, s2, 14
                  auipc        t0, 556902
                  xor          s7, sp, s10
                  srli         t5, tp, 31
                  sltiu        s10, t3, -1840
                  addi         s3, s7, 1903
                  srli         t3, a7, 9
                  or           s7, sp, a0
                  srl          a3, s11, t6
                  xor          s4, s5, ra
                  slt          t5, a0, a3
                  slti         a4, t1, -172
                  add          zero, s10, s6
                  lui          sp, 704918
                  lui          t6, 1041241
                  srli         t0, ra, 6
                  and          a3, zero, a0
                  srli         t6, t0, 15
                  srli         s7, t3, 13
                  srai         t6, s0, 3
                  nop
                  lui          a7, 985252
                  slt          t1, t1, t5
                  sub          s9, s10, t1
                  xori         sp, s1, 403
                  auipc        tp, 520228
                  srai         a5, s2, 27
                  sra          s7, a5, gp
                  and          t5, a5, s1
                  slt          gp, s10, s8
                  andi         s8, t4, 1236
                  add          t3, t4, s1
                  sub          a5, s4, s3
                  slti         a6, t6, -1572
                  srli         a5, s4, 12
                  ori          s8, s10, 1055
                  sltu         a1, s3, s9
                  sra          s2, s4, s7
                  sub          t4, a3, s3
                  slt          gp, a4, t6
                  srli         t3, s4, 13
                  addi         tp, t0, 962
                  srli         t4, gp, 23
                  auipc        t6, 142204
                  slti         s9, a1, -214
                  xori         t4, s0, -158
                  slli         s5, a0, 6
                  srli         a3, a7, 1
                  lui          t0, 156983
                  slt          t1, s8, t4
                  nop
                  srli         a2, a7, 11
                  sltu         a0, s2, s4
                  addi         a3, a4, 1303
                  sltiu        zero, a6, -397
                  sltu         s8, a5, s3
                  andi         t6, t1, 1404
                  add          a7, a4, gp
                  slli         s3, t4, 26
                  addi         sp, t4, 1683
                  sra          t5, a3, s3
                  xori         s7, a3, -1325
                  nop
                  and          sp, t6, s6
                  srai         tp, t4, 27
                  add          s11, s8, s1
                  andi         a7, s5, -1147
                  xor          zero, a7, t3
                  ori          gp, t4, 210
                  slt          s8, t1, s2
                  xor          s3, s0, gp
                  or           t0, s3, t1
                  nop
                  sltu         a3, t3, s11
                  auipc        a6, 361293
                  srli         zero, a2, 10
                  sltiu        a4, s8, 847
                  andi         zero, t1, -242
                  srai         s3, ra, 6
                  sll          s0, t4, gp
                  srl          a7, t3, t6
                  auipc        s10, 794631
                  slt          tp, zero, zero
                  srai         s4, ra, 20
                  sll          s9, a1, a1
                  sltu         gp, s8, t5
                  sub          s8, t5, gp
                  andi         s8, a2, 6
                  sltu         s4, ra, s3
                  sub          s8, a2, s11
                  srli         tp, s4, 28
                  or           t4, s6, s11
                  sra          s9, ra, a4
                  sltiu        tp, a6, 1177
                  sra          a1, s7, a2
                  sltiu        s7, tp, -1822
                  sra          a0, s0, t6
                  and          a5, t3, sp
                  srl          a3, tp, s3
                  srai         zero, s5, 24
                  srai         a6, s2, 15
                  slti         s0, a0, -1265
                  xori         t3, s8, -958
                  srli         a2, a0, 31
                  srl          a7, t2, s10
                  xor          s5, t2, tp
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           gp, 0xffffffff
                  li           s9, 0x0
                  li           s4, 0x80000000
                  li           s11, 0xffffffff
                  li           a0, 0x80000000
                  li           a3, 0xffffffff
                  li           t1, 0xa469038f
                  li           a7, 0x0
                  li           s2, 0x1b59ce0b
                  add          a7, s11, s4
                  auipc        a7, 368819
                  addi         gp, s4, -376
                  add          a7, s11, s9
                  sub          t1, s11, s2
                  auipc        s2, 642272
                  add          a7, t1, a5
                  addi         a3, s4, 1407
                  lui          t1, 685961
                  addi         a7, a5, -248
                  auipc        a5, 263884
                  add          a7, a0, t1
                  lui          a7, 801675
                  auipc        s4, 752221
                  sub          s2, a7, s11
                  nop
                  lui          gp, 100162
                  auipc        s2, 6563
                  nop
                  addi         gp, gp, -1565
                  nop
                  lui          a7, 880021 #end riscv_int_numeric_corner_stream_19
                  xor          s8, s6, s9
                  slli         a3, a2, 29
                  and          a6, tp, gp
                  sltiu        t6, a4, -32
                  sll          tp, s11, gp
                  addi         t0, s5, -1268
                  xor          s0, s10, a3
                  srl          s2, t1, s2
                  sra          s11, s10, s2
                  or           s9, t6, t0
                  sltiu        s4, s7, -453
                  addi         t1, s11, 2016
                  xor          s7, s3, a7
                  and          a5, s9, s0
                  auipc        s0, 342105
                  nop
                  slt          a6, s7, gp
                  ori          s0, s11, -1040
                  nop
                  ori          s2, s7, 1205
                  xor          t2, s3, a4
                  sltu         s5, s4, a3
                  srli         t3, s10, 18
                  add          zero, s0, s1
                  auipc        a7, 787646
                  sltiu        t0, a0, 23
                  sltu         s10, sp, gp
                  srli         s0, a5, 7
                  sltu         t5, sp, ra
                  srl          t2, zero, s1
                  or           s11, a5, s10
                  slt          a5, a5, a0
                  srai         tp, t1, 23
                  slti         sp, s8, -1575
                  sra          zero, a1, s5
                  slli         t6, s4, 21
                  or           t4, a2, t1
                  srl          s3, s4, zero
                  lui          s2, 608709
                  auipc        a6, 576470
                  andi         a4, ra, 2029
                  slli         s0, a7, 9
                  nop
                  and          t0, a3, tp
                  auipc        t1, 141052
                  srli         s11, a3, 10
                  slti         t2, s1, 1227
                  xori         gp, s9, 636
                  add          a0, t5, t4
                  xor          s9, s8, s3
                  nop
                  srl          gp, a6, a7
                  sltiu        s10, t6, -1078
                  xor          a0, t4, s10
                  addi         a0, s0, 1862
                  srli         t2, zero, 13
                  auipc        a1, 525279
                  xor          a4, zero, t1
                  addi         a6, t0, -1151
                  addi         t4, sp, 545
                  xor          t4, t4, a7
                  and          s8, t2, sp
                  or           gp, s8, t6
                  sltu         a5, t0, a7
                  ori          t3, sp, -1817
                  and          s11, s6, t1
                  xori         s0, t0, -1270
                  sltiu        s11, a0, 538
                  srli         s3, gp, 3
                  andi         t6, sp, 2046
                  sll          sp, a1, s4
                  lui          t0, 654919
                  srl          t2, sp, s7
                  and          tp, a4, a1
                  sub          t1, t4, sp
                  ori          t6, s6, -847
                  slli         s5, a3, 28
                  ori          a0, s1, -1891
                  sra          gp, s1, a5
                  srai         a2, t2, 13
                  add          t0, a1, a2
                  addi         tp, t4, -821
                  slt          a7, a2, a1
                  lui          tp, 796321
                  sltiu        a2, t1, 1221
                  sll          sp, a2, s10
                  sll          s8, s8, s9
                  srl          a3, s7, t6
                  slti         a5, a2, 1491
                  srli         gp, t3, 7
                  slli         a4, a2, 12
                  sltu         s11, s1, s6
                  or           zero, s1, s5
                  or           a0, a5, s10
                  sltu         t1, t1, t6
                  srli         s0, t1, 7
                  add          s2, a3, s6
                  slli         s5, t5, 28
                  nop
                  add          s3, t3, t5
                  and          s11, s10, t1
                  slli         s3, s11, 27
                  and          t3, s4, sp
                  srli         a2, sp, 28
                  srai         s3, t5, 31
                  auipc        s4, 855350
                  slli         t4, s11, 30
                  slti         s9, t4, 1762
                  srai         s4, tp, 7
                  xor          a3, t1, s0
                  sra          s10, s3, t3
                  auipc        s0, 542676
                  sll          zero, s5, s0
                  srl          s4, s3, a2
                  sll          s9, s11, s1
                  sll          a5, a1, gp
                  nop
                  slti         t5, s6, 78
                  sltu         s3, gp, gp
                  ori          s4, s1, 719
                  or           a2, zero, s8
                  xor          zero, a0, zero
                  lui          a2, 968901
                  sra          a5, s4, s5
                  ori          a1, a4, -751
                  addi         s5, gp, -1267
                  nop
                  ori          a3, a0, 1287
                  srl          a2, zero, s10
                  slti         a5, zero, -659
                  slt          s7, tp, s3
                  sltiu        a5, s4, -384
                  addi         s3, t6, 1204
                  sub          t1, s5, t3
                  ori          s10, a1, 157
                  sltu         t3, t1, a3
                  and          a6, s8, s7
                  nop
                  sltiu        s2, tp, 1522
                  sltiu        t2, s2, 1626
                  auipc        a4, 387425
                  slti         gp, a1, -1663
                  xori         zero, a6, 1212
                  slt          t4, a3, t1
                  sll          s5, s10, t0
                  slli         s3, a7, 12
                  slli         zero, a0, 30
                  lui          gp, 188254
                  sub          s0, gp, t1
                  slli         a5, tp, 7
                  srai         s0, a1, 25
                  sltiu        t6, s11, 401
                  sra          t3, s9, t1
                  sll          t1, gp, ra
                  sra          t3, tp, s5
                  sltu         t4, sp, a6
                  xor          s0, ra, s6
                  addi         tp, s0, 1417
                  sltiu        gp, t0, 658
                  xori         s7, s10, 728
                  and          zero, a4, t0
                  sra          a1, t6, t5
                  slli         s3, t6, 4
                  slt          s4, t0, s3
                  sll          a3, a4, s10
                  slti         a6, s11, -1907
                  srl          t4, a6, t3
                  xor          s9, t1, s0
                  andi         s0, a1, 811
                  lui          s8, 646210
                  and          a4, a4, s11
                  sltu         a3, s11, s5
                  add          t6, gp, tp
                  and          a1, s5, t4
                  slt          s8, a4, t4
                  auipc        t0, 167580
                  xor          s3, a7, a1
                  sra          s3, t0, s10
                  auipc        a2, 659783
                  srl          gp, s5, zero
                  lui          zero, 512796
                  sub          a1, s7, s6
                  sltiu        a3, s3, -1800
                  ori          t4, gp, 571
                  slt          t6, s0, s10
                  xori         s11, a7, -1943
                  xor          t4, s8, s11
                  or           t2, t6, s3
                  srai         a3, s11, 19
                  sll          s4, t3, s1
                  sltu         s8, s4, a3
                  xor          zero, s2, s10
                  or           s0, a3, a0
                  or           t3, a1, s11
                  sll          a7, a6, a6
                  sub          t4, s7, s10
                  xori         s3, t6, 1975
                  and          s2, s5, s5
                  srai         a5, s4, 2
                  srli         a3, t0, 11
                  sra          s10, t0, gp
                  auipc        s11, 446268
                  srai         a4, s6, 4
                  or           t0, s10, s11
                  or           s0, s8, gp
                  srai         t0, s0, 23
                  srl          gp, a2, a0
                  xori         a0, t1, -277
                  sltu         s0, tp, s0
                  add          s4, ra, a4
                  xor          s5, s2, sp
                  sra          a3, t4, s11
                  srl          s8, a3, s10
                  xor          s11, gp, tp
                  addi         t6, a3, 1036
                  sll          t4, a2, t0
                  ori          a4, tp, 1047
                  srai         sp, a2, 15
                  slli         gp, sp, 10
                  addi         t6, a7, -465
                  add          s11, s10, s5
                  auipc        t3, 179770
                  nop
                  srli         t6, a3, 16
                  srl          t3, a2, t2
                  xor          a2, s3, a4
                  srai         a6, a4, 8
                  and          gp, s6, t3
                  nop
                  slli         s3, t3, 18
                  ori          t5, t6, -795
                  sltiu        s3, s8, -1433
                  andi         a5, t2, 215
                  xor          s2, t1, s5
                  slti         s3, s5, 1919
                  srli         a1, sp, 19
                  srai         s11, s1, 29
                  sub          s11, a5, a2
                  auipc        t4, 689236
                  sub          sp, s8, a3
                  andi         s4, a7, -571
                  srli         a7, t5, 21
                  slli         s7, s3, 3
                  andi         gp, t6, -1627
                  slti         s3, t3, -1668
                  sltiu        s9, t5, 214
                  and          s2, t3, t1
                  sll          s11, a4, gp
                  sra          a7, gp, t5
                  nop
                  slt          a1, s10, a4
                  xori         t2, gp, 1691
                  addi         a6, a6, 1653
                  slli         t3, s9, 30
                  add          a5, a4, s8
                  addi         a6, t0, 1120
                  sub          a3, s8, a6
                  xori         t2, gp, -436
                  sltiu        s3, s6, -1190
                  srai         t4, t5, 9
                  nop
                  sra          t4, t0, zero
                  xori         t2, s10, 440
                  xor          s7, t6, s11
                  xor          a1, a2, t1
                  srl          t2, a0, a0
                  slt          s8, a0, s7
                  andi         t2, a5, -1794
                  lui          s3, 714688
                  srl          gp, a2, s1
                  slli         s5, a0, 9
                  addi         sp, t6, 1836
                  xori         tp, t2, -1479
                  add          a1, zero, t2
                  sra          t4, t1, s3
                  ori          s9, s1, 1644
                  sltiu        a4, a6, -1213
                  sub          t4, s10, s8
                  slli         a7, t0, 9
                  sll          t4, s10, t3
                  srl          a6, t5, gp
                  srai         sp, s4, 25
                  slt          t3, zero, sp
                  andi         a7, a7, 1850
                  and          s3, sp, s2
                  xor          s2, t0, a5
                  auipc        a6, 590799
                  and          t1, a7, zero
                  auipc        t1, 927249
                  slli         s0, t1, 19
                  and          s4, s5, s0
                  sub          t4, a7, a0
                  or           a2, s7, a4
                  sra          a3, a3, s7
                  lui          a2, 447293
                  or           t3, s7, a5
                  sra          a3, t3, a2
                  lui          zero, 197418
                  and          s10, s2, s9
                  lui          a7, 640488
                  srai         zero, s10, 17
                  add          t0, s8, t1
                  slli         t6, t0, 20
                  sltu         s8, t2, a6
                  andi         t0, a5, 1719
                  add          t6, s4, t6
                  auipc        t4, 352442
                  xori         a7, s6, 1174
                  lui          t2, 251347
                  srli         tp, gp, 2
                  sltu         t2, t5, a6
                  and          sp, t3, s3
                  srl          s5, s7, s5
                  sltiu        t1, s1, -1775
                  sltu         a5, t3, a4
                  nop
                  sltiu        sp, a1, -1865
                  sll          zero, s9, gp
                  xor          t5, zero, s3
                  srl          s9, a2, s4
                  addi         a5, t3, 468
                  add          s2, s2, t0
                  srli         s5, a7, 0
                  xor          s2, zero, sp
                  srl          s9, s1, a4
                  sltu         s3, s3, ra
                  or           s2, t4, t6
                  nop
                  lui          t0, 600935
                  ori          s9, s1, 482
                  add          s10, s4, s11
                  sltu         s9, t0, t3
                  xori         gp, s6, -973
                  sub          sp, a0, t5
                  sra          a0, s5, a1
                  srl          t6, a6, t3
                  nop
                  srai         s0, a1, 12
                  nop
                  slt          s3, zero, a0
                  slti         gp, t6, -426
                  sll          s9, t3, s6
                  srli         s11, a6, 0
                  xor          s7, sp, s3
                  auipc        a3, 433447
                  nop
                  nop
                  auipc        zero, 918102
                  sll          t3, t2, a0
                  srli         t1, t3, 13
                  andi         s11, s7, -770
                  auipc        s9, 9813
                  nop
                  lui          s0, 411130
                  add          t3, a5, tp
                  addi         a3, s5, 1273
                  andi         s4, t6, -889
                  auipc        a5, 668772
                  and          a6, s2, s7
                  and          s7, s2, t6
                  slli         s2, s9, 25
                  srli         t0, t2, 24
                  srai         s3, s5, 7
                  nop
                  slt          t0, gp, s8
                  slti         t4, s5, -1551
                  add          a7, a4, s6
                  and          gp, tp, s10
                  xor          s2, s1, ra
                  add          s4, t1, a7
                  lui          t5, 492969
                  srl          t0, a1, a5
                  or           gp, s4, gp
                  srli         s0, s7, 13
                  nop
                  ori          t5, s5, -696
                  slt          a3, s3, t6
                  xori         s5, t2, 1852
                  sltu         s11, s3, s6
                  sltiu        t0, t6, 109
                  addi         t5, gp, -1923
                  addi         t5, a2, 1952
                  slt          s10, sp, a2
                  srli         zero, zero, 19
                  sub          t6, a4, t5
                  xor          gp, a2, t0
                  sub          t3, t3, a2
                  srai         sp, s8, 8
                  slt          s2, ra, t6
                  slli         s9, s3, 29
                  sltu         t5, s4, a5
                  auipc        gp, 205100
                  sub          a0, ra, zero
                  slt          s0, a0, s6
                  slli         t5, s2, 5
                  or           a6, s7, s9
                  slti         a0, s5, -1879
                  sltu         t1, s1, s11
                  add          t4, sp, t0
                  addi         zero, ra, 30
                  slt          s9, a5, a5
                  ori          s3, t1, -2004
                  andi         tp, s9, 1184
                  sltu         t4, t0, s6
                  andi         sp, s3, 359
                  or           a5, s0, a5
                  lui          a6, 30797
                  add          a3, s10, t6
                  xor          a2, a4, sp
                  srli         a3, s8, 31
                  ori          t0, a1, 972
                  lui          t5, 965588
                  andi         tp, a7, 923
                  ori          s2, tp, 1388
                  slti         s5, s5, 881
                  xor          t1, a6, a2
                  slli         t5, s1, 27
                  lui          t0, 486026
                  sra          s10, s7, s11
                  xori         s2, s11, -481
                  srai         s9, s8, 24
                  xori         t5, a6, -1184
                  xor          a0, s8, t1
                  sub          s4, s7, sp
                  xor          a3, s5, a1
                  srai         s5, zero, 29
                  andi         t6, tp, -566
                  sltu         a4, s11, t6
                  slt          a6, gp, a1
                  lui          a4, 698182
                  sra          t3, a0, t4
                  auipc        a3, 226619
                  srai         s7, t2, 4
                  lui          a5, 824880
                  andi         s5, gp, 1554
                  and          s8, a4, s3
                  slti         s0, s8, 1571
                  sra          a3, t0, s6
                  slti         t5, s3, 310
                  sltiu        s11, s5, -774
                  sub          a1, s8, t6
                  sll          s11, s4, ra
                  or           s8, t5, sp
                  slli         s3, s8, 28
                  add          a5, s8, t1
                  lui          a7, 438568
                  xori         t4, t5, -171
                  addi         t5, a6, -734
                  add          s7, a1, gp
                  xor          s8, a2, a7
                  sub          t3, s0, s8
                  xori         a5, a3, 1513
                  xor          t5, gp, a5
                  sltiu        s8, s5, 1636
                  or           s8, s0, s11
                  or           tp, t4, a7
                  add          a6, t3, tp
                  srai         t6, a3, 4
                  xori         sp, a0, 588
                  ori          t3, s0, -1505
                  sltiu        gp, sp, -483
                  slli         s8, s3, 7
                  slli         gp, s5, 18
                  and          a5, a3, a0
                  sll          gp, tp, s8
                  srai         a4, t0, 21
                  srl          a2, a7, t2
                  ori          t3, s10, -1989
                  auipc        t4, 839918
                  sub          s3, s6, a5
                  lui          s10, 222676
                  sra          t1, s10, t2
                  sltiu        s8, a2, 1258
                  srli         a6, s6, 30
                  sll          a7, s1, t3
                  sra          s9, a1, a6
                  srli         s3, t6, 28
                  or           a1, s2, a2
                  xori         s10, s10, -1324
                  srli         s4, t0, 26
                  addi         a1, s0, 918
                  add          gp, s0, a3
                  slt          s8, s7, sp
                  nop
                  addi         s2, a6, 735
                  slti         t0, s0, -1205
                  slti         t3, s8, -669
                  andi         s7, t3, -2009
                  add          a3, s2, a4
                  addi         a4, sp, -1137
                  slt          s10, a6, s4
                  srl          a1, s5, a6
                  slli         a0, t0, 0
                  ori          a3, s6, -61
                  sub          a2, s10, s3
                  sll          a3, s6, a6
                  and          s5, s1, a6
                  xor          s4, a4, t1
                  addi         s5, zero, 175
                  slli         a3, a0, 7
                  slli         sp, t0, 3
                  srli         t3, sp, 0
                  lui          t6, 516811
                  add          s5, s6, a3
                  xor          s8, t5, t1
                  sltiu        s7, s2, -2020
                  lui          s9, 303717
                  slti         s0, gp, 424
                  andi         s10, t1, -726
                  or           a3, a7, s1
                  ori          s2, s1, 1110
                  srl          s2, a7, a3
                  srl          t6, t5, a7
                  addi         t0, t0, -1899
                  addi         a2, s7, -244
                  nop
                  sub          t1, t4, a3
                  auipc        gp, 60474
                  srai         a7, a1, 5
                  srl          s5, s9, sp
                  and          t4, a0, s6
                  srai         s5, s3, 9
                  and          tp, s5, s5
                  srai         s5, zero, 16
                  srai         s2, gp, 0
                  nop
                  xor          a0, a7, t3
                  auipc        a7, 601557
                  xor          zero, ra, a7
                  sltu         t3, a2, s3
                  srli         s11, gp, 11
                  slt          sp, ra, s7
                  slti         sp, a2, 1755
                  srl          t4, s1, a2
                  srli         t4, a2, 25
                  nop
                  sra          s3, s3, s5
                  nop
                  sltu         a0, t2, s4
                  lui          t0, 607918
                  srai         s7, a4, 26
                  sll          tp, t3, a0
                  auipc        t5, 322856
                  xor          s2, s8, s1
                  ori          a1, s6, 729
                  add          a4, s11, tp
                  lui          t0, 937787
                  xor          t1, sp, s0
                  xor          s5, t6, s10
                  or           a2, a7, s11
                  add          s2, ra, s6
                  sub          a3, gp, a0
                  srli         s5, s2, 23
                  ori          a4, zero, -1433
                  srli         t1, s3, 17
                  sltu         s10, a4, s6
                  slli         s11, s5, 6
                  xori         s2, a7, -472
                  sltu         tp, sp, s1
                  sll          s10, s6, gp
                  auipc        s7, 715127
                  srai         t1, a0, 16
                  lui          s4, 554376
                  and          s4, s11, s8
                  srai         t0, s2, 27
                  srai         s2, s4, 15
                  sltu         a1, a5, tp
                  auipc        a0, 414621
                  sll          s10, a5, s7
                  slti         s9, gp, 436
                  ori          t5, s7, 1448
                  sll          a3, a3, tp
                  xori         s8, s7, 1247
                  sltiu        t6, a4, 627
                  sra          s5, tp, s3
                  slli         sp, s7, 30
                  sltiu        sp, t0, 1066
                  addi         s10, t0, -1934
                  srai         a3, t0, 1
                  xori         s11, t5, 1266
                  slli         a6, s10, 2
                  sltu         t4, s7, t4
                  srli         a5, a4, 8
                  sll          s7, s8, a2
                  slt          a1, s3, s11
                  slti         gp, s5, -28
                  andi         s7, zero, 864
                  slt          s9, t6, ra
                  slt          t3, s2, sp
                  xor          tp, s3, t5
                  addi         a6, t0, -441
                  or           t3, tp, s8
                  sltiu        t1, a1, -1313
                  sltu         a0, s3, s8
                  xor          a0, t4, a7
                  and          a1, ra, s3
                  srl          s9, s5, s11
                  ori          zero, s10, -635
                  srli         a2, s6, 4
                  addi         s8, a5, -1669
                  add          s9, s4, ra
                  sltu         t2, s6, s11
                  lui          s10, 263823
                  sltu         t2, t0, a4
                  sra          a6, t0, a6
                  sub          s2, a2, t3
                  or           s8, t0, gp
                  andi         a1, s10, 759
                  andi         t4, t0, -776
                  lui          s3, 138394
                  lui          zero, 923546
                  slt          t5, s5, a7
                  and          s9, s11, t4
                  addi         s7, t3, 1501
                  or           s5, s2, s11
                  nop
                  slt          sp, s11, s8
                  nop
                  srli         t1, s4, 13
                  srl          sp, a2, s3
                  lui          s10, 339406
                  auipc        s8, 364964
                  sll          t3, a0, s11
                  slt          a4, s7, s10
                  slt          zero, gp, t3
                  lui          a1, 679286
                  andi         s2, ra, -1545
                  addi         s8, s10, 103
                  andi         a6, ra, 1818
                  sll          a4, s10, tp
                  sll          a1, s3, s1
                  sra          a4, s11, t5
                  slt          a3, a7, t2
                  add          s9, s0, a7
                  lui          t3, 899304
                  srai         t4, t6, 23
                  nop
                  srl          a1, s8, s0
                  and          a3, t4, t1
                  srai         s5, a4, 10
                  nop
                  srli         sp, s6, 14
                  auipc        t1, 548246
                  addi         s9, s7, 1629
                  sra          s4, s6, ra
                  srl          s4, t4, t0
                  add          a7, s11, a7
                  srl          tp, ra, s11
                  sub          a1, a5, s0
                  slli         t2, a6, 19
                  sll          t2, s6, s3
                  nop
                  and          s2, t6, t0
                  srli         a1, s3, 26
                  srai         a5, s6, 4
                  sll          a3, gp, s4
                  sub          s4, a6, t3
                  addi         s8, sp, -612
                  sub          t3, t3, a7
                  andi         a4, a3, 1934
                  srl          a4, s9, a5
                  add          a1, s6, s2
                  sltiu        s4, t5, 669
                  xori         s2, s9, 492
                  and          s2, s2, a2
                  sll          zero, t3, a0
                  srli         s10, a5, 4
                  and          s8, s9, t6
                  nop
                  srli         a0, s5, 18
                  slli         t0, a0, 30
                  add          s4, a1, tp
                  srli         s10, a2, 23
                  add          tp, tp, a4
                  xori         s10, a5, 480
                  sltiu        s11, t3, 497
                  andi         s8, a7, 2018
                  srai         t5, s6, 24
                  sub          s10, t5, t6
                  slt          t2, zero, a6
                  add          s11, zero, s5
                  ori          a4, s9, -1517
                  sra          t4, t4, a2
                  xor          a4, s0, a6
                  slt          s9, t0, a3
                  slli         zero, a3, 28
                  slli         s7, t1, 23
                  lui          s10, 329113
                  nop
                  sltu         s2, a3, s6
                  slli         a6, s11, 16
                  or           s11, a4, a5
                  slti         s4, gp, 235
                  sltu         t5, t0, t1
                  srli         t2, a1, 2
                  xori         t5, t1, 1524
                  xori         a7, t3, -1063
                  and          gp, s0, t1
                  nop
                  lui          s7, 771006
                  add          a7, tp, t3
                  slli         t4, s7, 22
                  sltiu        t0, s1, -557
                  addi         a2, s9, -138
                  xor          a7, t3, s8
                  sra          a4, s0, t2
                  auipc        s7, 1033407
                  sll          a3, s7, gp
                  xor          s2, t2, t5
                  sub          a7, t4, t5
                  slti         t0, s3, -1887
                  sub          s10, a4, s4
                  sltiu        a2, s5, -1697
                  slt          s11, s6, a2
                  srai         gp, s2, 15
                  andi         a1, s9, -1815
                  auipc        sp, 342481
                  sra          a2, gp, a6
                  sltu         s5, t2, s10
                  xori         s8, s2, 1087
                  addi         t4, t1, 1140
                  slti         s4, gp, 1310
                  srl          t2, t6, zero
                  xor          t5, t2, t0
                  auipc        a7, 239369
                  sll          s5, a0, a7
                  andi         zero, s6, 115
                  lui          s7, 42699
                  and          s10, tp, s7
                  slli         s4, t2, 12
                  slli         t1, a7, 22
                  slt          a0, ra, t2
                  or           t4, s6, s4
                  or           s9, a7, s10
                  xori         t5, s0, -94
                  srai         sp, s4, 18
                  slt          a1, sp, s5
                  lui          s11, 983630
                  srl          t1, t6, ra
                  or           t3, t1, s9
                  nop
                  srli         s4, a2, 5
                  andi         t6, t4, 801
                  addi         a5, t1, 225
                  xori         a4, zero, 1867
                  lui          s7, 578318
                  xori         s2, a4, 1629
                  slti         a2, s1, 1775
                  srl          s9, t5, a6
                  sll          gp, ra, s7
                  sll          s4, s11, t6
                  slt          a2, t6, ra
                  slti         s9, tp, -546
                  sll          a0, s2, ra
                  add          s8, s7, t4
                  srli         t2, s7, 14
                  sub          t1, s6, s9
                  xor          gp, a7, a4
                  or           t3, t5, t2
                  nop
                  srl          s9, a3, s3
                  nop
                  and          a6, tp, zero
                  lui          a5, 28028
                  or           s10, gp, s7
                  and          t6, s3, t5
                  addi         t6, s4, 441
                  slli         s8, s9, 9
                  add          t1, s8, zero
                  srl          gp, a7, s10
                  auipc        s8, 245856
                  ori          a6, s6, 1158
                  and          s8, s1, a4
                  xori         t5, s9, -1922
                  slti         a4, t1, 280
                  lui          t1, 861883
                  srli         a4, s3, 22
                  nop
                  lui          sp, 368145
                  sub          s3, t4, s10
                  sub          s3, tp, s3
                  and          a2, s10, a7
                  nop
                  xor          zero, a2, zero
                  lui          tp, 716650
                  sll          s3, t1, s7
                  and          a4, ra, s10
                  sra          a2, s2, tp
                  sltu         t5, s4, s7
                  slli         s4, s11, 5
                  xor          zero, s3, s0
                  slt          sp, t6, tp
                  slti         a6, sp, 1631
                  lui          s0, 667088
                  srai         s8, a7, 20
                  and          t0, a0, tp
                  sra          s9, a4, zero
                  ori          t1, s6, -1511
                  srli         a6, s0, 14
                  sltiu        s10, s8, -1826
                  slti         a6, a2, -1161
                  xori         s4, t6, 1851
                  srai         t6, sp, 21
                  slti         s8, s11, -1540
                  ori          t3, t5, 1881
                  srli         s10, s9, 16
                  slti         s8, gp, 730
                  xor          s4, s4, t6
                  sltu         t3, s11, a1
                  sltiu        t1, s5, -1096
                  srli         s4, t6, 26
                  xor          a3, a2, s2
                  or           t0, a6, s7
                  slli         a6, t2, 5
                  and          t3, tp, a3
                  xor          a4, s4, s9
                  srai         s5, s8, 15
                  xor          t1, a6, t1
                  and          t6, zero, t5
                  xor          t0, s9, t4
                  sra          a2, sp, s5
                  srl          s10, a0, a0
                  auipc        t0, 499180
                  srl          a2, a1, a0
                  srl          t1, s3, s6
                  srl          sp, t0, t2
                  srai         s10, s3, 24
                  sub          a2, s1, a2
                  auipc        a6, 371678
                  slt          a7, tp, a4
                  sra          s2, sp, s7
                  slti         t2, s4, -1603
                  add          t2, a4, s1
                  srai         sp, s7, 29
                  ori          s0, s9, 494
                  sltiu        s5, a5, -910
                  nop
                  add          a1, s5, t5
                  srai         a7, t6, 17
                  or           s4, a5, s1
                  sltu         t1, sp, a3
                  nop
                  slt          t6, t4, s11
                  ori          t3, tp, 901
                  add          sp, a7, t1
                  andi         a5, a4, 1658
                  addi         s10, s0, 53
                  sltiu        s4, a5, 446
                  sra          t6, s8, ra
                  xori         s8, s6, -21
                  and          s11, s8, t0
                  addi         a6, t2, 1700
                  auipc        a2, 333685
                  ori          t6, t1, -893
                  sltu         t1, a3, s0
                  sltu         a7, s9, gp
                  sra          t1, t2, t2
                  slli         tp, tp, 28
                  sra          s8, a6, t3
                  sub          a3, s5, s7
                  xor          s4, s7, t5
                  slli         s2, a5, 25
                  nop
                  slti         t1, a4, 1042
                  xori         s10, s4, 1368
                  lui          s9, 583182
                  slt          a6, t2, a3
                  slli         t6, s8, 13
                  xori         zero, s10, 1614
                  addi         gp, t5, -1415
                  auipc        t2, 639625
                  sltu         s5, t4, s0
                  sra          a3, a0, s7
                  slti         s11, a2, 1358
                  or           sp, s8, s11
                  add          a7, tp, gp
                  slli         t5, s6, 8
                  xori         sp, s1, -626
                  sll          a7, s10, a2
                  slti         t5, t2, 1441
                  ori          a5, a3, -850
                  sltu         gp, a3, a0
                  slt          t1, a7, s5
                  slt          a3, s1, s3
                  or           sp, zero, t4
                  auipc        t2, 567299
                  sub          a3, a3, a5
                  and          t4, t2, s1
                  sra          a1, t1, a7
                  xor          t5, s8, s1
                  slti         s3, tp, -667
                  ori          t0, s11, -670
                  nop
                  xor          zero, s2, tp
                  ori          t2, a0, 1474
                  sub          s9, t4, a6
                  srl          a5, a5, t0
                  sltiu        s2, a3, 896
                  sra          s10, s4, s6
                  sltiu        a5, sp, 1042
                  andi         s10, t5, 1229
                  auipc        s3, 145502
                  slt          s8, s2, s7
                  xori         a4, t5, -150
                  ori          s3, t0, 1286
                  srai         a7, s9, 2
                  sltiu        s7, s8, 1100
                  addi         t4, s2, -549
                  auipc        a7, 601743
                  sltu         gp, a0, t0
                  sra          a3, s11, gp
                  xori         t6, tp, -714
                  slt          tp, a3, s5
                  sll          t4, s2, a0
                  sltu         s11, zero, s7
                  sltiu        t2, s6, 1898
                  slti         a1, t4, -2034
                  sra          s9, a5, gp
                  srai         tp, a0, 16
                  lui          a6, 318998
                  add          s4, t3, s10
                  addi         t5, a7, -1723
                  addi         tp, s6, -90
                  sltiu        a0, s2, 748
                  nop
                  slt          a5, gp, s0
                  sltu         t3, s4, s7
                  ori          s2, s4, 182
                  ori          a7, ra, 202
                  sll          t0, a6, gp
                  sra          s0, sp, a7
                  xori         a1, s6, -98
                  sltu         t1, t0, t0
                  auipc        a7, 328119
                  sub          a3, t4, s6
                  sra          t3, s8, s9
                  sll          s4, t3, a2
                  sltiu        s7, a0, 595
                  and          s5, tp, a1
                  sltiu        s10, a0, -1862
                  andi         s0, s10, 1548
                  xor          sp, s8, s5
                  addi         sp, s8, 333
                  srl          s0, s1, a7
                  lui          t6, 53207
                  andi         s7, s11, -1299
                  auipc        sp, 277559
                  andi         s3, s2, -1620
                  srl          a5, t0, s6
                  xor          s5, s11, s6
                  ori          s4, s9, 1771
                  ori          s7, a6, 283
                  srl          a7, s10, a4
                  xori         s2, a3, 1499
                  sra          t4, s3, tp
                  srli         s3, t2, 23
                  sra          s8, s6, s9
                  auipc        a5, 774257
                  ori          tp, t0, -980
                  slt          a7, zero, t5
                  ori          zero, a4, 1142
                  xori         s11, a0, -433
                  slt          a3, s10, s9
                  sll          t3, a3, a2
                  srli         a6, s0, 15
                  addi         t5, a6, -509
                  sub          t0, a6, s0
                  and          s2, a6, s5
                  and          sp, t2, s10
                  sltiu        zero, s7, 1948
                  ori          s2, a3, -688
                  sltiu        s5, a0, 1861
                  srli         s3, s5, 6
                  nop
                  andi         s3, t5, -294
                  slli         a5, s9, 20
                  and          a7, a2, t0
                  xor          zero, a4, s9
                  add          a2, tp, s0
                  slli         zero, sp, 7
                  and          a5, tp, s10
                  add          a2, s6, a5
                  slti         s7, s10, -576
                  auipc        t5, 674051
                  andi         t2, s2, -1369
                  nop
                  ori          t4, t0, 1236
                  slli         zero, s11, 31
                  slti         s11, s10, 1842
                  slli         s4, a6, 20
                  slt          s9, t5, gp
                  xor          a6, s3, a6
                  sub          a2, a4, s7
                  andi         a4, s9, 861
                  add          a3, t5, a4
                  auipc        t2, 432399
                  ori          s2, a3, -1204
                  or           t6, t1, s11
                  sub          a3, s7, t0
                  sltu         s5, s8, s7
                  lui          a4, 661428
                  nop
                  srli         a6, s9, 15
                  sub          s11, s9, a5
                  sra          a2, s4, t1
                  or           a1, t2, s1
                  srli         t6, ra, 7
                  xor          s9, gp, a5
                  sub          a5, t4, s6
                  xor          a4, a4, s4
                  auipc        t4, 400729
                  srl          s0, s3, s4
                  sra          tp, sp, a2
                  nop
                  and          s7, a1, s3
                  slti         gp, a0, 1289
                  slli         s5, a7, 13
                  add          s2, a0, tp
                  slti         s11, tp, 1348
                  sltu         s11, s11, s2
                  ori          t1, t0, 1487
                  sltiu        a6, s2, 1217
                  ori          a3, gp, -1121
                  sltu         a1, a4, t2
                  ori          a4, a4, 409
                  srli         sp, s4, 10
                  auipc        s0, 391033
                  xor          s7, t1, s9
                  sll          a3, t0, a1
                  sltiu        a6, a2, -1556
                  sltiu        t3, a0, 1694
                  lui          sp, 277879
                  srai         a5, t0, 21
                  sltu         s2, a7, s9
                  lui          s11, 916321
                  xor          a4, t5, t0
                  addi         tp, s9, -913
                  xor          s8, t4, a3
                  sra          t2, t5, a7
                  ori          a1, gp, 250
                  srl          a7, t3, a3
                  addi         tp, s0, 1928
                  and          a3, sp, t4
                  sltiu        s9, s3, 84
                  xor          tp, ra, a2
                  sltu         a2, a5, t5
                  or           s5, zero, a1
                  srai         a3, s8, 4
                  srai         t0, t5, 19
                  sltu         gp, a7, t3
                  xori         t4, zero, -1477
                  srl          s2, s0, s3
                  srl          t5, tp, t5
                  slt          t5, a6, t6
                  lui          s8, 1425
                  xor          s5, s4, s6
                  andi         a5, s6, -1238
                  xori         zero, a2, 1595
                  sub          s3, s3, a0
                  ori          sp, a7, -276
                  ori          s0, a7, 321
                  and          a0, t2, t4
                  sub          s9, s4, s8
                  ori          s7, tp, -743
                  slti         s3, s2, 1462
                  srai         s5, t3, 16
                  srl          a1, a2, s0
                  srl          t3, t0, s4
                  addi         t5, a6, 147
                  srai         a5, s9, 25
                  nop
                  ori          t1, t0, -1050
                  xori         a1, sp, -502
                  ori          a5, a5, -704
                  nop
                  ori          t0, gp, 872
                  sltiu        s10, sp, -1392
                  or           t0, a3, sp
                  nop
                  sll          s10, a0, s2
                  sltu         s4, t1, s10
                  ori          s8, a6, -171
                  slli         s4, a5, 27
                  slti         s10, s2, -477
                  and          tp, s2, s5
                  sra          a6, s5, a6
                  auipc        t1, 605699
                  addi         sp, s11, -1806
                  add          sp, gp, s9
                  sltiu        s11, a0, -913
                  xor          gp, s3, s0
                  ori          s11, s9, 315
                  sltu         a3, s0, a7
                  sltiu        t5, a7, -83
                  srli         s5, s0, 2
                  add          s11, a3, ra
                  sltiu        tp, gp, -72
                  slt          sp, a1, zero
                  srai         a2, t4, 3
                  srl          a2, s7, s9
                  xor          gp, a6, s10
                  lui          t0, 902620
                  xori         s11, s8, -1504
                  add          a4, ra, t0
                  slt          t5, a3, a0
                  addi         t5, a7, -166
                  slt          t4, a0, t2
                  sll          a0, a7, a3
                  slt          gp, t6, s11
                  sub          s10, t2, s5
                  nop
                  srli         a7, ra, 21
                  slt          t4, s10, a0
                  add          s0, s10, tp
                  nop
                  sub          s3, sp, gp
                  ori          t4, a6, -1561
                  sltiu        s0, s9, -1869
                  xor          t0, s1, a4
                  sll          s9, a6, tp
                  add          s10, t6, s7
                  addi         t6, s1, -1569
                  xori         tp, s7, -1726
                  srli         a5, a7, 2
                  sltiu        t4, gp, -751
                  sltiu        t3, t5, -873
                  andi         s10, s4, -843
                  sra          t1, a1, a7
                  sll          t4, s4, s1
                  and          t1, a4, t5
                  srli         gp, a5, 23
                  slt          a5, s7, a4
                  add          t4, s7, t0
                  xor          zero, a5, a4
                  and          t0, s6, t5
                  addi         a7, a4, -306
                  andi         s5, t0, -1868
                  auipc        t0, 830386
                  xor          a6, a3, s5
                  sltiu        gp, t3, -868
                  andi         a3, a1, -150
                  srli         a2, a6, 23
                  srai         t0, gp, 19
                  and          s9, s1, t2
                  slt          s3, t2, a0
                  xor          t1, a4, tp
                  addi         s11, t2, -1521
                  srli         a6, s8, 25
                  lui          s4, 7342
                  sltiu        t0, tp, 359
                  sll          a6, s0, a4
                  sub          t2, a6, tp
                  sll          s9, s6, ra
                  or           a5, s0, a1
                  xori         s10, t0, 1403
                  slli         s5, a5, 22
                  li           t3, 0x174903d4 #start riscv_int_numeric_corner_stream_10
                  li           t2, 0xffffffff
                  li           t5, 0x80000000
                  li           a2, 0x0
                  li           a7, 0x93c9d65
                  li           s9, 0x77fa635d
                  li           s3, 0x8471c0c7
                  li           s4, 0x80000000
                  li           t6, 0x80000000
                  li           a1, 0xffffffff
                  lui          t6, 379394
                  addi         t2, a7, -1650
                  add          t3, a2, s3
                  lui          a7, 654482
                  addi         a1, t5, -1606
                  sub          a7, t3, t6
                  nop
                  nop
                  nop
                  add          s4, a2, s3
                  add          t2, t3, t6
                  nop
                  sub          t3, t3, s4
                  addi         t5, t2, -1172
                  nop #end riscv_int_numeric_corner_stream_10
                  addi         s10, s3, 230
                  add          t6, a0, s7
                  sll          t1, s4, a1
                  and          s7, s8, t3
                  sltu         s5, zero, a4
                  andi         a4, a3, -1596
                  slt          t6, sp, s10
                  sltiu        s0, t2, -1807
                  auipc        a3, 972458
                  or           a7, t2, s9
                  add          s11, ra, t6
                  srli         a5, a6, 7
                  ori          t5, a3, -1975
                  andi         s4, t5, 1467
                  ori          tp, s5, -1996
                  sra          s11, zero, s11
                  srai         a1, t4, 16
                  nop
                  and          s11, s1, s5
                  srl          t5, s0, ra
                  slli         t3, a7, 18
                  nop
                  and          sp, a7, t1
                  add          s9, gp, s4
                  srli         a6, s5, 29
                  andi         s8, s6, 353
                  and          t1, a1, s9
                  srai         zero, tp, 24
                  slti         t4, ra, 1852
                  lui          a3, 63589
                  sra          s7, s5, a3
                  auipc        t4, 28603
                  add          a7, t1, a0
                  xor          s4, t0, s8
                  nop
                  sltiu        a6, a5, 1035
                  srli         s10, s3, 17
                  sltiu        a2, a7, 25
                  sub          t6, a3, a1
                  sll          sp, s4, s4
                  xor          t3, s2, a0
                  or           s8, s11, t2
                  add          sp, s10, t4
                  lui          a1, 843385
                  andi         a4, s7, 464
                  xori         zero, a3, 723
                  srli         a2, s0, 20
                  addi         a4, t1, 688
                  slt          gp, a2, gp
                  sll          s11, a6, t3
                  slti         s8, s4, 1109
                  auipc        a7, 90888
                  srli         t6, t5, 12
                  and          s7, ra, a0
                  or           s8, s11, tp
                  srai         gp, a5, 17
                  slli         s7, s8, 27
                  andi         s5, a7, 1382
                  slli         a1, sp, 14
                  auipc        t0, 631008
                  xor          s0, a0, t1
                  lui          s0, 213854
                  add          t3, t1, tp
                  sll          a0, s9, s0
                  srl          t6, t2, a1
                  srai         tp, a4, 16
                  xor          a7, a5, a5
                  addi         s3, zero, 815
                  srl          t0, sp, zero
                  sltiu        t1, sp, 1901
                  slti         s5, s0, 1991
                  or           s0, t3, a0
                  xori         a0, a6, -2041
                  addi         a2, a1, -1467
                  and          a7, s1, s2
                  slti         s9, t0, 943
                  add          a6, a3, a6
                  srli         s7, s11, 26
                  lui          t1, 669557
                  sltiu        s8, t4, 1058
                  sltu         t1, s5, t3
                  xor          a4, zero, s9
                  sltu         tp, s7, a2
                  lui          gp, 153240
                  and          t4, s10, gp
                  slli         a7, sp, 31
                  ori          s8, t6, -1574
                  xori         t0, tp, -1605
                  sll          a3, s1, s8
                  addi         t6, s6, -381
                  srli         t6, s11, 21
                  xori         s4, s8, 822
                  andi         t1, s5, 1187
                  sltu         s10, s1, s1
                  srl          s10, gp, s9
                  slli         s10, t6, 22
                  sll          a1, t2, s5
                  srai         a7, a4, 3
                  sltiu        s9, sp, 1391
                  sll          tp, zero, s1
                  slt          t0, t6, s4
                  auipc        a3, 826931
                  xori         s0, s11, -435
                  add          t6, s6, s2
                  srl          a5, s3, zero
                  sltu         s7, t5, s5
                  srai         s11, s2, 6
                  slti         a1, t0, -1516
                  xori         a4, gp, 496
                  sra          s10, zero, t5
                  sltiu        s2, s3, -900
                  sltu         s10, s0, s2
                  xor          t4, tp, sp
                  sra          a1, t3, tp
                  sltiu        a7, t4, 414
                  lui          t3, 955616
                  srl          s8, t4, t6
                  xor          a3, t3, tp
                  and          s7, s1, gp
                  add          a4, tp, a5
                  auipc        t0, 430849
                  srl          t0, s10, s9
                  sltu         a4, a1, s9
                  ori          s4, s2, 1676
                  srai         t3, zero, 29
                  srli         t3, s0, 4
                  add          s3, sp, s3
                  and          t3, tp, s5
                  srai         a5, ra, 27
                  srai         t3, t3, 30
                  slt          a2, t2, a3
                  sub          s9, a2, s6
                  sltu         t4, s8, a6
                  sra          a6, s11, t3
                  nop
                  add          s5, tp, a1
                  and          s10, a7, t0
                  slli         t2, s2, 8
                  or           s10, t4, a5
                  sub          a2, a5, tp
                  slli         a5, s8, 14
                  slti         s9, t2, 1126
                  auipc        t4, 254424
                  srl          gp, t5, ra
                  sll          s0, tp, s1
                  ori          t4, a5, -717
                  xori         a0, s7, 1775
                  srai         s9, a2, 22
                  sll          a0, s8, s3
                  srli         a2, s7, 19
                  xor          s11, s8, s8
                  sltiu        t2, gp, -1996
                  xor          s5, tp, a2
                  sra          a0, sp, t0
                  andi         s11, s0, 981
                  or           s7, sp, s4
                  sra          t0, a1, gp
                  auipc        zero, 341351
                  lui          a0, 381835
                  andi         zero, s4, 1940
                  slti         s11, a1, 1688
                  srai         s10, a2, 25
                  xor          tp, tp, s4
                  xori         s10, a0, -1756
                  or           s9, s8, a3
                  ori          s2, t5, -779
                  and          s4, t3, ra
                  xor          s0, ra, t5
                  ori          s11, t2, -990
                  andi         t3, gp, 1891
                  srl          t5, s9, t4
                  nop
                  auipc        s11, 1006534
                  and          s4, t2, s2
                  sra          s10, a4, t1
                  andi         s2, s2, 1964
                  xori         s8, s2, -804
                  srai         s9, s9, 11
                  ori          s5, t6, 705
                  nop
                  and          a3, s8, gp
                  and          a1, t5, t5
                  srli         a5, a7, 2
                  lui          t5, 772067
                  srli         a2, s5, 24
                  srai         s9, s11, 14
                  or           a4, s7, s7
                  lui          s7, 92291
                  sub          s0, a7, zero
                  ori          s3, s0, 1410
                  slti         s4, a4, -1868
                  sltu         a5, s9, s4
                  slti         zero, a2, -1176
                  nop
                  add          sp, a4, s2
                  srli         t0, s0, 2
                  add          s5, tp, s4
                  auipc        s5, 652179
                  slti         s8, s6, -861
                  srli         t6, s8, 22
                  slli         s4, t1, 27
                  srli         t3, a3, 9
                  srl          s9, s9, gp
                  andi         a2, s10, 1752
                  slli         a3, gp, 15
                  slli         a5, s4, 2
                  xori         t4, a1, -900
                  slt          s5, t5, a1
                  ori          s2, a0, -335
                  lui          s7, 615889
                  sll          s7, s2, t0
                  nop
                  xori         t5, s5, -1844
                  srli         zero, a7, 1
                  nop
                  slli         s4, a4, 12
                  xor          t0, t6, zero
                  and          t2, s11, s11
                  sltiu        a5, s8, 1330
                  xori         t4, s10, 406
                  xori         t2, a4, 1332
                  sub          t1, a4, a2
                  srl          sp, a3, a6
                  andi         tp, s9, -1957
                  srl          t4, s1, t3
                  nop
                  add          s10, s5, s3
                  slt          s3, tp, t6
                  srai         a7, t1, 20
                  srl          s7, t5, s2
                  ori          a2, t1, -284
                  nop
                  srl          a1, s7, s3
                  add          t1, a7, sp
                  ori          t1, a2, -158
                  lui          zero, 714260
                  andi         s8, s11, 640
                  sll          t3, s1, s8
                  xor          t4, s5, s1
                  xori         tp, a4, -2035
                  ori          tp, t1, 780
                  or           t0, a1, gp
                  lui          s3, 93702
                  srai         s10, s7, 16
                  ori          sp, t3, -1268
                  sra          t1, s6, t0
                  srai         s9, s7, 21
                  srli         t6, a5, 27
                  add          s7, t4, s1
                  slti         s5, a2, 415
                  add          gp, zero, a5
                  sltiu        s5, sp, 1694
                  sltiu        t0, t6, -287
                  xor          a0, sp, a1
                  sra          a4, a0, a7
                  sra          t2, a7, zero
                  slt          tp, t4, s5
                  auipc        a3, 390080
                  xor          t5, a4, s9
                  andi         s7, gp, -209
                  ori          s5, sp, 1836
                  lui          a3, 503495
                  slt          s11, sp, tp
                  lui          a1, 27670
                  addi         tp, zero, -1218
                  srli         a3, s10, 11
                  andi         s5, tp, 133
                  sra          s10, a1, s5
                  andi         t6, sp, 1811
                  lui          a0, 801472
                  sra          t2, gp, a3
                  sra          t1, s2, s6
                  sltu         s2, a4, s9
                  xor          t5, s1, s7
                  add          t0, a5, t3
                  srli         t4, t6, 26
                  nop
                  slti         t3, s8, -1581
                  sltu         a3, gp, s3
                  slti         s4, s2, 880
                  sra          a7, t4, t6
                  sll          s3, s9, s9
                  or           s0, t4, s1
                  nop
                  srai         s11, s10, 6
                  srai         a4, sp, 27
                  srl          gp, s5, s5
                  or           s2, a2, s4
                  srl          a0, s0, a7
                  lui          a2, 514969
                  or           s7, s2, sp
                  nop
                  xori         zero, a3, -2007
                  or           a1, s7, a6
                  xor          a4, tp, t4
                  sub          a4, a0, s6
                  xor          a4, a3, t1
                  xori         t4, s2, 1588
                  and          t5, a5, s3
                  ori          a0, s8, 1787
                  srai         a5, t3, 31
                  srai         a0, t0, 14
                  sltu         s8, a6, s2
                  auipc        s11, 304930
                  andi         t6, s4, 494
                  auipc        zero, 156064
                  sub          a7, t4, s10
                  or           a2, sp, a4
                  sub          a2, zero, s8
                  slt          t0, a6, a4
                  andi         t6, a4, -530
                  srl          t2, t5, a0
                  slti         s11, s10, -928
                  srl          t6, t4, s11
                  srli         sp, gp, 1
                  slti         s11, s1, -1195
                  auipc        s2, 728173
                  sub          a7, s10, a7
                  slli         a4, s4, 28
                  srl          s3, s8, t3
                  sll          a7, a3, a7
                  addi         sp, t3, 1520
                  add          a3, a6, s11
                  auipc        t6, 152197
                  srl          s2, s5, t5
                  sll          a1, s9, a2
                  srai         t3, t5, 19
                  sltiu        a2, a5, 1726
                  srl          s10, a4, a2
                  slli         a5, ra, 29
                  slti         s10, ra, 37
                  slti         s0, s6, 426
                  or           t6, s5, t5
                  or           s5, t0, sp
                  addi         t4, t5, 1921
                  srai         s9, s9, 0
                  srl          s2, a1, t0
                  srl          s8, a2, t2
                  auipc        s8, 177764
                  auipc        a6, 539437
                  nop
                  andi         s5, s11, 2045
                  sub          s0, s10, sp
                  xor          s0, s4, s0
                  srli         s2, t5, 26
                  srli         s3, s2, 11
                  sll          a3, s10, a3
                  add          a7, s4, t6
                  add          t5, t5, a0
                  sltiu        t4, t4, -86
                  sra          s11, t1, a4
                  or           a4, a2, a0
                  srl          tp, s2, s10
                  slt          s8, s4, a3
                  sll          s10, s10, t1
                  slti         a1, s1, 1006
                  andi         t1, t3, 1084
                  addi         sp, a4, -1270
                  auipc        sp, 672805
                  slli         gp, a0, 27
                  sra          s8, a0, s0
                  slt          a0, a4, a6
                  auipc        t0, 876349
                  slli         t5, t4, 3
                  sltu         s10, s6, s0
                  or           a1, s0, zero
                  slli         a0, a3, 22
                  sub          a2, t3, zero
                  slti         gp, a2, 65
                  auipc        a4, 667941
                  andi         tp, t5, -1945
                  andi         a5, tp, 1402
                  and          s7, t5, a5
                  sub          s3, zero, s7
                  xori         gp, s2, -981
                  srai         t0, s0, 23
                  auipc        s7, 566692
                  ori          s11, a7, -188
                  xor          s9, s0, a2
                  slli         t1, t5, 17
                  xor          s9, t2, s2
                  lui          zero, 245402
                  slt          t0, s3, gp
                  addi         s10, s8, -1621
                  add          t6, t6, t6
                  auipc        s5, 973140
                  sltiu        s9, a4, -224
                  slti         a1, s0, -2007
                  xori         t2, s7, 586
                  slti         s8, a7, 516
                  slt          a6, t6, s10
                  slt          s4, a3, ra
                  sll          t2, s10, s0
                  srai         t6, tp, 14
                  slti         a5, a7, 377
                  srai         a4, s9, 30
                  or           s8, t3, a1
                  xor          a7, s6, s5
                  sra          t0, a1, s11
                  and          t4, s3, s9
                  xor          s0, s3, s1
                  sra          t4, s7, s6
                  srli         s11, s10, 26
                  lui          a2, 616794
                  sltu         a5, t5, s8
                  or           a2, a7, zero
                  slli         a4, s4, 7
                  sltiu        a0, s9, 1670
                  add          a1, s2, tp
                  or           sp, zero, t2
                  srai         a4, a5, 21
                  and          s7, t1, s5
                  auipc        a5, 54510
                  add          t6, s6, s7
                  srl          s9, a1, ra
                  add          s3, s8, s2
                  srai         a1, t1, 8
                  srl          a5, a1, a3
                  xori         t6, s7, 1568
                  slti         s5, s11, 1946
                  srai         a1, a3, 7
                  and          t3, s0, a2
                  add          s4, a4, t2
                  add          a3, a0, s10
                  sub          s3, s10, a0
                  srl          a7, a5, ra
                  sra          sp, t6, s8
                  slt          s5, a2, s9
                  slti         t5, t2, -1611
                  sltiu        a0, a0, -347
                  srl          sp, s3, s6
                  and          a0, s8, s7
                  srai         a4, t4, 15
                  srai         zero, zero, 21
                  auipc        t4, 670143
                  addi         a2, t4, 574
                  addi         a3, a2, -747
                  slti         sp, s10, -94
                  nop
                  addi         s2, sp, 1735
                  slti         tp, a0, -1624
                  sra          a6, t2, t2
                  srai         s8, s10, 15
                  andi         s4, s1, 251
                  andi         s9, tp, 1706
                  sll          a3, t0, s0
                  sub          a3, zero, a2
                  sra          t0, s9, a3
                  sll          a1, t3, a2
                  slli         tp, s5, 19
                  sltiu        zero, a3, -254
                  andi         s5, s11, 904
                  xori         a6, a5, -366
                  sub          t1, a7, s0
                  sub          s8, s4, t0
                  sra          t4, s0, ra
                  srli         zero, gp, 5
                  or           zero, t4, s7
                  slt          s10, sp, a1
                  lui          t4, 927033
                  srai         zero, ra, 17
                  sltiu        a6, t4, 827
                  sll          s5, s7, a3
                  sub          tp, t6, s10
                  slti         t6, ra, -401
                  xor          t0, a6, a6
                  add          s2, s5, s6
                  add          s10, a0, s0
                  slt          t6, s8, t0
                  addi         s4, t5, 443
                  slt          zero, a5, t1
                  sub          a4, a7, s9
                  srli         s2, a7, 24
                  srl          s10, s5, t3
                  xori         s9, a4, 1372
                  ori          s3, s2, 129
                  srl          s7, t6, sp
                  sub          t6, zero, s10
                  li           a4, 0xc7374785 #start riscv_int_numeric_corner_stream_6
                  li           s7, 0x0
                  li           t2, 0x80000000
                  li           a0, 0x80000000
                  li           s9, 0xffffffff
                  li           s4, 0x0
                  li           s3, 0xffffffff
                  li           s10, 0xa38c16b8
                  li           t3, 0xa7b7d0be
                  li           t4, 0xcf630075
                  add          a0, s3, a4
                  nop
                  lui          s9, 826992
                  lui          s3, 748168
                  addi         t3, s9, -206
                  lui          a4, 85753
                  nop
                  addi         s3, s4, 65
                  addi         s3, a0, 261
                  nop
                  add          t4, s9, s4
                  nop
                  sub          s7, t3, s4
                  add          a4, t4, a4
                  add          s9, s7, t4
                  add          a0, t4, t4
                  lui          s9, 430059 #end riscv_int_numeric_corner_stream_6
                  slt          a4, s3, a1
                  nop
                  auipc        s4, 637634
                  lui          s10, 585810
                  slli         s5, a3, 12
                  sltu         s8, s5, s11
                  xor          s3, gp, t6
                  xor          a5, t2, s5
                  ori          a0, a2, -1257
                  lui          a0, 768763
                  nop
                  sll          tp, s10, s4
                  sll          t1, tp, t6
                  nop
                  slt          a5, s9, a5
                  sltu         t1, t4, a7
                  xori         s0, a6, 741
                  and          a2, t0, a5
                  sll          t6, a4, a6
                  or           s10, s0, t3
                  sltu         t1, tp, a6
                  auipc        a1, 437370
                  ori          a4, t5, -1892
                  lui          s9, 93102
                  srl          s8, t1, t6
                  add          s2, s2, t0
                  sra          s10, a0, t4
                  ori          s3, s9, -941
                  srai         s5, a6, 24
                  slli         s2, s2, 11
                  or           s10, a4, s10
                  srl          t4, t0, s4
                  and          s11, t3, gp
                  nop
                  slli         t4, s5, 5
                  sltu         s2, t5, s1
                  slli         t5, a3, 25
                  andi         gp, a3, 1807
                  slti         a2, a5, 1597
                  sub          a6, t2, s5
                  addi         s3, s2, 654
                  slli         a4, s1, 27
                  sll          t4, t0, zero
                  sra          s3, a6, t4
                  lui          t5, 782569
                  srl          s0, s0, gp
                  xori         s11, s1, 293
                  or           t2, a7, s10
                  ori          s8, s4, -579
                  addi         a7, s4, 322
                  srai         t1, a0, 22
                  sub          s11, a7, a1
                  slli         t0, s6, 8
                  nop
                  lui          gp, 11144
                  slti         a6, sp, 906
                  auipc        t0, 92571
                  sltu         t5, s4, t6
                  srai         a1, ra, 29
                  slt          tp, zero, ra
                  xor          s2, t2, a4
                  sll          a1, t1, s11
                  or           t3, t3, s6
                  add          s10, a6, t5
                  and          s2, s11, s11
                  nop
                  or           s7, a0, a1
                  xori         a7, zero, -1372
                  sll          a2, s3, s10
                  sra          s5, s7, s9
                  slt          a0, t2, t4
                  auipc        a0, 772264
                  nop
                  xor          t6, s0, s7
                  srli         t1, a3, 31
                  auipc        s7, 22797
                  slli         s2, a2, 26
                  sub          s10, s0, a1
                  slt          a5, s5, s8
                  ori          s9, s5, 1573
                  andi         s11, s5, -1756
                  srli         t1, s7, 11
                  sll          s4, s6, zero
                  sub          a7, s3, s5
                  slti         a1, a4, 56
                  and          t2, a1, s11
                  srl          s3, s4, s9
                  and          s11, t3, a4
                  addi         s9, a7, -1992
                  sra          a6, a4, s3
                  slt          zero, s7, a0
                  lui          s8, 776387
                  xori         t6, a5, -695
                  srai         s8, s9, 13
                  slli         s3, t2, 8
                  slli         t6, s2, 20
                  auipc        t0, 1034995
                  sra          s7, s9, gp
                  srai         a5, s5, 10
                  xor          s8, t2, tp
                  or           t6, s7, a6
                  sub          s0, s7, t1
                  srli         t1, t3, 4
                  and          s8, t0, a3
                  slt          t1, s9, s1
                  lui          a7, 555297
                  srai         t2, s3, 13
                  xor          a5, s11, t0
                  addi         a3, s3, -1482
                  addi         s7, t4, 1848
                  sub          s5, t4, t0
                  slti         s10, t4, 1168
                  srli         t2, s10, 3
                  add          a4, s2, a6
                  add          s0, s10, gp
                  srli         gp, s4, 28
                  slli         s7, tp, 8
                  addi         s8, s5, -381
                  sra          s10, a7, s1
                  andi         t5, sp, -1544
                  sub          t4, a1, a0
                  sltu         a4, s0, t5
                  add          s10, a7, sp
                  sra          t3, s10, a1
                  srl          zero, s10, t0
                  slti         t1, t0, 1051
                  srai         gp, t2, 22
                  sltiu        a5, a4, -1470
                  slli         s11, t4, 30
                  sll          s2, s3, s0
                  lui          s9, 377732
                  sltiu        s8, s10, -11
                  sltu         t3, s8, a6
                  sll          s0, a0, t6
                  sra          t5, sp, t4
                  addi         t4, s5, 782
                  srai         a7, t6, 14
                  or           gp, s5, a3
                  sltiu        s9, t2, 396
                  sltiu        a4, s9, -2014
                  xor          s4, s3, gp
                  ori          zero, a7, 934
                  srl          gp, zero, zero
                  or           t3, s0, gp
                  auipc        t4, 236869
                  or           s9, tp, a5
                  slt          s4, tp, a0
                  andi         a1, sp, 1648
                  andi         t2, zero, 788
                  sltu         t6, a4, s7
                  ori          a6, a0, 144
                  auipc        a2, 253449
                  slti         gp, a4, 1032
                  lui          a7, 927910
                  ori          s8, gp, 1380
                  slli         a7, t5, 25
                  slli         t6, zero, 31
                  addi         s4, a0, 276
                  xor          s10, s4, a3
                  slt          s7, a6, gp
                  or           a2, s3, s9
                  nop
                  addi         a4, s2, -1852
                  and          t4, zero, s10
                  slti         s8, s5, 842
                  srl          a3, t3, s6
                  slti         t2, a0, -1793
                  srl          a2, t2, s10
                  slli         gp, t0, 5
                  and          s2, a0, s4
                  addi         a7, a7, 642
                  sltu         t2, s0, s2
                  sub          s3, a6, ra
                  auipc        t5, 846535
                  slli         t6, s2, 9
                  addi         s3, t0, 558
                  slli         t2, gp, 13
                  auipc        t1, 229941
                  srli         t0, t3, 13
                  and          t3, s6, t6
                  srai         t0, s1, 25
                  slt          s9, t2, t6
                  or           s10, s8, a4
                  srl          t6, a5, ra
                  sltu         zero, s11, t5
                  or           t5, t6, s5
                  slli         s4, s11, 15
                  xori         s11, zero, 308
                  sub          s10, a6, s1
                  andi         tp, s5, 936
                  ori          a5, s1, -1662
                  slli         gp, t2, 8
                  slt          a0, s8, a1
                  and          t1, t6, a6
                  sltiu        s5, t4, 9
                  andi         t6, t5, 848
                  ori          a5, s10, -102
                  xori         t5, tp, -1727
                  srli         a2, ra, 21
                  xori         t2, ra, 1753
                  or           t6, sp, t5
                  slt          s0, s1, s6
                  srli         a3, s6, 30
                  nop
                  sltiu        gp, zero, -1450
                  slti         a6, s1, -2032
                  xori         s0, s4, 1187
                  add          sp, a3, t0
                  lui          tp, 62221
                  xori         s8, sp, -1125
                  xor          a5, t1, a1
                  addi         a6, s4, 1406
                  lui          s10, 16695
                  add          s10, s8, s6
                  xori         a7, t0, -709
                  srl          s8, s6, s1
                  ori          a7, s7, 212
                  sltu         s7, t0, a5
                  srl          t6, t6, s11
                  ori          t0, s0, -1311
                  add          a1, a0, s8
                  srl          a7, ra, a6
                  slt          a3, tp, tp
                  xor          s5, a3, t4
                  sltu         s11, t1, s1
                  sra          t6, a0, gp
                  srl          zero, a1, t2
                  sll          a4, zero, s5
                  and          a3, a1, s7
                  sra          a3, t5, t1
                  and          t2, s11, a0
                  sltiu        s10, gp, -1815
                  and          s2, s11, s11
                  slli         t2, s1, 5
                  xori         t1, a0, -389
                  xor          zero, s8, t3
                  lui          t5, 107180
                  add          a2, a1, t0
                  srai         s11, a2, 12
                  srli         s3, s0, 19
                  addi         a1, gp, -427
                  auipc        s3, 103771
                  slli         gp, s8, 9
                  xor          a3, s0, s5
                  sll          s2, s8, s10
                  srli         a6, t1, 27
                  slt          a0, a6, a5
                  slti         a1, t3, -1085
                  xori         s4, a6, -1041
                  sll          s7, a5, s6
                  sll          s5, s2, s8
                  srai         a5, a3, 14
                  lui          t0, 998079
                  lui          s2, 384899
                  slti         a5, zero, -855
                  lui          sp, 830391
                  xori         s10, a0, 1434
                  and          s3, gp, s2
                  nop
                  add          s2, s2, t4
                  nop
                  or           gp, a1, s6
                  srl          gp, a2, t4
                  addi         a2, sp, 1048
                  srl          s0, s9, s1
                  sltiu        a6, a5, -276
                  xori         a7, a5, 1007
                  and          s10, t6, s5
                  add          s9, s2, sp
                  ori          s9, ra, -1664
                  srli         a7, t6, 6
                  nop
                  sltu         a2, gp, s5
                  sltu         s0, t0, sp
                  and          s10, ra, a2
                  srai         t3, s8, 22
                  sltiu        s5, s4, -1947
                  slti         t0, s7, -1347
                  or           a4, ra, a2
                  add          a5, ra, a5
                  addi         t5, a1, -1347
                  slli         a3, a6, 10
                  slti         a4, s8, 1502
                  srli         a2, sp, 24
                  slli         s4, s7, 20
                  sll          s4, sp, zero
                  and          a4, s11, a6
                  sll          s0, t0, s0
                  sltiu        s11, t6, -4
                  sltu         t2, s8, a1
                  slti         a5, gp, -1252
                  add          a5, a5, s10
                  slt          t5, s3, a1
                  add          t6, t4, a3
                  slli         sp, zero, 7
                  lui          s3, 205080
                  addi         tp, a0, 1720
                  slti         a7, a0, 1651
                  ori          t3, a3, 2022
                  sub          s8, t2, s1
                  slti         s2, gp, -1711
                  addi         sp, s4, 340
                  lui          s9, 580348
                  and          s10, t6, gp
                  xor          s3, s9, a1
                  srai         t5, t4, 10
                  slt          s3, a3, s11
                  lui          s4, 979797
                  lui          s2, 589262
                  xori         s7, s5, 143
                  xor          s11, s7, s5
                  slt          s3, s5, t2
                  srli         t1, a4, 5
                  slt          a3, a6, s3
                  slti         t6, s6, -323
                  xori         sp, a1, 2013
                  andi         t5, s0, 159
                  srl          a1, zero, t5
                  or           a5, a4, t3
                  srai         s11, zero, 7
                  slt          s11, t0, a2
                  srai         zero, s9, 25
                  xor          a7, zero, t0
                  sltu         a2, t1, s0
                  lui          s2, 774546
                  slli         t2, t1, 4
                  xori         s10, s1, -495
                  nop
                  slli         s3, a0, 14
                  ori          s9, ra, -612
                  auipc        a1, 275501
                  addi         a2, tp, -1953
                  add          a6, a5, s2
                  andi         a2, s3, -50
                  and          s2, s10, s3
                  and          a4, gp, t5
                  sltu         a3, t4, s2
                  sra          s11, sp, gp
                  add          t0, s0, a4
                  srl          t1, s7, s11
                  xori         tp, a4, -371
                  slli         t5, a5, 20
                  sra          t5, ra, s8
                  add          t1, s9, ra
                  srai         a3, gp, 31
                  add          tp, t5, s6
                  sub          t0, t5, a1
                  xori         a2, a4, -210
                  xori         zero, s3, 269
                  slt          s5, t5, a6
                  xori         s3, s6, 456
                  auipc        t1, 741562
                  srl          s7, s8, a5
                  sltu         s7, s6, a1
                  slt          s11, s2, s3
                  sra          t6, t3, s7
                  sll          a0, s3, s10
                  slli         a7, sp, 9
                  srai         sp, t4, 6
                  srai         zero, t6, 3
                  sltiu        a0, s8, -882
                  nop
                  slti         t5, a0, 598
                  add          t2, a0, a2
                  sltu         gp, zero, a3
                  xor          t2, s1, t4
                  sll          a7, a0, s5
                  slli         gp, t6, 19
                  srl          s7, s4, zero
                  xor          t1, a7, tp
                  and          tp, a2, t6
                  slti         zero, t2, 615
                  or           t4, ra, a0
                  ori          a4, a1, 231
                  sltiu        t3, t1, -819
                  addi         a3, t2, -227
                  sltu         s2, a4, t4
                  andi         s9, s11, -1409
                  addi         a5, a2, -1495
                  sra          t5, gp, s9
                  sub          t4, t4, s2
                  srl          t6, t2, t6
                  ori          a5, tp, -226
                  sll          t1, a3, a6
                  slti         sp, s6, 1281
                  sll          t3, s5, a1
                  sltu         s3, a2, s8
                  sltiu        t1, tp, 1246
                  sltu         t3, s3, s5
                  slt          s7, s9, s7
                  sltu         s10, a7, a6
                  srl          zero, sp, gp
                  xor          t6, s4, a0
                  sll          s9, gp, t0
                  sltiu        t1, t0, 835
                  add          t6, a0, a1
                  nop
                  or           a6, sp, t3
                  sra          s2, t5, a7
                  nop
                  sll          t5, t3, zero
                  sra          t6, a3, sp
                  auipc        tp, 756479
                  ori          s9, t6, 863
                  slt          a3, a1, s1
                  xori         s10, s8, -707
                  lui          s9, 631577
                  xori         a1, a5, 811
                  auipc        s8, 380250
                  slli         s4, a1, 25
                  slt          a2, t4, sp
                  slti         a4, s1, 1470
                  slti         sp, t2, -1914
                  sra          t6, s11, s3
                  ori          s0, sp, -490
                  ori          s2, s9, 960
                  sra          s4, ra, t6
                  xor          t0, t2, gp
                  nop
                  slt          s11, s0, sp
                  sltiu        t0, s11, 766
                  add          s0, tp, a2
                  add          a5, s0, a6
                  xori         tp, t2, 492
                  add          t0, t3, s11
                  nop
                  srli         s8, sp, 21
                  ori          tp, sp, -1690
                  srli         t3, t2, 17
                  sltiu        t2, s3, -532
                  lui          s5, 592308
                  sltiu        tp, t0, 1518
                  add          gp, s0, zero
                  slli         t5, s7, 31
                  sub          a7, t2, s10
                  add          a7, a4, t6
                  sltu         sp, zero, t2
                  sltu         s5, t6, a2
                  srl          s10, s8, gp
                  slt          s10, t4, s6
                  srl          a5, s5, s6
                  andi         s0, t0, -2019
                  sub          t6, tp, t6
                  sltiu        sp, a7, -901
                  and          tp, zero, s4
                  xor          s8, s1, s10
                  nop
                  slt          t6, t5, s8
                  lui          a4, 353551
                  slti         s11, s0, -1161
                  srli         a1, s0, 8
                  sra          s10, s2, s4
                  or           t4, s2, t0
                  auipc        s7, 649378
                  andi         a7, a2, 1217
                  or           a1, s7, s0
                  andi         s5, a3, 1659
                  sltu         a1, a2, t1
                  slti         s5, t5, 1151
                  sll          s8, a5, s8
                  xor          t6, ra, tp
                  sltiu        a5, s11, 2032
                  andi         t6, t3, 45
                  and          t4, sp, ra
                  auipc        s0, 504861
                  sll          t0, t3, a2
                  nop
                  xori         s7, s5, 1976
                  add          s8, a7, gp
                  srl          a2, zero, s2
                  sltiu        s8, a1, 355
                  ori          a3, t0, -617
                  or           s9, t4, s5
                  and          s5, t5, a5
                  auipc        tp, 114976
                  sltiu        t2, s7, -1064
                  srli         a4, t3, 5
                  srli         t2, t6, 9
                  sra          t1, s9, s0
                  srai         s9, s4, 29
                  and          t0, s2, t5
                  lui          s10, 893790
                  slti         t6, t4, 366
                  sll          a4, s11, a3
                  srli         s3, s1, 21
                  and          zero, t6, ra
                  addi         a2, s7, 1529
                  ori          gp, a6, -1230
                  sltiu        t0, a0, 1684
                  sub          t2, s2, s0
                  srli         s8, tp, 19
                  sltiu        gp, s7, -876
                  srli         t1, s7, 16
                  or           s3, s5, s4
                  sltu         s3, a2, zero
                  add          a5, s10, s5
                  srli         t2, a0, 20
                  srai         s7, s8, 10
                  srai         t6, s1, 0
                  slt          s5, tp, s2
                  lui          a3, 60006
                  xori         t0, a4, 1853
                  addi         a3, s11, -1988
                  srli         a2, t6, 26
                  auipc        s8, 1038702
                  sub          t6, s10, a7
                  sub          a2, s5, s6
                  andi         s5, t3, -49
                  andi         t4, s4, 423
                  and          a6, s5, s4
                  slti         zero, a1, -1724
                  srl          a7, s6, s3
                  slti         t6, t0, 1403
                  sltiu        s4, s6, 944
                  andi         sp, a3, -658
                  srl          t1, s5, t0
                  sra          s10, t4, s7
                  sltu         a1, a4, s8
                  sub          tp, t3, s1
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           a0, 0x80000000
                  li           t0, 0x0
                  li           a7, 0x80000000
                  li           a1, 0x0
                  li           gp, 0x0
                  li           a2, 0x835956a3
                  li           t3, 0xffffffff
                  li           s2, 0xda357fe7
                  li           s5, 0x80000000
                  lui          t3, 805118
                  nop
                  auipc        a0, 368141
                  add          a1, a0, t0
                  add          t0, s8, t3
                  nop
                  auipc        gp, 639651
                  lui          a2, 25459
                  add          a1, t3, t0
                  add          t0, t0, gp
                  add          s5, a2, a0
                  add          a7, t3, a2
                  nop
                  lui          a0, 143935
                  lui          t0, 617738
                  sub          t3, t0, a7
                  auipc        t0, 537212
                  add          s8, t3, a2
                  lui          s8, 781072
                  auipc        a7, 921796
                  sub          s8, a7, s8
                  lui          gp, 55368
                  nop
                  sub          t3, a1, s2
                  nop
                  lui          t0, 958130
                  addi         a1, a2, 1457
                  lui          t3, 586173 #end riscv_int_numeric_corner_stream_13
                  srai         s8, t0, 27
                  srl          a5, s9, ra
                  andi         a3, t4, -582
                  auipc        t4, 996696
                  add          gp, s5, t4
                  slli         s0, s0, 0
                  slti         s8, s5, 450
                  sltu         s8, s10, s2
                  or           s5, t5, a4
                  add          gp, a7, a2
                  ori          sp, a0, -393
                  slli         a0, a6, 28
                  srli         t5, tp, 27
                  andi         a5, s4, 15
                  srli         s0, t0, 13
                  slt          a0, a0, s7
                  slti         s5, ra, -2016
                  sra          s11, s5, a4
                  add          s4, s6, s5
                  sra          zero, t4, gp
                  add          s0, t0, a0
                  sltiu        t5, a2, -1884
                  andi         a3, s11, -392
                  sltu         s3, t3, s5
                  sub          t2, s11, s8
                  lui          a1, 386070
                  slli         a0, t0, 0
                  srli         s0, s10, 28
                  andi         zero, s1, 582
                  auipc        s3, 495895
                  srai         t0, s2, 7
                  srl          t4, a7, s6
                  ori          s11, t0, 1891
                  slli         tp, t4, 25
                  srl          a7, s6, t4
                  sltiu        s7, a5, 1668
                  sll          t4, t6, sp
                  srl          zero, s11, sp
                  nop
                  ori          sp, s4, -453
                  sub          a2, s3, t3
                  sltu         a2, s6, a5
                  sra          a1, tp, s0
                  srl          sp, t2, a3
                  srli         a5, s5, 20
                  or           t3, s3, s9
                  addi         s3, t2, 1947
                  nop
                  sra          sp, t4, s10
                  xor          s5, a7, a1
                  auipc        t4, 631552
                  slt          s11, zero, zero
                  slt          s7, t0, s9
                  srai         zero, a5, 28
                  sra          t3, s5, t1
                  nop
                  sltu         gp, a4, s11
                  slt          sp, zero, gp
                  andi         s9, gp, -889
                  or           a0, tp, a6
                  slt          s0, a7, s7
                  lui          a0, 810157
                  add          t2, a2, zero
                  xor          s4, t6, s4
                  ori          a6, ra, 936
                  srli         t6, s7, 18
                  andi         t6, tp, -1024
                  or           a5, zero, a4
                  xori         t1, a5, -837
                  auipc        t3, 356754
                  sub          a5, s11, a4
                  srli         a5, ra, 30
                  sltu         sp, zero, a5
                  auipc        s3, 951908
                  srai         a0, a4, 25
                  and          s4, tp, s1
                  andi         sp, a3, 1550
                  auipc        t6, 974742
                  slti         a3, t0, 12
                  nop
                  lui          s7, 369545
                  or           a3, t1, a4
                  slt          s2, a5, s5
                  ori          a1, t4, 837
                  sltu         s4, s7, t1
                  and          s4, s7, t1
                  xor          s8, a3, s0
                  lui          s3, 306168
                  sltu         s11, t4, a7
                  or           t0, s2, sp
                  add          a1, t4, s1
                  srli         s10, s7, 10
                  sub          t3, s7, s0
                  srai         s2, s9, 20
                  sltu         a4, t2, t5
                  sll          s4, t4, gp
                  slt          s5, t1, s11
                  srl          a6, a5, a5
                  sll          s9, t3, t3
                  slti         s5, s2, 1602
                  xori         a2, t5, 221
                  sll          a5, s0, s7
                  xori         tp, a4, -1154
                  sltiu        sp, s8, 479
                  srai         gp, a7, 26
                  srai         a3, s0, 16
                  or           t4, t1, s8
                  xor          a2, a6, a0
                  andi         s10, s10, -263
                  addi         a4, t5, 1283
                  sra          a6, s11, sp
                  addi         s9, t5, -132
                  slli         a4, s9, 2
                  addi         gp, s7, -67
                  auipc        t3, 84281
                  srl          t5, s0, t2
                  srai         a6, t0, 7
                  srli         s7, s10, 29
                  sll          a3, s11, s10
                  add          zero, a1, s7
                  sub          a2, s0, a2
                  sub          tp, t1, t2
                  xori         t1, s10, 1719
                  or           a3, a0, s11
                  srli         t2, s11, 10
                  srl          s7, s1, t2
                  auipc        t1, 297669
                  srl          s11, s4, s8
                  slti         t4, a3, -599
                  add          sp, a7, s4
                  srai         s0, s10, 23
                  auipc        s3, 474051
                  slli         s10, t6, 13
                  add          sp, s8, ra
                  addi         a3, s8, 779
                  srai         gp, a0, 28
                  auipc        gp, 957461
                  slt          t3, s8, s10
                  nop
                  sra          sp, s6, a6
                  addi         gp, s9, -769
                  xor          zero, a0, s5
                  ori          s11, a5, -1310
                  sll          a4, s5, a0
                  sra          s3, s5, s4
                  xor          tp, t2, a0
                  sltiu        t4, a3, -135
                  andi         s7, a2, -1574
                  xori         t1, s0, 1144
                  srli         zero, s6, 22
                  auipc        s8, 1011805
                  or           t4, t6, sp
                  and          s9, t5, a1
                  slli         a0, s1, 14
                  slti         s11, tp, -1027
                  slt          a6, t6, s3
                  xor          a0, a2, ra
                  lui          zero, 960337
                  addi         a7, a1, 1539
                  ori          a4, s8, 26
                  addi         s9, t5, 1176
                  ori          sp, s10, 1368
                  lui          gp, 271641
                  lui          t4, 885704
                  add          zero, s10, a6
                  srl          a3, s6, s2
                  sltu         zero, s8, a0
                  andi         a2, a2, 605
                  srli         s0, a3, 6
                  srl          a7, t5, a3
                  slt          t3, s2, ra
                  sltu         s10, t6, a6
                  ori          a7, s9, 2022
                  srli         zero, s5, 24
                  lui          s11, 287362
                  srli         a5, s3, 19
                  auipc        a6, 1018692
                  auipc        t0, 50984
                  ori          gp, zero, 228
                  slt          a7, s9, t1
                  srai         a2, s7, 12
                  sltiu        s5, a7, -450
                  xori         t6, s8, -1839
                  ori          t0, s1, 1943
                  xor          s0, s0, a7
                  and          s8, gp, t4
                  nop
                  srli         s11, zero, 19
                  sltu         t1, t1, s8
                  lui          t1, 227993
                  add          zero, a3, s4
                  srai         t5, a5, 21
                  sltiu        zero, s6, 1003
                  sltu         s8, gp, a3
                  xori         a2, s8, -2007
                  srl          a6, tp, ra
                  xori         a2, t6, 1474
                  sll          t2, a2, ra
                  sll          s11, s3, s1
                  add          t6, t5, a0
                  xor          gp, a0, a2
                  or           a1, t3, t0
                  sll          s0, t4, s11
                  sll          tp, s8, zero
                  srl          tp, s11, s11
                  or           a2, ra, s1
                  srl          sp, t1, t2
                  nop
                  ori          zero, t4, -1038
                  srl          a3, t4, s9
                  addi         s9, s4, 1129
                  sltu         s5, a4, sp
                  lui          s0, 731823
                  sltiu        s8, a5, 1728
                  sub          s9, a2, s7
                  nop
                  srli         t2, a1, 4
                  or           zero, t6, a6
                  xor          tp, s8, s2
                  ori          a7, s7, -195
                  lui          a2, 318753
                  andi         t1, s4, 1529
                  nop
                  sltiu        zero, s9, -1089
                  sltu         t0, t0, a4
                  addi         t6, t6, -1935
                  lui          a1, 812038
                  srai         a4, s4, 17
                  xor          a1, s2, s11
                  srl          s2, a4, gp
                  nop
                  nop
                  add          s10, a2, s10
                  sltu         s11, s11, t4
                  nop
                  xori         zero, a2, 1254
                  sra          a7, t4, a0
                  srl          s4, a1, s3
                  nop
                  lui          s2, 476828
                  add          gp, s8, t1
                  auipc        t0, 509885
                  sltiu        a1, a4, 1522
                  auipc        t0, 456518
                  srl          s4, zero, s1
                  sub          s11, a7, t1
                  srl          t3, s10, t1
                  slt          a0, s5, zero
                  auipc        t0, 659630
                  srli         s0, s3, 26
                  nop
                  slti         t5, t1, -1141
                  or           a7, a5, s6
                  sltiu        a0, a6, -846
                  add          a4, ra, s10
                  srl          t4, t3, a7
                  slli         a3, sp, 4
                  sltu         t6, s11, tp
                  xor          t1, s1, a4
                  and          s3, a1, zero
                  nop
                  sltiu        s9, a2, 1412
                  add          s2, a7, ra
                  sll          a2, t6, a4
                  srai         s3, s6, 22
                  xor          gp, a2, s11
                  auipc        s5, 491833
                  auipc        a7, 559068
                  auipc        gp, 264685
                  slli         s8, s8, 14
                  slti         a4, s2, -1515
                  srai         t0, sp, 19
                  sltiu        sp, s10, 172
                  lui          s0, 116414
                  sll          s5, sp, t2
                  add          s0, s0, s4
                  or           zero, s7, ra
                  sltu         t4, s3, s0
                  slt          s5, tp, a7
                  addi         a7, t2, -1106
                  slli         s2, gp, 10
                  lui          s2, 480146
                  slt          t4, a4, s9
                  sub          a7, a2, a2
                  add          t4, a5, s3
                  andi         s11, s0, -1204
                  ori          a4, t4, 35
                  srai         s3, s7, 25
                  sra          t6, a0, s5
                  srl          t4, a1, a2
                  or           s4, s8, s2
                  and          t4, t0, s1
                  sub          s5, s9, s10
                  or           s11, a3, s9
                  add          s3, s3, s1
                  ori          s10, s4, 1911
                  slt          s5, s5, s10
                  srai         a7, a4, 4
                  sltu         t6, a6, a6
                  nop
                  slti         zero, t1, -1797
                  addi         a6, s4, 1613
                  slti         s11, s10, 422
                  slti         a6, ra, 1416
                  slt          t6, t4, s2
                  slt          s0, s7, a5
                  xori         t1, s0, -1762
                  addi         s5, t0, 1529
                  add          t4, s5, s10
                  sub          s5, s7, t2
                  sub          s3, a4, a1
                  and          a6, s4, s0
                  sub          t2, t5, a3
                  srli         t5, s0, 28
                  auipc        t2, 323295
                  sub          tp, s9, a6
                  sra          sp, a5, s4
                  srai         s10, s10, 21
                  ori          a4, tp, -146
                  srli         a0, a4, 17
                  xori         s0, s5, 21
                  xori         s8, t0, -305
                  auipc        t2, 508312
                  nop
                  sra          s9, a3, t5
                  auipc        a5, 743801
                  sltu         s10, t6, a3
                  slt          t1, t3, s2
                  sub          zero, s10, t5
                  srli         t2, s3, 22
                  add          s4, sp, a4
                  addi         s8, a1, 47
                  lui          s0, 1036160
                  andi         s8, s9, -1146
                  and          s5, t6, s0
                  srai         s11, a6, 24
                  lui          s11, 105892
                  srli         s10, gp, 7
                  andi         t6, t4, -1278
                  xor          s11, s8, a2
                  sub          s9, zero, t2
                  xor          tp, sp, zero
                  addi         t1, a0, 1495
                  ori          tp, s4, 1963
                  slli         s4, t1, 30
                  srli         a0, s5, 19
                  sltiu        s11, a7, 1666
                  sra          t2, a1, s0
                  andi         s5, a4, 277
                  ori          s9, a4, 285
                  srai         tp, s6, 9
                  sra          zero, s2, s6
                  auipc        a5, 695690
                  add          s0, s6, t0
                  xor          t3, a0, s10
                  la x1, test_done
                  jalr x0, x1, 0
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
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x9, x22, zero
                  csrr x8, 0x300 # MSTATUS
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 31
                  bne x8, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x8, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x8, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x8, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x8, x14, ecall_handler
                  li x14, 0x1
                  beq x8, x14, instr_fault_handler
                  li x14, 0x5
                  beq x8, x14, load_fault_handler
                  li x14, 0x7
                  beq x8, x14, store_fault_handler
                  li x14, 0xc
                  beq x8, x14, pt_fault_handler
                  li x14, 0xd
                  beq x8, x14, pt_fault_handler
                  li x14, 0xf
                  beq x8, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x22, x9, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

load_fault_handler:
                  add x22, x9, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

store_fault_handler:
                  add x22, x9, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x22, x9, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x22, x9, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x22, x9, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
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
