.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 1
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x12, 0x1800
                  csrw 0x300, x12 # MSTATUS
                  mret
init:             
                  li x0, 0xf6c5c664
                  li x1, 0x80000000
                  li x2, 0xa
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0xedbcad08
                  li x7, 0x8d22b0ab
                  li x8, 0xcd5ada7d
                  li x9, 0xff847f65
                  li x10, 0x4
                  li x11, 0xe
                  li x12, 0xacecde17
                  li x14, 0xdfe1b0e6
                  li x15, 0xfe740267
                  li x16, 0xfe629a32
                  li x17, 0x4927e16b
                  li x18, 0xaf8668f5
                  li x19, 0x80000000
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0xfd0bb5d3
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0x7
                  li x28, 0x0
                  li x29, 0xf
                  li x30, 0x6
                  li x31, 0x0
                  la x20, user_stack_end
main:             li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           a1, 0x831fbd21
                  li           t5, 0x98f1b711
                  li           a2, 0x80000000
                  li           gp, 0x0
                  li           t0, 0x0
                  li           s10, 0x0
                  li           a6, 0x0
                  li           t2, 0x80000000
                  li           s11, 0x0
                  sub          s7, a2, a2
                  auipc        t2, 48631
                  nop
                  nop
                  lui          s7, 613588
                  lui          a1, 785490
                  auipc        a6, 634323
                  sub          gp, s11, a2
                  lui          a2, 39880
                  sub          t0, gp, a6
                  sub          s7, t2, a6
                  lui          a2, 672330
                  nop
                  nop
                  auipc        a1, 513989
                  auipc        t2, 700570
                  sub          t0, gp, a2
                  lui          t5, 431537
                  add          a6, t2, t0 #end riscv_int_numeric_corner_stream_12
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           s0, 0x0
                  li           s6, 0x0
                  li           a2, 0x0
                  li           s1, 0x0
                  li           t1, 0x104fad9f
                  li           t2, 0xffffffff
                  li           a0, 0xffffffff
                  li           s3, 0xffffffff
                  li           t5, 0x80000000
                  nop
                  auipc        a0, 314681
                  nop
                  lui          a0, 54238
                  sub          t6, s6, s1
                  lui          t2, 56252
                  add          a0, t1, s6
                  sub          t2, t5, s0
                  addi         s3, s1, 800
                  lui          t1, 379529
                  nop
                  lui          a2, 1010133
                  lui          t1, 240581
                  sub          s1, t5, t1
                  nop
                  nop
                  addi         t1, s1, 437
                  nop
                  lui          s6, 976320 #end riscv_int_numeric_corner_stream_13
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           s9, 0xb9c7a7bb
                  li           s0, 0xffffffff
                  li           s1, 0x80000000
                  li           s2, 0x0
                  li           a6, 0x80000000
                  li           t5, 0x80000000
                  li           s8, 0x0
                  li           s7, 0x80000000
                  li           s3, 0xffffffff
                  addi         a6, s3, 1513
                  nop
                  add          ra, s1, s3
                  addi         s3, s8, 793
                  nop
                  lui          s3, 531189
                  lui          s2, 318037
                  addi         s9, ra, -764
                  auipc        ra, 1045422
                  nop
                  sub          ra, ra, s1
                  nop
                  add          s0, t5, s7
                  sub          s1, s2, s2
                  add          ra, s0, s7
                  addi         ra, s7, 1150 #end riscv_int_numeric_corner_stream_8
                  li           a2, 0x11f79a26 #start riscv_int_numeric_corner_stream_3
                  li           s7, 0xffffffff
                  li           s1, 0x80000000
                  li           t2, 0x0
                  li           s0, 0x80000000
                  li           s2, 0x80000000
                  li           a4, 0x2756d536
                  li           s10, 0x80000000
                  li           t1, 0x45338b24
                  li           t0, 0x0
                  addi         t2, s7, -295
                  auipc        t0, 27055
                  nop
                  addi         s1, s1, 1875
                  lui          s1, 1000692
                  addi         t2, a4, 591
                  lui          a2, 506767
                  add          s2, s10, t2
                  nop
                  nop
                  auipc        s2, 795004
                  auipc        s7, 539210
                  add          a4, s10, s0
                  sub          s1, t1, a2
                  nop
                  addi         t0, s2, -857
                  add          t0, t0, t2
                  auipc        s2, 94346
                  add          a4, s1, s10
                  auipc        s1, 10903
                  auipc        s2, 575209
                  add          s10, s10, a2
                  auipc        t2, 815242
                  add          s0, s10, t2
                  nop
                  addi         s7, s10, -768
                  auipc        a2, 613244 #end riscv_int_numeric_corner_stream_3
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           ra, 0x0
                  li           s0, 0xffffffff
                  li           s10, 0xe59e901b
                  li           t4, 0x80000000
                  li           a4, 0xffffffff
                  li           s8, 0xffffffff
                  li           s1, 0x6358da22
                  li           t6, 0x80000000
                  li           s6, 0xc63b0be3
                  sub          ra, s8, t6
                  addi         a4, a0, 1985
                  nop
                  lui          s1, 734652
                  nop
                  addi         s6, s1, -146
                  auipc        s10, 338773
                  lui          s10, 171351
                  addi         s6, a0, -763
                  lui          s10, 135013
                  nop
                  sub          t4, a0, t4
                  addi         ra, t6, 881
                  nop
                  addi         s6, s10, -30 #end riscv_int_numeric_corner_stream_15
                  li           sp, 0x80e99ae5 #start riscv_int_numeric_corner_stream_7
                  li           a5, 0xffffffff
                  li           a7, 0xffffffff
                  li           t3, 0x0
                  li           s3, 0x0
                  li           a2, 0x3a5022bf
                  li           a0, 0x80000000
                  li           tp, 0xa72bd28f
                  li           a1, 0x80000000
                  li           t4, 0xedfa3938
                  auipc        a0, 590135
                  nop
                  nop
                  auipc        tp, 567557
                  add          s3, a7, t3
                  add          a0, a5, t3
                  addi         tp, sp, 1214
                  nop
                  sub          a2, a2, a2
                  sub          t3, a1, a2
                  auipc        sp, 672963
                  lui          t3, 953004
                  add          s3, t3, a2
                  nop
                  lui          t3, 788578
                  add          a0, s3, t4
                  add          a7, s3, a2
                  lui          a5, 983313
                  nop
                  lui          a1, 603010
                  sub          t4, a0, a5
                  sub          a0, a1, a1
                  auipc        a0, 516040
                  auipc        sp, 134031
                  add          sp, a7, a0
                  nop
                  nop
                  nop
                  sub          a7, tp, a7
                  nop #end riscv_int_numeric_corner_stream_7
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s6, 0xdfb2af54
                  li           a4, 0x11107c3f
                  li           s11, 0x45fc38d7
                  li           s0, 0x0
                  li           a6, 0xffffffff
                  li           gp, 0x0
                  li           s3, 0x0
                  li           t1, 0x15b034aa
                  li           a0, 0x0
                  add          gp, gp, s11
                  sub          s10, s10, gp
                  auipc        a0, 629164
                  auipc        gp, 135699
                  auipc        gp, 213158
                  add          s6, s0, s11
                  add          t1, s10, s11
                  add          s11, gp, a0
                  lui          gp, 253723
                  addi         a6, a6, -1171
                  auipc        s3, 638774
                  nop
                  sub          t1, s6, a6
                  lui          t1, 137999
                  lui          s3, 354565
                  addi         s10, s11, -2002 #end riscv_int_numeric_corner_stream_5
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t2, 0x0
                  li           a7, 0xffffffff
                  li           t5, 0xffffffff
                  li           tp, 0x80000000
                  li           s0, 0xffffffff
                  li           s2, 0x0
                  li           t3, 0xffffffff
                  li           ra, 0x80000000
                  li           s1, 0xb6a85405
                  add          s2, s7, s7
                  nop
                  nop
                  nop
                  auipc        t5, 306740
                  nop
                  auipc        s1, 183990
                  nop
                  nop
                  sub          s2, a7, tp
                  auipc        t5, 1047014
                  auipc        s1, 846037
                  addi         t3, s1, 878
                  auipc        a7, 666102
                  nop
                  nop
                  add          a7, s7, ra
                  sub          tp, t3, t3
                  addi         s0, a7, -1352
                  sub          t5, s0, ra
                  add          a7, tp, s7
                  add          s7, ra, t2
                  auipc        s2, 413834
                  lui          s7, 990255
                  addi         s2, t2, 1028 #end riscv_int_numeric_corner_stream_6
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           a6, 0x0
                  li           s6, 0x80000000
                  li           t3, 0xffffffff
                  li           a4, 0x3077a2f1
                  li           a2, 0x80000000
                  li           s8, 0x80000000
                  li           t1, 0xffffffff
                  li           s9, 0xffffffff
                  li           t4, 0xfca3c6af
                  auipc        s11, 824887
                  sub          a4, a4, a6
                  addi         t3, t3, -990
                  add          a6, s11, a6
                  sub          a6, a4, s11
                  add          s6, s9, a2
                  addi         s6, t4, -676
                  add          t3, s8, s8
                  nop
                  sub          a2, t3, s11
                  add          s8, s6, t4
                  lui          t4, 833735
                  lui          a6, 346565
                  auipc        a4, 569165
                  addi         t4, a2, -1149
                  addi         s6, s9, 429
                  add          t1, t1, s8
                  auipc        t3, 904468
                  nop #end riscv_int_numeric_corner_stream_10
                  slt          s6, a3, sp
                  andi         a0, s4, -772
                  xori         t0, a1, -932
                  srai         a7, gp, 31
                  andi         zero, a0, -82
                  addi         a2, gp, -834
                  sll          a1, s3, s0
                  andi         gp, a6, -902
                  add          t4, a3, a7
                  slti         t0, s7, 1682
                  srai         s3, s4, 16
                  sltiu        zero, s10, 1010
                  srai         s6, s5, 27
                  ori          a6, s11, -688
                  andi         gp, a7, -1413
                  sltiu        s3, s8, -142
                  srai         s0, t3, 27
                  sltiu        a4, s1, 1247
                  slli         s8, a1, 5
                  and          t3, t5, s8
                  auipc        sp, 391593
                  and          s11, s11, a2
                  xor          ra, s9, gp
                  andi         a0, a6, 1251
                  addi         a5, s0, -423
                  srli         s0, s5, 10
                  srli         t1, s4, 11
                  slt          a1, t2, t1
                  sra          t3, sp, gp
                  sll          s1, s7, t3
                  xori         gp, s11, -1611
                  xor          s10, t0, s8
                  andi         a0, s10, 1237
                  andi         a6, a0, 955
                  or           sp, t4, t6
                  addi         sp, sp, 860
                  srl          sp, s0, a7
                  ori          a4, t2, -1844
                  nop
                  srli         a4, a3, 13
                  sltu         s2, s6, s1
                  add          t1, a7, t2
                  nop
                  sll          s11, a4, s4
                  sub          sp, t6, sp
                  sub          gp, a2, s3
                  xori         t6, a7, -1688
                  slti         a5, gp, -1424
                  add          a0, s8, a2
                  ori          a2, t2, -237
                  slt          s0, a5, t3
                  add          a4, t0, s2
                  add          a0, s4, t6
                  slti         s11, s6, -1595
                  srli         s1, s7, 20
                  slt          a5, t3, s4
                  srai         a5, a0, 20
                  add          gp, zero, t1
                  auipc        a1, 162584
                  sltiu        t4, s7, 925
                  srl          s1, a2, t1
                  sltu         t3, s1, ra
                  andi         a2, a5, -187
                  ori          a4, t3, -1362
                  and          tp, a2, s0
                  andi         s8, s4, 746
                  ori          t6, s0, -1374
                  srli         t4, a3, 22
                  or           s10, t0, s4
                  andi         t1, ra, -1514
                  sll          tp, tp, sp
                  and          s1, s6, ra
                  auipc        s7, 857954
                  srai         gp, s10, 29
                  or           tp, zero, tp
                  slt          s2, sp, t0
                  srl          tp, gp, t1
                  or           a2, a6, s9
                  srl          s1, a5, zero
                  slli         t0, a1, 2
                  addi         s1, a5, 1824
                  slti         t3, t2, 786
                  sra          s7, s4, s9
                  sll          t1, t4, gp
                  srai         s6, s4, 11
                  add          ra, a0, s5
                  srai         t6, a1, 22
                  nop
                  lui          s10, 634296
                  sltu         s8, a1, t3
                  andi         s9, ra, -1324
                  srli         t0, a4, 15
                  sll          s3, zero, t3
                  srl          a4, s11, gp
                  sll          a4, gp, sp
                  auipc        gp, 747659
                  sltiu        a0, t6, 1589
                  slli         s8, a4, 8
                  sub          t2, a0, tp
                  srli         s0, a2, 26
                  or           s0, s8, a7
                  srai         t2, s10, 14
                  or           tp, s2, t2
                  sltiu        a1, sp, -1346
                  slli         a7, s2, 2
                  sltiu        s9, gp, -1936
                  sub          t2, a7, a4
                  srai         ra, a1, 28
                  xor          tp, a7, s4
                  srl          a1, s2, a1
                  auipc        zero, 167640
                  nop
                  srai         gp, s11, 19
                  srli         s11, s6, 26
                  auipc        s7, 587324
                  and          a1, t4, a4
                  sra          ra, s9, ra
                  and          a4, a0, a0
                  addi         t1, a1, 1268
                  nop
                  srai         s1, s2, 30
                  slli         t6, s3, 15
                  slti         a1, s11, 1318
                  xori         t1, s5, 105
                  sltu         sp, a6, t0
                  slti         a5, s5, -1613
                  srai         t2, a2, 16
                  sra          zero, t5, a0
                  nop
                  xor          s3, t2, zero
                  sra          s6, s2, a6
                  sub          s2, t1, t4
                  auipc        s3, 906371
                  srli         t1, tp, 20
                  and          t5, s7, sp
                  sltiu        t2, t0, -712
                  srl          t5, a7, s7
                  andi         s6, s7, 1639
                  or           s2, s9, s10
                  andi         a1, s4, -1221
                  or           a5, a1, a4
                  sll          t0, s3, gp
                  xori         tp, s2, 1811
                  addi         a5, s0, 935
                  sll          a7, gp, a4
                  srai         t2, a4, 22
                  xori         gp, s10, -1048
                  srl          s7, a2, t2
                  sub          s9, a5, t2
                  slli         t2, s7, 13
                  xor          sp, s1, tp
                  auipc        gp, 454912
                  ori          zero, a2, 530
                  or           tp, zero, s6
                  xor          s9, a7, t1
                  slt          s6, a0, s6
                  slt          s10, a2, t1
                  sub          t4, s6, gp
                  slti         s11, t1, -608
                  xor          t3, t2, a4
                  sltu         ra, s1, s7
                  and          tp, a0, a3
                  slt          zero, s6, t5
                  xori         s9, s9, -1817
                  ori          gp, s1, 916
                  slli         s11, a2, 27
                  sltiu        t4, a3, 760
                  slti         s8, s10, -249
                  sub          s7, a1, ra
                  xori         s7, s3, 323
                  slti         a4, s6, 94
                  sltu         a1, s5, s4
                  add          s6, a5, zero
                  slt          s2, s0, a1
                  andi         s0, s8, -1577
                  or           s10, sp, a5
                  sub          tp, a6, t2
                  xor          t1, s4, a7
                  slti         s10, a0, -1246
                  ori          t0, s10, -128
                  lui          s3, 111531
                  lui          a7, 610749
                  sra          ra, a0, gp
                  or           t3, a3, s4
                  andi         gp, a4, -1809
                  addi         s10, t6, 701
                  slli         t6, a3, 9
                  srl          s0, s11, s11
                  slli         a2, a3, 11
                  xor          s3, s8, s10
                  lui          s3, 613815
                  or           s10, s11, s9
                  nop
                  sltu         tp, t2, a4
                  srli         ra, tp, 0
                  slt          tp, a6, a6
                  sll          tp, a6, s3
                  srli         a7, t1, 12
                  add          tp, s2, s3
                  add          a2, gp, t2
                  xor          a5, s6, a7
                  sub          s6, t4, s2
                  andi         s10, t5, 1785
                  lui          a6, 70538
                  nop
                  xori         s1, gp, -1451
                  or           a1, s0, a5
                  sltu         a0, s2, a1
                  srai         t1, s3, 13
                  slti         a5, s5, -50
                  auipc        sp, 606235
                  addi         s11, gp, -1227
                  sltu         s6, ra, gp
                  and          t6, a7, s6
                  sltu         a5, a4, a4
                  ori          t0, a0, 1683
                  sll          t4, t6, s3
                  xor          a0, s8, s2
                  srli         a2, t3, 3
                  sltu         t1, gp, a6
                  sltiu        s10, s8, -1545
                  addi         t4, s10, -1366
                  li           gp, 0xbf3edf75 #start riscv_int_numeric_corner_stream_14
                  li           t4, 0xffffffff
                  li           t3, 0x80000000
                  li           s10, 0x80000000
                  li           s3, 0x0
                  li           t6, 0x0
                  li           s9, 0x80000000
                  li           s8, 0x80000000
                  li           a1, 0x0
                  li           t0, 0xbae6de26
                  sub          s8, s8, s10
                  add          s10, s8, s9
                  auipc        s3, 188626
                  add          a1, t6, t4
                  add          s8, t3, s9
                  sub          a1, s8, s9
                  sub          t3, gp, t4
                  addi         t0, a1, 852
                  sub          s10, a1, a1
                  addi         t6, s8, -1824
                  lui          a1, 854742
                  nop
                  lui          a1, 460070
                  lui          t0, 591242
                  auipc        t0, 86962 #end riscv_int_numeric_corner_stream_14
                  xori         a6, t5, 1058
                  add          s1, a3, s5
                  addi         a5, s11, -672
                  sltiu        s7, t0, -1036
                  and          a0, s9, a1
                  xor          t6, a5, t2
                  srl          t6, tp, a4
                  srli         a1, s8, 7
                  sra          s9, t1, a2
                  nop
                  and          s6, tp, t3
                  sltiu        s3, a5, -1198
                  sltiu        t0, s0, -675
                  sub          t4, t6, s10
                  xori         a4, ra, -112
                  slt          t2, s2, s9
                  add          a4, a1, s10
                  ori          a6, sp, -1258
                  sltu         a6, t3, s4
                  and          s9, a6, t4
                  sub          t0, s9, a1
                  xor          t6, tp, s2
                  ori          a6, a5, -130
                  sub          s7, tp, ra
                  srl          s7, t5, t5
                  slli         s8, s0, 24
                  and          t0, t6, a7
                  sra          a1, s5, s11
                  slt          t1, zero, t2
                  auipc        sp, 16531
                  xori         t1, s10, 1582
                  auipc        a5, 125392
                  andi         gp, s9, -1301
                  sltu         gp, a5, a0
                  and          s3, a7, t4
                  slti         t4, s6, -106
                  slti         t6, s1, 691
                  or           t4, s9, a1
                  add          t4, ra, a1
                  srli         s6, a3, 21
                  srli         t1, t1, 25
                  srl          s3, s5, a5
                  add          s3, s10, t3
                  sll          ra, s7, a4
                  nop
                  sra          t6, s3, t4
                  and          t1, t0, t1
                  xor          t3, s6, sp
                  slt          s1, s3, tp
                  auipc        ra, 446882
                  andi         t2, s3, 978
                  srl          t4, s6, zero
                  xori         s0, a6, -1653
                  or           a7, ra, s2
                  xor          s0, t3, s7
                  or           t2, tp, s0
                  add          t6, s1, ra
                  auipc        a5, 315953
                  ori          a4, sp, 1700
                  addi         a5, s6, 890
                  srl          a1, s1, zero
                  add          t2, a3, s5
                  addi         a6, t3, -1790
                  auipc        a7, 1029830
                  srl          t1, s7, s10
                  slli         a2, t1, 5
                  andi         s0, s7, -1928
                  sub          a1, s11, a6
                  sltu         a0, a0, s5
                  andi         sp, t6, -1710
                  add          s3, a0, s7
                  sub          t4, s6, t1
                  sub          t4, s9, t5
                  srl          a5, s7, s1
                  sra          s6, a3, a1
                  srl          s1, t6, s1
                  andi         t6, s5, 2047
                  sltu         s8, s3, s7
                  addi         tp, s9, 12
                  sub          t0, a3, s2
                  or           a2, a5, s5
                  srl          zero, gp, s0
                  slli         tp, s1, 6
                  andi         a1, s3, -444
                  srli         s6, a5, 22
                  or           t2, gp, a4
                  sub          ra, s5, t5
                  slti         s6, s2, 380
                  xor          sp, a6, t5
                  sra          tp, s0, t1
                  andi         sp, tp, 827
                  srai         t3, a6, 27
                  slt          s11, a1, s10
                  and          t1, t4, s10
                  auipc        a7, 1025056
                  sltu         a0, s7, t6
                  addi         a4, gp, 822
                  nop
                  and          s1, t1, s1
                  andi         t1, a1, 54
                  slli         gp, t4, 2
                  add          s3, a6, t6
                  srli         t4, s7, 11
                  srli         a7, t4, 11
                  sltu         a7, s11, gp
                  sltu         s0, s0, t4
                  xor          a4, s10, zero
                  lui          gp, 189138
                  srli         a6, s3, 31
                  sub          t6, ra, s1
                  auipc        s6, 862368
                  slt          s1, a4, t0
                  lui          s0, 554627
                  srli         a4, s2, 6
                  srli         t4, s5, 7
                  sltu         s2, a1, s0
                  sub          t6, a2, a7
                  and          zero, s1, tp
                  slli         s10, a0, 30
                  sltu         a0, s3, s4
                  srai         s6, zero, 24
                  add          zero, a5, s8
                  sra          a2, gp, a3
                  nop
                  nop
                  srai         t4, s11, 20
                  sub          t2, a6, t1
                  srl          s7, t5, s10
                  sltiu        ra, t5, -370
                  sltu         s0, t6, a4
                  srl          s11, s4, tp
                  lui          t4, 521541
                  add          a5, a3, s11
                  add          s1, t5, s7
                  nop
                  xori         t1, a6, 1461
                  ori          a1, s5, 1077
                  add          t4, s2, a6
                  lui          t5, 679281
                  slti         s2, tp, -1386
                  xori         gp, s5, -432
                  and          a4, s3, tp
                  slli         t0, sp, 26
                  slt          sp, t5, s3
                  srai         t0, a1, 1
                  xori         s11, s5, -1842
                  sltu         t3, s2, s4
                  sltu         s2, sp, t0
                  lui          ra, 48847
                  slti         t5, a4, -1200
                  auipc        s6, 50230
                  xori         a7, ra, -1543
                  sub          t1, a5, t2
                  xori         s8, t6, -173
                  sltu         s6, s10, t5
                  slli         s0, s1, 24
                  xori         a6, s9, 1855
                  xori         sp, s6, 1727
                  and          tp, a1, a6
                  lui          a1, 396419
                  sll          s11, s8, s11
                  slt          s8, t5, t5
                  srai         s11, a1, 1
                  auipc        a5, 377926
                  sltiu        s11, s0, -1742
                  srai         zero, s11, 18
                  srai         s11, t5, 6
                  slli         sp, s1, 4
                  sltu         s7, a7, t0
                  sra          a4, s6, a5
                  nop
                  slli         tp, t1, 20
                  slt          a4, s1, a1
                  xori         s3, a6, 805
                  ori          tp, t0, 672
                  nop
                  andi         zero, s4, 229
                  srli         s3, t1, 10
                  sltiu        s2, s4, 199
                  xori         a7, a4, 1078
                  xor          zero, s4, s11
                  ori          t2, s7, -1783
                  andi         s3, a5, -1724
                  sltiu        s6, s7, -439
                  sll          s1, a2, a1
                  sltiu        s7, s10, 1932
                  ori          t5, t0, 1660
                  add          t5, s0, gp
                  ori          t4, a5, 1110
                  srai         t0, s9, 17
                  xori         a7, sp, -1461
                  xori         a4, zero, 108
                  xor          s2, t2, s4
                  and          a2, s0, a5
                  sra          t2, s8, a0
                  sltiu        s8, a7, 1493
                  auipc        t5, 353576
                  sll          sp, t5, t0
                  andi         t3, s1, 1909
                  srli         s3, s5, 10
                  addi         t4, s9, 1804
                  and          s10, a1, s5
                  ori          zero, a2, 1179
                  slt          t6, sp, a0
                  nop
                  nop
                  slli         s1, t3, 21
                  add          a4, t1, t6
                  nop
                  srai         a1, gp, 27
                  slli         s2, s1, 2
                  srli         t0, t3, 20
                  xor          s3, s7, a4
                  sltu         a1, t6, t5
                  slt          zero, t4, ra
                  auipc        s10, 1000071
                  xor          s8, zero, t6
                  addi         t0, a6, -697
                  add          a2, s11, t5
                  sltu         a5, t3, sp
                  srli         t1, a1, 25
                  sub          t5, s5, t0
                  add          a0, a0, a6
                  add          s6, s4, a1
                  slti         s10, a1, -1185
                  sltiu        a6, t0, -586
                  xor          a6, a0, ra
                  slt          zero, s10, a1
                  sub          s9, s4, t5
                  sra          a4, a0, t4
                  sltiu        s6, s3, 1898
                  ori          t4, s0, 141
                  or           s11, a0, s0
                  addi         a0, t1, 1836
                  auipc        s9, 689534
                  slt          t5, t2, s1
                  or           sp, a4, a5
                  or           t5, s8, s5
                  ori          s6, s3, 1864
                  srl          t6, gp, a2
                  srli         s7, t3, 24
                  xor          s11, s7, t2
                  or           s10, t1, s9
                  sltu         zero, a5, sp
                  xor          a5, s11, t4
                  nop
                  ori          s11, s6, -1765
                  auipc        t4, 280605
                  sra          s0, s6, s8
                  ori          a7, s5, -1185
                  sub          t6, s9, s5
                  sltu         s10, s7, a3
                  xori         a0, t0, -1837
                  xor          s2, s4, s10
                  sltiu        s0, s0, -1340
                  addi         a0, s9, -627
                  slt          ra, t4, s10
                  xor          s3, a2, s5
                  slli         s8, zero, 10
                  auipc        a6, 315559
                  sra          a6, s8, a5
                  srl          ra, t2, t2
                  slli         a2, gp, 9
                  lui          zero, 144695
                  and          a6, t1, a6
                  sltu         s3, ra, a3
                  slli         s3, t0, 23
                  sra          zero, s10, tp
                  srai         a7, t6, 5
                  lui          t2, 890529
                  or           gp, tp, s2
                  slti         t4, a6, 1135
                  sll          a1, t4, s10
                  srli         gp, a4, 14
                  add          a2, a0, s0
                  srai         s3, t3, 27
                  addi         s6, a2, 1393
                  xori         t6, sp, 1589
                  andi         a5, t3, -601
                  slti         sp, s2, 1144
                  xor          a7, s7, t0
                  auipc        s8, 1037246
                  sltiu        t4, a4, -1761
                  xor          t0, s3, s7
                  sub          a0, t1, a0
                  slli         s2, t4, 3
                  andi         a6, a5, 1704
                  auipc        s2, 1031635
                  add          s9, s6, a6
                  sub          s0, a7, tp
                  sub          a5, t2, a2
                  sltiu        t3, a6, -1492
                  sltu         t3, sp, s2
                  sltu         s1, t1, s0
                  srai         a7, s11, 16
                  sra          tp, t5, a3
                  xor          s9, sp, s2
                  slli         s7, a3, 27
                  andi         ra, t4, 1999
                  addi         t1, s5, -818
                  xor          s7, s0, ra
                  srl          a6, s6, s9
                  sub          a0, s3, t0
                  sltiu        s1, s4, 57
                  sub          a6, a5, gp
                  slli         s0, t0, 8
                  ori          t2, s7, 1444
                  sra          t0, a0, t5
                  slti         t6, s3, 1139
                  sub          t6, t3, s3
                  slt          t0, s2, a3
                  srl          a2, sp, gp
                  sub          t0, tp, a7
                  nop
                  srli         a5, t3, 5
                  slti         s7, a0, -1758
                  lui          s9, 183072
                  nop
                  slt          s1, s8, t0
                  lui          tp, 469026
                  sltu         s0, zero, t0
                  srli         s1, s6, 13
                  slli         s2, a1, 5
                  srl          a4, t4, t2
                  slt          t1, a2, zero
                  srai         s11, a6, 30
                  sub          t5, t1, t0
                  xor          a1, tp, s10
                  ori          a5, s3, -1642
                  slti         t4, t3, -1330
                  and          a5, s3, s4
                  srli         sp, s4, 24
                  auipc        t6, 233184
                  lui          a7, 1004238
                  slt          t4, s3, s9
                  add          ra, t5, s5
                  slti         t2, s1, 1969
                  slti         t2, s3, -1513
                  ori          a2, t1, -831
                  sltu         t4, gp, t2
                  sll          ra, s10, s0
                  add          s11, t6, s8
                  and          zero, a7, s2
                  add          t1, s3, s0
                  srl          s6, t5, a4
                  slli         ra, s3, 22
                  nop
                  sra          a2, a2, zero
                  auipc        s0, 801231
                  or           t4, ra, sp
                  srl          tp, a3, tp
                  slt          t0, a6, t6
                  slti         gp, a7, 1971
                  addi         s7, gp, -1707
                  lui          s8, 267491
                  srli         tp, s1, 14
                  add          t1, t6, s2
                  xor          t6, a1, a0
                  sra          a7, a2, t3
                  xor          sp, s1, s1
                  xori         zero, zero, -476
                  xori         a0, t3, 1770
                  add          a0, a4, ra
                  sra          gp, s0, s4
                  sltiu        t1, t2, -1028
                  auipc        gp, 840980
                  add          a4, s7, a6
                  nop
                  or           t2, s10, t1
                  ori          tp, t6, -1891
                  add          s3, a1, s10
                  ori          s0, a5, 1745
                  andi         s11, t3, 1031
                  lui          t6, 890522
                  sltu         a1, s11, a6
                  sll          s3, tp, ra
                  sltu         s11, a2, a0
                  sll          zero, s11, a7
                  lui          a1, 671069
                  srl          a1, s11, t4
                  sltiu        a0, s5, -1270
                  srl          s0, t6, t3
                  sltu         s7, a2, a7
                  srai         gp, s2, 29
                  srli         s0, t2, 6
                  sub          t4, t2, s1
                  xor          s2, sp, a0
                  sltiu        a1, s5, -51
                  slti         gp, a2, -88
                  xor          s8, ra, s9
                  lui          a7, 456094
                  sub          s11, gp, s10
                  slti         s11, s0, -362
                  sra          s11, tp, t4
                  sltiu        a5, a6, -1679
                  and          sp, ra, t3
                  xori         s2, t4, -1340
                  xori         t2, s4, -788
                  sub          s1, s3, a5
                  xori         t2, a4, -708
                  sub          a5, s5, s1
                  sub          t6, s6, gp
                  andi         a7, s5, -1968
                  ori          s2, s9, -70
                  or           s3, a5, t6
                  slli         t1, s6, 11
                  slti         a2, s5, -879
                  srl          ra, s10, s4
                  srl          s3, s4, s10
                  addi         a4, s11, -220
                  andi         a1, ra, 1678
                  and          a2, zero, a5
                  slli         s11, t4, 25
                  slt          s10, a5, a7
                  ori          a1, a2, -1292
                  xori         a2, s9, -521
                  sltiu        t1, sp, -605
                  addi         a0, a0, 1832
                  auipc        sp, 161103
                  sltu         a0, t0, s10
                  xori         t2, s5, -1537
                  xor          ra, a6, ra
                  slti         s7, sp, -230
                  xor          a2, zero, t0
                  auipc        gp, 833734
                  sltiu        a0, a6, 129
                  auipc        s11, 912978
                  srli         s6, s0, 27
                  and          a1, a0, t4
                  and          t1, t3, t5
                  lui          tp, 460299
                  add          s2, s7, s5
                  lui          s1, 914147
                  sub          s0, s7, a1
                  ori          a6, gp, 1030
                  lui          s8, 334723
                  sra          sp, s10, s3
                  xor          s6, tp, a6
                  add          s10, a1, s11
                  addi         t2, t3, -1397
                  xor          t6, s10, s6
                  slti         a2, s2, -908
                  srli         t4, a1, 4
                  slli         a6, s6, 11
                  lui          s9, 598454
                  lui          s2, 665572
                  add          s2, s6, s9
                  sra          t2, t3, s1
                  sra          s2, s0, a0
                  slti         a7, s11, 1734
                  slt          s3, s1, s2
                  auipc        a0, 163728
                  sra          t6, a3, t3
                  srli         s9, a4, 3
                  and          a2, sp, s7
                  andi         a6, zero, 1907
                  sra          a0, a2, s6
                  nop
                  xori         a0, t2, -249
                  srai         t4, s11, 22
                  slt          s6, s4, s2
                  auipc        s10, 140467
                  sll          t3, a2, s8
                  slti         s9, t0, -875
                  sltiu        a4, s0, -1138
                  srl          s9, a7, t0
                  srai         a5, s4, 3
                  ori          s2, a6, 754
                  slli         a2, a1, 24
                  or           a0, t4, s11
                  sltiu        zero, s2, 136
                  nop
                  add          s9, s4, t6
                  lui          s8, 385705
                  andi         s1, a0, -1093
                  slli         gp, s11, 22
                  srai         s3, s4, 22
                  slt          t0, a3, a5
                  and          s6, s10, ra
                  srai         s3, a2, 14
                  nop
                  sltu         a2, s6, s6
                  srai         a6, ra, 4
                  xor          s11, a6, s10
                  sub          s0, s0, a0
                  ori          a5, ra, -827
                  xor          t5, zero, s9
                  and          a5, t1, s9
                  srl          t3, s3, t4
                  srli         t3, t2, 2
                  sra          s2, a3, zero
                  srai         s9, t6, 12
                  or           t6, a3, s3
                  srl          s2, s3, a6
                  srl          s8, s8, a1
                  sltu         a4, ra, zero
                  xori         a5, s4, -1529
                  xor          t6, a2, a7
                  sltu         a1, s2, s9
                  slt          tp, t1, t5
                  srl          a4, s11, gp
                  lui          s8, 791217
                  andi         s10, t6, 1566
                  srl          t4, s2, a3
                  and          t0, s3, a6
                  slt          a0, a1, ra
                  add          zero, s7, s0
                  add          a0, s5, s2
                  andi         s8, s3, -2000
                  sltu         a1, a6, ra
                  srai         s6, s10, 18
                  slti         t0, t1, -683
                  and          gp, sp, sp
                  lui          a5, 133386
                  andi         t3, s2, -222
                  sra          s11, a0, a3
                  sltiu        a4, s1, -361
                  sub          s0, a4, t3
                  auipc        zero, 1015496
                  sltiu        a2, tp, -1655
                  ori          zero, s3, 1195
                  auipc        a7, 74908
                  xor          ra, sp, s3
                  sltu         s7, a4, t4
                  ori          a6, zero, -1414
                  srai         s2, s7, 9
                  add          t2, a7, gp
                  sltiu        t0, ra, -1776
                  auipc        a1, 553513
                  slli         a6, s8, 8
                  auipc        s6, 611590
                  sub          sp, gp, a3
                  sltiu        tp, t4, -160
                  lui          sp, 1038078
                  auipc        s10, 683900
                  slli         a0, a5, 25
                  auipc        t4, 380648
                  add          s8, a6, t6
                  srai         tp, s7, 24
                  auipc        s0, 712030
                  srl          a5, s10, a4
                  or           a2, ra, t2
                  or           s1, a0, s2
                  nop
                  sub          t4, zero, s10
                  srl          t1, tp, s5
                  or           sp, s8, ra
                  andi         ra, a6, 963
                  and          a0, s4, s0
                  srli         gp, s10, 11
                  sltu         gp, s0, a2
                  add          zero, zero, s1
                  slt          t4, s5, t6
                  nop
                  xori         s1, a3, 1370
                  sltu         s3, s6, s9
                  nop
                  add          t0, a6, sp
                  slli         a4, s7, 22
                  srai         s3, s6, 4
                  srl          s3, t0, s0
                  lui          s1, 14103
                  or           tp, s11, a5
                  xori         s0, zero, 1438
                  slt          s0, gp, t2
                  lui          t3, 220390
                  xor          s3, a0, s3
                  sub          a1, t2, t3
                  nop
                  slt          s9, s4, ra
                  nop
                  or           a6, s8, ra
                  add          s2, t4, s5
                  and          s1, s9, s8
                  add          t2, a2, tp
                  srl          ra, s5, t5
                  andi         t5, s3, -817
                  andi         gp, t0, -1816
                  sub          s6, t3, s1
                  xori         s2, a3, 765
                  add          a2, a4, s9
                  or           t4, s2, s0
                  lui          zero, 17321
                  andi         s8, s9, 1305
                  slt          s1, s2, ra
                  addi         tp, sp, -1094
                  auipc        t1, 554010
                  ori          zero, zero, 558
                  sll          t0, s8, s6
                  auipc        s9, 295382
                  lui          a4, 621088
                  sra          t4, sp, a4
                  and          s3, a2, tp
                  sra          s2, tp, tp
                  and          s6, t1, s7
                  andi         a7, s6, 1026
                  sub          t3, s0, s2
                  addi         gp, a3, -1472
                  sltiu        t6, a1, 1651
                  auipc        a5, 933114
                  addi         sp, s8, -1642
                  sub          s2, a0, t5
                  srli         s7, s10, 2
                  sll          t3, a3, s11
                  or           s2, sp, t0
                  sltiu        s2, s2, 1832
                  slti         a6, t2, 1979
                  lui          a5, 919209
                  and          t6, t4, sp
                  addi         s3, s9, 997
                  or           s8, a1, a5
                  sltu         a2, s1, s11
                  andi         a6, a3, -1925
                  slt          t6, a7, gp
                  srli         s2, s7, 1
                  lui          a2, 236952
                  lui          t2, 904254
                  srl          a0, zero, s1
                  slti         a6, s9, 1536
                  sltiu        a4, a7, -1755
                  add          s3, a7, s0
                  sll          t1, s5, a3
                  slt          a1, t6, t0
                  srai         s7, t2, 15
                  nop
                  or           t4, s2, tp
                  or           t0, s4, s11
                  sll          a7, gp, s6
                  srl          s7, a4, t5
                  slt          s11, a4, ra
                  srai         zero, a3, 2
                  srli         s7, t2, 6
                  sra          s2, a2, a2
                  slti         a0, t6, 855
                  nop
                  sub          s6, s6, s8
                  sub          a2, t3, ra
                  or           t2, s10, s10
                  srai         a2, s10, 17
                  addi         gp, s3, 569
                  sltu         zero, t6, s6
                  ori          a5, sp, -1694
                  slli         a5, s6, 1
                  slli         s9, s6, 16
                  srl          s8, s11, a5
                  sll          t5, s10, t1
                  auipc        s8, 93889
                  add          s2, a6, a2
                  andi         zero, s2, -401
                  sltiu        a0, t5, -818
                  xori         s11, s10, 459
                  srai         t5, a3, 26
                  srl          gp, ra, gp
                  xori         a7, sp, 921
                  and          s11, sp, t5
                  lui          s6, 817427
                  sra          a4, ra, s2
                  nop
                  add          t2, s11, t3
                  slti         s9, s9, -1509
                  slti         s3, a5, -85
                  sltiu        s1, s6, -920
                  sll          s7, ra, ra
                  auipc        a1, 555562
                  auipc        t2, 1030963
                  sltu         s10, a3, t6
                  srli         sp, t6, 0
                  nop
                  sll          s0, sp, a0
                  or           t4, s0, s11
                  and          a4, ra, s10
                  and          t5, s2, s5
                  addi         ra, s7, -925
                  srai         s7, a6, 5
                  sra          s3, a2, s11
                  sll          t2, ra, s3
                  sra          t2, t1, s11
                  addi         a5, t4, 1848
                  slli         s10, s1, 5
                  nop
                  slt          a0, t4, gp
                  lui          zero, 796246
                  srai         s7, a5, 16
                  or           a2, t2, t6
                  srl          t1, a4, gp
                  add          t3, a1, zero
                  slli         s6, a6, 24
                  srl          s10, t1, t6
                  and          a6, zero, s6
                  srai         s0, t2, 25
                  auipc        t6, 299238
                  nop
                  andi         t3, a1, -260
                  or           zero, sp, s4
                  srli         s6, gp, 7
                  sra          s1, s1, t0
                  lui          s2, 427090
                  xor          s2, s3, t4
                  nop
                  auipc        a2, 149635
                  slt          s8, s2, s11
                  sll          t5, s2, sp
                  sll          t6, zero, a4
                  nop
                  add          t6, t6, t5
                  srl          a0, s0, t5
                  srai         t0, s1, 28
                  ori          s8, ra, -1226
                  xor          s2, a4, ra
                  sltiu        zero, a4, -780
                  slli         t5, t4, 30
                  sll          s3, t0, a4
                  sra          a7, t4, sp
                  sltiu        zero, s2, 122
                  slli         s0, a3, 9
                  srai         a6, t1, 15
                  slli         s11, a1, 21
                  ori          t5, t4, -1575
                  sltu         s10, a1, zero
                  andi         t1, s5, -1236
                  and          a5, s3, a3
                  lui          t4, 714546
                  and          a1, s3, a0
                  sra          s11, s6, a1
                  andi         gp, s5, 1271
                  srli         t6, s9, 15
                  xori         s3, s7, 1879
                  sltiu        t6, a2, -783
                  auipc        a4, 480761
                  slti         t5, s5, 1932
                  auipc        t1, 239421
                  addi         s10, gp, -891
                  auipc        s6, 430476
                  xor          t5, s1, a3
                  slli         gp, s8, 12
                  andi         s11, s6, 589
                  sltu         a0, t2, gp
                  sll          a0, t6, s11
                  xor          gp, tp, a1
                  auipc        t4, 677460
                  addi         s7, sp, -793
                  or           s6, s7, gp
                  slt          t5, s1, a0
                  slt          s6, tp, s0
                  auipc        s9, 83149
                  sltiu        s3, s7, -630
                  srai         a2, gp, 0
                  ori          t5, s8, -24
                  sltu         s2, t4, a6
                  srai         a7, s2, 8
                  or           s3, t2, a5
                  lui          t0, 51095
                  slli         s6, s10, 26
                  srl          a2, s2, t1
                  slli         gp, a7, 4
                  sltiu        a1, t4, -892
                  sll          t4, a0, s3
                  sltiu        s9, s5, -1871
                  srai         gp, t5, 21
                  xori         t5, s1, -1634
                  slli         a4, s3, 25
                  slti         s0, s6, 181
                  nop
                  srli         s8, s10, 7
                  lui          s1, 800809
                  slli         t6, s0, 29
                  xor          t2, a6, a7
                  lui          s8, 705925
                  srli         s2, a0, 1
                  lui          a1, 581240
                  sll          s3, a4, a5
                  and          a4, s6, t3
                  sll          sp, a0, t0
                  slti         sp, t0, -1103
                  xori         s7, t1, 314
                  auipc        a7, 457544
                  sra          t6, s8, s10
                  addi         t0, a0, 31
                  xori         a1, s4, 1702
                  sub          t0, t4, a7
                  srai         a6, sp, 4
                  and          gp, t1, a6
                  slt          a6, ra, s11
                  or           t3, sp, a2
                  nop
                  srl          tp, s3, a7
                  slli         t0, a2, 4
                  srli         s9, a2, 30
                  nop
                  xor          s10, t1, t4
                  xor          t3, s6, a3
                  or           t3, ra, s4
                  slti         a0, tp, 1189
                  slti         s3, s1, 1386
                  srl          zero, sp, gp
                  sub          t5, s10, s3
                  xori         a1, s2, -1855
                  sltiu        a5, a4, -295
                  addi         s0, tp, 700
                  sra          a2, t1, t5
                  srl          sp, t6, zero
                  addi         tp, t3, -985
                  ori          s0, tp, 713
                  sltiu        s6, t1, -1770
                  and          s11, sp, a3
                  srai         t4, s5, 10
                  sltiu        s10, a6, 1944
                  auipc        s1, 974682
                  ori          s1, t3, -901
                  slti         s7, s8, 1826
                  sub          a4, s0, a0
                  sra          a4, a4, s3
                  auipc        a4, 82731
                  or           s1, zero, s2
                  sltiu        s9, s7, -1631
                  sltiu        s2, s4, -1077
                  sltiu        s0, a5, 1135
                  srli         t1, a4, 4
                  slli         s9, s8, 7
                  srai         a6, s2, 17
                  sub          zero, a4, s5
                  addi         a1, a3, -261
                  andi         t4, s1, 6
                  sltu         s9, t3, s2
                  ori          t2, a2, 1188
                  slli         t6, tp, 27
                  srli         a7, t5, 30
                  sub          a5, a7, gp
                  slli         t3, a2, 4
                  slt          t6, s2, s2
                  srli         a5, s9, 26
                  sll          a6, s2, a5
                  sra          a6, t2, t2
                  sltiu        a2, t5, -1619
                  or           s2, a1, s4
                  srl          a2, a0, s2
                  nop
                  sltiu        sp, a5, -1147
                  sltu         s3, gp, a5
                  addi         zero, a3, 232
                  slti         s0, s5, -515
                  add          t3, a6, tp
                  ori          a6, s5, -69
                  xori         a4, s6, -2027
                  srl          s7, a5, t3
                  add          t0, sp, s5
                  slli         t2, s1, 0
                  nop
                  slti         s6, s6, -1975
                  sltu         a2, ra, s5
                  nop
                  sll          a5, a1, s10
                  xor          a0, a5, s6
                  srli         s8, sp, 17
                  lui          s6, 872322
                  sll          t4, a5, a7
                  slti         gp, t2, -629
                  sra          a6, s8, a0
                  ori          a1, a3, -233
                  ori          s10, s11, 491
                  srl          s7, s11, a6
                  auipc        t1, 478680
                  sra          s10, t0, a0
                  lui          t6, 529143
                  ori          a1, s6, 1433
                  or           s10, t2, t6
                  auipc        t0, 187944
                  lui          ra, 291341
                  srli         gp, a6, 28
                  sll          sp, t3, t2
                  slt          t5, a3, s0
                  andi         zero, t4, -50
                  sra          a7, a6, s3
                  xor          t1, a6, s1
                  nop
                  add          s8, s3, a6
                  srli         t1, zero, 27
                  xori         s2, s1, 1418
                  or           s0, a3, a2
                  nop
                  srli         t4, s4, 30
                  lui          a7, 330330
                  sra          s1, a6, s4
                  andi         a5, s10, 572
                  auipc        a7, 900076
                  xor          sp, t6, zero
                  slt          s11, a7, s7
                  auipc        t5, 481687
                  srli         s3, s6, 0
                  xor          t5, s9, s11
                  srli         a6, a5, 21
                  ori          zero, zero, -1394
                  xor          tp, a4, a6
                  andi         tp, t1, -1010
                  xori         s2, a3, 155
                  sltu         a0, ra, zero
                  nop
                  slti         t0, s4, -1883
                  srli         t5, s7, 19
                  lui          a1, 32780
                  srl          s2, s9, zero
                  slti         t2, s6, 1771
                  ori          a6, s1, 955
                  slt          a2, s4, t2
                  sra          a2, s8, s3
                  ori          t3, s11, 1671
                  slti         s0, s0, 1306
                  ori          s1, t3, -1683
                  slli         t5, a5, 30
                  and          t2, sp, s8
                  lui          s0, 73566
                  xori         t0, zero, -1042
                  slti         t5, zero, -299
                  ori          sp, a5, 798
                  lui          t3, 914774
                  lui          s8, 583399
                  slt          ra, s0, a6
                  slli         t3, a1, 20
                  add          a0, s8, gp
                  andi         a0, a1, 1685
                  nop
                  sra          s7, ra, a2
                  srl          s9, gp, s3
                  xori         s10, t1, -1674
                  ori          s6, s5, -1232
                  slli         a7, s3, 17
                  srai         t3, a4, 9
                  ori          t3, a3, 1255
                  or           zero, s5, a6
                  slt          t0, s10, s2
                  add          t4, sp, a4
                  or           tp, s4, t5
                  andi         a7, t1, -1344
                  sra          s6, a7, s9
                  sltu         s11, a0, s5
                  ori          s0, s9, -912
                  sra          a0, a0, t1
                  srl          s8, s5, t2
                  sub          a1, s9, gp
                  srai         t3, t4, 1
                  sltiu        a4, s5, -256
                  auipc        a2, 266116
                  or           s3, s6, s0
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s10, 0xfabfa7ad
                  li           t3, 0x0
                  li           s2, 0x0
                  li           s9, 0x536fea60
                  li           tp, 0xb1b98908
                  li           a1, 0x0
                  li           a2, 0xd03aca5c
                  li           t4, 0x449e5271
                  li           gp, 0x0
                  sub          a1, t4, gp
                  sub          s2, s9, gp
                  lui          a2, 845356
                  add          a2, tp, t3
                  lui          gp, 237640
                  addi         t4, s9, -305
                  addi         t3, s10, 101
                  auipc        gp, 88321
                  add          s0, a2, s10
                  add          t4, tp, s9
                  sub          tp, t4, tp
                  add          s0, s10, a2
                  nop
                  lui          s9, 707660
                  sub          tp, t3, s2
                  add          t4, s10, t4
                  lui          t3, 605623 #end riscv_int_numeric_corner_stream_9
                  add          t1, s10, t4
                  sra          ra, gp, a5
                  sll          s2, a5, a4
                  sra          tp, sp, s2
                  sltiu        tp, t1, -12
                  sra          zero, sp, a7
                  add          s11, a6, t3
                  slt          t5, a5, s4
                  auipc        a4, 137406
                  slt          tp, s2, s7
                  slt          s9, ra, t6
                  srl          t0, s6, zero
                  sltiu        a7, gp, -1665
                  xor          s9, gp, t2
                  addi         s2, t6, -1975
                  lui          s9, 839766
                  lui          s6, 1020778
                  and          a2, s4, s2
                  srl          t5, sp, s4
                  nop
                  andi         s8, s8, 331
                  sltu         t5, s8, s1
                  sll          a0, s7, s5
                  sltiu        a6, a3, -464
                  lui          s11, 634040
                  sll          t1, tp, t0
                  srli         a5, sp, 9
                  srl          t1, s11, s10
                  xori         s7, s8, -1351
                  add          s6, s3, s8
                  srl          t1, s11, s0
                  sll          s2, s4, a3
                  nop
                  srl          a0, ra, a0
                  or           s9, t6, zero
                  slli         s2, s1, 24
                  nop
                  andi         s11, s7, 1986
                  addi         t5, s10, -292
                  sub          sp, s2, a2
                  srl          s1, a6, t3
                  slt          t6, s8, a0
                  ori          t0, s4, 722
                  add          s1, t2, zero
                  sra          a7, a7, a7
                  sll          gp, t0, t1
                  auipc        a6, 109950
                  srl          s3, a0, s9
                  ori          zero, t3, -185
                  slli         s6, gp, 13
                  or           t0, s0, a2
                  slti         gp, a7, -1842
                  sub          ra, zero, s6
                  sub          t5, a3, t2
                  addi         a5, t1, -1989
                  andi         a7, t1, 1801
                  sltu         s6, zero, s2
                  slti         t5, a7, -1658
                  srai         t5, s10, 29
                  andi         a1, ra, -1571
                  or           tp, t0, a3
                  slt          ra, s9, a5
                  sll          s6, s9, t6
                  slt          zero, a2, tp
                  addi         a0, s4, 1052
                  add          t2, zero, zero
                  sltiu        a5, s6, 1496
                  andi         a1, t1, -652
                  xori         t4, s4, -817
                  addi         a4, s10, 476
                  sra          sp, gp, a1
                  and          s3, a7, t0
                  lui          a7, 49494
                  sra          a0, s2, a5
                  or           t4, a2, gp
                  or           t2, s6, t2
                  add          a1, s9, s2
                  sltiu        zero, s0, 648
                  and          s3, a7, a7
                  addi         t2, t2, -1118
                  xori         s1, a4, 1553
                  slt          s6, a5, a6
                  slti         a1, a3, -1442
                  sltu         t5, s5, s5
                  slt          a2, zero, gp
                  ori          s2, t3, 1953
                  sll          s2, t6, s9
                  sltiu        s9, a4, -801
                  addi         s10, s7, 76
                  xor          t1, t0, s10
                  slti         s9, t1, -21
                  slti         s2, t3, 532
                  sltu         s2, s11, gp
                  or           s8, t5, s7
                  ori          a5, t2, 1420
                  sltu         tp, a2, t6
                  and          a1, s6, s10
                  sub          s7, a7, s8
                  slt          s11, a1, s0
                  slt          a2, a6, a0
                  sltiu        ra, a0, 1948
                  sra          t1, t2, ra
                  or           ra, t6, s9
                  lui          a7, 937199
                  sltu         ra, s10, t0
                  sll          t6, s1, tp
                  andi         s7, tp, 461
                  nop
                  auipc        a5, 525368
                  sltiu        a0, s8, -1472
                  srai         t4, t5, 27
                  xori         s2, t6, -882
                  auipc        t2, 78271
                  srai         sp, a2, 3
                  srl          t6, a5, t5
                  add          t2, s9, s11
                  slti         tp, t4, 1087
                  sltu         t6, s3, a1
                  li           gp, 0xb9929f8 #start riscv_int_numeric_corner_stream_1
                  li           ra, 0x0
                  li           s8, 0x74433c4
                  li           t1, 0x50204962
                  li           a2, 0xffffffff
                  li           t2, 0xffffffff
                  li           a1, 0x0
                  li           t6, 0xffffffff
                  li           a7, 0xffffffff
                  li           t5, 0xffffffff
                  add          t5, t5, a1
                  nop
                  add          t2, t1, a7
                  lui          t1, 794337
                  auipc        a1, 244856
                  sub          a7, a2, ra
                  sub          a1, t1, a7
                  sub          s8, a1, a1
                  add          a1, a1, ra
                  auipc        t5, 54166
                  lui          gp, 603677
                  add          t5, s8, t1
                  auipc        s8, 929906
                  auipc        t2, 919307
                  nop
                  auipc        t5, 123250
                  auipc        ra, 390594
                  nop
                  auipc        a2, 501951
                  nop
                  nop
                  lui          gp, 948493
                  sub          t5, ra, gp
                  add          t1, gp, t5
                  addi         t1, t1, 776
                  add          t6, t1, t5 #end riscv_int_numeric_corner_stream_1
                  srli         s7, gp, 30
                  sub          s7, s7, s2
                  or           t5, a7, s8
                  sltu         t3, s7, a5
                  sll          a4, sp, s4
                  add          s6, s3, a0
                  lui          t2, 84595
                  srai         s2, s5, 5
                  auipc        t4, 810638
                  lui          gp, 413854
                  sra          a4, s9, a1
                  slli         gp, a6, 6
                  sltiu        t6, a0, -1076
                  slti         s0, a3, -1532
                  slt          s3, s10, a2
                  andi         s1, zero, 279
                  and          a6, ra, ra
                  add          ra, a7, s6
                  sra          t6, a2, s6
                  slt          s0, t1, s5
                  srli         t1, t6, 1
                  sra          a4, a3, t4
                  srai         t0, ra, 26
                  add          zero, s8, a4
                  sll          gp, s6, a7
                  ori          sp, s7, -1754
                  slt          s11, sp, t5
                  sltu         t0, zero, zero
                  and          s8, t0, s4
                  lui          zero, 592842
                  sltiu        zero, s11, -234
                  slt          s3, a2, sp
                  srai         s0, a6, 27
                  xori         a7, zero, 1153
                  slti         t6, sp, -57
                  slli         t1, t3, 27
                  slti         t0, t5, -1901
                  slli         s0, t6, 30
                  srai         ra, s9, 29
                  srli         s11, t1, 0
                  add          t2, s3, zero
                  ori          s7, ra, 394
                  auipc        s3, 753577
                  ori          zero, s7, 1260
                  and          t3, s11, ra
                  ori          t3, t4, -1381
                  andi         s9, t4, -556
                  sltiu        t3, ra, -1686
                  ori          t4, a4, 800
                  slti         s7, s4, 214
                  xori         gp, t4, 1185
                  xor          t1, t2, s10
                  srl          tp, a0, a4
                  sll          a6, sp, a0
                  auipc        tp, 464461
                  and          s3, s11, tp
                  and          t4, s1, a2
                  sra          s7, s4, a0
                  srai         t1, t0, 28
                  add          s11, a4, s8
                  add          s10, s10, s1
                  ori          sp, a6, 910
                  sub          a0, gp, ra
                  add          t1, sp, a5
                  addi         s7, t2, -1229
                  slti         s8, s11, -1011
                  addi         tp, s6, 1054
                  lui          s2, 716111
                  sra          s6, ra, s5
                  and          zero, sp, s3
                  slti         s2, s4, 1616
                  sll          a5, s4, s1
                  sll          t5, s11, t3
                  xori         s1, a6, 553
                  lui          s6, 898558
                  xori         s3, a4, 1713
                  sra          a1, sp, a2
                  and          s9, a5, s4
                  slti         a1, a1, 1832
                  xor          t0, a4, s7
                  xor          a0, s11, t6
                  lui          t2, 929730
                  srli         t4, s0, 20
                  sltu         s1, a5, t2
                  sub          s6, tp, s3
                  ori          s8, s11, -1525
                  sra          t4, t5, s11
                  slli         ra, t2, 20
                  ori          a2, tp, -387
                  srai         t1, s10, 1
                  slli         a0, a6, 4
                  slli         t4, s6, 0
                  sll          zero, tp, s7
                  srai         ra, s10, 12
                  lui          ra, 818297
                  sra          t4, sp, s6
                  slt          sp, s10, t5
                  xor          t1, s1, a6
                  ori          t3, a2, -947
                  nop
                  and          ra, s0, a2
                  addi         s0, a1, -949
                  srli         sp, s11, 5
                  and          t6, s8, t3
                  srai         t6, s0, 2
                  sll          t6, sp, tp
                  sll          t4, s8, s8
                  or           s7, t4, s6
                  sltiu        t0, a2, 1163
                  slt          t0, t2, t1
                  slti         a5, s11, 1923
                  srli         t3, t0, 31
                  srai         s3, s0, 13
                  slti         s8, s9, -147
                  sltiu        s8, s2, 892
                  srl          s0, s6, s4
                  srli         s1, a3, 27
                  sltu         s3, s2, s0
                  srai         a4, s9, 30
                  andi         a2, s3, -313
                  srl          t1, s5, a4
                  slt          zero, s1, s0
                  slt          a5, s0, a0
                  sra          a5, t0, t2
                  sll          s1, s3, ra
                  ori          s2, t5, 581
                  sltu         a6, a4, a0
                  xori         t1, s11, 1325
                  slt          s0, gp, a4
                  slti         s7, a0, -1370
                  xor          s6, a1, s5
                  sltu         t3, zero, s2
                  andi         s11, t4, -606
                  lui          s10, 912249
                  sltu         s10, ra, a4
                  xori         s1, a1, -854
                  sltiu        s3, s5, -1451
                  auipc        a7, 50482
                  srai         t6, zero, 31
                  slti         a7, a7, 1671
                  or           t5, t1, zero
                  lui          sp, 297981
                  sltiu        a4, tp, 1961
                  sll          t1, a4, t2
                  and          gp, sp, a1
                  slti         s0, a2, 254
                  srli         t6, tp, 18
                  and          sp, ra, s8
                  nop
                  auipc        tp, 973811
                  sltiu        s2, sp, -1807
                  andi         a0, a3, 970
                  xor          s1, a7, t0
                  and          sp, ra, s3
                  srai         s0, a7, 18
                  slti         a5, a0, 511
                  andi         s10, s3, -1684
                  srl          t3, sp, a5
                  ori          a2, t3, -1374
                  sltu         a1, t5, gp
                  sra          s10, s9, t6
                  srai         tp, t3, 29
                  addi         sp, s7, 1079
                  srli         t0, s4, 20
                  srl          t2, s7, t3
                  ori          t1, a2, 1645
                  andi         t1, s1, 1013
                  sub          t4, a4, a5
                  sra          s10, a2, a0
                  andi         t4, a3, 1814
                  add          ra, s6, t6
                  or           s2, s3, s4
                  auipc        gp, 998004
                  xori         a6, t3, -702
                  slli         ra, a0, 4
                  slti         a5, t5, -1929
                  sltu         t3, a4, s1
                  ori          s9, a0, -1711
                  sltu         t2, t4, a7
                  srl          s3, s6, s6
                  ori          a5, a5, -198
                  lui          sp, 478102
                  xori         s3, s2, -1690
                  srl          ra, zero, a1
                  slti         sp, s10, 1340
                  slt          gp, a3, a0
                  xori         t4, sp, -1600
                  and          s11, t3, ra
                  or           s2, s10, a1
                  nop
                  slt          t2, ra, s2
                  xor          t5, t4, t4
                  add          a7, s3, a7
                  sll          s2, s3, s0
                  srli         t3, sp, 0
                  or           s0, s2, zero
                  addi         a1, t1, -698
                  lui          t0, 1030846
                  lui          s7, 234221
                  srli         s6, a1, 7
                  srai         t0, s7, 14
                  srai         t0, s9, 20
                  auipc        t4, 905787
                  sra          tp, a4, ra
                  slt          t6, a7, s4
                  addi         ra, t3, -1326
                  auipc        s10, 836317
                  slli         a4, a4, 30
                  andi         t4, s2, 776
                  sub          a5, s9, s0
                  srl          t6, s8, a2
                  sra          s1, s2, s10
                  sub          sp, t6, a6
                  sll          a7, s8, s3
                  xori         ra, sp, 453
                  addi         s3, s5, 960
                  slli         t2, s0, 20
                  sltiu        s2, s5, 560
                  slti         t2, tp, -359
                  sub          s6, a2, a4
                  sll          s8, s4, sp
                  slli         gp, s7, 15
                  srl          t4, t5, t2
                  nop
                  slt          t3, s11, s5
                  ori          a4, s1, -1297
                  lui          s10, 795637
                  sltu         a1, t6, s11
                  sra          zero, s11, s8
                  lui          a2, 1002619
                  and          t5, s4, s1
                  or           s8, t6, zero
                  xor          s0, t3, tp
                  xori         t6, s0, 920
                  or           s10, t4, s2
                  add          a6, s5, t4
                  sltu         a7, s7, zero
                  slt          t5, gp, a5
                  sltu         a4, ra, t0
                  add          a1, t5, a4
                  sll          t6, t0, sp
                  sltu         a1, s7, a2
                  and          a1, a1, gp
                  xor          t3, gp, sp
                  ori          a6, a0, 1098
                  slt          s3, s8, s7
                  xor          s1, a4, s3
                  slli         t3, a1, 24
                  nop
                  sltu         a7, s5, ra
                  slti         t2, t1, 1414
                  slti         ra, s10, -683
                  srl          sp, t3, t5
                  ori          gp, s5, -1280
                  or           s10, t6, a5
                  sll          a6, t1, gp
                  sub          s2, t6, a7
                  auipc        tp, 511443
                  sll          s9, s3, a1
                  srai         t1, tp, 13
                  sub          s1, gp, s2
                  srli         s7, s8, 2
                  add          a6, a3, a6
                  add          s8, s8, s1
                  slt          s1, s3, a7
                  sll          s6, a7, s4
                  slti         a6, s0, -1573
                  or           zero, t2, gp
                  lui          s10, 605976
                  andi         a5, t2, 207
                  addi         t0, a5, 197
                  sra          s2, s5, s8
                  sub          sp, tp, ra
                  slt          t5, t4, a1
                  add          s2, s5, zero
                  ori          a6, a5, 1389
                  add          t1, s9, zero
                  slt          tp, gp, s4
                  sra          t4, a0, a5
                  sltu         s7, s4, t5
                  srai         s10, s8, 23
                  addi         zero, s1, 841
                  xor          a4, t0, s2
                  xor          t2, t6, s8
                  sltu         a5, a0, a6
                  srl          a6, s4, t1
                  auipc        a7, 556305
                  or           s6, s2, t2
                  auipc        a5, 155357
                  srl          t5, ra, t1
                  sltu         tp, zero, t2
                  sltiu        t0, s4, 1904
                  xori         a2, a1, -681
                  srai         a2, t3, 27
                  slti         t3, ra, 1465
                  xori         s0, s5, 628
                  nop
                  sra          s9, a7, a4
                  slli         t5, s4, 15
                  sub          s7, a2, zero
                  or           a4, tp, a3
                  srai         s9, a6, 13
                  slt          a4, s3, a6
                  srai         t1, s9, 0
                  sll          s0, s0, s9
                  andi         s3, s11, -1345
                  and          t0, ra, a4
                  srai         t1, s11, 21
                  and          t1, a2, s5
                  slt          gp, t2, a5
                  sll          s8, gp, s7
                  srl          s6, sp, a2
                  andi         ra, t5, -1870
                  sltiu        a6, t6, -553
                  lui          t2, 847792
                  sra          a4, t2, a5
                  sltiu        s9, a0, -671
                  srl          s10, s6, t4
                  sll          t3, s3, a0
                  srai         t0, a1, 30
                  slti         t2, zero, -19
                  sub          a0, s7, tp
                  addi         a6, a3, -1487
                  srai         s8, s4, 17
                  slti         a7, a3, -1718
                  lui          zero, 569491
                  sra          a0, tp, s11
                  and          s9, t4, t4
                  sub          t0, s4, s0
                  srl          s11, s2, a7
                  srl          a7, t1, a2
                  andi         a2, t0, 1130
                  addi         s6, s10, -1279
                  and          a7, t4, a2
                  sra          t3, t3, s9
                  srai         ra, a0, 14
                  slti         s3, t2, -1638
                  sub          t0, s1, tp
                  xori         s8, a3, 35
                  sll          t5, a3, t0
                  andi         a1, s0, 1531
                  sra          s11, ra, t5
                  nop
                  add          s11, s10, s5
                  slt          a1, s0, t2
                  srli         zero, zero, 7
                  addi         a6, a2, -1381
                  nop
                  sll          s11, t6, s6
                  xori         s0, sp, -1172
                  srli         t3, t3, 15
                  sltiu        a4, t3, -62
                  slti         t3, t4, 843
                  srai         tp, t2, 23
                  slt          s9, t6, a2
                  slti         s6, t5, 847
                  sltu         s7, s11, s11
                  nop
                  slli         t0, s1, 5
                  andi         a1, tp, -666
                  slti         t3, ra, -275
                  andi         t1, a6, -293
                  or           s1, t5, s9
                  slti         s9, t6, 1953
                  and          t6, s0, t5
                  slli         s2, s4, 17
                  slti         s9, s8, 217
                  sll          s7, gp, t1
                  sltiu        a0, t0, -1291
                  sub          a0, a4, t2
                  sltiu        s9, s10, 1427
                  nop
                  andi         s11, s8, 1024
                  and          s3, s8, t3
                  sltu         a7, a5, s1
                  andi         tp, a6, -1982
                  slt          t2, s4, t2
                  sub          s8, s2, t2
                  sub          t1, s5, t1
                  sra          a1, s1, a6
                  sltu         s3, a4, a2
                  lui          t2, 291404
                  nop
                  srli         s2, t5, 15
                  sra          s3, sp, s0
                  auipc        s1, 897101
                  ori          s7, a4, -640
                  andi         a5, a0, 1008
                  ori          s9, s1, -1398
                  sltiu        s11, a5, 1539
                  slt          s2, t0, s5
                  xor          s0, s0, t6
                  sub          s10, sp, t6
                  sll          t2, a0, s9
                  auipc        t1, 439041
                  addi         t2, s4, -977
                  srl          s1, tp, t5
                  srli         s9, s8, 25
                  or           s11, a4, s2
                  sll          t2, a4, t0
                  sub          t5, a0, a1
                  li           gp, 0x18a9ab5d #start riscv_int_numeric_corner_stream_0
                  li           s8, 0xffffffff
                  li           a4, 0x80000000
                  li           a5, 0x80000000
                  li           s1, 0xffffffff
                  li           s3, 0xedab3d8d
                  li           ra, 0xffffffff
                  li           a1, 0x0
                  li           t2, 0xffffffff
                  li           a7, 0x0
                  add          s8, s3, a1
                  sub          a1, s1, a7
                  sub          a5, gp, a4
                  nop
                  add          s8, gp, gp
                  nop
                  nop
                  lui          gp, 961888
                  add          ra, a5, t2
                  lui          s3, 961455
                  sub          s1, s8, t2
                  addi         s1, ra, -1523
                  lui          ra, 218125
                  nop
                  lui          gp, 287196 #end riscv_int_numeric_corner_stream_0
                  xori         a7, a6, 305
                  slti         s11, s3, 1272
                  slt          tp, a7, t4
                  srl          t4, t4, a3
                  slt          t5, s1, zero
                  andi         t0, t2, -962
                  srl          a1, s6, t4
                  srli         t0, s6, 15
                  sltiu        a6, t1, 942
                  sra          a6, s8, s2
                  addi         s9, t4, -1417
                  auipc        s3, 720126
                  addi         t3, zero, -113
                  sltiu        t5, zero, -1340
                  andi         sp, s10, -265
                  xori         a1, a2, 733
                  add          t5, s11, t0
                  slli         s10, t6, 11
                  ori          t4, a2, 1851
                  sub          s3, a3, s10
                  xori         t6, t6, 1969
                  sra          a5, t3, t0
                  srai         ra, s2, 6
                  xori         sp, zero, 1847
                  and          a2, zero, t2
                  sll          tp, s6, gp
                  auipc        t1, 1015356
                  xor          t3, s7, a6
                  auipc        a2, 614989
                  srl          sp, a7, a7
                  srli         t3, t0, 22
                  auipc        s2, 710221
                  sub          s0, s0, t4
                  andi         t0, s2, 232
                  sra          s0, s8, a0
                  sltu         t1, s1, s6
                  addi         t6, zero, 641
                  sltu         t3, a1, sp
                  auipc        a0, 7177
                  ori          t1, t5, 1053
                  add          s2, t6, a0
                  sra          tp, tp, t1
                  slli         s3, s8, 22
                  addi         s0, s1, -341
                  add          s0, t0, s4
                  xori         s8, s5, 889
                  auipc        t3, 583252
                  ori          gp, tp, -482
                  sltiu        t4, t3, 774
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           t0, 0x0
                  li           s7, 0x80000000
                  li           tp, 0x0
                  li           s10, 0x0
                  li           sp, 0x80000000
                  li           s11, 0x80000000
                  li           t3, 0x80000000
                  li           ra, 0x80000000
                  li           a1, 0x0
                  sub          s11, sp, s7
                  nop
                  auipc        t0, 560715
                  add          s11, s7, ra
                  sub          a1, s7, t0
                  add          s11, ra, sp
                  sub          tp, t3, ra
                  lui          t0, 978846
                  add          t3, t0, s10
                  nop
                  lui          s10, 804395
                  lui          t0, 336182
                  lui          a2, 356648
                  nop
                  lui          a2, 129412
                  add          s11, s11, s11
                  nop
                  lui          sp, 982030
                  add          t0, sp, t3
                  add          s11, t3, a2
                  add          tp, s11, s11
                  sub          a1, a2, sp
                  add          s10, t3, s11
                  nop
                  addi         a2, t3, -657 #end riscv_int_numeric_corner_stream_11
                  sra          s0, s11, ra
                  xori         s7, s0, -1171
                  srai         s0, t1, 21
                  lui          t3, 106776
                  sll          s11, a7, a3
                  slt          a5, a7, a4
                  lui          a2, 49120
                  slti         s3, s2, -683
                  ori          a5, sp, 9
                  xor          s0, t0, t1
                  ori          gp, s1, 1479
                  sll          t0, t2, t0
                  slli         s11, s1, 8
                  xori         t0, s4, -25
                  and          a4, t6, a2
                  srai         s0, s7, 14
                  sub          zero, s5, t5
                  sltiu        s2, s7, 1139
                  nop
                  slti         t2, s0, -1058
                  auipc        s7, 893390
                  srli         s3, t3, 14
                  slli         s7, t1, 7
                  srl          s0, s1, tp
                  srli         a0, a3, 8
                  srl          a0, t5, a2
                  sltu         s0, t3, s2
                  slli         t6, a0, 7
                  srai         s2, a7, 12
                  ori          t1, a4, -1948
                  add          s7, tp, s0
                  srai         t6, t4, 23
                  sltiu        gp, s9, 1167
                  and          t1, s11, a2
                  srl          zero, a6, s8
                  and          a1, s10, s0
                  sra          a4, s7, t1
                  addi         s11, a0, 572
                  and          a0, a5, s10
                  srl          sp, a7, s1
                  sll          s1, t2, tp
                  andi         t2, zero, 738
                  slti         a6, s1, 1535
                  sll          s7, gp, a6
                  nop
                  nop
                  srli         a1, a5, 26
                  auipc        s10, 578680
                  and          a5, s1, s10
                  srai         a0, t6, 25
                  sll          a0, s6, s10
                  and          s6, tp, s7
                  sra          t6, sp, zero
                  nop
                  nop
                  slli         s11, s8, 14
                  slti         t6, t5, -967
                  xori         s0, zero, -2008
                  andi         s2, s0, -1257
                  ori          s2, a6, 1142
                  srai         a1, a4, 13
                  srai         ra, s2, 9
                  sltiu        a0, tp, -39
                  auipc        s7, 13377
                  and          a0, s6, ra
                  slli         t3, a2, 7
                  sll          sp, s3, t4
                  slli         a0, sp, 17
                  ori          a5, t1, -849
                  andi         s10, s4, -1092
                  lui          t6, 805027
                  or           s9, sp, s1
                  slti         s1, a2, -67
                  nop
                  or           t1, tp, t5
                  sll          s1, s4, a2
                  xor          t1, a5, sp
                  sltu         a5, t3, s2
                  nop
                  sltu         s3, a1, s11
                  srl          sp, a2, t4
                  lui          a6, 123797
                  sub          s2, tp, s3
                  slti         ra, a0, -142
                  xor          tp, s5, s7
                  sll          zero, sp, t2
                  xor          s1, t6, s11
                  nop
                  ori          t6, a3, 583
                  xor          a7, a2, t3
                  srai         s10, s1, 5
                  or           a1, t2, gp
                  slli         a6, s11, 30
                  or           s10, a1, sp
                  slti         a2, a2, 1304
                  sll          s11, t0, s8
                  addi         a1, a1, -740
                  srl          t4, s0, s10
                  srli         s10, sp, 0
                  slt          s9, s9, gp
                  or           t1, a4, a4
                  andi         t5, s0, 1947
                  lui          a2, 89193
                  lui          s2, 622420
                  and          t6, s7, sp
                  nop
                  andi         tp, a7, 1332
                  xori         s1, gp, 847
                  lui          gp, 187949
                  or           s7, s0, s2
                  sltiu        t1, s10, -1897
                  and          s10, t3, t5
                  ori          a4, a4, 1335
                  auipc        s1, 753432
                  sra          sp, a3, a6
                  li           a4, 0xc3b9b9ad #start riscv_int_numeric_corner_stream_17
                  li           s8, 0x0
                  li           s2, 0xffffffff
                  li           tp, 0xffffffff
                  li           gp, 0xf4a543ce
                  li           s11, 0xffffffff
                  li           s6, 0x0
                  li           t0, 0xf0f08dd6
                  li           t1, 0xffffffff
                  li           s7, 0x0
                  lui          s11, 597775
                  sub          s2, t0, s2
                  auipc        a4, 651029
                  lui          s6, 503580
                  sub          t0, s6, s7
                  auipc        s7, 440526
                  add          t0, gp, s7
                  auipc        t1, 1017585
                  add          t1, s2, tp
                  nop
                  nop
                  lui          s11, 349436
                  addi         tp, gp, 1593
                  auipc        gp, 742720
                  auipc        t0, 381422
                  sub          t1, s11, a4
                  add          s8, tp, s7
                  addi         t1, t0, -822
                  nop
                  lui          a4, 1003817
                  sub          a4, s6, s6
                  nop
                  nop #end riscv_int_numeric_corner_stream_17
                  xori         s7, s11, 1924
                  lui          zero, 74417
                  or           sp, a3, s0
                  sub          a6, a1, ra
                  srli         a0, t3, 8
                  lui          s9, 714595
                  xori         ra, t6, -165
                  andi         ra, s1, 1334
                  xori         t1, s8, 601
                  ori          a0, s5, 1944
                  or           s10, a7, a0
                  srli         s6, a4, 3
                  xor          a0, tp, s9
                  xor          s9, s0, s7
                  or           t1, t2, t5
                  sra          tp, a3, zero
                  slt          tp, a2, a5
                  sltiu        t2, s7, -577
                  lui          s6, 405448
                  srli         t6, a5, 29
                  sltiu        s11, s11, -139
                  sll          a5, t1, t3
                  add          s7, s1, s11
                  and          t5, s0, t1
                  andi         s9, a0, -120
                  slli         zero, s8, 21
                  xor          s1, t2, s5
                  auipc        a7, 638190
                  sub          a4, s0, t3
                  slli         tp, s6, 19
                  sll          tp, t0, a7
                  ori          sp, tp, -93
                  ori          a5, sp, 69
                  slli         a7, tp, 20
                  srl          s10, s0, a2
                  and          zero, s11, s1
                  xor          s3, t2, s11
                  slti         t0, t5, -1537
                  xori         s8, a2, 579
                  slt          tp, s7, ra
                  slti         s10, a1, -1827
                  lui          t1, 279054
                  sltu         s1, s10, s3
                  srl          t1, a1, a7
                  srli         a5, a6, 17
                  andi         s8, s10, -315
                  add          a4, t3, t5
                  and          a5, gp, s5
                  sltiu        t6, s0, 1139
                  nop
                  sltiu        a5, ra, -1007
                  li           s2, 0xf097d44 #start riscv_int_numeric_corner_stream_16
                  li           a0, 0xfdb20d78
                  li           s8, 0x80000000
                  li           s1, 0xffffffff
                  li           s9, 0x80000000
                  li           tp, 0xffffffff
                  li           s7, 0x80000000
                  li           s3, 0xffffffff
                  li           a2, 0x80000000
                  li           t5, 0x80000000
                  addi         a0, s3, -1861
                  auipc        s8, 927673
                  nop
                  lui          s3, 141162
                  auipc        s7, 443550
                  sub          s8, a0, s1
                  nop
                  sub          s7, tp, s8
                  sub          t5, s1, s8
                  auipc        s1, 111749
                  add          t5, s1, s1
                  auipc        tp, 890806
                  nop
                  lui          s7, 621200
                  auipc        a2, 407839
                  nop
                  add          tp, s2, s3 #end riscv_int_numeric_corner_stream_16
                  xor          s9, a6, a3
                  xori         t3, t2, 81
                  xor          a1, sp, tp
                  sll          a4, a3, s7
                  sll          s7, t6, s4
                  slli         a2, ra, 17
                  xori         gp, s2, 1691
                  xor          s1, s1, s2
                  xori         s3, a0, 1396
                  or           a4, a2, t3
                  auipc        s3, 847630
                  srli         s6, s8, 27
                  xori         t2, ra, -978
                  xor          t6, t4, a5
                  srl          s0, a7, t0
                  addi         t5, s8, -112
                  nop
                  xori         s6, a4, 1271
                  xori         t4, a7, 2025
                  addi         a2, a3, 778
                  or           gp, s4, s9
                  slli         sp, gp, 16
                  srli         a1, a4, 25
                  addi         s7, zero, 1721
                  or           a6, t2, s8
                  srli         tp, a1, 27
                  srli         a5, a2, 5
                  sra          a6, zero, a3
                  and          a5, s7, s4
                  sra          t1, s1, zero
                  nop
                  or           gp, a3, a1
                  ori          t0, s9, -1702
                  and          a7, ra, a2
                  nop
                  addi         t4, a2, 927
                  sltu         t3, a7, a2
                  sra          s8, a4, gp
                  sltiu        a2, t0, -1183
                  addi         s1, s10, -1620
                  xor          s8, s6, a0
                  nop
                  xori         s0, s10, 637
                  slli         s11, t5, 20
                  srl          a2, t1, t4
                  sub          s11, s0, a7
                  add          s11, t0, s5
                  xor          s2, t5, t6
                  sll          a2, s2, tp
                  srai         sp, t3, 3
                  xor          s10, s1, a2
                  srai         s2, a2, 31
                  srli         s1, a6, 6
                  slt          t1, tp, a0
                  nop
                  add          a5, a7, s2
                  sltiu        zero, a4, -379
                  sub          t4, s1, ra
                  sra          gp, sp, sp
                  and          s8, t0, a1
                  slt          zero, a2, t3
                  andi         s9, t4, -1009
                  xor          t0, s0, s0
                  ori          s3, t3, -7
                  addi         a7, s3, -526
                  addi         s8, sp, 1180
                  srli         a7, ra, 3
                  srli         t6, ra, 13
                  srl          s10, s9, t1
                  slti         s11, sp, -1618
                  slti         sp, a5, -2029
                  srli         s3, s0, 13
                  srli         s11, s7, 14
                  sltiu        t1, s11, 343
                  ori          zero, zero, -35
                  sltiu        a1, s2, 1991
                  lui          s7, 564510
                  andi         t0, s5, -1024
                  srli         a1, ra, 28
                  nop
                  xori         t6, a4, -1236
                  sra          s0, s9, ra
                  and          a5, gp, s9
                  nop
                  and          zero, a2, s10
                  srli         a6, s3, 15
                  or           s8, s11, s11
                  srli         t4, ra, 26
                  addi         t2, a2, 334
                  slti         s6, a4, -509
                  xor          tp, s11, s10
                  sll          s1, tp, s8
                  srai         t3, a0, 17
                  lui          s1, 520583
                  andi         a0, a0, 1160
                  and          t6, s6, a7
                  add          t5, a5, t4
                  srai         t4, a6, 22
                  nop
                  ori          t1, s5, -1831
                  sra          gp, t5, a1
                  slli         s10, a1, 5
                  sll          a7, s11, t0
                  auipc        t2, 470973
                  srl          a4, t1, t0
                  xor          tp, zero, t5
                  andi         tp, a7, 693
                  xori         a5, t6, 1909
                  auipc        s6, 894297
                  add          t0, s9, a2
                  ori          s9, a7, 1674
                  nop
                  nop
                  sub          s0, t5, a1
                  and          a5, a5, a6
                  srli         s6, a0, 24
                  slt          t0, a0, s3
                  sll          a5, s4, s11
                  addi         t3, zero, -515
                  slt          gp, s0, s3
                  auipc        s0, 920032
                  or           t1, t4, s0
                  sll          s11, s8, s10
                  or           s7, s1, s9
                  slti         t4, sp, -1139
                  xor          a5, s4, a0
                  auipc        zero, 956973
                  xor          s0, t6, t2
                  sll          tp, tp, a1
                  and          a7, s1, sp
                  slli         a6, t2, 17
                  xor          t3, t2, a1
                  addi         a0, s2, 1571
                  or           t4, s3, a5
                  srl          s1, t6, t3
                  or           a6, t6, s5
                  srai         ra, s10, 29
                  sra          t4, ra, s3
                  slti         tp, a6, -43
                  xor          gp, t5, s9
                  xori         t6, t4, 542
                  add          a2, s3, t1
                  slt          a1, a4, a5
                  xori         s1, a1, -1795
                  ori          s11, t4, -371
                  auipc        s0, 540124
                  nop
                  slti         s3, gp, -1152
                  srai         a5, tp, 11
                  sll          sp, t2, s9
                  srl          t4, sp, s8
                  sra          gp, s5, zero
                  srl          s8, s8, t4
                  slt          t6, a2, tp
                  slt          gp, t5, a3
                  srl          a5, a6, t3
                  srai         zero, a2, 7
                  slli         a4, t0, 9
                  slli         a4, s3, 5
                  auipc        t2, 408550
                  ori          a0, a7, 1348
                  xor          s3, t4, a5
                  nop
                  lui          s8, 618359
                  lui          ra, 64215
                  xori         a7, a1, 1847
                  sra          s8, s4, s10
                  addi         a5, t4, -2042
                  nop
                  srl          t0, s9, ra
                  sub          s6, s10, t4
                  srl          s0, a4, a6
                  slti         t1, a7, -1467
                  slt          t0, t2, s0
                  sltiu        s6, gp, -1533
                  sltu         t1, s11, s1
                  xori         zero, s2, 1978
                  xori         t3, a2, 15
                  slli         a4, s6, 0
                  slti         gp, s7, -491
                  xor          a2, t0, a7
                  slli         zero, s10, 20
                  slli         ra, s11, 28
                  slt          t3, a4, t4
                  xori         gp, zero, 1183
                  lui          ra, 55018
                  xori         s3, zero, -636
                  srl          s9, tp, a3
                  srl          s2, s6, s0
                  slt          a0, zero, s3
                  addi         a0, a4, -1902
                  sra          t5, a3, s10
                  sltiu        t6, t3, 923
                  andi         t0, t2, -1379
                  srai         t4, t6, 20
                  srli         a4, a5, 26
                  sltu         t3, t4, ra
                  sra          s7, s5, t5
                  srai         gp, s3, 2
                  xori         s1, a0, -1895
                  slti         s9, t0, 1351
                  and          a0, s3, s9
                  add          t0, ra, t3
                  slti         s11, t5, -1175
                  srli         gp, a4, 22
                  sltu         ra, a3, sp
                  addi         t3, t5, 360
                  srli         s2, a7, 12
                  and          ra, a1, t3
                  slti         a7, s9, 325
                  sll          t1, s4, a0
                  add          a4, a0, s4
                  srli         a0, tp, 15
                  slli         s10, gp, 0
                  or           s2, tp, gp
                  andi         t4, t3, -1132
                  nop
                  add          ra, t3, s2
                  ori          s2, t5, -1586
                  auipc        t0, 469260
                  lui          s10, 926622
                  srl          s10, a4, t0
                  sltu         t5, tp, a7
                  or           zero, t1, a2
                  slli         t1, a6, 2
                  addi         a1, a0, -1050
                  lui          t2, 160745
                  addi         s3, a7, -1153
                  srl          zero, zero, tp
                  ori          a4, sp, -2026
                  andi         a1, gp, -1095
                  sra          t3, a5, s11
                  xori         tp, s1, 872
                  sltiu        t0, tp, -1198
                  sltiu        t4, s8, 1921
                  srai         s10, t5, 22
                  srai         s8, s3, 13
                  sra          s7, tp, t2
                  ori          t0, t4, 1869
                  xor          a1, a6, s9
                  srli         ra, s2, 16
                  sub          t6, s6, gp
                  add          ra, s10, s8
                  and          t0, tp, s2
                  sll          zero, a0, t6
                  nop
                  slt          tp, a5, s10
                  srai         ra, t4, 4
                  xor          t5, a6, s8
                  xori         a0, t5, -1472
                  slt          t5, s11, s9
                  srl          s1, sp, a7
                  addi         a5, s3, 1302
                  sub          s2, s0, a0
                  nop
                  lui          t5, 547448
                  slt          a7, a6, s0
                  or           t6, s9, t6
                  sltu         a5, s2, t6
                  andi         s0, gp, -1895
                  slli         a6, s9, 1
                  addi         s3, s6, 908
                  srai         tp, t3, 30
                  srl          sp, s10, ra
                  slli         t3, a0, 18
                  sub          s10, s1, t6
                  ori          t4, t6, 1400
                  sub          t5, a4, t5
                  xor          a1, a0, a5
                  sll          s6, s9, a4
                  slli         sp, s5, 13
                  sll          sp, a5, gp
                  or           t1, t6, t0
                  lui          s2, 277023
                  andi         zero, s1, 1153
                  lui          a2, 360087
                  lui          s2, 737566
                  nop
                  sltiu        s3, a1, 1706
                  or           a0, t4, s5
                  ori          s3, s0, 211
                  addi         s10, s11, 494
                  srli         s2, s0, 19
                  or           t6, s0, ra
                  slt          a7, s6, s3
                  sra          a4, a1, ra
                  nop
                  andi         s11, a2, 500
                  sra          s7, a6, s10
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s3, 0xdf750b3b
                  li           gp, 0xbcc0ff25
                  li           t3, 0x0
                  li           s8, 0x80000000
                  li           a5, 0x0
                  li           s7, 0xffffffff
                  li           s0, 0x389c8fcc
                  li           s10, 0xffffffff
                  li           sp, 0x80000000
                  lui          t5, 605947
                  nop
                  auipc        gp, 52474
                  add          s10, gp, t5
                  add          sp, t3, t3
                  auipc        gp, 998817
                  lui          s0, 538640
                  add          a5, a5, sp
                  lui          s3, 668730
                  auipc        t5, 463756
                  addi         s10, s10, -553
                  auipc        gp, 255955
                  addi         s3, a5, 1679
                  addi         s10, s3, 401
                  nop
                  sub          t3, s3, s10
                  addi         s0, s10, -1728
                  auipc        s10, 6432
                  auipc        s10, 1027846
                  sub          t5, t3, t3 #end riscv_int_numeric_corner_stream_4
                  slti         s0, sp, 1361
                  sll          t1, s11, a7
                  srai         t5, t6, 29
                  lui          t5, 917414
                  nop
                  or           t1, s4, t2
                  xori         t6, s3, -1543
                  nop
                  xor          s6, s11, a7
                  slt          a1, a5, ra
                  slli         zero, s7, 9
                  auipc        ra, 587087
                  slli         t5, ra, 22
                  nop
                  add          t2, s9, sp
                  slli         s6, t3, 20
                  sll          a5, s4, s11
                  slli         s11, s7, 5
                  add          s11, s0, t6
                  nop
                  xor          a6, s0, t1
                  srli         t3, a3, 1
                  ori          t0, a3, 1988
                  srli         s2, t1, 7
                  sltu         a1, a6, a1
                  add          t2, t3, s6
                  xori         s1, zero, 1468
                  ori          a1, a7, 644
                  or           s6, t0, a3
                  andi         a5, a0, 1362
                  lui          a7, 92545
                  lui          t0, 653419
                  srl          s7, zero, a3
                  sra          t1, a7, s4
                  auipc        s1, 783229
                  andi         s6, s2, 322
                  sll          s9, s6, t5
                  sltu         a1, s3, tp
                  slti         s9, t6, -1868
                  xori         tp, s0, -1226
                  andi         t6, t0, -154
                  or           t4, t0, zero
                  ori          t5, s1, -1263
                  sll          a6, sp, s11
                  add          a0, a0, a2
                  add          gp, s3, s4
                  srai         a2, s9, 4
                  nop
                  xor          t1, a5, a0
                  sltiu        t3, s3, -1558
                  sltu         t4, t1, t1
                  sltu         s3, sp, gp
                  addi         a5, s6, -1699
                  or           t3, s3, s10
                  sub          t5, a6, a7
                  and          a0, a3, a2
                  sll          a0, s4, s3
                  or           a6, s9, s0
                  add          t6, s7, zero
                  sub          a1, a3, s6
                  srl          s3, t4, a6
                  sll          a6, a6, tp
                  andi         a6, a7, -1917
                  or           t2, s1, a6
                  slli         a1, t3, 18
                  slti         gp, s11, -339
                  sltu         s0, gp, a5
                  sra          ra, a5, t0
                  sra          s11, sp, a0
                  addi         tp, t4, -1192
                  sub          s6, a3, s5
                  xori         a5, s4, 973
                  lui          s11, 363141
                  sra          a6, a0, a2
                  slti         a5, t6, 1164
                  or           ra, t4, s5
                  srl          s1, s4, s10
                  addi         t4, s8, -1830
                  lui          s7, 66397
                  addi         sp, s0, 1282
                  sra          s1, gp, s0
                  addi         s8, a4, -1952
                  sub          s0, s2, a4
                  xor          t2, ra, t1
                  srli         t3, t6, 2
                  sltiu        a7, a5, -1055
                  slti         zero, a5, 1647
                  srli         t3, t6, 26
                  and          t3, t3, t2
                  lui          t1, 591670
                  slt          zero, s10, t6
                  and          s11, tp, a6
                  srai         t5, s11, 3
                  sll          s8, a4, s3
                  srl          s11, t2, t1
                  sll          a0, t1, tp
                  or           t4, a6, a1
                  slli         s2, t1, 25
                  ori          s11, a5, -997
                  or           a0, gp, t0
                  auipc        s1, 982037
                  xori         t4, a0, -395
                  sltu         a4, a5, s8
                  add          s0, t6, t3
                  slt          s6, t4, s1
                  slt          gp, a4, t4
                  add          t0, s10, s3
                  ori          a7, t5, 837
                  andi         t3, sp, 289
                  sltu         t0, s10, t5
                  srl          t0, s8, s7
                  srli         s7, t6, 30
                  srli         s7, s3, 8
                  slti         a7, gp, 1177
                  sll          a1, a0, s5
                  xor          s1, s6, a4
                  srl          t1, s7, s1
                  nop
                  andi         t2, t2, -968
                  srli         a7, s6, 13
                  sll          s6, a6, s3
                  lui          a4, 154719
                  xori         t3, s10, 1649
                  or           t1, s3, a7
                  slli         ra, s1, 4
                  slti         tp, s8, -173
                  srl          t0, s6, s11
                  lui          s0, 1003556
                  addi         s6, a1, -491
                  lui          a0, 438150
                  or           s11, s2, s9
                  add          t4, s11, s4
                  and          a5, t6, s2
                  xor          a2, t2, a1
                  or           a7, a1, s8
                  and          sp, a4, a7
                  lui          gp, 793892
                  srli         s10, t6, 18
                  lui          a6, 418908
                  srl          s11, a1, zero
                  slli         a7, a5, 22
                  auipc        t3, 381832
                  xor          s10, t4, a6
                  sub          a6, t0, s5
                  and          t4, s0, gp
                  auipc        s6, 222421
                  or           gp, a6, s8
                  slt          t3, a0, s0
                  srli         a5, ra, 27
                  addi         t6, a4, 1872
                  sltu         t5, gp, t3
                  slt          s1, s5, s10
                  xori         a0, t6, -1603
                  sll          sp, t1, t2
                  sra          a2, s3, t6
                  or           a7, a2, a2
                  sltiu        t6, a1, -351
                  srl          zero, s9, s2
                  add          s7, t4, s5
                  or           t3, gp, s5
                  srli         s2, a7, 16
                  andi         s7, a6, -726
                  sll          s9, a0, a3
                  nop
                  sltu         a1, t5, a2
                  and          s2, a4, s5
                  srl          a5, s1, s6
                  or           t1, s10, gp
                  slt          s2, a5, s1
                  sltu         t6, s8, s0
                  xor          a0, t3, s4
                  add          s11, ra, a7
                  slt          s0, s2, gp
                  and          zero, s6, s9
                  sltu         s1, zero, tp
                  or           s6, s8, t2
                  sub          s6, s9, s9
                  sltiu        s3, s4, -152
                  andi         t3, t4, 680
                  sra          t0, s11, a3
                  or           a6, t6, a6
                  srli         s2, s0, 2
                  auipc        tp, 268199
                  sub          s2, t2, s1
                  slt          t5, a3, s1
                  or           sp, a5, a6
                  nop
                  srai         t4, a4, 29
                  auipc        ra, 426072
                  srai         t5, s7, 1
                  sltu         s9, ra, s0
                  or           a6, s1, t1
                  xori         a7, s1, 947
                  auipc        a6, 915471
                  xori         s11, t5, 649
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           t4, 0x80000000
                  li           t0, 0x239bb256
                  li           a0, 0x4ab7321
                  li           a1, 0x0
                  li           s2, 0xaa024711
                  li           s7, 0xffffffff
                  li           a7, 0xffffffff
                  li           s6, 0xffffffff
                  li           s8, 0x0
                  lui          t4, 670123
                  nop
                  lui          a7, 729039
                  auipc        a7, 126392
                  lui          a0, 485476
                  lui          a0, 787961
                  add          s8, s8, s7
                  sub          t4, a0, a1
                  lui          a0, 1027927
                  auipc        s2, 611411
                  sub          s0, s2, s7
                  nop
                  auipc        s8, 59383
                  lui          s0, 643206
                  lui          s8, 685333
                  auipc        t4, 605753
                  lui          s6, 197882
                  addi         a1, s6, -1921
                  auipc        a7, 709584
                  addi         s2, t4, 195
                  sub          t4, a7, s0
                  auipc        s2, 23083
                  lui          a0, 534195
                  lui          s7, 620989
                  auipc        s2, 219831
                  auipc        s8, 684645 #end riscv_int_numeric_corner_stream_2
                  sltu         s3, t3, a2
                  slt          s8, a2, zero
                  srai         t5, ra, 30
                  sra          a0, s9, t3
                  add          t1, s10, a4
                  or           t1, t3, a0
                  xori         a5, a4, -687
                  add          s7, a4, a0
                  or           t6, s8, s7
                  sub          a4, a1, zero
                  andi         t5, zero, 529
                  add          s7, a6, s2
                  lui          s2, 448907
                  auipc        s1, 190002
                  slt          t1, t2, s9
                  srli         s8, a5, 22
                  slti         t0, t4, 898
                  and          t6, s10, t5
                  sub          ra, gp, s3
                  lui          a5, 604579
                  sub          t0, a1, a1
                  auipc        gp, 347457
                  srai         s8, t1, 5
                  andi         gp, t6, -20
                  add          sp, s11, t6
                  sra          zero, gp, s2
                  srli         ra, a2, 14
                  or           s0, gp, tp
                  andi         t2, s2, 333
                  srli         t6, t4, 4
                  srli         a6, gp, 22
                  slli         a5, a7, 27
                  sll          sp, t2, a2
                  srai         t0, s9, 31
                  sra          a7, t3, t4
                  xori         s9, t4, -1237
                  xori         a5, t3, 729
                  or           a5, zero, s10
                  sll          s1, s0, s1
                  xor          sp, a5, s8
                  srl          s11, a5, t2
                  add          a6, t5, t5
                  addi         s10, zero, 1717
                  andi         t3, zero, 2046
                  nop
                  slli         s6, s10, 24
                  lui          s10, 947040
                  nop
                  lui          a5, 54768
                  srli         s9, a0, 8
                  sll          a6, a0, s7
                  slt          t0, a6, a7
                  sra          a1, s8, s0
                  lui          t5, 611321
                  auipc        s7, 623538
                  auipc        sp, 967860
                  slli         s1, zero, 31
                  lui          zero, 442801
                  andi         a0, a7, -165
                  slt          t4, gp, a2
                  srli         s8, s2, 22
                  xori         s7, ra, -926
                  nop
                  lui          t1, 800382
                  sltiu        t3, s5, -491
                  and          s2, sp, a3
                  sltu         a2, s2, t6
                  slli         s9, ra, 11
                  nop
                  addi         t5, t2, 292
                  xori         a7, a7, 1001
                  xor          tp, a0, ra
                  lui          a1, 934055
                  sll          s9, t0, s9
                  andi         a2, s5, -1063
                  xori         t0, a3, -81
                  nop
                  slti         t5, tp, -1569
                  sltu         a0, a4, t0
                  sltiu        zero, a3, -431
                  add          t6, s9, s4
                  andi         ra, a5, 784
                  xor          s1, a5, s5
                  sltiu        a7, s8, 1795
                  auipc        t2, 982811
                  slli         s3, a5, 31
                  auipc        s1, 714315
                  srli         a7, s0, 7
                  addi         a2, s10, -1412
                  addi         ra, s11, -516
                  lui          s2, 689958
                  sra          t0, s3, a2
                  slli         a0, zero, 23
                  slli         s10, t3, 5
                  sll          a0, a1, a4
                  sltiu        ra, s8, 1539
                  nop
                  sra          s11, a2, a6
                  slli         t1, a6, 6
                  andi         s10, s6, -1470
                  auipc        s8, 85097
                  sra          s3, s9, t0
                  sll          a2, a2, s1
                  slti         s11, s1, 717
                  sltu         a6, t2, t5
                  xori         t4, t5, 554
                  auipc        s9, 338656
                  xor          t3, t5, a2
                  and          ra, tp, a0
                  add          t0, t1, s7
                  addi         t3, zero, 1237
                  slli         t3, t1, 17
                  add          t0, t1, t0
                  ori          ra, s9, 1904
                  srai         a2, a3, 25
                  srli         s11, a0, 29
                  lui          a7, 58016
                  nop
                  auipc        s9, 1021751
                  slt          zero, t3, t5
                  srli         t3, a2, 9
                  sltiu        gp, s2, 503
                  srli         a6, t0, 7
                  sub          t0, s3, a6
                  xori         t6, s7, 151
                  addi         a7, t2, 162
                  srl          t5, a5, a0
                  xor          a5, t4, a0
                  slti         t0, gp, -1911
                  lui          ra, 686585
                  xor          s0, t3, s5
                  addi         gp, t5, -1104
                  sub          s1, t4, a2
                  auipc        a7, 383095
                  or           ra, s10, ra
                  nop
                  andi         s10, a1, 3
                  or           s9, s4, a5
                  sltiu        t5, s6, 1768
                  sltiu        t1, a3, 477
                  srli         s7, t6, 19
                  srai         s3, a3, 2
                  sltu         t5, a7, s11
                  add          s10, s9, s3
                  slli         s10, a3, 2
                  addi         a1, gp, 923
                  slli         s6, tp, 8
                  ori          s0, t3, -863
                  xor          a5, a5, a0
                  slt          t1, ra, t2
                  lui          s1, 200337
                  andi         s7, s6, -1609
                  addi         s11, s8, -850
                  auipc        a7, 71896
                  slt          s2, a4, s3
                  and          s0, a4, ra
                  sltiu        a1, zero, -256
                  ori          a5, tp, 716
                  add          t5, t3, ra
                  slti         s3, zero, -1041
                  ori          s10, s11, -1051
                  auipc        a7, 872385
                  sra          zero, a5, s3
                  andi         zero, s6, 419
                  auipc        s10, 757384
                  addi         s6, t2, -1247
                  sra          a4, gp, a2
                  slli         s11, gp, 4
                  sub          s10, a0, a3
                  slti         sp, gp, -1796
                  and          s6, a5, t3
                  add          a5, gp, s1
                  add          ra, tp, ra
                  ori          a5, a7, -116
                  sltiu        s10, s4, 144
                  slt          s0, t6, s11
                  lui          zero, 1047217
                  or           t3, tp, t2
                  slt          s1, s1, s4
                  or           s3, t4, t5
                  xori         t4, a0, 1494
                  and          a1, s10, s2
                  slli         s6, s4, 12
                  sra          gp, a1, a5
                  or           s3, s7, t2
                  or           s7, t4, a4
                  xor          a1, t0, t2
                  ori          zero, t1, -857
                  lui          t0, 649728
                  srl          t4, a1, s1
                  srli         s10, a1, 20
                  ori          a6, s2, -1371
                  lui          a7, 241474
                  srli         s0, s1, 25
                  add          t1, a6, a3
                  srai         sp, t6, 7
                  addi         a6, t1, 1253
                  xor          s11, t0, s7
                  srai         t2, s10, 24
                  sltiu        t1, s2, -1100
                  or           s1, a6, gp
                  srl          ra, s5, a4
                  or           a1, s9, s1
                  xor          zero, tp, a1
                  slli         t3, s9, 13
                  add          ra, a6, ra
                  add          a5, t6, t6
                  srli         s6, s0, 24
                  srai         a7, a6, 11
                  xor          gp, s6, s11
                  and          ra, s3, a3
                  and          s10, s7, zero
                  xori         t1, s7, 1530
                  xor          t6, s5, t1
                  nop
                  sltu         a4, a2, s9
                  add          a0, a3, s4
                  srl          t3, t3, s6
                  or           s11, t0, a4
                  srai         sp, ra, 5
                  xori         a2, a0, 2047
                  auipc        s3, 897745
                  srli         t3, t2, 6
                  slli         s9, a2, 22
                  slti         s7, a0, 1048
                  sltu         s3, a3, a5
                  add          t1, gp, gp
                  lui          a5, 510035
                  addi         t4, a2, -2007
                  slt          t4, a7, s3
                  nop
                  auipc        s8, 236161
                  or           a6, a3, s11
                  sra          a2, ra, t0
                  and          s3, t1, a4
                  sub          zero, s8, s3
                  andi         a0, s1, 1646
                  addi         a5, s10, 1362
                  auipc        t5, 9842
                  ori          a5, s8, 1229
                  slti         gp, s5, -1122
                  srli         s1, s9, 28
                  xor          s3, s4, t5
                  and          gp, s1, a3
                  xori         t0, s2, -8
                  add          t4, s8, t0
                  sll          sp, s8, s0
                  nop
                  srli         t2, gp, 23
                  srl          t5, t3, zero
                  nop
                  slti         a2, a4, 455
                  auipc        a2, 804459
                  ori          s3, s3, -286
                  slt          s7, a4, a2
                  auipc        s2, 951805
                  sub          s3, s1, t6
                  xor          s9, t3, t0
                  and          sp, s4, s9
                  add          s1, t5, ra
                  or           s6, t4, a1
                  auipc        a1, 914282
                  auipc        zero, 278033
                  xori         sp, t4, -1996
                  auipc        s1, 744070
                  ori          t6, s1, 846
                  nop
                  sra          s10, ra, s1
                  slli         a6, t4, 15
                  srl          t6, s2, s2
                  auipc        gp, 1027205
                  sra          s10, a5, zero
                  auipc        a6, 522620
                  sll          a5, t4, s6
                  addi         t6, s10, 310
                  auipc        s3, 1037864
                  srai         sp, s4, 19
                  srl          t1, gp, a2
                  sra          s3, s4, s2
                  nop
                  and          a6, zero, s5
                  xori         t6, ra, 129
                  nop
                  or           s7, sp, s2
                  sll          s3, gp, zero
                  sub          tp, s9, s9
                  lui          ra, 448215
                  sra          s2, a3, t3
                  add          a2, s6, t6
                  sra          s2, t1, a2
                  and          zero, t1, t5
                  lui          s2, 332386
                  slli         a2, s3, 19
                  sra          t4, zero, zero
                  ori          t3, s7, 1417
                  sltu         a6, s5, a2
                  srl          gp, s4, s1
                  sll          t4, t4, t0
                  sltu         a0, s11, t3
                  lui          s3, 1007715
                  or           a4, a0, s6
                  xor          sp, s7, a7
                  xori         s11, t5, 1078
                  srl          a6, s2, t4
                  srai         tp, s0, 8
                  sltiu        s0, s8, -396
                  sll          s8, s4, s5
                  auipc        s6, 688726
                  andi         tp, a4, -69
                  sltu         tp, a0, sp
                  slti         a2, zero, -462
                  addi         s11, t1, -954
                  and          zero, s9, s5
                  slti         t3, s11, -1174
                  ori          a1, s4, -1724
                  srli         zero, ra, 17
                  srai         t4, s5, 18
                  auipc        gp, 145452
                  and          s11, a7, gp
                  sra          a2, a3, s6
                  and          t1, a3, s2
                  auipc        t3, 485232
                  sltiu        s1, s2, 406
                  and          s9, s2, a4
                  sltu         zero, s5, s2
                  ori          sp, t5, -440
                  or           t1, sp, s9
                  lui          a5, 308918
                  srl          t6, t6, a1
                  and          s11, s10, t3
                  xori         zero, t2, 484
                  or           t0, s5, a4
                  xori         gp, sp, -1250
                  slli         s3, s9, 15
                  or           ra, s2, sp
                  or           a4, a5, ra
                  ori          t3, s1, 1145
                  sub          t5, a6, a3
                  srai         a1, a3, 7
                  sltiu        t6, t4, -1974
                  and          t1, a2, a3
                  sltiu        zero, tp, 420
                  or           t6, s2, a7
                  sltu         s2, zero, a5
                  ori          t0, a7, 120
                  slt          a6, a4, s11
                  srai         t2, gp, 29
                  xor          t5, a2, sp
                  add          gp, sp, zero
                  sra          gp, s5, a0
                  sltiu        a4, s0, -1072
                  and          t2, s8, s8
                  auipc        a7, 978296
                  nop
                  slli         t4, tp, 12
                  ori          a4, ra, 1336
                  xori         a1, s9, -1652
                  sltu         s10, t6, s7
                  or           zero, a4, s8
                  slt          t2, s1, gp
                  srl          s3, s6, zero
                  sra          t1, s1, s9
                  nop
                  ori          a2, t3, 1027
                  auipc        s10, 974253
                  srl          s6, s6, a0
                  andi         s10, s5, -14
                  nop
                  andi         t3, s2, -1993
                  srl          t3, s0, s4
                  ori          a1, sp, -1436
                  lui          ra, 173411
                  andi         t5, tp, -941
                  slt          tp, s11, t6
                  and          s10, a4, t5
                  sltiu        t4, t5, 1734
                  or           s7, t6, a5
                  xor          tp, a1, a4
                  sra          tp, t6, s11
                  auipc        s10, 171134
                  sub          tp, sp, tp
                  lui          a6, 10698
                  xori         s8, s6, -562
                  and          sp, t5, s11
                  sub          s3, s0, s1
                  slti         s2, s8, 944
                  sra          sp, s4, a5
                  andi         s0, a2, 1943
                  nop
                  slti         t2, gp, -1948
                  auipc        a5, 5801
                  srli         a2, a1, 13
                  slti         s11, t3, -1834
                  andi         s11, s0, -1218
                  auipc        s11, 892865
                  addi         gp, sp, 1529
                  sltiu        a7, a0, -410
                  or           s9, gp, s7
                  xori         s0, s9, -1997
                  xori         s11, a0, -312
                  srai         s2, ra, 2
                  add          s3, s4, a6
                  xori         s9, t1, -1607
                  sltu         tp, t1, gp
                  xori         s10, a2, -2009
                  sll          s10, tp, s0
                  add          a1, s10, a5
                  srai         a0, zero, 13
                  ori          t0, a0, -691
                  ori          s7, s5, -1855
                  or           sp, t4, a4
                  slt          s6, s1, t6
                  srl          a7, t6, gp
                  sll          s6, a5, s2
                  nop
                  andi         s10, a2, 423
                  srli         a5, a0, 25
                  lui          sp, 97788
                  auipc        a4, 191825
                  xori         t2, a3, 544
                  slt          s6, a7, t0
                  slti         a6, s7, -1247
                  slti         s9, a1, 165
                  srl          t6, ra, s11
                  srli         a4, s4, 24
                  slt          a2, t1, a6
                  sub          a1, a4, a7
                  slt          zero, sp, s3
                  lui          a7, 839627
                  lui          t6, 642217
                  or           s8, tp, s2
                  srai         tp, gp, 1
                  srli         s9, s4, 27
                  sltiu        s0, s7, -253
                  nop
                  addi         a1, s6, 1865
                  add          a5, t3, a2
                  sltiu        sp, ra, 1691
                  sub          zero, tp, a2
                  srl          a0, a5, t3
                  andi         gp, t3, -592
                  slli         a6, tp, 6
                  or           t4, s8, gp
                  nop
                  sltu         s9, a1, sp
                  srli         s0, t5, 12
                  xori         s11, s5, -1763
                  sltiu        s1, s9, -1713
                  slt          gp, tp, gp
                  sltu         s3, a0, s8
                  sltu         t2, sp, s1
                  sub          t1, a3, t2
                  sltiu        s1, a2, -835
                  sltu         t5, sp, sp
                  slli         s2, tp, 22
                  addi         s1, sp, 520
                  slt          s11, t3, s0
                  srai         s9, a5, 31
                  srai         s7, t5, 22
                  xori         s10, a7, -634
                  lui          s6, 808631
                  slt          zero, a4, sp
                  nop
                  auipc        s7, 697887
                  srli         s7, a7, 1
                  slti         t5, a4, 1260
                  sltiu        s10, s8, 1911
                  ori          t0, a7, 1144
                  addi         t0, s7, -1435
                  andi         a7, s7, -857
                  andi         t0, s5, 695
                  srai         s8, sp, 15
                  lui          s10, 79503
                  sra          s9, s8, s5
                  add          t5, s3, t0
                  andi         a7, a0, 1219
                  addi         s6, s3, 520
                  sltu         a0, a7, t0
                  slt          s8, t3, s11
                  addi         s10, t2, -412
                  auipc        zero, 57491
                  sltiu        t1, zero, -420
                  or           s9, ra, a0
                  slli         t1, a0, 15
                  add          s0, t6, s5
                  srai         s0, a7, 26
                  addi         zero, t3, -1679
                  slti         s1, s7, 1704
                  auipc        s7, 545813
                  sltiu        s1, zero, 1291
                  slt          s2, s5, a5
                  lui          s2, 509295
                  sub          s3, t6, sp
                  slli         s7, gp, 4
                  sltiu        s0, s3, -1505
                  sltiu        t0, a0, -1551
                  xori         t6, ra, 426
                  or           s11, s7, t1
                  slt          ra, a7, gp
                  sll          s9, t0, t4
                  slli         sp, s10, 27
                  xor          a1, s4, a6
                  srl          s7, t0, s11
                  srai         a0, t5, 21
                  srl          t0, s4, t3
                  ori          s8, s1, 587
                  sub          s7, a6, t5
                  sltiu        zero, s1, -1160
                  lui          s11, 357376
                  sra          a0, s7, t5
                  slli         s11, s3, 14
                  ori          t3, s9, 1776
                  nop
                  xor          t1, s4, t6
                  or           s9, gp, a5
                  slli         t2, s1, 5
                  addi         s10, a7, 1288
                  sll          t5, t0, a3
                  nop
                  sub          t2, tp, a1
                  lui          gp, 601836
                  ori          zero, gp, -1391
                  slt          s0, sp, s8
                  slti         s10, t6, -67
                  sra          t0, t0, s8
                  sub          a4, t6, zero
                  addi         a6, s2, 1906
                  sltu         t1, s6, a7
                  addi         zero, s6, -173
                  nop
                  or           s0, s5, a6
                  andi         a7, t6, 1589
                  slt          s0, t5, t5
                  auipc        a0, 506524
                  or           s6, s8, t0
                  ori          s11, zero, 758
                  sll          s9, s2, s7
                  and          s3, s9, s4
                  nop
                  auipc        a4, 410491
                  xor          tp, a3, a0
                  srl          a2, a5, a0
                  or           a7, ra, s8
                  ori          s10, s5, 1623
                  srai         a4, t1, 10
                  sub          a2, s3, a1
                  slli         s11, t5, 18
                  lui          a1, 983360
                  sra          s9, t1, a4
                  sub          ra, s2, s5
                  sll          s3, a7, s0
                  addi         gp, t4, -755
                  or           t4, a7, s1
                  sltiu        t5, s7, 1357
                  ori          s8, a0, -1967
                  lui          ra, 52423
                  or           t5, s6, t2
                  add          s6, s11, sp
                  slt          s9, t0, s1
                  slli         a4, s6, 4
                  addi         gp, t3, -1411
                  sltu         t0, t4, t4
                  slt          s0, a7, s11
                  or           t3, s11, s5
                  xor          t1, a5, t3
                  sll          s1, t2, s3
                  add          s8, t6, s10
                  and          tp, ra, a5
                  sub          s9, tp, s6
                  andi         t3, s4, -394
                  xor          zero, s9, s8
                  sltiu        t6, t1, -1666
                  addi         s6, t1, -2018
                  sll          t4, t4, t4
                  srl          zero, s5, ra
                  sltu         a4, s8, s9
                  sll          s11, ra, a3
                  and          ra, s9, t0
                  lui          s3, 656208
                  addi         a5, s2, 1174
                  sra          sp, a5, s0
                  sub          s3, gp, s6
                  sub          s9, t0, a1
                  sra          a7, t6, s2
                  srl          t5, a6, tp
                  slti         s11, s5, 1361
                  addi         t0, a1, -1673
                  sll          s1, t2, zero
                  lui          s1, 813558
                  srai         t3, s3, 3
                  sltu         s8, zero, s8
                  slt          a5, s1, a4
                  xor          s8, t4, s1
                  srai         s9, t2, 15
                  sltu         s3, t1, a6
                  lui          s0, 978504
                  sra          a0, s2, s7
                  add          zero, a0, t5
                  srli         sp, a5, 29
                  slli         t6, t4, 24
                  sub          a6, s1, s8
                  slli         s3, s8, 17
                  nop
                  slli         a0, t1, 26
                  xor          ra, a2, s4
                  and          s9, s9, a5
                  slli         zero, a7, 7
                  nop
                  or           s2, a6, a2
                  nop
                  srli         a6, s11, 24
                  sra          a4, gp, a4
                  nop
                  sltiu        a2, a6, -1413
                  sltu         t5, t1, ra
                  addi         a5, s4, -1076
                  lui          s10, 437513
                  andi         t6, zero, -867
                  srai         a1, s2, 22
                  addi         a7, a3, 650
                  andi         t4, s5, 2004
                  slti         s10, a7, 356
                  sll          a7, a1, s0
                  and          s3, t1, t6
                  sltiu        a4, s1, 338
                  slti         s7, t1, 2046
                  sltiu        t1, s5, -731
                  slti         a7, sp, 449
                  sll          s0, t5, s8
                  slli         s3, s7, 5
                  ori          t5, t6, 1526
                  ori          t2, zero, 1491
                  or           t4, t6, a1
                  xor          t1, t0, s4
                  slt          sp, zero, a1
                  and          t1, sp, s1
                  andi         s11, a1, 2029
                  nop
                  sra          gp, s5, ra
                  lui          a1, 67520
                  add          s10, s9, a7
                  sltiu        zero, s7, 1103
                  lui          a7, 201809
                  lui          s9, 812409
                  srli         a7, t2, 20
                  srai         a4, a0, 9
                  sltu         t6, t0, s1
                  xori         tp, s1, 1549
                  slli         s10, s10, 7
                  and          s2, s10, sp
                  srl          t1, s3, a4
                  sub          ra, s0, sp
                  and          a2, a4, s8
                  slli         s11, a6, 24
                  sll          t0, s2, s7
                  slt          ra, a6, tp
                  and          t6, s10, ra
                  sra          a7, a5, t4
                  slt          t3, t4, t5
                  and          a4, t5, t3
                  srai         s11, s7, 19
                  slli         s11, s1, 9
                  sltiu        a5, t2, 1305
                  auipc        a2, 1003757
                  srl          a0, zero, s4
                  or           s7, t3, zero
                  srai         t0, s7, 28
                  lui          a0, 447765
                  and          s7, tp, t0
                  auipc        t2, 787865
                  srai         t3, a6, 5
                  addi         s7, t1, -1658
                  xori         a1, a7, -180
                  srai         zero, sp, 1
                  srli         sp, s10, 13
                  andi         t1, t3, -986
                  sra          s9, a2, a3
                  srl          a0, gp, s6
                  slti         a0, a6, -1242
                  andi         a1, s3, -1037
                  and          zero, t6, t5
                  srai         a2, s0, 6
                  and          ra, s7, t4
                  addi         a2, a0, 355
                  auipc        s3, 874787
                  add          s10, tp, t0
                  slti         s0, s8, -1259
                  srli         s7, a4, 26
                  slli         tp, zero, 10
                  addi         s10, t5, 1979
                  sra          a0, s8, s4
                  sub          s8, zero, s7
                  andi         t3, a4, -749
                  sltiu        s1, s9, -990
                  sub          t0, s5, t0
                  srli         a5, s10, 13
                  slli         zero, t5, 0
                  addi         s2, a2, -1485
                  addi         s2, s3, 1789
                  ori          t1, a5, -1126
                  xor          s11, s10, sp
                  xor          t2, t0, t2
                  srli         t6, s3, 25
                  sra          a0, s6, ra
                  slti         ra, a6, -1760
                  or           t6, sp, t2
                  sub          s11, t6, ra
                  sub          s2, s0, t1
                  lui          sp, 830289
                  sltiu        gp, t3, -1619
                  sltu         t0, t5, a0
                  slt          t0, t5, t5
                  xor          s8, s8, s2
                  add          t2, s4, gp
                  sltiu        t6, s1, -1020
                  or           s0, a1, s2
                  andi         s8, t3, 702
                  slli         t0, s9, 5
                  lui          s2, 408745
                  sltu         t0, a5, t2
                  slti         s8, t5, -787
                  add          s10, s0, s11
                  add          t0, s2, a1
                  sub          s11, t6, zero
                  addi         sp, t3, -1843
                  nop
                  sll          a1, s11, a6
                  slli         s1, zero, 28
                  lui          t4, 25124
                  slti         gp, a4, 556
                  sltiu        s3, a2, 1104
                  sltu         a5, ra, s4
                  srli         a6, a4, 29
                  xor          s0, t6, s1
                  xor          s0, t0, a4
                  auipc        zero, 422190
                  slti         a1, s0, -1599
                  srli         s10, gp, 16
                  xor          a1, a4, tp
                  sll          s8, tp, zero
                  ori          ra, s8, -567
                  andi         s11, t4, 1897
                  sra          a1, t3, gp
                  srl          s1, t1, a0
                  sra          s11, a6, t2
                  slli         gp, a4, 24
                  xori         a0, s9, 1791
                  add          t5, t2, s6
                  slti         t0, sp, -636
                  and          s11, s11, a4
                  sltu         s0, s1, s9
                  auipc        ra, 102090
                  ori          s0, s5, -1124
                  sltiu        a7, t3, -79
                  srai         s6, ra, 22
                  ori          a2, a4, -1759
                  srai         s0, a7, 26
                  sub          a7, a0, s7
                  auipc        a1, 581220
                  addi         a7, a7, -1244
                  sra          t1, a3, s2
                  auipc        s6, 743125
                  nop
                  add          a6, a2, s3
                  sltiu        tp, s4, 74
                  nop
                  sltu         a2, s0, s7
                  or           a6, tp, a0
                  slti         t6, sp, 1045
                  andi         t0, s5, -1864
                  slti         ra, a6, 1088
                  xori         s0, a1, 966
                  sra          zero, s2, s7
                  slli         zero, gp, 7
                  add          s2, a7, a2
                  sltu         s11, s3, ra
                  xor          t1, a2, zero
                  sra          t1, t2, s1
                  srl          s8, s7, a6
                  xor          a7, t0, s7
                  sub          ra, s11, s5
                  ori          s7, t1, -1566
                  sub          ra, s2, t1
                  slli         tp, t0, 31
                  sltiu        t6, a3, 104
                  add          s1, a5, t6
                  ori          a7, s5, -1148
                  sra          sp, zero, s3
                  srli         s10, a5, 10
                  sltiu        s7, ra, -1365
                  auipc        a5, 956892
                  add          t3, t4, t0
                  andi         s0, s3, 645
                  srai         t5, s0, 5
                  sltu         s11, a2, a0
                  sltu         a1, s7, t5
                  sltu         a5, a2, a3
                  srl          sp, a6, s1
                  xor          tp, sp, s0
                  or           s3, a7, a4
                  auipc        tp, 620158
                  sltu         t4, t1, a3
                  and          gp, sp, t5
                  sltiu        a2, a2, 719
                  srli         s8, zero, 15
                  xori         s8, a4, -313
                  sll          a7, sp, a4
                  xori         a1, a0, -1867
                  lui          zero, 927095
                  srai         a4, s6, 4
                  srli         s8, a0, 28
                  sltiu        t0, s9, 1920
                  srl          t4, t5, t3
                  add          a5, zero, t1
                  lui          s2, 456317
                  sll          s3, t0, t2
                  addi         ra, t4, 1723
                  srai         s6, s10, 0
                  sub          sp, s3, s8
                  slli         a2, s6, 7
                  andi         s2, t1, 1066
                  nop
                  addi         t0, a7, 1384
                  slli         t3, a0, 24
                  xor          sp, s10, s7
                  auipc        a6, 674581
                  auipc        a0, 957370
                  sltu         a4, a6, s11
                  slt          t5, t5, a3
                  sltu         zero, s4, s7
                  ori          t2, t4, -1933
                  slt          s0, a4, t5
                  sltiu        t4, s7, -1171
                  sltu         s10, t0, s6
                  sub          s1, s11, a3
                  sltiu        s11, t5, 953
                  nop
                  srl          a5, s0, t1
                  sltiu        a0, a6, 60
                  srli         a1, s3, 2
                  srai         t4, t3, 24
                  sltu         s0, s8, s2
                  nop
                  and          a4, ra, s1
                  sub          s0, s10, s9
                  sltu         s7, t2, t3
                  slli         t0, s0, 8
                  srai         s9, sp, 15
                  xor          s3, a2, a4
                  slti         s3, t1, -196
                  slti         a6, tp, -142
                  slt          s8, s7, t2
                  addi         t5, s10, -89
                  srai         t1, t0, 21
                  sll          s1, s7, t2
                  lui          a2, 776062
                  addi         s1, a2, -1550
                  and          s2, t6, a5
                  slt          t4, s10, t1
                  andi         ra, t3, -363
                  sltu         t5, a6, tp
                  xor          t3, a6, ra
                  auipc        s0, 252627
                  add          s8, s5, s6
                  nop
                  sltiu        s9, s9, -1149
                  srl          a0, t3, s5
                  lui          a6, 600451
                  nop
                  or           t4, s7, s10
                  and          ra, a0, t0
                  lui          a2, 16295
                  auipc        t2, 1025430
                  sra          zero, a1, zero
                  sltu         s11, t2, t5
                  auipc        gp, 72440
                  sltu         s11, s6, a0
                  slt          s0, s11, s11
                  addi         t6, s11, -134
                  sub          sp, ra, a4
                  lui          a2, 300466
                  lui          a2, 644819
                  addi         a6, a5, 189
                  xori         zero, t3, -793
                  xori         t0, s7, -1499
                  sltu         t3, t3, zero
                  sub          t0, t1, a7
                  sltu         a1, tp, a4
                  add          a2, zero, s0
                  ori          s8, a2, -141
                  xor          gp, s6, t0
                  slti         sp, sp, -276
                  add          a1, sp, a1
                  ori          zero, s7, -1071
                  slt          zero, a4, a5
                  srai         tp, t2, 5
                  slti         a1, t5, -911
                  slti         s10, t1, -986
                  and          a7, t4, a7
                  add          zero, a6, t2
                  slli         s11, t6, 29
                  slli         s2, s2, 27
                  sltu         t2, a5, t2
                  nop
                  sll          a7, t5, a7
                  xor          a7, t0, s3
                  slli         tp, a6, 15
                  auipc        t6, 276099
                  addi         tp, a7, 1160
                  srai         s1, t3, 11
                  sltiu        t3, s7, -330
                  nop
                  srli         a6, s1, 30
                  nop
                  sra          s6, ra, tp
                  sra          t0, t5, t2
                  xori         s10, gp, -1763
                  sub          a0, s1, s9
                  and          s1, a7, a5
                  srai         t4, s11, 22
                  xor          a1, a1, tp
                  ori          a6, s2, 1961
                  andi         s11, a1, 740
                  lui          a4, 100062
                  sra          a4, a5, a5
                  sub          gp, t0, zero
                  sltiu        a4, s5, -329
                  sra          t2, ra, t6
                  ori          s9, s9, 911
                  and          a4, s7, a5
                  sra          s3, zero, t2
                  and          t3, s3, tp
                  and          gp, t1, s9
                  srai         s3, t1, 6
                  srl          a4, zero, a6
                  and          s1, t2, s5
                  andi         t6, sp, 149
                  slli         a4, s5, 5
                  slt          s8, s7, a3
                  srai         sp, s9, 21
                  srai         sp, s6, 2
                  slti         t0, t1, -1899
                  lui          a5, 31048
                  slti         t3, zero, -1704
                  auipc        s11, 729540
                  sll          s3, s2, a1
                  sltiu        a7, a5, 343
                  slt          zero, t6, s1
                  srl          t6, t2, a7
                  sltu         t4, ra, s3
                  xori         s6, s3, -1347
                  srli         gp, t3, 24
                  sltiu        a1, a0, -1815
                  andi         s1, t3, 574
                  sltiu        s11, s4, -887
                  sltu         zero, a3, t0
                  ori          s8, zero, 1670
                  srl          s9, s1, a2
                  xor          s6, s1, t5
                  and          a6, s2, t6
                  sub          s10, t5, a6
                  andi         t0, sp, -495
                  sltiu        a5, a0, -804
                  and          a4, t5, s3
                  slti         a1, s6, -752
                  sltiu        a1, t6, -1669
                  lui          s10, 461645
                  sra          s0, t5, s3
                  srai         a2, s8, 19
                  slt          gp, a3, s2
                  sra          t0, s4, a3
                  add          a7, t3, zero
                  slt          a4, t0, sp
                  and          s0, a4, t1
                  addi         a5, s9, 1746
                  or           zero, s5, t5
                  xor          a1, t2, t2
                  nop
                  ori          a6, zero, -1320
                  auipc        a0, 758387
                  or           s9, tp, a1
                  sltiu        t6, t2, 1098
                  xori         a7, t0, 1299
                  xori         s6, a1, 8
                  ori          tp, s1, 648
                  ori          gp, t5, 422
                  slli         a7, s4, 0
                  sub          t1, ra, tp
                  sll          t3, tp, a0
                  sll          s2, a5, a5
                  sltiu        a5, a3, -1094
                  sltu         s10, s10, sp
                  sub          t2, tp, t5
                  and          s6, a1, s5
                  sltiu        sp, gp, -583
                  ori          ra, s11, 379
                  andi         t1, tp, -824
                  lui          a1, 829350
                  sub          t5, a3, t4
                  srai         t1, s10, 5
                  or           sp, a4, gp
                  xor          tp, a0, t3
                  auipc        s6, 574780
                  sub          t6, a0, t6
                  auipc        a0, 980494
                  ori          t5, s7, 104
                  slti         s2, sp, 1544
                  xor          t0, zero, t2
                  sub          s0, s8, t0
                  xori         t6, s0, 1354
                  nop
                  andi         zero, t1, 156
                  srai         a6, s1, 5
                  ori          t1, s5, 1766
                  xor          s8, s3, s3
                  addi         s0, s0, 1171
                  sltiu        t0, s11, 1483
                  sll          s8, s10, a5
                  slti         s9, t6, -174
                  slti         t3, a7, -338
                  add          a5, a4, a2
                  and          tp, t4, t2
                  andi         s9, s8, -365
                  andi         a2, s9, -268
                  or           a4, s2, t3
                  addi         t2, tp, 873
                  sll          s8, s9, t5
                  sltiu        a0, s8, 764
                  andi         gp, a3, 1042
                  ori          zero, t6, 1603
                  sll          a7, s10, s1
                  add          a0, s8, s2
                  sltu         t5, s10, s9
                  slt          s0, t4, s10
                  lui          s6, 117711
                  lui          a0, 382308
                  nop
                  nop
                  nop
                  and          s8, s8, s9
                  addi         ra, t0, -1760
                  srai         a7, s9, 23
                  andi         a2, gp, 1298
                  andi         a1, t6, -662
                  nop
                  sltiu        t0, s7, -1289
                  srli         t1, s2, 3
                  and          gp, t6, s5
                  addi         a4, t0, -1370
                  sltiu        a7, a5, 1558
                  sll          a1, a7, tp
                  or           s9, a1, zero
                  add          ra, t1, zero
                  xori         s2, a4, -43
                  xori         gp, s11, 119
                  srli         t3, s1, 31
                  sub          t1, a7, sp
                  add          t6, s7, s1
                  slli         a7, a2, 21
                  slti         zero, s10, 1565
                  srli         t5, t0, 23
                  ori          tp, a2, -590
                  lui          s11, 512264
                  xori         a6, a1, 1057
                  sll          t0, a5, s11
                  ori          s8, s10, -905
                  srl          t3, t4, t1
                  sra          gp, a6, s11
                  slt          gp, t1, ra
                  or           zero, t3, a2
                  auipc        a5, 35876
                  sltu         s7, a4, t2
                  sra          a7, a7, a5
                  srai         s1, a7, 10
                  slti         t3, a5, 816
                  slli         a0, s11, 2
                  slt          s3, a5, t5
                  srl          t0, tp, a4
                  srli         s0, s11, 22
                  add          zero, t2, a5
                  nop
                  slt          s3, zero, s1
                  add          t0, t0, ra
                  ori          a5, s8, 1765
                  and          a6, a0, t6
                  slli         t2, s7, 7
                  xor          s9, s2, t6
                  sltiu        s6, s6, -364
                  ori          t3, s1, 291
                  xori         tp, a6, 750
                  sll          s11, a3, s2
                  auipc        ra, 481901
                  sub          s10, s11, a3
                  srl          sp, a1, t2
                  slt          t0, zero, a6
                  and          t3, a4, s1
                  lui          s6, 527024
                  slti         s6, t3, 46
                  slt          t5, s11, s2
                  sll          s8, a2, s1
                  sll          t0, s2, s10
                  sll          t1, s6, a2
                  sll          s9, tp, s7
                  srl          t2, t5, gp
                  srl          s3, a1, s3
                  xor          gp, a5, s6
                  nop
                  or           t6, s10, s4
                  slti         t1, a0, -406
                  sltu         a0, a0, zero
                  sub          t0, s1, s0
                  sltiu        s6, s8, -1430
                  sltiu        sp, s2, 1691
                  srl          t4, sp, s6
                  auipc        t2, 741370
                  sub          s11, zero, a6
                  srli         tp, s2, 13
                  sltu         a5, a4, a5
                  addi         t1, s0, 1167
                  nop
                  ori          s1, ra, 1951
                  add          zero, t2, s8
                  sra          s7, sp, a7
                  srli         t3, a5, 18
                  add          a0, t0, t6
                  or           ra, s0, t1
                  sll          t2, s3, t2
                  slti         gp, t1, 1902
                  sll          a0, s6, t1
                  srli         a1, sp, 26
                  sub          t5, s4, a1
                  auipc        s7, 994302
                  slt          t5, a7, s10
                  add          s10, s0, s11
                  sub          ra, t5, a7
                  sltiu        s8, s10, 1828
                  addi         t3, s9, 1719
                  sltiu        s9, s4, -1541
                  add          s10, ra, a1
                  addi         gp, t1, -856
                  and          a1, a7, a3
                  addi         s0, s2, 466
                  auipc        s7, 951708
                  slt          tp, a3, a6
                  sra          s10, s10, sp
                  xor          a2, s11, a0
                  or           s10, zero, gp
                  nop
                  sltiu        a1, t3, -127
                  or           s2, gp, a4
                  sra          s10, t5, s4
                  or           a2, zero, a2
                  slli         ra, t2, 10
                  sltu         s7, s1, s8
                  addi         a5, a5, 121
                  xor          s0, t1, t0
                  xor          s11, t0, a4
                  andi         t6, ra, -347
                  xori         s7, tp, 117
                  sra          t2, s6, sp
                  sll          s11, s11, s2
                  and          gp, s3, s0
                  or           s0, t6, t6
                  sra          a1, s4, t2
                  or           sp, t2, a2
                  sltu         a2, a7, s10
                  xor          s8, a3, s4
                  slt          gp, s1, t2
                  srai         s9, a2, 20
                  add          gp, t3, a1
                  sub          t2, t4, ra
                  sltu         a6, gp, s9
                  sra          t3, s5, t5
                  xor          a7, a2, a7
                  auipc        a5, 884542
                  srli         ra, t1, 24
                  add          t6, s11, s1
                  slli         s3, a5, 10
                  xori         ra, tp, 116
                  slli         a4, t6, 25
                  or           a4, zero, ra
                  xor          t0, t1, s6
                  and          ra, t5, t5
                  ori          a4, s2, 472
                  and          gp, t6, t2
                  srli         t6, t2, 27
                  sub          s7, a2, t6
                  srli         t1, gp, 15
                  slt          s7, a4, s3
                  srai         s0, s3, 16
                  slli         s1, a6, 2
                  nop
                  srl          s8, ra, t1
                  lui          a4, 770361
                  and          t0, zero, a7
                  srl          ra, t1, s7
                  ori          t3, ra, 739
                  sltu         a1, s4, zero
                  xor          s1, a7, a3
                  xor          a7, s10, t5
                  or           gp, a1, a6
                  or           s7, s11, s3
                  sub          s10, a2, t1
                  xori         t5, t2, -1772
                  sra          gp, s11, a5
                  lui          a6, 406026
                  auipc        a2, 83476
                  srai         ra, t3, 3
                  slli         t1, s2, 0
                  or           s0, s0, a6
                  lui          t6, 342417
                  addi         a0, a2, 707
                  srai         t1, t0, 1
                  slti         s11, a7, 1588
                  addi         t2, s4, -364
                  slli         sp, s0, 1
                  srai         t6, a7, 5
                  sltiu        gp, s0, -531
                  nop
                  nop
                  sltiu        t3, s8, 2042
                  sltu         t0, s11, a5
                  addi         s2, a3, 461
                  lui          t3, 525656
                  or           s2, t4, a0
                  addi         a5, t1, 959
                  slli         s7, a5, 6
                  ori          s7, s10, -512
                  srl          gp, s10, s3
                  addi         s0, a4, 867
                  andi         zero, gp, -1751
                  andi         s11, s4, -1713
                  xor          a5, a3, a4
                  slli         t4, s8, 16
                  addi         a7, s9, -1920
                  or           ra, s0, s6
                  sra          s8, t3, a6
                  sra          s0, t3, s4
                  ori          t3, s6, 1822
                  andi         gp, t1, -1425
                  sub          a0, a4, tp
                  auipc        ra, 497563
                  slti         a0, sp, 102
                  sltu         t6, a4, s2
                  slli         t0, s3, 13
                  nop
                  add          t0, s10, s4
                  ori          a0, a5, -1302
                  sub          s9, t2, a2
                  nop
                  nop
                  slt          t0, ra, a4
                  slti         s3, a0, -591
                  srl          s7, s7, s10
                  srai         s7, zero, 21
                  ori          s6, a2, -1651
                  sll          ra, a5, tp
                  sltiu        t4, t1, 464
                  sra          s6, a3, s2
                  add          a7, s11, t5
                  sltiu        s9, s4, 640
                  xor          a1, s3, a3
                  sltu         a4, a0, t2
                  slt          a6, zero, s9
                  andi         t0, s7, -955
                  slt          t5, t2, s4
                  sub          a5, t2, t6
                  xor          gp, gp, a5
                  or           s11, ra, t3
                  lui          a5, 625297
                  xor          a0, tp, t2
                  slli         s7, sp, 12
                  lui          a2, 792742
                  xori         a4, a3, -41
                  ori          a7, a6, 136
                  nop
                  sltiu        a1, s8, 720
                  auipc        s6, 113042
                  addi         s3, t2, 170
                  lui          s1, 407489
                  srai         a1, a6, 25
                  andi         s11, a4, -1470
                  sltiu        a2, tp, -25
                  slt          s0, a2, a1
                  sra          gp, a1, t4
                  srai         s11, tp, 15
                  xor          tp, s10, a6
                  or           t5, tp, t2
                  addi         a2, s4, -517
                  sra          a7, s0, t0
                  sll          s10, a7, t2
                  sltu         tp, a0, a2
                  or           a0, s6, a4
                  ori          t6, s8, 1509
                  lui          sp, 716449
                  slli         t0, s11, 2
                  add          s1, a3, t5
                  sltiu        t2, s6, -1561
                  sltu         t2, sp, t4
                  or           s7, a1, a1
                  nop
                  ori          s7, s10, -458
                  sra          gp, a7, s6
                  xor          s6, s2, t2
                  or           gp, a2, t0
                  andi         a5, s3, -1842
                  lui          s3, 836259
                  sra          a5, s5, s11
                  sll          a5, t4, a1
                  srli         zero, ra, 4
                  andi         s2, t0, 1175
                  srli         gp, s0, 9
                  slti         s9, t1, 739
                  auipc        s11, 306922
                  xori         a1, s4, 2032
                  ori          t6, ra, 199
                  sltu         s2, a6, s7
                  or           zero, tp, t2
                  sll          a4, t5, s1
                  addi         s11, a3, 545
                  sub          s2, a7, a1
                  xori         a2, s3, -91
                  xor          sp, s4, t4
                  nop
                  add          t1, t2, s3
                  sltiu        s10, s2, -1403
                  slli         s2, t0, 4
                  and          t3, gp, s7
                  srl          s9, a6, a2
                  auipc        t4, 679824
                  sltu         a6, s10, t6
                  andi         tp, tp, 254
                  addi         s9, ra, -751
                  slli         s10, s2, 7
                  or           t5, a1, s2
                  lui          t4, 600055
                  xori         a7, a4, 47
                  auipc        a4, 376446
                  xor          zero, s8, a1
                  slt          s3, tp, tp
                  or           t4, s1, a4
                  xor          t3, t5, t5
                  sltiu        s6, s9, 1892
                  srli         s2, s4, 1
                  and          a7, t5, s0
                  sltu         t4, tp, t3
                  addi         gp, s9, -555
                  srli         a4, s8, 31
                  addi         a6, s9, -2004
                  nop
                  srai         a7, t4, 24
                  sltiu        s10, t0, 1816
                  or           s2, a6, s0
                  sra          s0, s1, t0
                  slli         t0, a1, 12
                  sub          t4, tp, gp
                  or           s6, s8, a7
                  sltiu        zero, s6, -1664
                  slli         a2, s2, 8
                  or           t6, sp, gp
                  addi         s8, a7, -1528
                  slti         s2, a1, -935
                  srl          s9, a4, a5
                  add          zero, s9, t2
                  or           ra, t2, s6
                  sll          a2, a1, s3
                  nop
                  add          a7, s9, s5
                  sra          zero, s4, s6
                  sltu         s10, s10, t3
                  slti         a0, s5, -169
                  and          tp, zero, a0
                  sll          s3, s9, a0
                  or           s6, a3, a2
                  srl          ra, a3, gp
                  lui          a5, 634568
                  sltiu        s10, a5, 1524
                  slli         gp, t3, 23
                  lui          a2, 1020447
                  lui          s8, 940887
                  srli         s7, s0, 30
                  srli         s1, s2, 10
                  sub          a4, s6, t5
                  sltu         s8, ra, t4
                  andi         s0, t2, -250
                  add          s0, s7, s9
                  ori          s6, s4, 1457
                  auipc        t4, 380439
                  nop
                  slti         t5, tp, 626
                  sra          tp, t1, t1
                  xori         t5, s11, 82
                  or           t4, t3, t5
                  slli         a2, s10, 2
                  slli         s10, s2, 24
                  xori         gp, s4, 1949
                  sra          gp, t4, a6
                  add          s1, s10, a7
                  sll          t1, s3, t4
                  sub          t4, s4, a5
                  lui          t0, 235947
                  auipc        s0, 240241
                  srl          s3, sp, t5
                  slt          s8, s0, s2
                  slt          s9, s11, gp
                  sra          ra, s11, zero
                  lui          t4, 955445
                  sltiu        t2, t6, 689
                  slli         a7, tp, 11
                  andi         s1, s0, -948
                  sltiu        a6, s2, 1604
                  addi         t3, zero, 298
                  andi         s9, s2, -1375
                  sra          tp, s4, a4
                  andi         gp, a5, -521
                  slti         a2, t4, 149
                  sra          a5, a3, a6
                  xor          a2, gp, s9
                  sub          s10, t6, zero
                  auipc        a6, 909339
                  nop
                  or           s1, tp, t0
                  auipc        s7, 180361
                  srai         s8, s8, 23
                  addi         s11, s11, -515
                  srai         ra, s6, 27
                  ori          a2, s9, -35
                  srai         zero, t0, 3
                  slt          s9, a3, s8
                  slli         s3, s2, 26
                  andi         t3, sp, 1975
                  addi         s0, s1, -1188
                  srli         t5, s3, 19
                  srli         a7, tp, 13
                  lui          a4, 3686
                  sub          sp, t6, a2
                  addi         a2, gp, 1010
                  nop
                  xor          s1, a5, ra
                  auipc        zero, 880526
                  nop
                  add          s8, s9, gp
                  or           a7, zero, s0
                  srli         t1, t2, 28
                  ori          s8, a6, 142
                  or           t6, s0, s7
                  srl          a0, t4, zero
                  slli         s8, s3, 4
                  xor          s1, a3, a7
                  sub          a2, t0, sp
                  sll          t4, a6, a4
                  xori         t3, tp, -1170
                  sll          s10, t0, t3
                  ori          s10, a7, 1670
                  sltu         a5, t6, a5
                  nop
                  nop
                  xori         s1, t6, -498
                  xor          t2, s9, zero
                  xori         t0, t3, -1458
                  auipc        t0, 238164
                  sltu         a7, a0, s5
                  slli         s2, gp, 10
                  xor          s6, gp, t3
                  nop
                  ori          t1, a4, -1039
                  srl          s1, s5, a1
                  slli         s10, t6, 8
                  srai         s2, t3, 27
                  xori         s3, t4, 1163
                  srl          sp, s4, t2
                  sltiu        a2, s10, 1464
                  ori          s2, t0, 1913
                  srai         s3, s9, 8
                  ori          s10, zero, -1366
                  sltiu        t3, s9, -864
                  ori          a6, t0, -561
                  andi         s10, t2, 1227
                  nop
                  and          s11, s9, a5
                  sra          s8, t1, sp
                  lui          s11, 1023618
                  add          s6, t1, ra
                  sll          a1, t5, tp
                  add          s6, a3, s7
                  sra          t2, ra, a7
                  slli         gp, a1, 5
                  sub          s3, t3, s4
                  and          s1, ra, a2
                  xor          t5, t3, a2
                  and          a5, s1, a3
                  add          a1, t2, tp
                  srl          sp, s5, a7
                  ori          a4, tp, -989
                  slli         t4, a1, 28
                  lui          s1, 660214
                  and          t6, a2, a0
                  xor          s10, s4, s4
                  slti         tp, a5, 1054
                  sra          t1, tp, a4
                  sltu         a2, t6, t6
                  srl          a0, t0, gp
                  sll          s10, a7, s5
                  srai         s7, t2, 14
                  ori          tp, s7, -958
                  srai         s1, a4, 14
                  add          s8, s6, tp
                  add          s7, t2, s3
                  andi         sp, s7, -927
                  srai         s1, a7, 2
                  or           s11, zero, t4
                  lui          a6, 622864
                  and          s11, s2, a2
                  xori         s2, s2, 120
                  srli         s0, s7, 25
                  andi         s7, a7, 35
                  xori         s10, t1, -1570
                  sltiu        s2, a1, 64
                  sll          t1, a7, s9
                  srai         t6, a0, 17
                  sub          s6, a7, t3
                  nop
                  sltiu        t0, s3, 552
                  auipc        s11, 255882
                  nop
                  xori         t3, s11, 185
                  sll          sp, a7, a6
                  ori          a1, s6, -1413
                  xor          a6, t5, t1
                  lui          t0, 640429
                  ori          s3, a5, 970
                  sra          a2, t0, t2
                  add          s10, s8, t2
                  and          s11, zero, t1
                  add          t6, t5, s7
                  sll          a2, a1, t6
                  sra          ra, sp, s1
                  srli         t5, ra, 11
                  addi         s2, s3, 391
                  slt          s3, s7, t0
                  srl          zero, t3, s10
                  srai         a4, t1, 17
                  and          s10, a2, t2
                  srl          s10, gp, t4
                  xor          sp, a6, s6
                  and          s11, zero, t1
                  and          s6, a4, t2
                  ori          s10, t1, 1754
                  addi         a7, s10, 1742
                  srli         s1, a1, 21
                  sll          s3, t5, t5
                  srl          s7, s10, s6
                  sll          a4, a6, s8
                  and          s0, s6, t6
                  slti         t6, a4, -1128
                  add          s7, a2, s6
                  and          s8, t1, s0
                  sra          t0, gp, t1
                  andi         s9, t4, -762
                  slli         ra, t3, 3
                  sltu         t0, s3, t4
                  or           s2, s7, s8
                  auipc        a4, 749506
                  or           a6, s1, t3
                  or           a2, s8, t6
                  slti         s11, s7, -411
                  slli         t6, s7, 10
                  addi         t0, s9, -241
                  add          a2, ra, s2
                  xor          a6, a3, sp
                  ori          a5, t1, -1677
                  srli         zero, s8, 3
                  sll          s1, a7, a4
                  and          ra, t6, t3
                  andi         t6, a0, -116
                  nop
                  andi         s7, a7, -545
                  sub          s7, s6, s4
                  slt          gp, a2, tp
                  sll          t5, tp, s10
                  auipc        a5, 663263
                  auipc        a2, 25647
                  addi         zero, a7, 1790
                  auipc        t4, 895171
                  srli         t6, t4, 20
                  auipc        s11, 970100
                  slli         s11, a3, 0
                  and          s7, s7, s11
                  and          s0, s10, s0
                  and          a7, a0, s3
                  sll          s9, a2, a0
                  slli         s11, gp, 17
                  sltiu        s2, s4, -72
                  add          s1, s11, a4
                  andi         s3, a5, -1814
                  slti         t0, a2, 1652
                  ori          s1, a1, -1653
                  srai         a5, t1, 27
                  srl          t4, a6, a0
                  andi         t1, gp, 1845
                  lui          t3, 833917
                  slli         sp, s5, 26
                  sltu         a4, t5, s7
                  sub          s6, t3, a6
                  nop
                  xor          a4, s1, s6
                  sll          tp, s1, t3
                  nop
                  ori          zero, a7, -1239
                  srl          s10, s11, a2
                  slt          gp, t6, s9
                  xor          s1, s8, a7
                  slti         s1, zero, -1920
                  slt          a2, s2, a4
                  add          t0, a1, a2
                  ori          s3, sp, -235
                  auipc        s10, 360367
                  ori          sp, t2, 1558
                  sltiu        s0, s2, 647
                  addi         s11, gp, -291
                  srli         sp, t1, 8
                  nop
                  add          zero, s2, t3
                  nop
                  nop
                  sub          gp, s1, s2
                  nop
                  slli         s7, a4, 16
                  xori         zero, a6, 263
                  lui          s11, 370302
                  srl          s11, s0, ra
                  srai         s1, a0, 26
                  lui          s9, 754833
                  or           ra, a5, t6
                  ori          tp, s9, -1292
                  slti         s2, s3, 764
                  andi         s6, s8, 339
                  auipc        t5, 479110
                  lui          t3, 359698
                  slti         t1, s9, 868
                  ori          s10, s8, 1429
                  slt          t3, s0, gp
                  nop
                  sra          t5, t0, t5
                  sltu         s1, a4, a6
                  andi         t6, t6, -710
                  and          a2, a2, a5
                  srl          a2, s6, s3
                  add          ra, a0, s10
                  srli         t2, s0, 29
                  srl          t2, s7, s2
                  srli         ra, s1, 12
                  sltu         a7, a2, sp
                  srai         s7, s5, 6
                  srai         t4, t1, 9
                  lui          t6, 978104
                  or           s6, gp, s5
                  ori          a2, t3, 1100
                  sltiu        a2, t6, -675
                  sltu         s11, s5, s9
                  slli         a2, t4, 19
                  xor          sp, s6, a3
                  sub          ra, t6, t0
                  andi         t4, t3, 970
                  srai         a6, t4, 9
                  slt          tp, a1, s11
                  and          a2, tp, sp
                  sll          t2, t1, a0
                  ori          s9, s9, 316
                  slli         tp, gp, 5
                  slti         s3, tp, 1356
                  srli         t2, t5, 1
                  addi         s10, a7, 908
                  srl          s10, t6, a7
                  slli         t3, a1, 15
                  sub          s1, s5, t2
                  xor          zero, t2, s0
                  srl          s7, t6, s1
                  ori          ra, s0, -44
                  slt          t2, a2, s8
                  slli         a7, a5, 18
                  lui          zero, 328660
                  xori         ra, t6, -1560
                  or           a7, a4, a6
                  srai         t5, a4, 4
                  slli         s1, t4, 28
                  slli         s9, s0, 17
                  and          t1, tp, t4
                  slti         tp, sp, -685
                  auipc        s10, 250917
                  xor          a2, sp, t5
                  and          a5, t5, a6
                  slli         t4, s4, 14
                  lui          s7, 429225
                  xori         s7, s0, -1311
                  slti         t2, s0, -710
                  slt          a2, t5, s4
                  slli         zero, s1, 21
                  sll          s1, s6, a6
                  xori         a0, s7, -2007
                  sub          s11, ra, gp
                  add          s0, zero, s1
                  slt          s6, a3, t0
                  andi         t4, s2, -227
                  andi         a7, s2, 665
                  sltu         a5, a5, a1
                  xor          s11, t3, zero
                  xor          a5, zero, sp
                  ori          t6, s7, -1886
                  nop
                  andi         s7, gp, 1859
                  xori         zero, a0, -1570
                  sub          ra, t4, a7
                  auipc        gp, 706673
                  lui          s6, 945491
                  sll          a4, s11, zero
                  addi         t1, tp, -1836
                  addi         t1, s2, -1082
                  sra          t3, a1, a6
                  slt          a7, s10, s5
                  addi         s10, a0, 444
                  ori          a4, a6, 1051
                  slti         s7, s10, 106
                  sltu         a1, s0, gp
                  srai         s1, t1, 4
                  sub          a2, a6, a5
                  sll          s1, s5, a2
                  slt          ra, a6, t5
                  slli         sp, s6, 3
                  xor          a1, a3, t2
                  sltiu        s3, tp, 1422
                  and          s7, t6, zero
                  xori         a4, ra, -1875
                  ori          a5, s8, 1195
                  sra          tp, s4, sp
                  nop
                  sltiu        s0, t0, 1453
                  or           a6, t3, t0
                  andi         s6, t1, 1123
                  andi         s3, s7, 1077
                  and          a7, a6, a6
                  xor          t0, s5, t2
                  sltiu        a1, t5, 617
                  andi         s7, t4, -576
                  srli         a1, gp, 15
                  sltiu        a0, t3, 1500
                  sra          a6, s1, t1
                  sll          s2, s11, s11
                  sll          t0, s4, s0
                  add          s8, a7, s9
                  srl          t6, a4, s9
                  sll          t4, a0, s2
                  or           zero, s10, t6
                  slti         gp, tp, 1605
                  add          a4, a0, s0
                  sub          t6, tp, s9
                  xori         a1, t1, 1908
                  sub          t1, s11, t5
                  add          s6, s1, t4
                  addi         a7, tp, 1762
                  srai         s2, s10, 21
                  auipc        s11, 680388
                  srli         t5, tp, 19
                  sll          s3, gp, a0
                  xori         ra, a5, -1611
                  srai         t2, a7, 24
                  srli         ra, a1, 31
                  slti         s7, s8, -327
                  sll          a2, s1, sp
                  lui          s10, 469491
                  xori         s6, t0, -479
                  sltu         t3, s7, tp
                  slli         a5, s3, 26
                  srl          a5, t1, t5
                  xori         s1, t3, -1846
                  andi         s8, s9, -1795
                  add          t1, s8, s2
                  slt          a0, s11, s9
                  xori         t1, s1, 1478
                  srli         s6, a2, 0
                  auipc        a2, 812410
                  andi         t6, s7, 1102
                  srl          ra, zero, s4
                  add          t4, s10, a7
                  sltiu        a4, tp, 1389
                  or           s8, t5, a4
                  sltiu        zero, tp, -21
                  slti         a6, s6, 2041
                  addi         a2, a5, 1879
                  slli         a2, s6, 25
                  andi         a6, s9, 1067
                  sra          tp, a7, s0
                  sltu         a2, a4, t0
                  and          a6, t5, t4
                  nop
                  sra          gp, gp, a5
                  lui          t2, 466918
                  or           s9, a5, t2
                  sltu         s7, a6, a0
                  srli         s10, a1, 2
                  or           s7, t6, t1
                  slli         gp, s7, 7
                  srai         s8, s4, 16
                  sltiu        s3, s3, 657
                  slti         t0, s5, -627
                  slli         a5, a6, 20
                  and          a7, t6, t0
                  sub          a7, a7, a2
                  srai         a0, a6, 7
                  sub          zero, s10, t5
                  auipc        s6, 599749
                  srli         ra, s0, 13
                  sltiu        s8, s4, -1115
                  add          s8, sp, t4
                  sra          s11, s0, s9
                  auipc        s1, 141966
                  slti         a7, s11, -191
                  nop
                  slti         s10, s8, -1897
                  srai         zero, a2, 19
                  lui          a7, 107221
                  xori         a7, a5, -1232
                  add          s8, t1, s7
                  add          a6, t1, a5
                  andi         a2, gp, 404
                  andi         sp, a2, -891
                  sra          a1, s4, s4
                  and          s2, t0, sp
                  srai         gp, a0, 29
                  auipc        t0, 475809
                  srl          s6, s3, a2
                  auipc        zero, 471811
                  or           s0, t4, sp
                  sll          t5, a0, ra
                  add          t4, s3, t3
                  sra          a2, t5, a2
                  xori         s6, a6, -1180
                  srl          s0, s10, a3
                  andi         s0, s5, -128
                  xor          a4, t6, s1
                  slt          a2, zero, zero
                  sltu         s0, a0, t1
                  sltu         s1, zero, s11
                  srli         s2, s8, 9
                  sub          a1, s3, gp
                  xor          a0, t0, s4
                  add          a4, s2, s6
                  srli         s7, t6, 20
                  srai         t0, zero, 23
                  srl          a2, t4, t0
                  auipc        a1, 628251
                  add          s0, t6, s3
                  or           ra, s9, a1
                  or           tp, s5, s4
                  slti         t3, t4, -1960
                  and          s10, a0, tp
                  srli         t0, s11, 15
                  sltiu        tp, t1, 345
                  auipc        a7, 629194
                  srai         a5, t4, 31
                  xor          t0, t4, s4
                  srl          a4, s6, s11
                  or           a0, a0, s4
                  sra          t5, s11, s0
                  andi         a0, s6, 1631
                  slli         t4, s3, 7
                  srl          s6, a6, s7
                  and          s11, s8, t2
                  sll          s0, s6, s1
                  nop
                  sub          t3, zero, s6
                  andi         a4, s7, -893
                  sra          s8, t0, s2
                  and          a7, a6, a7
                  nop
                  sll          ra, sp, tp
                  sltiu        sp, s6, 303
                  or           s10, s10, t2
                  sra          s9, a5, s10
                  xor          s7, s10, a4
                  or           zero, a7, a1
                  sltu         s8, s4, ra
                  addi         s6, a2, -1129
                  srai         a7, a3, 6
                  sra          a4, t4, t4
                  srl          a4, gp, s3
                  nop
                  xori         s10, t2, -1133
                  srli         s11, gp, 14
                  lui          t6, 187878
                  lui          a6, 360155
                  auipc        a7, 349393
                  sltiu        s0, s1, 1695
                  sra          tp, a2, a5
                  slt          s10, s1, t3
                  andi         s3, s7, -746
                  addi         a7, s7, -1025
                  ori          s2, a6, -721
                  nop
                  slti         a0, a5, 433
                  slt          a6, a0, s1
                  add          s1, a2, a1
                  srl          a1, s8, t6
                  sltu         a6, zero, t3
                  or           s2, a1, a1
                  add          s11, a5, a4
                  auipc        gp, 633988
                  nop
                  xor          s0, s10, gp
                  add          a7, t6, t6
                  or           s3, t3, gp
                  slt          t0, a2, s0
                  sra          a6, s7, s0
                  sltiu        s11, a3, -1736
                  srli         t1, s6, 23
                  andi         t0, a5, 1480
                  ori          s1, s0, -599
                  slli         s7, s11, 30
                  and          s10, a0, a6
                  add          s6, s6, a1
                  andi         s7, a7, -802
                  sltu         s2, a2, s1
                  sltiu        tp, sp, -1575
                  sltiu        s11, s0, 995
                  sltiu        t2, s10, 127
                  srli         t6, t6, 10
                  ori          a4, s4, 618
                  sub          gp, s9, zero
                  lui          gp, 97196
                  sltu         s7, s11, a7
                  nop
                  slli         s8, s8, 22
                  slt          a2, s8, t2
                  xor          t4, s7, a4
                  addi         a6, s0, 271
                  sltiu        s9, sp, 1925
                  srli         s6, s7, 17
                  sll          s2, s0, a7
                  sra          t2, t1, s8
                  sll          s7, s3, t5
                  srli         a2, s1, 9
                  sll          t0, s9, s10
                  or           t0, s0, t0
                  sltu         s2, s5, t5
                  or           t3, t1, zero
                  srai         s6, a7, 17
                  add          a6, t2, s4
                  add          s7, s10, s0
                  xori         s10, ra, 865
                  slli         s7, s3, 2
                  slt          s2, a5, s1
                  srl          tp, s8, zero
                  slli         s7, s2, 20
                  sltu         s0, a1, gp
                  slt          s1, a7, s7
                  auipc        t4, 742583
                  srl          tp, s7, a2
                  sub          s9, s5, s2
                  nop
                  srl          s8, sp, gp
                  andi         t6, s7, -957
                  srl          s1, s1, s5
                  and          t4, s7, a1
                  slt          a5, t0, t2
                  sll          zero, a2, s5
                  ori          gp, s8, -244
                  sra          s3, t0, a6
                  auipc        s11, 281544
                  xori         a5, s0, 985
                  srli         s2, a3, 13
                  slt          t1, s3, a1
                  srai         a7, zero, 13
                  lui          s9, 901187
                  addi         a2, a5, -1152
                  addi         t0, a1, 958
                  slt          s2, sp, t0
                  sltiu        s10, a1, 1143
                  nop
                  add          s3, s4, a0
                  srai         s8, t3, 24
                  xor          s3, t3, gp
                  lui          s0, 175423
                  slli         a5, a6, 5
                  slt          t3, s11, t1
                  andi         a2, a5, 1166
                  sub          t2, t4, t0
                  add          s8, s10, s8
                  or           t0, a4, zero
                  lui          t0, 702866
                  andi         s7, t6, 90
                  sub          t4, a1, a6
                  sra          sp, tp, s2
                  srai         s1, gp, 0
                  lui          s10, 49676
                  srli         zero, s11, 19
                  lui          gp, 812526
                  srl          t3, a2, s6
                  slt          s8, a3, s11
                  srai         t6, t4, 16
                  nop
                  and          a4, a0, a6
                  sltu         s1, s2, a1
                  lui          t2, 9215
                  sltu         t0, s8, s9
                  sub          a0, s1, s8
                  sub          s8, a6, s11
                  sltiu        s2, s1, 430
                  nop
                  slti         ra, sp, -297
                  slti         s10, s3, -1400
                  add          a7, s8, t3
                  sra          s9, s3, t2
                  addi         s2, a0, 286
                  lui          t0, 556969
                  andi         a7, t5, 581
                  add          t1, t1, a1
                  auipc        s8, 934263
                  and          sp, t6, a6
                  andi         t1, s11, 221
                  addi         s9, s4, 709
                  sll          tp, t2, s3
                  xori         s6, zero, 242
                  srai         t4, s9, 25
                  ori          a1, ra, -1052
                  lui          t1, 355868
                  addi         t2, s0, 797
                  and          t2, a5, a6
                  sll          s2, tp, s11
                  addi         a1, ra, -585
                  slti         a5, a5, -1978
                  and          s8, s11, a6
                  slt          tp, a1, t2
                  slti         s7, s7, 47
                  srl          a1, t3, sp
                  slt          zero, ra, a2
                  auipc        gp, 1024254
                  sltu         a5, a6, s8
                  nop
                  andi         t2, s11, 825
                  nop
                  lui          ra, 781835
                  slt          sp, t2, t1
                  xori         a0, s8, 1769
                  andi         s3, t3, -701
                  slt          s10, s8, a1
                  sltu         a6, s6, gp
                  add          a0, t6, a5
                  andi         s3, a1, -121
                  lui          t6, 870906
                  auipc        t5, 498031
                  sltu         s10, a5, a7
                  xor          t4, t0, a1
                  andi         a4, t4, 296
                  sra          gp, a1, s7
                  sra          s7, a1, s8
                  srli         s3, a4, 15
                  add          t0, a5, a2
                  sltu         s11, a3, s3
                  slli         t2, s1, 2
                  sra          a4, sp, zero
                  andi         a2, s7, -916
                  srli         a6, a3, 24
                  or           a5, s6, t5
                  sll          a7, s0, t3
                  andi         a5, t6, -2040
                  andi         s10, ra, -1628
                  sll          t2, t6, a5
                  sll          tp, s8, t6
                  slli         a7, a0, 14
                  srl          a4, a0, tp
                  addi         t2, a4, -977
                  slli         s1, t1, 25
                  sltiu        s8, s5, 106
                  sltu         a1, a4, s5
                  xori         s7, s9, 725
                  srai         s3, t5, 11
                  sub          s2, s6, tp
                  sltu         s8, s10, s7
                  xor          s8, t2, t5
                  sra          s1, a1, s8
                  xori         t4, gp, -1606
                  sub          t5, t3, s6
                  or           tp, a5, t5
                  slt          t0, a1, s10
                  sub          t1, s0, s7
                  srl          a0, s5, a4
                  xori         s3, t1, 1372
                  andi         s7, s0, 190
                  slti         a0, s7, 1224
                  slt          s8, s4, a3
                  auipc        a2, 187823
                  lui          ra, 863654
                  xor          a4, t1, t1
                  auipc        gp, 634683
                  auipc        tp, 462389
                  srai         s11, a7, 19
                  slti         a1, sp, 1242
                  sra          gp, s9, s11
                  sub          a4, a1, s3
                  srl          ra, ra, t5
                  srli         t0, a5, 15
                  srl          zero, s2, a7
                  addi         s0, t1, -1839
                  srai         a1, a5, 12
                  srl          s6, a0, t0
                  sub          sp, tp, s8
                  nop
                  lui          s0, 722908
                  srl          zero, sp, s11
                  lui          s8, 74876
                  srl          s10, t2, zero
                  ori          a1, sp, 60
                  sub          tp, a3, t1
                  or           t2, a6, a3
                  sltu         sp, s4, sp
                  xor          s9, t6, zero
                  sll          s0, t5, s11
                  srl          a5, s0, tp
                  auipc        gp, 497705
                  add          s7, s2, s10
                  ori          t6, ra, 376
                  sub          t3, t5, t0
                  srl          s2, s2, s4
                  and          ra, t4, a0
                  slt          gp, a0, s9
                  add          t2, sp, gp
                  srli         s9, a6, 29
                  sll          s9, zero, t5
                  slti         s11, t3, 1694
                  nop
                  srli         s2, s7, 14
                  lui          t2, 44211
                  srl          a7, a3, a1
                  xori         s3, t6, 1578
                  auipc        s10, 605012
                  srai         sp, a3, 20
                  srl          a4, s4, s1
                  srai         tp, s11, 5
                  auipc        s2, 957801
                  lui          s11, 130998
                  srl          t3, ra, a4
                  srli         a7, gp, 23
                  andi         a6, s8, 1773
                  sll          s8, a3, zero
                  nop
                  andi         sp, s7, 761
                  srai         sp, a2, 28
                  nop
                  or           t4, s5, s6
                  srli         t3, a6, 25
                  srai         t3, t3, 31
                  add          s11, tp, t3
                  xor          a4, s11, gp
                  lui          s8, 954206
                  sltiu        t4, s8, 528
                  sltiu        t3, ra, 29
                  xori         t6, s1, -1638
                  nop
                  sltu         a7, a2, t6
                  nop
                  sra          t4, sp, sp
                  add          s0, a4, tp
                  addi         s3, a1, -1501
                  srli         s0, s1, 4
                  srl          t3, s7, tp
                  slti         ra, tp, -272
                  xori         s7, s1, 1475
                  srai         gp, a5, 4
                  slt          t0, s3, a4
                  sub          t5, s8, s0
                  andi         a1, a6, 1428
                  slt          ra, t1, t2
                  slt          a7, a1, a0
                  xori         t3, a4, -1829
                  addi         a7, a0, 787
                  xori         s0, sp, 575
                  srai         s0, s10, 9
                  or           t3, s1, t0
                  auipc        a6, 361012
                  ori          s0, s2, -12
                  slli         t4, a1, 12
                  slt          t4, a0, a7
                  srli         zero, s6, 13
                  sll          t2, s5, a6
                  srl          t0, s9, a1
                  and          s6, s3, t5
                  xor          tp, s10, t6
                  xor          s3, a6, t6
                  add          a4, s8, a5
                  andi         a0, ra, 1074
                  slti         s2, sp, -535
                  sra          a2, t4, t0
                  srli         s7, gp, 9
                  xor          gp, sp, t2
                  srl          t1, a3, t1
                  addi         sp, s11, 2028
                  sll          s2, zero, t3
                  srl          a6, s6, t4
                  xor          a5, a5, t3
                  slt          a4, s3, s8
                  slli         t6, a1, 1
                  sub          a6, ra, t5
                  auipc        a2, 829944
                  sltu         s7, sp, s11
                  add          a0, s11, t1
                  srl          s7, s0, a7
                  srl          t0, s9, t3
                  slli         s1, s3, 27
                  xor          t6, s6, s5
                  xor          t4, a0, s3
                  srli         s1, zero, 22
                  slt          t2, s3, s7
                  ori          s8, s4, -2047
                  sra          t6, a6, t1
                  srli         s1, a5, 10
                  srai         tp, t1, 20
                  ori          zero, tp, -1
                  slli         a4, s8, 28
                  sub          a2, s11, s6
                  auipc        zero, 315524
                  slti         a4, s7, -2034
                  xori         ra, s3, -249
                  srli         t2, s11, 11
                  lui          s10, 533686
                  ori          gp, t1, -1653
                  lui          t4, 403553
                  ori          sp, s1, 1636
                  andi         tp, s5, 1166
                  srl          s1, s8, t6
                  or           a4, t1, a2
                  and          t4, a2, a2
                  or           t1, a3, a1
                  lui          s2, 809604
                  srli         t3, s7, 0
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           ra, 0x0
                  li           t1, 0xf915dccd
                  li           a2, 0xb2d0f5c0
                  li           a5, 0x80000000
                  li           t4, 0xfd80ad97
                  li           t0, 0x0
                  li           s10, 0x0
                  li           s11, 0x0
                  li           a4, 0xd47da064
                  addi         t0, tp, 403
                  add          a4, a5, a4
                  lui          t4, 832557
                  lui          s11, 208944
                  sub          s11, s11, ra
                  nop
                  lui          a5, 953880
                  add          a2, a2, ra
                  auipc        t4, 365096
                  auipc        t4, 942109
                  addi         a5, ra, 1803
                  lui          tp, 551979
                  addi         a5, t4, 940
                  lui          s10, 135066
                  lui          t0, 777563
                  add          s10, t0, a4
                  auipc        a4, 849270
                  addi         s10, ra, 1865
                  nop
                  auipc        s11, 497961
                  lui          t0, 515287
                  nop
                  lui          ra, 110361
                  auipc        s11, 312843 #end riscv_int_numeric_corner_stream_18
                  srli         s10, gp, 16
                  or           s10, s5, ra
                  sltiu        t1, t3, 1251
                  sub          a1, zero, t2
                  auipc        t4, 228126
                  sra          t4, a5, s11
                  slli         a4, sp, 27
                  sltu         a2, a7, t4
                  andi         t5, t3, 865
                  srli         s6, s1, 20
                  srl          ra, a4, zero
                  srl          t1, t2, s1
                  lui          s10, 366644
                  and          t3, a7, t3
                  xori         s1, s9, -1691
                  sltu         s6, tp, a7
                  srl          t2, t2, t3
                  add          a4, s0, tp
                  addi         s3, s3, 931
                  sll          s11, a3, t5
                  sub          s10, sp, a2
                  slt          t2, a2, s2
                  srl          s3, gp, s11
                  sltiu        sp, s11, -178
                  xor          s1, t1, t3
                  sltu         zero, a0, gp
                  ori          t6, gp, -93
                  sltu         t0, s11, s1
                  slt          s10, a4, gp
                  xori         s10, a2, -884
                  xor          t3, a6, s6
                  lui          gp, 375426
                  or           s11, sp, s0
                  ori          s3, a5, 980
                  srai         t4, s7, 23
                  srli         a2, tp, 6
                  srl          t5, t1, s2
                  add          gp, t1, a5
                  srl          zero, s6, a3
                  or           ra, t0, s3
                  and          ra, s11, s0
                  sltiu        a1, a7, 863
                  andi         a0, t4, 2018
                  lui          sp, 647963
                  and          a7, tp, t0
                  sub          sp, s6, sp
                  slti         gp, ra, -287
                  xori         s2, s7, 1326
                  sra          a7, a2, t3
                  srli         s7, t4, 14
                  nop
                  srli         t5, s9, 28
                  addi         a1, s6, 1234
                  slli         s0, t3, 5
                  lui          t4, 33043
                  andi         s0, s10, -1925
                  and          s0, s0, a2
                  ori          s9, a6, 1615
                  sra          a2, s2, a3
                  or           t1, gp, a4
                  sll          t1, a1, s7
                  addi         t4, t3, -560
                  sub          s2, t2, a4
                  add          s2, t6, s6
                  sra          s10, s3, s10
                  srli         t4, tp, 25
                  nop
                  addi         t3, sp, -584
                  and          s3, sp, tp
                  sub          ra, t1, a5
                  slli         t6, a3, 30
                  sltiu        a5, s10, 1723
                  or           s8, a3, s11
                  auipc        s8, 765004
                  sll          s7, s0, t4
                  slt          a7, a1, s6
                  andi         t1, s11, -696
                  slti         a7, t0, 1346
                  sltiu        s6, zero, 517
                  slti         t0, s10, 1796
                  lui          s7, 883489
                  sltu         s9, a5, t3
                  xori         t5, gp, -1026
                  srli         s7, a0, 4
                  lui          a4, 904272
                  slli         a1, zero, 10
                  add          s9, a1, a5
                  auipc        tp, 344913
                  and          t6, s10, a0
                  andi         s8, a5, -578
                  nop
                  nop
                  sltiu        s7, a7, -91
                  sra          a5, t4, gp
                  add          s11, zero, tp
                  sltu         sp, zero, s7
                  slt          t4, t5, a5
                  slli         a4, s11, 14
                  add          tp, s2, ra
                  srli         t6, t5, 26
                  sra          a6, sp, t3
                  slli         t4, a7, 30
                  srli         s11, s1, 7
                  addi         s2, s7, -1089
                  or           zero, gp, a2
                  or           a5, s9, s0
                  sra          t3, t4, t4
                  sra          s8, s2, a7
                  and          a7, t6, s2
                  andi         gp, s4, 670
                  sltu         s9, s2, s6
                  sltiu        s0, t0, -203
                  sltu         t3, a2, a6
                  add          sp, a7, t6
                  lui          s0, 175548
                  slli         s8, t2, 20
                  lui          a0, 403941
                  sra          s7, t2, s5
                  or           a0, a0, t1
                  sll          t2, a2, tp
                  ori          s7, t1, -1394
                  xor          t6, a4, s0
                  addi         s3, a1, 2040
                  xor          a0, s11, s6
                  sll          s7, a4, s8
                  nop
                  andi         s10, a4, -1369
                  add          a5, sp, s1
                  xor          s10, s7, tp
                  xor          gp, a2, t2
                  srli         t1, s10, 1
                  andi         t3, s8, -1111
                  sub          ra, a1, s7
                  sub          s7, s10, a7
                  slt          a0, sp, s9
                  and          ra, t3, zero
                  slli         sp, a5, 28
                  slti         a5, s5, 1219
                  slti         a5, s9, 2006
                  sra          a0, s3, s5
                  srai         s8, s9, 8
                  slti         s8, s10, 1585
                  slt          sp, t6, t0
                  srli         a5, t0, 28
                  sll          a7, s6, s0
                  add          a6, t2, s8
                  nop
                  srl          t4, a2, a6
                  andi         a0, a2, 539
                  xori         a2, a6, 1491
                  xori         s1, t1, -545
                  andi         ra, s4, -346
                  xori         s10, zero, -1645
                  sll          a1, gp, t3
                  xor          t6, ra, t2
                  ori          s7, s7, 226
                  sub          a6, a3, t5
                  sra          ra, s0, a2
                  andi         zero, tp, -1725
                  add          t6, a7, t1
                  lui          s7, 623332
                  lui          t6, 794185
                  sra          a2, t1, s5
                  sll          a6, zero, t4
                  sll          s1, a5, t4
                  or           a6, s4, t2
                  sra          zero, a5, t4
                  andi         s8, s8, 592
                  sll          s11, s2, t6
                  sll          a5, ra, s0
                  add          s3, gp, a6
                  xori         a7, s0, 687
                  nop
                  xor          s2, s7, tp
                  xor          a1, a4, s2
                  add          s0, s4, t6
                  sltu         ra, gp, t2
                  ori          s7, s11, 924
                  srli         s11, t1, 0
                  xori         s2, s7, -451
                  srl          t4, t5, t0
                  slt          a5, ra, a7
                  xor          s8, sp, s0
                  lui          t6, 838982
                  add          s9, s11, t1
                  xor          t2, t5, a4
                  add          s2, t6, s11
                  slt          t0, a1, s0
                  auipc        s11, 213729
                  addi         tp, tp, 171
                  or           s0, s3, t4
                  nop
                  slti         gp, s2, -1872
                  and          a2, s3, s7
                  auipc        s9, 484406
                  sll          s11, a7, tp
                  sltu         s8, a3, s5
                  sltiu        a7, s6, 2003
                  andi         a0, s2, 311
                  sltu         t1, s0, sp
                  and          s1, t4, s4
                  auipc        t5, 810844
                  sltiu        s11, sp, 1464
                  sub          a0, s2, s4
                  and          t5, a6, s0
                  sll          a1, t1, t1
                  nop
                  auipc        s3, 45395
                  sltu         s2, s7, t5
                  addi         a2, s2, 581
                  lui          a6, 883145
                  lui          t3, 1012338
                  sltiu        gp, t0, 1058
                  andi         gp, t5, -108
                  srli         t1, t2, 30
                  srli         s2, s8, 26
                  andi         a4, a7, -633
                  srl          t3, s5, a1
                  ori          a1, a4, -1001
                  srli         a2, zero, 7
                  addi         a2, s9, 882
                  sltiu        a7, s4, -1519
                  xor          a4, s2, s5
                  ori          ra, sp, 564
                  sltiu        a5, a0, -1144
                  srl          a0, s5, a4
                  add          a2, sp, tp
                  add          t5, gp, t5
                  nop
                  slt          s7, a5, a4
                  xori         a0, a0, 1533
                  nop
                  slt          t5, a5, gp
                  ori          t5, a5, -1091
                  sub          tp, a2, a0
                  sll          a7, s0, t5
                  auipc        a1, 80306
                  slti         t2, a4, -1132
                  andi         s7, ra, -1353
                  xor          s8, t6, t0
                  sra          a6, t2, a3
                  ori          s7, t0, 545
                  sll          s7, a3, gp
                  sub          t2, a1, a2
                  srai         a7, a4, 24
                  ori          s9, sp, 894
                  sub          a1, s3, t0
                  andi         s2, s5, -1121
                  sub          s11, s11, t5
                  sra          t3, t3, sp
                  slti         a7, a0, 1082
                  srli         s10, a3, 28
                  xori         s3, s3, 273
                  slt          a7, a6, s0
                  srli         gp, s9, 26
                  nop
                  xori         s6, gp, 512
                  srli         sp, t4, 23
                  xor          tp, a6, a1
                  sra          t0, a4, s10
                  add          t6, s2, s10
                  and          sp, t2, a5
                  srai         s6, a1, 17
                  slt          t5, t3, s1
                  sltiu        s2, a5, -1978
                  sra          s10, t5, t5
                  xor          t6, gp, s3
                  sll          s3, tp, t0
                  ori          sp, s6, 637
                  sub          s2, tp, s1
                  and          a1, s11, s1
                  andi         s11, tp, -166
                  or           a5, zero, t0
                  and          s2, t6, s3
                  slt          t4, a0, tp
                  xor          t2, a0, s2
                  sltiu        a4, ra, 183
                  ori          s7, s3, 534
                  srli         s2, s3, 2
                  sltu         a6, s11, s9
                  srl          ra, s4, s8
                  lui          t2, 63228
                  andi         s7, s9, -1716
                  sltiu        s0, s10, -525
                  lui          s2, 660155
                  addi         s7, s0, -1407
                  or           ra, t6, a1
                  andi         s8, sp, -925
                  and          s1, a3, sp
                  sra          t5, a6, a1
                  or           a2, a1, ra
                  xori         a7, s11, -166
                  sltiu        t3, s2, -1695
                  srl          a2, a2, a7
                  lui          s9, 180426
                  ori          a7, s0, 645
                  ori          s9, a3, -529
                  nop
                  srli         a5, t0, 5
                  srai         s6, s3, 27
                  sltu         t5, s6, a5
                  srai         s0, t0, 12
                  andi         s2, t6, -1938
                  srl          t3, s5, gp
                  sub          a7, s4, t6
                  slli         t1, zero, 24
                  srai         a4, a0, 1
                  andi         s11, a6, 724
                  slt          s0, s6, t2
                  xori         a5, s11, 1268
                  and          gp, a3, tp
                  slli         a5, a2, 25
                  add          zero, s3, a7
                  slt          s9, s9, s11
                  slti         s9, t2, 1539
                  or           a4, t3, t6
                  slti         sp, sp, -706
                  srl          t4, s4, gp
                  srai         s8, gp, 8
                  add          gp, s1, a0
                  auipc        a7, 929499
                  addi         t5, zero, -929
                  nop
                  sltu         s10, s2, s3
                  srai         tp, a5, 21
                  srl          a2, s3, s9
                  or           s3, s4, s2
                  sll          sp, t5, ra
                  or           a0, ra, s1
                  sltiu        t1, a7, 177
                  xori         t2, a1, -1989
                  add          gp, s8, s10
                  slli         s9, s2, 22
                  srai         s6, zero, 27
                  add          s8, s6, a4
                  auipc        s1, 451993
                  sltiu        s0, a1, 1443
                  sltu         s2, tp, s9
                  srai         a1, s2, 1
                  sra          s9, tp, a6
                  sltu         a6, s8, s3
                  srai         a4, s7, 6
                  srai         t3, s10, 29
                  srli         a5, zero, 22
                  sll          t2, s2, a4
                  xor          tp, s11, s4
                  sub          s8, ra, t2
                  xor          s10, s0, s2
                  auipc        a0, 915777
                  srai         a5, a1, 3
                  add          s6, t4, s2
                  sltu         t2, ra, t1
                  srl          s8, s1, ra
                  xori         s0, s7, -1784
                  xor          a1, zero, s10
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           t6, 0x0
                  li           a6, 0x0
                  li           a7, 0x80000000
                  li           t0, 0xffffffff
                  li           a5, 0x0
                  li           tp, 0x1f43a9ee
                  li           t4, 0x17c99847
                  li           s0, 0x66bc0441
                  li           a4, 0xcac9c121
                  nop
                  sub          s0, a7, t0
                  sub          a5, t6, a7
                  lui          t6, 588222
                  lui          a4, 378216
                  addi         t4, t0, 288
                  auipc        a7, 274782
                  auipc        tp, 905661
                  add          a5, t4, a7
                  lui          t4, 717277
                  auipc        s0, 355866
                  lui          a4, 807602
                  lui          t4, 743666
                  auipc        t0, 218174
                  sub          t6, tp, tp
                  auipc        tp, 383019
                  add          a4, a7, tp
                  sub          s9, s0, a4
                  lui          t4, 733492 #end riscv_int_numeric_corner_stream_19
                  sltu         s6, s6, s11
                  slti         t3, zero, 1847
                  xori         s1, a1, 215
                  addi         t1, a6, -212
                  srai         zero, a5, 18
                  xor          s10, s6, t1
                  slli         sp, t0, 5
                  sll          s9, s5, s7
                  add          a4, a1, s2
                  nop
                  srli         s3, s8, 13
                  xor          t4, s7, a2
                  srli         t4, a1, 1
                  ori          a1, a4, 890
                  nop
                  addi         s3, tp, -1743
                  slt          t3, s9, s1
                  sltu         a6, t6, a1
                  auipc        sp, 344558
                  srai         a2, s7, 0
                  slt          tp, a3, s3
                  ori          a7, s10, 22
                  auipc        ra, 1038183
                  and          a7, t4, a0
                  srl          s6, a1, a5
                  sra          ra, tp, s2
                  srl          s3, s1, a7
                  slt          s11, s6, s2
                  la x21, test_done
                  jalr x0, x21, 0
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_2:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_3:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_4:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_5:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_6:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_7:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_8:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_9:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_10:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_11:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_12:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_13:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_14:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_15:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x13, x20, zero
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x12, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x12, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x12, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x12, x25, ecall_handler
                  li x25, 0x1
                  beq x12, x25, instr_fault_handler
                  li x25, 0x5
                  beq x12, x25, load_fault_handler
                  li x25, 0x7
                  beq x12, x25, store_fault_handler
                  li x25, 0xc
                  beq x12, x25, pt_fault_handler
                  li x25, 0xd
                  beq x12, x25, pt_fault_handler
                  li x25, 0xf
                  beq x12, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x20, x13, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x13, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x13, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x20, x13, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x20, x13, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x20, x13, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
