.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 0
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x1800
                  csrw 0x300, x5 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x2
                  li x2, 0xfc789633
                  li x3, 0x5
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x7
                  li x8, 0x9
                  li x9, 0x2c7fa817
                  li x11, 0xf425562e
                  li x12, 0xfad0f2f3
                  li x13, 0xbef0706e
                  li x14, 0xe5cc1eef
                  li x15, 0x80000000
                  li x16, 0x6
                  li x17, 0x0
                  li x18, 0x6bd40ce7
                  li x19, 0x2e8df776
                  li x20, 0x18343e5b
                  li x21, 0x0
                  li x22, 0x80000000
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0xfac0f378
                  li x30, 0x80000000
                  li x31, 0xf6c4b15c
                  la x23, user_stack_end
main:             li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s6, 0xffffffff
                  li           a2, 0x80000000
                  li           s8, 0x80000000
                  li           s11, 0x0
                  li           s0, 0x5e21c4d1
                  li           t6, 0xffffffff
                  li           a6, 0x80000000
                  li           a4, 0x75806bdb
                  li           t4, 0x5decf5bc
                  sub          s6, a4, s6
                  add          s8, t6, t4
                  sub          a2, t6, s6
                  sub          a4, a2, s11
                  lui          s4, 279303
                  lui          a2, 334807
                  auipc        s8, 15953
                  sub          a4, a6, a2
                  nop
                  sub          s0, s8, a2
                  auipc        t4, 987103
                  sub          t4, s8, a6
                  sub          a4, t4, a4
                  nop
                  add          a2, t6, s11
                  sub          a4, s4, s6
                  add          t4, a2, a6
                  nop #end riscv_int_numeric_corner_stream_17
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s11, 0xffffffff
                  li           t4, 0x20323f7e
                  li           s0, 0x80000000
                  li           s5, 0x487995a1
                  li           t6, 0x80000000
                  li           gp, 0x80000000
                  li           s2, 0x0
                  li           a4, 0xffffffff
                  li           a1, 0x80000000
                  lui          a1, 392000
                  sub          a1, s5, ra
                  sub          s2, s11, t4
                  lui          t6, 68197
                  sub          s5, s11, a1
                  nop
                  add          gp, s0, a1
                  nop
                  lui          s2, 36095
                  lui          s5, 166026
                  nop
                  add          gp, gp, s11
                  sub          s2, a1, ra
                  lui          a4, 851521
                  lui          gp, 744102 #end riscv_int_numeric_corner_stream_7
                  li           s10, 0x64b0c8cf #start riscv_int_numeric_corner_stream_8
                  li           t0, 0x0
                  li           s9, 0xffffffff
                  li           a7, 0xffffffff
                  li           s1, 0xffffffff
                  li           s8, 0x80000000
                  li           a2, 0xffffffff
                  li           a6, 0x0
                  li           s3, 0x0
                  li           t1, 0x80000000
                  sub          t0, a2, s3
                  auipc        s3, 109057
                  add          s1, t0, s10
                  sub          a7, s1, t0
                  add          s3, a2, s8
                  sub          s8, a6, s1
                  sub          s9, a6, t1
                  auipc        t1, 98905
                  auipc        a2, 585597
                  sub          a7, s1, s9
                  sub          s1, s9, a6
                  nop
                  nop
                  addi         s1, s1, -1773
                  addi         a6, a2, 1782
                  nop
                  sub          a2, t1, s8
                  auipc        a6, 540645
                  lui          a2, 780628
                  lui          a2, 64011
                  nop
                  sub          s10, s1, s10
                  addi         a7, a2, 1610
                  nop
                  add          a2, s9, t0
                  auipc        a2, 890027
                  add          a6, a7, s9
                  sub          s10, a6, a6
                  auipc        s3, 174538 #end riscv_int_numeric_corner_stream_8
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           s10, 0x9009b3dc
                  li           a2, 0x80000000
                  li           ra, 0x80000000
                  li           s5, 0xffffffff
                  li           s11, 0xb7d9a18d
                  li           gp, 0x0
                  li           s9, 0x80000000
                  li           a6, 0x0
                  li           s8, 0xffffffff
                  nop
                  addi         s11, gp, 207
                  auipc        s5, 472156
                  addi         s10, a6, -2043
                  nop
                  add          a2, a6, a3
                  sub          gp, s9, ra
                  nop
                  nop
                  add          gp, a3, a3
                  auipc        a6, 531158
                  addi         a2, s5, 1951
                  sub          s11, s5, s5
                  addi         ra, gp, 716
                  lui          a2, 446762
                  auipc        s11, 707843
                  add          a2, s10, s9 #end riscv_int_numeric_corner_stream_13
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           s3, 0x0
                  li           t6, 0xffffffff
                  li           a3, 0xffffffff
                  li           t1, 0x80000000
                  li           gp, 0xffffffff
                  li           sp, 0x8c8a20dc
                  li           a1, 0x80000000
                  li           s0, 0xffffffff
                  li           t3, 0xffffffff
                  nop
                  auipc        s3, 81052
                  nop
                  addi         s0, t6, 1744
                  auipc        s3, 919873
                  auipc        gp, 292090
                  lui          a1, 522538
                  add          a2, sp, s3
                  sub          a1, t1, t1
                  lui          t6, 164751
                  sub          t6, sp, a2
                  lui          t3, 680142
                  lui          sp, 156630
                  sub          s0, sp, t6
                  lui          t3, 224574
                  lui          sp, 834657
                  lui          a3, 673998
                  add          t3, t1, a1
                  add          t3, a1, t3
                  nop
                  auipc        s0, 374703
                  lui          s3, 851585 #end riscv_int_numeric_corner_stream_11
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           t1, 0x0
                  li           ra, 0x0
                  li           a4, 0xffffffff
                  li           s9, 0xffffffff
                  li           a2, 0x80000000
                  li           s6, 0xffffffff
                  li           sp, 0x0
                  li           a5, 0xffffffff
                  li           t4, 0x80000000
                  add          sp, t4, a5
                  sub          s6, a3, a5
                  auipc        t1, 290199
                  add          a4, s6, sp
                  nop
                  nop
                  addi         s9, ra, 412
                  sub          t4, a3, t4
                  auipc        sp, 74884
                  addi         s9, a5, -1155
                  auipc        sp, 318950
                  sub          t4, s9, s9
                  nop
                  nop
                  lui          a4, 821164
                  auipc        t1, 593218
                  nop
                  nop
                  lui          a4, 800772
                  lui          sp, 90539
                  sub          sp, t1, a4
                  add          s9, s6, s6
                  add          a5, a5, s9
                  sub          s9, s6, s9
                  add          a5, s9, t4
                  auipc        t1, 339628
                  sub          a4, a5, t4
                  nop
                  auipc        a3, 432742
                  auipc        ra, 726524 #end riscv_int_numeric_corner_stream_0
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           s6, 0x18b34a7e
                  li           t6, 0x0
                  li           tp, 0x80000000
                  li           a7, 0x80000000
                  li           s11, 0xffffffff
                  li           a4, 0xffffffff
                  li           t0, 0xffffffff
                  li           s10, 0xffffffff
                  li           sp, 0x319b5132
                  auipc        s11, 714654
                  addi         a7, a7, -969
                  nop
                  lui          a7, 923126
                  nop
                  auipc        sp, 77187
                  add          s10, a3, a3
                  sub          a7, a4, s10
                  lui          t6, 882819
                  add          s11, t0, s11
                  add          a7, a4, s11
                  addi         t6, t6, 1339
                  add          s11, tp, s6
                  nop
                  sub          sp, s11, tp
                  auipc        a7, 1037217
                  lui          s6, 550996
                  auipc        s6, 216812
                  sub          sp, tp, s10
                  lui          t0, 494931
                  add          a4, s11, t0 #end riscv_int_numeric_corner_stream_2
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s2, 0xdf3406e8
                  li           t3, 0xffffffff
                  li           s8, 0x0
                  li           t6, 0x80000000
                  li           a7, 0x80000000
                  li           ra, 0xffffffff
                  li           s4, 0x70dc5800
                  li           t4, 0xffffffff
                  li           s0, 0xffffffff
                  auipc        a3, 382046
                  sub          t3, s2, t3
                  lui          t3, 272165
                  sub          t3, s2, s8
                  sub          s4, s4, s8
                  auipc        t3, 784810
                  nop
                  sub          s4, s0, s0
                  auipc        t4, 213396
                  auipc        t4, 701717
                  sub          s2, a7, s8
                  auipc        a3, 572494
                  lui          t6, 176654
                  addi         s8, s8, -152
                  sub          ra, s2, s4
                  addi         t4, s0, -17
                  sub          t4, t4, ra
                  addi         t4, s8, -765 #end riscv_int_numeric_corner_stream_1
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           s1, 0xffffffff
                  li           t5, 0x0
                  li           s8, 0x80000000
                  li           s5, 0x0
                  li           a4, 0xffffffff
                  li           s2, 0xffffffff
                  li           a1, 0xffffffff
                  li           a3, 0x157e89f8
                  li           s0, 0xffffffff
                  lui          s5, 900179
                  addi         s0, s0, 14
                  auipc        a1, 350531
                  addi         s0, s0, -1858
                  sub          s8, a4, a4
                  nop
                  add          a6, s0, s2
                  add          a1, s8, s8
                  nop
                  nop
                  auipc        s5, 851014
                  add          s1, s1, s2
                  add          s1, a4, a3
                  nop
                  lui          s0, 486052
                  addi         a1, s0, 804
                  addi         t5, s0, -1428
                  nop
                  auipc        t5, 935217
                  sub          s8, a1, a4
                  add          s2, s1, a1
                  sub          a6, t5, t5
                  nop
                  lui          t5, 560313
                  lui          s8, 791729
                  add          a6, s5, a4
                  auipc        a6, 566084
                  addi         s2, s1, -982 #end riscv_int_numeric_corner_stream_10
                  li           t0, 0x56b03947 #start riscv_int_numeric_corner_stream_3
                  li           a1, 0x80000000
                  li           t4, 0x3470e773
                  li           s9, 0xffffffff
                  li           t1, 0x8c5dfce8
                  li           s11, 0x0
                  li           s1, 0xffffffff
                  li           s6, 0x719eae21
                  li           s10, 0x80000000
                  li           s8, 0x8b860950
                  add          t4, t4, t4
                  addi         t4, a1, -1576
                  lui          s6, 619160
                  addi         s9, s11, -1463
                  addi         t1, s11, 448
                  addi         s9, t4, -1179
                  auipc        s6, 261875
                  nop
                  lui          t4, 189585
                  lui          s9, 541312
                  addi         s10, s6, 1654
                  addi         t4, t0, -679
                  addi         s9, t0, -1615
                  sub          s8, s9, s10
                  add          s6, s10, t0
                  sub          t4, s1, s8
                  nop
                  lui          a1, 889336
                  add          t1, t1, t0
                  nop
                  nop
                  add          s11, s10, s6
                  nop
                  nop #end riscv_int_numeric_corner_stream_3
                  srli         t3, a6, 10
                  and          s1, tp, s11
                  slti         s6, t6, -1542
                  and          sp, zero, s7
                  sub          t6, a0, a3
                  sll          s5, s9, t2
                  sltiu        a6, gp, 270
                  slti         a3, zero, 1912
                  or           s5, t2, s1
                  xori         s10, s10, 561
                  sra          a7, s10, s7
                  ori          t1, a7, -1289
                  lui          a2, 877751
                  auipc        a3, 746726
                  sll          t4, s8, a6
                  and          s2, s4, s5
                  and          s6, t1, zero
                  sub          s3, t1, s0
                  xor          s2, tp, t5
                  add          t1, t2, a1
                  lui          tp, 344695
                  or           a3, t6, t5
                  slti         sp, s1, 724
                  sra          t5, s11, a1
                  srai         a4, t4, 22
                  ori          t1, t0, -1473
                  sub          sp, t0, s4
                  auipc        t3, 919892
                  xori         a6, t3, -1765
                  srai         a4, tp, 2
                  srai         a5, s2, 23
                  addi         t6, s3, -1644
                  nop
                  andi         s11, t6, 1982
                  auipc        ra, 697393
                  add          a3, a5, a3
                  sltu         a3, a0, a7
                  nop
                  sll          s10, t6, s9
                  xor          t0, t0, s6
                  xori         s3, zero, 538
                  auipc        a3, 166610
                  xor          t1, s10, s11
                  andi         a3, t5, -80
                  auipc        sp, 897723
                  add          s9, s1, sp
                  slti         a6, s1, 1612
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           t6, 0x0
                  li           t1, 0xe04e3afa
                  li           sp, 0x851dba0b
                  li           a6, 0x1fbccd5d
                  li           t0, 0xffffffff
                  li           s11, 0x6e896183
                  li           tp, 0xffffffff
                  li           gp, 0xffffffff
                  li           s1, 0xffffffff
                  addi         sp, s11, 863
                  auipc        s1, 910877
                  auipc        t0, 99995
                  auipc        t6, 101506
                  nop
                  lui          sp, 466191
                  sub          t1, s11, t0
                  add          sp, tp, tp
                  auipc        t6, 674160
                  addi         t6, t1, -759
                  nop
                  addi         t6, sp, 415
                  addi         tp, t1, -910
                  nop
                  add          t6, t6, t6
                  addi         sp, sp, 1836
                  lui          t6, 183329
                  lui          a6, 796202
                  addi         s1, s1, 937
                  nop
                  sub          tp, t5, tp
                  addi         t0, t5, -1106
                  lui          t6, 991092
                  add          s1, a6, s1 #end riscv_int_numeric_corner_stream_9
                  xor          s4, gp, s2
                  sltiu        a2, a3, -348
                  and          a3, s8, a6
                  sub          t0, s6, sp
                  nop
                  sub          a6, s10, s8
                  srl          t5, s5, a6
                  add          s5, a6, s10
                  andi         a2, gp, 29
                  nop
                  slti         s10, a5, 1751
                  slli         t6, s8, 28
                  andi         s8, a1, -978
                  srai         s10, s7, 1
                  sub          s9, s11, s7
                  slt          a5, ra, a6
                  sra          a7, s1, s10
                  slt          s11, t6, t4
                  srli         a4, s2, 1
                  sltu         a3, t4, t4
                  slt          s8, s10, sp
                  sltu         s5, t4, t1
                  or           t3, t1, s11
                  srai         s3, a0, 18
                  slt          gp, a2, t4
                  ori          t5, t4, 997
                  and          tp, t2, s7
                  and          s3, t0, t2
                  sltu         s4, s4, t5
                  slli         a7, a0, 7
                  or           t6, t1, s2
                  srl          tp, a6, s3
                  sub          s2, t4, a3
                  and          s11, s11, a3
                  sub          t4, s1, s7
                  srai         s2, s11, 8
                  sub          a4, s7, tp
                  xor          s2, s9, a6
                  add          zero, a1, a2
                  and          s0, s9, t5
                  add          sp, s4, a4
                  slli         t5, a3, 14
                  slt          sp, s7, sp
                  srli         s2, a2, 16
                  lui          s5, 94411
                  srai         a6, tp, 14
                  sub          t4, a4, s2
                  addi         a3, s6, 494
                  nop
                  and          ra, zero, s6
                  or           s3, s7, t1
                  nop
                  lui          s1, 366383
                  sltu         a1, a4, ra
                  andi         s4, s2, -633
                  srai         s4, s11, 18
                  nop
                  or           s5, s11, s6
                  sra          a1, s9, t4
                  ori          s6, s2, 49
                  or           gp, s1, gp
                  srl          t3, t4, t5
                  sltu         a2, a6, s5
                  lui          s9, 830025
                  sltiu        s6, tp, 422
                  lui          s1, 897773
                  sltu         s3, t5, gp
                  xor          s1, s2, t5
                  andi         s0, s7, 469
                  nop
                  sra          t3, s5, a5
                  lui          s2, 289029
                  srli         sp, s7, 13
                  addi         a1, s0, 1142
                  xori         a7, s4, 50
                  ori          t1, s4, 43
                  addi         a4, a7, -1989
                  andi         s11, gp, -199
                  nop
                  xor          gp, a6, t3
                  addi         s9, t4, -1189
                  srl          a1, gp, zero
                  srl          a6, s7, t4
                  sub          s3, s4, tp
                  xor          s4, s5, t4
                  slt          s11, s4, s1
                  nop
                  add          a6, s2, a5
                  auipc        a6, 572164
                  andi         tp, sp, 1535
                  xori         s5, a2, 1085
                  and          a3, s11, a1
                  srl          ra, t2, t3
                  auipc        ra, 585526
                  andi         gp, a7, -1867
                  sra          a6, s7, a2
                  sltu         gp, t0, t5
                  xori         tp, s10, 1804
                  srai         s6, s6, 26
                  sra          tp, a2, t4
                  slli         t6, s8, 1
                  addi         t4, s5, 290
                  ori          t3, s3, 2038
                  sub          s0, s8, a1
                  slti         zero, t3, -1761
                  sltiu        s9, a0, -805
                  sltu         s11, ra, a2
                  xori         s1, a0, 688
                  andi         s0, s11, 768
                  slt          ra, s1, s0
                  lui          t4, 110437
                  srli         a3, t0, 4
                  sltiu        s11, s5, -871
                  srl          a6, t5, s11
                  srli         s2, a0, 31
                  sltu         t0, t1, s4
                  ori          a6, s8, -1039
                  nop
                  sltu         t3, a3, s8
                  auipc        s6, 849382
                  auipc        s10, 953985
                  addi         a4, a7, 1403
                  xor          s8, t6, s8
                  sll          a6, a5, tp
                  nop
                  lui          zero, 56833
                  or           t5, a4, a5
                  srli         sp, s10, 26
                  srai         s9, t6, 3
                  sltu         s6, a1, a2
                  srl          a2, s1, t4
                  sltiu        t0, s0, -1350
                  sltu         s3, t2, s2
                  ori          gp, gp, 1641
                  add          s3, a7, s7
                  andi         s5, s7, 212
                  sra          ra, t0, a4
                  sltiu        s4, a0, 985
                  srli         a4, s0, 28
                  nop
                  sltiu        s2, a4, -1935
                  sub          t5, s10, t3
                  or           a5, s9, tp
                  or           t0, s1, s4
                  sra          sp, t0, s9
                  sltiu        t5, t6, -462
                  sltiu        t6, s4, -1343
                  auipc        s2, 886993
                  sltu         s11, s7, t4
                  auipc        s1, 906971
                  or           a5, s2, s1
                  and          t6, s9, s7
                  slt          zero, t5, s10
                  lui          a7, 496043
                  addi         zero, a0, 1806
                  slt          ra, s10, s6
                  slti         t0, gp, 1853
                  andi         s11, s10, 804
                  sll          s9, zero, a5
                  lui          s1, 181884
                  ori          s3, t4, 636
                  or           s2, s1, s6
                  slti         t0, s8, 750
                  ori          a6, t5, 11
                  srl          s9, tp, s1
                  sll          s1, a7, t6
                  slli         a7, s4, 28
                  srli         s2, gp, 31
                  srl          t3, t2, t5
                  slti         ra, s2, -454
                  nop
                  slti         gp, a3, 1197
                  slti         tp, t1, -1828
                  sltu         a1, ra, s5
                  sub          a3, t3, zero
                  sltu         t3, t4, sp
                  sll          ra, sp, t3
                  nop
                  or           ra, s7, a5
                  sll          a1, s3, t5
                  addi         t3, s6, -1308
                  sltu         s10, t2, s10
                  or           t0, sp, a1
                  addi         sp, t5, -1371
                  addi         s6, a3, 1214
                  sll          s1, t6, s2
                  sltiu        t0, tp, 878
                  slti         sp, t2, -707
                  ori          ra, s8, 1745
                  slti         t1, t3, -1949
                  sltu         a3, a4, t4
                  or           a5, s10, a6
                  sra          ra, s1, s4
                  slli         t6, t6, 21
                  sll          zero, ra, s1
                  slli         t3, a5, 21
                  add          s4, t3, a3
                  auipc        t0, 163818
                  sll          a5, s6, t3
                  auipc        s4, 455837
                  sra          s3, s9, a0
                  slli         t5, t5, 22
                  srli         a6, s10, 26
                  sltu         a3, s2, a4
                  lui          s5, 1011227
                  xori         s8, t5, 431
                  slli         a2, a2, 26
                  add          s9, s10, tp
                  lui          a2, 867986
                  auipc        t3, 307382
                  sra          sp, a7, s7
                  addi         t6, a6, -537
                  slti         a4, t6, -1181
                  sub          a3, gp, a4
                  sra          t4, s6, t1
                  slti         tp, t3, -1106
                  nop
                  srli         s1, s4, 22
                  xori         s6, t1, -1321
                  xor          s5, a1, zero
                  sub          t4, s8, t5
                  xor          a2, a4, t1
                  sltiu        a7, t0, 1710
                  ori          t6, sp, -365
                  xori         a3, t2, 17
                  srai         sp, a1, 8
                  sltu         a7, s11, s10
                  addi         s6, a1, -1802
                  sra          a5, t6, t0
                  andi         a3, a2, 795
                  sltiu        t1, s4, -12
                  xori         t6, t5, -1346
                  slt          s10, ra, a2
                  srai         a4, s4, 27
                  nop
                  sltu         a6, t3, t3
                  addi         sp, a0, 1655
                  sltiu        a6, s4, -1548
                  srli         s3, s7, 29
                  srli         t1, sp, 0
                  srl          s6, t1, a5
                  lui          gp, 84441
                  nop
                  add          zero, a7, s11
                  or           a2, zero, t3
                  srl          a6, s11, ra
                  srl          s0, a7, s10
                  ori          a6, s2, 1091
                  auipc        s1, 1013501
                  sra          t5, t3, s9
                  ori          t1, s1, -351
                  sltiu        s5, t2, 501
                  lui          gp, 492966
                  sll          a1, s6, s8
                  addi         s0, s2, -1019
                  xor          t1, s7, t4
                  srai         a1, s1, 29
                  sll          s2, t6, s4
                  sub          a2, a0, t0
                  lui          t6, 888825
                  ori          a1, t6, -81
                  sltiu        s11, t5, 1064
                  ori          tp, s0, -1403
                  nop
                  add          ra, s4, s7
                  sub          s5, s10, t6
                  andi         a5, s4, 670
                  auipc        a1, 532249
                  addi         s8, s6, 547
                  nop
                  auipc        t1, 591824
                  xori         a3, t0, -181
                  addi         tp, s7, 255
                  slli         a1, a5, 20
                  addi         tp, s3, -68
                  xori         zero, s9, -23
                  nop
                  nop
                  nop
                  slti         t6, t5, -1891
                  xor          t5, s3, a6
                  srl          s10, a1, sp
                  xor          s4, gp, ra
                  addi         t0, ra, 1352
                  or           t1, gp, gp
                  add          s11, s3, s3
                  xori         a7, ra, -328
                  addi         a5, a7, 991
                  sltu         s1, a4, s9
                  auipc        t0, 803195
                  slli         s8, ra, 26
                  sltu         a4, s0, zero
                  auipc        t1, 17413
                  add          s1, t4, a6
                  ori          s11, a6, -255
                  sll          a4, a7, a4
                  xori         s10, a5, -753
                  slt          s11, t0, s2
                  add          ra, s5, s11
                  srai         s9, s5, 30
                  lui          a1, 547190
                  auipc        ra, 139924
                  sll          s11, s2, a3
                  or           s11, s5, t4
                  auipc        zero, 152936
                  nop
                  lui          sp, 321545
                  slti         s5, s8, 1283
                  ori          a3, gp, 1773
                  add          a2, a3, t6
                  slti         ra, t0, 1977
                  xor          s3, s10, t1
                  sra          a5, zero, s2
                  sub          tp, t6, s0
                  srli         a1, s10, 10
                  sltu         s2, a4, s4
                  xor          ra, t5, s10
                  auipc        a2, 243378
                  srai         a1, t2, 18
                  sra          s8, a4, s10
                  lui          s5, 114273
                  auipc        a2, 944007
                  slli         s4, s6, 19
                  auipc        s3, 872770
                  or           a1, gp, s3
                  andi         a2, a3, 1265
                  ori          a1, zero, -952
                  add          s6, a0, t0
                  lui          a4, 622763
                  sll          s1, t3, ra
                  xor          zero, a7, t6
                  andi         s9, t0, -425
                  sub          t1, s3, t5
                  or           t5, s2, s3
                  sub          t4, zero, t4
                  srli         a5, tp, 10
                  addi         s2, s1, 1630
                  xor          s2, t0, s10
                  lui          sp, 815949
                  auipc        s4, 166870
                  andi         s5, a1, -1443
                  lui          gp, 5310
                  slt          a5, t3, s9
                  and          gp, s5, zero
                  srl          s3, zero, a3
                  add          a4, s1, t6
                  srl          a2, sp, a4
                  slti         t3, tp, -1216
                  srli         a6, a1, 21
                  nop
                  sll          t4, a2, s3
                  srai         gp, a7, 9
                  add          s10, s0, s11
                  srai         a4, t0, 18
                  slli         s11, s3, 6
                  auipc        a7, 905633
                  sll          t6, a7, tp
                  auipc        t1, 58545
                  sub          s11, t2, a1
                  xori         a7, s1, 878
                  xor          s8, s8, s2
                  srli         t3, s8, 6
                  sltiu        a6, s2, -9
                  and          tp, ra, t2
                  srli         gp, s8, 13
                  xori         s2, s5, -435
                  add          s2, s7, a4
                  srli         s5, sp, 22
                  sub          t4, s8, s9
                  sltiu        s9, s5, -968
                  slti         t5, a5, 57
                  srai         s4, s2, 10
                  slti         s11, a7, 558
                  sub          a7, a4, a3
                  sub          tp, a0, a2
                  srl          s0, a6, a3
                  sll          a6, a7, t0
                  ori          t6, t0, -1385
                  auipc        t6, 200998
                  sra          s0, a2, s6
                  or           s9, t3, a3
                  sub          s3, zero, a4
                  andi         a2, s7, 559
                  slti         sp, t0, -1870
                  sll          gp, s8, s5
                  andi         s4, a7, 438
                  or           s5, t4, gp
                  nop
                  ori          t1, s10, -1254
                  srl          t3, s9, a5
                  and          s4, a7, a6
                  auipc        s0, 577966
                  sltiu        gp, s10, -1522
                  sltiu        s0, a5, 200
                  sra          s2, t5, a2
                  auipc        s0, 459035
                  sltiu        s1, a1, -1638
                  sltu         s5, s0, t2
                  auipc        s2, 585666
                  xori         s3, s11, 212
                  slli         tp, a1, 8
                  auipc        s10, 830204
                  or           t6, a6, s3
                  xori         s2, s3, -468
                  srli         t1, a3, 13
                  auipc        a1, 469966
                  sra          zero, s7, s10
                  addi         s10, a0, 298
                  sltiu        a5, tp, -32
                  slti         s6, a3, -1656
                  srli         a7, s6, 13
                  sltiu        a2, sp, -1051
                  ori          s8, a4, -1451
                  srli         t3, s11, 15
                  ori          a4, a1, -1038
                  addi         a6, a3, -1344
                  xor          gp, t6, zero
                  or           s1, t2, s5
                  auipc        t4, 913899
                  slti         s0, t4, -440
                  xori         s8, t2, -1061
                  srli         tp, s10, 20
                  add          a2, s2, a4
                  sub          s6, a4, tp
                  ori          s10, a4, 796
                  slti         a5, t3, 579
                  sll          s6, a3, a3
                  nop
                  ori          t3, s7, 325
                  srl          ra, s8, a1
                  andi         ra, a7, 160
                  sll          s6, t5, s6
                  andi         s0, a3, 51
                  sll          gp, t5, a5
                  slt          t5, a2, a4
                  sll          a5, s8, s0
                  xor          s1, sp, t6
                  slt          a4, ra, s3
                  xor          s3, a6, a7
                  nop
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s3, 0x9b7d3b1
                  li           t1, 0x80000000
                  li           gp, 0x80000000
                  li           ra, 0x8ee9dc0
                  li           tp, 0x0
                  li           sp, 0xffffffff
                  li           a7, 0x80000000
                  li           t6, 0xee311d4c
                  li           s9, 0x80000000
                  lui          s9, 601263
                  nop
                  nop
                  lui          sp, 173522
                  auipc        ra, 1017015
                  sub          a7, gp, tp
                  lui          t6, 322035
                  add          tp, gp, ra
                  auipc        a4, 854866
                  lui          ra, 611619
                  auipc        a7, 105080
                  sub          t1, s3, a4
                  addi         a7, s3, -926
                  nop
                  addi         a7, t1, 429
                  lui          a4, 451343
                  lui          t1, 337005
                  add          tp, a7, a7 #end riscv_int_numeric_corner_stream_5
                  srli         s10, t0, 2
                  srai         s0, tp, 10
                  sra          s11, t6, s3
                  srai         a4, a4, 9
                  srai         a1, s9, 12
                  sra          a3, sp, gp
                  and          s1, s9, a1
                  auipc        a6, 808687
                  ori          s11, a7, -1714
                  slti         t0, t3, 1573
                  sll          s6, s11, s3
                  xori         a6, s4, -12
                  sltiu        a7, s9, 1581
                  nop
                  sltiu        sp, t1, 1096
                  xori         s5, s10, 1162
                  xor          s0, a7, s1
                  slli         t3, a1, 7
                  xori         s0, a4, 183
                  nop
                  addi         t1, s3, 1019
                  srl          t1, a6, t5
                  sltiu        s8, s3, 1028
                  slti         s11, a0, 1580
                  sltu         a3, ra, s3
                  andi         s8, a3, -1862
                  srl          a6, s2, s0
                  add          ra, a0, a3
                  auipc        s9, 235114
                  lui          s1, 350405
                  slli         a1, a0, 9
                  xor          a3, s0, s6
                  xori         s6, ra, -379
                  srl          s4, s0, a5
                  andi         s1, t1, -1922
                  xori         a3, sp, 183
                  slli         s5, s1, 1
                  or           t6, t6, s0
                  sltiu        a4, t1, -1427
                  srl          a6, t6, gp
                  xori         zero, s8, -1492
                  xori         s1, s6, -2015
                  add          s3, t1, a6
                  sltu         s1, s0, tp
                  xori         s11, tp, -640
                  xor          t6, s2, a1
                  ori          zero, sp, 1403
                  auipc        s5, 490313
                  sltu         tp, t5, s8
                  srl          zero, a5, tp
                  add          zero, t5, s10
                  xor          t5, t0, s5
                  sll          sp, zero, a4
                  sltiu        s11, s4, 1750
                  addi         zero, a5, -423
                  add          s3, sp, s5
                  sltiu        s1, zero, 346
                  add          t4, t2, sp
                  auipc        gp, 611976
                  srli         t3, s2, 0
                  ori          t0, s9, -1293
                  auipc        s4, 651587
                  sll          s3, t2, t3
                  sll          s2, t2, a5
                  andi         s9, tp, -54
                  slli         ra, s10, 0
                  sub          ra, zero, t0
                  ori          t0, a4, 1211
                  add          a1, ra, t1
                  or           t1, sp, a2
                  or           s11, s8, s3
                  or           ra, t1, t2
                  srai         a1, t3, 28
                  addi         a5, s3, 1095
                  xori         t0, zero, 2012
                  nop
                  nop
                  lui          zero, 750663
                  add          s5, zero, a5
                  slli         s0, t3, 31
                  andi         zero, s4, -1627
                  lui          a2, 386404
                  lui          s5, 771645
                  sll          t1, s9, s6
                  srli         sp, s7, 11
                  lui          a5, 978029
                  and          t4, s0, a7
                  andi         gp, s0, -983
                  srl          a5, t0, gp
                  srli         s9, gp, 6
                  sltu         s3, s7, a7
                  and          zero, t3, s6
                  lui          s10, 78290
                  sra          s1, s0, a2
                  addi         t5, s2, 748
                  sltu         s5, a7, s6
                  nop
                  sltu         tp, t1, gp
                  slti         s8, s3, -426
                  srai         tp, s11, 0
                  srai         s2, s2, 8
                  srai         s1, ra, 7
                  srai         a6, gp, 28
                  add          a5, tp, s4
                  lui          s6, 30048
                  sll          a3, t3, a1
                  addi         ra, s5, 459
                  slti         s9, a1, -1750
                  auipc        tp, 811739
                  xori         a3, tp, 1074
                  ori          a7, t1, 1394
                  andi         t4, t5, -1840
                  sltiu        t4, s2, 447
                  xor          s6, a5, a4
                  sltu         t3, s4, s1
                  addi         s8, ra, -1151
                  add          s11, t2, t3
                  xor          t4, ra, s8
                  srli         t3, t5, 29
                  and          s1, s10, a2
                  and          t6, tp, s9
                  addi         sp, s3, -187
                  xor          ra, tp, s5
                  slti         a6, t5, 1360
                  ori          a4, s0, 1747
                  sll          s2, s6, t4
                  sub          s6, s9, s1
                  sltu         s9, s9, t3
                  slti         a1, s1, -1031
                  slti         gp, a1, -537
                  sll          a6, s0, t3
                  sltu         t6, gp, s9
                  xori         s6, sp, 115
                  add          a7, s9, ra
                  xor          a6, a6, t5
                  xor          t1, t6, a1
                  andi         tp, ra, 929
                  slti         s2, a7, 464
                  xori         a1, s2, -380
                  and          t4, a3, sp
                  srai         s8, sp, 27
                  srai         a4, s11, 21
                  slti         t4, tp, -1838
                  slt          t4, t2, zero
                  and          a4, s9, s6
                  sltiu        s5, s2, 753
                  auipc        gp, 621476
                  lui          a1, 633590
                  slt          t5, s4, a0
                  ori          s0, s10, -1434
                  sub          s5, sp, a0
                  xor          s1, ra, s4
                  ori          tp, t1, 198
                  srli         s6, a3, 5
                  sltiu        t3, a4, -1433
                  sltu         s5, s3, gp
                  slti         a1, s3, -1986
                  and          t3, s11, t0
                  srai         t0, s7, 25
                  add          a5, s5, t6
                  sltiu        s8, a0, -106
                  sra          s2, s6, t5
                  srl          s9, s7, t6
                  and          s6, a5, s9
                  sltu         t4, s10, s6
                  add          s9, a1, sp
                  slt          gp, t2, a1
                  add          t6, s9, s0
                  srl          a4, s6, a7
                  auipc        gp, 1026753
                  slt          s5, a0, a5
                  lui          a5, 268229
                  sltiu        t1, s8, 1768
                  and          t3, t6, s3
                  nop
                  xor          s3, sp, t1
                  sub          s0, t4, t4
                  srli         s11, a0, 16
                  slt          a4, t0, t0
                  slli         t5, s4, 9
                  sll          s0, t3, a2
                  add          s4, s10, t4
                  sltu         s8, s2, s2
                  nop
                  srl          t6, s7, s3
                  sltiu        t5, s1, 1756
                  sltiu        a2, a4, -1941
                  srai         s8, s7, 7
                  add          a1, s6, a4
                  ori          s0, t1, 1628
                  add          a7, s4, t1
                  slti         a1, t2, -453
                  add          s2, s8, s9
                  andi         tp, s0, 1213
                  sltu         t1, a2, s10
                  slli         a1, ra, 3
                  srli         tp, a1, 16
                  sll          t1, t1, sp
                  sub          s6, t6, t2
                  srai         t0, s9, 25
                  slti         sp, s1, 541
                  andi         s4, s6, -1772
                  xor          s5, t6, t5
                  slli         a7, t5, 5
                  nop
                  nop
                  or           s5, a0, a6
                  auipc        t4, 208693
                  slt          t1, s10, t1
                  nop
                  xor          s9, zero, s0
                  xor          t1, ra, t0
                  srli         t1, a3, 8
                  sub          zero, a3, t1
                  xori         a4, s6, 995
                  srai         t3, a5, 9
                  xori         s10, s5, -1472
                  or           a4, s5, t1
                  sll          s10, a4, tp
                  xor          t4, t2, ra
                  sltiu        ra, s11, 117
                  lui          s10, 275591
                  addi         s6, a7, -1284
                  sra          zero, gp, a2
                  lui          a6, 169466
                  srai         a5, a7, 7
                  sub          t5, s4, a2
                  addi         a2, s6, 295
                  andi         t0, s0, -1634
                  addi         a5, s5, 1788
                  xor          a3, s4, a4
                  slt          t4, a6, gp
                  srl          t0, t3, s1
                  add          sp, s8, a3
                  sltiu        t3, s9, -1887
                  slli         s2, sp, 2
                  slt          tp, t6, s4
                  addi         a6, s8, -611
                  ori          t1, a4, 1508
                  slt          a7, s5, t1
                  or           t3, a6, t1
                  add          s8, t4, s6
                  lui          ra, 488468
                  auipc        t4, 992301
                  sub          a2, t3, a0
                  nop
                  and          s6, s11, a4
                  and          a3, s0, a5
                  auipc        s4, 415612
                  xor          a1, s10, t4
                  and          a5, t6, s10
                  auipc        a7, 64621
                  xori         s1, s11, 723
                  lui          t5, 310685
                  srai         s4, t1, 23
                  sltiu        s0, a1, 1973
                  xori         s4, s3, 605
                  nop
                  srli         s5, a6, 3
                  xor          t5, a1, a5
                  xor          zero, sp, a4
                  xor          t4, a6, s11
                  and          tp, sp, t2
                  xor          t4, a3, s0
                  ori          s8, a6, -354
                  addi         ra, zero, -687
                  or           t3, tp, s2
                  and          t4, t5, ra
                  srli         s1, s2, 7
                  srl          a1, a6, s8
                  slt          a6, s10, sp
                  lui          s4, 487072
                  nop
                  auipc        s2, 46655
                  sltu         t4, a3, s7
                  andi         s4, s0, 268
                  srl          t6, s11, gp
                  sltu         s4, s4, t0
                  srai         zero, tp, 15
                  lui          a2, 525751
                  srai         s0, tp, 23
                  sltu         s5, zero, a5
                  sltu         a7, s7, a2
                  or           t3, ra, t1
                  addi         a7, a3, 300
                  sub          t1, s2, a7
                  add          a1, t1, t4
                  srai         s0, a5, 21
                  sll          t1, s0, a5
                  sltiu        s10, zero, 282
                  sltu         s8, s10, s10
                  slti         t1, a7, -363
                  andi         t4, a2, 1748
                  or           t6, a3, s6
                  slt          a5, t1, sp
                  sub          s5, s10, t6
                  srli         tp, t2, 21
                  sra          a3, ra, s9
                  srai         s4, t0, 15
                  slti         gp, s10, -1779
                  xori         t5, s11, 612
                  slti         a6, s10, -915
                  slti         a3, ra, 490
                  srl          s4, tp, sp
                  srl          s0, ra, a0
                  slt          s2, tp, t6
                  xor          s1, s9, a4
                  andi         a4, s9, -579
                  xori         s3, a2, -1909
                  addi         s0, a1, -1573
                  nop
                  andi         s3, a5, 66
                  auipc        ra, 857961
                  slli         zero, s11, 16
                  or           t4, zero, t4
                  slli         s6, t1, 30
                  sltiu        gp, sp, 1912
                  and          t6, s10, s7
                  nop
                  srli         a6, s11, 23
                  slti         t5, t0, -1171
                  srl          a2, s2, t2
                  xor          s2, tp, a0
                  sra          ra, a5, a0
                  sub          ra, s4, s5
                  sub          a5, s1, t2
                  xori         s5, s7, -111
                  nop
                  sltiu        s9, s8, 283
                  auipc        ra, 369473
                  or           t5, a2, tp
                  add          s4, tp, sp
                  srl          s11, a2, a5
                  slli         s2, zero, 30
                  add          s3, a5, t3
                  nop
                  xori         a7, t2, 1658
                  add          zero, t4, sp
                  and          s9, t2, s3
                  addi         gp, t2, 233
                  nop
                  sll          t1, a3, t6
                  srai         tp, zero, 27
                  andi         t1, t5, 1812
                  sltiu        t4, ra, 1361
                  xori         gp, s2, -826
                  addi         s5, zero, 1075
                  andi         s9, t4, 29
                  slti         a6, t5, 1976
                  slli         s6, s9, 10
                  auipc        s2, 337558
                  slli         s2, s9, 11
                  xori         t5, s7, -1599
                  srl          t1, t0, s6
                  auipc        t0, 238910
                  sra          t0, a6, s2
                  sltu         s11, a0, zero
                  auipc        s0, 263388
                  and          s5, s7, s8
                  andi         a6, t3, -1854
                  slt          s1, gp, t3
                  sll          zero, s7, a0
                  add          a2, s5, s8
                  add          tp, a2, s10
                  sltiu        a2, s3, -1982
                  andi         s5, t5, -701
                  xor          s1, s8, t4
                  slt          t0, gp, s11
                  srai         a7, a4, 22
                  add          s5, t6, a2
                  addi         s4, s7, 1259
                  addi         a7, sp, -1323
                  sub          t4, s2, s6
                  sra          a7, s3, t1
                  and          s9, a1, s7
                  addi         s5, a2, 128
                  slli         s8, t2, 6
                  slt          t1, a5, s8
                  addi         s3, s11, -558
                  xor          a6, sp, zero
                  sub          sp, t1, s9
                  srli         ra, t5, 14
                  andi         s1, t5, 1388
                  sra          s8, s5, gp
                  srl          sp, a2, s2
                  sra          t3, a2, s6
                  nop
                  or           a7, s11, s2
                  ori          t0, sp, -1279
                  srai         a4, s2, 14
                  xori         t4, s2, 374
                  sll          a6, t0, zero
                  add          s10, s9, s6
                  add          a3, s8, s7
                  sltu         t1, s3, s3
                  xor          zero, s5, s10
                  sltiu        s11, s1, 1646
                  and          s1, zero, a5
                  andi         s1, t3, 641
                  sltiu        a5, t3, -769
                  andi         a1, a6, 479
                  andi         a2, s4, 876
                  xor          t0, t6, s9
                  auipc        ra, 961996
                  addi         a2, t4, 88
                  slli         t6, s6, 28
                  nop
                  sltiu        a7, tp, -1702
                  slli         gp, gp, 30
                  add          t1, tp, a1
                  addi         t4, a2, 1971
                  lui          a5, 259695
                  ori          s4, s11, 412
                  srli         s10, t6, 14
                  xori         s5, t3, 1051
                  sub          s6, sp, t6
                  srl          t1, t4, a6
                  ori          a6, s3, 1152
                  sll          s5, a7, s7
                  sltiu        ra, sp, -892
                  auipc        a3, 61117
                  andi         s10, s0, 300
                  sltu         s1, s1, a3
                  xori         sp, t2, -2014
                  srai         s11, t3, 1
                  lui          gp, 1017810
                  srai         s11, t0, 26
                  xori         s4, s9, -165
                  srai         a5, s6, 16
                  sltu         s5, s2, a1
                  add          tp, a3, zero
                  slti         a5, s5, -305
                  xori         s10, a4, 541
                  andi         a6, ra, -1054
                  slt          a2, a2, t2
                  srl          a5, tp, a6
                  and          tp, s10, s2
                  sll          s0, t0, a5
                  nop
                  slli         t5, a7, 30
                  srl          s0, sp, a4
                  or           s8, a7, zero
                  nop
                  ori          t6, t6, 1649
                  srai         a2, s10, 24
                  sltu         t0, a1, s10
                  xori         tp, sp, -914
                  lui          t4, 947845
                  xor          tp, zero, a0
                  xor          s6, s3, t1
                  sltiu        tp, s0, -457
                  or           tp, zero, s10
                  auipc        s2, 711626
                  srai         s5, a3, 21
                  sub          s8, a4, s9
                  sra          s5, zero, gp
                  slt          a4, s6, gp
                  addi         a1, a7, 76
                  sll          s5, s11, s10
                  xori         t3, s7, 1391
                  slt          a2, zero, t6
                  sub          s0, s2, s5
                  and          a7, a6, s0
                  ori          s0, t1, 127
                  srai         s4, t5, 28
                  sltiu        t4, s7, -1953
                  ori          t1, s2, -1118
                  nop
                  ori          a6, s6, 1113
                  srai         s5, s8, 3
                  sra          s10, sp, s3
                  sltiu        gp, t5, -344
                  auipc        s3, 243797
                  auipc        gp, 375477
                  nop
                  slli         a1, a0, 8
                  slti         s4, s1, -835
                  sll          ra, s4, s6
                  srai         a1, t4, 29
                  srai         s11, tp, 14
                  srli         t1, s1, 24
                  srli         ra, s2, 17
                  xor          t1, s6, s0
                  and          zero, t0, t0
                  and          s9, t5, zero
                  slli         t5, s4, 8
                  nop
                  add          a3, gp, t6
                  srl          a6, t2, t6
                  addi         s11, s3, 898
                  ori          sp, ra, 455
                  addi         t4, s7, 8
                  andi         zero, s6, 735
                  xori         tp, s0, 850
                  auipc        s9, 798184
                  srli         s1, a7, 16
                  sll          a7, a5, s10
                  xor          a2, s11, s5
                  lui          a6, 795330
                  andi         a2, a5, -587
                  andi         t4, t0, 957
                  sll          a2, a6, s1
                  sltiu        s1, sp, -946
                  slt          t5, zero, t1
                  sltu         s11, s4, s7
                  srai         t5, s5, 13
                  sra          s5, a0, a5
                  srai         s6, s2, 7
                  andi         s2, a6, 195
                  or           s9, a2, s2
                  auipc        s0, 425773
                  and          s4, a0, a2
                  sltiu        s4, a1, -1475
                  sltu         gp, t0, ra
                  srl          a2, s9, a1
                  and          s11, a1, a7
                  slti         s10, s9, 1457
                  xor          t1, s5, s2
                  lui          s2, 261653
                  sra          t0, a0, ra
                  sltiu        s2, a1, 1500
                  slti         t6, s10, 694
                  auipc        a1, 662240
                  sll          s1, t3, t0
                  add          a7, gp, t2
                  sltu         s3, gp, s4
                  sltiu        s5, s7, 99
                  sltiu        s5, s6, -1182
                  or           a3, a7, t3
                  sub          s4, s7, gp
                  or           tp, zero, gp
                  slli         s10, s8, 13
                  sltu         a1, t3, s8
                  or           tp, a0, s3
                  nop
                  srli         a7, s8, 4
                  add          a4, s10, t0
                  slti         s11, s6, 549
                  slli         s11, t3, 5
                  ori          t0, a2, 1327
                  andi         a5, s10, 396
                  xor          s9, s0, zero
                  sub          sp, ra, s10
                  addi         t0, a0, -1200
                  slli         a5, t1, 15
                  sll          a1, s1, s7
                  and          s0, s6, gp
                  srli         t6, a4, 28
                  sra          s11, s1, a2
                  sra          tp, s2, t5
                  srli         a3, t6, 17
                  xori         s8, a3, -1925
                  nop
                  srli         gp, t6, 29
                  nop
                  ori          t0, t2, -1072
                  slt          s3, s11, s4
                  sra          s0, s1, s9
                  slti         tp, a0, 1448
                  add          a5, t1, a6
                  sltiu        tp, t1, 2019
                  or           t6, a6, tp
                  add          ra, a1, a4
                  addi         s8, tp, 184
                  sub          s4, a3, t2
                  addi         t5, t6, 978
                  srl          s3, s11, s1
                  sra          gp, s10, t2
                  addi         ra, a2, -663
                  slt          a1, s11, ra
                  slli         zero, a6, 25
                  xori         t6, t5, 662
                  srai         gp, t3, 13
                  xor          a2, tp, s10
                  sub          sp, s11, s8
                  srai         t6, a2, 27
                  auipc        zero, 408882
                  andi         s0, gp, 1429
                  lui          ra, 138771
                  addi         s10, t6, -877
                  auipc        a5, 518668
                  nop
                  lui          s8, 200594
                  or           tp, s11, s4
                  sra          s6, t1, s9
                  xor          s0, t3, gp
                  auipc        s1, 220545
                  slti         a5, tp, 1408
                  sub          s5, s3, t2
                  add          t5, sp, s7
                  slt          ra, t5, t4
                  xor          s4, a6, t1
                  srl          s0, sp, s10
                  srl          tp, ra, a1
                  add          s4, a3, a1
                  sub          t1, t0, s11
                  andi         gp, t3, -1569
                  slli         t0, a2, 12
                  xori         s0, s7, 839
                  add          s5, s9, s11
                  sub          s4, a5, t3
                  srli         a2, s9, 31
                  addi         a6, t1, -759
                  slti         s3, t4, -680
                  auipc        s6, 776079
                  xori         s9, a3, -59
                  andi         s4, a3, -1411
                  xori         s3, sp, -750
                  srl          s9, t2, s11
                  srli         a5, s5, 27
                  nop
                  srli         sp, a7, 11
                  and          a5, a0, a6
                  lui          tp, 471
                  sll          s11, s10, t0
                  addi         s4, a3, -550
                  slti         s4, s2, -1405
                  srli         s8, a0, 16
                  srli         a4, s8, 17
                  auipc        s2, 564461
                  auipc        s9, 587372
                  srai         t3, t2, 29
                  srai         ra, t1, 26
                  lui          tp, 421964
                  sub          s9, a0, t1
                  and          t3, tp, zero
                  srl          s5, t4, a7
                  slti         s3, t1, -303
                  sltu         t3, a1, s5
                  sub          s2, a2, s3
                  sltu         a1, s2, sp
                  andi         a6, tp, -1983
                  ori          s3, a1, 1416
                  sltu         s9, a1, t0
                  xori         sp, t4, -1756
                  add          zero, s1, gp
                  xor          s2, s5, s4
                  xori         s8, a3, -720
                  addi         s2, t4, 1700
                  nop
                  nop
                  sub          s2, t5, s2
                  srai         s6, ra, 11
                  slt          s10, s11, s10
                  slt          s3, t5, a5
                  sltu         s1, a3, t3
                  srli         t3, a5, 8
                  slli         s8, a7, 22
                  sltiu        s1, a6, 1524
                  sltu         sp, a5, t2
                  xor          t4, s1, t2
                  srai         a4, s6, 26
                  sltiu        ra, a3, 756
                  srli         zero, t0, 7
                  or           t3, s1, s3
                  auipc        a3, 146816
                  slti         s4, a3, 1394
                  xor          a7, t5, s0
                  auipc        a4, 189896
                  addi         s1, gp, -1650
                  slti         s9, s5, 775
                  nop
                  add          sp, s1, a5
                  sll          a1, a0, t0
                  sltiu        s10, zero, -1235
                  sltiu        s0, s5, -906
                  sra          s11, t3, a3
                  slti         a7, a6, -692
                  nop
                  nop
                  sll          a3, a3, s10
                  auipc        s1, 454210
                  lui          t5, 591850
                  srli         t4, t5, 29
                  xori         s1, ra, -1254
                  xori         t6, a3, -1938
                  ori          sp, t1, -1536
                  and          s8, a7, a3
                  srli         s1, t3, 8
                  auipc        s0, 1018862
                  ori          a1, s6, 1187
                  slli         t3, t2, 2
                  sll          s10, t4, s0
                  srl          s8, gp, s8
                  add          s10, tp, s8
                  sub          s8, s0, a7
                  andi         t4, t3, 716
                  addi         s11, gp, -233
                  add          a6, s3, s1
                  or           t3, t1, s4
                  andi         ra, gp, 121
                  xor          ra, a5, t3
                  xori         a7, s4, 685
                  srli         t4, s9, 5
                  xori         s0, a5, 287
                  slli         sp, s1, 9
                  sll          tp, t3, a3
                  sltiu        s11, s0, -200
                  sll          t0, s10, s8
                  slt          a6, gp, t3
                  lui          a5, 778291
                  slti         t1, t4, -1426
                  xori         ra, tp, 169
                  andi         tp, t3, 47
                  add          s2, a7, t4
                  srai         s11, s0, 11
                  and          t3, s8, tp
                  and          a6, sp, a6
                  srli         tp, tp, 12
                  or           tp, s0, a0
                  srai         t6, s6, 6
                  xori         zero, s8, 480
                  add          s9, s11, s11
                  sltiu        s9, t3, -769
                  or           a5, a3, s1
                  sltiu        s3, a1, -307
                  and          s3, a2, t0
                  auipc        t5, 389487
                  slli         zero, gp, 30
                  add          gp, a2, t4
                  xor          t4, sp, a4
                  and          s5, s9, ra
                  srli         ra, a3, 7
                  sltu         a1, t5, a6
                  ori          a3, s8, -1088
                  slti         a2, a4, -55
                  slti         s3, sp, 214
                  slti         s5, t0, 469
                  srli         zero, sp, 17
                  addi         s3, s7, -1603
                  lui          s3, 13894
                  add          t1, a5, s5
                  srli         s5, s7, 16
                  xor          a1, s2, t3
                  and          t6, t6, t5
                  auipc        sp, 396740
                  or           s10, s4, t3
                  slti         s4, a7, -944
                  srai         a4, s2, 10
                  sra          a5, zero, a5
                  slt          a2, t3, tp
                  sra          gp, a6, t4
                  slt          s8, a5, s6
                  srai         t4, sp, 3
                  sltiu        a2, a7, 12
                  slt          a6, zero, gp
                  lui          a5, 102575
                  slti         s11, ra, 1628
                  slli         a4, a4, 0
                  srai         s8, t5, 6
                  sltiu        s10, t0, 654
                  lui          s10, 118637
                  lui          t5, 873871
                  sra          s5, t5, s6
                  srli         a3, a3, 1
                  andi         gp, t6, -1632
                  xor          s9, s6, zero
                  sub          s2, s3, s4
                  add          t1, t2, s8
                  or           s1, t5, sp
                  srai         ra, s9, 15
                  nop
                  or           a2, t6, gp
                  and          sp, a2, s6
                  xor          ra, s2, ra
                  or           zero, a2, t4
                  lui          tp, 780860
                  lui          a2, 281493
                  addi         s4, sp, 1578
                  auipc        s1, 227
                  slt          t6, s8, s1
                  sll          s2, t2, s11
                  sll          t5, tp, ra
                  xori         sp, a3, 196
                  slli         a4, tp, 8
                  srl          s1, s0, t1
                  and          t6, a0, a7
                  sra          s5, s3, s4
                  sltu         s6, a2, t2
                  srai         a7, tp, 5
                  or           a6, t1, s3
                  and          ra, s8, ra
                  sltiu        a3, a6, -977
                  andi         s5, t3, -1957
                  andi         ra, s11, -973
                  xori         tp, s4, 1974
                  ori          t0, a4, 269
                  xor          gp, s8, t3
                  ori          t0, s10, 1456
                  sra          s9, s2, s2
                  sub          tp, a7, a2
                  sll          t6, a1, sp
                  addi         tp, t0, -52
                  lui          s10, 171160
                  sll          a7, s11, gp
                  slt          s5, a0, s8
                  sra          s5, s6, s5
                  xori         ra, t0, -403
                  sll          zero, a7, ra
                  srli         s3, s6, 24
                  addi         a7, t6, 1539
                  srl          t3, gp, a5
                  andi         t4, s5, -1496
                  andi         s5, s7, -1818
                  lui          s9, 394421
                  srai         a5, t4, 30
                  andi         gp, s3, -813
                  or           s8, t5, gp
                  sra          t1, s11, a0
                  nop
                  lui          t6, 851011
                  nop
                  slti         a5, s9, -1348
                  xori         a3, zero, -877
                  srli         s3, s8, 24
                  srl          ra, s8, s11
                  srai         s11, s2, 30
                  sra          a1, a5, s9
                  auipc        tp, 556718
                  srli         s8, s2, 31
                  nop
                  xori         s5, t3, 1192
                  lui          zero, 819197
                  addi         t4, s10, 1299
                  srai         a7, t3, 21
                  slt          s2, t6, s2
                  and          tp, a5, s8
                  add          s4, t6, zero
                  sra          a4, t1, s7
                  slli         a3, s3, 14
                  nop
                  slli         s1, ra, 27
                  srli         t5, gp, 25
                  auipc        a6, 412030
                  sltiu        a1, a7, 1135
                  xori         gp, s1, 257
                  sll          gp, s4, s10
                  xor          t0, s5, t0
                  add          s0, gp, s6
                  sra          a1, t1, s1
                  xori         s11, s10, -1437
                  slti         sp, a5, 1809
                  nop
                  xori         s0, s5, -254
                  ori          s3, t3, -1131
                  add          s4, t1, t1
                  slti         t3, s7, 1371
                  srl          t6, a5, a4
                  slti         zero, s5, 264
                  andi         t1, a2, 1974
                  srli         s10, t1, 4
                  sra          t3, a7, s7
                  sub          sp, s10, s7
                  sll          s2, s10, s10
                  sll          t1, s5, s5
                  sra          sp, a5, a1
                  sra          a6, s2, zero
                  and          a3, a5, s5
                  slt          s4, t2, zero
                  sub          t0, s7, s8
                  or           t0, a5, s0
                  xori         gp, s11, 1488
                  sltiu        zero, t6, -1110
                  srl          s2, s3, t1
                  srai         t6, a6, 23
                  addi         gp, t4, -1469
                  sra          ra, t2, gp
                  sll          s4, ra, a4
                  lui          s4, 647386
                  slli         a1, s3, 10
                  sltu         s9, t0, a7
                  slti         sp, s8, -45
                  sltiu        s3, s6, 23
                  srai         s4, s9, 1
                  addi         s9, t2, 256
                  sll          s5, ra, a7
                  auipc        s3, 646313
                  slt          s6, t1, a3
                  slli         s5, s1, 26
                  slli         a5, t0, 24
                  xori         s0, s5, 1698
                  sra          s1, s6, s3
                  lui          t1, 930608
                  slti         t3, a6, 298
                  slt          a2, s3, s11
                  slti         a1, t4, -608
                  sra          s10, s5, a2
                  addi         a6, s0, -1705
                  addi         a3, s11, 947
                  sra          a5, s0, t5
                  xor          t5, a0, t5
                  slt          t1, tp, t4
                  slti         sp, s2, -762
                  srl          gp, t5, a1
                  add          a4, a1, s9
                  sltu         ra, a4, ra
                  srli         zero, s0, 14
                  sltiu        s8, s7, -552
                  auipc        s4, 542549
                  and          t4, a7, ra
                  auipc        s11, 123854
                  sltu         a1, sp, t5
                  srl          ra, ra, s11
                  srl          s5, a3, a2
                  slti         t0, zero, -1824
                  srai         a7, s10, 24
                  or           a1, a5, t5
                  add          s10, s2, t5
                  xori         t5, a4, -1581
                  auipc        s10, 404042
                  nop
                  lui          s9, 511254
                  srl          t5, a2, a0
                  xori         s8, s4, -1034
                  slt          tp, a7, t6
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           t6, 0x0
                  li           ra, 0x80000000
                  li           a3, 0xffffffff
                  li           t4, 0x0
                  li           s0, 0xffffffff
                  li           a4, 0x80000000
                  li           a7, 0x80000000
                  li           s11, 0x0
                  li           s5, 0x80000000
                  lui          a4, 255917
                  sub          t1, ra, t4
                  nop
                  auipc        t1, 899615
                  sub          t4, s0, a3
                  add          s0, s11, a4
                  add          a7, s0, a7
                  auipc        t4, 834371
                  nop
                  lui          s5, 808280
                  sub          s0, a7, s11
                  add          s5, t4, a3
                  sub          ra, ra, t1
                  auipc        t1, 903260
                  add          ra, a7, a3
                  auipc        s0, 739407
                  addi         ra, t4, 1517
                  add          t6, s0, t6
                  add          t4, a7, s5
                  add          ra, s11, a7
                  add          t4, a3, t6
                  add          a4, a4, t6
                  addi         s0, t1, 397
                  sub          a7, t4, t4
                  add          t1, t6, t6
                  auipc        a7, 556100
                  lui          t1, 629735
                  add          s5, a7, s0
                  auipc        t1, 145966
                  add          t1, ra, t1 #end riscv_int_numeric_corner_stream_15
                  auipc        a2, 400537
                  and          gp, t0, tp
                  srl          gp, t2, a2
                  nop
                  ori          a2, s9, 685
                  addi         s10, a6, -1988
                  slt          s5, t6, s2
                  or           t6, s5, s5
                  srl          t5, tp, sp
                  slt          s2, a3, s7
                  slt          s6, gp, gp
                  auipc        a6, 1023414
                  slti         s1, t2, 912
                  slli         t1, a5, 29
                  xor          s6, t3, a2
                  sra          s11, a3, t0
                  sltiu        sp, t0, -607
                  sltu         a1, s4, t6
                  and          s9, t6, t1
                  ori          a2, gp, -311
                  andi         gp, s3, 392
                  xori         a7, sp, -815
                  sub          a5, t0, s11
                  sra          ra, t4, gp
                  srai         s2, sp, 30
                  slti         s1, gp, 2021
                  auipc        a4, 76841
                  or           tp, t4, ra
                  slti         s8, a4, -1507
                  add          a2, s5, a5
                  lui          tp, 135573
                  auipc        t3, 24386
                  sltiu        t0, a6, 702
                  and          t4, zero, a6
                  xor          ra, a4, s4
                  ori          t3, t3, -567
                  sltiu        t0, a3, 522
                  xor          a2, sp, s8
                  auipc        s10, 258814
                  auipc        s6, 409725
                  slli         s0, s0, 6
                  lui          t5, 529756
                  slti         s3, a1, -624
                  ori          ra, t5, -1755
                  slti         t6, s8, -336
                  srl          t0, s9, s7
                  xori         ra, t1, -148
                  sra          a4, s8, t4
                  xori         s3, tp, 285
                  sll          s3, zero, a5
                  ori          a2, s11, -693
                  slti         a3, s4, -1513
                  srli         s1, s3, 9
                  sltiu        t1, zero, -1479
                  srai         t6, t6, 15
                  ori          s1, a1, -429
                  xor          s0, a5, s3
                  srai         zero, s8, 8
                  sltiu        t0, t5, -1306
                  slti         s3, a2, -1718
                  xor          t5, a5, s7
                  xor          t3, s3, s11
                  addi         sp, t5, 272
                  xor          s3, sp, a2
                  sltu         tp, t4, a7
                  lui          s1, 512992
                  sra          s11, tp, a4
                  or           t3, s2, t6
                  slt          s9, a5, sp
                  srai         a6, a4, 1
                  ori          t5, t3, 1309
                  addi         s0, s10, -518
                  sltu         tp, t3, s1
                  slli         s0, s0, 21
                  slt          s1, a6, t4
                  nop
                  srl          a1, sp, sp
                  srai         s10, s5, 3
                  or           a1, a1, tp
                  slli         s0, tp, 4
                  nop
                  addi         tp, t6, 424
                  sll          t5, s11, s2
                  sltu         t0, s8, s11
                  slti         a4, a1, -780
                  andi         s3, ra, 392
                  or           a5, ra, ra
                  sra          a7, s7, t1
                  slti         sp, s4, 575
                  add          tp, ra, t5
                  slti         s6, s8, -1350
                  sltu         ra, t5, s8
                  xori         s11, s5, -1779
                  add          t5, s10, a1
                  andi         a2, tp, -185
                  sra          t1, t2, t5
                  lui          a5, 849122
                  slt          t6, a7, s2
                  or           t1, t5, a6
                  srl          a5, t2, zero
                  sltu         t5, t0, a5
                  andi         s11, a0, 868
                  xori         tp, a7, 1559
                  sra          s8, s11, s6
                  add          gp, s5, s11
                  sra          a5, a4, s4
                  sra          a3, t3, t3
                  srl          a6, a6, s8
                  auipc        a7, 1010388
                  xor          s3, tp, s6
                  andi         a5, s7, 905
                  addi         t5, t0, 1454
                  ori          t4, s0, -346
                  slli         a4, s6, 20
                  nop
                  add          t4, s4, a3
                  sub          tp, a7, gp
                  addi         a4, t5, -738
                  addi         s5, a0, -617
                  and          a7, s7, s0
                  auipc        sp, 322761
                  add          s8, tp, a1
                  slt          s3, s0, t5
                  sll          a7, s9, sp
                  or           a7, t4, s3
                  ori          t5, a4, 755
                  xori         a3, a4, 826
                  srli         s9, a4, 5
                  srl          a2, a5, a0
                  sra          a2, s8, a2
                  ori          a3, tp, 1927
                  slti         s6, a5, 938
                  and          t6, t0, a5
                  and          ra, s1, a1
                  xori         s9, a4, 1323
                  slti         a7, s2, 2004
                  slti         t0, s1, 841
                  sltiu        s5, tp, -1694
                  slt          s8, s8, t5
                  xor          s5, gp, t6
                  auipc        t3, 564212
                  srli         a2, t6, 25
                  and          t6, gp, s1
                  slt          s3, s4, a1
                  sltiu        a1, a2, 1106
                  add          sp, a0, a3
                  addi         ra, ra, 121
                  xor          s0, s11, tp
                  xori         a1, gp, -266
                  add          sp, s11, s4
                  nop
                  slt          s11, s6, sp
                  sub          a1, a2, t5
                  srl          t4, sp, t4
                  slti         s1, ra, 1528
                  sltiu        s6, zero, 448
                  sub          s2, s1, a7
                  lui          s5, 278014
                  slt          t1, t4, t1
                  nop
                  addi         a3, t2, -1683
                  srl          a2, a2, a3
                  sra          s8, a3, t5
                  ori          t3, t0, 1599
                  srl          sp, gp, t1
                  sltiu        ra, zero, -930
                  srl          s1, s1, sp
                  sltu         a7, a0, t4
                  add          a5, s4, t3
                  or           t4, a2, s11
                  slli         sp, t5, 10
                  sll          s11, a0, s0
                  sltiu        s0, sp, -2001
                  slli         s4, s4, 6
                  addi         s2, a3, -865
                  ori          a4, s2, 1318
                  sltu         s10, s8, a6
                  or           s4, s1, a6
                  srl          s4, t3, t0
                  slli         sp, s4, 5
                  srli         t6, t4, 4
                  ori          ra, a2, 1133
                  srl          t3, s0, s5
                  xori         s10, s10, 1221
                  srli         t0, t3, 22
                  sra          a1, s3, s7
                  srl          s0, a1, s6
                  sub          s2, sp, a1
                  xor          a7, s10, s9
                  sltiu        s6, a2, 2026
                  slti         s11, s4, -1566
                  nop
                  slti         t3, a1, 1321
                  slti         sp, zero, -1223
                  xori         t3, a0, -247
                  xor          s8, s5, s11
                  sltiu        t5, a5, 1034
                  add          a2, t2, t0
                  slt          sp, a1, a4
                  lui          sp, 369735
                  slt          s1, a5, tp
                  sll          ra, s10, sp
                  sltiu        s10, t1, 599
                  addi         zero, a6, -954
                  andi         s3, sp, 422
                  slt          s11, s7, s10
                  srli         s10, ra, 15
                  lui          t0, 584293
                  slli         tp, s1, 30
                  nop
                  xor          gp, zero, s3
                  slt          a5, s8, s6
                  srli         t1, t6, 8
                  slli         a3, zero, 30
                  or           a4, t0, ra
                  ori          s5, t5, -1839
                  and          a6, s1, a2
                  slti         s4, a5, -180
                  sltu         tp, a2, zero
                  sll          t4, s0, a0
                  lui          t4, 889057
                  sltu         s11, a2, a1
                  srli         a4, s4, 7
                  srl          a1, s3, s6
                  xori         s6, ra, 1794
                  sltiu        s5, a0, -1300
                  lui          a2, 73411
                  nop
                  or           tp, s9, a3
                  ori          t6, t4, 1877
                  slt          t4, zero, s8
                  auipc        t5, 461848
                  ori          gp, a5, 514
                  sltu         tp, a7, a3
                  lui          a7, 207980
                  or           sp, t4, t6
                  slli         a5, t2, 29
                  xor          a7, s4, t0
                  sltu         a4, a5, a1
                  xori         zero, s1, 1163
                  slt          t4, sp, s11
                  nop
                  lui          t3, 710651
                  sltiu        sp, t1, -1028
                  sra          s3, s5, s8
                  sra          s3, a2, t3
                  slli         t3, a6, 20
                  xori         s11, a1, 181
                  slti         zero, zero, -1215
                  nop
                  srli         a7, a7, 0
                  add          t6, sp, s1
                  and          a6, t3, s4
                  nop
                  auipc        a5, 969023
                  sub          s11, t4, a2
                  slli         t4, s1, 15
                  and          t0, s4, tp
                  srai         s10, s2, 30
                  nop
                  ori          a1, gp, 732
                  and          s5, a4, t2
                  srli         s9, t0, 19
                  srai         a5, s2, 12
                  or           s4, gp, a2
                  ori          a3, s1, -1516
                  slti         s2, a6, -556
                  add          sp, s7, t1
                  lui          tp, 819279
                  add          ra, gp, a6
                  or           a4, a7, a7
                  lui          zero, 746830
                  auipc        zero, 842020
                  sub          ra, t4, a1
                  sra          sp, zero, s2
                  sra          a1, t5, gp
                  srli         t5, ra, 12
                  addi         t6, s11, -224
                  xor          a7, s0, t3
                  slt          s8, s6, tp
                  srai         s1, a3, 12
                  xor          t6, a2, s8
                  addi         a3, s4, 601
                  sll          s1, a5, s8
                  sltiu        s4, s4, -1112
                  slt          ra, sp, s3
                  slti         sp, t2, 1322
                  srai         t5, zero, 31
                  slti         a5, t5, -657
                  auipc        s2, 108525
                  sll          s5, t3, a3
                  lui          a7, 640468
                  sub          s1, t3, s2
                  sra          s10, a1, s2
                  and          t6, s9, s5
                  ori          t3, t5, 1099
                  srli         t1, s10, 3
                  ori          s10, a3, 1674
                  sltiu        a6, s7, -1082
                  sltu         s4, s0, t3
                  srai         a2, s7, 23
                  xor          t6, t6, t6
                  lui          a6, 539582
                  lui          tp, 19570
                  sltu         s6, ra, s10
                  srai         t0, s10, 7
                  or           s3, s9, s11
                  xori         s8, tp, 632
                  ori          s1, s1, -402
                  nop
                  andi         s0, tp, -1386
                  and          a7, t2, a0
                  srai         s3, t1, 3
                  srai         zero, tp, 7
                  sltiu        zero, s1, -573
                  sll          a3, s6, s1
                  sub          t4, s7, s4
                  sra          s11, a6, a1
                  xor          s3, s5, a6
                  ori          s10, a2, 1803
                  srai         ra, s4, 0
                  sll          t3, s5, s11
                  slti         s8, s9, 763
                  auipc        a7, 552627
                  sra          t5, s1, t2
                  xor          t3, a5, gp
                  add          t6, s11, s8
                  addi         s6, s11, -104
                  xori         t4, a3, 1271
                  auipc        s0, 959510
                  sltu         a6, s7, s9
                  sltiu        s0, a1, 2005
                  sll          s3, s6, zero
                  slti         s3, t1, 1799
                  or           tp, a2, s3
                  sub          a7, s4, a3
                  slt          t1, s10, zero
                  and          t0, tp, t1
                  lui          s4, 413297
                  sll          a1, tp, gp
                  nop
                  sra          s0, ra, a5
                  andi         a6, s3, 1465
                  srai         s6, t5, 4
                  xori         gp, t0, 793
                  slli         a7, a2, 26
                  slli         s2, a4, 31
                  sub          s10, s11, a4
                  and          a1, a7, t3
                  sltiu        ra, t1, 200
                  sub          s0, t5, s8
                  sll          a5, tp, s9
                  srli         tp, t1, 19
                  or           a1, tp, s7
                  sra          s1, s9, a2
                  slti         t3, t2, -323
                  sltiu        t3, s10, -885
                  slli         s1, a0, 26
                  ori          s2, s6, 790
                  nop
                  xori         s10, s10, -440
                  slt          s0, s0, t3
                  srai         a7, a3, 26
                  auipc        gp, 139339
                  ori          t1, s0, 509
                  xori         ra, s4, -1904
                  xor          t6, s2, a7
                  auipc        s1, 879735
                  add          zero, s7, s10
                  addi         a5, s9, 1257
                  ori          s0, s8, -366
                  ori          t1, s6, 930
                  srli         s10, a0, 25
                  slli         s2, t0, 14
                  srai         a1, t6, 31
                  slt          a5, s5, t6
                  slti         s6, a3, -255
                  addi         zero, s10, 1113
                  lui          zero, 380853
                  sltiu        s0, a2, 433
                  slt          s4, s3, t5
                  srli         a3, s9, 16
                  sltu         s10, gp, a4
                  slti         sp, t5, -315
                  nop
                  andi         s1, a5, 180
                  xor          t1, t0, a0
                  slt          t3, ra, t4
                  andi         ra, t1, -1039
                  slt          s4, s5, s10
                  lui          t6, 38048
                  srli         a5, s3, 9
                  addi         t4, s3, 651
                  andi         a7, s2, -1455
                  slt          s6, s11, a0
                  xor          sp, s5, a2
                  addi         s11, s11, -876
                  sltiu        t6, a2, -1098
                  auipc        s0, 32772
                  or           t5, sp, s8
                  srai         s8, t3, 24
                  srl          a1, a6, t2
                  and          s2, s10, s8
                  ori          s11, t5, 1348
                  sltu         t1, t3, s3
                  nop
                  slli         zero, s1, 7
                  sub          t5, t6, s9
                  srl          t6, t3, s5
                  xori         t5, s4, 1443
                  addi         a5, s2, 1843
                  or           t3, a1, a5
                  srli         s0, s0, 2
                  andi         s5, ra, -1759
                  sra          a4, s4, a3
                  add          s5, t1, gp
                  or           s9, s1, t5
                  andi         s9, t0, 393
                  add          a1, s9, s11
                  sra          t1, s8, s2
                  slli         t0, t1, 1
                  auipc        s11, 758795
                  addi         zero, a0, 1442
                  add          a6, s5, a5
                  sra          a5, gp, a0
                  sll          s9, s11, sp
                  nop
                  slli         t0, zero, 12
                  lui          zero, 909575
                  add          a6, a3, s1
                  auipc        t1, 199592
                  addi         s9, ra, 1609
                  sll          t1, s2, zero
                  slli         a1, s10, 29
                  sltiu        a7, t1, -1975
                  xori         a5, a1, 1730
                  sra          gp, t1, s2
                  addi         s3, s11, 379
                  nop
                  add          s6, t5, t0
                  slli         a1, a3, 13
                  slli         tp, t0, 7
                  slti         a6, t5, -636
                  and          s3, sp, ra
                  slti         s1, s5, -1883
                  sra          s4, sp, a3
                  srl          t6, s2, a6
                  or           a1, a5, s11
                  sll          s0, t4, a0
                  slt          t6, s2, s4
                  sub          t5, s7, s2
                  xori         a2, s7, -1524
                  slti         s6, a7, 2038
                  and          t6, s7, s9
                  ori          s5, a1, 966
                  srai         a4, s6, 4
                  lui          t1, 518997
                  sll          a4, a2, s4
                  or           t1, s9, zero
                  srl          a3, t4, zero
                  srai         s2, s3, 25
                  sltu         zero, t0, a7
                  srl          s6, t4, a1
                  andi         gp, s9, 681
                  srai         tp, a0, 30
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           t0, 0x75392d9f
                  li           s6, 0x0
                  li           tp, 0x0
                  li           s8, 0xffffffff
                  li           s3, 0x49412ccf
                  li           s11, 0x80000000
                  li           s2, 0x0
                  li           t1, 0x80000000
                  li           a5, 0x80000000
                  sub          a5, s2, t1
                  auipc        s6, 1025726
                  addi         t0, t1, 1197
                  sub          s2, a5, tp
                  sub          s2, tp, a5
                  add          t1, s3, s6
                  sub          s6, t1, a5
                  auipc        s2, 795560
                  sub          a5, t1, a5
                  add          s2, s11, s3
                  add          ra, s11, a5
                  nop
                  nop
                  sub          t0, t0, ra
                  sub          t1, a5, a5
                  lui          tp, 355136
                  addi         s11, t0, 1140
                  sub          t1, s6, s6
                  add          t0, t1, s2
                  nop
                  lui          a5, 763808 #end riscv_int_numeric_corner_stream_16
                  slt          tp, a2, a0
                  sltu         zero, s11, s3
                  and          a5, t6, a4
                  srai         a3, s0, 25
                  srl          tp, sp, a6
                  and          ra, s4, s3
                  or           t0, t0, a3
                  and          a2, zero, s5
                  srl          sp, s0, s9
                  slti         s3, zero, 465
                  xor          zero, a1, s9
                  xor          t3, gp, a0
                  srli         a3, s7, 15
                  sltu         a6, a7, t4
                  and          gp, ra, a1
                  sub          t0, t5, s4
                  xor          s6, tp, t4
                  andi         s4, a4, -178
                  addi         s8, s7, 1750
                  xori         t3, a0, 641
                  add          ra, ra, t2
                  sub          t6, t0, t0
                  ori          s11, a0, 760
                  slt          s11, s11, t0
                  and          s0, t3, s1
                  addi         s1, a1, 20
                  xor          t1, s10, tp
                  and          t4, s9, t4
                  xor          s4, sp, zero
                  xor          t5, ra, s7
                  srli         a1, sp, 15
                  nop
                  lui          t5, 796889
                  xori         s2, a5, -1532
                  slt          s5, t0, ra
                  sll          t3, s7, a5
                  ori          s10, a2, 845
                  sra          a1, s9, s11
                  slli         s0, s1, 15
                  slti         a4, sp, -448
                  sltiu        ra, s11, -850
                  slt          s4, a6, t5
                  ori          a4, s0, -859
                  add          a2, a4, s3
                  ori          gp, s6, -1999
                  sub          t3, s6, a3
                  andi         t5, a2, 63
                  sltiu        a4, a2, -1304
                  andi         s4, a1, 1938
                  add          a6, s5, a4
                  sub          tp, sp, a0
                  xori         a1, a2, -1303
                  nop
                  or           a5, sp, s5
                  andi         a4, t0, 178
                  sll          a4, gp, s11
                  xori         t5, a7, -1040
                  sra          s5, t0, ra
                  srai         s4, t3, 5
                  slt          a4, t5, t4
                  or           s0, zero, s9
                  sltu         ra, ra, a3
                  srli         gp, t0, 12
                  srai         a7, a5, 29
                  sub          s6, ra, s6
                  xori         t6, tp, -1543
                  srli         t5, t0, 4
                  sub          s11, s8, t0
                  xor          s10, t0, s5
                  auipc        tp, 29686
                  slt          s4, t5, a2
                  ori          ra, s5, 915
                  srl          tp, s3, a7
                  srli         s10, t6, 20
                  srli         t6, s3, 21
                  xori         s4, t2, -384
                  slt          ra, s1, a6
                  nop
                  auipc        tp, 760749
                  srai         s0, gp, 31
                  sltu         s10, gp, t6
                  sltu         a1, t4, t2
                  slti         a3, t3, 938
                  and          t5, s0, s1
                  ori          a3, a5, -39
                  sub          s0, s4, tp
                  xori         a4, s0, 1864
                  sra          a3, t1, a0
                  sltu         t1, zero, ra
                  xori         a7, t3, 714
                  auipc        gp, 799479
                  slti         a2, s7, 1800
                  ori          t5, t2, -559
                  or           a4, s2, s8
                  sra          t5, a3, s10
                  slli         gp, sp, 15
                  slt          t0, gp, gp
                  andi         s8, ra, 874
                  slli         t6, t5, 8
                  slli         s6, t4, 20
                  sra          a1, zero, s2
                  auipc        tp, 628396
                  lui          s9, 673598
                  sll          s3, t2, s9
                  slt          s2, t1, s3
                  sub          s11, s9, a0
                  add          s4, ra, a7
                  ori          s8, s2, 111
                  srai         gp, sp, 21
                  or           t1, s9, a5
                  andi         t5, s11, -1405
                  addi         s4, t6, 1067
                  lui          zero, 119482
                  slt          gp, s7, s7
                  xori         tp, s7, 521
                  srli         a7, s2, 14
                  addi         s3, a0, -687
                  nop
                  nop
                  sra          tp, a3, a6
                  sltu         t0, s9, a5
                  auipc        a3, 667537
                  auipc        a2, 65454
                  xori         ra, t6, 833
                  auipc        s5, 276243
                  auipc        sp, 194729
                  sltiu        t4, t3, 838
                  sra          s0, a5, s1
                  srl          s9, s11, t0
                  srai         s0, tp, 8
                  sltu         s2, s7, s5
                  sltiu        t5, sp, 1737
                  sltu         s8, s3, s9
                  or           s11, s8, t2
                  slli         s11, s2, 16
                  xori         s0, s6, -841
                  lui          s5, 383329
                  and          s11, s7, gp
                  sltiu        s10, a2, -1520
                  sltu         s6, t3, sp
                  sltu         s5, s3, ra
                  srai         a1, a5, 5
                  sltiu        s1, t6, 387
                  and          ra, s10, a5
                  add          sp, a5, s6
                  srl          t5, a5, s1
                  or           s3, a2, s5
                  addi         s1, s6, -845
                  sub          s10, s7, a4
                  add          a6, a6, s4
                  srli         t5, a4, 9
                  andi         s6, s2, -1250
                  sltiu        s2, s1, -705
                  sll          s10, a7, s6
                  xori         a2, a7, -987
                  or           s8, s7, a3
                  sltiu        a3, t5, 345
                  auipc        t5, 393407
                  slti         t5, a2, -1110
                  or           a7, s11, t2
                  sub          a3, t4, a6
                  addi         s3, s6, -304
                  or           sp, s4, a1
                  sra          a3, a5, s7
                  sltu         a5, a1, a1
                  slt          s2, t2, s0
                  xori         sp, a7, 1621
                  add          sp, a4, s10
                  andi         ra, t0, 312
                  addi         tp, a0, 1883
                  srli         s2, a7, 0
                  add          t5, gp, tp
                  xori         s8, a3, 2046
                  sltiu        gp, s6, -1286
                  and          s5, tp, a3
                  ori          a4, s4, 1804
                  sll          s11, s6, s3
                  or           s11, s3, t5
                  auipc        s5, 222437
                  nop
                  sra          t6, s10, s1
                  andi         tp, t3, 484
                  lui          a4, 497233
                  auipc        a5, 862019
                  srai         s3, a5, 23
                  slli         s1, t6, 15
                  andi         s8, a0, -104
                  sra          s8, a6, a6
                  srl          t5, t6, t4
                  slli         gp, t3, 18
                  add          s4, a6, s11
                  andi         s11, s1, 1698
                  and          t1, ra, s11
                  or           s3, t3, s6
                  andi         t3, t1, 104
                  addi         a6, s11, 361
                  xor          s0, t1, a2
                  slli         a2, a4, 8
                  xori         s2, t1, -153
                  lui          t1, 719636
                  sra          a4, t5, s7
                  sltiu        a6, s4, 1820
                  nop
                  addi         zero, s8, 514
                  sub          s2, a5, t2
                  sltiu        t5, s0, -1655
                  sltiu        s3, a0, 259
                  xor          ra, a0, tp
                  xori         s10, s1, -1907
                  xor          s9, s0, tp
                  slti         ra, s1, 1628
                  auipc        a7, 175799
                  slli         a2, t2, 2
                  and          tp, gp, s6
                  srli         a4, a5, 25
                  sltiu        a7, s4, -2007
                  srl          s11, t2, s6
                  slt          t5, sp, s2
                  nop
                  sll          a7, t2, a4
                  andi         ra, s4, -1441
                  sll          s2, sp, a3
                  andi         s1, s10, 521
                  srli         zero, s7, 11
                  ori          sp, a3, 1871
                  srli         ra, a6, 26
                  slli         t1, t1, 27
                  xori         s3, a0, 1264
                  srai         t6, s2, 26
                  sub          ra, s8, t0
                  lui          t5, 693625
                  sra          s0, t0, s8
                  sll          ra, s9, t0
                  lui          s2, 293241
                  auipc        tp, 591771
                  and          gp, s1, t6
                  slti         a7, zero, -1823
                  slli         t4, tp, 31
                  sub          s8, s0, a7
                  addi         s3, a4, 875
                  xor          sp, s6, s2
                  xori         s1, s1, -156
                  srli         a4, s0, 4
                  nop
                  lui          t5, 324076
                  and          a3, a0, ra
                  xor          s6, s9, a5
                  sub          t1, s6, s6
                  lui          s4, 721114
                  srl          s2, tp, s9
                  srl          a5, a3, t5
                  auipc        s3, 914112
                  add          a1, s11, s5
                  ori          gp, a3, 1380
                  and          sp, a7, t3
                  srl          s8, sp, s0
                  ori          s0, zero, 738
                  lui          a4, 103540
                  sub          s2, t0, gp
                  slt          s2, s5, t2
                  sltiu        t3, s9, -1270
                  add          tp, s0, gp
                  slti         tp, s11, 455
                  xor          s6, a1, s2
                  xori         s0, t3, 1167
                  slli         a1, a4, 28
                  xori         zero, s6, -1274
                  sltiu        s8, s2, 1349
                  sltu         s6, s3, t1
                  slt          t4, a3, s10
                  andi         a7, a7, -1004
                  and          s6, s6, s4
                  ori          s4, s9, 253
                  ori          t5, a1, -1343
                  xori         s8, s8, 444
                  srli         sp, s0, 24
                  srai         a7, s0, 1
                  addi         a6, s5, -690
                  and          t1, tp, s11
                  sltu         tp, s0, s9
                  sub          a4, s3, t3
                  xori         s8, t3, -859
                  auipc        a2, 832391
                  sltu         a7, s2, s9
                  ori          zero, s2, 1175
                  srai         a4, t0, 20
                  lui          s11, 1000656
                  nop
                  sra          s9, a5, s4
                  lui          t1, 616141
                  srai         a6, s2, 10
                  add          sp, a3, tp
                  xor          t4, s0, s1
                  srai         s6, a0, 11
                  andi         a3, s10, 494
                  srl          t0, t0, a5
                  sll          t3, a0, tp
                  or           s0, t2, s10
                  slli         t5, s11, 10
                  srli         zero, a3, 1
                  slti         s9, s2, -1840
                  slti         t4, s0, -1939
                  srai         s10, s8, 31
                  and          s4, s7, s8
                  sltiu        t6, a0, -1016
                  srai         s5, a1, 2
                  lui          t0, 210790
                  srl          t6, t0, s3
                  sra          s1, s2, a2
                  slli         a2, t1, 19
                  and          s11, zero, s4
                  sra          tp, s5, ra
                  ori          s3, s3, -1044
                  slti         s8, a0, 9
                  xor          s6, t4, s5
                  lui          s1, 428777
                  lui          ra, 988807
                  srl          gp, t5, s1
                  srai         a6, s3, 4
                  and          s4, s9, s3
                  xor          a5, s7, a4
                  sra          s4, s2, t6
                  xor          s0, a5, a1
                  and          a1, s7, zero
                  add          a1, s4, s6
                  sub          s8, s11, s9
                  srl          t5, gp, sp
                  ori          s3, s3, -8
                  auipc        s11, 527031
                  srai         s8, s8, 20
                  xori         a5, tp, -608
                  lui          s1, 727634
                  add          sp, a6, s10
                  add          a2, s2, s3
                  or           t1, a3, s3
                  or           s8, a7, s6
                  srai         s9, t6, 30
                  srli         s5, s3, 6
                  xori         s8, a3, -524
                  slti         s5, sp, -1627
                  and          t4, a4, a5
                  nop
                  lui          s5, 908562
                  xor          t0, a4, a5
                  sltiu        gp, s10, 950
                  ori          tp, s11, 1772
                  addi         a7, a6, -131
                  addi         s3, s2, -2043
                  srli         a2, s1, 5
                  sll          s9, s7, s4
                  slti         gp, s0, -1955
                  and          t6, t1, s2
                  xori         s4, s8, 2031
                  xor          a3, s0, a1
                  sll          tp, a2, a3
                  or           zero, t6, ra
                  sub          a7, t5, tp
                  slli         s5, s11, 24
                  slli         a4, zero, 8
                  xori         s2, s5, -273
                  sltu         a3, a3, t4
                  ori          a6, t2, -1487
                  srli         t6, a4, 9
                  auipc        t6, 254566
                  lui          a3, 244427
                  sltiu        s6, t5, 1173
                  xor          zero, a2, s1
                  nop
                  andi         s9, a1, 146
                  addi         s4, t6, -971
                  sub          t4, s8, t2
                  add          s9, s8, zero
                  andi         sp, t3, 1473
                  lui          a1, 373597
                  or           gp, ra, a6
                  xor          s9, sp, a1
                  xor          tp, s0, s0
                  sra          gp, s8, s5
                  addi         t0, tp, -104
                  and          tp, s5, t5
                  sltiu        s3, s7, -195
                  srai         s3, t6, 22
                  ori          zero, s5, -149
                  sub          s2, t0, ra
                  sra          a3, s10, s8
                  lui          a4, 231302
                  addi         a2, s11, 295
                  sltiu        gp, a2, 1734
                  addi         a6, gp, 1043
                  xori         s9, a4, 1820
                  or           s3, a2, s4
                  or           a4, sp, s4
                  nop
                  add          a6, tp, a1
                  srli         t0, t6, 21
                  srl          s3, ra, t2
                  slli         a7, t1, 21
                  addi         s1, a6, 1844
                  srl          a6, t3, s4
                  sltiu        s2, s1, -261
                  lui          t4, 157598
                  sltu         a7, gp, t4
                  sll          a2, zero, a5
                  nop
                  xori         a4, s4, -155
                  slli         a3, t4, 22
                  slt          t4, t4, tp
                  add          a3, s6, t2
                  add          ra, zero, s7
                  or           gp, t2, sp
                  and          zero, t1, zero
                  ori          zero, a7, -164
                  auipc        gp, 201256
                  sltiu        ra, a3, 1426
                  sra          a7, s2, s9
                  addi         s9, a2, -269
                  srl          s8, t4, a0
                  sltu         t0, s10, t2
                  and          a7, s1, gp
                  auipc        a5, 397152
                  slli         s1, s11, 22
                  or           s8, sp, a5
                  lui          s10, 827110
                  ori          a5, a5, -1052
                  add          t1, t2, s11
                  sub          a4, s5, s8
                  slli         s5, t6, 18
                  auipc        t4, 1012474
                  or           t1, s5, tp
                  sub          t0, a5, s10
                  ori          s11, a0, -127
                  lui          t4, 435232
                  slti         t3, s4, 1749
                  andi         s11, a4, 472
                  slli         s9, s9, 9
                  sub          t5, a4, sp
                  addi         s8, tp, -66
                  or           t4, t4, s10
                  sltiu        s2, a6, 463
                  srai         ra, s1, 8
                  slli         t3, sp, 21
                  sll          a5, s10, s3
                  sltiu        s0, sp, 46
                  srai         a2, s2, 1
                  xori         s0, ra, -827
                  sltu         t0, a1, s0
                  srl          gp, a7, s6
                  sra          s6, t6, t5
                  addi         t0, a5, 1085
                  andi         a5, s8, 431
                  lui          s2, 296771
                  srl          a1, a3, a0
                  srl          a5, a3, t0
                  lui          a5, 432874
                  slt          a5, s8, gp
                  sra          a2, t5, t3
                  sll          s11, t2, t0
                  sltu         s10, t2, a6
                  sll          a3, a7, s11
                  slti         a7, ra, -1789
                  sltu         a7, a3, s3
                  sltu         s1, a0, s4
                  slli         s1, a0, 25
                  lui          s1, 94864
                  xor          s5, t2, t3
                  slti         t0, a0, -990
                  sll          ra, a0, a0
                  sltiu        s1, s8, 2001
                  ori          t5, t5, 398
                  ori          t6, s9, 893
                  sll          a6, a3, zero
                  xori         a3, ra, 737
                  addi         t0, s2, 167
                  srai         a6, t5, 12
                  auipc        gp, 464649
                  srl          a2, s1, s2
                  nop
                  xor          s0, s7, t4
                  slt          s10, t1, a7
                  lui          s5, 680955
                  add          a3, s3, a2
                  srai         t1, a5, 24
                  sub          t0, s6, s7
                  sltiu        ra, t6, 999
                  slt          t4, s2, zero
                  slt          s8, t3, t3
                  srai         s11, sp, 27
                  or           t5, a1, a3
                  lui          t6, 208384
                  add          s10, s1, t2
                  slti         a1, t1, -530
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           ra, 0xffffffff
                  li           a7, 0x80000000
                  li           t4, 0xffffffff
                  li           a4, 0x80000000
                  li           tp, 0xffffffff
                  li           t5, 0xac6179e0
                  li           s4, 0x767e5bee
                  li           s3, 0x80000000
                  li           s2, 0xece52c6b
                  sub          ra, s4, t4
                  nop
                  nop
                  auipc        ra, 428053
                  auipc        ra, 849240
                  add          ra, ra, t4
                  sub          s2, ra, s0
                  auipc        s3, 413418
                  sub          tp, ra, tp
                  add          t5, a7, s3
                  lui          s0, 1012590
                  nop
                  lui          tp, 675866
                  auipc        t4, 755805
                  auipc        a4, 1039712
                  lui          a7, 259622
                  add          s2, ra, t4
                  addi         s4, s3, -12
                  lui          a4, 974519
                  lui          tp, 387676
                  sub          s0, ra, ra
                  sub          s3, s2, s0
                  lui          s2, 992080
                  auipc        s2, 400235
                  add          a4, s0, ra
                  add          s3, s0, a4
                  lui          a4, 660645
                  sub          ra, s4, s2
                  lui          t5, 987410 #end riscv_int_numeric_corner_stream_18
                  srai         s11, t2, 2
                  sltu         a3, a2, s4
                  sltiu        a2, s6, 1863
                  and          a4, s8, t3
                  sltu         s0, s11, a5
                  or           t1, a5, ra
                  slli         s0, s11, 17
                  addi         s11, s10, 746
                  slti         s4, t6, -1390
                  srli         s8, a7, 3
                  nop
                  ori          t3, zero, 1814
                  xori         s8, a2, -1025
                  slli         a1, t0, 0
                  srli         a2, s3, 28
                  andi         a1, a1, -1732
                  srai         a2, a7, 31
                  slli         a5, s11, 18
                  sll          gp, a7, a5
                  nop
                  slti         zero, zero, -1940
                  xori         a7, a4, 645
                  auipc        sp, 889080
                  sltiu        ra, s6, -1402
                  nop
                  auipc        ra, 355027
                  auipc        a3, 1022170
                  lui          a1, 823806
                  add          s0, t3, s7
                  sub          tp, t6, a3
                  sra          a6, s1, a5
                  srli         t5, s6, 17
                  slli         s10, ra, 23
                  xor          t5, tp, a3
                  slli         ra, gp, 9
                  sub          gp, s10, s3
                  sltu         s4, t4, s0
                  srli         a2, s7, 22
                  xori         a7, s10, 1668
                  add          t3, s7, tp
                  andi         s9, s9, 1911
                  slti         t3, s0, 2034
                  add          a1, a6, t4
                  srai         ra, s6, 29
                  lui          t4, 963234
                  slt          a7, tp, ra
                  andi         s10, s11, -531
                  addi         s6, t1, 299
                  xor          s0, zero, s10
                  lui          s9, 650310
                  srai         s9, s6, 17
                  add          t0, a2, s11
                  andi         s10, s1, 641
                  xori         s4, zero, -1472
                  addi         t1, a5, -1653
                  addi         gp, t5, 1478
                  sltu         s6, s11, t2
                  slt          zero, t1, s1
                  xori         tp, s7, 1077
                  sra          a6, s2, a2
                  sltu         a5, gp, s1
                  or           tp, a7, sp
                  add          s10, gp, t0
                  sub          a6, a6, zero
                  srai         gp, s7, 10
                  ori          s11, a0, 942
                  xor          s4, a4, s7
                  nop
                  ori          t3, s4, -911
                  and          t3, a0, zero
                  slt          tp, t0, a0
                  addi         a5, s3, -921
                  xori         s11, a6, 1404
                  sltu         a2, s0, t5
                  sra          s6, t1, a6
                  srl          t3, s10, t6
                  and          s9, s8, ra
                  sub          sp, t5, tp
                  sra          tp, s5, t5
                  and          s0, s8, s7
                  xor          a4, s1, t4
                  xor          t1, zero, t2
                  add          a6, t6, s8
                  sub          a3, sp, sp
                  sub          s11, a7, t1
                  sltiu        t0, s8, -1632
                  andi         a6, a5, -272
                  and          t0, a4, s11
                  xor          s9, a7, tp
                  sltiu        ra, zero, 1527
                  add          s10, a1, t5
                  or           t4, s6, a1
                  sub          tp, gp, ra
                  and          a5, s7, s3
                  add          s11, s10, zero
                  auipc        t6, 371711
                  sltiu        s6, t3, -1446
                  srl          s2, s9, tp
                  sra          a3, s6, t5
                  and          gp, a2, t1
                  sll          t1, s3, t4
                  sra          a4, gp, s8
                  lui          zero, 92642
                  slli         s10, a5, 21
                  slli         a6, a3, 6
                  and          tp, s11, a4
                  or           t3, a2, s5
                  sub          a7, zero, zero
                  srli         a6, s7, 22
                  or           a4, t4, a4
                  xori         s9, sp, 1319
                  or           zero, tp, s10
                  srai         t1, t1, 19
                  sra          s10, a5, a5
                  srai         a5, s11, 13
                  and          a2, t3, a0
                  ori          s1, ra, 556
                  or           a3, a0, t4
                  sll          s3, a1, s3
                  lui          gp, 613665
                  xor          s9, t0, a3
                  srli         gp, sp, 7
                  lui          a6, 322778
                  srai         s2, t4, 24
                  lui          s2, 734874
                  srl          t1, t1, t3
                  and          tp, s6, t2
                  sra          a5, a3, a0
                  sub          sp, ra, a4
                  and          s8, s2, t2
                  slti         s8, s9, -39
                  ori          s11, s11, -324
                  and          s4, a4, a3
                  or           t0, a4, tp
                  sra          s9, a7, s11
                  addi         s1, t1, -2
                  andi         a6, s7, 500
                  lui          t3, 948939
                  sll          s11, s8, t6
                  slli         t1, s7, 29
                  xor          ra, s0, gp
                  sub          a6, t6, t3
                  xor          s10, s8, s5
                  slli         s3, s8, 6
                  srai         a4, s2, 26
                  and          s0, t2, a1
                  nop
                  sll          sp, tp, a7
                  auipc        ra, 743231
                  lui          a6, 153508
                  or           zero, t4, s6
                  ori          a7, t4, 1662
                  sltu         s3, t6, gp
                  slti         s8, s2, -362
                  and          s5, a2, sp
                  or           t1, t0, t4
                  srl          t0, s7, ra
                  xor          s8, a5, zero
                  sll          a5, a0, s9
                  slt          s10, sp, a5
                  srl          a7, a0, t5
                  addi         s0, ra, 75
                  sra          a5, s6, a4
                  sltu         s3, t3, a2
                  addi         s1, t6, 2047
                  sltu         a3, t1, ra
                  auipc        a4, 118443
                  or           t0, a3, s0
                  sra          a5, gp, a6
                  srai         t1, s6, 29
                  nop
                  sra          s1, a3, s0
                  sltiu        s4, a0, -499
                  srai         a3, a0, 10
                  and          s8, a3, s3
                  sltiu        s3, ra, 1317
                  sltu         s8, tp, zero
                  sltiu        s4, zero, -1978
                  lui          t4, 804640
                  add          s4, t3, ra
                  andi         sp, t6, -1658
                  slti         s11, s5, -1067
                  addi         s1, a3, -1673
                  slti         s1, a4, 1638
                  srli         t1, a7, 15
                  andi         t5, s0, 577
                  addi         t3, a7, -1371
                  srai         a5, t2, 18
                  sltiu        s9, s2, 1739
                  auipc        a6, 407772
                  srai         a3, s7, 10
                  slti         s8, sp, -1800
                  sll          a5, s3, a2
                  sub          s2, t4, ra
                  srli         s8, s1, 17
                  xori         s6, t3, 662
                  xor          s3, s6, t4
                  ori          tp, a2, 632
                  slt          t5, a2, sp
                  nop
                  and          s6, t2, s6
                  srl          a2, a4, s10
                  slti         s6, t4, 245
                  andi         s0, s7, -1487
                  slti         s3, ra, -277
                  ori          a4, s2, -1034
                  slt          t6, s8, a1
                  sltiu        a4, t6, 967
                  slt          a2, s2, t6
                  sub          s5, t5, sp
                  slti         t3, t4, -523
                  auipc        t5, 316509
                  xor          a3, s11, s4
                  sub          tp, s1, s5
                  sub          gp, t5, s10
                  xori         a1, s11, 1112
                  lui          s4, 543638
                  slli         t0, t3, 4
                  lui          s6, 659292
                  and          ra, t1, a7
                  srai         a6, a5, 26
                  xori         s0, s0, 1360
                  add          zero, a7, s6
                  lui          s11, 1043188
                  ori          a6, t5, 447
                  andi         t1, s1, -254
                  nop
                  add          s0, t3, s2
                  sltiu        a1, s3, -1879
                  andi         s11, s5, -1507
                  add          s6, ra, gp
                  or           sp, a6, a2
                  addi         a6, s11, -1354
                  andi         t0, a2, -144
                  srai         a2, s11, 12
                  nop
                  addi         t3, a7, -1807
                  auipc        a4, 128287
                  lui          t4, 72461
                  auipc        sp, 838624
                  lui          s11, 499247
                  or           a4, gp, s7
                  or           s3, t5, s7
                  slli         s3, s7, 4
                  ori          s8, a1, -1065
                  xor          t3, a6, gp
                  ori          a3, zero, 112
                  sra          a4, s7, s8
                  sll          t3, a6, t0
                  srli         gp, s6, 10
                  xor          t3, t0, a3
                  sltiu        a7, a7, -152
                  ori          s8, s9, 1054
                  andi         t0, a1, -1443
                  or           t4, t3, zero
                  nop
                  sltiu        s10, zero, -1324
                  srai         s1, t6, 14
                  sltu         a3, zero, t1
                  sra          a1, zero, ra
                  sub          a4, s10, s6
                  sltiu        t0, s7, -1229
                  xor          a4, a4, a1
                  andi         a4, s4, 825
                  slti         sp, ra, -763
                  andi         s6, t6, 130
                  slli         a7, t0, 11
                  nop
                  xor          t1, a7, t3
                  sltu         t6, sp, a7
                  sra          t5, t2, ra
                  sltiu        s9, t4, 1672
                  auipc        t5, 603101
                  lui          t4, 392993
                  lui          a4, 461483
                  slt          t1, s5, s9
                  sll          t1, s5, t3
                  or           t6, t6, a1
                  sll          ra, t3, t4
                  and          a4, zero, t2
                  slli         tp, s8, 8
                  sltiu        s5, a6, 284
                  addi         gp, t5, -1226
                  srli         t5, a6, 18
                  add          s3, a2, s11
                  auipc        a3, 447770
                  slti         a2, a3, 825
                  and          gp, gp, a1
                  addi         s1, a6, -1109
                  addi         t1, a5, 1538
                  lui          a3, 412703
                  sub          s10, t3, sp
                  addi         s8, a3, 342
                  srai         t1, s10, 0
                  auipc        tp, 557979
                  sltiu        a6, t6, -931
                  addi         t3, s3, 192
                  srli         s3, t6, 1
                  sltu         ra, a6, s0
                  srl          t1, t2, t3
                  srli         s1, s4, 17
                  andi         a6, a6, -808
                  slt          s0, s4, s11
                  and          s3, t5, zero
                  sub          s5, s8, t1
                  add          sp, sp, t3
                  sra          t6, t6, s8
                  add          sp, s3, zero
                  sltiu        t3, t5, 740
                  srli         s6, s4, 29
                  slti         t4, s4, 1470
                  andi         s10, s2, 1157
                  auipc        s5, 223836
                  addi         ra, s5, 1999
                  auipc        a3, 618730
                  andi         s2, s9, 1618
                  slli         s1, a5, 24
                  or           s10, t4, t3
                  xori         a7, ra, 1451
                  or           t4, a7, s7
                  andi         a5, a2, 230
                  lui          t6, 908813
                  sll          t6, t5, s8
                  ori          t6, s0, 512
                  slli         t6, t2, 13
                  slti         a7, gp, -1339
                  lui          s1, 873491
                  srli         s10, t6, 19
                  ori          a5, s5, -1208
                  sub          t0, s10, a1
                  auipc        a6, 728115
                  add          t4, t4, s2
                  sra          a7, gp, a1
                  andi         s9, s8, -1150
                  nop
                  lui          a3, 153688
                  slli         s1, t5, 5
                  srai         tp, s6, 26
                  xor          a2, a6, s4
                  xori         zero, s6, -889
                  slli         t5, a0, 10
                  auipc        t1, 374084
                  lui          s3, 740857
                  srai         a4, t0, 0
                  srli         a4, s6, 12
                  srli         ra, t5, 6
                  sub          s4, s9, ra
                  add          s2, t1, tp
                  andi         s11, tp, 1373
                  slt          a4, a3, t1
                  and          s1, gp, s7
                  sltiu        s8, tp, -669
                  addi         s9, a4, 1973
                  andi         s9, t1, 1393
                  sra          tp, t1, s8
                  xori         s4, s7, 1242
                  sltu         a1, s6, t2
                  srli         ra, a0, 10
                  addi         s11, t0, 1465
                  add          a6, s11, sp
                  addi         tp, s9, 333
                  sltu         s10, a5, a2
                  xor          t5, s3, a1
                  addi         s2, a6, -1112
                  sll          s11, a7, a7
                  sra          s8, ra, a1
                  andi         t0, a5, 1962
                  andi         s6, gp, -1384
                  or           a3, zero, s7
                  sltu         a7, sp, s9
                  slt          a4, a7, s3
                  slt          s3, a1, t5
                  auipc        s6, 317626
                  sltu         s5, a4, zero
                  add          a1, a1, a4
                  andi         s2, s8, 26
                  slli         a4, ra, 30
                  sra          a3, s5, tp
                  lui          s8, 561245
                  srli         gp, t2, 23
                  xor          t5, t5, gp
                  sra          s3, zero, s3
                  nop
                  sra          t6, t5, a1
                  andi         s5, a7, -1224
                  add          t1, a0, s9
                  lui          s10, 239622
                  srl          s4, s0, s4
                  ori          s8, zero, 340
                  srai         s0, t1, 10
                  xor          s8, a6, a6
                  slli         t4, t2, 7
                  xori         s6, s9, -15
                  lui          a5, 807722
                  sll          t4, s9, t5
                  sltu         s8, gp, s1
                  xor          a6, s8, s8
                  nop
                  andi         a5, s0, -702
                  xor          t3, s5, a5
                  ori          s0, s8, 1102
                  slti         a2, a6, 1556
                  ori          s3, a2, -1314
                  lui          sp, 839302
                  sra          s10, a5, t0
                  add          a1, s0, s1
                  addi         a2, a4, -360
                  sub          a5, s4, s8
                  or           sp, t6, a6
                  srl          t5, s7, s1
                  slli         s9, a4, 12
                  sub          s10, a1, tp
                  auipc        s6, 749142
                  sub          zero, a0, tp
                  lui          sp, 58536
                  xori         ra, s2, 1410
                  or           s10, t2, t6
                  sra          a2, a1, t3
                  andi         a1, gp, 426
                  slli         t4, s1, 7
                  xori         a1, s5, 367
                  slli         t5, a1, 22
                  lui          s11, 910519
                  lui          ra, 10183
                  lui          a3, 319342
                  xor          s2, a7, sp
                  slt          s3, t4, t6
                  sltiu        s5, tp, -882
                  sra          a3, s8, s11
                  sub          s1, s11, s5
                  slt          a2, a5, t4
                  sll          t1, zero, gp
                  sra          s8, s8, s11
                  srai         a1, s11, 27
                  sub          t0, t5, a7
                  add          s8, t1, s9
                  srli         s0, s2, 1
                  slti         sp, zero, -1247
                  srli         t0, sp, 9
                  or           t6, s8, t2
                  slt          a5, s7, t6
                  ori          s2, tp, 589
                  slti         a3, zero, 1424
                  slt          a7, s7, s0
                  ori          t1, s2, -1978
                  srli         s0, t3, 13
                  srai         ra, s8, 6
                  srl          a1, s4, ra
                  ori          a5, s6, -1650
                  slli         ra, t1, 28
                  srai         sp, s0, 14
                  auipc        s0, 629294
                  addi         s6, s6, 1856
                  sra          t3, a2, t1
                  add          tp, s3, sp
                  slli         a6, s10, 3
                  sltu         zero, sp, a3
                  xori         s2, s11, -42
                  or           s11, gp, a5
                  srli         tp, t3, 18
                  nop
                  xor          s0, s11, s9
                  srai         a7, s0, 19
                  addi         zero, a5, 96
                  nop
                  slt          s2, tp, zero
                  slti         s2, tp, 1849
                  srli         a6, gp, 24
                  xor          a7, t0, s5
                  xor          s8, s3, s2
                  xori         s1, sp, -670
                  addi         s11, s9, -116
                  slli         s6, t1, 6
                  sra          a6, s5, t5
                  nop
                  srai         a7, a3, 11
                  or           a6, s9, tp
                  sub          tp, s5, t0
                  sll          s2, s2, gp
                  or           ra, tp, t6
                  srli         t4, s9, 22
                  and          s4, a7, s1
                  nop
                  srli         t6, t1, 21
                  xor          sp, t1, a2
                  xor          t3, t2, s3
                  xori         ra, s1, -1338
                  sra          s11, a6, s8
                  sltu         t0, t1, t4
                  srl          a7, t6, a5
                  sll          s6, s3, s9
                  srli         t0, s2, 22
                  addi         t6, a7, 1507
                  xor          t1, t5, zero
                  nop
                  sll          gp, t2, zero
                  ori          a2, gp, -1717
                  slti         t0, a7, -619
                  sltiu        a5, s0, 1140
                  or           s1, s10, t4
                  slt          gp, ra, zero
                  xori         s1, zero, 1741
                  srli         s1, a5, 6
                  xor          t3, s2, s10
                  srai         a1, a7, 1
                  ori          zero, s2, -1261
                  sltiu        s9, a4, 1234
                  lui          s2, 324764
                  or           s1, gp, s8
                  lui          a3, 578365
                  or           s1, a5, zero
                  or           t4, s0, s1
                  addi         t6, zero, -815
                  addi         t1, s3, 1299
                  slli         gp, a6, 31
                  auipc        t1, 287404
                  andi         s3, gp, 2029
                  auipc        a3, 332112
                  ori          s10, s5, -417
                  srl          ra, t5, t0
                  slt          s6, s0, s5
                  ori          sp, a5, 1380
                  slt          t5, t1, a5
                  andi         a4, s0, -15
                  andi         t6, s2, 1305
                  slt          s3, s5, a0
                  andi         t6, s5, -1832
                  addi         ra, s0, 1563
                  slti         s5, s0, 1496
                  sltu         tp, a7, a5
                  srli         a3, t5, 16
                  xori         zero, ra, -1070
                  slli         t3, t6, 1
                  sll          s2, s6, s7
                  xori         s8, zero, 457
                  add          tp, a1, gp
                  nop
                  srl          zero, s7, sp
                  srl          t6, s7, ra
                  slti         zero, a4, -1345
                  andi         s2, tp, -1008
                  xori         t3, s10, -1075
                  auipc        s0, 235592
                  srli         a2, s5, 14
                  lui          t1, 149995
                  slli         s1, s1, 21
                  ori          a2, s7, -115
                  andi         a3, a0, -1897
                  add          t1, tp, a5
                  slli         gp, t4, 2
                  add          s4, s9, a7
                  andi         s6, t3, -1120
                  sra          a2, ra, s10
                  srai         s6, s9, 12
                  srai         t3, tp, 0
                  srai         s4, a5, 10
                  lui          s11, 885369
                  xor          t3, sp, t5
                  and          s2, s3, s0
                  srl          sp, s2, sp
                  andi         s11, s6, 1373
                  or           t1, s4, t1
                  sll          s4, a7, s7
                  srai         ra, t4, 1
                  sra          a5, s6, s5
                  slti         t3, t4, 39
                  and          s11, s9, s6
                  sra          tp, a7, tp
                  or           s3, t6, s10
                  addi         s6, s11, -1941
                  xor          s3, s7, a6
                  xor          a5, t0, t1
                  slti         s10, t1, 348
                  slt          ra, t3, s9
                  srl          a3, a1, s9
                  add          t3, a5, t0
                  slt          s1, s9, s5
                  lui          t5, 259011
                  sub          a7, zero, s0
                  lui          s5, 483186
                  ori          a4, a4, -348
                  lui          t0, 987056
                  sltu         tp, s3, tp
                  sra          s8, a6, t6
                  andi         s4, ra, -1771
                  addi         t5, t0, -1613
                  xori         a1, a2, -794
                  xor          s10, a2, a5
                  auipc        t4, 244042
                  auipc        a7, 747647
                  sub          s3, ra, t0
                  addi         t1, t4, 1617
                  srai         gp, s4, 4
                  slti         sp, t5, 1663
                  andi         s9, t1, -1770
                  sra          a2, a7, sp
                  sltiu        a3, s7, -1639
                  or           s1, s7, s0
                  xor          s6, s9, t2
                  slti         s6, a2, 16
                  srli         s0, t6, 24
                  sra          ra, sp, a6
                  sub          t1, t6, a0
                  or           t0, s8, s9
                  lui          ra, 679669
                  srai         tp, s9, 12
                  and          a7, a1, s0
                  srl          t0, a4, gp
                  addi         t0, t2, -900
                  sltu         a4, s2, sp
                  slti         t3, tp, 1530
                  or           sp, sp, zero
                  ori          s10, a0, 21
                  nop
                  or           a1, zero, t3
                  sll          tp, t0, a2
                  srai         s5, t6, 23
                  xor          s10, gp, s5
                  sra          s2, s3, t0
                  lui          s3, 683611
                  sra          s11, s7, zero
                  lui          a7, 847903
                  slli         a3, a6, 14
                  srai         s3, a3, 27
                  sltu         a1, s8, t0
                  lui          s3, 833830
                  sra          a6, a7, t0
                  add          t5, s11, s7
                  and          a6, t6, t2
                  nop
                  srai         sp, zero, 11
                  srai         s3, a4, 20
                  nop
                  addi         a5, a4, 1141
                  srai         s1, t1, 10
                  add          s3, s3, s0
                  and          a5, t4, t6
                  sra          s10, t6, ra
                  xor          s4, s1, a1
                  xor          ra, s9, t5
                  sra          s5, a4, t3
                  nop
                  sra          s3, tp, s8
                  xori         ra, a0, -1754
                  add          a7, zero, t0
                  xor          s5, s2, t3
                  sltiu        a7, a1, 854
                  sll          s5, t2, ra
                  sltu         a4, a3, s3
                  slli         tp, t3, 12
                  auipc        ra, 454305
                  xor          s1, a3, ra
                  xori         t5, ra, -1689
                  slli         s4, s6, 2
                  srl          s10, a2, ra
                  srl          zero, s7, t4
                  srai         s11, a3, 28
                  sltu         s6, s10, s9
                  sltiu        t0, t2, 1698
                  xor          t1, a3, s9
                  sll          s5, a5, s6
                  xori         s9, t4, 1137
                  sltiu        s10, s1, 1705
                  srl          a1, s9, s8
                  xor          a4, a3, s4
                  sll          s1, zero, tp
                  add          s0, a2, sp
                  sltiu        a5, s8, 183
                  xor          zero, a7, a4
                  sub          gp, a6, s10
                  srai         t4, s10, 21
                  slli         t4, s5, 20
                  srai         s2, gp, 3
                  addi         t5, a3, -684
                  ori          ra, t4, -854
                  nop
                  xor          ra, s5, s0
                  ori          a4, gp, -656
                  srai         s9, t0, 23
                  ori          s6, s9, -1041
                  addi         t4, a4, 1894
                  sltu         s0, s8, t3
                  slti         ra, s8, 1455
                  sltiu        s5, t5, -1294
                  sll          gp, a5, s0
                  srl          s6, tp, zero
                  andi         t4, t6, 719
                  xori         t0, s9, 101
                  or           s1, t6, s9
                  slt          tp, s5, a7
                  slt          a5, a4, tp
                  sltiu        t6, a5, -154
                  srli         sp, t2, 2
                  srli         s9, s5, 12
                  slli         a7, sp, 6
                  xori         t3, s10, -377
                  slli         s4, s0, 30
                  or           a4, t1, tp
                  addi         tp, s2, 1836
                  xori         s3, s2, -1807
                  lui          t0, 116569
                  srai         sp, tp, 3
                  sltiu        t3, t5, 280
                  lui          s1, 334654
                  slti         s6, t1, 1488
                  xor          s4, s2, s3
                  andi         t1, t0, 43
                  slti         tp, a6, 637
                  slli         t4, a3, 20
                  srai         s11, a3, 9
                  and          a1, a4, t3
                  sltiu        a6, t2, 625
                  slli         s11, t6, 20
                  sltu         gp, t6, s6
                  slt          s8, zero, a2
                  xor          sp, s8, a5
                  andi         t6, a5, 1512
                  lui          a3, 937456
                  sub          tp, s8, sp
                  sltu         t1, t2, s4
                  srli         zero, gp, 15
                  add          s11, s11, a4
                  xor          s4, a0, s6
                  sltu         s1, t3, s11
                  sltiu        a1, t2, -222
                  auipc        s2, 962279
                  sub          s2, s11, t1
                  srl          s5, t4, t0
                  srli         ra, t5, 22
                  and          a2, a4, sp
                  sll          s1, ra, t2
                  nop
                  srli         a3, t6, 15
                  sll          t6, s3, zero
                  srl          s8, s5, t0
                  andi         t4, a7, -754
                  xori         tp, a1, -1913
                  srli         sp, a2, 30
                  nop
                  srai         s2, a6, 24
                  srai         s10, zero, 12
                  nop
                  xor          s3, t5, t5
                  slli         ra, t2, 28
                  lui          s4, 509698
                  and          a7, s6, t1
                  and          t4, a5, a0
                  ori          s9, t1, 1509
                  sll          a4, a0, s4
                  lui          t3, 865342
                  srli         a5, s3, 31
                  or           zero, a7, s2
                  nop
                  or           t0, s5, t4
                  xori         gp, ra, 1635
                  ori          t3, a5, 485
                  srli         a3, s9, 24
                  or           s5, tp, a4
                  ori          a2, s8, 305
                  andi         a4, s6, 1917
                  slli         a1, a7, 2
                  add          s6, s4, a4
                  auipc        a6, 699080
                  xori         zero, ra, -925
                  sra          t1, s7, sp
                  srai         a4, t6, 1
                  andi         a2, a5, -1057
                  andi         s3, t2, -290
                  slt          s0, a5, a2
                  andi         t4, s0, 665
                  slti         tp, s10, 475
                  srli         a7, sp, 7
                  srai         s5, sp, 0
                  add          s8, s10, a6
                  slt          a3, a4, s10
                  andi         t4, s7, 984
                  srl          a7, a1, a3
                  or           t0, s6, ra
                  and          s6, a3, s1
                  slt          zero, s9, a2
                  slti         a7, t2, -1800
                  sll          t5, ra, s3
                  and          a7, t1, tp
                  sll          t0, a5, gp
                  xori         a5, ra, 1682
                  sra          a1, gp, a1
                  ori          s8, s8, 383
                  slti         s1, s5, 630
                  sltu         s6, s2, s1
                  sub          t0, a5, a1
                  sra          a5, a2, s11
                  xor          a6, zero, a4
                  srli         s8, sp, 12
                  slt          s4, s7, s2
                  slt          t3, t5, gp
                  xor          s11, t4, t1
                  slti         t3, t4, -754
                  sltiu        a7, s5, 324
                  srai         s8, a0, 6
                  lui          tp, 789521
                  and          t6, a0, s7
                  xori         a4, a7, -577
                  or           t4, t5, s3
                  srli         a3, s6, 22
                  slti         s0, ra, 1278
                  ori          sp, t1, 1420
                  xori         a1, s3, 1637
                  sll          a7, a0, a7
                  nop
                  nop
                  srai         s9, a6, 2
                  add          s2, s11, s5
                  sra          s4, t6, s3
                  sub          s6, t3, a4
                  nop
                  slt          a4, t3, s8
                  slli         s4, s1, 6
                  add          t4, zero, zero
                  ori          t5, s3, -1703
                  xor          a3, s11, s8
                  slli         ra, zero, 5
                  srai         s4, t1, 9
                  slti         t6, t6, -826
                  srl          s6, a2, a2
                  auipc        s11, 748599
                  srl          a7, gp, a3
                  sltu         s5, sp, t3
                  xori         a6, t2, 1981
                  nop
                  slli         t6, ra, 16
                  sll          t4, s3, sp
                  sll          a6, a3, s8
                  and          s6, s10, t0
                  add          a7, t1, t3
                  xor          t4, sp, s6
                  sra          s9, a6, s4
                  xor          s1, s2, t1
                  and          t3, a1, tp
                  lui          t1, 773601
                  sra          a6, a3, t5
                  slt          s5, zero, sp
                  ori          s2, t1, -1386
                  slli         s1, s11, 0
                  sll          t1, s5, s9
                  or           s0, a4, s0
                  or           s8, t2, t1
                  nop
                  srl          s5, s3, s2
                  sltiu        s6, s2, 1172
                  sub          t4, a3, a3
                  slt          s4, t5, t2
                  sra          s11, t2, zero
                  slli         a2, ra, 22
                  srli         gp, s8, 10
                  or           s2, a0, a5
                  and          a5, t1, s4
                  xori         a6, s6, 735
                  xori         a6, s7, 714
                  nop
                  add          a2, gp, t4
                  sub          s8, s5, s0
                  ori          t5, s3, -1914
                  add          sp, s10, s0
                  nop
                  slti         a2, s7, -22
                  ori          a6, s10, 523
                  slli         zero, tp, 6
                  add          t3, s0, s11
                  addi         s11, s5, -646
                  and          s10, s1, zero
                  sub          s9, s3, t3
                  slti         a6, s9, -1408
                  addi         tp, t4, 658
                  ori          s0, t3, 1452
                  lui          a2, 477076
                  andi         a1, s2, 1690
                  lui          a5, 666521
                  auipc        zero, 730571
                  slt          s10, t5, t6
                  slt          t0, tp, s8
                  sltu         t5, t0, a7
                  lui          t4, 264735
                  lui          a2, 147759
                  sltu         s3, t1, t6
                  add          ra, a6, s7
                  addi         t3, sp, 1229
                  andi         a7, s1, -487
                  sltu         a1, a3, a5
                  slt          t1, a5, t0
                  xori         s8, s6, -869
                  sltiu        a3, a5, -1095
                  ori          s1, s6, -350
                  sra          s10, t2, s7
                  nop
                  srai         a4, s10, 0
                  sltiu        s0, s6, 285
                  srai         a7, gp, 6
                  add          tp, t0, t3
                  slti         a1, t6, -1819
                  ori          s6, t1, 1881
                  auipc        a1, 262156
                  sltu         t4, a7, gp
                  slti         tp, a1, 1193
                  slli         s6, a6, 2
                  add          s10, s1, tp
                  sltiu        s5, tp, 917
                  slti         s2, a5, -1530
                  addi         ra, ra, -1263
                  ori          ra, a6, -3
                  sltu         t4, zero, s6
                  andi         s5, s5, -270
                  xor          sp, t5, s8
                  nop
                  and          a5, zero, a1
                  nop
                  srai         a1, a7, 1
                  srli         sp, a2, 24
                  sltu         a6, s6, s9
                  slli         zero, s8, 0
                  sltiu        s2, s7, 202
                  xori         s4, s10, 937
                  nop
                  ori          s4, s11, 947
                  xori         s5, tp, -486
                  sltu         s5, a2, a4
                  auipc        s1, 692562
                  add          ra, s2, a6
                  andi         ra, s6, 102
                  srai         a3, s9, 11
                  andi         a7, s4, 385
                  and          t6, s5, tp
                  sub          t1, s2, ra
                  sltiu        t5, t0, 398
                  sll          s3, s3, a0
                  or           s10, a5, a1
                  lui          s3, 1042758
                  xor          t0, zero, s9
                  xori         t3, s10, 1288
                  and          sp, t1, tp
                  sub          s5, s3, t1
                  and          t6, s4, a6
                  xor          t5, t2, gp
                  sltu         a5, t4, t2
                  lui          a1, 626869
                  auipc        s10, 462544
                  xori         a4, a0, -315
                  or           a7, s8, a1
                  addi         t3, s2, 325
                  sltu         t1, t5, a4
                  srl          ra, gp, s7
                  nop
                  auipc        a6, 50625
                  slt          s4, s0, a3
                  sll          s6, a2, s1
                  sll          t3, t1, t3
                  addi         t4, s3, -1607
                  sltu         sp, t5, s2
                  or           s6, a3, tp
                  lui          s10, 481414
                  sll          t0, s4, tp
                  auipc        zero, 604486
                  slli         a3, s7, 0
                  auipc        tp, 934086
                  sll          s10, t1, gp
                  xori         a6, s4, 1655
                  and          t5, s8, s1
                  slt          t6, s1, sp
                  sltu         a5, a4, s6
                  or           sp, t1, t1
                  slti         t4, s10, -432
                  andi         a1, t1, 1184
                  srli         s3, t3, 27
                  srl          s5, a5, t4
                  nop
                  srli         a3, t3, 6
                  ori          s8, zero, -364
                  and          a6, a3, s2
                  lui          s6, 211244
                  andi         t0, ra, 33
                  andi         s10, a6, 413
                  slt          s11, s11, a4
                  srli         s5, s11, 2
                  sltiu        s6, s6, 1188
                  sltiu        t4, s9, 1960
                  slti         s4, a4, -1996
                  sra          s9, s1, t2
                  sll          t3, t0, a7
                  slti         ra, a3, -1580
                  slt          s10, s9, s2
                  ori          a3, t2, 883
                  auipc        s6, 358782
                  srl          a3, t1, t2
                  sltiu        a3, t3, -1758
                  xori         s11, a4, -1207
                  slti         s6, a5, 1680
                  slli         s10, t2, 24
                  andi         s2, sp, 246
                  sll          s3, t6, s11
                  and          s11, t5, t2
                  sra          a7, a5, a2
                  sltiu        sp, t4, 1533
                  slt          a1, t4, a3
                  slti         t4, t6, -696
                  slt          t0, t6, a5
                  and          s2, tp, s2
                  sub          t6, gp, a0
                  slli         s11, s9, 3
                  andi         a5, s2, 1767
                  xor          tp, s8, tp
                  auipc        a1, 647856
                  lui          s6, 138598
                  srai         t1, t6, 2
                  sltiu        a1, ra, -1704
                  ori          s0, a6, 1359
                  xor          t4, t4, s5
                  sub          t6, sp, sp
                  slt          tp, ra, s9
                  sltiu        tp, a1, 535
                  and          sp, a6, s8
                  sra          t3, a3, s9
                  nop
                  srai         zero, s6, 19
                  slli         s11, t5, 28
                  srl          ra, t5, a3
                  srai         a3, t1, 0
                  xori         t3, t5, -454
                  sra          gp, t5, s2
                  and          t0, t0, s1
                  sll          sp, s9, tp
                  sra          t5, a7, s4
                  sltiu        ra, t1, -892
                  sltiu        s2, a7, 1583
                  nop
                  sll          gp, a4, s8
                  add          a6, a7, t4
                  srli         t0, t1, 21
                  andi         s1, t2, -316
                  lui          a5, 1024559
                  xor          s1, a0, a3
                  srl          sp, zero, s1
                  nop
                  slti         tp, tp, 1314
                  addi         s9, s8, 1454
                  slt          s1, a4, sp
                  lui          s2, 82642
                  slli         a6, t0, 16
                  nop
                  li           a6, 0x2ceaf055 #start riscv_int_numeric_corner_stream_14
                  li           s0, 0xe9f667ab
                  li           t6, 0xf4047a9e
                  li           s9, 0x80000000
                  li           t5, 0x0
                  li           s6, 0x80000000
                  li           s11, 0x0
                  li           gp, 0x80000000
                  li           tp, 0xffffffff
                  li           s10, 0x0
                  sub          s11, s9, gp
                  nop
                  lui          t5, 997359
                  nop
                  add          s9, s10, s0
                  sub          tp, s9, s0
                  nop
                  auipc        s6, 677462
                  lui          s9, 387318
                  nop
                  auipc        s0, 629901
                  lui          gp, 431414
                  auipc        tp, 763746
                  addi         gp, t6, -237
                  add          t5, s0, tp
                  addi         s11, s9, 1580
                  sub          s9, s9, s6 #end riscv_int_numeric_corner_stream_14
                  xori         s8, s0, -604
                  srli         a1, s11, 15
                  sra          sp, a1, gp
                  add          s3, t4, a0
                  add          s3, s7, t1
                  andi         a7, t4, 2041
                  nop
                  sltu         a2, t4, t6
                  sltiu        s4, t1, 874
                  nop
                  slti         t6, s9, -27
                  slti         a4, zero, 1317
                  sltu         ra, s6, a6
                  xori         s8, s3, 63
                  ori          s5, t2, 158
                  srl          s3, ra, a7
                  andi         zero, a7, 1280
                  andi         a1, gp, -1781
                  xori         s6, zero, -379
                  andi         s5, a1, 825
                  addi         s2, a1, 1663
                  xor          s8, t1, s2
                  addi         s4, sp, 587
                  or           s4, a3, s7
                  addi         t4, a1, 1860
                  srai         a4, s7, 23
                  sltiu        ra, t1, -304
                  sra          gp, s9, s1
                  xor          t1, gp, s11
                  sub          zero, s9, tp
                  ori          s9, s6, -148
                  srli         s6, t4, 4
                  srai         sp, s7, 8
                  srai         s8, s3, 3
                  lui          a1, 740483
                  slli         a7, a0, 2
                  ori          a6, a1, 12
                  sltiu        s1, s4, -195
                  srai         s8, ra, 12
                  slli         s11, a4, 9
                  andi         s2, ra, 1821
                  sra          a2, s0, ra
                  nop
                  srai         s0, t3, 20
                  and          s0, t4, s5
                  or           s3, a5, t1
                  srai         s3, s11, 26
                  auipc        zero, 357284
                  slt          s8, a7, s6
                  sltu         a1, s1, t6
                  addi         sp, t6, 562
                  addi         s2, a2, 1494
                  auipc        s4, 671409
                  slti         s9, s1, -1051
                  auipc        s2, 590069
                  xori         gp, a7, 475
                  or           a6, s0, s0
                  andi         s6, s5, -1276
                  auipc        tp, 485510
                  add          s2, s11, a2
                  xori         a4, a3, 1058
                  srl          tp, s10, gp
                  auipc        a3, 804518
                  sltu         s1, a5, s3
                  sra          ra, s2, s9
                  andi         s10, s9, -1452
                  slt          t1, a7, a4
                  srli         t5, t1, 13
                  ori          gp, a2, -296
                  and          s2, t4, sp
                  lui          s10, 382358
                  ori          t0, s2, 1400
                  nop
                  srl          a4, gp, a4
                  srl          a3, s8, t1
                  sltiu        a4, a7, 12
                  addi         gp, a4, 1779
                  add          s5, a1, a5
                  sub          t4, t1, t4
                  add          s8, s7, s7
                  sltiu        s9, ra, 1029
                  sltu         a4, gp, a4
                  auipc        s9, 839702
                  addi         s8, t2, -1832
                  andi         t1, s4, 151
                  add          a5, s10, s4
                  sub          a7, s11, s6
                  sltiu        sp, t3, -1330
                  auipc        zero, 340716
                  auipc        s3, 675932
                  auipc        s2, 271938
                  add          a5, t4, a4
                  ori          t0, s7, -1736
                  sra          s8, s6, s5
                  lui          s1, 417809
                  ori          s0, tp, -466
                  slli         gp, s3, 16
                  auipc        s1, 789282
                  andi         s10, s11, -944
                  srli         t1, t0, 10
                  ori          s3, t5, -162
                  sub          s8, s5, t2
                  sra          s10, t6, a4
                  addi         a2, a6, -1380
                  lui          s3, 58858
                  srai         a2, t5, 31
                  sll          a5, s11, s6
                  or           t4, t2, s2
                  sub          s4, s9, tp
                  sltiu        s2, s6, 1312
                  sub          s3, s5, s5
                  lui          t0, 472006
                  or           s11, zero, a3
                  addi         s11, a4, 1625
                  srl          a4, s8, s0
                  sltiu        s8, s10, -1673
                  andi         s4, s4, -1470
                  slt          t4, s2, s10
                  andi         a5, t0, 1749
                  slli         t4, t3, 28
                  lui          a1, 562037
                  slti         a6, t6, 777
                  lui          ra, 299767
                  xori         a7, t2, 157
                  slli         a3, s10, 2
                  add          zero, a6, s6
                  srli         gp, t4, 14
                  srai         s6, s9, 0
                  srai         t1, ra, 25
                  xor          t1, s11, s5
                  slti         s6, s10, -539
                  slti         a1, s1, -1849
                  slli         s1, t4, 10
                  xori         s6, s0, -635
                  ori          gp, s4, 588
                  slli         a7, t2, 3
                  sltiu        t0, s5, -1050
                  sub          s3, ra, a2
                  slti         t0, tp, 476
                  add          sp, t5, s0
                  srl          zero, t6, s9
                  srai         s2, gp, 24
                  auipc        s5, 900640
                  slti         s2, tp, -1902
                  slt          s8, s8, zero
                  sltiu        s1, a2, -1318
                  slt          t4, s4, t1
                  srl          t1, t0, s11
                  xori         s10, s7, -1838
                  and          gp, t0, s8
                  sra          t3, s9, s7
                  or           t0, s3, s5
                  srl          a4, t0, t3
                  ori          a6, t4, 1760
                  slli         s2, sp, 24
                  slt          s11, s11, s10
                  srl          a4, s10, t1
                  slti         a5, ra, 695
                  or           sp, a1, s8
                  sra          t5, t2, gp
                  sra          s9, t5, s0
                  sra          s2, zero, s0
                  sltu         zero, s8, s9
                  and          s5, t0, t1
                  sll          t0, s7, a2
                  ori          tp, t0, 1677
                  slt          a2, s2, t6
                  nop
                  ori          s2, zero, -661
                  sub          s11, a3, t3
                  xori         t4, s6, 81
                  srli         t0, s5, 27
                  sll          s0, s5, s1
                  sra          s1, tp, a6
                  sll          s5, s7, s0
                  nop
                  auipc        s3, 866000
                  ori          s4, a1, 1469
                  lui          a3, 18388
                  slti         s10, sp, -180
                  srl          s10, a6, t5
                  srl          tp, t0, t5
                  add          a3, a2, t5
                  andi         a2, t0, -205
                  nop
                  sltiu        tp, t3, 546
                  slli         s9, a4, 6
                  slti         s3, t3, -1691
                  or           a2, t2, s7
                  srl          t0, a6, s11
                  or           s10, t1, t3
                  sra          t4, a4, s8
                  srli         t1, tp, 29
                  xori         a1, s8, -10
                  auipc        s2, 422911
                  and          a4, s9, a6
                  andi         t3, s4, 1828
                  ori          s3, s5, -876
                  sra          tp, t5, t5
                  srl          a2, gp, t5
                  ori          t0, a2, -1251
                  slti         s2, s5, 862
                  addi         t4, t2, 1844
                  ori          gp, t2, -1345
                  slti         sp, a5, -1262
                  sub          s4, t3, s3
                  slti         a2, tp, -1276
                  sltu         s8, ra, s11
                  or           t0, s10, a2
                  auipc        t3, 241061
                  and          t5, a2, s1
                  xor          t3, s5, s10
                  nop
                  add          a2, a6, a6
                  srli         ra, a7, 4
                  nop
                  sub          s1, a7, s7
                  and          s5, s11, s3
                  slt          t4, a6, s10
                  sra          t6, t1, s10
                  slt          s9, ra, t3
                  sll          s11, t5, a0
                  and          t6, s10, s4
                  and          s0, zero, sp
                  sub          tp, gp, t4
                  sltu         a5, s1, s5
                  xori         t6, t2, 1511
                  andi         s6, s6, 999
                  xor          t1, t4, t4
                  addi         s10, s5, 182
                  ori          t0, tp, -2020
                  ori          s3, s3, 293
                  add          t3, a4, s0
                  sub          t5, s7, s4
                  auipc        ra, 947801
                  sub          s8, t6, a5
                  and          s0, a5, s1
                  sra          a3, a6, s2
                  auipc        a4, 590428
                  srai         s6, ra, 18
                  xori         s3, t5, 1743
                  sltu         s8, s7, a3
                  nop
                  auipc        a2, 1024543
                  sra          ra, s11, a7
                  and          s10, zero, s5
                  xor          a5, a5, t5
                  slt          s2, a0, s4
                  sra          s0, zero, s3
                  lui          t0, 968554
                  nop
                  lui          s1, 313133
                  nop
                  sltiu        t4, sp, -1136
                  srli         s0, s11, 11
                  sltu         s4, t0, a4
                  sll          s11, s9, t4
                  sltu         a5, a4, s2
                  sltu         zero, t5, s0
                  slli         tp, s6, 15
                  nop
                  sub          tp, zero, a4
                  nop
                  lui          s9, 329976
                  xor          t3, s11, tp
                  sub          s8, t4, t2
                  andi         s1, s8, 1499
                  sltu         a5, a0, t5
                  and          a3, s1, t4
                  xor          s11, s10, tp
                  sltiu        s6, a4, -1905
                  sltu         t6, ra, t4
                  sltiu        s3, t1, 295
                  or           s3, a7, s2
                  and          ra, s1, gp
                  and          a5, s0, s8
                  sltiu        s5, s6, 47
                  xori         s3, a4, 1850
                  srli         t0, s10, 23
                  add          s5, a4, a7
                  slti         a3, a1, 1986
                  auipc        s6, 859237
                  add          a1, zero, a1
                  andi         t5, s6, -782
                  addi         t1, s0, -1382
                  lui          t0, 297122
                  xor          t0, ra, ra
                  lui          a4, 568103
                  slti         zero, s6, -1078
                  lui          a3, 93146
                  srli         s11, t5, 23
                  nop
                  xori         a2, t5, -359
                  addi         ra, a2, -878
                  nop
                  srl          t1, s1, a5
                  xori         t6, t6, 2026
                  ori          a5, s1, 1108
                  srl          a2, s10, a0
                  slt          tp, s9, t4
                  xor          s11, s9, s0
                  auipc        gp, 249706
                  slli         s3, t4, 28
                  srli         s6, t1, 20
                  add          s9, t6, a4
                  lui          s1, 994537
                  sub          tp, s8, s5
                  slti         s10, s11, -1010
                  srai         a5, t3, 1
                  add          a1, a5, t6
                  sltiu        ra, a0, -678
                  add          s10, a4, s4
                  xori         s5, a2, 452
                  lui          s9, 429915
                  slli         gp, zero, 3
                  nop
                  nop
                  sub          a7, t0, a3
                  srai         t6, a7, 5
                  xori         a6, t3, 123
                  srl          s5, a3, a6
                  nop
                  slti         a6, s3, -595
                  sub          s8, sp, s6
                  srli         tp, t3, 24
                  srl          t4, t4, t1
                  slti         t3, a6, 787
                  slti         s11, t2, -1213
                  sltu         a6, s3, s1
                  sltiu        s4, s2, -1559
                  lui          s11, 661314
                  ori          ra, s7, 1946
                  or           ra, t4, s9
                  add          ra, s3, s10
                  or           sp, s3, sp
                  and          s11, s0, s8
                  srai         s6, a2, 26
                  sra          ra, s7, s10
                  srli         s5, s1, 1
                  srli         t0, t1, 5
                  sll          t6, s0, s2
                  xor          a3, s8, a5
                  or           s4, t0, s1
                  xori         sp, t1, 1827
                  srl          zero, t4, ra
                  andi         a7, s0, -733
                  slli         t4, t4, 12
                  ori          t6, ra, -905
                  lui          a2, 799207
                  sltiu        a5, s5, -74
                  nop
                  srai         t6, s9, 22
                  nop
                  slt          sp, a5, s3
                  sll          s0, a3, s2
                  slt          s11, ra, s8
                  srai         a6, s0, 31
                  xor          gp, a3, s5
                  andi         s10, a0, 623
                  slli         a4, a3, 23
                  xor          a7, s5, gp
                  xor          tp, s4, t5
                  and          sp, gp, gp
                  addi         zero, s3, 1817
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           a3, 0x91e9fdf5
                  li           ra, 0x0
                  li           a4, 0x0
                  li           s10, 0x0
                  li           t5, 0xffffffff
                  li           s9, 0xffffffff
                  li           s5, 0xffffffff
                  li           s6, 0x80000000
                  li           s2, 0x0
                  lui          s10, 802427
                  nop
                  add          ra, t5, ra
                  lui          s6, 885949
                  add          t3, ra, s9
                  nop
                  addi         t3, s2, -1801
                  add          t3, t5, ra
                  lui          ra, 14953
                  lui          s10, 49625
                  lui          s5, 208009
                  sub          s6, s10, a3
                  addi         a3, s6, 536
                  sub          s5, s10, s9
                  addi         t3, t5, 1115
                  sub          t5, s10, a4
                  nop
                  sub          t3, s9, t3
                  lui          t3, 821073
                  auipc        s9, 74531
                  add          s9, t3, ra #end riscv_int_numeric_corner_stream_12
                  sll          t3, s9, t0
                  slti         t0, s10, -1279
                  sltu         s6, s4, s5
                  srli         t1, a0, 3
                  andi         s3, a7, -1222
                  srai         zero, ra, 18
                  and          s9, s3, a0
                  and          t6, s6, t4
                  srai         ra, t5, 25
                  sltiu        zero, a0, -1458
                  add          t1, t5, a3
                  sub          t0, a2, s2
                  xor          s5, t4, tp
                  sll          s10, t0, sp
                  sltu         a3, a6, t1
                  sub          s6, s8, a6
                  and          s3, s2, a3
                  nop
                  sra          a4, t5, ra
                  addi         s1, ra, 1698
                  sll          t0, s0, a0
                  sll          zero, s0, s8
                  sub          t3, t6, ra
                  sra          s6, s5, s2
                  xori         a6, s3, 131
                  sub          s11, s6, a4
                  ori          tp, s11, 889
                  srl          a2, s9, t2
                  or           tp, a2, a2
                  sub          t6, s8, a3
                  sltiu        ra, s4, 1744
                  add          s8, t6, a0
                  srai         sp, gp, 13
                  sll          s4, ra, s6
                  srl          sp, s5, t1
                  and          t6, s8, s8
                  add          s10, a4, a6
                  or           t0, zero, tp
                  auipc        s1, 206836
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           t3, 0x80000000
                  li           a3, 0x0
                  li           s9, 0x80000000
                  li           a6, 0x25ec1eda
                  li           s10, 0x80000000
                  li           s5, 0xffffffff
                  li           t1, 0x0
                  li           ra, 0x329db524
                  li           sp, 0x0
                  sub          ra, a4, t1
                  addi         t3, s9, -1624
                  lui          a3, 717401
                  lui          a4, 688819
                  sub          s5, t1, t3
                  addi         a6, sp, 426
                  sub          sp, t1, a3
                  sub          a3, t3, a3
                  addi         a6, a3, -1729
                  lui          sp, 253668
                  add          a6, a3, ra
                  nop
                  lui          s5, 117266
                  nop
                  auipc        t3, 965062
                  add          a6, a6, sp
                  add          a4, a6, ra
                  addi         sp, t3, -996
                  sub          s5, s10, a4 #end riscv_int_numeric_corner_stream_19
                  lui          a5, 515904
                  slt          s2, s7, s10
                  slti         s2, a5, -1621
                  lui          t5, 952494
                  ori          zero, gp, 1163
                  sll          a5, s2, tp
                  slt          s6, s7, ra
                  sub          s9, s4, t3
                  lui          t5, 222359
                  add          sp, s7, a6
                  sltiu        t5, t0, -372
                  or           a1, a3, s0
                  addi         a6, s9, 1678
                  xori         s3, t6, 171
                  auipc        t0, 306594
                  sub          s1, sp, a2
                  srli         s8, t3, 24
                  or           s0, a4, t2
                  or           t6, s5, t2
                  add          s1, s0, s4
                  sra          s10, t3, s5
                  sltu         tp, s10, t2
                  xori         a3, t3, 320
                  srli         s8, a0, 30
                  sll          t1, s4, s4
                  slli         zero, s11, 24
                  xor          t3, s3, a0
                  srl          s1, zero, t1
                  slt          a3, s11, s9
                  add          s0, ra, s7
                  srli         t1, s8, 30
                  nop
                  srli         a7, a0, 17
                  andi         s10, t3, 142
                  lui          s4, 650355
                  lui          a7, 317535
                  srl          tp, t6, s0
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s2, 0x80000000
                  li           s1, 0x29dc8857
                  li           s0, 0x1a3d9fb4
                  li           t5, 0x0
                  li           t4, 0x80000000
                  li           a2, 0x0
                  li           sp, 0xffffffff
                  li           a6, 0x80000000
                  li           s6, 0x80000000
                  lui          s6, 1034463
                  nop
                  sub          s6, s2, t4
                  addi         s2, sp, 1350
                  nop
                  sub          s0, s0, s6
                  auipc        t4, 291660
                  lui          s6, 1012225
                  nop
                  add          s0, a2, a2
                  addi         s2, a2, -231
                  nop
                  nop
                  sub          a2, s2, t4
                  sub          tp, s1, s6
                  sub          a2, s1, tp #end riscv_int_numeric_corner_stream_6
                  andi         sp, a5, -279
                  sll          gp, t6, s9
                  sra          a2, s6, t0
                  nop
                  add          ra, a1, gp
                  sra          s11, a1, t1
                  srli         a4, t4, 7
                  sltiu        s11, tp, -1407
                  sra          t5, a7, a3
                  srai         s6, a5, 4
                  sub          s5, s4, a2
                  lui          s10, 589863
                  srai         s11, s4, 16
                  sltu         sp, s7, t2
                  sra          s5, gp, s2
                  addi         s4, a7, 1366
                  sltiu        a4, a3, 868
                  add          t0, a6, s2
                  slli         a6, a6, 23
                  sltu         a7, a1, t1
                  sub          s0, s5, s2
                  lui          t1, 878734
                  ori          gp, s10, 164
                  or           t6, s0, s7
                  srl          a3, s2, s1
                  nop
                  slti         s4, ra, 114
                  xori         a6, s11, 799
                  srli         t6, a6, 5
                  slt          s11, t2, s0
                  sub          t4, s5, a0
                  slli         a4, t5, 28
                  slli         a5, zero, 26
                  sltu         s1, s7, a3
                  srli         a5, t2, 9
                  sub          zero, sp, ra
                  sra          t1, t5, t1
                  slt          a3, s2, sp
                  auipc        tp, 504454
                  nop
                  nop
                  sltiu        s6, s8, 1459
                  addi         t6, t0, 1872
                  srli         s11, s2, 23
                  auipc        sp, 515636
                  sltiu        s10, a1, 462
                  xori         t0, s8, -1012
                  andi         s6, gp, -1854
                  sub          t6, s6, s5
                  srli         s8, s0, 19
                  or           s10, s3, sp
                  and          s10, s8, a5
                  or           s0, a3, a7
                  slli         s6, s8, 1
                  auipc        sp, 929272
                  ori          tp, t0, 322
                  srl          s4, a0, t6
                  srli         s6, a1, 30
                  add          s1, a0, s7
                  sra          s4, a6, s10
                  add          a1, s8, sp
                  xori         s2, s8, 1012
                  add          s0, t3, a4
                  or           a6, a0, a4
                  addi         a2, t6, 792
                  nop
                  and          a3, t1, a4
                  andi         s9, gp, -1464
                  addi         s6, t0, 1253
                  and          zero, s10, s2
                  srl          t6, ra, s5
                  or           s1, ra, s9
                  sra          tp, a0, t5
                  or           s5, t1, a0
                  xor          s1, t1, t6
                  andi         s2, s5, -1439
                  or           gp, tp, s1
                  slt          a1, t6, t3
                  add          t3, a3, s2
                  andi         a6, a4, 162
                  xori         a1, t2, -1778
                  ori          a3, tp, -286
                  sltiu        s1, s1, -1296
                  xori         s4, a4, -1503
                  srai         s10, s7, 10
                  srl          s11, t6, s8
                  sub          gp, t3, gp
                  slt          a4, s1, t1
                  and          s11, a0, s1
                  xor          s6, a5, a2
                  ori          a1, s5, -264
                  srli         t4, a0, 0
                  add          s9, s7, s10
                  ori          s10, s8, 1161
                  or           gp, t2, s9
                  sub          s11, a1, s0
                  slti         a7, s5, -1173
                  sll          t6, s1, s10
                  addi         a2, s1, 560
                  auipc        s0, 58022
                  sub          a1, zero, s0
                  slti         t4, s5, 1410
                  andi         t5, a3, 1604
                  ori          s8, gp, 991
                  xori         tp, s10, -245
                  sub          a6, s7, zero
                  slt          ra, zero, gp
                  srl          s2, s5, a5
                  sltu         gp, s0, t2
                  slt          s0, s6, ra
                  xor          t3, t4, t5
                  slti         t5, t3, -1270
                  slt          a6, t3, s10
                  andi         s10, t5, -1404
                  nop
                  and          a1, a3, tp
                  xori         zero, s6, 1783
                  xori         s6, t2, -1827
                  add          t1, s9, s6
                  slti         s8, t5, -1955
                  srai         zero, s5, 6
                  ori          a2, a4, -1875
                  add          s0, t3, a1
                  srl          sp, s5, ra
                  sltiu        s8, s1, 189
                  nop
                  slt          t4, s7, a4
                  srli         s6, a6, 19
                  auipc        t0, 888720
                  auipc        gp, 517172
                  andi         s0, s9, -1091
                  sltu         ra, s4, s7
                  andi         t1, a5, 701
                  sltu         s0, a3, zero
                  andi         a5, a2, -1698
                  srl          a2, s3, s0
                  nop
                  srli         t3, t4, 18
                  srai         s11, s5, 5
                  xor          s10, a1, t4
                  sra          a2, a7, s10
                  auipc        a6, 997733
                  andi         sp, ra, -951
                  sll          a3, s1, t0
                  xori         a2, t6, -1785
                  sltiu        s5, s5, -783
                  srl          zero, a6, s5
                  add          t6, sp, zero
                  slt          s5, t6, t0
                  slti         t3, t3, 557
                  sltiu        gp, a3, -949
                  and          s8, t6, a7
                  srai         s9, t5, 29
                  slti         a4, s0, -1745
                  slli         ra, gp, 12
                  and          a3, a7, a2
                  addi         s11, ra, -1975
                  srai         s6, t6, 18
                  and          a2, s3, ra
                  sub          s6, a2, a1
                  nop
                  and          zero, a2, s4
                  xor          a1, s8, a7
                  srli         t0, t6, 31
                  and          s5, s8, s4
                  or           a2, a7, s2
                  sltiu        s1, t6, 1943
                  slli         s2, a5, 18
                  slt          gp, t6, t3
                  srli         s11, s6, 0
                  sltu         a7, ra, t5
                  xori         gp, s2, -848
                  or           s8, a3, a5
                  xori         s2, a0, 972
                  and          t5, s10, t3
                  lui          gp, 697763
                  auipc        a6, 606225
                  and          t3, s3, s10
                  add          t4, tp, zero
                  addi         a7, a2, -308
                  sltiu        ra, s7, -757
                  srai         a7, a4, 11
                  sra          gp, t6, t1
                  and          s9, t5, a3
                  andi         s1, gp, -2044
                  slli         a1, tp, 22
                  slli         a5, gp, 14
                  and          s3, t2, s5
                  andi         s8, s10, -1764
                  slti         a2, a6, -447
                  addi         ra, t3, 1175
                  auipc        t0, 777767
                  sra          gp, a2, t2
                  slli         sp, a0, 31
                  or           t6, a4, t2
                  and          a3, s5, a1
                  slti         s4, t2, 1233
                  xor          a1, a1, s2
                  slli         s10, t1, 17
                  sll          s8, gp, s3
                  add          s5, t3, s7
                  and          s10, t5, s9
                  or           t3, t3, a5
                  xori         t3, ra, -947
                  xor          t6, gp, a2
                  auipc        t0, 24586
                  srli         a1, a5, 21
                  sra          gp, t0, s3
                  slli         a7, gp, 23
                  add          s0, t2, a4
                  sltiu        gp, a3, -533
                  xori         t6, a1, -135
                  srl          a2, a4, s7
                  slti         a7, t3, -591
                  sltu         a5, s0, s11
                  slti         t1, sp, -1700
                  or           a7, t3, t3
                  slti         t4, t2, -1140
                  sltiu        s8, a3, -1665
                  slt          gp, tp, s4
                  addi         a5, gp, -122
                  auipc        a1, 785726
                  srli         s2, a1, 10
                  srl          s3, ra, s8
                  lui          s4, 139494
                  ori          s2, s3, -810
                  lui          zero, 881690
                  srli         t0, t4, 10
                  andi         s8, sp, -80
                  addi         t0, a1, -1749
                  ori          t6, s10, -379
                  slli         s0, gp, 12
                  srl          a1, gp, s6
                  xor          zero, t6, s7
                  sll          sp, s5, t3
                  slli         s9, gp, 1
                  srai         a4, ra, 2
                  srl          t3, a5, ra
                  auipc        s0, 91506
                  nop
                  srai         s11, s5, 12
                  xori         t5, a0, -1494
                  slti         s1, zero, -665
                  add          t0, s2, t6
                  lui          s5, 255918
                  srli         a6, ra, 10
                  add          tp, s0, s4
                  auipc        a1, 524427
                  sltiu        gp, sp, -1
                  sra          t6, a4, t6
                  sub          t3, t0, t1
                  and          a3, s0, t2
                  srl          a1, a4, ra
                  slti         a1, gp, 1872
                  andi         s4, a7, 1663
                  andi         s1, s8, -734
                  sll          s10, t3, t1
                  or           s10, s0, s7
                  sub          a2, ra, a4
                  srli         t0, t3, 18
                  srl          s0, t3, s2
                  slt          s2, t3, s7
                  srli         a7, t6, 30
                  or           tp, t5, t4
                  slli         s9, t4, 12
                  srl          s11, a7, s8
                  srl          s1, a2, a0
                  xori         a4, t2, 1897
                  sub          t1, a4, s4
                  xori         a5, s6, -446
                  auipc        t0, 84129
                  slti         t1, s1, -784
                  srai         t3, a4, 13
                  slt          t0, t3, a1
                  sub          a4, a5, s1
                  andi         tp, s5, -2007
                  slti         s11, s5, -1450
                  ori          sp, s8, 830
                  slli         s4, s9, 17
                  or           s3, s3, s10
                  sra          s5, t6, s4
                  slt          tp, a0, t3
                  srai         a7, tp, 24
                  nop
                  auipc        t1, 63267
                  srl          t0, s7, s8
                  slti         t6, gp, 804
                  auipc        s1, 32674
                  srai         a3, t4, 3
                  slt          a1, zero, t4
                  auipc        s3, 270748
                  slli         t0, s6, 9
                  sll          s8, a5, a4
                  srl          s6, s1, s3
                  srl          a1, s5, a2
                  sltiu        s0, ra, -523
                  sltu         sp, a5, t6
                  sra          a6, t0, a2
                  or           s4, s3, a6
                  xori         a7, sp, 989
                  sll          s4, t5, a5
                  xor          a6, t5, t3
                  sltiu        a2, a5, 270
                  slti         t0, t1, -1954
                  slli         tp, s7, 1
                  slt          s4, a1, s7
                  andi         t3, s0, -1093
                  lui          a1, 277622
                  srai         s1, t1, 21
                  slli         s0, a4, 14
                  slli         t4, s9, 16
                  addi         t6, s5, 546
                  srl          a3, s9, a1
                  sub          a1, a7, t3
                  slt          s5, sp, s0
                  ori          s3, s11, -2048
                  xor          s3, s0, a1
                  add          tp, s1, s11
                  lui          s3, 881971
                  srl          s1, s8, a5
                  xor          s10, s5, s6
                  sra          t5, a4, s5
                  srli         a7, t2, 28
                  add          a5, s5, s11
                  srl          a4, t5, t1
                  lui          a5, 402339
                  auipc        a6, 768875
                  sub          s0, s4, s2
                  slti         s0, t0, -1754
                  srli         t6, t2, 1
                  sra          gp, s6, gp
                  lui          s6, 620857
                  add          s8, t1, s11
                  andi         a3, a6, 1371
                  add          sp, a2, s7
                  xori         a6, a7, 1837
                  slli         t6, zero, 4
                  lui          gp, 654562
                  srli         a7, ra, 4
                  add          s1, a6, s6
                  sltu         t1, s9, t6
                  slli         s3, t6, 10
                  addi         t5, sp, -1992
                  or           t3, t4, gp
                  add          ra, ra, t2
                  srli         a6, s4, 17
                  slti         s3, t5, 680
                  sra          a7, a1, ra
                  sll          a7, sp, a0
                  sltiu        s2, a0, 615
                  slli         ra, s5, 30
                  srai         s4, s3, 4
                  sra          s10, a3, a3
                  sub          tp, s5, s1
                  sll          s4, tp, s5
                  slti         s8, t6, -351
                  or           s2, a4, a5
                  srli         s3, s9, 25
                  or           a2, s9, s4
                  and          a3, tp, zero
                  slt          s2, a6, s9
                  nop
                  sll          t1, zero, t2
                  add          s11, t4, t1
                  addi         s3, s7, -968
                  sltiu        s9, s0, -2002
                  srli         s11, a3, 5
                  nop
                  srli         a6, s5, 20
                  lui          s0, 530340
                  xori         t1, t5, -1786
                  sra          ra, s7, tp
                  slt          gp, tp, tp
                  sltu         s2, t4, s10
                  slti         a2, s11, 1154
                  slt          s1, tp, a1
                  sltiu        a5, ra, -1402
                  auipc        s8, 625910
                  slt          s8, zero, s7
                  xori         s5, t0, -1958
                  or           s3, ra, t6
                  sltu         gp, s4, s7
                  auipc        a1, 654300
                  slli         s1, s7, 6
                  sub          s8, t1, s1
                  or           t1, t0, a2
                  sra          t4, s9, t0
                  srai         s5, t5, 7
                  sub          s9, s3, a4
                  xori         s9, t2, 1989
                  sra          ra, zero, ra
                  andi         a1, t6, -1563
                  sltu         s5, a3, t6
                  slli         t3, s1, 29
                  nop
                  andi         zero, a4, -1450
                  or           s9, t1, s11
                  add          s8, zero, zero
                  slt          s10, t6, s7
                  or           t1, sp, a0
                  ori          a6, s8, -978
                  sltiu        a6, s7, -1154
                  sub          zero, s9, t5
                  ori          t5, t3, -559
                  slti         t1, t4, 1169
                  addi         gp, a1, 1988
                  add          a2, t6, t3
                  srli         s0, zero, 16
                  ori          t1, s10, -1581
                  and          s5, sp, gp
                  auipc        s6, 791699
                  srai         ra, s6, 2
                  or           gp, t2, a0
                  sra          s1, t2, s4
                  addi         a2, a3, -706
                  sltiu        s5, s7, 1821
                  srai         s11, s2, 24
                  addi         a5, t2, -1463
                  ori          t6, t1, 1126
                  addi         s9, a4, 938
                  sll          s2, a0, sp
                  sll          gp, s11, tp
                  add          t1, a6, sp
                  andi         s11, s5, -1603
                  sra          t1, a5, s1
                  srl          s2, a1, s8
                  slt          tp, s7, t6
                  xor          t1, s4, s9
                  xori         s5, zero, 459
                  slli         s11, s6, 9
                  xor          zero, a7, s0
                  and          zero, s9, sp
                  and          s8, zero, t2
                  or           a1, s11, t6
                  ori          a3, s11, -1356
                  xori         s5, s11, -469
                  sltu         t3, ra, s8
                  srai         t6, a0, 4
                  slt          s2, s6, t2
                  lui          sp, 115745
                  slli         a6, t6, 11
                  addi         t6, s1, -273
                  sltu         zero, a3, t3
                  sll          a1, s10, s0
                  add          s8, t4, a4
                  srai         s9, a2, 19
                  ori          s8, tp, -1380
                  auipc        s5, 789931
                  addi         s10, a4, 346
                  sll          a6, a3, s5
                  addi         s11, s4, -1647
                  slti         t3, t2, 572
                  srl          s8, a6, s8
                  slti         t5, t1, -14
                  andi         t0, s0, -1638
                  slt          s10, ra, a1
                  lui          t5, 610748
                  auipc        gp, 94846
                  auipc        s1, 340180
                  ori          t3, s1, 1111
                  srl          t4, s2, a3
                  and          t0, t4, a7
                  srl          s3, gp, t5
                  nop
                  xor          a6, t5, s10
                  addi         s10, s8, 1751
                  srli         a6, s7, 2
                  and          s9, s0, s10
                  auipc        s10, 703696
                  sll          t5, a7, sp
                  add          s2, a3, a1
                  sll          a7, s8, a0
                  srai         s10, s5, 16
                  slti         a5, t1, 905
                  addi         t6, s5, -156
                  slt          gp, ra, s8
                  slt          t6, t4, s7
                  ori          ra, s6, 534
                  add          a6, s7, t6
                  sltiu        t6, a3, 121
                  sltiu        zero, t4, 1260
                  slt          a6, s3, s9
                  slli         zero, gp, 12
                  addi         s0, ra, -536
                  lui          s2, 581426
                  or           a2, s2, s2
                  or           a2, t1, t2
                  andi         s1, a3, 439
                  sra          s0, s6, a5
                  srl          s1, a1, s3
                  slti         s1, zero, -483
                  or           a4, t2, sp
                  xor          s8, s10, t2
                  sra          s0, t6, s11
                  xori         a4, t5, 168
                  sub          zero, ra, a7
                  andi         sp, a2, -1026
                  ori          s8, s8, 218
                  sub          zero, a4, sp
                  sll          zero, s8, s0
                  nop
                  auipc        s4, 574987
                  xori         s1, t6, -619
                  sll          s4, s1, a7
                  slt          s2, sp, s9
                  xor          t5, t1, s5
                  xor          s0, s4, s7
                  xori         t6, s0, 1006
                  xori         s2, s7, 691
                  sltu         a7, t4, t3
                  srai         t6, zero, 12
                  and          t1, s10, t2
                  sltiu        gp, zero, -1386
                  slt          ra, sp, a1
                  sll          a7, t2, t5
                  xor          tp, t5, s0
                  xori         a3, s6, 1050
                  nop
                  sltu         ra, a4, s6
                  nop
                  srai         s2, s11, 19
                  or           s2, t2, s5
                  srli         s2, ra, 9
                  sra          a4, a6, a3
                  auipc        a5, 547840
                  srai         s0, a2, 23
                  srai         s10, s8, 29
                  andi         ra, gp, -1260
                  slti         t0, t2, -2021
                  and          s6, a4, s9
                  lui          tp, 412181
                  and          s9, a0, t5
                  nop
                  xori         a1, t1, 1926
                  add          a3, s7, s4
                  slti         s6, a2, 1446
                  addi         s11, s5, 1816
                  lui          s4, 909731
                  slli         s1, t4, 28
                  andi         t3, s4, 789
                  slli         t3, a2, 26
                  sll          a5, sp, s10
                  and          s4, a1, a2
                  sll          a6, t2, s10
                  and          a3, t0, a6
                  slti         t4, ra, -407
                  sltiu        t3, s6, 1547
                  sltiu        s1, s6, -1226
                  lui          s3, 324038
                  sltiu        s2, s0, 197
                  sltiu        a3, s8, 1555
                  xori         a7, a4, 1619
                  slli         s6, ra, 20
                  sub          t3, a0, a1
                  add          s5, a7, zero
                  srli         a1, a4, 27
                  sub          a1, s7, s5
                  sll          t1, t2, t4
                  add          t3, s8, t0
                  nop
                  sltu         s2, s4, tp
                  addi         a1, t5, -52
                  slt          t5, a6, s10
                  auipc        s3, 928692
                  and          s2, a3, a1
                  add          s8, a6, t6
                  srl          gp, t5, t5
                  or           s9, s5, s1
                  auipc        t6, 319664
                  srl          s3, a7, sp
                  sltu         s10, gp, sp
                  add          a4, s6, t4
                  sra          t1, s11, t5
                  auipc        a2, 744790
                  sub          zero, a2, a0
                  xor          s6, a6, t1
                  srai         t4, s11, 7
                  srl          s10, t0, t4
                  xori         s1, t5, -1800
                  add          sp, a0, s0
                  andi         a2, t0, -1166
                  xor          t6, a0, ra
                  sll          ra, s6, a2
                  xori         a5, a2, -768
                  srai         zero, zero, 17
                  xor          a7, t4, a2
                  xor          s6, gp, a1
                  add          s6, s3, t4
                  slti         a6, s1, -1845
                  slti         ra, t4, -84
                  addi         a2, t1, 904
                  srai         s4, s3, 6
                  sra          a6, t5, s9
                  sll          tp, t4, t4
                  srai         a3, s0, 28
                  auipc        a4, 1000833
                  lui          s9, 26912
                  addi         s3, s9, -862
                  srli         t0, s3, 5
                  andi         s4, t5, 377
                  ori          zero, s2, -1463
                  or           t0, s7, s6
                  add          t1, s1, a2
                  sltiu        t6, sp, -1592
                  ori          t6, t0, -275
                  auipc        s8, 9283
                  slti         a4, a0, 1058
                  ori          s0, t4, 1058
                  lui          t0, 582317
                  or           s2, zero, a5
                  addi         s6, t1, -1265
                  sll          tp, s11, a5
                  and          s1, s7, t4
                  ori          s9, a4, -814
                  slli         s8, zero, 17
                  sra          s5, s4, s8
                  and          a5, t4, zero
                  add          a5, s1, t1
                  sub          s4, gp, s3
                  xor          s5, s0, s5
                  xor          s1, s10, t0
                  sra          a2, a1, s7
                  srl          tp, t4, t4
                  srai         t5, s11, 7
                  or           s3, a4, t2
                  or           s0, a7, s3
                  sltu         zero, a2, s11
                  andi         sp, a5, -439
                  andi         a7, s7, -234
                  lui          sp, 642722
                  srl          s10, s10, a1
                  slt          s0, s7, t3
                  add          a2, a5, a0
                  slt          a3, t5, t5
                  ori          t1, a2, -1907
                  slti         s10, a6, 690
                  or           s6, a4, t3
                  ori          s2, t5, -502
                  sra          a7, s0, t5
                  sra          s9, tp, a0
                  lui          t4, 688633
                  sll          t3, gp, a1
                  srl          zero, s0, a1
                  slti         a1, s7, -106
                  xor          s1, a6, s4
                  sra          t6, a0, tp
                  lui          s6, 310081
                  or           t5, t1, t0
                  slt          ra, a4, a0
                  xor          t3, a5, t2
                  and          a1, a1, s11
                  xor          s9, a5, s2
                  slli         a6, s7, 23
                  srl          a2, gp, s2
                  slli         sp, s9, 28
                  xori         tp, s0, -1015
                  add          t1, t3, a2
                  sltu         s4, s0, a4
                  auipc        a5, 105622
                  and          s4, s10, t5
                  and          a4, s1, a2
                  xori         t0, a4, 960
                  slli         a2, ra, 17
                  nop
                  sra          s4, t1, s11
                  ori          a6, s3, -311
                  or           a1, a7, t5
                  slli         s4, a3, 2
                  srl          t0, a0, s10
                  sll          s2, a4, s11
                  sltiu        a2, a6, 1333
                  ori          s6, s6, 11
                  srai         a7, s4, 23
                  srli         t0, sp, 25
                  lui          ra, 167477
                  lui          s1, 37281
                  andi         s0, ra, 1989
                  nop
                  srli         a6, ra, 26
                  sltiu        a4, gp, 767
                  slt          s0, a2, a0
                  sub          a2, a0, s3
                  addi         s11, s9, -454
                  add          s9, t5, s1
                  srli         s0, s7, 14
                  addi         t4, t5, 604
                  ori          zero, t0, -1272
                  srai         s4, a6, 19
                  sra          s8, s2, gp
                  or           s2, a6, a7
                  addi         a1, s5, -559
                  srl          s9, s2, s8
                  nop
                  or           s1, t3, a1
                  slti         zero, s8, -332
                  and          s4, sp, a6
                  and          s8, s2, s7
                  and          s9, sp, t4
                  lui          t0, 888902
                  sub          s9, a1, t6
                  slti         gp, t1, 1927
                  sll          s9, s6, s4
                  xor          s9, s11, a5
                  addi         zero, s4, -1444
                  srli         s3, a5, 0
                  and          a2, a7, s5
                  srli         s8, gp, 29
                  lui          gp, 405801
                  sub          a7, t1, s6
                  slti         s10, t4, 1029
                  or           s0, s3, s8
                  auipc        s11, 861491
                  slli         a1, a5, 1
                  srli         zero, a5, 12
                  sll          t3, t6, s8
                  slt          s11, s10, s1
                  lui          s2, 943207
                  nop
                  srl          s6, zero, s5
                  add          t3, s5, a3
                  slti         a4, s6, 1435
                  andi         t5, t4, 471
                  and          s1, s7, s8
                  addi         s5, ra, -1125
                  srli         s1, t6, 11
                  sub          t5, a6, a0
                  add          zero, s3, t6
                  sltu         s10, s11, s6
                  sub          t5, a1, s9
                  add          zero, sp, t6
                  srai         a2, zero, 13
                  sub          a6, t0, a1
                  srli         t5, s8, 19
                  or           sp, a5, a0
                  lui          tp, 974479
                  srl          s3, s2, s3
                  sll          s11, s9, s8
                  andi         a4, a6, -296
                  srai         s6, a0, 27
                  sra          zero, t2, a5
                  slti         s4, zero, -1153
                  xori         t5, s9, 1856
                  sra          s2, zero, t3
                  and          s5, a1, s4
                  lui          a7, 404370
                  lui          s4, 152326
                  sra          s3, a2, sp
                  xor          zero, s1, s4
                  nop
                  srai         gp, ra, 5
                  xori         s9, zero, 1786
                  andi         s1, gp, 1840
                  lui          s3, 714533
                  xor          a1, tp, a6
                  ori          a1, s1, 964
                  sll          s5, a5, s9
                  ori          s10, t4, -1886
                  lui          a7, 1042947
                  sltiu        ra, zero, 1849
                  srl          a1, gp, zero
                  addi         s11, tp, 107
                  srli         s11, s4, 12
                  addi         a6, a7, -1327
                  xor          t4, s11, s11
                  srli         s1, t4, 14
                  ori          a4, ra, -1150
                  lui          a5, 746875
                  sll          sp, a3, t3
                  xori         a3, s7, -991
                  sltiu        t3, a6, 344
                  sra          s6, t5, ra
                  lui          a7, 450542
                  sra          s11, t1, s1
                  auipc        sp, 950558
                  srai         a3, s0, 10
                  slli         tp, a1, 31
                  sub          s11, t6, s6
                  addi         t1, t5, -1899
                  nop
                  nop
                  srl          a5, tp, t2
                  slli         s3, gp, 1
                  srl          a2, gp, t1
                  or           s3, a0, a3
                  srl          t1, tp, s10
                  andi         a4, s0, 1796
                  and          s9, t2, t5
                  sra          t0, s0, a0
                  add          t3, zero, s8
                  sltiu        a6, t2, -948
                  sub          s6, a4, a6
                  add          a4, a7, t5
                  srai         a3, t5, 20
                  and          a6, sp, t5
                  and          t3, s10, gp
                  slt          s5, s1, s0
                  srli         sp, a4, 31
                  sltu         a2, a0, s4
                  lui          t5, 225211
                  or           s4, s9, tp
                  sltu         a4, s1, s10
                  nop
                  or           a6, t5, s4
                  sltiu        t6, a0, 1433
                  lui          a7, 714083
                  or           s6, s11, s3
                  ori          a7, a6, 1312
                  addi         gp, s3, 1820
                  slti         s6, s9, 1631
                  lui          s2, 350507
                  xor          t4, s3, t3
                  add          zero, a5, sp
                  sltiu        t0, a5, -1773
                  slt          zero, t5, a1
                  lui          s5, 148486
                  slli         s11, ra, 24
                  nop
                  xor          a5, s1, a6
                  auipc        a3, 567045
                  and          ra, a4, s6
                  slli         a6, t1, 24
                  slti         s4, sp, -1273
                  slli         t6, s8, 3
                  sub          s3, t3, a3
                  andi         t5, zero, 715
                  xori         s11, s4, -413
                  slt          sp, tp, s8
                  auipc        t3, 460018
                  xori         s3, ra, 1591
                  slti         t0, a3, 255
                  andi         t0, t1, -1720
                  srai         t6, t2, 15
                  sltu         t3, ra, a1
                  sll          t4, s5, a6
                  addi         s1, a3, -1579
                  xori         s1, sp, 478
                  slt          s10, sp, a7
                  lui          s5, 118489
                  xori         a5, t3, 1651
                  lui          zero, 381108
                  sltu         a3, tp, sp
                  ori          tp, s6, -1160
                  auipc        t6, 31196
                  sll          t5, ra, tp
                  xor          a1, t4, s1
                  slti         t0, t3, -920
                  sll          a6, zero, s11
                  slli         s3, tp, 10
                  sub          t4, s4, s1
                  slt          s3, sp, sp
                  srli         t0, s7, 3
                  sra          t1, s2, s0
                  sltu         a1, t5, gp
                  auipc        a2, 758597
                  add          s4, zero, a6
                  and          sp, s7, s3
                  sll          t1, a4, a4
                  sltu         t1, s5, a7
                  sltiu        s8, t0, 2017
                  addi         a4, t1, 1896
                  sltiu        a7, s2, 1541
                  xori         gp, t2, -724
                  lui          t5, 198277
                  slti         t5, s2, 493
                  srai         s0, s9, 27
                  and          a1, t5, s2
                  auipc        ra, 368301
                  andi         a3, s4, 1271
                  ori          a6, a7, 369
                  slli         a1, s3, 4
                  and          s1, a6, s2
                  nop
                  srl          s8, s9, a3
                  sra          t4, s6, s2
                  sltiu        a3, t5, 757
                  slli         gp, zero, 4
                  slli         a7, s5, 30
                  sltiu        s8, s3, 1704
                  sub          t6, a2, a3
                  add          sp, t6, s4
                  ori          s0, s2, -335
                  slt          s6, a7, s10
                  xori         tp, ra, 18
                  nop
                  addi         ra, t0, 1633
                  andi         s0, sp, 957
                  add          a7, s3, a4
                  slt          a2, a4, t4
                  srai         s6, t3, 26
                  sra          a5, t6, s5
                  lui          t3, 1047551
                  addi         a5, t0, -914
                  sra          s3, gp, a3
                  addi         a3, sp, -1133
                  and          ra, a6, t1
                  or           t0, a6, s1
                  addi         s1, a5, -1281
                  sll          s5, t1, a0
                  add          a5, t6, a0
                  auipc        tp, 396417
                  andi         s8, t0, -1297
                  sll          s1, t2, s2
                  xor          s9, s9, tp
                  andi         s0, s9, -151
                  xori         gp, s3, 307
                  andi         t1, s1, -1252
                  nop
                  addi         a2, s3, 604
                  add          s4, a6, a6
                  and          s0, a2, s10
                  auipc        s3, 275910
                  sra          s8, s2, tp
                  and          t0, s8, a5
                  slti         s0, s1, -305
                  sll          a4, a4, tp
                  sra          a1, s2, s11
                  nop
                  srli         a7, s0, 3
                  and          a4, a7, s3
                  xor          t3, s8, a5
                  xor          tp, t5, t5
                  or           sp, s8, zero
                  xori         a4, s11, 785
                  slti         a7, a7, 1145
                  andi         t3, s11, 342
                  sltiu        a6, s1, 413
                  slli         zero, t4, 0
                  slti         a7, ra, -1267
                  add          t5, s3, s10
                  auipc        zero, 645976
                  and          s8, tp, t3
                  slli         s2, a0, 23
                  sra          s9, sp, tp
                  slti         zero, t6, 66
                  srli         a3, sp, 3
                  sra          s8, a0, s2
                  slli         a4, t0, 27
                  andi         t5, s4, 424
                  nop
                  auipc        s0, 744755
                  srl          s9, gp, a3
                  slti         s0, ra, 984
                  and          a7, s5, t0
                  srl          a3, s0, a7
                  addi         s4, s7, -1329
                  or           s3, s8, s2
                  srl          t3, s2, t2
                  add          gp, s1, a3
                  add          s8, t3, t4
                  sll          t6, s11, a6
                  sub          a7, a7, s1
                  and          s6, a3, s0
                  srli         zero, t6, 25
                  lui          a3, 563053
                  slti         t6, gp, -1292
                  slli         s4, gp, 12
                  sltu         s6, a3, s1
                  auipc        s3, 433772
                  nop
                  slt          sp, s6, s6
                  add          s1, t2, t3
                  sra          s8, s2, s8
                  srai         t5, a0, 21
                  auipc        a5, 929945
                  ori          a4, s4, 304
                  andi         a1, t1, 1329
                  ori          t4, zero, -1679
                  ori          t4, t1, 331
                  nop
                  sra          s10, tp, sp
                  slti         s6, a7, -1362
                  xori         s8, t4, 1417
                  xori         sp, s0, 835
                  and          s4, s1, t6
                  and          zero, s8, s3
                  slti         tp, sp, 719
                  xori         t5, s4, 1941
                  and          t0, s5, sp
                  or           s1, s6, a2
                  or           a1, a4, s3
                  slti         s5, a6, 1423
                  slti         s5, t6, -906
                  srl          a5, t2, s2
                  nop
                  auipc        t5, 999675
                  sltiu        t6, t6, 2038
                  srai         s1, s11, 6
                  sltu         s3, t1, a6
                  or           t0, a1, s7
                  srai         a2, ra, 16
                  srl          s0, a1, a3
                  sll          a6, gp, sp
                  srai         t5, s10, 14
                  sll          a2, t6, s7
                  nop
                  auipc        s4, 332027
                  slti         a3, s1, 1373
                  sll          t6, t0, s3
                  srli         a3, tp, 13
                  auipc        tp, 467183
                  sltiu        t6, gp, 251
                  xor          t4, a5, s7
                  slli         gp, s5, 19
                  add          t3, a0, gp
                  srl          s6, tp, s4
                  nop
                  sub          a3, a5, s8
                  nop
                  ori          a1, sp, 1299
                  srai         s3, a7, 24
                  add          s5, t2, s9
                  nop
                  srai         tp, s4, 16
                  nop
                  xor          sp, s0, s9
                  sltiu        s6, s2, 1813
                  sra          gp, s11, t1
                  srai         tp, t4, 10
                  ori          a6, s0, 1657
                  or           s9, t2, s5
                  sll          sp, s1, a2
                  or           t6, a6, s7
                  slli         s1, sp, 13
                  addi         tp, a4, 1883
                  or           zero, s4, a1
                  srl          s0, s7, s6
                  xori         t1, s7, -787
                  auipc        t5, 36768
                  addi         sp, a0, 554
                  nop
                  sub          t3, t4, t2
                  and          t3, s3, s11
                  sltu         t4, s3, t0
                  addi         sp, t5, -1430
                  or           gp, ra, s0
                  sra          s2, s4, s4
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           a1, 0x80000000
                  li           s3, 0x80000000
                  li           a2, 0x91dd1f9a
                  li           s0, 0x0
                  li           t1, 0xffffffff
                  li           s4, 0x58c8901c
                  li           ra, 0x537ce18e
                  li           gp, 0xffffffff
                  li           t5, 0x80000000
                  addi         t0, s0, 1715
                  nop
                  nop
                  addi         ra, a1, -1198
                  lui          s0, 718044
                  auipc        t0, 708341
                  sub          a1, s3, gp
                  sub          t5, t1, s0
                  auipc        ra, 935600
                  add          a2, ra, t5
                  addi         s4, gp, 1133
                  add          s3, a2, t5
                  sub          t0, t0, t1
                  addi         a1, s0, -394
                  addi         ra, a1, 566
                  sub          s4, a2, s3
                  addi         t5, gp, -1244 #end riscv_int_numeric_corner_stream_4
                  or           t3, a4, gp
                  sub          a1, ra, t4
                  lui          t1, 141539
                  ori          a6, a2, -652
                  nop
                  lui          s3, 355735
                  ori          s0, s4, -642
                  sub          a4, s0, a7
                  srai         t0, s3, 29
                  xor          s1, t3, s10
                  slti         s6, a1, -621
                  and          s8, s2, s7
                  andi         s5, sp, -1387
                  sll          s2, s1, a4
                  xor          t1, s3, gp
                  srli         a3, s8, 4
                  add          s6, tp, a0
                  sltu         s3, a5, s3
                  sltiu        s6, a7, -449
                  add          s6, a6, t5
                  slli         t4, a6, 7
                  slti         s0, a2, -25
                  addi         t4, t6, 1309
                  nop
                  srli         sp, t1, 20
                  slli         tp, sp, 0
                  addi         a2, a4, -1662
                  sra          s6, s7, s2
                  xori         t5, a4, 1103
                  auipc        gp, 710995
                  ori          sp, gp, -1088
                  ori          gp, s0, 419
                  andi         t0, a1, -768
                  sll          zero, t4, s3
                  or           s4, t0, ra
                  ori          t4, t6, 1662
                  xor          s0, s10, s10
                  add          t1, t5, s3
                  sltu         t4, a1, a0
                  xor          s5, s6, s7
                  sll          s4, s8, t2
                  xori         a3, s1, -1257
                  addi         t1, s4, -653
                  slli         s5, a0, 28
                  add          tp, zero, s5
                  ori          t6, t3, 475
                  lui          t6, 473943
                  sltiu        s1, s3, 291
                  auipc        a5, 508685
                  auipc        tp, 112944
                  slti         a6, s11, 1845
                  srli         t3, s0, 26
                  add          tp, sp, a7
                  addi         a1, t3, -1931
                  sltu         s8, t6, t1
                  srli         s2, tp, 8
                  slli         s10, ra, 28
                  addi         a6, s9, 72
                  ori          s11, s6, 318
                  xori         t4, t3, -2004
                  ori          t3, s2, -1564
                  sltiu        t5, t4, 820
                  sltu         t1, sp, s5
                  nop
                  lui          a6, 522041
                  nop
                  ori          a4, t6, -1559
                  slli         s8, a3, 8
                  srli         s11, t2, 0
                  or           t6, s3, s2
                  add          ra, a6, s6
                  sltu         s11, s9, s10
                  add          t4, a5, s11
                  and          s0, t2, ra
                  sra          a2, s8, a0
                  nop
                  andi         s1, a1, -1038
                  ori          a5, s7, 726
                  sra          t5, s11, t0
                  lui          s1, 284515
                  andi         a7, s8, -2043
                  and          s4, s11, a7
                  xor          ra, s2, s8
                  sub          a4, s0, sp
                  auipc        ra, 805708
                  slti         a5, s8, -258
                  ori          s8, sp, -767
                  srl          s6, zero, a7
                  sll          s5, t0, ra
                  ori          s4, s5, 933
                  ori          tp, t4, 154
                  auipc        a5, 108031
                  xor          t4, s6, ra
                  sll          t6, a3, s3
                  slt          s8, s2, t1
                  xor          t6, s11, a7
                  srai         a5, s6, 14
                  sll          t4, gp, t0
                  xori         t6, a3, -1223
                  sra          s1, s7, a6
                  andi         t4, s0, 1448
                  sub          t3, a0, a1
                  srli         s6, t4, 23
                  srli         a4, t3, 10
                  slti         t5, s1, 437
                  sub          gp, a6, s7
                  andi         s1, sp, 657
                  lui          s0, 361352
                  slti         a4, sp, 1486
                  add          s5, t2, s8
                  nop
                  andi         a6, s6, 1753
                  slt          a7, s3, s6
                  and          tp, a1, s11
                  sll          a1, s7, a2
                  srai         t6, ra, 10
                  lui          s3, 216264
                  nop
                  slli         t4, s11, 2
                  la x7, test_done
                  jalr x0, x7, 0
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
                  add x10, x23, zero
                  csrr x5, 0x300 # MSTATUS
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 31
                  bne x5, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x5, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x5, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x5, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x5, x16, ecall_handler
                  li x16, 0x1
                  beq x5, x16, instr_fault_handler
                  li x16, 0x5
                  beq x5, x16, load_fault_handler
                  li x16, 0x7
                  beq x5, x16, store_fault_handler
                  li x16, 0xc
                  beq x5, x16, pt_fault_handler
                  li x16, 0xd
                  beq x5, x16, pt_fault_handler
                  li x16, 0xf
                  beq x5, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x23, x10, zero
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
                  add x23, x10, zero
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
                  add x23, x10, zero
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
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x23, x10, zero
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
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x23, x10, zero
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
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x23, x10, zero
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
