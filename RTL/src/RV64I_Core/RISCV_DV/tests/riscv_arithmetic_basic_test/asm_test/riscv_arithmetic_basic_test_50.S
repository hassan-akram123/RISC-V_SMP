.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 0
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0x989046d9
                  li x1, 0x407fcda6
                  li x3, 0xf9d2c3c7
                  li x4, 0xb
                  li x5, 0xf9e2f942
                  li x6, 0xfe2d1177
                  li x7, 0xf1db10a9
                  li x8, 0xfad7baa3
                  li x9, 0x3
                  li x10, 0x80000000
                  li x11, 0xe
                  li x12, 0xf652308c
                  li x13, 0x6
                  li x14, 0xf9285628
                  li x15, 0x5
                  li x16, 0x7d6a1667
                  li x17, 0x0
                  li x18, 0xf3ccc551
                  li x19, 0x0
                  li x20, 0x142d585c
                  li x21, 0xffdf8e3b
                  li x23, 0x80000000
                  li x24, 0x8
                  li x25, 0x0
                  li x26, 0xa1846282
                  li x27, 0xe1b3fc1a
                  li x28, 0x3
                  li x29, 0x4ea3368
                  li x30, 0xf4d4080e
                  li x31, 0x80000000
                  la x22, user_stack_end
