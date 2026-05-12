.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 1
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x2
                  li x2, 0xf2944c29
                  li x3, 0x257df964
                  li x4, 0x0
                  li x5, 0xf6f1325b
                  li x6, 0x80000000
                  li x7, 0xf6bf80f5
                  li x9, 0x1e9e63e3
                  li x10, 0xc
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x27db4f72
                  li x14, 0x80000000
                  li x15, 0x6352b2e8
                  li x16, 0x1
                  li x17, 0x33a70749
                  li x18, 0x5
                  li x19, 0x80000000
                  li x20, 0xf3a81538
                  li x21, 0xd
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0xc1014a49
                  li x25, 0xf4c3781f
                  li x26, 0x33f473d0
                  li x27, 0x58daa11
                  li x29, 0x0
                  li x30, 0xe72f5f09
                  li x31, 0xf3abd818
                  la x8, user_stack_end
main:             li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           s9, 0x0
                  li           s8, 0x0
                  li           t4, 0x0
                  li           sp, 0xffffffff
                  li           t2, 0x0
                  li           a7, 0xb56513b1
                  li           tp, 0x0
                  li           a6, 0x0
                  li           s6, 0x718f053c
                  add          t4, tp, s8
                  sub          sp, t2, t4
                  lui          sp, 109473
                  sub          s6, tp, s6
                  lui          a7, 842469
                  addi         tp, s6, 610
                  addi         t2, sp, 765
                  auipc        s6, 111774
                  auipc        s11, 849373
                  auipc        tp, 741001
                  add          t2, tp, t2
                  nop
                  lui          s11, 453073
                  nop
                  sub          a6, sp, s9
                  add          a7, a7, t4
                  auipc        a7, 178682
                  sub          a6, t4, t4
                  auipc        t4, 919550
                  sub          t4, sp, t4
                  lui          s9, 4578
                  add          sp, a7, a6
                  addi         s11, a6, 1203 #end riscv_int_numeric_corner_stream_9
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           a2, 0xffffffff
                  li           t1, 0xffffffff
                  li           t4, 0x80000000
                  li           t0, 0x80000000
                  li           t6, 0x80000000
                  li           s7, 0x0
                  li           s10, 0x80000000
                  li           a1, 0xffffffff
                  li           t2, 0xa739ed3b
                  nop
                  auipc        a2, 722658
                  auipc        a2, 372023
                  auipc        t1, 727798
                  addi         s10, t0, 1782
                  sub          a1, t4, t2
                  auipc        t6, 905632
                  lui          s10, 493093
                  lui          a2, 917320
                  lui          a1, 291428
                  add          a2, a1, t4
                  sub          t4, s10, t6
                  auipc        t1, 725000
                  auipc        t1, 172766
                  auipc        t6, 279612
                  nop
                  sub          a2, s7, t4
                  addi         a2, t1, 47
                  nop
                  auipc        t2, 303716
                  nop
                  lui          t4, 321408
                  auipc        s7, 229018
                  lui          s7, 143291
                  sub          s10, a1, s5
                  nop
                  auipc        s5, 832296
                  auipc        a2, 473073 #end riscv_int_numeric_corner_stream_0
                  li           t2, 0x721fd889 #start riscv_int_numeric_corner_stream_11
                  li           a6, 0x0
                  li           s6, 0x80000000
                  li           t0, 0x65ef07
                  li           s7, 0x0
                  li           s5, 0x80000000
                  li           t1, 0x80000000
                  li           s11, 0xffffffff
                  li           tp, 0xffffffff
                  li           a2, 0x0
                  sub          t2, s5, s6
                  lui          t2, 782160
                  add          tp, tp, s11
                  lui          s11, 396258
                  nop
                  auipc        s7, 524945
                  sub          a6, a6, a2
                  addi         s6, s11, 494
                  sub          t1, a6, t0
                  addi         a6, s11, -969
                  auipc        a2, 74883
                  addi         a6, s6, -716
                  lui          t1, 152319
                  lui          s11, 663956
                  auipc        s6, 204857 #end riscv_int_numeric_corner_stream_11
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           t4, 0x14f1fe6f
                  li           a4, 0x80000000
                  li           s5, 0xffffffff
                  li           s6, 0x0
                  li           a2, 0xffffffff
                  li           a3, 0x71bb4d9e
                  li           sp, 0x0
                  li           s8, 0x0
                  li           a7, 0x1e707e93
                  nop
                  nop
                  auipc        s6, 206308
                  auipc        a3, 598938
                  addi         a3, a3, 1490
                  sub          a4, s11, a7
                  lui          s11, 568926
                  sub          s8, s6, a2
                  addi         s6, a2, -1530
                  lui          a7, 863874
                  lui          t4, 909552
                  lui          a3, 449741
                  lui          a7, 245510
                  addi         sp, s8, 1593
                  sub          a7, s8, s5
                  lui          s8, 528477
                  nop
                  add          s8, a4, s5
                  add          s8, s8, a7
                  auipc        s6, 547771
                  sub          s6, s11, t4
                  nop #end riscv_int_numeric_corner_stream_8
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s8, 0x80000000
                  li           s2, 0x80000000
                  li           s4, 0xa06cd6ba
                  li           s1, 0x0
                  li           a4, 0x80000000
                  li           gp, 0x0
                  li           s5, 0x80000000
                  li           a7, 0x80000000
                  li           a3, 0x0
                  auipc        s5, 745119
                  addi         s1, s2, -311
                  lui          s5, 67604
                  lui          gp, 534530
                  add          s1, s4, a4
                  auipc        s8, 255854
                  addi         s5, a4, 545
                  lui          s8, 456667
                  add          t2, s2, s4
                  add          gp, s4, s8
                  nop
                  add          s4, s8, a3
                  auipc        a3, 852441
                  sub          t2, a7, s2
                  nop
                  add          s5, s4, s2
                  nop
                  auipc        s8, 894927
                  sub          s8, gp, s4
                  auipc        s5, 757007
                  lui          a4, 56371
                  sub          t2, a4, t2
                  sub          s1, a3, gp
                  lui          s8, 970537
                  add          t2, a3, gp
                  nop
                  auipc        s8, 1040995
                  auipc        a7, 596764
                  auipc        t2, 505777 #end riscv_int_numeric_corner_stream_14
                  li           s7, 0x77488260 #start riscv_int_numeric_corner_stream_19
                  li           s2, 0xffffffff
                  li           t2, 0xffffffff
                  li           s4, 0x0
                  li           s11, 0x5bea5503
                  li           s1, 0x0
                  li           t6, 0x80000000
                  li           ra, 0x0
                  li           a3, 0xd8a85709
                  li           s8, 0x0
                  sub          a3, t2, t2
                  lui          s8, 20953
                  lui          a3, 824595
                  nop
                  addi         s11, s2, 727
                  add          s11, s7, t6
                  auipc        t6, 229302
                  nop
                  auipc        s4, 977273
                  auipc        s8, 357727
                  lui          s2, 223925
                  sub          s4, s11, s2
                  addi         a3, s11, -593
                  auipc        ra, 180849
                  addi         ra, s2, 249
                  nop
                  lui          s8, 603211
                  add          a3, t6, s11
                  sub          a3, s7, s1
                  auipc        a3, 205363
                  sub          t6, s8, s7 #end riscv_int_numeric_corner_stream_19
                  li           a7, 0xa5c3a3af #start riscv_int_numeric_corner_stream_17
                  li           t4, 0x80000000
                  li           s1, 0xffffffff
                  li           s3, 0x80000000
                  li           t6, 0xffffffff
                  li           t2, 0xffffffff
                  li           a2, 0xffffffff
                  li           t5, 0x0
                  li           s2, 0x0
                  li           s5, 0x80000000
                  lui          s2, 88508
                  sub          a2, t5, a2
                  add          s2, s3, t2
                  add          a7, a7, a7
                  sub          s2, t5, s1
                  auipc        s2, 61237
                  lui          a2, 111579
                  lui          t6, 982494
                  lui          t4, 38210
                  addi         a7, a2, 850
                  sub          s1, s2, s1
                  sub          t2, s1, t6
                  lui          s5, 747749
                  lui          t4, 250952
                  lui          a7, 54781
                  nop
                  lui          s2, 566500
                  auipc        t6, 177268 #end riscv_int_numeric_corner_stream_17
                  srli         s2, t0, 2
                  srli         zero, t1, 3
                  slt          a0, tp, s0
                  add          a0, ra, t6
                  or           a3, a2, a0
                  addi         tp, s11, 836
                  xori         s2, s1, 975
                  sltu         s3, s4, s3
                  addi         gp, t0, 1262
                  or           s2, s0, zero
                  slli         a7, a5, 15
                  nop
                  sll          a7, t2, t3
                  and          s7, t5, t0
                  addi         t6, s6, 1099
                  sll          s8, a1, s3
                  xor          s5, t0, t2
                  srai         s7, s5, 14
                  andi         t4, s5, -2006
                  srli         a4, a3, 0
                  slti         a3, t3, 1627
                  auipc        s3, 503725
                  sltu         s1, gp, s7
                  andi         s5, a0, 1982
                  xori         s11, zero, 690
                  andi         t2, a4, 676
                  sltiu        ra, a6, -2013
                  andi         s2, t1, 483
                  slli         gp, s0, 1
                  xori         s6, s9, -1100
                  srai         s8, gp, 23
                  or           gp, a4, s3
                  sub          a4, s1, a5
                  and          s3, s7, gp
                  lui          ra, 802793
                  nop
                  andi         a4, s11, 1651
                  ori          zero, a7, 908
                  slli         a2, t3, 4
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           s3, 0xe54863c
                  li           s1, 0x5b5c05f3
                  li           a1, 0xffffffff
                  li           ra, 0xffffffff
                  li           t0, 0x797a6f7d
                  li           a2, 0x0
                  li           s6, 0x0
                  li           s4, 0x0
                  li           t2, 0x0
                  auipc        t0, 320885
                  lui          ra, 238696
                  lui          tp, 984221
                  lui          ra, 957371
                  auipc        s6, 450489
                  lui          s4, 729422
                  lui          ra, 192357
                  auipc        tp, 732633
                  sub          s1, s4, s1
                  add          t2, s4, s3
                  sub          t2, a2, ra
                  addi         tp, tp, 471
                  auipc        t0, 402246
                  add          a1, a1, ra
                  addi         ra, s6, -1911
                  add          t0, t2, a2
                  lui          a1, 266486
                  addi         s3, ra, 1735
                  add          s3, tp, s4
                  auipc        tp, 321471 #end riscv_int_numeric_corner_stream_10
                  and          s9, s2, a0
                  nop
                  sltu         a6, a2, t3
                  slt          s9, tp, t3
                  lui          s3, 773129
                  and          t2, s7, s5
                  slli         s6, s11, 4
                  slli         s5, a4, 19
                  addi         s1, s11, -1438
                  and          t1, t0, a7
                  or           s7, zero, gp
                  sra          tp, s3, sp
                  sltiu        t5, a6, 85
                  slli         a2, t1, 31
                  slti         s3, t1, 767
                  lui          s3, 801457
                  srai         t5, s5, 5
                  ori          gp, t0, 435
                  xor          s4, s2, t4
                  srl          a2, tp, gp
                  andi         s5, a5, 1048
                  slti         s1, s4, -172
                  slti         tp, a2, -581
                  xor          t0, a5, a5
                  slti         t6, a2, -1088
                  slli         s1, t3, 9
                  sll          s6, t6, a4
                  add          s11, t3, s2
                  and          s5, s4, a7
                  auipc        ra, 763315
                  nop
                  sll          s6, s9, tp
                  srl          s5, gp, s4
                  slli         a1, s1, 17
                  and          t0, s1, s5
                  slli         a7, a0, 10
                  slli         s6, gp, 19
                  add          gp, s3, t0
                  sll          a7, s1, sp
                  ori          a4, t3, -419
                  xori         s5, t5, -272
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           s8, 0x84ac1a82
                  li           s4, 0xffffffff
                  li           s3, 0x0
                  li           s5, 0x4fa0a37b
                  li           s10, 0x0
                  li           s6, 0x90020958
                  li           t6, 0x80000000
                  li           a7, 0xffffffff
                  li           s1, 0xc3c3b413
                  addi         s3, s5, -775
                  auipc        s6, 932435
                  nop
                  add          s3, t1, s6
                  auipc        t1, 420887
                  auipc        s3, 1020929
                  add          s5, s3, a7
                  nop
                  addi         a7, s3, 525
                  add          s6, t6, s5
                  addi         s4, s5, -1574
                  addi         s5, a7, -829
                  nop
                  nop
                  nop
                  lui          s6, 659917
                  auipc        s10, 764804
                  sub          s3, t1, t6
                  add          t1, t6, a7
                  nop
                  add          s1, s6, t6
                  auipc        s6, 370214
                  auipc        s1, 234881
                  auipc        a7, 432022
                  addi         s8, t6, -1743
                  nop
                  add          s10, s1, s5
                  sub          t1, s10, s3
                  addi         s3, s1, 648 #end riscv_int_numeric_corner_stream_13
                  xor          zero, a2, a0
                  andi         a7, s5, 1717
                  srl          tp, s0, gp
                  srl          t2, a3, a7
                  or           t0, s8, gp
                  sub          s6, ra, sp
                  sltu         s3, s9, ra
                  sltu         sp, s8, t1
                  slli         s2, a6, 16
                  xori         s11, a5, 418
                  sltu         tp, zero, s8
                  and          a1, s0, t4
                  sltiu        a4, t4, -342
                  xor          t2, s7, a5
                  or           t5, s3, t6
                  auipc        s10, 589870
                  slti         t6, s7, -925
                  slt          s3, t5, t1
                  srai         s3, a3, 4
                  auipc        s3, 866308
                  or           s1, s7, tp
                  slti         t1, t5, 590
                  slli         s4, t4, 9
                  andi         s2, a6, -1272
                  add          s1, t4, s6
                  sltu         gp, s8, s9
                  or           t6, t1, gp
                  srl          s4, s10, sp
                  srl          a4, s3, t3
                  sltu         a1, a3, a5
                  addi         t2, t4, -1288
                  srl          t0, s9, a1
                  andi         zero, tp, -2008
                  slt          tp, a1, s11
                  add          a0, s9, t2
                  srl          s7, a0, ra
                  ori          a2, zero, -1121
                  sub          s2, sp, a6
                  sltu         s11, s9, s0
                  andi         sp, s0, 1485
                  nop
                  auipc        s2, 571907
                  sltu         a7, t4, t6
                  sra          ra, t3, tp
                  sra          ra, s2, a3
                  slli         t2, s4, 15
                  add          s5, a3, s10
                  sub          s10, t2, t2
                  lui          s10, 976602
                  sra          ra, t3, a0
                  srl          s3, s10, t5
                  andi         a2, tp, -2009
                  sub          a4, s10, a5
                  slli         a7, s10, 10
                  xori         s2, s7, -1508
                  sll          a3, s4, a4
                  andi         a4, t4, -1985
                  ori          tp, a3, 690
                  slti         sp, s0, -1468
                  sll          t2, a1, t1
                  xori         a7, s1, 863
                  nop
                  auipc        a1, 648533
                  andi         t4, a3, -1824
                  xori         a1, s2, -334
                  slt          a3, t1, t2
                  and          ra, a2, s9
                  srli         s10, a0, 4
                  addi         gp, sp, -1212
                  srli         t4, t1, 14
                  sltiu        ra, t3, 671
                  sub          a1, a0, t6
                  or           t1, t3, s1
                  slli         t2, t3, 14
                  auipc        t0, 157673
                  sra          a6, a6, t3
                  slli         t6, a7, 19
                  nop
                  nop
                  xor          s4, s7, t6
                  srai         t0, tp, 15
                  andi         s2, gp, 1667
                  or           zero, s6, zero
                  srai         t0, t5, 30
                  andi         s10, tp, -522
                  xor          t5, a2, s4
                  xori         t2, a0, -1162
                  slti         s3, a7, -1417
                  add          t1, a0, s3
                  lui          t4, 280816
                  auipc        s3, 499514
                  auipc        t6, 147157
                  and          a2, s10, a4
                  and          s6, t6, s6
                  srai         a1, s3, 1
                  sltu         tp, s0, a4
                  xor          tp, a6, a4
                  xor          t5, t0, t4
                  srl          a1, zero, s10
                  srai         t5, gp, 17
                  sltu         sp, a7, s10
                  srli         t6, a0, 11
                  sll          s5, tp, t2
                  slt          s10, t6, s6
                  andi         a7, s0, 319
                  sll          a1, t1, a0
                  andi         a0, tp, 817
                  xori         t1, a2, 771
                  srli         tp, sp, 0
                  or           t0, s5, s10
                  slti         a2, t5, 967
                  ori          a6, a7, -190
                  sub          a6, s0, t5
                  nop
                  xor          s11, t0, s10
                  xor          t2, s3, a2
                  srai         a3, t1, 13
                  xori         a6, s2, -30
                  andi         s6, s2, -1240
                  sra          s9, s7, s4
                  srli         a0, gp, 24
                  and          s7, a1, s6
                  add          s2, s11, a0
                  slli         t1, t6, 9
                  slti         s7, s2, -1785
                  nop
                  srl          t1, t6, s8
                  addi         gp, s5, -268
                  slti         s10, a4, -398
                  slti         s8, tp, 1028
                  sltiu        t2, s8, 1845
                  slt          s11, s4, t0
                  and          a7, t5, a2
                  addi         ra, s6, 703
                  xor          a1, a2, s4
                  sra          tp, t4, s1
                  xor          a3, t5, s0
                  sub          a0, gp, s2
                  xori         t1, s0, -925
                  sltiu        s9, t5, -2003
                  xori         a2, gp, 56
                  slli         s2, a3, 29
                  nop
                  auipc        a3, 907954
                  xori         t6, zero, 1630
                  lui          sp, 90808
                  nop
                  slti         tp, s10, -161
                  sltiu        t2, t5, 654
                  nop
                  slli         t2, a3, 18
                  sra          s4, s2, t0
                  slt          s5, t6, t5
                  ori          a1, a7, -1779
                  nop
                  andi         t1, t0, 140
                  srl          a0, ra, ra
                  ori          gp, t3, -533
                  srl          s3, sp, t0
                  and          a3, t1, s8
                  auipc        t2, 332826
                  slti         s1, sp, 944
                  srl          zero, a3, s10
                  sll          t2, t2, a6
                  srai         a4, s4, 8
                  slli         t6, s10, 4
                  or           t2, s9, gp
                  lui          s7, 250498
                  or           a0, s6, s0
                  addi         sp, s0, -1001
                  ori          a6, tp, -791
                  xor          s8, s0, s0
                  srl          t2, t5, s1
                  andi         a1, zero, -1630
                  addi         ra, s3, 1728
                  slti         s10, tp, 49
                  sub          s2, s5, t1
                  lui          zero, 295753
                  slti         zero, s10, -244
                  xor          s10, t0, t0
                  srl          a2, s3, s1
                  srai         t1, zero, 27
                  nop
                  slti         t5, t0, -643
                  and          s2, s7, a5
                  nop
                  xor          s7, a5, a5
                  addi         tp, zero, -1381
                  auipc        s2, 961349
                  xor          t4, s7, a2
                  and          s9, s10, s5
                  srai         gp, t2, 15
                  xor          a7, t0, a6
                  ori          t2, t4, -294
                  xor          t6, s1, s7
                  srli         s6, a4, 6
                  sra          tp, s4, s4
                  slt          s1, a1, zero
                  slti         t0, s9, -967
                  slti         s6, a3, 1057
                  auipc        zero, 189973
                  xori         tp, a2, -1251
                  slt          s2, s0, s0
                  sub          s2, a3, s10
                  lui          sp, 618287
                  srli         s3, t3, 4
                  add          sp, t4, t2
                  xor          a4, a0, s8
                  ori          t1, s8, -313
                  slti         ra, t4, 374
                  ori          s9, a6, -948
                  xor          s4, gp, a6
                  srai         a0, s2, 11
                  nop
                  addi         s10, zero, -202
                  slti         tp, t5, 1480
                  or           a2, t5, ra
                  srl          a1, a5, s4
                  sltiu        s4, t0, -1990
                  sll          t2, t0, a4
                  slt          t0, t6, a1
                  sll          s8, a7, t5
                  auipc        s5, 14106
                  sra          a3, a2, a1
                  sra          a0, s5, gp
                  xori         t2, tp, 1379
                  sltiu        s1, s11, -1323
                  add          s10, t1, a1
                  and          s1, s9, t2
                  auipc        s1, 750177
                  lui          t6, 582012
                  sra          a4, t6, a1
                  auipc        s8, 1044271
                  srl          t2, s5, a1
                  sltiu        zero, a7, -732
                  srli         a2, t3, 28
                  nop
                  xori         sp, s5, -1192
                  or           s6, s9, a0
                  slt          a2, s10, a2
                  and          s4, gp, a3
                  addi         a4, a2, -1844
                  slli         a1, a7, 16
                  nop
                  xor          s5, t4, s6
                  ori          a2, a7, -1376
                  or           a3, gp, s8
                  slt          s3, t3, t6
                  srli         s6, s5, 8
                  auipc        s5, 370592
                  addi         s9, s7, -1481
                  sra          t2, s6, t6
                  lui          a0, 176799
                  ori          sp, a6, 1659
                  sub          s4, a7, s8
                  andi         a7, a4, 100
                  slt          zero, zero, s8
                  sll          a2, sp, s11
                  slli         s5, t6, 2
                  sll          t1, t0, gp
                  or           t4, t5, t3
                  sltiu        a6, s0, 1373
                  lui          a0, 60828
                  slt          a6, sp, t0
                  and          s4, a4, gp
                  lui          sp, 888062
                  slti         s4, a0, -1807
                  xor          a4, ra, s0
                  srl          a2, s8, t4
                  sll          zero, s9, t5
                  sll          tp, s9, s11
                  xor          s9, zero, t2
                  or           t5, a3, a3
                  srl          a2, s10, t3
                  xori         s8, a7, 1612
                  and          a0, ra, s10
                  sra          zero, t6, s7
                  slti         s2, a3, 332
                  addi         s7, s2, 1225
                  ori          s11, s2, 1124
                  xori         s4, a5, 1371
                  auipc        s1, 536199
                  nop
                  add          a2, t6, a5
                  sll          a4, a0, s9
                  xori         a2, s2, 1332
                  srli         sp, s3, 12
                  slt          s8, s8, t3
                  srai         a6, a6, 27
                  slt          s1, s9, s3
                  slt          s6, a2, a1
                  ori          zero, s5, 1679
                  add          s5, s2, s11
                  srli         a4, a2, 11
                  slt          t2, a1, t3
                  sll          s4, sp, sp
                  sltiu        t2, a7, 914
                  and          t4, s11, a7
                  nop
                  srai         s9, s2, 27
                  sra          s10, t3, a0
                  sltu         a0, s5, a1
                  sltu         t4, s8, s7
                  xor          t2, s1, a5
                  srai         tp, s7, 10
                  add          s11, t3, t5
                  lui          a7, 878151
                  addi         t6, s8, 146
                  add          gp, s7, s1
                  srai         a1, a5, 6
                  sll          t5, s11, gp
                  slti         s8, ra, 1088
                  and          s4, s1, s1
                  addi         s5, t5, -1390
                  nop
                  slli         s10, s4, 27
                  add          t2, a2, s10
                  and          s11, a4, a0
                  andi         a7, t5, 1008
                  auipc        t6, 824028
                  sltu         t1, t0, t3
                  xori         s4, a4, 1132
                  srl          s9, s7, s9
                  srli         a1, s8, 6
                  add          s2, a5, a3
                  srai         t4, a5, 1
                  slti         a0, t3, -1445
                  addi         t0, s0, -1718
                  sltiu        s9, t0, -1598
                  srl          s1, zero, t0
                  sll          t1, s0, s5
                  xori         s3, zero, -989
                  sra          a7, s7, s5
                  sub          s6, s6, s2
                  ori          tp, s6, 1767
                  sra          s11, tp, a3
                  addi         t0, tp, -2033
                  addi         s9, a3, -1695
                  sltu         s1, tp, s0
                  sll          s8, t1, a6
                  slt          tp, a1, a1
                  ori          s3, tp, 599
                  srai         t0, a3, 31
                  auipc        a4, 410887
                  slt          s1, tp, a6
                  srli         a4, t4, 0
                  sltiu        a0, s9, -694
                  andi         s8, sp, 421
                  sltiu        a1, s6, 1794
                  slt          s1, a1, s3
                  srli         s5, zero, 8
                  sub          a4, tp, s11
                  add          s5, gp, s5
                  slti         a7, t3, -1597
                  auipc        t1, 675258
                  xori         zero, s5, -428
                  auipc        a6, 576039
                  slt          ra, ra, a7
                  auipc        a6, 942252
                  slt          t5, zero, s5
                  nop
                  add          t2, gp, a6
                  auipc        s5, 746365
                  xor          tp, s6, tp
                  and          t1, tp, s5
                  srai         t5, s0, 23
                  slli         gp, t5, 3
                  add          ra, s4, s2
                  sltu         a0, s3, s11
                  sll          s5, gp, t1
                  add          t2, gp, a7
                  slt          a1, gp, s7
                  sltu         a6, a1, s4
                  lui          a0, 204289
                  and          s9, a2, s2
                  or           s11, a4, s10
                  srli         s1, s4, 10
                  sll          a1, a0, sp
                  xori         a1, a4, -604
                  sll          a2, gp, t0
                  sub          sp, s11, s0
                  srl          t5, s4, s0
                  lui          sp, 716490
                  or           t2, a2, t2
                  slti         t6, s4, -1521
                  nop
                  sltiu        a0, s6, 2030
                  add          s7, s8, t6
                  sub          s7, t5, a0
                  xor          s4, tp, a2
                  auipc        a2, 881371
                  auipc        t4, 189507
                  sltiu        s4, a6, -570
                  addi         tp, sp, 463
                  addi         s3, s10, -23
                  sltu         tp, a3, a0
                  add          a7, a2, t1
                  slt          s11, s0, t2
                  or           s4, s7, a0
                  xor          s10, s6, t5
                  sltiu        s2, s10, -1193
                  lui          a3, 711476
                  sub          ra, s4, s5
                  addi         s4, a6, -640
                  srli         s4, t5, 12
                  sra          ra, t1, s8
                  srai         a4, zero, 8
                  srai         s7, s0, 3
                  sub          a3, t6, s6
                  sub          a3, gp, zero
                  auipc        s4, 546480
                  addi         s9, t2, 1202
                  srai         t4, s7, 1
                  sltu         s6, t3, t6
                  slt          t4, s4, s4
                  sltiu        ra, gp, 795
                  or           t1, gp, tp
                  and          a4, a1, t2
                  addi         s6, s1, 365
                  sltu         a0, s10, s4
                  sltu         a2, a2, s7
                  lui          s11, 381760
                  sra          ra, zero, s0
                  or           s6, gp, s8
                  nop
                  slti         ra, a3, 821
                  sltu         t5, a6, a4
                  xor          s11, t0, a2
                  nop
                  sltiu        a2, a7, -1698
                  sltu         s6, a2, gp
                  sltu         tp, s7, ra
                  sltiu        t2, s11, -1412
                  auipc        ra, 467896
                  auipc        a7, 254424
                  slt          s2, t6, s10
                  sltu         gp, t4, a7
                  auipc        t1, 602161
                  andi         s2, a7, 979
                  slli         tp, s7, 10
                  sub          t1, s3, a6
                  addi         s2, a2, 90
                  add          sp, a6, s11
                  auipc        s11, 303323
                  srl          s2, a3, t4
                  slt          sp, s3, s3
                  sra          a0, s1, s3
                  addi         a6, s4, -399
                  auipc        s7, 661110
                  srl          a6, a5, s8
                  slt          s2, s1, t3
                  sra          s10, s1, t1
                  srli         s1, s10, 25
                  xor          a6, s2, zero
                  xori         t0, s8, 1535
                  addi         s9, t2, -1985
                  srli         a3, a5, 24
                  slt          s4, t4, s2
                  auipc        s8, 650292
                  slli         a3, a6, 22
                  srai         s1, s3, 29
                  addi         a2, a7, -552
                  xori         t5, a5, -950
                  xori         gp, a6, -299
                  xor          a6, t1, s3
                  xor          s8, a5, s2
                  add          s3, ra, gp
                  sltiu        t6, s10, 1210
                  nop
                  or           a3, t2, tp
                  auipc        s5, 620538
                  srl          s10, t0, s8
                  sra          t4, s0, a6
                  slt          s1, a5, a3
                  auipc        t0, 1024495
                  lui          t0, 859913
                  or           t0, s11, s3
                  slti         a3, s1, -456
                  sltu         a1, t0, s8
                  slli         a6, a0, 13
                  add          a4, a7, tp
                  sltu         a1, s7, s11
                  and          a3, gp, s1
                  addi         t0, zero, -752
                  sll          t0, s3, a6
                  or           s3, a2, s1
                  andi         s8, s3, -1078
                  slt          s10, t5, t2
                  andi         s5, t4, 1240
                  sltiu        s7, s1, -2048
                  add          t0, t2, s3
                  addi         s7, t0, 0
                  sra          a6, a4, a7
                  or           t1, a5, a4
                  sll          a0, s8, a0
                  addi         t6, t2, 1458
                  sll          a0, s0, s6
                  add          sp, s3, s7
                  or           s9, t2, s6
                  xori         t1, s1, -257
                  srai         s9, s11, 26
                  slli         a4, s7, 23
                  andi         a4, a5, 496
                  addi         gp, a2, 1688
                  slt          a1, a1, s3
                  sll          a1, s9, a3
                  sltu         s1, s10, s8
                  lui          s3, 416377
                  xor          s5, t0, a4
                  andi         s3, gp, -92
                  xori         t2, a5, 1865
                  sub          s4, ra, a5
                  slti         a3, s3, -340
                  sub          a2, t6, s6
                  lui          s3, 918767
                  xori         s8, s8, -1603
                  slt          a0, a2, t0
                  sltiu        a4, tp, -663
                  add          a1, a3, t0
                  slli         t5, t2, 21
                  xor          a3, a3, a6
                  srai         a0, t6, 4
                  sltiu        s1, a5, -1184
                  ori          t2, t3, 96
                  srl          s8, s10, t6
                  sltiu        s1, a7, 1903
                  sltiu        s11, s3, -1828
                  sra          s10, s2, t3
                  andi         t4, s4, -475
                  sltu         s10, t3, a4
                  srl          t5, a0, a2
                  srl          s10, a5, a0
                  nop
                  srli         t0, t5, 12
                  addi         zero, a5, 639
                  srai         t2, a5, 22
                  sra          t0, s4, gp
                  sltiu        s7, ra, 424
                  sltu         gp, a6, a2
                  slli         a2, t6, 3
                  slti         a1, a0, -1277
                  sra          tp, gp, a7
                  xor          s6, s10, s8
                  auipc        s10, 549071
                  sra          s6, s8, a6
                  andi         a6, t5, 464
                  sub          s5, sp, t6
                  srl          s4, a7, tp
                  auipc        t5, 865136
                  slli         t6, a2, 9
                  sll          s5, a4, s9
                  and          a4, s2, t4
                  srli         sp, s4, 6
                  or           s8, ra, s5
                  sltiu        s1, t0, 349
                  slli         s3, gp, 7
                  and          a3, t6, sp
                  xor          a6, a1, s4
                  srli         gp, a3, 11
                  addi         a2, t6, 1964
                  ori          s4, gp, -550
                  sltu         gp, s8, s9
                  ori          s3, zero, 230
                  xor          a7, sp, a0
                  sltu         gp, s3, t0
                  sltiu        s9, a7, 996
                  srl          a4, t4, t5
                  xori         tp, sp, -607
                  sltiu        ra, s9, 912
                  slli         t1, s7, 27
                  sra          s6, s2, s6
                  slli         a0, s0, 12
                  srai         a6, s1, 9
                  srl          t5, a3, s10
                  and          a7, s9, a7
                  add          a3, s3, s10
                  xor          a7, a7, sp
                  sll          s7, s10, tp
                  sub          s2, s4, sp
                  auipc        ra, 274393
                  lui          s11, 19169
                  add          s4, s5, s8
                  xor          a1, tp, a5
                  slli         t0, s7, 16
                  addi         a6, a6, -904
                  srai         s1, s11, 22
                  xori         s7, s4, -226
                  auipc        t0, 839145
                  nop
                  sltu         a7, tp, a0
                  slli         s9, s10, 1
                  slli         s4, t5, 7
                  sltu         s10, s10, s5
                  slt          s5, zero, t4
                  srl          t4, ra, t0
                  sra          s10, zero, tp
                  andi         a1, s10, -1335
                  nop
                  xor          s7, s5, ra
                  srai         tp, s0, 5
                  sub          t1, s4, s4
                  srli         a7, t1, 0
                  slli         t1, tp, 30
                  addi         t0, s0, -1611
                  slti         t1, a6, 1152
                  andi         a3, s4, 35
                  auipc        s1, 1044017
                  slt          gp, gp, a5
                  nop
                  lui          t2, 125878
                  ori          s4, s8, -676
                  sltu         t1, a0, a0
                  and          a6, a5, a3
                  srai         t0, s6, 5
                  sltiu        a6, s9, -1727
                  lui          a3, 590316
                  slli         a2, a6, 29
                  add          s1, a2, s5
                  sll          s5, s10, a6
                  slt          s10, s5, s7
                  slt          s6, t2, a2
                  and          a2, t1, s0
                  sltu         a7, s9, t6
                  slli         s10, t5, 31
                  sub          t2, a2, ra
                  addi         s10, s5, 1622
                  sra          zero, s7, sp
                  sltu         s7, s10, s5
                  or           s4, ra, a7
                  xori         s11, s1, 868
                  ori          s10, s9, 1472
                  sltiu        t5, t4, -810
                  sub          a2, s9, ra
                  srli         a3, t4, 18
                  and          t0, t4, a3
                  slt          a2, a5, a7
                  sltu         t6, a2, tp
                  or           s10, a0, t4
                  auipc        s11, 577543
                  xori         t4, zero, 1141
                  auipc        a4, 881076
                  sra          a3, a2, s7
                  ori          a0, t5, -169
                  xor          s3, a3, a1
                  slt          zero, s6, t2
                  srai         s8, a4, 14
                  sll          s6, a3, t3
                  and          s6, t4, a2
                  lui          a4, 12228
                  add          s9, s10, gp
                  ori          ra, t6, 907
                  sub          a3, s10, a6
                  addi         gp, zero, -1307
                  addi         tp, s2, -684
                  add          s7, s1, a2
                  srl          t6, s1, s3
                  auipc        s9, 1011545
                  auipc        t2, 367854
                  add          a7, a7, s9
                  slt          s9, s3, gp
                  or           tp, s4, t3
                  andi         s1, s6, -2044
                  or           t6, s10, zero
                  lui          a3, 377344
                  auipc        a4, 358288
                  sltiu        gp, a3, -441
                  xori         s8, s6, -49
                  srl          t0, ra, t5
                  or           tp, s11, a6
                  srli         zero, s3, 13
                  nop
                  sltu         t0, s11, t2
                  andi         zero, a4, 680
                  srai         s8, a5, 1
                  sll          s5, s11, t1
                  xori         sp, zero, 1885
                  andi         t5, s11, -1897
                  slt          t2, s1, sp
                  or           a2, s11, t1
                  xori         zero, s8, -1815
                  xori         t0, s5, -1395
                  slli         t4, s5, 3
                  slti         a0, s0, 43
                  xor          t0, t2, s9
                  lui          a6, 151007
                  slt          t5, s10, a2
                  andi         t4, s5, -297
                  srl          zero, zero, a4
                  srli         t6, s3, 25
                  lui          a1, 783501
                  slti         ra, s9, -1865
                  ori          t1, a1, 3
                  andi         sp, t6, -947
                  auipc        a6, 569005
                  sub          t0, s8, t1
                  sll          s3, t1, t0
                  slli         a4, a4, 29
                  ori          sp, s6, 1742
                  sltiu        a6, s0, -1262
                  slti         tp, t5, 249
                  xori         t0, s3, -1427
                  xori         a2, s10, -773
                  xori         t6, s11, -1450
                  slti         s4, s4, 1630
                  sltu         zero, t1, s5
                  add          zero, t5, s1
                  or           s3, a6, s9
                  xor          s9, s9, a2
                  addi         s4, s6, 379
                  and          s2, a5, t4
                  slt          zero, a6, s4
                  and          tp, gp, a2
                  ori          s1, s2, 139
                  slti         t2, s2, -786
                  sll          s9, s2, t4
                  lui          ra, 29734
                  srl          s11, s3, ra
                  sltiu        a3, s9, -553
                  ori          a3, s7, -883
                  sltiu        s6, s5, -2005
                  slti         s7, a0, -107
                  xor          s2, a7, t2
                  nop
                  xor          t6, s3, a4
                  srli         s10, s9, 5
                  nop
                  srl          s9, s1, t4
                  srli         gp, t6, 2
                  auipc        a1, 621178
                  lui          t4, 872820
                  sra          s8, t1, s5
                  sub          s11, s10, t3
                  xori         gp, a3, -1783
                  auipc        t2, 367185
                  sll          zero, zero, s3
                  sll          a3, s8, s9
                  and          s11, t1, s11
                  or           s7, s3, tp
                  slti         s10, a0, -693
                  andi         sp, a1, -270
                  addi         s9, sp, -628
                  add          a4, a6, t4
                  slti         t5, s6, 1431
                  addi         s7, s11, 281
                  slti         t4, s3, 1347
                  xori         s5, a7, -353
                  addi         s4, ra, -494
                  sltu         s9, s0, s1
                  add          ra, s4, ra
                  ori          tp, s4, -499
                  ori          ra, a4, 1194
                  and          a2, tp, a7
                  slt          s4, s8, s7
                  srai         t0, sp, 28
                  xor          t1, s11, a0
                  slt          ra, a2, tp
                  lui          a1, 532134
                  srli         a6, a2, 26
                  lui          a0, 732869
                  srl          s1, s11, t6
                  andi         s6, s6, 926
                  auipc        a7, 645626
                  sra          tp, a0, s4
                  srl          zero, t3, a2
                  xori         ra, t4, 1652
                  add          gp, a6, a6
                  andi         s6, s8, 1630
                  and          t4, s4, sp
                  ori          a3, s1, -1914
                  xor          s1, gp, sp
                  srli         sp, s7, 14
                  srli         s2, gp, 28
                  add          s6, ra, t6
                  auipc        t5, 537270
                  nop
                  xor          s11, s10, s3
                  sltu         zero, s4, a5
                  add          a1, a2, ra
                  xori         a6, s7, 211
                  addi         s8, s1, -1467
                  srl          sp, a2, s2
                  srl          s6, zero, s7
                  sltu         zero, a4, t5
                  sll          t0, t4, zero
                  lui          t5, 596664
                  srli         a1, t2, 19
                  nop
                  sltiu        t2, ra, -184
                  addi         t1, a0, 1767
                  sra          s8, t1, tp
                  sub          gp, s10, t0
                  slti         tp, s9, 245
                  addi         gp, s2, -1937
                  andi         a3, s7, -331
                  srai         t1, a0, 25
                  slli         s10, a0, 11
                  sra          t6, a7, s5
                  srai         s2, s4, 3
                  addi         t6, a7, 1945
                  slti         tp, t5, 1917
                  or           s5, t0, a6
                  sub          a1, t1, a7
                  slli         gp, a7, 1
                  addi         tp, s10, 1120
                  lui          s10, 205967
                  xor          s1, s8, a0
                  sltu         ra, a3, a7
                  srli         sp, s2, 16
                  sra          t0, s0, t0
                  or           s4, s7, a5
                  ori          a7, ra, -1356
                  sub          t0, a0, s6
                  auipc        s8, 168661
                  lui          a4, 965816
                  srai         t5, zero, 19
                  lui          s2, 603797
                  xor          t6, gp, a5
                  slti         s3, s0, 1021
                  srai         t5, a7, 18
                  auipc        a0, 140365
                  sll          s1, s5, a2
                  srli         s11, a1, 1
                  lui          a1, 1033010
                  andi         gp, s0, 1763
                  srl          s7, t3, a3
                  or           gp, s10, zero
                  slt          s7, s2, a3
                  auipc        s7, 906163
                  slti         t2, zero, 142
                  addi         a2, a7, 790
                  addi         a3, gp, -1823
                  xor          s6, s1, t5
                  sltiu        a1, t1, 1639
                  sll          t0, a4, a6
                  sll          a6, t5, s11
                  lui          t5, 725755
                  and          a4, gp, t4
                  addi         t1, a5, 1785
                  srli         t4, a2, 26
                  slti         ra, t1, -1
                  and          t6, s1, zero
                  xori         a7, s10, 1078
                  sltu         s3, s11, a1
                  slti         gp, s4, 1150
                  xori         s6, gp, 930
                  srli         s8, sp, 27
                  sltiu        s9, a4, 317
                  ori          s6, s1, -1817
                  andi         s9, a4, -969
                  ori          t0, t1, 265
                  sll          a1, a3, s9
                  andi         a0, t4, -480
                  slti         s7, s8, 882
                  sltu         a4, s4, s8
                  slti         a2, a1, 1300
                  auipc        sp, 851571
                  or           a2, ra, s8
                  nop
                  sltiu        a7, sp, -289
                  add          gp, zero, s11
                  sltu         s1, t4, a4
                  srai         s11, tp, 29
                  srl          a4, sp, tp
                  nop
                  sll          s5, ra, sp
                  slti         t4, s2, 428
                  lui          s2, 872999
                  addi         zero, a0, 2017
                  sll          a1, a0, ra
                  slli         zero, tp, 24
                  sltiu        s5, a5, -764
                  srai         t0, a4, 13
                  addi         t5, a5, 1495
                  auipc        s11, 595317
                  sll          a6, s8, t3
                  ori          s5, ra, 1318
                  addi         t6, s7, 190
                  sra          t1, t2, s7
                  srai         a7, s11, 29
                  xor          a7, a0, s8
                  slti         s11, s9, 311
                  auipc        a7, 857847
                  nop
                  sltu         zero, sp, s1
                  or           s9, tp, s10
                  lui          zero, 107932
                  slti         a3, sp, 1912
                  sub          s6, t3, sp
                  sll          s2, s4, sp
                  xor          s8, a1, sp
                  xor          a6, s4, t4
                  srl          t2, t2, t0
                  addi         s2, sp, 16
                  sub          s4, a4, t1
                  slti         s11, s4, 1138
                  addi         s3, s7, -753
                  sltu         t4, ra, a3
                  slti         s8, s5, 330
                  or           t1, t4, s3
                  slti         t4, s5, 571
                  slti         s8, s9, 1675
                  srai         t2, a6, 13
                  sll          t5, t0, tp
                  and          t0, s3, t2
                  slti         s3, a2, 1607
                  xor          t1, a1, s1
                  slli         t1, ra, 29
                  add          s10, s1, t5
                  andi         gp, t5, -1100
                  ori          s7, t2, 1529
                  add          t1, t2, s8
                  xor          t0, a3, t6
                  srli         s2, a0, 11
                  nop
                  slt          tp, sp, s0
                  sll          t2, s9, s10
                  srli         gp, t2, 19
                  and          t4, s2, zero
                  sltu         s5, a2, a3
                  add          ra, s9, a3
                  auipc        a6, 501703
                  add          zero, s10, ra
                  slti         s1, s2, -446
                  sub          s4, zero, ra
                  or           a3, s2, zero
                  andi         s11, a4, 704
                  add          a7, s8, a1
                  sltiu        s11, sp, 1076
                  slti         a0, gp, -614
                  and          zero, t2, t0
                  sltu         a7, tp, zero
                  srai         s5, s6, 17
                  sra          s3, a1, t2
                  sll          a0, a2, s9
                  add          s2, s1, s3
                  and          a7, gp, t3
                  nop
                  sltu         a2, a0, sp
                  add          s3, s1, s0
                  srai         sp, t5, 5
                  addi         s10, t6, -1939
                  xori         tp, s2, -898
                  lui          s6, 149340
                  srli         sp, s1, 27
                  andi         a6, zero, 1141
                  or           zero, sp, zero
                  xori         s3, s6, -1592
                  ori          a1, tp, -1508
                  srl          s5, a5, s5
                  ori          s7, s7, 270
                  and          s3, s5, a4
                  sll          s2, a6, ra
                  xori         t4, zero, 1337
                  srl          ra, t4, s3
                  xor          t4, a3, s3
                  srli         tp, s3, 25
                  auipc        s9, 530746
                  slt          ra, s7, s7
                  srai         a1, t6, 9
                  and          a6, t1, s4
                  srai         t1, t4, 21
                  xori         s4, s0, 485
                  slli         s6, a0, 24
                  sltiu        sp, s4, -256
                  sltu         t0, a3, t3
                  lui          t6, 472424
                  sub          a2, s2, t1
                  lui          s1, 159598
                  sltiu        t4, a5, 1441
                  srai         s9, zero, 7
                  xor          t1, t2, t1
                  sra          a7, t5, a2
                  srai         t4, s6, 16
                  nop
                  slti         s3, zero, -606
                  nop
                  auipc        ra, 116160
                  sra          a3, zero, s1
                  andi         s5, s9, -437
                  sub          gp, a5, s6
                  slli         a3, ra, 23
                  lui          t2, 226751
                  auipc        a2, 508059
                  sltu         ra, s8, t4
                  lui          a7, 1023536
                  sub          s10, s7, t5
                  sltu         s11, s11, t0
                  sll          t2, t2, s3
                  auipc        ra, 159249
                  sltiu        sp, s0, -288
                  sra          t6, a0, t3
                  andi         ra, zero, -1744
                  slti         a3, a5, 891
                  addi         t4, tp, -1585
                  auipc        gp, 648421
                  srl          gp, a0, a2
                  add          a0, t5, s4
                  slti         t4, sp, 1694
                  srai         s4, sp, 1
                  srl          t4, t1, a6
                  and          a4, sp, s8
                  xori         s8, a0, -1307
                  sltu         s5, s6, t6
                  ori          s8, ra, -1380
                  srai         a4, a2, 25
                  sltu         gp, t6, a2
                  slli         s7, tp, 6
                  sltiu        s9, t4, 1566
                  srli         ra, a2, 22
                  andi         s5, a5, -1036
                  lui          s3, 907462
                  ori          a1, s5, 1668
                  sll          s10, t5, s2
                  sra          a3, t0, s8
                  add          s1, s5, a4
                  slli         gp, t6, 3
                  sll          a3, a5, s4
                  lui          a0, 276645
                  or           t6, t3, a3
                  sub          a6, s8, gp
                  sub          t1, a1, sp
                  auipc        s8, 748424
                  srl          s5, s10, s1
                  sub          s4, s3, t2
                  sltiu        s2, t0, 841
                  xori         s2, s11, -1451
                  slli         a1, s1, 23
                  srli         s9, a7, 15
                  slli         s8, s2, 23
                  srai         a1, a6, 19
                  sub          s2, s4, s3
                  and          a6, s7, s10
                  add          gp, tp, s7
                  xor          t4, s8, s4
                  andi         a2, s7, -11
                  sra          a1, s0, s7
                  add          a6, s9, s4
                  sra          sp, a6, s11
                  and          t4, s7, s4
                  xori         s10, a6, 550
                  srl          s9, s0, s9
                  sra          s6, s5, s0
                  add          a0, s9, t2
                  auipc        s4, 355656
                  ori          s1, t5, 1704
                  ori          a2, gp, -1848
                  xor          t5, s5, a3
                  sll          s10, t3, s3
                  sltiu        a3, a2, 1962
                  sra          t6, t4, s11
                  srai         t5, t3, 17
                  or           s1, zero, t3
                  sltiu        s8, a2, -1518
                  srli         tp, sp, 5
                  slli         tp, a5, 28
                  lui          t5, 677715
                  sra          a3, gp, s7
                  lui          s10, 106842
                  xori         s2, a2, -869
                  or           s6, s3, a6
                  andi         s1, s4, 405
                  sltu         s11, ra, s2
                  xori         a1, s2, 1036
                  ori          s5, s8, 1646
                  sltu         tp, t3, t3
                  slt          a7, s7, a7
                  sltiu        a3, a6, -99
                  srli         tp, a6, 3
                  srai         s4, s9, 30
                  sll          gp, ra, ra
                  ori          s7, s10, 1834
                  ori          s5, gp, 368
                  sltu         a0, ra, a6
                  slti         a6, gp, -2027
                  ori          a1, a0, 1704
                  sltu         a2, s8, a6
                  or           t2, s8, s10
                  addi         s10, s5, 1517
                  sll          s6, tp, a0
                  addi         t0, t1, -92
                  sll          t0, t5, a3
                  xori         t2, a7, 1326
                  sra          s3, gp, s0
                  slti         t6, t5, 507
                  and          tp, s7, s11
                  srli         t6, s1, 5
                  sub          s7, tp, s2
                  nop
                  srai         s10, zero, 22
                  xor          t4, a1, t6
                  nop
                  srai         t1, a6, 13
                  ori          t1, t3, -1198
                  xori         s5, s8, 2035
                  sra          a2, tp, s4
                  sra          t6, a0, tp
                  sra          s10, t3, a7
                  slli         ra, a1, 25
                  addi         sp, s10, -1398
                  srli         a7, s3, 15
                  sra          sp, zero, a6
                  andi         s8, t2, -205
                  lui          tp, 647855
                  ori          t2, s4, 884
                  add          a4, a5, a7
                  slli         t5, t4, 0
                  or           s11, s2, tp
                  and          s5, s8, s0
                  auipc        ra, 361898
                  sub          sp, a5, t3
                  auipc        s1, 578843
                  or           s10, t4, t1
                  srl          a4, a7, s4
                  xor          ra, t2, s0
                  and          s3, t5, a2
                  srli         a2, s3, 30
                  sltu         a1, s2, s7
                  sub          a6, ra, a7
                  add          a2, a1, t6
                  sltiu        t5, a1, -800
                  xor          a0, s3, a5
                  srai         t0, s6, 14
                  auipc        t5, 184674
                  xor          t5, s2, s11
                  andi         s7, ra, 998
                  sltu         t0, a2, a2
                  srai         s9, a3, 29
                  addi         a6, s9, 295
                  slli         a4, t0, 10
                  or           a4, t3, t1
                  slli         a7, s1, 24
                  andi         s2, s10, -1465
                  and          gp, s8, zero
                  srl          ra, s4, tp
                  ori          t5, s3, 569
                  auipc        a4, 301318
                  andi         a7, zero, -302
                  xori         tp, t2, -126
                  add          s8, s11, s7
                  xor          s11, a7, sp
                  sltiu        s1, s9, -446
                  sra          sp, s1, t5
                  sra          s5, sp, s6
                  and          s5, t1, a5
                  srl          t2, sp, a7
                  xor          s7, t6, s11
                  sltu         a3, a7, t5
                  srli         t1, t6, 2
                  srai         s4, s1, 22
                  ori          a3, tp, -609
                  or           a0, t1, s10
                  xor          t5, s1, tp
                  slt          t5, s3, s7
                  sra          a2, t1, t0
                  ori          t0, s11, 701
                  srl          ra, s11, t0
                  sltiu        a4, s1, -644
                  srai         s10, a4, 14
                  sltiu        s7, t6, 251
                  addi         s9, a6, 868
                  or           s3, s7, gp
                  srli         t1, t4, 29
                  nop
                  addi         s11, a0, -737
                  slli         s2, sp, 17
                  slt          a3, ra, a0
                  and          tp, t5, t5
                  lui          s3, 531541
                  xor          t1, a0, s2
                  slt          s10, gp, ra
                  srl          s4, s2, s2
                  ori          s4, zero, 1451
                  andi         s5, t4, -834
                  ori          tp, tp, -1185
                  ori          s7, s8, 1443
                  ori          zero, a2, -1841
                  slt          zero, a0, zero
                  lui          t6, 185439
                  ori          s10, s9, 781
                  srli         s5, s0, 24
                  slt          a2, t5, a7
                  auipc        t1, 165077
                  srli         s2, s9, 30
                  lui          sp, 220528
                  slti         t2, s2, -970
                  slti         s3, a7, -1211
                  srli         s2, t2, 21
                  sltu         t4, s9, s7
                  lui          s8, 317367
                  and          s3, t1, s0
                  lui          s6, 188964
                  sll          tp, ra, a0
                  srl          t4, t4, a2
                  or           t0, a1, t2
                  sra          a0, t4, a7
                  srai         s9, s1, 24
                  addi         a3, s1, 796
                  slti         t5, a3, 1187
                  sra          zero, a2, s5
                  xori         ra, ra, -1397
                  xori         s10, s0, -1321
                  sltiu        s3, tp, 444
                  xori         s2, t3, 1277
                  srl          a4, t1, tp
                  sltiu        s1, t3, -1167
                  slti         t4, a3, -1078
                  sltu         a6, ra, s4
                  slti         s11, s0, 1763
                  sll          t0, a7, s3
                  ori          s4, t1, -1522
                  srai         a1, gp, 26
                  andi         t0, s1, -2048
                  sltiu        s7, s6, 168
                  add          a4, s4, t4
                  sub          ra, zero, t4
                  srli         t6, t5, 16
                  slti         s2, t3, -1476
                  slt          t2, a7, s1
                  srl          t2, t3, a4
                  sltiu        s8, s11, 1687
                  and          s7, t6, s6
                  andi         ra, s1, 1415
                  xor          s11, gp, t6
                  xori         t6, s6, 451
                  add          s2, s9, gp
                  slt          a0, a6, t4
                  andi         s8, a7, 414
                  ori          s4, t6, -586
                  sra          s8, s4, s6
                  nop
                  auipc        s1, 294085
                  and          s1, s6, s6
                  srl          ra, a7, t1
                  ori          ra, s5, -87
                  lui          t1, 687531
                  sltiu        t5, s0, 1874
                  add          t0, a6, a6
                  xori         s4, tp, 1641
                  srl          a0, tp, s5
                  xor          s8, s9, ra
                  auipc        t4, 717855
                  xor          a6, a7, t3
                  srai         s6, a1, 26
                  sltiu        t1, a6, 1520
                  or           zero, s2, s7
                  srli         t1, zero, 25
                  sra          s6, a3, t2
                  addi         s3, gp, 884
                  nop
                  sra          t0, t6, a7
                  srl          a2, s0, s10
                  srli         a3, a0, 9
                  or           zero, s10, a0
                  srai         a7, t3, 24
                  addi         s1, s9, 679
                  xori         t4, s1, 271
                  slli         gp, s5, 7
                  or           s10, s2, s6
                  nop
                  sltiu        ra, s1, 1273
                  nop
                  auipc        tp, 646381
                  sltu         a2, s8, t4
                  or           a7, a4, tp
                  slli         s11, s11, 27
                  sll          s10, s0, s3
                  lui          s7, 415968
                  sltiu        tp, s11, -180
                  sltiu        a3, t1, -1798
                  srli         t5, gp, 5
                  srl          a0, sp, a3
                  srli         s5, sp, 7
                  xori         t2, gp, 1605
                  sll          t0, zero, s4
                  or           t4, ra, s9
                  srai         s2, s2, 2
                  xor          s1, s7, t0
                  srai         a7, t6, 26
                  sra          t1, a1, s1
                  add          t5, s10, s6
                  slti         s11, zero, -518
                  srl          a6, s11, t6
                  xori         s11, s6, -1285
                  sll          t1, a3, s8
                  xor          s9, t6, zero
                  or           a1, sp, t2
                  xor          t2, a4, a6
                  addi         sp, gp, 305
                  srl          a7, t1, s11
                  sra          t6, t1, sp
                  nop
                  xor          s11, a7, a6
                  slti         s7, gp, 262
                  or           s5, s0, t5
                  srai         ra, s8, 29
                  sra          s6, a1, s0
                  sra          s5, zero, a5
                  andi         a2, s8, 740
                  sll          s5, sp, a4
                  srai         t4, s6, 26
                  and          a1, s3, tp
                  sub          s3, a5, zero
                  sltiu        s1, s9, 601
                  or           s8, t3, s0
                  ori          a4, s10, 190
                  add          a1, a3, s9
                  xor          s10, s0, t4
                  slli         s4, a7, 14
                  or           s3, s9, s10
                  xor          a7, a7, a5
                  sll          s2, a1, s0
                  slt          s5, a4, t5
                  auipc        t1, 743425
                  xori         t2, ra, -1005
                  sub          tp, a0, tp
                  srai         s7, s10, 29
                  sub          tp, s3, s3
                  and          t6, a3, t3
                  addi         t6, s5, 813
                  srli         tp, s4, 23
                  sra          ra, t2, s8
                  add          s9, t2, t6
                  xor          s3, t2, t6
                  add          s8, sp, t4
                  and          a7, s1, s11
                  or           a3, a5, t2
                  and          s11, t4, s8
                  srl          t1, s10, sp
                  srai         t2, s0, 8
                  slt          t1, sp, t2
                  sra          zero, s10, s9
                  ori          a6, s7, 1950
                  sll          gp, s7, s7
                  sra          s7, a0, ra
                  srl          ra, s7, t2
                  auipc        t2, 709321
                  nop
                  slli         s8, a6, 20
                  or           a6, a7, t6
                  srli         a1, sp, 16
                  srl          s11, zero, gp
                  srli         a7, s8, 3
                  xori         gp, a2, 511
                  slli         s8, s3, 10
                  ori          s10, s4, 1519
                  andi         s8, t1, -2045
                  nop
                  slti         s1, s11, 695
                  srl          s5, s4, t4
                  sub          ra, a4, t0
                  nop
                  or           s8, a7, t0
                  addi         t5, a1, 1095
                  sltiu        ra, a7, 1788
                  add          a7, a7, s3
                  srli         s7, a5, 27
                  and          ra, s5, a0
                  nop
                  lui          ra, 702112
                  slti         zero, s7, 1326
                  ori          s2, s4, 988
                  srli         t1, s11, 26
                  xori         s4, s4, 114
                  lui          t6, 655443
                  lui          t5, 324240
                  lui          zero, 862076
                  sub          s10, a4, t2
                  sra          a0, tp, ra
                  nop
                  or           s2, gp, sp
                  sltiu        a7, a1, -1447
                  or           s9, s0, t4
                  srli         s10, a5, 9
                  sltu         t1, ra, t4
                  sll          a7, a2, t4
                  sltu         s2, s11, a5
                  sll          s2, a4, t1
                  nop
                  or           a7, s0, s6
                  slti         s11, t0, -1308
                  sll          s3, s9, s5
                  andi         s11, t4, -1441
                  andi         a1, a5, -1366
                  auipc        s7, 935447
                  sra          s6, a6, a2
                  sra          ra, s7, a1
                  sub          a2, s1, s10
                  sltu         zero, s4, gp
                  xori         t5, a3, -920
                  addi         gp, a3, 1278
                  lui          s10, 419159
                  auipc        s9, 931708
                  srai         tp, s10, 20
                  addi         t6, s0, -621
                  sll          sp, a1, s7
                  srli         s9, s9, 30
                  slli         a3, t4, 27
                  auipc        tp, 1031980
                  sll          s1, s9, s5
                  srl          gp, t2, s4
                  slti         a7, sp, 1911
                  srai         t6, a2, 3
                  sub          s9, a5, sp
                  andi         a6, t6, -1985
                  slti         t6, s7, 1118
                  srli         a7, a3, 5
                  or           s1, a2, zero
                  sll          a1, a1, s5
                  and          a3, s1, s1
                  sltiu        s1, t6, -344
                  add          t5, s0, t3
                  slt          s1, zero, tp
                  ori          a2, s2, 107
                  srli         t4, t1, 2
                  srl          s1, s10, zero
                  srai         a4, a6, 29
                  srli         t1, a1, 31
                  xori         t4, a5, -1331
                  sra          t6, gp, gp
                  nop
                  sra          a2, zero, t0
                  or           s11, t5, s0
                  ori          a3, s11, -143
                  sub          s3, tp, t4
                  sltiu        s6, s10, -824
                  add          t6, zero, t0
                  sll          tp, s6, s8
                  sra          a3, s6, t3
                  and          s5, a4, s0
                  srai         a3, t2, 2
                  xor          sp, a6, s3
                  sltiu        s6, gp, 1047
                  andi         a3, s9, -1554
                  slt          s8, s6, tp
                  nop
                  xor          t5, a0, t5
                  and          s5, t3, a6
                  addi         t4, s11, 1958
                  srli         s10, a7, 8
                  xori         s11, a4, 1690
                  slti         s5, t0, 1227
                  nop
                  sra          s8, tp, t3
                  nop
                  slti         gp, a2, 1408
                  sub          s3, tp, s0
                  add          s7, a7, a6
                  srli         a4, s0, 19
                  slli         ra, s6, 4
                  slli         zero, t4, 1
                  lui          s7, 504898
                  slli         t1, a3, 13
                  slti         a6, s11, 1084
                  slli         a4, s6, 7
                  srai         s1, s9, 28
                  sltu         s4, tp, zero
                  srli         a3, s11, 29
                  nop
                  xori         t5, zero, 953
                  and          ra, s6, t1
                  sll          a3, ra, s9
                  sra          t4, a6, ra
                  srai         a2, t2, 16
                  srli         sp, t4, 27
                  ori          sp, t6, -263
                  slti         s7, a4, -145
                  srai         a4, a4, 30
                  sltu         s4, a7, s2
                  sltiu        t4, a5, 501
                  andi         s1, s10, 1958
                  srli         t2, s10, 1
                  xor          s6, a3, a3
                  slti         s1, t6, -1589
                  and          s5, a0, s10
                  andi         a7, s5, -1390
                  sra          s6, sp, s9
                  sra          a7, t0, a0
                  ori          t4, gp, -213
                  add          s2, sp, zero
                  sll          s1, t4, t6
                  sub          ra, s9, a6
                  add          s2, a3, a0
                  srai         s7, gp, 7
                  sltu         tp, gp, a3
                  nop
                  srl          a6, s7, s6
                  andi         t4, t0, -1485
                  add          a7, t1, a1
                  srli         ra, gp, 9
                  slt          s8, s1, t1
                  add          t5, a6, s4
                  srai         s7, t5, 21
                  sltu         t5, s4, t2
                  ori          t4, ra, -301
                  sltiu        s9, a2, 800
                  srl          t2, a6, a4
                  xori         s4, s5, 1549
                  xori         s6, t2, -495
                  sltiu        gp, s0, 2003
                  slti         gp, t2, -564
                  or           s1, s10, ra
                  addi         sp, t1, 1399
                  ori          gp, s0, 337
                  sub          s10, a4, s2
                  add          a4, s7, ra
                  and          a2, a2, s11
                  sub          s8, s11, a2
                  lui          ra, 371017
                  slli         a6, a3, 20
                  auipc        s11, 136254
                  slli         a4, s11, 13
                  nop
                  add          t2, sp, t4
                  xori         s4, t2, -1646
                  sltiu        t1, s8, -405
                  slti         s4, a5, -1052
                  sra          s1, s6, gp
                  slt          s9, ra, t3
                  slli         s2, s8, 6
                  andi         s1, s2, -1395
                  sltu         zero, t1, a4
                  lui          t5, 765369
                  and          a4, s4, t6
                  xor          s9, t1, a3
                  sll          s8, t6, s9
                  srli         t2, t2, 4
                  slt          s2, s7, t6
                  slli         s4, tp, 13
                  and          s1, t4, s1
                  srl          t6, s10, s10
                  srai         s5, tp, 16
                  auipc        a4, 751253
                  slt          a2, s10, ra
                  nop
                  srai         a2, s10, 12
                  auipc        s8, 985099
                  addi         s6, s6, -1440
                  srl          s1, tp, t5
                  sub          s2, t1, s9
                  slti         a2, a4, -162
                  srl          a2, s7, s2
                  or           s1, gp, s9
                  xor          s11, gp, s7
                  sra          tp, t6, t4
                  lui          a1, 946096
                  andi         t0, s4, 585
                  ori          t5, s4, 1673
                  sltu         t1, t0, gp
                  addi         ra, t5, -1644
                  sltu         s2, s6, a1
                  lui          s8, 9197
                  xor          s11, a6, t5
                  srl          sp, t4, s11
                  sra          tp, a7, s4
                  sra          t5, s4, a1
                  sltu         s6, s8, s10
                  slli         t1, s4, 28
                  xori         s8, t1, -10
                  sra          a4, t6, a3
                  srli         s2, s10, 28
                  andi         s6, a1, 1352
                  slt          ra, s10, a1
                  srai         a1, a7, 23
                  srai         s6, a5, 11
                  sub          s6, tp, sp
                  sltu         ra, s8, a2
                  xor          a1, gp, a2
                  srli         s6, tp, 29
                  sub          a7, sp, s5
                  slt          s5, s10, a2
                  slt          s2, s8, ra
                  xor          s1, sp, tp
                  auipc        s10, 574201
                  srai         a2, zero, 24
                  auipc        s8, 822277
                  sltiu        t5, s6, 1551
                  sltu         ra, t0, zero
                  sub          s3, s8, t4
                  sra          s9, a1, t0
                  lui          s2, 825367
                  nop
                  srli         zero, s0, 1
                  andi         s6, t3, -171
                  xori         s2, s5, 157
                  and          s2, zero, a1
                  slti         t5, s9, 180
                  srl          a2, t2, ra
                  srli         s4, zero, 4
                  srl          zero, t2, s2
                  add          s6, ra, s6
                  srl          s8, t6, t1
                  sltiu        a0, a5, 199
                  slti         a0, s6, -1546
                  nop
                  addi         ra, s8, -282
                  srli         s3, a7, 27
                  and          s6, a3, tp
                  addi         sp, s11, -1032
                  or           a3, s7, s4
                  sra          s3, s3, s6
                  sll          t0, t4, s2
                  auipc        s8, 755586
                  lui          s5, 70057
                  sltiu        a0, s6, 772
                  ori          tp, s10, -1544
                  sltu         s5, s7, t5
                  sltu         t0, a3, t5
                  sltu         a3, t6, a4
                  or           s3, s8, sp
                  ori          a6, gp, 1702
                  xori         s7, t5, 882
                  addi         s6, a7, 309
                  auipc        s4, 245868
                  slti         a2, a7, -1814
                  sra          s10, s11, s4
                  srai         a1, s1, 4
                  sltiu        a4, s4, -1795
                  or           s9, s5, s1
                  nop
                  srli         s10, s11, 4
                  xor          a7, s7, zero
                  addi         a1, tp, 448
                  sra          a7, t1, s2
                  lui          a0, 911952
                  nop
                  sltu         t2, t5, s0
                  srli         t0, s4, 25
                  slli         a1, t1, 1
                  ori          t6, t6, 863
                  sltu         ra, s9, a1
                  srli         s1, s3, 17
                  addi         t5, a2, 1712
                  andi         s2, s0, -851
                  lui          s1, 872487
                  xor          a1, s9, t2
                  auipc        a3, 743877
                  sltu         a1, t2, gp
                  slti         s2, a0, -213
                  addi         a4, a4, -238
                  auipc        s2, 633729
                  sltu         a6, a4, s11
                  andi         t0, t1, 1945
                  xori         t6, tp, 854
                  ori          sp, s6, -153
                  slti         s6, s0, -1996
                  auipc        a2, 626259
                  ori          a3, ra, -249
                  sll          s5, s6, s1
                  xori         tp, t6, -913
                  slti         t2, ra, 2015
                  sll          a6, t6, s1
                  slli         a1, t3, 28
                  srai         s2, s0, 0
                  nop
                  sub          a7, t3, a6
                  sltu         s8, t0, t3
                  or           a3, s10, s5
                  addi         s11, t6, 832
                  slli         s11, a7, 6
                  addi         ra, s6, -870
                  and          s10, sp, ra
                  auipc        a7, 895518
                  srl          t1, t6, s10
                  sub          zero, zero, s3
                  and          gp, t0, t3
                  add          a4, a2, a1
                  slti         s3, a4, 461
                  srl          sp, a3, zero
                  sltu         t0, t3, s1
                  sltiu        a2, s1, -1585
                  xori         s8, gp, -1969
                  andi         sp, a4, -426
                  srli         zero, t6, 6
                  and          a1, a6, a0
                  slli         s6, a6, 22
                  sll          s4, t3, sp
                  srai         s5, a1, 3
                  nop
                  sra          s1, t6, s4
                  srai         a4, a6, 19
                  lui          s2, 1020666
                  slt          s1, t0, t3
                  sltu         tp, t3, t3
                  sltu         s6, t4, t0
                  sra          a4, a3, a7
                  andi         s11, t6, -472
                  srai         sp, tp, 1
                  lui          tp, 498758
                  add          s11, s0, a5
                  sub          a3, s4, s1
                  xori         t1, a2, 469
                  sra          t4, s10, s7
                  xor          a1, t2, a2
                  srli         zero, a7, 0
                  srli         gp, tp, 20
                  addi         t5, t5, -1184
                  ori          a3, a3, 1241
                  and          s4, t4, gp
                  srl          a7, ra, a7
                  xor          a4, a3, a7
                  srl          t1, gp, a6
                  srl          t0, a0, a5
                  andi         t5, t4, -924
                  srai         a4, s9, 21
                  and          s8, tp, s6
                  sll          s10, a1, s1
                  andi         t4, t6, 27
                  nop
                  andi         t5, ra, 1093
                  sub          a7, s2, s0
                  srl          a6, s0, ra
                  sltiu        t0, a6, 202
                  xori         s3, s11, -1862
                  slli         s7, s5, 21
                  srli         s6, a1, 27
                  srl          gp, t6, s9
                  nop
                  sltu         a4, tp, a4
                  auipc        gp, 659512
                  and          tp, zero, s4
                  lui          s8, 324170
                  slli         zero, s10, 25
                  slti         t0, sp, 1080
                  slt          ra, tp, a1
                  xori         t5, gp, -706
                  add          s1, a5, a4
                  xori         s6, tp, 481
                  slti         a4, s4, 0
                  srli         t6, s0, 31
                  lui          s11, 531932
                  xori         s9, tp, 748
                  srli         a7, a0, 1
                  sra          s3, s5, a6
                  sltu         t0, a2, s4
                  sll          gp, a3, a6
                  srli         s8, a7, 7
                  add          t1, t0, a7
                  lui          a2, 947751
                  sra          t2, a1, a7
                  sltiu        a6, ra, -1676
                  sra          s3, t4, s10
                  auipc        t1, 615799
                  sra          a0, a5, t0
                  nop
                  nop
                  slti         s1, a2, -737
                  xor          tp, s5, tp
                  sltu         t0, s4, sp
                  sltu         ra, t5, a0
                  addi         a7, s8, -1783
                  ori          a3, a3, -125
                  andi         ra, s0, -1183
                  addi         a0, t5, 1024
                  sltiu        s11, t5, -1520
                  slt          a1, a4, zero
                  slti         s7, a6, -26
                  sra          tp, a3, s9
                  srl          a6, s10, s2
                  nop
                  or           t2, tp, t6
                  sub          gp, zero, s6
                  srl          s4, a3, t2
                  or           s1, a0, a4
                  slt          a6, s11, s8
                  andi         gp, s6, 1566
                  add          s1, a1, s9
                  srl          tp, s9, a5
                  slt          a4, s1, t0
                  sra          s5, a2, a7
                  auipc        s11, 850351
                  nop
                  slti         s11, a6, -780
                  sltiu        t0, zero, -118
                  slli         tp, a2, 27
                  sra          a3, gp, a0
                  auipc        s5, 461820
                  addi         s4, s7, 244
                  slli         a4, tp, 18
                  sltu         t5, ra, s8
                  sll          s11, s6, s8
                  addi         s8, s5, -1467
                  sll          s1, ra, a3
                  or           ra, a7, a3
                  auipc        zero, 289803
                  xori         t4, a2, -1199
                  xor          t6, s5, a3
                  ori          s7, t5, 995
                  sra          a6, a6, t3
                  srai         s8, a6, 20
                  nop
                  srli         a0, s6, 10
                  srli         s11, ra, 8
                  auipc        s9, 654580
                  sra          t1, s6, a3
                  sub          s7, s0, a6
                  lui          t0, 165970
                  ori          zero, s5, 124
                  lui          t1, 874560
                  sltu         s11, t4, a5
                  auipc        s10, 971213
                  andi         t2, s4, -1817
                  srl          zero, t1, a0
                  or           a6, a3, a7
                  sra          a2, tp, s10
                  sltiu        t5, t6, 1825
                  slti         a6, ra, 314
                  srli         s11, s6, 1
                  sra          s9, s11, tp
                  sra          tp, a2, a0
                  nop
                  srli         s5, s6, 9
                  srli         tp, t5, 18
                  addi         a4, t3, 2021
                  or           gp, t2, gp
                  sub          zero, s8, t2
                  xor          s3, gp, t2
                  addi         s10, s11, -1986
                  auipc        gp, 761688
                  nop
                  sll          s8, t1, t1
                  slti         t4, s0, -1587
                  addi         s10, a2, -7
                  nop
                  lui          ra, 463132
                  srl          s4, a6, s0
                  andi         ra, s8, -144
                  xor          a3, s1, t1
                  sll          t5, tp, s4
                  and          s2, ra, a0
                  lui          zero, 911188
                  sltiu        s2, t2, 1623
                  sub          sp, a3, s5
                  lui          t0, 45118
                  or           t5, t2, t6
                  lui          zero, 101132
                  nop
                  andi         s11, a7, 178
                  slli         a1, t0, 24
                  sra          a3, gp, a2
                  nop
                  slt          t2, t5, t3
                  sub          t2, zero, a3
                  slt          s5, t4, a6
                  and          s11, t5, sp
                  auipc        t1, 613139
                  ori          t4, s3, -1114
                  slli         t1, a3, 9
                  sll          t5, a3, a4
                  slli         s4, s5, 27
                  slli         t2, s4, 19
                  xori         a3, t4, -657
                  slt          a2, t4, s7
                  srli         s4, s3, 18
                  srl          s11, s6, a1
                  and          gp, ra, ra
                  lui          s1, 53310
                  srli         sp, s7, 10
                  xor          s2, s6, s7
                  ori          a3, t2, -1991
                  xor          a4, t0, s4
                  lui          s11, 545315
                  slt          s1, a4, s5
                  sub          t6, t6, t3
                  add          s10, s3, s2
                  slti         s10, a7, 1098
                  sub          t4, s1, t4
                  sra          s6, t3, s5
                  sll          a4, tp, sp
                  slt          s11, sp, t1
                  slli         a6, s10, 8
                  add          gp, s4, s9
                  slti         gp, s2, -1446
                  auipc        s4, 561876
                  lui          a4, 939433
                  lui          s9, 516346
                  or           a1, gp, t3
                  lui          zero, 931381
                  nop
                  sltiu        t1, t1, 597
                  addi         s10, tp, -329
                  ori          tp, t6, 891
                  lui          t0, 316913
                  sll          t4, t4, s8
                  and          s11, t3, t1
                  sub          s9, s11, t1
                  and          s10, a0, a0
                  sub          s9, s5, s4
                  addi         gp, a0, 917
                  and          t4, s8, a1
                  srli         s1, s11, 19
                  sll          ra, s2, zero
                  addi         sp, s4, -1973
                  sra          a7, a4, zero
                  srai         s4, s5, 7
                  nop
                  slli         s8, a0, 5
                  add          a1, s4, s8
                  sltiu        a2, gp, 702
                  sll          s10, a1, t4
                  xori         a7, gp, 1302
                  xor          t4, a7, gp
                  ori          a4, zero, -1526
                  andi         s3, s11, 64
                  sltu         s11, t0, t5
                  andi         s11, t1, -446
                  sub          ra, t0, a4
                  slli         t4, s5, 0
                  sra          a7, s2, s8
                  sltu         a6, a6, s5
                  nop
                  xor          a7, a5, t4
                  li           a0, 0x2be5e3b7 #start riscv_int_numeric_corner_stream_5
                  li           sp, 0x3715e99d
                  li           a7, 0x223f7e44
                  li           s7, 0x80000000
                  li           tp, 0x6cbc4e0e
                  li           a1, 0x80000000
                  li           s9, 0x80000000
                  li           s6, 0xea5ed08e
                  li           s11, 0x0
                  li           t0, 0xffffffff
                  addi         a7, sp, -1193
                  nop
                  sub          sp, a1, t0
                  nop
                  sub          s7, s11, a7
                  addi         s7, tp, -1158
                  auipc        s9, 794170
                  auipc        t0, 644058
                  add          s6, t0, t0
                  lui          s9, 730445
                  auipc        s7, 315045
                  addi         a1, a0, -362
                  nop
                  add          s6, s9, s9
                  add          a7, t0, tp
                  sub          a0, s9, s11 #end riscv_int_numeric_corner_stream_5
                  sub          tp, a3, s2
                  slti         a6, s1, -1301
                  and          s8, a3, a5
                  andi         t0, s10, 407
                  auipc        s5, 294712
                  srai         a6, s10, 12
                  srai         t2, zero, 12
                  sub          ra, t1, t0
                  sltu         gp, ra, t6
                  sltu         s1, s5, s2
                  sub          s3, a7, t1
                  or           t1, s2, zero
                  auipc        s8, 652317
                  sra          a0, s1, s10
                  addi         s6, s2, 177
                  srl          gp, sp, t2
                  srl          s4, s8, a7
                  addi         s5, ra, 205
                  ori          tp, s5, -276
                  or           s10, s0, s1
                  srl          t4, a4, t2
                  add          t1, ra, a2
                  auipc        a1, 65469
                  ori          s3, gp, -1431
                  xor          t1, t0, s0
                  sra          s1, s10, a0
                  nop
                  srl          s7, a5, s4
                  slt          t1, s11, s9
                  slli         s3, s8, 1
                  slt          s11, tp, s11
                  xor          zero, s4, gp
                  or           gp, s5, t0
                  addi         t6, ra, 1292
                  auipc        a7, 132977
                  slli         s7, s11, 30
                  srli         gp, t2, 19
                  slt          s11, s2, s9
                  xor          s8, tp, a1
                  or           zero, s5, a0
                  sub          s11, s5, s0
                  and          s9, s7, s5
                  slti         a1, t6, -2017
                  lui          s5, 906830
                  srai         a3, t5, 4
                  sltu         a4, s1, a4
                  or           t4, s2, s10
                  ori          sp, sp, -1261
                  srai         sp, zero, 15
                  srai         gp, ra, 1
                  sltu         s5, s2, a3
                  addi         s11, s3, -587
                  sub          s10, a4, s9
                  add          a1, a6, tp
                  xor          t1, a3, s3
                  slti         s7, a0, -2002
                  addi         s3, s3, -829
                  slti         tp, t2, 967
                  xor          t0, a3, s3
                  or           s1, a3, a0
                  slli         t4, t5, 24
                  nop
                  slli         t6, t4, 8
                  lui          gp, 730839
                  add          s7, s6, s10
                  andi         ra, s4, 682
                  slt          a0, a7, t5
                  slt          s9, s10, a6
                  sltu         a1, s4, s11
                  xor          s11, s3, t4
                  sltu         t2, s7, ra
                  sra          a3, t1, t2
                  srai         t2, a1, 21
                  xori         ra, s11, 1027
                  slt          a6, s6, t4
                  auipc        a6, 212186
                  auipc        s6, 979503
                  sltiu        gp, a0, -411
                  lui          s7, 276426
                  xor          s9, s2, a7
                  srai         t5, s11, 17
                  slt          a4, a7, sp
                  and          t0, a6, tp
                  sltu         tp, a0, sp
                  sll          ra, s6, a5
                  slt          gp, t0, t0
                  xori         gp, t5, -509
                  slt          s8, s2, s0
                  ori          ra, s11, -303
                  srl          a0, a7, ra
                  lui          t2, 342176
                  add          s1, zero, t2
                  lui          t1, 1027170
                  xori         t5, a2, 1407
                  slli         s2, t1, 29
                  slt          s10, tp, a3
                  auipc        a6, 656069
                  lui          t5, 898174
                  add          a3, gp, s2
                  srl          t0, t2, gp
                  srl          a2, tp, s3
                  andi         s8, a4, -152
                  srai         a6, sp, 5
                  sub          a7, a5, s10
                  sltiu        s11, s5, -1282
                  nop
                  or           s1, s11, s3
                  andi         s7, s8, 953
                  xor          s4, s1, ra
                  and          a3, s4, t3
                  andi         t0, a4, -416
                  slli         a6, s8, 7
                  srli         s7, s10, 29
                  lui          ra, 1024117
                  or           tp, a2, s10
                  addi         t2, a6, -1879
                  add          t4, s2, t0
                  slli         ra, a2, 14
                  slli         s9, a1, 11
                  xori         s5, a0, -367
                  xor          a2, s0, s0
                  nop
                  lui          t1, 223239
                  addi         a7, zero, -2024
                  ori          s2, t4, 1056
                  slt          s3, s4, t4
                  slt          gp, a6, t1
                  srli         a3, s0, 26
                  slti         zero, t1, -1327
                  slti         t4, t1, 890
                  add          a3, a4, zero
                  sra          s11, s6, t4
                  ori          t4, s8, 1820
                  srli         t1, s7, 25
                  lui          s8, 617411
                  slli         sp, gp, 16
                  and          s9, s3, t0
                  auipc        gp, 35052
                  slt          s5, t0, a5
                  sra          sp, t2, t3
                  addi         s11, s1, 1700
                  xor          a2, a7, s8
                  slt          a7, t5, ra
                  auipc        t0, 228594
                  slt          s11, s0, a4
                  add          s10, a3, s10
                  xori         a4, s5, 813
                  andi         a4, gp, 1281
                  sltiu        t1, t2, 443
                  srai         t6, sp, 12
                  auipc        t0, 636931
                  xor          a6, tp, tp
                  sll          t2, a3, s5
                  add          s9, tp, a7
                  srai         a3, a5, 14
                  srai         a4, gp, 26
                  xor          t0, a7, s5
                  nop
                  andi         sp, zero, -1842
                  sltu         gp, t6, a4
                  slti         s4, s9, 1174
                  slti         t5, s9, 719
                  lui          s2, 714481
                  nop
                  slli         a7, t6, 16
                  srli         t1, t4, 4
                  nop
                  add          t1, tp, s11
                  srli         sp, t6, 14
                  sltu         gp, t1, s3
                  xor          s8, a4, s11
                  sltu         s7, s1, ra
                  sll          t1, a4, s10
                  or           s11, a2, s8
                  xor          t0, gp, s5
                  nop
                  andi         a1, s9, 1955
                  xor          t4, t2, a0
                  sub          a2, zero, sp
                  lui          t4, 937071
                  srai         s10, a0, 0
                  or           t5, s10, a1
                  sub          s8, s8, s7
                  srli         zero, t3, 21
                  xori         t4, t6, -485
                  auipc        s11, 316333
                  or           s6, a0, s4
                  or           t4, s4, a1
                  lui          s3, 506828
                  or           a1, s2, s2
                  xori         t5, ra, -1072
                  slt          a4, zero, s10
                  auipc        s6, 577408
                  slt          t6, s9, s6
                  xori         t1, t5, 736
                  slti         s8, s8, 1879
                  srl          ra, t0, sp
                  add          gp, s1, t5
                  srl          s5, s4, s10
                  sll          ra, s10, s10
                  srl          a7, s8, ra
                  addi         t1, a1, -194
                  sltiu        t1, t2, -393
                  srl          s9, s8, s0
                  sll          s5, t0, a5
                  or           s11, t4, t5
                  srai         s10, t3, 31
                  add          a3, sp, s1
                  sltu         t5, a4, a6
                  and          s8, a6, a1
                  srai         ra, s11, 15
                  xor          sp, zero, a5
                  auipc        ra, 251919
                  lui          s6, 701071
                  andi         s11, s8, 1067
                  add          zero, s3, a0
                  sub          zero, t1, s6
                  auipc        tp, 747525
                  add          s4, a7, s0
                  slli         a0, a1, 11
                  srli         s1, sp, 22
                  andi         ra, a3, 856
                  lui          ra, 1021949
                  srli         s2, gp, 3
                  slti         sp, s5, 333
                  srai         zero, a1, 28
                  auipc        a7, 314792
                  ori          s4, s7, 68
                  slt          a2, s5, s1
                  xor          a7, a0, t6
                  sltiu        t4, a0, -960
                  sra          a1, s4, a3
                  slti         ra, s5, -243
                  slt          s7, a2, zero
                  lui          t1, 6815
                  srl          s9, t6, s8
                  slt          a2, tp, s10
                  sll          t4, ra, a4
                  sub          a4, a6, s4
                  slt          a3, t5, a2
                  add          s10, a5, gp
                  sltu         sp, s4, tp
                  auipc        sp, 311892
                  lui          s10, 79807
                  sra          a7, a5, s0
                  sltiu        s4, a1, -306
                  add          a6, s0, a3
                  sra          s5, gp, a1
                  srl          s6, s4, gp
                  auipc        a4, 114577
                  auipc        a7, 405021
                  ori          s8, t2, -801
                  or           gp, t6, t2
                  srli         t1, a0, 28
                  add          s8, s8, a2
                  srli         tp, a3, 0
                  srl          tp, tp, t2
                  xor          s11, t1, s0
                  slt          t4, s7, zero
                  slti         t6, s10, -54
                  nop
                  andi         a7, t0, -1465
                  srl          s11, t0, zero
                  srl          s5, s5, t3
                  auipc        tp, 456916
                  sra          t6, s2, t3
                  sltu         a2, a5, s3
                  lui          s5, 735094
                  sll          s10, s4, zero
                  add          a3, t5, s10
                  sub          gp, a6, s0
                  sll          s6, s5, s11
                  slt          t1, sp, t2
                  or           t5, a1, a7
                  xor          s8, s6, sp
                  xor          t5, s2, sp
                  or           a6, t3, a4
                  srai         s1, s2, 8
                  sltiu        a7, t1, 57
                  auipc        a2, 637963
                  srai         s3, a4, 30
                  addi         tp, s4, -88
                  sltu         s6, s3, a7
                  auipc        tp, 205740
                  auipc        s3, 688945
                  addi         s9, a3, 856
                  srai         a2, s9, 2
                  srl          a4, t2, s6
                  addi         t4, s2, -1121
                  or           s6, s0, s2
                  addi         s6, sp, -957
                  sll          a6, s2, a2
                  andi         s3, s11, -69
                  nop
                  lui          t0, 824940
                  add          t6, tp, s4
                  slli         s5, tp, 26
                  sra          a6, a6, s6
                  sll          a3, t6, t1
                  slt          t6, a7, ra
                  slt          s1, a0, s11
                  sub          s5, s10, a1
                  andi         a7, sp, -1102
                  sra          zero, t1, a0
                  slti         tp, t1, -1269
                  slt          a4, s8, tp
                  addi         s9, a3, -1108
                  addi         s6, a3, 1709
                  srl          a7, s9, a3
                  xori         t0, t6, -1558
                  sra          a0, s7, t5
                  auipc        a3, 699742
                  sltu         s7, t6, t6
                  xori         s4, t6, 899
                  slti         s7, t1, -370
                  sub          s9, a0, tp
                  nop
                  xori         s4, s6, 1412
                  lui          gp, 772358
                  slli         s4, s11, 28
                  andi         t0, t2, 1091
                  sub          s10, a5, zero
                  slli         s1, s1, 1
                  andi         a7, a5, 1738
                  and          ra, a7, t6
                  srai         a6, t6, 15
                  sll          s11, s8, s6
                  or           t1, t6, s1
                  xori         a4, s4, 1659
                  or           a0, a6, tp
                  slli         s7, s7, 0
                  nop
                  addi         t0, s7, -29
                  or           s5, a0, a0
                  xor          sp, a1, gp
                  xori         s10, t3, -819
                  sltiu        s11, t2, -1020
                  srli         s4, s5, 9
                  slli         t6, t4, 4
                  nop
                  sll          a3, s1, a7
                  sltiu        gp, s5, 1647
                  slt          s1, a4, t2
                  lui          t1, 174197
                  slt          s5, t0, a5
                  nop
                  srai         a6, s2, 23
                  sltu         a4, s3, t3
                  xori         a2, ra, -1093
                  slti         a2, s10, -1215
                  sltu         s3, s6, s8
                  slt          s5, a6, s9
                  auipc        tp, 505832
                  srli         t6, sp, 17
                  slti         s7, a4, 1819
                  xori         s7, t5, 1358
                  sra          a0, s9, s2
                  andi         a7, s2, 259
                  or           s11, a6, s6
                  nop
                  slli         sp, t4, 12
                  xor          a0, gp, t3
                  and          a7, s4, a7
                  ori          t1, t1, 1502
                  or           a6, sp, a0
                  xor          t2, s11, sp
                  slt          s5, a7, s3
                  and          a6, sp, t4
                  srl          zero, ra, a5
                  sub          s8, tp, a0
                  addi         t5, s3, 454
                  sll          ra, t4, sp
                  sll          zero, t1, a3
                  slt          t0, gp, t3
                  nop
                  xori         tp, t0, 1277
                  xori         a6, zero, 1743
                  and          s9, a5, s2
                  xori         t0, tp, 285
                  sltu         a0, s0, a7
                  sra          s8, t6, a0
                  xori         zero, a2, 1990
                  xori         t2, s7, 29
                  slti         s2, t5, -1900
                  or           a6, t0, s6
                  slli         t4, s5, 25
                  auipc        s1, 136224
                  ori          ra, s2, 550
                  lui          a7, 509149
                  srl          gp, s4, a7
                  xor          t2, ra, s7
                  andi         t5, t4, -67
                  slt          a4, sp, s0
                  srli         s4, s9, 30
                  srli         a4, a7, 11
                  and          zero, t2, s6
                  slt          t1, s0, t1
                  lui          s1, 343934
                  slt          sp, s3, s7
                  add          t5, t2, a7
                  slti         t4, a3, 1914
                  nop
                  slti         t6, a5, 1280
                  srai         t4, zero, 27
                  or           s8, s9, zero
                  or           s1, t4, a5
                  sltiu        ra, t6, -1720
                  addi         a3, tp, 1615
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           t1, 0x80000000
                  li           a3, 0x80000000
                  li           t2, 0xffffffff
                  li           tp, 0x80000000
                  li           s10, 0x0
                  li           t6, 0xffffffff
                  li           s11, 0x80000000
                  li           a4, 0x0
                  li           s4, 0x0
                  sub          t6, s4, a3
                  add          s4, t2, a4
                  nop
                  lui          tp, 935962
                  auipc        a4, 299423
                  auipc        a4, 868618
                  nop
                  sub          s10, t2, t6
                  lui          t1, 885500
                  auipc        a3, 279527
                  sub          s4, tp, s10
                  auipc        s11, 358126
                  auipc        s11, 976884
                  nop
                  sub          t6, t1, t6
                  nop
                  nop
                  nop
                  lui          a4, 253862
                  add          a3, s10, s10
                  addi         a4, t2, 703
                  add          t1, s11, tp
                  add          tp, t6, a3
                  nop
                  lui          t1, 874105
                  nop
                  nop
                  nop
                  auipc        s5, 632831
                  add          a3, t2, t6 #end riscv_int_numeric_corner_stream_2
                  sltiu        s11, s3, -1430
                  xori         t1, s6, -1423
                  addi         t1, t3, -1874
                  xori         s11, ra, 742
                  slti         a0, s6, 306
                  sll          s8, s10, a2
                  srai         s7, a4, 9
                  andi         a4, gp, -1617
                  sltu         s4, a4, a6
                  slt          sp, s0, zero
                  sll          s8, s9, s6
                  sll          tp, s10, t2
                  srli         s3, s8, 21
                  sub          t1, s3, a1
                  sra          a6, t3, t1
                  or           s1, s0, s6
                  slli         s11, tp, 15
                  slti         a1, zero, -16
                  add          s2, a0, a2
                  xor          s9, s2, t2
                  sra          t1, s10, zero
                  lui          tp, 766399
                  xor          t2, s1, t5
                  slt          a7, t6, a4
                  sltu         a6, s6, zero
                  add          a2, a5, s11
                  sra          s11, a5, s9
                  andi         a7, s8, -467
                  slli         gp, a4, 26
                  auipc        s2, 119216
                  lui          zero, 78716
                  addi         t1, a3, 1984
                  add          a3, s7, a1
                  lui          t6, 341955
                  slli         s11, s0, 1
                  sll          a3, t6, a1
                  slti         gp, t2, 1760
                  sll          a4, t5, ra
                  slt          t1, s3, s2
                  sll          t2, a2, a5
                  xori         t5, zero, 1170
                  sub          zero, zero, tp
                  sll          tp, t5, s8
                  sub          a6, s0, t4
                  ori          t6, a7, -285
                  nop
                  slti         t5, gp, 292
                  slti         s7, t1, -1185
                  sltu         s3, t1, s10
                  andi         ra, a6, -356
                  srai         t1, a5, 29
                  add          t2, s5, s0
                  srl          a3, t4, tp
                  xor          s9, a0, t5
                  auipc        a6, 977686
                  slt          a7, a5, s6
                  srai         s8, gp, 1
                  xori         a6, gp, 1954
                  addi         tp, s8, -1533
                  sltu         t1, ra, a6
                  auipc        s10, 1046108
                  andi         ra, t2, -1621
                  slt          s2, a7, s2
                  sltu         s4, a6, gp
                  xor          ra, a1, s1
                  andi         zero, s8, -1124
                  addi         s1, t0, 229
                  addi         a3, a2, -36
                  xori         a4, s5, -1756
                  addi         s5, a3, 162
                  srl          s9, ra, a4
                  lui          s8, 1009890
                  ori          s7, t2, -847
                  sub          gp, s7, s7
                  srl          a4, s9, sp
                  sub          a2, s8, s10
                  lui          sp, 229459
                  add          a1, t5, t5
                  sll          a0, a0, a7
                  sub          t2, a3, tp
                  sltu         s5, s5, s3
                  slt          t2, a3, t4
                  slli         t5, sp, 12
                  addi         tp, s6, -1485
                  ori          t5, s4, -768
                  add          a6, s5, s11
                  sltu         a6, a3, s2
                  slli         gp, s0, 13
                  nop
                  sra          s5, t6, a4
                  xor          tp, t4, s11
                  add          t0, s5, a3
                  addi         s5, s11, 2000
                  lui          t4, 969595
                  or           s11, gp, a5
                  slti         t2, s6, 415
                  srai         s10, a6, 23
                  nop
                  srl          s10, zero, s2
                  sra          gp, t2, a1
                  srl          ra, s10, t2
                  sub          s10, s10, s10
                  auipc        s4, 361595
                  nop
                  xor          tp, t0, a7
                  nop
                  sra          a4, a5, t4
                  sltiu        s9, ra, 71
                  sll          s6, a2, a7
                  srl          t4, a2, s7
                  srli         zero, a1, 14
                  srai         s9, s11, 1
                  auipc        t1, 867939
                  slli         tp, t5, 30
                  addi         t5, tp, 1806
                  addi         a1, s0, -560
                  lui          t6, 334484
                  sltu         s2, s2, zero
                  addi         zero, s3, -1622
                  sub          ra, s1, t2
                  slt          t2, t5, a5
                  addi         s8, t5, 1049
                  srai         a6, s10, 7
                  xor          a7, t1, a2
                  srl          s3, s3, sp
                  nop
                  addi         zero, ra, -1947
                  nop
                  and          t5, t6, s10
                  addi         s10, s2, -527
                  and          gp, t6, s8
                  slli         zero, gp, 28
                  sltu         a7, tp, a7
                  slt          t2, tp, s7
                  ori          ra, t3, 1536
                  slti         t2, s9, -599
                  ori          s8, s9, 375
                  srl          s9, zero, t3
                  sltiu        gp, s9, -559
                  add          s1, ra, zero
                  lui          t5, 745904
                  auipc        a1, 1015220
                  auipc        a4, 516677
                  srli         a6, s10, 5
                  slt          s10, s11, t2
                  lui          a4, 435897
                  ori          s10, s7, 642
                  slti         a0, s8, -556
                  slt          a3, a6, a5
                  srl          s1, t2, a0
                  xor          t0, s8, tp
                  sltiu        s6, s10, 1112
                  srai         a2, a4, 30
                  nop
                  sltiu        a2, t2, -647
                  xor          s1, s11, zero
                  slli         s2, zero, 29
                  slti         a1, t1, 669
                  and          sp, s7, zero
                  andi         s1, a2, 331
                  sub          ra, s3, s11
                  sltiu        s2, ra, -50
                  slli         a7, gp, 25
                  add          s9, t5, s10
                  and          a0, a5, s8
                  auipc        s11, 217264
                  add          s10, zero, sp
                  srai         s7, t4, 22
                  slli         a7, s6, 25
                  xori         s8, a6, -1111
                  slti         s4, s11, -975
                  xori         s7, t4, -1962
                  add          a6, tp, tp
                  auipc        s7, 823295
                  srli         a0, tp, 4
                  xor          a0, s11, tp
                  addi         t5, t5, 2043
                  sll          s8, s8, t6
                  sra          s11, sp, s11
                  ori          t1, s5, -1888
                  srl          ra, a0, t2
                  sltu         a3, t6, t2
                  xori         a6, s5, -462
                  add          t4, s4, a4
                  sra          s2, sp, t3
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           a1, 0xa98434eb
                  li           s10, 0x80000000
                  li           s7, 0xffffffff
                  li           s5, 0x80000000
                  li           a4, 0x593665f
                  li           t0, 0xf863391b
                  li           a2, 0x0
                  li           s8, 0x0
                  li           s4, 0x54f18bb9
                  nop
                  auipc        a2, 425391
                  auipc        t5, 347266
                  auipc        t5, 585115
                  add          s5, a1, t5
                  auipc        s4, 45651
                  addi         a4, t5, 1091
                  auipc        s10, 719764
                  auipc        s7, 594261
                  add          t5, t5, t5
                  lui          a2, 172907
                  auipc        s10, 885126
                  addi         a2, a2, 897
                  auipc        t5, 473871
                  nop
                  add          s5, t0, t0
                  sub          s5, s10, a2
                  nop
                  sub          s7, t0, a4
                  nop
                  nop
                  auipc        s8, 932698 #end riscv_int_numeric_corner_stream_16
                  srl          t4, s2, t1
                  nop
                  slt          s10, s10, sp
                  srl          s11, t0, tp
                  ori          a1, a0, 81
                  add          a7, s7, a0
                  ori          s1, t5, 1936
                  slli         zero, ra, 30
                  sll          s6, s7, t1
                  xor          ra, s10, tp
                  slli         s10, s11, 3
                  lui          zero, 42283
                  slli         s10, sp, 30
                  add          gp, s4, t0
                  lui          a7, 677733
                  srli         s6, s11, 0
                  srli         a3, s2, 28
                  ori          t2, a7, 201
                  srl          s5, a2, a0
                  slt          s4, t4, s0
                  slt          s10, zero, s0
                  lui          a4, 455602
                  sra          t2, s6, s9
                  and          s10, a6, s4
                  srli         t5, a0, 24
                  addi         t4, s10, -1120
                  lui          sp, 168104
                  or           a7, a7, s6
                  andi         a6, s6, -1925
                  ori          a1, s9, -230
                  nop
                  ori          s1, t1, -831
                  or           t5, s2, a0
                  slti         s4, s6, 2025
                  xor          s4, s9, a7
                  auipc        a6, 374975
                  and          t6, a6, sp
                  lui          s9, 541188
                  srl          t4, t4, a0
                  slti         t2, s8, 985
                  lui          s1, 417940
                  addi         s4, ra, 46
                  slti         ra, s1, 581
                  srl          s10, s7, t3
                  sltiu        s10, a2, -935
                  sra          zero, ra, t3
                  srl          s1, s6, gp
                  sub          t6, t4, sp
                  slti         t5, gp, 1517
                  add          t6, s9, ra
                  andi         zero, a7, -1541
                  lui          s5, 227392
                  addi         t2, s4, -1001
                  sub          a1, gp, sp
                  srai         s4, s8, 27
                  lui          gp, 592245
                  xor          a4, t0, a6
                  sltiu        s4, s2, -909
                  sra          tp, s5, zero
                  or           t5, s7, gp
                  lui          t4, 990754
                  slt          s4, s6, ra
                  auipc        t0, 244799
                  add          a6, s11, s10
                  slli         s6, a4, 13
                  xor          s1, s1, s0
                  auipc        tp, 444903
                  slt          s9, s11, s0
                  sub          tp, t5, sp
                  xor          a7, t4, sp
                  or           s3, a2, t6
                  lui          a6, 872469
                  srl          a2, s4, gp
                  lui          t5, 85311
                  slt          s11, s2, a2
                  and          s3, zero, s3
                  slti         t1, s9, -1200
                  or           a1, a7, a6
                  sub          t5, a6, a7
                  auipc        a7, 13669
                  sra          s9, s5, s3
                  lui          s7, 65395
                  slli         t6, t3, 3
                  srl          sp, a5, t5
                  slli         t0, s9, 3
                  sub          s1, t2, a7
                  sltiu        s5, t6, -993
                  srli         a3, s6, 28
                  xor          zero, a7, tp
                  sub          t4, tp, a1
                  slti         t5, t3, 1425
                  slti         a3, t4, 831
                  lui          t2, 739213
                  slt          t5, t6, t6
                  add          t6, a1, a7
                  sltu         sp, a4, s10
                  slt          a1, sp, t2
                  sll          s10, a6, a7
                  add          a2, t4, a4
                  add          s8, s9, s3
                  sll          s5, s10, s11
                  add          s4, s10, a1
                  sub          ra, s2, s3
                  ori          ra, t0, 1790
                  add          ra, a3, s7
                  slti         a3, s2, -1277
                  addi         t1, s10, -1279
                  nop
                  xor          s1, s6, t5
                  add          gp, s9, s2
                  lui          t2, 45641
                  xor          zero, a7, a5
                  xori         a3, s10, 1085
                  andi         t6, s0, 158
                  auipc        t4, 591893
                  addi         s11, a3, 290
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           s5, 0x19c8ad16
                  li           t1, 0xf1e99273
                  li           tp, 0x459e95d
                  li           s4, 0x499c9aea
                  li           s11, 0xffffffff
                  li           t2, 0x88bbe512
                  li           a4, 0x80000000
                  li           s9, 0xffffffff
                  li           sp, 0x3ddbdb05
                  nop
                  add          a4, s11, s5
                  lui          a1, 881047
                  auipc        s5, 629745
                  addi         s4, s4, -1632
                  lui          s5, 266273
                  add          t1, a4, t2
                  sub          tp, s5, sp
                  sub          t2, sp, t2
                  add          s9, s4, a1
                  addi         tp, s11, 1428
                  auipc        s11, 176346
                  lui          sp, 462880
                  auipc        s11, 438369
                  lui          s4, 103613
                  add          a4, s4, tp
                  auipc        s4, 411683
                  nop
                  sub          s11, sp, a1
                  auipc        s5, 942260
                  auipc        s9, 604383 #end riscv_int_numeric_corner_stream_7
                  srai         ra, s4, 23
                  and          s1, s6, s9
                  add          gp, zero, t1
                  and          gp, a6, s7
                  addi         s4, t4, 2000
                  srl          s10, a5, sp
                  slli         a0, ra, 10
                  slli         a7, sp, 0
                  lui          s8, 537735
                  xor          s3, gp, t0
                  slt          zero, a6, s5
                  slli         a7, s9, 18
                  auipc        a0, 103947
                  sub          s11, s10, s7
                  sltiu        a3, s11, 562
                  sra          s4, s2, t2
                  and          s10, s5, a0
                  add          s6, t6, t5
                  srai         t6, s1, 17
                  sltu         t5, s5, a5
                  srl          a6, t3, s6
                  srli         a4, zero, 9
                  srli         t4, t0, 28
                  lui          a3, 552183
                  or           zero, s6, t2
                  nop
                  sltu         t2, ra, t3
                  sra          s8, t2, t0
                  srli         s6, a6, 15
                  ori          s5, s1, -1745
                  slti         ra, zero, 741
                  srai         s6, t3, 15
                  or           t2, s0, ra
                  ori          t5, t4, 544
                  slti         a0, ra, 58
                  sltu         t4, s9, s11
                  slt          a1, s2, s9
                  addi         t1, t3, 1153
                  or           s5, zero, a6
                  lui          tp, 944790
                  addi         s6, gp, -802
                  sltu         s10, a6, s7
                  xori         a0, t3, 1578
                  srl          a7, s1, a2
                  lui          a3, 427028
                  srai         s8, s7, 8
                  or           t4, zero, s1
                  srli         s1, t6, 8
                  ori          t5, t4, -994
                  srai         s6, a5, 9
                  sltu         t6, s3, a2
                  andi         s3, t1, -1520
                  sltu         a0, s3, s3
                  sltu         t6, zero, a7
                  sltiu        a0, t0, -1076
                  or           a4, s2, s3
                  srl          s2, a1, a4
                  sltiu        a7, t2, 405
                  or           s11, a0, gp
                  srai         s11, ra, 30
                  ori          sp, a4, 152
                  ori          s7, t3, 1928
                  auipc        t2, 408551
                  addi         s6, t3, -776
                  sub          s3, s7, a0
                  or           t6, s11, s11
                  xor          s3, zero, t4
                  sra          ra, s4, a1
                  or           zero, a4, s11
                  lui          s7, 724816
                  or           t1, sp, s2
                  sll          a4, s7, s0
                  and          t4, s6, t5
                  and          s6, t6, tp
                  slti         s7, s9, -1862
                  lui          ra, 273580
                  auipc        tp, 124188
                  xor          t4, t5, t4
                  slt          t2, sp, a4
                  xori         a6, s5, 1835
                  nop
                  ori          t6, zero, 365
                  slti         s1, t4, -575
                  sub          s11, s7, s9
                  sltiu        a6, s1, -734
                  andi         ra, a5, 728
                  nop
                  addi         ra, a1, 103
                  or           s4, a6, a7
                  addi         a1, a5, 1775
                  slt          t0, sp, s9
                  sltiu        a4, s7, 1622
                  srli         a7, t6, 24
                  lui          s2, 535649
                  srli         s3, tp, 12
                  srl          a0, t6, s1
                  xori         zero, s4, -1085
                  xori         s1, ra, 1806
                  nop
                  lui          s6, 379497
                  ori          a2, t2, -1528
                  srai         t2, s4, 6
                  add          t6, t6, t6
                  srai         s1, a3, 31
                  srai         s7, s8, 6
                  srai         s10, s9, 30
                  andi         t4, s9, -1902
                  srl          s2, tp, a7
                  sltiu        s3, zero, -1617
                  srl          ra, a7, a6
                  addi         a7, a3, 952
                  sll          s5, s5, a7
                  sra          s11, a6, s3
                  ori          s9, t2, 1937
                  sra          a1, ra, sp
                  slli         s3, s10, 0
                  addi         tp, s5, 461
                  xor          t1, a0, t4
                  xori         a0, s4, 0
                  xori         s4, a3, 1091
                  addi         s3, s10, 864
                  slli         s11, a0, 18
                  sra          a3, t6, a3
                  andi         t2, s9, -751
                  sltu         a3, t4, s7
                  nop
                  sltiu        s3, t6, 1014
                  slt          t0, s8, s3
                  srai         t5, s5, 5
                  slti         s8, t5, 1534
                  srl          s3, gp, s7
                  sub          a6, a1, a2
                  sra          a1, a4, t5
                  lui          s2, 510884
                  andi         t6, tp, -561
                  sub          a7, s11, s1
                  srl          zero, a2, s1
                  lui          sp, 702970
                  sltiu        ra, gp, -1892
                  sra          ra, s10, s7
                  ori          a2, t5, 1465
                  sltu         s9, t0, tp
                  slt          t5, t5, a7
                  sltu         a4, t2, s0
                  addi         tp, s0, 790
                  lui          tp, 315825
                  andi         t5, t0, -740
                  xori         s10, s10, 871
                  add          a6, t3, s11
                  xori         s9, a3, -1979
                  add          s7, t6, gp
                  or           a2, t5, t6
                  sub          ra, a0, s10
                  or           s2, s0, s8
                  sub          s10, s9, a7
                  auipc        s8, 754484
                  slt          s8, a5, a5
                  slli         s10, t0, 4
                  sub          a7, s7, s10
                  xor          s1, gp, a3
                  add          t1, a3, s10
                  nop
                  srli         ra, a7, 25
                  auipc        s8, 242988
                  and          a2, s1, s2
                  or           s4, a3, s11
                  srai         s10, a6, 24
                  add          zero, t1, a6
                  and          sp, t5, a2
                  sra          t2, s8, t0
                  sub          gp, t6, s1
                  nop
                  sub          zero, s10, t0
                  sltu         s8, zero, a6
                  sltu         t6, t4, s9
                  ori          s1, a5, 1017
                  sltu         zero, t3, s4
                  auipc        s5, 996479
                  sltu         s4, a4, gp
                  sltu         a4, s1, s2
                  srli         a6, a5, 23
                  or           sp, t2, a4
                  slli         s11, a5, 13
                  nop
                  xor          s6, a6, t5
                  add          s2, a5, a3
                  or           s7, s4, a3
                  or           a6, t6, s2
                  addi         t5, t4, -1312
                  ori          s3, t2, 1096
                  or           zero, t0, s9
                  srli         s2, t0, 9
                  ori          s1, s7, -1288
                  srai         a1, t2, 5
                  addi         s5, a2, -568
                  auipc        s10, 228953
                  sub          t0, a4, a2
                  sltu         t1, s2, t4
                  sltiu        a1, a4, 1745
                  xori         s4, s3, 1407
                  addi         t5, a4, -83
                  ori          a2, s1, -665
                  srli         t4, s8, 28
                  srai         gp, t5, 25
                  slli         tp, s1, 20
                  sub          zero, a3, a7
                  and          s7, t1, a6
                  slli         s9, t3, 21
                  slli         s5, s6, 22
                  or           s2, s10, s8
                  and          a1, s5, s11
                  nop
                  slti         ra, a0, -976
                  addi         s9, a4, -116
                  xor          s9, a7, a7
                  sll          a4, gp, a2
                  sltu         t6, s10, s4
                  and          s4, a4, t4
                  andi         s3, t4, 1554
                  slti         ra, s1, -1358
                  addi         s4, a4, 582
                  lui          s9, 960906
                  nop
                  nop
                  sra          gp, s2, s11
                  andi         a3, ra, 2017
                  add          s7, sp, s9
                  srai         s5, t5, 12
                  add          zero, s10, a2
                  slli         s9, t4, 14
                  slt          s3, t0, tp
                  lui          ra, 841490
                  and          s10, t2, s3
                  xor          t2, s9, s10
                  and          s10, s10, s11
                  or           t4, s6, s4
                  nop
                  add          s5, s8, t6
                  slti         s2, t1, 2032
                  slli         s2, sp, 8
                  auipc        a3, 14109
                  addi         s6, t6, -20
                  slli         s9, t4, 23
                  andi         tp, a0, 1072
                  slti         s2, s2, 503
                  xor          s5, s0, t5
                  sll          t2, t4, t3
                  srai         t2, t4, 17
                  sltiu        a0, s4, -835
                  sub          t6, s5, zero
                  slli         t5, t1, 5
                  auipc        a6, 86372
                  xor          s1, s4, s4
                  sra          zero, a4, sp
                  srli         t5, s10, 29
                  sra          s8, t1, a4
                  slli         t4, zero, 13
                  srli         s4, a0, 27
                  sra          a7, a4, t4
                  add          s4, zero, s7
                  nop
                  xor          ra, a0, ra
                  sub          tp, gp, a3
                  lui          s4, 750677
                  and          a1, a2, t0
                  sub          s9, t1, s4
                  sra          a6, t6, s1
                  sltiu        sp, ra, -1313
                  sltu         a3, a5, a1
                  ori          s2, s8, -1546
                  or           a4, t0, t6
                  addi         t4, t6, 233
                  srai         s9, s9, 9
                  or           s8, a6, a7
                  lui          t1, 146029
                  sll          t5, gp, s11
                  add          a1, t2, s8
                  sltu         s6, s3, s3
                  and          a0, s10, a5
                  sltiu        s9, s9, -1906
                  sll          s7, s4, t0
                  sltu         tp, s7, s3
                  sll          t2, s0, s5
                  or           a6, t3, ra
                  sub          a1, a4, gp
                  xor          t5, s10, s1
                  lui          t0, 557597
                  lui          s4, 305543
                  sll          s8, s8, a0
                  or           s7, a2, t0
                  lui          s6, 997580
                  srli         a6, a0, 15
                  xori         t6, a4, -1385
                  xori         s9, a3, -1550
                  xori         a7, s8, 252
                  addi         s1, s1, 1854
                  and          s1, t2, sp
                  auipc        a0, 445926
                  nop
                  srl          s1, t0, sp
                  addi         t0, t0, -197
                  xori         t2, t5, 98
                  nop
                  sll          t6, gp, s3
                  andi         a3, a5, 1807
                  or           s4, t2, s9
                  slti         s10, s6, 1719
                  slli         gp, a1, 14
                  slli         s9, s10, 1
                  sltu         a3, t4, a6
                  andi         s6, a7, -425
                  slli         a6, a6, 9
                  xori         s10, sp, 415
                  auipc        sp, 192702
                  sll          t0, t4, a0
                  srai         s4, s7, 0
                  andi         t0, a6, 1445
                  ori          s11, s8, 1023
                  slli         t0, s4, 3
                  or           s3, tp, t5
                  auipc        s7, 300347
                  andi         a2, s3, 271
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a7, 0x0
                  li           a6, 0x80000000
                  li           ra, 0x80000000
                  li           t0, 0x80000000
                  li           s3, 0x80000000
                  li           t5, 0xbbe7b562
                  li           s6, 0x80000000
                  li           s1, 0xffffffff
                  li           s2, 0x0
                  auipc        s6, 42957
                  sub          a7, ra, a6
                  lui          t0, 734158
                  addi         s1, s3, 851
                  nop
                  add          t5, ra, s2
                  add          t1, t5, t1
                  nop
                  nop
                  lui          s6, 485289
                  addi         t5, t5, -1945
                  auipc        t1, 428815
                  addi         a6, s1, 321
                  lui          ra, 569304
                  sub          t0, a6, s6
                  auipc        s6, 25827
                  lui          s2, 79496
                  lui          s1, 256925
                  sub          t0, t0, t0
                  addi         t5, t0, 478
                  lui          a7, 626035
                  auipc        t0, 858700
                  sub          ra, t5, ra
                  nop
                  add          s6, t1, ra
                  auipc        s6, 847589
                  add          t5, t1, s3 #end riscv_int_numeric_corner_stream_15
                  add          s11, t3, s10
                  slti         s4, t4, -1092
                  lui          t0, 926452
                  andi         s7, zero, -690
                  sll          t6, s1, s2
                  ori          zero, zero, 478
                  sra          a7, a4, a1
                  sltiu        sp, gp, -1538
                  add          s1, s4, s2
                  ori          s8, ra, 450
                  add          a2, t5, a5
                  xori         a4, t2, 392
                  add          gp, a4, s11
                  srli         sp, s6, 29
                  sll          t0, t5, a1
                  slli         gp, s6, 13
                  slti         a6, s3, 1629
                  addi         s3, s1, -1098
                  addi         s1, a3, 1258
                  sltu         t1, a5, s7
                  xor          t1, a1, t3
                  srl          ra, sp, a1
                  slti         s11, t5, -323
                  sub          s5, a2, a2
                  slt          t4, s5, zero
                  nop
                  srl          t5, s5, s4
                  srai         s9, t0, 30
                  and          sp, s9, a6
                  andi         s6, t0, 328
                  sub          a2, s10, t1
                  andi         a6, s9, -483
                  srai         tp, s9, 28
                  and          t1, s5, t1
                  sll          a6, a1, t3
                  srl          s2, s8, t4
                  slti         t0, s8, -973
                  slti         t6, tp, -173
                  lui          gp, 877723
                  sltiu        t6, s2, 1791
                  sll          a4, s1, t6
                  sltiu        s3, t0, 1329
                  ori          s1, a5, -717
                  addi         a3, s2, -1423
                  lui          s1, 684786
                  srli         t1, t0, 5
                  slti         s1, s2, 1641
                  or           s1, a6, sp
                  sltu         t1, a1, a1
                  srli         a4, t4, 20
                  srli         t4, a3, 27
                  srl          t1, t5, t4
                  sub          a6, ra, t5
                  xori         a2, a5, -1258
                  sra          ra, s6, a3
                  add          s1, s10, t4
                  add          sp, t5, t2
                  ori          s6, s5, 1227
                  sltu         s1, a7, a6
                  sll          a4, a0, t5
                  srai         s3, a0, 20
                  auipc        a0, 506191
                  sll          gp, t1, tp
                  or           s8, tp, a4
                  sltiu        a0, s3, 1496
                  xor          s7, s9, t1
                  sltiu        a6, t2, -1402
                  xor          t6, s0, sp
                  ori          ra, t3, 388
                  xor          s7, a7, s9
                  srli         a0, t0, 23
                  slli         s9, a2, 19
                  slli         a7, a6, 24
                  srai         s8, s11, 30
                  sltiu        gp, s6, -1431
                  auipc        s1, 102023
                  slli         s5, t6, 12
                  sltu         t4, s4, a6
                  sub          gp, s0, t3
                  srl          sp, s10, a3
                  sltiu        a2, s0, 1554
                  auipc        s8, 1046686
                  sltiu        s5, a4, -1259
                  sub          tp, t6, s3
                  xor          t2, t0, s0
                  slti         a4, a1, -335
                  nop
                  nop
                  lui          t1, 738788
                  slt          a3, s8, s2
                  andi         s5, s5, -170
                  auipc        t5, 555688
                  addi         t5, a0, 1010
                  srli         s11, sp, 0
                  srai         s2, s8, 10
                  and          s2, ra, s1
                  srl          t0, a3, t6
                  sra          t4, s5, tp
                  srl          s5, t6, s6
                  slti         t0, s1, -423
                  or           s6, s3, tp
                  and          t6, zero, s2
                  sltiu        a6, t3, -1877
                  and          t0, s4, a7
                  srli         a6, t5, 2
                  sltu         s1, t1, s6
                  lui          zero, 673082
                  sltu         a0, t3, s6
                  ori          a7, s10, -1556
                  auipc        s8, 843384
                  nop
                  sltu         a1, a3, t3
                  sub          a7, sp, a1
                  or           t5, sp, s5
                  sub          a4, s8, s5
                  srli         s5, s6, 27
                  sll          s3, a0, t5
                  addi         a0, zero, 272
                  srl          s3, a0, s4
                  slli         s5, t0, 22
                  xori         a4, s2, -1328
                  xori         t4, s6, 1998
                  andi         s2, s2, 749
                  and          t6, t5, s5
                  and          t4, t2, s8
                  and          s11, s8, s0
                  xori         s11, s2, -1544
                  xor          t5, t1, s6
                  xor          s6, t5, t4
                  nop
                  slti         s10, s0, -1128
                  sltu         a2, s4, s2
                  sll          t5, a6, t5
                  lui          s7, 662514
                  sltu         t1, s8, a0
                  addi         t0, t6, -30
                  lui          t2, 607984
                  addi         a7, s6, -1972
                  slt          t5, t3, s1
                  ori          t0, zero, 1602
                  xor          t0, ra, tp
                  srli         t1, t0, 27
                  srli         t2, s0, 15
                  srai         a2, a4, 7
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           gp, 0x0
                  li           s9, 0xf0d7c246
                  li           a3, 0x0
                  li           s10, 0xffffffff
                  li           s4, 0x0
                  li           s11, 0x80000000
                  li           a1, 0xffffffff
                  li           a0, 0xffffffff
                  li           a7, 0x0
                  addi         a3, a1, 709
                  auipc        s11, 612515
                  addi         a0, s4, -1157
                  lui          s10, 16371
                  auipc        s9, 869374
                  addi         s6, a1, 1668
                  addi         a0, a0, 1028
                  addi         s11, a1, -1629
                  addi         s9, a0, 1835
                  auipc        s4, 308384
                  sub          s11, a0, s6
                  nop
                  nop
                  addi         s4, gp, -139
                  nop
                  auipc        s6, 169703
                  sub          a1, a1, gp
                  auipc        gp, 276309
                  sub          a1, a3, s10
                  auipc        s11, 509373
                  addi         s6, a0, 779
                  nop
                  addi         s10, s6, 1416
                  nop #end riscv_int_numeric_corner_stream_4
                  nop
                  add          a0, ra, t3
                  slt          a0, t4, s9
                  slti         a0, a4, 802
                  slt          t1, a1, t1
                  slt          s10, s4, s3
                  ori          s8, s9, -1748
                  xor          s3, t1, s8
                  xori         a1, t0, 1116
                  addi         s8, ra, -1886
                  and          s10, s8, a0
                  nop
                  addi         s10, s6, -546
                  lui          a4, 739356
                  xori         s5, s9, -775
                  slti         a2, tp, -1726
                  and          s10, s0, s7
                  slti         s8, a3, 722
                  and          s9, t3, s10
                  sltiu        zero, a3, -1128
                  sltiu        a3, a4, -910
                  and          t6, s0, s11
                  srli         a7, s2, 16
                  or           a7, sp, t4
                  sll          ra, t2, s0
                  sll          gp, a6, s5
                  or           s9, t6, a7
                  slt          t1, a2, s6
                  auipc        s8, 572041
                  sra          sp, s2, a5
                  sll          s8, s9, t1
                  and          s4, s9, t3
                  or           a0, t4, a1
                  auipc        s8, 309301
                  xor          s1, t4, a1
                  ori          s10, t4, 1565
                  and          a4, zero, s2
                  slti         t6, s2, -894
                  nop
                  xor          a0, zero, a5
                  slti         gp, s8, 344
                  lui          a0, 503654
                  xori         t2, s7, -500
                  and          a1, a4, t5
                  srli         s9, t5, 24
                  sltu         s1, zero, t5
                  add          a1, t3, a1
                  sltu         a6, a5, t3
                  sra          s4, a1, a5
                  slt          a7, s11, ra
                  or           tp, s5, t5
                  add          a1, zero, s3
                  sltu         a7, a0, t1
                  add          a7, s11, s7
                  slti         t5, t4, 580
                  add          t0, t4, a6
                  sltiu        a6, s10, 1990
                  and          t0, tp, s7
                  sltiu        t2, a4, -993
                  xor          s1, a0, a7
                  auipc        ra, 884909
                  sltu         s6, a1, s8
                  srai         s2, t6, 18
                  sltiu        s1, t4, -735
                  srai         s1, s8, 15
                  and          s4, s5, s6
                  sra          s3, gp, a5
                  sltu         s9, a0, a1
                  slli         s4, sp, 24
                  srli         a7, zero, 7
                  slti         s3, s1, -1615
                  auipc        s2, 299157
                  sub          s6, t3, a7
                  lui          s8, 973125
                  lui          s8, 927309
                  add          a4, s10, s0
                  andi         zero, s8, 1566
                  add          s11, t6, t5
                  lui          a2, 947735
                  andi         a3, a4, -1219
                  ori          sp, a1, -337
                  srl          t5, sp, s4
                  sll          a6, s8, sp
                  or           ra, s9, s3
                  xori         s6, a3, 858
                  xori         s5, a4, -1220
                  slli         s2, gp, 21
                  lui          s2, 791446
                  andi         a7, t3, -66
                  xor          a0, t0, a3
                  sll          a0, t3, t1
                  ori          t2, a2, 67
                  add          s3, t5, s4
                  auipc        zero, 1012887
                  and          s4, t0, s7
                  add          s2, s0, tp
                  srai         s10, t0, 9
                  slli         tp, a3, 14
                  auipc        zero, 590766
                  and          s4, t2, s5
                  slt          t0, a6, gp
                  xori         a2, s9, -620
                  add          a2, a5, t4
                  xor          s7, a1, a5
                  andi         a0, tp, -842
                  sub          t2, s0, s2
                  auipc        a6, 341722
                  slti         s1, a1, 1349
                  nop
                  sra          t4, s7, gp
                  sub          a6, ra, s10
                  ori          s3, a7, -1925
                  addi         t2, s1, 291
                  srli         s10, t6, 16
                  sub          s9, s8, a5
                  sra          zero, s4, a3
                  add          s3, t4, a6
                  sltiu        gp, s4, -527
                  sltu         a3, a2, t3
                  sltu         t2, zero, a6
                  srli         t0, t2, 27
                  slti         s8, a1, -1505
                  ori          t0, sp, 1921
                  andi         zero, sp, -1660
                  and          t4, t1, a1
                  srai         s3, t6, 22
                  add          a2, ra, s10
                  sll          a4, t3, s11
                  srai         s10, t3, 1
                  srl          a1, t1, t0
                  slt          a4, a7, a0
                  xori         a2, s7, -755
                  sltiu        tp, t6, 1015
                  and          t6, s3, a4
                  xor          s11, s9, s2
                  lui          a0, 455224
                  and          t5, t5, t5
                  slli         t1, t1, 14
                  or           a1, gp, tp
                  srl          a4, t3, s6
                  xori         s1, t6, 1768
                  slli         t5, tp, 30
                  sll          zero, s0, a5
                  and          a3, t0, s7
                  and          s3, a0, s9
                  ori          a3, t1, 407
                  sll          s7, t3, a5
                  srai         s1, a3, 19
                  and          t2, s10, t3
                  xor          t1, zero, sp
                  andi         t2, s11, 1833
                  add          s7, a0, t0
                  slti         a4, s9, -1662
                  sltu         s7, t2, a1
                  srli         a3, ra, 18
                  slt          t2, s9, s9
                  andi         t5, s1, -1636
                  slti         t2, s3, 1214
                  or           s2, ra, s3
                  sltu         t4, s6, s10
                  sub          gp, t1, s5
                  andi         s11, a3, -2022
                  auipc        s8, 903477
                  sll          s10, gp, t3
                  xori         t0, s9, 711
                  and          a3, s3, t0
                  or           t1, a5, t5
                  srai         t6, t1, 10
                  addi         s5, a3, -263
                  nop
                  sra          t6, s11, a3
                  slli         gp, s0, 24
                  andi         gp, a2, 1459
                  add          a6, tp, s1
                  srli         s4, s7, 8
                  andi         s9, a7, 1729
                  and          a3, a5, t1
                  slt          s1, ra, s10
                  sra          t6, t6, s7
                  lui          a0, 838473
                  and          a4, a5, t6
                  slti         a0, t0, -593
                  sra          t4, t6, s9
                  auipc        s5, 963183
                  slt          ra, t2, sp
                  slli         a4, s1, 16
                  sub          s8, t5, gp
                  slti         t0, s10, -1614
                  andi         gp, a5, -157
                  and          a1, s8, a5
                  sub          gp, a7, tp
                  and          t6, tp, sp
                  sra          s5, a6, s4
                  nop
                  andi         s6, a6, -499
                  srai         s9, a3, 8
                  sra          s8, ra, s10
                  slli         a2, s4, 7
                  sltu         t5, t3, tp
                  sub          s5, a0, tp
                  sll          s3, s4, t5
                  sltu         s4, t0, ra
                  add          zero, a0, a5
                  lui          ra, 532231
                  andi         t0, a5, -1975
                  xori         s2, s9, -1225
                  xor          t5, ra, s0
                  slt          t2, a0, s2
                  xori         s5, t6, -1912
                  sub          a1, gp, s11
                  or           a7, a1, s1
                  or           gp, a0, t4
                  addi         s6, s8, -1860
                  sltiu        t4, t2, -1399
                  add          t4, a5, t4
                  sub          t0, a6, t6
                  slt          t0, a3, a3
                  ori          gp, s7, 77
                  sltu         zero, ra, a1
                  srl          s2, a4, s2
                  lui          t5, 825477
                  sll          t4, s6, s10
                  sltu         t6, s0, t0
                  srl          sp, t0, t3
                  sub          a3, s0, zero
                  auipc        s11, 379620
                  and          a7, s6, s5
                  xori         tp, a1, -645
                  sltiu        ra, gp, -332
                  sltu         a6, t1, a3
                  lui          s9, 909956
                  sltu         gp, s1, sp
                  and          s10, a5, s1
                  ori          s10, tp, 20
                  and          a1, s5, s10
                  xor          t6, t1, s9
                  slt          s10, t6, t6
                  sub          t1, s8, a2
                  or           zero, s2, t5
                  sub          s5, gp, t2
                  srai         a3, t0, 1
                  srli         t0, a4, 2
                  slti         a1, t0, -1754
                  srli         s1, s0, 9
                  slt          sp, ra, s8
                  add          ra, t1, s9
                  ori          t5, gp, 1415
                  xor          a7, s10, tp
                  auipc        s11, 971785
                  andi         a7, gp, 1741
                  sub          sp, t3, a0
                  andi         a3, s1, -446
                  andi         s5, t0, -1902
                  sra          t4, t1, s5
                  add          a3, t1, t5
                  sltiu        s10, t2, -693
                  nop
                  ori          s10, s2, 1495
                  lui          s9, 475707
                  sltu         t4, t6, s10
                  lui          s8, 946668
                  srai         t4, s7, 24
                  xori         s10, a3, 1606
                  slt          t4, s4, t4
                  slti         a6, t1, 344
                  addi         s8, a5, 1279
                  addi         a2, s0, -1372
                  andi         s11, a0, -824
                  xor          a4, s3, s0
                  add          a4, a0, s0
                  auipc        a2, 650687
                  lui          s10, 460222
                  addi         s7, zero, -114
                  slti         tp, s7, 176
                  sub          t2, zero, a5
                  sll          t1, s11, s6
                  sltiu        t2, s2, -1035
                  slt          t0, t6, s2
                  sub          a1, t6, zero
                  sra          s1, zero, a2
                  sltiu        a4, t6, 1261
                  sll          t4, t5, a0
                  nop
                  sll          gp, a1, t2
                  srli         t1, s8, 7
                  or           s11, s7, s4
                  sltiu        s9, tp, 112
                  sltu         t2, s10, s5
                  srl          ra, t6, t1
                  xori         tp, t4, 433
                  xori         t5, t0, 724
                  srai         s11, tp, 13
                  sltiu        a7, s6, -268
                  xor          s10, t6, s1
                  and          t0, s8, sp
                  auipc        a0, 126747
                  andi         s6, a1, 417
                  srl          s8, a2, gp
                  or           t2, a1, t4
                  andi         t4, t2, -750
                  xori         s5, a0, 2042
                  slti         gp, ra, -765
                  slt          zero, t1, s9
                  sltiu        s4, s4, -243
                  addi         s9, s4, 765
                  slli         zero, s4, 13
                  and          s8, s3, s5
                  auipc        s10, 550346
                  srl          sp, s4, a7
                  sra          s7, a1, ra
                  andi         t6, a5, -1084
                  xori         s7, s3, 1797
                  sra          a4, a4, s0
                  sub          t1, s8, s6
                  addi         zero, t4, 1646
                  and          gp, a4, t5
                  sltiu        a7, a6, 1229
                  sltu         s10, t4, s1
                  andi         s3, t3, 1159
                  sub          t5, a5, gp
                  addi         sp, t3, 423
                  sll          t4, a5, s0
                  sll          s3, s1, s10
                  srli         a6, s8, 23
                  srai         tp, a2, 29
                  addi         t6, a3, -1383
                  slli         a0, sp, 28
                  lui          s10, 325943
                  andi         a1, a4, 643
                  lui          gp, 727499
                  sra          tp, a1, t0
                  ori          s2, a4, 1464
                  slt          s4, a3, t2
                  lui          t1, 13981
                  lui          t0, 723872
                  sra          a7, a3, ra
                  sltu         zero, t1, a0
                  lui          a6, 209155
                  addi         s6, t4, 117
                  srai         a2, s1, 16
                  srai         s6, gp, 12
                  xori         s5, s2, 1187
                  addi         a6, s8, -1722
                  srl          t0, ra, s9
                  add          s9, s7, a5
                  and          t6, t0, a5
                  or           tp, a4, s2
                  sltiu        s6, tp, 1463
                  and          s3, a1, s2
                  slti         a3, t3, 1711
                  sub          a3, s6, gp
                  add          zero, a7, s1
                  sll          s5, a6, a0
                  slti         t4, s5, -120
                  sra          s7, tp, s3
                  sltiu        s5, s2, -1168
                  ori          t2, a7, -1670
                  andi         s10, s1, -898
                  andi         zero, s0, 422
                  slli         s4, s4, 29
                  lui          s5, 186848
                  andi         s11, a2, -280
                  slli         a0, t6, 27
                  slti         zero, ra, -1629
                  srai         zero, tp, 14
                  sltu         s7, s10, t6
                  slli         s10, a2, 9
                  slt          ra, t6, gp
                  srli         t5, s4, 6
                  slli         s7, s5, 8
                  slt          s5, tp, t1
                  andi         t6, s4, -1154
                  ori          s10, s6, 1546
                  xor          a6, t1, a7
                  ori          a4, ra, -1614
                  lui          t4, 816476
                  and          s2, a3, zero
                  add          s8, a7, s8
                  srai         gp, tp, 3
                  auipc        s2, 520915
                  nop
                  and          tp, t3, a7
                  addi         s8, a3, 1298
                  addi         t5, s9, -1393
                  slli         tp, a7, 31
                  srai         s3, gp, 18
                  xor          a6, s5, s10
                  auipc        zero, 950691
                  or           s8, a7, t2
                  lui          s3, 735531
                  srai         s4, a7, 13
                  slt          sp, s9, s11
                  sub          a1, s1, a5
                  srli         ra, s6, 19
                  or           tp, s7, t2
                  or           zero, s11, s4
                  sra          s5, zero, s10
                  addi         gp, t2, -1184
                  xori         t6, s11, 325
                  sra          t0, s1, t2
                  srai         t2, a1, 7
                  addi         sp, zero, 1737
                  auipc        t4, 91747
                  slt          s7, a3, ra
                  add          t0, s2, s8
                  sltu         s3, s7, t5
                  lui          tp, 802915
                  nop
                  sltu         a0, s2, t3
                  sltu         t6, zero, s3
                  srai         s9, s2, 3
                  xor          ra, a3, s10
                  or           a6, zero, t0
                  sltiu        s2, s8, -570
                  add          s2, s4, zero
                  auipc        t6, 612129
                  ori          a6, s7, 1022
                  slti         s2, t3, -1692
                  srli         s4, a2, 15
                  addi         s8, s1, 439
                  addi         t2, a6, 1530
                  nop
                  xor          s6, s9, s8
                  andi         s3, s9, -1340
                  auipc        a3, 1005119
                  sltu         ra, gp, a1
                  xori         a6, s3, 1330
                  andi         s1, a5, -199
                  srl          a7, a2, s1
                  slt          ra, t3, s6
                  sub          t0, s1, t5
                  xor          s10, ra, t5
                  sra          tp, t1, s2
                  andi         s1, a3, -1697
                  srai         a7, s8, 18
                  slli         s6, tp, 12
                  auipc        sp, 962673
                  nop
                  xor          s9, ra, t4
                  ori          a2, sp, 1285
                  ori          a1, s7, -49
                  sltu         s8, s10, zero
                  sll          s10, s2, gp
                  xor          t5, zero, t4
                  lui          tp, 696641
                  and          a1, a4, ra
                  srl          ra, a5, s9
                  sub          s3, a5, s6
                  nop
                  sltiu        a2, s11, 1510
                  addi         s2, tp, 443
                  srai         s2, s2, 4
                  sltiu        t0, ra, 970
                  xor          s2, a2, t5
                  srai         s8, zero, 29
                  sll          s6, a4, gp
                  andi         t6, s9, 1317
                  srl          a6, a3, a5
                  or           a3, s5, t5
                  srl          s3, t5, a2
                  sra          tp, s10, t3
                  andi         a7, ra, 1225
                  lui          s8, 172380
                  xor          s10, tp, t2
                  lui          s10, 465470
                  xor          a0, sp, a3
                  srl          t1, s3, sp
                  sub          ra, zero, a1
                  sltiu        a1, s11, 1359
                  and          t4, s1, t0
                  slti         t6, ra, 399
                  slti         a0, a4, -1675
                  srli         a7, t3, 3
                  sltiu        a3, s0, -150
                  srai         t2, t1, 7
                  auipc        a4, 621233
                  xori         a7, s5, -667
                  or           s7, a7, tp
                  slli         s10, s5, 12
                  or           t5, t3, a7
                  srai         a0, a1, 0
                  slti         s5, ra, -1901
                  lui          a0, 504622
                  sltiu        t5, t0, 1417
                  sub          s11, s1, s11
                  sll          s3, s6, s6
                  nop
                  add          a2, s8, s1
                  lui          sp, 305805
                  srli         t4, a5, 14
                  slt          a6, s3, a4
                  nop
                  slti         s8, s9, 1064
                  sra          ra, sp, t5
                  nop
                  slt          s5, t2, t4
                  sub          a4, a1, zero
                  srl          s6, ra, s10
                  ori          ra, a1, -67
                  sll          t6, t3, a1
                  andi         s9, sp, -1085
                  andi         ra, a0, 39
                  srli         s7, gp, 1
                  slli         t2, a5, 27
                  addi         s1, a6, -102
                  lui          s7, 949445
                  slti         t2, s2, 106
                  auipc        s5, 721667
                  lui          s7, 563280
                  xori         a3, a3, 1763
                  srli         a1, a5, 1
                  or           zero, a6, s0
                  sub          s9, a3, gp
                  sra          s3, s6, t2
                  nop
                  xor          t2, a2, t0
                  srli         t4, a1, 17
                  slt          a6, zero, s11
                  srl          sp, s2, ra
                  sll          s1, s7, a4
                  auipc        a2, 198636
                  andi         t6, a6, 531
                  srli         s3, t3, 8
                  lui          a3, 811964
                  srai         t1, s2, 10
                  sltu         a7, s7, s7
                  slti         a6, t6, -493
                  auipc        a6, 163492
                  sra          s2, s2, s9
                  nop
                  andi         a2, a1, 1662
                  sll          s9, s3, s2
                  andi         t6, s4, 919
                  sra          a0, s2, a5
                  or           ra, a0, t5
                  sll          s9, s8, t6
                  add          s6, t3, s5
                  sltu         gp, tp, gp
                  sra          s6, tp, a0
                  add          a7, t5, t0
                  auipc        s7, 407885
                  add          s6, s4, s11
                  sub          a7, s8, a2
                  srl          a7, s2, s3
                  nop
                  nop
                  andi         t1, s2, -1601
                  or           a4, t1, a4
                  addi         s7, s0, -645
                  sltu         gp, t1, s8
                  and          s4, s2, a1
                  sra          t4, a2, a7
                  sltiu        t2, s11, 1706
                  srai         tp, a3, 5
                  ori          tp, t3, 972
                  xor          t6, t1, s8
                  ori          a7, t6, -1375
                  ori          gp, s7, -1434
                  xor          t4, a4, a6
                  add          t2, s2, t2
                  sll          gp, s3, zero
                  xori         s1, t4, 1248
                  sll          s2, s11, s6
                  or           s4, zero, a2
                  lui          s5, 935402
                  add          a6, t5, t6
                  xori         s7, tp, -1470
                  addi         t0, zero, -2040
                  auipc        t6, 971401
                  or           tp, tp, tp
                  srl          s6, s4, s6
                  addi         ra, a2, 1684
                  lui          s10, 248948
                  ori          a1, t3, -1598
                  slt          t6, s7, gp
                  xori         s9, t1, -1009
                  andi         s2, a4, -913
                  sltiu        s3, a7, -621
                  ori          gp, s6, -1356
                  srai         t5, s3, 10
                  xori         a1, s2, 1236
                  ori          a2, a5, 1229
                  sub          a4, a6, s8
                  slli         t2, t6, 2
                  xor          s8, tp, t6
                  sra          sp, t4, a0
                  lui          a4, 384287
                  sll          a2, s5, s5
                  addi         s11, gp, 130
                  and          tp, s11, s5
                  addi         s3, a3, -1864
                  xor          a1, sp, a6
                  addi         t6, zero, -1458
                  srl          s6, a0, s7
                  slti         t6, a5, 1957
                  srli         s1, s9, 4
                  or           zero, a1, gp
                  srl          gp, s5, gp
                  slt          s7, a3, s6
                  and          s10, a2, zero
                  srl          s1, sp, s7
                  ori          zero, s10, -1211
                  andi         s6, s0, 1228
                  sra          t5, a4, s0
                  slti         tp, gp, -515
                  sltiu        s7, tp, -788
                  srl          a7, s6, s0
                  sra          s6, s10, s1
                  or           s1, s10, zero
                  xori         t6, t2, -1214
                  nop
                  xori         a3, a1, 148
                  srli         a1, s9, 29
                  sub          a4, gp, t1
                  andi         a0, a6, 198
                  addi         s11, t6, 1320
                  sltiu        a0, t1, 1140
                  auipc        gp, 701827
                  lui          s1, 427031
                  slli         s9, a0, 7
                  xor          ra, a2, t6
                  andi         tp, gp, 1320
                  sra          t5, a5, s6
                  srai         a2, s8, 17
                  add          s3, s9, t1
                  sll          s7, t4, sp
                  sltu         gp, zero, s1
                  or           tp, a7, t4
                  sltiu        gp, s5, -180
                  slt          s3, s3, s1
                  andi         a0, t4, 1730
                  addi         s9, a5, -1054
                  srli         s2, a1, 24
                  nop
                  andi         sp, t1, 254
                  srl          s5, zero, s2
                  and          t4, t5, s3
                  srl          s3, t3, a3
                  sltu         t6, t2, a3
                  add          a0, s8, s1
                  srai         s4, a7, 1
                  srai         ra, a0, 12
                  srai         tp, a7, 3
                  slt          t0, tp, a4
                  sll          a6, a1, t2
                  srai         s5, t0, 13
                  lui          s7, 458623
                  ori          a7, a4, -628
                  sll          a6, s11, gp
                  srli         s9, a5, 1
                  srl          gp, a4, s7
                  addi         s2, s9, 201
                  sra          s6, a2, t2
                  add          a0, s6, a4
                  auipc        a2, 785847
                  and          ra, s9, s11
                  or           s4, s4, a1
                  sub          a2, a4, a0
                  sra          s8, a6, gp
                  andi         a6, sp, -1940
                  slti         t4, a5, 931
                  srli         s4, s2, 28
                  auipc        s8, 97467
                  sll          s3, t0, a1
                  or           s8, s10, a6
                  srl          s2, s0, a7
                  add          t6, s3, s1
                  auipc        s2, 859797
                  slt          s1, a6, a2
                  slt          a2, t5, tp
                  slli         s5, t0, 0
                  li           a6, 0x3dc09210 #start riscv_int_numeric_corner_stream_12
                  li           t2, 0x80000000
                  li           s7, 0x80000000
                  li           a3, 0x0
                  li           a2, 0x0
                  li           s3, 0x80000000
                  li           t1, 0xffffffff
                  li           t0, 0x80000000
                  li           sp, 0xffffffff
                  li           t6, 0x0
                  lui          t2, 236552
                  nop
                  addi         t2, a6, 793
                  lui          a3, 560039
                  add          a2, a6, sp
                  add          t6, sp, a3
                  sub          sp, a6, s3
                  sub          a2, t1, t6
                  lui          sp, 610950
                  lui          t0, 335374
                  auipc        a3, 694034
                  nop
                  sub          t1, s3, s7
                  addi         s3, t0, -246
                  auipc        t6, 966353
                  add          t0, t0, a6
                  addi         a6, t2, -1949 #end riscv_int_numeric_corner_stream_12
                  xori         tp, sp, -891
                  srl          t4, a0, t6
                  ori          a2, s7, 1462
                  auipc        s11, 699689
                  auipc        a1, 607807
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s5, 0xffffffff
                  li           t6, 0x30855bf4
                  li           a6, 0x80000000
                  li           a7, 0xffffffff
                  li           a4, 0xecd11116
                  li           s10, 0x4255c04
                  li           s6, 0x0
                  li           t1, 0xffffffff
                  li           s8, 0x0
                  add          a0, a7, a7
                  addi         s8, s8, -386
                  sub          s6, a7, t1
                  sub          a0, s10, s8
                  auipc        a6, 905219
                  lui          s6, 898337
                  nop
                  lui          a6, 583658
                  lui          t6, 966604
                  sub          a0, s10, a6
                  auipc        a7, 272085
                  nop
                  add          t1, s6, s8
                  lui          t6, 68550
                  lui          s8, 53157
                  auipc        s5, 52302
                  addi         s10, t1, 1088
                  addi         a6, s5, -1267
                  auipc        a4, 107288
                  sub          s6, s6, s6
                  sub          a7, a6, a7
                  lui          t6, 659677 #end riscv_int_numeric_corner_stream_6
                  nop
                  xori         s9, ra, 1217
                  sll          zero, a4, s10
                  slli         a4, s0, 31
                  srl          s8, s5, sp
                  nop
                  slti         a0, s10, 2024
                  sltiu        s5, tp, 99
                  xor          a7, a3, s5
                  auipc        a6, 893860
                  sltiu        s10, s4, -55
                  add          a7, ra, a0
                  nop
                  add          t0, a7, s8
                  sll          a1, a4, t3
                  slt          s8, a7, s2
                  add          zero, a6, zero
                  sltu         s9, a6, zero
                  sll          a7, s5, a6
                  xor          t1, a0, s11
                  lui          s3, 389707
                  ori          t1, s1, 1900
                  slt          a6, t1, a6
                  auipc        t1, 978913
                  nop
                  xori         gp, a1, -1253
                  xor          t2, sp, t6
                  sra          a6, s10, tp
                  srl          t0, a2, a6
                  sub          tp, s8, t6
                  srli         a0, s5, 14
                  or           t0, a1, t2
                  slli         t1, s3, 13
                  nop
                  slti         s5, a0, -1001
                  slli         a3, t1, 6
                  slt          t6, s9, s9
                  srai         t5, s10, 2
                  sltu         a6, a6, t6
                  srai         a1, t2, 18
                  srl          s5, s1, t5
                  sll          s4, s10, s7
                  sll          s11, s8, s5
                  nop
                  xori         s11, t6, 1782
                  or           s9, a4, s1
                  nop
                  sll          t6, sp, a2
                  auipc        ra, 471140
                  xor          s1, a7, a5
                  slt          t4, t5, t5
                  lui          ra, 336081
                  sll          ra, s4, t2
                  xori         tp, t3, -1676
                  auipc        a7, 780761
                  srai         a3, t0, 23
                  xori         t1, t4, 1538
                  auipc        s5, 1019618
                  xor          a6, s1, t2
                  slt          a2, s1, s1
                  sll          s11, s0, t5
                  sub          s10, t1, ra
                  sltiu        sp, a6, -991
                  srli         s8, a2, 9
                  slli         s4, a3, 22
                  nop
                  lui          tp, 775960
                  or           a4, zero, a0
                  auipc        a0, 433098
                  or           s7, zero, s7
                  srai         s2, a7, 3
                  auipc        t6, 673899
                  addi         s9, s10, 1520
                  add          a7, t6, s6
                  nop
                  ori          s10, t2, 1901
                  srli         s4, s6, 21
                  ori          a1, a1, 1039
                  slli         t5, t6, 12
                  slt          s4, t4, a4
                  addi         t6, t1, 1519
                  slti         a2, s5, 1903
                  xor          s3, s4, t2
                  ori          s8, sp, 976
                  sll          a2, t1, a6
                  ori          s6, s0, -1023
                  addi         zero, ra, -747
                  andi         a4, a3, 445
                  xor          t2, ra, s4
                  xori         s5, a6, -1033
                  or           t6, a4, t5
                  lui          gp, 696937
                  or           sp, a5, a5
                  and          gp, s7, s8
                  srli         t5, a3, 26
                  srl          s9, s8, ra
                  lui          t6, 761302
                  slti         sp, s11, 230
                  nop
                  lui          t0, 227654
                  sub          s8, t6, a4
                  sltu         t4, s9, s4
                  xor          s1, s2, sp
                  xor          a4, s10, s5
                  slt          zero, a2, tp
                  srl          s8, s9, s4
                  slti         a4, s8, -740
                  sub          s4, t4, s8
                  sltu         s9, tp, t2
                  xori         s6, s9, -925
                  srai         a4, t2, 5
                  slli         t0, a5, 16
                  slli         s3, ra, 3
                  slt          a3, s11, a5
                  ori          t4, t2, -127
                  sll          t6, ra, a6
                  srai         s7, s10, 3
                  andi         t1, s1, 362
                  andi         t0, a7, 1379
                  addi         s3, a0, -1370
                  xori         a0, a4, 727
                  lui          s9, 441550
                  or           t5, a3, tp
                  and          s11, gp, a4
                  lui          a7, 495664
                  sll          t0, t6, a0
                  srai         s1, t1, 27
                  andi         a6, sp, 1130
                  slti         s3, t1, -1374
                  ori          t0, s11, -1092
                  slli         a0, s4, 21
                  xori         t6, s7, 454
                  slli         tp, ra, 10
                  sra          s3, sp, a4
                  sltu         a0, a0, sp
                  ori          t1, s1, -650
                  auipc        t1, 101676
                  xor          t0, a7, t6
                  nop
                  and          sp, t4, s9
                  sub          t6, t3, s10
                  ori          t2, s3, 1370
                  srl          a2, tp, s9
                  andi         t1, a4, -672
                  and          a1, t4, s3
                  srai         t4, tp, 8
                  sltiu        a3, a4, 657
                  slti         s11, a2, 21
                  slt          zero, a0, s8
                  slt          s5, a2, s1
                  sltu         s4, a7, sp
                  sltu         s7, s5, s6
                  sltu         gp, a1, zero
                  sll          tp, a3, a5
                  and          a3, a1, s9
                  auipc        sp, 63731
                  lui          s8, 869418
                  srl          a3, a4, a0
                  ori          tp, t0, -351
                  sra          a4, s5, t6
                  sub          s5, s9, t6
                  lui          s2, 211051
                  sra          s5, t1, zero
                  slt          s10, s3, t4
                  srl          t0, tp, s6
                  slt          a7, s11, a5
                  xor          a7, t3, s5
                  addi         t5, s3, -417
                  srl          gp, s7, s4
                  nop
                  xori         t0, t2, 661
                  ori          t0, a5, -121
                  andi         s7, t0, -1650
                  addi         s3, t0, 261
                  xor          a1, t5, zero
                  slti         s4, t3, 660
                  srl          a6, t5, s1
                  sll          s7, a3, s4
                  add          t6, s2, t4
                  andi         sp, gp, -1476
                  sll          s2, a7, tp
                  slli         ra, s4, 15
                  xori         zero, tp, -661
                  slt          t1, s3, s8
                  srai         zero, s9, 0
                  or           gp, t2, gp
                  add          a6, s0, t3
                  slti         s6, s6, -27
                  andi         t0, a5, -1461
                  srl          ra, sp, a3
                  sll          s5, s4, a0
                  srl          a1, sp, a1
                  sra          t2, t6, s2
                  and          s8, a2, t3
                  ori          a1, a4, -1837
                  sra          s8, s4, sp
                  addi         s8, t6, 1740
                  lui          sp, 74055
                  slli         tp, a4, 21
                  sra          sp, s4, s11
                  nop
                  srai         t0, s4, 31
                  slli         gp, zero, 10
                  lui          a3, 100536
                  xori         s2, t1, 1592
                  slti         s3, t4, 266
                  sub          t2, s7, s6
                  slti         s7, a6, -812
                  srl          gp, sp, a3
                  or           a2, zero, t1
                  srai         s3, s7, 5
                  lui          ra, 635105
                  andi         s7, a3, -500
                  srli         s3, a2, 11
                  auipc        a6, 781978
                  srai         a2, tp, 30
                  slti         a1, t3, -1559
                  sub          tp, a1, s7
                  sltiu        a7, s7, 1180
                  sltiu        s3, t2, -1766
                  sltiu        a1, a7, -413
                  srli         ra, a6, 17
                  slli         zero, a5, 25
                  sltiu        s10, a6, -301
                  lui          s7, 206194
                  slt          sp, s4, a1
                  slt          t2, s3, t2
                  srli         tp, tp, 4
                  srl          t2, a4, t5
                  xor          s7, s0, ra
                  ori          t2, s7, -1461
                  auipc        t5, 761259
                  sltu         ra, gp, sp
                  lui          tp, 1024450
                  srli         t0, a0, 18
                  slti         a7, a6, 1843
                  addi         a1, t1, 1553
                  andi         t4, s7, 1666
                  sub          s2, s9, a4
                  sra          t2, gp, s11
                  sra          t5, s2, s10
                  sltu         s6, a6, s4
                  sltu         s6, s5, s9
                  andi         a2, s8, 967
                  or           a4, t1, s4
                  sll          s1, a7, sp
                  add          gp, t0, a2
                  slt          tp, s9, a0
                  lui          a6, 632652
                  sub          s6, s9, a5
                  sltu         t6, a7, t1
                  or           ra, t0, a6
                  add          t6, a1, s1
                  or           s5, t3, s3
                  sll          s7, s4, s3
                  srl          s7, s2, t3
                  auipc        ra, 614142
                  and          t2, s3, tp
                  sltu         t6, t2, a1
                  ori          a6, a3, -814
                  ori          s3, s6, -1247
                  slt          s6, t4, zero
                  xor          gp, s2, s8
                  slli         t4, a4, 18
                  slti         ra, a2, 301
                  slli         a4, s10, 29
                  and          s8, a3, s0
                  nop
                  sra          zero, s7, a5
                  srli         a1, t2, 20
                  sub          s8, s7, s5
                  addi         t6, s10, -316
                  xori         s4, t4, 2046
                  slti         gp, t6, -1015
                  and          s6, a2, s11
                  and          a7, s3, a3
                  slt          sp, a1, s1
                  lui          t6, 730154
                  xor          a1, s5, s0
                  addi         a1, tp, -371
                  slli         ra, a4, 11
                  or           s8, a3, s6
                  sltu         s11, s9, s5
                  auipc        s3, 747569
                  srli         a4, s10, 21
                  auipc        s7, 303289
                  srl          sp, tp, t1
                  and          s6, a6, s4
                  slti         s10, s11, 624
                  or           a3, tp, sp
                  srai         t0, a2, 17
                  sll          a3, t5, s3
                  lui          t2, 622216
                  sltiu        s9, a6, 1331
                  ori          t4, t3, -1644
                  auipc        s1, 683965
                  slt          s10, s5, zero
                  andi         a6, t4, 1037
                  slli         s3, s11, 7
                  xori         s2, ra, -1762
                  nop
                  xor          t2, t5, tp
                  xori         s3, sp, -56
                  addi         a2, a7, -228
                  xori         s2, t3, -601
                  nop
                  srai         s2, s0, 1
                  auipc        t5, 149771
                  sra          a0, zero, ra
                  srli         s4, a7, 1
                  ori          s8, s7, 1049
                  xor          s4, a6, a4
                  andi         a6, s7, 1115
                  add          t1, t5, s10
                  slli         t4, ra, 17
                  and          a6, s6, s1
                  lui          t1, 959790
                  sub          t4, s6, s6
                  slt          s5, ra, sp
                  slli         s8, s11, 29
                  xori         a0, s6, 1753
                  srli         sp, t0, 25
                  and          a3, s11, s10
                  slti         s2, a0, -1535
                  or           t4, t3, a7
                  sltu         a3, a6, s7
                  addi         s9, zero, 685
                  and          t6, tp, s2
                  ori          gp, a1, 1731
                  ori          gp, s3, -254
                  sltu         t5, a2, a1
                  or           a6, s5, s0
                  and          s10, t3, t5
                  slt          s6, s11, gp
                  sltu         a4, gp, s7
                  sltu         s8, s11, a3
                  andi         s4, t3, 1867
                  auipc        s4, 133227
                  srai         s4, t6, 25
                  slti         s11, s2, -359
                  sltu         t0, s10, t6
                  srai         a4, s1, 14
                  srli         s7, s8, 0
                  slt          tp, t3, tp
                  xori         s7, t4, -1626
                  or           s9, tp, a2
                  add          sp, s11, a1
                  ori          a1, a6, -881
                  sra          s11, a1, gp
                  srli         t0, s1, 23
                  sub          a7, a6, s10
                  slti         a4, tp, -2025
                  srai         s8, a3, 13
                  sub          sp, a7, s2
                  sub          t2, s9, s0
                  add          zero, s9, s4
                  nop
                  ori          s6, s8, 1370
                  xori         s7, s0, 827
                  xor          a1, a2, tp
                  addi         a7, t5, -1806
                  srli         s5, t6, 18
                  or           s6, s6, s5
                  add          t0, a1, a4
                  xori         s1, sp, -211
                  slti         t2, a6, 196
                  sub          a1, sp, a6
                  nop
                  auipc        s11, 733341
                  add          s11, ra, s5
                  ori          s11, s9, -170
                  srli         s3, s3, 26
                  and          sp, s10, s7
                  sltiu        s1, a6, -661
                  srli         tp, a1, 15
                  xori         s11, s7, -533
                  xor          a2, s7, a2
                  andi         a3, t3, 1698
                  srl          s6, s2, a5
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           gp, 0x0
                  li           s10, 0x0
                  li           s7, 0xbe31168c
                  li           tp, 0x80000000
                  li           s5, 0x7d7a9ab4
                  li           ra, 0x627a535f
                  li           t1, 0x0
                  li           sp, 0x0
                  li           a1, 0x0
                  lui          s5, 474935
                  nop
                  sub          tp, ra, s10
                  add          s2, ra, gp
                  sub          s10, tp, a1
                  addi         s7, tp, -1911
                  lui          a1, 715216
                  nop
                  auipc        s5, 661356
                  addi         sp, s10, 643
                  sub          ra, ra, gp
                  lui          s7, 319901
                  add          ra, s5, t1
                  lui          s7, 598872
                  lui          s5, 998508
                  lui          tp, 899169
                  auipc        t1, 48167
                  lui          s5, 559942
                  addi         s10, tp, 1042
                  add          sp, s5, tp
                  sub          s2, a1, s7
                  auipc        s5, 1017249
                  auipc        t1, 520660
                  nop #end riscv_int_numeric_corner_stream_1
                  xor          a2, s4, s10
                  sub          s9, s1, s10
                  sltiu        t0, t1, -836
                  slti         a4, s4, -1068
                  sra          a3, s0, s4
                  ori          s1, a1, -972
                  sltiu        tp, sp, 683
                  ori          s6, t3, -1519
                  slli         t1, t3, 17
                  lui          t6, 720884
                  or           s8, t5, gp
                  ori          sp, t0, 1379
                  xori         s4, gp, -30
                  or           a7, t3, a4
                  or           a6, a5, s2
                  sra          s4, a3, s2
                  nop
                  and          s10, a5, a5
                  andi         a6, t0, 692
                  srli         tp, a1, 2
                  lui          s10, 679021
                  lui          a6, 995713
                  sll          s8, s6, s11
                  srl          ra, s11, t6
                  sltu         a2, s4, tp
                  addi         gp, s10, 1814
                  andi         s9, s8, -1411
                  add          s7, s1, a1
                  auipc        s3, 145997
                  srl          t5, s9, s9
                  andi         a2, s4, -1397
                  sra          ra, s10, a7
                  srl          a7, s0, zero
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           gp, 0xffffffff
                  li           s2, 0x80000000
                  li           sp, 0xffffffff
                  li           t5, 0xffffffff
                  li           t6, 0x80000000
                  li           ra, 0x80000000
                  li           s1, 0xffffffff
                  li           t4, 0x11260b91
                  li           a6, 0x0
                  add          s2, t4, a6
                  lui          ra, 373152
                  add          a6, s2, t5
                  lui          a6, 657110
                  sub          t4, s2, a6
                  auipc        ra, 275612
                  lui          s1, 414570
                  sub          a6, s1, t5
                  add          sp, s2, sp
                  add          ra, a6, gp
                  nop
                  sub          s8, t4, t5
                  add          gp, gp, t6
                  auipc        ra, 777355
                  addi         s8, gp, 1546
                  addi         s2, t5, 1054
                  add          a6, s2, sp
                  lui          s2, 1023265
                  addi         s8, gp, -1203
                  auipc        t4, 374750
                  addi         s8, s1, 620
                  addi         gp, a6, -507
                  addi         s1, ra, -1926
                  sub          sp, s1, s1
                  sub          sp, sp, gp
                  sub          a6, t6, s2
                  add          ra, a6, s8
                  lui          ra, 622911
                  lui          s8, 713199 #end riscv_int_numeric_corner_stream_18
                  xor          s9, t1, t4
                  slt          t1, s4, s5
                  auipc        t2, 455698
                  xori         zero, s7, 1641
                  nop
                  addi         t1, tp, -1006
                  sltiu        t1, ra, 704
                  lui          s11, 92882
                  add          a4, t6, a0
                  ori          a6, sp, -1888
                  sra          a2, tp, t0
                  srli         a7, t3, 9
                  slli         a7, t0, 21
                  or           sp, tp, t2
                  xor          t5, s9, t2
                  nop
                  and          t4, s2, tp
                  srli         a3, a5, 11
                  sltiu        a2, t0, -1998
                  xor          a4, sp, a6
                  nop
                  srli         s1, a7, 18
                  slt          s6, s1, a1
                  ori          t2, t4, -586
                  andi         a7, s7, -1483
                  slt          t6, s8, t6
                  xori         t0, a6, 980
                  or           gp, t3, s2
                  sltu         s1, s2, s2
                  xor          t5, a5, a3
                  sltu         s10, t2, s11
                  sra          s5, a1, t2
                  sub          s5, s7, s3
                  and          sp, a2, gp
                  sll          t1, s0, s0
                  sll          s5, zero, gp
                  andi         tp, s10, 335
                  sll          s4, a3, t0
                  srai         s2, s5, 10
                  sra          s10, s3, s1
                  addi         t1, a0, -1071
                  addi         s4, ra, -1472
                  sll          a3, t2, s0
                  lui          s6, 320580
                  sra          sp, s9, sp
                  nop
                  nop
                  auipc        s2, 798859
                  nop
                  slti         a4, s3, -1576
                  srai         a1, a2, 5
                  sll          a2, sp, ra
                  addi         gp, t1, -1238
                  slti         tp, s2, -1742
                  sll          s10, s1, a1
                  andi         sp, s3, -669
                  slt          t1, s8, a0
                  srai         a6, t5, 9
                  addi         ra, t5, -23
                  sra          zero, s9, a0
                  andi         s10, a1, -424
                  or           a6, a3, a2
                  sra          s3, s6, t4
                  sub          a4, a6, t5
                  andi         a3, s2, -315
                  add          s5, t1, a5
                  xori         s11, a4, -1534
                  ori          s1, s3, -1542
                  xor          s2, ra, a1
                  sra          t2, t1, t1
                  slt          s4, ra, s11
                  sltiu        t5, s1, 1492
                  sltu         t5, t4, s8
                  sra          a1, t0, t1
                  auipc        sp, 574948
                  slti         t2, sp, -1264
                  srl          ra, t2, t5
                  auipc        s7, 703200
                  srl          s3, t2, s5
                  sltiu        ra, tp, 1581
                  srl          s2, t4, s9
                  and          zero, s4, s7
                  add          t1, a3, gp
                  srl          s2, a3, s10
                  slli         s2, t1, 23
                  auipc        t5, 875935
                  sll          sp, a7, s8
                  lui          a3, 82763
                  sltu         s11, s10, a0
                  xor          s7, s1, t0
                  sra          s8, a5, s0
                  srai         a1, a1, 4
                  xor          gp, s8, a6
                  nop
                  sltiu        sp, t5, 1917
                  andi         s4, a5, -28
                  ori          a7, a3, -2021
                  lui          t1, 402755
                  sltiu        s5, zero, -741
                  sll          a3, s3, ra
                  auipc        t4, 420199
                  addi         tp, a1, 323
                  nop
                  sub          zero, t2, a1
                  srl          tp, t0, s5
                  slli         s11, a3, 4
                  xori         zero, t5, 644
                  nop
                  sll          a0, tp, tp
                  slt          s8, s11, a2
                  ori          a2, a7, 1271
                  or           s1, t2, tp
                  sltu         s7, a0, t3
                  sra          s2, tp, a1
                  or           s11, gp, s5
                  or           s4, t0, gp
                  lui          a6, 709522
                  auipc        t5, 534690
                  srl          zero, s0, tp
                  sra          s9, s11, a6
                  sltiu        s2, a6, 115
                  addi         a3, s6, -1291
                  sll          a7, a5, sp
                  sub          a3, s0, tp
                  addi         t6, s2, 1695
                  sub          ra, t3, s9
                  addi         a7, s10, -1367
                  sll          t1, a0, s10
                  xor          t1, s0, a7
                  slti         a0, a4, -1033
                  nop
                  slli         s7, a6, 29
                  lui          a4, 44668
                  srl          s11, s5, t6
                  ori          zero, s1, 1170
                  slt          a0, t3, s1
                  sub          t5, t4, t0
                  auipc        a7, 232964
                  ori          gp, t0, -906
                  and          s3, s0, a0
                  ori          t6, a4, 1708
                  srl          sp, a1, s0
                  sltiu        s11, t0, 499
                  sltu         zero, s4, a7
                  ori          s11, a7, -387
                  sll          s4, t4, t4
                  slt          gp, s5, t1
                  xori         a3, a6, -1698
                  lui          t0, 852425
                  sub          a7, s1, a3
                  lui          a7, 455874
                  xor          zero, s11, s11
                  srli         t6, s11, 7
                  ori          a1, s6, -1666
                  lui          a6, 780835
                  addi         s4, t2, -854
                  add          s3, a3, gp
                  sltiu        t2, s8, -685
                  sll          s1, sp, zero
                  nop
                  sll          sp, a7, t0
                  slt          s1, gp, s8
                  or           t6, a7, a0
                  slt          s2, s6, s10
                  srl          t0, s11, a7
                  andi         s11, ra, 1595
                  and          zero, s5, a3
                  srai         a6, t4, 13
                  and          s1, s7, s1
                  and          gp, t4, a4
                  xori         tp, s4, 1428
                  sub          ra, s5, s3
                  sll          t2, a5, tp
                  srli         a2, s2, 20
                  addi         t0, s10, 183
                  slli         s5, tp, 17
                  and          gp, s11, sp
                  and          tp, tp, a5
                  xori         s8, a7, 1622
                  sltiu        s5, s9, -1415
                  ori          t4, t3, 1749
                  slli         gp, tp, 11
                  xori         t0, s7, 321
                  and          a0, s10, a5
                  and          s2, a0, s7
                  nop
                  or           t2, s2, a0
                  and          a6, a3, a3
                  nop
                  sub          sp, ra, s1
                  addi         t4, s6, 1686
                  or           zero, ra, s10
                  srli         a3, t4, 8
                  sra          t1, s9, ra
                  sltiu        a7, s8, -168
                  lui          s8, 629032
                  slti         a1, s3, 566
                  lui          s1, 257553
                  andi         s9, s3, 1559
                  sltu         t4, t5, t5
                  auipc        s6, 63183
                  srai         gp, a0, 17
                  addi         a6, s8, 344
                  sltiu        s11, a3, 912
                  ori          s11, a2, -1734
                  srai         s7, s9, 20
                  auipc        a0, 606398
                  lui          gp, 830652
                  lui          a0, 670970
                  ori          s9, a4, -1681
                  sra          s9, sp, t0
                  sub          a2, s5, t5
                  auipc        s5, 86108
                  auipc        s4, 141961
                  auipc        s7, 376227
                  sltu         s11, s4, s0
                  slti         s1, sp, -1407
                  nop
                  xori         t1, a5, 1233
                  and          a0, s7, s10
                  lui          a2, 192168
                  sltiu        s6, s1, 1434
                  sra          s11, t6, a0
                  nop
                  xor          a4, a2, t1
                  xori         a6, s9, 1444
                  auipc        zero, 650125
                  xor          a7, a4, tp
                  slti         t1, s10, -1816
                  sltiu        a1, zero, 20
                  add          t4, a2, s7
                  auipc        t1, 177411
                  or           s2, gp, s3
                  slti         s9, a5, -494
                  ori          sp, t1, -57
                  ori          s11, t3, 469
                  srl          zero, s4, a0
                  and          s9, s2, s6
                  sra          t5, a6, s5
                  sltiu        t5, s0, -1427
                  andi         t4, sp, -1055
                  xor          t0, a0, sp
                  lui          zero, 686424
                  lui          a4, 1000263
                  sll          t4, s4, s7
                  sub          s11, s11, t3
                  nop
                  sll          sp, a7, gp
                  sll          gp, s3, a6
                  srai         a2, t6, 27
                  addi         a1, s9, 1152
                  auipc        gp, 727122
                  andi         a4, s6, -166
                  and          s2, a7, t6
                  sll          t5, s6, ra
                  slti         t4, a1, -469
                  and          sp, a0, a0
                  srl          sp, sp, t0
                  xori         s2, t4, -497
                  sub          a0, a0, s10
                  srli         t4, a3, 21
                  srli         t0, s6, 17
                  sll          a0, s9, t0
                  andi         a1, s8, -720
                  lui          s3, 347313
                  slti         a7, tp, -1075
                  lui          s6, 899601
                  srl          a3, t1, zero
                  add          a2, ra, a7
                  sub          a0, a0, s3
                  srai         a4, t3, 2
                  or           tp, s4, a0
                  andi         t2, gp, 777
                  nop
                  and          s2, a0, t6
                  add          t4, a0, t2
                  and          s2, a0, zero
                  sltu         gp, s4, s11
                  sll          sp, t0, a7
                  sll          t1, a2, ra
                  lui          a7, 545408
                  srli         a0, zero, 22
                  addi         t0, s11, 211
                  srai         s9, t3, 26
                  slt          a2, t2, a2
                  srl          a6, s8, s11
                  lui          a0, 365351
                  srai         s3, s3, 25
                  ori          t5, t3, -1625
                  add          s6, s9, a3
                  addi         s5, a3, 1867
                  slti         s4, s1, 78
                  andi         s5, s10, -1104
                  lui          tp, 602541
                  xor          t6, t2, a2
                  srli         s5, s9, 5
                  srai         s2, s10, 17
                  sltu         ra, a4, s11
                  slti         s11, t0, 1914
                  andi         a6, s6, -1193
                  addi         s9, s5, 583
                  and          zero, s4, t4
                  auipc        zero, 15822
                  andi         s8, s4, 508
                  xor          a7, t1, sp
                  slti         a2, s5, 1054
                  addi         s4, s6, -1444
                  add          a4, s8, s5
                  sub          a1, t2, ra
                  addi         t4, s3, -642
                  sltu         a6, t5, t0
                  slt          a3, ra, s11
                  ori          t0, sp, -1288
                  slti         t4, s10, -1970
                  srli         s9, s3, 3
                  and          a1, s11, s3
                  srl          t2, zero, s7
                  srli         s1, zero, 24
                  andi         s7, s1, -52
                  sra          s4, t6, a2
                  and          s8, s4, s2
                  addi         s2, a2, -780
                  and          t0, t3, tp
                  andi         s10, s3, 761
                  lui          s5, 786177
                  sll          s6, s1, a5
                  slti         t6, a6, -415
                  xor          s2, a6, s9
                  xori         s7, t4, -1723
                  addi         s8, s9, 1546
                  and          a0, a6, t4
                  slli         a0, a2, 23
                  and          s10, s5, s7
                  srli         a3, s4, 11
                  sll          s9, a6, a7
                  slti         t5, s2, -203
                  addi         t5, a6, 1734
                  sltu         s4, s0, a0
                  and          zero, a5, ra
                  srai         t6, s7, 24
                  srl          a0, a6, s11
                  srai         s8, zero, 19
                  ori          a4, ra, 580
                  lui          a2, 343476
                  slti         a6, zero, 320
                  lui          t4, 38187
                  auipc        s7, 1019259
                  lui          sp, 621581
                  srl          sp, sp, t6
                  sra          s9, s8, s2
                  sll          t6, t0, s2
                  xori         s2, t2, 398
                  sltiu        s3, zero, 171
                  add          zero, ra, t2
                  xor          a3, s5, a5
                  auipc        s9, 250195
                  sll          a1, s0, t6
                  andi         s10, a3, 1545
                  slti         t6, s5, -292
                  nop
                  srl          t2, s6, a7
                  xori         sp, s6, 1513
                  nop
                  add          tp, s5, t1
                  xori         s4, a6, 11
                  srl          s1, s9, sp
                  srai         s7, sp, 30
                  sltiu        s11, a7, 2033
                  andi         a1, s2, 755
                  slt          sp, t2, tp
                  and          s10, a0, s3
                  ori          tp, s8, -388
                  sra          s4, s6, a4
                  auipc        tp, 846966
                  srli         s9, t4, 22
                  sra          s4, s6, s5
                  ori          a2, s2, -1156
                  sltu         a4, t3, s11
                  ori          a3, tp, -328
                  slli         s5, t3, 9
                  add          s10, s4, t0
                  srl          s10, t5, s3
                  srli         s2, a1, 26
                  or           s2, s9, a7
                  slt          s5, s8, t5
                  add          t4, a3, a4
                  sltiu        t6, s8, 3
                  add          s3, t0, s9
                  slt          s3, a4, t1
                  sltiu        s3, s0, -1736
                  or           s7, t5, a2
                  sub          t5, t4, a5
                  sltu         s1, a6, t6
                  sub          t6, s4, a7
                  sub          a3, a6, a6
                  srl          tp, t6, t1
                  addi         t2, a3, 1468
                  ori          zero, t4, 1845
                  auipc        t0, 418014
                  xori         t4, s9, 1007
                  andi         s2, a3, 436
                  add          s1, s5, t1
                  xor          t5, a0, t5
                  sub          a6, s7, t0
                  nop
                  ori          t0, ra, -1401
                  sra          t2, s5, s9
                  slli         s7, s2, 14
                  andi         t4, s5, -3
                  lui          s6, 355584
                  srai         s5, t4, 17
                  sltiu        s6, zero, 768
                  addi         a7, a0, -1887
                  sub          s5, t0, t3
                  srl          s10, ra, a4
                  slli         s2, t6, 11
                  addi         t0, a6, 712
                  slt          s10, tp, a7
                  andi         t6, t5, -904
                  lui          a1, 548628
                  sltu         s1, t3, s7
                  sub          a0, t3, t4
                  sltu         a0, s11, s9
                  slli         t4, a6, 11
                  sub          s5, gp, t1
                  sltiu        a3, t0, 1834
                  addi         gp, sp, -1779
                  nop
                  slti         s11, s2, 2025
                  slli         gp, s0, 0
                  sltiu        s6, s10, -1529
                  ori          a1, a4, 875
                  sltiu        a4, s6, -1015
                  and          a3, gp, a1
                  auipc        s8, 437767
                  lui          zero, 426338
                  slti         a2, s7, -1503
                  auipc        t4, 47282
                  nop
                  and          s4, s1, sp
                  srl          s6, s6, s5
                  sra          t0, t3, s1
                  lui          s11, 938332
                  ori          t6, a3, -1708
                  sltiu        tp, a0, 501
                  nop
                  slti         gp, t1, -785
                  ori          t0, s2, 1032
                  addi         s1, s3, 517
                  nop
                  ori          s6, s0, -1222
                  xori         t1, s4, -1723
                  sub          s3, s3, t2
                  lui          t1, 605866
                  sll          s9, s1, s9
                  ori          a7, s2, -388
                  sra          a1, a5, t3
                  srai         s1, s6, 8
                  sub          s10, t0, t3
                  and          t2, t3, a3
                  andi         a1, t4, 235
                  addi         ra, a7, -809
                  sra          s11, a4, zero
                  srli         a0, a0, 28
                  ori          t6, s0, 223
                  xori         s11, s0, 424
                  slt          a7, t3, a1
                  sub          s8, s7, t5
                  and          zero, t0, tp
                  sltiu        s3, a5, 700
                  slli         t4, sp, 4
                  slli         t6, t1, 4
                  slli         t5, s0, 0
                  auipc        a4, 749153
                  sll          s8, t4, t3
                  sub          a4, a2, zero
                  lui          a7, 606080
                  nop
                  sub          s3, a7, sp
                  nop
                  srai         t0, s7, 24
                  add          gp, gp, s5
                  sub          t5, s4, a6
                  ori          gp, tp, -918
                  slti         a7, a6, -1504
                  or           s3, s7, tp
                  lui          s2, 532731
                  nop
                  add          a7, t2, zero
                  xori         ra, s8, 516
                  srli         a0, t6, 27
                  ori          s2, t1, 1429
                  addi         s8, a0, -532
                  xori         t6, s5, 1724
                  or           s9, s7, s5
                  srli         s5, t2, 4
                  sltu         a6, gp, zero
                  slt          ra, gp, s2
                  nop
                  slt          a2, s7, a5
                  sub          s9, a5, t5
                  and          s8, t5, sp
                  sub          s3, sp, s9
                  srli         a1, t2, 1
                  auipc        s7, 473384
                  sra          gp, t5, t6
                  srl          s3, a1, a6
                  srai         t4, tp, 13
                  srli         a7, a5, 21
                  srl          t2, s7, t3
                  sltu         t5, t1, s3
                  andi         a0, t1, -1075
                  sub          t1, s9, a7
                  srai         s5, s5, 3
                  sltiu        s8, s1, -194
                  nop
                  slti         zero, gp, -302
                  auipc        s7, 171879
                  slli         s4, s2, 25
                  srai         s3, a1, 16
                  slli         t0, s11, 13
                  srli         s3, a1, 24
                  slti         t6, s0, 1453
                  nop
                  addi         a1, s10, 1665
                  srai         t5, t4, 6
                  or           t4, s7, s10
                  sra          a1, a7, s8
                  sll          t5, gp, a3
                  slli         s1, s11, 1
                  sltiu        s10, t4, 2046
                  xor          a3, a4, a6
                  sltiu        a0, a0, 1467
                  slti         s9, t3, 1982
                  sltiu        s5, s5, -1993
                  or           t2, t5, s9
                  slli         s1, gp, 14
                  sra          s6, t0, s2
                  add          a2, s9, a1
                  andi         a7, a5, -41
                  slt          s6, sp, s1
                  sra          t2, t4, a3
                  slt          s2, s3, s3
                  slli         s2, a1, 29
                  and          s7, sp, s9
                  slli         a2, t6, 4
                  srli         s9, a1, 28
                  sltiu        a2, t0, 60
                  sltiu        t5, s5, -182
                  sub          t5, a3, sp
                  srli         t4, s5, 31
                  srai         a2, t1, 20
                  slti         t1, s4, -1025
                  slli         tp, s0, 31
                  xori         a6, s0, -124
                  sltiu        s11, a0, -1703
                  sll          s7, s10, a5
                  srl          a0, t0, t2
                  andi         t5, s0, 1913
                  andi         gp, t0, -779
                  slti         s6, s9, 204
                  xori         s3, s10, -777
                  ori          s4, s5, 1039
                  addi         a2, s1, 1196
                  ori          s5, t5, -1020
                  andi         a6, a2, 487
                  sltu         s9, sp, t6
                  srai         s3, a7, 18
                  ori          t4, a2, 496
                  or           t2, t6, t3
                  sltu         s7, s3, a7
                  nop
                  lui          s10, 234158
                  sra          a2, sp, a4
                  lui          a2, 522117
                  or           s11, s7, a7
                  or           a2, t3, ra
                  sub          s2, s2, s11
                  nop
                  sltu         s8, t4, t4
                  xori         s3, t0, -596
                  or           a1, t0, a6
                  slt          a6, t5, ra
                  sra          tp, s2, zero
                  srai         zero, sp, 7
                  sll          s1, s11, gp
                  slt          a0, s11, s10
                  srl          ra, s3, t0
                  auipc        s8, 568409
                  srl          t5, t5, ra
                  slt          t5, a5, t6
                  sltiu        t2, a6, 1629
                  slti         s1, s7, -836
                  lui          s7, 240383
                  srli         gp, s0, 27
                  xori         s5, ra, -186
                  srli         s5, s11, 3
                  lui          a4, 670792
                  auipc        s2, 427869
                  xor          s6, s7, tp
                  sub          s3, s9, t6
                  lui          s3, 31633
                  ori          tp, a0, 679
                  slti         s5, s1, -1273
                  xori         s4, a2, -1491
                  sll          s10, t3, ra
                  slti         a2, a7, 1103
                  slti         zero, s11, 1561
                  ori          sp, a7, -1
                  add          t2, s1, s9
                  xori         gp, s4, -1876
                  ori          s6, s8, -674
                  srl          zero, s3, t0
                  slt          s6, ra, s7
                  or           a4, a3, t5
                  sltu         s10, a1, s4
                  lui          s3, 797654
                  xori         s1, s3, 907
                  srl          t2, a5, t4
                  or           s6, s6, s1
                  sub          s7, s11, a6
                  sltiu        t0, t4, -539
                  addi         a4, a4, -1231
                  slti         gp, sp, 150
                  add          s2, t1, t3
                  xor          a0, s1, s7
                  sub          s4, sp, s11
                  sra          s6, t3, t2
                  andi         a1, s5, 1838
                  slti         a4, sp, 958
                  slli         s5, s6, 29
                  and          t0, t3, t6
                  add          gp, s4, tp
                  slt          t1, s2, a1
                  slti         zero, sp, 391
                  addi         s8, a5, 464
                  auipc        s9, 49870
                  add          s8, a6, t6
                  sub          a7, a4, s11
                  auipc        s2, 819094
                  srl          t2, a6, t6
                  sll          s10, a1, tp
                  srl          s9, a6, t5
                  slti         tp, a2, -140
                  slti         s10, s4, -1372
                  srl          a6, s5, s3
                  and          s10, t4, a5
                  add          a6, s7, s3
                  auipc        s2, 333958
                  and          a3, s1, t1
                  srai         gp, t3, 29
                  xori         sp, t2, -1285
                  sub          s10, a1, a2
                  srai         ra, t3, 5
                  sltu         a3, a5, s3
                  srl          t0, t6, tp
                  sra          zero, s3, s0
                  slt          t4, gp, t2
                  sltu         t2, s2, t4
                  addi         zero, t5, -1686
                  auipc        sp, 991529
                  add          s9, s0, s3
                  add          a4, s4, s11
                  slli         s10, sp, 19
                  sltiu        t5, s5, -1326
                  addi         s3, a6, -751
                  slti         a1, sp, -585
                  xor          t0, s6, a0
                  slli         zero, a6, 18
                  sll          zero, s6, s5
                  sra          t2, s6, s10
                  slt          s8, a7, a3
                  slli         a4, t6, 5
                  slti         s7, s2, -581
                  sra          s9, gp, s5
                  sltiu        a7, s7, -1889
                  sltiu        a1, a3, -1048
                  addi         ra, a0, 78
                  srl          t1, a6, gp
                  sra          a0, zero, t6
                  sltu         t5, a5, a1
                  sra          s10, a6, zero
                  xor          ra, s4, s4
                  srai         a1, t0, 23
                  sra          s11, a7, t1
                  auipc        s2, 617079
                  add          s6, s1, s4
                  sltu         s6, s4, a7
                  srai         s11, s0, 12
                  xori         sp, zero, -1073
                  auipc        s11, 64320
                  xori         t4, a4, -543
                  auipc        t6, 926173
                  andi         s6, t6, 1327
                  ori          tp, s0, 1888
                  ori          t5, s0, -1325
                  nop
                  add          s1, t5, zero
                  ori          t2, a1, -553
                  xor          t4, t5, sp
                  xori         s5, a6, 1165
                  sll          s1, a1, a6
                  add          s2, s6, a5
                  addi         a1, a0, -631
                  lui          t1, 283767
                  srl          t5, t6, s3
                  slli         a6, t0, 10
                  auipc        a7, 590768
                  slli         gp, s4, 26
                  slti         a1, gp, -167
                  sub          a3, s2, s3
                  sltiu        gp, s0, 66
                  sltu         t1, s9, t6
                  srli         a7, t0, 16
                  srli         s9, s6, 2
                  sub          t2, a3, gp
                  nop
                  slt          a4, a2, ra
                  sltiu        a0, sp, 74
                  and          zero, a3, gp
                  nop
                  srli         t2, t0, 18
                  slti         a4, t5, 1542
                  add          s11, s8, sp
                  add          a4, a4, a1
                  slt          s11, t2, t3
                  slti         tp, s1, 1998
                  sltiu        s2, s8, -1950
                  or           t5, s1, gp
                  xori         tp, ra, -1512
                  or           s10, a3, s2
                  slli         gp, t1, 26
                  sra          t6, t2, ra
                  or           t1, s11, s8
                  sra          a2, s2, t4
                  srl          tp, ra, zero
                  addi         a6, s1, -1808
                  sll          s3, zero, t5
                  xor          t1, a1, s5
                  sll          a6, gp, s11
                  li           s11, 0x3d1900b0 #start riscv_int_numeric_corner_stream_3
                  li           a6, 0x0
                  li           s1, 0x0
                  li           t0, 0x80000000
                  li           t2, 0x2aecddb8
                  li           s5, 0xcee875ef
                  li           s10, 0x11714b17
                  li           s2, 0x0
                  li           gp, 0xffffffff
                  li           sp, 0x0
                  lui          s10, 11473
                  nop
                  auipc        s5, 413855
                  auipc        gp, 74228
                  auipc        a6, 324873
                  nop
                  sub          sp, gp, s11
                  add          s1, s1, s2
                  lui          t2, 955464
                  sub          a6, s5, s5
                  add          a6, t2, gp
                  nop
                  nop
                  nop
                  addi         s10, gp, 857
                  sub          s1, t0, s10
                  add          sp, t0, a6
                  nop
                  auipc        s1, 748511
                  addi         s5, gp, 888
                  lui          s11, 358266
                  auipc        s10, 782496
                  nop #end riscv_int_numeric_corner_stream_3
                  sub          gp, t5, s2
                  srli         t4, tp, 18
                  sltiu        a0, s0, -331
                  slt          a1, s8, s6
                  xori         s2, s5, -677
                  sra          s7, t2, t4
                  la x15, test_done
                  jalr x0, x15, 0
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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_2:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_3:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_4:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_5:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_6:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_7:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_8:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_9:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_10:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_11:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_12:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_13:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_14:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_15:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x14, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x14, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x14, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x14, x19, ecall_handler
                  li x19, 0x1
                  beq x14, x19, instr_fault_handler
                  li x19, 0x5
                  beq x14, x19, load_fault_handler
                  li x19, 0x7
                  beq x14, x19, store_fault_handler
                  li x19, 0xc
                  beq x14, x19, pt_fault_handler
                  li x19, 0xd
                  beq x14, x19, pt_fault_handler
                  li x19, 0xf
                  beq x14, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x8, x28, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

load_fault_handler:
                  add x8, x28, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

store_fault_handler:
                  add x8, x28, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x8, x28, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x8, x28, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x8, x28, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
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
