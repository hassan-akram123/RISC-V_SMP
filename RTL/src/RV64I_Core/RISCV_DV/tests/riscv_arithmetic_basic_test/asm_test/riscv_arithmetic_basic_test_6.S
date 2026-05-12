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
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 0
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0xf867543c
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0xfd16c62a
                  li x4, 0x34683401
                  li x5, 0x2d58411c
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0xf6d93bff
                  li x10, 0xceab37a4
                  li x11, 0xb
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x4609e343
                  li x15, 0xa
                  li x16, 0x80000000
                  li x17, 0x0
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0x5
                  li x23, 0x4
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x0
                  li x28, 0xf3b51d64
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0xf
                  la x22, user_stack_end
main:             li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           ra, 0x0
                  li           t6, 0x3264ebac
                  li           t2, 0x316e8f3f
                  li           a7, 0x80000000
                  li           a4, 0x0
                  li           sp, 0x3c038ae2
                  li           a5, 0x0
                  li           s8, 0x80000000
                  li           s7, 0x0
                  add          sp, a5, a7
                  add          s7, ra, a1
                  nop
                  lui          a4, 266935
                  auipc        a1, 753740
                  addi         sp, sp, 510
                  auipc        s8, 44179
                  add          a7, s8, t2
                  auipc        s8, 749505
                  addi         t2, sp, -1670
                  addi         a5, t2, -762
                  sub          ra, a5, t2
                  add          ra, t2, t2
                  nop
                  auipc        ra, 396259
                  auipc        s8, 629186
                  addi         a7, a1, 430
                  nop
                  auipc        a1, 274715
                  addi         a7, sp, -1014
                  nop
                  lui          sp, 160994 #end riscv_int_numeric_corner_stream_18
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           gp, 0xffffffff
                  li           t4, 0x0
                  li           s8, 0x80000000
                  li           a5, 0x0
                  li           t6, 0x80000000
                  li           t2, 0xffffffff
                  li           s10, 0x80000000
                  li           ra, 0x236ad54b
                  li           t1, 0x80000000
                  sub          t1, t6, t5
                  addi         a5, t6, -1079
                  nop
                  auipc        s10, 747210
                  nop
                  auipc        gp, 328907
                  auipc        s8, 339951
                  sub          t2, a5, a5
                  addi         t1, t4, -769
                  nop
                  sub          a5, ra, t2
                  auipc        t1, 294645
                  sub          s10, s8, t5
                  lui          gp, 1021503
                  add          t5, t5, s10
                  nop
                  add          gp, gp, ra
                  add          t4, t4, t6
                  sub          t6, a5, a5
                  add          ra, s10, t4
                  add          t2, s8, t1
                  add          gp, t1, t5
                  add          t1, t6, t4
                  nop #end riscv_int_numeric_corner_stream_11
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           s8, 0xffffffff
                  li           t6, 0xffffffff
                  li           s10, 0x80000000
                  li           gp, 0x80000000
                  li           s9, 0x80000000
                  li           s0, 0xffffffff
                  li           a1, 0x0
                  li           sp, 0xe8cb885
                  li           s2, 0x0
                  nop
                  auipc        s9, 643041
                  auipc        a7, 481754
                  addi         s0, s10, -658
                  addi         s8, s9, 387
                  add          a7, sp, sp
                  addi         t6, s9, 1314
                  auipc        gp, 750853
                  add          gp, a1, s8
                  add          s10, a1, t6
                  auipc        s10, 671957
                  auipc        s2, 793950
                  nop
                  sub          t6, s0, s0
                  nop
                  auipc        s0, 508109
                  lui          t6, 651970
                  auipc        a1, 931860
                  auipc        s10, 952789
                  sub          s9, s2, sp
                  auipc        s2, 436474
                  sub          s10, a1, s8
                  nop
                  nop
                  nop
                  add          sp, sp, sp
                  sub          t6, gp, sp
                  auipc        s8, 571716 #end riscv_int_numeric_corner_stream_12
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           t5, 0xffffffff
                  li           t3, 0x6825098c
                  li           s8, 0x772de90
                  li           tp, 0xffffffff
                  li           a1, 0x0
                  li           s10, 0x81c2caaf
                  li           a7, 0x0
                  li           s3, 0xffffffff
                  li           t2, 0x80000000
                  add          t3, t3, tp
                  add          tp, t2, s3
                  sub          t2, s8, s10
                  auipc        a1, 786117
                  add          s8, tp, t5
                  sub          s8, t2, s10
                  auipc        tp, 798327
                  nop
                  nop
                  sub          s10, t3, s3
                  auipc        s8, 365591
                  addi         t5, a7, 2011
                  add          a7, a1, t5
                  addi         s10, t3, -1354
                  nop
                  addi         tp, a3, -955 #end riscv_int_numeric_corner_stream_15
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           t1, 0x0
                  li           a7, 0xffffffff
                  li           a4, 0x99922e46
                  li           s1, 0xd823b755
                  li           tp, 0x0
                  li           s4, 0xffffffff
                  li           a6, 0x80000000
                  li           s2, 0x80000000
                  li           s0, 0x2f1aadce
                  addi         a4, a4, -1040
                  sub          s1, s2, s0
                  auipc        s1, 689068
                  add          s0, tp, s4
                  addi         a4, s2, -1014
                  sub          a7, a4, a6
                  lui          s4, 264391
                  auipc        t1, 1033975
                  addi         t1, a4, 1887
                  addi         a7, t1, -925
                  lui          s0, 494452
                  nop
                  nop
                  sub          t5, s4, t5
                  addi         s2, t1, 870
                  addi         a4, a4, 1330
                  add          s0, t5, a4
                  sub          s1, t1, a7
                  addi         s1, t1, -1556
                  nop
                  addi         tp, a6, -1730
                  add          s2, s2, a6
                  lui          s0, 196367
                  add          a4, a7, s4
                  sub          t5, t5, a6 #end riscv_int_numeric_corner_stream_7
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           a0, 0xffffffff
                  li           s7, 0x0
                  li           s0, 0x80000000
                  li           t1, 0xffffffff
                  li           s2, 0xffffffff
                  li           s10, 0xf19117e1
                  li           a7, 0x80000000
                  li           s3, 0x0
                  li           a5, 0xffffffff
                  lui          a2, 89934
                  sub          a2, s3, s7
                  lui          a7, 525575
                  sub          a7, s7, s7
                  auipc        s2, 938549
                  lui          s3, 923326
                  nop
                  auipc        s10, 513622
                  add          t1, a0, a2
                  lui          s0, 978288
                  lui          s7, 911739
                  sub          a5, a2, t1
                  sub          a5, s10, s2
                  auipc        a7, 498060
                  nop
                  addi         s7, s3, 1103
                  nop
                  auipc        a5, 73176 #end riscv_int_numeric_corner_stream_4
                  slti         t5, tp, 960
                  add          tp, t5, s4
                  and          a0, a4, t5
                  slli         s8, tp, 28
                  xor          sp, a3, t4
                  and          t5, t4, a6
                  srl          ra, a4, a5
                  sll          s1, s1, s8
                  sra          a6, t4, a4
                  srl          s4, ra, a6
                  sub          s10, s1, a0
                  lui          s3, 248464
                  or           t3, s3, s11
                  srl          t4, s4, s6
                  xor          t3, s0, s0
                  srl          s8, s6, s3
                  sub          a1, t2, a3
                  srli         a0, s11, 18
                  slti         tp, s9, -910
                  srli         s0, a2, 17
                  slti         s10, a1, 1338
                  ori          tp, s11, -1827
                  and          a1, a7, a5
                  srl          a4, s9, sp
                  slti         a1, s11, -684
                  nop
                  srai         zero, gp, 16
                  slti         s8, s2, -1498
                  auipc        a0, 206900
                  srai         s10, tp, 0
                  srli         s3, a5, 21
                  sltiu        tp, s7, 1268
                  sra          s1, a3, s4
                  add          t0, a6, tp
                  sll          s10, s7, s2
                  add          a1, ra, s0
                  nop
                  slti         a3, s8, 636
                  sltiu        s0, ra, -1139
                  andi         t5, tp, 1317
                  nop
                  xor          s3, t2, ra
                  sub          t0, s4, a5
                  andi         a3, t2, -861
                  sra          s9, t2, a0
                  sra          s2, t1, s9
                  or           s10, t0, s6
                  sub          s0, s0, a2
                  nop
                  or           t3, s2, tp
                  srl          t5, a7, t5
                  sub          a5, a7, s9
                  or           a2, s4, t5
                  xor          a7, t0, s11
                  add          a5, s5, a3
                  addi         a0, ra, 893
                  addi         a1, tp, -510
                  sltiu        a5, a6, -555
                  sub          t4, tp, a7
                  sltu         t4, s2, zero
                  lui          s0, 286206
                  slt          t1, s1, s11
                  sltu         a3, t1, s10
                  srli         t3, a3, 26
                  srl          t1, s6, a5
                  auipc        t3, 858699
                  lui          t1, 118914
                  nop
                  andi         a6, ra, 2028
                  and          a5, gp, gp
                  xori         gp, s5, 1708
                  sub          t6, a2, ra
                  sub          s3, a0, a2
                  nop
                  addi         a7, t2, 904
                  nop
                  addi         ra, s2, -758
                  or           a1, s9, s10
                  nop
                  slt          s9, s4, s8
                  slti         a5, s11, -310
                  lui          s0, 258125
                  xori         t1, s4, 245
                  sltu         a4, sp, a3
                  auipc        gp, 461520
                  addi         t3, a0, 1585
                  slti         s10, a7, 1312
                  srli         t5, s10, 10
                  srai         s3, a6, 23
                  xor          t3, s8, a6
                  lui          a7, 422882
                  add          a5, s9, s11
                  slt          t2, s10, a3
                  srli         ra, a7, 4
                  sltiu        a2, s2, -1977
                  srl          s8, a7, s0
                  srli         gp, s8, 18
                  ori          t0, a6, 1895
                  sltu         a1, a1, tp
                  xori         s2, sp, -289
                  xori         a0, a4, -1191
                  xor          a0, t5, t6
                  sub          s8, ra, s1
                  srai         s3, s1, 25
                  sll          a2, a0, a6
                  sltiu        s3, a4, -1110
                  srli         s4, t0, 3
                  ori          a2, a5, 1171
                  sra          s4, a6, t1
                  slt          gp, s11, ra
                  slti         t6, s9, 1088
                  addi         t1, a3, 767
                  slli         s7, a6, 23
                  sltiu        a0, s5, 773
                  sltiu        t3, t5, 652
                  slli         zero, a4, 30
                  sll          a6, a4, t2
                  sub          s9, a7, t0
                  or           t0, a0, ra
                  srl          s7, s3, s7
                  sub          t4, s11, s1
                  andi         a0, t1, -1352
                  sra          s9, a1, t1
                  sltu         s0, s6, s3
                  xor          a5, t4, t6
                  andi         sp, s3, -604
                  addi         sp, t6, 1262
                  ori          s3, a3, 1556
                  lui          t0, 349388
                  srli         t6, t6, 9
                  or           sp, t2, zero
                  or           gp, a0, s5
                  sltu         t3, a1, s2
                  add          t6, s6, a5
                  lui          a1, 121234
                  andi         s3, a3, -1157
                  xor          t6, s4, t2
                  ori          a5, t4, -1370
                  xori         t5, s11, 820
                  and          t4, zero, s7
                  nop
                  and          t3, t6, s1
                  sra          tp, s9, s8
                  sra          s1, s4, s2
                  add          a6, s7, a1
                  lui          t6, 611269
                  add          t5, sp, t0
                  slli         t2, a1, 31
                  slti         t5, a5, 368
                  sll          s0, s10, t6
                  sra          a6, a7, t4
                  sltiu        a7, s7, -1382
                  srai         s7, t2, 12
                  and          a2, s1, t2
                  xor          ra, a7, t6
                  sub          gp, s1, s1
                  addi         a4, s4, -183
                  slli         zero, a0, 23
                  slt          t5, s1, s10
                  and          tp, t0, s5
                  ori          a2, s2, 937
                  andi         a5, s11, -6
                  ori          ra, tp, -1061
                  srli         t4, tp, 14
                  slti         s1, t3, -1416
                  sub          t5, s3, a2
                  sll          ra, a0, a3
                  and          s8, a4, ra
                  srli         sp, s3, 23
                  slt          s3, s10, a1
                  sltiu        t3, s10, -516
                  ori          a6, a7, 459
                  andi         s2, a3, 1978
                  slt          a5, s5, a3
                  sll          tp, s5, t1
                  ori          a4, ra, 1417
                  and          gp, a0, a3
                  srl          zero, t6, a4
                  ori          a4, t3, -1530
                  and          a4, t1, a1
                  slli         s4, t3, 0
                  slti         tp, gp, 1988
                  srai         t1, t4, 25
                  and          s9, t4, s3
                  auipc        t0, 1012967
                  addi         a1, t0, -977
                  xori         s10, a7, 1566
                  srai         ra, t5, 22
                  or           t5, sp, t2
                  auipc        ra, 479469
                  sltiu        a7, s2, -1002
                  srai         s10, zero, 8
                  add          a6, s1, gp
                  xor          t1, t4, s8
                  sltu         sp, s1, s7
                  addi         a5, s1, 1236
                  slli         t1, s2, 8
                  sll          t3, s6, s2
                  slt          t2, ra, t2
                  andi         t4, t0, -381
                  add          s9, t1, t2
                  xor          a4, a5, t6
                  or           zero, s4, s3
                  slti         t3, t1, -1273
                  slti         s3, s7, 1056
                  sltu         s8, a5, t6
                  xor          s2, sp, s11
                  srai         a4, a2, 16
                  andi         s10, s3, -1498
                  sltu         t4, s4, s5
                  slti         s9, t1, -287
                  srai         s10, a7, 31
                  auipc        ra, 985732
                  sltiu        t2, gp, 1484
                  add          a6, s0, sp
                  sll          t5, s5, sp
                  sub          tp, s2, s5
                  slli         s1, a1, 0
                  sub          t5, a4, a2
                  slli         ra, a1, 20
                  sub          a3, tp, t3
                  srai         a3, a0, 21
                  andi         a7, a6, -548
                  andi         s8, t1, -494
                  slti         a4, s11, 853
                  or           s8, tp, a4
                  srai         a0, s7, 9
                  slti         t4, t0, 1646
                  sltiu        t0, t3, -12
                  sll          ra, zero, t4
                  ori          s3, a4, -1566
                  slli         s10, a6, 1
                  and          s2, a3, s5
                  sra          t6, a4, s1
                  slti         a6, t6, -1707
                  xor          a7, s0, zero
                  and          a4, s10, a0
                  srl          a1, s8, t2
                  xori         tp, a7, -1755
                  slli         s0, a7, 16
                  xori         a3, s10, 1777
                  andi         s4, s0, -1742
                  ori          t2, s11, -1314
                  addi         t1, ra, -1673
                  slt          a6, a0, s8
                  srai         a7, zero, 18
                  xori         s7, a5, -118
                  auipc        t2, 240660
                  sltu         t3, t1, a1
                  ori          sp, gp, -390
                  xori         t4, s8, -176
                  xor          s4, zero, t2
                  andi         t1, zero, -1796
                  slt          a4, s2, s5
                  sll          sp, s1, s1
                  nop
                  add          gp, s10, a2
                  sll          s9, s8, s5
                  sltiu        a5, gp, 1374
                  srli         t0, sp, 23
                  slt          gp, s10, gp
                  nop
                  srai         a0, t3, 8
                  srli         t5, t1, 22
                  srli         t3, a0, 4
                  addi         s3, s0, -1691
                  slti         a2, a5, -362
                  and          gp, ra, t2
                  slli         s3, a3, 7
                  nop
                  srli         s8, s0, 29
                  auipc        t3, 1001488
                  slli         t4, a6, 13
                  and          s8, s6, a4
                  sltiu        s9, t0, -71
                  slli         t2, s5, 25
                  add          s7, t5, sp
                  xor          sp, s6, a3
                  add          s4, t2, gp
                  nop
                  xori         s4, t3, 342
                  sltu         s10, a0, zero
                  and          t0, s0, gp
                  add          a1, a0, s11
                  andi         t2, sp, 2024
                  sra          s3, ra, t0
                  auipc        s1, 943890
                  sub          a6, t3, a0
                  slti         s7, s0, 1197
                  xor          s3, t6, s0
                  or           a6, ra, ra
                  xori         s1, s10, -1689
                  slli         s3, s3, 13
                  sltu         t0, s8, a4
                  srai         t3, s0, 3
                  addi         ra, s5, 953
                  xori         s7, a4, 1666
                  and          t6, s1, a1
                  addi         a2, gp, -835
                  nop
                  or           s0, s10, t2
                  sub          s10, a6, s9
                  andi         s8, s8, 585
                  nop
                  sra          s7, s9, a3
                  srai         s8, s11, 5
                  auipc        s2, 945792
                  auipc        tp, 619139
                  slt          a6, a3, s6
                  addi         a0, zero, 1976
                  sll          zero, s2, s6
                  sra          s2, t4, a6
                  xor          zero, s0, a0
                  or           a3, s3, s8
                  sra          s9, a6, t4
                  ori          t5, tp, 329
                  slti         t2, t1, -1198
                  sll          a7, a7, s1
                  slt          a0, ra, s1
                  sltiu        s2, t1, -343
                  sltiu        s7, t3, -1566
                  auipc        a4, 38914
                  slt          a3, t5, a6
                  sub          a6, t4, a2
                  srl          a3, t5, gp
                  slt          zero, s10, s2
                  add          a4, t2, a5
                  srl          s2, t2, t0
                  srl          t3, a6, tp
                  addi         t3, a4, -1781
                  sll          t0, a1, zero
                  or           t3, t2, s7
                  sltu         s9, s11, s4
                  addi         a0, a3, 983
                  sll          gp, s1, sp
                  sltiu        a4, t1, -1494
                  ori          s10, t4, -1633
                  slti         s10, s4, 1537
                  sra          s4, s7, s2
                  add          t3, t2, sp
                  auipc        s0, 157718
                  slt          tp, t0, s4
                  add          a3, s1, s4
                  nop
                  nop
                  sub          a3, zero, s6
                  srli         s4, a1, 27
                  sll          a7, t3, s4
                  slli         t5, a7, 29
                  slt          a0, s7, s11
                  sltu         tp, s3, a4
                  xor          t0, t1, a0
                  xori         s7, s5, -856
                  lui          s3, 833505
                  sltu         ra, s4, t3
                  or           s1, s7, t1
                  srli         a3, s7, 2
                  sll          s8, a0, a5
                  ori          s0, s4, 705
                  add          t6, a3, zero
                  sltu         t0, a0, a3
                  ori          t5, s3, -745
                  sub          a7, s11, s0
                  addi         a3, t0, -613
                  add          t6, t5, a5
                  or           a5, s1, t5
                  xor          a3, s10, t2
                  add          gp, gp, s4
                  sltu         t2, t5, a4
                  xor          a3, ra, gp
                  sub          s7, s10, ra
                  slt          s0, t4, s7
                  xor          s2, t5, a6
                  xori         s10, t1, -1734
                  andi         tp, sp, -1293
                  xor          a3, t2, t6
                  xori         tp, a4, -131
                  srli         s1, s11, 14
                  srai         s3, a1, 23
                  sub          s10, t3, t0
                  add          a7, tp, a7
                  lui          a0, 957490
                  addi         a7, t5, 210
                  lui          s9, 353048
                  nop
                  srai         s7, a4, 20
                  add          tp, a1, s10
                  auipc        tp, 176819
                  srli         gp, ra, 27
                  addi         a5, s1, 1915
                  sra          s9, s4, t6
                  sra          s1, t2, s1
                  lui          gp, 658938
                  srai         ra, a5, 20
                  srai         s1, s8, 16
                  sltu         gp, a2, a4
                  ori          t3, sp, -275
                  sra          a3, s8, s1
                  slt          t3, s5, tp
                  nop
                  and          s4, a4, s8
                  ori          zero, t6, 1844
                  srl          s2, s3, ra
                  srli         a5, s1, 10
                  and          t2, t3, t5
                  or           s9, s11, a7
                  sub          a6, t4, zero
                  auipc        s2, 865939
                  xori         s1, a3, 1693
                  addi         s3, gp, 1592
                  sll          t4, s1, t2
                  sltiu        t1, t2, 61
                  slti         zero, s11, 1938
                  sub          s2, s1, s7
                  or           zero, s4, zero
                  srli         a4, t5, 15
                  sll          s4, a0, a4
                  and          t3, s0, s3
                  slt          a0, s1, t4
                  andi         gp, sp, -577
                  add          t6, s10, t0
                  sra          tp, s11, s2
                  andi         tp, a5, 503
                  srl          a2, t3, t5
                  nop
                  lui          a2, 239749
                  add          s7, t4, gp
                  srli         a0, t3, 27
                  lui          s2, 492439
                  slli         a4, t2, 7
                  and          t6, s6, s8
                  add          a2, s5, s8
                  slli         s2, t6, 10
                  sll          gp, s7, a2
                  slli         zero, zero, 1
                  addi         s0, s3, 1067
                  slli         s4, s11, 11
                  srai         t2, ra, 3
                  xor          s10, s5, t1
                  sub          a3, t5, a0
                  xori         t6, s3, 1642
                  sub          t1, ra, s4
                  slli         a4, a3, 12
                  slli         s8, ra, 5
                  nop
                  andi         sp, a5, -1193
                  sra          zero, t5, zero
                  add          a1, t3, s2
                  sll          t0, t1, tp
                  slti         t2, s2, -736
                  sltiu        s10, s6, 1170
                  addi         t2, s8, 1058
                  add          a1, t5, t2
                  andi         s7, a6, 1358
                  sltiu        a1, t0, -1623
                  sltu         s0, t4, a2
                  srli         a1, t5, 11
                  auipc        t5, 265275
                  lui          t0, 785472
                  ori          zero, s0, -1407
                  slti         s9, t1, -283
                  slt          a0, a2, t5
                  or           s4, s3, sp
                  sltiu        t5, sp, 916
                  xor          s8, s11, a2
                  sltu         s4, s10, s1
                  and          t1, s2, s4
                  nop
                  srli         t2, sp, 11
                  srai         gp, a5, 24
                  ori          t1, a4, 1752
                  nop
                  sll          zero, s7, tp
                  srli         s0, s3, 12
                  sra          s3, s7, s7
                  srli         s1, s10, 29
                  srl          s4, ra, s9
                  lui          s3, 715357
                  xor          zero, a2, a2
                  lui          s7, 291220
                  xori         a1, ra, 403
                  sltiu        a6, a2, 917
                  or           zero, ra, a7
                  slli         s4, a3, 30
                  sltiu        t5, a5, 1548
                  sub          t0, s6, t6
                  xori         a6, a4, 1194
                  and          gp, ra, t3
                  or           s10, t6, a6
                  sll          s3, s1, a5
                  sll          t5, a7, sp
                  slti         s3, zero, 1506
                  nop
                  xori         zero, zero, 102
                  add          a3, s6, t1
                  and          a1, s3, ra
                  srl          s10, s2, t0
                  add          s4, t4, t3
                  addi         s3, s4, 993
                  sub          tp, t1, sp
                  and          s0, tp, a2
                  xor          s3, t1, s1
                  slti         ra, s2, -226
                  sll          gp, s3, t0
                  add          t0, s5, gp
                  and          zero, gp, a7
                  slli         a1, s8, 8
                  slti         zero, a0, -1247
                  auipc        t0, 327576
                  lui          sp, 351234
                  lui          t1, 570050
                  sltiu        t2, a3, 478
                  addi         zero, a1, 551
                  sltiu        a3, a2, 864
                  andi         ra, zero, -731
                  sra          gp, tp, t1
                  addi         s3, s5, 878
                  srli         t3, a0, 0
                  add          a3, s1, t3
                  sltiu        gp, a1, 870
                  sltu         s4, s3, t1
                  srli         s8, a1, 20
                  sltiu        a1, a4, -585
                  sub          a4, s11, s7
                  and          a2, t3, s7
                  sltu         a5, t5, t6
                  ori          t1, s9, 1391
                  slli         a3, s3, 22
                  sra          zero, s2, a2
                  and          a3, t2, s8
                  nop
                  srli         a4, a2, 1
                  sub          s1, a2, s8
                  lui          s0, 532503
                  auipc        s4, 100365
                  sll          tp, t0, t1
                  slti         ra, s9, -1003
                  xori         s9, tp, -1857
                  and          t1, s5, a3
                  srl          s4, s8, s10
                  xor          a5, zero, a3
                  srli         s4, a0, 13
                  sub          s10, s3, s3
                  xori         s7, s8, -738
                  srl          sp, s6, s10
                  sub          a1, s11, t3
                  xori         gp, sp, -984
                  sltiu        a0, gp, 1181
                  slti         t0, s10, 1102
                  srl          s3, a1, s2
                  and          s8, tp, zero
                  add          t5, s11, s2
                  srli         s0, t5, 17
                  sltiu        s7, s2, -799
                  add          t0, t1, a3
                  sltu         a2, a7, a0
                  sll          t0, a2, t5
                  srli         s2, t3, 11
                  ori          s4, sp, 758
                  sltiu        a6, a1, -1573
                  or           t4, s11, sp
                  sra          gp, s8, s1
                  and          s4, t1, s5
                  sra          t4, s3, t5
                  sub          t1, s11, s5
                  slti         a5, s9, -1405
                  nop
                  auipc        t5, 822467
                  sltiu        s10, t2, 588
                  auipc        a0, 365781
                  srl          tp, s11, s3
                  ori          s1, s1, 1228
                  and          a7, s8, t2
                  xori         a5, t5, 1494
                  andi         s4, t1, 553
                  slli         s7, a2, 2
                  sltiu        s0, t4, 457
                  lui          t0, 433752
                  addi         a6, a1, -1561
                  andi         a5, s9, 1526
                  srl          gp, zero, s10
                  ori          t3, t1, -353
                  slli         s7, a1, 5
                  nop
                  lui          t1, 217184
                  srl          t6, a0, s2
                  lui          t2, 445537
                  srai         s9, s3, 21
                  lui          a2, 270903
                  sltu         s9, t6, t1
                  xori         t1, s10, 1601
                  srli         t5, t2, 5
                  srli         s2, a3, 12
                  slti         a7, s1, 868
                  slt          s0, s7, t2
                  slt          a4, a4, a0
                  sra          a3, s9, t2
                  slt          t4, t2, s6
                  or           t4, zero, t6
                  sll          s10, ra, s5
                  sltiu        t2, gp, 1953
                  srai         t1, a5, 20
                  sltiu        t4, a3, 1518
                  sub          s3, t2, s2
                  slti         t5, t0, -1099
                  slli         s8, a2, 11
                  srl          tp, s0, t4
                  addi         a7, s10, 921
                  sub          a4, s0, s9
                  addi         s9, t6, 1121
                  auipc        a1, 905683
                  nop
                  sltu         sp, a0, gp
                  lui          tp, 537430
                  or           s7, s2, t2
                  and          s4, gp, t5
                  add          t3, a0, t3
                  sltu         ra, a1, s4
                  auipc        t6, 1038852
                  slt          s0, a2, s2
                  add          a5, zero, s9
                  auipc        a3, 115831
                  nop
                  slt          tp, t6, t5
                  addi         a6, t3, 604
                  andi         s10, s4, -1700
                  or           t3, s11, t0
                  srai         tp, s3, 18
                  xor          sp, a0, a1
                  srl          tp, a7, t2
                  xor          a3, s6, a0
                  sltiu        a4, a3, 1641
                  sll          s0, s4, gp
                  slt          t1, a4, t0
                  sub          a0, a5, s8
                  xor          sp, s8, s3
                  add          t5, a1, s2
                  sltiu        zero, a2, 1140
                  add          s8, s7, s3
                  or           t4, s8, s4
                  xor          a0, a6, a2
                  sltiu        a4, s7, 1535
                  slt          a5, s1, t3
                  andi         a4, s1, -240
                  sltu         a2, a5, a7
                  slt          s2, s11, zero
                  xor          gp, s11, a1
                  sltu         t0, t6, t0
                  slli         a4, s3, 26
                  slti         gp, t1, 312
                  slti         t2, a6, -387
                  sra          a2, t5, t3
                  srl          s2, a5, a2
                  auipc        sp, 232009
                  and          sp, s7, s1
                  sltiu        a3, s5, 1687
                  ori          s9, a6, 533
                  auipc        s10, 491553
                  lui          a7, 401111
                  slti         t3, s1, 1117
                  slti         s2, a4, -243
                  lui          a0, 271584
                  sub          a6, sp, gp
                  add          s7, s3, t2
                  sltiu        sp, ra, -225
                  srl          s1, s3, t4
                  lui          sp, 971870
                  sra          a5, s7, a2
                  li           t5, 0x76292e09 #start riscv_int_numeric_corner_stream_17
                  li           s4, 0xe515031d
                  li           a2, 0xffffffff
                  li           ra, 0xffffffff
                  li           t0, 0x2c4162d0
                  li           s3, 0xffffffff
                  li           a5, 0x0
                  li           s7, 0x80000000
                  li           s2, 0x0
                  li           a3, 0xc20bed9c
                  sub          t0, s4, t0
                  nop
                  sub          a2, t0, a3
                  lui          a2, 156764
                  add          t5, a3, a5
                  add          a2, a3, a3
                  add          s4, s2, s4
                  addi         a5, ra, 719
                  addi         s2, t5, -2023
                  add          a2, a3, s7
                  addi         t5, t5, -406
                  add          s3, t0, s7
                  sub          t0, s3, a3
                  sub          a3, a2, t5
                  nop
                  lui          s3, 243605
                  nop
                  nop
                  add          s4, t5, s4
                  addi         t5, a2, 185
                  nop
                  sub          s7, ra, a5
                  add          a3, a2, t0 #end riscv_int_numeric_corner_stream_17
                  sltu         s4, s6, sp
                  slt          t1, s10, s2
                  sll          s9, s10, s6
                  srai         a7, t1, 7
                  sra          s1, t0, tp
                  andi         a0, s10, -1943
                  auipc        s7, 993339
                  srli         s8, a6, 18
                  lui          a4, 602419
                  slt          t0, s4, t0
                  slli         s8, a2, 15
                  srli         t2, zero, 2
                  slt          s0, t3, s4
                  ori          a5, s5, 394
                  sub          s2, s4, s3
                  srai         t5, s2, 8
                  srli         a2, s3, 27
                  auipc        tp, 698586
                  addi         t2, s3, 1360
                  lui          t0, 474491
                  xor          a7, s0, t2
                  sra          a5, s4, ra
                  or           a6, sp, a2
                  ori          a6, a5, 1947
                  add          s4, t4, t5
                  srli         s8, zero, 17
                  slt          a0, a3, s5
                  or           a6, a7, a3
                  nop
                  sub          s7, t2, a0
                  srli         s8, s8, 19
                  sra          ra, t3, t6
                  srli         s7, ra, 6
                  nop
                  auipc        a4, 257935
                  sltu         a3, s9, ra
                  slt          s4, a3, sp
                  slt          tp, s3, zero
                  slti         t0, a1, 1726
                  sll          t1, s8, zero
                  xori         s2, s5, -2017
                  sra          tp, t3, t1
                  sra          t2, s10, t2
                  add          s3, zero, s0
                  slti         s7, t4, 679
                  xor          gp, t3, tp
                  srl          a7, s8, sp
                  sra          t1, a2, s10
                  xor          t5, s3, s11
                  or           gp, t5, t5
                  xor          t1, tp, t3
                  sll          s10, s2, a2
                  andi         gp, a1, -119
                  srai         a6, a2, 31
                  sltu         a7, t2, t2
                  sub          a4, t0, a4
                  add          gp, s6, s2
                  sub          s1, a7, s2
                  srli         a0, t0, 13
                  sll          t3, t1, s6
                  sltiu        gp, a6, -1684
                  sub          s3, sp, t4
                  xor          s0, a2, t2
                  or           a7, t3, s9
                  sra          t0, s10, s0
                  sltu         s0, s5, t5
                  addi         zero, s10, 1044
                  lui          a5, 167341
                  xori         a3, sp, -100
                  or           t4, sp, s7
                  and          t4, t0, t5
                  add          a5, t6, t0
                  nop
                  sll          s9, a7, a2
                  andi         a3, s9, 1242
                  nop
                  or           t0, s6, gp
                  ori          s10, a0, 730
                  nop
                  sra          s9, t1, t0
                  lui          ra, 76378
                  sltu         a7, t1, a0
                  sub          s2, s0, s4
                  addi         tp, s8, 1345
                  sll          t0, t3, ra
                  slt          t4, a5, s1
                  auipc        zero, 516783
                  slt          s8, a3, s4
                  sltiu        a7, a1, 1686
                  xori         t5, a7, 1012
                  srl          t6, t1, t6
                  addi         a4, t3, -1525
                  sltu         zero, t2, a3
                  andi         a1, a5, -196
                  and          t4, s1, s1
                  sll          t0, a2, s3
                  or           t5, a5, t5
                  srl          tp, t5, a4
                  auipc        sp, 409616
                  andi         t1, t6, 1891
                  slt          zero, a2, a0
                  add          t2, gp, t6
                  add          zero, s10, a6
                  slli         sp, t0, 0
                  add          a6, a1, s8
                  and          gp, a4, s10
                  sra          t4, s3, a6
                  srai         s0, s9, 30
                  srli         s9, s4, 11
                  srl          tp, a3, s1
                  xor          a2, s2, tp
                  add          s7, s2, s10
                  sll          gp, s7, a4
                  or           s0, a1, t0
                  add          a2, tp, t6
                  sll          tp, a0, s7
                  auipc        a1, 531411
                  slt          t2, s1, a3
                  lui          a6, 14761
                  srli         s0, gp, 29
                  ori          a2, s9, -1136
                  lui          a1, 522606
                  sltu         t0, s9, t4
                  slti         a3, t3, 1475
                  slli         a3, a6, 28
                  slti         a3, a3, -123
                  nop
                  lui          zero, 386798
                  ori          s4, a7, -1163
                  sub          tp, s3, s6
                  srl          s7, s8, s8
                  or           s9, s2, sp
                  slli         s9, a3, 23
                  auipc        gp, 759989
                  addi         s7, s8, 1184
                  sltu         a1, s8, a6
                  auipc        s10, 491585
                  or           a5, a1, tp
                  xor          s7, gp, s2
                  srl          a2, s11, t5
                  slt          gp, s10, s6
                  sub          s2, s10, a0
                  srai         tp, gp, 30
                  or           a1, t4, s8
                  nop
                  nop
                  slli         s4, s3, 17
                  slli         ra, a3, 7
                  nop
                  add          sp, tp, a4
                  ori          ra, t3, -456
                  xor          t2, s2, a0
                  xor          s4, a4, a1
                  add          a7, zero, s5
                  slt          s2, s2, s7
                  lui          s0, 1019167
                  srli         a0, a7, 13
                  lui          s0, 269933
                  sub          s1, t3, s11
                  srli         a7, zero, 19
                  and          a2, s8, s1
                  ori          t3, a0, 1343
                  slti         a0, s11, 1599
                  ori          zero, a1, 2
                  lui          t2, 487621
                  andi         s1, s10, 827
                  lui          t0, 353372
                  andi         a7, ra, -500
                  sub          a6, s4, t2
                  ori          s8, t4, -1120
                  slt          t3, a3, s0
                  sra          s2, s1, t1
                  srli         s10, zero, 25
                  ori          t2, s9, 1425
                  slti         s10, s5, -1070
                  sltu         a7, s5, s1
                  sub          s4, s6, gp
                  andi         s8, a5, 1574
                  sra          ra, a7, t2
                  sltu         s7, t4, s2
                  xor          s10, s7, a2
                  sub          s0, a2, s8
                  slt          a6, t6, a2
                  addi         s1, s4, -1009
                  addi         zero, t3, -875
                  nop
                  sra          a3, a1, a0
                  srl          t3, t3, s10
                  sltiu        a3, s10, 661
                  sub          s10, a4, s10
                  sra          t1, t3, s9
                  xori         s2, a2, -278
                  sra          s1, t5, t3
                  andi         a4, a5, 1362
                  srli         zero, gp, 4
                  lui          s8, 7888
                  srli         tp, s3, 5
                  add          a4, gp, a1
                  or           s3, a2, zero
                  slli         a2, t6, 11
                  lui          s10, 321884
                  and          sp, a4, s2
                  sub          t5, s10, a6
                  srl          zero, t1, s10
                  sra          a4, t3, s10
                  nop
                  add          a3, sp, s0
                  add          zero, a6, a6
                  and          s2, zero, sp
                  srai         a3, s1, 20
                  sll          t3, t3, t4
                  xor          a0, t3, zero
                  add          a3, a1, s9
                  slti         s8, s10, -1178
                  sra          ra, t6, s1
                  srl          s1, a5, a3
                  lui          ra, 855070
                  sltiu        a3, a4, -1089
                  addi         a4, s1, -1568
                  srli         s0, s8, 19
                  sll          s7, t5, s4
                  slti         s0, a2, -803
                  srl          a5, a0, ra
                  nop
                  auipc        tp, 556715
                  andi         a6, s2, -1873
                  auipc        s1, 633859
                  slt          zero, s4, a4
                  slti         a1, s0, -859
                  or           s2, ra, s3
                  srai         s1, s4, 12
                  srai         t4, a1, 28
                  xor          t2, t4, t0
                  sll          s10, s7, s2
                  srai         a3, a1, 30
                  srl          s9, t4, t5
                  nop
                  sra          s1, s7, s5
                  srl          t3, t5, a2
                  add          a6, t2, s11
                  or           t6, sp, s11
                  xor          s2, t0, t2
                  srli         t6, a1, 4
                  xor          gp, zero, a7
                  slt          t6, a4, t2
                  slti         t1, s10, -23
                  auipc        s9, 319547
                  or           a4, s2, gp
                  and          a7, s5, s8
                  srl          t2, gp, s0
                  sltiu        s0, gp, 328
                  srai         a4, a1, 27
                  slli         t6, t0, 8
                  or           t5, t4, a2
                  add          t4, s10, s8
                  sll          tp, a6, s9
                  sltu         a4, s5, s4
                  auipc        ra, 1012223
                  slti         t5, s4, -1111
                  srai         ra, sp, 27
                  slti         gp, s0, -535
                  sltu         ra, s5, a3
                  srli         gp, s5, 9
                  andi         zero, a2, -1044
                  andi         s8, t0, 192
                  srli         ra, gp, 7
                  srai         a1, a7, 8
                  srai         t5, s5, 4
                  slti         s10, t2, -1899
                  andi         gp, t2, -1831
                  lui          a0, 293158
                  add          t6, s2, a0
                  sra          a2, t4, t3
                  srli         tp, t5, 23
                  srl          t6, a3, gp
                  slt          a5, s11, s7
                  srli         t0, s3, 19
                  srai         t2, a7, 27
                  ori          s1, t0, 1881
                  slti         a4, s6, -1848
                  sltu         t4, ra, gp
                  slt          a5, a7, s3
                  and          t3, a5, s2
                  srl          gp, t6, s8
                  slt          s10, t6, t5
                  srli         t5, s2, 14
                  nop
                  add          s3, t5, a6
                  or           s2, s8, a3
                  addi         a1, s10, -1737
                  xor          s2, s6, a7
                  lui          t1, 282341
                  slt          s0, a7, a6
                  nop
                  slt          t5, ra, a2
                  ori          s4, s10, -1812
                  xor          s8, gp, t5
                  andi         ra, s9, -1409
                  ori          a5, s4, 1541
                  sll          t1, s6, t1
                  auipc        t2, 879737
                  add          s3, s3, s0
                  sll          ra, t1, s10
                  andi         s9, zero, 1807
                  or           a4, s1, s6
                  srai         a2, s2, 7
                  ori          a2, a1, 196
                  nop
                  slt          tp, s8, t1
                  srli         a3, t2, 27
                  andi         s8, s3, -751
                  or           t3, t1, s5
                  addi         ra, s5, -286
                  slti         a3, a6, -850
                  slti         t0, s4, 1418
                  ori          a6, s10, 1901
                  sltu         s7, t3, ra
                  or           t5, a7, t6
                  xor          t0, s4, a3
                  xor          s0, s10, t3
                  nop
                  sltu         a3, s0, t1
                  andi         t6, a6, 1416
                  ori          a1, s2, 330
                  xor          s10, ra, s10
                  slt          s9, s6, sp
                  and          a0, s6, s7
                  sll          zero, a1, gp
                  addi         s0, t1, 821
                  xori         ra, zero, 613
                  and          s3, t5, ra
                  ori          t0, s11, -1816
                  add          a7, tp, t3
                  add          gp, a0, gp
                  sltu         sp, zero, t5
                  srli         s0, a1, 31
                  sll          t5, s10, ra
                  sltiu        s3, a5, 1424
                  srli         tp, t2, 27
                  sltiu        s3, s7, 12
                  xor          tp, s0, ra
                  srl          s3, t5, s3
                  auipc        t5, 679320
                  lui          tp, 624656
                  addi         ra, s10, -1469
                  nop
                  addi         a1, t5, -466
                  and          t5, s0, a5
                  lui          a7, 355201
                  srl          a6, t5, t0
                  sub          tp, s2, tp
                  srl          s2, sp, s1
                  srl          s4, a5, s7
                  sub          t6, s0, t4
                  or           s3, a6, s3
                  add          a2, s9, t3
                  srl          a0, t0, a0
                  addi         ra, sp, -576
                  addi         a1, t0, 618
                  slti         t0, s1, 1112
                  andi         t0, a7, -1507
                  add          a5, s3, sp
                  lui          gp, 389681
                  or           t6, s4, t3
                  nop
                  xori         a0, s9, -1697
                  xori         a5, a3, 218
                  slli         s7, s0, 16
                  xori         a2, t2, 1313
                  or           s0, s6, a6
                  addi         s4, t3, 564
                  and          t0, s0, a3
                  slt          a6, a1, s1
                  slli         ra, a6, 3
                  nop
                  and          a3, t6, s2
                  andi         zero, s5, -399
                  sub          ra, s4, zero
                  lui          t5, 563375
                  addi         s3, s8, 2011
                  sltiu        s7, a5, -713
                  and          s9, t2, s2
                  and          s1, zero, tp
                  srli         t4, a5, 16
                  lui          s7, 194851
                  srai         s3, t1, 21
                  slt          a6, s2, s9
                  addi         s8, a5, -1449
                  sub          s2, a0, ra
                  sll          t4, s4, s10
                  sltu         t1, a7, tp
                  ori          a1, t5, -2021
                  addi         s4, t3, -1216
                  sll          s9, s8, t1
                  add          sp, s6, t4
                  xori         a7, s8, -748
                  and          t5, gp, gp
                  auipc        s7, 749435
                  lui          a5, 113090
                  and          a0, a1, s2
                  srli         t1, sp, 5
                  sub          s4, s8, s8
                  sra          t2, a0, t5
                  slli         t3, t0, 5
                  slli         s1, s3, 15
                  auipc        s9, 323056
                  slti         s2, t1, -722
                  srli         s10, s7, 12
                  sll          gp, a3, t0
                  sltu         t2, s9, t4
                  add          a0, a7, sp
                  srli         t3, s3, 20
                  srli         ra, a2, 23
                  sll          a1, a5, t1
                  nop
                  addi         s8, t4, -241
                  nop
                  sltu         s8, t6, s11
                  andi         a5, s3, 840
                  slti         t6, a1, 1213
                  srai         a6, s5, 7
                  lui          t3, 482722
                  sra          a6, s11, tp
                  srli         s7, a5, 15
                  lui          a5, 908054
                  slli         s8, s6, 15
                  sltiu        gp, s9, 637
                  slt          a5, s6, s1
                  andi         a6, zero, 313
                  sll          t4, tp, a0
                  sltu         tp, s11, tp
                  slti         t0, a7, 951
                  ori          t1, s3, -114
                  and          ra, s10, s1
                  srli         t2, s4, 26
                  or           a6, gp, a3
                  add          t1, ra, t1
                  auipc        zero, 816366
                  or           s9, a5, s1
                  or           a4, s8, sp
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           tp, 0xffffffff
                  li           a5, 0x3013afee
                  li           gp, 0xffffffff
                  li           s4, 0xffffffff
                  li           a4, 0x0
                  li           ra, 0xffffffff
                  li           a2, 0x1d3773bb
                  li           s1, 0x0
                  li           t0, 0x80000000
                  nop
                  sub          a4, a5, t0
                  lui          gp, 781342
                  addi         a2, a4, 211
                  lui          t0, 88382
                  auipc        tp, 416479
                  add          tp, s3, tp
                  add          a4, a4, a5
                  sub          a2, t0, a2
                  auipc        a5, 1033754
                  sub          ra, a4, a5
                  lui          a5, 761937
                  addi         s4, a4, -825
                  auipc        tp, 581740
                  nop
                  add          ra, tp, a5
                  sub          a2, a2, a4
                  sub          s1, s1, a5 #end riscv_int_numeric_corner_stream_8
                  and          s3, t2, sp
                  or           zero, sp, s9
                  xor          a5, s7, t0
                  auipc        a4, 770506
                  sltu         s4, a0, t1
                  xori         t2, sp, -1597
                  or           a3, a4, t1
                  lui          s9, 12306
                  srai         a7, t0, 19
                  ori          a3, a6, 1443
                  srai         tp, t2, 23
                  add          tp, gp, a1
                  nop
                  slli         s10, a3, 28
                  xor          a7, s3, t3
                  slli         a7, s0, 29
                  srli         t6, t6, 2
                  andi         sp, s0, 166
                  lui          a1, 337422
                  srl          s9, a1, a5
                  xori         s0, a0, 256
                  xor          sp, tp, s1
                  sra          t1, t3, t1
                  lui          s7, 221417
                  add          s3, s2, a0
                  sra          s1, zero, t5
                  lui          a6, 989324
                  slti         sp, s6, 828
                  addi         a4, a4, -1587
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           a6, 0x80000000
                  li           s7, 0x548b0089
                  li           t4, 0x80000000
                  li           a1, 0x0
                  li           s8, 0x80000000
                  li           t3, 0x80000000
                  li           a4, 0xffffffff
                  li           ra, 0x5110b5cb
                  li           a7, 0x0
                  auipc        a1, 19500
                  addi         s8, a1, 969
                  lui          t4, 331102
                  sub          a7, a6, ra
                  addi         s8, t3, -678
                  auipc        t3, 231481
                  auipc        s7, 356074
                  auipc        a6, 832276
                  nop
                  add          s8, t4, a4
                  lui          a5, 350595
                  lui          t4, 598259
                  addi         ra, a1, -1853
                  add          a7, s7, s8
                  auipc        a6, 995753
                  sub          s8, a5, a4
                  addi         ra, ra, -1432
                  lui          a5, 221211
                  lui          a4, 906415
                  nop
                  auipc        a7, 922026
                  nop #end riscv_int_numeric_corner_stream_10
                  sub          s0, a1, a2
                  slt          t4, s0, s11
                  slt          t2, a3, sp
                  xor          t5, a0, a2
                  lui          s10, 111724
                  lui          a0, 328808
                  srai         s8, zero, 1
                  sra          a4, s7, sp
                  auipc        s8, 988480
                  lui          t1, 303775
                  xori         s9, tp, -1190
                  sll          ra, ra, a3
                  slt          a1, s5, s10
                  xori         s1, s1, 1706
                  slli         a5, gp, 12
                  ori          s1, sp, 246
                  sub          a5, a4, t2
                  or           tp, t0, s3
                  ori          a2, t3, 1237
                  and          s4, s5, s11
                  sra          s4, t6, gp
                  nop
                  lui          a2, 656112
                  or           sp, a7, s7
                  ori          gp, s11, 1962
                  srli         a6, s0, 29
                  auipc        a6, 668476
                  nop
                  addi         a1, a3, -140
                  xori         s1, a3, 1977
                  srai         sp, s1, 0
                  auipc        t0, 413459
                  sra          t1, t2, t1
                  andi         a7, t5, 199
                  xori         t4, a6, -1862
                  srli         s1, a0, 10
                  and          t3, t2, a4
                  lui          t1, 519473
                  and          zero, s2, a2
                  sltiu        sp, s10, 2005
                  sll          s3, a2, a1
                  sub          a6, a1, a4
                  xor          t3, t3, t6
                  andi         a3, t2, -946
                  xor          t2, s3, a0
                  slt          t1, s2, t1
                  add          t0, s2, t5
                  sltiu        t3, s9, 1479
                  andi         sp, gp, -1272
                  sll          t1, t6, t6
                  slli         t2, tp, 26
                  srl          t3, s11, a6
                  slli         t3, a0, 4
                  srl          t5, gp, s8
                  sltu         t4, s2, a0
                  srai         s1, s1, 12
                  addi         s7, s2, -1089
                  slt          gp, zero, s10
                  addi         tp, s9, 1662
                  ori          s2, s9, 617
                  sub          s2, tp, a2
                  srl          gp, t1, a6
                  sra          s8, s1, zero
                  sub          s1, s7, t2
                  srai         s7, s4, 28
                  slli         ra, sp, 21
                  slt          a5, tp, a3
                  ori          s1, s3, 999
                  slt          a3, s9, a4
                  sra          s0, a0, s10
                  lui          t4, 610136
                  nop
                  slt          s10, t1, s6
                  slli         t1, t5, 20
                  and          t3, t3, a0
                  sltu         sp, t5, s6
                  sra          t0, zero, t6
                  slti         t3, s0, 1646
                  srl          s10, s0, a0
                  lui          zero, 1017072
                  or           sp, t3, t0
                  slt          a5, s3, t5
                  sltiu        s2, t5, 1628
                  xori         s4, s1, 1004
                  andi         a2, a4, 1763
                  xori         a3, t0, -1124
                  srai         t0, a1, 28
                  sll          s10, s4, s5
                  xor          s2, zero, t2
                  slti         t2, t2, -1875
                  sll          s1, gp, t6
                  sll          s0, s5, zero
                  or           t5, t5, ra
                  and          t1, t5, a6
                  andi         t2, s0, -1475
                  srai         t3, t1, 27
                  slt          s1, a0, s10
                  sltu         s8, sp, s0
                  sra          t6, s9, a3
                  slt          s8, t5, t5
                  srl          s10, t1, s5
                  and          t3, t2, t0
                  sra          t5, a2, sp
                  sub          a3, a3, t5
                  sltu         t3, a5, a1
                  sub          s0, a6, t1
                  add          a2, s10, t4
                  sltu         a6, s4, a2
                  xor          zero, a6, zero
                  sub          a7, ra, zero
                  add          ra, a0, t2
                  srli         s0, a6, 4
                  sub          s4, t5, t1
                  srai         t6, a3, 30
                  slti         ra, zero, -799
                  sra          t5, t2, a2
                  slt          t5, t0, sp
                  sltiu        t2, tp, -2045
                  slt          gp, s8, tp
                  add          s1, tp, t3
                  ori          a6, tp, 186
                  sra          t5, a6, s3
                  srl          sp, s7, a6
                  srl          s3, t1, a5
                  slli         t2, a7, 13
                  auipc        t1, 623465
                  or           t5, s7, zero
                  sll          s7, t3, gp
                  srli         a5, s11, 28
                  lui          t6, 1014681
                  add          t2, s2, t6
                  lui          gp, 498858
                  addi         t4, t4, -1744
                  xori         ra, a3, 1697
                  sltu         s4, t2, zero
                  srai         t0, gp, 29
                  add          a4, t2, s6
                  sltiu        zero, t3, -1938
                  andi         a6, a7, 1059
                  or           t4, gp, s10
                  xor          a2, s2, s9
                  nop
                  andi         s10, t6, 1103
                  slti         zero, s0, 312
                  ori          s9, a4, -668
                  srai         a7, t6, 25
                  andi         s1, t4, -49
                  nop
                  lui          ra, 281130
                  or           a5, a6, s11
                  sltu         ra, s0, s1
                  srl          sp, s7, t1
                  sra          a2, s9, s0
                  addi         a7, s3, 156
                  srai         s7, s9, 16
                  sra          t1, s6, t4
                  xori         s3, tp, 1648
                  srli         a2, s7, 17
                  add          t3, s5, ra
                  sra          a6, s8, t6
                  sll          t5, t2, s6
                  xor          s10, t1, s1
                  auipc        a2, 259054
                  srl          t4, s1, a2
                  add          zero, a1, s1
                  auipc        tp, 815188
                  lui          s10, 459146
                  xori         t0, zero, -1826
                  addi         a4, s7, 1288
                  xori         tp, a2, -2016
                  slti         t6, s11, 1391
                  andi         s8, s3, 1149
                  srli         ra, t6, 9
                  slti         a0, s5, 531
                  sra          s1, t5, s2
                  slli         s1, zero, 13
                  andi         s9, s6, -166
                  sra          a4, a4, a1
                  srli         zero, a3, 17
                  andi         a5, t4, 1731
                  srai         a3, t2, 5
                  sll          s3, a3, s4
                  sltiu        t6, a6, 1480
                  and          s2, gp, a2
                  or           a2, s7, ra
                  xor          s4, zero, ra
                  xori         tp, s6, -1433
                  xori         t1, t2, 1269
                  add          a5, a4, t6
                  add          zero, s5, a2
                  auipc        s7, 888448
                  xori         t4, a2, -1316
                  nop
                  lui          a1, 814538
                  lui          zero, 561000
                  slli         a6, a6, 9
                  srl          a3, s11, s9
                  or           t6, a6, s10
                  and          gp, t1, a2
                  xor          s9, a5, t0
                  sltu         t6, t2, a4
                  slti         tp, t5, 1198
                  srl          t4, s10, s3
                  andi         t3, t0, -852
                  and          a4, a0, s1
                  slti         s2, s1, -1435
                  addi         a5, a1, 547
                  andi         t0, tp, -824
                  srl          s2, t0, t2
                  srl          t6, t4, s3
                  or           a2, t2, s1
                  ori          s2, tp, -573
                  ori          sp, t0, -1434
                  xori         tp, a3, 85
                  xori         s7, a5, 791
                  auipc        t3, 63325
                  xori         a7, a5, -603
                  or           s9, t1, t6
                  nop
                  ori          s4, a3, 1607
                  auipc        t5, 443388
                  xori         a1, ra, -1623
                  slli         a3, s8, 8
                  srli         s10, s4, 28
                  sub          a7, s10, s11
                  nop
                  sub          s3, a6, t6
                  sltiu        s1, t1, -548
                  lui          t5, 928888
                  or           s3, s4, a6
                  sub          gp, t4, a1
                  and          ra, s5, a0
                  srl          t0, a2, s9
                  auipc        tp, 291336
                  xor          s0, s1, s0
                  add          t2, s11, a2
                  nop
                  sltu         s7, t1, s1
                  ori          s9, zero, 1094
                  sll          gp, s2, s0
                  sltu         zero, a7, a5
                  sub          s7, a0, s11
                  lui          s10, 250153
                  srl          s9, a1, sp
                  addi         tp, sp, -327
                  srli         ra, s7, 17
                  slt          s0, t2, s3
                  lui          zero, 849500
                  slli         s7, sp, 27
                  add          t2, a1, s4
                  sltiu        a6, s1, -978
                  nop
                  sll          t3, s5, t6
                  addi         ra, t5, -1332
                  addi         tp, zero, -629
                  srl          zero, t3, gp
                  lui          a6, 112925
                  or           s9, s10, gp
                  andi         t0, ra, -1522
                  ori          a2, s11, -1148
                  xor          t1, s3, s6
                  srai         t4, t2, 1
                  srli         a7, a3, 9
                  slt          a2, gp, s5
                  ori          a4, t2, 741
                  srli         a3, zero, 26
                  auipc        t3, 817267
                  slt          s1, s9, a0
                  srai         s4, tp, 8
                  sub          t0, a7, t0
                  sub          s0, s6, a7
                  add          a5, t1, a3
                  lui          a4, 610244
                  srli         a6, a1, 28
                  slli         t1, a6, 21
                  lui          t1, 32115
                  slli         t4, sp, 11
                  lui          s4, 497240
                  addi         s2, s11, -1185
                  srli         s9, sp, 0
                  sltiu        a5, s10, 1126
                  xori         s10, t0, -369
                  sll          s0, a6, s10
                  srl          t1, sp, s7
                  addi         a1, s10, 1279
                  xor          a6, t4, s6
                  or           a1, t1, s1
                  slti         t5, gp, -1090
                  sltiu        s7, s4, 464
                  srli         t3, s11, 6
                  xor          s10, a7, s4
                  sltu         a2, a1, s4
                  sltu         a4, s11, a7
                  lui          a2, 327275
                  srli         t6, s2, 3
                  addi         a4, s10, 1393
                  xori         ra, a4, -1112
                  srl          t5, t1, t2
                  sltiu        s0, sp, -1408
                  slti         sp, a7, -647
                  sub          a5, s3, a6
                  slti         s9, sp, 330
                  srl          s7, ra, s6
                  or           t4, s10, t6
                  xor          s3, s7, s6
                  nop
                  sub          zero, a2, s11
                  lui          sp, 353030
                  srl          ra, s5, t1
                  and          a3, t5, s7
                  srli         s9, a2, 17
                  sra          t3, s0, t6
                  sltiu        a0, a7, 1492
                  nop
                  and          a4, t1, s5
                  nop
                  ori          a3, a7, 1099
                  sll          sp, t6, a0
                  slli         t3, t2, 29
                  srai         s0, s0, 24
                  slli         t3, a5, 11
                  slt          s1, s1, a3
                  sltu         a5, s5, s2
                  srl          t6, s6, s2
                  sltu         ra, t0, s11
                  addi         s1, a5, -952
                  auipc        a0, 163687
                  srai         s10, s8, 0
                  slli         s9, a4, 31
                  sub          t2, t2, s5
                  ori          s4, s2, 1405
                  sub          s8, s3, s9
                  sltu         gp, tp, s7
                  xori         t6, a5, -817
                  xori         t5, tp, 1804
                  and          s0, a2, t4
                  addi         ra, s11, 753
                  srai         a4, t4, 11
                  xori         sp, t1, -37
                  auipc        a5, 977408
                  sltiu        s9, t0, 525
                  srai         t0, t1, 8
                  nop
                  srai         gp, gp, 16
                  sltu         a4, s3, s10
                  xori         t1, t0, -1679
                  xori         s3, s2, -113
                  sll          t1, s2, t6
                  sll          s1, a5, tp
                  or           t5, s0, s1
                  nop
                  slti         ra, t2, 1332
                  sll          zero, s4, s0
                  andi         t2, s2, -1185
                  slt          t1, s10, s3
                  srli         t6, t2, 19
                  addi         s7, t1, -630
                  andi         s10, s3, 608
                  slli         t3, t0, 23
                  srai         gp, a4, 18
                  srai         s2, a0, 0
                  or           t0, zero, s1
                  ori          s3, a1, 2008
                  lui          s10, 281380
                  or           s0, zero, a1
                  slti         s1, a5, 676
                  ori          a0, t6, 1880
                  and          tp, s9, s6
                  sra          a4, s7, s11
                  sltu         a0, t4, zero
                  xor          s3, sp, a6
                  xori         ra, s9, 383
                  sub          a0, t4, a0
                  xori         sp, s0, -1593
                  xori         a0, t0, 253
                  and          t5, zero, t2
                  slti         t4, t0, -1703
                  lui          s4, 59427
                  slli         tp, tp, 25
                  sltiu        s8, a7, -1183
                  srl          s3, s2, a4
                  nop
                  nop
                  andi         s2, a6, 1916
                  sltiu        t4, s11, -802
                  ori          t1, tp, 1832
                  sra          t6, a0, a3
                  srl          t0, t6, a6
                  srl          s4, s2, t0
                  and          t4, tp, a2
                  slt          sp, s11, s0
                  sra          t5, zero, s6
                  slti         t1, s8, -1150
                  srli         t5, s8, 22
                  srai         t2, gp, 15
                  sltiu        a5, a7, -326
                  lui          s4, 108508
                  and          a6, ra, s0
                  sltu         a3, t5, s0
                  andi         s10, ra, -83
                  slt          zero, zero, s8
                  add          tp, a5, t2
                  andi         tp, zero, -480
                  xor          s9, a6, a0
                  slti         gp, s2, 1462
                  andi         zero, s4, 1856
                  xor          s8, a1, t1
                  addi         s4, a1, 665
                  sra          s2, t6, gp
                  add          s0, s8, sp
                  addi         gp, s4, 975
                  xor          a6, a2, t5
                  addi         t1, t4, 176
                  or           t3, t4, s7
                  and          s9, t5, a5
                  lui          a3, 316576
                  add          tp, s11, s10
                  srl          t4, a3, s10
                  sltu         zero, t2, s5
                  sub          a1, a5, s2
                  andi         s0, zero, 518
                  srli         t5, s10, 17
                  srl          s3, a2, s4
                  nop
                  srli         gp, t5, 8
                  nop
                  slt          t0, a5, a0
                  sra          a1, gp, t1
                  or           a0, t5, tp
                  auipc        a5, 1046837
                  sra          s7, a1, s4
                  xori         t3, s1, 287
                  xor          t5, a3, s0
                  sra          a1, s4, a3
                  lui          s4, 638930
                  srl          gp, t0, s5
                  srai         t4, a5, 6
                  or           a1, a1, s9
                  sll          s7, gp, zero
                  sra          s7, s3, tp
                  andi         t2, s10, 1398
                  sra          tp, s9, t0
                  add          a3, a0, tp
                  auipc        s3, 591286
                  sra          s8, s1, sp
                  xor          a5, s8, s5
                  xor          s7, a4, a7
                  slli         tp, a4, 18
                  and          s1, s8, s3
                  add          a3, t4, a6
                  slti         sp, t4, -1016
                  srai         s3, s10, 20
                  srli         a0, t3, 4
                  srli         s10, a5, 5
                  lui          s7, 97995
                  lui          t1, 568162
                  nop
                  andi         t1, a6, 1431
                  sub          a2, zero, s7
                  srai         s10, a4, 4
                  slli         t5, t4, 29
                  sltu         a3, a6, s4
                  auipc        a4, 560144
                  srli         a6, s10, 18
                  add          t6, a2, t0
                  sltiu        a4, s1, 218
                  sltiu        s9, s3, 489
                  lui          t2, 588377
                  sra          s0, t0, tp
                  xor          sp, s0, a2
                  ori          ra, ra, -161
                  sub          t5, t1, a7
                  addi         t3, s4, -454
                  ori          s4, gp, 1994
                  xori         t3, t0, 1303
                  slti         a4, a1, 1908
                  xori         s4, t2, 130
                  sra          s7, s11, t6
                  or           s3, t4, a2
                  nop
                  add          s3, t1, s7
                  sra          s9, t2, s5
                  sra          s2, s10, a4
                  sra          t1, t6, s11
                  addi         a2, a3, -1220
                  slli         zero, s2, 31
                  slti         s10, s2, -1153
                  nop
                  sltu         t6, a1, a4
                  srai         t6, t6, 3
                  slti         a0, s0, 781
                  srl          sp, t4, tp
                  or           t1, t1, t0
                  andi         s10, zero, 26
                  andi         zero, s7, -1898
                  nop
                  lui          s4, 198448
                  sub          t3, s8, zero
                  lui          s8, 222422
                  xor          s9, s1, sp
                  lui          t2, 505287
                  or           s10, t1, s4
                  slti         a1, ra, 657
                  nop
                  or           a4, s8, s2
                  ori          gp, sp, 870
                  srai         a1, a4, 16
                  xor          t1, a5, a7
                  xor          a3, s8, s6
                  slti         s1, a6, -882
                  sub          a1, t4, t2
                  and          t6, gp, gp
                  srli         t1, s7, 13
                  slli         a4, s5, 21
                  lui          zero, 377694
                  lui          t4, 344200
                  addi         t1, s0, -1025
                  auipc        s10, 116313
                  sll          s10, s9, ra
                  addi         s9, sp, -2022
                  and          t4, s10, s4
                  auipc        s2, 678630
                  srai         t2, ra, 24
                  and          a2, zero, s0
                  srai         zero, t4, 31
                  sltiu        tp, t5, 1861
                  or           s0, t6, t6
                  or           t0, s2, s4
                  slti         a1, s5, 99
                  lui          t4, 720062
                  srl          s7, a6, t1
                  xor          a7, s9, s3
                  andi         s10, s10, -194
                  sll          sp, s4, a5
                  lui          a7, 999160
                  slli         t3, s5, 23
                  ori          a6, t2, 843
                  srai         s7, a7, 11
                  xori         t0, s6, -1747
                  xor          a4, gp, a6
                  auipc        gp, 993750
                  nop
                  auipc        s1, 882045
                  lui          sp, 1037028
                  or           a1, a7, s0
                  sll          t1, t3, a1
                  sra          gp, s8, t4
                  sll          a5, a5, s6
                  andi         a4, a1, 1855
                  slt          gp, t3, s9
                  sra          tp, tp, s0
                  sra          a3, tp, s0
                  lui          a3, 647193
                  ori          s9, t2, -1260
                  or           t2, a6, t1
                  andi         s7, s6, -1366
                  slt          t6, s7, gp
                  srl          s4, t6, s6
                  xori         t2, a3, 1553
                  sltiu        t2, tp, -902
                  sra          t2, a0, a2
                  srai         a7, t3, 5
                  add          s8, a4, s5
                  sltiu        a4, s5, 1900
                  ori          a5, s3, -266
                  add          t6, s2, s6
                  nop
                  sll          a7, a2, tp
                  xori         tp, t0, 1448
                  xor          s2, a2, a5
                  ori          s3, sp, 1912
                  addi         a1, sp, 1174
                  sltiu        s4, s4, -699
                  sub          t6, a2, t2
                  xori         ra, s9, -428
                  sll          ra, t2, ra
                  xori         t4, t5, 587
                  sltiu        t2, t3, 537
                  srai         s10, a0, 19
                  slt          zero, sp, a0
                  slt          gp, s3, a4
                  sub          s1, t2, s9
                  sltu         a0, t1, t0
                  srl          a1, a5, s10
                  xor          t1, a7, a5
                  addi         s4, a7, 995
                  sra          s2, t2, s2
                  nop
                  auipc        t2, 606656
                  xor          s2, zero, s7
                  slt          tp, a5, t1
                  ori          s2, s5, -1056
                  andi         ra, s6, -1092
                  andi         a5, s8, 529
                  auipc        ra, 992340
                  add          a0, s7, a0
                  srl          t3, s5, t3
                  addi         s2, s1, 1574
                  or           zero, t2, s5
                  or           s9, s11, t1
                  srl          t4, s9, t5
                  addi         s10, sp, -804
                  slli         a0, s4, 19
                  srl          s3, s11, a0
                  lui          s4, 519500
                  srli         tp, a0, 22
                  sltu         a2, gp, s10
                  ori          s1, gp, -706
                  srl          a5, t3, a3
                  and          t0, a3, s1
                  sll          s9, a2, s7
                  sltu         a4, zero, a4
                  sll          t3, a0, s6
                  sra          a0, s7, t6
                  slli         s3, a0, 1
                  srai         a7, a5, 25
                  srli         a6, a6, 21
                  xor          a6, a6, t4
                  sub          ra, t0, s11
                  slli         t4, a5, 9
                  xori         t2, s5, 1125
                  srai         a4, s5, 12
                  lui          ra, 549063
                  sra          a4, t3, t4
                  xori         a7, s0, 817
                  and          s2, a4, t0
                  xori         a6, t0, -2024
                  ori          gp, s1, -1936
                  ori          s0, t6, -1500
                  srai         ra, s2, 3
                  slli         gp, a3, 3
                  nop
                  and          t0, t2, a0
                  sll          s0, ra, a4
                  slt          gp, a4, s3
                  slt          a2, tp, s7
                  lui          a1, 646359
                  xori         s9, s4, -989
                  xor          a7, a4, sp
                  xori         ra, a0, -1512
                  srl          s2, s4, a2
                  addi         s9, a1, -679
                  or           t2, t5, t3
                  addi         s4, zero, 1318
                  and          a2, gp, a4
                  slli         s0, tp, 4
                  srli         s10, a4, 10
                  srl          a4, t1, t2
                  sltu         s7, t3, t0
                  xor          s8, s8, s1
                  lui          s0, 80598
                  nop
                  lui          t3, 303486
                  add          zero, s4, a3
                  sltu         t4, t0, a6
                  srli         a5, s5, 26
                  xor          zero, tp, a6
                  nop
                  andi         t5, a1, 1705
                  srl          s4, t5, s7
                  addi         s7, a1, 483
                  sll          s0, t2, t6
                  xori         t6, t6, -290
                  add          s4, a5, t5
                  xor          t3, tp, a1
                  sra          s9, s10, a5
                  add          t0, t2, s2
                  add          t5, s5, zero
                  slti         s10, t6, 1375
                  sll          s4, s10, s9
                  sltiu        s7, s0, 700
                  slli         a6, s4, 7
                  auipc        t4, 1029061
                  lui          s1, 787679
                  slt          ra, s7, a1
                  slti         ra, t3, -1639
                  sltu         tp, t4, sp
                  slli         s7, a5, 6
                  srl          t6, a2, a4
                  xor          t5, gp, s2
                  nop
                  srl          t2, sp, a2
                  or           a4, s5, gp
                  add          s0, t0, a0
                  and          sp, a7, t6
                  or           s9, s3, zero
                  xori         t6, t0, -1526
                  sra          t0, t5, tp
                  add          t4, gp, s8
                  xori         a2, a6, -1154
                  slt          a2, t1, t1
                  srli         a6, a0, 8
                  srli         s4, s10, 8
                  slti         a3, t2, 1292
                  srl          t4, s6, a6
                  ori          a1, s3, 282
                  and          a5, s6, zero
                  slti         t1, s5, 981
                  add          s1, a3, s7
                  sltiu        s3, a0, 1783
                  sltiu        a4, a4, -1574
                  slli         a3, t2, 16
                  xori         t2, gp, 43
                  sltu         a7, ra, sp
                  srli         t5, a6, 8
                  sll          t1, a7, a3
                  addi         t5, t5, 1719
                  slti         s2, t3, -244
                  srli         s1, tp, 8
                  ori          t1, gp, 866
                  slli         s0, s10, 25
                  slli         zero, t1, 26
                  sub          s3, a2, t6
                  xor          tp, s11, s8
                  srli         a2, s5, 23
                  xori         a2, s2, -1043
                  ori          t3, tp, 1996
                  sub          s8, t4, s7
                  nop
                  lui          a6, 228111
                  or           a7, a5, t4
                  lui          a3, 513424
                  sll          s0, s1, s10
                  sltu         s7, a0, t3
                  lui          s9, 53519
                  nop
                  or           a0, a5, s11
                  addi         ra, t4, -1413
                  add          ra, a4, t2
                  sra          s3, s8, s10
                  sll          s9, a2, t0
                  sltu         a1, a7, s0
                  srai         s8, s2, 23
                  sltiu        a6, t5, -613
                  sll          t0, ra, sp
                  sltiu        t5, gp, 1
                  sub          gp, s9, sp
                  sra          sp, a6, s3
                  andi         t6, a7, -881
                  sltiu        t3, t0, -177
                  srai         a2, s0, 31
                  lui          s0, 479893
                  srai         s2, s6, 29
                  slli         a7, tp, 29
                  sltiu        a1, t0, 1323
                  slti         a6, a6, 314
                  nop
                  xori         a1, a1, 2024
                  sll          s8, a0, ra
                  srai         gp, s3, 16
                  slt          a0, t0, a6
                  sub          a4, s7, ra
                  addi         a4, a6, -1811
                  sll          sp, a6, s9
                  slli         a1, s9, 2
                  sub          s8, a0, t1
                  slt          s2, t1, s0
                  and          s4, a0, s10
                  sltu         sp, s10, s7
                  ori          s9, gp, 275
                  andi         s2, s4, 1445
                  slti         t5, ra, 2006
                  xor          a5, s1, t0
                  lui          tp, 671134
                  lui          zero, 37195
                  slti         s7, s9, -633
                  andi         s4, t0, 1182
                  xori         s7, t5, 435
                  lui          t6, 357100
                  add          a5, t5, t2
                  add          s2, a4, a1
                  sll          t5, s0, s2
                  add          s9, s11, s2
                  ori          s1, t6, 474
                  sltu         s0, sp, t2
                  andi         ra, tp, -1342
                  and          t2, t3, a1
                  xor          t1, sp, a5
                  nop
                  sltu         t5, a4, a0
                  sra          tp, s4, zero
                  andi         t3, s4, -456
                  srli         t6, s9, 11
                  ori          s2, t1, 1848
                  xor          zero, t5, s11
                  sll          s7, a2, s6
                  xor          s8, t0, zero
                  lui          s0, 164193
                  addi         s8, a6, -1022
                  add          s9, t6, s8
                  ori          a7, a0, 644
                  nop
                  slt          s4, s4, t4
                  xori         s4, s5, -299
                  sll          s8, a1, a5
                  slti         a4, a2, 466
                  xori         ra, s3, 1978
                  ori          s1, s3, 1490
                  addi         t3, t5, -1809
                  sltiu        gp, s7, -1706
                  xor          sp, s3, a3
                  sub          s0, s3, s8
                  lui          t4, 242892
                  sltu         s7, a6, t5
                  nop
                  slt          a4, t0, a2
                  slli         s4, t3, 19
                  or           sp, t3, a5
                  slti         a5, t1, -666
                  sub          s9, t0, s2
                  xori         a7, t0, -882
                  srli         t4, a1, 15
                  slli         t4, t4, 22
                  srai         s7, t2, 7
                  srl          a1, zero, t3
                  sltu         s10, a5, s2
                  or           t3, t4, t2
                  xori         ra, zero, -111
                  sra          a2, t2, a4
                  slt          ra, s2, a7
                  sltu         a2, s6, s8
                  andi         s8, s4, 1143
                  andi         t2, a0, -674
                  or           t3, s1, tp
                  andi         s7, a7, 1419
                  andi         s9, s4, 1305
                  srl          a2, s10, t2
                  slt          a4, a5, t6
                  sub          t2, gp, a2
                  sltiu        s1, ra, -1852
                  ori          ra, s3, -626
                  auipc        tp, 335001
                  add          a6, a4, t4
                  sub          s2, gp, s8
                  or           ra, t3, s0
                  auipc        ra, 739089
                  lui          sp, 818203
                  xor          a2, zero, a4
                  srl          s2, s11, a3
                  slt          t0, t1, sp
                  add          s4, s4, s7
                  slli         a3, s6, 27
                  srai         a5, s1, 14
                  add          s3, t4, a2
                  slt          a7, a5, a1
                  and          s1, sp, s2
                  xori         a2, s7, 1430
                  andi         s8, s1, -1287
                  sub          s1, s4, t1
                  srli         a7, s2, 17
                  slli         s7, ra, 6
                  addi         t0, t5, 732
                  srli         t4, a5, 5
                  lui          a0, 168291
                  add          a4, a5, a7
                  lui          t2, 34739
                  srai         a7, a3, 29
                  add          a3, ra, s0
                  nop
                  srli         s2, a7, 3
                  slti         t1, s5, 1359
                  xori         a0, a4, -110
                  xori         sp, t1, 469
                  xori         sp, ra, 532
                  sra          s8, s6, t0
                  slli         gp, s5, 27
                  xor          s9, t1, s7
                  auipc        a7, 313645
                  xori         s0, a1, -1483
                  sra          a4, a1, t1
                  xori         s10, gp, 1756
                  slti         a4, t4, 160
                  and          t1, s6, t1
                  auipc        ra, 268205
                  srl          a6, a2, s2
                  sub          s7, s0, s4
                  addi         sp, s11, -326
                  lui          s10, 596470
                  andi         s0, t0, 1182
                  slli         a0, gp, 22
                  srli         a6, a2, 24
                  add          a0, a7, s11
                  add          s7, s9, a5
                  or           t2, zero, a5
                  lui          a7, 101770
                  ori          t5, a5, -1911
                  srai         tp, sp, 13
                  ori          t4, t6, 724
                  srl          a7, a4, s0
                  slli         s2, s3, 23
                  and          a5, s11, s7
                  slt          s3, s6, a3
                  sltu         s0, a5, zero
                  add          sp, s8, sp
                  sub          tp, s9, zero
                  lui          gp, 54203
                  sltiu        t0, a0, -2028
                  xori         zero, zero, -1035
                  add          a7, a0, t1
                  lui          t6, 835867
                  sll          s10, sp, s11
                  slli         t1, s10, 15
                  slt          s2, s6, t6
                  slti         t3, t3, -1264
                  slli         t0, a0, 17
                  or           s4, t4, s2
                  xori         t1, a7, -1415
                  sltiu        s4, s6, 22
                  sub          s10, t0, t0
                  sltu         a2, s0, s6
                  sub          s1, s7, s8
                  srli         a3, s6, 21
                  slti         t6, s6, -280
                  slt          t0, s5, a4
                  sll          t1, t3, s2
                  slli         a0, t3, 24
                  sltiu        s10, s6, 1250
                  addi         s9, t6, 889
                  auipc        a7, 1014028
                  srai         t3, s0, 3
                  slt          a2, s7, s5
                  slt          t2, t1, s3
                  sll          ra, s11, a5
                  xori         tp, s5, 89
                  lui          s1, 776181
                  add          s4, s11, t0
                  slti         a0, s9, -323
                  xori         t0, a2, 1786
                  xor          s7, sp, s7
                  andi         a1, s8, -884
                  sub          t1, a7, s10
                  slti         a6, ra, -885
                  srai         a2, a0, 25
                  or           t4, t2, ra
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s4, 0x0
                  li           tp, 0xffffffff
                  li           s2, 0xffffffff
                  li           s3, 0x4feee9f7
                  li           a6, 0x80000000
                  li           t5, 0xffffffff
                  li           sp, 0x0
                  li           s0, 0x1d19fe63
                  li           t6, 0xffffffff
                  addi         sp, sp, 1277
                  add          a4, t6, a4
                  sub          s2, t6, a4
                  lui          s4, 31926
                  add          s4, s0, a4
                  auipc        t5, 80856
                  nop
                  sub          a4, t5, s4
                  nop
                  auipc        s2, 814626
                  lui          a4, 562893
                  auipc        s4, 404266
                  auipc        sp, 159366
                  addi         s4, s4, 1693
                  nop
                  add          s3, s2, s4
                  addi         a6, s2, -80 #end riscv_int_numeric_corner_stream_19
                  sra          t1, s3, s9
                  addi         s10, t2, 1111
                  or           s8, t5, t3
                  sra          ra, s2, t5
                  sra          t1, a3, s2
                  sll          s2, t4, t3
                  slti         a3, a2, 850
                  and          ra, s4, t0
                  and          a1, t5, s2
                  srli         s1, t3, 21
                  slli         zero, t1, 8
                  sra          a6, s1, t0
                  srli         a0, gp, 17
                  srai         s1, s6, 29
                  sub          t4, a3, t3
                  xor          tp, a1, a7
                  xor          s10, a2, a4
                  xori         tp, t4, -1590
                  srl          a4, s2, s8
                  and          t0, ra, a3
                  srai         s3, s1, 14
                  add          a0, s8, t3
                  xor          tp, s1, t4
                  sltiu        t1, a2, 397
                  sll          s1, a2, s2
                  sltu         s4, a7, a1
                  lui          s10, 487913
                  sra          s9, s3, s4
                  ori          a0, t4, 668
                  sll          s2, a5, s8
                  xori         t2, a5, 1402
                  and          t5, ra, s6
                  srli         a4, t2, 11
                  sll          s4, s7, s2
                  slli         t1, a4, 11
                  slt          a3, t3, s11
                  ori          a2, gp, -565
                  sra          s4, a4, a7
                  slti         zero, s8, 915
                  srli         a7, s10, 23
                  xori         t6, a6, 1667
                  sltu         s1, ra, a4
                  ori          zero, t1, -836
                  srl          a3, s1, a5
                  slt          s0, tp, a4
                  auipc        a6, 582597
                  xor          a4, tp, a3
                  xor          s1, s5, s8
                  sltiu        s10, t2, -556
                  auipc        t1, 502069
                  add          s10, s0, tp
                  sltiu        t5, zero, -1990
                  lui          a3, 883599
                  ori          t5, ra, 914
                  add          s10, a4, s10
                  andi         s7, s7, -1552
                  add          a6, a1, s6
                  srl          s2, t6, t3
                  sll          a5, a1, s1
                  slti         a1, t0, -1053
                  slti         s1, t2, 1860
                  add          t4, t3, t2
                  addi         a7, a7, -467
                  sltiu        ra, t5, 1020
                  lui          s7, 975654
                  ori          sp, s3, 1228
                  add          s7, a7, s7
                  add          zero, t5, s5
                  lui          zero, 389253
                  auipc        gp, 818870
                  nop
                  sltiu        a3, t0, -1186
                  sll          a4, s5, a2
                  xor          a7, tp, s11
                  slli         a6, s7, 11
                  addi         a5, s5, 1773
                  sltu         s2, s8, a0
                  sltu         a5, gp, s10
                  sll          a4, t6, ra
                  auipc        t6, 744877
                  sltiu        s2, tp, -649
                  sltu         t0, a0, t4
                  and          tp, zero, s1
                  slti         s2, s1, 473
                  ori          a6, t2, -1626
                  sltu         s2, a7, a5
                  srai         t0, a2, 21
                  sll          a3, sp, a3
                  slti         s4, s7, 1281
                  srli         s4, a4, 1
                  srli         gp, a4, 20
                  addi         t2, t3, -1760
                  and          gp, s11, ra
                  addi         s10, a2, 308
                  sra          t4, t1, s7
                  sra          a2, s6, ra
                  sltu         gp, a1, a3
                  ori          s3, ra, -135
                  ori          a0, s9, 1823
                  addi         ra, t5, 625
                  slt          a6, s6, t6
                  add          s0, s0, a4
                  sltu         s3, tp, t6
                  srai         t2, s8, 4
                  srai         s10, t3, 1
                  srai         s2, a3, 8
                  add          sp, s1, t1
                  ori          gp, s2, -1768
                  ori          a5, s1, -1509
                  nop
                  andi         gp, s1, 1507
                  srai         t3, a2, 29
                  slli         s10, t5, 30
                  sll          s10, a2, t6
                  sub          gp, t4, ra
                  srl          s10, gp, t6
                  and          a3, s8, s5
                  sll          s9, sp, t5
                  or           gp, a2, zero
                  srai         a4, t2, 30
                  sra          a4, t2, a0
                  slti         s9, t2, 617
                  srl          s4, t5, s5
                  nop
                  sra          t0, gp, ra
                  srai         s9, gp, 18
                  auipc        sp, 646835
                  slti         t1, a2, 1804
                  nop
                  add          s0, t3, s11
                  srli         s1, t5, 25
                  sll          ra, a5, s2
                  srli         ra, s0, 9
                  sltiu        ra, t4, -483
                  xor          s2, a6, s8
                  slti         zero, s3, -1738
                  sub          t5, s11, zero
                  sll          s0, s2, t0
                  srli         t6, s7, 11
                  xori         t3, s5, -1801
                  nop
                  xor          s7, s7, s5
                  srl          t3, s6, t3
                  and          a4, s7, a5
                  ori          a0, t5, 1433
                  srli         ra, zero, 11
                  slli         t6, a4, 3
                  sub          s2, sp, s10
                  lui          a4, 487356
                  sub          s4, a7, ra
                  srl          a1, a6, tp
                  slli         s3, ra, 9
                  slt          zero, s9, t0
                  or           a1, zero, s10
                  andi         s8, s10, -1685
                  slti         t0, a0, -1383
                  sltiu        a0, s6, -1509
                  srl          s2, t1, s10
                  add          s3, gp, t1
                  slt          s2, zero, a2
                  andi         a1, a2, -1658
                  sub          a0, s11, t3
                  andi         gp, s5, 2008
                  xor          t1, s8, a2
                  auipc        a7, 342524
                  slli         a4, t0, 8
                  ori          s8, t1, 1126
                  or           s9, s5, s8
                  andi         s2, a7, 670
                  slti         tp, t3, -1301
                  xor          s0, sp, s8
                  srli         t1, s11, 19
                  sll          a2, s2, zero
                  add          ra, s6, s10
                  sltu         t1, a2, a6
                  ori          s8, gp, 888
                  srai         s9, zero, 0
                  lui          a1, 552622
                  slti         sp, a6, 238
                  auipc        t2, 1001438
                  sra          a4, s0, s3
                  and          t1, zero, s0
                  srai         t0, s5, 0
                  srai         a1, zero, 20
                  slli         s4, a0, 7
                  addi         a6, a5, -93
                  sll          sp, a2, a5
                  nop
                  srl          sp, sp, a5
                  sub          s9, t3, s3
                  sll          t3, s7, s1
                  xor          s9, s11, s3
                  srl          t5, a4, a2
                  xor          tp, tp, s1
                  sll          t5, s8, t6
                  sra          a2, a2, s0
                  auipc        s10, 907250
                  sltiu        a7, t1, -1135
                  slli         t1, s3, 26
                  slti         s0, s11, -1647
                  srl          a4, s4, s5
                  slt          t1, ra, s4
                  sll          a4, s4, s10
                  slti         zero, t3, 550
                  addi         s8, s9, -1415
                  or           t0, gp, s11
                  and          t0, t0, t4
                  slt          a4, s9, s8
                  xori         tp, a1, 1634
                  slt          s0, s3, s8
                  add          s8, a7, s3
                  and          ra, s6, t2
                  slli         ra, zero, 30
                  sra          tp, t1, s8
                  xori         s1, s8, 1123
                  slt          t1, s9, a3
                  sra          t6, t3, a6
                  sll          t0, s0, a5
                  auipc        sp, 554953
                  and          t2, t3, a3
                  auipc        t5, 697931
                  srl          s9, sp, a4
                  sra          s4, zero, s6
                  ori          t3, s1, -1168
                  nop
                  slti         s9, t6, -1146
                  sltu         s0, zero, s3
                  sub          t0, tp, s3
                  ori          s10, a3, -612
                  and          s8, s0, s9
                  nop
                  add          s1, t5, tp
                  xor          s4, zero, t5
                  srli         t1, a2, 27
                  xor          zero, s1, t5
                  sltiu        a1, t2, 1738
                  sltiu        t4, a2, 994
                  xor          s8, s1, s6
                  sub          t0, s0, t0
                  srl          s10, s8, s2
                  srli         t5, t5, 7
                  slli         a0, t0, 5
                  and          zero, t1, a1
                  srli         t6, t1, 18
                  lui          gp, 426190
                  sll          s1, a4, s6
                  xor          t0, s4, t3
                  addi         s10, s0, 1946
                  addi         t6, t2, 1683
                  lui          s1, 304163
                  srai         s4, a6, 4
                  slt          s10, tp, s6
                  auipc        a3, 328904
                  sll          s1, t6, t4
                  auipc        t5, 198943
                  xori         s1, a4, 1222
                  andi         s3, a6, 1975
                  srai         tp, a3, 18
                  xor          t0, a3, a1
                  slti         t0, t0, 1578
                  xori         a3, t5, 15
                  ori          s4, zero, -1793
                  srl          s4, s8, a3
                  xor          t0, a1, zero
                  andi         s1, s6, -1969
                  ori          sp, t0, -511
                  slt          t5, a7, s2
                  xor          zero, t5, gp
                  slt          s7, a0, a5
                  sub          s2, s6, tp
                  lui          tp, 2999
                  srl          tp, sp, s10
                  sra          t5, t5, t1
                  sltu         t4, s6, zero
                  lui          sp, 745939
                  srli         t4, a1, 25
                  sll          s9, a1, s1
                  and          s10, a4, ra
                  sra          t2, s2, t4
                  xori         s1, a1, 1278
                  srl          ra, a2, a6
                  sll          sp, s3, s9
                  or           a5, s7, a5
                  auipc        s2, 482891
                  andi         a0, a7, -462
                  nop
                  xor          t1, s7, s5
                  xor          s9, a1, s1
                  andi         s10, s3, -390
                  lui          s3, 864569
                  sll          zero, t6, s5
                  sub          a6, s3, s9
                  or           a0, s1, t6
                  sltu         a6, s10, t2
                  add          a0, a7, s6
                  slli         t0, tp, 27
                  slti         gp, gp, -1353
                  slli         gp, a0, 18
                  sub          a5, tp, a7
                  and          a3, sp, a2
                  nop
                  sll          a3, t5, t0
                  or           a4, s7, s11
                  xor          t4, zero, s8
                  sra          a3, t4, t3
                  srl          s10, t4, t4
                  addi         t1, s4, 741
                  srl          s1, a4, t6
                  xori         tp, s10, 137
                  sltu         zero, t2, sp
                  lui          a7, 24060
                  addi         t3, t2, 131
                  andi         a5, s4, -1079
                  sltu         t4, t0, t5
                  and          t3, t3, s5
                  or           sp, s9, a6
                  andi         a7, sp, -996
                  addi         a0, t4, -223
                  srai         a6, a7, 8
                  auipc        s4, 651767
                  slli         a7, a5, 18
                  slli         s4, s4, 17
                  addi         gp, s8, 566
                  srl          s0, a3, sp
                  auipc        t5, 26220
                  addi         s0, t0, -1392
                  lui          a0, 143671
                  ori          a2, s4, -1835
                  slt          s10, s0, s11
                  sll          s10, s4, a3
                  add          tp, a6, t6
                  sub          t6, s0, s5
                  lui          a5, 477607
                  slli         a2, a6, 26
                  or           t3, s9, a7
                  sra          a5, s11, s2
                  sltu         t1, t0, s5
                  srai         s0, gp, 16
                  sltu         t1, s10, sp
                  slti         a4, s0, -1213
                  slli         s8, s9, 24
                  and          t6, s11, s10
                  addi         t6, s1, 221
                  sltu         t3, a3, a5
                  srl          s1, a6, a6
                  sltu         a3, zero, s6
                  srli         a3, s11, 27
                  xor          t0, s11, a1
                  sra          s7, t2, tp
                  andi         a4, t5, -1303
                  slti         sp, sp, 492
                  nop
                  sltu         s2, s4, sp
                  and          s7, t3, s9
                  sra          t3, a4, a2
                  add          s3, s8, t4
                  srl          tp, a1, a7
                  slli         a2, s6, 5
                  or           s8, s11, a7
                  slli         s9, a7, 5
                  nop
                  slti         ra, s5, -1173
                  andi         s0, s2, 361
                  nop
                  slli         a7, gp, 29
                  srli         a3, a6, 3
                  addi         gp, sp, -1300
                  add          s10, a7, t1
                  and          s2, s8, t2
                  sra          t4, s6, t1
                  xori         a0, s7, -397
                  xori         a1, s4, -1289
                  or           t2, s6, t2
                  add          a6, a4, gp
                  lui          s8, 455054
                  add          s1, zero, s7
                  sra          s8, s4, s1
                  nop
                  slt          a5, t5, s5
                  sub          s7, a6, sp
                  sltiu        sp, s5, -755
                  sra          a2, a6, t1
                  sra          t2, a0, s3
                  sra          s10, a7, a1
                  srli         a0, gp, 15
                  nop
                  sra          a7, a4, t0
                  slt          s8, s9, t2
                  sub          t5, a2, s10
                  ori          s4, a6, 304
                  srl          s4, s9, s4
                  sub          sp, s5, gp
                  sra          a6, t5, t6
                  srl          zero, a3, t6
                  xor          s3, t0, s0
                  xori         tp, s4, -1782
                  slti         a3, a5, 1532
                  xor          a0, a2, ra
                  lui          zero, 887033
                  sltiu        s0, t0, 2016
                  slt          a2, t2, s2
                  xori         t2, a5, 1292
                  or           t3, gp, t0
                  and          a0, t5, gp
                  or           s3, s5, t0
                  andi         s1, s0, 1373
                  srli         tp, a7, 22
                  sub          tp, s3, zero
                  xor          tp, s5, s0
                  ori          ra, a3, -1510
                  and          s3, s9, a1
                  slt          gp, zero, s6
                  sll          t2, t1, t5
                  srl          tp, t0, a4
                  xori         a4, s11, 1146
                  sll          a2, t0, s7
                  srai         t4, sp, 2
                  srai         a1, t4, 8
                  slt          s3, t5, s7
                  sub          ra, gp, t2
                  or           t4, a5, s3
                  andi         s7, t2, 1363
                  addi         s1, t2, 1866
                  lui          s7, 1004374
                  srl          a0, t3, zero
                  andi         tp, t4, -889
                  slt          sp, a5, s4
                  srai         t6, t5, 3
                  srl          a0, tp, s3
                  ori          s3, a3, 896
                  or           s1, t3, a7
                  srli         a2, s1, 20
                  andi         s10, s7, -86
                  nop
                  slti         s8, a0, -1724
                  sltu         t2, a3, s0
                  sltiu        a1, s5, 1891
                  slt          a2, s1, t0
                  or           zero, s1, t3
                  sub          gp, a7, a6
                  sltiu        a7, s2, -1752
                  addi         a2, t6, -1152
                  sra          t3, t6, s2
                  or           s0, a0, s9
                  sltiu        s3, a6, 1525
                  add          t1, t4, t3
                  srai         a0, s8, 16
                  sltu         t1, ra, t0
                  xor          s0, zero, t5
                  srai         a5, gp, 28
                  sll          s2, s10, s2
                  addi         s8, s5, -1687
                  srli         gp, s8, 19
                  add          sp, a1, a6
                  xor          t5, gp, t6
                  lui          tp, 420550
                  srl          a4, sp, a0
                  lui          gp, 693415
                  and          a1, a7, s1
                  lui          tp, 706557
                  xor          a2, t2, a7
                  sub          s10, s11, a6
                  xor          gp, a7, s5
                  sltiu        s7, t5, -610
                  andi         t5, t6, 350
                  xor          tp, s4, a5
                  srli         gp, t0, 9
                  sltiu        a7, a3, -536
                  srl          s9, a2, s8
                  or           tp, s4, ra
                  srli         s8, t1, 23
                  auipc        a6, 572475
                  slti         s9, s6, 2037
                  sra          s0, s1, a0
                  andi         gp, s3, 660
                  srli         sp, ra, 2
                  andi         a4, gp, -633
                  slti         t2, s7, 901
                  andi         t0, a1, 1660
                  auipc        s8, 399973
                  sll          t3, s7, a1
                  nop
                  srl          zero, s2, s4
                  slt          a2, s4, a4
                  ori          s4, a0, 456
                  lui          tp, 40703
                  ori          tp, s11, -601
                  sltiu        t5, s1, 86
                  ori          sp, s0, -1510
                  xori         t0, a6, -293
                  nop
                  sll          t2, sp, zero
                  andi         a4, sp, 118
                  add          t5, a7, sp
                  slli         a1, t4, 11
                  slt          s9, s1, t6
                  auipc        t6, 983745
                  sub          s9, s6, s3
                  sub          t1, a5, s2
                  lui          s1, 18037
                  slli         a3, t3, 26
                  slti         zero, gp, -354
                  addi         a1, t0, -340
                  add          t5, t1, s11
                  srai         s3, t6, 2
                  sll          s10, s9, t2
                  sll          t6, s6, a3
                  sltiu        s1, t3, 201
                  sra          t2, a0, t0
                  auipc        t1, 236454
                  srai         a0, a0, 22
                  sub          t2, tp, s5
                  slt          t5, a7, gp
                  xor          a6, s2, s8
                  srli         t1, t1, 2
                  srl          s10, s1, sp
                  addi         a4, a0, -1488
                  sub          s10, a3, s5
                  xori         tp, t0, 1858
                  sltu         zero, s5, s2
                  nop
                  nop
                  add          a4, tp, t3
                  ori          a1, s5, -1386
                  and          t6, a4, a4
                  auipc        zero, 149756
                  or           t5, t6, s1
                  nop
                  sra          s10, t6, a4
                  lui          sp, 417054
                  sub          s0, s8, t5
                  sra          s1, s2, s7
                  ori          t6, s1, -990
                  srl          s3, sp, a4
                  sub          t0, s0, gp
                  or           s2, t2, s0
                  xor          s8, tp, s4
                  sub          a6, t3, s4
                  xor          s9, s2, t5
                  sra          t0, s5, s1
                  auipc        t2, 72273
                  nop
                  add          s7, a3, s2
                  andi         ra, a3, -1904
                  ori          t2, s5, -1564
                  sltiu        gp, tp, -1775
                  or           ra, s3, s3
                  or           tp, s0, t2
                  slt          t6, s11, zero
                  slti         s1, a7, 95
                  xori         s1, s2, 0
                  addi         a4, s3, 1908
                  auipc        t3, 796897
                  srai         s1, gp, 4
                  auipc        s4, 741379
                  slti         sp, gp, -1750
                  addi         t6, s2, -123
                  slti         s10, s7, 832
                  sra          s0, t0, a2
                  add          a5, gp, s6
                  lui          a0, 811779
                  slti         sp, a4, -56
                  sltiu        s0, t3, -1151
                  auipc        sp, 1018257
                  sltiu        zero, a6, 312
                  andi         a0, a4, 10
                  xor          gp, a0, t3
                  slt          s9, t2, a1
                  auipc        s0, 792743
                  auipc        s9, 917099
                  slli         a5, tp, 30
                  add          a5, a2, s5
                  addi         t3, a4, -1484
                  sltiu        s0, s6, -832
                  xor          tp, s3, s10
                  slt          a4, t0, t0
                  srai         t0, s7, 4
                  srai         a6, s7, 13
                  sltiu        t4, tp, 1204
                  sltu         gp, s2, s3
                  sra          gp, ra, zero
                  lui          a1, 714438
                  sltu         s3, s9, t3
                  slli         t0, a2, 23
                  slt          t6, s4, tp
                  slt          t6, gp, ra
                  slt          a6, a5, tp
                  srli         t3, t3, 9
                  srli         s0, t0, 30
                  sll          t5, s7, ra
                  slti         s7, s8, 921
                  srli         a5, gp, 24
                  srai         sp, a1, 6
                  xori         a5, s4, -1764
                  sltiu        t3, sp, -1414
                  sll          t4, gp, t2
                  lui          s7, 281348
                  slti         a5, s10, 981
                  slli         sp, a1, 26
                  xori         tp, t3, 655
                  sra          s7, s3, tp
                  srl          a7, tp, a0
                  ori          t2, s3, 1484
                  addi         a4, t6, -339
                  srai         s2, t0, 25
                  and          t3, a1, s0
                  srai         s0, s7, 16
                  sra          a0, s0, tp
                  slti         t1, t5, -1130
                  or           a2, t0, t3
                  slt          a6, t5, gp
                  addi         a5, a2, -1075
                  nop
                  xori         t2, a2, -1059
                  ori          t4, a2, -448
                  andi         s10, s2, 1893
                  xor          s7, t1, sp
                  slt          s0, s11, a3
                  srli         s3, a6, 9
                  xori         gp, s5, 620
                  andi         t1, s4, -1333
                  ori          t5, s8, 2023
                  sra          s3, a6, ra
                  sra          a3, zero, s11
                  sub          t1, a2, sp
                  and          s1, zero, zero
                  sll          t3, t3, s8
                  slt          s2, t6, a4
                  addi         tp, s1, -300
                  slt          s3, a3, s11
                  sltu         t5, s9, tp
                  xor          t2, a6, t4
                  slt          s9, s7, s1
                  srli         a7, sp, 25
                  auipc        s8, 173737
                  slti         a5, t0, -1453
                  or           a5, t2, s9
                  add          s9, t2, t5
                  nop
                  sltiu        s4, s7, 1035
                  sub          s0, a5, a3
                  slli         a0, t0, 1
                  srli         t5, s8, 30
                  or           a0, a1, s10
                  sltu         t4, t0, s10
                  slt          ra, a3, zero
                  or           a1, t1, t0
                  srai         a1, t1, 14
                  sltiu        t1, s0, -1375
                  addi         s8, s2, 1144
                  slli         a6, s10, 4
                  srli         zero, a6, 28
                  sra          s4, t0, t6
                  ori          t4, s2, 161
                  andi         t2, gp, 79
                  srai         s10, a0, 18
                  srai         gp, t4, 5
                  sub          s0, sp, a2
                  lui          s2, 82473
                  slt          a4, a2, s4
                  sltiu        tp, s1, 387
                  and          s9, sp, zero
                  xor          s9, s5, zero
                  andi         t6, s10, -1726
                  addi         s10, t5, -1947
                  lui          t1, 646334
                  ori          a7, s2, -607
                  addi         t6, a7, 304
                  sub          a4, a3, a5
                  slt          a3, ra, t3
                  add          s9, s5, s2
                  addi         t0, s0, 234
                  sltu         t1, s7, s9
                  sub          t4, s9, ra
                  auipc        t3, 490870
                  addi         s4, a5, -72
                  ori          t0, s6, -1205
                  srli         s2, t2, 6
                  sltu         a0, a2, a4
                  nop
                  xori         t2, a4, 68
                  xor          a1, s9, s10
                  auipc        a1, 884490
                  slli         sp, t2, 3
                  xor          t4, s1, a5
                  srli         t6, s6, 3
                  xor          a5, s2, s8
                  nop
                  ori          t6, ra, 1580
                  slt          s3, a7, s2
                  lui          s10, 627953
                  srai         t4, a4, 18
                  xori         s0, sp, -701
                  xori         t0, ra, -484
                  addi         gp, t5, -420
                  slt          a1, zero, s10
                  sll          s3, s8, s3
                  add          ra, s1, t6
                  slti         a7, s2, 2027
                  srai         gp, t2, 0
                  lui          s10, 742451
                  xori         t1, s2, 1945
                  or           s9, s0, t5
                  srli         s9, zero, 28
                  sub          a0, s4, s0
                  sltiu        sp, s7, 771
                  addi         zero, a0, 589
                  lui          a4, 435506
                  sll          a3, a1, t0
                  slli         t0, a0, 7
                  srai         s1, tp, 4
                  sll          a6, s2, s9
                  slli         t3, a3, 7
                  xori         t2, t2, 93
                  sltu         s3, s5, s9
                  xori         a3, s1, -1224
                  and          tp, s4, s1
                  srai         t6, t0, 23
                  and          tp, s3, s2
                  lui          ra, 335404
                  srai         a7, t3, 10
                  ori          a1, s0, 1413
                  lui          gp, 336635
                  andi         a4, sp, 1338
                  andi         gp, a0, 591
                  andi         t0, s9, -1843
                  slti         t6, ra, 1204
                  lui          t0, 295780
                  srl          a0, a0, a6
                  and          t4, s1, a2
                  xori         t3, t5, 162
                  xor          t1, sp, a5
                  srli         s0, t1, 23
                  sltiu        a7, a0, 1379
                  and          ra, sp, zero
                  slli         a6, a1, 4
                  addi         s0, s6, -1547
                  sra          s3, t4, sp
                  srli         t2, s8, 1
                  addi         tp, a2, 276
                  sll          a5, s0, t5
                  lui          tp, 724358
                  sltu         a7, a0, sp
                  sub          t4, a0, t1
                  sub          s10, a5, a0
                  andi         t1, a0, -400
                  srl          s4, s11, t3
                  srai         s7, s1, 2
                  sll          zero, a2, t2
                  nop
                  sltiu        a4, t3, -1070
                  add          s7, s10, a2
                  andi         tp, s5, -1465
                  nop
                  lui          s2, 658024
                  and          t4, t0, a2
                  addi         s0, s0, -1548
                  li           t6, 0x912043f2 #start riscv_int_numeric_corner_stream_13
                  li           t4, 0x0
                  li           t2, 0x812185a4
                  li           a4, 0x99e605e9
                  li           t5, 0x58a994c5
                  li           s0, 0x696e38a7
                  li           a3, 0xffffffff
                  li           a5, 0x0
                  li           s8, 0x80000000
                  li           a2, 0xffffffff
                  lui          a3, 122890
                  auipc        t4, 770274
                  nop
                  lui          t6, 563577
                  auipc        t4, 105636
                  lui          t4, 241781
                  sub          a5, a2, a2
                  addi         a2, a5, 346
                  addi         a3, t6, 840
                  add          a5, t5, t4
                  nop
                  lui          t6, 812715
                  add          s8, s0, a2
                  lui          a2, 140253
                  lui          a3, 912495
                  auipc        t5, 358996 #end riscv_int_numeric_corner_stream_13
                  xori         a3, s7, -1973
                  sltu         ra, a7, s5
                  sub          t2, s6, s11
                  and          a2, tp, s4
                  sra          s0, s2, s9
                  slli         t1, t0, 16
                  andi         s2, gp, -1310
                  slti         a6, s3, -1557
                  addi         a2, zero, -246
                  addi         s4, t1, -1439
                  sltu         s8, s5, t5
                  sub          sp, ra, s7
                  sub          t0, s4, s2
                  srl          s8, t0, a7
                  nop
                  sltu         t5, a4, s6
                  and          s3, s5, t0
                  lui          t6, 331227
                  sll          a1, s2, s2
                  auipc        t5, 818387
                  sll          a0, a6, s8
                  sll          zero, a7, a3
                  sltiu        gp, t6, 507
                  sra          s4, s11, s2
                  sltu         sp, sp, s4
                  sub          s9, t2, t6
                  xori         a2, s8, 1279
                  xor          a5, s5, ra
                  sltu         t2, a0, t3
                  slli         s2, s5, 29
                  or           a1, s1, s8
                  lui          a3, 940582
                  xori         a6, s11, 792
                  or           a5, a2, s4
                  sra          a4, t5, a0
                  auipc        s3, 972107
                  sltu         gp, s2, a3
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           t6, 0x22663af1
                  li           t1, 0x518c537f
                  li           a5, 0x0
                  li           a3, 0x0
                  li           t4, 0xf0df740b
                  li           a1, 0x0
                  li           t5, 0x80000000
                  li           tp, 0x80000000
                  li           t3, 0x7978c200
                  nop
                  auipc        t6, 947231
                  add          t4, t1, t3
                  nop
                  sub          a3, t5, tp
                  auipc        t1, 63315
                  addi         t3, t3, -1448
                  addi         t3, t1, -1483
                  addi         t6, tp, -1060
                  nop
                  addi         t1, tp, -1042
                  auipc        t6, 871597
                  add          t4, a5, t6
                  lui          t4, 228250
                  add          a5, t6, t6
                  auipc        tp, 478963
                  nop
                  addi         t5, t4, 2004
                  lui          t3, 294209 #end riscv_int_numeric_corner_stream_0
                  slli         sp, t5, 3
                  nop
                  xori         gp, t1, -1516
                  addi         t1, t4, 1664
                  sltu         sp, s10, s3
                  sltiu        sp, s11, -1702
                  sub          s3, s2, t4
                  lui          s8, 346380
                  srli         t6, a6, 5
                  srl          a4, s11, zero
                  slt          a6, s7, s6
                  slli         a6, a5, 21
                  slti         zero, s9, -770
                  srli         a6, s5, 28
                  add          a0, a1, a5
                  or           zero, s6, t1
                  ori          zero, a2, 998
                  nop
                  slli         t3, s1, 16
                  add          a3, sp, t2
                  or           t3, t1, sp
                  add          t0, s5, tp
                  addi         s1, s0, -294
                  slli         a3, a4, 5
                  nop
                  andi         ra, a4, 1388
                  slt          s3, s11, s7
                  andi         t2, s10, -256
                  and          sp, a0, s0
                  slti         a6, s10, 1729
                  xor          a7, t4, s5
                  addi         a4, gp, 478
                  auipc        a6, 669207
                  auipc        a6, 891228
                  srl          sp, a1, t6
                  or           ra, s0, zero
                  slti         s10, t0, -906
                  xor          a7, s9, s4
                  sltu         t0, gp, ra
                  srl          a3, s5, a5
                  andi         s2, s9, -1801
                  sltiu        t2, s9, -1522
                  ori          t1, a7, -537
                  add          s1, zero, s9
                  auipc        t4, 283024
                  sll          ra, t0, s3
                  slti         t1, s2, -1926
                  or           gp, a3, s2
                  slli         a7, a1, 3
                  or           t5, t5, sp
                  slt          gp, s9, s1
                  sub          sp, a2, s2
                  or           zero, a4, a3
                  lui          t2, 259588
                  sltu         ra, s10, a3
                  addi         t1, s3, -1082
                  andi         s4, s11, -1985
                  and          s4, zero, a3
                  slli         s3, s4, 25
                  add          t4, s4, s7
                  xor          a3, s8, t4
                  xori         t1, s9, 208
                  and          sp, a3, s2
                  and          t3, s3, t6
                  lui          zero, 212233
                  sub          s3, s4, t6
                  xor          zero, s2, s9
                  slli         s1, a1, 12
                  slt          s10, gp, s8
                  slli         ra, a0, 19
                  andi         t0, t6, 352
                  srli         a2, t1, 22
                  srl          t1, s9, s1
                  ori          a6, ra, -1950
                  slti         s4, a0, 1947
                  or           s7, s9, s11
                  slt          t1, a7, s6
                  sltu         tp, a2, a4
                  sra          a6, s9, s1
                  ori          a7, sp, -777
                  add          t1, gp, t0
                  auipc        t6, 742085
                  auipc        s8, 224433
                  or           t6, tp, s2
                  or           s0, t5, s0
                  srai         a3, gp, 27
                  and          s3, s2, t3
                  addi         t6, tp, 1731
                  addi         s0, a0, 969
                  add          s10, s11, a3
                  or           s9, t1, t5
                  srl          s7, t0, a4
                  add          s10, s9, s9
                  addi         t4, s2, 1854
                  slt          a7, s1, a7
                  lui          t2, 1014480
                  sltu         t6, s2, t2
                  andi         s2, t1, -1425
                  slti         sp, s1, 553
                  nop
                  addi         s0, s3, 1521
                  srl          a7, s1, t1
                  ori          s1, s10, -1047
                  lui          s4, 6042
                  sra          t0, gp, s3
                  sltiu        tp, t0, -1228
                  add          gp, a7, a7
                  addi         sp, a4, 731
                  sltu         s10, s8, s4
                  srl          s7, t6, s2
                  srai         gp, s9, 2
                  xor          s8, s5, ra
                  slt          a4, s11, a1
                  srli         t4, t5, 23
                  slti         s2, a0, 466
                  or           s4, sp, sp
                  slt          a5, a3, s4
                  sll          s2, gp, a1
                  sra          tp, s8, a3
                  ori          sp, s8, 1868
                  srli         s0, s8, 8
                  slli         a7, t1, 15
                  and          a0, a1, s10
                  add          s1, s5, s2
                  or           t1, ra, a7
                  xori         zero, s0, 862
                  auipc        t2, 304488
                  slt          zero, s10, t4
                  auipc        ra, 638425
                  slti         t5, s2, -137
                  ori          zero, s1, -227
                  auipc        zero, 589505
                  xor          s2, s2, t6
                  lui          a6, 213177
                  addi         s2, s0, 1919
                  sll          sp, a1, tp
                  sra          s10, s6, t0
                  ori          t1, t6, -1441
                  auipc        a6, 9364
                  xori         s3, s1, -202
                  or           a2, s2, a5
                  xori         a5, t5, 1243
                  srl          a6, s10, a6
                  xor          s2, a7, a1
                  sltiu        a5, t2, 475
                  xori         gp, s1, -1353
                  auipc        a1, 104218
                  sra          s10, a6, a0
                  srai         s0, s5, 29
                  lui          t6, 241192
                  slli         t2, a6, 5
                  sra          t0, t2, s2
                  xor          t4, a0, a0
                  auipc        s4, 531254
                  lui          t2, 677713
                  slli         t0, s8, 12
                  srli         t3, s6, 0
                  xori         t3, a3, 1845
                  lui          s1, 985541
                  add          a4, tp, a4
                  auipc        t1, 585649
                  slti         s7, t5, 1168
                  sltiu        t4, a1, -1582
                  slti         s7, t5, 140
                  sltu         s4, s8, s9
                  xori         zero, s8, -1226
                  sltu         t1, s1, s0
                  addi         s3, s4, 1682
                  xori         gp, s7, -475
                  add          sp, t3, tp
                  ori          t2, a2, 1986
                  slli         sp, s11, 26
                  nop
                  auipc        zero, 715789
                  sra          zero, s8, t2
                  srl          s9, s3, a0
                  ori          a7, a7, -1774
                  addi         a6, tp, 869
                  nop
                  nop
                  add          t4, s2, t0
                  slti         a7, t5, -765
                  srli         ra, s0, 20
                  lui          t6, 833648
                  nop
                  ori          a7, s8, -379
                  nop
                  lui          a3, 260628
                  add          t2, s5, a2
                  xor          sp, s0, s5
                  sll          a7, a5, s5
                  srli         s1, s0, 6
                  auipc        gp, 369614
                  ori          ra, s5, 1577
                  auipc        s4, 227988
                  and          s1, a6, a1
                  and          s1, t0, s0
                  ori          t6, a1, 370
                  sltiu        zero, sp, -1500
                  sll          a6, t4, s8
                  srli         sp, t1, 10
                  slli         t3, a3, 9
                  slli         s1, t6, 15
                  auipc        zero, 341434
                  sra          gp, t2, t1
                  add          s3, a2, s10
                  and          a3, a7, gp
                  or           a1, t1, a6
                  and          s9, t3, a2
                  slt          zero, s11, s5
                  or           s1, a1, s0
                  xori         s0, t4, -56
                  nop
                  srli         s8, t5, 22
                  xor          a1, t0, zero
                  addi         ra, a4, -1533
                  sltu         t5, t4, gp
                  add          s1, a4, a0
                  slli         s9, s3, 5
                  lui          t3, 1021044
                  sub          s7, t0, s4
                  sltu         a0, s6, sp
                  ori          s8, s9, -423
                  slt          a7, t6, s5
                  and          s9, t0, t0
                  auipc        a4, 371891
                  slti         s3, a0, 1628
                  ori          s9, a6, -304
                  sub          s10, s2, a4
                  slt          sp, a2, s9
                  ori          t1, a5, -120
                  slli         s3, gp, 6
                  and          a7, t1, a2
                  xor          a2, gp, a3
                  addi         a1, s4, 115
                  sll          t4, t6, s0
                  ori          ra, t4, 111
                  slt          t3, a3, zero
                  slt          s3, t4, a6
                  add          a7, t2, s9
                  auipc        a0, 612966
                  add          tp, t3, ra
                  xori         t2, s4, 423
                  slt          a2, a2, tp
                  slt          a5, s9, a6
                  slli         a6, s0, 23
                  xori         a0, s9, 1508
                  and          a3, t6, a5
                  xori         a2, a0, 1122
                  srli         a0, s4, 20
                  sra          s0, sp, a3
                  add          t5, sp, s10
                  auipc        t0, 305023
                  slli         a6, t6, 19
                  andi         t0, s11, 668
                  sub          t3, t0, t1
                  srli         s4, t5, 27
                  slli         a0, s4, 26
                  or           a4, a1, zero
                  srai         t4, t2, 8
                  srl          t3, t0, a7
                  nop
                  slt          a4, s3, sp
                  xor          s4, s4, a2
                  addi         zero, s6, -1897
                  slti         a3, s2, 323
                  srai         a5, s5, 22
                  sltu         t3, a2, a6
                  lui          t6, 295052
                  srli         t3, s7, 15
                  nop
                  sub          a2, a0, a1
                  lui          s4, 491586
                  slli         s4, a5, 10
                  sra          s2, s5, s5
                  and          sp, s8, t6
                  and          tp, a6, zero
                  sltiu        a3, s0, -278
                  srai         a4, t4, 15
                  ori          s4, t4, -794
                  slt          s7, t4, s2
                  addi         a5, s11, -930
                  add          s0, a3, a3
                  auipc        t1, 1009585
                  xori         sp, a6, 73
                  slli         s2, t3, 29
                  add          a4, s9, a7
                  slt          ra, s1, t1
                  or           s4, s0, a2
                  sltu         sp, a1, s8
                  sltiu        a1, s9, -1038
                  slti         a5, t2, 1005
                  sll          t6, ra, a6
                  srai         a2, t3, 8
                  srai         zero, a2, 24
                  and          ra, a4, a4
                  slti         tp, s8, -1837
                  slti         s1, a5, -1414
                  auipc        a3, 895732
                  addi         a6, a2, -1839
                  slti         s9, s3, 1030
                  sub          zero, s2, s10
                  srai         s0, a0, 25
                  add          s10, tp, s8
                  xor          t5, a7, tp
                  lui          s10, 1039704
                  srl          sp, zero, tp
                  xor          t2, a3, ra
                  xor          a3, ra, a0
                  slli         t6, s10, 11
                  addi         t6, gp, 779
                  add          t0, a1, tp
                  srai         t3, s8, 29
                  slti         t4, s8, -619
                  slti         s0, t4, 486
                  sra          t1, t5, a3
                  or           s1, s4, a3
                  slli         t1, a1, 22
                  slli         t0, t5, 31
                  or           s2, t3, s6
                  or           a6, t6, a2
                  lui          a5, 803760
                  srl          a2, t5, s11
                  srli         s8, a1, 25
                  xor          t4, a5, s8
                  srli         t6, s6, 22
                  sltu         a2, a4, a6
                  xori         sp, a1, 1622
                  sra          s1, tp, s5
                  xori         ra, s5, 325
                  xor          s8, tp, a7
                  srl          a5, s3, s0
                  lui          a0, 742548
                  xor          s9, s6, zero
                  andi         t6, sp, -1192
                  andi         s9, a4, 347
                  srli         a4, t2, 16
                  ori          t4, t2, -1780
                  ori          ra, a7, 185
                  sltu         t2, a2, s6
                  xor          s7, zero, s8
                  add          a2, t3, s11
                  sltu         s7, a6, zero
                  add          a3, t1, a4
                  sra          s7, a5, t3
                  srai         a2, s11, 11
                  xor          a1, a3, a2
                  slli         t6, s2, 11
                  sltu         s0, s11, gp
                  srai         t0, s8, 11
                  auipc        s0, 589472
                  lui          t4, 843912
                  sub          s3, s3, s3
                  sltu         t4, s10, a7
                  srai         a5, s0, 30
                  and          s9, zero, t3
                  slt          a6, gp, a1
                  sltu         s1, a2, a1
                  sltiu        s0, ra, 827
                  xor          a0, sp, s11
                  slti         a6, a3, -1853
                  nop
                  sub          t5, tp, a4
                  sltu         sp, s6, s7
                  slli         s1, s1, 22
                  lui          s0, 513999
                  xori         a5, a3, 535
                  slti         t1, a7, 352
                  and          t3, a7, a5
                  sll          a5, a3, tp
                  sll          t1, s5, s7
                  andi         a5, s10, -2034
                  slli         a7, s9, 8
                  sll          a3, t4, s2
                  slti         s4, s4, 1296
                  addi         s3, a6, 1104
                  xor          t3, ra, t4
                  sltu         t3, s4, s10
                  or           s7, s1, t6
                  srai         s10, a6, 27
                  slt          t4, t5, a7
                  add          t3, s3, s11
                  slti         t2, sp, -822
                  xori         a6, s11, 96
                  srai         t1, t4, 12
                  xori         t4, s1, -1986
                  srai         a5, a6, 2
                  auipc        t4, 350811
                  sltu         ra, s0, t1
                  sll          a3, s1, a6
                  or           a0, s1, a7
                  srai         sp, gp, 4
                  srl          gp, s0, s9
                  or           s3, s3, sp
                  slti         t3, s1, -1619
                  and          t4, t6, s5
                  srai         sp, gp, 29
                  nop
                  andi         a4, s8, -744
                  srl          ra, a4, s8
                  nop
                  srl          a0, t6, ra
                  ori          a5, s3, 1304
                  srai         gp, ra, 30
                  xori         a7, a3, -1477
                  addi         t0, t6, 1393
                  sra          t1, s10, t0
                  sltu         zero, a0, s2
                  srl          t4, t0, a0
                  and          t6, tp, s0
                  addi         a6, t5, -103
                  or           zero, s7, t5
                  or           s1, a5, a5
                  nop
                  and          t0, a2, sp
                  auipc        a0, 394888
                  nop
                  xor          s2, s5, t4
                  srl          s10, t6, tp
                  sra          a2, t5, t5
                  ori          t4, s9, 878
                  slti         t2, a2, -615
                  addi         a1, s6, -1538
                  auipc        s4, 318527
                  srai         s1, a3, 5
                  slt          a0, gp, sp
                  xori         s1, ra, 1441
                  addi         ra, s11, 1484
                  slti         a0, t4, -1284
                  auipc        t5, 266814
                  ori          s7, s6, -1363
                  srli         a4, s5, 0
                  sub          sp, s7, zero
                  srl          a7, s10, a2
                  ori          s8, s1, -156
                  xor          t0, s6, s0
                  srl          a6, ra, s2
                  srli         a7, t5, 2
                  xor          a5, t6, zero
                  or           a4, a7, gp
                  addi         tp, s2, -1687
                  srai         s3, tp, 6
                  and          s7, s5, a0
                  addi         s9, s2, -297
                  srai         a3, s10, 30
                  andi         s0, s2, 828
                  and          a7, s0, sp
                  add          s1, s11, a2
                  sltu         tp, a6, s5
                  xor          a1, s0, t0
                  add          sp, t3, t3
                  srli         s4, t6, 18
                  lui          t6, 755389
                  lui          t4, 4875
                  xor          sp, t6, a5
                  lui          gp, 8734
                  sltu         zero, tp, s8
                  and          s1, a6, a2
                  ori          s3, s7, -840
                  srl          s1, t6, ra
                  srl          a1, a2, s1
                  lui          t3, 784876
                  srl          s3, sp, s0
                  sra          t5, s9, t4
                  srl          s7, s3, s8
                  srai         a0, gp, 10
                  xor          t2, sp, a2
                  or           a2, a5, s9
                  ori          s7, s9, 1977
                  and          a4, t2, s10
                  sltu         a3, gp, s9
                  slt          t0, t6, gp
                  srai         s0, sp, 10
                  slli         tp, a6, 28
                  or           s4, s1, s0
                  lui          s10, 181995
                  lui          t1, 1005292
                  nop
                  addi         t4, a2, 632
                  andi         a4, s9, 200
                  andi         a7, t5, 1934
                  nop
                  nop
                  addi         t0, s9, -1390
                  sltu         tp, s4, s5
                  slt          s9, s1, a5
                  auipc        gp, 763185
                  slli         t1, s0, 4
                  sra          a7, a7, s4
                  auipc        ra, 594988
                  lui          sp, 857315
                  slt          a1, t2, a5
                  or           ra, s1, s4
                  nop
                  srai         a0, sp, 26
                  add          t6, t1, sp
                  srai         s9, gp, 11
                  auipc        gp, 439641
                  addi         a1, t4, -268
                  sltiu        t0, s10, 858
                  xori         s0, ra, -1059
                  auipc        a6, 309011
                  auipc        a6, 263356
                  sltu         a5, s2, t0
                  lui          a4, 23902
                  sltiu        gp, s8, -1113
                  sll          t5, a6, a4
                  ori          t0, s7, 1675
                  or           tp, s3, sp
                  sub          t3, a5, a6
                  sltu         s8, t4, t5
                  sltu         a0, a1, sp
                  srai         t3, s8, 13
                  sub          a7, t5, s0
                  srli         a7, t1, 18
                  sra          sp, zero, tp
                  andi         s1, s4, -451
                  and          s10, s11, ra
                  and          t4, s1, s6
                  slli         a7, tp, 3
                  slli         ra, s6, 30
                  srli         a1, a6, 4
                  ori          a7, a6, 1033
                  ori          t3, t0, 195
                  xor          t5, s0, s1
                  andi         sp, a6, -619
                  nop
                  slti         gp, a2, -28
                  sll          a2, s3, s4
                  or           s8, s1, s0
                  ori          s10, t3, 1758
                  ori          s4, a6, 796
                  and          s8, s8, t6
                  slt          s1, sp, s2
                  addi         a4, a2, 815
                  addi         s3, s10, 155
                  sub          s10, a6, t3
                  srai         t1, a0, 6
                  sub          a1, s2, s5
                  ori          t0, s6, -901
                  sub          s8, s11, t3
                  srli         a3, s11, 18
                  lui          t2, 218725
                  andi         gp, s2, -741
                  andi         a7, t3, -1738
                  lui          t0, 892448
                  nop
                  nop
                  sll          a4, a7, s6
                  or           s8, s8, t1
                  ori          s3, a5, -1460
                  sltu         s10, s9, s11
                  sra          s10, a4, t2
                  ori          a7, s5, 1677
                  ori          a3, s3, 1258
                  lui          s10, 947473
                  nop
                  sub          s9, t5, s7
                  sub          s3, t6, a7
                  ori          a4, t2, -1983
                  and          a4, s3, t2
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           a2, 0x0
                  li           a6, 0xffffffff
                  li           s4, 0xffffffff
                  li           s10, 0xffffffff
                  li           t0, 0x80000000
                  li           t5, 0x80000000
                  li           s9, 0x0
                  li           a3, 0x80000000
                  li           sp, 0x0
                  addi         ra, s4, -1554
                  addi         a3, sp, -1086
                  add          sp, s10, a2
                  sub          s9, ra, sp
                  add          t0, a3, a3
                  sub          s4, a6, t0
                  add          a6, ra, s4
                  add          a2, a3, s4
                  sub          s10, a3, sp
                  sub          sp, s9, s10
                  sub          t0, a2, a3
                  nop
                  auipc        a6, 418620
                  nop
                  auipc        t0, 235080
                  add          s4, a3, s4
                  auipc        s4, 944939
                  nop
                  sub          s9, sp, a2
                  lui          ra, 300917 #end riscv_int_numeric_corner_stream_5
                  sra          gp, s11, s7
                  slt          t0, t1, gp
                  srl          s1, sp, s11
                  sra          t1, a2, s4
                  addi         ra, t1, -167
                  xor          s9, s7, s11
                  xori         a4, a2, 1471
                  xori         t6, a1, 1139
                  nop
                  or           tp, t2, t2
                  andi         gp, t3, -1774
                  xori         ra, a7, 965
                  ori          a4, a6, -393
                  srli         a1, a1, 11
                  xor          tp, a3, a3
                  xori         a2, s6, 1100
                  nop
                  slti         a6, t0, 1140
                  auipc        t5, 723022
                  sltu         s1, s0, t6
                  slt          t1, s2, ra
                  srai         t6, a2, 2
                  nop
                  slti         ra, a2, -1936
                  nop
                  add          t6, t4, a2
                  ori          sp, s11, 570
                  ori          s1, zero, -1325
                  srai         a4, s5, 23
                  srai         tp, s9, 25
                  xor          a0, s6, t2
                  auipc        tp, 214253
                  slt          t2, gp, t1
                  or           zero, zero, t4
                  srai         a4, a2, 26
                  andi         zero, s8, -301
                  slli         s2, s7, 12
                  andi         tp, s2, -156
                  xor          t2, s3, gp
                  xor          a6, s6, a2
                  nop
                  xor          s2, t6, a0
                  xor          tp, s3, gp
                  slt          sp, s10, zero
                  add          a2, s3, t1
                  srli         s8, a0, 22
                  slt          t4, a4, a3
                  sltiu        zero, t5, 1599
                  srl          sp, ra, a7
                  sra          gp, s5, s0
                  slli         a7, s1, 18
                  sub          s4, a0, s4
                  sltu         a4, s8, s7
                  sll          zero, s11, ra
                  sltu         t1, a5, tp
                  slt          t0, t0, t0
                  sltu         t0, zero, a0
                  andi         s7, a5, -1823
                  sltiu        a7, gp, 1321
                  xor          s10, s1, t6
                  or           t0, a5, a1
                  li           a5, 0x164d4a01 #start riscv_int_numeric_corner_stream_9
                  li           t3, 0x0
                  li           sp, 0x0
                  li           t6, 0x0
                  li           a6, 0xffffffff
                  li           s3, 0x80000000
                  li           t4, 0x4cffeb1e
                  li           s7, 0x0
                  li           t1, 0xffffffff
                  li           s8, 0x80000000
                  add          t4, t1, a5
                  addi         a5, sp, -5
                  addi         sp, t6, -1556
                  add          t4, sp, t3
                  nop
                  sub          s3, t6, a6
                  auipc        t6, 575728
                  lui          s7, 108330
                  auipc        t6, 816283
                  addi         t6, sp, -1516
                  auipc        sp, 747104
                  addi         a5, t6, 2029
                  addi         s8, sp, 1989
                  nop
                  sub          t3, sp, t6
                  lui          t6, 959069
                  add          s3, s7, t1
                  addi         t6, sp, -809
                  lui          s8, 777787
                  add          sp, s7, t4 #end riscv_int_numeric_corner_stream_9
                  sltu         t3, s5, ra
                  sll          a1, sp, tp
                  ori          a7, t2, -1914
                  add          t3, t6, t5
                  slti         s10, s2, 529
                  add          t1, gp, a3
                  sub          s1, t5, a7
                  andi         t1, t0, 1633
                  add          s7, s0, s2
                  auipc        t5, 519495
                  auipc        a0, 321752
                  add          gp, a7, sp
                  or           s7, t4, s11
                  ori          zero, t3, -25
                  sll          s10, s3, s9
                  lui          a3, 477836
                  sra          t3, a0, s0
                  nop
                  addi         t1, s8, 1111
                  slt          s9, s2, t0
                  sltu         s4, a7, s1
                  lui          s2, 338729
                  slli         t1, a7, 6
                  xori         t2, s2, -1030
                  lui          a1, 566566
                  lui          s7, 982796
                  slti         a2, sp, -938
                  xori         a7, tp, 1559
                  auipc        s8, 15846
                  sra          sp, t5, t4
                  sub          zero, s1, t3
                  auipc        t5, 612504
                  sll          gp, s6, sp
                  xor          sp, t6, s9
                  andi         tp, ra, 907
                  or           a5, t5, ra
                  xori         t3, t0, -830
                  sra          s3, t0, s6
                  xori         a7, s2, 464
                  slt          t2, s10, t4
                  auipc        t6, 611511
                  slt          ra, t5, gp
                  sll          s1, a4, s9
                  sltu         a1, a0, t3
                  lui          a0, 495349
                  sltu         a2, s9, s4
                  srli         s2, sp, 23
                  xori         sp, a3, -171
                  lui          t0, 177690
                  nop
                  and          s1, s7, tp
                  slti         a5, s7, -1225
                  slti         tp, sp, 820
                  auipc        a3, 794419
                  lui          a0, 274470
                  slli         sp, s9, 7
                  sra          s1, s5, a3
                  sltiu        s3, t6, 736
                  sll          t4, t5, a6
                  addi         gp, a5, -585
                  srli         s0, s7, 17
                  sltu         t1, s5, s3
                  nop
                  xor          a4, tp, s3
                  ori          tp, s7, -1035
                  sra          t6, a2, s7
                  slli         s1, a3, 15
                  slt          t5, a1, a5
                  or           s8, t3, s2
                  slti         t3, t2, -1586
                  auipc        s8, 225240
                  nop
                  ori          t1, gp, -1533
                  slt          s4, a2, s0
                  nop
                  addi         a0, a0, -1033
                  srli         a2, s3, 26
                  slt          s0, ra, s3
                  slt          gp, s8, s9
                  or           s9, t5, s4
                  srai         a2, a4, 11
                  sltiu        a6, s0, -1321
                  nop
                  slt          s1, t2, s9
                  and          t3, t2, t3
                  sub          s0, t1, t5
                  slli         s1, a7, 15
                  sltiu        t4, zero, 1252
                  nop
                  sll          s2, t6, ra
                  srl          a7, a1, s6
                  nop
                  nop
                  andi         s1, s9, 1582
                  auipc        s2, 1011877
                  srai         s1, a3, 30
                  srli         s8, t6, 29
                  xori         a4, a1, -1236
                  andi         a6, zero, -1620
                  slli         t6, s5, 23
                  sll          a3, s10, ra
                  sltu         a0, a6, s6
                  srli         t3, s5, 31
                  slti         t5, a6, 1017
                  xor          a1, tp, a1
                  sll          a7, t6, t3
                  srai         a2, s2, 24
                  add          s8, t5, gp
                  addi         s2, zero, -1818
                  slt          t2, sp, s10
                  auipc        t5, 428940
                  srl          a5, sp, tp
                  addi         a7, a0, -1669
                  auipc        t5, 547358
                  xori         a0, s8, -989
                  nop
                  sra          a1, s7, s4
                  and          a4, s4, s8
                  nop
                  andi         s3, t4, 1080
                  andi         gp, s6, -426
                  or           a6, t4, s8
                  slt          ra, a1, ra
                  srl          gp, t1, s8
                  andi         t0, a3, -1626
                  add          s1, t0, s1
                  sll          a0, s8, a4
                  auipc        zero, 359407
                  add          a1, t2, a0
                  and          t4, t4, t0
                  sra          tp, s3, ra
                  sra          gp, s9, a2
                  srai         zero, a3, 27
                  sltu         ra, a6, t4
                  xori         a0, t6, 1917
                  nop
                  slt          t3, a3, s1
                  nop
                  auipc        s3, 1040521
                  sub          tp, t4, t6
                  sll          t4, a1, tp
                  sltiu        a7, t5, -1033
                  xori         a7, t1, -165
                  sra          t1, t6, t5
                  addi         s2, sp, -480
                  andi         a1, s3, 875
                  sltu         a4, s6, a0
                  slti         s3, s1, 203
                  addi         s0, t3, -1382
                  or           gp, t5, t2
                  slti         a1, a3, 1609
                  srli         s8, a1, 22
                  sltiu        ra, t5, 1115
                  addi         a5, a3, 970
                  or           t6, t0, s11
                  xori         s4, a6, 1755
                  andi         a7, a6, 71
                  sltu         gp, t1, s2
                  and          s7, s8, t6
                  ori          zero, s11, 924
                  lui          t5, 397448
                  sltiu        tp, s2, 98
                  sltiu        a4, sp, 127
                  or           a6, a6, a3
                  slti         a5, t1, -315
                  slli         s7, s5, 6
                  sltiu        gp, s4, -1069
                  nop
                  auipc        a7, 1019758
                  xori         a5, s7, -1693
                  sltiu        zero, a1, -732
                  sll          s3, a4, t3
                  sra          s8, t2, sp
                  xori         a2, s2, 829
                  or           s10, a6, s6
                  sra          s8, s0, ra
                  slti         t0, a3, -287
                  nop
                  nop
                  andi         s8, a6, 574
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           a7, 0x59883dfa
                  li           a6, 0xffffffff
                  li           a4, 0xffffffff
                  li           sp, 0x0
                  li           s3, 0x0
                  li           s0, 0xdf103aab
                  li           s10, 0x922af957
                  li           a3, 0x7057de3b
                  li           s4, 0x80000000
                  nop
                  lui          s0, 62578
                  addi         s4, s4, 12
                  add          a7, a7, a6
                  add          s0, a6, a4
                  addi         s0, a7, 603
                  nop
                  nop
                  add          a3, s0, a4
                  add          s0, a7, s10
                  sub          a6, a4, s10
                  sub          a6, s4, s0
                  sub          a7, a3, a6
                  auipc        s0, 310039
                  lui          s0, 634918
                  nop
                  addi         a6, s3, 196
                  addi         t0, s3, 643
                  nop
                  auipc        sp, 471858 #end riscv_int_numeric_corner_stream_2
                  sub          s1, s10, s10
                  srai         s7, a2, 0
                  slti         s2, s6, -156
                  add          s9, t3, t6
                  slli         t2, a0, 10
                  slti         t4, a5, -1617
                  lui          s8, 662097
                  andi         t2, a2, -756
                  xor          a6, ra, s10
                  auipc        a6, 309665
                  auipc        gp, 597763
                  sra          a4, t5, tp
                  srli         s8, s2, 6
                  addi         s7, a0, -805
                  sra          s4, s6, s6
                  xor          t2, s2, tp
                  sltu         zero, s10, a0
                  sub          ra, t1, s1
                  slli         a5, t2, 12
                  slti         t2, t6, 609
                  or           s3, a1, s0
                  sub          s10, t4, tp
                  srl          s7, a1, t2
                  slti         t0, a5, 994
                  sll          t5, zero, s9
                  sltiu        t5, s0, -734
                  andi         t6, t4, -495
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           a4, 0xffffffff
                  li           a7, 0x80000000
                  li           a6, 0x80000000
                  li           t0, 0xa30f9f16
                  li           gp, 0xe46bbf52
                  li           a0, 0x0
                  li           s1, 0xffffffff
                  li           a1, 0xcbc95198
                  li           t5, 0x0
                  nop
                  nop
                  lui          gp, 213743
                  lui          gp, 563650
                  auipc        s10, 996773
                  addi         a1, a1, 737
                  nop
                  nop
                  addi         t0, t0, -1297
                  nop
                  auipc        a6, 506013
                  lui          gp, 400848
                  nop
                  lui          a6, 382409
                  nop
                  nop
                  lui          s10, 1018559
                  lui          s1, 991617
                  add          a0, s10, a0
                  nop
                  auipc        a4, 782749
                  auipc        a4, 769104
                  auipc        a7, 171715
                  sub          t0, a4, t5
                  add          a4, a0, a7 #end riscv_int_numeric_corner_stream_3
                  sub          t4, a6, t5
                  lui          a7, 607173
                  sll          t0, t2, a0
                  andi         s9, sp, 1979
                  xor          s1, t3, a5
                  lui          a1, 118539
                  and          t6, a6, s1
                  slt          a4, s1, a5
                  sra          a4, a5, t3
                  auipc        t2, 717536
                  or           gp, gp, s8
                  auipc        a0, 532965
                  addi         t4, s7, -1189
                  sltu         t5, s3, a6
                  auipc        t1, 1005777
                  sra          a3, s10, t3
                  xori         t4, ra, -5
                  sltu         s3, a2, t3
                  ori          a5, s7, 876
                  add          gp, t3, a6
                  xori         zero, t4, -1607
                  sra          ra, gp, t0
                  add          s9, s1, s11
                  sub          zero, a2, a3
                  lui          a4, 24677
                  slt          s4, s10, s6
                  addi         s0, s1, 770
                  xori         t5, t6, 1092
                  sub          a5, s11, t1
                  srli         s1, s7, 22
                  or           a4, a2, s1
                  slt          s7, s1, s8
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           s7, 0x80000000
                  li           a3, 0xffffffff
                  li           a0, 0x0
                  li           ra, 0xac5e1232
                  li           s0, 0xffffffff
                  li           a6, 0x0
                  li           a4, 0x0
                  li           t6, 0x3809d2ae
                  li           s8, 0x80000000
                  sub          s8, s8, s0
                  sub          ra, t6, a3
                  addi         a4, a5, -612
                  lui          a4, 71650
                  lui          s8, 700222
                  lui          a0, 99129
                  addi         ra, a6, 608
                  lui          t6, 862451
                  auipc        a5, 256588
                  lui          a4, 850600
                  auipc        a6, 242791
                  lui          a0, 460596
                  auipc        s7, 875309
                  addi         s8, s7, 1467
                  sub          s0, ra, s7
                  sub          a5, ra, s8
                  addi         a4, a5, -405
                  auipc        a3, 485060
                  add          a3, s8, a0
                  lui          a4, 231158 #end riscv_int_numeric_corner_stream_16
                  sub          s7, s1, t6
                  sub          s2, s10, t4
                  sltu         s1, s8, s2
                  slt          t0, a5, a1
                  andi         t3, s2, -83
                  srli         s7, t0, 14
                  nop
                  add          s7, t4, ra
                  srli         a2, a7, 12
                  andi         s1, a7, 790
                  sll          s9, ra, s4
                  srl          t2, a7, a7
                  and          a7, zero, s6
                  slti         zero, a3, 228
                  andi         a0, t1, -829
                  sll          s8, gp, a3
                  sltu         a7, a5, a3
                  slti         s0, a1, -993
                  srl          s2, s2, ra
                  lui          s0, 279367
                  sub          ra, s1, s9
                  sra          a3, s11, tp
                  ori          t0, s5, 708
                  sltu         sp, ra, s2
                  xori         s7, s3, -108
                  slti         s7, t6, -1636
                  add          tp, s11, t6
                  sub          ra, a2, s3
                  ori          t4, t4, -1251
                  lui          t1, 426479
                  xori         sp, t2, 1621
                  auipc        a5, 643666
                  srli         t2, s9, 15
                  xor          t3, t5, a6
                  slti         t1, s10, -361
                  add          t0, s10, a6
                  or           t5, s8, s8
                  sltu         s7, t3, s3
                  sub          a2, s4, t2
                  slti         zero, s5, 1418
                  sll          s1, s10, s0
                  ori          t3, s7, -609
                  xor          s2, t6, a7
                  nop
                  auipc        s10, 657183
                  ori          a3, a5, 926
                  sll          a6, tp, t1
                  srai         s2, s0, 20
                  auipc        t0, 210895
                  srli         a3, s1, 1
                  auipc        a4, 784572
                  nop
                  xor          a4, s9, tp
                  addi         t4, t0, 311
                  sra          a2, a1, t6
                  sltiu        s8, a1, -1587
                  auipc        sp, 617892
                  or           tp, t6, t5
                  srl          gp, s0, a2
                  slli         t2, s5, 7
                  srli         t5, a0, 12
                  ori          tp, a1, 2026
                  nop
                  andi         t2, a3, -424
                  sub          a4, tp, s0
                  sub          a6, s3, s4
                  and          s8, s10, a4
                  srl          a4, a6, gp
                  sub          zero, a0, zero
                  sltiu        zero, s10, -425
                  sll          t2, t1, a5
                  sub          s0, zero, s6
                  sltu         t5, t4, s8
                  andi         s10, t2, 1184
                  lui          a6, 667928
                  sll          t4, a0, t4
                  srli         s1, ra, 16
                  ori          s4, s2, -329
                  slt          t4, a4, s9
                  xor          t3, s8, t4
                  and          s2, s10, t5
                  add          s8, t0, zero
                  addi         a3, a0, -247
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           s10, 0x95b0fad7
                  li           s7, 0xffffffff
                  li           ra, 0x0
                  li           tp, 0xffffffff
                  li           s1, 0xe5119de3
                  li           a3, 0x80000000
                  li           s8, 0x0
                  li           t4, 0x0
                  li           a0, 0x0
                  nop
                  nop
                  sub          s7, t4, s10
                  lui          t4, 469558
                  addi         a0, s1, -1133
                  addi         s7, s7, 1474
                  nop
                  auipc        a0, 849771
                  add          t4, s10, a0
                  lui          a0, 201790
                  auipc        a0, 808099
                  add          a3, a3, ra
                  addi         ra, a3, -1243
                  sub          t2, s10, s7
                  addi         s10, s10, 477
                  nop
                  add          s1, t4, s1
                  addi         s8, a3, 1693
                  sub          s10, s1, s7
                  add          s10, s7, s1
                  sub          s8, s10, a0
                  lui          t2, 476371
                  add          t4, tp, tp
                  addi         a3, t4, 1140
                  add          s1, t2, a3 #end riscv_int_numeric_corner_stream_6
                  slti         t5, s2, -1021
                  sltiu        tp, t3, -1492
                  sub          t5, a6, a5
                  sltu         s4, t0, s5
                  or           a4, gp, s0
                  srl          s10, ra, a4
                  ori          t6, s7, 1921
                  sll          sp, s0, s3
                  sra          tp, s9, t6
                  sll          a7, a5, s2
                  andi         s9, s3, -712
                  or           s4, t2, s8
                  srli         tp, s2, 2
                  xor          s8, s1, t6
                  srl          s10, s8, s11
                  slt          s3, t2, zero
                  srl          t1, ra, s0
                  lui          s1, 839564
                  slli         ra, gp, 2
                  addi         t2, t1, -1507
                  sltu         s10, t6, s6
                  xor          tp, a1, s11
                  srli         t2, a4, 1
                  add          a2, zero, a7
                  sub          t4, gp, s7
                  sltiu        a3, a0, 484
                  sub          a4, sp, t3
                  slti         ra, t0, -800
                  sltu         s1, s7, s7
                  sra          a0, t3, gp
                  srli         sp, a4, 26
                  sltiu        a1, a7, -739
                  nop
                  srli         a4, s8, 22
                  and          a5, sp, a6
                  slli         t6, s6, 10
                  sll          a2, s3, a3
                  nop
                  srli         s9, t0, 10
                  or           t3, a3, s11
                  andi         a5, sp, 376
                  and          s7, s2, zero
                  or           t1, ra, t2
                  slli         t2, a2, 12
                  xori         t3, t6, 1585
                  srai         a7, zero, 18
                  sltu         zero, s4, sp
                  add          s7, a0, s6
                  sll          s10, a2, s9
                  slli         t5, t6, 30
                  ori          sp, a5, -437
                  andi         t0, s11, -1585
                  andi         a1, t5, 877
                  addi         t0, t0, -848
                  and          s10, a6, gp
                  slli         a7, t6, 7
                  sltu         a0, a3, t2
                  srl          t6, t3, a4
                  or           ra, s4, s5
                  nop
                  srl          t0, t4, a1
                  sltiu        s10, a7, 1399
                  andi         s2, a0, 1082
                  sltu         t4, s0, a3
                  slli         zero, s10, 0
                  nop
                  sub          s3, a7, s5
                  sra          t5, ra, s7
                  slli         t1, t4, 21
                  slti         a0, s3, 213
                  slli         a1, t2, 16
                  sra          t5, gp, s0
                  auipc        s4, 6728
                  slli         t5, s7, 22
                  and          s4, a2, t1
                  auipc        t5, 251853
                  auipc        a6, 315922
                  slt          s10, a6, t6
                  sub          zero, s8, s10
                  auipc        a1, 43897
                  add          s2, a3, a6
                  sll          s9, s0, s10
                  auipc        a1, 969086
                  slt          s8, s10, s0
                  sub          a7, s3, a5
                  xor          t6, t5, t4
                  ori          gp, tp, 1558
                  lui          t4, 70187
                  ori          sp, s9, -1502
                  slti         a0, s5, -1048
                  and          a5, a5, t4
                  sll          a3, t0, s4
                  lui          a7, 388751
                  auipc        s4, 53407
                  xor          zero, s11, s6
                  xori         a5, a1, 1428
                  sltu         a4, a4, s11
                  slli         a4, t5, 0
                  nop
                  add          t3, t1, sp
                  xori         a6, s3, -374
                  sltu         a6, s4, s0
                  slt          s9, zero, a0
                  xor          zero, a6, s10
                  sra          a2, s4, ra
                  srl          s4, a3, s7
                  slt          tp, a2, t3
                  lui          s9, 180380
                  or           s1, ra, t6
                  srli         a0, t2, 24
                  and          s2, s0, t3
                  andi         gp, a4, -409
                  srai         zero, gp, 7
                  xori         t2, t1, 1231
                  slli         s2, s10, 0
                  add          t5, t6, s11
                  lui          ra, 83040
                  or           s4, s1, a2
                  and          zero, a5, t5
                  add          ra, gp, s6
                  slli         sp, s1, 18
                  addi         a2, ra, 1014
                  addi         s10, a2, -549
                  srl          a1, t1, s6
                  nop
                  slti         a1, s4, 1858
                  nop
                  sltu         zero, s9, a7
                  add          a5, s4, a5
                  addi         s1, a3, -1647
                  ori          sp, t2, 232
                  ori          t3, s0, -109
                  lui          a7, 385437
                  nop
                  sltiu        a0, a5, 1160
                  slti         a2, a4, 1173
                  sra          s9, t3, sp
                  srli         tp, s4, 28
                  or           t4, s9, a4
                  add          s3, s0, s11
                  or           t6, a0, ra
                  xor          a1, a1, t4
                  addi         a2, t4, -1677
                  sltiu        s8, t3, -925
                  ori          a6, a2, 1400
                  auipc        t2, 266321
                  slti         s2, a4, 355
                  ori          s7, a5, -600
                  xor          a6, t5, s5
                  xor          s10, s0, s5
                  srli         t1, s3, 6
                  addi         s7, t4, 67
                  sub          t6, a5, s3
                  sra          s10, s1, s1
                  or           t6, ra, s2
                  nop
                  sltu         s0, s10, a5
                  ori          a5, sp, 604
                  slli         t2, a5, 30
                  addi         gp, s5, -1863
                  slt          s3, s11, gp
                  slli         s1, s1, 15
                  xor          t1, t1, s11
                  auipc        s4, 950071
                  slti         t6, s11, 1092
                  slti         s3, s5, 991
                  add          s0, s10, s7
                  srl          a7, s4, a1
                  srai         gp, t4, 28
                  xori         a1, t4, -1842
                  srai         a5, t2, 21
                  auipc        tp, 892858
                  add          a2, a6, a3
                  auipc        zero, 791755
                  sra          tp, t1, t2
                  addi         a2, t5, -1572
                  add          s4, t2, sp
                  nop
                  sltiu        s7, s10, -1433
                  slti         a5, tp, -1656
                  nop
                  srli         zero, t6, 27
                  slt          ra, s10, t2
                  lui          t4, 566830
                  sltu         t5, t5, s11
                  sll          t4, ra, a2
                  lui          a2, 24685
                  auipc        t5, 651948
                  andi         t1, s9, 719
                  sltu         a2, a5, t4
                  sltu         zero, t5, a0
                  andi         gp, a0, -1202
                  auipc        sp, 681101
                  sll          s10, t3, t0
                  and          ra, a7, a5
                  slti         ra, t4, 1298
                  sub          t5, s6, a4
                  xori         t2, s5, -983
                  lui          a2, 788576
                  auipc        t6, 527818
                  sltu         a4, a6, s5
                  lui          ra, 588822
                  nop
                  lui          ra, 216889
                  nop
                  lui          s7, 743980
                  srai         s1, zero, 15
                  sll          t2, a7, s0
                  sltu         s7, a6, t6
                  slt          t3, tp, s3
                  slli         s10, s0, 31
                  srl          t0, a3, s10
                  auipc        t0, 570524
                  sltu         t2, ra, s9
                  addi         zero, ra, -184
                  slti         a7, s3, 1073
                  add          a7, a2, t6
                  slti         s1, s0, -586
                  srl          a3, a0, s9
                  srl          a3, a7, a4
                  slti         s0, s11, 794
                  sub          s9, s4, t1
                  nop
                  addi         s7, s7, 1694
                  slli         a6, t3, 27
                  srl          s10, tp, a6
                  add          a6, s6, t3
                  auipc        ra, 612711
                  nop
                  lui          s4, 593167
                  or           a6, t2, a3
                  srli         t0, t0, 12
                  sltu         a2, t5, sp
                  andi         a3, s4, 1243
                  sub          a3, t2, t2
                  sll          sp, s4, s6
                  sub          s7, t5, a5
                  sra          sp, a0, s5
                  sll          t5, a1, t2
                  sra          a0, s0, zero
                  sub          sp, t6, a1
                  sra          ra, s10, s6
                  slti         t0, s8, -1637
                  sra          s2, s8, a4
                  xori         t4, s9, -1049
                  xor          t5, s7, t4
                  sltu         tp, s4, sp
                  slti         a2, s8, 456
                  lui          t6, 285315
                  auipc        a2, 216728
                  andi         s10, a4, 585
                  ori          s7, s6, -1714
                  and          s3, t1, t3
                  addi         t1, s9, -196
                  andi         t6, s1, 1090
                  srli         s8, t1, 27
                  lui          ra, 303140
                  srl          s10, s5, a1
                  nop
                  srli         a0, t0, 15
                  sll          a4, s8, t2
                  slt          s4, s2, gp
                  add          s2, a3, a1
                  xor          s0, a6, s9
                  slli         s0, s5, 27
                  sll          a5, s4, gp
                  srai         s10, s7, 9
                  xori         sp, a6, -958
                  srai         s3, s10, 10
                  slli         s2, s10, 17
                  addi         a0, t2, -256
                  sltu         ra, t2, s7
                  add          t3, s4, tp
                  srai         zero, s10, 14
                  sra          t3, a7, t3
                  andi         ra, a1, -1691
                  sub          a1, s4, a3
                  auipc        ra, 585489
                  sltiu        a1, t3, 822
                  sra          s2, a6, s8
                  add          a1, a0, s8
                  sltu         a7, s0, ra
                  ori          a0, t0, 1960
                  or           s8, t0, t3
                  addi         t2, a2, 245
                  add          a5, zero, a6
                  lui          a0, 624669
                  xori         s9, s10, -1292
                  sltu         ra, ra, s1
                  srai         sp, t4, 0
                  sub          a1, s3, s3
                  xor          tp, tp, tp
                  addi         s7, t4, 1768
                  sra          s1, t6, t2
                  and          t6, ra, t4
                  sub          s8, t3, s10
                  sltiu        a5, t3, 334
                  sub          t3, a7, t3
                  auipc        a4, 857027
                  srai         a7, s1, 10
                  ori          s7, s10, 913
                  ori          s4, tp, 231
                  slti         a3, t2, 266
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           a2, 0xfede0209
                  li           t3, 0x80000000
                  li           s8, 0x93a2fc7e
                  li           t5, 0x2978d0ed
                  li           t2, 0x80000000
                  li           t6, 0xffffffff
                  li           ra, 0xffffffff
                  li           a0, 0x80000000
                  li           s7, 0x80000000
                  add          a2, a2, s8
                  auipc        t5, 305035
                  nop
                  nop
                  nop
                  nop
                  addi         ra, t5, -169
                  addi         t3, t3, -1670
                  nop
                  nop
                  auipc        s7, 737532
                  lui          a2, 653481
                  nop
                  addi         t6, s7, -1485
                  sub          s7, ra, s7
                  sub          t5, t5, s7
                  addi         a6, t6, 1759
                  addi         s8, a6, 1578
                  lui          a2, 373307
                  addi         t2, s7, -962
                  add          s7, a6, s8
                  auipc        a2, 679917
                  auipc        a6, 682671
                  add          s8, a0, a2
                  add          s8, s7, s7
                  lui          s8, 236047
                  lui          s8, 541304
                  nop
                  addi         ra, a0, 279
                  addi         s7, t6, -960 #end riscv_int_numeric_corner_stream_1
                  and          a7, s0, gp
                  srl          a2, t6, s3
                  srl          t4, s0, s7
                  srl          a5, zero, zero
                  ori          s9, t3, 66
                  xori         a1, a3, 485
                  sll          ra, s1, s10
                  auipc        zero, 184544
                  srai         a3, s8, 27
                  and          s4, a0, a5
                  slli         gp, a7, 7
                  ori          tp, a7, -1239
                  and          s3, t2, a1
                  ori          tp, s9, 1099
                  xori         t6, a6, 2003
                  add          a4, t2, a7
                  add          t6, gp, t4
                  slti         s0, s5, -448
                  add          a4, s5, sp
                  slti         s7, t4, 1210
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s4, 0x50a9903c
                  li           a0, 0x5b87f582
                  li           sp, 0xffffffff
                  li           t0, 0x2f6f8801
                  li           s1, 0xffffffff
                  li           t6, 0x23773538
                  li           gp, 0xffffffff
                  li           t5, 0xbbd4e1e3
                  li           a6, 0x50d0e3a5
                  nop
                  auipc        t6, 601634
                  nop
                  add          s1, a6, t6
                  add          t0, a0, t5
                  auipc        a0, 183696
                  sub          t0, a0, t6
                  sub          s4, t5, s1
                  nop
                  addi         t6, t5, -1091
                  add          t4, a6, s1
                  lui          t5, 67474
                  addi         t6, s4, 1093
                  nop
                  addi         gp, t0, 1748
                  sub          s4, sp, t0
                  lui          t4, 687035
                  lui          a0, 209135
                  lui          sp, 794992
                  lui          t6, 738222
                  addi         t4, sp, 1106
                  auipc        a0, 557534
                  add          t5, t6, s4
                  auipc        s1, 177732
                  nop
                  sub          t5, s4, s1
                  addi         t0, t4, -874 #end riscv_int_numeric_corner_stream_14
                  sub          a1, sp, ra
                  addi         a7, zero, 1963
                  nop
                  xori         a4, s3, -520
                  sltu         a0, a5, s1
                  lui          a1, 612420
                  auipc        s8, 135448
                  slli         s0, s1, 17
                  xori         a1, t0, 446
                  sra          a1, s5, t2
                  andi         a0, s11, -740
                  sub          t4, a5, s0
                  and          a5, s3, a0
                  srli         s7, t4, 24
                  sub          a5, s1, t2
                  sll          s7, s10, a0
                  sltu         t5, tp, a3
                  and          t0, a7, s4
                  slt          s0, s7, s3
                  add          t3, s7, ra
                  slti         t2, s10, 126
                  nop
                  sltiu        sp, t2, -1286
                  sltiu        gp, a1, 1046
                  srli         s1, a7, 17
                  sltu         t4, a0, a5
                  andi         s1, t6, 1883
                  sltiu        t2, a7, -1449
                  srli         t6, a3, 27
                  xor          t5, t0, s8
                  srli         s7, t3, 19
                  srai         s7, s0, 15
                  xori         s0, tp, 324
                  xor          s3, a0, a2
                  nop
                  sra          s0, zero, t5
                  sltiu        s1, a2, -1446
                  slt          t5, s0, s5
                  xor          s4, tp, a1
                  srli         t6, t2, 31
                  slli         a5, s0, 25
                  srl          s2, s5, a6
                  slli         t5, t1, 4
                  and          t1, zero, s5
                  andi         ra, t0, -1116
                  sra          s1, tp, sp
                  slt          s3, a7, t3
                  sub          a5, s8, ra
                  or           ra, t2, a1
                  srli         s10, a3, 3
                  auipc        a1, 754817
                  srai         s9, a0, 27
                  sltiu        a0, zero, -612
                  sltu         t2, zero, s9
                  srai         a7, s6, 1
                  srl          t6, s3, t4
                  lui          s9, 300688
                  xori         a1, a7, -1109
                  sltiu        t0, sp, -585
                  sra          t0, s10, s8
                  nop
                  srai         a3, a6, 2
                  sub          s9, s3, t4
                  lui          s0, 1002727
                  srli         t4, s7, 0
                  srl          s0, tp, s1
                  xori         s10, t3, -1199
                  and          t6, a6, s11
                  sll          s9, a4, s1
                  xor          a5, s7, s10
                  auipc        t1, 921058
                  auipc        tp, 1009785
                  slti         s3, s3, 1494
                  sltu         s7, s9, t5
                  sll          t3, s3, zero
                  slt          t0, s11, s0
                  srai         s4, t6, 1
                  auipc        a3, 663619
                  slti         s7, a5, 1409
                  sltu         a0, a5, a6
                  nop
                  xori         a6, a5, -966
                  lui          tp, 880519
                  andi         s4, s10, -1155
                  addi         s0, t3, -1604
                  slt          s2, zero, a1
                  srli         s7, s5, 23
                  nop
                  sltu         ra, a0, a5
                  slt          t4, tp, a5
                  sltiu        a2, a0, -265
                  srl          t2, t6, sp
                  and          s9, tp, a3
                  lui          a5, 395078
                  srli         s9, s10, 9
                  and          a1, s1, s2
                  srai         s3, t3, 23
                  andi         a2, s3, 1419
                  lui          sp, 162748
                  sub          zero, t0, t4
                  slti         t2, s9, 1260
                  slt          t4, t0, t0
                  slli         t3, t6, 12
                  sltiu        t0, zero, -1431
                  slt          tp, a5, tp
                  slli         s4, zero, 0
                  sltiu        a4, s10, -389
                  xori         s4, t2, -420
                  add          s1, a6, a0
                  srai         t1, s5, 28
                  slt          s10, t0, a4
                  add          s9, t3, zero
                  slli         t0, s2, 25
                  srli         t6, t0, 4
                  srl          a3, zero, s5
                  slti         t6, s6, -1789
                  xor          t1, s9, s11
                  and          a2, a5, sp
                  auipc        t6, 737863
                  sltu         t6, ra, s5
                  sub          sp, a4, a3
                  ori          ra, s8, 1210
                  and          sp, t4, tp
                  slt          t4, t4, a1
                  xori         gp, a1, 1592
                  slli         t4, sp, 0
                  srl          s10, gp, s2
                  slt          a6, ra, s8
                  or           s9, s3, s10
                  nop
                  srl          t0, s5, a4
                  add          a7, s3, t1
                  or           s2, s1, s6
                  sltu         s0, a4, t3
                  sra          t1, t4, t4
                  sra          a0, t5, a7
                  slti         a5, a4, 1957
                  xor          a5, s1, sp
                  srai         a1, a0, 13
                  xori         t0, s8, 1647
                  lui          s1, 121532
                  sltu         s2, zero, a5
                  addi         s1, s2, -1891
                  xori         a2, a1, -1073
                  sll          a7, t3, s7
                  and          s2, s3, s1
                  slti         a0, s10, 1229
                  ori          a2, s11, 194
                  srai         a1, a7, 21
                  sltu         a1, t3, a6
                  sll          a2, a3, s8
                  xori         s7, t2, -541
                  srli         t3, ra, 20
                  sra          s9, s6, t0
                  xor          a5, s6, s5
                  lui          s3, 637098
                  sra          t3, s11, s7
                  srli         s10, s5, 12
                  and          a2, ra, s7
                  srli         sp, t6, 7
                  auipc        a1, 1022134
                  sltiu        s9, s11, 665
                  srl          a2, s2, s0
                  sll          t4, t3, tp
                  nop
                  srli         a1, s9, 4
                  addi         tp, s0, 746
                  xori         gp, t1, -472
                  sltu         zero, s2, a6
                  auipc        a7, 568003
                  andi         t6, s7, -411
                  slli         a6, s0, 24
                  slt          sp, t4, s4
                  xori         s8, s8, -1330
                  slti         s2, a6, -1912
                  nop
                  ori          a2, a1, -1513
                  lui          zero, 265238
                  srai         zero, t4, 22
                  slti         zero, t4, -248
                  slti         s3, a1, -61
                  slli         ra, gp, 13
                  add          s4, sp, s6
                  sltiu        a7, t0, -1144
                  sltiu        t2, a5, 1530
                  auipc        s4, 656128
                  nop
                  andi         s10, sp, 386
                  slti         s0, zero, 1784
                  srai         s1, gp, 9
                  sra          a6, s10, a2
                  sltu         s8, a6, s8
                  slt          sp, s10, t2
                  slti         a7, a2, 74
                  slt          tp, s4, a4
                  sll          s0, a1, t0
                  and          t2, s3, zero
                  ori          s7, s5, 808
                  slti         sp, ra, 504
                  auipc        t6, 224869
                  and          s4, t3, s7
                  srl          gp, a0, t4
                  slt          s3, sp, sp
                  sra          s10, a4, a5
                  auipc        t6, 34125
                  auipc        gp, 1028980
                  srli         a3, s0, 26
                  and          t4, s11, t6
                  ori          s9, s10, -715
                  nop
                  auipc        gp, 309259
                  and          tp, t3, ra
                  slti         s0, a7, 72
                  sltu         s8, a6, s3
                  andi         a5, s4, -1067
                  slti         a3, s5, -1752
                  slti         t6, s4, -801
                  xor          tp, s7, t1
                  sltu         s10, tp, a2
                  srl          s8, s8, s2
                  add          a6, sp, s5
                  nop
                  sll          a3, t5, zero
                  andi         t3, t1, 391
                  or           s8, t6, s9
                  slli         t2, a5, 4
                  slli         a3, s7, 31
                  slti         t5, s7, -1075
                  srli         gp, s2, 22
                  add          t0, t0, t4
                  addi         a2, tp, 1437
                  slli         a2, s10, 11
                  srl          a0, s4, a1
                  srl          s1, t2, zero
                  xori         t4, s2, 393
                  add          a7, s2, s11
                  lui          a1, 139733
                  sub          a3, a4, tp
                  andi         t2, a5, -1097
                  andi         s0, t6, 142
                  and          a0, ra, s9
                  sltiu        s7, t3, -1203
                  or           a5, a6, ra
                  nop
                  srl          ra, zero, ra
                  sra          s3, s10, t5
                  slt          s0, t6, s4
                  addi         ra, t5, -1130
                  and          t3, s4, gp
                  slti         t3, t5, -680
                  xori         a2, s9, 1067
                  ori          s0, s1, 820
                  sub          s10, a0, ra
                  add          a1, t6, a5
                  or           a3, t3, a2
                  slti         s8, a5, -1995
                  addi         t1, s3, -1396
                  slli         a6, a5, 2
                  xori         tp, t1, 468
                  xori         s7, s10, 271
                  sltiu        s8, a2, -1447
                  sll          s9, tp, s9
                  ori          t6, tp, 653
                  slli         a1, s10, 21
                  sltiu        tp, s11, -1816
                  lui          t2, 194627
                  lui          sp, 108138
                  srai         tp, ra, 30
                  slt          zero, a6, s8
                  sltu         s0, s4, s7
                  auipc        gp, 182047
                  slt          s0, s6, s10
                  nop
                  slt          s8, a1, t4
                  sub          tp, s8, a0
                  srli         t5, a7, 20
                  xor          s7, s1, s8
                  sra          a2, a1, s4
                  add          a6, s4, s7
                  lui          zero, 930957
                  sltu         gp, a6, s4
                  slli         t4, a3, 2
                  lui          a4, 239971
                  and          s10, a1, s8
                  slli         gp, s5, 1
                  srli         a3, a2, 1
                  slli         a0, s3, 10
                  sltu         s9, t5, a2
                  srl          a0, s1, s9
                  slt          a7, a4, zero
                  auipc        a7, 1015442
                  xor          sp, tp, t3
                  auipc        t2, 83884
                  addi         s2, s11, -1461
                  sltiu        sp, s9, 996
                  slli         t4, t2, 25
                  xor          s7, t3, t5
                  slli         t1, tp, 20
                  xor          s4, a2, a5
                  srai         t3, a4, 22
                  auipc        sp, 543053
                  srli         a3, a4, 11
                  xori         t4, s6, -1681
                  slli         s2, a6, 2
                  xori         a4, a0, -908
                  slti         t1, a1, -1242
                  slt          a1, s11, t3
                  srai         s4, s2, 25
                  srli         a4, s4, 9
                  sltiu        zero, a3, -1452
                  add          s8, a6, t1
                  or           gp, a7, a2
                  slli         s10, s5, 5
                  sltiu        s7, a0, 174
                  ori          s9, s10, 1722
                  addi         a4, t6, 785
                  sub          a4, s0, s3
                  xori         gp, gp, -1094
                  srli         t0, t1, 2
                  xori         zero, s3, 298
                  sltu         a0, a6, tp
                  lui          t1, 531004
                  xor          s9, s5, t4
                  sll          s0, s0, gp
                  srai         a4, a1, 15
                  lui          a2, 482907
                  add          ra, t4, t2
                  lui          a3, 1025636
                  xori         s7, s7, 571
                  sltiu        s4, s11, -402
                  addi         s9, ra, -1675
                  andi         a4, a1, 445
                  nop
                  slti         s2, a1, -1228
                  slt          sp, s1, t0
                  add          s0, t6, a0
                  srl          ra, s3, t4
                  sub          s8, s11, sp
                  addi         t4, s4, 794
                  addi         s0, ra, 653
                  auipc        s0, 702179
                  sll          t5, t4, s0
                  slli         tp, a6, 2
                  srli         s7, t5, 6
                  sra          a2, a4, s9
                  sltiu        a4, a6, 1622
                  sltiu        s10, t0, -787
                  andi         a3, s11, -1533
                  srl          s7, t4, a5
                  xor          s1, sp, t4
                  lui          a2, 325073
                  nop
                  sra          zero, s3, s3
                  srai         s0, t5, 4
                  slt          t6, t3, a3
                  nop
                  sltu         s0, s5, s9
                  srai         t4, s0, 1
                  add          a6, s10, s2
                  slt          gp, a0, zero
                  ori          zero, t5, -1167
                  ori          s3, s9, 78
                  auipc        a7, 1042994
                  slt          a0, gp, a7
                  xori         tp, t6, -1720
                  sll          s8, s4, t1
                  nop
                  and          t5, s10, t1
                  auipc        sp, 923409
                  slti         s0, a1, -1289
                  slli         ra, t5, 29
                  sub          a0, t4, s11
                  auipc        ra, 22877
                  slli         a1, s9, 22
                  slti         a1, s8, -1580
                  nop
                  sltu         t5, s11, s0
                  slli         a2, a5, 23
                  sub          s3, s9, t4
                  slti         t3, gp, -1549
                  srli         s10, t4, 13
                  sltiu        a5, s3, 77
                  auipc        t1, 977636
                  or           tp, ra, zero
                  slt          gp, tp, t2
                  srai         a3, s3, 13
                  sub          s8, t0, s3
                  srai         s8, a7, 20
                  sra          a4, s10, zero
                  nop
                  lui          a5, 378880
                  addi         s0, a5, 1932
                  srli         s3, zero, 2
                  xori         a7, t3, 1745
                  sll          ra, tp, s7
                  slt          a6, s0, t2
                  or           s10, s4, s9
                  sra          a3, a7, a3
                  srl          s7, s10, a2
                  nop
                  xor          a7, a4, t1
                  sub          sp, s10, s3
                  or           s3, a6, s9
                  srli         s10, t3, 28
                  ori          s7, t4, -73
                  or           a5, s4, sp
                  andi         tp, s11, -797
                  slt          s10, tp, sp
                  or           a1, s2, a3
                  add          a5, a1, s6
                  srai         s1, s11, 26
                  lui          ra, 106777
                  sltu         a2, s11, t1
                  slli         t2, a3, 29
                  ori          gp, t4, -1997
                  andi         s10, a1, 1546
                  andi         a2, s8, -747
                  sub          s10, t5, s3
                  sub          a4, t2, s6
                  sub          t4, ra, s2
                  addi         zero, t3, -1381
                  sra          s9, zero, tp
                  sll          a6, s5, s1
                  or           tp, s8, a6
                  xori         a2, s9, -1832
                  nop
                  addi         tp, t2, 1596
                  and          s2, t3, a1
                  auipc        t0, 402887
                  srai         t1, a3, 15
                  ori          a3, s9, -671
                  addi         t4, t3, -1788
                  addi         t1, s7, 1143
                  srl          a2, zero, gp
                  nop
                  srli         t2, t1, 1
                  srli         a3, sp, 19
                  xori         t2, s9, -1437
                  slli         zero, t5, 14
                  auipc        a5, 627569
                  auipc        a1, 7917
                  xor          s9, s1, tp
                  sub          zero, a6, a7
                  lui          t4, 399525
                  or           s9, sp, s6
                  nop
                  slti         t1, t0, -135
                  andi         a4, a1, 858
                  sltiu        s8, a1, -1143
                  slti         a0, a3, -1464
                  nop
                  xori         a3, sp, -1328
                  slti         a6, gp, 83
                  andi         sp, s8, -1700
                  slli         gp, a0, 29
                  nop
                  xori         t4, s6, -1284
                  slli         ra, a6, 22
                  addi         tp, s3, 974
                  srl          a4, t5, a3
                  sltu         a1, a1, sp
                  sltiu        s3, t1, 1349
                  xori         a2, zero, -1763
                  sll          a3, a5, s9
                  andi         ra, s3, 382
                  add          s0, t3, a4
                  xori         a7, s5, 459
                  sra          t6, s3, a7
                  sltu         s1, t0, s10
                  ori          s4, t4, 1506
                  sra          t0, s4, t2
                  lui          t2, 606284
                  nop
                  xori         s3, t1, -821
                  srai         t3, t5, 12
                  auipc        zero, 659594
                  nop
                  slti         a7, a4, -496
                  ori          zero, t6, -225
                  slli         zero, a1, 5
                  sltiu        a2, a2, -1441
                  andi         s9, s3, 182
                  lui          t2, 298028
                  slti         s1, s10, 13
                  add          t0, gp, tp
                  nop
                  srli         a7, s6, 5
                  and          s4, s6, s6
                  slli         a4, t0, 29
                  or           s9, t0, s9
                  add          a3, s5, s9
                  sltiu        t2, s7, -345
                  andi         a1, t2, -1877
                  srli         t3, a6, 1
                  sltiu        sp, a6, -1963
                  slt          a4, s1, a4
                  auipc        s10, 259786
                  sra          s7, a3, s8
                  xori         a3, s1, 644
                  srli         s2, zero, 6
                  sll          s2, t6, s10
                  slti         a2, t2, -614
                  xori         a5, s11, -1852
                  xor          s10, sp, s9
                  and          a6, s3, zero
                  xor          t2, a3, zero
                  sra          sp, sp, a6
                  sub          a2, s5, a7
                  sll          a7, t2, s1
                  sltu         t0, s5, s5
                  srli         a7, a6, 22
                  sll          s4, t5, t5
                  xori         s9, s8, -1892
                  sll          a3, t0, a1
                  nop
                  nop
                  and          tp, a4, s1
                  addi         s7, a0, -1727
                  lui          a7, 530813
                  srai         a5, t0, 30
                  or           t5, t2, a2
                  sltiu        tp, a6, 1060
                  sll          a4, t5, s3
                  sra          t2, a0, t5
                  or           a1, s3, a2
                  addi         a3, s1, -1442
                  slli         tp, s7, 8
                  nop
                  ori          t6, gp, -707
                  nop
                  sltu         t4, s11, s4
                  auipc        s7, 852462
                  auipc        t3, 976100
                  xor          t3, t3, a6
                  auipc        t6, 55936
                  or           t0, sp, s11
                  nop
                  ori          zero, a0, 356
                  add          tp, a7, ra
                  sra          a2, a6, a7
                  nop
                  and          s8, a3, s8
                  lui          a6, 202006
                  lui          tp, 266278
                  slli         a7, s7, 29
                  auipc        t2, 153308
                  sltiu        a3, t6, -868
                  ori          a3, s7, 946
                  slt          a3, zero, s11
                  nop
                  slti         t5, a6, 1940
                  auipc        t3, 91785
                  add          gp, t3, ra
                  sub          a6, a1, a5
                  andi         tp, a3, -1226
                  addi         s8, t0, -1497
                  add          t3, t5, s3
                  andi         t1, s8, -1232
                  or           s1, s1, zero
                  add          a1, a0, t4
                  srai         a4, s5, 11
                  add          s3, tp, s7
                  sltu         s8, t0, a6
                  sub          s1, ra, a7
                  xori         t1, s3, -1991
                  lui          zero, 1023143
                  sltu         a7, t5, a1
                  srl          s9, sp, s11
                  srai         t0, s7, 14
                  and          zero, s7, s0
                  auipc        ra, 659048
                  lui          a5, 912233
                  or           s0, s3, tp
                  add          s0, zero, tp
                  slt          s9, a4, s9
                  srl          s2, s8, a6
                  addi         t1, s1, 272
                  xori         sp, zero, -7
                  auipc        t4, 455958
                  slli         s1, t3, 12
                  lui          s10, 857944
                  auipc        t5, 394059
                  slli         s0, t3, 24
                  and          tp, a6, s7
                  sub          s10, s6, s5
                  sltu         a2, a6, s11
                  sub          a3, s3, s6
                  add          a3, s11, a1
                  or           t2, gp, s10
                  sltiu        a5, a4, -700
                  slli         t4, s6, 18
                  xor          t1, zero, t5
                  sltiu        sp, t3, 1601
                  sub          s3, a7, a2
                  and          a1, t2, a7
                  add          s1, s4, s2
                  slti         a3, t1, 1017
                  or           zero, s3, t2
                  sll          a2, s6, s11
                  srl          s9, zero, s7
                  sltu         s8, t0, a4
                  lui          s0, 101742
                  srli         t5, s0, 19
                  andi         a3, s2, 2017
                  sll          tp, t5, t1
                  sll          s8, s7, t2
                  or           s2, t6, s8
                  sll          a2, t6, t6
                  srli         s2, s1, 19
                  and          t3, s0, a0
                  add          s2, tp, s0
                  sltu         a7, a7, t2
                  slli         a0, s1, 16
                  sltu         zero, s9, t4
                  or           t1, s9, a4
                  slt          a1, tp, a0
                  andi         a1, t6, 1970
                  sltiu        s3, a4, 590
                  slti         s2, s10, -1037
                  andi         a6, a0, 1916
                  sll          a4, s4, t0
                  auipc        s2, 876219
                  slt          s4, t5, t2
                  addi         a2, s5, 535
                  xori         t4, a0, 15
                  ori          s0, s10, -37
                  slt          t0, s9, ra
                  xori         s2, a5, -996
                  or           a3, s5, sp
                  sll          ra, t0, s7
                  addi         a6, s2, 10
                  sra          s0, a7, s4
                  slli         a3, s4, 11
                  srai         t1, a1, 30
                  ori          s8, a2, -596
                  lui          t3, 775871
                  auipc        s4, 1474
                  srli         a0, a5, 7
                  nop
                  sltiu        ra, a2, -1711
                  nop
                  auipc        zero, 80396
                  srl          s10, a6, s0
                  or           a2, s9, s6
                  slti         s2, a6, 105
                  sra          a1, a6, t5
                  or           a7, a2, s4
                  sll          a1, t0, t4
                  sltiu        tp, a3, 1503
                  lui          a4, 179553
                  auipc        a1, 401545
                  ori          a2, a6, 206
                  add          a6, t6, a5
                  lui          a4, 666356
                  sll          s10, s7, s10
                  or           a4, a6, s2
                  or           t3, s4, t1
                  sltu         s0, s9, tp
                  xor          s8, t1, s3
                  slt          a5, a5, t5
                  sub          a5, s8, t2
                  or           t4, a3, a6
                  sra          t4, s6, t1
                  srl          ra, s10, s6
                  addi         a3, a3, -779
                  xor          a4, s3, s11
                  sll          zero, a5, s2
                  srai         t4, t0, 5
                  add          s4, a6, s8
                  addi         a3, s11, 519
                  slli         a6, t1, 15
                  ori          s3, t5, 1759
                  slti         sp, a0, -1073
                  srli         a2, s3, 24
                  auipc        a4, 263597
                  xor          ra, s2, t3
                  srai         s1, a0, 4
                  srl          t5, s3, sp
                  andi         ra, t1, -918
                  slti         a4, t3, -333
                  xori         t4, a4, 2040
                  lui          s7, 257160
                  slt          t4, s9, s7
                  sltu         s2, s0, a4
                  auipc        a3, 316456
                  auipc        s7, 496057
                  xor          t4, a2, t0
                  and          zero, zero, a5
                  slli         s0, zero, 14
                  sll          t5, s6, s2
                  slti         sp, s2, -1933
                  addi         s7, t6, 890
                  sub          t4, s9, s3
                  sltu         t4, s8, t5
                  addi         a1, s6, 1629
                  sltu         zero, t1, s11
                  sltiu        t5, s11, 601
                  slli         a1, s0, 20
                  addi         a7, a0, -144
                  sll          t3, a0, ra
                  srl          s8, zero, t5
                  sra          s10, s1, t5
                  slti         ra, a5, -1967
                  xori         s1, t0, -1107
                  slti         zero, s5, -1976
                  nop
                  auipc        s3, 739082
                  or           t5, t3, t6
                  slt          a4, a6, s7
                  srli         t2, s7, 27
                  andi         t1, t2, -1984
                  slt          s8, a3, t2
                  andi         t0, t3, -915
                  srl          gp, a0, t1
                  add          s9, s2, zero
                  andi         a3, s9, -1871
                  ori          t0, t2, 484
                  sll          t4, t3, s11
                  addi         ra, t4, -932
                  sub          s2, t0, a1
                  sub          a4, t3, a6
                  slli         s8, a0, 2
                  andi         s2, s11, -1170
                  or           s9, a7, t4
                  srai         gp, a6, 2
                  srli         ra, s6, 22
                  and          a0, a7, t0
                  sltu         a5, a3, a2
                  add          t0, a2, t5
                  srai         t2, s11, 3
                  sltiu        a5, t6, 371
                  xor          s9, t5, s1
                  nop
                  srl          t0, t6, s1
                  and          s10, sp, tp
                  slli         t2, s8, 29
                  sll          a4, t0, s4
                  srli         a1, t2, 4
                  slt          s9, s3, a0
                  slt          s8, t2, t2
                  auipc        a7, 292954
                  sra          s10, s7, ra
                  sll          s8, s3, s3
                  srl          t3, t1, s0
                  xor          a4, s9, s2
                  sltiu        zero, s4, -1951
                  or           s10, s6, s7
                  srai         s8, a2, 5
                  srl          a2, s0, sp
                  add          s7, a0, s5
                  sll          a1, a7, t0
                  andi         t1, s8, 1624
                  sub          t4, t2, a3
                  auipc        a0, 636435
                  slt          a1, s4, a2
                  slt          t6, zero, s1
                  sll          zero, sp, a6
                  srai         s9, s2, 11
                  addi         a2, s2, 760
                  srl          zero, gp, t6
                  srai         s1, t6, 8
                  slt          a3, a0, s8
                  slli         t1, a6, 15
                  srl          s0, s8, s6
                  sltiu        s3, s2, 478
                  addi         s2, t5, 1567
                  srai         a4, ra, 5
                  slli         s8, t1, 4
                  sll          a5, a0, a7
                  lui          tp, 752856
                  xor          tp, a0, s10
                  xor          s2, s5, s11
                  srl          a1, a7, t1
                  sltu         s0, s1, s0
                  sub          ra, s3, a6
                  srl          a6, a0, s1
                  slti         s9, a2, 279
                  xori         s4, a3, 455
                  lui          gp, 166697
                  sltu         s2, s9, s5
                  srl          t6, t1, a7
                  ori          s1, sp, -638
                  slt          s10, s1, gp
                  nop
                  sll          t3, sp, s3
                  sltu         s8, zero, zero
                  sub          t4, s9, t5
                  srl          s3, a1, a4
                  addi         a6, s0, 1820
                  srl          sp, s2, t6
                  xori         t2, a0, 1544
                  sub          sp, sp, zero
                  nop
                  srli         s0, s8, 13
                  slti         zero, s4, -287
                  sltiu        a5, s1, 1564
                  auipc        t1, 261402
                  srai         s8, s0, 20
                  add          ra, a4, t1
                  sll          t0, s5, a2
                  nop
                  nop
                  srl          t4, s5, a1
                  sltu         s9, s9, s1
                  lui          t1, 497832
                  sra          t6, gp, t2
                  nop
                  sub          t6, ra, a6
                  ori          t3, s1, -923
                  ori          t6, s2, 450
                  srli         ra, a0, 28
                  xor          a4, s3, s2
                  add          a3, t3, s7
                  add          a5, s9, a4
                  or           tp, s11, s3
                  auipc        ra, 988612
                  xori         zero, a3, 1602
                  srli         a6, a6, 20
                  sltu         s4, a7, t2
                  add          t0, s3, ra
                  ori          t0, s6, -1666
                  sltu         sp, a4, s10
                  sra          t6, t0, s9
                  andi         s4, gp, 1500
                  addi         tp, a1, -1475
                  slli         s9, tp, 29
                  slt          s7, s8, a6
                  sra          t6, a0, s7
                  and          tp, s11, a1
                  xor          s10, s7, t5
                  nop
                  xori         s1, a2, -1411
                  and          sp, a0, tp
                  sltiu        a7, s9, -1265
                  sub          a4, s10, a3
                  srli         a0, s9, 16
                  or           s0, sp, sp
                  auipc        s7, 814576
                  srli         s2, t6, 25
                  srli         t3, t1, 28
                  sub          s0, s11, tp
                  srli         s10, t6, 9
                  or           t3, s1, s9
                  lui          tp, 385229
                  xor          t1, a7, s1
                  ori          s9, t4, 43
                  xor          s10, t3, s3
                  slti         s9, tp, -406
                  sll          gp, a7, s9
                  sra          t0, t6, s2
                  srl          s0, t2, tp
                  slt          t1, s2, t1
                  slti         gp, s4, -385
                  or           s3, s0, sp
                  xor          s10, s5, a5
                  sltiu        t0, s8, 270
                  lui          s9, 96464
                  xori         a0, a2, 292
                  addi         a4, a2, -1657
                  sltiu        a5, s8, -1458
                  sll          zero, a3, a5
                  ori          s3, t6, -1586
                  sra          a4, t1, t1
                  srl          tp, gp, s8
                  sltu         t4, s5, t2
                  slli         s8, s0, 20
                  addi         s0, a7, 113
                  srli         s10, a7, 28
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
                  add x27, x22, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x2, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x2, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x2, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x2, x6, ecall_handler
                  li x6, 0x1
                  beq x2, x6, instr_fault_handler
                  li x6, 0x5
                  beq x2, x6, load_fault_handler
                  li x6, 0x7
                  beq x2, x6, store_fault_handler
                  li x6, 0xc
                  beq x2, x6, pt_fault_handler
                  li x6, 0xd
                  beq x2, x6, pt_fault_handler
                  li x6, 0xf
                  beq x2, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x22, x27, zero
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
                  add x22, x27, zero
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
                  add x22, x27, zero
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
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x22, x27, zero
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
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x22, x27, zero
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
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x22, x27, zero
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