main:             li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s0, 0x80000000
                  li           t2, 0xffffffff
                  li           a1, 0xc810ffcd
                  li           s8, 0x574545a9
                  li           s7, 0x80000000
                  li           t0, 0x80000000
                  li           a4, 0x0
                  li           gp, 0x0
                  li           a6, 0x0
                  auipc        s0, 212367
                  sub          a6, t2, t2
                  sub          t0, a4, t2
                  add          a1, t2, a6
                  addi         s0, a3, -1398
                  auipc        a6, 751142
                  sub          t0, s0, s0
                  nop
                  nop
                  sub          s8, a3, t0
                  sub          s7, t2, t0
                  sub          a3, t0, s7
                  nop
                  add          t0, s7, a4
                  add          t2, a1, s0
                  nop
                  addi         gp, s7, 808
                  lui          a6, 62718
                  nop
                  lui          s7, 705913
                  lui          t2, 256853
                  auipc        a4, 784008
                  auipc        a4, 431156 #end riscv_int_numeric_corner_stream_2
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           a0, 0x83c0e681
                  li           a5, 0xffffffff
                  li           t6, 0x80000000
                  li           t3, 0xc2142beb
                  li           ra, 0xffffffff
                  li           t0, 0xffffffff
                  li           s0, 0x0
                  li           s7, 0x80000000
                  li           s1, 0x80000000
                  lui          s3, 847177
                  nop
                  sub          s0, s3, t3
                  addi         a5, s1, 728
                  sub          t6, ra, s7
                  add          t6, t3, s7
                  nop
                  sub          s3, t3, t0
                  lui          s3, 537074
                  sub          t0, a5, s3
                  auipc        t6, 369121
                  nop
                  addi         s0, s3, -1468
                  nop
                  add          s7, t0, t0
                  lui          a0, 57531
                  nop
                  lui          t3, 319752
                  lui          a5, 232533
                  sub          t0, a5, a5
                  lui          ra, 30261
                  lui          s1, 712670
                  sub          ra, t6, t6
                  sub          s7, ra, a0
                  sub          s7, a0, t6
                  lui          t6, 737827 #end riscv_int_numeric_corner_stream_16
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           s2, 0x0
                  li           s3, 0x80000000
                  li           a3, 0x0
                  li           a2, 0x0
                  li           s10, 0x0
                  li           a0, 0xffffffff
                  li           a5, 0xedd6f60a
                  li           s1, 0xffffffff
                  li           t2, 0xffffffff
                  add          s2, s2, a0
                  add          a2, s10, t4
                  lui          a0, 160792
                  sub          t4, s2, t2
                  sub          t4, s3, s1
                  add          s2, a0, s2
                  sub          a0, s3, t2
                  nop
                  add          s10, a3, s2
                  addi         t4, a0, -437
                  nop
                  auipc        s2, 214115
                  lui          t2, 467792
                  auipc        t2, 273211
                  add          t4, s1, a2
                  nop
                  sub          a0, a0, a5
                  addi         s10, s3, -565
                  nop
                  lui          s2, 499367
                  sub          s3, t2, t2
                  lui          a5, 838830
                  addi         s10, a2, -1545
                  auipc        t4, 204692
                  addi         s10, a5, 991 #end riscv_int_numeric_corner_stream_18
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s4, 0x0
                  li           gp, 0x5c451de9
                  li           tp, 0x80000000
                  li           s10, 0x80000000
                  li           a5, 0x0
                  li           a0, 0xffffffff
                  li           t3, 0xffffffff
                  li           s3, 0xffffffff
                  li           t1, 0x0
                  add          t4, a5, tp
                  addi         t4, tp, -1184
                  nop
                  add          a0, s3, s3
                  auipc        a0, 611579
                  lui          t4, 539377
                  auipc        s3, 70511
                  lui          s10, 39218
                  auipc        gp, 604199
                  lui          t3, 322140
                  auipc        s3, 281663
                  add          t1, t3, s4
                  auipc        gp, 908297
                  auipc        s3, 491118
                  add          t3, t4, s4 #end riscv_int_numeric_corner_stream_8
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s2, 0xffffffff
                  li           t0, 0x0
                  li           a6, 0x0
                  li           t6, 0xb3293db2
                  li           s3, 0xffffffff
                  li           a3, 0x80000000
                  li           s8, 0x481fd2b5
                  li           a7, 0xa5a77255
                  li           s4, 0xffffffff
                  nop
                  auipc        a6, 304028
                  auipc        s3, 753828
                  lui          s2, 262492
                  sub          a6, a7, s8
                  sub          a7, t0, t6
                  addi         s8, a6, -1826
                  addi         s3, a7, 42
                  auipc        t6, 382498
                  nop
                  nop
                  addi         s8, a0, 1029
                  nop
                  add          t0, a6, t0
                  lui          s2, 971455
                  auipc        s4, 419237
                  nop
                  sub          s8, s4, s3
                  addi         a3, t6, -1729
                  auipc        a0, 441345
                  sub          s8, a7, a7
                  addi         s4, a0, -91
                  addi         s4, t0, -570
                  auipc        s3, 1018683
                  sub          s3, a6, s3
                  auipc        t6, 294250
                  sub          a6, s3, a0
                  auipc        a0, 482077
                  nop #end riscv_int_numeric_corner_stream_1
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a7, 0x0
                  li           s5, 0x80000000
                  li           s2, 0xafd90a1
                  li           a4, 0x80000000
                  li           t2, 0xffffffff
                  li           s4, 0x0
                  li           s7, 0x0
                  li           a1, 0x80000000
                  li           s1, 0xffffffff
                  auipc        s7, 755926
                  auipc        s2, 448025
                  sub          s8, s5, s5
                  sub          s1, s4, s7
                  sub          s4, s5, s8
                  auipc        s7, 815509
                  nop
                  auipc        s1, 856563
                  sub          s1, s1, t2
                  add          s4, a7, a1
                  nop
                  lui          t2, 1021748
                  sub          s8, s1, a4
                  sub          s5, s4, a4
                  nop
                  addi         a7, a1, 1467 #end riscv_int_numeric_corner_stream_13
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s11, 0x80000000
                  li           s4, 0x80000000
                  li           s5, 0xffffffff
                  li           s8, 0xdb863f96
                  li           s7, 0x80000000
                  li           t4, 0xafd24dbd
                  li           a2, 0x80000000
                  li           s0, 0x0
                  li           s10, 0x80000000
                  sub          s0, a2, t4
                  sub          t4, s11, s5
                  sub          s7, s8, t6
                  addi         s8, s10, 597
                  lui          t6, 17333
                  add          s11, s11, t4
                  addi         t4, a2, -1904
                  lui          s4, 679544
                  nop
                  nop
                  add          t6, s8, s7
                  addi         t6, s8, 1755
                  nop
                  nop
                  sub          s4, s8, t6
                  addi         a2, s8, 410
                  auipc        s7, 732435
                  auipc        s10, 866382
                  lui          s4, 948289
                  nop
                  lui          s10, 1016302
                  addi         a2, s4, 1631
                  add          t6, s5, s7
                  add          a2, s4, a2
                  auipc        a2, 626898
                  nop #end riscv_int_numeric_corner_stream_19
                  sltu         a2, t3, s5
                  sltiu        t1, sp, 619
                  add          gp, t1, s8
                  and          s8, t0, a0
                  srli         a5, gp, 2
                  sub          s10, s0, s3
                  xori         t0, s5, 1162
                  and          a0, t4, s8
                  nop
                  xori         t2, s11, 2036
                  srl          a7, a4, s8
                  addi         tp, s1, -143
                  andi         s0, s2, -1620
                  xori         tp, a5, 61
                  xori         s8, s2, 1513
                  slt          s7, ra, a4
                  slli         s4, s3, 19
                  sra          t4, gp, t6
                  and          a2, a3, s9
                  add          s5, sp, t0
                  ori          s8, sp, 935
                  sll          s0, t5, a6
                  xori         t4, a1, -1985
                  lui          a2, 95123
                  xor          t2, s2, t2
                  srli         t3, s6, 18
                  slli         s1, s3, 5
                  xori         t2, t1, -1939
                  xor          ra, t0, t4
                  auipc        t1, 803733
                  sub          t0, s7, t1
                  or           t1, s3, a6
                  slti         a0, t0, 566
                  sll          t5, a6, a6
                  andi         zero, s5, 357
                  and          s10, a7, a6
                  addi         a1, sp, -182
                  sub          s2, a1, a5
                  sub          ra, t5, t3
                  andi         s3, a6, -1810
                  sll          s2, a7, a7
                  slt          a5, s10, gp
                  sltiu        s8, t2, -1258
                  sub          s3, s11, s9
                  addi         a3, t6, 934
                  sub          t5, a0, s2
                  sll          a5, s9, ra
                  nop
                  srl          a0, a2, t5
                  add          a7, t0, tp
                  and          s4, a7, t4
                  sra          s1, s7, a7
                  addi         t1, s4, 71
                  and          t1, t2, ra
                  addi         t4, s5, 468
                  nop
                  nop
                  sra          t4, s5, s8
                  slti         a4, s6, 1436
                  sra          s7, s4, s4
                  slli         t2, a7, 28
                  addi         t4, tp, -1204
                  srai         a7, s10, 29
                  andi         s5, s11, 1525
                  lui          t0, 713822
                  sll          s4, a3, s6
                  xor          s7, zero, s4
                  slt          a3, t5, t4
                  sra          s0, ra, s1
                  and          a2, t4, s6
                  sltu         s3, tp, s1
                  slti         s3, t4, 1136
                  lui          s5, 336199
                  sltu         s7, t4, s5
                  sub          s3, s10, a6
                  sub          s4, s1, s6
                  sub          a6, a1, sp
                  add          t3, a2, a1
                  auipc        t0, 539574
                  lui          s4, 268502
                  slti         tp, s9, 1747
                  srai         s3, a5, 7
                  sltu         s3, t4, t3
                  add          s3, a5, s5
                  addi         s1, s5, -1071
                  andi         s8, s1, -1629
                  andi         t5, t4, 191
                  sll          t2, a1, a1
                  or           s10, s10, sp
                  sra          s8, s5, s1
                  srl          t6, tp, s7
                  or           t6, a2, s11
                  nop
                  lui          a4, 272769
                  srli         s5, a1, 28
                  sltiu        s5, s2, -680
                  sll          t6, s1, ra
                  add          t6, zero, s0
                  auipc        s3, 47435
                  xor          a4, a7, s9
                  lui          t5, 557729
                  auipc        t1, 391141
                  srli         s11, s8, 25
                  lui          s2, 39715
                  lui          a3, 305206
                  and          s5, s2, zero
                  sub          a3, s8, zero
                  addi         zero, s0, 82
                  srl          a6, t2, a2
                  lui          a7, 345552
                  or           s5, s5, ra
                  addi         s1, s7, 1971
                  lui          a0, 346163
                  and          ra, s8, s3
                  sub          t0, t2, s4
                  srai         s0, s11, 23
                  ori          s0, ra, -1233
                  sub          t6, a1, a5
                  sub          s5, t5, t5
                  sll          a3, a1, sp
                  srl          t2, s10, s10
                  sltu         s7, zero, t2
                  sub          a0, a0, s0
                  auipc        s4, 937629
                  xor          s8, a5, a4
                  slli         a5, a4, 27
                  auipc        a5, 721520
                  xor          ra, s0, s11
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s4, 0x0
                  li           t0, 0x80000000
                  li           s2, 0x0
                  li           s11, 0x80000000
                  li           s10, 0x0
                  li           s1, 0x80000000
                  li           a2, 0xffffffff
                  li           t2, 0x80000000
                  li           a3, 0xffffffff
                  add          s2, a5, t2
                  auipc        t0, 135926
                  lui          a5, 1020895
                  sub          s4, a2, s10
                  lui          t0, 81955
                  nop
                  addi         a2, s2, -2036
                  add          t2, s11, s11
                  auipc        s11, 688302
                  add          s10, s10, a3
                  auipc        s4, 385973
                  addi         s11, t2, 2041
                  sub          s10, s11, s10
                  addi         s11, a3, -533
                  sub          t2, s1, a5
                  addi         a5, s1, -902
                  auipc        s10, 657860
                  nop
                  add          a3, s11, a3
                  nop
                  auipc        t2, 841564
                  addi         a3, s4, -2025
                  add          t0, a5, a2
                  nop
                  add          s2, a3, s2
                  auipc        s11, 209705 #end riscv_int_numeric_corner_stream_14
                  and          s7, s7, s11
                  xori         s3, t4, -1347
                  andi         a5, s2, 1016
                  or           a1, a7, s9
                  ori          a2, a2, -515
                  or           t2, t3, a7
                  andi         s10, s6, -779
                  srai         s10, t5, 3
                  ori          tp, tp, 1069
                  sub          s10, s1, ra
                  or           ra, tp, t5
                  sub          s11, a2, t5
                  auipc        s4, 975641
                  sltiu        s0, s10, 273
                  auipc        a6, 293437
                  and          s7, a0, t1
                  sra          s4, gp, a0
                  sltu         s11, a7, a0
                  srl          a5, s8, t6
                  andi         a4, sp, 1617
                  xori         s10, s8, 911
                  slt          tp, a4, s0
                  sltu         a6, gp, t0
                  slti         zero, s3, -1570
                  ori          t6, s11, -444
                  slli         s7, s1, 9
                  and          tp, a6, s8
                  srli         a0, s0, 15
                  srl          ra, s7, a1
                  sll          a5, s11, a1
                  sltu         a4, s7, a2
                  sra          gp, s3, t3
                  sll          t2, a4, zero
                  and          t1, s8, s3
                  auipc        s11, 124403
                  and          a3, a6, a0
                  sra          s10, ra, tp
                  sltu         t1, zero, a3
                  sub          a6, ra, s8
                  lui          s10, 547608
                  sub          zero, a6, a1
                  slt          a5, tp, t1
                  and          a4, s6, s0
                  srai         a5, s5, 7
                  sra          zero, a5, s2
                  or           t6, t2, zero
                  auipc        s4, 93788
                  sltu         s8, ra, t0
                  sub          s7, s10, a0
                  and          s11, t3, a1
                  or           a5, s8, zero
                  addi         zero, s7, 1740
                  slti         t1, s8, 1489
                  sltiu        a1, t5, -1311
                  sra          gp, s10, s11
                  slti         t0, a2, 383
                  sub          t3, s7, s6
                  xori         s1, a6, -1540
                  sra          s5, s9, t5
                  srli         a3, a1, 24
                  nop
                  sltu         s8, t1, a4
                  and          ra, s7, ra
                  or           s4, s5, s9
                  slti         s10, a5, 204
                  add          zero, a0, zero
                  add          gp, a3, s3
                  xor          s10, ra, a2
                  xor          a7, s1, gp
                  lui          t6, 401060
                  xori         t3, a4, -1316
                  auipc        a1, 779057
                  ori          t0, s2, 257
                  xori         a0, a5, -973
                  ori          t1, s9, 1095
                  sra          t5, s10, a7
                  xor          a2, t6, ra
                  xori         a0, a3, -873
                  slli         gp, s7, 31
                  slt          a6, a2, a1
                  sra          s7, tp, ra
                  or           s1, sp, a1
                  or           a3, t1, a0
                  auipc        s10, 21362
                  and          t6, s7, gp
                  slt          gp, ra, a4
                  slt          a6, a7, s7
                  lui          a3, 666654
                  sltiu        gp, gp, 887
                  or           a2, a0, s4
                  srl          s10, sp, s11
                  slt          a7, s8, s0
                  sltu         a6, t2, s6
                  ori          s1, gp, -957
                  lui          s1, 726193
                  lui          a0, 778996
                  sltu         s0, ra, s1
                  addi         a5, t1, 1909
                  xor          s7, s8, gp
                  add          gp, tp, s1
                  srl          t1, tp, s6
                  sub          t4, s9, s5
                  sra          t2, t2, s8
                  slli         t3, sp, 23
                  and          a5, t0, t2
                  andi         s10, zero, -1338
                  sub          t4, t0, a2
                  sltu         a5, s4, s7
                  ori          s8, zero, -333
                  nop
                  ori          t3, tp, -1075
                  slli         a6, a2, 14
                  xor          a2, s6, a3
                  auipc        s5, 921013
                  or           t5, s10, a1
                  auipc        t4, 892734
                  srl          gp, t3, s9
                  sub          s10, s6, t3
                  slli         s5, s11, 2
                  slli         a5, a7, 14
                  and          zero, t5, s3
                  sll          s0, s8, t0
                  or           s11, t6, zero
                  sltu         a2, s3, ra
                  addi         a1, t5, -766
                  slti         ra, t1, 776
                  srai         a3, s10, 10
                  slti         a4, s2, -425
                  nop
                  srli         a4, s5, 1
                  xor          a2, a4, zero
                  or           s0, s8, t3
                  ori          s2, t1, 803
                  nop
                  or           t2, t5, s10
                  nop
                  xori         zero, t4, -1182
                  srli         tp, t3, 17
                  xori         tp, a0, 519
                  srai         a1, a2, 0
                  slt          a6, a1, a2
                  xor          zero, s10, t5
                  xor          a0, s5, a4
                  sltiu        t3, sp, 1674
                  sll          a0, s10, ra
                  addi         s8, s2, 171
                  sub          t5, t0, s7
                  sub          t0, s7, s11
                  ori          s2, a5, -1952
                  srli         t4, t2, 23
                  xori         s10, s1, 167
                  ori          t3, s4, -1680
                  xori         a1, s5, 2019
                  lui          a2, 668426
                  sltu         s1, s4, s5
                  addi         s4, zero, -1762
                  andi         a4, t0, -866
                  xor          t0, a7, s10
                  sll          a2, s4, s7
                  or           s0, t3, a7
                  slti         a7, s7, -1634
                  sra          ra, tp, a4
                  sltiu        s1, s1, 635
                  andi         t2, tp, 1271
                  ori          s5, s5, -1880
                  andi         t5, a0, 1185
                  sltiu        a3, s1, -787
                  sltiu        gp, t6, 1065
                  sltu         s1, s8, s6
                  or           t0, t5, t3
                  srl          t3, tp, s8
                  slt          s11, t6, s2
                  xori         t0, a0, -1621
                  add          t4, a5, s5
                  or           t6, a0, ra
                  or           a1, tp, s9
                  sra          s7, t5, s11
                  sra          a3, sp, s0
                  sra          t3, t3, a0
                  srl          t0, s7, a2
                  sltu         s11, t6, s9
                  add          s5, a3, s4
                  addi         ra, s8, 327
                  sltiu        s2, s7, 1099
                  ori          t5, sp, 879
                  and          tp, s9, sp
                  srl          gp, a7, a1
                  and          a4, t5, t2
                  slti         t6, s1, -1279
                  srl          tp, a1, a7
                  sltiu        t5, a4, -1686
                  slt          t4, sp, s4
                  auipc        t3, 204318
                  nop
                  auipc        a1, 652626
                  slt          s4, t1, s3
                  sra          a4, sp, s9
                  slli         s8, s5, 30
                  and          t0, s11, s5
                  sltiu        s1, a5, -604
                  sltiu        a2, sp, 1964
                  sltu         gp, t6, s8
                  sub          s5, t1, t4
                  slli         t5, gp, 28
                  sll          s3, t4, a1
                  auipc        s4, 193234
                  sltu         t5, s5, s1
                  srli         a5, a6, 23
                  sra          a6, s2, t2
                  srli         s4, a4, 5
                  xor          a3, s8, a2
                  or           s1, a1, s10
                  srl          a0, a7, sp
                  xori         s8, s8, 1545
                  auipc        a1, 725683
                  sltu         s4, t5, a1
                  addi         gp, s3, -1137
                  slli         s0, gp, 17
                  add          a6, a7, s4
                  xor          a5, s0, t5
                  sub          s8, s8, a2
                  slt          t2, s1, s2
                  xor          a0, t5, a7
                  andi         t0, s2, 349
                  srl          t2, s3, ra
                  srl          s1, tp, s4
                  sra          s8, s2, t3
                  lui          ra, 5628
                  or           s10, t3, t5
                  sll          t3, a2, s3
                  srai         s3, s5, 13
                  xor          zero, a2, t5
                  xori         s5, a4, -1768
                  slli         t6, s7, 28
                  auipc        t3, 1036782
                  slli         s2, a1, 17
                  addi         zero, s5, -1669
                  srli         a1, t2, 22
                  ori          s0, s7, 1900
                  and          s2, t1, t3
                  slt          a1, a4, t4
                  sra          a2, s7, gp
                  andi         a1, a3, -956
                  and          s1, s11, t2
                  addi         a1, a3, 1589
                  sll          zero, t4, t0
                  slti         t3, t2, -840
                  and          t1, a4, s2
                  slti         s0, a4, -1386
                  slti         a4, t4, -994
                  and          s3, s11, a1
                  slti         s1, s8, -1084
                  sub          t1, t4, a0
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s4, 0x233f3e73
                  li           s0, 0xa1e6837f
                  li           ra, 0xffffffff
                  li           a5, 0x9c31646c
                  li           t1, 0x0
                  li           s2, 0xeb58d2cb
                  li           a4, 0xe9b71aba
                  li           s10, 0x80000000
                  li           t2, 0x0
                  nop
                  sub          s0, s0, t2
                  lui          t1, 948261
                  auipc        a5, 900806
                  auipc        t6, 780637
                  lui          s2, 298720
                  addi         a4, s0, -348
                  auipc        s4, 247764
                  sub          s2, s10, s10
                  nop
                  lui          a5, 647398
                  auipc        s4, 408407
                  add          a5, t6, t2
                  auipc        a5, 219639
                  auipc        s2, 932205
                  lui          s0, 930336
                  sub          t2, a4, s4
                  lui          s10, 769670
                  nop
                  auipc        t1, 266018
                  auipc        t6, 860519
                  nop
                  auipc        ra, 562673
                  lui          t6, 478067
                  nop
                  sub          a5, s0, s2
                  addi         t1, a5, -837 #end riscv_int_numeric_corner_stream_5
                  sltiu        s10, gp, 1843
                  sltiu        s0, tp, -698
                  srai         a6, s6, 6
                  and          t5, sp, s3
                  sll          t5, t0, a0
                  nop
                  sltu         ra, s4, s0
                  auipc        s11, 257699
                  sltiu        s3, a1, -1228
                  sltiu        s10, zero, 1734
                  or           t0, a2, a7
                  sll          a2, a1, s9
                  sub          s11, t1, a3
                  slt          a0, s1, s1
                  slti         t6, s7, -76
                  sra          s11, a2, a1
                  lui          t6, 834448
                  sll          a4, a4, a1
                  sltiu        s7, a3, 1636
                  nop
                  addi         s0, a6, 1897
                  lui          a0, 1023999
                  slti         ra, s3, 1525
                  slli         t1, a7, 29
                  auipc        t1, 741691
                  sub          a7, a2, a7
                  ori          s1, t5, 798
                  srai         zero, s5, 25
                  nop
                  srli         s0, tp, 3
                  ori          gp, s11, -1509
                  ori          zero, a3, -643
                  slt          zero, t2, sp
                  slti         s11, t0, -586
                  or           zero, t4, t1
                  andi         ra, a3, 88
                  add          a0, a0, t2
                  slli         s11, t6, 7
                  xori         s2, s10, -299
                  srli         s8, gp, 23
                  slti         s3, ra, 736
                  ori          a3, s11, 1894
                  xori         s1, ra, 1211
                  sra          a5, a7, s7
                  slli         t4, a5, 9
                  xori         t6, s8, 795
                  sra          s5, a0, a2
                  xor          tp, a4, a5
                  sltu         s3, a1, t1
                  slti         t3, s5, 1974
                  andi         s0, s11, -607
                  xor          s5, t4, a4
                  add          t3, s3, a5
                  addi         s11, t3, -1984
                  slt          a6, zero, s0
                  slli         t1, s0, 5
                  add          t5, s8, t0
                  and          t3, a3, a0
                  xor          s10, a5, s8
                  slli         t2, sp, 9
                  sltiu        t2, t2, -1005
                  or           a1, ra, t1
                  nop
                  srli         s4, a7, 20
                  sltu         t0, ra, s7
                  sub          t2, t4, s2
                  or           s7, gp, sp
                  add          a3, t3, t0
                  ori          s2, s7, 1875
                  and          s2, s11, s5
                  ori          ra, s0, 537
                  srli         s4, sp, 8
                  add          t3, a4, a6
                  ori          s0, s6, -875
                  and          s3, s7, s1
                  sll          t4, a3, t0
                  addi         t2, s4, -994
                  srl          t3, zero, t6
                  srl          a0, a4, s10
                  ori          a0, a0, 1764
                  ori          gp, s10, -1319
                  ori          t0, t0, -1140
                  sll          gp, t3, s8
                  addi         zero, tp, 355
                  srai         s4, s6, 27
                  nop
                  sub          s8, s5, s8
                  srli         a0, s11, 23
                  andi         s10, t1, 1698
                  srl          s0, t3, s3
                  sra          a3, a5, tp
                  slli         a1, s11, 15
                  sub          t5, a3, t6
                  sll          t5, t2, a6
                  nop
                  sub          t1, s8, a6
                  nop
                  addi         s5, ra, 1539
                  sltiu        t5, ra, 489
                  srl          s0, a2, tp
                  sltu         a1, sp, t3
                  xor          zero, ra, t6
                  and          ra, s1, a7
                  lui          s5, 344149
                  and          t1, s5, zero
                  or           t5, ra, t0
                  slli         a1, s4, 22
                  sra          s7, s2, t0
                  slt          a3, s2, a2
                  sll          a0, sp, s8
                  srli         s3, s5, 26
                  lui          s5, 13005
                  slt          t1, s6, s7
                  or           a4, zero, s10
                  slli         a3, gp, 15
                  addi         a2, a0, -658
                  srl          a0, a4, t5
                  nop
                  auipc        a0, 790551
                  add          t2, s6, t3
                  srl          a6, a2, s7
                  or           gp, t2, t4
                  addi         a6, s6, -291
                  slli         a0, s10, 30
                  srli         t0, s3, 30
                  ori          zero, a2, -698
                  slt          zero, t5, a7
                  sltu         gp, a7, s6
                  slti         a3, t4, -636
                  lui          s5, 968555
                  ori          t5, s2, -2025
                  slli         t1, t4, 19
                  and          a2, t1, t2
                  ori          t0, ra, -1928
                  addi         s8, gp, 682
                  lui          s0, 592950
                  sltu         t5, s5, a3
                  sub          s3, s7, s6
                  slti         s2, a7, 953
                  srai         a2, t1, 30
                  srai         s10, s6, 15
                  lui          t0, 857759
                  nop
                  xori         gp, s1, 1936
                  srl          s7, s3, t4
                  slli         tp, s2, 31
                  or           s1, t4, gp
                  srli         zero, a4, 29
                  sra          t0, zero, s8
                  ori          t6, t1, -1691
                  srl          s7, zero, a0
                  and          s4, t1, zero
                  and          a3, s10, s2
                  ori          s5, t0, 444
                  sltu         t4, sp, s6
                  slt          s2, s7, sp
                  add          a4, s0, a2
                  sub          a1, s10, zero
                  addi         gp, t0, 778
                  slt          gp, a6, tp
                  slli         t6, a1, 4
                  addi         gp, s10, -602
                  xor          s2, t0, gp
                  srli         gp, gp, 11
                  slli         t6, a0, 20
                  or           s5, a3, a6
                  or           a7, t6, a6
                  sub          s11, a1, a4
                  ori          s1, t0, -713
                  or           a5, t0, a7
                  srl          s4, a2, a3
                  sltu         s8, a0, a7
                  sll          s2, t3, s7
                  sltu         t5, s4, s1
                  srl          a1, s8, t5
                  ori          t3, a4, -1195
                  srl          a3, t2, s3
                  or           s4, s4, s3
                  slt          gp, a6, ra
                  sra          a0, s9, gp
                  nop
                  xori         a1, t1, 1321
                  slli         s8, s6, 8
                  xor          s7, a1, t6
                  sltu         t4, t1, gp
                  lui          gp, 199268
                  slli         a3, zero, 15
                  xor          s3, s7, s11
                  lui          s4, 80968
                  slti         a3, s8, 425
                  sltiu        a6, s10, -819
                  slt          ra, t0, gp
                  andi         zero, a2, -27
                  sll          s10, s10, t2
                  slli         t1, zero, 7
                  sltiu        s1, s8, -1767
                  slli         s10, s1, 21
                  lui          s10, 756723
                  nop
                  xori         t6, s0, -734
                  lui          a6, 144350
                  slti         tp, a4, -1874
                  slli         t4, a3, 26
                  slt          t0, s1, s3
                  sll          s4, gp, s1
                  srl          a5, s8, s1
                  srai         a5, t3, 18
                  slt          s7, s11, a3
                  sra          t5, a6, ra
                  slli         s2, a2, 3
                  andi         a3, a0, 34
                  or           s4, s6, t0
                  sltu         s0, t3, s4
                  slti         s1, s0, -754
                  andi         ra, t0, -1772
                  srl          a2, a4, t3
                  slt          a1, s9, s9
                  srl          t4, s0, t4
                  or           tp, a1, t6
                  addi         s8, t0, -805
                  sltu         s4, s11, s0
                  lui          a4, 204733
                  xor          t0, t0, s5
                  or           t2, gp, s4
                  nop
                  xor          ra, s0, s1
                  addi         t4, a4, -27
                  slti         s1, a2, 439
                  xor          t1, a1, t0
                  xori         ra, s8, 325
                  xori         s4, zero, -326
                  or           s10, s0, a4
                  lui          s2, 323081
                  ori          a4, a3, 487
                  srai         s8, tp, 21
                  auipc        t2, 844639
                  sra          a5, gp, t6
                  auipc        a4, 92813
                  lui          a0, 930566
                  xor          s8, a6, s2
                  lui          t2, 527162
                  addi         t1, s4, 17
                  sll          s3, a1, s2
                  slti         s5, s9, -1574
                  sra          s11, t1, zero
                  add          t5, s4, a7
                  srai         zero, a2, 23
                  addi         t2, s3, -1983
                  sra          gp, s11, tp
                  srai         a5, a4, 30
                  srl          zero, t2, s10
                  sltiu        zero, a7, 580
                  xor          t0, s7, s0
                  andi         a7, gp, 460
                  auipc        t3, 691159
                  sltu         zero, s1, s2
                  srli         t4, s1, 21
                  nop
                  srai         s3, t5, 9
                  addi         s4, gp, -1573
                  auipc        s0, 444290
                  sub          zero, s0, s1
                  xori         a2, s4, -606
                  nop
                  lui          tp, 415596
                  slt          a4, gp, t3
                  auipc        t3, 593731
                  slli         s8, s9, 15
                  sltu         t1, a0, a4
                  slt          s3, s4, t0
                  srli         t0, sp, 9
                  slti         a1, s2, -124
                  xor          a1, gp, a1
                  srai         s4, a2, 29
                  xor          a4, s8, s4
                  sra          a2, t3, s0
                  srli         s0, t6, 27
                  xor          a0, a0, a0
                  srai         a3, a4, 16
                  srli         t1, s9, 15
                  sub          s10, s2, a4
                  nop
                  lui          zero, 468640
                  and          s8, t0, t2
                  nop
                  and          s7, a1, s10
                  sra          s10, zero, a1
                  and          t0, t6, a7
                  nop
                  srl          a4, s8, sp
                  and          a4, s3, zero
                  sltiu        t5, gp, 642
                  slti         t3, t6, 1641
                  slli         t1, t4, 31
                  srli         a3, t5, 25
                  or           a0, s6, s1
                  sub          a6, s1, t6
                  slli         s5, s3, 23
                  sltiu        a5, s4, 1084
                  or           s7, a2, a1
                  xor          tp, t5, s2
                  ori          s0, s9, -1766
                  addi         t0, t1, -1195
                  andi         s1, ra, 652
                  andi         a3, a2, -179
                  sltiu        t0, t0, -1323
                  and          gp, t0, s4
                  nop
                  slli         a5, t4, 15
                  sll          s11, a6, s11
                  sub          a2, a3, s4
                  auipc        s7, 809722
                  sub          t5, s3, tp
                  xori         t2, t0, -492
                  sltiu        s2, a0, -627
                  sltiu        s1, s6, -23
                  slti         s8, s5, -765
                  sra          s0, a4, t1
                  slt          a5, t0, s2
                  sra          a7, gp, t6
                  slt          s4, a1, a7
                  and          a0, s1, s9
                  andi         s4, s10, 363
                  auipc        a3, 518523
                  srl          a1, a2, s1
                  srl          t0, tp, tp
                  sltu         s7, a1, s4
                  add          a6, s3, s4
                  sra          a1, a5, t4
                  srl          a0, s1, t0
                  slli         t2, a0, 16
                  xor          s10, zero, s7
                  sltu         a6, zero, t5
                  xori         s11, a1, -937
                  sub          s1, zero, s11
                  lui          t5, 785102
                  xor          a5, s4, t2
                  srl          s4, s7, t4
                  addi         a7, s2, -591
                  sub          t5, a4, s6
                  and          gp, s2, s10
                  sltu         a0, s8, t1
                  add          s2, a5, s10
                  slli         t4, t3, 5
                  sub          t0, t0, sp
                  and          s5, s3, s1
                  sltu         s10, gp, a7
                  srai         a6, t6, 6
                  srli         s1, s7, 3
                  sltiu        gp, s6, -1193
                  auipc        gp, 370508
                  srli         s3, t2, 27
                  sltu         s11, t6, s10
                  nop
                  or           s4, a3, t2
                  sltu         s8, a6, a7
                  sltiu        a1, sp, -254
                  lui          t4, 926092
                  auipc        s3, 169886
                  sub          a3, a4, t0
                  srli         s2, a7, 26
                  addi         a7, s6, -1028
                  ori          s7, gp, 1013
                  xor          t3, s7, a2
                  sltu         a2, a3, a0
                  sll          a4, a7, s9
                  sll          s8, s6, a6
                  sub          s2, a7, s7
                  sltiu        a2, t4, 1493
                  or           t4, t4, s2
                  srl          s2, a3, gp
                  or           s7, s0, tp
                  addi         s8, a5, 1236
                  sltiu        a6, a0, -1772
                  auipc        t6, 325660
                  xori         s2, t2, 1408
                  addi         s3, t5, -34
                  and          t6, t0, s7
                  and          a6, tp, t0
                  sltiu        t4, a7, -1723
                  ori          a6, s3, 1662
                  xor          t6, a5, t6
                  sub          a7, zero, a7
                  srli         a5, a2, 21
                  xori         t2, t3, -527
                  addi         t0, s0, 1021
                  slt          s5, s9, a0
                  xor          t3, t1, a4
                  andi         a3, a1, 1577
                  nop
                  ori          ra, s5, -1524
                  sra          a3, s6, ra
                  auipc        zero, 368541
                  slli         s4, s5, 31
                  srl          s10, t4, a3
                  and          s7, zero, s3
                  lui          zero, 109506
                  sltu         tp, a3, a3
                  sltu         t0, s3, a2
                  slli         a2, s7, 8
                  slt          t2, zero, s6
                  srai         a0, a6, 22
                  ori          t5, a4, 1089
                  sub          tp, gp, sp
                  srai         a4, s5, 6
                  slti         s8, s0, -1704
                  auipc        a2, 221043
                  nop
                  addi         a3, a6, -1954
                  xor          s3, t1, a6
                  slt          gp, tp, s4
                  srai         s5, s2, 6
                  addi         gp, a7, 460
                  sll          t5, s6, gp
                  and          s1, a7, t6
                  srl          a2, a2, t6
                  sll          a5, s10, s10
                  addi         a0, s5, -392
                  sra          t3, t3, gp
                  and          s2, a5, s6
                  or           s11, t4, ra
                  nop
                  sll          gp, a0, s4
                  xori         a2, tp, -1659
                  srai         a6, t0, 2
                  sltu         a3, s7, t2
                  lui          a7, 144219
                  slt          s4, s4, s1
                  lui          s5, 185852
                  and          a2, a1, s8
                  andi         s8, s3, -38
                  lui          t3, 624997
                  xor          s1, tp, a5
                  nop
                  xor          t0, gp, s7
                  auipc        s0, 146418
                  nop
                  add          s0, ra, t0
                  sltiu        t6, s8, 932
                  add          s3, t5, t2
                  sra          t5, t3, s0
                  nop
                  xori         t0, s2, 620
                  nop
                  sra          a5, s2, t6
                  slti         a4, s1, 1037
                  and          s5, s1, a5
                  xor          ra, s1, s5
                  xor          t4, a2, s6
                  sra          t3, s5, zero
                  and          a1, t3, s6
                  ori          t6, tp, -883
                  andi         a6, s8, -603
                  srl          gp, s7, s5
                  and          s0, t4, s1
                  and          s11, s5, s10
                  srli         t1, t3, 12
                  add          s3, s5, a3
                  sub          t4, a6, a7
                  srl          a6, ra, s5
                  srli         s7, t5, 21
                  srli         a6, s4, 8
                  slti         s5, t2, 301
                  xori         t2, t1, -1667
                  sltiu        t3, a2, 1623
                  add          s2, s3, s2
                  srai         a5, a0, 16
                  lui          a5, 44768
                  srl          s2, gp, a6
                  slli         tp, a6, 16
                  slt          t5, s0, gp
                  srli         t4, s0, 19
                  slti         a6, s1, -729
                  nop
                  or           s7, a4, t4
                  sra          t6, ra, s6
                  nop
                  sll          s5, s0, tp
                  sub          gp, s11, a3
                  slli         s7, sp, 13
                  lui          t6, 839707
                  sltiu        t6, t3, 192
                  slti         a7, a1, 1723
                  auipc        t0, 93799
                  slt          t3, s3, zero
                  or           gp, a5, a4
                  sub          a3, a3, s10
                  srl          a6, s5, t0
                  sltiu        a5, a6, 758
                  auipc        ra, 1006652
                  sltiu        s7, ra, -251
                  ori          a3, s11, 1641
                  slti         t4, sp, 1029
                  slli         gp, a5, 23
                  sra          s0, tp, a7
                  xor          tp, s9, a7
                  auipc        a3, 1034066
                  and          ra, s1, a1
                  sltiu        gp, t3, 1241
                  andi         a1, gp, -1780
                  addi         t6, a4, 31
                  and          s0, a3, a2
                  slt          s4, a7, s6
                  slli         t0, s7, 25
                  slli         ra, s1, 17
                  ori          t5, a4, 1361
                  srl          gp, s5, s8
                  andi         tp, s1, 1201
                  srai         s4, ra, 17
                  srl          a1, s4, t1
                  add          t4, t0, gp
                  slli         s7, tp, 31
                  xori         s10, s5, -1031
                  sll          t5, zero, t5
                  andi         s7, sp, 54
                  sll          s5, a7, s6
                  sll          gp, t6, a4
                  slti         s3, t1, -1426
                  slli         a1, a4, 26
                  sub          a6, s1, s7
                  sll          s0, s11, s0
                  andi         a5, t3, 830
                  ori          t0, t2, -632
                  slli         a1, a2, 6
                  xori         t0, t5, 1638
                  ori          a4, s2, 1717
                  lui          s4, 258754
                  lui          a2, 297237
                  srli         s0, t1, 20
                  addi         t2, t4, -1024
                  and          s3, t0, a4
                  xor          t5, t5, s8
                  slti         s11, a5, 1167
                  sll          s10, a2, zero
                  or           s3, ra, t0
                  addi         s5, tp, -2016
                  nop
                  and          ra, s3, t6
                  auipc        s3, 350210
                  slti         a1, s7, 936
                  sltu         t6, a2, a1
                  and          t0, s6, s5
                  auipc        t3, 66929
                  andi         t2, s8, 1172
                  xor          a7, tp, t5
                  addi         t3, t3, 1634
                  andi         a5, a1, 1222
                  nop
                  and          s2, t2, s5
                  slti         t6, s6, -583
                  andi         t6, s8, 1868
                  ori          t4, s3, 1653
                  sltu         s1, s5, t4
                  sra          zero, s7, s2
                  sltu         a0, a5, t2
                  sra          s7, zero, t2
                  sra          t1, a5, a3
                  lui          a4, 925801
                  and          s7, gp, a2
                  nop
                  andi         s2, a5, 1422
                  slti         t5, s8, 702
                  slli         tp, a7, 11
                  addi         t6, a3, -848
                  sub          gp, a0, t2
                  xor          s11, zero, s0
                  xor          tp, t3, a4
                  ori          t0, tp, 1115
                  sub          s5, t4, t6
                  sltiu        a7, t3, -1994
                  slti         t6, s10, -1535
                  and          t2, t5, s11
                  slt          s10, sp, t4
                  andi         a5, a2, 1730
                  slt          t6, s7, s3
                  andi         a7, s10, 253
                  srli         t6, ra, 1
                  xori         s4, gp, 1307
                  srli         s10, t6, 31
                  or           s2, s10, s2
                  lui          s4, 756321
                  andi         a2, t1, 23
                  slti         a5, s3, -339
                  and          t2, a1, s11
                  sub          s3, a4, s1
                  ori          s0, gp, 1587
                  and          ra, a7, t6
                  sltiu        a7, a4, 1373
                  xori         s1, t2, -1974
                  srl          s11, s6, tp
                  srai         s5, a5, 25
                  lui          gp, 71951
                  andi         s1, s10, -289
                  srli         s3, s4, 8
                  or           s5, a3, t0
                  xor          a3, t2, s4
                  sltiu        s0, t2, 565
                  sll          s5, s1, a0
                  xor          a0, s1, t4
                  xori         a4, t2, -964
                  auipc        a0, 86550
                  nop
                  slt          t1, t4, s9
                  sra          a4, s8, s7
                  addi         s4, tp, 1310
                  slt          s7, a2, zero
                  sll          t2, a4, t2
                  srai         t2, t0, 9
                  addi         a7, a0, 902
                  slt          s3, s1, t3
                  xor          t0, a7, s11
                  srli         t1, s11, 12
                  sub          a1, t4, s6
                  auipc        s11, 478386
                  andi         a2, s10, -1132
                  lui          s2, 633124
                  sra          t4, s5, sp
                  add          t2, s9, a5
                  and          t3, s0, t5
                  add          s8, a2, s11
                  lui          s10, 843995
                  lui          t5, 177636
                  ori          s2, zero, 824
                  or           tp, s11, t6
                  srli         s10, s11, 24
                  sra          s3, tp, t1
                  or           a6, a4, s3
                  sll          ra, t4, t2
                  andi         s3, s6, -1571
                  ori          s2, a1, 1833
                  ori          a0, s1, 1990
                  srl          t1, a3, a4
                  sra          s11, s11, t0
                  sub          s7, ra, gp
                  sltu         s10, tp, zero
                  sra          s7, s3, s0
                  or           t3, s9, a7
                  slt          a6, t6, ra
                  srli         t6, s6, 0
                  sub          gp, t1, s0
                  sll          t6, s2, tp
                  sltu         s7, t0, tp
                  xori         zero, a3, 1980
                  sra          s8, tp, s7
                  slt          s11, gp, t6
                  slti         a0, ra, 462
                  srl          s3, s2, s6
                  lui          a7, 329947
                  nop
                  srli         a6, s10, 13
                  ori          s0, a5, -43
                  nop
                  or           zero, s5, s6
                  or           t2, a6, sp
                  nop
                  sltu         a2, s5, s5
                  and          s5, s8, zero
                  sltu         a1, a1, s7
                  srli         s0, a1, 12
                  sub          a1, t2, t2
                  li           s10, 0x95a13058 #start riscv_int_numeric_corner_stream_6
                  li           s4, 0x0
                  li           t5, 0xffffffff
                  li           t3, 0x5693d724
                  li           s3, 0x0
                  li           s7, 0x0
                  li           a1, 0x0
                  li           gp, 0x0
                  li           tp, 0x36838d59
                  li           ra, 0x0
                  addi         tp, gp, -1587
                  auipc        s7, 775495
                  lui          gp, 992294
                  sub          s4, a1, t5
                  nop
                  nop
                  lui          a1, 634316
                  sub          t3, tp, s7
                  add          ra, tp, s10
                  addi         s10, a1, 1066
                  addi         ra, a1, 1025
                  add          tp, ra, tp
                  nop
                  auipc        s10, 717895
                  add          a1, s3, a1
                  auipc        s4, 1014669
                  add          s4, a1, s4
                  sub          t5, a1, a1
                  add          s4, gp, ra
                  lui          s4, 144771
                  addi         t3, s7, 495
                  sub          a1, gp, tp
                  auipc        ra, 539644 #end riscv_int_numeric_corner_stream_6
                  sltu         s1, ra, t6
                  sltu         ra, t6, ra
                  and          ra, s0, s6
                  slti         s1, sp, -1923
                  srai         s11, s1, 5
                  xori         s0, s7, -434
                  slti         tp, ra, -343
                  sll          t6, s8, s2
                  sltiu        s10, s9, -269
                  and          gp, s1, t2
                  lui          gp, 48238
                  addi         a0, a2, 1559
                  srai         t3, a6, 18
                  slt          a1, sp, s9
                  and          s2, tp, a0
                  sll          t0, t0, t2
                  and          a4, s6, s2
                  addi         a5, zero, -293
                  srai         s7, t1, 0
                  add          gp, a1, s6
                  ori          a7, t6, 1762
                  auipc        ra, 965273
                  addi         s1, s4, -1996
                  srli         t4, s2, 22
                  slli         a2, sp, 0
                  slt          s8, ra, a0
                  add          zero, s0, s1
                  ori          s2, t2, 1706
                  nop
                  slt          ra, s5, t0
                  lui          ra, 464539
                  slli         t3, t2, 28
                  xori         a3, s3, -1960
                  sub          gp, gp, s11
                  ori          a1, tp, 862
                  and          s8, t1, a0
                  lui          a6, 667463
                  sltu         s8, tp, s9
                  andi         s7, a1, -1265
                  or           t1, ra, t3
                  addi         a7, tp, -1226
                  nop
                  or           s7, s11, t5
                  auipc        a7, 835303
                  sra          zero, t3, s11
                  ori          a1, s2, -132
                  nop
                  andi         t3, ra, 997
                  or           ra, s7, s11
                  nop
                  ori          t3, a2, -480
                  sll          s8, s3, s3
                  srli         a5, sp, 18
                  sra          a0, s4, s5
                  sll          s2, t3, tp
                  slti         s5, a0, 1837
                  auipc        s8, 384379
                  sll          s8, s2, a6
                  xor          s5, t5, s9
                  srl          s8, s3, s8
                  auipc        s7, 79390
                  auipc        t2, 63321
                  srli         s1, s9, 20
                  xor          zero, t0, sp
                  sll          gp, a7, s5
                  sub          t1, s9, s1
                  auipc        s0, 458017
                  auipc        s11, 963614
                  or           s3, s8, t2
                  and          s2, tp, a2
                  addi         a2, s7, 600
                  srai         t4, a2, 21
                  srli         tp, s8, 5
                  sll          a0, s2, s2
                  addi         a6, t5, -573
                  nop
                  slt          t4, zero, s9
                  xori         t5, t3, 887
                  auipc        s0, 995574
                  add          a5, t1, t2
                  slti         tp, tp, 1703
                  sltu         s7, s2, a1
                  slli         s1, a7, 31
                  xor          t3, s7, s5
                  xor          t3, t0, a1
                  nop
                  addi         t5, sp, -1767
                  slt          zero, t5, ra
                  lui          s8, 864571
                  xor          t0, s3, s3
                  lui          ra, 277215
                  auipc        t1, 280913
                  sub          t1, t4, ra
                  ori          s4, a6, -955
                  auipc        ra, 844877
                  slti         s5, t2, 1433
                  sub          a3, s3, s8
                  xori         s4, a1, 1636
                  sub          a3, t5, s6
                  ori          t1, t1, -354
                  andi         a1, t6, 1025
                  slt          a7, t0, a2
                  srl          a0, a5, s1
                  and          ra, gp, s3
                  slti         zero, a6, 271
                  slti         a2, t4, -1005
                  andi         gp, s6, -100
                  sltiu        t3, a6, 333
                  sub          t2, t0, t6
                  auipc        a1, 754514
                  srai         a4, a7, 0
                  srl          t4, ra, s0
                  slt          s4, t2, s0
                  add          t3, a2, a2
                  sra          a6, t0, s1
                  sll          s7, t4, ra
                  srai         a2, s7, 20
                  nop
                  ori          tp, t0, -1193
                  sra          s1, s7, tp
                  slti         t2, s1, 1351
                  or           a1, s5, t4
                  slli         s10, ra, 22
                  xori         a3, a0, 419
                  andi         t1, a0, -1662
                  sltu         s10, a5, a2
                  auipc        ra, 120508
                  slti         s3, a0, -282
                  srai         t0, t1, 1
                  sub          t0, zero, a7
                  sll          a1, s0, a0
                  or           s1, tp, s3
                  or           s10, tp, a3
                  nop
                  auipc        s3, 460180
                  and          s11, a2, s7
                  srli         a1, a4, 30
                  and          t1, t4, a3
                  sub          s11, t3, tp
                  andi         s0, tp, 2011
                  xori         t4, s3, -465
                  andi         s5, s2, -1164
                  srai         a0, s3, 23
                  sub          t3, a1, a2
                  sra          t1, t5, t1
                  srl          t5, s4, t6
                  ori          a4, a0, 728
                  sra          s11, s11, s1
                  srl          ra, a7, gp
                  xor          ra, tp, s6
                  sll          s10, s7, ra
                  addi         s11, a3, -1858
                  slli         t2, t0, 1
                  sll          tp, s5, s11
                  slti         t0, t3, 268
                  sra          t5, a0, gp
                  addi         s4, s6, -906
                  slti         a1, tp, -603
                  sub          a4, s0, s2
                  sltu         t2, zero, a0
                  slt          a7, s3, s3
                  srai         s3, s4, 23
                  ori          s1, a2, -1188
                  addi         s5, a0, 319
                  lui          s8, 169354
                  andi         a0, zero, -841
                  andi         s0, s6, 1368
                  lui          gp, 593982
                  slti         s0, s3, -231
                  ori          s2, a5, 1451
                  sll          tp, s5, s6
                  ori          a6, s5, 1463
                  srli         a7, tp, 1
                  slli         t4, a3, 24
                  slli         s4, s9, 21
                  slt          a1, a6, t4
                  slt          a2, tp, t6
                  nop
                  sll          a1, s11, s10
                  sra          t2, t3, t1
                  ori          t4, a0, 828
                  xori         s3, s9, -1246
                  slli         s5, a5, 15
                  auipc        a4, 484089
                  slli         a3, s4, 4
                  sra          gp, a3, ra
                  sltiu        a2, gp, 328
                  srai         a5, a7, 6
                  add          gp, a3, a1
                  sra          s1, a5, s1
                  sltiu        a4, t3, 608
                  auipc        s1, 1041022
                  sra          gp, a0, a1
                  ori          a3, s1, -2016
                  lui          t6, 953899
                  srli         tp, s1, 12
                  ori          a0, s4, 643
                  andi         gp, t5, -210
                  slt          a2, s8, s0
                  srai         ra, s6, 10
                  and          t6, a4, a7
                  sll          s3, s7, t4
                  and          s0, zero, s4
                  addi         s11, tp, -183
                  and          t0, s5, a2
                  auipc        a5, 631684
                  srai         t1, a5, 1
                  sltu         s11, s3, t4
                  lui          t2, 217233
                  xori         a4, s7, -63
                  add          s7, s0, a5
                  sltu         t4, s2, s7
                  sra          s8, s1, s11
                  or           a3, t4, s4
                  srai         a0, t6, 26
                  xor          ra, s2, a6
                  lui          a0, 552156
                  srai         t0, t4, 9
                  lui          s10, 646693
                  sltiu        t0, s4, -1160
                  xor          a7, t3, a7
                  xor          a2, tp, a1
                  sub          s8, s2, s7
                  auipc        a4, 231571
                  addi         ra, a6, -1834
                  add          s2, a5, s2
                  sltu         a7, a2, s7
                  and          t1, ra, s7
                  sra          a6, tp, s0
                  srl          t2, gp, a6
                  slli         ra, a6, 21
                  slli         t6, t2, 15
                  xori         zero, zero, 418
                  srl          s8, a1, t3
                  slt          s3, s4, sp
                  sra          s11, a7, s4
                  add          s11, t6, t1
                  lui          s10, 346603
                  srli         gp, zero, 8
                  srai         ra, t6, 0
                  andi         a5, t5, 969
                  auipc        a0, 431131
                  addi         t5, ra, -1856
                  sltiu        s5, sp, -1716
                  xor          t6, s2, s8
                  sra          t1, s8, a5
                  nop
                  sub          t4, t5, t5
                  srai         a4, a3, 30
                  sra          t3, t4, s9
                  slli         s0, s1, 7
                  slli         s10, s2, 16
                  nop
                  nop
                  and          a6, a1, gp
                  add          a0, t5, t3
                  srl          zero, s10, tp
                  srli         s8, s9, 21
                  srai         t6, t5, 15
                  xor          t4, a4, t5
                  auipc        t0, 812619
                  slti         s4, s2, -1782
                  srli         s4, s11, 7
                  or           a0, t5, sp
                  lui          a1, 1034970
                  lui          s8, 224485
                  lui          t4, 335625
                  auipc        t5, 580223
                  srl          a5, a5, s4
                  sll          a1, s10, s7
                  sltu         a2, a7, a4
                  add          a3, a7, t5
                  sltiu        a2, s8, -1535
                  slli         a0, s5, 6
                  sra          s0, t0, a1
                  srai         a0, s3, 26
                  auipc        s7, 334807
                  slti         s5, s7, 307
                  andi         a4, t5, -769
                  sll          s1, s10, t5
                  add          zero, s6, tp
                  srli         t2, t5, 14
                  slli         s7, a5, 13
                  andi         a3, ra, -1119
                  slti         s5, s10, 337
                  and          a2, s7, t3
                  and          t1, s6, s2
                  lui          a6, 142266
                  lui          s3, 1010720
                  sll          tp, ra, gp
                  ori          s0, t0, 1904
                  srai         t2, ra, 5
                  add          s11, s6, zero
                  lui          a7, 696793
                  srli         a5, a2, 27
                  addi         t5, s8, 1971
                  ori          zero, s4, 522
                  sltiu        s7, s0, 1968
                  slti         a7, a2, -691
                  srli         ra, s1, 6
                  nop
                  slt          ra, gp, a0
                  sltiu        s8, sp, -1419
                  srl          s8, s1, s2
                  auipc        t6, 797124
                  sltu         s4, a2, a0
                  slli         zero, s6, 21
                  ori          s7, t4, -776
                  lui          a7, 941086
                  or           s4, s5, s1
                  sra          gp, t2, s2
                  sub          tp, tp, s6
                  addi         s4, a5, -1806
                  sltiu        a6, s1, 1039
                  ori          a6, s11, 1126
                  srli         a7, a6, 11
                  add          s0, tp, s2
                  srli         s7, a4, 27
                  ori          t5, s11, -1878
                  sub          a3, a3, ra
                  sltiu        s5, t0, 1225
                  srai         s8, t0, 1
                  ori          a7, gp, -888
                  nop
                  srli         a7, s6, 19
                  sll          a7, s1, t4
                  or           s2, zero, t3
                  slti         s1, s8, 757
                  srl          a7, a4, s3
                  slt          a0, a2, ra
                  slli         t6, zero, 24
                  sll          t1, a6, t4
                  andi         t2, t0, 251
                  sltu         a6, a0, s3
                  sll          s8, s11, s7
                  slt          s11, t1, s8
                  lui          zero, 330843
                  slt          t3, tp, a1
                  srli         a5, a6, 17
                  auipc        a7, 687477
                  xor          a7, s5, a3
                  sltu         zero, s11, s2
                  xor          s5, t5, a5
                  slti         a1, a3, 1121
                  sub          t2, s8, s1
                  nop
                  sra          s11, t5, s1
                  xor          s11, a4, s11
                  xor          t4, ra, t0
                  srl          a4, a3, s10
                  nop
                  slti         t2, s5, -609
                  addi         s5, a0, 609
                  sra          a4, s1, s0
                  auipc        t5, 2727
                  lui          s10, 234262
                  srli         s3, a2, 3
                  srl          t0, a2, t4
                  slti         s2, s6, -703
                  nop
                  or           tp, a1, s8
                  slli         a7, s6, 29
                  sll          a5, tp, t1
                  sltu         a1, s8, s3
                  and          s2, s0, a2
                  addi         s1, s11, -71
                  slti         zero, zero, -1333
                  ori          tp, s4, 1064
                  addi         a2, t1, -1456
                  sub          t5, t6, ra
                  srl          t1, s2, sp
                  nop
                  lui          t6, 514700
                  slti         s0, t1, -396
                  xori         a1, s1, -1589
                  and          t1, s11, s5
                  srl          tp, t1, a1
                  sltiu        a7, s4, 1077
                  addi         s1, s8, -637
                  andi         s8, s4, -1339
                  ori          s10, t1, 1062
                  lui          s4, 970141
                  sltiu        t2, t5, -1141
                  srl          a2, s5, s10
                  sll          s8, s10, s11
                  sll          t2, s7, s2
                  sra          a7, a7, s6
                  andi         t4, t1, -1033
                  sltu         a4, gp, ra
                  ori          t4, s4, 659
                  srli         s8, a6, 30
                  andi         ra, s0, -155
                  andi         a3, a6, 596
                  srai         a4, gp, 13
                  xor          a0, t0, s11
                  and          tp, s4, a6
                  and          tp, s4, s11
                  addi         gp, s3, -1558
                  andi         t0, t0, 2037
                  nop
                  sub          a2, a6, a1
                  xor          s5, a5, tp
                  slli         a6, a1, 10
                  ori          t4, t1, 1774
                  slt          a3, t3, s1
                  xor          s0, s0, s9
                  sra          t3, s5, sp
                  auipc        s7, 641000
                  andi         s0, gp, -1604
                  andi         a7, s8, -724
                  or           gp, s1, s0
                  sltiu        s10, s4, -140
                  srai         t3, s2, 21
                  ori          s10, s4, -1895
                  slti         s4, s5, 1122
                  sll          a0, t3, s5
                  xor          a5, s4, s6
                  andi         ra, t3, 1492
                  or           t0, a7, gp
                  srl          a6, s4, sp
                  slti         t0, tp, 1836
                  sll          t0, a6, t5
                  ori          s8, s7, -1668
                  sltu         s0, t6, s3
                  ori          zero, a3, -891
                  nop
                  srai         s4, a0, 23
                  sltu         s5, t1, a1
                  add          a7, s10, s2
                  srl          a0, t2, t5
                  addi         a6, s10, 2027
                  sub          a5, s7, t5
                  ori          ra, a6, 694
                  slli         a6, a2, 5
                  auipc        s2, 380760
                  addi         s0, a3, 1467
                  srli         a5, t1, 26
                  xor          s2, t4, s6
                  lui          a5, 268286
                  slt          t3, s7, t5
                  slt          s8, t4, t2
                  sltu         t0, t0, a3
                  addi         s10, zero, 1749
                  srai         zero, a1, 12
                  and          tp, s0, a5
                  srai         a0, a0, 6
                  auipc        t2, 734622
                  nop
                  srl          t4, s2, s9
                  andi         a2, s3, 1615
                  sra          a6, s1, s5
                  and          t4, a1, t2
                  srai         a2, a2, 26
                  ori          t3, t2, -2024
                  sub          s3, t4, zero
                  sltu         s4, t1, s6
                  sll          s0, s9, s5
                  xor          s11, t2, a5
                  auipc        t3, 949546
                  nop
                  slli         s3, s2, 26
                  ori          t3, s2, -206
                  sltu         a6, a2, a2
                  sltu         a6, s4, t6
                  addi         s1, t4, 930
                  slli         a3, s2, 6
                  xori         zero, s3, 1813
                  andi         s10, ra, 660
                  sub          t2, s9, a4
                  add          tp, ra, a0
                  slt          a5, t4, s5
                  srai         t4, t0, 17
                  srl          a3, t6, t6
                  addi         s10, a3, -1106
                  sra          t0, ra, tp
                  or           a2, sp, s1
                  slti         a7, t0, 1095
                  addi         a4, s0, 1607
                  add          tp, a0, s1
                  srl          t6, a4, t1
                  and          t0, s4, t1
                  sltiu        a7, tp, -395
                  sltiu        s10, a6, -1667
                  add          a4, a7, t4
                  slli         a2, sp, 5
                  slti         s5, s7, -1174
                  slt          t6, s7, t4
                  addi         a1, a0, -584
                  sll          t5, s11, a2
                  andi         a7, t4, 2035
                  or           t0, a1, a3
                  lui          a6, 21665
                  slti         t4, tp, 1872
                  nop
                  or           s10, s3, sp
                  add          s0, s9, s7
                  lui          zero, 388424
                  andi         zero, s7, 881
                  sltu         t4, a0, gp
                  and          zero, t6, s10
                  slt          a7, a5, t5
                  srli         a5, s10, 21
                  srai         t5, tp, 22
                  addi         s11, t4, -523
                  srli         ra, a1, 25
                  nop
                  slli         t0, a7, 12
                  andi         gp, a0, 1217
                  sub          s11, a5, gp
                  or           a7, s7, t0
                  sub          t0, a4, a4
                  sltiu        s8, a0, -1510
                  slli         t6, a6, 7
                  sub          t0, t6, s0
                  xori         t6, t2, 1102
                  or           t1, gp, a0
                  nop
                  xori         a1, s3, 1468
                  srli         s0, s4, 2
                  slti         a4, s6, -1892
                  andi         s4, s6, 1089
                  sra          t4, t5, t1
                  lui          t6, 978012
                  sub          t0, t0, s1
                  add          a0, gp, s2
                  sra          tp, t5, gp
                  slli         a2, s1, 24
                  or           s2, s2, s10
                  sll          a5, t1, s4
                  srai         a4, a2, 15
                  and          s7, s11, s4
                  slti         a5, a3, 1229
                  srai         t2, t3, 1
                  and          s10, t3, s10
                  srl          a2, t3, t6
                  andi         a4, a3, -1025
                  slli         ra, sp, 13
                  lui          s3, 279016
                  sll          a6, t3, s10
                  nop
                  andi         t6, gp, -1372
                  addi         s1, tp, -564
                  auipc        t0, 443791
                  srl          s8, a1, tp
                  and          t2, a3, t4
                  sll          a1, t5, s4
                  slti         s0, s4, -1689
                  slt          a7, s0, a7
                  addi         a4, s0, 2043
                  auipc        a7, 788007
                  sra          a3, s1, a7
                  srli         zero, t2, 17
                  xori         t1, t3, -1597
                  sub          t6, tp, t1
                  nop
                  sub          a1, ra, a6
                  sll          a0, zero, a0
                  slli         s4, s2, 3
                  lui          s8, 823270
                  sra          s3, t6, t6
                  slt          s11, a3, s1
                  andi         t4, s6, -683
                  srl          t6, sp, t1
                  slli         s5, tp, 5
                  lui          gp, 120569
                  sll          gp, s8, gp
                  lui          a7, 138869
                  add          t3, s2, t1
                  sltu         t1, gp, gp
                  sll          s0, ra, s4
                  ori          a1, a5, 775
                  auipc        t6, 491532
                  slti         t0, t1, -1484
                  srai         t2, a3, 14
                  auipc        a1, 114910
                  ori          s7, s2, 753
                  andi         s0, a3, -1851
                  slt          a3, t3, a7
                  sra          s3, a6, s5
                  xori         a3, s11, -1163
                  sub          t2, a3, s11
                  srli         s3, s5, 11
                  addi         t1, a2, -1218
                  ori          s1, zero, 1824
                  ori          t5, s10, -1342
                  slli         a1, a3, 19
                  lui          s0, 187024
                  slti         t2, t5, -552
                  sll          s10, s5, s2
                  sub          s5, a0, a2
                  sra          s5, a6, a2
                  sll          s3, s1, a3
                  xor          a5, a2, t0
                  or           tp, zero, s1
                  auipc        a1, 168836
                  srl          a3, s4, s3
                  srai         s2, s3, 29
                  sltu         s3, a3, a4
                  lui          s11, 704762
                  slli         t4, gp, 3
                  sltiu        s5, s0, 1238
                  srli         a4, sp, 30
                  srl          s11, sp, t4
                  srli         t1, s11, 0
                  and          t5, s9, s8
                  or           t5, tp, t4
                  srli         s7, t5, 29
                  slli         t5, a3, 29
                  andi         a6, s8, -669
                  auipc        t0, 120765
                  srli         t5, a5, 24
                  ori          t0, a4, -1527
                  srli         s5, a0, 24
                  add          gp, a0, t4
                  sra          s11, t4, a3
                  sltiu        ra, t6, 1748
                  xori         s4, gp, 1746
                  sltu         a2, s10, s7
                  or           a7, s9, s10
                  add          s1, s7, a1
                  slti         tp, a7, 1789
                  slti         s1, s6, 1977
                  srai         a0, s6, 23
                  add          t5, a6, t2
                  sltiu        a1, s5, 749
                  slt          a0, s10, a1
                  srai         a4, a6, 5
                  srl          a4, t2, a7
                  nop
                  sub          s0, s9, a2
                  sltu         s5, s7, a4
                  andi         s0, s10, -483
                  srl          a6, tp, a2
                  auipc        gp, 651600
                  slli         zero, t6, 28
                  xor          t1, s11, s3
                  sll          s3, t0, s2
                  sltu         zero, tp, a1
                  sltu         a6, a7, t3
                  sll          s4, a1, s1
                  xor          a3, s7, s11
                  slti         zero, s7, 1217
                  sub          s8, a1, s0
                  lui          zero, 819803
                  srai         s2, s3, 23
                  andi         s5, sp, -1352
                  auipc        t6, 768944
                  ori          a5, s2, -712
                  srli         t2, a4, 7
                  ori          t2, a2, 126
                  sub          s4, a6, t1
                  srli         s11, t3, 28
                  sra          s4, a2, s5
                  andi         s8, a0, -933
                  slli         s10, a7, 6
                  and          zero, a5, t5
                  and          a2, sp, s8
                  add          a5, a6, zero
                  xori         t6, s10, -1706
                  sll          a5, a2, sp
                  slli         s11, s5, 15
                  add          t5, sp, t3
                  sra          s0, s3, zero
                  or           t2, s8, a6
                  sra          a3, s6, gp
                  addi         t1, a1, 1863
                  or           t2, s11, gp
                  srai         s2, zero, 29
                  sra          s11, gp, a7
                  xor          t6, a3, s10
                  srai         s10, tp, 12
                  slti         zero, s0, -1275
                  sll          gp, a3, s4
                  slti         s0, s6, 32
                  addi         t2, zero, -474
                  sltu         t5, s2, t2
                  slli         s4, a3, 20
                  srli         s7, s7, 8
                  sltiu        a4, s6, -1966
                  ori          s2, s7, -1783
                  sra          a1, tp, a2
                  xor          s2, t4, a1
                  slti         a5, t6, 579
                  xori         t0, s11, -1876
                  sub          t4, a4, s0
                  slli         a4, t1, 26
                  sll          s7, t2, a6
                  and          s2, a4, a0
                  sub          s5, t3, a5
                  auipc        s1, 844357
                  nop
                  slti         a4, t6, -2028
                  srai         gp, s2, 17
                  srl          t1, s6, t5
                  sltu         a6, sp, a3
                  add          s8, a6, t2
                  or           s4, s1, a4
                  srl          s10, a4, s8
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           a0, 0x83357c87
                  li           s7, 0x0
                  li           s5, 0x80000000
                  li           a2, 0xffffffff
                  li           s8, 0xffffffff
                  li           ra, 0xffffffff
                  li           a4, 0x80000000
                  li           t0, 0xffffffff
                  li           a5, 0x80000000
                  sub          a6, a2, a2
                  auipc        a4, 964565
                  nop
                  lui          a5, 335969
                  auipc        ra, 249323
                  add          a4, a5, a5
                  lui          a2, 848519
                  sub          ra, a4, a6
                  nop
                  sub          a5, a2, a2
                  addi         a5, ra, -806
                  lui          a4, 153932
                  auipc        s7, 661011
                  nop
                  add          ra, s8, a5
                  auipc        a6, 425336
                  addi         t0, s8, -1027
                  lui          a5, 377395
                  addi         s5, t0, 1156
                  addi         t0, t0, -400
                  addi         a6, s5, -1511
                  nop
                  auipc        ra, 1046436
                  addi         a2, s5, 1690 #end riscv_int_numeric_corner_stream_9
                  lui          zero, 998857
                  sltiu        s11, t3, 978
                  and          s4, a5, s1
                  sub          zero, s10, tp
                  add          a5, s7, t5
                  and          s11, a1, t5
                  srli         a0, s9, 18
                  or           s1, s4, t5
                  srli         gp, t6, 4
                  ori          s2, a1, 347
                  nop
                  ori          s11, t2, -470
                  xori         s4, s7, 471
                  nop
                  slt          gp, a4, s3
                  xori         s7, t3, -1235
                  slti         gp, gp, 1884
                  srl          s3, t4, s2
                  sll          a5, s5, s1
                  srli         ra, s7, 3
                  sltu         tp, a0, ra
                  or           tp, s5, t3
                  ori          s3, ra, -1085
                  xori         s2, s9, -88
                  slt          a2, t3, s7
                  lui          ra, 1021505
                  slt          s7, t0, t2
                  slt          a7, s7, a5
                  slt          a3, a5, a6
                  auipc        t2, 503947
                  add          a0, s6, a3
                  srai         t2, a1, 26
                  sll          ra, a7, s4
                  add          t1, t1, a1
                  xor          a1, tp, s9
                  auipc        s2, 301476
                  auipc        t5, 900039
                  xori         t0, s1, 317
                  srai         s1, s3, 12
                  lui          s8, 710658
                  or           t3, a4, s6
                  sltiu        t6, t5, 1923
                  srli         s2, t4, 7
                  slti         a2, a1, 1626
                  or           t4, s7, s7
                  sra          s7, tp, t6
                  lui          t2, 442232
                  or           gp, zero, t3
                  xor          s8, s3, a0
                  srl          t6, s7, gp
                  andi         a4, tp, 1931
                  slli         a6, sp, 10
                  addi         a2, s9, -774
                  sltu         s5, s9, s8
                  lui          s2, 594745
                  ori          s0, ra, -405
                  ori          s4, s1, -751
                  slli         s2, s9, 14
                  ori          tp, a0, -1689
                  sra          t3, a3, a0
                  add          tp, t2, s0
                  sub          t6, s6, a2
                  srli         gp, s1, 13
                  add          a2, t0, s2
                  slti         a4, s3, -1058
                  xori         t6, t2, -1864
                  srli         s1, t2, 7
                  ori          a7, s7, -1157
                  nop
                  srli         a3, a4, 13
                  slt          t5, s5, t6
                  or           s10, t4, s8
                  addi         s4, t5, -2031
                  addi         a0, a2, 1078
                  add          a7, t2, s8
                  sltu         s3, t6, t0
                  xori         tp, t1, -412
                  sltiu        t0, s8, -469
                  slli         t4, tp, 6
                  and          s10, t1, a6
                  slti         s2, tp, -1923
                  sltu         t5, t4, s6
                  xori         zero, sp, 693
                  srl          t0, sp, a4
                  nop
                  srl          a1, s0, a2
                  sltu         s4, t3, s4
                  nop
                  and          zero, zero, s2
                  slli         tp, a3, 11
                  srl          t2, a2, t5
                  srai         a1, s0, 23
                  sltiu        t0, a4, 1195
                  srai         t3, a2, 2
                  sll          ra, a3, a0
                  sll          t6, s10, t4
                  sltiu        t4, s4, 184
                  add          s11, t5, s7
                  addi         a6, t1, -1240
                  and          t0, s10, s2
                  sll          s10, s7, a6
                  addi         a5, s3, 323
                  or           t6, a1, t6
                  lui          a4, 858538
                  srai         a1, t5, 5
                  xori         s3, a7, 1514
                  slt          a6, a6, zero
                  sltiu        s5, s0, -717
                  and          tp, a6, s10
                  auipc        s3, 432482
                  srl          t3, s1, a6
                  sra          t6, t6, a4
                  slt          s7, s8, s0
                  addi         a2, s5, 855
                  sub          s5, s1, t1
                  andi         s1, s11, 1318
                  sltiu        s4, tp, -712
                  slti         a4, zero, 1748
                  sll          a7, a4, s0
                  slt          t4, t0, s1
                  lui          s2, 198820
                  srli         t3, t3, 30
                  lui          s4, 36033
                  add          t6, t3, s0
                  addi         zero, a5, -629
                  auipc        ra, 84720
                  and          t5, s8, s1
                  xori         s1, s9, 1069
                  auipc        s3, 527233
                  sltu         s0, s3, s10
                  addi         t6, a1, 1087
                  or           t1, s7, a3
                  sltiu        a4, s9, -490
                  sll          t3, s8, ra
                  add          a5, a2, gp
                  auipc        s3, 1001765
                  nop
                  andi         tp, a4, -1574
                  and          t0, t3, s10
                  add          ra, s7, a5
                  xor          zero, a7, s9
                  or           zero, a1, s3
                  and          gp, a1, t2
                  srai         a7, a1, 17
                  slli         gp, a6, 15
                  and          a1, a5, t6
                  slli         zero, s1, 10
                  lui          tp, 741186
                  ori          t3, s6, 1799
                  addi         a5, s4, -1463
                  auipc        t5, 961307
                  addi         a7, s8, 154
                  sra          zero, tp, a1
                  slt          a7, ra, ra
                  slli         gp, a2, 30
                  srai         t4, gp, 22
                  and          a3, s8, s11
                  xori         t4, gp, 1137
                  xor          t4, s0, s8
                  nop
                  slt          zero, t6, a5
                  lui          t3, 107342
                  sltiu        zero, s0, 1191
                  sltu         s8, a5, s5
                  and          s2, a5, a6
                  andi         t2, s7, -433
                  or           s0, sp, a7
                  xori         s7, t5, -1905
                  nop
                  sub          t4, t4, a0
                  or           s11, zero, tp
                  srl          a4, t2, s4
                  auipc        t4, 882891
                  slti         s3, t2, -1499
                  and          a2, t1, a2
                  xori         s7, s2, -1976
                  sll          s3, a1, t1
                  sll          s8, s2, s8
                  and          a2, a2, tp
                  srai         a4, t1, 0
                  sub          s8, t3, ra
                  xori         s0, s7, -1216
                  sra          gp, s4, s6
                  nop
                  lui          gp, 913860
                  slli         t2, s10, 3
                  sra          gp, ra, s2
                  srli         a4, zero, 10
                  addi         t0, zero, -1918
                  nop
                  srli         a4, s6, 30
                  sll          s4, a5, t4
                  and          a2, t5, t3
                  or           s7, s9, a6
                  and          a2, s3, sp
                  andi         a7, s9, 807
                  lui          a3, 673251
                  xori         t6, s5, -1001
                  add          s2, t5, t5
                  auipc        a7, 547003
                  lui          zero, 538615
                  nop
                  addi         t3, tp, 179
                  addi         tp, gp, 1468
                  sub          zero, s9, a7
                  slli         zero, a1, 28
                  srl          gp, s6, tp
                  xori         a7, t6, 1364
                  sltu         s1, s3, s7
                  srli         s5, tp, 30
                  sltiu        t6, t2, -1144
                  srl          a4, t4, s8
                  or           gp, s5, a6
                  srli         t0, s8, 23
                  slti         s7, t2, 668
                  addi         s1, a7, 1923
                  slti         s1, s7, -2036
                  srai         s4, a2, 8
                  sltiu        s4, a1, 285
                  sll          s5, s10, s9
                  and          s2, a5, a2
                  sub          zero, gp, zero
                  auipc        ra, 117529
                  slli         s5, a4, 30
                  slli         zero, tp, 8
                  sra          a6, a4, sp
                  auipc        a0, 715955
                  nop
                  srl          t1, zero, s8
                  sub          t5, s7, s6
                  and          a4, s8, sp
                  slt          a1, s3, t6
                  srai         a7, t6, 5
                  srl          t4, a2, a5
                  sltu         a2, s10, a4
                  lui          a6, 476118
                  sltiu        a0, a7, -1329
                  srli         s2, s7, 26
                  or           tp, s10, s10
                  addi         a5, s0, -549
                  slt          a7, ra, sp
                  srli         s0, t4, 31
                  ori          s0, s2, 1384
                  and          t2, s5, t5
                  sltiu        t5, s2, -57
                  slti         zero, t2, 922
                  slti         a7, t6, 959
                  ori          t4, a1, 115
                  lui          gp, 953090
                  srai         a1, gp, 24
                  nop
                  ori          a4, a4, 1947
                  sltiu        s3, t1, 868
                  slli         t4, t3, 19
                  addi         s8, t1, -964
                  andi         s4, a4, 1298
                  xori         s11, a0, -1266
                  srai         a6, s5, 17
                  srai         t2, s4, 13
                  srai         a3, t2, 8
                  srl          a2, s7, ra
                  or           t2, a5, gp
                  xor          t0, s3, t0
                  xor          a1, s6, s7
                  nop
                  lui          a6, 306605
                  sra          a0, s1, a1
                  or           t3, tp, s2
                  sub          s3, sp, s4
                  lui          s8, 989891
                  srai         s10, t1, 12
                  srai         a3, s9, 7
                  srli         s10, s3, 4
                  and          s1, a6, a2
                  sub          a7, t1, t0
                  sra          s8, a5, a5
                  slli         s11, s1, 13
                  and          a3, s2, t1
                  andi         t2, t2, -1347
                  or           t0, s11, t2
                  auipc        s10, 946291
                  slt          a4, s1, a0
                  slti         t0, a5, -1461
                  srai         a3, t2, 23
                  andi         a5, s3, -703
                  slt          a4, a5, t2
                  sltiu        t5, s7, -1412
                  srl          s5, sp, t0
                  srai         s2, a5, 15
                  xor          s2, s7, tp
                  slt          a1, a5, s7
                  srli         t2, t5, 20
                  slt          s11, a0, tp
                  lui          a4, 48281
                  xori         a0, s4, -244
                  xor          s8, a0, t2
                  nop
                  sra          s2, s8, t1
                  xor          a0, ra, a0
                  slt          t3, t3, s3
                  auipc        s5, 258480
                  sltu         zero, s8, s1
                  srl          s1, t3, s10
                  sll          s2, a7, s11
                  slti         a1, s6, 1473
                  xori         s8, s9, 1948
                  auipc        a5, 383781
                  addi         a1, s11, -1185
                  slti         a0, s11, -1351
                  sltiu        tp, sp, -1243
                  sll          t1, t0, s8
                  sub          a4, sp, ra
                  srl          zero, s6, a5
                  sltiu        t6, s0, -1258
                  ori          s7, a3, 2041
                  sra          s3, sp, s5
                  lui          s8, 751534
                  sub          tp, s9, s1
                  sra          s7, gp, s5
                  slt          t5, t3, s2
                  xor          t2, s7, t0
                  slt          s4, a2, a5
                  sltiu        s4, a4, -1762
                  andi         a3, zero, 679
                  sll          s7, t3, t4
                  and          t2, s7, gp
                  addi         a1, s1, 1966
                  add          t5, a0, s2
                  srl          gp, t4, s8
                  and          t2, zero, s5
                  andi         s5, t3, -1879
                  srl          t5, t6, t6
                  nop
                  auipc        t5, 960417
                  slli         s4, s9, 28
                  xori         s10, s4, 1839
                  slli         a2, s9, 6
                  and          s0, s4, zero
                  auipc        a5, 498509
                  ori          a6, s5, -113
                  addi         gp, a0, 471
                  add          s11, ra, s6
                  ori          s8, sp, 1608
                  and          t4, s2, a1
                  or           t1, tp, tp
                  sub          t0, s11, s10
                  add          s0, s1, tp
                  xor          s2, s5, a5
                  slli         t4, ra, 15
                  sub          a5, t3, s0
                  add          ra, t1, s5
                  and          a4, a6, a7
                  ori          a4, s7, -464
                  sra          s10, a0, a5
                  and          a0, a5, a4
                  add          t3, sp, s10
                  slli         a6, s2, 4
                  andi         t4, a3, 1871
                  srli         t1, t5, 25
                  srl          s10, tp, gp
                  add          a0, a7, t1
                  add          s7, s2, s9
                  and          tp, a3, s2
                  sltu         ra, zero, ra
                  srl          a3, s2, s5
                  slt          a1, t6, s4
                  auipc        s5, 631514
                  ori          a1, t2, -213
                  and          a5, s3, a1
                  slti         s1, zero, 43
                  addi         t6, s7, 1264
                  ori          a1, t0, -510
                  sub          t6, a2, a3
                  sltiu        a6, s1, 76
                  andi         s2, t0, 534
                  nop
                  sra          zero, a0, zero
                  slli         a1, gp, 31
                  xor          a0, zero, a3
                  srl          s5, s3, t6
                  add          zero, sp, a1
                  slt          s7, a4, a2
                  srl          s10, ra, s9
                  and          t2, a6, t2
                  and          a5, t1, s5
                  lui          a6, 497802
                  sra          t0, s7, sp
                  slli         t3, a2, 14
                  andi         s0, gp, -300
                  slt          a0, t4, a1
                  slli         t1, s9, 30
                  srli         s7, t3, 4
                  auipc        s10, 181816
                  lui          s0, 427080
                  ori          t3, a3, 1857
                  slti         a2, tp, 1094
                  sra          a0, s8, s6
                  sltiu        zero, s3, -1486
                  slli         s5, t1, 7
                  auipc        s0, 834209
                  andi         s8, s9, 995
                  sub          s7, a4, a4
                  and          s5, a7, s5
                  xori         s10, a4, -1579
                  xori         a3, s5, -819
                  srl          zero, a4, s11
                  add          zero, a7, s5
                  slti         gp, t5, 379
                  lui          a5, 1019733
                  sra          gp, sp, t3
                  xori         s7, a1, -1583
                  srli         s0, t1, 27
                  srl          t5, s1, a4
                  ori          t5, s9, -943
                  slli         gp, t5, 22
                  sltu         s8, s5, a1
                  lui          ra, 449714
                  slt          a0, s0, gp
                  xor          a4, a2, ra
                  lui          s0, 832990
                  andi         tp, s6, 927
                  and          ra, a6, t5
                  ori          s2, s1, 1853
                  sltu         a0, s0, s0
                  sll          t1, s3, a3
                  addi         t4, gp, 1361
                  ori          a4, ra, -250
                  sub          s1, a3, s8
                  slt          s3, a6, tp
                  xori         a0, tp, 1873
                  andi         s3, s8, -470
                  sra          s4, s1, s7
                  slt          a6, s11, a0
                  sll          a3, zero, t0
                  xori         t6, t4, 1785
                  sra          t3, a5, t3
                  slt          s3, t6, a7
                  auipc        s4, 274475
                  auipc        s8, 91928
                  or           t2, s1, s0
                  andi         a1, a3, -158
                  and          t6, s10, t3
                  andi         tp, gp, -75
                  sra          a1, a3, t1
                  addi         s1, a4, -663
                  sub          t2, t5, t5
                  sub          s5, t6, s6
                  nop
                  ori          t2, s7, 1939
                  xori         t4, gp, 820
                  xori         s2, ra, 781
                  nop
                  or           tp, a5, s1
                  or           t3, t0, t0
                  sll          t2, s9, s5
                  srai         s0, s2, 14
                  sub          zero, t5, s1
                  add          a0, s8, t2
                  srli         t1, t1, 28
                  or           gp, s1, s1
                  srai         a5, t6, 29
                  slt          s7, s4, s3
                  slli         a6, t3, 24
                  slt          s5, t1, t1
                  slti         s11, s6, 2025
                  xor          s10, s8, t6
                  slti         t0, s3, -431
                  sltu         gp, ra, gp
                  sra          t6, t4, t6
                  srl          ra, t0, s11
                  auipc        a0, 26591
                  srl          a1, s7, a6
                  and          a3, a4, s5
                  lui          s4, 742488
                  nop
                  sll          t3, t5, s4
                  srai         t1, s5, 2
                  sub          s2, t1, s8
                  add          s8, s7, s7
                  addi         s11, tp, -1277
                  srli         a0, s7, 23
                  srai         a0, t2, 9
                  sub          t0, tp, sp
                  srai         ra, a5, 15
                  and          s4, t4, s9
                  slti         a1, s0, -1093
                  and          a0, tp, t5
                  addi         t0, gp, -1479
                  auipc        a7, 829870
                  andi         a3, sp, -624
                  slli         t6, a4, 26
                  sltu         t3, ra, a0
                  addi         t3, t0, 444
                  sltiu        a3, a6, -915
                  or           a7, a5, a6
                  sltu         a5, t0, s7
                  xor          s2, s3, gp
                  auipc        t3, 79714
                  slt          t1, zero, sp
                  andi         ra, s4, -923
                  xor          a1, s11, t4
                  sra          s5, a5, s11
                  nop
                  ori          a5, s5, -640
                  ori          t2, s3, -261
                  sltu         t5, a7, s4
                  sll          a1, a3, s8
                  sll          s1, a3, t1
                  lui          zero, 158311
                  srai         s2, a4, 10
                  sltu         s2, s1, t5
                  ori          s2, a4, -489
                  slli         s0, s4, 5
                  sll          a1, t1, a1
                  slt          s11, a2, sp
                  slt          zero, s0, t1
                  slti         s8, s7, -1242
                  lui          t6, 189278
                  lui          a7, 790404
                  sub          a1, s1, a0
                  andi         s10, s1, 2045
                  nop
                  auipc        t5, 597987
                  slti         zero, t0, -576
                  srl          s10, a3, t6
                  or           a6, s4, a5
                  and          s2, gp, s0
                  slli         a0, t4, 10
                  lui          s11, 521002
                  sltu         s1, gp, t0
                  srli         s4, a6, 8
                  nop
                  auipc        s1, 184907
                  slti         t1, a4, 568
                  sra          zero, s6, t4
                  sra          t0, s7, t0
                  sltu         s4, s6, t1
                  addi         a4, a7, 709
                  auipc        a3, 428403
                  xori         t1, a7, -1968
                  lui          a5, 325003
                  slli         s5, ra, 13
                  slt          t3, a6, a4
                  andi         s7, s0, 501
                  or           zero, a1, s3
                  slt          t1, a0, t4
                  sltu         s11, s8, tp
                  sltu         s7, s6, tp
                  xor          a4, s0, tp
                  slt          s8, a5, a2
                  addi         a7, a6, -1367
                  and          t4, gp, a0
                  slti         s5, ra, 1567
                  sub          t3, t5, ra
                  and          s1, sp, s1
                  or           s5, zero, t6
                  sra          t1, s3, a6
                  auipc        a4, 336541
                  srai         s7, t1, 3
                  ori          s2, gp, 743
                  sra          s5, a0, a7
                  sltiu        s8, s11, 1921
                  or           a2, s0, s0
                  sltu         a7, s2, sp
                  sra          s0, a5, t5
                  andi         s8, t0, -664
                  andi         zero, a7, 1147
                  sltiu        s1, s8, 1072
                  slt          a6, s8, a4
                  auipc        s10, 722432
                  slt          a3, t3, t2
                  slti         t3, s0, 1118
                  srl          a3, a4, s8
                  sltu         s11, s3, tp
                  auipc        s0, 318876
                  andi         tp, s10, -1822
                  xori         s8, s11, -1483
                  or           s0, s5, s7
                  sra          s7, t3, s1
                  sltiu        t5, a4, -1882
                  lui          a7, 930928
                  nop
                  slli         s5, s6, 14
                  andi         ra, s9, 2008
                  auipc        a3, 1040355
                  xori         t3, t0, -1412
                  add          t4, sp, s10
                  sltiu        t4, zero, 632
                  auipc        a3, 278631
                  andi         gp, zero, 1968
                  sub          zero, a0, sp
                  and          t4, a4, s7
                  sub          t4, s5, t2
                  and          a5, a7, a1
                  or           a2, s10, s9
                  slti         a5, s8, -732
                  add          t5, sp, s3
                  slti         gp, sp, -1065
                  slli         zero, a1, 16
                  xor          t5, a7, s7
                  xori         zero, a4, -135
                  nop
                  srli         a5, s8, 27
                  addi         a0, sp, -744
                  lui          t2, 1022141
                  xori         s11, a5, 540
                  or           t0, t0, a2
                  sll          t3, zero, s4
                  sub          a7, s4, s3
                  slli         ra, t2, 9
                  srli         zero, s2, 8
                  auipc        t5, 386306
                  andi         a2, t4, 777
                  srai         t5, t3, 29
                  sub          t0, a2, zero
                  srli         s0, t6, 21
                  sra          zero, s4, s4
                  sll          t6, t1, s6
                  nop
                  slt          t2, s8, s11
                  xori         a0, s0, 851
                  auipc        t0, 68984
                  sub          s2, a1, s7
                  sll          s10, t3, tp
                  srl          t3, s5, t6
                  slli         zero, s1, 21
                  sra          a7, t4, s0
                  add          t2, a3, s10
                  xori         a5, t2, -675
                  nop
                  sra          s10, a4, a1
                  srl          a7, ra, a2
                  slti         a0, s2, -1181
                  srai         t2, s2, 2
                  add          ra, t3, t4
                  sll          s3, gp, a5
                  sll          a2, gp, s9
                  add          s8, s3, sp
                  sll          t4, s6, a2
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           t0, 0x80000000
                  li           t6, 0x80000000
                  li           a5, 0x0
                  li           a6, 0x0
                  li           t1, 0xb7f2b827
                  li           gp, 0x80000000
                  li           a3, 0x80000000
                  li           s2, 0x0
                  li           s4, 0x0
                  auipc        gp, 926809
                  add          s4, gp, a3
                  nop
                  add          s4, a6, s2
                  nop
                  nop
                  nop
                  nop
                  lui          gp, 928747
                  nop
                  nop
                  addi         a5, t1, 1842
                  lui          t1, 635136
                  addi         a6, t1, 1617
                  lui          a3, 1035110 #end riscv_int_numeric_corner_stream_11
                  andi         s3, s5, 1253
                  xor          a3, t6, a7
                  slt          a4, s11, s2
                  auipc        t0, 693238
                  ori          s2, sp, -296
                  addi         gp, s3, 586
                  andi         t4, s4, -1322
                  sra          a5, sp, t4
                  sltu         s3, t6, a7
                  srai         t4, t0, 16
                  sltu         a7, tp, sp
                  lui          a7, 652402
                  slli         ra, t2, 2
                  sra          gp, t0, a7
                  and          t6, a2, s8
                  sltu         s5, s7, s8
                  addi         s0, t4, -1696
                  srl          s2, s4, t5
                  sltu         zero, zero, a2
                  slt          t6, s9, ra
                  add          t5, s10, s10
                  srl          s8, a0, s6
                  slli         s8, sp, 25
                  srli         ra, a3, 23
                  ori          ra, zero, 1951
                  sltiu        t0, a6, 254
                  sra          t0, t6, a4
                  srl          s0, s8, s11
                  and          t0, t6, a0
                  srl          zero, s6, a1
                  slti         s0, a3, -721
                  sltu         t6, s7, gp
                  sll          s5, s6, a2
                  and          a2, t5, gp
                  xor          ra, a6, s8
                  addi         t1, t6, -1466
                  nop
                  lui          a7, 101484
                  xor          a5, s4, a4
                  xor          t3, a7, a1
                  add          gp, a5, a2
                  sra          s2, s2, a6
                  slli         s10, s7, 20
                  sra          t0, t0, t2
                  lui          s2, 292414
                  ori          t0, t0, 1993
                  andi         s10, a4, -2027
                  sltu         a2, a3, t0
                  sll          t6, t4, t2
                  slli         a4, gp, 3
                  sltiu        a3, a1, 976
                  slli         s1, t1, 22
                  sub          a4, a7, a7
                  xori         t6, a2, -1623
                  xori         t3, s7, -1349
                  sra          a7, t3, s10
                  srli         s11, s3, 1
                  slt          a4, t3, s8
                  or           s0, t4, t0
                  or           s3, t4, s4
                  srai         a7, t6, 30
                  sra          s10, a4, s4
                  slt          s7, s5, s8
                  nop
                  addi         t1, tp, -1151
                  nop
                  lui          a5, 138765
                  xor          s3, sp, t2
                  auipc        s3, 158676
                  nop
                  srli         s10, ra, 17
                  slti         s7, ra, 195
                  slti         t3, a0, 1560
                  sltiu        ra, s6, -1300
                  srli         s11, s6, 12
                  sltu         ra, a3, a0
                  slti         t0, t4, -439
                  slt          s10, s5, t5
                  lui          t2, 135265
                  lui          t2, 116943
                  or           ra, s6, a5
                  add          t5, a0, s2
                  srl          s0, t4, zero
                  xor          t0, t5, ra
                  ori          a6, s5, -474
                  auipc        a2, 1010027
                  sll          s2, s10, a6
                  slt          s2, t2, a6
                  lui          a7, 682315
                  slt          t2, s3, a2
                  sltiu        s0, a4, -1920
                  add          tp, s3, t6
                  xor          t4, gp, t3
                  or           t0, t5, s8
                  sltiu        zero, a0, -462
                  ori          a3, a0, -892
                  srli         a1, s0, 28
                  xor          t0, s7, zero
                  srli         a5, s8, 25
                  srl          zero, t3, a3
                  srl          t2, s10, t3
                  srli         a1, s11, 20
                  addi         s7, a2, -704
                  addi         a6, a7, -2039
                  slt          s2, t4, s2
                  slt          gp, a3, t3
                  sll          a6, a3, s7
                  xori         s10, s5, 1227
                  sra          s8, s9, t6
                  xori         tp, t4, 1214
                  addi         a6, a3, -755
                  addi         a3, t2, 1569
                  addi         a5, s11, -1215
                  slti         a2, a4, 198
                  slt          s8, s9, t3
                  add          s8, t2, s5
                  srli         a6, s3, 20
                  slti         a2, zero, 681
                  srai         t0, s5, 24
                  srli         s10, a5, 26
                  sltiu        s10, gp, -1668
                  srli         t6, s0, 21
                  nop
                  andi         s0, t3, 1626
                  xori         s2, t5, -1318
                  xori         a6, s6, -1928
                  sltu         a7, s8, s1
                  or           s11, s11, a4
                  and          s5, t6, s4
                  sll          t2, s10, t1
                  sltiu        s11, a4, 222
                  srl          a0, s4, t6
                  xori         a5, s4, 792
                  slt          s1, s5, a7
                  slt          s3, sp, s2
                  xori         s5, s2, 1820
                  lui          s3, 123679
                  sra          s4, a3, t4
                  srl          a6, zero, a4
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           s11, 0x0
                  li           s3, 0x80000000
                  li           a7, 0x263a125e
                  li           tp, 0x80000000
                  li           a2, 0x4791f33e
                  li           t3, 0x7bef016d
                  li           a3, 0xffffffff
                  li           a6, 0xffffffff
                  li           ra, 0x0
                  addi         a3, tp, 917
                  sub          a7, a3, t3
                  add          a0, a3, tp
                  add          s11, a7, s3
                  addi         a7, a7, 683
                  nop
                  auipc        a7, 753825
                  auipc        a7, 626348
                  nop
                  sub          t3, s3, a7
                  nop
                  auipc        a7, 951504
                  nop
                  addi         a3, a7, -1751
                  lui          a3, 208588
                  lui          a2, 923619
                  sub          ra, s11, a7
                  auipc        a2, 775066
                  nop
                  addi         t3, a6, 1194 #end riscv_int_numeric_corner_stream_12
                  slti         s4, sp, -1541
                  addi         zero, tp, 401
                  slli         zero, s1, 2
                  srli         a3, s6, 12
                  slli         s0, s4, 11
                  and          s3, zero, a7
                  auipc        s7, 413315
                  sltu         t3, gp, s1
                  sra          s10, a0, a0
                  or           t1, s6, zero
                  xor          s0, s3, t4
                  sub          tp, s2, t3
                  slti         t2, s8, -1710
                  xori         t5, s11, 93
                  slt          t1, s9, s3
                  andi         t6, t1, 1928
                  lui          s8, 754072
                  slt          gp, t6, a4
                  ori          a4, s7, 1297
                  sra          t4, s2, a0
                  slt          t2, s3, t3
                  slt          s11, a3, t6
                  sra          s3, s0, a1
                  nop
                  addi         t1, gp, -1092
                  auipc        gp, 381975
                  lui          s5, 1046605
                  sltiu        a1, s3, -435
                  srai         a1, t6, 10
                  or           t6, sp, s9
                  srai         s7, t3, 5
                  srai         s10, a7, 0
                  srl          t5, t6, a6
                  sll          t3, s5, a5
                  srai         gp, s1, 21
                  sll          t1, s6, t4
                  or           t3, a2, s7
                  srl          a3, s11, a0
                  sltiu        t6, s10, 1754
                  sll          s7, s0, a4
                  xori         s8, a1, 655
                  srai         t5, t1, 21
                  or           gp, zero, gp
                  auipc        a7, 643765
                  addi         a6, a1, -26
                  andi         a6, s11, 1843
                  sra          s4, s9, a4
                  and          t3, a0, a1
                  slt          zero, s6, t0
                  xori         a3, a6, 732
                  slli         s2, s2, 26
                  sltiu        t5, s5, 956
                  lui          a0, 123244
                  sub          s11, a3, t4
                  nop
                  slli         s10, t5, 2
                  slli         t4, s2, 7
                  xor          s4, s10, a4
                  sll          a3, t5, s3
                  srl          ra, s1, a2
                  srl          t1, t2, s3
                  ori          s0, s10, 1319
                  slt          gp, a6, ra
                  slt          t6, t2, s8
                  sltu         s3, s10, gp
                  xor          t2, t2, t0
                  and          t0, a4, a3
                  sll          s0, t6, s5
                  srli         s8, zero, 23
                  slli         gp, a5, 16
                  and          ra, s1, s8
                  slti         zero, tp, -99
                  ori          a6, s9, -2030
                  nop
                  ori          a0, s3, 81
                  slli         a5, s5, 19
                  ori          ra, s0, -1047
                  srai         t5, t1, 24
                  slli         t3, s6, 13
                  lui          ra, 89383
                  and          s5, gp, s3
                  sltu         s5, s11, ra
                  sra          t4, s4, gp
                  sra          a4, a7, a2
                  sub          a6, s6, a0
                  srl          t6, s0, s0
                  addi         a6, t6, 1782
                  ori          a6, s1, -155
                  xori         a2, a1, 1972
                  srl          t4, s6, s0
                  sub          t6, s8, a2
                  srai         s3, s5, 27
                  lui          a4, 789051
                  sub          a3, t3, t6
                  and          t0, a3, a7
                  srl          s4, a3, a4
                  ori          t1, t5, -1568
                  and          s7, a7, t0
                  auipc        zero, 471779
                  slt          a5, s8, a7
                  xori         t2, gp, -1717
                  sub          s0, s2, t2
                  addi         s3, t4, 1583
                  srai         a0, t3, 15
                  xori         ra, t4, 1811
                  slli         s8, s3, 23
                  nop
                  auipc        a5, 606815
                  add          s8, a0, s0
                  lui          t4, 900703
                  andi         a4, a6, -1494
                  srli         a5, tp, 2
                  ori          t1, t5, 1993
                  srai         a7, t2, 23
                  slti         s5, t6, 1958
                  sra          a7, ra, s10
                  ori          t4, s1, -198
                  ori          ra, s1, 1065
                  slti         a7, t4, -1610
                  lui          t6, 34240
                  sra          s10, gp, t4
                  lui          t1, 189167
                  srli         a2, t1, 12
                  andi         s1, t2, 1700
                  andi         a3, s5, 561
                  xori         tp, t2, 1552
                  add          s8, a3, s11
                  or           s3, a0, s9
                  srai         s11, s7, 7
                  or           a5, ra, t5
                  or           a2, a1, t3
                  sltu         s0, zero, s9
                  auipc        ra, 613598
                  srai         a1, s5, 15
                  lui          s1, 598379
                  sra          s1, s1, t1
                  and          a0, gp, s2
                  lui          a0, 720628
                  or           t6, s9, a3
                  andi         tp, t0, -1411
                  nop
                  lui          t1, 208576
                  lui          t5, 495795
                  sll          t6, t5, t5
                  xori         a7, t4, 1940
                  and          t5, a2, s5
                  sub          a0, t0, s8
                  sltu         t3, gp, s9
                  nop
                  nop
                  or           a4, t1, a2
                  slli         s3, s9, 5
                  xor          s8, t3, s9
                  and          t6, s10, ra
                  sll          s3, s8, s8
                  nop
                  sltiu        s10, a4, 2047
                  srai         t2, sp, 16
                  sll          a5, t5, t2
                  ori          a6, a1, -1369
                  sll          t4, ra, t4
                  sra          gp, t6, a4
                  xor          s4, a1, s7
                  srai         t0, s4, 11
                  xori         s3, s4, 1179
                  sub          t5, t6, s3
                  nop
                  srl          t4, a0, s10
                  slt          s3, s9, t4
                  nop
                  and          s7, s11, a6
                  and          t0, t6, s1
                  auipc        gp, 516591
                  sltiu        a0, t6, 238
                  sub          s4, s8, sp
                  sub          a3, s6, t0
                  andi         a2, a4, 1003
                  lui          s3, 384539
                  slti         a7, ra, 648
                  nop
                  auipc        a5, 959378
                  sltiu        t4, a1, -1732
                  slli         a5, s5, 23
                  srai         s2, s1, 26
                  lui          ra, 37631
                  sltu         t1, a2, s0
                  andi         t3, t2, 1231
                  sltu         a6, s7, s3
                  addi         s5, zero, -716
                  xori         s1, a1, 1428
                  add          s2, a3, ra
                  sub          s4, tp, sp
                  auipc        s0, 951609
                  sra          ra, ra, a4
                  xori         t5, t6, -1870
                  sltiu        s3, t1, -910
                  sltiu        a6, t6, 1810
                  auipc        t0, 304561
                  srai         a1, ra, 20
                  xori         a6, s5, 403
                  slti         a5, a4, -983
                  srli         t3, t6, 9
                  and          a1, s4, t2
                  auipc        a1, 695448
                  or           s2, s6, a3
                  slt          t3, zero, gp
                  slti         a1, zero, -1005
                  slti         t4, t4, -1249
                  nop
                  add          t5, s9, zero
                  addi         s2, gp, -1496
                  add          s11, t3, s8
                  and          t3, a6, ra
                  srli         t1, s4, 3
                  srli         t4, a0, 31
                  sltiu        ra, a6, 1863
                  sub          t6, t4, a6
                  sll          a1, ra, tp
                  slti         a6, tp, -805
                  addi         a7, t3, 1858
                  lui          t0, 498970
                  and          s8, a2, s4
                  ori          s10, s4, -1458
                  ori          a5, t2, -250
                  add          s1, ra, zero
                  slli         s0, a3, 24
                  srli         a0, s7, 6
                  srli         t3, ra, 1
                  sub          t6, tp, a7
                  slli         t4, a3, 1
                  srl          s2, a4, ra
                  nop
                  and          t6, a7, s8
                  and          t1, sp, t1
                  slli         t3, ra, 21
                  xori         t4, s0, -1661
                  srai         t5, a3, 28
                  andi         s3, a0, -2022
                  srli         a4, a4, 0
                  slti         a6, zero, 209
                  slli         s3, s11, 21
                  sltiu        zero, s8, -867
                  srl          s10, a7, t3
                  lui          s5, 698401
                  or           a0, s1, t6
                  slti         s10, s2, -806
                  srli         s4, s8, 15
                  sub          gp, zero, t6
                  andi         a2, t4, 1160
                  slti         tp, gp, 1161
                  xor          s1, a6, t5
                  sltiu        t1, t0, 839
                  xori         s0, s9, 710
                  add          a3, s3, t1
                  srli         t1, s10, 7
                  sll          gp, t0, a1
                  srai         zero, s1, 23
                  sll          tp, s10, s6
                  lui          s11, 20755
                  add          a1, t4, s6
                  srl          a1, sp, s8
                  or           t5, s6, a0
                  and          tp, t4, s4
                  sub          t4, t4, s4
                  addi         t6, s5, 336
                  sll          ra, a3, ra
                  nop
                  srl          gp, t4, s11
                  slt          gp, s7, a4
                  srai         a5, t6, 2
                  add          t3, t0, a0
                  srli         a6, zero, 20
                  ori          t5, a6, -169
                  addi         s1, zero, 898
                  auipc        s0, 831834
                  addi         a5, s4, 1398
                  sub          zero, s3, ra
                  nop
                  srl          s1, tp, a3
                  or           s5, t4, ra
                  srl          t5, s5, t1
                  sltu         zero, a0, a5
                  srl          t0, s0, tp
                  ori          t6, s1, 1907
                  sub          s5, s3, t4
                  xori         s0, a3, -1445
                  slli         t2, s11, 22
                  nop
                  xori         a3, a5, -1873
                  srl          s0, a5, sp
                  sll          a4, s0, s9
                  slt          a1, t1, s5
                  xor          gp, a5, t0
                  sra          a4, t5, a7
                  or           a7, t0, a6
                  srl          s7, s4, s4
                  nop
                  slli         t3, a7, 18
                  srl          s11, s1, s4
                  slli         s10, s5, 12
                  auipc        s7, 760702
                  auipc        gp, 908452
                  sltiu        gp, s5, -1018
                  slti         zero, a5, -1241
                  xor          t6, t2, s10
                  srli         s1, s2, 12
                  slt          s8, s0, t5
                  ori          a4, t1, 136
                  lui          s1, 314687
                  or           s8, s6, s6
                  srl          s0, a2, s2
                  slli         t2, a4, 21
                  auipc        t4, 548004
                  lui          a3, 315181
                  lui          t4, 830379
                  slti         t0, s11, 1078
                  andi         t5, sp, 1140
                  slti         t4, s3, 1159
                  srai         s5, a4, 5
                  nop
                  sub          t0, t6, s0
                  nop
                  slt          s10, a6, t3
                  slti         a6, t4, 895
                  sll          a6, s6, s5
                  and          zero, t6, a2
                  srai         t4, t4, 8
                  xor          s0, s7, t2
                  xori         s11, sp, 1219
                  srai         t1, ra, 22
                  lui          t6, 487159
                  xori         a7, s1, 550
                  addi         s11, t5, 1958
                  nop
                  xor          s2, t0, a2
                  sltiu        t3, t3, 180
                  xor          t6, s4, a6
                  xori         a5, s8, 3
                  slt          ra, s0, zero
                  lui          a1, 1014726
                  slli         s8, a7, 17
                  and          t1, t3, ra
                  sra          a4, s10, t1
                  ori          t4, a6, -1839
                  or           t1, a4, t2
                  sltiu        a0, a5, 1318
                  slt          s11, s6, t6
                  xori         t3, a2, 1021
                  nop
                  andi         a5, a7, 754
                  slti         a2, s4, -641
                  andi         s4, t0, 857
                  slt          a5, t4, a3
                  xor          t6, t5, a6
                  ori          a4, a1, 1101
                  lui          a7, 429784
                  slt          a7, s9, a5
                  auipc        s2, 790249
                  sub          t0, a3, tp
                  slt          a0, s6, s8
                  lui          t2, 628126
                  xor          s3, t4, s1
                  add          t1, a5, s6
                  andi         a5, s10, 1632
                  or           t5, sp, t6
                  ori          t0, sp, 502
                  sub          s7, s5, s11
                  add          s11, a6, a2
                  sll          s4, zero, zero
                  add          a1, ra, t6
                  ori          tp, s3, -808
                  addi         s4, zero, -811
                  srai         a4, a2, 24
                  ori          s4, s0, 1306
                  andi         s2, t5, -85
                  srai         s5, s6, 18
                  sltu         a1, s8, s3
                  nop
                  addi         a1, s8, -379
                  ori          a2, tp, 743
                  addi         s3, s5, -499
                  lui          t1, 502303
                  xor          s10, s9, s9
                  srl          s5, t3, tp
                  slti         t0, t2, -255
                  andi         tp, t1, -2026
                  andi         s7, a2, -1437
                  xor          a2, t0, t3
                  slt          t2, s4, s1
                  xor          s5, s11, zero
                  nop
                  slli         a4, zero, 4
                  ori          s8, s10, 388
                  andi         s10, t1, 163
                  sltiu        s0, a2, 896
                  nop
                  xor          a6, sp, s1
                  auipc        s8, 411241
                  nop
                  sltiu        gp, a4, -1859
                  or           t2, a6, t5
                  srl          s10, a2, a3
                  srai         a0, t3, 7
                  sub          a2, a1, t2
                  add          s11, s4, t1
                  sra          s4, zero, a4
                  sra          a7, gp, s7
                  or           gp, s11, t5
                  sll          s10, ra, sp
                  ori          t0, s6, 357
                  xor          s3, a4, s11
                  xor          a3, ra, s10
                  or           a5, s10, s0
                  or           t4, ra, s6
                  sltu         t3, s11, s8
                  sub          s5, t0, s6
                  xori         s0, a3, 280
                  sltiu        s11, a2, 913
                  sltiu        t0, s4, -598
                  nop
                  srai         t0, t3, 30
                  add          zero, a1, s6
                  nop
                  lui          a2, 1016533
                  add          t6, t3, a6
                  xor          a2, a1, s1
                  andi         t5, s2, -1766
                  nop
                  srl          a2, t3, zero
                  ori          t3, s1, 1908
                  srl          t3, t0, a7
                  sll          tp, a4, t5
                  sub          t0, s5, gp
                  or           t1, zero, t5
                  and          t1, s1, s7
                  slti         tp, s9, 1853
                  srai         t2, t2, 29
                  andi         t6, a3, 1932
                  addi         t3, a6, -985
                  slt          a3, a0, s7
                  lui          s2, 977345
                  sra          s2, s5, s6
                  lui          s0, 524294
                  srl          t1, t1, s11
                  addi         s2, s8, 891
                  andi         a2, a2, -998
                  srli         a3, sp, 28
                  srl          s2, t0, t6
                  xori         s8, a7, -1683
                  srai         s10, s8, 2
                  srl          s0, t3, t4
                  srl          s8, ra, t5
                  lui          t2, 301059
                  auipc        t6, 242624
                  srli         t4, s10, 22
                  slli         s7, s1, 0
                  slt          s10, s5, s2
                  add          t3, s7, t6
                  sll          t0, a2, t6
                  sltiu        s2, t0, -477
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           t4, 0x0
                  li           t5, 0xb9656c7e
                  li           a4, 0x0
                  li           a0, 0x80000000
                  li           ra, 0xffffffff
                  li           a1, 0x0
                  li           gp, 0x80000000
                  li           s0, 0x0
                  li           t0, 0x0
                  sub          t4, a0, a0
                  lui          a2, 290445
                  auipc        a0, 166634
                  addi         t4, t5, -1913
                  add          gp, t0, a4
                  nop
                  sub          a1, a2, t5
                  addi         ra, s0, 1836
                  auipc        a2, 995377
                  auipc        gp, 320709
                  addi         ra, t0, -483
                  addi         a1, t4, -1787
                  lui          a1, 848896
                  addi         a2, t0, -1598
                  addi         gp, a4, -1632
                  sub          a2, ra, a4
                  auipc        a2, 121390
                  addi         a2, a1, -570
                  lui          ra, 386520
                  nop
                  add          a2, a4, ra
                  sub          t4, a2, s0
                  lui          a2, 790196
                  addi         a2, ra, -601
                  add          a1, t0, gp
                  lui          gp, 562164
                  add          t4, ra, a1
                  sub          t5, t4, t5 #end riscv_int_numeric_corner_stream_10
                  sub          s4, s7, t6
                  sltiu        a4, t6, -2039
                  slli         a6, t1, 4
                  add          tp, t4, t0
                  sltu         a1, t0, s3
                  srli         s4, s0, 16
                  sub          s4, s5, s0
                  andi         s2, s1, -860
                  ori          gp, s9, 1184
                  sub          a7, a7, t6
                  add          a1, s11, s2
                  slli         ra, s11, 22
                  slti         t5, a2, -960
                  sltu         t6, t1, a2
                  xor          a4, a2, s8
                  xori         t1, a0, -2029
                  sltiu        a7, a5, 1170
                  lui          gp, 369595
                  xor          t2, a6, zero
                  addi         s10, a6, -1709
                  sra          t5, s5, zero
                  slli         s7, s2, 0
                  xor          t0, gp, s8
                  xor          gp, a3, a1
                  andi         s5, a7, 1457
                  nop
                  lui          s11, 942618
                  and          s1, t0, t2
                  auipc        t3, 421514
                  sltiu        a1, a2, 553
                  or           t5, sp, t4
                  slt          s11, s8, zero
                  and          t6, s1, s8
                  andi         a4, t4, -1909
                  lui          a6, 83335
                  ori          s8, s6, 1315
                  xori         s8, a1, 1885
                  add          a5, s9, a7
                  sltu         tp, s5, t5
                  sll          a3, ra, ra
                  slti         s1, tp, 81
                  xor          s7, s10, a2
                  slli         s5, a0, 28
                  sra          zero, s4, s3
                  sra          a6, s6, a7
                  sll          tp, sp, a3
                  sra          s10, a5, sp
                  sub          s0, gp, s5
                  ori          a2, t1, 1630
                  addi         gp, a2, 1285
                  srai         tp, sp, 20
                  ori          a1, t5, 1273
                  slli         t5, ra, 11
                  add          t5, a4, tp
                  lui          s1, 942681
                  sll          s3, tp, ra
                  or           t6, s8, sp
                  sub          t5, s10, s3
                  xor          t6, s11, a7
                  andi         t2, s8, -268
                  addi         a7, gp, -1517
                  andi         s7, a5, -1719
                  addi         s11, a7, -1393
                  auipc        tp, 438298
                  auipc        gp, 986072
                  srli         a4, s3, 27
                  sltiu        s11, a5, -594
                  slti         s1, t6, 1850
                  or           s4, a1, s0
                  slt          s5, a0, s4
                  xori         zero, s4, 1206
                  sub          t3, zero, s2
                  auipc        a4, 347021
                  addi         a0, s0, 1744
                  or           s8, s11, s5
                  sltu         a4, s10, t4
                  and          t6, s0, ra
                  andi         s2, t2, -1788
                  and          t3, a0, a2
                  srl          t3, t5, s8
                  lui          t6, 444010
                  sltiu        ra, s3, 101
                  sub          t5, t0, s4
                  slli         s1, t1, 15
                  srl          t1, t2, a0
                  sltiu        s10, t0, 1896
                  srai         t6, s4, 15
                  sltiu        s7, a2, 455
                  andi         t4, t6, -255
                  auipc        s7, 818040
                  or           s10, a1, s4
                  slli         a0, s4, 2
                  sltu         s8, a1, t1
                  srli         zero, a4, 8
                  slti         s1, s0, -827
                  addi         t2, s1, -1774
                  srl          t3, s10, s3
                  or           t5, s9, t2
                  slli         s3, a5, 0
                  sll          s1, a2, s5
                  slt          s7, s2, t3
                  sub          a5, a7, a5
                  sra          a3, t4, ra
                  nop
                  add          t6, s2, s0
                  slti         a1, s9, -773
                  andi         a3, s6, -296
                  andi         a0, t6, -756
                  xori         a1, t4, -1745
                  sltiu        a6, t0, 1050
                  slt          gp, sp, a7
                  andi         s8, s3, 1213
                  sltiu        s2, s4, 1504
                  nop
                  sll          a0, sp, t0
                  srli         s8, t6, 15
                  srai         s0, s1, 24
                  and          s3, s6, t3
                  sll          a6, t5, ra
                  slli         s5, a5, 22
                  sltu         t5, a5, s0
                  add          a0, s2, s6
                  slli         s3, t3, 7
                  xori         s10, gp, 1307
                  sltu         t1, t3, a2
                  add          s0, s11, sp
                  sub          s0, s1, s6
                  sltu         gp, a3, t5
                  srl          t3, tp, s7
                  lui          t4, 800310
                  andi         a0, a0, 532
                  addi         t6, a0, 553
                  or           t3, t0, s11
                  sra          a6, s5, s2
                  auipc        a4, 203160
                  sra          s5, s7, a1
                  or           s10, s5, s3
                  srl          tp, a5, s6
                  slt          tp, t1, tp
                  ori          gp, a6, 1724
                  slt          t5, tp, a0
                  srai         a6, s3, 14
                  add          s4, s4, a2
                  addi         s5, s8, -1978
                  xor          a0, s2, s10
                  lui          s11, 868923
                  or           s7, a7, s11
                  xori         s1, s6, -292
                  xor          t6, a7, s9
                  srai         s0, tp, 14
                  addi         tp, t6, -1260
                  lui          s11, 568516
                  sltu         t3, zero, sp
                  and          s10, sp, s2
                  sltiu        zero, t6, 169
                  sra          zero, zero, a6
                  slti         a2, s11, -97
                  andi         t6, s10, -964
                  srl          s2, t4, s11
                  srai         s4, t2, 17
                  srl          t2, s11, s2
                  slli         t1, a0, 27
                  ori          zero, t3, -632
                  sub          a7, a3, s1
                  srai         s7, a6, 28
                  addi         a0, s0, -1855
                  add          a1, s0, a0
                  and          t2, a2, tp
                  ori          a1, sp, -1503
                  sltiu        a0, t4, 523
                  sltu         ra, ra, a4
                  or           gp, tp, tp
                  slt          t4, a6, tp
                  srli         a2, s4, 23
                  xori         t5, s1, 281
                  ori          a7, tp, -464
                  sltiu        gp, ra, -580
                  or           a7, s3, s0
                  and          tp, ra, gp
                  auipc        s2, 1014309
                  slti         s10, s1, -893
                  nop
                  xori         s1, a5, -966
                  and          t6, tp, ra
                  xori         t5, gp, -50
                  sra          a7, s0, s5
                  auipc        t0, 467623
                  add          zero, s8, t3
                  add          zero, a3, s0
                  srai         s7, t1, 23
                  slti         s4, t5, 1736
                  sll          s10, s2, t0
                  lui          t5, 500415
                  slti         t4, s6, 927
                  srli         a6, t0, 3
                  srl          s4, s8, s6
                  xori         a2, a1, 475
                  sub          s11, a5, sp
                  andi         a0, a1, 1253
                  lui          a6, 712304
                  nop
                  andi         tp, t5, 252
                  lui          gp, 563092
                  srli         zero, s4, 15
                  sltu         t0, s7, t1
                  addi         a0, sp, -913
                  sll          a2, t0, t5
                  xor          s1, s7, s7
                  srli         gp, sp, 6
                  nop
                  sltiu        s10, s7, 1380
                  sltiu        a6, ra, -1834
                  sltiu        tp, t2, -1751
                  auipc        a3, 540970
                  auipc        t4, 620099
                  auipc        tp, 740183
                  sub          t6, s7, s10
                  and          a0, t2, s8
                  srli         a3, t3, 8
                  srai         t0, a1, 5
                  auipc        s3, 43477
                  srli         t5, s0, 25
                  xor          t3, s4, t3
                  slti         s11, sp, 1903
                  sll          t3, t3, t1
                  and          s10, t5, s6
                  and          a5, t0, s4
                  slti         s1, zero, -421
                  xor          a6, tp, t2
                  and          t6, a5, s2
                  nop
                  sltiu        t1, t6, 1652
                  slti         ra, t0, -759
                  auipc        t6, 835890
                  slti         s7, s0, -1339
                  slli         s0, s6, 25
                  xor          s8, s4, s6
                  xori         t4, s11, -1478
                  sltu         a1, a7, t6
                  andi         t6, t5, -1833
                  sra          s7, a7, a3
                  sra          zero, t1, a5
                  sltiu        a7, a7, -398
                  auipc        t5, 139951
                  slli         a0, a0, 2
                  and          t5, t4, s11
                  sltiu        t6, s3, 1557
                  sltu         a1, s1, gp
                  xori         s10, s5, -758
                  xori         a3, t3, -1003
                  slt          t2, t4, t6
                  xori         a4, t0, 703
                  slt          a4, t3, a4
                  slt          s8, s8, a6
                  add          t2, a3, a0
                  slli         a2, a1, 24
                  and          a2, a0, t1
                  srl          s10, s1, t2
                  and          a6, sp, s11
                  srli         s5, ra, 26
                  ori          t1, sp, 1331
                  srai         a5, a7, 17
                  auipc        s3, 969045
                  auipc        s0, 670837
                  or           s3, t1, s6
                  sltiu        a5, a5, -438
                  sll          t6, s2, s9
                  sra          a7, a4, t1
                  or           a4, s7, s1
                  nop
                  andi         s3, a2, -636
                  add          s0, a1, t6
                  ori          gp, s7, 808
                  sltu         s1, a4, a2
                  addi         ra, t3, 1586
                  slti         s1, sp, 1436
                  slti         ra, a7, 33
                  add          s1, s9, t6
                  xor          a2, t1, s5
                  or           s4, t2, a4
                  andi         a7, a3, -1475
                  or           s11, a6, a5
                  sll          a6, a3, s3
                  sll          a7, t0, tp
                  srai         t2, a7, 8
                  srli         t1, t6, 20
                  sub          s8, s5, s9
                  slli         a0, s9, 18
                  auipc        a7, 392547
                  xor          t2, s4, t5
                  sltiu        gp, ra, 316
                  addi         zero, sp, -844
                  xor          a5, zero, s11
                  xor          a4, s7, s5
                  xor          a5, sp, s3
                  lui          s11, 576015
                  xor          s1, t6, s11
                  ori          s10, zero, -1150
                  or           ra, s7, a1
                  sltiu        s8, a4, -816
                  srai         s7, gp, 29
                  nop
                  and          s4, t1, sp
                  and          a4, zero, a5
                  sll          ra, s5, zero
                  slli         t3, zero, 1
                  sub          gp, s2, s9
                  sub          s7, s9, t3
                  slt          s7, t0, s9
                  addi         a5, s5, 1395
                  slti         t2, a3, -1235
                  andi         s2, s3, -5
                  or           t1, t5, t1
                  add          t4, gp, t3
                  addi         s1, a6, -1853
                  srl          s0, s4, s8
                  sltu         t2, t4, s3
                  slli         a3, a2, 11
                  ori          s1, a2, 1583
                  sltiu        t2, s0, 1297
                  slt          t6, a3, s6
                  sll          t5, s3, gp
                  lui          a6, 959690
                  and          t1, t6, t4
                  auipc        t1, 971027
                  slti         a0, a3, 1499
                  lui          a1, 655013
                  slti         gp, a1, 1999
                  and          a7, a5, s2
                  auipc        s7, 899953
                  andi         a4, t5, -230
                  and          t4, a7, t3
                  srli         gp, zero, 3
                  slti         s1, a4, 472
                  and          t1, a0, a5
                  xor          zero, s8, s2
                  xori         ra, a7, 232
                  srai         s0, t1, 22
                  sra          a3, s9, a5
                  addi         t2, a4, 1357
                  sltu         t1, a6, t1
                  lui          a3, 430385
                  auipc        s7, 312792
                  srai         a7, s7, 8
                  nop
                  srl          ra, a2, s2
                  slt          a3, a7, s7
                  add          t6, s10, s9
                  auipc        s5, 819656
                  andi         s1, ra, -1505
                  and          t6, t5, s10
                  sltu         t5, s1, a0
                  sra          t0, a6, s11
                  or           s2, a4, a4
                  slli         s7, s3, 4
                  sltiu        a0, t3, 1040
                  lui          a4, 451431
                  nop
                  srli         gp, sp, 11
                  and          s10, s0, gp
                  sltu         zero, t5, s2
                  sub          ra, a5, gp
                  or           s11, s8, s10
                  add          t5, s4, gp
                  slti         a2, t1, -1157
                  sub          s5, t5, s8
                  sll          t4, zero, gp
                  xori         s7, a5, -412
                  or           gp, a5, s9
                  sub          a2, s3, s7
                  or           s2, s8, tp
                  sll          t5, t6, t5
                  srai         t6, a2, 13
                  xori         a6, a3, 466
                  ori          t2, t2, 1247
                  sra          a6, t1, sp
                  lui          gp, 525056
                  sub          a7, a3, t0
                  xori         s8, s8, 682
                  sltiu        zero, t2, 1800
                  add          s1, a0, tp
                  srai         ra, t5, 2
                  lui          s11, 625339
                  slti         a2, a6, -1464
                  xori         s0, zero, -1508
                  ori          s4, s8, -1622
                  sra          s11, a6, ra
                  lui          s8, 164098
                  and          a0, s8, t2
                  xori         t4, zero, -1501
                  sll          s10, a0, s8
                  nop
                  slli         t0, t6, 3
                  nop
                  sll          a4, s5, ra
                  or           a4, sp, a2
                  srli         t0, s3, 0
                  slti         a1, t4, -1165
                  ori          t5, tp, -974
                  andi         t6, tp, 1985
                  slli         t5, a0, 31
                  srl          t0, s2, zero
                  sub          a1, s10, zero
                  sub          a4, a6, a7
                  sra          t1, ra, sp
                  sll          t2, a2, a3
                  and          s4, tp, s9
                  or           a6, gp, t0
                  auipc        s7, 197475
                  srai         t6, t1, 1
                  addi         a3, t6, -131
                  srli         t2, t6, 12
                  slt          a1, a3, a7
                  addi         zero, a0, 1308
                  sltiu        a7, s8, -960
                  lui          a3, 560041
                  andi         zero, a5, 871
                  sra          s2, ra, a2
                  sll          gp, s0, a1
                  slt          s8, ra, gp
                  sra          t6, a4, s3
                  ori          t2, s11, 389
                  ori          ra, s1, 150
                  or           s8, s11, t0
                  srai         gp, t1, 16
                  auipc        t2, 1046226
                  ori          a0, a7, 475
                  and          a3, a3, a5
                  addi         a5, s8, 1001
                  sltu         gp, s4, s5
                  sltiu        t0, s11, 1527
                  slti         a7, gp, 1025
                  slli         a3, s4, 21
                  sra          s8, s5, ra
                  srl          a7, t0, t2
                  ori          a4, a2, 1332
                  srli         a4, s8, 9
                  sll          a5, s8, zero
                  slt          a0, s6, t3
                  sll          tp, t0, s9
                  nop
                  slli         t4, s4, 19
                  auipc        a0, 1028978
                  nop
                  and          a3, ra, tp
                  sltiu        s1, t3, 364
                  addi         zero, t4, 1035
                  addi         a0, sp, 1191
                  srl          a4, a1, sp
                  slli         a5, s1, 3
                  andi         a7, s5, -159
                  or           s5, a2, a6
                  srli         tp, tp, 19
                  sltiu        s5, a7, -557
                  addi         ra, gp, 1923
                  sub          gp, gp, gp
                  srai         s0, a3, 18
                  and          a7, s3, t6
                  sra          s10, sp, a3
                  srl          t3, s7, s5
                  slt          s11, s6, s1
                  add          t1, s1, a4
                  auipc        tp, 584102
                  and          s3, zero, a2
                  addi         s11, t3, 1472
                  addi         a2, s8, -538
                  sll          a0, a2, a2
                  xori         t3, sp, 107
                  auipc        gp, 440756
                  and          t3, t1, s9
                  xor          s4, a4, a1
                  slt          s7, sp, s11
                  srl          s1, s8, a2
                  sra          tp, t2, a1
                  srli         tp, a2, 5
                  add          gp, s10, t5
                  and          s4, s7, t2
                  sltiu        t1, tp, -1450
                  sra          t4, a0, sp
                  srli         s0, s11, 29
                  slli         gp, s6, 2
                  xori         s8, a2, -6
                  slt          s8, tp, t3
                  slli         s10, t1, 9
                  addi         t3, tp, -1446
                  sra          ra, sp, a3
                  sltiu        a7, s1, -900
                  slli         t6, gp, 12
                  xor          s3, s10, a4
                  auipc        a2, 88857
                  slli         a0, a4, 14
                  nop
                  add          s0, s5, a5
                  nop
                  sra          ra, t2, s0
                  auipc        s11, 658599
                  xor          t4, gp, zero
                  sra          a3, s1, t2
                  nop
                  auipc        t5, 201452
                  addi         ra, s1, 1749
                  nop
                  addi         a7, a0, -439
                  slti         s1, s6, 1255
                  sub          t6, s6, s5
                  and          s1, s10, a4
                  and          t2, s4, s3
                  and          a3, s11, a1
                  and          a1, s9, t3
                  addi         s4, s3, 1658
                  slt          ra, s8, s5
                  and          s3, a5, t1
                  slt          ra, t1, s4
                  slli         s8, s6, 30
                  or           tp, t4, a2
                  srl          zero, a3, a2
                  add          s3, sp, a7
                  srl          t1, a6, t4
                  sra          s3, a3, a1
                  or           s1, ra, s6
                  slt          a1, s9, a3
                  sll          s10, a2, s6
                  nop
                  sll          a3, t3, s9
                  srai         zero, t3, 11
                  srai         s10, a6, 0
                  auipc        s4, 571974
                  sltu         s11, s3, t4
                  xori         a3, s3, 1744
                  xor          a5, zero, ra
                  auipc        tp, 816806
                  sll          a6, s2, s10
                  add          t0, s11, s11
                  ori          t4, a3, 1826
                  srl          tp, s8, t5
                  sltiu        t2, s6, 1022
                  sra          s11, gp, s11
                  sltiu        a6, zero, 146
                  sub          s11, t2, t4
                  xor          s4, t3, a5
                  ori          s8, t6, -289
                  add          s10, s0, t3
                  xori         a4, zero, -1194
                  xori         s7, s0, -966
                  srl          a2, a5, a3
                  or           a2, t0, t2
                  sltiu        gp, s2, 1918
                  srl          s0, ra, s3
                  xori         s0, ra, 634
                  addi         s11, gp, 510
                  xor          t0, a7, s2
                  slli         a2, s7, 11
                  sll          a2, s10, s10
                  lui          zero, 716891
                  xori         ra, t0, -334
                  srli         t3, a2, 22
                  sltiu        a2, t4, -477
                  slli         s8, sp, 18
                  srai         gp, a1, 8
                  srl          t1, zero, ra
                  sra          s10, s4, a5
                  add          s0, a7, a5
                  and          s11, s7, zero
                  slt          t4, a2, t2
                  ori          a0, s6, -1823
                  slli         s10, s2, 26
                  slt          t4, a0, s11
                  slti         a1, s0, -794
                  srai         a2, t0, 11
                  sub          s0, t1, ra
                  andi         t4, t0, -840
                  sll          a3, s4, ra
                  and          t1, s7, a5
                  auipc        a4, 1043890
                  or           t1, s4, s0
                  sub          s1, t1, s10
                  andi         t1, a6, 622
                  sub          a3, s0, a1
                  slti         a1, a1, -1109
                  or           s4, ra, s6
                  or           s2, t2, s10
                  sltu         a4, a3, zero
                  addi         t4, t6, -1529
                  addi         s4, s0, -1030
                  sll          t5, ra, a0
                  andi         a3, s7, -1753
                  and          a0, a3, s1
                  srl          tp, s7, zero
                  slt          tp, a4, a4
                  xor          s5, s3, ra
                  xor          s3, t6, tp
                  sub          a5, s4, a1
                  addi         a7, t3, -905
                  srli         a6, s2, 5
                  srai         a1, s7, 29
                  xori         s7, tp, 98
                  slt          ra, t4, gp
                  sra          a4, s9, a3
                  slli         s4, a5, 8
                  and          s5, t6, gp
                  sltu         tp, t0, s4
                  nop
                  slt          tp, s1, s0
                  ori          t5, tp, -1166
                  add          s0, a7, s1
                  auipc        s8, 71700
                  nop
                  sltu         a6, a2, s2
                  sltu         t4, s4, s3
                  sub          a0, gp, a7
                  sll          t5, gp, t1
                  slti         s10, zero, 1107
                  ori          a1, s0, -848
                  sra          s4, s5, s6
                  sub          a6, t2, sp
                  srli         t4, sp, 27
                  sra          t2, tp, tp
                  andi         s8, s11, 924
                  sra          tp, t2, a7
                  slli         s5, s6, 12
                  or           a4, t3, a1
                  srai         s7, tp, 15
                  addi         a5, t6, 813
                  sltu         a2, a1, s11
                  srli         t2, s6, 23
                  srl          a2, ra, t2
                  sltu         t6, s7, a2
                  or           a1, a4, t1
                  nop
                  addi         a5, s7, -996
                  ori          a5, a3, -556
                  xor          t0, t2, t0
                  and          s0, zero, t3
                  sltiu        a1, s1, 1881
                  slt          s10, s5, s1
                  slli         t6, a4, 7
                  or           s3, a2, s11
                  slti         a2, a6, 1737
                  slti         a3, t3, 1746
                  nop
                  srli         s5, s10, 29
                  add          t2, a7, s5
                  add          t1, a3, s0
                  lui          a3, 5337
                  andi         ra, t1, 833
                  ori          tp, a3, -423
                  slli         a5, s6, 19
                  xori         t4, a3, 1141
                  xor          a5, a7, a3
                  andi         t6, s9, 2028
                  andi         t1, t5, 557
                  addi         a6, t4, 2040
                  sltiu        a3, s6, -1791
                  sub          t1, s8, s2
                  addi         a3, a2, 207
                  sltiu        s8, sp, -828
                  auipc        s5, 300639
                  and          a5, t3, a3
                  xori         a3, s5, 469
                  addi         gp, s5, 415
                  nop
                  andi         t3, s5, -82
                  srli         t5, ra, 26
                  addi         t0, a5, 196
                  lui          a3, 350446
                  sra          a7, s10, t6
                  andi         s4, zero, 609
                  auipc        a3, 322029
                  srli         a1, t4, 31
                  and          a5, s1, a0
                  srli         s10, s3, 0
                  or           a1, a3, s9
                  sll          tp, s9, s3
                  xori         a7, s8, -201
                  sll          s1, ra, a4
                  slt          s1, s8, s10
                  sltu         s4, s1, tp
                  xor          ra, s4, t0
                  add          s11, a7, s0
                  slt          s1, a2, s7
                  andi         t3, t2, 1027
                  add          a2, a1, a2
                  auipc        s4, 371156
                  xori         tp, s8, 587
                  xori         s10, a7, -1037
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           t0, 0x0
                  li           s11, 0x10129cea
                  li           s4, 0xb50663a5
                  li           s7, 0x80000000
                  li           a5, 0x80000000
                  li           t1, 0xffffffff
                  li           ra, 0x80000000
                  li           tp, 0x2b115eb0
                  li           t5, 0x80000000
                  addi         t5, s7, -1233
                  addi         tp, tp, -151
                  add          s0, s11, a5
                  auipc        t0, 173129
                  sub          t5, tp, t0
                  lui          s4, 117258
                  addi         tp, a5, 826
                  addi         ra, tp, -825
                  sub          s11, t5, tp
                  auipc        tp, 255751
                  sub          tp, t1, t0
                  nop
                  lui          t0, 268033
                  sub          s7, a5, a5
                  sub          s4, tp, t0
                  add          ra, a5, s11
                  sub          tp, tp, ra
                  nop
                  lui          s0, 583115
                  lui          s0, 1018971 #end riscv_int_numeric_corner_stream_0
                  slt          s0, s11, t6
                  addi         a0, s2, 594
                  ori          s4, zero, 231
                  andi         a6, s5, -753
                  slt          s4, s8, t1
                  srli         a3, s10, 31
                  srli         s11, s11, 17
                  ori          a1, t0, 54
                  slli         s4, a7, 17
                  srli         s4, a5, 20
                  xor          a6, a1, s3
                  xori         a1, a7, 194
                  sltu         s10, a3, a4
                  xor          s0, s1, a3
                  slt          a2, tp, s7
                  andi         a1, s8, -1565
                  slt          s8, a6, a0
                  add          t0, s9, s6
                  sltu         t4, t0, t6
                  xori         s4, a0, -1585
                  or           a7, a7, s2
                  xori         zero, s11, 1659
                  sll          a7, a1, s5
                  andi         a7, s8, -1064
                  sub          t1, zero, s7
                  xori         t2, s6, 1571
                  slti         a3, t1, 1341
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           a4, 0x158559c9
                  li           a2, 0x0
                  li           t0, 0x80000000
                  li           tp, 0x0
                  li           a0, 0x34963c17
                  li           s5, 0xc8a095e2
                  li           s10, 0x0
                  li           ra, 0x0
                  li           s1, 0x80000000
                  add          t0, ra, t0
                  nop
                  add          ra, s5, ra
                  nop
                  addi         ra, s5, 1031
                  addi         t0, ra, 1150
                  sub          tp, s3, s5
                  nop
                  add          tp, s10, s3
                  auipc        a0, 1032492
                  sub          ra, s10, tp
                  sub          s10, ra, ra
                  lui          t0, 569935
                  auipc        s10, 386720
                  sub          s1, s1, a2
                  lui          s10, 429386
                  add          ra, t0, s1
                  addi         s3, s10, 1955
                  addi         a2, t0, 2044
                  lui          ra, 939534
                  lui          a4, 928222
                  lui          a0, 363251
                  sub          s5, s5, s3
                  sub          a0, s3, a2
                  lui          s3, 158403 #end riscv_int_numeric_corner_stream_15
                  srli         s1, s4, 0
                  andi         s4, a4, 73
                  xori         t2, t3, -1779
                  sltiu        s4, t6, -1124
                  srai         t0, t6, 17
                  sltu         s11, a0, t3
                  andi         s4, a5, 1645
                  sra          s8, s0, s2
                  sltu         t2, s1, s10
                  add          s4, a4, t4
                  sub          a1, a5, t2
                  sub          s8, t5, t4
                  sub          t3, t0, s9
                  srli         a1, s3, 31
                  sra          s0, s6, s0
                  addi         s10, s4, -47
                  sltu         s5, t3, s3
                  andi         t0, a7, 1495
                  srli         s3, ra, 20
                  add          t6, a6, t6
                  xor          a0, gp, sp
                  or           s10, s0, t3
                  sltu         s1, s6, zero
                  ori          a3, s7, 480
                  srai         t0, s10, 29
                  add          t4, a6, sp
                  srli         s2, s3, 5
                  srai         tp, s7, 11
                  srli         a2, t5, 19
                  lui          s3, 78283
                  slt          s0, gp, a5
                  srai         a4, t2, 24
                  sra          tp, s8, a6
                  addi         tp, t5, -1901
                  xori         s1, s11, 1403
                  slli         s3, a4, 26
                  sra          s2, a0, s6
                  ori          t1, a5, 1043
                  srl          t2, ra, s2
                  nop
                  srai         ra, s6, 9
                  or           t6, a1, a7
                  xori         a1, s1, 1890
                  sll          t5, s1, ra
                  sltu         a4, a6, a7
                  ori          t5, t6, -391
                  xor          t3, zero, a2
                  sltiu        tp, a4, 25
                  slti         a0, a3, 191
                  sltu         s10, a5, sp
                  and          s0, t0, ra
                  ori          s7, t4, 967
                  srli         s11, s0, 1
                  sll          s1, t5, t1
                  ori          ra, a7, -1841
                  add          s8, s11, t1
                  sra          s10, s9, a6
                  andi         s8, s1, -924
                  nop
                  srai         t0, tp, 6
                  lui          s10, 364932
                  sltu         a5, s11, a5
                  andi         s5, a0, -382
                  andi         s2, s5, -1456
                  slti         gp, a4, -1535
                  srai         a7, s2, 12
                  sub          s1, a2, s2
                  sub          s7, a1, s7
                  xori         s2, a1, -1367
                  srl          s7, t4, t6
                  srl          s11, s1, s6
                  or           a2, s5, s5
                  srai         t2, a5, 9
                  srl          a6, a5, s8
                  andi         t4, zero, -1958
                  srli         s2, t1, 19
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           t5, 0x80000000
                  li           a6, 0xffffffff
                  li           t1, 0xffffffff
                  li           tp, 0x5ed28435
                  li           s8, 0x80000000
                  li           a0, 0x9e0572c1
                  li           s5, 0x47415e3c
                  li           t0, 0x0
                  li           s4, 0xe792634
                  add          s5, a4, t1
                  addi         a4, t5, 1289
                  auipc        a4, 259812
                  addi         tp, s4, 36
                  lui          t1, 307921
                  auipc        s8, 836640
                  nop
                  sub          s4, tp, a6
                  add          t5, t5, t0
                  nop
                  addi         s4, t1, 1725
                  sub          t0, s4, tp
                  addi         s4, t0, -905
                  addi         t0, t1, 59
                  sub          s8, t1, a6
                  auipc        s8, 699477
                  add          s4, a6, a0
                  addi         t0, s5, 1611
                  auipc        t1, 274493
                  auipc        t1, 616049
                  lui          t0, 373778
                  add          a4, a0, s5
                  addi         a6, t0, 1527
                  nop
                  addi         tp, a6, 1880
                  auipc        t0, 254520
                  addi         t5, s5, -916
                  lui          s5, 422661
                  addi         t1, t5, -1676 #end riscv_int_numeric_corner_stream_3
                  andi         s10, a5, -50
                  slt          s10, t3, t0
                  addi         t1, zero, 86
                  xori         t5, s1, -788
                  and          tp, gp, t0
                  lui          a6, 235080
                  slt          t6, a7, a6
                  lui          s0, 989806
                  xori         a6, zero, -410
                  xori         s7, s4, 1499
                  lui          t1, 966032
                  sra          t4, t2, s4
                  srli         s7, a0, 6
                  and          a0, tp, s10
                  xor          t0, a3, s6
                  slt          t1, a0, a7
                  sub          s11, a4, tp
                  slt          s7, t1, s9
                  slti         s10, t0, -27
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           t0, 0x0
                  li           a5, 0x0
                  li           gp, 0x80000000
                  li           s1, 0xffffffff
                  li           s10, 0x80000000
                  li           s7, 0x3865d89e
                  li           s3, 0x80000000
                  li           a4, 0xffffffff
                  li           a3, 0x80000000
                  sub          s5, t0, a5
                  add          gp, a3, gp
                  sub          a4, s1, s7
                  nop
                  sub          gp, gp, a3
                  addi         a3, s7, -1154
                  auipc        a4, 310164
                  add          s7, t0, a3
                  nop
                  addi         a4, a5, -719
                  auipc        a4, 760378
                  auipc        s7, 608227
                  lui          s10, 353976
                  nop
                  nop
                  nop
                  add          t0, t0, gp
                  nop #end riscv_int_numeric_corner_stream_4
                  srli         t0, a1, 24
                  add          a5, s5, s4
                  sra          s5, t2, zero
                  nop
                  slli         s11, s10, 26
                  sra          tp, t3, s9
                  auipc        s11, 990773
                  slli         zero, t3, 1
                  or           zero, a2, s7
                  auipc        s0, 863745
                  srli         a4, a7, 23
                  or           zero, gp, t5
                  slt          a6, s0, zero
                  slt          s2, t4, a1
                  auipc        s0, 1036047
                  sltu         s11, s4, a7
                  sub          t2, s2, gp
                  ori          a2, s6, 395
                  addi         a0, t3, 41
                  sll          a4, a2, s0
                  srl          s11, t1, s1
                  sra          ra, a5, t6
                  andi         t4, a1, 324
                  sra          a1, a6, a5
                  slti         s11, zero, 46
                  sra          t6, s4, a7
                  sra          t2, s3, a1
                  sll          s1, t1, s0
                  sra          ra, t6, t4
                  andi         t1, a4, 1390
                  addi         a3, s0, -561
                  xor          ra, a0, a7
                  srl          tp, s10, zero
                  or           t4, s0, a1
                  xori         s7, tp, -1246
                  auipc        a7, 40288
                  or           t3, a7, ra
                  slli         s2, zero, 18
                  ori          s3, t6, -783
                  and          a3, t6, t0
                  xor          t2, a4, a0
                  sub          t4, a3, tp
                  srai         s1, s0, 27
                  auipc        s5, 648644
                  or           a4, s9, s8
                  sltu         a1, s7, t1
                  lui          s10, 662412
                  andi         s2, t5, -1788
                  ori          s3, s10, -1753
                  xori         t5, t4, 1039
                  addi         a7, s6, 1999
                  xori         zero, t0, 1523
                  sltiu        s3, a3, -1675
                  xor          a2, sp, a6
                  sltu         a0, s6, s4
                  auipc        a4, 721430
                  sltiu        s8, s1, 1969
                  sltu         a7, s3, a5
                  slli         ra, s11, 3
                  srli         a6, s7, 5
                  add          t5, sp, a4
                  xor          a1, a7, tp
                  auipc        t2, 123497
                  sltiu        s2, zero, -272
                  xor          s3, a5, t0
                  nop
                  andi         a2, a4, 1355
                  sub          a1, t5, a5
                  srai         s3, a6, 30
                  sll          s5, s7, a5
                  srli         a5, s3, 15
                  slti         t4, s4, 834
                  sltu         s10, a0, s8
                  ori          a3, t4, -560
                  slt          t6, a1, a4
                  lui          t2, 856046
                  xori         a6, t4, 710
                  nop
                  sra          ra, t1, sp
                  srai         s4, a0, 12
                  sll          t6, s7, t2
                  lui          a1, 228834
                  andi         gp, s7, 1199
                  addi         t5, t1, -900
                  lui          a6, 435606
                  add          s4, a5, tp
                  xor          a4, t6, s10
                  srai         s10, t3, 29
                  ori          a0, s9, -1160
                  sll          a2, a4, s9
                  slli         t6, t6, 7
                  sra          t4, t3, a6
                  srli         gp, a7, 2
                  or           a4, t2, a4
                  sub          t0, s4, s8
                  lui          t2, 934054
                  xor          s11, t0, s5
                  lui          a1, 914892
                  srli         t5, t6, 7
                  slli         s8, a6, 5
                  srl          a5, s3, s9
                  slti         a4, a3, -253
                  andi         ra, a6, 156
                  srl          a4, zero, t4
                  xori         t5, s4, -1674
                  ori          ra, s10, -149
                  sub          a0, s11, zero
                  xori         t2, t1, -1333
                  sra          t2, a6, s1
                  slt          s8, a7, s9
                  slli         t5, t4, 11
                  sltiu        zero, t0, 1597
                  sltu         t3, s8, a2
                  add          a3, t2, s6
                  nop
                  add          t6, t3, s6
                  add          s7, zero, s2
                  sltu         s0, s1, s0
                  sll          s7, t4, s0
                  xor          t0, s5, t5
                  srl          t1, t5, ra
                  add          a5, s8, t5
                  and          a2, s5, t3
                  sltu         t1, a2, a1
                  andi         s3, t5, -1370
                  addi         tp, s7, -492
                  auipc        s0, 609851
                  sltu         gp, a1, s3
                  add          t5, s3, a4
                  addi         t1, t4, 258
                  sub          t4, s4, s9
                  sra          t6, t0, s2
                  sll          a0, s3, s1
                  sra          a3, s1, t5
                  ori          t4, s8, -1487
                  auipc        a6, 1025379
                  addi         gp, t5, 1424
                  srai         s5, s3, 5
                  or           tp, a7, t4
                  sub          t3, a6, s10
                  sltiu        a1, s4, -53
                  nop
                  ori          t3, a1, 1955
                  slti         t5, t6, 1507
                  sltu         a5, gp, t4
                  sub          t6, s0, s0
                  addi         s7, a2, -1973
                  add          a4, s4, a3
                  srli         a2, s6, 11
                  sltiu        t3, s7, 1702
                  xor          a3, s7, zero
                  slti         tp, s6, -1096
                  ori          s3, s9, -1940
                  xori         s7, t1, -1482
                  addi         zero, a2, 1670
                  srai         a5, gp, 15
                  slt          a4, t5, t4
                  nop
                  add          t5, s2, a1
                  and          a2, t0, t3
                  srl          s1, a3, a2
                  srl          s4, s2, zero
                  xori         t1, a6, 396
                  nop
                  ori          zero, s5, 838
                  slti         a2, t4, -1263
                  sltu         s1, a4, a4
                  lui          a3, 1047192
                  slt          t6, s6, a1
                  sub          t1, zero, s10
                  sltu         a1, t2, s10
                  addi         s4, a2, 1205
                  xori         s7, a2, 1349
                  ori          a4, t5, 1275
                  add          s1, a4, sp
                  nop
                  sltu         s7, ra, s4
                  sll          t6, s3, t0
                  slt          a1, s9, zero
                  lui          t1, 471899
                  add          a1, a4, zero
                  xor          s0, a3, s2
                  xor          s11, s0, a4
                  add          s1, t1, s8
                  xori         t5, s6, -59
                  and          s7, ra, a4
                  slt          a6, s6, tp
                  and          a3, a4, a6
                  xori         t1, t0, 457
                  or           tp, s10, s10
                  slt          t1, t1, t0
                  nop
                  sltiu        t0, s5, -1999
                  lui          zero, 13229
                  addi         t4, a7, -208
                  srli         a3, s1, 2
                  srai         s11, t1, 16
                  sltu         s5, ra, a6
                  sltiu        t6, a0, -1637
                  add          a6, a3, s5
                  slti         s1, a7, 1438
                  srli         s1, a5, 7
                  srai         a5, a2, 3
                  ori          t0, s11, -870
                  sltu         a5, s11, a2
                  srai         t3, s3, 26
                  sll          s1, tp, a2
                  sra          a6, t3, s0
                  sra          s0, s2, a2
                  lui          s5, 209199
                  add          gp, a4, zero
                  slli         ra, a3, 31
                  sltu         gp, a2, a6
                  sll          t3, zero, s0
                  lui          s2, 250712
                  auipc        s0, 254184
                  slti         t2, a1, -707
                  sub          a1, a6, sp
                  sub          a1, s1, t5
                  slti         s3, a7, -181
                  sra          t3, t4, s8
                  auipc        s11, 125142
                  xor          gp, t0, a1
                  slt          s1, s8, a3
                  sltiu        s10, t5, 2006
                  slt          ra, a1, t5
                  xor          s5, t3, s4
                  slt          a6, s2, a6
                  addi         t5, a3, -1033
                  srai         a7, s0, 6
                  add          zero, s3, sp
                  nop
                  slli         a0, s3, 31
                  sll          a1, s5, s4
                  slli         a2, a2, 19
                  sltiu        t6, t3, 727
                  srl          a1, t4, t6
                  slt          a7, a6, s11
                  srai         t6, s9, 17
                  sltu         s10, gp, s8
                  auipc        t1, 505614
                  ori          t3, t4, 101
                  sltu         s3, s7, gp
                  xor          zero, s1, t4
                  xori         ra, s5, 1182
                  and          ra, t3, s3
                  addi         s0, a6, 1449
                  addi         t1, a3, 1950
                  nop
                  andi         s1, zero, -1147
                  and          a7, ra, a7
                  sltu         zero, a4, zero
                  srl          s3, s9, gp
                  add          tp, s8, sp
                  add          t5, gp, s10
                  auipc        a7, 1029790
                  sub          s0, a1, s11
                  lui          s10, 953925
                  srli         tp, zero, 10
                  auipc        s7, 885548
                  sltu         s10, t0, s5
                  sltu         s11, t0, a2
                  srai         t5, t3, 0
                  lui          a5, 927658
                  srai         s1, t2, 21
                  auipc        s7, 1033761
                  and          t3, s4, s3
                  srl          s7, s2, zero
                  sltiu        a4, s9, 1820
                  srli         a6, a5, 19
                  slli         tp, t3, 2
                  xor          s11, s10, a5
                  ori          s4, zero, 407
                  sltiu        s10, a5, -62
                  xor          t3, s4, a4
                  sll          gp, a5, s2
                  ori          a6, a0, -1078
                  add          a5, zero, s6
                  xori         a2, a3, 549
                  lui          t0, 618802
                  sltiu        t5, a0, 940
                  srli         gp, s10, 29
                  slti         t0, a2, 294
                  slli         s3, t1, 10
                  add          zero, t4, s0
                  slli         t2, t6, 12
                  srai         t2, gp, 10
                  and          t4, a7, s3
                  or           ra, s3, s9
                  srl          s2, t0, t3
                  sra          a0, t0, gp
                  sra          s11, t6, a1
                  or           a4, t2, s2
                  sub          t1, t2, ra
                  xori         t5, a6, 837
                  and          tp, a4, s3
                  sub          s1, s11, s6
                  lui          a5, 104604
                  add          t3, s8, a1
                  slli         a2, s0, 14
                  add          t1, t1, a2
                  addi         s2, s11, -35
                  or           a7, s5, s7
                  and          s11, t1, s11
                  and          gp, gp, s11
                  slt          t1, s3, s8
                  andi         s5, tp, 1128
                  srl          a4, zero, s4
                  sra          a7, s8, a3
                  srai         s1, t3, 25
                  sltiu        s8, s0, 773
                  srai         s3, t6, 13
                  slti         tp, s0, -1097
                  addi         t5, tp, -1025
                  slt          gp, s3, a3
                  xor          a2, t5, a6
                  srai         t4, tp, 22
                  or           s7, t1, t0
                  slli         tp, s7, 27
                  ori          a3, sp, 565
                  srai         t4, s10, 27
                  xor          zero, a4, s11
                  andi         a0, ra, 150
                  srli         a5, s3, 0
                  or           a6, t1, a2
                  and          s5, s6, a5
                  xor          t1, s4, t2
                  slt          s8, a0, a1
                  addi         a4, a4, -1848
                  addi         a1, ra, 459
                  add          a6, a6, s4
                  sltiu        a6, s7, -518
                  slli         s7, t4, 13
                  sll          s3, t3, a6
                  srli         a7, s3, 27
                  srli         a1, t4, 31
                  srl          a3, s7, tp
                  slt          t2, t4, t5
                  sltu         ra, a1, s2
                  srli         s2, s5, 16
                  sltiu        a7, t0, 1151
                  sltu         a3, t5, s8
                  or           s3, s5, t6
                  xori         t1, s11, 1805
                  sltiu        zero, t2, 1103
                  sltiu        s10, a1, -1570
                  sll          gp, a5, t4
                  srai         a4, s9, 13
                  sltu         a1, sp, gp
                  lui          s0, 130614
                  srai         s8, a0, 10
                  lui          tp, 111613
                  srl          a5, gp, s7
                  lui          a6, 44731
                  xori         t0, s0, 1280
                  ori          s8, t2, 1286
                  or           s11, a1, t6
                  auipc        a4, 158666
                  and          a4, a2, a6
                  sll          s7, t4, s10
                  sltiu        t0, a3, -1722
                  auipc        t2, 1022805
                  sub          s8, a6, a2
                  nop
                  srl          s2, s8, a5
                  lui          s4, 49779
                  sltiu        gp, s0, 1871
                  add          t4, s7, s2
                  ori          a7, a4, 792
                  srai         s4, s6, 3
                  or           t0, zero, a4
                  sra          a7, t3, a4
                  ori          a3, s7, 56
                  sra          t5, a3, s11
                  sub          s3, a2, a4
                  sltiu        s10, a2, -481
                  add          gp, s10, gp
                  addi         a3, ra, -421
                  ori          s5, a5, 1915
                  xor          a6, a0, s0
                  sub          s8, s11, sp
                  sub          s2, a6, s8
                  slli         a7, a2, 17
                  sub          s4, tp, a1
                  ori          t5, s11, -306
                  sltiu        s11, t2, -160
                  slti         t1, tp, 1702
                  sra          s8, s1, gp
                  sub          a3, t2, sp
                  or           t5, t2, t0
                  sltu         a7, a4, t3
                  lui          a7, 179013
                  or           ra, s6, s9
                  sltiu        a0, s0, 407
                  auipc        s4, 973943
                  and          zero, gp, s2
                  addi         t6, tp, -553
                  auipc        a3, 920559
                  slt          a6, a2, a1
                  addi         t2, t2, 731
                  sll          s1, s5, s11
                  sltu         s2, s11, a4
                  srl          zero, t0, s0
                  xor          t4, a7, s11
                  xor          t1, a4, t1
                  srli         a7, s10, 20
                  slli         s10, a4, 13
                  addi         s5, t6, -1495
                  ori          tp, s11, -1790
                  slli         t1, a7, 2
                  sub          gp, s6, a4
                  xor          t3, t1, t2
                  xori         s10, ra, 1778
                  sll          a7, t3, s8
                  sra          s7, s9, a6
                  srl          a2, tp, a4
                  xor          gp, a1, zero
                  sra          zero, s11, a7
                  auipc        a6, 733234
                  sra          s10, s10, zero
                  xori         s5, ra, -752
                  sub          s11, s11, s10
                  lui          s10, 411204
                  slt          t3, s8, a5
                  slti         s11, ra, -1197
                  xor          t4, s6, s7
                  xor          s4, a1, t1
                  srli         a7, t4, 27
                  slli         a3, s2, 27
                  slt          t6, s9, t6
                  sll          s4, ra, s3
                  slli         s5, s1, 9
                  andi         a7, zero, 286
                  sra          t4, s5, sp
                  and          a1, a1, t0
                  srl          a1, a4, s9
                  or           s8, s5, s0
                  srli         t5, a6, 6
                  xor          a4, s5, tp
                  slti         a4, sp, 1914
                  xori         gp, t6, -31
                  srli         s11, t4, 30
                  sltiu        t6, s4, -1959
                  slti         t1, a0, 1268
                  addi         t1, a3, -928
                  sltiu        t4, ra, -716
                  slti         a4, s4, 1983
                  ori          t6, t4, -1462
                  sll          s3, gp, s2
                  sub          t0, t6, s9
                  srl          t4, t0, a3
                  sltu         s1, tp, s5
                  srl          a7, a4, t4
                  sll          s0, a6, ra
                  slt          t6, sp, a0
                  srai         a7, ra, 20
                  ori          t1, t5, 972
                  sll          t6, s4, s8
                  add          a0, t0, a6
                  add          a4, a4, t6
                  ori          s5, tp, -473
                  or           s10, ra, zero
                  sub          t5, a0, a7
                  nop
                  xori         ra, s3, 1079
                  xor          zero, a0, a7
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           t2, 0x0
                  li           a2, 0x0
                  li           s5, 0x2a922710
                  li           s10, 0xffffffff
                  li           tp, 0x0
                  li           a4, 0x96e56561
                  li           s1, 0x98fc0e50
                  li           s0, 0xa15be25f
                  li           a5, 0x0
                  auipc        a0, 2694
                  nop
                  add          tp, a4, s0
                  addi         a0, a0, 1636
                  nop
                  nop
                  lui          a0, 333252
                  nop
                  sub          s5, a5, a4
                  sub          a2, t2, tp
                  addi         a4, s0, 1148
                  add          s10, a5, a5
                  addi         a2, a0, -1545
                  nop
                  addi         tp, a4, -129
                  lui          s1, 990046
                  nop
                  nop
                  auipc        s10, 829133
                  auipc        a2, 125455 #end riscv_int_numeric_corner_stream_7
                  add          t3, s1, s10
                  sra          gp, t6, t3
                  or           s4, s5, s0
                  andi         s8, ra, -332
                  sra          t1, ra, s7
                  add          a2, a2, s2
                  srli         s8, s0, 22
                  addi         s1, a1, -1230
                  add          s8, a7, t6
                  slt          s2, s2, tp
                  slli         s10, s1, 8
                  or           s1, t5, s4
                  sra          tp, s2, s10
                  sll          s4, ra, ra
                  srli         s5, s1, 27
                  xori         t0, ra, -917
                  sltiu        t2, t1, -1124
                  sltu         t4, a7, t0
                  xori         gp, s8, 1445
                  auipc        a0, 486516
                  sltu         a3, t2, s3
                  nop
                  slt          t0, s7, a6
                  sltu         t5, a2, a3
                  auipc        s5, 394567
                  slt          t1, ra, gp
                  sltiu        a3, s9, -1535
                  slti         s0, sp, 332
                  ori          s10, s3, 398
                  lui          a3, 19286
                  ori          a4, sp, -1855
                  and          s11, t0, a6
                  auipc        tp, 469810
                  srai         a0, gp, 14
                  sra          s2, zero, s11
                  lui          s3, 17429
                  slli         a4, t4, 9
                  auipc        gp, 158775
                  sub          zero, s8, s10
                  xori         ra, t6, -878
                  xori         t3, a6, 1254
                  sltiu        s5, a4, -201
                  sra          zero, a0, a1
                  slt          s3, a3, a4
                  sra          tp, s1, s2
                  add          gp, sp, s9
                  addi         ra, t5, 616
                  ori          t4, s10, -106
                  sll          a3, a5, s1
                  sll          t5, s7, t2
                  xor          t6, a5, t3
                  lui          a6, 689664
                  srai         s10, tp, 17
                  sra          t1, s7, s11
                  xori         a4, t0, 254
                  sltiu        a0, gp, -21
                  sub          t0, s1, t0
                  slt          a7, s3, s6
                  xor          a7, t2, s6
                  sltu         s1, sp, tp
                  xori         s2, s3, -551
                  sll          s3, s7, a3
                  xor          s11, a7, t4
                  xor          t2, a7, tp
                  sltu         a2, a1, a4
                  or           s2, t4, s0
                  sltu         tp, a5, gp
                  slt          t0, zero, t6
                  sub          s7, gp, a3
                  addi         a5, a5, 1353
                  srli         t5, a0, 5
                  and          a5, t5, t2
                  auipc        t0, 461109
                  srli         gp, zero, 0
                  srl          gp, t2, s9
                  and          s5, a4, a2
                  nop
                  xor          a7, sp, s7
                  andi         t4, s3, -1023
                  sll          t0, s0, t0
                  sltiu        s5, s4, 826
                  nop
                  nop
                  and          s4, a3, ra
                  sub          t5, s0, s2
                  lui          s1, 832888
                  xori         tp, ra, 1879
                  nop
                  srai         t6, s6, 6
                  sra          s4, a3, gp
                  addi         t4, t2, 608
                  sub          t1, a2, s2
                  srai         ra, t5, 29
                  andi         s1, gp, -1620
                  slti         t6, s4, 101
                  or           t4, s6, a6
                  nop
                  slti         s0, t2, -152
                  xori         t2, s10, 1908
                  add          a3, a1, t4
                  slti         tp, a5, -705
                  sub          a6, s6, t1
                  sub          s1, s7, a3
                  lui          t1, 25656
                  srai         s2, s10, 9
                  nop
                  slt          ra, s8, t0
                  auipc        s1, 596620
                  and          s7, t0, t0
                  xori         a0, gp, 1080
                  srli         zero, tp, 20
                  slli         t1, a7, 6
                  slli         s7, t2, 0
                  add          s3, s8, ra
                  sltu         s5, s5, t5
                  xor          s8, tp, s0
                  andi         gp, s10, -1122
                  ori          a0, t2, -138
                  srai         s5, s1, 23
                  xori         a1, t5, 366
                  sub          t3, t0, s5
                  slti         t2, a7, 450
                  sub          a3, s5, t6
                  slt          s1, s7, t6
                  auipc        a2, 956540
                  auipc        a7, 121421
                  ori          s8, s2, -459
                  sll          a6, a2, gp
                  and          t6, s7, s3
                  slli         t5, t3, 17
                  lui          a6, 891790
                  ori          ra, zero, -722
                  slli         zero, ra, 24
                  xori         s2, s7, -813
                  srl          t3, zero, t3
                  lui          s2, 917101
                  sltiu        t3, gp, -2033
                  lui          gp, 557507
                  slt          t5, t3, t5
                  add          s10, s2, a1
                  and          a3, s0, s11
                  or           a0, a0, t1
                  auipc        t4, 364169
                  xor          s0, tp, s6
                  sra          a5, s9, t2
                  xor          a7, t1, ra
                  sltiu        zero, zero, 239
                  xori         a7, a2, -937
                  or           a3, a6, s1
                  andi         a3, s3, -574
                  sll          s0, s4, s11
                  sltu         s7, gp, gp
                  sll          s2, a2, a7
                  slli         t5, s11, 19
                  sll          gp, t4, a5
                  addi         a6, s11, -325
                  xor          s5, s11, zero
                  srai         gp, t1, 12
                  ori          s4, a7, -1095
                  nop
                  nop
                  andi         a3, s8, 985
                  sltiu        a6, t3, 1420
                  ori          s4, a3, 387
                  srli         s5, a5, 30
                  or           s1, s0, s7
                  addi         zero, t3, -668
                  and          t5, a7, t2
                  sltiu        s5, s1, 875
                  srli         t2, s11, 9
                  addi         t6, a0, 1003
                  xori         s1, a7, -1121
                  sll          t1, t0, t1
                  xori         a7, a1, 165
                  slt          a5, t2, zero
                  slli         s3, s1, 11
                  slti         s1, a3, -1169
                  addi         t5, s11, 30
                  srli         t6, a7, 17
                  auipc        s10, 1404
                  and          s2, s2, s1
                  addi         a5, s4, 1493
                  sltiu        a7, s8, 1766
                  addi         a6, s11, 785
                  sub          t1, a0, s7
                  add          a6, ra, t6
                  slt          s5, t5, t5
                  sra          a6, s4, s2
                  slti         a3, s10, 1535
                  xori         a3, s0, 1699
                  nop
                  slli         t2, a2, 6
                  sra          t5, a1, sp
                  srai         s1, t5, 10
                  add          s7, tp, s7
                  add          a6, a0, s10
                  andi         tp, s1, 2019
                  sub          t0, a4, s11
                  sra          gp, s8, gp
                  slli         a3, s11, 4
                  and          s1, a2, s5
                  slti         s3, s3, -1415
                  add          s7, sp, s3
                  andi         s0, s3, -43
                  sub          s0, tp, t5
                  nop
                  ori          a7, gp, -1855
                  sra          t1, s6, s8
                  slli         a0, zero, 9
                  slti         s3, a3, -1996
                  andi         s1, s2, 228
                  lui          a7, 679090
                  auipc        s1, 404754
                  slt          a4, s8, s0
                  add          a0, t3, a1
                  addi         a2, s8, 637
                  sra          tp, s10, a7
                  slt          a0, t2, s11
                  sltu         s7, s2, zero
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s7, 0x80000000
                  li           gp, 0xffffffff
                  li           a2, 0xad24060c
                  li           t4, 0x80000000
                  li           s3, 0xffffffff
                  li           s2, 0x15153931
                  li           ra, 0x0
                  li           s5, 0xa3961e70
                  li           t6, 0x7e2f1c7a
                  auipc        tp, 211634
                  lui          a2, 311524
                  sub          t4, tp, s7
                  auipc        s3, 383187
                  nop
                  auipc        t4, 810573
                  sub          s3, ra, gp
                  sub          tp, s7, s5
                  lui          s7, 563715
                  auipc        a2, 636120
                  lui          ra, 987433
                  sub          a2, t4, s5
                  add          gp, t4, s7
                  add          s2, s2, ra
                  nop
                  add          t4, s7, tp
                  auipc        t4, 828201
                  nop
                  add          s7, s5, gp
                  add          gp, tp, s7
                  lui          s7, 966092
                  addi         s5, ra, 1080
                  lui          s3, 434118
                  add          a2, tp, a2
                  lui          s5, 61789
                  addi         tp, tp, 1595
                  add          s3, s7, ra
                  addi         t6, s3, 1556
                  sub          s2, s3, a2 #end riscv_int_numeric_corner_stream_17
                  nop
                  nop
                  srli         s8, zero, 10
                  xor          s7, s11, s7
                  ori          t2, s7, -649
                  sub          a2, t1, s5
                  add          a4, s3, a5
                  xor          s10, a0, s1
                  ori          s3, a2, -2031
                  ori          a3, a1, -134
                  slt          a3, ra, s9
                  sra          s11, t5, t3
                  xor          a1, a3, s2
                  sub          tp, s7, a7
                  sltu         s11, a5, t4
                  auipc        s4, 1013436
                  sltiu        tp, s10, 818
                  nop
                  sub          t5, s6, s1
                  sub          s3, a2, a3
                  lui          s1, 662669
                  sltiu        s8, t5, -65
                  xori         s11, a0, 1235
                  and          ra, a5, a2
                  add          s7, sp, s0
                  srli         t6, t0, 16
                  slti         t2, s2, 1508
                  nop
                  sll          a4, gp, s0
                  srl          a0, t2, zero
                  auipc        a6, 868525
                  and          t1, s3, s1
                  xori         s0, s4, -1204
                  slli         gp, a0, 17
                  sltiu        gp, zero, 657
                  srli         zero, t2, 30
                  sra          s2, s10, ra
                  slti         a1, gp, 1599
                  srli         s0, a0, 20
                  addi         a1, gp, -790
                  slt          gp, t3, a6
                  slt          a7, t3, t4
                  or           s4, gp, a3
                  slti         zero, t2, 1295
                  andi         a0, a1, 179
                  add          zero, a0, s1
                  ori          t2, t1, -1699
                  xori         a7, t2, 1268
                  slli         s7, t2, 11
                  ori          s8, a5, -281
                  ori          s3, gp, -538
                  sll          t6, s11, t0
                  slli         s7, a6, 7
                  add          t1, t4, s2
                  add          s2, t1, s9
                  xori         s5, s1, -1374
                  lui          a3, 352350
                  sltiu        t1, gp, 1417
                  or           s1, s4, t4
                  slti         a1, s11, -1541
                  addi         s8, s3, -1860
                  ori          s4, a3, -1969
                  sltu         s4, s5, s3
                  srli         zero, s2, 18
                  srli         s5, t6, 15
                  sltiu        a2, ra, 2035
                  sltiu        a0, ra, 1285
                  or           t5, t1, t2
                  lui          t3, 930182
                  srli         s1, s3, 1
                  sub          s2, s6, s8
                  add          ra, s0, t0
                  srli         s2, s8, 22
                  slli         gp, a2, 10
                  xor          t5, t4, s8
                  and          a1, a1, s2
                  slt          a2, t5, a0
                  xor          a2, zero, a2
                  andi         zero, a2, -1566
                  nop
                  slti         a2, s6, -1958
                  xor          ra, a7, a5
                  auipc        s2, 642113
                  sra          t0, s2, a2
                  slt          gp, gp, t0
                  srli         s7, a7, 20
                  andi         s8, t0, -745
                  auipc        zero, 488821
                  auipc        gp, 89237
                  andi         t6, t4, -1884
                  slti         s8, a2, -1897
                  or           a3, s4, zero
                  andi         s0, s5, 1071
                  sub          t0, s11, s1
                  slli         a7, gp, 29
                  or           a2, zero, zero
                  or           a3, a3, t6
                  add          s10, s4, s5
                  srli         a5, s6, 16
                  sll          a6, s0, t1
                  sra          s2, s5, s0
                  sll          s2, a7, sp
                  xor          a5, t0, s11
                  sltu         t2, s4, t5
                  sub          a7, s6, s2
                  auipc        s5, 699644
                  slt          t3, t6, s4
                  sltiu        t3, t3, 692
                  sub          t4, a2, t4
                  nop
                  sll          a2, tp, s7
                  addi         s4, t2, -955
                  andi         t4, t6, 1514
                  srl          t2, s3, ra
                  xor          s4, a4, s2
                  slli         a7, ra, 24
                  auipc        s8, 820548
                  addi         t2, s10, 1517
                  or           t3, a1, a4
                  srl          t2, s6, s3
                  slt          s11, ra, s7
                  slt          t6, t2, s8
                  xori         s3, s9, -64
                  xor          s1, a4, s10
                  and          s11, t0, sp
                  srl          s3, a5, a7
                  slt          zero, s4, gp
                  sll          a5, ra, s8
                  xori         a7, t3, 443
                  auipc        s0, 108424
                  slti         s2, s11, 930
                  slli         a4, t5, 22
                  addi         s7, s5, -1707
                  srl          ra, sp, s11
                  andi         s0, ra, 1254
                  xor          s0, a4, a1
                  sltiu        a3, s5, 1889
                  ori          t5, s11, 422
                  xori         a7, sp, 1056
                  xor          s3, s4, sp
                  nop
                  sltu         s8, a1, a5
                  xori         tp, s4, 2033
                  sltu         s2, a2, a7
                  andi         a5, t1, 931
                  auipc        s7, 153938
                  sub          s1, s11, s0
                  sra          a0, t4, gp
                  srl          a7, a2, a5
                  auipc        a1, 781000
                  srl          s5, a1, a1
                  srai         a5, a2, 4
                  and          tp, a5, s2
                  srli         s1, a6, 7
                  xori         s1, t5, -1308
                  ori          t0, a5, -1312
                  slti         t1, t1, 1336
                  sltiu        s3, t5, 1634
                  andi         a5, s9, 1364
                  add          a4, a3, a1
                  slt          a3, a2, t4
                  andi         a2, tp, 1617
                  xori         t3, s0, 910
                  sra          a5, a4, a4
                  nop
                  andi         s2, t1, 669
                  and          s8, a1, a7
                  xori         a2, a7, -1230
                  lui          ra, 1048069
                  slt          a2, a1, gp
                  srai         s0, s9, 25
                  lui          t1, 587417
                  srl          t3, t5, a7
                  slt          a5, a2, ra
                  srai         a3, s7, 15
                  sltiu        s7, s10, -1482
                  srli         t4, s4, 16
                  srai         t1, tp, 12
                  srli         s5, s11, 21
                  nop
                  auipc        t3, 632515
                  sra          s5, a6, t6
                  andi         t5, s3, -164
                  sltu         t1, s0, t6
                  addi         s11, a3, 208
                  srl          tp, s0, sp
                  sltiu        t2, t5, 1830
                  srli         t4, tp, 24
                  srai         t6, a5, 9
                  nop
                  auipc        s10, 181891
                  ori          s3, t3, -1047
                  sra          s10, tp, s2
                  sltu         t1, s0, a0
                  addi         s2, s6, -823
                  addi         s7, tp, 94
                  and          t3, ra, tp
                  sub          tp, a0, a7
                  sub          s3, a5, a1
                  srai         t1, s0, 5
                  sltiu        t1, s6, -1607
                  sra          t0, t3, t2
                  slt          a7, s5, a2
                  slti         t4, s9, -136
                  addi         s10, s5, -1222
                  xori         s0, s0, -1905
                  sub          s3, s9, s10
                  andi         a4, s1, 1188
                  andi         a1, tp, -1241
                  ori          a4, s2, 1886
                  auipc        s7, 1028074
                  ori          s11, s10, -17
                  ori          zero, ra, 765
                  sltiu        a5, s1, -835
                  sra          s8, s7, zero
                  lui          a1, 372035
                  sll          a5, a6, gp
                  add          s8, t6, tp
                  sub          zero, zero, ra
                  slt          s2, ra, a2
                  nop
                  sltu         zero, s10, a1
                  srai         s1, s8, 30
                  and          s10, s3, s7
                  sltiu        s11, t2, 300
                  srai         t2, gp, 9
                  xor          t3, gp, a2
                  sltu         a2, s6, t4
                  auipc        a6, 130791
                  srli         s11, tp, 7
                  andi         a6, s0, 45
                  sltu         t5, s9, t5
                  or           s0, t5, s10
                  xor          s0, a2, t6
                  sltu         a5, t0, s5
                  xor          a5, t4, s10
                  sltiu        tp, a4, -157
                  xori         t3, t6, -508
                  or           s8, s8, a7
                  srli         s10, t6, 13
                  lui          t0, 576190
                  and          s0, tp, a7
                  sltu         zero, s9, t5
                  or           a7, t4, s11
                  srli         s1, s7, 11
                  andi         a6, s0, -352
                  sra          t4, s0, t6
                  ori          s2, a5, -1802
                  xori         s8, a2, 618
                  sra          t1, s2, a2
                  srli         tp, s3, 30
                  ori          a7, a4, -975
                  or           t3, s4, s9
                  and          t2, s3, s0
                  and          a6, gp, s0
                  and          s3, s4, s8
                  slti         s10, a6, 142
                  lui          tp, 1025194
                  sra          a0, s1, t2
                  nop
                  sltiu        t0, a5, 1435
                  and          t2, s0, s10
                  andi         s2, s4, 904
                  slti         t6, gp, -355
                  slt          s1, t1, s6
                  auipc        t5, 628143
                  sltiu        s4, s11, -1005
                  slli         a3, a3, 2
                  xori         t3, a4, 540
                  sra          s8, a1, a5
                  xor          t3, s2, sp
                  nop
                  slli         a7, t3, 6
                  andi         a6, zero, -455
                  xor          s4, gp, s10
                  or           tp, a4, s6
                  sll          a1, sp, a5
                  srl          t3, t3, gp
                  add          gp, s10, a5
                  xori         t0, t5, 1275
                  sll          t5, s5, a5
                  ori          t1, zero, 507
                  xor          s7, s0, s11
                  xor          s2, t1, s9
                  add          t2, t1, a6
                  sra          s7, t1, s1
                  xori         t3, t1, 1272
                  srli         t3, t2, 11
                  xor          a0, s4, ra
                  sra          t4, a7, s4
                  andi         t3, s0, -877
                  add          t6, t2, t4
                  srai         s0, ra, 19
                  sra          t5, s3, t1
                  lui          s10, 374892
                  sra          zero, sp, s6
                  lui          s5, 1010361
                  auipc        s4, 73464
                  slt          s0, a2, s8
                  add          a1, t5, t5
                  sra          s10, a6, s7
                  slli         s0, a1, 5
                  slt          a2, t5, a0
                  sub          a5, t4, sp
                  auipc        a6, 1048214
                  and          s10, s3, s10
                  nop
                  or           t0, s1, gp
                  ori          s4, a0, -1881
                  xor          t1, a5, s6
                  xori         a4, s2, 119
                  and          tp, t0, s3
                  auipc        gp, 866346
                  nop
                  slti         t1, a7, 408
                  or           t3, a0, zero
                  srai         t0, a5, 14
                  and          zero, t6, s10
                  or           s7, a2, t0
                  andi         t6, a7, 66
                  lui          a5, 929771
                  auipc        t5, 965363
                  nop
                  addi         t5, a7, -396
                  addi         t6, tp, -1551
                  nop
                  sll          s3, a1, s4
                  sll          s8, s6, s3
                  sltu         t4, s1, tp
                  slti         s10, s9, 1354
                  ori          s3, t3, -990
                  xor          ra, s0, t1
                  srli         s3, s4, 29
                  sltiu        a3, s5, 836
                  add          a4, t3, a4
                  lui          a3, 948136
                  srl          ra, t5, ra
                  addi         t4, t2, -1089
                  xor          a0, s3, s7
                  andi         a3, t0, 1790
                  auipc        s7, 518741
                  lui          t4, 397343
                  nop
                  slli         zero, a1, 24
                  srai         s11, ra, 3
                  slti         s4, tp, -1017
                  or           s3, s3, t3
                  and          s1, a4, s7
                  sub          t3, t5, s8
                  slt          a2, t6, s8
                  slti         s0, gp, -173
                  sll          t4, a4, s4
                  sra          t2, s6, tp
                  slti         t1, t4, -1326
                  lui          a1, 972640
                  slti         s2, a3, 1561
                  andi         a4, a0, 1604
                  slt          a6, a4, s10
                  srli         s11, s0, 7
                  srl          s5, t4, t6
                  auipc        s10, 128764
                  nop
                  sltiu        t2, s8, 1481
                  lui          s0, 253565
                  nop
                  srl          s10, s2, s3
                  or           gp, s6, ra
                  lui          t6, 383862
                  slti         s5, s9, 834
                  sltu         s3, s6, a1
                  slli         a3, a5, 20
                  sra          gp, a2, sp
                  lui          ra, 642527
                  xor          a2, a1, s10
                  srai         t2, s3, 7
                  slti         s1, gp, 239
                  srli         a2, s10, 30
                  or           t2, ra, s11
                  srl          s11, a5, t1
                  ori          t4, s8, 122
                  ori          ra, t0, -1711
                  sltiu        a6, t1, -1996
                  lui          a4, 345546
                  add          a4, s6, a5
                  srl          t1, s8, a7
                  auipc        a2, 284675
                  addi         ra, sp, 90
                  and          t0, zero, s5
                  sll          a6, t1, ra
                  slti         s2, tp, -760
                  sltu         a0, s8, t5
                  addi         t3, s4, 1997
                  sll          a1, a6, s4
                  srai         tp, s10, 15
                  lui          t0, 308339
                  srai         s10, gp, 12
                  srai         s1, s2, 0
                  slt          tp, t5, t1
                  sll          ra, s5, s11
                  srli         s5, s6, 22
                  addi         t0, t6, -428
                  nop
                  lui          a1, 1015439
                  nop
                  and          zero, t6, t3
                  nop
                  or           t6, t0, sp
                  and          s3, a5, t5
                  slli         s10, gp, 23
                  sltiu        a2, a3, -1767
                  auipc        a2, 1032920
                  sub          a5, a7, s4
                  slt          s4, t2, t0
                  auipc        a4, 470466
                  srai         a0, sp, 28
                  xor          a1, s7, t1
                  sub          s5, s3, a3
                  slti         s5, t5, 681
                  slli         s5, s0, 11
                  sra          s2, t2, a2
                  and          s5, zero, zero
                  xor          s1, zero, s7
                  xor          a6, s9, s8
                  and          s0, ra, sp
                  nop
                  or           s1, s3, s0
                  srli         tp, s5, 22
                  addi         t6, t2, -220
                  sltu         s5, t1, s6
                  lui          s8, 102287
                  slli         s5, a7, 22
                  or           a7, ra, a7
                  xori         a7, t4, -1827
                  srli         s2, t2, 30
                  sltu         tp, s3, a5
                  slti         tp, s4, -204
                  addi         ra, s7, -1358
                  srli         t3, a6, 14
                  srli         ra, s11, 17
                  lui          a7, 216133
                  slti         a4, sp, 897
                  xori         s10, a3, -1611
                  sll          ra, t0, t6
                  sub          s0, zero, a7
                  add          t1, a6, s0
                  srli         t4, t6, 22
                  srl          t4, s10, a3
                  ori          t0, s11, -1012
                  srai         s11, t5, 10
                  sltiu        s0, s0, -913
                  andi         s3, s7, -26
                  xori         a5, a4, 1085
                  slli         ra, zero, 24
                  sll          a0, a0, s2
                  slli         s4, s5, 29
                  xor          a5, a1, s4
                  slli         t0, a6, 6
                  slli         s7, a4, 16
                  or           t6, s0, a6
                  sltu         s8, s9, s1
                  sltiu        a7, t1, 822
                  or           s1, ra, s4
                  sltiu        a7, t5, -1129
                  or           s0, t2, sp
                  auipc        a6, 425437
                  nop
                  srli         s0, s3, 27
                  sltiu        t1, gp, -976
                  andi         s0, a3, -407
                  sub          s8, a4, a1
                  sll          t3, t0, t4
                  sltiu        a2, t6, 143
                  slli         a6, ra, 20
                  or           t6, s2, a1
                  sll          s3, a2, a3
                  sra          s0, s10, s4
                  xori         a3, t5, 1256
                  addi         a4, s11, -82
                  add          zero, gp, a2
                  slti         a3, s10, 1647
                  and          gp, t6, t5
                  and          t5, zero, t6
                  andi         zero, s1, -396
                  srai         t6, t0, 28
                  sltu         a4, a1, a0
                  addi         a4, s4, -240
                  or           t3, a4, s9
                  slli         a5, a4, 19
                  srai         a7, t5, 7
                  srai         t6, a1, 3
                  srl          s3, ra, a2
                  lui          a1, 1038727
                  add          s5, s2, a2
                  addi         tp, t0, 1231
                  slti         s11, t3, 525
                  and          t4, a7, t4
                  lui          t6, 958910
                  sltu         t2, s1, a7
                  ori          s4, a0, 343
                  sub          a1, a3, s7
                  add          t1, t4, s11
                  and          s0, s10, s8
                  andi         a6, tp, 600
                  nop
                  sll          a4, t6, s6
                  nop
                  slti         a2, a5, 1523
                  andi         s11, s8, -1361
                  or           a0, s10, s6
                  add          a7, s8, gp
                  slli         t1, s0, 17
                  slli         t2, gp, 6
                  lui          gp, 8288
                  auipc        t4, 563010
                  srl          s1, zero, s5
                  sll          t1, s1, a4
                  xor          s4, a1, t5
                  or           t3, s10, s1
                  xori         zero, a4, -1848
                  slti         s1, ra, -332
                  slli         s11, s0, 28
                  srli         s5, sp, 15
                  slli         a6, gp, 12
                  slti         t2, gp, 1762
                  andi         t5, a1, -88
                  andi         t1, t2, -454
                  sub          t5, s2, s6
                  xori         zero, s9, 2045
                  sltiu        t6, s6, -91
                  ori          t3, sp, 288
                  sltiu        s10, s9, 2003
                  la x25, test_done
                  jalr x0, x25, 0
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
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x2, x22, zero
                  csrr x23, 0x300 # MSTATUS
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 31
                  bne x23, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x23, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x23, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x23, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x23, x13, ecall_handler
                  li x13, 0x1
                  beq x23, x13, instr_fault_handler
                  li x13, 0x5
                  beq x23, x13, load_fault_handler
                  li x13, 0x7
                  beq x23, x13, store_fault_handler
                  li x13, 0xc
                  beq x23, x13, pt_fault_handler
                  li x13, 0xd
                  beq x23, x13, pt_fault_handler
                  li x13, 0xf
                  beq x23, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x22, x2, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

load_fault_handler:
                  add x22, x2, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

store_fault_handler:
                  add x22, x2, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x22, x2, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x22, x2, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x22, x2, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
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
