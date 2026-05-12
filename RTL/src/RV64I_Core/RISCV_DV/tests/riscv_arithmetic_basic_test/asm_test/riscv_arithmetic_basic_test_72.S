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
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 1
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0xf8e5035a
                  li x1, 0x8
                  li x2, 0xf6a941ed
                  li x3, 0x80000000
                  li x5, 0xa6b72a75
                  li x6, 0xf8c04439
                  li x7, 0x44d3e335
                  li x8, 0x80000000
                  li x9, 0xf525bd6d
                  li x10, 0xd
                  li x11, 0x0
                  li x12, 0x1
                  li x14, 0x80000000
                  li x15, 0xbd7eabb
                  li x16, 0x4
                  li x17, 0x0
                  li x18, 0xe27074f0
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0x7
                  li x22, 0x41693c6
                  li x23, 0xfb69979f
                  li x24, 0xfc754148
                  li x25, 0x0
                  li x26, 0x80000000
                  li x27, 0xfa43d17f
                  li x28, 0xc
                  li x29, 0x62309497
                  li x30, 0x80000000
                  li x31, 0x0
                  la x4, user_stack_end
main:             li           s9, 0x4bf9f652 #start riscv_int_numeric_corner_stream_17
                  li           a7, 0x0
                  li           sp, 0x80000000
                  li           a5, 0x0
                  li           s1, 0xffffffff
                  li           t2, 0x80000000
                  li           t4, 0x0
                  li           s0, 0x0
                  li           t1, 0x3d8f2379
                  li           s7, 0xffffffff
                  auipc        t1, 423748
                  lui          s0, 593034
                  sub          t4, a7, s9
                  sub          s7, s0, s1
                  add          sp, t4, s7
                  addi         t1, a5, 1803
                  lui          t2, 460957
                  add          s7, sp, s7
                  nop
                  sub          t1, s0, s9
                  lui          s7, 615884
                  nop
                  add          t1, a5, t1
                  sub          s7, s0, t1
                  addi         t1, s7, -261
                  auipc        t1, 797033
                  sub          s1, s0, s7 #end riscv_int_numeric_corner_stream_17
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           s11, 0xffffffff
                  li           a7, 0xdd89dff5
                  li           s10, 0x80000000
                  li           s2, 0x142a7efa
                  li           s4, 0xffffffff
                  li           a6, 0x80000000
                  li           a4, 0x0
                  li           s6, 0x80000000
                  li           t1, 0x80000000
                  add          s11, s7, s4
                  sub          a7, s10, a4
                  nop
                  add          s11, s2, s6
                  auipc        t1, 545257
                  lui          s10, 211374
                  lui          s4, 666551
                  lui          s4, 838666
                  nop
                  nop
                  addi         s2, s4, -122
                  lui          s4, 1003178
                  add          s4, s11, s2
                  auipc        a4, 351152
                  sub          a7, s7, s2
                  sub          s2, s6, s7
                  addi         s6, s4, -603
                  add          s6, s11, a6 #end riscv_int_numeric_corner_stream_1
                  li           t5, 0xd9ae1eb7 #start riscv_int_numeric_corner_stream_6
                  li           t1, 0x80000000
                  li           s5, 0x80000000
                  li           t2, 0x80000000
                  li           a4, 0xf9920916
                  li           a5, 0xffffffff
                  li           s7, 0x80000000
                  li           s3, 0xffffffff
                  li           t4, 0x0
                  li           t6, 0xffffffff
                  auipc        t6, 798587
                  auipc        t2, 223724
                  auipc        s7, 712019
                  lui          a4, 773332
                  sub          s3, t6, t2
                  sub          t4, t1, t2
                  addi         t2, a4, -543
                  sub          a5, t2, t4
                  addi         t4, t1, 768
                  auipc        t4, 1047016
                  lui          t4, 520962
                  lui          a4, 126363
                  add          s5, s7, a4
                  sub          s7, s7, t4
                  add          t2, s5, s7
                  sub          a4, a4, t5
                  add          t4, s7, s7
                  auipc        t4, 730755
                  addi         s3, t4, 640
                  nop #end riscv_int_numeric_corner_stream_6
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           s1, 0xffffffff
                  li           s4, 0x80000000
                  li           t1, 0x0
                  li           t5, 0xffffffff
                  li           a1, 0xffffffff
                  li           t6, 0xdfa2763
                  li           s10, 0x0
                  li           a4, 0xc3d46b2d
                  li           t0, 0xffffffff
                  addi         t0, t5, -951
                  addi         s4, s10, 679
                  add          t5, a1, s2
                  lui          a4, 575856
                  sub          a4, s2, s4
                  auipc        a1, 972937
                  nop
                  nop
                  sub          t6, s2, t5
                  sub          a1, s2, a1
                  auipc        s2, 431349
                  add          t1, s10, t0
                  nop
                  auipc        t0, 355341
                  nop
                  add          s4, t6, t5
                  add          a4, s4, t5
                  lui          t6, 839453
                  auipc        t0, 350965
                  addi         t0, s2, -1515
                  addi         s1, a4, 1884
                  add          t1, s10, a4
                  auipc        s1, 662819
                  sub          t6, s10, t6
                  nop
                  auipc        s2, 414554
                  addi         t1, t1, -274
                  sub          t0, s10, s4
                  addi         a4, t0, 224
                  sub          a1, t6, s4 #end riscv_int_numeric_corner_stream_9
                  li           gp, 0xfe23bf37 #start riscv_int_numeric_corner_stream_19
                  li           s6, 0x80000000
                  li           a6, 0x0
                  li           t3, 0x0
                  li           s11, 0xffffffff
                  li           t2, 0x26c734d5
                  li           a5, 0x8197e0e6
                  li           a4, 0xe44a06d2
                  li           t5, 0x0
                  li           s7, 0xffffffff
                  addi         gp, gp, 1337
                  addi         a6, s11, -424
                  auipc        s7, 690160
                  addi         s11, a6, -56
                  addi         a4, gp, 1166
                  add          t2, a6, t2
                  addi         t2, s7, -993
                  auipc        gp, 237961
                  sub          s6, t3, t2
                  sub          a6, gp, s7
                  nop
                  sub          a6, s6, t2
                  add          t5, t5, t3
                  addi         gp, gp, 1440
                  add          gp, s7, t3 #end riscv_int_numeric_corner_stream_19
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s7, 0x80000000
                  li           t4, 0xd2e364ef
                  li           a2, 0x9ef8e78c
                  li           s4, 0xffffffff
                  li           gp, 0x6f255da
                  li           s0, 0x80000000
                  li           s9, 0x0
                  li           t2, 0x80000000
                  li           s3, 0x80000000
                  auipc        a2, 568394
                  add          a1, gp, t2
                  add          t4, s7, s3
                  auipc        s3, 1019530
                  sub          a2, s7, a1
                  nop
                  auipc        a1, 614075
                  auipc        t4, 335888
                  add          t4, a2, s9
                  auipc        gp, 325528
                  lui          t4, 865601
                  nop
                  nop
                  nop
                  lui          s0, 596274
                  lui          a1, 316104
                  nop #end riscv_int_numeric_corner_stream_18
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s10, 0x0
                  li           a5, 0x80000000
                  li           ra, 0x80000000
                  li           s4, 0x80000000
                  li           a6, 0x80000000
                  li           a2, 0xffffffff
                  li           a1, 0xffffffff
                  li           gp, 0xb11f85a8
                  li           t6, 0xffffffff
                  nop
                  nop
                  nop
                  auipc        a4, 272466
                  sub          a2, s4, ra
                  addi         a6, gp, -1643
                  auipc        t6, 687529
                  add          t6, a5, gp
                  nop
                  sub          a6, s4, a6
                  nop
                  nop
                  addi         a4, a6, -232
                  sub          a5, a5, a5
                  auipc        a1, 515732
                  auipc        a5, 924314
                  add          a5, a4, a1 #end riscv_int_numeric_corner_stream_7
                  li           a1, 0x498a752a #start riscv_int_numeric_corner_stream_8
                  li           s10, 0xed397f52
                  li           s3, 0xffffffff
                  li           gp, 0x0
                  li           s1, 0x0
                  li           s9, 0x0
                  li           a7, 0x80000000
                  li           t4, 0xffffffff
                  li           s4, 0x0
                  li           s0, 0xffffffff
                  lui          s1, 759723
                  nop
                  add          s4, s4, s9
                  nop
                  auipc        gp, 766559
                  auipc        s4, 475628
                  sub          s10, t4, s0
                  add          a1, s1, s9
                  lui          s3, 600527
                  sub          s4, s0, s4
                  addi         gp, a1, -781
                  sub          gp, s10, s0
                  lui          a1, 708966
                  add          a7, s1, a1
                  lui          s3, 924083
                  auipc        gp, 139909 #end riscv_int_numeric_corner_stream_8
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           s7, 0x80000000
                  li           s8, 0x0
                  li           s0, 0xffffffff
                  li           sp, 0x80000000
                  li           t6, 0xffffffff
                  li           t0, 0x80000000
                  li           s4, 0xffffffff
                  li           s2, 0xd04de58a
                  li           a2, 0x0
                  sub          t0, s7, t6
                  auipc        s4, 997537
                  sub          s8, t0, sp
                  nop
                  add          t6, t6, t6
                  nop
                  nop
                  addi         s7, t0, 875
                  lui          t4, 637997
                  lui          t6, 128899
                  nop
                  addi         s4, a2, 1190
                  lui          s0, 1010943
                  auipc        s0, 1006376
                  nop
                  lui          s7, 258626
                  lui          s0, 1011604
                  auipc        t0, 593639 #end riscv_int_numeric_corner_stream_0
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s1, 0x80000000
                  li           s4, 0x0
                  li           s2, 0x80000000
                  li           t0, 0xf6d0dd7
                  li           a4, 0xffffffff
                  li           a1, 0xc618dda1
                  li           sp, 0xffffffff
                  li           s5, 0x80000000
                  li           s9, 0x80000000
                  addi         s2, a5, 1021
                  lui          a4, 53493
                  sub          a5, s9, s4
                  sub          a4, a1, s9
                  add          s4, a1, s9
                  nop
                  auipc        s5, 396439
                  lui          t0, 352896
                  add          t0, t0, s2
                  auipc        sp, 683827
                  addi         t0, a4, -1997
                  nop
                  addi         s5, s1, 1291
                  lui          sp, 886573
                  sub          sp, s2, sp
                  addi         t0, s1, 1808
                  auipc        s1, 225431
                  auipc        a1, 226212
                  addi         a5, a5, -780
                  add          a4, a4, a5
                  nop
                  sub          t0, a1, s1
                  auipc        a1, 705595
                  auipc        s9, 812588
                  sub          a1, t0, s5
                  nop
                  lui          s9, 963238
                  add          s1, t0, s9 #end riscv_int_numeric_corner_stream_11
                  lui          t0, 351888
                  xori         a4, a3, -1447
                  ori          t3, s6, 860
                  sll          t6, s4, tp
                  ori          s3, s8, 58
                  add          a2, ra, zero
                  xori         t1, sp, 1919
                  slli         s11, tp, 25
                  and          t6, t4, ra
                  srli         s2, a1, 3
                  slti         sp, t4, -1867
                  xori         t5, s7, -926
                  nop
                  xor          s3, s4, a5
                  srai         s6, t3, 11
                  srli         t4, s2, 31
                  slli         s10, s2, 29
                  or           s6, a4, t6
                  ori          t1, ra, 1527
                  auipc        s0, 396526
                  and          t4, s7, a1
                  addi         t6, a5, -1262
                  xor          t2, t0, a7
                  andi         t3, t1, -1719
                  srli         s11, a7, 20
                  auipc        s11, 902337
                  add          t5, s2, gp
                  add          a7, s9, sp
                  ori          a5, a2, 1251
                  xori         a2, s4, -614
                  andi         s0, t3, -1150
                  auipc        s9, 973383
                  sub          a1, a5, t3
                  srli         s10, s0, 7
                  xori         t5, s0, 508
                  sra          a6, t1, s5
                  slt          s4, s6, a3
                  andi         s0, s6, 871
                  andi         t6, s7, 689
                  ori          s0, s6, 506
                  srai         s1, sp, 13
                  srai         a7, s7, 20
                  ori          a5, t2, 1737
                  nop
                  sub          s1, a4, s10
                  and          zero, tp, a6
                  nop
                  srli         s4, s4, 16
                  sltiu        a2, a1, 2005
                  sra          a7, gp, a4
                  auipc        a1, 309307
                  or           s11, s2, a5
                  add          s11, s2, s8
                  ori          s0, t6, 1078
                  xor          t6, a2, sp
                  slli         ra, sp, 15
                  auipc        a5, 752075
                  slt          t1, a0, t0
                  srai         a4, ra, 28
                  or           s2, tp, s5
                  nop
                  lui          a1, 122959
                  xor          s6, s6, s4
                  sub          s9, tp, tp
                  srl          a6, t5, s9
                  ori          s2, s8, 1622
                  auipc        sp, 994424
                  sltu         s7, s8, a1
                  xor          s10, s0, s2
                  slt          t4, a5, s11
                  addi         s0, t2, -387
                  sltiu        t1, a7, -18
                  srl          s8, a7, s7
                  xor          s7, s2, s11
                  sll          a2, a2, t0
                  auipc        a6, 447574
                  sra          a2, t1, a4
                  srli         t3, s4, 15
                  sltiu        s4, a1, 1376
                  xori         a6, a0, 369
                  or           a1, a0, t0
                  nop
                  lui          t6, 500126
                  srli         a1, t6, 24
                  sub          sp, s11, a5
                  sra          ra, t1, t6
                  add          a5, a7, sp
                  sltiu        s8, a0, 779
                  nop
                  auipc        t4, 49702
                  sltiu        a7, ra, 1647
                  or           s5, s9, a5
                  nop
                  andi         sp, a1, 1977
                  add          a4, s0, t3
                  xor          a1, t6, t2
                  sltiu        t3, t1, 1672
                  sltu         s11, a5, s2
                  ori          s2, s1, 552
                  and          s4, s9, t1
                  xor          t1, zero, s4
                  srai         s1, gp, 24
                  auipc        s6, 955043
                  srli         a7, s7, 18
                  srai         sp, t5, 23
                  sltu         a4, t0, s10
                  and          a1, s0, a0
                  and          s2, t6, s5
                  srl          sp, s8, s5
                  sll          t4, a1, tp
                  slti         s11, t4, 915
                  sub          s9, ra, s2
                  add          t6, t4, t5
                  sra          t0, t4, a6
                  sltiu        a1, s3, 1834
                  srai         s3, s0, 5
                  auipc        t6, 714896
                  add          s4, a7, a6
                  ori          sp, s11, -142
                  andi         s2, t5, -889
                  xori         t3, tp, 1812
                  auipc        sp, 959784
                  sub          t2, s8, s2
                  andi         a2, t0, 1763
                  sra          t3, a6, tp
                  add          s4, zero, t6
                  srai         t4, s2, 16
                  srai         t3, t0, 4
                  sub          a2, a3, s1
                  sub          a4, s6, ra
                  auipc        gp, 675685
                  andi         s6, t5, 888
                  add          t4, t3, t5
                  and          s4, t3, s10
                  slti         s6, sp, -1548
                  sll          s5, s9, s6
                  lui          s7, 290298
                  slt          s9, zero, a5
                  xor          s10, sp, sp
                  auipc        s11, 461364
                  add          t5, s0, a7
                  srli         s10, a3, 25
                  addi         a6, s8, 862
                  nop
                  sll          sp, s5, zero
                  andi         t1, gp, -1882
                  sll          a4, zero, s2
                  srl          a7, gp, s9
                  auipc        t6, 928900
                  sub          t5, tp, s5
                  srli         gp, s2, 28
                  add          s8, s6, a3
                  slt          t3, a0, a6
                  ori          s2, s3, 286
                  srl          a7, a5, a3
                  slli         s7, s7, 17
                  sra          s9, s6, a1
                  auipc        s8, 4643
                  srai         s1, a1, 21
                  and          s1, a4, t3
                  sra          t1, a2, a3
                  slti         a4, a4, -660
                  sltu         t1, s0, t5
                  or           s7, a3, t2
                  xor          gp, ra, s3
                  ori          ra, s8, 133
                  sll          zero, s7, a3
                  andi         t3, s11, 52
                  ori          s0, a0, 1004
                  srli         s7, t1, 30
                  sltiu        t0, t1, -1460
                  sra          ra, sp, s7
                  addi         t5, gp, -512
                  lui          s11, 176375
                  slti         s2, s5, -155
                  andi         t4, sp, -1823
                  sltiu        a6, gp, -724
                  or           s0, a6, s8
                  slli         a5, s3, 23
                  sltiu        t4, s1, 1523
                  sub          s4, sp, s6
                  or           s6, t4, a5
                  sra          a6, t2, t5
                  srai         s4, a4, 6
                  add          t3, s6, s1
                  sll          s8, s11, s8
                  srli         sp, a4, 6
                  addi         s3, t5, 1961
                  lui          zero, 396569
                  slli         a1, t2, 14
                  xor          s3, a7, ra
                  add          t6, a4, t5
                  srli         a2, s8, 5
                  sra          s11, a3, s3
                  auipc        s5, 625824
                  and          s10, zero, s0
                  srli         s11, a4, 8
                  sll          zero, t4, t3
                  slt          t0, a0, s4
                  add          t6, s5, s8
                  or           a4, t1, s5
                  xor          s10, s9, s7
                  xor          t3, s5, a7
                  sra          t5, s11, t1
                  nop
                  sll          s7, t3, s11
                  slt          t6, t0, a7
                  nop
                  lui          sp, 863841
                  slli         s9, a4, 4
                  slt          t5, t2, gp
                  auipc        a7, 887166
                  ori          ra, zero, -657
                  or           s6, a0, a1
                  auipc        s9, 990750
                  addi         t0, ra, -924
                  sra          s6, a1, a5
                  addi         t6, t4, -1766
                  nop
                  addi         t3, a6, -549
                  ori          s5, t5, 638
                  slt          s5, t6, s11
                  sub          zero, s1, t5
                  sra          t0, t1, s4
                  auipc        t1, 702642
                  xor          t3, s10, a1
                  slt          t3, t2, s9
                  add          s11, s0, a2
                  or           ra, t1, sp
                  srli         s0, s9, 26
                  srli         sp, s7, 3
                  sll          sp, tp, s5
                  andi         s5, a1, -1947
                  sltiu        s7, a4, 1163
                  andi         zero, a1, 1512
                  and          t5, s8, s4
                  srai         s4, s3, 0
                  srai         a5, zero, 3
                  add          a6, s6, t4
                  srl          a7, sp, a4
                  srai         t0, gp, 5
                  slti         ra, s2, 1189
                  lui          t5, 1010133
                  add          t2, t0, a3
                  sltu         gp, s5, tp
                  ori          a2, s4, 1371
                  ori          zero, s3, -1062
                  auipc        s0, 602635
                  srai         s5, a2, 27
                  or           s6, s11, t1
                  slli         zero, gp, 3
                  ori          t3, a4, -1924
                  sltu         t1, s10, s4
                  andi         t6, a1, 561
                  slt          t4, s2, s3
                  sub          sp, t2, t0
                  xor          a5, s11, a6
                  slli         sp, t3, 20
                  sltu         t0, s2, tp
                  xor          t3, t1, a0
                  or           t0, a6, s2
                  slt          gp, s8, sp
                  andi         a1, t0, -1624
                  slti         s9, t0, -375
                  srl          ra, a7, t2
                  sltiu        t5, t5, 2036
                  sub          a1, t1, t4
                  srl          t6, s7, sp
                  sltiu        a6, s1, 731
                  lui          t5, 153598
                  auipc        s11, 42074
                  or           s11, t4, a3
                  xori         a6, a2, 426
                  or           s1, s9, a0
                  and          t1, t1, s3
                  or           t0, s6, a5
                  srai         a2, s10, 31
                  sub          sp, s8, t1
                  xor          s5, t2, a2
                  slt          s0, s7, s10
                  sub          t4, a7, s1
                  add          a6, a3, t1
                  nop
                  sra          t5, s0, s9
                  srli         s10, t1, 12
                  srl          t1, t5, a2
                  xor          a1, a5, a4
                  slli         sp, gp, 13
                  addi         t6, a1, -1643
                  sub          s2, zero, s10
                  slli         t3, s6, 4
                  lui          s4, 702291
                  auipc        ra, 702423
                  sll          s6, ra, t6
                  sra          s0, gp, a4
                  sll          a6, zero, a2
                  sltu         s8, a7, zero
                  auipc        gp, 794359
                  slli         s1, s9, 21
                  andi         s7, s5, -1301
                  add          a5, t2, a6
                  sub          s9, gp, s5
                  ori          t4, s7, 744
                  andi         t4, t6, 1557
                  sub          gp, t5, a7
                  sltu         a5, a3, s3
                  slti         t6, s10, 1745
                  srli         s7, gp, 29
                  auipc        s5, 801401
                  slt          s10, a5, a2
                  sltu         t6, t1, a6
                  or           t5, a5, s5
                  add          s0, s0, t0
                  andi         s1, t5, -150
                  slt          s8, a6, s5
                  sra          a1, tp, t6
                  xori         t1, s5, -1710
                  slti         t2, a0, 709
                  srai         a2, a3, 0
                  xori         s7, sp, -1883
                  srai         t0, s8, 1
                  srli         s2, t5, 25
                  add          zero, s11, a4
                  xor          s3, a4, s6
                  auipc        ra, 820091
                  srli         ra, s0, 23
                  srli         s10, s5, 17
                  srli         a6, s8, 9
                  xor          gp, zero, a7
                  xori         s11, a5, -1072
                  srl          a6, s0, t2
                  ori          a5, t4, 725
                  sltiu        a4, s7, -1294
                  nop
                  slti         a2, t5, -1343
                  auipc        s9, 44366
                  srai         sp, t2, 20
                  slli         a7, s3, 15
                  lui          t1, 826478
                  srl          a4, a3, a3
                  srl          s5, a7, t2
                  andi         s2, a3, 1076
                  sltiu        ra, t0, -96
                  slt          sp, a7, t5
                  sub          t0, tp, s8
                  or           t2, s6, s0
                  add          s4, t5, t6
                  sll          t4, tp, t4
                  srl          t4, t2, t6
                  srai         t0, sp, 12
                  ori          s7, a6, -424
                  srli         s7, sp, 29
                  srai         t1, s10, 13
                  andi         t5, s3, 185
                  sra          t2, s1, s5
                  sra          ra, a1, s1
                  slti         s2, s7, 1598
                  auipc        s5, 634023
                  srl          s7, s0, a3
                  nop
                  xor          a7, t3, a4
                  andi         gp, s11, 1200
                  slt          s4, t6, t6
                  auipc        s1, 804529
                  andi         a6, s4, -351
                  sub          s1, a4, s8
                  addi         t0, t2, -284
                  addi         s6, a7, 760
                  xor          t3, s6, a4
                  sub          a2, s10, s6
                  xor          a6, t3, s8
                  srl          s7, a6, tp
                  nop
                  andi         t2, s5, 1618
                  auipc        t4, 752382
                  slli         sp, s7, 9
                  sll          a1, t1, gp
                  sra          t0, s10, tp
                  sub          s2, a5, t2
                  srli         a5, s9, 4
                  sra          s4, s6, s10
                  nop
                  lui          t0, 859928
                  sll          a1, s9, s6
                  slti         a4, s7, -119
                  or           a1, s11, t2
                  or           s4, gp, s3
                  slti         s4, ra, 1647
                  lui          s7, 901326
                  srl          t4, a5, a7
                  add          s8, t5, a4
                  addi         a7, s8, -1148
                  addi         a1, sp, 15
                  sra          t3, ra, a1
                  andi         t1, zero, -7
                  lui          s6, 964234
                  sltu         a7, s1, s7
                  xori         s4, s4, 1379
                  nop
                  sub          t6, s10, s0
                  andi         a4, s8, -780
                  slli         s8, gp, 8
                  sra          t4, s9, s3
                  xori         s8, a7, -347
                  srai         t1, a0, 2
                  addi         s3, zero, 1551
                  sltu         a6, s3, a2
                  or           s2, s2, zero
                  sll          a7, s8, a4
                  slti         a4, s1, -891
                  addi         a5, t0, -1787
                  auipc        t4, 395311
                  srai         s6, a3, 31
                  add          t6, a0, t4
                  andi         s10, t4, 1127
                  srli         a4, s11, 27
                  auipc        t4, 868743
                  or           s7, s9, s0
                  sltu         s9, s11, s1
                  srai         s9, s1, 17
                  sll          t5, t1, gp
                  sub          sp, zero, t5
                  addi         s1, t4, -613
                  andi         s5, a4, -1406
                  slt          s1, s10, t0
                  nop
                  addi         t2, s10, 929
                  srl          s4, s5, s6
                  xori         s11, t6, 1947
                  srli         s11, a1, 18
                  andi         t3, s0, 227
                  xor          s4, a1, a7
                  xor          s3, s1, t2
                  andi         s3, s8, 1986
                  lui          sp, 305067
                  ori          s11, s0, -1389
                  nop
                  sltu         ra, t4, a2
                  sub          s5, a4, t4
                  xori         s6, s11, -2020
                  sltu         s7, zero, t0
                  sll          t6, gp, s0
                  sltu         t4, s10, s10
                  nop
                  srli         s10, s0, 24
                  sll          sp, s6, s8
                  srl          t6, a7, a5
                  lui          t0, 1019234
                  lui          zero, 6800
                  add          gp, a0, t5
                  sub          s4, s0, s5
                  or           s3, a0, t4
                  sub          zero, a5, a5
                  sll          a5, s5, a1
                  slti         s9, zero, 784
                  sra          t4, s11, tp
                  sll          sp, s11, a6
                  srl          a1, t5, a2
                  sltiu        t6, gp, 1254
                  sub          zero, tp, s9
                  slt          ra, s0, s2
                  slt          t2, zero, a4
                  slt          s7, a4, zero
                  sub          s1, s3, t3
                  srl          a2, ra, s6
                  auipc        t2, 1030671
                  nop
                  sll          a1, s3, t0
                  xori         s6, s10, 339
                  lui          t4, 78881
                  srai         a4, a7, 26
                  xor          s3, t0, s7
                  addi         s8, s9, 1409
                  sltiu        s3, s5, -628
                  lui          s0, 827053
                  srai         s3, a5, 27
                  sra          t3, t5, t5
                  nop
                  and          s5, a3, a6
                  sltiu        a5, a0, 1593
                  add          a6, a0, t3
                  sltiu        s11, s7, -1134
                  slt          t3, sp, zero
                  srai         t1, gp, 16
                  sll          a7, s9, t0
                  srli         t3, a1, 2
                  or           s4, s7, a1
                  xori         a4, s7, -46
                  srl          s9, s3, gp
                  sltu         s8, a5, s2
                  ori          s9, a6, 605
                  or           t4, a7, t5
                  nop
                  xori         s7, a5, -939
                  srl          a7, s0, a3
                  add          s1, s10, t2
                  auipc        t5, 702974
                  xori         t0, s0, -1822
                  slti         s11, t5, 1784
                  andi         s10, tp, -490
                  sub          t5, t0, sp
                  sub          sp, a1, a6
                  sll          s9, s4, ra
                  sltu         s0, s7, t4
                  slli         s2, tp, 26
                  nop
                  sub          t4, s10, t6
                  slt          s7, gp, gp
                  sltu         s7, s10, a4
                  sra          ra, s7, ra
                  lui          ra, 271921
                  and          sp, t4, zero
                  slt          s4, ra, t1
                  srai         s2, a7, 27
                  auipc        ra, 324398
                  sll          s1, s4, tp
                  srai         zero, s5, 24
                  andi         s8, t2, 1299
                  sltiu        t6, zero, -979
                  srl          s0, a5, s1
                  andi         t6, ra, -515
                  xor          a4, t4, t1
                  sltu         s10, gp, s4
                  sra          t3, gp, s1
                  srli         s2, s4, 7
                  ori          s11, s9, 30
                  sltiu        s11, t5, 1422
                  slt          s0, s1, gp
                  sltiu        t1, s6, -88
                  andi         s5, t4, 232
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           t2, 0x80000000
                  li           t4, 0x80000000
                  li           s4, 0x0
                  li           s7, 0xffffffff
                  li           ra, 0x80000000
                  li           s0, 0x80000000
                  li           s6, 0x79f22556
                  li           a4, 0xffffffff
                  li           a5, 0xffffffff
                  sub          s7, a5, t4
                  auipc        s0, 528667
                  addi         s4, t4, -95
                  lui          s7, 656948
                  auipc        t2, 673263
                  add          a5, a4, t0
                  add          t0, ra, t2
                  auipc        s7, 1018202
                  sub          ra, s7, t2
                  nop
                  nop
                  nop
                  nop
                  sub          s6, s0, s7
                  auipc        s6, 331345 #end riscv_int_numeric_corner_stream_15
                  slt          s5, t2, t3
                  and          s3, s5, t2
                  add          sp, a2, a5
                  auipc        s0, 779610
                  slti         sp, a0, 213
                  auipc        s5, 361655
                  addi         a4, s4, -1668
                  sub          s0, a2, s2
                  add          s11, s4, zero
                  andi         a1, s7, 1952
                  slt          t4, t4, t0
                  slti         s7, t1, -856
                  sub          t4, a5, a5
                  srl          a2, s9, s4
                  lui          a5, 417129
                  srl          s2, a1, t3
                  sra          t3, t1, s11
                  ori          s8, a2, -1914
                  srai         a1, a4, 14
                  srai         s10, t2, 21
                  sub          s4, s4, gp
                  srli         s0, zero, 4
                  sll          t3, sp, t0
                  nop
                  auipc        s4, 384264
                  sll          gp, t1, s4
                  srai         a1, ra, 2
                  xori         s4, t1, -783
                  slt          gp, gp, s0
                  sra          s7, s1, s10
                  slt          s11, s5, s8
                  or           s3, s9, s10
                  srl          sp, t5, a5
                  lui          ra, 883925
                  addi         s1, s2, 1492
                  andi         s10, t3, 50
                  addi         s8, a6, -1359
                  sltiu        s7, s2, -703
                  auipc        t5, 979979
                  and          ra, zero, t5
                  or           s3, t3, a7
                  or           s6, gp, ra
                  slt          zero, s9, a1
                  andi         s9, sp, -1651
                  slli         s11, a3, 3
                  xori         t0, t5, 1159
                  srli         t1, a0, 22
                  srli         a5, t4, 30
                  sub          s3, s2, s7
                  auipc        s4, 565822
                  lui          s6, 116306
                  sra          s9, s1, t6
                  slti         s1, a6, 1465
                  srli         a6, t2, 25
                  ori          t1, a1, 68
                  slti         s9, s7, 228
                  or           s9, s11, s5
                  slli         s6, t0, 16
                  sub          t1, s10, s1
                  srl          s0, a6, s2
                  lui          s10, 579289
                  sll          t6, a6, t2
                  srl          a6, tp, s10
                  auipc        a1, 393629
                  sub          s8, s9, t1
                  srli         sp, s4, 15
                  ori          t1, s8, -1622
                  sra          s3, a3, a2
                  addi         a1, sp, 959
                  or           t4, tp, a7
                  auipc        t4, 130806
                  sra          a7, a6, s0
                  slti         s10, s10, -51
                  srl          t0, s3, a2
                  andi         zero, t4, 99
                  srai         s10, t1, 20
                  sltiu        s2, s11, 568
                  srli         a1, tp, 21
                  add          s4, a1, zero
                  sra          a2, a2, t5
                  sltu         a6, s8, tp
                  srli         t2, s9, 15
                  sll          s0, a2, gp
                  srai         s3, gp, 30
                  srl          s0, s3, s7
                  srl          t6, a2, t6
                  xor          t0, a5, s9
                  or           s1, t6, a4
                  xori         t5, s7, -332
                  or           s4, ra, a1
                  sll          t5, a6, s8
                  xor          s4, s0, a1
                  add          a4, s10, t0
                  xori         t2, a1, 978
                  sub          ra, a1, s8
                  or           s4, sp, s11
                  addi         t5, s11, 74
                  srli         s7, a7, 10
                  xor          s7, a1, s1
                  nop
                  andi         s4, t4, 174
                  slt          a2, s10, a2
                  srl          gp, s3, gp
                  xori         zero, t5, -556
                  add          t2, t6, a6
                  and          s4, a7, a1
                  auipc        s5, 546291
                  nop
                  srl          s8, t6, s6
                  auipc        a7, 797548
                  sll          s5, s8, sp
                  srli         s10, s3, 13
                  xori         s5, s3, 647
                  auipc        zero, 748297
                  and          t2, gp, t1
                  slli         ra, s1, 17
                  lui          s11, 438412
                  and          t4, t0, sp
                  ori          t0, s7, -1863
                  sltu         s1, t4, t0
                  slti         t6, s11, -92
                  xor          s0, s10, a0
                  srai         s4, a3, 29
                  add          a7, s10, a3
                  andi         s6, a3, -1340
                  srl          a5, s1, s4
                  slt          gp, t3, t0
                  slli         s10, t4, 0
                  slti         a6, s10, 649
                  srli         s7, a4, 27
                  slti         a4, s9, 646
                  slti         t4, s10, 205
                  lui          gp, 602249
                  sra          a7, t5, t2
                  add          s3, s3, s2
                  srli         s2, s7, 4
                  xor          s8, s3, a7
                  add          s8, gp, t0
                  or           ra, a5, a6
                  sub          s7, t5, t6
                  slli         s9, a3, 19
                  sltiu        sp, s2, -8
                  srl          s3, t3, s7
                  srl          a4, s6, s3
                  srl          s10, t4, s7
                  sub          s6, t2, t5
                  addi         sp, s10, 1396
                  andi         s1, s2, -1065
                  and          t6, s6, a2
                  ori          a1, a1, -926
                  add          s9, t6, s10
                  sll          s4, a4, s0
                  or           a6, tp, s4
                  add          a2, s9, s7
                  slli         a2, gp, 16
                  ori          t5, s9, 389
                  slli         a7, a2, 12
                  add          t1, t1, t1
                  srai         zero, s10, 5
                  and          s6, s1, a7
                  slli         t3, a2, 7
                  sra          a7, s8, s1
                  sll          a4, t0, t3
                  slli         s1, zero, 30
                  sltiu        s11, a1, -1860
                  addi         s6, t2, -1637
                  or           s6, a5, ra
                  srai         ra, s7, 12
                  xori         a5, sp, 252
                  sra          t1, t5, a0
                  sra          s6, zero, a6
                  sra          t3, a7, a0
                  srai         a1, a1, 19
                  lui          a7, 383828
                  nop
                  add          a2, s0, a0
                  sll          s9, a1, t3
                  srai         s1, zero, 21
                  lui          t2, 850795
                  add          t4, t2, t6
                  xori         t5, s2, -987
                  srl          a6, s4, a4
                  nop
                  ori          t5, s7, 443
                  addi         s2, a7, 248
                  sra          zero, t6, s6
                  ori          s10, s0, 304
                  xor          t2, tp, s10
                  xor          t6, ra, t5
                  xori         t1, sp, 1354
                  slti         s6, s2, -1702
                  sll          zero, s9, s6
                  lui          t5, 656597
                  and          a7, s3, s0
                  srl          t2, a4, a5
                  add          t0, a4, a0
                  sra          s5, a0, a0
                  slti         gp, a2, 1992
                  slt          s8, sp, t6
                  addi         s10, s8, 796
                  slli         sp, s10, 16
                  xori         s11, s1, -575
                  sll          s0, sp, s1
                  xor          s1, t6, gp
                  srli         gp, s10, 18
                  sltu         s6, t1, s5
                  add          a1, s8, t5
                  sll          t0, s7, s3
                  or           s0, s4, s6
                  and          t0, s1, a4
                  and          t2, t4, a6
                  srai         s0, t3, 4
                  sll          t6, a5, t5
                  slti         ra, t1, -2029
                  addi         s9, a3, 1298
                  slti         s7, s7, -1035
                  andi         s2, s5, -1085
                  ori          sp, t2, 456
                  andi         s4, a1, 1788
                  ori          s11, s11, 871
                  li           s1, 0x8a9d35e0 #start riscv_int_numeric_corner_stream_2
                  li           t2, 0xffffffff
                  li           s11, 0x8fc6419b
                  li           s10, 0xffffffff
                  li           s8, 0x80000000
                  li           s3, 0xffffffff
                  li           gp, 0xea0c759
                  li           t5, 0x0
                  li           a5, 0x80000000
                  li           t4, 0xffffffff
                  addi         t2, s10, -982
                  nop
                  add          s3, t5, t4
                  add          a5, s3, t5
                  nop
                  lui          s3, 905794
                  lui          s10, 33172
                  auipc        s8, 1018284
                  add          s3, t4, t5
                  sub          s1, s8, s3
                  sub          t2, s8, s8
                  sub          t5, s8, s11
                  sub          t2, s10, s1
                  auipc        s3, 832712
                  lui          gp, 933224
                  addi         s10, s10, -1295
                  addi         gp, s3, 712
                  nop
                  nop
                  add          t5, t2, a5
                  auipc        s3, 25176
                  addi         s11, s8, 1152
                  nop
                  auipc        t2, 709325
                  addi         a5, t2, -989
                  add          s11, s1, t5
                  sub          gp, s10, s10
                  addi         s1, s3, -929 #end riscv_int_numeric_corner_stream_2
                  or           s7, t5, a5
                  xor          s6, gp, zero
                  auipc        s2, 520510
                  lui          s1, 306384
                  lui          s5, 740958
                  auipc        ra, 756342
                  andi         t0, s6, 1892
                  slli         s7, zero, 28
                  add          sp, a0, t0
                  srai         a4, a2, 1
                  srl          s9, s1, t4
                  sltu         s2, t6, ra
                  sub          t1, a7, s6
                  xori         s4, zero, 831
                  and          t0, gp, t3
                  srl          ra, s3, s9
                  xor          s1, t6, s0
                  slli         s7, s11, 27
                  addi         a6, tp, -176
                  slt          t3, s11, s6
                  xori         s10, tp, -552
                  or           s4, t4, t5
                  lui          s11, 843501
                  sra          s10, s7, s11
                  sltu         s2, s4, s11
                  sll          sp, t2, gp
                  xor          t1, s1, zero
                  sub          s7, s1, a5
                  xori         gp, t1, 1965
                  auipc        s6, 1031314
                  or           s2, s2, t0
                  xori         t0, ra, -1800
                  slli         s2, t6, 1
                  nop
                  or           s1, gp, t3
                  lui          gp, 93891
                  auipc        t6, 421784
                  xor          s8, s4, gp
                  addi         t1, s11, -35
                  srai         s11, a5, 30
                  sub          ra, tp, s3
                  sra          t2, s1, a6
                  slli         s1, s8, 24
                  nop
                  slli         s11, t0, 19
                  sra          t6, s9, t5
                  andi         t1, a2, 1674
                  or           s10, s9, sp
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           a5, 0xbb57c1c8
                  li           t6, 0x0
                  li           a2, 0xffffffff
                  li           t1, 0xffffffff
                  li           s5, 0x0
                  li           t5, 0xffffffff
                  li           t4, 0x80000000
                  li           sp, 0x6232992
                  li           t2, 0xffffffff
                  addi         t4, s5, 815
                  auipc        t4, 146132
                  nop
                  addi         s5, s5, 48
                  addi         s8, t1, -3
                  addi         t4, s8, -261
                  auipc        sp, 596811
                  nop
                  lui          t4, 1016311
                  auipc        t5, 282380
                  lui          a5, 221849
                  auipc        sp, 342219
                  addi         t4, t4, -421
                  addi         s8, t2, 1762
                  sub          s8, t1, a2
                  addi         t2, s8, 153
                  sub          a2, t5, t5
                  addi         a5, a5, 1121
                  auipc        t5, 867531
                  addi         t2, s8, -1634
                  nop
                  lui          sp, 703423 #end riscv_int_numeric_corner_stream_5
                  add          s10, s5, a6
                  or           zero, s10, a5
                  addi         a2, s10, 493
                  sra          s6, gp, s4
                  and          t0, t2, s5
                  sra          s0, sp, t5
                  addi         s9, gp, 275
                  slti         a2, tp, 452
                  lui          t0, 156939
                  slti         a7, zero, -93
                  sltiu        s9, a2, -267
                  sll          s5, s9, s10
                  or           t0, t6, s11
                  ori          a7, s9, 1267
                  slli         s2, zero, 7
                  sltu         a2, s10, tp
                  add          t0, a3, s10
                  srli         t4, t4, 2
                  slt          s3, t4, s6
                  nop
                  srl          t1, a0, a4
                  or           a2, a3, t4
                  slti         s8, s11, -524
                  and          s4, a7, t2
                  auipc        t5, 91996
                  and          t3, t5, t2
                  xor          ra, a0, t2
                  sltiu        t6, s5, -960
                  slt          s11, t2, a4
                  sub          a6, a0, t2
                  sub          t6, tp, a7
                  add          s9, s11, s5
                  sltu         s11, a0, a2
                  or           s10, t2, t0
                  slt          s11, a2, s3
                  xori         t2, a5, -1729
                  and          t3, s4, s7
                  sltiu        s7, s5, 1354
                  xori         t1, s8, -549
                  ori          gp, a3, -823
                  andi         t5, s0, -1719
                  or           t1, s3, a0
                  slli         s7, s1, 14
                  and          s5, s9, s8
                  srl          s5, t3, t3
                  ori          zero, s4, 867
                  srli         s11, s5, 3
                  sub          s11, tp, s5
                  lui          t5, 693579
                  slti         a6, s10, 1481
                  nop
                  auipc        t0, 536975
                  sra          sp, a2, t3
                  nop
                  xori         s3, a1, 870
                  xor          t3, t1, s7
                  ori          a6, a2, 1032
                  sltu         sp, t4, a3
                  xori         s5, a4, 982
                  addi         t6, t2, -786
                  andi         sp, gp, 1040
                  sra          sp, t0, t2
                  srli         s3, t4, 16
                  slt          a6, s0, s4
                  sub          s8, a5, s9
                  sll          ra, a1, t3
                  andi         t4, t1, 1837
                  slt          t4, s8, t3
                  srl          a1, a6, s11
                  sll          a7, s11, t0
                  sra          t2, s3, sp
                  sltiu        t2, t3, 1659
                  sll          sp, t6, sp
                  sll          s2, t4, t6
                  srli         a4, s4, 16
                  sll          s7, s3, tp
                  ori          t0, t0, -539
                  slti         s10, a3, 438
                  auipc        t0, 767451
                  or           t3, a3, a0
                  auipc        s2, 699171
                  auipc        t6, 770468
                  auipc        sp, 203378
                  or           a1, zero, t1
                  xori         s5, t3, -927
                  slt          t5, a6, a0
                  lui          s5, 990688
                  add          s10, tp, t5
                  slt          t1, s0, gp
                  addi         a5, a7, -1812
                  sll          a2, a3, t1
                  sltu         s8, s1, a5
                  sltu         s3, s11, s11
                  lui          sp, 125241
                  sra          s6, s2, t5
                  andi         a6, a1, 256
                  addi         t0, s3, 658
                  addi         s2, t6, -1136
                  auipc        s4, 460303
                  slt          s0, a4, t2
                  slt          sp, a1, s5
                  sltu         a6, sp, s9
                  xor          t0, a1, s5
                  srli         s5, a4, 1
                  srli         t6, s11, 8
                  xori         a7, a5, -1674
                  slli         a1, t2, 21
                  ori          a1, a2, 685
                  sltu         ra, s5, a6
                  add          a7, s11, t6
                  and          a1, gp, sp
                  srai         s1, a2, 10
                  addi         a1, s4, 1063
                  srai         s10, tp, 5
                  add          sp, t5, a6
                  slli         t6, a5, 14
                  srli         s11, s3, 20
                  slti         t4, a5, 1449
                  andi         a4, a1, -649
                  sll          a5, t3, t6
                  srai         t1, s8, 21
                  ori          a2, a6, 621
                  andi         s3, s8, 194
                  srl          a2, t2, s9
                  auipc        t6, 155211
                  and          s11, t5, t3
                  or           s6, s10, t0
                  sltiu        s7, s0, -1238
                  addi         s9, a6, -437
                  and          s7, t1, a7
                  sll          sp, a5, s3
                  slt          t0, s7, s11
                  addi         a2, t1, -919
                  sltiu        t4, sp, 84
                  srl          ra, gp, s1
                  srai         s5, zero, 0
                  addi         t0, a7, 1075
                  andi         ra, s3, -991
                  slti         a5, s7, -155
                  slt          s0, tp, s5
                  nop
                  sub          a2, s5, ra
                  xor          s2, s1, s0
                  or           a1, s9, t3
                  sra          s11, a3, gp
                  sll          s2, t5, sp
                  slli         a5, t1, 7
                  and          a4, s8, s4
                  sltu         t5, s0, a6
                  srl          a5, t0, a5
                  or           s10, s6, a4
                  add          s5, t3, s0
                  sub          a7, sp, sp
                  slt          s0, s7, a6
                  andi         a7, s4, 633
                  ori          t0, s1, -125
                  andi         s5, t6, 482
                  lui          a4, 580612
                  srai         s7, t2, 12
                  slt          s3, t2, t0
                  lui          s11, 918533
                  slti         zero, s7, 277
                  andi         ra, s6, -304
                  and          s11, s7, t4
                  andi         t3, ra, -211
                  add          t1, s1, a1
                  srli         s8, a1, 10
                  auipc        a1, 991180
                  slti         gp, s0, -1180
                  slti         s0, a4, 1549
                  nop
                  srl          sp, a2, t5
                  sub          ra, t5, t0
                  addi         s8, tp, -1320
                  slt          t0, s10, t4
                  sll          a4, s6, sp
                  srai         s0, t6, 18
                  slli         t1, t0, 27
                  slt          ra, tp, s1
                  xor          t1, s6, s0
                  sra          t1, s4, a4
                  srli         s7, a5, 10
                  and          s5, s3, a1
                  sltu         a1, a0, t0
                  andi         s10, s2, -353
                  slli         gp, t2, 20
                  add          t4, s3, a0
                  xori         s10, t2, -1790
                  sub          t3, s7, sp
                  sltiu        s8, s6, -272
                  slt          sp, t0, s9
                  sltiu        s6, zero, -564
                  slt          s11, s10, a3
                  or           s2, s8, a4
                  srli         s0, a3, 27
                  srl          t0, s5, a1
                  sub          s1, s2, s1
                  nop
                  and          s4, s1, t6
                  slti         s9, t1, 1184
                  auipc        gp, 538278
                  auipc        t4, 701892
                  auipc        ra, 541785
                  xori         s2, tp, 913
                  addi         a7, a7, 1767
                  srl          s11, sp, s10
                  sub          zero, s9, zero
                  nop
                  sra          t1, t3, sp
                  srl          t5, a7, a7
                  sltu         t3, s11, s7
                  sltiu        s5, s10, -1236
                  srli         t6, a7, 5
                  slli         ra, t5, 1
                  and          gp, s3, a4
                  addi         s1, a6, -1475
                  sll          a4, a3, s2
                  and          a1, a4, t2
                  slt          gp, a7, zero
                  sll          s2, s9, s4
                  auipc        t0, 316219
                  slti         s11, ra, -1780
                  sltiu        s8, tp, -1129
                  or           t5, s11, gp
                  slt          s0, ra, s8
                  sra          t3, zero, s3
                  nop
                  sra          a7, a3, a3
                  nop
                  lui          a7, 609730
                  sltu         s5, a5, t1
                  srli         s7, a6, 21
                  add          t4, sp, t1
                  xor          s1, zero, t5
                  srl          sp, s8, s6
                  slti         a2, s10, 805
                  srli         t3, t4, 0
                  ori          t5, sp, -492
                  ori          s2, a0, 1309
                  or           s11, gp, t5
                  sra          ra, s4, a2
                  srli         gp, t5, 14
                  and          s2, t1, gp
                  sra          s3, a6, s0
                  sltiu        a5, s4, 1642
                  xor          a5, t4, zero
                  srl          s10, a7, a6
                  auipc        sp, 1007368
                  srl          ra, a2, s10
                  and          s9, t5, s2
                  slli         s11, s7, 21
                  slt          ra, zero, ra
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           t3, 0x19def24d
                  li           s10, 0x0
                  li           s11, 0x81c14601
                  li           t4, 0xfeb7125e
                  li           a1, 0x80000000
                  li           sp, 0xffffffff
                  li           a2, 0x0
                  li           t0, 0x0
                  li           s6, 0x0
                  nop
                  addi         t4, s6, 472
                  nop
                  sub          s10, a2, s4
                  addi         a2, s4, 1414
                  sub          s11, a1, s6
                  lui          t4, 613034
                  nop
                  auipc        a2, 882138
                  auipc        s11, 1006596
                  auipc        a1, 92616
                  sub          s6, t4, t3
                  auipc        s6, 278908
                  add          s11, a2, a1
                  lui          s11, 708984
                  add          s4, sp, t0
                  auipc        t3, 736619
                  auipc        t0, 690826
                  lui          t4, 622934 #end riscv_int_numeric_corner_stream_13
                  sra          t2, ra, a2
                  srl          a5, gp, a2
                  lui          s10, 1022805
                  sub          s1, s0, s6
                  slt          a5, a2, a7
                  srli         s5, t5, 14
                  or           a5, s6, a7
                  srli         a2, a1, 9
                  sll          s3, s10, s10
                  xor          a7, s6, s11
                  and          a6, a7, a2
                  slli         s0, s1, 20
                  xor          t1, a4, a3
                  slt          gp, s10, gp
                  andi         a6, tp, 111
                  sll          t4, s1, s11
                  andi         gp, s0, 1879
                  and          s3, a1, s8
                  srai         a5, a6, 5
                  lui          a5, 374712
                  xor          s1, a1, s9
                  ori          s7, ra, -1629
                  and          s9, s4, s0
                  add          gp, s1, t0
                  slli         t3, t2, 10
                  srl          a4, a0, s11
                  ori          s0, t0, 1220
                  sub          t6, s11, s0
                  ori          s9, s1, -946
                  slli         s1, a2, 13
                  xori         a7, s2, 802
                  addi         s10, s3, -241
                  add          gp, a2, zero
                  add          a2, s0, s4
                  slti         gp, t1, 1834
                  lui          t5, 198958
                  addi         s6, s8, 1350
                  and          a6, s9, a6
                  slli         a6, sp, 17
                  andi         a5, t5, -1691
                  addi         s11, ra, 376
                  lui          t3, 63042
                  and          s11, zero, s7
                  lui          s4, 260484
                  slt          t3, t3, gp
                  srli         s7, s5, 21
                  nop
                  nop
                  srl          a1, t3, ra
                  sltiu        s5, t3, -1860
                  sltu         s4, a3, s3
                  sltu         s7, s6, s5
                  slti         a4, t0, -555
                  sltu         t2, a6, t3
                  srai         t3, a3, 9
                  sltiu        a5, s4, 1979
                  srai         s7, tp, 21
                  srai         a4, s1, 9
                  andi         a6, a2, 761
                  sltiu        s7, t6, 368
                  nop
                  sll          s1, s9, t6
                  and          a7, a7, s7
                  xor          t5, zero, a2
                  srl          sp, t3, s0
                  xor          s7, s0, s10
                  auipc        a5, 453988
                  addi         sp, s10, -186
                  sra          s5, a1, s3
                  xor          t6, zero, s11
                  sltiu        s2, a2, 729
                  auipc        a5, 1017823
                  sub          s5, a2, gp
                  srai         a1, a4, 12
                  xori         a4, s9, 428
                  andi         s11, t0, 1046
                  lui          sp, 209494
                  nop
                  nop
                  sltiu        s10, t4, 1033
                  ori          s7, a6, -1675
                  or           a7, s2, t6
                  nop
                  srai         ra, ra, 27
                  andi         s8, a0, 1445
                  srl          a6, t3, t3
                  slti         a4, s8, -1296
                  auipc        t0, 84441
                  slt          t5, s8, s8
                  add          t0, a5, zero
                  sltiu        gp, t1, 14
                  sra          s11, s0, t4
                  srai         t0, s9, 8
                  sltiu        s3, s3, 1183
                  sub          s9, s6, zero
                  ori          s9, a0, 60
                  sltiu        s0, zero, 1220
                  xor          s8, s7, t4
                  xori         t6, s1, 1695
                  auipc        a2, 8881
                  srli         t6, t3, 27
                  lui          t1, 716943
                  srai         t1, sp, 25
                  sltu         t2, s6, s9
                  srl          t6, t2, gp
                  srli         t5, t2, 28
                  and          s8, t4, a2
                  nop
                  auipc        t4, 65602
                  sltu         ra, tp, a7
                  addi         s1, t1, 1336
                  and          t5, s6, s3
                  slt          s7, s5, ra
                  xor          s3, a3, s8
                  sll          a4, s7, ra
                  addi         t0, a0, 915
                  slti         a6, s11, 1538
                  sltu         t3, s7, t4
                  auipc        s3, 193173
                  auipc        gp, 235469
                  srli         s10, t6, 5
                  sra          s8, t6, a4
                  auipc        sp, 884456
                  nop
                  add          zero, a1, s6
                  xor          sp, a2, s9
                  slli         zero, s9, 22
                  srl          s8, a3, a0
                  auipc        s2, 516997
                  sltu         s3, a2, s2
                  sub          zero, t0, t6
                  sltiu        s9, s0, -929
                  ori          s2, a4, 1756
                  sll          a1, s0, gp
                  xori         a6, zero, 1700
                  sra          a2, a1, a3
                  lui          sp, 225722
                  srli         s0, s0, 3
                  xor          a4, s9, a4
                  sll          s8, s3, t3
                  sll          gp, s1, sp
                  sub          t0, s11, s1
                  slt          t6, tp, sp
                  add          s10, ra, s2
                  srli         a2, s6, 25
                  xori         a4, a7, -1981
                  srl          a6, gp, a2
                  sub          s0, sp, a6
                  slti         t3, t3, 1538
                  slti         s2, s7, 406
                  sll          a1, t4, s7
                  or           a2, a3, t6
                  srli         s4, t5, 20
                  add          zero, s4, gp
                  sltu         s7, t3, a7
                  ori          s3, s8, -562
                  slli         s8, s7, 2
                  addi         t2, s7, -361
                  auipc        a4, 711676
                  slt          t6, a0, a2
                  sll          a6, s4, t3
                  sltu         a2, tp, ra
                  or           s3, s8, a4
                  auipc        s4, 614734
                  nop
                  andi         s10, s5, 1586
                  xor          s6, zero, s5
                  srli         t1, a5, 30
                  lui          t1, 115571
                  srl          t3, t0, gp
                  sll          a7, t2, s8
                  sltu         s9, s7, t2
                  sra          zero, s2, s8
                  slt          t0, a3, a7
                  or           a6, t1, s0
                  ori          ra, s0, 207
                  nop
                  nop
                  sra          t0, t5, s6
                  auipc        s2, 886772
                  sub          zero, t0, a0
                  ori          s8, t1, 694
                  srai         t3, s3, 4
                  and          t6, a2, s4
                  andi         s7, t5, -679
                  sll          t0, a5, t0
                  slti         s4, a3, 1497
                  sra          s1, s5, s9
                  srai         t3, t6, 10
                  add          s4, a3, a4
                  sra          a7, tp, s2
                  sll          t5, a2, a0
                  sll          t2, tp, zero
                  ori          a1, t5, -373
                  sll          t2, t6, a3
                  sra          t4, a6, t4
                  addi         s4, a5, -941
                  slli         s0, s2, 19
                  or           s0, gp, a5
                  slt          a1, a6, a6
                  or           s7, tp, gp
                  sll          s1, s5, sp
                  nop
                  sll          sp, s2, t5
                  xori         a6, s9, 746
                  nop
                  sra          s7, s1, s9
                  and          s1, s3, t4
                  addi         s0, s6, -235
                  sll          s1, t2, s9
                  and          a2, t3, s4
                  lui          a6, 725605
                  and          t1, s4, zero
                  ori          t1, ra, 1842
                  srli         t4, s0, 13
                  add          s10, t1, t0
                  auipc        t6, 880596
                  slt          gp, t0, t6
                  srl          a7, sp, a2
                  addi         t4, s7, -1985
                  srli         t3, a2, 16
                  nop
                  ori          s7, zero, -1030
                  xori         s7, s6, -16
                  sltiu        s0, a5, -452
                  xori         t1, s0, -1373
                  auipc        s6, 103456
                  andi         t2, s3, 625
                  auipc        s3, 482978
                  sub          ra, s6, s3
                  sll          s10, s4, s8
                  slti         t0, s9, 1460
                  srl          t4, a7, s9
                  slti         gp, a3, -750
                  or           t4, s8, s7
                  xor          a4, a1, t0
                  srl          t2, t6, sp
                  sltu         gp, a4, a7
                  xor          a7, t0, s9
                  sra          t3, t6, s3
                  sra          s3, t0, tp
                  xor          t0, t2, a1
                  sltu         s1, s9, zero
                  slli         sp, a0, 31
                  nop
                  sub          s5, s10, s4
                  srai         t5, a3, 18
                  slt          t5, a6, gp
                  sra          t3, a5, ra
                  srai         s10, s9, 4
                  slli         a2, a0, 12
                  srai         t5, s0, 9
                  xori         gp, s9, -577
                  addi         t3, s3, -71
                  srai         s2, gp, 0
                  srai         a1, ra, 2
                  andi         a1, t6, 1739
                  sll          s0, t0, a6
                  xor          t5, a1, s3
                  slti         a7, t0, 545
                  and          t6, s3, tp
                  sra          sp, t3, s6
                  nop
                  sra          t0, t0, a7
                  ori          t2, a5, -153
                  addi         t0, s11, 1552
                  srli         a5, a2, 9
                  add          a6, s9, s1
                  andi         t2, s0, 1562
                  sltiu        s3, zero, 1967
                  and          a5, a4, tp
                  ori          s10, s7, -626
                  srli         zero, a5, 4
                  sltu         s10, t3, a3
                  auipc        s6, 702071
                  slti         gp, t5, 357
                  slti         t6, s2, 1872
                  and          s0, s0, t3
                  and          zero, sp, s0
                  nop
                  sll          s10, t1, s8
                  slti         s10, s11, -92
                  sltu         ra, t0, gp
                  lui          t4, 407470
                  sltiu        s1, t2, 1540
                  andi         s10, a2, 1229
                  xor          t0, a3, sp
                  xori         s2, s1, 95
                  slt          s1, tp, s9
                  ori          a2, t0, -406
                  sub          t3, s2, a3
                  andi         s1, s7, 1705
                  sub          s1, s6, s3
                  sll          a7, t1, s11
                  andi         a4, t3, 1317
                  slli         a1, s8, 17
                  srai         s2, s10, 15
                  xor          t2, a3, s10
                  or           a2, s3, s5
                  sll          s1, t1, t1
                  lui          t2, 853447
                  nop
                  slti         ra, zero, -482
                  xor          s5, s8, a6
                  sltiu        gp, t0, 238
                  sub          s8, tp, a5
                  slt          s11, t6, s6
                  nop
                  sll          a5, sp, a4
                  addi         s2, tp, -40
                  and          t3, a4, t3
                  and          a1, zero, s5
                  sub          a4, s5, s0
                  sltu         s6, s11, s11
                  xori         t2, a5, -1246
                  srl          a1, s5, zero
                  ori          s3, t6, -1250
                  sra          s6, a4, s6
                  and          t0, s11, s1
                  sub          t3, s2, s3
                  sltiu        a6, t0, -699
                  auipc        s4, 770392
                  ori          s1, s8, 1820
                  ori          s1, zero, -1667
                  auipc        a6, 560795
                  addi         a2, a2, 700
                  sll          s5, sp, s9
                  sll          a2, a4, t2
                  slli         t4, s9, 17
                  sub          s1, s2, sp
                  slli         s1, tp, 19
                  xori         s1, s1, 1821
                  lui          t6, 441123
                  xori         a6, t1, 1108
                  sltu         s5, s9, t0
                  addi         s8, t2, -1206
                  xor          a5, sp, a0
                  srli         s10, s2, 1
                  sub          s8, a7, t4
                  nop
                  sub          a7, t6, t1
                  sra          zero, gp, a7
                  slti         s7, s10, -827
                  nop
                  xori         s4, s0, 1003
                  srl          a2, a1, a0
                  sub          s9, s3, ra
                  slli         a2, t2, 1
                  slli         t6, t5, 9
                  andi         s2, a6, -1545
                  nop
                  sltu         sp, s9, t5
                  and          ra, s6, s9
                  add          s8, s8, a3
                  li           a2, 0xe61954be #start riscv_int_numeric_corner_stream_16
                  li           s2, 0x334a3fd7
                  li           a4, 0x80000000
                  li           t2, 0xffffffff
                  li           s11, 0x80000000
                  li           t4, 0x80000000
                  li           sp, 0x0
                  li           ra, 0xf3db122d
                  li           a1, 0xffffffff
                  li           s3, 0x10f8f278
                  addi         t2, a4, 641
                  nop
                  auipc        a2, 681757
                  lui          sp, 217820
                  add          a1, sp, t4
                  nop
                  lui          s3, 956007
                  sub          sp, a2, a2
                  nop
                  add          a4, s3, a1
                  addi         s2, s11, 405
                  add          t4, t2, s11
                  addi         s11, a4, -1081
                  sub          sp, s3, s11
                  sub          ra, s2, a1
                  lui          s2, 135854
                  auipc        t2, 409077
                  lui          t2, 679053
                  lui          s11, 479924 #end riscv_int_numeric_corner_stream_16
                  slti         s8, ra, -109
                  sltiu        s6, a4, -1541
                  slt          s10, t6, s2
                  addi         s4, s11, 1645
                  andi         s8, sp, -869
                  lui          t5, 656933
                  sltu         t1, s10, t3
                  lui          s10, 964085
                  ori          gp, s8, 582
                  nop
                  sll          t3, s5, t5
                  sra          a6, s0, t1
                  addi         a1, ra, -463
                  or           a7, a7, t5
                  add          s1, a1, s7
                  slti         a5, a1, -305
                  sll          t6, a7, s2
                  sra          t2, s2, a7
                  sll          a6, a6, zero
                  sra          t1, t0, t4
                  srli         ra, a6, 8
                  sub          s0, s5, a0
                  add          t4, a3, t4
                  nop
                  slt          s8, s1, t2
                  and          t6, a1, s4
                  ori          t6, s5, 409
                  add          s6, t3, s11
                  sltiu        ra, s8, 785
                  srl          a2, a4, s8
                  sltu         s11, s0, t4
                  lui          s4, 988218
                  sub          s7, a0, s4
                  addi         gp, a3, 407
                  slti         s4, a1, -1606
                  or           a1, a0, tp
                  slti         s6, a0, 707
                  nop
                  xori         sp, t3, -2045
                  addi         sp, s10, 973
                  nop
                  srai         a1, s8, 12
                  srl          s3, t5, t4
                  addi         t3, a7, 694
                  nop
                  addi         t5, t2, -111
                  xor          s8, t6, t0
                  slt          gp, t2, t1
                  ori          s3, tp, 940
                  sub          s6, a4, a0
                  sltu         s0, t5, t2
                  ori          t5, t3, -2017
                  lui          a5, 645620
                  auipc        s5, 682464
                  sltiu        s5, a2, 169
                  xori         s3, sp, 485
                  addi         s8, s9, 413
                  xori         s6, s7, -871
                  sltiu        s6, s7, -1076
                  add          t4, s9, s5
                  sll          t4, s8, a5
                  addi         gp, t6, 349
                  xori         s1, t5, 58
                  slt          zero, t6, a1
                  sll          s1, a3, a3
                  sltu         s9, a3, t3
                  sltiu        s3, a7, 1016
                  slti         s8, a1, 770
                  lui          s10, 768707
                  andi         t5, s4, 1741
                  nop
                  sltiu        s11, s10, 727
                  sll          t2, s6, s9
                  sltiu        a7, s5, 1056
                  lui          s0, 538421
                  sra          a6, sp, s10
                  auipc        zero, 222405
                  andi         s0, a2, -1112
                  sltiu        zero, a0, -117
                  sra          t6, ra, a5
                  sub          t3, s10, t0
                  addi         s6, s4, -2037
                  slti         s6, t6, -738
                  add          t5, a4, a6
                  auipc        t1, 590083
                  andi         a1, s3, -1000
                  slt          s4, s6, a1
                  sltiu        s1, t6, 1375
                  or           t6, s8, s9
                  and          t3, a4, a1
                  srai         zero, s10, 30
                  ori          sp, s10, 713
                  and          sp, a4, s7
                  slt          s5, s1, s2
                  or           s8, t1, s4
                  add          gp, s7, tp
                  auipc        t1, 133081
                  sll          t6, tp, t1
                  srli         s7, t2, 2
                  srl          a6, t5, s5
                  sra          s2, zero, a4
                  and          gp, ra, zero
                  ori          a4, s7, 208
                  sltiu        ra, s3, -1016
                  srai         s0, a2, 19
                  ori          t4, s10, 247
                  srl          t5, s3, s2
                  or           s3, s9, s11
                  xor          a7, t3, s8
                  srai         t0, t2, 4
                  slti         a5, s3, -965
                  or           a6, s8, s0
                  slt          a4, s10, zero
                  slli         s1, s7, 28
                  or           ra, t1, t4
                  srl          s6, s1, s7
                  slti         s2, zero, -1704
                  xori         s9, t6, 392
                  addi         t0, s1, 514
                  xor          s10, t0, s0
                  sra          zero, a3, s7
                  srl          s5, t3, gp
                  srl          t1, s7, t2
                  sll          a1, a4, s4
                  ori          s0, t4, -1802
                  sub          t2, s10, t0
                  sub          t5, sp, s4
                  slti         a1, a4, -1191
                  auipc        s10, 916610
                  srai         a5, gp, 23
                  lui          s10, 231447
                  sub          s7, s0, s9
                  sltu         a6, t0, s5
                  sll          s6, a6, a0
                  nop
                  addi         s10, s6, 174
                  slti         t2, zero, -773
                  nop
                  slt          t4, s11, s10
                  slli         a5, tp, 27
                  add          s5, s9, s0
                  auipc        t6, 671796
                  xor          t6, gp, t5
                  slli         s4, sp, 17
                  srai         t3, a6, 20
                  xori         s1, s2, -1760
                  sltu         t2, s4, tp
                  slli         s4, t1, 27
                  sltu         s0, t2, tp
                  addi         s8, sp, -1249
                  nop
                  sra          t2, a2, zero
                  lui          s0, 997589
                  and          a6, s5, zero
                  lui          t3, 469921
                  slt          ra, s3, t3
                  xori         zero, s8, -1090
                  andi         s7, s10, -863
                  auipc        a2, 620456
                  or           sp, a0, a2
                  slti         ra, tp, 1449
                  or           t0, t0, zero
                  sltiu        a6, gp, -1705
                  sub          a2, s6, a0
                  sltu         s4, s0, a0
                  sll          t4, t4, s3
                  or           s0, s1, a7
                  sra          a4, a4, s4
                  andi         s4, s6, 1351
                  nop
                  lui          t3, 406609
                  auipc        s5, 591491
                  xori         a4, t1, 790
                  sra          s8, t5, ra
                  slli         a5, s8, 31
                  slt          zero, s9, a2
                  sltu         s6, t5, s11
                  sltiu        a5, t3, -97
                  slli         a6, s1, 25
                  srl          zero, s3, s10
                  auipc        s1, 156762
                  andi         t4, s1, -886
                  sra          a7, a4, a3
                  sra          a2, s8, s0
                  or           s10, s3, a3
                  nop
                  srai         a5, a7, 7
                  srai         s7, sp, 1
                  xori         t1, s7, 803
                  ori          a4, s8, -789
                  xor          s2, sp, t0
                  and          a5, t0, a7
                  add          s11, ra, a7
                  and          s11, a3, t5
                  sub          t5, a0, s3
                  andi         a6, s10, 1648
                  srai         s1, sp, 2
                  lui          s6, 121718
                  add          zero, t1, t3
                  xori         a6, t0, -692
                  slti         s10, s4, -1113
                  srai         s9, a1, 10
                  auipc        t4, 247346
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           a4, 0x80000000
                  li           s6, 0xffffffff
                  li           t6, 0x0
                  li           a6, 0xc06c7d4b
                  li           t3, 0xee44ba66
                  li           s4, 0x0
                  li           t0, 0xffffffff
                  li           s0, 0x80000000
                  li           ra, 0x80000000
                  nop
                  auipc        a6, 569128
                  auipc        s6, 993885
                  lui          ra, 74512
                  addi         s5, s6, -1836
                  nop
                  addi         s5, s6, -1501
                  sub          s5, t6, a6
                  addi         s5, a4, 1144
                  lui          ra, 409946
                  nop
                  addi         ra, a4, 1664
                  addi         s4, a6, 229
                  addi         a6, t0, -838
                  sub          t0, s4, ra
                  sub          t0, a6, s4
                  add          ra, a4, t6
                  nop
                  auipc        a4, 937151
                  sub          t3, s6, ra #end riscv_int_numeric_corner_stream_4
                  sltu         s8, sp, s6
                  sra          s6, a2, s7
                  sll          s4, t0, t2
                  xor          t3, tp, tp
                  andi         s0, s3, -948
                  or           s1, s0, a3
                  ori          a1, ra, -1831
                  nop
                  sub          s2, s4, t1
                  sltiu        s0, s6, -1566
                  sltu         s7, s5, s3
                  sltiu        a1, s3, 372
                  srli         s2, gp, 8
                  sll          t3, s11, s9
                  srl          a6, tp, s3
                  nop
                  add          s1, t5, s0
                  add          t5, t6, t5
                  slli         s11, s8, 23
                  nop
                  andi         t5, tp, -1987
                  lui          a2, 232285
                  srai         a4, t4, 13
                  sra          s7, s9, zero
                  addi         ra, s0, -412
                  addi         a5, s4, 1368
                  xor          s7, tp, s6
                  slt          a4, s5, s7
                  ori          t2, t2, 715
                  ori          s11, a1, 1430
                  srai         a7, a5, 17
                  xori         t5, t1, 222
                  srai         s3, s1, 0
                  sll          a1, s6, t1
                  sltiu        t3, s4, -824
                  and          s6, s8, s7
                  slli         a6, s0, 3
                  xori         s7, s0, 213
                  srli         t5, s11, 31
                  nop
                  srli         zero, s7, 17
                  xor          ra, a2, a5
                  sra          s10, sp, a1
                  srl          s5, t1, a4
                  slti         a6, gp, -987
                  slt          a6, t3, t3
                  srl          a1, gp, a2
                  sra          t0, t2, s0
                  auipc        s6, 1032448
                  sub          t0, t1, s4
                  srai         t5, t4, 6
                  or           s5, s7, a4
                  srl          sp, t6, s3
                  ori          t5, s6, 1277
                  xor          t0, s3, a6
                  sub          a4, a1, s5
                  and          s1, sp, a7
                  nop
                  sub          a6, zero, gp
                  slli         t1, gp, 21
                  xori         a1, a2, -724
                  addi         s5, a2, 48
                  or           gp, t5, s8
                  and          a7, s2, a6
                  srai         s4, ra, 27
                  addi         s7, s11, -2004
                  srli         s5, s1, 23
                  srai         a1, a5, 25
                  sra          s2, a4, a4
                  xor          ra, s8, a3
                  add          s9, a6, t6
                  slli         s11, a0, 0
                  xori         s4, s2, -868
                  add          s4, t0, a6
                  slt          t1, s7, a7
                  srli         t2, s1, 7
                  ori          s8, s11, -497
                  slt          a6, ra, s3
                  slt          a2, t2, t2
                  andi         sp, s11, 1354
                  sltu         zero, a5, a1
                  srli         t6, s8, 4
                  slti         a2, s6, -1788
                  andi         t0, t0, 309
                  andi         zero, a3, -1610
                  addi         gp, a6, -1047
                  slli         s7, tp, 3
                  srli         a5, gp, 29
                  add          zero, tp, t4
                  and          t4, a7, a7
                  sll          a1, a7, s7
                  or           s1, t1, a2
                  srli         t6, s8, 11
                  add          a6, a3, t6
                  add          a1, tp, tp
                  srl          zero, tp, a4
                  sll          zero, a4, a5
                  srli         a4, a4, 26
                  auipc        s10, 867324
                  add          gp, zero, a4
                  addi         s6, tp, 158
                  slt          t2, s9, gp
                  andi         t6, tp, 1286
                  sra          s0, t2, s6
                  sub          a1, s2, s3
                  addi         s3, t2, -502
                  srai         s11, s1, 10
                  sltiu        s3, s8, 1891
                  sll          s5, sp, t5
                  addi         a4, s9, -266
                  slli         s7, a1, 8
                  lui          s3, 1000462
                  add          a1, zero, s7
                  lui          t6, 302258
                  srli         zero, t0, 8
                  slli         t6, t4, 18
                  ori          t0, t3, -75
                  slt          ra, s8, a5
                  andi         s9, a1, -1499
                  sra          ra, t1, s2
                  addi         t5, s3, 473
                  xori         t0, s3, -233
                  nop
                  or           s5, s4, s9
                  ori          a6, t4, 980
                  sltiu        s3, tp, -1812
                  sll          t0, sp, t0
                  sll          a5, t2, ra
                  addi         t5, t5, -333
                  slti         s0, t1, 952
                  add          s5, a7, s1
                  and          a7, t1, s9
                  and          s10, s2, a6
                  slli         s7, s3, 20
                  xori         t0, s6, -162
                  sltiu        s11, a0, 197
                  add          zero, s2, a5
                  srl          s10, gp, s9
                  srli         gp, s3, 14
                  sra          a1, a5, s7
                  auipc        t1, 1002837
                  sltu         a1, tp, a5
                  add          s2, t1, s9
                  srai         s5, t4, 4
                  sltu         a6, a3, s11
                  xor          a1, s1, t3
                  sra          t1, ra, a7
                  or           s3, s8, a1
                  sll          s2, t4, s8
                  sub          a6, s5, s0
                  sltu         a4, s7, s6
                  srl          s10, s0, s11
                  addi         zero, s5, -685
                  xor          t1, a6, s5
                  sltiu        s0, s0, -321
                  slli         t2, t5, 5
                  ori          a6, s5, 1055
                  ori          s2, s0, 452
                  srai         s0, a3, 0
                  or           s5, t1, s9
                  sub          s9, t1, s10
                  ori          s5, s7, -1018
                  sra          t2, sp, ra
                  sub          s5, sp, a2
                  auipc        gp, 127685
                  sltu         zero, a4, a3
                  slti         ra, s5, -1762
                  lui          s8, 648085
                  addi         s6, a4, -4
                  srai         zero, a7, 21
                  ori          s3, a5, 439
                  andi         s3, s8, 415
                  slt          sp, a7, s9
                  sltiu        gp, s5, 372
                  ori          a6, s9, 1772
                  sra          s7, s4, a6
                  srl          s4, a2, t0
                  addi         a4, t3, -1062
                  addi         t2, ra, 1538
                  xor          sp, zero, s4
                  ori          ra, a2, 565
                  addi         a5, s11, -1986
                  add          a2, s9, s7
                  xor          s2, a2, sp
                  ori          s9, a1, -1354
                  nop
                  sltu         t6, s3, s0
                  xor          a4, s9, t5
                  srl          s1, s11, t5
                  xori         s9, s1, -1667
                  and          s5, t4, a7
                  srai         gp, s7, 16
                  slli         t0, t3, 16
                  sltiu        s5, s2, 1769
                  nop
                  srai         a6, s3, 30
                  add          s7, s10, s9
                  ori          zero, t6, -1898
                  xor          s9, zero, s2
                  sll          a4, s11, s7
                  ori          t1, t1, -1626
                  add          a7, s0, s10
                  srli         a7, a1, 5
                  auipc        t4, 531188
                  add          s5, tp, s9
                  nop
                  srli         ra, s3, 19
                  srl          a2, s8, t5
                  slli         s4, a7, 0
                  xori         zero, t0, 1357
                  add          s2, gp, gp
                  slt          sp, tp, s5
                  lui          s1, 388715
                  sra          sp, t6, gp
                  srli         sp, t2, 5
                  add          s8, t5, s10
                  sltu         zero, s3, s5
                  slti         a5, a7, 414
                  sll          s5, ra, a3
                  ori          s8, a2, -1742
                  sltiu        t5, a6, -90
                  srli         s8, a2, 8
                  nop
                  addi         t3, s4, -1180
                  sra          s3, s7, t3
                  xori         s5, t6, -1578
                  sra          s6, t6, ra
                  sra          t2, a6, a4
                  add          ra, tp, ra
                  andi         t3, a0, -775
                  nop
                  andi         s3, s3, -1526
                  lui          s7, 46586
                  nop
                  addi         a7, t1, -643
                  andi         s1, sp, -81
                  sll          s8, a1, ra
                  sltiu        sp, gp, 72
                  sub          sp, t0, t5
                  srl          t1, a3, a4
                  srai         t6, t1, 7
                  sub          t4, t6, a5
                  xor          s6, t4, s2
                  xori         s3, a3, 1485
                  lui          s3, 966288
                  srl          s8, a0, tp
                  xor          s0, s0, a7
                  add          s4, t3, t3
                  or           s8, t4, a7
                  add          t1, t1, a5
                  lui          zero, 134438
                  ori          s2, t5, 1282
                  slti         a4, t2, 1753
                  srai         s7, s10, 6
                  auipc        a5, 46006
                  sltiu        t3, gp, -1364
                  lui          t4, 491976
                  srai         a4, s3, 3
                  add          a7, s8, s0
                  add          s1, t6, s2
                  sltu         a5, s8, a4
                  sub          a5, s1, gp
                  sub          s8, a4, s7
                  andi         s10, s5, -904
                  srli         zero, t6, 31
                  addi         s4, a4, 854
                  slt          gp, a3, s9
                  slt          t3, t3, t4
                  srai         sp, a6, 7
                  sll          s0, a0, t0
                  sra          t0, a2, tp
                  nop
                  and          s10, s4, s1
                  srl          s1, a1, ra
                  auipc        s1, 800404
                  srl          s4, a4, s5
                  or           s11, s6, sp
                  srl          s7, s0, a6
                  lui          t4, 667285
                  and          s2, s1, t5
                  xor          t4, s6, t3
                  or           a7, tp, s3
                  xor          t0, a2, s3
                  srl          a6, a2, ra
                  addi         s4, a0, -1377
                  or           s7, s11, s3
                  add          sp, tp, a0
                  sra          ra, t0, s1
                  srai         s8, a1, 17
                  addi         a7, a6, 556
                  slli         a2, t0, 9
                  srli         ra, gp, 8
                  andi         s8, t0, -75
                  addi         t6, s10, -1718
                  sll          t2, t4, t6
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           s7, 0xffffffff
                  li           s0, 0xcc1f5c11
                  li           sp, 0xadebce39
                  li           s8, 0xffffffff
                  li           s10, 0x80000000
                  li           a4, 0x0
                  li           a5, 0x0
                  li           s1, 0x0
                  li           t6, 0x4f2d378a
                  nop
                  nop
                  auipc        s7, 1024636
                  addi         s0, sp, -1715
                  auipc        s1, 799013
                  add          s6, sp, s6
                  nop
                  add          a4, sp, a4
                  addi         s1, a5, 1833
                  addi         s1, s10, 1187
                  lui          s8, 227624
                  lui          s1, 396176
                  lui          s10, 1011803
                  auipc        sp, 133083
                  lui          a5, 694175
                  nop
                  lui          a4, 965986
                  auipc        s6, 604721
                  sub          s8, s8, sp
                  sub          s6, t6, s8
                  add          sp, sp, s6
                  auipc        s7, 201966
                  auipc        s10, 426857
                  auipc        a5, 461342
                  lui          s1, 60551
                  nop #end riscv_int_numeric_corner_stream_12
                  andi         sp, a1, 1935
                  sra          a4, s7, t1
                  andi         s2, a3, 1241
                  sra          gp, tp, s9
                  slt          s10, a4, sp
                  andi         s10, s5, 401
                  srli         s9, tp, 18
                  slti         a1, s0, -1198
                  add          a4, t2, t1
                  slt          s10, s11, s11
                  or           sp, t1, t5
                  srai         a4, s10, 13
                  xor          t2, s4, a2
                  sll          s1, a4, s9
                  sltiu        s5, t4, 1941
                  sltu         t0, t3, s10
                  xor          a7, s2, a3
                  sltiu        ra, a5, 318
                  slt          s2, t4, a0
                  sra          t3, a4, s8
                  sub          s11, s0, a4
                  slti         a7, a4, -1418
                  or           a7, s9, t6
                  sll          gp, a2, s3
                  addi         s11, a2, -1120
                  slli         ra, t6, 16
                  sub          s7, s4, t4
                  sra          zero, a3, a4
                  slli         gp, a7, 6
                  xori         a6, s5, 383
                  ori          zero, s5, 1717
                  nop
                  auipc        s5, 699453
                  add          s5, s4, t4
                  sra          a2, s4, a5
                  add          ra, t4, t1
                  slli         s4, s7, 25
                  add          s1, a6, s7
                  sra          a7, s6, t5
                  add          zero, a5, s6
                  xor          a5, a2, t3
                  slti         s2, s4, -638
                  srl          s7, s11, t3
                  lui          s3, 892076
                  nop
                  sub          s3, s0, t6
                  srai         t2, s5, 21
                  auipc        a2, 777365
                  slli         a1, gp, 2
                  srli         s8, t2, 8
                  nop
                  slt          t4, s11, s7
                  slti         a2, tp, 965
                  ori          s5, t5, -301
                  slli         a7, a4, 20
                  slti         t6, t1, -1661
                  ori          s4, zero, 160
                  sltiu        s8, s2, -756
                  sltu         t4, s11, tp
                  sll          a4, a5, t1
                  add          s5, ra, sp
                  and          s5, s0, s8
                  slt          a5, t1, a4
                  auipc        t1, 94481
                  auipc        t0, 613268
                  auipc        a2, 842929
                  nop
                  lui          t2, 864315
                  srl          s11, t4, s9
                  sub          s0, a3, t6
                  slt          s5, a7, a4
                  nop
                  sra          a2, a2, s8
                  andi         t4, zero, -1742
                  andi         a6, a7, 139
                  srli         sp, a2, 7
                  slt          t1, ra, s1
                  slli         s0, s0, 19
                  sll          s0, a4, a3
                  addi         s9, a6, 1170
                  slli         gp, tp, 9
                  srl          a5, sp, a0
                  andi         a6, a4, -806
                  sltiu        s8, s3, -1487
                  slt          t0, t6, t0
                  xori         t1, a1, 1298
                  and          s6, s6, s1
                  slli         t0, t4, 25
                  and          gp, t3, a3
                  addi         gp, a7, -313
                  slt          gp, s0, sp
                  slt          gp, a4, ra
                  xor          s11, s2, s8
                  srli         s1, s7, 1
                  xori         s5, t4, -1966
                  addi         a2, t0, -763
                  nop
                  srai         a5, s5, 14
                  srli         t4, t0, 21
                  slt          t6, a3, t1
                  slli         t0, s6, 3
                  slt          ra, s2, tp
                  sra          s5, gp, a2
                  ori          a7, gp, -1562
                  srai         s6, a5, 3
                  slti         a7, s0, -1970
                  sll          s11, s5, s7
                  xor          s2, a6, gp
                  sll          s11, tp, gp
                  sub          t5, s3, a0
                  xor          s9, zero, t5
                  sltiu        a1, gp, 144
                  auipc        zero, 846127
                  slti         s2, a1, 891
                  sll          s8, a6, t0
                  auipc        s3, 548795
                  srai         s11, zero, 8
                  sltiu        t5, a2, 985
                  andi         s8, zero, 1527
                  srl          s10, a6, a2
                  sltiu        a5, gp, 275
                  slli         s10, s10, 21
                  srli         s7, s8, 25
                  slt          s3, t1, tp
                  sra          a1, s2, s3
                  auipc        s2, 569792
                  lui          t1, 620195
                  slt          s8, s3, t6
                  sll          s2, s4, a0
                  sll          s3, s11, s9
                  or           sp, a3, s4
                  xori         s10, a2, -1034
                  sub          s11, a1, s8
                  lui          gp, 465922
                  sub          s6, a3, t1
                  andi         a2, t4, 1757
                  sub          s3, a4, s7
                  andi         s4, s2, -1724
                  srai         a7, a3, 6
                  andi         t2, s3, 1271
                  nop
                  slti         s7, t3, 858
                  srai         s8, s7, 23
                  slti         t5, a6, -1007
                  slti         s0, a1, 1145
                  lui          a6, 1041201
                  or           s11, s5, s9
                  sltiu        s11, a5, 1035
                  slli         a7, s0, 31
                  srli         t6, s1, 18
                  sra          s7, s8, s11
                  sltiu        t3, s5, 748
                  addi         t0, ra, 2002
                  and          a5, s3, s2
                  slli         t2, t4, 20
                  add          a5, t3, a3
                  slti         zero, s6, -1817
                  andi         s6, s2, -1533
                  addi         s7, s9, 534
                  sra          a5, s11, s9
                  xori         a5, a3, 705
                  auipc        a5, 831798
                  lui          s4, 228138
                  sll          t6, s1, s10
                  slti         a5, s3, -261
                  ori          s7, t6, 183
                  and          s3, sp, a7
                  sub          s3, a5, s5
                  nop
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           a1, 0xfd51e6ec
                  li           t1, 0x80000000
                  li           a2, 0xffffffff
                  li           a7, 0x80000000
                  li           s3, 0x0
                  li           sp, 0x0
                  li           t4, 0xffffffff
                  li           s7, 0xffffffff
                  li           s2, 0x0
                  sub          a1, sp, s2
                  nop
                  add          s3, sp, s2
                  add          s2, a1, s7
                  auipc        s2, 506234
                  nop
                  nop
                  auipc        s7, 687718
                  addi         s7, s2, -1770
                  addi         s3, s7, 1537
                  sub          a2, a2, sp
                  sub          s7, sp, s3
                  addi         t1, s2, -176
                  sub          t4, a7, t1
                  lui          t1, 144019
                  lui          t4, 5377
                  add          t1, t1, sp
                  auipc        a1, 140229
                  auipc        t4, 381937
                  nop
                  nop
                  add          a2, a1, s7
                  sub          s3, a7, a7 #end riscv_int_numeric_corner_stream_14
                  xori         gp, a5, -1730
                  xori         s2, s6, -1891
                  andi         a7, zero, 190
                  auipc        s10, 225535
                  and          sp, t4, a7
                  sltu         t2, s1, s2
                  auipc        s0, 1044375
                  sltu         zero, t0, t1
                  auipc        t2, 757841
                  slti         t1, s3, -356
                  add          s4, s4, s11
                  auipc        t1, 616434
                  auipc        t2, 25410
                  srli         s0, s10, 30
                  lui          t1, 775840
                  andi         s10, t1, 665
                  ori          t3, s6, -845
                  srli         s11, t6, 16
                  or           s4, t5, s9
                  srl          gp, s6, a0
                  slli         zero, sp, 26
                  slli         s0, a0, 12
                  andi         s3, t2, 163
                  ori          a1, s6, 333
                  slti         s0, a6, -1366
                  srai         s9, s9, 19
                  srai         s4, t1, 25
                  slli         s11, t1, 1
                  sub          sp, a5, a0
                  slti         s5, s8, 1166
                  auipc        s1, 510910
                  sub          gp, a6, s10
                  or           ra, ra, tp
                  sltu         ra, sp, t6
                  add          s9, s8, zero
                  sra          gp, s5, t3
                  slt          s8, a1, t0
                  sra          t6, ra, sp
                  srli         s11, t2, 21
                  slti         s3, a4, 646
                  nop
                  and          a7, t1, t1
                  sll          s3, t2, s9
                  lui          a2, 519019
                  or           s11, s1, sp
                  sltiu        t5, a0, -1932
                  addi         t5, tp, -1206
                  lui          s10, 71395
                  slt          a1, a3, s11
                  slli         a5, s1, 5
                  auipc        s2, 858817
                  xori         a6, s9, 1361
                  srai         t2, s5, 21
                  sltu         s5, a0, s8
                  xori         s2, s10, 1525
                  sll          s2, s7, t5
                  srli         s9, a0, 31
                  srl          t3, t5, a2
                  ori          a7, s1, 532
                  addi         s8, s9, 1005
                  slti         t5, s6, -1768
                  srai         s0, a6, 25
                  andi         gp, gp, -1288
                  slt          s10, ra, s10
                  auipc        t6, 392283
                  lui          s7, 893184
                  and          t6, t2, a0
                  or           a7, a5, s5
                  addi         s2, a6, -916
                  slti         s4, s0, -1470
                  andi         s4, s3, -1259
                  and          s0, a2, s9
                  sub          t5, s7, s4
                  xori         s9, s1, 278
                  nop
                  slli         s9, gp, 13
                  ori          t5, ra, 2008
                  sltu         s3, a1, s8
                  addi         s8, a5, 1207
                  xori         a2, a4, -1623
                  srl          s7, gp, a2
                  lui          gp, 217588
                  sltu         t3, s10, a4
                  xori         s1, s9, 263
                  sra          t3, s2, t0
                  srai         t6, s4, 14
                  auipc        sp, 183327
                  lui          s0, 211245
                  slt          s2, s9, s0
                  sltu         s11, ra, s10
                  sltu         s9, a7, s9
                  auipc        s6, 656552
                  slt          s1, a7, a1
                  addi         a6, zero, 1238
                  ori          s2, a0, -1093
                  xori         a5, tp, -981
                  srai         s3, s10, 0
                  srai         t1, t1, 16
                  sltiu        a7, s3, -866
                  addi         t4, t0, -1774
                  sub          s3, s9, a3
                  and          s8, zero, s1
                  xor          a6, t4, s6
                  sra          t0, sp, s8
                  ori          a5, s2, -720
                  sra          a2, gp, a5
                  slli         s6, tp, 8
                  xori         t5, t1, 635
                  sll          t5, t2, s4
                  sll          s10, s11, s4
                  addi         a6, s9, -291
                  slt          s1, s2, s5
                  andi         t1, s11, 1538
                  sltiu        a7, a3, -856
                  lui          s7, 635092
                  slti         s8, a6, 1008
                  andi         t4, s6, 747
                  sra          t4, t6, t4
                  slli         t6, a7, 23
                  xor          gp, s5, a7
                  srai         s0, s3, 30
                  slt          a5, gp, a3
                  nop
                  slti         t2, s11, -430
                  slt          s11, s6, s3
                  sltu         sp, tp, a1
                  slli         t2, a0, 11
                  lui          s5, 291709
                  addi         s2, a1, -678
                  sltiu        sp, s10, 1603
                  srai         s11, a5, 15
                  xor          s2, s11, s10
                  or           s2, a6, a3
                  andi         s8, s3, -538
                  add          t3, t5, s7
                  sltiu        s8, a2, 340
                  addi         s9, a0, -1986
                  or           sp, s6, s8
                  slti         s11, t2, -1993
                  slt          t1, t6, ra
                  sra          t4, t0, s5
                  add          s0, t5, a5
                  srli         t5, a5, 29
                  nop
                  sub          s9, s4, a3
                  srai         s2, a4, 10
                  addi         s8, gp, -857
                  sltiu        t0, t2, -851
                  slti         s3, t0, 1482
                  xor          t6, s10, s10
                  srai         a7, t2, 17
                  or           t3, s1, t6
                  or           sp, s2, t4
                  sltu         a7, t6, s1
                  xori         s11, a7, -568
                  sub          s8, s1, s3
                  sltu         a2, t6, a2
                  addi         a5, s4, 161
                  sra          a1, a1, s9
                  auipc        s3, 803398
                  ori          s3, s5, 739
                  sub          a2, s10, s2
                  srl          s4, a6, a2
                  slli         a6, s6, 7
                  add          a7, t2, a7
                  sub          a2, a2, a7
                  slti         s0, s6, -1323
                  sub          a6, gp, s0
                  and          t5, s6, s2
                  xori         a2, s1, -2
                  srai         s9, tp, 28
                  auipc        sp, 273661
                  slli         gp, s5, 14
                  addi         t3, a2, -1176
                  sra          a1, t2, t1
                  sll          t6, s9, s5
                  sll          t0, a3, t4
                  add          t5, t5, s7
                  srl          gp, s1, s10
                  ori          a2, s11, 1630
                  srl          s0, zero, a1
                  srai         gp, a4, 26
                  sub          ra, tp, s3
                  sltiu        a1, a6, -706
                  ori          a2, zero, -161
                  sltu         s1, a3, zero
                  ori          t6, t6, -19
                  sub          a4, s6, s0
                  xor          ra, a1, a1
                  slli         a5, t2, 14
                  slli         zero, s5, 19
                  xor          s1, ra, a7
                  addi         a1, a1, 289
                  nop
                  sll          s3, s3, s10
                  sra          s6, t1, s5
                  slli         s6, t5, 8
                  nop
                  or           s7, s8, a1
                  ori          t5, a6, -1401
                  auipc        s0, 489718
                  and          s6, s2, a0
                  srli         zero, t4, 3
                  andi         s0, s9, 1665
                  or           t4, t6, a3
                  auipc        t3, 1027419
                  sra          a6, t4, t5
                  nop
                  ori          a6, a3, 627
                  ori          s8, s10, 487
                  lui          t0, 362610
                  sltu         a6, a4, s0
                  slli         a2, ra, 13
                  auipc        s1, 683246
                  srli         s5, a4, 1
                  sltiu        sp, a7, 1975
                  slt          t2, a1, t3
                  sra          s8, s10, s8
                  slti         ra, s0, 97
                  slti         s0, s1, -1342
                  lui          a2, 682824
                  lui          sp, 361937
                  auipc        t4, 228987
                  auipc        t5, 739770
                  srai         s2, sp, 20
                  addi         s10, a0, -1587
                  nop
                  and          a1, s10, gp
                  auipc        ra, 2575
                  slti         a5, s11, -24
                  and          s5, sp, ra
                  addi         s10, s10, -513
                  nop
                  andi         a1, sp, 816
                  nop
                  sll          s7, t6, a4
                  nop
                  addi         a6, s3, 1147
                  auipc        a2, 342093
                  ori          s6, s3, 231
                  ori          t6, s3, 351
                  or           s2, s4, s7
                  addi         s8, a0, 1049
                  sra          gp, s8, t4
                  ori          a5, a7, 45
                  xor          a2, a4, s2
                  auipc        s1, 886177
                  xor          zero, sp, s6
                  or           s7, s11, s6
                  slt          s10, a3, t4
                  sra          t0, s6, s9
                  and          a4, a7, s5
                  sll          s7, s1, t6
                  sltiu        a7, a1, -1203
                  andi         zero, s5, -1799
                  add          t6, tp, s0
                  lui          s6, 196173
                  xori         a6, t3, -1529
                  srai         s2, ra, 9
                  slt          s10, a3, sp
                  xori         s6, t5, 202
                  sltu         s4, s1, s9
                  xori         t0, s11, 477
                  sltu         s1, t1, s5
                  sltu         s6, a4, s2
                  or           a7, zero, a5
                  nop
                  xori         s9, t6, -1836
                  sltu         s1, s2, t0
                  srli         a6, t5, 15
                  sltu         a4, s6, a5
                  and          t2, s9, s10
                  sll          s7, t0, s0
                  ori          s3, a5, 1754
                  lui          s9, 347841
                  andi         gp, a2, -1721
                  nop
                  xor          t0, ra, s0
                  addi         t0, zero, -811
                  auipc        a7, 815490
                  lui          a2, 620941
                  sra          sp, s6, s2
                  slti         t4, s2, 2003
                  slli         a7, t3, 7
                  nop
                  addi         s5, s7, 62
                  slli         s4, a0, 15
                  or           s8, s9, a3
                  and          t6, a3, t2
                  sra          s3, t6, gp
                  srl          t6, s6, t3
                  sll          s7, t0, a2
                  sra          s2, s2, a1
                  sltu         ra, t1, s10
                  srli         s9, t1, 21
                  slli         s10, a7, 18
                  sra          a5, a3, a0
                  slti         sp, t4, -1862
                  srai         t4, s7, 29
                  srl          t4, gp, ra
                  nop
                  ori          s1, t2, 844
                  or           a2, s2, gp
                  or           t6, a7, tp
                  slt          a1, a6, t1
                  add          t3, ra, s10
                  srli         zero, s6, 4
                  sra          zero, tp, s11
                  and          t4, t4, s5
                  add          t1, s7, s3
                  slt          s5, s3, a4
                  srli         s8, sp, 23
                  addi         s8, t4, -358
                  sra          s11, tp, a4
                  andi         a7, t6, -1471
                  nop
                  slt          s8, t6, a1
                  sltu         s11, a0, t3
                  auipc        ra, 155303
                  srl          s3, s10, s0
                  slt          a6, sp, s7
                  srai         zero, a6, 2
                  ori          s10, s9, 597
                  slli         a4, gp, 23
                  or           zero, s11, ra
                  srl          s10, s9, s11
                  xor          gp, s4, t3
                  add          s1, a7, s4
                  add          s8, s11, s7
                  srai         a1, s8, 15
                  and          gp, t5, s5
                  xor          a2, t1, s7
                  xor          s5, s10, tp
                  sra          a7, s7, t0
                  nop
                  ori          t2, s1, -733
                  sltu         s0, a4, t3
                  auipc        s11, 681610
                  sltu         s10, s9, a0
                  srl          t1, s7, s4
                  sltu         s4, tp, t2
                  add          s4, t5, t1
                  slli         s6, a3, 16
                  addi         a2, s11, 338
                  sltu         t6, s1, a4
                  srli         ra, a7, 3
                  slt          s2, ra, s7
                  and          s0, s10, s2
                  srl          s0, s4, t2
                  sltiu        a4, ra, -107
                  sll          a4, ra, t3
                  slli         s3, a3, 15
                  lui          sp, 557771
                  srai         zero, s8, 29
                  xori         s10, a4, 739
                  srli         s2, t4, 2
                  addi         t1, a0, -1208
                  sra          a5, s9, t6
                  and          s5, s2, t5
                  xori         t1, tp, -978
                  xori         t6, t2, 348
                  xori         s10, ra, -651
                  srli         a4, t6, 28
                  xor          s0, s3, s10
                  andi         s10, t4, 226
                  slt          a2, s3, s2
                  slt          a6, s6, a0
                  sltu         t0, t3, s7
                  xor          a6, gp, a3
                  addi         t2, s2, 1714
                  add          t6, s0, s1
                  slli         s9, tp, 4
                  srl          a2, s11, t2
                  sub          a7, a0, a2
                  lui          s3, 184604
                  sll          t5, s3, a2
                  sub          t5, sp, ra
                  nop
                  addi         t6, a4, -1862
                  xor          sp, s10, s5
                  sltu         s1, s7, t0
                  sltu         t3, t5, a3
                  sub          t5, t6, s9
                  srl          s10, a4, s6
                  lui          s9, 946648
                  sltu         s9, sp, a1
                  lui          s2, 163115
                  sltiu        s7, s2, 1189
                  srl          a2, a1, t4
                  or           a5, gp, s8
                  auipc        a2, 273260
                  ori          s1, tp, -351
                  addi         a2, s2, -1440
                  sra          s7, a1, t1
                  srli         s8, s10, 27
                  andi         s11, s4, -1975
                  srli         ra, a7, 15
                  nop
                  xori         s10, a2, -314
                  and          s2, s9, s8
                  srli         sp, s0, 26
                  slli         t6, s8, 1
                  xor          gp, t5, a5
                  sltiu        s0, a7, -662
                  srl          a7, s6, a6
                  or           s9, a2, s7
                  or           a2, s8, s11
                  xori         s5, t1, 389
                  srl          ra, a2, s6
                  nop
                  andi         a1, a7, 1897
                  xor          t1, tp, s8
                  sltu         a5, a5, a1
                  slt          s9, a1, t3
                  auipc        s11, 349815
                  lui          t5, 841386
                  xori         s6, s9, -695
                  slti         ra, t5, -442
                  slt          s3, t1, s9
                  sra          zero, a3, t4
                  sltiu        t5, t6, -1363
                  srl          s4, s10, t3
                  nop
                  and          t1, a7, zero
                  auipc        s7, 760019
                  or           a6, sp, s3
                  sltiu        t2, zero, -1837
                  xori         s5, s8, -1282
                  nop
                  addi         s8, s5, 719
                  srli         a7, t2, 15
                  slli         t1, a0, 7
                  srai         sp, zero, 4
                  slti         s8, s6, 1186
                  sltiu        s8, s2, 1366
                  slt          zero, s6, s0
                  slt          a4, s2, a3
                  xori         zero, s11, -1563
                  nop
                  sltiu        t3, s1, 1899
                  add          a7, a6, zero
                  slti         s3, sp, -717
                  ori          a4, a2, -115
                  or           a5, sp, a5
                  srli         ra, ra, 23
                  slti         t1, a5, -976
                  andi         t6, s1, -1957
                  xori         a7, a6, -896
                  slti         t3, t1, 780
                  addi         s4, s2, -1029
                  xor          t2, a6, ra
                  sltiu        a7, s9, -1699
                  sltiu        a7, gp, -498
                  xor          a7, t2, s11
                  add          a1, t5, a5
                  andi         a7, a2, -228
                  nop
                  slti         a4, s11, 413
                  xor          s3, a7, tp
                  sub          zero, s11, s9
                  auipc        a1, 823494
                  ori          t0, a5, 1984
                  or           s11, a1, s5
                  sra          s4, t1, a4
                  sra          a7, t0, t0
                  sltiu        s4, t2, -1568
                  and          s6, t4, a3
                  and          s0, s10, zero
                  slti         s11, s2, 1463
                  srl          t1, t5, a1
                  addi         s7, a7, -2043
                  or           t5, t0, s1
                  slli         s0, a6, 8
                  srl          a5, t6, s7
                  slt          sp, a4, t0
                  srai         sp, s4, 14
                  sltiu        gp, a1, -627
                  sra          s11, a5, a7
                  xor          s11, gp, s6
                  srl          a1, t6, zero
                  slti         a7, tp, -1954
                  andi         s8, t6, 1950
                  sltiu        a2, t0, -1806
                  sub          s3, a7, t1
                  sltiu        s4, s7, -1841
                  andi         s7, s6, 796
                  andi         t2, a5, 2000
                  lui          a4, 571238
                  slti         t2, a2, 1139
                  srai         gp, a3, 26
                  and          a4, sp, gp
                  add          s2, t3, t5
                  sub          t2, a2, s3
                  nop
                  auipc        t6, 277337
                  srai         s1, t0, 13
                  sub          ra, sp, zero
                  xor          t6, t5, a2
                  slt          s11, a6, a0
                  or           t1, s10, t1
                  slt          s11, s6, a3
                  and          gp, t2, t5
                  ori          a5, a2, 457
                  or           s1, gp, s6
                  slt          s4, a7, a5
                  xori         s8, s2, 1584
                  auipc        t1, 416611
                  and          s11, t0, gp
                  auipc        s8, 347365
                  andi         a2, t5, -1585
                  sltu         t0, s3, tp
                  sll          t2, t5, s3
                  srai         t4, s6, 1
                  srl          s10, t5, a0
                  sra          s6, zero, s3
                  sub          t0, zero, a0
                  srai         s4, s5, 28
                  auipc        s9, 279878
                  or           t2, t5, t3
                  slli         s10, ra, 30
                  sub          s10, s6, s3
                  andi         t3, t4, 1156
                  xori         t0, t6, -2016
                  slti         sp, t5, 1370
                  addi         a7, s0, -177
                  sra          s2, a3, s8
                  lui          s9, 1018188
                  nop
                  auipc        s1, 695939
                  add          a7, t5, t4
                  srl          s3, sp, t0
                  auipc        gp, 352075
                  ori          s9, a4, 357
                  nop
                  add          s0, a2, t4
                  srli         s9, zero, 29
                  auipc        gp, 600474
                  lui          s1, 664741
                  nop
                  lui          s1, 728040
                  add          t3, a5, t1
                  srli         t4, tp, 12
                  srli         sp, a0, 5
                  and          s4, a5, s9
                  sll          s3, s4, gp
                  sra          s8, t6, s7
                  srl          sp, a3, s10
                  sll          t1, gp, a3
                  auipc        s9, 1006120
                  sub          a7, s4, zero
                  lui          a4, 100428
                  and          t4, s8, s4
                  sltiu        s11, t3, 915
                  sll          s8, s7, zero
                  ori          t3, s7, -1743
                  addi         sp, s7, -1872
                  add          s6, t2, s5
                  andi         ra, a2, -1870
                  lui          s4, 838063
                  srai         s5, s4, 8
                  addi         t3, t3, -700
                  sltiu        t6, s8, 274
                  add          s11, a7, s6
                  srai         t5, s4, 8
                  sll          a7, t4, a5
                  sub          a5, s2, t0
                  sra          s4, s0, s5
                  slli         s3, t5, 11
                  sltu         s3, t2, t4
                  auipc        s1, 235728
                  srl          ra, a7, gp
                  addi         t4, a1, -338
                  or           s11, t0, t4
                  sub          t1, s8, a2
                  xor          t3, s2, t5
                  slli         t4, ra, 2
                  auipc        s1, 749955
                  add          s10, a4, s5
                  or           t2, s5, a5
                  slti         zero, t6, 1517
                  srli         t0, t3, 19
                  lui          s3, 815729
                  xori         s2, t0, 1864
                  nop
                  sll          t4, t2, s5
                  srli         s8, s8, 5
                  nop
                  or           s2, s9, gp
                  slt          t3, a0, a3
                  xor          t3, a0, s10
                  sub          s6, a4, s2
                  srai         t4, s6, 14
                  srl          s6, a4, s4
                  and          a1, s9, tp
                  lui          a7, 545418
                  nop
                  slt          s6, ra, s2
                  srai         t4, s2, 2
                  sll          s3, a2, a1
                  xor          s10, s5, zero
                  srai         s1, a7, 15
                  sltiu        s10, s10, 1527
                  lui          gp, 908976
                  addi         t1, s4, 412
                  slt          a1, t4, t2
                  sll          a5, s5, a0
                  slt          s3, t0, s4
                  xori         gp, s11, -1981
                  add          t6, s1, s2
                  srai         s10, t5, 12
                  sub          t6, sp, s5
                  andi         a4, t5, -1148
                  nop
                  sltiu        zero, s7, 396
                  slli         s9, s6, 11
                  srli         gp, s7, 9
                  slti         s9, s5, 1853
                  add          s0, sp, t4
                  xor          a5, a4, a7
                  slt          a6, a0, s2
                  nop
                  xori         ra, s5, -24
                  srli         a7, a1, 3
                  xor          a2, s4, t1
                  sltiu        s10, a5, -64
                  nop
                  or           a4, tp, s0
                  ori          gp, a3, -888
                  sltiu        t6, s0, -985
                  sub          s0, s5, a0
                  xori         s1, t4, 49
                  ori          s5, t5, 1954
                  or           s10, s11, t6
                  srai         t3, s7, 17
                  sltu         t0, gp, a1
                  ori          t0, t2, 465
                  slti         s1, a5, 1911
                  slti         t3, zero, 1264
                  addi         s8, a6, 1041
                  andi         t5, tp, -986
                  or           t6, s5, t6
                  or           sp, ra, s8
                  ori          t2, s3, 1030
                  auipc        t6, 509257
                  sub          a6, sp, t3
                  srl          t2, a6, t0
                  srli         s2, t0, 0
                  sltiu        t5, s8, 949
                  and          s6, t2, a6
                  add          s11, s8, ra
                  and          t5, s4, s6
                  srl          s4, t3, s11
                  add          t6, t4, zero
                  andi         t4, sp, -767
                  add          t4, t6, s3
                  sll          s2, s9, s11
                  srli         ra, s2, 29
                  xori         s2, s0, -2040
                  slti         s11, a2, -1218
                  andi         a7, a3, -1103
                  slt          s10, ra, s6
                  sltiu        zero, s3, -1745
                  addi         zero, s11, -1124
                  andi         s11, t0, -1128
                  srli         t2, t0, 2
                  or           a2, a6, s10
                  and          t4, a0, a3
                  xor          s7, s2, gp
                  and          t1, t6, a2
                  auipc        s2, 367904
                  or           s8, gp, t1
                  xor          a7, tp, t2
                  nop
                  xori         s4, t0, -407
                  sltiu        s11, tp, -702
                  lui          a4, 253697
                  sltu         s1, t1, s7
                  xori         s6, a1, -1392
                  sltu         a6, ra, a5
                  nop
                  sra          a6, a1, s5
                  sll          s0, s6, sp
                  lui          t4, 67007
                  sltiu        t4, s6, -1422
                  auipc        a4, 1008539
                  slt          a6, t4, s8
                  xori         t5, t2, -1796
                  slli         s1, s5, 16
                  xor          s4, t6, s1
                  addi         t4, s2, -1363
                  addi         s7, s0, -998
                  or           ra, s10, tp
                  slt          t6, t5, a4
                  slti         a5, ra, 1394
                  sub          t0, a5, t4
                  sll          zero, t3, zero
                  lui          t5, 251254
                  sra          s9, s2, a7
                  sltiu        s2, s8, 1900
                  slt          a1, s0, s0
                  slti         a6, s1, -578
                  slli         t5, s0, 15
                  sltu         t1, s10, t4
                  srai         t5, s10, 22
                  and          s5, s1, ra
                  lui          s10, 484814
                  slti         sp, s10, -368
                  srl          t2, s2, t5
                  sra          a4, a0, t2
                  ori          a2, s9, 1805
                  xori         a2, t0, -1885
                  slti         ra, a3, 1082
                  xor          t6, s3, s5
                  addi         zero, a6, -1202
                  nop
                  xor          a7, t0, a1
                  srli         sp, t4, 10
                  xor          a2, s2, t5
                  sub          t0, s1, t3
                  xori         a5, a0, -1280
                  sltu         s2, t5, s11
                  auipc        gp, 203187
                  addi         s10, s11, -1623
                  auipc        t5, 801185
                  nop
                  ori          s6, a6, 472
                  sltiu        s8, a5, 2006
                  srai         t5, a7, 0
                  xori         s1, s8, 1797
                  add          a2, ra, s5
                  or           t5, s5, t3
                  srl          s11, tp, a7
                  lui          s11, 206706
                  auipc        s7, 761540
                  sltiu        s8, tp, -202
                  slli         s8, tp, 15
                  add          zero, t0, s0
                  sra          s8, s9, s6
                  nop
                  slli         t0, t5, 15
                  xor          s0, s4, sp
                  or           ra, a4, t1
                  ori          a1, s9, 1876
                  and          t3, s7, s6
                  xori         a6, a2, 995
                  sll          t6, t5, t3
                  slt          s4, tp, ra
                  addi         s2, a1, 1541
                  auipc        a5, 413276
                  add          s5, s5, s7
                  and          s5, a2, s9
                  sltiu        s9, sp, -1949
                  or           gp, s2, t2
                  srl          t0, a0, t4
                  sub          s10, t6, s10
                  slt          a5, s2, t1
                  nop
                  sltiu        s1, s9, 489
                  xori         s9, t4, -1858
                  slt          t1, a7, a0
                  auipc        a5, 633626
                  or           t4, t5, s10
                  ori          s6, t3, -112
                  andi         a7, a1, -290
                  xori         s8, t3, 1428
                  add          s7, a2, sp
                  sub          t3, s10, s7
                  srli         ra, t1, 31
                  and          s4, a5, t5
                  andi         s9, s0, -19
                  slti         s5, a2, -829
                  srai         t6, ra, 30
                  nop
                  nop
                  and          s7, t0, sp
                  sra          t0, a1, a2
                  xori         a7, a4, 945
                  lui          s3, 37036
                  or           s1, a6, a1
                  xor          s8, t2, s2
                  sltu         s11, tp, s7
                  sltu         a2, a1, s10
                  andi         s8, s2, 526
                  ori          a2, s11, 1290
                  srli         sp, s7, 29
                  add          t6, t0, s10
                  andi         t6, a7, -1825
                  srai         a6, s0, 10
                  andi         a5, s1, 852
                  nop
                  sll          t5, s7, s5
                  sltu         zero, s6, s10
                  auipc        s4, 953486
                  addi         a5, t0, 1615
                  nop
                  slti         s10, a7, 824
                  slt          s6, zero, sp
                  xor          t3, t0, s1
                  srai         s1, zero, 24
                  andi         s9, gp, -424
                  xori         s3, t3, -609
                  or           gp, a5, s4
                  and          s4, s9, t0
                  slli         t5, s10, 11
                  and          s5, tp, s8
                  slti         s4, s4, -1930
                  slti         s6, s10, 267
                  and          t5, sp, t6
                  slt          sp, a6, s8
                  andi         a6, ra, 817
                  srli         s11, t2, 1
                  xor          zero, s11, t3
                  andi         zero, s8, -1300
                  slt          s11, sp, t6
                  lui          s3, 915677
                  add          a4, s4, s2
                  auipc        a4, 605490
                  slti         ra, a6, 353
                  ori          sp, a2, -1620
                  auipc        a1, 386753
                  xor          s4, t1, t1
                  slt          s10, tp, t0
                  srai         s3, a3, 14
                  sll          ra, t6, t0
                  sltu         zero, s1, a6
                  sra          s0, sp, s3
                  ori          t0, t0, 1919
                  andi         a1, gp, 1068
                  sll          s4, ra, s8
                  xor          s0, a1, s1
                  addi         s1, s10, 460
                  sltu         t2, a7, a7
                  or           a4, a0, a3
                  sltu         s4, s10, a7
                  sra          t1, a4, gp
                  xor          t1, a1, ra
                  andi         s10, s0, -478
                  and          s5, t0, s9
                  lui          a4, 556730
                  srai         s1, t0, 19
                  nop
                  lui          t0, 936824
                  slli         s4, s7, 28
                  xori         ra, a0, -903
                  andi         t4, a6, 1425
                  sra          s6, zero, zero
                  slt          s9, s3, t2
                  slti         t5, t6, 1238
                  lui          a4, 404348
                  andi         s11, a7, -396
                  sll          s10, t3, t5
                  sub          t4, s3, s10
                  slti         s1, a5, -1359
                  or           s0, s7, s1
                  slti         t0, zero, 1815
                  addi         sp, t2, 1200
                  xor          t2, t0, s4
                  slt          s3, tp, s2
                  xori         s8, a5, -793
                  slli         s4, t0, 24
                  and          s7, a1, s11
                  sltiu        ra, s9, 1718
                  srli         t0, s5, 17
                  srai         s11, a0, 6
                  slti         s9, a6, -969
                  sltiu        s5, a0, -161
                  srai         t6, a3, 28
                  srli         a7, s8, 17
                  xor          s10, s7, t5
                  xor          gp, tp, a4
                  add          a1, t2, a7
                  sltu         s10, s4, a6
                  sltiu        t5, a3, -1142
                  slt          s4, a1, s1
                  or           t3, t5, s3
                  sltu         a2, tp, a1
                  sub          zero, tp, s8
                  sra          t6, s9, s3
                  srli         s10, t4, 28
                  and          t4, a0, s6
                  sll          t4, s4, t0
                  srai         a4, s10, 14
                  xor          s7, a1, s7
                  xori         t1, a3, -517
                  or           zero, s6, t0
                  sub          a5, s6, t6
                  nop
                  srai         t2, a3, 17
                  addi         a4, a1, -960
                  and          s2, s5, gp
                  srl          gp, s9, s5
                  nop
                  addi         s4, a4, -1192
                  addi         a7, a2, -210
                  or           s6, a6, t1
                  srai         s4, t2, 15
                  auipc        s0, 322447
                  slli         s7, t5, 6
                  sltiu        s6, t0, 299
                  srl          s7, zero, ra
                  xor          s2, t5, gp
                  srl          ra, s0, s1
                  or           gp, t0, zero
                  slt          s4, a5, sp
                  or           zero, t3, s4
                  andi         a7, t5, -1634
                  slt          s2, a3, t1
                  xor          t2, s1, t6
                  sub          s6, a1, a2
                  sub          a6, s5, a7
                  slt          t1, s4, s10
                  or           zero, a7, sp
                  sltiu        t3, s9, -1046
                  add          s2, t6, s2
                  slti         s0, a4, -786
                  slli         s5, t0, 8
                  slli         s11, t1, 17
                  addi         s10, a4, 1700
                  xor          t5, s2, t4
                  sub          a1, a4, t0
                  addi         s11, a0, 1704
                  or           s5, a3, s10
                  xor          t2, a3, s5
                  sub          zero, s2, zero
                  srl          t0, s9, s11
                  slli         gp, t5, 29
                  nop
                  sltiu        s11, t6, 1085
                  srl          s7, t4, t0
                  or           a4, s1, a6
                  and          s10, s0, s11
                  slti         s4, t5, -1946
                  xor          s7, a7, gp
                  lui          t1, 902492
                  srli         s3, ra, 17
                  addi         s6, s9, -695
                  srai         t6, s11, 17
                  auipc        s1, 547918
                  xori         zero, t2, -1814
                  andi         t6, s3, -1918
                  addi         a4, a0, -1347
                  and          a2, t5, s5
                  sll          a2, s11, t5
                  ori          t1, t5, -250
                  slti         t4, s3, -766
                  srl          s0, s6, t5
                  srli         s4, t6, 17
                  srli         s3, t1, 20
                  sra          t6, s5, s2
                  sra          a1, a7, a7
                  lui          s10, 856826
                  sll          s2, zero, ra
                  lui          zero, 736930
                  sra          s3, a6, s10
                  slli         t0, s4, 17
                  auipc        s10, 10313
                  xori         s4, s0, -1543
                  add          s4, s7, s1
                  add          t4, tp, tp
                  and          s8, s9, a2
                  srl          s6, a6, gp
                  and          t6, t1, s7
                  sltiu        t6, s6, 849
                  slt          s1, ra, gp
                  or           a7, sp, t6
                  and          t5, t5, t1
                  or           s0, s4, a3
                  srli         sp, t3, 15
                  srl          t1, a0, s6
                  slt          a4, a3, t1
                  srli         s10, a5, 16
                  xori         s10, s1, 198
                  srai         a6, a2, 27
                  sub          s9, s9, zero
                  auipc        s4, 306320
                  andi         ra, t4, -1886
                  sll          gp, tp, t0
                  or           s3, s9, t6
                  sltiu        s10, t4, 677
                  and          s7, t2, gp
                  xor          a5, t0, a4
                  add          s3, ra, t6
                  lui          t0, 669854
                  slli         s5, tp, 10
                  ori          s9, s11, -1175
                  srai         s5, a1, 27
                  xor          a2, a2, ra
                  or           t3, s1, t6
                  srli         a4, t1, 15
                  and          s2, t2, s11
                  sub          a6, gp, a5
                  slt          a1, s8, s6
                  sub          t2, ra, s5
                  sub          a4, s8, s2
                  sra          a7, a6, a4
                  sll          t5, a0, s0
                  srl          t5, a3, t4
                  sltiu        t2, s6, -1848
                  or           t3, s3, s10
                  slti         t6, s7, -1874
                  auipc        s7, 376454
                  ori          a6, a2, 241
                  xor          t3, s6, s4
                  slli         a1, s7, 7
                  slti         a4, a5, 451
                  sltiu        s5, s8, 1624
                  srai         a6, t6, 24
                  slt          s7, s7, t2
                  slt          a5, a6, t1
                  sub          s10, s5, a6
                  xori         a1, tp, -114
                  srai         s6, s0, 17
                  sltiu        zero, sp, -95
                  slt          a4, t0, s1
                  srl          a7, s5, s11
                  nop
                  nop
                  andi         s8, t1, -1745
                  slt          s2, gp, s3
                  sll          a1, t1, s4
                  srl          a4, a3, zero
                  slli         a2, t0, 26
                  auipc        s2, 414475
                  sltu         t6, zero, s7
                  auipc        a5, 157203
                  srl          sp, gp, a7
                  slli         t3, s9, 24
                  nop
                  sll          s3, a3, t1
                  xori         s1, s10, -994
                  slt          s7, s9, a4
                  sll          t2, t5, s1
                  slli         t5, a1, 17
                  slti         s7, a3, -972
                  nop
                  sltu         s3, t1, t4
                  sub          a5, a2, a1
                  srai         s8, a4, 30
                  srai         a2, s5, 14
                  or           a2, t2, t1
                  sub          a7, s6, tp
                  sltiu        s1, a1, 607
                  ori          s3, s5, 43
                  addi         a4, s10, -1527
                  ori          s6, a7, 1279
                  lui          s3, 185821
                  srl          s7, a2, a0
                  add          t5, a3, s7
                  and          s8, a3, t6
                  lui          t1, 806518
                  slli         s2, a6, 14
                  auipc        s0, 242455
                  slti         s4, s3, 21
                  addi         s4, a4, 1399
                  slti         a2, a2, 72
                  sltiu        s5, sp, -1607
                  xori         gp, a4, -607
                  nop
                  ori          t5, t3, 462
                  srl          s3, a1, s4
                  srli         a2, a6, 2
                  srli         zero, s8, 17
                  add          s0, a0, a4
                  auipc        ra, 474823
                  and          s1, t3, a6
                  sltu         s6, s8, a2
                  nop
                  slti         t6, a0, -1759
                  ori          t5, s9, -1319
                  slt          a4, t4, s3
                  addi         a6, t4, 1841
                  srli         s9, a0, 11
                  slli         s2, t4, 11
                  xori         s8, s8, -422
                  lui          t0, 312074
                  srai         s6, a0, 28
                  sltu         ra, a4, a4
                  nop
                  and          gp, a3, s6
                  nop
                  slt          t5, a3, t4
                  sll          s5, a1, t1
                  ori          t4, s4, 464
                  slt          t0, zero, a4
                  add          s6, a3, s0
                  slti         s3, t3, 118
                  and          s2, a2, tp
                  sra          gp, s11, s2
                  sra          a5, a7, t5
                  slti         t6, s3, -1685
                  nop
                  slt          s10, a7, a4
                  xor          t5, t1, t6
                  addi         s8, t5, -1900
                  sll          gp, a3, s8
                  add          s4, gp, t3
                  srl          s6, ra, s0
                  sltu         gp, s4, s7
                  sub          s5, t1, a1
                  sltiu        s6, s5, -113
                  srl          t3, ra, s11
                  or           s8, ra, s4
                  sub          s11, gp, s8
                  slli         s7, s6, 26
                  auipc        a4, 1031611
                  add          a7, s3, s6
                  addi         gp, gp, -116
                  add          s2, s1, t3
                  sub          s2, a7, a6
                  or           s3, a7, ra
                  sltiu        s1, s5, -346
                  srl          s10, s7, t3
                  srli         s9, a0, 24
                  xor          s10, a6, a0
                  xor          a4, a4, a3
                  ori          s11, s4, -646
                  auipc        s5, 760617
                  ori          a7, s3, -708
                  sltiu        t0, s5, 1979
                  or           s1, t4, s4
                  sub          a7, t4, a3
                  sltiu        t1, s10, -1472
                  and          a1, a2, a6
                  and          t4, s1, t5
                  nop
                  nop
                  sll          zero, a6, s9
                  sltu         s11, a7, a6
                  srli         t3, tp, 16
                  auipc        ra, 443795
                  sltiu        a4, a3, -1781
                  lui          ra, 169246
                  addi         gp, t6, -495
                  sub          s5, s10, gp
                  xor          zero, tp, t1
                  slt          t3, s6, s7
                  sra          s0, t5, a4
                  sll          a4, sp, s7
                  nop
                  sra          ra, sp, a6
                  srli         t4, a5, 19
                  andi         s5, a2, 1658
                  sltiu        s4, a5, -1415
                  srai         s10, a2, 20
                  xor          s0, ra, t4
                  slt          zero, t1, sp
                  xor          s1, tp, t5
                  slti         t2, a5, 770
                  addi         t4, a7, 865
                  sra          a2, s1, s4
                  xor          s5, t6, t5
                  srai         s6, t6, 9
                  slli         gp, s7, 15
                  and          t2, s2, tp
                  slti         t2, a1, 1097
                  srli         t6, t2, 17
                  sub          s2, a2, t6
                  addi         s9, s0, 1378
                  or           s1, s8, ra
                  slt          t2, s11, s5
                  and          ra, ra, t5
                  or           t5, s8, tp
                  lui          a5, 325923
                  andi         zero, t1, -1497
                  sra          s7, s10, s3
                  auipc        t2, 389255
                  auipc        gp, 1000828
                  auipc        t2, 172925
                  auipc        a4, 887163
                  srl          s1, s7, gp
                  sll          t0, s10, s8
                  slt          s7, t5, s0
                  srai         a5, s6, 19
                  xori         s9, a7, -1784
                  add          ra, t5, t5
                  srl          s7, t0, t2
                  slt          a5, t0, s8
                  or           gp, zero, t2
                  srli         a1, a7, 31
                  slli         s4, s5, 30
                  addi         s1, sp, -855
                  srl          s0, a5, t5
                  srl          t4, t1, s6
                  lui          t0, 371950
                  ori          t5, t5, 492
                  ori          s4, s10, 1671
                  slti         s11, t5, -1854
                  andi         s2, a0, -1500
                  and          s10, tp, s1
                  srli         s0, a5, 25
                  ori          s6, a0, 1142
                  nop
                  addi         s2, t5, 1779
                  xori         t5, s8, -1438
                  ori          s1, s4, -994
                  lui          s7, 119007
                  nop
                  ori          t5, ra, 1164
                  andi         s4, a0, -1483
                  sll          a6, s11, a6
                  auipc        t2, 224293
                  sub          a2, a4, s8
                  ori          sp, s9, -622
                  srli         t5, t4, 22
                  srl          s3, a2, s10
                  sra          s6, t3, s2
                  xor          s11, a6, zero
                  slli         s3, s4, 3
                  slt          s11, t6, s6
                  slt          s10, sp, s10
                  add          a5, s9, a5
                  slt          a1, a7, s6
                  and          t4, t2, s10
                  srli         t6, s8, 17
                  srl          a6, t5, s2
                  srl          s11, gp, s11
                  andi         t1, s3, -1839
                  add          s10, a3, t5
                  slt          a6, a4, s0
                  nop
                  or           a5, s2, t2
                  xori         s0, gp, 507
                  xori         a5, t5, -1209
                  xor          zero, t2, a5
                  sltiu        s2, a0, 637
                  slt          t2, t0, ra
                  srl          s4, s7, a4
                  sltu         s2, t2, gp
                  sub          gp, t6, t3
                  andi         a2, s8, 1287
                  sub          t6, t1, t1
                  and          s1, t1, a6
                  sra          s10, a0, s6
                  slli         s1, a0, 19
                  andi         s11, s0, 353
                  sltiu        t2, s0, 1652
                  sll          s3, a1, t1
                  and          gp, s3, s0
                  sll          s8, s10, zero
                  xori         s4, s8, -246
                  xori         t0, s3, -1757
                  slti         a4, a3, 1439
                  srl          s2, ra, a4
                  addi         s6, t2, -1625
                  addi         t1, s7, 1654
                  sltiu        s11, a3, -367
                  andi         a1, t2, -1808
                  sltiu        a2, s8, -645
                  nop
                  sltu         s6, a6, a0
                  and          s9, a4, ra
                  sll          s0, a0, sp
                  nop
                  lui          t1, 210903
                  srl          s9, a2, a3
                  slt          sp, a3, t0
                  sltu         s6, s11, s3
                  ori          sp, a7, 234
                  sll          t3, a2, gp
                  or           s3, s0, a2
                  ori          s0, t5, -1292
                  addi         s6, a0, 467
                  sub          s1, ra, s6
                  sub          s0, s3, s9
                  or           sp, s10, a1
                  sra          a1, s2, s9
                  sltu         s8, t2, s5
                  sll          sp, a4, s0
                  slt          a6, gp, s6
                  sub          a7, s5, a6
                  sra          s4, a1, t3
                  sra          a7, a0, tp
                  sub          ra, t0, s1
                  sll          gp, t0, tp
                  srl          a4, s5, a4
                  andi         s11, s3, 1027
                  sltiu        s3, a7, 1811
                  srli         t4, sp, 15
                  sltiu        sp, sp, 669
                  addi         s0, s3, 977
                  sltiu        t1, s10, -1052
                  sub          sp, s8, a1
                  sltu         s1, a4, s4
                  and          s4, a5, s0
                  addi         t5, s8, 1127
                  sll          s7, sp, s7
                  xori         t2, t6, 286
                  xor          a5, zero, t4
                  srl          s9, s3, s8
                  ori          sp, sp, -1901
                  sra          t4, s5, a1
                  addi         gp, s7, 1184
                  slti         s3, t6, 1320
                  slli         sp, sp, 20
                  sltu         a7, s8, s10
                  srl          a5, sp, t2
                  add          sp, s9, s6
                  addi         s6, t1, -583
                  sra          s1, a3, s9
                  sub          a4, ra, ra
                  and          s10, t4, a1
                  and          zero, gp, sp
                  sltu         t3, t0, t4
                  sll          s9, a1, s8
                  sra          s11, t0, t2
                  srl          t4, t4, t4
                  sll          s10, s2, s2
                  slti         a4, t1, -1516
                  lui          t5, 643825
                  xori         t1, s4, 517
                  or           s8, a3, s0
                  ori          s8, a3, 1031
                  slt          a1, s8, tp
                  sub          t0, a6, s10
                  srli         a5, t4, 3
                  lui          s7, 554964
                  lui          s5, 1038808
                  slt          s0, a0, s4
                  and          a1, t0, a4
                  sltiu        gp, sp, 1499
                  lui          a5, 1008103
                  srli         s1, s8, 19
                  or           s11, s3, gp
                  lui          s7, 949193
                  srai         gp, a4, 16
                  sub          s5, a2, s7
                  and          t3, s5, s2
                  slt          t0, a1, gp
                  and          gp, a1, a7
                  xori         sp, s1, -1356
                  slli         a1, s0, 1
                  auipc        s7, 213739
                  slli         t6, s4, 3
                  ori          s5, s8, -1661
                  slti         sp, s1, -209
                  andi         t0, s10, -448
                  or           a2, t4, s6
                  add          t2, s10, a2
                  slti         a1, a3, -1613
                  nop
                  sra          a4, s6, s6
                  srai         s3, a0, 8
                  srl          s6, s5, tp
                  xor          s2, s5, t5
                  ori          t3, a6, -825
                  srli         sp, t1, 7
                  sltu         s3, s5, a7
                  sltu         a7, s6, tp
                  auipc        s2, 308476
                  ori          t1, a1, 612
                  slt          a5, t2, s5
                  sltiu        s1, s7, 250
                  srai         t0, s0, 10
                  sub          a4, tp, ra
                  xor          t1, s0, tp
                  xor          s4, s7, a3
                  slli         s7, t3, 28
                  xor          zero, s1, s1
                  xor          t4, gp, t2
                  andi         a4, s11, -1444
                  srli         gp, a7, 21
                  srli         ra, s6, 10
                  sll          s3, a3, s6
                  sra          s10, a7, t5
                  sub          ra, t1, zero
                  addi         s1, t0, 1144
                  and          t0, s10, a6
                  srl          ra, a2, a1
                  nop
                  lui          t5, 420430
                  lui          s5, 376748
                  sltu         s9, a3, t2
                  srai         zero, s10, 2
                  addi         t1, s6, 1002
                  srli         zero, gp, 27
                  slt          s9, a4, a4
                  xor          t6, a0, t6
                  srli         s4, ra, 18
                  lui          s5, 905248
                  sra          a2, s5, a6
                  lui          s0, 1026570
                  xor          a7, a4, t3
                  srl          sp, a7, sp
                  sra          t1, zero, s4
                  addi         a6, s7, 431
                  sltiu        ra, s11, -1127
                  sub          a1, ra, t3
                  sub          t6, s8, a1
                  slli         s2, a5, 20
                  ori          s10, s11, -1062
                  sll          gp, a1, s8
                  sltu         s1, sp, s9
                  sltu         a4, s7, a1
                  srl          a7, a2, a6
                  srai         s4, a1, 20
                  srli         s7, s7, 23
                  slli         s11, sp, 2
                  srli         zero, t5, 11
                  auipc        s1, 979022
                  addi         a6, t1, 2020
                  and          t5, tp, ra
                  andi         t1, gp, -911
                  slli         t4, s8, 2
                  lui          s5, 347767
                  slt          s1, a4, s2
                  slti         s9, s1, 985
                  auipc        s2, 359575
                  slli         t0, a5, 29
                  sub          t5, s4, t3
                  sltiu        t3, a6, 157
                  xor          a6, s0, a2
                  auipc        ra, 985912
                  slt          s4, s5, t1
                  sub          s9, s0, a5
                  sub          s3, zero, s0
                  sub          a4, s2, s3
                  srai         a6, t4, 4
                  lui          t2, 272742
                  add          s7, s8, s8
                  ori          t2, sp, 1197
                  sll          t6, a5, a2
                  slt          gp, a7, gp
                  slli         t0, a0, 16
                  srli         s7, t3, 30
                  and          s4, t6, sp
                  auipc        a6, 191677
                  or           s11, s3, a4
                  sub          s0, s10, a1
                  srai         gp, s4, 24
                  and          s9, a5, s4
                  andi         t2, s0, -419
                  sub          s8, s0, s2
                  ori          a1, a7, 1823
                  ori          t3, s1, 23
                  srai         t2, s8, 16
                  slli         a7, s8, 22
                  or           sp, s2, t5
                  sltiu        a2, t3, -80
                  slt          gp, s5, a7
                  sltu         s10, t3, s7
                  addi         t5, t3, 1878
                  slli         a7, s4, 28
                  slti         s5, s8, -1883
                  sltiu        a1, gp, -447
                  and          gp, s4, s2
                  nop
                  nop
                  srl          s4, a0, tp
                  sll          t2, s11, a0
                  lui          sp, 662930
                  lui          zero, 13766
                  nop
                  or           a7, s0, s3
                  nop
                  sra          s2, a7, t1
                  or           a6, a5, a1
                  sll          t5, zero, a5
                  slt          s0, s11, t1
                  srl          s0, t0, gp
                  sltu         t1, a6, s1
                  sra          s0, a0, s2
                  slt          a5, a2, t6
                  slt          zero, a4, s4
                  and          t4, s6, s6
                  or           s11, a6, zero
                  nop
                  sub          a7, a5, s11
                  addi         sp, s10, 36
                  and          gp, s2, s1
                  sub          s7, s1, a0
                  srai         zero, t0, 6
                  slli         t0, t0, 9
                  sra          s9, sp, tp
                  slt          sp, s5, s10
                  sltu         t4, t4, t2
                  slt          s5, s0, t6
                  xor          t4, s0, t0
                  xori         t4, t1, 1353
                  nop
                  xor          a6, gp, gp
                  sltiu        a7, t1, 1978
                  sub          a6, zero, s11
                  xori         a4, t2, 2034
                  and          sp, a5, t4
                  srli         s10, t1, 9
                  xor          s10, s10, tp
                  sll          s11, t6, gp
                  sltu         t0, a3, t0
                  xori         zero, t0, -1849
                  lui          s0, 79188
                  andi         s2, a6, -1252
                  ori          t2, s2, 1903
                  or           s4, zero, a0
                  andi         s4, a4, 1916
                  or           s10, s2, a2
                  xor          a5, s5, a1
                  lui          a1, 888582
                  and          s7, s3, s0
                  srai         s8, t4, 4
                  lui          s11, 785547
                  add          t1, a2, s9
                  sra          s10, t6, s8
                  xori         s9, t6, 796
                  andi         ra, t1, 1075
                  srl          t2, s11, t5
                  slli         a4, s1, 9
                  sltiu        t2, s2, -7
                  nop
                  slti         s4, a4, 1212
                  sub          a1, s1, a7
                  sll          s7, t6, t0
                  srl          a2, s1, a1
                  sltu         t6, t0, t2
                  xori         s6, t6, -490
                  sub          s9, s1, s2
                  slt          s1, s7, ra
                  and          sp, a3, zero
                  sll          s5, a5, sp
                  sub          s7, a1, s11
                  sltu         s2, s11, s1
                  auipc        zero, 339682
                  xori         t6, t5, -611
                  slt          s2, sp, s10
                  xor          s7, t6, a2
                  srli         s3, s5, 28
                  nop
                  sra          t2, s9, a4
                  xori         s11, s8, -911
                  sltiu        s5, s9, 1335
                  andi         s7, s0, 299
                  xori         s1, tp, 1399
                  ori          s3, a7, -2011
                  nop
                  srl          s7, s7, a7
                  srl          gp, a6, a0
                  sra          t1, s5, s11
                  srai         s11, t4, 23
                  ori          a4, s4, 173
                  xor          sp, s0, ra
                  addi         t2, s7, -712
                  or           t2, s6, s11
                  addi         t0, s6, 1348
                  and          t2, a5, gp
                  sll          s1, s11, t6
                  sll          s2, s3, a0
                  srl          a5, a7, a2
                  xor          t5, a7, a6
                  srli         zero, t3, 2
                  add          t6, s4, t3
                  sra          zero, a5, gp
                  sll          s3, s7, s6
                  ori          s9, s3, 571
                  add          s6, t2, a6
                  nop
                  auipc        a5, 115893
                  nop
                  srli         gp, tp, 30
                  add          t2, s5, s5
                  andi         t4, s5, -346
                  or           t1, s10, a7
                  slti         a4, t6, -241
                  auipc        s4, 449358
                  slli         s11, t0, 18
                  lui          a7, 815046
                  ori          a7, t4, 370
                  sltiu        a5, zero, -3
                  xor          s0, a3, s2
                  sltiu        s7, ra, -1786
                  sra          a5, s8, a4
                  xori         t2, s5, 901
                  srli         s4, t1, 13
                  srl          s11, t4, s2
                  sra          t6, zero, a0
                  andi         a4, a0, -1454
                  xori         s7, t6, -48
                  srli         s8, ra, 17
                  addi         t5, s3, 326
                  add          a5, t6, s5
                  srli         s8, sp, 7
                  sub          zero, s8, a7
                  slli         s9, a6, 23
                  sltu         a7, s6, sp
                  srai         s1, t5, 9
                  sll          s0, a2, t3
                  srai         ra, s4, 26
                  nop
                  srl          ra, a5, tp
                  slli         sp, s2, 9
                  addi         s1, t1, -1581
                  or           s1, s0, a4
                  auipc        s8, 766654
                  addi         t2, t2, 1897
                  srai         a7, s7, 8
                  sll          s2, s10, a6
                  slli         a6, tp, 4
                  or           s8, s3, a2
                  sra          s11, ra, a4
                  srai         s9, t1, 9
                  sub          a5, a4, t5
                  srai         a7, t1, 12
                  sub          s8, t6, t0
                  srai         s2, t4, 17
                  srli         t6, s5, 11
                  sra          t4, t1, s3
                  add          gp, zero, s5
                  and          a1, ra, s11
                  or           a4, s8, s11
                  xor          s5, t5, t5
                  xori         s3, t0, -534
                  sub          a6, s6, a7
                  auipc        s5, 937884
                  srli         sp, t0, 22
                  sub          a7, s8, t5
                  slt          a7, a2, a2
                  add          sp, s11, s3
                  sltu         s2, s0, ra
                  sra          s1, sp, tp
                  sra          s11, s11, a0
                  xor          t6, t4, s2
                  sltiu        s11, s2, -1198
                  sltiu        a7, t4, -1630
                  xori         a1, s4, 1419
                  ori          a2, s6, 39
                  sub          ra, ra, a4
                  ori          s0, a6, -1056
                  sltiu        s5, t5, 208
                  add          a1, t4, a5
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           s9, 0xffffffff
                  li           s7, 0x80000000
                  li           s2, 0x7aa9213b
                  li           a5, 0xffffffff
                  li           ra, 0xffffffff
                  li           a7, 0x0
                  li           a6, 0xffffffff
                  li           s8, 0x64bd5579
                  li           a1, 0x0
                  add          s2, s9, a6
                  nop
                  auipc        s9, 246104
                  auipc        s7, 25625
                  nop
                  sub          a5, s2, s7
                  add          ra, gp, s2
                  add          s8, a6, ra
                  nop
                  addi         gp, s8, -607
                  nop
                  lui          gp, 77333
                  sub          a1, a6, s9
                  nop
                  auipc        a7, 542505
                  lui          s9, 496541
                  nop
                  lui          gp, 549258
                  sub          a6, s8, a1
                  lui          gp, 7013
                  auipc        s8, 646948
                  lui          s9, 873084
                  lui          s8, 887625
                  sub          a6, a1, a6
                  auipc        a1, 788725
                  auipc        ra, 712475 #end riscv_int_numeric_corner_stream_3
                  srl          t2, s10, a4
                  slli         zero, a7, 6
                  ori          a7, a3, 1491
                  addi         a6, sp, 677
                  lui          sp, 270315
                  auipc        a1, 541951
                  addi         a2, zero, 618
                  slli         t4, a1, 9
                  slti         s7, s1, 1044
                  add          t4, s2, s7
                  auipc        t3, 388810
                  srai         t3, s6, 30
                  xor          s11, t2, a6
                  andi         t4, s11, 445
                  xori         t1, s1, 2034
                  addi         t5, ra, 1434
                  andi         s3, t3, 964
                  slti         s4, s10, -1761
                  andi         t1, s0, 43
                  xori         zero, gp, -1945
                  sub          a1, tp, t2
                  srli         s7, t1, 3
                  xori         t4, a2, -1625
                  sltiu        a7, s2, 2026
                  addi         s10, a4, -332
                  add          s8, s7, a4
                  sub          s5, s4, tp
                  srli         a4, t6, 5
                  slli         a6, s9, 24
                  addi         s11, s3, 215
                  sltu         s5, s0, t1
                  sub          s5, a7, s7
                  sltu         s3, s11, s6
                  sltu         s5, s3, s10
                  srai         s1, t6, 11
                  auipc        a2, 312932
                  and          t2, tp, a5
                  sltiu        a6, t5, 1872
                  add          t2, ra, s7
                  sub          a4, ra, s9
                  srl          a4, s5, s7
                  nop
                  sub          a2, s11, zero
                  srai         t1, t5, 11
                  add          a4, a2, a1
                  slt          s4, s6, zero
                  srl          s5, s7, s4
                  lui          ra, 446307
                  auipc        gp, 685110
                  xor          t1, t3, s8
                  sra          t6, t6, t2
                  srli         a7, s11, 14
                  xor          a1, s6, a7
                  sra          a5, s7, s4
                  or           t0, tp, a2
                  add          t5, s8, t3
                  and          gp, s5, s0
                  lui          t0, 701818
                  sub          s6, a1, s2
                  xori         t2, a3, -752
                  add          t0, t3, s11
                  slti         s2, a0, -644
                  srai         t5, a5, 14
                  or           a2, s9, ra
                  xori         s7, ra, 1750
                  sll          s6, t0, zero
                  lui          t6, 278668
                  lui          t4, 824363
                  slti         t5, a3, 1090
                  and          a1, t3, s5
                  sltu         s6, s5, s1
                  xori         t2, a6, -1055
                  srl          t6, a0, s2
                  sll          a7, a5, s10
                  and          a5, s4, s11
                  lui          t6, 683473
                  slli         a6, s10, 28
                  addi         t4, s11, 483
                  nop
                  lui          s2, 311727
                  auipc        t2, 721761
                  sub          s9, s4, s7
                  lui          t4, 841901
                  sub          s11, s3, a1
                  sra          t1, a7, zero
                  srai         s11, a0, 23
                  addi         s1, t1, -1252
                  sltu         s1, a2, t4
                  sll          s7, tp, t4
                  andi         s3, s6, -431
                  and          t2, ra, ra
                  slt          s1, s9, t5
                  or           a1, a7, sp
                  slli         a2, t3, 13
                  sll          s0, a5, s0
                  xor          t3, a2, s8
                  xor          t5, s2, t6
                  addi         s2, s0, -1622
                  xori         s5, s2, -1699
                  sll          sp, s2, s3
                  lui          t4, 40789
                  slti         s3, a1, -1874
                  auipc        t6, 1024142
                  slt          a6, gp, s5
                  srli         ra, zero, 23
                  srli         gp, t4, 14
                  andi         sp, tp, 1239
                  sub          ra, t0, a1
                  sra          a2, s0, a1
                  sub          s6, a4, s9
                  li           s9, 0x2d3c0b8a #start riscv_int_numeric_corner_stream_10
                  li           s10, 0x80000000
                  li           s1, 0xffffffff
                  li           t0, 0xffffffff
                  li           t6, 0x80000000
                  li           gp, 0x80000000
                  li           t1, 0x45bf650
                  li           a1, 0x80000000
                  li           ra, 0xffffffff
                  li           t2, 0x80000000
                  auipc        t2, 466755
                  nop
                  lui          t2, 673496
                  add          t0, s1, s10
                  add          s1, t1, a1
                  auipc        ra, 966528
                  lui          t0, 719832
                  addi         a1, t1, -1692
                  add          t1, a1, s9
                  addi         t6, t0, 1692
                  add          s1, a1, t2
                  sub          s10, t6, t1
                  nop
                  addi         s9, s9, -1582
                  addi         s9, t6, 1707 #end riscv_int_numeric_corner_stream_10
                  slti         s11, t2, -1112
                  srai         s8, s11, 4
                  lui          t3, 846859
                  and          s5, zero, s1
                  slli         s2, sp, 10
                  srli         s3, s8, 10
                  add          t0, zero, t0
                  addi         s4, s6, 1833
                  or           t0, a3, s4
                  sub          t4, s6, ra
                  sll          a7, a6, a1
                  andi         s6, tp, 689
                  nop
                  add          s5, sp, s4
                  or           a4, s4, s7
                  auipc        t1, 494041
                  sltu         s6, s4, s8
                  slti         s3, s4, -1531
                  add          a2, tp, s5
                  slli         zero, s0, 18
                  srli         gp, a7, 13
                  xor          t3, s6, s2
                  sub          zero, a4, a2
                  srai         a7, a1, 20
                  slti         gp, sp, -1176
                  slli         s9, s3, 8
                  sra          s8, t0, a2
                  ori          gp, a7, -1837
                  ori          t6, s0, 746
                  or           t3, t1, s4
                  sub          t0, t2, s0
                  srl          s6, s3, sp
                  sltu         t6, s10, s3
                  addi         gp, s6, 514
                  srl          a4, gp, tp
                  and          t0, a7, s2
                  and          s0, t4, a3
                  sub          t4, a4, s8
                  srai         t3, sp, 3
                  slt          s2, a7, s2
                  add          sp, a1, t3
                  slli         t1, zero, 15
                  auipc        s0, 135299
                  auipc        s3, 140662
                  add          ra, t3, t5
                  add          s5, s8, a1
                  andi         a7, s7, -136
                  or           a6, a1, s7
                  ori          s6, t4, 1299
                  srl          a6, s2, s2
                  and          gp, s1, gp
                  add          t4, s11, a2
                  slti         ra, a6, -765
                  srli         t0, a1, 3
                  xor          t5, s7, zero
                  lui          zero, 542573
                  nop
                  ori          t0, t4, -1315
                  sll          a4, gp, t5
                  srl          s2, a0, a5
                  srai         a1, t2, 30
                  ori          t2, t2, -1135
                  xor          s10, s2, t4
                  auipc        a1, 431575
                  xor          t6, t5, a7
                  auipc        gp, 980263
                  srl          s3, t6, t0
                  nop
                  srli         t5, t2, 13
                  srli         s1, t3, 15
                  slti         a4, t6, 1164
                  andi         s7, s6, -1971
                  lui          a6, 463526
                  add          s6, s2, t5
                  sltu         t1, s2, s7
                  lui          gp, 871173
                  sltiu        s11, t5, 167
                  sltiu        s3, a4, 516
                  ori          s4, a4, 662
                  and          s2, s5, s0
                  slt          s0, a4, a3
                  slt          zero, gp, s7
                  srai         gp, s10, 18
                  sub          a4, t3, a3
                  slt          t4, a0, a1
                  slti         t2, t2, 1574
                  sltu         s7, t5, a3
                  addi         t2, a7, 806
                  srai         s7, t6, 15
                  ori          s8, a6, -1691
                  sub          s8, s5, a6
                  srai         a2, a6, 11
                  sltu         s4, s1, s5
                  slti         s11, s7, 973
                  slli         s1, s2, 31
                  add          zero, s3, ra
                  xori         t3, s3, -751
                  xor          t3, s1, s11
                  or           a6, ra, a4
                  sltu         sp, gp, s10
                  lui          s1, 954681
                  sltu         a6, t6, a5
                  srai         s4, s1, 23
                  nop
                  sll          s8, s6, t4
                  nop
                  srl          t4, s7, a3
                  nop
                  ori          ra, s4, -753
                  sltiu        s10, s1, -1056
                  slli         s9, s7, 17
                  sll          s4, gp, s1
                  or           s8, t4, s1
                  nop
                  slt          a1, s5, s5
                  xor          t4, gp, a5
                  xor          s5, a3, s6
                  sltiu        s7, s4, -813
                  slti         a7, gp, -1730
                  nop
                  xor          t1, s6, s8
                  srli         a2, t5, 30
                  srai         t0, s8, 18
                  and          sp, s5, s9
                  srli         s0, t3, 3
                  sll          s6, s11, t4
                  andi         t5, t0, -2044
                  sub          ra, gp, s11
                  sltu         s6, s8, s6
                  nop
                  slt          s0, s6, a4
                  slti         zero, s11, -931
                  sub          a4, a7, a1
                  sub          ra, s0, a5
                  srli         a4, t6, 9
                  sra          t6, t6, a0
                  srl          s10, a2, a6
                  ori          t6, a6, 719
                  srai         a6, a0, 19
                  sltiu        s5, ra, -424
                  sra          s0, a4, s2
                  sltu         s4, a2, a5
                  add          a2, s1, s9
                  andi         a7, a1, -1885
                  srli         sp, s6, 4
                  slli         t2, t0, 18
                  addi         t3, s7, -585
                  xor          a2, a3, t5
                  ori          a1, a0, 469
                  ori          s0, s2, 1539
                  sub          t3, a5, gp
                  sub          t4, t1, a0
                  slti         s4, a5, 1563
                  addi         a1, zero, 1563
                  sltiu        t4, a5, -778
                  nop
                  andi         s2, s2, -715
                  and          t2, s4, s5
                  or           s3, s1, s8
                  lui          s10, 327165
                  add          s7, ra, s7
                  sltiu        a1, a2, 1815
                  srai         s4, s0, 21
                  sll          sp, s3, s6
                  addi         s3, s1, -923
                  or           s11, a1, s8
                  add          a7, s5, s1
                  ori          s11, s3, 1803
                  add          t6, s7, a7
                  srl          sp, s0, s0
                  srai         a5, s8, 13
                  add          s7, s1, s2
                  add          a4, t1, t0
                  srli         a7, s9, 17
                  slti         t1, a3, 401
                  srli         s10, a3, 3
                  add          t6, gp, gp
                  sltu         s9, s11, s5
                  srl          t4, a5, t2
                  sltiu        s0, s5, 1181
                  slt          t2, s8, s11
                  lui          a6, 283320
                  slt          s1, ra, a2
                  slti         s6, t5, -1207
                  sub          a6, a5, s2
                  xori         a4, s9, 52
                  xori         s8, t1, -350
                  and          t3, a6, t2
                  slli         t1, tp, 9
                  add          t6, a6, a4
                  ori          s8, t0, -1778
                  slli         s0, tp, 11
                  and          s0, t5, gp
                  xor          t2, s5, t1
                  srli         t5, s10, 15
                  addi         s11, a7, 1973
                  slli         t5, s1, 25
                  sll          t5, a0, gp
                  auipc        s7, 120048
                  or           s1, t5, t5
                  auipc        gp, 1018161
                  srai         s0, t2, 30
                  nop
                  or           s9, s1, s11
                  sra          s9, s9, s3
                  sltiu        s9, a4, -52
                  auipc        a1, 560612
                  srl          a7, a3, s11
                  nop
                  lui          s8, 776875
                  ori          s7, t3, -1838
                  srai         s8, ra, 9
                  srai         t6, t1, 9
                  and          t6, t0, t2
                  slt          t3, s5, t1
                  sub          t2, s9, s10
                  and          sp, a2, s4
                  srai         s4, gp, 0
                  srl          s1, s10, zero
                  slli         s5, s10, 3
                  sltu         s8, s5, a7
                  slli         t1, s2, 29
                  sltu         s2, t6, a0
                  sra          s2, t5, a1
                  srai         t6, s6, 5
                  slli         s4, s6, 25
                  srli         t4, a2, 20
                  add          t3, s5, s9
                  slli         a5, t3, 25
                  srli         s9, s10, 23
                  and          ra, s5, a6
                  sltiu        t6, t3, 1110
                  srli         a7, a7, 29
                  auipc        s1, 1388
                  andi         a5, t3, 1968
                  sltiu        zero, a3, 739
                  slti         t1, t1, -1608
                  ori          t2, s8, -261
                  srl          s8, a6, ra
                  sra          s1, s2, a3
                  lui          t6, 249981
                  addi         t2, s9, 918
                  add          s10, s5, t3
                  srai         t2, s3, 18
                  add          s2, s5, t6
                  auipc        s9, 822917
                  and          t6, s1, t6
                  srai         s3, s1, 23
                  srli         s4, s1, 3
                  ori          s4, a5, -447
                  sra          s8, s5, s3
                  nop
                  or           s5, s7, t3
                  sltiu        t1, t6, -794
                  or           a2, s6, a1
                  sltiu        s4, s1, -1511
                  lui          a4, 495789
                  sll          zero, t5, t0
                  lui          s4, 1023820
                  auipc        a2, 864312
                  lui          t3, 129182
                  or           t6, a1, a2
                  srl          gp, s11, t5
                  sra          s9, s6, t6
                  slti         t2, a1, -418
                  auipc        s0, 252034
                  srli         t0, t1, 8
                  ori          s4, s0, -25
                  slt          t6, a4, s2
                  auipc        t4, 712274
                  srli         s3, zero, 24
                  ori          s0, a1, 99
                  slt          s10, sp, t1
                  sll          t4, a6, s7
                  sra          s0, ra, s7
                  sltiu        a5, a3, -1221
                  sltiu        t1, gp, 1380
                  nop
                  sll          s6, s8, ra
                  lui          s4, 751084
                  lui          s8, 299110
                  slti         ra, s1, -1916
                  sltiu        sp, s7, 1456
                  srli         t4, t0, 13
                  add          t6, gp, a5
                  and          ra, s11, a1
                  or           t5, t2, t6
                  sll          s0, sp, a6
                  xori         s9, s9, -907
                  add          s9, s6, s1
                  nop
                  andi         a2, s0, 1946
                  sra          s4, a1, s10
                  ori          t2, s3, -469
                  slli         s7, a7, 5
                  auipc        a4, 347696
                  and          s3, ra, s2
                  sub          s0, gp, gp
                  slli         a5, t4, 25
                  auipc        s3, 912265
                  xor          s7, t6, s4
                  srl          s5, s3, a4
                  andi         s1, t3, 1233
                  add          a1, s5, t6
                  and          s7, tp, t1
                  auipc        s5, 506132
                  slli         t1, s11, 23
                  lui          a5, 88435
                  sll          sp, s11, t1
                  and          gp, s11, s11
                  addi         a5, a4, -1376
                  srai         a6, t3, 4
                  sub          s1, t0, a5
                  add          a2, s9, a5
                  nop
                  srli         ra, t5, 3
                  sra          s5, s7, t0
                  andi         t1, s1, 289
                  xor          s9, s11, t0
                  srl          s5, t4, s4
                  or           a1, s2, gp
                  auipc        a7, 673865
                  sltiu        s11, t1, -499
                  sltiu        a1, t0, 1341
                  xor          t1, s3, a0
                  slli         a5, s7, 30
                  slt          t1, s2, t2
                  slli         s4, tp, 28
                  slti         s7, s2, 874
                  slt          s3, s7, t2
                  and          t1, s7, sp
                  slt          t6, a3, t6
                  slli         ra, s10, 11
                  sltu         a6, t1, t5
                  srl          ra, s5, a1
                  srl          s1, s6, a5
                  sltiu        s0, s4, -571
                  sltiu        s1, s1, 469
                  sub          t6, s0, gp
                  nop
                  sltu         t3, s6, a6
                  sub          zero, gp, t1
                  srl          s4, s2, ra
                  xori         s10, s8, -1495
                  srai         s4, a0, 3
                  slt          s4, s9, s11
                  sll          s9, s11, a7
                  slli         a2, gp, 8
                  nop
                  slt          s4, a3, s0
                  or           s5, a5, a7
                  slli         a1, s0, 17
                  xor          t0, s9, a0
                  andi         t5, a6, -819
                  nop
                  slli         s9, s4, 7
                  xori         t4, s5, 1355
                  sra          t2, a7, a4
                  andi         a2, a1, 36
                  sltu         t4, s1, s10
                  sltiu        t4, t3, -149
                  slti         s1, s1, 1789
                  sltu         t0, s7, s11
                  andi         s6, s6, -379
                  slt          s6, s9, s4
                  sub          s8, t4, ra
                  ori          t1, t3, 408
                  sub          ra, s1, t0
                  nop
                  slti         a7, t0, -1657
                  srai         s1, s11, 12
                  srai         s10, a4, 22
                  lui          s5, 702809
                  andi         s10, a3, -762
                  or           s3, s0, gp
                  slti         s3, gp, -1144
                  slt          s9, s5, gp
                  ori          s8, s6, -10
                  srli         a6, s5, 30
                  sltiu        s1, t0, 260
                  or           s5, sp, s6
                  nop
                  srai         t5, t3, 3
                  sltu         s7, s11, a7
                  add          s11, s3, a6
                  srl          a5, s10, t4
                  addi         t3, a1, -66
                  sltiu        t1, t0, 1454
                  andi         ra, s6, 1125
                  xor          a1, s0, t4
                  sltu         ra, s11, s2
                  addi         a4, sp, 1
                  sltiu        s1, t3, -172
                  slli         zero, t1, 12
                  srli         s1, t0, 25
                  sltu         a2, s8, a2
                  srl          t6, t4, s5
                  srai         a1, gp, 10
                  srli         s2, s7, 19
                  lui          ra, 70676
                  addi         t3, zero, 470
                  sltiu        s7, s5, -1577
                  nop
                  slli         t5, s2, 4
                  slli         t2, t5, 26
                  add          zero, t5, t4
                  sra          a7, t0, t1
                  xor          s7, a2, t6
                  sra          s2, s11, t3
                  and          s5, gp, s4
                  slti         s3, s4, 42
                  and          t5, a7, t2
                  auipc        gp, 389123
                  sra          a5, tp, s1
                  and          s5, tp, a3
                  sll          a1, t0, tp
                  and          ra, sp, a4
                  lui          t1, 6336
                  sll          s2, a2, a3
                  sub          s1, t0, ra
                  srli         t2, a4, 29
                  slt          s9, a3, a2
                  ori          t0, a7, 2001
                  addi         a4, t0, 715
                  srl          ra, s4, s0
                  and          s4, s3, s4
                  sra          s6, s5, s3
                  and          t0, s2, a4
                  slti         t3, ra, -109
                  ori          a6, t3, -1825
                  sltiu        s3, s1, -1379
                  srli         gp, gp, 16
                  ori          s1, ra, 1404
                  addi         a4, s1, -99
                  sltiu        s4, t2, 1715
                  srai         t0, gp, 10
                  add          s4, s5, a0
                  and          a6, zero, a7
                  and          s1, t1, s0
                  srai         a1, s7, 20
                  slt          a6, s8, a1
                  auipc        t5, 66981
                  sra          t3, zero, s2
                  addi         s11, a0, -1768
                  srai         t0, a2, 29
                  slli         s11, s9, 29
                  addi         t6, sp, 309
                  or           t3, a7, s2
                  auipc        t1, 536148
                  add          s5, s8, sp
                  sll          s6, t2, a7
                  sll          s7, t2, s6
                  slli         s9, a7, 4
                  xori         s6, s2, 1397
                  sll          t3, s7, s3
                  xori         a1, s1, -875
                  ori          s9, s11, -1097
                  sltiu        ra, a4, -1183
                  slli         s3, tp, 7
                  srai         zero, gp, 24
                  sll          t3, gp, a1
                  slt          s1, s10, t0
                  and          t1, zero, s11
                  auipc        t4, 104250
                  ori          a5, sp, -1940
                  xori         t2, t6, 97
                  nop
                  and          s8, a0, t1
                  slt          s0, a3, s11
                  srli         zero, s5, 29
                  slli         s8, t3, 17
                  slli         t6, gp, 25
                  slt          a5, t6, s0
                  srli         t2, s3, 24
                  slti         s4, s2, 784
                  srli         s1, ra, 25
                  srl          t3, t6, s2
                  auipc        s9, 510583
                  sll          s9, a3, ra
                  slti         a5, s7, 1024
                  andi         t0, s7, -1150
                  sra          s4, s2, a4
                  srli         a6, s6, 15
                  auipc        t3, 509871
                  slti         a6, t1, -706
                  and          s1, s2, t4
                  and          t0, t5, s8
                  sltu         a4, a6, s5
                  nop
                  slli         t6, s6, 16
                  slt          t4, ra, a7
                  slli         s7, s10, 7
                  addi         s6, s11, -832
                  andi         s2, a1, 605
                  sub          t3, a5, a5
                  sltu         t4, s7, a1
                  lui          a4, 128606
                  slt          a4, gp, t2
                  xori         a1, s4, 1176
                  ori          a6, s6, 2002
                  xor          s2, a7, s10
                  xor          a6, gp, t2
                  sra          a2, t3, a4
                  or           t2, a4, a1
                  xori         ra, a6, -1078
                  sub          ra, a5, t6
                  xor          s2, s1, a4
                  srl          t0, s1, s1
                  slt          ra, t2, s2
                  ori          s5, t3, 907
                  xori         s1, s3, -950
                  slti         s7, a2, 1839
                  ori          s7, t5, 964
                  sub          s5, t4, sp
                  nop
                  ori          a5, t0, -1583
                  slti         s9, s0, -500
                  andi         sp, s6, 1635
                  and          s5, s5, t2
                  sra          s10, a5, t1
                  and          a5, zero, s6
                  and          ra, t3, a4
                  or           t0, a4, t4
                  slli         a4, s9, 30
                  sltu         a1, s3, t1
                  and          gp, t6, s10
                  addi         t3, a6, -224
                  sltu         a4, t1, s9
                  and          t3, a0, s6
                  srai         t6, s2, 23
                  sltu         t6, a6, s7
                  sltiu        s4, a7, -348
                  nop
                  sltiu        t1, s2, -1938
                  slli         t1, ra, 15
                  sra          zero, s3, s4
                  and          s1, s5, zero
                  ori          t4, s3, 1591
                  or           ra, s0, zero
                  slli         s8, s4, 1
                  slti         a4, s11, 1528
                  xori         s1, s11, -198
                  add          s0, s8, s8
                  sll          s5, s9, a3
                  nop
                  sub          a5, a1, s10
                  srai         a2, s8, 1
                  srli         s7, a2, 11
                  nop
                  sub          s10, s9, t2
                  xor          a7, sp, t5
                  and          s11, a6, s8
                  and          s4, zero, sp
                  srai         a4, tp, 27
                  andi         s2, zero, 1916
                  srli         a5, s10, 22
                  andi         ra, a6, 1554
                  nop
                  ori          gp, t0, 585
                  nop
                  andi         s2, s2, 1272
                  ori          s9, a2, -473
                  xori         t0, ra, 225
                  slti         zero, s3, 1037
                  and          a4, t5, t2
                  ori          a1, tp, -273
                  addi         a5, ra, 93
                  slt          gp, s5, a4
                  srai         s8, a5, 24
                  add          a1, a0, s8
                  slti         t2, t1, 2031
                  srai         s6, s0, 30
                  xori         s5, zero, 850
                  and          a6, s5, tp
                  sltu         ra, a4, a0
                  sra          s1, s10, s7
                  or           a2, a7, t3
                  or           t6, s3, s1
                  sltiu        s0, sp, -68
                  slt          a6, a5, s2
                  add          ra, sp, s2
                  ori          sp, s5, -1144
                  srai         t0, gp, 10
                  xor          s11, tp, s1
                  addi         s7, t4, 936
                  andi         ra, s0, 859
                  sltu         s11, s9, s8
                  andi         s11, s4, -1005
                  slli         s9, tp, 9
                  sra          ra, a2, t1
                  sra          s3, s0, s2
                  slti         s7, a6, -558
                  addi         a4, a2, 144
                  xori         s10, a2, 1026
                  sub          s7, a0, a7
                  addi         t5, gp, 355
                  srai         s7, s4, 14
                  ori          a2, a4, -1296
                  lui          s10, 545632
                  srli         t0, t2, 14
                  srli         gp, s7, 22
                  srl          s3, a7, s10
                  or           t6, s4, t1
                  slti         t5, t1, -1485
                  sub          a7, a4, s4
                  lui          zero, 9427
                  xori         s4, ra, 1202
                  sub          s5, tp, s4
                  sltu         t0, s9, s2
                  and          s3, s8, gp
                  sub          s5, gp, s9
                  lui          a1, 729113
                  slti         a1, gp, -79
                  addi         sp, s5, -1378
                  sll          a5, a4, s5
                  nop
                  auipc        gp, 1021398
                  addi         a2, t3, -1797
                  lui          s5, 47713
                  slti         s9, s10, 1937
                  slli         s2, s0, 28
                  xor          t0, s10, t3
                  sub          a5, t6, a0
                  sltiu        t3, s5, 1403
                  srli         s10, a4, 30
                  lui          s0, 175844
                  slli         t4, s10, 16
                  sltiu        s8, t0, -1630
                  add          a2, a6, s2
                  ori          s1, s4, -137
                  srai         a1, s5, 28
                  and          s0, t4, s4
                  ori          a1, gp, -1792
                  add          s4, zero, t4
                  xori         ra, s1, -1721
                  srai         a2, s2, 30
                  sll          t3, s3, s8
                  srli         s6, a4, 0
                  add          s0, s11, tp
                  slli         s6, ra, 2
                  andi         t6, sp, -1599
                  sltu         s5, ra, t4
                  slt          s4, s5, s7
                  xor          s2, tp, t6
                  or           sp, a3, sp
                  xori         t0, t1, -2037
                  xor          zero, s9, s5
                  lui          a4, 129032
                  srli         t0, tp, 9
                  slli         s4, s3, 21
                  sltu         sp, s6, s8
                  srai         s8, s10, 12
                  slt          t3, s10, s4
                  nop
                  sll          a7, s0, s10
                  sltu         t1, t3, t4
                  or           a1, a3, zero
                  slli         s5, s9, 3
                  nop
                  srai         a7, a0, 22
                  slt          sp, s2, gp
                  lui          s6, 976184
                  sltu         t6, t4, a7
                  slt          sp, s5, tp
                  and          a1, a2, a3
                  slli         s10, a0, 5
                  srli         t0, sp, 12
                  xori         ra, t1, 201
                  or           ra, s9, s9
                  xor          t0, s0, t6
                  lui          s7, 214280
                  nop
                  xori         s3, s1, -1621
                  addi         s2, t3, 1301
                  sra          s9, zero, t5
                  slt          ra, s9, s9
                  lui          gp, 629309
                  add          s11, s6, t6
                  add          a6, a3, s6
                  srl          a6, gp, s4
                  sra          s11, s5, gp
                  auipc        a5, 786801
                  add          s4, a6, ra
                  slli         t2, sp, 25
                  add          zero, s2, s2
                  sub          t3, a2, s8
                  lui          t1, 541654
                  slti         s9, s10, -1182
                  slti         t2, a5, -1994
                  or           s7, zero, a6
                  sltiu        t2, s10, -152
                  slli         t0, s2, 25
                  auipc        s8, 647250
                  sub          ra, t3, a7
                  add          s4, s5, a6
                  slt          s5, s2, t3
                  srai         a5, t2, 14
                  add          s4, s10, s5
                  andi         s11, t5, 1921
                  slti         s1, tp, 2037
                  addi         sp, s3, -412
                  sll          ra, zero, s10
                  sltiu        a1, a0, 892
                  auipc        a6, 936937
                  srli         t3, a4, 17
                  srai         s6, a5, 2
                  xori         gp, a5, 650
                  addi         a6, t2, -1394
                  slli         a5, s11, 30
                  sltu         t0, a0, t3
                  xori         s9, a4, -752
                  and          t2, t1, a5
                  xori         s1, sp, 1081
                  slli         s1, t2, 28
                  slti         gp, s9, 1408
                  slt          t4, t6, s1
                  slti         s3, s6, -811
                  srl          s1, s0, t1
                  srl          ra, s3, t6
                  ori          t4, ra, 195
                  andi         s9, a0, 216
                  lui          t0, 554519
                  srai         s5, a4, 0
                  srai         t0, s3, 21
                  auipc        t6, 96867
                  slti         sp, s11, 513
                  nop
                  sub          s7, t3, ra
                  auipc        s10, 974403
                  srai         t3, tp, 12
                  andi         s4, s3, -1784
                  xor          s11, t5, gp
                  sub          s7, gp, gp
                  nop
                  slt          a7, s5, a7
                  sll          a5, tp, t3
                  add          s11, s4, a4
                  addi         t5, sp, 1002
                  slt          a4, s9, tp
                  sra          s2, s2, a7
                  srli         a4, s1, 19
                  ori          s3, t0, 2012
                  srli         s3, s8, 20
                  sltu         a1, s11, s0
                  ori          t3, s9, 1131
                  andi         a5, s3, -901
                  lui          s10, 760920
                  srli         t3, t3, 30
                  and          s0, s8, s3
                  ori          s2, s9, -1242
                  and          s4, s0, a4
                  ori          t5, gp, 765
                  xor          t0, gp, s0
                  sub          a7, t4, t0
                  slli         s1, a7, 18
                  addi         s10, zero, 600
                  xori         a1, a1, -973
                  nop
                  auipc        a4, 897153
                  slt          gp, t1, ra
                  slti         s4, a7, -1576
                  lui          s8, 143531
                  slli         s3, a4, 12
                  lui          s3, 845370
                  slli         a6, s0, 26
                  lui          t6, 953388
                  slti         s0, gp, 1233
                  xor          t0, s3, s7
                  slli         a5, s5, 16
                  addi         s4, s0, 999
                  addi         zero, a7, 1511
                  or           t6, a7, sp
                  sltiu        s4, s1, -1474
                  addi         a7, s0, 1049
                  xori         sp, s7, 477
                  andi         t4, a5, -258
                  srli         t6, s5, 10
                  srai         a4, a0, 22
                  xor          a5, t4, s4
                  slt          s7, s2, s7
                  nop
                  sltiu        a5, a6, -507
                  xori         t2, s4, -1027
                  srl          t4, s6, s2
                  slti         s9, t2, 2023
                  slt          t5, s6, s5
                  sltu         a7, s11, s10
                  sltu         s9, s0, s11
                  sltu         s7, s11, s7
                  lui          s10, 786459
                  ori          a4, tp, -135
                  sub          s3, s0, a4
                  addi         s5, t5, -618
                  slti         a5, sp, 168
                  xor          s0, t4, a2
                  addi         s9, s11, -1884
                  srai         s0, t3, 28
                  slli         t1, sp, 5
                  slt          s10, t5, s2
                  auipc        t2, 564784
                  or           s6, a0, ra
                  srli         s6, s10, 31
                  sltu         t5, a0, a3
                  or           zero, gp, s7
                  srai         ra, t3, 8
                  slti         a5, a1, 1820
                  srli         t0, s6, 6
                  xor          s8, s1, s0
                  sll          a4, s0, s5
                  andi         a6, zero, -1706
                  srli         s1, tp, 28
                  sltu         a6, sp, s9
                  or           s4, s6, s9
                  sub          a1, a1, gp
                  ori          s1, s9, -904
                  addi         s0, s7, -895
                  auipc        a4, 596243
                  xori         sp, t1, 705
                  andi         s9, a4, -659
                  or           s10, t0, s5
                  slti         s9, t0, 30
                  nop
                  lui          s1, 853886
                  sltu         a2, ra, s11
                  sll          a7, s6, s3
                  srai         t2, s9, 30
                  srai         t3, s2, 21
                  srai         a7, s3, 2
                  slti         gp, s9, -1131
                  ori          s8, s3, -201
                  lui          s11, 163865
                  srai         a5, a5, 22
                  sltu         t0, t6, s6
                  add          t0, t1, zero
                  srl          s3, s11, a4
                  nop
                  srl          gp, t0, s0
                  slt          t0, a5, sp
                  sltu         t3, t6, tp
                  auipc        s5, 826624
                  srai         t0, t2, 22
                  sltu         t0, s9, s4
                  slt          ra, tp, t6
                  addi         t0, ra, -1479
                  and          s6, s3, a1
                  ori          s7, s9, 761
                  srl          s1, s5, a6
                  addi         t4, s10, 144
                  slli         s10, s8, 1
                  sll          sp, s7, t4
                  srl          s5, s0, s4
                  xori         a5, s11, -694
                  lui          a5, 735854
                  srai         a7, a0, 30
                  nop
                  auipc        gp, 152996
                  sub          s0, a2, sp
                  or           s7, s1, s10
                  ori          s0, s9, 400
                  slt          a6, t0, a1
                  sltiu        s6, tp, 1551
                  ori          ra, sp, -1025
                  and          a7, t1, tp
                  sra          sp, zero, s10
                  srai         s11, t2, 5
                  slli         a1, s1, 22
                  ori          t4, s2, -1957
                  lui          t2, 290077
                  xori         sp, t5, 2044
                  srai         a4, t1, 3
                  lui          s7, 931871
                  sub          t5, s8, s8
                  sltiu        a5, gp, -813
                  srli         a6, a3, 17
                  sra          t5, a4, s2
                  nop
                  addi         t5, s3, 435
                  sra          a5, zero, s11
                  sll          a7, s3, a3
                  add          sp, t3, t5
                  lui          t6, 187909
                  xor          t6, a7, gp
                  and          a4, a5, s0
                  srli         t6, s3, 31
                  sll          s9, gp, a2
                  srli         a5, s10, 19
                  sltu         a7, s10, a5
                  srl          a6, a3, a2
                  slt          s2, gp, ra
                  slt          t0, t6, a2
                  and          s7, t0, t3
                  slti         s7, s5, 1635
                  sll          t4, t4, t1
                  or           t4, a3, t6
                  sltiu        t6, a2, 1626
                  sltu         s6, ra, t4
                  srli         s6, zero, 4
                  slli         t5, s8, 0
                  srai         s1, s10, 8
                  sub          s7, a3, a6
                  add          s9, s11, t0
                  andi         s10, gp, -873
                  andi         t0, s7, 1090
                  sltu         s6, t2, s11
                  xori         t1, a2, 578
                  slti         t6, t1, -1729
                  or           t6, a3, a4
                  sltu         zero, zero, a1
                  ori          a1, sp, -1959
                  addi         s4, s2, 865
                  xori         t5, sp, -707
                  slt          s3, t6, s10
                  srai         s3, s1, 29
                  slli         t3, t3, 29
                  and          sp, t4, s5
                  slli         s3, t1, 22
                  sub          t4, s7, t1
                  sltu         s1, s9, a2
                  auipc        s1, 789945
                  xor          t1, t5, a2
                  sra          t1, zero, a0
                  slti         s7, a1, -1024
                  sll          s9, s1, a4
                  sll          s9, a2, a7
                  sltiu        a6, sp, -281
                  slt          zero, s1, sp
                  nop
                  addi         t0, t4, 1342
                  and          s5, a1, s6
                  sub          a5, t6, s4
                  sltu         a4, sp, s10
                  sltu         a4, a4, tp
                  lui          s1, 606934
                  addi         t3, t0, 1087
                  srai         a1, zero, 0
                  srai         t4, s11, 10
                  sll          a6, s9, t3
                  slt          s11, t1, s6
                  slti         t5, s8, 358
                  xor          t6, a0, sp
                  auipc        s6, 681463
                  slli         zero, a2, 11
                  or           s7, s0, a6
                  sra          zero, t1, a4
                  sub          t6, t4, s2
                  auipc        s6, 692754
                  slti         gp, s10, 86
                  srli         s3, a7, 19
                  xor          s1, s0, t0
                  sub          s11, s5, t2
                  sll          a5, s11, s10
                  sltu         s0, t3, tp
                  andi         a7, s6, 391
                  slt          s1, a6, s5
                  ori          t2, a3, -593
                  andi         t6, tp, -1012
                  slli         s9, gp, 31
                  slti         t3, t6, 310
                  srai         s10, s1, 0
                  lui          s1, 795798
                  andi         sp, a3, 237
                  and          s5, s3, s7
                  srl          s10, s7, a4
                  and          s5, a7, t1
                  sra          s5, s2, s4
                  xor          a6, t5, sp
                  nop
                  xori         s8, s9, -2027
                  xori         t2, zero, -1283
                  or           s5, t5, s8
                  sll          a6, tp, a5
                  slli         zero, t6, 25
                  sub          s5, s8, s11
                  srai         s3, t5, 9
                  sll          ra, t3, t6
                  auipc        a6, 621236
                  andi         a2, sp, 956
                  xor          ra, s7, s1
                  lui          ra, 1016478
                  srl          t2, a7, s11
                  sltu         t3, s3, a3
                  sltiu        a4, s8, -1704
                  andi         s0, a1, -576
                  slt          s6, s7, zero
                  srl          gp, s4, ra
                  sltiu        sp, zero, 1418
                  sltiu        s9, ra, 381
                  auipc        a4, 552624
                  srli         sp, a3, 31
                  and          s3, s5, ra
                  auipc        a4, 295796
                  xori         s4, sp, 33
                  addi         s7, sp, 936
                  slli         a4, s7, 6
                  sltiu        t5, a7, -1771
                  andi         sp, s4, 398
                  slt          a1, t5, a3
                  xor          s6, a4, a5
                  srai         s5, s5, 28
                  xor          s9, t4, gp
                  srl          t1, t5, t4
                  lui          s6, 949150
                  sltiu        zero, s9, -548
                  lui          s9, 386729
                  slli         s8, a5, 20
                  slt          s3, ra, zero
                  xori         s4, t1, 422
                  sll          s6, t4, s5
                  add          s9, gp, ra
                  or           gp, tp, a3
                  and          t2, a1, t0
                  and          t1, s10, s5
                  add          a6, a3, a5
                  srai         a7, t2, 24
                  sll          t6, s6, a7
                  or           a6, s8, s11
                  sra          s4, t6, a7
                  srl          a2, s5, a6
                  ori          a4, tp, -1212
                  slli         t2, t3, 25
                  sll          a7, t4, a0
                  and          s6, t0, a3
                  andi         s8, s10, -1407
                  srl          a7, s9, s8
                  xori         t2, t3, -812
                  addi         s1, s7, 1896
                  addi         s8, t6, -1433
                  srai         t5, t5, 19
                  addi         t1, t0, 1588
                  sll          ra, s10, a2
                  srl          s8, s2, a2
                  auipc        gp, 664147
                  srai         t1, a6, 9
                  lui          s3, 847109
                  add          ra, a7, t6
                  and          a7, a2, a7
                  auipc        s10, 39008
                  lui          a6, 952204
                  ori          s4, t6, 1444
                  add          sp, s7, gp
                  sra          a7, s9, t1
                  srli         s2, s9, 6
                  add          ra, a4, zero
                  slt          a2, a3, s10
                  andi         s8, s1, -1059
                  sub          t0, a4, s10
                  slli         a5, s3, 16
                  add          s7, s5, t1
                  sra          t3, t4, t1
                  srli         zero, s7, 19
                  lui          s0, 1022128
                  sltu         s7, a2, t4
                  ori          a2, ra, -1403
                  srai         t0, t1, 17
                  sra          a6, tp, t2
                  srl          a5, s3, s11
                  xori         a6, s7, 1703
                  slli         t0, s3, 0
                  xor          t0, s0, s8
                  or           t0, ra, t2
                  slli         s2, sp, 22
                  srai         sp, a6, 14
                  sltiu        a6, s4, 517
                  ori          s9, s9, -952
                  srl          a4, s6, a2
                  add          s1, s1, a4
                  sltu         t0, s6, sp
                  sub          t4, s0, gp
                  sub          s1, s1, zero
                  andi         a2, t4, -516
                  auipc        t1, 101869
                  sub          s7, s2, s8
                  nop
                  slli         s1, sp, 1
                  srl          s1, zero, s7
                  or           ra, tp, t0
                  slt          t4, ra, t5
                  sub          a4, s4, a3
                  slli         a1, t3, 0
                  and          s8, t6, t2
                  srai         s10, s7, 3
                  nop
                  and          a2, t0, a0
                  sra          t3, s1, s8
                  srai         t5, s9, 28
                  sra          t5, s8, a6
                  slt          s5, s1, t1
                  srli         t4, s3, 31
                  srl          ra, gp, t4
                  slti         s5, a7, 1882
                  sra          gp, a3, s3
                  slli         a4, a5, 9
                  srl          t1, tp, s6
                  slli         zero, ra, 6
                  srl          s4, s8, s1
                  srl          a4, a5, s6
                  sub          t3, sp, s9
                  sltu         s6, s2, ra
                  sll          s9, s9, t4
                  nop
                  add          t3, s2, s2
                  sll          zero, tp, a4
                  sub          s9, a4, a5
                  srl          s11, a1, s4
                  sra          s7, tp, a6
                  sltiu        s3, t5, 1451
                  auipc        sp, 964511
                  ori          t5, zero, 1005
                  sltiu        a6, t5, 598
                  lui          s10, 333004
                  nop
                  sra          s4, t2, a7
                  sub          s6, tp, s5
                  andi         t6, s8, 1956
                  lui          zero, 460680
                  sll          s5, ra, t1
                  lui          s4, 1009984
                  slt          t3, t1, t4
                  add          t3, s2, s8
                  auipc        ra, 577893
                  srai         s1, s9, 26
                  srli         ra, t4, 21
                  and          a7, a1, s4
                  addi         s4, s3, 801
                  or           s7, ra, a0
                  nop
                  auipc        s11, 695094
                  sub          s4, gp, s2
                  auipc        s0, 1013233
                  andi         s3, s4, 1089
                  and          gp, t0, a3
                  add          t5, s0, s9
                  slt          zero, s7, s10
                  nop
                  slti         t4, gp, -1176
                  slt          a7, ra, s11
                  srli         t6, s6, 29
                  slti         s2, gp, -89
                  and          t5, a1, t3
                  xori         t3, sp, 1019
                  sub          s8, t3, s7
                  sll          t2, t5, a0
                  or           s9, s6, s1
                  srl          t5, tp, t6
                  srli         a6, s0, 1
                  sub          a5, s10, a4
                  slli         s2, s11, 11
                  sltu         a4, s1, zero
                  xori         ra, s6, 1360
                  slt          s10, t2, t5
                  auipc        a7, 110654
                  andi         a1, a6, -1840
                  addi         t1, a7, 1048
                  andi         s4, s2, 374
                  nop
                  addi         a1, t4, 2036
                  srl          s8, t1, s1
                  sltiu        s4, a0, -1811
                  and          s7, sp, a0
                  srli         s6, s4, 10
                  slli         t5, zero, 0
                  sll          sp, t1, a3
                  addi         s10, t5, -938
                  xor          t5, t0, t6
                  srl          zero, ra, t6
                  ori          t6, tp, 1100
                  srai         t2, t1, 7
                  sll          s6, s10, s11
                  auipc        a5, 884925
                  and          s9, s11, t2
                  lui          zero, 746084
                  srai         s6, a3, 29
                  sltiu        s7, s2, 174
                  sltiu        s10, t5, -834
                  slti         a1, t0, 582
                  slti         a6, t5, -546
                  or           s7, t3, s2
                  add          zero, t0, ra
                  xori         ra, a1, 379
                  sltu         a6, s9, ra
                  sll          s7, a1, sp
                  srl          s3, t2, a4
                  ori          t6, a6, -1655
                  auipc        s5, 552940
                  xori         s7, t6, 1737
                  andi         s2, zero, -128
                  sub          t6, a1, a1
                  srl          s11, a7, t0
                  slt          t1, s10, s1
                  slti         a1, s0, -419
                  add          t6, s0, ra
                  sra          t4, s9, t5
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  add x13, x4, zero
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x30, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x30, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x30, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x30, x15, ecall_handler
                  li x15, 0x1
                  beq x30, x15, instr_fault_handler
                  li x15, 0x5
                  beq x30, x15, load_fault_handler
                  li x15, 0x7
                  beq x30, x15, store_fault_handler
                  li x15, 0xc
                  beq x30, x15, pt_fault_handler
                  li x15, 0xd
                  beq x30, x15, pt_fault_handler
                  li x15, 0xf
                  beq x30, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x4, x13, zero
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
                  add x4, x13, zero
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
                  add x4, x13, zero
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
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x4, x13, zero
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
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x4, x13, zero
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
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x4, x13, zero
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
