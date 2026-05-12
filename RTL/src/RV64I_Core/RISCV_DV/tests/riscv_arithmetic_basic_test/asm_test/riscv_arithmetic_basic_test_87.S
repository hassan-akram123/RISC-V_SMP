.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 1
                  csrw 0x305, x18 # MTVEC

mepc_setup:       
                  la x18, init
                  csrw 0x341, x18

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x18, 0x1800
                  csrw 0x300, x18 # MSTATUS
                  mret
init:             
                  li x0, 0xf398da5a
                  li x1, 0xfa6c58ae
                  li x3, 0xa
                  li x4, 0x4
                  li x6, 0xd8f8f9d0
                  li x7, 0xcdd8ce83
                  li x8, 0xa
                  li x9, 0x6
                  li x10, 0x0
                  li x11, 0xa
                  li x12, 0xf6b967d2
                  li x13, 0x80000000
                  li x14, 0x51b0bce
                  li x15, 0x5
                  li x16, 0x58344dbd
                  li x17, 0xaafef2a9
                  li x18, 0x111f3576
                  li x19, 0x8
                  li x20, 0x8
                  li x21, 0xf
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x6
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0xf9cbd2d3
                  li x29, 0x80000000
                  li x30, 0x4
                  li x31, 0x1
                  la x2, user_stack_end
