.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x18, h0_start
jalr x0, x18, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0xa23ad97b
                  li x3, 0x1
                  li x4, 0xf26d8072
                  li x5, 0x80000000
                  li x7, 0x645570f7
                  li x8, 0xd
                  li x9, 0x8f4e9638
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x7
                  li x13, 0xf9f4391d
                  li x14, 0x8e727652
                  li x15, 0xf3977c59
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0xa
                  li x19, 0xf49d53c8
                  li x20, 0x174038b5
                  li x21, 0x80000000
                  li x22, 0x196cbc60
                  li x23, 0x7487079
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0xbc12284c
                  li x27, 0x6
                  li x28, 0x0
                  li x30, 0xa07e1a39
                  li x31, 0xf9a19217
                  la x6, user_stack_end
main:             li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           s1, 0x0
                  li           a5, 0xffffffff
                  li           s8, 0x0
                  li           sp, 0x399b745a
                  li           t6, 0x223ec0db
                  li           a7, 0x0
                  li           s6, 0x0
                  li           a6, 0xffffffff
                  li           s10, 0x80000000
                  add          t6, s3, a7
                  add          a5, s6, s1
                  auipc        t6, 183492
                  sub          a6, t6, s10
                  auipc        a5, 342828
                  sub          s3, a5, a5
                  addi         s10, s8, 1482
                  add          a6, sp, a5
                  nop
                  sub          s10, a7, a5
                  add          a5, s3, s6
                  sub          s8, t6, s8
                  add          sp, s3, s8
                  add          a5, s10, t6
                  nop
                  lui          a6, 451194
                  addi         s6, s10, 2042
                  sub          s10, s8, s1
                  auipc        s1, 239154
                  nop #end riscv_int_numeric_corner_stream_13
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           tp, 0xe9787de3
                  li           sp, 0x80000000
                  li           a0, 0xdc0957f
                  li           a3, 0x0
                  li           s10, 0x80000000
                  li           a1, 0x80000000
                  li           a7, 0x0
                  li           s4, 0xcb304c03
                  li           s9, 0x802cb674
                  sub          tp, s4, tp
                  add          a1, gp, a1
                  sub          a7, a3, tp
                  nop
                  nop
                  add          a1, sp, a0
                  addi         s9, tp, 1003
                  addi         s9, sp, 623
                  auipc        a0, 20427
                  addi         sp, s9, -1101
                  sub          a0, sp, a7
                  auipc        gp, 673002
                  add          tp, s9, s9
                  add          s10, a7, a1
                  auipc        s4, 847695
                  sub          sp, sp, sp
                  nop
                  auipc        tp, 106582
                  addi         a0, s4, -1628
                  nop
                  sub          s10, a0, a0
                  lui          gp, 284826
                  nop
                  add          a7, tp, s4
                  add          tp, a1, a3
                  auipc        s9, 157025
                  sub          sp, gp, s4
                  auipc        s4, 276814
                  auipc        a1, 834506 #end riscv_int_numeric_corner_stream_4
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           a1, 0x0
                  li           a5, 0x80000000
                  li           t5, 0x80000000
                  li           t3, 0x0
                  li           ra, 0x0
                  li           s9, 0x276a61a5
                  li           a4, 0x80000000
                  li           t0, 0x80000000
                  li           s4, 0xffffffff
                  add          a1, t5, t0
                  addi         a7, ra, 1230
                  addi         s9, t0, 1864
                  sub          t3, t0, s4
                  auipc        t5, 344243
                  lui          a5, 243133
                  nop
                  sub          a4, a4, s9
                  add          a7, a7, t0
                  addi         s4, t3, -386
                  auipc        t0, 870871
                  lui          a7, 883882
                  add          a1, t5, s4
                  auipc        t3, 589079
                  nop
                  add          a7, a5, ra
                  sub          a5, a4, s4
                  lui          a7, 39099
                  addi         s4, a4, 1312
                  addi         s9, t3, -1967
                  lui          a5, 1047594
                  auipc        s9, 452926
                  auipc        a1, 885992
                  add          a1, a4, t5
                  add          a1, a4, a7
                  sub          a7, s4, a5
                  auipc        a4, 698529 #end riscv_int_numeric_corner_stream_5
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           ra, 0x80000000
                  li           sp, 0x0
                  li           a7, 0xffffffff
                  li           t6, 0xffffffff
                  li           s5, 0x18df8ed9
                  li           a4, 0xffffffff
                  li           s9, 0x80000000
                  li           tp, 0x80000000
                  li           a6, 0x0
                  auipc        t6, 689886
                  addi         s5, t6, 1209
                  addi         tp, tp, -560
                  addi         s9, a7, -1390
                  sub          s5, s5, t6
                  lui          ra, 679346
                  addi         a6, s9, -958
                  lui          a3, 934946
                  lui          t6, 484179
                  nop
                  auipc        a3, 425643
                  sub          tp, s9, ra
                  nop
                  sub          sp, a3, sp
                  auipc        tp, 459159
                  nop
                  lui          t6, 1022445
                  addi         a7, a3, 789
                  auipc        t6, 1030956
                  lui          a4, 850930
                  sub          a6, a4, tp
                  addi         a4, tp, 186
                  nop #end riscv_int_numeric_corner_stream_3
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           s7, 0xb73e48b6
                  li           t6, 0x0
                  li           sp, 0x0
                  li           a0, 0x0
                  li           t0, 0xffffffff
                  li           s5, 0x80000000
                  li           t3, 0x2c39feeb
                  li           tp, 0x0
                  li           a5, 0x80000000
                  auipc        t3, 898819
                  nop
                  addi         t0, sp, 1098
                  addi         tp, t3, 1944
                  nop
                  add          t6, a5, s5
                  lui          a5, 760092
                  nop
                  addi         t3, t6, -1228
                  nop
                  sub          t3, t3, s5
                  sub          a5, a0, t3
                  sub          sp, tp, a0
                  sub          t0, t3, sp
                  addi         t3, t6, -754
                  sub          t6, a2, t0
                  auipc        a0, 795588
                  nop
                  sub          t0, s5, s7
                  add          tp, a5, a5
                  sub          s5, s5, t6
                  sub          a2, s5, a0
                  add          t0, t6, t3
                  addi         a0, t6, -178
                  nop
                  add          t3, t0, sp
                  add          s5, t3, t6 #end riscv_int_numeric_corner_stream_1
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           s6, 0xffffffff
                  li           a1, 0x80000000
                  li           a6, 0xffffffff
                  li           s10, 0x0
                  li           s5, 0x0
                  li           s8, 0x0
                  li           t5, 0x0
                  li           sp, 0x9a0a658b
                  li           s4, 0x0
                  sub          a1, s10, s4
                  nop
                  add          s7, s8, s7
                  addi         s8, s6, 1252
                  add          a6, s4, sp
                  nop
                  auipc        s10, 966766
                  nop
                  add          a6, s10, t5
                  nop
                  add          sp, a6, s10
                  auipc        a1, 1026484
                  add          sp, s5, sp
                  addi         a1, s8, -114
                  auipc        a1, 201865
                  add          a6, s5, t5
                  auipc        s10, 760039
                  addi         s6, s10, 1771
                  addi         a6, a6, -1162
                  add          s5, s4, s10
                  auipc        sp, 116602
                  auipc        s4, 128530 #end riscv_int_numeric_corner_stream_12
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           s4, 0x61339e41
                  li           s7, 0xffffffff
                  li           s0, 0x80000000
                  li           a4, 0xffffffff
                  li           a2, 0x0
                  li           a0, 0xffffffff
                  li           s10, 0x7d062843
                  li           a5, 0x0
                  li           ra, 0xffffffff
                  addi         ra, s0, 1141
                  sub          s7, ra, sp
                  addi         ra, s0, -268
                  lui          s7, 284073
                  addi         ra, s0, -913
                  add          a4, s4, a0
                  add          s10, sp, s0
                  nop
                  lui          a2, 979370
                  addi         s4, a2, 727
                  auipc        sp, 950767
                  auipc        ra, 558866
                  sub          s10, a0, a5
                  lui          s0, 624534
                  auipc        s10, 666328
                  nop
                  auipc        ra, 459251
                  auipc        a2, 559976
                  lui          a2, 125406
                  auipc        sp, 352923
                  nop
                  nop #end riscv_int_numeric_corner_stream_14
                  li           t3, 0x8e1aa0a8 #start riscv_int_numeric_corner_stream_17
                  li           t2, 0xffffffff
                  li           s5, 0x0
                  li           t5, 0x0
                  li           s11, 0xffffffff
                  li           a1, 0x0
                  li           a7, 0xcfdd332f
                  li           gp, 0x7551e8c4
                  li           a6, 0x0
                  li           a4, 0x546edda7
                  addi         t5, a4, 1291
                  sub          a7, a1, t5
                  nop
                  auipc        t3, 314138
                  nop
                  lui          s11, 653292
                  auipc        a1, 450265
                  nop
                  add          a1, t3, a1
                  addi         t3, s11, 476
                  addi         s11, a1, 918
                  addi         a4, s5, 69
                  add          s5, t3, a1
                  add          a1, a4, gp
                  sub          s11, a1, a4
                  add          s11, t5, a7
                  nop
                  addi         a4, t5, -489
                  nop
                  lui          t5, 277554
                  addi         a7, t5, -715
                  addi         a4, gp, -886
                  sub          t5, s5, a4 #end riscv_int_numeric_corner_stream_17
                  xor          a5, t1, a6
                  srli         s11, tp, 29
                  srli         t3, s7, 5
                  sra          s1, t3, gp
                  addi         t5, zero, -1799
                  ori          s11, t5, -1010
                  add          s11, s9, t3
                  nop
                  sltiu        a5, zero, -1221
                  xori         s5, a1, 49
                  xori         t3, ra, 1943
                  sub          s7, s7, t2
                  sll          s6, s10, a6
                  slti         s11, a1, 1685
                  srl          t5, a1, a7
                  sub          s5, a4, s0
                  srl          a5, s5, a7
                  sltiu        t5, zero, -44
                  xori         t2, s6, 628
                  andi         s1, a7, 2030
                  sltu         s7, t5, a3
                  sltu         s11, a5, sp
                  xori         tp, gp, -1178
                  srl          a4, s3, t4
                  slti         s11, zero, -1660
                  srl          s5, s11, a7
                  nop
                  nop
                  srl          t6, t4, s8
                  sub          zero, s9, s7
                  sub          zero, s1, s9
                  srai         t3, tp, 11
                  slti         sp, ra, -736
                  addi         t2, t1, 498
                  sll          s10, t1, a0
                  lui          a0, 999283
                  srl          s1, a6, t6
                  auipc        s7, 847237
                  lui          t2, 897343
                  sub          a1, s5, tp
                  sra          tp, s8, s9
                  lui          s7, 653274
                  auipc        a7, 729981
                  ori          t5, t4, -612
                  and          s4, t1, gp
                  slti         s8, a7, -1605
                  nop
                  and          a1, a1, a5
                  andi         s5, a3, 36
                  sll          s5, t2, t4
                  xor          s4, a7, a0
                  srli         tp, s9, 15
                  slli         a3, zero, 21
                  xor          gp, s0, a5
                  sll          s1, a3, t3
                  nop
                  xor          a4, ra, s3
                  ori          s0, t3, -2046
                  slli         s11, sp, 31
                  slti         s1, a1, -1090
                  sub          t5, zero, s2
                  auipc        a5, 758555
                  xori         sp, a6, -189
                  or           s11, a5, a5
                  srai         gp, a1, 9
                  sltu         s0, s2, a3
                  slti         a5, t4, 1831
                  andi         t5, s8, 699
                  slti         s1, a6, -1239
                  sltu         a7, t4, s4
                  srl          s0, s9, a0
                  srli         t0, tp, 30
                  slli         t0, s8, 11
                  srl          tp, s6, sp
                  lui          a4, 975429
                  or           s9, s6, t3
                  slli         s3, s2, 10
                  slli         a3, zero, 23
                  add          sp, a7, zero
                  sltu         a4, t6, tp
                  auipc        a4, 617444
                  sltiu        a3, s10, 37
                  sub          s11, s8, a5
                  slli         s11, s7, 27
                  auipc        s6, 450604
                  add          s0, t4, s6
                  or           t0, s10, s10
                  auipc        s4, 604890
                  sra          ra, tp, t1
                  slli         a3, t5, 18
                  slti         s4, s2, 1891
                  sltu         a5, s0, s10
                  sll          s11, zero, s3
                  addi         s3, s2, 1779
                  xori         t0, zero, 1316
                  xori         s1, s1, -1542
                  add          a7, t5, s1
                  nop
                  srli         a1, a1, 2
                  add          gp, t2, s2
                  slli         gp, sp, 5
                  and          gp, a6, t3
                  sltiu        s11, tp, -630
                  slli         a1, a7, 31
                  slti         a3, s1, -1546
                  lui          ra, 218797
                  sltiu        s1, t0, -1913
                  andi         sp, s3, 1929
                  add          a3, t3, t4
                  xor          a2, s9, s10
                  xori         s11, s8, -1750
                  or           a3, s4, a0
                  slli         s0, t1, 18
                  slti         tp, t4, -1157
                  sltiu        sp, ra, -1265
                  slli         s6, s9, 23
                  srl          s9, gp, a3
                  xori         zero, t1, -192
                  lui          a2, 23637
                  andi         t0, t1, 926
                  srli         ra, s6, 6
                  add          a2, s9, ra
                  sub          t2, a0, zero
                  sltu         gp, s11, a2
                  nop
                  lui          s6, 118585
                  sll          t3, s8, s5
                  srli         s4, t0, 30
                  sltu         a1, zero, s5
                  lui          a3, 621294
                  and          zero, s7, s6
                  xor          zero, a0, a2
                  or           t5, s0, a4
                  sltiu        s5, a1, 1803
                  andi         a2, a1, 1602
                  sltiu        zero, a6, -488
                  nop
                  and          a1, t1, sp
                  sra          s8, s2, t6
                  nop
                  ori          a4, s11, -869
                  xori         ra, s3, 700
                  or           t6, a3, t2
                  and          zero, a4, gp
                  or           s11, a2, t2
                  slli         s3, t4, 20
                  srl          s5, t5, s5
                  xor          s7, a2, t6
                  xor          a0, s5, a7
                  slt          s8, s10, s4
                  srli         s3, a4, 11
                  and          a2, t1, a0
                  lui          s11, 489957
                  srli         t5, s3, 1
                  slt          s8, gp, s0
                  sub          s4, a1, s4
                  slli         s10, sp, 24
                  add          ra, s11, a6
                  auipc        s7, 72679
                  andi         a4, a5, -1098
                  xor          t0, s10, a3
                  slli         s5, s0, 10
                  xor          s3, t5, s3
                  sub          tp, t3, s1
                  auipc        gp, 704807
                  sltiu        s3, ra, 409
                  xori         a5, a5, -1848
                  sltu         t0, a2, s8
                  sltiu        s8, s1, 1366
                  slti         s4, a3, 478
                  srl          s10, t5, s1
                  and          s6, sp, a6
                  srli         s7, s6, 4
                  or           s9, a4, a1
                  sll          a0, tp, gp
                  andi         tp, a4, 44
                  and          s0, t0, t3
                  add          s9, t0, s11
                  slli         s8, s2, 18
                  add          tp, s8, s6
                  add          a0, t5, s10
                  slt          a2, s9, s1
                  and          t3, s3, a1
                  srli         a3, tp, 23
                  sra          zero, t5, t2
                  slt          s10, a0, s9
                  srai         t6, zero, 7
                  and          s11, s2, s1
                  srl          t5, a7, t5
                  or           a5, a2, s11
                  nop
                  ori          s4, a5, 1661
                  addi         tp, s5, -255
                  addi         s1, t0, 857
                  ori          s5, s2, -1852
                  srl          s8, a7, a6
                  andi         a2, gp, 1290
                  srli         a2, s5, 22
                  srl          sp, s7, s4
                  or           zero, s11, sp
                  or           s9, s10, a4
                  lui          s3, 600563
                  lui          s8, 388993
                  and          a5, sp, s6
                  andi         s0, sp, -1374
                  slt          s3, s4, a1
                  slt          a0, t1, s10
                  xori         s7, s0, 833
                  addi         gp, s11, -314
                  sll          a2, t0, s9
                  sub          s6, a3, a1
                  xori         s8, zero, 719
                  auipc        a7, 454902
                  and          a1, s3, tp
                  sub          sp, a0, ra
                  srai         a1, a2, 7
                  auipc        a0, 28082
                  sltiu        a2, s3, 1724
                  srl          a3, sp, t2
                  auipc        s6, 1010365
                  srl          s6, a0, a5
                  xori         s9, gp, -1184
                  andi         a6, sp, 1088
                  and          s5, s8, t1
                  sltiu        s8, s10, -1630
                  ori          s6, s1, 88
                  add          s7, s7, a0
                  auipc        s10, 911106
                  sltu         a1, a3, ra
                  srli         a6, a0, 15
                  slli         s5, s7, 4
                  add          s5, t6, s0
                  sltu         a6, a3, s8
                  slli         t2, s0, 13
                  srl          s5, t5, a4
                  andi         s8, s7, -189
                  addi         t5, a3, -1106
                  sltu         tp, t0, s11
                  sra          tp, s1, a0
                  srai         s5, tp, 18
                  or           s9, s11, a7
                  auipc        a7, 789284
                  srai         zero, t4, 3
                  andi         sp, s3, -216
                  and          a7, zero, t0
                  nop
                  nop
                  sub          s9, zero, a7
                  srai         a3, sp, 12
                  lui          s6, 633153
                  slt          sp, t0, s4
                  sub          s8, s6, t6
                  srai         sp, a6, 15
                  sub          zero, t5, a1
                  addi         a7, s2, -1037
                  slti         s5, ra, 1393
                  slti         t3, s1, -343
                  srli         s6, a6, 14
                  add          t2, s2, s6
                  srl          ra, a6, s11
                  srli         s4, s4, 16
                  srli         s7, a7, 7
                  sltiu        tp, s7, -382
                  slt          t0, sp, a6
                  slt          a3, s11, ra
                  sltiu        a6, a2, 426
                  nop
                  add          s5, a2, t1
                  srl          a7, s5, a4
                  srai         s7, a3, 19
                  and          a5, s3, a4
                  and          a3, s3, sp
                  sub          s6, s8, a3
                  auipc        s11, 614046
                  addi         s4, s2, 1221
                  srl          s11, gp, s7
                  xori         a6, t5, 1832
                  slt          s3, gp, s11
                  srli         s4, t5, 29
                  srl          gp, s10, a0
                  sub          s11, zero, ra
                  srli         s7, a6, 17
                  addi         a1, a5, -1406
                  xor          a3, s11, a0
                  slt          a5, a6, s9
                  slt          t5, s11, s9
                  or           s11, t2, a7
                  xor          s11, zero, s3
                  ori          s11, s7, -1172
                  sub          s4, s0, tp
                  srai         s7, s7, 16
                  xori         gp, a2, -696
                  sra          a4, tp, s6
                  slt          zero, s9, gp
                  sltu         tp, t2, t6
                  sub          a6, s6, t4
                  sra          sp, s11, t1
                  xori         s8, sp, -1213
                  addi         t2, t0, 1801
                  or           s6, a1, s9
                  sltu         s3, a3, s5
                  srli         s8, t5, 24
                  sltu         s3, a5, s6
                  srai         ra, t3, 1
                  and          s7, sp, t6
                  addi         s11, s1, 1317
                  xor          gp, s10, a1
                  sub          ra, t3, a7
                  srli         tp, ra, 23
                  sll          t3, t4, t4
                  addi         sp, s8, 609
                  slli         t5, zero, 8
                  slti         a5, a6, 516
                  sub          a2, s0, s5
                  lui          s1, 70909
                  sub          s0, a1, a6
                  ori          gp, a1, 970
                  sub          t3, s7, s9
                  nop
                  ori          s4, s3, -1849
                  sll          s4, t6, s8
                  add          a7, t3, s6
                  xor          t6, s6, s3
                  add          s7, tp, a0
                  sub          s5, s9, s9
                  or           gp, t0, s1
                  slli         zero, a0, 15
                  auipc        s5, 680502
                  xor          a3, t4, s3
                  xori         s1, a0, -295
                  add          t2, t1, s10
                  lui          t0, 544618
                  xor          s1, a5, tp
                  auipc        s10, 759059
                  sub          s0, s0, s6
                  and          a1, a5, s4
                  srli         a1, a5, 27
                  slli         s9, t4, 25
                  sub          gp, gp, t1
                  or           s7, gp, s9
                  sll          s5, s8, s10
                  andi         t6, s0, 459
                  sll          s3, s3, a2
                  srl          a3, a4, t0
                  add          s3, s10, a4
                  sltiu        s10, gp, 1526
                  lui          t2, 567258
                  and          zero, a1, s1
                  add          a6, a0, sp
                  slt          s9, s4, t6
                  lui          t2, 100051
                  ori          s4, s9, 312
                  lui          s0, 483620
                  addi         s5, gp, -605
                  xor          s11, t2, a1
                  xor          t2, s1, tp
                  sll          s5, a2, a6
                  srli         a6, gp, 28
                  slti         a1, ra, 1480
                  add          gp, t4, s10
                  and          a2, s9, tp
                  ori          t6, s6, -1152
                  srai         zero, a2, 9
                  xori         t6, s0, 1715
                  sub          a3, a4, t6
                  add          tp, t2, t4
                  or           s10, t1, s7
                  and          s9, a7, t5
                  xor          t5, s4, zero
                  auipc        a7, 441735
                  ori          t3, s10, 1170
                  lui          t5, 813618
                  srai         a2, a0, 31
                  or           gp, t3, t2
                  sll          s10, s5, s5
                  and          s8, t2, t6
                  xor          s1, t2, a0
                  ori          tp, sp, 1617
                  slli         s3, a6, 9
                  and          a0, a1, a1
                  or           a4, gp, a1
                  ori          s10, a3, 1728
                  sltu         s10, s6, a7
                  sub          a6, a4, s8
                  srli         a2, s6, 2
                  andi         ra, s1, 1490
                  auipc        a0, 692329
                  sra          tp, t1, s0
                  nop
                  sra          s8, s7, s0
                  slt          a1, sp, a7
                  nop
                  addi         a1, t6, 1843
                  srai         a7, s10, 23
                  slli         a7, a0, 1
                  lui          s6, 534703
                  srli         a2, a1, 3
                  srli         s0, t3, 17
                  slt          a2, gp, s7
                  add          s3, tp, s6
                  srl          s1, s8, s11
                  slli         s0, a5, 27
                  lui          t0, 1011985
                  sltiu        a2, s6, 1938
                  add          zero, sp, a5
                  andi         s5, gp, -18
                  auipc        ra, 536805
                  xori         a2, t6, 1897
                  sltiu        s3, t1, 1527
                  andi         s11, a7, 1927
                  xori         gp, zero, 1868
                  slti         ra, a5, 1954
                  nop
                  or           s11, a3, s11
                  add          a4, a5, t1
                  auipc        s8, 398836
                  ori          s5, a4, 241
                  and          s1, sp, s4
                  srl          t0, t2, t6
                  slt          s10, a7, s0
                  slt          s9, s11, a5
                  and          zero, a6, s7
                  srl          s1, a7, a6
                  xori         s3, s7, -542
                  and          a0, s6, a2
                  xor          t2, s10, zero
                  slti         s10, zero, -1350
                  xor          a6, a4, a4
                  ori          a0, s0, 947
                  sll          s5, t2, s9
                  slli         s4, s7, 15
                  sub          s8, s0, t4
                  xori         s1, gp, -1464
                  addi         s7, s1, 989
                  srai         s0, gp, 8
                  lui          a2, 58918
                  slt          gp, s5, sp
                  nop
                  srli         a1, zero, 12
                  slli         s8, s5, 12
                  xori         s6, s8, 1090
                  or           sp, s10, t6
                  sll          a7, tp, t2
                  sll          s8, t5, s11
                  andi         t6, a4, 2011
                  auipc        a1, 917756
                  andi         a4, sp, 840
                  sll          tp, a7, gp
                  xori         s5, s6, -1654
                  srl          a5, a3, s7
                  lui          s4, 533233
                  ori          a5, a3, -1222
                  nop
                  slli         a4, zero, 11
                  slti         a2, a6, -1220
                  add          t3, s8, a0
                  srli         a1, s1, 17
                  andi         a4, sp, -1496
                  srai         a3, a7, 14
                  and          t0, s7, s9
                  add          t6, a7, s2
                  sll          a5, a5, s0
                  slti         t3, s0, -1735
                  srai         s3, a6, 15
                  addi         s3, s5, -445
                  slti         a1, a0, -263
                  sltu         s4, s0, s8
                  xori         s3, a3, 1105
                  slt          a0, sp, sp
                  and          s3, a0, gp
                  sra          a1, a4, a3
                  addi         s1, a3, -1261
                  sltu         s3, a7, s1
                  sltu         t5, a7, a7
                  slti         t6, a7, 1487
                  sltiu        t3, t0, -818
                  nop
                  sltiu        s4, a2, -569
                  sltu         a1, s11, t4
                  sltu         s0, s11, s3
                  addi         t5, a3, 602
                  nop
                  slti         s7, s9, -1794
                  slli         a5, s3, 20
                  srai         a1, s5, 27
                  sltu         s11, t3, s11
                  addi         a6, s6, 344
                  xor          s10, s8, s10
                  addi         s7, s6, 1547
                  ori          a1, t6, -1399
                  ori          a6, tp, -1154
                  sltu         s0, t0, a2
                  ori          t5, gp, -916
                  xori         gp, t4, 758
                  add          a7, t0, gp
                  slli         t6, s3, 25
                  auipc        s11, 26811
                  ori          s9, a0, -634
                  or           a3, s6, a3
                  addi         s1, tp, -1526
                  add          zero, t6, s2
                  sltu         a4, s7, t2
                  lui          s9, 31217
                  lui          s6, 540838
                  srl          t5, a2, t6
                  xor          s7, s7, s3
                  slli         t3, s2, 31
                  sltiu        s10, a3, 1908
                  srli         s11, sp, 10
                  auipc        a3, 877963
                  slt          s6, a5, t5
                  slt          t2, s1, zero
                  addi         s11, s3, -1392
                  sra          a4, a6, s0
                  nop
                  ori          s3, t3, -180
                  add          t2, a4, s6
                  sltu         t5, zero, s2
                  srl          ra, tp, a0
                  slt          a4, s9, a3
                  sltiu        a1, s7, -646
                  srl          s7, a6, s0
                  and          a2, a4, s9
                  slti         s7, a4, 1538
                  sltu         a2, a5, s4
                  nop
                  lui          t6, 257919
                  andi         sp, s4, 631
                  srli         t5, tp, 17
                  add          t5, t0, a7
                  addi         s8, t0, 1591
                  auipc        s8, 447460
                  sub          s3, a3, a5
                  sub          ra, a6, t2
                  sub          a7, ra, s5
                  and          a7, t4, s7
                  srli         s7, s2, 10
                  or           s6, s7, sp
                  srai         tp, t4, 30
                  sltu         gp, s11, s11
                  add          s6, tp, t1
                  sll          tp, t6, s5
                  and          s4, t4, ra
                  auipc        s5, 930559
                  auipc        s10, 111630
                  sltiu        a1, s9, -2023
                  sltiu        gp, s9, 709
                  slti         tp, t6, -1160
                  srai         s10, a7, 21
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           a1, 0x2d61fc48
                  li           a6, 0x8f3c6d77
                  li           s5, 0xb0f30664
                  li           sp, 0xffffffff
                  li           a4, 0x0
                  li           t2, 0xffffffff
                  li           s3, 0x0
                  li           t0, 0x584fc733
                  li           s0, 0x0
                  add          a6, tp, tp
                  nop
                  addi         a6, s5, -507
                  add          s5, s0, t0
                  addi         s3, a6, -1915
                  addi         s0, t0, -1101
                  nop
                  lui          a1, 316270
                  auipc        s3, 495068
                  auipc        a6, 798323
                  nop
                  addi         s5, a4, -289
                  lui          s5, 555696
                  auipc        a1, 308199
                  addi         a1, a1, -750
                  add          s3, tp, s5
                  lui          s3, 1017486
                  auipc        s3, 560316
                  add          a4, t0, t0
                  sub          t0, a6, a6
                  addi         a4, s3, 129 #end riscv_int_numeric_corner_stream_10
                  sll          s9, t6, gp
                  srli         a7, s9, 31
                  slli         s9, a5, 19
                  and          s10, a7, gp
                  sra          s11, s0, t3
                  auipc        s7, 861510
                  xor          ra, s10, zero
                  lui          s9, 707550
                  nop
                  xori         t0, ra, -878
                  nop
                  and          s0, s9, t4
                  xori         t2, gp, 1613
                  sra          s5, ra, t1
                  sltiu        s8, t1, -26
                  andi         a7, t2, -1663
                  sub          a1, s3, s10
                  slt          t2, gp, t5
                  slli         s8, s6, 23
                  srai         a4, sp, 30
                  slt          a6, s9, s1
                  sltu         sp, a4, t0
                  or           s1, ra, s8
                  sll          s8, a1, a5
                  srl          a4, a2, t1
                  addi         a5, tp, 1838
                  andi         s1, s3, 111
                  auipc        s10, 285515
                  or           a4, s6, t4
                  slli         t5, s11, 17
                  addi         t2, sp, 67
                  srli         s3, s1, 7
                  addi         t0, s2, -145
                  xor          a5, a1, a0
                  add          t2, a5, a1
                  sra          s3, t0, s3
                  srli         a6, t4, 20
                  ori          t3, s8, -1554
                  add          a4, a3, sp
                  xor          gp, s7, s1
                  nop
                  addi         t3, a2, 1888
                  ori          s8, t6, 1781
                  sltiu        t2, s7, 121
                  add          s11, s3, zero
                  andi         a7, s0, -1897
                  lui          a2, 816628
                  nop
                  srli         tp, a4, 23
                  sltiu        s11, s11, 189
                  lui          t2, 504017
                  xori         s4, s10, 1840
                  sltu         a3, a5, s1
                  lui          a2, 563954
                  slt          ra, s8, t2
                  srai         a3, s7, 17
                  srli         t6, gp, 2
                  sub          t3, s4, s8
                  add          s0, t0, s8
                  ori          a7, a0, 246
                  slt          s4, a1, a0
                  xori         tp, a6, -149
                  slti         s9, a6, -1878
                  andi         t6, s2, 213
                  auipc        s11, 868994
                  sub          s5, t4, s11
                  and          ra, a3, a5
                  xor          a2, s9, a2
                  srl          s3, tp, t1
                  xori         t3, t4, 275
                  sll          a6, a7, ra
                  addi         gp, s8, -1361
                  andi         a6, sp, -172
                  add          t3, t0, s3
                  andi         s10, a4, -1323
                  auipc        ra, 924722
                  sltiu        s7, t1, 1383
                  sll          s7, a1, a0
                  or           s9, t1, s1
                  and          s6, t4, zero
                  addi         sp, a6, -1061
                  sltiu        s4, s5, 563
                  lui          zero, 372207
                  xori         sp, a3, -619
                  auipc        s11, 76284
                  sll          a5, a4, t3
                  or           a3, t4, a7
                  slli         t5, s9, 20
                  and          t3, sp, s2
                  slli         a0, t3, 29
                  srai         t0, s3, 18
                  addi         gp, a2, -666
                  srl          s4, t5, s7
                  sra          a3, s0, t5
                  sltu         sp, a2, s8
                  lui          s5, 616374
                  srli         t0, t5, 2
                  nop
                  sltiu        s0, zero, 1942
                  ori          t5, t4, 1418
                  srai         a1, t5, 0
                  slli         s4, s6, 30
                  slti         gp, t6, 447
                  xor          a0, gp, a6
                  sub          a4, a2, a6
                  andi         a7, s9, -722
                  auipc        s0, 47116
                  lui          s11, 835968
                  addi         a1, s7, -1663
                  lui          a0, 76488
                  sra          a2, ra, a4
                  slt          t6, a6, ra
                  andi         s1, gp, -1967
                  slli         sp, s11, 22
                  nop
                  sub          s5, s1, s9
                  sub          a5, t3, a3
                  xori         a2, s9, 164
                  sub          a2, a1, t0
                  slt          s4, s11, s10
                  add          s10, t1, a3
                  ori          zero, s0, 812
                  srai         t0, a1, 6
                  sll          t5, t4, a4
                  andi         t0, a3, -1629
                  srli         t6, a3, 18
                  sll          s3, s4, t1
                  auipc        a7, 554370
                  and          a0, s10, s10
                  or           t6, ra, s11
                  auipc        t0, 307234
                  slt          t3, s5, s0
                  xori         s9, s10, -270
                  and          a4, a0, s2
                  and          s4, t1, sp
                  slt          sp, t2, s9
                  lui          s11, 997927
                  add          a2, zero, a6
                  sltu         a7, s1, s8
                  xor          a6, a6, a1
                  srai         a5, a4, 13
                  add          s0, a0, a7
                  xor          s8, t4, zero
                  addi         s11, t2, -215
                  slli         s11, a3, 2
                  or           sp, t1, a6
                  sub          a7, a2, t4
                  sltu         sp, t4, tp
                  lui          s10, 400472
                  lui          s11, 298396
                  sltu         t3, a6, a6
                  sltu         t6, t5, s10
                  sll          s11, gp, s3
                  or           s3, s11, s6
                  sltiu        s1, s4, -624
                  andi         a6, t5, -358
                  sra          s4, a3, a1
                  sra          s6, a0, a3
                  ori          a6, a7, -1082
                  lui          a3, 179511
                  auipc        t3, 704700
                  andi         t6, s8, -1311
                  addi         a0, s9, -956
                  auipc        s11, 378958
                  slt          s4, sp, s5
                  auipc        t6, 1025447
                  or           s10, a6, s0
                  auipc        a3, 476222
                  xor          t2, s7, s7
                  sll          s7, s7, a3
                  or           s1, s1, a6
                  slt          t5, t3, tp
                  sll          s10, s1, t2
                  andi         a6, s9, 333
                  sltiu        t3, s10, 1082
                  add          ra, tp, tp
                  add          s9, s0, t6
                  lui          ra, 348816
                  or           s1, t0, t3
                  srai         gp, s4, 29
                  add          t0, s2, s9
                  sra          t5, t3, s5
                  add          s5, a3, s0
                  or           a5, a3, a1
                  xor          s5, s6, a0
                  lui          gp, 88533
                  and          s9, t1, s2
                  xor          a5, ra, s2
                  auipc        s8, 27432
                  addi         s8, t3, 1591
                  nop
                  nop
                  slti         t5, s2, -747
                  sll          t5, t6, t1
                  sll          s11, tp, s1
                  srl          a7, t0, t2
                  sra          t3, s8, s8
                  srl          a5, a2, s11
                  auipc        t5, 511064
                  ori          a6, s3, 678
                  slli         t2, a5, 30
                  srli         tp, a3, 31
                  lui          zero, 292304
                  nop
                  nop
                  nop
                  srli         s10, zero, 1
                  and          a1, s9, s0
                  or           t2, ra, a7
                  xori         a0, sp, -340
                  slli         a6, s4, 30
                  sll          gp, t1, a4
                  andi         s3, s0, -1936
                  xori         s4, a3, 171
                  sub          a6, s6, t5
                  or           a6, t6, a0
                  slt          t3, a6, a6
                  nop
                  andi         s11, s1, -429
                  and          a6, ra, a4
                  xori         gp, s1, -1574
                  sra          s11, t5, zero
                  sra          s0, s0, t0
                  or           zero, ra, t4
                  sltu         a3, s3, a5
                  srai         sp, a4, 5
                  slt          gp, ra, s10
                  slt          t0, s3, a5
                  addi         a0, s10, -138
                  andi         a6, a5, 1919
                  auipc        tp, 94003
                  slt          a6, tp, s5
                  addi         s6, a0, -993
                  srai         s7, gp, 18
                  sltu         a3, t4, s9
                  slli         s0, a6, 3
                  sltiu        s7, s2, 1303
                  lui          s3, 802671
                  andi         t3, s4, 1691
                  srai         a7, sp, 24
                  xori         s3, gp, 183
                  srai         t0, t3, 12
                  slti         s11, a1, -1450
                  auipc        s4, 434479
                  or           s4, a1, zero
                  and          s1, s2, t4
                  sltu         s10, t6, t4
                  sll          s8, a1, t1
                  addi         a5, ra, 918
                  sltu         s7, t5, s9
                  srli         s1, t4, 8
                  ori          zero, s6, 1183
                  ori          gp, gp, -877
                  xori         gp, a5, -388
                  slli         s4, s5, 20
                  slti         a5, s10, 1505
                  addi         t6, s0, 605
                  sub          s5, s3, t4
                  srai         a2, a0, 20
                  or           t2, a5, ra
                  sltu         s1, a6, a5
                  sub          t3, t5, a1
                  sltiu        s9, a0, -636
                  andi         s6, s0, -106
                  srai         t6, a6, 20
                  slti         a6, s3, -1318
                  slti         ra, t5, -1952
                  srai         s4, a1, 13
                  xori         s8, a4, -620
                  slti         s8, a2, -1098
                  ori          s11, tp, 939
                  slti         gp, t3, 1128
                  sltu         s10, s1, sp
                  slt          s0, a5, t0
                  nop
                  and          gp, a4, a3
                  xori         s8, s1, -1208
                  ori          a1, s9, 1391
                  addi         a0, a1, -558
                  slli         s0, s4, 9
                  lui          t3, 245739
                  slli         a6, zero, 0
                  nop
                  or           t5, a3, sp
                  xori         t3, s3, 1567
                  srli         a6, s10, 6
                  lui          s4, 341239
                  slt          s5, a4, s7
                  and          s6, s11, a4
                  or           s4, s4, s8
                  sltu         t3, s1, s3
                  sll          a2, s7, a1
                  add          s0, a1, s4
                  srli         s1, s8, 14
                  xori         s8, s5, -1279
                  lui          a0, 793348
                  slli         s11, s11, 21
                  slt          s10, a7, t2
                  xor          gp, ra, s10
                  slli         sp, a3, 13
                  and          s7, a4, a2
                  add          a4, a5, a3
                  sll          sp, a5, t4
                  srl          s1, sp, t0
                  slt          t6, s3, ra
                  and          zero, s8, a2
                  sltu         sp, s6, t1
                  xor          ra, a1, zero
                  or           t2, s0, s0
                  add          s3, a6, a6
                  and          s6, t6, s10
                  add          s6, t0, t1
                  slt          a1, a1, s6
                  andi         s8, s8, -1828
                  sltu         ra, a4, a0
                  slti         t3, t0, -1171
                  and          s0, t5, s8
                  srli         s4, s8, 20
                  srai         a3, a1, 10
                  auipc        a7, 969185
                  add          a4, s1, s10
                  lui          s0, 778025
                  srli         s1, a1, 31
                  sltu         s5, t2, t1
                  nop
                  srai         s5, gp, 12
                  slt          s8, sp, t1
                  sltu         t3, t4, t0
                  addi         tp, s11, -1629
                  sll          s7, s3, t0
                  xori         a7, sp, 1419
                  srl          s9, s0, a1
                  sra          t6, ra, t4
                  xori         s7, a1, -301
                  srai         t0, gp, 29
                  ori          s5, t0, 1307
                  sltiu        s6, sp, -1199
                  slt          s1, gp, a2
                  slt          a3, s3, a7
                  auipc        t5, 807850
                  add          t2, a1, ra
                  sub          gp, sp, s3
                  andi         s7, a5, -397
                  sltiu        s1, a1, 328
                  sltu         s8, tp, t2
                  ori          t5, s5, -1775
                  slt          s4, s6, a2
                  xor          sp, s2, a7
                  lui          a7, 612067
                  sll          a1, s0, sp
                  or           a0, tp, t2
                  andi         zero, t1, 1657
                  auipc        t0, 614929
                  xor          t0, a3, t0
                  auipc        a2, 761239
                  addi         t2, s6, -237
                  auipc        gp, 608369
                  slti         t6, s7, -976
                  or           sp, a0, tp
                  lui          s10, 980467
                  and          s4, s6, s4
                  xor          a3, s4, s2
                  and          a3, s11, gp
                  lui          ra, 920486
                  sra          t3, a3, a0
                  sll          a2, zero, s11
                  auipc        sp, 241831
                  slt          a5, s7, a0
                  srai         s3, t0, 3
                  srl          s4, s3, s4
                  lui          a5, 547818
                  auipc        s8, 162318
                  nop
                  sll          a0, s9, s1
                  sltiu        s4, t6, -1945
                  srai         a6, a6, 16
                  srai         s3, a3, 29
                  slt          s8, a7, a7
                  and          a5, s4, t5
                  andi         s8, s4, -1465
                  and          s6, s8, t6
                  srai         a1, t4, 19
                  add          a6, zero, ra
                  srli         t6, s3, 2
                  srai         tp, tp, 5
                  srai         s0, s4, 27
                  slt          s1, s2, s8
                  xor          s10, a1, t5
                  auipc        a6, 809998
                  sltiu        s5, s2, 223
                  and          s5, tp, t0
                  slt          s9, s2, a3
                  slt          t3, zero, gp
                  addi         s6, s11, 856
                  andi         t3, s0, 1125
                  addi         tp, s0, 1117
                  xor          t6, t5, a0
                  srli         s5, a4, 18
                  or           a1, a7, a2
                  and          tp, a7, zero
                  or           s1, t6, gp
                  or           s1, s4, s5
                  srli         s0, t1, 25
                  sltu         t3, gp, a4
                  srl          a4, ra, t3
                  sra          gp, a2, s3
                  sra          t3, s9, ra
                  and          a7, tp, a7
                  sltu         a0, s5, a5
                  sll          s9, t4, s1
                  srl          a6, t3, a3
                  or           t0, t0, a4
                  slti         a7, a0, 1925
                  srli         t5, s2, 28
                  nop
                  or           s3, s6, t0
                  sra          a0, t6, ra
                  sll          gp, s7, t0
                  addi         a6, t5, -1100
                  ori          tp, s5, -45
                  add          t6, s5, s9
                  xor          gp, a6, s11
                  srl          t6, tp, t5
                  srai         a6, a4, 5
                  add          t5, s5, s0
                  slti         t6, a5, 1836
                  xori         gp, t0, 506
                  auipc        zero, 111646
                  add          sp, a4, s9
                  andi         sp, t1, 548
                  sltiu        t6, s1, -382
                  srl          s6, a3, t5
                  andi         s3, s10, 1096
                  slt          t3, a2, a1
                  auipc        t0, 302540
                  srli         t0, s9, 22
                  ori          s1, a7, 394
                  andi         a4, tp, 1069
                  slli         s8, zero, 15
                  addi         zero, ra, 1900
                  or           a5, s5, a4
                  auipc        a6, 1033150
                  sub          s1, s9, a7
                  sub          a1, s10, s11
                  andi         ra, a1, 1787
                  slt          sp, s4, t5
                  xori         s3, s4, -426
                  sra          sp, s8, a0
                  srli         t6, a1, 17
                  sub          ra, a6, a1
                  slti         tp, a5, 202
                  sltu         s9, a5, s6
                  andi         a2, zero, 1570
                  slti         s3, t1, -37
                  lui          s8, 383845
                  lui          s9, 976151
                  andi         s8, a3, 357
                  slli         s10, s11, 26
                  xori         tp, t6, 1390
                  add          t0, t5, a0
                  sltiu        tp, t4, -471
                  sra          a4, sp, t2
                  sub          s11, t1, t1
                  srl          a4, zero, s6
                  sltiu        s7, s10, 783
                  srl          t3, a1, a1
                  xor          a5, s1, s5
                  srli         s10, t0, 1
                  slt          s6, s5, a1
                  lui          a5, 725220
                  xor          sp, tp, a3
                  srli         tp, a3, 6
                  slli         s6, s1, 4
                  addi         a7, a4, 1373
                  sll          a4, t3, s4
                  srl          a4, t2, t1
                  and          a0, s0, s9
                  slt          s0, s0, a5
                  srli         a3, ra, 26
                  sltiu        s1, a1, -1669
                  and          s1, a7, s8
                  sub          s11, t0, s0
                  sra          t0, t1, sp
                  srl          s5, s2, a5
                  auipc        t3, 747079
                  slti         s1, a3, -59
                  sub          s6, t4, s1
                  auipc        s3, 528996
                  add          gp, gp, a6
                  sll          s0, t5, t4
                  xor          s5, a0, a1
                  sub          zero, t2, a5
                  lui          t0, 669039
                  nop
                  slti         t6, s10, 1240
                  srl          s7, t5, sp
                  and          t3, s7, t4
                  srli         a3, a4, 0
                  sub          s6, s9, t5
                  sub          ra, a5, gp
                  slt          a5, a2, s11
                  xori         a1, a0, 217
                  xor          s7, s5, s10
                  slti         s8, a4, -1074
                  slli         s1, s5, 23
                  srl          tp, a1, a3
                  ori          s10, s4, -1538
                  srli         s1, a7, 18
                  slti         s7, s1, -999
                  sltiu        a4, t3, 1553
                  slti         s7, s3, -1703
                  slti         s11, gp, -1680
                  slt          t0, a7, a2
                  lui          s0, 876536
                  slt          s9, s10, a5
                  nop
                  add          a1, a5, s10
                  slti         s10, t4, -591
                  sub          t5, tp, s2
                  or           s6, t4, t0
                  add          s8, a2, s4
                  sra          s11, a6, s6
                  srl          s11, s5, s5
                  srai         a7, a3, 23
                  ori          s4, t4, -515
                  andi         s7, t4, -681
                  sltu         a5, a0, s1
                  add          s1, s0, s11
                  xor          t5, a5, t2
                  slli         a0, s11, 12
                  xor          t2, a6, t5
                  xor          tp, zero, s11
                  addi         ra, s11, 577
                  slli         s5, tp, 1
                  xor          s6, t0, s7
                  sltiu        s10, t1, 1234
                  sra          gp, ra, s2
                  ori          s9, t4, 1750
                  nop
                  add          a4, t5, s5
                  sltiu        ra, t4, 433
                  nop
                  srai         ra, t2, 19
                  slli         a5, zero, 16
                  nop
                  and          a5, t5, s3
                  nop
                  nop
                  sll          tp, tp, s0
                  srai         a2, a7, 28
                  xori         s1, sp, -1543
                  srli         s4, s3, 3
                  sub          s1, a5, a5
                  srli         s10, t0, 31
                  addi         s10, a3, 1756
                  slli         a7, s7, 2
                  xor          s0, a1, s8
                  addi         s5, t3, 1539
                  xor          s3, s6, s2
                  add          a7, t4, s1
                  slt          a1, zero, t2
                  add          s11, zero, s3
                  sll          t3, t4, s5
                  addi         tp, a7, 295
                  add          s6, s4, t5
                  or           a5, t4, t6
                  sll          t5, a4, a2
                  srai         sp, s9, 16
                  andi         t3, t1, 1793
                  srl          s0, s0, t3
                  or           t5, s1, gp
                  slt          t5, tp, t6
                  slli         s3, s10, 23
                  srl          s5, s9, s1
                  srai         t5, s9, 6
                  auipc        t0, 154202
                  slt          t5, gp, zero
                  srai         s0, tp, 31
                  slti         s4, a7, 1745
                  xor          s3, a2, tp
                  sra          a5, zero, t6
                  xori         a6, s8, -1109
                  auipc        a0, 151160
                  sll          a4, a6, s5
                  addi         a1, t0, -1514
                  xor          s1, t5, s4
                  sltiu        s5, t3, 1347
                  slti         s6, ra, -1100
                  auipc        gp, 274438
                  nop
                  srl          s5, s1, sp
                  or           a1, s4, sp
                  ori          s6, s8, -895
                  sll          t0, t5, s2
                  slt          sp, tp, tp
                  add          t5, ra, s6
                  nop
                  nop
                  slli         a2, a6, 22
                  or           gp, t3, s1
                  srli         ra, s11, 12
                  sub          s3, t1, t5
                  auipc        a7, 774247
                  auipc        a4, 471838
                  or           s9, s11, ra
                  srl          s4, ra, a2
                  sra          t6, s8, s8
                  sltu         a0, s7, t0
                  xor          s0, s10, a7
                  slli         sp, t2, 24
                  andi         a3, t3, 1477
                  lui          s10, 443618
                  ori          a2, sp, -600
                  sll          t3, t5, s11
                  lui          zero, 477253
                  xor          a2, s10, s2
                  slli         a2, s2, 8
                  and          t5, s10, s11
                  slti         s5, s0, 1957
                  ori          s11, gp, 36
                  lui          s4, 827898
                  auipc        ra, 688107
                  and          s4, t2, s9
                  sub          zero, sp, s0
                  srai         s3, sp, 2
                  nop
                  srai         a3, s0, 31
                  slti         s0, s4, 740
                  srl          a0, a7, s4
                  sra          t5, s2, zero
                  srai         a6, s11, 25
                  xori         s8, a3, -234
                  srli         s7, s8, 29
                  andi         sp, ra, 1008
                  auipc        s11, 412459
                  slli         s10, s2, 30
                  srli         s1, tp, 11
                  andi         s10, s1, 1634
                  srai         ra, t4, 23
                  srai         tp, s1, 24
                  and          s4, s0, t6
                  srli         a3, s3, 6
                  lui          s9, 732384
                  xor          ra, a2, a7
                  add          s7, a5, s10
                  lui          s9, 482125
                  nop
                  addi         s5, a6, 219
                  andi         a0, t0, 577
                  lui          zero, 1044553
                  lui          t0, 880003
                  sltu         s4, t1, sp
                  and          s0, sp, a2
                  addi         s11, a4, 1303
                  slt          t3, s4, s2
                  sra          a6, sp, a7
                  add          t5, t1, s10
                  ori          zero, a7, -203
                  or           s4, t5, t1
                  nop
                  and          s6, t0, s10
                  and          a4, t4, a0
                  xori         s7, s5, 1415
                  slt          s9, gp, s5
                  srl          zero, s1, a0
                  srai         ra, t2, 23
                  and          t3, t2, t6
                  slli         a7, s5, 25
                  auipc        tp, 296128
                  sub          ra, s0, a0
                  slt          s9, t4, s5
                  ori          s7, s10, -95
                  srl          s9, t2, s8
                  slt          a1, s7, t3
                  sltu         s9, s7, a2
                  addi         t5, a7, 1326
                  sub          ra, a0, ra
                  nop
                  slli         s3, a5, 12
                  srai         a0, a2, 14
                  and          zero, s5, s11
                  xori         a4, t4, 1066
                  xori         s3, s0, 1230
                  sltiu        s8, a3, -1440
                  sub          s5, s10, s2
                  slti         a7, a3, -331
                  slti         gp, tp, -4
                  or           gp, s3, a7
                  srai         t2, a6, 31
                  srai         s1, s10, 16
                  lui          a2, 602713
                  srl          t2, a2, s4
                  sltiu        zero, a7, 90
                  srai         a5, t2, 16
                  srli         sp, s6, 4
                  or           t6, a3, a0
                  slt          s6, s6, s5
                  auipc        sp, 282649
                  addi         s6, s5, -466
                  sll          s6, t3, a7
                  sll          a0, s3, t2
                  sltiu        a7, s11, -1107
                  slti         tp, sp, -516
                  slli         a1, tp, 25
                  sltiu        a6, a6, -360
                  sub          s3, a7, a3
                  and          t2, s2, s4
                  ori          t0, t4, 285
                  and          a7, a6, s8
                  or           s9, t3, s4
                  sltiu        s9, t6, 2004
                  slli         a4, s2, 12
                  ori          s0, tp, -1758
                  slti         s7, a3, 440
                  addi         sp, tp, 1085
                  slti         t0, s11, -667
                  sltiu        zero, t2, -585
                  ori          s6, t2, -1060
                  sltu         tp, a7, tp
                  sub          s7, t4, t5
                  sltu         a0, ra, s2
                  sll          s6, t0, t2
                  slti         s3, t4, -651
                  addi         s9, a1, -558
                  and          s0, tp, tp
                  andi         s5, a5, -713
                  srli         a0, a4, 14
                  slli         t0, a0, 8
                  sub          a6, s6, gp
                  auipc        s0, 1028727
                  or           a2, t3, a5
                  nop
                  sra          t2, a2, t0
                  sub          a0, a7, a5
                  ori          s7, a2, -385
                  slti         ra, t2, 600
                  slt          a4, a5, zero
                  sltiu        a0, t0, 916
                  auipc        s10, 896083
                  srl          ra, sp, a2
                  slt          a7, t4, s4
                  and          s7, s10, a4
                  sra          gp, a4, a0
                  or           t3, s1, s6
                  ori          s4, s9, -1818
                  auipc        s6, 645997
                  nop
                  sra          s11, tp, s0
                  sll          s6, s10, a3
                  nop
                  add          s5, s11, ra
                  slti         a1, s11, 603
                  srai         s3, ra, 4
                  add          t6, t0, s1
                  and          tp, t2, a3
                  andi         ra, a6, -1888
                  sltu         t2, t5, a2
                  slt          t0, a2, tp
                  addi         gp, s2, 1737
                  slti         a3, tp, -907
                  sltu         s3, gp, t3
                  srli         a2, a5, 25
                  xor          t5, s2, sp
                  sltu         t5, s9, s10
                  srai         zero, s10, 21
                  addi         s7, t6, 1880
                  nop
                  lui          s5, 346409
                  sltu         s5, a0, s11
                  or           s1, s9, s2
                  auipc        s8, 589905
                  addi         t6, a2, 2042
                  slti         a6, a1, -69
                  slt          t0, a7, s2
                  lui          t0, 679834
                  and          s4, zero, s10
                  slt          a1, s8, s1
                  auipc        a6, 72120
                  ori          s9, s1, -1169
                  add          a5, a5, ra
                  andi         t0, t3, -1281
                  slti         a4, zero, 536
                  srai         sp, ra, 4
                  srai         t6, a0, 5
                  slti         s5, s8, -141
                  srl          zero, a2, t6
                  sltiu        a0, s0, -1248
                  sltiu        gp, t2, -1648
                  sltu         gp, t1, s0
                  or           a3, t0, a1
                  or           a4, a0, a7
                  srl          t2, ra, s4
                  addi         a0, t5, -578
                  slti         a2, a1, 1120
                  xor          sp, t3, s9
                  add          a3, sp, gp
                  auipc        t3, 454002
                  sub          a2, t0, s10
                  andi         t2, a3, 586
                  xori         s0, s4, 412
                  lui          t5, 57328
                  srai         ra, s4, 25
                  andi         a1, s5, -1201
                  or           tp, s4, t3
                  sltiu        a3, a7, 1804
                  nop
                  sra          a3, s1, a7
                  srai         ra, a2, 13
                  slli         a5, gp, 10
                  srl          ra, t5, a5
                  and          zero, t1, s6
                  add          s1, t6, s0
                  srai         a1, a5, 8
                  lui          a0, 136273
                  sll          s3, s1, s5
                  lui          a5, 916454
                  addi         t5, s0, -334
                  sll          tp, s0, s3
                  srli         t3, a4, 22
                  sra          s10, a4, t0
                  sub          t5, a5, gp
                  srl          tp, s5, a5
                  srl          s4, sp, a4
                  ori          s1, s2, 1418
                  srai         a3, s5, 5
                  xori         s5, s11, -27
                  andi         s3, sp, -1656
                  lui          s0, 441010
                  nop
                  srli         ra, s2, 14
                  lui          t6, 707836
                  lui          a7, 183784
                  or           a5, s5, a3
                  auipc        a1, 80682
                  xori         a3, s10, 1830
                  sub          s7, s9, s0
                  slt          sp, s7, ra
                  andi         t3, s3, -522
                  sra          s9, t6, s8
                  srl          a0, a5, a3
                  andi         a3, t0, -1141
                  ori          ra, a6, 807
                  or           ra, s0, s5
                  sltu         t2, a5, t1
                  xori         a6, a2, 720
                  auipc        s10, 61005
                  slli         s5, zero, 20
                  sll          s0, s0, sp
                  sll          a6, s3, a6
                  sltiu        zero, s4, 756
                  slti         a5, t4, 1302
                  andi         s10, tp, -260
                  slt          s3, t5, gp
                  andi         a4, tp, -1836
                  slti         a2, t6, 1597
                  lui          a5, 36120
                  sra          sp, sp, t4
                  slti         a6, a2, 894
                  xor          s3, s3, zero
                  slt          tp, sp, s5
                  srl          s8, s5, s11
                  addi         a5, gp, -342
                  slti         a5, s9, -484
                  lui          a3, 1867
                  auipc        a7, 216842
                  xor          ra, s4, t5
                  sra          tp, s3, t2
                  sltiu        a3, t3, 244
                  add          a6, a5, s2
                  sll          a0, s1, s9
                  nop
                  sll          t0, a6, a1
                  nop
                  ori          s7, s6, -1272
                  xori         ra, s7, -1449
                  xor          s4, zero, tp
                  sub          tp, s6, s2
                  srai         a4, a1, 21
                  sub          t2, gp, s1
                  lui          t2, 84702
                  nop
                  sub          t6, s2, s2
                  sltiu        s10, a1, -52
                  and          a7, s3, ra
                  ori          a0, s9, -1278
                  slt          s10, t2, a4
                  srli         a2, s1, 12
                  and          t0, tp, s3
                  xori         a3, t0, -731
                  addi         t2, s10, 1081
                  slt          s8, t0, a3
                  xor          a2, s11, t4
                  slt          s4, s8, s10
                  slli         a0, ra, 23
                  xori         a1, zero, 42
                  sub          t5, tp, s6
                  auipc        t0, 227232
                  sub          a5, a0, s3
                  nop
                  srl          t5, a2, s2
                  ori          s7, s1, 30
                  sub          a7, a1, s5
                  sub          s6, a3, t0
                  slti         a5, a5, -1467
                  and          a2, a7, t2
                  ori          t3, t5, -1959
                  sltu         s1, s10, a1
                  sll          t6, s8, t0
                  andi         a7, tp, -1453
                  ori          a0, s6, -976
                  or           s0, t6, t4
                  addi         s1, s0, 1172
                  slt          s1, s9, s5
                  srli         s3, zero, 28
                  or           a0, s5, s8
                  xori         gp, a3, 544
                  xor          a3, s4, ra
                  sra          t2, a2, s2
                  xor          a7, t1, s4
                  or           s1, s4, s2
                  srai         a3, s2, 12
                  and          s7, s5, s10
                  addi         s9, t6, -473
                  xori         a6, t6, 763
                  lui          s3, 308822
                  srai         s0, s10, 13
                  or           a2, t4, t3
                  xor          s6, zero, s9
                  add          s7, sp, s1
                  sltiu        t0, a5, -1313
                  slt          s4, s8, a0
                  lui          sp, 752483
                  sltu         a6, s8, s5
                  srli         s7, tp, 11
                  addi         s0, s9, 516
                  sub          t2, t6, a3
                  and          s3, gp, sp
                  sub          t3, t6, s2
                  or           s11, a6, zero
                  sltu         s10, a2, a1
                  slt          a7, s0, s4
                  srli         a1, s7, 10
                  ori          tp, a2, 846
                  srli         s5, ra, 21
                  and          tp, a5, a5
                  lui          a0, 211468
                  sll          s4, s1, sp
                  srai         a7, s5, 22
                  addi         gp, t3, -1635
                  and          s3, t3, t5
                  auipc        s8, 766084
                  sltu         s8, ra, t6
                  and          s1, zero, a1
                  add          s10, t5, t1
                  slli         s0, t4, 20
                  sltiu        a4, ra, -1035
                  sra          gp, a1, zero
                  sltiu        s11, a7, -1842
                  lui          t3, 1048565
                  slti         s4, a0, 88
                  srai         t6, s1, 20
                  slt          s7, s7, s2
                  sltiu        gp, ra, 1851
                  nop
                  srai         ra, t3, 25
                  add          a1, tp, t1
                  srai         s5, zero, 8
                  slt          a3, s8, zero
                  ori          s3, s7, 442
                  xor          a0, a5, s6
                  xor          s4, s6, a1
                  auipc        s3, 701051
                  slti         s10, s9, -262
                  sub          tp, t2, t5
                  sll          s9, t5, a3
                  ori          zero, a0, 729
                  slti         s1, t0, -578
                  xori         s10, s0, -165
                  auipc        a0, 218498
                  sll          a1, ra, s7
                  or           a6, t4, t6
                  ori          tp, a5, 1816
                  andi         a7, t6, -1770
                  lui          s11, 329112
                  sll          s8, t2, s4
                  andi         s0, a7, 1099
                  add          sp, a4, a5
                  slt          s4, s1, a1
                  nop
                  ori          s10, t5, 1085
                  slli         ra, s0, 20
                  sltiu        t6, s11, -439
                  sra          a7, s2, t6
                  and          a2, a6, s6
                  sltu         sp, s1, s2
                  xori         s10, t6, -1493
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           a7, 0x0
                  li           s9, 0x80000000
                  li           a3, 0x9f930a6c
                  li           a1, 0xffffffff
                  li           t0, 0x0
                  li           sp, 0xffffffff
                  li           gp, 0x0
                  li           t6, 0xffffffff
                  li           s4, 0xffffffff
                  auipc        t3, 77480
                  add          s9, t0, t0
                  add          t0, gp, t6
                  sub          s9, t3, t0
                  add          s4, s4, gp
                  addi         s4, t0, 449
                  sub          sp, s9, sp
                  lui          t0, 497836
                  lui          t6, 610827
                  sub          s4, t6, a7
                  nop
                  add          a1, a7, t6
                  addi         a1, gp, -1522
                  lui          t0, 586283
                  add          a1, sp, a3
                  sub          t0, t0, a1
                  sub          t6, a3, gp
                  add          sp, a1, t3
                  lui          t6, 333082
                  addi         a3, t0, 1407 #end riscv_int_numeric_corner_stream_9
                  slli         s1, a2, 22
                  auipc        a0, 143316
                  auipc        a2, 841675
                  xori         a0, a2, 1857
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s9, 0x80000000
                  li           a7, 0x4c27fc69
                  li           sp, 0x9fbeb91
                  li           tp, 0xffffffff
                  li           t2, 0x0
                  li           a0, 0xc6e60a5c
                  li           s3, 0xa35ede03
                  li           s8, 0x80000000
                  li           a5, 0x80000000
                  lui          a7, 247541
                  add          t2, sp, s9
                  addi         a5, a5, -1423
                  nop
                  lui          t2, 38133
                  sub          s10, s10, t2
                  auipc        a0, 85442
                  add          s8, s9, t2
                  lui          s10, 327871
                  sub          s8, tp, t2
                  sub          s3, s8, s9
                  auipc        tp, 900256
                  sub          a7, a0, a5
                  sub          a0, sp, s10
                  lui          tp, 83616
                  add          a0, s3, s8
                  addi         sp, a0, -1096
                  nop
                  add          a7, t2, sp #end riscv_int_numeric_corner_stream_11
                  slt          zero, sp, t2
                  addi         a5, s2, -1552
                  slt          a4, a7, t4
                  sltu         a0, s1, s2
                  slli         ra, s10, 18
                  auipc        s11, 157774
                  srli         t2, t6, 6
                  and          a1, a4, a2
                  sltu         t2, t1, a7
                  sll          s1, t1, a3
                  sltiu        s8, s3, -805
                  sub          t5, t2, s9
                  lui          s1, 573917
                  add          s3, a2, tp
                  addi         s9, s11, 313
                  lui          s0, 1003806
                  addi         t0, a7, -1397
                  nop
                  auipc        gp, 232944
                  sltiu        a7, t3, 898
                  srai         a5, a6, 31
                  addi         a3, s7, -893
                  add          t2, gp, s2
                  slt          s1, s0, a7
                  xori         zero, s1, -1121
                  lui          ra, 136550
                  sra          s9, t6, s10
                  nop
                  srl          t0, a3, s6
                  ori          s4, tp, -275
                  slt          a1, t6, tp
                  and          t3, s4, a7
                  xor          ra, t0, t1
                  addi         s3, t4, 90
                  and          a2, a4, t5
                  xor          a2, s2, s5
                  sub          t6, s11, a2
                  srl          s1, t5, s5
                  lui          t3, 758731
                  and          t2, s5, t5
                  and          zero, a6, t1
                  sltiu        s4, a0, 1975
                  auipc        s1, 271546
                  xor          a0, s11, t0
                  nop
                  srli         s6, a4, 13
                  xori         a2, a4, -102
                  auipc        s9, 323680
                  sll          t0, zero, s0
                  ori          s8, s3, -419
                  sltu         a3, t4, t3
                  sub          ra, sp, ra
                  sll          s10, t5, t5
                  xor          s7, t4, t3
                  auipc        s5, 520331
                  srai         t0, tp, 14
                  sra          a0, s2, s6
                  slti         a5, s1, -479
                  slli         s8, a6, 31
                  sltu         t0, t3, tp
                  slli         tp, s3, 22
                  sltiu        s6, t3, 1183
                  ori          gp, a3, -69
                  addi         sp, t2, 1948
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           sp, 0xb68cc190
                  li           a4, 0xffffffff
                  li           a2, 0x0
                  li           s11, 0x80000000
                  li           s4, 0x80000000
                  li           s10, 0x0
                  li           t3, 0x0
                  li           a3, 0x80000000
                  li           ra, 0x0
                  addi         s6, a4, -1293
                  add          sp, a4, sp
                  lui          t3, 478872
                  sub          s4, s11, a2
                  add          t3, a2, s11
                  addi         a2, a2, -1247
                  auipc        s6, 115565
                  addi         s6, sp, -231
                  auipc        a4, 730174
                  sub          s10, ra, ra
                  nop
                  sub          sp, ra, a3
                  sub          t3, s10, s6
                  add          s6, ra, s10
                  addi         a4, ra, -1749
                  nop
                  addi         a4, t3, -2016
                  lui          sp, 723218
                  lui          t3, 239519
                  auipc        a2, 337651
                  lui          a2, 1024812
                  nop
                  nop
                  addi         s11, sp, 1051
                  nop
                  addi         ra, s11, -788 #end riscv_int_numeric_corner_stream_19
                  sltiu        a6, t3, -28
                  ori          s8, t3, -1003
                  sll          t5, zero, tp
                  slli         a2, s3, 3
                  sltu         s1, a4, a3
                  slt          a0, t1, a6
                  sltiu        s6, s6, 725
                  sltu         s9, s10, t0
                  addi         t6, s6, 1146
                  addi         t6, s1, -1055
                  sltu         t5, a1, a5
                  srl          zero, s1, sp
                  sltu         s7, a4, a2
                  addi         s4, a1, -665
                  sltu         a4, s6, s8
                  slti         t3, t6, 30
                  auipc        a3, 819584
                  sltu         t0, t5, a5
                  add          s5, s8, s5
                  lui          s4, 51246
                  add          t2, a7, s2
                  srli         ra, a0, 19
                  slt          s0, s7, s11
                  srli         s0, s10, 10
                  sltiu        s5, s6, 1462
                  sll          t3, sp, s0
                  ori          s8, s1, -1442
                  sub          s6, s1, a5
                  xor          s0, a2, s8
                  sra          a4, t6, s11
                  add          tp, t3, a0
                  slli         t0, a7, 30
                  srli         zero, a5, 21
                  slti         a0, t1, 35
                  lui          t5, 200491
                  srli         a0, zero, 29
                  and          s8, ra, t2
                  auipc        sp, 232279
                  xor          tp, s6, sp
                  slti         a4, s7, 1616
                  slli         zero, s8, 17
                  srl          t0, a4, t1
                  nop
                  ori          a4, t0, -493
                  lui          s3, 600978
                  xor          a3, t5, s8
                  sltu         t0, t1, a7
                  add          t5, s9, a4
                  and          a7, a1, a1
                  sra          s6, gp, t5
                  and          a2, t0, a2
                  sltu         a6, a3, s10
                  slt          s3, s8, s7
                  srli         a7, a4, 23
                  srli         s6, t5, 20
                  and          s5, t3, s1
                  lui          ra, 403711
                  sub          s3, a7, s1
                  sra          s9, s10, a3
                  slt          s10, zero, t6
                  slti         s4, sp, 1466
                  sra          s3, t5, gp
                  sltu         a2, tp, s3
                  sltiu        s5, a0, -1435
                  nop
                  slt          a6, a2, a4
                  sltu         a7, gp, s4
                  or           gp, tp, a3
                  nop
                  srl          t2, t5, t1
                  sll          gp, a7, s3
                  sltu         s6, t5, s4
                  or           a5, s5, t3
                  lui          s0, 572600
                  sltu         s1, a4, a3
                  ori          t6, a1, 614
                  auipc        zero, 814164
                  xor          a5, gp, s4
                  addi         a0, gp, 711
                  and          ra, t2, t3
                  srl          s10, a0, s10
                  slt          s0, a1, a5
                  add          gp, t4, ra
                  xori         a0, s11, -1424
                  auipc        t0, 2818
                  sll          s8, zero, t1
                  and          a7, s11, s3
                  nop
                  srli         a4, t3, 2
                  add          s8, a0, s6
                  nop
                  slt          a6, sp, sp
                  nop
                  xori         zero, s0, -1369
                  srl          a5, s0, a2
                  sll          ra, t3, a4
                  sltu         a3, s5, s9
                  sltiu        s0, t5, 1181
                  sll          s5, a2, a4
                  slli         a0, s8, 11
                  ori          a1, sp, 45
                  andi         s6, sp, 41
                  nop
                  sltu         s7, s1, s10
                  srai         a3, s10, 8
                  sub          sp, t3, a5
                  slti         a2, tp, 1718
                  slli         s5, sp, 27
                  andi         a3, s4, 436
                  add          a7, s4, s2
                  sra          s6, zero, s6
                  slt          t0, t2, t6
                  andi         a6, t3, -371
                  slt          t0, s2, s7
                  sra          a3, sp, s1
                  and          t0, a0, a3
                  ori          t0, s9, -1335
                  slt          a6, s4, s2
                  and          sp, t3, s1
                  sub          s1, t0, s10
                  sra          a5, s6, s11
                  srl          s7, a0, t4
                  srli         a1, gp, 13
                  slt          s0, s1, s7
                  add          a5, s2, t5
                  nop
                  sltiu        a1, s6, -724
                  sll          t2, gp, s1
                  srl          s9, t3, s8
                  add          gp, a6, zero
                  nop
                  ori          s1, t2, -725
                  slt          a4, s6, t6
                  sltu         s8, a4, t3
                  xori         t6, s0, -1605
                  slti         s9, t1, -699
                  slti         s7, zero, -758
                  nop
                  sll          a5, s4, s7
                  ori          tp, s6, 1549
                  sra          s3, s0, s4
                  sll          t0, s2, zero
                  andi         s4, gp, 430
                  ori          s5, a3, 1783
                  sll          s10, a6, t6
                  ori          a2, t6, -646
                  xori         s1, t5, 162
                  auipc        zero, 11060
                  and          a6, a0, s10
                  sub          s4, gp, s5
                  sltu         s6, a3, a7
                  srai         s0, a5, 30
                  andi         a7, s4, -1062
                  sll          tp, a7, a7
                  addi         s5, a3, 1139
                  sll          gp, a1, s6
                  add          s9, a1, s1
                  nop
                  andi         a2, t2, -1658
                  sll          s11, a5, a1
                  sll          a5, s7, t0
                  sltu         s0, t4, s3
                  add          a1, a6, a5
                  ori          s8, t6, -989
                  slti         s3, s7, 1041
                  add          sp, s1, s3
                  sltiu        s8, a1, -1010
                  sltiu        a5, a1, -1335
                  slti         a1, a2, 49
                  sltiu        s7, s7, -1516
                  xor          a5, a0, tp
                  slli         s5, s2, 29
                  and          a6, t0, s10
                  or           s10, s5, t2
                  sll          a3, t3, s5
                  srli         a7, a6, 22
                  sll          t2, s5, a0
                  xori         a3, s2, 776
                  lui          s5, 126491
                  sltiu        tp, t2, -1925
                  nop
                  srl          s10, t4, t6
                  nop
                  slt          a4, a6, a3
                  slti         a4, s0, -493
                  sll          zero, s7, a2
                  srli         a6, s5, 0
                  xor          t3, a7, s0
                  sra          a6, a5, a5
                  slli         tp, t0, 11
                  srl          t6, a5, a2
                  or           s5, a0, a2
                  and          sp, a2, a6
                  xor          s11, t6, t6
                  srai         t5, a5, 16
                  sltu         s10, t2, s5
                  and          s1, a0, gp
                  sltiu        s4, ra, 1679
                  sltu         s0, a0, t4
                  srli         a3, a2, 3
                  or           s3, gp, zero
                  and          s0, ra, a3
                  srli         a6, t0, 11
                  srai         t3, t6, 21
                  srli         a2, t3, 22
                  ori          s1, a7, 102
                  nop
                  slli         t5, a2, 8
                  sra          t0, t1, a0
                  sll          a0, a0, s7
                  slt          zero, a4, a6
                  xori         gp, a4, -1159
                  srli         s10, t5, 27
                  slti         s9, s8, 1116
                  auipc        s10, 720584
                  and          a2, s9, t1
                  sub          a0, t4, a6
                  ori          zero, s6, 1385
                  slt          s6, a0, s3
                  nop
                  or           s10, s5, t5
                  ori          a0, zero, -1217
                  sra          s8, t2, s10
                  ori          t6, gp, 1556
                  srl          a3, t0, a6
                  srli         t6, s7, 5
                  sltiu        zero, s2, 1640
                  slti         t2, s9, -1800
                  and          a7, s9, sp
                  nop
                  sra          t6, s2, s3
                  xori         a3, a7, -1272
                  sltu         gp, a4, s9
                  slt          a0, a3, s0
                  srai         a3, t6, 30
                  andi         a7, a6, -1228
                  sra          s5, t1, s11
                  slti         t5, a6, 1271
                  slti         a1, s6, 799
                  ori          sp, s5, 1368
                  sltiu        s7, a0, 108
                  auipc        sp, 681596
                  srl          t3, zero, s0
                  lui          s5, 334651
                  or           s6, a1, t0
                  sltu         sp, s8, t2
                  and          sp, zero, a7
                  srli         a7, gp, 29
                  sll          t5, s9, s4
                  addi         a1, s11, -1655
                  slt          s9, a2, a7
                  and          t0, a0, s11
                  addi         sp, s2, -1630
                  slti         s1, ra, 1533
                  sltu         t6, s11, s9
                  srli         s9, a4, 9
                  slti         a0, t5, -473
                  or           s3, a0, a7
                  auipc        s3, 75634
                  srli         sp, t0, 24
                  slti         a5, s5, 936
                  addi         a2, a7, 323
                  slti         s3, t4, 880
                  slli         sp, t3, 23
                  sll          a0, s8, s3
                  auipc        a0, 107379
                  and          tp, s3, t0
                  xori         s1, zero, 260
                  srli         zero, zero, 13
                  auipc        s3, 972698
                  or           s7, t2, t3
                  ori          ra, t2, 1068
                  srli         a2, s11, 17
                  srai         gp, s5, 31
                  add          s0, s4, a2
                  andi         s1, t6, -572
                  lui          t6, 192443
                  srli         a2, t5, 7
                  ori          a7, tp, -1719
                  slli         s9, s2, 15
                  add          a0, a4, s3
                  xori         zero, a5, -1714
                  andi         s8, s10, 1369
                  sub          s10, t3, s8
                  sra          t5, t0, s4
                  srli         t0, s4, 21
                  srli         t5, s3, 8
                  slti         a6, s8, 1509
                  or           a7, t5, s1
                  or           t2, s11, s6
                  nop
                  slti         s7, s4, 1465
                  andi         t2, t2, 1156
                  addi         s4, a0, 832
                  slli         s11, zero, 10
                  slti         a5, a6, -1579
                  auipc        s9, 309775
                  andi         s6, zero, 2034
                  srl          s4, zero, zero
                  sltu         s3, sp, s1
                  andi         s5, s0, 1678
                  sll          a5, t5, s5
                  add          s8, a5, s5
                  addi         s5, s11, 668
                  nop
                  add          a4, tp, s2
                  srli         s0, t3, 23
                  slli         s1, t0, 13
                  sltiu        s5, s8, 1448
                  sltu         s11, s4, s9
                  ori          zero, s11, 947
                  xor          t0, a6, t4
                  sll          ra, a5, t2
                  xori         s4, s8, 1760
                  srli         t0, s4, 24
                  srai         t3, s11, 20
                  and          a2, a6, gp
                  add          tp, t3, gp
                  sltiu        t2, ra, -530
                  xor          a4, s7, zero
                  sub          s3, s5, s7
                  slli         t3, a0, 21
                  xori         s9, t0, 1453
                  sltu         a5, s2, s4
                  slti         a2, s9, -1666
                  addi         s4, s7, -209
                  srli         a0, gp, 7
                  sltu         s9, a6, a5
                  add          gp, s1, s0
                  lui          zero, 980769
                  slt          s3, t1, a5
                  sltu         zero, a3, s6
                  srai         a0, s5, 21
                  and          gp, a1, s1
                  xori         t0, s1, 456
                  auipc        s3, 841927
                  and          s6, t6, s5
                  nop
                  add          a3, gp, a2
                  sub          sp, a3, a7
                  sub          gp, a6, a1
                  sltiu        s5, a1, 664
                  add          ra, t5, s3
                  slli         sp, s3, 9
                  nop
                  sll          a3, a4, t4
                  slli         s3, t4, 6
                  sub          ra, a2, t0
                  or           s8, sp, zero
                  lui          tp, 429091
                  and          a3, t3, a5
                  sub          a0, t5, a1
                  sll          s10, a5, a4
                  slti         s9, a3, 647
                  sltu         s10, a0, a3
                  ori          a6, s10, 782
                  sra          t2, s5, s9
                  slli         a1, tp, 19
                  xor          s4, a3, zero
                  srli         a0, t4, 28
                  sltu         t6, a3, gp
                  xor          s1, t0, s5
                  addi         t3, s6, -1825
                  slli         t0, s7, 9
                  andi         s6, s3, -368
                  sltiu        t3, s0, -799
                  slti         a4, zero, -1517
                  srl          a2, s1, t5
                  sll          zero, s10, t0
                  srl          t0, t3, s4
                  add          t6, t2, a7
                  srl          a7, s9, s5
                  sll          ra, a5, s7
                  xori         s11, s1, 485
                  sra          zero, t5, t3
                  sltiu        s9, s6, 1568
                  srai         a4, t2, 18
                  ori          s8, s2, 201
                  ori          s7, zero, -738
                  srl          s10, a1, t5
                  slt          ra, a0, s7
                  sub          t6, s5, s5
                  srli         zero, s5, 24
                  slt          t2, a1, s5
                  sltiu        t2, a6, 1171
                  xori         ra, t1, -1948
                  srl          t6, t5, s0
                  sltiu        a5, a5, -1542
                  slli         t0, a2, 27
                  sltiu        t6, gp, 902
                  srli         s1, zero, 3
                  andi         ra, ra, -1986
                  xor          s0, s3, gp
                  or           t5, a6, t4
                  sltu         tp, a1, s5
                  srai         t2, s6, 20
                  sra          a1, a0, s1
                  slt          gp, a2, t2
                  slti         s9, t2, 340
                  slt          s0, a2, a1
                  sltu         a0, s1, s6
                  sra          a5, t4, a4
                  andi         s11, tp, 1802
                  and          t5, t1, s4
                  addi         a7, s2, 807
                  or           s10, s9, a7
                  srai         a7, sp, 26
                  sub          t6, a3, s9
                  srl          s1, tp, a1
                  ori          a5, s0, -2002
                  xori         a7, t6, -930
                  xori         ra, a0, 2045
                  slti         s10, s10, 265
                  sra          a3, a2, s8
                  ori          s1, zero, -573
                  ori          t5, a3, 1090
                  nop
                  slt          a7, s4, a5
                  nop
                  auipc        a0, 919561
                  slti         ra, s4, -1489
                  srai         sp, s9, 17
                  srli         a1, t2, 10
                  slt          s4, t3, s7
                  sll          tp, s0, t1
                  sltiu        s11, gp, -38
                  xori         s0, s0, 507
                  and          t5, s5, s1
                  xor          t2, tp, s8
                  sltiu        a2, a3, -395
                  xori         zero, t5, 1910
                  srli         s10, s5, 5
                  srl          a4, s5, a3
                  srl          a2, s0, t2
                  or           t6, a0, a6
                  srl          s3, s2, s4
                  and          ra, sp, ra
                  xori         a1, a6, -1943
                  and          t6, t0, s4
                  or           a6, s7, gp
                  sub          sp, s3, s7
                  or           tp, sp, s7
                  xori         t6, s6, -1188
                  srl          a5, s8, t2
                  andi         a6, t6, 956
                  sra          sp, t4, a2
                  lui          s5, 347129
                  lui          s5, 730870
                  sltiu        s0, s11, -59
                  srai         s10, s4, 11
                  xor          s4, s7, s10
                  lui          s5, 751634
                  and          s7, a2, s5
                  xor          s10, s9, s7
                  add          a0, s2, a4
                  andi         s10, a0, 898
                  sltiu        a7, a7, -1827
                  xor          t2, s7, a5
                  sra          a5, s9, s7
                  sltiu        a5, s11, -820
                  slli         t3, t1, 5
                  auipc        a6, 50828
                  add          s6, t2, zero
                  xori         s11, s1, 835
                  srli         a5, ra, 26
                  sltu         tp, t0, s7
                  sra          t0, ra, s1
                  andi         gp, a2, -584
                  srli         s1, tp, 16
                  xor          zero, s5, sp
                  xori         s9, t5, 1503
                  auipc        a2, 928155
                  ori          s1, gp, -1876
                  sub          gp, s3, a3
                  srai         s1, a2, 17
                  srai         a3, t0, 0
                  auipc        t6, 704648
                  sltiu        ra, s0, -591
                  lui          ra, 56532
                  or           a2, sp, s6
                  srli         a2, a0, 4
                  ori          tp, zero, -599
                  lui          a5, 94360
                  sub          sp, gp, s7
                  sub          t6, s9, tp
                  sra          s0, t0, s5
                  slti         s0, a1, -1936
                  slt          s11, a3, sp
                  srai         s1, tp, 28
                  andi         a7, s11, 127
                  andi         s8, a1, 1543
                  sub          zero, a2, tp
                  nop
                  slt          t5, a3, s0
                  srl          sp, s11, s0
                  srli         s11, s0, 27
                  slt          gp, t1, t3
                  srai         s3, a4, 10
                  lui          t2, 448912
                  add          zero, a5, gp
                  nop
                  lui          s8, 248993
                  add          s10, s4, a4
                  slt          s8, a1, a2
                  xori         t3, a5, 820
                  lui          a7, 600500
                  slli         t5, t0, 24
                  sra          t6, a5, s10
                  add          a6, a6, a7
                  srai         t0, s8, 23
                  add          s1, t0, tp
                  auipc        s3, 769070
                  lui          s8, 969935
                  slti         s5, s7, 799
                  sltu         s7, tp, s8
                  or           a4, gp, t5
                  slti         s0, a6, -965
                  sltu         s8, s5, t1
                  nop
                  slli         s7, a6, 17
                  sra          s6, t5, a5
                  nop
                  sra          a1, sp, t5
                  slli         a5, t3, 20
                  sll          a2, s4, t2
                  slt          a2, a5, t1
                  srli         s7, t1, 20
                  slli         s11, t2, 19
                  addi         t0, a3, 1022
                  lui          a5, 267032
                  add          s5, s3, s9
                  xor          a6, s0, s9
                  xor          a6, s3, a3
                  andi         tp, s2, -178
                  xor          a2, t0, ra
                  ori          s4, s3, 1914
                  xor          a4, s7, t3
                  or           a3, a4, a7
                  sltiu        s10, zero, 95
                  srl          t3, gp, zero
                  srai         s0, s1, 1
                  sltu         a3, a3, s3
                  srai         s0, t2, 21
                  srai         t0, a5, 18
                  addi         a3, a2, -1248
                  add          gp, t6, t5
                  sub          t3, s10, t5
                  nop
                  add          t2, t3, t5
                  xor          s3, a3, a6
                  nop
                  sub          s11, t0, a7
                  srli         a6, a6, 26
                  slt          zero, s0, t1
                  addi         s6, t4, 977
                  srai         ra, s11, 16
                  slt          a1, a5, tp
                  xor          s8, a0, a1
                  srli         a0, t6, 12
                  nop
                  slti         a1, a5, 639
                  sltiu        s5, a4, -1364
                  xori         s8, s4, 1861
                  xor          s7, s9, tp
                  auipc        t2, 440715
                  srl          s5, t6, s7
                  sra          a0, t5, a1
                  lui          a1, 276607
                  srl          s0, s2, s5
                  slti         a3, t0, 1852
                  and          a2, zero, s5
                  lui          gp, 855523
                  srl          a4, s5, s9
                  srai         a5, sp, 29
                  andi         t3, s1, -295
                  lui          s7, 741466
                  add          s9, zero, a5
                  xori         s5, ra, -374
                  ori          ra, a4, -1367
                  sltiu        s8, a3, -1211
                  slt          a0, s8, ra
                  or           s6, t4, tp
                  sub          gp, s9, tp
                  addi         t6, gp, -737
                  sltu         t6, s2, a3
                  sra          a3, gp, zero
                  addi         t0, s3, 133
                  slt          t6, gp, t6
                  srl          s6, s1, t4
                  sltu         a7, a7, s11
                  sll          s7, s1, t1
                  ori          a2, a1, -298
                  srai         a1, t1, 21
                  nop
                  sll          t6, t1, t4
                  sltiu        s7, s9, 196
                  slti         s3, t6, 66
                  andi         s11, t6, -736
                  srl          a6, s3, s10
                  srl          s1, a6, s8
                  sra          tp, sp, s1
                  srai         a5, tp, 29
                  addi         s5, a7, 8
                  ori          s11, a2, -519
                  sub          s1, a6, a3
                  sltiu        s10, t3, -1679
                  andi         zero, a2, 1256
                  nop
                  ori          s9, t5, 1530
                  nop
                  srli         ra, t2, 23
                  srl          s5, t2, a4
                  addi         s11, t1, -558
                  lui          a6, 341712
                  sltiu        s11, s10, -1972
                  sltu         a5, t0, s6
                  and          zero, a2, a3
                  xor          s3, a1, a1
                  sltu         s11, t0, a4
                  lui          gp, 617847
                  addi         s11, s7, -1126
                  nop
                  andi         ra, ra, 955
                  auipc        a7, 631768
                  lui          t3, 219804
                  ori          s11, a6, -1769
                  or           t6, s11, zero
                  andi         a6, zero, -268
                  slt          a7, zero, s1
                  srli         a6, s7, 8
                  sra          a5, s5, tp
                  andi         ra, a4, 1437
                  srai         a5, a0, 25
                  sltu         a3, s8, a7
                  auipc        s4, 469287
                  slti         t3, s5, 1673
                  slt          s7, s11, s7
                  srai         a2, ra, 8
                  or           t6, t3, a6
                  xori         a3, s10, 994
                  andi         a2, s2, -2014
                  sra          zero, s6, t6
                  sra          t0, t3, s7
                  sll          t5, s7, s11
                  sra          a7, s0, gp
                  add          a4, s0, a4
                  slli         a2, s5, 20
                  or           a6, s6, tp
                  srli         a5, s2, 25
                  slt          s8, t1, a4
                  add          s5, a7, t5
                  nop
                  nop
                  and          sp, s1, t0
                  slli         s9, s10, 16
                  slt          s0, s6, a4
                  andi         s6, a1, 69
                  ori          a5, t2, 825
                  srl          zero, ra, s1
                  srli         s3, a4, 2
                  add          s5, t0, t4
                  slti         a5, a3, -737
                  nop
                  slli         gp, s8, 31
                  add          s3, s4, s0
                  and          s11, t2, t3
                  xori         s10, s8, 439
                  xori         s5, t5, -690
                  xori         ra, s11, -226
                  slt          s11, a0, a2
                  srli         s8, t0, 8
                  auipc        s4, 527145
                  sltiu        s11, t2, -1910
                  srli         s11, s2, 21
                  slli         sp, a3, 8
                  lui          t6, 468768
                  sra          t6, t1, s8
                  addi         s0, s7, 1273
                  xori         tp, s10, -881
                  sub          sp, sp, s10
                  sra          t3, ra, t1
                  slli         a6, t6, 25
                  sub          a4, s2, s4
                  sll          s11, ra, s2
                  srai         s4, s7, 20
                  srai         t3, a0, 29
                  lui          t3, 152846
                  or           a5, ra, s5
                  slti         t5, t4, -802
                  sub          t5, a3, ra
                  auipc        s1, 927445
                  ori          a2, gp, -1713
                  and          zero, a5, t1
                  sltu         a1, t5, t6
                  sltu         a0, a7, s3
                  slti         s9, gp, 1222
                  xori         a1, zero, 300
                  sltiu        a7, s10, -289
                  auipc        a0, 524726
                  or           s5, a5, t3
                  slt          s11, s2, a3
                  xor          a1, s4, s5
                  addi         s3, t0, 115
                  xori         a6, t6, 306
                  and          t5, t1, zero
                  srai         ra, s10, 9
                  sra          t6, s8, s9
                  andi         a2, t5, 1379
                  and          s1, a7, a5
                  add          t2, tp, a7
                  auipc        tp, 336229
                  srai         s4, gp, 13
                  nop
                  sra          s8, a1, s7
                  slti         s3, s3, 1816
                  xori         a5, a6, -864
                  add          zero, s4, t5
                  ori          a1, gp, 363
                  slt          t6, s1, t5
                  xor          ra, tp, a5
                  srli         a6, a0, 22
                  nop
                  and          a0, a2, a1
                  xor          s9, sp, a7
                  sltu         a6, a6, t0
                  xor          a7, tp, t6
                  sll          s7, s11, a7
                  sll          a4, a0, t4
                  ori          gp, s1, -2045
                  addi         s5, s10, -781
                  sra          s6, t0, tp
                  ori          t5, s9, 265
                  srli         s6, t4, 17
                  srl          a2, s3, a3
                  slti         a1, s3, 1977
                  slt          a7, s4, t2
                  addi         tp, tp, -1000
                  or           t5, t2, a4
                  add          t3, t5, a7
                  xori         s6, t3, 1256
                  sltiu        a0, a2, 1968
                  ori          s8, s3, 600
                  xor          a7, a7, a5
                  slt          s1, t0, t3
                  srai         t6, a6, 23
                  slti         s9, s9, -383
                  xor          a0, t2, a6
                  sltu         s1, t3, s8
                  xori         s1, s11, 377
                  xor          a0, tp, zero
                  or           ra, t2, t6
                  sub          s1, a5, s1
                  sra          a4, a2, a7
                  xori         a5, s5, -1154
                  nop
                  nop
                  andi         a5, a4, 1446
                  auipc        s4, 279697
                  slli         gp, t5, 4
                  add          s8, t5, s8
                  srli         ra, t1, 1
                  slli         t5, a7, 27
                  auipc        t6, 507030
                  xori         a6, a6, -738
                  andi         s8, a2, -1876
                  add          s6, s2, s6
                  auipc        a0, 544825
                  addi         s3, a5, -646
                  sltiu        a5, s2, -349
                  slli         t3, ra, 25
                  sll          a6, s1, s5
                  srli         ra, s4, 4
                  srai         s10, s9, 23
                  sub          t6, t1, a2
                  andi         a2, t1, 510
                  or           t6, a3, a0
                  auipc        t0, 687310
                  srli         a6, s0, 19
                  and          t6, t6, a6
                  nop
                  sltu         t5, a0, s11
                  srl          t5, a4, t2
                  auipc        ra, 597139
                  slti         t3, a4, -1914
                  sltiu        a5, t3, -1986
                  sub          a7, a6, t3
                  xor          a5, s7, t0
                  and          a4, s0, t4
                  srl          s5, s1, s5
                  srai         t2, s1, 29
                  add          s0, s5, s7
                  andi         s4, t3, -1688
                  slti         t6, s7, 855
                  sll          t5, sp, a6
                  add          zero, s10, gp
                  slt          ra, s7, ra
                  ori          t6, a6, -118
                  slti         a6, s2, -1296
                  sra          s6, t4, t5
                  sll          a3, a7, sp
                  srai         t5, a7, 18
                  xori         a0, t0, 1922
                  slti         s6, t1, -1159
                  xori         s3, a7, -521
                  ori          a7, s10, -811
                  sltiu        t2, s2, -1428
                  andi         t3, a0, -574
                  srl          tp, tp, s10
                  srli         t0, tp, 12
                  sub          s7, t2, s8
                  add          s5, t4, sp
                  andi         a7, s1, 503
                  sll          s3, s1, s0
                  srli         t3, a7, 30
                  addi         a4, zero, -1913
                  lui          s0, 978582
                  slti         ra, gp, 1681
                  slti         s0, a0, -1184
                  andi         t3, t6, 1072
                  sub          s7, gp, t6
                  slti         a6, s11, 90
                  lui          sp, 724859
                  nop
                  sub          s8, s0, s11
                  sltiu        gp, a2, -1391
                  addi         a0, s11, 313
                  srl          sp, s4, ra
                  sra          s6, s3, a5
                  andi         t0, s9, 1296
                  slli         s1, zero, 9
                  sll          s6, s7, s9
                  srli         s7, s7, 19
                  srl          a1, a4, gp
                  auipc        t5, 452602
                  nop
                  sll          s5, t3, zero
                  sll          sp, a1, s4
                  nop
                  or           zero, s1, a5
                  sll          s7, t0, a3
                  xori         s0, zero, -664
                  slli         t0, t5, 18
                  xori         t0, zero, -836
                  lui          s9, 847337
                  slti         a3, a0, 82
                  and          t5, t1, ra
                  ori          s11, t6, 1735
                  and          s10, s6, s8
                  auipc        t5, 352099
                  slti         a0, tp, -2008
                  addi         a0, s6, -1661
                  add          a6, gp, zero
                  add          t2, ra, s9
                  slli         t3, a3, 8
                  srai         a4, s4, 11
                  sll          ra, s6, a6
                  slli         s6, s5, 31
                  xori         t2, a6, -189
                  xor          s1, zero, t0
                  slti         s7, t6, 906
                  sll          t0, t1, s1
                  srl          t0, t4, ra
                  xori         ra, t0, 1966
                  add          a2, a7, a7
                  or           t2, s6, t1
                  andi         t5, s9, 717
                  srai         t6, t1, 31
                  sra          a3, a4, t6
                  add          s10, a7, a7
                  sll          tp, ra, t2
                  sltu         gp, s5, a3
                  slli         a7, s1, 18
                  lui          t3, 170173
                  sra          tp, s2, t2
                  or           tp, a1, s4
                  sub          a4, a5, t1
                  auipc        s10, 912218
                  sub          s6, a3, gp
                  sll          s1, a6, t6
                  lui          a7, 807940
                  nop
                  slli         a1, sp, 23
                  sltu         s0, ra, zero
                  ori          t2, a5, 804
                  ori          s5, s11, 552
                  auipc        s10, 12191
                  ori          t2, a0, -1144
                  sra          s11, s8, t1
                  sll          s10, s1, s2
                  nop
                  auipc        t0, 331621
                  or           s7, s9, tp
                  slt          s10, s4, a1
                  xor          tp, s2, a7
                  lui          s5, 105381
                  srli         s10, s3, 21
                  srli         s11, s6, 23
                  ori          a6, s4, 1536
                  ori          sp, s2, 1373
                  sll          ra, t3, a6
                  xor          a1, t1, a4
                  sltiu        a5, tp, 1357
                  nop
                  and          s7, sp, ra
                  addi         a5, s9, -712
                  auipc        s11, 818680
                  sltiu        a7, a7, 485
                  auipc        a0, 40392
                  sub          s11, ra, t0
                  slli         a3, a1, 10
                  sub          zero, t4, ra
                  and          s9, s10, t2
                  slti         a0, a7, -1636
                  xori         sp, s11, -1499
                  andi         s8, s1, -316
                  xori         s3, a5, 1629
                  sra          tp, s6, s11
                  slt          zero, sp, t3
                  srai         zero, s0, 9
                  xor          s0, ra, t5
                  auipc        a3, 656059
                  srai         a2, s7, 4
                  lui          s1, 290209
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           t3, 0x0
                  li           tp, 0x0
                  li           a6, 0x0
                  li           s8, 0x44984af9
                  li           t2, 0x80000000
                  li           s1, 0x80000000
                  li           a7, 0x0
                  li           a1, 0x6db2b20
                  li           s9, 0xffffffff
                  addi         s10, tp, -973
                  addi         tp, a7, -1169
                  add          a6, t3, s8
                  sub          a6, s10, t3
                  auipc        t2, 615340
                  add          s10, t3, s9
                  lui          tp, 824280
                  nop
                  add          tp, a6, s1
                  lui          t3, 400016
                  auipc        t2, 290859
                  add          s1, s1, tp
                  auipc        s10, 409040
                  nop
                  lui          s1, 783239
                  add          tp, s8, t3
                  lui          s9, 144979
                  sub          s10, t3, a7
                  nop #end riscv_int_numeric_corner_stream_8
                  auipc        s8, 437885
                  sra          s8, t4, s0
                  auipc        a5, 379985
                  sll          sp, s0, s10
                  and          tp, s6, a0
                  addi         t5, a5, -1653
                  srai         s1, s2, 7
                  sra          s6, zero, t3
                  slli         tp, a4, 30
                  srl          a1, s6, s5
                  add          s5, sp, s8
                  srl          s5, tp, s0
                  srli         tp, s6, 18
                  xori         sp, s3, -366
                  andi         t5, t0, -1470
                  sll          t5, s11, s10
                  slti         a1, s2, -1250
                  auipc        a6, 357131
                  or           a2, a6, s9
                  nop
                  xor          s9, a1, s0
                  ori          s10, gp, 513
                  add          t2, a7, s0
                  add          t0, t0, t0
                  and          a6, t0, s7
                  sltiu        a6, t0, 1362
                  ori          s9, sp, -1950
                  add          s10, t3, s5
                  xor          sp, a3, a0
                  srli         a2, t0, 25
                  nop
                  xori         s1, s11, -1738
                  sra          s0, s2, a6
                  sub          s8, s3, a0
                  sltiu        s3, s3, 1586
                  srli         s11, a6, 18
                  slt          gp, t1, a0
                  srli         sp, t4, 27
                  add          s7, a4, s8
                  sltu         s11, a7, a0
                  nop
                  addi         ra, a7, -209
                  slt          s1, s0, s6
                  srli         t6, t0, 2
                  sub          a0, s10, s6
                  addi         sp, s5, -1705
                  or           ra, s8, t1
                  auipc        zero, 77608
                  srli         a3, s8, 15
                  slt          tp, s0, s6
                  srai         s9, t1, 23
                  srli         s6, zero, 2
                  sub          s8, a5, s4
                  sltiu        a4, s5, -921
                  and          t5, s8, ra
                  andi         s3, s9, -501
                  sltiu        t2, s1, 1232
                  addi         a3, gp, -1772
                  xori         s5, t1, -1987
                  srli         sp, t6, 31
                  ori          t6, a0, 96
                  and          s6, s10, a3
                  or           t2, t4, t2
                  sra          s7, s4, t5
                  sltiu        s1, s2, 563
                  sra          tp, a6, tp
                  addi         s10, s0, 473
                  auipc        s4, 961913
                  sltiu        a7, s3, -1364
                  srai         s9, a2, 8
                  ori          s10, t6, 278
                  sub          s7, a1, a1
                  sll          s9, s1, s0
                  srai         s9, s1, 21
                  srl          a4, a0, s0
                  sub          a3, a0, t1
                  slli         s11, a3, 31
                  srli         s11, a3, 19
                  srl          s6, s0, s0
                  sll          t3, t1, tp
                  sub          s0, t6, t0
                  auipc        a2, 936755
                  srli         s3, tp, 13
                  lui          a7, 328701
                  srli         t3, t4, 15
                  slli         t6, s8, 25
                  sll          s10, a4, gp
                  slti         s5, t1, -827
                  xor          t3, s6, s9
                  slli         a2, s10, 8
                  or           zero, s8, s10
                  slt          s7, a3, s7
                  sltiu        s8, a3, 995
                  slti         ra, t4, -1451
                  sra          t6, sp, t6
                  sltu         a6, s5, sp
                  auipc        sp, 309674
                  addi         s1, s2, 1187
                  slti         s11, t3, 361
                  xor          a4, a4, tp
                  nop
                  andi         a2, t3, 766
                  slli         a4, tp, 22
                  slti         a1, a1, -1514
                  and          s1, sp, sp
                  sra          s11, s3, s6
                  slt          s9, a0, s3
                  sltiu        t3, zero, 875
                  sltiu        t5, t0, 1040
                  or           t6, s1, s8
                  sub          s0, sp, a4
                  srli         a2, a4, 13
                  and          s1, s6, s5
                  srl          t0, a1, t0
                  andi         s0, s11, -816
                  sub          gp, s0, s1
                  nop
                  addi         sp, s2, -1818
                  add          s6, a5, ra
                  slt          s3, a3, s4
                  sub          t2, a4, s4
                  ori          t3, s9, -864
                  srl          ra, t4, a7
                  sltiu        s7, t1, -255
                  srai         s6, a3, 1
                  auipc        gp, 962295
                  srl          s8, s8, s11
                  sra          t6, s11, t5
                  srl          s10, a0, a0
                  or           s0, t2, s4
                  ori          a6, s3, 378
                  add          t3, s6, s3
                  and          s0, s3, a6
                  lui          tp, 571896
                  ori          a3, s7, 1116
                  andi         s4, s7, -274
                  xori         t6, zero, 479
                  lui          s6, 538860
                  auipc        s1, 684158
                  lui          zero, 68711
                  srli         s1, t3, 14
                  xori         s9, tp, -1400
                  slti         t3, a3, -388
                  srli         sp, s2, 25
                  andi         a1, a2, -256
                  srl          s7, tp, s0
                  srai         s1, zero, 9
                  nop
                  lui          a0, 390971
                  slli         s8, t2, 26
                  auipc        s7, 72135
                  slli         s7, a1, 5
                  srl          s3, ra, ra
                  add          sp, a0, ra
                  xor          a0, zero, t0
                  slli         t6, s9, 15
                  xor          t6, s3, a3
                  srl          a1, gp, s11
                  sltu         a2, a1, a0
                  andi         a6, t5, 1702
                  slti         t3, a0, -1808
                  andi         a6, t0, -425
                  nop
                  sltiu        zero, a4, 1754
                  srai         s1, s9, 6
                  andi         a1, s8, -259
                  srli         s10, t3, 8
                  and          s0, a4, a7
                  sltiu        a3, a5, -1419
                  sll          a3, t6, s8
                  sub          a7, sp, a1
                  andi         s11, t2, -1323
                  srli         gp, t3, 13
                  srai         s6, zero, 12
                  and          gp, s0, s1
                  srl          gp, tp, s10
                  andi         s0, s7, 1030
                  srli         a0, s1, 14
                  ori          t0, t6, 460
                  slti         ra, s0, 1116
                  sub          a7, a5, sp
                  ori          a3, t0, -1597
                  xori         s5, s0, 611
                  lui          zero, 290151
                  slli         s11, t1, 9
                  xori         s10, a2, 426
                  ori          s1, s0, -1941
                  andi         a6, zero, -1638
                  add          a2, s4, a7
                  slt          t5, gp, a4
                  xor          a2, t1, t3
                  srli         a3, gp, 1
                  slli         a2, t0, 11
                  andi         zero, s3, -502
                  ori          s9, a7, 781
                  nop
                  addi         a3, a2, -1645
                  sra          a7, a1, zero
                  slli         a3, a7, 23
                  xori         s6, s3, 272
                  sltiu        gp, t6, -725
                  xori         s0, s7, 634
                  sra          a4, s6, s10
                  srli         s4, a1, 22
                  nop
                  sll          t0, s4, s2
                  srli         s8, t4, 10
                  add          s8, a5, a0
                  ori          s8, s8, -1568
                  sra          t2, s4, s0
                  xori         t5, a1, 1585
                  ori          t5, t0, -1401
                  nop
                  and          s9, t4, sp
                  auipc        s5, 910910
                  auipc        s1, 1031657
                  slt          s0, t0, sp
                  srli         s8, a3, 17
                  addi         t3, t1, 1357
                  slt          sp, a3, t6
                  and          t6, t3, a2
                  add          s7, s5, t3
                  auipc        s11, 136725
                  add          a2, s6, s2
                  ori          ra, t0, -32
                  sra          t3, s3, ra
                  andi         s7, s3, 1986
                  or           a7, s0, s1
                  sltiu        t2, t6, -1277
                  ori          s6, sp, -1495
                  ori          t6, s11, -563
                  xori         s8, s8, -439
                  srli         s11, a4, 11
                  addi         ra, s3, -498
                  auipc        zero, 146471
                  sltu         s11, s8, t2
                  sltu         a6, s2, t6
                  xori         gp, a1, 1461
                  andi         t5, a1, -1767
                  auipc        s6, 137434
                  srai         a2, s2, 1
                  ori          a6, t1, -843
                  andi         t5, a3, -668
                  xor          ra, a3, t3
                  nop
                  sra          s8, tp, t1
                  slti         s4, a3, -1543
                  srl          zero, s11, s0
                  xori         zero, t0, -47
                  nop
                  sltiu        tp, zero, 690
                  srai         t5, s11, 24
                  slti         s9, s2, -671
                  or           s0, gp, t4
                  slti         zero, a4, 1055
                  sltiu        s11, s4, -543
                  srli         s0, a0, 30
                  srl          a7, t0, a6
                  and          t0, a3, a7
                  srai         t5, gp, 18
                  xori         s9, a5, 1682
                  auipc        s3, 319722
                  auipc        s5, 673054
                  xori         a3, gp, 1837
                  and          t6, tp, t4
                  addi         t6, a7, -1718
                  slt          s6, t4, s9
                  add          a5, s7, t5
                  slt          a6, gp, a7
                  sltiu        a4, s5, -965
                  slt          s6, a0, s1
                  srli         a4, t5, 10
                  nop
                  sll          a5, a4, a3
                  slli         tp, s7, 6
                  sub          s7, s2, s4
                  and          zero, t3, s9
                  nop
                  xor          gp, s9, t2
                  addi         sp, t6, -733
                  auipc        t6, 556727
                  xori         s4, zero, 1572
                  slti         a5, s3, -1675
                  slti         t5, a6, -210
                  sltu         s3, s9, s11
                  slti         sp, a0, 1622
                  srai         a6, zero, 8
                  xori         a5, t4, 968
                  add          a3, a2, s6
                  srl          zero, s5, s0
                  sra          s1, a0, a5
                  srli         t0, sp, 16
                  sltu         a1, t3, ra
                  xor          a7, s10, t4
                  nop
                  sltiu        s1, a0, -1166
                  srai         t0, s7, 1
                  addi         t2, a4, -1372
                  srl          s3, s9, s10
                  sra          t0, a5, s9
                  xor          s4, s8, t2
                  add          s7, sp, a6
                  slt          a6, s0, s1
                  nop
                  sra          a3, t2, s7
                  add          a5, s0, a1
                  sltiu        s7, a2, -94
                  add          t2, s9, t5
                  auipc        a6, 881674
                  slli         a2, t1, 13
                  srli         t6, s7, 1
                  slti         t3, s11, 906
                  srl          gp, t5, s4
                  srai         a2, s11, 10
                  auipc        a6, 158069
                  xori         s11, s9, -1627
                  add          a4, ra, gp
                  sub          gp, s10, ra
                  xor          s6, a7, s1
                  xori         s8, s3, -1606
                  slli         s8, ra, 30
                  xori         a7, t3, -716
                  ori          a2, s8, 1033
                  add          s5, t4, s4
                  auipc        s8, 125456
                  srli         s4, a4, 10
                  or           tp, tp, ra
                  xor          s10, a4, s3
                  sra          zero, s7, t6
                  lui          t3, 752985
                  lui          s7, 175578
                  slti         s8, a3, 249
                  sltu         a3, a5, a1
                  srli         ra, a2, 15
                  sltiu        gp, t5, 831
                  sll          a6, a1, s0
                  slt          a3, s9, tp
                  andi         s5, s0, -826
                  srai         t6, s2, 7
                  srai         gp, a0, 0
                  add          a1, a7, t6
                  addi         s3, s6, -16
                  srli         sp, s10, 23
                  slli         a4, s11, 17
                  lui          a7, 91694
                  srli         tp, s8, 1
                  ori          a0, t3, -1906
                  sra          s9, s7, s3
                  srl          tp, s8, a5
                  sltu         t3, a3, t5
                  add          t2, a1, a6
                  auipc        t2, 784846
                  srl          s8, sp, a7
                  or           sp, t1, s11
                  sltu         sp, s3, t5
                  nop
                  auipc        t3, 904133
                  auipc        ra, 981132
                  addi         s8, t2, 1720
                  nop
                  srai         s3, s11, 28
                  slti         s3, s3, -437
                  andi         s0, s10, 995
                  xori         t6, gp, 103
                  nop
                  sltiu        s11, s4, -1874
                  lui          s8, 525594
                  li           sp, 0x82cc7712 #start riscv_int_numeric_corner_stream_7
                  li           s3, 0x80000000
                  li           s7, 0xffffffff
                  li           a7, 0x0
                  li           s1, 0x80000000
                  li           s5, 0xffffffff
                  li           t0, 0x0
                  li           s8, 0x80000000
                  li           a4, 0xffffffff
                  li           a0, 0x80000000
                  sub          s8, t0, s8
                  add          t0, s1, a7
                  lui          s7, 1003040
                  nop
                  addi         a4, a0, -540
                  sub          a7, sp, s3
                  addi         s5, s1, -494
                  nop
                  add          a7, a0, s7
                  sub          s3, s3, s8
                  add          a0, s1, s8
                  lui          s5, 982234
                  sub          s1, sp, a7
                  lui          s8, 239928
                  sub          sp, a0, s3
                  nop
                  lui          a7, 637149
                  add          t0, a7, a4
                  lui          s3, 856502
                  lui          t0, 594539
                  add          t0, a4, s1
                  lui          s7, 396871
                  nop
                  add          a0, a7, s7
                  add          s7, sp, sp
                  add          s8, s5, a4
                  sub          a7, a0, s5
                  lui          a0, 237289 #end riscv_int_numeric_corner_stream_7
                  sll          s6, a7, t0
                  add          ra, a3, t1
                  sub          s4, s10, a4
                  sltu         a7, s5, a0
                  and          s9, a5, t1
                  add          a7, gp, s4
                  nop
                  xori         s6, t5, 748
                  slti         s4, a4, -1794
                  andi         s5, a1, -1884
                  or           t6, s6, t4
                  slli         s6, a5, 8
                  srai         gp, s4, 6
                  sll          s4, t1, gp
                  auipc        t6, 1002757
                  and          gp, s4, t6
                  and          s9, s7, t6
                  auipc        a6, 537700
                  auipc        t6, 369228
                  xori         s4, s6, 13
                  lui          a6, 433743
                  or           a4, s5, t6
                  xori         s5, s9, -60
                  and          s3, s10, a4
                  xori         t5, s8, -678
                  slli         s11, s2, 21
                  ori          s5, a7, -554
                  sub          a7, s2, s1
                  sltu         a5, a7, ra
                  slt          s3, s0, s10
                  slli         sp, s1, 20
                  slli         s6, t6, 14
                  srl          t6, s11, s3
                  xori         s1, a7, 995
                  nop
                  xor          t3, t2, s4
                  slli         a3, s4, 8
                  ori          gp, sp, 1316
                  sub          s6, s6, s8
                  srli         s4, t2, 23
                  lui          s7, 315205
                  andi         t3, s11, 1572
                  sltu         a1, s5, s1
                  slti         t0, t0, -1737
                  sra          gp, s5, tp
                  ori          a0, s2, -123
                  srli         a2, t4, 26
                  xor          a7, t0, t2
                  sltiu        s9, a4, 558
                  sltu         s11, a6, t2
                  sra          a3, zero, a0
                  slli         a7, a0, 17
                  sub          a3, t3, a4
                  srai         a1, s0, 19
                  sub          s4, t4, s11
                  sra          a4, s0, s3
                  and          t6, t0, s4
                  srli         a5, sp, 2
                  lui          a2, 15313
                  nop
                  sltu         s1, s3, s6
                  lui          s3, 888116
                  auipc        a2, 1000910
                  sltu         t0, t3, gp
                  or           zero, a1, s6
                  nop
                  sltu         a0, a5, s11
                  nop
                  sra          t5, t1, s2
                  lui          s3, 962264
                  sra          a1, s1, s5
                  sltiu        s0, s8, 565
                  slt          a3, a7, s6
                  srl          tp, s9, s8
                  xor          a7, t5, zero
                  srl          s11, s3, sp
                  nop
                  xori         s4, s4, 1994
                  srli         t6, t4, 27
                  slli         s11, s9, 13
                  auipc        s9, 80284
                  nop
                  andi         t3, a0, 1390
                  srli         s6, s6, 0
                  slti         a4, s1, -439
                  srai         s0, a3, 25
                  sub          t0, ra, a7
                  sltu         s11, t1, t0
                  sll          a6, a6, zero
                  srl          sp, a0, t0
                  xor          a4, a1, s6
                  sll          s4, a4, t6
                  ori          a4, t3, -350
                  sltiu        a7, t6, 85
                  and          t2, t1, s2
                  srai         s11, s2, 10
                  srai         s1, a2, 27
                  addi         sp, t6, -238
                  sub          gp, s11, s0
                  lui          t5, 900543
                  sltu         a7, gp, s7
                  auipc        s0, 241861
                  auipc        s7, 331284
                  srl          zero, t6, a4
                  slt          a0, a4, a3
                  srli         s5, s7, 10
                  sll          s3, a6, s3
                  nop
                  slli         s6, zero, 5
                  slli         tp, s9, 6
                  xor          s7, a1, tp
                  slti         t5, t3, 1271
                  sltu         a4, t1, sp
                  srl          a6, ra, a7
                  sltiu        a3, s1, -939
                  ori          s3, s9, 1578
                  slt          s11, s2, s4
                  auipc        s10, 743620
                  andi         a7, s0, 1154
                  sra          a5, a3, s11
                  andi         s3, t3, -1109
                  slti         t0, s7, 1320
                  lui          s6, 116529
                  nop
                  sra          a7, t2, tp
                  sltiu        a7, t5, 1766
                  or           a3, a7, s9
                  slti         tp, s7, 1932
                  srl          t0, tp, s10
                  srl          s0, a2, a6
                  srl          t2, t3, a5
                  xori         a4, t1, -1637
                  slti         zero, s11, -1948
                  add          t2, a2, t2
                  xori         s5, t1, -1149
                  ori          a3, zero, -584
                  slt          t0, s1, s0
                  xor          t6, s2, ra
                  slt          sp, s9, sp
                  sltiu        a3, ra, 1247
                  add          a0, t1, s6
                  slt          a3, s6, s5
                  slli         a0, t0, 3
                  srai         s9, gp, 23
                  sll          a2, t5, s5
                  sub          t3, a1, ra
                  xor          s11, a2, s10
                  srli         t0, gp, 6
                  slt          tp, sp, a5
                  ori          s5, t4, -335
                  sll          s7, t2, a3
                  andi         zero, a6, -601
                  nop
                  slli         s10, t3, 23
                  ori          a6, s2, 1048
                  add          t5, t4, sp
                  sll          a4, a3, t1
                  slti         a5, t6, 1865
                  xori         a1, s5, -931
                  ori          a3, a4, 325
                  sub          s3, t6, s5
                  sltu         t2, sp, s9
                  lui          s7, 757518
                  srli         a3, s8, 30
                  slti         zero, zero, 655
                  sub          s5, sp, s3
                  srli         s7, s5, 28
                  nop
                  srli         a0, s5, 23
                  sll          t0, a2, s4
                  and          s5, s5, ra
                  sll          s5, t1, s9
                  auipc        s3, 342686
                  lui          s11, 363446
                  slt          a1, t1, s10
                  nop
                  or           sp, sp, t6
                  slti         s4, t2, -1250
                  xor          s11, a0, a6
                  or           s8, s2, s10
                  srai         s10, t4, 9
                  sra          s3, s7, s8
                  srai         t5, t3, 23
                  sll          s11, t5, a3
                  auipc        a7, 301596
                  lui          t6, 800224
                  slli         zero, s5, 21
                  ori          s1, zero, -1959
                  andi         s8, t0, -73
                  srai         a7, s9, 25
                  srli         s1, ra, 27
                  ori          t5, gp, -1600
                  sub          t6, a3, s7
                  addi         a4, a0, 881
                  sra          s1, ra, t3
                  or           a2, s2, s7
                  srai         zero, s4, 5
                  and          t5, t4, s8
                  slti         s5, t4, 2020
                  add          tp, s0, zero
                  add          s0, s9, s4
                  nop
                  srai         tp, a0, 10
                  xor          t3, a3, t1
                  xori         s11, a5, -384
                  sltiu        tp, a0, 473
                  srl          a1, s6, zero
                  addi         s0, s10, 33
                  slt          t0, s2, s0
                  auipc        t2, 871930
                  xor          t6, s2, tp
                  slti         a7, s11, 1572
                  auipc        s9, 987845
                  slli         a0, s2, 28
                  and          tp, t5, t3
                  add          s10, s0, s4
                  or           a3, a7, s3
                  sub          s7, a6, a3
                  sltu         zero, a6, t3
                  xori         gp, a0, -599
                  sltu         t0, a6, s10
                  lui          a7, 697747
                  xor          s6, s1, a3
                  and          s6, s11, s9
                  and          s9, a6, t5
                  slti         a2, s3, 1323
                  sub          s3, a2, s11
                  sub          s7, s10, s9
                  or           t3, tp, a1
                  srai         a4, gp, 29
                  xor          s4, gp, a6
                  srai         s7, a6, 21
                  nop
                  or           a6, s5, a7
                  xori         a1, t6, -1777
                  sltiu        a2, t1, 1433
                  andi         s6, t4, -395
                  sltiu        gp, a4, -708
                  addi         a1, t1, -332
                  andi         s4, a5, 420
                  andi         a5, a1, -1030
                  nop
                  sll          t0, s2, s11
                  xor          a4, t1, a2
                  xori         sp, a1, 988
                  sltiu        ra, s0, 1473
                  addi         a6, s3, 466
                  addi         s0, s10, -24
                  srai         t2, s3, 1
                  xor          gp, s5, s3
                  sra          s3, s4, t1
                  auipc        s10, 706124
                  or           sp, s7, t2
                  add          zero, a7, t0
                  sltiu        s3, s8, -1793
                  or           zero, t3, s9
                  xori         gp, a1, 1834
                  addi         a7, zero, 1205
                  addi         t5, ra, 1249
                  xor          sp, a3, a0
                  srli         s11, tp, 30
                  addi         sp, zero, 1499
                  srli         ra, a1, 13
                  sltiu        a3, a4, -1825
                  srli         zero, s1, 18
                  slt          t3, s8, t0
                  sra          a5, s3, a7
                  sltiu        t0, s6, -1941
                  xori         s10, s8, -150
                  sltiu        t0, s6, 1151
                  sltu         a6, s5, s0
                  sltiu        a7, a6, -130
                  lui          a3, 343320
                  lui          s6, 189115
                  srl          s0, sp, t0
                  sll          a5, t0, a1
                  sra          s8, s3, tp
                  srai         a5, s7, 1
                  slti         a6, t6, -1085
                  auipc        s4, 389162
                  xor          t0, s6, t1
                  slti         t0, gp, -518
                  lui          s4, 1032478
                  auipc        zero, 57866
                  sll          gp, a6, s1
                  slt          t6, t3, t1
                  ori          s5, s0, 1098
                  slti         a5, s11, -1426
                  slti         s0, tp, 1093
                  andi         a5, s1, 163
                  nop
                  sltiu        sp, t4, -1045
                  auipc        zero, 297027
                  lui          tp, 850560
                  slli         ra, t2, 26
                  xori         s5, s4, 1337
                  srl          a1, a4, a1
                  xori         a0, a3, 1658
                  srai         s0, s2, 12
                  auipc        a2, 991238
                  slti         a0, a1, 810
                  srli         s5, sp, 4
                  srli         t3, s5, 13
                  slti         s5, sp, -310
                  and          a4, t0, s9
                  lui          t2, 883638
                  lui          ra, 678198
                  slli         t5, s7, 12
                  srli         s8, s2, 27
                  or           t5, s3, s4
                  add          a0, a3, a3
                  nop
                  srli         ra, a7, 27
                  srli         a7, a3, 20
                  ori          s3, t6, 2025
                  slti         s11, s4, -1420
                  sltu         a2, t5, t6
                  srai         a1, a3, 29
                  add          a5, zero, t3
                  srl          s3, ra, t1
                  lui          a0, 177969
                  slti         a5, a1, 164
                  sub          s5, a0, a2
                  srl          s11, s6, s10
                  srli         t3, s0, 17
                  slt          gp, s6, a6
                  addi         ra, a7, 1949
                  lui          t5, 355155
                  addi         t0, a0, -220
                  sltu         s3, s7, s8
                  xor          a2, a2, a2
                  auipc        a3, 719473
                  sltiu        t6, s11, -1996
                  srli         sp, s7, 8
                  or           gp, tp, ra
                  srl          s5, s8, s4
                  sltiu        a5, a6, -706
                  add          s9, s10, s11
                  addi         zero, a1, -18
                  sub          s8, s5, t4
                  srli         tp, s5, 3
                  sub          s8, s4, a3
                  add          s0, s8, sp
                  srli         a3, gp, 25
                  sltu         t0, a3, a1
                  slli         s10, t5, 14
                  addi         t0, s4, -13
                  ori          a6, a5, 1096
                  sra          s4, a0, t5
                  xor          t6, s0, t5
                  andi         s4, s10, -1640
                  sll          a4, t1, s1
                  ori          a3, s6, -361
                  sub          a0, s1, ra
                  srl          s4, a4, a0
                  auipc        s6, 209991
                  lui          s1, 957868
                  slli         a1, s9, 14
                  or           ra, s0, a0
                  or           s6, t0, s2
                  slt          a4, gp, a3
                  sub          t0, s11, a5
                  srl          ra, t4, a0
                  sltiu        a2, s6, 1085
                  sra          t3, a2, s6
                  sltu         t2, a6, t4
                  addi         sp, a7, -1980
                  sltiu        s8, s0, 1946
                  sltu         s3, zero, t1
                  lui          s4, 382506
                  and          a3, t4, s11
                  sll          s9, gp, ra
                  srli         s0, a1, 23
                  ori          s3, gp, -877
                  xor          s0, a0, ra
                  slti         zero, a0, 968
                  or           gp, s1, s2
                  slti         a6, s5, 374
                  sub          s4, s3, a0
                  slti         s7, gp, 324
                  nop
                  ori          a6, t0, -370
                  xor          s1, s8, a5
                  srli         s9, t3, 2
                  slt          a5, t1, gp
                  slli         t2, t6, 27
                  auipc        sp, 998798
                  and          t0, t1, s3
                  lui          s1, 880927
                  sltu         a4, t6, ra
                  sll          s10, s6, s3
                  srai         t0, s11, 5
                  sra          a3, t1, t1
                  xor          a1, gp, a4
                  srai         gp, a5, 24
                  sll          a0, t4, s2
                  sltiu        s5, s1, -11
                  slti         gp, s1, -88
                  srl          s0, a7, a2
                  srli         s8, t5, 29
                  lui          s11, 247318
                  add          s0, t6, a3
                  srai         tp, a5, 2
                  sub          s5, s3, a4
                  slti         a6, s10, 2
                  ori          zero, s3, 362
                  sra          a7, s5, a5
                  slli         t3, t5, 20
                  sltiu        s6, a4, -366
                  sra          s8, s0, t4
                  sub          s9, s11, a6
                  addi         zero, s11, -1588
                  srai         gp, zero, 22
                  add          tp, s9, t5
                  sltiu        a2, a0, 1119
                  xori         s11, t1, -1685
                  lui          s8, 784452
                  sltiu        s3, a7, 1725
                  sltu         s4, a5, t4
                  slti         a3, a5, -148
                  sub          tp, tp, a7
                  auipc        a7, 639043
                  sub          s9, gp, s10
                  slt          t3, t4, s11
                  srl          t2, s6, s1
                  xori         a6, t5, 1793
                  srli         a1, sp, 14
                  sll          s5, a0, t2
                  srl          s9, t6, s3
                  xori         tp, a5, -1787
                  slti         s5, a2, -1267
                  andi         s1, sp, 959
                  sll          gp, gp, a4
                  slti         ra, a6, -1756
                  xor          a4, sp, zero
                  sll          s7, t6, t6
                  sub          a0, s9, ra
                  nop
                  slti         s9, zero, -1413
                  and          a6, s2, gp
                  sltu         s9, s4, s0
                  lui          t5, 835285
                  andi         a0, s11, -419
                  srai         a4, s1, 20
                  sltiu        t5, gp, 1432
                  sltiu        s8, zero, -993
                  slti         gp, ra, 1675
                  lui          a7, 596292
                  addi         zero, a7, -676
                  xor          a2, t6, s4
                  addi         s7, s5, 1247
                  lui          a2, 100006
                  lui          sp, 724463
                  nop
                  slli         a5, s7, 10
                  slli         s10, a0, 21
                  sub          a2, sp, s0
                  ori          a2, t5, -777
                  sltu         sp, a0, t1
                  srl          t2, a4, ra
                  xori         s3, a2, 280
                  srli         t3, s1, 30
                  slt          a7, t5, s9
                  srli         a0, ra, 5
                  slti         s7, s9, -571
                  slt          s1, ra, t6
                  srl          s9, t6, s1
                  and          s3, sp, zero
                  sub          a1, a1, sp
                  slti         a7, t5, 242
                  slli         t0, a1, 2
                  slli         a4, s8, 8
                  auipc        a5, 373951
                  slti         a1, t5, -1530
                  srai         s0, gp, 23
                  xor          tp, a5, t5
                  sub          a1, a5, t0
                  slli         s8, tp, 0
                  andi         t0, s6, 46
                  lui          s5, 737708
                  xori         t5, a5, 1301
                  srl          s1, a0, s5
                  slt          s8, s4, s11
                  srl          t0, s11, s10
                  sltiu        a2, t1, -161
                  sltiu        a7, ra, -1596
                  auipc        s9, 509793
                  nop
                  sltu         t6, a1, ra
                  andi         sp, t2, 1702
                  add          a0, s3, s11
                  xor          a1, s6, ra
                  slt          s8, t2, s4
                  sltiu        a3, s2, 58
                  add          a4, a1, tp
                  and          s8, s11, a0
                  or           a2, s3, s0
                  slt          a3, tp, s3
                  andi         t3, s1, 491
                  lui          s3, 135010
                  sltiu        sp, a1, 1122
                  sltiu        t6, t4, -678
                  sltiu        s7, gp, 617
                  sll          a5, t5, s1
                  slli         t5, s0, 27
                  auipc        a7, 218240
                  ori          s8, a2, -2022
                  sltu         s9, tp, s8
                  lui          a0, 982884
                  and          s1, a1, s8
                  nop
                  ori          a7, gp, 1428
                  or           s0, s10, sp
                  and          t2, a5, s10
                  srl          t3, a1, s7
                  srli         ra, a1, 4
                  xori         s7, s4, 233
                  addi         s3, s5, 1018
                  and          t5, s0, s9
                  srl          gp, t1, tp
                  nop
                  nop
                  slli         a4, s3, 27
                  srli         s5, a0, 21
                  and          a7, s2, s11
                  or           t0, t3, s5
                  slti         t6, s9, 1025
                  srl          a3, t4, s7
                  sra          s0, sp, a2
                  slti         a5, s11, -1407
                  srai         t0, t0, 11
                  add          t6, s1, ra
                  and          a5, sp, zero
                  xor          gp, t5, zero
                  slli         s5, t2, 7
                  sltu         a6, s3, s3
                  sra          s5, a1, a2
                  and          s9, tp, a3
                  andi         a2, s0, 413
                  add          t3, ra, a5
                  sub          s8, sp, t3
                  srai         s6, s4, 8
                  xori         t5, a3, 572
                  sub          s10, ra, s5
                  xori         s11, s1, 1373
                  srl          s0, ra, a1
                  srli         t5, s11, 31
                  or           s10, s0, a6
                  sll          s6, a5, ra
                  sra          sp, a2, s8
                  add          t6, s11, a4
                  add          t0, s7, t3
                  srl          a6, s5, s6
                  sll          s0, t0, a2
                  sll          t2, s10, t3
                  and          s6, a6, s6
                  sub          a2, s10, t4
                  ori          ra, a0, 1589
                  srai         a4, s11, 6
                  or           a0, s1, gp
                  auipc        s7, 201915
                  sltu         a4, s5, s2
                  addi         s10, a3, 1740
                  sub          s9, sp, t1
                  lui          ra, 98373
                  srl          s4, t5, zero
                  slli         s1, t1, 2
                  srl          s4, a3, s8
                  and          t6, a2, t6
                  nop
                  sra          a3, s7, a3
                  auipc        s6, 841753
                  sub          a5, tp, t4
                  addi         a2, tp, -823
                  lui          s9, 938040
                  andi         s5, s7, 1582
                  ori          s11, t0, 640
                  xor          s3, t4, s7
                  andi         t3, a4, -293
                  sra          s1, gp, s0
                  srai         gp, ra, 10
                  lui          a3, 1023109
                  and          sp, t2, s2
                  sltiu        s1, a1, -684
                  slti         t2, s5, 1307
                  and          s7, s7, t2
                  slt          a3, s1, s7
                  slt          a0, t1, a1
                  or           tp, t2, t4
                  xori         s9, a0, -1064
                  sub          ra, gp, s2
                  srai         t3, a4, 2
                  sll          s10, s6, a1
                  andi         tp, zero, 927
                  andi         a2, t3, 13
                  lui          s10, 89594
                  and          t2, s8, s5
                  slli         zero, s9, 6
                  ori          a2, s1, 628
                  xori         a5, t4, -1541
                  addi         gp, a3, -1147
                  andi         t5, a3, -2028
                  sltu         tp, s5, s9
                  sltu         t2, a5, t2
                  add          s6, t2, t5
                  sll          a5, t5, a1
                  slti         a5, s9, 538
                  slti         s8, sp, 600
                  sub          t3, s3, s6
                  sub          a5, sp, a2
                  lui          s7, 489247
                  xori         s0, tp, -1848
                  xori         sp, t4, 1579
                  slli         a3, a7, 8
                  nop
                  slti         a5, a1, 1378
                  addi         s5, t3, -1309
                  xori         zero, t0, 1875
                  ori          a6, tp, -689
                  sra          a0, t0, a1
                  slli         ra, s9, 22
                  xor          a1, s5, s9
                  srai         a5, a7, 13
                  andi         a6, s5, -73
                  srli         a3, zero, 15
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           a4, 0x96cd6f64
                  li           s11, 0x0
                  li           s3, 0xffffffff
                  li           s5, 0x80000000
                  li           s7, 0x80000000
                  li           s4, 0xa7b75701
                  li           gp, 0x80000000
                  li           a2, 0xffffffff
                  li           s9, 0x0
                  lui          a2, 806062
                  add          t6, gp, gp
                  add          s3, s11, t6
                  add          t6, s9, s4
                  lui          t6, 108835
                  auipc        s11, 735894
                  lui          a4, 50195
                  sub          s9, s9, s3
                  nop
                  auipc        a2, 833602
                  lui          s5, 24598
                  lui          s9, 1020900
                  nop
                  add          s7, gp, s9
                  sub          a4, s11, s7
                  addi         s4, a2, -567
                  nop
                  nop
                  nop
                  nop
                  sub          s7, t6, s11
                  auipc        s5, 291415 #end riscv_int_numeric_corner_stream_18
                  slli         a2, a4, 13
                  sub          ra, s6, s8
                  slli         s4, a1, 8
                  sltiu        tp, a0, 1382
                  sltiu        s3, tp, 510
                  sltiu        a5, t2, -432
                  slti         a5, a6, -1230
                  nop
                  slt          t5, t4, t5
                  xor          a6, s0, s3
                  and          a1, s7, t5
                  auipc        s4, 175134
                  nop
                  sra          s6, sp, a3
                  sltiu        sp, t3, 1224
                  sltiu        s4, sp, -1185
                  andi         s9, t3, 1610
                  sra          t2, a6, a2
                  addi         a2, t2, -1815
                  slli         zero, gp, 0
                  sltu         sp, s3, s5
                  sltu         gp, s11, a4
                  or           s1, s1, tp
                  auipc        s6, 924695
                  auipc        sp, 981909
                  andi         a7, s10, 243
                  and          a7, gp, a5
                  sra          s3, s7, tp
                  addi         tp, s7, -1248
                  srai         s9, t5, 11
                  add          a0, a1, zero
                  slt          s1, s1, t4
                  sltiu        s7, a6, 1243
                  add          s10, s9, t2
                  slt          a5, a3, t0
                  sll          ra, gp, a1
                  slti         t2, t3, 1297
                  auipc        s4, 951222
                  auipc        ra, 893231
                  xor          a6, s10, a0
                  xori         t6, s2, 1148
                  auipc        s0, 668123
                  and          zero, a0, t1
                  andi         t3, a7, 1295
                  xor          s5, t2, s11
                  ori          t5, a5, -227
                  or           s6, s6, a5
                  nop
                  lui          t5, 523077
                  sltu         a2, s9, a3
                  slt          t5, a6, s6
                  srai         s6, s7, 11
                  add          s6, a4, t4
                  sltu         s11, s3, a2
                  andi         a4, s10, -508
                  srai         a6, s3, 14
                  nop
                  sll          tp, s0, t0
                  and          a7, s2, t1
                  andi         s9, s10, 1306
                  addi         s7, t3, 425
                  and          tp, s8, gp
                  andi         tp, s5, -1666
                  sltu         s0, s6, zero
                  addi         s6, t0, 1051
                  slti         a0, a6, -810
                  andi         s1, s9, 1229
                  sll          a4, ra, s7
                  slt          a5, a2, a7
                  slt          tp, gp, a4
                  or           s3, t2, a2
                  and          s6, a1, a0
                  andi         tp, a3, 812
                  auipc        s10, 309758
                  sub          s8, ra, a6
                  ori          s9, s3, -1285
                  lui          s4, 485641
                  srl          a7, t6, a2
                  sltiu        a6, t4, -572
                  and          a4, a4, t3
                  slli         a4, a4, 11
                  lui          sp, 27430
                  srai         s7, s0, 4
                  srl          a4, s0, s2
                  sltu         a1, s1, a6
                  sub          t0, a5, t0
                  xor          s8, zero, t1
                  auipc        t2, 933830
                  slti         a5, ra, -936
                  and          a4, s10, tp
                  auipc        t5, 426626
                  sra          a0, a5, t2
                  sra          s6, s1, t5
                  srai         s9, s9, 28
                  auipc        s9, 216713
                  or           s9, s11, s4
                  nop
                  lui          s9, 711035
                  sltu         s9, t1, s2
                  xor          s5, s1, ra
                  andi         s9, s6, 192
                  or           s0, t0, sp
                  or           s9, s10, t6
                  or           s7, a7, a0
                  lui          sp, 355443
                  nop
                  slti         a6, a1, 1485
                  ori          s7, s5, -466
                  sub          gp, a2, zero
                  nop
                  ori          zero, a7, 626
                  sll          tp, sp, s5
                  ori          ra, s1, 981
                  andi         s3, s6, 311
                  ori          a0, a6, 1892
                  slt          s7, a1, t4
                  nop
                  sll          a0, t4, s6
                  xori         t0, sp, 542
                  add          t5, ra, tp
                  auipc        s0, 180839
                  srai         s6, a7, 13
                  sra          t6, a2, zero
                  ori          a5, t1, 1982
                  and          s1, a2, ra
                  xori         s11, s7, -142
                  sub          gp, s10, zero
                  or           s8, s8, a5
                  sltiu        s8, s9, 1292
                  sra          s3, t4, a6
                  slti         s8, s10, 1337
                  add          ra, s5, a5
                  auipc        t2, 253950
                  slli         zero, a2, 26
                  sub          sp, ra, s3
                  xori         s5, zero, 1880
                  xori         s10, a0, -1549
                  sltiu        ra, a4, -886
                  slt          zero, a5, s4
                  sll          s8, gp, s4
                  slti         t0, s2, 1148
                  add          zero, s6, sp
                  addi         s10, a6, 1453
                  ori          t6, a5, -479
                  ori          s11, s8, 1069
                  slt          t3, s3, tp
                  sltu         a6, a7, t5
                  nop
                  ori          s3, s4, 382
                  xor          ra, s4, s1
                  srli         a0, gp, 22
                  sltiu        tp, a3, 711
                  andi         s4, a2, 1817
                  srl          zero, zero, t6
                  addi         t6, s9, 14
                  slti         gp, t3, -927
                  xor          s10, s5, s0
                  srai         s5, t3, 18
                  sra          a1, s6, zero
                  lui          sp, 912847
                  xor          gp, tp, t6
                  srai         ra, a5, 6
                  slli         sp, a7, 22
                  or           s8, s10, a7
                  sltiu        zero, s5, -817
                  sltiu        a0, s3, 913
                  sra          s11, s11, s8
                  sll          a1, a7, s9
                  nop
                  andi         s11, t6, -666
                  srli         s3, gp, 10
                  sra          gp, s3, a0
                  slti         sp, t0, 585
                  nop
                  xori         a5, s9, 1460
                  auipc        ra, 633598
                  sra          s11, s11, s1
                  lui          s7, 316676
                  sra          a2, s6, t3
                  or           a1, tp, t5
                  slt          t0, t0, ra
                  slti         s1, s3, -1021
                  sra          tp, zero, s1
                  andi         t0, t0, 147
                  addi         s3, s8, 397
                  sra          tp, s8, s2
                  auipc        a4, 2151
                  xori         s9, a1, 665
                  sltiu        s10, s11, 631
                  srai         s0, t2, 15
                  slti         s1, a2, 1102
                  srai         a6, a7, 23
                  slti         tp, s8, 11
                  sltiu        a4, t4, 1577
                  or           t6, s5, a2
                  slti         gp, a4, -1838
                  srl          s4, zero, s8
                  sll          t6, t0, t5
                  srai         s6, s6, 1
                  add          a5, gp, s11
                  nop
                  srli         a3, s4, 15
                  srai         a7, zero, 17
                  sltu         s11, a5, s4
                  sltu         s10, s2, gp
                  andi         a6, t1, -1439
                  ori          sp, a4, -1265
                  auipc        s4, 778211
                  sltiu        s3, s9, 1854
                  lui          a6, 236381
                  lui          a0, 754890
                  auipc        tp, 567007
                  sltiu        s6, t2, 705
                  nop
                  sll          s1, zero, t0
                  and          t0, a5, t5
                  nop
                  addi         t6, a1, -31
                  sra          s0, s10, s0
                  sltiu        t5, s8, 334
                  sub          t3, s9, gp
                  lui          a1, 1019559
                  nop
                  or           s1, s1, a7
                  xori         s4, t6, 426
                  addi         a1, sp, -164
                  auipc        tp, 1018128
                  slti         tp, a0, -5
                  sltiu        gp, t5, -1899
                  sra          a7, ra, a0
                  slti         ra, s10, -272
                  sra          sp, t5, s6
                  lui          s6, 105792
                  auipc        a1, 1038842
                  sltu         sp, s3, s1
                  slti         sp, s10, -56
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s4, 0x0
                  li           sp, 0x11ba69
                  li           s11, 0xffffffff
                  li           t5, 0x0
                  li           a6, 0x7aeb41d2
                  li           a7, 0x80000000
                  li           t0, 0x80000000
                  li           a5, 0x0
                  li           t6, 0xf0bb9477
                  auipc        a6, 227790
                  nop
                  auipc        a7, 361559
                  nop
                  auipc        s7, 100289
                  sub          s4, a7, t0
                  sub          t5, s4, s11
                  sub          sp, a7, t0
                  lui          a7, 613187
                  nop
                  auipc        a6, 540414
                  addi         s11, sp, -274
                  sub          a5, sp, s11
                  addi         s7, s11, -421
                  auipc        s7, 859568
                  sub          s7, s7, a6
                  addi         t0, sp, 1801
                  add          a5, s11, t6
                  nop
                  addi         s4, s11, -786
                  nop
                  nop
                  addi         s4, t0, -150
                  addi         s7, sp, 1933
                  lui          s11, 985815
                  auipc        a7, 461977
                  add          s4, t0, s7 #end riscv_int_numeric_corner_stream_16
                  xor          s0, zero, t1
                  sra          tp, s6, tp
                  andi         a3, s7, 1292
                  sltu         s0, tp, tp
                  ori          s0, s1, 1991
                  srai         t3, s0, 9
                  auipc        a0, 638774
                  sltiu        ra, t3, 770
                  slt          t3, s5, s7
                  xori         ra, sp, 300
                  sltu         t5, s4, a5
                  andi         s0, s7, -1059
                  sll          s8, a6, a5
                  lui          sp, 746297
                  add          sp, s9, t3
                  add          s7, s11, s4
                  addi         s9, a0, 1544
                  slti         a2, s11, 2026
                  or           a6, t3, sp
                  sll          s5, a3, s2
                  slt          ra, t0, t1
                  sll          s9, s1, a4
                  and          s4, s3, a7
                  xori         s9, s6, -1252
                  sltiu        s6, gp, -796
                  or           s6, s4, t6
                  sub          a5, s2, s4
                  xor          s4, zero, s0
                  xor          a7, sp, s10
                  slti         t5, s8, -489
                  and          t2, a2, zero
                  addi         s9, a1, -1737
                  slti         t3, s4, -75
                  srai         a3, s2, 26
                  auipc        s6, 76945
                  slti         s11, a4, 693
                  srli         t3, s4, 26
                  sll          a2, s8, s11
                  or           gp, s2, a2
                  ori          t2, t5, 1635
                  srli         t5, sp, 29
                  and          ra, s11, s5
                  add          s4, a1, t3
                  lui          s5, 881096
                  sltu         s6, s4, s2
                  add          a5, t2, s10
                  or           sp, s11, a1
                  sll          ra, a0, a5
                  srli         ra, zero, 26
                  sll          s3, a6, t2
                  xori         ra, t5, 1156
                  srai         s3, a1, 13
                  andi         tp, s4, -864
                  add          a1, a1, s11
                  auipc        a6, 947992
                  slti         s3, s5, 6
                  srli         t3, t2, 20
                  and          a4, s7, s9
                  xor          a7, t4, ra
                  srli         t5, a2, 1
                  srli         a3, t4, 6
                  xori         s6, t1, 1967
                  sll          zero, s8, sp
                  slt          a1, ra, ra
                  auipc        ra, 538510
                  srli         a4, t2, 26
                  srli         t5, s10, 13
                  sltu         sp, t5, t1
                  or           s10, zero, tp
                  srl          s4, zero, t1
                  srl          a0, s7, s2
                  srl          s0, zero, t6
                  or           s6, t0, a2
                  sub          gp, sp, tp
                  add          s7, gp, a2
                  addi         sp, a0, 1800
                  sltu         ra, a0, a3
                  slli         t5, t0, 14
                  add          s8, a6, a2
                  srl          sp, ra, a6
                  andi         a7, sp, -1282
                  sub          a2, s0, s5
                  addi         a4, s3, -946
                  sltiu        a7, s6, -1420
                  or           ra, t3, s7
                  slt          ra, s10, s8
                  sra          s10, zero, s3
                  lui          s3, 396583
                  srl          a1, t5, ra
                  slt          s1, t5, t6
                  or           s11, s8, t3
                  sub          s0, a5, t1
                  auipc        t5, 348739
                  lui          t0, 931605
                  andi         s4, a5, 1186
                  slli         ra, tp, 21
                  srl          t6, s5, zero
                  andi         s8, tp, -694
                  sltu         s11, s8, t0
                  slt          t5, a2, a1
                  nop
                  sll          s5, sp, t2
                  sltiu        a4, t1, 195
                  addi         sp, a1, 2010
                  auipc        gp, 686955
                  slli         s1, a2, 3
                  addi         ra, s4, -1828
                  andi         a6, s10, -1640
                  slti         gp, t5, 1566
                  lui          s5, 112053
                  slti         s10, s9, -510
                  xor          t6, s1, gp
                  xori         s10, zero, 942
                  xor          ra, s3, gp
                  slli         a6, s2, 24
                  sll          s3, a7, a4
                  sra          t6, zero, a0
                  auipc        s4, 315507
                  srai         s6, s2, 30
                  andi         t6, a1, -197
                  slli         a6, tp, 6
                  slt          a3, s8, s2
                  ori          s5, s9, 1505
                  addi         s1, a0, 1016
                  nop
                  andi         a6, s10, 10
                  slti         a3, tp, 1368
                  and          s5, s0, a1
                  sub          t2, s6, t4
                  sll          zero, s0, t0
                  slli         sp, t4, 6
                  srl          a4, s9, s4
                  xori         s5, s2, -1438
                  add          ra, a6, a7
                  or           t5, a3, tp
                  sub          s4, a3, a1
                  add          tp, s1, s7
                  or           tp, t0, a2
                  or           s1, a3, t1
                  srl          a1, t1, t3
                  nop
                  slt          t3, s8, t2
                  srli         gp, sp, 11
                  ori          t0, s2, -663
                  lui          s6, 245901
                  slt          ra, t2, a6
                  sltiu        a6, s2, 781
                  add          gp, a2, s1
                  lui          s9, 611381
                  slli         t2, s4, 10
                  sra          t2, t5, s2
                  xori         s3, a0, -864
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           ra, 0x80000000
                  li           s11, 0x0
                  li           s0, 0x0
                  li           t2, 0x80000000
                  li           s9, 0x80000000
                  li           gp, 0x0
                  li           s3, 0xffffffff
                  li           t6, 0x0
                  li           t0, 0x0
                  add          gp, t0, s0
                  add          gp, t0, s9
                  auipc        gp, 214136
                  auipc        t2, 1017210
                  nop
                  nop
                  addi         t0, a6, -1266
                  sub          t2, t6, s9
                  nop
                  nop
                  auipc        t2, 805159
                  nop
                  sub          t0, s3, s3
                  add          s0, t2, s3
                  add          s3, s0, s11
                  nop #end riscv_int_numeric_corner_stream_15
                  addi         t3, a3, 779
                  slti         ra, s7, 8
                  sltu         t2, t1, s10
                  nop
                  sll          a1, ra, zero
                  or           ra, s5, ra
                  sll          s3, t1, s7
                  ori          t6, t3, -143
                  and          s4, a2, ra
                  add          s4, t6, t5
                  slti         a2, s0, -59
                  sub          s0, a3, gp
                  auipc        t6, 820816
                  lui          s5, 543705
                  sltiu        s3, t4, 1260
                  ori          a0, gp, -721
                  slti         s11, a0, 230
                  sltu         ra, ra, s8
                  auipc        s1, 579186
                  slli         a0, s11, 1
                  add          s8, s7, s0
                  sll          t2, a6, s6
                  sub          tp, a1, s3
                  ori          a3, s6, 415
                  sltu         s6, gp, a1
                  srai         s3, a3, 9
                  sltiu        s5, a1, -705
                  srai         s3, a5, 26
                  auipc        a7, 243616
                  nop
                  and          s6, sp, a5
                  slli         t3, s3, 12
                  slt          a3, a0, s4
                  andi         zero, t0, -288
                  sltu         s1, t2, tp
                  slti         s1, s2, 1641
                  sltiu        s6, sp, -139
                  lui          s4, 488812
                  ori          sp, t2, 1591
                  sltiu        s10, t5, 1891
                  nop
                  slti         ra, s2, -1456
                  srl          t2, a5, s4
                  and          t0, s11, tp
                  slti         s7, s4, 740
                  andi         a1, a0, -1832
                  sub          s5, a7, sp
                  add          zero, t0, t0
                  slli         a3, a1, 17
                  sub          s4, a0, s2
                  slli         sp, t5, 28
                  add          s1, t6, t1
                  and          a6, a7, a7
                  add          a7, t3, t6
                  sltiu        sp, ra, 619
                  nop
                  and          s10, s1, s0
                  sra          a2, s9, s0
                  and          t2, sp, a4
                  srai         a5, s2, 0
                  srl          s8, t4, gp
                  srli         t5, s10, 17
                  srai         tp, s9, 10
                  auipc        s3, 206295
                  xor          s8, t5, a7
                  or           t0, t5, s0
                  srli         t5, s10, 5
                  add          t5, s6, s8
                  xor          t6, s4, s9
                  add          s0, t6, t4
                  addi         s10, a2, 2001
                  srli         zero, s4, 26
                  sltu         tp, zero, s8
                  andi         t3, s6, -547
                  srl          s1, s6, zero
                  add          a1, s9, gp
                  srli         a2, a6, 27
                  slli         ra, ra, 31
                  srai         s9, a7, 16
                  ori          s6, zero, 1443
                  slli         s5, a4, 23
                  xor          s1, a4, s1
                  srl          s9, t3, s7
                  sra          t2, t5, gp
                  srai         a7, s11, 6
                  sltu         s11, s10, gp
                  sltiu        s8, tp, 549
                  slti         a4, t2, 1630
                  addi         a2, s11, 1449
                  sltu         s10, t4, a2
                  ori          a2, s9, -1653
                  slti         gp, s8, -1863
                  or           s1, ra, a7
                  slli         a0, a2, 3
                  or           a7, gp, a3
                  and          zero, t1, tp
                  sub          t5, s4, a4
                  lui          s8, 583838
                  srai         t5, s3, 17
                  xor          s3, s3, s9
                  srai         s9, a3, 26
                  or           a3, zero, t1
                  slti         a6, t4, 2038
                  slt          s3, sp, s10
                  xori         t0, t0, -2005
                  andi         a6, s6, -656
                  sltu         t5, a2, a0
                  auipc        a4, 493218
                  xori         s11, a4, -1710
                  auipc        a6, 477310
                  srai         a7, t6, 8
                  xori         ra, a0, 1673
                  and          a5, t6, a4
                  sltiu        s9, a6, 1090
                  ori          a0, s1, 687
                  srai         s1, tp, 2
                  ori          ra, a3, -1630
                  sll          a0, sp, s8
                  add          s10, a4, s3
                  andi         t6, sp, 1685
                  slt          s10, t3, s9
                  srli         s7, s7, 1
                  nop
                  nop
                  ori          a7, s2, -675
                  nop
                  slti         a5, t1, 969
                  sub          a3, s9, a4
                  and          a0, s4, t0
                  slli         s7, s7, 20
                  sltiu        a2, gp, 1553
                  ori          gp, a6, -1271
                  andi         a1, s5, 1673
                  srli         a1, s8, 11
                  xor          ra, sp, t5
                  xor          s5, s8, a6
                  slt          s8, s8, a6
                  li           a2, 0x4f245cd #start riscv_int_numeric_corner_stream_0
                  li           a5, 0xc25dd4b0
                  li           t2, 0x80000000
                  li           s11, 0xffffffff
                  li           a3, 0xffffffff
                  li           a0, 0x80000000
                  li           tp, 0xffffffff
                  li           a1, 0x38f66496
                  li           t3, 0xb0bcccdb
                  li           s6, 0x1548e556
                  nop
                  sub          s6, a0, t3
                  lui          a0, 442654
                  add          a2, t3, a2
                  sub          s6, a3, tp
                  nop
                  addi         a1, a2, -1495
                  auipc        s11, 283530
                  lui          s6, 762296
                  lui          a5, 923815
                  add          s6, t3, a0
                  auipc        tp, 375127
                  sub          a3, a5, tp
                  auipc        t2, 960773
                  add          s6, a3, tp
                  auipc        a0, 748378
                  sub          a2, a2, s11 #end riscv_int_numeric_corner_stream_0
                  add          zero, t2, zero
                  sub          t6, s3, t6
                  sll          s4, s8, s5
                  auipc        a1, 516156
                  lui          s10, 370408
                  xori         t0, sp, -825
                  slti         a4, s7, -1799
                  sra          s11, t0, s9
                  or           s11, s0, t1
                  and          s1, t5, s1
                  nop
                  auipc        ra, 1016367
                  add          a1, s10, sp
                  lui          s7, 300455
                  sltu         s1, s9, t4
                  sub          t3, tp, s9
                  lui          a2, 808589
                  srl          t3, s6, s7
                  xori         a2, tp, -1334
                  sll          a2, sp, tp
                  srli         t0, zero, 17
                  sltu         gp, gp, a7
                  sub          t6, s1, a6
                  xor          a2, s4, a0
                  lui          zero, 201067
                  slli         a6, t4, 7
                  auipc        a6, 400238
                  sltu         gp, sp, t2
                  sltiu        s11, t6, 1534
                  auipc        a7, 1030895
                  xor          s0, tp, s11
                  slt          a1, t6, a3
                  or           zero, tp, a6
                  srai         s9, s0, 20
                  sra          a1, s7, s7
                  slli         s1, s8, 3
                  sub          a2, s1, a1
                  xori         t3, a5, 582
                  or           a4, a0, tp
                  addi         a1, a4, -2011
                  srai         t6, s7, 7
                  sra          a0, s9, t6
                  sltu         t5, s7, t2
                  addi         t2, tp, 770
                  sub          s3, gp, t3
                  auipc        a3, 942882
                  sltiu        s4, t1, 340
                  xori         s6, t0, -1100
                  nop
                  sltiu        a2, s10, -2003
                  sra          s0, a5, s2
                  sub          sp, zero, a1
                  slli         s0, s6, 8
                  slli         t0, a0, 28
                  sub          s9, s9, t6
                  srl          ra, s5, ra
                  srai         a2, gp, 24
                  add          a2, a5, s0
                  xori         tp, sp, 1287
                  lui          s3, 98199
                  srai         t0, s7, 27
                  sltiu        a0, s8, 880
                  ori          t2, a5, -569
                  sll          t6, s2, s9
                  srli         s0, t1, 6
                  slli         a2, t2, 20
                  xor          s4, t3, a7
                  andi         s5, a3, 968
                  ori          s7, a0, 710
                  srl          s9, t2, s5
                  nop
                  auipc        s1, 296973
                  nop
                  sltu         s8, a3, a5
                  lui          ra, 177351
                  andi         s1, s6, 940
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           t0, 0x1a1b7515
                  li           gp, 0xffffffff
                  li           ra, 0x0
                  li           sp, 0x80000000
                  li           s7, 0xf62e90da
                  li           s8, 0x80000000
                  li           s11, 0x80000000
                  li           s4, 0x0
                  li           t5, 0x80000000
                  nop
                  add          a5, gp, a5
                  sub          s11, s8, s11
                  auipc        a5, 532203
                  sub          t5, t5, sp
                  addi         gp, t0, -628
                  auipc        s7, 121597
                  addi         sp, t0, -1506
                  addi         sp, sp, 1149
                  nop
                  auipc        s8, 614134
                  lui          s4, 142707
                  lui          ra, 589367
                  add          ra, ra, sp
                  addi         s4, ra, 1773
                  addi         s11, s11, 3
                  nop
                  add          ra, sp, s8 #end riscv_int_numeric_corner_stream_2
                  srai         s11, tp, 10
                  slti         s7, ra, -1572
                  sub          t3, a6, s0
                  or           s6, t3, t0
                  and          t6, tp, a7
                  add          ra, s11, s8
                  slt          sp, s3, t0
                  sltiu        s8, zero, 1215
                  addi         t5, s0, -455
                  andi         a6, s9, -183
                  andi         a1, t5, -1976
                  srl          s3, t4, t4
                  srai         t0, s11, 8
                  and          s4, t2, s5
                  slt          t0, s7, a3
                  ori          s9, s7, -217
                  xor          gp, s0, s10
                  slti         s10, a7, -885
                  lui          s6, 30509
                  slt          s0, s4, t1
                  sll          gp, t4, s3
                  srli         a7, zero, 22
                  auipc        a1, 239544
                  and          a7, s8, t5
                  nop
                  addi         sp, s0, 306
                  slli         sp, s6, 20
                  srli         a6, s6, 8
                  sltu         a2, a4, t6
                  slt          s0, a5, t4
                  slt          s7, s6, s1
                  sll          a1, s6, t5
                  slt          s5, t2, s1
                  or           gp, t4, s2
                  srai         ra, ra, 30
                  sltu         s3, s9, s10
                  slt          s6, t1, s0
                  xori         s9, a2, -1176
                  add          sp, s2, s2
                  addi         t0, t6, 2008
                  add          s5, ra, s3
                  ori          a1, s7, -802
                  sll          t0, s3, ra
                  srai         s0, a6, 19
                  slt          s9, s10, a0
                  sll          gp, s4, s8
                  sll          a7, t0, ra
                  xor          a3, t5, a3
                  and          gp, sp, t1
                  xori         s1, a7, 1925
                  slt          s10, a5, ra
                  sll          s11, a5, a0
                  sltiu        a1, tp, 459
                  xor          s4, s5, s0
                  srai         s3, a4, 30
                  slti         s0, a6, 1780
                  slti         s4, zero, -873
                  xori         a0, s2, -1760
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s7, 0xffffffff
                  li           t2, 0xdb9e6a76
                  li           s0, 0xffffffff
                  li           a3, 0xffffffff
                  li           s5, 0x0
                  li           a0, 0x0
                  li           t0, 0xffffffff
                  li           s9, 0x0
                  li           a1, 0xffffffff
                  addi         a0, t0, 427
                  nop
                  add          s7, t2, s0
                  add          t0, s0, s0
                  auipc        t0, 80295
                  lui          t0, 101803
                  addi         s9, s9, 427
                  auipc        t2, 73207
                  sub          s5, s7, t2
                  auipc        s7, 313105
                  addi         t2, s5, -1850
                  addi         s4, s0, 783
                  nop
                  addi         s9, t0, -1529
                  sub          s9, t2, t0
                  sub          s0, s5, s4
                  nop
                  nop
                  sub          s0, s0, t0
                  lui          s0, 985932
                  add          t2, s4, s0
                  sub          a0, a3, s9
                  sub          s4, s5, s5
                  add          s5, s7, s9 #end riscv_int_numeric_corner_stream_6
                  or           s0, t3, t1
                  addi         t0, t6, 419
                  xor          s0, t4, gp
                  auipc        t6, 434955
                  sub          ra, s5, s10
                  nop
                  lui          s1, 890136
                  xori         s11, a7, -110
                  or           t5, s6, a4
                  addi         sp, t3, -726
                  xori         s1, a1, -1814
                  sra          a2, s6, s2
                  sub          s5, t5, a1
                  sra          t0, s9, t3
                  slti         zero, s5, 1759
                  auipc        gp, 851522
                  lui          t2, 162625
                  xori         t5, s8, -1986
                  sra          a7, s1, s7
                  add          a3, a3, t3
                  or           a6, a0, s8
                  sltu         ra, t2, tp
                  srai         s1, a4, 26
                  sltu         a4, a4, a4
                  or           t0, s11, ra
                  slli         s7, s11, 23
                  sub          ra, a1, s0
                  add          gp, s3, t6
                  srai         a7, t5, 0
                  lui          gp, 2517
                  srli         tp, t5, 25
                  slli         t0, t6, 20
                  add          a5, a7, s2
                  slt          a3, ra, tp
                  srai         t2, a2, 7
                  andi         s6, t1, -1093
                  ori          sp, s9, 195
                  andi         a4, s10, -135
                  sltiu        s9, t0, -993
                  or           t2, a7, a6
                  srai         a2, t1, 12
                  or           a6, s7, t4
                  andi         gp, a6, 777
                  sub          s11, t4, s9
                  srl          zero, s8, ra
                  ori          s10, s3, -1506
                  and          t6, a2, s11
                  srli         ra, s2, 17
                  add          s6, s10, t1
                  sltiu        gp, t3, -622
                  sltu         s3, t4, t1
                  auipc        a2, 953326
                  slt          s0, a4, s7
                  ori          a6, t2, 1817
                  xori         ra, s11, 1873
                  ori          s1, s6, -1507
                  slli         t0, a2, 2
                  addi         s9, s3, 1505
                  or           s9, s3, t0
                  slli         s3, t2, 29
                  xor          gp, a3, ra
                  xor          a6, t4, a3
                  xor          s1, s5, t4
                  srli         a5, t3, 8
                  andi         t0, gp, 1709
                  sll          t2, s9, a4
                  add          t3, s2, tp
                  sub          s1, s7, s10
                  sll          s4, a4, s4
                  xori         a7, s5, 1379
                  sltu         a1, t1, a5
                  add          s0, s10, a6
                  xori         s0, s5, 1873
                  srli         s9, t2, 24
                  auipc        s11, 772266
                  and          s4, t0, t2
                  xor          tp, s3, a5
                  srli         a7, t6, 28
                  and          a0, s2, s11
                  sra          t5, s3, t5
                  xori         gp, s4, 1925
                  nop
                  xor          gp, sp, s2
                  sub          t0, s5, s4
                  sub          a1, s9, s8
                  xori         gp, a1, -809
                  slli         s1, gp, 4
                  sltu         s6, s8, a1
                  xor          a0, t4, gp
                  xor          t2, s6, a5
                  slt          ra, a0, zero
                  sub          s1, s2, s6
                  sltiu        sp, a1, 616
                  sub          s4, gp, a7
                  srai         gp, a6, 22
                  sltu         s3, tp, a3
                  add          a6, gp, sp
                  slt          s0, s1, a4
                  sll          s7, t1, s1
                  srli         a0, t6, 8
                  auipc        gp, 311211
                  slli         a5, s10, 10
                  or           s5, a4, a5
                  xor          sp, t5, s11
                  sltu         s11, s5, s1
                  and          t2, s2, s3
                  srai         t0, a3, 2
                  srl          s4, s0, s0
                  slli         tp, t5, 13
                  addi         s4, a2, 1671
                  sltiu        t5, a1, 530
                  sltiu        s0, s1, -1886
                  andi         s8, s4, -705
                  slli         t6, t3, 5
                  slti         a6, s2, 1048
                  sll          s6, zero, zero
                  addi         sp, t2, 105
                  andi         s6, s6, 190
                  slli         s11, t5, 17
                  auipc        a6, 974657
                  andi         sp, t2, 1119
                  ori          tp, s5, 1437
                  sra          gp, zero, s5
                  srli         s5, t1, 12
                  and          s5, zero, s4
                  xori         gp, s10, 1483
                  xor          t3, a4, a0
                  sub          s11, a3, a0
                  sub          a1, s4, a6
                  sra          s11, s6, sp
                  sltu         t3, t3, t3
                  sra          s9, s1, zero
                  sra          ra, gp, s3
                  slli         s9, s6, 14
                  ori          s1, s5, -613
                  sra          s0, t6, t5
                  sll          s10, a2, t0
                  addi         t3, s5, 1849
                  srl          a6, t6, t2
                  slti         a3, s4, 1134
                  sll          s0, t5, a7
                  auipc        s6, 482095
                  srl          a0, s8, s3
                  srl          s11, gp, s8
                  and          ra, sp, a1
                  or           a1, t4, s8
                  andi         s1, a4, 1593
                  ori          sp, a6, 349
                  nop
                  sltiu        s1, s3, -1574
                  sltu         t0, a1, s3
                  slti         t6, a6, 315
                  addi         t6, s1, 1039
                  slti         s11, s10, 1277
                  sll          a1, s2, s3
                  lui          t2, 993899
                  sub          t0, gp, t5
                  sub          t3, a7, s6
                  xori         s4, s10, 811
                  xor          s8, a7, a5
                  slli         a3, s3, 30
                  slt          a4, t3, sp
                  srl          s9, ra, s8
                  sra          s8, a6, t1
                  xor          t6, zero, a4
                  auipc        s6, 772540
                  xori         s3, s3, 725
                  srli         t0, t5, 26
                  sll          s9, t3, ra
                  sra          s10, a0, s2
                  and          s6, t5, a2
                  lui          tp, 67753
                  xor          a7, t0, a7
                  xor          s6, s11, a6
                  slli         s0, s4, 20
                  srai         s8, a3, 26
                  slt          s8, t4, t2
                  sub          a4, t3, a1
                  srai         sp, a1, 14
                  slt          t0, a0, t2
                  lui          zero, 970984
                  srli         s1, t5, 1
                  sltu         tp, s7, ra
                  and          s4, s10, t6
                  xor          zero, gp, gp
                  sub          a4, sp, s8
                  sltiu        s4, s1, -646
                  or           t0, a5, ra
                  add          s4, s1, s7
                  addi         a6, t4, 544
                  srli         s0, s3, 26
                  srl          t6, s3, a7
                  slt          t0, a5, a3
                  addi         s0, a7, 1119
                  slti         a2, s4, -130
                  sltu         sp, t3, t4
                  auipc        s6, 531175
                  nop
                  srl          a3, s2, a2
                  srl          s11, s2, t3
                  ori          a1, gp, -72
                  add          s9, t2, a0
                  slti         a1, t1, -1561
                  srli         s3, s2, 28
                  xori         t0, s7, -419
                  add          s3, s5, tp
                  auipc        t2, 882766
                  sra          s5, sp, a1
                  andi         gp, ra, 1259
                  xor          s3, sp, sp
                  sltu         a1, a0, a1
                  lui          sp, 512244
                  xori         ra, a2, -1416
                  sltiu        s4, s0, 335
                  sltu         tp, s10, a0
                  nop
                  slt          zero, s1, s8
                  ori          t3, a5, 1646
                  andi         tp, s9, 333
                  srl          gp, s0, s11
                  srai         s8, sp, 5
                  sll          s11, s9, t5
                  slti         a0, s10, 636
                  auipc        s4, 535568
                  ori          t5, s1, -1696
                  xori         a4, s0, -39
                  srai         a2, zero, 30
                  andi         s9, s6, -1026
                  sltiu        s5, s9, -2042
                  sub          a3, t3, a6
                  and          a6, s10, t1
                  sltiu        s9, s8, 113
                  auipc        ra, 23180
                  slt          s5, s7, s6
                  srl          t2, s2, tp
                  slt          s0, t1, sp
                  ori          s10, a3, 51
                  or           t5, s5, ra
                  lui          t2, 894058
                  or           s6, t5, ra
                  xori         a2, a4, 94
                  nop
                  lui          s5, 389480
                  lui          tp, 266530
                  auipc        t2, 364105
                  sll          t2, t2, s4
                  srli         sp, s10, 30
                  xori         s8, sp, -1922
                  xor          a0, t5, a1
                  srai         s5, a7, 9
                  xori         s9, t0, -871
                  srl          a5, a7, s8
                  slli         s8, t4, 0
                  sra          t6, s8, t4
                  lui          a7, 50236
                  andi         t6, s1, -1167
                  sll          s9, s0, a0
                  slli         s11, t0, 23
                  sll          s3, t6, s8
                  lui          a3, 872437
                  addi         s3, a0, -146
                  addi         s1, t2, 951
                  xori         a0, t0, -20
                  xori         s11, zero, -521
                  slt          t2, a2, a1
                  xori         s8, s0, 1814
                  sra          tp, s2, s4
                  srai         s11, sp, 28
                  srli         s7, t4, 23
                  xor          a5, s3, t4
                  addi         s5, s8, -298
                  addi         ra, a6, -1000
                  sltu         s7, s8, zero
                  auipc        a3, 1004019
                  nop
                  slli         s9, s6, 29
                  sll          t6, t5, zero
                  xori         t3, a0, 641
                  auipc        t6, 130735
                  srli         s5, a0, 5
                  srli         t2, s2, 11
                  sra          ra, t4, t1
                  auipc        a4, 575839
                  xori         s4, t6, -79
                  addi         t0, s5, 628
                  slli         zero, s9, 25
                  sltu         t0, s3, gp
                  srl          t2, t3, t4
                  slt          gp, t0, s10
                  sltiu        s5, t4, 526
                  addi         a0, a5, -67
                  slti         zero, t0, 1419
                  srl          s1, s3, a6
                  slt          a1, zero, s8
                  srai         gp, a6, 8
                  addi         s7, s2, -1413
                  sll          a5, t5, a6
                  slli         s3, s4, 2
                  ori          a7, t3, -1744
                  and          s0, t4, zero
                  xori         zero, a2, 1477
                  nop
                  srai         t6, zero, 6
                  addi         tp, tp, 354
                  sra          t2, a6, a7
                  sltiu        a3, s11, -1331
                  sltu         s0, t4, t4
                  sll          t3, s2, s4
                  or           a4, a0, t6
                  andi         s4, a5, -1514
                  srai         s7, s3, 2
                  addi         tp, sp, -2000
                  sltiu        a2, s0, 303
                  addi         a7, s2, 1857
                  xori         s7, t4, 1907
                  sltu         ra, a1, s1
                  xori         s4, tp, 1054
                  srl          t5, ra, tp
                  ori          s10, a5, -2037
                  slli         s8, t0, 7
                  srli         a6, s1, 8
                  xori         s10, a0, 150
                  sra          a5, zero, t3
                  srli         s0, t1, 30
                  srl          a3, a6, t6
                  auipc        ra, 796514
                  sltiu        a7, tp, -1581
                  ori          zero, sp, 489
                  srl          s6, gp, s7
                  sltiu        a4, s10, -1694
                  sltiu        a0, s4, 2047
                  srl          t2, t4, t2
                  nop
                  srli         s4, s1, 20
                  andi         a1, gp, 546
                  ori          t3, s7, 275
                  xori         s5, a6, -1492
                  nop
                  xori         tp, s4, -935
                  auipc        s10, 30951
                  xori         t3, gp, -1790
                  lui          a4, 114090
                  slli         s10, s11, 17
                  xor          s1, t3, tp
                  or           s10, zero, tp
                  auipc        a4, 262489
                  xor          s5, t3, s5
                  xor          s10, t3, a5
                  xor          a6, gp, s8
                  slli         s6, s11, 23
                  slli         a3, tp, 24
                  sltiu        t0, t0, -202
                  slt          a3, gp, s9
                  sltu         ra, tp, s2
                  sltiu        s0, s2, 1825
                  sltu         sp, a0, a6
                  andi         s10, a6, -691
                  slli         s6, t2, 16
                  lui          tp, 427585
                  slti         t0, s8, -1010
                  sra          s1, s4, t1
                  slt          a3, t0, tp
                  ori          ra, a2, 2047
                  sltiu        s3, a5, 1425
                  xor          t3, s0, t5
                  auipc        a5, 113260
                  sltiu        a3, s6, 225
                  slti         a4, zero, 132
                  ori          s10, a0, -1399
                  nop
                  slli         tp, s7, 31
                  slti         t2, a4, -1929
                  slti         a6, t4, 1109
                  xor          s6, s2, t2
                  auipc        sp, 542679
                  srai         s0, s4, 0
                  nop
                  srli         t3, t5, 6
                  sltu         s9, s8, s6
                  srli         sp, a5, 28
                  sltiu        s11, s11, -1021
                  sra          t5, a7, s3
                  andi         s9, t6, 348
                  andi         s3, t0, 1142
                  and          s7, s2, gp
                  srai         t5, ra, 3
                  add          s5, s6, s7
                  ori          ra, t0, -471
                  and          a0, ra, a5
                  add          ra, a2, s0
                  and          t6, t5, a0
                  lui          a1, 963940
                  sll          a2, a1, a1
                  ori          a4, a0, 1495
                  sra          t0, t2, a4
                  sll          s10, s4, gp
                  sra          s1, a2, s10
                  lui          s11, 711240
                  xori         sp, s3, 1360
                  slti         s3, a3, -1432
                  andi         a0, t2, -1694
                  sll          s11, t5, s10
                  ori          s5, s2, 1252
                  xor          t3, s0, a4
                  or           t6, a0, s10
                  add          a1, s9, a5
                  nop
                  slli         s5, a5, 12
                  addi         t6, t2, 791
                  srli         a1, a0, 23
                  sub          a4, s11, a2
                  xor          s4, zero, t4
                  andi         t3, t2, -215
                  auipc        s8, 1008350
                  or           a0, a4, a2
                  slt          s0, s9, a0
                  xori         s9, a5, -375
                  and          tp, a5, s1
                  srli         a5, a2, 29
                  xori         a1, sp, -1542
                  sra          s7, a6, t4
                  lui          zero, 399486
                  or           s8, s10, a7
                  sub          s9, sp, s11
                  and          s1, s8, sp
                  slti         tp, t3, 791
                  addi         s0, s4, 633
                  sll          s4, s9, a0
                  srli         s5, t4, 20
                  sra          sp, s1, a7
                  xor          tp, a6, a0
                  andi         sp, t3, 1543
                  xor          sp, ra, t1
                  andi         a1, a5, 502
                  addi         s0, s5, 1165
                  add          t3, a1, a3
                  and          a6, t0, s4
                  lui          tp, 13342
                  andi         s11, s6, -627
                  or           t2, a4, s2
                  andi         gp, s3, -643
                  lui          a4, 600640
                  slti         s11, s5, -1690
                  srli         a4, s5, 23
                  lui          s3, 805801
                  nop
                  xori         s6, s7, 478
                  srl          s1, s4, t0
                  slli         s5, s4, 5
                  srai         s7, t0, 29
                  sub          s1, t3, a7
                  ori          s4, gp, -2025
                  addi         zero, t1, 209
                  andi         s8, a1, 1271
                  xor          sp, s3, s1
                  srli         t0, t0, 26
                  sub          s4, s10, s4
                  or           t3, a7, s9
                  auipc        sp, 946454
                  addi         zero, a5, -1686
                  lui          a7, 219406
                  slt          s0, sp, t4
                  sltu         s7, s0, t1
                  sll          sp, a1, a2
                  xori         s8, s8, -803
                  add          s3, a5, zero
                  sub          s7, t3, t2
                  slti         t0, s4, 381
                  auipc        s11, 509272
                  sltu         s10, t4, a0
                  lui          s0, 99359
                  andi         s7, t6, -495
                  addi         s9, t2, 494
                  srli         t2, t6, 0
                  slli         t0, ra, 14
                  add          s6, s5, s8
                  srl          a1, a6, s6
                  xori         s1, sp, -2024
                  slli         s4, s10, 23
                  slli         a4, s6, 31
                  auipc        a4, 447454
                  xor          s4, a2, s3
                  sltiu        s9, s1, 1998
                  or           a4, s8, t2
                  sltiu        t6, s8, 164
                  sub          a1, t1, s1
                  srai         s10, ra, 13
                  sra          a6, s1, t0
                  ori          t2, s3, -1222
                  nop
                  sltiu        s11, t5, 1288
                  lui          t5, 278468
                  and          t0, gp, s7
                  sll          a1, s9, a1
                  sra          a4, gp, s2
                  addi         s5, t0, 525
                  and          t3, t1, t6
                  addi         t3, s4, -44
                  sra          gp, t3, a3
                  and          a6, t1, s5
                  slli         s5, s5, 15
                  srl          s10, s0, a1
                  sltu         gp, a2, a5
                  sll          s8, s11, s10
                  or           s9, s3, t5
                  sltiu        sp, t6, -1063
                  sltiu        sp, s1, 940
                  srai         a5, t5, 12
                  sub          a6, s3, a1
                  sll          a6, t0, t5
                  sltiu        a5, t4, 1761
                  slti         a3, s3, -1817
                  slt          ra, a7, s11
                  xori         s6, t1, -1800
                  andi         t3, t4, 875
                  auipc        a4, 526472
                  slli         s8, a4, 23
                  lui          a3, 615357
                  slt          a5, a4, s6
                  sll          a7, t0, a2
                  add          s0, s7, s2
                  xor          a1, a7, s8
                  sltu         a2, s2, s5
                  addi         a3, t6, 470
                  or           sp, s1, s8
                  srai         gp, t1, 14
                  srai         s3, s11, 22
                  slli         t0, s1, 19
                  sltiu        t0, s3, 657
                  srl          t2, gp, s2
                  slt          t3, s0, s6
                  addi         sp, s10, 820
                  slti         a3, t0, 1895
                  lui          s8, 860628
                  auipc        a4, 588944
                  sub          zero, a7, t6
                  addi         a7, t4, 1430
                  sll          a6, s11, sp
                  lui          t5, 133888
                  srai         t2, ra, 26
                  sll          s1, s8, t1
                  lui          s1, 237849
                  or           s11, t6, a3
                  and          ra, s11, t1
                  lui          t2, 954216
                  srli         a5, s10, 21
                  sltiu        sp, t0, 4
                  addi         t3, a6, -1857
                  srl          gp, a4, ra
                  ori          t5, a7, 881
                  srli         ra, t5, 14
                  lui          s3, 315392
                  add          t6, a2, sp
                  srli         s0, s7, 13
                  sll          s11, sp, a7
                  ori          s4, a7, -1803
                  srai         s0, a0, 20
                  slli         a0, a5, 19
                  slt          a7, a6, t1
                  and          s5, zero, s2
                  andi         t0, t5, -1117
                  xor          s9, s11, s3
                  sra          s0, s6, s0
                  sll          a2, ra, sp
                  srl          tp, s10, a0
                  lui          t5, 59664
                  and          a1, s4, a6
                  andi         tp, a3, -212
                  andi         s0, s8, -664
                  sltu         a2, zero, t6
                  auipc        a7, 350877
                  xor          s11, t6, s3
                  andi         a5, t2, 1048
                  sll          s8, ra, t2
                  srli         s10, s7, 24
                  sll          a1, t3, a5
                  slt          s4, a3, a6
                  xor          a7, s5, s9
                  sll          a7, t6, tp
                  sra          s7, a0, zero
                  srli         a2, a6, 0
                  slti         s10, s4, -1852
                  andi         s10, s0, 1898
                  add          sp, a6, a2
                  srli         a3, a6, 5
                  addi         t5, s6, 1789
                  xori         s11, tp, -1935
                  srli         a1, t6, 3
                  or           a7, a1, s7
                  srl          zero, a0, a3
                  andi         t6, sp, -21
                  ori          s4, a7, 322
                  sltiu        a2, tp, -1218
                  or           a7, zero, s9
                  srl          a3, t0, a4
                  nop
                  sub          gp, ra, s11
                  andi         t2, zero, -395
                  sltu         s7, gp, s2
                  and          zero, s7, s11
                  and          t6, s0, s5
                  sltiu        t6, tp, -1498
                  slli         t6, a2, 26
                  sltu         zero, a6, a5
                  slti         gp, gp, 945
                  auipc        tp, 733260
                  slt          a1, t4, t0
                  auipc        a3, 267440
                  auipc        t5, 51974
                  addi         t6, gp, 489
                  andi         s7, a4, 551
                  sra          t0, t0, s1
                  srli         s5, ra, 10
                  slt          t6, a6, ra
                  srli         s1, s9, 0
                  andi         t3, s9, -1405
                  xor          ra, a3, t3
                  xor          a2, zero, s5
                  nop
                  andi         s0, t5, -658
                  sll          a6, tp, zero
                  xori         gp, a2, 1730
                  slti         zero, a2, 1120
                  slti         s1, tp, -1097
                  xori         t0, s11, 837
                  and          a6, s10, s1
                  and          a7, s7, s8
                  and          a2, s8, t4
                  xori         s9, a7, -552
                  srl          s9, s7, a5
                  slli         a2, sp, 5
                  xori         s1, s10, 1146
                  srai         t6, a1, 18
                  srl          s3, a6, s8
                  srl          s4, s9, a4
                  sra          t0, s11, s10
                  srl          gp, a4, s1
                  slti         t2, s5, -1351
                  sltiu        s6, s3, 99
                  sll          a7, t1, s9
                  sll          t3, s2, s4
                  lui          a7, 647132
                  srai         a2, s8, 19
                  sub          s7, s0, a1
                  andi         s0, s10, -1646
                  auipc        a4, 620800
                  auipc        s1, 64865
                  slt          a6, t2, s3
                  sltiu        t0, ra, 63
                  and          s4, ra, s9
                  sub          sp, ra, t2
                  nop
                  srli         s3, s6, 1
                  auipc        t5, 733902
                  ori          t2, a0, 96
                  sltu         t3, a0, t4
                  sll          t5, s2, s9
                  auipc        s7, 1009625
                  or           t2, t1, a1
                  nop
                  ori          s9, s7, 378
                  nop
                  sra          t3, t2, s0
                  xori         t3, a2, 1665
                  and          ra, t4, s4
                  xor          s4, a1, a2
                  or           s3, t0, s5
                  srai         zero, a6, 30
                  add          s9, t6, a5
                  nop
                  sll          s6, t6, a6
                  andi         sp, t4, -446
                  add          s3, s10, s11
                  ori          s11, t5, 1103
                  slti         s3, s9, -1672
                  nop
                  sub          s3, zero, t6
                  slti         s3, sp, -666
                  addi         t2, gp, -1550
                  and          s0, s8, t5
                  srl          a1, a3, s3
                  srai         s8, a2, 18
                  slt          s6, s4, s3
                  xori         s1, t5, 1005
                  or           sp, s8, a1
                  xori         a6, s10, 917
                  srai         s10, a0, 8
                  sub          sp, zero, t0
                  ori          s5, s5, 324
                  addi         a2, t2, -1505
                  nop
                  nop
                  and          t3, a5, s3
                  or           t2, zero, t6
                  slt          gp, a1, t6
                  srli         s10, a4, 28
                  or           s8, s2, a3
                  addi         t0, a7, 1709
                  sltu         s3, s1, s1
                  lui          gp, 625498
                  srli         s9, t0, 8
                  xor          a6, a2, s2
                  srl          a6, a0, a1
                  slli         s1, t4, 7
                  xor          t0, t4, a7
                  and          t2, t6, tp
                  slti         zero, a6, -1010
                  andi         a7, a3, 1405
                  srl          t6, s6, a0
                  srai         a6, s10, 6
                  addi         ra, sp, -550
                  ori          t6, a0, 95
                  sltu         a1, a1, t4
                  add          s4, a0, t4
                  or           ra, s10, t3
                  sub          ra, a0, a2
                  and          a1, t0, s10
                  xori         t6, s2, 134
                  auipc        s6, 872647
                  srl          s5, t2, s4
                  addi         s9, tp, 1596
                  nop
                  add          s9, tp, a1
                  lui          s10, 168990
                  sltiu        a0, s2, -1180
                  slt          s8, s11, s4
                  andi         s10, ra, -1545
                  or           a5, a3, s10
                  srai         t6, s0, 5
                  slti         gp, a0, 240
                  slli         a7, s9, 13
                  lui          a7, 933510
                  or           s1, s6, zero
                  and          s7, s10, tp
                  addi         a5, zero, 1
                  sra          a6, zero, s10
                  or           zero, t4, s4
                  slli         sp, s3, 16
                  slli         zero, a5, 31
                  add          t0, t4, zero
                  addi         s10, t5, 251
                  xor          s4, s10, a4
                  sub          s3, tp, a2
                  sltiu        a5, t4, -1931
                  xori         s1, a7, -68
                  sll          a5, t0, t4
                  slti         s0, s8, -434
                  srai         tp, tp, 20
                  auipc        a3, 374058
                  slti         s8, s11, -326
                  and          s1, a2, a1
                  addi         s7, a0, 244
                  and          s0, t2, s1
                  sra          s1, s6, t6
                  auipc        sp, 154832
                  slt          s11, s10, s4
                  sltu         s6, t5, tp
                  sltu         a6, a4, s8
                  auipc        s1, 1012249
                  sll          t6, t6, s10
                  sltiu        a3, a7, -1972
                  xor          a3, sp, a1
                  nop
                  srai         sp, s4, 4
                  slli         s10, s3, 23
                  and          gp, zero, s3
                  slti         s6, zero, -43
                  srai         gp, s9, 26
                  srli         t2, s7, 5
                  slti         a5, a0, -2016
                  slt          t3, t6, s5
                  add          a7, tp, s9
                  nop
                  srli         s5, s7, 29
                  slt          a6, s2, s4
                  sltiu        s4, s2, 452
                  slti         s10, s4, -1688
                  sub          s3, s8, s8
                  xor          t5, s6, t0
                  andi         t0, s2, 430
                  xori         a2, sp, 1442
                  add          s0, t0, a4
                  auipc        s8, 392916
                  add          a5, a5, a3
                  and          s7, a6, s5
                  nop
                  lui          s8, 35729
                  lui          gp, 265785
                  or           t0, s1, a6
                  xor          s8, s10, tp
                  addi         s7, t5, -1461
                  slt          t3, s9, t5
                  slli         s10, s11, 9
                  lui          tp, 794994
                  nop
                  sub          a4, s8, t2
                  sltiu        s7, a7, -1211
                  slli         a4, t3, 16
                  nop
                  sll          s9, s5, sp
                  andi         tp, a0, 1967
                  lui          ra, 166078
                  slli         s11, s5, 27
                  sub          t5, a1, a0
                  sltiu        zero, s4, -405
                  or           a0, s8, t4
                  slt          a2, zero, a2
                  sltiu        sp, ra, 327
                  xori         t6, zero, -371
                  xor          t5, t0, zero
                  srli         t5, s2, 7
                  sll          s0, s4, a1
                  sll          s11, s6, t4
                  la x18, test_done
                  jalr x0, x18, 0
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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x29, x6, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x20, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x20, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x20, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x20, x2, ecall_handler
                  li x2, 0x1
                  beq x20, x2, instr_fault_handler
                  li x2, 0x5
                  beq x20, x2, load_fault_handler
                  li x2, 0x7
                  beq x20, x2, store_fault_handler
                  li x2, 0xc
                  beq x20, x2, pt_fault_handler
                  li x2, 0xd
                  beq x20, x2, pt_fault_handler
                  li x2, 0xf
                  beq x20, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x6, x29, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

load_fault_handler:
                  add x6, x29, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

store_fault_handler:
                  add x6, x29, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x6, x29, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x6, x29, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x6, x29, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
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
