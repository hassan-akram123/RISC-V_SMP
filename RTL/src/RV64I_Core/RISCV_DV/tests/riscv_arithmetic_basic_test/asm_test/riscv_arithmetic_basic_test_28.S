.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x23, h0_start
jalr x0, x23, 0
h0_start:
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 1
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0xa
                  li x1, 0xf656e80c
                  li x2, 0x9072a0c6
                  li x3, 0x2
                  li x4, 0x80000000
                  li x5, 0x633a06f8
                  li x6, 0xfcf27a2e
                  li x7, 0x8
                  li x8, 0x5
                  li x9, 0x80000000
                  li x10, 0xff7856f4
                  li x11, 0xa79a2ac4
                  li x12, 0x3beb90ae
                  li x13, 0x80000000
                  li x14, 0xfc7eb332
                  li x15, 0x0
                  li x16, 0xf5cc9441
                  li x17, 0x8
                  li x18, 0xb
                  li x20, 0xf8280df8
                  li x21, 0x335d70ed
                  li x22, 0x0
                  li x23, 0x80000000
                  li x25, 0xadc565d9
                  li x26, 0x0
                  li x27, 0x6dd612e4
                  li x28, 0x80000000
                  li x29, 0x83de6477
                  li x30, 0x80000000
                  li x31, 0x28952f7f
                  la x24, user_stack_end