main:             li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           a4, 0x80000000
                  li           t1, 0x80000000
                  li           s8, 0x0
                  li           s5, 0xffffffff
                  li           a6, 0x80000000
                  li           s9, 0xffffffff
                  li           tp, 0xffffffff
                  li           t5, 0x80000000
                  li           s7, 0x80000000
                  sub          s9, t1, s7
                  add          a4, a4, s7
                  lui          s8, 324917
                  lui          tp, 1008080
                  addi         s9, s8, -62
                  lui          tp, 326964
                  lui          s5, 548596
                  auipc        s9, 106866
                  lui          t1, 1038917
                  auipc        s7, 236781
                  nop
                  add          t1, s8, tp
                  nop
                  add          t5, s7, tp
                  nop
                  auipc        t5, 890992
                  lui          a6, 947390
                  nop
                  auipc        tp, 50491
                  addi         t4, s5, -754
                  lui          s5, 46032 #end riscv_int_numeric_corner_stream_14
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           a7, 0x0
                  li           ra, 0x80000000
                  li           t2, 0xffffffff
                  li           s7, 0x0
                  li           a5, 0x80000000
                  li           t4, 0xb61c45d0
                  li           a3, 0x63931748
                  li           s2, 0x80000000
                  li           a1, 0x80000000
                  add          a1, a5, a7
                  lui          a1, 167888
                  lui          s7, 304265
                  sub          a3, s2, t2
                  lui          ra, 474017
                  sub          a7, t2, a5
                  add          s2, a2, a1
                  addi         a2, t2, 161
                  add          ra, a7, t2
                  addi         t4, t4, -1614
                  sub          t4, a3, a5
                  addi         a5, ra, 784
                  sub          a1, a3, s2
                  auipc        s7, 156888
                  sub          a5, a2, a5
                  add          a1, s2, a5
                  addi         s7, a5, 785
                  addi         a2, ra, 1751
                  add          a2, t4, t4
                  addi         ra, t4, -1367
                  nop
                  lui          a5, 62115
                  sub          a3, a3, s7
                  add          t4, a7, a1
                  add          a7, a2, a3
                  lui          t4, 163923
                  nop #end riscv_int_numeric_corner_stream_0
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           s9, 0x0
                  li           t6, 0x80000000
                  li           s0, 0xffffffff
                  li           a4, 0x80000000
                  li           a3, 0xffdda66e
                  li           a6, 0xb726fc07
                  li           s3, 0x80000000
                  li           tp, 0xffffffff
                  li           t1, 0x0
                  auipc        tp, 700083
                  add          a4, a3, s9
                  auipc        a4, 618944
                  nop
                  auipc        s3, 588164
                  lui          a6, 281976
                  lui          a6, 19190
                  add          s0, s3, s9
                  auipc        s9, 118526
                  lui          a4, 199011
                  add          a6, t6, t6
                  lui          a3, 689181
                  sub          s4, s4, t1
                  lui          tp, 429661
                  auipc        a3, 3590
                  lui          a4, 339385
                  auipc        s4, 804984
                  add          s9, s0, t1
                  add          s9, a4, tp
                  addi         t6, a6, 987
                  sub          a6, a4, a6 #end riscv_int_numeric_corner_stream_1
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s3, 0xffffffff
                  li           t4, 0xffffffff
                  li           s4, 0x0
                  li           a1, 0xa6936701
                  li           a2, 0x80000000
                  li           t3, 0x45902934
                  li           a3, 0x0
                  li           ra, 0x80000000
                  li           s10, 0x80000000
                  nop
                  sub          a1, s10, t1
                  nop
                  sub          ra, ra, ra
                  addi         s10, t4, 1305
                  nop
                  addi         a3, a2, -1182
                  lui          t1, 945570
                  add          t4, s10, t3
                  addi         s4, a1, -1569
                  add          a1, s4, s10
                  sub          ra, t4, s10
                  lui          a1, 562043
                  auipc        t1, 897198
                  add          ra, a3, t4
                  add          s3, s3, a2
                  add          s4, ra, a2
                  add          ra, a3, t3
                  auipc        a2, 49859
                  add          t4, a2, s4
                  nop
                  add          t1, t4, a2
                  auipc        a3, 668996
                  lui          t4, 740354
                  addi         s10, a1, 938
                  add          s10, t4, t4
                  sub          a2, a2, s10 #end riscv_int_numeric_corner_stream_13
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a5, 0xffffffff
                  li           tp, 0x80000000
                  li           s1, 0xffffffff
                  li           a7, 0xffffffff
                  li           a4, 0x0
                  li           t3, 0xf79039cc
                  li           s8, 0x0
                  li           a3, 0x80000000
                  li           s4, 0xffffffff
                  sub          s5, t3, s5
                  addi         tp, a4, -1591
                  nop
                  add          a5, a3, s4
                  nop
                  lui          t3, 801406
                  add          s8, s8, s4
                  lui          t3, 522204
                  add          t3, s1, a3
                  nop
                  lui          s4, 101120
                  add          a4, s4, s1
                  sub          a5, s5, t3
                  nop
                  sub          a5, s8, a3
                  nop
                  auipc        t3, 580430
                  auipc        s5, 963010 #end riscv_int_numeric_corner_stream_15
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           s1, 0x82c0cea3
                  li           t6, 0xffffffff
                  li           t2, 0x0
                  li           t1, 0xffffffff
                  li           a3, 0x80000000
                  li           s0, 0xffffffff
                  li           s3, 0x0
                  li           s6, 0x1e7d963d
                  li           s8, 0xffffffff
                  auipc        t2, 322532
                  sub          t1, t6, gp
                  nop
                  auipc        t1, 8532
                  auipc        s8, 808443
                  addi         s6, s3, 1985
                  addi         t6, s8, 1816
                  nop
                  add          s0, a3, s8
                  lui          s1, 312672
                  auipc        t6, 336300
                  nop
                  auipc        t2, 741406
                  addi         gp, t1, -1589
                  sub          t6, t1, gp
                  addi         s3, gp, -1088
                  nop
                  add          s1, a3, t6
                  add          s8, t1, t2
                  lui          s0, 536919
                  nop #end riscv_int_numeric_corner_stream_12
                  li           t5, 0x55cb9783 #start riscv_int_numeric_corner_stream_8
                  li           s8, 0x0
                  li           a3, 0x646b8e31
                  li           a6, 0x80000000
                  li           s6, 0x0
                  li           t3, 0xffffffff
                  li           t4, 0xf5e406e3
                  li           s2, 0xffffffff
                  li           a2, 0x5d5b06c1
                  li           a7, 0x80000000
                  sub          t4, t5, s6
                  nop
                  sub          a6, t5, a7
                  nop
                  add          t5, a7, t5
                  auipc        t5, 247300
                  addi         t5, s2, -1846
                  lui          s6, 7605
                  lui          a7, 208019
                  nop
                  auipc        s2, 558673
                  auipc        t5, 179894
                  add          s6, s2, a3
                  sub          a3, t4, a6
                  lui          a6, 132268
                  lui          s8, 24769
                  auipc        s8, 604981
                  nop
                  lui          a7, 631508
                  sub          t4, s8, s6
                  sub          s6, s2, a3
                  sub          t3, a3, a6
                  auipc        s2, 875556
                  lui          s2, 483592
                  lui          a3, 804748 #end riscv_int_numeric_corner_stream_8
                  li           s7, 0x8080dccd #start riscv_int_numeric_corner_stream_16
                  li           s9, 0xffffffff
                  li           a0, 0xffffffff
                  li           a3, 0xffffffff
                  li           a1, 0xffffffff
                  li           s3, 0x0
                  li           gp, 0xffffffff
                  li           t2, 0xffffffff
                  li           a6, 0xffffffff
                  li           t5, 0x20a3aa18
                  auipc        t2, 324936
                  addi         t5, t5, -1459
                  auipc        s7, 489604
                  add          a1, t5, t5
                  sub          s3, s7, a6
                  sub          s9, s9, gp
                  addi         t5, s7, -326
                  addi         s3, s7, -697
                  add          gp, a6, s3
                  lui          s9, 501217
                  lui          s7, 847441
                  sub          t5, t5, s3
                  nop
                  auipc        a6, 486977
                  nop
                  auipc        a0, 63964
                  lui          a0, 572788 #end riscv_int_numeric_corner_stream_16
                  li           t4, 0x792b6500 #start riscv_int_numeric_corner_stream_19
                  li           a0, 0xffffffff
                  li           a5, 0xcac62a59
                  li           t1, 0xffffffff
                  li           t3, 0x0
                  li           s8, 0x222b6497
                  li           a1, 0x80000000
                  li           a2, 0x80000000
                  li           s3, 0x56213f19
                  li           s7, 0x80000000
                  sub          t4, s8, a0
                  add          s7, s7, s3
                  addi         s8, s7, 649
                  auipc        a0, 240837
                  sub          a5, t1, s3
                  nop
                  auipc        a1, 363847
                  nop
                  auipc        t1, 118431
                  addi         a5, s3, -1295
                  auipc        t4, 413963
                  lui          a1, 80606
                  sub          s8, t4, t1
                  nop
                  lui          a0, 228605
                  nop
                  auipc        t3, 473308
                  auipc        t3, 111178
                  addi         s3, a2, 1892
                  sub          a1, t4, s3
                  auipc        t3, 833092
                  addi         t1, a0, -87
                  nop
                  add          a5, t4, s3
                  nop
                  add          t4, s7, t3
                  lui          s7, 713929
                  add          t1, s3, a1
                  add          a0, s7, a5 #end riscv_int_numeric_corner_stream_19
                  lui          t3, 937107
                  xor          s4, s7, a1
                  slti         s5, s8, -1926
                  srli         s5, t0, 2
                  sll          a5, s0, s5
                  slt          s9, s0, s2
                  sra          s7, t0, a3
                  sltu         t4, s8, a2
                  add          a2, a2, sp
                  sll          a4, s6, s1
                  xor          s8, s7, s7
                  and          tp, a0, t3
                  nop
                  and          a1, s0, ra
                  xor          t2, a0, s7
                  slli         t2, ra, 12
                  ori          t5, t1, -1630
                  srl          s0, s5, sp
                  sltiu        s1, a7, 956
                  xor          zero, t4, a3
                  slt          t5, t6, t2
                  xori         a5, s0, 1534
                  addi         t6, s6, -1585
                  lui          t2, 89094
                  srai         a5, s10, 18
                  sltu         s10, a4, s9
                  srli         gp, tp, 2
                  addi         t1, t1, 1032
                  add          s2, t6, tp
                  slti         a1, a7, 958
                  ori          s8, ra, -421
                  xor          a0, s5, a7
                  and          a0, t6, s8
                  slt          a6, a0, s3
                  add          s7, ra, t4
                  srai         a0, s8, 1
                  or           a0, s9, ra
                  srai         t4, t2, 6
                  or           s8, a7, s4
                  or           s4, a1, t1
                  srl          a2, t4, t3
                  srli         s9, s0, 5
                  sra          t6, t5, sp
                  auipc        s1, 545646
                  or           s5, a0, t0
                  nop
                  slt          t1, t5, s11
                  sltiu        t3, a3, 1319
                  or           a5, a3, a4
                  srai         t3, s11, 19
                  or           s10, a1, s11
                  lui          t4, 619091
                  sltu         s5, t2, s6
                  nop
                  sra          s8, zero, t3
                  slt          tp, s3, s9
                  slti         s2, s3, -1443
                  or           gp, s8, s4
                  xori         s10, s10, 399
                  srli         t5, a3, 27
                  or           zero, a5, s0
                  slti         a1, t1, -207
                  sltiu        s8, a5, 1412
                  sra          t6, a0, zero
                  sra          t3, t6, s4
                  sltu         s3, s3, a4
                  srai         a0, a6, 25
                  nop
                  slli         t5, s8, 8
                  sub          s10, s5, s8
                  nop
                  slli         t5, t6, 30
                  srl          s3, s11, a7
                  nop
                  slti         gp, s4, 131
                  srli         a2, tp, 7
                  add          s1, t0, s3
                  sltiu        t1, sp, 1591
                  srl          t4, s4, s10
                  srai         a7, s7, 3
                  sub          a5, t1, s1
                  add          t6, s8, a6
                  srli         s7, s4, 14
                  sra          s5, t2, a7
                  xor          gp, t1, a2
                  sll          t1, a7, t3
                  xor          a6, s7, a2
                  slli         ra, s6, 7
                  slli         s6, s10, 2
                  ori          gp, t1, -1666
                  sll          a6, s5, s4
                  sll          a7, tp, s9
                  ori          s9, a0, -979
                  sub          s0, a2, s4
                  nop
                  slt          t4, s5, a4
                  ori          tp, zero, 1481
                  slti         s10, gp, 410
                  auipc        t5, 100985
                  auipc        s6, 700044
                  srl          a1, s1, s7
                  sltu         s3, s9, t0
                  ori          s6, tp, -1980
                  addi         s10, s11, -1039
                  sltu         t6, t1, sp
                  srli         gp, t1, 27
                  srai         s5, ra, 29
                  or           a6, a3, t3
                  andi         t1, t0, -889
                  and          t3, t5, zero
                  ori          a0, s4, 700
                  addi         t5, t3, 1560
                  ori          ra, a7, -1440
                  srli         t3, a5, 3
                  ori          a6, s0, -1603
                  sub          a6, zero, t5
                  nop
                  auipc        s0, 585147
                  sra          zero, a0, s6
                  slli         a1, a1, 25
                  slt          t1, t2, ra
                  srai         t3, s11, 18
                  srai         s1, t5, 28
                  slti         s2, t1, 1756
                  sltiu        s8, a0, 764
                  xori         gp, t3, -1747
                  nop
                  ori          s7, s11, 409
                  auipc        s1, 367890
                  auipc        s8, 135438
                  ori          s9, t1, 1754
                  sll          s10, s4, s1
                  lui          a7, 532829
                  auipc        s4, 663382
                  sltiu        a3, a0, 495
                  sra          s10, t3, tp
                  sltiu        a2, a6, -512
                  xori         gp, s7, -1078
                  slli         t1, s6, 31
                  addi         gp, s4, 691
                  auipc        gp, 47166
                  srl          ra, a4, s3
                  srli         s3, s5, 24
                  auipc        t2, 589824
                  or           ra, t0, s10
                  or           s2, gp, ra
                  lui          t3, 72527
                  srai         a2, s7, 1
                  slti         a5, s2, -1397
                  srli         t4, gp, 6
                  slti         s3, s11, 758
                  nop
                  auipc        s8, 711932
                  sra          a7, s10, a3
                  or           t2, a4, a5
                  and          s8, a7, t5
                  srli         tp, s8, 5
                  sub          t3, s3, s6
                  addi         a2, gp, -723
                  add          tp, s2, t2
                  srai         s9, a2, 22
                  lui          t5, 32763
                  sra          ra, t3, s9
                  sub          s1, sp, s6
                  add          a5, a0, t4
                  nop
                  or           s6, s2, s8
                  add          a7, s0, a5
                  sltu         t2, a2, t2
                  slti         t4, s7, 94
                  or           t6, t1, a6
                  srl          s1, tp, t6
                  ori          s6, s11, -1316
                  add          s3, a6, a6
                  add          a6, sp, a4
                  or           s1, tp, sp
                  xori         a1, t4, 1653
                  auipc        a2, 3220
                  ori          s9, s4, -1784
                  addi         t4, zero, -331
                  and          t4, a4, s11
                  andi         a5, s2, 1161
                  sra          a6, a2, a1
                  add          s7, s5, s11
                  and          a1, s5, a1
                  sub          s2, tp, s9
                  slli         s8, s3, 28
                  slli         s10, a4, 18
                  xori         s6, a5, -798
                  sub          t6, s11, s11
                  slli         s4, a2, 12
                  or           tp, s4, sp
                  slt          a0, s11, tp
                  sll          a7, t4, a3
                  srli         tp, s3, 24
                  lui          t3, 354462
                  nop
                  ori          s10, a0, 14
                  addi         ra, a7, 211
                  xor          s5, a5, a4
                  srai         t4, t5, 28
                  sltu         a2, a4, gp
                  srai         s3, sp, 4
                  sltiu        a3, s3, 1346
                  sltu         s0, sp, a2
                  and          s1, s2, s10
                  ori          a1, a0, 1353
                  addi         s6, t5, -601
                  or           s5, s8, a0
                  xor          s2, t5, a4
                  sra          a6, s9, a1
                  add          s0, zero, s11
                  addi         s5, s1, 119
                  nop
                  srli         a2, a5, 18
                  sub          s2, t1, s5
                  slt          t4, t5, s4
                  xor          t5, s2, s7
                  slli         t6, s9, 29
                  sra          a7, s0, s0
                  add          s7, s8, t5
                  srai         gp, s3, 11
                  auipc        a4, 5402
                  add          a0, s4, s7
                  addi         a0, a5, -40
                  sltiu        s9, s10, -1623
                  srli         tp, s2, 21
                  xor          s10, a4, sp
                  addi         a1, t2, 132
                  xor          a6, s6, t1
                  srai         s0, s8, 4
                  srli         a1, t6, 5
                  sltiu        t6, s10, 889
                  sltiu        a2, s9, -1677
                  xor          s1, s6, a1
                  slli         gp, a2, 25
                  slt          a4, t5, sp
                  ori          s9, s8, -1559
                  add          s4, a5, a5
                  srli         a4, s1, 27
                  add          s6, s1, t0
                  or           t1, a5, t0
                  and          s5, t0, s9
                  sltiu        t3, s1, -1717
                  addi         a6, gp, -1960
                  andi         s5, gp, -1813
                  or           s2, s2, t0
                  srai         s6, s9, 4
                  srl          t3, ra, a2
                  auipc        gp, 218546
                  auipc        a3, 24004
                  slt          s10, zero, a0
                  sub          s3, s5, a4
                  add          s2, s4, a1
                  sub          a3, t2, s11
                  slt          tp, a0, s6
                  sll          zero, zero, a6
                  lui          a0, 623964
                  sll          a1, s4, s0
                  sub          tp, a2, t6
                  or           s3, s3, s6
                  xor          s10, t6, a0
                  nop
                  sltu         zero, s9, a3
                  sub          t5, t1, t4
                  xor          zero, t2, a2
                  addi         a1, s5, -1677
                  lui          s3, 346902
                  sll          t1, zero, a0
                  sltiu        a7, a6, 703
                  sltu         gp, a7, sp
                  sltiu        a7, a3, 1628
                  ori          t5, s11, 1749
                  ori          gp, t6, -543
                  xori         a0, a0, -1169
                  slt          s10, s6, s4
                  or           t3, sp, s5
                  and          s8, a5, s11
                  addi         t2, s0, -1489
                  slli         a2, tp, 17
                  sra          zero, a4, a2
                  slt          t4, a0, a4
                  slti         s9, a4, -1366
                  lui          t2, 504275
                  slt          s6, zero, zero
                  srl          ra, t3, a7
                  sll          t5, t1, s0
                  slti         t1, t1, -1047
                  andi         s5, a2, -1749
                  slli         s4, s3, 7
                  lui          s1, 638231
                  sll          ra, s3, s0
                  sra          tp, a1, s4
                  and          a2, a7, a4
                  sltu         t4, t5, s4
                  sltu         t3, s0, sp
                  addi         s2, s3, 1932
                  lui          a6, 130004
                  addi         a5, s0, -569
                  andi         gp, gp, 1917
                  srl          a0, t2, t0
                  lui          a0, 133124
                  sub          t2, s7, t4
                  xor          t2, s9, gp
                  lui          t5, 1012439
                  and          a2, a6, ra
                  lui          t2, 195994
                  sltu         s1, s7, t5
                  xor          t1, s0, s7
                  auipc        tp, 229812
                  srli         a5, a2, 2
                  srai         a0, tp, 9
                  and          a5, a1, s1
                  xori         a4, s11, 4
                  addi         s6, a2, 1333
                  nop
                  sll          s7, t2, tp
                  srl          a2, t5, zero
                  add          a6, s8, t0
                  slt          t4, t1, t3
                  slti         s8, s2, 917
                  sll          a0, s10, a7
                  sltu         a0, t3, s10
                  ori          a3, a5, -1243
                  sltiu        s4, a0, 653
                  and          s4, a6, s10
                  sltiu        tp, gp, 1629
                  sra          s7, t6, a0
                  slti         gp, sp, 1964
                  sll          t5, t3, s7
                  add          s10, s5, a3
                  and          a4, s4, t2
                  xori         a1, s9, -1272
                  xor          tp, tp, t6
                  xori         s2, tp, -1990
                  sltu         tp, s3, t2
                  add          a5, s9, a4
                  andi         tp, s10, 1712
                  add          t6, s3, s9
                  sub          t4, a2, s6
                  or           s1, t0, a6
                  sltu         t5, s5, t1
                  sub          s9, t0, s11
                  sltu         t4, s11, t2
                  xor          s6, s4, t5
                  and          tp, t3, sp
                  slli         s7, s9, 6
                  or           s1, a4, s0
                  sltu         t5, a5, a5
                  srai         a5, t4, 1
                  slli         a5, t1, 24
                  slli         t3, zero, 27
                  andi         zero, s3, -859
                  add          t6, a1, s4
                  srai         a2, a0, 27
                  nop
                  or           t3, t4, a5
                  slti         a5, tp, 1863
                  or           s4, t3, s2
                  xor          s8, tp, tp
                  auipc        t1, 565155
                  lui          a0, 190484
                  auipc        t6, 55330
                  srai         s2, s5, 5
                  ori          zero, s9, -278
                  addi         a7, a2, 1283
                  or           zero, s11, a4
                  lui          s5, 360185
                  auipc        a4, 627426
                  and          a4, s11, ra
                  or           s4, s2, zero
                  xori         s1, t0, 332
                  lui          s1, 808437
                  srai         s6, sp, 27
                  srai         s9, s2, 10
                  sltiu        t4, s0, 1798
                  and          t2, a4, t6
                  xori         s10, t4, 2024
                  and          s1, s3, s8
                  or           gp, t3, a6
                  and          a3, t5, a6
                  auipc        s8, 218564
                  auipc        a3, 1035711
                  srli         t5, s6, 11
                  sra          s9, a3, s5
                  lui          t6, 455912
                  sll          a7, s2, s10
                  add          a5, s4, t6
                  srl          s2, s6, t6
                  xor          a5, a4, a4
                  nop
                  srli         s3, t5, 27
                  slt          a3, s1, t6
                  add          a6, a6, s3
                  sll          t1, s6, s6
                  srai         ra, s10, 5
                  sra          s7, ra, a7
                  srli         t4, sp, 10
                  or           s1, s7, a6
                  ori          s5, ra, -1938
                  ori          t2, sp, 726
                  sltu         t4, t1, s7
                  sra          s6, a0, a7
                  srai         t4, t5, 3
                  sll          s9, t1, s7
                  xor          s5, s2, a7
                  andi         s4, a4, -762
                  nop
                  andi         s6, s7, 1095
                  nop
                  and          s10, t2, s1
                  srl          s4, a0, t3
                  andi         a7, s5, 181
                  slt          s0, s1, a0
                  add          s1, s11, s6
                  xor          t4, a2, a3
                  sltu         t6, s2, s1
                  sltiu        t6, a3, -1260
                  addi         s3, a7, 1880
                  sltu         gp, a6, t3
                  sll          s1, a3, s11
                  add          gp, t3, a0
                  srli         s0, sp, 30
                  add          zero, t4, a2
                  add          gp, t0, a7
                  xori         a4, s10, 1623
                  xor          s5, a1, t1
                  ori          a7, s2, 1294
                  slti         a2, s8, -901
                  sra          t4, sp, t1
                  addi         t5, tp, 1427
                  add          t6, t4, sp
                  slli         a2, s6, 15
                  andi         zero, s4, -1229
                  sub          zero, s9, s7
                  sra          s5, s1, t5
                  sltiu        t1, s2, -93
                  xori         t5, zero, -1595
                  srl          s2, s7, s2
                  or           tp, s5, t3
                  auipc        s2, 843089
                  sra          a3, sp, zero
                  srli         s4, a6, 24
                  slti         t4, s5, -1172
                  sltu         a2, a6, s3
                  srl          tp, sp, s2
                  sll          ra, t2, a0
                  srli         t6, t6, 11
                  xor          a3, gp, tp
                  and          a0, t4, t3
                  sra          a6, s1, s4
                  or           s3, t6, a4
                  sltiu        a0, t1, -1347
                  andi         s10, ra, -1161
                  add          t6, s8, t6
                  srl          s8, a3, t1
                  auipc        ra, 43696
                  slli         t2, s6, 12
                  srl          s0, zero, s7
                  srl          a7, tp, a6
                  sltu         a1, gp, t2
                  slt          zero, s3, a1
                  sltu         tp, t2, s3
                  sltu         a4, s2, s0
                  ori          a5, s7, 798
                  addi         t3, t1, -1913
                  slli         s7, s9, 29
                  srli         t6, t3, 2
                  xori         a0, s4, -1142
                  slti         a0, t0, -1360
                  slli         s0, t5, 23
                  srli         t3, s11, 16
                  andi         s10, t5, 1914
                  or           s9, a3, s7
                  srl          t5, zero, s5
                  srli         s10, s6, 5
                  srl          a5, s7, t5
                  add          a0, ra, s0
                  add          t2, t2, tp
                  sub          a4, a0, a5
                  xori         t6, sp, 1753
                  addi         s6, a3, -1575
                  sltu         s4, t1, s11
                  slt          s7, t4, s3
                  andi         a4, s4, 1939
                  srl          a5, sp, s9
                  srli         t5, s11, 15
                  sub          zero, ra, s6
                  xori         s5, a3, -949
                  xor          gp, s6, t5
                  xori         s4, s4, -76
                  slti         a2, a3, 1244
                  ori          a6, t1, -1885
                  andi         s0, s8, 144
                  nop
                  auipc        a5, 593184
                  srai         a2, t5, 12
                  sltiu        s9, s8, -1470
                  auipc        a0, 828598
                  auipc        a6, 131381
                  andi         a6, zero, -1062
                  auipc        s2, 397318
                  andi         t3, a7, -1514
                  srl          a3, s3, sp
                  sltu         a0, t4, zero
                  auipc        s2, 989003
                  slli         a0, a3, 0
                  srai         zero, s11, 12
                  srli         a2, s5, 31
                  nop
                  slt          t2, s1, s4
                  or           a5, t3, a2
                  sltu         t5, s0, s3
                  auipc        s9, 128621
                  srli         s10, t6, 2
                  sltiu        s3, t3, 1040
                  auipc        a6, 387281
                  nop
                  slt          t5, s11, s4
                  lui          s5, 250196
                  sltiu        a1, a5, -118
                  sltu         t3, s11, s4
                  sltu         t4, ra, t5
                  nop
                  sltu         a5, s7, a7
                  lui          t2, 323399
                  sltu         gp, t1, zero
                  add          a7, t0, s4
                  slti         ra, s11, -1291
                  lui          s6, 51738
                  nop
                  add          s9, a1, s4
                  srai         a2, sp, 17
                  andi         t1, a5, 1619
                  addi         a7, s10, -1310
                  andi         a7, a0, -1576
                  sll          s2, t1, ra
                  addi         ra, s8, 1940
                  sltu         t1, sp, gp
                  add          t1, a0, gp
                  xori         t1, s2, 261
                  addi         ra, zero, -960
                  andi         t6, tp, 800
                  sltu         a0, a0, a1
                  xor          s5, t4, s10
                  addi         gp, s5, 1729
                  sll          t5, ra, ra
                  slt          s8, s5, s9
                  add          a4, s9, s6
                  and          s4, s9, a1
                  and          t3, t4, a2
                  sltiu        s4, tp, -127
                  or           t1, a1, s8
                  srl          t6, s6, a7
                  sra          t6, s6, t1
                  or           a7, a0, t6
                  sub          s3, a2, s1
                  slli         s0, s5, 10
                  sltu         s8, t4, tp
                  xor          t2, a3, s6
                  sra          s4, t1, a7
                  or           s0, t0, s0
                  sll          t5, a6, s9
                  auipc        a2, 892555
                  srai         t4, sp, 24
                  or           t2, zero, a1
                  sltiu        s9, s8, 1795
                  add          t3, t1, s8
                  sltu         s8, s5, s8
                  sra          s2, a3, s2
                  auipc        t4, 707331
                  sll          a1, t3, t3
                  and          s4, a6, ra
                  slti         a7, t1, 1718
                  slt          s0, t3, a0
                  lui          s4, 992866
                  srli         a4, a0, 6
                  sll          s4, t2, s7
                  auipc        s6, 872603
                  slt          s7, s11, a1
                  srai         a4, s2, 12
                  sub          tp, s1, t4
                  andi         s6, tp, 218
                  slli         a1, s6, 15
                  slt          a0, t0, s3
                  and          s7, s3, a0
                  srai         a3, s8, 30
                  sltu         t5, s3, a1
                  slli         s9, s8, 4
                  nop
                  or           t6, t3, t3
                  add          zero, a1, s5
                  and          t2, s3, s10
                  andi         a1, a3, 1189
                  auipc        s6, 1038403
                  slt          a0, a7, ra
                  ori          a4, s5, -1687
                  slti         t3, s4, -862
                  slli         t4, s10, 14
                  auipc        s2, 293044
                  nop
                  or           s3, s2, a0
                  srli         gp, t2, 29
                  sra          s2, a0, a7
                  or           t2, s2, t4
                  lui          s3, 60279
                  add          s1, s5, s2
                  addi         a5, s9, 702
                  addi         s6, s10, 557
                  srli         s2, t5, 25
                  lui          s4, 813018
                  xori         a3, s10, -1865
                  sub          a7, a7, s6
                  andi         a7, s4, -1822
                  srl          t3, t5, zero
                  ori          s6, s10, 1326
                  sra          s7, zero, s2
                  and          t1, a4, sp
                  andi         s4, a3, 1354
                  andi         a4, s9, -795
                  sltiu        s10, s8, -505
                  srli         s9, s9, 19
                  xor          s2, t0, s7
                  slti         a6, t5, 1500
                  slt          s0, a6, t5
                  auipc        s8, 102421
                  sltu         t1, a3, s7
                  auipc        t6, 311623
                  sra          a0, s1, s7
                  xori         a3, s8, 1799
                  srai         a7, t3, 1
                  srai         t5, t5, 5
                  sra          a3, s7, s3
                  andi         s9, zero, -1507
                  andi         a5, a0, 1599
                  slti         s0, gp, 184
                  slt          ra, s11, s7
                  srl          a1, t6, t4
                  slt          s0, a2, s11
                  sub          t1, a6, t0
                  slt          s3, s6, t1
                  srl          s6, s8, a6
                  sra          s4, a2, s3
                  lui          a2, 358180
                  srl          s6, s2, a1
                  sltu         t3, s5, a2
                  slt          t6, t0, a1
                  srli         s8, t2, 2
                  xor          t3, a1, t1
                  andi         s2, a1, 705
                  andi         gp, s10, -804
                  xori         a7, sp, 599
                  or           a6, a4, t3
                  add          a4, a1, a0
                  xori         a1, s1, 1992
                  and          a1, t6, s4
                  xor          tp, a4, s5
                  addi         s0, a6, 936
                  add          ra, s0, t5
                  sltu         s9, a3, s8
                  ori          ra, s3, 1606
                  xor          a4, t1, tp
                  auipc        zero, 512033
                  nop
                  srli         tp, tp, 4
                  sltu         a3, a7, sp
                  and          a2, ra, a5
                  auipc        gp, 608845
                  and          tp, s1, s10
                  or           s6, a5, s11
                  sub          s10, s1, t4
                  srl          s0, s0, t6
                  add          a2, t6, s4
                  sll          t3, t1, a1
                  or           t5, a6, s5
                  slli         t1, s7, 27
                  srl          a7, s1, a2
                  sltu         t1, t1, t3
                  srli         a3, s6, 9
                  nop
                  sltiu        a4, s4, -350
                  srli         a0, a5, 2
                  xor          a7, a2, t1
                  add          s9, tp, s5
                  auipc        t6, 250249
                  xori         s0, zero, 734
                  slt          s7, s1, a0
                  slti         s3, s1, -1020
                  sll          s4, ra, s4
                  sll          zero, a0, a1
                  xori         a1, t4, 625
                  slti         t1, t3, 1429
                  srl          a2, s4, s9
                  ori          s7, t2, -620
                  srai         a0, a0, 17
                  srli         s7, s6, 13
                  slt          a0, zero, t1
                  slt          a7, s4, s9
                  slt          s7, s4, a5
                  sub          s7, a2, ra
                  sltu         a6, t1, ra
                  sll          t1, s3, s10
                  andi         s1, ra, 156
                  sub          a1, a0, s2
                  auipc        a3, 776643
                  srli         zero, a1, 10
                  or           a7, a1, gp
                  srli         s8, s3, 30
                  srai         a2, s0, 0
                  add          tp, s4, a6
                  slt          a3, s2, a1
                  and          t3, sp, a3
                  and          s1, s2, s1
                  add          s5, t1, s5
                  xor          zero, t0, zero
                  srai         a4, t0, 7
                  sub          s4, s10, a2
                  sltu         a3, gp, s3
                  sltiu        tp, t2, 982
                  sub          tp, t3, t6
                  auipc        t2, 937254
                  and          a0, t3, s8
                  addi         a4, a2, -788
                  auipc        a1, 838577
                  nop
                  xori         s7, t2, 1989
                  slt          s9, t0, s2
                  or           s8, s6, s9
                  lui          a6, 876760
                  andi         s4, t5, -1691
                  slli         t4, a7, 11
                  addi         s3, s4, -634
                  slli         ra, a6, 8
                  addi         t2, s7, 1678
                  auipc        s7, 927710
                  xori         a5, s9, -1304
                  add          s3, s5, s7
                  srli         a3, s8, 15
                  srai         s9, zero, 29
                  or           s4, a1, a1
                  and          t1, a6, s10
                  sub          tp, t0, a6
                  nop
                  sltiu        s9, a4, -1620
                  ori          t4, t6, -1961
                  or           t5, tp, a5
                  srl          s3, t6, a0
                  add          tp, s5, s2
                  slli         a5, a2, 3
                  addi         s8, zero, 1148
                  slti         a5, t1, -674
                  and          t1, s6, t4
                  ori          t3, gp, -730
                  xor          s2, zero, s0
                  slt          s0, s1, a7
                  sll          t4, a4, s10
                  addi         a2, s5, 1823
                  slli         t5, s5, 6
                  sub          s10, tp, s11
                  lui          a4, 193034
                  addi         a1, a5, 272
                  sub          t5, sp, a7
                  sltu         zero, ra, a4
                  and          t6, s5, sp
                  srli         t5, a0, 6
                  addi         s2, gp, 1877
                  ori          s9, s7, 1868
                  nop
                  sltu         s7, zero, a7
                  add          s5, s7, a5
                  auipc        a3, 572042
                  xori         ra, t4, 4
                  srai         a3, a5, 0
                  sltiu        s7, s7, -1679
                  sll          s3, t2, tp
                  addi         a4, a7, -327
                  or           tp, t6, s2
                  and          a3, s2, zero
                  auipc        t2, 1006409
                  andi         s9, s6, -416
                  or           a6, s11, s8
                  ori          a5, s2, -1189
                  or           tp, a1, s6
                  lui          t2, 199679
                  add          s6, t0, t5
                  nop
                  addi         s9, s1, 950
                  add          a1, a2, a7
                  xor          a1, s0, gp
                  slti         s3, s8, -351
                  and          a7, s4, s3
                  addi         s9, s2, -1181
                  nop
                  andi         s2, t6, -518
                  slli         a7, s7, 15
                  sra          s3, a2, s2
                  xori         a6, s1, -453
                  slti         zero, s2, 181
                  and          s9, s2, a2
                  slli         s4, s11, 9
                  sll          a3, s4, s4
                  srl          t1, a5, t6
                  sltiu        s3, tp, 294
                  srai         s5, gp, 7
                  addi         s1, sp, -857
                  slli         a7, t1, 19
                  lui          a0, 919543
                  sltiu        s10, a2, -1258
                  auipc        s1, 80089
                  slt          s6, a2, s11
                  xor          a5, s0, s9
                  srl          a7, sp, s5
                  slt          tp, ra, tp
                  slti         ra, t2, 1033
                  xori         s8, s8, -1638
                  addi         s7, s10, 1784
                  ori          ra, gp, -384
                  slli         s5, t3, 22
                  sltu         t2, s3, s8
                  lui          s6, 135430
                  slli         a2, a2, 4
                  or           zero, zero, t4
                  sll          s10, s2, s1
                  slti         ra, a7, 142
                  andi         a2, t6, -938
                  add          s10, s1, s4
                  auipc        gp, 502272
                  auipc        a4, 306428
                  srli         zero, t0, 30
                  srai         t4, a3, 29
                  addi         a0, s8, -1441
                  nop
                  sltiu        a3, s6, 2006
                  sltu         ra, s0, s1
                  nop
                  sltu         s10, s5, sp
                  srai         a3, a4, 20
                  or           s7, a7, a1
                  addi         t4, a6, -463
                  sra          t5, a6, s7
                  andi         s4, s11, -1125
                  xor          s9, tp, s3
                  add          s8, t0, a4
                  xori         a7, t1, -1010
                  and          t6, tp, sp
                  and          t4, t2, t2
                  slli         t4, ra, 21
                  sltu         a2, s1, t3
                  sltiu        a0, a6, -1823
                  sra          a4, a5, t6
                  srai         a3, t3, 29
                  srl          t6, a1, a6
                  slt          a6, a2, t6
                  addi         s7, s1, 948
                  sll          s0, ra, a3
                  sub          t4, ra, zero
                  sub          s9, s4, sp
                  sltiu        a4, t4, 981
                  srai         s6, a6, 27
                  add          a1, a4, s10
                  nop
                  srli         s0, s10, 2
                  sltu         s2, t1, s3
                  srl          t3, s8, a3
                  slti         s0, t4, -278
                  xori         a0, a5, 465
                  addi         a2, t4, 1953
                  srli         t5, a6, 25
                  add          a6, ra, ra
                  ori          s5, s9, -1705
                  xori         t2, gp, 1224
                  slli         s7, s2, 8
                  add          s1, a4, s7
                  sltu         zero, s1, s5
                  sll          a2, a5, t5
                  add          s5, a5, zero
                  slti         a0, sp, -1562
                  sltiu        gp, sp, -622
                  srai         s10, t6, 17
                  andi         s9, a7, 1303
                  sub          a1, s6, a0
                  sll          a3, s3, zero
                  sltiu        zero, s8, 1804
                  srli         a3, a2, 2
                  add          a5, s8, t3
                  xori         a2, t6, 1460
                  srli         s7, a0, 15
                  sltiu        a3, t3, -605
                  and          zero, gp, t0
                  srai         a2, t4, 5
                  sltu         s4, t1, t3
                  xori         t2, t3, 1966
                  sra          a6, a2, sp
                  sltu         gp, t6, a3
                  sub          t4, a2, a5
                  xori         t1, t2, -1930
                  add          a1, s9, tp
                  andi         a7, zero, -1438
                  and          zero, t3, t4
                  sra          s8, s2, t3
                  lui          tp, 365730
                  xori         a0, sp, -1275
                  or           a2, tp, ra
                  auipc        s1, 166179
                  sltu         a1, t1, a0
                  andi         ra, s9, -805
                  slli         s6, s7, 22
                  slli         a0, t4, 2
                  addi         t6, a2, -684
                  slti         s4, a7, 1189
                  srli         t2, a6, 1
                  auipc        t4, 555950
                  ori          s8, a3, 353
                  sltiu        t6, t1, -1308
                  and          s6, s2, a0
                  xor          s9, s7, s4
                  or           s5, s2, s8
                  sltiu        tp, t3, -1964
                  sub          t1, a4, a6
                  srai         a1, tp, 25
                  and          t4, s10, t6
                  lui          s4, 889178
                  srli         a5, s3, 16
                  slti         a5, sp, 746
                  lui          s2, 631154
                  srli         t1, s8, 9
                  lui          s6, 173453
                  lui          a6, 521597
                  auipc        s0, 89875
                  nop
                  lui          a2, 583973
                  addi         a0, a1, -622
                  addi         gp, t4, -1685
                  ori          a6, s9, 195
                  andi         t1, s7, -317
                  sltu         zero, t5, t0
                  srai         t3, s0, 27
                  sltu         t1, t5, a5
                  or           a2, s3, s9
                  auipc        s5, 719167
                  srl          ra, a0, t2
                  sub          a5, a5, a7
                  slt          zero, a4, s4
                  sltiu        s9, t6, -2018
                  xor          a1, a3, a6
                  sltiu        s4, a7, -258
                  add          t2, a1, t2
                  slt          t4, s11, s10
                  or           t4, s2, s2
                  slt          a7, t4, ra
                  slli         a3, a3, 1
                  sub          t4, t4, s1
                  nop
                  srai         t1, s8, 18
                  srli         a2, s6, 0
                  sub          a7, a7, s7
                  auipc        s2, 889443
                  xori         a3, t6, 1555
                  ori          a2, s7, 1819
                  auipc        ra, 951707
                  sltiu        s3, sp, -1407
                  sub          a7, s8, s3
                  or           a2, a4, t3
                  xor          t4, t2, s4
                  sub          s7, s0, s9
                  srli         gp, a2, 6
                  sub          t1, t1, s9
                  slti         s4, s5, 193
                  xor          a4, a1, a7
                  ori          s9, a7, -1114
                  xori         s6, sp, -1390
                  sub          a5, tp, t0
                  srli         s2, s8, 14
                  addi         zero, s7, 394
                  slli         s9, a1, 10
                  or           s1, t3, s1
                  sll          s9, a7, gp
                  srli         s3, s5, 8
                  xor          s3, a0, s8
                  slt          a7, t4, s4
                  ori          t5, t5, -1720
                  xori         s0, s7, -1745
                  andi         s10, a6, -1139
                  and          s2, s6, a6
                  sll          s0, gp, s11
                  slli         t3, t2, 1
                  xori         s5, a6, -1087
                  srai         a4, a5, 4
                  andi         s8, t3, 1923
                  srl          s3, a7, s6
                  slti         s7, a0, 288
                  slt          s4, t6, a7
                  sll          tp, t2, t2
                  nop
                  srli         a0, a1, 3
                  add          s5, ra, a4
                  nop
                  lui          t2, 850064
                  xor          a1, t5, s6
                  slti         t5, a1, -1238
                  sra          s2, s5, s0
                  slli         s10, a7, 27
                  xor          s9, t2, a1
                  andi         s8, a2, -15
                  or           tp, tp, s11
                  srl          t3, s2, a4
                  xor          a5, s10, s0
                  add          s2, t5, tp
                  srl          gp, s11, t4
                  nop
                  nop
                  and          a3, t5, zero
                  slt          a3, s4, a6
                  xori         a4, gp, -1130
                  sltu         t6, s0, a1
                  srl          a6, a1, t3
                  addi         s4, t4, -957
                  sll          a0, zero, s7
                  lui          a3, 555823
                  sltu         a6, a4, s8
                  add          t6, s10, a0
                  sra          gp, a7, s11
                  xor          s1, a4, t4
                  add          s3, t0, s9
                  sra          s2, t2, t0
                  srli         a3, s4, 25
                  srl          a4, a1, t4
                  ori          zero, a1, 214
                  or           a2, t5, a1
                  andi         a2, ra, -1076
                  auipc        t2, 364802
                  ori          s4, a6, 845
                  slt          ra, gp, tp
                  sltu         a7, t4, s5
                  srai         t5, a2, 16
                  srli         t3, a5, 27
                  sll          a1, s8, ra
                  or           t4, a3, t0
                  and          s0, s11, t3
                  andi         s3, t1, -484
                  lui          s10, 810576
                  or           a0, a0, t0
                  and          a3, t4, a6
                  slli         a4, a3, 24
                  andi         s10, t2, 2015
                  add          t3, a3, s7
                  and          s1, s8, a0
                  and          a3, t5, s1
                  sra          s3, a2, a5
                  slti         s8, a1, 696
                  auipc        tp, 793167
                  sra          t4, t6, s2
                  srli         a3, a6, 26
                  ori          a0, s3, 450
                  nop
                  ori          a3, a5, 1946
                  add          t3, s0, t0
                  slti         s9, t1, -970
                  sra          s2, s9, t6
                  ori          a6, a4, -923
                  auipc        t1, 555306
                  andi         a3, t3, 118
                  lui          s4, 65062
                  lui          s8, 758812
                  srli         t2, s3, 4
                  and          s4, a3, a6
                  srai         a4, a7, 16
                  auipc        s5, 1021393
                  slt          a1, s6, s6
                  and          a0, t0, a0
                  srli         a5, t2, 27
                  and          s7, s10, s6
                  sltu         t4, s1, sp
                  sra          s0, s11, s1
                  and          tp, a4, a3
                  lui          a5, 799445
                  lui          s4, 664579
                  srli         s10, a2, 9
                  nop
                  xor          tp, a6, tp
                  xori         s2, s2, 1209
                  or           t2, t6, tp
                  add          s0, s7, t0
                  add          t1, t1, s2
                  srl          a5, a4, t5
                  andi         a2, a0, -1963
                  slli         t5, a1, 22
                  srai         s7, a7, 29
                  auipc        gp, 811109
                  srli         s2, a6, 18
                  add          s5, s7, t1
                  srli         t5, t6, 17
                  sra          t6, s1, t2
                  sra          zero, a4, sp
                  ori          t5, s9, 1034
                  sll          t2, a0, s9
                  add          t2, s5, a7
                  sltiu        t6, a6, 480
                  nop
                  srai         s6, zero, 9
                  andi         t1, t0, -85
                  sub          zero, s10, ra
                  ori          t2, a7, 1507
                  srai         a6, a2, 6
                  srai         a2, s4, 10
                  srli         t5, t0, 17
                  nop
                  andi         a2, s3, 569
                  sltiu        s10, a4, -527
                  slli         t4, a4, 4
                  sltu         ra, t0, a1
                  andi         a6, s5, -799
                  xori         s2, gp, 328
                  slti         s2, gp, 108
                  add          a2, t2, s4
                  sltiu        a0, ra, -212
                  slli         t5, s8, 29
                  add          s5, t6, tp
                  srli         a2, a6, 8
                  sra          a5, s0, t2
                  sra          a1, a3, s6
                  sll          s7, a0, a2
                  srli         a4, s11, 30
                  sra          s5, a1, a3
                  slti         s10, a5, -1902
                  sra          a1, ra, s8
                  sra          a5, a2, t4
                  xori         tp, zero, 922
                  srai         a4, a5, 26
                  sra          s0, gp, s7
                  auipc        s2, 956600
                  and          a3, a7, zero
                  sub          s8, t6, a0
                  ori          t4, s11, -1102
                  sltu         s3, s6, s2
                  sltiu        s6, gp, 1874
                  andi         s1, t4, 1962
                  srai         s5, a1, 30
                  slt          gp, sp, t6
                  xor          t2, s10, tp
                  or           a3, a0, s3
                  slt          a6, t4, a7
                  ori          ra, t1, 1413
                  and          s4, s6, a5
                  xor          ra, a7, t6
                  or           s0, t5, t5
                  add          a1, a3, a1
                  and          a7, s11, s0
                  slt          s8, t1, t4
                  addi         s5, a2, -422
                  sltu         gp, a2, sp
                  sub          s8, tp, s7
                  sltiu        a2, t6, -1236
                  sltu         tp, ra, a2
                  slt          s10, t4, t1
                  sra          s6, tp, s7
                  slti         s2, a6, 913
                  or           a1, t3, t6
                  nop
                  slt          t6, s1, t3
                  sra          t1, s8, a1
                  addi         s6, s6, -1734
                  sub          t3, s6, t4
                  slt          s0, t3, t4
                  auipc        s6, 509587
                  srl          a4, a0, a1
                  add          s5, t1, s6
                  sub          s10, s0, a0
                  nop
                  srli         s8, a1, 25
                  srli         s10, tp, 14
                  auipc        t5, 717942
                  andi         a1, a0, 273
                  or           s2, s11, tp
                  srli         t4, t2, 9
                  addi         a3, zero, 590
                  slti         s8, t1, -384
                  slti         t6, s9, -876
                  xori         s3, s1, -2044
                  srl          gp, t6, ra
                  lui          t3, 806347
                  srl          a2, s5, a7
                  slti         s3, s3, -1965
                  slti         s8, a3, 1982
                  sltiu        a2, t1, 1277
                  srl          t6, s5, s10
                  sub          s7, t2, s7
                  slli         s7, a6, 28
                  nop
                  lui          s6, 353466
                  auipc        s3, 145196
                  slli         t3, s6, 18
                  slli         a1, s1, 7
                  or           t5, s1, zero
                  slli         a7, a2, 3
                  slti         s5, s3, -87
                  sll          s3, a1, gp
                  srai         s6, gp, 1
                  andi         tp, t6, 1665
                  xor          s2, a1, a1
                  nop
                  sra          ra, s7, a7
                  xor          t3, s6, ra
                  ori          a0, s1, -1611
                  slt          s6, s5, t6
                  sltu         s6, s4, gp
                  lui          gp, 644889
                  sub          s8, s9, t1
                  srli         a1, s5, 3
                  lui          ra, 818720
                  sra          a5, gp, a1
                  nop
                  slt          a7, t5, sp
                  srli         a3, ra, 2
                  sra          s6, t0, s8
                  addi         a6, s3, 249
                  and          t1, a0, a2
                  xor          a7, s9, tp
                  sub          t5, s3, s10
                  lui          s9, 221257
                  slti         t5, s3, 5
                  nop
                  srli         a7, s2, 10
                  ori          tp, s9, -1392
                  ori          s3, zero, 1913
                  slti         tp, a0, 715
                  auipc        zero, 944507
                  or           a4, gp, s4
                  srli         a3, a0, 16
                  nop
                  sltiu        s2, a0, 920
                  xor          ra, sp, s8
                  sub          t6, s3, tp
                  andi         s10, t3, -1224
                  sltu         t6, zero, s3
                  srl          t2, t1, gp
                  auipc        a4, 378663
                  nop
                  slt          a2, a0, a5
                  slti         a2, tp, -1384
                  andi         s4, tp, 236
                  sra          a0, zero, a6
                  sra          t1, a5, zero
                  sra          s0, a7, a2
                  or           s9, s10, s11
                  lui          s6, 863533
                  sltu         s2, gp, s0
                  sltu         t2, s0, t2
                  and          zero, a1, t0
                  slli         a3, zero, 23
                  add          a6, t2, s2
                  nop
                  or           s6, s2, s0
                  srl          s9, s10, tp
                  sub          s1, s5, t0
                  sltu         a6, t6, s11
                  auipc        s7, 5803
                  or           zero, s5, t5
                  slti         s7, t0, -1632
                  sub          ra, t6, gp
                  or           a6, s9, t3
                  add          s9, a6, s7
                  srai         t4, t2, 5
                  nop
                  srai         s4, gp, 9
                  sll          a3, t0, gp
                  sll          a4, a3, s7
                  or           a1, s2, gp
                  xor          s6, s1, a3
                  slli         tp, t6, 20
                  slli         s4, sp, 7
                  sltu         s10, s6, s11
                  srl          a3, a1, a2
                  slli         ra, s11, 1
                  nop
                  xori         t2, t2, -1352
                  sltiu        t6, t1, 1573
                  sll          s1, a0, a4
                  sltiu        s3, t2, -326
                  slti         a4, s2, 1709
                  nop
                  andi         a7, s6, 523
                  lui          t5, 231874
                  sltu         s10, a6, s2
                  andi         a0, zero, -1545
                  xor          zero, t5, s5
                  srai         s3, a0, 10
                  andi         s0, t5, -1071
                  or           s8, s7, t0
                  nop
                  sra          s7, s3, a1
                  xori         s7, a7, 803
                  sll          s3, s9, s9
                  sub          a0, s9, s9
                  sub          s8, a6, t0
                  srai         s2, s10, 27
                  slt          a6, s3, s7
                  and          a1, s11, t1
                  add          s8, s11, s9
                  sll          a2, t3, t2
                  srli         s8, s5, 3
                  xor          s10, s5, s0
                  and          s1, s1, sp
                  slt          s8, s9, s0
                  srl          s8, s6, a5
                  sltu         s7, a7, t4
                  sltu         t4, t6, s10
                  addi         ra, t4, -1187
                  or           gp, a5, a1
                  slli         s1, a6, 2
                  ori          a7, a6, 55
                  srl          s8, a7, s2
                  srl          a5, a6, a4
                  slti         s2, s10, 1460
                  srli         ra, s9, 9
                  xor          t6, a3, s7
                  addi         s9, s2, 1451
                  slti         a1, a6, 635
                  sub          t2, s9, t3
                  srl          s10, s8, a0
                  sra          a7, s9, t4
                  sltiu        a3, s4, -766
                  xori         s6, s9, 38
                  addi         s5, s2, -766
                  auipc        t6, 773195
                  slti         s3, zero, -1928
                  andi         s7, t3, -2026
                  add          a6, s8, zero
                  ori          s9, zero, -173
                  srl          zero, s5, s5
                  slti         t3, s0, -1342
                  or           t3, s5, s1
                  andi         t5, t6, 656
                  ori          t2, t1, -1726
                  add          a6, a2, a0
                  xori         a1, a2, 1055
                  sub          s5, t3, t3
                  sra          s4, s5, a1
                  sltu         t5, s3, t4
                  andi         a7, t4, -548
                  sub          s7, s7, s4
                  andi         s7, t4, -1353
                  srai         zero, s6, 5
                  srli         t3, s2, 15
                  and          zero, tp, s3
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t5, 0x0
                  li           ra, 0xffffffff
                  li           s9, 0x0
                  li           gp, 0x80000000
                  li           s0, 0x0
                  li           a4, 0x6cc41913
                  li           s1, 0x17c09e1e
                  li           s5, 0xffffffff
                  li           a2, 0xffffffff
                  sub          t5, s1, a7
                  addi         a2, a4, -995
                  auipc        a7, 400571
                  lui          a7, 795579
                  auipc        gp, 686142
                  sub          s5, a2, ra
                  nop
                  add          ra, ra, a7
                  add          s9, s5, s0
                  add          gp, s5, a2
                  auipc        s0, 551186
                  auipc        ra, 668925
                  auipc        s9, 125933
                  nop
                  sub          a4, s5, s9
                  add          s0, s1, gp
                  nop
                  lui          t5, 311534
                  sub          a4, ra, a2
                  lui          s5, 409584
                  lui          s9, 647017
                  auipc        s5, 537221
                  nop
                  add          s1, s1, a7
                  addi         s9, gp, -2021
                  sub          a7, ra, t5
                  addi         a2, t5, -1300
                  addi         a4, ra, 68 #end riscv_int_numeric_corner_stream_6
                  andi         ra, s11, -454
                  srl          t1, s7, s2
                  or           t5, s0, a5
                  srl          s2, s0, s6
                  slt          a2, a5, ra
                  or           a1, s3, s4
                  xori         s3, a3, -1233
                  addi         s9, s11, 1568
                  andi         a2, s8, 1865
                  srai         s8, s2, 16
                  sltiu        t6, tp, -85
                  sltu         a3, gp, s9
                  ori          s4, s10, -1281
                  xor          t3, a2, s3
                  sll          s5, ra, a0
                  xori         a0, t2, -403
                  srli         gp, s8, 16
                  sra          a5, a1, s1
                  xor          a6, s3, a5
                  slt          a4, t1, sp
                  nop
                  lui          s2, 496735
                  srl          a1, zero, s9
                  add          a0, s0, s11
                  add          s2, s5, ra
                  ori          s3, a3, 513
                  nop
                  addi         a1, a0, -423
                  auipc        gp, 963817
                  sltu         s10, t4, s6
                  slti         s8, gp, 181
                  addi         zero, gp, 281
                  srl          gp, ra, s9
                  andi         s8, zero, 1303
                  sra          zero, a2, sp
                  srl          a3, s0, a7
                  slli         s5, sp, 20
                  nop
                  srai         s5, s7, 8
                  sra          s3, t6, s1
                  addi         t2, s2, -945
                  add          s3, a6, s2
                  srai         s7, a3, 18
                  slli         t6, s2, 4
                  slt          a6, ra, t6
                  slti         a4, a3, 1165
                  sll          a2, s9, s7
                  sra          s9, t2, t0
                  add          a5, a0, s7
                  ori          t1, tp, 758
                  srli         a1, zero, 21
                  sltu         gp, a1, t2
                  lui          a6, 773564
                  slt          t2, t6, a5
                  sra          t3, t4, s1
                  xor          a5, a1, a7
                  sub          a3, t0, s0
                  auipc        t2, 693327
                  sll          s4, t4, s11
                  srli         t6, zero, 10
                  xor          a2, a1, a6
                  addi         s5, gp, 1559
                  slli         s6, s11, 16
                  sra          s2, s5, t3
                  sra          s3, a6, s10
                  or           a4, t2, t4
                  lui          t4, 145549
                  andi         t1, s10, 1803
                  slli         s6, a4, 21
                  srli         a7, s0, 7
                  sltiu        ra, s6, -1433
                  slt          a3, s7, t4
                  addi         a1, a3, -1615
                  auipc        s6, 342109
                  sltiu        t6, a6, -431
                  sltiu        s6, s2, -1833
                  lui          s10, 688510
                  sltiu        s8, s9, 1629
                  nop
                  srli         t1, t1, 26
                  ori          a0, gp, -1984
                  sll          a5, a2, s8
                  slti         s1, s11, -860
                  srl          a5, sp, s5
                  sra          a5, a0, a7
                  add          zero, a4, t4
                  sltu         tp, a2, s7
                  andi         s2, s1, -1786
                  ori          t6, t5, 404
                  xori         ra, a1, 1758
                  nop
                  srai         t1, t5, 31
                  ori          a4, s11, 462
                  sra          t2, a6, t4
                  or           a0, a6, a0
                  srl          t6, t3, t3
                  or           a1, s5, t5
                  srli         s0, s6, 4
                  srli         a4, zero, 29
                  addi         s7, s10, 1584
                  srli         a2, t0, 22
                  addi         a1, s11, -762
                  or           t4, s5, s1
                  xor          s1, t6, s3
                  lui          a5, 342673
                  slli         zero, s5, 18
                  slti         t6, t4, 1925
                  sltu         a2, a3, s0
                  and          t1, zero, a5
                  sltu         a4, a0, t3
                  srai         zero, s4, 26
                  slli         t5, gp, 11
                  add          a3, ra, s5
                  slti         a7, a6, -158
                  srli         a2, a3, 11
                  sra          t2, s3, tp
                  lui          s0, 597039
                  sltu         s5, s4, s7
                  srli         a7, zero, 7
                  sra          s4, ra, s7
                  sltiu        s8, t6, 1370
                  slt          gp, s2, a1
                  srl          a4, s6, s1
                  slli         s1, tp, 17
                  xor          s2, gp, t4
                  sltiu        a3, s10, -527
                  sll          ra, s5, s8
                  sltiu        s3, tp, -1705
                  auipc        s8, 34128
                  addi         a3, zero, -1175
                  slli         tp, zero, 14
                  andi         t2, sp, 1163
                  and          a2, a6, a7
                  srli         a4, s8, 27
                  addi         ra, gp, -671
                  slt          s8, s7, s0
                  slli         a7, s11, 4
                  add          a2, s3, s2
                  sltu         t6, tp, a2
                  andi         a7, s11, -473
                  nop
                  ori          s3, s7, 1259
                  sltiu        t6, tp, -99
                  srl          s10, s5, a7
                  sltiu        s4, a1, -653
                  srli         s6, zero, 26
                  srl          a1, s4, zero
                  or           t3, s4, s3
                  lui          s7, 1009295
                  auipc        a7, 899350
                  sltiu        a0, zero, -1277
                  sltu         s6, a4, a1
                  sltu         s0, s9, zero
                  and          s4, s1, t2
                  sltiu        tp, s9, -1678
                  and          s7, t4, a6
                  srli         zero, s11, 0
                  lui          a1, 145932
                  or           s9, s9, a6
                  xori         t2, t3, 428
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           a7, 0x0
                  li           s2, 0x54f9dac7
                  li           s5, 0x0
                  li           t4, 0x0
                  li           a2, 0x0
                  li           s8, 0x80000000
                  li           t2, 0x80000000
                  li           a1, 0x80000000
                  li           ra, 0x80000000
                  lui          t4, 618720
                  lui          t2, 455959
                  addi         s5, t2, -168
                  auipc        a1, 559035
                  auipc        s8, 694747
                  auipc        a1, 157105
                  auipc        a2, 467254
                  add          s2, ra, t2
                  addi         t4, ra, -430
                  sub          a1, a2, t2
                  addi         a1, a1, 729
                  add          a7, t2, ra
                  add          t4, s8, t4
                  auipc        a2, 107777
                  auipc        a7, 921477
                  lui          s2, 910423 #end riscv_int_numeric_corner_stream_17
                  ori          t6, ra, 139
                  add          s1, a0, t4
                  slli         s5, a5, 23
                  andi         s4, s1, 1270
                  andi         a1, s7, -409
                  or           t2, s9, t5
                  sub          a1, s11, s10
                  nop
                  sra          a6, s3, a4
                  sltu         a3, gp, s11
                  srl          zero, t1, a3
                  sltiu        tp, s6, 1303
                  slti         s3, a2, 1452
                  nop
                  and          t3, sp, s3
                  slt          s7, t4, gp
                  lui          a4, 681675
                  add          a5, t2, s3
                  nop
                  slli         s9, t3, 1
                  slti         a4, gp, -823
                  andi         s0, sp, -540
                  sltiu        s10, sp, -711
                  or           a3, a3, t3
                  lui          tp, 342889
                  sub          a1, a3, s11
                  ori          s1, zero, -847
                  nop
                  addi         t2, t1, -1029
                  auipc        ra, 912124
                  slli         a3, sp, 11
                  or           a2, t5, s3
                  ori          a1, a5, -215
                  andi         s9, a4, 425
                  sub          t4, t5, a6
                  and          t5, s9, s10
                  sltiu        a0, a6, -289
                  sra          s4, tp, t5
                  andi         a2, s11, 1537
                  xori         a0, t0, 1774
                  xori         s3, t6, -304
                  and          s2, ra, a5
                  slli         t6, zero, 29
                  sra          s9, s8, s2
                  sltiu        s5, t6, -934
                  srai         t5, s7, 0
                  sltu         s8, s11, s4
                  sltu         gp, s2, s0
                  slli         a5, s4, 19
                  slti         s0, s9, -979
                  auipc        a1, 71300
                  slli         a7, s2, 18
                  slli         t6, s6, 3
                  slli         ra, a4, 13
                  xor          a6, s6, s5
                  sub          t4, t5, s10
                  sub          s9, s5, t3
                  slti         zero, t2, -1911
                  slti         s1, zero, 1793
                  srai         t5, t6, 13
                  and          t4, s10, s2
                  add          s5, zero, a1
                  sll          a6, s8, ra
                  and          tp, s5, s8
                  slti         a6, tp, -1336
                  sltu         s10, a7, t6
                  sll          tp, a3, t1
                  slt          t1, gp, sp
                  xori         s4, s6, -463
                  slti         a3, ra, -1185
                  or           t6, tp, s8
                  srai         t4, gp, 0
                  lui          s6, 817265
                  xor          s7, s6, t6
                  slli         s3, s4, 0
                  xor          gp, s0, a0
                  auipc        s7, 819390
                  sra          s1, s3, s0
                  sra          s7, ra, s8
                  slt          a2, s1, s4
                  srai         s1, s4, 11
                  add          s7, t2, s6
                  add          a1, t2, sp
                  slti         s0, s3, 1016
                  slli         s5, s1, 13
                  add          a1, s10, sp
                  slli         a1, ra, 13
                  add          a3, a0, s6
                  andi         t2, t3, -984
                  sltu         s5, s7, a4
                  add          a5, a1, t6
                  slt          t3, s1, a3
                  srai         s5, s1, 27
                  xor          a2, a4, t5
                  sltiu        t3, a6, 1650
                  andi         t5, a5, 331
                  xori         s10, t1, 670
                  sra          zero, s10, s7
                  sltu         s9, s9, t6
                  sltiu        t4, t6, 1791
                  sltu         s9, a3, s10
                  nop
                  sltiu        ra, a7, -2020
                  sltiu        t6, t4, -448
                  addi         ra, a0, 1506
                  lui          a2, 957040
                  slli         a5, s5, 12
                  sltu         s9, a1, gp
                  and          s2, t3, s7
                  lui          s4, 937383
                  slti         a0, a7, 83
                  ori          t5, s9, 591
                  andi         gp, a7, 1067
                  srai         a0, a5, 16
                  srai         t6, s8, 7
                  xori         a6, a2, -706
                  or           a7, a2, ra
                  srli         a2, a1, 22
                  add          a3, t3, ra
                  andi         t6, s11, -137
                  slt          s6, t1, s7
                  ori          ra, gp, -266
                  lui          ra, 748945
                  nop
                  nop
                  srai         gp, t4, 31
                  and          s3, s1, s3
                  sltiu        t5, t2, -883
                  xor          zero, gp, t1
                  nop
                  sltiu        a1, s9, -960
                  srl          a5, s0, s6
                  andi         s8, s0, 1014
                  addi         s4, s2, -1873
                  xor          t5, s1, s4
                  slti         t3, t5, 1839
                  nop
                  srai         t4, s0, 10
                  slti         a4, a1, 1555
                  sll          a3, a0, ra
                  sra          t6, s9, t0
                  nop
                  sub          s8, t3, s5
                  xori         a3, s6, -68
                  and          ra, t1, s1
                  srl          t3, a4, a7
                  and          s4, s9, t1
                  add          gp, sp, t4
                  sltiu        ra, s3, 701
                  auipc        t4, 1014820
                  andi         zero, s9, 56
                  srai         s7, s7, 9
                  sltiu        t5, a5, 496
                  sltu         s10, t4, t4
                  ori          t4, t6, -65
                  sub          t1, a2, s1
                  auipc        a6, 806636
                  sltiu        s0, tp, -1795
                  sra          a0, a1, a6
                  andi         t5, zero, -1852
                  xori         s0, s6, 1384
                  slt          s6, s6, s10
                  sltu         tp, gp, s2
                  sltu         s2, t5, a4
                  or           gp, s6, t2
                  nop
                  auipc        a4, 412955
                  sub          tp, zero, s6
                  sltiu        s8, a3, -1048
                  slli         ra, ra, 17
                  slti         a2, t4, -18
                  sll          a7, a4, tp
                  lui          a5, 981438
                  ori          a3, s9, 1137
                  srli         t3, a5, 11
                  sltiu        a5, tp, 1818
                  sub          a5, a3, s4
                  xor          s5, s10, t1
                  add          s7, t4, s7
                  srli         gp, ra, 9
                  srl          a3, s1, gp
                  auipc        a3, 895180
                  ori          t4, a0, 322
                  srl          a7, a6, t4
                  or           s3, a3, s6
                  nop
                  slli         a6, s8, 0
                  or           s9, a1, t5
                  xori         zero, s8, 1004
                  nop
                  sll          a5, s4, t0
                  add          t6, s3, a1
                  sra          t6, a0, s0
                  slt          a3, tp, a5
                  slt          s2, gp, t4
                  addi         s4, a1, 1393
                  or           s8, zero, a7
                  ori          gp, t1, 513
                  slti         a0, s9, 747
                  addi         s7, s0, 55
                  xor          a6, zero, t4
                  add          t1, a3, s2
                  slt          a3, ra, t2
                  ori          s5, ra, -1614
                  xor          s2, s7, s4
                  addi         s3, s9, -1749
                  sltu         s7, tp, s3
                  add          t5, t1, s0
                  sltiu        a6, t1, -1071
                  nop
                  and          t4, s7, t1
                  andi         a7, sp, -755
                  srl          s7, sp, s6
                  slli         a3, s1, 6
                  lui          a5, 799747
                  lui          s8, 471222
                  or           s8, s6, a2
                  sltu         a3, s2, a6
                  slti         s4, t4, -460
                  auipc        s3, 606681
                  slt          t1, a5, zero
                  slt          a2, s5, tp
                  sltiu        s9, zero, -1530
                  and          s8, t2, t2
                  addi         t2, a2, -547
                  slt          a2, s8, s8
                  andi         s4, s0, 387
                  lui          a3, 517202
                  slti         t5, s2, 1444
                  andi         s10, sp, -1841
                  nop
                  xori         s4, s6, 905
                  slti         a6, s5, -1585
                  srl          t2, t4, s0
                  xor          a2, s10, sp
                  auipc        a4, 643155
                  srai         s1, a6, 7
                  addi         s8, s0, -1706
                  and          s9, s0, a2
                  slt          t2, s3, t3
                  ori          ra, a4, 1741
                  sltiu        t5, a2, -1420
                  slli         a2, a0, 14
                  xor          tp, s7, s8
                  auipc        s0, 535182
                  sltu         a5, gp, s8
                  add          a1, s6, t0
                  sll          a6, s3, t5
                  sltu         a1, t4, a3
                  slli         tp, a4, 6
                  sub          s5, a4, t0
                  slli         s1, s7, 12
                  xor          t5, t2, gp
                  xori         s7, a4, 1107
                  auipc        a7, 26123
                  sll          t4, a6, a2
                  andi         s6, a5, -1512
                  srai         t1, a0, 11
                  or           a4, s8, a2
                  slli         a6, zero, 9
                  ori          s5, t6, 1631
                  or           zero, s4, t0
                  auipc        s6, 478830
                  lui          a0, 1034065
                  srai         s4, t3, 14
                  ori          t6, a6, 253
                  or           t3, t3, a3
                  sll          a0, a5, t5
                  xor          t2, a5, gp
                  and          s7, t1, t4
                  xori         a3, t5, 534
                  lui          s2, 719507
                  sltiu        s6, s0, -1666
                  ori          zero, t0, -1178
                  sll          a5, s3, s3
                  slli         a7, sp, 14
                  addi         tp, a4, -1102
                  slli         t5, s8, 0
                  addi         tp, s9, -593
                  slti         a3, t0, 1146
                  xor          a0, a2, sp
                  auipc        zero, 61846
                  sll          s4, s9, s2
                  and          a5, zero, sp
                  ori          a6, a1, 1918
                  sub          a1, t6, a4
                  and          a2, a0, a1
                  sra          t6, s4, t5
                  ori          s7, t2, 1426
                  slt          a0, s5, s1
                  sltiu        s10, s4, -114
                  addi         s4, s10, 59
                  xor          s6, s0, s7
                  sltu         a1, s2, sp
                  nop
                  add          zero, s3, sp
                  sra          s3, s4, sp
                  srli         t3, gp, 21
                  auipc        a5, 380179
                  auipc        s3, 604627
                  andi         tp, t4, -1627
                  and          a4, t4, t0
                  xor          s2, t6, a5
                  sltiu        t2, sp, -584
                  srai         s2, sp, 23
                  srli         s9, s10, 12
                  and          a6, t5, s8
                  xor          s8, ra, t5
                  andi         t6, t3, 1596
                  slti         a7, a0, 875
                  sll          a2, s2, s5
                  xori         tp, t1, -847
                  srai         a6, zero, 5
                  xori         s1, t6, 1470
                  sltu         t4, s8, t3
                  xor          t1, gp, s1
                  add          a3, t0, zero
                  and          t1, s2, t4
                  addi         a7, s11, -1817
                  slli         a0, t6, 26
                  auipc        t3, 203675
                  or           t2, s8, ra
                  sra          a1, a6, s0
                  add          t2, s11, s2
                  sltiu        a3, a7, 1009
                  addi         t2, s6, -993
                  ori          a7, s3, -1702
                  sltu         s6, t2, s9
                  or           a1, t4, t0
                  xori         a5, s4, 611
                  xor          a3, s4, s10
                  xor          s5, s4, zero
                  and          s10, gp, zero
                  srli         s2, s10, 2
                  and          gp, sp, t1
                  ori          a0, a0, -172
                  sltiu        a0, t3, -1439
                  srai         t6, s10, 7
                  slt          zero, tp, t3
                  andi         s3, s9, -790
                  sltu         s5, t4, a3
                  or           s9, s6, s1
                  slti         t6, gp, -997
                  srli         s4, t1, 11
                  srl          s5, t2, s8
                  sub          zero, sp, t0
                  andi         a0, t3, 921
                  or           s7, a0, s8
                  lui          a2, 805138
                  sll          s5, tp, gp
                  sra          t4, t1, s3
                  srl          a7, s5, a3
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           a2, 0xffffffff
                  li           t5, 0x7117fb87
                  li           s8, 0xffffffff
                  li           a3, 0x80000000
                  li           s6, 0xffffffff
                  li           tp, 0x80000000
                  li           a6, 0xffffffff
                  li           a7, 0x87ef165d
                  li           t6, 0xffffffff
                  lui          t5, 681973
                  nop
                  lui          tp, 591930
                  lui          s5, 694401
                  auipc        s6, 71770
                  addi         s6, a3, 196
                  lui          tp, 541524
                  lui          a7, 1036078
                  addi         t6, s8, 997
                  sub          a3, a6, a6
                  sub          a3, s5, a7
                  add          t6, s8, t6
                  auipc        a7, 857962
                  nop
                  lui          a3, 346178
                  lui          s5, 352580
                  auipc        s6, 125049
                  auipc        a2, 503854
                  sub          a3, a3, tp
                  addi         t5, s5, -162
                  auipc        s8, 379202
                  nop
                  addi         a6, t6, -1912
                  auipc        a2, 795138
                  nop
                  sub          a2, a6, tp
                  nop
                  auipc        a3, 865037
                  nop #end riscv_int_numeric_corner_stream_4
                  slti         t2, s3, -1942
                  xor          s4, t1, tp
                  auipc        t1, 682080
                  and          a3, s6, a2
                  sub          t3, a5, a4
                  add          t6, sp, s8
                  or           a7, a7, s7
                  andi         s0, a7, -1535
                  slt          a5, gp, t5
                  and          s6, s10, a1
                  srli         t4, s10, 5
                  lui          s0, 659971
                  slt          s4, a2, sp
                  slli         a7, s8, 17
                  sra          a4, s8, a6
                  srl          a4, s2, ra
                  ori          s9, a1, 1209
                  ori          t2, t0, -947
                  sra          gp, t1, a5
                  slli         ra, s9, 0
                  srli         t3, s0, 6
                  xori         s8, a3, 221
                  add          s10, s11, zero
                  add          gp, s3, s3
                  slli         s10, t6, 23
                  andi         ra, s2, -1848
                  srli         a0, s0, 9
                  ori          a5, a0, -816
                  sltu         s7, s7, t1
                  sltu         tp, t1, zero
                  xori         a6, a7, 1923
                  add          s9, s2, s8
                  add          a1, s4, s0
                  sltiu        s2, a3, -456
                  xor          a2, tp, a0
                  srai         a3, s0, 24
                  ori          s7, s7, -596
                  xor          t1, a1, tp
                  srl          s2, s0, s7
                  add          s2, t3, t5
                  andi         s2, s2, -1999
                  xori         t3, s10, -347
                  srai         s6, a0, 17
                  sltu         ra, t0, t4
                  or           t4, s2, ra
                  srli         a4, s10, 23
                  xori         s1, s6, 1091
                  addi         zero, s5, -1482
                  sltu         s1, s2, t1
                  srai         a7, a2, 30
                  slti         a6, s3, 192
                  srai         t1, s2, 29
                  xori         s10, zero, -1313
                  xori         a6, s6, -1918
                  and          s7, s2, a4
                  sltiu        s7, s2, 355
                  add          s5, t1, s10
                  slti         s6, t4, -596
                  xor          zero, t4, gp
                  slti         s0, a2, 1065
                  srli         a0, a1, 5
                  sll          s1, t2, a3
                  slt          s0, s6, a5
                  slt          a4, s10, t3
                  ori          ra, t1, 1394
                  slti         a6, s7, 211
                  or           t1, t5, s5
                  lui          zero, 669837
                  or           s10, s10, a4
                  lui          a5, 212904
                  nop
                  slt          t6, t4, a3
                  slli         ra, t6, 11
                  sub          s2, s4, s6
                  lui          s0, 184059
                  ori          a6, gp, 1827
                  srl          a4, s8, s2
                  auipc        t1, 306517
                  xor          t6, s9, s6
                  sll          zero, s1, sp
                  andi         s4, s9, -1236
                  srl          a1, ra, t1
                  srai         s1, a0, 24
                  slti         a0, ra, -889
                  and          s1, s4, a3
                  xori         a2, t1, -900
                  slli         s8, t4, 29
                  sub          a3, s5, t3
                  add          a0, a2, a5
                  auipc        a5, 159470
                  slti         t3, t6, -119
                  sub          ra, ra, a1
                  sub          a6, s6, t4
                  nop
                  srai         t4, a4, 12
                  sra          a7, gp, t3
                  sltiu        s7, gp, 742
                  sub          a4, a5, t2
                  or           s0, a4, t1
                  srl          tp, ra, t5
                  slt          t2, s6, gp
                  slti         gp, t0, -1697
                  sra          s10, s4, t0
                  or           t2, a1, s9
                  sub          a0, s9, s4
                  auipc        s1, 390363
                  sub          tp, s1, a7
                  sra          s8, s4, ra
                  slt          a2, s2, t4
                  sll          a1, a1, s8
                  add          a5, s9, s1
                  or           a0, t4, t0
                  srl          a3, s7, s1
                  slli         zero, t1, 24
                  add          s5, t2, a3
                  addi         s10, s3, 566
                  slt          zero, a4, t1
                  sra          s7, t0, s9
                  sub          t3, s11, s11
                  addi         s4, a4, 960
                  slti         s5, s6, 1947
                  srai         s10, tp, 4
                  nop
                  addi         zero, tp, -1426
                  slt          s10, a1, s7
                  lui          a1, 1005366
                  add          a1, t3, s1
                  or           a2, t1, t1
                  sra          s4, t6, s0
                  or           t5, zero, s8
                  sltu         a2, tp, s0
                  slli         a1, s7, 29
                  sltiu        s5, a6, -29
                  srl          zero, s3, s2
                  sra          a1, t0, s7
                  addi         zero, s4, -1477
                  nop
                  slt          t4, t4, a6
                  sltu         s6, a4, ra
                  srli         a5, gp, 30
                  and          s5, t2, a1
                  sra          a7, s11, s3
                  slt          t3, s7, a1
                  sll          tp, a4, s1
                  and          a2, a3, s11
                  or           a6, s3, a2
                  nop
                  auipc        t3, 572578
                  xor          ra, s8, s4
                  slt          tp, t3, a7
                  auipc        tp, 54078
                  xori         s9, s1, 97
                  or           a7, t4, s10
                  sub          t6, s9, t0
                  or           t1, s9, t1
                  sltu         zero, s5, a1
                  sltiu        t4, t5, -1955
                  sltiu        s6, gp, -1986
                  xori         s7, t0, 780
                  sltiu        s6, s0, 844
                  srl          t2, t2, t2
                  and          a6, a0, t3
                  sub          s6, t6, s8
                  xor          s3, s10, s11
                  sltiu        s2, a6, 101
                  slti         s1, s10, -860
                  sub          s7, t1, a6
                  srl          s3, t6, s0
                  or           a3, a0, a7
                  add          s3, s0, zero
                  srli         s5, s8, 11
                  xori         tp, s3, 1438
                  srai         zero, a6, 18
                  srli         a1, a6, 20
                  lui          s6, 630692
                  srli         t4, s6, 26
                  sra          t2, a5, t0
                  addi         s10, a2, -1752
                  auipc        t2, 1005298
                  sltu         a7, a3, s7
                  sltu         t6, a1, s10
                  sra          s2, s3, zero
                  and          s2, a4, s10
                  or           t6, ra, s10
                  srai         s7, s5, 8
                  sra          gp, a1, ra
                  sra          s2, a3, a0
                  and          zero, gp, gp
                  srl          a3, sp, a5
                  addi         s4, a1, -1430
                  srli         a7, a1, 11
                  andi         t4, gp, -816
                  nop
                  nop
                  slli         s5, s1, 29
                  and          zero, a6, t5
                  srli         ra, gp, 11
                  lui          a0, 589447
                  slli         s7, t3, 1
                  andi         s2, t5, 276
                  sltu         a1, s9, gp
                  and          gp, a3, t6
                  add          a0, s6, s2
                  or           a2, zero, t2
                  sra          s0, a0, s5
                  slti         s0, t5, 528
                  slti         a5, tp, -379
                  andi         s0, t3, -1200
                  srl          tp, s1, t1
                  sltiu        t4, s10, 971
                  lui          t4, 270817
                  auipc        s1, 917819
                  sltu         t3, s5, t4
                  addi         t5, t3, 523
                  sltiu        t5, t1, -1120
                  xor          gp, s11, a7
                  sub          t2, s1, s11
                  lui          a0, 976196
                  auipc        s5, 334120
                  or           t2, s4, t6
                  ori          tp, s6, 1481
                  add          s6, s1, s0
                  lui          a4, 783987
                  sub          t1, sp, s11
                  auipc        a6, 271860
                  nop
                  slt          tp, t4, s4
                  nop
                  and          s1, t3, tp
                  srai         a7, s8, 10
                  srl          a7, s10, tp
                  xori         a4, gp, 1588
                  sub          a2, a1, a3
                  add          a3, tp, zero
                  srl          a5, a0, sp
                  sltiu        s6, tp, 1289
                  andi         s6, s3, -384
                  nop
                  slli         s10, a4, 17
                  sll          a3, zero, s5
                  sra          a7, zero, a5
                  sltu         t1, s8, s5
                  srl          s7, zero, a6
                  xori         s4, s2, 2046
                  sltu         s6, a2, t5
                  lui          t1, 956014
                  sra          a3, a0, sp
                  lui          s2, 423359
                  or           s9, s8, t0
                  srl          t1, sp, sp
                  sll          s3, s1, s7
                  andi         s8, t3, -1274
                  slt          gp, s1, t1
                  lui          a0, 819172
                  srl          a7, a0, s9
                  lui          s0, 438380
                  ori          s5, t2, -2030
                  srl          a4, t2, s0
                  slli         s1, zero, 23
                  add          a0, tp, a5
                  slt          ra, gp, a4
                  nop
                  ori          tp, s2, 751
                  sra          s5, t1, t0
                  lui          a4, 401182
                  slt          a7, s11, s2
                  ori          s0, t1, -1157
                  add          a3, s11, t5
                  and          s6, t4, a5
                  add          tp, t4, a4
                  xor          a4, tp, s3
                  andi         s2, t6, -1464
                  sra          s10, a6, a6
                  add          a7, ra, t3
                  nop
                  addi         s2, s5, 844
                  sub          gp, s5, gp
                  add          a7, s2, a7
                  addi         s4, t6, 687
                  sltu         s2, a1, t5
                  slti         a7, sp, -1641
                  addi         s7, t5, 1797
                  sra          a5, zero, a0
                  nop
                  and          ra, a0, a6
                  add          a4, s1, sp
                  sll          s5, t6, a1
                  srai         t1, a6, 4
                  srli         ra, a7, 8
                  and          t2, gp, s7
                  slt          s6, zero, t4
                  and          s7, s11, s4
                  slti         a5, a3, -892
                  slt          s0, t4, s10
                  sll          a4, a1, s0
                  add          a4, tp, gp
                  ori          s2, s8, 797
                  srl          s8, t4, s3
                  srli         s5, gp, 6
                  ori          t4, a5, 1800
                  add          t5, s9, s9
                  srai         a7, s9, 15
                  slt          zero, s8, tp
                  slt          t3, a3, s6
                  or           a5, s2, s4
                  ori          a6, a3, 1377
                  sltu         t6, a2, s7
                  add          s0, sp, t4
                  nop
                  slt          t1, a2, s7
                  andi         s5, sp, -1842
                  lui          a0, 209122
                  slt          t2, a3, a4
                  sll          a7, s2, s1
                  nop
                  sub          t2, s0, a1
                  xor          s6, a1, s10
                  sra          zero, t5, t1
                  andi         s6, s4, 1891
                  nop
                  or           ra, ra, t4
                  slt          s2, a6, s9
                  ori          a7, gp, 999
                  add          t3, s7, t3
                  srai         t6, s9, 16
                  auipc        s10, 878024
                  andi         zero, a2, 45
                  ori          a3, s11, 465
                  addi         s8, s1, -1159
                  slli         t6, s4, 30
                  sra          t6, a0, a3
                  lui          s8, 348160
                  nop
                  andi         t3, t4, -1472
                  xor          s0, ra, t2
                  xori         zero, s9, 1364
                  auipc        a2, 158978
                  andi         a3, s1, -1163
                  srai         s3, gp, 11
                  and          t5, gp, a6
                  andi         t6, a4, -277
                  addi         s3, t2, 316
                  addi         t1, s0, 1073
                  sll          a3, a1, a6
                  srl          ra, t4, s8
                  sltu         s9, a3, a7
                  nop
                  nop
                  sub          ra, s10, a4
                  srli         s5, ra, 17
                  or           s1, zero, t5
                  xor          a7, s10, gp
                  nop
                  add          s10, zero, s10
                  lui          t4, 381467
                  srai         s6, s8, 30
                  slti         s8, t1, 1577
                  add          t3, s6, s9
                  sub          a1, s10, a5
                  xori         a7, s1, -703
                  sltiu        t3, sp, -1971
                  nop
                  sub          t5, s9, zero
                  sll          a6, zero, s3
                  srli         s8, s7, 22
                  auipc        s7, 238647
                  slti         s5, t5, 457
                  sltu         a6, a0, zero
                  srli         s5, gp, 12
                  auipc        a7, 30529
                  xor          a6, t2, a1
                  auipc        t1, 1014039
                  sll          t3, s10, t3
                  lui          t5, 779704
                  sll          a6, a2, t0
                  xor          s2, t5, t4
                  sltu         t3, t2, t0
                  srai         a3, s1, 4
                  srai         s0, s0, 26
                  slt          a4, s8, t3
                  andi         a7, t2, 938
                  slli         s8, s2, 6
                  sra          s0, s6, t5
                  or           s4, s9, t4
                  and          s8, a0, s0
                  and          s0, ra, s5
                  sltu         s6, a0, s0
                  li           gp, 0x50ab6074 #start riscv_int_numeric_corner_stream_5
                  li           t6, 0x80000000
                  li           s10, 0xd48e1a5a
                  li           t2, 0x0
                  li           s9, 0x80000000
                  li           s4, 0x80000000
                  li           t4, 0x80000000
                  li           a7, 0xffffffff
                  li           a4, 0xffffffff
                  li           t3, 0x80000000
                  nop
                  addi         a7, a7, 830
                  nop
                  nop
                  add          t3, a4, s10
                  add          a4, s10, t4
                  lui          a4, 147373
                  add          t3, t6, gp
                  nop
                  sub          t3, t3, a7
                  nop
                  add          s9, gp, t6
                  addi         a4, s4, -277
                  auipc        t6, 326072
                  add          t4, a4, t2
                  add          gp, t6, s10
                  addi         s4, s9, -1875
                  auipc        t3, 785356
                  sub          a7, t3, t2
                  auipc        a4, 492131
                  lui          a4, 912348
                  lui          t2, 984920
                  sub          s9, s10, s9
                  sub          t2, gp, s10
                  sub          s9, t4, t6
                  addi         a7, t2, 1915 #end riscv_int_numeric_corner_stream_5
                  xor          t6, s6, s1
                  addi         a7, zero, 147
                  sltiu        a5, tp, -724
                  sll          s3, s9, gp
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           a6, 0xffffffff
                  li           a5, 0x80000000
                  li           s10, 0xffffffff
                  li           ra, 0x80000000
                  li           a7, 0x80000000
                  li           s3, 0x80000000
                  li           a0, 0x80000000
                  li           t2, 0x80000000
                  li           s5, 0xffffffff
                  nop
                  auipc        s5, 1036895
                  lui          a5, 861809
                  auipc        t4, 978535
                  addi         t2, a0, -1441
                  addi         s3, s5, 1709
                  addi         s10, a6, -610
                  add          a6, t2, t4
                  sub          a7, s10, s5
                  sub          t4, a0, a7
                  addi         a7, ra, -1602
                  add          t4, a5, t4
                  auipc        a0, 292019
                  nop
                  lui          a5, 669055
                  add          s3, t4, t2
                  add          t2, a6, a5 #end riscv_int_numeric_corner_stream_10
                  andi         a3, sp, 1456
                  srl          ra, a7, s5
                  and          t6, s8, s7
                  and          t5, sp, zero
                  lui          s10, 51457
                  slt          a2, s6, s8
                  xori         a1, s0, 215
                  slti         tp, ra, -1277
                  srli         s3, s0, 19
                  xori         a5, s5, -1808
                  or           t3, t4, t0
                  sltiu        t6, s7, 120
                  srli         t2, s8, 23
                  sub          a7, t3, tp
                  and          s6, t2, t2
                  ori          s9, s2, -584
                  addi         s6, s10, -1277
                  slt          t6, s10, t0
                  sltiu        t6, s3, -384
                  sra          s6, a5, s5
                  srai         s5, t3, 25
                  srl          s9, t6, a4
                  and          gp, tp, s1
                  srli         t6, s4, 4
                  srai         t5, s5, 30
                  srli         s1, t5, 16
                  srl          s8, s2, s10
                  sltu         a7, s10, s11
                  xor          s10, a1, a4
                  lui          ra, 958964
                  sll          a1, a2, t4
                  slti         t5, tp, 267
                  andi         s4, t0, 301
                  sub          s3, t1, t2
                  slt          zero, t5, sp
                  sub          s5, a4, s11
                  andi         s6, s2, 1694
                  or           a6, gp, a7
                  ori          a5, s7, 1127
                  sll          s8, s5, s11
                  xori         a6, ra, -364
                  sub          s10, t6, t4
                  sll          s6, s3, t6
                  slli         t3, a2, 4
                  xor          t5, sp, gp
                  auipc        t2, 901846
                  xor          t6, ra, a6
                  sub          a2, s4, ra
                  xori         tp, a3, 1443
                  srli         s1, t0, 17
                  sll          s2, a0, a0
                  sltu         a4, a1, s5
                  xor          s0, t3, s7
                  srai         ra, t1, 12
                  srai         t5, t2, 2
                  ori          s2, a1, 1582
                  addi         t2, s3, -944
                  auipc        a5, 116724
                  slti         a2, s2, -952
                  and          t6, t3, a6
                  sll          s3, a5, s6
                  add          tp, s11, ra
                  xori         a0, s8, 292
                  sltu         s2, t2, s9
                  addi         a4, gp, -1106
                  lui          t6, 504692
                  slti         tp, s7, 1808
                  sltu         s9, a0, t2
                  or           s10, a2, s1
                  addi         ra, tp, 30
                  xor          s2, a3, s2
                  addi         t2, s10, -550
                  ori          a1, a2, -1272
                  srl          t4, zero, gp
                  srli         a1, a1, 5
                  add          a7, t4, s7
                  sub          s0, a4, s2
                  xor          a4, a3, t2
                  and          t3, zero, t2
                  sra          a1, a6, t3
                  ori          s5, s1, 1485
                  auipc        t6, 1011695
                  nop
                  and          t4, t0, a2
                  sll          s8, t3, a2
                  srai         a7, t6, 10
                  lui          s1, 86135
                  slt          a4, s0, a5
                  sub          a6, t3, s6
                  srl          s1, a5, a2
                  xori         a6, s8, -1212
                  srl          a6, t6, a5
                  srli         zero, zero, 22
                  srl          s10, a3, s11
                  and          s1, s6, a0
                  auipc        s4, 334146
                  and          s4, s0, t4
                  or           t2, t3, s0
                  srl          s1, s9, sp
                  ori          a1, s2, 1902
                  and          t6, s10, t5
                  sltiu        s1, t5, -1153
                  and          s2, s0, a1
                  sltu         s7, s6, s4
                  sltiu        s8, s10, 1980
                  andi         s6, a6, -1456
                  xori         t1, s7, -168
                  srli         s10, s9, 6
                  srl          s7, a4, t1
                  srli         t1, s4, 9
                  and          a6, s7, s6
                  sra          a5, s0, s1
                  lui          s3, 98877
                  slt          t3, a1, t1
                  andi         a5, a7, -826
                  sub          s3, t3, a4
                  srli         a3, s5, 27
                  slt          t4, a7, a7
                  sltu         t2, s11, t0
                  xori         s0, tp, -629
                  and          zero, t2, a3
                  sra          t4, s7, a5
                  sub          s6, s8, s1
                  slt          s7, s10, ra
                  srli         zero, gp, 13
                  sub          ra, s0, t6
                  addi         t1, s2, 977
                  xor          a4, t5, t1
                  slt          s7, s10, a2
                  addi         gp, zero, 1559
                  srl          tp, a4, s4
                  srl          s2, s1, s6
                  and          a0, s7, tp
                  nop
                  xori         s10, ra, 191
                  andi         s2, s2, -1485
                  srl          s4, s11, a1
                  ori          t6, s5, -883
                  sltiu        s9, t1, -815
                  auipc        s6, 769540
                  xori         s2, t0, -30
                  xor          ra, s10, a7
                  slti         s0, a2, -1668
                  xori         s5, s9, -556
                  nop
                  and          a4, t2, gp
                  slti         a2, gp, 1544
                  add          s9, a6, t4
                  andi         s9, a3, 616
                  auipc        s7, 700985
                  xor          a2, a7, s10
                  slli         s4, s0, 15
                  srl          s9, a5, a5
                  ori          s3, s10, 1294
                  andi         a7, a1, -1609
                  srli         a0, t0, 11
                  sra          t3, s2, t5
                  xori         a5, a2, -1961
                  xor          t3, s1, zero
                  sra          gp, ra, s3
                  srai         t3, a5, 4
                  sltiu        s5, s7, -131
                  sltiu        s5, s6, 2008
                  sub          t5, a3, t1
                  sra          a2, a0, s7
                  sltu         t4, a7, t3
                  sub          a6, a0, s0
                  sltiu        s1, t1, -1078
                  andi         a0, s8, -1354
                  xori         s6, s4, 339
                  add          tp, tp, s4
                  sub          s10, zero, t6
                  auipc        t6, 523099
                  nop
                  srli         a1, a4, 29
                  srl          a6, a1, a3
                  xor          s8, ra, a5
                  sltiu        a7, gp, -1780
                  srai         gp, a1, 9
                  sub          s1, t5, s3
                  addi         s1, s4, -1997
                  addi         s2, s9, -849
                  sra          t1, t6, s2
                  add          t4, ra, s4
                  sra          zero, t2, s5
                  srai         s8, ra, 6
                  sub          s2, t4, a5
                  nop
                  ori          a5, ra, 1043
                  srai         t4, t3, 9
                  addi         s1, tp, 547
                  slli         s4, t5, 27
                  srli         a5, s7, 16
                  and          ra, t2, a0
                  sra          s3, s1, a4
                  ori          s5, s8, 397
                  srai         s10, t4, 7
                  lui          s8, 473999
                  nop
                  ori          s10, t5, 732
                  auipc        t6, 551133
                  sltiu        t3, a6, 1590
                  srl          a6, a2, s7
                  or           gp, a6, s9
                  andi         s2, s2, 1563
                  add          s8, a0, s9
                  sll          s1, tp, s1
                  nop
                  slli         s8, s7, 10
                  auipc        s0, 838093
                  srl          s8, s11, s7
                  slt          s9, s1, a3
                  or           s6, t4, a7
                  sltiu        s10, sp, 1082
                  sltiu        a6, a4, -1941
                  slli         a5, sp, 9
                  slt          a5, sp, s9
                  addi         t4, a6, -1786
                  slt          a3, a7, t2
                  sltu         s1, a7, t0
                  addi         s2, a1, -380
                  slti         t4, a1, -1646
                  add          a1, ra, s4
                  lui          t6, 500206
                  srl          ra, s10, t0
                  or           s7, a6, a3
                  srli         s2, s11, 10
                  slt          a6, s9, s10
                  srai         a7, a3, 22
                  sra          s10, s9, t4
                  sub          t5, s9, a7
                  or           a5, t4, a3
                  xor          s5, a0, s6
                  auipc        zero, 489631
                  andi         a1, s10, -24
                  andi         a6, s9, 845
                  and          s7, t3, sp
                  xor          t3, s5, tp
                  srai         t5, a1, 15
                  slti         a0, t2, 421
                  slli         a3, s1, 1
                  sltiu        s2, t3, -1894
                  sltu         a4, t4, s8
                  nop
                  nop
                  or           s10, sp, s1
                  add          t3, a5, zero
                  xor          s3, t3, s5
                  xori         t4, gp, -126
                  sub          a3, t2, t5
                  sltu         ra, s11, s9
                  srli         a7, zero, 21
                  sltiu        t2, s2, 1527
                  sltu         a3, t0, sp
                  sltu         s7, s5, a0
                  srl          t1, a5, t3
                  slli         zero, a3, 27
                  or           s6, a1, a4
                  or           s9, tp, s11
                  nop
                  sltiu        s9, zero, 534
                  or           t1, s9, a3
                  nop
                  add          gp, s9, s2
                  sll          s8, s9, s3
                  sra          ra, t4, gp
                  addi         s5, s3, 836
                  andi         zero, s9, -596
                  sll          s8, a1, s5
                  slli         a1, s2, 30
                  xori         a4, s7, 1872
                  add          zero, s1, t0
                  sub          t6, a7, s8
                  or           a4, t1, a2
                  sra          a5, s5, t6
                  andi         a7, s4, 1994
                  slt          s4, a3, t5
                  nop
                  nop
                  lui          a1, 122934
                  andi         ra, s9, -191
                  xor          a4, t5, s3
                  srl          s0, tp, s3
                  ori          a6, s10, -1152
                  sltiu        ra, a1, 1148
                  srli         s2, s1, 15
                  addi         t6, a4, -298
                  slt          t3, gp, a5
                  sub          s8, s10, a3
                  ori          t1, t2, 1226
                  slt          a0, a6, s4
                  or           s10, s0, a2
                  sltiu        s2, a5, -1147
                  xori         gp, ra, 394
                  slli         s3, gp, 0
                  or           a3, a6, t0
                  slt          t6, s3, s9
                  srl          s7, gp, a4
                  ori          s9, s3, 1969
                  sub          a1, tp, t4
                  sltu         a7, s2, tp
                  srl          s4, t3, t5
                  sltiu        s4, s2, -1409
                  slt          s0, s10, tp
                  sltiu        a4, s7, 665
                  srli         s4, t2, 13
                  ori          s1, a1, -1422
                  nop
                  sub          a6, a2, a7
                  srli         ra, sp, 27
                  xori         a6, a7, -846
                  auipc        t1, 343561
                  slti         zero, a0, -254
                  slli         a4, s7, 21
                  xor          ra, t3, s5
                  lui          a0, 682100
                  ori          s3, s5, -1637
                  slt          a7, s0, sp
                  srai         a1, a1, 10
                  sll          a7, gp, t1
                  slt          t5, t2, zero
                  nop
                  sll          zero, s11, sp
                  nop
                  auipc        t3, 716580
                  slt          s8, a4, t0
                  slt          t3, a2, s3
                  srli         s6, a2, 28
                  xor          t3, a1, s10
                  srai         a3, a5, 4
                  srli         a4, a0, 3
                  sub          t2, s6, s0
                  sll          s3, s5, s10
                  ori          tp, s11, -292
                  srai         gp, s5, 4
                  sub          a4, s9, t5
                  xor          s5, s3, a3
                  slli         s8, t1, 11
                  nop
                  sub          s3, a1, gp
                  slt          s7, t2, a2
                  srai         s5, ra, 29
                  xori         s3, ra, 717
                  addi         t4, ra, -1522
                  and          s7, ra, s1
                  slt          t4, s1, a0
                  srli         s2, a7, 19
                  or           s1, s10, a4
                  lui          s6, 172495
                  lui          a3, 1012008
                  addi         ra, sp, -818
                  srli         t5, s2, 31
                  xor          t2, s6, s4
                  sltu         t2, s3, s3
                  sltu         s5, s0, t4
                  or           s2, t5, s4
                  slt          a5, tp, zero
                  nop
                  sra          tp, s5, a4
                  sltu         t1, s6, a7
                  sltu         s9, s6, t1
                  nop
                  auipc        t6, 535433
                  xor          zero, tp, a0
                  xori         t4, s6, 667
                  slli         t4, a2, 19
                  srli         a4, s0, 17
                  slt          a6, s5, t0
                  xori         a0, sp, -1773
                  addi         t3, s6, 548
                  add          a5, t0, s1
                  andi         s9, a0, 357
                  sll          t1, a5, t5
                  sltiu        gp, t0, -22
                  slli         t5, s11, 28
                  auipc        a1, 621677
                  andi         zero, a3, -1667
                  slti         s3, a0, 1193
                  srai         s5, a4, 8
                  or           a5, a5, t1
                  srai         a6, t1, 23
                  srl          zero, a3, a0
                  srai         zero, s9, 13
                  nop
                  sltiu        t2, s10, -1342
                  add          s1, a2, s9
                  lui          a7, 836200
                  lui          tp, 221725
                  addi         a4, zero, 268
                  slti         tp, s1, -913
                  ori          t1, t0, 1087
                  ori          a3, s9, -1520
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           a6, 0x0
                  li           s9, 0x80000000
                  li           t2, 0xffffffff
                  li           a5, 0xffffffff
                  li           s8, 0x6ea7d774
                  li           ra, 0xb0a0144c
                  li           a7, 0x80000000
                  li           s1, 0xffffffff
                  li           s0, 0xffffffff
                  auipc        a7, 650446
                  add          s8, s9, ra
                  sub          a3, s0, s9
                  addi         a6, ra, -302
                  lui          s0, 326908
                  addi         a5, s9, -93
                  add          a5, a3, s8
                  sub          s0, a3, t2
                  nop
                  lui          s0, 887493
                  auipc        a5, 618003
                  nop
                  sub          a7, t2, a6
                  sub          a5, ra, a3
                  auipc        a3, 709029
                  nop
                  nop
                  add          t2, a7, s0
                  sub          a7, a6, s1
                  add          s8, s8, a6
                  auipc        s9, 275904
                  add          ra, s1, s0
                  addi         s9, s0, -156
                  addi         s1, s1, -108
                  auipc        s0, 469803
                  lui          s9, 547087
                  auipc        s8, 992627
                  add          s1, a5, s9
                  auipc        a5, 644057
                  nop #end riscv_int_numeric_corner_stream_18
                  andi         t3, sp, -1225
                  srai         t2, a3, 15
                  slt          a0, a7, t2
                  or           a5, s9, zero
                  add          a1, t2, s9
                  slt          a5, ra, t6
                  nop
                  sra          s5, t2, t0
                  andi         a0, tp, 1623
                  sub          t3, s11, zero
                  nop
                  sltu         a0, a5, t6
                  add          a7, a6, a6
                  and          a2, s0, zero
                  sll          s3, s0, a4
                  srli         t4, a6, 29
                  slt          a7, a7, tp
                  nop
                  xori         a7, a5, -728
                  sltiu        a5, gp, 647
                  auipc        a2, 302031
                  srli         s8, t3, 15
                  srli         t5, t1, 8
                  srai         a7, s5, 4
                  sll          zero, a1, s7
                  auipc        tp, 268659
                  auipc        a6, 574456
                  nop
                  sra          s5, t0, a4
                  andi         s1, s0, 1748
                  xori         tp, t0, -57
                  srli         a1, t3, 18
                  sub          ra, zero, a5
                  sll          s0, a6, t5
                  xori         s10, a7, -1571
                  and          s5, a1, s10
                  sltu         s4, gp, s11
                  sltiu        s5, s10, 518
                  sltiu        a4, s11, -1784
                  ori          gp, a0, 2010
                  slt          s7, t1, t6
                  sltu         a0, t2, t1
                  slt          gp, a7, a7
                  nop
                  sra          t4, zero, s2
                  srl          tp, s1, s2
                  srai         a4, s4, 19
                  andi         gp, s10, 1082
                  srli         zero, a7, 3
                  nop
                  srl          a1, s6, a2
                  xor          s2, zero, a7
                  ori          s5, t3, -1770
                  lui          s4, 363476
                  sltu         a7, s0, s2
                  srai         s6, tp, 4
                  nop
                  ori          t6, s7, -981
                  auipc        zero, 213652
                  sltu         t3, t2, a1
                  slt          a7, t6, t6
                  addi         a0, s1, -1384
                  slli         s1, t6, 23
                  slti         t3, tp, 1904
                  lui          s3, 611669
                  or           a7, s2, a2
                  slli         s2, a1, 9
                  srli         a4, t1, 12
                  xor          a7, a4, s4
                  ori          a2, s7, 1481
                  srl          a0, t4, s9
                  xor          s0, a3, s7
                  andi         a1, s4, -810
                  srl          a3, a3, a0
                  ori          t4, a2, -1890
                  srli         s4, t5, 4
                  srli         s3, t2, 17
                  srl          a7, t2, tp
                  add          s7, s1, ra
                  lui          s5, 205850
                  sub          ra, s6, s4
                  add          a1, s2, s9
                  nop
                  sltu         tp, a2, gp
                  slt          s7, s0, t1
                  srai         s1, a0, 15
                  xor          a5, t0, t0
                  or           a0, a0, ra
                  srai         t1, t6, 11
                  andi         tp, t1, -1230
                  slt          s0, a5, s5
                  sll          a5, a6, sp
                  sra          a5, s10, t4
                  ori          a3, gp, -572
                  xori         a1, ra, 1851
                  andi         s3, s2, 1993
                  nop
                  andi         gp, s4, 1478
                  srli         tp, s4, 5
                  srli         t6, gp, 0
                  xor          s0, t1, s11
                  sltiu        s8, sp, -299
                  slt          t6, s2, s6
                  slti         a1, t2, 1916
                  sltu         s7, a4, sp
                  nop
                  xor          ra, tp, s8
                  lui          s1, 364680
                  sltiu        s9, s1, -1692
                  srl          t4, t5, a7
                  addi         s4, s1, -1107
                  nop
                  srai         s10, s0, 30
                  add          t1, s5, gp
                  sub          t5, t4, s8
                  sub          a4, s7, sp
                  slli         s3, ra, 8
                  srai         gp, a6, 28
                  ori          a0, a4, 539
                  or           t1, t0, a1
                  addi         t6, s6, -1816
                  srai         s8, a3, 11
                  srai         a0, a3, 23
                  auipc        a2, 599020
                  srl          zero, s2, t6
                  andi         a4, t4, -1315
                  sltiu        s9, s9, 1396
                  add          s1, t6, s6
                  sub          a2, t0, gp
                  xor          a0, a6, ra
                  add          a1, a6, ra
                  slt          s4, t1, a4
                  srli         s6, a4, 29
                  andi         s5, t5, -1423
                  sra          a1, s2, s2
                  sra          s3, s2, a6
                  ori          t3, t3, -815
                  sra          t6, gp, ra
                  slli         a5, a7, 9
                  srl          a4, t0, a0
                  sll          a2, t3, s11
                  sltiu        a3, a1, 449
                  sltu         s9, t6, s11
                  addi         s0, a5, -1999
                  andi         a7, s2, 1590
                  ori          s10, a2, 1914
                  andi         a5, zero, 1675
                  and          t2, s5, t2
                  nop
                  slli         s5, sp, 6
                  slt          a4, t4, s10
                  nop
                  sltiu        s4, s5, -1676
                  addi         s9, tp, -1122
                  sll          s0, a4, a1
                  srl          a2, a6, a1
                  lui          s9, 190439
                  auipc        a6, 199712
                  nop
                  sltu         ra, a1, t1
                  andi         s8, s9, 1521
                  srl          s9, s1, s9
                  xor          ra, t0, s9
                  and          a3, a0, ra
                  sltiu        t4, ra, -85
                  sra          s1, tp, s11
                  addi         t3, s7, -1427
                  sltiu        s8, gp, 432
                  sltu         s6, s6, s7
                  lui          a7, 666346
                  srai         t2, t6, 15
                  lui          t6, 469339
                  or           gp, s3, s1
                  slli         s1, ra, 24
                  or           s3, ra, s7
                  or           t2, t1, a1
                  sltu         zero, t0, a6
                  srl          a6, t6, ra
                  auipc        a1, 341636
                  sub          s9, s3, t5
                  sll          s0, zero, sp
                  xor          a3, t4, s0
                  sra          s8, zero, a1
                  addi         ra, a4, 1559
                  sra          t3, a1, s5
                  sltiu        t4, s4, 198
                  sltu         t3, a0, a7
                  sll          s10, s8, s2
                  xori         s2, a5, -1179
                  sll          a6, sp, t1
                  add          s4, s10, gp
                  sltu         t6, t5, a0
                  andi         a4, a0, 1721
                  sll          s3, s0, s6
                  slli         tp, a2, 20
                  add          s7, s8, t1
                  sltiu        ra, s8, -1093
                  srai         s9, a5, 0
                  srl          s3, s10, a0
                  and          a3, t5, s8
                  and          ra, a2, a1
                  ori          s7, t0, -250
                  add          zero, s9, s9
                  addi         zero, sp, -1726
                  sra          zero, s2, s10
                  srl          ra, zero, s11
                  xor          t1, a5, t4
                  slli         a7, s5, 23
                  sra          t6, t4, t0
                  or           s1, s7, t1
                  xori         s8, s3, -290
                  sra          s9, s11, sp
                  and          t5, tp, a5
                  lui          s9, 652445
                  ori          a0, a6, 1937
                  sra          a7, s1, sp
                  or           a1, s6, t4
                  auipc        a6, 65326
                  addi         s4, t0, 1739
                  and          s10, a1, t3
                  sltu         t5, s4, s0
                  andi         t2, s2, 2047
                  slli         s3, zero, 0
                  andi         a2, t6, -105
                  lui          s1, 832649
                  sra          t5, a1, s8
                  ori          a3, sp, -1849
                  slli         a4, t6, 9
                  add          t5, s10, ra
                  sra          s0, t4, t0
                  or           t5, a5, t4
                  srl          t6, s1, t2
                  slti         s0, a4, -1153
                  srl          t1, s9, gp
                  andi         s4, s5, 1736
                  nop
                  add          a7, ra, zero
                  nop
                  addi         a5, t1, -179
                  sra          a2, zero, gp
                  nop
                  and          ra, a5, ra
                  sub          a2, a6, a3
                  or           s8, a6, s7
                  slli         tp, s2, 17
                  and          s3, s11, a6
                  lui          gp, 732070
                  or           s9, a6, s1
                  sub          t3, gp, s11
                  auipc        a3, 55894
                  and          s2, t5, a1
                  nop
                  sll          s6, a3, a1
                  sub          t4, a3, a2
                  andi         t2, t2, -434
                  sltu         t3, a1, t0
                  sltu         s2, sp, a2
                  xori         tp, a6, -1255
                  xori         s10, gp, 1303
                  sub          t5, a2, a7
                  add          s5, s2, s1
                  nop
                  and          gp, s3, s1
                  auipc        a1, 245909
                  auipc        s2, 960374
                  andi         t4, a1, -1573
                  sub          a0, a6, a2
                  add          a1, s1, tp
                  slt          a3, zero, s11
                  sra          zero, ra, a0
                  auipc        t3, 209075
                  srai         s1, a4, 15
                  slti         ra, zero, 667
                  slli         a5, t0, 8
                  add          s0, t1, a2
                  slti         a1, ra, -1891
                  slli         a7, s8, 6
                  xori         s10, s6, -664
                  sub          a1, s6, t2
                  auipc        t3, 823082
                  auipc        s3, 1047810
                  or           s1, a6, s9
                  slti         t6, a7, 871
                  and          a2, t4, t0
                  or           s4, a3, s3
                  add          a6, s6, s5
                  sll          t4, zero, a3
                  addi         a3, zero, 1118
                  or           t3, t3, s0
                  slt          t6, a1, a3
                  sll          s3, ra, t6
                  srai         zero, sp, 15
                  sub          s2, s7, t1
                  slti         s7, s8, 1620
                  andi         a0, t5, 1614
                  sltu         s5, a7, a2
                  sltiu        t5, ra, 1276
                  xori         a4, t4, -1482
                  srl          s8, t4, a3
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s1, 0x0
                  li           a7, 0x0
                  li           s9, 0x0
                  li           a1, 0x0
                  li           a0, 0xffffffff
                  li           t5, 0x0
                  li           s5, 0x80000000
                  li           s6, 0xe071ed7c
                  li           a6, 0x5acebcef
                  nop
                  sub          s4, a7, a7
                  add          s6, a1, s4
                  lui          t5, 175603
                  sub          a6, a1, a7
                  auipc        a7, 858902
                  sub          t5, a7, a0
                  add          a6, a7, a6
                  auipc        a7, 434302
                  add          s4, a6, s4
                  lui          s5, 994268
                  add          s4, s6, s4
                  sub          t5, a0, s5
                  add          a1, a1, a0
                  add          t5, t5, s4
                  add          s5, a0, s1
                  addi         a0, a6, -216
                  sub          s1, a6, a1 #end riscv_int_numeric_corner_stream_9
                  srai         s9, s10, 21
                  sll          a0, t4, s1
                  sltu         s0, t1, s9
                  sra          a5, a1, t2
                  nop
                  slti         zero, s1, -1022
                  srl          a5, a7, a7
                  nop
                  and          s7, a3, t6
                  srl          a0, ra, t3
                  sltiu        t4, s6, -922
                  srl          a5, a4, s10
                  sll          s4, a2, a4
                  andi         s4, t3, -289
                  xori         tp, s2, -14
                  slt          s1, zero, a2
                  lui          s2, 753259
                  sltu         s4, a5, s0
                  slt          s0, zero, s7
                  sll          s10, t0, ra
                  slti         a2, tp, -1933
                  and          s4, gp, s8
                  lui          zero, 528061
                  auipc        ra, 172298
                  sra          s0, s4, t1
                  add          a1, a0, s5
                  sra          s4, a2, a5
                  sltiu        t4, zero, 519
                  or           tp, a3, a1
                  auipc        s7, 774034
                  addi         zero, s8, -1587
                  auipc        a4, 526757
                  slti         a7, a2, 1401
                  addi         a4, sp, 1766
                  andi         tp, t6, -1790
                  and          s3, a7, s9
                  nop
                  xori         s10, a0, -1559
                  srl          a0, a4, a7
                  xori         s5, sp, 1936
                  lui          s3, 1029495
                  slti         s4, a3, 692
                  ori          a6, ra, -1228
                  or           s4, t1, s1
                  slli         s2, s8, 25
                  srli         t2, t6, 27
                  or           a7, t3, a1
                  xori         a6, t1, 273
                  xor          s4, t1, a6
                  xor          t2, a7, s1
                  sub          ra, t3, a0
                  xori         s7, s8, 718
                  xori         a7, a2, -1629
                  sll          a1, t5, zero
                  srai         s4, t4, 22
                  nop
                  srl          a4, s3, a1
                  nop
                  sll          s6, s7, s10
                  sll          gp, s9, a7
                  slti         t2, a2, 513
                  xor          zero, a0, s10
                  add          a1, t5, t0
                  nop
                  sltiu        s1, a1, -1807
                  and          s9, s1, a5
                  sll          s1, a5, s2
                  ori          s7, t3, 118
                  xor          a2, t5, s2
                  add          a3, a2, t6
                  sltiu        gp, sp, -1751
                  xori         t2, t2, -1304
                  ori          a4, s0, 302
                  sltiu        t5, s0, -124
                  sra          s9, s4, s9
                  slt          t4, a4, s3
                  auipc        s4, 343552
                  andi         t2, gp, -1338
                  and          t4, a2, a7
                  slti         a0, gp, -65
                  auipc        t2, 338948
                  sll          t1, a7, a0
                  srai         gp, a0, 4
                  srl          s5, zero, a0
                  xori         t4, t4, 841
                  xori         a1, a4, 901
                  lui          a7, 870361
                  xor          ra, a1, s0
                  srl          a3, s2, sp
                  srai         t4, s4, 23
                  xor          t5, s6, a0
                  sub          ra, s4, s6
                  sra          s4, a4, s7
                  srl          a2, s9, s7
                  xori         ra, a4, -674
                  add          a7, s5, t6
                  lui          s2, 570317
                  slti         t6, sp, 1850
                  add          a1, s4, s1
                  sll          a7, t2, a2
                  addi         a6, a0, -1962
                  and          t2, s0, s6
                  slli         a4, s10, 20
                  srli         t3, a2, 22
                  slli         s10, sp, 4
                  sub          gp, t0, ra
                  srai         t3, s2, 3
                  nop
                  srli         t4, s4, 0
                  ori          ra, s3, 181
                  slli         s9, a5, 8
                  sra          a2, s7, t6
                  xor          s5, s0, t0
                  srl          t2, s4, a1
                  addi         s5, a6, -1549
                  slt          s1, s1, t2
                  srl          t3, s0, s4
                  slti         s7, tp, 1281
                  ori          s6, a5, 835
                  nop
                  or           t2, s7, a5
                  auipc        s3, 360070
                  nop
                  and          s0, a6, s2
                  slt          a1, t4, a5
                  sra          a3, a7, zero
                  sub          t6, s2, t1
                  sub          gp, a6, s10
                  ori          s10, t1, 1423
                  sll          a6, a2, a7
                  xor          t5, a6, sp
                  ori          s4, gp, 1267
                  andi         a5, s6, -444
                  xori         zero, s1, 1949
                  srai         t2, sp, 19
                  nop
                  and          t3, t4, t6
                  sltu         zero, ra, a4
                  sub          tp, gp, a4
                  sra          s0, s2, s10
                  auipc        a7, 667136
                  sltu         s5, t5, t2
                  or           ra, a7, tp
                  srli         ra, s2, 2
                  auipc        s10, 45883
                  add          s6, a2, a7
                  srli         t1, s8, 2
                  srli         a5, s4, 13
                  sll          t5, t6, t4
                  sltu         s1, s11, zero
                  srli         a3, s10, 25
                  andi         a0, a6, -1983
                  sra          a5, s11, a4
                  addi         t4, s11, -62
                  slli         a6, t0, 17
                  xori         ra, t3, -457
                  ori          s6, s4, 1912
                  and          a7, s0, s8
                  or           ra, gp, tp
                  andi         s3, zero, 1765
                  addi         a7, s5, 926
                  or           t2, s5, t2
                  and          s6, s4, a3
                  sra          s3, s4, s0
                  srli         a1, s5, 20
                  lui          t1, 833269
                  auipc        s8, 799146
                  sra          s9, t1, gp
                  add          t2, t2, sp
                  nop
                  slli         s3, zero, 30
                  sra          t5, ra, a1
                  sub          s8, a1, a6
                  srai         s8, t0, 26
                  xor          gp, a6, a7
                  xor          s9, a4, a2
                  or           a3, s11, s4
                  srl          s5, a2, s8
                  nop
                  xori         s2, s11, 1857
                  xor          ra, gp, t4
                  add          t1, s8, s2
                  nop
                  or           t3, t3, s1
                  slt          t5, t6, zero
                  and          a5, sp, a3
                  srai         s1, s3, 21
                  slli         s2, a1, 21
                  xori         gp, t6, -862
                  xor          a3, s2, s3
                  srli         s9, t6, 30
                  srli         tp, a2, 10
                  xori         zero, t2, -90
                  slli         a7, a5, 1
                  andi         t1, a4, -1246
                  slt          zero, s7, s2
                  lui          t2, 497785
                  slt          tp, t3, s3
                  andi         a4, s0, -1067
                  slli         a5, a0, 20
                  srl          zero, t3, t6
                  lui          a5, 458850
                  sll          t4, ra, a1
                  or           s6, t1, gp
                  xori         a5, a0, 2016
                  auipc        t4, 275054
                  slli         s5, a0, 13
                  nop
                  srl          t6, s0, s7
                  sra          s7, s4, s1
                  xor          gp, s7, t3
                  or           s0, gp, ra
                  xori         a4, s3, 566
                  slli         s3, a5, 29
                  and          a4, s4, a4
                  or           t1, a4, a3
                  andi         t1, a4, 707
                  slti         s8, s7, 1515
                  xor          zero, a1, a0
                  addi         zero, s6, -2032
                  sll          s8, s7, zero
                  nop
                  or           a2, t2, s11
                  auipc        gp, 568375
                  srli         t2, s7, 4
                  auipc        s5, 290066
                  auipc        a0, 860465
                  nop
                  sra          s3, ra, t2
                  xori         s7, s11, -1325
                  sll          t1, a5, sp
                  sra          a1, s10, gp
                  slli         a0, a2, 11
                  andi         a1, gp, -1744
                  xor          a6, s0, t1
                  andi         t5, zero, 1492
                  or           s1, gp, a3
                  xori         t1, t1, 1876
                  slli         t1, a1, 4
                  slti         s4, ra, 502
                  srli         s3, t0, 2
                  add          t2, s1, a4
                  sltu         a4, s10, a1
                  srli         s10, a4, 14
                  xori         s5, s7, -209
                  sra          a2, a2, s3
                  slt          t2, s11, tp
                  slt          s8, a2, a5
                  and          s9, a7, s2
                  xor          s4, a6, s6
                  addi         s7, s4, -309
                  slti         s0, tp, 865
                  sltiu        tp, a0, 571
                  addi         s4, t1, -953
                  or           s2, s7, s8
                  slli         ra, a2, 9
                  auipc        t5, 953780
                  and          a2, s9, ra
                  xori         t2, s2, -1787
                  sra          a5, a2, t0
                  ori          t4, s8, 1810
                  srli         s8, s5, 12
                  sltiu        s7, t6, -991
                  addi         a0, a2, 154
                  or           t3, a7, sp
                  slt          a5, t0, t6
                  ori          s10, a5, 1334
                  add          a3, s0, a2
                  sll          s3, a2, s11
                  lui          t2, 534989
                  or           s2, s0, t6
                  slli         s3, a5, 12
                  auipc        s0, 738588
                  addi         s1, t0, 631
                  andi         a4, a7, -1114
                  srli         a0, a1, 11
                  xori         s3, t0, 1191
                  ori          a1, t0, 569
                  lui          s1, 128087
                  slli         ra, a0, 19
                  andi         ra, tp, 721
                  slli         s10, t0, 22
                  nop
                  xor          t6, s8, s6
                  addi         s9, s4, -1812
                  xori         t1, s9, 498
                  slti         s6, a0, -1124
                  xori         s4, a1, -39
                  xori         s0, t0, 159
                  srl          s8, s4, a6
                  srl          zero, s8, a1
                  srli         ra, t3, 21
                  srl          a2, s9, tp
                  srai         s10, s6, 9
                  lui          a3, 794910
                  addi         t2, s0, -1209
                  srai         t1, t5, 3
                  auipc        s3, 12889
                  andi         a3, s0, -1876
                  srai         t4, ra, 2
                  sra          tp, s1, t6
                  sll          t6, s6, s4
                  slti         a4, ra, 1602
                  sltiu        a5, tp, 547
                  add          t6, s10, s5
                  sltu         tp, s5, a4
                  add          a1, s5, sp
                  slt          a5, a6, s8
                  sub          tp, s7, s3
                  and          a3, t5, s1
                  xor          s1, s8, s10
                  sltu         s1, gp, s2
                  lui          gp, 925241
                  srli         t6, s2, 13
                  xori         a1, a6, 1525
                  srai         s1, zero, 22
                  lui          s10, 574058
                  add          a3, a1, t6
                  srai         ra, sp, 23
                  nop
                  srl          t1, s3, a7
                  addi         a4, tp, 521
                  xor          s4, zero, s4
                  slti         s3, t3, 235
                  srai         t1, t3, 29
                  slt          t5, t4, t2
                  auipc        s10, 499560
                  auipc        a6, 535249
                  sltu         s3, tp, gp
                  slli         zero, s11, 1
                  sll          a6, s2, a6
                  srli         t5, t4, 9
                  ori          t1, s9, -532
                  andi         s1, tp, 954
                  ori          s8, s9, 34
                  add          t1, s7, gp
                  ori          a2, s6, -656
                  and          t6, a1, a0
                  xor          s7, t1, s4
                  addi         t2, s0, -1529
                  srai         a6, sp, 21
                  srli         s8, a0, 18
                  xor          a5, t3, s9
                  addi         a4, a3, 1314
                  sra          t6, a4, s1
                  addi         gp, t6, -1843
                  and          s4, s0, a3
                  add          a7, s5, a0
                  andi         ra, zero, 667
                  slt          s4, t0, a3
                  and          a3, ra, t5
                  sltu         s3, a7, t6
                  sub          s4, s10, gp
                  and          t2, t3, ra
                  sra          a1, t6, t3
                  and          a4, t4, s3
                  andi         s0, a2, -1934
                  slt          a2, s2, t3
                  sltiu        a7, a3, -505
                  srai         a3, s4, 11
                  add          s1, t5, a2
                  srli         zero, s9, 25
                  addi         s8, t1, 738
                  sra          s6, a7, zero
                  slli         s6, s3, 14
                  lui          s9, 707795
                  sub          gp, s7, zero
                  srai         s8, s2, 22
                  srai         s9, sp, 23
                  sub          t1, s7, t5
                  srli         t2, a4, 30
                  addi         s9, s10, -587
                  sub          t5, a6, s10
                  srli         a6, t4, 0
                  sltiu        a6, t3, 1217
                  srli         a6, ra, 28
                  slti         a5, t1, 1043
                  sll          t5, s5, s1
                  andi         a3, s7, 1906
                  srai         t3, t1, 22
                  sra          s1, s4, s3
                  addi         s1, t2, -1261
                  srai         s8, a0, 1
                  sub          a4, sp, a7
                  and          s2, t3, a6
                  srl          s8, a0, t2
                  slti         s7, s4, -819
                  sltiu        t6, a3, -1327
                  slt          t2, s7, a3
                  sub          t2, a5, s2
                  auipc        t6, 465417
                  sub          s8, t6, tp
                  nop
                  lui          s8, 126193
                  sra          s6, a5, s1
                  or           a7, a6, a4
                  ori          t3, sp, 1934
                  auipc        s4, 808097
                  ori          s8, t4, -1897
                  srai         s7, a1, 21
                  xori         tp, t4, 499
                  or           t4, s4, gp
                  andi         a2, a6, 1475
                  ori          s0, t2, -1658
                  sltiu        t1, t2, -658
                  srl          s6, t3, a7
                  xori         s3, gp, 101
                  auipc        s6, 537002
                  andi         t3, a0, 154
                  slti         s5, a3, -115
                  slt          t6, s4, t0
                  srli         s1, s8, 12
                  auipc        a1, 178844
                  ori          s2, t1, 1649
                  sltiu        s7, a5, 802
                  sll          a5, a7, s9
                  lui          a3, 781838
                  auipc        a2, 822162
                  ori          s4, s4, -1591
                  srli         a6, sp, 19
                  ori          a6, a7, -1428
                  srai         a2, s9, 0
                  nop
                  srl          s8, s7, s7
                  slt          a6, s3, sp
                  slt          a5, ra, a5
                  andi         s2, a5, -292
                  or           a5, a2, s1
                  srai         s8, t0, 7
                  sub          s4, t0, s5
                  auipc        a3, 354448
                  lui          s1, 599271
                  slti         a7, s10, -315
                  andi         s4, s11, 1110
                  sltiu        s7, zero, 1217
                  xor          s1, s3, s4
                  xor          t6, zero, t1
                  addi         s10, a3, 1397
                  ori          s3, t3, 1013
                  addi         ra, t1, 1832
                  auipc        a0, 807188
                  srai         a1, t0, 27
                  srli         a5, gp, 7
                  slt          a1, tp, t6
                  nop
                  sltiu        s1, a2, 1995
                  or           a2, a4, a7
                  addi         s8, sp, -1862
                  srl          s8, a7, t2
                  xor          s10, a5, s2
                  lui          a5, 849071
                  ori          a0, a3, -661
                  sltiu        s8, s6, 155
                  sub          s9, t4, s9
                  nop
                  or           a1, t6, t6
                  slt          t2, s4, a0
                  sll          s2, s7, a1
                  sltu         a2, s11, s10
                  srl          a0, t6, a4
                  and          ra, s6, gp
                  and          a1, a7, t2
                  addi         s8, s11, -613
                  andi         a5, zero, -635
                  slt          ra, sp, s0
                  ori          s9, t6, -742
                  sll          tp, s6, t4
                  sub          a0, sp, s9
                  slti         s9, t6, -456
                  xori         a4, s6, 1362
                  or           s2, sp, t4
                  add          s1, t1, tp
                  add          tp, sp, gp
                  xor          a0, a1, s2
                  sltiu        s10, s10, -1310
                  sra          s7, tp, t4
                  ori          s10, zero, 1357
                  nop
                  add          t2, t2, a5
                  auipc        s1, 925336
                  slli         t2, t4, 29
                  add          a0, tp, ra
                  and          a6, s4, a0
                  sll          s7, s7, s9
                  srl          a4, t5, sp
                  nop
                  nop
                  lui          a3, 839741
                  add          a3, s10, t5
                  sltiu        a5, a1, 600
                  sll          t1, s9, ra
                  andi         s7, a1, -1938
                  slt          t2, s10, s4
                  sra          s5, s10, t4
                  ori          zero, t0, -1720
                  sll          t6, t4, ra
                  xor          gp, s2, gp
                  andi         s3, a4, 1033
                  slti         a3, a1, 421
                  sra          s10, gp, a3
                  slli         a4, s2, 25
                  slt          t5, a4, s2
                  and          zero, s5, s10
                  srl          a7, a6, a6
                  nop
                  or           a2, s10, a0
                  slt          s6, t5, a6
                  auipc        a5, 993257
                  auipc        a2, 248357
                  srl          s1, t2, s0
                  ori          t2, s4, -2007
                  slli         t4, a1, 15
                  xori         zero, s4, -257
                  sltu         s10, tp, s8
                  slt          t3, s9, s10
                  sll          a0, s1, s7
                  xori         s1, a7, -523
                  slli         s7, s1, 14
                  auipc        a6, 739625
                  andi         a2, t3, 804
                  nop
                  srai         gp, t3, 20
                  srli         s8, s0, 16
                  sltiu        t2, ra, -1062
                  srli         s1, s0, 0
                  add          s10, t3, a4
                  xori         a4, t3, 1852
                  xori         s2, s9, -872
                  slli         s8, tp, 8
                  sra          s1, s8, s8
                  slli         zero, ra, 29
                  andi         t4, t6, 196
                  srl          s6, s6, t3
                  sra          s3, s5, gp
                  ori          a3, s1, -1718
                  lui          a4, 839541
                  sltiu        t3, a1, 903
                  addi         a3, s4, -1153
                  sra          s4, t5, a1
                  sltiu        gp, t3, 849
                  auipc        gp, 966343
                  and          a3, s3, s11
                  slli         s10, a5, 2
                  slt          s6, s7, s3
                  andi         t6, s4, -253
                  and          a2, a5, tp
                  xor          s6, tp, s8
                  or           a0, s6, t1
                  sltiu        a0, gp, -158
                  sltu         a0, s8, a3
                  xor          s8, s2, t5
                  sra          s7, s2, s9
                  xori         t3, s4, 1460
                  srl          s5, a7, t4
                  slti         s9, t2, 1494
                  srli         ra, a1, 7
                  xor          zero, tp, a1
                  or           zero, a7, tp
                  xor          ra, t2, s4
                  slli         zero, tp, 15
                  addi         s3, t2, -869
                  slt          a1, a5, zero
                  lui          t5, 185123
                  addi         s4, ra, 201
                  sll          s3, tp, s10
                  or           ra, s2, t2
                  sltu         s8, gp, a6
                  sltiu        a7, a5, 1462
                  auipc        s2, 725968
                  srl          gp, s4, s8
                  add          t5, t1, s6
                  slti         s8, t3, -1126
                  slli         a3, a4, 5
                  srli         ra, s3, 19
                  or           t3, t2, a0
                  nop
                  sltu         t2, t4, a5
                  srli         s4, s10, 16
                  sub          a7, t1, a4
                  nop
                  or           s10, s5, s11
                  slti         ra, s8, -306
                  and          t1, ra, s4
                  srli         a7, s2, 6
                  andi         ra, a6, -543
                  auipc        ra, 206562
                  andi         a5, a2, 1520
                  xor          t4, t1, gp
                  sltiu        s4, sp, 568
                  slt          ra, a5, t1
                  srli         s4, s8, 3
                  xori         s4, gp, -576
                  addi         t6, gp, -305
                  slt          t3, s9, a2
                  lui          s4, 95040
                  or           s1, a6, t6
                  addi         t6, s5, 793
                  auipc        s1, 510154
                  nop
                  sltiu        zero, s11, -1116
                  sltiu        a6, s8, 1684
                  xori         a1, a7, 104
                  sltiu        ra, a0, 1606
                  nop
                  srl          a7, s1, t4
                  nop
                  srai         s10, a2, 15
                  or           s7, a3, s2
                  lui          a4, 794339
                  nop
                  auipc        s3, 965465
                  slti         s3, t2, -1853
                  or           tp, a3, t2
                  andi         s7, s1, -1751
                  sltiu        a5, s5, 1641
                  slt          zero, zero, a5
                  srli         s8, a6, 27
                  xor          s2, s6, a6
                  srli         a5, s3, 12
                  nop
                  add          zero, s5, zero
                  addi         a4, gp, 381
                  or           a7, a7, t5
                  xor          s6, a4, a3
                  sll          s10, a3, s7
                  sltiu        t5, s11, -1920
                  srai         gp, t6, 18
                  andi         t6, zero, -1305
                  addi         a0, a0, -2000
                  sltu         zero, s4, t0
                  slli         s6, a2, 7
                  lui          a1, 181605
                  srl          a7, zero, sp
                  slli         a4, a4, 20
                  xor          s3, a4, a0
                  sra          a0, s4, a6
                  nop
                  sll          a1, s8, t2
                  andi         s2, s1, 1637
                  sub          t3, a5, s9
                  sll          s7, t5, s5
                  srl          t5, ra, t1
                  auipc        s4, 112501
                  srai         a4, s11, 22
                  sltiu        a6, a4, 1093
                  srl          a6, t2, s5
                  sub          gp, t5, s1
                  xori         s7, ra, -1304
                  add          s5, s2, s4
                  andi         a3, sp, -997
                  slti         s9, a6, 1523
                  auipc        s6, 11603
                  sltiu        s8, t5, -1737
                  srli         a6, sp, 24
                  lui          s3, 253984
                  or           s8, s9, gp
                  sltu         a5, a2, s5
                  sll          a1, s2, t2
                  addi         s4, s10, -51
                  srai         t2, s5, 2
                  addi         t6, s10, 1958
                  or           s7, s7, s0
                  and          a6, s1, s6
                  sub          s0, a7, t3
                  slli         a0, a6, 15
                  sub          a3, sp, s6
                  and          gp, s1, s11
                  nop
                  or           t4, a3, a4
                  slli         zero, s10, 24
                  xor          s7, s10, t5
                  srli         s7, zero, 29
                  add          ra, t6, t3
                  addi         t3, t1, -118
                  srli         s2, ra, 10
                  or           s2, a5, s9
                  srl          s4, a3, a4
                  lui          s3, 50432
                  sll          s10, a2, a7
                  and          tp, tp, a0
                  sub          t5, s2, s8
                  lui          zero, 950664
                  slli         a5, s1, 18
                  sltiu        zero, a0, 467
                  sltu         s4, s7, s8
                  addi         t6, tp, 30
                  add          a7, t4, s7
                  nop
                  nop
                  add          t6, a4, t5
                  add          s9, s5, s3
                  sltu         s6, a5, ra
                  ori          s7, a1, 1752
                  add          tp, a1, s0
                  slt          t1, t3, t5
                  add          s9, zero, s7
                  sub          t4, a6, s8
                  ori          t6, s6, -225
                  nop
                  sub          a7, s1, s7
                  addi         t2, s4, -1185
                  lui          t4, 607695
                  srl          t6, t6, t3
                  srli         s8, a5, 16
                  lui          t5, 291582
                  sltu         a0, s8, s4
                  sll          t1, a6, s1
                  srai         t3, s2, 28
                  xori         s1, gp, -398
                  srai         a5, a0, 3
                  slti         zero, s7, 2004
                  sltu         s1, t6, s6
                  addi         ra, s1, -1828
                  nop
                  slti         s10, ra, -897
                  slti         t3, s11, 1409
                  and          s4, a4, t3
                  srl          t6, gp, a2
                  lui          a2, 127029
                  sra          s3, a4, s5
                  xori         a0, a7, -1246
                  xori         tp, s2, -941
                  add          s1, s7, a6
                  nop
                  srl          s10, s2, a5
                  sltiu        a1, gp, 300
                  ori          s6, s0, -1744
                  addi         s2, t4, 1134
                  slt          s3, s7, a4
                  and          s6, t5, s8
                  sub          s4, sp, s4
                  srai         t2, s7, 14
                  xori         s1, s8, -205
                  slt          t5, s0, a7
                  xori         s1, a4, -1126
                  lui          a6, 848664
                  slt          a1, s4, s3
                  sra          s1, a3, s3
                  and          ra, s1, t1
                  slt          gp, s11, t0
                  sub          a6, t4, s6
                  xori         a5, t4, 222
                  andi         a4, t6, 1864
                  nop
                  ori          zero, gp, -327
                  xor          a7, a1, s7
                  srli         s4, t1, 29
                  ori          s2, t6, 1929
                  sra          t1, s7, s6
                  andi         zero, a2, 701
                  srl          s10, sp, a5
                  slt          s5, s0, ra
                  sltu         t1, s11, t2
                  ori          s8, s7, -770
                  and          s6, sp, s2
                  andi         s6, s4, 1424
                  xori         s8, tp, 823
                  sll          s3, s8, ra
                  slti         a4, s8, 1116
                  auipc        t3, 823586
                  add          t1, zero, s9
                  xor          s6, s1, s10
                  xori         s1, a5, 124
                  lui          s4, 9426
                  auipc        t1, 882775
                  ori          ra, t5, 786
                  addi         s10, a7, 414
                  sltu         ra, a1, a5
                  sltu         a5, ra, t2
                  xor          t5, a6, s8
                  nop
                  slli         t6, t3, 8
                  and          t5, t2, t3
                  add          s10, t5, tp
                  addi         s4, a2, -1845
                  auipc        t4, 1001032
                  srl          s3, s7, a0
                  slt          t5, a0, s7
                  sltu         gp, gp, a3
                  lui          a5, 20169
                  srl          a1, a7, a1
                  srai         s1, s3, 8
                  nop
                  sltiu        s10, s1, 1917
                  sra          s2, t6, a1
                  nop
                  lui          s1, 813006
                  srl          s5, s3, s10
                  slt          gp, a5, a1
                  sltiu        s1, a4, 1499
                  slt          s2, s11, t6
                  and          t5, a4, tp
                  add          s5, s10, zero
                  srai         a4, t3, 10
                  sub          s8, zero, s9
                  auipc        ra, 997069
                  and          t6, a3, a4
                  srai         s9, a0, 3
                  srli         a0, sp, 27
                  sltu         a1, s0, t4
                  sltiu        t3, a2, -794
                  ori          a0, a4, 1910
                  and          a2, s3, tp
                  sll          s7, s3, t4
                  ori          t5, a1, 1979
                  sll          s2, s11, s9
                  auipc        t5, 882264
                  srai         a3, s3, 15
                  slli         a5, s5, 31
                  sll          a7, a4, a3
                  sub          s3, s8, t5
                  sltiu        s8, t2, 1135
                  srai         s3, s3, 27
                  xor          s6, tp, s4
                  or           a3, a4, gp
                  auipc        a7, 890167
                  slli         a6, t1, 19
                  sltu         s8, t2, s9
                  xori         s4, s4, 116
                  slti         ra, a7, -1614
                  srl          a4, s11, s10
                  and          a3, s10, a3
                  auipc        t4, 343318
                  sltu         t2, t0, a3
                  sltu         a2, a4, t1
                  add          t3, a6, sp
                  xori         a5, s6, 472
                  xor          s6, a4, tp
                  sltu         s6, ra, s10
                  sltiu        s0, s7, -898
                  srai         s7, t4, 26
                  lui          t6, 690890
                  srli         t5, s10, 10
                  xor          s7, t3, s4
                  lui          a0, 1032415
                  or           a2, t3, t2
                  add          t5, s9, s5
                  srl          gp, t2, s7
                  sll          s0, t1, sp
                  add          a6, s1, t3
                  or           s3, a6, s2
                  xor          a2, a5, t1
                  sll          s10, zero, sp
                  ori          a3, t6, 931
                  srl          tp, s3, a5
                  sltu         s4, t4, s8
                  sltiu        t1, a0, 607
                  add          a6, t0, s10
                  sll          a1, zero, t0
                  sltiu        a6, sp, -2002
                  lui          a4, 54634
                  xori         a2, a5, 806
                  or           a0, s9, a1
                  addi         s3, a0, 129
                  sra          a5, s6, a6
                  sltu         t2, t4, gp
                  sra          s8, s0, a1
                  add          s0, s0, a5
                  slti         s8, t6, -1668
                  slli         tp, a7, 19
                  sra          a5, s2, zero
                  lui          s5, 910487
                  slt          gp, a4, a5
                  xori         s4, t0, -305
                  nop
                  xori         t6, gp, -67
                  sltu         a7, gp, t6
                  auipc        a5, 652442
                  slli         t1, tp, 10
                  ori          t1, sp, -1724
                  sltiu        t3, s8, 1671
                  sll          s5, a1, ra
                  and          tp, a0, s8
                  addi         tp, s4, -794
                  ori          gp, a7, 354
                  auipc        s0, 531780
                  slli         s8, t4, 4
                  srai         s8, a4, 14
                  slti         a6, ra, 1325
                  xori         a7, s6, 1034
                  ori          a0, a6, -1695
                  sll          a5, ra, s2
                  or           t4, t4, a4
                  andi         s9, s8, -57
                  andi         t4, a3, -1539
                  lui          s7, 350185
                  sll          a3, s7, t2
                  or           s2, a6, a1
                  slli         zero, s0, 7
                  xor          gp, s11, sp
                  xor          a4, gp, s3
                  slli         t4, ra, 5
                  or           s5, s6, s1
                  ori          ra, s7, 721
                  nop
                  sub          t2, s7, t6
                  sra          a0, a4, s4
                  sub          s1, a4, t2
                  andi         a7, a6, -586
                  ori          zero, a1, -26
                  andi         a6, a1, 201
                  or           a6, sp, a2
                  srl          t5, s11, s3
                  xori         t2, a2, 1263
                  and          a0, a5, s3
                  sub          s0, a1, a4
                  or           a7, s1, tp
                  slt          s0, t1, a7
                  sub          a4, a6, a7
                  srai         a2, a4, 15
                  srl          gp, a3, sp
                  slt          s2, s5, gp
                  lui          s3, 1044757
                  andi         s9, t4, -73
                  srli         a6, s3, 6
                  nop
                  sll          a7, a2, a1
                  srli         t2, s9, 22
                  auipc        gp, 676902
                  slt          t3, t2, s4
                  sltiu        s0, sp, 420
                  lui          s8, 739815
                  nop
                  sltu         s0, s2, s11
                  xori         s9, a2, 1267
                  addi         t5, t5, -1155
                  srl          a2, ra, zero
                  or           tp, s7, s1
                  addi         t1, t4, -644
                  srai         s2, ra, 28
                  sub          zero, a6, s8
                  addi         a2, a0, -1505
                  addi         s4, s9, 1913
                  add          s0, t3, t4
                  and          t5, s2, s0
                  sltu         s0, t2, s3
                  srl          s5, t4, a6
                  ori          gp, gp, -423
                  srl          t4, a0, t1
                  slti         t2, s11, 296
                  auipc        a5, 298354
                  srl          gp, a5, s3
                  addi         a7, tp, -987
                  sra          a3, tp, ra
                  sub          a3, s8, a1
                  andi         t4, ra, -1940
                  sll          a3, s0, t3
                  sub          t2, gp, t2
                  srai         s8, s7, 23
                  or           s9, s7, t1
                  sltiu        s3, s2, 1026
                  sub          a5, s8, t0
                  auipc        s7, 134861
                  srl          s9, a5, s0
                  addi         a2, s7, -178
                  and          t3, a3, s5
                  slti         a3, a1, 982
                  andi         a7, s2, -960
                  sub          t4, t2, a7
                  ori          a7, t2, 377
                  sltu         t5, s8, a5
                  lui          s2, 479728
                  add          a3, a4, a5
                  andi         t1, s6, -1779
                  nop
                  add          a7, a0, s11
                  slti         s8, a6, 2022
                  auipc        s3, 612082
                  slt          t5, s3, s2
                  or           t4, a5, s0
                  srai         s2, t4, 27
                  srl          s2, s7, s10
                  addi         a1, a2, 1053
                  sub          s9, a3, a3
                  addi         s3, s11, 188
                  nop
                  srl          t2, a6, s3
                  sltu         a1, s11, s3
                  ori          a6, tp, -1481
                  slli         ra, s3, 22
                  addi         s5, a5, -1268
                  slt          a6, s11, tp
                  auipc        t5, 430646
                  slt          s3, a0, s8
                  slt          a1, s10, s9
                  slli         s6, t2, 20
                  andi         t5, s7, 1419
                  xori         s1, s2, 688
                  xor          t5, t6, a1
                  sll          s9, ra, a6
                  auipc        a5, 708441
                  slli         t4, a4, 9
                  addi         t1, t2, 1418
                  or           a7, t4, s0
                  auipc        t5, 122715
                  sll          s3, a0, a2
                  sub          t1, sp, t1
                  sra          a5, s3, s10
                  ori          a4, s3, -1544
                  srli         t5, s11, 31
                  add          t5, s0, s7
                  slli         ra, t0, 21
                  srl          t3, s0, tp
                  slli         t2, t0, 18
                  srl          t3, s6, s4
                  sub          t5, s11, s3
                  srli         tp, tp, 12
                  addi         a7, s6, 42
                  sltiu        t5, t1, -48
                  sub          a2, a6, s3
                  add          s9, s1, tp
                  xor          a2, s5, a0
                  xori         a5, t2, -1858
                  sra          s1, a6, s3
                  nop
                  sltiu        s10, a0, 12
                  auipc        s3, 814835
                  xori         s6, s2, -2020
                  nop
                  lui          t5, 375122
                  andi         t2, a2, -519
                  andi         s9, a4, 1184
                  sub          t5, s3, s10
                  srli         s10, a0, 17
                  sltu         s5, a4, a4
                  sll          s8, s2, t2
                  sltiu        s2, s4, 441
                  sub          s0, a6, s4
                  slli         zero, a6, 20
                  sub          a6, s1, s10
                  sra          a0, s5, t5
                  srai         t2, a1, 19
                  lui          a5, 1028856
                  sltiu        a0, a3, 1616
                  xori         s9, s1, -1891
                  srl          t1, s4, t3
                  sltu         gp, a4, s1
                  sll          t2, a6, t5
                  sub          t3, a4, t6
                  sltiu        s2, s1, 38
                  lui          a0, 906436
                  srl          s6, t5, s11
                  srli         a5, t6, 13
                  addi         ra, ra, 484
                  slt          s9, a0, a5
                  xori         tp, t6, -1306
                  sltu         a4, a4, s9
                  addi         gp, s4, -1225
                  xori         t5, sp, 820
                  andi         a4, s11, -2036
                  srai         ra, s6, 17
                  nop
                  lui          tp, 617723
                  lui          a7, 667197
                  sub          a6, a5, s7
                  lui          ra, 389848
                  sll          s4, t3, s6
                  sltiu        a1, t3, 542
                  sra          s9, s4, zero
                  and          a6, a6, t2
                  sra          a0, t4, a6
                  xor          a6, s6, s6
                  lui          ra, 135100
                  xor          a1, t4, t2
                  lui          a6, 977215
                  ori          gp, s6, 995
                  xor          tp, t6, tp
                  auipc        a2, 774306
                  srai         t4, s10, 27
                  slli         t6, a5, 7
                  nop
                  srai         tp, gp, 21
                  ori          t5, a7, -1488
                  sll          zero, t5, a0
                  sub          t5, gp, a0
                  sra          t2, ra, s9
                  lui          a1, 5368
                  xori         s0, s9, -1871
                  andi         s1, s6, 1900
                  srli         s2, zero, 0
                  sll          a0, sp, t0
                  addi         a5, s1, -1700
                  addi         a6, a0, -668
                  sra          t1, t4, s2
                  sltu         t2, s3, t1
                  and          s5, t0, t5
                  srli         gp, s4, 4
                  slli         s1, t6, 28
                  srai         a2, t0, 24
                  sltu         s6, s9, s8
                  slli         s2, a6, 11
                  sll          t2, t4, t6
                  addi         s7, s0, 1752
                  lui          s5, 376195
                  srli         t2, a7, 7
                  slt          s9, gp, a3
                  andi         s6, s8, 1182
                  srli         s10, a5, 30
                  add          a3, s9, s3
                  srl          t6, s8, s10
                  andi         s4, gp, -1194
                  srai         gp, s4, 1
                  slti         t5, s1, 417
                  srli         t1, a5, 20
                  sra          s2, ra, s9
                  nop
                  lui          s4, 487883
                  srli         a2, t3, 6
                  slt          s0, s10, s10
                  and          s6, sp, a0
                  xor          s10, s11, a6
                  lui          s1, 325866
                  sltu         s10, a3, sp
                  sltiu        t4, a2, 2042
                  sll          s1, s0, t6
                  or           s1, a3, s8
                  addi         zero, t1, -812
                  addi         a1, s11, -1718
                  sltiu        gp, a5, -966
                  andi         s0, zero, 921
                  srl          s1, t3, s9
                  xor          ra, s3, ra
                  lui          s9, 391838
                  or           a5, t4, t0
                  xori         zero, a4, -711
                  srli         a6, s10, 25
                  sltu         s5, s4, a6
                  sltiu        t1, a7, -1332
                  auipc        s0, 736047
                  addi         gp, s1, 1085
                  slt          a2, t0, s7
                  lui          gp, 724568
                  srl          a7, gp, t4
                  slli         t2, gp, 19
                  ori          s5, a4, -994
                  or           t6, s8, s11
                  slli         zero, s8, 7
                  sll          zero, t3, s11
                  sltu         a0, gp, s8
                  srl          t6, s2, s5
                  andi         t2, t6, -2001
                  auipc        s8, 880936
                  auipc        s8, 287116
                  slti         s7, sp, 1040
                  slli         s2, t0, 18
                  slli         s0, s0, 20
                  sltiu        ra, a5, 1240
                  xori         a3, s6, -661
                  srli         tp, s0, 15
                  sltu         zero, t1, t4
                  ori          a1, a2, -598
                  auipc        s10, 373947
                  addi         a7, s10, 355
                  auipc        a7, 482235
                  xor          s0, a5, gp
                  nop
                  or           t2, sp, s11
                  sltu         s7, s1, s1
                  xori         s1, a5, -131
                  auipc        s1, 633522
                  sltu         t4, a2, s6
                  slli         a1, t2, 26
                  srl          a0, t4, a5
                  auipc        a5, 70928
                  nop
                  addi         t6, a4, 1041
                  srai         s9, s0, 3
                  and          ra, t3, zero
                  lui          a0, 883833
                  andi         t3, a0, 239
                  addi         t4, a4, 1538
                  lui          ra, 597832
                  xori         tp, t0, -200
                  sra          s0, s5, a6
                  srli         s4, a4, 30
                  nop
                  srli         s6, s11, 1
                  sltiu        s9, tp, 840
                  addi         t2, zero, -1022
                  and          s5, t0, a2
                  ori          s1, t1, -221
                  xor          gp, a7, t3
                  xor          a7, s9, a6
                  xor          a5, s11, a6
                  slli         s4, t4, 11
                  slli         a6, gp, 14
                  srl          s2, s1, a1
                  sltu         s3, a4, t6
                  auipc        t4, 635407
                  addi         gp, a5, 1511
                  srli         gp, s11, 25
                  andi         s8, s8, 625
                  slli         a2, ra, 19
                  sra          s6, s1, ra
                  auipc        a5, 689988
                  nop
                  slti         s9, s11, -1343
                  sra          s7, t1, t5
                  sra          s4, t1, t3
                  srli         s9, ra, 17
                  or           t1, sp, s10
                  sub          t6, t2, gp
                  andi         t3, s6, 766
                  andi         a6, t3, -1549
                  sltu         tp, gp, a6
                  srai         a7, tp, 6
                  xori         t5, s7, 640
                  sltu         s5, s0, t4
                  addi         t2, t4, 1258
                  lui          s4, 504354
                  slli         a2, t0, 4
                  slli         gp, gp, 9
                  sub          a6, s6, t6
                  add          s5, tp, t6
                  addi         s0, s5, -1072
                  srl          s0, gp, tp
                  auipc        s2, 364415
                  sltiu        a5, ra, 214
                  lui          s0, 454805
                  sltu         t1, s11, gp
                  sltiu        a4, a2, -86
                  srl          s1, t0, t0
                  lui          t1, 699639
                  and          t1, a1, tp
                  ori          a1, s3, -1964
                  slt          s8, a5, a7
                  lui          t6, 871680
                  sltiu        a2, t1, 1814
                  xori         t4, zero, 844
                  xori         s2, sp, 40
                  slti         s1, s8, 1027
                  slli         ra, zero, 7
                  andi         a0, t3, 1528
                  ori          s6, a2, 1025
                  srl          s7, a6, s8
                  xor          a5, a4, tp
                  sltu         s7, s3, s8
                  sra          s9, a4, tp
                  xori         s5, t5, -1714
                  sltiu        s1, a1, -744
                  sltu         t1, s2, a2
                  and          gp, zero, s3
                  sltiu        a3, s3, 1733
                  srl          s6, gp, s4
                  ori          t5, s6, -352
                  ori          a3, s3, -1683
                  nop
                  srli         s1, tp, 1
                  srai         tp, s3, 17
                  slti         s7, s7, -813
                  slli         t1, ra, 12
                  sll          t2, t0, s0
                  auipc        tp, 311530
                  srli         a3, s6, 18
                  lui          s5, 997693
                  auipc        a6, 906228
                  srai         a6, tp, 3
                  srai         s4, a4, 13
                  srli         a2, sp, 16
                  lui          t5, 848555
                  lui          tp, 186022
                  auipc        s7, 675152
                  sra          t3, s9, s4
                  srai         s5, s3, 28
                  sltu         s6, s3, a7
                  and          s4, s0, a3
                  sra          s7, s6, s3
                  sll          a7, s7, a7
                  sub          a4, sp, tp
                  add          a3, s9, a6
                  add          gp, t5, t0
                  nop
                  ori          s5, s1, -335
                  xor          s10, s9, s8
                  add          t6, a2, a4
                  slli         zero, s1, 14
                  srai         a1, s6, 30
                  sll          t1, s9, t3
                  slti         s3, s0, -1135
                  auipc        a7, 586345
                  srai         s2, s11, 19
                  andi         t1, s10, 792
                  sll          a0, s0, t0
                  add          ra, gp, t2
                  slti         s9, s2, -1923
                  lui          s4, 551823
                  xori         gp, s8, 89
                  and          s3, s5, a1
                  slli         s4, s1, 10
                  ori          a6, s5, 1887
                  slti         s3, t4, 1967
                  xori         a0, t3, -1928
                  sltiu        gp, s7, -765
                  sltu         s8, a4, s8
                  srai         t6, t4, 3
                  lui          t2, 339877
                  xor          s5, s2, ra
                  auipc        t6, 966153
                  slli         zero, s0, 20
                  auipc        a3, 567723
                  sra          s3, s0, s8
                  sltiu        s6, s0, -1430
                  xori         a7, a4, 819
                  srai         s3, t2, 30
                  andi         a3, s8, 1370
                  slli         a3, s11, 13
                  slli         a7, t2, 8
                  lui          t3, 418697
                  sltu         s0, t2, ra
                  and          s8, t3, s3
                  srli         t6, a3, 24
                  sltiu        s1, s3, 2018
                  sub          a3, s10, t2
                  sub          s8, a6, tp
                  sltu         s5, s2, t3
                  and          tp, s10, gp
                  srai         t1, t1, 9
                  slt          a7, zero, t3
                  or           t6, s8, s0
                  slt          s5, a2, a4
                  auipc        a2, 514500
                  add          s0, s3, s10
                  or           s6, s0, a7
                  sltu         s7, s0, s4
                  slt          s3, s8, t3
                  sltiu        a7, t3, 588
                  srai         zero, a7, 1
                  addi         t5, a7, 281
                  add          t5, a1, s7
                  sub          t4, a6, s11
                  sltu         a3, s10, a2
                  ori          t6, zero, 1398
                  srli         gp, a5, 1
                  and          ra, t2, a7
                  nop
                  ori          s6, a7, 172
                  andi         gp, s1, -373
                  and          s6, t3, t1
                  srli         a0, tp, 31
                  sra          t5, a5, s4
                  srli         s3, s5, 29
                  sll          t2, a2, a5
                  lui          s6, 416742
                  xori         a7, a4, -1502
                  sltiu        t3, tp, -283
                  or           s4, t0, s6
                  srai         a6, a5, 10
                  or           a4, s6, s11
                  ori          s8, s0, -1706
                  add          a6, zero, a2
                  sltiu        s1, tp, 1792
                  addi         t6, t3, -1747
                  sltiu        zero, s4, -642
                  xor          t2, t1, s8
                  xor          s8, tp, a2
                  or           zero, s0, a0
                  sub          a5, s11, a1
                  andi         s0, t5, 782
                  sra          s9, a2, t6
                  and          a2, s7, a6
                  slt          a0, s5, a1
                  srli         a1, t6, 28
                  srai         t1, a0, 21
                  ori          s4, t6, 569
                  srl          s4, s9, t2
                  srl          a2, t1, s8
                  srli         ra, a1, 7
                  srl          t5, a0, t0
                  xori         t1, s9, -484
                  sltu         s7, s11, t2
                  slti         a5, t0, -1020
                  slt          s0, a0, s2
                  ori          tp, s1, -577
                  nop
                  xori         s9, t2, -605
                  and          s8, s9, s9
                  sltu         a4, s3, sp
                  srai         t5, t5, 26
                  sll          s4, a6, tp
                  lui          t3, 818843
                  and          a4, t5, t0
                  sll          s7, tp, s10
                  add          s8, zero, ra
                  nop
                  xor          t4, a6, t0
                  srl          zero, s6, a7
                  auipc        s1, 56183
                  xori         a7, a2, 96
                  add          a7, sp, a3
                  sub          t6, tp, t3
                  lui          a0, 714880
                  sra          a1, t2, t2
                  sltiu        a1, a5, -1259
                  srl          s1, t1, a2
                  sll          t3, s11, a6
                  nop
                  nop
                  sltiu        zero, s2, 1899
                  or           t4, s1, a6
                  andi         a2, t1, 875
                  xor          a0, s11, s11
                  and          s1, s5, t2
                  sltu         ra, gp, a2
                  slt          t3, s9, gp
                  sltiu        s1, t0, -388
                  or           t5, a7, s8
                  srl          s8, t5, a3
                  xori         t5, a5, 572
                  andi         tp, a0, -1684
                  slli         s10, s4, 4
                  andi         a3, s3, 16
                  srli         t1, a0, 4
                  sra          t2, a0, t3
                  sltiu        s7, zero, 1505
                  or           s4, s11, s7
                  lui          s4, 609854
                  xori         ra, a5, 997
                  xori         t2, t4, -946
                  or           s10, s1, a5
                  auipc        a6, 82801
                  sll          s10, a7, s6
                  andi         t1, t2, 1023
                  srl          zero, t0, s11
                  srli         a0, s8, 25
                  add          t2, t6, s3
                  slli         a2, s0, 13
                  lui          a6, 435033
                  nop
                  sltu         a0, s3, s6
                  slti         a2, s0, -1538
                  srai         gp, s6, 2
                  auipc        s6, 893163
                  sltiu        t3, s2, 1423
                  add          s4, zero, s11
                  slt          s6, s4, a7
                  slli         tp, a5, 18
                  sltu         s8, t2, a5
                  sub          gp, a4, a4
                  sltu         s6, t1, t3
                  add          gp, s8, t1
                  addi         s10, a0, 259
                  sra          a6, t0, t5
                  ori          s4, t0, -1429
                  sll          zero, a3, s8
                  ori          a6, t1, 358
                  sll          s8, a6, s7
                  srl          s2, s8, t4
                  slli         t5, a2, 11
                  srli         a0, s7, 17
                  nop
                  srai         a4, zero, 28
                  sll          s4, a5, a3
                  and          gp, a1, s4
                  sltiu        s8, gp, 1196
                  srli         a7, a5, 1
                  slt          a6, t6, a3
                  and          a7, s9, s3
                  addi         a4, gp, -1724
                  sub          zero, t4, s11
                  ori          zero, s4, 244
                  sltu         s3, s4, a0
                  slt          s5, s1, tp
                  and          s3, zero, s11
                  srli         t4, s7, 25
                  xor          s4, a3, a0
                  slt          ra, s0, zero
                  lui          s1, 765517
                  xor          s9, a4, s4
                  sltiu        a2, t2, -568
                  srai         t3, t2, 6
                  sll          ra, s1, s4
                  sltu         s0, a4, s3
                  xori         s10, t6, -1890
                  slli         s1, t1, 7
                  srl          t6, s6, sp
                  ori          tp, sp, -174
                  andi         tp, s3, -1854
                  xori         s9, a0, 89
                  srai         ra, t1, 31
                  slti         t2, t4, 538
                  slli         t4, ra, 22
                  slti         s7, sp, -985
                  xori         a3, s1, 1080
                  ori          s1, a6, 1212
                  slt          s0, t1, s2
                  slt          s9, t4, ra
                  slt          s9, a7, s8
                  lui          t4, 145741
                  slti         a5, a2, -1576
                  andi         a2, s2, -1009
                  xori         tp, s6, 1181
                  ori          ra, s10, -137
                  srli         zero, zero, 24
                  lui          s7, 340600
                  nop
                  srli         t6, tp, 16
                  andi         a7, s0, -1680
                  and          zero, zero, s7
                  sub          s3, t3, s10
                  auipc        s2, 871428
                  sra          s10, ra, s6
                  xor          s10, a5, s11
                  slti         t1, s8, 1919
                  ori          a7, t4, -808
                  sra          tp, ra, sp
                  srai         a5, t6, 18
                  srli         zero, t0, 18
                  slt          s9, t2, ra
                  addi         ra, tp, -294
                  slt          s8, a1, t4
                  xori         s5, s2, 422
                  slli         a7, a1, 8
                  sub          t6, s6, t2
                  slli         s3, t3, 5
                  slli         a7, s7, 22
                  ori          a2, s5, 30
                  srai         s8, t5, 26
                  slt          t1, s6, a5
                  sltu         a3, a1, s11
                  sub          a6, a6, ra
                  sltiu        s4, s11, 1402
                  ori          a4, s4, -277
                  or           a1, a1, zero
                  andi         s4, s10, -307
                  sra          a4, a1, s3
                  ori          a3, t4, 412
                  sll          s3, zero, sp
                  xor          s9, s9, a6
                  auipc        s1, 156516
                  ori          t3, t0, 572
                  ori          t3, t2, 712
                  sll          t6, s0, t0
                  srli         s0, s4, 1
                  xor          t4, s11, ra
                  sub          a3, a5, t5
                  sltu         gp, s9, t0
                  andi         a7, s0, -2045
                  ori          s1, gp, 1994
                  slt          t1, a5, ra
                  sltu         t6, t2, s11
                  xori         a2, a0, -399
                  lui          tp, 505029
                  xor          s7, t1, s8
                  nop
                  lui          s1, 919705
                  add          s7, a7, t1
                  add          a5, s1, s9
                  addi         s2, s4, -1737
                  xori         a4, a3, -757
                  add          zero, s1, a1
                  and          t1, a7, t1
                  xori         a1, s8, -825
                  ori          a7, t6, 717
                  and          a5, s8, gp
                  xor          a4, s7, s1
                  srl          a6, a4, s6
                  add          tp, ra, s5
                  slti         a4, t2, 249
                  nop
                  andi         s1, zero, 1064
                  srli         s4, s0, 1
                  xori         tp, t5, 969
                  sra          a5, a3, s6
                  and          s7, s9, t6
                  slti         t2, sp, 1501
                  slti         s8, t0, -284
                  ori          s5, t4, -1715
                  lui          zero, 958310
                  nop
                  sltiu        gp, a1, 1778
                  sub          a3, s3, a7
                  srl          a2, zero, gp
                  sltiu        t3, a5, 988
                  nop
                  sltiu        s1, a0, -508
                  srai         a0, t1, 5
                  sra          s7, ra, tp
                  sltiu        zero, s1, -1804
                  slt          t6, a6, s11
                  and          a3, s1, s5
                  lui          t4, 435150
                  srl          tp, a7, t5
                  ori          s6, t1, -815
                  sltu         t5, a5, a3
                  sra          t2, zero, s2
                  sub          s8, s9, s11
                  auipc        t2, 885549
                  xor          a1, s6, t3
                  add          s9, t5, s6
                  lui          a6, 1017459
                  nop
                  andi         t3, s10, -1138
                  slli         s1, t3, 4
                  auipc        t6, 1024224
                  auipc        gp, 1004341
                  nop
                  srai         gp, t3, 0
                  sra          s8, s0, a6
                  add          s4, t4, t2
                  sll          t1, a6, a1
                  srl          t4, s4, zero
                  sra          s6, s11, s3
                  nop
                  sll          t4, s10, tp
                  lui          s10, 356445
                  addi         s6, s5, 738
                  lui          gp, 866223
                  or           a1, a7, s10
                  or           s3, s3, s9
                  lui          ra, 841859
                  sltu         a7, s8, s6
                  or           a2, gp, s6
                  or           s3, s4, a1
                  slli         a7, zero, 13
                  addi         a3, a7, 2036
                  sltiu        s0, a3, 1590
                  sltiu        gp, s0, -1371
                  slti         s0, t1, 1313
                  sltiu        a3, a6, 1034
                  ori          t6, a1, 333
                  srai         s7, sp, 20
                  sra          s7, s0, zero
                  sub          s1, a6, s8
                  and          ra, s2, s5
                  sll          zero, a4, s10
                  andi         t6, a5, 1745
                  sltiu        s7, s5, -1821
                  sltiu        t5, t3, 350
                  srai         zero, t5, 1
                  srl          a2, gp, zero
                  srai         a5, a4, 31
                  sll          s0, s7, s3
                  srai         a0, s10, 12
                  lui          t6, 833747
                  srli         a0, s0, 0
                  ori          t3, s8, 545
                  sltu         t1, ra, zero
                  ori          s0, t6, 966
                  srl          t5, a5, t2
                  sll          a2, a1, s3
                  srli         s8, s10, 22
                  andi         s6, s11, -140
                  srai         s6, s9, 10
                  srl          zero, a1, s7
                  add          s0, gp, s8
                  xori         a2, a7, -1039
                  srli         a4, s9, 27
                  slt          a3, t5, s6
                  sltu         ra, s0, a1
                  nop
                  xor          s0, a6, t2
                  and          a1, s10, a3
                  sra          a5, s7, zero
                  lui          a7, 108686
                  sll          t6, t1, ra
                  srli         s6, t6, 16
                  xor          s0, t1, s7
                  xor          a0, a3, t5
                  nop
                  ori          s9, s1, 1795
                  slli         s2, s8, 11
                  nop
                  andi         t3, s8, 454
                  lui          s2, 243747
                  srl          s7, s5, t3
                  addi         t6, s0, -879
                  sltiu        s3, s5, 384
                  ori          a4, s6, -1818
                  and          a7, s2, s3
                  nop
                  ori          a1, t0, -492
                  or           t4, gp, s9
                  srai         s8, a3, 25
                  srli         ra, s7, 9
                  sltu         zero, t5, t5
                  srai         t6, t2, 26
                  auipc        ra, 304477
                  nop
                  srl          t2, a7, sp
                  nop
                  sltiu        s5, t1, -1237
                  sra          t1, a1, a0
                  srl          s1, t1, s4
                  ori          a6, sp, -2021
                  ori          t6, t3, 2005
                  add          t6, t1, zero
                  sltiu        a0, ra, 1057
                  lui          t4, 488346
                  srai         s4, s6, 25
                  auipc        s3, 98546
                  slt          s0, sp, a5
                  andi         s5, t5, 749
                  sltiu        t3, s5, 1077
                  add          s9, a5, t1
                  slt          a6, s1, zero
                  slli         a7, s8, 30
                  and          t3, tp, s0
                  xor          s6, tp, a7
                  andi         a7, t3, -198
                  sra          a3, gp, a5
                  sll          a4, s8, sp
                  xor          s7, s7, s9
                  auipc        s3, 977743
                  andi         t5, a7, 555
                  addi         a5, ra, 1649
                  xori         s7, sp, -1850
                  addi         t5, s6, -1084
                  and          s5, t4, s7
                  srai         s10, gp, 16
                  nop
                  slli         a2, t5, 15
                  srli         s6, a7, 11
                  xori         s7, gp, 99
                  sra          s1, a3, gp
                  sra          t4, s6, a5
                  slti         t6, sp, 508
                  ori          s1, t1, 1150
                  sltu         s5, t3, a3
                  and          t6, tp, s3
                  slt          a5, t4, zero
                  ori          a3, t0, 2039
                  or           a5, ra, a0
                  sll          s7, a2, s6
                  xori         s5, a5, 260
                  sll          s5, s7, t6
                  auipc        gp, 506550
                  slt          a4, a4, gp
                  slt          t2, gp, a5
                  slli         s6, t1, 7
                  slt          a6, tp, t6
                  xor          t2, s11, t4
                  sltu         s9, sp, s11
                  slt          tp, a7, s2
                  slti         s2, s8, -1118
                  and          t3, a4, s7
                  srli         a4, s2, 17
                  slti         zero, s2, -1428
                  sll          s5, sp, t6
                  srl          s5, t1, sp
                  xori         t3, s10, 1532
                  sltu         t2, gp, s9
                  or           zero, s3, s1
                  sll          t6, s10, t6
                  sltiu        a2, s9, -1771
                  slti         zero, a0, -1497
                  andi         a1, a3, -1285
                  add          s9, a2, s9
                  srai         t2, a2, 30
                  lui          a1, 78622
                  ori          t4, ra, -533
                  sll          t4, s0, s3
                  add          s5, t4, s6
                  srai         gp, a4, 24
                  or           t4, gp, a5
                  sltiu        ra, s1, -1516
                  sub          t2, a1, a2
                  and          ra, s1, s7
                  sra          s0, s6, t3
                  sra          t2, tp, s10
                  add          a0, s2, t4
                  or           zero, a4, s9
                  slti         s6, s11, 2001
                  addi         s2, s0, -1281
                  srai         s6, zero, 5
                  sll          s4, t6, t5
                  srl          t1, s6, s10
                  sub          s8, s8, s4
                  andi         s9, a3, 857
                  slti         t4, s10, -1804
                  andi         s10, t1, -1502
                  srai         tp, a3, 1
                  or           a6, t1, s6
                  srli         a4, gp, 12
                  sub          s9, a5, ra
                  or           gp, a3, t2
                  nop
                  li           a5, 0x4c2e122d #start riscv_int_numeric_corner_stream_3
                  li           t3, 0x0
                  li           t6, 0x80000000
                  li           a6, 0x6562652c
                  li           t1, 0x80000000
                  li           s8, 0xffffffff
                  li           a1, 0x0
                  li           s1, 0x0
                  li           s2, 0x0
                  li           gp, 0x0
                  lui          a1, 181609
                  nop
                  sub          s8, gp, t6
                  nop
                  nop
                  add          a6, t1, s2
                  lui          s8, 329926
                  addi         t3, t6, 128
                  addi         s2, a1, -236
                  lui          t3, 610560
                  auipc        s8, 680690
                  auipc        t3, 691999
                  sub          s1, t3, a6
                  auipc        a5, 248964
                  nop
                  auipc        s8, 544263
                  add          s2, s2, t1
                  sub          s8, s2, a1
                  sub          s2, a1, s2
                  sub          t6, a5, a5
                  nop
                  lui          t6, 264633
                  nop #end riscv_int_numeric_corner_stream_3
                  sltiu        a1, a1, 1982
                  slt          a6, s3, a7
                  xor          s7, a5, a5
                  andi         a3, t4, -859
                  xori         a7, s5, -486
                  sub          ra, s4, a5
                  slti         a4, s3, -124
                  lui          a1, 547765
                  sll          zero, s11, a5
                  addi         t5, s1, -194
                  srl          s4, zero, a2
                  sub          s3, zero, zero
                  auipc        s3, 765740
                  sltu         t4, s9, sp
                  srai         t2, s11, 8
                  slti         a5, t5, 1611
                  xor          t3, s11, t5
                  sub          a6, s0, s5
                  sub          s9, a5, s3
                  or           s10, a4, a2
                  xor          s9, s0, a1
                  ori          s5, t3, -1846
                  sltu         gp, s6, t4
                  slli         s4, tp, 28
                  andi         t2, zero, 1817
                  sll          a7, t1, s4
                  sub          s6, s0, s1
                  slli         s7, t1, 5
                  andi         a2, a1, 1970
                  xor          a2, s10, t5
                  srli         s3, t6, 25
                  or           t6, tp, s6
                  slt          t6, tp, a0
                  xor          a2, ra, gp
                  sltu         a6, s6, s8
                  slti         s5, a1, -1055
                  slti         a3, s6, -1664
                  or           t2, s11, a5
                  slti         s9, s7, -2021
                  sub          ra, s5, s10
                  or           s2, a4, s9
                  sltiu        s4, s3, -313
                  sll          t4, a2, a2
                  srli         s9, t4, 21
                  slli         s6, t0, 22
                  slt          t6, s1, gp
                  xori         s6, s0, -166
                  add          a0, s9, s5
                  slt          s1, s9, t6
                  lui          s8, 710823
                  sub          t4, s0, a6
                  and          s2, gp, s4
                  and          s7, s0, t2
                  xori         s7, s7, -1639
                  sltu         ra, s7, s2
                  add          t2, s1, s7
                  andi         s6, s2, -1856
                  andi         a3, s2, 1442
                  slt          t1, gp, tp
                  sltu         a5, a0, a4
                  slti         t6, s1, 873
                  sll          t5, s5, s8
                  sll          a5, a6, a7
                  and          a6, s6, t4
                  xori         a5, t0, 997
                  srli         a1, s10, 0
                  ori          s6, t3, 254
                  sll          ra, a3, s5
                  and          s8, s8, a7
                  sll          zero, s9, gp
                  srli         s9, gp, 18
                  sltu         a3, s4, a4
                  sub          s2, tp, s11
                  xori         a0, a2, -1516
                  srli         a0, s8, 0
                  srai         s2, zero, 24
                  slli         a6, a3, 29
                  slli         zero, s6, 31
                  sltu         t5, a2, a1
                  and          s9, s10, a2
                  add          t6, t6, t5
                  srl          s3, t6, s7
                  xor          s8, t4, a7
                  lui          s3, 137070
                  sltiu        s4, s6, 1138
                  xor          t6, s1, s5
                  srli         s0, s3, 24
                  or           a7, s11, ra
                  slli         t5, a2, 31
                  and          a7, tp, s5
                  addi         gp, zero, 1288
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           s2, 0x0
                  li           a1, 0x80000000
                  li           a0, 0x51586221
                  li           t4, 0xffffffff
                  li           s5, 0xffffffff
                  li           a4, 0xb3e8b490
                  li           t1, 0x0
                  li           t6, 0x80000000
                  li           ra, 0x80000000
                  sub          a1, t6, t1
                  add          a1, s2, t4
                  lui          s9, 530305
                  sub          t1, t4, a0
                  lui          t4, 315876
                  addi         s5, a4, 698
                  nop
                  sub          s5, a1, t6
                  sub          ra, a1, a0
                  sub          ra, t1, t1
                  nop
                  nop
                  sub          t4, t4, a4
                  addi         s9, a4, -686
                  add          a4, s5, t4
                  lui          s2, 607062
                  sub          t1, t4, a1
                  addi         t4, a4, -912
                  sub          a4, s5, t1
                  auipc        a0, 516877
                  auipc        t4, 384734
                  add          s5, t4, s9
                  addi         a1, s9, 1958
                  nop #end riscv_int_numeric_corner_stream_7
                  or           s3, a2, a4
                  and          a2, s10, t0
                  srli         zero, zero, 3
                  xori         t3, s1, -1024
                  sltu         s1, s5, zero
                  andi         s7, s6, -516
                  nop
                  add          a2, s0, t3
                  sub          s6, s8, s2
                  sltiu        s6, t0, 1940
                  add          s2, t4, s10
                  slti         s3, a7, -1670
                  sll          s4, t6, s10
                  auipc        a4, 314104
                  slt          a0, gp, t0
                  slt          t2, a3, s8
                  slti         t6, s5, 654
                  xor          a5, s0, t2
                  srl          gp, a3, s3
                  sltu         a7, s8, ra
                  sra          s5, t6, s0
                  and          s2, t5, t5
                  andi         s7, s9, 627
                  andi         t6, t6, -1482
                  slli         a6, t2, 29
                  or           a3, t0, t5
                  lui          s2, 1006073
                  srli         s8, sp, 25
                  nop
                  andi         s9, a6, 729
                  sltiu        s10, a2, -337
                  add          a6, s5, s3
                  auipc        ra, 776465
                  ori          t3, s4, -530
                  slt          t1, s1, t3
                  add          s0, ra, t5
                  sltu         t2, t3, tp
                  srl          a1, s8, s3
                  srai         s5, s1, 24
                  auipc        s8, 1018007
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s9, 0xffffffff
                  li           s10, 0x80000000
                  li           ra, 0x0
                  li           s3, 0xffffffff
                  li           a1, 0x0
                  li           s1, 0x6235dbe7
                  li           a2, 0xffffffff
                  li           gp, 0x0
                  li           t5, 0x64e5d3e9
                  sub          t5, t5, t6
                  lui          s1, 142309
                  lui          s10, 93495
                  lui          a2, 220566
                  auipc        ra, 568326
                  nop
                  sub          a1, gp, t5
                  addi         a2, t6, 1855
                  nop
                  auipc        ra, 881730
                  auipc        s10, 385731
                  auipc        s10, 1025196
                  nop
                  auipc        a1, 626325
                  sub          t5, s3, gp
                  add          ra, a1, ra
                  auipc        gp, 545639
                  auipc        t6, 422040
                  addi         ra, s1, 1240
                  add          a1, gp, ra
                  addi         s9, ra, 1383
                  nop
                  addi         s9, ra, 948
                  add          ra, s3, s10
                  add          s10, a1, t6
                  add          s1, s10, s3
                  add          t6, t6, gp
                  lui          t6, 695636
                  sub          ra, s1, gp
                  lui          gp, 1009381 #end riscv_int_numeric_corner_stream_11
                  sltiu        s5, a1, -1357
                  nop
                  srl          s0, a7, a6
                  addi         a4, a2, -354
                  ori          s9, t1, -958
                  sltu         zero, a4, tp
                  srai         t4, t3, 11
                  slti         a6, s1, 483
                  lui          ra, 959675
                  srai         s0, a7, 8
                  xor          a3, a7, t2
                  srli         s4, s11, 19
                  srai         s0, s1, 5
                  ori          a2, t6, -868
                  or           a3, t2, s5
                  slt          t5, s4, s11
                  srl          zero, a0, tp
                  nop
                  sub          s3, s10, gp
                  xori         a5, a6, -759
                  srl          a2, t1, s2
                  nop
                  lui          a4, 577455
                  sra          zero, tp, a1
                  xor          s6, a6, t4
                  sltiu        s1, t5, 992
                  add          t5, a3, t4
                  nop
                  add          s2, s11, a0
                  andi         ra, s8, -1161
                  slli         s9, s7, 0
                  auipc        a2, 651654
                  andi         gp, t1, 1196
                  auipc        a4, 29916
                  add          s8, sp, a4
                  srli         s5, s5, 0
                  slli         t3, t1, 28
                  sra          s0, s3, gp
                  xori         tp, a6, -832
                  xori         s0, s4, 882
                  slt          tp, s10, s6
                  sll          gp, s8, a1
                  slli         t1, s7, 25
                  and          a0, tp, s2
                  xori         t5, tp, 2039
                  sltu         a3, a7, t4
                  lui          a6, 951405
                  sub          s7, t2, ra
                  or           a3, s9, a0
                  slti         a3, s4, 886
                  sltiu        s6, t3, 1938
                  xor          t3, s9, s7
                  nop
                  sra          a5, sp, s2
                  ori          a2, s11, 1656
                  nop
                  xori         a1, a4, 630
                  auipc        a2, 1003383
                  sub          s0, t3, t4
                  sub          t2, t0, zero
                  sra          ra, t3, a7
                  srli         s5, a1, 23
                  add          t2, a5, s9
                  addi         t1, s8, 976
                  and          s1, a1, t4
                  ori          s1, t5, 1334
                  andi         a1, s2, 903
                  nop
                  slli         s1, a0, 20
                  ori          a1, a7, -1089
                  slli         ra, t5, 24
                  and          a3, t6, t4
                  andi         tp, s2, -879
                  add          a0, s4, gp
                  lui          t6, 687668
                  srli         tp, s8, 31
                  slt          s9, s5, t3
                  srai         t5, t2, 29
                  sll          gp, t4, tp
                  slt          a4, s3, s1
                  sltiu        t3, t5, 1000
                  sll          a0, t2, s11
                  andi         a0, zero, -1021
                  sltu         s0, a4, t5
                  slt          t6, s3, a2
                  ori          t2, s5, -1213
                  andi         s4, s0, 627
                  srai         s10, zero, 29
                  sra          s6, s4, t6
                  sll          ra, gp, t4
                  andi         t4, a4, -953
                  slti         t6, t6, 1987
                  slti         a2, sp, -1730
                  sll          s4, ra, a5
                  slti         a2, a7, -1077
                  sll          s3, s10, s6
                  ori          t4, s7, 1472
                  xor          s4, zero, zero
                  or           s8, s9, s11
                  sltiu        s1, s11, -873
                  slli         a1, sp, 8
                  sra          s6, t6, ra
                  or           a6, s3, ra
                  sll          a0, s9, a1
                  slt          a0, s0, t5
                  srl          gp, t1, a1
                  ori          s8, t5, -1974
                  nop
                  ori          a7, s3, 586
                  or           s9, a2, gp
                  xori         t3, a6, -1838
                  add          t6, s10, zero
                  andi         s6, a7, 1460
                  andi         t6, s9, 1590
                  slt          s1, t2, s11
                  srl          s2, t3, a7
                  sub          t3, tp, t3
                  lui          s6, 582079
                  or           s8, a2, ra
                  xor          t2, s5, zero
                  auipc        t5, 901017
                  add          s10, ra, zero
                  sub          a5, a2, s2
                  sltiu        a5, t2, 1663
                  or           gp, a5, tp
                  andi         s7, s3, -1461
                  add          a7, t6, t3
                  and          s9, t2, t3
                  and          s4, t2, s6
                  ori          a0, t0, 1671
                  sltiu        s9, s2, -159
                  ori          s4, a3, -1737
                  srli         a6, a0, 29
                  slli         t1, t5, 10
                  sub          s4, a6, a4
                  addi         zero, tp, 1524
                  srli         t5, t0, 3
                  add          a2, t6, zero
                  sltiu        zero, t6, 1418
                  add          ra, sp, t3
                  srai         a7, s4, 27
                  addi         s6, s5, -1981
                  andi         a0, a5, 1513
                  srl          s6, a4, gp
                  ori          a5, a0, -183
                  srai         tp, zero, 30
                  lui          s4, 463409
                  add          zero, t3, t2
                  sltu         t5, a1, s5
                  li           t3, 0xe64a5454 #start riscv_int_numeric_corner_stream_2
                  li           s8, 0xffffffff
                  li           t2, 0x3cd4af0e
                  li           a3, 0xd5feddf4
                  li           t1, 0x8099fea
                  li           a0, 0x80000000
                  li           s6, 0x2c74a333
                  li           s7, 0xffffffff
                  li           s3, 0xffffffff
                  li           s10, 0x0
                  lui          s8, 157661
                  sub          s10, a0, s6
                  auipc        t1, 62293
                  sub          t3, s8, t2
                  sub          s7, t2, t1
                  auipc        t3, 234974
                  nop
                  sub          s10, t3, t2
                  auipc        t3, 506799
                  auipc        s7, 887473
                  nop
                  nop
                  lui          t1, 973718
                  auipc        a3, 777122
                  lui          s10, 908908
                  addi         t1, s6, 800
                  auipc        t1, 436187
                  auipc        t2, 331386
                  addi         s3, a0, 211
                  addi         a0, t3, 391
                  auipc        s7, 534007
                  lui          s7, 202237
                  sub          s6, a3, a0
                  add          s3, t1, a0
                  nop
                  nop #end riscv_int_numeric_corner_stream_2
                  ori          s9, s0, 350
                  xori         a6, t2, 1865
                  nop
                  andi         t2, a4, -1179
                  or           a4, s8, s11
                  la x27, test_done
                  jalr x0, x27, 0
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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_2:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_3:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_4:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_5:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_6:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_7:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_8:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_9:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_10:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_11:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_12:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_13:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_14:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_15:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x5, x2, zero
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x18, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x18, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x18, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x18, x8, ecall_handler
                  li x8, 0x1
                  beq x18, x8, instr_fault_handler
                  li x8, 0x5
                  beq x18, x8, load_fault_handler
                  li x8, 0x7
                  beq x18, x8, store_fault_handler
                  li x8, 0xc
                  beq x18, x8, pt_fault_handler
                  li x8, 0xd
                  beq x18, x8, pt_fault_handler
                  li x8, 0xf
                  beq x18, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

