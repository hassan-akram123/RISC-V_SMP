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
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 0
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  mret
init:             
                  li x0, 0xdbbf2270
                  li x1, 0xf503bbc2
                  li x2, 0x3
                  li x3, 0x7
                  li x5, 0x80000000
                  li x6, 0x158e7acf
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0x4
                  li x10, 0xf759418b
                  li x11, 0xe
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x5
                  li x15, 0xa
                  li x16, 0xd
                  li x17, 0xa851dbef
                  li x18, 0x0
                  li x20, 0xf99a09c0
                  li x21, 0xfe4e81c1
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x91993021
                  li x25, 0xf8532b05
                  li x26, 0x0
                  li x27, 0x397e466e
                  li x28, 0xf27f53bc
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0xf23ef693
                  la x19, user_stack_end
main:             li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           t3, 0xf04f9a9c
                  li           s10, 0x80000000
                  li           a0, 0x67e6b5cf
                  li           sp, 0x0
                  li           t5, 0xffffffff
                  li           s9, 0xb9679ad9
                  li           a7, 0x68807974
                  li           t4, 0x80000000
                  li           s8, 0xffffffff
                  add          a0, a0, a7
                  nop
                  sub          a7, a7, a6
                  add          t3, sp, s10
                  addi         t5, sp, -1053
                  nop
                  auipc        s8, 994270
                  add          s8, a7, t4
                  add          s10, t3, t4
                  addi         s10, s9, 752
                  nop
                  lui          t4, 689958
                  lui          a0, 435594
                  add          a6, s10, a7
                  sub          t3, a0, t3
                  lui          a7, 390060
                  sub          a7, t4, a0
                  sub          t5, a7, t3
                  sub          a7, t5, a6
                  addi         a7, t4, -1863
                  nop
                  add          t4, s9, s9
                  add          s8, s8, a0
                  add          t5, a0, t4
                  add          s10, t3, t4
                  lui          t4, 984343
                  add          sp, sp, s9
                  sub          t4, s9, t3 #end riscv_int_numeric_corner_stream_11
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s5, 0x58594d3a
                  li           sp, 0x80000000
                  li           s11, 0x80000000
                  li           s8, 0xffffffff
                  li           s4, 0x926a0727
                  li           a4, 0x0
                  li           t0, 0xffffffff
                  li           t6, 0x0
                  li           s6, 0x80000000
                  add          a4, t0, t0
                  nop
                  lui          a4, 774173
                  add          s8, s11, a4
                  auipc        s5, 492918
                  auipc        t0, 340774
                  addi         s4, a0, 1276
                  sub          a0, a4, s6
                  lui          sp, 215547
                  nop
                  addi         a0, s5, 1621
                  sub          s5, a4, a4
                  nop
                  addi         s8, s5, 1728
                  add          s5, t6, s4
                  add          a4, a0, s6
                  lui          s6, 152892
                  auipc        a4, 90397
                  addi         a0, t0, 1153
                  nop
                  nop
                  add          s4, s5, s4
                  nop #end riscv_int_numeric_corner_stream_17
                  li           s11, 0xd903bab7 #start riscv_int_numeric_corner_stream_15
                  li           t5, 0xffffffff
                  li           a4, 0x0
                  li           s1, 0xbfdf849c
                  li           t0, 0x80000000
                  li           t6, 0x80000000
                  li           s8, 0xffffffff
                  li           s10, 0xffffffff
                  li           ra, 0x3abb379c
                  li           a1, 0x80000000
                  addi         s11, s8, -1239
                  lui          s8, 959693
                  add          ra, s1, s1
                  auipc        t6, 875876
                  add          a4, t0, t0
                  auipc        s8, 854055
                  sub          t0, t5, s10
                  addi         a4, ra, 483
                  auipc        s11, 937164
                  lui          s10, 36026
                  lui          s11, 781804
                  nop
                  nop
                  add          t5, s10, a1
                  addi         s1, t0, -1851
                  add          ra, t6, t5
                  addi         s8, s11, 842
                  add          s8, t6, t6 #end riscv_int_numeric_corner_stream_15
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           s8, 0xffffffff
                  li           a2, 0x0
                  li           s7, 0x80000000
                  li           a0, 0xf84d0eba
                  li           s11, 0x26f3bbe1
                  li           a6, 0x0
                  li           gp, 0x0
                  li           s9, 0x0
                  li           a1, 0x3f763ac3
                  sub          gp, a2, a1
                  lui          s7, 708757
                  sub          gp, s8, a0
                  auipc        s7, 520416
                  auipc        s11, 537028
                  lui          a1, 172763
                  nop
                  addi         a4, a2, -1825
                  sub          a1, a4, a6
                  add          a0, a1, a6
                  lui          gp, 566526
                  add          s11, s8, gp
                  auipc        s8, 852801
                  nop
                  lui          a6, 726296
                  add          a4, s8, a0
                  addi         s11, a4, 1178
                  auipc        a0, 927362
                  nop
                  nop
                  nop
                  addi         s9, a6, 691
                  auipc        s11, 1024247
                  add          a0, a0, a2
                  auipc        s9, 1041123
                  lui          s8, 262908 #end riscv_int_numeric_corner_stream_14
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           a3, 0xffffffff
                  li           t5, 0x80000000
                  li           s5, 0xffffffff
                  li           ra, 0xffffffff
                  li           s8, 0xce716a9e
                  li           gp, 0x0
                  li           t4, 0x80000000
                  li           s1, 0x80000000
                  li           a1, 0x80000000
                  nop
                  lui          gp, 184151
                  add          a1, s8, gp
                  lui          a3, 326149
                  auipc        a1, 659297
                  lui          ra, 253758
                  auipc        gp, 907131
                  auipc        t4, 24672
                  sub          t5, a1, a3
                  addi         t4, t4, 31
                  nop
                  addi         s5, s5, 39
                  lui          s8, 632163
                  auipc        s5, 599696
                  nop
                  nop
                  auipc        ra, 584481
                  nop
                  addi         s1, s8, -961
                  auipc        s8, 1018224
                  sub          gp, s6, a1 #end riscv_int_numeric_corner_stream_19
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           a1, 0xffffffff
                  li           a2, 0x80000000
                  li           a7, 0xe7cb86a1
                  li           gp, 0xffffffff
                  li           t1, 0x80000000
                  li           t2, 0x0
                  li           a0, 0xd0d56995
                  li           s2, 0x0
                  li           ra, 0xffffffff
                  add          a7, a2, ra
                  auipc        gp, 16087
                  lui          a2, 869174
                  sub          t1, a7, a1
                  nop
                  nop
                  addi         a2, t2, -328
                  sub          t2, ra, t1
                  addi         t1, gp, 1546
                  nop
                  sub          s2, a7, ra
                  auipc        s4, 615505
                  nop
                  lui          s2, 172406
                  add          a7, s4, ra
                  auipc        t2, 886473
                  sub          s2, s2, t1
                  auipc        a7, 836959 #end riscv_int_numeric_corner_stream_5
                  li           t2, 0x96711bc9 #start riscv_int_numeric_corner_stream_12
                  li           a2, 0xc0669e1d
                  li           t0, 0x80000000
                  li           a0, 0xffffffff
                  li           a7, 0xffffffff
                  li           s11, 0x0
                  li           a4, 0x0
                  li           sp, 0x80000000
                  li           t1, 0xffffffff
                  li           s9, 0xe8fa33e9
                  addi         t2, a2, -1957
                  sub          sp, a7, t2
                  sub          a0, t1, a2
                  auipc        t0, 514311
                  nop
                  addi         t1, sp, 1196
                  add          a4, t1, t1
                  lui          a0, 219393
                  sub          a4, s11, a0
                  addi         a4, a4, -241
                  nop
                  sub          a7, t2, a0
                  auipc        a0, 474244
                  lui          sp, 418695
                  lui          sp, 899585
                  addi         a4, s11, -1496
                  addi         t2, a4, -347
                  add          s11, a2, sp
                  lui          s9, 1016698
                  sub          a0, t1, t2
                  auipc        a7, 737365
                  sub          t2, a0, a4
                  lui          s11, 88742
                  auipc        a0, 366535
                  auipc        a7, 702541
                  addi         s11, sp, 341
                  addi         t2, s11, 432 #end riscv_int_numeric_corner_stream_12
                  li           a7, 0xb486ba58 #start riscv_int_numeric_corner_stream_13
                  li           s2, 0xffffffff
                  li           s1, 0x80000000
                  li           s9, 0x80000000
                  li           s8, 0x0
                  li           a6, 0x7b65fbbc
                  li           s7, 0x0
                  li           t0, 0xffffffff
                  li           t6, 0xffffffff
                  li           a3, 0xffffffff
                  nop
                  auipc        s9, 646811
                  nop
                  lui          a7, 227154
                  sub          a6, s7, a7
                  auipc        s7, 754538
                  lui          s7, 1010122
                  addi         s8, s7, 986
                  addi         s9, s2, 990
                  add          t6, s7, s8
                  add          t6, s8, a6
                  nop
                  lui          t0, 52508
                  addi         s7, t0, -1819
                  nop
                  nop
                  sub          a3, t0, t6
                  add          s8, a7, a3
                  addi         t6, t6, 804
                  lui          t6, 545238
                  add          a3, a7, s9
                  addi         a7, s8, 311
                  nop
                  auipc        s2, 575380
                  nop #end riscv_int_numeric_corner_stream_13
                  li           t0, 0xfaae03c5 #start riscv_int_numeric_corner_stream_0
                  li           s6, 0x0
                  li           t6, 0xffffffff
                  li           s10, 0x2a861bd5
                  li           t2, 0x0
                  li           t1, 0x80000000
                  li           a2, 0x0
                  li           t5, 0xffffffff
                  li           sp, 0xffffffff
                  li           t4, 0x80000000
                  auipc        t2, 476783
                  sub          t0, t6, s6
                  addi         t4, t4, 565
                  add          s10, t4, t0
                  addi         sp, t2, -952
                  auipc        sp, 783706
                  nop
                  auipc        t0, 100299
                  lui          a2, 637655
                  addi         t4, t5, -306
                  lui          s10, 28098
                  nop
                  sub          t0, t1, t4
                  lui          t4, 526472
                  add          s6, t0, s10
                  lui          t1, 1000135
                  sub          t5, s6, a2
                  lui          t1, 994946
                  nop
                  addi         t1, t2, 1991
                  auipc        s10, 822409
                  addi         a2, t1, -394
                  addi         a2, t1, 957
                  nop
                  lui          s10, 176908 #end riscv_int_numeric_corner_stream_0
                  or           s5, t4, s5
                  slli         a1, a5, 14
                  lui          sp, 826918
                  or           a2, s9, a1
                  slti         s5, tp, 674
                  lui          sp, 685534
                  srli         zero, t3, 3
                  sll          gp, a3, s11
                  sltu         ra, t3, tp
                  and          t4, a6, t3
                  and          a5, t5, t6
                  srai         t3, sp, 24
                  srli         a2, s3, 27
                  xori         s4, a5, 701
                  lui          zero, 912543
                  sltiu        s4, t5, -1745
                  sra          s7, zero, t1
                  slti         t1, t1, -1150
                  sltu         gp, s7, s10
                  srai         t6, s6, 19
                  auipc        s11, 451432
                  xori         s10, s0, -969
                  or           s5, sp, a3
                  xor          a7, t6, gp
                  ori          a1, t5, -1336
                  sra          s6, s7, zero
                  xori         a0, s5, -477
                  sltu         s10, a3, t2
                  add          s10, a6, a5
                  xor          s10, a5, t3
                  srli         s10, s8, 11
                  srli         s8, s9, 17
                  add          a1, t2, s1
                  slt          ra, t4, a7
                  srli         a6, a1, 1
                  sltu         t0, a5, s2
                  sub          zero, s5, t6
                  andi         sp, sp, 564
                  nop
                  sltu         s7, t0, sp
                  srl          zero, s9, a1
                  sltiu        s7, a5, -137
                  sltu         gp, s5, t1
                  srl          s6, a7, ra
                  xori         t5, a1, 68
                  nop
                  auipc        sp, 737332
                  srli         t5, a6, 27
                  srli         ra, s3, 29
                  sltu         a3, a5, a2
                  auipc        t3, 571837
                  slli         t5, t0, 10
                  andi         s4, s7, -1619
                  auipc        t1, 65423
                  xor          a0, s0, s4
                  ori          sp, sp, 742
                  lui          s5, 727613
                  addi         t4, a3, -1196
                  xor          t0, s10, s10
                  xori         s4, s11, 587
                  srai         ra, s4, 13
                  sltu         s1, s1, s1
                  addi         a6, s0, -259
                  sltiu        a5, s0, -246
                  sll          s2, t6, s3
                  srai         s7, s11, 20
                  sltu         s6, tp, s8
                  addi         s6, s4, -1097
                  srai         a2, a1, 13
                  and          s2, a0, t0
                  xor          s11, sp, s8
                  xor          s11, s2, t1
                  sra          t0, ra, gp
                  sll          zero, s4, s5
                  nop
                  slt          t0, t2, t4
                  sll          t6, a6, s9
                  lui          a0, 248486
                  lui          s8, 713562
                  sub          s10, zero, s9
                  slli         s9, t3, 16
                  add          a2, a1, s5
                  sub          a7, s5, s7
                  sra          t0, s9, a6
                  nop
                  srli         s10, s2, 30
                  sltu         s10, t5, zero
                  nop
                  nop
                  srai         t4, s11, 19
                  srai         gp, s8, 18
                  nop
                  or           t5, tp, t2
                  sub          t5, a0, sp
                  sub          s1, s2, zero
                  andi         a1, s11, 1243
                  ori          zero, gp, -1039
                  slli         a6, a1, 0
                  andi         a2, t4, 1040
                  auipc        a5, 950803
                  slli         t6, a6, 7
                  add          t4, tp, sp
                  and          gp, zero, t0
                  sltiu        a1, t6, 525
                  srli         t1, s3, 19
                  nop
                  slti         t1, gp, 1196
                  srai         s2, s6, 22
                  sra          a2, a4, a4
                  auipc        t1, 208572
                  lui          t6, 934686
                  slt          s1, a6, s6
                  add          a3, gp, a0
                  addi         a7, a1, 957
                  lui          t1, 393777
                  sltiu        s9, s3, 366
                  lui          gp, 839643
                  sltiu        s2, a2, 1964
                  sub          t2, a2, a7
                  slt          t4, t6, gp
                  or           gp, s4, s2
                  slli         t1, t4, 4
                  srli         a3, t4, 30
                  andi         s5, a5, -479
                  slli         s9, zero, 2
                  addi         a5, s1, 1304
                  sra          s8, gp, s5
                  nop
                  addi         t6, a0, -344
                  add          t4, t3, s3
                  lui          gp, 668348
                  srli         s2, s9, 8
                  srai         a3, tp, 8
                  srli         t5, a2, 20
                  or           s6, s7, a0
                  srli         sp, t0, 16
                  ori          s4, s3, -1410
                  sra          ra, t0, zero
                  and          zero, a4, t6
                  xor          t2, a7, t4
                  or           s10, a1, ra
                  andi         gp, s8, 2013
                  srai         zero, zero, 9
                  sll          ra, a0, zero
                  slti         a2, a7, 476
                  auipc        zero, 348885
                  slti         ra, a5, -385
                  lui          s11, 898058
                  or           t1, t2, a5
                  srl          sp, gp, s2
                  sub          a7, s4, a6
                  sltiu        a4, a5, -418
                  xor          a2, s1, a1
                  xor          a2, a0, gp
                  sra          s4, s10, ra
                  slt          s9, t5, zero
                  srl          a6, s1, s3
                  srai         s9, a5, 13
                  srl          zero, t0, tp
                  ori          s8, s3, 1621
                  or           zero, sp, a5
                  and          a0, t3, t0
                  ori          zero, s8, -2009
                  lui          t3, 564846
                  nop
                  srai         a4, tp, 2
                  sltiu        s4, s10, -222
                  and          a2, s0, t1
                  slt          sp, t1, t5
                  sub          t6, t5, s9
                  srl          t2, tp, tp
                  addi         s10, t4, -1486
                  add          s6, t1, s10
                  sltu         t5, t1, t2
                  slli         a7, s11, 3
                  addi         a5, s10, 1634
                  sub          t2, s8, a1
                  addi         s11, a7, 1642
                  addi         a5, gp, -2009
                  srl          a6, a5, t1
                  srl          a1, t5, t5
                  sra          s9, t0, s4
                  xor          s9, t5, s10
                  and          a5, a0, s9
                  andi         s6, a3, -161
                  ori          gp, s3, -303
                  xori         s7, gp, 1327
                  slti         ra, s0, 1879
                  slt          a2, s2, zero
                  addi         t4, tp, 1408
                  srli         a1, ra, 10
                  slti         ra, s4, -1905
                  nop
                  or           sp, a2, s1
                  or           zero, a2, a4
                  sll          t1, s7, zero
                  sub          a2, a5, s5
                  xori         ra, t4, -32
                  slt          t1, gp, s1
                  lui          s4, 621274
                  lui          a7, 257949
                  sll          a7, t3, a4
                  slli         s4, s0, 27
                  andi         s9, s9, 1273
                  auipc        s4, 733546
                  sra          a6, tp, s6
                  slli         a7, s0, 3
                  slli         t1, s4, 6
                  srli         t3, ra, 17
                  srl          s1, a3, t5
                  sub          t6, a4, t3
                  srai         t6, t1, 4
                  sltu         zero, t4, s6
                  andi         t2, s7, -1045
                  addi         a5, a3, -525
                  sll          s4, gp, t6
                  add          s4, a6, zero
                  addi         s1, zero, -1324
                  sra          t3, s7, s2
                  srli         t5, a3, 27
                  nop
                  srli         zero, tp, 27
                  sltu         t4, a1, t6
                  slli         ra, a6, 2
                  sra          t6, s3, t1
                  nop
                  sra          t3, a2, a7
                  srl          s6, t4, t3
                  and          s9, a6, a4
                  addi         t2, s4, 1921
                  xor          s7, s3, s6
                  or           t2, a7, a7
                  lui          s1, 858703
                  lui          a6, 76776
                  lui          t5, 46384
                  srli         t6, sp, 28
                  andi         s2, t4, -208
                  srai         s7, sp, 30
                  and          s10, a3, t4
                  andi         a7, s10, -522
                  sltiu        s1, s2, -952
                  auipc        s6, 1035005
                  addi         a1, s5, 295
                  and          t0, tp, t4
                  and          s2, a1, s9
                  andi         a4, a7, -1509
                  add          s4, s8, a4
                  sll          a4, t2, ra
                  or           t3, t5, a1
                  sra          s2, s10, zero
                  addi         s7, s10, 1431
                  sltu         a1, a0, s10
                  srl          a6, sp, a0
                  sub          a0, s11, s1
                  nop
                  add          gp, sp, s0
                  addi         t3, s6, -366
                  sltiu        zero, s1, -1770
                  xori         s6, a0, -1606
                  xori         s6, t0, 799
                  xor          a1, sp, s7
                  slt          t0, a2, a6
                  sub          a3, t4, a1
                  slt          t5, s3, a4
                  addi         s8, s2, -786
                  slti         a1, t3, 1081
                  xor          t0, a3, t1
                  xor          sp, a4, gp
                  srli         sp, a4, 25
                  sub          s4, a6, s8
                  srl          t0, a4, a0
                  addi         gp, t3, -1037
                  sll          zero, s0, a0
                  ori          t5, s10, -1738
                  slt          a0, s10, s8
                  xori         a2, s4, -2027
                  addi         s5, a0, -263
                  sll          s4, s0, a5
                  auipc        zero, 982134
                  lui          s7, 1034922
                  ori          t3, gp, -391
                  srl          a5, s6, a0
                  addi         a1, gp, -104
                  auipc        t0, 778159
                  and          t5, a3, ra
                  sltu         s8, s9, a2
                  sub          t1, s0, s10
                  andi         t5, t4, 467
                  srai         a1, t1, 0
                  slt          a3, t1, s11
                  slt          s11, t0, a5
                  sub          a4, s6, a3
                  ori          t2, ra, -734
                  ori          a3, s6, -368
                  and          s1, s0, a4
                  lui          a6, 763020
                  sltu         s7, s4, s2
                  slli         a3, a7, 27
                  sub          t0, zero, a0
                  ori          t1, t6, 1512
                  add          s2, s2, gp
                  srai         s8, s8, 21
                  addi         a0, s8, -1464
                  sll          gp, ra, tp
                  sra          t3, s0, s0
                  add          t1, a0, s0
                  slli         a2, s10, 4
                  slli         s1, a4, 20
                  addi         zero, s4, -166
                  sub          t2, s0, s7
                  and          s4, s1, s1
                  slli         s7, s11, 9
                  ori          ra, s5, 1514
                  slt          s7, zero, s1
                  and          t4, t3, t1
                  and          s8, s8, s1
                  slti         s10, t0, 390
                  sltu         t1, s11, s7
                  lui          t4, 784236
                  auipc        t2, 872521
                  xor          a5, s4, s0
                  xori         s2, sp, 1152
                  sltu         a1, s10, t6
                  sll          ra, t4, s1
                  slli         gp, s7, 18
                  add          s4, s9, t5
                  or           a3, s8, a0
                  nop
                  add          s1, sp, t2
                  sll          a0, s3, s0
                  and          gp, t5, s6
                  sltiu        s5, t1, -698
                  srl          zero, s0, s0
                  nop
                  slti         a1, gp, -955
                  andi         t1, a3, -1191
                  sltu         a3, s0, s8
                  ori          s6, t4, 31
                  sll          a5, a5, tp
                  or           a6, t5, t5
                  or           t0, a4, t1
                  addi         s9, t3, 1884
                  or           t3, t2, gp
                  or           a7, s5, gp
                  nop
                  slti         s2, gp, 1977
                  xori         s5, s3, 556
                  ori          s6, s8, -1284
                  auipc        ra, 112573
                  srai         a2, s11, 20
                  and          s8, gp, a1
                  srli         s7, s11, 25
                  sub          s5, t2, t2
                  addi         a7, a7, -1483
                  slli         a4, s9, 19
                  slti         sp, t4, 1822
                  sll          s1, s7, s11
                  slt          s6, gp, gp
                  and          s4, a4, s4
                  auipc        t6, 823644
                  sll          s8, s4, t6
                  add          t2, a2, a6
                  slti         sp, zero, -1467
                  xor          a6, s2, t5
                  or           sp, s3, t0
                  ori          s1, sp, 1166
                  auipc        a7, 313517
                  andi         a2, t0, -953
                  andi         ra, zero, -1203
                  xori         sp, s5, 1527
                  srli         t3, s1, 4
                  sltu         s9, t6, a4
                  xor          a4, sp, s4
                  srli         zero, t3, 12
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           s6, 0x2ea13f03
                  li           t5, 0xffffffff
                  li           ra, 0x80000000
                  li           a2, 0xffffffff
                  li           a4, 0xffffffff
                  li           a6, 0xffffffff
                  li           t6, 0x80000000
                  li           t4, 0x0
                  li           s5, 0x0
                  lui          t5, 169821
                  add          s6, a2, t5
                  add          t4, t4, s5
                  addi         t6, s6, -1135
                  auipc        a4, 844033
                  sub          t4, a6, t5
                  sub          s5, t6, ra
                  nop
                  add          t5, ra, t5
                  addi         s5, t6, 945
                  lui          a7, 103046
                  addi         s6, s5, -481
                  nop
                  auipc        ra, 387417
                  nop
                  add          ra, a6, s6 #end riscv_int_numeric_corner_stream_9
                  sra          zero, s11, s1
                  sub          s9, s11, a2
                  and          t1, s5, s3
                  srl          a5, t4, s3
                  andi         t2, t3, -478
                  or           s7, tp, t1
                  lui          a1, 296322
                  sra          t3, a6, s3
                  ori          a1, s2, -1494
                  sltu         sp, zero, t1
                  ori          s11, gp, -1834
                  sltiu        ra, s9, 1939
                  or           a6, t0, s0
                  srli         t0, s4, 21
                  sltiu        a5, zero, 1931
                  andi         t1, s10, -1810
                  andi         sp, a4, -1614
                  sra          t3, a0, tp
                  or           t4, s4, t1
                  slli         s7, s6, 29
                  xori         t0, s9, 1700
                  sra          t6, s11, a0
                  nop
                  or           s4, s8, s6
                  sltiu        s11, a0, 105
                  add          ra, a5, t0
                  xori         s4, t1, -745
                  lui          s10, 743352
                  slli         t3, a1, 25
                  srl          ra, s2, a7
                  nop
                  ori          s4, t2, 1765
                  sltiu        t4, t1, -598
                  lui          s4, 30641
                  sra          sp, t3, zero
                  andi         s4, a4, 808
                  sll          t5, t2, a2
                  slti         t2, tp, -1929
                  sra          s9, t2, t6
                  slt          t0, a7, t4
                  srai         a1, s7, 7
                  sltiu        s10, s3, 1703
                  addi         zero, s9, -217
                  srai         t4, a0, 23
                  srl          s2, s4, a6
                  add          t3, t2, a4
                  sltiu        ra, t0, 10
                  auipc        s5, 197313
                  srai         a6, zero, 5
                  sltu         s8, zero, gp
                  sra          a3, a1, s0
                  srli         s4, a4, 29
                  auipc        t5, 613987
                  or           t2, s10, s5
                  srli         s8, t1, 19
                  and          t5, t5, s9
                  sll          s8, s11, s3
                  addi         a3, zero, 174
                  xor          a0, t3, sp
                  addi         s7, s3, -1873
                  andi         t0, gp, 562
                  sltu         a4, zero, s7
                  srli         sp, sp, 31
                  ori          a4, s3, 666
                  and          t6, t2, ra
                  andi         s11, t5, 571
                  nop
                  add          ra, s9, t3
                  nop
                  srli         s9, s2, 13
                  andi         s1, a3, -1431
                  slli         t4, a0, 29
                  add          t6, s10, s7
                  sltu         a1, a5, s8
                  srai         s8, t3, 18
                  or           a1, ra, a0
                  addi         s7, a0, -493
                  slli         a7, s8, 2
                  sub          zero, t1, s3
                  srli         zero, t1, 18
                  slti         a7, s1, -1917
                  lui          a2, 945605
                  nop
                  add          a0, sp, s5
                  slti         t0, a2, 1953
                  sltu         s9, a1, a1
                  sltu         t3, s5, s10
                  srai         t0, sp, 8
                  andi         s7, a3, -397
                  sll          a2, s7, s11
                  xori         a0, tp, 1999
                  slti         t0, s3, -126
                  xori         t1, t6, -1786
                  srai         s10, t1, 26
                  andi         a7, t6, 1957
                  ori          sp, t1, -1865
                  srli         s11, a2, 10
                  auipc        a6, 582749
                  nop
                  slt          a2, s2, sp
                  xor          s6, s1, t1
                  slli         s8, t6, 12
                  sltiu        a7, t2, -949
                  sll          s2, s11, s8
                  sra          t5, sp, a7
                  ori          s9, t1, -467
                  slli         s6, a3, 16
                  add          a3, s8, t1
                  auipc        s5, 817236
                  sra          s4, a6, a2
                  xori         s4, a0, 681
                  addi         t1, s1, -512
                  slti         s6, t0, -347
                  slt          gp, t3, zero
                  or           t5, t0, s4
                  nop
                  and          a0, a7, t4
                  andi         s9, s4, -1354
                  add          a3, zero, s8
                  slli         s8, t1, 21
                  auipc        a7, 166304
                  srl          sp, sp, gp
                  sub          a7, s1, t2
                  or           s11, a0, t5
                  slt          t2, s4, s7
                  andi         a4, s0, 1630
                  xor          zero, s9, t6
                  sra          sp, t2, a1
                  add          s1, s0, a0
                  sltiu        s4, ra, 476
                  xor          s7, s2, a5
                  sub          s9, t4, zero
                  xor          a5, ra, s10
                  or           a7, t1, a2
                  sll          t6, a5, t4
                  sltiu        a1, zero, -868
                  and          s5, s1, ra
                  or           a6, t1, zero
                  nop
                  ori          t5, a4, -520
                  srli         a6, a3, 19
                  slt          t3, s11, t4
                  slti         s6, t6, 1009
                  srli         ra, a2, 28
                  addi         a4, zero, -956
                  sub          t2, a6, a5
                  add          a0, s8, a7
                  sub          t0, zero, t3
                  srli         a4, t6, 0
                  lui          t2, 124363
                  or           a3, s5, t5
                  sub          t4, s4, s9
                  sltiu        t2, t0, -1467
                  slli         s2, t6, 20
                  lui          t0, 949484
                  slti         t0, t1, -812
                  nop
                  srli         s11, s6, 26
                  srli         s9, ra, 12
                  ori          t4, a3, -954
                  sll          s9, t2, s11
                  xor          s9, t3, t2
                  sltiu        a6, a4, 657
                  andi         t2, t0, -1578
                  lui          s8, 335273
                  sll          a4, s7, s2
                  srai         s6, s2, 1
                  auipc        a6, 99641
                  sub          zero, a6, s1
                  slti         a3, s2, -1031
                  andi         t4, a4, -85
                  slli         sp, s6, 26
                  addi         a7, s5, 1181
                  lui          s9, 868818
                  sra          t2, s9, s4
                  xori         t5, s6, -2032
                  auipc        t2, 729464
                  nop
                  srl          a2, s11, a7
                  or           s5, tp, a0
                  xori         s4, s10, -327
                  slti         t3, s11, 1908
                  srli         s6, a3, 6
                  srai         a0, a6, 0
                  srl          t4, s2, sp
                  addi         t2, s7, 1325
                  sub          gp, a6, s9
                  xor          s8, tp, s9
                  andi         sp, a7, 1517
                  slt          a2, a7, gp
                  sra          s10, s4, s2
                  xori         t3, t6, 1205
                  lui          s8, 918793
                  xor          t0, s11, tp
                  xor          s1, s7, s1
                  sltu         a1, a2, a0
                  xor          gp, s1, s0
                  xor          s8, t0, gp
                  sll          t6, tp, s7
                  auipc        t4, 632083
                  add          a4, t0, ra
                  addi         t3, gp, 444
                  sll          a6, t0, a1
                  add          s7, ra, s2
                  and          s7, gp, t5
                  sltu         t5, a3, s1
                  sra          s7, a5, a5
                  sra          t5, t6, t0
                  slti         s8, s1, -1277
                  or           s10, a2, zero
                  auipc        s9, 774456
                  and          t3, a0, t3
                  or           t0, tp, t6
                  srai         s8, gp, 1
                  sll          a2, a5, s4
                  xori         a0, a7, 306
                  srl          t5, t1, s10
                  srl          a0, t2, a4
                  sll          t3, a4, a1
                  andi         s1, gp, 826
                  addi         s9, s0, 1595
                  srai         a4, a3, 20
                  and          t1, t4, s7
                  sltu         t1, a0, tp
                  sub          s9, s6, t0
                  or           t3, a4, t3
                  sltu         t1, s6, s5
                  xor          t3, a1, s0
                  lui          s7, 851803
                  sub          zero, a1, s5
                  andi         sp, s8, 1995
                  xor          a3, a5, s1
                  xor          s2, s5, s8
                  slli         zero, t4, 2
                  or           a5, gp, s6
                  slt          a5, tp, t3
                  xori         t0, tp, 1341
                  sltiu        t2, s2, 1039
                  slti         s1, a6, -1349
                  sltiu        t4, t2, 488
                  ori          s7, t4, 1619
                  nop
                  lui          s9, 123401
                  slli         a3, ra, 22
                  slli         s8, s2, 30
                  srl          a0, t1, t0
                  or           s8, t2, s0
                  ori          s1, s2, 752
                  xor          s5, t3, s6
                  nop
                  xor          s9, s7, s8
                  xori         s10, sp, 1828
                  sub          s6, s3, a3
                  addi         a6, zero, 862
                  and          s5, s1, s3
                  slli         ra, s3, 29
                  slli         s2, s6, 5
                  xori         s11, t1, -1620
                  slli         sp, a0, 8
                  srai         zero, ra, 28
                  andi         a5, a7, 1665
                  slli         ra, t0, 31
                  slti         gp, a7, -1888
                  srl          a2, s9, t2
                  srai         s6, s0, 21
                  slti         a6, a1, -122
                  xor          a1, a2, s0
                  andi         s6, s10, 785
                  slti         a6, a4, 1096
                  sltiu        a4, a2, 904
                  sltu         s2, t0, t2
                  slli         t0, t4, 22
                  addi         a6, s5, -770
                  auipc        s5, 975489
                  slti         a3, sp, 1579
                  srai         s2, zero, 17
                  or           s2, s6, s9
                  srl          s4, gp, s0
                  ori          a4, s9, 1522
                  nop
                  srli         a6, t0, 14
                  sltu         a7, s7, s1
                  add          a2, tp, s4
                  andi         s11, t1, -1919
                  add          s4, t4, a6
                  sltu         s6, s5, s10
                  sub          s5, a4, a2
                  nop
                  ori          s11, s4, 89
                  nop
                  sub          gp, s0, t2
                  sltiu        a5, a4, 965
                  and          a1, zero, s5
                  sll          ra, s1, a7
                  lui          a1, 231992
                  sll          gp, s9, a7
                  and          a2, s9, s4
                  xor          s6, t1, s6
                  xor          a5, a4, gp
                  slli         t5, a4, 10
                  srl          s9, t1, s11
                  srl          t0, s10, a6
                  and          t4, s4, a6
                  srl          s1, s9, s0
                  lui          a1, 751200
                  sltiu        zero, a6, -1701
                  slt          t0, tp, s8
                  sltiu        s2, s6, -750
                  slt          t0, a7, t6
                  xor          ra, s4, a6
                  srl          a3, t4, s5
                  slli         a4, s0, 3
                  sub          s1, gp, t3
                  slli         t4, a2, 15
                  ori          s2, s6, 1733
                  and          s1, a4, zero
                  or           s9, t5, t3
                  srai         a5, s0, 31
                  sra          ra, gp, s3
                  ori          s6, tp, 568
                  sltu         s4, t0, ra
                  ori          a6, s3, 1444
                  lui          a0, 92303
                  slli         s4, t0, 24
                  sll          s11, t2, t2
                  sll          a4, s6, a4
                  xori         s8, s11, -1255
                  xor          t6, s6, a7
                  slt          ra, t1, t1
                  nop
                  sll          s5, a7, tp
                  xori         t6, a4, 614
                  sll          gp, s6, a2
                  srl          a7, t4, tp
                  srai         ra, a1, 14
                  xori         s2, s1, 1952
                  srli         a2, s0, 16
                  ori          t2, a5, -419
                  srli         s10, a7, 14
                  xor          a2, s2, a1
                  or           t6, a2, a3
                  add          s2, a0, s9
                  sll          s2, s7, s11
                  xori         s1, zero, -1266
                  slli         t2, s4, 11
                  andi         t4, t4, -1334
                  ori          t5, a5, 1100
                  srai         a5, s2, 1
                  lui          a3, 62360
                  addi         ra, t4, -1089
                  slti         s4, tp, 1487
                  xori         t3, a7, 1840
                  slt          t1, a6, s6
                  srli         s7, t5, 24
                  auipc        s4, 273317
                  or           a2, s5, s5
                  addi         a6, s10, 173
                  sltu         t1, a4, s4
                  sll          s11, s1, a7
                  xor          s5, t1, s0
                  sltiu        gp, s4, 1409
                  slti         sp, zero, -1465
                  slti         t1, s7, -1325
                  nop
                  srli         zero, s7, 22
                  nop
                  andi         t5, s4, -1019
                  sltiu        s10, tp, 1466
                  andi         s5, s8, -964
                  srai         a4, t1, 25
                  sltu         s4, a6, a4
                  sub          a1, s3, gp
                  nop
                  srl          s10, a7, s0
                  auipc        a6, 155187
                  srl          s4, s4, t2
                  sltu         t1, t0, t4
                  add          t4, s9, ra
                  add          t6, s10, t6
                  sltu         t1, a7, a2
                  and          s5, s6, a2
                  and          sp, a4, t5
                  xor          zero, s6, s1
                  sll          s9, s6, s8
                  add          a3, t2, sp
                  auipc        sp, 1043733
                  sub          s10, s5, gp
                  nop
                  ori          s10, s9, 1065
                  srli         t5, s3, 20
                  sltu         a0, t2, s9
                  and          s2, s9, t1
                  xori         s5, ra, 1511
                  slt          s8, tp, a6
                  slti         t5, t2, 1541
                  sll          a5, t2, a0
                  sll          s7, s9, s11
                  addi         a7, s8, -448
                  sll          a0, s8, s0
                  sra          a6, t5, a6
                  or           a5, t0, tp
                  nop
                  sra          a1, zero, s5
                  slti         t4, s1, -804
                  or           zero, ra, t1
                  srli         a0, zero, 2
                  xor          s7, t5, s1
                  slt          a1, a7, a3
                  sra          t0, a1, a6
                  ori          sp, zero, -1633
                  or           s4, t2, s7
                  addi         t5, a4, -1931
                  slt          gp, tp, a6
                  and          s1, a0, s1
                  nop
                  sll          t1, t0, ra
                  xor          t5, s6, ra
                  addi         t5, tp, 1246
                  lui          a0, 498607
                  and          a7, a5, a3
                  sll          s7, a1, t5
                  srl          gp, s5, s10
                  xori         s8, s6, 1298
                  nop
                  sub          t1, s0, s1
                  slti         a0, tp, -1922
                  srai         sp, s1, 14
                  add          t3, t6, a0
                  sub          t3, a1, s10
                  xor          t3, s10, a2
                  nop
                  nop
                  srli         t0, zero, 8
                  xor          a7, tp, ra
                  add          s11, a4, ra
                  addi         a6, s8, 226
                  sltiu        s4, t1, -1179
                  slti         gp, s10, 426
                  srai         s10, a3, 26
                  nop
                  andi         s9, a3, -53
                  slt          a2, s7, t5
                  sll          s4, a5, t2
                  sltu         t5, tp, s9
                  slt          zero, ra, a3
                  slti         zero, t2, -2044
                  addi         a3, s4, 1985
                  sltu         a0, s9, t5
                  xori         s6, a4, -1595
                  slli         s1, a0, 14
                  or           a0, gp, a3
                  slli         a3, a0, 4
                  srai         s1, a7, 0
                  srli         ra, zero, 19
                  srai         a5, s11, 13
                  slt          s6, s11, s0
                  and          s9, a6, a0
                  srai         a6, s5, 28
                  srai         a4, a7, 30
                  ori          a2, t6, 476
                  slt          s4, a1, s8
                  slt          sp, s5, s1
                  srl          a4, a6, s5
                  andi         s10, t0, 1785
                  and          t4, s4, t5
                  slt          a6, gp, a7
                  sra          t2, s0, a7
                  slti         zero, a3, 863
                  addi         t0, t5, 843
                  and          t6, s10, s6
                  xori         zero, s8, -1242
                  slti         t2, a3, -1847
                  sltiu        a2, t2, 1382
                  or           t3, s4, s4
                  lui          gp, 631337
                  andi         s8, s8, 1930
                  xor          t4, sp, t6
                  sll          a1, s5, a6
                  slt          a5, sp, s7
                  srai         t6, a2, 0
                  addi         t6, s8, 406
                  addi         t3, s8, 2005
                  lui          s10, 260112
                  srai         t5, s9, 26
                  auipc        t6, 87096
                  add          a6, a1, t4
                  andi         a7, s9, 583
                  and          a7, s5, t3
                  sll          s10, gp, s8
                  slti         t5, s9, 76
                  sub          a3, s7, a2
                  sltu         t2, a6, a2
                  and          s7, s11, t4
                  andi         s9, zero, -2023
                  lui          s11, 552141
                  srai         a0, t2, 24
                  slti         t1, t5, 1940
                  add          s2, a5, a6
                  srli         s8, a5, 10
                  srli         a6, s2, 9
                  slli         ra, s9, 15
                  ori          a2, t0, -1492
                  sub          t1, s8, s5
                  slt          t5, t5, t2
                  andi         s6, t5, 1524
                  sra          a7, a0, a6
                  sra          s10, t4, s5
                  add          t0, t4, ra
                  lui          a5, 312500
                  nop
                  sra          s6, s7, s4
                  andi         s5, s1, 1463
                  sra          t1, t4, a2
                  and          s11, a3, a5
                  sub          a3, s7, sp
                  ori          a0, ra, 1142
                  slti         s6, s7, 932
                  add          s2, t6, a0
                  srli         s9, s2, 11
                  srl          t3, tp, a6
                  sra          a2, a0, s8
                  sra          t5, t3, ra
                  lui          s11, 970970
                  srai         t0, ra, 1
                  add          ra, a6, s4
                  addi         a7, s3, -891
                  slt          a3, a0, a3
                  srai         s7, tp, 16
                  xori         s2, a4, 881
                  sll          a5, a7, s8
                  auipc        s7, 1019656
                  xori         s5, sp, -643
                  srli         s6, ra, 28
                  sltiu        s10, sp, -1017
                  auipc        t6, 571672
                  srai         a7, gp, 13
                  or           t1, gp, s2
                  xori         a7, a6, -124
                  ori          a6, s7, 900
                  addi         a7, ra, 1255
                  slt          s1, s11, t4
                  xor          t5, t1, ra
                  sll          t5, s6, zero
                  sra          a0, a4, sp
                  slt          zero, gp, ra
                  slli         sp, t6, 1
                  sub          a5, t2, t2
                  sll          s4, sp, t0
                  add          s10, a5, s0
                  sub          t5, a5, s3
                  lui          t5, 465462
                  ori          a6, a1, -1294
                  sltu         s4, tp, gp
                  srl          s1, a0, s5
                  sltiu        s11, s7, 400
                  auipc        a6, 667190
                  nop
                  slti         a5, s8, 1907
                  or           s1, a0, a0
                  srl          s9, s5, s5
                  and          a5, t6, s3
                  addi         s9, gp, -1414
                  or           ra, zero, s2
                  auipc        t0, 90173
                  lui          t1, 64068
                  srai         sp, s0, 6
                  sll          s2, t6, t3
                  ori          ra, sp, 959
                  and          a3, s3, s8
                  auipc        t4, 310585
                  andi         s10, s2, 73
                  xori         s9, s11, -992
                  sra          t6, a0, s5
                  srai         a7, a5, 18
                  xor          t3, t2, s5
                  andi         t1, a5, -1283
                  srl          a6, a4, t6
                  ori          t4, tp, -1957
                  sub          s5, t6, t3
                  srai         s1, s2, 2
                  nop
                  addi         t6, t5, 311
                  auipc        a1, 302734
                  sltiu        s10, t3, 812
                  xori         s10, ra, -1761
                  sltu         a7, s10, a6
                  sra          s9, t4, s4
                  sub          a3, s7, s4
                  addi         gp, t0, -62
                  or           a6, t6, s10
                  sltiu        s2, s11, 522
                  add          s8, s0, a4
                  sll          s5, s4, t2
                  lui          t3, 301677
                  lui          s8, 107027
                  sltiu        t5, s0, 2001
                  sltiu        t5, s4, -350
                  or           t1, tp, a2
                  and          s9, a3, a6
                  slti         s2, a1, 1077
                  xor          t2, a1, a4
                  xori         t2, ra, 1718
                  xor          a4, s6, s5
                  addi         a7, t3, 1306
                  nop
                  slti         t0, s9, 1546
                  or           a3, t4, t3
                  xor          a7, a7, s2
                  add          t0, t1, zero
                  and          t3, a7, s7
                  sub          s2, a1, a6
                  slti         s6, a6, 1724
                  slt          a3, s10, s1
                  sub          a3, s10, t2
                  sll          ra, t4, a7
                  slli         t6, s1, 10
                  xor          zero, s4, gp
                  add          t4, s2, s2
                  srai         t6, s2, 9
                  sll          t6, s0, a3
                  andi         t2, t4, 479
                  srli         t2, a6, 2
                  sra          s5, t5, t0
                  sra          s1, s10, a5
                  srai         s4, s7, 26
                  sra          s9, s11, gp
                  sltiu        t4, a4, 1586
                  sll          s8, sp, s7
                  xori         s1, s10, 1618
                  slt          s4, s6, s11
                  ori          s11, a7, 1038
                  xori         a0, zero, -238
                  lui          s11, 270976
                  slt          s2, t0, t2
                  addi         s1, s3, 181
                  sltiu        s9, s10, 1879
                  sub          a1, s6, s2
                  sltu         ra, s11, s9
                  sltu         t6, s3, t6
                  auipc        s9, 458313
                  addi         t3, gp, -1962
                  sltiu        s8, t2, -458
                  sltiu        t1, a6, 1538
                  xor          s2, s4, s6
                  addi         s2, a4, -137
                  addi         s6, gp, -88
                  sltu         sp, t5, s9
                  sub          t4, t3, a6
                  auipc        s11, 225977
                  or           t5, sp, s8
                  slti         s1, s7, 465
                  auipc        s11, 157618
                  slti         a7, a2, -1757
                  ori          a3, s0, 1391
                  lui          s6, 43188
                  slti         t1, t6, 1810
                  or           gp, a3, a4
                  slti         t3, s10, 1297
                  xor          s5, s3, gp
                  andi         t4, tp, 599
                  sltu         a3, a4, s0
                  srl          a7, a2, s5
                  xori         t2, sp, -1489
                  or           a7, a1, t6
                  nop
                  lui          a5, 34461
                  and          sp, s6, a2
                  sltu         zero, s7, a6
                  addi         a4, t5, 749
                  addi         s4, a1, -1557
                  sub          t1, s7, a4
                  sub          a2, s1, s6
                  sll          ra, s7, s5
                  srli         zero, t5, 1
                  andi         a2, a3, -958
                  and          a0, t0, t2
                  lui          s2, 412102
                  or           a2, s10, s3
                  addi         s8, s11, -816
                  auipc        s8, 876307
                  xor          t0, s2, t6
                  sll          s11, gp, gp
                  sltiu        t3, gp, -1131
                  xor          s2, s0, s9
                  andi         s1, a4, 1767
                  andi         a5, a0, 204
                  srli         t1, ra, 4
                  srai         t1, ra, 17
                  srl          t6, a7, tp
                  sll          s5, ra, s9
                  srl          s8, a6, t2
                  sll          s2, s10, a5
                  andi         s7, s4, 1521
                  nop
                  srai         a4, s5, 15
                  srai         s2, s10, 13
                  sltiu        a4, a6, 1567
                  sub          t6, s10, t1
                  srli         a7, s6, 18
                  sll          a2, a3, s7
                  auipc        s10, 447376
                  sltu         s5, t1, s7
                  slt          a5, t2, gp
                  srli         s5, s8, 0
                  addi         a4, s0, -1435
                  slt          zero, a3, s3
                  sub          s4, ra, s6
                  addi         a0, t4, 1946
                  and          a2, t1, sp
                  sll          s8, s3, s0
                  slli         s10, sp, 18
                  addi         a4, a7, 935
                  slti         s10, a4, 100
                  add          t2, tp, a0
                  sltiu        a7, zero, -359
                  sltiu        s9, s10, -1574
                  nop
                  sra          t3, t4, a5
                  slti         s6, s1, 849
                  andi         t6, ra, 1101
                  nop
                  sltiu        s10, a5, -1601
                  nop
                  lui          a1, 37390
                  nop
                  nop
                  or           zero, t2, s0
                  sll          s2, t5, t0
                  sll          a6, t1, t1
                  sltu         a3, t6, sp
                  xori         t6, a6, 81
                  xori         t6, sp, 1713
                  sll          zero, s0, a5
                  or           s6, s10, ra
                  slti         s4, a0, 994
                  ori          a6, a5, 1337
                  slli         a2, s9, 3
                  or           a3, t3, sp
                  add          zero, s2, t1
                  auipc        t2, 755217
                  auipc        s6, 1006154
                  ori          t6, s0, 1811
                  slti         s4, t4, -1053
                  auipc        s9, 1005143
                  srli         a2, ra, 14
                  or           t3, zero, s9
                  sltiu        s11, s4, -322
                  or           a3, zero, ra
                  sltiu        s7, a0, 503
                  sltu         s7, s8, s0
                  srai         s4, a3, 2
                  sub          t5, gp, s8
                  ori          a3, t3, 1147
                  slti         a0, a5, -1552
                  xori         ra, t0, -637
                  auipc        zero, 615807
                  sra          a3, t2, s1
                  slti         a4, s11, 1737
                  and          s6, s3, s7
                  srl          a7, a0, t4
                  and          t1, s2, s8
                  sltiu        t2, t0, -607
                  xor          s7, t3, t4
                  ori          s5, a6, -1121
                  sra          s9, s9, gp
                  srli         t4, a5, 7
                  or           t3, t1, a5
                  addi         a0, s8, 1311
                  sltiu        gp, t1, -923
                  xori         a0, s1, 1619
                  ori          t6, t6, 378
                  sub          t3, ra, s3
                  addi         s6, a2, 151
                  lui          zero, 21076
                  slt          s6, t3, s3
                  sltu         s7, t5, tp
                  sra          s7, sp, a0
                  slli         zero, s5, 19
                  sltu         a3, s8, s3
                  srl          a6, t2, t3
                  sll          s8, s10, tp
                  nop
                  nop
                  srli         t6, s7, 12
                  xori         a1, s7, 1870
                  sll          s5, s0, t0
                  slti         a0, a0, 615
                  sltiu        a4, s11, -497
                  xor          a4, gp, a3
                  add          a0, s3, ra
                  srai         ra, a4, 0
                  andi         t1, a3, 400
                  auipc        s10, 324107
                  lui          s1, 474980
                  addi         a0, t6, -1578
                  xori         gp, s10, -363
                  ori          a5, s9, -1370
                  srl          a7, gp, a3
                  nop
                  addi         ra, s4, -822
                  srl          ra, t5, s0
                  or           s4, t4, a1
                  lui          s2, 459788
                  slti         s6, s8, 44
                  slt          s7, s10, s7
                  slt          zero, zero, s8
                  addi         a1, s0, 554
                  xori         s5, s11, -991
                  xor          t4, a4, s10
                  xor          a4, t3, s5
                  sra          t5, t6, a4
                  sll          s6, a3, a2
                  sub          a6, s5, t4
                  slli         t6, a4, 3
                  xori         s10, t5, -366
                  sra          a4, t3, a5
                  ori          ra, s0, 1094
                  nop
                  and          s5, a0, s6
                  ori          t2, a2, -558
                  and          t4, tp, t0
                  xor          a1, a4, t3
                  sra          a2, gp, s5
                  and          s4, ra, t6
                  and          a3, t3, a6
                  srli         a3, t6, 14
                  sltiu        sp, a4, 867
                  sra          s5, s3, a0
                  and          s7, zero, a2
                  andi         t6, t5, 39
                  sra          s4, s4, gp
                  slti         t2, t4, -817
                  sltiu        gp, tp, 221
                  sub          a6, t2, s7
                  slt          s2, tp, a5
                  addi         s8, s9, 681
                  andi         t3, s5, -902
                  sltiu        t2, sp, 1576
                  sll          sp, s9, gp
                  or           a5, a1, tp
                  srli         a4, tp, 30
                  sub          a1, t5, a6
                  slli         s4, s6, 26
                  srai         t0, a4, 16
                  srai         s9, s2, 31
                  srai         t2, gp, 15
                  slt          t3, a1, s7
                  slti         a1, gp, 1500
                  addi         s1, a4, 289
                  sub          s6, s0, s2
                  or           t6, s1, t4
                  sra          gp, a1, a6
                  srl          t0, t1, s7
                  sll          s6, t4, t6
                  sub          s5, t1, s1
                  xori         ra, s0, -612
                  sra          t1, a7, sp
                  xori         gp, a7, -415
                  srl          t3, s9, t3
                  slti         s7, a1, -470
                  add          a1, t4, s8
                  slti         s11, s2, 943
                  sltiu        s9, s2, -1352
                  sltu         s2, ra, a0
                  sll          a4, a1, a3
                  auipc        t2, 346030
                  add          a2, s2, t1
                  slti         sp, t4, 152
                  nop
                  xor          a0, s0, a5
                  or           s7, s11, a7
                  srl          a4, t3, s3
                  sltu         a4, sp, a3
                  sltiu        s8, a4, 171
                  slt          a7, s5, t2
                  slt          s6, a7, s2
                  srl          t3, t2, a5
                  ori          s2, a5, 58
                  srl          gp, s11, t1
                  sub          s10, a2, s1
                  sub          s5, s7, s0
                  srl          a2, s7, s3
                  lui          t0, 85964
                  srai         s6, a0, 10
                  add          s2, a2, t5
                  nop
                  or           s11, t1, s10
                  sltu         ra, tp, t6
                  or           t5, s9, a3
                  lui          s1, 354323
                  sll          gp, s3, t3
                  auipc        s8, 960679
                  srai         s2, sp, 7
                  nop
                  sltiu        a2, t3, 1756
                  sltiu        a2, ra, -1514
                  sll          a1, gp, zero
                  auipc        t6, 361044
                  or           t0, s8, s6
                  sltiu        sp, s0, -682
                  slt          ra, s9, tp
                  slli         ra, s9, 12
                  xor          s2, zero, s11
                  auipc        t1, 768740
                  add          a6, s10, t2
                  and          s7, s2, a1
                  sra          s1, tp, zero
                  ori          a1, a3, 1284
                  xor          s7, s7, a1
                  or           a5, sp, t3
                  srl          a4, a5, s6
                  sra          s8, a6, s4
                  srai         gp, s6, 19
                  sub          zero, s6, a3
                  sltu         a6, s3, t3
                  srai         a7, t2, 18
                  lui          s8, 302196
                  lui          sp, 282402
                  and          t0, s0, s4
                  and          s5, a0, sp
                  addi         a6, s8, -87
                  ori          s6, s11, -1557
                  sltu         t0, t2, t1
                  slt          t6, s0, t6
                  slt          gp, s10, t2
                  sltiu        ra, a2, 1068
                  or           s9, s6, s1
                  sub          s6, s11, a4
                  slt          a6, a1, s2
                  andi         t1, a7, -466
                  nop
                  sll          s11, a5, s1
                  lui          a5, 1046786
                  srl          a2, t5, a6
                  sll          s4, tp, s6
                  sub          a5, t5, s10
                  slt          a6, s2, s1
                  lui          t1, 80177
                  sll          s1, t3, s5
                  sll          s6, ra, zero
                  addi         t3, a2, 1687
                  xori         zero, s5, 185
                  slli         s9, t6, 3
                  sra          t0, a3, a4
                  auipc        a3, 126029
                  sltu         t1, s6, s10
                  or           a5, s9, a0
                  srl          a3, t4, s4
                  add          zero, s0, gp
                  slt          s9, a4, s1
                  slli         t2, t2, 26
                  addi         s10, s1, 254
                  srai         gp, a7, 9
                  sub          t1, t4, a6
                  xor          s9, s9, s1
                  sra          s10, a1, a7
                  slti         s4, s5, 166
                  slli         s7, a4, 11
                  or           t3, a5, s8
                  add          t3, t4, zero
                  srli         s6, a4, 19
                  xor          t6, s8, t1
                  addi         sp, ra, 494
                  sub          zero, a0, t5
                  xor          a6, s3, t1
                  lui          a3, 148079
                  ori          s2, t1, -2028
                  slt          s5, s10, a6
                  slli         s11, ra, 18
                  slt          s10, s8, t4
                  sltu         s9, s2, gp
                  auipc        s4, 128187
                  sltiu        s10, gp, 1872
                  or           gp, sp, t0
                  slti         a5, s0, 1373
                  nop
                  auipc        s9, 356006
                  slli         a2, t5, 20
                  add          s10, t2, ra
                  and          s8, a4, sp
                  slli         s2, s3, 6
                  or           zero, tp, t4
                  auipc        a5, 917207
                  nop
                  or           sp, t0, t2
                  auipc        s1, 996261
                  srai         a0, t0, 21
                  slt          t1, s8, a4
                  add          t2, s1, s10
                  xor          gp, a2, s8
                  srli         a4, s9, 7
                  or           s4, a6, s2
                  add          t3, s1, s7
                  lui          s10, 421045
                  and          ra, s4, a4
                  slli         a4, a5, 3
                  or           t1, s7, a0
                  slt          a2, s9, t4
                  add          t4, s5, s3
                  andi         a1, tp, -746
                  srai         a1, t3, 5
                  add          a0, t1, ra
                  slti         t1, t5, 1122
                  sll          s1, s10, t3
                  slli         s9, s8, 31
                  sra          a1, a1, a2
                  addi         s7, gp, 1218
                  sltu         s4, s9, s2
                  and          s11, s0, a1
                  or           t3, t1, s9
                  xori         zero, s6, 398
                  sltiu        a5, a4, -1940
                  srl          t5, s3, s7
                  slt          s8, t3, s11
                  nop
                  xor          a3, a2, ra
                  slt          s9, t0, a7
                  auipc        s8, 137530
                  srli         a3, a3, 7
                  slli         a5, s5, 24
                  sltiu        sp, t1, -1304
                  sub          s7, t3, s7
                  slli         s5, a5, 13
                  and          s4, t1, a2
                  nop
                  sra          a7, s7, s1
                  lui          s11, 1003571
                  xor          a5, t0, a4
                  slli         sp, s11, 24
                  slli         a0, gp, 22
                  auipc        s1, 986675
                  slli         t3, s10, 2
                  sltiu        a4, a3, 342
                  srai         s2, s10, 12
                  sltiu        t2, s4, -1491
                  srli         gp, t6, 3
                  slt          ra, s4, a6
                  add          s1, s5, t5
                  xor          s6, t4, a3
                  nop
                  xori         s2, t3, 853
                  xori         s5, a4, -1298
                  nop
                  xor          t5, a0, a4
                  sltiu        t6, a5, 766
                  xor          t5, a0, a0
                  srl          s8, t5, t3
                  auipc        a5, 474721
                  srl          t2, a7, t2
                  sra          a7, a7, t2
                  slt          t0, a5, a5
                  slti         a1, ra, -495
                  andi         s7, s10, -405
                  sltiu        t6, s2, 1554
                  sltu         s5, s1, s1
                  or           a3, gp, ra
                  sltu         s10, t4, a7
                  and          s2, t5, s8
                  sltiu        gp, zero, 1678
                  nop
                  srli         a0, a7, 8
                  xori         s10, s5, -164
                  slli         t4, s6, 26
                  xor          a3, t5, gp
                  slt          s4, a6, a1
                  slti         s6, s0, 1328
                  addi         s7, t3, 188
                  andi         t6, a0, 1439
                  lui          s10, 547147
                  sll          s5, s7, tp
                  or           s7, s6, t3
                  slt          a6, sp, s9
                  srai         a4, s9, 10
                  srl          t5, zero, a6
                  nop
                  andi         ra, s1, 1138
                  addi         a2, s5, 1229
                  sltiu        a6, t3, 561
                  andi         t0, gp, 590
                  addi         ra, s2, -420
                  xori         a6, a2, 73
                  lui          s11, 229153
                  ori          s6, s8, 1662
                  srl          t4, t6, a7
                  addi         s5, a2, 1466
                  sltu         t3, s6, s10
                  srli         s9, s8, 9
                  andi         a7, s2, 2025
                  and          s2, a3, zero
                  srl          s8, sp, s9
                  add          sp, gp, a6
                  nop
                  sub          t6, s5, s2
                  sra          a5, s11, t3
                  auipc        a5, 301447
                  or           t1, a6, gp
                  xori         s1, s9, -492
                  nop
                  nop
                  xor          t3, gp, a5
                  auipc        sp, 551498
                  sub          s4, s0, t5
                  nop
                  addi         s1, a7, 1784
                  slt          t2, s4, a1
                  ori          s10, t0, 1049
                  srli         ra, s3, 8
                  srl          a7, s11, gp
                  sltu         sp, t0, s3
                  srl          a7, t5, a3
                  ori          a5, t2, -557
                  slli         zero, s0, 14
                  slli         a7, a2, 1
                  nop
                  sra          t4, s3, s4
                  slt          t3, s4, ra
                  srai         t6, t2, 24
                  srli         zero, a7, 14
                  srl          s7, s3, s9
                  and          s11, t3, a5
                  and          t0, a6, a3
                  xor          a5, a4, a6
                  auipc        t4, 984169
                  nop
                  nop
                  srli         t2, s10, 11
                  sltiu        t6, s11, 1528
                  addi         t0, tp, -1361
                  add          t1, t0, s4
                  addi         s11, tp, 2043
                  srai         ra, t3, 13
                  addi         t2, gp, -1812
                  xor          s6, a6, s6
                  sltu         a4, a1, a6
                  and          zero, t0, a2
                  auipc        t4, 298508
                  and          sp, ra, s0
                  xori         a7, s0, -1308
                  slti         sp, a5, -1427
                  or           s7, t4, a5
                  srli         s2, s9, 31
                  or           ra, a3, s10
                  srai         a2, tp, 14
                  sra          s11, sp, ra
                  add          s6, s1, s6
                  andi         t4, a2, -403
                  sltiu        s10, s2, -467
                  or           s2, s3, s1
                  slti         t6, t0, 1425
                  sltu         s9, a3, a5
                  slli         t2, t5, 18
                  nop
                  slt          a2, t4, gp
                  xori         t0, a3, -163
                  or           t0, t3, a1
                  sll          t0, s5, t2
                  srl          s4, s2, a4
                  sra          s11, t6, t0
                  sltiu        t2, t4, 1216
                  auipc        s5, 514112
                  srai         a4, s9, 1
                  auipc        t5, 387702
                  add          zero, ra, s1
                  auipc        ra, 617256
                  or           a1, t5, s11
                  sll          s2, t4, s11
                  nop
                  xori         t1, ra, -1641
                  sra          a0, t0, s11
                  slli         t2, s5, 30
                  and          zero, gp, t4
                  or           t0, s4, s3
                  slti         s8, gp, -1154
                  slt          t1, s0, sp
                  sub          a6, s10, a4
                  or           sp, s7, a6
                  sub          t5, a7, a2
                  slti         ra, a3, -1430
                  slti         t0, s2, -446
                  andi         a3, a0, -627
                  nop
                  addi         a5, t4, -856
                  xori         a3, tp, -703
                  slti         s10, s0, 2030
                  addi         a7, a2, 558
                  slt          t5, s1, t4
                  slti         t3, s1, -1985
                  srli         s4, a4, 27
                  ori          a6, s4, -574
                  sltiu        sp, ra, 817
                  sltu         t5, t3, s0
                  lui          a5, 1031702
                  slli         gp, s2, 28
                  lui          s2, 449429
                  sra          t0, s7, s5
                  slt          s4, a3, s8
                  add          t0, s11, s8
                  sub          s8, s9, s11
                  sub          a3, s11, sp
                  or           s7, a5, t5
                  slli         a3, s2, 8
                  add          s4, s9, s2
                  sltu         a7, a4, tp
                  auipc        s11, 270122
                  srai         t4, sp, 14
                  srli         s1, s9, 20
                  lui          ra, 929836
                  slti         sp, a7, 1516
                  andi         s1, s1, 1971
                  srl          a0, s11, a1
                  or           a6, a1, t1
                  andi         a1, a7, 1486
                  andi         sp, t4, -1542
                  slt          t1, a4, s8
                  sll          a0, a0, t2
                  nop
                  xori         a1, ra, -146
                  sltiu        t2, t3, -1068
                  nop
                  add          t3, a5, a0
                  nop
                  or           a6, zero, t1
                  xori         s11, a7, 324
                  nop
                  auipc        sp, 34391
                  add          a2, t2, s8
                  sll          a4, a4, a6
                  andi         a2, a3, 119
                  slli         a6, t3, 22
                  sltu         s2, a2, t6
                  slti         a1, a0, 370
                  sltu         a5, t1, s2
                  slt          a2, s6, s2
                  auipc        s4, 765154
                  slli         zero, s10, 30
                  sll          t1, s1, tp
                  sltu         t5, gp, a2
                  slli         gp, t0, 6
                  ori          s5, s11, -35
                  andi         s9, t3, -206
                  xor          s2, s4, s1
                  auipc        sp, 519209
                  or           s4, a3, s10
                  sltu         s7, s3, t0
                  ori          s7, ra, 595
                  srli         t0, t5, 17
                  slti         t6, ra, 1734
                  or           t5, a3, a4
                  nop
                  lui          ra, 640094
                  xor          s5, s4, a7
                  srli         a7, s8, 14
                  nop
                  xor          t3, zero, a6
                  lui          s2, 355347
                  sub          a4, t0, a3
                  auipc        sp, 1018041
                  slti         t5, a2, -689
                  slt          s9, a3, t3
                  xori         a4, t0, 73
                  xori         s6, s0, -187
                  slti         t5, a1, -196
                  add          s4, s5, a5
                  sltu         t3, t1, a6
                  sra          t4, a3, s0
                  ori          a1, s8, 317
                  or           s4, t0, tp
                  lui          s11, 501481
                  xori         a6, s11, -233
                  slli         s5, s2, 20
                  xori         a6, s3, -455
                  ori          s9, t5, -1472
                  addi         a1, gp, 1667
                  sltu         zero, ra, a2
                  ori          s11, a1, -494
                  addi         s11, a5, 655
                  auipc        s1, 452481
                  ori          t6, t0, 947
                  sll          t3, s0, t5
                  xori         sp, t4, -1703
                  lui          s2, 910883
                  srl          t1, s7, a4
                  xori         gp, a0, 34
                  sra          s10, t0, s11
                  ori          t6, s7, 1653
                  addi         a2, s10, -1443
                  xor          a0, a5, t4
                  sll          s8, a3, t0
                  slti         t0, s0, 362
                  xori         a3, s2, 1780
                  ori          a3, s10, -1991
                  and          t3, t4, a7
                  add          s7, t3, t1
                  addi         s4, s6, 1352
                  ori          a1, a5, -1591
                  nop
                  nop
                  slt          t4, a7, a7
                  srli         s10, t4, 1
                  srai         s10, sp, 17
                  or           sp, s11, t5
                  nop
                  slli         s9, zero, 22
                  sltiu        s11, s9, -319
                  add          s8, a1, a7
                  auipc        t4, 372541
                  sub          a7, s4, tp
                  or           t0, s10, s4
                  xori         a1, a6, -970
                  and          s5, ra, a6
                  srai         a0, s5, 23
                  sra          a2, t4, s4
                  srai         t2, s6, 24
                  sltu         a0, a6, tp
                  sltiu        s1, t0, -604
                  xor          a3, a1, a5
                  srai         s5, t2, 18
                  sltiu        s6, t5, -1710
                  auipc        s9, 301949
                  sub          s7, s3, a5
                  srai         t6, s11, 21
                  addi         t6, a7, -402
                  andi         s5, t4, -1372
                  sll          zero, t6, s5
                  sll          s11, s5, s1
                  sltiu        t1, s7, -135
                  srl          t1, a3, a6
                  sub          s6, s10, a4
                  sra          t2, t4, s3
                  sltiu        s10, t3, -1582
                  sltiu        t2, s7, 1806
                  slti         s4, a6, 679
                  slli         s1, sp, 8
                  slli         gp, sp, 9
                  sub          a6, s9, s3
                  slti         t6, t6, -1537
                  andi         zero, s6, 474
                  slt          a7, t0, t3
                  xor          a6, zero, zero
                  add          s2, t5, t3
                  lui          gp, 851071
                  sltu         s11, s6, a1
                  sll          a7, ra, t4
                  slti         t4, t4, -1280
                  slti         a2, s4, 590
                  sll          t4, a6, s9
                  slli         s1, s0, 30
                  andi         a2, t1, -346
                  sltiu        s9, s0, -1671
                  add          ra, a3, a1
                  sltiu        s2, a2, -1139
                  slti         a4, s0, 1377
                  slli         t2, a6, 7
                  sltiu        t1, t1, -563
                  addi         ra, a1, 1907
                  ori          s6, ra, -1901
                  xori         s2, t2, 789
                  sra          s9, zero, t5
                  xori         t3, ra, -898
                  add          s9, t3, zero
                  add          t6, s6, s7
                  xor          a2, s9, gp
                  addi         a1, a7, -1134
                  srl          t6, tp, zero
                  xor          s8, s8, a2
                  sltiu        t0, s5, -265
                  srl          a4, gp, t3
                  srai         zero, s9, 7
                  addi         s11, tp, -1851
                  ori          t6, a4, 915
                  srl          a3, s8, tp
                  sltu         gp, a2, t5
                  slti         s6, a6, -696
                  xori         a4, t4, 20
                  nop
                  addi         s5, tp, -2041
                  sltiu        a2, s5, -149
                  srl          t6, s5, s2
                  srli         sp, a7, 4
                  sra          t4, a2, s1
                  srli         s9, s4, 4
                  sub          a1, a4, a3
                  sltiu        sp, a2, -1110
                  slt          zero, s6, ra
                  andi         s1, a2, -1896
                  addi         zero, s1, 1000
                  sll          gp, t6, a3
                  srai         s11, s1, 28
                  srai         a5, s10, 31
                  slt          a5, s11, t5
                  addi         s1, t1, -432
                  nop
                  add          t2, t2, tp
                  add          t6, s1, s6
                  sub          t6, t1, s9
                  srl          a3, t2, zero
                  li           s10, 0xc34f9666 #start riscv_int_numeric_corner_stream_3
                  li           a1, 0x80000000
                  li           a4, 0xffffffff
                  li           s6, 0x0
                  li           s1, 0x80000000
                  li           s8, 0x80000000
                  li           a2, 0xffffffff
                  li           t5, 0x80000000
                  li           t3, 0x0
                  li           t4, 0x0
                  auipc        a2, 734806
                  lui          a4, 679641
                  nop
                  nop
                  lui          s8, 199655
                  add          t4, a1, s10
                  add          s8, a1, t5
                  addi         t3, s6, -705
                  sub          s1, s10, s8
                  sub          a1, s1, s6
                  add          s6, s8, a1
                  addi         a1, t3, 893
                  auipc        s6, 1031412
                  nop
                  sub          t4, t3, t4
                  auipc        a1, 466212
                  add          t5, a2, t5
                  add          s6, s8, t5
                  nop
                  sub          t5, s10, t5
                  sub          s10, t3, s1
                  nop
                  auipc        s10, 916002
                  sub          s1, t5, s1
                  lui          s8, 959839 #end riscv_int_numeric_corner_stream_3
                  slt          t2, gp, s6
                  srli         a1, t6, 25
                  sub          t5, t2, tp
                  slt          s9, a0, s4
                  xor          s5, s7, t5
                  xor          s5, a0, a2
                  sub          gp, s9, t3
                  slt          t6, s11, zero
                  sra          s2, gp, s6
                  nop
                  or           a4, s6, a4
                  and          t6, a2, s3
                  slli         s10, a1, 14
                  slti         s1, s3, -727
                  sll          t4, s5, a2
                  nop
                  auipc        sp, 618555
                  or           sp, a4, s6
                  sub          ra, s8, s3
                  srai         s7, s1, 28
                  addi         s10, t3, 467
                  slli         s4, a3, 21
                  ori          s4, s9, 972
                  andi         t1, sp, 2003
                  andi         a6, s5, -810
                  srai         t3, a2, 7
                  slt          s9, s8, t3
                  lui          t6, 700847
                  sltu         a1, t0, a0
                  slti         s2, a6, -790
                  sub          gp, a3, t6
                  sra          a0, a0, t2
                  slt          s6, t4, t2
                  sra          s5, s9, a5
                  addi         s1, ra, -1783
                  sub          s6, s3, zero
                  slt          s8, a4, t2
                  lui          t3, 272000
                  andi         t1, s6, -1461
                  andi         t0, tp, -1406
                  sub          t1, t2, ra
                  slt          gp, ra, t4
                  add          t1, tp, s2
                  sub          t1, a5, a6
                  sub          s5, a0, ra
                  and          t6, t1, a5
                  slti         a3, s8, -987
                  ori          a4, a2, 1999
                  xor          s4, s11, t4
                  srai         s2, a3, 5
                  nop
                  slt          a2, ra, a2
                  slti         s10, t3, -566
                  srl          t0, s10, t6
                  srai         a3, s1, 3
                  sltiu        s9, t3, 1913
                  slti         s4, ra, -856
                  add          a0, a2, t0
                  or           t1, s2, t4
                  slli         s10, s10, 5
                  xori         a2, s7, 1165
                  auipc        a5, 690707
                  lui          t1, 792890
                  srai         t0, a4, 17
                  add          zero, gp, a3
                  slli         t5, s6, 12
                  ori          a3, a6, -1797
                  slti         gp, ra, 325
                  addi         s6, t3, -91
                  sltu         s6, a7, a2
                  srl          s4, t0, a5
                  xor          s5, s8, s7
                  slti         a7, gp, -1507
                  and          s2, a5, s5
                  sltu         a0, s8, a4
                  ori          s8, t5, -1816
                  andi         t4, s3, -1756
                  ori          s7, s11, -412
                  slti         a6, t5, -1391
                  slt          s7, t4, a5
                  addi         s10, s3, 484
                  and          s11, s0, a0
                  sra          a0, s7, a6
                  and          a1, a2, s4
                  auipc        s7, 8115
                  sub          s11, s5, s5
                  srli         t2, t5, 17
                  addi         s1, t3, -605
                  sll          s7, s9, a4
                  nop
                  sra          s11, s2, a5
                  andi         t1, a5, -1587
                  srai         zero, s7, 28
                  auipc        a5, 782025
                  lui          t0, 756563
                  sltu         s6, s1, tp
                  srl          a5, s10, gp
                  xori         a3, ra, 1707
                  srai         sp, a4, 9
                  addi         sp, s6, -1970
                  sub          t4, a3, t0
                  slli         t4, zero, 15
                  andi         t6, s6, -22
                  sltu         s11, t2, s1
                  sltu         gp, s4, zero
                  slti         a0, t3, 867
                  sra          a2, t0, zero
                  auipc        a3, 636519
                  add          sp, t4, t2
                  srli         a0, s0, 17
                  add          s10, s1, s0
                  xor          a6, t0, t2
                  srli         a0, a6, 8
                  sll          gp, ra, a2
                  nop
                  slli         a2, s8, 22
                  slti         t1, a2, 1893
                  slli         s10, s11, 5
                  sll          t4, s6, s8
                  andi         a0, s7, 904
                  nop
                  sltiu        s11, s0, -2026
                  andi         a2, a1, 1677
                  addi         s4, sp, 231
                  slt          s2, s9, s5
                  srli         zero, tp, 0
                  sltu         ra, t3, a3
                  andi         t1, zero, 734
                  ori          a6, s0, 437
                  sra          a0, gp, s4
                  xor          a7, ra, t0
                  slt          s2, s2, a5
                  lui          s10, 888726
                  slli         s11, s8, 22
                  sub          s11, t4, t5
                  slli         s2, s9, 31
                  lui          t1, 685080
                  sra          s5, a7, zero
                  sltu         a1, s5, t6
                  sra          t2, a2, s3
                  sra          t6, a4, s9
                  slt          sp, zero, a2
                  ori          s9, s0, -1350
                  sra          a7, zero, a5
                  sub          t1, a3, a3
                  and          t5, s9, s4
                  srai         a2, s2, 23
                  srli         zero, a1, 14
                  ori          sp, t2, 1605
                  sltiu        t5, s4, -962
                  nop
                  slti         s2, a4, -139
                  sll          sp, a3, a1
                  srai         a0, a2, 14
                  slt          s2, s1, t3
                  srli         s8, s6, 19
                  addi         a3, t1, 758
                  xor          a1, t3, a5
                  add          s1, s7, s4
                  addi         a2, s0, -1557
                  and          t4, a7, s0
                  srl          s10, a5, t2
                  or           s5, a5, sp
                  ori          sp, s8, 1139
                  srli         gp, t1, 28
                  nop
                  sltiu        a6, a4, 24
                  addi         s5, ra, 1607
                  ori          t1, a4, -266
                  sltiu        t2, t3, -1046
                  add          s11, a0, s5
                  xori         s8, s5, -741
                  sltu         t3, s6, t0
                  ori          s2, a7, 1174
                  andi         t5, s11, -687
                  or           t2, t5, s4
                  srl          a0, s10, t2
                  lui          t1, 450348
                  lui          s10, 632220
                  xor          t3, s3, s3
                  auipc        a1, 677445
                  addi         a4, s5, 166
                  srli         s6, s2, 7
                  add          a1, s7, a6
                  and          s1, t3, a2
                  xor          a6, a4, gp
                  srl          s10, s4, t2
                  sra          a6, t2, sp
                  sltiu        s1, a3, 990
                  slli         a1, s3, 3
                  xor          t2, s11, t3
                  andi         t2, s2, 890
                  srl          a4, s5, a3
                  addi         a4, s9, 1245
                  nop
                  andi         a3, s10, -15
                  xori         s11, s7, -119
                  nop
                  sub          ra, s4, t6
                  addi         s10, sp, 854
                  and          s5, t2, ra
                  and          s5, s4, s3
                  auipc        s7, 933502
                  sra          a1, ra, s2
                  addi         a7, t6, 1614
                  andi         gp, ra, 1460
                  nop
                  srai         t6, s3, 10
                  slti         sp, s2, 1214
                  or           a0, s8, tp
                  sra          t0, a7, s8
                  and          a1, s8, s1
                  srai         t0, zero, 13
                  addi         t6, a4, 1393
                  sltu         zero, s9, zero
                  and          s6, s7, a7
                  slti         s9, t0, -421
                  srl          s4, a2, s4
                  addi         a6, sp, -789
                  sll          s9, s0, a4
                  xor          a6, s3, s3
                  ori          sp, s10, 1197
                  or           ra, t4, s8
                  and          s4, s3, s2
                  xor          s1, a2, s1
                  sltiu        s7, s10, 441
                  ori          s10, s7, 1407
                  xor          t2, t2, a4
                  slli         sp, a2, 27
                  slti         zero, s8, -591
                  slt          s10, t0, s4
                  add          t3, s0, s8
                  sltu         a6, a0, zero
                  ori          s6, a0, -1552
                  and          a7, s4, a7
                  sub          a0, ra, gp
                  lui          s10, 884367
                  sll          a1, t6, t0
                  slti         a4, s2, -1625
                  sra          s5, a3, tp
                  sra          a0, t5, gp
                  slli         gp, a3, 7
                  or           a7, s11, a6
                  lui          gp, 373988
                  srli         a2, s11, 0
                  slti         a4, a6, 698
                  slti         s7, zero, 1508
                  sub          t1, t4, t5
                  lui          s2, 187919
                  srl          gp, s10, a2
                  auipc        t4, 1010494
                  slt          gp, a3, s1
                  sra          a3, a0, t3
                  sra          a1, s11, t0
                  addi         gp, s7, 1366
                  andi         t0, s7, 2020
                  nop
                  add          s5, s1, s11
                  xori         s6, t3, -884
                  lui          t4, 893835
                  nop
                  nop
                  sll          s4, s9, gp
                  and          a0, t4, s8
                  addi         s1, t2, 354
                  sll          a1, s10, a3
                  sltiu        a1, s11, -1469
                  add          gp, a0, t1
                  sltiu        s6, zero, 884
                  srl          s8, s0, t3
                  srli         s4, t1, 1
                  srl          a1, s10, s0
                  xori         t3, a3, 1939
                  addi         a1, t2, -1293
                  sub          s2, t4, t0
                  slti         s11, tp, -69
                  slt          s4, tp, s8
                  lui          s8, 133555
                  srli         a5, s2, 2
                  ori          s2, a2, 654
                  xori         s4, ra, -533
                  srl          t5, s5, t4
                  srai         s5, s9, 19
                  srai         a1, t0, 24
                  sltu         t3, a0, a6
                  andi         zero, t5, 184
                  xori         s2, s1, -359
                  or           s4, t4, a4
                  xori         gp, s4, 1066
                  xori         t0, sp, 74
                  xor          s8, s1, t6
                  nop
                  sra          t0, s4, s0
                  sltu         s8, a4, t4
                  add          sp, s8, s5
                  auipc        s9, 352353
                  add          t1, a0, s5
                  srli         a6, tp, 23
                  srli         a6, a3, 31
                  xori         s4, s4, -1562
                  sltiu        a1, s11, -1164
                  srli         a6, a3, 6
                  andi         t6, s2, -1899
                  sltiu        a3, a1, -2042
                  srli         ra, s7, 9
                  auipc        a5, 672010
                  andi         t2, a5, -1206
                  slli         s4, zero, 8
                  sra          a4, t6, t0
                  sltiu        s5, sp, 1891
                  srli         t0, t4, 28
                  ori          gp, t5, -715
                  sltu         ra, a3, a7
                  ori          s11, s7, 1784
                  srai         sp, a6, 31
                  or           a2, a2, s4
                  slti         s2, a2, 1780
                  sltiu        s2, s11, -1640
                  ori          t5, t1, 1648
                  sll          t1, t0, s10
                  slti         s1, s5, 1068
                  andi         s1, s5, -955
                  andi         t1, a1, -1198
                  slti         s2, s8, 1425
                  add          s7, t0, t5
                  add          s10, a6, s5
                  sltiu        s7, s4, -1077
                  srli         s6, t5, 19
                  sltiu        a6, s11, -966
                  sll          s5, s11, a3
                  slli         s8, ra, 20
                  add          t4, s3, a2
                  auipc        t4, 374290
                  nop
                  sra          s8, ra, a7
                  srai         s5, a2, 7
                  xor          a2, a6, a6
                  ori          s8, a6, -1673
                  sltu         t1, s10, ra
                  srli         s7, s1, 27
                  srl          zero, a0, s1
                  sub          a0, t1, t2
                  sltiu        a1, s9, -1097
                  sra          a2, s3, a0
                  slti         s11, a0, -840
                  addi         s11, s10, 1022
                  xor          a1, s0, s5
                  sub          s1, s10, s8
                  xori         s7, a5, 722
                  ori          a3, a2, -1447
                  xori         t5, t1, -181
                  slt          a5, s5, gp
                  sll          s7, a7, s8
                  xor          t3, t6, a0
                  sub          t1, s5, t5
                  or           t0, s1, a6
                  sll          gp, s11, t1
                  sll          t2, t6, s10
                  add          t3, a5, a3
                  srai         t5, gp, 8
                  auipc        s2, 333020
                  slti         t3, zero, 283
                  and          s6, s7, t4
                  lui          gp, 462562
                  slti         a0, t1, 1632
                  nop
                  srli         a0, sp, 2
                  srai         gp, t1, 23
                  auipc        s6, 400400
                  slli         s8, t0, 4
                  srai         s6, zero, 18
                  addi         s10, sp, 454
                  srli         s1, s3, 12
                  sltiu        gp, s1, 233
                  and          s2, s11, t2
                  srli         t1, a0, 4
                  slti         a0, t0, 686
                  xori         s10, t6, 1568
                  andi         a3, t1, -879
                  slt          a2, gp, s5
                  xor          a7, zero, s10
                  addi         a7, s11, 1984
                  andi         s6, s5, -1144
                  ori          ra, a7, -684
                  andi         a6, s7, -824
                  add          zero, s6, a7
                  srli         s4, a5, 31
                  slt          a4, t2, ra
                  sra          a2, t0, a1
                  and          s11, tp, s0
                  sub          t4, t3, s10
                  sub          s10, a3, a7
                  sltiu        s1, s9, 1692
                  sll          s11, gp, s0
                  addi         t6, ra, 1436
                  slt          sp, a2, s3
                  slt          a0, s0, a4
                  ori          t2, a3, -489
                  ori          zero, s9, 681
                  srl          a1, s7, s7
                  srai         s9, s7, 17
                  xor          s7, gp, s3
                  lui          s9, 34564
                  srai         t1, s3, 22
                  add          s7, s3, ra
                  lui          t1, 707077
                  or           s8, gp, gp
                  srli         a3, s3, 11
                  auipc        a5, 861314
                  ori          s11, a2, -228
                  xor          s10, tp, s8
                  slli         t4, sp, 3
                  lui          gp, 497163
                  sltiu        ra, t5, 657
                  or           a4, t2, t2
                  slt          a2, s9, a7
                  addi         s9, t1, -1131
                  sll          s10, t0, sp
                  srli         t6, a0, 15
                  add          t2, a3, t0
                  andi         ra, t2, 15
                  sltu         s7, t3, s9
                  lui          s1, 222758
                  srai         t2, s1, 9
                  xori         s9, t5, 1024
                  sltiu        s10, ra, 1668
                  and          a7, t6, s9
                  sltu         s5, sp, s6
                  ori          t1, t1, 343
                  slti         t6, s3, 672
                  slti         s10, s0, -190
                  add          a4, s3, a4
                  sll          zero, a3, s11
                  or           t0, s7, a5
                  ori          a5, a1, -1965
                  sltu         s6, s11, t3
                  or           t4, s9, a1
                  auipc        a3, 286543
                  sll          a6, zero, t3
                  slti         t4, gp, 218
                  and          s5, t2, s10
                  or           a0, s8, s4
                  sll          t2, a6, s1
                  xor          sp, a5, s5
                  addi         a2, s5, 572
                  xori         t5, a3, -578
                  auipc        s8, 840582
                  auipc        s8, 784570
                  addi         t4, a5, 902
                  srai         t1, sp, 12
                  or           zero, s3, a4
                  sra          s7, s11, a5
                  auipc        zero, 222703
                  srli         a5, sp, 2
                  lui          s1, 983148
                  xori         a7, a1, -1975
                  sltiu        s1, s8, -1029
                  sll          s2, tp, zero
                  srl          t4, a7, s3
                  slti         a1, ra, -15
                  or           t1, s0, zero
                  and          a3, s4, t4
                  addi         t0, a3, -285
                  sra          s1, s2, t0
                  or           zero, s3, a5
                  and          t1, tp, s9
                  srli         t1, a5, 26
                  slt          t0, a1, gp
                  and          t0, s0, t6
                  xori         s11, ra, 1604
                  lui          t0, 735186
                  xori         t1, s0, -1587
                  xori         gp, s8, -63
                  xor          s10, s8, a5
                  xori         t3, zero, 1960
                  add          t4, a1, t5
                  slli         s7, a2, 20
                  and          t2, s6, a7
                  slt          t0, s0, s1
                  sub          a0, t5, zero
                  or           a4, ra, s11
                  nop
                  ori          t5, t5, 1143
                  andi         t0, t5, 947
                  addi         s10, t5, -159
                  srli         t6, t4, 19
                  lui          t3, 459570
                  sub          t6, a1, zero
                  add          s2, a0, a3
                  or           ra, s0, s0
                  lui          t2, 599464
                  slt          s11, a2, t6
                  sltiu        a5, s1, -1473
                  sub          a7, ra, s1
                  auipc        t1, 1046209
                  auipc        t3, 229279
                  xori         a6, s4, 713
                  xori         s11, s4, 939
                  slt          a3, a5, a1
                  and          a0, a6, a6
                  or           t4, s10, s4
                  or           a0, s8, t4
                  srl          t4, a4, a0
                  add          s6, t0, t1
                  srl          a3, s9, a5
                  lui          s9, 342840
                  add          a2, s10, a1
                  or           s9, s5, t5
                  andi         t6, s7, -1312
                  or           a3, s7, sp
                  slti         s5, a7, 1790
                  xor          gp, s2, s9
                  lui          s5, 527450
                  lui          a0, 470142
                  sll          t5, s9, s8
                  srai         t2, sp, 14
                  or           s2, a3, s1
                  slli         a2, s3, 22
                  andi         zero, a0, -111
                  sltiu        sp, s11, 75
                  sltiu        s8, s11, -1812
                  sltu         s7, t5, a7
                  auipc        s8, 51527
                  ori          t0, s11, 1557
                  auipc        s5, 1025677
                  sub          a7, a7, gp
                  xor          t0, a0, ra
                  sltiu        a5, s9, 116
                  sltiu        a2, t5, 778
                  or           zero, t5, t6
                  add          t1, zero, ra
                  srai         t2, t6, 0
                  addi         gp, zero, 1415
                  nop
                  xor          t2, tp, a3
                  ori          t4, t6, -204
                  and          ra, t1, a7
                  addi         s11, t5, 1826
                  sltiu        sp, s7, -578
                  slli         s9, sp, 21
                  and          s7, t3, gp
                  xor          s10, t2, t2
                  srai         s2, t1, 16
                  xori         a3, a1, -1673
                  sll          a6, a4, s5
                  nop
                  and          s11, s6, s3
                  srai         s7, a3, 21
                  slli         s8, a7, 24
                  sll          a2, s5, t4
                  sra          a0, tp, s11
                  addi         a2, a3, -735
                  slli         a0, s10, 16
                  addi         t5, ra, 25
                  addi         a3, s1, -1161
                  auipc        t1, 291373
                  add          t3, t1, ra
                  and          a2, a2, a3
                  sltu         zero, tp, t5
                  srl          s5, gp, a4
                  nop
                  slti         s4, a3, -805
                  addi         t2, a0, -46
                  ori          a1, ra, 1745
                  or           a0, sp, t3
                  sub          a5, zero, a2
                  slli         a2, s10, 6
                  addi         zero, s11, 813
                  srli         t6, a0, 5
                  sltu         t1, a1, a6
                  srl          t4, t5, tp
                  add          s9, s1, t5
                  srl          s11, s6, t3
                  slli         a0, s6, 30
                  slt          t3, a2, ra
                  add          t1, ra, s2
                  or           a3, s8, a3
                  ori          s8, t1, -958
                  addi         s8, tp, 1638
                  auipc        s11, 622117
                  xori         ra, t2, -1253
                  srli         a0, t5, 3
                  sltiu        sp, s5, -1033
                  and          a6, s1, a7
                  slli         a3, t4, 5
                  srli         s8, t0, 21
                  xor          t5, t6, s7
                  slti         t0, t1, -289
                  slli         t1, s8, 30
                  slt          t4, gp, a0
                  or           zero, s4, t5
                  srli         t6, t4, 19
                  xori         zero, t1, -247
                  srl          a7, ra, a2
                  add          s1, s11, a3
                  ori          sp, s4, -1930
                  lui          t6, 316400
                  xor          s6, s11, s7
                  sll          zero, a3, sp
                  and          t1, t5, tp
                  slt          t2, a6, s0
                  slt          a1, a4, s9
                  sub          s1, s4, s9
                  add          t4, a2, s0
                  sll          s7, s0, a5
                  sra          s11, a1, s0
                  slti         s11, ra, 994
                  sltiu        t3, s1, 1126
                  nop
                  slt          s6, t1, a3
                  slti         a1, t5, 2040
                  slli         sp, t3, 16
                  nop
                  addi         s4, zero, -1865
                  xori         a4, t1, -613
                  and          a6, s1, s11
                  sltiu        s8, s7, -632
                  add          a5, gp, ra
                  lui          t2, 15424
                  auipc        a6, 999521
                  sub          a2, a1, ra
                  sra          s7, gp, a4
                  xori         s7, s1, 268
                  sltu         s6, s10, t3
                  sra          t4, t0, a5
                  srl          a2, zero, t3
                  andi         gp, tp, 1697
                  srl          t2, t5, a3
                  slt          s11, a3, t6
                  xori         gp, a1, -1102
                  xori         t5, s3, -633
                  sub          a5, tp, tp
                  ori          s6, s10, -1062
                  xori         t3, t1, 1295
                  xori         t4, s1, 102
                  sra          s2, a3, a1
                  srl          s5, a2, s10
                  ori          s2, t3, 1551
                  sub          a5, s7, s9
                  nop
                  sltu         s11, a0, t1
                  sll          zero, ra, a2
                  srai         a4, s6, 27
                  nop
                  nop
                  xor          a0, s3, s11
                  sltu         t4, zero, a4
                  xor          a3, s3, s3
                  sll          t4, a4, a1
                  srai         a1, s7, 21
                  sra          gp, t6, a4
                  sltu         s1, s9, zero
                  sll          s5, a6, a7
                  sltiu        s4, tp, 1387
                  srl          gp, s8, t4
                  nop
                  sltu         a5, s3, a2
                  sra          a1, s10, a2
                  xori         s1, sp, 1720
                  slti         a7, zero, -774
                  nop
                  andi         sp, s0, -741
                  srai         t0, zero, 6
                  srl          ra, t2, s8
                  auipc        a4, 81952
                  or           zero, ra, t0
                  srl          a6, s9, s8
                  and          a7, s2, tp
                  sub          s5, s2, s9
                  srl          s5, s10, a1
                  sub          zero, s3, t4
                  auipc        a0, 508594
                  sub          t1, t6, t1
                  addi         s5, a3, 925
                  and          t1, ra, s7
                  slli         s8, s4, 25
                  or           s6, s2, a5
                  sra          t6, a3, ra
                  sll          sp, a2, s0
                  sltu         a5, ra, t5
                  slli         t2, t2, 18
                  and          t3, s8, t3
                  ori          t2, s11, 1955
                  or           s4, t3, a3
                  ori          ra, a5, 438
                  slli         s2, zero, 17
                  srli         s10, a5, 16
                  srli         t2, tp, 13
                  srli         a0, s6, 30
                  slti         s2, ra, 1094
                  srl          gp, s4, s7
                  andi         zero, s5, -349
                  srli         s7, a6, 21
                  sll          a5, a7, gp
                  slt          sp, t6, s3
                  srl          t5, s8, s0
                  auipc        gp, 870285
                  ori          t1, a0, -384
                  slti         t3, s5, -1097
                  ori          t2, s4, -1626
                  srl          s9, s2, a0
                  nop
                  addi         t4, t3, 2008
                  sra          s8, s11, s7
                  or           a3, s1, s11
                  ori          s8, zero, -844
                  sll          t2, t1, tp
                  srli         s4, t3, 23
                  sra          t3, a6, s11
                  xori         t2, s6, 860
                  sltu         s5, zero, t2
                  sltu         s9, a5, gp
                  srl          a4, s0, a7
                  sub          t3, t2, s6
                  auipc        gp, 809256
                  sll          s11, s6, t0
                  add          a0, t4, s2
                  add          a4, s7, t3
                  xor          t0, s3, gp
                  sltiu        s4, a7, 389
                  lui          a3, 478113
                  slti         s8, t2, 946
                  srl          s6, a0, a1
                  sub          t4, s1, ra
                  sll          a2, s6, a4
                  ori          t5, s2, 1742
                  sltiu        zero, t4, 612
                  or           s11, t0, tp
                  slt          a2, a4, s9
                  srl          t3, s0, a2
                  sll          gp, s4, a6
                  xor          t5, s2, t3
                  addi         t3, sp, -857
                  sltiu        s7, a6, -468
                  xor          s8, s5, t5
                  lui          a0, 72808
                  srli         zero, zero, 23
                  or           s11, ra, s9
                  slti         a0, t3, -1325
                  sll          s7, s3, s1
                  add          t1, s11, t3
                  and          t1, sp, s8
                  slli         s6, a0, 31
                  sltiu        t1, a2, 1147
                  li           s5, 0x49c67ee1 #start riscv_int_numeric_corner_stream_7
                  li           sp, 0xffffffff
                  li           t3, 0xffffffff
                  li           t4, 0x0
                  li           s7, 0x0
                  li           a6, 0x0
                  li           s11, 0xffffffff
                  li           ra, 0xdb3074c9
                  li           s2, 0x80000000
                  li           gp, 0xffffffff
                  addi         s5, t3, -987
                  lui          s7, 603463
                  nop
                  nop
                  nop
                  auipc        s5, 88645
                  addi         sp, t4, 1209
                  auipc        s11, 519153
                  nop
                  auipc        gp, 450433
                  sub          sp, sp, t3
                  auipc        s11, 656198
                  lui          a6, 494989
                  sub          s7, a6, ra
                  lui          sp, 421881 #end riscv_int_numeric_corner_stream_7
                  srli         s10, s1, 16
                  andi         a3, sp, 1134
                  ori          s2, t3, -796
                  nop
                  srl          s10, zero, t2
                  srai         a3, a6, 22
                  sra          s5, t3, a6
                  sll          s5, tp, a3
                  slli         s6, ra, 26
                  srai         a2, t4, 6
                  and          s6, t1, a6
                  slt          t5, s8, tp
                  xor          s9, s2, s8
                  slli         a1, tp, 23
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           t0, 0x80000000
                  li           s8, 0xffffffff
                  li           s11, 0x80000000
                  li           t2, 0xffffffff
                  li           s1, 0x0
                  li           a3, 0x0
                  li           sp, 0xffffffff
                  li           s5, 0x0
                  li           s10, 0x80000000
                  lui          s10, 371849
                  add          s11, t2, sp
                  auipc        s8, 699858
                  auipc        s8, 61646
                  auipc        a3, 622232
                  nop
                  add          sp, sp, s10
                  nop
                  addi         t3, t0, -1821
                  nop
                  add          a3, s11, s8
                  auipc        s10, 491510
                  addi         a3, s5, -1682
                  lui          a3, 135355
                  lui          a3, 899695
                  lui          t2, 458312 #end riscv_int_numeric_corner_stream_16
                  srai         a7, ra, 17
                  auipc        a4, 133701
                  xori         t5, t1, 1846
                  srl          s7, s4, zero
                  slti         a3, a7, 1079
                  ori          zero, a0, 228
                  lui          s7, 248245
                  srl          ra, t4, s4
                  xori         s5, a7, 1877
                  or           t4, tp, a2
                  and          a6, t4, s8
                  slt          a3, sp, a1
                  xor          a4, sp, s0
                  nop
                  andi         a3, a2, 967
                  sub          a3, s1, s7
                  sub          s2, a7, s0
                  lui          t3, 450403
                  sltu         a1, s1, s8
                  sub          t4, s10, s5
                  xori         t2, a6, -161
                  li           gp, 0x10ae142d #start riscv_int_numeric_corner_stream_2
                  li           t6, 0xffffffff
                  li           a1, 0x80000000
                  li           a0, 0x0
                  li           t1, 0x7f8e80e5
                  li           t5, 0x80000000
                  li           a4, 0x0
                  li           s1, 0xffffffff
                  li           s5, 0xffffffff
                  li           s11, 0x80000000
                  addi         s11, s11, -489
                  auipc        gp, 34285
                  add          gp, s11, s1
                  sub          a4, s5, a0
                  lui          s1, 437582
                  add          t6, t6, a1
                  add          s11, t5, a4
                  sub          t5, s5, t5
                  lui          gp, 952239
                  addi         s1, s1, 60
                  auipc        gp, 976656
                  add          a1, gp, a4
                  nop
                  addi         t1, a4, -1925
                  add          a1, t5, a4
                  lui          a1, 187899
                  nop
                  sub          s5, s11, t6
                  sub          a1, s5, s5
                  sub          gp, t1, t1
                  nop
                  auipc        a1, 200781
                  sub          t5, a1, t5
                  nop
                  lui          gp, 549155
                  auipc        a0, 147687
                  auipc        t6, 856192 #end riscv_int_numeric_corner_stream_2
                  slti         sp, a0, -1918
                  sra          s5, s8, s0
                  add          s7, s1, s9
                  lui          t0, 990339
                  slti         s1, s8, 914
                  srli         t4, sp, 28
                  xor          s7, sp, s8
                  xori         t1, t3, 48
                  andi         s7, a1, -1341
                  sltu         a6, a7, s9
                  sll          a1, a0, tp
                  xor          a5, a0, t5
                  srai         a7, a2, 31
                  sltiu        a0, t2, -472
                  add          a0, t3, a5
                  or           a7, s0, s10
                  auipc        a5, 24715
                  sll          a7, s11, t4
                  slti         s5, s0, 2019
                  add          a2, t6, a3
                  and          s1, t4, sp
                  sll          s7, s8, s0
                  andi         ra, t4, -1317
                  sub          t2, a5, s11
                  slt          t4, s6, t0
                  auipc        a4, 1001145
                  xor          a4, a4, s1
                  srl          a1, a3, ra
                  sll          s6, sp, s6
                  srli         s1, t1, 6
                  sra          s1, t1, ra
                  auipc        s8, 145931
                  sub          t3, t3, s9
                  srl          a1, t5, s4
                  lui          s11, 884211
                  xori         a2, s9, -8
                  sub          a7, s10, zero
                  or           a5, a0, a5
                  slt          s1, t0, s2
                  sltiu        t5, t5, 1455
                  sltu         a0, a2, gp
                  slt          s5, s5, a7
                  srli         t1, ra, 9
                  srli         s4, ra, 19
                  srli         a4, a1, 2
                  slt          a3, s5, s5
                  xor          t2, s10, t0
                  srai         s8, a4, 5
                  nop
                  slt          s7, t1, a1
                  xor          s6, s11, s3
                  auipc        s2, 299707
                  ori          s7, s2, 1506
                  and          s2, s10, zero
                  srai         a5, s11, 23
                  sub          sp, a7, s9
                  and          t6, s9, t0
                  addi         a3, s2, 233
                  nop
                  nop
                  srli         t6, sp, 29
                  sltiu        s8, ra, -963
                  srai         a2, gp, 23
                  srl          s2, s8, t2
                  sub          t5, s2, t2
                  andi         t6, s4, 252
                  andi         s6, ra, 350
                  sltu         sp, s8, s0
                  ori          s10, a1, -572
                  sub          gp, s3, t6
                  ori          s4, tp, -1934
                  xor          gp, s2, gp
                  xor          a7, s5, zero
                  slli         a5, s10, 12
                  andi         s6, t6, -127
                  ori          gp, zero, -1970
                  sra          s9, a4, s5
                  auipc        s11, 538179
                  sltiu        s5, s7, -947
                  slti         a0, gp, 453
                  xori         a0, zero, 2014
                  or           s8, t2, gp
                  sub          a3, t2, t1
                  or           a5, s6, s0
                  sra          a3, ra, sp
                  addi         s2, s1, 2014
                  slt          s7, s0, s0
                  slti         s2, t3, 1742
                  andi         s10, t3, -1604
                  ori          s1, s1, -1546
                  or           a1, s2, a3
                  nop
                  sll          a5, a2, s11
                  sra          ra, a1, a4
                  ori          a4, zero, -2003
                  sub          t1, s9, ra
                  slt          s9, s6, s2
                  addi         gp, s0, 27
                  auipc        a1, 325655
                  xori         a6, tp, 1109
                  sra          s9, s1, s3
                  slti         a6, s8, -1539
                  and          a0, a3, zero
                  srai         zero, s0, 7
                  or           a3, s4, a1
                  xori         zero, t1, 986
                  auipc        t5, 19241
                  sll          a6, s4, t2
                  addi         a4, s11, 714
                  addi         s8, s4, 49
                  sltiu        a0, a5, -573
                  sra          a7, gp, t3
                  auipc        t6, 683819
                  andi         gp, a0, -1395
                  sra          a6, s10, a7
                  sub          s4, a2, t2
                  auipc        s6, 430712
                  srl          a3, zero, a5
                  sra          s9, a6, t5
                  srai         s6, gp, 10
                  sra          s11, s1, a6
                  lui          s11, 967229
                  addi         gp, t0, 1415
                  srai         s1, s7, 15
                  slti         s7, t4, -317
                  add          sp, sp, a0
                  sra          s5, t4, sp
                  sra          t5, a0, s11
                  addi         a2, a3, 775
                  sra          a7, s0, t6
                  andi         a1, s9, -1328
                  slti         a4, sp, -1113
                  xori         zero, a7, -342
                  slt          gp, s7, t4
                  srai         t4, a3, 0
                  sra          t2, ra, s5
                  nop
                  andi         s11, s11, 707
                  or           a4, s0, a4
                  and          s11, s11, a2
                  lui          gp, 657846
                  sltiu        gp, t3, -2000
                  sltu         s1, s10, s1
                  sltu         ra, t0, s7
                  sltu         t5, s6, gp
                  slt          zero, t1, a6
                  addi         a7, s4, -1014
                  ori          t2, a4, -1010
                  lui          t1, 796896
                  slti         s7, t0, -20
                  sra          s8, a3, a7
                  slt          gp, a3, s1
                  slli         t1, s8, 22
                  nop
                  sll          t2, a4, zero
                  andi         t2, s6, 522
                  sra          s4, t5, t5
                  auipc        t4, 621926
                  slti         a5, t5, 103
                  andi         s11, t6, -162
                  auipc        s11, 778370
                  sll          s8, s1, s2
                  srl          a2, a6, s7
                  sub          a0, s9, t6
                  andi         s9, a0, 898
                  nop
                  srl          zero, s2, a0
                  ori          s10, t4, 1944
                  and          s11, a3, a6
                  srl          s7, gp, s3
                  slli         s2, s10, 8
                  xori         s1, s4, -855
                  sll          s4, s5, s0
                  sra          a5, s10, a5
                  srl          s11, t0, t6
                  andi         s11, a7, 182
                  lui          a6, 96606
                  slli         a1, t1, 9
                  sll          ra, ra, a3
                  ori          a3, a2, -872
                  xor          t6, gp, s6
                  slli         a2, s5, 22
                  or           a1, a0, s8
                  slti         a3, tp, -364
                  srl          t2, s2, tp
                  sub          s2, t3, a6
                  andi         s7, s7, 1790
                  sltiu        s1, s10, 1689
                  and          s10, tp, t3
                  sra          a2, a4, a1
                  slt          t3, s9, s6
                  xori         t4, a0, 685
                  xori         a5, s11, -782
                  addi         gp, s9, -151
                  ori          s1, a2, -670
                  srl          a7, s8, ra
                  sltu         s11, tp, s2
                  srai         gp, s2, 30
                  slti         a6, t0, -237
                  addi         s4, t6, 374
                  auipc        a0, 761532
                  xor          a7, s10, a1
                  sltiu        s8, a6, -615
                  auipc        zero, 1039514
                  sltu         s5, s2, t5
                  slt          t2, t5, a5
                  srai         s11, t0, 25
                  slti         ra, ra, 736
                  andi         sp, a3, -1468
                  ori          gp, t2, 22
                  nop
                  xor          t4, s3, zero
                  sltiu        sp, t3, 392
                  slt          s1, a5, t4
                  sll          s5, gp, s11
                  slt          s2, t0, s7
                  sub          a0, s6, a2
                  sltu         t3, a2, gp
                  xori         t5, t6, -1848
                  srl          t0, a3, zero
                  sll          s2, t2, t6
                  slli         t4, a0, 0
                  srai         s9, s2, 22
                  sub          a0, t2, s10
                  add          zero, ra, s10
                  sub          s2, a1, t3
                  slt          zero, t3, s3
                  slti         a3, s1, 1019
                  sub          s10, s3, t6
                  and          a6, t3, t6
                  xor          s6, tp, s1
                  xor          s2, t2, s10
                  srai         t3, t6, 27
                  srli         s6, s6, 23
                  lui          ra, 948673
                  ori          a3, s3, 156
                  or           t2, t5, s5
                  srl          s10, t4, a2
                  xor          s5, t2, s3
                  slti         t4, s0, -1892
                  sra          a6, t2, t0
                  auipc        s1, 371665
                  nop
                  nop
                  lui          s1, 27860
                  andi         a6, a1, 218
                  sltiu        a0, t0, -879
                  or           s8, zero, s5
                  lui          a7, 31563
                  sltu         s11, a1, s2
                  srli         s7, s6, 18
                  srl          s5, s10, s6
                  add          a0, s5, t4
                  lui          s7, 854336
                  slt          a3, s3, s6
                  sltu         a6, gp, s11
                  xor          a1, sp, s3
                  slt          s9, s7, s6
                  slt          a5, t5, zero
                  sra          t2, ra, zero
                  lui          s5, 582879
                  auipc        s4, 76797
                  sll          s8, s3, gp
                  addi         s6, a3, 1875
                  and          a5, t2, a6
                  xor          t4, s0, tp
                  slt          a2, s0, t6
                  sra          gp, tp, t0
                  sra          t5, t3, t0
                  srai         a5, t4, 27
                  slti         sp, s8, -92
                  or           a4, s7, t4
                  srli         a7, t3, 25
                  add          zero, t2, s1
                  ori          sp, s9, 160
                  xori         ra, t0, 553
                  sltu         t0, s5, t0
                  xor          a2, a1, s9
                  xor          a3, a2, s7
                  slti         s4, a4, 451
                  andi         t5, t4, 1017
                  lui          gp, 869627
                  srai         gp, t2, 30
                  auipc        t4, 934269
                  andi         a6, a1, -1200
                  srai         a5, s5, 3
                  lui          sp, 565161
                  sll          t5, s1, s11
                  sll          s5, s2, a6
                  sub          s10, t3, a4
                  sltiu        a4, t4, 909
                  srli         s1, a0, 14
                  sub          s4, t4, s5
                  xor          sp, a1, s6
                  sll          a7, s2, t2
                  srl          t2, ra, t0
                  srai         t6, t1, 27
                  slt          t4, t6, a7
                  xori         zero, a7, 758
                  srai         s9, t4, 5
                  srai         a6, s0, 1
                  sra          s8, a3, a3
                  add          sp, t5, a2
                  ori          a2, t5, 1570
                  sll          s8, s9, s10
                  srai         sp, t3, 18
                  nop
                  sltiu        s11, t6, -1371
                  xor          sp, t5, t4
                  slti         s6, s8, 189
                  slli         s8, t5, 13
                  or           sp, t4, tp
                  srai         s9, s9, 29
                  slt          t6, t0, s8
                  ori          s6, a1, -197
                  xori         t0, t6, 1096
                  auipc        gp, 588817
                  nop
                  slli         t0, t6, 20
                  addi         s11, a4, -248
                  lui          a4, 850064
                  sub          s6, t6, s8
                  slti         t2, gp, 311
                  sra          t1, a1, a2
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s5, 0xb3221d7d
                  li           s8, 0x5859f0f
                  li           a3, 0xc9b79c55
                  li           s9, 0xffffffff
                  li           s2, 0x80000000
                  li           ra, 0x80000000
                  li           t2, 0x0
                  li           s4, 0x0
                  li           a4, 0x80000000
                  auipc        ra, 665512
                  auipc        a3, 66782
                  auipc        s9, 353973
                  addi         ra, t4, -1685
                  add          s9, s8, s9
                  addi         t2, s4, -892
                  addi         ra, a4, -673
                  lui          t4, 905702
                  sub          s4, s8, s8
                  sub          t2, a4, a3
                  addi         ra, s9, 728
                  sub          s2, s4, s5
                  auipc        ra, 894367
                  nop
                  lui          ra, 621850
                  nop
                  nop
                  add          a3, s5, ra
                  addi         s9, s4, 1688
                  lui          s8, 245976
                  sub          t2, s8, a4
                  addi         s2, t2, -815
                  nop
                  addi         t4, t2, 100
                  add          ra, a4, t2
                  nop
                  nop
                  addi         s9, t2, -610
                  addi         a3, a4, -1381
                  auipc        t4, 534665 #end riscv_int_numeric_corner_stream_18
                  add          a5, s4, t6
                  sltu         t0, t5, t2
                  srai         ra, a2, 5
                  sub          s2, ra, a2
                  auipc        a2, 607356
                  sltu         s11, sp, ra
                  ori          s8, a3, 548
                  sltiu        s7, a1, -1479
                  add          a7, t5, s3
                  ori          t0, a7, 1607
                  slt          a2, a6, s8
                  sltu         s5, gp, s7
                  add          s1, s4, s9
                  auipc        t5, 319027
                  lui          gp, 457119
                  xor          zero, s0, s1
                  xor          a1, s9, t0
                  sub          s5, s1, t5
                  slti         zero, t0, -1384
                  sll          s1, a6, ra
                  lui          ra, 366889
                  sra          s4, s8, s9
                  sltiu        a0, t2, 145
                  xor          gp, t2, gp
                  sra          t2, s10, t5
                  sub          s7, s8, a0
                  srl          s2, t3, sp
                  sll          t0, s3, s7
                  slt          a3, zero, s0
                  xori         a0, a1, 155
                  sltiu        ra, gp, -339
                  addi         t4, a6, 787
                  xori         t0, tp, 671
                  sub          t2, s11, s1
                  sub          s8, a1, a1
                  slt          ra, a6, ra
                  nop
                  sltiu        a5, ra, 708
                  sll          sp, a6, a6
                  slt          t2, t6, a3
                  sra          s4, s11, t2
                  sltu         gp, a7, t2
                  slli         a4, a2, 19
                  srai         zero, s2, 12
                  sub          t2, t1, t4
                  or           s8, ra, s9
                  sltu         s9, s10, s10
                  srli         t2, s2, 6
                  srl          s8, s3, a6
                  sra          a6, s0, t2
                  sll          s4, s0, s4
                  sub          s1, t1, s1
                  addi         a3, s3, 990
                  auipc        s5, 450842
                  srli         s11, s9, 26
                  srli         sp, s6, 29
                  slli         s10, t3, 29
                  slti         zero, a6, 325
                  add          t3, s5, t1
                  sub          a5, s7, a1
                  add          s4, t0, ra
                  slti         zero, s4, 1647
                  slt          t6, s11, t4
                  auipc        a0, 446081
                  ori          s6, t0, 856
                  sll          s6, s2, s9
                  lui          t6, 901832
                  slli         ra, t3, 28
                  or           s4, a1, a2
                  and          s9, s0, zero
                  sltu         t2, s11, gp
                  auipc        s5, 903903
                  and          t1, s5, a3
                  auipc        s10, 896111
                  xori         ra, ra, -217
                  lui          a7, 623810
                  srli         gp, t2, 18
                  nop
                  srai         gp, t3, 17
                  auipc        s4, 265840
                  and          s10, t0, s6
                  sltu         t0, t6, t3
                  slt          t1, a2, s6
                  xor          a0, a4, a2
                  sra          a7, s9, ra
                  slli         t4, a0, 6
                  andi         t3, t2, 1406
                  xor          s10, s4, a2
                  slli         a7, s1, 21
                  srl          s1, s4, sp
                  lui          s4, 1033664
                  slti         t4, a4, -944
                  auipc        t5, 641733
                  srl          sp, s7, a4
                  nop
                  ori          t1, a3, 88
                  or           a2, t1, s4
                  andi         s10, s10, 971
                  slt          gp, a2, a7
                  andi         s6, a5, 1272
                  xor          s8, a7, s5
                  and          s2, a6, s10
                  lui          t3, 470537
                  or           a4, t2, a5
                  or           ra, t0, tp
                  addi         a2, zero, 1976
                  add          a3, a0, s1
                  sll          a4, a5, t4
                  ori          a0, a7, -1413
                  xor          s10, a4, a3
                  slli         s5, s8, 8
                  slli         s1, gp, 29
                  sltiu        zero, tp, 1150
                  slti         t6, t0, -1331
                  auipc        s4, 207058
                  addi         s8, t1, 55
                  xori         t6, s1, 348
                  slt          s7, a3, a1
                  slt          s5, a6, s11
                  addi         t1, a7, -1459
                  auipc        s7, 192298
                  ori          a5, t2, 1856
                  nop
                  andi         s5, t1, 863
                  add          t2, zero, ra
                  lui          ra, 18463
                  sll          s5, tp, a4
                  ori          t6, a5, 997
                  lui          a5, 953663
                  or           s8, s8, t6
                  or           s11, a2, a7
                  add          s8, s7, s3
                  xori         s2, t4, 689
                  slli         t4, a3, 1
                  and          t6, s5, tp
                  and          a7, a0, a1
                  sltu         a0, s10, t5
                  or           s5, t2, a2
                  sltiu        t6, a1, 1644
                  ori          a1, ra, -405
                  ori          a1, a0, 602
                  andi         ra, s3, 1437
                  sltu         ra, sp, a2
                  srli         s6, s5, 21
                  xori         sp, t5, -1989
                  srli         s4, a7, 27
                  slti         t6, gp, 867
                  sltu         a6, s2, a5
                  ori          s11, s9, 1108
                  srai         a4, s8, 6
                  lui          s6, 698569
                  ori          zero, s3, 1516
                  slti         s2, a5, 1237
                  srai         ra, t2, 8
                  srl          t5, t5, a4
                  sltiu        s4, t4, 1327
                  xori         a6, s1, 510
                  slt          s7, t4, gp
                  or           s2, ra, s7
                  sltiu        sp, t6, -213
                  srai         a1, a3, 15
                  or           a7, t5, s5
                  sltiu        s6, s0, 240
                  and          s7, s11, t2
                  sll          a7, s7, s7
                  add          t4, t0, a7
                  sll          t4, s11, a3
                  andi         s2, t6, -196
                  addi         s1, t3, -1405
                  or           s11, t6, a3
                  addi         a5, t5, 1410
                  xori         zero, a0, 1529
                  slti         s1, t1, -1740
                  sub          s10, a2, a7
                  srai         s6, t5, 21
                  auipc        a0, 319762
                  xori         a5, s0, 563
                  sub          a7, s6, t6
                  nop
                  slt          s1, s8, s7
                  addi         a7, a7, 569
                  add          a1, s8, t1
                  and          s6, t4, a6
                  ori          t1, s5, 2020
                  slti         t2, t5, -165
                  sra          ra, a2, a2
                  lui          s10, 893150
                  andi         s9, t6, -249
                  slti         a0, a3, -836
                  ori          a6, zero, 1101
                  sub          t2, s0, t1
                  slli         s2, t6, 7
                  or           a1, a7, a1
                  andi         s2, t0, 1535
                  or           sp, gp, t2
                  slli         t1, a7, 21
                  sub          t2, t2, t0
                  lui          s9, 386812
                  slli         s10, t3, 0
                  lui          s11, 167244
                  sll          s10, t3, t5
                  addi         a2, s4, 1233
                  addi         s10, sp, -1455
                  or           a2, a2, t5
                  srai         t0, a6, 9
                  andi         s4, a4, 912
                  sub          s4, s4, s6
                  sltiu        s6, tp, 529
                  sra          s7, a5, s7
                  xor          a0, s6, t2
                  xor          t3, sp, t5
                  srl          sp, a5, t1
                  slli         t2, a4, 6
                  slt          ra, tp, a1
                  sub          t3, t5, s9
                  sltu         s11, t6, a4
                  slti         t4, sp, 1558
                  auipc        a2, 321380
                  or           s8, a5, s9
                  slti         a1, gp, -2022
                  ori          s11, a7, -1967
                  addi         t4, a2, 627
                  sub          sp, a6, s0
                  ori          s5, a0, -1107
                  nop
                  srl          gp, s9, tp
                  add          s6, s9, a7
                  add          t3, s10, a0
                  or           sp, t6, s8
                  or           t3, s2, zero
                  xori         gp, s2, 1645
                  ori          t0, ra, 1073
                  slli         s10, s0, 14
                  sltiu        ra, gp, 249
                  xori         a7, s0, -1674
                  xor          s6, a0, s3
                  addi         a0, tp, -2019
                  slt          s6, t0, s5
                  slli         s6, t5, 16
                  sll          s8, s3, s7
                  and          s1, t6, s1
                  sub          a4, zero, ra
                  or           sp, zero, gp
                  nop
                  auipc        a1, 752924
                  sra          a0, a4, s11
                  add          a7, a3, s0
                  srai         s8, t1, 12
                  srl          t5, a2, a2
                  and          t5, t3, a5
                  sra          a7, s4, t5
                  slt          s10, t4, t5
                  srai         sp, a4, 11
                  sltiu        s7, s1, 694
                  and          t0, s4, zero
                  srli         s7, a0, 25
                  or           t0, s2, a7
                  sltiu        s10, a3, -56
                  add          s2, t1, s10
                  sub          gp, t0, s11
                  srli         s6, a5, 6
                  sltu         s1, s3, t0
                  and          zero, zero, s6
                  slli         a4, a1, 9
                  slt          zero, ra, gp
                  srl          s1, a2, t3
                  auipc        s7, 3470
                  addi         t2, a6, 983
                  sltu         s2, a1, s7
                  srli         s7, a3, 26
                  ori          s6, s3, -234
                  and          t1, t5, zero
                  sltu         s8, s10, a3
                  ori          t6, a3, -618
                  xori         s10, t6, 1251
                  add          a5, zero, gp
                  sra          a5, zero, a2
                  srli         zero, s10, 10
                  nop
                  xor          s10, t4, s4
                  sra          t1, s0, t0
                  sltiu        t4, ra, -1107
                  andi         t6, gp, -694
                  add          s2, a1, a6
                  or           t1, ra, a1
                  srli         a5, s10, 3
                  slli         a6, s4, 1
                  slli         a0, s0, 0
                  slt          t4, a4, t3
                  sra          t5, tp, sp
                  sltu         s1, s4, s3
                  srl          s2, a0, a6
                  auipc        s2, 728916
                  and          t2, s4, t6
                  slt          a0, t5, t0
                  and          t4, ra, s11
                  addi         s9, s1, -1558
                  srli         a0, s4, 11
                  sra          s2, t4, zero
                  nop
                  sll          s7, s8, s6
                  or           s11, a0, t0
                  slti         a1, s1, -907
                  sra          s6, a1, tp
                  add          s2, s11, s4
                  and          a5, gp, t2
                  sra          s11, s6, t0
                  add          s4, sp, s3
                  and          s11, a7, t4
                  xor          s10, t6, a4
                  ori          a5, gp, 839
                  or           a2, t3, s11
                  xori         s10, a1, -1826
                  srai         t2, a6, 26
                  srl          a3, a7, t3
                  srai         t5, a3, 8
                  xor          s11, s3, gp
                  slli         s2, s8, 3
                  nop
                  slti         a5, s0, 1717
                  sltu         ra, s4, s8
                  slti         sp, t4, 1832
                  xor          a5, s0, tp
                  and          s6, a0, a4
                  sltiu        sp, t3, -1830
                  lui          a2, 1007728
                  add          zero, a7, a6
                  or           a2, a1, s1
                  sltiu        a1, s5, -811
                  sra          s10, a6, t3
                  sub          a5, a7, t3
                  sub          t3, sp, s11
                  srl          s9, sp, a4
                  slt          t5, s6, t5
                  srl          t6, t1, s2
                  sub          a1, ra, s4
                  sub          t0, t3, a4
                  slt          a0, a3, a6
                  srli         a3, a7, 14
                  sub          a4, sp, s0
                  sltiu        ra, t1, 1911
                  sltiu        s11, tp, -1496
                  xori         s9, t6, -1679
                  slli         t2, t4, 25
                  addi         s1, t0, -1350
                  sra          a6, t2, a7
                  nop
                  slli         s7, zero, 14
                  sltu         ra, ra, a4
                  nop
                  lui          gp, 757916
                  lui          t3, 408289
                  sltiu        a2, t5, 48
                  slti         a7, gp, -641
                  add          a5, a7, a4
                  andi         t2, s7, -1489
                  sub          a3, a2, s1
                  sltu         t5, s8, t0
                  slli         s7, s9, 16
                  xori         s10, a6, -1295
                  sltu         a6, a0, s2
                  and          a7, s4, s9
                  addi         t6, gp, -725
                  lui          t3, 147953
                  sltu         t3, s5, s3
                  slli         a3, s8, 14
                  xori         t3, a1, -2022
                  nop
                  srai         gp, a6, 16
                  sub          a4, s6, tp
                  srl          t0, t5, a0
                  sub          s7, t4, s4
                  srai         s11, tp, 25
                  srai         a5, s3, 2
                  srl          a7, t3, zero
                  slt          a5, zero, sp
                  srai         t3, t3, 29
                  slt          a6, s3, t1
                  srai         t2, t0, 31
                  ori          t5, t6, 1815
                  lui          s2, 879305
                  auipc        a5, 553661
                  or           zero, s7, s9
                  sra          a2, a7, gp
                  addi         t3, a7, -465
                  auipc        t2, 1004316
                  sub          t0, s4, a4
                  srai         t5, a2, 27
                  sltiu        a6, t0, 577
                  sll          ra, t1, a0
                  andi         s6, t0, 347
                  xori         a3, t2, 678
                  ori          gp, t0, 315
                  lui          a2, 659837
                  and          s7, s8, s3
                  and          zero, s11, t0
                  sltiu        s8, s2, 913
                  or           ra, a7, t3
                  addi         t4, t3, 1441
                  slti         t4, s4, -1801
                  srl          t1, s8, a0
                  sltiu        t3, t2, -1952
                  sra          t5, a1, s7
                  andi         s5, a3, 244
                  nop
                  slti         t3, t4, 76
                  sra          a5, s9, a0
                  sll          t4, a1, s6
                  nop
                  srl          s2, a5, t0
                  ori          a4, s0, 271
                  srai         s8, s3, 11
                  sub          a2, t5, s2
                  slt          t4, a1, a6
                  auipc        s4, 885410
                  or           s1, t5, gp
                  slli         a5, t4, 6
                  sltu         a1, s10, s5
                  ori          s11, s7, 1932
                  auipc        t5, 33723
                  sll          t1, t0, a1
                  ori          s2, a3, -887
                  sltiu        a3, s1, 1698
                  add          a2, t3, s3
                  sub          t3, t5, sp
                  sll          t3, t5, t3
                  addi         s7, s11, 216
                  slti         t1, ra, 1448
                  slt          gp, t5, s10
                  sltu         s2, a6, s5
                  xor          a1, sp, ra
                  auipc        t6, 684412
                  slt          a4, s2, tp
                  addi         a3, s11, 434
                  slti         t3, a0, 2020
                  addi         t2, a4, -328
                  srai         s11, gp, 16
                  nop
                  or           gp, s8, t2
                  slli         s9, s7, 6
                  or           t4, t4, s6
                  slti         s9, s1, -935
                  sltiu        a3, t5, -594
                  nop
                  add          a0, t3, a1
                  nop
                  lui          a1, 327692
                  srl          ra, tp, ra
                  andi         a3, s6, 1190
                  slt          s5, t6, a6
                  andi         a5, s2, 558
                  lui          s11, 457409
                  add          t4, a0, zero
                  auipc        t4, 253724
                  sra          s1, a4, t2
                  and          zero, a6, a5
                  lui          ra, 13159
                  sltiu        t0, t0, 1193
                  or           a6, t2, a3
                  sll          s11, s2, s9
                  auipc        s9, 1027083
                  xori         s8, tp, -1910
                  andi         a1, s1, -71
                  auipc        zero, 620220
                  sltiu        a4, s0, 644
                  slt          s7, a5, s9
                  xor          t2, t4, a6
                  auipc        s10, 416815
                  slli         s8, a6, 12
                  andi         t1, s10, -1102
                  addi         a5, a0, -1515
                  and          s6, t6, s10
                  ori          ra, s3, -193
                  and          s5, s6, t5
                  srai         gp, t1, 26
                  sll          t5, t0, s9
                  auipc        s8, 570413
                  addi         t3, a3, 1887
                  addi         s2, t6, -1622
                  sub          a1, tp, s11
                  slli         a3, a4, 17
                  sltu         s8, s0, t6
                  sll          t0, gp, s4
                  xor          zero, s4, a2
                  ori          s11, t3, 1259
                  sltu         t2, a3, s3
                  srai         a1, s1, 9
                  sltiu        t3, gp, -986
                  srai         s11, s5, 9
                  or           a2, s1, a2
                  sra          s5, a6, t2
                  slti         t2, a0, -1738
                  andi         a1, t1, -643
                  ori          ra, t2, -1649
                  sltiu        s10, s8, -1191
                  nop
                  nop
                  and          a4, ra, s7
                  ori          a2, s6, -1979
                  addi         t4, a3, -1877
                  xori         zero, s10, 617
                  srai         s9, s6, 15
                  srai         s8, s11, 20
                  slt          sp, t6, t1
                  auipc        t4, 283505
                  auipc        a1, 396396
                  slt          s6, s2, t0
                  slli         t3, a7, 22
                  andi         t6, s11, 705
                  ori          t3, s9, -1484
                  xor          t1, a3, t3
                  slli         a3, gp, 23
                  or           gp, t4, t0
                  addi         a5, t3, 307
                  add          s6, a1, s4
                  and          sp, t0, s8
                  slt          s4, a2, s7
                  srai         a6, a7, 4
                  auipc        s5, 413165
                  sltiu        sp, s5, -871
                  or           s6, a7, a1
                  and          s1, t3, s0
                  and          s9, t6, sp
                  srl          a6, s10, a4
                  sltiu        a4, a3, -695
                  add          t1, zero, a4
                  sub          a7, t5, s0
                  addi         a5, t6, 424
                  srl          t5, a5, s1
                  addi         a2, a1, -1505
                  lui          s10, 295996
                  or           t5, a6, s4
                  add          a4, t5, s9
                  sub          s10, a4, t5
                  lui          s8, 829309
                  slti         a1, s11, -711
                  xor          s2, a7, t6
                  xori         a3, a0, 1139
                  slt          a4, tp, gp
                  add          t6, s11, t0
                  andi         s5, s9, 1412
                  xori         t3, t2, 689
                  nop
                  srl          a1, a0, s0
                  srl          s11, s5, s2
                  sltiu        s6, s0, 1197
                  or           s8, ra, s6
                  andi         a7, sp, -789
                  srli         gp, t2, 12
                  slli         sp, t1, 26
                  addi         t0, sp, -718
                  srl          a3, t6, s4
                  slti         t5, s9, 762
                  xor          s1, s5, s1
                  lui          s6, 1005
                  or           s9, s9, a4
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s9, 0x80000000
                  li           s2, 0x0
                  li           s7, 0x50c22d92
                  li           s4, 0xffffffff
                  li           ra, 0x0
                  li           t1, 0xffffffff
                  li           a3, 0x80000000
                  li           s1, 0xffffffff
                  li           t5, 0x80000000
                  nop
                  sub          s7, t5, a3
                  add          s1, s4, s2
                  lui          s4, 747275
                  add          t5, a3, t1
                  lui          s4, 946925
                  auipc        t5, 633954
                  add          t6, ra, s1
                  auipc        s4, 878296
                  auipc        ra, 666848
                  addi         t5, s1, 996
                  nop
                  add          s2, s9, ra
                  sub          t5, t1, a3
                  lui          s1, 937919
                  nop
                  auipc        ra, 137923
                  sub          s4, s2, a3
                  addi         s4, t5, 1015
                  add          ra, t5, t1
                  addi         s9, t6, 1859
                  auipc        s4, 339005
                  add          a3, a3, s1
                  add          a3, s4, s2 #end riscv_int_numeric_corner_stream_1
                  sltu         a5, a6, t0
                  or           s6, s7, s0
                  slti         s6, tp, -1715
                  slt          s10, s8, s8
                  sll          zero, t4, a7
                  slt          a5, t4, s3
                  auipc        ra, 613024
                  xor          sp, s7, zero
                  sub          s6, s0, s10
                  sra          s11, t4, s8
                  sltiu        s4, s1, -581
                  srai         a3, tp, 28
                  srl          zero, a0, tp
                  srai         ra, t0, 26
                  auipc        s2, 364547
                  ori          s6, tp, 779
                  add          t6, zero, s6
                  srai         t6, s9, 27
                  and          a4, a1, s4
                  auipc        gp, 416377
                  or           a7, a7, tp
                  sltu         a5, tp, t6
                  lui          zero, 552568
                  sll          s1, a0, t0
                  srl          a0, s5, s6
                  ori          t1, a6, -1522
                  slli         sp, s9, 15
                  sra          s7, s11, s6
                  auipc        s5, 524934
                  sub          t3, s9, gp
                  lui          s9, 491826
                  auipc        t3, 1004229
                  andi         s7, a3, 1924
                  slti         a2, t4, 1455
                  srai         a5, s6, 18
                  srli         s6, a0, 16
                  sll          s8, s11, s4
                  ori          a3, a3, 1857
                  sll          t2, t2, s2
                  sra          s10, sp, a1
                  add          ra, t5, s0
                  sltu         a2, a1, s4
                  addi         s9, a7, -629
                  srl          s2, t2, ra
                  srl          s9, t5, ra
                  sll          s8, t3, s8
                  nop
                  sltu         s7, s0, a6
                  srli         t3, t5, 19
                  slli         a5, a5, 11
                  nop
                  srli         ra, s7, 7
                  addi         a1, s0, 1379
                  addi         s8, s4, 746
                  srli         s8, t4, 11
                  sltu         a0, s4, s2
                  auipc        sp, 458215
                  xori         s8, a3, -447
                  sll          t6, s3, s6
                  xor          s8, sp, s3
                  or           a1, a7, s3
                  xor          t0, s10, t2
                  sra          s1, s1, a7
                  sra          zero, s10, s9
                  sra          s6, s5, s6
                  srai         zero, a3, 30
                  srl          s6, s1, s10
                  sub          a6, s8, s10
                  sll          a3, s9, s4
                  andi         ra, s0, -1052
                  srl          gp, s7, s11
                  srli         a1, s3, 30
                  and          zero, s2, s11
                  slti         t5, t2, 1388
                  lui          s6, 372474
                  or           a2, t2, s3
                  srl          t5, t6, t2
                  xor          t6, s6, s6
                  ori          sp, a3, -1481
                  ori          t0, t4, -375
                  sltu         s6, s4, a3
                  andi         a2, zero, 1339
                  srl          t0, sp, s4
                  andi         s10, s11, -740
                  sltiu        s5, s9, -545
                  sll          s5, zero, a1
                  srli         ra, a1, 27
                  srli         a6, a3, 21
                  xori         t2, a6, -590
                  ori          zero, t4, -1963
                  ori          a7, a7, -118
                  slt          a2, s11, s8
                  add          a5, s8, s5
                  slli         a3, s3, 5
                  slti         ra, t0, -1220
                  lui          s6, 557174
                  xor          a7, a3, s9
                  ori          a7, a7, -1527
                  slti         gp, s10, 771
                  lui          a2, 261292
                  slti         s5, s4, 438
                  ori          t2, a7, 994
                  nop
                  add          t2, s10, zero
                  ori          a2, t1, -1074
                  sltiu        s7, a0, 1484
                  slli         t6, t5, 1
                  sltiu        s8, s1, -1803
                  srai         a4, t4, 18
                  sub          gp, sp, s6
                  sra          s1, s9, a7
                  add          t2, a6, s0
                  xori         a3, a5, -593
                  sltu         s9, s4, s6
                  xor          t5, t1, t5
                  and          t3, t3, ra
                  or           t1, t3, t3
                  ori          a2, a3, 153
                  srai         s2, a3, 7
                  sub          t0, tp, s4
                  srli         a1, s8, 17
                  xor          a7, t5, sp
                  ori          t3, a1, -212
                  sra          t1, sp, a0
                  xori         t4, a6, 1950
                  addi         t6, t6, 1622
                  sltu         t4, zero, zero
                  slti         s11, t3, 1772
                  slti         t0, t3, -988
                  srli         gp, ra, 21
                  xori         s1, ra, 938
                  xor          ra, s1, a7
                  auipc        a3, 490060
                  slt          gp, tp, t1
                  sll          t6, s0, s7
                  or           a4, s10, s1
                  srl          s9, s10, zero
                  xor          s10, s9, s8
                  slt          ra, a4, s8
                  or           s7, t6, s8
                  and          zero, a1, s4
                  sll          t0, a4, a6
                  and          ra, s8, a0
                  sra          s4, tp, s6
                  sltiu        t0, s10, -176
                  or           s10, a6, s3
                  add          gp, t5, tp
                  sll          s5, s6, a3
                  addi         t1, a3, -965
                  srli         s10, a6, 6
                  sub          s2, a7, a3
                  or           a4, tp, s1
                  or           gp, t5, a0
                  or           s7, a7, a7
                  addi         gp, gp, -951
                  slli         s8, s1, 0
                  sll          a6, a3, s3
                  sll          t6, s6, sp
                  srli         a4, ra, 8
                  sra          t1, s3, s0
                  addi         a3, a1, -407
                  addi         a1, s8, 1032
                  srli         a7, t5, 5
                  sll          ra, t6, s3
                  sll          s9, a1, s6
                  addi         s1, ra, -72
                  andi         sp, a7, -1949
                  slti         s10, t0, -940
                  ori          t1, t6, 1957
                  slli         s10, a4, 21
                  sub          s10, a4, s0
                  ori          a1, a7, -1180
                  xor          zero, t5, sp
                  srli         t2, tp, 18
                  slli         s2, s5, 26
                  and          t2, a6, s3
                  slti         s6, s1, -825
                  srli         s11, t4, 24
                  slt          s10, gp, a7
                  slli         a7, t1, 21
                  slt          t4, gp, s10
                  and          a7, t0, a6
                  andi         t6, a3, 230
                  or           s9, t2, tp
                  sltu         s4, t2, gp
                  slli         a5, a7, 13
                  slli         a6, t3, 27
                  srl          s11, a0, t1
                  srl          t2, s6, a0
                  ori          gp, s5, -1185
                  sra          a0, s0, s8
                  srai         sp, ra, 18
                  sltiu        s10, zero, 711
                  nop
                  xori         s8, t1, 487
                  sltiu        t6, s0, -1428
                  and          a6, tp, s3
                  or           sp, s0, t4
                  ori          t5, a1, -1906
                  andi         t3, a1, 192
                  sra          t0, a3, a6
                  addi         a7, tp, 317
                  slt          zero, s1, s2
                  sub          t2, t1, t4
                  or           t1, a4, gp
                  sltu         t0, s2, a7
                  srl          s7, t3, t1
                  slti         t3, a6, -416
                  add          t3, a3, a1
                  xor          t5, t4, ra
                  sra          s7, s11, zero
                  sra          gp, a6, s6
                  or           a7, ra, ra
                  xor          s7, s0, a0
                  slli         s2, s5, 2
                  addi         s10, a3, 1581
                  slt          t4, sp, t1
                  auipc        t4, 523228
                  sltiu        t1, t6, -1460
                  nop
                  andi         t5, a3, 496
                  srl          s5, t1, zero
                  auipc        t5, 107103
                  addi         s1, a5, -1451
                  andi         s11, s7, 341
                  addi         a4, t3, -920
                  lui          s4, 376473
                  sltiu        zero, zero, -1727
                  srai         zero, sp, 11
                  srai         t3, s1, 13
                  xor          s11, a1, s1
                  srai         s4, gp, 1
                  auipc        t6, 1043726
                  slti         a2, a1, -736
                  addi         a6, s1, 1028
                  sll          s9, s5, zero
                  or           t3, s1, t1
                  ori          s8, t5, -1132
                  addi         s5, t3, -371
                  nop
                  sll          t1, tp, a2
                  sra          a6, s3, ra
                  srai         a4, t5, 17
                  sltu         s6, s10, t5
                  add          t0, s1, t4
                  sltu         t6, gp, tp
                  slli         s11, tp, 10
                  slti         t3, t1, 478
                  srl          a7, t6, s1
                  lui          sp, 6348
                  sra          t3, gp, s5
                  sll          t6, t6, tp
                  ori          a1, sp, 1299
                  nop
                  xor          s10, a7, s5
                  slli         t4, zero, 20
                  sll          s8, a6, gp
                  srli         t6, s0, 11
                  lui          a2, 469311
                  srai         a2, s2, 18
                  xor          a2, s0, s8
                  slt          a5, a3, t5
                  andi         t1, s5, 230
                  or           a1, a1, a3
                  add          zero, s0, sp
                  xor          s9, a5, t6
                  slti         t2, a0, -948
                  ori          a2, a7, 632
                  srai         t2, s7, 31
                  srli         s10, s11, 12
                  or           t4, s11, s6
                  sra          ra, s9, zero
                  auipc        s11, 833547
                  sltiu        s1, s0, 1430
                  srli         s9, s5, 26
                  ori          s1, t6, 1892
                  sub          s11, s4, t0
                  xori         t4, t3, 606
                  slti         s5, s0, 1398
                  or           a1, a1, a4
                  and          s11, t0, s5
                  slt          a2, t2, sp
                  srai         a2, s8, 18
                  xor          s8, t5, zero
                  sra          s8, s4, t6
                  ori          a5, sp, 1551
                  xor          t0, ra, s7
                  lui          a1, 644148
                  addi         a0, t6, -464
                  sll          a3, s6, s2
                  slt          s7, a5, s4
                  nop
                  xori         s2, s10, 295
                  or           zero, a3, tp
                  srai         sp, s2, 20
                  andi         gp, s4, -1088
                  slti         a4, a5, -1183
                  slt          s10, a2, sp
                  xor          a0, a4, t6
                  srai         s10, s4, 24
                  slti         a2, s8, -1383
                  sra          t1, ra, a5
                  sub          a1, a3, a4
                  add          s6, a1, s11
                  srli         a3, s10, 18
                  or           t6, a1, s4
                  sra          gp, s10, s9
                  xori         zero, a6, 1401
                  sltiu        a6, s9, -1646
                  andi         zero, a2, -1715
                  nop
                  sra          s5, s3, t3
                  slti         ra, s1, -1917
                  xor          t3, s9, s2
                  slti         a7, ra, 1784
                  lui          s7, 771157
                  sub          gp, s5, s10
                  add          s9, a6, t3
                  sll          t0, s8, a1
                  srli         t6, s1, 31
                  slti         a1, t3, 463
                  xori         s6, tp, -2038
                  xori         t6, s4, -18
                  srli         a6, s7, 8
                  slti         s8, t2, -1695
                  ori          zero, t0, -28
                  add          s4, a4, ra
                  sll          s7, s0, s2
                  srai         s2, a3, 28
                  srli         a5, sp, 6
                  or           s7, t3, s9
                  xori         s8, s0, 770
                  sra          a0, t5, a2
                  lui          s5, 956963
                  nop
                  ori          s7, t2, 1256
                  slli         zero, s3, 31
                  or           s9, a5, s8
                  sll          s4, a6, s3
                  slt          a0, a7, a7
                  addi         s10, ra, -252
                  lui          s7, 908785
                  sub          a5, s1, s4
                  or           t0, a3, s9
                  sltu         s1, t1, s7
                  srli         s10, s3, 24
                  srl          t6, zero, a4
                  sltiu        a5, s10, 294
                  xor          s9, zero, s8
                  xori         gp, s2, 951
                  srli         gp, s0, 1
                  slti         t3, a1, 1543
                  nop
                  srai         s5, gp, 17
                  nop
                  sll          t6, s5, t5
                  sltu         s5, t3, ra
                  andi         t1, a4, -1708
                  xori         t6, a7, -37
                  slt          a0, s11, s3
                  sltu         s5, s1, ra
                  slt          s4, t3, a6
                  sltu         zero, t5, a6
                  slt          ra, t4, ra
                  add          t6, tp, s8
                  xori         zero, a2, -1481
                  sub          s11, sp, a5
                  xor          a6, t6, a0
                  xor          s4, s8, s0
                  sltu         s7, s3, a3
                  sra          a5, ra, s10
                  addi         s6, s0, -97
                  sra          s7, sp, t6
                  sll          a6, ra, a6
                  nop
                  slt          s8, a7, a3
                  or           s7, s1, t2
                  sll          s4, a6, s9
                  srli         s7, a4, 11
                  addi         a5, t6, -671
                  srli         a3, gp, 8
                  sub          a0, a0, s10
                  slti         ra, a2, 642
                  add          a2, s1, s3
                  xori         s11, a4, 292
                  srai         t4, s1, 8
                  and          t2, s6, s2
                  ori          zero, s11, -1553
                  or           s10, t6, ra
                  srli         a5, t5, 7
                  or           s2, t4, s3
                  sll          s4, t4, gp
                  and          s4, a7, s11
                  srl          t5, tp, t0
                  srai         t2, t1, 30
                  sltu         a2, s9, s6
                  andi         s2, a7, -1825
                  sll          gp, a4, t4
                  ori          a0, a2, 1010
                  sra          s9, s5, a0
                  lui          s5, 25829
                  add          t2, a0, t0
                  ori          a7, t3, -957
                  sll          s10, t4, s4
                  auipc        t0, 871322
                  xori         a7, a2, 1277
                  srai         t0, s6, 1
                  xori         t3, t3, 1746
                  andi         t4, t2, 314
                  sltiu        s7, t1, 1483
                  sra          a7, s4, a1
                  auipc        a6, 750849
                  sltiu        a6, s5, 1565
                  ori          s1, t0, -82
                  lui          a6, 967689
                  auipc        t6, 978944
                  ori          t1, s3, -312
                  and          a6, gp, t0
                  slti         a1, sp, 1154
                  slti         s8, s2, -1426
                  sub          s8, t6, t3
                  slt          s5, a2, a5
                  sltu         t1, s7, t5
                  srli         ra, s11, 20
                  srl          s5, a7, t2
                  srl          t2, a3, s1
                  and          s5, t2, s7
                  andi         s8, s10, -465
                  and          a2, a4, sp
                  sub          t0, tp, ra
                  add          s4, a6, a6
                  slti         t0, a4, -1387
                  add          s5, s7, zero
                  ori          gp, s2, -1079
                  slt          s6, t5, s6
                  srai         s2, a6, 2
                  xori         s2, s1, 1270
                  ori          s11, a1, -316
                  slt          t0, s2, t1
                  xor          s6, s11, ra
                  sltiu        s9, s8, -305
                  srli         s4, gp, 30
                  slti         t3, s6, -1802
                  ori          ra, ra, 1203
                  xori         s9, tp, 1110
                  slti         t1, s11, 1870
                  addi         a3, s3, -483
                  and          s7, t0, t6
                  xor          ra, zero, gp
                  nop
                  srai         a3, t2, 12
                  srl          a0, s5, a6
                  srli         s6, s1, 14
                  lui          sp, 334542
                  sltiu        t6, ra, -1352
                  sub          s6, a7, s0
                  andi         t3, s11, 487
                  and          zero, gp, t1
                  auipc        t6, 964345
                  or           t2, tp, a5
                  sltiu        s8, s0, 1447
                  sltu         s4, s5, t3
                  nop
                  lui          t5, 701367
                  srli         a2, a5, 20
                  nop
                  srai         s1, s10, 4
                  or           a7, a7, gp
                  slt          a2, s7, s4
                  auipc        s11, 909961
                  srl          t4, sp, a2
                  sltiu        t0, s9, 1736
                  addi         s10, zero, -1513
                  or           a6, s1, t0
                  lui          t5, 546773
                  and          t2, a0, s7
                  addi         s1, s6, 1512
                  nop
                  slti         s10, s2, -1597
                  sub          t2, s11, s3
                  add          s10, s6, tp
                  xori         t0, t0, 1998
                  or           a1, s1, s8
                  add          s2, a4, t6
                  sub          ra, s7, t3
                  sll          t1, s8, s2
                  auipc        a4, 704534
                  srai         s10, s6, 19
                  xori         a3, a4, -471
                  sltu         t2, s7, a3
                  andi         gp, s8, -555
                  srai         gp, s1, 27
                  andi         t0, s10, -1642
                  sra          a4, s9, a3
                  sll          t6, s8, s11
                  srl          a3, s11, a4
                  sltu         a7, s7, s8
                  srli         t6, t2, 22
                  lui          a2, 560906
                  addi         t0, s4, 518
                  addi         a3, t0, 406
                  auipc        s9, 333424
                  sub          a6, s10, sp
                  sra          s4, s2, s2
                  slli         zero, s8, 24
                  ori          a1, t3, 664
                  or           a1, s8, gp
                  sub          s1, a6, s2
                  sub          s10, zero, ra
                  xor          gp, s9, s11
                  slti         t2, t6, -820
                  sra          a2, s7, s8
                  slli         s7, s8, 30
                  sltu         s9, tp, t3
                  sltiu        s1, t5, -2021
                  sra          t1, a5, t3
                  ori          s4, t2, 112
                  srl          t0, t2, zero
                  srai         a5, s2, 20
                  auipc        a4, 593777
                  slti         a0, a1, 934
                  srai         a0, s2, 26
                  srai         s6, s8, 26
                  xor          zero, s4, t3
                  sltu         t4, s2, s7
                  sll          s7, s5, a0
                  sltu         s10, a4, tp
                  add          t2, a5, t5
                  sub          s1, a3, a6
                  srli         sp, sp, 28
                  sltu         t2, s4, t5
                  auipc        s11, 883001
                  sub          t4, s10, a0
                  auipc        t0, 922725
                  slti         s7, s2, -1912
                  sub          t0, s0, t6
                  xori         t4, ra, 42
                  ori          s9, zero, -896
                  lui          a4, 1013816
                  auipc        t3, 230686
                  addi         t4, s5, 668
                  lui          t6, 860855
                  sub          sp, a0, gp
                  and          a3, t2, tp
                  add          s11, s4, s2
                  and          s8, a5, t4
                  lui          s10, 298824
                  slti         s7, s2, 1175
                  sltu         a2, a3, a2
                  ori          ra, s3, 383
                  slti         s6, a3, -1469
                  xori         t4, gp, -1066
                  add          s5, s3, s1
                  add          a3, t0, sp
                  addi         ra, s4, -3
                  ori          s8, t5, 687
                  addi         t5, s2, 1602
                  lui          t6, 16794
                  slt          t4, gp, a7
                  slti         s5, t5, -72
                  sltiu        a7, a7, 1064
                  andi         a2, t5, 429
                  or           a3, s9, a4
                  xor          a6, s10, s10
                  srai         a3, s11, 20
                  addi         gp, zero, -1514
                  sltiu        s5, s2, 1635
                  xor          s8, s9, t1
                  andi         s11, s1, 468
                  srl          s7, a2, t6
                  lui          s8, 418310
                  andi         s11, s10, 298
                  xori         s2, s10, -1584
                  add          s9, s6, gp
                  andi         s10, s0, 1879
                  sra          ra, s3, gp
                  and          t4, a3, a6
                  or           a4, gp, s3
                  sub          t2, s5, s3
                  sltiu        t5, t6, 164
                  nop
                  xori         sp, sp, 652
                  addi         s11, a2, -1716
                  srli         a3, zero, 24
                  ori          s8, a3, -1262
                  nop
                  sra          t0, a3, a7
                  sll          gp, s0, s8
                  sll          s9, a4, a0
                  sll          gp, a3, gp
                  xori         a1, s2, 820
                  srl          a7, s1, s0
                  lui          a5, 547720
                  sub          t0, a3, a4
                  slti         a1, sp, 1973
                  slti         a2, s9, -1663
                  andi         t6, s6, -1512
                  xor          a5, t2, t1
                  sra          s7, a6, zero
                  sll          s8, s5, a3
                  addi         t3, s7, 1943
                  andi         t0, s7, -1305
                  andi         t3, a5, 736
                  slti         s2, sp, 1318
                  add          t4, gp, zero
                  auipc        a0, 400148
                  srl          s1, tp, t3
                  andi         a1, a1, 1959
                  sub          s6, s0, t4
                  xor          s10, a3, a3
                  srli         t2, tp, 18
                  slt          s4, ra, s2
                  srli         s2, t4, 28
                  xor          s7, gp, t0
                  ori          s11, s1, 1470
                  auipc        s1, 442411
                  and          t5, tp, tp
                  sll          a5, s2, s0
                  and          a1, s0, a5
                  sll          a1, t2, s2
                  sltu         a1, a1, s5
                  sltiu        s4, t0, 191
                  nop
                  slt          s11, a3, s6
                  sll          sp, a3, a4
                  slli         a5, s6, 22
                  sub          s1, sp, t1
                  srl          t5, t2, s9
                  srli         s8, s3, 5
                  add          s7, s2, a4
                  srli         a0, zero, 18
                  add          t3, s1, t5
                  andi         a7, tp, 2031
                  xor          a5, s0, s8
                  andi         s5, t3, 1571
                  xor          a4, s0, s0
                  nop
                  sub          s8, a4, tp
                  xori         s8, s8, 1007
                  slt          a6, a1, gp
                  nop
                  andi         s2, a7, -499
                  sub          a4, tp, gp
                  sra          t1, t2, a0
                  lui          s7, 852494
                  slti         zero, s8, -1090
                  add          t2, t2, s11
                  xori         ra, gp, -1865
                  srai         gp, t4, 0
                  slli         s10, s11, 5
                  xor          a4, a7, s4
                  lui          a2, 441149
                  sub          a0, a7, t5
                  andi         zero, a5, -1731
                  slt          a7, gp, s11
                  srai         t0, t2, 26
                  slt          ra, ra, gp
                  srl          s2, tp, s2
                  sltiu        a7, sp, -1243
                  andi         t1, s9, -1486
                  xori         ra, t5, 133
                  and          s4, s11, t3
                  sltu         s1, a1, t5
                  xori         s6, t4, 1672
                  auipc        t3, 988915
                  lui          s11, 418394
                  sll          a7, a5, t4
                  xori         s8, t4, 1159
                  or           a6, s7, t6
                  sll          a4, tp, s3
                  ori          gp, zero, -966
                  nop
                  slli         t0, ra, 4
                  sltu         s8, s2, a6
                  sltu         s10, a5, s2
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           ra, 0x0
                  li           s5, 0x889ba8dd
                  li           s6, 0x373692ba
                  li           t4, 0xe27edc7d
                  li           s1, 0xffffffff
                  li           a2, 0xffffffff
                  li           sp, 0x905bcd0e
                  li           s9, 0x0
                  li           t5, 0xebc7e98b
                  nop
                  auipc        sp, 459055
                  add          s5, s6, s9
                  addi         a0, s1, 5
                  addi         a0, t4, 1958
                  lui          sp, 739426
                  auipc        s1, 850237
                  add          s5, s5, t5
                  lui          t4, 380197
                  auipc        s9, 450892
                  nop
                  add          s9, a0, s5
                  lui          a0, 531521
                  lui          t5, 962761
                  addi         s1, t5, -17
                  lui          ra, 699358
                  add          sp, t5, t4
                  sub          s9, sp, s6
                  lui          ra, 149656 #end riscv_int_numeric_corner_stream_6
                  sra          s1, sp, t6
                  addi         t0, a6, 1303
                  nop
                  lui          s6, 898308
                  srli         zero, t2, 7
                  slti         a4, s4, -968
                  slli         a6, a2, 8
                  sltu         a4, t2, a5
                  sll          s2, s11, t1
                  srli         s8, t1, 4
                  sra          gp, sp, s9
                  add          ra, s9, sp
                  ori          a3, a4, -1288
                  nop
                  slli         a7, a2, 15
                  srl          t1, sp, s9
                  addi         a4, a5, -1851
                  sltu         t4, s7, t1
                  nop
                  add          ra, a0, a5
                  xori         t3, zero, 1774
                  srli         s5, a2, 21
                  and          a4, t3, t5
                  slti         s1, s0, 173
                  srl          s9, s4, t3
                  sltiu        s11, gp, -1205
                  sll          a2, t4, s3
                  lui          s10, 82614
                  or           s11, s5, s0
                  or           s6, ra, ra
                  auipc        a0, 156864
                  srai         a5, s10, 11
                  or           a3, a6, sp
                  sll          s2, a7, s4
                  slt          a1, s10, a0
                  sll          a0, a4, t0
                  sltu         t0, a4, a2
                  sub          t4, t4, tp
                  slti         s9, s4, -287
                  add          a6, s2, s0
                  srai         gp, a4, 25
                  xori         sp, s0, -1893
                  sltu         s5, a6, s6
                  sltu         s9, s6, zero
                  sub          a4, t6, s3
                  nop
                  sra          a3, t3, t6
                  slli         t0, t3, 13
                  slli         sp, t1, 14
                  and          s8, s8, t1
                  srai         a0, s3, 5
                  slt          a3, a1, a1
                  andi         a1, t1, -383
                  sub          s2, s11, gp
                  srai         t0, s8, 6
                  xori         t4, s8, -439
                  add          t3, tp, s4
                  slti         t2, t5, 68
                  lui          t1, 395016
                  ori          s8, a3, 1846
                  xori         s5, zero, 1497
                  or           t1, a3, gp
                  nop
                  nop
                  or           a1, t2, ra
                  sub          a3, s0, a0
                  srl          s7, s7, a5
                  nop
                  slt          s2, s10, t5
                  lui          a6, 1003938
                  sra          zero, a6, s7
                  xori         gp, s5, 109
                  xor          a6, t0, s8
                  nop
                  slt          gp, s1, s8
                  and          s10, ra, s11
                  slt          zero, a3, s2
                  slt          s5, a4, s7
                  xori         t2, gp, 788
                  ori          a1, gp, -1928
                  xori         a2, a1, 1247
                  addi         ra, a4, 390
                  sltu         s4, zero, a1
                  andi         t2, s8, 1519
                  srli         a4, s4, 16
                  srai         t1, t6, 29
                  slli         s1, s10, 30
                  srl          t1, a0, t2
                  srl          s11, s0, s9
                  ori          s11, tp, 1207
                  add          s6, t6, tp
                  srai         a0, t5, 8
                  sub          t4, t2, t1
                  slli         a7, s0, 3
                  sra          zero, t2, t1
                  and          s8, t5, a3
                  slti         a0, s6, -1999
                  slti         a2, s11, 1930
                  slti         s1, s4, 429
                  ori          s11, t5, 1800
                  andi         s11, t2, 59
                  addi         s10, tp, 19
                  srl          t1, t5, zero
                  xori         a7, s11, 1924
                  slli         a6, t4, 27
                  slti         a2, s7, 1729
                  sll          s7, s5, t1
                  sra          zero, s6, sp
                  sub          a4, a4, s5
                  slti         s10, a0, 325
                  nop
                  slli         s8, t5, 13
                  srli         a0, gp, 27
                  xori         a5, sp, 219
                  add          s1, t3, t3
                  sub          s2, a6, s2
                  and          t1, s11, s10
                  lui          s2, 904670
                  addi         t5, gp, -1764
                  auipc        t1, 340723
                  xori         a4, gp, 1704
                  andi         s10, s0, 990
                  sra          t4, a6, s4
                  ori          s4, s3, -1266
                  sub          s8, s7, gp
                  slli         a1, s10, 21
                  andi         s2, zero, 864
                  and          s8, s1, s10
                  sub          t4, s5, s6
                  sub          s8, a0, a0
                  add          s8, s3, a1
                  sltu         ra, t0, a6
                  sub          t2, ra, gp
                  nop
                  sltu         s11, s2, a6
                  srli         s9, s1, 30
                  or           t4, s3, a5
                  xori         s5, t6, -1145
                  auipc        t6, 178031
                  lui          t6, 221885
                  and          t3, s10, a5
                  nop
                  lui          s9, 731364
                  xor          a6, t4, s5
                  sra          t1, a6, a7
                  andi         s5, sp, -832
                  srai         t5, a6, 7
                  sll          a5, t1, gp
                  sll          s6, s4, a5
                  nop
                  or           t5, sp, gp
                  slli         gp, t3, 19
                  xori         a2, s0, 2045
                  andi         s11, t0, 808
                  lui          t6, 419493
                  add          s2, s3, sp
                  andi         a1, a0, 841
                  slt          a2, s0, s1
                  sll          a6, s0, t3
                  sra          s10, a0, tp
                  sltu         a2, ra, tp
                  sltu         a6, a1, s0
                  andi         a4, s8, -1789
                  sll          s4, s2, a6
                  xor          t2, s11, t2
                  addi         s1, s7, 1851
                  nop
                  auipc        t4, 978395
                  xor          s11, s6, s7
                  sub          s10, a6, a6
                  andi         s5, t6, -726
                  and          a3, t1, a6
                  xori         t3, a4, -755
                  sltu         t5, a1, s5
                  add          s6, s9, ra
                  sub          a0, t4, zero
                  sra          s11, a3, t5
                  lui          s2, 407213
                  auipc        s5, 805654
                  srli         a1, s0, 0
                  sll          a1, a5, s1
                  srl          ra, a6, s11
                  sltu         a6, a1, s10
                  andi         a0, s4, -1074
                  sltiu        a5, a4, -2036
                  xori         ra, s9, 91
                  srai         t3, a0, 25
                  srli         a2, t4, 5
                  addi         a3, t2, 55
                  andi         a1, t4, 1303
                  nop
                  nop
                  or           a1, s6, s9
                  sltu         s10, t6, s7
                  sltiu        sp, zero, -1735
                  xori         ra, s2, 510
                  srai         t1, t6, 28
                  or           zero, t6, a7
                  or           s4, sp, a1
                  add          t5, s0, s9
                  sra          sp, a4, a6
                  slti         a6, t2, 1304
                  sra          s2, ra, s9
                  sltu         zero, t4, s4
                  srl          s10, s3, a2
                  and          s9, s0, t4
                  lui          a4, 564184
                  sltu         t6, sp, s9
                  sub          s11, a0, a3
                  auipc        t0, 979813
                  auipc        a6, 826572
                  or           s7, s3, t5
                  auipc        s6, 182101
                  nop
                  sub          t6, tp, s2
                  or           t6, s11, a3
                  auipc        s2, 527806
                  nop
                  add          s5, s6, zero
                  auipc        zero, 307328
                  srli         a0, a1, 26
                  xori         s8, t1, 629
                  srai         s7, t0, 27
                  slti         t4, s9, -1381
                  or           s6, s6, t5
                  add          t6, tp, s11
                  slti         t1, t2, -909
                  lui          t5, 778182
                  sltu         t5, a2, s1
                  xori         a3, t6, 715
                  slli         a3, t4, 14
                  sltu         a5, s6, s0
                  srai         s6, t2, 6
                  slli         a6, a4, 16
                  sltu         sp, s10, gp
                  andi         a7, a7, 1820
                  srai         sp, s5, 27
                  xori         a0, a2, 507
                  lui          t3, 7879
                  sltu         s9, t0, s4
                  ori          s9, s7, -540
                  addi         t6, sp, 1448
                  or           sp, sp, a1
                  slt          a2, s1, a7
                  srli         s5, t6, 24
                  srai         a6, ra, 25
                  sltiu        s6, t5, 121
                  sub          s5, s0, s9
                  auipc        t4, 161024
                  srl          t1, ra, t3
                  ori          a3, s11, -825
                  slt          a7, t2, s8
                  slti         a5, s10, 241
                  and          s6, zero, s5
                  slt          s4, t0, t5
                  xori         ra, t5, 754
                  srai         a1, tp, 12
                  xori         a7, sp, -895
                  sll          a3, t3, ra
                  nop
                  srli         a4, zero, 22
                  andi         t1, t0, 79
                  lui          t1, 174182
                  sra          t2, a5, a6
                  nop
                  or           s7, t4, s9
                  xori         s9, a1, -421
                  srl          t0, sp, ra
                  srl          s5, t5, a3
                  xor          s8, a2, s1
                  sltiu        t2, t0, 22
                  xori         a6, a6, -867
                  slt          t3, a5, a0
                  lui          a5, 200933
                  nop
                  nop
                  andi         s11, a7, -1229
                  and          s10, a0, t1
                  srl          s4, s5, a4
                  or           ra, s1, t6
                  andi         gp, a6, -482
                  or           a4, gp, s8
                  or           t4, s10, t2
                  ori          s10, tp, 1756
                  sll          t1, sp, a1
                  and          t2, s1, a1
                  and          s8, zero, t6
                  xor          a3, s11, a6
                  sltiu        s4, t3, -50
                  auipc        t4, 392487
                  sltiu        t0, a3, 709
                  srai         s11, t0, 11
                  xor          s7, a3, ra
                  or           t4, s4, a4
                  lui          t2, 457271
                  srli         t1, s7, 12
                  and          a7, s11, s5
                  add          t6, s2, tp
                  slli         ra, s6, 5
                  ori          sp, s5, 1194
                  xori         s5, a2, -1562
                  sltu         a7, t1, a6
                  and          s4, a3, s8
                  or           s5, s1, t2
                  sltiu        s4, t6, 2035
                  add          t2, s7, t4
                  and          s9, a6, s7
                  addi         t3, a1, 1539
                  lui          s9, 977021
                  slti         t2, s0, 1369
                  andi         t1, a2, 1561
                  and          a4, s10, s0
                  srai         a0, t3, 13
                  sltiu        s10, a0, -359
                  addi         t1, t2, -1725
                  slt          a5, a4, s5
                  xor          a0, s10, s10
                  slti         a2, ra, -2048
                  sll          s1, gp, s5
                  sltu         s10, t3, t4
                  nop
                  srl          s1, a0, s11
                  xor          ra, tp, zero
                  slli         a5, tp, 7
                  add          sp, s7, s10
                  srai         s7, s4, 11
                  andi         t6, t0, -1795
                  srli         a6, t1, 16
                  sltu         s2, s2, sp
                  slt          t5, a1, t5
                  or           s10, s6, s8
                  nop
                  and          a6, s2, a2
                  andi         s4, s4, 465
                  sll          s2, s0, t3
                  and          s5, s4, s7
                  or           a1, s8, s8
                  nop
                  xori         s6, a6, -716
                  ori          s9, tp, 514
                  srai         zero, s2, 16
                  slt          s4, sp, a3
                  sltiu        a3, s2, 386
                  and          t0, t3, a6
                  sub          s5, a5, s4
                  sltu         s8, a5, s2
                  lui          zero, 192941
                  sub          a4, t0, s3
                  srli         t2, s3, 18
                  srl          s1, a6, s10
                  xor          a1, t0, t4
                  sub          sp, t4, s10
                  slli         a3, t4, 1
                  and          s11, s2, t1
                  sltiu        s2, s7, -895
                  srl          t3, s5, a4
                  addi         gp, t4, 1371
                  xori         gp, a0, 144
                  nop
                  addi         s10, s0, -103
                  sub          t6, t0, t1
                  slt          s9, a0, a7
                  srl          t4, sp, ra
                  slti         s2, t2, 1163
                  ori          s5, t4, -842
                  srli         s8, t6, 8
                  lui          a6, 383811
                  sltiu        a5, a7, 1051
                  slti         a5, zero, 1531
                  ori          s6, t4, 314
                  addi         zero, s10, -567
                  auipc        t5, 775303
                  andi         t6, s2, -1143
                  xori         s4, s10, 1306
                  sub          a5, s2, s7
                  slti         t2, sp, -254
                  sub          a3, s8, sp
                  sltu         s2, t2, gp
                  add          t2, s2, ra
                  slli         a2, tp, 13
                  auipc        a7, 207605
                  sltiu        s9, t3, 1179
                  slli         s11, sp, 8
                  and          s11, s7, a4
                  srli         a4, a4, 29
                  nop
                  sltiu        ra, s7, -528
                  xor          gp, a3, a4
                  sltu         s9, t6, s2
                  srai         s1, a6, 16
                  andi         t0, tp, -1551
                  andi         s10, sp, 603
                  slt          t1, t6, a4
                  sll          s4, s6, a4
                  sra          a0, s4, a6
                  sra          sp, s9, t6
                  and          s9, a0, tp
                  ori          a5, s6, 627
                  xori         gp, a4, -1627
                  add          s1, s2, a3
                  add          ra, sp, ra
                  sub          s8, s8, a7
                  addi         a2, t6, 508
                  or           a7, a5, a2
                  add          t2, s11, s8
                  auipc        s1, 296981
                  andi         a7, s6, 1908
                  and          s1, s7, tp
                  slti         t3, t4, 601
                  xori         s6, sp, -1914
                  auipc        s11, 680744
                  sltu         a0, t0, ra
                  nop
                  or           s4, t3, t4
                  or           a7, gp, t2
                  srai         t2, t5, 23
                  add          ra, s4, tp
                  xori         s8, s0, 1754
                  nop
                  slt          t4, a6, t2
                  slli         a7, t1, 18
                  sub          a6, s7, a7
                  slti         s7, s8, 714
                  xor          s11, t5, s7
                  sra          s11, s4, s3
                  auipc        s7, 57104
                  ori          zero, a1, -346
                  or           a5, a3, a7
                  sltiu        t2, t0, -398
                  xori         a1, tp, 326
                  sltu         s9, s0, gp
                  srli         ra, s4, 20
                  sll          s8, s4, a0
                  srl          s9, tp, t5
                  andi         gp, s11, 1620
                  srai         t3, a7, 25
                  sll          t1, t3, ra
                  add          a6, s2, a3
                  nop
                  slti         s7, s1, -206
                  srl          s1, s6, a0
                  sltiu        a6, t5, -256
                  or           a2, s3, s9
                  slti         t0, s0, 150
                  sltu         t1, s1, a5
                  nop
                  sltu         zero, a4, a0
                  auipc        s5, 254832
                  slti         a6, s9, -1516
                  sltiu        a5, zero, 1216
                  srai         a2, t5, 2
                  srl          s9, s1, sp
                  sltu         a6, s5, t0
                  sltiu        s8, s4, -514
                  addi         gp, sp, -1141
                  sll          t4, t1, ra
                  or           t4, t2, t1
                  xor          s2, a4, s7
                  xor          s5, s8, t3
                  or           a0, a3, gp
                  nop
                  slti         a5, t0, -1212
                  slti         s2, a4, 1585
                  ori          s1, t3, -1678
                  sll          a2, a5, a2
                  sll          gp, zero, a6
                  sltu         gp, a7, tp
                  nop
                  add          gp, s9, s2
                  addi         t2, a3, -1180
                  ori          a4, t6, 1996
                  sll          s4, s0, a0
                  slti         a3, zero, 1015
                  sltu         t4, a1, t4
                  or           a0, a7, s2
                  srai         s2, t0, 18
                  sltiu        t6, sp, 884
                  and          a5, sp, a7
                  lui          a0, 799858
                  andi         sp, ra, -853
                  slt          a3, t2, s1
                  or           s4, sp, s6
                  and          a5, ra, s1
                  slti         t3, s2, 1729
                  xori         ra, s10, 1827
                  lui          gp, 504555
                  xor          s9, t4, a7
                  xor          s1, s11, s2
                  srli         gp, s2, 21
                  auipc        gp, 131540
                  slti         t1, s1, -885
                  lui          gp, 1040287
                  srai         s7, s7, 5
                  auipc        s2, 323964
                  nop
                  sltu         gp, a1, sp
                  srai         a4, t2, 5
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           sp, 0xffffffff
                  li           a0, 0x2ca6bde6
                  li           a3, 0xffffffff
                  li           a1, 0x43720f5c
                  li           s11, 0x0
                  li           s5, 0x80000000
                  li           t1, 0xffffffff
                  li           s10, 0x0
                  li           a7, 0x80000000
                  auipc        sp, 262825
                  nop
                  add          t1, t1, a1
                  lui          a7, 748564
                  sub          sp, s5, s2
                  sub          s10, a1, sp
                  lui          s5, 577326
                  nop
                  sub          s10, s2, s2
                  nop
                  auipc        sp, 494361
                  sub          a1, t1, s2
                  auipc        s2, 995681
                  lui          s5, 300073
                  sub          s11, s11, a0 #end riscv_int_numeric_corner_stream_8
                  auipc        a6, 536364
                  sub          a4, s7, s1
                  andi         gp, a7, -806
                  slt          a2, sp, a2
                  srl          t6, s8, a2
                  nop
                  sltu         s2, zero, a3
                  nop
                  lui          ra, 721495
                  sub          ra, a4, s1
                  andi         a2, s9, -1763
                  srl          s8, t5, ra
                  and          t2, s11, a1
                  xor          s6, t4, gp
                  srai         t2, a2, 15
                  sltu         a4, a4, s6
                  sltiu        t0, t2, 1523
                  or           s1, s11, s7
                  srai         ra, zero, 18
                  slli         s8, ra, 8
                  slt          gp, sp, s7
                  ori          s11, t3, -615
                  sub          a7, zero, a1
                  lui          s6, 121877
                  lui          a6, 1000131
                  xor          ra, t1, s3
                  sub          s10, a3, t2
                  srli         s6, s10, 11
                  sll          t0, s2, sp
                  srl          s11, a7, t4
                  slt          a3, a1, t1
                  srli         zero, t1, 13
                  nop
                  srl          s2, s7, t2
                  xori         ra, a1, 900
                  lui          s10, 77510
                  sub          a4, s7, s5
                  and          t4, tp, a4
                  nop
                  sub          s5, tp, t6
                  sra          a5, s0, s3
                  srl          a4, s10, a3
                  nop
                  andi         a5, zero, -668
                  ori          gp, s4, 1202
                  and          t5, t1, s0
                  srli         a7, s5, 5
                  add          s4, a4, s2
                  xori         gp, s4, 316
                  auipc        t5, 590003
                  sltu         a4, s9, gp
                  xori         a4, s2, 960
                  sra          s10, s10, s1
                  srai         a1, a6, 2
                  xori         s11, s4, 506
                  ori          s7, a6, 1166
                  add          s7, zero, a0
                  srli         a0, a4, 21
                  and          gp, s5, s0
                  addi         s10, tp, -1045
                  or           s6, s6, ra
                  srli         a4, a4, 9
                  srai         ra, t5, 12
                  slti         a6, a0, -1287
                  lui          t5, 588255
                  nop
                  add          t6, s6, s5
                  sra          a2, zero, t3
                  srl          t3, s10, ra
                  add          a7, t0, t0
                  and          s11, t4, zero
                  slti         s5, a0, -921
                  slt          s1, t5, s8
                  sll          a5, s1, s8
                  add          s5, s4, a7
                  auipc        t4, 233772
                  nop
                  slt          zero, s10, a1
                  slti         t6, s6, 73
                  xori         t1, a7, 637
                  addi         a6, zero, 694
                  slt          s7, s2, t6
                  auipc        t3, 799085
                  xori         s5, a0, -1340
                  sra          a7, ra, sp
                  srli         a4, ra, 28
                  add          a2, s1, t0
                  and          t5, s8, t2
                  auipc        s2, 620790
                  slli         a3, s10, 12
                  srli         s2, t4, 10
                  addi         a2, s6, 1719
                  nop
                  andi         s9, a7, -2011
                  slli         s4, t0, 10
                  add          ra, ra, s5
                  xori         t3, a5, 1122
                  xori         a3, a4, 505
                  sltiu        sp, s3, -428
                  ori          ra, s0, -1003
                  slt          s10, zero, t6
                  slti         a0, s2, -143
                  sltu         sp, s11, t5
                  slli         ra, sp, 16
                  slli         s1, s8, 9
                  auipc        s6, 876650
                  xor          s11, t3, tp
                  nop
                  sra          a4, s6, a2
                  addi         s9, a7, -90
                  slt          t3, s11, t6
                  srai         zero, t0, 11
                  srli         s4, a2, 17
                  add          s8, a1, s6
                  sll          s1, zero, t4
                  auipc        s9, 642746
                  andi         s7, a0, 919
                  slti         a7, s5, 1853
                  sltu         t1, t0, s2
                  andi         a4, a5, -1917
                  sub          s11, s11, s1
                  srl          s2, s2, s2
                  sltu         s8, t0, a4
                  auipc        t5, 478837
                  sltiu        a1, s11, 1923
                  xor          s4, s7, t4
                  sll          t4, s8, a3
                  slti         s6, s3, 1427
                  slti         t6, a6, -1088
                  auipc        sp, 184776
                  add          a5, t0, s8
                  slt          a2, t0, ra
                  slti         s7, a7, -1387
                  srl          s7, s7, t2
                  srl          s6, t2, ra
                  sll          s2, t5, a6
                  addi         t4, a5, -1139
                  sltu         s1, a6, t2
                  sub          s5, t0, a4
                  nop
                  sra          s10, a7, gp
                  srai         t0, s3, 16
                  sub          gp, a6, a0
                  sltu         gp, s5, s4
                  add          a5, s3, t0
                  sltiu        t5, zero, 1999
                  sll          a3, sp, sp
                  nop
                  and          t2, a7, t3
                  xori         s9, s10, 948
                  srli         a0, s3, 30
                  srai         t5, s9, 6
                  srai         a7, a4, 16
                  slli         s10, s10, 29
                  srai         t5, a5, 14
                  auipc        a0, 37555
                  ori          a3, t1, 774
                  and          a7, s0, gp
                  slt          s2, t6, a7
                  nop
                  andi         s9, s3, 184
                  xori         a5, a7, 724
                  sub          t1, s1, a4
                  srl          a1, s7, s10
                  srl          a3, a2, t6
                  sltu         a2, s6, s2
                  sub          t4, t6, s8
                  lui          gp, 924772
                  sll          t6, zero, a5
                  xori         t0, s2, 1992
                  auipc        a6, 141002
                  sub          s1, s5, a5
                  sltu         s10, gp, a2
                  sub          a0, a3, gp
                  or           s5, s11, s9
                  srl          a1, gp, s11
                  sra          s8, s10, s10
                  xori         t4, t4, 1837
                  andi         a7, tp, 225
                  or           t0, s11, t6
                  lui          t4, 202977
                  sra          zero, t5, t1
                  lui          a7, 680254
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           s5, 0x80000000
                  li           t4, 0xffffffff
                  li           a1, 0xffffffff
                  li           t5, 0x80000000
                  li           s9, 0x0
                  li           sp, 0xffffffff
                  li           a6, 0x0
                  li           t6, 0xffffffff
                  li           s11, 0xffffffff
                  lui          t4, 411983
                  add          s1, s9, sp
                  lui          s5, 777983
                  lui          s5, 952314
                  nop
                  nop
                  add          t4, s9, a6
                  add          a6, t6, s11
                  nop
                  add          t4, t6, s11
                  nop
                  add          s5, t5, t4
                  lui          a1, 209072
                  add          s11, sp, s1
                  addi         sp, a6, 1404
                  auipc        t5, 929627
                  nop
                  addi         t4, s11, 1405
                  auipc        t4, 1032186
                  lui          s5, 340616
                  addi         sp, s9, -97
                  sub          t5, a1, s9 #end riscv_int_numeric_corner_stream_4
                  slti         s1, gp, 1350
                  sub          ra, s10, t6
                  nop
                  addi         t1, s9, 795
                  srai         s4, s4, 9
                  srai         t5, s3, 11
                  andi         t2, a1, 1486
                  slt          s6, s9, t2
                  srl          a7, s6, t1
                  slti         a2, t0, 1353
                  srl          sp, s10, sp
                  add          t2, s6, gp
                  sltiu        gp, s0, -1081
                  nop
                  nop
                  sltu         a2, s5, t4
                  nop
                  sltu         s1, a4, a4
                  nop
                  addi         a1, a4, -388
                  srli         a0, s1, 3
                  slli         s5, s5, 7
                  or           s1, s4, t6
                  sra          a5, s6, t5
                  and          s8, s3, t3
                  li           s1, 0x9faebe64 #start riscv_int_numeric_corner_stream_10
                  li           t5, 0x0
                  li           a2, 0xf5f42c52
                  li           a3, 0xffffffff
                  li           s8, 0x0
                  li           t2, 0x0
                  li           s6, 0x0
                  li           s9, 0x80000000
                  li           t1, 0xd08db716
                  li           sp, 0x505a5a68
                  auipc        s8, 793754
                  add          s6, s6, s9
                  addi         a2, t1, -376
                  add          sp, t2, a2
                  add          t5, s8, s9
                  nop
                  nop
                  nop
                  auipc        t1, 198468
                  auipc        a2, 771799
                  addi         t5, s9, -117
                  auipc        sp, 763135
                  add          t5, sp, a3
                  lui          t5, 270540
                  sub          s8, t2, s6
                  addi         t2, s6, 768
                  add          sp, t2, t2
                  lui          a2, 435487
                  nop
                  sub          a2, s1, t5
                  auipc        s8, 601286 #end riscv_int_numeric_corner_stream_10
                  slti         s8, t1, -392
                  nop
                  ori          a6, t0, -259
                  lui          s1, 280082
                  auipc        t5, 820445
                  sra          a0, s9, ra
                  ori          t2, gp, 1905
                  auipc        s9, 703980
                  srli         s11, a3, 17
                  sltiu        zero, t1, -5
                  srli         s7, t5, 20
                  srli         s8, gp, 18
                  sra          ra, a5, s5
                  lui          t0, 583831
                  sra          ra, a6, a3
                  and          s9, s4, sp
                  slti         s11, a4, -570
                  srai         sp, s2, 0
                  sltu         s11, a2, ra
                  and          t0, t1, s9
                  srai         s4, zero, 4
                  xor          s2, a4, t3
                  xor          a7, a1, a6
                  nop
                  or           a4, s6, a1
                  xor          s9, tp, t6
                  xori         a4, s0, 1818
                  nop
                  andi         gp, t6, -1072
                  xor          t1, t4, sp
                  xor          a7, a6, s11
                  nop
                  or           s2, s7, s7
                  srli         s4, t1, 8
                  sll          a5, gp, a3
                  or           a4, gp, t6
                  nop
                  srl          s4, s4, a5
                  xor          sp, sp, a2
                  nop
                  lui          s9, 511742
                  slt          gp, tp, a2
                  andi         a1, s8, 970
                  xori         t6, a0, 634
                  sltiu        s4, t2, 1969
                  slt          s2, sp, s10
                  auipc        t4, 17400
                  srl          a3, s0, a7
                  sltu         s4, s4, a4
                  srl          a2, a3, s7
                  add          sp, s1, t2
                  srl          sp, t0, t6
                  add          a3, a7, t4
                  auipc        s5, 442195
                  xor          s7, a4, s9
                  sltiu        gp, s1, 1873
                  sub          a6, s6, zero
                  srli         zero, zero, 17
                  auipc        t6, 476102
                  ori          s9, t2, 1538
                  andi         gp, s2, -1060
                  auipc        t3, 193740
                  addi         s2, t1, -1787
                  nop
                  andi         t6, t2, -1337
                  slti         zero, a0, 1153
                  add          t1, sp, t2
                  slli         gp, t4, 22
                  srli         s10, s0, 0
                  auipc        s9, 679588
                  add          s1, t6, a7
                  or           s7, s3, s6
                  add          gp, t0, t6
                  auipc        t0, 200666
                  add          t5, s8, a3
                  slti         s4, t4, -854
                  sltiu        ra, s4, -155
                  srli         s1, gp, 13
                  sub          s7, s3, t5
                  andi         t4, t0, -547
                  and          s4, s4, tp
                  xori         zero, t3, -850
                  sll          s9, t6, a1
                  andi         a1, a1, -557
                  auipc        a3, 973091
                  srl          ra, a7, s1
                  addi         a1, s2, 494
                  slti         s11, tp, -2045
                  sub          sp, t3, s7
                  addi         sp, t3, 663
                  ori          t4, a4, 873
                  sub          t3, gp, s8
                  addi         a6, s10, 83
                  ori          a4, s11, 459
                  or           a7, s4, s0
                  sltu         a0, s5, a1
                  auipc        zero, 705789
                  nop
                  lui          s7, 192829
                  andi         a1, ra, 1427
                  lui          gp, 1035577
                  xori         t5, s0, -1348
                  srli         a7, a2, 27
                  lui          s7, 824790
                  andi         s4, t4, -1385
                  andi         t6, t2, -1151
                  srli         a4, s8, 11
                  auipc        t1, 500788
                  slt          t5, tp, s0
                  sll          zero, a3, s10
                  nop
                  andi         a7, t1, -113
                  ori          a4, s8, 389
                  sltiu        a7, s2, 1485
                  and          a7, s7, s8
                  addi         sp, t6, -854
                  addi         t5, s4, -1172
                  add          s11, t2, a7
                  sub          a5, t3, t0
                  addi         a4, a0, -598
                  sltu         s8, t5, t0
                  ori          t0, a4, 1213
                  sll          s6, zero, t6
                  add          s5, t4, gp
                  sltiu        t0, sp, 683
                  sra          s5, gp, a3
                  slti         a1, s9, 516
                  nop
                  srai         t4, s6, 15
                  auipc        t3, 529922
                  add          sp, t5, gp
                  sll          t6, t1, a0
                  sltiu        ra, s2, -270
                  sub          t4, s10, s6
                  srli         s10, s6, 25
                  ori          a0, s2, -764
                  nop
                  add          zero, t1, zero
                  sll          s2, sp, tp
                  sltiu        t3, t4, -1862
                  srai         a7, t3, 1
                  or           a5, s11, zero
                  andi         s11, a2, 1178
                  addi         t0, tp, -441
                  sltiu        s6, t1, -520
                  andi         s5, zero, 869
                  nop
                  nop
                  slti         t1, a3, 1949
                  slti         s1, s0, -1166
                  srl          s1, a2, s10
                  sltu         a3, s0, s1
                  srli         s5, t2, 27
                  nop
                  slt          s2, a5, sp
                  slt          a1, s5, s4
                  sll          t0, t2, a3
                  slti         sp, a0, 397
                  addi         a2, s2, -74
                  nop
                  addi         s1, sp, -508
                  srli         a1, t6, 5
                  sub          s4, s4, sp
                  slli         a7, a4, 23
                  nop
                  addi         t0, s10, 1898
                  and          zero, s7, s1
                  lui          s11, 55488
                  andi         a2, sp, 1510
                  xor          t2, s7, s2
                  xori         a6, a3, -489
                  slli         s6, s2, 1
                  sra          a0, s3, t1
                  or           t5, s11, gp
                  or           sp, t2, s7
                  auipc        a6, 381918
                  sub          s7, s7, t5
                  xor          s7, zero, sp
                  sltu         a5, ra, s6
                  nop
                  nop
                  srli         t6, s10, 3
                  sra          zero, t3, a7
                  sub          a0, s4, t5
                  slt          s8, t3, t0
                  sub          s9, s1, t4
                  sra          s6, s10, a0
                  addi         a6, gp, -336
                  srai         ra, a5, 4
                  nop
                  slti         s5, ra, -625
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
                  add x4, x19, zero
                  csrr x9, 0x300 # MSTATUS
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 31
                  bne x9, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x9, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x9, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x9, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x9, x27, ecall_handler
                  li x27, 0x1
                  beq x9, x27, instr_fault_handler
                  li x27, 0x5
                  beq x9, x27, load_fault_handler
                  li x27, 0x7
                  beq x9, x27, store_fault_handler
                  li x27, 0xc
                  beq x9, x27, pt_fault_handler
                  li x27, 0xd
                  beq x9, x27, pt_fault_handler
                  li x27, 0xf
                  beq x9, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x19, x4, zero
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
                  add x19, x4, zero
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
                  add x19, x4, zero
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
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x19, x4, zero
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
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x19, x4, zero
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
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x19, x4, zero
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
