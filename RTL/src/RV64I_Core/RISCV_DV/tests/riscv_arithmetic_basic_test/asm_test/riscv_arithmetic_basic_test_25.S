.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x4, kernel_stack_end

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
                  li x0, 0xf792c8f3
                  li x1, 0xf66fd55c
                  li x2, 0x8edd728b
                  li x3, 0x80000000
                  li x5, 0x2
                  li x6, 0x0
                  li x7, 0x915709e9
                  li x8, 0x0
                  li x9, 0xf6ce58e0
                  li x10, 0xf
                  li x11, 0x0
                  li x12, 0x4d1f54bd
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x9d2c7067
                  li x18, 0x4
                  li x19, 0x61719417
                  li x20, 0xfd247179
                  li x21, 0x1
                  li x22, 0xa23889a8
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0xf7cf2b10
                  li x26, 0x0
                  li x28, 0xe
                  li x29, 0xf185d0e0
                  li x30, 0x0
                  li x31, 0x80000000
                  la x27, user_stack_end
main:             li           a5, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           s6, 0xd4a8fc0b
                  li           a7, 0x0
                  li           gp, 0x80000000
                  li           s1, 0x8e7a0311
                  li           t2, 0xa1837a62
                  li           s4, 0x0
                  li           s0, 0x80000000
                  li           s10, 0x80000000
                  li           s7, 0x80000000
                  lui          t2, 991053
                  sub          a7, a5, s4
                  nop
                  add          s0, a5, s4
                  auipc        a7, 443369
                  sub          s0, s0, s1
                  add          s10, s0, s0
                  add          gp, a5, s0
                  addi         s0, a7, 571
                  lui          gp, 379923
                  nop
                  add          t2, gp, s4
                  add          s6, gp, t2
                  auipc        s0, 428092
                  lui          s6, 773151
                  sub          a5, t2, s0
                  sub          gp, s6, gp #end riscv_int_numeric_corner_stream_17
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s3, 0x0
                  li           t6, 0x108e49a5
                  li           t2, 0x82c141b7
                  li           s6, 0xffffffff
                  li           s0, 0x0
                  li           s9, 0xffffffff
                  li           a2, 0x0
                  li           t5, 0xffffffff
                  li           sp, 0x38dbff2b
                  nop
                  add          s10, s0, s3
                  addi         s3, s9, 398
                  auipc        t5, 402623
                  add          s10, s10, sp
                  lui          s10, 773669
                  lui          s10, 996454
                  nop
                  lui          t5, 87503
                  nop
                  lui          s3, 64707
                  nop
                  auipc        s10, 403071
                  nop
                  sub          s6, s0, a2
                  add          sp, sp, s10
                  auipc        s0, 540408
                  auipc        a2, 326044
                  addi         t5, s6, -400
                  auipc        s9, 947277
                  lui          sp, 545259
                  lui          s9, 925183
                  nop
                  addi         s3, s10, 1822
                  lui          s3, 1015299
                  addi         t6, a2, 1213
                  auipc        s3, 768747
                  addi         a2, t2, -1700
                  nop #end riscv_int_numeric_corner_stream_0
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           s8, 0x99b247d2
                  li           s6, 0x99254ac7
                  li           a4, 0x80000000
                  li           s2, 0x80000000
                  li           t2, 0x0
                  li           s10, 0x6417c701
                  li           t1, 0x80000000
                  li           ra, 0x9c1662e9
                  li           s7, 0xaf8c3839
                  sub          ra, ra, a5
                  auipc        s8, 352790
                  lui          a5, 601851
                  sub          s8, s2, t2
                  auipc        t2, 247659
                  addi         s7, t1, -650
                  lui          s7, 102686
                  nop
                  nop
                  nop
                  lui          s2, 1014497
                  auipc        s10, 39390
                  addi         a4, s10, 1712
                  auipc        s10, 79842
                  sub          t1, a5, a4
                  lui          s2, 1014807 #end riscv_int_numeric_corner_stream_10
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s0, 0x80000000
                  li           t1, 0xffffffff
                  li           a1, 0x5f03fc88
                  li           s7, 0x80000000
                  li           a5, 0x80000000
                  li           t3, 0xd0c53300
                  li           s3, 0xffffffff
                  li           s6, 0x80000000
                  li           a0, 0xffffffff
                  auipc        t1, 924697
                  auipc        t1, 67050
                  lui          s9, 765000
                  sub          a0, t1, s3
                  addi         s9, t1, -1220
                  auipc        a1, 472289
                  addi         t1, t3, 1557
                  nop
                  lui          s0, 152194
                  sub          s0, a5, s0
                  addi         s7, s7, -862
                  lui          s3, 1041137
                  addi         t3, t1, -1242
                  addi         s0, s9, -145
                  addi         a5, a5, 1675
                  auipc        t1, 110743
                  add          a0, t3, s9
                  lui          s7, 246133
                  addi         t1, t3, -320
                  lui          s7, 172898
                  lui          s3, 852135 #end riscv_int_numeric_corner_stream_4
                  li           t0, 0xc265edfc #start riscv_int_numeric_corner_stream_14
                  li           t2, 0x80000000
                  li           a1, 0xffffffff
                  li           t3, 0xffffffff
                  li           a5, 0x80000000
                  li           t4, 0x80000000
                  li           a2, 0xbadeae1f
                  li           gp, 0xffffffff
                  li           s0, 0x80000000
                  li           a0, 0xcbe4ae38
                  nop
                  auipc        t0, 343770
                  auipc        t4, 141532
                  add          t3, a2, a5
                  nop
                  nop
                  addi         a5, a5, 623
                  addi         s0, t3, -131
                  addi         t3, t2, 330
                  sub          a0, t0, a1
                  nop
                  auipc        a0, 975069
                  addi         s0, a5, 138
                  add          t3, a2, a2
                  add          a2, a2, s0
                  add          s0, s0, gp
                  add          t0, t4, a1 #end riscv_int_numeric_corner_stream_14
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           t5, 0x80000000
                  li           a0, 0xbb766cea
                  li           s3, 0x0
                  li           s5, 0x0
                  li           ra, 0x40ba3d1f
                  li           t3, 0x8d066175
                  li           s10, 0x22a80555
                  li           a4, 0x0
                  li           a5, 0x80000000
                  nop
                  add          s3, s10, s3
                  addi         s3, t3, 1225
                  addi         ra, s3, 1674
                  lui          s5, 396754
                  add          s10, a5, s5
                  add          sp, ra, a0
                  sub          sp, s3, ra
                  add          sp, s10, s10
                  lui          t3, 341661
                  addi         a5, t3, 1688
                  sub          s10, t3, a0
                  nop
                  lui          a0, 350960
                  nop
                  auipc        ra, 965209
                  nop #end riscv_int_numeric_corner_stream_18
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           s1, 0xffffffff
                  li           t1, 0x80000000
                  li           sp, 0x0
                  li           s2, 0xffffffff
                  li           t5, 0x80000000
                  li           ra, 0xffffffff
                  li           t3, 0x80000000
                  li           t0, 0x6b40622d
                  li           a0, 0x80000000
                  addi         t1, sp, 1116
                  lui          sp, 834237
                  auipc        t0, 577748
                  addi         s2, t5, -542
                  lui          t1, 1030890
                  nop
                  lui          s1, 677435
                  auipc        sp, 24195
                  lui          a1, 585782
                  addi         t0, t3, -332
                  add          a0, t0, s1
                  addi         t1, t1, -836
                  auipc        ra, 563666
                  add          t3, t1, sp
                  auipc        s2, 32090 #end riscv_int_numeric_corner_stream_6
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           gp, 0x80000000
                  li           s3, 0xe6bf3e8d
                  li           ra, 0x0
                  li           a2, 0x202af3a2
                  li           a7, 0x80000000
                  li           a0, 0x81d72712
                  li           s9, 0x0
                  li           s1, 0x2577a7d5
                  li           t1, 0xffffffff
                  lui          a2, 339090
                  add          a7, a7, s3
                  nop
                  lui          s1, 934862
                  add          s9, a0, s3
                  sub          t1, t1, s2
                  nop
                  lui          ra, 869465
                  lui          t1, 617340
                  sub          gp, s1, s1
                  addi         s1, t1, -784
                  lui          gp, 413630
                  add          s1, a2, s3
                  addi         s1, t1, 893
                  lui          a7, 521833
                  auipc        a2, 226333
                  nop
                  auipc        a7, 770882
                  addi         a2, a2, 1289
                  addi         ra, ra, 1547
                  add          gp, s9, s3
                  sub          s9, s3, s1
                  addi         s2, s3, -635
                  sub          ra, s2, t1
                  auipc        s3, 374535
                  auipc        t1, 824425
                  addi         s9, a2, -1614 #end riscv_int_numeric_corner_stream_19
                  or           a0, s6, t1
                  slt          a7, s3, a4
                  sltu         s0, ra, a3
                  srl          a0, a3, s0
                  sltiu        s10, a7, -1653
                  srli         a0, t5, 14
                  xori         sp, a0, -1917
                  lui          s8, 494773
                  slli         t5, a7, 13
                  slt          a2, s6, t4
                  xori         t2, a0, 1145
                  srli         a3, t6, 27
                  sll          t4, a7, s4
                  slli         a1, s7, 30
                  sub          t6, sp, s4
                  slt          s5, t0, t6
                  auipc        a3, 133675
                  srli         t0, a7, 7
                  xor          s5, t0, s11
                  sltiu        s2, a2, -1883
                  slt          s1, s7, a7
                  nop
                  ori          s3, s4, 1596
                  addi         s8, tp, 1497
                  add          s10, t3, s11
                  sll          s8, s0, s8
                  andi         a1, s0, -975
                  sub          t2, s2, s1
                  sub          s3, a2, a7
                  sra          t0, s3, s9
                  slli         s10, t0, 13
                  auipc        s9, 1029849
                  auipc        s9, 303780
                  slli         s1, a2, 1
                  addi         s2, s1, -1545
                  srl          sp, tp, s0
                  ori          s6, s0, -260
                  xor          t1, t4, a1
                  srl          t4, a4, s1
                  xori         a3, t3, -430
                  srl          s9, s2, s7
                  add          s7, gp, a4
                  lui          t0, 1001111
                  ori          gp, t1, -25
                  slti         sp, s2, -1575
                  sltu         a1, s7, s8
                  or           a2, a2, ra
                  sltu         a7, ra, a4
                  slti         t2, t6, -689
                  addi         t0, s9, -1936
                  sub          s4, ra, a7
                  sltiu        t3, t4, 726
                  and          s1, a1, a1
                  auipc        t4, 1004069
                  sltiu        s5, a1, 1545
                  sub          ra, a3, s4
                  nop
                  lui          ra, 289986
                  sltiu        s3, a4, -1943
                  and          a2, t4, zero
                  xor          s0, t6, s10
                  andi         t1, s7, -1435
                  sub          a5, s6, a7
                  srli         sp, s11, 19
                  xor          ra, t4, s2
                  xor          a3, t6, s0
                  ori          t3, t6, 577
                  srai         t4, t3, 30
                  and          s10, a0, s1
                  xor          s7, t1, s0
                  lui          s0, 775861
                  srai         t5, s10, 24
                  addi         t0, a5, -907
                  auipc        s4, 517467
                  slt          t6, s0, a3
                  lui          s0, 417354
                  srai         a7, s9, 16
                  sra          s1, s10, s7
                  nop
                  and          zero, a4, t4
                  lui          s9, 918331
                  lui          a5, 440093
                  sltu         t2, s3, s6
                  slti         s4, t6, 1789
                  srli         s9, sp, 14
                  slt          a3, a3, a2
                  lui          t2, 78491
                  addi         a5, t5, -354
                  or           t4, a5, s8
                  and          t2, t4, t5
                  srli         a3, ra, 26
                  auipc        s10, 169883
                  srai         sp, s0, 22
                  ori          s7, a7, 1309
                  xor          t2, t1, a6
                  addi         a0, a5, 2
                  slt          ra, sp, a2
                  xor          s9, ra, a5
                  slli         a7, t3, 10
                  add          a1, sp, t4
                  add          sp, t3, a2
                  auipc        a4, 927525
                  auipc        ra, 135294
                  sra          gp, a2, s5
                  nop
                  sltiu        s1, s11, -962
                  nop
                  slli         a2, a6, 24
                  addi         a4, a5, -155
                  slli         t4, s5, 1
                  lui          t4, 254749
                  lui          gp, 446704
                  sra          t0, ra, a4
                  srai         a2, s10, 23
                  sltu         s1, zero, t4
                  and          s2, s10, t0
                  slt          sp, s11, s4
                  and          s4, a2, s5
                  add          s5, s8, t6
                  srl          s6, s9, t2
                  srai         s2, a5, 24
                  srli         t5, tp, 17
                  andi         t4, a1, -1330
                  srli         a0, sp, 17
                  sub          s9, s3, a0
                  slt          t6, t1, a4
                  slt          a7, t3, s9
                  auipc        t2, 475244
                  and          s2, a2, sp
                  slti         a2, t1, 1863
                  andi         s9, s10, -1499
                  srli         s6, s0, 21
                  andi         zero, a4, 342
                  srai         s1, zero, 6
                  xori         s3, s6, 831
                  and          zero, s6, t5
                  slt          s0, t5, t0
                  addi         t5, s9, -794
                  lui          t4, 994581
                  sub          s7, a3, t5
                  sltiu        s0, gp, -1022
                  and          s5, s0, t2
                  ori          t6, t5, -1734
                  add          a1, a3, a0
                  nop
                  srl          s0, a4, s7
                  and          t5, s0, s0
                  xor          s0, a1, zero
                  sub          a5, sp, gp
                  srl          a3, t0, a1
                  xor          t1, a6, t4
                  lui          ra, 595622
                  sltu         t6, a3, sp
                  srl          a4, a1, t1
                  slti         s9, a0, -314
                  add          a7, s2, a2
                  xori         t5, a0, 711
                  andi         t5, sp, -1155
                  add          s5, a3, a6
                  nop
                  slt          a0, a5, t5
                  xor          a7, gp, sp
                  slt          t2, a2, t4
                  ori          t5, a2, 619
                  srl          s3, s1, s0
                  sltu         s5, s11, ra
                  sll          s1, t1, a0
                  and          s4, t6, s1
                  or           zero, s9, a4
                  slti         s6, s5, 1889
                  sub          s0, s4, t2
                  nop
                  nop
                  and          t1, s8, zero
                  sll          s2, a5, t3
                  or           t4, s11, s6
                  add          sp, a5, s8
                  sra          a5, ra, s7
                  sltiu        t2, zero, -957
                  sltu         t3, ra, t5
                  lui          s1, 706887
                  srl          a4, a4, t0
                  slli         t0, t0, 31
                  slt          s2, a4, ra
                  auipc        t5, 24020
                  sub          t2, s9, s4
                  sra          gp, a6, zero
                  lui          s9, 657065
                  srl          t6, t6, s6
                  lui          s2, 144032
                  addi         s10, ra, -287
                  nop
                  or           t4, s11, a0
                  sltu         t1, a5, a4
                  andi         t5, s5, 1967
                  and          a0, a7, s9
                  sra          s2, s8, s11
                  sltiu        a4, tp, -713
                  slt          a7, t3, t5
                  sltu         s1, t2, a0
                  add          a0, t6, tp
                  and          sp, ra, s7
                  lui          t5, 809318
                  slli         t3, sp, 14
                  nop
                  sltiu        t1, t2, -279
                  srli         gp, gp, 24
                  slti         s9, t6, -566
                  slt          s4, t3, a1
                  sltiu        s6, t0, 756
                  slli         s0, gp, 7
                  sltiu        ra, sp, 1669
                  sra          s0, t0, t1
                  sltu         t4, a0, t0
                  and          ra, s7, t4
                  andi         a3, s2, 858
                  nop
                  and          s6, a0, zero
                  andi         s10, a0, -981
                  ori          t2, s7, -1489
                  sll          s1, s5, s7
                  sll          t1, s3, s5
                  sub          t6, t3, t5
                  or           a7, t6, s10
                  slt          s10, t3, s9
                  srli         s7, a7, 9
                  sub          a4, s11, s7
                  sll          t4, s8, a3
                  sltiu        gp, s3, 1021
                  sra          a7, t4, s8
                  addi         t2, s5, -1739
                  xor          sp, tp, s3
                  andi         t6, s3, 669
                  lui          s10, 438407
                  andi         t4, t0, -862
                  sra          zero, t4, t0
                  srai         a0, t4, 11
                  sltiu        a5, tp, 1803
                  ori          a5, s10, -879
                  auipc        s4, 213695
                  add          s7, ra, s2
                  lui          gp, 869522
                  sra          a7, a2, t1
                  or           s6, a2, s9
                  nop
                  xor          t3, a0, tp
                  or           s5, a0, ra
                  xori         s6, t5, -1495
                  ori          a5, t5, 1848
                  addi         a2, s2, 866
                  xor          s9, s10, gp
                  slli         a7, tp, 27
                  or           a2, sp, tp
                  srai         a2, t0, 16
                  slli         t0, a1, 12
                  sltu         s8, t1, a2
                  srai         t1, a3, 15
                  slt          t5, a4, s8
                  xori         t5, a0, 35
                  slti         s7, a6, 995
                  sltu         s1, s10, tp
                  xori         s8, a1, 53
                  sltu         t1, s11, t3
                  ori          a2, a7, 1296
                  sltu         a2, a2, s10
                  addi         t5, a6, 1084
                  nop
                  and          a7, s8, t4
                  srai         gp, s11, 20
                  slti         zero, ra, 245
                  and          gp, s6, zero
                  slli         s3, s11, 21
                  slti         s6, s0, -1052
                  ori          s6, s7, 693
                  addi         t4, a5, -1802
                  sra          s10, a1, gp
                  xori         a3, a4, -239
                  sltu         s1, s0, s10
                  or           s6, a7, s9
                  sub          t2, t1, s10
                  sub          a5, t2, t6
                  srli         s6, s7, 27
                  sltiu        t0, s0, -1541
                  andi         a2, a1, -1077
                  sltiu        a1, t0, -1193
                  sub          a4, s6, a5
                  slli         gp, s9, 9
                  ori          t4, a3, 1286
                  or           a5, t5, s8
                  srli         s5, zero, 19
                  srai         s10, zero, 22
                  srli         gp, zero, 12
                  sub          t1, s4, tp
                  slti         a0, s3, 1309
                  srai         ra, s9, 0
                  addi         s0, t4, -91
                  nop
                  andi         a5, s10, -196
                  slti         t6, t1, -293
                  slt          a4, s11, a6
                  andi         s1, s8, 985
                  slli         s6, a0, 25
                  sltu         s2, a7, tp
                  or           ra, t1, s3
                  srai         s8, a6, 29
                  slt          s8, s11, t6
                  andi         s7, s2, 45
                  nop
                  xor          a7, t3, s6
                  srli         a4, t0, 9
                  srli         s2, t0, 12
                  sltiu        a2, t1, 1180
                  slti         gp, s1, 512
                  auipc        zero, 241393
                  slti         t6, a6, -1228
                  nop
                  srai         s9, t6, 19
                  lui          t6, 604438
                  lui          a2, 264330
                  ori          sp, s11, -392
                  srli         a2, s1, 27
                  or           a1, s11, t5
                  slt          s10, s5, t6
                  lui          s0, 91941
                  xor          t3, zero, t3
                  srli         a2, t2, 24
                  srli         s9, a0, 25
                  sltiu        a0, t0, -277
                  sltiu        a4, s1, 1552
                  slt          s1, a4, s5
                  srl          t3, s2, s11
                  sra          s4, s7, t5
                  xori         s0, a2, 619
                  add          ra, t5, s7
                  slli         gp, t0, 21
                  andi         t6, t3, -1835
                  slti         a2, s8, 967
                  sll          s9, s5, t3
                  auipc        s6, 1009025
                  sub          a2, s7, t2
                  slti         t6, zero, -1235
                  sub          gp, s8, s8
                  xori         t1, a5, 346
                  srl          a4, a7, a2
                  srai         zero, s0, 5
                  and          t0, a2, sp
                  nop
                  srl          zero, t6, a2
                  sub          t5, a5, s5
                  sra          t6, ra, t4
                  andi         s0, t6, -451
                  sll          a2, s1, t4
                  andi         s4, t3, -1961
                  sltu         a5, a4, a2
                  addi         s4, zero, 665
                  xori         s4, s9, -424
                  srli         s9, s11, 4
                  lui          t1, 382031
                  auipc        s8, 530048
                  slli         gp, t6, 29
                  sra          s6, s0, t1
                  addi         t0, s3, -1241
                  srl          a2, a4, ra
                  addi         s5, s1, 1563
                  sltiu        a2, sp, 861
                  lui          a3, 106253
                  and          a3, zero, s7
                  ori          sp, t0, -507
                  or           a3, t2, a4
                  slt          t3, s1, a1
                  slti         a2, s11, -1686
                  lui          s6, 1024088
                  auipc        a7, 37021
                  lui          zero, 321774
                  and          a4, t2, a4
                  slt          t3, s10, ra
                  sltiu        a3, t5, 400
                  and          t4, s10, s6
                  auipc        s7, 864391
                  sll          s3, tp, a2
                  srli         gp, t5, 9
                  xori         a1, s0, 1471
                  sra          zero, a0, t1
                  xori         s3, a0, -2028
                  or           s9, t0, sp
                  ori          s4, zero, 1163
                  or           s3, s9, s10
                  xor          s7, s11, t1
                  srli         s0, s0, 26
                  sra          s7, a7, s10
                  addi         s4, a7, 1321
                  slli         a4, a0, 30
                  nop
                  addi         t3, t4, -584
                  xor          sp, s2, a1
                  sll          a0, gp, sp
                  or           t2, sp, s11
                  sltu         t3, s6, t5
                  slli         s0, t2, 0
                  sll          t1, t5, a1
                  sub          t0, s4, s8
                  andi         a1, t0, -760
                  add          s3, s5, t3
                  sltiu        sp, zero, 176
                  xor          zero, ra, gp
                  slt          s7, t3, tp
                  sltu         t4, a0, a5
                  ori          t0, s10, 108
                  nop
                  slti         t3, s5, -2000
                  sll          sp, sp, t5
                  lui          a7, 286983
                  sra          t3, zero, a6
                  addi         s5, s7, -619
                  sltiu        t3, a0, 1116
                  or           s5, s2, t5
                  add          t3, gp, s11
                  addi         t1, a7, 813
                  ori          s4, s7, 720
                  addi         t3, t3, 832
                  xori         sp, s7, 1941
                  slli         gp, s9, 9
                  slt          t5, t6, s11
                  srl          s1, tp, s6
                  or           a3, t4, tp
                  sll          a7, zero, s5
                  slli         s10, ra, 14
                  slli         zero, a7, 12
                  slti         gp, s3, -555
                  sltu         gp, t2, ra
                  sltiu        s9, s10, -311
                  sltu         s1, t1, ra
                  lui          gp, 53855
                  sltiu        ra, tp, 168
                  addi         t6, t2, 1002
                  sltiu        s6, t6, -1950
                  addi         s8, a2, 1502
                  slli         ra, t1, 25
                  slli         a4, s5, 28
                  srai         a4, t3, 30
                  sra          gp, t3, s6
                  srl          t3, s10, t3
                  nop
                  nop
                  ori          t3, s1, -1985
                  xor          s2, s11, t1
                  slli         s2, t1, 2
                  slli         a1, t4, 3
                  srl          a0, sp, t2
                  ori          a4, a4, 880
                  slti         s6, s2, 1176
                  sltiu        s6, a5, -1215
                  nop
                  lui          t0, 21713
                  ori          s8, a1, 322
                  sll          sp, t5, t4
                  sll          t1, a3, s10
                  slt          t0, s5, tp
                  addi         s7, a4, 33
                  add          s6, a0, a5
                  nop
                  lui          zero, 235058
                  add          s1, s2, a1
                  ori          t1, s10, 246
                  lui          gp, 1000150
                  sub          t2, s2, s5
                  and          t3, t1, sp
                  srli         s5, s9, 25
                  addi         s2, s3, -1347
                  andi         s9, t2, -147
                  ori          s4, a0, -623
                  nop
                  sra          s6, t5, s10
                  srli         ra, t2, 26
                  sll          t4, t2, a2
                  slt          a3, ra, s11
                  xori         sp, t1, 954
                  slt          sp, a0, ra
                  xori         t3, s7, -1294
                  add          s10, ra, s7
                  sltiu        a5, a1, 1999
                  xor          t5, s0, zero
                  sltiu        s10, t5, 1503
                  ori          a0, tp, 1307
                  sra          gp, t1, a1
                  lui          t4, 889259
                  sltu         s7, t3, a0
                  xori         s5, s7, -1442
                  srli         t6, s2, 14
                  srl          t2, t0, a1
                  or           t1, s2, s8
                  xor          t2, s3, s9
                  slli         s1, a2, 15
                  xori         s1, s8, -917
                  and          t3, s0, a2
                  sltu         a3, a1, a5
                  nop
                  add          a7, s8, zero
                  slli         t5, a2, 5
                  nop
                  xor          s5, t4, a1
                  srl          s10, s7, s6
                  add          s8, zero, s5
                  sltu         a2, a6, s2
                  xor          t4, t3, a1
                  srl          t3, a3, s2
                  slli         t5, gp, 13
                  srli         t3, t2, 16
                  sra          gp, a4, s10
                  andi         s5, t0, 611
                  add          t1, s0, gp
                  sra          ra, a3, t2
                  or           sp, ra, s6
                  sra          t5, gp, s5
                  add          a2, s8, a6
                  ori          s1, ra, -1984
                  srl          a7, a0, s11
                  auipc        s7, 1029024
                  srl          t0, s3, s1
                  slti         s2, t6, 1771
                  or           a7, a2, s10
                  slt          s8, a1, a1
                  or           sp, a3, s9
                  add          s9, a3, sp
                  slli         a1, s5, 31
                  nop
                  or           t3, t6, ra
                  srli         t4, t0, 31
                  srai         s10, a3, 16
                  ori          t1, tp, 1111
                  addi         s1, s11, -589
                  sltu         s10, s5, a0
                  ori          a0, s9, 349
                  srli         a1, s10, 8
                  srai         a1, t6, 29
                  srl          s3, a1, a0
                  slli         s7, t2, 10
                  nop
                  sltiu        a2, t6, 728
                  and          ra, a4, t2
                  srai         t6, s10, 21
                  lui          t5, 871361
                  or           a4, a5, t5
                  auipc        gp, 326324
                  lui          zero, 398669
                  slt          s0, s8, tp
                  and          s6, t1, zero
                  andi         s3, s2, 368
                  sltiu        s7, t0, -1005
                  nop
                  addi         s8, t2, 1771
                  add          s3, a2, a2
                  addi         zero, s0, -1521
                  srli         t6, sp, 19
                  sra          s6, s3, t6
                  slt          t5, gp, a7
                  addi         a4, s9, 1701
                  sra          t6, gp, a5
                  slli         t6, a7, 8
                  sra          a2, t4, s10
                  sll          s6, s8, s9
                  ori          t4, s1, -546
                  addi         t2, a1, -511
                  srli         s9, t3, 15
                  sll          ra, a5, s1
                  or           a1, s3, s4
                  srli         s10, s4, 23
                  add          a7, t5, t3
                  lui          a1, 436957
                  srl          gp, s10, s11
                  slt          s5, t6, sp
                  or           s1, ra, t4
                  nop
                  ori          t1, t2, 1840
                  sltu         s1, a7, t6
                  sub          s2, t0, t4
                  lui          s7, 234052
                  slt          s1, a1, s1
                  andi         t3, s8, -1186
                  auipc        gp, 319644
                  sub          t4, a7, s9
                  auipc        s9, 84565
                  slti         ra, s7, -1120
                  srai         sp, s1, 15
                  sll          a1, s3, t3
                  auipc        a5, 70124
                  or           ra, s1, sp
                  addi         a5, s10, 1936
                  srl          t4, s3, a5
                  lui          t5, 342007
                  lui          t2, 201444
                  slt          a3, ra, s1
                  srl          a7, t2, s5
                  sltiu        t6, s3, 1142
                  lui          sp, 283653
                  andi         a3, tp, -1839
                  nop
                  auipc        zero, 916878
                  xor          zero, ra, a3
                  sll          t6, a1, a6
                  slli         t6, s0, 27
                  srli         a2, a7, 11
                  srl          t3, t5, s5
                  and          t2, tp, tp
                  add          t4, t4, tp
                  slt          s1, a2, a4
                  sltiu        gp, sp, -1189
                  sra          zero, t4, t6
                  xor          a5, zero, gp
                  slti         s1, sp, 1502
                  ori          t5, a4, 2041
                  or           s6, t4, s2
                  auipc        s1, 606356
                  xori         s8, s8, 373
                  sra          s1, t3, ra
                  sltu         s0, s8, t1
                  slli         sp, s3, 12
                  sra          a1, a2, t3
                  sltu         s4, a6, a4
                  srli         zero, s10, 2
                  slt          ra, s7, s9
                  slli         t0, ra, 20
                  slt          zero, s2, t4
                  slt          t6, t3, a6
                  sra          s8, s8, sp
                  ori          s9, t6, 701
                  slli         s8, s2, 17
                  sra          t0, a3, s4
                  xor          s2, s7, gp
                  sub          t4, gp, a0
                  slli         a1, a1, 13
                  slt          s1, s5, ra
                  add          t4, t3, a4
                  or           a7, a1, s1
                  sltiu        t5, a6, 1548
                  nop
                  add          t1, zero, t6
                  sra          s2, s10, t2
                  addi         s10, a2, 1024
                  sra          s9, t0, tp
                  sra          s4, a5, ra
                  xori         gp, tp, 1503
                  auipc        s2, 671
                  addi         t3, t6, -952
                  or           s0, sp, s5
                  srl          t1, a3, a2
                  srl          s1, a1, gp
                  slt          t5, tp, zero
                  add          zero, t5, s9
                  xor          t5, tp, s7
                  andi         gp, s2, 1219
                  lui          a4, 708314
                  sltiu        ra, t1, 1582
                  sltu         a5, s10, a2
                  or           a0, t1, tp
                  auipc        s7, 521343
                  ori          t3, a2, -766
                  xori         ra, t1, -1438
                  sra          t5, gp, t1
                  sll          s8, a7, a2
                  sub          t5, s8, t6
                  slt          a5, s6, s5
                  nop
                  andi         t6, a2, -1061
                  slti         t6, s7, 253
                  lui          s1, 51090
                  andi         t0, gp, -1567
                  slt          sp, t4, t4
                  sltiu        s10, gp, 1962
                  slt          t4, ra, s5
                  slli         t0, s7, 4
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           s2, 0x80000000
                  li           t0, 0x9dec100d
                  li           a5, 0xffffffff
                  li           s5, 0xecac86f4
                  li           t3, 0x80000000
                  li           s7, 0xae72c342
                  li           t4, 0x80000000
                  li           ra, 0x0
                  li           sp, 0xffffffff
                  auipc        s7, 518306
                  nop
                  lui          s2, 558836
                  nop
                  sub          t4, a3, t3
                  add          t0, s7, t4
                  auipc        s5, 394822
                  add          s7, a3, a5
                  lui          a5, 716004
                  lui          t4, 655898
                  lui          s2, 843678
                  add          a5, s2, ra
                  add          t0, s5, s5
                  lui          s7, 278481
                  nop
                  sub          s7, t0, s7
                  auipc        s5, 613966
                  auipc        t3, 616135
                  addi         t4, t3, 1826
                  nop
                  addi         a3, a3, 366
                  auipc        sp, 330266
                  lui          s5, 403647
                  nop
                  sub          s7, t3, t4
                  sub          t0, s7, t3 #end riscv_int_numeric_corner_stream_3
                  add          t4, sp, t3
                  auipc        t6, 648843
                  nop
                  sltiu        a5, s8, 1022
                  lui          s5, 232895
                  sll          a0, a6, a1
                  addi         s2, a3, 1607
                  ori          s3, s3, 1514
                  auipc        t2, 774140
                  auipc        s3, 975560
                  slli         gp, sp, 9
                  slli         s7, a4, 26
                  sltiu        t3, gp, 1436
                  srli         s5, t0, 3
                  andi         zero, s0, -202
                  slt          s2, tp, a1
                  addi         t1, t0, -73
                  add          s5, s1, a5
                  and          s4, s6, s5
                  ori          t0, a1, 1
                  auipc        s6, 184360
                  srl          a3, t2, a3
                  slli         s0, zero, 9
                  auipc        s4, 82226
                  lui          a4, 1031148
                  slli         t3, gp, 8
                  sub          t3, sp, t6
                  xor          t3, zero, a0
                  xori         t3, t4, 326
                  nop
                  addi         t6, a1, -43
                  sll          t1, s7, s6
                  nop
                  ori          ra, sp, -673
                  sltiu        t5, t6, -870
                  lui          s6, 50015
                  ori          s8, a4, -903
                  srai         a0, s0, 2
                  lui          a2, 773822
                  slt          zero, t6, t0
                  sltu         gp, t1, s9
                  add          s6, a5, s9
                  or           t0, t1, sp
                  slli         s0, s10, 15
                  auipc        t5, 756110
                  srli         t0, s5, 21
                  add          s10, s2, a0
                  sltiu        t3, s6, 1178
                  nop
                  srli         s0, s7, 0
                  slli         gp, a6, 6
                  srli         s0, s2, 29
                  slli         s9, t5, 20
                  sub          s5, t6, s7
                  slli         s7, a1, 5
                  sltiu        t0, s3, -1377
                  xor          t0, s6, t4
                  slt          a1, s6, s8
                  slti         s9, t4, 1164
                  andi         s2, a5, 1265
                  srl          a0, s3, t0
                  xori         a0, s6, -335
                  sll          s2, s2, s4
                  nop
                  ori          ra, t5, 1089
                  slti         t5, s10, 173
                  srl          s1, ra, s6
                  or           s0, s4, a1
                  sltiu        s10, a7, 610
                  and          gp, sp, a6
                  lui          s1, 714305
                  slt          a4, s1, t2
                  lui          t0, 662717
                  addi         a2, s9, 2039
                  slti         s2, s7, -1632
                  srli         s8, ra, 13
                  sll          a5, s9, s5
                  srli         t4, s8, 18
                  nop
                  ori          s0, s11, -2027
                  slli         sp, s11, 6
                  srai         s2, sp, 9
                  ori          s10, t4, -815
                  slti         a0, a4, -1367
                  xor          t0, a1, a4
                  auipc        s1, 822591
                  andi         gp, s11, 920
                  andi         s3, s7, 1615
                  addi         s1, a2, -1210
                  or           gp, s1, a6
                  or           s2, zero, s8
                  srl          zero, s10, s8
                  auipc        a5, 604710
                  srai         ra, s8, 5
                  and          a3, tp, s9
                  nop
                  and          a5, zero, t1
                  addi         sp, ra, -1703
                  lui          s8, 786780
                  srli         t6, sp, 10
                  add          t2, a3, t1
                  slt          s8, s9, a4
                  lui          s6, 363853
                  xori         s7, s10, -1833
                  srli         a5, s9, 30
                  addi         s0, gp, -1136
                  ori          t6, t0, 760
                  nop
                  auipc        s2, 457560
                  addi         ra, t1, -971
                  lui          t5, 326296
                  and          a4, s3, sp
                  and          a3, s7, t6
                  and          t0, t0, a2
                  sub          t2, sp, zero
                  auipc        t0, 111852
                  slli         a2, a7, 18
                  slli         t4, a1, 29
                  sub          a0, t4, s8
                  srli         s4, a5, 15
                  srai         a7, s1, 14
                  add          s1, zero, t2
                  addi         s8, a0, -1924
                  sll          a3, s9, s0
                  srl          t1, gp, s0
                  sltu         zero, ra, t0
                  sub          s6, tp, s0
                  nop
                  lui          s4, 126475
                  add          a1, a1, s3
                  srli         a4, tp, 1
                  andi         t4, s2, -1333
                  srli         s4, s1, 22
                  srli         a3, a1, 28
                  add          s7, s3, s1
                  srai         a1, t3, 24
                  auipc        a0, 519539
                  xori         s2, t4, 280
                  auipc        t3, 303414
                  auipc        s2, 814977
                  and          t4, s8, s1
                  and          s10, a7, s2
                  ori          t0, s1, -306
                  and          s0, s1, s5
                  ori          a5, t5, -1642
                  lui          a7, 586409
                  ori          t2, s1, -754
                  slli         t4, a7, 25
                  sll          sp, s6, gp
                  slti         s9, s1, 1639
                  sltiu        s9, t4, 533
                  auipc        a3, 693725
                  srl          s7, a4, a6
                  xori         t5, a0, 1609
                  srl          sp, t4, zero
                  xori         a2, t0, -937
                  sltu         s10, t3, a0
                  sll          s10, s3, s2
                  sra          a4, t1, t2
                  srl          a3, sp, zero
                  lui          s3, 961126
                  srl          t1, a4, a7
                  xori         zero, s5, 1728
                  srli         s4, a7, 30
                  sub          a0, s2, gp
                  ori          s4, sp, 446
                  ori          sp, s7, -687
                  or           s0, tp, s8
                  or           sp, a7, sp
                  slt          t4, a5, gp
                  or           a0, ra, a2
                  slli         s6, s9, 5
                  srai         a1, a6, 4
                  srli         s5, s2, 5
                  slli         s1, a4, 25
                  srl          s10, t2, s4
                  sra          t2, tp, tp
                  sll          t2, a1, a7
                  srl          s3, s3, t1
                  auipc        s8, 1000186
                  sltiu        s3, a4, -1732
                  lui          s2, 906497
                  sra          a2, a2, a3
                  ori          a4, s7, -1327
                  srl          t5, s11, t1
                  addi         s1, s7, -1298
                  ori          a1, t5, 1742
                  add          t5, t0, s0
                  auipc        zero, 495532
                  srl          sp, s8, t3
                  sub          a2, t0, s5
                  xor          a2, s0, a7
                  xori         s5, a7, 584
                  auipc        a2, 731394
                  sra          a7, t1, s5
                  xori         s4, t4, 1241
                  addi         t0, s3, 45
                  slli         s4, s0, 0
                  add          t3, a7, s6
                  srai         s9, t3, 1
                  andi         a7, a6, -1027
                  slti         a1, t6, -658
                  slt          a3, s0, a0
                  andi         zero, t4, -1951
                  addi         s9, s0, -1833
                  sltiu        t0, ra, 767
                  or           s10, t4, s9
                  sltu         s0, tp, t0
                  sltiu        t0, t4, -56
                  addi         s1, a6, -722
                  auipc        s1, 817832
                  and          ra, s5, a5
                  or           a0, zero, a2
                  slli         a1, s4, 12
                  sub          a1, a3, s10
                  srl          a3, sp, gp
                  sltu         a0, a1, a4
                  sra          a2, s7, tp
                  xori         t3, t4, -686
                  xor          s6, tp, s3
                  sra          s7, a2, s11
                  lui          sp, 591386
                  srai         ra, ra, 21
                  slti         s2, a5, -157
                  xor          s1, s11, t0
                  andi         s6, a0, -838
                  and          t0, gp, t3
                  slli         s9, s9, 17
                  nop
                  auipc        s7, 28498
                  lui          s8, 639857
                  slt          t2, s11, a7
                  addi         s10, s7, -589
                  srli         t5, a3, 30
                  srl          a2, zero, a3
                  srai         s8, tp, 18
                  xor          t2, t3, gp
                  sltu         t3, s8, t1
                  lui          t6, 695129
                  add          gp, t6, s11
                  slli         s9, t0, 31
                  sltiu        s9, a5, -1109
                  addi         s9, t2, 590
                  nop
                  slti         s7, a7, -1907
                  slti         t3, tp, -1972
                  nop
                  xori         s1, s6, -967
                  srli         a2, a7, 30
                  sltiu        s5, s3, -1393
                  sll          a4, s10, s6
                  nop
                  sub          sp, zero, t5
                  slt          s0, zero, gp
                  nop
                  lui          a3, 16107
                  lui          s6, 969822
                  sll          t3, t3, t0
                  xori         s5, zero, 624
                  sll          a1, s9, a7
                  slli         s2, ra, 25
                  slti         s5, s11, -1125
                  ori          a1, gp, -187
                  or           s10, t1, a5
                  srl          t6, a1, s2
                  sltiu        t1, a2, -1389
                  sltu         t4, s0, a4
                  sra          t1, a7, s9
                  srl          a1, a0, s4
                  sll          gp, s6, s4
                  sltiu        t6, t3, 934
                  lui          t3, 236499
                  nop
                  srli         t6, t5, 31
                  srli         s9, zero, 7
                  srli         s5, a3, 30
                  sltiu        s0, s4, -2044
                  xor          a3, a4, s3
                  sltiu        s8, s1, -1255
                  sll          a5, t4, a4
                  slt          s0, ra, s0
                  srli         s4, sp, 30
                  srai         t5, s9, 30
                  xor          a1, s2, s7
                  slti         t4, a0, -1544
                  sll          s4, s8, s11
                  slti         a5, sp, 1620
                  auipc        s0, 1007985
                  andi         gp, s6, 601
                  sltu         s3, t1, zero
                  sll          s6, s5, s3
                  srl          a1, zero, s6
                  sll          ra, a3, s1
                  sub          s4, s5, t2
                  lui          a5, 637308
                  sltiu        ra, a2, -1976
                  xor          a3, s0, s1
                  xor          t6, tp, a7
                  andi         s0, tp, 1048
                  lui          t4, 1046906
                  srl          t0, s3, t0
                  sub          s1, s8, a4
                  add          a5, s7, s5
                  andi         a0, t3, 21
                  or           s8, a3, s4
                  srl          s3, s3, s5
                  srl          a1, gp, t1
                  slli         t1, a1, 5
                  srai         s2, zero, 3
                  xor          t4, s0, s4
                  nop
                  sll          t6, s6, t1
                  add          t1, a0, s4
                  sll          s6, s10, a3
                  lui          s9, 352125
                  slti         t6, tp, 502
                  auipc        a5, 180525
                  sltu         t0, a7, s1
                  ori          a3, s8, 1864
                  srl          a1, sp, t5
                  sll          s2, a5, t6
                  slli         s10, a7, 22
                  ori          s3, s10, 1976
                  slt          s10, gp, a4
                  auipc        a5, 312675
                  or           s9, t2, a6
                  ori          a1, t2, -1763
                  sra          t0, t0, s11
                  slti         s3, s5, 1448
                  and          gp, a5, s8
                  add          t1, s10, s5
                  sltu         a5, s4, s7
                  xori         s6, t2, 1793
                  lui          ra, 405558
                  auipc        s9, 564877
                  srli         s5, s6, 21
                  andi         t1, a4, 783
                  add          s4, s2, a7
                  slt          a4, t4, s8
                  ori          s5, s5, -298
                  slti         a4, s6, 29
                  and          s8, gp, s11
                  slli         s3, t5, 28
                  sltiu        t6, ra, 682
                  xori         ra, s5, 1013
                  slli         a2, zero, 30
                  srli         a1, sp, 26
                  srai         a7, a3, 28
                  xori         s5, s11, -1521
                  slli         t2, s9, 18
                  slti         a3, s3, 516
                  sltiu        t4, a1, 1347
                  sltiu        a7, a0, -1056
                  andi         t2, s4, 270
                  srli         zero, gp, 11
                  lui          s5, 29671
                  xori         t2, a3, -863
                  xor          zero, t2, s8
                  addi         a4, s7, -127
                  lui          a1, 597458
                  xor          a3, s5, s0
                  sltu         t0, a5, t4
                  slti         a4, s1, -1990
                  srli         s8, t3, 17
                  srli         s4, t2, 5
                  srl          s10, t2, gp
                  xori         s3, a5, 176
                  lui          a3, 369257
                  and          s9, s3, t2
                  andi         s0, gp, 205
                  xor          s6, t1, sp
                  slti         sp, zero, -1180
                  slli         a2, gp, 24
                  slli         s6, s7, 4
                  sub          t4, t1, a0
                  sra          t0, s5, s8
                  sltiu        s5, s9, 1429
                  srli         sp, s9, 15
                  nop
                  slt          s3, a1, a4
                  srli         s7, a6, 9
                  slti         s7, a1, -1241
                  srli         s9, ra, 16
                  addi         t5, s8, 1336
                  and          a0, t0, s9
                  xor          a4, s5, s4
                  slli         a3, t0, 12
                  add          t0, gp, a0
                  slli         s0, s7, 11
                  sra          t5, t0, t5
                  add          s3, t4, zero
                  or           s6, s0, s3
                  addi         t2, s2, -776
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           a5, 0xf4f1686a
                  li           t2, 0x80000000
                  li           a7, 0x80000000
                  li           s1, 0xffffffff
                  li           t6, 0xffffffff
                  li           t4, 0x80000000
                  li           s4, 0x80000000
                  li           s5, 0x80000000
                  li           a1, 0x0
                  addi         t6, a5, 1683
                  auipc        s5, 304349
                  nop
                  sub          t4, s1, s1
                  auipc        s1, 854215
                  lui          a5, 22160
                  auipc        s1, 210404
                  add          s4, a5, a1
                  nop
                  lui          a1, 836060
                  lui          t6, 228295
                  lui          t2, 194292
                  add          s4, t4, t6
                  add          s5, s4, a7
                  lui          s6, 624236
                  addi         s5, s4, 279
                  lui          a5, 718715
                  sub          s4, s4, t6
                  auipc        s5, 590205
                  lui          s5, 495417
                  addi         a7, s6, -1313
                  addi         s1, s6, 1500
                  addi         a1, a5, 826
                  addi         s5, s1, 354
                  lui          t4, 737512
                  sub          a7, t2, t2
                  addi         t6, s5, 1290
                  sub          t6, s5, a7 #end riscv_int_numeric_corner_stream_8
                  slt          sp, a4, s2
                  xor          s1, t1, s1
                  add          a3, s6, s5
                  auipc        s1, 470001
                  sltu         s10, s1, a3
                  or           t5, a5, sp
                  sll          a5, t6, s8
                  nop
                  auipc        sp, 986099
                  xor          s10, a7, s6
                  ori          a2, t3, 1715
                  slt          a5, s3, s3
                  sub          t4, t2, t0
                  nop
                  or           s6, t0, t2
                  or           a4, t3, tp
                  andi         s5, t0, 1853
                  andi         s9, s0, -1977
                  slti         s7, sp, 1872
                  ori          s2, zero, 1024
                  addi         a7, s5, -1940
                  ori          a2, s10, 315
                  addi         sp, s0, -1421
                  add          s6, a0, a2
                  lui          t5, 251037
                  sub          s1, s9, t6
                  nop
                  auipc        t3, 955749
                  srai         a1, s6, 25
                  slt          s10, s4, t3
                  slt          t0, s6, a6
                  slti         t2, a6, -577
                  xori         zero, ra, 568
                  srli         t5, a1, 11
                  slli         s3, s9, 3
                  lui          t1, 145066
                  or           a4, t4, t1
                  and          t5, t0, ra
                  slti         a3, tp, -137
                  sra          t4, a7, a0
                  or           s6, a5, gp
                  add          a3, s10, s6
                  sltiu        s2, s0, 1961
                  sll          a4, gp, s11
                  srli         s10, t1, 24
                  andi         s4, s6, -2031
                  srli         t5, s3, 5
                  xor          t4, a0, s0
                  andi         a4, s6, -667
                  sltiu        s0, t4, 630
                  addi         a7, s5, 77
                  and          s0, t5, s0
                  slti         sp, s6, -30
                  sltu         a0, t0, t6
                  lui          s2, 610284
                  xori         zero, s7, -1500
                  add          a4, a5, s5
                  addi         s8, a2, 1443
                  sltu         s9, s4, s11
                  slt          ra, t3, a5
                  sub          t4, a0, zero
                  lui          a7, 536722
                  xori         s5, a4, -1692
                  sll          s4, a5, sp
                  auipc        t4, 736467
                  srai         sp, a0, 5
                  xor          s0, s10, s5
                  slti         a0, t0, -1706
                  lui          sp, 896640
                  sra          a3, s6, a4
                  auipc        t0, 559500
                  add          t1, t4, s5
                  lui          a3, 980193
                  lui          s10, 502742
                  andi         gp, a4, 1954
                  sltu         t0, a4, ra
                  srli         gp, a2, 18
                  srli         a3, tp, 28
                  xori         a3, s11, -881
                  sltiu        t5, t3, 720
                  sll          t4, ra, s10
                  sltiu        s7, s7, -1755
                  srl          s4, s10, s11
                  xori         t3, a3, -909
                  sub          a4, ra, s0
                  xor          t6, t3, a0
                  add          a3, t3, s3
                  srli         t2, s5, 13
                  slli         t2, t6, 23
                  sub          s1, a6, gp
                  sra          a5, t6, a3
                  slli         a7, t0, 7
                  sltiu        zero, a1, -1021
                  addi         s5, a7, -1460
                  addi         s10, a5, 1618
                  slt          t0, s4, a3
                  sltiu        t2, t6, -1557
                  sll          s10, zero, t3
                  slt          a5, s7, s0
                  sub          s5, s9, a2
                  sra          s6, t5, sp
                  add          a4, s7, s1
                  sub          s10, t0, t1
                  srl          t6, a2, a6
                  srai         a4, a7, 24
                  srli         t5, t0, 16
                  srl          s8, t6, s3
                  ori          t3, a2, 1093
                  addi         a0, t2, -1949
                  xor          zero, zero, s6
                  nop
                  andi         a5, ra, 1806
                  ori          a2, s11, -1903
                  xori         s8, gp, 1858
                  srai         s8, zero, 4
                  srli         a7, s5, 18
                  or           a2, t2, ra
                  srai         s1, tp, 12
                  or           a3, t1, s11
                  slti         a7, s8, -523
                  ori          t1, a5, 1515
                  ori          s8, a6, 940
                  sltu         sp, s7, t2
                  ori          s4, s5, -844
                  lui          t2, 464083
                  sltu         s9, s9, s3
                  ori          s3, t6, 740
                  sltiu        s8, zero, 180
                  sltu         t0, s0, tp
                  slt          t6, t2, t0
                  and          s7, s6, t3
                  xori         s3, s7, 540
                  or           zero, s9, a6
                  auipc        a1, 243393
                  srli         s0, s2, 12
                  auipc        s0, 116211
                  srai         a5, s11, 28
                  andi         s6, s5, -180
                  lui          t6, 73718
                  and          s7, s2, a5
                  srai         t1, sp, 26
                  srl          s10, a3, a1
                  and          zero, sp, s11
                  srai         s6, a1, 14
                  auipc        a4, 1041008
                  sub          s10, zero, s0
                  sll          t6, a7, s5
                  slt          a7, zero, s9
                  or           a4, s7, s3
                  nop
                  sub          a3, sp, s6
                  or           s7, s4, gp
                  sltu         s5, s10, zero
                  addi         t6, s4, 430
                  sltu         s8, s7, zero
                  addi         s7, a2, 571
                  lui          ra, 648226
                  lui          s7, 414570
                  add          a0, sp, t3
                  sll          t3, s3, s10
                  sll          t1, s3, t5
                  sub          sp, a2, a7
                  sltiu        a2, s0, 74
                  srl          a2, s6, s0
                  lui          a1, 1017704
                  sltiu        a4, a2, 882
                  add          s0, zero, s9
                  sltiu        s7, a5, -418
                  slli         a2, s7, 18
                  srl          t5, s11, s2
                  sub          s5, t4, a0
                  andi         s6, s10, 1039
                  sub          s10, t4, s0
                  sub          s10, a4, a6
                  srli         a3, s5, 6
                  sra          t1, t5, ra
                  slti         t3, s9, -935
                  sltu         t0, tp, s7
                  slti         s3, t1, 1753
                  addi         s0, ra, 1862
                  andi         a3, s5, -1966
                  addi         s0, a6, 477
                  sll          t0, zero, s10
                  srai         a5, zero, 28
                  and          s1, s0, t1
                  sll          s3, s6, s11
                  sra          s7, s2, s3
                  srl          ra, s9, s11
                  sltiu        t1, s5, 1519
                  sra          gp, s0, s11
                  addi         s6, t4, 1598
                  andi         t4, a5, -394
                  addi         s10, s10, -1448
                  lui          t2, 19805
                  andi         t4, gp, 811
                  srai         s2, a6, 16
                  auipc        t6, 991052
                  srli         a2, zero, 27
                  srai         s8, ra, 31
                  auipc        s2, 439427
                  slt          a7, t5, tp
                  or           s4, s2, a6
                  nop
                  nop
                  add          a3, s4, s9
                  srli         t6, s7, 1
                  addi         t3, a5, -988
                  srli         s7, ra, 24
                  or           a2, tp, s9
                  slti         s2, t5, 839
                  slt          s9, zero, gp
                  sra          a5, s10, a4
                  sra          s10, t4, s2
                  nop
                  slt          s0, ra, t1
                  srl          s5, a7, t3
                  addi         s3, zero, -1962
                  nop
                  add          gp, a7, s6
                  xori         a7, s8, 454
                  sltiu        a7, tp, 1098
                  sltiu        s5, t4, -1669
                  sltiu        s5, s6, -1045
                  slli         gp, a4, 29
                  sltu         s3, a0, a0
                  sra          t3, s8, a1
                  auipc        a1, 450889
                  and          s10, t5, zero
                  or           s1, t0, a4
                  xori         sp, a5, 1164
                  sltiu        s5, t4, -658
                  nop
                  addi         a1, a6, 529
                  auipc        a0, 348247
                  addi         s3, a1, -1348
                  sll          a4, s0, s5
                  sub          a0, s11, a1
                  xor          a7, a4, a0
                  andi         a7, t3, 1260
                  srl          s9, sp, sp
                  slt          a0, a0, a7
                  lui          t6, 128460
                  andi         s8, t4, -548
                  srli         s5, a2, 17
                  slti         t1, t4, -1208
                  xor          s1, s7, s4
                  srli         a5, t1, 1
                  srli         s4, s4, 6
                  sltu         t6, s0, tp
                  auipc        s6, 752771
                  sltu         s9, s2, s10
                  sltiu        zero, sp, 1848
                  sltu         t4, s9, s0
                  ori          s7, s7, 838
                  srai         a0, zero, 15
                  slt          t2, t0, gp
                  sub          t2, ra, a5
                  auipc        s2, 384154
                  or           s0, a6, sp
                  srai         t4, a5, 5
                  slli         a0, t5, 12
                  andi         t2, s7, 670
                  or           gp, a0, s2
                  nop
                  srai         s1, t6, 6
                  xor          a0, s7, a5
                  sltu         t5, s11, s5
                  slli         t6, t4, 28
                  slti         a7, a5, -1020
                  nop
                  nop
                  sub          a1, a2, tp
                  sub          a0, t3, t2
                  lui          s2, 307820
                  slli         s3, s11, 17
                  sra          s9, a3, a1
                  andi         s10, sp, 304
                  nop
                  sra          s2, t3, s0
                  sra          s2, a0, s10
                  slti         s3, s4, 956
                  srl          a4, t6, t0
                  lui          a1, 926156
                  sll          s0, s5, a7
                  sll          s0, s11, a7
                  sll          s4, a7, s7
                  sub          t6, zero, s1
                  addi         a5, zero, 731
                  addi         gp, s8, 757
                  ori          s1, a5, 767
                  add          t0, s7, t0
                  srai         zero, a6, 20
                  sra          gp, t5, sp
                  sub          a5, s7, sp
                  slli         s1, sp, 31
                  ori          s5, t2, 1215
                  addi         s0, s9, -85
                  xori         a7, sp, 1455
                  or           s1, s11, a5
                  auipc        s6, 4909
                  and          sp, gp, ra
                  srai         t4, ra, 30
                  sll          s6, tp, a6
                  ori          t5, s8, 27
                  addi         sp, s6, 44
                  add          s10, a2, ra
                  slti         sp, s3, 1468
                  sub          a4, gp, a6
                  srli         a5, s8, 22
                  sltu         ra, sp, s8
                  add          t5, ra, s9
                  sll          s9, t0, a1
                  add          t1, s0, s11
                  sub          t6, s11, t4
                  sltu         t3, s10, s2
                  auipc        t0, 77562
                  sra          a3, ra, a3
                  sll          t5, t0, t5
                  sub          s10, s0, sp
                  lui          s1, 401493
                  lui          a2, 1046170
                  auipc        t1, 962470
                  lui          t3, 162964
                  srai         t5, s11, 19
                  andi         t6, s5, -1403
                  srli         zero, t2, 31
                  xori         s1, a0, -1486
                  add          zero, s6, gp
                  addi         a0, s10, -917
                  sltiu        t0, zero, -2038
                  or           s4, gp, s7
                  and          t3, t6, a2
                  sltu         a1, s9, s2
                  nop
                  sltu         s8, a2, zero
                  add          s4, a2, t0
                  auipc        s3, 1026500
                  slt          s2, tp, a7
                  xor          a0, s8, s3
                  srli         t2, a3, 10
                  lui          a7, 883817
                  andi         a3, t5, 284
                  addi         s6, t5, 67
                  slli         a2, sp, 18
                  nop
                  ori          a1, t3, -228
                  srai         t2, a7, 8
                  and          t3, a1, s1
                  sra          s1, a6, t0
                  lui          s5, 822297
                  xori         a3, t0, 937
                  add          zero, tp, a7
                  auipc        t1, 790517
                  addi         t5, ra, 379
                  xor          s9, t5, gp
                  sll          zero, a4, a7
                  sltiu        gp, a3, 1768
                  slti         t4, s3, -357
                  slli         a4, tp, 18
                  sltiu        s7, ra, 1224
                  xori         t2, s9, -2002
                  addi         s4, s4, -1093
                  add          s6, a5, t6
                  and          s8, s0, a0
                  slli         t5, s2, 7
                  srli         sp, s9, 28
                  sltu         s9, s3, a7
                  srl          gp, s6, a5
                  srl          s10, s6, t3
                  srai         a7, s7, 4
                  ori          s5, t5, 921
                  srli         ra, s1, 30
                  slti         t5, t5, 1064
                  sltu         s1, a5, s11
                  slt          s6, s1, tp
                  ori          t1, tp, 1675
                  sltiu        s2, s10, 1315
                  sltiu        gp, s4, -671
                  andi         s9, tp, 1517
                  or           t4, a6, t5
                  slli         s0, a7, 14
                  and          a1, t2, ra
                  sub          s4, tp, s7
                  addi         t0, a3, 433
                  or           s5, zero, s1
                  srl          zero, t0, t2
                  xor          gp, t4, sp
                  sra          s1, a6, sp
                  sltiu        s1, t2, -419
                  sll          t1, a0, t4
                  addi         t6, s8, 1696
                  auipc        s2, 658519
                  sll          s9, s4, s0
                  addi         a2, s4, -509
                  sltiu        zero, s0, 1475
                  sltu         t0, sp, tp
                  and          t3, t2, tp
                  slt          a1, a0, s3
                  xori         a7, s1, 1942
                  sltu         zero, zero, a0
                  slli         s4, t5, 31
                  add          t0, s3, s4
                  srai         a4, a2, 2
                  srai         s7, zero, 18
                  sll          s5, ra, a0
                  nop
                  sra          t6, s1, t2
                  and          s0, gp, a5
                  lui          s0, 635757
                  auipc        gp, 989119
                  nop
                  srl          s1, s2, t4
                  slti         t1, s10, -264
                  sltu         s6, t3, a0
                  xor          t1, a7, a7
                  sub          gp, a0, a0
                  ori          s10, sp, 540
                  srl          gp, a1, a0
                  sra          s8, a7, ra
                  add          s8, a0, a2
                  sub          s8, a0, a4
                  auipc        t1, 566111
                  addi         t2, a5, -30
                  sltu         ra, s2, s7
                  or           a1, s8, zero
                  sltiu        s5, t5, -29
                  slti         a7, s3, 309
                  xori         zero, s5, -1090
                  sub          a0, s4, t2
                  lui          a3, 393987
                  srai         s10, zero, 10
                  add          t3, t2, s7
                  sub          s6, s10, t3
                  srl          s8, a7, a4
                  xor          s8, s6, t0
                  and          t4, t5, gp
                  srli         t6, t3, 17
                  sll          a2, t6, gp
                  lui          s5, 176804
                  addi         a7, a2, 493
                  lui          t5, 968368
                  slli         a7, a7, 28
                  sub          a7, t3, a4
                  sra          t3, s8, t4
                  sltiu        s3, a2, 1353
                  sub          s6, a4, a4
                  srli         gp, s9, 16
                  and          a5, tp, t4
                  srl          s8, s8, s9
                  srai         s7, t0, 7
                  slti         t0, a2, -1410
                  slti         s8, t4, 1150
                  ori          a2, ra, -1992
                  xori         a5, a3, -95
                  and          a7, s0, a3
                  slt          a2, s8, s7
                  and          a3, s9, gp
                  sra          s6, t1, s10
                  xori         s0, a3, -1590
                  ori          a7, t4, 852
                  or           s8, a3, s8
                  or           a3, a6, a7
                  sll          a0, t6, t6
                  and          s1, s3, sp
                  lui          a2, 1011430
                  sra          s9, t4, t2
                  srl          t6, zero, s2
                  sltu         t5, s0, a2
                  srl          a2, s8, a2
                  slti         zero, t3, -144
                  sll          a4, t2, s1
                  srai         s2, t4, 7
                  sub          s2, t2, s8
                  slt          s7, s4, a4
                  andi         zero, s3, 1670
                  lui          s10, 696901
                  xor          t3, a5, s9
                  sltiu        s10, s9, 759
                  xor          t2, tp, t2
                  andi         s7, s0, -74
                  slti         t2, gp, -1013
                  slti         s6, a3, 430
                  andi         a5, t2, 1399
                  srai         s5, s1, 6
                  sub          s6, s8, s8
                  slt          a1, s3, a6
                  addi         s7, s7, -803
                  or           a3, a7, s4
                  xori         zero, s6, -1398
                  srai         ra, t4, 3
                  xori         t0, t6, -1632
                  slli         ra, s9, 16
                  sra          s6, t0, t1
                  xor          s7, a3, a3
                  add          s2, a5, ra
                  srl          s4, t1, s3
                  slt          t0, s3, a2
                  nop
                  srli         a3, ra, 27
                  lui          t6, 583799
                  auipc        t1, 733302
                  ori          s9, s1, 1269
                  addi         s8, a4, 341
                  sll          zero, s7, s1
                  sub          t1, gp, t4
                  ori          s3, s3, 873
                  or           t4, s6, s5
                  xor          a1, sp, t2
                  and          t1, s5, ra
                  ori          a2, gp, -1290
                  xori         a3, t4, 662
                  slli         a0, a5, 26
                  sra          s5, zero, s3
                  srl          s9, t1, s4
                  xor          zero, s4, t1
                  sltiu        a4, s8, -1843
                  auipc        a3, 503703
                  add          s3, t5, s6
                  ori          a2, t0, 1928
                  sltiu        a4, s9, -528
                  auipc        s10, 655761
                  or           t2, a6, a4
                  srai         a7, a1, 2
                  srl          t4, t4, a4
                  slti         t1, a7, -1912
                  sll          ra, s3, s0
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s1, 0x80000000
                  li           t3, 0x80000000
                  li           s4, 0xb1f3e20b
                  li           t5, 0x0
                  li           s0, 0x6a7227e2
                  li           gp, 0x80000000
                  li           a7, 0x0
                  li           a3, 0x410f7560
                  li           t2, 0x0
                  auipc        t0, 886717
                  lui          t3, 352086
                  sub          t3, s1, t0
                  sub          a3, gp, a3
                  sub          t5, t3, a7
                  sub          a7, t2, gp
                  addi         t5, a7, -84
                  sub          s4, s4, s4
                  nop
                  sub          s0, s4, s0
                  auipc        s1, 408444
                  add          t5, a3, t5
                  addi         t0, t0, 1909
                  lui          gp, 911675
                  lui          gp, 675649
                  sub          t2, s4, a3
                  sub          s0, t3, t2 #end riscv_int_numeric_corner_stream_7
                  xor          s3, t0, ra
                  sra          s1, t2, tp
                  srai         s3, s5, 8
                  srl          t5, s10, s9
                  ori          a7, tp, 952
                  addi         a4, s9, 1246
                  slti         s4, s6, 907
                  slti         a1, a4, 1557
                  nop
                  sltiu        s0, a0, -1639
                  sra          a3, s2, a2
                  srli         gp, a0, 19
                  slti         s7, s11, -263
                  sub          s0, ra, a6
                  sra          t4, a1, s3
                  srl          t2, s2, s5
                  sltu         s5, s10, t2
                  sub          s5, tp, s2
                  andi         s7, t3, 1135
                  xori         a1, a5, -1877
                  nop
                  xori         t6, s2, 371
                  or           a5, s11, s8
                  slt          t0, t4, ra
                  or           s2, t4, s7
                  xor          t5, a7, a2
                  addi         s7, a7, -1345
                  slli         t3, t6, 6
                  ori          a7, s11, 685
                  or           gp, sp, s10
                  slti         gp, a1, 103
                  add          s10, s3, a3
                  slti         a0, s0, 1547
                  sll          t3, s9, s4
                  xor          s0, a5, t4
                  slli         s7, a2, 4
                  srai         a1, zero, 24
                  auipc        gp, 19211
                  slt          a5, a6, t0
                  auipc        a7, 237804
                  addi         a3, a6, -2008
                  lui          t1, 745429
                  lui          t3, 1015688
                  sll          gp, t6, t6
                  add          s4, t0, t1
                  lui          s8, 684362
                  slt          t1, s7, sp
                  lui          s0, 77645
                  sra          a2, s9, t3
                  slti         a7, t0, -1327
                  nop
                  sltu         a5, a3, s3
                  srli         s7, s4, 4
                  ori          a3, s9, -747
                  ori          t2, s1, -1171
                  and          a7, zero, t3
                  lui          gp, 408882
                  srai         a5, s7, 4
                  nop
                  add          a0, s11, tp
                  andi         a5, t6, -1456
                  sra          gp, s11, s3
                  srli         s7, t4, 21
                  add          gp, a3, gp
                  nop
                  slt          t1, s5, zero
                  auipc        s7, 855976
                  xor          s10, a4, t0
                  slt          s0, a5, t4
                  lui          a3, 993949
                  addi         a7, s5, -485
                  andi         a5, s2, -391
                  sra          s9, s9, a1
                  andi         t5, s7, 842
                  slti         s6, t5, 447
                  srai         a3, t1, 23
                  sltu         s3, a4, ra
                  addi         s4, s3, 52
                  sub          t5, t3, a3
                  andi         s2, zero, -1850
                  auipc        t2, 128501
                  sltu         zero, s6, sp
                  sll          ra, a5, t6
                  and          t6, s1, s0
                  srl          a0, t0, s1
                  and          s6, sp, a1
                  slt          s10, s0, s11
                  sll          s7, t4, tp
                  nop
                  sub          a1, a6, t4
                  srai         t3, a0, 1
                  ori          s8, t4, 151
                  ori          t0, a5, 1905
                  slt          a4, s9, s2
                  sltu         sp, a0, sp
                  sltu         a4, s2, s2
                  xor          a2, ra, s3
                  sub          gp, tp, s7
                  addi         a4, s0, -1941
                  xor          ra, s8, s7
                  slt          a7, s11, t5
                  nop
                  or           s8, t3, s5
                  auipc        t2, 424265
                  xor          t1, s7, s8
                  sltu         s5, s11, a1
                  sltiu        t1, tp, 1082
                  sltu         s5, zero, a7
                  andi         a0, s11, 1276
                  ori          s9, a5, 1398
                  srai         s1, s3, 23
                  sltu         s7, tp, t3
                  slti         s6, a0, 455
                  srl          s4, a3, t0
                  or           s8, s4, t1
                  xori         a1, a0, -1350
                  ori          a5, a0, 713
                  slti         ra, t1, -532
                  slti         t5, a0, -806
                  or           t4, s4, s1
                  slti         s3, zero, 699
                  sub          t2, s6, s10
                  srai         ra, t5, 3
                  nop
                  srai         ra, s1, 12
                  ori          a7, s6, -1180
                  andi         t1, t4, -157
                  auipc        s3, 887217
                  sltu         s2, a2, t1
                  and          a0, s4, s11
                  lui          a5, 589792
                  slti         s10, s3, 1580
                  andi         a0, s4, -1382
                  xori         a1, t1, 384
                  and          t5, s4, s9
                  sltu         a4, s9, s0
                  addi         a5, a6, -886
                  srl          a7, s3, t2
                  sltu         ra, t4, a1
                  slti         a5, t1, 73
                  slt          s2, zero, ra
                  sra          a5, s10, a4
                  srl          s6, a7, sp
                  sltiu        a4, s3, -1027
                  srli         a7, sp, 22
                  sll          t6, s6, a0
                  xor          s4, a5, s5
                  sltiu        t5, zero, 188
                  xor          t0, s3, s1
                  andi         t6, t5, -1771
                  sra          a5, s7, s0
                  srli         a1, t2, 2
                  nop
                  slt          s0, a3, t3
                  xor          s5, s8, a2
                  xori         s8, a6, 1757
                  sltu         s3, t3, s1
                  srai         s9, zero, 31
                  srai         t6, t6, 20
                  andi         s8, t5, -1048
                  add          s9, s2, s8
                  addi         t1, gp, 1074
                  sltu         a7, a5, a4
                  sll          t4, a6, t1
                  xori         s7, sp, 1873
                  sll          t0, a1, tp
                  auipc        a4, 69620
                  sltiu        s2, a0, -929
                  sra          s4, s1, s3
                  xor          s0, t3, s10
                  or           a7, a0, gp
                  slti         t2, s2, 539
                  srai         t5, tp, 18
                  add          s7, a5, tp
                  sra          a0, s0, s3
                  or           t0, a3, s11
                  sub          s8, t1, t4
                  or           a0, s0, s8
                  auipc        sp, 602368
                  lui          t6, 367453
                  nop
                  slli         s3, a4, 31
                  srli         a7, s8, 2
                  sll          a2, s3, t1
                  sltu         s8, s0, a0
                  addi         a7, a0, 1595
                  xori         a3, s10, -1893
                  sll          ra, s6, s6
                  auipc        s1, 721259
                  srl          gp, a4, s8
                  slli         a2, t5, 25
                  sltiu        gp, s7, -1370
                  andi         a4, s11, 1813
                  sub          a3, a6, s4
                  srai         s0, a4, 23
                  slti         a5, s2, -464
                  nop
                  sra          t2, s0, s10
                  and          t5, s6, s8
                  ori          s1, a2, -1127
                  srl          zero, ra, a1
                  ori          s1, gp, -1377
                  xori         a3, s2, -1758
                  xor          zero, a1, s6
                  slli         gp, a3, 10
                  srli         a4, t0, 20
                  andi         a4, a2, -1113
                  and          a0, t5, t4
                  sltiu        s2, s9, -1049
                  sub          s2, t2, s10
                  sra          s4, s6, a6
                  nop
                  and          sp, tp, s4
                  xor          s1, tp, t2
                  andi         a3, a7, 1416
                  slt          t4, s11, s6
                  lui          s7, 716997
                  xori         s7, t0, -136
                  srli         gp, ra, 6
                  slti         ra, a5, -82
                  add          a7, a4, s0
                  addi         s1, s9, -1634
                  xor          s6, s9, s11
                  auipc        sp, 413934
                  and          t1, sp, a6
                  srai         t1, t4, 13
                  srli         gp, t3, 26
                  srl          a7, s8, ra
                  nop
                  slt          s9, t1, s8
                  sub          s8, s3, t0
                  xor          zero, s8, s0
                  slli         ra, s9, 24
                  sltu         a5, a2, gp
                  auipc        t5, 556873
                  and          s8, a6, a5
                  andi         t6, s3, 9
                  srai         a0, t6, 0
                  srli         t2, s3, 27
                  and          s4, a0, ra
                  sll          a7, s6, a3
                  sltiu        gp, s1, 1952
                  xor          t1, s0, t6
                  sra          ra, t1, sp
                  or           t3, a6, a2
                  and          t1, s4, a3
                  srai         t1, s5, 18
                  sra          a3, t0, a3
                  sll          gp, s3, s7
                  add          a3, s6, a7
                  srli         s10, s1, 30
                  slti         t5, ra, 507
                  sll          a2, a4, s11
                  ori          s6, s0, 854
                  srli         sp, s3, 20
                  or           s7, s9, tp
                  or           s6, t1, s9
                  slli         s3, s2, 10
                  addi         s3, ra, -1169
                  sltiu        s0, a3, -1828
                  srai         a5, s8, 6
                  lui          sp, 404759
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           s3, 0x80000000
                  li           t1, 0xa46c7026
                  li           t5, 0xffffffff
                  li           a3, 0xffffffff
                  li           a5, 0x0
                  li           s4, 0xffffffff
                  li           a0, 0x0
                  li           a2, 0xcd272f27
                  li           ra, 0xddf52a1e
                  add          s4, s4, t5
                  auipc        a3, 841571
                  lui          a3, 487937
                  lui          t5, 860351
                  add          t5, a3, a5
                  addi         s4, t5, 1467
                  add          a2, a0, a5
                  addi         s4, a2, -1825
                  lui          a3, 593730
                  auipc        ra, 449667
                  add          a5, a2, s4
                  addi         a3, a5, -539
                  nop
                  auipc        a2, 345512
                  nop
                  sub          s4, ra, a5
                  addi         a0, a0, 1742
                  sub          s4, a3, a5
                  addi         a2, t5, -153
                  lui          t1, 874140
                  add          t5, s4, s4
                  addi         s3, a0, -278
                  auipc        a5, 676761
                  sub          a5, s3, sp
                  lui          t5, 357205
                  sub          t1, s3, t5
                  auipc        s4, 838903
                  lui          a5, 447001
                  add          ra, t1, a3 #end riscv_int_numeric_corner_stream_12
                  slli         s1, s8, 11
                  add          gp, zero, a6
                  and          zero, s9, s2
                  xor          a7, s1, s2
                  add          a3, s4, gp
                  slti         gp, t5, 158
                  sll          s8, a0, s3
                  sltu         s9, a3, sp
                  slt          s6, a7, a2
                  slli         a2, s6, 31
                  sra          s2, a0, a6
                  sltu         a7, s9, a5
                  slti         sp, s7, -1219
                  sra          s0, a2, t3
                  slti         a5, a5, 1955
                  andi         s10, a1, -651
                  and          s5, t6, tp
                  andi         t0, ra, 1130
                  sll          t3, s1, t2
                  addi         s9, s4, 1677
                  sll          s10, t3, s9
                  sltu         a3, s0, t6
                  slti         a0, t0, 1399
                  andi         t4, sp, -163
                  sll          a2, t1, t3
                  slt          s8, t1, s0
                  sll          t6, s5, a5
                  srl          s7, a0, t5
                  add          zero, s1, gp
                  auipc        s9, 606436
                  add          s7, a7, s7
                  srl          a1, s0, t2
                  sll          s3, s0, a0
                  or           a5, s7, s3
                  or           sp, s5, a0
                  slt          s4, s10, t2
                  slli         s9, s5, 23
                  nop
                  slti         s3, s5, -1083
                  add          t0, s7, a4
                  slli         t1, t2, 22
                  sll          zero, a3, s1
                  slli         zero, a6, 25
                  auipc        t6, 441014
                  srai         a5, zero, 31
                  sltiu        s8, tp, -1189
                  and          s3, a1, s3
                  nop
                  sltiu        a0, a4, 1794
                  ori          a2, a4, -1733
                  sub          gp, tp, ra
                  nop
                  xori         a7, t2, -2046
                  lui          t6, 838942
                  slli         t0, a2, 14
                  and          a1, sp, sp
                  addi         s1, ra, 853
                  and          ra, t0, t2
                  srl          s0, a7, s8
                  or           t5, s3, ra
                  nop
                  sltiu        t0, t1, -1783
                  sra          s0, tp, s2
                  srai         t2, s1, 27
                  srl          s2, tp, t0
                  ori          s5, s10, -1222
                  xor          t5, a2, ra
                  xor          s2, s9, s7
                  srai         s2, a2, 20
                  ori          t0, s6, 924
                  sltu         t5, s0, a4
                  slti         gp, s1, -1974
                  sltu         s9, s0, gp
                  xor          s10, t5, t3
                  sltiu        ra, a4, 954
                  sra          gp, t1, t1
                  srai         a0, t1, 16
                  sub          a3, s4, s6
                  sra          t4, a0, t2
                  slti         gp, a7, 70
                  sub          zero, sp, s8
                  xori         s8, s9, -472
                  lui          a5, 1028008
                  slti         a4, a0, 1459
                  xor          s5, s11, a0
                  nop
                  xor          sp, a7, t2
                  srli         t5, s7, 23
                  or           s7, s10, t5
                  sra          a7, a0, tp
                  auipc        t4, 686287
                  lui          s9, 920772
                  or           a4, s2, t3
                  andi         s0, s9, 656
                  slli         s4, t0, 16
                  sra          zero, s3, t2
                  nop
                  xor          t6, a1, s5
                  sra          a4, a3, a4
                  or           t4, a3, t3
                  sra          a4, t4, a5
                  nop
                  addi         t3, ra, -1649
                  sub          s5, t0, t2
                  sra          t5, a0, a2
                  lui          s9, 906006
                  xori         s3, s3, -322
                  srl          t2, s3, s1
                  sra          a7, s2, a3
                  or           zero, t4, tp
                  slti         t3, sp, -223
                  sltu         a1, a7, s3
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           t1, 0xffffffff
                  li           s2, 0x0
                  li           a2, 0x80000000
                  li           s8, 0xb4567cd3
                  li           s9, 0x0
                  li           s5, 0x0
                  li           a5, 0x0
                  li           t3, 0x1d30f55d
                  li           a0, 0x80000000
                  lui          a0, 448840
                  nop
                  addi         a5, t1, 2044
                  addi         s5, s2, -959
                  add          s2, t3, t2
                  auipc        a0, 279844
                  lui          s9, 389720
                  lui          a2, 206280
                  lui          s8, 274700
                  addi         s2, t3, -868
                  addi         t3, t3, -1270
                  add          a0, t2, a2
                  addi         t1, a5, -318
                  lui          s2, 43984
                  sub          t1, a0, s5
                  auipc        s8, 474216 #end riscv_int_numeric_corner_stream_15
                  srai         a4, s8, 16
                  lui          s9, 73452
                  nop
                  sltu         a2, a2, t1
                  or           t4, s7, tp
                  sltu         s5, a5, a3
                  xor          a1, s8, s0
                  lui          a4, 332437
                  sltiu        s1, a4, -1781
                  sltu         zero, a7, tp
                  andi         a3, s5, 280
                  nop
                  srl          t5, t6, t4
                  ori          a5, a3, 1836
                  sltu         t3, t1, a7
                  sra          s10, ra, a6
                  sll          ra, a3, a6
                  nop
                  add          s1, a2, t4
                  nop
                  sltiu        a4, a1, -788
                  add          s10, t2, t6
                  sll          s10, t5, a6
                  sll          ra, zero, s8
                  srai         a2, zero, 3
                  srl          t5, t1, a7
                  slli         s9, sp, 21
                  andi         a5, s3, 1012
                  sra          ra, t6, s5
                  sll          s4, a0, t4
                  srl          s8, s7, a6
                  add          sp, t6, a5
                  srli         s10, t4, 26
                  xor          sp, s7, a2
                  sltu         a0, a2, t1
                  sltiu        a4, a2, -26
                  or           a7, a4, s9
                  srl          t2, s0, s10
                  xori         sp, s0, -641
                  slti         s5, s1, -578
                  lui          t5, 485380
                  or           a1, a2, s1
                  srai         a2, s0, 12
                  slt          s2, a1, a5
                  srai         a3, s0, 24
                  sltiu        t1, t4, 1098
                  slti         t4, t5, -58
                  xor          s5, t3, a6
                  sub          sp, a6, t1
                  andi         s9, a5, -103
                  add          s3, a7, t6
                  slt          s1, a7, s10
                  sltiu        t5, s8, 600
                  sra          a5, a4, a7
                  slti         a3, s11, 849
                  srai         a4, a4, 6
                  addi         t1, s8, -1889
                  slti         s1, a5, -89
                  auipc        sp, 244351
                  andi         zero, a6, 87
                  or           s4, s11, a3
                  addi         a7, a0, -979
                  sra          a0, s1, s7
                  sra          s0, s4, a3
                  sub          s2, a1, a2
                  sltu         a5, a5, s9
                  srai         a2, s2, 27
                  add          t1, a2, s7
                  nop
                  slli         gp, a5, 0
                  lui          a3, 237438
                  nop
                  lui          s7, 979596
                  slti         a4, t6, 538
                  slti         s1, a6, 1303
                  addi         a2, s11, -1899
                  lui          s6, 378521
                  addi         a5, s4, -1517
                  auipc        gp, 903088
                  slli         t1, s9, 2
                  and          zero, s4, a5
                  add          a2, s7, a7
                  sub          a4, zero, t5
                  sra          gp, s9, ra
                  srai         s10, a1, 24
                  xori         s3, a1, -1927
                  and          zero, s4, s9
                  auipc        a1, 720215
                  sltu         s3, s6, zero
                  sll          s4, sp, s4
                  andi         t0, t1, -1378
                  slt          t2, a1, s9
                  slti         a2, t4, -1946
                  sra          s8, a6, t3
                  sub          s1, a2, s1
                  sra          t0, a2, t4
                  lui          t3, 436564
                  ori          s7, t1, -1833
                  slt          ra, a7, s2
                  ori          a4, s10, 1393
                  and          s7, a4, t1
                  or           a7, s11, s4
                  auipc        s7, 183602
                  addi         a5, s0, 1375
                  slti         zero, s0, 1900
                  srli         a2, a1, 31
                  auipc        s1, 169659
                  add          t3, tp, s3
                  xori         s1, s6, 1451
                  sltu         s7, ra, s8
                  add          t4, s0, gp
                  lui          a5, 363733
                  xor          s1, a6, s11
                  sra          a1, tp, s7
                  nop
                  auipc        a5, 1018879
                  slt          ra, a6, s9
                  nop
                  auipc        t6, 862510
                  sltiu        zero, a1, 47
                  ori          a3, a5, 1328
                  sll          s0, a0, t2
                  sra          t6, s11, s0
                  lui          t2, 335037
                  auipc        ra, 997385
                  slt          gp, a1, ra
                  sra          a3, a6, s3
                  slli         s0, t1, 4
                  slti         s9, zero, -999
                  nop
                  srai         a2, gp, 4
                  sll          a4, s4, a2
                  slli         s2, s1, 22
                  auipc        t1, 140641
                  andi         s9, s3, -823
                  andi         a0, t6, -13
                  sll          a2, sp, s0
                  slli         a2, s8, 5
                  xori         t5, t5, -442
                  and          s1, s4, s7
                  sub          s7, s10, s1
                  sltiu        ra, t3, 1301
                  ori          zero, s0, -1321
                  add          zero, s2, a5
                  xori         s2, a3, -838
                  slti         s2, a7, 220
                  andi         t1, s10, 1633
                  lui          a5, 975247
                  sub          s4, s5, ra
                  add          s10, t3, t5
                  sub          t5, zero, a0
                  addi         s1, s3, 866
                  srl          gp, a6, zero
                  slt          s10, s3, a4
                  ori          s10, t3, -1352
                  slti         s4, s9, 1906
                  andi         t6, t3, 487
                  slt          t1, a7, a1
                  and          t2, a6, s0
                  srli         t0, s4, 30
                  sltiu        a2, zero, 75
                  add          t3, a5, a2
                  srli         t5, a5, 3
                  srl          a5, a2, t4
                  sub          a7, a1, a2
                  srai         t6, t5, 2
                  xori         a7, s11, 675
                  and          a3, a5, t4
                  sll          a2, a4, t2
                  sub          gp, s3, s0
                  andi         sp, s2, 231
                  sltu         t2, t0, s9
                  sub          s10, tp, s2
                  and          a2, a0, t2
                  andi         t6, a3, 1011
                  addi         s6, s2, -437
                  add          t3, a6, a7
                  or           a1, s2, s9
                  slli         a7, a6, 12
                  auipc        s4, 776667
                  sll          s5, s0, a4
                  nop
                  nop
                  srai         t6, s4, 26
                  sub          sp, gp, a4
                  slti         s9, ra, -1728
                  andi         t3, zero, 108
                  auipc        a0, 995027
                  addi         a0, a2, -581
                  xori         s7, a6, 333
                  auipc        s6, 268857
                  slti         gp, s8, 1841
                  slti         a5, a5, 2046
                  slli         t4, a4, 6
                  sltu         s8, t0, s2
                  sltu         a7, a6, t6
                  xori         zero, s4, -622
                  sub          ra, a3, t5
                  add          a4, ra, a5
                  xor          ra, s2, a6
                  andi         a5, s0, -70
                  nop
                  xori         t3, a0, -748
                  sltu         t0, t6, t6
                  srai         zero, t3, 22
                  nop
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           t6, 0xffffffff
                  li           a7, 0x1291d92
                  li           t2, 0xffffffff
                  li           s8, 0xffffffff
                  li           s9, 0x0
                  li           t3, 0x80000000
                  li           ra, 0xffffffff
                  li           a0, 0x80000000
                  li           s6, 0xffffffff
                  addi         t3, a0, 1737
                  sub          s9, s5, s8
                  addi         t3, s8, 332
                  sub          t3, a7, a7
                  sub          a7, a7, s6
                  add          a0, ra, ra
                  addi         t2, t2, 1981
                  add          t3, t2, ra
                  auipc        a7, 217795
                  sub          s8, t6, ra
                  add          t6, s9, a7
                  lui          t3, 938825
                  sub          a7, ra, a0
                  addi         s6, s8, 1406
                  add          a0, s5, t2
                  auipc        ra, 1045157
                  add          a7, s6, s8
                  nop
                  lui          t6, 948491
                  lui          s9, 191176
                  add          t2, s6, a7
                  nop #end riscv_int_numeric_corner_stream_2
                  slt          s2, t0, s7
                  add          s3, sp, s1
                  slti         a3, s10, -1169
                  srli         s9, a5, 18
                  and          s4, a0, t4
                  andi         t6, s5, -1015
                  auipc        t0, 986893
                  xor          t3, t1, s8
                  srli         t3, s3, 26
                  auipc        s6, 300814
                  sltu         t6, s10, ra
                  sltiu        s0, a4, -142
                  lui          s0, 510571
                  sub          a5, a4, a3
                  addi         s5, zero, -1490
                  sub          t2, t3, tp
                  andi         t0, s2, 851
                  srli         s4, s11, 23
                  slti         s6, t4, 1410
                  andi         s1, t3, -676
                  nop
                  and          s1, s3, s4
                  ori          a1, s10, 1009
                  xori         s6, t4, 1305
                  slt          s1, t4, s1
                  sltu         t5, s6, s5
                  srai         s3, s3, 26
                  slti         a0, t5, -174
                  xor          s4, a3, zero
                  auipc        s6, 171477
                  sltiu        t4, s4, -1850
                  addi         t6, ra, -1228
                  srli         s7, t5, 0
                  or           s10, t4, a6
                  ori          sp, a3, -28
                  sll          sp, t1, s3
                  sub          t5, a0, t3
                  andi         t3, s8, -1064
                  sub          a3, a4, s7
                  ori          t4, s0, 1218
                  lui          a2, 670777
                  xor          s0, t1, a0
                  xor          s2, s0, a3
                  add          s10, s7, s3
                  slli         gp, s6, 0
                  xor          a7, zero, s8
                  slt          a2, t0, a5
                  or           zero, t3, zero
                  slti         sp, s4, 1920
                  sltu         t2, tp, tp
                  nop
                  and          t1, t0, s1
                  slt          t0, a1, s5
                  and          s2, s1, s5
                  addi         a2, t1, -80
                  slt          a1, s0, s9
                  sltiu        t4, zero, -1997
                  srl          s2, a4, a3
                  slt          s2, sp, t6
                  addi         a2, s4, 787
                  and          a4, s9, t2
                  srli         s9, gp, 9
                  slli         s2, s5, 11
                  sltiu        t2, a1, 33
                  ori          s9, tp, 1104
                  or           s1, a5, a4
                  sll          t1, s7, a0
                  addi         s6, a4, -608
                  srl          t3, s11, tp
                  lui          t2, 321785
                  srli         t2, t3, 15
                  lui          a2, 963368
                  xor          s5, s11, zero
                  sltu         t4, s10, t0
                  and          t3, s6, s7
                  srli         a0, t2, 10
                  nop
                  srai         s8, a7, 2
                  or           t1, s9, t1
                  sra          ra, s1, gp
                  nop
                  sll          t3, a2, t2
                  slli         sp, s10, 14
                  lui          t5, 842533
                  sra          t5, t4, s10
                  slt          t4, s11, ra
                  lui          gp, 841232
                  auipc        t0, 696962
                  andi         t5, s10, -539
                  sll          a4, t1, sp
                  addi         ra, s5, -1105
                  or           t3, tp, a4
                  sub          s0, t4, a5
                  add          s9, s6, t3
                  sra          zero, s10, s2
                  xori         s0, s7, -452
                  ori          ra, a7, -902
                  sltu         ra, a6, s5
                  sll          t6, a0, tp
                  andi         t5, s10, 1362
                  slti         sp, t3, -1370
                  andi         a4, t1, 123
                  srli         t2, tp, 30
                  srl          t3, t3, gp
                  slt          t6, s10, a3
                  addi         a2, ra, -25
                  sltiu        s10, zero, 809
                  xor          s9, t6, t5
                  sltu         s5, s4, s8
                  ori          s6, a1, -989
                  auipc        s4, 860224
                  and          t2, a5, a1
                  xori         a1, t0, 1827
                  andi         s2, t6, -753
                  add          a2, s4, a3
                  slti         a7, s11, -811
                  or           s3, a7, s3
                  ori          s4, s2, 122
                  slt          t6, t6, a1
                  nop
                  srai         s2, s1, 27
                  and          s9, tp, s5
                  andi         t3, t0, 1432
                  lui          a7, 248941
                  and          t1, s8, s6
                  srl          t1, t4, a5
                  auipc        s4, 176423
                  sltiu        a7, tp, -636
                  sub          a3, a1, a6
                  ori          gp, s11, 1545
                  auipc        a0, 850095
                  sll          a7, s0, a3
                  add          ra, s5, a0
                  srli         a0, s4, 22
                  add          t1, t1, s4
                  sub          s8, s4, a0
                  srl          t3, s3, s4
                  andi         sp, s9, -378
                  auipc        s10, 526911
                  or           s5, s5, t2
                  srli         a2, sp, 3
                  sltiu        a0, t6, -1520
                  ori          a3, a5, 1091
                  lui          a1, 182681
                  slli         a2, s10, 28
                  and          s3, s11, s7
                  srai         zero, s1, 25
                  slli         t3, tp, 29
                  xori         t3, a4, 1756
                  andi         s6, s10, -312
                  srli         a2, sp, 19
                  xori         t0, s7, 1889
                  slti         s2, a6, -171
                  srl          s5, tp, s9
                  andi         s9, s6, -1414
                  sltu         s8, s8, t1
                  sltiu        t6, s4, -1447
                  slti         t0, gp, 370
                  xor          s2, gp, t5
                  srli         t4, t0, 24
                  srai         a2, ra, 23
                  lui          sp, 848365
                  addi         s9, zero, 1990
                  auipc        t3, 794400
                  sll          t2, s10, s5
                  xori         s2, a6, -1621
                  sub          t1, t4, a3
                  srai         a5, s6, 2
                  and          s7, gp, a7
                  srl          s10, gp, a5
                  sub          gp, a1, a3
                  auipc        t1, 155801
                  auipc        a2, 521019
                  or           t3, t4, s10
                  or           t6, s10, s7
                  sltiu        t3, t0, -858
                  or           t2, a3, s8
                  lui          a3, 587041
                  xor          s10, s8, s8
                  xor          s9, s11, t4
                  slt          a5, tp, s3
                  slt          a5, s2, t4
                  sltu         a7, ra, zero
                  xori         a1, sp, -251
                  sll          s4, ra, s6
                  xor          s3, s7, sp
                  andi         s4, t6, -1798
                  xor          a5, s10, a1
                  and          s0, s4, s6
                  srai         a1, s10, 25
                  sll          sp, a5, tp
                  xor          t1, sp, a0
                  xori         a0, a1, 1281
                  slli         s0, tp, 15
                  sll          t6, tp, t5
                  sltu         t5, s4, t0
                  or           s5, a6, t2
                  lui          t3, 509507
                  slt          a1, s0, a5
                  auipc        a1, 461999
                  lui          a3, 937212
                  sra          t6, sp, s0
                  or           s7, s11, a3
                  xori         t3, s2, -1651
                  add          ra, s4, zero
                  xor          zero, zero, a4
                  xor          t4, a2, s4
                  slli         s7, a6, 0
                  sll          a2, t2, sp
                  addi         t6, t6, 1896
                  lui          a1, 391
                  srai         a0, s4, 0
                  xori         s4, t1, 1641
                  addi         t1, t4, -70
                  lui          ra, 693961
                  addi         t6, sp, 1555
                  and          s5, s5, zero
                  andi         t2, s2, 1269
                  ori          sp, t1, 638
                  srli         a5, s5, 8
                  srl          s4, a6, t6
                  sll          t4, ra, s11
                  add          a2, s2, t5
                  ori          a2, s7, 1435
                  and          s7, s6, tp
                  lui          s6, 87908
                  or           s0, a4, t5
                  sll          t5, t3, zero
                  sltiu        s5, a5, -1270
                  srai         s0, zero, 23
                  addi         zero, t2, 99
                  auipc        s5, 509195
                  sra          sp, t4, ra
                  xori         a1, zero, 940
                  ori          ra, s5, 553
                  auipc        s6, 605045
                  srli         t2, s3, 9
                  nop
                  ori          a7, s9, 852
                  srli         s2, t5, 3
                  slti         a2, s10, 58
                  xor          a3, s4, gp
                  nop
                  or           s1, s6, a0
                  and          a3, a4, s3
                  srai         s1, t6, 6
                  xor          s0, t4, t0
                  slt          zero, s5, s5
                  nop
                  andi         s9, s3, -1887
                  auipc        s3, 331512
                  auipc        s3, 821946
                  sltiu        a4, s7, 1944
                  slli         zero, s8, 0
                  xor          s0, a3, s7
                  and          s1, sp, t4
                  srai         s7, s6, 21
                  xori         s9, t6, -12
                  andi         ra, s0, -1033
                  srai         s4, a4, 29
                  slli         a5, gp, 7
                  lui          s8, 860329
                  or           s1, t6, s6
                  srli         s1, ra, 27
                  xor          s6, a3, t0
                  auipc        a0, 486242
                  ori          s10, a1, -1
                  sll          s0, t6, a7
                  andi         zero, s10, 1742
                  slli         a5, s2, 18
                  xor          t5, a6, t4
                  srai         t1, s11, 21
                  ori          t1, s3, 2036
                  xori         gp, s2, 269
                  sltiu        zero, a3, -399
                  or           s4, a5, s6
                  lui          s6, 227780
                  nop
                  slli         a1, t5, 22
                  addi         zero, gp, -1772
                  sll          s1, a1, s2
                  nop
                  andi         t4, s8, -1854
                  nop
                  srl          zero, t3, s0
                  sra          t2, s8, s8
                  srai         gp, t6, 10
                  add          s6, a0, a6
                  add          s10, gp, s2
                  ori          s1, a6, 749
                  srai         s4, s8, 7
                  add          s5, zero, s1
                  sra          gp, sp, a6
                  sub          a4, a2, s5
                  sub          t5, s3, s8
                  sltu         s5, s11, t0
                  andi         s3, tp, 279
                  add          t0, gp, s8
                  srl          t0, s9, s8
                  slti         t4, a2, 705
                  srl          a7, s2, s6
                  add          a5, t1, s1
                  slti         s2, a2, 1646
                  sub          s7, t1, t4
                  or           a7, s6, s8
                  srli         a1, a0, 18
                  sub          s1, s9, tp
                  sub          t0, a2, s3
                  add          t2, s10, s8
                  srli         a7, a2, 25
                  andi         a3, s1, 1528
                  srl          s1, s1, t0
                  sltiu        s7, sp, -1240
                  srai         t6, a6, 5
                  sll          t2, s3, a6
                  ori          s7, zero, -1374
                  srli         s4, s8, 11
                  sll          s10, s6, s1
                  and          s9, s8, t5
                  sltu         s6, a6, t1
                  sra          a4, s7, a5
                  nop
                  andi         s3, a0, 1776
                  sub          s0, a7, zero
                  xori         a1, gp, -1528
                  lui          a2, 341202
                  sltu         s8, a4, a4
                  or           t0, a2, sp
                  lui          t4, 621130
                  xori         s7, a1, 1653
                  sltiu        s0, s4, -252
                  srl          t2, t3, a7
                  xor          s8, s9, ra
                  slti         sp, s8, -819
                  and          t4, t2, a4
                  xori         a3, a4, -1152
                  sltiu        t3, a1, 1825
                  srl          a0, t0, gp
                  xor          s1, a2, s4
                  slti         a0, t0, 1265
                  add          s10, a7, s3
                  and          t4, s2, gp
                  or           a3, a7, s2
                  andi         s8, a7, -613
                  xori         t1, zero, -1203
                  add          a7, a5, s5
                  xori         s4, ra, 1021
                  ori          t0, s0, 1634
                  or           t5, s5, s4
                  ori          a7, s2, -1511
                  slti         a3, a1, -97
                  xor          a0, s6, s8
                  sltiu        t0, a7, -1723
                  lui          s7, 525179
                  slti         s0, s5, 679
                  sub          a7, ra, s4
                  andi         a1, t2, -12
                  slt          t1, s1, a1
                  sub          t0, s9, tp
                  srl          a4, a1, sp
                  slti         s6, a6, 388
                  addi         a1, s11, 776
                  lui          s9, 351780
                  sra          t3, t6, s3
                  or           t3, s6, t5
                  srl          t1, s9, a3
                  and          s3, s8, s1
                  xori         sp, s3, -519
                  srai         s9, t3, 24
                  sltu         t2, s3, a0
                  xor          t1, t4, tp
                  lui          s5, 27957
                  xori         t4, a1, -1251
                  lui          t4, 56512
                  lui          t4, 623052
                  lui          a5, 572054
                  xori         gp, a1, 660
                  nop
                  ori          s0, t3, 1735
                  or           t4, zero, s1
                  srl          s7, sp, t6
                  add          a2, t6, s2
                  slti         s3, t2, -815
                  auipc        t0, 271796
                  slli         a7, t0, 23
                  andi         s9, s9, -1339
                  srl          s2, s10, sp
                  auipc        sp, 67366
                  sra          s6, a1, s0
                  lui          a7, 540669
                  sltiu        s0, t3, 1898
                  and          s7, a4, gp
                  sltu         s7, a2, s6
                  xor          s3, t1, a2
                  xori         a2, s3, -166
                  addi         s10, t1, 1456
                  auipc        a0, 11819
                  andi         t5, gp, 1443
                  or           t2, a7, s10
                  srai         s8, s9, 16
                  sra          zero, t4, t1
                  slli         t0, a6, 18
                  sub          s0, t6, t4
                  srai         s1, t1, 9
                  srai         a2, s11, 8
                  sltu         t2, t0, s10
                  xor          s9, sp, s3
                  slt          s5, s9, t6
                  srli         a7, ra, 28
                  slli         t1, s6, 22
                  sra          t4, gp, s9
                  srai         s2, t1, 26
                  slli         gp, t3, 14
                  sltu         t6, a1, a3
                  slti         t3, a3, 1021
                  srl          a3, s2, t4
                  xor          a5, s10, a4
                  srli         t1, s2, 1
                  addi         a3, t3, 1634
                  nop
                  slli         a2, zero, 16
                  slli         a0, t3, 15
                  ori          a0, s1, 723
                  sra          s5, a4, a5
                  sltiu        s10, a0, 1830
                  sra          t6, s2, s11
                  addi         sp, gp, -1818
                  addi         s10, s9, -1140
                  ori          s3, s8, -1816
                  srai         sp, t0, 29
                  sltiu        s1, gp, 225
                  srl          s6, a2, s9
                  add          t4, tp, s2
                  slt          a1, s5, a2
                  sltu         s0, t4, a5
                  add          a4, a3, s5
                  xor          a1, t0, t6
                  addi         a7, s9, 1397
                  and          sp, t0, gp
                  sra          a2, t5, s8
                  xori         a2, zero, 1171
                  ori          t0, a6, -1868
                  sltu         t5, a0, t2
                  or           s5, t5, s5
                  slt          a7, s3, t1
                  sra          t1, a1, s2
                  sltu         s1, a7, t3
                  xor          s0, gp, s4
                  slli         a7, a4, 24
                  sltiu        ra, t2, -1251
                  xor          a0, t4, sp
                  sll          zero, t0, a3
                  srai         a7, s8, 29
                  srl          t1, zero, a7
                  sltu         t4, a0, a5
                  ori          t3, s6, -412
                  xor          s3, s9, s8
                  sub          ra, ra, tp
                  sub          ra, t2, s2
                  addi         a1, s3, 1140
                  ori          s1, a6, -1219
                  sra          s3, s0, sp
                  andi         s5, a7, 1265
                  sltiu        a2, s0, 806
                  sltu         a2, s2, a7
                  or           s10, s0, zero
                  srl          t6, s8, s6
                  srai         a7, s2, 25
                  nop
                  slti         s9, s3, 1421
                  ori          a2, s2, 626
                  sltiu        s7, s11, -1536
                  xor          t2, s9, a1
                  xori         ra, s6, -1034
                  auipc        s8, 144369
                  and          t3, s5, gp
                  ori          t0, a4, 4
                  sub          t4, s10, s8
                  xori         t6, a6, -223
                  srl          t1, s11, s4
                  or           a5, a6, t6
                  addi         ra, sp, 1257
                  and          t0, s3, s7
                  slli         a3, t1, 2
                  xori         t0, t2, 892
                  lui          ra, 413819
                  sltiu        s6, s0, -497
                  sll          a3, a7, a1
                  slti         s0, s9, -1083
                  srai         s10, t4, 9
                  lui          t2, 727549
                  sltu         s10, a7, a0
                  slti         a1, a5, 712
                  auipc        a4, 77687
                  addi         s10, gp, -282
                  slli         s0, tp, 20
                  xori         t2, a6, -1559
                  nop
                  xor          t2, t5, s6
                  srai         a3, s6, 14
                  slli         s10, t3, 17
                  sltu         a1, a3, s8
                  sltu         s4, s2, a4
                  or           a2, a2, s8
                  lui          gp, 1017311
                  slt          a5, s11, s5
                  addi         t0, t4, -1635
                  addi         gp, a2, -1712
                  srai         t1, a3, 6
                  slli         s9, s4, 31
                  srl          t1, a3, s3
                  andi         s1, a2, 931
                  sltiu        t3, a3, 1899
                  auipc        t0, 117198
                  lui          gp, 139483
                  sltiu        t4, ra, -998
                  sltiu        s7, s11, 1057
                  addi         a7, sp, 407
                  and          s1, s7, a6
                  slti         t6, s9, -269
                  add          t2, gp, a0
                  or           s10, s5, gp
                  srai         s5, s7, 15
                  andi         t6, t6, -1072
                  srai         s5, s9, 12
                  sub          s0, s1, ra
                  add          s8, ra, s1
                  sra          s8, s5, s8
                  slli         a0, t3, 17
                  xor          s2, s8, t6
                  xori         s5, a3, 1779
                  xori         t4, ra, -1938
                  sra          t0, t1, zero
                  xori         a5, t5, 634
                  auipc        a7, 692484
                  addi         s9, zero, -1330
                  lui          s9, 540537
                  ori          s9, s3, -46
                  srl          s6, a1, s1
                  addi         t5, s5, 1757
                  ori          s5, gp, -1832
                  auipc        s6, 624767
                  slli         a1, ra, 7
                  auipc        zero, 336177
                  ori          s3, zero, -988
                  slli         s0, s2, 24
                  sltu         ra, ra, t1
                  sll          s3, ra, s9
                  xori         s4, s5, 97
                  lui          t1, 126460
                  nop
                  srli         t6, s3, 18
                  auipc        s10, 880147
                  srl          a3, s8, s8
                  add          t5, s10, t0
                  sll          t2, a2, a3
                  xor          sp, a6, t6
                  sltu         t5, a7, s7
                  sra          s9, tp, t2
                  nop
                  slti         t1, t3, 514
                  srli         s9, a1, 22
                  srl          s9, s2, a6
                  xor          s0, sp, s5
                  lui          t6, 58940
                  or           a7, a1, s9
                  addi         t3, t3, -203
                  ori          s4, a4, 806
                  add          s9, s0, a7
                  add          t5, t0, a6
                  addi         ra, t6, 1835
                  srai         s7, s10, 7
                  slti         s10, s3, -1956
                  nop
                  srl          s10, sp, t4
                  srli         s7, t2, 31
                  lui          s0, 1005734
                  sltu         t5, t3, a5
                  slli         a5, t0, 24
                  xor          s3, s4, t1
                  or           s3, t6, a5
                  andi         t2, t2, 975
                  ori          t1, t5, 1934
                  and          ra, sp, s5
                  sra          a4, s9, s1
                  and          a1, a2, t6
                  andi         s2, s2, 1488
                  lui          a4, 235727
                  xori         s9, a5, -1028
                  addi         s8, s1, 47
                  add          sp, t2, a6
                  lui          gp, 563613
                  slti         a3, t0, 695
                  sra          a0, a3, a5
                  and          a1, s0, s1
                  or           s3, gp, t2
                  nop
                  sltiu        s9, s1, -1785
                  andi         sp, sp, 640
                  and          s10, t4, a4
                  slti         s0, s9, -1668
                  add          gp, a1, s6
                  sll          a7, a3, s10
                  lui          s9, 698504
                  sltu         t0, sp, t1
                  lui          t2, 763936
                  andi         s3, t4, -654
                  xor          t1, s5, a6
                  slli         s5, s5, 13
                  slti         a3, a1, -413
                  xor          a5, a2, s7
                  addi         s9, gp, 1530
                  srli         t2, a0, 24
                  add          t3, a7, a3
                  andi         a1, a3, -692
                  add          a1, sp, t5
                  srl          t4, t5, s9
                  lui          a5, 380478
                  xori         s8, s11, 1956
                  slti         s3, a3, -1907
                  sra          a4, s3, tp
                  andi         s8, s7, -1019
                  sll          s7, t5, s9
                  and          s8, t3, t4
                  srl          s4, t4, t1
                  srl          t1, s6, t5
                  lui          s0, 966226
                  addi         a1, a6, 1030
                  add          s9, a5, t5
                  ori          t4, s8, 343
                  sub          t6, sp, a4
                  xori         a1, t5, -1476
                  srl          a7, s5, ra
                  auipc        t3, 996202
                  andi         a2, t5, 1037
                  add          a2, s8, s0
                  sub          a5, s6, s6
                  nop
                  slti         s3, a2, -480
                  sra          a0, a7, a4
                  slti         sp, t4, 1904
                  srli         t6, t3, 24
                  srl          s0, s0, t6
                  srli         s5, t3, 24
                  slt          t0, s4, a5
                  slt          t5, t0, a3
                  add          t3, s3, s9
                  srl          s3, s7, sp
                  srl          gp, s9, a5
                  xori         t4, s0, -1120
                  sub          a7, zero, s7
                  sra          s4, s2, t3
                  and          s0, s11, tp
                  sra          s7, s3, s0
                  sll          zero, a4, ra
                  andi         a7, a6, 553
                  slti         a1, t0, -944
                  addi         s8, s1, 1690
                  slli         s6, t2, 22
                  srai         s9, s6, 20
                  lui          t2, 515798
                  and          s10, s8, a7
                  slti         a0, a4, 360
                  xori         s5, s0, 1139
                  addi         t6, t0, 1035
                  srai         zero, t4, 30
                  xori         t1, s5, 202
                  or           s7, a2, ra
                  or           t5, a4, s4
                  ori          gp, a4, -1532
                  addi         t2, t1, -676
                  addi         s3, t5, 1807
                  auipc        a4, 443294
                  xor          s5, t6, a6
                  srli         s3, t4, 25
                  auipc        zero, 545419
                  auipc        s7, 771021
                  srai         s7, s3, 27
                  auipc        t0, 187047
                  srl          s0, s8, a3
                  xori         ra, s9, -1283
                  srl          t5, s2, s6
                  add          s7, t2, a3
                  nop
                  sub          s3, t3, s10
                  srai         a7, a3, 27
                  sra          s6, s9, zero
                  sub          s10, s8, a6
                  sub          s0, t5, sp
                  srai         t0, s4, 17
                  xori         s8, gp, -1834
                  sltiu        t1, t4, 436
                  slli         a4, zero, 7
                  slli         a2, t5, 4
                  sll          s2, s2, a7
                  and          zero, a2, sp
                  sra          t5, t4, s2
                  srai         t0, t2, 8
                  slli         t5, a1, 26
                  srai         s3, s0, 14
                  sra          t5, t0, a1
                  ori          s2, a5, -1285
                  sra          a1, t4, ra
                  srl          t1, s1, s5
                  and          t2, s2, a1
                  ori          t2, s3, 353
                  slli         a5, tp, 15
                  andi         ra, tp, 330
                  lui          t6, 967776
                  lui          a7, 559706
                  slti         a0, a3, 776
                  srl          s5, t5, s2
                  slt          a7, s9, s6
                  srai         s0, a4, 23
                  srl          s7, s2, a3
                  andi         s3, s4, -1185
                  andi         t6, t3, 758
                  sltu         s10, s3, t0
                  sltu         s8, a0, a5
                  xor          t5, a5, s7
                  or           a4, gp, s11
                  sltu         a5, a0, t1
                  sltiu        a1, zero, -1694
                  sltu         ra, s6, a6
                  sltiu        a7, t2, 1773
                  sll          t6, s10, a3
                  slli         t3, t6, 17
                  sll          s8, a0, a2
                  ori          zero, a6, -1246
                  ori          a3, a6, -795
                  auipc        t4, 964254
                  sra          ra, a6, a7
                  sra          a7, a0, ra
                  srai         s4, t6, 20
                  slt          ra, t0, a4
                  slli         s9, t0, 21
                  srli         ra, s10, 5
                  slt          s6, s6, a5
                  slti         t2, t5, -672
                  sub          t4, s9, a7
                  slli         a1, zero, 21
                  sll          t6, t3, a2
                  slti         s4, t4, -850
                  slti         t5, t3, 1748
                  sra          s8, a1, a7
                  sra          s5, t0, a6
                  andi         a7, a4, 979
                  ori          zero, a3, -545
                  slti         t0, t0, 1827
                  sll          s1, s7, gp
                  sub          s5, a4, s2
                  slt          t5, a2, ra
                  lui          t0, 307475
                  srai         s6, a2, 27
                  srli         t5, s1, 16
                  sub          sp, ra, t4
                  slti         s2, a5, -1080
                  sltiu        a2, t0, -1103
                  sltiu        s1, gp, 1793
                  or           s1, t2, t6
                  slti         gp, s6, -1223
                  and          a5, a3, s2
                  sub          a3, sp, a3
                  and          sp, a3, a0
                  or           t3, s11, a2
                  slti         a2, ra, 681
                  and          t0, a5, ra
                  ori          t4, s8, 588
                  slli         sp, s11, 24
                  lui          a7, 517100
                  srli         t5, a1, 19
                  andi         s4, t6, -13
                  or           s5, t4, a5
                  xor          t4, a0, t5
                  xori         zero, t4, -1219
                  lui          s3, 708064
                  srli         t6, a1, 23
                  xor          t1, t5, s0
                  addi         s2, a3, 370
                  ori          s5, s2, -1301
                  and          a1, ra, t6
                  lui          a7, 1023975
                  srl          s5, s11, tp
                  slt          a1, a5, sp
                  or           t5, ra, s11
                  xori         t0, t6, 525
                  slti         ra, t0, 55
                  and          s1, a7, s0
                  slli         t1, s8, 14
                  srl          s3, s6, a5
                  sltiu        s9, s11, 85
                  xori         t6, a5, 951
                  lui          s9, 405269
                  add          a0, t4, t3
                  or           a4, s9, s7
                  xor          a4, a1, s2
                  andi         a4, t6, 1006
                  sub          gp, a1, a7
                  sltu         s9, s7, s1
                  srl          s7, zero, a2
                  nop
                  srai         a0, zero, 27
                  or           s0, gp, t1
                  nop
                  nop
                  srli         a7, a1, 14
                  andi         ra, gp, 603
                  sra          s9, s1, a7
                  sra          a0, a0, t0
                  add          ra, a2, a3
                  sltu         s6, sp, s9
                  xor          t5, a1, s1
                  slli         t4, s8, 7
                  ori          s0, t5, -1627
                  sub          t0, t2, a5
                  lui          s10, 285213
                  add          a7, t1, a7
                  slti         a1, t0, -21
                  auipc        gp, 476120
                  sra          t0, s9, s2
                  ori          s0, s6, -438
                  xor          s1, a7, s9
                  lui          s6, 452141
                  sub          a3, s1, a6
                  addi         a4, a3, 762
                  xor          ra, s1, t2
                  sra          gp, t0, t3
                  slli         s1, a5, 28
                  slt          zero, t5, t2
                  sltu         s2, a1, s9
                  srli         a5, t3, 26
                  sltu         s8, s9, s11
                  sltu         s7, a5, t2
                  xor          t1, zero, gp
                  slt          t1, s4, a2
                  ori          zero, zero, -1862
                  srli         s7, ra, 30
                  xor          a3, a7, gp
                  ori          t2, s5, 1124
                  sltiu        a4, a7, 629
                  slti         s10, t2, 633
                  sub          zero, t6, s1
                  and          a0, a3, sp
                  sltu         s1, s1, gp
                  auipc        sp, 482237
                  slt          a7, s0, t5
                  slt          s1, a6, sp
                  slt          a4, a4, t3
                  or           t4, s6, s1
                  auipc        s0, 719193
                  srli         t3, a0, 13
                  slti         t1, t0, -1709
                  ori          a5, s10, -31
                  srli         a0, s2, 31
                  addi         t3, s0, 763
                  sll          s2, s1, t3
                  slli         t3, t2, 5
                  sra          s2, a3, sp
                  ori          s3, a0, 2036
                  xor          a2, t4, s0
                  xor          t2, s9, a2
                  addi         a3, a1, 1354
                  srli         s2, a7, 9
                  lui          t0, 459564
                  auipc        s3, 918428
                  add          a1, a7, t1
                  lui          s5, 781108
                  srl          t2, sp, tp
                  srl          s6, t1, a6
                  add          a7, s0, s6
                  xor          t0, t3, s3
                  lui          s4, 923578
                  addi         s6, s11, 1546
                  slli         a1, s9, 1
                  lui          a7, 803401
                  or           t1, s9, t4
                  sra          a2, a3, s3
                  xori         s10, t1, 295
                  or           s3, s6, a3
                  nop
                  srli         s7, a7, 24
                  sra          zero, t2, s9
                  sltiu        s0, t1, -1947
                  xori         a1, t5, -1981
                  or           a1, s11, a6
                  xori         a2, s9, -426
                  or           zero, s4, t2
                  or           t1, a3, a1
                  sra          t2, t1, s1
                  or           s4, t5, s0
                  sltiu        a7, s3, 219
                  srai         a7, gp, 29
                  lui          s2, 411420
                  ori          t6, s1, -235
                  slt          ra, a4, gp
                  add          ra, s6, a4
                  xori         s8, t4, 1532
                  lui          s0, 845441
                  sltiu        sp, s5, 668
                  sltiu        s4, s11, 663
                  srai         s2, t6, 21
                  nop
                  srai         s7, t4, 18
                  xori         t6, s6, -1096
                  xori         a7, tp, 209
                  ori          s7, s6, 118
                  andi         a2, s5, -1326
                  slti         s4, a0, -450
                  sltu         s2, a5, s5
                  sll          sp, t5, a4
                  xor          t5, s11, a2
                  srl          t5, s9, s7
                  slti         a2, t0, -1440
                  sub          s2, s10, a2
                  slti         s10, s8, -2002
                  ori          a4, s10, 1747
                  lui          s8, 969216
                  srli         t5, a0, 3
                  sra          ra, t6, s10
                  lui          s2, 266870
                  addi         zero, t3, -1548
                  slt          s1, s9, t3
                  sltu         s6, a7, t0
                  nop
                  srl          s1, s5, s6
                  slti         s0, s8, 200
                  sltu         t3, t1, t2
                  srli         s4, t3, 22
                  srl          s3, t3, s8
                  andi         t1, a2, -1159
                  nop
                  xor          s5, s4, s3
                  slti         s3, s9, -804
                  auipc        a1, 321537
                  ori          s9, s8, 449
                  and          s7, t2, s5
                  lui          a2, 447731
                  sltu         a0, sp, a0
                  xori         a5, a2, -1561
                  slli         s5, tp, 21
                  andi         s5, a4, -1534
                  and          s6, gp, a0
                  sltiu        ra, sp, -1009
                  slli         t2, t0, 12
                  slli         s7, tp, 12
                  srl          t0, s5, s9
                  and          t5, gp, s4
                  sll          s4, s2, s3
                  or           t2, t5, a7
                  or           s5, t1, a4
                  sltiu        s0, zero, 13
                  add          s6, a0, a7
                  sltiu        s3, s11, -1993
                  add          t2, s7, s7
                  nop
                  xori         a3, s4, 2030
                  sltu         t1, ra, s3
                  sra          t1, a0, a5
                  lui          s6, 243438
                  xori         s9, s11, 986
                  auipc        s1, 936159
                  andi         s5, s0, 1515
                  sll          s8, s0, s9
                  srl          a4, s10, sp
                  ori          t2, sp, -1442
                  sltu         gp, a5, sp
                  srl          ra, s5, a4
                  xori         t4, s3, -963
                  slti         s10, t0, 1800
                  auipc        t2, 880836
                  xor          a2, a4, a6
                  sra          s0, a6, s3
                  sra          zero, s3, ra
                  nop
                  sltu         t2, ra, s9
                  auipc        t5, 718104
                  and          s6, t4, a0
                  auipc        s10, 760507
                  srai         s5, a0, 22
                  srai         a5, t2, 26
                  srai         s7, s5, 29
                  slli         a1, a2, 19
                  or           a3, s2, s9
                  slt          s9, t0, a5
                  lui          s10, 971007
                  sub          s2, t5, s4
                  auipc        sp, 106639
                  and          t1, a4, s2
                  sub          s7, a1, s5
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s6, 0xffffffff
                  li           t4, 0xffffffff
                  li           s8, 0x80000000
                  li           s1, 0x153c92cc
                  li           a0, 0xffffffff
                  li           s2, 0x80000000
                  li           a5, 0x31b0bd46
                  li           s10, 0x2fb5b20b
                  li           s3, 0x0
                  sub          a0, s1, ra
                  add          s6, t4, s10
                  sub          ra, s6, s8
                  sub          s2, a5, a0
                  auipc        ra, 668117
                  lui          s10, 353863
                  add          a0, t4, ra
                  nop
                  lui          s3, 115080
                  addi         s8, s1, 14
                  auipc        a5, 977322
                  add          a0, s8, s3
                  addi         s10, s2, -183
                  sub          s8, s10, t4
                  auipc        s1, 547451
                  nop
                  lui          t4, 760198
                  sub          s10, s1, s3
                  auipc        t4, 56248
                  addi         s1, ra, -123
                  addi         a5, t4, 2046
                  lui          s10, 475296 #end riscv_int_numeric_corner_stream_16
                  srai         a5, zero, 4
                  srai         sp, t2, 13
                  slt          t4, s11, s10
                  srli         t6, a4, 13
                  and          s6, s1, a0
                  srai         s5, ra, 7
                  srl          t2, s3, sp
                  srai         ra, s7, 13
                  slt          a7, s9, a6
                  nop
                  sll          sp, s10, a1
                  slt          s8, s10, s6
                  lui          s10, 811648
                  srl          s1, t0, a3
                  srai         s4, ra, 31
                  sra          t2, s0, s1
                  ori          s6, s8, -1720
                  or           a2, a0, a7
                  addi         t3, a0, -701
                  srli         s7, s9, 8
                  add          gp, gp, ra
                  slli         ra, a0, 7
                  addi         s6, t4, 969
                  addi         t0, t2, 829
                  add          t2, t6, tp
                  slt          zero, t3, t2
                  srli         s2, t5, 8
                  srli         t2, s6, 25
                  slli         s1, t5, 17
                  sll          a0, s4, a1
                  xori         a3, s6, -1573
                  ori          a7, a5, -1123
                  sltu         t4, t3, s1
                  srli         s2, s8, 4
                  ori          s9, a3, -927
                  srl          zero, a0, sp
                  xor          zero, s2, t6
                  xor          s0, a4, s11
                  add          t2, a0, zero
                  srl          a5, a4, t4
                  sra          t6, t0, s6
                  srai         a5, s0, 28
                  sra          s5, t1, t2
                  andi         zero, tp, 1349
                  auipc        t5, 1045285
                  addi         t4, zero, 992
                  slli         s7, ra, 25
                  srli         t3, sp, 6
                  xor          s1, a4, s9
                  nop
                  lui          s5, 162997
                  ori          gp, a7, -20
                  srl          a5, s10, s2
                  sra          a7, s10, s0
                  srl          a1, t5, s1
                  slti         s2, s1, 541
                  sltiu        t5, zero, -1358
                  auipc        gp, 493839
                  slt          t5, t0, s5
                  sll          a2, zero, gp
                  andi         t0, s3, 508
                  slli         ra, s4, 25
                  auipc        s7, 273525
                  add          ra, s7, ra
                  add          ra, tp, s5
                  srl          t6, gp, s7
                  sltiu        t0, t2, 190
                  sub          s7, a5, s3
                  slt          s1, s9, s6
                  or           s8, s6, s11
                  xori         t5, a0, 1992
                  sll          s2, s2, a0
                  srli         s5, t4, 29
                  slti         s10, s6, -1204
                  and          s8, s11, s5
                  srli         s8, s2, 18
                  slli         gp, s2, 7
                  sub          s1, a7, t4
                  ori          s6, a0, -860
                  xor          s3, a7, s2
                  nop
                  andi         s9, s8, -925
                  sltiu        s10, t0, -697
                  slti         s8, s5, -1810
                  lui          zero, 974767
                  nop
                  slti         t6, s11, 2004
                  xor          t4, tp, s4
                  ori          t3, zero, 143
                  nop
                  xor          s9, s1, s8
                  sra          a3, s5, t6
                  slli         zero, t3, 31
                  auipc        s6, 143109
                  add          a1, s4, t0
                  slli         t1, s4, 9
                  ori          zero, a1, 1502
                  slti         t1, s1, -835
                  sub          a0, s10, t2
                  addi         a4, s4, -1255
                  slti         ra, t6, 942
                  srai         t3, s11, 29
                  sra          a2, zero, t3
                  ori          s7, zero, -1630
                  sll          a0, s4, s9
                  srai         a5, zero, 25
                  sll          s9, a4, s1
                  slt          a1, a0, a5
                  or           ra, s7, sp
                  sltiu        t4, t1, -1817
                  addi         t5, a2, 69
                  andi         s8, tp, 547
                  sll          t3, a6, t6
                  sra          ra, t0, ra
                  slt          t5, t4, tp
                  sltiu        t4, t3, 924
                  slti         t1, s8, -886
                  srli         a2, t6, 25
                  addi         a4, a3, 1175
                  add          s1, zero, t3
                  sll          a3, s0, t0
                  sltu         s0, a3, a3
                  slti         a1, a4, -1575
                  xori         s9, s6, -198
                  slti         s3, s5, 1887
                  auipc        sp, 108992
                  slti         sp, t2, 1626
                  nop
                  srl          s10, gp, a2
                  slt          a7, t2, s1
                  sll          s8, t6, s5
                  srli         t6, zero, 21
                  slt          ra, s5, t5
                  sll          a1, sp, s4
                  xor          s6, a6, s3
                  slli         s5, a2, 5
                  add          sp, t3, s6
                  add          s1, zero, a7
                  sub          s4, s8, a5
                  or           a5, s10, a7
                  auipc        s9, 977398
                  ori          s10, a5, -2043
                  srli         s9, zero, 25
                  sub          a7, s5, gp
                  lui          t5, 164925
                  addi         s2, s11, -224
                  ori          ra, t3, 1129
                  sra          a3, s9, s0
                  auipc        s5, 363242
                  srl          s3, s9, t6
                  nop
                  slti         gp, a6, 360
                  sll          a3, s0, s5
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           s8, 0xca68111b
                  li           a2, 0xfe6f27cb
                  li           a5, 0x80000000
                  li           gp, 0x0
                  li           s1, 0x80000000
                  li           a7, 0x80000000
                  li           t2, 0xce152189
                  li           t6, 0x9bf6a57b
                  li           a4, 0xc272be3
                  auipc        a7, 85370
                  auipc        a4, 887482
                  sub          s1, s8, t0
                  add          t2, s1, gp
                  add          t6, s1, t6
                  lui          t6, 702738
                  sub          t0, a4, s1
                  auipc        t6, 164519
                  auipc        a7, 34126
                  addi         s1, a7, -697
                  nop
                  lui          t6, 917336
                  nop
                  lui          s8, 834457
                  lui          t0, 672229
                  add          a5, t0, a7
                  auipc        s8, 376606
                  addi         a2, a5, -1588
                  sub          a2, s8, gp
                  auipc        t6, 895786
                  addi         s8, a2, -1415
                  addi         gp, t2, -922
                  auipc        a4, 265889
                  lui          t2, 450406
                  addi         s8, t0, -916
                  sub          gp, t2, t2 #end riscv_int_numeric_corner_stream_1
                  or           s6, t0, tp
                  sub          s9, ra, s4
                  srli         a1, t1, 18
                  sltiu        s6, s8, -2021
                  slt          t6, s0, t0
                  slt          a1, a6, s0
                  auipc        s5, 99528
                  auipc        t1, 807757
                  lui          a0, 74857
                  xor          s10, tp, t1
                  auipc        a7, 499802
                  andi         t6, s11, 36
                  or           sp, s7, a0
                  auipc        ra, 8887
                  slti         t6, t1, 419
                  addi         sp, t2, 1713
                  xor          gp, sp, t0
                  lui          sp, 475887
                  or           gp, t4, s0
                  srl          a7, t0, s3
                  srai         a3, sp, 0
                  add          s5, t4, t4
                  andi         t5, a5, -204
                  slt          t4, a7, a6
                  xor          t4, s0, s1
                  lui          ra, 882968
                  sll          s9, tp, s11
                  srli         zero, ra, 2
                  and          s3, a3, s5
                  addi         t4, tp, -339
                  nop
                  srli         a3, s9, 15
                  and          t0, a0, s10
                  srai         a7, s10, 15
                  or           s1, a7, a3
                  slli         t0, s4, 24
                  sltu         t4, t0, a5
                  slli         s3, t3, 10
                  xor          s9, zero, zero
                  srl          s5, s7, t6
                  slti         ra, s11, 1342
                  slt          a4, t5, gp
                  ori          s0, tp, -1125
                  and          s8, s10, t2
                  srli         t1, s8, 3
                  sltiu        a2, t6, -1996
                  sll          t0, s6, t2
                  andi         s0, a4, 1482
                  auipc        t3, 166332
                  xor          a7, s11, a3
                  xori         a2, s3, 692
                  lui          a2, 300539
                  lui          t3, 845199
                  sltu         s4, s6, a4
                  and          s1, a4, ra
                  xor          a7, s1, s10
                  sub          sp, t1, a7
                  sltiu        t6, a5, 1696
                  srl          s7, a2, t2
                  slt          s9, tp, s1
                  lui          s8, 665710
                  ori          s4, t6, -1614
                  sltu         a0, a0, s2
                  sll          s4, t0, s3
                  and          s7, a2, s8
                  sub          s10, a3, t3
                  sltu         ra, a7, gp
                  nop
                  addi         s3, ra, -919
                  ori          a7, ra, -1640
                  xor          s6, t0, a6
                  xor          t4, t4, s9
                  xori         t1, t0, 1409
                  slli         s8, s9, 31
                  srl          s4, a1, s5
                  sltu         s10, t4, t4
                  slti         s4, s5, 969
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s10, 0xffffffff
                  li           a2, 0x0
                  li           t5, 0xffffffff
                  li           a1, 0x80000000
                  li           s2, 0x0
                  li           a3, 0xffffffff
                  li           ra, 0x80000000
                  li           a0, 0xffffffff
                  li           s7, 0x0
                  lui          s7, 741436
                  add          s4, s2, a2
                  lui          a2, 149555
                  addi         a2, a3, -1045
                  addi         s2, t5, -1763
                  lui          a3, 358560
                  add          a0, s4, a2
                  add          a0, a0, s7
                  auipc        s10, 693983
                  auipc        s2, 256890
                  auipc        ra, 154229
                  auipc        a0, 95396
                  lui          a0, 398463
                  nop
                  lui          a3, 218111
                  nop
                  sub          ra, a1, ra
                  auipc        a1, 505803
                  lui          s2, 565855
                  nop #end riscv_int_numeric_corner_stream_5
                  nop
                  addi         s1, a4, 1357
                  addi         a4, s8, -1815
                  ori          a5, gp, 596
                  slti         t5, t1, -129
                  slti         t2, t6, -1240
                  slli         s10, s10, 19
                  nop
                  sub          s0, a7, t5
                  sll          a7, a2, a3
                  srli         t5, s9, 16
                  srai         a5, t4, 21
                  auipc        s3, 53608
                  srli         s10, a0, 0
                  slt          s6, a5, s2
                  auipc        s3, 356691
                  ori          s0, a7, -2016
                  sub          s2, t4, a5
                  xor          a4, t2, a3
                  nop
                  sra          a0, s1, a2
                  auipc        a3, 127185
                  srl          s4, t5, t4
                  ori          s4, s5, 1335
                  sltu         t2, t0, s1
                  xor          s1, s1, a1
                  andi         s6, a7, -290
                  addi         t1, s2, 136
                  sltiu        s0, t2, -1767
                  srl          s3, a7, s7
                  srai         a7, s6, 22
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s0, 0xc5d3bda6
                  li           t0, 0x0
                  li           t3, 0x4533d7a8
                  li           s1, 0x0
                  li           sp, 0xffffffff
                  li           a0, 0xffffffff
                  li           s7, 0xffffffff
                  li           s8, 0x80000000
                  li           a7, 0xffffffff
                  auipc        t0, 619689
                  lui          t0, 104365
                  lui          sp, 830066
                  add          sp, t3, ra
                  lui          a7, 644778
                  lui          ra, 901712
                  addi         a0, s8, 1122
                  auipc        a0, 862524
                  lui          t3, 344906
                  addi         a0, s8, -1018
                  addi         a7, s0, -1568
                  lui          s8, 31156
                  addi         a7, sp, 1780
                  sub          t0, t3, t0
                  lui          a7, 678096
                  lui          a7, 473210
                  auipc        s1, 220290
                  nop
                  lui          s0, 447234
                  nop
                  sub          s0, ra, t3
                  sub          s8, s0, ra
                  nop
                  nop
                  nop
                  addi         s8, s1, -526
                  nop
                  auipc        s7, 457079 #end riscv_int_numeric_corner_stream_9
                  srai         s5, a5, 25
                  sltiu        zero, sp, 1797
                  xor          s2, s11, tp
                  auipc        t4, 801495
                  srli         a1, a7, 12
                  xor          a1, a1, s2
                  sra          s3, t5, t2
                  srli         a0, s1, 12
                  and          s7, a3, s10
                  sll          gp, s5, t2
                  or           gp, s4, t6
                  srl          s6, s7, a1
                  auipc        s0, 28710
                  and          gp, s8, a6
                  srl          a4, s9, s5
                  add          s2, t3, t3
                  srai         s2, s10, 9
                  addi         s2, t6, -1408
                  add          s5, t2, t6
                  xori         t1, s9, -1837
                  addi         t4, a7, 763
                  sltu         s3, s1, s8
                  srli         s0, a0, 14
                  auipc        t4, 706386
                  slt          s1, a1, a0
                  xori         s1, t3, 1332
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           s1, 0x0
                  li           a3, 0x574b7957
                  li           t4, 0x80000000
                  li           t0, 0xb9923763
                  li           ra, 0x0
                  li           s3, 0x0
                  li           s8, 0x80000000
                  li           a2, 0xaaec2c95
                  li           a7, 0x80000000
                  lui          sp, 487544
                  lui          ra, 535424
                  add          ra, t4, s3
                  add          s3, a2, s8
                  auipc        ra, 866139
                  add          t0, s3, s8
                  add          t4, s3, ra
                  auipc        t0, 868907
                  auipc        s3, 347586
                  auipc        s3, 10074
                  sub          a3, t4, a2
                  auipc        sp, 451770
                  lui          s3, 374007
                  sub          sp, a2, s3
                  nop
                  add          s8, a3, ra
                  add          t0, t4, a3
                  auipc        sp, 869394
                  lui          sp, 552906
                  lui          s3, 160131
                  auipc        a7, 502251
                  lui          a3, 284291
                  auipc        t0, 738763
                  auipc        sp, 329003
                  auipc        s1, 1043853
                  sub          t0, t4, a3
                  auipc        s3, 301054 #end riscv_int_numeric_corner_stream_11
                  sub          gp, zero, s9
                  slli         a3, s6, 16
                  ori          s6, ra, 794
                  or           s10, s4, tp
                  lui          s5, 753450
                  sltu         zero, a6, tp
                  and          ra, a7, s6
                  lui          a7, 936340
                  addi         s4, t4, -349
                  nop
                  add          t2, t6, t6
                  sll          s0, s4, ra
                  nop
                  addi         t2, s10, 1623
                  xor          a5, t6, a0
                  sltu         s4, t3, s10
                  xor          s1, a5, zero
                  slt          s3, s3, s4
                  addi         t1, ra, 1107
                  auipc        ra, 825122
                  sra          a7, sp, t3
                  sltiu        t4, s2, -1747
                  xori         gp, t1, -1320
                  sll          a7, zero, s8
                  and          zero, s4, a0
                  sll          s5, s4, a7
                  lui          s9, 1003482
                  slt          s8, ra, s7
                  nop
                  nop
                  addi         a3, a5, -1507
                  slt          s5, tp, gp
                  sltiu        s6, t0, -2015
                  nop
                  andi         a7, t5, -505
                  slli         t1, a1, 22
                  srli         a2, zero, 20
                  slt          s2, a2, t4
                  sltu         sp, ra, a0
                  slli         ra, s7, 24
                  lui          gp, 713449
                  nop
                  addi         t6, t2, 647
                  sub          t4, s0, s2
                  ori          t6, t0, 1811
                  srl          t1, a5, a6
                  auipc        t1, 849806
                  lui          s2, 51623
                  nop
                  xor          t0, s6, a4
                  xor          s6, a6, sp
                  sub          s7, t6, s4
                  sltiu        s5, a2, 1682
                  xori         t5, s6, -19
                  or           s3, t1, gp
                  or           s10, tp, a2
                  sltu         a1, a0, zero
                  ori          t6, s6, -1303
                  sll          s1, s7, a6
                  andi         t0, t1, -365
                  xor          a7, s10, zero
                  ori          gp, s4, 1537
                  nop
                  lui          a7, 654391
                  xor          gp, t4, s0
                  or           t0, s4, s4
                  srl          a5, s9, a1
                  xori         sp, t0, -1202
                  xori         a5, sp, -867
                  auipc        a2, 731280
                  sltiu        a5, t6, 2022
                  add          t6, t2, s3
                  or           t3, t4, s5
                  sltu         t2, a2, s1
                  srai         t5, a2, 10
                  addi         s1, a5, 177
                  srai         s2, t3, 7
                  srl          a4, t0, s0
                  srli         s7, t0, 31
                  srl          t1, t6, a0
                  xor          a5, s7, s5
                  xor          a1, a7, s8
                  srli         sp, s10, 23
                  xori         s7, s9, -1928
                  sltiu        t5, zero, 381
                  nop
                  sub          t2, t3, ra
                  or           t3, zero, a4
                  slti         s0, s2, -1706
                  sub          a1, ra, sp
                  slti         a4, a4, 953
                  add          s6, s10, a2
                  sub          a1, tp, t1
                  addi         sp, ra, -1891
                  slli         a1, a7, 10
                  xori         a2, s5, -1711
                  add          t4, s5, s0
                  add          s3, a4, s1
                  slti         t0, t1, -2019
                  srai         a5, a3, 12
                  sub          zero, a3, a0
                  andi         s10, zero, -1063
                  sltiu        s8, s6, -1168
                  sra          sp, s11, t0
                  add          s0, s9, ra
                  sll          s2, zero, a1
                  or           s1, s2, s0
                  srl          s8, tp, tp
                  auipc        t3, 169485
                  srli         s7, a4, 12
                  srai         t5, t2, 26
                  srai         a3, s3, 7
                  addi         a7, a7, -318
                  srl          t3, s6, a6
                  sra          a1, tp, s3
                  slt          sp, t0, t3
                  slli         s9, t2, 26
                  xori         t4, s8, -377
                  sltiu        t4, a5, -1534
                  ori          s2, s6, 17
                  lui          a7, 832383
                  add          s6, s5, zero
                  sub          s6, t4, a4
                  xor          gp, a6, t0
                  sltu         a4, s9, s6
                  lui          a4, 704571
                  sltiu        a4, s11, 1704
                  nop
                  xori         a4, zero, -1342
                  nop
                  addi         a0, t4, -40
                  xor          s7, a0, a2
                  andi         t5, a5, -144
                  sub          s8, a1, a2
                  srl          t4, s3, a3
                  slli         t5, s6, 7
                  andi         s9, s0, 864
                  slli         sp, s0, 11
                  nop
                  slli         s0, a5, 18
                  srli         s0, s0, 22
                  addi         t2, a3, -1255
                  addi         a7, s3, 423
                  sra          zero, tp, s1
                  ori          s3, a7, 1703
                  sltiu        zero, a4, 1480
                  sltu         s0, s8, tp
                  sra          a1, s9, s10
                  add          zero, s11, s8
                  ori          t2, tp, -1870
                  or           t0, ra, a7
                  srl          sp, s1, s9
                  sltu         ra, a1, tp
                  slli         s4, s6, 3
                  ori          a3, s9, -682
                  srl          t4, t6, t2
                  sltiu        s2, s3, -2026
                  slti         s10, s3, 1396
                  sltiu        t1, t6, 1517
                  xori         a5, s1, 1575
                  lui          t6, 649244
                  ori          t4, ra, 146
                  or           s4, a2, a3
                  slti         s6, t1, -1364
                  slt          t4, s9, a4
                  andi         a7, a6, 900
                  add          s0, t3, a0
                  sltu         a0, a6, s4
                  sub          s8, t1, a3
                  srl          zero, sp, t0
                  lui          s6, 680433
                  addi         s9, s1, 1634
                  nop
                  sra          a2, zero, a6
                  slti         t2, sp, -403
                  sltiu        a5, s0, -2030
                  sltu         s10, s2, t5
                  andi         s6, s3, 119
                  sltu         t3, a4, s8
                  and          s5, t6, s2
                  sra          s0, a2, s9
                  srl          s6, a5, s5
                  xori         s3, s0, -65
                  and          ra, s3, t2
                  srl          a4, s4, a2
                  lui          s2, 210162
                  and          s2, a4, t6
                  srli         s7, sp, 13
                  sltu         a1, s9, a1
                  sll          sp, t2, ra
                  xori         t5, a2, 1806
                  and          s4, s3, s4
                  sltu         sp, t3, s8
                  xori         t6, a6, -239
                  sll          t3, t6, s9
                  srai         t4, sp, 7
                  xor          t3, a2, s8
                  ori          s8, t0, 113
                  add          a4, s8, s7
                  slti         sp, s3, -1807
                  auipc        a7, 976339
                  sra          s2, s7, s9
                  nop
                  andi         s4, t1, -1947
                  slli         a2, s4, 30
                  sra          s2, sp, s9
                  lui          t5, 103422
                  sltu         t3, gp, a7
                  and          t6, s3, s9
                  srl          t5, a3, s1
                  or           s4, zero, s5
                  srli         a0, gp, 1
                  sra          t5, s2, s0
                  srl          a1, a7, tp
                  srai         s6, a4, 30
                  srl          s7, a2, a7
                  sltiu        a1, a4, 1178
                  sll          a3, a2, s2
                  sltiu        s9, s0, -1288
                  nop
                  slti         a3, s6, 1296
                  nop
                  andi         a1, a6, -1412
                  lui          a7, 614816
                  auipc        gp, 792235
                  addi         gp, t3, -749
                  lui          a5, 576220
                  srli         a1, t5, 21
                  auipc        s5, 431784
                  sub          t5, a6, s5
                  slli         s5, a2, 20
                  xori         a2, zero, -111
                  sra          s3, ra, zero
                  slli         s7, s6, 8
                  xor          t3, t3, s3
                  xori         t2, t2, -1595
                  sltiu        a2, t3, 184
                  sub          s3, s7, gp
                  sltiu        s4, tp, -519
                  slli         t0, t4, 8
                  sll          s1, s3, gp
                  xor          s7, t3, t3
                  srli         s8, s11, 7
                  srli         a1, a1, 29
                  slli         s10, s7, 19
                  srai         s1, s5, 4
                  sltu         s0, s0, gp
                  or           a2, gp, s4
                  or           zero, t2, a4
                  slti         s0, s3, 778
                  and          t2, a7, s10
                  nop
                  sub          zero, s8, s9
                  sltu         s5, zero, s2
                  xori         s4, s4, 66
                  sub          a5, a3, sp
                  addi         a2, t3, 1013
                  or           t3, gp, t0
                  srli         s8, s0, 5
                  srl          s4, tp, s0
                  slti         s6, s4, -745
                  and          s4, a0, a7
                  slti         a4, s3, -562
                  or           s1, s6, tp
                  srl          s2, gp, t2
                  sltiu        gp, s1, -22
                  sltiu        sp, t2, 486
                  sltu         a5, t1, s8
                  xori         s6, t2, 2024
                  andi         sp, t3, 1893
                  slt          t0, s4, s9
                  sltiu        sp, a6, -90
                  slt          a1, s7, a7
                  sub          sp, zero, s0
                  or           t3, a2, zero
                  auipc        s0, 365027
                  auipc        a7, 456137
                  or           a0, s4, zero
                  slt          a1, s10, s1
                  andi         s9, sp, -1219
                  xori         a0, a5, 383
                  add          a4, s1, s8
                  sltu         s5, a5, a2
                  lui          a3, 684897
                  sll          a0, tp, t1
                  auipc        a2, 344874
                  srl          a2, s4, t3
                  srl          s10, t6, a2
                  addi         s6, s7, 508
                  srai         a5, a4, 0
                  ori          t4, s1, -1764
                  sub          s6, s10, t5
                  sltiu        zero, a5, -954
                  srli         t0, s7, 27
                  nop
                  slli         t5, a4, 18
                  lui          a5, 223155
                  xor          s3, t0, a7
                  srl          s2, t5, a0
                  andi         t5, s5, -831
                  slli         gp, s6, 10
                  sub          zero, t4, a5
                  or           s4, s4, s7
                  slli         sp, s11, 5
                  sub          gp, s0, zero
                  slli         s8, s4, 1
                  xor          t4, t4, s5
                  and          s3, a7, s6
                  lui          a1, 271518
                  nop
                  lui          gp, 407465
                  nop
                  xori         a4, s10, 1269
                  lui          a7, 669547
                  slti         a5, t0, 1466
                  sltu         s10, s7, a0
                  auipc        s2, 1003105
                  slti         gp, s10, -2016
                  slli         gp, a7, 13
                  slli         a0, a7, 17
                  and          s8, t6, tp
                  sltu         a2, tp, s1
                  lui          t5, 37866
                  sll          s2, a1, t3
                  xori         a5, a7, -1323
                  sll          t2, s3, gp
                  xor          s10, s11, s0
                  xor          t0, s7, ra
                  auipc        t2, 717018
                  slli         s4, a3, 27
                  lui          s9, 338534
                  xor          t5, s9, s2
                  slti         a3, a6, -958
                  srl          s0, a3, s2
                  auipc        zero, 161303
                  ori          s4, t1, -209
                  sra          s0, t5, s7
                  sra          t2, a5, tp
                  nop
                  nop
                  sltu         s3, a2, s0
                  srai         s8, t2, 6
                  sra          zero, t6, zero
                  xori         a7, ra, -233
                  andi         s4, s5, -431
                  srli         a5, s5, 13
                  add          a4, s10, s0
                  slti         s9, sp, 95
                  sltu         t1, s1, t6
                  lui          a3, 382496
                  sra          gp, ra, s4
                  nop
                  xor          a5, s6, s9
                  lui          s6, 435739
                  lui          s6, 553259
                  xor          a3, s8, s9
                  auipc        a5, 661196
                  slti         t2, zero, -227
                  xor          s0, sp, s4
                  add          zero, t5, t3
                  lui          s1, 743082
                  srl          a1, s2, s4
                  slt          ra, a0, tp
                  srl          a3, s7, s1
                  sub          a7, a3, t0
                  sltu         a5, t2, ra
                  srl          s7, s9, gp
                  add          a2, a4, t6
                  sub          t4, s7, s8
                  sltiu        a5, a4, -889
                  or           a7, a6, a7
                  add          t1, s7, s3
                  addi         a3, a2, -662
                  xori         ra, ra, -915
                  slti         s10, s2, 1365
                  lui          gp, 856422
                  sltiu        t4, gp, 567
                  sub          s10, t3, t3
                  add          a5, s2, s3
                  slt          s5, t4, t5
                  xor          t2, a3, t3
                  sltiu        t5, s4, 1977
                  slli         a1, s7, 17
                  srai         a1, sp, 7
                  sltiu        s4, t2, 1372
                  slli         a7, t4, 19
                  srli         t6, a5, 5
                  slli         t6, s5, 17
                  sltiu        a4, s0, -1375
                  slti         t1, sp, -1106
                  sltiu        a7, tp, 1443
                  srli         a4, s11, 6
                  sub          a4, t3, a1
                  lui          s5, 716147
                  ori          a3, t3, 559
                  sltiu        s10, a5, -2024
                  and          a5, ra, a3
                  slt          a7, s0, t2
                  sub          s10, zero, s8
                  sra          a7, t6, ra
                  nop
                  xor          s6, s1, s10
                  andi         gp, t1, -1229
                  and          s5, s5, ra
                  or           s2, a4, t2
                  nop
                  andi         s1, a7, -2018
                  slli         a3, a5, 1
                  auipc        a7, 228341
                  andi         a4, s2, 1968
                  lui          s10, 921635
                  sra          t0, a0, t5
                  slt          s6, s8, s11
                  sub          t2, s3, t0
                  xori         s3, gp, 1892
                  auipc        sp, 312984
                  or           t2, a1, s2
                  ori          s7, a7, -913
                  sltu         s10, s0, ra
                  sltiu        a3, s4, 244
                  slli         a3, a4, 21
                  xor          s9, t6, s4
                  or           s9, t0, s7
                  lui          s7, 37748
                  sltiu        a5, a5, 205
                  xori         a5, ra, -1586
                  xor          s0, s6, t6
                  slt          t1, s10, a7
                  xori         s3, a0, 1061
                  add          s8, sp, s6
                  sra          s7, gp, s10
                  slli         s0, s11, 30
                  srli         sp, a5, 12
                  ori          s8, s8, -1985
                  srli         a0, ra, 24
                  xori         a1, s5, -419
                  srl          t2, s0, a7
                  sub          s9, a2, a2
                  srai         a5, s6, 18
                  sltu         s0, s8, s0
                  slli         a7, a5, 22
                  sll          s4, s3, tp
                  srai         t1, zero, 29
                  xor          t4, s3, tp
                  slti         a5, a0, 1504
                  andi         t3, s4, 1189
                  slti         s5, s11, -1089
                  sltu         t6, s10, gp
                  xor          gp, a1, s8
                  auipc        s1, 987668
                  srli         t3, s2, 21
                  slt          a5, s6, s3
                  auipc        ra, 235858
                  auipc        sp, 268826
                  slti         a7, s1, 306
                  srl          zero, s7, t2
                  auipc        a3, 942143
                  addi         a7, sp, -1590
                  srai         a2, t2, 28
                  slt          zero, s5, s5
                  andi         s2, s0, 1514
                  sltiu        t2, zero, 1123
                  sltiu        a3, a0, 1585
                  and          t5, gp, gp
                  or           a7, s3, ra
                  sub          t4, s1, zero
                  srli         gp, gp, 3
                  or           s1, t0, a1
                  auipc        s10, 781321
                  and          s1, s8, s8
                  sub          s4, t3, t1
                  auipc        a7, 127861
                  xori         a2, a4, 799
                  slli         a3, s4, 1
                  lui          gp, 537352
                  srl          s1, t4, s4
                  nop
                  srli         t1, t4, 6
                  xori         s5, sp, 954
                  srl          s10, t2, sp
                  slti         a1, s3, 1557
                  xor          zero, a3, t1
                  srli         t5, s6, 26
                  xor          a5, s9, s10
                  add          a5, s5, a4
                  sub          s0, tp, s7
                  auipc        s1, 677501
                  sra          s10, t5, a6
                  and          t4, t3, a1
                  sub          t3, tp, tp
                  addi         s2, ra, -1504
                  nop
                  sltu         gp, t6, gp
                  add          a3, a2, t6
                  slt          a1, s9, a6
                  slt          a2, a1, s2
                  lui          a5, 871039
                  slti         s9, a1, 1991
                  or           t5, a5, t1
                  sra          s5, a0, tp
                  srli         s3, s1, 16
                  or           zero, t6, t6
                  xor          a3, sp, t5
                  sra          a3, a1, t2
                  auipc        sp, 114261
                  addi         s0, tp, 777
                  nop
                  nop
                  slt          a2, ra, s11
                  xor          t6, t1, a1
                  sll          s10, a1, s10
                  ori          a2, t5, -1900
                  slli         t5, t3, 19
                  ori          s8, a0, -1843
                  addi         a2, t4, -796
                  addi         a3, t4, 34
                  auipc        s8, 818642
                  xori         t5, a4, -1624
                  sltu         s4, s5, s4
                  auipc        s7, 299812
                  slt          sp, gp, s11
                  andi         t4, a7, 1275
                  srai         s2, t0, 12
                  xori         t3, a1, -1114
                  slti         s1, s1, 1641
                  sltu         a4, a6, t6
                  sra          s7, t1, s5
                  sltu         s1, gp, t0
                  xor          s0, a2, s2
                  slli         s7, s3, 10
                  sltu         s8, s6, s1
                  srai         ra, a3, 16
                  srl          s8, a5, t2
                  addi         s7, a4, 1565
                  sltu         ra, a5, s9
                  addi         a4, s3, -1671
                  andi         s2, s9, 1220
                  xor          s6, s6, ra
                  sltiu        a3, s4, 143
                  slt          a3, s4, t3
                  srai         sp, t5, 7
                  addi         a7, s0, 254
                  addi         s2, s8, 1878
                  add          a7, s5, ra
                  nop
                  srai         s6, s9, 25
                  sll          s4, a6, ra
                  xor          t5, s0, t3
                  xori         t3, s7, -1440
                  lui          a4, 170456
                  slt          s7, ra, s5
                  nop
                  and          t2, t1, a0
                  xori         s8, t1, -1761
                  andi         s8, a6, -342
                  sll          s10, s1, t0
                  addi         s0, s2, 6
                  addi         s5, tp, -1306
                  sltu         a7, s4, s1
                  slli         t4, s6, 23
                  and          s3, s9, t0
                  add          a1, t4, t1
                  ori          a5, s6, -1185
                  nop
                  sra          ra, tp, t2
                  srai         a0, gp, 1
                  nop
                  slli         s4, s10, 10
                  auipc        s9, 781762
                  sltu         sp, s5, a7
                  srl          s9, ra, a4
                  andi         t2, zero, 647
                  sll          a7, a7, t5
                  sll          t0, t2, s1
                  or           zero, t4, s4
                  sltu         s2, a5, s2
                  xor          a0, s8, s10
                  xori         a7, s1, -795
                  andi         a0, a6, -1728
                  ori          t0, a2, -1425
                  sra          sp, a6, a0
                  and          s3, s7, s8
                  or           s0, a7, s5
                  lui          sp, 928065
                  sub          a0, s4, s11
                  sltu         s8, s11, t5
                  sltu         sp, a3, a3
                  srl          s7, s10, s0
                  nop
                  add          s7, a0, a2
                  and          a2, t0, a1
                  sra          gp, a2, s5
                  slti         s4, t1, -1417
                  xori         a7, a4, -1153
                  slt          s0, t3, t0
                  sub          gp, t3, s5
                  ori          s9, s2, -1721
                  sub          ra, gp, ra
                  xori         a2, a2, -710
                  srai         s4, a7, 14
                  sra          s1, gp, s11
                  srli         s8, a2, 27
                  ori          t5, zero, 1277
                  sltu         s0, tp, s8
                  slt          s7, t0, a0
                  xori         t6, t6, 1722
                  addi         s9, s2, 1250
                  sra          s2, s9, t0
                  auipc        s9, 707020
                  sll          s9, t3, s9
                  sltu         t1, s2, s11
                  slli         a4, a3, 26
                  xori         s2, t0, 236
                  add          s5, t4, s2
                  slti         a4, s6, 47
                  slli         ra, t2, 30
                  xor          a3, a2, t0
                  sub          t4, s4, a7
                  sll          t5, zero, a5
                  nop
                  sub          a4, s10, s5
                  and          s6, s8, t4
                  srai         sp, a7, 8
                  nop
                  sll          t2, ra, a0
                  and          t2, zero, a5
                  ori          s2, s3, -126
                  addi         s1, s1, 1219
                  xor          zero, a1, s2
                  nop
                  or           s1, s11, sp
                  sltiu        a5, t5, 216
                  and          a7, s3, s5
                  sll          gp, s6, a6
                  slti         t0, t4, -1557
                  sub          gp, a6, gp
                  sll          a5, s1, a4
                  and          a5, a7, t0
                  lui          t4, 215548
                  sra          t5, a3, ra
                  srl          ra, s0, s2
                  sra          t5, ra, s9
                  andi         t6, a5, 1708
                  nop
                  slt          a4, s4, s2
                  sltiu        zero, s3, -72
                  xor          s10, s5, a0
                  addi         s6, s7, -597
                  srai         a1, t1, 21
                  sra          t6, s3, s6
                  sub          zero, gp, s1
                  andi         a3, a2, 1374
                  sra          zero, zero, a4
                  andi         t1, s2, -248
                  addi         s8, s0, 560
                  or           t1, s11, s8
                  add          a0, s3, a4
                  srai         a4, s11, 21
                  ori          s10, s11, 1528
                  addi         a1, sp, 1665
                  sra          s2, s6, s7
                  xori         sp, t3, -613
                  sub          t4, t6, a0
                  auipc        s1, 32883
                  slt          a0, a6, s9
                  xori         a2, tp, 1625
                  sltiu        a3, s0, -1151
                  addi         s4, s11, 12
                  sub          ra, sp, a1
                  xor          gp, t2, s6
                  srli         zero, t5, 3
                  or           s1, s8, s11
                  andi         a4, s6, 1972
                  sra          s0, ra, s5
                  sltiu        ra, a5, 532
                  sltiu        a5, t3, 1748
                  and          zero, s8, t2
                  nop
                  addi         gp, s3, 391
                  slli         t5, t3, 19
                  and          s4, s6, s10
                  auipc        s10, 298428
                  sub          zero, s10, s6
                  addi         gp, s9, -1119
                  srai         gp, gp, 13
                  xori         sp, t6, -578
                  addi         a1, a4, 25
                  xori         gp, t5, 1620
                  srli         s4, s2, 4
                  slti         t5, s1, -1143
                  xori         a2, zero, -996
                  srli         s8, a0, 28
                  lui          t0, 510839
                  lui          a0, 597696
                  lui          s1, 571997
                  srli         s5, a2, 3
                  sltiu        ra, t5, 1666
                  xor          ra, sp, a7
                  sll          a3, s10, gp
                  auipc        a2, 406706
                  sltiu        s8, t2, -675
                  sltiu        a0, s7, 506
                  sltiu        t1, sp, 1966
                  srai         s2, a6, 21
                  lui          s10, 105911
                  srl          s7, tp, gp
                  slti         s10, s3, 462
                  xori         sp, a2, 1377
                  srai         t2, a6, 8
                  auipc        s9, 633911
                  auipc        gp, 436071
                  addi         a5, t0, -865
                  slt          a7, gp, t6
                  auipc        t1, 383315
                  sltiu        s5, gp, -470
                  nop
                  nop
                  srl          ra, s2, a4
                  sltiu        s2, s10, 87
                  sltiu        s5, sp, 325
                  slt          t5, a7, tp
                  sltu         s3, gp, t6
                  srai         s3, s4, 16
                  nop
                  srli         t2, s7, 17
                  slti         s3, s0, 436
                  xor          t1, s6, a0
                  ori          t5, s9, -946
                  xor          t5, sp, a2
                  srl          s6, s5, s8
                  addi         s6, s5, 2004
                  add          s5, tp, sp
                  sra          sp, s7, s6
                  add          gp, zero, s2
                  xor          a3, sp, a2
                  ori          sp, s1, 1155
                  slli         s1, zero, 12
                  srli         t2, a2, 13
                  srai         s9, ra, 8
                  srli         s1, t0, 21
                  lui          a5, 700647
                  sll          sp, s6, s2
                  and          t0, t4, s11
                  srai         zero, t5, 20
                  slti         s0, t1, 14
                  srli         s2, t1, 13
                  addi         a0, s8, -641
                  xor          s6, t6, s6
                  sltu         sp, s5, zero
                  auipc        a3, 1029733
                  and          t2, sp, t1
                  slli         s8, a3, 29
                  sll          zero, s9, s5
                  ori          t0, s0, -594
                  xor          ra, t6, a6
                  or           a1, s8, s2
                  or           t0, s2, tp
                  auipc        zero, 717204
                  nop
                  lui          a7, 643358
                  slli         s9, s6, 19
                  xori         s1, s8, 1937
                  lui          s5, 1010490
                  or           a1, ra, s7
                  andi         t4, s6, 405
                  slt          s6, t2, t3
                  lui          t5, 401808
                  lui          t0, 697986
                  add          a5, s5, s4
                  xor          a0, s5, a7
                  sll          s10, s5, s6
                  or           t0, s1, a1
                  xor          s1, t5, s3
                  sltiu        s1, s4, -1818
                  sltu         a3, tp, s3
                  lui          s6, 638925
                  slli         s0, t0, 26
                  addi         a0, t4, 1594
                  add          t3, s9, zero
                  lui          a4, 832619
                  lui          t3, 40083
                  sub          s4, a1, a1
                  ori          t2, t0, 1081
                  slt          s3, t0, t0
                  sub          s7, tp, tp
                  slt          s2, a5, s11
                  addi         a1, a0, -476
                  auipc        t6, 1045924
                  srli         ra, t5, 26
                  xor          a3, t4, a6
                  sltu         s0, s3, s6
                  add          a2, a3, zero
                  ori          t1, s10, -637
                  sltiu        s1, s6, -474
                  or           s3, a2, s0
                  or           s9, t4, t5
                  sra          s6, zero, a4
                  and          a0, a3, s5
                  sub          a2, s10, s7
                  sra          s5, t0, s6
                  sltu         s1, s2, zero
                  and          s7, t0, t3
                  nop
                  or           a4, ra, s1
                  andi         gp, s3, -1871
                  ori          s2, sp, -84
                  lui          t5, 449121
                  add          t3, s5, t1
                  srl          s3, s3, s2
                  nop
                  slti         ra, t0, 835
                  srli         gp, ra, 5
                  slt          a5, a0, t3
                  nop
                  and          s1, a0, s5
                  lui          ra, 981063
                  sltiu        t0, t0, -993
                  srli         ra, a6, 12
                  sll          a7, s8, a1
                  lui          s3, 821535
                  addi         s6, s5, 156
                  and          s2, s11, t3
                  andi         zero, gp, 299
                  and          sp, zero, s8
                  add          gp, s4, a7
                  sub          t1, zero, s2
                  sltiu        s5, s0, 1508
                  ori          s0, a7, -1676
                  sra          s1, a5, s1
                  add          s8, s1, a3
                  nop
                  xor          s0, t2, s1
                  sra          s0, t6, s7
                  add          a7, s0, zero
                  or           s8, s6, a7
                  auipc        a0, 294455
                  andi         t3, a2, -851
                  andi         t0, t4, -1668
                  slt          s4, ra, t5
                  slti         s0, sp, -1059
                  sltiu        s5, t1, 164
                  slli         s7, tp, 29
                  or           t5, sp, zero
                  addi         t4, a1, -1153
                  andi         s4, a4, -1884
                  sub          s0, a0, s10
                  sll          a0, a1, s4
                  nop
                  addi         s6, t1, 2007
                  andi         s0, a3, 646
                  sll          t0, s2, a1
                  or           s9, t1, t6
                  slli         sp, t6, 15
                  slt          s3, t0, s3
                  srl          s9, a7, t3
                  srl          ra, s10, t4
                  slti         a2, s7, -487
                  srai         a1, t1, 11
                  xori         s9, a0, -1543
                  slt          t2, s4, t0
                  slt          s5, t5, a0
                  slli         t5, s10, 21
                  slli         a0, a1, 4
                  and          t1, a0, s7
                  and          s9, s10, t1
                  slti         t3, s2, 674
                  sltu         s9, t6, s7
                  ori          ra, s4, 562
                  xor          a1, s1, s5
                  sra          gp, s6, a7
                  slt          t3, sp, t5
                  lui          s4, 595560
                  xor          t0, s0, s2
                  sltu         s8, s5, tp
                  nop
                  add          a1, t1, t1
                  slti         t5, ra, 1964
                  xori         a5, a7, -1095
                  sra          t5, t2, t5
                  add          t2, s1, ra
                  andi         s7, gp, -886
                  and          a1, s6, t5
                  xor          a4, s1, a3
                  sra          sp, a1, sp
                  sltu         a1, t2, t2
                  sub          s0, a7, t3
                  srli         s8, a6, 7
                  auipc        s7, 1023347
                  srl          a0, a0, s4
                  slt          a5, t2, s0
                  sub          a2, s1, t1
                  xori         t3, s8, -953
                  srai         s9, t4, 4
                  srai         s4, s5, 8
                  andi         s10, t5, -1181
                  srl          a5, t3, a0
                  sra          t1, s0, t2
                  xori         t4, a6, -2017
                  xor          a3, ra, a3
                  lui          t6, 270502
                  srli         s0, t5, 5
                  or           s5, s5, a0
                  srai         a3, s3, 30
                  auipc        s1, 936224
                  and          s8, t5, s10
                  sltu         t5, gp, t4
                  slti         s6, a5, 594
                  xor          s1, s4, s10
                  ori          s8, t1, -2011
                  sltiu        s5, a6, -1932
                  srl          s3, s3, t2
                  andi         s5, a0, 1297
                  sub          a0, t1, t1
                  xori         sp, zero, 1023
                  ori          s4, gp, -81
                  ori          s9, t3, 1351
                  andi         a4, t0, -1266
                  lui          s6, 767987
                  or           t4, s6, ra
                  andi         s10, zero, -868
                  slti         a7, a2, 1941
                  sll          a1, s3, s8
                  or           sp, t0, t0
                  srai         s3, s10, 26
                  srli         t0, a4, 11
                  addi         t3, s8, -1824
                  add          t0, t3, s2
                  slti         s7, s3, 1422
                  auipc        ra, 651310
                  add          a1, a6, t4
                  nop
                  sub          gp, t0, s7
                  srl          gp, sp, s4
                  sub          a3, tp, s11
                  nop
                  sll          s10, t3, a1
                  andi         a4, a4, -818
                  nop
                  slli         s4, t0, 24
                  sub          s8, a5, s11
                  slli         s5, a2, 8
                  srli         a1, s3, 27
                  slti         s8, s4, 141
                  andi         s2, t4, 585
                  srli         t6, a2, 11
                  ori          s5, s3, -605
                  srli         zero, s6, 19
                  ori          zero, s7, -831
                  srl          s8, s2, s11
                  sra          a1, a4, t2
                  andi         ra, a0, 249
                  sltiu        t4, ra, -44
                  sll          t1, tp, s6
                  ori          a7, t1, 420
                  srli         t1, a4, 10
                  sub          ra, t4, s6
                  andi         a0, t4, 1899
                  slli         zero, gp, 4
                  ori          s7, s11, -195
                  sub          zero, a0, s2
                  and          zero, t3, sp
                  ori          t6, a4, 328
                  sll          s10, a0, a2
                  andi         s6, s7, -1122
                  ori          a4, t4, 281
                  sltiu        s0, a3, -1890
                  srl          a4, t6, s5
                  and          ra, a6, s5
                  slt          s6, s10, s3
                  add          t1, s6, t1
                  sltu         t0, t4, t6
                  srl          t1, s7, s6
                  xor          a5, a3, a4
                  lui          s2, 513503
                  xor          a2, a2, a2
                  sltu         t3, s8, s8
                  sltiu        a4, t5, -242
                  auipc        s0, 983671
                  addi         a2, t0, -1930
                  lui          t3, 964395
                  or           s0, t3, s5
                  nop
                  xor          t6, sp, s5
                  slti         s7, a1, 508
                  andi         s2, a0, 969
                  sub          t0, t6, s4
                  srai         a0, s10, 3
                  srl          s2, s9, a1
                  and          a1, t2, s5
                  xori         a4, t6, -1484
                  andi         a3, s4, 1950
                  auipc        s0, 710874
                  addi         s2, t6, 133
                  and          a7, t3, s1
                  ori          s10, ra, 352
                  auipc        a5, 803378
                  slt          s3, t3, a5
                  sltu         t6, s9, zero
                  xori         s3, a4, -482
                  lui          ra, 523495
                  lui          s4, 1036889
                  srl          s6, a4, gp
                  srl          s7, t0, a5
                  add          t2, a1, a5
                  addi         gp, ra, -1025
                  slli         a0, s4, 10
                  lui          t2, 701647
                  slti         ra, zero, 106
                  slli         s10, t4, 22
                  srai         a2, s7, 29
                  auipc        s10, 313530
                  sll          sp, ra, a6
                  addi         a3, sp, -1599
                  srai         gp, t2, 31
                  andi         s0, t2, -470
                  nop
                  xori         t5, s7, -1730
                  nop
                  addi         t3, gp, -607
                  srli         a1, s11, 18
                  xor          gp, s9, s3
                  slli         t1, s0, 27
                  and          a1, s10, a0
                  srli         t4, a2, 10
                  addi         s5, a5, -1362
                  ori          s8, ra, 1069
                  add          t6, s5, s6
                  ori          a5, t6, -1129
                  andi         a0, s11, 1545
                  andi         s10, zero, -673
                  or           a4, sp, s2
                  slti         a5, s5, -1222
                  ori          a4, a0, 758
                  add          t3, s6, t4
                  srli         zero, s7, 4
                  nop
                  slt          a2, s4, s5
                  or           gp, t5, ra
                  sra          t3, sp, ra
                  sra          s0, s1, s5
                  andi         t3, a6, 1319
                  add          a1, t1, s10
                  xori         a2, t5, -2031
                  lui          a7, 77890
                  and          a4, tp, s8
                  auipc        s4, 412043
                  sltiu        t1, t3, 892
                  sltiu        a2, a1, 540
                  lui          s4, 670787
                  srli         gp, s4, 1
                  slt          s8, tp, t1
                  andi         t0, s7, -690
                  xor          a3, zero, zero
                  sltiu        t2, zero, 1159
                  lui          zero, 245654
                  auipc        s2, 15753
                  slli         a4, a1, 20
                  sub          t5, s5, t1
                  slt          s9, a0, s7
                  srai         t1, a3, 6
                  srl          s5, ra, s9
                  auipc        s8, 536741
                  srl          s6, t0, a4
                  lui          s0, 989766
                  andi         s7, t0, 1739
                  andi         s2, t2, 1313
                  srai         s8, ra, 17
                  nop
                  ori          s0, t4, 867
                  andi         a7, t4, -192
                  slt          s7, s8, a5
                  lui          a3, 997868
                  nop
                  slt          t0, s2, a1
                  srli         s10, a4, 28
                  auipc        a2, 819895
                  add          a7, t4, a7
                  sub          s6, s11, t4
                  srai         a5, a5, 19
                  lui          s10, 914852
                  addi         t5, t1, -1519
                  add          a0, s6, zero
                  sltiu        sp, t5, 181
                  or           t6, a4, s10
                  lui          s2, 317238
                  sra          t6, t4, t2
                  ori          a2, a2, 1632
                  slti         a2, a7, 181
                  sltiu        zero, s4, 522
                  or           a3, s5, s1
                  slti         s0, s10, -1773
                  sltiu        t4, s7, -1630
                  xori         t0, a1, 480
                  ori          s4, a1, -17
                  srl          s6, s9, a4
                  sll          s0, a3, tp
                  xori         a1, a7, -1706
                  xor          sp, a0, s2
                  slt          s0, a0, s10
                  ori          t2, s0, -464
                  slti         a5, s4, -1485
                  sub          a4, s2, s7
                  sll          s6, t3, t6
                  xor          gp, s10, sp
                  srli         s3, s11, 29
                  sll          s4, tp, s0
                  slti         s9, a5, -1220
                  xor          t2, tp, t4
                  slti         s0, s3, -647
                  slt          t4, a4, s8
                  andi         s5, s2, 1796
                  slti         s9, s4, 460
                  slli         s10, s7, 6
                  nop
                  slt          a4, a0, sp
                  slli         t2, s9, 16
                  srai         s9, sp, 27
                  slti         t5, zero, 713
                  andi         s7, zero, -1336
                  srli         a7, tp, 1
                  srai         a4, a2, 22
                  slli         t1, s7, 5
                  ori          s6, sp, -1680
                  sltiu        a7, a0, 847
                  ori          t6, t4, -360
                  srli         s5, s11, 7
                  srli         a5, s1, 30
                  sub          s8, ra, a6
                  sltu         a7, t0, sp
                  slli         t6, a7, 10
                  slt          t4, a5, s9
                  auipc        t2, 733928
                  ori          s7, t5, 1691
                  nop
                  lui          t5, 458006
                  or           s10, t0, sp
                  sub          s10, s0, s9
                  or           ra, s9, s4
                  srli         s4, t3, 11
                  srai         a7, s10, 30
                  and          t2, s11, a1
                  or           a1, a1, s2
                  srl          s2, a5, s3
                  srli         sp, a6, 6
                  add          s7, s7, t1
                  slti         ra, a0, 920
                  andi         t5, s11, 495
                  sll          t4, t3, s10
                  sll          t4, a3, s10
                  sll          s2, s11, s3
                  or           t3, a7, a1
                  sll          a1, a3, a3
                  addi         a1, s1, -1555
                  sra          s8, s0, a4
                  andi         s10, t0, 1437
                  sltu         s8, t0, s11
                  slti         t6, a6, -722
                  or           zero, tp, s1
                  add          a2, t0, s10
                  sub          s0, sp, t1
                  slt          t6, t0, s3
                  or           s6, zero, s3
                  slti         a2, s3, -277
                  sll          s7, s8, s5
                  xor          a2, s11, s8
                  xor          t0, a4, s8
                  ori          a1, s6, -1200
                  xor          t4, s3, s2
                  srl          t6, a1, a3
                  sra          t5, s0, a0
                  ori          s7, ra, 250
                  srli         a1, a5, 18
                  andi         ra, a2, -1273
                  sra          t1, sp, a0
                  ori          s0, s9, 1712
                  slti         sp, s11, 1244
                  xor          gp, sp, s11
                  andi         sp, t6, 1729
                  srai         t5, s3, 24
                  srl          a7, tp, a2
                  srai         s8, a5, 15
                  slli         s8, a3, 16
                  sltu         a3, t1, gp
                  sra          s6, t0, t6
                  slt          s9, zero, t6
                  auipc        t3, 279442
                  sub          t5, tp, a0
                  srli         t1, s2, 24
                  slli         a1, t1, 10
                  srl          s1, t3, s4
                  srl          a7, s2, a5
                  srai         a7, t1, 15
                  sltu         t3, t5, a5
                  or           t3, ra, ra
                  srli         a7, s4, 16
                  sll          sp, s1, a7
                  sll          t3, a5, s10
                  srl          t1, t5, ra
                  andi         a0, s2, 1105
                  sra          sp, t1, sp
                  or           t4, t0, s10
                  ori          s10, t3, -110
                  srli         t2, a2, 6
                  slli         s1, s3, 28
                  xor          t0, a4, zero
                  and          a3, tp, s2
                  slli         t3, a2, 28
                  sra          t6, t3, tp
                  auipc        s5, 50213
                  nop
                  slti         t3, s10, 94
                  sll          sp, s6, a5
                  sra          s3, s4, s11
                  sltiu        zero, t2, -1892
                  slti         s6, a4, 417
                  ori          a1, s1, -1641
                  or           sp, s3, s0
                  slt          s3, t3, s11
                  slli         a7, a2, 26
                  sra          t3, a0, s7
                  xor          t6, s5, s11
                  lui          s8, 59957
                  sub          s4, t4, s1
                  srl          t0, a3, t0
                  or           gp, t6, gp
                  slti         sp, a4, -425
                  slti         a5, t1, 622
                  and          s10, a6, a6
                  sub          zero, s4, s11
                  xor          s1, s4, s6
                  slti         a1, sp, -900
                  andi         s4, ra, -633
                  sub          t4, t6, sp
                  xor          gp, t2, t3
                  addi         t3, t1, 1290
                  or           a0, a4, sp
                  add          t4, s7, t2
                  slti         a7, a5, -763
                  srl          a7, t1, s1
                  nop
                  or           t6, s3, a3
                  srli         t6, s1, 2
                  ori          t4, t2, -119
                  nop
                  srai         t5, t4, 29
                  sltu         t3, s0, tp
                  auipc        t4, 264245
                  sra          t1, s10, zero
                  xori         a3, s3, -1330
                  nop
                  slt          zero, a6, s6
                  auipc        s10, 89827
                  and          t0, a0, t2
                  srl          a5, s6, a7
                  auipc        s0, 1013976
                  srl          s7, t1, a2
                  nop
                  sll          gp, zero, t3
                  sll          t6, s0, sp
                  auipc        a1, 805153
                  auipc        s1, 507978
                  or           s0, t0, a3
                  srl          s6, t0, t1
                  sltiu        sp, s8, 1568
                  sll          a3, t0, s10
                  andi         ra, a2, -1280
                  sltiu        a2, tp, -1583
                  nop
                  sll          s10, a2, s10
                  srli         a7, a4, 30
                  lui          s5, 85609
                  sltu         t5, t1, s1
                  nop
                  lui          a5, 845719
                  auipc        t1, 237926
                  xori         s2, s4, 1233
                  andi         a1, s0, -1966
                  sub          sp, s10, s9
                  sll          a4, a2, t2
                  addi         t4, a1, -1747
                  andi         a2, s5, 1623
                  ori          a0, t5, -1799
                  sra          s10, s8, s3
                  ori          t5, t2, 251
                  xori         s6, s6, 1257
                  addi         t5, s2, 566
                  sltiu        s7, t5, -1182
                  lui          s5, 981520
                  sltiu        s2, tp, 235
                  lui          t4, 373855
                  ori          t0, t5, -493
                  sltiu        t3, t0, -116
                  slt          t1, a6, a0
                  andi         a1, s10, -60
                  sltu         ra, gp, s7
                  lui          sp, 263941
                  sra          t2, zero, s6
                  xor          gp, s11, gp
                  slt          a0, s6, ra
                  sra          s1, s1, s7
                  sll          t5, t1, sp
                  add          s8, s5, s5
                  sll          s3, a7, ra
                  sltu         s9, sp, s8
                  sub          s0, s2, s8
                  srli         t4, ra, 4
                  nop
                  andi         s0, tp, -771
                  srli         s3, s4, 6
                  slti         t3, a6, -1557
                  ori          s1, a6, 458
                  and          s9, t4, tp
                  andi         a1, s6, -834
                  slt          t6, s8, t1
                  xori         a2, s9, -1767
                  sltiu        s4, sp, -1114
                  nop
                  sltiu        t0, a3, 1499
                  nop
                  sra          s5, s1, t4
                  srl          a7, s4, s8
                  slti         a5, t0, -703
                  sltiu        s2, a1, 1331
                  add          a0, a0, sp
                  srai         a7, a5, 16
                  sltu         s8, t5, s1
                  nop
                  sltu         ra, a0, zero
                  ori          s4, s2, -373
                  srl          zero, t1, ra
                  sub          t5, gp, t4
                  or           a7, s9, a1
                  or           a4, t3, t3
                  xor          t2, s6, s8
                  nop
                  srai         a4, t4, 22
                  sltiu        t2, t5, -245
                  xor          a0, t5, t2
                  sll          s9, sp, a3
                  ori          a5, s6, -592
                  slt          t5, s7, s7
                  slti         a3, s11, 1518
                  sra          s1, a3, s6
                  or           t0, s5, ra
                  sra          t5, t3, a0
                  sra          s7, a5, s2
                  slli         a3, s9, 15
                  auipc        s8, 490170
                  addi         a4, s11, -1625
                  srl          s0, a5, s11
                  xor          s6, t6, a6
                  addi         s3, s7, -1369
                  sra          t3, t4, sp
                  add          t5, s9, tp
                  add          a4, t0, a0
                  xori         s7, gp, 1415
                  slt          ra, s3, t1
                  ori          t6, a1, -1450
                  srl          a7, t6, s3
                  sra          a0, s11, t0
                  xori         s7, t4, -520
                  slt          a1, s4, s7
                  sll          s4, s8, a2
                  and          a4, s10, s10
                  sra          a7, s6, ra
                  srli         s5, s5, 19
                  slt          s5, s2, a2
                  slt          a2, s2, s7
                  addi         t1, t6, 1845
                  sltiu        a4, t1, -637
                  srli         s1, s2, 5
                  slti         s2, sp, -1082
                  srli         a1, s0, 12
                  slli         a1, s5, 24
                  or           s0, t3, t1
                  sra          sp, s6, sp
                  and          a0, t4, a3
                  lui          t5, 36401
                  sll          zero, a7, s10
                  andi         sp, t3, 1098
                  xori         t2, t5, -720
                  srli         s6, t0, 30
                  slt          t3, zero, s11
                  nop
                  sra          s10, a2, t4
                  sltiu        s2, sp, -321
                  add          s9, a5, s0
                  srl          s10, s11, a3
                  sra          a0, t4, ra
                  auipc        s9, 338441
                  slt          a4, a7, s0
                  xori         a0, a6, 1879
                  slli         t5, a0, 21
                  sra          t6, t1, t4
                  sll          s9, t1, t4
                  slt          s1, zero, s9
                  sltiu        s1, a2, 389
                  srai         s4, t0, 1
                  andi         s6, a2, -1846
                  sltiu        a4, s4, -973
                  add          s8, gp, s3
                  srli         a5, t2, 27
                  lui          s4, 169770
                  lui          s5, 300965
                  slt          t0, t5, sp
                  ori          s3, a7, 1364
                  slti         s4, tp, 427
                  xor          s0, s11, sp
                  srli         a5, t5, 3
                  xor          t2, t0, t1
                  sra          t0, a6, a3
                  auipc        a4, 282265
                  sltiu        sp, a7, -334
                  or           t4, ra, t3
                  srl          t0, s3, s3
                  srl          t5, s3, a1
                  or           zero, s6, a5
                  srai         s1, s1, 9
                  slt          a5, s8, s5
                  lui          a4, 866890
                  andi         t4, s10, 440
                  sltu         t2, s7, s8
                  add          sp, t0, a1
                  xori         s7, s3, 103
                  add          t3, s6, t4
                  sltu         zero, s5, a4
                  add          ra, s6, a1
                  srl          t1, t1, s8
                  addi         s5, t6, -1375
                  and          a5, s6, a3
                  slti         a2, s6, -1446
                  or           a5, t4, t2
                  sll          s2, s0, a5
                  slti         t5, t1, 320
                  xori         s0, t6, -1519
                  ori          sp, t5, -532
                  sub          t2, s7, t1
                  xor          t1, t3, s1
                  srl          s4, t6, a2
                  sub          a0, s6, a3
                  auipc        t5, 729528
                  ori          s1, s0, 1406
                  slli         sp, s10, 25
                  slti         s0, a7, -1832
                  or           s1, s6, s4
                  sll          zero, s2, t5
                  sub          s6, s4, a1
                  slli         s7, s8, 9
                  xori         t5, tp, 807
                  slt          s6, a0, s0
                  srli         a2, s8, 15
                  slli         t2, ra, 21
                  auipc        s2, 1386
                  xor          s7, s6, a2
                  add          sp, s10, a3
                  slt          a2, a5, s9
                  srli         t6, a1, 2
                  slli         a2, t2, 11
                  xor          t1, a0, t4
                  srai         s1, a7, 14
                  addi         t4, s5, -222
                  slt          a4, s2, t4
                  sra          a4, s4, gp
                  srai         s7, sp, 24
                  sll          a7, t1, ra
                  and          a2, s8, a3
                  srai         a7, ra, 31
                  srai         t3, s8, 3
                  addi         s2, t2, -613
                  sra          a0, t2, s2
                  sll          t6, s3, s9
                  xori         t4, s6, -1331
                  sra          a5, s11, s2
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           ra, 0x0
                  li           s1, 0xffffffff
                  li           s8, 0x0
                  li           a4, 0x9fcd4377
                  li           gp, 0x80000000
                  li           a7, 0x80000000
                  li           s3, 0xffffffff
                  li           t1, 0x80000000
                  li           s7, 0xfba3f9
                  addi         a4, t1, 827
                  auipc        a7, 673413
                  nop
                  sub          s7, ra, s7
                  sub          s8, a7, gp
                  lui          ra, 27066
                  sub          s7, t2, a4
                  lui          a4, 492158
                  lui          gp, 596322
                  addi         s7, t1, 900
                  addi         gp, t2, -712
                  nop
                  addi         s8, s7, 902
                  lui          s7, 182523
                  add          s7, a7, t1
                  lui          s8, 807569
                  nop
                  add          s3, s3, t2
                  auipc        ra, 1040242
                  add          a4, gp, ra
                  lui          a7, 285235
                  nop
                  sub          t1, s3, a4
                  addi         a4, t1, 1874
                  addi         t1, t1, -267
                  addi         t1, s7, 1702
                  auipc        s8, 850508
                  sub          a7, gp, s3
                  auipc        a7, 417476 #end riscv_int_numeric_corner_stream_13
                  or           s7, s6, a4
                  sub          a1, a7, a5
                  add          s9, a0, a7
                  sltu         s0, a0, ra
                  xor          a4, s1, s8
                  andi         s6, s4, 1817
                  sra          s0, tp, zero
                  add          t6, gp, sp
                  sll          t5, ra, zero
                  add          s6, sp, t0
                  sub          a3, tp, a2
                  xori         s7, s0, -1397
                  sltiu        s3, s1, -169
                  slti         a4, a4, 757
                  srl          t1, zero, tp
                  auipc        zero, 539282
                  and          a3, a7, s0
                  slti         zero, a7, -1761
                  sll          t4, t5, a6
                  or           t3, tp, t5
                  addi         s8, t3, 659
                  and          s4, t1, gp
                  slli         a5, s0, 31
                  xori         t1, a6, 979
                  sltiu        t1, s3, 1360
                  addi         a4, t6, 1946
                  lui          a3, 709853
                  andi         s6, a4, 936
                  sltiu        s2, s10, 1417
                  xor          a1, a5, s4
                  slti         t6, s9, 1103
                  sltiu        a5, tp, -1638
                  slli         t6, s1, 20
                  nop
                  addi         t2, s0, -1827
                  or           s2, s6, s11
                  sra          t3, t6, t0
                  sll          s8, t3, tp
                  sltiu        a7, t5, 1192
                  sll          t5, a3, a7
                  andi         t5, zero, -706
                  sra          s3, gp, a6
                  slti         a1, t3, -680
                  slt          zero, s3, s6
                  andi         s4, s9, -1849
                  or           a3, s8, s2
                  nop
                  sub          s8, a1, gp
                  sltu         t5, t3, a7
                  xor          s9, s5, s4
                  srli         a4, s8, 25
                  slli         s1, ra, 10
                  xor          a4, s7, t4
                  or           a0, a3, a7
                  sub          sp, s2, a2
                  xor          t3, s8, a2
                  srai         t2, s6, 18
                  sltiu        s1, a4, 350
                  sltu         s4, s8, t6
                  addi         s9, a0, -1650
                  sll          s5, t5, ra
                  add          s10, ra, a5
                  and          s2, t4, t1
                  slli         ra, zero, 31
                  add          gp, s6, a7
                  srl          t2, s7, t5
                  add          sp, s8, t0
                  add          s3, a5, t4
                  andi         s0, zero, -1491
                  and          a5, s7, gp
                  and          a3, a6, s2
                  slli         s4, sp, 14
                  sltu         t2, s11, a4
                  xor          a1, sp, a4
                  srl          t4, zero, s2
                  xor          a7, ra, a4
                  srl          ra, s11, s4
                  or           s4, t3, s6
                  and          s1, ra, s3
                  sll          s5, s9, a1
                  sub          t2, s6, s8
                  la x16, test_done
                  jalr x0, x16, 0
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
                  add x4, x27, zero
                  csrr x5, 0x300 # MSTATUS
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 31
                  bne x5, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x5, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x5, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x5, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x5, x26, ecall_handler
                  li x26, 0x1
                  beq x5, x26, instr_fault_handler
                  li x26, 0x5
                  beq x5, x26, load_fault_handler
                  li x26, 0x7
                  beq x5, x26, store_fault_handler
                  li x26, 0xc
                  beq x5, x26, pt_fault_handler
                  li x26, 0xd
                  beq x5, x26, pt_fault_handler
                  li x26, 0xf
                  beq x5, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

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
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x27, x4, zero
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
                  add x27, x4, zero
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
                  add x27, x4, zero
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
                  add x27, x4, zero
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
                  add x27, x4, zero
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
                  add x27, x4, zero
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
