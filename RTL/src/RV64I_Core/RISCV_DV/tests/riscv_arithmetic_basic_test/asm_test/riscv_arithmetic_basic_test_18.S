.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 1
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  mret
init:             
                  li x0, 0x9
                  li x1, 0x60e50b7d
                  li x2, 0xc
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x4
                  li x6, 0x3347668c
                  li x7, 0x0
                  li x8, 0x0
                  li x10, 0x8
                  li x11, 0x80000000
                  li x12, 0xa770a120
                  li x14, 0x7
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x545c01f9
                  li x20, 0x8
                  li x21, 0xf1005edc
                  li x22, 0xa
                  li x23, 0xf2e28dfd
                  li x24, 0xfcab7231
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0x3df818f7
                  li x30, 0x0
                  li x31, 0x0
                  la x9, user_stack_end
main:             li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s8, 0x0
                  li           t2, 0x0
                  li           s10, 0x80000000
                  li           t4, 0x80000000
                  li           ra, 0xcc5c06bf
                  li           t1, 0x80000000
                  li           t0, 0xffffffff
                  li           s4, 0x80000000
                  li           s11, 0xaa603dd9
                  sub          t0, t0, ra
                  nop
                  addi         t4, t2, -1184
                  auipc        t1, 910321
                  auipc        s11, 709644
                  sub          sp, t4, t4
                  nop
                  auipc        sp, 530380
                  add          s8, sp, s11
                  lui          ra, 90614
                  addi         ra, ra, 1510
                  add          t4, s4, t4
                  lui          t4, 620529
                  lui          t1, 581694
                  auipc        t4, 309033
                  lui          t1, 1005865
                  addi         t4, s8, 266
                  nop
                  add          ra, t2, s11
                  lui          s10, 845283 #end riscv_int_numeric_corner_stream_0
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           a5, 0x80000000
                  li           a2, 0xffffffff
                  li           s3, 0xffffffff
                  li           t5, 0x1de84370
                  li           t3, 0x0
                  li           s9, 0x3fb17fdb
                  li           sp, 0xd7142932
                  li           s5, 0xffffffff
                  li           a7, 0x3724efad
                  add          t3, a7, s5
                  add          a7, a2, a7
                  add          t5, s3, s9
                  nop
                  addi         t3, a2, -1812
                  add          s9, s6, a2
                  addi         a5, s9, 1189
                  addi         a5, s5, -1796
                  lui          t5, 1004449
                  auipc        sp, 148637
                  lui          s9, 849723
                  auipc        a2, 1046350
                  sub          t5, a5, a2
                  sub          sp, t3, s5
                  addi         t3, s9, 591
                  add          a2, s9, s9
                  nop
                  lui          a5, 868120 #end riscv_int_numeric_corner_stream_5
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           a5, 0x80000000
                  li           s0, 0xffffffff
                  li           s9, 0x80000000
                  li           a0, 0x0
                  li           t6, 0xffffffff
                  li           s5, 0xffffffff
                  li           t0, 0x37669fd0
                  li           t4, 0xffffffff
                  li           s4, 0xffffffff
                  add          s0, s5, t5
                  sub          t4, s5, t4
                  auipc        t5, 878171
                  nop
                  sub          t0, t0, a5
                  nop
                  auipc        t6, 405843
                  auipc        s0, 329447
                  sub          t4, a0, t6
                  addi         t4, t0, 1808
                  nop
                  lui          s0, 257837
                  add          t4, a0, s9
                  addi         s4, t4, -647
                  auipc        t4, 192422
                  sub          s9, t6, s9
                  sub          s4, a5, t5
                  nop
                  add          s4, a5, t4
                  nop
                  nop
                  auipc        a0, 599247
                  nop #end riscv_int_numeric_corner_stream_6
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           a1, 0xffffffff
                  li           t0, 0x0
                  li           a0, 0x80000000
                  li           t1, 0x0
                  li           t6, 0xf6251887
                  li           s2, 0x0
                  li           t2, 0x80000000
                  li           s7, 0x2323b3d6
                  li           s10, 0x80000000
                  auipc        a7, 809434
                  addi         a0, a7, -40
                  lui          t2, 137394
                  add          s7, t6, t6
                  nop
                  add          s10, s7, s2
                  nop
                  nop
                  auipc        t1, 98922
                  sub          s2, t1, t2
                  addi         t0, t6, -897
                  nop
                  add          s7, s7, s10
                  auipc        a7, 2402
                  lui          s7, 657383
                  auipc        a1, 739997
                  nop
                  lui          t6, 417757
                  nop
                  sub          s2, t2, t6
                  auipc        s10, 108906 #end riscv_int_numeric_corner_stream_16
                  li           s0, 0x67cdade9 #start riscv_int_numeric_corner_stream_2
                  li           t5, 0x0
                  li           t0, 0x80000000
                  li           a7, 0x0
                  li           s4, 0x0
                  li           s3, 0xffffffff
                  li           s5, 0xffffffff
                  li           a4, 0x80000000
                  li           t6, 0x80000000
                  li           t1, 0x0
                  nop
                  nop
                  sub          s0, s3, t1
                  auipc        t1, 564616
                  add          a7, s4, t5
                  sub          t0, t0, s5
                  auipc        t5, 109753
                  auipc        a7, 390234
                  nop
                  add          s4, t1, s0
                  sub          t1, s3, s4
                  addi         s3, a4, -537
                  addi         t1, a4, 1843
                  sub          t6, t0, t5
                  nop
                  auipc        s3, 531874
                  sub          t0, t0, t0
                  lui          a7, 836862
                  auipc        t5, 146895
                  sub          a4, a4, s0
                  lui          s5, 277853
                  auipc        s4, 635178
                  auipc        s3, 496874 #end riscv_int_numeric_corner_stream_2
                  li           t0, 0xd2c35692 #start riscv_int_numeric_corner_stream_12
                  li           s6, 0x80000000
                  li           a1, 0xffffffff
                  li           s7, 0x80000000
                  li           t6, 0x0
                  li           t2, 0xd2c7a80e
                  li           a7, 0xffffffff
                  li           s5, 0xd2fd32c
                  li           t3, 0xffffffff
                  li           sp, 0x0
                  addi         s7, t0, -1447
                  sub          s6, a1, s5
                  lui          t0, 461138
                  auipc        sp, 765971
                  sub          t0, a1, a1
                  lui          t0, 873043
                  auipc        s7, 918619
                  nop
                  sub          t6, t2, a7
                  sub          t2, t2, a7
                  add          s6, t2, a1
                  nop
                  add          t6, t2, t2
                  nop
                  lui          a7, 654449
                  lui          t3, 950127
                  lui          t2, 663071
                  lui          t2, 990878
                  nop
                  addi         sp, s5, 1860
                  auipc        s7, 552881
                  sub          sp, s6, t2
                  nop
                  nop
                  auipc        s7, 342497
                  auipc        t2, 608794
                  nop
                  add          s5, s7, sp
                  lui          a1, 876909 #end riscv_int_numeric_corner_stream_12
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           t2, 0x0
                  li           s2, 0xffffffff
                  li           s9, 0x0
                  li           a4, 0xffffffff
                  li           gp, 0xffffffff
                  li           s6, 0xffffffff
                  li           sp, 0x80000000
                  li           a0, 0xffffffff
                  li           t1, 0x8d6a940
                  nop
                  auipc        s9, 43688
                  sub          t1, a4, a0
                  sub          a4, t4, gp
                  lui          a0, 143022
                  sub          t2, s2, s6
                  addi         a0, sp, 897
                  addi         sp, s2, 1421
                  add          a0, s2, sp
                  add          t4, t1, t2
                  nop
                  lui          s2, 652550
                  nop
                  nop
                  addi         a4, s6, -1868
                  sub          s9, s9, s9
                  addi         s6, a0, -1207
                  sub          s6, a0, t4
                  nop
                  sub          s9, t1, a4
                  add          s6, a4, gp
                  sub          a4, s9, s6
                  addi         t1, a0, 1310
                  lui          a0, 831188
                  sub          s2, s6, t2
                  lui          t1, 86078
                  addi         s9, t4, -279
                  addi         s6, s2, 808
                  nop #end riscv_int_numeric_corner_stream_3
                  xor          t3, s9, s6
                  slt          t3, tp, ra
                  sltu         t3, tp, s5
                  sltiu        t2, s7, 732
                  sltiu        zero, s1, -1885
                  sll          t3, s6, gp
                  andi         t2, s11, 805
                  sll          s7, a4, s8
                  srai         s0, a0, 27
                  addi         s9, t1, 1108
                  and          s0, s1, zero
                  add          gp, sp, t4
                  xor          a7, ra, a3
                  srai         zero, s10, 17
                  sll          a1, tp, a5
                  xori         t6, s3, 642
                  sra          s5, s8, s6
                  addi         zero, s9, 1117
                  sub          a2, t6, t3
                  slli         s8, s6, 12
                  slti         s3, a7, 591
                  srli         ra, a2, 8
                  srai         s7, t0, 19
                  add          s11, s7, s9
                  sltiu        a1, t5, -1622
                  or           s3, a6, t0
                  lui          s9, 182461
                  sltu         t3, t3, ra
                  srl          t0, a0, a4
                  xori         zero, s4, -1744
                  sra          t1, s11, s1
                  addi         a7, a0, -1487
                  addi         t3, a0, -741
                  ori          zero, ra, 538
                  and          s6, t1, s7
                  sra          s6, zero, s4
                  addi         s9, tp, -1914
                  lui          ra, 604411
                  slti         t4, a7, 1330
                  slt          s10, s10, s3
                  sra          t0, s4, a0
                  sub          a6, a2, ra
                  sltu         a7, t5, a5
                  srli         zero, t6, 17
                  andi         a0, ra, 1883
                  addi         s2, sp, 1475
                  xori         t3, s3, -1174
                  andi         t1, s2, 1017
                  srai         t5, sp, 6
                  slti         t3, a3, 1071
                  slt          s10, a3, s6
                  sra          t2, zero, s8
                  srai         s4, gp, 19
                  sltiu        t4, s3, 775
                  or           s5, t5, tp
                  add          s11, s7, s7
                  sll          s9, t0, a0
                  auipc        s3, 732612
                  xor          t1, t2, zero
                  sra          t4, tp, s1
                  lui          s10, 709565
                  auipc        sp, 696930
                  srli         a7, s10, 31
                  and          t0, gp, a2
                  ori          a4, tp, -1536
                  or           a4, s1, s9
                  ori          s4, s2, -166
                  srl          ra, s2, t3
                  srai         gp, a5, 21
                  ori          a4, s6, -393
                  auipc        s7, 281510
                  sltiu        s6, tp, -916
                  xori         s7, s7, 503
                  nop
                  nop
                  srli         s10, s9, 24
                  srli         t5, t2, 27
                  addi         t2, tp, -925
                  or           s11, s10, a5
                  auipc        t2, 511844
                  sltiu        s9, a7, -1387
                  andi         s5, t4, -177
                  xori         s5, t1, -370
                  srli         s11, tp, 7
                  srai         a7, s11, 11
                  ori          a1, a2, 1443
                  srl          a6, t0, s3
                  add          s3, s8, sp
                  slt          s5, a3, a6
                  sub          s5, s8, t1
                  xori         t4, t4, 852
                  sltu         s9, s11, s5
                  add          zero, s5, t0
                  sltiu        t4, t5, -307
                  sltu         s4, a5, a4
                  xori         t4, a6, 303
                  xor          a2, s4, t3
                  addi         s6, t5, -407
                  nop
                  auipc        a0, 60186
                  sltiu        a2, t0, -1917
                  addi         s4, s2, 456
                  lui          a4, 440543
                  sltu         s5, s10, a5
                  slt          s4, sp, t6
                  slti         t4, s1, 1120
                  nop
                  nop
                  xor          t0, a5, t5
                  xor          a6, a2, s8
                  xor          s6, a5, t4
                  sltu         a2, sp, s7
                  srli         s0, sp, 19
                  sltu         sp, s4, t4
                  sub          zero, ra, ra
                  andi         sp, s7, -576
                  ori          t1, gp, -1254
                  slti         a1, ra, 870
                  sra          t6, s8, s10
                  ori          t5, s6, -54
                  or           gp, tp, s2
                  sll          s11, a3, a1
                  or           s10, s0, t3
                  xori         gp, s8, -431
                  xor          t4, s3, zero
                  andi         a1, gp, 1796
                  sltiu        a5, s11, 748
                  sra          t0, s0, s4
                  xor          s5, s7, a0
                  slt          zero, t4, t3
                  srai         a6, t3, 23
                  slt          gp, t3, s0
                  srli         s5, a4, 19
                  nop
                  xori         t0, t2, 43
                  sll          s7, s5, s0
                  andi         t6, a3, -1921
                  sll          a1, a6, sp
                  lui          a6, 829634
                  sll          t0, s0, s11
                  sra          t6, t3, s1
                  auipc        t6, 600405
                  srl          a0, sp, s4
                  andi         sp, s10, 219
                  sltu         s5, sp, t6
                  andi         sp, sp, -478
                  sll          t1, s8, a4
                  and          s3, s10, ra
                  add          s6, t0, s7
                  sra          s3, t0, sp
                  sltu         a7, t2, t5
                  sltiu        t2, ra, 746
                  auipc        s4, 877484
                  slt          s2, s10, a1
                  slti         t5, t2, -1755
                  srli         s0, s2, 18
                  and          a6, ra, zero
                  ori          a2, s5, -1156
                  sub          a0, zero, a6
                  ori          a0, zero, -1475
                  srai         s9, t1, 12
                  sltiu        t3, a0, 1217
                  and          s9, a2, a4
                  slt          a0, zero, s1
                  sll          ra, s4, a7
                  xor          t3, s2, s11
                  slt          a1, s3, s5
                  lui          a5, 870044
                  nop
                  slli         gp, a3, 21
                  addi         a4, t2, 532
                  sltu         t0, s8, a7
                  lui          a7, 716179
                  add          a7, zero, s0
                  auipc        s5, 885456
                  sltu         a4, s5, s8
                  xori         a0, s5, 822
                  auipc        ra, 813245
                  srl          a7, tp, t5
                  nop
                  srli         t3, a5, 12
                  srl          a7, tp, a5
                  lui          t2, 107707
                  slli         s4, tp, 3
                  auipc        gp, 451371
                  srli         sp, t4, 4
                  slti         t6, s10, -1383
                  xori         s8, a5, 1880
                  sub          s6, s7, zero
                  slti         s7, a7, -2001
                  slli         t5, t6, 7
                  auipc        s6, 348692
                  slti         t3, s11, -329
                  srl          s7, s10, s10
                  sltiu        s8, t2, -1964
                  sltiu        s4, a7, -1256
                  sltiu        zero, a5, -846
                  slti         s7, t6, 144
                  srai         t3, a0, 25
                  ori          s8, s6, -1740
                  srai         zero, s1, 11
                  slti         a6, s6, -151
                  sra          s7, t0, s0
                  slli         t3, s7, 9
                  auipc        s6, 686072
                  addi         s7, t6, 1258
                  srai         t4, t3, 24
                  or           zero, a1, s9
                  srai         s10, tp, 0
                  andi         t1, s1, 1843
                  sub          gp, a1, s3
                  sltu         s7, a1, t5
                  srai         t2, t3, 31
                  srli         a7, sp, 24
                  srai         s0, s10, 3
                  andi         t5, a3, -735
                  or           t6, s0, a3
                  ori          s6, a7, 1005
                  srl          s7, t4, s1
                  slt          s3, t1, s0
                  sltu         s8, s7, a6
                  lui          a1, 183919
                  srai         a5, zero, 23
                  nop
                  auipc        a5, 468773
                  lui          sp, 90970
                  slti         s5, a3, -1291
                  lui          s2, 820026
                  xor          t2, a1, s1
                  slli         t2, a7, 3
                  slti         s3, a2, 1370
                  sra          t6, tp, t2
                  sll          a5, sp, gp
                  sltu         a6, tp, t4
                  add          t3, s4, s7
                  sll          s11, t4, t6
                  sltu         gp, s7, t2
                  srai         s8, t4, 4
                  srai         t5, s8, 0
                  andi         a2, s2, 1329
                  srai         s4, t0, 16
                  srai         a2, a7, 9
                  slti         zero, tp, 629
                  nop
                  and          a1, a2, s8
                  sub          t6, s10, a5
                  andi         a0, a3, -419
                  add          s10, s11, a0
                  or           a1, t6, gp
                  sub          s2, a2, s8
                  andi         s7, zero, -247
                  slli         s8, tp, 5
                  slli         s7, sp, 13
                  sltu         s2, s7, a2
                  srai         s10, s9, 3
                  srl          a5, s2, a5
                  srl          s8, s8, t6
                  srai         t5, s11, 24
                  slli         s6, ra, 6
                  ori          s4, s1, -1092
                  sra          zero, a7, a5
                  lui          gp, 625262
                  slli         t4, s0, 0
                  srai         t5, ra, 21
                  lui          a2, 1027325
                  xor          s0, s2, s2
                  srai         t5, a2, 27
                  srai         t5, a3, 20
                  sll          zero, t6, s4
                  sll          a4, a6, t0
                  and          sp, t3, t1
                  andi         a4, a1, -586
                  add          a6, s9, s6
                  srai         s0, a6, 2
                  slti         t2, t6, 1896
                  lui          a4, 776135
                  nop
                  slli         zero, s5, 13
                  slt          t6, s5, a1
                  andi         s9, t2, 497
                  ori          s5, s10, -857
                  nop
                  sltu         s8, a4, t0
                  slti         a0, t5, -1744
                  or           s2, s0, t6
                  xor          a2, a1, a5
                  addi         a0, a4, 1646
                  srli         s10, s1, 17
                  addi         sp, a5, 1980
                  sltu         t3, s1, s0
                  slli         sp, a6, 20
                  xori         a6, a2, -1567
                  srai         sp, t3, 7
                  srli         s8, sp, 7
                  andi         t1, s5, -1167
                  sll          s10, a7, zero
                  sltu         a6, s1, a5
                  andi         gp, t4, 561
                  sltiu        sp, s10, 1822
                  sltiu        t6, s5, 263
                  sll          s2, t1, s4
                  xori         s11, s8, -338
                  andi         a5, s11, -1608
                  nop
                  srli         a0, s2, 19
                  sltiu        s11, a6, -372
                  andi         s8, s11, 712
                  slt          a5, sp, t6
                  srai         s2, a5, 0
                  or           s4, a4, a4
                  addi         a0, s6, -18
                  addi         s8, s6, 1447
                  sub          t4, s1, s10
                  auipc        s4, 335875
                  ori          s9, tp, 1611
                  xor          s8, s6, a0
                  addi         a4, s4, 591
                  addi         a5, zero, 985
                  auipc        ra, 349595
                  xori         t0, s4, -1940
                  add          s3, s6, gp
                  add          s7, s1, t0
                  sll          a7, t1, t4
                  srai         gp, t0, 8
                  lui          a4, 389617
                  slli         s10, sp, 29
                  sub          s0, t5, a5
                  slt          t6, a6, s11
                  and          t4, ra, t3
                  srli         a0, s10, 19
                  or           a6, sp, s10
                  xori         a5, sp, 747
                  lui          a6, 395208
                  xor          gp, zero, a5
                  add          t1, t1, gp
                  addi         s5, s2, -418
                  add          t0, tp, s4
                  and          a1, t4, a6
                  srl          ra, s10, s9
                  slt          a0, s7, t3
                  sra          t4, ra, s1
                  xori         s6, a4, -1374
                  lui          a6, 18768
                  auipc        gp, 227077
                  nop
                  sltiu        t6, s8, -1428
                  andi         s11, a2, -199
                  ori          s2, s3, -1614
                  srai         gp, s8, 12
                  auipc        s0, 759130
                  slti         s5, a3, 470
                  auipc        s5, 260194
                  andi         s10, s2, -1323
                  or           t1, gp, a5
                  xor          s9, s10, sp
                  sll          s11, s2, t2
                  srai         s8, t2, 24
                  slt          s5, s5, a7
                  sub          t1, s4, a0
                  xori         s11, a5, 1063
                  xori         s11, t6, -1061
                  addi         s10, t4, -1991
                  add          zero, a6, s10
                  sll          s11, t4, a2
                  slli         s6, s2, 6
                  sra          a4, s6, s2
                  ori          a0, s5, -702
                  andi         t4, s5, 1410
                  srai         gp, a4, 29
                  sltiu        t5, s4, -920
                  ori          s8, s5, -973
                  auipc        t5, 832686
                  addi         t3, a3, 1820
                  srai         s10, zero, 12
                  xor          s0, s11, s6
                  nop
                  sub          s8, a2, t5
                  sll          t3, t2, t3
                  sra          t0, t0, a7
                  srai         s11, s2, 19
                  sra          s11, t3, tp
                  xori         s0, zero, -1217
                  srai         t5, s4, 14
                  sltiu        s5, gp, -1550
                  srli         a6, s4, 18
                  sltu         sp, a5, s9
                  andi         ra, gp, 1130
                  ori          a4, s3, 511
                  and          t5, t1, t1
                  and          a4, s11, a6
                  nop
                  or           s6, t2, a3
                  sub          a7, t3, sp
                  slt          t0, gp, t5
                  or           s3, s10, a0
                  sltu         s9, s3, t0
                  and          t5, t5, s8
                  lui          s2, 908677
                  auipc        t3, 113930
                  and          s8, s1, s1
                  add          s10, s8, s0
                  xori         s0, a0, -1134
                  sltu         a0, s0, s10
                  slt          s2, s4, zero
                  srl          s7, t4, s10
                  auipc        t5, 1021351
                  addi         s8, a6, 364
                  lui          a6, 38286
                  sub          t2, s10, s1
                  srli         s0, zero, 20
                  ori          s2, a4, -632
                  sra          t1, a1, t0
                  srai         a5, s3, 2
                  sll          s6, s11, s0
                  nop
                  sltiu        a2, a4, 85
                  or           s7, s2, ra
                  slt          a4, t5, s10
                  lui          sp, 7158
                  and          s10, t6, a4
                  srli         s4, s9, 9
                  addi         s9, t1, 911
                  srai         t5, s7, 30
                  sltu         t5, s7, a3
                  sltiu        a7, s11, -1840
                  xor          zero, s8, t3
                  srai         t5, s3, 2
                  sra          s5, gp, ra
                  sll          a2, s0, tp
                  sltu         s9, s6, s7
                  srli         a4, s8, 7
                  slli         zero, t5, 14
                  nop
                  slt          t0, tp, s3
                  li           a4, 0xf8149d66 #start riscv_int_numeric_corner_stream_8
                  li           t0, 0x80000000
                  li           a2, 0xffffffff
                  li           a5, 0x80000000
                  li           s0, 0xffffffff
                  li           t6, 0xde386fc3
                  li           s5, 0x0
                  li           s4, 0x0
                  li           s6, 0xffffffff
                  li           t4, 0x0
                  addi         s0, t0, 912
                  addi         a4, t6, 783
                  auipc        s0, 193272
                  auipc        s0, 518391
                  auipc        a5, 655815
                  nop
                  nop
                  lui          a4, 1045508
                  auipc        s5, 970714
                  addi         t4, t4, 1832
                  nop
                  add          a5, a4, t4
                  lui          s6, 774671
                  add          a4, t6, s0
                  addi         s6, a2, 1024
                  addi         t0, t0, 419
                  add          a2, s6, t6
                  sub          t4, s4, a5
                  auipc        a5, 430025
                  add          t0, s4, s6
                  lui          a2, 18641
                  add          s0, a5, s0
                  nop
                  sub          s5, t4, s6
                  addi         t0, s5, 958
                  addi         a4, a2, -1756
                  lui          s5, 161080
                  auipc        s4, 743199
                  add          t0, t6, a5
                  sub          s4, a2, a4 #end riscv_int_numeric_corner_stream_8
                  addi         t1, a4, -1142
                  nop
                  ori          s5, s7, -880
                  slli         t4, t4, 9
                  sra          t0, t3, a4
                  srl          ra, s11, s4
                  srl          t1, gp, t0
                  sltiu        s9, ra, 417
                  srai         s8, s1, 30
                  auipc        s6, 160705
                  addi         a5, s4, 891
                  sra          s5, s5, s4
                  slli         t2, ra, 19
                  andi         t3, t1, 277
                  auipc        t6, 211898
                  andi         s7, s2, 28
                  slti         s3, zero, -457
                  or           s0, s9, a4
                  sra          gp, a7, a4
                  nop
                  srl          a0, s8, gp
                  sltiu        a2, s6, -1667
                  slti         s11, zero, 171
                  lui          a1, 655000
                  slti         s11, ra, 23
                  ori          a7, t0, 930
                  sltiu        sp, a5, -1912
                  sub          a1, t2, gp
                  srli         s2, t4, 5
                  srl          s2, s4, s11
                  sra          s6, s2, s1
                  slti         s11, gp, -1308
                  andi         t1, s11, -1355
                  srai         t1, t5, 29
                  lui          t1, 965011
                  sub          gp, t1, a3
                  slti         gp, s9, -494
                  srai         t3, s0, 25
                  srl          s7, gp, s4
                  addi         a7, t1, 1132
                  srli         t3, a1, 0
                  lui          s2, 987829
                  ori          a7, t1, -701
                  srai         s10, s5, 16
                  srai         s6, ra, 23
                  sll          a2, t5, s4
                  srl          s2, ra, t2
                  srli         s11, a6, 6
                  auipc        s11, 509512
                  xor          ra, zero, a7
                  addi         s5, a6, -1112
                  or           s11, t6, s1
                  lui          sp, 802775
                  andi         a5, sp, 1290
                  slti         a7, a0, 1670
                  srl          ra, a3, t2
                  add          t4, s10, t0
                  andi         zero, gp, 1561
                  srli         s6, t5, 15
                  xor          t0, s7, sp
                  ori          a0, s8, 309
                  sll          s7, s6, tp
                  slli         t6, t2, 3
                  ori          a6, a2, 1552
                  srl          t5, t1, a1
                  auipc        s9, 412214
                  sra          t6, t2, t0
                  addi         s3, s11, -675
                  xor          gp, s9, s0
                  sll          t2, tp, t3
                  and          s9, s9, ra
                  auipc        t2, 714823
                  and          a1, s7, a6
                  lui          s5, 196757
                  sll          t5, a2, ra
                  sltiu        a4, t2, -1945
                  and          t2, t1, a7
                  srl          a6, s4, t2
                  and          gp, s9, ra
                  xor          a6, t5, s6
                  sra          s3, s6, s0
                  srai         s7, a0, 2
                  xor          sp, s4, s5
                  ori          s9, a2, 51
                  srl          s8, t5, a2
                  or           s7, s7, s6
                  srli         s9, t2, 11
                  ori          s4, a4, 79
                  and          t3, s9, s1
                  sltu         gp, s9, a5
                  lui          a6, 840092
                  sub          t6, s10, a4
                  nop
                  slli         a1, zero, 31
                  or           s9, t1, t1
                  sll          s4, s3, s5
                  and          t6, a1, t0
                  sra          t4, a3, a2
                  slli         s0, s9, 16
                  sll          t3, s3, t5
                  srli         a6, s10, 27
                  and          s11, sp, s7
                  sra          s10, t3, s6
                  xor          s11, a6, t3
                  sll          t3, s0, gp
                  sltiu        s3, a2, -419
                  xor          t6, gp, gp
                  sltiu        t0, t5, 150
                  or           gp, a3, a3
                  sltu         t1, s0, a0
                  and          s2, sp, s8
                  srli         t2, a4, 12
                  slt          s5, s8, t2
                  lui          s5, 693510
                  lui          zero, 803332
                  slli         s8, s9, 21
                  sltu         t1, s8, a2
                  slli         s11, a0, 14
                  srai         t0, s4, 16
                  lui          zero, 726800
                  auipc        s3, 128346
                  or           t6, a5, a6
                  sub          a2, s1, t6
                  slli         zero, s5, 2
                  sll          s9, a3, gp
                  and          a5, s8, a0
                  srai         t5, s6, 6
                  lui          s0, 754681
                  lui          a2, 77464
                  nop
                  and          s4, zero, t0
                  sltu         s6, s11, a1
                  andi         s4, t2, 1772
                  auipc        a7, 505203
                  srai         ra, ra, 7
                  and          t5, a0, t4
                  slti         a7, t3, 1671
                  srli         s5, zero, 17
                  ori          a7, tp, -1770
                  slti         s5, ra, -131
                  addi         t4, zero, 1433
                  sll          s9, s4, a5
                  srai         sp, s5, 13
                  srl          a6, s1, sp
                  slt          s2, t0, s1
                  sltiu        t0, t1, 1694
                  sltu         a2, a2, s11
                  ori          s11, a5, -357
                  or           a5, a2, s2
                  sra          t0, s2, a4
                  slt          t1, s10, s6
                  lui          a7, 972662
                  sub          s2, s4, t0
                  andi         a4, ra, -77
                  nop
                  andi         s11, s5, -1055
                  sltu         s8, s8, t4
                  slti         t5, t0, 1958
                  slli         a7, s4, 7
                  sra          t2, s6, s4
                  auipc        s9, 890443
                  slti         s10, a3, -1996
                  srli         s8, s8, 27
                  slt          s0, s1, s6
                  slt          sp, t2, t5
                  sub          a1, s6, sp
                  sll          s10, t1, s3
                  sub          a7, s1, t4
                  ori          gp, s11, 522
                  auipc        a0, 505502
                  or           s8, a6, sp
                  addi         t1, t6, -1356
                  srli         a5, s5, 13
                  lui          s3, 753662
                  srl          s4, s9, t0
                  and          s7, s5, s11
                  and          t2, s9, sp
                  slti         ra, t3, 1305
                  sll          a6, s7, a5
                  xori         s5, t1, -1537
                  srl          a7, t6, a5
                  xori         s11, a4, -741
                  slti         s11, gp, 672
                  srai         t3, gp, 1
                  xori         ra, ra, 1065
                  sll          t0, tp, tp
                  ori          sp, s3, -849
                  srai         a4, s11, 10
                  sub          gp, s6, a7
                  sltiu        t6, t5, 412
                  srl          s10, t1, a0
                  sltu         s7, s0, gp
                  andi         s8, s3, 920
                  slti         s3, s4, 758
                  addi         s7, s11, 1612
                  auipc        a2, 123063
                  sltiu        zero, ra, -1143
                  and          t1, t5, t5
                  slt          a2, s3, a5
                  srli         t5, t1, 13
                  srl          gp, s0, t3
                  srai         t4, s3, 3
                  lui          t5, 579206
                  slti         t5, s2, -1707
                  srli         a2, t5, 21
                  nop
                  srai         s4, s10, 13
                  sub          a2, s0, s1
                  slt          s5, s8, t0
                  sub          t2, s8, a1
                  srl          s0, a1, a0
                  sub          t6, tp, t6
                  addi         t0, t3, 57
                  or           s3, s4, a2
                  slti         a7, a5, -1159
                  slti         gp, t4, -1872
                  auipc        t1, 610901
                  nop
                  andi         s6, a6, 1283
                  sll          s3, s10, a0
                  ori          s11, t2, -657
                  sltiu        a0, a3, -1892
                  auipc        a5, 676987
                  sra          a6, a2, a0
                  sub          a7, s8, s7
                  lui          a7, 54036
                  sll          s9, t4, t2
                  srli         a5, s5, 29
                  srai         t1, s9, 26
                  lui          s3, 100684
                  srl          ra, t0, a3
                  srli         s3, a6, 17
                  sltu         a6, zero, zero
                  xor          s5, a6, t0
                  xori         a2, ra, 753
                  ori          t6, s3, -481
                  slt          s10, zero, ra
                  addi         s9, a5, -1961
                  or           gp, s6, a4
                  xori         a4, a1, -1593
                  srai         s2, a6, 20
                  slli         t1, t5, 4
                  xor          ra, a1, a3
                  auipc        a1, 295122
                  and          ra, s3, s6
                  sltu         t2, zero, s4
                  slti         t1, s1, -2005
                  srl          sp, t5, s8
                  sra          zero, a4, a3
                  sub          gp, a1, a2
                  andi         ra, gp, 110
                  nop
                  addi         t4, a5, -343
                  nop
                  srai         s4, s7, 1
                  and          s10, s6, t4
                  xori         t5, a3, -888
                  sltiu        s0, a3, 452
                  or           ra, s8, s3
                  ori          s10, sp, -1300
                  or           t6, a5, t1
                  xor          t1, a2, t3
                  and          a4, s1, gp
                  sltu         t1, zero, a4
                  or           a6, a7, ra
                  srai         t0, t4, 25
                  add          s11, s8, tp
                  andi         s9, s10, 1685
                  sltu         a0, s1, s4
                  addi         s4, s8, -1436
                  sltiu        zero, gp, 1144
                  ori          s0, zero, -348
                  and          s10, a1, t0
                  ori          t2, s10, 406
                  sltiu        s0, s1, 858
                  srl          s11, tp, s5
                  andi         t5, tp, 163
                  sra          ra, a1, a2
                  slti         a2, s6, 1992
                  lui          zero, 337424
                  srli         a0, gp, 24
                  or           t0, s2, a4
                  sltiu        s0, s6, 1181
                  addi         a6, s11, 228
                  srl          t1, t4, s8
                  srai         a2, ra, 13
                  srai         t1, a1, 8
                  ori          zero, s1, -1357
                  or           a6, s5, a3
                  sub          gp, t6, s0
                  sub          ra, s2, t5
                  andi         gp, a7, 1553
                  srli         gp, a2, 21
                  slli         s5, sp, 30
                  auipc        a6, 774739
                  and          a4, s3, t3
                  lui          zero, 212775
                  sll          a7, s1, s11
                  srl          t4, t5, s3
                  lui          gp, 458052
                  ori          s5, a6, 1406
                  auipc        a5, 584330
                  slt          a2, s0, a5
                  sra          t1, sp, a6
                  sll          a4, t3, s5
                  srl          t1, s5, s10
                  ori          a1, sp, -1687
                  srai         t1, s9, 10
                  sll          t6, t3, gp
                  auipc        a7, 443152
                  xor          t6, t4, a4
                  sltiu        zero, s9, 75
                  add          a1, s5, a4
                  slt          t0, t6, tp
                  slli         a0, s3, 5
                  srl          s2, gp, a1
                  or           a1, a1, a7
                  nop
                  sltu         gp, t5, t0
                  or           s11, t3, s7
                  sra          t3, gp, a0
                  andi         sp, gp, -1429
                  slli         s5, s3, 17
                  nop
                  sub          a0, a3, s6
                  sll          sp, sp, sp
                  slt          s4, s10, s3
                  slt          t2, t0, t2
                  sltu         s4, s6, t6
                  slli         sp, s0, 25
                  sltiu        a6, a0, -694
                  xor          zero, a3, s8
                  auipc        ra, 834049
                  xori         t6, s8, -1283
                  sltu         t4, a3, s7
                  auipc        a7, 783359
                  and          gp, a5, zero
                  slt          s11, t3, t4
                  and          a1, s0, s5
                  sll          sp, a4, s6
                  slli         s2, s10, 24
                  andi         a5, a3, 546
                  lui          s8, 341777
                  xori         t5, a2, -1075
                  slti         s5, s4, 643
                  sltu         t2, s1, s1
                  xor          ra, s8, s5
                  slli         t4, a4, 13
                  andi         a1, a2, 1950
                  or           a0, s3, gp
                  andi         zero, gp, 1887
                  srl          t5, s8, t4
                  auipc        s11, 815190
                  sltiu        a4, tp, -1190
                  addi         t3, zero, -950
                  addi         s5, t2, -913
                  slt          a1, s10, s6
                  sltiu        s3, s10, -267
                  sub          a2, a3, s7
                  lui          s4, 190670
                  lui          s6, 393308
                  lui          a2, 572981
                  sltiu        a4, a6, 1725
                  auipc        t4, 289658
                  sll          t6, s7, s5
                  sltu         a7, a7, s9
                  slt          t3, t3, t4
                  add          t3, t4, a3
                  slli         a4, s9, 27
                  add          a2, zero, t1
                  sltiu        t5, s6, -1541
                  auipc        t4, 152632
                  slti         ra, tp, -1644
                  slti         t2, t2, -1306
                  sll          s6, s10, a5
                  or           a6, s2, s5
                  slli         a7, a6, 14
                  and          t0, s3, s2
                  srai         a1, t2, 15
                  auipc        s6, 272974
                  nop
                  slt          t4, gp, t2
                  sltu         a4, gp, a3
                  sltiu        t1, ra, 671
                  srli         t6, a7, 28
                  or           s0, a4, a3
                  xor          sp, t3, s0
                  sltu         s0, s1, t5
                  slt          a1, s10, t6
                  nop
                  sra          t0, s6, a4
                  ori          s11, a4, 341
                  andi         s2, a1, -66
                  slti         t4, tp, 1699
                  slti         s0, t0, -903
                  srli         s10, a3, 20
                  lui          s3, 544399
                  nop
                  auipc        s4, 112797
                  xor          s10, t1, gp
                  slli         s5, t5, 13
                  slli         t0, t0, 6
                  sll          t6, t5, ra
                  srli         sp, s9, 27
                  slli         a1, s10, 16
                  sltu         s3, s6, s10
                  slti         s4, s11, 1436
                  sra          a6, s8, s9
                  sltu         t6, s9, s9
                  add          ra, s11, t0
                  sll          s11, s1, s1
                  lui          a5, 239223
                  andi         s11, a2, -893
                  srli         s2, tp, 19
                  and          s8, s5, sp
                  or           s0, s3, s2
                  nop
                  ori          t2, a1, -1644
                  xori         a6, zero, -922
                  and          ra, s10, s3
                  sll          s10, s6, t0
                  nop
                  lui          s2, 194629
                  ori          gp, zero, 1779
                  sltiu        t1, s0, 546
                  srai         a2, tp, 2
                  srli         t2, a5, 5
                  srli         a4, ra, 15
                  slli         s0, s4, 25
                  srli         a7, sp, 23
                  srai         s7, a7, 3
                  xori         a6, tp, -30
                  slti         t5, a0, -298
                  slli         a7, sp, 31
                  slti         s11, tp, -1768
                  sub          s5, s8, s3
                  sltu         s11, a5, a1
                  nop
                  add          a4, t4, t4
                  add          t1, a4, s9
                  xor          t1, s8, t0
                  and          t1, t4, t5
                  sltu         a6, a3, t0
                  sltu         a6, t4, ra
                  sra          a2, t0, a4
                  add          sp, t0, s2
                  andi         t0, t6, 649
                  addi         s0, s5, 1372
                  ori          a7, s1, 1735
                  auipc        a2, 720643
                  sub          a4, s4, sp
                  nop
                  lui          gp, 829852
                  srai         t6, s4, 2
                  andi         t5, s10, -1847
                  add          s5, s9, s0
                  nop
                  srl          s6, a1, a4
                  ori          zero, zero, 1166
                  slti         s0, s11, 1840
                  slli         t0, s8, 30
                  sra          gp, a1, s2
                  sltu         s0, s7, a5
                  addi         s4, s1, -241
                  nop
                  lui          t3, 849016
                  ori          t6, a6, -1208
                  slt          t3, s11, zero
                  slti         a6, t4, -1925
                  srl          t1, a1, a6
                  sltu         s6, a7, t6
                  xor          s2, ra, a1
                  ori          t6, t5, 969
                  sltiu        sp, s0, 1815
                  sra          s4, s5, s0
                  slti         t5, s6, 1161
                  slli         s2, s5, 4
                  slti         t0, t6, -623
                  srai         s4, s11, 22
                  lui          t3, 729399
                  sra          a1, a6, a1
                  srli         s6, s4, 20
                  slli         s6, t0, 19
                  sltiu        a1, s0, -1140
                  srli         t0, s5, 24
                  ori          t3, a4, 1473
                  xor          s10, t1, s0
                  lui          t1, 767471
                  srai         s11, t6, 22
                  sll          s9, t6, s5
                  or           a2, s1, t2
                  srai         a5, s3, 0
                  slli         a1, t2, 8
                  sltu         a4, s8, s4
                  sll          s3, a5, a5
                  slti         t0, s9, 2008
                  sub          s7, s11, a5
                  srli         gp, s0, 20
                  sll          t0, s9, s9
                  slt          s2, s8, t2
                  or           s2, t2, zero
                  slt          t6, a0, a1
                  sltiu        t1, t1, -1087
                  addi         s3, a1, 2040
                  xori         s5, s4, 197
                  lui          t6, 110414
                  auipc        a5, 759205
                  slt          a4, a1, gp
                  slli         s9, s0, 6
                  sub          s4, s9, ra
                  sub          t5, s5, t4
                  sltiu        t4, t3, 103
                  ori          s10, s8, -1858
                  or           s11, s11, a2
                  srli         s0, s6, 14
                  add          s10, s11, tp
                  nop
                  sll          ra, s11, t4
                  slt          s11, sp, s3
                  or           a6, sp, s0
                  or           zero, t0, s8
                  nop
                  sll          s2, t2, ra
                  xori         s5, gp, 1630
                  lui          a1, 10826
                  srli         gp, s4, 9
                  ori          t4, a5, -1396
                  nop
                  srl          gp, s10, s2
                  slt          s9, t2, t4
                  addi         a5, s11, 406
                  and          t6, a6, t1
                  sltiu        gp, gp, -808
                  nop
                  srl          a5, a7, t5
                  addi         gp, a5, -694
                  addi         a6, a3, 470
                  srai         a5, s8, 8
                  sub          gp, a3, a5
                  sub          a5, s5, a2
                  sltu         s7, a6, t6
                  sub          zero, a3, s4
                  addi         a6, s4, -1879
                  slli         s10, a3, 10
                  or           ra, a2, sp
                  slli         s9, s8, 0
                  or           a5, t5, s9
                  sra          s7, t6, a5
                  addi         s7, t4, -1450
                  slti         s5, s8, 614
                  andi         s5, a0, 1003
                  sltu         t3, sp, sp
                  sltu         s3, a5, s8
                  and          t0, s4, gp
                  srli         s2, gp, 25
                  slli         a2, tp, 21
                  xor          s4, s1, s10
                  auipc        t4, 940885
                  sra          a5, s5, t6
                  slli         s2, t1, 16
                  sltiu        zero, s9, 1995
                  sltiu        s10, s1, 1244
                  lui          s2, 1036957
                  srli         s6, t3, 10
                  lui          a6, 695928
                  sll          s5, t2, s7
                  add          a0, s1, a3
                  sll          s9, a7, a3
                  andi         s10, t4, -789
                  or           s9, s7, a5
                  srl          t3, zero, a2
                  slt          a1, s1, s8
                  slt          t6, a4, s11
                  slli         t6, s5, 3
                  slt          t1, sp, s6
                  or           s2, s1, s5
                  sra          gp, ra, s0
                  srai         t2, a7, 4
                  addi         t0, a6, -1661
                  sub          t5, t2, t3
                  slti         a7, t3, -1363
                  slt          s10, sp, a3
                  lui          s7, 982510
                  sra          t1, t2, sp
                  sub          a1, s8, s7
                  sub          a4, zero, s7
                  slli         a5, t3, 4
                  xor          s4, t6, gp
                  andi         s11, zero, 423
                  sltu         s9, sp, a2
                  sub          a4, t3, s4
                  slti         sp, a5, 1552
                  xori         t5, s7, 437
                  lui          a6, 318662
                  nop
                  sll          s3, t4, s0
                  srli         a6, t0, 21
                  sltiu        a4, a6, -141
                  addi         sp, a6, 381
                  xor          s10, a4, t0
                  or           sp, s7, a7
                  add          s11, sp, t0
                  auipc        t3, 691426
                  andi         t3, s11, -435
                  slt          s3, s7, s10
                  slti         t4, a4, -1630
                  xor          gp, a5, a2
                  lui          a7, 343496
                  andi         a6, t5, 372
                  sltiu        a5, s8, -569
                  sll          s5, s9, t3
                  ori          t2, s10, 1327
                  auipc        t1, 12868
                  sltiu        t3, a3, -1090
                  srl          s4, ra, t5
                  slt          s6, t0, ra
                  sra          a1, s3, ra
                  sub          t3, tp, t2
                  or           s4, a7, a7
                  or           a0, t4, a2
                  sltiu        s5, s5, 1601
                  ori          s0, t0, 927
                  xori         zero, s11, -1162
                  or           a2, a7, sp
                  srai         s7, s10, 15
                  slli         s9, t2, 23
                  srai         gp, s9, 11
                  slt          t2, a5, s1
                  slt          gp, a0, sp
                  sll          s6, t1, s6
                  sll          a6, a3, tp
                  srai         a5, s3, 9
                  and          a2, a5, s1
                  auipc        s7, 926036
                  sltu         s10, t1, a1
                  sltiu        t1, s10, 904
                  sltu         t6, s8, ra
                  ori          s8, a4, 1853
                  add          s6, t2, s3
                  sra          a6, t4, t4
                  sub          t4, a7, s1
                  sltu         t1, t6, t6
                  auipc        sp, 411943
                  add          s11, t1, s4
                  srai         s7, s0, 30
                  slli         s2, tp, 24
                  sll          a0, t1, s5
                  slti         a0, t3, -1410
                  slti         s0, tp, 299
                  srai         t1, t4, 4
                  or           a5, s2, s11
                  sltu         a6, a6, s9
                  auipc        t1, 427453
                  ori          s2, ra, 1665
                  slti         sp, a7, 1245
                  ori          a6, s4, 43
                  srl          s9, s9, s5
                  nop
                  nop
                  sltu         s6, s0, a4
                  auipc        t0, 478349
                  xor          sp, zero, s0
                  srl          s8, t3, tp
                  nop
                  andi         s6, s5, 1860
                  auipc        t3, 581568
                  ori          s9, t0, 2027
                  add          s9, a4, s6
                  auipc        s10, 44377
                  slli         s7, s4, 28
                  slti         zero, a2, -1126
                  auipc        s0, 59938
                  srli         a5, t1, 12
                  xor          zero, s7, a4
                  auipc        s0, 42618
                  lui          s11, 757471
                  slti         a2, a4, -1234
                  sltiu        s7, t1, 571
                  nop
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           t4, 0x80000000
                  li           ra, 0x0
                  li           gp, 0x24e482e3
                  li           s9, 0xa7d0e646
                  li           s3, 0xffffffff
                  li           s5, 0x0
                  li           a4, 0x0
                  li           t1, 0x0
                  li           a7, 0x581d2522
                  lui          s5, 332052
                  nop
                  add          s9, gp, a7
                  add          gp, s2, t4
                  add          a4, gp, s3
                  sub          a4, ra, s9
                  auipc        s5, 586163
                  lui          a4, 504849
                  addi         gp, t4, -1163
                  nop
                  add          gp, a4, t1
                  nop
                  addi         a7, s2, 141
                  lui          s9, 629954
                  add          t4, ra, s3
                  sub          t4, s3, s5
                  sub          t1, a7, t1
                  nop
                  addi         t1, t4, -2014
                  auipc        ra, 138964
                  nop
                  add          a7, a7, s9
                  add          s5, a7, s9
                  add          gp, a4, a4 #end riscv_int_numeric_corner_stream_4
                  xori         ra, a5, 1696
                  or           s3, s6, a3
                  nop
                  sll          t3, s4, a0
                  sub          t0, s3, a6
                  or           a4, s9, s2
                  sltu         s0, t4, a0
                  srli         s3, s1, 9
                  srli         gp, gp, 8
                  add          a4, a2, a4
                  and          a6, t6, t5
                  slti         s9, zero, 52
                  sltiu        s9, sp, 214
                  sltiu        s9, s7, 1726
                  srli         s4, sp, 23
                  slti         s9, t3, 1241
                  addi         s8, s5, -1874
                  auipc        a1, 773808
                  addi         a4, gp, 1610
                  addi         s11, gp, -598
                  or           s6, t5, s6
                  sra          sp, s0, ra
                  nop
                  xor          s6, gp, a2
                  sra          t4, s6, a3
                  add          gp, s4, s3
                  sltiu        t6, t1, -121
                  slt          a4, s9, a7
                  sub          t6, s5, a6
                  sltiu        a2, ra, 477
                  addi         a2, t1, -641
                  srli         t5, a7, 19
                  slti         s9, s0, -662
                  sra          t0, s10, tp
                  add          t0, s7, s7
                  srl          a1, s9, t3
                  sltu         sp, gp, t1
                  nop
                  xor          s2, s8, t5
                  xor          t3, a6, a5
                  xori         a1, t4, 1590
                  sub          s8, s3, zero
                  slti         sp, a6, -599
                  sub          s9, s9, ra
                  lui          gp, 586216
                  nop
                  srl          s6, s1, a0
                  auipc        s10, 306102
                  slli         a0, t6, 16
                  and          t5, s1, t4
                  sra          t2, t1, ra
                  slt          t5, t0, t4
                  xor          a7, t0, a7
                  srl          a2, zero, a4
                  sll          t4, a0, sp
                  slli         s0, s3, 15
                  slt          s8, t0, a0
                  andi         a4, sp, 1258
                  xor          s3, a2, t0
                  add          t1, a5, a3
                  slli         s11, a0, 2
                  addi         a2, gp, -1830
                  sltiu        t4, t2, -151
                  sra          a0, a0, s11
                  addi         a6, a0, -411
                  slti         s11, a2, -1175
                  srl          s0, s10, a5
                  xori         s0, t3, -160
                  sll          t6, t4, ra
                  srli         t6, t1, 24
                  andi         a4, a0, -535
                  lui          a2, 522772
                  sltiu        a5, t0, 589
                  sra          t5, tp, t2
                  sub          s6, t4, a3
                  add          t1, s10, s8
                  add          gp, a0, s7
                  nop
                  nop
                  slli         s7, zero, 16
                  or           t3, a4, t3
                  srli         gp, sp, 1
                  auipc        ra, 455614
                  srl          s6, s1, s10
                  srai         s2, s1, 25
                  sll          a0, a6, a5
                  xor          s5, s10, t1
                  slt          t3, zero, t2
                  slt          s5, s10, s10
                  ori          a2, sp, -1095
                  ori          s10, gp, -1086
                  sltu         a4, gp, t3
                  lui          ra, 299460
                  sltiu        t3, s0, -877
                  xor          s10, s2, a3
                  sub          t4, a2, s7
                  sub          s5, s8, s7
                  add          t2, sp, t1
                  and          a6, sp, zero
                  nop
                  sltu         a6, t2, s1
                  sub          s7, a2, a7
                  slt          s10, t2, a5
                  sltu         gp, t1, t3
                  and          s7, s11, a3
                  xor          s10, a6, t6
                  andi         s9, s9, -372
                  or           gp, gp, s6
                  nop
                  ori          t5, a4, -18
                  auipc        s9, 1014685
                  and          a2, a6, sp
                  addi         a4, a3, 990
                  sltu         t1, a4, s8
                  srl          t3, a2, s10
                  srli         gp, a1, 3
                  and          s4, s3, s2
                  sltu         s2, s11, s6
                  srl          s2, sp, t2
                  or           s10, s9, s3
                  srai         s10, t1, 7
                  nop
                  nop
                  sltu         t6, s0, t1
                  xor          zero, s0, a5
                  ori          zero, t2, 1705
                  lui          t3, 13871
                  srai         a1, s5, 8
                  ori          a0, a2, -800
                  lui          s3, 584071
                  nop
                  srai         s0, t1, 22
                  srai         t5, s10, 28
                  sub          t2, t4, s7
                  sub          ra, s2, a2
                  srai         s10, s6, 20
                  xor          s5, s8, s7
                  sub          s7, a7, zero
                  slti         t3, a4, 1265
                  add          s9, zero, s1
                  slli         a5, t0, 31
                  addi         s2, t1, 1764
                  sra          t1, sp, t6
                  slli         t0, ra, 17
                  xor          s3, a7, a2
                  xori         s8, t2, 134
                  xori         t3, zero, -850
                  addi         s2, s3, -221
                  andi         s0, t0, 1564
                  slli         a6, a3, 9
                  auipc        a6, 844494
                  or           a2, s9, a7
                  or           t0, t5, t2
                  addi         t3, t3, -1368
                  ori          a1, s10, 8
                  sub          zero, t5, t1
                  nop
                  add          a4, s10, s3
                  auipc        t6, 732571
                  addi         s0, ra, -64
                  or           a5, a6, a1
                  sra          s11, t5, sp
                  sub          t3, a0, t3
                  xori         t4, s8, 748
                  srai         s6, a1, 7
                  sra          gp, a7, t2
                  add          t2, s11, zero
                  addi         a7, s0, -512
                  sub          s7, a5, tp
                  xor          s0, zero, a4
                  srl          t4, t0, t4
                  srl          t6, a3, t2
                  srli         s7, s1, 13
                  or           s4, tp, t6
                  and          s10, t2, s6
                  slt          a0, a4, a2
                  srl          zero, t4, s0
                  auipc        t6, 300935
                  slti         s0, a0, 395
                  andi         a1, a1, 644
                  add          ra, ra, a3
                  sll          s8, t6, a3
                  auipc        a0, 584682
                  addi         t5, a1, 1100
                  sltu         a5, s10, t6
                  slti         s8, gp, -233
                  sltu         a6, tp, a3
                  slti         t4, t2, -1469
                  nop
                  nop
                  sltu         s8, a7, s11
                  lui          a1, 155594
                  add          gp, a0, s11
                  auipc        a4, 9873
                  ori          t4, s1, 1742
                  srli         gp, s7, 16
                  addi         t3, zero, -1279
                  sltiu        s4, s5, -1967
                  addi         t2, t6, 713
                  srli         a5, t4, 16
                  sll          t1, s6, s8
                  add          t0, t1, s5
                  andi         a2, s6, -1896
                  sub          s11, t4, s7
                  auipc        t6, 781279
                  addi         sp, a6, -767
                  sltiu        a1, t5, 1552
                  xor          s10, s0, t3
                  lui          gp, 656510
                  sra          s5, t2, s4
                  ori          a6, t0, -1318
                  sltu         t3, s5, ra
                  or           s8, s4, t3
                  xori         t1, s1, -1093
                  sra          s9, tp, s5
                  slti         t5, a1, -196
                  sltu         a1, s5, a0
                  sub          zero, s2, ra
                  srli         s5, a1, 9
                  auipc        s9, 706966
                  andi         t4, a5, 1682
                  sltu         a7, s2, t1
                  or           t2, s11, t6
                  auipc        s2, 643881
                  sub          gp, t5, s10
                  sra          a6, a5, s8
                  srli         s3, s5, 31
                  addi         s11, a5, 1817
                  slt          a7, zero, t6
                  sll          s9, s7, t5
                  sll          t5, a5, t2
                  and          s8, t4, s1
                  slti         ra, s0, -1514
                  add          a0, s8, s2
                  lui          s7, 177156
                  nop
                  srai         t4, zero, 6
                  auipc        a6, 776502
                  addi         s8, s9, 738
                  sra          a7, s6, a7
                  sra          a0, s3, s2
                  xor          zero, s3, s10
                  slli         t1, t4, 17
                  xori         t3, s9, 932
                  slli         t4, t1, 21
                  add          s6, s6, t3
                  sll          s0, a6, s9
                  andi         a0, a3, -637
                  nop
                  sll          s7, sp, t5
                  andi         a5, s3, -885
                  slli         t2, s0, 20
                  sll          s10, ra, sp
                  slti         a7, s10, -1606
                  addi         a6, s7, 1383
                  xori         s6, t1, -1352
                  andi         s9, tp, 1263
                  and          s7, tp, a4
                  sll          s11, sp, ra
                  slli         s5, sp, 12
                  xori         s2, zero, -349
                  and          s7, t2, a1
                  slt          t0, s2, s9
                  sltu         s6, s0, a6
                  slti         t2, s1, -1047
                  add          a2, t2, t6
                  xori         s11, a3, 1063
                  and          s5, s6, a4
                  slti         a2, s10, 953
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s5, 0xffffffff
                  li           s9, 0xb5deb5d3
                  li           s10, 0x0
                  li           t4, 0xffffffff
                  li           s11, 0x2e9c96be
                  li           t2, 0xffeedbba
                  li           s4, 0x80000000
                  li           a6, 0x1a8164f9
                  li           t6, 0x0
                  nop
                  nop
                  add          s5, a6, t4
                  sub          t6, t0, s5
                  sub          t4, t0, s10
                  addi         s4, t2, -618
                  add          s11, t2, s11
                  nop
                  add          t2, s5, t6
                  add          t6, s4, t6
                  addi         t6, t2, 1351
                  nop
                  lui          t6, 190845
                  add          a6, t2, s11
                  addi         a6, s9, -321
                  nop
                  lui          s9, 927222
                  add          t4, s11, t0
                  addi         s9, t2, 1416
                  auipc        s10, 127673 #end riscv_int_numeric_corner_stream_18
                  xor          s0, s0, s5
                  xor          t5, s0, t1
                  srai         zero, sp, 20
                  andi         a2, s10, -727
                  sub          a6, s4, t2
                  sub          t6, s9, a6
                  srai         a5, s7, 25
                  sra          a7, t2, a7
                  srli         sp, s3, 23
                  slli         a6, zero, 15
                  and          t1, s6, t0
                  or           s4, t4, a0
                  slt          a2, a5, t0
                  srai         s2, sp, 27
                  auipc        s5, 565810
                  slti         s2, s10, -1345
                  sltiu        gp, t6, 1068
                  sltiu        s2, a0, 141
                  sltu         gp, a1, a1
                  srl          a6, a6, t3
                  sra          a0, s5, t1
                  sltu         s4, t5, s1
                  nop
                  andi         a5, a7, -1200
                  lui          s7, 115176
                  sltiu        t5, s2, 15
                  nop
                  srai         t2, s10, 26
                  sltiu        a7, s10, 1273
                  add          s3, s7, t2
                  slti         a1, tp, -1678
                  sll          a5, t2, s7
                  sltiu        gp, t1, -124
                  xori         s5, s2, -616
                  add          a7, t4, s6
                  slt          a4, sp, s11
                  slt          t1, s2, a5
                  or           a7, t6, s3
                  addi         t2, a6, 580
                  or           s11, zero, gp
                  xori         a1, t5, -1012
                  or           t4, s2, tp
                  srai         ra, s1, 17
                  and          t4, t2, s11
                  xori         a0, t5, 532
                  ori          a4, gp, 263
                  sra          s7, t1, t1
                  sra          s11, a5, s9
                  srl          s5, t1, t3
                  auipc        t1, 536209
                  addi         a4, s0, 759
                  add          s0, zero, s1
                  srl          s2, t2, t3
                  sra          s6, a5, a3
                  xor          t3, a6, a5
                  sltiu        a6, ra, 1066
                  xor          t5, gp, t1
                  addi         gp, s3, 1883
                  ori          gp, a2, -1143
                  ori          a1, t5, -1806
                  slti         t6, s6, 1293
                  lui          s7, 225048
                  srl          a0, a2, a2
                  sra          s7, a7, s5
                  sll          s7, s5, s2
                  srl          s5, a7, s0
                  and          s6, s3, s10
                  srl          t6, s3, ra
                  srli         t4, s10, 2
                  add          s8, a5, s2
                  slli         s3, s7, 29
                  andi         t6, s2, -1943
                  srli         ra, s7, 12
                  sra          sp, t4, s8
                  srai         a6, a3, 11
                  slti         t4, s10, 1786
                  ori          s3, s9, -69
                  srl          t1, tp, t2
                  srli         t6, s0, 19
                  xor          s11, a1, a5
                  ori          s8, s2, -621
                  srai         t4, s3, 28
                  slti         t6, gp, 1095
                  slti         s11, t3, -588
                  sra          zero, t0, sp
                  slli         s6, t5, 15
                  slt          s8, s10, s1
                  or           a6, t1, t1
                  sra          s10, s4, s6
                  srli         s7, zero, 21
                  srl          s11, s9, sp
                  ori          t6, a4, -19
                  auipc        s8, 211405
                  srl          t5, s11, s11
                  sub          a7, t0, s5
                  ori          s7, t5, -1612
                  sltu         s5, s8, tp
                  srli         ra, t0, 14
                  srai         t4, t0, 7
                  ori          a4, s11, 611
                  lui          ra, 563756
                  srli         a2, s3, 25
                  or           s5, gp, a0
                  andi         t3, sp, -1749
                  sra          s11, s2, s3
                  lui          a1, 830284
                  sltiu        a5, a6, -1713
                  nop
                  xor          t5, t3, a4
                  andi         a5, s5, 1175
                  sltiu        t2, s3, -1270
                  or           a0, s9, t6
                  add          s6, s5, a1
                  add          t5, tp, a4
                  lui          s8, 1040663
                  addi         s9, s8, -283
                  xor          a1, t4, tp
                  srai         a6, s6, 30
                  srli         a1, s6, 20
                  add          gp, s5, a2
                  ori          a2, a3, 550
                  xor          s9, t3, s8
                  lui          a5, 451441
                  nop
                  and          s9, s2, s0
                  slli         s0, zero, 24
                  andi         s6, sp, -1150
                  slt          zero, t1, s4
                  srli         s2, t5, 2
                  slt          s9, s1, t3
                  ori          s11, a3, -956
                  or           a5, a4, s7
                  auipc        s7, 101691
                  or           s5, a2, s9
                  and          s8, zero, t4
                  ori          a5, s0, -1949
                  slti         s5, gp, -43
                  sll          s6, a6, s8
                  auipc        a1, 854198
                  srli         a0, s5, 16
                  srai         a4, s2, 3
                  auipc        t3, 869937
                  srl          a2, a1, s0
                  xori         a7, t3, -104
                  xori         s7, a7, 1540
                  slti         s2, s5, 145
                  lui          s2, 947208
                  sll          t0, a6, s9
                  auipc        s6, 542998
                  ori          s4, s3, 143
                  addi         a7, t4, 1132
                  sra          t3, s7, a7
                  sltu         t4, s11, ra
                  and          ra, a2, sp
                  srl          s2, gp, s11
                  sltu         s6, a0, s3
                  srli         zero, a1, 30
                  slti         a7, s0, 148
                  sub          ra, a0, t1
                  xor          t2, t5, a3
                  and          s2, t5, t5
                  ori          t0, a2, 394
                  slt          a5, s5, a1
                  sra          t4, t0, tp
                  and          zero, s10, t3
                  or           t1, a6, a0
                  add          t5, a6, zero
                  sltu         s5, s3, a1
                  and          s10, a3, t4
                  auipc        s8, 697967
                  xori         s3, a4, 1374
                  srl          s2, s7, a0
                  srli         s0, s8, 16
                  ori          t1, a5, -792
                  slt          a6, a4, a0
                  auipc        t3, 399634
                  xori         s3, s5, 1181
                  and          s0, t4, s0
                  andi         t1, s6, 1778
                  sltu         a1, a0, a3
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           a2, 0x0
                  li           s6, 0x0
                  li           s10, 0x0
                  li           a1, 0x0
                  li           s5, 0x0
                  li           a5, 0x80000000
                  li           gp, 0x80000000
                  li           t0, 0x80000000
                  li           s0, 0x0
                  nop
                  addi         t1, t1, 1795
                  auipc        a1, 792103
                  sub          a5, s5, t0
                  addi         s10, s0, 566
                  sub          a5, t1, a2
                  add          s0, s6, a5
                  sub          a1, s6, t1
                  lui          s0, 117281
                  sub          a2, s6, t1
                  auipc        s0, 449116
                  auipc        s6, 325950
                  auipc        gp, 983327
                  addi         s6, s0, -1520
                  sub          s0, t0, s6
                  auipc        a2, 496364
                  auipc        s6, 26423
                  nop
                  add          s0, a2, a1
                  auipc        s10, 473785
                  sub          s10, s10, gp
                  add          a5, t1, s10
                  lui          s6, 559960
                  sub          s5, a5, s6
                  auipc        gp, 1008017
                  add          gp, s5, t0
                  auipc        s10, 448698
                  nop
                  sub          s6, s6, a2
                  add          a2, a5, a5 #end riscv_int_numeric_corner_stream_7
                  sltu         t5, tp, t5
                  auipc        s7, 1046911
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           t1, 0xcbe7352c
                  li           s5, 0x80000000
                  li           t6, 0x354ddc77
                  li           s10, 0x3cca2d37
                  li           t3, 0x0
                  li           s4, 0x0
                  li           s8, 0xffffffff
                  li           t2, 0x1c6383f
                  li           a1, 0xffffffff
                  nop
                  lui          t2, 169081
                  lui          a2, 884308
                  nop
                  sub          s5, s4, t1
                  addi         s4, t1, 716
                  sub          t3, t2, a2
                  auipc        s8, 964515
                  sub          s5, t6, t6
                  sub          a1, s10, a2
                  auipc        s4, 716857
                  add          t3, s10, t2
                  auipc        s10, 999856
                  addi         a1, s10, -1431
                  add          s4, s4, s8
                  sub          s8, t1, s5
                  sub          s8, t2, t1
                  add          a1, s4, a1
                  auipc        s10, 207141
                  add          t1, s8, t3
                  addi         s8, s10, -620
                  nop
                  lui          t2, 865598
                  nop
                  lui          s10, 564871
                  nop #end riscv_int_numeric_corner_stream_9
                  addi         s4, sp, -1963
                  srai         s9, a1, 3
                  sra          zero, a3, s11
                  slt          a1, s11, t0
                  lui          zero, 764617
                  srli         s2, s8, 0
                  srl          s3, a5, s6
                  lui          a6, 232956
                  lui          a2, 176531
                  sltu         sp, s3, t1
                  sra          a0, tp, a0
                  xori         t6, t0, 403
                  add          a2, zero, t5
                  srl          t4, s7, sp
                  addi         s5, t2, -1816
                  srai         s7, s2, 18
                  slti         t6, a3, -614
                  or           t5, a1, s8
                  slli         a0, s4, 11
                  andi         s7, t0, 611
                  lui          a2, 120543
                  slt          gp, t4, a7
                  sra          sp, a5, t2
                  sll          a5, gp, s7
                  srai         t6, s11, 11
                  nop
                  xori         t5, tp, 1951
                  srl          t1, sp, s0
                  and          s11, t5, s1
                  srl          s0, t1, s11
                  andi         s11, s4, -1549
                  auipc        s11, 613981
                  srai         a4, tp, 19
                  and          zero, a0, s5
                  srli         s5, sp, 14
                  sll          gp, zero, t0
                  sra          s11, s11, s10
                  or           zero, s7, ra
                  ori          a6, s10, -1157
                  nop
                  or           a5, a2, a5
                  nop
                  sltu         s5, s4, sp
                  auipc        t0, 547847
                  sra          a5, gp, s11
                  slti         s11, s9, 543
                  sll          s5, gp, s4
                  slt          s6, t6, s0
                  slli         s9, s6, 26
                  srl          s5, s11, t5
                  sra          s7, sp, sp
                  and          t2, a1, a6
                  addi         a7, zero, -488
                  srl          s4, t6, zero
                  srl          s10, a7, s7
                  sll          t4, s6, a5
                  slt          s11, s1, s5
                  auipc        s3, 154388
                  sll          s0, s3, t2
                  xor          s2, s11, t0
                  srli         a7, t4, 27
                  auipc        s10, 8886
                  slti         t5, a1, -433
                  srli         a1, a2, 28
                  sltiu        a7, t4, -1997
                  srli         ra, a7, 25
                  srl          a2, s10, a6
                  or           s4, s0, zero
                  sll          sp, sp, sp
                  nop
                  slt          gp, zero, tp
                  addi         t6, t6, -430
                  xori         s5, a4, 199
                  sub          s0, ra, a6
                  andi         s0, s9, 684
                  nop
                  srai         a2, s0, 14
                  sll          zero, t3, s7
                  xori         sp, a3, 1854
                  xor          s5, gp, s0
                  lui          zero, 403618
                  nop
                  xor          a0, s2, t1
                  srl          s5, s9, s3
                  slli         a6, s8, 31
                  auipc        s2, 142161
                  xor          t3, s2, s8
                  sub          gp, a4, t2
                  addi         s8, s7, 1932
                  addi         ra, tp, 1482
                  xori         s7, tp, 1595
                  slt          t5, s6, t6
                  xor          s11, a3, t3
                  sub          t0, zero, a0
                  andi         s7, t3, 1151
                  xor          s9, a5, s8
                  andi         s3, t2, -972
                  and          t3, a4, t3
                  add          s5, t1, s2
                  xori         a6, a3, 956
                  sra          t2, sp, t4
                  xor          a0, t2, t4
                  xori         a5, s9, -694
                  and          t6, t6, t5
                  ori          s0, sp, -836
                  andi         gp, s10, 1872
                  sltiu        t6, s10, 1239
                  sltiu        zero, a2, 907
                  addi         t4, s2, -1362
                  sub          zero, gp, t5
                  addi         sp, s11, 1856
                  andi         s10, t5, -1502
                  xor          a4, a3, t6
                  andi         t5, s1, -1052
                  sltu         a2, tp, s7
                  lui          s10, 114465
                  srl          t4, a4, s2
                  sub          s0, tp, s8
                  ori          zero, sp, 482
                  xori         s4, t4, 185
                  slli         s2, t6, 28
                  sra          a2, s11, s10
                  addi         s9, gp, 718
                  srli         t1, s7, 1
                  sll          gp, t3, s8
                  addi         ra, zero, -1566
                  xori         t0, a0, 1784
                  slti         ra, ra, -1605
                  add          s3, gp, s6
                  lui          t0, 258244
                  xor          s5, s11, a4
                  slt          s9, t1, t1
                  xor          s5, s0, s1
                  sub          t5, t6, s10
                  add          sp, a4, s7
                  sub          zero, s7, t3
                  slt          a6, a3, sp
                  nop
                  xor          s9, s8, a6
                  andi         s5, a2, -350
                  auipc        s8, 979569
                  sub          s0, sp, s9
                  addi         t0, zero, -1350
                  sltiu        s3, t6, -135
                  or           zero, t5, t0
                  lui          s2, 316587
                  xor          t2, s1, a6
                  nop
                  or           a5, t5, s2
                  srli         s7, t3, 27
                  srli         ra, a4, 7
                  and          s8, t5, a5
                  slti         s3, t6, 1518
                  slli         t4, a7, 28
                  srl          t3, s11, a0
                  slti         s0, t6, 286
                  auipc        ra, 159956
                  xor          a7, t2, t1
                  sra          s0, s4, t0
                  srl          a0, gp, s11
                  auipc        a6, 258776
                  slti         s6, t6, -1001
                  sll          s0, s6, tp
                  addi         s3, t0, -1329
                  srai         s7, a2, 11
                  slti         zero, s10, -431
                  sra          a2, a6, t3
                  xor          s11, t3, tp
                  xor          t5, t5, a0
                  nop
                  andi         t0, a3, 1752
                  add          s7, zero, ra
                  srli         t3, a7, 29
                  nop
                  sra          t0, a7, s5
                  lui          s11, 961453
                  slt          t6, s9, gp
                  srai         a7, a5, 31
                  slti         zero, a5, 908
                  sra          s4, sp, t6
                  sltiu        zero, s1, -1804
                  srli         t2, a7, 11
                  xor          t2, s1, t0
                  sra          s0, t4, a1
                  add          t4, t1, t1
                  srl          t0, s5, tp
                  sra          t3, s5, t6
                  slti         s3, t4, 689
                  slti         a6, s6, -1474
                  auipc        s5, 372810
                  andi         a2, a5, -901
                  or           t0, s11, s0
                  nop
                  sll          a1, s8, s1
                  srl          t0, t5, t3
                  sltiu        t4, s7, -266
                  sltiu        a4, tp, 299
                  xor          t5, t0, s4
                  auipc        t6, 132282
                  and          s6, ra, zero
                  srai         s6, t0, 13
                  slti         t2, a3, 1989
                  sltiu        ra, gp, 52
                  add          t6, s11, s1
                  auipc        s8, 898779
                  srl          gp, a7, a1
                  nop
                  srli         t3, a3, 21
                  xor          a0, a3, ra
                  andi         t2, a6, -579
                  andi         zero, zero, 1671
                  srli         t2, s4, 25
                  xori         a1, ra, -981
                  or           a4, tp, s4
                  slti         s6, a2, 1467
                  sra          s5, s8, t5
                  sltiu        t3, a5, 1127
                  or           zero, s0, t5
                  sra          sp, a5, t0
                  ori          a5, t0, -960
                  sub          zero, a7, a5
                  xori         s11, a3, 1229
                  ori          s4, t3, 1754
                  slti         t4, s2, 830
                  add          a7, s2, s11
                  lui          ra, 61280
                  slt          s5, a4, s9
                  andi         t3, sp, 1780
                  auipc        s3, 882032
                  addi         t0, s0, -1551
                  srai         s0, s7, 3
                  add          ra, t0, s1
                  slti         a5, a3, -1089
                  xori         a7, tp, 731
                  slt          s7, s4, s4
                  xori         s8, a7, -1616
                  andi         a2, s7, 1956
                  ori          sp, s5, 636
                  xori         t2, a4, -1782
                  sltu         s3, a3, ra
                  slt          a7, a2, sp
                  and          t4, zero, s9
                  sub          a4, a4, s9
                  addi         gp, s3, -78
                  srai         gp, s1, 21
                  add          sp, a7, a3
                  ori          sp, a0, 695
                  srl          t5, zero, t5
                  sra          s4, s7, sp
                  or           s7, t3, a4
                  slli         t4, tp, 19
                  nop
                  xori         t5, zero, -683
                  srl          s2, s1, s4
                  xor          t1, a1, s10
                  and          s8, a0, s5
                  nop
                  lui          t5, 902770
                  srli         t1, sp, 13
                  addi         a1, t0, 440
                  sll          s8, t5, a1
                  xor          t1, a1, a1
                  slt          s4, s11, s6
                  sll          a5, s11, a2
                  ori          a4, s10, 109
                  sltu         t1, s0, s10
                  xor          s4, s11, s3
                  sub          s6, s11, t3
                  add          sp, t4, s2
                  lui          s9, 316556
                  srai         s4, s5, 4
                  or           t4, sp, ra
                  and          t2, ra, t1
                  sltiu        a6, s8, -1248
                  auipc        t4, 811577
                  sra          s2, ra, ra
                  addi         sp, s3, -1268
                  slt          s10, s3, a6
                  srl          s0, a3, a5
                  sll          t4, a3, sp
                  slti         t4, t3, -480
                  lui          s3, 222578
                  slti         s10, s4, -1205
                  add          ra, a7, sp
                  xori         t4, s10, 2006
                  srai         gp, t2, 10
                  auipc        s3, 868307
                  sra          t1, a7, sp
                  sltiu        t4, t5, -1881
                  srl          sp, s4, a7
                  sll          s11, s3, t3
                  srai         t0, t4, 29
                  and          t0, t2, a4
                  nop
                  andi         ra, a5, 1870
                  srl          s8, t5, s3
                  sub          s4, ra, a1
                  sub          t5, t4, s9
                  slli         s11, t6, 11
                  ori          s3, s3, 937
                  slli         t6, s1, 7
                  addi         a5, a7, 1673
                  sll          s2, t2, a2
                  sltiu        t5, a2, 342
                  nop
                  sra          a6, t6, a6
                  xor          zero, s0, t0
                  or           t3, tp, a0
                  srai         t2, a1, 24
                  add          a0, s9, t1
                  sub          a6, a6, ra
                  sltu         s2, t2, a5
                  sub          t0, s6, sp
                  srai         t0, s8, 25
                  nop
                  sra          t3, s6, a4
                  srl          s4, s4, s3
                  xori         t0, ra, -289
                  sll          s5, ra, s9
                  auipc        a2, 486774
                  nop
                  srl          ra, a5, t5
                  slti         t5, t6, 411
                  add          t2, sp, s2
                  srai         gp, sp, 15
                  slt          s9, s9, s10
                  slti         t0, a0, 1745
                  sll          t4, a7, s9
                  addi         s0, t6, -876
                  slti         t4, a2, 1626
                  srai         s8, s7, 6
                  andi         a6, a0, 640
                  nop
                  lui          a1, 204177
                  lui          t0, 352707
                  and          s6, zero, a6
                  sltiu        s3, t2, 2019
                  srli         t6, s5, 11
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           s4, 0x73d450c5
                  li           t5, 0x0
                  li           s8, 0xffffffff
                  li           sp, 0x80000000
                  li           ra, 0xeae0c80b
                  li           s10, 0xffffffff
                  li           a1, 0x5ad62edd
                  li           t2, 0x80000000
                  li           a6, 0xffffffff
                  add          t5, a1, t2
                  sub          t2, s10, t6
                  nop
                  lui          sp, 845163
                  addi         t5, s10, -757
                  sub          s4, sp, s8
                  auipc        t5, 953591
                  add          sp, a1, s4
                  auipc        t6, 945317
                  auipc        s10, 716650
                  add          t2, t2, s8
                  sub          s10, ra, s4
                  nop
                  nop
                  add          t6, a6, s4
                  lui          s4, 157378
                  addi         a1, sp, -486
                  addi         s4, s8, 1329
                  addi         t5, t5, 878
                  lui          t2, 680295
                  sub          t5, s10, t5
                  sub          s8, s8, s4
                  nop
                  addi         t6, t2, -1483
                  sub          t5, s8, a6
                  auipc        a6, 728003
                  auipc        t2, 125966 #end riscv_int_numeric_corner_stream_14
                  srl          t5, s5, a6
                  sltiu        t5, s2, -702
                  srai         s4, t1, 3
                  slti         t5, s6, -984
                  xor          s9, t6, s3
                  srl          t5, s8, ra
                  add          s5, a0, s1
                  slti         s5, t5, 465
                  addi         gp, s2, 1204
                  srai         a5, s7, 30
                  andi         t3, t5, 217
                  xori         t2, s7, 144
                  srl          sp, a7, a6
                  sra          zero, a5, gp
                  srl          s9, t4, s2
                  and          a1, s0, t4
                  xori         s5, t5, -8
                  xor          s7, tp, t3
                  lui          s8, 529813
                  srl          a5, sp, s6
                  and          t0, ra, s3
                  add          a1, t1, t6
                  xor          a4, ra, s3
                  sltu         t2, a3, a2
                  slli         s7, a0, 16
                  srai         t2, s5, 26
                  and          t1, tp, a1
                  slt          s5, s3, s1
                  lui          t4, 159691
                  sltiu        t4, s10, -532
                  slt          t3, t6, a0
                  andi         gp, sp, 1890
                  xori         ra, s9, 1365
                  sra          s0, a5, sp
                  auipc        ra, 403596
                  add          a0, a7, a6
                  ori          s6, a3, 1846
                  sltu         t2, s4, t5
                  add          s8, t1, s8
                  andi         s11, s8, 676
                  sll          s7, a4, tp
                  and          gp, s5, t1
                  srai         s4, s6, 1
                  add          s2, s1, t0
                  nop
                  andi         a7, s10, 391
                  xori         s2, sp, 1730
                  auipc        s10, 545206
                  srl          t1, t3, t2
                  sll          t4, a1, s6
                  auipc        t0, 318203
                  slti         s8, a0, 1708
                  auipc        s0, 842611
                  slli         a7, t3, 31
                  sub          t0, t3, tp
                  slli         s10, t2, 11
                  xor          s9, s8, sp
                  srl          t2, a3, ra
                  slti         s9, s7, 1148
                  ori          t1, s2, 1113
                  srai         t4, a2, 3
                  sltu         s9, a0, gp
                  or           a0, tp, s10
                  sltiu        s5, a5, 89
                  nop
                  and          s2, t0, tp
                  slli         sp, a6, 3
                  or           t6, s0, t0
                  slt          ra, s4, s0
                  addi         s3, a1, 1092
                  or           a4, s11, t4
                  srl          s3, t5, a1
                  srai         s3, s3, 20
                  slti         sp, s9, -507
                  and          s5, a6, s9
                  sra          a6, s5, s2
                  xori         gp, a6, 1052
                  and          a2, a7, a1
                  srl          t4, a5, s3
                  slli         s4, tp, 24
                  addi         s3, t3, -539
                  nop
                  xor          s10, s2, s2
                  and          sp, t1, zero
                  andi         s10, a6, 1109
                  xor          a4, a2, s10
                  sub          s8, t0, t4
                  slti         s8, s3, -897
                  xori         a7, s10, -692
                  xor          s0, t5, t5
                  nop
                  sra          t6, gp, a4
                  nop
                  sra          a6, s7, t4
                  andi         a7, s10, 2013
                  sll          s10, s3, t6
                  srli         s11, a1, 22
                  sra          a4, a1, a7
                  xori         a6, s6, 1300
                  sra          t3, s3, zero
                  ori          s2, a3, 386
                  srai         s10, s7, 19
                  slti         s11, tp, -1268
                  nop
                  sra          t4, sp, s10
                  or           gp, a7, s4
                  sltiu        s8, s0, 939
                  auipc        s4, 437461
                  and          a5, sp, a2
                  xor          s3, tp, ra
                  slti         t6, t0, -1457
                  slli         s3, s1, 0
                  add          s10, t3, a7
                  sra          a1, gp, t1
                  xori         sp, a2, 111
                  andi         t2, a4, 469
                  ori          t2, a7, 1406
                  slt          s9, s2, s0
                  xori         a0, t5, -451
                  andi         sp, s7, -113
                  xor          s7, zero, s10
                  andi         t5, ra, 1652
                  auipc        s2, 180727
                  and          gp, s11, t3
                  sub          s5, t1, a4
                  sltu         s3, gp, s9
                  and          a5, s1, a1
                  nop
                  addi         t2, t5, -364
                  nop
                  add          t6, a2, s8
                  srai         s3, s2, 23
                  auipc        s3, 921173
                  srl          sp, sp, t6
                  sra          t1, tp, t0
                  addi         s8, a5, 927
                  slli         a7, s2, 24
                  xor          sp, s8, t5
                  srl          s11, s6, s1
                  auipc        a4, 424534
                  add          t4, t5, s4
                  add          s10, zero, s5
                  addi         s9, t4, 968
                  add          t6, s0, s8
                  srl          s3, t1, s8
                  lui          t0, 68546
                  srl          t4, a0, s2
                  sll          sp, sp, ra
                  auipc        s7, 894073
                  andi         a2, s1, -1060
                  auipc        s7, 943479
                  sra          sp, s1, s6
                  sltu         s7, t6, s10
                  andi         a4, s2, 558
                  auipc        a6, 333124
                  lui          gp, 71791
                  nop
                  addi         s8, a1, -595
                  ori          s3, s11, -624
                  xor          a5, s3, t0
                  addi         gp, t0, 332
                  addi         a4, a4, 1207
                  sltiu        t0, s11, -991
                  andi         a1, s7, -427
                  sra          a1, t3, a7
                  add          a7, sp, sp
                  slti         a1, a7, 1389
                  lui          a4, 324552
                  and          a7, t1, a0
                  sra          a0, t5, t5
                  or           t0, t4, s6
                  andi         s8, s2, -100
                  sltiu        s9, s8, -1312
                  xori         t6, s4, 1229
                  xori         a1, s2, 1668
                  andi         a2, t2, 557
                  slt          t6, sp, a0
                  and          t5, s7, a5
                  add          a1, t5, s4
                  xor          s3, t0, s5
                  addi         t6, t6, 277
                  sub          t6, a0, a2
                  slti         t0, t6, 2010
                  slli         t2, s0, 16
                  sll          zero, s4, s7
                  srl          t4, a6, a2
                  ori          t3, t5, -1975
                  or           a5, zero, a6
                  addi         s6, s1, 1109
                  andi         s3, a3, 615
                  nop
                  lui          s5, 121909
                  nop
                  sll          s2, a5, gp
                  srli         zero, t6, 28
                  or           a0, t1, t6
                  addi         s3, a7, 1461
                  addi         s4, s4, 1922
                  sub          s8, s0, a0
                  slt          a2, s0, t1
                  xori         t6, s8, 246
                  sltu         a1, s9, s8
                  xori         sp, s2, 901
                  srl          a6, s3, t5
                  and          gp, t3, s0
                  sll          s7, a3, s0
                  srli         ra, a1, 27
                  xor          t3, t1, a6
                  auipc        a5, 267816
                  or           zero, sp, t2
                  srai         a7, a0, 3
                  nop
                  xori         s0, t3, -599
                  auipc        a4, 814803
                  andi         a5, s5, 834
                  ori          t1, s6, -1652
                  nop
                  addi         t3, s0, 1920
                  srl          t0, t5, s2
                  add          t4, s11, a7
                  or           s0, a2, a7
                  and          a2, tp, s3
                  addi         a0, a3, 846
                  ori          t4, sp, 1193
                  sll          t0, s5, s6
                  srai         s4, s0, 28
                  slti         t6, gp, -882
                  sra          a1, s4, t0
                  srli         a2, s1, 27
                  sra          s4, t3, a2
                  sra          s3, a2, t5
                  and          s8, s3, t4
                  lui          a7, 500959
                  xor          t3, s3, s4
                  and          s11, s6, s3
                  slt          t2, a1, s7
                  srai         s3, ra, 0
                  sltu         s2, t5, t0
                  slt          s0, a5, a2
                  sltiu        zero, a6, -795
                  srl          s10, t0, t0
                  lui          s0, 55984
                  ori          ra, tp, -918
                  slti         gp, zero, 849
                  or           a0, tp, a5
                  slt          gp, a7, zero
                  addi         t1, s10, -471
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           s9, 0xab4ae644
                  li           s0, 0xffffffff
                  li           a1, 0x0
                  li           s2, 0x80000000
                  li           gp, 0x80000000
                  li           t4, 0x3d2b9955
                  li           s5, 0xffffffff
                  li           s10, 0xffffffff
                  li           s6, 0x0
                  add          s10, s10, s0
                  nop
                  sub          s0, s9, s10
                  sub          s2, s5, s0
                  sub          s6, s0, s5
                  nop
                  add          s10, s6, s6
                  addi         t4, s10, 1799
                  addi         t0, s9, 1379
                  nop
                  lui          s6, 56365
                  nop
                  sub          s9, s2, t0
                  nop
                  add          gp, s6, s6
                  sub          s5, t4, s0
                  nop
                  addi         s0, s5, 909 #end riscv_int_numeric_corner_stream_10
                  slli         a6, s1, 30
                  srai         t1, s1, 30
                  andi         s0, zero, -1842
                  lui          t3, 108078
                  or           s5, s3, a5
                  xori         t3, zero, 994
                  ori          sp, t2, 1702
                  nop
                  add          s0, tp, zero
                  addi         zero, sp, -970
                  sltiu        a0, t5, -1724
                  sll          s11, s5, a3
                  sltiu        s6, s5, -1173
                  sltiu        zero, s9, -1419
                  sll          s2, a4, a5
                  srl          t5, gp, s7
                  sltu         a2, gp, a6
                  nop
                  addi         a0, t5, -1194
                  sltu         zero, tp, s8
                  addi         s0, tp, -115
                  xori         s6, s9, 1690
                  xori         gp, a7, 14
                  slli         sp, t0, 11
                  xor          t2, s0, ra
                  ori          t4, ra, -211
                  andi         s9, t4, 659
                  srli         a4, gp, 14
                  sltiu        t0, s11, -1772
                  or           t4, s11, a2
                  srli         t1, a7, 9
                  sltiu        sp, s1, -1897
                  lui          s3, 587356
                  and          t3, s7, s10
                  slti         s7, s11, 1508
                  and          gp, s0, t1
                  sll          t5, t4, s10
                  slt          s0, t0, s11
                  sub          zero, s10, s7
                  xor          s8, s10, a1
                  sra          t3, s11, t6
                  lui          s2, 543944
                  sub          s7, a5, s6
                  nop
                  andi         t1, a6, 528
                  or           gp, t4, s1
                  slti         a4, a1, -134
                  sub          ra, s1, a7
                  srl          s9, tp, t1
                  sub          a6, ra, a1
                  sub          ra, a2, s1
                  add          a2, a0, s4
                  slli         s8, s11, 25
                  addi         s3, s5, -1061
                  nop
                  slt          s8, t6, t3
                  ori          s7, ra, -826
                  add          s5, s4, s10
                  add          s4, s0, s1
                  andi         s11, a0, 879
                  nop
                  addi         t2, a1, 337
                  srl          s0, zero, t1
                  slti         s3, s2, -1456
                  xori         s7, s4, -683
                  or           a7, a3, s10
                  srai         s11, gp, 6
                  or           s4, s7, s2
                  sub          s2, t3, a0
                  sll          a2, t4, a4
                  add          a6, s3, sp
                  or           t1, t5, zero
                  sltiu        s4, t0, 1249
                  srai         a5, t3, 30
                  srai         a7, t0, 13
                  addi         s8, s4, -304
                  sll          s6, tp, s10
                  sltu         ra, t4, t0
                  nop
                  srli         t4, s10, 11
                  sltiu        t3, t3, 1309
                  nop
                  sra          ra, s5, t5
                  xori         t5, a3, -533
                  and          gp, s11, t4
                  slli         s11, s6, 12
                  sltu         t0, a2, t0
                  andi         s3, a0, -307
                  srli         t6, a5, 0
                  slt          t2, gp, sp
                  srai         s5, a7, 14
                  slli         s7, t1, 4
                  srli         ra, a0, 27
                  sub          t6, a6, t4
                  srl          s0, a1, a7
                  addi         t2, a2, -609
                  srai         a2, tp, 29
                  nop
                  sltiu        a4, a1, -1520
                  sra          sp, a6, a0
                  and          s0, t5, s2
                  xor          t0, t3, t2
                  andi         a5, a6, -361
                  srli         a6, s1, 4
                  sub          gp, a5, a1
                  srl          s2, s8, gp
                  add          ra, s6, a0
                  lui          s5, 606214
                  ori          t4, a5, 1464
                  sll          a0, s11, s1
                  sub          s0, s9, s11
                  and          t2, s0, ra
                  xori         a4, a1, 487
                  ori          gp, s4, -1994
                  srli         s4, s11, 20
                  lui          s3, 197957
                  srai         s9, a3, 7
                  auipc        a4, 230156
                  xor          t3, s9, s6
                  xori         t2, a2, -667
                  nop
                  addi         s3, t0, -1957
                  srai         a5, t1, 21
                  srl          t4, s3, gp
                  xori         s4, s1, -1925
                  ori          t5, s9, -1683
                  nop
                  xor          s3, sp, a0
                  srai         s4, t1, 31
                  slti         ra, t5, -397
                  ori          s2, a5, 759
                  sra          zero, t6, a4
                  auipc        t4, 151105
                  ori          sp, s9, 1939
                  srli         s4, a4, 9
                  lui          s10, 460366
                  sltu         t5, s5, a3
                  xor          t0, s11, t2
                  srai         s9, t2, 22
                  sltu         t6, a2, s8
                  sltu         a1, s1, s3
                  and          a5, t2, gp
                  addi         gp, ra, 294
                  addi         sp, zero, -744
                  sll          t6, s4, a3
                  lui          s8, 265365
                  auipc        s0, 474035
                  srl          a0, s8, tp
                  xor          s7, t4, a7
                  sll          s7, s10, tp
                  auipc        gp, 227528
                  addi         ra, s2, -99
                  srl          s7, t6, gp
                  nop
                  nop
                  andi         s7, sp, -1988
                  auipc        a7, 698867
                  addi         s5, t2, 1162
                  nop
                  auipc        s11, 1043834
                  add          s8, a5, a4
                  add          t1, s1, sp
                  sltiu        t4, ra, -1535
                  sub          a5, a5, t0
                  auipc        s6, 255428
                  slli         s8, a7, 13
                  or           s3, a3, t0
                  sltiu        a6, a4, -233
                  slti         t5, s6, -1552
                  nop
                  add          t6, s5, s2
                  srli         a7, t0, 19
                  xor          a0, t3, ra
                  sra          t0, a4, s11
                  sltiu        t1, s2, 1558
                  sltiu        s9, t5, -149
                  sltu         a0, a6, a3
                  ori          a4, a3, -302
                  sltu         a5, t3, gp
                  srl          s7, s5, s4
                  sltu         t3, gp, a7
                  andi         t4, t6, -127
                  and          a6, s3, t6
                  srli         s3, a5, 7
                  lui          a4, 820311
                  srli         s3, s8, 3
                  addi         s4, ra, 966
                  slti         a7, t6, -1019
                  slti         t5, a0, 81
                  slt          s11, s0, tp
                  auipc        s6, 294578
                  slti         gp, a0, -1135
                  slli         s7, zero, 28
                  lui          t2, 11030
                  add          t2, t4, a2
                  xori         s5, t0, -1759
                  sra          t3, t3, a3
                  auipc        s5, 514132
                  sub          s9, s6, t0
                  sltu         t4, t5, t0
                  add          sp, s3, s5
                  slli         t5, s1, 30
                  xori         t2, s2, 340
                  srli         s5, a1, 31
                  sll          s6, t1, t2
                  xori         s5, s7, 586
                  xori         a6, a2, -1449
                  addi         t3, t6, 1887
                  sltu         sp, t3, t0
                  sltu         a2, sp, tp
                  lui          zero, 894850
                  xori         s9, t4, 943
                  srl          s11, a3, gp
                  addi         s7, a4, 3
                  sub          t1, s8, s10
                  srai         t4, s5, 0
                  add          a1, s7, sp
                  sltiu        s3, s10, -1688
                  srl          s0, s11, s5
                  srl          s2, tp, t5
                  xori         s3, s10, 261
                  auipc        s10, 717018
                  slt          s9, s9, s10
                  srl          zero, s2, gp
                  slli         a2, ra, 17
                  slt          ra, a4, s5
                  slt          t6, s0, s2
                  xor          t6, s1, s1
                  lui          s10, 1048329
                  or           zero, zero, s2
                  slli         s6, s3, 6
                  srl          a0, a2, a6
                  nop
                  srai         t3, a6, 4
                  sltiu        a5, a4, -937
                  srli         s5, s6, 23
                  and          t3, s5, s9
                  or           a0, s1, s11
                  and          t0, a4, gp
                  addi         t0, a4, 1202
                  sltiu        s2, s7, -1970
                  sltiu        a0, a3, -635
                  slt          s6, s10, s8
                  sll          s2, s9, ra
                  or           s2, s1, s11
                  auipc        a7, 852016
                  or           t1, a1, s1
                  srli         t1, s8, 13
                  lui          t4, 1031257
                  slt          t1, a2, t0
                  srli         s8, ra, 21
                  or           s11, t4, s10
                  and          t3, ra, a3
                  sll          s8, t4, s7
                  slt          s7, a5, t4
                  sll          t3, s7, s7
                  srai         s9, a7, 19
                  xori         a7, s8, -614
                  addi         s5, a6, -1300
                  srai         ra, s2, 22
                  slti         s9, tp, 1089
                  srai         s5, a7, 20
                  slt          ra, tp, s6
                  slti         a0, s8, -1658
                  srai         t6, gp, 28
                  add          t6, a7, a6
                  slli         s6, s9, 15
                  srli         t5, t5, 18
                  srl          s4, a4, s6
                  or           s10, a0, s6
                  sltiu        s0, s5, -1512
                  srai         a2, a6, 22
                  lui          zero, 94964
                  sll          s0, t1, t5
                  add          s6, a0, a3
                  sltiu        s4, s1, -1070
                  slli         sp, a6, 13
                  sll          s9, s2, t0
                  slli         t5, s3, 29
                  addi         t4, s4, -156
                  add          s9, s7, sp
                  or           sp, a7, t4
                  sll          a7, s9, a5
                  andi         a5, zero, -1791
                  sltiu        t6, s1, -128
                  srl          zero, t5, t0
                  slti         s10, a6, 1496
                  sll          a4, s1, tp
                  sub          s6, a4, s3
                  xor          s4, s2, s10
                  add          t4, s10, t1
                  addi         s11, t2, -435
                  and          t5, t3, t3
                  andi         s0, t3, 399
                  andi         s8, zero, -1775
                  slli         s5, gp, 17
                  sltu         s5, s1, s5
                  srli         s0, s2, 23
                  slli         a0, a3, 17
                  auipc        s4, 604077
                  xori         t1, tp, 624
                  sltiu        ra, s6, -1433
                  and          a2, a3, s7
                  srli         t1, a1, 13
                  xori         a6, a0, -1621
                  auipc        s3, 18266
                  xori         a0, a2, -660
                  or           a6, zero, t6
                  xor          s9, t6, t6
                  addi         t3, t5, -1564
                  auipc        t3, 202398
                  srai         a0, s2, 26
                  nop
                  srli         t2, a6, 1
                  xori         a6, a7, 2020
                  sub          t5, t2, sp
                  slt          t5, a7, t6
                  nop
                  srli         a0, s11, 3
                  xor          t6, s5, a3
                  slti         s11, s1, -1556
                  ori          t6, a4, 1478
                  sub          s11, s11, s5
                  lui          s4, 124165
                  nop
                  slt          a7, s9, s0
                  sll          t4, tp, s5
                  xori         s4, a4, 802
                  auipc        t6, 967870
                  slt          t3, a7, s5
                  srai         a7, s3, 12
                  add          a0, a6, t1
                  addi         t3, s8, 90
                  sub          t0, a5, t2
                  and          t4, s9, s1
                  addi         a6, s1, 1337
                  srl          s4, t2, gp
                  xor          s11, s9, a1
                  sltu         a1, s1, t3
                  ori          gp, zero, -549
                  sltu         t1, s10, t4
                  auipc        s7, 17010
                  lui          zero, 910657
                  slt          ra, s6, gp
                  ori          t1, zero, 278
                  slti         zero, s7, 1503
                  slti         t4, s6, 2020
                  xor          s6, s1, a5
                  sll          ra, t0, a3
                  addi         a5, s1, 38
                  ori          s0, a1, -1921
                  ori          t5, t4, 1646
                  srai         t4, a3, 10
                  andi         t0, ra, -1804
                  add          s5, s0, a5
                  sltu         s11, a7, a7
                  slti         s4, a0, -1056
                  sltu         a5, s0, t6
                  srli         t5, a1, 18
                  add          s9, a2, s2
                  addi         t4, a6, -1696
                  andi         t3, t3, 788
                  and          sp, ra, ra
                  sltu         zero, a0, sp
                  lui          s11, 848662
                  xori         s9, s8, -1740
                  slt          s11, t2, s1
                  add          a7, a4, s8
                  sltu         s6, s10, s2
                  sub          gp, a2, t1
                  or           a2, a6, s4
                  addi         s6, a1, -1887
                  addi         a2, t4, -706
                  sltiu        a5, t4, -1630
                  slt          a5, t6, s8
                  sll          a4, a7, s11
                  andi         s4, s9, -1823
                  srai         a5, a5, 13
                  sltu         t0, a2, t6
                  srl          s5, sp, s4
                  and          s2, s1, a1
                  xori         t3, s1, 423
                  lui          a4, 871253
                  slti         a2, a0, 174
                  xor          ra, s6, a1
                  and          t5, t0, zero
                  slli         t6, s3, 21
                  xori         s6, gp, 1716
                  andi         t6, s11, 36
                  auipc        s9, 216053
                  and          s7, s7, gp
                  lui          a4, 412411
                  xori         s2, s11, -467
                  sll          t1, t6, s1
                  sltiu        t0, s6, 1464
                  srai         t6, a7, 27
                  add          zero, a2, t6
                  sll          s11, s2, t4
                  or           t5, s0, sp
                  srai         t0, s9, 5
                  ori          s9, s5, -1948
                  lui          ra, 868765
                  add          a2, sp, t5
                  auipc        a1, 883906
                  addi         t4, a4, -838
                  srl          t1, s8, gp
                  sltiu        s6, a7, 1620
                  addi         zero, a7, 1454
                  ori          a6, s9, 1767
                  addi         a5, tp, 276
                  xor          t6, t0, s11
                  sub          s0, s3, s9
                  lui          a4, 818807
                  auipc        a5, 627834
                  auipc        s8, 7567
                  auipc        a2, 212458
                  sll          s7, s5, t5
                  slti         a6, a4, 1527
                  xor          s4, gp, s3
                  auipc        ra, 354632
                  sll          s4, a7, s9
                  andi         t2, a0, 1703
                  addi         gp, s10, 127
                  srl          t1, a6, a4
                  srl          s2, t2, ra
                  lui          a0, 896774
                  slti         s6, s7, -463
                  srli         s10, a2, 19
                  sub          s4, s10, t4
                  sll          t2, a4, t1
                  and          sp, s3, s0
                  addi         zero, t6, 1936
                  slli         t4, a2, 19
                  sra          a7, tp, a1
                  xor          t5, t1, tp
                  srai         a7, s2, 3
                  sltu         t1, s6, zero
                  xori         s9, s6, 310
                  slti         t6, t6, 1942
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s4, 0x617d764
                  li           a7, 0x80000000
                  li           s10, 0x0
                  li           s0, 0xf3ffb06e
                  li           gp, 0x80000000
                  li           a5, 0xffffffff
                  li           a1, 0xa0ae54e3
                  li           s6, 0xffffffff
                  li           s9, 0x0
                  nop
                  lui          s0, 600051
                  add          s4, s0, a5
                  nop
                  auipc        s9, 966881
                  addi         s6, t6, 186
                  auipc        a5, 633640
                  nop
                  sub          a1, s6, a5
                  lui          a5, 827089
                  auipc        s6, 477241
                  lui          a1, 773014
                  sub          s6, s0, s9
                  add          s9, s0, a7
                  add          a1, a7, a7
                  sub          s9, s9, s10
                  add          s6, s0, t6
                  nop
                  sub          gp, s10, a7
                  auipc        a7, 977069
                  nop
                  add          a1, s4, s4
                  auipc        s0, 949123
                  nop #end riscv_int_numeric_corner_stream_19
                  sltiu        t3, a5, 1971
                  ori          s4, t4, 1960
                  xori         s7, t1, -957
                  sltiu        s9, t2, -807
                  sltu         t0, t2, t4
                  srai         s4, s10, 14
                  add          s5, s7, a5
                  sltu         a0, a7, t6
                  nop
                  add          t1, zero, t1
                  xori         s0, s6, 543
                  sltu         s3, s8, s2
                  lui          t0, 785125
                  srai         s2, a4, 18
                  srl          s7, a2, a4
                  srl          a1, a4, tp
                  sub          gp, s8, s9
                  xori         s3, s0, -1583
                  ori          s8, a5, -81
                  and          s3, a5, s6
                  and          gp, zero, s6
                  sltu         t4, t3, zero
                  slt          s6, tp, t1
                  andi         zero, s11, 511
                  addi         t1, ra, -1062
                  srai         s8, a0, 30
                  lui          s2, 308990
                  addi         a4, s8, -1603
                  sra          t0, s6, gp
                  sub          a1, s9, t4
                  lui          gp, 44408
                  sltu         a6, a5, s0
                  srl          t2, s3, s3
                  srai         a6, t4, 10
                  sltu         a2, sp, gp
                  addi         ra, a4, 273
                  xor          gp, t1, a5
                  slt          t0, a4, s3
                  or           s7, t6, s3
                  andi         s2, t6, -1856
                  ori          a2, sp, -1774
                  slti         s5, t3, 99
                  sll          a6, s10, a5
                  slt          a6, s2, sp
                  sltiu        s10, a3, 514
                  sltu         s0, a5, s2
                  xori         t2, s6, 1878
                  xori         a2, s1, 1586
                  auipc        a7, 478650
                  slt          s2, a0, t4
                  andi         sp, sp, 1339
                  add          s5, s9, s1
                  sub          t5, s0, t4
                  lui          s3, 467261
                  slli         t6, s9, 16
                  auipc        s10, 970564
                  andi         t0, s0, -594
                  sltiu        a6, t6, 1230
                  ori          s3, s1, -1543
                  addi         s4, t1, -1581
                  addi         ra, a3, 783
                  lui          s2, 151789
                  addi         t3, s5, -1198
                  auipc        ra, 21043
                  addi         s9, sp, 812
                  nop
                  sra          a2, t5, t4
                  add          ra, a6, gp
                  andi         s0, s0, -779
                  xor          ra, s1, s3
                  sra          ra, s3, t5
                  ori          a6, t6, -2022
                  srli         s9, a2, 22
                  srl          gp, a3, sp
                  srai         s5, s4, 25
                  sltu         a5, sp, s10
                  slti         a7, s3, 722
                  add          a5, a7, s7
                  lui          s11, 399782
                  nop
                  nop
                  sub          s10, s2, a5
                  auipc        t2, 354921
                  and          zero, t6, t2
                  slt          t4, t6, a2
                  srli         zero, t2, 30
                  sra          s4, sp, a3
                  andi         sp, s7, -1556
                  sltu         t2, t0, t0
                  andi         a2, a6, -1964
                  srai         t2, s2, 24
                  slt          t4, sp, s3
                  slli         s3, ra, 3
                  sra          t2, s1, t3
                  slli         a0, zero, 17
                  ori          t3, gp, -192
                  xori         t1, tp, -2
                  and          a0, s2, a1
                  sll          s2, t6, t0
                  srl          s11, ra, a6
                  ori          s4, a0, 1665
                  slti         sp, t0, -1937
                  sltu         t4, a7, t0
                  auipc        s5, 511580
                  lui          s11, 151829
                  xori         s6, a0, 1758
                  sra          s10, a6, a6
                  srl          s7, s8, tp
                  sra          a1, zero, a5
                  nop
                  sra          s3, s2, a2
                  addi         sp, s3, 2015
                  add          a2, a7, t0
                  sltu         s11, t5, t0
                  srli         s2, s6, 26
                  auipc        a2, 23762
                  lui          s11, 102881
                  slt          a6, ra, t4
                  and          s11, tp, gp
                  nop
                  ori          t6, s4, 851
                  sltu         s5, a4, t3
                  slt          s10, a6, t5
                  addi         a2, t4, 1411
                  sll          s2, a6, t0
                  nop
                  sra          s5, s2, a4
                  sub          s2, s6, a7
                  slli         a5, s3, 31
                  sra          a7, s6, t2
                  slti         t2, s5, -542
                  andi         sp, ra, 1910
                  srl          a6, a4, s6
                  srai         t2, s6, 26
                  sltu         s3, s8, t2
                  auipc        s4, 553413
                  andi         t0, s8, 386
                  sub          t2, ra, gp
                  add          ra, a0, s11
                  nop
                  xori         s4, a1, -914
                  addi         s2, ra, 1882
                  add          gp, s7, s0
                  sltiu        s6, a6, 1036
                  sll          a2, s7, a3
                  sub          s9, a1, s10
                  addi         s11, s2, 1285
                  ori          t6, t4, -890
                  add          a5, a7, a5
                  srai         t2, s4, 0
                  srli         t2, a4, 11
                  xor          s8, s1, a7
                  ori          a6, s2, 1635
                  xor          s11, a1, a6
                  sll          s0, s5, t0
                  sub          t4, t3, s6
                  srli         a0, s8, 9
                  andi         s0, s6, 612
                  andi         s9, ra, -235
                  sra          a6, s2, t2
                  or           gp, a3, gp
                  lui          t2, 812586
                  xori         s10, t5, -716
                  and          a7, a2, s8
                  ori          t3, t0, 702
                  slti         a6, s4, -393
                  lui          s5, 489787
                  sra          t4, t6, s7
                  lui          s2, 287909
                  sub          s8, s10, s6
                  slti         t3, s6, 395
                  sra          s3, sp, a0
                  slli         t1, a1, 3
                  add          s8, t1, t5
                  xori         s11, t4, 188
                  add          t5, gp, a3
                  sra          a5, gp, s7
                  xori         t0, s2, 510
                  addi         t2, t5, -1067
                  and          t5, a6, s9
                  and          a7, t1, a4
                  ori          t6, ra, -1705
                  lui          sp, 562173
                  sltiu        a7, t1, 620
                  sub          s3, gp, s8
                  sub          t4, a4, a1
                  addi         s9, s5, 683
                  sltiu        s11, t0, -2021
                  srl          a0, s1, zero
                  auipc        t3, 536518
                  and          a6, a4, s6
                  sub          t5, a1, t4
                  nop
                  xori         s0, sp, -2003
                  ori          s10, a3, 21
                  srl          s3, s2, t0
                  slt          s8, t2, a7
                  sub          t1, t1, s9
                  or           s4, t4, a4
                  slli         a2, s11, 14
                  auipc        a0, 827866
                  srl          s6, s3, a0
                  xori         s6, a4, 118
                  andi         a1, t3, 1959
                  xor          ra, ra, s6
                  sra          gp, t3, t2
                  sll          sp, s5, s1
                  sll          t2, s11, t2
                  sra          s2, s1, t0
                  xor          zero, a7, a1
                  srai         sp, zero, 1
                  nop
                  sll          s2, a0, sp
                  andi         a6, t5, -1043
                  xor          gp, t4, a4
                  xor          s6, s0, t3
                  andi         a2, t4, 1185
                  slti         a6, s0, 1463
                  andi         gp, s6, -1000
                  nop
                  slli         a6, a2, 12
                  nop
                  sltiu        a4, s9, -1942
                  and          zero, t0, a3
                  sub          s8, t5, t0
                  sltiu        s3, zero, -1257
                  add          s9, a3, t1
                  xor          s5, t1, t3
                  slt          s9, t6, tp
                  lui          s8, 598309
                  srl          t1, s3, t6
                  andi         t0, zero, -1117
                  ori          s2, a0, -303
                  sltu         s3, s7, s10
                  slt          zero, s6, tp
                  addi         t2, s6, -1628
                  sll          t2, t4, t3
                  ori          sp, t1, -1385
                  xor          s4, a7, s5
                  sltu         a0, a1, sp
                  sltu         t3, s0, s10
                  sltiu        t1, a3, -76
                  lui          a6, 371791
                  srai         t0, tp, 1
                  xor          sp, a3, t6
                  lui          t5, 187621
                  srli         a5, a3, 7
                  sra          ra, a7, t3
                  addi         s8, t5, -818
                  xor          t4, t2, s3
                  slt          s2, t1, t0
                  auipc        s0, 891137
                  auipc        t0, 257805
                  slti         s4, s5, -1358
                  or           s4, s10, s0
                  slt          s4, s4, s5
                  lui          s3, 72718
                  and          s2, zero, t6
                  or           a7, tp, s4
                  sub          a6, s2, a7
                  sub          s2, a4, ra
                  sltiu        s3, a0, 812
                  srli         s0, s3, 20
                  sub          t1, s8, s2
                  auipc        a1, 50433
                  and          a2, s3, t1
                  and          s7, s7, a6
                  srl          ra, s10, t0
                  nop
                  slt          s2, tp, s1
                  and          s0, ra, a2
                  andi         t2, s6, -1783
                  nop
                  xor          t5, a6, a6
                  xori         s6, ra, 1843
                  srl          s2, t0, s0
                  sra          ra, a0, t2
                  ori          s5, s0, -1707
                  srai         s11, t0, 31
                  or           t1, ra, a0
                  sub          s3, s0, a3
                  or           gp, a2, t6
                  xori         s2, a2, 65
                  slli         t4, s1, 22
                  sltiu        a1, s4, 840
                  addi         s4, t2, -1779
                  srai         sp, s11, 0
                  sltiu        s8, a5, 820
                  add          t6, t6, sp
                  xor          s9, s1, a7
                  sltu         t4, t3, s6
                  slli         s9, s7, 13
                  xor          s2, t2, zero
                  lui          sp, 264427
                  or           s5, ra, a3
                  slt          s3, t6, a0
                  ori          gp, gp, -132
                  andi         s2, a5, 1193
                  nop
                  xor          s8, t6, a6
                  srl          s9, ra, t3
                  srai         s6, a6, 15
                  slti         s0, t0, 1792
                  slti         gp, zero, -22
                  srai         s7, a6, 20
                  sub          s0, a0, a0
                  addi         t2, t5, -1552
                  sra          t1, t1, gp
                  add          t2, t1, s0
                  xori         s2, s1, -952
                  xor          ra, ra, t1
                  xor          t0, s1, a5
                  ori          gp, a2, 1702
                  addi         a5, s5, -527
                  add          t1, t0, a7
                  add          ra, a2, a6
                  sltu         a1, a6, s7
                  andi         a0, t5, 214
                  andi         ra, s9, -412
                  auipc        s0, 27758
                  andi         a0, s10, 1349
                  sra          s11, t5, a5
                  lui          a6, 475108
                  sltiu        t3, a1, 1668
                  slli         s8, s10, 5
                  slti         s7, sp, 605
                  sub          t3, tp, s10
                  sll          t4, t2, t0
                  ori          s9, s9, 410
                  add          s0, t5, gp
                  nop
                  ori          s8, s11, -1166
                  slli         s9, s2, 15
                  slt          t6, t6, a0
                  ori          s2, t3, -993
                  sltiu        s2, a3, -480
                  nop
                  slti         t4, gp, -1231
                  slti         t4, a7, -952
                  slti         a1, gp, 7
                  auipc        s10, 609281
                  sltu         a4, s0, s7
                  or           s6, sp, zero
                  or           s3, a0, s3
                  sra          s3, t5, t0
                  and          ra, a6, a7
                  addi         a0, s6, 256
                  sra          s6, s0, a3
                  srai         s7, sp, 2
                  or           zero, s3, t2
                  and          s7, t5, zero
                  and          t6, s3, a0
                  or           s0, s4, t5
                  srai         sp, a1, 22
                  lui          t0, 475177
                  slt          s5, s4, s1
                  sra          zero, a4, zero
                  srli         s9, t5, 8
                  slli         t2, s5, 18
                  xori         t6, a3, 59
                  addi         s0, s4, 366
                  nop
                  slt          ra, a5, t1
                  srai         t6, a5, 12
                  auipc        s10, 975961
                  slti         a2, s11, -751
                  auipc        s2, 218346
                  auipc        t1, 169352
                  and          s8, t2, t3
                  slt          s4, t0, a5
                  xor          ra, a6, a3
                  lui          s7, 483602
                  and          s0, s2, zero
                  xor          t3, tp, gp
                  sll          gp, a2, a2
                  nop
                  xor          t2, gp, s1
                  srl          sp, s4, s6
                  slt          s9, a5, a7
                  slli         gp, a5, 16
                  andi         a5, a1, 516
                  lui          t3, 299819
                  srai         s11, s0, 31
                  sub          s6, s7, s7
                  srai         t5, s1, 28
                  sll          s2, s9, t6
                  nop
                  xori         a4, a0, 924
                  and          t3, s11, s3
                  srai         sp, t0, 24
                  sra          s10, sp, t0
                  xor          a0, t4, t1
                  srli         a2, s5, 9
                  andi         gp, sp, -1666
                  and          t5, t6, t2
                  slti         zero, a4, -194
                  or           t5, t6, s4
                  lui          a6, 915171
                  or           s10, a0, s10
                  sltu         a1, t6, ra
                  xor          a2, s2, s5
                  sll          gp, a4, t1
                  lui          s7, 976738
                  auipc        s2, 820511
                  auipc        s11, 245368
                  srli         ra, s0, 9
                  srli         t3, a5, 18
                  srli         t2, a3, 31
                  srl          t5, a7, s11
                  ori          sp, s7, -1211
                  srli         t5, a5, 10
                  sltu         ra, t0, a0
                  slt          t4, a4, a1
                  sub          a6, a3, t2
                  srl          a1, a3, a3
                  xori         s5, ra, 872
                  srai         s3, s10, 29
                  slti         a1, tp, 67
                  sltiu        t1, s5, -528
                  addi         ra, s9, 524
                  srl          a4, sp, t1
                  add          t1, s9, s9
                  xori         gp, s6, -1587
                  srli         t2, a5, 1
                  srli         s7, a3, 16
                  srli         a1, a6, 22
                  ori          a6, t3, 734
                  sltiu        s0, s7, 140
                  sltu         ra, a4, s11
                  slli         s9, t2, 15
                  auipc        a5, 124677
                  srli         t4, s7, 1
                  andi         s9, s9, 895
                  xor          s5, tp, s5
                  slli         s0, s1, 19
                  nop
                  ori          a1, s11, -1920
                  xori         a2, s10, 324
                  auipc        s8, 702484
                  srli         s0, s0, 27
                  sra          s7, s4, s9
                  auipc        s10, 558074
                  sltiu        s2, tp, 1755
                  xor          sp, t4, t0
                  srai         t6, s3, 21
                  add          ra, s5, tp
                  nop
                  and          t2, gp, a6
                  and          t4, s8, a6
                  ori          s5, sp, 469
                  sra          s8, a1, s7
                  srl          a7, tp, t4
                  xor          s2, s2, a4
                  add          t5, a2, t0
                  add          zero, t2, s10
                  srli         a2, s9, 14
                  xor          a5, sp, s5
                  srai         s3, a0, 6
                  sub          s4, t3, t2
                  sltu         gp, ra, ra
                  sll          s11, s10, s0
                  xori         t2, t0, 677
                  auipc        s9, 590527
                  sub          s10, a0, ra
                  slli         t2, tp, 26
                  sltiu        sp, a7, -663
                  or           s9, a0, t6
                  auipc        t4, 370939
                  nop
                  sltu         s4, t6, t0
                  addi         s8, ra, 1867
                  sltu         s10, tp, gp
                  addi         a6, a1, -1291
                  slt          t6, zero, t5
                  nop
                  slli         a4, s3, 7
                  sub          t2, a0, s4
                  nop
                  nop
                  sltiu        a6, s3, 607
                  sll          t2, tp, s10
                  sltiu        s8, a2, -268
                  srai         s5, a3, 29
                  srli         gp, s3, 28
                  auipc        zero, 461018
                  nop
                  nop
                  srai         s3, s6, 11
                  add          s8, s7, a7
                  andi         a4, s1, 879
                  ori          a0, s8, -441
                  sltiu        zero, a6, 1903
                  srl          s6, a5, s4
                  nop
                  srl          s2, t1, s10
                  sra          a6, sp, s6
                  lui          s10, 472697
                  sltu         t5, a4, s0
                  srli         s6, zero, 27
                  sll          t0, a0, a6
                  xor          t0, s9, s5
                  addi         a4, s4, -180
                  slt          s3, t0, s11
                  xori         t1, t6, -593
                  lui          s4, 819330
                  sltiu        a7, t0, -507
                  sll          sp, s3, tp
                  auipc        t1, 1009292
                  sub          s4, s2, a7
                  or           t0, t6, s11
                  srli         t2, s3, 6
                  slt          s10, s1, s5
                  slli         s10, s4, 16
                  sll          t1, t0, a0
                  sll          s11, a7, s0
                  nop
                  slt          s8, t5, s3
                  sltiu        s0, a1, -1632
                  add          t0, s6, t4
                  xori         ra, s5, -2030
                  srli         sp, a1, 22
                  slt          t5, a2, s5
                  addi         ra, t4, 427
                  sll          a4, s11, t1
                  sra          gp, t4, gp
                  sltu         s6, sp, a1
                  xori         s11, a4, -1079
                  xori         a1, s8, -280
                  xor          t3, t6, s7
                  and          a6, a2, s4
                  slt          ra, s7, s9
                  lui          a2, 786069
                  lui          s7, 345679
                  andi         a0, s6, -1882
                  slt          s3, a5, a7
                  xor          s3, sp, a0
                  andi         a4, s10, -1494
                  slt          a1, s6, tp
                  addi         a6, t2, 1607
                  xori         t2, a0, 775
                  srl          t0, a1, sp
                  xori         t4, t6, -952
                  slli         a2, s6, 9
                  sltiu        t0, s2, -1288
                  xor          s11, ra, a3
                  srli         t1, a5, 22
                  slti         ra, a3, -1588
                  slti         a2, zero, 1660
                  slli         s3, a1, 27
                  slti         t6, t0, 85
                  or           a5, s9, zero
                  addi         a0, s3, -1779
                  ori          a1, a1, -1736
                  and          s11, t5, t6
                  addi         t4, a5, 899
                  slti         sp, sp, -1455
                  slt          t6, a4, s2
                  nop
                  addi         s3, a0, 1450
                  add          s6, t6, ra
                  add          a1, ra, tp
                  srli         t6, t5, 22
                  lui          a0, 472666
                  lui          s2, 331061
                  sltiu        zero, s1, -541
                  sltiu        s6, a0, 466
                  slli         s4, t6, 19
                  or           t1, s3, sp
                  xor          s2, t3, sp
                  sub          s0, s9, t0
                  andi         s3, s4, 1302
                  nop
                  slli         s9, a2, 27
                  lui          s2, 539797
                  or           s7, t6, gp
                  sll          t5, t5, gp
                  xor          a1, a7, s9
                  nop
                  sra          a6, s6, t3
                  sll          t5, t5, s7
                  ori          sp, s6, 1608
                  sra          s9, s2, zero
                  auipc        t6, 731643
                  nop
                  srli         s3, a4, 6
                  andi         a1, s2, 873
                  slt          sp, s8, tp
                  srai         a2, s9, 29
                  addi         gp, t1, 1430
                  add          sp, a3, tp
                  add          s0, s8, s8
                  lui          s8, 57508
                  ori          s10, sp, 536
                  andi         a1, a3, 644
                  slti         s4, a5, 32
                  sub          a1, a6, tp
                  sll          sp, t4, a1
                  auipc        s8, 356068
                  slli         s9, s10, 0
                  xori         a1, tp, 1749
                  add          s8, a7, a6
                  and          a6, s10, s2
                  slli         a7, a2, 8
                  srai         s4, s9, 27
                  sll          s4, zero, s9
                  ori          s2, t4, -1512
                  sltu         s4, zero, a3
                  auipc        s11, 258187
                  addi         s4, t0, 1514
                  sra          s7, a2, s11
                  slli         s0, sp, 30
                  lui          s9, 549142
                  add          s10, sp, s8
                  sll          s5, a6, t3
                  slti         s8, s0, -1328
                  and          t4, gp, s11
                  sltiu        a1, a7, -278
                  and          zero, s9, a0
                  sltiu        s6, s3, -1120
                  addi         s2, s4, 1190
                  sltiu        a2, a1, -99
                  slti         t6, s1, 1054
                  srli         t3, a7, 15
                  or           t4, s5, t1
                  srli         a1, s3, 30
                  add          t6, ra, a4
                  srl          s7, ra, a5
                  auipc        s3, 816887
                  srai         t3, s1, 19
                  srl          s5, a6, s3
                  slti         a7, t5, 697
                  srl          s11, s2, s3
                  xor          a2, a1, t1
                  andi         s9, s9, 1149
                  add          s4, t2, a7
                  srl          a1, sp, t6
                  slti         s6, a5, 1660
                  xori         sp, s9, 1081
                  or           gp, gp, t5
                  add          t0, ra, t4
                  xori         a7, sp, -868
                  srl          s11, a0, t3
                  xori         sp, gp, -1877
                  sub          a4, a7, a5
                  slt          a7, s11, s6
                  slti         s9, s7, 1657
                  srl          t0, s7, zero
                  add          s5, t2, a2
                  auipc        t4, 715263
                  slti         s3, t1, 1653
                  lui          s4, 863526
                  slti         ra, s1, -854
                  slti         s4, t6, 1308
                  slti         s5, s8, -1629
                  and          t1, t2, zero
                  xori         gp, tp, -589
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           gp, 0xffffffff
                  li           s6, 0x9154255
                  li           s11, 0xffffffff
                  li           s10, 0xc6f02dd9
                  li           a6, 0x72eced21
                  li           a4, 0x80000000
                  li           ra, 0x0
                  li           s9, 0xffffffff
                  li           a7, 0xffffffff
                  addi         sp, a6, 1419
                  nop
                  lui          ra, 233995
                  nop
                  addi         s6, a7, 698
                  sub          ra, ra, s6
                  auipc        s11, 956113
                  auipc        s6, 964877
                  sub          a4, a7, s11
                  lui          sp, 407471
                  addi         a7, s6, 1205
                  addi         s9, s11, -1434
                  sub          gp, a7, a4
                  sub          s10, s11, gp
                  lui          s11, 69645
                  add          s10, ra, gp
                  addi         s11, a7, -1871
                  lui          ra, 223187
                  addi         gp, a6, 1186
                  nop
                  nop
                  nop
                  add          a7, gp, s9
                  auipc        s9, 486057
                  sub          a4, a7, ra
                  addi         ra, s10, -1652
                  lui          s9, 623686
                  sub          s9, s11, ra
                  nop #end riscv_int_numeric_corner_stream_1
                  slt          s8, ra, t6
                  addi         gp, a4, 1524
                  sltiu        s8, tp, -463
                  sltiu        t4, tp, 1135
                  slti         t1, a4, -188
                  addi         s9, a6, 803
                  xor          t5, t6, ra
                  srai         ra, a6, 6
                  add          zero, t5, s8
                  srli         s10, ra, 11
                  addi         t1, t1, 210
                  sra          a7, gp, ra
                  xor          t2, s9, s11
                  slti         a4, sp, -303
                  addi         gp, s6, -798
                  xor          a5, s7, s2
                  xor          t2, s4, tp
                  nop
                  and          t0, s6, a4
                  slli         s9, a2, 26
                  slti         a0, s1, -1206
                  srli         s2, s7, 15
                  slli         ra, a7, 30
                  xori         a1, gp, -192
                  slli         a6, a5, 25
                  auipc        s2, 723480
                  sll          s3, s5, ra
                  addi         a2, s10, 1050
                  srai         s6, s10, 30
                  sub          s8, a1, a0
                  sll          ra, a3, s9
                  nop
                  add          s9, s2, s7
                  srli         a2, s5, 31
                  slti         s7, a0, 1856
                  lui          a6, 399338
                  sra          a2, zero, s0
                  ori          t5, t4, -1358
                  lui          t1, 35556
                  xori         gp, s1, 1179
                  auipc        s0, 907339
                  ori          sp, gp, 1158
                  andi         t0, a6, -171
                  andi         a4, t0, -1232
                  sltu         t4, gp, s10
                  and          a2, s1, s6
                  xori         ra, s2, 269
                  and          sp, a7, s0
                  sub          s3, gp, s11
                  or           ra, t2, t4
                  auipc        t2, 496877
                  andi         t5, zero, 2022
                  srli         a2, s1, 1
                  auipc        gp, 68495
                  add          s10, s6, s3
                  sra          ra, s8, s6
                  lui          s10, 459012
                  sub          gp, s2, ra
                  sra          t3, t1, a5
                  sltu         gp, a4, a2
                  sra          a4, zero, s6
                  sll          s7, t3, t2
                  srl          a0, s3, s2
                  slti         t2, ra, -1109
                  slt          a1, s0, a2
                  sltu         a5, a0, a7
                  sltiu        s2, a1, -1058
                  and          s5, t5, a3
                  srai         a7, zero, 1
                  srl          t0, t2, t0
                  andi         s2, a3, -1218
                  sltu         a1, tp, s10
                  nop
                  slt          zero, t4, gp
                  slli         s3, s5, 11
                  nop
                  sub          s4, a3, s6
                  xori         t6, a6, 200
                  add          s5, t3, a5
                  ori          s3, s2, 1316
                  sll          s10, tp, zero
                  sltu         s7, a2, t1
                  or           s4, t3, s3
                  andi         s2, s11, -545
                  sub          s7, s7, a2
                  sll          s8, t3, s11
                  add          s5, a2, t0
                  slli         a1, t0, 6
                  slli         ra, s0, 23
                  andi         t6, t6, -653
                  srai         s6, ra, 17
                  nop
                  addi         t2, s6, -1310
                  slli         a2, s7, 6
                  andi         t0, gp, 912
                  srai         s10, s7, 28
                  slt          s6, s2, t4
                  ori          s6, gp, -1010
                  or           a2, a1, s1
                  sltiu        a1, s7, 1011
                  slt          sp, s0, zero
                  sll          s11, t0, zero
                  sra          s5, ra, s0
                  sra          s9, s2, a6
                  slli         a7, t5, 31
                  lui          gp, 166601
                  addi         t2, a0, 286
                  slli         s3, s0, 0
                  andi         t3, zero, -1522
                  slt          t2, s10, t0
                  or           s4, sp, a0
                  srli         a2, a3, 2
                  slli         s6, t6, 9
                  slti         t2, t0, 1400
                  srai         s5, t3, 6
                  slli         ra, gp, 28
                  slti         s11, t2, -1686
                  slt          s3, tp, tp
                  xor          a4, s0, t1
                  nop
                  auipc        a7, 45474
                  sll          s6, a2, s9
                  or           t3, s1, s0
                  auipc        a0, 713415
                  add          s2, s8, sp
                  xori         a0, s2, 1077
                  andi         a5, s1, 1586
                  slt          s4, s6, a1
                  add          t2, t0, s5
                  sll          gp, a5, t5
                  sub          s11, ra, s4
                  sltu         t0, t6, s10
                  xor          ra, gp, t6
                  slti         a5, a4, -868
                  ori          sp, a0, -750
                  auipc        t1, 896739
                  addi         s3, zero, 164
                  li           a2, 0x1607cc42 #start riscv_int_numeric_corner_stream_15
                  li           s6, 0x80000000
                  li           s2, 0x3d20835e
                  li           s0, 0x80000000
                  li           t5, 0x7a5b1161
                  li           a1, 0x152af1aa
                  li           a0, 0xffffffff
                  li           s8, 0x80000000
                  li           t3, 0x80000000
                  li           t1, 0x80000000
                  add          t1, s2, s0
                  nop
                  nop
                  addi         a1, s2, 1414
                  lui          t3, 291008
                  sub          s0, a0, s6
                  sub          s6, s0, a0
                  lui          t1, 635269
                  sub          a0, s8, s8
                  addi         s2, s6, 978
                  nop
                  lui          t3, 73411
                  auipc        s0, 331819
                  nop
                  add          a0, s6, t1
                  auipc        t3, 326835
                  sub          t5, t1, t5
                  lui          t3, 616114
                  auipc        a0, 280581 #end riscv_int_numeric_corner_stream_15
                  sll          s8, s11, s4
                  slli         s4, s3, 3
                  slli         t5, a2, 11
                  slli         ra, s5, 5
                  addi         a1, a7, 69
                  srai         s6, a3, 14
                  slti         t0, a2, 519
                  auipc        a1, 27064
                  srli         s10, a7, 15
                  srli         a0, t2, 15
                  ori          s2, ra, 1977
                  nop
                  nop
                  sub          t6, s7, t3
                  slt          s2, s7, t4
                  sltiu        ra, s5, 576
                  srl          s9, ra, t0
                  andi         ra, s8, -1342
                  xor          t2, s8, a5
                  and          zero, t2, a2
                  sra          s2, s7, s3
                  andi         a2, s2, -1528
                  or           s9, tp, t6
                  sltu         sp, t5, gp
                  srl          s3, ra, zero
                  ori          ra, s9, 838
                  sltu         ra, t1, s3
                  sltu         s4, t2, a7
                  add          s2, s11, t1
                  srl          s4, s0, sp
                  slt          a0, t3, gp
                  add          a5, s4, s5
                  nop
                  nop
                  sra          zero, s10, s7
                  sra          s8, t0, t1
                  and          t6, a2, s6
                  addi         a5, zero, 1843
                  sltu         s8, tp, s2
                  slli         t2, a7, 5
                  nop
                  auipc        s8, 609462
                  auipc        a2, 377885
                  srl          a1, t6, a2
                  xor          ra, s10, t0
                  sra          t6, a0, s6
                  slli         s7, s11, 5
                  sltu         a1, s7, s3
                  xor          s8, s5, s2
                  sra          s0, s6, a4
                  xor          s5, gp, s9
                  srl          a0, a7, s7
                  lui          t1, 297544
                  and          s8, s1, t1
                  slt          t6, zero, t6
                  sll          t4, s3, a4
                  xor          s7, t2, gp
                  sll          s9, a3, s2
                  lui          s3, 524566
                  ori          t6, a1, 117
                  nop
                  lui          zero, 373799
                  xor          t2, t6, a5
                  xor          s0, s3, s1
                  or           a6, a4, t5
                  and          s2, t0, a5
                  srl          sp, s7, s3
                  sltiu        t5, s8, -1166
                  slti         s0, s7, 1697
                  nop
                  srli         a5, s11, 5
                  nop
                  sltiu        sp, ra, -1435
                  andi         a2, s10, -1103
                  and          s10, a5, s7
                  addi         s4, t5, 713
                  auipc        s3, 378219
                  slt          a6, a5, s0
                  auipc        s0, 500172
                  sltiu        s9, s11, 1118
                  slli         s0, s0, 10
                  xori         a0, s2, -832
                  addi         s2, s6, 1779
                  or           t4, a2, a7
                  srli         s0, a7, 29
                  sll          a6, s10, a6
                  and          a7, a7, a6
                  srli         t4, sp, 28
                  and          a5, s1, ra
                  andi         t6, a5, -275
                  ori          t5, tp, -1265
                  srl          a0, s0, a7
                  srai         s10, t6, 4
                  auipc        s3, 487768
                  srl          a1, s7, t3
                  srl          s8, s9, tp
                  slli         gp, sp, 9
                  addi         s9, s0, -1207
                  auipc        s10, 589219
                  sra          s4, gp, gp
                  srli         s4, a2, 17
                  or           gp, t2, tp
                  and          s2, zero, s5
                  nop
                  nop
                  slli         a0, a3, 14
                  xori         s5, a3, -1666
                  srl          a1, a0, t0
                  slli         a5, zero, 23
                  slti         t3, a1, 760
                  and          gp, zero, a5
                  or           t6, s10, s11
                  andi         s5, ra, -1330
                  ori          a5, s2, 392
                  slt          a4, ra, s2
                  srli         s4, s2, 27
                  ori          gp, gp, -202
                  ori          t0, s3, 527
                  srai         a7, t6, 22
                  xor          s10, s7, t0
                  srl          zero, a6, a6
                  andi         s0, s3, -18
                  sub          t5, a0, s7
                  srl          s6, t3, a2
                  nop
                  srl          t3, t2, t5
                  sll          s0, a7, s11
                  andi         gp, t0, -1031
                  addi         ra, a0, 451
                  sltu         t3, s3, s5
                  addi         a7, t3, 1113
                  slli         a0, t1, 10
                  xori         s4, s10, -1038
                  add          a2, a1, s6
                  slt          s10, a2, s1
                  sll          zero, s10, s8
                  andi         a6, s5, 2043
                  slt          t3, t6, tp
                  lui          a2, 589238
                  ori          a1, s9, 1092
                  srli         a4, s0, 9
                  slti         ra, s11, 1932
                  xori         a1, s9, -22
                  srl          sp, a6, s5
                  sltu         s9, t5, t6
                  sub          s5, s10, t3
                  xori         a7, t4, 1932
                  sra          s0, s6, t6
                  lui          a2, 427067
                  sub          s5, s7, a3
                  xori         t0, tp, 1031
                  sub          a2, s4, a4
                  srl          s7, t2, s7
                  sll          a2, a3, gp
                  sll          s11, sp, s3
                  addi         zero, t4, -94
                  add          s8, s1, t1
                  xor          s5, a3, t6
                  sltiu        s11, t4, -1600
                  ori          s3, t4, 1901
                  sltiu        s2, zero, -821
                  srli         a2, a6, 23
                  ori          sp, s4, -1379
                  xori         a2, a5, -989
                  ori          s6, s10, -615
                  slt          gp, t4, s7
                  auipc        t4, 644991
                  xor          t2, s7, s8
                  and          a6, s9, s2
                  or           a2, t4, s6
                  and          s5, a2, s1
                  xor          ra, a3, s1
                  srli         s9, s5, 12
                  srai         s4, s5, 19
                  and          a2, s4, s3
                  lui          s8, 695353
                  slli         sp, a7, 10
                  xor          zero, s6, s10
                  sltiu        s10, t4, 1264
                  sltu         s3, a2, s9
                  add          sp, a7, s6
                  add          a6, t0, tp
                  srl          s10, s10, a4
                  xori         s8, t1, 629
                  sll          s2, a2, a0
                  slli         s0, s11, 2
                  addi         s6, s3, 1096
                  nop
                  lui          a2, 227044
                  srai         gp, t0, 23
                  or           a5, t5, a7
                  srai         t4, t1, 20
                  ori          s5, s0, 1560
                  or           s10, s7, t3
                  add          t6, s5, s0
                  slti         t5, s7, 626
                  ori          sp, a7, 3
                  auipc        t2, 792144
                  sub          zero, s3, s2
                  or           t6, s11, s4
                  xori         a0, a7, -112
                  sll          s5, tp, a2
                  nop
                  xor          s11, s9, t2
                  addi         a7, t1, 1242
                  srl          t3, s2, zero
                  slti         t1, sp, -209
                  sll          t1, a3, t0
                  lui          t4, 98354
                  sll          a4, sp, sp
                  srai         a0, a6, 12
                  add          s11, s1, t1
                  slti         s9, s7, 959
                  auipc        s11, 123861
                  srl          s11, s4, zero
                  sltu         s5, tp, a4
                  xor          a6, s8, zero
                  addi         a4, s0, -1329
                  slt          s11, t0, t6
                  sub          a5, tp, a3
                  ori          s6, a7, -584
                  srli         t5, a5, 16
                  and          t1, a6, sp
                  nop
                  sra          a0, t6, t2
                  sub          t2, s3, zero
                  xor          t6, s9, a1
                  sub          ra, t6, s2
                  sll          s8, t5, a1
                  ori          t0, a7, -946
                  nop
                  srl          t1, sp, s3
                  addi         a0, t1, -737
                  slti         t6, a1, -3
                  sll          t0, s4, s11
                  sll          zero, s1, a6
                  sll          sp, a6, a5
                  sll          a0, a1, zero
                  auipc        a7, 600650
                  ori          a6, s0, 1773
                  sll          t3, s2, sp
                  srli         s4, zero, 17
                  andi         a1, s2, 1840
                  sltiu        t5, a7, 548
                  lui          zero, 106247
                  sra          t1, t2, s10
                  xor          s0, ra, s3
                  xor          a0, t4, s9
                  slt          s7, s7, s11
                  ori          t5, s3, -2021
                  add          a6, t0, a6
                  auipc        a5, 993018
                  sra          s5, a3, s6
                  and          t0, s8, s11
                  sub          gp, s7, s0
                  xori         t3, s6, 1638
                  add          ra, s2, s10
                  sub          t5, s2, ra
                  sll          s2, s6, ra
                  lui          a0, 25752
                  auipc        t4, 522591
                  slt          s3, t2, ra
                  xor          a4, a1, a1
                  sub          s3, t5, tp
                  srl          s2, s5, a4
                  sll          s0, s10, t2
                  sltiu        a2, ra, -1011
                  sll          t3, s10, gp
                  andi         gp, s9, 508
                  or           zero, gp, s5
                  xori         a2, a5, -1842
                  or           s5, tp, a0
                  xor          a2, a6, a2
                  ori          a0, a4, 466
                  andi         s11, a1, -649
                  sltiu        a0, s8, 1791
                  sltu         a0, s0, t1
                  ori          a4, a7, -1855
                  ori          a0, a6, -1164
                  sltu         t6, t0, ra
                  nop
                  sltiu        t4, s4, -1414
                  srai         s0, tp, 11
                  nop
                  srl          a1, s7, t0
                  srai         a2, gp, 24
                  slti         t4, a7, -967
                  auipc        t3, 258102
                  ori          a4, t0, 10
                  sra          t3, s4, s10
                  sltu         a4, a3, a5
                  sub          s6, a1, tp
                  sub          s5, gp, s5
                  lui          sp, 943570
                  addi         s0, s5, -1672
                  add          s3, a7, t3
                  sub          s7, sp, s9
                  xori         s0, s9, 1014
                  andi         a1, s9, 1700
                  or           ra, zero, t0
                  nop
                  slt          a6, s0, s0
                  srai         zero, s6, 23
                  xori         ra, t2, -473
                  slli         a4, tp, 8
                  sll          a5, a0, s10
                  srai         a6, s11, 6
                  and          a1, t6, s0
                  or           a4, s10, a3
                  slli         t2, t4, 19
                  auipc        t6, 930534
                  sll          s6, t6, t1
                  add          s0, t4, s3
                  sub          s4, sp, t0
                  auipc        s4, 23972
                  auipc        t0, 859391
                  slt          a2, t6, t5
                  slli         a4, gp, 8
                  lui          s4, 97532
                  srli         zero, a3, 23
                  andi         a4, ra, 1910
                  sltiu        t2, t0, 1860
                  sra          t3, a1, tp
                  slt          s8, s11, s3
                  srai         a1, t1, 3
                  add          zero, s0, s2
                  srli         s3, t3, 26
                  add          t1, a6, t2
                  ori          s10, t2, -581
                  add          sp, t2, s7
                  or           a4, s9, s2
                  sll          s0, t0, s10
                  auipc        a6, 901673
                  andi         a2, s10, 2013
                  sll          t5, tp, s10
                  sll          t6, sp, s10
                  sltiu        s3, t3, -1717
                  srli         s2, a5, 18
                  ori          t1, t3, 1095
                  nop
                  sltiu        zero, tp, -837
                  xor          sp, t1, sp
                  lui          a1, 508595
                  sub          s11, s2, t4
                  xor          s4, t1, s3
                  slli         t0, a2, 19
                  srli         s2, s0, 3
                  srl          t5, a2, s5
                  addi         s10, gp, -835
                  auipc        t6, 599316
                  srli         a7, t1, 23
                  lui          s9, 582269
                  sub          a4, a1, sp
                  slt          s10, s8, s5
                  nop
                  lui          t6, 29755
                  sll          s4, t5, t5
                  addi         s2, a0, -874
                  auipc        t1, 794398
                  or           s10, s1, t3
                  sltu         a6, a2, t5
                  sltiu        s9, a6, 1120
                  xor          ra, sp, s8
                  slti         a0, s1, -1893
                  srli         a4, a1, 6
                  xori         gp, s5, 1059
                  sltu         s8, s9, a4
                  xor          t1, t4, t3
                  lui          t4, 1029301
                  slt          s5, s2, a0
                  slli         a7, t4, 13
                  add          a5, t4, s1
                  sub          t2, t1, s5
                  srl          t0, s0, a3
                  sub          s2, t3, t6
                  sra          a6, s8, s9
                  slti         s5, a0, -1529
                  ori          a2, a2, -293
                  srai         s8, t6, 13
                  srli         s10, a5, 5
                  srai         a7, t6, 14
                  addi         a4, t3, -204
                  xor          gp, t0, t6
                  addi         s9, s10, -497
                  sll          s6, t1, s7
                  sltiu        s9, a7, -1169
                  andi         a4, t2, 412
                  srli         ra, a2, 18
                  slt          s11, t4, s1
                  lui          a7, 918292
                  sltu         a7, s6, t2
                  slli         s5, s11, 28
                  auipc        ra, 828200
                  nop
                  slli         t6, sp, 2
                  sll          t3, a6, s3
                  nop
                  sltu         t1, t4, s11
                  sub          s9, s6, s9
                  sltiu        a7, t4, -1131
                  sra          ra, s10, a7
                  srli         s5, a1, 28
                  or           a7, a7, ra
                  auipc        a5, 934551
                  andi         s2, s2, 547
                  ori          t2, a7, -511
                  srai         a4, t3, 22
                  sub          ra, s0, a2
                  and          a2, s2, s0
                  auipc        a2, 310348
                  slti         zero, zero, 1491
                  addi         a6, sp, -16
                  ori          s4, sp, 1016
                  and          s6, s7, t4
                  srl          s11, sp, s4
                  and          s5, a4, s11
                  sub          s2, s2, s11
                  xor          s0, s7, t1
                  andi         s2, s0, -851
                  srai         s7, a2, 0
                  slt          gp, s2, a4
                  and          s4, a2, a1
                  addi         s4, sp, 1809
                  sll          s6, s5, s8
                  and          a0, a6, a1
                  or           s9, s9, a2
                  sll          s0, sp, a5
                  srai         t5, tp, 30
                  sll          a4, t5, s8
                  srl          s0, s4, ra
                  nop
                  add          sp, s11, s5
                  srl          t3, t6, s6
                  or           a6, s9, s11
                  sltu         a0, ra, s10
                  srl          t6, t5, a4
                  lui          ra, 77125
                  addi         s9, s11, -897
                  slt          a0, a1, s4
                  andi         s0, ra, 1153
                  sltu         s11, t2, a2
                  add          ra, ra, a0
                  slli         s4, a6, 21
                  nop
                  srl          t4, a6, s9
                  xori         a1, a4, 487
                  sll          a1, a6, a3
                  xori         zero, a1, 337
                  andi         t6, a4, 457
                  xor          t1, s7, s0
                  xor          a2, s8, ra
                  xor          a5, t3, s8
                  add          s2, s2, ra
                  srai         s2, s6, 17
                  srai         a7, zero, 4
                  or           s10, ra, a7
                  slli         t2, s6, 21
                  slli         t0, a5, 27
                  add          ra, s2, zero
                  srl          s5, sp, t3
                  lui          a2, 892222
                  addi         a4, tp, -259
                  sub          a5, s7, s5
                  add          s5, a6, s8
                  sra          zero, a5, s8
                  sra          a7, t2, a7
                  sltiu        t5, t6, 1968
                  sltiu        s0, sp, 1231
                  ori          s5, t3, -35
                  srl          gp, s3, s10
                  xori         t4, t0, 1184
                  xor          s0, s7, a3
                  slli         s11, zero, 10
                  slt          a1, s10, s6
                  nop
                  and          s7, a0, a0
                  and          gp, s5, t2
                  sra          s5, zero, s3
                  add          t4, s3, a6
                  slt          ra, ra, s0
                  srai         t3, a1, 7
                  slli         t6, s3, 14
                  sra          t6, a7, a4
                  addi         s4, a3, -1464
                  xor          s3, a6, s6
                  andi         a0, s1, -452
                  auipc        a4, 313312
                  lui          t6, 1043143
                  xor          a1, s11, s10
                  addi         s10, a6, 1990
                  addi         a7, a4, -1919
                  add          a6, a2, s9
                  srai         a7, zero, 4
                  andi         s11, t6, 773
                  srli         s3, ra, 13
                  lui          s0, 359978
                  sll          t3, s5, s3
                  slli         s3, zero, 21
                  slti         a4, a2, -316
                  add          t5, ra, t2
                  addi         t6, tp, 1537
                  ori          s7, a4, -495
                  srli         a5, t4, 26
                  slli         sp, t6, 4
                  slt          t2, s6, gp
                  xori         a7, a5, 37
                  slti         ra, t5, 1838
                  xori         s10, a1, 1219
                  sll          zero, a7, s1
                  or           s2, a4, zero
                  auipc        s11, 852857
                  xor          t3, t3, a4
                  slt          s9, t4, s10
                  srl          s5, a4, s9
                  sltiu        s4, ra, -192
                  auipc        s8, 866169
                  slti         s8, s2, 860
                  sltiu        a6, t0, -1668
                  srli         t3, s5, 25
                  sltu         s11, s1, a4
                  lui          zero, 85104
                  auipc        t1, 99117
                  sll          a1, t0, s11
                  auipc        s8, 506861
                  xor          a5, a0, s5
                  addi         sp, s6, 990
                  sub          sp, s9, s9
                  lui          s4, 26208
                  andi         s9, t6, 1782
                  sltu         s2, s8, a0
                  auipc        s2, 749852
                  sltu         s7, a5, t1
                  and          t0, zero, s0
                  xor          t2, s10, s3
                  slt          s4, s2, a5
                  sll          t6, a3, s1
                  nop
                  sll          t2, s3, a5
                  slt          s8, tp, a0
                  xor          a5, a3, a4
                  slt          a7, tp, s0
                  slli         t5, s11, 0
                  sltu         t0, a1, s9
                  auipc        a1, 411443
                  sub          zero, s2, t3
                  auipc        gp, 600844
                  sra          t5, t4, a1
                  xor          s8, s11, a2
                  nop
                  sub          t6, tp, s1
                  sra          s11, s8, s10
                  andi         sp, t4, -1386
                  sltiu        a6, s11, -1445
                  sra          s9, a3, a0
                  srl          a0, s10, sp
                  sra          gp, s2, a6
                  sltu         a6, s5, s6
                  srli         t5, s4, 16
                  sub          a0, t6, a3
                  xor          s2, a5, s4
                  slli         t4, t6, 16
                  addi         t0, ra, 161
                  or           a4, a7, t3
                  lui          t1, 1018818
                  sltu         t6, s10, t3
                  lui          a0, 716830
                  sub          gp, a2, a5
                  andi         zero, t3, -1111
                  xor          ra, a4, t6
                  or           a1, a5, s3
                  slt          a6, a2, s3
                  sltiu        s5, zero, 830
                  lui          s5, 604054
                  srli         s2, gp, 12
                  srli         s2, sp, 26
                  nop
                  srl          ra, t0, a2
                  nop
                  nop
                  srl          s8, a4, a1
                  sltu         s10, s9, sp
                  add          a4, a1, s10
                  srai         t5, a1, 2
                  and          s10, t1, a4
                  andi         s7, t6, 1860
                  andi         a4, s6, 286
                  lui          s8, 65889
                  addi         s2, t4, 147
                  sltiu        t0, t3, 458
                  slt          t5, s5, t0
                  ori          s2, a5, 952
                  andi         s10, s0, 1128
                  sltiu        s7, a6, 1920
                  lui          a4, 598585
                  and          a0, s3, t1
                  sub          zero, t0, s0
                  nop
                  andi         t4, t3, -1350
                  slli         t3, sp, 28
                  slt          a2, s11, ra
                  srl          gp, t2, s5
                  add          a1, a1, t2
                  slti         s6, a6, 315
                  slti         a7, a7, 717
                  slt          s10, a5, t5
                  nop
                  sltu         s5, s11, s0
                  slli         zero, zero, 3
                  li           s2, 0x64b0355 #start riscv_int_numeric_corner_stream_13
                  li           t1, 0x0
                  li           t3, 0x1103001
                  li           s11, 0x0
                  li           s3, 0xffffffff
                  li           t6, 0xffffffff
                  li           t5, 0xffffffff
                  li           a4, 0xffffffff
                  li           s5, 0x0
                  li           t0, 0xbf09f578
                  auipc        s3, 1033959
                  auipc        t5, 218991
                  addi         s3, t5, 1265
                  nop
                  addi         t6, s3, -2043
                  lui          t1, 54207
                  sub          t1, s5, t3
                  auipc        t0, 212299
                  lui          s3, 686174
                  addi         t1, s5, 535
                  sub          s2, s11, t5
                  lui          t6, 890077
                  auipc        s11, 102594
                  lui          s5, 595133
                  sub          s11, t5, t3
                  auipc        s5, 831491
                  sub          t3, t0, s5
                  lui          t1, 519932
                  add          t0, t1, a4
                  addi         t5, s5, 1676
                  auipc        t3, 137258
                  addi         s11, s5, 1306
                  sub          s3, t0, t3 #end riscv_int_numeric_corner_stream_13
                  sltu         t6, ra, a2
                  slli         s3, s3, 15
                  andi         sp, t5, 294
                  ori          t6, a2, -755
                  slt          s9, a7, gp
                  and          s10, t1, s1
                  sra          t3, a5, s10
                  sltu         t0, a5, a3
                  slti         s2, a5, -767
                  lui          a0, 617452
                  xori         s6, s7, 795
                  andi         sp, sp, 1048
                  sltu         t5, s6, s2
                  andi         a4, a6, -1427
                  srl          s3, s7, s3
                  or           t1, s5, ra
                  lui          t3, 147008
                  srli         a0, a1, 25
                  slli         zero, ra, 13
                  auipc        t2, 4719
                  ori          s11, t1, -1177
                  add          t2, s11, s4
                  slli         t4, s1, 22
                  slt          s3, t2, s0
                  sltiu        t2, s9, 1065
                  nop
                  auipc        t2, 97094
                  sra          sp, t3, a1
                  lui          zero, 222889
                  sub          a2, a1, s2
                  andi         a6, a1, -1563
                  sll          s5, s3, s0
                  sra          s6, zero, t6
                  lui          s10, 772931
                  lui          s11, 842829
                  lui          t5, 796746
                  sra          a6, tp, t4
                  slti         s0, tp, 1608
                  slt          s9, a0, a4
                  slli         s2, s10, 17
                  srai         t5, s0, 17
                  sltu         zero, s10, s1
                  ori          a7, a4, 765
                  sll          s9, zero, a1
                  add          a7, t5, s8
                  sub          t3, s0, a3
                  xor          gp, s2, t3
                  addi         t4, s11, 49
                  add          s0, t4, s1
                  sll          s3, t3, a5
                  srl          t5, ra, t5
                  andi         t6, s8, -219
                  and          t5, s0, s5
                  srai         t6, s4, 15
                  sll          t1, s2, s11
                  sltu         a1, s6, a6
                  srli         a0, s0, 31
                  sltiu        a2, t1, 19
                  xor          t3, t0, s11
                  srli         ra, tp, 1
                  nop
                  slt          s9, a5, t3
                  and          s0, t2, s7
                  slli         a4, t6, 29
                  and          a1, zero, t2
                  slli         s5, t1, 10
                  lui          a2, 265874
                  slli         s10, s1, 12
                  xori         a2, t6, -1085
                  nop
                  andi         t3, a0, 1587
                  or           s2, a0, a1
                  sra          s0, a6, s7
                  add          s9, s9, a2
                  nop
                  and          sp, a6, a2
                  xor          s11, s5, s3
                  sltiu        s0, s1, -1287
                  and          t0, s2, s6
                  sra          s4, s6, a4
                  sltu         a7, gp, t5
                  xor          sp, zero, s5
                  slli         t1, a6, 12
                  xor          gp, t5, a2
                  xor          t0, zero, s2
                  sra          s8, a3, s10
                  lui          a1, 602349
                  lui          t1, 649232
                  ori          s6, s11, -1153
                  ori          s10, s5, -2034
                  or           a6, t0, a1
                  xor          t3, s11, a7
                  srli         t5, gp, 22
                  slt          sp, t3, t5
                  slli         s6, a2, 17
                  srli         s6, s5, 2
                  nop
                  xor          s6, s0, tp
                  ori          a6, ra, 188
                  slti         zero, t3, -1826
                  sra          s0, s9, s1
                  slli         a5, s2, 22
                  addi         a7, s11, -1937
                  ori          sp, a7, -449
                  andi         a5, a5, -946
                  slli         s7, s4, 27
                  slli         s11, s0, 16
                  sll          s10, s4, a6
                  xori         a6, s0, 626
                  sltu         s5, a3, a6
                  addi         a7, sp, -1724
                  lui          s6, 825141
                  sra          sp, t6, sp
                  addi         gp, s7, 490
                  add          a2, zero, s10
                  slti         t2, t4, -516
                  srl          s10, t0, s7
                  add          s9, tp, s7
                  andi         a0, s8, 1560
                  andi         a6, s6, -1306
                  sra          t0, s0, s1
                  andi         s11, s6, 460
                  srai         t1, t4, 8
                  addi         s5, t6, 1451
                  srl          a5, t2, s10
                  sltu         a2, t6, t6
                  slt          a6, s1, a1
                  addi         sp, s6, -406
                  slt          a7, t3, a2
                  sltu         zero, s4, s9
                  srli         a4, s11, 28
                  srli         t2, t0, 16
                  auipc        s5, 661920
                  xori         t2, a2, 1133
                  srl          t0, s2, a5
                  add          a7, s3, sp
                  slli         s3, s9, 25
                  slt          s2, s9, s8
                  sltiu        s10, t6, -621
                  auipc        t6, 659699
                  add          t6, s1, a4
                  srai         gp, tp, 10
                  sll          a1, a1, t3
                  sltiu        s11, a0, 1754
                  sub          gp, t4, s4
                  addi         t3, t5, -1238
                  sltiu        s9, t6, -1279
                  srai         s5, s1, 31
                  addi         s3, s2, -1420
                  sll          a0, a2, s3
                  add          zero, t1, a6
                  srai         s7, t6, 14
                  xori         t6, s11, 1440
                  slli         s9, a0, 2
                  sub          t3, t1, t2
                  sltu         s2, tp, a0
                  xor          zero, s1, a2
                  xor          t5, gp, s1
                  andi         s0, a3, 514
                  sra          t0, s1, a5
                  xori         a4, s2, 1116
                  srl          s10, gp, t3
                  sltiu        a6, t6, -1298
                  auipc        a7, 291836
                  srl          a0, a0, s11
                  sltiu        s11, s10, -713
                  lui          s2, 125545
                  srai         s9, s2, 6
                  srl          s7, s3, s3
                  andi         a6, s10, 1165
                  slti         s6, sp, -841
                  nop
                  or           a5, a4, sp
                  and          t1, s10, a2
                  nop
                  nop
                  andi         ra, t0, 295
                  slt          s2, a5, a7
                  sll          t3, t0, s2
                  andi         t0, t2, 1584
                  slt          gp, t6, s8
                  ori          s3, t1, 720
                  xori         s3, sp, -864
                  sra          t1, t6, s6
                  sra          a0, s0, a1
                  and          t6, s7, s5
                  ori          t4, t6, -1546
                  sltu         a0, sp, t1
                  or           sp, a1, s2
                  lui          t6, 308543
                  auipc        s2, 97894
                  sra          sp, s5, a2
                  add          a2, a5, s8
                  srl          a4, s8, gp
                  andi         zero, tp, 1856
                  nop
                  slli         s11, t0, 15
                  slt          gp, s11, a7
                  sub          sp, s5, a4
                  andi         t0, s6, -159
                  auipc        t0, 953349
                  sll          t6, a5, t1
                  ori          s11, a7, 1212
                  and          t1, t3, t1
                  sra          s5, zero, s4
                  xor          s0, a2, t3
                  sltu         s3, a1, s8
                  lui          s3, 69862
                  auipc        t3, 941546
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           s4, 0xfbd54fd3
                  li           gp, 0x0
                  li           s2, 0x80000000
                  li           a4, 0x0
                  li           s11, 0xffffffff
                  li           s8, 0x80000000
                  li           a2, 0x80000000
                  li           s0, 0x80000000
                  li           ra, 0xa416adb8
                  addi         ra, a2, -1886
                  nop
                  addi         s11, t4, 193
                  sub          s0, s11, a4
                  add          a4, ra, a2
                  nop
                  lui          s2, 414452
                  lui          a4, 774174
                  lui          t4, 581366
                  add          ra, s0, s4
                  addi         s8, s11, 939
                  lui          s0, 604926
                  addi         s0, s0, 943
                  add          t4, s8, a4
                  lui          t4, 966758
                  nop
                  auipc        ra, 28445
                  lui          ra, 323888
                  lui          a4, 291944
                  addi         t4, a4, -1318
                  auipc        s4, 362690
                  addi         s4, s2, -1472
                  addi         s0, s11, 648
                  nop
                  nop
                  nop
                  auipc        gp, 817025
                  sub          a2, t4, s11
                  addi         s11, s0, 301
                  sub          gp, a2, a2 #end riscv_int_numeric_corner_stream_17
                  addi         s9, t4, 179
                  andi         a4, s7, 287
                  lui          a5, 710180
                  srai         s4, t1, 22
                  slt          gp, s2, a0
                  srai         s4, s11, 6
                  srl          s4, gp, gp
                  srl          s4, t6, a7
                  add          s9, t0, s2
                  sub          zero, s11, a5
                  sra          s9, s1, t4
                  sub          s0, a5, s5
                  srl          a1, a5, t4
                  auipc        t6, 213394
                  srai         t6, s7, 16
                  andi         t3, s11, -1371
                  srl          s5, ra, s4
                  andi         s3, ra, 1803
                  srai         s10, zero, 21
                  sra          sp, t2, s5
                  sltu         a7, a7, s10
                  srl          s3, a4, s1
                  addi         t5, a0, 778
                  sll          s9, t2, a0
                  srai         s5, t5, 4
                  and          s8, sp, s6
                  and          t6, s5, s0
                  srli         t2, s11, 22
                  sra          gp, t2, t3
                  nop
                  xori         a5, a6, -649
                  lui          t0, 922340
                  add          a4, a5, s1
                  sltiu        s11, t1, -995
                  andi         a7, gp, -1693
                  sra          t1, tp, s7
                  slt          s10, sp, s8
                  sub          t5, t1, a4
                  srl          s3, t4, t6
                  add          t3, a6, s2
                  add          s6, a1, a4
                  andi         t5, t1, -1935
                  srl          gp, a3, s8
                  add          ra, s7, a4
                  sra          a0, t6, ra
                  and          s8, t1, s6
                  sltu         t1, zero, a4
                  ori          s8, a2, 1872
                  xori         s7, a0, -1553
                  xori         gp, ra, 209
                  auipc        t4, 22622
                  and          t2, t3, s3
                  xori         s0, zero, -46
                  sltu         t0, a1, gp
                  sll          sp, s2, tp
                  or           ra, a7, a0
                  nop
                  sltu         s8, t3, s10
                  srai         s7, t5, 22
                  sub          a6, a4, s3
                  srai         zero, t5, 13
                  andi         a0, sp, 1188
                  ori          s9, a1, -833
                  slti         s0, t5, 777
                  and          a6, s8, a6
                  slti         t2, t4, 1871
                  slli         a2, ra, 5
                  addi         zero, a7, 1971
                  xor          t3, s2, a0
                  or           a2, s4, a5
                  ori          s6, a5, -229
                  sra          gp, a4, s6
                  sra          a5, s7, s4
                  sltu         t6, a3, s3
                  andi         a7, s7, 1790
                  sltiu        s11, t1, -35
                  xori         s2, a6, -282
                  addi         s9, s7, 2005
                  xor          t3, zero, s1
                  srai         t1, tp, 3
                  srli         s0, t5, 6
                  sra          t0, s9, zero
                  slti         t6, t5, 102
                  slli         t0, s6, 27
                  slti         ra, a1, -601
                  addi         a7, ra, -1135
                  lui          t2, 41922
                  auipc        s6, 732124
                  sltiu        a0, t4, 58
                  srl          s3, s7, s3
                  and          t3, t3, s9
                  xor          a0, t5, t1
                  and          s8, t1, s11
                  sra          s6, sp, t0
                  ori          s4, a0, -258
                  sll          sp, s9, s0
                  nop
                  xori         t6, a7, 1874
                  ori          ra, t5, 680
                  add          sp, s4, s6
                  srl          a2, t4, sp
                  sub          a4, t6, s0
                  add          s8, s2, sp
                  srai         a4, s6, 1
                  add          a2, s2, t1
                  xori         s5, s4, -1448
                  xor          t4, sp, tp
                  nop
                  srai         s10, s6, 18
                  lui          t2, 385985
                  ori          t4, s10, -1230
                  addi         s4, a0, 787
                  add          a5, zero, tp
                  addi         t0, s5, -1708
                  ori          a6, s2, 1939
                  sra          a1, a0, s1
                  xori         a6, a7, -647
                  sub          a5, s7, tp
                  slti         a2, gp, 1213
                  srai         s3, s1, 19
                  xori         s11, s0, -618
                  slt          s11, a0, a4
                  slli         s6, s0, 8
                  srli         t2, zero, 28
                  slti         s5, t1, -1264
                  sltu         a0, s1, t0
                  srai         a1, t2, 16
                  sll          a7, t0, s0
                  andi         t1, t5, -1487
                  srai         t4, a3, 4
                  andi         s6, s4, -1609
                  lui          a2, 433265
                  sltu         s10, a3, a3
                  add          zero, gp, s10
                  andi         s4, a3, 1788
                  nop
                  ori          a5, a0, 1085
                  andi         s6, zero, 1436
                  sltu         a0, s7, sp
                  or           s6, t2, t3
                  addi         s4, a5, -1809
                  srl          s0, s6, s4
                  slli         s10, gp, 24
                  sub          a6, s11, s9
                  lui          s11, 445371
                  sub          ra, t6, s2
                  addi         t4, a5, -1
                  sub          t5, a2, s2
                  or           t1, zero, t4
                  and          s11, a5, t1
                  srli         a1, ra, 4
                  slti         t4, t0, 510
                  addi         a1, s3, -1333
                  sra          a1, zero, a6
                  srli         a4, s7, 22
                  ori          a0, zero, -1421
                  sltiu        s9, a4, 1834
                  addi         s0, a6, 314
                  lui          s5, 1809
                  or           s8, a3, s2
                  srli         t6, s6, 17
                  or           t1, t4, t6
                  ori          a2, s10, 38
                  add          gp, s3, s10
                  slli         zero, s3, 20
                  lui          t1, 276296
                  addi         a2, s9, -6
                  srli         s9, t4, 18
                  add          t1, a1, s9
                  sub          t2, a4, s4
                  addi         s2, gp, -1729
                  nop
                  xor          a5, s1, ra
                  andi         s10, s9, 1671
                  andi         a7, s6, -1161
                  and          ra, a5, s8
                  sll          s0, s10, t1
                  sra          a1, a0, s4
                  slt          t5, t2, s4
                  sltu         s6, t3, a7
                  slti         t5, a1, 1825
                  xor          t5, s8, t6
                  srl          t1, a1, s9
                  slli         t2, s6, 6
                  sltu         a1, t0, a7
                  sltiu        a1, s8, 1208
                  srl          s6, s11, s1
                  and          a5, s10, a1
                  sltu         t4, t0, a3
                  sltiu        t0, s9, -1741
                  addi         s9, t6, -716
                  srli         s0, t0, 0
                  srl          a2, s11, ra
                  sub          t3, a4, s9
                  sra          ra, t6, a7
                  slli         s8, a7, 24
                  or           t1, s8, a3
                  sra          gp, gp, a7
                  addi         t5, s4, -1013
                  addi         a5, t6, -731
                  srli         a0, gp, 25
                  sra          t0, t1, tp
                  and          t4, t2, t4
                  slli         a5, t5, 1
                  add          a6, s10, s6
                  slli         s9, s9, 5
                  lui          t5, 591268
                  auipc        t0, 1044196
                  slti         ra, t0, 1250
                  add          t4, a3, s8
                  srli         s6, s6, 10
                  addi         t1, gp, 1673
                  auipc        ra, 980586
                  srl          s4, s2, s9
                  srli         t3, gp, 13
                  andi         t6, s8, 488
                  srl          s10, a3, a5
                  sra          a4, s0, t2
                  srli         s4, ra, 20
                  sltu         t0, s5, ra
                  xori         s0, a4, -1620
                  slt          gp, t0, s11
                  add          a7, s11, a1
                  auipc        t4, 295266
                  add          s4, a6, gp
                  srli         s11, a2, 29
                  slli         a0, s5, 23
                  lui          a6, 294142
                  sra          s8, t6, s4
                  lui          s11, 789106
                  add          s6, t2, sp
                  srli         s4, s6, 7
                  xori         a1, ra, -145
                  srai         t2, a1, 9
                  sub          s11, s7, tp
                  ori          a7, t0, 1661
                  or           sp, t1, s1
                  addi         s0, s1, -1081
                  lui          s5, 1043745
                  sll          a0, s6, a5
                  or           s8, s0, a2
                  xori         s4, t5, -538
                  slt          s9, s10, tp
                  slli         a0, s7, 28
                  xor          s10, a3, a7
                  auipc        a7, 35674
                  sltiu        s5, t3, 454
                  slt          s8, s3, a7
                  sltiu        a2, t4, -1750
                  or           s3, tp, t1
                  nop
                  addi         t6, s5, 1532
                  sra          s11, a0, gp
                  nop
                  slt          t6, t5, a0
                  slti         s9, a4, -644
                  slti         t1, a1, 1653
                  and          t2, t2, a3
                  sltu         s2, ra, s7
                  add          t4, tp, s3
                  ori          ra, t6, -253
                  ori          sp, s9, 573
                  srai         s5, s7, 6
                  xor          a4, s10, a7
                  srl          a5, t4, s1
                  slt          s8, s11, t0
                  lui          a6, 5257
                  andi         s0, t6, -1311
                  andi         gp, s11, -1765
                  or           s4, s7, tp
                  sltiu        t4, s5, -719
                  lui          gp, 31750
                  sll          t2, t3, t2
                  srl          s2, s8, t4
                  or           a4, s9, s10
                  slt          s10, t2, s4
                  addi         s6, sp, -927
                  add          s0, s10, gp
                  andi         t4, t0, 1965
                  sltu         t4, t5, a6
                  sub          s3, t5, s1
                  add          zero, s11, ra
                  addi         a1, s4, -458
                  nop
                  slli         t2, t1, 2
                  and          a0, t5, ra
                  srl          t3, t2, t4
                  xori         s7, s0, 281
                  slli         t3, sp, 18
                  sll          t3, sp, a1
                  slli         ra, gp, 20
                  add          s8, s1, a1
                  sll          ra, s8, a6
                  srai         zero, a6, 24
                  sub          t2, t2, s9
                  sll          s8, s10, t1
                  xor          gp, a3, zero
                  xor          a7, s9, a4
                  srli         a7, a5, 28
                  slti         s6, tp, -1201
                  ori          gp, s8, -480
                  auipc        t6, 741083
                  add          t2, gp, s5
                  sra          s7, tp, a5
                  slt          a0, a0, t4
                  lui          s8, 302201
                  slti         a1, s11, 508
                  addi         s7, ra, -1431
                  xori         t2, a1, -1958
                  ori          a4, s11, -1018
                  sll          s5, gp, s6
                  xor          t0, a2, s7
                  slt          a1, s7, s1
                  and          ra, t1, sp
                  sltu         s11, s11, a6
                  slt          s2, t4, tp
                  xori         t0, a6, 1622
                  srai         zero, t1, 11
                  sra          t2, a1, t5
                  sltu         s10, ra, zero
                  nop
                  auipc        zero, 818031
                  or           ra, s2, zero
                  srli         a0, s8, 15
                  sra          s7, s6, s0
                  or           t4, s4, t2
                  sll          s2, zero, s4
                  srli         s10, s7, 20
                  srai         t5, tp, 4
                  add          ra, a0, sp
                  sltu         t1, a1, t0
                  xor          s3, a2, s5
                  addi         sp, s10, -323
                  srai         s4, a5, 12
                  srl          a2, t3, a6
                  sub          a2, t3, s9
                  sltiu        t1, t2, -441
                  andi         t4, s7, -251
                  xor          s2, s11, zero
                  sll          s4, s10, t4
                  sltu         a6, s8, a4
                  sll          s6, t6, a3
                  or           a6, a5, a2
                  and          s7, t5, t5
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s8, 0xffffffff
                  li           t5, 0x80000000
                  li           a2, 0x0
                  li           s9, 0x0
                  li           s11, 0x80000000
                  li           s6, 0x0
                  li           sp, 0x0
                  li           a7, 0xffffffff
                  li           a0, 0xffffffff
                  lui          s8, 258383
                  nop
                  addi         a7, s4, 1212
                  nop
                  nop
                  add          s6, sp, s6
                  sub          s11, s4, a0
                  lui          s6, 839728
                  addi         s8, a2, -1655
                  addi         a2, s6, -377
                  auipc        s4, 230717
                  lui          s8, 131639
                  addi         a7, s6, 1031
                  auipc        s8, 13763
                  auipc        a0, 942598
                  sub          s4, s8, sp
                  sub          s11, s6, a0
                  add          a7, a7, a7
                  auipc        a7, 8267
                  auipc        a7, 504104
                  addi         a0, a0, -1846
                  nop
                  add          a2, a2, s9
                  nop
                  lui          sp, 342353
                  auipc        sp, 231628
                  auipc        a2, 1045399 #end riscv_int_numeric_corner_stream_11
                  srai         s9, t2, 6
                  nop
                  nop
                  nop
                  sll          t0, t6, a3
                  andi         a0, s11, 582
                  sll          zero, a7, s1
                  sltiu        s4, s9, 60
                  srli         gp, s5, 23
                  xor          a1, s10, s7
                  srli         s9, s2, 22
                  ori          zero, s0, -137
                  slt          a7, s11, s4
                  slt          s4, ra, s0
                  slli         a6, s5, 29
                  auipc        t5, 63522
                  ori          s0, s4, -1877
                  lui          s6, 186990
                  xori         s5, a1, -1855
                  sltu         s8, s8, a6
                  andi         s8, a4, -705
                  add          t4, s4, a1
                  nop
                  sub          a2, a0, zero
                  sltiu        t4, a1, 1956
                  auipc        s2, 983486
                  or           s0, a4, s1
                  ori          a6, s3, -193
                  srl          t0, s2, t5
                  slti         s6, s0, 1312
                  sltiu        gp, a3, -1703
                  andi         s8, a0, -535
                  and          a5, t3, s5
                  andi         t0, s8, 378
                  sub          sp, a4, t6
                  slli         s10, t1, 6
                  sltu         s11, s2, s11
                  add          s4, t0, s5
                  sub          s8, sp, s4
                  slt          a7, t5, s2
                  sll          s7, a0, tp
                  sltu         t0, s6, s10
                  sltu         s6, t6, s4
                  add          s7, a1, s7
                  andi         t5, a6, 74
                  lui          t3, 615781
                  sltu         s4, a1, s7
                  slt          s5, a1, a0
                  add          t6, s10, t6
                  srl          t6, s10, t0
                  add          s3, a2, s11
                  slt          s3, a0, a0
                  or           s0, sp, t3
                  xori         s10, t4, 858
                  andi         t2, a2, -1715
                  sltu         s7, s3, t1
                  ori          t0, a6, 830
                  ori          s9, s6, -1726
                  sll          a7, s4, t5
                  or           t6, t3, a0
                  add          s0, s8, s10
                  add          a2, zero, s9
                  srli         t0, t6, 12
                  auipc        a7, 331342
                  sub          a0, s11, a0
                  sltiu        a7, tp, -685
                  xori         s11, a1, -419
                  sltu         ra, t0, s10
                  xor          ra, s1, s4
                  srl          t4, s2, s2
                  ori          sp, s11, -2043
                  nop
                  xori         s3, a5, 1707
                  addi         t3, s11, 846
                  sra          a6, t5, t3
                  slt          s3, a3, s4
                  sltiu        t3, zero, -1910
                  sll          s2, s5, s4
                  srl          a1, tp, s2
                  xori         s2, a7, 821
                  and          a4, s6, s2
                  add          a1, zero, t4
                  slli         gp, s5, 31
                  srai         t3, s8, 2
                  srl          s6, t4, t6
                  slli         s2, t1, 19
                  slli         s7, t2, 2
                  srai         ra, s4, 29
                  sltu         a4, s4, zero
                  slli         zero, t6, 19
                  sra          s8, s7, sp
                  xor          a0, t1, s2
                  srai         t3, a1, 16
                  slt          s0, sp, s8
                  addi         t2, s1, 1806
                  slli         s4, a3, 25
                  add          t5, t3, zero
                  add          a7, t6, a6
                  auipc        ra, 622759
                  srai         s8, tp, 19
                  sltu         t4, s11, t0
                  slli         t4, a4, 13
                  sub          t5, zero, t0
                  sltiu        t5, a4, 872
                  sltu         a2, a7, gp
                  and          s9, a4, s9
                  srai         t3, s7, 17
                  slli         a4, a7, 27
                  sll          a2, t1, t1
                  sub          s6, t2, ra
                  lui          a1, 46008
                  slti         a0, a3, -1940
                  ori          t2, a1, 448
                  and          a6, a4, s3
                  slli         a7, s9, 18
                  sltu         t5, a6, s4
                  slt          t5, a5, s8
                  sub          a4, s1, s11
                  sll          a0, t3, t4
                  sltu         s11, sp, t4
                  andi         s3, gp, -1601
                  xori         t1, s9, 1169
                  andi         s4, a0, 1545
                  slti         a4, a0, 2016
                  addi         t2, s7, -793
                  andi         s11, t4, 1511
                  sub          a4, t5, t0
                  sll          s11, a2, s8
                  xori         s10, s8, -777
                  and          gp, a0, t4
                  andi         a2, t6, -57
                  slti         zero, ra, 2022
                  slli         a7, s11, 0
                  lui          t5, 202912
                  slti         s9, sp, 1267
                  srli         s7, t6, 4
                  slt          s0, a1, sp
                  auipc        a1, 353021
                  sub          a6, s0, t6
                  srli         a7, s9, 13
                  xori         a1, zero, -1716
                  srli         gp, a3, 21
                  auipc        t6, 217520
                  and          t3, s4, a2
                  srl          t2, s9, ra
                  add          gp, tp, s7
                  nop
                  slti         a4, s5, 2039
                  slti         s9, s1, -1583
                  sra          t5, a7, t1
                  slli         t1, t0, 0
                  sub          s3, s10, s6
                  auipc        a6, 1003405
                  sll          a7, s11, a3
                  andi         t6, s1, -1556
                  sub          zero, s9, a1
                  xori         t0, t1, -1041
                  srai         sp, s9, 22
                  andi         s0, s4, -1612
                  slti         s11, s9, -1047
                  add          a2, t1, t2
                  slti         a6, s7, 1950
                  addi         t1, a5, -583
                  slli         a7, t3, 6
                  or           a2, a4, s6
                  srl          a4, a4, a5
                  nop
                  sub          t2, s6, a1
                  sra          gp, t2, s9
                  xor          a5, s7, a2
                  or           s7, s7, t4
                  lui          a4, 602500
                  sll          a0, t3, gp
                  xor          a6, t4, a5
                  slli         sp, s0, 20
                  srai         s5, s0, 3
                  srl          sp, s10, a2
                  and          t6, t4, s11
                  slt          t3, a6, t2
                  sub          s9, a2, tp
                  slt          gp, zero, s6
                  lui          t3, 524056
                  add          ra, t0, t1
                  auipc        s9, 1017169
                  lui          sp, 891487
                  andi         s10, a7, -468
                  lui          s7, 277817
                  ori          a7, a7, -1947
                  slli         t3, s2, 10
                  srli         s0, s8, 24
                  nop
                  and          s10, a4, t5
                  sub          s11, tp, s6
                  ori          s11, s3, -1032
                  xor          s11, t1, s9
                  srl          t6, sp, s2
                  and          a2, a0, zero
                  sra          s11, gp, t3
                  or           sp, a7, a3
                  srl          t1, t3, sp
                  nop
                  nop
                  xori         s2, zero, -1801
                  srai         t4, a3, 4
                  nop
                  ori          a6, t3, 193
                  xori         a2, a1, 563
                  or           a1, a2, a3
                  add          t6, s10, a2
                  ori          t6, a0, -1783
                  addi         sp, t3, 625
                  srai         a5, a4, 31
                  addi         sp, s8, 1260
                  xor          t6, t0, t2
                  lui          s7, 233645
                  addi         t3, t3, 1628
                  sltiu        a0, s11, -31
                  slti         sp, gp, -1350
                  srli         t1, t2, 8
                  lui          s7, 898548
                  sra          t4, a0, a4
                  nop
                  slt          a4, t4, gp
                  ori          s4, t5, 198
                  srl          t2, t1, a5
                  sltiu        t4, a2, 1730
                  slli         ra, t0, 20
                  and          ra, t4, s0
                  srai         s10, s2, 1
                  addi         a0, s8, -1657
                  ori          a7, s0, -257
                  auipc        gp, 695952
                  xor          s0, s8, s1
                  slti         s6, s0, -454
                  srai         t2, a5, 17
                  ori          t1, s0, -874
                  auipc        s8, 835955
                  and          s11, t6, a1
                  or           s2, zero, gp
                  srai         a5, a6, 24
                  or           a7, s2, t6
                  xori         s8, tp, 101
                  auipc        s3, 426475
                  slt          t2, t2, a7
                  andi         sp, t4, 1094
                  slli         s8, a0, 17
                  addi         gp, t3, 1845
                  sra          a2, a1, s7
                  add          t6, s1, s8
                  addi         s7, s6, -24
                  nop
                  sltu         t5, s7, s7
                  ori          zero, s6, 528
                  sra          s5, t5, t4
                  add          gp, a1, s5
                  srl          a7, s7, a6
                  sra          s9, sp, a7
                  sll          s6, s2, a6
                  sra          a4, a7, zero
                  add          s6, ra, t1
                  srli         t5, gp, 23
                  xori         s6, zero, 1325
                  and          t5, s7, a6
                  sll          s2, a7, t3
                  srl          s6, a5, t0
                  auipc        a1, 796387
                  srl          a2, s10, s8
                  slt          s7, t1, a6
                  andi         a1, a0, 766
                  sltu         s3, t1, s2
                  xor          s5, t3, s5
                  srai         gp, s2, 16
                  slti         a2, s6, -1832
                  xori         s6, s3, -993
                  slt          s7, t1, s4
                  andi         s4, a1, 2039
                  srai         a1, s1, 31
                  srli         s10, a0, 22
                  lui          a7, 782904
                  xor          gp, zero, gp
                  srli         s8, s7, 20
                  slti         s4, s4, 509
                  sltiu        s3, s9, 892
                  nop
                  auipc        zero, 687712
                  sltiu        t0, a0, -1211
                  xor          a0, s3, s0
                  srai         t2, a0, 7
                  nop
                  ori          s3, a3, 11
                  slti         sp, ra, -260
                  addi         t0, s6, -1832
                  or           t2, ra, sp
                  slt          t3, s5, s0
                  xori         s2, a4, -65
                  slti         s9, tp, 653
                  ori          s5, t5, -1606
                  slli         s6, t1, 6
                  sltu         a2, a1, t6
                  sltu         s3, s11, t1
                  slt          t5, a1, a7
                  or           a7, s5, a2
                  sra          t2, a5, ra
                  slli         t5, s0, 0
                  srai         sp, t2, 17
                  lui          s8, 207699
                  slti         s7, a3, 1884
                  nop
                  lui          a5, 822841
                  auipc        sp, 534852
                  andi         a2, a2, 622
                  or           t3, gp, a1
                  sra          t0, s11, s2
                  or           s5, s7, t2
                  srl          zero, s6, a5
                  xor          a0, t4, a3
                  xori         a1, s8, -681
                  or           t5, tp, a4
                  slt          t2, s2, s2
                  and          ra, s10, s5
                  sra          s3, t3, s2
                  sltu         t3, s1, s11
                  and          s11, tp, s11
                  and          sp, tp, t0
                  sltu         s9, s6, a2
                  ori          s7, t1, -2039
                  srli         t3, a7, 4
                  sll          s9, t3, s7
                  srli         t5, s6, 23
                  andi         s9, a6, 1575
                  sub          t3, a3, s2
                  sltu         a5, tp, s6
                  ori          s2, s0, -957
                  add          zero, t6, s0
                  sltu         a4, s4, zero
                  ori          t4, ra, 1604
                  xor          gp, a3, s3
                  sll          s6, a4, a1
                  ori          t0, a4, -100
                  ori          s2, s10, -467
                  sll          sp, s9, tp
                  ori          s8, zero, -1979
                  srli         s9, s9, 2
                  sltu         t1, t6, sp
                  ori          a1, s2, 537
                  srai         sp, a0, 24
                  xori         t0, s0, -690
                  or           sp, tp, s4
                  and          s4, s2, zero
                  slti         s11, a1, 464
                  auipc        s5, 140086
                  lui          s11, 840458
                  add          s10, t2, ra
                  nop
                  slti         a0, ra, -1245
                  sub          s0, gp, s11
                  xori         zero, t1, -1848
                  andi         s6, tp, -1290
                  auipc        s0, 696081
                  or           a4, ra, t0
                  srl          s10, t0, ra
                  sltiu        s10, t1, -295
                  sra          s9, s8, sp
                  sltu         a0, s4, a1
                  and          a5, t3, t0
                  sll          s2, s6, a5
                  addi         s8, t6, 165
                  add          t2, a7, a4
                  sub          s9, tp, s1
                  or           t5, a6, a0
                  addi         s6, s10, -565
                  srl          s0, s10, ra
                  andi         s8, t6, 992
                  slt          s11, s7, a5
                  xori         a2, a1, 1327
                  sltu         t6, t1, s10
                  slli         s5, s5, 8
                  slti         s4, t0, 1082
                  ori          a2, s3, -1241
                  xor          s11, a6, s4
                  andi         a7, t4, -1436
                  slti         zero, zero, -888
                  sll          a6, a3, t2
                  auipc        s0, 731794
                  srl          ra, s0, s10
                  sltiu        a6, s6, 1459
                  slt          gp, t3, a5
                  addi         s4, s8, -1745
                  lui          t1, 7814
                  srai         t1, t2, 13
                  srai         a4, zero, 25
                  srl          ra, a1, a6
                  ori          s5, s4, -293
                  auipc        a4, 896290
                  sra          s0, t4, t3
                  add          a4, t2, a3
                  slli         s4, gp, 28
                  auipc        ra, 910638
                  sub          t2, a2, s2
                  srl          s5, s6, t1
                  add          a0, s11, s11
                  add          a5, t0, s8
                  auipc        t4, 464443
                  sltiu        t6, s11, 477
                  add          a4, a0, tp
                  ori          s0, sp, -1065
                  slti         s4, t6, 1566
                  auipc        s11, 589984
                  srai         t4, t2, 18
                  sltiu        s3, t0, -356
                  sra          s9, s5, t2
                  sltiu        s7, s9, -511
                  andi         s9, s11, -1995
                  lui          s11, 183643
                  add          t4, s2, a6
                  srl          t6, a1, sp
                  slti         t1, s0, -1090
                  sltiu        t6, s11, 468
                  nop
                  and          sp, a7, s8
                  lui          a1, 522822
                  xori         a6, tp, 1297
                  ori          s11, sp, 381
                  andi         s8, s0, 292
                  addi         sp, t0, 391
                  sltiu        s5, t2, -1284
                  xor          t0, gp, zero
                  srai         s5, t0, 4
                  sll          s5, gp, a3
                  xori         zero, a0, -160
                  ori          s5, gp, 1262
                  add          t6, a6, a1
                  slli         t6, a1, 1
                  sra          t2, s7, a7
                  sra          a6, s1, t6
                  and          a1, s4, sp
                  srli         a6, s9, 27
                  srli         t5, t1, 29
                  xori         t1, s3, 1070
                  srl          s4, t5, s5
                  slt          ra, a3, t2
                  sub          sp, t0, t3
                  xor          a1, a1, s5
                  sub          a0, s2, s7
                  srai         s8, s4, 10
                  srl          s5, a6, tp
                  srli         s7, s1, 4
                  srai         s2, tp, 11
                  slli         s6, t5, 15
                  lui          s10, 351811
                  xor          t1, t1, a6
                  or           t1, s4, a5
                  ori          ra, s11, 1695
                  srai         s11, t2, 23
                  srai         a5, s3, 10
                  sltu         s3, s0, s3
                  sltiu        ra, a5, -851
                  add          t1, ra, s5
                  la x4, test_done
                  jalr x0, x4, 0
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
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_2:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_3:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_4:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_5:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_6:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_7:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_8:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_9:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_10:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_11:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_12:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_13:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_14:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_15:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x13, x9, zero
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x6, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x6, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x6, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x6, x7, ecall_handler
                  li x7, 0x1
                  beq x6, x7, instr_fault_handler
                  li x7, 0x5
                  beq x6, x7, load_fault_handler
                  li x7, 0x7
                  beq x6, x7, store_fault_handler
                  li x7, 0xc
                  beq x6, x7, pt_fault_handler
                  li x7, 0xd
                  beq x6, x7, pt_fault_handler
                  li x7, 0xf
                  beq x6, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x9, x13, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

load_fault_handler:
                  add x9, x13, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

store_fault_handler:
                  add x9, x13, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x9, x13, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x9, x13, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x9, x13, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
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
