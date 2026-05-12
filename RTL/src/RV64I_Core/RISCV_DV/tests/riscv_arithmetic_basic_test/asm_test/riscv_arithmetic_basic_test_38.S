.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 1
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  mret
init:             
                  li x0, 0xfebb382a
                  li x1, 0x7ac4711b
                  li x2, 0xe
                  li x3, 0x0
                  li x4, 0x3
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0xb8d37c1e
                  li x8, 0xf9c601e6
                  li x9, 0x5
                  li x10, 0x2faf1f1f
                  li x11, 0x0
                  li x12, 0xfbab1d39
                  li x13, 0xecaf457b
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0x7
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x35dc37af
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0x5
                  li x26, 0x0
                  li x27, 0xa107b6b5
                  li x29, 0x16985463
                  li x30, 0xf384f692
                  li x31, 0xfc04ef10
                  la x28, user_stack_end
main:             li           a4, 0x5defdb6b #start riscv_int_numeric_corner_stream_19
                  li           s5, 0x20a71b95
                  li           s1, 0xffffffff
                  li           t6, 0x77db9896
                  li           a3, 0x0
                  li           s4, 0xf8fc3b1f
                  li           t5, 0x0
                  li           s10, 0x80000000
                  li           s2, 0x0
                  li           ra, 0x80000000
                  sub          s1, t6, t5
                  auipc        s4, 1040823
                  addi         a4, a4, -1280
                  add          a3, a3, s5
                  addi         s5, s2, 646
                  add          s5, s4, s2
                  sub          s2, s1, s10
                  nop
                  auipc        s10, 552827
                  sub          a4, t6, ra
                  lui          a3, 550455
                  nop
                  addi         t6, t6, 551
                  addi         t6, t5, -1600
                  add          s1, s1, a3
                  add          s4, s5, s1 #end riscv_int_numeric_corner_stream_19
                  li           s6, 0xc28643f0 #start riscv_int_numeric_corner_stream_0
                  li           s10, 0x0
                  li           s8, 0x0
                  li           s9, 0x0
                  li           t4, 0x0
                  li           a4, 0x0
                  li           s4, 0x0
                  li           tp, 0xe6d0c4c6
                  li           gp, 0xffffffff
                  li           s5, 0xd4ba620a
                  lui          s6, 220669
                  sub          s6, s5, tp
                  nop
                  add          t4, a4, tp
                  add          s5, s4, tp
                  auipc        s10, 172567
                  nop
                  sub          a4, s9, s9
                  addi         s5, s8, -1195
                  addi         s8, a4, -1090
                  nop
                  addi         a4, s4, -402
                  nop
                  add          s10, s5, s4
                  addi         s9, s4, 1576
                  lui          t4, 99063
                  auipc        tp, 282658
                  auipc        s5, 7360
                  addi         s10, a4, -1760
                  nop
                  sub          tp, s5, s5
                  add          s10, s5, gp
                  auipc        a4, 962880
                  lui          t4, 841424 #end riscv_int_numeric_corner_stream_0
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           t4, 0xa5c3d5d
                  li           s3, 0xbab7cd22
                  li           s9, 0xffffffff
                  li           a0, 0x0
                  li           s7, 0xffffffff
                  li           s4, 0x80000000
                  li           ra, 0x0
                  li           s10, 0xfbc417b
                  li           t2, 0xffffffff
                  add          s3, a0, s10
                  addi         s7, s10, 1788
                  lui          tp, 135671
                  auipc        tp, 403949
                  auipc        t4, 391766
                  nop
                  sub          t4, s9, s7
                  auipc        t4, 817102
                  addi         t4, s7, 487
                  add          s7, tp, s4
                  add          tp, s4, s9
                  nop
                  nop
                  sub          t4, t4, s4
                  sub          t4, ra, tp
                  lui          ra, 184267
                  add          a0, s4, tp
                  auipc        ra, 831561
                  auipc        s7, 28550
                  sub          s7, s9, t2
                  nop
                  auipc        s7, 174940
                  lui          ra, 874309
                  addi         s7, t2, -448 #end riscv_int_numeric_corner_stream_17
                  li           t6, 0xcf9c7bb5 #start riscv_int_numeric_corner_stream_10
                  li           a0, 0x80000000
                  li           ra, 0x0
                  li           s5, 0xffffffff
                  li           s0, 0x4932a842
                  li           s9, 0x80000000
                  li           s1, 0x0
                  li           s11, 0xffffffff
                  li           s4, 0xffffffff
                  li           t0, 0x80000000
                  nop
                  add          s1, s0, a0
                  sub          a0, t6, s11
                  lui          a0, 585834
                  lui          s11, 79891
                  auipc        s11, 57274
                  nop
                  auipc        s4, 565020
                  sub          a0, s9, s9
                  addi         s1, s1, 1098
                  add          t0, s11, t6
                  addi         s9, s1, 1311
                  auipc        a0, 811708
                  addi         s4, s1, 1504
                  add          s9, t6, s4
                  add          s0, s1, ra
                  sub          t0, s9, s4
                  add          s5, a0, t6
                  auipc        t6, 622816
                  sub          s9, s4, a0
                  sub          t0, s5, s1
                  lui          s0, 4439
                  lui          s11, 976645
                  sub          s11, s0, s9
                  lui          s9, 32605
                  nop #end riscv_int_numeric_corner_stream_10
                  li           s9, 0x35f07e3f #start riscv_int_numeric_corner_stream_6
                  li           t6, 0xffffffff
                  li           s10, 0x80000000
                  li           s8, 0xffffffff
                  li           a5, 0x80000000
                  li           t1, 0xffffffff
                  li           gp, 0xffffffff
                  li           a6, 0xffffffff
                  li           a0, 0x57722c2a
                  li           s1, 0x80000000
                  add          t6, a5, gp
                  nop
                  lui          gp, 630596
                  sub          gp, gp, a6
                  add          gp, gp, t6
                  add          a6, s10, s1
                  nop
                  sub          s9, s1, a5
                  add          gp, t6, t1
                  lui          a5, 154492
                  lui          s1, 318865
                  nop
                  sub          a0, a5, s9
                  addi         a0, s1, 1673
                  add          a5, a5, s10
                  nop #end riscv_int_numeric_corner_stream_6
                  li           s9, 0x48f4a245 #start riscv_int_numeric_corner_stream_18
                  li           s8, 0xffffffff
                  li           a0, 0xffffffff
                  li           s4, 0xffffffff
                  li           s1, 0xc6a1c705
                  li           a1, 0xffffffff
                  li           a6, 0x80000000
                  li           t6, 0x0
                  li           t4, 0xffffffff
                  li           s5, 0x80000000
                  nop
                  lui          a1, 815615
                  nop
                  nop
                  auipc        a0, 969189
                  auipc        s8, 845545
                  addi         a1, a1, 378
                  addi         a1, s8, -358
                  addi         a6, a1, -484
                  addi         a6, a6, -548
                  add          s8, t4, a0
                  lui          t4, 691905
                  sub          t4, s4, t6
                  add          a6, a1, s1
                  sub          s9, t6, s5
                  auipc        t4, 621508
                  addi         s4, s1, -1999
                  lui          t6, 549976 #end riscv_int_numeric_corner_stream_18
                  li           s10, 0x2f4f18c7 #start riscv_int_numeric_corner_stream_7
                  li           a3, 0xffffffff
                  li           t1, 0x0
                  li           t6, 0x0
                  li           a5, 0x80000000
                  li           a1, 0xc13bb9b9
                  li           a4, 0x8ea20164
                  li           gp, 0x4c96eb5b
                  li           a0, 0x0
                  li           s7, 0xffffffff
                  add          a5, s7, s10
                  add          a3, s7, a5
                  addi         t6, a5, 962
                  addi         s10, a0, -1733
                  add          s7, a5, s7
                  add          a5, a4, a1
                  lui          a3, 186726
                  auipc        a5, 795032
                  nop
                  lui          t6, 735166
                  addi         s7, t6, -758
                  sub          a1, a4, t6
                  sub          gp, s10, a3
                  addi         t6, t1, 1382
                  lui          a5, 369050
                  sub          a0, a0, s10
                  auipc        a3, 153754
                  sub          t1, a3, a4
                  addi         s10, a5, 1779
                  addi         s7, a5, 1781
                  addi         a0, t1, -559
                  sub          gp, a4, a4
                  nop
                  addi         s7, a1, -96
                  lui          a5, 782491
                  add          a3, a4, s10
                  auipc        a1, 358475
                  sub          a4, a0, t1 #end riscv_int_numeric_corner_stream_7
                  nop
                  or           s8, sp, t0
                  add          t4, tp, zero
                  srli         sp, s3, 27
                  auipc        a6, 691556
                  lui          s9, 226791
                  andi         s1, s8, -500
                  sra          s11, a0, a4
                  xori         t5, s8, -1706
                  srai         s11, zero, 6
                  and          zero, a7, sp
                  sra          s6, s7, tp
                  srai         a6, gp, 4
                  srl          a6, s8, a3
                  addi         a6, s6, -1231
                  addi         tp, t0, -986
                  srai         a5, s9, 28
                  xori         s3, t3, -745
                  srli         a3, s3, 20
                  sltu         t5, s3, t0
                  xori         t0, t5, 881
                  nop
                  slli         a5, s7, 6
                  srl          a5, t4, s10
                  slt          s1, t4, t6
                  lui          t6, 655338
                  addi         s10, t1, -65
                  srl          s0, s5, a4
                  slt          t2, s9, a2
                  nop
                  add          s8, t2, t4
                  and          s10, s11, s7
                  xor          s9, t4, s3
                  sub          s5, t1, a0
                  sll          s4, t6, t1
                  sltiu        s6, t0, -1738
                  xori         s9, tp, 1362
                  and          a3, t5, t1
                  addi         t6, s6, 307
                  sub          a0, a4, a2
                  srli         s10, t0, 20
                  andi         a4, s8, 2010
                  slli         t5, s6, 24
                  srai         t6, t6, 21
                  slti         t2, s6, 21
                  slli         a3, s10, 18
                  xori         s2, a3, -1817
                  ori          s6, s10, -867
                  sub          t0, a3, a3
                  slt          s11, t3, t6
                  andi         s8, s9, -730
                  slti         s9, s6, -1845
                  xori         a3, s3, -1341
                  sub          s7, t6, a4
                  add          a0, s0, s2
                  srai         s9, s3, 22
                  add          a5, s5, t0
                  sub          gp, gp, a5
                  sll          a6, s6, s7
                  add          s10, ra, s2
                  sll          t0, a2, a3
                  or           gp, a7, a0
                  sub          sp, gp, t1
                  slli         s5, a6, 2
                  slt          s5, t4, ra
                  srl          t5, t2, a1
                  andi         t6, s0, 1575
                  nop
                  and          gp, t5, t0
                  slli         t5, sp, 24
                  sll          s0, t1, s1
                  xori         ra, s9, -291
                  sub          gp, t6, zero
                  or           a6, s8, s8
                  slli         t2, s8, 9
                  auipc        sp, 170581
                  sub          a4, t1, s0
                  xori         gp, s8, 172
                  sltu         a3, tp, a4
                  srl          a0, s8, a0
                  or           t6, s1, gp
                  sra          a4, a7, s3
                  xori         t2, s0, 148
                  sll          t2, t2, s9
                  sra          s1, s6, s1
                  sll          s5, s3, zero
                  slti         s0, tp, 1243
                  or           s9, t5, s0
                  xori         a6, a7, -1650
                  andi         sp, zero, -387
                  xor          a3, ra, ra
                  sll          s10, s8, s10
                  addi         a5, s0, -1048
                  xori         zero, s8, 1021
                  srli         s10, s7, 10
                  add          a3, s10, gp
                  sll          gp, a7, sp
                  srai         a6, t3, 9
                  sub          s0, s8, s11
                  sra          s4, t2, s9
                  slt          s4, s1, s3
                  xori         s11, a5, -889
                  sltu         s0, a4, a1
                  add          s10, a1, a5
                  sll          s3, s4, s1
                  slli         s1, tp, 22
                  ori          t0, tp, -1619
                  ori          a5, ra, 533
                  sltu         sp, s6, t3
                  and          gp, s10, s8
                  slli         sp, s11, 7
                  sub          a1, tp, s8
                  sra          a1, a1, t1
                  xori         zero, s11, 57
                  ori          a3, t3, -265
                  nop
                  andi         s4, a1, 307
                  srli         gp, a1, 0
                  addi         s8, s0, 273
                  addi         ra, s10, -1676
                  sub          a1, s4, s2
                  add          s4, tp, a7
                  xor          t2, gp, a2
                  srai         s6, tp, 25
                  ori          s5, zero, -1739
                  srl          s0, a1, s9
                  andi         a3, t5, 1043
                  nop
                  sltiu        t5, t6, 1133
                  sltiu        s7, gp, -1882
                  sra          s1, zero, s8
                  or           s2, t4, s8
                  sra          gp, s7, ra
                  and          sp, sp, a1
                  sub          t1, a6, a7
                  slti         t4, s3, 1452
                  sltu         t0, s2, s1
                  slti         s7, a1, 1552
                  slt          s0, t1, zero
                  slt          a5, t3, s9
                  slt          s0, s5, a6
                  ori          a4, s8, 1566
                  slti         a3, s3, -1320
                  add          t6, s4, t4
                  sltu         s0, sp, s7
                  auipc        a6, 307396
                  lui          t4, 436346
                  and          tp, a3, a2
                  xor          s2, a6, t2
                  sub          a4, s7, t1
                  srli         t2, t2, 10
                  srli         t6, s0, 30
                  nop
                  nop
                  add          gp, t1, a1
                  slli         s3, tp, 14
                  srl          sp, s8, gp
                  slti         s0, t3, -1639
                  srli         s6, s1, 19
                  srli         t5, t5, 16
                  slli         t2, tp, 12
                  ori          a0, s5, 862
                  srli         s3, a1, 30
                  and          a0, t4, a5
                  addi         t0, s0, 598
                  slti         gp, a3, 1079
                  addi         t6, t1, 1102
                  sra          s8, ra, gp
                  sub          t0, a3, zero
                  sltu         ra, t2, a5
                  sltiu        s9, a6, 448
                  or           s0, s5, t0
                  sltiu        zero, s0, -671
                  slli         zero, s5, 11
                  xor          t5, a6, ra
                  srai         t6, s4, 26
                  srai         t6, t3, 6
                  sltiu        a5, t6, 1967
                  or           t1, t1, s5
                  xor          s11, a1, t3
                  auipc        t0, 663520
                  ori          tp, t1, -96
                  or           a1, a3, s4
                  nop
                  and          s0, s9, t3
                  xor          a5, s3, a7
                  sltu         s11, zero, t1
                  or           s7, t0, s2
                  add          s7, s7, a5
                  or           t6, s11, s8
                  addi         tp, s0, -390
                  xori         s6, tp, -139
                  slti         s2, t0, 1070
                  andi         ra, zero, 258
                  xori         zero, a7, -1451
                  slli         s0, a3, 7
                  sub          a4, s7, a0
                  add          s8, t3, s11
                  xor          s11, t2, t1
                  addi         s1, a4, -193
                  sll          ra, s1, t0
                  or           s4, t0, gp
                  sltiu        s0, s6, -1314
                  xori         s7, s11, -691
                  slt          t0, s9, a0
                  slli         tp, a0, 6
                  and          t4, tp, t5
                  add          s0, s11, gp
                  sra          a5, gp, t5
                  auipc        ra, 893340
                  sra          t6, t5, t0
                  slti         a0, s1, -300
                  add          a5, a5, s4
                  ori          sp, s8, -1765
                  ori          s7, s5, -615
                  add          s9, ra, t0
                  andi         t1, t6, -1859
                  slli         t1, s7, 5
                  sltu         s5, s8, s6
                  sll          s10, t0, a4
                  add          t1, s7, a0
                  xori         t5, a4, -485
                  add          t1, s3, s2
                  and          t0, s11, a7
                  srl          s4, t2, s10
                  andi         a0, a1, 1328
                  slt          a0, t4, s9
                  add          a6, s3, s1
                  sub          s5, ra, tp
                  sub          s11, s7, s8
                  srai         tp, s5, 1
                  add          zero, t5, a4
                  auipc        s9, 710600
                  slti         a0, t4, -965
                  add          t5, s2, s10
                  nop
                  srl          s3, tp, t1
                  slti         gp, a4, 931
                  xori         s2, ra, 1690
                  nop
                  slli         s8, s0, 14
                  and          s2, a3, t3
                  add          s3, t0, t2
                  sltiu        s11, ra, 2023
                  xori         t0, t0, 1009
                  slt          s7, s11, s7
                  xor          a1, a4, t1
                  lui          s0, 82856
                  slli         t0, a4, 8
                  ori          ra, t3, 723
                  add          s4, gp, s11
                  andi         t5, s2, 549
                  srl          s8, s0, s4
                  sltu         a3, a1, s4
                  sltiu        gp, s4, 640
                  and          a1, s9, zero
                  nop
                  slti         t4, a2, 1455
                  addi         s0, a6, -134
                  sltu         s0, t6, t5
                  xori         t0, a6, -947
                  and          s2, s5, s6
                  sra          s7, s3, a1
                  slti         a0, s1, 134
                  sltu         t0, a3, a5
                  andi         s1, a1, 618
                  sltiu        t2, t4, -1151
                  andi         t5, s0, 1818
                  xori         gp, a5, -712
                  srai         t2, a3, 28
                  sltiu        t6, a5, -679
                  and          a5, ra, s7
                  srai         t2, a3, 10
                  addi         t4, a7, -1711
                  lui          s10, 957267
                  sltiu        gp, s11, 1018
                  sltu         t1, ra, s1
                  xor          gp, t2, s8
                  srli         tp, a6, 31
                  slti         s10, t2, 85
                  or           t0, a4, s11
                  srl          ra, s6, s10
                  lui          t0, 739404
                  sra          a5, zero, t0
                  ori          s10, sp, -354
                  add          sp, s10, a0
                  srli         tp, t4, 2
                  srl          s1, s7, a7
                  sra          s5, s8, a1
                  nop
                  srli         a3, gp, 0
                  add          a3, s10, s0
                  slti         s11, s11, 1154
                  addi         ra, a5, 148
                  slt          t4, s1, s10
                  auipc        ra, 685190
                  or           s7, t5, s11
                  sltiu        t6, s2, -1937
                  slti         a5, s1, 609
                  slti         t1, a4, 1356
                  ori          tp, a4, 1278
                  nop
                  nop
                  or           s0, s2, s3
                  and          s9, t4, t3
                  ori          a5, a2, 807
                  auipc        s5, 945550
                  ori          t0, s4, 945
                  srai         a4, s7, 21
                  nop
                  nop
                  sll          s9, s2, t6
                  sub          t5, t1, s0
                  ori          s7, a0, -1899
                  sub          sp, gp, s5
                  slt          s10, a2, a5
                  lui          a0, 161796
                  add          s4, a3, s10
                  or           s6, a7, s2
                  slli         s1, s8, 18
                  slli         s0, t6, 3
                  srli         t5, a3, 12
                  and          s11, s9, zero
                  slli         s8, s3, 2
                  srl          s5, s11, a1
                  lui          gp, 79463
                  srl          ra, a6, t2
                  andi         s4, s8, 923
                  xori         s7, zero, 15
                  slti         s7, t4, 614
                  addi         a1, s9, -1386
                  slt          s9, t2, zero
                  addi         s4, s11, -875
                  sll          t6, t6, sp
                  slti         a6, a1, 441
                  auipc        s6, 931162
                  sra          t4, a7, s7
                  sub          t0, a2, gp
                  nop
                  srl          a1, sp, t2
                  sll          a3, t0, a3
                  lui          s6, 212918
                  andi         a3, s6, -425
                  sll          s6, s11, s0
                  sltu         a4, t0, s2
                  xor          t5, s7, s2
                  srli         a5, t4, 0
                  sra          s6, s0, t3
                  nop
                  xor          a3, s3, s9
                  slt          a4, zero, a6
                  auipc        sp, 512421
                  sltu         s9, t0, a4
                  lui          a1, 755597
                  xori         ra, s11, -753
                  sll          s11, a2, gp
                  lui          a6, 785986
                  slti         sp, ra, -567
                  xori         s8, t6, 1769
                  srl          s3, t4, s9
                  xor          a4, t3, a6
                  slli         t6, s7, 23
                  auipc        s5, 443395
                  and          ra, zero, zero
                  ori          t0, zero, -1540
                  xor          s4, t4, s8
                  srl          s11, t2, s6
                  and          s4, a7, t5
                  sltiu        zero, sp, -396
                  slli         s10, a7, 25
                  slt          t1, tp, sp
                  sltu         t2, a3, a2
                  sltiu        a6, a0, -1728
                  addi         t1, s3, 897
                  add          t5, t0, s6
                  xor          t5, a6, s10
                  srl          t1, t2, zero
                  slt          s0, t6, s9
                  slli         a1, s1, 29
                  or           s1, t0, s7
                  srai         s0, t1, 8
                  andi         gp, sp, 2010
                  srli         s8, a7, 22
                  sll          t0, t1, a1
                  lui          t2, 573488
                  slli         t5, s11, 0
                  or           s5, s9, tp
                  srli         t5, t0, 8
                  add          t4, s2, a5
                  srl          tp, t1, sp
                  srai         a1, t1, 2
                  srli         s11, s6, 19
                  srai         t0, s3, 1
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           t0, 0x0
                  li           s7, 0x0
                  li           a5, 0xa8f73bb3
                  li           a3, 0x17003a55
                  li           s11, 0xb16da9bb
                  li           sp, 0x31c0f124
                  li           s8, 0xb1216217
                  li           s5, 0x0
                  li           a6, 0x80000000
                  sub          s11, s8, s8
                  add          t0, s5, a5
                  lui          a3, 729147
                  addi         t0, a3, -1849
                  addi         s11, s5, 1797
                  nop
                  add          s11, s7, s4
                  lui          s5, 199467
                  add          a6, a6, a6
                  lui          s8, 276609
                  nop
                  addi         a3, sp, 1445
                  auipc        a5, 948184
                  sub          s7, s5, s7
                  add          s11, a5, s8
                  auipc        sp, 805137
                  lui          a3, 676904
                  nop
                  lui          s5, 823379
                  sub          s7, a3, s11
                  sub          a5, a5, a3
                  auipc        a5, 191810
                  add          s4, s8, a5
                  addi         s5, s4, 1733
                  addi         s8, a3, -925
                  auipc        a6, 755583
                  nop
                  addi         sp, sp, -601
                  lui          sp, 736409
                  nop #end riscv_int_numeric_corner_stream_8
                  xori         t0, a4, 1527
                  or           s6, a5, t3
                  nop
                  srl          t0, s8, t2
                  or           s3, s6, a4
                  sra          t6, a6, s3
                  slli         s5, s6, 28
                  slt          t0, t5, sp
                  or           a5, a4, a7
                  slli         s10, t4, 13
                  sub          t1, a6, t3
                  andi         gp, tp, 1930
                  sltiu        t2, s5, 689
                  slt          t6, s10, s2
                  slt          s3, s7, ra
                  add          sp, a4, tp
                  addi         t6, a2, -340
                  sltu         s0, zero, a7
                  addi         a4, a3, 1221
                  addi         a4, t5, 1276
                  sra          a6, a5, s5
                  sll          t2, t2, s8
                  lui          s2, 214072
                  or           t5, a7, t6
                  and          s9, ra, t1
                  ori          s0, a0, 344
                  srai         s0, sp, 5
                  sll          t5, sp, s1
                  srl          tp, s0, a7
                  srl          s4, s11, t6
                  slti         zero, t3, -1384
                  add          a5, t4, t6
                  sll          s5, t1, a4
                  auipc        gp, 99147
                  slt          t6, s7, t0
                  add          s4, a2, tp
                  srli         a0, s1, 2
                  slti         s4, t3, 1526
                  sub          a6, t6, a6
                  lui          t5, 868015
                  andi         s4, t4, 1736
                  sll          s9, s4, s9
                  srli         zero, s10, 19
                  slt          t1, s11, s2
                  sltu         s3, s2, s4
                  sra          t6, t6, s4
                  srl          tp, t1, s1
                  srl          s2, s0, t0
                  srai         s4, t3, 4
                  srai         s11, a0, 13
                  srl          s5, a5, s10
                  slt          s0, s4, s0
                  and          a0, a4, s1
                  andi         s1, s1, 910
                  slli         t0, s4, 1
                  and          a3, s10, s8
                  sltu         a3, s0, s6
                  lui          a5, 552233
                  auipc        s6, 564222
                  xor          s1, a2, a6
                  srl          t4, t0, s6
                  add          a0, t0, s5
                  sll          zero, t1, t6
                  lui          s4, 883401
                  sra          s6, s0, s10
                  add          t2, gp, a7
                  sltu         t1, a4, t4
                  xori         a3, s8, 1035
                  srai         a5, a1, 21
                  sltu         sp, a5, a2
                  sltu         a0, a0, a5
                  slti         a3, a0, 81
                  sra          t4, a0, s7
                  sra          ra, t3, a3
                  or           ra, t0, gp
                  sub          a0, t3, t6
                  xori         s2, a3, -1908
                  slti         sp, s8, -1777
                  nop
                  andi         s10, ra, -489
                  sltiu        s10, a6, -5
                  auipc        a4, 529851
                  sub          a5, s5, s7
                  sltiu        ra, a2, 484
                  xor          s1, s0, zero
                  ori          s0, a0, 1456
                  sltu         s1, a1, a1
                  xori         s3, tp, 820
                  andi         tp, s6, 1238
                  auipc        t0, 336129
                  nop
                  sub          zero, zero, s4
                  and          s3, a6, s6
                  slti         t4, s9, 564
                  add          sp, gp, s7
                  slti         a6, a6, -1036
                  slli         s6, a0, 8
                  slli         a6, tp, 30
                  srai         t1, s4, 15
                  slt          s1, t4, s2
                  addi         a5, t4, 1525
                  srai         a3, s6, 26
                  sll          s1, s2, s11
                  nop
                  lui          ra, 582659
                  slli         t2, t3, 13
                  addi         a3, t0, -593
                  slli         s4, t3, 31
                  auipc        s1, 649790
                  srai         a3, s2, 25
                  andi         a0, s1, -1420
                  srai         t5, a6, 1
                  auipc        a4, 992453
                  slt          a1, s0, s4
                  sltu         s0, a7, s0
                  srli         s2, ra, 2
                  auipc        ra, 224347
                  srli         sp, s5, 30
                  sub          t5, s11, s1
                  sltu         s7, s7, t1
                  sra          s9, s10, a0
                  xor          s0, t2, s1
                  sltu         a6, s9, t4
                  srl          a4, s3, t3
                  add          ra, a7, a2
                  nop
                  xori         a4, t2, 1365
                  slti         s2, ra, 1577
                  addi         t6, gp, -1794
                  srai         a3, s5, 24
                  auipc        tp, 239917
                  srl          ra, s6, t3
                  andi         s8, t4, -390
                  slti         a1, zero, 1602
                  srai         gp, a3, 17
                  slli         a3, s5, 19
                  or           s11, s4, s7
                  sll          a4, t4, a1
                  srli         s8, gp, 4
                  nop
                  lui          s10, 247433
                  slti         gp, a4, -892
                  xor          s2, a0, s7
                  xor          a4, s10, t1
                  auipc        s8, 231357
                  lui          s1, 21926
                  slt          s9, s0, t4
                  sll          a1, a0, s3
                  and          t5, a2, a6
                  sll          t2, s3, ra
                  ori          a3, s2, -215
                  xor          tp, sp, a6
                  nop
                  andi         t4, t6, 1939
                  srli         s6, a1, 13
                  addi         t4, ra, 1210
                  srl          t1, s4, gp
                  srai         s5, ra, 6
                  and          sp, a7, t0
                  srai         s5, t3, 20
                  slli         t4, sp, 13
                  or           a3, a7, s4
                  and          s3, s4, t1
                  sub          s11, s10, s6
                  xori         s8, a5, 1178
                  auipc        a6, 260615
                  srli         s9, s2, 28
                  add          s5, s1, a7
                  srl          a5, s5, sp
                  auipc        t1, 743746
                  sub          s1, t4, ra
                  andi         t4, s9, -1988
                  auipc        sp, 199958
                  andi         a5, s11, -362
                  sra          t6, t0, t4
                  auipc        t1, 523200
                  srl          a3, t5, tp
                  auipc        a6, 403924
                  addi         s5, t5, -601
                  nop
                  slli         a5, s11, 12
                  ori          ra, s4, -55
                  and          s2, zero, s10
                  slti         s11, t5, -1328
                  auipc        a0, 365395
                  auipc        s2, 488750
                  srai         a4, s7, 5
                  andi         t5, a0, 1573
                  sltiu        gp, s10, -355
                  slli         s5, a5, 12
                  addi         s11, t6, 710
                  sll          s3, t6, a7
                  srl          t0, s10, zero
                  andi         s7, a6, -736
                  lui          s10, 593511
                  slti         t5, s6, 135
                  slli         a6, t6, 30
                  srl          tp, t3, t1
                  slt          zero, a4, a3
                  slt          tp, t3, a6
                  sltiu        s6, s9, -559
                  srai         t0, s9, 12
                  slli         s7, s11, 1
                  sra          s3, t5, s10
                  addi         s1, t1, 628
                  xor          ra, t0, a4
                  andi         s10, s5, -17
                  or           s6, a5, t6
                  slli         s5, s8, 8
                  lui          t1, 910852
                  addi         s0, t6, -20
                  andi         s8, gp, 921
                  sltu         a0, s10, s2
                  slti         zero, s8, -1686
                  sub          s7, a3, a3
                  lui          zero, 273990
                  and          s9, t6, a7
                  slt          t1, a6, s8
                  addi         t1, tp, -1242
                  addi         a4, s7, -1642
                  sra          tp, s1, s8
                  srli         t0, s9, 8
                  sll          t1, s0, s5
                  lui          s10, 343752
                  sra          zero, s5, s10
                  sltu         a4, s1, s3
                  srai         s10, a0, 6
                  srli         a1, s11, 4
                  slli         gp, t6, 27
                  sltiu        s5, gp, 1426
                  auipc        s1, 508445
                  addi         s3, s9, 490
                  sltu         a5, s0, a4
                  add          t1, s8, s2
                  nop
                  sub          a4, a7, s10
                  sra          sp, s2, s3
                  sltu         s8, a2, gp
                  xor          a0, s10, t4
                  srli         a5, gp, 9
                  srl          s3, a5, s3
                  andi         a4, s9, -324
                  slli         gp, t1, 31
                  sub          a5, s3, ra
                  srai         a4, t3, 20
                  auipc        t6, 218178
                  sra          tp, t6, s4
                  sltiu        gp, a6, -1653
                  sub          t1, t1, t1
                  srai         t0, s4, 9
                  andi         s10, a6, 34
                  addi         s7, sp, -115
                  sltiu        gp, s0, 682
                  srai         s8, ra, 16
                  lui          a3, 291794
                  slli         t5, t6, 25
                  ori          s9, a3, -936
                  sll          t6, zero, a3
                  srl          t0, sp, t1
                  auipc        t5, 894134
                  sltiu        gp, a0, -1995
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           a4, 0x80000000
                  li           s10, 0x0
                  li           t0, 0x0
                  li           s3, 0x80000000
                  li           t1, 0xf289f05a
                  li           s2, 0xffffffff
                  li           a6, 0x0
                  li           s4, 0x80000000
                  li           gp, 0x80000000
                  nop
                  add          t0, gp, t6
                  nop
                  lui          t0, 482531
                  sub          a6, t6, t6
                  sub          t1, gp, s10
                  sub          a4, gp, a4
                  sub          gp, t0, s3
                  nop
                  lui          s3, 801318
                  add          s3, s10, t6
                  nop
                  lui          a4, 227141
                  auipc        t6, 543717
                  nop #end riscv_int_numeric_corner_stream_15
                  add          gp, tp, a5
                  and          s7, s7, a4
                  nop
                  ori          s9, t5, -1193
                  xor          s7, tp, tp
                  nop
                  lui          s8, 12398
                  slt          t1, s1, s6
                  sub          a3, t3, t6
                  srl          s7, t1, ra
                  and          s3, s3, ra
                  srl          a4, s8, a6
                  slt          a3, s5, a4
                  srl          s9, a6, s5
                  slli         t4, s2, 11
                  nop
                  srli         s8, sp, 5
                  xor          s8, a7, a4
                  srai         s7, t6, 3
                  ori          s8, s1, -270
                  nop
                  ori          s7, a2, 1410
                  sll          s0, t1, s5
                  auipc        t2, 918981
                  slli         s10, t1, 31
                  slt          a4, sp, s6
                  slli         s7, s8, 30
                  nop
                  ori          zero, s3, 1184
                  nop
                  sra          t6, a5, tp
                  sltiu        sp, s9, -1342
                  nop
                  slt          a4, s0, a3
                  lui          a6, 1007024
                  slti         s0, t5, 1041
                  slli         gp, a1, 14
                  sltiu        ra, sp, 107
                  xor          s8, a0, tp
                  sra          ra, sp, s1
                  sll          s7, a7, t2
                  srai         s2, s3, 6
                  lui          s8, 361422
                  xor          sp, s1, s7
                  auipc        tp, 488038
                  sub          t0, t5, s10
                  slli         s5, a4, 26
                  sub          s9, s11, t6
                  sra          gp, a3, t0
                  sra          gp, a5, s2
                  andi         s11, s6, -421
                  ori          s2, s8, -70
                  sltiu        gp, s9, 24
                  addi         gp, t1, 1379
                  add          gp, sp, s2
                  sra          s5, t3, zero
                  auipc        s6, 680423
                  ori          a4, zero, 581
                  sub          s5, s11, t1
                  xori         s8, s2, 1686
                  auipc        t4, 384701
                  lui          sp, 143087
                  srl          a6, s4, a4
                  slt          s3, s1, s8
                  sltiu        s9, tp, -666
                  sltu         s4, s2, ra
                  slt          s2, s5, a6
                  ori          gp, a4, -1788
                  sll          t5, s11, s4
                  srl          s10, s2, tp
                  slti         ra, t6, 532
                  sltiu        t2, gp, -1455
                  and          t0, s11, a7
                  or           s8, ra, t2
                  and          s8, s11, s4
                  sra          sp, a3, t6
                  srli         s4, s2, 5
                  xori         s6, t0, 1901
                  add          sp, a1, t2
                  sra          s1, a1, tp
                  andi         tp, a5, 1804
                  lui          s3, 427940
                  or           a5, s4, a1
                  slt          s4, s7, a2
                  sub          s8, s1, a1
                  ori          ra, s3, 282
                  ori          s7, t6, -1648
                  srai         s3, a5, 9
                  andi         a1, a6, 379
                  xori         t5, a2, -87
                  xori         t0, tp, 1252
                  srl          s5, s1, tp
                  srl          zero, s9, s3
                  lui          gp, 623359
                  andi         s7, t2, -85
                  slli         gp, t2, 6
                  sra          t1, s8, s10
                  sll          t5, sp, a3
                  srli         s7, t2, 4
                  slt          t1, ra, a6
                  ori          s8, s6, -1794
                  auipc        s3, 437891
                  lui          t0, 276800
                  slli         t1, a6, 27
                  slti         s7, a7, 1729
                  sub          t4, s10, s9
                  ori          s3, ra, 1822
                  xori         t2, tp, -1219
                  sll          a6, sp, s9
                  srai         ra, gp, 10
                  lui          s5, 509215
                  slti         gp, sp, 1518
                  sll          s10, tp, s5
                  sub          t6, ra, s5
                  auipc        s5, 838605
                  slt          tp, t6, zero
                  slti         a1, t6, 380
                  or           a6, s8, s10
                  srli         s9, a3, 11
                  sll          t2, t0, a4
                  xor          s11, tp, sp
                  ori          s2, a5, -1641
                  or           t0, s0, s7
                  or           s7, s1, s4
                  xori         s7, t4, -142
                  andi         s4, s2, 1007
                  addi         s7, gp, -1151
                  slli         t5, a5, 30
                  nop
                  ori          s8, s7, -883
                  sltiu        s3, s4, 1600
                  sll          ra, a7, a0
                  ori          s8, a6, 133
                  or           s5, sp, s7
                  xori         s1, t6, -1162
                  srl          a3, zero, t2
                  add          s9, a4, a2
                  sll          t5, gp, s8
                  xor          tp, a5, s5
                  sll          zero, t0, gp
                  srai         s0, s3, 29
                  srli         t5, s7, 9
                  and          tp, a2, a2
                  lui          sp, 405791
                  ori          a6, sp, -1716
                  add          s10, a2, sp
                  xori         s1, s1, 1956
                  ori          a4, s2, 587
                  auipc        s10, 852725
                  srai         a4, sp, 17
                  sll          t0, a7, s11
                  ori          ra, s8, 1098
                  ori          a3, t1, -1869
                  srl          t2, a2, t0
                  sub          tp, s11, a5
                  slti         t1, s11, 942
                  and          s10, s3, t1
                  srai         a0, gp, 0
                  sra          s1, a6, a4
                  slli         s2, s10, 4
                  or           tp, s6, s7
                  sltiu        t4, ra, 1286
                  srli         s5, gp, 26
                  slti         s4, a1, -204
                  sra          a0, t0, sp
                  slti         s2, a3, 1020
                  nop
                  auipc        tp, 953184
                  lui          s8, 748831
                  xori         zero, t2, -1565
                  auipc        s10, 49368
                  andi         s5, a6, -593
                  sltu         zero, t0, s0
                  or           a3, a3, t6
                  nop
                  or           t4, s7, s0
                  or           s0, s4, s10
                  add          a5, a1, a0
                  andi         zero, s9, -1651
                  slti         s2, zero, 1125
                  andi         a6, s3, -1299
                  xor          a6, t3, s3
                  andi         t6, s1, 1030
                  slti         a4, t0, 2006
                  slt          s3, s8, a5
                  lui          t6, 545936
                  srl          s0, zero, zero
                  sltiu        a3, s9, -2026
                  lui          s10, 290862
                  srli         a0, s0, 7
                  and          sp, a0, s7
                  slt          s5, t3, a0
                  ori          s9, s1, 1742
                  xor          a3, a2, s1
                  srl          t4, zero, s7
                  addi         t1, a6, -276
                  sub          s4, ra, t4
                  srai         s3, a2, 12
                  srai         t1, gp, 23
                  xori         sp, s2, 109
                  srai         t1, s3, 8
                  slt          s7, s7, s1
                  srai         a6, s7, 21
                  addi         s9, a3, 652
                  addi         s4, s3, 1613
                  slt          a5, s10, s0
                  and          s6, t0, s5
                  add          a0, s4, t5
                  andi         t6, sp, -1932
                  or           s5, a5, a7
                  srl          s5, s7, s11
                  nop
                  srai         t0, a5, 31
                  xor          s10, s11, t5
                  sltu         s4, s0, t2
                  or           s1, t5, gp
                  slt          s6, sp, s11
                  xor          a3, ra, gp
                  ori          a0, a5, 772
                  ori          s5, t5, 1315
                  srai         s4, ra, 7
                  srl          a5, zero, a4
                  xori         gp, s11, 1676
                  lui          a1, 406966
                  slli         s8, t3, 19
                  nop
                  slli         t6, s2, 28
                  slti         s10, tp, 1094
                  xori         s9, t1, -886
                  sub          a4, a4, a4
                  sltiu        t4, s10, 931
                  srli         zero, a2, 24
                  slt          s3, t1, s8
                  and          t4, s5, s6
                  srai         s4, t2, 17
                  andi         a0, s10, 1879
                  sra          t4, s10, a1
                  sltiu        s7, s1, 843
                  andi         s9, gp, 1042
                  and          s6, ra, a7
                  andi         s6, ra, 1365
                  add          t2, gp, s5
                  slli         a4, s0, 21
                  sltiu        t5, s1, -1989
                  slt          a6, gp, s10
                  xori         s6, sp, 1399
                  addi         s1, s10, -1554
                  lui          t1, 574344
                  sltiu        a1, s3, -339
                  nop
                  xor          s1, t4, s5
                  ori          a4, a6, -486
                  ori          t0, t3, -672
                  sra          t4, t6, a4
                  andi         gp, a5, 786
                  slli         s5, s3, 17
                  auipc        s3, 618916
                  and          t0, gp, s8
                  or           t6, sp, a2
                  srai         gp, a0, 10
                  xor          s6, s10, a1
                  xori         s2, s8, -171
                  and          sp, a5, s2
                  srai         s9, t2, 20
                  sltu         gp, s8, a7
                  slli         t6, a6, 10
                  andi         a6, s5, 517
                  andi         a0, a0, -1486
                  sub          s1, s11, a3
                  srai         s1, s1, 16
                  srl          s4, gp, s10
                  or           zero, t6, a5
                  sltu         s0, gp, a6
                  sltiu        s4, ra, -203
                  srai         s4, t4, 4
                  ori          s6, t0, 1982
                  xor          t1, a2, gp
                  and          s11, s3, a5
                  sltiu        t0, a3, 285
                  sub          a3, a1, s3
                  sltu         s3, t3, s0
                  sll          t0, gp, gp
                  srl          t0, s10, s4
                  add          sp, s1, a5
                  xori         s8, s0, 143
                  auipc        s8, 620097
                  sltu         a0, s10, a5
                  sll          gp, t6, a0
                  lui          a5, 952024
                  srli         sp, s10, 16
                  srai         s4, s3, 9
                  and          t1, t4, t0
                  slt          s6, t2, a7
                  xori         s0, s10, 447
                  srli         t4, a4, 30
                  add          t0, a6, a1
                  sub          s8, s4, s8
                  sltu         gp, s0, t1
                  sltiu        s11, ra, 874
                  slli         t1, t4, 17
                  or           t4, t5, t6
                  add          s9, a6, s1
                  add          a5, s10, s10
                  addi         t2, ra, -1549
                  srl          s1, a0, t5
                  srai         a0, s8, 9
                  lui          s4, 709858
                  slli         sp, t0, 28
                  slti         t2, t6, 157
                  srai         s2, a4, 21
                  srai         t6, t1, 18
                  nop
                  xor          ra, s10, s9
                  xori         s11, a1, -1843
                  slli         t5, s8, 3
                  slli         a0, t0, 9
                  addi         a3, t6, -785
                  addi         a0, t3, -1402
                  sltiu        s4, s9, 511
                  add          zero, gp, s3
                  slti         s10, a5, -1094
                  andi         a5, a2, -719
                  add          a3, s7, a4
                  xori         t5, t0, -1720
                  slli         ra, s1, 7
                  sra          s9, t0, s10
                  srai         t5, a6, 12
                  lui          s6, 970850
                  add          s8, a1, s6
                  slli         zero, s9, 11
                  sll          t6, s5, s2
                  sltiu        t4, t2, 1910
                  slli         s6, s7, 25
                  sltiu        s10, t5, -514
                  andi         s7, t3, -1392
                  srai         t6, s1, 12
                  slli         a3, a5, 4
                  sra          tp, a3, t3
                  sltiu        t2, a3, -182
                  srl          a0, ra, s4
                  auipc        s1, 522419
                  srai         a0, t0, 20
                  slti         s0, gp, 1393
                  xori         sp, zero, 522
                  addi         a5, s7, -933
                  or           a4, t1, s3
                  and          s1, t0, t3
                  sra          t2, a4, zero
                  nop
                  addi         a6, tp, 331
                  sltiu        s3, a4, -934
                  add          t6, t2, sp
                  slti         a5, s4, 468
                  or           a6, s2, a2
                  sltu         s1, a5, a1
                  addi         s4, sp, 89
                  nop
                  andi         a5, t4, 380
                  slti         a6, s4, 1713
                  lui          s9, 228065
                  srl          s0, s7, a3
                  sltiu        s8, s6, 1110
                  sll          s4, t6, a7
                  slli         s8, a4, 16
                  srai         a6, t2, 23
                  sub          s1, s8, s5
                  srai         gp, gp, 6
                  srli         a0, a4, 25
                  sub          s8, ra, s11
                  slt          a5, t1, s3
                  nop
                  xor          s9, s6, s6
                  slti         ra, t5, 1405
                  slt          s11, s4, a3
                  lui          a3, 305073
                  xor          tp, a5, s4
                  slli         s4, t1, 21
                  sll          s7, a3, a7
                  and          s5, t4, s6
                  srli         a4, sp, 4
                  sub          s9, a7, s2
                  sll          s6, s7, zero
                  slt          zero, ra, sp
                  nop
                  srl          t0, t0, s2
                  sra          s4, s10, a0
                  sltu         s4, s0, s0
                  ori          a1, s5, -92
                  slli         t0, t2, 1
                  add          a6, s4, s8
                  sra          s2, t5, s2
                  xori         s7, s10, -883
                  ori          ra, t0, -692
                  sltiu        s0, t1, 161
                  srli         s6, a3, 1
                  srli         s1, s6, 15
                  nop
                  srai         s11, s7, 19
                  srai         a6, s3, 1
                  xor          t4, t5, t2
                  sll          a4, a6, a3
                  auipc        s1, 953999
                  xori         gp, s8, 558
                  srl          t1, s5, s7
                  and          s8, t0, s0
                  add          zero, s11, s5
                  auipc        s9, 342717
                  sltu         s7, s11, a3
                  sra          s11, s6, t5
                  xor          gp, s3, t1
                  or           s9, t5, t4
                  sltiu        a0, sp, -816
                  srli         a1, a2, 5
                  auipc        s9, 850675
                  nop
                  xori         a5, s4, -1345
                  sltu         a4, s8, tp
                  srli         s0, a3, 1
                  sll          s1, t2, s1
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           t1, 0x0
                  li           sp, 0xad6ff6c4
                  li           s7, 0x0
                  li           s1, 0x5f6cc681
                  li           tp, 0x0
                  li           s10, 0x7d53f3a9
                  li           a0, 0xffffffff
                  li           s6, 0x0
                  li           s11, 0xffffffff
                  auipc        t1, 971280
                  add          s11, tp, s11
                  sub          tp, ra, s10
                  add          sp, s1, ra
                  nop
                  add          s6, a0, sp
                  addi         ra, s11, 593
                  nop
                  lui          s6, 229063
                  nop
                  addi         tp, s7, 1254
                  lui          ra, 605172
                  auipc        s11, 881218
                  add          s7, s6, s1
                  add          ra, t1, s6
                  nop
                  auipc        s10, 268594
                  lui          tp, 48536
                  addi         s1, tp, 635
                  lui          s10, 670813
                  sub          s1, s7, s6
                  add          t1, s7, ra
                  lui          s10, 23371
                  nop
                  addi         s7, s7, 1946
                  nop
                  nop #end riscv_int_numeric_corner_stream_1
                  ori          a3, t0, -1929
                  auipc        tp, 737881
                  xori         t0, t0, 220
                  lui          t2, 508673
                  slli         s0, t2, 1
                  sltu         sp, s3, zero
                  nop
                  addi         a3, t2, -92
                  sltu         s0, s10, sp
                  srai         s0, s9, 31
                  sll          s8, s5, tp
                  lui          t1, 357326
                  or           a3, t5, t3
                  and          s2, a6, s10
                  slt          zero, s10, t2
                  slt          a3, t1, t5
                  sub          t5, t1, tp
                  lui          t0, 295453
                  xor          s2, sp, s7
                  sltiu        t5, t5, -432
                  add          t1, s4, s1
                  srai         zero, s7, 1
                  slt          zero, a7, tp
                  srl          s11, t2, a4
                  srli         ra, t4, 25
                  lui          s11, 528053
                  addi         a4, t3, 922
                  slt          s0, t4, s0
                  andi         sp, t0, 1401
                  lui          s8, 919375
                  andi         s6, a2, -1842
                  add          s5, s8, s5
                  slt          s6, a1, a7
                  and          s3, ra, t5
                  srai         s7, sp, 13
                  addi         s11, a2, -2046
                  addi         s8, a5, -1547
                  nop
                  or           t6, s11, t2
                  nop
                  sub          a4, t3, t4
                  auipc        a6, 1003498
                  xor          ra, t2, s2
                  slti         t5, t2, 1236
                  slt          tp, a3, a0
                  auipc        t4, 447021
                  xori         ra, s10, -520
                  slt          sp, a2, s10
                  or           a6, s7, gp
                  sra          sp, s5, a1
                  srli         a4, t3, 4
                  andi         s5, a7, 931
                  ori          a4, s4, -305
                  sltu         s2, a5, tp
                  sll          t4, a4, a2
                  addi         s0, t3, 299
                  sll          t2, s8, zero
                  sll          a4, sp, s2
                  lui          s4, 885380
                  and          t1, gp, s0
                  sra          zero, tp, s3
                  slli         zero, t1, 11
                  slti         a5, t6, -789
                  slli         t1, tp, 11
                  srl          tp, t4, s2
                  xori         s1, ra, -1762
                  xori         s2, t4, -1275
                  slli         s8, a3, 11
                  sra          t0, a2, tp
                  ori          s3, s9, -118
                  and          t5, t1, t0
                  add          a0, s11, a2
                  srl          t2, s9, t2
                  sltiu        t2, s10, -1112
                  slti         a5, a2, 1258
                  slt          t4, t6, t6
                  sltiu        gp, a0, -984
                  andi         a4, s5, 970
                  srai         a6, s2, 21
                  add          s1, t4, s1
                  xor          a5, s4, a6
                  srai         s9, a2, 19
                  addi         a1, t5, 1657
                  slli         a3, t0, 12
                  sll          ra, s4, s8
                  srli         s5, a4, 3
                  sltu         s3, t0, s6
                  andi         a3, t6, -519
                  sra          s2, s6, a5
                  sltiu        a1, ra, -544
                  auipc        a5, 308018
                  srli         s2, s10, 12
                  srai         s9, a5, 17
                  srl          sp, tp, s3
                  sltu         zero, s6, t3
                  srai         t4, gp, 9
                  sltu         s5, s8, s5
                  ori          t5, s7, 583
                  add          s8, a1, t3
                  sra          t1, tp, a3
                  sra          s5, a3, a4
                  slti         s1, a3, 619
                  andi         t5, s11, 1785
                  ori          t0, s7, -574
                  sub          t2, s3, a7
                  slti         s2, s7, 9
                  or           a3, t5, t5
                  slti         s9, s5, 1002
                  and          zero, s8, t5
                  slt          s3, a4, s5
                  xori         t5, a3, 1896
                  xor          a1, s2, a5
                  srli         tp, a7, 19
                  ori          t4, ra, 1944
                  addi         a0, s3, -1655
                  nop
                  slti         s4, s10, 1585
                  slti         a3, t4, 1169
                  and          a5, t2, ra
                  sltu         t5, s5, a7
                  xor          tp, s1, s7
                  lui          s2, 288808
                  slli         s8, t1, 28
                  andi         gp, s2, -1477
                  srl          a4, a3, s7
                  sll          t2, zero, s9
                  xor          s7, ra, t1
                  ori          s2, a2, 1026
                  sltu         t5, a3, a3
                  andi         a4, s10, -1998
                  sll          s11, gp, t2
                  srl          s8, gp, t0
                  slt          s8, a5, s10
                  srli         a0, s11, 6
                  sltu         tp, ra, t0
                  lui          a3, 628167
                  xori         s9, t2, 1894
                  sub          sp, ra, s11
                  sra          a3, tp, s5
                  slli         a4, s4, 30
                  nop
                  or           s11, s8, s8
                  lui          s4, 569326
                  sub          s11, a3, s9
                  sltu         a6, a0, s2
                  srl          a1, s7, t0
                  xor          s0, t6, s8
                  or           s8, s8, s5
                  srai         sp, s2, 28
                  sltu         s6, s4, a7
                  sltiu        s2, t6, -1560
                  sll          s8, t2, zero
                  sll          a3, s3, a5
                  auipc        sp, 170724
                  slti         gp, a5, -320
                  and          sp, s0, sp
                  slli         s10, t5, 29
                  sltu         a0, s0, ra
                  sll          a3, a1, gp
                  slti         s6, a3, -1024
                  andi         s11, t5, 894
                  slli         ra, s2, 28
                  xor          t2, t6, gp
                  nop
                  nop
                  lui          s4, 714287
                  slt          zero, s2, a6
                  andi         t0, s8, -1382
                  srai         s0, s6, 14
                  slti         s7, t4, -139
                  add          tp, t3, t3
                  andi         s11, s11, -329
                  sra          s1, a0, a5
                  nop
                  srai         ra, s9, 9
                  slt          s8, a1, a0
                  nop
                  srli         a6, s1, 7
                  nop
                  xor          s6, a5, a5
                  sltiu        a5, a5, -598
                  andi         s8, s6, -1320
                  lui          s5, 59910
                  sub          a5, t6, s2
                  auipc        a5, 742566
                  ori          t0, a3, 1408
                  slli         s2, s9, 27
                  auipc        a3, 356849
                  lui          s6, 51881
                  or           s10, ra, s7
                  srl          s2, s6, s10
                  andi         s5, a7, 1603
                  xor          s10, ra, a4
                  add          a1, s7, a2
                  xori         a0, t4, 623
                  slti         zero, t3, -605
                  ori          s2, s11, -501
                  add          s0, a4, s5
                  slti         t5, s10, -853
                  slt          a1, s4, s0
                  add          s8, t0, ra
                  add          a4, gp, t3
                  ori          s6, zero, 1972
                  auipc        s10, 1012056
                  and          s8, s2, gp
                  sub          s2, tp, s7
                  ori          a1, s6, -300
                  sub          a1, t0, a0
                  add          a6, s10, tp
                  sub          s2, zero, gp
                  slt          t5, s6, s11
                  xor          s9, t4, t1
                  slli         a1, s10, 13
                  srli         s9, s7, 2
                  srl          t0, s10, a2
                  srli         s8, tp, 10
                  sll          s2, s11, s6
                  sltu         t5, t1, t1
                  sll          s7, t0, s5
                  srl          s1, zero, ra
                  sll          t6, t0, zero
                  auipc        s3, 583875
                  sll          s9, a6, a5
                  andi         s10, a7, 1867
                  slli         s9, a4, 18
                  auipc        t1, 54005
                  xor          a6, t3, sp
                  xor          t0, s5, t6
                  addi         t0, s10, -1705
                  ori          t2, s11, -2043
                  slt          s7, t3, s9
                  slt          s11, s4, s3
                  lui          t6, 470246
                  ori          a4, s1, -76
                  addi         t4, s11, 392
                  sll          s4, s8, sp
                  slli         s10, s5, 10
                  xori         s9, a3, 668
                  lui          s11, 414605
                  sub          a3, sp, t2
                  ori          a3, t3, -366
                  slli         a4, a0, 1
                  sll          t1, t0, tp
                  srai         gp, s1, 19
                  sll          s4, t4, a0
                  slti         s9, s10, 1706
                  sltu         t1, t0, a4
                  xor          s11, s4, sp
                  add          s10, a6, s2
                  sltiu        s2, s6, -194
                  sra          a1, ra, tp
                  add          s2, s3, t5
                  srl          a3, s6, s9
                  ori          s9, a7, 773
                  slt          s2, a0, s5
                  xor          a6, a3, s3
                  sra          ra, s8, t3
                  slt          sp, s2, s4
                  slti         t4, s9, -1716
                  sra          a0, s11, ra
                  srli         a3, s11, 31
                  srl          s2, t2, ra
                  add          a6, t0, t0
                  slti         a3, zero, -1348
                  sll          t0, a2, sp
                  or           t4, s10, a0
                  or           s1, a1, s0
                  and          s8, s5, s10
                  ori          t6, t6, -770
                  addi         zero, s1, -579
                  sltiu        s11, s6, -684
                  xor          gp, s3, a4
                  xor          t6, t6, t0
                  xori         s10, t2, 182
                  slt          tp, t4, a3
                  nop
                  xori         s1, a4, -663
                  xori         s3, t4, 1777
                  add          s3, a7, s7
                  slli         a5, a6, 20
                  xor          t5, a0, s3
                  sub          s9, s9, tp
                  xori         t4, s7, -748
                  sltiu        t4, s7, 826
                  slt          t0, a1, a6
                  sll          s7, s3, s4
                  add          s4, gp, a6
                  srl          s2, t2, s10
                  auipc        t1, 393302
                  lui          t6, 808283
                  srli         ra, s7, 25
                  slti         gp, a6, -374
                  xor          s2, ra, a4
                  sltiu        sp, a5, 1200
                  slt          a4, s11, t4
                  slt          a6, s7, sp
                  slli         s2, sp, 5
                  slt          t2, a3, s4
                  sll          s11, t0, a3
                  auipc        s4, 752442
                  or           a0, gp, s7
                  slti         a5, s6, 1540
                  slt          s6, s3, t6
                  xor          t1, a1, s6
                  srli         t5, t1, 21
                  add          t6, a5, s11
                  sll          s6, a3, t5
                  add          s4, a5, a2
                  srai         ra, a7, 1
                  nop
                  sra          s10, a0, s5
                  srl          t6, s3, ra
                  andi         a4, t4, -33
                  srli         sp, s0, 30
                  lui          a6, 776596
                  or           t5, s3, s11
                  slti         t6, s7, -1014
                  sltu         tp, sp, zero
                  or           s10, t0, tp
                  lui          s5, 520188
                  andi         s4, s1, 1390
                  andi         a6, gp, -738
                  srli         ra, s6, 11
                  slli         s10, t0, 8
                  addi         s3, a3, -288
                  slti         t4, s10, 1648
                  or           s7, sp, a1
                  and          a1, t5, s1
                  srai         s9, a7, 27
                  lui          s6, 727601
                  slli         a6, t6, 16
                  auipc        t5, 37576
                  slli         sp, s1, 9
                  srli         t1, t0, 22
                  slli         s7, s8, 9
                  sltu         t6, t5, s2
                  sra          a4, s4, a2
                  or           ra, s2, s2
                  xor          sp, t1, s4
                  and          t1, s7, a1
                  slt          s3, t0, gp
                  or           s4, t6, s0
                  slli         s9, ra, 7
                  sll          s3, s1, t0
                  auipc        a4, 673268
                  xor          ra, a0, s6
                  add          s9, t5, s11
                  sub          a5, t5, t1
                  nop
                  slli         s9, s10, 7
                  slti         sp, a0, -1839
                  sltu         a4, a4, s10
                  slli         tp, gp, 30
                  and          s9, gp, s8
                  addi         s6, t0, 356
                  srai         a6, s6, 29
                  srl          s4, a4, s3
                  slli         s9, s6, 1
                  ori          s5, s5, -1115
                  sltu         s2, a0, a6
                  lui          t6, 7170
                  add          tp, t5, s10
                  sub          t1, s2, s4
                  slli         s3, s2, 18
                  auipc        s1, 716240
                  xori         s7, s6, -49
                  or           s3, s9, s5
                  xori         tp, zero, -81
                  sltiu        ra, t0, -1861
                  xori         s5, s1, 1062
                  lui          s1, 310703
                  sltiu        t1, tp, -172
                  andi         ra, s6, -1691
                  slti         sp, a7, 1090
                  sltu         t0, gp, s1
                  srl          s2, s3, s3
                  add          a1, s10, s8
                  andi         t2, a5, 953
                  xor          s8, a0, s11
                  sll          s11, s0, s10
                  srl          s11, s2, s3
                  sltiu        s2, gp, -1528
                  andi         sp, t5, 1963
                  sub          t2, a5, s11
                  xor          t0, a7, s8
                  sra          s3, a2, a7
                  andi         a5, zero, -897
                  andi         s7, a4, 814
                  slli         s5, sp, 29
                  slti         a1, a7, -1473
                  sltu         t4, s4, s1
                  xori         t4, a4, 1754
                  xori         s2, s8, 1163
                  srai         a6, a2, 31
                  srai         t0, t3, 0
                  or           ra, s5, s5
                  sra          s6, s2, a6
                  xori         s3, t2, 400
                  slt          gp, s8, s4
                  and          s8, sp, a6
                  sltu         zero, s11, s8
                  srai         t5, s2, 26
                  srli         s9, a4, 16
                  slt          s5, s0, s6
                  and          s2, t6, s4
                  nop
                  slt          a1, t0, t5
                  sra          sp, sp, a1
                  sll          t0, a2, t2
                  add          s2, t0, a1
                  sra          s1, ra, gp
                  slti         t2, a5, 353
                  slt          s1, s8, sp
                  andi         s6, s0, 1142
                  srai         s10, t6, 23
                  sll          t5, a4, gp
                  slt          a6, s8, s2
                  srl          tp, s5, tp
                  xor          ra, s5, s1
                  srai         s10, s5, 8
                  or           t5, t3, s7
                  sra          t1, t5, ra
                  lui          t5, 386801
                  srl          a3, t3, tp
                  sra          s10, a7, s4
                  addi         s2, t2, 1339
                  ori          s8, t2, -666
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           gp, 0xffffffff
                  li           a0, 0x36734b6d
                  li           s3, 0x80000000
                  li           s8, 0xffffffff
                  li           a5, 0x0
                  li           sp, 0xd148e7e5
                  li           t5, 0x80000000
                  li           a1, 0x4206d25d
                  li           a6, 0x0
                  addi         s7, sp, 1040
                  nop
                  add          a1, s8, a6
                  lui          sp, 771434
                  auipc        s7, 132327
                  add          a0, t5, a5
                  nop
                  lui          sp, 990183
                  lui          s3, 239461
                  addi         a1, s8, 260
                  add          t5, sp, gp
                  nop
                  lui          a6, 767989
                  sub          s3, a6, a5
                  auipc        sp, 485233
                  sub          gp, s7, a1
                  sub          s8, a5, a1
                  sub          a6, a5, s7
                  auipc        gp, 828035
                  nop #end riscv_int_numeric_corner_stream_2
                  andi         ra, t0, -1093
                  or           gp, gp, s3
                  andi         t0, t4, 902
                  srai         s5, a6, 23
                  srl          sp, t6, t2
                  sll          s0, gp, s11
                  slt          s8, ra, s10
                  slti         gp, ra, -1030
                  slt          s6, gp, a1
                  andi         a0, t0, 230
                  xori         a5, t0, 1693
                  srai         t2, zero, 7
                  andi         s5, a1, -1078
                  auipc        a6, 443400
                  srli         t1, t2, 1
                  sub          a5, ra, a1
                  addi         s3, a5, 968
                  sra          t4, t3, a2
                  ori          s9, tp, 1408
                  xori         s4, a6, 1522
                  auipc        t2, 35267
                  ori          s0, a3, 156
                  andi         s7, a1, 755
                  xori         s10, t1, 607
                  sltu         a5, s3, s10
                  slli         a3, s10, 6
                  sltu         t1, gp, s9
                  sra          t0, s1, s0
                  nop
                  addi         t5, s2, -223
                  xori         s8, s2, 1445
                  or           t1, t5, s2
                  nop
                  andi         s1, s2, -256
                  and          t5, s10, s3
                  nop
                  sltu         t5, t0, t1
                  lui          s7, 366309
                  srl          s1, s3, t3
                  slli         s0, zero, 12
                  ori          a3, a1, -850
                  slti         t1, s6, -1072
                  nop
                  ori          t6, t1, 1956
                  slli         tp, s11, 16
                  xori         s11, a6, -1331
                  srl          s1, ra, a3
                  sra          t6, tp, s9
                  auipc        a0, 312153
                  ori          s9, ra, 1904
                  sra          s2, s9, s2
                  andi         s8, s4, 219
                  srai         a0, s10, 23
                  slti         t2, s9, 1815
                  ori          s3, gp, -1062
                  and          s0, t6, a0
                  andi         a3, sp, 1940
                  srl          a4, s4, s0
                  sltiu        s0, s10, 203
                  sltiu        s8, s9, -382
                  sltiu        s9, a3, 1614
                  slli         t0, s2, 16
                  xor          a5, ra, s3
                  sltiu        t0, s4, -1055
                  srli         s11, a2, 23
                  or           a5, a7, s10
                  slli         s1, t1, 1
                  addi         s7, s10, 1302
                  sub          s3, s10, t2
                  ori          ra, a1, -1864
                  nop
                  add          t1, s11, tp
                  xor          gp, a5, s5
                  add          s11, s7, ra
                  nop
                  or           t6, t3, s7
                  xori         a6, s5, -1023
                  sll          t0, s2, t0
                  srl          gp, t2, s4
                  srli         t6, a2, 12
                  sll          zero, a4, s6
                  addi         s7, s9, 453
                  sra          s9, a4, a7
                  or           a1, s11, ra
                  slli         s4, t2, 27
                  slti         s2, s3, -1793
                  srl          t4, a1, t3
                  srli         s5, t0, 15
                  or           s6, s3, t5
                  slt          gp, a0, a6
                  auipc        t2, 69310
                  sltiu        s0, s7, 586
                  sll          ra, a7, a1
                  or           t5, t6, t6
                  auipc        s0, 342491
                  addi         sp, t4, -1611
                  addi         t6, a3, -640
                  srl          a6, s11, t2
                  srli         t4, s5, 28
                  sub          t0, t6, t1
                  auipc        t1, 509387
                  addi         a0, a7, 718
                  sll          sp, tp, s10
                  auipc        a0, 517072
                  sra          s8, s5, gp
                  sltu         s6, s0, t6
                  sltu         t0, t6, t0
                  xor          a5, zero, t2
                  and          t5, s8, t5
                  sra          sp, t5, tp
                  slti         t0, s6, -1188
                  slli         t4, a4, 23
                  addi         a3, a6, -1920
                  nop
                  addi         a6, a3, 617
                  andi         s9, a1, 2007
                  slt          s10, s4, t4
                  lui          a5, 856705
                  add          s3, a6, s4
                  sra          s4, t3, s10
                  nop
                  slli         t0, a2, 2
                  addi         s4, sp, 1942
                  sll          s3, t0, t1
                  lui          a0, 120218
                  sltu         s2, a3, gp
                  srli         s8, t3, 13
                  slt          sp, s11, t6
                  auipc        t5, 581333
                  sra          t5, s2, t5
                  sra          t2, a0, s1
                  srli         s0, a5, 15
                  srli         gp, tp, 3
                  add          a0, tp, a7
                  srli         t1, s3, 21
                  xori         a4, s9, -823
                  andi         a1, t2, -1470
                  sltu         t5, t2, a0
                  srl          t1, s1, s9
                  sra          s8, s3, s1
                  srli         s2, s0, 19
                  slti         a1, a3, -854
                  slt          s6, s10, t2
                  sra          t4, s1, s0
                  srl          a4, s8, s11
                  addi         s8, s4, 904
                  and          a5, a3, a0
                  lui          a4, 231457
                  addi         t1, s2, 448
                  addi         s11, s10, 683
                  sra          s11, s3, a0
                  srl          t4, a6, s5
                  sltiu        t0, s3, 1447
                  srai         t1, s2, 0
                  and          ra, a1, s2
                  andi         zero, t6, 1687
                  add          s9, a4, s0
                  ori          a1, s10, -1649
                  lui          s1, 630392
                  slt          t5, sp, s9
                  or           t6, t4, s0
                  or           a5, s2, s4
                  and          t2, gp, s7
                  slti         t2, t0, 1821
                  sll          s7, s6, a5
                  auipc        s8, 900650
                  andi         s7, s2, 879
                  or           t2, a6, s8
                  xor          a5, t2, sp
                  sltiu        gp, s6, -1133
                  slli         s6, a5, 7
                  sltiu        a1, s2, 1306
                  srl          zero, tp, sp
                  ori          tp, s9, 1979
                  ori          s11, a5, 285
                  slt          t1, a4, a0
                  ori          ra, s9, -1711
                  xori         t4, s3, -821
                  sltiu        s2, s7, 313
                  sub          a5, t2, t6
                  lui          a1, 209475
                  srai         ra, s10, 13
                  slli         gp, s1, 7
                  andi         ra, s0, 449
                  slli         a0, a5, 31
                  sll          s3, tp, a1
                  andi         t1, a7, -1014
                  xor          s3, tp, s3
                  ori          s11, a2, -1059
                  add          s5, t3, s3
                  sltu         a6, a5, a7
                  add          sp, sp, s2
                  sltiu        a0, s8, -835
                  sub          t4, s0, s6
                  sra          t5, s9, s2
                  sltiu        s0, a1, 1601
                  addi         s0, s0, -972
                  addi         s6, s10, 788
                  xori         s11, s11, -1660
                  slli         a1, t2, 24
                  slli         s5, a1, 18
                  andi         s6, s11, 1809
                  add          t1, s10, s9
                  srli         s3, a3, 18
                  sltiu        s2, s3, 263
                  sub          s10, a1, a7
                  sub          ra, s3, s8
                  or           s6, t0, s5
                  srai         s10, a2, 10
                  sltiu        a4, a4, -140
                  srl          sp, a1, a4
                  srai         a1, a2, 15
                  slli         a1, a1, 1
                  xori         gp, s3, 133
                  nop
                  slti         s8, s6, -601
                  ori          s0, sp, 1154
                  xori         sp, sp, 714
                  or           t1, t3, a6
                  slt          t4, s1, a6
                  nop
                  slt          s4, s7, s11
                  ori          tp, a7, -1417
                  xor          sp, t0, sp
                  or           s9, s1, s0
                  xori         t2, t3, -1870
                  sra          ra, gp, a0
                  and          a1, a4, sp
                  sltu         a3, t0, t3
                  or           s8, s9, t3
                  srl          s5, a2, t0
                  slli         a1, t4, 22
                  sll          a6, t4, ra
                  xor          s1, s1, t2
                  srli         s8, t6, 9
                  slti         a6, t4, -1630
                  sll          s5, s6, tp
                  and          s5, a4, s4
                  slli         s8, a6, 24
                  auipc        s3, 979523
                  sltiu        t4, s6, 1919
                  xor          t1, sp, a3
                  xori         s4, gp, -1071
                  auipc        s11, 663214
                  or           s1, s2, s11
                  srai         t6, t3, 0
                  srai         zero, s9, 19
                  lui          s2, 115398
                  sll          ra, a3, t0
                  srai         t6, s11, 6
                  nop
                  srl          tp, t1, a1
                  sltiu        s3, gp, 1717
                  andi         s2, t5, -442
                  sll          sp, ra, s10
                  slt          ra, a3, a5
                  auipc        t0, 597543
                  srli         a5, t2, 29
                  and          s9, t4, t5
                  and          a3, s5, s6
                  and          a4, t3, a2
                  sub          s0, s1, t3
                  sltu         zero, sp, t6
                  sra          tp, t1, s9
                  sltu         s8, a3, t5
                  sra          s2, gp, t0
                  andi         s3, s7, -1247
                  and          a0, a0, gp
                  and          s7, tp, s2
                  andi         t4, a4, 102
                  sltiu        tp, sp, -1601
                  xori         a4, t4, 504
                  addi         t0, s6, -711
                  sub          s7, ra, s3
                  ori          s2, s1, 485
                  nop
                  srli         t4, t4, 1
                  srli         s8, a7, 22
                  and          s4, t3, s0
                  sltiu        s6, t1, -367
                  xor          a5, a1, s3
                  srl          zero, t0, s3
                  lui          t1, 669025
                  sra          gp, s2, t2
                  lui          s1, 967352
                  sltiu        a6, s10, 738
                  sub          s5, s1, a2
                  sll          s3, s6, a4
                  sll          t4, s2, t5
                  xor          t4, s9, a0
                  srai         t2, a1, 13
                  slli         s5, tp, 17
                  addi         t4, t2, -887
                  nop
                  xori         a3, s4, -1534
                  addi         ra, a1, 1382
                  nop
                  slt          s6, t4, t2
                  sub          s0, s5, t4
                  xori         t4, zero, 1739
                  auipc        a1, 706289
                  auipc        sp, 819839
                  sltu         a4, t5, s9
                  andi         a1, t4, -1716
                  srai         t5, t3, 3
                  slti         t4, t4, -707
                  addi         s3, s3, 1465
                  xori         a3, s2, 913
                  sll          s7, s11, t5
                  lui          a3, 590245
                  andi         a6, s2, 60
                  add          s1, s8, a7
                  srli         ra, s5, 4
                  ori          s4, t3, 858
                  slt          tp, tp, sp
                  xor          s9, a4, a3
                  nop
                  ori          s0, s10, 1441
                  srl          s4, sp, s6
                  srli         a5, s6, 31
                  auipc        zero, 215884
                  sltu         t2, t3, s5
                  sltu         s10, zero, t4
                  sltu         ra, s6, t6
                  sra          ra, tp, s10
                  nop
                  srai         zero, ra, 14
                  auipc        s5, 159482
                  sub          s8, s8, a6
                  and          s9, a5, a6
                  sltiu        t6, t1, 1732
                  sltiu        a5, s0, 756
                  sra          a6, s4, ra
                  addi         ra, s3, 1292
                  slli         s2, s3, 16
                  ori          s1, s3, -1016
                  sra          a0, a3, s1
                  srl          s10, gp, t6
                  srl          s11, s10, s9
                  ori          a5, t6, 754
                  addi         s10, t2, 1365
                  nop
                  srli         a4, ra, 31
                  sltiu        s8, s5, -1829
                  slt          a3, t4, s7
                  sltiu        a6, a3, -148
                  add          s9, zero, t3
                  nop
                  sll          s1, ra, ra
                  sltiu        s0, a0, -232
                  auipc        a0, 453117
                  sra          t4, a6, t2
                  sltiu        s11, t2, 760
                  auipc        s2, 1033150
                  sltiu        s4, t5, -1942
                  srli         ra, t1, 20
                  srai         t4, s9, 29
                  sub          sp, t0, t5
                  slti         t6, zero, -900
                  slti         a6, t4, -1891
                  ori          s4, sp, 190
                  sra          t4, zero, t1
                  srai         s9, a6, 0
                  lui          a5, 106306
                  andi         s2, a5, 809
                  sltu         s3, a4, zero
                  sll          a0, s6, ra
                  nop
                  slti         t4, s2, -1493
                  xor          tp, gp, s2
                  or           sp, t0, sp
                  slti         s4, s7, 955
                  add          a6, a0, s7
                  sra          t1, s5, s11
                  slli         t5, a6, 20
                  sub          s5, s10, t6
                  sltiu        s2, a4, -1124
                  sub          t0, t1, zero
                  srl          a5, a6, t1
                  lui          s4, 676074
                  slti         s10, t6, -868
                  slti         s7, s10, -1230
                  slti         s6, t3, 1811
                  slti         ra, a4, -1847
                  sra          t0, t4, t1
                  slli         a5, a7, 18
                  or           s6, t2, t2
                  srl          s7, t5, a2
                  add          s9, a6, s11
                  xori         zero, sp, -1919
                  xori         s9, s4, 519
                  sltiu        s3, a0, 1789
                  slti         a5, t1, -1522
                  sltu         s1, a2, tp
                  li           s0, 0xc2dfffa6 #start riscv_int_numeric_corner_stream_5
                  li           s6, 0x0
                  li           t0, 0x0
                  li           a6, 0x0
                  li           t5, 0x6079187c
                  li           t4, 0x80000000
                  li           s11, 0x80000000
                  li           s2, 0xffffffff
                  li           s9, 0x0
                  li           s10, 0x0
                  sub          s0, s11, s6
                  nop
                  auipc        s0, 684198
                  lui          s2, 651639
                  sub          a6, s6, s11
                  add          s0, t5, s9
                  auipc        s6, 425116
                  addi         t0, s0, -1320
                  lui          s6, 1047231
                  sub          a6, s9, s2
                  add          t4, t4, a6
                  addi         s6, s10, 1690
                  nop
                  sub          a6, s0, s9
                  auipc        s11, 666394 #end riscv_int_numeric_corner_stream_5
                  xori         sp, s10, 30
                  addi         a6, s4, 1741
                  add          a4, s4, s4
                  slti         s6, s1, 323
                  lui          s10, 264333
                  slt          ra, s6, s4
                  ori          a4, tp, -383
                  sltiu        s3, gp, -1617
                  lui          a3, 153610
                  auipc        a4, 914211
                  addi         t5, ra, -1090
                  sub          a5, t3, a3
                  add          s3, s6, s3
                  srl          t5, t2, s11
                  nop
                  addi         zero, zero, -38
                  add          a4, s1, ra
                  srli         t2, t1, 11
                  nop
                  srai         s1, a5, 25
                  ori          s3, s4, 896
                  sll          a0, a0, s2
                  or           s5, a4, s11
                  add          s10, s1, a6
                  addi         tp, s7, -791
                  addi         t5, a4, 17
                  addi         s6, t6, 683
                  andi         t5, s10, 1576
                  sltu         a1, gp, a1
                  sra          s8, s10, gp
                  xor          s8, t2, s1
                  sll          t1, t5, t1
                  srli         s8, t0, 15
                  lui          t2, 166067
                  sltiu        a1, s8, 1186
                  andi         s3, s9, -1249
                  xor          s2, t0, a5
                  sub          a0, gp, zero
                  sltiu        gp, s4, 1548
                  sltiu        s6, a4, -568
                  xori         t1, t6, -2020
                  lui          zero, 495259
                  sll          s9, t5, s10
                  xori         a3, s11, 96
                  andi         s11, a2, -1043
                  slti         a5, a7, 721
                  srli         s8, a6, 7
                  auipc        s10, 449151
                  slt          s6, tp, t3
                  sltu         s8, tp, a5
                  addi         s3, a7, -988
                  slli         t6, s1, 22
                  sll          t4, sp, s2
                  slt          s10, t1, t5
                  slti         a5, a7, 635
                  nop
                  addi         t1, zero, 933
                  and          s9, a1, sp
                  sltiu        gp, t3, -1243
                  or           zero, a2, s2
                  xor          s2, a1, t2
                  srl          s9, t3, ra
                  srl          s10, a6, s1
                  srai         ra, a5, 10
                  xor          s7, s3, s0
                  nop
                  srai         a1, s3, 17
                  sltu         a0, s3, s10
                  slli         s0, t2, 13
                  sub          t5, a7, s8
                  lui          s2, 464289
                  xor          s4, a5, s2
                  sub          a6, t6, a1
                  add          s2, sp, s7
                  auipc        s8, 753739
                  slt          s6, a5, t0
                  xori         t1, s2, -564
                  slti         a4, a7, -1557
                  sll          a5, ra, t6
                  andi         t4, a7, 1144
                  slt          s0, t0, zero
                  or           s0, t4, zero
                  xor          t2, s5, t6
                  andi         t6, s2, -957
                  slti         a6, tp, -1358
                  lui          s6, 975669
                  sltiu        s6, s11, 355
                  xori         s6, t3, 1814
                  srli         a5, s10, 14
                  sll          s9, t5, s8
                  lui          s4, 944887
                  nop
                  lui          s11, 190519
                  andi         t2, a2, -1973
                  sll          s7, a1, a0
                  sll          s3, t6, ra
                  lui          s8, 532387
                  sltu         t0, t4, a3
                  slt          sp, a6, s3
                  slti         s4, t1, 2019
                  sub          t1, t3, a7
                  srli         t2, a7, 31
                  srli         s8, s10, 27
                  slli         gp, a0, 10
                  sll          t0, ra, a3
                  xori         s7, a7, 767
                  xor          t4, s7, sp
                  add          s0, t0, s5
                  srai         s11, s11, 25
                  sltiu        a5, a3, -43
                  add          s7, t5, s1
                  add          s7, tp, a7
                  xori         t5, s4, -54
                  auipc        t5, 119406
                  srl          s9, a0, s5
                  lui          s11, 204185
                  sra          sp, s6, s6
                  srli         s0, s2, 11
                  nop
                  and          s8, t6, zero
                  addi         s8, s7, 943
                  srl          tp, t0, s7
                  andi         t1, a5, -1346
                  sra          t5, zero, t3
                  slt          a3, s6, t6
                  srai         s5, gp, 1
                  and          a0, a1, s8
                  slli         a0, a0, 4
                  xor          tp, t6, zero
                  sll          a1, a3, s0
                  and          t0, a1, t2
                  and          a1, a7, s7
                  sra          s5, s5, t2
                  sub          zero, t6, s0
                  sltu         t0, sp, s5
                  slt          a1, t5, tp
                  add          t4, a1, a4
                  sltiu        a5, a1, -1295
                  sltiu        s5, s9, -1583
                  auipc        a4, 923427
                  srli         t4, a7, 17
                  srli         s4, a2, 6
                  andi         a6, a6, 1685
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           s5, 0x0
                  li           s1, 0xdbe21c8d
                  li           s10, 0x0
                  li           a5, 0xffffffff
                  li           a0, 0x0
                  li           sp, 0x80000000
                  li           s7, 0x80000000
                  li           t0, 0x0
                  li           s8, 0xeec4a193
                  sub          tp, s1, s7
                  auipc        tp, 378550
                  addi         tp, a0, -1950
                  nop
                  nop
                  sub          s5, s1, sp
                  auipc        a0, 735182
                  auipc        s5, 1038994
                  sub          sp, tp, s1
                  nop
                  sub          tp, tp, s7
                  auipc        s8, 641268
                  auipc        t0, 434482
                  auipc        t0, 133138
                  nop
                  nop
                  sub          tp, a5, s10
                  auipc        s5, 912455
                  sub          tp, s1, a5
                  sub          t0, tp, s8
                  lui          a5, 728675
                  auipc        s8, 986740
                  lui          s1, 609238
                  sub          s5, s5, a0
                  lui          s10, 160109
                  add          t0, a0, sp
                  addi         a0, s7, 1603
                  auipc        sp, 531616 #end riscv_int_numeric_corner_stream_3
                  slti         sp, s5, -1098
                  sll          gp, s5, t6
                  ori          s3, zero, 1884
                  slt          a0, s11, sp
                  nop
                  slt          s9, t1, a4
                  andi         t1, tp, 309
                  lui          s4, 381711
                  xor          tp, ra, zero
                  ori          s6, s10, 1635
                  sll          s7, t3, a2
                  xori         s11, s5, 1638
                  lui          s5, 181958
                  sltu         t6, t1, t1
                  srai         zero, s2, 12
                  srl          gp, t4, t1
                  slli         ra, sp, 19
                  addi         tp, ra, 1389
                  add          s0, a1, s9
                  sra          a6, s1, t4
                  srl          t5, a5, t5
                  or           s6, a5, s2
                  sra          t2, t4, a0
                  lui          t5, 346441
                  srai         a5, s6, 19
                  sltiu        t0, a2, -1963
                  add          s1, s9, t2
                  add          s0, t2, zero
                  slli         s2, s1, 14
                  sltu         t0, a3, zero
                  slti         t4, zero, -1052
                  srl          gp, s2, s2
                  ori          a0, sp, -1140
                  auipc        a6, 316848
                  sll          s11, sp, t0
                  sll          tp, s1, zero
                  xori         a1, a6, 1556
                  sltiu        t1, s1, -1931
                  ori          t6, t0, 1961
                  srl          ra, t5, s11
                  xor          zero, t6, s10
                  sll          ra, s10, s9
                  sltiu        a4, s10, 441
                  ori          gp, t4, 355
                  slti         a0, t3, 161
                  xor          a1, a4, ra
                  or           s9, t1, s11
                  srli         a1, s0, 7
                  srli         s11, t2, 12
                  and          sp, s11, a1
                  sltiu        a4, s6, -1197
                  sltu         s4, s10, s3
                  xori         t2, tp, -1156
                  xori         t5, s6, 517
                  slli         a5, a5, 15
                  srai         tp, t3, 16
                  sra          a3, t0, s10
                  slli         s4, sp, 27
                  auipc        a4, 712965
                  and          t2, a0, s8
                  auipc        s9, 523667
                  or           t5, s10, s5
                  xor          t1, t5, a4
                  slli         s11, s7, 24
                  and          t5, t0, s7
                  slli         s0, a7, 20
                  slli         s2, sp, 23
                  andi         s10, sp, 212
                  srai         a1, ra, 29
                  srli         s5, tp, 1
                  sll          gp, zero, a3
                  xor          s6, t3, a5
                  srli         sp, t6, 24
                  andi         sp, tp, -1645
                  srl          s0, ra, tp
                  sltu         t5, t3, s8
                  srli         s7, a7, 0
                  xor          zero, tp, t4
                  addi         s3, s9, 1410
                  xori         sp, t4, 1701
                  andi         gp, gp, 808
                  sltiu        s7, sp, 1758
                  lui          t2, 3530
                  srli         a0, t5, 0
                  slli         s11, t3, 20
                  xor          s5, ra, gp
                  sra          sp, tp, a1
                  srai         t1, t1, 26
                  xor          t5, tp, s11
                  xor          s4, t3, s10
                  sub          zero, t4, s0
                  auipc        s7, 42369
                  xor          s7, t4, s10
                  lui          s4, 831453
                  sltiu        t1, t6, 233
                  andi         t6, s10, -2029
                  srli         s9, s1, 0
                  sra          s7, s2, t4
                  and          gp, s1, a0
                  sll          zero, s3, sp
                  xor          s2, s9, a0
                  slti         t4, a2, -457
                  sltiu        s11, a6, 513
                  sll          s8, s8, a5
                  nop
                  addi         tp, s11, -1289
                  addi         a4, t5, -1087
                  andi         zero, a1, 672
                  srai         s2, s11, 25
                  add          s6, sp, s11
                  nop
                  srl          s6, t2, a2
                  slti         s6, ra, -1964
                  addi         s0, t5, 137
                  sltu         a3, t6, s2
                  sltu         a5, t4, s1
                  slt          s6, a0, a5
                  or           t2, t1, a3
                  slli         a0, a7, 30
                  lui          a4, 150208
                  srli         s5, a4, 26
                  srl          a5, t0, a2
                  ori          a1, s11, 1757
                  srai         s10, t6, 12
                  srli         ra, s10, 26
                  lui          t2, 975245
                  sll          a5, s2, t1
                  and          s3, t6, a4
                  slt          a6, zero, s0
                  lui          s4, 840227
                  nop
                  slti         s1, a6, 1924
                  srli         t5, gp, 1
                  lui          s8, 310188
                  xor          t0, a5, a5
                  addi         s5, tp, -849
                  slli         t2, s1, 13
                  srli         s2, s6, 29
                  add          a1, t0, t2
                  add          s10, s7, s11
                  sltu         t1, s11, a3
                  srl          a5, s6, s11
                  slli         a0, a5, 20
                  srli         a3, a4, 4
                  srl          s10, a6, a3
                  srl          s8, s7, t1
                  addi         s6, a6, 1121
                  nop
                  sll          gp, t5, zero
                  lui          s1, 597334
                  nop
                  lui          t6, 268032
                  srli         a0, a1, 21
                  sub          t1, zero, t0
                  slt          s7, s8, a7
                  sltu         s0, a6, s4
                  ori          s0, a1, -671
                  lui          a4, 730480
                  srl          s1, s10, s4
                  srl          zero, a4, s11
                  and          ra, s10, t0
                  xori         a6, s1, 828
                  ori          sp, s1, -425
                  ori          a0, t5, -1715
                  or           s2, sp, s3
                  sra          a1, a0, s2
                  srai         s8, t3, 9
                  sltiu        t2, s7, 1902
                  add          t1, t3, t3
                  nop
                  auipc        ra, 749639
                  auipc        a5, 299192
                  sltiu        t4, s4, 609
                  sll          a1, t6, a7
                  sll          t0, t0, a4
                  srli         s11, t3, 0
                  auipc        s8, 135498
                  auipc        s8, 449903
                  sltu         a5, s7, t6
                  auipc        a1, 726375
                  and          a3, a1, t4
                  srl          t2, s9, t1
                  auipc        a4, 848921
                  slt          t5, tp, s1
                  srl          t2, s2, a0
                  auipc        zero, 820227
                  andi         t5, a5, -205
                  sra          t1, a4, s8
                  andi         s6, t4, -2001
                  srai         s11, a4, 29
                  xor          a6, s1, a2
                  lui          a3, 206765
                  slti         s6, a7, -726
                  addi         s6, a6, -1773
                  or           s11, tp, s3
                  slt          gp, s10, t5
                  slt          a3, s7, s10
                  srl          t0, s9, s10
                  sll          a6, s9, t6
                  and          s8, sp, gp
                  nop
                  srl          a3, a0, s10
                  sltu         s7, t3, s0
                  slli         a1, t0, 25
                  sll          a4, t3, zero
                  add          t1, s6, s0
                  slti         t6, tp, -193
                  or           t2, s7, s5
                  sra          a1, zero, a5
                  sltiu        a3, ra, 196
                  sub          a0, t2, a3
                  and          a0, zero, s2
                  or           s9, a1, zero
                  slli         s8, s3, 8
                  and          s0, a7, a5
                  and          t5, s11, tp
                  auipc        s4, 746812
                  auipc        t5, 267091
                  sub          t2, s3, a2
                  add          ra, gp, s0
                  slt          t5, a1, tp
                  sra          a4, a0, s8
                  sltu         s11, tp, s5
                  sltu         a1, s8, s2
                  sltiu        s4, s3, -247
                  srl          a1, s2, a4
                  slli         s2, t0, 0
                  sub          s9, sp, t3
                  xori         t0, t5, 1980
                  lui          s11, 797791
                  auipc        sp, 1021839
                  ori          a0, s4, 393
                  add          s11, sp, s9
                  srl          s1, t1, s1
                  srl          s3, a4, s8
                  sltiu        s11, s6, 562
                  add          t1, a3, tp
                  srl          a0, s4, a6
                  slt          t4, t6, t2
                  sltiu        t5, tp, 525
                  sltu         s6, a2, t1
                  addi         s2, s4, -1296
                  ori          s9, tp, 6
                  srai         t6, a2, 5
                  andi         s5, s6, 541
                  nop
                  sltu         s4, a3, a4
                  sltiu        t5, s4, 98
                  add          s5, a3, s10
                  or           t1, gp, a2
                  or           s3, t2, a4
                  sra          s3, t1, a3
                  srai         s11, a7, 12
                  sub          s3, a1, a6
                  and          s2, a3, t3
                  srai         a4, s0, 22
                  and          t6, t5, tp
                  add          s10, a6, t2
                  slli         s6, s1, 11
                  sll          a0, a1, tp
                  nop
                  srli         t1, s4, 14
                  sltu         a0, t5, t6
                  slli         t2, s2, 9
                  or           s5, s0, a5
                  andi         s3, s10, -420
                  ori          t2, t1, -450
                  auipc        s2, 387717
                  or           s8, a5, t1
                  add          s7, a0, a1
                  lui          ra, 828613
                  and          s4, sp, a1
                  andi         s1, tp, -29
                  sll          sp, s6, s8
                  slli         s4, a0, 30
                  ori          a3, t6, -105
                  slt          a1, t4, s2
                  or           a5, ra, s11
                  andi         s0, s1, 180
                  sltiu        s4, t0, -948
                  add          t0, s8, tp
                  or           s8, s4, sp
                  xori         t2, a2, -1233
                  slli         s7, a5, 19
                  slli         a3, s1, 19
                  andi         s5, a1, 457
                  sll          t1, a4, a6
                  slt          ra, a1, t6
                  slli         tp, sp, 3
                  nop
                  sltiu        zero, tp, -1065
                  sra          a6, a5, a5
                  slti         gp, a2, -298
                  slt          s9, a4, a0
                  and          t4, s1, t1
                  srli         s7, t4, 15
                  xor          gp, a0, t4
                  auipc        s2, 533403
                  andi         a4, gp, 1233
                  slt          s0, a0, t1
                  sra          s1, a1, t0
                  or           a4, a4, a6
                  andi         gp, s11, -749
                  sltiu        a5, sp, -537
                  srai         s4, t4, 23
                  and          a0, t6, s7
                  ori          a3, s11, -429
                  and          s0, a3, a4
                  sltiu        t1, s6, -553
                  srli         s6, a7, 15
                  andi         s5, a2, 705
                  slti         zero, s5, -1594
                  addi         ra, t5, 960
                  nop
                  lui          gp, 865848
                  srli         t1, s0, 12
                  addi         t6, a7, -555
                  slli         s2, s3, 14
                  ori          zero, t4, -1420
                  auipc        t4, 369420
                  xori         s6, s4, 1948
                  sltiu        t6, ra, -1039
                  srli         s6, t3, 22
                  sub          s11, t4, s9
                  addi         a4, s5, 1432
                  slti         sp, s8, 95
                  srai         s10, zero, 12
                  srai         t1, a3, 12
                  sub          t1, s5, a0
                  nop
                  nop
                  srli         t5, s1, 26
                  addi         t1, t6, 819
                  srl          s9, tp, t0
                  xori         a3, a7, 1036
                  slti         gp, s5, -503
                  ori          gp, t0, -1416
                  add          ra, tp, s0
                  andi         t1, t0, -309
                  or           zero, a5, s10
                  slli         s7, t5, 20
                  sll          t2, t0, s5
                  slt          t1, a4, a4
                  srl          s11, s5, ra
                  andi         s4, zero, 1819
                  sltu         s9, s10, t4
                  addi         t2, s9, 245
                  or           s2, a7, t0
                  add          s1, s7, s4
                  addi         a5, a2, -1723
                  sltu         s6, s8, gp
                  lui          s9, 348582
                  lui          a0, 131417
                  ori          s10, a5, -314
                  add          s6, s9, s8
                  sltu         s9, t0, s4
                  srai         s8, s2, 12
                  nop
                  srl          s1, s8, a4
                  xor          t2, s7, sp
                  lui          ra, 601552
                  slli         s10, a3, 1
                  srli         a4, s9, 13
                  srli         s5, s11, 10
                  slti         t2, t6, 1258
                  lui          s0, 449787
                  sub          s7, a2, s9
                  sub          a4, gp, a2
                  sub          a4, a5, t4
                  xori         s8, t5, -1620
                  xori         t4, gp, 1060
                  sll          t1, s6, s5
                  slli         s9, s7, 22
                  slt          sp, a1, s5
                  slli         s7, a7, 7
                  or           t0, a0, a1
                  sltu         t4, gp, t5
                  lui          s8, 215005
                  slli         s10, s4, 27
                  srl          a3, a1, a0
                  xori         t1, tp, 1053
                  add          s4, t5, a6
                  srai         s2, s6, 17
                  srl          t2, a6, gp
                  sub          sp, tp, t5
                  andi         t1, t3, -1396
                  srl          s8, s11, zero
                  and          s2, a1, t2
                  slti         tp, a1, 267
                  srai         s0, s11, 21
                  addi         s3, tp, -163
                  sltu         a5, s6, a0
                  sll          a4, a7, s4
                  srl          s1, t3, s2
                  sll          s11, t3, a1
                  sltu         t6, gp, a7
                  nop
                  srli         a6, s11, 18
                  sub          a0, a2, s0
                  addi         s3, s9, 1464
                  addi         sp, a0, -1247
                  slt          t5, t1, s4
                  sll          s6, a2, zero
                  lui          a6, 45214
                  sll          a1, t6, s7
                  auipc        t1, 183142
                  srai         s2, t1, 12
                  xor          s6, s2, t6
                  sll          t5, s0, t3
                  sub          s0, t3, t2
                  sll          t5, a3, t6
                  add          t0, s1, t2
                  lui          s3, 511581
                  sltiu        gp, a1, 493
                  srl          a5, t1, s10
                  slt          s8, s4, t6
                  xori         s0, t2, -1889
                  srli         t2, zero, 12
                  lui          t5, 703494
                  sltu         s5, s4, t5
                  xor          s6, t2, t4
                  nop
                  xori         s7, t0, -1372
                  slt          ra, s0, s1
                  and          t6, a4, s9
                  lui          s8, 296564
                  slti         t0, ra, 259
                  slt          s3, s7, t4
                  sltiu        a1, s8, 1322
                  slli         a1, t4, 0
                  sltu         a5, zero, s11
                  or           s6, s5, zero
                  srl          t5, s8, s10
                  srl          t2, tp, a4
                  sll          sp, tp, s1
                  srl          a4, zero, a1
                  sltiu        s5, s6, -1604
                  and          t2, a0, gp
                  srai         gp, a3, 6
                  sltiu        a1, s5, 132
                  slt          a3, zero, a4
                  ori          t6, a1, 1255
                  srai         a4, a1, 9
                  sltu         s1, s3, ra
                  addi         s10, t1, 373
                  xor          a6, gp, a6
                  slt          s8, t0, s3
                  srl          s4, a7, a2
                  sll          s8, s4, a5
                  addi         t1, s7, 1673
                  srli         s7, sp, 4
                  sub          t2, a6, a5
                  add          s5, s3, t2
                  lui          s0, 675221
                  lui          a0, 371794
                  sub          t2, s7, a0
                  xor          a0, a1, sp
                  sub          t5, s2, a7
                  slti         t4, s8, 173
                  sub          gp, s8, a0
                  ori          a3, s2, 1547
                  srl          t6, t6, s3
                  xori         sp, s2, -656
                  srli         a6, zero, 19
                  and          a1, gp, s5
                  ori          s11, s5, -1240
                  ori          s7, t0, -1348
                  slli         s5, a4, 29
                  addi         s10, s8, -1187
                  nop
                  sra          t2, a3, s3
                  sub          ra, s9, s4
                  or           s0, s7, s0
                  ori          s5, s4, -591
                  sltiu        t2, ra, -1427
                  sub          zero, tp, t0
                  slli         a1, a7, 18
                  sra          a4, s1, a4
                  ori          a3, zero, -1158
                  sra          s2, a5, s6
                  srli         t1, t2, 25
                  srl          t4, s6, ra
                  ori          a3, a6, -1353
                  xori         a4, s2, -648
                  sra          a5, t0, s4
                  sll          t6, s7, a5
                  slli         s3, t2, 14
                  xor          s2, t6, t4
                  slti         s3, s4, 697
                  sll          a3, ra, a3
                  sra          s7, s6, zero
                  and          t0, a5, s1
                  or           a6, a6, s0
                  lui          t0, 439791
                  sra          s4, t6, s5
                  sltu         a4, a4, t0
                  lui          a0, 236582
                  or           s2, tp, t1
                  srli         gp, t6, 8
                  ori          s6, t0, 1910
                  andi         gp, ra, 1769
                  and          s3, s11, t6
                  addi         s7, s6, 436
                  xor          t0, zero, tp
                  xori         zero, a0, -1243
                  and          t2, s7, s1
                  auipc        s11, 711931
                  and          a5, sp, s6
                  sltiu        ra, s3, 1024
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s7, 0x16b71679
                  li           a3, 0x250bbe8c
                  li           ra, 0x80000000
                  li           s0, 0xffffffff
                  li           a5, 0xffffffff
                  li           a4, 0xffffffff
                  li           s4, 0x0
                  li           s2, 0x80000000
                  li           t5, 0x63efb468
                  sub          s4, a3, a4
                  lui          s2, 272043
                  nop
                  addi         a4, a3, 1119
                  addi         a5, ra, -1284
                  add          s2, a4, t5
                  auipc        s4, 484107
                  add          s4, s6, s4
                  add          s4, ra, a4
                  sub          s6, t5, a3
                  addi         s7, a5, 1502
                  add          a5, s6, s4
                  add          s0, a5, s2
                  add          s2, s0, s4
                  addi         ra, s6, 991
                  lui          s2, 698314
                  add          s7, s6, s7
                  nop
                  nop
                  lui          s0, 143105
                  nop #end riscv_int_numeric_corner_stream_14
                  and          s10, s1, t0
                  ori          ra, s8, -1068
                  add          s3, s1, a2
                  xor          s1, t4, t6
                  srl          a5, sp, s10
                  sll          t0, a6, a2
                  xor          t4, s11, t2
                  srli         s7, s7, 13
                  or           gp, t0, t1
                  nop
                  srl          a0, s8, t5
                  sra          tp, t1, s6
                  srli         s1, a6, 12
                  add          ra, a2, s7
                  srli         t6, gp, 16
                  and          s5, t3, s3
                  add          a6, tp, s1
                  srai         s6, t2, 7
                  sra          s11, s9, s2
                  sltu         tp, s4, t6
                  andi         zero, s9, 1562
                  sra          t0, s4, t3
                  add          sp, s3, ra
                  slt          t4, tp, s4
                  srl          s11, t3, sp
                  or           t2, t1, t3
                  sll          s11, t5, a1
                  sra          s10, a4, t4
                  sub          t4, s4, a1
                  srl          a1, s1, tp
                  slti         s5, s9, -735
                  auipc        t0, 14544
                  srli         a6, s9, 25
                  slli         ra, s3, 8
                  sltu         s7, s5, t6
                  sra          t6, t6, s8
                  and          tp, t1, a1
                  srl          t6, s3, t0
                  and          a4, a4, s5
                  sll          s5, s2, zero
                  srli         s9, a3, 8
                  addi         a0, a1, -1781
                  slli         s10, s11, 20
                  xor          s0, t3, s3
                  and          gp, t0, t3
                  add          s3, a2, a5
                  andi         t6, t6, 1890
                  srai         a4, s7, 26
                  or           s10, s5, s7
                  sltu         t2, s8, s6
                  slti         a4, t2, -900
                  andi         t4, a6, -1599
                  addi         s4, s7, 996
                  srl          gp, s1, t3
                  and          a4, a3, t5
                  xor          s6, zero, s4
                  slt          s1, a2, gp
                  slt          t6, gp, s11
                  or           zero, s11, t3
                  auipc        a4, 59539
                  add          a1, a0, s4
                  sll          s11, s11, zero
                  slti         s6, t1, 1538
                  or           s5, tp, zero
                  or           s7, a3, s5
                  add          a6, t6, a7
                  xor          sp, t2, s6
                  sra          sp, a7, t2
                  and          s9, s6, s0
                  sltu         s2, sp, a5
                  andi         s9, s6, 854
                  slti         a5, s11, 492
                  ori          t6, s8, -1863
                  sltiu        t6, a6, -364
                  andi         sp, t4, 433
                  srli         s3, t6, 28
                  srli         s9, a2, 11
                  slti         s1, s2, 1027
                  or           t4, t4, a0
                  slti         t2, gp, 536
                  sltu         t6, s9, a6
                  auipc        s2, 563489
                  sltu         s1, a1, zero
                  slti         gp, t5, 364
                  srli         zero, s2, 17
                  add          t0, s2, a5
                  slt          s4, ra, t2
                  add          a5, t4, t3
                  addi         s8, s8, -69
                  xori         zero, a1, -750
                  ori          sp, s7, 678
                  sltu         t2, a5, s5
                  andi         s4, a7, -618
                  sll          s9, s10, a4
                  sra          t6, s9, t4
                  ori          s3, s7, 494
                  sub          s6, s10, zero
                  lui          a6, 780152
                  xori         a1, s10, 716
                  lui          s1, 1011375
                  xori         s9, a3, -235
                  xor          s0, t2, s3
                  slli         sp, t3, 30
                  addi         t4, s6, 684
                  ori          a1, a2, 997
                  slt          s6, s0, sp
                  lui          t0, 358541
                  or           s5, t6, s8
                  and          s5, zero, a0
                  nop
                  sltiu        s0, s8, 1684
                  srli         sp, s2, 11
                  lui          t2, 36913
                  srl          s1, tp, t4
                  slti         tp, s3, 1509
                  sra          a3, s0, t4
                  ori          t0, t5, 1370
                  srli         s2, a3, 31
                  add          a5, ra, t0
                  xori         zero, tp, 259
                  sltu         a5, s10, s5
                  sll          s6, a5, sp
                  lui          s0, 744136
                  auipc        a1, 34753
                  sltu         s7, s1, s3
                  srl          s9, t4, t5
                  ori          t2, a4, -1123
                  add          zero, s0, ra
                  andi         s2, t6, -1161
                  sll          t6, s1, a7
                  srli         s7, t6, 24
                  andi         s7, a4, 1054
                  and          t0, a2, t1
                  nop
                  sra          t0, sp, ra
                  slti         t6, a0, 891
                  and          tp, t5, a7
                  xor          s10, s3, s2
                  or           t4, t1, t0
                  slti         t4, s10, 1185
                  srli         t2, a1, 19
                  addi         t4, t3, 222
                  add          t1, s10, s5
                  sll          gp, sp, t5
                  addi         t0, t4, -1500
                  srai         t0, t0, 3
                  sll          t0, s7, s2
                  addi         s0, sp, -1926
                  sltu         t2, s0, t5
                  srli         t2, a0, 15
                  or           a1, gp, s3
                  lui          t5, 606040
                  add          s3, s2, t0
                  and          s9, a5, ra
                  slt          a6, a2, s10
                  slti         gp, t5, 1124
                  sub          gp, a4, a0
                  srai         t2, t2, 1
                  add          s9, a5, s7
                  auipc        t6, 19354
                  sltu         a4, s6, a3
                  srl          a1, s7, s5
                  or           a3, zero, t1
                  srl          t5, a2, s6
                  ori          s0, s3, 1093
                  srli         tp, t5, 15
                  and          t0, s5, a5
                  add          a0, a7, t3
                  add          s6, a4, s2
                  slli         s7, t5, 13
                  xor          t6, s9, s4
                  xori         s2, tp, 1663
                  xori         a4, t6, 1305
                  nop
                  sltu         tp, a3, zero
                  ori          t5, gp, -589
                  sltu         t6, t6, s8
                  auipc        s10, 901210
                  sltu         t5, s7, s2
                  lui          a3, 435885
                  auipc        s2, 424972
                  srl          a5, t1, a6
                  sll          a4, zero, t3
                  lui          tp, 403370
                  slti         s5, a0, 2011
                  add          s6, s5, s6
                  or           s9, gp, s2
                  and          a1, a6, s3
                  nop
                  addi         s7, t4, -1829
                  sltiu        s1, s8, -644
                  sub          s5, a6, t6
                  lui          ra, 493007
                  or           a0, t4, s5
                  slti         s4, a5, -1070
                  sltiu        tp, t5, -373
                  and          s4, t4, s8
                  nop
                  xori         t6, ra, 1791
                  nop
                  auipc        a4, 456663
                  sltiu        s3, ra, 356
                  andi         t0, s1, 859
                  or           sp, t1, t0
                  sltu         t2, s8, t0
                  lui          a5, 118104
                  srai         a3, a1, 30
                  add          a6, s6, s5
                  nop
                  sra          s10, a0, gp
                  xori         s5, t4, -1714
                  lui          sp, 26281
                  sltu         a3, s1, t3
                  xor          s4, s10, gp
                  nop
                  auipc        s11, 936576
                  lui          gp, 57540
                  nop
                  xor          t5, a2, tp
                  sltiu        sp, ra, 1537
                  nop
                  slti         s8, s7, 819
                  srl          s4, sp, s5
                  slt          t0, t6, s4
                  andi         s0, s4, -955
                  xor          s11, t2, ra
                  sltiu        a1, gp, 1652
                  and          s2, t5, s11
                  addi         t6, t4, -1355
                  sltiu        t5, zero, -55
                  slt          s5, t5, s4
                  lui          zero, 37136
                  lui          t0, 285479
                  sltu         ra, s1, sp
                  or           t2, a6, a3
                  slt          a6, s8, a2
                  slli         s10, a3, 29
                  auipc        s8, 257132
                  lui          t1, 509297
                  sll          a4, s4, t1
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           sp, 0x80000000
                  li           a3, 0xffffffff
                  li           a6, 0xffffffff
                  li           a4, 0x0
                  li           s10, 0xffffffff
                  li           s4, 0x80000000
                  li           t4, 0xffffffff
                  li           t6, 0x9d763201
                  li           s8, 0x0
                  nop
                  nop
                  sub          t6, a4, a6
                  nop
                  auipc        sp, 395985
                  sub          sp, t4, s8
                  auipc        t6, 674044
                  auipc        a4, 710112
                  addi         t6, t4, 1365
                  addi         t4, s8, -781
                  sub          a3, s4, sp
                  addi         s4, s8, -1874
                  lui          sp, 1007824
                  add          t6, s4, a6
                  auipc        t4, 499836
                  lui          t6, 703822
                  addi         a4, t6, -1493
                  lui          a6, 961157
                  sub          a3, s4, s4
                  addi         a4, a6, -29
                  addi         t4, s8, 1318
                  add          s4, t4, a3
                  auipc        a6, 526577
                  add          t4, s8, a3 #end riscv_int_numeric_corner_stream_9
                  and          a6, a3, t1
                  sltiu        s10, a6, 565
                  srai         t1, s8, 1
                  srl          a3, s4, a1
                  sra          ra, sp, s2
                  slli         a0, s11, 11
                  xor          s3, s3, t3
                  nop
                  add          gp, zero, t0
                  srai         a1, t4, 11
                  or           t6, t6, s4
                  xor          s6, a1, a5
                  xori         s9, a1, -1233
                  slti         s8, s1, -1791
                  sub          a5, tp, s10
                  add          s9, a2, a6
                  addi         t0, a2, 1398
                  slt          zero, s10, a5
                  auipc        ra, 391268
                  srli         a0, s3, 31
                  addi         s0, a3, 1339
                  ori          s6, s3, 1046
                  xor          s5, ra, sp
                  add          zero, s3, tp
                  addi         s2, ra, 166
                  slti         ra, s9, -660
                  srl          t2, s4, s3
                  lui          sp, 641325
                  srai         a3, s6, 8
                  auipc        a0, 842978
                  and          s11, s4, s6
                  sll          a3, a6, t3
                  xori         sp, ra, 802
                  nop
                  slti         s1, s4, -5
                  add          t6, s4, t6
                  xor          t4, t0, s2
                  srai         t2, a5, 2
                  slli         s8, t0, 2
                  auipc        s10, 89424
                  nop
                  lui          a4, 986871
                  sltu         s10, tp, s8
                  sra          ra, s2, tp
                  sll          a1, zero, t6
                  or           s3, a1, t0
                  and          t1, t4, s6
                  lui          s5, 173359
                  sub          s9, s11, s7
                  sltu         ra, a6, t1
                  srai         sp, s7, 3
                  sltu         s0, t3, s11
                  sub          a0, a4, s0
                  slt          tp, a6, s10
                  sltiu        s10, s5, 713
                  slt          s10, s4, s5
                  xori         t1, a5, -1524
                  or           tp, s5, a1
                  sltiu        gp, a5, -887
                  ori          t6, zero, -645
                  sll          a4, s1, a5
                  add          ra, gp, s8
                  slli         s11, t1, 2
                  nop
                  sltiu        s1, a4, 770
                  sub          t2, t5, a0
                  sll          s1, zero, t4
                  sltiu        sp, t5, 470
                  xori         t6, s1, 1061
                  srai         a3, a5, 18
                  sll          s2, s9, sp
                  xor          t5, a1, a2
                  add          ra, s7, s3
                  slli         s1, a2, 17
                  addi         t6, s9, -828
                  xori         a6, t4, -658
                  andi         a5, s10, -66
                  andi         a0, s4, 1232
                  sra          t1, a0, zero
                  and          a4, s1, t0
                  sltiu        sp, zero, -1484
                  srai         s10, sp, 13
                  slli         tp, a6, 16
                  lui          t5, 78206
                  addi         sp, s0, -166
                  srai         s5, t1, 12
                  slli         gp, zero, 14
                  sll          s5, a2, s1
                  ori          a6, ra, -297
                  srli         s9, ra, 30
                  srli         s5, a3, 30
                  or           s8, a3, s2
                  andi         s11, a2, 1225
                  sll          t6, t3, t1
                  srli         t0, a7, 20
                  sll          t0, s4, sp
                  nop
                  lui          sp, 1015359
                  srli         t1, a5, 6
                  srli         a6, t2, 7
                  sub          t0, s11, t4
                  xori         zero, a5, 519
                  xor          t6, a4, t5
                  andi         ra, a4, -1565
                  addi         s4, a3, 1716
                  and          a1, a3, a1
                  sltu         s3, a5, s9
                  andi         tp, a5, -1898
                  srli         gp, t0, 3
                  srl          t6, t4, s10
                  xori         t4, s11, -1224
                  and          s8, s7, a4
                  srli         s1, s11, 7
                  add          s4, s1, t4
                  sll          s0, a0, t2
                  lui          s11, 662066
                  slli         s1, a5, 1
                  sub          s10, tp, a7
                  ori          t6, s3, 977
                  sltu         ra, t2, t0
                  srl          s9, zero, t1
                  and          s9, s9, a1
                  auipc        a1, 96650
                  srli         a6, t1, 13
                  and          s5, a3, gp
                  nop
                  srai         a4, s5, 13
                  slli         s3, a1, 21
                  sltu         s9, s7, s10
                  xor          s10, a5, gp
                  addi         t2, s11, 1993
                  or           a1, s5, a4
                  slt          s1, s5, t5
                  ori          a5, s4, -1997
                  sltu         s3, tp, s5
                  lui          s4, 911543
                  srl          a0, a1, s5
                  sltu         a5, a3, s1
                  ori          s4, s10, -93
                  auipc        a5, 971530
                  slt          sp, a3, a2
                  xor          s5, t3, t4
                  sltiu        zero, sp, -254
                  sltu         a5, s2, a3
                  sub          s5, t6, s10
                  sltu         s5, t5, t3
                  lui          s5, 285595
                  andi         t1, a1, 131
                  ori          s8, zero, -1320
                  srl          t1, a6, s11
                  lui          t6, 797258
                  sll          s2, s1, ra
                  add          s1, s7, s1
                  slli         s0, zero, 24
                  auipc        sp, 343555
                  andi         a6, s2, -225
                  slt          zero, a7, s8
                  xor          s4, s4, a1
                  slti         s2, a2, 2033
                  sra          s5, s1, a3
                  slli         s6, t2, 13
                  auipc        s3, 232390
                  sltiu        s0, t6, -200
                  sltu         s4, t0, a3
                  sra          s3, t4, a2
                  or           s7, a6, t2
                  sra          s4, t1, zero
                  srl          s0, a2, t3
                  srai         s2, a1, 1
                  slt          s8, s6, gp
                  srl          a3, s8, sp
                  slli         t0, sp, 13
                  sra          s1, a6, s5
                  ori          s9, a4, 586
                  sltiu        s7, sp, 676
                  sltu         zero, s10, s9
                  addi         sp, t5, -1596
                  andi         t1, a2, -1523
                  sll          s9, s9, t1
                  srai         s4, a3, 29
                  srli         s7, t6, 6
                  lui          s3, 616079
                  sll          s3, s10, s1
                  lui          s2, 973607
                  and          t0, s9, t2
                  addi         s4, s0, 678
                  slli         gp, s6, 20
                  slti         t4, s0, -273
                  slli         s2, a1, 13
                  srli         sp, s5, 27
                  xori         t5, t5, -1923
                  slli         s7, t2, 14
                  and          s10, gp, a5
                  sra          a5, s5, a3
                  ori          s10, ra, -648
                  or           s0, a3, s11
                  nop
                  slt          s7, s7, s8
                  sltiu        s8, t1, -1921
                  srai         a1, ra, 0
                  add          s2, s10, a5
                  sra          s0, a7, a0
                  auipc        s10, 2694
                  slli         t5, s0, 9
                  slt          t1, gp, s10
                  slti         s9, s10, 108
                  xor          a4, s2, a0
                  slti         a3, a2, 928
                  sll          t2, a2, t2
                  sub          s9, a1, t4
                  sltu         t4, s7, s0
                  sll          s4, sp, zero
                  and          s11, a6, s2
                  sltiu        s5, a1, 691
                  addi         t1, t5, -2016
                  sub          s1, gp, a4
                  sll          s11, tp, a0
                  sub          s4, t1, tp
                  add          a6, ra, s4
                  add          s3, a5, s6
                  or           s7, t4, a3
                  slli         t2, s10, 20
                  ori          s4, s7, 201
                  lui          t5, 61806
                  srai         sp, s4, 16
                  addi         gp, t5, -1069
                  nop
                  srai         t1, s5, 29
                  xor          t1, s8, a1
                  slti         s1, s2, 1790
                  addi         t4, t3, 1411
                  ori          t0, s5, 590
                  slt          t2, a6, zero
                  slli         t5, s5, 26
                  slli         a3, sp, 11
                  sra          tp, t2, t0
                  slti         s0, s11, -1913
                  sltu         gp, t2, a2
                  sll          s8, s7, s0
                  ori          ra, s11, 663
                  sll          t5, t4, t6
                  sub          gp, t0, a0
                  add          t4, zero, s3
                  xori         a4, s0, -1508
                  add          t2, s5, gp
                  xori         zero, a0, -1089
                  or           a1, s0, t4
                  nop
                  xor          a4, sp, s4
                  auipc        gp, 1022086
                  ori          t6, s0, 1460
                  lui          a1, 600610
                  sll          a5, t0, s0
                  xor          t4, a4, s6
                  slti         t1, a6, -708
                  srl          t0, s1, s3
                  srai         s5, s2, 25
                  xor          t5, ra, s0
                  xor          a4, a4, a5
                  slti         sp, t0, -171
                  add          sp, s10, s3
                  addi         sp, a5, 464
                  ori          a4, t1, 441
                  sra          s8, s0, s11
                  srl          a5, t0, s0
                  srli         s8, a3, 5
                  auipc        a4, 791073
                  ori          t4, s8, -1088
                  add          a3, s0, t2
                  nop
                  slt          gp, t6, s11
                  and          a5, t5, s11
                  sll          t4, s4, a3
                  srl          a5, s7, t6
                  slti         a0, s10, 1621
                  xori         s1, s10, -1863
                  sll          s11, s7, gp
                  auipc        s10, 450156
                  andi         gp, gp, -1980
                  auipc        ra, 773068
                  sub          s8, s0, ra
                  sltu         t4, t1, gp
                  lui          a4, 23898
                  slt          s3, a6, t4
                  srai         sp, ra, 16
                  sltu         s8, a2, s11
                  srai         t4, sp, 13
                  lui          a4, 161087
                  srl          s10, s11, gp
                  sub          t6, s10, a5
                  slt          a0, t3, a0
                  slt          a5, a5, t1
                  and          a5, s11, s5
                  slt          t6, s1, s5
                  lui          s1, 681248
                  andi         s2, a7, 1764
                  andi         t6, a5, -1565
                  andi         s2, t2, -1447
                  sltiu        t0, s0, 838
                  addi         tp, t0, 1282
                  sltiu        a5, s11, 1922
                  or           zero, a6, gp
                  slli         s5, s8, 29
                  lui          t1, 819856
                  or           t5, ra, gp
                  nop
                  and          s7, a7, s5
                  xori         s6, a2, -1556
                  slt          tp, s3, a5
                  sub          s8, tp, a1
                  srl          a0, gp, s8
                  addi         s7, a2, -199
                  nop
                  add          s4, a2, t4
                  sltu         gp, s2, gp
                  and          s9, ra, s2
                  add          ra, t4, a3
                  nop
                  ori          s9, s2, 951
                  sra          a0, s2, s2
                  sltu         a6, a4, t3
                  slti         a1, s1, -904
                  xor          a3, a6, s9
                  slti         t0, t2, -1527
                  slli         s10, ra, 7
                  ori          a4, t6, 120
                  xori         s5, ra, -1275
                  sltu         s11, t0, zero
                  sra          a6, a6, s4
                  sll          ra, a0, a3
                  sra          ra, t4, zero
                  sra          a4, s5, s9
                  xor          zero, s0, s2
                  ori          t6, s2, -1598
                  sltu         s1, a6, gp
                  srli         s4, a1, 19
                  srai         s5, s8, 31
                  sra          a5, ra, a0
                  sra          s8, s5, t1
                  srli         t4, s1, 5
                  addi         s9, s4, 912
                  slt          t5, a4, s9
                  xor          t2, a7, t1
                  ori          a3, a6, -328
                  srli         t0, s6, 15
                  slti         t5, s2, 907
                  xori         s9, s6, -1775
                  sll          a6, t5, t6
                  srli         gp, s3, 21
                  sra          s2, sp, s7
                  sub          s0, s9, s6
                  slti         a3, a2, 756
                  xor          t5, t3, t0
                  and          s2, t4, t2
                  or           a3, s11, s10
                  addi         s8, s11, -788
                  slt          gp, s0, a2
                  or           sp, s10, a3
                  sra          a5, s11, s1
                  slt          s8, s3, s10
                  slt          s6, s2, gp
                  nop
                  sll          t4, s2, t0
                  andi         a4, gp, 988
                  sra          t6, s8, a1
                  auipc        tp, 234271
                  addi         s0, a1, -256
                  nop
                  srai         a6, t5, 23
                  sra          s9, t0, a7
                  sltiu        a6, s3, 19
                  slti         t5, a7, 1858
                  slti         a6, s6, -1843
                  lui          s0, 784873
                  slti         s7, s3, -430
                  and          s10, s5, sp
                  andi         s8, s11, 1510
                  xori         s11, s7, -1577
                  auipc        s7, 815542
                  slt          a5, sp, zero
                  slt          s1, s1, s6
                  srl          t6, t5, s2
                  and          tp, s8, s9
                  add          tp, a4, a5
                  nop
                  srai         s1, s8, 20
                  srli         s7, a2, 2
                  andi         gp, s8, -308
                  sll          a5, zero, a6
                  sltu         a0, zero, s6
                  lui          a3, 192736
                  and          t4, a2, s9
                  sltu         zero, s1, t5
                  sub          s7, t6, t4
                  nop
                  or           a5, t4, s4
                  lui          a4, 640320
                  srli         a4, t2, 3
                  sll          a1, a6, ra
                  addi         tp, t5, -212
                  sltu         a6, s7, t1
                  and          t2, t5, a3
                  sll          a3, tp, s8
                  slti         gp, t5, -569
                  addi         a0, a4, -1256
                  srai         s11, t6, 16
                  andi         s9, a4, -619
                  xor          s10, t3, t0
                  srl          a3, s0, zero
                  srli         ra, t1, 13
                  srli         s11, a4, 30
                  sra          t0, ra, s9
                  sll          zero, t1, zero
                  srai         tp, a3, 15
                  nop
                  auipc        a0, 42707
                  sltu         s11, s4, s0
                  and          s0, t5, s8
                  xori         s6, t2, -1002
                  sltu         s3, s10, t3
                  slt          s7, t3, t3
                  lui          t4, 59633
                  auipc        a5, 785907
                  add          a4, t5, t3
                  sltiu        s4, t0, -1863
                  sltiu        t2, s4, -1068
                  srli         t0, s4, 28
                  srl          s7, s5, s5
                  addi         s6, t3, -701
                  ori          t1, a4, 1671
                  xori         s10, a7, -668
                  and          s8, s4, a5
                  or           s10, s6, t4
                  slt          t0, a7, a1
                  lui          s3, 418916
                  xor          a1, tp, t2
                  srli         t5, s8, 6
                  slti         s8, s3, -1629
                  and          s0, s7, gp
                  slli         s7, s8, 2
                  slli         a1, ra, 24
                  sltiu        s6, s9, 1428
                  sltu         s6, sp, a3
                  andi         a3, s9, 1151
                  slli         s9, sp, 14
                  nop
                  slti         t1, gp, 1998
                  slti         t4, t1, -638
                  or           tp, tp, s7
                  lui          a5, 309028
                  or           s0, s9, s4
                  xori         t5, s9, 1857
                  sltu         s4, sp, s6
                  add          t2, sp, a2
                  srl          s9, s5, a0
                  slt          s7, a5, sp
                  lui          t4, 257913
                  ori          t6, a3, -347
                  sltu         sp, a2, t4
                  add          t0, tp, t5
                  slli         tp, t2, 19
                  srli         t0, s8, 26
                  sub          t5, a3, zero
                  addi         s1, a6, -1537
                  xor          s9, t3, s7
                  and          a4, a5, s10
                  srli         t2, s7, 29
                  auipc        zero, 149739
                  sltiu        gp, a0, -135
                  auipc        zero, 596363
                  sltu         t0, s11, ra
                  sltu         a3, s3, a6
                  slli         a6, t0, 5
                  slt          tp, s1, tp
                  srai         s9, tp, 8
                  addi         sp, s1, -1563
                  add          gp, a0, sp
                  andi         gp, s8, -90
                  slti         a1, a3, -1424
                  nop
                  lui          s10, 279750
                  xori         s3, t4, 1821
                  xori         s7, s10, 419
                  xor          s3, s7, s6
                  sub          s8, s8, t3
                  sltu         sp, s8, a5
                  andi         s9, s11, -1783
                  sra          t1, sp, s7
                  and          gp, a3, t5
                  add          ra, s11, s6
                  nop
                  add          s5, s7, a0
                  andi         t6, t6, -1893
                  srai         t0, t1, 22
                  or           a3, t2, ra
                  andi         a3, t1, 648
                  addi         s9, t6, -872
                  addi         ra, s5, 212
                  sltu         t1, t5, t3
                  or           t6, s8, s3
                  andi         s5, s10, 2031
                  lui          t5, 243539
                  sub          t0, ra, s3
                  xori         a6, t6, -2037
                  and          a0, a1, t6
                  or           zero, a7, s3
                  slti         s8, s8, 731
                  xori         s2, s6, -1668
                  ori          t6, sp, 365
                  or           s5, a2, t3
                  srl          sp, a4, a5
                  srai         sp, sp, 7
                  nop
                  sub          zero, s7, a6
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           s6, 0xffffffff
                  li           tp, 0x0
                  li           a0, 0xffffffff
                  li           a4, 0x80000000
                  li           s5, 0x4dfa2b7f
                  li           t4, 0x0
                  li           t6, 0x0
                  li           s0, 0xcafb9227
                  li           s9, 0x80000000
                  sub          s6, a4, tp
                  sub          s5, s6, t6
                  sub          a6, t4, s0
                  add          t4, s9, s6
                  sub          a0, tp, s9
                  addi         a6, tp, -1032
                  add          t6, tp, s5
                  lui          s5, 473571
                  lui          a4, 633076
                  addi         a6, a4, -1407
                  auipc        s0, 599038
                  sub          s0, a4, a0
                  nop
                  lui          s5, 543526
                  sub          tp, s9, a6
                  lui          s9, 853371
                  nop
                  lui          tp, 972650
                  nop
                  nop
                  lui          t4, 82063 #end riscv_int_numeric_corner_stream_16
                  andi         t6, s4, 1500
                  xor          t5, s5, a5
                  sltiu        s3, s10, 1221
                  addi         gp, t1, -685
                  add          t4, a3, s3
                  sra          tp, s8, s11
                  andi         s9, t5, 1883
                  sll          a1, sp, t1
                  and          a4, s0, a5
                  slt          sp, tp, a0
                  lui          a3, 520839
                  sub          s4, s11, t3
                  sll          s5, t5, a7
                  addi         s4, s1, -1559
                  srli         t2, t5, 6
                  xor          s1, t3, a3
                  xor          s11, a5, t6
                  sll          s1, a7, s3
                  xori         s0, a2, 1815
                  slt          a6, s0, ra
                  nop
                  srai         tp, s2, 0
                  slt          t2, a1, t0
                  ori          s4, t1, 1868
                  lui          a4, 903471
                  auipc        a5, 738280
                  srl          t4, a7, a2
                  addi         gp, s1, 652
                  srli         t1, sp, 25
                  xor          s4, zero, t3
                  sll          tp, ra, s8
                  nop
                  slti         s4, ra, 417
                  sltu         s0, sp, t2
                  sltiu        a3, a5, -1702
                  sll          a4, sp, s4
                  xori         s2, s5, 389
                  andi         a1, zero, 804
                  srl          t5, a0, s7
                  srli         t6, t1, 28
                  srli         a6, s8, 31
                  or           s9, a5, s10
                  ori          s0, s7, 263
                  and          a4, s10, a4
                  auipc        s3, 796077
                  srli         s4, sp, 13
                  srl          s3, sp, s4
                  sub          zero, sp, s2
                  xor          s3, a0, a1
                  slli         a6, a5, 5
                  sll          t6, t0, s4
                  slti         s7, a1, -481
                  sll          tp, s4, s3
                  slt          t6, a5, s4
                  sra          a1, t2, s5
                  slti         s10, s3, 1870
                  slti         t2, t3, -1556
                  auipc        ra, 189942
                  xor          s9, s11, a4
                  srai         tp, s4, 29
                  and          gp, t5, a5
                  xor          s7, s5, ra
                  sll          ra, a6, t0
                  and          s0, a7, a4
                  sra          t5, sp, a1
                  auipc        s1, 989029
                  srli         tp, a3, 30
                  xori         t4, t6, -1904
                  addi         zero, s3, 987
                  srl          s3, s4, a0
                  xor          zero, t6, s11
                  auipc        a4, 221712
                  lui          t6, 632675
                  sra          s4, zero, a5
                  nop
                  add          s0, s9, ra
                  sub          tp, s2, gp
                  nop
                  slt          a6, t0, s6
                  slti         t0, s7, 144
                  slli         t0, a0, 27
                  or           tp, t6, t2
                  and          s5, t6, t1
                  auipc        s6, 129570
                  xori         t6, a7, -1705
                  nop
                  ori          sp, t4, 243
                  addi         s9, t0, -560
                  or           s4, a4, a2
                  add          ra, a4, tp
                  sltu         s10, t5, t6
                  srai         a5, tp, 3
                  sltu         s8, s8, a5
                  slt          a1, a7, t0
                  sra          s10, ra, a7
                  nop
                  and          s11, s6, a0
                  nop
                  or           t4, a5, t2
                  add          t2, s3, t4
                  srl          a1, a7, t0
                  lui          s5, 760543
                  sub          tp, s3, s9
                  xor          t6, gp, t3
                  slt          s3, a0, t6
                  or           s6, s3, a0
                  slti         gp, s3, -304
                  nop
                  ori          s6, a4, -2016
                  auipc        s11, 40555
                  sltiu        t2, a6, -1137
                  xori         s0, t2, 39
                  auipc        a0, 410578
                  andi         t4, s9, 325
                  nop
                  and          s6, s5, zero
                  and          a3, s11, a1
                  auipc        tp, 243603
                  sltiu        t6, s8, -630
                  andi         sp, s4, 902
                  slt          tp, s5, a1
                  auipc        s8, 269381
                  srl          s6, s0, s7
                  nop
                  slli         gp, t5, 30
                  addi         a4, ra, -252
                  or           s3, s10, s9
                  slt          gp, a5, t6
                  or           s9, s1, t3
                  lui          tp, 760828
                  and          zero, a1, s6
                  and          s10, a0, s6
                  or           s3, t5, t5
                  sltiu        a1, t5, 713
                  sub          a3, a6, a3
                  andi         a4, a2, 420
                  nop
                  slti         tp, s6, -1901
                  addi         a6, s0, 1438
                  add          tp, a5, a7
                  sltu         t6, a5, s6
                  srl          a6, a7, a5
                  srli         s5, s7, 21
                  slt          a4, a2, gp
                  sltu         s7, s4, zero
                  srl          s6, s2, s8
                  sltiu        s3, t5, -1802
                  srl          s1, t5, ra
                  sll          s6, a3, sp
                  sll          s9, a7, s3
                  andi         s0, s5, -504
                  sltu         t0, s4, s1
                  andi         s8, s1, -813
                  auipc        a1, 166745
                  lui          s2, 57942
                  sltu         t5, s8, s1
                  slti         s0, s9, -1473
                  sll          s4, t5, t1
                  ori          s2, s0, -825
                  andi         sp, t0, -1906
                  sltu         sp, s11, s5
                  sub          s2, s6, t3
                  srli         s8, t0, 25
                  or           zero, s2, s9
                  slli         t4, ra, 17
                  srai         zero, t1, 25
                  sltu         a5, t1, s9
                  sra          t4, s3, zero
                  srl          tp, s10, t3
                  sltiu        a0, t2, -1222
                  add          t2, sp, tp
                  sltu         t5, s9, t0
                  or           ra, s8, s6
                  slt          t4, a0, a4
                  srai         s7, sp, 26
                  srl          s3, a5, s8
                  lui          s6, 84257
                  srai         s3, sp, 2
                  ori          a0, zero, -885
                  add          a4, s5, tp
                  slt          s8, t1, s6
                  ori          s10, t0, 1760
                  xor          s3, t0, ra
                  or           s0, t2, s11
                  xori         s6, a1, -1947
                  sltu         a4, s4, s1
                  sra          s2, s11, t3
                  nop
                  srl          s4, a7, zero
                  or           s10, t4, s10
                  srli         a3, t3, 22
                  nop
                  ori          t1, s0, -1390
                  slt          s1, a6, s11
                  srai         t4, a6, 19
                  sll          a3, s3, t1
                  slli         a0, s3, 25
                  add          s7, tp, t5
                  srai         t1, a5, 22
                  xor          s9, s5, t2
                  sltiu        sp, s7, 1659
                  nop
                  srai         gp, a7, 26
                  sub          gp, s10, s3
                  add          s1, a3, s0
                  and          s7, a4, t5
                  slli         t5, a3, 18
                  sub          a1, s8, ra
                  sltiu        a6, s9, 478
                  nop
                  slli         a4, tp, 6
                  srai         s5, zero, 0
                  srl          s4, a1, t5
                  sltu         s4, t3, a6
                  or           gp, s2, t0
                  xor          s5, s9, a7
                  and          sp, s2, sp
                  auipc        ra, 805818
                  srli         zero, a2, 4
                  auipc        s7, 374946
                  xor          t6, zero, a1
                  slti         s7, t5, 1967
                  sub          s0, s3, a7
                  slti         tp, zero, 435
                  or           a6, a4, a5
                  and          s2, tp, a0
                  slli         t5, s10, 23
                  auipc        a1, 27872
                  nop
                  sll          s10, t2, t6
                  srli         t0, a7, 14
                  slli         t6, s9, 13
                  and          t1, a0, s6
                  auipc        s2, 1003884
                  sll          s4, s3, zero
                  sra          s2, s9, ra
                  ori          t1, s1, 874
                  srl          a1, t1, t3
                  addi         s10, a3, -1593
                  andi         tp, t0, 570
                  sra          s0, a1, a4
                  addi         s7, a2, 33
                  or           a1, t0, a0
                  nop
                  andi         s2, ra, -399
                  sll          a4, s8, s1
                  srl          s4, sp, a2
                  and          ra, t5, t0
                  sll          a1, a6, t2
                  slt          s3, t4, t5
                  slt          a3, t2, s9
                  add          t5, s0, t1
                  xor          a4, sp, s7
                  slli         t2, s5, 26
                  addi         s1, a6, 1408
                  ori          s1, s0, -672
                  xor          tp, zero, t6
                  slti         a5, s2, -1788
                  sltu         s10, a6, t4
                  nop
                  sub          s4, zero, a0
                  srl          t1, t6, s9
                  add          s8, a3, t1
                  ori          t0, s10, 522
                  nop
                  sll          a3, s8, t3
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s0, 0xc0ea4b6b
                  li           s11, 0x80000000
                  li           s8, 0xe6951e7a
                  li           s2, 0x80000000
                  li           t6, 0xffffffff
                  li           gp, 0x0
                  li           t5, 0xffffffff
                  li           s5, 0x0
                  li           s9, 0x0
                  sub          s8, s9, t5
                  add          s2, s8, t6
                  sub          gp, s0, t6
                  auipc        s5, 664752
                  sub          s11, s5, t6
                  nop
                  lui          t5, 879063
                  auipc        s9, 823393
                  sub          s0, gp, gp
                  addi         s0, s8, 1897
                  lui          ra, 796861
                  addi         s8, s2, -103
                  nop
                  nop
                  add          s9, t5, s8
                  addi         t5, s2, 1076
                  nop
                  addi         s9, s5, -693
                  addi         s5, s5, 748
                  nop
                  add          t5, s0, s2
                  auipc        gp, 598052
                  nop
                  add          t5, t5, t6
                  auipc        s9, 181619
                  nop
                  add          gp, s8, s0 #end riscv_int_numeric_corner_stream_11
                  add          s5, a1, t1
                  nop
                  lui          ra, 671800
                  add          ra, s10, t1
                  sltiu        s9, tp, 46
                  slti         s3, a7, 1376
                  or           a0, s0, tp
                  or           tp, t4, s11
                  xori         a5, tp, 1102
                  and          s2, tp, s9
                  lui          tp, 999476
                  lui          a1, 865634
                  ori          s3, s3, 917
                  sra          s11, s7, a2
                  slti         t5, s10, -968
                  andi         s1, a1, -1807
                  nop
                  sltiu        a0, t6, -1925
                  sltiu        sp, ra, 1509
                  slli         s9, s4, 24
                  or           t0, a3, zero
                  srl          tp, s0, s6
                  sub          t6, gp, a2
                  srai         s0, a6, 6
                  slt          s7, s7, a0
                  ori          sp, t5, -1424
                  slli         s6, t0, 26
                  sltu         t1, s4, a3
                  lui          s10, 605570
                  slt          s5, a3, s10
                  addi         s9, s8, -544
                  nop
                  sltu         s11, zero, s6
                  sltu         a0, t6, s6
                  slt          s0, sp, t3
                  or           s6, a2, tp
                  addi         s8, a5, -1272
                  slt          ra, a0, s9
                  srai         s9, gp, 22
                  andi         s3, a1, -402
                  lui          s2, 682560
                  slli         s5, s5, 16
                  slli         s5, zero, 7
                  srli         gp, t6, 27
                  srl          sp, s0, a7
                  and          a6, s4, sp
                  xori         t1, t0, 1066
                  srl          s6, t3, t0
                  xor          a4, s2, a3
                  auipc        t0, 594818
                  ori          s10, t1, -1887
                  sll          t6, t5, s8
                  or           a6, a2, s11
                  andi         s10, s10, -627
                  auipc        zero, 1032081
                  sll          tp, t5, s9
                  sub          s11, zero, s10
                  srli         sp, t5, 31
                  ori          a5, t1, 158
                  ori          t6, s1, 1321
                  sll          s9, a6, s1
                  xori         t2, s5, 190
                  sub          sp, s9, s9
                  slt          t6, t2, t5
                  xori         tp, s3, 172
                  sra          a0, a1, a7
                  andi         s10, s0, -413
                  sub          t0, t6, t6
                  sra          s8, t4, s6
                  auipc        t4, 576328
                  auipc        s1, 238899
                  sltiu        sp, s0, 613
                  add          s10, t3, s7
                  ori          a3, s6, -102
                  addi         s2, a5, -994
                  add          a1, a6, t2
                  lui          gp, 513185
                  lui          tp, 362980
                  sll          s11, s6, zero
                  sub          t2, a3, a3
                  srl          sp, a6, s6
                  ori          s2, t3, -874
                  auipc        sp, 521532
                  addi         t6, a3, 2000
                  srl          s4, s7, s8
                  lui          t5, 558496
                  slti         tp, s1, -927
                  nop
                  slti         t2, a4, 849
                  xor          a4, t0, s4
                  xor          t1, a1, s0
                  sltu         t4, a2, s0
                  auipc        t1, 970757
                  add          t6, sp, s11
                  or           s5, t6, a6
                  add          a4, t6, a4
                  slli         tp, s5, 31
                  sub          t6, a7, a4
                  nop
                  add          s2, zero, a0
                  srai         a3, t2, 18
                  slt          s7, zero, a3
                  sltu         s1, t5, s4
                  xori         t6, zero, 1684
                  slli         a3, t5, 27
                  srl          a1, t4, t3
                  srli         s0, a7, 22
                  srl          s2, s10, a4
                  addi         zero, a2, 196
                  addi         t4, sp, 1055
                  sll          t6, ra, s11
                  ori          s0, s10, 182
                  srai         s0, s4, 13
                  xori         s0, s6, 372
                  add          s3, s5, gp
                  auipc        s11, 343821
                  slti         a3, ra, 1819
                  or           s4, a6, a0
                  and          gp, zero, t5
                  and          a4, s10, a5
                  xor          s5, a1, t3
                  sub          t2, tp, s3
                  nop
                  or           a6, s5, s5
                  add          a4, t6, a6
                  sra          s9, s6, s11
                  xori         s11, t0, 1065
                  sll          t6, a7, gp
                  sltu         s1, s7, tp
                  auipc        a5, 527623
                  sll          s8, sp, ra
                  and          a1, s3, s3
                  and          t6, ra, zero
                  ori          s4, sp, -1177
                  xor          s7, a3, sp
                  slli         zero, a0, 9
                  slt          s1, a1, s7
                  sltiu        zero, s5, -1290
                  add          s6, ra, a3
                  sltu         s4, s11, a7
                  sra          t4, a2, ra
                  nop
                  lui          sp, 529055
                  sra          a6, zero, zero
                  andi         a6, ra, -503
                  or           s3, t6, tp
                  sll          s9, ra, s7
                  sub          s11, s2, t6
                  sll          gp, sp, s2
                  add          a6, t0, sp
                  lui          t1, 71623
                  sub          zero, t3, gp
                  auipc        t0, 630600
                  sra          s4, a2, a7
                  srl          s8, s8, gp
                  li           t6, 0x66125403 #start riscv_int_numeric_corner_stream_12
                  li           s1, 0xffffffff
                  li           gp, 0xffffffff
                  li           s5, 0x0
                  li           a0, 0x0
                  li           t1, 0x0
                  li           a3, 0xffffffff
                  li           a4, 0x80000000
                  li           tp, 0x80000000
                  li           a1, 0xffffffff
                  nop
                  sub          a4, tp, s1
                  lui          gp, 238346
                  sub          tp, gp, tp
                  auipc        a4, 1012822
                  auipc        s1, 205766
                  add          tp, t6, a4
                  sub          a0, a4, gp
                  lui          a0, 121138
                  lui          s5, 562889
                  sub          s1, s5, t1
                  lui          a0, 323070
                  add          a1, s5, t1
                  auipc        gp, 294645
                  auipc        s1, 268099
                  lui          gp, 681184
                  addi         gp, gp, 1869 #end riscv_int_numeric_corner_stream_12
                  sll          a1, s6, s1
                  sub          s2, zero, gp
                  sub          s9, a4, gp
                  lui          a0, 966644
                  srli         tp, s3, 1
                  sltiu        s6, a7, 1019
                  add          sp, t6, tp
                  nop
                  slli         a5, t2, 4
                  xor          s3, a4, s0
                  ori          a4, tp, 1021
                  nop
                  addi         gp, s10, 1543
                  srai         s11, t6, 8
                  slti         s9, s3, -525
                  nop
                  sll          t1, s10, t0
                  sub          s11, t5, a6
                  addi         tp, a2, -2032
                  lui          sp, 27812
                  sll          s5, a3, s0
                  add          s9, s7, t0
                  slt          t1, s3, a0
                  slt          s2, a7, t0
                  sltiu        t4, t6, 439
                  add          s3, s3, a2
                  lui          s1, 854335
                  srl          s11, s9, a2
                  slli         a3, t3, 13
                  and          a0, a1, s0
                  srl          s10, s5, sp
                  addi         t5, s5, 1626
                  sltiu        s3, t3, 378
                  sub          s9, s7, ra
                  srli         zero, ra, 28
                  xor          t5, s1, t2
                  auipc        t4, 27122
                  ori          s8, a6, -1785
                  sltu         s11, s9, s3
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s11, 0xa0632640
                  li           s3, 0xffffffff
                  li           t6, 0x0
                  li           t5, 0x33e3b2a1
                  li           tp, 0x80000000
                  li           ra, 0x80000000
                  li           s2, 0x80000000
                  li           s10, 0x80000000
                  li           a4, 0xa01d2a30
                  sub          t5, t5, a4
                  auipc        s2, 318123
                  sub          s11, s2, ra
                  addi         t5, s11, -1428
                  nop
                  nop
                  addi         tp, a0, -2025
                  auipc        t6, 896585
                  addi         tp, s10, 127
                  add          a0, a0, t6
                  lui          s11, 857235
                  nop
                  auipc        tp, 93876
                  lui          tp, 801569
                  auipc        t6, 739477
                  addi         s10, s3, 214
                  nop
                  nop
                  sub          a0, a4, ra
                  addi         a0, ra, -1631 #end riscv_int_numeric_corner_stream_4
                  auipc        a3, 406889
                  xor          s0, zero, t6
                  slt          s10, s8, t1
                  xor          s7, t6, t6
                  sltiu        s9, s8, 27
                  addi         gp, s7, -1774
                  and          a3, a7, tp
                  srli         s6, s8, 3
                  addi         gp, ra, 644
                  and          s7, t0, s5
                  sra          s5, s4, gp
                  srl          a0, a2, sp
                  lui          s9, 500680
                  and          s1, a2, zero
                  srai         s8, s11, 9
                  sra          t6, a3, t6
                  andi         a0, s1, 1696
                  addi         s8, s5, 1104
                  xor          a0, ra, a7
                  sra          a4, t5, a2
                  auipc        zero, 1000394
                  or           a1, s10, a6
                  addi         t1, s4, 1440
                  and          s8, s4, ra
                  ori          s1, s7, 1640
                  slt          a1, s0, s6
                  sltiu        a4, t3, 1250
                  sltiu        t0, ra, 70
                  ori          tp, a2, 391
                  auipc        s9, 733979
                  addi         t4, s8, -283
                  xori         s1, t2, 432
                  srai         t0, s7, 25
                  sltu         tp, s8, s0
                  addi         t6, a5, -904
                  slti         s10, s3, 859
                  addi         sp, s1, -640
                  nop
                  or           s6, gp, s3
                  slli         t5, s2, 20
                  and          s3, t4, s4
                  nop
                  sltu         s1, s10, a7
                  ori          t2, sp, -1861
                  srli         a5, t6, 18
                  sltiu        sp, s3, 1534
                  slti         t5, s8, 628
                  sltiu        s6, gp, -515
                  andi         s8, s6, 113
                  srai         zero, s5, 16
                  sra          t5, a6, s0
                  xor          s4, t2, sp
                  addi         sp, a3, 2011
                  slt          s5, ra, s5
                  andi         s6, t0, 669
                  slt          tp, t3, a4
                  andi         s0, s3, -1899
                  xori         s5, tp, -1120
                  sll          gp, a0, t6
                  sll          s11, s3, s11
                  sra          t2, s3, t2
                  lui          s2, 27563
                  srai         gp, a4, 17
                  sll          s0, s9, s4
                  ori          s7, s4, -1273
                  add          tp, a2, s6
                  nop
                  slt          s7, s10, s9
                  auipc        zero, 788355
                  ori          tp, s8, -404
                  sra          gp, s8, t5
                  ori          s0, ra, 667
                  sltu         gp, a5, t6
                  slli         t5, zero, 29
                  add          a4, t5, a5
                  slli         s5, t0, 28
                  srl          t5, s1, a4
                  slti         s1, t4, 1447
                  auipc        a5, 940182
                  lui          s0, 724452
                  sltu         a6, s8, s2
                  nop
                  xor          s9, s11, s8
                  addi         s5, a7, 770
                  sll          a4, t0, t4
                  addi         sp, sp, 1841
                  li           s5, 0x775c473 #start riscv_int_numeric_corner_stream_13
                  li           a1, 0x0
                  li           sp, 0xffffffff
                  li           s3, 0x80000000
                  li           gp, 0x31e40a48
                  li           t0, 0xffffffff
                  li           s1, 0x54b2983e
                  li           t5, 0x6b820079
                  li           s10, 0x0
                  li           tp, 0xffffffff
                  auipc        s1, 464543
                  lui          a1, 859146
                  nop
                  add          t5, s3, s5
                  addi         a1, gp, -998
                  nop
                  nop
                  auipc        s1, 780457
                  add          s10, sp, s3
                  add          a1, s5, s10
                  nop
                  auipc        s3, 677785
                  lui          tp, 1015493
                  addi         tp, s3, 638
                  sub          sp, s10, s1
                  nop #end riscv_int_numeric_corner_stream_13
                  srli         ra, a5, 28
                  nop
                  nop
                  sra          s5, t3, t6
                  nop
                  sltu         s5, t1, a5
                  slt          s2, s5, t6
                  andi         t4, t3, -1923
                  sll          s3, a3, tp
                  lui          t5, 766638
                  nop
                  srl          a4, s2, s5
                  srli         a3, zero, 30
                  auipc        s6, 711507
                  sltiu        ra, ra, -1584
                  xor          ra, gp, zero
                  sra          tp, a4, zero
                  or           s10, s6, t1
                  add          sp, t2, t4
                  sll          gp, a5, s9
                  xori         ra, s4, 798
                  slli         t5, s10, 13
                  add          s1, s10, s2
                  slt          a3, a6, t3
                  lui          s10, 101262
                  xor          t0, s3, t6
                  nop
                  andi         ra, s7, -1438
                  lui          tp, 986745
                  ori          s4, a7, -1658
                  sltiu        s3, sp, -1467
                  sll          t5, s10, tp
                  ori          a6, s7, -1715
                  sra          s5, t5, a0
                  or           a6, s8, a4
                  sll          a4, tp, t0
                  or           t6, s4, ra
                  andi         tp, s4, -1464
                  add          t5, s0, t1
                  sll          t2, a0, t1
                  slt          a4, t5, gp
                  sltiu        s11, s6, 317
                  sra          a0, s1, a7
                  or           s0, s8, zero
                  sub          t5, s6, a1
                  auipc        s5, 31793
                  sll          a1, gp, s0
                  sltiu        zero, a5, 367
                  sra          s6, t1, s8
                  lui          a5, 610121
                  add          a4, a5, t0
                  sra          s6, sp, a2
                  sltu         a1, s6, s3
                  lui          tp, 474676
                  srai         s10, sp, 22
                  xori         zero, a0, 1639
                  ori          t1, t3, -903
                  slt          s11, s10, s9
                  or           a5, t0, t0
                  and          a1, s1, t5
                  sll          a0, a1, a1
                  and          t2, gp, gp
                  sub          s3, a1, s0
                  srl          a4, s8, t0
                  slli         a3, s9, 26
                  andi         s9, a2, 1897
                  andi         t4, a6, 1046
                  sra          sp, t0, s7
                  sltiu        a5, t6, -1850
                  sltu         zero, ra, t6
                  xor          ra, a6, sp
                  xor          a0, zero, t2
                  sll          s5, a5, a2
                  slti         t5, gp, 1969
                  nop
                  nop
                  addi         a1, t4, 1478
                  slti         s10, ra, -1963
                  nop
                  add          zero, a2, tp
                  ori          sp, tp, 941
                  ori          s4, t2, 280
                  slt          s11, a1, tp
                  sll          a3, a2, t6
                  and          t1, s1, t3
                  srl          t6, s4, s1
                  sltu         s2, s8, tp
                  sltu         a3, tp, a6
                  slli         s10, t4, 5
                  lui          t5, 783513
                  sra          a5, a2, t0
                  addi         t1, a3, -562
                  xori         gp, t5, 1204
                  srl          sp, s2, t3
                  xor          tp, t5, s0
                  andi         tp, zero, 120
                  andi         a3, s8, -1649
                  sub          s4, zero, s4
                  sll          s3, gp, s10
                  add          s7, t4, a3
                  slli         a1, a2, 23
                  nop
                  sra          tp, s10, s3
                  ori          a1, a1, -911
                  nop
                  lui          t6, 268415
                  slli         t0, sp, 16
                  sra          s0, s8, gp
                  nop
                  slt          zero, s7, sp
                  slli         zero, sp, 27
                  xori         a5, a2, -1741
                  nop
                  xor          s0, a2, ra
                  slli         t6, s9, 26
                  sra          s0, t6, a2
                  srai         a3, a4, 18
                  ori          s5, s4, -1943
                  slti         a6, ra, 590
                  srai         t2, a2, 13
                  sra          s2, a3, s4
                  sub          a0, s9, s0
                  or           t5, tp, s8
                  slti         t1, s2, -798
                  ori          t0, a2, 78
                  ori          a0, ra, -1685
                  andi         zero, t0, -64
                  slli         s3, a5, 25
                  addi         s10, a6, 1761
                  sra          s3, t5, s1
                  srl          t6, t2, a7
                  srl          a1, a4, s9
                  addi         t0, a7, 791
                  srl          s4, s8, a4
                  or           s3, a2, a3
                  xor          t5, sp, ra
                  xori         t2, a1, -1872
                  and          a0, s10, s0
                  slti         s9, t4, 367
                  ori          a4, s8, -1368
                  sltu         gp, s10, s11
                  slli         gp, s6, 28
                  xori         t2, a6, 856
                  sltiu        gp, t2, -1475
                  sltiu        t6, a4, -1026
                  slli         s0, t5, 3
                  add          s0, ra, s3
                  add          s9, s11, s1
                  sll          a0, a6, a6
                  slt          s0, a5, t5
                  nop
                  xor          t4, s1, t3
                  srl          a4, a2, s2
                  sub          s9, a4, s3
                  auipc        s7, 505751
                  lui          t6, 1018367
                  xor          sp, t5, t4
                  or           s10, s7, t1
                  sra          a5, t6, t0
                  sra          s2, a3, a2
                  xori         a1, s4, -200
                  add          s2, t4, s11
                  srl          s7, s6, ra
                  auipc        zero, 449749
                  slti         s6, a2, 1966
                  or           s10, s2, a3
                  sll          sp, a0, t1
                  sltiu        a4, a0, 1960
                  ori          s0, s8, 1916
                  slti         t6, a0, 2006
                  lui          zero, 301400
                  andi         tp, t5, -949
                  sra          gp, s11, s9
                  sra          tp, a4, a7
                  auipc        s4, 205760
                  srli         s11, s1, 23
                  sra          s0, s11, s5
                  srli         sp, s9, 28
                  andi         a3, t0, -1783
                  ori          a4, t1, 515
                  ori          t5, s4, 1362
                  nop
                  ori          s11, sp, 240
                  and          s5, s9, a3
                  slt          s5, s3, ra
                  xori         s11, t0, 539
                  xori         t5, s3, 1419
                  xori         t5, t5, -642
                  lui          s3, 178116
                  and          t6, a3, s2
                  sub          gp, gp, s11
                  xori         a4, t3, 1136
                  auipc        s10, 32916
                  srai         t6, s8, 2
                  sra          t2, t1, ra
                  sll          s2, s0, a1
                  ori          s8, t2, 1985
                  andi         s0, a5, -138
                  slti         ra, sp, -1791
                  or           s2, t6, s8
                  nop
                  xori         t1, s3, 181
                  nop
                  and          s7, a0, s2
                  lui          a1, 900613
                  or           t0, sp, s4
                  srai         s3, a1, 1
                  xor          tp, s9, s0
                  srai         tp, a3, 1
                  sub          t1, s9, t6
                  sra          s7, s6, sp
                  nop
                  add          s6, a5, ra
                  srli         t6, sp, 28
                  srl          a4, t0, a3
                  slli         a3, gp, 6
                  or           t6, s1, a3
                  srl          t4, s10, a1
                  addi         a1, t4, 1871
                  and          s11, gp, t0
                  nop
                  srai         t5, a6, 29
                  sll          s9, t0, sp
                  sra          a4, t1, s5
                  and          s7, s10, a7
                  sll          a0, s7, a1
                  sltu         t0, ra, a2
                  xor          a1, a7, t3
                  sra          t1, tp, s0
                  sra          s10, s2, tp
                  slli         s2, a7, 2
                  slli         s3, ra, 2
                  auipc        a6, 468808
                  add          s7, t2, s2
                  addi         gp, s10, -1379
                  sltiu        a1, s1, -1117
                  add          s6, s8, s3
                  slli         ra, s7, 15
                  and          a5, a7, t5
                  nop
                  andi         s8, s1, -28
                  slt          t5, s0, s10
                  xori         s1, s2, 1877
                  xori         gp, a1, 744
                  auipc        t1, 184497
                  andi         s0, s10, -641
                  lui          s1, 604950
                  add          s11, t4, t5
                  sra          s2, s8, s4
                  sltu         a1, s2, s1
                  slti         t6, ra, -466
                  sll          s6, t6, a5
                  sltu         t5, t3, t1
                  xor          a6, ra, zero
                  and          t2, sp, s7
                  xor          a0, s7, s10
                  sll          tp, s6, a2
                  ori          s10, s3, 328
                  srli         t5, s1, 17
                  slt          a6, a2, a3
                  nop
                  sltu         s0, a0, tp
                  nop
                  sub          s5, sp, t5
                  lui          a4, 982141
                  slli         t2, t2, 11
                  addi         t0, t0, -1466
                  slli         s2, s1, 1
                  lui          s10, 621801
                  slli         s3, s2, 10
                  auipc        a0, 193701
                  sra          t1, a1, t3
                  sltiu        ra, a4, 1282
                  auipc        s10, 641686
                  sltiu        s5, t4, -1230
                  ori          t0, s0, -878
                  and          s5, s7, t1
                  ori          ra, s7, 63
                  slli         ra, a7, 8
                  slli         a5, a4, 23
                  andi         t5, s8, -503
                  srai         t2, s6, 3
                  nop
                  srl          s10, s11, t2
                  xor          s4, s8, s7
                  xori         t2, s10, -744
                  sll          gp, s1, gp
                  srl          zero, s9, a4
                  auipc        s0, 715894
                  slt          t0, a0, gp
                  sll          t5, s3, t2
                  and          tp, a7, s6
                  andi         a3, s6, 366
                  slli         s1, s11, 18
                  slli         sp, t4, 18
                  lui          t6, 634269
                  addi         a1, t6, -384
                  or           s0, a5, a5
                  auipc        a4, 172843
                  nop
                  nop
                  srl          s6, tp, a2
                  slti         s0, a0, 1130
                  nop
                  sltiu        gp, s10, -580
                  ori          t5, gp, -130
                  sltiu        s5, t5, -300
                  slti         s11, s6, 1839
                  lui          s5, 57093
                  slt          gp, a1, t4
                  xor          s0, gp, s0
                  slli         s8, s11, 29
                  srai         a3, t3, 16
                  slli         t6, a1, 26
                  sll          t6, s6, a6
                  sra          a0, gp, s9
                  xori         s4, s10, 1872
                  auipc        a5, 764861
                  slt          t0, t2, t6
                  slli         s10, zero, 18
                  sll          t6, a4, a7
                  sra          tp, a0, s6
                  sra          a1, s0, gp
                  sltiu        t1, s2, 145
                  addi         a6, a3, 390
                  sltu         s10, t0, s4
                  sra          a4, s6, a7
                  sub          s2, a2, a3
                  addi         a3, s0, -1451
                  sll          a6, tp, s8
                  srai         a1, a0, 17
                  srl          a0, t1, a4
                  add          a4, s5, tp
                  sra          s1, s9, s11
                  slt          s2, s4, s11
                  nop
                  xor          t2, t5, s4
                  andi         gp, s7, 1065
                  nop
                  slt          a6, s10, ra
                  srai         zero, ra, 0
                  nop
                  or           t6, a4, t0
                  andi         t1, s7, -952
                  srai         t2, a7, 19
                  sltu         t4, t5, t3
                  sll          a3, s9, s8
                  nop
                  xori         t5, t0, 1656
                  lui          t5, 304047
                  slti         s3, s7, 442
                  slt          sp, s1, sp
                  andi         s11, s11, 1587
                  ori          s6, s10, -1714
                  andi         t6, zero, -887
                  auipc        a5, 560786
                  nop
                  xori         tp, t5, 1554
                  srl          s1, s6, s1
                  xori         s9, t6, 201
                  addi         t1, ra, -1165
                  slli         s8, t2, 27
                  slt          a3, s11, s1
                  slli         s7, a6, 26
                  addi         t6, t3, -551
                  add          s8, a6, a6
                  srai         t1, t0, 2
                  srl          t5, s10, a1
                  sltu         s11, sp, t1
                  andi         a4, s0, 201
                  andi         zero, t1, -1329
                  srli         t2, a0, 28
                  sltu         a0, a3, s7
                  sltiu        s4, a0, 482
                  slt          s7, s4, t4
                  srai         s2, a4, 14
                  srli         tp, tp, 15
                  addi         a3, s6, -703
                  sltiu        a5, s0, -1748
                  auipc        zero, 941185
                  nop
                  add          s6, s7, s3
                  xori         a5, s2, -145
                  or           s5, t4, s9
                  xori         s10, t1, -768
                  sll          s11, s5, s9
                  andi         t4, s4, -1324
                  auipc        t4, 560329
                  sub          t0, t2, t6
                  auipc        s8, 637707
                  nop
                  srli         ra, a5, 19
                  addi         ra, t2, 405
                  slli         s2, a7, 14
                  srai         t4, a2, 19
                  and          gp, t3, s5
                  lui          s7, 1015825
                  addi         gp, zero, 1402
                  slti         s8, a7, 1422
                  sltu         gp, s5, a4
                  add          gp, sp, a0
                  sll          s6, a4, zero
                  addi         t2, gp, 786
                  sub          s5, a1, s6
                  srai         gp, t4, 22
                  slt          t1, gp, s8
                  sltiu        a4, a1, -899
                  srli         gp, s7, 13
                  or           s7, s4, t5
                  or           t0, s11, t0
                  and          s0, t1, gp
                  slti         a0, t4, 2022
                  sltiu        a6, s11, -1032
                  andi         s5, a1, 1950
                  andi         ra, a6, -1947
                  lui          s11, 593222
                  srl          s1, s0, sp
                  slt          a0, a3, t4
                  xor          s7, s4, s8
                  srl          a4, a3, a5
                  sub          t1, s9, tp
                  slli         sp, t6, 16
                  sll          s1, sp, s5
                  add          a3, a3, s4
                  auipc        a6, 672888
                  srli         s5, t5, 7
                  srl          s10, s11, a1
                  ori          t5, s1, -633
                  and          s10, a7, t2
                  ori          ra, t4, 396
                  andi         t2, tp, 591
                  sra          s10, s11, s11
                  slt          a6, a7, s4
                  slti         s5, t5, 1545
                  sra          tp, s9, t6
                  add          t0, gp, gp
                  sltu         s9, gp, a1
                  sra          s3, t5, t5
                  srl          t6, a2, s10
                  lui          a0, 84374
                  add          sp, s2, sp
                  sra          a5, t3, s8
                  slt          s6, s11, a1
                  srli         s0, a6, 21
                  srl          s8, s1, sp
                  addi         s4, s7, 635
                  auipc        a4, 64411
                  and          t5, sp, s5
                  xor          a3, s0, a4
                  lui          s4, 5038
                  nop
                  or           a6, a2, s5
                  ori          s4, t4, -1881
                  auipc        t2, 888828
                  nop
                  auipc        s8, 814569
                  nop
                  or           a0, ra, t6
                  or           t2, a3, t2
                  slt          s2, s5, s4
                  xori         t0, s0, -1659
                  sll          s0, s11, t4
                  srli         a4, s0, 18
                  addi         s10, a3, 1615
                  lui          ra, 343309
                  auipc        a3, 467951
                  srai         a1, a5, 12
                  nop
                  sll          zero, s8, t0
                  srai         s8, s9, 2
                  sub          s6, a4, s8
                  add          s1, t0, s10
                  srl          zero, s7, tp
                  sltiu        s10, s2, -2042
                  add          s8, t2, s3
                  nop
                  srai         s2, s9, 5
                  srli         a3, t5, 18
                  ori          a5, tp, -2030
                  xor          s2, s1, t5
                  slli         s0, t6, 15
                  srli         tp, s4, 3
                  add          tp, s3, tp
                  nop
                  srli         zero, a4, 14
                  srli         s7, zero, 15
                  xori         t0, t1, -1648
                  andi         s11, s5, -689
                  slli         tp, a0, 13
                  xor          a1, s6, s10
                  add          t0, t2, s7
                  sll          s0, t3, s5
                  slt          s3, tp, s2
                  xori         s3, s0, -454
                  srli         sp, s10, 8
                  srl          t2, a3, s10
                  lui          s7, 883813
                  addi         t0, t0, -1583
                  ori          s8, s4, -1277
                  slt          t2, gp, a5
                  srai         t2, t1, 19
                  addi         t0, t0, -905
                  and          t0, a4, gp
                  xori         tp, a2, -969
                  add          s6, a5, t0
                  slti         a1, a3, -1984
                  auipc        s0, 233703
                  xori         s8, s7, 1376
                  add          tp, s1, zero
                  srl          ra, s10, sp
                  srli         s0, tp, 25
                  sltu         gp, s8, a0
                  or           t6, s9, t1
                  auipc        t1, 110223
                  srl          t1, t6, t5
                  srai         t5, tp, 18
                  sll          a4, a5, a1
                  addi         s7, t4, 1875
                  sub          a3, s1, sp
                  xori         a1, s1, 416
                  sll          s8, sp, gp
                  sltu         a4, a3, s0
                  sub          s5, s5, t2
                  srli         a6, t4, 30
                  add          s2, s8, s0
                  and          t5, s2, zero
                  srai         s9, a1, 18
                  sll          t2, a6, sp
                  addi         tp, s5, -761
                  slli         a0, t0, 10
                  and          zero, s3, a1
                  srli         s9, a5, 29
                  sll          a3, a6, a1
                  add          s3, a2, t6
                  ori          s7, s10, 1462
                  srli         a3, t3, 8
                  xor          s4, t1, s11
                  sltiu        t5, t2, 1501
                  auipc        s9, 428021
                  sltu         s0, t5, s8
                  sltiu        t0, t2, 950
                  srli         t6, a2, 11
                  srli         s11, zero, 10
                  lui          a6, 47365
                  srli         s5, t6, 11
                  addi         t5, sp, 619
                  xori         t0, s7, 1997
                  srai         t5, s4, 9
                  slti         s6, sp, -356
                  add          s9, tp, a0
                  srli         t2, a7, 20
                  auipc        a3, 480155
                  slli         gp, a3, 27
                  sub          s0, a1, t5
                  and          s11, a5, a3
                  or           s11, sp, t4
                  and          s4, zero, a4
                  xori         s7, t3, -161
                  srl          s11, a5, gp
                  ori          s5, s11, -346
                  nop
                  auipc        gp, 412702
                  add          t4, t0, s1
                  sltiu        gp, s6, -138
                  sll          t2, s6, a0
                  auipc        s2, 124471
                  addi         s7, t4, 1677
                  auipc        s5, 824898
                  slt          a6, t2, s9
                  sltu         sp, t5, a4
                  nop
                  srli         s2, s7, 16
                  sra          a0, a4, s5
                  slt          s4, a7, s3
                  add          a6, a6, s10
                  lui          a0, 141539
                  auipc        sp, 162326
                  or           s9, s11, t2
                  or           s3, gp, zero
                  lui          t1, 474334
                  lui          s5, 297321
                  srl          sp, a5, t6
                  xori         tp, s4, 969
                  sll          s7, sp, t2
                  srl          t2, s0, gp
                  slli         zero, t2, 7
                  srli         t1, s7, 23
                  add          a0, t6, a5
                  srl          a5, zero, t4
                  ori          s10, t3, 741
                  andi         a1, s11, 552
                  andi         s0, t1, 1323
                  xor          a6, t2, a3
                  and          s11, s5, s6
                  nop
                  slti         a6, t4, -501
                  srl          t0, a5, ra
                  sra          a3, s10, s10
                  andi         ra, t5, 189
                  sra          s9, s11, s9
                  ori          a1, t5, -1887
                  lui          a0, 646244
                  sltiu        sp, a2, 1332
                  xori         s9, s2, 1458
                  slt          a5, s9, s1
                  or           s2, s4, gp
                  addi         s3, s5, -550
                  xor          s3, t5, t2
                  slli         s2, s9, 14
                  srai         a3, zero, 3
                  slti         sp, s5, 237
                  slt          s8, s5, a2
                  sra          a6, zero, a7
                  srai         sp, t2, 9
                  xor          tp, t0, s11
                  xor          t5, s2, zero
                  sll          s7, s5, s7
                  srl          s4, a4, s7
                  nop
                  ori          s3, t1, -605
                  sltu         t6, a6, ra
                  srai         s0, a3, 10
                  add          a5, a5, s5
                  slti         s6, zero, 761
                  sll          s7, t4, s11
                  andi         t0, s10, -141
                  sll          s2, s3, s5
                  auipc        t4, 374148
                  xor          a1, gp, a4
                  nop
                  or           s1, s1, ra
                  slt          s3, a4, s2
                  slti         a6, tp, 1301
                  auipc        sp, 856147
                  xori         a0, a0, 398
                  xori         ra, s10, 1047
                  xori         t2, s1, 1782
                  ori          s7, s8, 852
                  sltiu        s4, a1, -2009
                  xor          s10, gp, t4
                  sra          s4, t3, s8
                  sltu         s9, s6, t1
                  add          a6, s7, s8
                  sltu         s5, gp, t2
                  slti         t6, s2, 332
                  sltu         t2, t0, zero
                  and          tp, gp, s0
                  add          s9, s1, s6
                  slt          s10, a4, t0
                  srli         t2, s4, 0
                  add          a4, s9, s8
                  sra          s11, a1, t0
                  slt          s5, s1, gp
                  andi         a0, s9, 1373
                  sra          t1, ra, s8
                  auipc        s4, 977020
                  slti         t5, s10, -303
                  srl          a3, a4, t3
                  or           s1, a4, a2
                  srli         t2, t2, 27
                  sra          t5, s1, sp
                  slti         gp, ra, 868
                  sltiu        s10, ra, -1507
                  slti         s2, s6, 733
                  sra          t5, a7, a6
                  xori         sp, a7, -1690
                  xori         s11, a2, -1119
                  srli         gp, t3, 25
                  lui          a5, 357646
                  lui          t1, 766033
                  slti         s6, a2, -1648
                  srl          s3, a5, s11
                  sub          s1, a3, t6
                  auipc        s8, 957087
                  andi         zero, zero, 1792
                  addi         tp, a4, -1245
                  slt          t2, a2, a1
                  nop
                  andi         s6, s3, -1852
                  addi         s9, a2, 702
                  sra          s7, s5, a7
                  xori         s8, a3, -514
                  sltu         gp, a7, t1
                  ori          sp, a7, 1157
                  addi         a1, t2, -1899
                  andi         a6, tp, -207
                  auipc        zero, 50087
                  add          s8, a0, zero
                  and          t0, ra, a7
                  andi         s9, a5, -1169
                  sll          zero, tp, t1
                  sltiu        tp, t5, -712
                  nop
                  auipc        zero, 389957
                  xor          s10, tp, t3
                  slli         s10, s9, 5
                  xor          s1, a6, s4
                  nop
                  xor          a1, t1, tp
                  auipc        t1, 1039407
                  srl          a5, zero, s11
                  sll          s6, t5, s5
                  slti         s0, s7, -734
                  sub          t6, s5, s1
                  and          s0, t4, tp
                  slli         s4, sp, 24
                  ori          zero, t6, -389
                  xor          s5, a0, ra
                  sll          t4, a0, s11
                  auipc        s4, 28922
                  andi         s8, a5, 250
                  sra          s5, a7, a4
                  sll          s3, s6, t5
                  slti         s10, t5, 1388
                  nop
                  sltiu        ra, a3, -1845
                  slti         s2, sp, -1988
                  xor          gp, a1, sp
                  auipc        s4, 404490
                  xor          s7, s7, t6
                  sltu         a0, s9, tp
                  sra          s2, a5, gp
                  auipc        a6, 60439
                  andi         s4, zero, -35
                  sub          s7, a4, a6
                  or           s1, s5, a4
                  xori         s9, s8, -1161
                  sltiu        s8, s1, 7
                  srli         tp, a1, 4
                  addi         s5, t4, -1499
                  lui          s3, 374661
                  sltiu        s7, t4, -233
                  andi         zero, s3, -168
                  lui          t5, 999251
                  or           t4, ra, t2
                  add          s2, t0, s4
                  xori         t0, t2, 1685
                  xori         a1, s10, 805
                  srai         s5, zero, 30
                  srli         s9, a6, 5
                  sub          s9, a7, s3
                  sltu         a3, tp, sp
                  lui          s0, 440537
                  nop
                  ori          t0, s3, 1489
                  ori          t5, a0, 1197
                  slti         a4, tp, -1247
                  and          sp, a0, s1
                  addi         tp, s5, -1711
                  ori          t5, a2, 804
                  slt          t0, t6, a3
                  sltu         a6, t0, a3
                  nop
                  lui          s5, 149741
                  sub          tp, s1, s7
                  srai         a1, s3, 30
                  andi         tp, s9, -1612
                  sra          a0, t4, tp
                  sltiu        s1, s5, 232
                  and          s8, t5, s2
                  sll          t5, s0, t3
                  sra          t1, sp, s10
                  ori          s0, t1, -1224
                  sll          sp, a2, t2
                  xori         sp, t5, -1427
                  add          s1, s4, s0
                  auipc        tp, 958565
                  sub          a4, s1, a6
                  lui          t6, 146331
                  add          sp, a4, zero
                  slt          tp, ra, t2
                  sltiu        a3, s7, 1170
                  xori         s5, gp, -173
                  auipc        s4, 476414
                  sub          zero, s3, s1
                  slti         a0, s2, 1121
                  slt          s9, a5, a1
                  andi         a6, t1, -768
                  add          a6, t5, s3
                  sll          a3, a2, a4
                  and          t6, s8, t6
                  srl          s9, t6, t1
                  slt          t6, t1, s9
                  sltiu        t1, s10, -1699
                  sltu         s8, s4, s4
                  slli         t6, t2, 26
                  srl          tp, gp, t0
                  xori         sp, ra, 1911
                  srl          s7, a0, t6
                  addi         s6, s8, 1540
                  ori          tp, s0, -1199
                  sub          t5, a7, s4
                  sra          s3, zero, s11
                  xor          a4, a4, a5
                  xor          zero, sp, s3
                  srl          s5, s11, a6
                  add          t5, t2, s1
                  auipc        s3, 498626
                  xori         a0, ra, -806
                  andi         s4, a4, 1062
                  slti         t6, s1, 89
                  slt          a1, tp, s9
                  lui          t1, 681564
                  srai         s0, s3, 22
                  xor          sp, s4, gp
                  sll          s7, t4, zero
                  lui          t6, 987066
                  and          ra, t2, tp
                  add          a5, a2, t3
                  or           t0, s5, zero
                  xor          s2, sp, gp
                  ori          s4, s6, 1548
                  addi         s11, gp, -1297
                  lui          sp, 913866
                  srai         t5, s9, 16
                  srai         a4, a0, 8
                  slti         sp, s6, 1360
                  sltu         t5, s1, t3
                  andi         a5, t1, -1907
                  sub          a5, tp, s5
                  sra          tp, a0, t3
                  srai         a0, s5, 29
                  lui          s1, 501627
                  ori          s9, a6, 27
                  xori         a1, a5, 1353
                  xori         t1, a6, 1333
                  sltiu        s8, a2, 976
                  xori         t6, s1, -339
                  nop
                  ori          t2, t4, -828
                  xor          t2, s8, tp
                  slt          s2, s8, s4
                  slt          a3, s0, a2
                  xor          s4, s2, a1
                  nop
                  andi         a5, s11, 49
                  nop
                  sll          s3, a2, zero
                  srl          t1, a4, a5
                  add          s8, a2, zero
                  sltiu        s8, t6, -1030
                  srli         t5, s9, 18
                  sub          t0, s4, t1
                  slt          a6, s9, s3
                  lui          gp, 188032
                  srai         a5, t0, 13
                  nop
                  andi         t0, gp, -1049
                  nop
                  sltu         s4, a6, t6
                  sll          s3, t4, s4
                  addi         s11, s1, -1260
                  srli         tp, t1, 6
                  and          zero, s2, a3
                  and          s11, a4, a5
                  and          t6, a6, t5
                  and          tp, s6, a7
                  xori         s5, a0, -1244
                  slt          s6, sp, t3
                  slt          s7, s1, s11
                  and          zero, t6, t5
                  lui          t1, 1037590
                  srai         s11, t6, 7
                  sra          s4, t6, t0
                  or           a1, t5, a1
                  sltu         ra, s1, t2
                  sll          sp, a4, t4
                  addi         t2, s3, 889
                  or           a0, t1, s7
                  slli         a4, zero, 19
                  sltu         t5, s4, ra
                  lui          a5, 113545
                  srl          t1, a1, s8
                  auipc        a5, 291915
                  xor          a1, s1, t6
                  srli         s2, s6, 0
                  srl          zero, t6, a1
                  sltiu        sp, s7, 1383
                  slt          a1, a2, t2
                  auipc        t1, 854858
                  nop
                  slt          t6, s6, s11
                  slli         t0, t1, 15
                  xori         gp, s11, 1021
                  addi         s3, s7, 138
                  xori         t6, a7, -465
                  sub          s4, t6, a6
                  sll          ra, a0, gp
                  sltu         gp, t0, s8
                  slti         s4, a5, 827
                  lui          t0, 547614
                  or           ra, t5, a2
                  nop
                  sll          t0, s5, s6
                  sltiu        a1, s3, 49
                  or           s2, ra, a3
                  sub          t2, s4, s9
                  slli         t0, t0, 18
                  xori         a1, gp, 1266
                  or           ra, s9, a7
                  andi         s6, s9, 1461
                  sra          t1, t2, s9
                  xor          t0, s10, s7
                  sltiu        s2, s3, 711
                  ori          gp, gp, 840
                  srl          s11, s5, a4
                  srl          s7, t3, t5
                  slt          gp, s6, t5
                  xori         s10, t1, 87
                  slt          s4, t1, a4
                  lui          a1, 1007104
                  ori          sp, gp, 1472
                  xori         sp, s11, -806
                  srl          s8, t0, a5
                  lui          sp, 614839
                  sltiu        s10, a0, 265
                  andi         s0, s9, 812
                  auipc        zero, 1004901
                  add          a0, s2, s7
                  slli         t6, a6, 20
                  sll          s0, s10, s7
                  sub          s9, t1, s1
                  sltu         a5, gp, t2
                  lui          s11, 345345
                  xori         t4, ra, 1477
                  add          s9, a2, a2
                  sll          s8, s5, a6
                  sub          s10, t1, a0
                  nop
                  srai         zero, a1, 25
                  xor          t2, t3, zero
                  nop
                  xori         a1, a3, -181
                  lui          a3, 942608
                  ori          a5, a5, -2045
                  srl          t0, s8, s10
                  ori          a5, s1, 398
                  xori         t1, gp, 1347
                  slt          s8, t0, s10
                  sub          t6, tp, zero
                  slti         s5, ra, -999
                  xori         a4, t2, 1956
                  srl          sp, tp, s4
                  addi         s10, s4, 1006
                  slli         a6, s7, 30
                  srai         gp, a5, 30
                  srl          t4, a6, s7
                  slti         t1, t1, -1092
                  add          t6, t5, a0
                  sll          t1, s1, s8
                  sll          s7, t6, t1
                  xor          t2, t1, s10
                  srli         t6, s4, 8
                  slli         s11, s1, 3
                  auipc        t1, 14769
                  xor          s9, a7, zero
                  and          t6, a5, t6
                  add          s1, t0, tp
                  add          s0, t6, a7
                  slt          ra, t6, s8
                  ori          s10, a1, -1812
                  srli         gp, t5, 24
                  ori          t4, a1, -1137
                  ori          s7, ra, 108
                  xor          s3, a4, t3
                  auipc        s6, 603555
                  auipc        a4, 807377
                  sra          s8, t4, s8
                  srai         s2, t4, 16
                  and          t6, s5, s5
                  slt          zero, t6, t6
                  lui          s5, 476633
                  andi         a5, s1, -444
                  slli         t2, s3, 12
                  sll          s5, sp, s11
                  srai         s2, a3, 1
                  slli         s6, s7, 24
                  slli         s8, t0, 2
                  auipc        zero, 230967
                  srli         s3, t3, 30
                  andi         s7, s2, 1180
                  lui          s4, 286219
                  addi         gp, zero, 1494
                  xori         t4, t3, -423
                  sltu         tp, s8, s2
                  sll          t0, s0, t1
                  auipc        t5, 274420
                  sltiu        a3, t5, -1574
                  ori          s5, a5, -1001
                  srai         t0, a7, 2
                  xori         ra, t2, 1696
                  srli         t0, t1, 6
                  srai         t6, a1, 8
                  sltu         s5, s3, a2
                  srli         s0, s1, 1
                  sub          s8, sp, s6
                  ori          t1, tp, -108
                  ori          a4, a7, -569
                  slt          s5, a2, s1
                  addi         s7, a1, 1570
                  sltiu        s2, s3, 1411
                  add          a3, tp, s0
                  sltu         s6, s10, t0
                  slti         s3, s1, -761
                  srai         s10, a5, 31
                  xori         sp, t1, -1116
                  lui          a4, 305706
                  andi         s10, t2, -214
                  nop
                  nop
                  nop
                  srl          s7, a4, s1
                  add          a3, tp, s7
                  srl          a5, a5, gp
                  or           s2, s5, sp
                  andi         ra, s8, -853
                  sra          sp, s4, s7
                  add          s11, t3, t3
                  srl          t5, s0, a5
                  ori          s5, a5, -176
                  auipc        t1, 182463
                  andi         sp, a1, 1330
                  andi         s9, a0, -1935
                  sltiu        tp, a6, -1477
                  slt          s8, a2, a0
                  srl          s0, a2, ra
                  nop
                  srai         sp, s3, 2
                  addi         a6, t5, 1346
                  ori          a5, s7, 1271
                  and          s0, t6, a0
                  sltiu        a0, s2, -1481
                  addi         a5, t2, -813
                  sll          t0, a0, a5
                  xori         t2, s3, -203
                  lui          s8, 928532
                  or           a5, ra, tp
                  sltiu        t2, t4, -228
                  sltu         gp, s5, a2
                  sra          t5, t3, t5
                  srai         t5, tp, 0
                  srli         s10, a5, 24
                  srli         t2, s6, 1
                  andi         s11, s10, 1989
                  xor          s5, gp, s8
                  add          gp, t1, t4
                  srli         s9, a7, 24
                  andi         a4, s7, -282
                  lui          t0, 379841
                  or           s1, a7, ra
                  or           t5, a7, t4
                  and          a0, t3, t0
                  sll          s3, a4, gp
                  srli         gp, a2, 16
                  sltu         t0, a4, a2
                  ori          t4, s10, -1490
                  slti         s9, s7, -206
                  srli         a1, gp, 19
                  slti         s4, s9, 647
                  sub          zero, s2, s3
                  andi         a5, s0, 237
                  auipc        s4, 404443
                  slti         t2, a4, -325
                  slt          t2, s3, zero
                  sub          t5, a4, s0
                  srai         s7, s10, 10
                  slli         a0, s1, 18
                  and          a1, a7, t6
                  ori          t6, s0, 1380
                  sltu         s1, t4, a1
                  add          t6, a5, s1
                  slli         s1, t5, 27
                  xor          a0, a1, s11
                  and          t5, t6, s8
                  sub          s8, s3, s11
                  xori         s5, t1, -1442
                  or           s7, s3, t4
                  srli         t2, s9, 14
                  ori          s1, tp, 1128
                  sltu         t4, a4, s9
                  xori         t6, a2, -1669
                  andi         t4, t4, 296
                  add          t2, s5, t4
                  sltiu        s1, t1, 362
                  lui          a3, 425793
                  srl          t5, zero, t4
                  sub          s11, s8, s10
                  addi         s4, s3, -809
                  sra          sp, a5, s6
                  add          gp, a6, t1
                  or           ra, t6, a4
                  slt          a5, gp, s5
                  andi         t5, zero, 851
                  and          t2, s7, s1
                  ori          s8, s11, -1859
                  srli         t0, s6, 17
                  sra          s1, t3, s4
                  andi         s11, a1, -415
                  and          s5, t3, a5
                  lui          s2, 697596
                  lui          s11, 274092
                  xori         s8, s8, 1175
                  add          s7, s1, s4
                  or           gp, a6, s7
                  sra          a4, s11, t1
                  and          t1, s0, a7
                  srl          tp, s11, a7
                  addi         zero, t1, -1112
                  sll          s3, gp, a0
                  slli         t5, tp, 17
                  srai         s8, a3, 10
                  ori          a4, a7, -911
                  slt          s7, ra, t4
                  or           s1, s6, zero
                  xor          s10, s10, s8
                  sll          s6, s1, t4
                  nop
                  sub          t2, t1, t1
                  slli         s7, s0, 20
                  auipc        s3, 595636
                  slli         s10, sp, 12
                  slt          ra, a1, s2
                  slli         t4, t1, 23
                  sub          s10, s11, zero
                  add          t2, t1, a7
                  slti         t2, a4, -9
                  xori         s9, s4, -813
                  sra          a3, gp, s8
                  slti         t2, t0, -552
                  ori          s2, tp, -1527
                  nop
                  nop
                  sll          t0, t3, t6
                  sra          s9, s4, gp
                  andi         sp, ra, -453
                  slt          a6, ra, a0
                  slli         t4, s2, 15
                  and          ra, t3, s10
                  add          a5, s0, a2
                  xori         t4, s10, -1050
                  ori          s11, t6, -416
                  sltu         a5, sp, t0
                  or           a6, t3, t5
                  lui          a3, 833691
                  srli         a5, t3, 24
                  lui          s8, 967937
                  slli         a6, s7, 13
                  srai         s4, s9, 21
                  sltiu        t0, t2, 432
                  nop
                  slt          gp, s0, a2
                  addi         a4, zero, -310
                  xori         a5, a1, -561
                  sra          t6, s5, a3
                  la x12, test_done
                  jalr x0, x12, 0
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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_2:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_3:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_4:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_5:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_6:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_7:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_8:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_9:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_10:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_11:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_12:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_13:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_14:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_15:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x10, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x10, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x10, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x10, x26, ecall_handler
                  li x26, 0x1
                  beq x10, x26, instr_fault_handler
                  li x26, 0x5
                  beq x10, x26, load_fault_handler
                  li x26, 0x7
                  beq x10, x26, store_fault_handler
                  li x26, 0xc
                  beq x10, x26, pt_fault_handler
                  li x26, 0xd
                  beq x10, x26, pt_fault_handler
                  li x26, 0xf
                  beq x10, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x28, x17, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x17, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x17, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x28, x17, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x28, x17, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x28, x17, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
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
