.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x7, kernel_stack_end

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
                  li x0, 0xfb900241
                  li x1, 0xa8f68c7d
                  li x2, 0x96ee3f7a
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0x714c0227
                  li x8, 0xff163b7e
                  li x9, 0x5be204d9
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0xe
                  li x13, 0xf8b00738
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0xf43a398b
                  li x18, 0x7
                  li x19, 0x80000000
                  li x20, 0xf0a70d71
                  li x21, 0x2
                  li x22, 0xfd089d64
                  li x23, 0x3
                  li x24, 0x7c2cdf82
                  li x25, 0x80000000
                  li x26, 0xe9b942bb
                  li x28, 0xf0ecd76f
                  li x29, 0x6
                  li x30, 0xfb35ead1
                  li x31, 0xc
                  la x27, user_stack_end
main:             li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           a7, 0x80000000
                  li           a6, 0xffffffff
                  li           s9, 0xffffffff
                  li           t6, 0x0
                  li           s6, 0x0
                  li           s7, 0xffffffff
                  li           t1, 0x80000000
                  li           sp, 0x9b440f69
                  li           s2, 0x0
                  sub          t4, s9, sp
                  sub          s7, t4, s2
                  auipc        s6, 931655
                  add          a7, t6, s2
                  auipc        t1, 1013734
                  addi         s7, sp, 981
                  lui          t4, 40509
                  lui          sp, 421006
                  sub          a7, s6, a7
                  lui          t4, 692063
                  add          t6, s2, a7
                  auipc        s2, 412786
                  lui          t4, 424696
                  auipc        t6, 543346
                  add          s9, a6, sp
                  sub          s2, t6, t6
                  nop
                  add          s7, s7, s9
                  add          t1, t4, a7
                  addi         s6, a6, 1870
                  lui          s6, 966734
                  addi         sp, t4, 506
                  sub          t4, a7, s2
                  nop
                  addi         a6, s7, 59 #end riscv_int_numeric_corner_stream_19
                  li           t3, 0xd647c80b #start riscv_int_numeric_corner_stream_4
                  li           a0, 0xdd86434a
                  li           s3, 0xffffffff
                  li           s9, 0xffffffff
                  li           sp, 0x0
                  li           a6, 0xffffffff
                  li           a3, 0x0
                  li           s1, 0xffffffff
                  li           gp, 0xffffffff
                  li           a4, 0x352a035
                  add          s1, a4, a6
                  sub          t3, a0, a6
                  nop
                  addi         a3, s3, -74
                  sub          sp, s3, a3
                  auipc        s3, 57086
                  auipc        a0, 593092
                  nop
                  nop
                  add          s3, s1, s9
                  nop
                  add          a0, s9, a3
                  addi         a0, a3, -1699
                  sub          s3, t3, sp
                  add          s1, sp, a6
                  auipc        t3, 63974
                  lui          t3, 851800
                  sub          s3, gp, a6
                  lui          a4, 505046
                  addi         t3, t3, -206
                  nop
                  auipc        a3, 159749
                  addi         sp, s9, 1256
                  lui          s3, 624052 #end riscv_int_numeric_corner_stream_4
                  li           s0, 0xec108e01 #start riscv_int_numeric_corner_stream_17
                  li           a3, 0x0
                  li           s7, 0x80000000
                  li           t5, 0x0
                  li           s5, 0x1bec19c7
                  li           a5, 0xffffffff
                  li           t4, 0x9ea5d800
                  li           a2, 0xffffffff
                  li           s8, 0xffffffff
                  li           ra, 0xffffffff
                  auipc        ra, 618500
                  nop
                  lui          t4, 5925
                  auipc        s0, 82562
                  auipc        s0, 5673
                  sub          a3, ra, s8
                  add          s0, a3, a3
                  nop
                  nop
                  add          a5, t5, a2
                  add          s5, a3, t4
                  sub          t5, s7, a3
                  nop
                  lui          a5, 736740
                  nop
                  nop
                  sub          s5, a5, a3
                  add          t5, s8, s7
                  auipc        a5, 769765
                  lui          s7, 608019
                  nop
                  auipc        ra, 424171
                  addi         a2, s7, -1492
                  auipc        s7, 93815
                  nop
                  addi         ra, ra, 1353 #end riscv_int_numeric_corner_stream_17
                  li           s5, 0x34e816a #start riscv_int_numeric_corner_stream_6
                  li           gp, 0xffffffff
                  li           ra, 0x5e21de36
                  li           s6, 0xffffffff
                  li           s0, 0x45143055
                  li           t1, 0x80000000
                  li           t6, 0xa5ea4f83
                  li           a0, 0xffffffff
                  li           s8, 0xf9cd9a91
                  li           a5, 0x0
                  sub          ra, s0, s6
                  lui          gp, 535331
                  sub          s8, ra, ra
                  add          a5, t6, t6
                  addi         t6, t6, 1815
                  nop
                  add          a0, s0, s0
                  addi         s5, t1, -1663
                  add          s5, s6, s0
                  nop
                  addi         a0, s8, 1073
                  auipc        s5, 715056
                  add          s8, s5, s5
                  auipc        t1, 407132
                  addi         t1, gp, 776
                  auipc        s5, 773109
                  auipc        s5, 750661
                  addi         s6, ra, -826
                  add          ra, s6, ra
                  lui          t1, 1036508
                  auipc        s6, 621483
                  auipc        t1, 147269
                  addi         s5, ra, 268 #end riscv_int_numeric_corner_stream_6
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           s8, 0x80000000
                  li           tp, 0x80000000
                  li           s7, 0xffffffff
                  li           s9, 0xcc8eb646
                  li           t3, 0xffffffff
                  li           s0, 0x1e3c8625
                  li           a5, 0x80000000
                  li           t1, 0x0
                  li           a3, 0x0
                  nop
                  sub          s8, s9, t3
                  auipc        s7, 508969
                  add          s9, s9, tp
                  sub          s7, a5, a5
                  nop
                  auipc        s7, 860939
                  sub          s8, tp, s8
                  sub          t3, s9, a3
                  sub          s9, tp, s0
                  auipc        tp, 177111
                  sub          tp, s8, s8
                  sub          s7, s7, s7
                  sub          tp, s9, a2
                  nop
                  sub          s7, a3, s0
                  auipc        s8, 100917
                  auipc        a5, 469718
                  nop
                  sub          s8, tp, t1
                  addi         t3, t1, -1190
                  auipc        s8, 465155
                  auipc        a3, 679256 #end riscv_int_numeric_corner_stream_13
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s9, 0x89072088
                  li           s5, 0x0
                  li           t6, 0xb25be441
                  li           a5, 0x0
                  li           s1, 0x80000000
                  li           s3, 0x7808c175
                  li           s2, 0xffffffff
                  li           t3, 0x0
                  li           s7, 0xef99df7d
                  nop
                  nop
                  lui          s2, 380461
                  lui          s2, 608207
                  auipc        a5, 185846
                  lui          s7, 70782
                  lui          t3, 556017
                  sub          s1, s5, s9
                  lui          s1, 13412
                  lui          t3, 679274
                  add          s2, t0, s5
                  add          t3, s3, s5
                  add          t6, s7, t0
                  addi         a5, s7, 1351
                  lui          a5, 182741
                  addi         t3, s3, 1821
                  add          t3, s3, s2
                  lui          s7, 132283
                  lui          s2, 542446
                  lui          a5, 668898
                  addi         t0, s5, -1326
                  sub          t3, t0, s5
                  sub          s1, t6, s9
                  add          a5, t3, s5
                  lui          s3, 690345
                  nop
                  addi         s2, s3, 758
                  auipc        s1, 341550
                  lui          a5, 448235
                  auipc        s3, 978507 #end riscv_int_numeric_corner_stream_16
                  li           gp, 0xcbf35507 #start riscv_int_numeric_corner_stream_5
                  li           a4, 0x0
                  li           t5, 0x0
                  li           a0, 0xb8718d5
                  li           s4, 0xc6c90fee
                  li           t3, 0x0
                  li           sp, 0x0
                  li           a7, 0x0
                  li           t4, 0x80000000
                  li           s3, 0x80000000
                  auipc        a0, 51526
                  nop
                  nop
                  nop
                  add          t5, a4, t3
                  addi         t5, a4, -1647
                  auipc        a0, 940781
                  auipc        s4, 355934
                  add          t4, t3, sp
                  addi         t4, sp, 841
                  add          s4, t4, t3
                  sub          s3, a4, s4
                  add          t3, t5, s3
                  lui          s3, 217748
                  add          s3, a7, t4
                  auipc        s4, 947539
                  nop
                  nop
                  nop
                  add          t3, a0, s3
                  auipc        s4, 66275
                  auipc        s3, 329361
                  add          s3, t5, s3
                  add          gp, t3, s4
                  auipc        sp, 91553
                  lui          a7, 595509 #end riscv_int_numeric_corner_stream_5
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           t5, 0xae4a8c86
                  li           s8, 0x94596329
                  li           sp, 0x80000000
                  li           s2, 0x0
                  li           gp, 0x80000000
                  li           tp, 0xffffffff
                  li           s5, 0xffffffff
                  li           t3, 0x0
                  li           s4, 0xffffffff
                  add          tp, tp, sp
                  auipc        sp, 231975
                  auipc        t6, 318864
                  sub          s4, t3, t5
                  lui          t3, 1001650
                  auipc        s4, 98410
                  sub          s4, s4, s4
                  nop
                  auipc        t6, 675439
                  lui          gp, 920596
                  addi         gp, t5, -624
                  addi         t6, sp, 808
                  lui          s8, 161382
                  nop
                  auipc        gp, 204314
                  lui          tp, 618900
                  nop
                  nop
                  sub          t3, t3, tp
                  sub          tp, gp, s8
                  addi         tp, s2, 1882
                  add          gp, s8, s2
                  sub          tp, s5, tp #end riscv_int_numeric_corner_stream_3
                  or           t6, s1, s3
                  sra          s1, s9, t1
                  nop
                  sub          a5, s7, a2
                  or           t6, s11, a6
                  and          a7, ra, t5
                  sub          t0, t3, tp
                  slt          s1, s0, tp
                  ori          a3, t6, -1586
                  lui          a6, 267513
                  lui          a1, 722995
                  sub          a1, zero, tp
                  sltu         t4, t5, t1
                  xor          s9, s0, s11
                  andi         s3, tp, -1492
                  sltu         s5, a3, a3
                  srai         a2, t0, 27
                  slt          t3, s8, t0
                  or           t0, gp, s6
                  sll          a6, a7, t1
                  srai         sp, a6, 24
                  slt          s8, s10, t1
                  nop
                  add          s8, a5, t1
                  addi         ra, a4, -524
                  xori         s5, a7, -504
                  auipc        a6, 225486
                  srai         t1, s0, 4
                  addi         s9, t5, 183
                  slt          s7, s11, s8
                  andi         s7, t5, 1718
                  nop
                  ori          a2, s10, -1900
                  auipc        t6, 822931
                  or           s5, s10, a5
                  sltu         t6, a6, t5
                  sub          s5, s0, t3
                  and          gp, zero, tp
                  sltiu        t1, s0, -435
                  sra          a5, s1, ra
                  lui          a3, 587290
                  nop
                  slli         t4, zero, 16
                  xor          s3, a1, t0
                  addi         gp, a0, 484
                  add          s4, s6, t6
                  sra          a0, s2, s4
                  add          ra, s6, a7
                  lui          t0, 916794
                  srl          s9, s3, a6
                  srl          a4, a0, t3
                  ori          a1, a1, -59
                  sll          s2, a7, gp
                  xor          tp, s9, ra
                  slti         a2, s1, 2033
                  sra          a5, s3, s2
                  addi         t6, s4, 540
                  addi         ra, gp, 1146
                  sub          s4, t3, t6
                  add          t1, t3, s8
                  lui          s4, 586881
                  nop
                  andi         zero, a1, 705
                  or           a2, a1, s0
                  slti         s7, s11, -463
                  sub          s1, t6, s6
                  andi         t1, a7, -1155
                  xor          t1, t4, s7
                  nop
                  and          t4, gp, a4
                  ori          a6, t6, 1641
                  xori         s8, gp, -1620
                  or           s4, t6, s6
                  slli         a7, a4, 2
                  xori         a7, s11, 122
                  add          s3, t5, s3
                  xori         s8, t6, -1857
                  slli         a4, t5, 8
                  slli         s6, a4, 19
                  slti         t5, a5, -510
                  sra          a4, s0, a1
                  slti         a1, s8, 525
                  sltiu        sp, s3, -957
                  xor          ra, sp, s4
                  addi         a0, s2, -1050
                  and          a5, a3, s2
                  andi         t1, sp, 1976
                  add          s4, t3, t6
                  sltiu        a4, a1, -188
                  xori         a3, s5, 55
                  xor          a3, t2, s8
                  nop
                  srl          s4, ra, a1
                  lui          zero, 692051
                  ori          ra, a6, 874
                  auipc        s1, 1026660
                  srli         s9, s5, 11
                  sra          s6, s7, zero
                  sltiu        t3, s9, 1132
                  slli         a3, zero, 31
                  srli         s7, t2, 11
                  slt          s6, a6, a7
                  ori          t1, s9, -1521
                  ori          a2, t5, 1153
                  auipc        s1, 990509
                  nop
                  add          a3, a6, t5
                  sll          zero, t1, s8
                  auipc        tp, 477687
                  andi         s4, s5, 671
                  sub          tp, t6, s5
                  or           a5, s6, tp
                  addi         s3, a6, -130
                  slti         t6, s9, 1055
                  and          zero, s3, gp
                  andi         s2, a1, 1685
                  slti         a4, sp, -1891
                  slti         t0, s1, 478
                  andi         s7, t3, -1327
                  slt          s0, s8, gp
                  slli         zero, a6, 23
                  nop
                  sub          s6, zero, gp
                  sra          s5, t3, t6
                  srl          a1, ra, a4
                  andi         tp, t2, 808
                  ori          t4, a5, -1661
                  srai         sp, t0, 21
                  auipc        a0, 279452
                  sltiu        a4, tp, 1663
                  sra          s1, s0, tp
                  sub          s0, a2, s4
                  auipc        t0, 113299
                  or           s1, a0, s6
                  sltiu        s9, a5, -200
                  sra          s2, ra, t6
                  sll          s0, a3, t1
                  srai         a5, s2, 31
                  xori         s8, s7, -1059
                  addi         s6, s2, -1420
                  auipc        zero, 855356
                  or           s7, s2, ra
                  nop
                  sltu         tp, t0, a3
                  nop
                  srli         a5, a7, 23
                  add          s7, t3, a7
                  sra          a6, s4, s0
                  slli         s9, a6, 16
                  sll          gp, zero, t3
                  and          ra, a5, s7
                  srli         s8, a2, 4
                  and          tp, a1, a5
                  or           t4, ra, s0
                  auipc        t0, 544678
                  andi         a7, s2, 701
                  srli         a0, s11, 12
                  ori          t1, s1, 1949
                  add          t0, t3, s3
                  and          s6, a5, sp
                  srl          a6, s0, t3
                  sub          a0, s4, t1
                  sub          s7, ra, s0
                  sub          a7, tp, a0
                  or           s8, s4, a3
                  slt          s8, s4, s7
                  slti         s6, a5, -1080
                  sltu         s7, gp, a7
                  sltiu        a7, s5, 537
                  lui          t3, 275192
                  slt          gp, s11, s3
                  and          a6, a0, t1
                  srai         s3, zero, 10
                  slt          a3, s2, t2
                  xor          s4, s2, a4
                  auipc        a5, 394553
                  srl          s2, s10, a5
                  slti         s5, t3, 1585
                  srli         s8, sp, 29
                  srl          s9, s7, ra
                  xor          t3, t6, s6
                  sra          ra, t5, a5
                  srai         a5, a0, 4
                  srli         a2, tp, 5
                  slti         sp, s0, 689
                  slli         a7, a7, 27
                  sltu         t6, sp, s3
                  slt          s7, s7, t1
                  add          s9, a3, t5
                  sltiu        t4, t1, -52
                  auipc        t1, 296676
                  slti         a5, s6, -1563
                  slt          a0, tp, a2
                  andi         sp, s0, 1043
                  srl          a6, a5, t2
                  sltiu        a7, t1, -1004
                  srai         sp, s5, 29
                  nop
                  add          a4, a5, s10
                  sub          t3, a5, ra
                  slti         a6, s6, 72
                  sra          s9, s7, t3
                  xori         t3, a1, 1372
                  slti         s5, gp, 486
                  ori          t6, t3, 743
                  srli         zero, s3, 13
                  or           t4, t5, a3
                  sltiu        t1, s0, 523
                  slti         gp, s9, 1755
                  andi         s7, a1, 1232
                  and          a7, a6, t1
                  sll          tp, a0, sp
                  slt          a4, t6, t5
                  auipc        s1, 633896
                  lui          a0, 296920
                  xori         t6, t0, -843
                  and          s4, a5, a3
                  ori          t3, t6, -1623
                  sll          s8, ra, zero
                  sll          s2, s6, a0
                  andi         t4, a2, 1861
                  sltiu        s2, a0, -825
                  sub          t3, s9, a1
                  add          a4, s9, tp
                  xori         a5, a3, -1623
                  sub          t0, a2, ra
                  sltiu        s9, gp, 372
                  srl          a0, s0, s5
                  auipc        t4, 637885
                  addi         ra, tp, 883
                  sltiu        s6, s10, -882
                  or           a2, s5, t2
                  auipc        zero, 886622
                  sll          tp, t5, a1
                  xor          a5, sp, a1
                  or           tp, ra, s9
                  srli         sp, s2, 26
                  sll          sp, ra, t0
                  sub          gp, t0, s1
                  nop
                  sltiu        t5, a2, 1253
                  srai         t4, gp, 16
                  ori          tp, s9, 581
                  srl          t3, t0, tp
                  or           sp, a5, s4
                  andi         t1, s3, -228
                  slti         a3, a7, -917
                  srli         s3, s0, 8
                  slt          s8, s8, s10
                  xor          t3, s10, a7
                  and          t4, t5, a3
                  or           t4, s3, t0
                  nop
                  add          s7, a5, a5
                  lui          t1, 849355
                  lui          a7, 388023
                  lui          tp, 17163
                  slt          a3, ra, sp
                  slti         zero, t3, 1758
                  sra          gp, sp, t6
                  sub          sp, t0, t2
                  sltu         s7, s7, t6
                  sltiu        ra, a7, -1948
                  or           s4, s6, a5
                  srai         s2, a6, 20
                  sub          s5, t4, a6
                  xor          a4, s1, s5
                  slt          a6, a5, t0
                  auipc        a3, 643455
                  andi         s1, s7, 1574
                  sra          ra, t5, a5
                  sltiu        s3, a3, 1034
                  or           t0, t0, s4
                  and          a0, t2, gp
                  add          tp, t2, a7
                  slti         tp, s4, -1286
                  sra          s7, s9, s5
                  slt          s1, gp, s3
                  addi         t5, ra, -413
                  srli         a1, s11, 16
                  srl          s5, a4, s0
                  and          gp, ra, t3
                  lui          s7, 564399
                  sltu         s0, s2, s3
                  ori          t3, t4, -556
                  or           sp, tp, s11
                  sll          t5, gp, s5
                  srai         t4, t1, 11
                  ori          a6, s5, -2044
                  ori          a5, s4, -1087
                  srl          ra, s6, s6
                  slli         a1, a0, 28
                  auipc        s2, 801002
                  srli         sp, t2, 16
                  ori          t3, ra, 1604
                  sltiu        t3, s5, 1909
                  sub          a6, t2, t3
                  srai         s1, gp, 2
                  xor          sp, s5, s1
                  add          s1, gp, t2
                  slt          t4, t6, t6
                  srli         t4, s8, 20
                  and          t6, t4, t6
                  srli         a5, a2, 31
                  sltiu        s9, a2, 766
                  sub          s2, s2, ra
                  nop
                  sltiu        s3, a1, -977
                  nop
                  or           s2, ra, zero
                  andi         s4, t4, -760
                  srl          zero, s11, a2
                  sltu         s5, s2, a6
                  lui          a6, 104768
                  slt          a6, a0, s9
                  or           gp, t4, t0
                  nop
                  slt          ra, s3, a6
                  addi         t5, s10, 467
                  and          a6, s11, t5
                  srli         s2, s0, 9
                  sll          zero, s10, gp
                  slt          s8, a2, ra
                  auipc        t4, 753449
                  sltiu        ra, t0, 467
                  slli         s6, ra, 2
                  srai         t0, s1, 22
                  srli         a0, a2, 3
                  and          gp, a6, s1
                  srl          s2, s2, t2
                  sltu         tp, s11, sp
                  or           s3, a5, t6
                  slti         t5, tp, -7
                  xor          tp, a2, tp
                  srli         tp, sp, 29
                  srl          s8, tp, t2
                  lui          ra, 52205
                  slt          t3, s10, t5
                  sltiu        a5, a1, 1135
                  sub          a5, s6, a1
                  slti         s1, a6, 506
                  xor          a7, s5, t2
                  xor          s9, s7, s0
                  srli         t4, s11, 30
                  xori         t5, s6, -1153
                  xori         zero, s0, -1959
                  addi         t1, s11, -301
                  xor          s8, t0, s11
                  sltiu        s4, a6, -655
                  srai         a4, s9, 17
                  sub          t5, a6, s6
                  or           s5, sp, s6
                  srli         t4, a1, 28
                  slti         s9, s4, 916
                  sll          a3, a3, s6
                  andi         a7, a0, 1696
                  sra          s1, a6, s6
                  xor          s5, t4, s2
                  nop
                  andi         a7, a3, 1451
                  ori          t5, s4, 999
                  addi         a2, tp, 1935
                  auipc        a3, 425528
                  sltiu        t3, t5, 989
                  sra          zero, a4, s6
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           s0, 0x80000000
                  li           s6, 0x0
                  li           a3, 0x0
                  li           a5, 0x80000000
                  li           s5, 0x0
                  li           a6, 0xbf3ed1b6
                  li           s2, 0x80000000
                  li           s7, 0xffffffff
                  li           s8, 0xffffffff
                  add          a6, s8, a5
                  nop
                  auipc        a6, 821490
                  nop
                  add          a6, s6, a6
                  nop
                  nop
                  addi         s2, a3, 1347
                  lui          a5, 42849
                  lui          a3, 109895
                  sub          a3, s7, s6
                  nop
                  nop
                  nop
                  lui          s5, 204103
                  sub          a4, s6, a5
                  nop
                  nop
                  auipc        a3, 248969
                  addi         s0, s5, -1622
                  addi         a4, a3, 1088
                  sub          a4, a4, s5
                  addi         a3, a3, 631
                  sub          s6, s0, s0 #end riscv_int_numeric_corner_stream_11
                  sub          t5, s1, t2
                  addi         t3, s1, -1899
                  nop
                  sub          s5, a0, s10
                  or           sp, s0, s8
                  slt          s3, t6, tp
                  or           s9, t3, a2
                  and          s9, a6, s1
                  andi         a5, s3, -1947
                  nop
                  sub          a6, t0, s1
                  xor          t3, s11, s9
                  xor          a2, a6, t0
                  sltu         a3, t6, t3
                  addi         t5, t0, -1808
                  slli         a1, a1, 0
                  addi         ra, a4, 27
                  or           t3, s1, a0
                  auipc        t1, 757927
                  nop
                  slt          s9, t0, tp
                  srai         s0, s1, 31
                  sltu         a3, s8, a0
                  lui          s2, 203604
                  sltiu        tp, zero, 1189
                  auipc        ra, 221846
                  sll          a0, a6, s0
                  srai         t6, s9, 19
                  srli         s5, a1, 5
                  and          a6, gp, sp
                  xori         a1, s11, 1617
                  sra          a7, sp, s10
                  slt          t6, s8, t6
                  xor          a3, s3, s11
                  add          ra, t3, sp
                  sltu         zero, a3, s8
                  sll          t6, a5, a3
                  sll          s8, a2, a4
                  sltu         s1, s3, s10
                  ori          sp, tp, -334
                  srli         s4, a4, 8
                  sub          s8, a0, t4
                  slti         s7, a5, 1811
                  andi         s2, s9, -1467
                  srai         t5, ra, 1
                  sub          s8, gp, a3
                  or           t5, s0, s3
                  slli         t4, ra, 16
                  srai         a3, a2, 15
                  sltu         a3, sp, a1
                  lui          a5, 414021
                  xor          s7, sp, a3
                  sltu         a7, a6, tp
                  srli         tp, sp, 16
                  srli         tp, s9, 30
                  srli         a3, s5, 25
                  ori          s5, a4, 1722
                  add          s7, t2, t0
                  sltiu        sp, zero, -894
                  and          t4, a2, s6
                  xor          t3, t0, t6
                  ori          sp, s9, -668
                  slti         a1, s9, -1614
                  sub          ra, a0, s10
                  add          t0, s0, t5
                  nop
                  auipc        zero, 11252
                  auipc        s6, 944752
                  sra          a7, t2, a1
                  andi         t4, s5, 1328
                  xori         s9, a1, -361
                  nop
                  slt          a2, s2, s7
                  or           a6, s8, tp
                  srai         s0, a3, 18
                  sltiu        t1, s2, -343
                  sll          s1, s11, gp
                  xori         a6, t5, -1158
                  addi         t0, gp, 190
                  sltiu        s2, t4, -334
                  slli         s3, a1, 2
                  sra          a5, t0, a5
                  ori          s0, s6, 308
                  xori         t6, s7, -654
                  sra          a1, sp, t3
                  andi         a5, zero, -175
                  nop
                  sll          a5, t2, a6
                  srl          zero, t0, s2
                  sub          tp, s1, t1
                  slli         ra, a0, 12
                  slli         t6, t1, 11
                  lui          ra, 388628
                  xori         sp, zero, 1460
                  xor          zero, s11, tp
                  xor          gp, zero, zero
                  slli         a6, t1, 22
                  lui          sp, 854821
                  auipc        s5, 965967
                  auipc        s5, 620061
                  sub          t0, s10, t2
                  or           a7, t4, a1
                  and          gp, s10, s7
                  and          s1, s5, t2
                  srl          a4, gp, s7
                  sltu         a6, s3, t0
                  sltiu        gp, t5, -336
                  auipc        a0, 505077
                  sra          s2, a1, zero
                  srl          s5, s3, t2
                  sltiu        s2, s2, -590
                  xor          gp, s9, tp
                  srai         s8, t6, 23
                  ori          s8, a0, 1738
                  srli         gp, sp, 9
                  srl          s6, s9, s0
                  slt          a1, s2, t2
                  ori          s8, s5, 714
                  addi         s9, gp, -1866
                  srl          a3, zero, a5
                  srl          s7, t0, t2
                  xor          t4, s5, s4
                  add          t0, a6, zero
                  slt          a0, a6, a5
                  andi         a3, t4, -463
                  srai         a6, a4, 9
                  lui          s0, 40868
                  srl          s4, a4, s3
                  slti         s3, a6, 1039
                  xori         t6, s9, -762
                  xor          a2, t1, s7
                  xor          zero, s2, gp
                  srli         t6, s0, 26
                  auipc        a4, 868108
                  and          s5, s7, ra
                  add          t1, a4, a5
                  srli         t5, s9, 7
                  sub          s1, s6, t4
                  xor          t6, a0, a5
                  srl          ra, a3, a1
                  andi         a2, a3, 588
                  xor          zero, s2, s10
                  and          t6, a4, a2
                  addi         a7, t1, -1572
                  sub          t6, t0, s0
                  or           s6, s1, s0
                  add          s4, t5, s9
                  xori         s2, s1, -1903
                  ori          a4, t4, 1278
                  srai         a1, a5, 9
                  nop
                  add          tp, s6, t0
                  slt          a7, s6, t0
                  sltiu        t5, t6, 1125
                  srli         a4, a7, 20
                  sra          t0, a6, t6
                  sll          gp, t0, s8
                  slt          s9, a4, zero
                  auipc        s8, 517294
                  slt          gp, tp, t2
                  add          s7, s0, a6
                  slli         a4, zero, 23
                  sltiu        s0, sp, 1578
                  nop
                  slt          gp, s0, t5
                  or           s4, s0, a0
                  sub          s0, ra, zero
                  srli         s1, t5, 17
                  slti         sp, t0, -972
                  nop
                  sra          s6, t2, s6
                  or           t6, s3, a1
                  addi         ra, s9, -354
                  slti         a0, a7, -254
                  slt          a7, t5, s4
                  srl          s9, t0, ra
                  srli         s9, ra, 2
                  andi         a0, ra, 1229
                  nop
                  srli         a1, a4, 19
                  slli         t5, t4, 7
                  sltiu        s6, s11, -1534
                  addi         s0, a3, 1731
                  or           s1, a2, s4
                  srli         s5, t6, 19
                  xor          sp, t1, a4
                  ori          t6, t0, -736
                  sub          a2, a7, s5
                  xor          t4, t4, a1
                  slli         s5, s7, 24
                  sll          a4, gp, a0
                  lui          s1, 925238
                  srli         a0, t0, 17
                  nop
                  sltiu        s5, a0, -763
                  addi         s4, a2, -1995
                  sltiu        s8, gp, 865
                  xori         zero, tp, 1521
                  addi         t0, a6, -1996
                  nop
                  sltu         a6, t5, s9
                  add          t3, zero, s1
                  slti         t6, t2, -1749
                  auipc        s4, 787239
                  sltiu        t0, t4, 954
                  and          a5, s4, a0
                  xori         s2, a0, 987
                  sltu         sp, s10, tp
                  or           s3, s8, s4
                  auipc        s4, 644707
                  xor          a4, t3, t1
                  sltiu        tp, gp, -544
                  ori          s0, a0, 1110
                  auipc        s1, 708773
                  and          t5, a5, t5
                  addi         a4, a4, -1297
                  slti         s2, a3, 171
                  sltu         tp, s0, t4
                  xor          s8, a0, sp
                  or           a6, s11, a5
                  ori          a4, a5, -801
                  srli         s9, a2, 12
                  and          sp, s2, s8
                  slti         s0, s10, 29
                  ori          ra, tp, 900
                  slli         a6, a3, 0
                  xori         a5, a3, 1359
                  sltu         a7, t1, t2
                  sltu         a1, t1, s8
                  sll          zero, s5, tp
                  xor          gp, s5, a0
                  srl          a2, ra, s3
                  srli         t1, s1, 10
                  sra          tp, s1, s4
                  sra          t5, sp, s3
                  srli         s6, s0, 10
                  sub          t4, s2, s0
                  xor          s8, s7, s4
                  slti         a3, t0, -1956
                  add          t4, s5, a1
                  lui          a1, 156481
                  sra          s0, t0, t6
                  sltiu        ra, s0, 1695
                  nop
                  or           t1, s11, t4
                  lui          s1, 580388
                  auipc        t6, 9795
                  and          a6, s5, s9
                  nop
                  lui          s0, 711753
                  sltiu        s0, a4, -452
                  ori          sp, t3, 1610
                  add          s2, s11, t0
                  srli         t6, t0, 20
                  xor          t4, ra, a4
                  sub          t4, s0, sp
                  addi         gp, t2, -1883
                  andi         t0, zero, 1168
                  ori          s5, s4, -977
                  auipc        tp, 860404
                  auipc        a1, 301675
                  srli         zero, a2, 4
                  srl          a3, ra, a1
                  sll          zero, s0, s3
                  sll          s3, s5, a5
                  auipc        s1, 859989
                  sltiu        s5, a3, 1465
                  sra          s2, gp, t4
                  sltiu        a2, s11, -1865
                  sll          s8, a4, a5
                  xor          s7, t3, a6
                  auipc        t6, 741777
                  xori         s7, s10, 1331
                  andi         a7, t6, -734
                  nop
                  nop
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           ra, 0x0
                  li           t6, 0x80000000
                  li           t3, 0xae4d716a
                  li           a2, 0xffffffff
                  li           s9, 0x80000000
                  li           t1, 0x91fda951
                  li           gp, 0x9dfb404
                  li           a3, 0x0
                  li           a0, 0x0
                  addi         a0, s1, 740
                  nop
                  auipc        t1, 693065
                  lui          s1, 397743
                  addi         t6, ra, 1588
                  nop
                  auipc        t3, 318093
                  auipc        a3, 924454
                  nop
                  lui          t1, 615801
                  lui          a3, 657377
                  add          t1, a2, a0
                  add          gp, ra, s9
                  auipc        a2, 4334
                  lui          t6, 468771
                  addi         a2, t3, -826
                  sub          a0, t3, t3
                  lui          t6, 91861
                  lui          a2, 437193
                  add          t1, s1, gp
                  lui          t6, 551612
                  lui          t6, 303682
                  addi         gp, t1, 141
                  lui          t3, 449077
                  nop
                  addi         s1, t1, 449
                  addi         a2, t1, -278
                  lui          gp, 874013
                  sub          t6, t3, t3
                  auipc        a2, 505276 #end riscv_int_numeric_corner_stream_1
                  or           s2, s6, t0
                  ori          s5, t3, -1202
                  andi         a4, s8, -952
                  add          a7, t0, s8
                  xor          t0, s10, a4
                  sltu         s0, a2, a4
                  srl          a5, t1, s2
                  slli         t6, ra, 30
                  addi         t1, t6, -449
                  srl          t3, s7, s9
                  addi         s0, s9, -1042
                  auipc        sp, 67167
                  sll          s5, t3, t6
                  slt          ra, a6, t6
                  or           a1, a3, s7
                  srli         t0, s9, 8
                  srli         zero, a5, 23
                  xor          t4, t5, a6
                  or           s7, s1, t3
                  ori          tp, s3, -1278
                  nop
                  sub          a7, a7, t0
                  srli         a1, t3, 25
                  srl          sp, a3, a6
                  sra          a6, s6, t1
                  xori         s2, s5, -1253
                  srli         s4, gp, 3
                  andi         sp, t0, -1906
                  sltu         sp, tp, s11
                  add          s8, t0, s10
                  auipc        s9, 7954
                  slt          sp, s1, a0
                  srli         a0, t3, 26
                  slli         s3, t2, 21
                  srai         s3, t2, 26
                  add          a5, a5, gp
                  sra          t0, s9, s11
                  ori          s2, a6, -850
                  slli         zero, s11, 17
                  slti         s2, s10, 529
                  nop
                  or           t5, s1, s10
                  lui          t6, 99816
                  srai         t0, t3, 25
                  srl          s3, s0, ra
                  ori          s6, s4, -1763
                  and          a5, sp, sp
                  srli         s6, ra, 29
                  sll          zero, a3, zero
                  andi         a1, t4, -1050
                  srl          s5, s11, s7
                  nop
                  sll          a2, t1, t1
                  ori          a6, s3, 23
                  xori         sp, s3, 1043
                  lui          s4, 745880
                  and          s3, a3, s0
                  andi         a1, s7, -2020
                  srl          s1, a7, s3
                  or           a3, s4, s3
                  sub          s1, s3, t6
                  srl          s1, t1, t3
                  nop
                  sub          a5, s6, tp
                  sltiu        s5, tp, 982
                  slli         sp, a5, 28
                  lui          s2, 287226
                  lui          t0, 965113
                  sra          s2, a1, t0
                  sltiu        s4, t4, -1786
                  add          s8, a0, s6
                  sll          a2, s10, t6
                  slli         s5, ra, 12
                  auipc        a1, 896098
                  slt          s1, s6, s7
                  xor          s6, s2, s10
                  add          s9, s8, s10
                  srai         ra, t3, 24
                  lui          t6, 547733
                  slt          a1, s8, sp
                  ori          a6, ra, -75
                  sll          s5, s6, tp
                  ori          t1, a7, 1931
                  xor          t6, a7, s2
                  lui          s8, 405926
                  lui          a3, 682685
                  sll          t3, sp, s3
                  srl          s0, zero, s7
                  sll          a4, s9, sp
                  sll          s7, t4, s0
                  nop
                  sub          a6, a5, a3
                  sra          s0, a6, ra
                  andi         zero, t2, 1475
                  addi         a7, ra, -1133
                  sra          t4, t1, t3
                  add          s6, tp, a7
                  slti         s1, s10, 1911
                  auipc        t3, 399686
                  sll          s2, tp, s7
                  srl          s4, t5, gp
                  and          a3, a0, s6
                  srai         a7, s7, 16
                  sub          t6, t4, zero
                  sltu         s8, s5, t5
                  xor          gp, s8, tp
                  slti         a5, ra, 1450
                  andi         s4, a2, 1909
                  srli         a6, s4, 23
                  slti         a0, s9, 651
                  sub          a0, a2, sp
                  slt          s7, s0, s8
                  auipc        s4, 826827
                  ori          s4, a2, -1274
                  xor          t0, s0, a5
                  srai         t4, a0, 12
                  srli         t6, a2, 2
                  slt          gp, a3, ra
                  add          a7, s9, s1
                  and          s3, s11, a7
                  sll          a2, t1, t2
                  sub          t0, t1, t1
                  srl          tp, s0, s2
                  lui          t0, 85156
                  xori         s0, t2, -472
                  addi         t6, zero, 1524
                  xor          ra, s6, s3
                  or           s2, tp, s1
                  sltiu        tp, a0, -343
                  sub          gp, a4, s9
                  sltiu        gp, s2, -1032
                  auipc        a2, 638095
                  nop
                  srli         t5, t4, 2
                  srl          t4, a1, s11
                  slti         t6, t0, 1391
                  add          a0, s6, a5
                  slt          t0, t3, s7
                  slti         zero, s5, -219
                  sll          a4, s2, a4
                  auipc        t0, 600401
                  slli         s2, s5, 9
                  srli         s3, t0, 7
                  nop
                  or           ra, a6, s0
                  srai         a0, s9, 6
                  sub          s7, a6, s4
                  srai         s4, a5, 20
                  sltiu        t3, s4, -1709
                  nop
                  xor          t0, t0, s10
                  add          a5, a5, s5
                  or           a4, a6, s11
                  or           sp, s1, a1
                  sub          s6, t0, gp
                  auipc        s4, 37774
                  andi         t5, t2, 647
                  addi         s7, s0, -1848
                  sll          s1, s3, a7
                  sll          zero, s8, a7
                  add          a4, a1, a6
                  sra          s9, s6, ra
                  slt          t1, s6, a6
                  xor          t5, s4, zero
                  slt          zero, s5, s11
                  andi         s4, s5, -1709
                  sltiu        a1, t0, -1193
                  ori          s2, a3, -1617
                  sra          sp, s11, a7
                  slti         s8, s11, 1918
                  srl          t5, a6, t1
                  nop
                  sub          s3, s8, t1
                  sll          t3, t2, s0
                  add          t3, s6, s0
                  ori          t4, ra, -1681
                  addi         s4, a3, -1206
                  and          s5, sp, a1
                  xor          a3, a0, a7
                  slt          s2, t5, a3
                  srl          s8, zero, s5
                  srli         a3, a3, 19
                  andi         ra, t1, 370
                  add          t3, t3, t3
                  sll          ra, s4, s6
                  slli         a1, s7, 31
                  xor          s9, s9, zero
                  auipc        t5, 374484
                  or           t5, a6, gp
                  addi         t0, ra, 1603
                  nop
                  lui          a7, 153052
                  ori          zero, s10, 1542
                  slti         t0, ra, 211
                  and          ra, sp, a4
                  sltiu        s8, s3, -346
                  and          a4, tp, s1
                  slt          t4, s1, a3
                  slti         zero, s7, 474
                  srli         s6, a6, 3
                  or           tp, sp, zero
                  xor          a6, s1, t3
                  nop
                  slt          s7, s7, a7
                  xori         s6, s4, -1871
                  slt          t4, s0, s6
                  slti         zero, a7, -251
                  sra          s3, t1, a5
                  addi         s2, s5, 286
                  and          s4, s6, a2
                  slti         a2, a4, 1148
                  or           s8, s9, s6
                  xor          a0, s10, s0
                  and          a1, s0, t0
                  nop
                  add          t4, tp, a2
                  xori         a1, a7, -1214
                  slt          a0, a6, s10
                  sub          s3, sp, a6
                  auipc        zero, 538312
                  sltiu        s7, s6, 1548
                  or           t5, s11, s8
                  add          ra, a3, a6
                  srl          gp, s6, t1
                  slli         s4, a5, 27
                  srai         t6, a2, 6
                  sra          s0, a6, a5
                  or           t4, t0, a4
                  sra          tp, s6, a7
                  and          t5, s8, t3
                  xor          t5, s5, a6
                  andi         a6, a0, -115
                  andi         s5, gp, 493
                  sll          a7, a0, gp
                  srli         a5, sp, 27
                  andi         t4, t6, 1985
                  ori          s7, a2, -1553
                  sll          a1, a7, s9
                  xor          a1, a7, gp
                  and          t3, t4, s4
                  slti         s3, s1, -1823
                  srai         s2, a1, 3
                  and          a2, s0, sp
                  srli         t1, t2, 14
                  slti         a6, s4, 199
                  addi         s3, a0, 190
                  andi         sp, sp, 1172
                  auipc        s1, 751836
                  sll          t3, a3, t1
                  add          a6, s10, tp
                  slti         t5, s5, -1098
                  ori          a7, a4, 105
                  add          a7, ra, tp
                  andi         t1, t5, 1381
                  sra          s9, t1, a7
                  nop
                  add          a2, gp, s8
                  ori          a3, a0, -2005
                  xori         a0, a3, 1074
                  and          t6, t2, t0
                  add          t4, a4, a0
                  andi         s7, t6, 1296
                  and          s9, s11, s6
                  ori          gp, t4, -1104
                  sltu         a2, t4, t1
                  srli         t5, zero, 6
                  andi         s0, s10, -962
                  sub          a7, ra, s6
                  srai         s7, zero, 4
                  sll          t5, a2, a1
                  addi         tp, s4, 163
                  add          s9, t5, a3
                  xori         a7, s7, -1927
                  and          t4, t6, s8
                  and          s1, s8, a6
                  ori          s5, t1, 984
                  sll          t1, s1, s3
                  or           t3, a6, zero
                  slti         s1, a7, -599
                  lui          s8, 751643
                  sra          t1, a5, s6
                  add          s7, t4, s1
                  and          s7, s7, s8
                  sltu         gp, s4, s10
                  slt          s5, s4, s11
                  sltu         a4, a0, s5
                  slti         t0, a4, 627
                  xori         ra, t6, 775
                  slti         s4, tp, -1608
                  or           s7, t5, gp
                  nop
                  auipc        a3, 794046
                  sra          s6, t1, sp
                  lui          tp, 157653
                  lui          s6, 959470
                  or           ra, t3, s8
                  sub          ra, t0, s0
                  slli         s8, ra, 30
                  andi         a4, s6, -1211
                  sra          tp, s9, t6
                  ori          s7, ra, 960
                  sll          a4, s9, a6
                  srli         a6, s10, 29
                  lui          a1, 70437
                  sltu         t0, a2, s4
                  srli         s2, s7, 14
                  auipc        a2, 190288
                  sltiu        s6, s1, -1550
                  lui          s4, 205949
                  sltiu        t1, zero, 661
                  sra          sp, t1, s1
                  lui          t4, 873016
                  andi         s9, t0, -868
                  xori         ra, s0, 450
                  srli         t5, t5, 16
                  addi         t5, a0, 1562
                  sltu         t5, gp, a0
                  srai         s7, a2, 8
                  sltiu        s0, gp, 1498
                  srl          a6, a4, t4
                  sltu         s7, s3, zero
                  sltiu        t1, a4, -834
                  ori          a0, t6, -1575
                  sll          sp, t0, a7
                  auipc        a2, 318325
                  andi         a0, s1, -604
                  nop
                  lui          s8, 737038
                  srl          s8, zero, t5
                  slt          t3, s11, s5
                  and          ra, gp, s2
                  sltiu        zero, tp, 1935
                  xor          s5, s3, a1
                  add          a6, t3, a6
                  sub          a0, s1, a6
                  lui          a1, 907169
                  lui          t5, 141792
                  sra          s1, s3, a5
                  sll          t6, s1, tp
                  sll          s1, s7, t2
                  slli         s4, s7, 21
                  nop
                  lui          t3, 695285
                  andi         s6, a0, -1534
                  srli         zero, a3, 26
                  xori         s4, a4, 490
                  lui          a6, 556269
                  sltiu        a5, s0, 824
                  srli         s9, s3, 28
                  srli         a5, s4, 11
                  sub          a1, t5, s5
                  nop
                  sll          a7, t4, a2
                  xori         s8, s1, -1240
                  add          t5, a7, a5
                  auipc        a6, 367639
                  or           s4, a0, zero
                  and          t6, t6, s5
                  xor          sp, a5, gp
                  nop
                  sll          s8, zero, s1
                  xor          a4, s11, s3
                  sub          gp, s11, s4
                  slti         t6, a4, -324
                  auipc        s9, 915885
                  sltu         a7, gp, s7
                  addi         a4, ra, 1240
                  xori         t1, t6, 1779
                  or           s7, s11, a0
                  sltu         s3, s2, zero
                  sll          s1, a2, ra
                  slli         s2, a3, 27
                  sltu         s4, t3, s8
                  slti         tp, t5, -1620
                  sub          t6, a7, s0
                  sub          s3, t1, t2
                  addi         a5, s8, 296
                  andi         a3, t1, -45
                  srl          ra, sp, tp
                  xori         a5, a7, -120
                  srl          s7, gp, a6
                  add          a5, s3, a2
                  sltu         gp, s3, s5
                  ori          s9, t0, -505
                  addi         a7, a7, -14
                  slti         s1, t6, 1748
                  addi         s8, zero, -1681
                  srl          gp, t6, tp
                  slt          t4, s7, s9
                  sra          gp, a5, zero
                  slli         a5, a3, 30
                  ori          s4, s11, 1083
                  sra          s1, t4, a0
                  andi         gp, a5, 1710
                  xori         s0, s11, 1802
                  slt          a1, t1, t1
                  slt          t0, t5, a3
                  sltiu        a0, s9, -1277
                  lui          t0, 906777
                  auipc        tp, 678597
                  nop
                  xori         s1, tp, -1840
                  ori          a6, s9, -1360
                  add          s4, tp, s6
                  or           s2, a5, s4
                  nop
                  sll          a6, t5, t6
                  add          s8, sp, zero
                  sltu         s8, t4, a1
                  sra          s2, s11, a2
                  sltiu        t5, s4, -121
                  xori         a3, t1, 1254
                  slt          s1, t0, a1
                  xori         s4, s10, 1812
                  srai         ra, sp, 1
                  nop
                  sub          a3, a5, s10
                  nop
                  lui          t6, 940229
                  srl          t1, s1, s2
                  srli         t1, a7, 13
                  sra          zero, a4, s0
                  xori         s3, s5, 376
                  srai         s5, a5, 22
                  sra          s3, t3, s10
                  srli         a7, ra, 16
                  add          tp, s9, gp
                  ori          s8, s7, -1257
                  nop
                  or           s5, s11, gp
                  lui          s5, 567145
                  sub          a1, t4, s0
                  addi         s8, t5, -1500
                  andi         t4, a0, 156
                  srai         s2, s8, 18
                  auipc        a1, 575250
                  xori         s8, s0, -1039
                  andi         gp, zero, -1890
                  ori          s1, gp, -676
                  or           t6, s5, s2
                  ori          gp, s11, 1475
                  auipc        t0, 46685
                  add          s1, a2, a0
                  slt          t3, t6, t5
                  auipc        s0, 178029
                  and          s6, s6, a4
                  srl          sp, a5, t3
                  sltiu        s7, a5, -637
                  add          s8, zero, t6
                  addi         s2, a7, 1991
                  sltu         a2, a7, a5
                  auipc        gp, 369917
                  slli         a4, a0, 21
                  auipc        s3, 825713
                  add          a1, s9, t4
                  auipc        a6, 974672
                  sra          s2, s10, a3
                  xori         s0, s0, 173
                  slti         a7, t3, 1409
                  xor          t6, a3, gp
                  ori          s7, t0, -844
                  srl          zero, s9, s2
                  or           s7, zero, s7
                  xori         s3, sp, 280
                  add          s0, a3, t3
                  srl          zero, s4, a6
                  slt          t5, a7, s3
                  srai         a1, s7, 14
                  slt          s1, ra, zero
                  slt          a0, s3, a5
                  sltiu        s2, a0, -508
                  slli         s6, s11, 6
                  auipc        a1, 168109
                  sltu         t1, s9, a7
                  slt          a6, t6, s0
                  slli         a1, t0, 4
                  andi         s1, s8, -517
                  andi         ra, a7, -1970
                  slt          t4, s1, tp
                  sub          t5, t3, gp
                  slli         a7, t6, 12
                  add          gp, t1, t2
                  sra          a5, t6, t3
                  slti         a5, s4, 1388
                  sltu         t1, a1, a0
                  sll          s4, sp, a7
                  sra          s0, a0, s7
                  sltu         t6, t6, s9
                  xor          s2, s7, tp
                  slti         s4, a1, 250
                  sltiu        gp, a7, -1725
                  andi         a2, s8, -1924
                  andi         a2, sp, 1433
                  or           a1, s4, a1
                  slti         t4, a2, -1041
                  andi         t6, zero, 1296
                  xori         gp, a0, -160
                  or           s3, s7, s8
                  sltu         t1, t5, a0
                  ori          a6, t6, 463
                  srli         t1, t3, 2
                  sltiu        s8, a4, 990
                  sll          a1, ra, gp
                  addi         a6, a3, -640
                  sltu         s0, s7, t5
                  sra          s8, t4, s7
                  xor          s9, t1, t6
                  sltu         a5, s7, ra
                  xor          a2, sp, s6
                  sub          t5, t6, a2
                  sub          t1, s4, s10
                  lui          ra, 215571
                  srai         t1, s4, 1
                  lui          s8, 602928
                  sll          tp, t5, s6
                  slti         t3, s0, -70
                  or           gp, a2, ra
                  sltu         a1, s10, s9
                  srai         a2, s0, 20
                  nop
                  sltiu        a5, t6, 348
                  sltu         t5, zero, a5
                  sub          t4, sp, t0
                  srl          s0, t5, ra
                  andi         t5, sp, 875
                  ori          a5, s1, 1777
                  srai         t4, t6, 9
                  srli         t5, a1, 23
                  xor          a4, a3, s2
                  srai         a7, t5, 12
                  xor          s0, s11, a4
                  addi         s6, t4, 148
                  slti         t1, s0, 1711
                  srai         a4, sp, 19
                  sltu         t4, s6, t0
                  sub          t3, s3, t5
                  and          t1, a5, s5
                  addi         a0, s11, 1465
                  nop
                  xor          a4, a3, s8
                  xor          a0, s3, s7
                  sltiu        t4, s6, 1462
                  sub          a4, ra, a6
                  nop
                  lui          ra, 96574
                  xor          a6, s4, s10
                  xori         t6, s0, 205
                  addi         sp, a5, -471
                  srl          a5, t3, t4
                  sll          s0, ra, a2
                  or           s2, a7, gp
                  andi         s3, a4, -1061
                  slt          zero, a5, ra
                  ori          t0, ra, 969
                  and          s4, s3, a1
                  lui          a6, 459604
                  slli         sp, a3, 30
                  xori         s0, s0, 1090
                  and          s4, s7, t5
                  or           sp, a1, t1
                  nop
                  sltu         gp, a1, s8
                  sra          t3, zero, a2
                  auipc        s5, 634116
                  ori          t6, a7, -1251
                  or           a3, t2, tp
                  sltu         s4, a5, a7
                  and          s8, s1, zero
                  lui          zero, 396946
                  sltu         t4, sp, a7
                  nop
                  and          a1, s7, zero
                  xori         s9, zero, 901
                  nop
                  addi         t3, s0, 300
                  add          tp, t4, a3
                  and          s3, t1, s6
                  auipc        a2, 545391
                  sra          s0, ra, s9
                  and          t3, a7, a0
                  srai         a2, s6, 27
                  sub          sp, s7, s4
                  sll          a5, t4, t6
                  lui          s7, 667332
                  sra          t3, t0, s5
                  or           t6, a1, s7
                  slt          a7, a7, t1
                  sra          zero, a1, t1
                  xor          s0, t1, s3
                  sub          t1, s8, t2
                  and          s2, ra, a3
                  sra          s3, a1, s10
                  auipc        sp, 76329
                  andi         a4, s6, -1867
                  add          s4, a2, a1
                  andi         s3, s0, 568
                  auipc        s6, 397949
                  slli         s6, s8, 2
                  or           sp, s8, ra
                  sll          s4, s3, s8
                  xor          t0, a6, a4
                  lui          s2, 293830
                  andi         a0, a5, -470
                  sltiu        s6, t3, 1673
                  or           s1, s11, t2
                  sltiu        t4, s7, -1292
                  sub          t5, t6, s0
                  sub          t4, sp, s1
                  sra          a1, a6, a1
                  andi         a7, t5, -1315
                  sub          a4, a5, sp
                  sra          tp, gp, a7
                  sra          s6, a0, a0
                  lui          t3, 813655
                  add          t5, s9, s7
                  slt          tp, tp, a7
                  slt          s3, s1, t4
                  sra          s5, t0, a1
                  sltu         sp, gp, s7
                  add          s9, a7, s0
                  sub          s0, s1, gp
                  sub          ra, gp, s9
                  ori          sp, s3, 1954
                  sltiu        t6, a1, -1264
                  or           s3, sp, t3
                  sra          a5, s0, a5
                  ori          t1, zero, 394
                  slt          t5, a2, t0
                  sltiu        t4, s8, 779
                  xori         s9, s1, 1461
                  sltiu        a4, t3, -632
                  or           s6, ra, t5
                  sra          s8, t5, a0
                  slti         t3, a1, -822
                  srl          s4, s6, t1
                  sub          s1, a5, a1
                  addi         t5, a7, -1392
                  srai         zero, a2, 26
                  auipc        s0, 98880
                  lui          s0, 727460
                  slt          t3, a2, s5
                  and          a5, s0, s4
                  srli         s6, s0, 9
                  srli         s1, a6, 23
                  nop
                  addi         a4, s4, -216
                  slli         t4, s7, 25
                  xori         a1, t1, 356
                  or           t0, s9, a2
                  sltu         a6, ra, ra
                  sltu         t1, t3, a7
                  srai         t6, ra, 7
                  srli         a7, s10, 7
                  slli         t6, ra, 10
                  srli         a0, zero, 16
                  add          a7, s2, t5
                  xor          s0, t6, t5
                  lui          s2, 7791
                  sub          s2, s6, gp
                  and          a1, t0, t4
                  srli         t0, ra, 1
                  sll          t4, s7, a0
                  sltiu        a0, a3, 1869
                  sll          s0, a3, a5
                  nop
                  sll          ra, s1, s4
                  nop
                  sltu         a4, s6, s5
                  addi         a1, a2, 1217
                  andi         s4, s0, -948
                  srl          a7, s10, t6
                  srl          t5, s7, s3
                  or           s0, a6, a5
                  slli         s7, t1, 0
                  nop
                  slt          gp, sp, a3
                  add          t0, a4, a4
                  slt          t4, a1, a1
                  srl          s2, s6, s8
                  sltiu        t5, s1, -958
                  sltu         a0, a3, s11
                  add          a1, t3, a4
                  xor          gp, ra, a5
                  xori         a5, s6, -1012
                  srli         a1, a5, 11
                  sra          t0, t5, s6
                  lui          t5, 331660
                  sra          a0, sp, a2
                  xori         t4, s10, 374
                  auipc        t1, 80408
                  sll          s5, gp, tp
                  sub          s0, sp, t6
                  ori          tp, s2, 610
                  sub          s8, t3, a6
                  and          s7, t2, a1
                  and          a2, a1, a2
                  and          a4, s9, s8
                  slli         s8, t1, 31
                  srl          ra, s5, s11
                  addi         s3, tp, -620
                  sltiu        t1, s4, -1876
                  slti         a5, a4, 668
                  slt          a4, t3, a1
                  auipc        t6, 21861
                  slli         a7, zero, 26
                  lui          a2, 603206
                  srai         t5, s2, 30
                  srai         ra, a0, 17
                  xori         s1, t6, 1036
                  srli         s4, zero, 8
                  auipc        sp, 646837
                  srl          s5, a6, gp
                  add          t3, a7, zero
                  add          a2, a1, t1
                  sra          sp, gp, s1
                  addi         s1, s1, 626
                  auipc        s5, 489304
                  sltu         s2, s1, a1
                  lui          s9, 926840
                  addi         s3, s6, -271
                  sra          s7, ra, s11
                  slt          t5, s11, t2
                  nop
                  sll          s2, t5, a0
                  slli         s0, t1, 5
                  sra          s7, s9, a4
                  sll          t0, s11, s9
                  ori          s4, t5, 1248
                  andi         tp, s11, 1529
                  ori          sp, s0, -1190
                  slt          a1, s5, t6
                  xori         s1, a4, 1109
                  sra          s9, t0, t2
                  or           a7, s8, s10
                  nop
                  slt          s5, a2, a6
                  auipc        a1, 299425
                  andi         sp, zero, 508
                  srl          s4, a2, t1
                  sra          a2, t3, s6
                  srli         a1, t2, 27
                  nop
                  sltiu        t1, s8, 447
                  xor          t5, t0, a5
                  sra          s8, s9, t3
                  sltiu        t4, a1, 427
                  addi         a4, ra, 727
                  ori          ra, a5, -270
                  or           zero, t5, a5
                  slti         s1, s8, 711
                  slti         gp, t2, -1486
                  srai         s8, s0, 5
                  srl          a0, s3, gp
                  addi         s4, s7, 1468
                  slt          tp, t6, a2
                  sra          s2, s8, s11
                  andi         s1, gp, -1575
                  or           s2, zero, s2
                  slt          tp, s6, a6
                  lui          t0, 126400
                  srai         tp, t5, 15
                  sll          t0, s0, a4
                  sub          tp, s10, s6
                  add          s1, s3, sp
                  ori          a2, gp, 898
                  srai         s7, a6, 25
                  slli         s8, t6, 9
                  add          a3, a4, t5
                  srli         s9, a6, 0
                  or           s8, t6, gp
                  srli         sp, t5, 23
                  xor          a1, t1, s4
                  auipc        t6, 548472
                  ori          a7, s6, -1083
                  srli         sp, zero, 9
                  or           a2, s8, t0
                  slti         sp, s1, 300
                  ori          s1, a3, 154
                  addi         a2, t1, -1686
                  ori          a6, zero, 50
                  auipc        s4, 323757
                  srl          s2, a6, s11
                  addi         t3, t2, -63
                  srai         t1, a1, 23
                  sll          a5, gp, s5
                  lui          t6, 583618
                  add          s5, gp, s7
                  auipc        a6, 561630
                  slti         s9, sp, 658
                  auipc        a5, 58264
                  sltu         s5, a1, s6
                  sltiu        t5, t3, 523
                  slt          ra, sp, a2
                  or           a1, s7, gp
                  add          s3, t6, s8
                  slti         s4, a5, 386
                  sub          tp, tp, t5
                  or           s3, s1, s5
                  add          s6, s7, t4
                  sltiu        a2, a1, 1272
                  or           t4, tp, zero
                  slli         s5, a1, 1
                  sltu         s4, tp, ra
                  xor          tp, sp, t4
                  sll          a0, a6, ra
                  andi         a7, a0, -221
                  sltu         a1, ra, sp
                  lui          s0, 165126
                  sub          s7, t6, s3
                  auipc        t5, 294669
                  xor          a2, gp, t1
                  addi         s8, t6, 1391
                  addi         s8, a0, -1172
                  ori          sp, s3, -303
                  add          a5, t2, a5
                  srai         sp, s0, 22
                  sra          a5, t6, ra
                  sub          s9, gp, s1
                  and          a1, t2, t4
                  sltu         gp, ra, t3
                  slt          a0, s9, s1
                  srli         t0, t6, 13
                  sll          t3, a2, s11
                  slli         t4, sp, 12
                  auipc        t0, 613702
                  sra          a4, gp, s9
                  nop
                  srai         s7, a7, 20
                  sra          a3, s7, tp
                  andi         ra, a7, -1164
                  sltiu        a5, sp, 1302
                  sra          a4, s2, a0
                  srai         a1, t5, 10
                  sll          s0, s2, a5
                  and          s0, gp, t1
                  sll          t6, a6, t6
                  addi         s9, a5, -1447
                  addi         s0, a5, -791
                  slti         t6, zero, 1208
                  auipc        s7, 366513
                  xori         s4, s8, -205
                  addi         a1, s7, -1217
                  andi         s9, t2, -725
                  sub          t5, s4, a1
                  sra          sp, t6, s8
                  sra          t5, s4, s9
                  addi         a4, s10, -846
                  lui          s3, 504224
                  srai         s4, s9, 7
                  and          s1, t2, t3
                  lui          a2, 481885
                  addi         zero, t0, -731
                  sltiu        t1, t0, 1895
                  sra          a2, t2, t5
                  slti         s4, s4, 455
                  lui          s6, 485192
                  and          t4, s10, s10
                  srai         zero, a0, 14
                  srai         s2, s7, 15
                  slt          s2, a4, a0
                  auipc        ra, 1042655
                  nop
                  srl          sp, a6, s9
                  and          gp, s8, ra
                  auipc        t3, 778946
                  addi         t0, a5, 1843
                  srai         a4, s8, 23
                  xori         t5, sp, -1828
                  slli         a6, s1, 20
                  slti         a7, a3, 1577
                  sra          t0, s11, s9
                  srl          a1, s4, sp
                  srli         s3, t0, 1
                  srai         s1, a5, 23
                  addi         a1, s8, 1774
                  xor          s1, t6, zero
                  nop
                  srai         sp, t1, 2
                  sra          a6, s11, a3
                  nop
                  slli         s0, a2, 7
                  ori          sp, s2, -1437
                  ori          zero, s8, 541
                  sub          t6, t1, t3
                  and          s3, t0, s7
                  sltu         a6, a5, s1
                  sltiu        s4, a3, 1600
                  auipc        s1, 285637
                  srli         sp, t6, 4
                  sra          a7, s5, s2
                  auipc        a2, 989585
                  srai         t1, s4, 30
                  and          a5, t6, s8
                  andi         a0, s6, 118
                  add          s0, gp, sp
                  slt          t4, t3, s7
                  slt          t6, sp, s5
                  srli         s2, s0, 13
                  srli         s7, s9, 15
                  sub          t0, s7, s6
                  slti         sp, a4, 736
                  srai         t6, s10, 13
                  add          a4, tp, sp
                  ori          t5, a2, 424
                  xori         t0, t0, 501
                  sltiu        a4, t5, 1990
                  lui          t4, 465779
                  xor          s8, t1, s11
                  auipc        a1, 999776
                  lui          a4, 367771
                  srai         a6, t5, 31
                  ori          s5, gp, -413
                  slti         s4, s6, 1846
                  lui          zero, 675624
                  andi         s8, s3, -540
                  xori         gp, s8, -1100
                  sll          s0, t4, a6
                  sub          a3, s4, a3
                  addi         t3, a0, 1484
                  or           tp, a3, a3
                  nop
                  slt          t4, s0, s2
                  srli         s5, s3, 2
                  sll          s1, s1, t6
                  sltiu        t3, s10, -186
                  slt          a7, s4, a3
                  xori         s5, t5, 540
                  slt          a0, s1, s4
                  slti         a0, s4, -252
                  and          s5, a5, t1
                  sub          s7, t2, t1
                  slti         a5, a5, -631
                  sltiu        t4, a7, -1487
                  slli         a1, a3, 23
                  addi         s1, a0, -861
                  lui          ra, 984050
                  slt          s0, a2, s5
                  slt          s8, a5, t6
                  srli         s0, s5, 26
                  xor          a3, a6, s7
                  slt          ra, t4, s4
                  lui          t0, 849217
                  xor          s5, s8, a1
                  lui          ra, 626979
                  nop
                  add          s4, a7, t1
                  addi         s5, a7, 510
                  andi         a4, s0, 840
                  add          t3, s11, zero
                  slt          a1, s6, s1
                  srai         t1, s9, 9
                  srl          s3, t1, t4
                  andi         a3, t5, 1734
                  sltiu        s4, a3, -295
                  slli         t6, a2, 3
                  addi         zero, t3, -1664
                  add          a2, s0, a6
                  nop
                  srl          s6, s5, a4
                  nop
                  andi         t3, t3, -1131
                  sra          a3, a1, t2
                  xori         s4, gp, -1219
                  and          t4, s9, s5
                  addi         zero, t3, -103
                  slli         sp, t2, 14
                  slti         t6, a0, -835
                  sra          t1, t3, t6
                  nop
                  auipc        a0, 190211
                  or           s6, s10, t0
                  slli         a0, sp, 8
                  sltu         s0, tp, a0
                  srl          s3, s3, t5
                  sltiu        s7, s0, -766
                  slli         a0, gp, 30
                  sll          t3, zero, s9
                  lui          zero, 1027592
                  slti         a2, s4, 1403
                  and          t6, a3, s3
                  andi         t6, a2, -15
                  sll          s7, a7, t4
                  sll          s9, a7, t4
                  xori         t3, s3, 995
                  lui          s5, 233803
                  sra          a2, zero, s5
                  add          a4, zero, a7
                  auipc        s4, 943226
                  sll          s7, a3, a5
                  addi         s8, s11, -1605
                  xori         t6, a3, -2034
                  or           a4, s9, a0
                  lui          a5, 502613
                  slti         s8, t4, 284
                  slt          s0, a7, t0
                  lui          s8, 785047
                  sll          a5, tp, s11
                  slli         a6, a7, 26
                  xor          s1, s3, a2
                  xori         s6, sp, -2003
                  srli         a4, a1, 15
                  lui          sp, 1041014
                  sub          s6, a3, s6
                  sltiu        s8, t1, -1891
                  sltiu        zero, a1, 64
                  sub          s2, tp, a5
                  lui          t5, 613123
                  sll          s6, ra, sp
                  andi         t1, s6, 938
                  sll          a5, s11, a2
                  sll          s0, t6, s0
                  lui          s8, 473480
                  srl          t4, zero, ra
                  sll          tp, a3, a6
                  sltu         a7, t4, t1
                  sra          s9, s7, s5
                  nop
                  srai         a1, s6, 1
                  sltiu        tp, t6, -1758
                  addi         s4, tp, 1046
                  auipc        ra, 742403
                  andi         s0, t0, -547
                  xori         s2, t2, 1265
                  lui          s4, 265644
                  and          t4, t1, t4
                  sll          t4, tp, a4
                  xori         a3, a4, -365
                  add          s6, s10, s6
                  and          a0, a1, s0
                  sltiu        sp, s7, -1513
                  or           gp, s2, a6
                  srli         sp, a2, 1
                  slli         s5, s10, 13
                  slli         s1, s3, 9
                  xori         a0, sp, -111
                  lui          s5, 480863
                  slli         zero, a6, 2
                  sltu         s0, s8, s7
                  sub          s8, a1, gp
                  sll          t4, s10, s3
                  srli         s2, sp, 31
                  sub          s2, s6, s7
                  xori         a2, gp, 953
                  sub          a5, s7, a1
                  and          a7, s9, t3
                  xori         s1, s5, 22
                  sub          s6, s11, t3
                  sltiu        s5, t2, 1660
                  sll          a7, tp, a5
                  slli         t6, s1, 25
                  auipc        a7, 835774
                  sltiu        s7, s7, 146
                  slt          s1, s1, gp
                  sra          a7, ra, zero
                  srl          s6, ra, zero
                  sra          s1, s8, ra
                  slli         t4, a1, 5
                  andi         sp, a0, -1912
                  addi         a6, a4, -489
                  slli         a4, gp, 16
                  srai         s3, s11, 0
                  slli         a6, a0, 5
                  srai         s3, s9, 16
                  xor          a6, ra, s10
                  srli         gp, s6, 25
                  xor          s8, t5, s8
                  slli         a0, t5, 21
                  sll          t6, zero, t4
                  auipc        a6, 226181
                  sltu         s6, s0, t3
                  srai         s3, a3, 17
                  srli         a2, s3, 18
                  xori         a0, s7, -1228
                  slti         t4, zero, 1178
                  slti         tp, a7, -706
                  lui          a6, 18917
                  addi         s8, a6, -1058
                  auipc        a6, 357611
                  srai         a7, t5, 28
                  xori         zero, a0, 720
                  srl          t4, s5, t0
                  slti         gp, a6, -1980
                  xori         a2, s2, -1455
                  sltiu        a4, a2, -1577
                  slli         s6, s2, 5
                  andi         s3, s1, 1476
                  andi         a3, t6, -1618
                  lui          sp, 662001
                  and          t5, s2, s7
                  sll          a3, zero, s4
                  xori         t4, a3, 2030
                  andi         a6, gp, 1310
                  lui          a7, 389717
                  lui          a6, 840346
                  sltu         s9, a4, a0
                  addi         t5, a5, 385
                  slti         s1, a6, -1787
                  sra          s7, t0, t2
                  auipc        s2, 1014051
                  srai         s2, gp, 13
                  auipc        s0, 760173
                  slli         a2, a1, 0
                  nop
                  xori         gp, s8, -1743
                  lui          t6, 626097
                  srli         s6, s7, 1
                  sra          s2, s2, s3
                  srai         s8, s0, 9
                  xor          s2, s4, a2
                  auipc        s6, 1026180
                  xor          s7, sp, s5
                  andi         a6, s0, -1579
                  srai         a6, ra, 20
                  add          t1, s2, s3
                  slt          t3, a5, t6
                  auipc        s1, 726574
                  sra          t4, a7, s10
                  nop
                  xor          a7, ra, t0
                  nop
                  srl          t0, a5, a4
                  slt          s6, s11, s3
                  lui          s4, 668399
                  sltiu        s4, a6, 1075
                  sra          t0, t6, gp
                  lui          a3, 384434
                  nop
                  sra          a7, t0, a2
                  slti         sp, t3, -1316
                  srli         t5, s3, 28
                  and          t5, s3, t2
                  slt          t1, s6, s8
                  srli         t6, zero, 23
                  sltu         a0, gp, a4
                  xor          s6, s5, tp
                  slli         gp, ra, 22
                  andi         a0, t2, 1275
                  add          s3, a5, t3
                  lui          a2, 501095
                  xor          s6, s2, zero
                  and          s7, a2, a3
                  xor          s8, ra, a7
                  andi         t5, t1, 142
                  srai         s2, t5, 2
                  sll          a0, s1, gp
                  sltiu        a2, a2, 858
                  or           s0, s4, s0
                  add          s1, t4, a3
                  srl          t3, a0, t5
                  sll          t3, s1, a5
                  ori          s2, a3, -691
                  or           t4, s2, gp
                  add          a6, a4, s9
                  addi         s6, sp, 1282
                  srli         gp, a7, 26
                  srli         t6, s4, 16
                  sra          ra, s1, s8
                  srai         s4, a0, 5
                  sll          a1, s9, s2
                  srai         s8, gp, 16
                  lui          s7, 549492
                  or           t3, s5, s9
                  srai         a0, a3, 16
                  and          t6, gp, t3
                  sub          t0, s5, t0
                  xori         s1, t3, -1375
                  sltu         gp, zero, t5
                  sra          s5, s1, s8
                  sltiu        a1, s8, -1958
                  slli         s1, a4, 7
                  andi         a6, tp, -894
                  sltu         a4, s4, t6
                  add          gp, s3, s7
                  sltu         s5, s2, s2
                  xori         s0, t3, -260
                  lui          t3, 985524
                  auipc        ra, 306548
                  sub          s7, t3, s11
                  auipc        s1, 337820
                  and          s0, a4, a3
                  srl          a4, a0, a2
                  srai         t6, s3, 7
                  lui          s4, 12103
                  slli         t4, t4, 0
                  lui          s8, 854411
                  or           s5, s11, s8
                  and          t4, a7, t6
                  ori          s7, s7, 1430
                  add          s0, a6, a0
                  sltu         a5, s1, tp
                  or           a7, t6, s8
                  slti         a3, a2, 711
                  slti         zero, a5, -1625
                  xor          s9, tp, t6
                  and          s6, a1, s4
                  auipc        t4, 566546
                  nop
                  xori         a5, s8, -651
                  andi         s3, s9, 1905
                  srli         sp, ra, 30
                  or           tp, s0, s7
                  sltiu        s6, a3, 266
                  srl          a4, s1, s8
                  sra          s1, s9, t3
                  sltiu        a7, gp, -1649
                  srl          a0, t5, t5
                  auipc        a3, 206496
                  and          s0, gp, a6
                  srli         ra, s8, 16
                  sll          t0, a6, s2
                  srl          a5, s6, a3
                  srai         a0, s1, 19
                  or           a1, t0, s11
                  and          s9, a6, t0
                  xor          s3, ra, s3
                  sltiu        s6, s11, 940
                  sltiu        zero, s3, -240
                  nop
                  srl          a5, t5, t0
                  and          ra, s3, s6
                  xor          t4, t6, t5
                  srl          tp, a6, tp
                  nop
                  add          s7, sp, gp
                  lui          a4, 32144
                  sltu         zero, s11, t4
                  sltu         tp, s0, a0
                  srli         s6, s1, 14
                  andi         sp, s10, 314
                  srli         a6, tp, 16
                  sltu         sp, s10, a0
                  srai         a0, a7, 6
                  slti         s6, s2, 1869
                  and          t3, a7, t6
                  sltiu        a2, s3, -1371
                  nop
                  sltiu        a4, s0, 1322
                  sll          s0, t2, a5
                  add          s0, s4, s0
                  slti         s3, gp, -206
                  nop
                  addi         a4, gp, -339
                  or           s2, t5, a4
                  srl          a7, a6, a0
                  lui          s3, 451994
                  sltiu        tp, s8, 1876
                  slti         a0, a3, -420
                  sltu         zero, s2, a6
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s5, 0x0
                  li           s1, 0x0
                  li           s8, 0x80000000
                  li           tp, 0xffffffff
                  li           t6, 0x80000000
                  li           s7, 0x80000000
                  li           t3, 0xe5984d67
                  li           ra, 0x8441209d
                  li           s9, 0xffffffff
                  sub          s8, t4, t4
                  nop
                  addi         tp, tp, -1257
                  sub          s1, t6, s9
                  auipc        tp, 158230
                  auipc        s1, 183251
                  lui          tp, 789969
                  auipc        s1, 651505
                  auipc        s9, 919991
                  auipc        ra, 131158
                  add          s1, t6, t3
                  addi         t6, ra, -724
                  add          t3, ra, t4
                  sub          s8, tp, t4
                  addi         s7, t6, -1587
                  addi         s7, t4, -1367
                  add          t3, t4, t4
                  addi         s8, t3, 357
                  add          tp, s5, s1
                  auipc        s8, 804151
                  add          t3, s1, t6
                  nop #end riscv_int_numeric_corner_stream_7
                  sra          a1, s1, a0
                  sltiu        zero, s11, -224
                  slli         a1, sp, 22
                  or           a1, s3, s11
                  auipc        gp, 544197
                  slti         a7, t6, -1302
                  sltiu        s3, sp, -1337
                  auipc        a0, 389440
                  ori          t1, s7, 60
                  xor          a2, a7, tp
                  nop
                  sub          a7, a2, s9
                  xor          t3, s11, t2
                  nop
                  sltu         s9, tp, a2
                  ori          gp, s10, 841
                  slli         a4, a1, 25
                  sltu         s1, a2, gp
                  addi         t5, s3, -751
                  addi         t5, a4, -1884
                  sra          a0, t1, a5
                  nop
                  sra          a2, s2, t1
                  andi         a4, t0, 83
                  addi         a4, t5, -1184
                  or           s0, a2, a1
                  and          gp, t5, t0
                  srai         s1, s6, 3
                  and          gp, s6, s6
                  xori         tp, s4, -343
                  auipc        s5, 1015938
                  slti         t0, s10, 363
                  sub          ra, t3, sp
                  nop
                  xor          a3, s5, gp
                  sltu         s3, s5, ra
                  xori         t6, s1, -312
                  xor          t1, s7, sp
                  xori         a6, s0, 561
                  srli         s2, s0, 10
                  sltiu        t5, s5, 1201
                  lui          zero, 1027417
                  ori          zero, s3, -1812
                  sll          s3, s1, s9
                  srl          a0, s11, ra
                  lui          s1, 584793
                  sltu         s6, a7, a4
                  sra          tp, a5, s8
                  sra          sp, s0, sp
                  and          gp, a7, s0
                  srli         a5, a7, 24
                  lui          t3, 740188
                  and          zero, a1, t3
                  sltiu        a0, t1, 2024
                  sra          s3, s5, a7
                  andi         zero, t6, 759
                  slt          s0, s7, s4
                  ori          gp, s6, -559
                  srli         t1, t6, 19
                  lui          s1, 145371
                  sra          s8, zero, s5
                  ori          tp, s10, -1846
                  or           s9, t2, tp
                  sltiu        s4, t3, 723
                  auipc        t1, 1026733
                  andi         gp, gp, 846
                  slt          s6, s3, s5
                  sltiu        t0, s3, -1098
                  add          a6, a6, a6
                  lui          a1, 186085
                  srai         gp, s5, 0
                  srli         sp, t6, 15
                  lui          s1, 893357
                  add          s9, t3, a4
                  sltiu        s6, gp, -612
                  xor          ra, ra, a4
                  xor          a7, a2, a4
                  lui          a3, 984470
                  nop
                  sra          s4, t4, ra
                  xor          t1, a3, a3
                  sra          s7, zero, tp
                  slli         t5, a5, 28
                  ori          t1, s11, -184
                  ori          a0, a1, 484
                  and          s1, a0, a0
                  xor          a5, t6, s0
                  sra          s6, a3, t2
                  lui          gp, 787388
                  srli         s8, s11, 17
                  sltiu        t1, t4, -1117
                  srl          s2, a7, a3
                  nop
                  nop
                  sltu         a1, a1, s2
                  nop
                  slti         a1, s6, 979
                  slti         s1, s5, -903
                  slti         t4, s0, 450
                  sltu         a0, t3, t5
                  or           s7, t1, s6
                  sll          s5, s4, s6
                  srli         s6, ra, 7
                  auipc        s1, 304673
                  sltiu        s7, sp, 76
                  andi         sp, s2, -208
                  srai         a6, s0, 20
                  slli         zero, s5, 19
                  slti         t1, s8, 1803
                  slti         s0, t0, 214
                  sub          s8, t2, t1
                  sra          a2, a7, a2
                  andi         a6, tp, 144
                  srl          t0, a4, a3
                  sra          s6, zero, t3
                  srl          a7, t4, ra
                  srl          a4, t6, t3
                  slti         s3, ra, 903
                  lui          gp, 595550
                  xor          t5, s0, tp
                  sltu         sp, zero, t2
                  srl          t4, s7, tp
                  srl          a6, zero, gp
                  sltiu        tp, s10, 832
                  xor          a1, gp, s11
                  addi         a7, a4, 1954
                  xor          t3, zero, t1
                  ori          s4, t3, 549
                  and          t0, gp, s5
                  and          t0, s6, t5
                  sltu         ra, s1, t1
                  ori          t1, a2, -840
                  and          a5, s6, s8
                  lui          a6, 634578
                  ori          a3, a6, -749
                  sra          s3, a2, a2
                  slt          t4, ra, a4
                  and          sp, tp, a1
                  addi         gp, t0, -428
                  xor          gp, t0, ra
                  srli         s5, a6, 15
                  sltiu        s9, a6, 789
                  sll          s3, t1, s5
                  srai         s1, ra, 29
                  sltu         s0, a6, sp
                  sltiu        a6, a7, 1225
                  and          tp, s0, t1
                  sub          tp, ra, t3
                  srli         t4, a1, 10
                  slli         a5, s3, 23
                  auipc        a4, 593033
                  and          ra, a1, a0
                  slti         t6, s1, 717
                  srl          t1, a4, s5
                  auipc        t4, 944972
                  srli         s9, s8, 28
                  auipc        a5, 643397
                  andi         a7, a7, 1773
                  ori          a0, s10, 366
                  and          a2, a3, a5
                  sra          a7, a6, a7
                  lui          s9, 331169
                  lui          s1, 516970
                  and          ra, s0, s2
                  sltiu        s9, a2, -1349
                  slli         a3, a1, 5
                  nop
                  or           s1, a5, s5
                  slt          a2, tp, tp
                  sll          s5, s2, s11
                  sub          zero, gp, s4
                  auipc        s7, 913025
                  add          t4, a6, s5
                  sll          s3, s0, gp
                  slt          s5, tp, ra
                  andi         t3, s8, -1490
                  lui          t6, 826248
                  srai         ra, a2, 0
                  andi         s9, s2, -1715
                  ori          gp, s5, 1060
                  and          t6, a6, s1
                  addi         s8, a2, -1130
                  xori         a6, s8, -325
                  or           a4, a0, s4
                  addi         ra, a1, -1276
                  auipc        a0, 313871
                  andi         t6, a5, 1006
                  slti         t3, s3, -301
                  andi         s6, t4, -1777
                  add          ra, sp, a1
                  sra          s4, a6, s1
                  srai         s1, a1, 3
                  sltiu        a3, s6, 1672
                  slti         s4, a6, 987
                  and          t1, a3, a4
                  sll          s5, t1, t5
                  addi         zero, a2, 685
                  ori          s6, sp, 644
                  add          tp, s7, s0
                  add          ra, s11, sp
                  nop
                  slti         t4, gp, -1425
                  and          s1, s0, s8
                  add          gp, s3, t1
                  slti         s6, a6, 923
                  auipc        zero, 520278
                  sltiu        a6, t5, -1171
                  sra          t5, t2, s11
                  slti         t4, a2, -956
                  srli         s7, s5, 3
                  sub          s1, s10, t6
                  slt          t5, gp, a5
                  slt          sp, t6, t3
                  sub          a3, t6, a3
                  slli         s3, s2, 31
                  slti         a5, t2, 483
                  sra          a2, gp, a7
                  slli         zero, a7, 26
                  add          a1, s1, s8
                  sub          s8, zero, s6
                  srai         s8, s8, 7
                  sltu         gp, gp, a2
                  sltu         s7, s10, a3
                  xor          t1, s7, a1
                  lui          zero, 665801
                  or           a5, s11, t0
                  add          sp, ra, a0
                  xor          tp, tp, t1
                  or           s6, s11, s0
                  sll          s0, s6, ra
                  nop
                  and          a3, t4, sp
                  lui          s1, 864980
                  addi         t0, gp, 1107
                  sra          s4, t4, s3
                  auipc        s2, 816474
                  ori          a1, a5, 695
                  nop
                  add          a6, a5, s4
                  and          a2, s4, t1
                  sltu         a6, t0, a0
                  slti         s5, a0, -2021
                  addi         a4, gp, 1329
                  and          t5, a2, s5
                  srl          a1, t3, s5
                  xori         s4, a6, 618
                  sltiu        t4, a6, 903
                  srl          s2, sp, t5
                  xor          sp, s6, s1
                  addi         gp, s2, -1961
                  add          a2, a5, a0
                  add          tp, s4, t2
                  sltiu        t6, a5, 1367
                  or           t3, a5, s11
                  add          s2, ra, t4
                  and          a4, a7, a0
                  srai         t1, t4, 20
                  xor          s5, a5, s9
                  add          ra, a5, a5
                  sub          s2, s4, s6
                  srl          a7, s7, a5
                  addi         s0, tp, 1532
                  nop
                  xori         a6, sp, 1815
                  srl          t3, t1, zero
                  sub          a0, ra, zero
                  sll          s6, s5, s1
                  xor          s4, a1, a5
                  and          t5, s10, sp
                  srl          t3, t3, t3
                  xor          t6, t3, s1
                  xor          s2, a1, zero
                  slli         s7, s9, 1
                  sltiu        t6, t0, -2025
                  slli         s5, s7, 6
                  andi         a6, zero, 292
                  sra          t0, tp, t5
                  srl          sp, a0, zero
                  add          s0, sp, s11
                  add          s3, s0, a2
                  sltiu        t6, t1, -1433
                  nop
                  and          s9, s1, tp
                  sltu         s7, a3, s8
                  sll          s3, s2, s2
                  andi         s8, t0, 1299
                  slt          s2, t0, gp
                  auipc        t0, 261778
                  srli         a0, a4, 11
                  and          t5, t2, a4
                  sll          sp, a6, s8
                  ori          a1, a3, -1779
                  slli         a5, s4, 24
                  sltiu        tp, a3, 765
                  slli         a6, s2, 0
                  srl          s0, ra, t4
                  srli         s9, a7, 13
                  srai         ra, ra, 2
                  lui          gp, 623152
                  nop
                  sltiu        a6, s11, -1440
                  srli         t0, s6, 1
                  addi         a1, t0, 263
                  xori         t0, a2, 1789
                  sltiu        sp, s9, 290
                  sltu         s7, s3, s5
                  lui          a7, 392372
                  addi         t0, s7, 1473
                  addi         t1, a0, -1701
                  add          a5, s8, a3
                  srl          t3, s8, zero
                  sub          s6, a0, tp
                  srl          a2, sp, s5
                  xor          t0, tp, a6
                  or           ra, a1, zero
                  and          t0, t2, a0
                  xori         s4, ra, 278
                  and          s1, s9, s4
                  nop
                  srli         a2, a7, 7
                  nop
                  xori         t4, t4, -691
                  sltu         a2, s2, zero
                  nop
                  slt          t3, ra, t6
                  srli         s8, a3, 21
                  sll          t5, t5, a1
                  sub          s6, s7, s9
                  andi         ra, s1, -192
                  sll          s8, tp, s10
                  slt          s4, a2, s7
                  sltu         a7, gp, s9
                  sra          s3, t6, a6
                  sltiu        sp, t0, 666
                  srai         s7, a5, 13
                  srli         zero, t6, 17
                  and          a1, s11, t4
                  nop
                  sub          t0, s6, s4
                  addi         s0, s5, 848
                  add          s7, t1, t4
                  andi         s8, t2, -59
                  lui          a7, 995069
                  slti         a1, s0, 851
                  sltu         s5, a7, t4
                  sltiu        a4, t2, -1840
                  and          gp, s5, s7
                  sltiu        t5, s7, 1802
                  or           s9, t0, tp
                  sub          a7, s3, ra
                  srli         a2, ra, 3
                  addi         s0, s3, 1165
                  slt          gp, s9, t6
                  srli         s3, s9, 8
                  add          a0, t5, s6
                  or           t6, t1, a2
                  sra          s5, a2, t4
                  lui          a1, 694830
                  srli         t4, s8, 15
                  add          s8, t2, zero
                  slt          s4, a6, t6
                  sltiu        a3, a5, -831
                  xori         s5, s8, -560
                  ori          a0, s8, -1654
                  sltu         t4, a2, s0
                  srli         s0, zero, 15
                  sub          t3, zero, a0
                  sltiu        a0, s1, -1342
                  sub          t0, s7, a6
                  andi         s9, a3, -1096
                  slli         t6, t6, 28
                  lui          t6, 872536
                  sltu         a2, s6, gp
                  sltiu        t3, sp, -805
                  addi         a6, a0, 983
                  and          tp, s5, t5
                  or           t3, t6, gp
                  auipc        a2, 121908
                  sll          t3, t0, gp
                  nop
                  ori          s7, s5, 734
                  addi         s9, t3, -1615
                  andi         a2, ra, -1311
                  or           s0, a0, sp
                  nop
                  slli         a6, gp, 11
                  lui          a2, 35063
                  srai         a4, t6, 24
                  slt          t5, s1, s11
                  or           a7, sp, a5
                  lui          zero, 741008
                  andi         zero, s8, 1466
                  sltu         a5, s4, t1
                  nop
                  sll          s9, s3, a5
                  or           s0, s10, t3
                  and          a5, a2, sp
                  lui          a0, 792984
                  or           s7, a6, s1
                  sub          s3, t2, t0
                  sltiu        s1, s6, 1681
                  add          zero, s9, ra
                  sub          t1, gp, s10
                  slti         s5, sp, -1459
                  lui          t5, 281899
                  slti         a7, t6, -106
                  andi         a2, a2, -826
                  add          zero, a7, tp
                  xori         a6, t5, 334
                  nop
                  xori         a7, t5, 1562
                  or           s5, s10, s3
                  add          s9, t0, s9
                  slti         ra, a3, 1617
                  auipc        s3, 804292
                  sub          a4, a0, sp
                  nop
                  add          s0, gp, s10
                  or           a0, s1, zero
                  sltu         s8, ra, t6
                  or           t5, t4, s5
                  srl          a0, s3, s8
                  slti         tp, sp, 699
                  andi         s6, gp, 50
                  addi         ra, t1, 1428
                  auipc        a1, 986122
                  add          s7, a4, a3
                  srai         t4, s6, 5
                  nop
                  xori         s1, s8, -2000
                  sub          a7, a2, zero
                  srli         s3, s9, 6
                  sub          a6, t4, gp
                  slti         ra, t1, 1810
                  lui          t3, 625597
                  sra          a7, a7, t1
                  add          s1, t4, gp
                  srli         t6, a3, 29
                  or           s5, gp, gp
                  nop
                  add          t1, t0, s2
                  sltu         s9, t4, s3
                  ori          s0, t4, -1760
                  add          tp, s8, ra
                  sub          s5, s7, a4
                  nop
                  xori         s3, s5, -1241
                  auipc        s9, 829726
                  and          s6, s6, gp
                  ori          a7, a1, 457
                  sll          a0, zero, t5
                  add          s5, tp, s11
                  andi         a6, zero, -1419
                  xor          s1, t5, s1
                  nop
                  sltiu        t0, s6, 957
                  sub          t1, zero, t3
                  or           s9, s6, s0
                  slt          s1, s4, s8
                  srai         s0, ra, 7
                  sltiu        s9, t3, 791
                  ori          a7, s11, 255
                  sltu         tp, tp, t5
                  xor          s3, t0, a4
                  srli         gp, ra, 2
                  xor          s3, sp, ra
                  andi         zero, s11, -336
                  ori          s0, a6, 1422
                  sltiu        t0, s7, 1302
                  srl          s6, s10, a0
                  lui          s7, 313306
                  xor          s7, a6, t3
                  slt          a5, s0, sp
                  andi         sp, a7, -1537
                  srli         a3, t2, 14
                  auipc        s5, 956916
                  srli         a4, t4, 10
                  slt          t0, t4, t6
                  sltiu        a2, a2, 1517
                  sra          s8, s3, tp
                  sltiu        s1, s9, -1040
                  srl          s2, tp, s7
                  ori          t3, gp, 1091
                  sltu         a0, t0, a3
                  xor          zero, ra, s11
                  xori         s1, a1, -1695
                  srl          s0, s7, ra
                  nop
                  lui          s9, 755196
                  auipc        t3, 1006719
                  xori         sp, a5, 329
                  sll          sp, ra, t2
                  srli         t5, s2, 11
                  add          t5, t6, t1
                  and          s2, a3, s0
                  ori          s3, a2, 546
                  xori         a7, tp, 726
                  auipc        t4, 32213
                  srl          ra, gp, s4
                  andi         a6, t0, 217
                  xori         t5, t1, 27
                  sltu         ra, gp, t5
                  srli         a1, s2, 27
                  slt          zero, a6, s7
                  auipc        a6, 96937
                  slli         s3, a5, 3
                  sltu         a0, a2, ra
                  addi         gp, a5, 1364
                  srli         t3, s2, 9
                  sll          a7, t0, a6
                  sub          sp, zero, s4
                  nop
                  sltu         a7, s7, zero
                  sll          gp, t0, s1
                  auipc        a3, 790557
                  auipc        a4, 768281
                  nop
                  srai         s6, s10, 21
                  nop
                  add          s7, s4, a5
                  xori         a1, s4, -1565
                  sltiu        a3, a2, 541
                  andi         a2, a0, -929
                  andi         t5, s3, 1153
                  and          s0, a3, a5
                  andi         a0, a2, 2041
                  slti         t4, a6, 1037
                  lui          a6, 819888
                  nop
                  or           t3, t4, s10
                  xori         a1, a5, 1183
                  sub          zero, s8, sp
                  sra          s9, t4, s11
                  slt          s1, s9, a4
                  sll          t3, t4, a4
                  andi         s6, t1, 1676
                  xor          sp, a2, s7
                  sltu         a7, s5, a2
                  slli         s0, gp, 0
                  sub          t1, s11, t0
                  addi         ra, a5, 1518
                  addi         a0, t5, -1951
                  sub          s6, a7, ra
                  xori         tp, s8, 239
                  xori         a6, a3, 1564
                  andi         a1, a6, -510
                  sll          t4, ra, s5
                  srl          s7, s11, s1
                  sub          tp, s6, t0
                  auipc        sp, 555610
                  slt          s8, t0, t0
                  addi         a7, t3, -1766
                  auipc        zero, 408755
                  sub          a3, a1, s2
                  ori          s7, a4, 1783
                  andi         zero, s3, -188
                  slli         a3, t4, 24
                  srli         s9, a0, 6
                  xor          a6, a6, s6
                  ori          a5, s0, -1960
                  lui          s4, 383046
                  and          t0, t4, s6
                  andi         t0, s0, -1507
                  slli         t1, s3, 29
                  srl          s3, a2, a5
                  slti         a1, a5, -13
                  sll          zero, a7, t5
                  slti         t3, s7, 588
                  sll          s4, t4, ra
                  addi         s3, tp, 572
                  slli         a5, s8, 18
                  ori          a0, s4, 362
                  slli         a6, a2, 2
                  slti         s2, a6, 897
                  sltiu        zero, zero, -354
                  auipc        gp, 625212
                  sub          a4, s5, t3
                  sub          s0, a0, t6
                  sub          t3, s9, t0
                  ori          s8, s3, 1094
                  lui          s7, 976186
                  auipc        s0, 54114
                  slt          t4, s5, t6
                  xor          s8, t6, s4
                  add          a0, a0, s3
                  sltu         a4, t5, ra
                  srl          tp, s7, sp
                  slli         gp, ra, 27
                  ori          a0, a7, 1888
                  sltu         s7, zero, a3
                  lui          a4, 168522
                  sub          t4, zero, a0
                  sub          tp, s10, s11
                  slt          a1, s6, a3
                  sltiu        t3, s4, -1764
                  sltiu        s6, s2, 360
                  add          s4, a6, t2
                  lui          s8, 429348
                  or           a6, s5, s7
                  nop
                  xori         tp, zero, 1294
                  add          a7, a5, a5
                  sltu         tp, t0, t0
                  srai         t6, s7, 27
                  xor          s1, s11, t1
                  add          s1, a5, t6
                  andi         s3, a7, -1882
                  xor          a5, a4, s10
                  xor          gp, t5, s0
                  add          a0, t3, s7
                  slli         t1, a3, 15
                  sra          t4, s1, zero
                  sltiu        s5, zero, -915
                  add          s3, a6, tp
                  slli         s0, s9, 19
                  srai         s1, s8, 8
                  slt          a1, tp, sp
                  srai         ra, t2, 17
                  srai         s3, a1, 8
                  lui          s3, 792198
                  slti         s3, s2, -1036
                  sll          tp, a4, a0
                  srai         t0, t6, 23
                  srli         tp, a0, 17
                  xor          s1, t2, t0
                  srai         t1, ra, 3
                  or           a0, s1, s7
                  slti         t1, s0, -353
                  nop
                  ori          s6, s11, -1299
                  sltiu        t4, a7, -978
                  sltiu        s5, tp, -382
                  lui          a6, 692758
                  andi         s9, s3, -1387
                  andi         s2, s10, -1605
                  xor          a3, s2, s7
                  srl          a5, s9, a3
                  lui          a4, 996773
                  auipc        s9, 847225
                  ori          t4, s6, -89
                  sra          s1, a0, a0
                  srli         a7, t6, 4
                  slli         s8, s1, 12
                  add          a3, s5, t1
                  sltiu        s5, sp, -382
                  sll          s4, a3, ra
                  add          a2, a1, s1
                  srli         a6, s4, 26
                  xori         t0, a4, -1565
                  nop
                  lui          s5, 765123
                  sll          s6, t3, a4
                  sra          t5, a1, t6
                  sltu         a3, a6, ra
                  or           a2, zero, a7
                  andi         s7, a5, 1762
                  xori         s6, s8, 1975
                  sub          s0, a6, s7
                  addi         s8, zero, 616
                  srli         a7, s0, 21
                  slti         t3, t1, 615
                  addi         zero, sp, 110
                  nop
                  slli         ra, s6, 14
                  addi         t0, s9, 295
                  slti         a2, t5, -230
                  sra          tp, s1, a0
                  and          a0, t4, t0
                  sra          s2, t2, s1
                  xor          t4, a7, t3
                  sll          sp, ra, s1
                  srl          s9, s3, s0
                  andi         a5, a0, -658
                  sub          gp, a6, s6
                  slti         a3, s0, -496
                  slti         tp, s11, 24
                  add          s6, t5, a7
                  srl          a0, a7, s7
                  andi         t5, t0, 1882
                  addi         t1, s5, 71
                  ori          s9, s10, -842
                  srai         a4, s10, 7
                  sub          a2, s2, s9
                  xor          t1, s3, t6
                  srli         t5, zero, 28
                  slli         s4, s9, 12
                  or           a1, s0, s5
                  auipc        t5, 366221
                  sub          t3, gp, a0
                  addi         t5, t4, -69
                  ori          zero, s9, -1018
                  slti         s1, a6, 149
                  auipc        a5, 802540
                  sltiu        t0, a2, 1396
                  sub          ra, s11, sp
                  xori         a0, t6, -654
                  sll          t3, zero, zero
                  srli         a6, a2, 0
                  ori          ra, s10, 533
                  srl          a2, zero, a6
                  auipc        s2, 364720
                  and          s2, a2, a2
                  srli         t4, s1, 2
                  srli         t4, s3, 21
                  srai         t5, s6, 29
                  slt          zero, s8, s10
                  auipc        t6, 635091
                  slli         a5, s1, 7
                  ori          s6, a6, 1104
                  sub          t1, tp, s3
                  slli         s6, s1, 29
                  or           t3, s6, s10
                  srai         a3, sp, 18
                  srli         a4, s9, 1
                  srl          a6, a1, gp
                  lui          sp, 469300
                  srl          s9, a5, a2
                  xori         a4, t1, 2047
                  addi         sp, a7, -962
                  andi         s8, t2, -1367
                  sra          t5, a7, sp
                  sltiu        s2, a1, 192
                  sltiu        t0, s9, -1448
                  and          s3, t3, ra
                  sltu         s9, tp, a5
                  sll          gp, sp, t0
                  slti         sp, a6, 647
                  slti         ra, a2, 1023
                  or           zero, s7, s2
                  or           s2, t3, a5
                  sltiu        a2, s5, -1121
                  slt          s8, a5, s1
                  lui          s1, 852696
                  xor          t1, s9, a4
                  lui          s2, 686335
                  sra          a5, t0, s9
                  auipc        t1, 900293
                  sltiu        a4, t4, -1034
                  xor          s5, ra, a3
                  lui          a5, 177435
                  slli         a6, a5, 9
                  slli         s9, t2, 7
                  lui          s8, 959049
                  sltiu        s3, tp, -1359
                  andi         s8, a3, 1973
                  slt          a3, s7, ra
                  srai         a7, a6, 16
                  sra          t1, t5, t0
                  slti         a4, a4, 1479
                  and          s4, zero, gp
                  xori         s5, a0, -1968
                  sub          a7, a6, s6
                  li           a5, 0xfce6ebd9 #start riscv_int_numeric_corner_stream_8
                  li           s8, 0x80000000
                  li           ra, 0x0
                  li           s2, 0x0
                  li           t6, 0x0
                  li           t4, 0x80000000
                  li           sp, 0x80000000
                  li           tp, 0x56f116d7
                  li           a4, 0x80000000
                  li           t0, 0x28100efb
                  auipc        t4, 149969
                  add          a4, t4, ra
                  add          sp, tp, t0
                  add          t6, tp, s2
                  add          s8, a4, tp
                  lui          sp, 393532
                  sub          t0, t0, a5
                  lui          t0, 558428
                  sub          tp, s8, a5
                  auipc        tp, 123606
                  lui          sp, 725394
                  nop
                  lui          s8, 209805
                  nop
                  sub          a5, ra, s2
                  nop
                  lui          t6, 313331
                  auipc        tp, 397452
                  nop #end riscv_int_numeric_corner_stream_8
                  andi         t0, s10, -1505
                  addi         sp, s1, 354
                  sll          ra, a7, s1
                  srai         t0, s8, 12
                  sltu         t6, t1, tp
                  sub          s4, t5, s11
                  and          t0, a4, s8
                  sltu         a7, gp, a0
                  or           t4, s9, s5
                  xori         a3, s2, -277
                  add          a4, a4, s9
                  srli         s5, a0, 3
                  add          s0, s9, a3
                  and          a5, a5, ra
                  auipc        a1, 156888
                  addi         t1, s3, 182
                  nop
                  add          s1, a3, s7
                  slli         s3, s11, 5
                  sll          ra, t0, a3
                  sll          a7, t0, t5
                  srl          ra, s6, t5
                  lui          s1, 735679
                  sltiu        s8, s5, -1808
                  sub          s8, t4, t0
                  addi         t4, s0, -1323
                  sltiu        a7, s2, -1688
                  ori          t4, a0, -1511
                  ori          t5, a3, 359
                  sltiu        s5, s11, 719
                  lui          s7, 733659
                  srai         s4, sp, 15
                  and          t4, a5, t5
                  sltu         s9, a4, a5
                  andi         a3, s9, 27
                  lui          a2, 768610
                  sltu         zero, s2, t1
                  andi         ra, s11, 1168
                  or           a7, a2, a5
                  sra          a7, s9, a6
                  srai         s3, s4, 4
                  add          s9, s0, t4
                  auipc        s8, 200366
                  ori          a1, sp, 622
                  sltu         t4, s9, s2
                  addi         s5, s10, 1715
                  add          a7, t1, s2
                  xor          t6, s4, a1
                  sll          a6, t6, s4
                  sub          a3, s7, s5
                  lui          s1, 456132
                  srli         s3, t1, 28
                  nop
                  lui          ra, 192583
                  ori          a1, sp, -1934
                  ori          a2, t0, -1622
                  sra          ra, t5, t0
                  slli         a4, s7, 29
                  addi         t1, s5, 796
                  sra          ra, ra, a7
                  andi         a4, s9, 1470
                  sll          tp, ra, s4
                  lui          s9, 999413
                  sltiu        t5, s5, -1495
                  sll          s7, s10, s10
                  ori          s4, s0, -485
                  sub          a4, s5, gp
                  sltu         a6, a2, tp
                  sll          s9, t5, t1
                  andi         t6, s3, -1193
                  sltiu        s1, sp, -1614
                  auipc        a0, 646369
                  sra          ra, s8, s0
                  or           a1, s1, ra
                  slti         a7, a0, 1527
                  add          s7, t5, t0
                  sltu         t6, s7, t6
                  slli         s2, s1, 8
                  srl          ra, s4, ra
                  xori         s8, s6, 974
                  xor          sp, s8, s5
                  sltu         a2, a6, sp
                  and          s3, zero, s9
                  or           t1, s4, t0
                  srai         s8, t0, 8
                  xori         s2, zero, 168
                  srl          a6, sp, zero
                  sltiu        t6, t4, -1663
                  auipc        a3, 955671
                  srl          a1, sp, s4
                  or           t5, s0, t0
                  and          t3, t6, s8
                  xor          a5, t0, s11
                  ori          sp, s5, 425
                  add          s1, s6, t0
                  slt          a5, gp, s6
                  andi         s3, s0, 644
                  slli         a0, sp, 13
                  slti         s4, s0, 537
                  xori         a2, t6, -878
                  slli         a2, t5, 16
                  srai         a4, t1, 26
                  sub          a7, tp, tp
                  srli         a2, s9, 4
                  sub          zero, sp, s0
                  xor          zero, s7, a0
                  slli         t1, s2, 15
                  and          t6, a5, t5
                  srai         s7, t2, 3
                  sub          s8, t6, s3
                  srl          t0, s5, s2
                  auipc        t5, 1023898
                  sltiu        a4, tp, -257
                  sltiu        s6, s3, -1350
                  slti         a0, sp, 1321
                  ori          a7, s8, 2023
                  srai         sp, s0, 26
                  xor          s9, s8, s11
                  sltiu        a6, t4, -299
                  slt          s7, a1, t2
                  addi         sp, t3, -868
                  ori          zero, t2, 457
                  slti         s9, s1, -2047
                  srai         s8, s6, 14
                  xor          s2, a2, t6
                  add          gp, t3, s9
                  sra          a3, t6, t4
                  xor          s7, s3, s8
                  sll          a5, sp, s11
                  srli         a4, s5, 24
                  sltiu        a7, t0, -1272
                  sltiu        a0, a2, -1556
                  xor          t0, s7, t2
                  sra          zero, a5, a1
                  lui          sp, 724514
                  srli         t0, a1, 28
                  sra          t1, s9, s6
                  auipc        a3, 117662
                  srli         s7, s3, 19
                  slt          t1, s3, s7
                  auipc        zero, 983971
                  slt          a6, a4, zero
                  sub          t1, s7, t6
                  add          t1, s4, s9
                  xori         a4, a3, -254
                  slt          s9, a1, s5
                  sub          t4, ra, a4
                  ori          a5, t0, 1380
                  nop
                  srl          ra, a6, t0
                  li           s6, 0x727c43b #start riscv_int_numeric_corner_stream_10
                  li           s2, 0xb1406679
                  li           a6, 0x80000000
                  li           t6, 0x0
                  li           a5, 0x3364d655
                  li           s1, 0x80000000
                  li           s5, 0x80000000
                  li           s4, 0xa8c225f0
                  li           gp, 0x80000000
                  li           a3, 0x0
                  addi         s6, gp, 1446
                  addi         s6, a6, -617
                  auipc        s6, 591222
                  nop
                  sub          a5, a5, s1
                  addi         t6, s2, -1334
                  addi         s4, a3, 326
                  auipc        s4, 940061
                  addi         s4, s6, 2010
                  sub          s5, a6, s5
                  nop
                  nop
                  auipc        a3, 782884
                  add          s5, s1, s5
                  lui          s4, 167775
                  auipc        a6, 315982
                  nop
                  lui          s4, 360139
                  add          s5, s5, s4
                  add          s2, s2, s6
                  nop
                  addi         s2, s1, 747
                  sub          s1, gp, a5
                  addi         s6, s6, 1316
                  nop
                  lui          a3, 576941 #end riscv_int_numeric_corner_stream_10
                  add          t1, a4, s11
                  srli         s8, t6, 2
                  sltu         ra, s11, t6
                  addi         s0, sp, 1481
                  srl          a2, t1, s10
                  slti         a1, a2, -1111
                  xor          a2, a0, a0
                  addi         sp, s10, 1543
                  srli         tp, t1, 20
                  srl          s1, a4, s5
                  add          t1, s10, s4
                  xori         zero, t4, -411
                  sltiu        s1, s4, 1278
                  sltiu        a6, zero, -441
                  andi         a6, a5, 1203
                  auipc        t3, 576866
                  srli         s7, gp, 25
                  add          s1, a6, a4
                  auipc        gp, 516280
                  sltiu        a0, a5, 1759
                  slli         ra, zero, 14
                  lui          t6, 839352
                  andi         a2, s8, -1402
                  srli         s9, s3, 14
                  ori          s0, s2, 871
                  or           a5, a7, a0
                  srli         a0, s2, 4
                  and          t3, s3, t5
                  slli         s7, s10, 18
                  srai         t3, s9, 0
                  sra          a0, a5, a3
                  srai         t6, s10, 29
                  xor          s2, s11, a0
                  srai         a6, s11, 2
                  srli         a3, s2, 28
                  sll          s7, zero, tp
                  and          zero, a3, s5
                  sll          tp, s0, a5
                  sltiu        a3, t6, 1713
                  addi         gp, s1, -702
                  slt          gp, zero, t0
                  add          s6, t4, a0
                  andi         t1, a5, 1552
                  lui          t5, 465398
                  sub          t1, s6, t1
                  andi         a4, t0, -1942
                  slt          a2, s2, s2
                  sltiu        s4, s0, -1428
                  sra          s7, t5, a6
                  sra          s6, a6, s8
                  slti         s8, s1, -654
                  and          s2, t5, t4
                  and          s4, t5, s0
                  srai         s0, s2, 30
                  or           s5, a2, gp
                  sltiu        tp, s2, -380
                  nop
                  xori         s7, s3, 1337
                  srli         s1, t6, 3
                  sltu         s7, tp, sp
                  or           a0, s8, s0
                  auipc        a2, 646773
                  ori          gp, gp, -27
                  sll          a3, t6, a6
                  and          s0, s5, s5
                  sltu         sp, a4, s2
                  ori          sp, t1, -257
                  or           a0, a5, tp
                  srli         s2, t1, 28
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           gp, 0x15524023
                  li           s5, 0x80000000
                  li           s2, 0x9f44bea5
                  li           s6, 0x0
                  li           t4, 0x0
                  li           t5, 0x97038e2b
                  li           sp, 0x0
                  li           a4, 0xac98e88f
                  li           ra, 0x80000000
                  lui          s2, 343972
                  addi         t5, s6, -246
                  addi         t5, t5, 176
                  auipc        s2, 15357
                  sub          t5, sp, s3
                  lui          s6, 872714
                  nop
                  nop
                  lui          s5, 576729
                  addi         s6, a4, -1078
                  auipc        t4, 871864
                  add          t4, s5, gp
                  sub          s5, s2, sp
                  lui          sp, 879421
                  addi         gp, gp, 387
                  lui          s6, 914319
                  add          t4, ra, t5
                  lui          s3, 23551
                  auipc        gp, 1013660
                  auipc        sp, 938793
                  addi         s6, t4, -1536 #end riscv_int_numeric_corner_stream_14
                  auipc        s9, 738288
                  srli         s4, tp, 16
                  and          t1, t6, s11
                  lui          s7, 73879
                  lui          s6, 480946
                  ori          a4, a4, -1408
                  xor          t3, s8, zero
                  auipc        s0, 648374
                  srli         s5, tp, 28
                  srl          a3, ra, s6
                  xori         t3, tp, -1653
                  and          s5, sp, a3
                  slti         s0, t2, -316
                  lui          s0, 59746
                  srai         s4, gp, 2
                  slt          a6, t5, a2
                  srli         a1, ra, 25
                  and          a4, s7, s1
                  xor          s4, t1, s3
                  lui          s1, 852427
                  sltiu        s2, t6, 288
                  srli         zero, t6, 9
                  slli         zero, a2, 25
                  sll          t1, t6, a7
                  slt          a4, gp, s10
                  nop
                  add          t6, s2, tp
                  slli         s3, sp, 23
                  add          t6, s5, t0
                  addi         s8, s5, -684
                  addi         a5, ra, -321
                  slli         s3, t2, 2
                  sltu         a7, a7, sp
                  xori         s5, s4, -239
                  lui          t6, 846137
                  slt          ra, a1, a6
                  add          sp, zero, zero
                  xori         t5, sp, -108
                  sll          t4, ra, s10
                  nop
                  auipc        s1, 254412
                  sub          a2, s1, t6
                  srai         t5, a6, 11
                  srli         a0, t1, 8
                  addi         s8, t6, 270
                  sltu         t0, a1, s11
                  nop
                  auipc        s6, 874235
                  and          tp, ra, gp
                  slli         s0, s11, 8
                  slti         a1, s2, -1468
                  srl          t3, s3, s4
                  slli         s3, t6, 27
                  add          s7, s8, s8
                  ori          ra, s11, 1212
                  add          t1, tp, a4
                  sltu         s6, a4, s5
                  andi         t0, s3, -857
                  xori         s2, a0, -1289
                  nop
                  slti         s9, t4, 494
                  sltu         t4, a6, gp
                  nop
                  xori         s1, t0, 1457
                  srl          t6, a2, gp
                  sra          ra, s3, t5
                  addi         a2, s2, -1566
                  auipc        ra, 409532
                  sra          t1, s11, a0
                  nop
                  slli         a1, a0, 23
                  sub          a3, t6, a0
                  srai         a7, a4, 10
                  lui          s6, 342583
                  sltiu        s1, tp, 1066
                  slti         a0, t1, -1268
                  slli         zero, t0, 10
                  sltu         t3, t5, s11
                  xori         sp, s8, 345
                  slli         s9, t5, 0
                  srl          s5, sp, tp
                  nop
                  xori         a3, s4, 589
                  addi         t0, s2, 1405
                  nop
                  slt          t4, t2, s11
                  ori          a0, a2, -1562
                  lui          s0, 289758
                  sltiu        t5, s9, -514
                  and          s0, t1, a5
                  slli         t1, gp, 2
                  srl          a3, a7, ra
                  add          s7, a0, sp
                  addi         t5, zero, -504
                  slli         s0, s3, 5
                  addi         t6, s11, 822
                  sub          ra, t5, s11
                  sltu         a7, t6, s0
                  srl          a3, ra, s10
                  ori          s9, s3, 758
                  andi         t6, a2, 81
                  xori         s4, s4, 256
                  xor          s5, s5, a0
                  xor          a5, a7, tp
                  srai         s3, a0, 27
                  addi         s6, t2, -144
                  sltu         a3, s8, zero
                  auipc        s3, 644445
                  sltu         a5, t6, sp
                  andi         a5, a7, -1780
                  slli         s1, zero, 0
                  auipc        a0, 428307
                  ori          t1, sp, -714
                  ori          a1, a5, 680
                  sltu         tp, s8, t1
                  slli         s9, a6, 6
                  sltiu        a1, sp, 238
                  sll          sp, t3, t1
                  sub          s7, a3, s4
                  addi         a0, s6, -17
                  lui          ra, 326904
                  xor          s6, ra, a4
                  lui          ra, 1003187
                  sub          t3, t2, t1
                  or           ra, t6, a2
                  sra          a5, a2, a6
                  sltiu        t3, a2, -2017
                  srli         s2, a5, 27
                  auipc        t5, 585541
                  addi         t4, t5, 494
                  lui          t4, 697752
                  sll          ra, t4, s7
                  add          a1, s11, gp
                  nop
                  xor          tp, s9, t3
                  slti         a6, a7, 399
                  srai         a0, t0, 11
                  ori          s2, s6, 754
                  xori         s7, a0, 1117
                  sltu         s2, a1, gp
                  or           a1, a5, a6
                  slt          t5, t0, s4
                  and          a2, ra, s6
                  sub          a3, gp, s8
                  sub          a4, a0, tp
                  and          tp, s3, a5
                  sub          a4, t5, t4
                  sltiu        s5, gp, 1742
                  sll          s8, a3, s9
                  slt          a3, t5, sp
                  auipc        s6, 372235
                  sltiu        tp, s1, -518
                  ori          gp, s2, 1900
                  sub          a1, a6, a3
                  andi         t5, sp, -124
                  srli         a5, t5, 13
                  slt          s2, t2, s10
                  nop
                  sub          s7, a3, s11
                  sub          s2, zero, s1
                  or           gp, t6, ra
                  sltu         ra, a3, a5
                  sltiu        t4, a1, 1636
                  slt          t1, sp, t4
                  andi         s8, s3, 1977
                  slli         s1, t6, 0
                  nop
                  lui          s5, 763831
                  andi         a6, t1, 392
                  add          t6, s5, s3
                  slt          t3, s10, t5
                  ori          gp, t5, -1833
                  sra          a6, t6, a6
                  ori          s2, s3, -792
                  auipc        a5, 596930
                  sll          a2, s11, sp
                  sltiu        s8, t5, -1916
                  xori         a2, s2, 1515
                  and          s3, t6, tp
                  slli         a3, s6, 0
                  or           s9, s2, s4
                  lui          s3, 171739
                  srai         s0, a5, 4
                  ori          t1, a7, -1407
                  srai         s6, a4, 2
                  or           s9, s4, s0
                  slt          s2, gp, s5
                  xor          a4, ra, a4
                  slti         a7, a5, -1890
                  xor          a3, s9, s0
                  sltu         gp, t0, s8
                  srai         s5, a0, 13
                  sltiu        zero, t4, 937
                  sll          a1, s6, s6
                  slli         s9, a1, 23
                  slti         s4, s5, -1528
                  ori          ra, s3, 1029
                  add          s8, a6, a1
                  slli         t4, s4, 2
                  slli         s7, a3, 11
                  xori         t3, t0, -2026
                  slt          s7, a4, t6
                  slt          ra, s8, t4
                  slli         s6, s8, 3
                  ori          ra, zero, 1901
                  addi         a5, t4, -485
                  sub          zero, a2, t4
                  addi         t6, s1, -1380
                  sltiu        s4, a6, -1185
                  sll          ra, a0, a1
                  srai         t3, s2, 22
                  xori         a5, t5, -965
                  slli         a2, s7, 30
                  srli         a2, t3, 23
                  slt          s6, s9, s4
                  nop
                  add          t6, t4, s0
                  srl          s9, s5, a4
                  srli         a2, t6, 22
                  xor          tp, a4, s8
                  srl          s4, s4, s9
                  auipc        a1, 994322
                  andi         s0, s0, 1489
                  slti         s8, t5, 1778
                  auipc        t3, 92431
                  slt          gp, t6, s8
                  slli         s1, a3, 16
                  and          a1, a3, t5
                  add          s0, s9, s10
                  slt          a5, t1, a6
                  xori         s2, zero, -1555
                  slti         a5, gp, -1101
                  sll          zero, s3, t4
                  or           s6, s7, t0
                  sra          t4, t3, a7
                  ori          t0, s3, 1549
                  srli         s9, s6, 7
                  add          s7, t1, a1
                  sltu         s3, t1, a6
                  nop
                  lui          s5, 287769
                  xor          a0, a2, ra
                  xor          a1, s2, a2
                  sub          s0, t3, s4
                  slti         t4, a0, -41
                  lui          a3, 104413
                  lui          a1, 835224
                  xor          s6, s5, s10
                  slli         t0, t6, 6
                  addi         s1, s10, 1876
                  srl          s0, s0, t1
                  sltu         s5, s8, s6
                  xor          a4, t0, s4
                  xor          zero, t3, t2
                  sub          a3, zero, sp
                  sll          t3, ra, s11
                  ori          s9, s7, -440
                  andi         tp, s11, -1659
                  slli         a0, s3, 25
                  auipc        s6, 390729
                  sub          zero, a1, gp
                  xori         s8, a2, 1473
                  ori          s9, t5, -2029
                  sll          s3, s9, t1
                  auipc        gp, 335597
                  srli         t3, s11, 26
                  and          t0, a6, a4
                  srli         s7, gp, 10
                  slt          t5, s11, s2
                  xori         s3, s7, -1501
                  sll          t4, t3, t6
                  nop
                  auipc        s9, 217913
                  lui          s5, 963339
                  srai         a4, t0, 27
                  andi         a4, tp, -1622
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           sp, 0x80000000
                  li           a7, 0xffffffff
                  li           s7, 0x0
                  li           s6, 0x0
                  li           t0, 0xffffffff
                  li           s2, 0x165391a9
                  li           a5, 0x80000000
                  li           s9, 0x80000000
                  li           a1, 0x0
                  nop
                  add          s9, s2, a0
                  addi         a5, a1, 767
                  addi         a5, sp, -9
                  nop
                  add          a5, a5, s7
                  lui          sp, 948871
                  addi         s7, s7, -574
                  sub          a1, a0, s6
                  nop
                  sub          s9, s9, t0
                  add          t0, s6, s7
                  lui          t0, 286733
                  lui          s6, 911876
                  addi         s7, a7, -2040
                  lui          a5, 5170
                  nop
                  auipc        s7, 268846
                  addi         a7, a1, -1398
                  lui          a1, 712181
                  add          a0, t0, a7 #end riscv_int_numeric_corner_stream_0
                  sll          s0, a5, t6
                  sra          t4, s9, s7
                  srli         zero, s0, 17
                  sra          tp, s2, t4
                  xor          s3, a7, s4
                  and          s0, s11, s0
                  slti         gp, a6, 870
                  srl          t6, sp, s8
                  srl          s5, s1, a3
                  and          s3, s8, a5
                  xor          s5, t3, t4
                  nop
                  srl          a3, t2, ra
                  addi         a7, s0, 406
                  sltiu        t1, t3, -993
                  andi         a3, a5, -1736
                  andi         s3, a7, -809
                  slti         s0, s2, 1924
                  add          a4, s3, a7
                  xor          a6, s0, t4
                  slt          s5, gp, s10
                  slli         s2, s5, 14
                  ori          s2, a1, -630
                  or           s1, s4, s7
                  andi         gp, sp, -2017
                  srli         s1, t4, 7
                  nop
                  xor          t1, a3, t0
                  lui          ra, 152915
                  add          gp, t1, s3
                  addi         t1, s10, 460
                  slli         t0, s7, 12
                  sra          tp, s3, s8
                  srai         s5, t5, 13
                  andi         s4, a1, -3
                  ori          a4, s7, 986
                  slli         s0, a1, 31
                  slti         t0, t6, 1754
                  nop
                  add          s6, s7, t0
                  add          s2, t0, s3
                  sltiu        a3, a7, 1286
                  ori          a7, t1, 1866
                  andi         a7, s0, 2020
                  nop
                  xori         t4, sp, 1047
                  srai         s1, a1, 29
                  add          tp, t5, a4
                  sra          a1, s8, s9
                  slti         t3, s7, 350
                  xor          s3, s0, gp
                  srai         s1, s1, 15
                  xori         t4, t0, 437
                  srai         t5, s2, 5
                  and          t0, zero, a0
                  andi         zero, a6, 1991
                  lui          tp, 234614
                  nop
                  auipc        t0, 88058
                  andi         a0, a0, 496
                  xor          t1, s2, s5
                  srl          s9, s5, a5
                  sub          s4, s9, s11
                  or           a1, s6, s6
                  nop
                  sll          a0, t2, t1
                  ori          s8, s7, 551
                  sltu         a4, a3, s11
                  sra          s7, s7, s0
                  xori         s8, t5, 438
                  slti         tp, s8, 997
                  sra          sp, a5, t3
                  srl          s7, s7, s5
                  sub          t3, s0, s5
                  ori          s0, a0, 1745
                  xori         t1, tp, -1075
                  or           s8, s9, s2
                  sra          a0, s11, s1
                  sra          tp, s3, a7
                  slli         s9, s10, 15
                  and          a7, a2, t4
                  slt          s9, t1, tp
                  and          zero, a2, ra
                  sra          s9, s7, s8
                  xori         a4, t1, -303
                  ori          a6, s2, 1189
                  sltiu        a3, sp, -253
                  slli         s7, s0, 13
                  xor          s0, a1, s10
                  auipc        sp, 796534
                  auipc        a5, 300772
                  addi         a4, t0, -1764
                  nop
                  sub          a6, ra, s7
                  andi         t6, tp, -1498
                  xori         a0, s9, 716
                  nop
                  srli         tp, sp, 22
                  ori          sp, s5, 376
                  slti         s5, a3, 33
                  sltu         s7, s1, s8
                  sltu         t1, t2, t6
                  add          s4, s8, tp
                  auipc        s7, 51199
                  slli         s3, t1, 18
                  or           s8, a5, a6
                  lui          t1, 961579
                  srai         gp, t3, 30
                  andi         s4, s2, 639
                  srai         a4, s2, 27
                  srl          s1, a4, a7
                  or           t4, a5, t1
                  sltiu        a5, s11, 1632
                  andi         zero, a4, 1864
                  srai         s7, t3, 14
                  and          s4, s2, a5
                  andi         a5, t2, 1601
                  sltu         s2, a0, s5
                  add          a5, t0, s7
                  xori         s9, ra, 236
                  lui          sp, 512153
                  addi         a6, a7, 1581
                  srli         a5, a5, 25
                  sltu         t3, s4, t4
                  srai         s7, s4, 22
                  and          tp, s4, t5
                  sltu         s4, s6, tp
                  auipc        t3, 868072
                  slt          s9, t5, zero
                  sltu         s9, t0, t5
                  sltu         sp, a7, s8
                  sll          s8, s6, s0
                  sll          sp, a6, a1
                  slti         s3, s10, 687
                  nop
                  sltiu        tp, t6, 211
                  slti         a5, s2, -1242
                  addi         t4, a0, -1564
                  sra          s5, s5, s5
                  srl          s9, s2, t4
                  ori          s8, s1, -1155
                  andi         gp, s7, -362
                  addi         s1, s8, -1973
                  slti         a1, a1, -300
                  sll          a6, s9, gp
                  xor          a0, ra, a4
                  add          s8, a3, s7
                  lui          a1, 893415
                  slt          s8, s3, t5
                  sltiu        t3, t1, -1398
                  add          t0, t6, s1
                  lui          a5, 675217
                  or           t5, s5, t5
                  sltiu        a0, a5, 1202
                  slli         s3, t3, 17
                  srl          s3, s7, a1
                  and          t6, s9, a5
                  lui          t5, 666792
                  sltu         s8, a4, s5
                  slti         a4, t0, 1
                  slli         a4, zero, 9
                  xori         s6, gp, 1834
                  sltu         s7, t4, a0
                  nop
                  nop
                  sll          s3, t3, a1
                  srl          zero, gp, t0
                  and          t5, s2, s8
                  sll          a7, s0, t1
                  slli         s5, a1, 1
                  slti         s0, a5, -108
                  add          t1, sp, t2
                  add          a2, s7, tp
                  srl          tp, a7, s3
                  xor          s8, a6, t6
                  nop
                  sll          s6, s6, s1
                  lui          sp, 75972
                  sltiu        t4, s1, -354
                  lui          s3, 873278
                  or           a3, t4, t4
                  slli         a2, a4, 14
                  slti         s5, t4, -393
                  andi         a7, a2, -35
                  sll          gp, a5, a3
                  srl          a7, a5, s5
                  add          a0, t5, s1
                  auipc        t1, 692361
                  sltiu        s2, s5, -1339
                  sltiu        a4, gp, -58
                  xor          s4, t1, a4
                  add          s4, t0, s9
                  xori         s5, t6, -1822
                  slti         s3, s10, 1557
                  addi         s2, s3, -1450
                  srl          a7, s4, t6
                  sltu         t1, ra, a7
                  add          gp, a7, t1
                  srli         t4, s1, 9
                  sll          t6, a1, sp
                  sltu         gp, t6, a1
                  add          tp, s7, a7
                  lui          s4, 237633
                  auipc        t1, 362226
                  xori         t1, a5, 969
                  sll          sp, t5, s8
                  sub          a6, t5, s0
                  sltiu        s3, s3, -1134
                  slt          a2, t3, zero
                  slti         t3, a6, -1416
                  ori          a2, ra, -1171
                  andi         s8, t6, 649
                  sltu         a7, s9, s7
                  sltiu        a3, a5, -1924
                  sltiu        s2, s11, 1290
                  andi         a5, s6, -570
                  srl          t1, gp, sp
                  srli         s4, a7, 20
                  sra          s9, s1, a4
                  add          gp, tp, t3
                  xori         a2, t0, -1108
                  sub          t0, t5, a1
                  add          s4, s1, a1
                  srli         zero, s7, 0
                  add          zero, zero, t6
                  srli         s6, t2, 11
                  and          s0, t3, s0
                  sltu         a0, zero, s5
                  andi         a1, t2, -1061
                  slti         s8, a5, 337
                  ori          zero, s7, -153
                  sll          s2, s1, a4
                  slt          s5, s0, a3
                  nop
                  or           s3, a6, t0
                  lui          t0, 685752
                  sll          a4, s5, t5
                  sltiu        t0, a0, 1004
                  lui          ra, 76990
                  add          s1, s3, t6
                  lui          s8, 226036
                  srai         a7, a2, 28
                  sltiu        t3, s0, 545
                  ori          s0, t1, -1578
                  slli         a5, a3, 12
                  sll          s3, a5, t3
                  sltiu        s6, t6, 1535
                  sub          a1, t2, a3
                  xori         a3, a0, 590
                  add          s6, a5, s10
                  sltiu        tp, a1, 930
                  sltiu        s8, a6, -27
                  slti         zero, t0, -452
                  srai         zero, s2, 9
                  sltiu        s4, t2, 581
                  srl          s1, s10, s5
                  sltu         gp, t4, t2
                  ori          zero, s7, 763
                  and          tp, s3, t3
                  slti         sp, zero, -1731
                  add          a1, s4, t0
                  sra          a2, a3, s10
                  ori          gp, a1, 676
                  auipc        s9, 893488
                  srai         t0, t4, 19
                  auipc        s3, 980924
                  sltiu        t4, gp, 1253
                  srli         s2, s2, 4
                  xor          s3, t4, t0
                  srli         s1, s6, 16
                  slli         sp, s10, 25
                  srai         zero, t0, 5
                  add          t6, t4, s8
                  addi         a2, a3, 1546
                  or           t0, sp, s6
                  nop
                  or           s1, a4, s7
                  or           t3, a6, s11
                  sll          a4, s0, sp
                  slli         t6, t5, 20
                  ori          s4, t4, -1303
                  sub          s8, tp, tp
                  xori         s9, t1, 434
                  addi         s3, a6, 1783
                  sra          a7, t6, a4
                  and          s3, a6, s8
                  sltiu        t6, a4, -738
                  srai         zero, a6, 10
                  sltiu        t1, t2, 304
                  slli         t1, a1, 24
                  andi         a6, gp, -599
                  auipc        s4, 1047646
                  xori         a5, s10, -1122
                  xor          gp, s5, t6
                  ori          gp, t0, -1422
                  or           tp, s6, s9
                  and          a0, s3, t1
                  sltiu        s6, t6, -1066
                  sll          s6, gp, s2
                  slli         a4, tp, 26
                  sltu         s0, s3, s9
                  sub          zero, tp, s1
                  slt          a3, a6, s9
                  sll          a2, t4, s10
                  slti         a4, s3, 793
                  slti         a6, zero, 206
                  slt          a7, t4, s7
                  andi         s5, s8, 911
                  sub          ra, t5, t2
                  sltiu        a7, ra, 1621
                  add          s1, s0, gp
                  and          a1, ra, s11
                  slt          t4, a7, tp
                  srai         a5, s0, 2
                  xor          t3, tp, zero
                  srai         s1, s1, 25
                  nop
                  addi         s8, t4, 1636
                  slli         s3, t1, 28
                  sltiu        s3, ra, 517
                  srli         gp, a3, 2
                  srai         s1, t4, 9
                  slti         t6, s2, -1303
                  srai         s6, t6, 22
                  nop
                  sub          gp, a5, s10
                  ori          t3, s8, -12
                  sra          t6, t6, a1
                  srl          s6, s6, t3
                  slti         a6, s9, 1047
                  slt          t6, s0, a2
                  slli         s7, tp, 14
                  slli         a0, tp, 20
                  sub          a5, s7, tp
                  slt          tp, s8, s6
                  srli         s2, s8, 6
                  slt          a3, a0, a5
                  ori          zero, a6, 632
                  nop
                  srli         tp, a0, 7
                  nop
                  andi         a3, s9, -745
                  or           s5, s5, s4
                  slti         ra, t4, 1668
                  sll          ra, sp, s9
                  sub          sp, s3, a1
                  sltiu        t1, gp, 1506
                  srli         s3, tp, 17
                  or           t5, ra, s1
                  xor          ra, ra, s3
                  sra          t1, zero, s0
                  sra          a0, t5, a1
                  sltiu        t6, s6, -1785
                  and          a5, ra, s8
                  auipc        s4, 860586
                  sltiu        ra, a4, 732
                  xori         a1, s11, 399
                  sltiu        s8, s8, -1855
                  slt          t0, zero, t1
                  addi         ra, s0, -381
                  lui          a7, 568704
                  sub          t0, t3, s2
                  srli         t1, a2, 11
                  lui          s7, 763167
                  xori         a7, a1, 1052
                  and          tp, t3, s3
                  and          t5, a5, t2
                  sub          s1, s6, s0
                  sub          a4, a3, s7
                  sra          sp, ra, t6
                  sltiu        zero, t2, 163
                  add          a7, a3, a0
                  xori         a3, a6, -582
                  andi         a4, t5, -212
                  sltu         tp, s9, t4
                  or           s1, t5, s0
                  xori         a2, a2, -1220
                  ori          s7, s9, -154
                  slti         a3, tp, 1375
                  addi         s3, sp, -459
                  sub          zero, s10, t3
                  andi         s5, sp, 878
                  and          a2, tp, a7
                  sub          a3, s5, s7
                  or           tp, s5, gp
                  srl          t6, gp, a7
                  slti         gp, s9, 1778
                  slli         s1, s3, 5
                  srl          a5, s4, s3
                  ori          s9, t4, 227
                  sltiu        gp, s9, -122
                  andi         s1, a6, 17
                  or           a5, s10, a4
                  xori         t1, s4, -1803
                  slti         gp, a6, 1288
                  sltu         s5, sp, t0
                  xor          t5, s7, sp
                  ori          t1, gp, 413
                  slli         a3, t2, 7
                  slti         a7, a4, 882
                  sra          a5, a7, zero
                  add          a7, a2, t5
                  sub          s3, s8, gp
                  nop
                  srli         a4, s10, 12
                  nop
                  xor          s7, sp, t4
                  ori          sp, gp, -1748
                  sltiu        t0, a1, -814
                  or           a3, s2, s0
                  sra          a6, s0, s4
                  addi         s9, s9, -894
                  slt          a2, a5, s8
                  slt          s5, s3, s2
                  sltu         t4, ra, s4
                  xori         ra, s6, 1374
                  xori         a6, a0, 1216
                  auipc        t1, 642360
                  sltu         s0, s3, t5
                  auipc        t0, 531102
                  sltu         a6, t5, a2
                  and          s6, a5, ra
                  add          a7, s11, s2
                  lui          gp, 111440
                  sltu         gp, tp, s2
                  addi         s7, t5, 380
                  sltu         a0, s3, sp
                  nop
                  auipc        sp, 627375
                  srl          t1, s0, t1
                  ori          zero, s7, -1420
                  xori         s7, s3, 1912
                  sub          a4, a7, a1
                  slti         a0, s0, -1217
                  srl          a7, sp, a1
                  auipc        sp, 198701
                  xori         gp, s5, -1255
                  or           t0, s9, gp
                  addi         s3, t4, 1123
                  ori          ra, t2, 1989
                  srai         a2, s0, 19
                  srai         a7, t4, 28
                  slti         s5, s6, 875
                  slt          s9, s7, a3
                  xori         t1, s5, 1550
                  sll          a1, gp, tp
                  slt          a0, t3, s11
                  slt          s9, a2, s0
                  srli         a0, t0, 5
                  sub          a7, t1, s9
                  auipc        s5, 195279
                  lui          a7, 435808
                  sub          a7, s8, a2
                  xori         a6, t1, -1000
                  srli         ra, a1, 6
                  slt          a6, t3, zero
                  sltu         s6, a3, t2
                  xori         s0, sp, -1460
                  andi         t1, s4, 1619
                  sra          s1, t3, a4
                  and          s8, a4, a0
                  srai         tp, a7, 22
                  and          s9, t6, t4
                  li           s6, 0x9699ad5d #start riscv_int_numeric_corner_stream_2
                  li           a7, 0x80000000
                  li           s9, 0x0
                  li           gp, 0x0
                  li           a2, 0x0
                  li           a6, 0x0
                  li           t0, 0x71af44af
                  li           t4, 0xffffffff
                  li           s8, 0x0
                  li           s1, 0x93910875
                  nop
                  auipc        s1, 38391
                  lui          a7, 596284
                  sub          s1, a7, s9
                  nop
                  nop
                  add          gp, a2, s9
                  lui          s8, 377833
                  add          gp, a2, a6
                  addi         gp, a6, -1952
                  add          s8, a6, gp
                  lui          s1, 383738
                  lui          s1, 907222
                  add          s9, s1, a7
                  lui          s1, 312286
                  lui          t0, 937111
                  lui          t0, 275840
                  add          t4, a2, s1
                  auipc        s1, 476497
                  lui          s1, 205581
                  add          a2, a6, s9
                  add          a6, t4, s9
                  sub          s9, a7, t4
                  sub          t0, s9, a2
                  addi         s9, s9, 1072 #end riscv_int_numeric_corner_stream_2
                  lui          t5, 397783
                  andi         s2, t6, 657
                  srai         s9, s4, 6
                  slt          s8, zero, a0
                  sub          s5, ra, t5
                  auipc        a5, 50336
                  sltu         t0, t4, t0
                  addi         s3, ra, 1187
                  sra          a5, t3, a5
                  or           a1, s1, t5
                  srli         s3, s11, 25
                  sub          s2, a4, s5
                  srli         a5, s3, 23
                  sub          a2, t1, a1
                  sra          t3, a1, s1
                  lui          a3, 1031322
                  slt          s9, a5, a3
                  slt          s7, sp, s7
                  addi         a4, zero, 461
                  nop
                  sltu         s8, s10, t2
                  sltu         s7, ra, s0
                  auipc        sp, 966237
                  sltu         t0, s8, ra
                  add          t0, s3, t5
                  sltiu        a3, s11, -1672
                  ori          a5, s8, 1511
                  slti         sp, s5, -1666
                  addi         s9, a7, 1658
                  slli         s1, a2, 2
                  and          a2, a4, t4
                  slti         a5, a1, 649
                  ori          s5, t4, -366
                  andi         gp, a4, -2
                  addi         t0, s6, 1649
                  srl          s9, a2, t2
                  sub          sp, a4, s1
                  sra          t3, s7, a4
                  slt          s3, a5, t0
                  lui          a6, 282945
                  addi         s9, t0, -1046
                  auipc        s1, 986919
                  xor          s1, t2, a7
                  slli         gp, t6, 14
                  srli         t4, gp, 6
                  sltu         a7, a4, s1
                  andi         s5, s3, -178
                  sub          a6, t6, gp
                  slt          t6, a7, t4
                  add          s7, a5, a1
                  srli         t6, zero, 2
                  sub          s3, t1, s0
                  slli         s2, t4, 29
                  srl          sp, s11, t0
                  slti         sp, a7, 633
                  andi         t3, a5, -406
                  sra          s5, a3, s3
                  sltu         t4, s2, a2
                  slt          s3, t6, s4
                  xor          s8, zero, a7
                  sra          t6, s6, s2
                  slli         s3, a4, 19
                  srai         s5, t0, 0
                  sltiu        s9, t1, -1239
                  srli         s4, t2, 9
                  sra          s1, gp, a6
                  or           t3, s4, tp
                  sub          t4, a7, s11
                  xori         t0, a1, -1804
                  ori          t6, a5, 1600
                  add          t4, t0, a7
                  sltu         s7, s9, a2
                  auipc        a2, 996964
                  sltu         s8, t3, t5
                  slt          a7, s10, a1
                  addi         a6, s9, 1726
                  slt          a4, s10, s9
                  lui          t5, 787531
                  or           t6, ra, ra
                  ori          a6, tp, 853
                  sltiu        s5, t6, 2021
                  ori          s9, zero, -419
                  andi         t1, ra, -506
                  srl          tp, a7, a6
                  add          s9, t3, ra
                  sub          a7, t6, s6
                  srli         s0, a3, 8
                  sub          a1, t5, t1
                  and          sp, tp, zero
                  sll          t5, t1, a0
                  sra          a2, a2, sp
                  sll          t6, s3, a6
                  addi         s3, a4, 1273
                  lui          sp, 630419
                  lui          s9, 858806
                  slt          t3, s2, t1
                  and          s3, t4, s8
                  slli         s2, a1, 0
                  and          t6, t1, sp
                  addi         a1, s2, -1925
                  slti         t1, s8, -969
                  and          a7, s9, s11
                  ori          gp, s9, 1830
                  sra          s8, a7, s8
                  lui          s2, 502360
                  sll          t5, s5, s0
                  lui          t0, 962543
                  andi         sp, s3, 1131
                  slti         s8, s9, -350
                  srl          a4, s4, gp
                  slli         s2, s5, 21
                  or           sp, s3, t3
                  addi         a5, a0, 76
                  auipc        t4, 19369
                  srl          gp, a6, a4
                  srl          t0, a6, a3
                  slt          t5, s7, s4
                  add          a5, a1, t6
                  srl          s2, t4, s1
                  xori         a3, t0, 1465
                  or           sp, s0, sp
                  addi         a3, t6, 1601
                  sll          sp, a7, t4
                  xor          t3, s1, s4
                  sll          s9, t1, s9
                  sra          a6, s2, s10
                  slti         s6, t4, 1558
                  sll          s0, t5, s8
                  addi         s2, t3, -1400
                  sra          a5, t5, a5
                  sltiu        a3, s8, 133
                  sll          t4, s9, a2
                  srai         t6, zero, 22
                  add          a5, a7, t5
                  sltiu        s5, ra, 505
                  slli         t1, a6, 5
                  slt          t5, s5, t6
                  sltiu        a2, t6, 1383
                  sltiu        a4, s6, -1895
                  addi         a3, a5, 1487
                  sltiu        sp, s8, -480
                  andi         a3, s8, -718
                  slti         tp, a5, 1711
                  sltiu        s4, s0, 1479
                  srli         a5, t2, 6
                  add          sp, s11, a5
                  sltu         s7, a2, t2
                  sltu         t4, a2, ra
                  and          a3, gp, s2
                  slt          s3, s8, s3
                  slli         s7, t0, 21
                  addi         a0, t3, -949
                  srai         tp, s3, 0
                  xor          t1, a4, t4
                  add          a5, a0, gp
                  lui          a4, 1028737
                  sltu         t1, t3, s0
                  sub          gp, a5, s3
                  xor          s9, s7, t3
                  or           s0, tp, t5
                  slti         a2, t0, 1015
                  slt          tp, t2, s8
                  nop
                  slti         a3, s9, 2020
                  slt          s9, s3, t0
                  srli         a6, t4, 23
                  slti         s1, t5, 1618
                  auipc        s9, 547173
                  andi         s1, a3, -1749
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           t3, 0xffffffff
                  li           t6, 0x80000000
                  li           s1, 0xa992ecfd
                  li           s4, 0xb129545a
                  li           a1, 0x80000000
                  li           a3, 0x80000000
                  li           t5, 0x0
                  li           s2, 0x80000000
                  li           ra, 0x80000000
                  auipc        t5, 376277
                  auipc        s1, 694153
                  add          s4, ra, ra
                  nop
                  lui          a1, 597688
                  add          t6, t3, a3
                  sub          t5, s1, t6
                  auipc        s1, 89126
                  sub          ra, a5, s2
                  add          a1, t5, s4
                  nop
                  lui          s2, 816560
                  nop
                  lui          t6, 803272
                  add          ra, ra, s2
                  addi         t6, s2, 1744 #end riscv_int_numeric_corner_stream_18
                  auipc        sp, 55359
                  xori         sp, s5, 1622
                  sltu         a3, tp, s5
                  and          s6, s6, t6
                  lui          t5, 411345
                  sll          gp, s11, s3
                  lui          t6, 821969
                  nop
                  sub          t1, s9, t2
                  xor          a4, s8, ra
                  xori         s9, zero, -335
                  srl          a7, a0, a5
                  or           a6, t3, s5
                  sltiu        s3, s1, 1718
                  xor          zero, t4, s2
                  or           s8, s11, s6
                  addi         tp, zero, -1135
                  srli         a7, tp, 10
                  slt          s2, s7, t3
                  sltu         ra, t2, s10
                  sll          gp, s0, s6
                  andi         a1, s9, 216
                  slli         s4, a2, 13
                  lui          t4, 522041
                  ori          s3, s8, 1167
                  xor          ra, a0, t1
                  xor          a4, t5, s11
                  andi         a2, t2, -1843
                  srli         t1, s7, 16
                  srai         t0, t5, 27
                  xor          s2, t2, t3
                  sub          sp, s9, s9
                  slti         t3, gp, 671
                  sub          t5, a2, t6
                  and          s8, zero, s3
                  lui          sp, 818365
                  sra          t1, t5, sp
                  add          s9, t4, a2
                  sltiu        s7, t5, -1564
                  slti         s6, t0, -1341
                  xor          a6, a7, a0
                  addi         t3, s8, 1293
                  slli         zero, s3, 23
                  lui          s4, 896458
                  or           a2, t2, sp
                  xor          s6, t1, s5
                  auipc        a2, 473413
                  nop
                  ori          gp, s8, -111
                  sltiu        a5, s6, -637
                  addi         s8, s7, 2035
                  sltu         s2, s0, s0
                  slti         s8, s3, -887
                  srai         a3, s9, 29
                  sltiu        s7, s8, -1077
                  slli         ra, ra, 25
                  andi         a6, s8, -467
                  sra          zero, t4, s8
                  sll          s7, s3, a4
                  addi         a2, a2, 848
                  auipc        zero, 720870
                  andi         tp, t1, 220
                  ori          s0, a4, 71
                  xor          t5, t1, sp
                  auipc        t4, 165691
                  add          s4, s6, a3
                  or           gp, a6, s10
                  sltiu        a4, t3, 1541
                  srli         t0, a7, 22
                  srli         s9, s10, 19
                  xori         t5, s0, -741
                  slli         a6, a4, 26
                  auipc        a7, 52825
                  slti         a1, s0, 1948
                  andi         a7, s11, 716
                  sltiu        a1, t2, 1592
                  ori          a0, s10, -306
                  srl          s0, s8, s9
                  ori          s9, s6, 1267
                  and          a1, ra, s0
                  sltiu        a4, t1, 1154
                  or           a0, t1, a5
                  xori         t4, a6, -460
                  addi         t6, zero, 1022
                  sub          tp, sp, gp
                  sra          a1, s0, s6
                  xor          a4, a7, zero
                  or           a0, s5, s11
                  slti         a1, t2, 126
                  sub          t0, a0, sp
                  srl          ra, t2, a2
                  sltiu        tp, s10, 208
                  xor          s7, t5, a0
                  xor          t1, s11, a4
                  srli         s0, t4, 15
                  sltu         a3, s8, a6
                  addi         a2, zero, -468
                  srli         a4, t6, 28
                  sra          a5, t3, s5
                  addi         ra, s10, 1384
                  lui          t6, 646170
                  sltiu        s3, s6, -581
                  addi         s8, zero, -443
                  xori         a3, s10, 1246
                  xori         a3, t4, 1254
                  addi         t3, zero, -369
                  or           s8, s4, tp
                  slt          ra, s9, a5
                  sub          a5, t6, t3
                  sltu         s2, s9, a2
                  sll          ra, a5, t6
                  sltiu        t5, ra, -1749
                  nop
                  ori          s6, t5, 2043
                  or           a0, tp, t0
                  sra          s2, sp, a7
                  nop
                  slti         a0, sp, -1721
                  auipc        t3, 648252
                  srai         s2, s3, 11
                  ori          a4, sp, 1736
                  sll          a5, a7, t3
                  sll          s6, a1, s11
                  sll          s8, a0, tp
                  slti         zero, a7, -820
                  ori          s9, t3, 1725
                  xor          s8, s3, s2
                  sll          a1, s10, zero
                  slt          a3, s2, s7
                  srai         s9, zero, 12
                  andi         a3, a3, -1610
                  sub          a7, s8, t2
                  sltu         s2, s3, a5
                  sub          s8, a2, a7
                  sltiu        a4, t6, 791
                  slli         s5, s10, 4
                  slt          s3, s3, s3
                  lui          gp, 505300
                  slli         a0, t4, 6
                  lui          s2, 683765
                  xor          s1, t0, a0
                  sltu         t4, a0, s10
                  sll          s8, s7, t1
                  slt          s1, t3, a4
                  nop
                  xor          s5, a6, a6
                  sub          a2, s9, a4
                  srl          a5, a7, t5
                  addi         t4, s2, -66
                  lui          s5, 858729
                  sra          s8, s9, s0
                  nop
                  slti         a1, zero, 1288
                  srai         t0, zero, 31
                  xor          ra, tp, t0
                  srai         s9, t3, 11
                  ori          s7, a0, -1215
                  nop
                  sltu         s0, sp, sp
                  add          a6, s3, t1
                  sltiu        a6, s0, 1252
                  srl          a3, sp, s2
                  srl          t0, zero, a2
                  ori          s5, a6, 171
                  auipc        a4, 399615
                  slti         a3, s3, 483
                  lui          gp, 991087
                  sll          gp, t4, ra
                  srai         zero, s3, 7
                  sll          sp, t6, a2
                  andi         t6, s10, 1014
                  or           tp, s9, t2
                  ori          s5, a7, 1888
                  slt          a4, t4, t6
                  slli         zero, s0, 12
                  srl          a0, a2, sp
                  srai         a2, s8, 6
                  ori          t4, s10, -1335
                  add          a0, s2, s0
                  sll          s1, a7, s11
                  slt          s2, s1, t5
                  xori         sp, s4, -1880
                  lui          ra, 663332
                  slt          s2, t1, s4
                  or           t0, ra, a3
                  addi         s5, s7, 1346
                  sltu         a5, tp, tp
                  srl          s3, a3, a1
                  sra          t3, s11, a1
                  slli         a0, s2, 17
                  sll          s0, t0, sp
                  srl          s0, a5, t1
                  sub          a3, s1, t1
                  addi         a2, s1, -567
                  slt          a5, sp, t3
                  ori          gp, t5, -1019
                  srli         s0, s8, 2
                  xori         sp, t3, 457
                  sra          s7, s4, a2
                  srli         a2, s11, 9
                  add          t6, a5, a4
                  lui          a5, 903059
                  sltiu        t5, s10, -1839
                  sltiu        a0, t4, -800
                  srai         s4, tp, 22
                  ori          a0, sp, 627
                  sra          s3, tp, s2
                  ori          t0, t6, 638
                  add          s2, s6, a2
                  srl          zero, s8, s3
                  slli         tp, t2, 13
                  srl          s1, s3, s8
                  addi         a5, t3, -813
                  xor          t3, t5, s8
                  srli         a3, s6, 16
                  slli         a3, t2, 21
                  or           zero, a7, zero
                  sltu         s1, t2, a1
                  sra          s9, s0, a0
                  srl          t0, gp, s11
                  srai         a2, s0, 28
                  sra          a1, t4, t3
                  or           s3, a4, s9
                  ori          a5, sp, 242
                  lui          tp, 730722
                  srl          s7, a4, a1
                  and          s5, s10, a2
                  sltu         a5, s6, s6
                  nop
                  sll          t5, a3, a2
                  andi         s1, s9, 198
                  and          s0, tp, ra
                  sltiu        t5, a3, -69
                  sra          a1, s7, s1
                  or           ra, a3, s6
                  add          t1, s5, sp
                  sra          a6, t5, ra
                  xori         a7, s1, -2043
                  sub          gp, a5, s10
                  sltiu        sp, a7, -1247
                  lui          s5, 1005263
                  ori          s2, s11, 1552
                  ori          sp, sp, -1279
                  sra          a2, s11, s2
                  slli         a0, t6, 28
                  addi         s0, ra, 1507
                  nop
                  slt          a7, tp, s10
                  lui          t0, 61211
                  ori          s9, a0, -867
                  xori         s6, s6, 1052
                  srai         ra, t2, 20
                  ori          t6, a7, 1247
                  xori         t1, a0, 1029
                  slti         t3, zero, 405
                  sub          a6, a4, s5
                  slli         s5, t3, 6
                  and          gp, s1, s4
                  addi         t3, s0, 1607
                  lui          t6, 242032
                  sra          a6, t2, a4
                  xor          s9, a4, s5
                  xori         t5, s3, -753
                  or           ra, t2, t3
                  andi         t5, a2, 1849
                  srli         a0, s0, 23
                  addi         s1, t2, 1132
                  slt          s0, s0, a0
                  srai         t1, s11, 5
                  add          s3, a0, s11
                  srai         t0, a4, 11
                  xori         ra, tp, 1495
                  sra          a4, a3, s1
                  slt          t0, a5, s7
                  srai         s9, a3, 10
                  add          t6, s2, s8
                  lui          t6, 668506
                  sub          s4, zero, s1
                  sltiu        zero, s6, -1465
                  sltu         s4, t3, a4
                  sll          s4, a7, sp
                  xori         s9, a2, 831
                  srl          s9, s10, a0
                  srai         s8, s2, 31
                  andi         ra, s8, 1723
                  sll          gp, sp, s0
                  srli         s9, s9, 3
                  slt          a4, ra, t6
                  auipc        s2, 47765
                  xor          t4, s8, s1
                  andi         a7, t5, -902
                  sra          s8, a6, s4
                  slti         s3, s9, -147
                  lui          tp, 187896
                  slt          t1, gp, tp
                  andi         a0, a5, 1676
                  sltiu        a5, gp, 194
                  andi         a5, a1, 409
                  srai         t0, t0, 16
                  auipc        s9, 117382
                  srai         t4, s10, 11
                  sub          a1, a0, a7
                  nop
                  andi         t4, s1, 1493
                  xori         s2, a4, -375
                  xori         s4, s5, -943
                  sll          a2, s4, a3
                  srl          s8, s3, t3
                  sltu         a2, a0, s3
                  slt          s0, s7, t1
                  xori         tp, zero, 1840
                  xor          s4, a0, t4
                  srl          s0, gp, s7
                  sra          a0, a3, zero
                  sltu         s6, s4, a7
                  and          s3, a7, a6
                  slt          s8, zero, a6
                  sltu         s6, gp, zero
                  xori         t0, s4, 408
                  sra          a4, a6, s9
                  srl          s0, s3, t3
                  sra          s6, s0, s2
                  slti         gp, t1, 1108
                  sub          s8, s2, a6
                  and          t6, sp, s7
                  slti         s3, a5, 1015
                  addi         s8, a2, -760
                  sra          zero, t2, gp
                  xor          a2, s5, t3
                  add          t4, t6, s5
                  sll          s0, sp, s0
                  sltiu        a6, s4, 1521
                  ori          s2, t2, -1328
                  srli         t0, s5, 15
                  and          a0, t2, s9
                  sltiu        a4, a3, -909
                  xor          a1, a3, a2
                  sltu         t5, a3, t0
                  sub          s6, a6, tp
                  or           s7, s11, a3
                  addi         s9, s1, 1034
                  li           s8, 0x667c5dd #start riscv_int_numeric_corner_stream_12
                  li           s6, 0xffffffff
                  li           s0, 0x910bbe44
                  li           s7, 0xbf419ecd
                  li           a6, 0x825ff7e5
                  li           s2, 0xffffffff
                  li           t4, 0x80000000
                  li           tp, 0xc7f46097
                  li           a5, 0x0
                  li           a2, 0x11db2010
                  addi         s0, s6, 1866
                  auipc        a6, 379680
                  nop
                  addi         s6, s0, 994
                  nop
                  nop
                  add          s6, s7, s7
                  sub          s7, s7, s0
                  sub          s2, a5, a6
                  auipc        s8, 270584
                  sub          s2, t4, s7
                  auipc        s6, 775198
                  lui          s7, 298678
                  nop
                  add          s8, s2, tp
                  lui          s0, 490609
                  auipc        s8, 616427
                  lui          s8, 720247
                  sub          t4, a6, a2
                  nop
                  addi         t4, a2, -1312
                  addi         s2, a2, -803
                  lui          tp, 939338
                  auipc        a2, 898395
                  nop
                  auipc        a6, 238391 #end riscv_int_numeric_corner_stream_12
                  auipc        s5, 462849
                  auipc        a0, 34789
                  xori         s7, s6, 58
                  slt          a0, t3, ra
                  andi         a7, a5, 1141
                  addi         a6, s1, 404
                  srli         a7, t2, 0
                  sltu         s5, a2, t3
                  xor          a7, s3, s11
                  ori          ra, a6, 790
                  andi         s4, t4, -947
                  slt          t1, a1, a7
                  xori         s8, a1, -1420
                  add          s6, a4, s4
                  ori          s0, t2, -2002
                  sltiu        a0, ra, 1281
                  sltu         a6, a2, tp
                  auipc        s8, 215270
                  andi         t5, t3, -849
                  srli         a5, a7, 3
                  and          t6, a1, s6
                  auipc        s7, 766249
                  srl          a5, t2, tp
                  addi         a0, s2, 8
                  and          a2, a0, s3
                  lui          a2, 596621
                  slt          t5, a3, s5
                  srl          tp, s8, a1
                  xor          zero, a2, s4
                  srai         t0, a3, 10
                  xori         s5, sp, 180
                  xori         t3, a5, -1229
                  add          s7, s4, s6
                  slli         s7, a2, 14
                  sll          a5, s5, gp
                  slti         t5, s4, 588
                  addi         t3, gp, 1795
                  ori          t6, ra, -226
                  srli         a1, t2, 25
                  add          gp, a0, t3
                  srl          s6, tp, s10
                  nop
                  xor          s9, s10, s3
                  sra          s0, t4, s0
                  srai         s6, t5, 29
                  srai         s4, a0, 3
                  slt          t6, s1, t0
                  andi         s8, a2, 1116
                  slti         t4, t4, -1288
                  slt          t4, t3, t0
                  sll          t0, s11, t3
                  lui          a7, 621540
                  lui          s5, 466062
                  or           s5, t5, t2
                  lui          s4, 357988
                  nop
                  lui          s6, 441841
                  slti         s2, t2, 630
                  sra          s8, s0, zero
                  add          s6, s10, s4
                  auipc        a1, 288357
                  sub          a6, t1, a3
                  addi         t5, s2, -162
                  srai         t6, s0, 1
                  sltu         s5, a3, s8
                  slti         ra, s11, -1915
                  and          gp, sp, gp
                  andi         sp, ra, 602
                  andi         s3, s0, 385
                  auipc        t4, 930890
                  srli         zero, a5, 17
                  sra          s7, zero, a0
                  or           a6, s10, t5
                  slli         gp, s11, 21
                  slti         a1, s4, 1609
                  sltu         a5, a7, t6
                  auipc        s7, 454238
                  sltu         a5, s5, gp
                  srai         a2, t0, 15
                  slt          a3, tp, s9
                  auipc        s1, 139926
                  or           a3, t5, t5
                  srli         tp, s8, 24
                  auipc        a1, 250163
                  slt          a7, s4, s7
                  nop
                  sltu         t4, a7, s5
                  ori          t1, s9, 228
                  nop
                  srl          zero, a6, a6
                  sltiu        ra, a1, 531
                  xor          a7, t6, s6
                  srli         ra, t2, 11
                  xori         a3, s8, -1798
                  srai         t3, s6, 28
                  srl          gp, a6, s5
                  and          s1, s0, t6
                  srli         t6, t0, 3
                  srai         t3, s0, 7
                  sub          a4, sp, s3
                  or           s5, a4, a6
                  xor          a3, t0, ra
                  srl          zero, a0, s6
                  nop
                  sub          s6, s0, a3
                  ori          s0, a1, 158
                  auipc        s0, 52306
                  and          s4, a4, s2
                  slti         t5, a7, -418
                  sltiu        sp, s11, 251
                  srl          s0, a4, a4
                  srl          a7, s4, t6
                  srli         s8, s11, 19
                  lui          s4, 998151
                  xori         a4, s0, 120
                  sub          a2, s8, s3
                  xori         s5, a1, -846
                  sra          a7, s2, s5
                  xori         s6, s9, -1619
                  slti         a5, tp, 1392
                  or           t1, s4, s0
                  sll          ra, a1, a4
                  or           t0, s6, s3
                  addi         a6, a6, -658
                  srl          s7, t3, t3
                  xori         zero, s2, -311
                  xor          s2, a1, t2
                  slli         a1, s11, 4
                  slli         s2, a1, 6
                  sub          s8, s4, t1
                  nop
                  sltiu        s7, a6, -729
                  addi         a3, a7, -1133
                  add          t0, t6, s9
                  add          tp, s8, ra
                  addi         t3, s1, -2008
                  srai         s3, t4, 18
                  sub          a2, a0, zero
                  sll          t6, t6, a1
                  andi         s3, a1, 1075
                  xor          a6, t1, a7
                  sll          a6, t3, t4
                  sub          s7, a2, a3
                  xori         a3, s3, -1720
                  slti         s6, t5, 974
                  slli         a4, sp, 31
                  and          a2, a0, s4
                  slt          a3, t0, s10
                  and          s7, t1, s3
                  xori         t3, a7, -1862
                  andi         a4, s3, 997
                  lui          tp, 296826
                  sll          a6, s10, s8
                  srai         a5, zero, 6
                  ori          t4, a6, -709
                  slli         a7, zero, 20
                  ori          a1, t3, -29
                  slti         a5, t1, 628
                  srli         a0, t5, 9
                  sra          a3, a5, t1
                  sra          s7, tp, a4
                  and          a2, s4, a1
                  and          t0, tp, a7
                  sltu         s8, t2, s4
                  xori         s5, a2, 678
                  slli         t1, s11, 25
                  sltiu        s9, t5, -316
                  nop
                  slti         a5, s4, 1227
                  lui          t6, 819618
                  srl          gp, zero, a4
                  andi         t5, s10, -866
                  and          tp, a7, a5
                  xor          a0, a7, s4
                  sub          a5, a3, t3
                  slt          tp, s5, t4
                  nop
                  ori          sp, s9, 368
                  and          s1, a4, a3
                  andi         s7, a0, 1208
                  sll          zero, s7, s6
                  ori          t3, s2, -1600
                  srai         s7, a1, 21
                  slti         t1, a1, -961
                  slti         ra, t4, -1784
                  lui          a2, 851401
                  xori         t1, a3, 81
                  andi         s0, s7, 1918
                  ori          s7, s3, 1675
                  sltu         t4, s7, s9
                  srli         a2, s1, 15
                  sltu         ra, a1, t4
                  addi         s5, s0, 1644
                  addi         a1, t1, -1052
                  or           a5, a1, a4
                  lui          t1, 940195
                  sltiu        a1, tp, 492
                  addi         a5, a4, 501
                  or           s2, gp, s10
                  srai         sp, t3, 11
                  ori          s6, s11, -159
                  add          t3, t0, gp
                  lui          tp, 420198
                  srli         a1, s11, 0
                  srli         t0, ra, 21
                  ori          gp, a2, -229
                  or           t6, a4, s3
                  sub          s8, gp, t1
                  slti         a3, s10, -415
                  andi         gp, gp, -1322
                  srl          t5, zero, a7
                  xor          s0, a1, t3
                  slli         tp, a4, 18
                  srai         t6, gp, 25
                  sub          s9, a2, sp
                  sub          s6, s0, s9
                  srli         a1, s3, 14
                  addi         s0, s11, -103
                  sll          s1, a4, a7
                  add          a2, zero, a1
                  slt          s7, s6, t5
                  lui          sp, 1034477
                  slt          s3, t6, t1
                  addi         sp, a4, -91
                  and          t4, s4, a7
                  sltiu        t3, s7, 916
                  srli         s2, t0, 12
                  or           zero, s8, t2
                  sra          s0, a6, t3
                  addi         tp, s1, -1804
                  slti         a4, t2, 376
                  lui          a0, 834787
                  sltu         a0, s1, ra
                  and          t4, s4, s8
                  sll          zero, a2, t6
                  slt          tp, s4, a1
                  sub          a5, t3, t0
                  sub          a2, t0, sp
                  and          s5, zero, s11
                  srli         s6, gp, 3
                  sltiu        s1, t1, -1642
                  sra          a0, s9, s4
                  slt          t4, ra, t1
                  slli         s4, a6, 0
                  ori          a3, t4, -1568
                  or           s7, t1, s11
                  sltu         a2, s1, s8
                  srai         s5, s0, 7
                  srl          s9, zero, ra
                  add          t0, s3, s7
                  sll          s8, s4, s2
                  srai         s3, s8, 12
                  slli         s8, s2, 16
                  xori         s8, s1, -1182
                  ori          a4, s5, 1389
                  and          tp, t4, gp
                  srli         t5, t2, 9
                  sra          a3, s1, s2
                  or           s7, tp, s2
                  slli         s3, ra, 1
                  add          s0, s3, a5
                  and          gp, t0, a4
                  auipc        s3, 914799
                  lui          s0, 1018524
                  lui          a5, 777242
                  andi         t5, t3, 1120
                  ori          t0, s1, 1392
                  ori          a5, ra, -1691
                  sll          gp, a6, a2
                  add          zero, s1, tp
                  andi         a5, t0, -1165
                  addi         a5, zero, -241
                  srli         ra, s4, 12
                  sltu         gp, zero, s8
                  auipc        tp, 515679
                  srai         ra, s0, 15
                  auipc        t4, 239561
                  xori         t1, s2, -719
                  add          t0, s6, t2
                  slti         a2, zero, -337
                  add          tp, gp, s9
                  sra          s9, s4, s8
                  srli         s5, sp, 28
                  sll          s5, a6, a4
                  sub          s9, s8, gp
                  sub          t6, a5, s11
                  slli         a2, a7, 24
                  srai         tp, t3, 4
                  sltu         t4, s11, ra
                  sltu         a3, s4, s4
                  lui          a0, 169098
                  nop
                  lui          s8, 655252
                  srai         t3, s4, 21
                  nop
                  or           t0, gp, s9
                  srli         s9, s8, 16
                  srli         a6, s3, 21
                  sltu         a1, s11, s10
                  sltiu        s3, s6, -555
                  sub          t5, s11, t4
                  add          t5, s6, a0
                  sub          t3, s8, a4
                  andi         a5, s0, -751
                  addi         a0, a2, -1008
                  or           a4, a0, s8
                  xor          zero, t0, s5
                  nop
                  slli         t1, t4, 3
                  xori         tp, t1, 86
                  slti         s9, t4, -1620
                  srl          ra, t3, s6
                  sll          t3, a3, t2
                  sltiu        tp, a7, -1868
                  slli         tp, s3, 16
                  sltiu        t3, s4, -1540
                  auipc        s2, 1026420
                  or           a6, t2, s8
                  add          s6, a2, t2
                  xor          a4, t2, sp
                  srli         ra, s6, 19
                  slt          s3, s1, a3
                  auipc        a1, 307112
                  slti         ra, t5, -1654
                  addi         s0, s3, -499
                  xor          s4, s10, tp
                  andi         zero, a1, 592
                  lui          zero, 975581
                  add          tp, a3, sp
                  or           gp, t2, s4
                  srl          a0, t3, a6
                  sltiu        s8, a2, 1599
                  slli         s1, t4, 19
                  sub          tp, gp, t0
                  lui          s2, 501505
                  sub          s0, s9, a0
                  addi         a5, s11, -1990
                  sub          s8, zero, s6
                  or           t0, s7, s6
                  xori         s4, s10, -263
                  sltu         s6, s11, ra
                  andi         t0, a1, -1389
                  lui          s7, 429908
                  sltu         t4, a3, s0
                  slti         s4, ra, -1140
                  xori         s7, tp, -1253
                  slti         t3, t6, 1267
                  sltiu        ra, t2, 1106
                  ori          t1, s6, 270
                  or           s7, s9, a5
                  sltu         a5, s5, a7
                  xori         s0, a2, -1043
                  sll          t5, t6, s7
                  xor          a5, t4, s9
                  nop
                  nop
                  sltu         t5, zero, s1
                  slti         a7, s10, 1106
                  addi         a5, t5, -995
                  and          s8, gp, a2
                  srai         a3, s10, 7
                  and          a2, a1, a7
                  slli         t4, t4, 0
                  xor          zero, a6, s2
                  ori          a6, t0, 1602
                  xor          a4, s2, t0
                  slti         s4, sp, -638
                  sltiu        a3, a5, 1266
                  lui          a7, 60966
                  slt          sp, s7, t0
                  sltu         a0, s9, sp
                  or           a6, a3, a6
                  sll          s9, a6, t6
                  auipc        s3, 110870
                  sltu         zero, t3, a2
                  sltiu        zero, a1, -856
                  srl          t4, a2, t3
                  sra          t4, t3, s11
                  sltiu        a1, t3, -249
                  nop
                  slli         a6, s6, 4
                  lui          a0, 495527
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           a7, 0x4d8439d3
                  li           a2, 0x0
                  li           s0, 0x80000000
                  li           s1, 0xffffffff
                  li           tp, 0x0
                  li           s2, 0x0
                  li           a5, 0x80000000
                  li           s4, 0x80000000
                  li           t6, 0x0
                  add          a5, a2, t6
                  add          s1, a2, s2
                  addi         t6, a7, -1772
                  lui          s0, 154605
                  addi         s0, s1, 958
                  nop
                  addi         a2, a7, 2038
                  auipc        a2, 803727
                  add          s2, ra, a5
                  lui          ra, 122877
                  sub          t6, s4, tp
                  addi         s4, tp, -999
                  auipc        tp, 781274
                  auipc        a5, 218431
                  lui          ra, 100704
                  nop
                  nop
                  sub          s4, tp, s1 #end riscv_int_numeric_corner_stream_15
                  add          a1, s9, zero
                  or           gp, s9, gp
                  xori         s1, s7, 215
                  xor          a0, t5, a6
                  lui          tp, 780800
                  and          ra, a4, a1
                  xor          s2, s5, a3
                  xor          s1, a5, a5
                  xori         s6, sp, -677
                  slli         a0, a7, 15
                  srli         a7, tp, 0
                  slt          s3, s8, s9
                  slli         a0, a0, 6
                  sll          a6, a2, t0
                  sltu         t3, s8, s3
                  addi         t4, s8, 63
                  slt          t0, s7, a2
                  or           t4, zero, t2
                  addi         s6, s8, -1686
                  srli         a6, zero, 14
                  andi         sp, ra, -316
                  slt          tp, t3, t3
                  or           s0, s10, a4
                  auipc        a0, 741736
                  xor          s2, t0, s5
                  sub          ra, s3, zero
                  auipc        t1, 408823
                  xori         a2, s5, 1052
                  add          s5, a5, a6
                  srl          t6, tp, sp
                  or           t6, s1, a6
                  ori          a6, a2, 1582
                  srl          tp, a2, a2
                  srai         a2, sp, 9
                  sltiu        a3, t3, 223
                  sltiu        a3, t5, 462
                  xor          s8, s2, t6
                  slt          t0, a1, s7
                  slti         a4, a4, 948
                  xor          sp, a0, t4
                  addi         a4, a5, 1142
                  xori         zero, a5, 867
                  ori          s7, s6, 1536
                  or           s1, s6, sp
                  sra          zero, s9, s8
                  sltiu        t4, s9, -1355
                  add          s1, a0, s7
                  slti         s5, s10, -549
                  srl          a3, tp, s8
                  add          s5, gp, s3
                  lui          s8, 300325
                  sltiu        s2, s3, -1044
                  slli         a5, s11, 15
                  slt          s9, s1, s1
                  or           s0, t1, t6
                  sub          a0, s0, t2
                  andi         t6, s8, -689
                  xor          t6, s6, s10
                  slli         s6, s2, 6
                  nop
                  sub          t0, s11, a1
                  sltiu        sp, s3, -1670
                  srli         s3, tp, 2
                  sltiu        a3, t2, -1694
                  addi         s9, zero, 470
                  srli         a6, t1, 18
                  sll          t4, tp, a5
                  lui          t0, 206126
                  nop
                  sll          a5, zero, s2
                  slt          t0, ra, sp
                  sltiu        s6, s0, -1515
                  xor          a2, s2, t0
                  sll          s9, a6, a0
                  sltiu        gp, a0, -1895
                  andi         t4, a5, 1568
                  srli         t0, s11, 11
                  slt          a5, ra, tp
                  ori          a1, tp, -812
                  add          s2, gp, a2
                  sra          s1, s0, a1
                  srli         a4, t2, 4
                  slt          s2, s3, s5
                  xori         t6, s11, 564
                  andi         sp, a6, 542
                  srai         zero, s3, 7
                  srai         zero, s5, 13
                  srl          s8, s6, s11
                  and          s7, t0, a0
                  sub          a2, t3, s1
                  ori          sp, s4, 1974
                  slti         s9, a6, -1023
                  slti         a4, a6, -1450
                  xori         s4, gp, -1361
                  ori          a1, t2, 191
                  auipc        s0, 963162
                  xor          s5, s1, s3
                  andi         s4, s3, -466
                  sra          t1, t3, gp
                  and          a6, a0, t3
                  ori          t3, s1, -686
                  ori          t6, s7, 1571
                  sra          s0, a5, s2
                  sll          s5, t2, ra
                  ori          zero, s10, -1933
                  xori         t4, t1, 1779
                  sll          s6, s9, a1
                  srai         a3, s3, 0
                  sll          gp, tp, a0
                  auipc        a6, 611434
                  srai         a6, tp, 20
                  sll          s2, gp, a1
                  slti         s7, a5, -631
                  slti         gp, t6, 75
                  sltu         s7, a1, s5
                  addi         a6, s11, 1371
                  srl          t4, s9, s8
                  and          sp, s4, gp
                  srli         s4, a1, 0
                  srli         s2, s11, 1
                  srli         ra, s0, 13
                  addi         t0, s1, 179
                  srli         s2, t5, 28
                  auipc        s1, 767576
                  ori          s9, a7, 1178
                  or           tp, ra, a6
                  addi         s0, t0, -1629
                  slt          tp, a1, s6
                  sltu         a3, t2, ra
                  sltu         s4, s2, a3
                  srai         zero, t0, 20
                  ori          a2, t0, 1739
                  sltiu        s0, sp, -855
                  sltiu        a2, a2, -1603
                  sra          zero, a5, ra
                  ori          s4, s9, 665
                  srli         tp, s9, 15
                  srl          s0, ra, zero
                  addi         t1, s7, -872
                  andi         t4, a0, 1784
                  sra          a6, s11, t5
                  sll          zero, ra, s3
                  srai         a4, s10, 27
                  nop
                  nop
                  andi         zero, t0, 39
                  sub          tp, s2, a3
                  lui          tp, 944770
                  srl          s6, s9, gp
                  sll          t0, s9, ra
                  slt          t6, a5, s8
                  or           s0, s9, t4
                  nop
                  andi         s0, t1, 1425
                  xor          s9, a0, s1
                  sltiu        gp, ra, 1023
                  slt          t4, t1, a6
                  srl          a1, s1, zero
                  or           t5, s3, s3
                  ori          a4, a6, -74
                  ori          a4, s8, 575
                  andi         ra, a0, -1730
                  sll          s2, s3, s2
                  lui          s0, 577861
                  srli         t6, t4, 14
                  srli         t5, a0, 28
                  slti         tp, s4, -886
                  lui          a3, 401155
                  sra          s2, s0, t1
                  slli         s4, s0, 30
                  add          s5, s9, s7
                  andi         s5, s1, 1607
                  slt          s8, a0, tp
                  xor          s7, s11, ra
                  slti         tp, a4, -357
                  auipc        t4, 312258
                  xori         a7, t0, -962
                  sltu         s4, s2, a2
                  andi         s0, a5, 1984
                  slli         gp, a6, 13
                  sltiu        a3, gp, 1688
                  auipc        zero, 299654
                  sltiu        t3, a4, 2011
                  add          a5, t0, gp
                  andi         a4, s7, 1300
                  or           s8, ra, a3
                  srl          a4, s6, a1
                  xori         sp, t2, -951
                  auipc        tp, 239881
                  ori          s6, s3, -1466
                  lui          zero, 381891
                  add          ra, t6, t3
                  addi         zero, t4, -181
                  sltiu        t6, s5, 358
                  srli         zero, a7, 24
                  sll          a1, tp, t5
                  srai         zero, t5, 0
                  slt          t4, s9, a2
                  slt          a4, a5, s7
                  or           s1, a3, s8
                  andi         t1, ra, -636
                  nop
                  or           s3, s10, ra
                  srai         s0, s2, 14
                  srl          s3, a7, t4
                  and          gp, a7, s5
                  xori         a7, sp, 2040
                  srl          s0, t5, s9
                  auipc        t1, 786543
                  xori         s2, t3, 646
                  add          t4, zero, s1
                  andi         s2, t3, -1413
                  sll          ra, t0, a0
                  slli         s9, tp, 1
                  and          t0, s10, a7
                  slti         s3, sp, 494
                  sll          s4, a4, a6
                  nop
                  andi         s7, s7, 1642
                  slt          s7, s4, t3
                  srai         a0, zero, 8
                  lui          tp, 874018
                  ori          s8, s2, -458
                  srli         t5, a7, 10
                  slli         tp, t6, 31
                  xor          s9, a3, s11
                  sll          gp, s9, t6
                  sub          a7, t4, t4
                  sltu         gp, t4, a0
                  slti         t0, t1, 1874
                  slti         t5, s9, 561
                  andi         s8, a2, -1224
                  or           a7, a1, a3
                  nop
                  and          s5, s10, s3
                  sltiu        s4, tp, -573
                  slt          a1, s8, t2
                  auipc        a1, 313547
                  auipc        s1, 435995
                  slti         a7, s6, 685
                  sub          s7, a2, a7
                  slti         s0, s4, -783
                  and          s1, s2, gp
                  sltiu        t3, s10, -854
                  srai         s6, t0, 29
                  lui          a7, 133292
                  nop
                  srl          s6, s5, a6
                  slt          gp, t4, a4
                  xori         sp, s6, -792
                  ori          s0, s1, 984
                  ori          t5, zero, 1124
                  and          ra, a2, t3
                  auipc        a7, 117197
                  sll          tp, t6, t6
                  sra          s0, a0, a4
                  add          s9, t2, a4
                  and          t4, s4, s3
                  sltiu        a7, s7, -209
                  sub          gp, s3, s9
                  xori         s2, gp, 1002
                  sra          zero, sp, s0
                  srai         a7, a0, 12
                  addi         t6, s3, -1244
                  xor          a1, s3, a7
                  sltu         t1, a6, s11
                  slt          gp, gp, a4
                  srli         a5, s2, 15
                  xor          zero, a1, s5
                  sll          t0, a7, a2
                  nop
                  xori         t6, a7, -1253
                  sltiu        a0, s9, 175
                  sltu         a2, t3, t1
                  andi         sp, a5, 1425
                  slli         t3, t2, 23
                  srai         a7, tp, 21
                  sltu         s1, a4, s5
                  sll          s3, s6, s3
                  or           a0, s0, s1
                  and          t3, a5, a3
                  xor          a1, s7, a2
                  xor          t3, s5, s6
                  ori          ra, ra, -1340
                  sll          s9, t4, t0
                  xor          s4, a3, ra
                  xor          ra, s9, tp
                  andi         t4, t4, 1177
                  sub          a1, t5, s7
                  sra          t5, s8, s4
                  sltiu        s0, s3, 974
                  sra          t5, sp, s1
                  srl          s8, sp, s3
                  andi         s5, s4, -1056
                  srai         tp, s11, 25
                  ori          s8, t1, 873
                  auipc        t4, 21800
                  add          a7, s10, a0
                  auipc        a0, 1011402
                  srai         s1, t3, 27
                  add          a1, a5, t3
                  add          s9, s2, a6
                  lui          a1, 634606
                  or           a1, t4, s1
                  xor          a5, a0, a2
                  add          s4, s8, t2
                  srli         a2, a2, 16
                  or           a4, a6, s11
                  add          s8, a5, s7
                  and          a5, a7, s8
                  ori          s9, s6, -732
                  and          t0, s9, t2
                  xori         s0, s3, 1616
                  sub          zero, a4, t5
                  and          a5, s6, ra
                  auipc        t1, 74962
                  slti         t0, t4, 1444
                  andi         a6, s3, -908
                  nop
                  slt          t6, t2, t3
                  sltiu        s4, s10, 1071
                  auipc        t3, 245806
                  addi         t5, t1, -2007
                  slti         s2, s3, -1016
                  ori          ra, sp, -1938
                  addi         t3, a1, 182
                  srai         a5, t3, 0
                  sltiu        s8, gp, 869
                  or           zero, s3, t5
                  slt          a5, t2, a2
                  add          t4, a4, zero
                  sub          t4, a0, s4
                  sra          s5, gp, s5
                  andi         t6, s4, -1583
                  sltu         a1, s3, s11
                  andi         t0, a2, -1139
                  srai         s9, s4, 20
                  lui          t4, 718022
                  sltu         s5, a0, a1
                  slti         gp, ra, 657
                  sub          a6, t4, tp
                  auipc        t4, 669399
                  srai         s5, s0, 5
                  xori         a7, ra, 486
                  xori         s5, s3, 643
                  slti         s2, s9, -1866
                  andi         s7, s11, 758
                  xori         s9, s5, 1460
                  addi         s6, ra, -1933
                  or           a1, a5, tp
                  xor          a5, a1, tp
                  lui          t0, 292072
                  add          a5, t0, a7
                  sub          a4, s8, ra
                  nop
                  sll          a5, ra, s2
                  slli         s2, s2, 26
                  sltu         s7, s3, zero
                  and          sp, s5, s6
                  addi         s2, t0, 650
                  sltu         s0, a5, t3
                  xor          a1, s6, s2
                  auipc        s4, 725219
                  slti         t5, s2, 1309
                  sll          sp, s1, s0
                  add          t5, zero, gp
                  slt          s8, tp, a6
                  ori          a2, t5, -358
                  slti         t3, s0, 814
                  sltiu        zero, a0, 450
                  or           a1, tp, s6
                  sra          sp, s5, s10
                  addi         sp, s0, -1407
                  addi         s3, s7, -154
                  addi         a1, a7, 747
                  sltu         t6, s2, t3
                  or           t1, s9, t2
                  xori         s8, tp, -543
                  sra          a3, t3, a2
                  sra          s5, t6, s5
                  and          s3, t6, t2
                  lui          s4, 964479
                  slt          s8, s0, s0
                  auipc        s3, 740365
                  auipc        a3, 132707
                  xori         s8, s8, -206
                  ori          s7, ra, 992
                  srl          s9, t5, s7
                  sub          a1, s2, a6
                  slti         s8, a6, 755
                  sll          t4, s6, s3
                  slti         t5, ra, -831
                  slt          s1, s6, t0
                  add          t0, a3, s5
                  nop
                  andi         s9, s2, -291
                  sra          t4, s11, a7
                  srai         a1, zero, 0
                  xor          sp, s11, t1
                  slti         s3, ra, -1986
                  nop
                  xori         a5, a3, -191
                  ori          s4, a1, 1777
                  and          s7, s3, t6
                  slli         s8, t0, 15
                  addi         tp, s2, 1135
                  xor          s6, t5, tp
                  sltu         t3, t5, s4
                  slli         s5, s7, 13
                  addi         a4, a2, -878
                  xori         t0, s1, -892
                  srl          t4, a6, s3
                  and          t3, a3, t3
                  sra          a6, a4, t5
                  and          s0, s1, s7
                  sll          ra, ra, s2
                  sra          s7, s5, tp
                  lui          ra, 598790
                  xor          t6, zero, a5
                  sra          s1, s11, tp
                  xor          t0, s8, s4
                  srl          ra, t0, a5
                  add          s2, t4, s6
                  addi         t6, t4, 917
                  nop
                  sub          gp, s6, ra
                  xor          s1, zero, t2
                  xor          a3, s4, s4
                  addi         gp, a6, 1258
                  auipc        a1, 987794
                  and          t0, zero, a6
                  andi         s2, a7, -651
                  slti         a4, a6, 1726
                  xor          a0, s3, t2
                  sub          t4, s8, s0
                  sll          zero, a1, s7
                  xori         s3, t0, -991
                  add          a0, a1, t1
                  sub          t3, s3, s7
                  addi         a0, ra, -1930
                  sub          a7, a3, t1
                  sra          s3, s6, a1
                  sub          t5, t4, t2
                  sltu         t5, s4, zero
                  lui          s5, 686052
                  nop
                  xori         t5, a4, -1769
                  ori          a7, s7, -2027
                  slli         a4, a7, 14
                  add          a7, a4, s2
                  addi         s7, sp, -902
                  ori          s7, s0, 127
                  andi         s3, s8, -503
                  lui          sp, 966924
                  nop
                  sra          s9, tp, s5
                  slli         t3, s6, 31
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           t0, 0x80000000
                  li           a6, 0x80000000
                  li           s3, 0xffffffff
                  li           sp, 0x0
                  li           s7, 0x80000000
                  li           s9, 0x0
                  li           t4, 0x0
                  li           a5, 0xffffffff
                  li           tp, 0xffffffff
                  auipc        a5, 188127
                  add          a0, sp, a0
                  auipc        s7, 468891
                  lui          t0, 859314
                  add          a5, tp, s7
                  lui          sp, 777670
                  lui          t0, 288281
                  lui          s7, 402792
                  nop
                  auipc        s7, 757445
                  add          s9, s7, a6
                  sub          s7, sp, a0
                  add          s9, sp, sp
                  nop
                  lui          tp, 574302
                  sub          s7, a5, t0 #end riscv_int_numeric_corner_stream_9
                  sltiu        s9, t4, -85
                  srli         a1, s4, 15
                  nop
                  slt          s0, a1, a1
                  sra          t5, t0, s7
                  slti         t3, s0, -1511
                  xori         a7, s2, -1312
                  sltu         ra, s11, ra
                  and          a6, a2, s4
                  sltiu        s1, a4, 278
                  sub          s2, a3, tp
                  slli         a2, ra, 15
                  sra          sp, t5, s6
                  auipc        s6, 677284
                  sltiu        a7, s9, -721
                  sll          s8, ra, t1
                  andi         s4, t1, -896
                  and          ra, a7, sp
                  xor          s6, t6, a7
                  add          s7, s1, s3
                  sltiu        sp, a4, -1570
                  sltiu        t6, t0, -353
                  and          s0, gp, s7
                  sra          t6, s3, a5
                  ori          s2, s9, 1343
                  sll          s4, s7, sp
                  xori         s4, a3, 713
                  srli         a5, a2, 29
                  xor          tp, t5, a4
                  sll          a3, s4, s10
                  andi         s1, s6, -944
                  auipc        a2, 51180
                  srai         a3, s5, 30
                  xor          s4, sp, a4
                  srli         t4, gp, 7
                  slti         t1, t6, 1960
                  lui          s3, 17684
                  ori          a4, tp, 1410
                  ori          s0, t3, -14
                  srli         s3, s10, 0
                  sra          a0, t2, s0
                  sltiu        t3, s7, 1012
                  slt          a0, s11, s7
                  srai         a5, s9, 23
                  sra          t3, s9, t3
                  nop
                  slli         a4, s10, 4
                  srai         s8, t1, 5
                  xori         s6, s3, -1982
                  andi         a1, t5, -1101
                  sll          a2, t1, a7
                  slt          a0, sp, t3
                  la x26, test_done
                  jalr x0, x26, 0
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x7, x27, zero
                  csrr x5, 0x300 # MSTATUS
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 31
                  bne x5, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x5, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x5, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x5, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x5, x14, ecall_handler
                  li x14, 0x1
                  beq x5, x14, instr_fault_handler
                  li x14, 0x5
                  beq x5, x14, load_fault_handler
                  li x14, 0x7
                  beq x5, x14, store_fault_handler
                  li x14, 0xc
                  beq x5, x14, pt_fault_handler
                  li x14, 0xd
                  beq x5, x14, pt_fault_handler
                  li x14, 0xf
                  beq x5, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

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
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x27, x7, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x7, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x7, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x27, x7, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x27, x7, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x27, x7, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