ecall_handler:    
                  la x18, _start
                  sw x0, 0(x18)
                  sw x1, 4(x18)
                  sw x2, 8(x18)
                  sw x3, 12(x18)
                  sw x4, 16(x18)
                  sw x5, 20(x18)
                  sw x6, 24(x18)
                  sw x7, 28(x18)
                  sw x8, 32(x18)
                  sw x9, 36(x18)
                  sw x10, 40(x18)
                  sw x11, 44(x18)
                  sw x12, 48(x18)
                  sw x13, 52(x18)
                  sw x14, 56(x18)
                  sw x15, 60(x18)
                  sw x16, 64(x18)
                  sw x17, 68(x18)
                  sw x18, 72(x18)
                  sw x19, 76(x18)
                  sw x20, 80(x18)
                  sw x21, 84(x18)
                  sw x22, 88(x18)
                  sw x23, 92(x18)
                  sw x24, 96(x18)
                  sw x25, 100(x18)
                  sw x26, 104(x18)
                  sw x27, 108(x18)
                  sw x28, 112(x18)
                  sw x29, 116(x18)
                  sw x30, 120(x18)
                  sw x31, 124(x18)
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x2, x5, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

load_fault_handler:
                  add x2, x5, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

store_fault_handler:
                  add x2, x5, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

ebreak_handler:   
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x2, x5, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

illegal_instr_handler:
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x2, x5, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x2, x5, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
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