main:             li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           t0, 0x0
                  li           a7, 0xffffffff
                  li           t5, 0xffffffff
                  li           a0, 0x80000000
                  li           s6, 0x0
                  li           a4, 0xffffffff
                  li           s2, 0x0
                  li           a2, 0xadd1b6e9
                  li           a1, 0x0
                  nop
                  sub          s6, a7, t5
                  sub          a2, s2, t0
                  lui          a4, 525542
                  nop
                  lui          t3, 660735
                  addi         a0, s6, -1153
                  lui          a1, 248580
                  add          t3, a4, t0
                  sub          a1, t3, a2
                  add          a7, t5, a4
                  addi         t5, a1, 1315
                  nop
                  addi         t5, a1, 1339
                  addi         a7, t0, -1804
                  auipc        a7, 839791
                  add          a0, a7, s2
                  lui          a1, 450653 #end riscv_int_numeric_corner_stream_14
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           s9, 0xffffffff
                  li           t3, 0x0
                  li           a7, 0x2fb86a81
                  li           t5, 0x8771d420
                  li           t4, 0x80000000
                  li           a1, 0x5eb66a90
                  li           a5, 0x80000000
                  li           ra, 0x0
                  li           tp, 0x0
                  sub          a7, a7, a1
                  auipc        t4, 483658
                  lui          s9, 658225
                  addi         s9, s9, -302
                  add          a1, t4, s9
                  add          t4, s9, t3
                  add          t5, a1, a1
                  auipc        t5, 31229
                  add          s9, a5, tp
                  auipc        a7, 282411
                  nop
                  lui          s9, 957785
                  nop
                  lui          t5, 410536
                  sub          a1, t2, t3
                  nop #end riscv_int_numeric_corner_stream_12
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           sp, 0x5799f2af
                  li           a4, 0x8e8aa4d5
                  li           ra, 0x0
                  li           t2, 0x3d90058b
                  li           t5, 0x13476742
                  li           t0, 0x80000000
                  li           a5, 0x80000000
                  li           gp, 0x80000000
                  li           a3, 0xdd061844
                  addi         ra, t2, 844
                  sub          a0, a0, a5
                  lui          a3, 345351
                  lui          ra, 675311
                  lui          sp, 51654
                  lui          a3, 22803
                  add          a0, ra, gp
                  add          t5, sp, ra
                  add          a3, ra, sp
                  nop
                  auipc        a3, 309747
                  sub          a3, a4, t2
                  auipc        a4, 461671
                  sub          a5, a0, sp
                  lui          t5, 298986
                  add          sp, ra, sp
                  addi         t0, ra, 1757
                  add          a4, a0, a4
                  sub          a5, t2, a4
                  addi         a5, gp, 343
                  auipc        t0, 171065
                  sub          t2, t5, a5
                  nop
                  lui          t0, 863054
                  sub          a3, sp, gp
                  lui          t5, 104237
                  sub          gp, t0, a3
                  lui          a0, 793406
                  addi         t0, a3, 816
                  lui          ra, 622808 #end riscv_int_numeric_corner_stream_15
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           t0, 0x80000000
                  li           t1, 0xffffffff
                  li           a1, 0x80000000
                  li           a4, 0x0
                  li           s0, 0xffffffff
                  li           s11, 0x80000000
                  li           a2, 0x80000000
                  li           s10, 0x80000000
                  li           t6, 0x0
                  auipc        s11, 7388
                  addi         a2, s10, -1928
                  addi         a1, s0, 1442
                  add          t6, s6, s10
                  auipc        s6, 817842
                  addi         s6, s0, -1230
                  nop
                  add          a1, t0, s10
                  lui          t0, 715177
                  add          s6, a2, a1
                  lui          t1, 954699
                  addi         a4, t1, -1316
                  addi         a1, s6, -1415
                  addi         a1, a1, 1441
                  sub          s6, t1, a2
                  sub          s0, s6, t1
                  lui          t1, 806295
                  auipc        a1, 239649
                  add          a4, t1, t1
                  add          a4, t1, a4
                  lui          a2, 23766
                  lui          a2, 1023508
                  sub          a1, t6, t1
                  nop
                  add          s11, s10, a1
                  nop
                  lui          s11, 542737
                  lui          s10, 1004716
                  auipc        a2, 826003 #end riscv_int_numeric_corner_stream_8
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           sp, 0xffffffff
                  li           a5, 0x0
                  li           s0, 0xffffffff
                  li           t5, 0x80000000
                  li           a0, 0x80000000
                  li           t1, 0xffffffff
                  li           s4, 0xe78738d5
                  li           gp, 0x0
                  li           s1, 0x80000000
                  addi         s0, a0, 585
                  lui          a5, 192371
                  add          s4, s4, s1
                  addi         gp, s1, -1752
                  addi         a5, gp, 1893
                  sub          s0, gp, t5
                  nop
                  auipc        s0, 895104
                  add          tp, s1, t1
                  auipc        sp, 1012770
                  lui          a5, 809786
                  sub          s4, t1, t1
                  auipc        t5, 310199
                  add          gp, a0, s4
                  sub          tp, s1, t5
                  sub          s4, s1, a5
                  nop
                  auipc        sp, 915813
                  auipc        t5, 232483
                  auipc        gp, 434840
                  sub          s4, s4, a5
                  addi         gp, s1, -1408
                  auipc        s1, 422175
                  addi         a5, gp, 836
                  add          s0, s0, tp
                  sub          s4, tp, gp
                  nop
                  nop
                  sub          a0, a5, t1
                  lui          gp, 101360 #end riscv_int_numeric_corner_stream_19
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           t2, 0x0
                  li           t6, 0xffffffff
                  li           t0, 0x80000000
                  li           a2, 0x0
                  li           a5, 0x0
                  li           ra, 0x80000000
                  li           a1, 0xffffffff
                  li           t1, 0x674582a5
                  li           s1, 0x80000000
                  add          a2, s1, t1
                  lui          t6, 366129
                  lui          t6, 451895
                  sub          t6, t0, a1
                  nop
                  nop
                  addi         t6, t0, 1784
                  addi         t0, a1, -1582
                  sub          a1, a2, a1
                  add          tp, a5, tp
                  sub          a5, a2, ra
                  auipc        t2, 717052
                  auipc        a2, 327520
                  lui          a5, 772399
                  addi         tp, ra, -1275
                  add          a2, t6, a1
                  lui          t6, 346253
                  sub          t1, s1, t1
                  sub          a5, t0, t6
                  auipc        a5, 647186
                  add          a5, t2, t0 #end riscv_int_numeric_corner_stream_10
                  sra          a3, s6, gp
                  sltu         t5, ra, tp
                  and          a7, s9, s1
                  sra          s5, s1, t2
                  slli         t0, tp, 21
                  sltu         s4, s2, a6
                  sltiu        t1, s1, 385
                  ori          s9, a4, -752
                  slli         t4, a0, 0
                  sltiu        s5, t1, 1857
                  sltiu        s6, s0, -589
                  srai         a2, s11, 8
                  xor          a3, a0, t1
                  add          t3, s6, a6
                  sll          s11, zero, s0
                  auipc        s0, 66960
                  and          s9, s5, t1
                  srl          tp, s11, a1
                  srai         t2, gp, 16
                  slt          s5, s8, s2
                  sra          t3, s7, s2
                  and          s2, s9, a1
                  ori          a4, s0, -979
                  xor          t5, t3, a0
                  xor          a2, a3, a1
                  xor          t5, a6, a6
                  srl          t5, s8, s6
                  sra          a7, s2, s9
                  srl          a1, a6, a6
                  and          a2, t2, t5
                  srli         sp, s0, 27
                  add          s10, ra, a4
                  nop
                  andi         s6, a4, 11
                  sltiu        t5, s11, -1201
                  xori         t4, s7, 1927
                  srl          s2, a6, a7
                  andi         t0, s0, -246
                  srai         a3, s3, 13
                  nop
                  sltu         a3, tp, a6
                  xori         s6, s9, -1329
                  slti         s1, t1, -276
                  slli         a6, s8, 31
                  addi         t6, a4, -592
                  sra          a5, gp, t2
                  andi         s1, s8, -215
                  slti         s11, a0, -801
                  auipc        a0, 365309
                  sltiu        s0, s4, -747
                  or           s2, s2, s2
                  nop
                  nop
                  sra          s2, sp, a0
                  srl          t0, s0, s1
                  xori         t5, a7, 867
                  sra          s1, a5, s3
                  add          t0, t3, s5
                  xor          s2, s8, s0
                  slli         a3, t2, 25
                  sra          t0, s11, s9
                  srl          a6, t2, a4
                  slti         gp, zero, 810
                  slt          t6, t0, s3
                  sll          a7, s6, s11
                  slli         s0, a2, 24
                  srli         a7, s9, 8
                  lui          s4, 761800
                  auipc        s9, 546517
                  srl          a6, a6, t6
                  sltiu        a0, sp, 1920
                  xor          t5, s1, s0
                  srai         s5, ra, 28
                  add          a4, a6, s11
                  sra          t5, a0, s8
                  srai         ra, a1, 22
                  sll          s6, s9, gp
                  andi         s4, a2, -1879
                  andi         s11, t4, 708
                  slti         a5, t6, -1638
                  xori         s6, s11, -328
                  andi         a2, zero, 394
                  srli         s11, t2, 22
                  sra          a5, sp, s10
                  sltu         gp, a2, a3
                  addi         s2, s7, -638
                  srl          a2, a5, a1
                  nop
                  srl          t4, t4, ra
                  srai         t4, gp, 21
                  srli         a6, s2, 3
                  sll          sp, sp, a2
                  andi         sp, zero, -1369
                  sll          a6, a1, t5
                  or           s0, s1, a1
                  sll          a4, a3, s8
                  sltiu        s11, ra, -1420
                  sltu         t3, sp, t6
                  and          ra, t6, a3
                  srai         t3, a1, 31
                  add          a2, a6, a3
                  xor          s9, a3, a3
                  slli         s9, zero, 22
                  add          a2, a4, s6
                  slli         s11, tp, 13
                  andi         ra, t0, -614
                  sltu         sp, s4, ra
                  lui          s9, 590289
                  srl          a3, s1, gp
                  srai         s5, s10, 13
                  slli         gp, s11, 16
                  andi         t3, t3, 921
                  srl          s10, a7, s10
                  sll          t4, zero, s4
                  srl          a2, s1, t6
                  nop
                  add          s9, t0, s7
                  slli         s2, zero, 3
                  sltu         a7, s3, a6
                  addi         sp, tp, -952
                  xor          s2, s8, t0
                  sltu         t3, t1, a6
                  sra          t2, s10, t4
                  srli         t6, s10, 0
                  sub          t2, a5, s3
                  srai         a7, zero, 22
                  slti         s4, a2, 769
                  lui          a2, 366344
                  and          a1, s3, s11
                  or           s5, zero, s8
                  slt          a4, a0, ra
                  or           sp, gp, s11
                  or           sp, t0, gp
                  slti         s6, s0, -680
                  auipc        s1, 19658
                  andi         a2, a7, 704
                  srl          zero, s6, t2
                  ori          tp, s5, -811
                  slt          s0, sp, s1
                  sll          t5, t1, s5
                  sltu         t1, a5, a1
                  auipc        a6, 227210
                  srli         s10, s11, 26
                  slli         t4, a6, 31
                  or           s1, t1, a3
                  sub          a6, s8, s1
                  and          a2, s9, tp
                  nop
                  andi         s11, s10, 1974
                  add          s4, t0, a4
                  slti         s9, t4, -34
                  addi         t3, s8, 462
                  slt          t1, s0, gp
                  andi         ra, a7, -1841
                  lui          t2, 449840
                  xori         t6, s1, 808
                  addi         ra, gp, -543
                  sltu         a2, a6, t1
                  andi         ra, s0, -330
                  sltu         sp, a4, s2
                  slti         t6, a0, -1028
                  slli         t4, s3, 9
                  sltu         s4, s11, s5
                  addi         a6, a3, -1500
                  and          t4, s3, s4
                  srai         s9, s0, 0
                  auipc        a6, 446105
                  nop
                  ori          t1, s11, -185
                  sub          t5, a2, zero
                  xor          t6, a7, a5
                  xor          a0, a4, t3
                  ori          t2, s10, -572
                  slt          t6, a5, a1
                  xori         a0, gp, -1819
                  lui          s4, 608904
                  xor          a1, s7, ra
                  sra          gp, t1, s5
                  srli         a5, a1, 13
                  xori         t4, s3, -1817
                  lui          t3, 688908
                  sll          s0, a5, a7
                  nop
                  add          s9, zero, s4
                  srl          a2, a1, s5
                  slt          t1, a0, t4
                  sub          a5, a7, t3
                  slli         t1, a4, 10
                  sra          gp, t3, a3
                  add          gp, a1, t5
                  or           t4, a6, ra
                  sub          s0, t0, s6
                  slli         a6, a1, 14
                  srai         a6, s3, 29
                  sltu         s9, s10, t6
                  add          s1, sp, s4
                  ori          ra, a7, -1981
                  sra          t4, a0, s9
                  andi         t3, a0, -706
                  auipc        zero, 597447
                  and          a6, gp, s4
                  slt          s4, a7, s1
                  sub          gp, s6, a7
                  slt          t4, tp, s8
                  nop
                  add          a0, tp, s11
                  sll          a3, t1, a4
                  sltiu        t0, t0, -322
                  slli         t6, s9, 20
                  slti         tp, a2, -1179
                  andi         a2, a3, -1088
                  or           ra, a0, s9
                  sltiu        t4, a6, -457
                  slt          s4, zero, s8
                  nop
                  nop
                  sll          s6, a4, s6
                  slti         a4, t2, -1743
                  xori         a3, s5, -496
                  add          a2, t3, t1
                  and          t2, a3, s6
                  slti         zero, tp, -132
                  srli         t4, a5, 15
                  slli         a5, s11, 23
                  slt          a6, t0, t4
                  and          s0, s8, a0
                  sub          t1, t0, s3
                  sll          s4, s1, t3
                  ori          s4, a4, -1978
                  add          gp, s3, s6
                  slt          a0, t2, t5
                  nop
                  slt          t3, t1, t6
                  slt          a5, t5, a4
                  addi         t4, ra, -1227
                  xor          t6, t2, a3
                  auipc        s4, 803574
                  srai         t0, zero, 6
                  nop
                  sub          s2, t4, a7
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           t5, 0xffffffff
                  li           a6, 0x79d2f8f
                  li           t0, 0xad446771
                  li           s6, 0xffffffff
                  li           t4, 0x933c8293
                  li           s4, 0x0
                  li           s10, 0x0
                  li           ra, 0x56c1697d
                  li           t1, 0xffffffff
                  addi         s4, s4, -588
                  nop
                  addi         s10, a6, -177
                  nop
                  auipc        ra, 30382
                  nop
                  nop
                  add          s10, ra, t4
                  lui          t1, 308153
                  add          t5, sp, a6
                  addi         t0, ra, -1819
                  addi         sp, t4, -775
                  sub          t0, a6, sp
                  add          s4, t1, t4
                  addi         s10, t0, -1361
                  nop
                  addi         s4, s4, 994
                  nop
                  nop
                  nop
                  nop
                  auipc        t1, 258059
                  auipc        s10, 325105
                  sub          sp, t1, a6
                  add          s6, sp, ra #end riscv_int_numeric_corner_stream_11
                  srai         t2, a4, 31
                  slti         ra, gp, -1945
                  sll          s1, a7, t5
                  xori         t6, a1, -1440
                  srl          s11, t5, s1
                  slt          a2, s11, t2
                  sll          t1, s8, t4
                  xori         s5, a5, 268
                  nop
                  and          s2, t1, a5
                  sltu         a5, t5, a0
                  auipc        a5, 1019160
                  srli         a3, tp, 4
                  xori         s9, t2, 899
                  sll          t2, s0, s8
                  add          sp, tp, t5
                  nop
                  ori          a3, s5, -1259
                  or           t5, s7, s8
                  sra          s9, s1, s3
                  srai         t0, t2, 10
                  xor          s5, s4, s11
                  lui          t0, 384949
                  slli         s2, s9, 20
                  nop
                  addi         t1, s10, -861
                  xori         sp, s0, 1044
                  and          t1, s7, t3
                  add          a3, t0, tp
                  slt          a4, tp, a7
                  srl          t3, t3, s10
                  slti         a1, s7, -321
                  sra          s5, gp, a4
                  sll          a2, t6, s9
                  sub          t6, s5, s2
                  xori         a2, s0, -509
                  ori          t2, a0, 1096
                  sra          t0, t1, t1
                  sra          a2, s1, a2
                  nop
                  slt          tp, s11, s6
                  slti         a1, s9, 426
                  addi         s11, s6, 898
                  sub          a0, t0, a3
                  srl          tp, t1, a0
                  xor          a3, s1, a3
                  xor          tp, a6, t1
                  nop
                  ori          a0, t2, 611
                  lui          s4, 268631
                  add          s2, a1, s11
                  ori          a5, s3, 1546
                  srai         t3, t2, 3
                  ori          s4, t2, 622
                  xori         t3, a7, 1070
                  sub          gp, s10, a1
                  xor          t6, zero, s4
                  slti         s1, a2, -160
                  add          s0, sp, a5
                  ori          a4, ra, -1278
                  xori         a6, s3, -655
                  sltiu        zero, s6, -232
                  add          sp, a0, s11
                  srai         s0, t0, 30
                  slt          ra, zero, s5
                  sltu         s10, a0, a6
                  addi         ra, a2, -1747
                  slti         s6, s5, 1172
                  nop
                  sub          a1, t5, s4
                  sub          a5, s7, a4
                  slt          s2, sp, a6
                  srai         a2, s9, 15
                  xori         a6, s0, -4
                  sltiu        s4, t4, -1278
                  xor          a0, sp, ra
                  xori         t1, t1, -1226
                  lui          s6, 294537
                  sra          s10, s10, s10
                  srl          s1, s3, s7
                  sra          t2, s4, a7
                  sll          sp, a0, tp
                  sltu         t0, s6, s10
                  ori          a4, s7, -1475
                  slli         s10, t4, 18
                  sltu         s11, t4, gp
                  slli         a0, t4, 22
                  sra          a1, s9, a1
                  sub          t0, s10, t5
                  and          a1, tp, s9
                  and          a1, s2, tp
                  sll          s6, s8, a7
                  sub          a1, s3, s3
                  sltiu        a3, s0, 925
                  xor          zero, s7, s6
                  nop
                  nop
                  and          t5, t6, t3
                  add          s5, s6, t5
                  nop
                  and          s4, tp, zero
                  sra          t3, s2, a5
                  and          s4, t2, s4
                  addi         tp, zero, 397
                  sra          s1, s3, s4
                  sra          a2, a6, tp
                  sltu         t6, s11, s2
                  sll          t6, s10, s1
                  or           zero, s11, t3
                  addi         ra, a6, -1423
                  lui          t6, 887782
                  add          t2, s4, s0
                  nop
                  sltu         s10, tp, sp
                  srli         sp, a1, 25
                  lui          zero, 922827
                  slti         gp, s1, 77
                  sll          sp, s0, s3
                  andi         s4, gp, -979
                  or           s10, a3, t3
                  sltu         zero, s5, t2
                  add          t6, sp, s8
                  add          a1, gp, s11
                  srl          a2, t0, a2
                  add          s9, s9, a4
                  xor          a6, a5, tp
                  or           s10, ra, s10
                  sra          s0, a3, a4
                  lui          s4, 170245
                  sltu         t2, a5, s11
                  sub          t3, t4, s2
                  add          a0, s11, tp
                  sra          a3, s4, a4
                  srl          a5, t0, a2
                  slt          s9, t6, s7
                  slli         zero, t2, 21
                  xori         a3, s4, 1880
                  slti         s5, t2, -1229
                  sra          s1, t5, gp
                  slli         t4, t2, 27
                  slt          t3, ra, s3
                  andi         tp, s9, -1681
                  xori         a4, s5, -896
                  and          t3, s7, s2
                  andi         s9, s7, -59
                  add          a4, zero, ra
                  sub          t0, a1, a4
                  add          s9, s2, s6
                  sltiu        s2, s1, 1749
                  slt          a6, s4, a6
                  slti         a5, a7, -592
                  srli         a6, s4, 30
                  xor          t1, s1, t6
                  or           t4, a6, a6
                  slt          a1, a2, t6
                  auipc        zero, 558232
                  slli         t5, ra, 14
                  nop
                  andi         a2, ra, 58
                  nop
                  srl          ra, t2, t3
                  srai         sp, a6, 4
                  sra          zero, s3, s10
                  sll          s5, a5, t0
                  xor          zero, s6, a0
                  sltu         zero, s5, s1
                  and          gp, a2, s9
                  sra          a7, ra, a5
                  sltiu        a7, s6, 831
                  srai         a3, t4, 24
                  xor          s0, a4, ra
                  slli         a2, s6, 25
                  andi         t3, a4, -1037
                  ori          a3, s7, -254
                  xor          a1, t1, t6
                  slli         s9, zero, 10
                  srli         t3, s5, 20
                  sll          zero, a0, s10
                  auipc        s0, 549873
                  and          a2, a4, s7
                  addi         s11, s1, 2033
                  sub          t5, zero, ra
                  sltu         a2, s4, a1
                  sra          t1, a6, a2
                  slli         t1, t0, 1
                  srli         s1, t2, 4
                  srai         a2, s1, 27
                  sltiu        t3, s11, -1069
                  ori          t4, s1, 931
                  nop
                  andi         zero, t5, 1038
                  xori         a0, s4, -1945
                  sll          sp, t4, s6
                  xori         gp, s1, 465
                  sltiu        a5, s5, 1075
                  nop
                  xor          s6, a5, zero
                  sltiu        sp, a5, -397
                  lui          s9, 971371
                  ori          a0, t3, 649
                  slti         a3, a7, 1174
                  slli         t5, s11, 24
                  slli         a4, s2, 26
                  or           s1, sp, t6
                  add          t1, t6, s7
                  srl          t4, a1, zero
                  xori         a1, a6, 175
                  sltiu        t0, tp, -664
                  slli         s5, s7, 17
                  slt          a7, s8, gp
                  or           a2, a6, s8
                  slli         t0, s4, 0
                  sltiu        a1, s1, -612
                  sub          a0, s2, a1
                  and          t2, a4, s9
                  slli         s0, s7, 18
                  xor          a7, t6, t0
                  xori         zero, t3, -1993
                  slt          tp, a0, t1
                  sltu         t6, s1, s9
                  srl          t6, a1, t3
                  sll          s9, s10, s5
                  and          a7, a2, s2
                  addi         s6, s10, -823
                  addi         a4, s1, 186
                  sltiu        s5, a7, -761
                  slli         t6, s8, 19
                  lui          s5, 745926
                  auipc        a4, 843043
                  sltu         s2, s8, sp
                  lui          s10, 555025
                  slt          s10, ra, a1
                  xor          sp, s4, a7
                  add          s5, a4, s0
                  ori          s9, t0, 1437
                  xor          s2, gp, s2
                  srai         t3, ra, 28
                  ori          gp, s8, -953
                  lui          gp, 957608
                  sll          t6, zero, s4
                  srai         t0, s0, 31
                  and          sp, t1, a0
                  or           t6, a4, a1
                  add          a6, ra, a3
                  slt          a5, s10, tp
                  srai         a0, t5, 0
                  andi         a6, t1, -62
                  nop
                  andi         a4, t2, -1921
                  auipc        s5, 201932
                  add          t5, a1, s1
                  xor          a0, zero, a6
                  slt          zero, t0, s5
                  sltiu        a1, s1, -671
                  lui          s4, 736066
                  ori          gp, a1, 1025
                  sltiu        a6, t6, -950
                  sub          a0, tp, s9
                  sra          zero, sp, s9
                  sll          a1, t6, a0
                  srli         zero, s8, 10
                  srli         s2, t4, 19
                  ori          ra, a4, 1674
                  xori         t5, s10, 830
                  xori         a1, t5, -1908
                  add          s5, s10, ra
                  nop
                  slt          s10, t5, s6
                  add          a6, s1, t3
                  xor          s6, t4, a3
                  slt          gp, s2, s0
                  slti         a6, s3, -807
                  addi         t5, gp, 933
                  sra          s2, s5, s5
                  slti         gp, gp, 345
                  xori         sp, s5, 173
                  slt          a3, a5, s5
                  slti         s5, t3, 462
                  sll          a3, s1, s7
                  sltu         t3, s3, s10
                  sll          s6, s0, s7
                  auipc        s0, 62162
                  add          a2, tp, s7
                  slti         a7, s1, -12
                  lui          s5, 348886
                  andi         a7, a5, 904
                  nop
                  srai         s11, a3, 17
                  addi         zero, a1, 1966
                  sll          s2, t5, a1
                  slli         a4, t6, 28
                  sub          t1, s6, gp
                  auipc        a0, 33588
                  xori         s0, ra, -7
                  srl          s4, a4, a1
                  nop
                  sra          a0, a0, a3
                  srli         t5, a6, 9
                  sltiu        a5, t0, -923
                  addi         a4, s5, -310
                  and          s2, zero, s1
                  srai         a4, s4, 5
                  slt          gp, t3, zero
                  sltiu        t2, t5, 1898
                  ori          t4, tp, 755
                  slti         t0, a0, -1607
                  auipc        a5, 669392
                  auipc        gp, 874677
                  addi         a3, s9, 1287
                  srli         s5, a1, 7
                  add          a1, tp, t4
                  srai         t5, t1, 4
                  lui          t5, 347707
                  sub          a7, a1, a0
                  sub          s1, s11, a4
                  lui          a5, 216761
                  ori          a0, zero, -1583
                  sra          a7, t4, tp
                  slli         t0, t2, 25
                  xor          a4, a1, s2
                  nop
                  andi         t1, a7, 1400
                  sltiu        zero, s4, 506
                  slti         t2, t1, 781
                  or           a1, s4, s10
                  slli         t3, s6, 0
                  slli         s1, a2, 16
                  srli         t4, a6, 24
                  slli         t2, t5, 29
                  xori         s5, s3, 288
                  and          s0, a5, s6
                  ori          s10, s6, 1046
                  sltu         a2, s10, s8
                  srl          a6, s1, s2
                  ori          ra, s9, -1969
                  add          gp, s6, s6
                  srl          s0, s1, s7
                  sub          t2, t6, t1
                  slli         a6, a6, 30
                  auipc        t4, 1026620
                  sra          t1, a0, s2
                  slt          tp, a5, s8
                  auipc        a1, 38172
                  xori         sp, s7, 1332
                  slli         a0, sp, 0
                  sltu         t1, t0, a2
                  xori         s5, t1, 456
                  auipc        a4, 532382
                  and          gp, tp, a5
                  sltu         s9, sp, a2
                  srai         ra, a1, 29
                  srai         s2, t4, 4
                  sra          s5, t2, tp
                  addi         t2, s8, -1056
                  add          t3, t0, t5
                  srli         t2, t1, 0
                  addi         a7, s0, -173
                  or           a0, s0, s6
                  sra          s4, a1, a5
                  ori          s0, ra, 950
                  sll          t2, t2, t6
                  or           sp, s5, t5
                  xor          s10, s2, gp
                  addi         ra, a0, -357
                  lui          t0, 733681
                  xor          t1, ra, a4
                  xori         s9, a7, 474
                  andi         zero, t5, 369
                  xor          s1, s3, s8
                  sra          t2, a7, s8
                  sll          ra, gp, t2
                  slti         t4, a3, 569
                  srai         t3, a2, 7
                  auipc        a1, 963237
                  slti         t5, tp, -1225
                  xori         a2, ra, -601
                  add          s9, a6, t6
                  nop
                  nop
                  add          a6, a3, s5
                  add          ra, t2, s10
                  sltu         zero, t3, s3
                  andi         s2, a7, 2006
                  xori         a5, gp, 505
                  xori         s11, a6, -1280
                  xori         s10, s5, -1943
                  add          t1, zero, gp
                  slti         s5, a0, -102
                  lui          s2, 1047965
                  srai         a1, s9, 11
                  andi         t0, a6, 749
                  sra          s1, ra, gp
                  nop
                  srl          s6, s11, s0
                  ori          s0, s9, -1616
                  nop
                  srli         sp, s9, 1
                  slti         s6, tp, 252
                  slti         s4, s8, 344
                  nop
                  xori         a3, s0, -619
                  sra          s5, a1, t5
                  xori         s11, t5, 1550
                  sub          t6, t0, zero
                  nop
                  addi         a5, a2, 1945
                  auipc        s4, 82205
                  and          t0, a7, s2
                  addi         s9, gp, 260
                  lui          a7, 444040
                  sltiu        t1, a6, -1428
                  sub          zero, t5, a1
                  slti         a1, t2, -1061
                  sll          t6, s3, t6
                  srl          sp, a0, a3
                  srai         zero, tp, 26
                  ori          s6, s3, -1100
                  sll          t4, s10, s9
                  or           t3, sp, s5
                  sltiu        s5, a2, 243
                  and          t5, a4, t3
                  andi         a2, s6, 2012
                  xori         s0, a2, 946
                  sltiu        a6, sp, 1498
                  andi         t4, t3, -981
                  sll          s9, t3, t4
                  sub          t4, a4, t2
                  auipc        a2, 437902
                  auipc        s6, 138032
                  srai         a0, s3, 12
                  sltu         t0, a7, s0
                  xori         t4, t5, 352
                  srai         s6, t5, 20
                  srai         a3, a7, 3
                  slt          a0, s1, t2
                  sltu         a7, s6, a5
                  nop
                  sll          a1, s2, s2
                  xori         s10, s3, 414
                  andi         gp, s2, -852
                  ori          sp, a5, 821
                  auipc        a1, 583294
                  slti         tp, a1, 1988
                  and          s5, t6, t1
                  auipc        t2, 200585
                  andi         s4, s10, -1211
                  sltiu        zero, s7, 515
                  addi         a4, a6, 825
                  ori          a4, a0, -1614
                  srai         a2, s3, 2
                  lui          a3, 590642
                  slt          a2, s1, t0
                  sltu         ra, a7, gp
                  sltiu        a3, s6, -321
                  xor          a0, a3, s3
                  xor          tp, t6, t4
                  sll          t1, a0, a0
                  sltu         a5, a7, t0
                  ori          a7, a6, -380
                  andi         t4, zero, -664
                  ori          a2, sp, 1345
                  nop
                  lui          ra, 278389
                  ori          s4, gp, -615
                  and          ra, s0, a3
                  srai         s11, zero, 0
                  or           a5, a0, s4
                  sltu         s6, a2, a2
                  or           t5, s7, t5
                  ori          zero, a1, 1634
                  slli         a4, a1, 14
                  auipc        ra, 125074
                  srai         a6, t5, 12
                  srai         t5, t1, 25
                  slti         a4, s5, -728
                  srai         t5, t6, 20
                  slti         t4, s0, 12
                  sltu         s5, a0, t3
                  or           a4, t6, s0
                  ori          a4, t4, 1745
                  and          a7, a5, s6
                  add          s5, s3, s7
                  xori         t6, a0, 1952
                  slt          t3, s5, t5
                  nop
                  sra          t5, s6, s6
                  lui          sp, 31308
                  slt          s2, tp, s4
                  slti         s10, s8, 327
                  nop
                  sltiu        t3, a4, -1118
                  srai         s4, t5, 5
                  nop
                  sra          t5, s5, tp
                  xor          a6, zero, s9
                  slt          a7, zero, s3
                  or           s6, a0, tp
                  srai         s9, s4, 2
                  or           s10, a5, sp
                  lui          a6, 314806
                  lui          t2, 850952
                  sll          t0, a0, t6
                  sll          s11, t4, a6
                  srai         gp, a3, 10
                  sltu         s10, a0, s0
                  addi         s11, sp, 388
                  auipc        gp, 205227
                  xori         a1, a3, -49
                  andi         s2, a2, 717
                  slt          ra, ra, s9
                  andi         s10, sp, 69
                  addi         s10, t3, 158
                  srl          a7, t2, s11
                  srai         tp, a5, 23
                  lui          a1, 598222
                  xori         gp, a6, -1739
                  sll          a6, a3, a2
                  slt          t0, a1, tp
                  auipc        s9, 843894
                  xori         t2, a4, -1565
                  slti         a2, t1, 711
                  xori         ra, s8, 247
                  add          a3, a1, a6
                  slt          s0, s8, a7
                  xori         s9, s8, -1791
                  slt          a3, s6, t6
                  add          a5, tp, zero
                  or           t0, t5, a4
                  sltu         a6, s1, s9
                  slli         sp, s2, 24
                  sll          a2, t2, gp
                  xor          a2, s0, a6
                  slli         sp, sp, 19
                  nop
                  slt          t2, s5, t4
                  xori         a1, t3, -1475
                  xor          s1, sp, s1
                  add          s0, t6, t0
                  xor          s5, zero, a3
                  sltiu        t3, s10, -693
                  sub          t6, t1, s2
                  srai         s5, s5, 18
                  xor          t2, gp, a1
                  sltiu        t3, s4, 1134
                  xori         sp, s2, -70
                  slli         sp, a5, 23
                  or           s1, s7, t4
                  sub          t3, t4, s5
                  andi         tp, t1, 2044
                  addi         tp, a1, -1330
                  sra          sp, s10, s3
                  andi         a7, a6, 375
                  slti         t2, s0, -1644
                  sra          t5, t2, t5
                  andi         a6, s7, -1421
                  sll          s5, a3, a1
                  slti         s10, s5, 975
                  andi         a0, sp, 1173
                  sll          t2, t2, s6
                  nop
                  sltiu        t5, s4, 1550
                  auipc        sp, 251783
                  xori         s4, t4, 956
                  auipc        a4, 1039647
                  auipc        s11, 619918
                  slt          a6, a4, s5
                  sll          s4, t4, s5
                  srli         s6, a3, 30
                  addi         a2, t6, -769
                  sltu         t6, t5, s7
                  nop
                  srl          s6, s5, t5
                  sltiu        t3, a4, -451
                  xori         a0, a7, -1146
                  add          s4, ra, s8
                  lui          t5, 529457
                  slli         gp, s6, 11
                  ori          s5, a2, -1009
                  sltu         t0, a5, sp
                  and          tp, ra, t0
                  nop
                  sltiu        s5, a7, -773
                  sltu         s1, t5, s1
                  nop
                  slti         a4, zero, -1815
                  or           t5, s5, s3
                  sltiu        t3, t2, -736
                  or           zero, t4, s3
                  lui          t2, 172868
                  nop
                  ori          a2, s8, -865
                  sra          a5, s7, a4
                  addi         s5, s6, -1832
                  sll          a7, a1, s2
                  slti         a7, t5, -1019
                  ori          t1, s3, -1638
                  sub          t2, s7, tp
                  xori         s4, a5, 1188
                  slt          a6, sp, s8
                  slti         s10, t6, -1759
                  srai         tp, s7, 22
                  slli         t6, s2, 20
                  nop
                  auipc        s1, 534287
                  nop
                  sub          a0, s11, a1
                  sub          a7, s2, tp
                  xor          a6, s10, s3
                  xor          s2, ra, s11
                  srli         a0, s3, 19
                  nop
                  slli         sp, a0, 31
                  add          zero, t5, s9
                  sltu         t4, s7, s0
                  sll          s1, a2, s5
                  sll          a3, t4, a0
                  slti         a7, s5, -266
                  sub          a7, t4, s7
                  sra          a0, zero, sp
                  xori         a2, a0, 1753
                  slt          s1, gp, a3
                  slt          zero, s11, s2
                  andi         s0, s0, 458
                  sltu         s6, gp, a5
                  slt          t4, s3, zero
                  srai         t4, a7, 4
                  xori         t0, s2, 2017
                  xori         a6, s7, 939
                  nop
                  slt          tp, t3, t1
                  srl          a2, s8, s7
                  slt          ra, a0, s7
                  slt          a6, t6, sp
                  srli         a7, a4, 13
                  slt          s0, ra, s4
                  add          s11, t5, zero
                  and          a0, s1, s6
                  ori          t6, a0, -1424
                  srl          t4, tp, a3
                  srl          zero, a0, s2
                  add          a0, t4, s1
                  slli         a2, s4, 7
                  or           t5, t4, t2
                  slti         s10, s5, -1956
                  sra          t5, s2, s6
                  slti         t4, s10, -1398
                  ori          s9, a2, -392
                  or           a0, t5, a6
                  slli         s0, sp, 5
                  srai         s6, t1, 6
                  srai         t0, a3, 15
                  and          a7, a1, a0
                  nop
                  slti         s10, s8, -1921
                  add          tp, t2, s8
                  ori          t4, a5, -1818
                  sra          t5, s10, s0
                  sltiu        t4, zero, -1681
                  nop
                  slli         t4, s4, 25
                  slt          s10, s1, s11
                  and          t4, t0, gp
                  sltiu        s1, s8, 283
                  or           a6, s4, a6
                  or           a2, t2, s3
                  andi         ra, s10, -1089
                  add          a3, s9, t4
                  xori         a7, a4, 528
                  sltiu        a2, t5, -934
                  srl          ra, t0, a0
                  nop
                  sltu         s5, a1, a7
                  sub          t6, t4, s9
                  sll          s4, a5, s1
                  slli         t6, a2, 13
                  ori          a0, a6, -388
                  sltu         gp, a4, t2
                  sra          s0, a4, a6
                  addi         tp, a7, 599
                  andi         s5, t5, -893
                  lui          s1, 205209
                  sltiu        a2, s8, 615
                  and          zero, sp, ra
                  sll          t3, tp, t1
                  nop
                  sub          a6, zero, s9
                  srl          s6, a5, t4
                  lui          ra, 382431
                  xori         s0, a0, 802
                  and          ra, a1, t0
                  nop
                  sra          s0, a3, a0
                  sra          t0, a0, s3
                  or           a6, s2, t4
                  xor          s1, a4, s4
                  xor          s10, a6, s0
                  auipc        gp, 24864
                  slt          s6, s8, t5
                  addi         t3, a4, 1349
                  srl          t2, s7, s11
                  and          s6, s0, a0
                  slti         a0, gp, 1967
                  or           a0, s10, a1
                  and          tp, s6, s4
                  xor          a1, s0, a6
                  sltiu        a7, s8, 1047
                  sltiu        s1, s4, -1777
                  xor          tp, gp, t5
                  srl          sp, t3, s4
                  auipc        zero, 584456
                  sltiu        t0, a5, -590
                  xor          zero, a4, s5
                  add          a6, s3, tp
                  srli         s10, s0, 2
                  srl          a6, t6, a2
                  and          a7, s5, s8
                  ori          t0, a7, -1548
                  sll          s9, s7, a7
                  and          s5, t0, s2
                  lui          a1, 906139
                  slti         s1, s11, -756
                  addi         a7, zero, -462
                  or           a4, ra, a0
                  srai         ra, s3, 22
                  lui          s11, 269439
                  sltu         t0, tp, a4
                  srl          s4, a2, s0
                  xori         zero, ra, 164
                  sra          sp, t3, a6
                  or           a6, a7, s1
                  or           a1, s8, a5
                  nop
                  sll          t1, s6, t2
                  nop
                  slt          t1, a0, t1
                  lui          s9, 854872
                  addi         s9, t1, 1934
                  slt          s9, a3, sp
                  xori         tp, a3, 1042
                  or           a0, t6, a6
                  sra          ra, s10, zero
                  slli         s5, t5, 29
                  srl          t3, s10, a2
                  sltiu        s1, s4, 1185
                  addi         ra, a5, -551
                  sll          a6, a1, s1
                  sra          a7, ra, sp
                  sll          a6, t5, s11
                  srl          ra, s0, tp
                  and          a6, s0, s8
                  srl          s6, s2, gp
                  sltu         s2, s3, t1
                  ori          t1, a4, 1401
                  andi         s11, t2, 768
                  sltiu        a5, ra, -1760
                  sll          ra, s2, t2
                  slti         a4, t4, -1978
                  slli         s0, zero, 15
                  sltiu        t5, s11, 846
                  sltiu        a5, a1, 1913
                  slti         a5, a1, 1253
                  auipc        s6, 812885
                  sra          s1, ra, s0
                  sub          t1, t3, a7
                  andi         t0, a2, 772
                  slti         s4, s10, -1796
                  slti         s2, a3, 1036
                  sub          t5, tp, s0
                  slti         t5, s3, 7
                  nop
                  sra          s9, a3, s3
                  nop
                  xor          s9, a3, s1
                  sub          ra, s4, s8
                  lui          ra, 217262
                  sra          a5, s10, ra
                  srli         s6, zero, 11
                  auipc        a3, 867737
                  xor          a2, s1, sp
                  sltiu        s6, tp, 320
                  sub          s1, zero, a0
                  xor          s6, t4, a0
                  srl          s6, a4, gp
                  srli         sp, a1, 7
                  sltu         a2, s10, s2
                  and          s2, t3, s10
                  addi         s4, s2, -412
                  sub          zero, a6, ra
                  slli         a4, s3, 6
                  slt          sp, a2, s5
                  slti         t0, ra, 1310
                  andi         a7, s11, -146
                  nop
                  sll          t2, gp, a1
                  nop
                  srli         t6, s8, 4
                  slli         t6, t0, 3
                  xori         t2, a6, -906
                  sltiu        a0, s2, 764
                  addi         a1, a7, -1529
                  srl          t6, s1, a0
                  sll          gp, t4, a6
                  slti         gp, t2, 516
                  srli         s4, t1, 5
                  nop
                  sra          sp, a4, t3
                  srai         t0, a2, 25
                  addi         s2, t2, -2013
                  slti         a2, a4, 1245
                  srli         zero, s8, 31
                  xor          a3, tp, a6
                  lui          a1, 830505
                  sll          a3, ra, t6
                  or           t0, a2, t4
                  ori          t2, a2, -411
                  sub          s0, s9, s4
                  sll          t0, t3, a1
                  srl          s9, s0, a5
                  auipc        s5, 417285
                  xor          a1, a1, t1
                  auipc        a0, 295108
                  srli         t4, t1, 23
                  slti         a5, zero, 1198
                  srli         t3, a2, 2
                  sltiu        sp, s4, -1894
                  sltiu        s5, s9, -1307
                  sltu         s10, s6, t0
                  srai         a5, a7, 16
                  add          t0, gp, a6
                  addi         t4, t3, -37
                  sub          t6, t0, t3
                  add          a5, s5, sp
                  slt          a1, zero, tp
                  or           tp, a4, s5
                  srli         zero, sp, 0
                  srli         a1, s7, 25
                  sltiu        t0, s11, 1862
                  srli         t4, t6, 20
                  slt          t3, s9, t2
                  slli         a6, s8, 20
                  sltu         t3, a6, t5
                  sra          s4, a0, sp
                  xor          s1, s3, sp
                  or           ra, tp, s3
                  sll          s2, a6, s0
                  srl          s0, a1, s4
                  xor          s6, s10, tp
                  add          tp, t3, a3
                  xor          t3, a6, s2
                  andi         s0, a1, 698
                  andi         a4, a0, -990
                  xor          t6, ra, t5
                  xor          ra, gp, a4
                  and          t5, ra, s3
                  xor          s2, s2, a6
                  slt          t2, s8, a0
                  lui          s9, 484173
                  nop
                  xor          sp, s8, s11
                  srai         s11, t0, 22
                  sll          t2, gp, t6
                  sltiu        t0, a0, 270
                  slti         a0, a0, 1574
                  sltu         sp, s0, a0
                  and          a4, gp, a2
                  slt          t0, t5, a0
                  sltu         a6, s8, t6
                  srli         t5, t1, 3
                  ori          s4, t4, -877
                  srl          s5, a6, a3
                  sltiu        gp, s7, 1737
                  sub          s5, a3, s4
                  srli         t5, gp, 1
                  sub          a6, s11, a1
                  srli         a0, a6, 24
                  andi         s11, s2, -1606
                  srli         t1, a3, 10
                  slt          t5, a6, t4
                  slt          s2, a4, t6
                  addi         s10, s11, 601
                  sll          t5, tp, tp
                  sll          a3, s9, a7
                  sub          gp, t5, a7
                  slli         t1, s8, 2
                  slli         a3, a1, 20
                  slt          a6, t1, zero
                  sra          a3, a5, t0
                  ori          ra, a6, 1386
                  ori          t1, s10, -1217
                  add          t0, t1, a7
                  srai         s10, s4, 27
                  sub          s6, a6, s6
                  ori          a3, s11, 1901
                  xori         a0, t4, 1648
                  sltiu        a1, a7, -1768
                  sub          a0, t5, zero
                  slt          t0, s11, t3
                  or           t1, t4, s5
                  slti         gp, s5, 1143
                  slti         s10, a3, 1022
                  addi         gp, a2, -1503
                  slti         a4, t6, -406
                  sltiu        t3, s8, -452
                  andi         a7, s1, -1213
                  slti         a5, s2, 815
                  lui          zero, 512490
                  slti         a4, t0, 84
                  sub          s0, t4, s10
                  sltu         sp, a3, s1
                  xori         a6, t0, 1752
                  slt          ra, a3, t6
                  srli         t5, s1, 11
                  sll          tp, s7, s0
                  slt          t5, t3, s2
                  sltu         s2, tp, t3
                  lui          gp, 99476
                  slt          a2, t6, zero
                  srli         s2, gp, 14
                  sltu         ra, s7, s6
                  andi         s2, a7, 1841
                  andi         a1, tp, -1886
                  ori          t5, t3, -449
                  sra          t4, a3, s9
                  srl          t3, s10, s5
                  add          s9, t4, t2
                  slti         a7, ra, 705
                  sll          zero, a4, a1
                  ori          t1, t3, -1457
                  srl          s4, s7, a0
                  or           s6, t6, s0
                  auipc        t6, 816467
                  or           a3, t5, s8
                  xor          a6, s4, s4
                  slt          a7, a4, t6
                  sll          s9, s2, sp
                  addi         t3, s6, -600
                  andi         ra, a3, 176
                  ori          a4, gp, -289
                  lui          a4, 933491
                  lui          gp, 55794
                  or           s5, tp, gp
                  slli         t0, t0, 8
                  xori         gp, s5, -614
                  add          a3, a5, zero
                  ori          a0, a2, 914
                  xor          a4, a1, a1
                  or           tp, zero, s1
                  sub          sp, s0, s2
                  xor          s5, s3, t6
                  srli         a3, s0, 10
                  srli         a6, t3, 5
                  srli         t3, s7, 19
                  sltu         a5, tp, s2
                  auipc        tp, 429511
                  and          s6, a3, s1
                  add          zero, s10, s0
                  nop
                  sub          a6, t1, a3
                  add          t2, s8, s0
                  add          t3, s2, s5
                  sltu         s11, s7, a1
                  or           t6, t6, s2
                  sll          a6, s7, sp
                  addi         a1, s8, -1299
                  auipc        s2, 30252
                  xor          zero, a6, zero
                  xor          s10, sp, t4
                  slti         a7, ra, -536
                  slti         sp, s9, 1614
                  ori          t0, gp, -1882
                  sltu         s11, s3, t2
                  slt          s0, s4, sp
                  sltu         ra, a1, s10
                  and          sp, s10, sp
                  sll          a7, a6, a2
                  xori         a7, s0, 31
                  sra          t6, t3, a4
                  slli         sp, zero, 21
                  or           s2, s5, s8
                  xori         t1, s7, 1920
                  add          ra, a2, t4
                  lui          a6, 322351
                  slli         a7, ra, 14
                  sll          s6, t0, t4
                  srli         a0, s2, 0
                  sra          s1, s6, t6
                  addi         ra, a0, -497
                  ori          s11, s10, -1259
                  add          sp, a2, t6
                  slli         t5, s5, 2
                  srl          s5, ra, t5
                  srl          s11, t5, a1
                  ori          t3, a6, -1030
                  auipc        a6, 846671
                  and          sp, zero, s6
                  ori          a4, t5, 1754
                  sll          a3, a0, a4
                  sra          a3, a3, s0
                  or           s1, a3, a7
                  slt          gp, s7, s8
                  sll          s2, t0, s11
                  sra          s4, t5, a1
                  auipc        s2, 413536
                  xori         s6, t5, 1618
                  or           ra, s11, t3
                  slti         s4, t0, -682
                  srl          t6, s2, s2
                  add          s4, s2, gp
                  nop
                  lui          s4, 633665
                  or           t4, s8, t4
                  nop
                  lui          s2, 195442
                  xori         t2, zero, -1989
                  andi         s0, a3, -1666
                  sltiu        gp, tp, 204
                  add          s0, a1, s4
                  add          s9, s8, s8
                  slti         a4, s5, 530
                  ori          a2, sp, -1073
                  ori          a7, s9, 994
                  slli         a5, t5, 16
                  sra          tp, s0, a0
                  ori          gp, s0, 786
                  xor          t2, a1, s4
                  lui          a4, 230168
                  lui          t5, 267391
                  auipc        a1, 332350
                  srli         ra, a0, 31
                  srli         a2, s7, 18
                  addi         t1, zero, -1157
                  lui          s11, 268171
                  sltu         t4, a1, a7
                  lui          s6, 37022
                  sll          t2, zero, sp
                  ori          t3, s1, 414
                  or           a5, s8, s2
                  sub          s1, s2, a2
                  sltiu        t2, ra, 1800
                  srli         t0, ra, 14
                  lui          a3, 35079
                  slli         t4, a5, 7
                  andi         t6, t3, 1785
                  sltu         a5, sp, s0
                  xori         s0, s7, -460
                  xori         gp, s2, -1800
                  sll          s4, gp, t0
                  add          ra, gp, s10
                  xori         gp, s2, 1093
                  slti         a6, s5, -898
                  sll          s4, a7, a0
                  sub          a4, s7, a5
                  sltu         s2, zero, zero
                  lui          a0, 420213
                  sltu         a2, a6, s7
                  sll          a4, a2, a3
                  xor          ra, ra, s9
                  addi         zero, a1, 1001
                  srl          t4, t5, t4
                  sltu         s2, s2, t1
                  sub          a6, s7, t5
                  sll          zero, a6, a5
                  add          a6, s6, t4
                  sra          sp, s4, t6
                  add          s0, s1, s7
                  lui          s4, 778544
                  sll          t3, a0, s11
                  srli         a1, s4, 15
                  ori          s2, a1, 182
                  xor          a1, s4, a1
                  ori          s6, s7, -1637
                  slt          a5, a4, a5
                  srl          s4, tp, s9
                  and          gp, sp, a0
                  auipc        a0, 898571
                  xori         t4, a2, -103
                  sub          s2, s6, s3
                  xor          s0, a2, s1
                  sltiu        zero, t6, 294
                  sltu         a2, sp, s4
                  xori         s1, t3, -6
                  sll          s5, s6, sp
                  slt          a1, a3, zero
                  or           a7, t4, a3
                  srli         a0, a2, 4
                  addi         s5, a3, -1897
                  addi         s5, sp, -531
                  sll          t2, s7, s2
                  xori         a1, s1, -1749
                  add          a5, t4, sp
                  add          t0, s7, t2
                  srl          a0, s1, t2
                  lui          a7, 348486
                  slt          s1, s11, t3
                  lui          s11, 478582
                  srai         s11, gp, 23
                  ori          s0, t5, -2002
                  srli         a1, t3, 14
                  sll          a7, s5, a0
                  add          a6, a4, s2
                  sltiu        s11, a7, -931
                  slti         tp, t1, 140
                  sub          s4, a6, a6
                  xor          gp, tp, a2
                  ori          a3, t3, -341
                  nop
                  sll          a5, s8, s1
                  sltu         a5, s9, a5
                  nop
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           a5, 0xe06c158d
                  li           s6, 0x80000000
                  li           a0, 0x80000000
                  li           a1, 0x80000000
                  li           s4, 0x0
                  li           t1, 0x0
                  li           a4, 0x80000000
                  li           s11, 0x80000000
                  li           s5, 0x0
                  addi         s11, a5, -522
                  addi         a4, s6, 1345
                  addi         a4, a4, -1770
                  addi         a6, a4, 932
                  auipc        s4, 853721
                  add          s6, a1, s5
                  add          t1, t1, a1
                  nop
                  lui          a5, 507309
                  nop
                  sub          a5, a5, a4
                  addi         a4, s11, 1254
                  nop
                  sub          a5, a6, a6
                  addi         a6, s6, 445 #end riscv_int_numeric_corner_stream_16
                  sltu         tp, s2, t5
                  lui          t2, 418482
                  nop
                  slli         s5, s9, 4
                  sltiu        t4, a4, 28
                  sra          t0, s7, t2
                  xor          t0, s2, gp
                  sltiu        s4, s9, -1570
                  xor          s6, a5, ra
                  ori          t3, t5, 109
                  lui          a0, 452362
                  srai         s2, s6, 21
                  xor          a3, t5, t4
                  lui          a6, 268469
                  lui          a2, 74540
                  ori          a5, s8, 259
                  srai         a0, s3, 6
                  sltu         a3, ra, a1
                  slti         a2, t2, -378
                  xor          a6, t5, tp
                  sra          t1, gp, t0
                  xor          sp, s1, a5
                  srai         s4, sp, 13
                  ori          s10, a4, 1502
                  addi         s0, s10, -1132
                  ori          t0, a5, 865
                  and          t0, s8, sp
                  xori         s4, s2, -710
                  ori          s6, s10, 2018
                  or           t0, sp, a2
                  add          s6, zero, s9
                  slt          s0, s0, s10
                  slt          s2, a7, s5
                  xori         s5, s7, 1452
                  slli         s10, s11, 27
                  slli         a0, a3, 2
                  auipc        s0, 270118
                  xor          t2, t0, t0
                  sll          s4, a6, t3
                  auipc        s6, 261202
                  lui          t4, 681548
                  slt          a6, a7, a4
                  sra          s9, a5, gp
                  auipc        s11, 948632
                  nop
                  and          s2, a6, gp
                  ori          zero, a1, 923
                  and          s0, t3, s3
                  slt          zero, s11, a6
                  sub          a2, t3, ra
                  sltiu        a4, a5, 824
                  addi         a1, s11, -1714
                  slli         t5, s4, 16
                  lui          t3, 587032
                  slti         s9, s9, -635
                  sltu         s4, ra, ra
                  sra          a3, ra, s9
                  sltiu        t4, sp, 521
                  srl          a6, s3, t3
                  slti         s9, a6, 1724
                  nop
                  xori         s2, a2, -1825
                  lui          a1, 37670
                  sra          tp, zero, s8
                  srli         s0, s9, 18
                  srli         gp, s7, 20
                  xori         s11, a4, -812
                  sltu         a3, t2, ra
                  andi         tp, s2, -1450
                  or           a5, t4, s10
                  lui          s5, 451567
                  xori         s4, t0, 1867
                  sub          a3, t1, t2
                  xor          t1, a6, t2
                  slti         a5, sp, 1533
                  srai         s1, sp, 2
                  sra          t5, a4, s10
                  slti         s4, t1, -1044
                  xori         t6, s9, 495
                  slt          a3, s4, s0
                  sll          ra, t4, s7
                  xori         s6, a2, -408
                  srai         a3, s3, 8
                  slti         s1, a4, -62
                  add          a3, t6, s3
                  sub          s5, s1, t5
                  sra          ra, s8, gp
                  auipc        s1, 863644
                  lui          zero, 341494
                  srli         a2, s7, 0
                  auipc        a1, 491573
                  add          s10, s8, a1
                  sra          ra, t2, a5
                  nop
                  and          s6, ra, a3
                  auipc        t3, 113941
                  srai         t4, s10, 11
                  slti         s1, a5, 67
                  xori         sp, s5, -156
                  sub          t3, zero, s11
                  andi         a2, t1, 1952
                  xor          a3, s3, s8
                  or           s11, s11, s10
                  or           zero, ra, s11
                  srl          ra, s10, a5
                  and          a2, s7, a6
                  and          t3, t6, zero
                  sra          s6, s2, a3
                  sub          t3, s1, t3
                  andi         a2, tp, 1780
                  sub          a1, t3, t0
                  andi         a7, s9, -469
                  slti         a6, t5, -482
                  auipc        zero, 724471
                  sra          s10, a3, gp
                  sll          a5, a5, s0
                  sub          s4, a5, t5
                  sll          t1, s9, s5
                  or           a6, a3, gp
                  andi         s2, s4, -878
                  sltu         t2, t4, a0
                  addi         t6, a5, 327
                  sll          sp, a0, s1
                  srl          s9, s5, s3
                  slli         a2, tp, 14
                  slli         tp, zero, 26
                  ori          a2, a0, -24
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s1, 0xc064bb1a
                  li           a2, 0xffffffff
                  li           t0, 0x0
                  li           t3, 0x1382626f
                  li           s2, 0x80000000
                  li           a4, 0x345fa863
                  li           t4, 0x80000000
                  li           s9, 0x80000000
                  li           a3, 0x80000000
                  add          t0, a4, a4
                  auipc        a4, 611258
                  add          t0, a3, a2
                  add          a4, s1, t4
                  add          a4, s2, s10
                  auipc        t4, 698375
                  lui          s1, 60339
                  addi         s1, a2, -379
                  add          t4, s1, a3
                  addi         s1, t3, -1686
                  lui          a4, 1044762
                  nop
                  add          s1, a3, a2
                  add          a2, s2, a3
                  nop
                  auipc        s1, 631393
                  sub          s9, t4, s9
                  sub          t3, s10, t3
                  lui          t0, 90703
                  nop
                  add          s9, t4, s10
                  add          t4, a3, s10
                  addi         a2, a3, 775
                  sub          s1, t3, s1
                  lui          s10, 35029 #end riscv_int_numeric_corner_stream_17
                  addi         a6, a7, 1499
                  xor          s0, t2, s9
                  and          tp, t2, gp
                  andi         zero, a2, 619
                  and          s10, t6, s1
                  srl          s11, s3, t0
                  nop
                  andi         a5, a0, -1354
                  xori         a5, s2, -1883
                  srl          sp, a7, s8
                  slli         a5, s11, 26
                  andi         a2, s9, 565
                  xori         t6, s8, 992
                  sll          a0, sp, s5
                  srai         s5, a5, 28
                  or           ra, a0, s3
                  srai         s6, t1, 9
                  xor          t0, t2, zero
                  auipc        zero, 954372
                  slt          s10, t3, s1
                  andi         t1, tp, 208
                  sub          a5, a7, t3
                  lui          t1, 830726
                  sub          s11, s6, s2
                  addi         s2, t3, 1235
                  xori         gp, ra, 997
                  slt          t6, t5, s3
                  nop
                  and          sp, t2, s3
                  addi         t2, s4, 1938
                  slt          t6, s2, a2
                  slt          ra, t2, t4
                  srai         sp, s11, 24
                  nop
                  ori          s6, s10, 435
                  auipc        a7, 1015289
                  nop
                  add          t0, s1, a0
                  xori         a6, tp, 1286
                  lui          s2, 49322
                  sltiu        s11, t1, -406
                  slli         a5, a6, 5
                  add          s6, s5, t0
                  or           tp, ra, a3
                  srl          s6, s2, t2
                  slt          a1, a2, a7
                  addi         sp, s9, -188
                  lui          a3, 40989
                  slli         s5, s2, 20
                  ori          s10, t2, 1572
                  srl          s9, s1, t5
                  addi         s0, tp, -1869
                  srai         s1, a4, 7
                  or           a7, a7, t2
                  slti         s0, a0, 1749
                  slti         sp, t2, 515
                  slti         a2, s4, -2031
                  sra          t4, t6, a7
                  or           a3, t1, s6
                  add          t4, t5, s11
                  nop
                  srai         ra, s1, 3
                  nop
                  and          s6, a5, s1
                  xori         s4, a7, -2015
                  addi         s9, s11, -1527
                  or           t2, s5, s8
                  auipc        a6, 487138
                  lui          a3, 766835
                  srli         a3, t0, 2
                  srli         s11, t3, 11
                  srai         s10, ra, 20
                  sll          s2, s11, s10
                  srai         a2, a7, 7
                  srli         s9, t3, 5
                  sra          t5, s6, t5
                  srli         t0, s6, 14
                  slti         a5, s7, -959
                  xor          t1, t2, s4
                  sll          a0, s0, ra
                  sra          a2, a2, t6
                  addi         t2, s0, -462
                  slli         t4, tp, 2
                  sltu         s10, t1, s4
                  slti         a6, zero, 462
                  sll          t0, t5, s4
                  xori         s10, t5, -1074
                  slti         t1, tp, 798
                  srai         s4, zero, 12
                  or           s5, t1, s3
                  srl          t6, s1, a5
                  sltiu        a6, s8, 765
                  srl          s1, gp, t3
                  auipc        a0, 136739
                  addi         s6, s7, -1141
                  nop
                  slti         gp, s11, -133
                  or           s10, t5, a6
                  slli         ra, a2, 17
                  lui          s11, 1014043
                  sll          s2, gp, s0
                  xori         s4, s2, -171
                  sub          a7, a2, tp
                  srli         a0, s10, 1
                  slti         zero, t1, -1383
                  slli         s0, s2, 26
                  slti         a7, a2, 101
                  nop
                  sub          a4, t0, s6
                  srl          a4, ra, t1
                  add          t5, a1, a6
                  addi         s2, s1, -1708
                  nop
                  xori         s0, s2, 1370
                  andi         s6, t3, 2042
                  srl          gp, s9, t3
                  xori         s6, s6, -1501
                  sltiu        a7, a4, 821
                  or           tp, t3, t1
                  or           s10, a4, t2
                  sub          sp, s3, t3
                  ori          sp, s0, -860
                  sltu         a2, s2, a3
                  and          s0, t4, s10
                  srai         t4, a1, 25
                  and          t3, a0, s4
                  slt          gp, a2, s8
                  slt          a2, s5, t3
                  slt          t1, a4, t6
                  srli         a6, a0, 17
                  sub          s5, s7, s6
                  sll          s10, a7, t5
                  nop
                  and          t3, s9, s5
                  ori          zero, a4, -210
                  and          a5, s2, s6
                  and          t3, a3, a6
                  sltiu        t6, t6, -1349
                  slli         t5, s11, 26
                  slti         t1, a0, -690
                  sub          gp, t1, s11
                  slt          t2, a3, sp
                  slli         ra, tp, 18
                  sll          s0, a4, ra
                  and          a4, s11, s5
                  and          a7, a1, s2
                  ori          t0, t2, -271
                  sub          a5, s5, s6
                  xor          t6, a5, a4
                  slti         s10, s6, -41
                  sra          zero, a7, s0
                  srai         tp, sp, 15
                  nop
                  srl          s6, s9, s0
                  and          t5, s5, s11
                  srl          a0, a5, s7
                  xor          t2, s3, t1
                  xor          s4, s6, t0
                  slli         s5, a2, 1
                  srl          s10, a6, s2
                  sra          a2, s2, s4
                  sltiu        tp, s0, 960
                  lui          t6, 850706
                  xori         a5, t6, -1302
                  xor          a4, a5, gp
                  xori         s6, a6, 1095
                  slli         t1, s7, 6
                  slti         t4, s5, 166
                  xori         a4, s4, 466
                  and          zero, t1, t5
                  slt          t2, tp, s11
                  sll          t5, t3, s1
                  srai         a5, s11, 16
                  add          t1, s7, s4
                  xor          a4, t6, a4
                  ori          s6, a2, -935
                  sltiu        s1, tp, 144
                  ori          s11, s6, 655
                  lui          a4, 725908
                  xor          a2, t6, s6
                  addi         gp, gp, -646
                  sra          s5, sp, sp
                  sltu         a4, s5, s1
                  addi         t0, tp, 1172
                  or           t2, s2, t0
                  andi         t0, a3, -542
                  addi         a6, t2, 686
                  slti         s11, t3, -339
                  srl          tp, tp, s10
                  sltiu        zero, ra, -20
                  lui          a7, 32794
                  lui          t2, 194990
                  lui          tp, 831487
                  slti         t6, t3, 347
                  sra          t4, s4, s10
                  ori          s10, a5, 1271
                  sra          a3, s10, s3
                  slt          tp, t4, t6
                  slti         a0, s7, -1126
                  srl          ra, s1, t2
                  srai         a2, s2, 18
                  srai         t4, ra, 13
                  sra          a4, a7, t6
                  lui          a5, 543214
                  auipc        a2, 185468
                  srl          t3, t2, s4
                  xori         s11, s4, -1718
                  and          t3, s8, a2
                  or           a7, s7, t4
                  lui          t2, 175928
                  or           a6, a7, a7
                  sra          zero, t3, s2
                  xori         t3, t5, -281
                  srl          s6, s0, s10
                  add          gp, a5, a0
                  sll          sp, s3, s11
                  auipc        t6, 193229
                  ori          a2, s11, 1333
                  sra          a0, s7, s3
                  srai         a7, a3, 2
                  sra          a7, t3, s3
                  ori          t5, s6, -1141
                  andi         t3, a5, 733
                  auipc        s2, 29487
                  andi         t1, s8, 320
                  sra          t2, s2, a1
                  xor          t6, gp, t5
                  slti         s0, sp, 1498
                  xori         tp, s1, -1601
                  sub          s9, a6, t2
                  andi         ra, t1, -1309
                  or           s9, zero, s7
                  addi         s4, s9, -124
                  auipc        tp, 154941
                  sltu         a0, s5, tp
                  addi         s0, t0, -1817
                  sra          s6, t5, s6
                  slt          s6, t0, tp
                  slt          a7, zero, s10
                  sltu         a1, s1, s2
                  xori         s5, a2, 1218
                  auipc        t5, 503422
                  srai         a2, s1, 17
                  slt          t6, t0, t6
                  sltu         t1, s7, a0
                  and          a0, s8, s6
                  slt          t0, t6, t4
                  nop
                  sltu         zero, s2, gp
                  addi         s9, s3, 1984
                  slt          t0, a7, s11
                  srl          s9, t3, s1
                  lui          ra, 655683
                  srli         t3, a6, 10
                  slli         a2, s4, 12
                  and          gp, t1, a2
                  nop
                  sltu         a5, s8, t6
                  slt          a1, s4, a2
                  xori         s9, t4, 105
                  ori          zero, s9, -1137
                  nop
                  sub          tp, a5, s7
                  sltiu        sp, s8, 227
                  or           tp, s0, s7
                  slli         t2, gp, 15
                  sll          s5, s9, s7
                  srli         zero, tp, 8
                  auipc        s11, 42971
                  addi         a3, a2, -945
                  addi         a6, s6, -337
                  andi         s1, s1, -1236
                  sub          ra, s4, t0
                  or           s4, s2, a2
                  slt          t4, t1, s4
                  xori         tp, s11, 1971
                  xori         s0, a5, -1641
                  slti         a3, s5, -930
                  sltiu        t2, s8, 378
                  xor          t1, s5, s10
                  lui          t1, 659802
                  addi         t0, s11, -1300
                  sll          s4, s10, t5
                  slt          s11, a5, s1
                  slli         ra, a0, 23
                  lui          ra, 529295
                  slt          a6, t5, a1
                  sub          s6, t1, s3
                  lui          a6, 499433
                  srai         s10, s9, 14
                  slti         a4, a3, 1158
                  sll          a2, a0, s3
                  sra          a0, s11, s3
                  and          ra, ra, a7
                  xori         a6, s11, 1848
                  srli         t5, t3, 0
                  sltiu        a6, t3, -1520
                  sra          s9, s7, a1
                  add          s5, s8, gp
                  sll          sp, t1, s3
                  nop
                  or           s9, s4, s3
                  srai         s9, a2, 14
                  sub          a2, s2, a4
                  xor          a6, ra, a1
                  lui          gp, 810518
                  nop
                  andi         t3, t2, -805
                  andi         gp, s6, 889
                  srl          s5, s10, s2
                  srai         ra, a6, 12
                  or           a1, zero, s0
                  ori          t3, s7, 267
                  auipc        s0, 926514
                  or           s10, zero, s0
                  srli         s0, tp, 12
                  sll          s1, t2, s7
                  li           t6, 0xefaf5e0b #start riscv_int_numeric_corner_stream_3
                  li           a5, 0xf24ed826
                  li           t1, 0xadf8bd03
                  li           s2, 0x0
                  li           t3, 0xf70484b2
                  li           a7, 0xffffffff
                  li           s4, 0x493b3770
                  li           t5, 0xffffffff
                  li           a3, 0xffffffff
                  li           s10, 0x80000000
                  nop
                  addi         s2, a3, -1251
                  auipc        a3, 273820
                  add          s2, s10, a3
                  add          s2, a7, t3
                  lui          t6, 563100
                  sub          t6, t6, a3
                  add          a5, t1, a3
                  auipc        a7, 565306
                  addi         s2, t5, -237
                  lui          a3, 71552
                  lui          a7, 442970
                  auipc        t3, 438315
                  add          s4, s10, t1
                  addi         s2, t5, 1326 #end riscv_int_numeric_corner_stream_3
                  auipc        t4, 208848
                  srli         zero, a2, 31
                  slt          a6, a4, a5
                  auipc        sp, 1025830
                  xori         t0, s11, 381
                  andi         s11, s7, 28
                  srai         a7, a5, 11
                  sll          s10, s3, zero
                  srl          ra, a7, a0
                  srai         t6, s4, 29
                  slti         t6, sp, 450
                  andi         a0, tp, 233
                  srai         s2, s3, 8
                  lui          s6, 855297
                  slt          a3, a5, t1
                  ori          t5, tp, -578
                  nop
                  sltu         s4, s4, s0
                  sub          gp, s0, s5
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           ra, 0x80000000
                  li           t3, 0xffffffff
                  li           t5, 0xffffffff
                  li           a5, 0x0
                  li           s9, 0x80000000
                  li           s1, 0xffffffff
                  li           gp, 0xffffffff
                  li           t1, 0xd961d17a
                  li           s10, 0x80000000
                  auipc        t1, 1038381
                  nop
                  nop
                  sub          gp, t3, ra
                  lui          s9, 306593
                  auipc        gp, 97175
                  addi         t1, ra, -1373
                  nop
                  addi         t1, s10, 186
                  add          t1, t5, ra
                  add          tp, tp, ra
                  sub          s10, a5, gp
                  sub          s1, a5, t1
                  lui          s10, 266290
                  add          t3, a5, t3
                  add          gp, t3, a5
                  lui          ra, 684242
                  addi         a5, tp, 1992
                  add          s9, t1, s1
                  lui          t1, 916840
                  sub          a5, t5, t1
                  add          s10, t3, s1
                  sub          ra, s1, s10
                  auipc        gp, 59190
                  auipc        s10, 877022
                  nop
                  auipc        s1, 900077
                  auipc        ra, 675604 #end riscv_int_numeric_corner_stream_18
                  srli         s9, a3, 31
                  auipc        a6, 1029869
                  andi         tp, s8, 1706
                  andi         a4, a7, -1965
                  sll          s6, s8, s3
                  add          tp, s10, s1
                  add          a7, a2, a4
                  sltu         s10, a5, sp
                  sltu         a1, zero, t1
                  ori          s11, s4, 1852
                  or           s2, s8, gp
                  sll          a2, s8, a5
                  auipc        sp, 970154
                  xori         sp, a4, 140
                  slli         a1, t5, 24
                  srl          a7, t3, sp
                  sra          s4, s7, ra
                  xor          t3, s9, s7
                  slti         t4, sp, -1105
                  auipc        s5, 817812
                  sub          sp, a7, s7
                  slt          s4, s11, zero
                  or           s6, s0, tp
                  srl          t5, s7, s5
                  ori          a2, a1, 220
                  ori          a2, s6, -1703
                  sub          t3, s10, a2
                  xor          t1, s11, s2
                  srli         s9, s4, 0
                  andi         t5, sp, -33
                  slti         t5, t4, -1116
                  sll          s1, s1, s11
                  xori         t1, a6, 1369
                  andi         s1, t0, -1085
                  add          s9, s3, s8
                  sltu         t3, a7, sp
                  nop
                  ori          s0, a1, 1455
                  srli         t1, a2, 16
                  auipc        a5, 207904
                  sltiu        a2, a0, 1869
                  nop
                  andi         t0, t5, -596
                  srli         t5, a5, 18
                  sra          s0, t3, zero
                  srai         s9, s1, 14
                  xori         a0, a3, -1561
                  nop
                  sltu         zero, s0, t3
                  slt          a0, ra, t6
                  sub          gp, t2, s9
                  and          t5, t1, t2
                  xori         sp, t1, -24
                  sltu         t3, s3, s6
                  nop
                  andi         sp, t4, 506
                  sra          s1, s6, t3
                  add          a4, sp, ra
                  xor          a6, s4, t0
                  lui          a3, 840218
                  srli         tp, sp, 27
                  li           s1, 0xf2b2d6c1 #start riscv_int_numeric_corner_stream_2
                  li           a4, 0x80000000
                  li           tp, 0x0
                  li           s10, 0x0
                  li           t5, 0x0
                  li           ra, 0x80000000
                  li           t4, 0xffffffff
                  li           a1, 0xcc599b10
                  li           a7, 0xffffffff
                  li           t0, 0xffffffff
                  addi         ra, a4, 36
                  lui          t0, 158973
                  nop
                  add          tp, t4, t0
                  auipc        ra, 652314
                  addi         a4, s10, 176
                  addi         s10, ra, 1236
                  addi         ra, t4, -281
                  lui          t4, 732974
                  sub          tp, t5, ra
                  nop
                  sub          t5, ra, a1
                  lui          ra, 369855
                  addi         t0, tp, 1380
                  nop
                  lui          t0, 28505
                  auipc        t4, 107457
                  auipc        tp, 354807
                  addi         tp, t0, 350
                  addi         t5, a1, -1934
                  lui          t5, 900828
                  lui          a7, 535332
                  sub          a7, t4, t5
                  auipc        ra, 457649
                  sub          a4, t0, t4
                  add          ra, t0, ra
                  auipc        tp, 137046 #end riscv_int_numeric_corner_stream_2
                  sra          a3, t3, a5
                  slti         a3, a2, 996
                  auipc        s2, 929752
                  xor          a3, sp, a0
                  sub          tp, t2, a2
                  slti         t1, a7, 1449
                  slli         t2, zero, 19
                  sltiu        s1, s4, -2038
                  slt          s1, sp, a7
                  slti         t3, t6, 650
                  sub          sp, s2, a4
                  srl          t2, s1, a4
                  xor          sp, gp, a6
                  lui          sp, 282057
                  add          t0, t4, t0
                  sltiu        t3, s11, -751
                  xor          t6, t6, s1
                  add          s5, t1, a1
                  slti         t0, t6, -922
                  srl          t1, s11, a5
                  addi         t6, t3, 372
                  slli         s6, s7, 11
                  sub          s6, sp, a1
                  slli         tp, t6, 10
                  srl          gp, sp, s11
                  or           s2, a1, a5
                  srai         t0, s1, 16
                  add          a6, s3, t1
                  sll          a5, a5, a1
                  add          zero, s10, a5
                  ori          s10, s5, 1631
                  sll          s9, s9, a3
                  add          zero, tp, zero
                  sra          t3, s2, s6
                  nop
                  xor          s10, s3, s4
                  slli         t2, s10, 23
                  and          a5, a0, gp
                  add          a0, s10, a5
                  xori         sp, a7, -687
                  srli         t1, s4, 3
                  lui          a2, 5041
                  slti         a5, a0, 750
                  srli         tp, a3, 21
                  slti         sp, s6, -60
                  srl          t2, t4, a2
                  sll          s9, s8, sp
                  xor          s1, s2, a1
                  slti         s6, tp, -1109
                  and          a3, a1, t0
                  auipc        gp, 706541
                  sltiu        ra, s3, 1961
                  slt          s11, t2, a4
                  add          t4, a6, ra
                  sra          s9, t5, t1
                  sra          a0, tp, s0
                  auipc        t4, 256527
                  or           s4, a7, s6
                  and          s5, s7, t4
                  sltu         s10, s10, tp
                  ori          t4, s1, 1467
                  or           t5, a0, a0
                  slti         a1, a4, -1830
                  nop
                  srli         a4, t4, 6
                  andi         t5, t0, -320
                  srai         zero, s6, 16
                  andi         s4, s7, -71
                  slt          t6, s0, s9
                  sltiu        a2, s8, 1383
                  sub          a7, a6, t1
                  andi         s4, a5, 428
                  srli         t2, s10, 6
                  srai         s5, s9, 14
                  nop
                  and          s6, s3, s11
                  sub          s1, s1, s1
                  slti         a5, s6, -821
                  xor          sp, a0, t2
                  slti         sp, a0, 1821
                  srli         t0, a2, 18
                  sub          a7, s8, a5
                  auipc        a3, 69416
                  lui          s11, 394858
                  srl          s0, a4, s6
                  and          sp, a3, s8
                  addi         a1, s4, 1998
                  sltiu        t1, t4, 1755
                  slli         a0, gp, 5
                  andi         a4, ra, -241
                  sltu         a5, s9, s4
                  slti         s1, t2, -1362
                  auipc        ra, 785772
                  andi         a3, a6, 581
                  sra          a7, t6, t4
                  or           s1, a4, s0
                  ori          s9, s0, 1829
                  sltu         s9, t6, tp
                  srai         s0, s3, 30
                  and          s10, s9, t2
                  srai         t1, s10, 22
                  srl          t3, a5, s7
                  srai         zero, a0, 31
                  sub          zero, a2, s8
                  sll          sp, t1, s2
                  sra          s2, s4, ra
                  lui          a0, 238833
                  addi         s6, t1, 1255
                  sub          t4, a3, tp
                  ori          s5, a4, 711
                  srl          zero, s7, s6
                  srai         s6, s10, 25
                  add          a5, a6, t6
                  slli         ra, t1, 3
                  sub          t1, s7, a2
                  andi         s2, s4, 800
                  auipc        a6, 451125
                  andi         s0, a5, 476
                  sll          a1, s1, a3
                  add          a2, a5, tp
                  xori         t6, sp, -114
                  xori         s0, a2, -140
                  sltiu        a1, a7, -633
                  lui          sp, 393123
                  sub          sp, s1, s9
                  sub          s10, s11, s0
                  xor          a0, s2, a3
                  andi         s11, a3, -894
                  srli         a3, t6, 19
                  andi         t3, a6, -1783
                  slti         t0, ra, -393
                  xor          a6, s9, s10
                  xor          s4, s1, t5
                  sltiu        t3, s1, -303
                  sll          ra, t4, t6
                  sra          t3, s11, sp
                  xor          s10, tp, a5
                  lui          a4, 339547
                  slt          ra, a1, a0
                  or           tp, a0, s2
                  sra          a4, s10, tp
                  or           gp, ra, t0
                  add          zero, s4, a0
                  add          s0, zero, zero
                  andi         s0, s3, -270
                  lui          a0, 498132
                  addi         s2, zero, -134
                  sltu         s6, s5, s8
                  and          t0, s4, t0
                  auipc        a5, 358423
                  srai         a5, s5, 10
                  srl          a4, s3, sp
                  auipc        gp, 114575
                  addi         s0, a4, -532
                  or           gp, s1, s3
                  sll          t6, t4, s1
                  andi         s1, s11, 1742
                  sltu         a0, a3, s0
                  and          a2, ra, a4
                  slt          s5, s2, t3
                  addi         s0, s4, -1894
                  add          s10, a7, a7
                  andi         tp, a6, -1755
                  addi         t6, tp, -424
                  and          s5, gp, a0
                  andi         a6, s4, 1652
                  add          t3, s4, a0
                  xor          s9, s6, a0
                  sll          a3, s10, s0
                  sra          ra, a2, a2
                  srl          s5, a2, t5
                  slti         s11, t5, 830
                  slti         s9, s0, -1409
                  sltu         a6, a5, zero
                  sub          a3, s11, s10
                  srai         s6, t2, 0
                  sll          a2, t4, a1
                  sltu         a4, s11, t6
                  add          s2, gp, a1
                  srli         a3, t4, 23
                  sll          t1, s5, s4
                  srl          a3, t6, s11
                  nop
                  lui          a0, 614417
                  xori         s2, s10, -1476
                  xor          s6, t2, s6
                  xori         a0, s2, 1762
                  nop
                  andi         s5, t2, -2040
                  srl          s4, sp, t6
                  sll          sp, a4, s1
                  auipc        s9, 332895
                  sltu         a0, s10, t2
                  srai         s10, t4, 21
                  nop
                  nop
                  nop
                  slti         a6, a7, 28
                  srai         s9, s2, 24
                  slti         s10, s4, 532
                  or           a2, s1, s3
                  and          ra, s9, t5
                  sltiu        s9, s4, 73
                  or           s0, s3, a0
                  sra          zero, s2, t6
                  sll          t1, a3, s3
                  slli         s1, s5, 18
                  srli         a2, s9, 31
                  sll          tp, s0, a6
                  andi         zero, s6, -616
                  xori         s10, a5, -1518
                  addi         s5, s11, -1024
                  slli         s0, a3, 15
                  and          a7, s8, s9
                  sll          s9, t4, ra
                  srli         s4, zero, 27
                  ori          s9, s2, -1365
                  addi         s6, t2, -1047
                  sll          a4, s9, s6
                  slti         s5, sp, -1582
                  ori          a1, s9, -1204
                  slti         t1, zero, -1742
                  and          t0, a2, t1
                  and          ra, a2, a3
                  sltu         a4, a4, s8
                  sltu         a6, a7, t1
                  slli         gp, a7, 6
                  slt          t4, t4, a2
                  addi         sp, a6, 1895
                  slli         a2, a6, 21
                  xori         s10, s0, 594
                  srli         a5, a5, 10
                  sltiu        s2, ra, -196
                  sltiu        s1, a4, -1641
                  sra          sp, s7, a5
                  ori          t2, a1, 2033
                  addi         t3, gp, 1370
                  slli         a1, t1, 6
                  and          a1, s4, s1
                  xor          s2, s3, a6
                  srli         s0, t6, 18
                  slli         ra, s0, 0
                  srli         s11, s11, 7
                  nop
                  add          a7, t1, a1
                  andi         a7, a6, 320
                  and          t1, a5, tp
                  auipc        a0, 64799
                  sub          s0, s5, a6
                  srli         a2, gp, 15
                  sltu         a7, s3, s7
                  slt          sp, s0, tp
                  or           a5, s9, a4
                  xor          a1, t0, a6
                  xor          s9, tp, s1
                  sll          ra, s1, a3
                  slt          s10, s8, s5
                  ori          a6, a3, -761
                  sra          t0, zero, s6
                  ori          sp, a4, -1502
                  slti         t4, t1, 69
                  and          t6, zero, t3
                  addi         s10, s8, -1213
                  or           a7, a0, s1
                  sll          a1, ra, s11
                  sra          a5, s4, a5
                  addi         t1, s0, 886
                  sltiu        t6, a5, -986
                  slti         tp, a1, -528
                  lui          a5, 190
                  xori         t4, a4, 125
                  sub          a6, t1, t5
                  sub          a3, s3, s11
                  andi         a1, a2, 1989
                  xor          s5, s8, s6
                  slti         a4, s4, -292
                  or           t0, a5, s9
                  slli         s5, t0, 29
                  or           a0, sp, a3
                  xor          zero, s10, s4
                  or           s11, sp, t1
                  srl          a4, sp, s0
                  add          a0, t6, gp
                  and          s4, t3, a7
                  srli         a3, a5, 9
                  lui          t2, 531431
                  add          t2, s11, a3
                  slt          s10, t1, s7
                  andi         a7, s6, -434
                  addi         t3, s5, 1792
                  lui          tp, 831545
                  ori          s5, zero, -1830
                  sra          zero, s2, a1
                  srli         t6, t4, 31
                  lui          s9, 355164
                  sltu         s0, zero, sp
                  slli         sp, s1, 5
                  srai         s1, s2, 7
                  or           ra, sp, s11
                  ori          ra, a6, 1473
                  slli         a1, s2, 31
                  addi         tp, a7, 204
                  srai         ra, s6, 12
                  slti         a6, t0, 381
                  lui          t3, 700504
                  srai         a6, t0, 12
                  slt          a5, t5, s10
                  sltu         t0, s10, t4
                  srl          s1, a4, s2
                  ori          a7, a0, -1376
                  slt          a6, sp, t0
                  sub          s6, sp, t1
                  slli         t4, t5, 15
                  slli         s6, a3, 7
                  sltu         a6, s1, a4
                  slt          a1, ra, a2
                  add          t4, sp, a5
                  or           tp, s7, s11
                  or           ra, s8, tp
                  nop
                  srai         a1, a2, 5
                  xori         s0, t4, -1980
                  lui          s10, 659006
                  sltu         t5, s9, a0
                  xor          s10, s9, a7
                  sltu         sp, s6, a6
                  sll          t3, a6, t0
                  ori          a0, s5, -791
                  or           s4, a1, a4
                  slt          tp, s3, s1
                  andi         t3, s2, 1418
                  sub          a7, s1, s8
                  srli         a4, s11, 27
                  slli         s11, a3, 10
                  sra          a5, s4, zero
                  sltiu        zero, zero, -1227
                  or           gp, t0, t1
                  sll          t6, t3, t6
                  sra          a7, s10, a4
                  ori          t5, s2, -1937
                  slti         s10, tp, 451
                  andi         t5, ra, -911
                  lui          s10, 838668
                  sltu         a3, s4, gp
                  and          a7, a3, s0
                  or           s10, a6, s9
                  xor          a2, t6, a3
                  andi         a2, t2, 1795
                  xor          a0, t4, a1
                  srl          ra, zero, s6
                  ori          a4, s9, 1438
                  lui          ra, 779022
                  and          a0, t2, a3
                  ori          s0, t5, -741
                  srl          s4, a0, s10
                  ori          a6, s1, 88
                  lui          a4, 382443
                  lui          t0, 347168
                  sll          t3, s6, s7
                  or           s10, a5, s7
                  ori          t6, t0, -1891
                  sltu         s11, gp, t5
                  slli         a1, s2, 19
                  srai         t6, a6, 24
                  ori          s11, s11, -2013
                  slli         s0, a5, 20
                  sltu         a1, s3, ra
                  sub          sp, t3, s6
                  lui          a1, 216415
                  and          s4, s9, s6
                  addi         t5, tp, -2016
                  sra          a3, s10, t0
                  slti         a1, t5, -1749
                  nop
                  xor          t0, s3, s0
                  slt          tp, a1, tp
                  xori         a6, t1, 380
                  srl          a3, s8, gp
                  srai         t3, a6, 6
                  sltiu        s1, t3, 1785
                  and          t4, t1, s1
                  or           s6, s9, s6
                  sra          s4, zero, a0
                  nop
                  srli         s1, a7, 14
                  and          t2, s3, a5
                  nop
                  slti         s4, s2, 609
                  slti         s6, sp, 1296
                  sltiu        tp, s2, -1938
                  sll          a2, s11, a7
                  slti         t3, a7, -678
                  auipc        s11, 612689
                  li           s4, 0x45f5103d #start riscv_int_numeric_corner_stream_0
                  li           gp, 0x80000000
                  li           a6, 0x80000000
                  li           t1, 0xffffffff
                  li           a4, 0xcfc246ec
                  li           tp, 0xffffffff
                  li           s2, 0x80000000
                  li           t0, 0x97a2764
                  li           s6, 0xffffffff
                  li           a3, 0x80000000
                  sub          a3, tp, a6
                  sub          s2, tp, a6
                  sub          t1, s6, a3
                  auipc        tp, 127615
                  auipc        s4, 205081
                  lui          a6, 124963
                  add          a6, a6, s6
                  addi         s6, tp, -1485
                  addi         a6, t1, -386
                  auipc        gp, 498911
                  addi         a4, gp, 113
                  addi         s4, a6, 732
                  add          gp, tp, t0
                  nop
                  auipc        s4, 752771
                  auipc        a4, 727944
                  addi         a6, a3, 807
                  add          t1, s2, t1
                  add          t0, gp, a4
                  sub          s2, a3, a6
                  lui          tp, 1019500
                  add          s6, t1, a4
                  auipc        s4, 284786
                  addi         gp, s2, -1276
                  addi         tp, a4, 2
                  nop
                  add          tp, s4, a4
                  auipc        tp, 766024
                  nop #end riscv_int_numeric_corner_stream_0
                  sltu         t5, t6, a0
                  srai         s10, s8, 3
                  xori         s2, s8, -541
                  ori          t6, t4, -1155
                  sltu         a6, zero, t5
                  or           tp, s3, ra
                  ori          t2, zero, 457
                  sra          s9, s10, t1
                  srl          s0, s0, a0
                  sll          t3, a1, a6
                  and          sp, t0, s8
                  sra          s11, s3, s0
                  slli         ra, t5, 3
                  sub          t3, s4, t0
                  slt          t3, a2, t6
                  xor          zero, s10, a1
                  or           s2, s4, a5
                  add          tp, s1, s3
                  srli         zero, a5, 0
                  slti         ra, a7, 505
                  srl          s11, a3, s9
                  nop
                  and          s1, a4, tp
                  xori         zero, s5, 434
                  andi         a3, s10, 166
                  sra          s0, s3, s3
                  ori          a3, t0, -1239
                  xori         s6, s6, -93
                  auipc        t5, 1047393
                  sltiu        t0, t2, -1473
                  slt          t5, s4, s5
                  slti         t4, t0, -798
                  ori          t2, s7, 1809
                  lui          a6, 410455
                  add          a6, s3, t3
                  sltu         s10, s11, a7
                  auipc        a7, 504546
                  sltu         a1, sp, a2
                  ori          a2, t1, -1338
                  sltiu        zero, a5, -714
                  slti         t5, s0, 1978
                  auipc        a3, 877614
                  add          a4, s8, t2
                  or           a3, t4, s11
                  sltiu        zero, s2, -1466
                  lui          s10, 86747
                  slt          t4, s7, a3
                  sltiu        s6, zero, -851
                  slt          a0, s3, a1
                  or           s4, t0, ra
                  srai         a3, a0, 13
                  auipc        zero, 1022597
                  auipc        zero, 282189
                  nop
                  ori          t4, a7, 1648
                  lui          zero, 676066
                  xor          s9, t6, t6
                  xori         s10, a5, 79
                  addi         t5, t0, 463
                  sll          a2, t4, gp
                  add          s0, s10, t5
                  sltu         s11, s9, t1
                  andi         t4, t4, 1690
                  slli         s0, s7, 11
                  nop
                  and          s5, t4, a4
                  auipc        gp, 569252
                  xori         a2, s3, 1081
                  xor          s6, s0, zero
                  sltu         a1, s11, s9
                  addi         a5, s5, -696
                  lui          ra, 981204
                  srai         s9, a1, 29
                  slli         t6, t1, 21
                  sub          s1, zero, t4
                  sra          gp, zero, t2
                  slli         a1, s8, 20
                  sub          s6, tp, s1
                  add          a6, t3, a4
                  and          a4, t6, s8
                  srli         zero, s10, 3
                  srai         t4, a6, 21
                  sltiu        s11, s5, 1905
                  nop
                  or           t5, t6, a5
                  lui          s4, 763067
                  xor          s6, a3, s10
                  sltu         t6, a6, t6
                  lui          s9, 188944
                  xor          t1, gp, tp
                  auipc        t1, 828300
                  srli         a3, a2, 18
                  xori         s0, s1, -1646
                  srl          sp, a6, s4
                  auipc        t2, 234086
                  sltiu        t6, a2, -396
                  ori          t5, s5, 771
                  andi         t5, t1, 1143
                  sltu         a4, s8, s4
                  and          t5, ra, t1
                  sub          t4, t6, t0
                  sll          a5, s0, tp
                  sub          s10, a5, t3
                  nop
                  slt          a0, s3, t3
                  auipc        s4, 747738
                  sll          zero, s4, a2
                  lui          s0, 696995
                  srli         a4, a7, 6
                  auipc        s9, 807544
                  slti         t1, s6, 326
                  sll          ra, a1, a2
                  srl          sp, t3, gp
                  or           t6, a2, s7
                  xor          a6, s6, s5
                  srli         s10, s6, 0
                  sra          s11, s3, zero
                  nop
                  slli         sp, zero, 28
                  sll          t5, t0, a2
                  sub          a1, t3, s4
                  srli         gp, s10, 16
                  sub          s6, s4, t0
                  sub          a0, a2, s1
                  addi         s9, s2, -590
                  sll          t1, s6, s4
                  and          s4, a7, a4
                  sra          t1, s8, t0
                  slli         a3, a3, 29
                  lui          t5, 186694
                  srai         a1, s1, 8
                  and          t4, s6, t6
                  sll          s6, s10, a0
                  sltiu        sp, a7, -1209
                  sll          a0, a6, a5
                  lui          t2, 859068
                  sltiu        a6, t3, -303
                  slti         t3, t4, 1169
                  srl          a1, zero, s4
                  sltiu        a2, a6, 1820
                  slli         s6, sp, 3
                  and          a4, ra, t4
                  sltu         s1, t6, s9
                  lui          s1, 1037728
                  or           t1, a3, t6
                  slt          ra, s9, a5
                  xor          s9, sp, s1
                  add          t5, gp, s7
                  xor          sp, a7, a5
                  ori          a2, s7, -1522
                  slti         a3, t2, -70
                  nop
                  andi         t1, s5, -1052
                  andi         a1, s11, -81
                  or           a6, a4, s10
                  xor          a6, a3, s6
                  addi         t6, t4, 459
                  srai         s0, ra, 27
                  xori         a3, sp, -1252
                  add          s6, s1, tp
                  sub          ra, a3, s8
                  sltu         t1, s8, sp
                  or           zero, a7, sp
                  andi         t2, t1, -1605
                  srl          a5, s6, s1
                  sltu         sp, a2, zero
                  xori         t4, t6, -681
                  slti         a2, s6, -745
                  andi         t4, s4, -858
                  sra          a1, t1, s6
                  slt          t2, s10, tp
                  sub          sp, t1, s5
                  and          s11, tp, gp
                  lui          a0, 240001
                  sub          t0, s0, a3
                  andi         t3, a3, 724
                  srai         s11, s3, 28
                  xor          t5, t5, t0
                  xori         a6, a6, 1681
                  slli         t1, s5, 27
                  sll          tp, ra, s1
                  ori          sp, a1, -611
                  sub          t3, a1, zero
                  sltu         a0, t3, s5
                  xori         t3, t2, -726
                  srai         s11, s8, 24
                  sub          a5, s7, a0
                  srl          t0, s9, t5
                  auipc        gp, 1025740
                  and          gp, tp, t3
                  sra          a0, a1, s1
                  lui          t6, 886411
                  xori         s11, t3, -1613
                  sra          s1, s9, s2
                  xor          s6, s7, a4
                  or           s11, s7, a6
                  add          a0, a4, s1
                  and          t4, t5, ra
                  slt          t0, t6, s10
                  slli         a4, a2, 28
                  or           a2, s6, s8
                  slt          s1, s10, s6
                  sra          s4, tp, t5
                  or           s11, t6, t3
                  ori          zero, s8, -689
                  add          a2, sp, t1
                  slti         t1, a5, -1807
                  slti         t5, t6, -524
                  sub          a4, a2, s0
                  lui          s5, 422173
                  slti         a5, s4, -556
                  srai         gp, s5, 5
                  addi         s6, t6, -1346
                  sll          s4, t6, t5
                  sra          a4, a5, s3
                  srai         t1, s6, 23
                  lui          gp, 538084
                  auipc        a3, 386034
                  sub          t0, s3, a1
                  add          a7, gp, s6
                  sll          t3, a2, s7
                  sll          tp, s11, gp
                  slli         t1, s8, 19
                  add          a7, ra, sp
                  srai         t0, s1, 20
                  slti         s10, t4, -1585
                  addi         s5, s0, -1481
                  auipc        t5, 1046213
                  slt          a7, s3, a1
                  add          t6, a0, t4
                  xori         a4, s5, -1142
                  sltu         s2, s3, s9
                  auipc        a2, 692840
                  sra          tp, a7, t4
                  and          s1, s9, s4
                  srli         s6, a5, 3
                  and          sp, tp, s6
                  srai         gp, s8, 8
                  lui          a7, 384144
                  auipc        ra, 1031614
                  xori         t1, a6, 109
                  xor          a1, gp, a1
                  xor          sp, s1, s7
                  auipc        a0, 316694
                  slti         t3, tp, -433
                  sra          gp, t2, a3
                  andi         s4, s11, -500
                  sltu         s4, a1, a1
                  xori         t5, t0, 1742
                  ori          t6, zero, -968
                  sll          tp, s11, gp
                  auipc        a4, 1027651
                  sra          a4, s4, ra
                  xor          a3, s11, s7
                  xori         t4, t3, 1485
                  andi         s6, t1, -1242
                  slt          a4, t5, tp
                  andi         a0, s4, -1626
                  ori          a0, a6, -2025
                  nop
                  andi         s9, t3, 1819
                  nop
                  andi         t1, s2, 1723
                  slli         a0, a3, 28
                  xori         s9, s1, 1431
                  sltiu        t6, t6, 1449
                  xor          s5, a0, s2
                  sub          a6, a7, a2
                  srli         ra, t2, 10
                  srai         t6, s5, 15
                  sltiu        t1, ra, 470
                  srl          t6, a7, s2
                  nop
                  auipc        s1, 333134
                  srli         s0, s5, 22
                  slti         a0, a3, 719
                  or           zero, a0, t5
                  lui          tp, 675477
                  slli         s2, s7, 1
                  srai         t1, gp, 26
                  addi         t4, a2, -315
                  auipc        s6, 691875
                  srl          s10, s4, s8
                  sub          a2, s2, zero
                  ori          a2, s5, 795
                  sll          a5, s5, s2
                  slti         s2, a3, -103
                  auipc        t2, 499738
                  slt          a3, s6, s9
                  srl          t1, s9, a3
                  and          sp, s3, gp
                  xor          s10, a7, s5
                  slt          s0, s9, tp
                  srl          a3, sp, s1
                  slli         a5, tp, 12
                  slli         a7, a7, 17
                  srai         a1, a7, 12
                  srai         tp, a2, 20
                  lui          t2, 612713
                  slli         s0, s0, 11
                  srli         sp, s4, 29
                  xor          a4, s7, s3
                  slt          s9, s6, sp
                  addi         s11, s4, -1893
                  slli         a7, s7, 17
                  sub          s5, s9, t5
                  add          t3, s5, t0
                  and          s0, sp, a2
                  add          a1, t3, s2
                  addi         a3, gp, -1341
                  xori         s5, ra, -1870
                  sra          a2, s6, a4
                  srli         t1, s5, 21
                  or           t5, t0, tp
                  sll          t1, t5, a1
                  slli         s9, a4, 17
                  add          zero, s7, a3
                  srl          a6, a1, t0
                  sltiu        t0, a5, -479
                  srai         s5, s10, 16
                  sltu         t5, a0, a6
                  xori         t6, s7, 1602
                  ori          s9, a7, 626
                  add          t4, s6, a4
                  sltu         s6, s8, s1
                  andi         sp, a1, -179
                  and          gp, a3, zero
                  slli         s11, a7, 7
                  slt          s6, a3, a6
                  srai         s5, ra, 22
                  sll          a0, s8, a4
                  xor          s6, s6, s6
                  slt          s11, t4, t5
                  xori         s11, s5, 1370
                  sltiu        s5, t3, -1132
                  sra          a4, s9, a2
                  slti         a7, t2, 294
                  xor          s9, s2, a0
                  addi         a1, a3, 1544
                  sll          a3, s2, a7
                  srai         s5, t6, 16
                  sll          t5, s9, s8
                  xor          zero, a1, t5
                  lui          s0, 120002
                  andi         s0, s11, 1793
                  sltiu        s1, s11, 675
                  sub          s5, a2, a7
                  or           tp, a1, zero
                  auipc        t1, 161977
                  srai         t4, tp, 13
                  sll          s5, s2, s1
                  slti         a1, s10, 1228
                  andi         t1, t3, -1573
                  sra          a7, a4, a4
                  auipc        s6, 484011
                  sll          t1, a0, s7
                  srai         tp, t0, 28
                  srli         t4, t5, 21
                  lui          t5, 603839
                  add          a1, a6, t2
                  add          t2, t3, t0
                  sltu         s10, s10, s0
                  auipc        s11, 300562
                  srai         a0, tp, 22
                  lui          t3, 257940
                  and          t0, s0, t0
                  or           t0, a2, t3
                  slt          t1, s0, s2
                  sra          gp, s4, s0
                  slt          a6, a6, t4
                  xori         s11, s6, 229
                  ori          gp, s5, -1077
                  and          s10, sp, t5
                  auipc        zero, 167217
                  or           a1, zero, s10
                  slti         s10, ra, -626
                  sll          t4, s4, s10
                  sll          t3, a3, s6
                  sra          s2, s0, a5
                  sll          t6, s1, s2
                  and          tp, s6, s0
                  add          s10, s3, a3
                  xor          s5, ra, a2
                  addi         a7, gp, -1117
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           t1, 0x0
                  li           s11, 0xffffffff
                  li           s4, 0x0
                  li           s1, 0x80000000
                  li           s6, 0xbdde216d
                  li           t6, 0x68366b3
                  li           a0, 0x80000000
                  li           a1, 0x80000000
                  li           a6, 0xffffffff
                  addi         s6, s11, -1233
                  sub          s4, a6, s4
                  sub          a1, ra, s1
                  addi         s11, s4, -750
                  add          a6, ra, a0
                  lui          t1, 708822
                  lui          s6, 246014
                  lui          a1, 86143
                  addi         a1, t6, 129
                  auipc        t1, 648395
                  nop
                  lui          ra, 652684
                  lui          ra, 16318
                  addi         s11, a6, -870
                  add          t1, a0, a1
                  auipc        s4, 15150
                  addi         s6, s6, -1426
                  auipc        t1, 639365
                  addi         a6, s1, 783
                  addi         s1, a0, 47
                  sub          s1, t6, s6
                  auipc        t6, 571315
                  sub          s11, t1, t1
                  sub          t6, t6, s11
                  addi         t1, s11, 740
                  addi         a0, s4, -1511
                  addi         s1, a6, 687 #end riscv_int_numeric_corner_stream_13
                  addi         s2, t4, 1922
                  xori         a0, s7, -150
                  srli         a2, a5, 17
                  nop
                  nop
                  auipc        s6, 351268
                  lui          t2, 309735
                  xori         t0, s4, -492
                  srai         s11, a0, 12
                  slli         zero, a6, 8
                  add          t1, s4, a5
                  nop
                  nop
                  xori         a1, a1, -703
                  slt          t6, s11, t5
                  sltu         a7, ra, s5
                  slti         tp, t0, 373
                  sub          a6, gp, t5
                  slti         s4, a7, 1722
                  ori          ra, t4, -70
                  addi         s4, sp, -711
                  slli         ra, s5, 5
                  addi         s10, s11, 1839
                  andi         gp, s5, 1440
                  addi         a2, t6, 1057
                  addi         ra, a6, 1263
                  nop
                  slti         t4, t0, -1044
                  andi         a1, s1, -1326
                  and          s9, a5, t0
                  ori          tp, s1, -1604
                  slt          sp, a3, s2
                  sra          t1, a4, a6
                  and          s2, a3, s8
                  srli         a6, t6, 10
                  srai         a1, t5, 17
                  and          s1, s10, ra
                  srl          s10, zero, tp
                  srl          s4, s5, a0
                  sll          t1, s2, s11
                  xori         s11, a3, 1027
                  lui          s1, 572107
                  addi         s10, a3, 540
                  sub          t0, a6, s6
                  srai         gp, t0, 14
                  addi         s11, a0, 1700
                  add          a4, tp, a5
                  sub          t1, s2, s10
                  and          ra, ra, a6
                  lui          t0, 137200
                  sltiu        a5, t2, 1217
                  srai         a6, a4, 11
                  addi         s11, t0, -654
                  srai         ra, s8, 2
                  and          t5, gp, s1
                  ori          ra, t6, -1931
                  srai         t5, s1, 17
                  add          s10, sp, s1
                  ori          a0, t5, 1161
                  xori         s6, s4, -1773
                  xor          t6, s3, a7
                  xori         sp, s6, -1351
                  sub          s6, a6, a3
                  sltu         a5, a2, t0
                  srl          a0, t2, t5
                  add          a6, t1, s10
                  add          gp, t5, s5
                  add          gp, t1, t2
                  sra          t6, a2, s4
                  addi         s1, s9, 922
                  nop
                  xori         s9, a5, 1970
                  srli         s1, t6, 1
                  srli         s1, s3, 16
                  sub          zero, s2, s11
                  add          a3, s2, s1
                  andi         s0, s3, -710
                  sltu         a3, ra, gp
                  ori          t3, sp, -1768
                  sll          s0, a7, s1
                  addi         ra, s5, -551
                  xori         s1, t4, -1310
                  andi         a2, t6, -1002
                  slti         s2, a4, -969
                  sra          a6, sp, s10
                  xori         t2, a3, -526
                  auipc        t5, 1058
                  sltu         s5, a0, t6
                  slti         s6, t6, 254
                  sltu         s6, ra, t2
                  xori         a1, s6, -340
                  addi         a2, t6, 441
                  slli         a6, a0, 0
                  slti         zero, tp, -633
                  or           s0, s8, s11
                  sltiu        s9, s3, -1314
                  sltiu        ra, a7, -115
                  xori         sp, a0, 1349
                  xor          s6, a6, s6
                  sub          a7, sp, s1
                  add          gp, s7, s11
                  sltu         t1, t1, zero
                  sra          t1, s3, s7
                  ori          s10, s10, -850
                  slli         sp, a5, 4
                  xor          s0, t3, s3
                  xor          gp, a1, s9
                  nop
                  andi         s2, sp, -379
                  auipc        t5, 827782
                  srli         a6, s11, 12
                  xori         s2, a7, 1785
                  sltiu        a5, a3, -1921
                  sub          t5, t0, s10
                  ori          t0, a0, -443
                  xori         a2, s2, 519
                  srai         tp, gp, 22
                  sra          t0, t4, s2
                  sltu         s6, s9, s1
                  slli         t5, a7, 6
                  andi         t0, t4, -789
                  slli         ra, s10, 5
                  sra          ra, a7, a7
                  slt          t5, t0, s5
                  sltiu        t2, s8, -1940
                  srai         s9, zero, 12
                  sra          a5, a3, ra
                  nop
                  sltu         t4, s3, s3
                  slti         t5, s7, -262
                  slt          t6, a4, s2
                  add          a7, a2, t4
                  sll          s4, zero, s7
                  sltu         ra, s0, a7
                  srli         zero, t3, 30
                  xori         a6, a2, 934
                  slt          a2, s6, t0
                  srli         gp, s4, 10
                  lui          a6, 845122
                  srai         a5, s1, 1
                  sll          s9, s8, a6
                  sra          t2, a2, a3
                  add          s2, a5, t3
                  slti         gp, s2, -452
                  xori         t6, tp, -468
                  slli         s5, t4, 2
                  addi         zero, a2, 597
                  auipc        gp, 749156
                  addi         a7, t4, -1648
                  add          a0, a0, a6
                  xor          s1, a0, a5
                  andi         s5, t6, 1066
                  xor          t5, a6, t4
                  slt          s4, a3, a0
                  xor          a2, s9, s3
                  srli         s6, t5, 8
                  and          a0, t2, tp
                  sub          a6, t4, s5
                  auipc        gp, 488823
                  srl          t2, zero, a7
                  xor          s4, s3, t0
                  addi         s2, a3, 341
                  sltiu        t1, tp, 1445
                  add          a0, s0, s2
                  sltiu        a1, a6, -1330
                  sll          t4, s0, a3
                  andi         sp, s2, 790
                  slli         s10, t1, 1
                  xori         a6, s6, 645
                  srai         t1, gp, 13
                  sra          s6, s11, tp
                  add          a0, a3, a7
                  sub          zero, zero, a2
                  andi         s11, s9, -426
                  sll          t1, sp, s9
                  srli         gp, s9, 29
                  slti         t4, s10, -612
                  sra          gp, s4, ra
                  sll          a3, a3, s4
                  nop
                  xori         s2, s7, -1650
                  slli         t5, sp, 17
                  auipc        zero, 409275
                  srl          a7, s10, t4
                  add          s10, tp, s11
                  andi         t5, ra, 1014
                  ori          sp, a4, -21
                  srli         s4, t4, 31
                  addi         s0, s2, -1282
                  sub          ra, s0, a0
                  srli         s10, s9, 23
                  sra          t3, t0, s0
                  sll          s0, s10, s5
                  addi         s11, a1, -1102
                  xori         a7, t2, 164
                  xor          s9, s8, s1
                  xor          a7, s3, s11
                  slli         s5, s3, 24
                  ori          a4, t0, 1724
                  xori         t6, t2, 359
                  sra          s5, a6, a3
                  srli         zero, zero, 25
                  andi         t4, sp, 1698
                  auipc        t0, 382480
                  nop
                  sll          t1, s10, zero
                  nop
                  sub          t4, sp, t1
                  nop
                  sltiu        sp, a4, 1384
                  addi         a3, t3, 39
                  sub          s11, s8, s7
                  add          s6, t1, t5
                  xor          t1, a0, t4
                  srli         a3, s7, 13
                  slli         a3, s5, 14
                  sub          gp, a3, a3
                  ori          t1, a0, 611
                  srai         gp, s6, 5
                  sub          s2, t4, a1
                  nop
                  slt          zero, t1, t0
                  or           a6, s1, a7
                  lui          a1, 29047
                  srl          t6, s1, s1
                  sltu         s11, s7, s1
                  slli         a7, t1, 1
                  sltiu        t2, zero, -1922
                  ori          a5, t4, 963
                  and          a4, ra, a0
                  and          s5, s6, s10
                  sltiu        t2, s3, -1008
                  and          t1, tp, t6
                  srli         a3, t1, 19
                  add          s4, s2, s11
                  andi         t1, ra, 1352
                  add          tp, tp, ra
                  sra          t2, a5, s1
                  srai         s2, a2, 1
                  lui          s2, 636092
                  slt          t1, sp, gp
                  sra          a2, t2, a7
                  sll          a4, a4, gp
                  xor          s11, s3, sp
                  srai         t3, s9, 6
                  lui          tp, 541486
                  sll          t0, a7, t0
                  srai         t2, s5, 26
                  slt          a7, t4, a2
                  add          s1, t3, ra
                  slti         a4, s8, 1566
                  xori         ra, s8, -2000
                  xori         gp, a0, 444
                  srl          s6, a4, s5
                  auipc        s5, 356230
                  auipc        a2, 812813
                  addi         t4, s4, 1536
                  slti         a6, sp, 1219
                  lui          t0, 1005293
                  and          a6, s4, s6
                  sltu         s5, a0, a4
                  sub          s0, s1, s4
                  and          tp, t2, t5
                  xor          a4, gp, s7
                  srli         tp, s8, 21
                  lui          t0, 521316
                  addi         t6, gp, 439
                  sub          s9, a6, a0
                  nop
                  slli         t5, s3, 31
                  addi         s10, gp, -1367
                  srli         zero, s10, 11
                  nop
                  srai         a6, s6, 6
                  addi         s2, a7, 46
                  sra          s10, s6, s3
                  sltiu        t2, s7, 1714
                  ori          a2, ra, -395
                  slti         a3, t4, 1243
                  auipc        a2, 467757
                  lui          sp, 952372
                  sll          a3, s11, s7
                  slti         s5, s3, 2037
                  sltiu        a7, t3, -1262
                  sltu         s9, a4, zero
                  sltu         s10, a3, s9
                  addi         t3, s11, -1929
                  sltiu        t1, ra, 1372
                  sub          s2, zero, s4
                  sltiu        s2, s5, -379
                  andi         tp, zero, -250
                  sra          s5, s11, s2
                  srai         s11, a0, 31
                  srli         t5, s4, 25
                  slli         tp, t5, 11
                  andi         s2, zero, 1425
                  srl          s5, s0, s6
                  sltiu        s1, t4, 734
                  sltiu        t1, tp, -2037
                  srl          s5, t0, zero
                  or           s9, a7, sp
                  auipc        sp, 768336
                  andi         t0, t4, -385
                  ori          t2, a5, 1771
                  sll          s4, s6, s7
                  sltu         s4, a3, s4
                  sltu         t5, a7, a7
                  sltu         a5, s6, a3
                  sltiu        t1, a4, 295
                  sub          s0, s6, s0
                  nop
                  or           tp, s5, t2
                  srli         t0, s1, 29
                  ori          tp, t2, 282
                  auipc        t5, 683979
                  ori          s11, ra, 898
                  lui          t2, 834779
                  nop
                  and          a0, s4, a5
                  xor          zero, a0, a5
                  sra          s2, t2, s3
                  xori         ra, t5, 930
                  nop
                  sll          a3, gp, a0
                  sra          s1, a5, t5
                  andi         ra, s4, -1371
                  srli         a2, a2, 10
                  or           zero, t1, s0
                  sll          s9, t3, s9
                  lui          t5, 904527
                  slt          s9, s6, tp
                  add          sp, s10, zero
                  andi         a5, ra, 1343
                  add          s5, zero, a3
                  andi         s2, s3, -867
                  add          s10, a5, s4
                  addi         s4, gp, -1796
                  lui          a0, 219150
                  lui          t6, 882944
                  nop
                  xor          a5, s11, a4
                  sra          s6, ra, s0
                  srl          s6, sp, ra
                  andi         ra, a4, -755
                  srl          t5, s7, s11
                  srli         a1, s1, 17
                  and          t6, t2, s6
                  srl          t3, s2, s1
                  add          s5, tp, a1
                  addi         s6, t6, -1810
                  sltiu        s4, s5, 730
                  add          a4, t0, sp
                  sll          a3, s3, s0
                  sll          t4, s2, t1
                  sra          s6, t2, t6
                  sub          s6, a1, a0
                  ori          t5, a7, -1776
                  ori          a2, s10, -746
                  lui          t0, 842237
                  sltiu        ra, t5, -417
                  sltu         a2, s11, s9
                  slti         a4, a3, 425
                  xor          zero, t2, a2
                  add          a6, a1, s6
                  andi         s0, sp, 238
                  andi         t3, ra, 670
                  or           tp, s8, a2
                  slti         sp, s10, 1713
                  slti         s6, a0, -1308
                  sra          t0, s2, a6
                  xor          a2, s7, a5
                  sltu         t6, a2, zero
                  and          s1, s9, s11
                  srli         t3, a6, 3
                  lui          a3, 604634
                  sll          s9, tp, s5
                  nop
                  slti         s2, a5, 1235
                  xori         t4, s11, 1923
                  auipc        t4, 803898
                  ori          t3, s8, -1106
                  slt          tp, a4, t0
                  sltu         a0, sp, s1
                  sltu         a7, t0, s11
                  slli         t1, a7, 28
                  andi         tp, t2, -1053
                  lui          t1, 643982
                  sll          a2, zero, s8
                  srl          t1, s11, sp
                  or           s11, s0, a6
                  sll          s6, sp, sp
                  srl          a6, s11, gp
                  addi         zero, a6, -1598
                  nop
                  xori         a2, a5, -31
                  addi         s9, zero, 765
                  lui          t3, 1011315
                  srai         s0, s5, 4
                  slt          sp, s4, s4
                  nop
                  slti         s5, a7, 1296
                  addi         t5, gp, 1908
                  addi         s1, t4, -214
                  ori          t1, t0, -913
                  addi         t1, t1, -234
                  sra          s1, ra, gp
                  ori          t3, t2, 1374
                  or           gp, s5, t3
                  xori         ra, s11, -892
                  addi         tp, s4, 1172
                  and          sp, t4, t3
                  sra          t5, a0, t0
                  slt          t6, t4, s10
                  lui          t3, 312755
                  and          s5, a0, t1
                  sltiu        a2, a7, -1840
                  srli         s11, s8, 7
                  li           a6, 0x2a516446 #start riscv_int_numeric_corner_stream_1
                  li           s9, 0x0
                  li           gp, 0x80000000
                  li           s1, 0xffffffff
                  li           t0, 0xffffffff
                  li           a7, 0x6cd8361d
                  li           s0, 0x80000000
                  li           a3, 0x64d9a304
                  li           sp, 0x0
                  li           t4, 0x80000000
                  addi         s0, s1, 1863
                  auipc        t0, 776799
                  add          s1, sp, gp
                  auipc        a7, 861257
                  addi         a3, sp, 370
                  auipc        a7, 688879
                  lui          s9, 644761
                  auipc        s9, 1007781
                  sub          gp, a6, s0
                  nop
                  nop
                  nop
                  auipc        t0, 665655
                  add          gp, s9, a3
                  auipc        gp, 131103
                  auipc        sp, 462882
                  add          t0, s0, a6
                  auipc        t0, 888469
                  nop #end riscv_int_numeric_corner_stream_1
                  slt          a2, s1, a5
                  sra          a1, s0, a4
                  andi         s11, ra, 1864
                  sltu         s11, s10, sp
                  or           a5, t1, s10
                  sltu         a6, s5, gp
                  andi         t2, s8, 70
                  xori         a0, t1, -2004
                  srl          t0, sp, a7
                  auipc        t6, 119480
                  andi         tp, t3, -1216
                  add          ra, s3, t6
                  auipc        s9, 398626
                  srai         a4, t4, 27
                  ori          tp, gp, 1267
                  sltu         ra, a5, t1
                  lui          t4, 987711
                  slli         a6, s10, 2
                  add          sp, s3, s6
                  and          s1, t4, gp
                  lui          t1, 253036
                  slt          s2, s10, t4
                  slt          s5, t6, s7
                  and          ra, tp, t3
                  or           s6, a6, t6
                  slli         s1, s5, 22
                  sub          s10, t2, s10
                  auipc        t5, 201923
                  sll          s5, sp, t3
                  srai         s10, zero, 10
                  or           t2, t1, s0
                  auipc        s9, 714086
                  andi         sp, s6, -28
                  srli         ra, s9, 14
                  addi         a5, s9, -634
                  or           a2, a3, t3
                  srl          t6, tp, a5
                  slti         t3, s6, -1547
                  add          a2, a2, gp
                  addi         a4, gp, -1283
                  nop
                  xori         s2, s7, -1403
                  srai         s9, a3, 13
                  srli         t1, s1, 28
                  ori          t1, a2, 1052
                  and          a6, zero, zero
                  srl          t3, s7, s10
                  srai         a7, a5, 24
                  xor          s5, s6, t5
                  add          s6, a5, s4
                  sll          s4, t5, s11
                  sub          s2, a6, s0
                  add          s10, s6, zero
                  slti         t3, a3, -1323
                  lui          t4, 74635
                  auipc        zero, 547272
                  sra          a3, a7, s6
                  sltiu        s0, a5, -467
                  sltiu        s9, t3, 361
                  srli         zero, s5, 8
                  addi         s1, t4, 1104
                  slli         s9, a1, 2
                  sltiu        tp, s4, -1639
                  sra          sp, a2, s0
                  srli         t1, t0, 26
                  lui          s9, 252769
                  xori         s10, a2, 929
                  sra          t3, a5, s0
                  sll          tp, ra, a0
                  slti         a5, tp, -721
                  lui          t0, 944302
                  xor          a4, s5, a2
                  sra          ra, s6, s1
                  or           t2, a6, ra
                  sub          a1, t3, s11
                  srli         a0, s6, 7
                  auipc        sp, 891758
                  srli         a5, s7, 14
                  srai         gp, t6, 6
                  sra          a4, t1, s10
                  ori          t5, a7, -1828
                  sll          sp, s8, t2
                  slti         t2, a2, -104
                  srli         a5, t2, 28
                  nop
                  or           t1, t3, s5
                  or           s0, s3, t0
                  sra          ra, a0, s11
                  slli         s10, s5, 6
                  sltu         s2, t6, s3
                  add          s2, t5, s6
                  addi         a4, s4, 1777
                  xori         t0, s8, -1345
                  add          s0, a3, s6
                  add          a5, a4, a0
                  srai         a5, a2, 1
                  slli         a3, a3, 2
                  sra          a3, a5, zero
                  or           a6, t0, s11
                  sra          a5, a0, s3
                  lui          a6, 404353
                  xor          t2, tp, zero
                  nop
                  ori          s5, a5, 1910
                  slt          tp, s4, s0
                  sub          t6, s6, s0
                  sltiu        s2, t3, 1585
                  slti         a0, a2, 1002
                  and          s4, a2, s5
                  sub          a2, t0, t1
                  sra          tp, zero, a6
                  and          gp, t3, s3
                  add          s11, s6, a7
                  slti         s1, a3, -1004
                  lui          a2, 256767
                  sra          t6, tp, a3
                  sll          s1, s11, a5
                  add          s9, tp, tp
                  srai         t5, t4, 16
                  or           a2, s11, ra
                  slli         t6, t3, 15
                  sltu         s6, ra, a4
                  sub          ra, a3, gp
                  srai         s1, s4, 0
                  slt          a6, s10, a3
                  lui          tp, 963767
                  slti         t0, ra, -1329
                  and          s6, s3, t4
                  sltu         s9, s9, t4
                  slti         t0, s10, -84
                  sll          a5, tp, t5
                  sltu         ra, s1, gp
                  xor          s2, a2, a0
                  srai         s6, s7, 7
                  addi         tp, s3, 409
                  sll          t5, t5, a2
                  sltu         a2, s7, t4
                  srai         s11, a4, 5
                  sltiu        s4, sp, -1407
                  or           t2, s6, a4
                  lui          a5, 190124
                  sltu         a0, s0, a2
                  slli         t2, s5, 30
                  nop
                  srli         a6, a1, 6
                  nop
                  ori          a5, t0, 690
                  slt          t3, gp, t0
                  srai         s6, t2, 4
                  nop
                  auipc        a4, 78110
                  xori         t3, t3, 1258
                  sra          zero, t5, a4
                  sltu         s1, t4, s3
                  srl          t4, a7, s1
                  auipc        t5, 48678
                  auipc        a1, 624549
                  auipc        t2, 623754
                  sltiu        a4, a5, -340
                  slti         a0, zero, -868
                  andi         ra, a0, 128
                  and          ra, tp, s11
                  srli         a3, s8, 18
                  sra          s5, a1, a1
                  sll          t1, s1, s8
                  xor          sp, a2, a5
                  srl          s0, a4, s6
                  slli         a3, s6, 26
                  nop
                  ori          s11, s4, -1065
                  and          a4, a0, a0
                  or           a1, s3, t5
                  srl          gp, t0, s8
                  srai         s6, a7, 26
                  slt          s10, t5, t6
                  srl          t0, s4, a7
                  slti         s0, a7, 1824
                  sltiu        s2, a7, 434
                  xori         s10, a3, -1571
                  xor          t2, t0, s10
                  and          a6, s2, t4
                  srl          a6, s7, s6
                  lui          a3, 111838
                  xor          s10, a1, t6
                  xor          s6, t4, t5
                  slti         t0, ra, 1581
                  xori         s5, t6, -48
                  xori         s4, s7, 401
                  slli         t1, s10, 4
                  slt          t0, zero, t6
                  sll          a7, ra, s3
                  srli         s4, t6, 28
                  sra          tp, t4, tp
                  slti         tp, a1, 781
                  srl          s9, gp, s10
                  slt          s6, a5, s4
                  sub          s6, a6, s4
                  srai         t5, s2, 28
                  sltiu        a4, s0, 1561
                  sltu         s6, s5, t4
                  sltiu        s5, s5, 238
                  xor          zero, s3, tp
                  sltiu        a5, t2, -1988
                  srl          s0, a4, t5
                  add          s2, s1, a3
                  lui          s9, 160323
                  addi         t2, s9, 1551
                  xor          s10, s5, tp
                  ori          t3, s2, 1655
                  sltiu        a2, gp, -291
                  auipc        s0, 854007
                  slti         a0, s0, -173
                  sltiu        t6, a4, 1998
                  srl          s0, s0, s10
                  srl          s5, a6, s11
                  sltiu        a0, zero, -1721
                  slli         s4, a1, 7
                  add          s10, t5, t5
                  sltiu        a1, a7, -354
                  andi         tp, a1, -1566
                  xor          zero, a6, zero
                  andi         s0, t4, 170
                  addi         s11, a4, -2003
                  auipc        gp, 407858
                  lui          s5, 694287
                  andi         s9, s11, 654
                  srli         a5, ra, 6
                  andi         t1, a5, -1493
                  sra          s6, ra, a7
                  auipc        a6, 472545
                  xor          s1, s4, zero
                  sltu         s6, t5, zero
                  slt          a6, t4, ra
                  slli         a5, a1, 16
                  sll          t1, a7, s7
                  sra          a5, t6, a2
                  xori         a6, t4, -637
                  nop
                  srl          s1, t6, a7
                  slt          t3, s10, tp
                  add          t0, a1, s9
                  xori         t3, a4, -477
                  xori         s11, t0, -539
                  ori          a6, a3, 1987
                  ori          t3, ra, -1017
                  nop
                  srai         s2, a3, 10
                  ori          sp, a0, -617
                  nop
                  auipc        t5, 671239
                  or           s0, s0, s8
                  lui          a7, 291290
                  sltu         sp, t5, t6
                  sltiu        a7, s2, 1954
                  ori          s6, s8, -1957
                  slt          s9, a3, t1
                  andi         t4, s9, -1990
                  auipc        a5, 244732
                  xori         gp, t6, -485
                  slt          sp, t6, s4
                  sltiu        s10, tp, 1982
                  slli         t5, s2, 15
                  srl          sp, s8, s8
                  slli         s5, a3, 1
                  lui          gp, 705775
                  slli         s4, s1, 11
                  xor          s6, t4, s3
                  srai         s6, t5, 1
                  srai         t0, s0, 11
                  sra          s5, t1, a3
                  xor          t0, a3, a0
                  slli         t0, s8, 3
                  ori          s4, t2, 846
                  sub          ra, a1, s1
                  xori         s9, t6, 674
                  srli         s2, s11, 12
                  slti         a2, a3, -187
                  ori          s0, t5, -1576
                  ori          t5, t0, 1596
                  xor          s4, t3, s4
                  andi         a2, s3, 1983
                  lui          a7, 990046
                  add          t0, ra, t6
                  add          t0, s9, s10
                  slti         s6, s1, 1097
                  addi         a0, a1, -67
                  slt          s4, t1, s8
                  ori          s2, t1, -157
                  srai         ra, s1, 17
                  add          s4, s8, a5
                  xori         a6, a5, -489
                  srai         a3, s10, 27
                  nop
                  slli         a2, a1, 8
                  ori          a4, t5, 841
                  sra          s10, s5, s7
                  xor          a2, t6, a7
                  lui          sp, 524929
                  and          ra, s3, sp
                  srai         a1, a0, 11
                  sra          t4, t3, t1
                  and          s11, s11, s8
                  xor          s6, s6, sp
                  lui          s2, 833719
                  srai         sp, t3, 7
                  andi         a1, t4, 1715
                  slt          t1, s5, s6
                  addi         t0, s5, -1493
                  sll          a1, s6, s0
                  andi         a1, a5, 926
                  or           a3, a1, gp
                  sltu         s5, s2, t3
                  addi         t0, s8, 715
                  lui          a6, 245192
                  srai         tp, t4, 4
                  andi         s10, tp, -284
                  srli         a3, s6, 13
                  srl          t2, a3, t3
                  srl          a3, t3, sp
                  slt          t5, s3, a6
                  xor          t2, t6, s4
                  slt          a5, a6, a7
                  slli         zero, s8, 23
                  auipc        a5, 578457
                  srli         gp, sp, 12
                  andi         a3, s1, 480
                  and          s2, s1, a3
                  srl          s10, a4, s0
                  srl          a3, s2, s5
                  nop
                  addi         t5, gp, 1370
                  srl          s10, t0, s10
                  lui          ra, 1019758
                  sll          s10, a7, tp
                  xor          a4, a5, t2
                  sub          t3, a1, t4
                  ori          gp, a4, -1345
                  srli         s2, s9, 8
                  addi         s9, zero, -1651
                  or           s5, t3, s4
                  sub          a3, t2, t2
                  slt          zero, a5, s7
                  xori         t5, s0, 155
                  sltu         a7, s4, sp
                  slli         a6, t0, 6
                  slti         t3, a2, 1322
                  sltu         s5, t1, s6
                  xor          a3, gp, a4
                  slli         gp, s9, 23
                  xor          zero, a0, t3
                  add          a2, t3, s5
                  add          s6, t6, t3
                  srli         t0, s0, 18
                  lui          a6, 219952
                  andi         a3, s8, -1401
                  srai         a7, gp, 20
                  ori          a3, t6, 674
                  sub          t4, t0, tp
                  sll          ra, tp, t0
                  sltu         sp, t2, s9
                  srai         s0, s3, 4
                  nop
                  addi         a4, a5, -32
                  or           t4, s8, a5
                  lui          s1, 378915
                  slli         s0, t0, 25
                  nop
                  sltiu        tp, s9, -909
                  nop
                  slli         gp, a1, 28
                  sub          a4, s11, sp
                  andi         t6, t1, 103
                  srai         a0, t6, 26
                  xori         s0, s3, 1610
                  sltiu        a5, s8, -389
                  nop
                  nop
                  andi         zero, t4, 319
                  sltiu        a0, s0, 819
                  nop
                  srai         s0, a0, 18
                  slt          a4, t5, a0
                  addi         s6, sp, 1469
                  sra          s11, zero, s0
                  sll          s5, s5, a4
                  xor          gp, s6, gp
                  srl          zero, t0, a3
                  sltu         gp, a4, a3
                  srai         a2, a5, 3
                  sltiu        s0, a7, 964
                  sra          t3, s5, zero
                  ori          s2, zero, -320
                  xori         a4, a0, -916
                  auipc        t6, 629474
                  andi         a2, s3, -1471
                  slli         s4, t3, 23
                  sra          t1, a2, t5
                  addi         gp, s0, -1781
                  andi         s1, t2, -805
                  sltu         a3, a1, t6
                  ori          a1, t0, -216
                  sll          t2, s5, zero
                  add          zero, a6, s11
                  slti         a1, s0, 1587
                  or           a0, t5, t0
                  sltiu        tp, a1, 425
                  xori         t5, sp, -482
                  andi         s0, s11, 1978
                  slli         a6, a3, 2
                  sll          t4, t2, s7
                  addi         a4, gp, -1770
                  srai         t5, s10, 22
                  sll          t5, a6, gp
                  srli         a5, a6, 21
                  addi         s4, s6, 1130
                  sra          a5, s8, t1
                  or           s1, sp, a7
                  slti         a4, s4, -550
                  ori          a1, t4, 204
                  and          a7, s5, s8
                  slti         ra, s6, -1033
                  nop
                  sra          a0, s0, s11
                  sra          s0, s8, a5
                  nop
                  addi         s2, a0, 87
                  slti         a7, s11, 808
                  addi         s5, t3, -547
                  sltu         a7, t6, gp
                  auipc        s4, 971652
                  auipc        t6, 694732
                  slt          a6, s0, zero
                  slti         a4, s11, 1450
                  and          t3, t4, s6
                  srai         t0, s3, 3
                  srai         t2, a6, 1
                  srai         s6, s10, 9
                  andi         zero, zero, 1461
                  andi         s9, a3, -379
                  andi         a7, gp, -1122
                  nop
                  addi         s2, s9, 1110
                  addi         tp, a0, 1949
                  addi         s5, s2, 789
                  sltu         t5, s9, s0
                  add          sp, t3, a0
                  or           a2, a1, s7
                  slti         t0, s2, 36
                  and          s5, t3, t1
                  sra          zero, a0, s1
                  srai         t1, s4, 29
                  nop
                  xor          sp, a4, s5
                  srl          s4, tp, s11
                  sra          t5, gp, gp
                  slti         ra, t2, 729
                  lui          t6, 814408
                  xor          t3, ra, s7
                  slli         s0, s9, 8
                  nop
                  srai         t6, s1, 10
                  addi         s2, a7, 1565
                  addi         s2, a0, -832
                  and          a4, a6, a7
                  sll          a1, gp, s9
                  add          a3, ra, sp
                  slti         t6, t1, 1886
                  andi         s5, ra, -288
                  add          s0, tp, s9
                  slli         s11, a5, 28
                  nop
                  slli         zero, gp, 28
                  addi         a3, gp, 1274
                  lui          t4, 800596
                  srl          s2, a7, t5
                  srl          a7, t0, a5
                  and          s5, a5, t4
                  srai         s10, a6, 24
                  addi         s1, a5, -1858
                  sub          t5, t3, a2
                  sltu         s2, t0, gp
                  andi         s6, t2, -1603
                  srl          s0, s1, gp
                  slt          t5, gp, t4
                  ori          sp, s1, -83
                  slt          sp, s7, s4
                  sll          t4, a7, ra
                  slt          t3, t3, ra
                  srli         a7, a4, 4
                  sub          a2, a2, a2
                  nop
                  srl          t4, a1, s11
                  ori          ra, s4, 102
                  sub          a5, s5, s10
                  add          a3, s0, t4
                  andi         a3, s5, -54
                  and          s6, a7, s5
                  addi         s5, a5, -644
                  sra          s2, a6, a7
                  sll          s9, tp, s10
                  srl          gp, t5, t2
                  sll          s0, t3, sp
                  sra          a7, s5, a3
                  slti         a4, a6, 1201
                  srai         a7, t6, 20
                  nop
                  nop
                  or           t3, a6, a4
                  slli         s11, t0, 10
                  slli         a4, t6, 28
                  xor          a5, a3, s9
                  sll          a4, a7, t5
                  auipc        s1, 996876
                  slti         a1, a3, -641
                  sll          s6, a6, s7
                  or           t4, tp, a2
                  lui          t5, 95455
                  xor          a1, a2, a1
                  srai         s4, zero, 17
                  sltu         a5, t6, s2
                  lui          s6, 280926
                  xor          t3, s4, s3
                  sltu         a6, s7, t6
                  lui          gp, 841354
                  lui          s10, 969139
                  sltiu        t0, t5, -805
                  addi         s10, a6, 689
                  addi         t4, a5, -1021
                  srl          s0, a7, sp
                  andi         s4, s11, 2040
                  lui          a2, 433002
                  srli         sp, a4, 29
                  sltu         sp, s7, s0
                  srli         s4, sp, 21
                  ori          t0, sp, -118
                  add          t1, a6, t4
                  andi         t3, s5, -950
                  xor          s11, a5, sp
                  andi         a5, a1, 623
                  sub          s2, s7, t5
                  auipc        a3, 314776
                  and          a5, t2, a1
                  andi         a4, gp, -1759
                  srl          s6, a5, s2
                  sra          s0, t1, t0
                  srli         s1, t0, 31
                  lui          s11, 792699
                  srli         t5, s0, 4
                  auipc        t2, 320505
                  or           s0, s6, t6
                  ori          t6, s4, 1114
                  slli         s10, a1, 9
                  or           tp, t6, s4
                  nop
                  sra          a7, ra, a7
                  srl          t5, a6, ra
                  srl          s6, s1, sp
                  andi         a3, s2, 125
                  or           a5, s4, a5
                  slti         ra, s10, 845
                  sub          t4, a2, t3
                  sra          a1, a7, s1
                  srl          a0, t0, t3
                  andi         s1, s0, -655
                  ori          a3, a6, -800
                  auipc        s5, 320867
                  or           s0, s3, t5
                  andi         tp, a4, 327
                  slt          s11, a3, s9
                  addi         tp, a2, -1191
                  addi         zero, s9, -482
                  sltu         t2, s6, s9
                  srai         t4, t0, 29
                  nop
                  srai         t3, gp, 4
                  addi         a0, s1, 2040
                  slti         s5, s4, 338
                  slt          ra, a3, s11
                  slt          s5, s0, a1
                  sra          a2, a1, s3
                  ori          s5, s4, -1115
                  nop
                  sll          ra, a3, t6
                  slt          s0, t3, s8
                  addi         a4, t0, 1999
                  lui          s11, 533039
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s6, 0xc0440145
                  li           t0, 0x0
                  li           a3, 0x80000000
                  li           s5, 0x80000000
                  li           t6, 0x80000000
                  li           a5, 0x61f45665
                  li           t1, 0xffffffff
                  li           s11, 0x468f6e37
                  li           a0, 0xffffffff
                  sub          s11, a6, a0
                  lui          s6, 976571
                  addi         a5, s11, -992
                  nop
                  nop
                  auipc        t1, 953275
                  lui          t1, 817996
                  add          a5, s5, s5
                  addi         a6, a5, 1929
                  sub          a0, t0, t1
                  auipc        t1, 318555
                  addi         t6, t6, -2046
                  auipc        t1, 1047907
                  sub          a0, t1, t0
                  nop
                  auipc        t6, 371649
                  nop
                  sub          s5, s6, a5
                  sub          a3, s11, a0
                  sub          s5, s5, a3
                  lui          t0, 759157
                  add          a3, t1, t6
                  lui          s6, 1033752 #end riscv_int_numeric_corner_stream_5
                  xor          t5, t5, s6
                  sub          a6, s4, s3
                  slti         t2, s9, -1755
                  sub          ra, t1, t3
                  lui          t3, 215766
                  xor          t6, a0, t6
                  andi         a4, s5, -1559
                  sll          s9, s6, s11
                  srai         s11, t1, 29
                  lui          a0, 592863
                  ori          s5, a6, 1266
                  ori          s9, a6, -1007
                  ori          sp, t2, -566
                  sra          sp, tp, a0
                  slt          t1, a6, s9
                  and          s5, a4, s8
                  or           t4, a4, t6
                  andi         a6, sp, -1589
                  sub          t3, t2, a0
                  sltiu        t3, t2, 1357
                  nop
                  srai         t3, gp, 26
                  srli         zero, sp, 3
                  and          s5, a7, t0
                  srli         t1, s2, 11
                  sltiu        s11, t5, 1014
                  sub          a7, s11, a4
                  sltiu        a1, s5, 711
                  lui          sp, 760205
                  xor          sp, tp, a6
                  slti         s4, ra, 791
                  ori          t5, s9, -1707
                  add          t3, a6, t4
                  auipc        a2, 444876
                  or           a2, s10, a1
                  sub          t6, t0, s1
                  and          s11, s3, a0
                  slt          t1, zero, t1
                  sra          zero, tp, t1
                  srai         a1, ra, 1
                  slti         tp, s3, -466
                  sltiu        a2, s5, -904
                  nop
                  srai         a2, ra, 5
                  sub          a6, a4, a1
                  slli         s10, gp, 12
                  sra          t6, s6, a7
                  sltu         t6, a7, tp
                  ori          ra, t2, 1478
                  nop
                  and          s1, t2, gp
                  auipc        t4, 409609
                  andi         s6, t3, 152
                  srli         a0, t3, 16
                  slti         sp, s8, -1766
                  sltu         ra, s1, t3
                  srli         a6, ra, 1
                  or           t2, a5, t2
                  addi         a1, a4, 647
                  xor          ra, s9, s2
                  sll          t3, s11, t0
                  andi         t2, t6, 1269
                  xor          s1, a2, a7
                  srl          t5, a7, sp
                  sll          zero, t6, s0
                  sub          t3, a4, s6
                  lui          t6, 143365
                  sltiu        s1, s1, -17
                  add          t2, s5, s6
                  addi         a7, t6, 296
                  sltiu        a3, s6, 55
                  sub          s11, a1, a6
                  addi         s11, t1, -1893
                  nop
                  auipc        s6, 375651
                  nop
                  add          zero, a2, a4
                  sltu         s0, s2, t2
                  sra          s9, s8, a2
                  ori          ra, t3, 1927
                  sll          s9, s1, a0
                  nop
                  sll          s4, s7, a3
                  add          s11, t2, t2
                  addi         a3, s1, -1544
                  srli         t6, t0, 7
                  xor          tp, s7, a6
                  srli         a4, a3, 16
                  add          a6, a0, s9
                  add          ra, s2, s8
                  ori          a4, s1, -1448
                  srai         t0, sp, 3
                  ori          s10, a6, -986
                  and          t1, s11, a4
                  sltu         a1, t3, t6
                  sub          t4, a6, s9
                  and          t5, t3, a3
                  srl          s9, t2, a5
                  andi         s4, a7, -878
                  or           a3, a3, t4
                  add          tp, s10, a4
                  sll          zero, ra, s0
                  lui          a4, 77729
                  and          t3, s7, sp
                  ori          a4, t2, 195
                  sra          s9, tp, t6
                  auipc        t4, 941229
                  srli         s10, s2, 21
                  sltu         t1, s10, a7
                  srl          a5, s7, s6
                  xor          t2, sp, a6
                  xori         s5, s1, -1872
                  and          a3, s11, t5
                  xori         s5, s1, 478
                  sra          a2, s5, t2
                  nop
                  or           zero, a2, t4
                  and          t2, s9, s10
                  srl          t4, gp, s10
                  or           t3, t6, s11
                  sll          s10, a6, s10
                  addi         ra, s5, -1523
                  sll          gp, s2, tp
                  andi         s2, a7, 1499
                  srl          a0, t4, s9
                  and          a7, tp, t6
                  nop
                  sub          s11, t5, tp
                  slti         s4, tp, -1875
                  or           s9, t5, s7
                  ori          s2, t6, 311
                  nop
                  slti         s5, s0, -1852
                  or           sp, t2, a3
                  ori          gp, s8, -1515
                  sll          sp, s5, s6
                  sra          a4, t6, t4
                  srl          a4, a3, s11
                  sub          t0, t1, s9
                  xor          t5, a7, t0
                  sra          tp, s10, s5
                  srl          t2, s0, s1
                  srli         a5, t5, 11
                  xori         ra, sp, -580
                  sub          s4, a5, s9
                  sub          sp, tp, zero
                  addi         a1, s6, 469
                  ori          s9, t1, -656
                  ori          a7, s10, -1238
                  sra          a5, s1, a0
                  srl          a3, a4, t6
                  slli         zero, t4, 14
                  srl          ra, s8, a4
                  addi         a5, s3, -1490
                  lui          ra, 829173
                  addi         s10, s2, -476
                  ori          t5, a2, -1823
                  nop
                  sll          s6, gp, s5
                  nop
                  slti         a0, a6, -768
                  xori         s5, sp, 107
                  auipc        a1, 601836
                  slt          ra, gp, t4
                  add          ra, a2, s5
                  ori          s5, a5, -108
                  andi         gp, a0, -1215
                  ori          ra, t5, 977
                  xori         zero, s7, -113
                  sll          a6, s4, s3
                  addi         s9, t4, -1985
                  sra          s0, s9, t6
                  addi         a4, t1, -1648
                  slli         s6, a1, 29
                  andi         tp, a4, 324
                  sub          a6, a1, t1
                  add          s10, t4, sp
                  auipc        sp, 885998
                  nop
                  sra          zero, s9, a7
                  addi         a6, s8, 1368
                  srl          s4, t5, s10
                  slti         a6, t4, 1533
                  andi         s0, a1, 560
                  addi         s10, s1, 558
                  auipc        a7, 458780
                  nop
                  xor          t5, s7, s7
                  sltiu        zero, s0, -1768
                  sltiu        a0, t1, -881
                  auipc        s6, 535720
                  slti         zero, s2, -1232
                  ori          s2, t4, 748
                  sll          ra, sp, s1
                  auipc        a7, 681051
                  andi         zero, t0, -731
                  srl          a2, a1, t1
                  sltu         s10, s11, gp
                  nop
                  nop
                  sll          s1, s6, s9
                  auipc        s11, 224488
                  auipc        s10, 836185
                  or           t5, a3, s3
                  or           gp, s10, s0
                  sltiu        t0, a4, 1148
                  sltiu        s2, t1, 1499
                  or           t3, a3, a5
                  xor          t1, t4, t6
                  sll          a4, a5, s10
                  sltiu        t2, a0, 1566
                  sub          s10, a1, ra
                  andi         ra, a0, -1447
                  xori         ra, ra, 409
                  add          s2, a7, zero
                  andi         s6, a3, -1164
                  sll          a4, t2, s2
                  add          t4, t5, s4
                  srl          sp, t2, t5
                  srai         a4, a4, 30
                  srl          t5, ra, a0
                  xor          gp, s1, tp
                  sll          s10, a5, zero
                  add          t5, gp, a6
                  nop
                  add          a7, t2, s1
                  addi         s1, t5, 58
                  sub          s5, a2, s11
                  and          a1, s7, a6
                  andi         tp, s1, -386
                  auipc        t0, 130953
                  slli         tp, t2, 28
                  srli         a6, t2, 0
                  xori         sp, t4, -499
                  add          a4, t0, zero
                  ori          a4, a1, -1698
                  srai         s2, a4, 14
                  srl          t5, a4, s4
                  srl          s6, s4, t2
                  addi         zero, t2, 1420
                  or           s0, s3, a6
                  srai         gp, t0, 18
                  addi         t6, t4, -1649
                  auipc        ra, 522589
                  sltiu        a6, a4, -1839
                  nop
                  sltiu        s2, s11, 1776
                  sra          s5, a3, t3
                  slti         t6, t2, 566
                  sra          t4, zero, a7
                  sltiu        s11, s5, 1918
                  and          a0, ra, t6
                  auipc        t1, 142199
                  and          a4, zero, s10
                  slt          t5, s9, s7
                  srl          s0, a4, ra
                  sltu         gp, a0, s3
                  sltiu        s11, gp, 1162
                  add          zero, s2, s4
                  slli         a2, a1, 12
                  srai         s2, s4, 27
                  andi         a2, gp, 332
                  slti         s1, t1, -1748
                  addi         s11, s2, -980
                  srl          a4, a1, a3
                  sll          a6, zero, a6
                  lui          s2, 612494
                  srli         s11, ra, 28
                  srai         s0, a4, 27
                  nop
                  or           a2, a0, s5
                  sltiu        s4, s0, -1104
                  addi         zero, a1, 1072
                  slli         tp, tp, 18
                  lui          s2, 408652
                  addi         a4, t2, -552
                  xor          s4, s9, gp
                  slt          gp, t2, s9
                  add          s11, a1, t3
                  slt          s11, a6, sp
                  auipc        a3, 970070
                  auipc        zero, 481894
                  xori         s9, a5, -622
                  srli         t2, a7, 5
                  slli         a3, s1, 0
                  sltiu        a4, t1, -1036
                  sub          s1, s8, t5
                  add          tp, s7, s8
                  ori          gp, a4, -1889
                  srli         s10, a0, 0
                  sltu         tp, tp, tp
                  and          t2, a5, s11
                  andi         a1, a3, 911
                  xori         sp, t0, 1285
                  ori          s0, s6, -1860
                  xori         s2, s5, 1903
                  and          t5, a6, s6
                  sub          s2, a7, a1
                  srl          a1, t4, s11
                  nop
                  ori          a2, a3, 1320
                  xori         a1, ra, -504
                  auipc        s6, 390501
                  sltiu        a3, zero, -1841
                  add          s1, s3, a7
                  or           s5, s7, t2
                  add          t6, t4, a3
                  sra          t4, s3, s1
                  and          s4, s4, zero
                  addi         s2, a2, 1789
                  sltu         s4, s4, s6
                  xori         s10, s6, -413
                  nop
                  auipc        t6, 35955
                  or           a7, a6, t3
                  srli         t1, t5, 27
                  slti         t6, s7, 626
                  add          t4, s5, s0
                  addi         s6, s4, -726
                  lui          t6, 394841
                  slli         a1, a1, 8
                  slli         t1, t1, 10
                  srai         gp, sp, 5
                  xori         a1, a4, 341
                  sltu         t5, a3, ra
                  auipc        gp, 453827
                  auipc        a4, 979879
                  or           t6, s1, a0
                  slt          a7, s10, ra
                  add          gp, s1, a7
                  xor          a3, s5, t0
                  nop
                  slli         zero, s2, 30
                  xori         t5, zero, -393
                  lui          s9, 727892
                  xor          s10, s8, t3
                  sll          t3, a4, sp
                  xor          a1, s4, zero
                  slti         s10, s10, 1234
                  nop
                  sra          s1, s9, a5
                  sll          tp, gp, tp
                  and          t1, a1, t2
                  slt          t1, tp, tp
                  add          a1, s6, s4
                  xor          t1, s2, s9
                  nop
                  xori         t3, s7, 1935
                  and          a5, t6, a4
                  slt          tp, t5, a1
                  sltu         zero, t6, t4
                  slti         s1, sp, -1945
                  sra          a3, t6, s1
                  xori         a7, a3, -2031
                  srl          t2, s0, s10
                  sub          a7, t3, s1
                  addi         t5, tp, 1917
                  srai         a2, ra, 21
                  slti         a1, s4, 945
                  addi         t6, t2, -159
                  srl          a3, a7, s7
                  slli         s6, a2, 25
                  auipc        tp, 738202
                  auipc        gp, 866845
                  and          s11, s2, zero
                  slli         a3, t6, 21
                  xor          a1, t3, t1
                  slli         a4, s8, 10
                  srai         a2, t1, 31
                  addi         s10, s6, 1696
                  sltiu        tp, s7, -1923
                  add          s5, a4, s1
                  li           t4, 0xaa50045 #start riscv_int_numeric_corner_stream_6
                  li           s1, 0x80000000
                  li           a5, 0xffffffff
                  li           a2, 0xffffffff
                  li           s11, 0x0
                  li           sp, 0x3a6e1bb6
                  li           t2, 0x80000000
                  li           t6, 0x152ff2f4
                  li           a6, 0xffffffff
                  li           s4, 0xffffffff
                  nop
                  add          t2, s11, t2
                  addi         a5, t4, 1909
                  add          a6, s4, t6
                  nop
                  auipc        a5, 467200
                  lui          t4, 861105
                  add          s1, a2, a5
                  sub          t4, t2, a6
                  auipc        t2, 402276
                  add          t2, s1, a5
                  addi         t6, t6, -1766
                  sub          a6, s11, sp
                  sub          a2, a5, t4
                  add          a2, s1, t4
                  addi         a6, sp, -1298
                  add          a5, sp, s1
                  auipc        s4, 368995
                  auipc        a5, 221438
                  nop
                  sub          s4, s11, t6
                  sub          a6, a2, a5
                  add          a6, s11, t2
                  auipc        t2, 78351
                  lui          s11, 876580
                  addi         a6, s11, 930
                  add          s4, sp, a5
                  auipc        t6, 783037
                  addi         a5, a5, -1842
                  nop #end riscv_int_numeric_corner_stream_6
                  sll          a3, t5, a3
                  sub          a5, a3, s0
                  slli         t4, a5, 0
                  auipc        a2, 568251
                  srai         s0, a5, 7
                  sll          ra, a5, a3
                  sub          t0, s9, t4
                  sltu         tp, t3, s10
                  sll          a3, t2, t1
                  addi         a0, s8, -670
                  andi         a6, tp, 906
                  xori         t5, zero, 1643
                  srli         t6, t5, 16
                  and          a7, s1, a4
                  addi         s6, s7, 760
                  xor          a3, t0, a5
                  srli         t0, tp, 21
                  slli         a0, s10, 26
                  xor          t5, t0, t2
                  or           s9, s5, t1
                  srl          s9, a4, s6
                  ori          a3, ra, 927
                  srl          a4, t5, s2
                  slt          zero, s0, sp
                  nop
                  sltiu        t2, a4, -205
                  sltu         s4, sp, s11
                  sra          s0, s1, s0
                  srl          s9, tp, s8
                  xori         s2, t6, -688
                  sub          a7, t3, t2
                  auipc        t2, 259492
                  addi         s11, s11, -121
                  srli         a3, s0, 18
                  nop
                  srl          s5, t1, t3
                  srli         t5, a6, 18
                  sltiu        s9, a6, 246
                  ori          t2, t2, 98
                  sltu         a5, a4, t1
                  nop
                  slli         s4, s1, 6
                  slt          s0, a0, s10
                  addi         a1, a5, 186
                  sltiu        s2, a0, 1690
                  add          s9, a3, t5
                  nop
                  nop
                  xor          a7, s0, s5
                  sub          a3, sp, a2
                  add          a3, s5, t6
                  addi         a1, s9, 1304
                  nop
                  srai         t3, tp, 25
                  srli         t6, s2, 1
                  slli         a5, a7, 13
                  sra          sp, s1, a7
                  slt          t1, t5, s8
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           a1, 0xffffffff
                  li           s6, 0xf7a3a58
                  li           tp, 0x359a36b8
                  li           t1, 0x0
                  li           s2, 0x0
                  li           sp, 0x80000000
                  li           gp, 0x9cfeb333
                  li           s0, 0xffffffff
                  li           s9, 0x0
                  auipc        gp, 279697
                  nop
                  auipc        s2, 325008
                  nop
                  addi         ra, s9, 1026
                  addi         tp, gp, -335
                  lui          tp, 75973
                  auipc        gp, 181101
                  lui          s0, 500524
                  nop
                  add          sp, s2, gp
                  nop
                  addi         t1, sp, 1707
                  add          t1, tp, t1
                  lui          tp, 193209
                  nop
                  addi         s0, t1, -1199
                  sub          s6, s0, gp
                  auipc        sp, 31530
                  lui          t1, 337891 #end riscv_int_numeric_corner_stream_9
                  srai         tp, s1, 21
                  ori          t5, s0, -1080
                  xori         a6, tp, 102
                  add          s9, tp, a7
                  auipc        a6, 119200
                  sltu         tp, s8, s9
                  add          gp, s9, s10
                  and          s6, ra, a7
                  add          t2, s7, s7
                  or           a7, tp, s9
                  xori         s2, a4, -1558
                  sll          t3, a3, t6
                  add          s0, s6, a4
                  nop
                  srai         a3, a5, 20
                  add          ra, a4, zero
                  and          t3, s7, a4
                  srli         s2, a1, 2
                  auipc        t3, 890901
                  nop
                  slt          s1, t4, t5
                  srai         s0, s4, 8
                  sub          s5, t1, s1
                  sra          a0, a6, t3
                  and          a5, t1, s1
                  sll          s10, a5, s9
                  ori          a5, sp, -1367
                  addi         a7, a0, 1316
                  slli         a0, s8, 11
                  sltu         s6, s1, s0
                  lui          s9, 962057
                  nop
                  sltu         s5, s2, s8
                  sra          s11, s6, t3
                  sltu         t0, s9, t3
                  slt          a6, a0, s4
                  or           s5, a2, s4
                  sra          t5, s7, zero
                  nop
                  add          s1, gp, s6
                  andi         t1, a6, -1066
                  sub          tp, a6, a0
                  xor          sp, s7, s5
                  sltiu        gp, a1, 452
                  sub          zero, s5, t3
                  ori          s2, t3, -538
                  or           s2, s6, tp
                  srai         s9, a1, 19
                  slti         a1, a6, -124
                  and          a4, s10, s5
                  andi         s10, a6, -876
                  lui          a5, 266159
                  srl          s2, s2, s2
                  and          t2, s10, t5
                  addi         a6, s9, 906
                  lui          t5, 954986
                  xori         zero, t6, -946
                  andi         sp, s11, 1412
                  andi         ra, a2, -1226
                  srai         a1, t6, 17
                  xori         t3, s9, -1690
                  addi         a0, a6, -695
                  xori         a4, s10, 869
                  sll          a5, a0, t2
                  addi         t6, a2, 595
                  nop
                  or           t2, a3, t6
                  addi         s11, t3, -1375
                  slti         a2, s5, -913
                  sll          gp, s8, s5
                  addi         a0, a3, -477
                  addi         s6, s6, 251
                  sra          s6, a2, t4
                  andi         s2, s3, 2037
                  xor          t0, s11, t3
                  ori          a0, t0, -756
                  sltu         s5, s9, s9
                  srli         s0, t0, 15
                  srl          s0, t0, t2
                  slt          s11, sp, a1
                  sra          t6, ra, ra
                  sub          a0, s7, t1
                  lui          s4, 281155
                  sltiu        a1, t4, 1790
                  sub          a5, t6, t1
                  sub          a0, s8, a3
                  srai         a6, s2, 8
                  srai         sp, ra, 21
                  addi         s2, a7, 1573
                  or           t2, a1, s2
                  add          a0, s8, a4
                  and          s9, s8, ra
                  sub          t2, a6, ra
                  slti         s4, s0, 802
                  andi         a5, s9, -596
                  sra          s0, s0, t4
                  xori         s9, a2, 54
                  slt          s4, s3, a1
                  ori          a4, s5, 732
                  auipc        a0, 154106
                  slli         a7, s8, 17
                  slt          s11, s6, s1
                  lui          sp, 102273
                  andi         s0, a0, 1655
                  nop
                  addi         t3, a0, 950
                  sll          t0, s11, s8
                  lui          zero, 1027232
                  slt          t4, s6, a4
                  xor          s9, a5, t5
                  slt          zero, s9, s0
                  sra          t5, t6, s9
                  srai         gp, zero, 3
                  xori         gp, tp, -1320
                  sub          ra, s7, a3
                  sltu         s0, s4, s4
                  andi         s1, s8, -238
                  andi         s2, s0, 1579
                  srai         s10, t6, 9
                  or           a4, gp, s8
                  slli         s4, gp, 17
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           t2, 0x8eafba16
                  li           a1, 0xde6b578b
                  li           t5, 0x0
                  li           sp, 0x80000000
                  li           s0, 0x80000000
                  li           s9, 0xa1cc895e
                  li           t3, 0x0
                  li           a3, 0x37b7a0f2
                  li           a0, 0xffffffff
                  sub          a3, a0, s9
                  sub          t3, s0, t5
                  add          a1, a1, a5
                  lui          a1, 722708
                  sub          a3, a1, t5
                  addi         a0, a0, -1835
                  nop
                  nop
                  lui          a0, 215728
                  sub          s0, t5, a1
                  lui          a1, 537849
                  auipc        s0, 1028979
                  addi         t3, t2, -704
                  sub          a3, a5, a3
                  auipc        t5, 31666
                  nop #end riscv_int_numeric_corner_stream_4
                  xor          t6, t5, s5
                  add          s9, ra, a4
                  or           s5, gp, a7
                  addi         tp, a0, -451
                  sll          a4, t4, a4
                  slt          a6, tp, t1
                  sll          a6, s6, t2
                  sll          s5, s9, s11
                  srl          a7, s2, t3
                  lui          a3, 600363
                  sll          t2, t3, a2
                  ori          a6, zero, 453
                  slli         t2, a0, 10
                  srli         a7, a1, 9
                  lui          t2, 216873
                  sltiu        a5, t2, 372
                  auipc        sp, 637421
                  sll          sp, t5, gp
                  sra          t5, sp, t6
                  srli         s0, t5, 8
                  slli         t1, a0, 3
                  srl          a7, a7, a5
                  or           t4, a3, t6
                  sltiu        tp, s6, -538
                  xor          a7, t1, s10
                  sub          s5, tp, s11
                  slli         gp, s8, 26
                  andi         s5, s1, 1912
                  srl          t3, a7, s6
                  sra          s10, s3, zero
                  sltu         a4, t4, s0
                  addi         s10, t1, 752
                  sra          a4, a2, zero
                  addi         t1, t0, 1861
                  srli         sp, s11, 29
                  addi         a2, s4, 1092
                  and          t4, ra, gp
                  sra          s4, s8, s9
                  xor          s5, a1, a0
                  sra          ra, t0, s0
                  sltu         s2, t1, s1
                  and          s2, s1, a4
                  or           t3, a6, a4
                  sra          t2, a0, sp
                  nop
                  slt          zero, gp, a3
                  ori          a7, t5, -1783
                  addi         t4, s0, 1728
                  xori         t2, s10, -1656
                  or           t0, t6, a0
                  and          tp, s5, t0
                  sltiu        sp, t6, 1244
                  sra          a5, s8, s1
                  slt          gp, s11, a2
                  srl          s6, tp, t1
                  sltu         a2, s2, gp
                  srl          gp, t6, s3
                  auipc        s5, 591805
                  andi         s1, a6, 1261
                  xori         zero, a5, -1300
                  srli         a1, a7, 1
                  lui          s6, 1018888
                  xor          t3, sp, t0
                  nop
                  sub          t3, s0, s11
                  xori         t4, s2, -1240
                  add          s9, a5, gp
                  srl          s5, s10, sp
                  andi         a5, a6, -750
                  slti         gp, s1, 1023
                  sra          s1, a3, a6
                  sra          a2, tp, a1
                  xori         a0, sp, 861
                  slt          a6, zero, a2
                  nop
                  sll          s0, sp, t2
                  nop
                  slt          t3, s8, a1
                  auipc        a6, 13958
                  or           t2, s6, s0
                  slt          a3, s2, s9
                  slt          sp, a7, a5
                  auipc        s1, 1041545
                  xori         zero, t3, 111
                  xor          s10, s11, t4
                  xori         s0, a3, 1955
                  lui          zero, 241508
                  lui          s9, 453492
                  sra          t5, t5, t2
                  or           a4, s3, t1
                  slti         s11, sp, 722
                  sltiu        tp, tp, 48
                  xor          a3, a4, gp
                  slt          sp, t6, s5
                  sltu         s4, a3, ra
                  ori          a3, a4, -1658
                  add          s9, s11, ra
                  srli         zero, sp, 26
                  addi         tp, s1, 111
                  xor          a3, t5, a1
                  slli         a3, a1, 24
                  xor          a6, t2, s7
                  sra          gp, t4, a3
                  and          s4, a2, t5
                  andi         a0, sp, -352
                  andi         a1, s4, -957
                  sltu         s5, s1, a5
                  and          t6, t5, s1
                  sra          a6, t2, zero
                  add          s9, a1, s8
                  addi         s11, s2, -591
                  auipc        gp, 312947
                  auipc        s9, 264118
                  sra          a0, sp, t1
                  srli         a3, t6, 15
                  add          t4, s0, zero
                  addi         a5, t3, 1524
                  sltu         t6, t2, s2
                  nop
                  auipc        t3, 132372
                  sltu         a6, s6, a4
                  nop
                  xor          a3, s4, a1
                  and          t3, a7, a2
                  lui          a4, 290398
                  sra          a2, s8, s9
                  xor          a1, s10, zero
                  srl          t1, a0, a0
                  srai         a6, s0, 0
                  slti         s2, a2, 1517
                  sltiu        s6, ra, 1720
                  sltu         a5, zero, a4
                  srl          t3, s7, s6
                  auipc        t4, 572654
                  slti         a1, t0, 333
                  srai         a4, s0, 3
                  slt          t1, zero, a1
                  lui          a2, 964352
                  srai         sp, t2, 19
                  nop
                  and          a1, a6, s0
                  slli         a0, ra, 17
                  slt          a1, s4, s0
                  andi         sp, s3, -1415
                  or           s1, s8, s11
                  sltu         s5, a5, s3
                  xori         a3, t1, 1117
                  xori         s6, t4, -1654
                  lui          t5, 1016065
                  sub          a7, a3, a6
                  xor          t4, s10, sp
                  xori         t2, s5, -917
                  lui          t5, 82923
                  or           t6, t3, s11
                  ori          ra, s5, 2035
                  or           a5, ra, zero
                  nop
                  auipc        t1, 413953
                  srli         s5, zero, 8
                  ori          a4, a1, 558
                  sra          t2, t0, tp
                  auipc        t5, 692239
                  srl          zero, s1, s4
                  srl          s4, s4, gp
                  lui          a7, 166877
                  lui          s2, 683414
                  xor          s10, s1, t1
                  slti         gp, s3, 1339
                  srl          tp, ra, s0
                  xori         s2, s5, -1728
                  lui          s5, 315929
                  add          a1, s1, t2
                  sll          zero, a6, a6
                  xor          a3, t2, s10
                  add          zero, a5, a4
                  sra          s4, a1, a4
                  xor          a1, gp, t3
                  slti         ra, ra, -1458
                  slti         a2, s8, -739
                  srli         s11, s11, 1
                  sra          a3, s5, a4
                  add          a2, t3, s8
                  xori         sp, s10, -1329
                  srli         a4, t2, 14
                  srli         s10, s7, 18
                  slt          a2, s5, gp
                  sll          s0, s1, a2
                  ori          a2, s0, 1959
                  andi         s6, t0, 342
                  nop
                  addi         s10, t6, -812
                  nop
                  xori         s11, t0, 206
                  sra          t1, t6, s5
                  auipc        a6, 669906
                  and          a4, s3, t1
                  and          s1, a1, s7
                  slti         s2, s5, -1604
                  xori         t6, a3, 566
                  sra          t3, a0, s11
                  slt          a6, t4, s2
                  and          a2, a7, sp
                  and          t4, ra, a1
                  auipc        sp, 765646
                  nop
                  addi         sp, s10, -1019
                  or           ra, gp, a1
                  sub          t1, t6, s1
                  lui          tp, 414714
                  sll          t4, a7, s8
                  ori          a4, s0, -1608
                  srai         s9, s6, 29
                  sll          a0, a3, ra
                  nop
                  sltu         s9, ra, s3
                  addi         a2, s1, 1569
                  slti         s4, s10, 929
                  slli         t5, t4, 27
                  slt          a5, s1, t2
                  srli         a6, s11, 24
                  or           t1, s7, s9
                  and          t2, t6, a4
                  srl          a3, s11, tp
                  or           s5, t6, zero
                  srli         sp, t5, 12
                  srl          t4, t2, gp
                  slli         s10, a1, 20
                  srli         s9, zero, 17
                  sll          a2, s2, t6
                  and          zero, gp, ra
                  sll          t0, s8, s5
                  xori         s0, a0, -1084
                  addi         s0, t6, -745
                  sub          t4, s1, a3
                  auipc        a6, 939153
                  auipc        s1, 84120
                  xor          t2, s11, a2
                  sltu         t4, s8, s11
                  sub          zero, a5, tp
                  sll          sp, s8, t1
                  slti         s10, t4, 1115
                  auipc        ra, 852240
                  xori         t3, a6, -1079
                  slli         a6, s6, 7
                  nop
                  srai         a3, gp, 5
                  lui          s9, 180289
                  srli         s9, s9, 9
                  or           t4, t5, ra
                  or           t3, a7, a0
                  nop
                  xor          t6, s1, s0
                  xori         a4, a0, -1315
                  srli         s9, tp, 2
                  slti         gp, s4, 2006
                  addi         zero, a6, 1461
                  srl          t5, tp, a2
                  sub          ra, s8, t2
                  or           sp, gp, tp
                  sltu         ra, s1, s3
                  sub          t0, t2, s0
                  nop
                  addi         a6, t0, 326
                  sub          t6, a3, t5
                  sltu         t0, s0, t0
                  nop
                  or           sp, zero, ra
                  sltiu        s11, s5, 1320
                  sll          t6, s3, s1
                  and          t6, s7, a1
                  addi         s1, s6, -1389
                  slti         s4, s9, -345
                  or           t1, a4, t3
                  andi         a4, s5, -617
                  slli         t5, a4, 18
                  auipc        sp, 143815
                  add          zero, a6, s0
                  lui          sp, 649735
                  add          t0, s8, a6
                  srli         a5, zero, 20
                  slli         a3, t5, 5
                  xori         a4, a6, -122
                  slti         a5, tp, 1071
                  sll          t5, s0, t5
                  add          gp, t1, t1
                  slti         t1, a1, -1971
                  sltu         gp, t0, a6
                  addi         tp, t1, -1342
                  auipc        t5, 155766
                  ori          ra, s5, -1239
                  auipc        t2, 918166
                  lui          s10, 676206
                  sll          a3, s10, s1
                  auipc        a7, 110987
                  and          gp, a6, s5
                  and          a5, t5, t0
                  lui          s0, 486288
                  andi         gp, ra, 1266
                  sub          s9, t6, s2
                  xor          gp, a5, t0
                  srai         t1, tp, 17
                  auipc        a1, 317997
                  xori         t6, s0, -583
                  andi         s2, tp, 1817
                  srli         s10, s8, 3
                  lui          s6, 109388
                  srl          a1, s7, s6
                  lui          tp, 651234
                  or           s10, a0, gp
                  xori         zero, sp, 594
                  sltu         zero, s6, s8
                  ori          a6, s9, 100
                  addi         s9, t6, 1719
                  slt          a5, s11, s5
                  sll          s5, s9, a1
                  slt          t2, t6, zero
                  sra          zero, t5, a4
                  lui          t0, 225748
                  slli         gp, s0, 17
                  addi         a1, a7, 197
                  add          s10, ra, s10
                  srl          s1, s10, a5
                  addi         s6, s7, 1078
                  sltiu        s0, a0, 1188
                  auipc        ra, 555550
                  sub          s5, sp, t1
                  and          ra, a6, s5
                  srl          tp, s3, a1
                  sra          zero, s4, a1
                  srai         a2, a5, 25
                  slti         t3, s0, 882
                  or           tp, a7, tp
                  slli         t0, s2, 24
                  andi         a6, t3, -16
                  xor          s0, s9, t2
                  auipc        s2, 698894
                  xori         s1, s6, 1879
                  sll          a1, gp, s7
                  xor          s4, a6, tp
                  add          s5, t2, t5
                  and          t6, s5, t6
                  lui          s6, 44352
                  xori         a2, tp, 169
                  srli         t5, t1, 19
                  sub          ra, a5, s11
                  or           sp, a0, t6
                  slli         s0, t6, 10
                  srli         ra, a3, 24
                  sltu         a4, s10, sp
                  slli         t0, a4, 9
                  nop
                  xori         tp, t0, -1283
                  nop
                  ori          sp, s4, 994
                  andi         s11, s1, -1325
                  slli         s5, t2, 14
                  add          zero, a3, t6
                  xori         s2, a0, 51
                  sltu         zero, a2, s10
                  sra          t3, s0, t3
                  xori         s9, gp, 1620
                  and          ra, s5, s9
                  addi         t6, s8, 495
                  sltu         t6, t4, a3
                  lui          a0, 407838
                  or           t2, t4, t5
                  xor          s0, t6, a5
                  sub          a7, t2, s6
                  sub          a0, tp, s3
                  slti         a1, a3, -1912
                  sll          a6, t0, s2
                  sltiu        s5, s0, 1564
                  slli         s5, gp, 3
                  slli         a0, a6, 14
                  sra          s9, a2, sp
                  and          a6, tp, t4
                  xori         s4, t4, 161
                  and          a6, a4, a4
                  slt          s9, s2, zero
                  sll          zero, a6, a3
                  sub          s5, s0, sp
                  slti         ra, t5, -2002
                  addi         a4, a7, -67
                  sll          ra, a2, s9
                  srli         s2, t4, 26
                  add          s2, t0, s5
                  sltu         a7, a4, zero
                  srl          s11, s11, t3
                  sub          s10, s5, a5
                  sra          a7, t6, a0
                  slli         s10, ra, 6
                  andi         t0, a0, -332
                  slti         s10, a7, 1578
                  sra          a2, s9, s11
                  andi         t5, s9, -358
                  and          a2, t3, s7
                  xor          tp, a4, t2
                  sll          gp, sp, t3
                  slt          a5, s5, a5
                  addi         s11, s7, 608
                  sltiu        a6, t6, -1722
                  or           tp, sp, ra
                  addi         s0, s0, 1153
                  or           gp, s8, a5
                  nop
                  sub          a3, s11, s11
                  ori          s0, s5, 2034
                  lui          s11, 696258
                  andi         s5, s8, -370
                  slli         s5, s5, 9
                  or           s1, t1, s0
                  slt          zero, s4, s8
                  andi         sp, a4, 1515
                  srai         a1, a1, 27
                  nop
                  or           t2, a7, a1
                  srl          tp, ra, a6
                  slli         a7, a3, 1
                  andi         a3, s7, -356
                  add          ra, s1, a1
                  andi         a5, sp, 1399
                  addi         s10, a7, -1391
                  xori         t5, t4, 682
                  nop
                  auipc        a2, 225940
                  xor          a6, a5, a7
                  or           zero, s8, s11
                  xor          ra, s11, a2
                  srai         t2, s5, 2
                  ori          s5, s0, 557
                  slti         a5, s9, -2005
                  xor          s9, s8, t6
                  sub          t2, s3, s2
                  sra          s9, a4, t4
                  or           a7, tp, a4
                  lui          s10, 692304
                  auipc        a7, 936118
                  sltu         a0, s10, t3
                  nop
                  lui          s6, 96057
                  add          s5, s6, s10
                  nop
                  xori         a0, s10, -564
                  add          s6, t4, t6
                  srai         ra, a3, 6
                  sll          s6, tp, t6
                  auipc        s10, 465188
                  slt          a3, a1, s1
                  addi         t0, a4, -88
                  nop
                  addi         sp, a6, -1746
                  sub          s10, s3, t3
                  sltiu        a2, s7, -1032
                  srl          a5, s7, s0
                  or           s0, t2, s3
                  ori          t6, s0, 1885
                  addi         s5, t3, -1957
                  auipc        s11, 64405
                  srl          a2, s2, t6
                  and          s11, tp, s7
                  nop
                  srai         gp, sp, 25
                  slli         t3, s11, 12
                  sltiu        t2, t0, 1354
                  slt          a6, s8, a2
                  and          s11, t4, t5
                  andi         gp, s4, -1037
                  and          s6, s9, s1
                  srai         t0, a3, 14
                  xor          t4, t5, s2
                  sra          s10, s3, t5
                  srl          t2, t5, a2
                  srai         s1, a6, 13
                  sub          t6, a3, gp
                  xori         t0, a3, 1502
                  ori          t6, s7, 360
                  sra          a3, t2, t5
                  sub          a7, gp, a5
                  slti         s10, s10, -1895
                  and          t5, ra, a1
                  ori          a3, s0, 1607
                  xori         ra, s9, 1515
                  sltu         a6, t1, zero
                  sltiu        zero, a2, 1108
                  and          t1, t3, tp
                  nop
                  and          t3, s11, s5
                  ori          tp, s5, -285
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s2, 0x0
                  li           a5, 0x80000000
                  li           s1, 0xffffffff
                  li           s5, 0x76f0f0d9
                  li           a1, 0x213fd9a5
                  li           t5, 0xffffffff
                  li           s4, 0x3ba0545c
                  li           a3, 0xb02a25bd
                  li           gp, 0x0
                  lui          a5, 660213
                  auipc        s1, 825088
                  addi         a1, a3, 1167
                  add          a3, gp, s1
                  lui          s4, 587735
                  addi         a1, a3, -1568
                  lui          t0, 694188
                  nop
                  sub          s4, s2, t5
                  auipc        a1, 37128
                  sub          s2, t0, gp
                  add          s1, a3, s2
                  sub          s1, s1, t0
                  add          s1, a1, a5
                  lui          s1, 18019
                  nop
                  lui          t5, 727945
                  nop
                  auipc        s5, 232563
                  auipc        a1, 346337
                  addi         s4, s1, 198
                  lui          gp, 867913 #end riscv_int_numeric_corner_stream_7
                  srli         a6, s6, 22
                  ori          s9, s5, 289
                  ori          t4, s10, 1545
                  slli         t0, t3, 7
                  or           a5, a0, a6
                  slti         t4, t6, -235
                  srai         s9, s4, 3
                  sra          tp, t3, t3
                  sra          sp, s2, a0
                  add          s2, s7, s9
                  add          tp, s2, a0
                  and          a3, ra, t6
                  nop
                  srl          s9, a7, s6
                  srai         t3, zero, 22
                  auipc        a7, 27039
                  slti         t4, s2, 50
                  sltu         s9, a1, gp
                  ori          zero, a4, -776
                  sltu         a1, a3, a4
                  sll          s10, t6, s9
                  sub          a4, s4, s5
                  srl          t0, s10, t0
                  sub          a4, t5, s2
                  and          zero, a3, s2
                  sub          ra, s0, tp
                  sltu         s10, a5, a6
                  sltu         a2, s3, s10
                  nop
                  auipc        s6, 671488
                  sltiu        a6, a1, 900
                  slli         t6, s7, 29
                  and          t3, s0, s8
                  sub          s5, s5, t2
                  ori          s4, ra, -1650
                  add          tp, zero, a6
                  slti         t6, a7, 1398
                  srli         t4, s1, 8
                  andi         t6, a0, -1394
                  slt          gp, t4, a0
                  slli         t5, s11, 16
                  slt          a4, s8, a5
                  slti         s2, t4, 877
                  srl          s4, tp, t2
                  or           a3, s10, s9
                  srli         t5, gp, 2
                  auipc        t1, 520388
                  sra          s11, s8, s2
                  andi         s2, t3, 1498
                  sub          a1, t4, t6
                  addi         t2, a0, -508
                  slli         t2, s3, 14
                  sltu         a1, t3, s3
                  srli         a6, zero, 18
                  slti         t0, s4, 395
                  sra          s0, s8, s3
                  lui          t2, 1036228
                  or           t4, t5, t4
                  andi         zero, s8, -1095
                  sll          s10, s10, s4
                  xori         s4, s10, -75
                  srai         a4, a7, 27
                  srli         a1, s7, 3
                  addi         gp, t3, -1588
                  auipc        a6, 867453
                  xor          gp, s5, s4
                  xor          gp, s9, tp
                  add          s4, s4, sp
                  srai         gp, gp, 20
                  sra          t1, t1, sp
                  sltu         a3, t6, t4
                  auipc        s4, 16189
                  addi         a3, t2, 1189
                  slli         a1, gp, 8
                  srl          s4, s3, a6
                  sub          t4, t5, a1
                  srl          t4, s0, s3
                  and          t5, s4, a6
                  addi         s6, zero, 1615
                  sltu         s10, t1, gp
                  and          a7, t6, t6
                  srl          s9, s6, s2
                  srli         a6, a2, 24
                  andi         ra, a0, 183
                  slt          t5, s2, t2
                  sra          s6, s6, s1
                  addi         t1, s3, -1631
                  xori         s5, s3, -880
                  sll          s2, zero, s8
                  lui          t4, 630847
                  srl          s10, t5, s7
                  srai         tp, t5, 0
                  srl          t5, s6, s2
                  auipc        t5, 273423
                  slti         s11, zero, -51
                  add          t5, s4, t6
                  sra          s11, a6, sp
                  add          s4, a2, a3
                  xori         t4, s9, 2020
                  sra          s11, a3, zero
                  sra          ra, s8, s5
                  slli         tp, s11, 12
                  auipc        s0, 385775
                  srl          a4, s6, s6
                  sub          s5, a5, t5
                  sra          s6, zero, a6
                  sra          t1, s3, t5
                  slti         a2, s2, -1526
                  xor          s2, zero, zero
                  slti         s10, gp, -651
                  srl          t1, t3, sp
                  sll          s1, ra, s9
                  sra          ra, t0, s3
                  and          gp, s9, s7
                  nop
                  or           t3, a6, a4
                  add          a0, a6, s3
                  sll          a5, a1, a3
                  nop
                  xori         a1, s11, -1747
                  auipc        t2, 38766
                  sra          tp, t1, gp
                  slti         s10, a5, -1346
                  slli         gp, a0, 20
                  lui          t3, 650138
                  andi         a7, s11, 15
                  auipc        s5, 766901
                  add          a4, t4, s10
                  or           s6, s0, a7
                  add          a4, a7, gp
                  sub          zero, s2, s8
                  sub          zero, a4, s7
                  srl          a1, ra, a0
                  and          a6, a1, s3
                  auipc        s5, 722367
                  sltiu        a3, a4, -454
                  lui          a3, 721827
                  slli         s10, a4, 0
                  addi         gp, s8, -1864
                  sltu         s2, s11, a6
                  sltu         tp, zero, a7
                  ori          zero, s7, -1269
                  sltu         a4, s8, t5
                  srli         zero, t0, 20
                  and          t2, a1, a0
                  srai         s6, a3, 10
                  srl          t3, zero, s8
                  add          sp, s4, a4
                  sltiu        t2, a0, -50
                  ori          a1, a4, 374
                  slli         a5, a6, 21
                  slt          s11, tp, t0
                  lui          a3, 455275
                  ori          a4, gp, 1188
                  sra          a5, a4, s9
                  xori         s6, a5, -17
                  addi         t4, zero, -1697
                  sltu         t0, gp, ra
                  andi         a6, s8, 1134
                  slli         t6, a2, 9
                  auipc        a1, 589340
                  srli         t4, s7, 16
                  ori          s1, s8, -417
                  xori         tp, s6, 682
                  slt          gp, a1, a4
                  slti         t2, t0, 464
                  andi         t5, s1, 1211
                  or           zero, s2, s9
                  lui          a4, 939192
                  sra          s9, t4, s7
                  andi         a6, s3, 841
                  ori          ra, zero, 711
                  or           a2, a2, s1
                  andi         s11, sp, 490
                  auipc        ra, 329317
                  sll          s2, s0, a0
                  sltu         gp, s3, t2
                  srai         s10, a7, 19
                  andi         a4, s8, -454
                  sltu         t6, s11, s10
                  sltu         s1, t1, t0
                  sltiu        a5, gp, -1049
                  slti         s1, s7, -1777
                  sltiu        t5, t2, 1972
                  srl          t0, s10, t5
                  xori         t3, s2, -1305
                  nop
                  slti         t1, s7, 759
                  slti         s1, a1, -1866
                  xor          t1, s6, a3
                  or           t1, t6, t3
                  srai         t2, s0, 25
                  sll          a3, s9, t2
                  xor          s4, tp, a2
                  and          t3, a6, s2
                  sra          a4, t0, a2
                  addi         ra, t4, 970
                  nop
                  and          s5, a1, t3
                  andi         t6, a2, -1522
                  add          a6, sp, t4
                  xori         sp, s1, -119
                  andi         ra, zero, 1431
                  sll          t5, s6, t3
                  xori         s2, s2, -88
                  slli         a2, gp, 16
                  sub          s2, ra, sp
                  sll          t5, a7, t6
                  sll          t5, s4, s8
                  sub          t0, s11, t4
                  andi         ra, t0, 887
                  sll          gp, tp, s6
                  srl          gp, s9, s9
                  and          gp, a6, t2
                  sll          s0, s1, a0
                  slt          t2, t6, tp
                  xor          t1, a0, s0
                  slli         t1, a5, 23
                  xori         s4, s2, 313
                  ori          a7, t6, -671
                  nop
                  sll          s5, a1, s4
                  xori         ra, s10, -1182
                  addi         a0, s8, 1938
                  slt          s10, a3, a4
                  ori          s2, a6, 508
                  ori          t6, s5, -2024
                  sub          s2, s7, t5
                  sub          a0, a7, a1
                  slli         t1, t1, 24
                  slli         sp, s8, 7
                  srl          t2, t0, gp
                  add          t4, s1, a4
                  and          tp, t1, s11
                  or           a2, a5, s3
                  and          a5, a4, a4
                  and          t0, s10, a3
                  addi         s9, s4, 1818
                  lui          s4, 1037287
                  sltiu        tp, s3, 1568
                  slli         s10, s10, 1
                  nop
                  sra          s10, s2, t2
                  srai         a3, tp, 4
                  srli         sp, a2, 24
                  sltiu        t0, s6, 1657
                  andi         s6, t2, -1455
                  slti         a2, s8, 487
                  addi         s11, t6, 892
                  addi         a4, sp, -55
                  nop
                  xor          a0, a2, t5
                  srai         t1, t4, 27
                  sll          s9, s7, t5
                  sub          zero, t3, s7
                  auipc        s11, 417170
                  lui          t2, 819266
                  add          s9, t6, s0
                  srl          s10, t4, tp
                  srai         a7, t1, 20
                  sltiu        s2, s5, -1178
                  srl          s5, s7, t3
                  sltiu        a0, s9, -161
                  andi         a3, s6, -1013
                  auipc        t2, 459685
                  slti         a0, t2, 1462
                  slti         a3, a0, 1295
                  slli         t2, t2, 27
                  or           a0, s2, a6
                  srl          tp, s8, s2
                  auipc        a3, 239222
                  slti         t4, sp, 1900
                  addi         gp, s3, 1204
                  slt          a3, t2, tp
                  add          t1, t4, ra
                  slli         s10, s11, 18
                  srli         t3, a4, 8
                  add          a3, t3, a4
                  slti         a0, a7, 1092
                  xor          a5, s0, zero
                  ori          t5, a1, -1674
                  sra          t4, s6, t0
                  sll          t3, s9, s10
                  addi         sp, s10, 214
                  ori          ra, t3, -662
                  xor          a2, s10, a1
                  sll          sp, s8, sp
                  auipc        a7, 640427
                  sltiu        a2, s6, 1993
                  and          t1, a1, a3
                  xori         s9, t1, 1278
                  slt          t5, a2, zero
                  sll          a4, a4, ra
                  sltiu        s1, ra, -695
                  auipc        a3, 718319
                  sltiu        a2, t6, 542
                  and          s1, s3, s7
                  slli         t5, t3, 1
                  sra          s6, s3, s3
                  xori         a4, s2, 1339
                  andi         t5, s10, 1348
                  xor          a1, zero, a6
                  auipc        zero, 142996
                  slli         t1, a3, 30
                  srli         sp, a2, 31
                  addi         s2, zero, -1758
                  srli         t0, s3, 0
                  slti         a6, s9, -239
                  la x23, test_done
                  jalr x0, x23, 0
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
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_2:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_3:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_4:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_5:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_6:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_7:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_8:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_9:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_10:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_11:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_12:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_13:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_14:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_15:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x19, x24, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x26, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x26, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x26, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x26, x9, ecall_handler
                  li x9, 0x1
                  beq x26, x9, instr_fault_handler
                  li x9, 0x5
                  beq x26, x9, load_fault_handler
                  li x9, 0x7
                  beq x26, x9, store_fault_handler
                  li x9, 0xc
                  beq x26, x9, pt_fault_handler
                  li x9, 0xd
                  beq x26, x9, pt_fault_handler
                  li x9, 0xf
                  beq x26, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x24, x19, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

load_fault_handler:
                  add x24, x19, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

store_fault_handler:
                  add x24, x19, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

ebreak_handler:   
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x24, x19, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

illegal_instr_handler:
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x24, x19, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x24, x19, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
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
