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
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 0
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
                  li x0, 0x7c0b72ba
                  li x1, 0xd
                  li x2, 0x0
                  li x3, 0x1
                  li x4, 0xf242657d
                  li x5, 0x5831a5bd
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0xea890e2f
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0xfc8c5955
                  li x15, 0x0
                  li x16, 0xfb8f1c8b
                  li x17, 0x0
                  li x18, 0xf3890de2
                  li x19, 0xb4f6d1ca
                  li x20, 0x0
                  li x21, 0xf831a3b4
                  li x22, 0xd
                  li x23, 0x547c65cd
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x80000000
                  li x28, 0xffc44637
                  li x29, 0x4dfa171e
                  li x30, 0xfd7a052e
                  li x31, 0xf
                  la x14, user_stack_end
main:             li           s6, 0xcfbc696 #start riscv_int_numeric_corner_stream_9
                  li           t4, 0x0
                  li           s7, 0xa9b9e611
                  li           s8, 0x80000000
                  li           a3, 0x80000000
                  li           a6, 0x0
                  li           t5, 0x85f2cb84
                  li           gp, 0xffffffff
                  li           t3, 0xfca794e6
                  li           t1, 0xffffffff
                  auipc        t5, 503973
                  sub          a3, s6, t3
                  sub          t5, t1, s6
                  addi         t3, t1, -555
                  auipc        t1, 654819
                  lui          t5, 374917
                  add          s6, t3, gp
                  addi         gp, s7, 421
                  sub          a6, s7, s6
                  nop
                  add          s6, gp, gp
                  nop
                  sub          a6, t5, s6
                  sub          t1, gp, t4
                  auipc        t3, 468712
                  sub          s7, t5, a3
                  sub          t5, t1, a3
                  addi         s7, gp, -1825
                  nop
                  auipc        a6, 346280
                  addi         t1, t3, -923 #end riscv_int_numeric_corner_stream_9
                  li           s4, 0x1f5ecbe2 #start riscv_int_numeric_corner_stream_4
                  li           a3, 0xcdd8113b
                  li           s9, 0x0
                  li           t4, 0x21b45c2c
                  li           t5, 0x5e2e2765
                  li           a6, 0x80000000
                  li           s6, 0xffffffff
                  li           t2, 0x910b7152
                  li           ra, 0x0
                  li           t0, 0x3b540e30
                  lui          t0, 106834
                  add          t5, t2, t5
                  nop
                  lui          s4, 1028173
                  sub          t2, t0, t0
                  auipc        t5, 1015883
                  nop
                  nop
                  addi         t5, s9, -351
                  addi         a3, t0, -598
                  auipc        s9, 332440
                  sub          a3, t0, s9
                  sub          a6, t4, t5
                  nop
                  add          t2, ra, a6
                  auipc        t0, 751964
                  addi         a6, t5, -1408
                  add          s6, s6, ra
                  nop
                  sub          ra, t5, s6
                  addi         t5, a3, -1570
                  sub          t2, t0, t5
                  auipc        s9, 935826
                  add          t2, a6, a6
                  addi         s9, s6, -731
                  auipc        t4, 330128
                  sub          s6, t5, s4
                  auipc        t2, 335942
                  sub          a6, t2, t2
                  addi         s6, t2, 990 #end riscv_int_numeric_corner_stream_4
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           t0, 0x80000000
                  li           a1, 0xffffffff
                  li           gp, 0x80000000
                  li           s5, 0xcc1cf9f9
                  li           sp, 0x80000000
                  li           s7, 0x80000000
                  li           t2, 0xffffffff
                  li           s1, 0x0
                  li           s10, 0x80efe0bd
                  addi         s1, s7, -1807
                  nop
                  addi         s7, t3, 1355
                  addi         t3, s1, 1894
                  nop
                  add          sp, s1, t0
                  nop
                  lui          s1, 878905
                  lui          t2, 53392
                  auipc        t0, 359758
                  addi         gp, s10, -300
                  sub          s7, a1, s1
                  sub          sp, s5, s10
                  auipc        sp, 1023890
                  add          s1, t3, t0
                  lui          s5, 638043
                  lui          s7, 383644
                  sub          s10, t2, t2
                  sub          s10, t3, t3 #end riscv_int_numeric_corner_stream_0
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           s8, 0xd34e9883
                  li           a6, 0xffffffff
                  li           a0, 0x80000000
                  li           s2, 0x0
                  li           ra, 0xffffffff
                  li           s3, 0x23dfe5bb
                  li           s6, 0x80000000
                  li           t6, 0x80000000
                  li           sp, 0x0
                  sub          sp, sp, t6
                  addi         s6, a6, -992
                  add          a2, a2, s8
                  addi         s6, ra, 736
                  addi         sp, a2, -1855
                  sub          s2, sp, s6
                  nop
                  add          a0, sp, s3
                  lui          a0, 835438
                  lui          a6, 48379
                  sub          a2, a6, t6
                  lui          ra, 796835
                  addi         a0, a0, 931
                  lui          s8, 1005445
                  add          t6, sp, s6
                  addi         s8, ra, 370
                  add          s3, ra, s2
                  addi         s2, sp, -1918
                  sub          s2, ra, sp
                  auipc        ra, 901721
                  sub          s3, a0, s6
                  add          ra, ra, sp
                  lui          a6, 205836
                  sub          a0, ra, a6
                  lui          s8, 372380
                  lui          sp, 39107
                  sub          a0, s2, t6
                  add          sp, s2, t6 #end riscv_int_numeric_corner_stream_12
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s6, 0xdc14adc9
                  li           t0, 0x80000000
                  li           t1, 0x80000000
                  li           tp, 0x80000000
                  li           s9, 0xd3cf881f
                  li           t3, 0x0
                  li           a3, 0xffffffff
                  li           a1, 0x9845f2d5
                  li           s8, 0xffffffff
                  add          t3, s8, t3
                  add          a3, a1, t3
                  auipc        a6, 830983
                  auipc        a6, 737167
                  add          t1, tp, a1
                  addi         t3, a6, -809
                  sub          a3, a1, a1
                  nop
                  add          t0, a6, s9
                  addi         t1, t0, 1304
                  sub          a1, a1, t3
                  add          a6, a3, s6
                  auipc        t1, 212146
                  sub          s8, s8, a1
                  sub          s8, s8, t1
                  lui          a3, 91142
                  lui          t1, 403903
                  addi         a6, s8, -2026
                  sub          t0, tp, tp
                  nop
                  lui          t0, 935532
                  nop #end riscv_int_numeric_corner_stream_10
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           a0, 0x0
                  li           sp, 0x0
                  li           t6, 0x80000000
                  li           s4, 0x80000000
                  li           s5, 0x0
                  li           gp, 0x0
                  li           t3, 0x80000000
                  li           s9, 0x80000000
                  li           s10, 0xffffffff
                  nop
                  auipc        t6, 288273
                  nop
                  addi         sp, s5, 952
                  nop
                  add          t6, s4, s4
                  lui          sp, 447698
                  addi         s5, s4, -1748
                  addi         t3, s9, -1705
                  addi         t3, s4, -576
                  add          sp, s5, t6
                  nop
                  addi         s10, s10, -630
                  add          t3, sp, t3
                  sub          s4, gp, s5
                  nop
                  sub          s9, s4, a6
                  add          s9, t3, s4
                  sub          s9, gp, t3
                  addi         s9, s10, -1749
                  nop
                  lui          s5, 600223
                  nop
                  lui          s10, 358576
                  auipc        s4, 475655 #end riscv_int_numeric_corner_stream_17
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s10, 0x80000000
                  li           t1, 0xc347b5db
                  li           a7, 0x3ba03a8f
                  li           sp, 0xffffffff
                  li           a1, 0xffffffff
                  li           s9, 0x0
                  li           s7, 0xffffffff
                  li           s6, 0x80000000
                  li           t5, 0x80000000
                  nop
                  nop
                  lui          a1, 808269
                  lui          s10, 744577
                  sub          s7, t1, t1
                  nop
                  sub          a7, a1, sp
                  sub          t3, a1, sp
                  nop
                  sub          a7, t1, a7
                  lui          s7, 192811
                  sub          t3, t5, t5
                  auipc        a7, 390348
                  lui          t1, 897862
                  add          t5, s9, t1
                  nop
                  auipc        sp, 39655
                  add          sp, s10, t5
                  nop
                  sub          t3, s6, sp
                  sub          sp, a7, s10 #end riscv_int_numeric_corner_stream_18
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           a3, 0x80000000
                  li           t4, 0xc890fe32
                  li           a1, 0xffffffff
                  li           t0, 0x0
                  li           s6, 0x0
                  li           s9, 0xffffffff
                  li           t2, 0x61fdc5bb
                  li           gp, 0x0
                  li           t1, 0xffffffff
                  sub          t2, t2, gp
                  sub          s6, t2, t1
                  lui          a3, 726893
                  sub          a3, t0, t4
                  lui          s6, 204217
                  add          a3, t2, t1
                  addi         gp, s9, 503
                  sub          t1, t2, s6
                  sub          s10, a1, t0
                  add          s9, t1, a1
                  add          a1, t1, a3
                  lui          t1, 728311
                  lui          t1, 1032123
                  auipc        gp, 369056
                  add          t0, t2, s6
                  add          t1, s9, t1
                  lui          t1, 413321
                  lui          a3, 903031
                  lui          s6, 92051
                  auipc        gp, 130156
                  addi         s9, s9, 1991
                  lui          s9, 113005 #end riscv_int_numeric_corner_stream_7
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           gp, 0xf55867a5
                  li           s8, 0x0
                  li           s10, 0xf458b255
                  li           s9, 0x0
                  li           s6, 0x80000000
                  li           t6, 0x0
                  li           sp, 0x80000000
                  li           s2, 0x0
                  li           a1, 0x80000000
                  lui          t6, 524108
                  nop
                  sub          a1, t6, s10
                  addi         s10, sp, -1206
                  auipc        sp, 94327
                  sub          s8, a1, a1
                  addi         s2, s8, -1002
                  auipc        s2, 255216
                  lui          t6, 968473
                  addi         t6, t6, -1297
                  lui          s9, 727119
                  auipc        s8, 607891
                  auipc        s8, 1020419
                  lui          t3, 992372
                  sub          t6, s2, sp
                  auipc        s9, 454156
                  nop
                  addi         sp, t3, -1833
                  sub          gp, s6, gp
                  sub          s8, s2, t6
                  auipc        a1, 109267
                  auipc        t6, 174311
                  lui          s10, 582545
                  auipc        t6, 1023501
                  sub          s10, t6, s6
                  nop
                  lui          t3, 808594
                  add          a1, s2, s10
                  auipc        s10, 185258 #end riscv_int_numeric_corner_stream_11
                  srl          a7, t2, s10
                  and          a1, a6, a6
                  slti         s10, s10, -1078
                  and          s9, zero, t1
                  andi         tp, tp, -1503
                  xori         t1, a0, -439
                  and          ra, a5, t1
                  slti         s8, s2, -1117
                  sltiu        t5, s4, -335
                  srli         s3, tp, 23
                  srl          a1, t4, a2
                  auipc        a7, 571987
                  srl          zero, t5, s8
                  srli         s8, a2, 24
                  andi         t5, t2, 776
                  slli         zero, s8, 4
                  sra          a2, a0, t5
                  xor          ra, t6, s7
                  srl          s3, a5, a2
                  auipc        a7, 848914
                  sra          s5, s5, a0
                  srai         t1, s1, 19
                  and          a5, t2, a0
                  sltu         t1, s6, s8
                  srai         a0, s2, 30
                  slt          t0, s8, s0
                  add          s7, t3, s9
                  srl          s3, s6, t4
                  slti         t5, s7, 620
                  sra          a6, t1, t4
                  auipc        t6, 945662
                  slti         sp, a1, -1951
                  slt          a3, s10, t3
                  auipc        s10, 160628
                  sltiu        a0, a7, -1950
                  or           s4, a5, gp
                  addi         t6, sp, -1422
                  or           a7, a0, s6
                  slti         s7, a6, -1747
                  addi         sp, gp, -1864
                  auipc        a7, 788494
                  addi         s7, a6, -575
                  xor          t6, s3, t1
                  or           s4, a4, zero
                  sub          s4, s3, a3
                  slti         s6, t3, 66
                  slli         gp, a1, 8
                  sra          tp, t4, t1
                  slli         s2, a6, 1
                  xori         ra, sp, 356
                  andi         s3, s1, -1143
                  slti         a1, s0, 327
                  addi         t3, t2, -785
                  srli         zero, s6, 4
                  addi         zero, t6, -186
                  and          tp, gp, a1
                  srli         gp, t1, 3
                  sub          a5, a0, t4
                  sll          sp, s4, s4
                  add          s6, s10, t0
                  sltu         s6, s9, s4
                  srli         sp, s11, 12
                  ori          ra, t5, 917
                  auipc        t3, 895412
                  sltiu        s4, s7, -269
                  sra          ra, t4, gp
                  nop
                  srli         t0, a3, 12
                  srli         s2, t0, 26
                  srli         tp, a6, 15
                  sltu         s1, s0, ra
                  xori         s6, s11, -968
                  xori         a5, t5, -1512
                  xor          a6, gp, a7
                  sltiu        a1, s4, 347
                  srai         t4, t2, 9
                  ori          a5, a6, -1863
                  xor          s8, s7, s8
                  slli         t1, a2, 6
                  xor          s2, a6, t6
                  srli         a1, a0, 7
                  slti         s9, a6, 1638
                  srai         tp, a0, 21
                  or           tp, s5, s11
                  slli         a7, t6, 16
                  xori         t3, s5, -108
                  slt          s8, gp, t1
                  slt          s6, a2, gp
                  slti         s10, s10, 1271
                  slli         s2, s4, 11
                  sra          t0, gp, t4
                  nop
                  and          s4, tp, tp
                  srl          gp, a3, t6
                  add          zero, sp, a4
                  sra          tp, s11, a4
                  sltiu        s9, s10, 1659
                  lui          a6, 692154
                  slli         s6, a0, 8
                  nop
                  andi         t1, s9, 445
                  ori          t2, s4, 1660
                  srai         a7, sp, 0
                  sltiu        s9, t2, 268
                  lui          s4, 599337
                  nop
                  ori          s1, a1, -1748
                  sltu         t5, s7, t2
                  slli         zero, t5, 17
                  slli         a3, a5, 1
                  xori         ra, a1, 802
                  sra          ra, s11, a3
                  ori          a3, sp, 1688
                  or           s10, s3, sp
                  addi         s8, t1, 2041
                  sra          s7, ra, a6
                  srl          s6, gp, sp
                  sltu         s8, t4, t6
                  and          a7, tp, a4
                  srl          gp, s7, t2
                  and          a0, a2, tp
                  or           t5, a0, s7
                  addi         a1, tp, 407
                  nop
                  sltiu        s3, a3, -1927
                  srai         a5, t0, 31
                  auipc        s2, 701832
                  slt          zero, a1, a3
                  slt          s10, a2, s5
                  srl          ra, a1, t6
                  srai         t1, t3, 9
                  add          s7, a7, ra
                  sub          sp, a5, a0
                  ori          s9, t6, 53
                  srai         zero, t0, 16
                  nop
                  srl          t6, sp, s8
                  xori         s3, a5, 950
                  slti         s7, s10, 2001
                  lui          t5, 695111
                  addi         s3, t3, -1242
                  slti         a1, t4, 546
                  add          zero, s0, s8
                  nop
                  xori         t5, a3, -93
                  nop
                  addi         a7, zero, 1356
                  sra          s10, sp, s4
                  sltu         a7, s5, s10
                  ori          s3, t3, 83
                  auipc        a7, 963919
                  addi         s5, a0, 1095
                  sra          s7, s10, zero
                  lui          a6, 863110
                  add          s1, a3, a2
                  andi         s10, s9, 1287
                  sll          s6, t1, t0
                  sub          t0, s11, s0
                  xor          t1, s11, tp
                  addi         s6, a4, -1449
                  sll          s8, gp, a3
                  sub          s1, s7, a3
                  xor          ra, a2, gp
                  ori          s7, s3, -1616
                  sub          a6, t6, t1
                  andi         a7, sp, 1609
                  auipc        zero, 421943
                  xori         s1, s9, -1940
                  nop
                  and          a6, a6, t3
                  sra          s4, sp, s2
                  sra          t1, s7, s2
                  sltu         s8, t4, s0
                  slt          t0, zero, a5
                  ori          s2, t5, 197
                  ori          s4, sp, -653
                  xor          s8, ra, t6
                  srai         tp, s11, 17
                  srli         a7, a6, 28
                  sltiu        s1, s8, -1000
                  srai         ra, s6, 1
                  auipc        s10, 425579
                  or           t1, s1, s2
                  sll          t1, t0, t2
                  ori          s7, t4, -1736
                  sltu         s4, sp, a5
                  sub          s5, a6, a4
                  or           a5, a6, tp
                  xor          t3, s9, a5
                  and          sp, t3, gp
                  slti         a5, zero, 1856
                  ori          s9, s9, -180
                  andi         ra, sp, 690
                  slti         a0, s4, -1866
                  lui          a7, 497951
                  sltiu        a3, a4, -1604
                  addi         a1, t4, 1745
                  xor          s4, a4, gp
                  xor          ra, t0, s2
                  xor          s4, s9, s11
                  sra          a6, a0, t4
                  auipc        a0, 520908
                  xori         s6, a6, 1812
                  sub          ra, s10, s9
                  sltu         a6, a3, t3
                  sub          sp, t6, a1
                  sltiu        a2, a3, -324
                  sra          s5, s9, a6
                  xori         t2, a4, 1114
                  sub          sp, ra, t5
                  xori         ra, s4, 811
                  addi         a7, s9, 1971
                  srai         a1, s1, 21
                  andi         s3, s7, -570
                  or           s10, t5, s7
                  or           s10, t4, t3
                  addi         s5, t1, 1269
                  xori         tp, s6, -1269
                  srai         sp, t6, 22
                  sra          a3, s8, s4
                  auipc        s9, 899342
                  slli         sp, a5, 17
                  sub          ra, zero, s7
                  andi         a2, sp, -894
                  srai         s10, s11, 11
                  srli         s2, s3, 16
                  sra          t4, ra, t5
                  sra          a0, t6, s1
                  ori          a1, sp, -657
                  xori         s3, a2, 1222
                  slli         s1, a0, 0
                  xor          s10, s8, zero
                  slli         zero, a3, 31
                  auipc        ra, 827285
                  lui          sp, 173056
                  nop
                  and          sp, t3, t3
                  and          a6, s2, sp
                  auipc        s9, 1027579
                  srai         t6, s9, 1
                  xori         a5, t0, -1247
                  slli         a2, t5, 2
                  srl          s8, t1, a2
                  addi         gp, a0, 1788
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           t0, 0x6d1efb27
                  li           s5, 0xffffffff
                  li           t3, 0xffffffff
                  li           a5, 0x0
                  li           a2, 0x455168c1
                  li           a6, 0x0
                  li           s7, 0x80000000
                  li           tp, 0xffffffff
                  li           t4, 0xffffffff
                  sub          s7, s7, t3
                  sub          a2, a5, a5
                  add          t4, tp, a5
                  addi         t3, t0, 1354
                  addi         s9, a6, -1096
                  add          a6, a6, t3
                  auipc        s9, 635398
                  auipc        t3, 343773
                  addi         t4, t3, -1833
                  lui          a5, 139616
                  sub          s9, tp, a2
                  nop
                  add          s5, a2, s7
                  sub          s9, s7, s5
                  addi         s5, s5, -1812
                  addi         t4, a5, 1274
                  lui          a5, 428541
                  sub          a2, a2, t3
                  add          a2, a5, t0
                  lui          tp, 696363
                  addi         a2, s9, 115
                  auipc        t0, 980401
                  sub          t0, a6, s7
                  addi         t0, t0, 1497
                  addi         a2, tp, 1903
                  sub          s9, t0, a6 #end riscv_int_numeric_corner_stream_8
                  sra          ra, s3, t5
                  sra          t5, t1, s2
                  srl          a5, t0, a6
                  slt          gp, s11, sp
                  slt          s2, tp, s4
                  xor          tp, a7, a0
                  slt          zero, s0, t1
                  nop
                  slli         t0, s0, 24
                  srli         a2, a7, 10
                  slti         ra, a4, 87
                  lui          t0, 638057
                  add          s6, s3, tp
                  xori         t5, a5, -1590
                  ori          s8, t1, -604
                  sra          s5, s3, s11
                  slt          a6, a5, t2
                  andi         tp, s2, -858
                  xor          a5, t2, a7
                  srl          t3, s1, tp
                  slli         a6, s4, 29
                  addi         a1, a4, 2026
                  slt          t2, tp, s10
                  add          s5, s6, s3
                  add          t3, t2, t0
                  and          a6, s4, s9
                  add          a7, a6, a6
                  sra          a5, a6, t1
                  srli         a2, a7, 29
                  slt          sp, s3, s2
                  slt          t1, t1, t3
                  slli         a0, a6, 24
                  srli         s6, a0, 27
                  sltu         t1, t6, zero
                  xori         s1, s0, -149
                  or           sp, s7, sp
                  sltu         s7, t0, s1
                  xori         a2, a1, -266
                  xori         s10, s2, 977
                  nop
                  sll          s10, s4, t1
                  slt          t0, zero, t5
                  lui          gp, 632926
                  and          zero, tp, t2
                  add          a3, zero, s1
                  xor          a7, gp, a1
                  sltiu        gp, t4, -195
                  slt          s3, t0, zero
                  nop
                  sltiu        gp, s0, -105
                  add          s8, ra, a6
                  or           t2, s10, a5
                  sltu         gp, t2, s2
                  slli         s6, s11, 17
                  addi         a2, s5, 157
                  slti         sp, a5, 2035
                  xori         s1, s5, -1088
                  slt          ra, a0, s3
                  slli         a3, t1, 11
                  sltu         s7, s1, t2
                  add          s4, s4, t6
                  lui          gp, 605095
                  sltu         zero, tp, t1
                  srl          t0, s1, s6
                  and          t3, tp, s6
                  or           gp, s7, s5
                  sub          tp, a4, ra
                  xor          tp, s2, a1
                  addi         ra, a2, 1163
                  ori          s1, t5, -626
                  sltiu        a2, s10, -1314
                  ori          s4, a4, 878
                  sltiu        a5, a3, 959
                  nop
                  or           gp, s10, s9
                  andi         a1, t4, 2
                  addi         a2, s3, -1354
                  srai         a2, t0, 19
                  srl          t0, gp, s10
                  slli         s2, s11, 4
                  slli         t5, a1, 3
                  sltu         s9, sp, s6
                  or           t0, s11, a1
                  addi         t4, s11, 1577
                  slti         a6, a6, 1378
                  and          s7, a2, s10
                  sra          ra, t1, s0
                  andi         t4, t6, -1073
                  auipc        a0, 414296
                  slli         s9, s3, 27
                  add          sp, t5, s1
                  sub          a6, sp, ra
                  srai         s6, tp, 26
                  slti         t3, t6, 195
                  srl          s9, t2, t4
                  add          t4, s4, t0
                  srai         ra, s6, 30
                  sra          zero, a2, s5
                  srai         s6, a6, 27
                  sll          s9, t2, s6
                  sll          sp, s5, t1
                  sra          sp, s10, s3
                  sll          a6, t1, t5
                  sll          s1, t6, a7
                  sll          t6, t4, t4
                  srai         t5, a1, 16
                  sltiu        s7, s9, -291
                  auipc        s4, 990015
                  auipc        zero, 812704
                  auipc        t3, 866644
                  auipc        tp, 749049
                  sltu         a2, t6, a3
                  srli         s5, a3, 17
                  slli         a1, a0, 7
                  srai         s10, tp, 8
                  auipc        zero, 130186
                  slli         s5, s10, 2
                  slli         s10, t2, 23
                  auipc        s8, 95971
                  slt          t3, a2, t3
                  srl          s9, s2, a5
                  xor          t5, a0, s1
                  sltiu        t3, s4, 1379
                  sll          t5, tp, s5
                  srli         t0, sp, 16
                  addi         t5, gp, -959
                  slti         t2, t4, 417
                  sub          a5, gp, a3
                  xori         a0, t3, -1066
                  add          a1, t4, a5
                  sub          t4, s3, t4
                  ori          t6, s3, 1607
                  xori         s1, s3, -124
                  add          t1, zero, s4
                  nop
                  srl          s7, a4, sp
                  srai         s8, s3, 27
                  sub          s3, sp, s0
                  sltiu        a5, zero, -1186
                  srai         a6, s2, 19
                  nop
                  nop
                  xori         a2, a7, 1492
                  and          t3, zero, ra
                  sll          s3, t1, s10
                  and          s7, t5, s11
                  xor          t5, t6, s1
                  srai         s7, s3, 15
                  srai         gp, s9, 0
                  and          s6, gp, t4
                  srai         ra, s7, 8
                  ori          zero, t6, 1769
                  lui          sp, 608477
                  lui          zero, 350094
                  auipc        t5, 929925
                  auipc        sp, 479255
                  xori         t4, a4, -1818
                  nop
                  srli         s8, s2, 5
                  sltiu        a7, a2, 1069
                  add          s5, a0, ra
                  srli         tp, t4, 8
                  slti         a5, t2, -1918
                  sub          t6, s9, t3
                  lui          t6, 742565
                  srl          s7, a4, zero
                  ori          a7, t1, 1887
                  auipc        t3, 408718
                  sub          tp, t2, t2
                  add          t5, a3, s8
                  sll          t0, s3, s6
                  srl          s6, t3, a2
                  slti         s9, s9, 207
                  auipc        s3, 701766
                  auipc        sp, 543505
                  or           a5, t3, gp
                  xori         sp, s0, -24
                  and          s9, s6, s5
                  slli         a6, sp, 3
                  auipc        a7, 968779
                  xori         s2, t2, 691
                  or           tp, a4, t1
                  ori          s1, s6, -150
                  xori         s6, t2, -1587
                  add          a3, s7, s7
                  nop
                  sra          s10, s7, s4
                  and          a2, a3, gp
                  slti         a2, s6, 2024
                  slli         t3, sp, 25
                  andi         s2, a0, -151
                  xori         t6, a2, -1589
                  sra          a6, s10, a1
                  srai         a3, s3, 18
                  sub          a2, s7, zero
                  or           s6, a5, t5
                  add          gp, s0, s2
                  sltu         t4, tp, t6
                  slt          s9, a7, s1
                  nop
                  sub          t0, s2, a1
                  nop
                  addi         s7, zero, -1713
                  lui          t0, 469062
                  sub          a7, s1, s11
                  add          a3, t4, zero
                  sll          s6, s4, a2
                  xori         ra, zero, 1707
                  auipc        t6, 125069
                  and          zero, t2, t5
                  slli         sp, s0, 25
                  or           tp, t2, s11
                  and          ra, a5, a4
                  sltu         zero, s11, a0
                  sub          a2, a1, s9
                  andi         t5, a2, 286
                  auipc        t6, 149106
                  xori         s7, a0, 1635
                  ori          s7, a5, 1183
                  sltiu        sp, a6, -183
                  srli         ra, ra, 11
                  or           zero, a3, t2
                  add          ra, zero, s6
                  or           t6, a1, t1
                  slli         gp, s8, 23
                  slt          t2, a7, s3
                  sra          a0, s8, tp
                  ori          sp, s11, -74
                  srli         s1, t5, 1
                  auipc        s7, 62790
                  add          a1, sp, t6
                  sltu         t0, t0, s10
                  xori         zero, a3, 863
                  slti         ra, ra, -1078
                  auipc        s9, 18876
                  slli         t6, s7, 29
                  slt          tp, t0, s4
                  nop
                  add          a0, s10, s2
                  auipc        t4, 494022
                  andi         t4, s8, 1870
                  srli         t0, s7, 25
                  auipc        s1, 580425
                  srli         a2, s7, 13
                  nop
                  add          gp, s8, s0
                  slli         tp, t2, 8
                  srl          s3, s6, s4
                  or           tp, a1, t0
                  ori          t1, a6, -571
                  lui          gp, 177913
                  sltiu        s6, s0, 1604
                  sub          t4, a2, a1
                  ori          a7, t2, 493
                  sub          sp, a1, a0
                  auipc        s2, 505442
                  slti         a0, a4, 1405
                  slli         t0, s6, 3
                  sltu         sp, a2, gp
                  add          sp, s1, a3
                  sltiu        sp, t0, 376
                  ori          s6, t1, 807
                  xori         t0, t0, -1316
                  slti         s1, t5, 516
                  xor          a0, t4, a3
                  srl          s7, a5, s2
                  srai         a1, s3, 27
                  nop
                  sll          s7, t0, s2
                  sltu         t5, s9, a0
                  addi         a7, t5, 323
                  lui          s6, 1041887
                  slt          t2, a6, t0
                  slli         s9, t2, 8
                  slli         s1, ra, 24
                  slti         t5, s2, -977
                  sltu         t6, s7, s8
                  sltiu        s10, s2, 524
                  andi         a6, t4, 1545
                  andi         sp, a7, 511
                  ori          a1, a6, 1770
                  slti         t0, t5, -1131
                  nop
                  lui          s8, 534926
                  sub          s5, gp, t3
                  slli         s3, s6, 27
                  auipc        s10, 652254
                  xor          s6, a1, ra
                  sltiu        t5, s8, -1563
                  slli         a5, s7, 25
                  lui          s4, 915293
                  nop
                  sub          s1, a0, t2
                  and          a6, s3, gp
                  sll          t1, t4, t1
                  add          t2, s11, a3
                  sll          t6, sp, s1
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           gp, 0x80000000
                  li           t1, 0x80000000
                  li           t3, 0x745e3df2
                  li           s8, 0xffffffff
                  li           s10, 0x80000000
                  li           s6, 0x0
                  li           t2, 0x46b7f1c2
                  li           sp, 0xffffffff
                  li           tp, 0xffffffff
                  sub          t2, s10, ra
                  add          s8, t1, t1
                  auipc        gp, 284104
                  add          s8, tp, t3
                  nop
                  sub          s8, sp, s8
                  sub          gp, t3, ra
                  sub          t3, s8, t2
                  nop
                  nop
                  addi         s8, tp, -255
                  add          s10, t1, s6
                  add          s8, tp, t1
                  auipc        t1, 1045866
                  nop
                  nop #end riscv_int_numeric_corner_stream_2
                  sltiu        t6, s11, 760
                  add          t4, s4, a4
                  slli         t4, s7, 1
                  slti         s3, t5, -1667
                  add          s10, a3, a7
                  auipc        s6, 268144
                  or           s9, s2, a7
                  sub          a5, s3, s1
                  slli         s8, s11, 27
                  lui          a2, 196767
                  ori          a6, a1, 91
                  slti         s3, gp, -656
                  auipc        s10, 869993
                  auipc        gp, 1008212
                  sra          s2, t1, sp
                  lui          a2, 694522
                  and          s8, s4, t1
                  sll          s5, s8, s2
                  sll          s1, a3, s10
                  sra          a0, s10, a4
                  sltu         s3, s5, s1
                  sll          t0, s3, t5
                  sll          s6, t1, s1
                  srl          a7, t4, s6
                  sltu         a5, gp, s11
                  srai         s8, s10, 6
                  ori          a3, s6, 943
                  lui          s6, 727426
                  srl          t0, tp, t5
                  nop
                  srl          a7, s3, a6
                  srai         a2, tp, 19
                  ori          ra, sp, 1518
                  add          t2, a6, t3
                  add          t6, t1, s9
                  sub          s4, s6, s2
                  auipc        a7, 999551
                  slti         a0, ra, 1279
                  andi         t6, s1, 569
                  addi         ra, s11, 1660
                  slti         t3, t2, 1268
                  lui          a5, 1047272
                  sub          t1, a0, a0
                  xori         a0, a5, -1767
                  addi         s7, ra, 1069
                  srli         t2, gp, 25
                  sltiu        t0, s1, 1699
                  srli         a1, t6, 2
                  slti         t2, s6, -1356
                  xor          t1, s6, t3
                  ori          a6, t4, 449
                  sll          a6, s7, ra
                  srai         a3, a7, 18
                  srl          s3, s7, t1
                  xori         s1, s6, 1852
                  nop
                  sll          s3, s1, s7
                  slt          s3, t4, s1
                  sltu         t0, a4, t2
                  or           a7, a5, a1
                  sll          s4, t4, a6
                  sltiu        a1, s6, 1252
                  sra          a0, zero, s10
                  addi         t0, gp, -1916
                  nop
                  xor          a2, t3, s1
                  andi         s3, a7, -1508
                  auipc        t4, 1012453
                  addi         s9, t6, 909
                  slti         ra, a0, 903
                  ori          s3, s1, -1559
                  nop
                  sltiu        s2, a2, -1190
                  xori         t5, s10, -468
                  ori          t5, s0, 827
                  srli         tp, tp, 25
                  and          t3, gp, a5
                  ori          a1, zero, 609
                  srli         a5, a7, 4
                  sltiu        s2, a2, 1184
                  and          tp, t3, t0
                  andi         a5, a6, -129
                  andi         s7, s6, 1707
                  add          a5, s8, s3
                  ori          sp, s3, -456
                  ori          ra, t1, -1336
                  addi         t5, gp, 958
                  srli         s8, s8, 17
                  srl          t1, a7, t5
                  ori          a6, t1, 372
                  andi         tp, t4, 176
                  srl          a0, a1, t6
                  lui          s5, 650238
                  sra          s10, s4, s4
                  ori          a6, t3, 293
                  sll          s9, t0, a6
                  ori          t2, s5, -608
                  slli         t6, t1, 8
                  add          t0, a2, s6
                  srai         t1, a5, 23
                  addi         ra, s9, 1880
                  lui          a5, 245615
                  auipc        ra, 343589
                  and          s5, a6, s1
                  sltiu        t2, gp, 409
                  ori          a2, s3, 449
                  xori         ra, a5, 190
                  andi         a1, a7, 1020
                  srai         s4, s0, 0
                  sll          s2, a4, a7
                  srli         s5, t2, 7
                  addi         tp, t1, 191
                  ori          s6, s0, -1166
                  nop
                  or           s9, s4, a6
                  srli         t1, t1, 28
                  srai         s6, t6, 4
                  and          s1, s3, s0
                  andi         s1, t1, -80
                  srl          s1, s2, s7
                  xor          a5, gp, s7
                  sll          zero, t4, t3
                  nop
                  sra          t2, ra, t4
                  or           tp, s2, s3
                  srl          s5, s7, s6
                  srl          s3, s8, s7
                  sll          sp, t5, sp
                  auipc        s2, 967628
                  slli         t2, a5, 23
                  xori         gp, a7, 452
                  add          s1, a7, s7
                  sltu         a2, sp, a4
                  lui          gp, 504588
                  slti         t5, tp, 889
                  xori         gp, s10, 121
                  sltiu        tp, a6, 1717
                  andi         ra, t6, 891
                  sltu         t2, s2, s4
                  slti         s7, s1, -1548
                  addi         a7, s0, 1504
                  andi         t4, s9, 1011
                  srl          a6, sp, s9
                  xori         tp, s8, -228
                  srai         zero, t2, 13
                  lui          a1, 1017038
                  srai         t0, a2, 17
                  sra          a6, gp, gp
                  slt          s3, a6, a2
                  slti         a1, t1, -179
                  or           s9, a3, zero
                  xori         t0, tp, 51
                  xori         s5, s8, 1459
                  sltu         ra, s7, a5
                  andi         s2, a7, -158
                  add          t4, s9, s11
                  srli         t0, s5, 9
                  slti         s5, s7, -1045
                  and          s5, a4, s2
                  srai         zero, s1, 28
                  srl          tp, s10, gp
                  and          s3, s10, t1
                  addi         t6, t2, -1707
                  sltu         s4, s7, t2
                  auipc        s10, 310934
                  nop
                  addi         t5, t1, 740
                  sra          zero, ra, a7
                  and          gp, s6, s8
                  xori         s3, s0, 1590
                  auipc        t6, 592352
                  srli         s8, s5, 17
                  nop
                  xor          a6, t6, gp
                  nop
                  andi         t6, a2, -447
                  slt          s10, s2, t0
                  xori         s8, s10, 113
                  srai         tp, s5, 25
                  sltu         a5, t0, s3
                  srl          t4, t3, a6
                  sltiu        tp, t1, 194
                  xor          t2, t3, s2
                  sub          t1, s3, a4
                  sra          a1, a2, t1
                  srl          t2, a3, s11
                  or           s5, s7, a6
                  slli         a7, a5, 7
                  sltu         s8, t6, s9
                  xori         s9, s9, 1040
                  sltiu        s3, t0, 1353
                  addi         tp, s4, -574
                  srl          s5, s1, sp
                  srl          t0, gp, zero
                  or           t0, sp, s4
                  addi         s3, ra, 888
                  add          t6, a6, s11
                  ori          sp, s11, -1799
                  sub          gp, ra, s1
                  sltiu        a7, s10, -742
                  slt          gp, s5, s9
                  srli         gp, s3, 2
                  or           s2, t2, s7
                  xor          a2, s4, s8
                  sltu         a3, gp, a4
                  sltu         t2, a1, s3
                  auipc        a5, 1024264
                  nop
                  srli         s1, s7, 23
                  nop
                  xor          sp, s10, a7
                  srl          a7, s10, a4
                  slti         t0, zero, 1913
                  or           s8, s3, s6
                  sltiu        a1, s4, 1532
                  and          a5, ra, t3
                  srl          sp, sp, zero
                  ori          s8, t3, 1423
                  sltu         a0, t6, a0
                  slti         a1, t4, 2040
                  lui          s9, 334535
                  srai         t5, t2, 26
                  xori         s7, t0, 1163
                  sra          a1, s2, t2
                  srli         t0, s2, 7
                  sltiu        a6, t0, -793
                  nop
                  addi         t6, s1, -1321
                  nop
                  sll          a6, s11, s8
                  andi         a6, s3, -867
                  slti         s1, a4, -150
                  lui          a2, 740542
                  srai         s1, t2, 7
                  sltiu        t3, s8, -737
                  or           t4, s0, t1
                  sltiu        s1, t0, 682
                  or           a3, s3, sp
                  sltiu        t2, ra, -1596
                  sra          t1, a1, t0
                  slli         a6, s10, 23
                  auipc        t1, 509278
                  sltiu        a0, sp, -645
                  sltu         t5, sp, ra
                  sra          s6, a5, zero
                  srl          zero, a1, s6
                  sltu         a1, s9, t2
                  or           s3, s2, a3
                  nop
                  xor          a6, t1, gp
                  sra          s5, sp, s6
                  slt          t0, s1, t0
                  srai         a5, a1, 2
                  srl          tp, a5, sp
                  lui          a7, 262445
                  sll          t5, t4, s10
                  xori         t3, t1, 1512
                  nop
                  sra          s10, s0, t0
                  slli         t2, s0, 11
                  srli         t3, t0, 2
                  slt          a6, s0, t4
                  xor          s3, t0, tp
                  andi         sp, sp, -726
                  slli         a0, t6, 0
                  slli         s8, s1, 7
                  ori          t0, t1, 1790
                  or           a2, s9, s7
                  nop
                  sltiu        a7, gp, 1384
                  slli         a1, a0, 27
                  xor          s8, tp, t3
                  lui          a2, 272374
                  lui          s7, 535726
                  sra          a2, gp, a5
                  xor          t3, a5, t5
                  auipc        s10, 861837
                  sll          a1, t4, a7
                  srai         t4, t0, 14
                  or           ra, a3, sp
                  nop
                  andi         s6, t0, -1050
                  sltiu        s4, s10, 826
                  srli         a2, t0, 11
                  sra          t2, s5, zero
                  or           s3, s7, a5
                  lui          gp, 338806
                  and          zero, sp, a3
                  and          t1, tp, zero
                  sub          zero, t1, s6
                  addi         t0, t3, 14
                  ori          a1, t1, -68
                  lui          s8, 401881
                  addi         a0, t3, 66
                  slti         s1, s2, -1219
                  slli         s1, a5, 9
                  auipc        s4, 16130
                  sll          tp, s6, t4
                  auipc        s1, 709874
                  sll          t3, a7, s6
                  xor          t0, t0, a4
                  sltu         a3, s0, a3
                  andi         s1, t5, -1109
                  sltu         sp, t0, t5
                  slti         a5, t4, 41
                  sltu         gp, s11, s6
                  sltiu        s2, t5, -534
                  srli         s10, t3, 2
                  srli         s9, t5, 18
                  sub          a1, t0, t0
                  add          a6, zero, s1
                  andi         a7, t6, -1248
                  sub          t4, s11, sp
                  srl          ra, s8, a5
                  auipc        a0, 885828
                  srli         s2, a4, 14
                  lui          a5, 1002102
                  sub          s9, s10, s4
                  sltu         ra, t0, s7
                  slti         ra, s1, 863
                  or           t2, zero, a4
                  lui          t6, 577204
                  xor          a7, t1, sp
                  add          a5, s8, s9
                  sub          a3, sp, s8
                  xori         s3, s11, -747
                  and          gp, a5, gp
                  xori         t4, t6, 1636
                  or           s2, a1, s6
                  srl          zero, s9, s9
                  lui          s8, 241205
                  lui          t4, 629594
                  auipc        a0, 160937
                  lui          s3, 546723
                  ori          s3, s5, -1657
                  slt          sp, s1, a4
                  ori          zero, t6, 1624
                  srai         a6, s6, 26
                  sltu         sp, t4, sp
                  slti         s10, t4, 313
                  or           s1, ra, t2
                  add          t1, t0, gp
                  ori          s1, s11, -1263
                  sra          s9, ra, a3
                  srai         s6, s10, 15
                  slt          s9, s10, gp
                  slli         s7, t5, 30
                  sltu         t2, s4, s1
                  slt          a6, s11, s10
                  slli         s9, s9, 16
                  nop
                  srai         a5, s8, 31
                  addi         s7, t1, 1082
                  lui          a2, 619319
                  srli         s6, s4, 15
                  srai         t3, t5, 20
                  srl          t4, t1, tp
                  srli         s8, s0, 8
                  andi         s7, t5, 1017
                  auipc        a1, 310188
                  andi         t0, s9, -747
                  and          ra, s1, a0
                  and          s1, a0, t3
                  andi         sp, s7, -260
                  addi         t3, t2, 210
                  sra          t1, a7, a2
                  or           s8, t2, s8
                  add          a5, a0, a2
                  and          s1, a4, t0
                  sll          s3, a2, s1
                  nop
                  andi         a2, s8, -1016
                  slt          a7, a3, sp
                  or           t3, s5, s6
                  xor          zero, a0, s3
                  srai         a7, ra, 19
                  srl          t1, s8, s3
                  add          a2, t1, s0
                  sll          a5, a0, t6
                  sra          s3, s11, s11
                  addi         a7, t6, -901
                  srli         s10, a2, 29
                  xor          t1, zero, zero
                  xor          zero, t5, s8
                  srai         a2, t5, 17
                  andi         s10, s11, -806
                  or           s8, s5, s0
                  slli         t6, a5, 2
                  ori          a3, sp, 1249
                  slti         s9, a6, 1825
                  sll          s10, a4, ra
                  srai         t5, s2, 9
                  sub          t5, t3, s6
                  sll          t2, s11, s11
                  sltu         t0, a5, t6
                  addi         t0, s3, 1332
                  nop
                  lui          zero, 526721
                  nop
                  nop
                  sra          a7, a2, t2
                  nop
                  srl          a6, s1, ra
                  ori          t2, a2, 677
                  andi         s8, t2, 1105
                  srl          t3, s1, a2
                  xor          s8, a6, a7
                  sll          s7, a5, s3
                  or           a5, s1, t1
                  slt          s4, a0, t0
                  auipc        t2, 41240
                  srl          s5, a1, t2
                  andi         s8, sp, 581
                  addi         a5, t5, -1624
                  lui          gp, 101312
                  srl          zero, tp, s9
                  xor          sp, a6, s8
                  sltu         a5, s10, ra
                  xori         t4, s8, 1493
                  sltiu        t2, ra, -1033
                  auipc        s9, 836391
                  slti         s5, a6, -1700
                  srai         tp, s0, 18
                  add          t1, s10, s9
                  addi         a1, s4, 728
                  srai         a0, a3, 23
                  sltu         a5, s2, a5
                  xor          gp, zero, sp
                  or           a6, t1, s7
                  sub          a7, s2, s2
                  srl          t1, t0, s8
                  srli         s8, zero, 31
                  sra          a7, gp, t6
                  xor          a5, a5, t6
                  srli         t4, t1, 29
                  andi         zero, s8, 447
                  or           ra, sp, s7
                  slli         ra, s10, 11
                  sra          t2, a2, a1
                  sub          s9, ra, a7
                  and          t4, sp, s4
                  srl          a2, a4, s6
                  or           s1, s7, gp
                  slti         a6, a4, 1663
                  srli         s4, t6, 0
                  andi         s5, s7, -1919
                  srl          s10, a7, s2
                  sll          s8, a1, s1
                  nop
                  slli         gp, t0, 20
                  srl          s8, s7, a7
                  andi         sp, t1, 1571
                  or           s4, a2, a2
                  auipc        a3, 812946
                  srai         s6, s6, 3
                  add          zero, s1, a0
                  slt          t0, a3, a5
                  sltiu        a6, s1, 1018
                  and          s3, s11, s2
                  auipc        a1, 9186
                  nop
                  xori         ra, s2, 1153
                  sltiu        gp, a7, -146
                  sltu         ra, a7, a6
                  lui          s2, 366250
                  andi         sp, t0, -1872
                  lui          a3, 371314
                  sra          gp, t2, s8
                  slti         t2, t1, 212
                  xori         a1, a4, -834
                  srl          t5, s4, t4
                  sltu         sp, s10, s9
                  xor          s7, s3, t0
                  xori         a0, a2, -1246
                  andi         t4, a0, 784
                  sub          t6, s7, ra
                  xori         s2, t4, 1798
                  auipc        t6, 12855
                  slti         t6, t3, -1404
                  sub          t1, a7, s0
                  or           s8, t6, s4
                  sra          s5, gp, t3
                  and          s1, s3, s7
                  slli         a2, s0, 20
                  slt          t6, a0, tp
                  sltu         t5, a7, ra
                  sub          a0, gp, a4
                  slli         s9, a3, 3
                  add          gp, a4, s3
                  add          s9, a2, s0
                  slt          s3, s3, gp
                  and          s8, zero, sp
                  sra          gp, zero, s9
                  andi         a5, t0, -874
                  sub          s3, s7, t3
                  sltiu        s8, gp, -1013
                  slt          t1, a0, s11
                  srli         t3, a3, 3
                  xor          a1, t6, a7
                  add          a1, a5, a4
                  sub          ra, a7, s6
                  auipc        gp, 594635
                  srli         s6, sp, 12
                  sub          s6, t5, a2
                  or           t3, a4, s7
                  and          s2, s8, s5
                  slti         t4, a6, 1163
                  sltiu        s10, a7, -1209
                  and          s8, s9, s9
                  sub          a7, s1, s11
                  sra          a3, a5, t3
                  slt          a1, gp, t4
                  andi         a7, t1, -389
                  slt          s1, s4, a2
                  xori         sp, a0, 1102
                  slti         s4, a5, -736
                  xori         s8, a6, -1315
                  slt          s9, s3, s10
                  xori         a7, ra, 625
                  sub          a3, zero, a6
                  sltu         s7, a7, a7
                  sltu         tp, tp, a5
                  srl          t0, t5, a1
                  sltiu        a7, t0, -121
                  slti         a6, gp, -294
                  lui          s10, 897131
                  srl          s5, sp, s11
                  or           t3, s7, s0
                  ori          t6, a5, 1645
                  sra          sp, ra, t1
                  ori          t0, s3, -1940
                  or           a5, a7, a7
                  sltiu        t4, t2, -888
                  slli         t3, a7, 6
                  slti         s9, t3, -1391
                  slli         t5, a2, 8
                  nop
                  add          s4, gp, sp
                  slli         t6, s8, 5
                  lui          s1, 797761
                  auipc        s7, 436751
                  andi         s9, s4, 1585
                  or           t6, gp, tp
                  xor          t5, a7, s0
                  sltu         t2, t0, s6
                  or           s4, t3, s2
                  andi         zero, a5, 1142
                  sltiu        t4, s8, -439
                  or           a5, s1, a2
                  add          s6, a2, a6
                  srli         a6, s0, 20
                  sra          s3, s1, t3
                  ori          s5, a6, 69
                  xori         gp, tp, -1620
                  auipc        a6, 74369
                  or           a0, s3, sp
                  add          t5, s0, s3
                  xori         a3, a4, 1149
                  and          ra, s5, a0
                  addi         a7, s7, -158
                  sltu         a3, s1, ra
                  andi         s10, sp, -169
                  andi         a3, s7, -88
                  srl          a1, s3, t6
                  srai         a2, t3, 13
                  sub          s2, s8, s9
                  srai         tp, tp, 19
                  srai         a0, t2, 15
                  addi         s2, ra, -1557
                  add          a1, gp, a1
                  and          a1, t3, a6
                  sll          s4, a4, t0
                  srl          tp, s1, s0
                  xor          s6, zero, t3
                  andi         s6, tp, 16
                  and          t5, s5, s0
                  xor          t0, s2, t3
                  srai         t6, ra, 14
                  and          a7, t6, a6
                  addi         s1, t4, -409
                  and          s10, a2, gp
                  or           s4, gp, ra
                  or           s7, s10, s3
                  nop
                  xor          a0, s11, t4
                  sltiu        s4, a0, -1667
                  sra          t4, a3, s11
                  xor          t2, s8, t5
                  lui          zero, 29746
                  sltiu        t6, s0, 1356
                  addi         ra, t4, 333
                  nop
                  sltiu        gp, tp, 1739
                  sll          a2, a5, s3
                  lui          t3, 636165
                  sll          sp, t0, a7
                  slli         tp, t3, 24
                  xori         t3, t6, -1190
                  srl          a5, tp, s0
                  slli         s5, s6, 18
                  nop
                  srl          t3, gp, ra
                  sll          a0, t3, ra
                  sltiu        t0, a3, 75
                  lui          s6, 708868
                  sltu         s2, s3, s9
                  andi         s1, a1, -693
                  sltiu        tp, t3, 1292
                  ori          t6, a5, -236
                  srli         t0, s3, 3
                  and          a7, a4, s1
                  nop
                  slti         a3, s11, 369
                  lui          t5, 343705
                  sra          a5, tp, a6
                  auipc        s9, 432095
                  andi         a3, a4, 1699
                  sub          a3, s4, s8
                  andi         gp, a4, -1199
                  or           s2, t5, t0
                  slti         t4, zero, 1594
                  andi         s10, s11, -466
                  slti         t0, s7, -1311
                  srl          a3, a0, s11
                  lui          s2, 619108
                  and          s2, s9, t0
                  sra          s4, ra, s2
                  slli         s2, a0, 6
                  lui          gp, 448105
                  sub          a3, a4, s8
                  srli         t6, s5, 17
                  xor          a5, a0, a4
                  addi         t0, s7, 1306
                  nop
                  xori         t5, s11, -151
                  sltiu        s9, ra, 65
                  xori         t2, t0, 1619
                  srl          t5, t6, s11
                  srai         s7, s7, 29
                  lui          tp, 811102
                  nop
                  andi         s10, s10, 432
                  lui          t2, 20835
                  sltiu        s7, s7, 756
                  sub          s6, t4, tp
                  nop
                  slli         a5, t0, 25
                  ori          t3, a5, 1762
                  srl          gp, s5, s11
                  ori          t0, t5, -1297
                  lui          a7, 523415
                  xori         t6, zero, -983
                  andi         s1, s5, -823
                  slti         s1, a4, 1558
                  xori         s6, s5, 870
                  andi         a7, s11, -507
                  or           s7, ra, s4
                  xori         s6, gp, 547
                  sll          t4, s11, t1
                  srli         t3, t3, 10
                  sll          a0, a4, s9
                  andi         zero, s10, 1041
                  lui          a7, 541393
                  and          a6, s8, s2
                  sra          t1, s3, s8
                  slt          t3, a5, a2
                  srl          t5, zero, s11
                  xor          s8, s6, a4
                  sll          a0, s0, a7
                  sltu         zero, a3, s11
                  srai         a7, s8, 22
                  auipc        s2, 883140
                  srli         t0, s10, 4
                  andi         a1, t0, 1815
                  slli         a2, t6, 30
                  slli         s7, zero, 7
                  srli         s1, t4, 26
                  slti         a0, s4, -703
                  addi         s4, s5, 715
                  lui          a1, 263019
                  srl          s7, t0, s6
                  and          s2, sp, gp
                  sltiu        a6, tp, -2037
                  srli         a0, s1, 18
                  addi         t4, a5, 96
                  auipc        gp, 61038
                  ori          t1, s7, 595
                  auipc        gp, 802839
                  sra          t3, s1, s9
                  sra          s5, ra, s2
                  lui          t3, 62009
                  andi         t2, s8, -1088
                  addi         t1, s9, -1235
                  srli         s3, a3, 28
                  srl          ra, s9, zero
                  srai         a7, s10, 16
                  sll          s7, a0, t1
                  sub          t5, s1, ra
                  or           s4, t2, gp
                  srli         t1, gp, 8
                  srl          gp, gp, s4
                  nop
                  srli         a1, s4, 31
                  nop
                  xor          a5, a7, t5
                  sub          t5, a3, s5
                  nop
                  slt          sp, a4, s0
                  sub          t3, s5, a5
                  add          s3, zero, a4
                  srl          a5, t4, tp
                  or           a0, a3, t1
                  sll          t6, t3, tp
                  nop
                  xori         s8, a4, 427
                  nop
                  srai         s3, s9, 25
                  slli         tp, tp, 6
                  lui          a5, 55542
                  andi         t5, t5, 1177
                  srai         s7, s8, 10
                  xori         a1, sp, -1393
                  sub          t5, a4, s6
                  addi         gp, zero, 1805
                  sll          a3, a7, t4
                  sltiu        t1, tp, -204
                  slli         s10, s10, 26
                  sra          s9, t4, a4
                  addi         a2, t6, -197
                  sra          t2, a0, s6
                  nop
                  sra          ra, a6, a1
                  add          s7, t6, s2
                  xor          t1, a5, t1
                  auipc        t5, 49448
                  nop
                  and          t0, zero, s7
                  srl          t2, s9, s1
                  sltu         s3, a5, s1
                  sll          t0, s6, t0
                  xori         tp, s10, 1429
                  addi         a5, a2, -1002
                  ori          a3, a0, 1001
                  and          zero, s4, s11
                  xori         t3, ra, 1107
                  andi         t3, t6, 406
                  slli         a7, a1, 10
                  srai         a2, s8, 4
                  slli         s4, tp, 22
                  xori         gp, t5, 223
                  sub          s1, s5, s8
                  srli         t4, a6, 15
                  slti         gp, a3, 859
                  sltiu        t1, a5, 219
                  srai         t1, s10, 16
                  srli         a3, s6, 0
                  auipc        t4, 466176
                  srli         a0, zero, 31
                  xori         s4, s6, -1621
                  sub          t3, tp, ra
                  or           s2, s7, a7
                  sltu         a7, a7, s1
                  sra          zero, a7, t6
                  add          a5, ra, s8
                  addi         s2, a0, 1879
                  slli         tp, zero, 26
                  xor          t5, s2, a2
                  addi         s6, a6, -888
                  slti         sp, t1, -402
                  xori         a0, t3, -816
                  sll          a1, t6, tp
                  sll          t0, s8, s2
                  add          t1, tp, t1
                  add          zero, t1, t1
                  slli         gp, sp, 1
                  xori         a2, t1, 1423
                  sll          sp, s5, t3
                  xori         s5, s7, 304
                  andi         a2, a5, 701
                  sltiu        t2, t2, 699
                  ori          ra, s0, -559
                  auipc        s1, 259459
                  and          ra, a5, a6
                  ori          s8, a3, 1946
                  andi         a0, s9, 1
                  srl          t3, tp, t6
                  slt          s3, s7, t3
                  sub          t1, s8, t3
                  or           t4, t3, t0
                  sltiu        t1, s7, -1666
                  slt          t6, a1, tp
                  slli         a2, s11, 0
                  xori         t0, zero, -1574
                  xor          a3, sp, s3
                  srl          s4, s0, s4
                  addi         t1, a2, -1248
                  slt          t4, t3, a6
                  sltiu        a3, a2, 836
                  and          a1, s2, gp
                  sra          a0, a1, t0
                  xori         t1, a0, -363
                  sra          a7, t4, a4
                  add          t2, tp, s7
                  sll          tp, s11, a0
                  ori          s6, gp, -1209
                  or           a5, t5, t5
                  xori         s7, s0, -1920
                  sub          t5, a3, s11
                  srai         s4, s1, 26
                  srl          s10, t2, s5
                  sltu         t6, s6, a2
                  slti         a1, t3, -2008
                  lui          s4, 983196
                  slti         tp, s6, -1418
                  nop
                  srli         zero, a0, 3
                  ori          s7, s10, 1906
                  sltiu        a2, s10, 14
                  xor          s1, ra, sp
                  slti         s3, t1, 635
                  sltiu        t5, a1, -1299
                  xori         s9, a2, 291
                  slt          s7, zero, t6
                  lui          a1, 728725
                  sltiu        t4, a2, 131
                  sll          s7, a5, t6
                  nop
                  slt          t1, a5, a1
                  nop
                  ori          s4, a7, 205
                  sltiu        s4, s1, 668
                  srai         t2, gp, 13
                  srl          t4, gp, ra
                  lui          a0, 951255
                  slli         s1, t3, 10
                  addi         s2, s5, -91
                  slt          a0, s2, t5
                  sub          t3, s3, a2
                  sub          s7, s5, a1
                  xori         t2, s2, 1822
                  sll          s10, t1, t4
                  sub          t5, a3, a5
                  slti         a7, s8, 1616
                  slti         t1, t1, 178
                  sll          t4, s6, t0
                  sll          a0, s7, s7
                  addi         s5, s2, -1092
                  sub          a0, t2, a0
                  and          s10, a3, a3
                  and          ra, zero, zero
                  sub          a0, t2, s7
                  srl          gp, t3, t6
                  srai         s6, a2, 13
                  auipc        t6, 345909
                  sra          a7, t5, a3
                  sra          t0, s9, a7
                  nop
                  xor          t3, s5, a1
                  or           s6, s11, a2
                  and          s3, s7, a4
                  sltiu        zero, a4, 722
                  sltiu        s10, t5, 447
                  add          s9, s4, s4
                  sll          a6, t3, s4
                  slt          zero, a2, a1
                  sub          sp, s8, t0
                  nop
                  sltiu        a5, a5, 335
                  lui          s3, 808230
                  and          s2, sp, zero
                  slt          t3, gp, a1
                  addi         s8, t2, -801
                  auipc        s4, 956565
                  sltiu        t2, gp, 1607
                  slli         t4, t0, 7
                  sra          a2, s5, t4
                  xori         s2, s3, 445
                  xor          gp, a3, a1
                  and          t2, t5, a5
                  nop
                  sltu         s10, s7, a7
                  andi         sp, s4, -791
                  slli         a5, a1, 1
                  or           s3, s8, s4
                  and          ra, s2, s5
                  srai         s5, s10, 23
                  add          s1, sp, a1
                  xor          s7, ra, t0
                  slt          s4, s9, s7
                  srai         a6, gp, 23
                  slt          a1, s7, a0
                  sra          s8, a3, t5
                  auipc        t5, 868472
                  sra          t3, s8, a7
                  sll          zero, s9, a1
                  andi         a6, a2, -394
                  or           s6, a3, gp
                  andi         t0, tp, -1217
                  auipc        a7, 191128
                  sub          s6, s4, s3
                  auipc        a6, 511165
                  slt          a6, s6, a7
                  ori          s6, s5, 1707
                  andi         s8, s3, 1334
                  sub          t1, s0, t3
                  sltiu        t1, t1, 622
                  auipc        a6, 604750
                  slt          a2, s1, a7
                  slti         zero, s9, 1262
                  lui          tp, 527457
                  andi         t5, a7, -1525
                  sltu         ra, a2, a1
                  and          s7, t4, s8
                  sra          s1, tp, t0
                  sra          a2, a6, s9
                  sll          s3, ra, s1
                  ori          a2, t5, 1407
                  srli         s6, a0, 7
                  slti         a1, s6, 1350
                  add          tp, s6, a5
                  nop
                  addi         a5, s0, -47
                  sltiu        s8, s3, 1231
                  ori          ra, s4, -1710
                  sra          ra, s1, s11
                  sltu         a5, ra, s6
                  and          sp, t2, t0
                  xor          a0, s2, a0
                  srli         s2, a7, 20
                  xori         a1, t3, 615
                  add          t2, ra, t0
                  or           t3, gp, ra
                  srl          a3, s8, s7
                  slli         zero, s4, 19
                  sra          s5, a2, a7
                  and          ra, zero, a6
                  addi         a5, s11, 1376
                  slti         a1, s0, -1985
                  and          t5, s8, gp
                  slt          zero, tp, s2
                  sltu         t1, a4, tp
                  add          s2, a5, a6
                  and          t1, t4, s10
                  lui          gp, 963570
                  sll          a6, a7, a7
                  auipc        a7, 974027
                  slti         a1, s10, -10
                  slti         t0, s7, 975
                  sub          sp, a6, t5
                  sltiu        s6, zero, 592
                  andi         s4, s6, -1462
                  slli         t1, gp, 26
                  slt          t3, a3, t6
                  srli         ra, tp, 4
                  srli         s7, s1, 8
                  sub          zero, a6, a5
                  or           s2, t4, a4
                  andi         a0, a7, 1205
                  addi         t5, t5, 1994
                  nop
                  srli         t5, gp, 9
                  andi         sp, s9, 1162
                  nop
                  sll          t4, s2, s10
                  srli         sp, s4, 4
                  sll          s1, s10, s8
                  sltiu        a2, sp, -1004
                  slt          s6, s7, a1
                  sub          t6, s1, s11
                  xor          zero, gp, zero
                  or           s6, s8, t6
                  srli         s6, a0, 24
                  and          s1, gp, s11
                  addi         a7, a1, 951
                  or           t6, s10, a3
                  srl          gp, s2, t1
                  slti         s6, ra, 1976
                  addi         gp, s6, -403
                  sltu         a3, a5, a5
                  slt          s6, s10, t4
                  addi         s10, a5, -519
                  add          zero, t6, zero
                  ori          s4, t4, -1769
                  slti         s8, sp, 182
                  ori          t1, ra, 722
                  sub          t4, t4, t6
                  add          s6, tp, ra
                  sltu         s10, s7, s9
                  slt          s10, s9, s0
                  sra          a6, s3, a2
                  andi         s1, s11, -483
                  srl          a3, t1, t3
                  addi         s10, s8, -1586
                  xor          a0, s5, a4
                  auipc        a1, 64137
                  addi         t0, s3, 1540
                  srli         gp, s3, 30
                  nop
                  ori          t5, t0, 827
                  sltu         s3, a2, a0
                  andi         gp, tp, 346
                  sltu         t4, t2, a5
                  srai         s2, sp, 0
                  andi         s9, a2, 548
                  add          s9, a2, gp
                  slt          t6, sp, a2
                  auipc        s3, 676296
                  or           s3, zero, s1
                  srai         s1, s5, 17
                  slti         a1, t5, -1860
                  lui          a2, 65273
                  lui          zero, 367257
                  sltiu        a5, s10, 1725
                  sll          t2, t6, s2
                  sltiu        s1, t5, -4
                  ori          s10, s11, -99
                  or           a2, t3, s1
                  andi         s8, s7, 1279
                  slti         s10, t1, 1502
                  slli         t3, t5, 10
                  add          a1, a5, s11
                  sub          s9, s6, a2
                  ori          s10, s8, 271
                  sll          t6, s4, s3
                  slt          t6, a6, t6
                  or           t0, a5, s9
                  and          a5, zero, t0
                  srai         s1, zero, 17
                  andi         a6, s8, -552
                  slt          s3, a3, s10
                  ori          s9, gp, -1891
                  ori          s9, s1, -1317
                  slli         s6, t2, 16
                  andi         ra, t5, 1780
                  andi         zero, gp, -408
                  addi         a3, a1, -1077
                  or           t3, t5, a2
                  and          s8, t0, ra
                  auipc        a1, 573405
                  sub          t0, a7, t3
                  add          gp, s3, a0
                  sltu         t5, s0, a1
                  slt          a2, s9, s2
                  srl          zero, zero, tp
                  xori         a0, gp, -1100
                  sra          a1, gp, t1
                  li           s8, 0xb8d56e95 #start riscv_int_numeric_corner_stream_6
                  li           s6, 0xffffffff
                  li           gp, 0x86607594
                  li           s2, 0xffffffff
                  li           tp, 0x0
                  li           t5, 0xc14edbdb
                  li           sp, 0xffffffff
                  li           s10, 0x80000000
                  li           s7, 0x0
                  li           t6, 0xffffffff
                  nop
                  auipc        s6, 338037
                  addi         t5, sp, 1415
                  lui          t6, 592622
                  lui          sp, 512231
                  nop
                  addi         tp, t5, -704
                  add          gp, s8, gp
                  auipc        tp, 174544
                  addi         t5, t6, -126
                  lui          sp, 918846
                  sub          t5, tp, s6
                  add          sp, s6, s8
                  lui          tp, 609040
                  auipc        s8, 220715
                  nop
                  addi         gp, gp, 257
                  addi         s7, t5, -1896
                  lui          tp, 706407
                  lui          t6, 24879
                  lui          s10, 487742
                  add          s10, s8, s2
                  sub          s2, sp, gp
                  sub          s6, s7, s7
                  add          sp, s2, sp
                  lui          sp, 10325
                  auipc        s8, 115590 #end riscv_int_numeric_corner_stream_6
                  add          a2, s9, s2
                  add          sp, s7, ra
                  and          tp, a0, s10
                  srli         a6, s9, 30
                  add          t5, a2, s1
                  nop
                  lui          ra, 354128
                  nop
                  sltu         t5, a0, s10
                  sll          t0, t4, a4
                  lui          s10, 347758
                  lui          t0, 4127
                  and          t3, s8, t1
                  slli         t6, s5, 14
                  xor          s8, tp, a0
                  xor          sp, s2, a4
                  add          s6, t5, a7
                  add          s8, s0, a2
                  ori          a0, t0, 140
                  slti         t5, t0, -1725
                  add          a6, s6, t4
                  slli         t1, s8, 22
                  sltu         a7, s5, s2
                  lui          s1, 105485
                  srai         s10, s3, 20
                  slt          t0, s3, sp
                  ori          s8, t2, -1043
                  addi         zero, s8, 1821
                  srli         zero, a4, 28
                  add          s9, t0, a7
                  slli         s10, s6, 13
                  add          t3, s11, t4
                  sltu         sp, zero, s0
                  slti         a6, s9, 309
                  slt          a2, a1, gp
                  slti         a0, s6, 1926
                  addi         s8, sp, -122
                  or           t2, a5, s7
                  auipc        s2, 584443
                  lui          a1, 354651
                  srai         a5, t2, 5
                  slti         s10, ra, 230
                  sll          a5, t0, a3
                  xori         s5, a2, -1233
                  or           gp, a6, s8
                  srai         a6, s10, 20
                  lui          t2, 493091
                  sltiu        s2, t5, -1814
                  lui          a2, 864254
                  or           s7, s0, a4
                  slt          a5, a1, s10
                  slt          a1, t3, zero
                  slti         a2, a0, 639
                  and          t3, zero, a7
                  srli         gp, a2, 30
                  or           gp, tp, s7
                  srli         gp, t5, 6
                  ori          a0, zero, 965
                  sub          s1, t4, a4
                  sltiu        zero, s11, -268
                  and          s4, s4, s5
                  or           s9, t5, s1
                  sltu         tp, s10, s5
                  andi         t5, a7, 582
                  srai         a1, t5, 27
                  slli         t6, a5, 22
                  slti         s8, a0, -1112
                  slt          a3, s7, s5
                  sub          a3, s4, s10
                  slt          t1, t3, t0
                  sll          tp, t0, s5
                  slti         a6, a3, 1422
                  xor          s3, a7, s5
                  sltu         zero, t0, a6
                  xori         a1, s7, -1784
                  add          zero, t3, s8
                  slli         t3, a0, 20
                  sra          s1, s4, zero
                  sltiu        t4, a7, 260
                  and          a3, zero, s10
                  andi         a0, ra, 1724
                  auipc        s6, 4346
                  nop
                  addi         zero, zero, 388
                  or           sp, t2, t6
                  sltu         t6, s6, s8
                  slli         a2, gp, 21
                  sltu         t4, a0, s3
                  sltu         a0, s4, s3
                  ori          s5, s3, 1533
                  auipc        zero, 676399
                  sltiu        s6, s10, 1688
                  slli         s1, s10, 19
                  and          a0, ra, sp
                  or           ra, zero, a0
                  add          ra, s11, s1
                  or           s1, s4, tp
                  srli         gp, t2, 18
                  nop
                  slli         t3, s1, 23
                  and          s8, s5, a5
                  sra          zero, t6, t0
                  sltiu        ra, a0, -443
                  xori         s5, s4, 1639
                  sub          gp, s10, tp
                  sltu         zero, sp, s6
                  sra          a7, t0, zero
                  slt          sp, s6, t3
                  srli         a0, s8, 2
                  xori         s8, a2, 277
                  ori          a1, s2, 675
                  lui          a5, 1023984
                  sra          s6, s2, a1
                  lui          s5, 599791
                  slli         s3, a0, 7
                  andi         t2, t0, -1922
                  addi         t5, s7, -1373
                  and          gp, t3, s7
                  srai         s8, s7, 2
                  lui          a6, 761327
                  sub          s5, t0, s3
                  lui          s1, 1035261
                  andi         ra, s8, -2035
                  and          a3, gp, a6
                  srl          a0, zero, s7
                  xor          t2, s9, s0
                  sra          t4, s3, a0
                  slti         t2, s7, 888
                  sub          a3, s8, gp
                  or           t0, a7, s6
                  add          s5, t4, a3
                  sltu         s8, s9, s3
                  sltu         tp, t0, a6
                  srai         a1, tp, 9
                  andi         s4, t1, 1238
                  andi         a0, s0, -979
                  ori          s7, s6, 1547
                  xori         sp, s11, -172
                  srl          s1, ra, s5
                  ori          s8, a5, -492
                  add          tp, s1, s1
                  srai         t5, t1, 4
                  srai         s8, s6, 31
                  xor          t6, t4, t2
                  nop
                  sra          t2, a1, gp
                  or           s6, ra, tp
                  srai         s4, ra, 18
                  sll          t2, t6, sp
                  andi         t5, s5, 810
                  or           ra, a1, ra
                  or           zero, a6, a2
                  add          t6, sp, t0
                  srai         s9, s5, 10
                  srai         s7, t1, 26
                  slti         a5, ra, 1270
                  srli         a6, s3, 26
                  nop
                  sll          s2, t1, t1
                  xor          t0, t2, t5
                  xor          s5, sp, t3
                  andi         t0, a2, -1655
                  sltiu        s4, s5, -1320
                  andi         s2, a3, -1308
                  or           s6, s2, t1
                  auipc        s7, 360117
                  and          s5, s6, s6
                  sub          t2, gp, zero
                  andi         tp, s0, 850
                  lui          a7, 34424
                  sub          s5, t5, s0
                  or           a1, s2, s1
                  auipc        s5, 468267
                  andi         s2, s1, -1778
                  slli         t2, a4, 31
                  sll          ra, s1, s9
                  xori         gp, a4, -954
                  and          t4, a6, s11
                  slli         t4, s9, 5
                  andi         gp, s4, 888
                  and          t4, s8, t4
                  andi         s8, s11, -843
                  slli         a6, t5, 23
                  sra          a7, a7, s3
                  sra          t0, t1, s7
                  slli         s10, a2, 3
                  lui          a0, 774240
                  sub          a0, s5, s2
                  or           s1, s4, ra
                  andi         s9, t0, -190
                  or           a3, a3, gp
                  lui          t0, 671716
                  addi         a1, t1, 352
                  auipc        s2, 1043432
                  slt          t3, sp, t4
                  addi         s1, t6, 1181
                  or           s1, s9, t3
                  slli         s6, sp, 8
                  nop
                  sltu         t3, a6, a4
                  xori         t2, t4, -85
                  or           s8, ra, a7
                  andi         sp, s9, -1243
                  srli         sp, gp, 15
                  srai         s5, a1, 28
                  xor          gp, s3, s3
                  and          s4, s9, t4
                  sltiu        t0, a5, -373
                  auipc        a0, 415157
                  srl          a1, a3, sp
                  slti         s9, s3, 1666
                  sltu         zero, s4, a2
                  xor          s6, gp, s0
                  slli         t6, a1, 10
                  srli         a0, s11, 7
                  xor          a0, a5, a0
                  xor          t5, ra, s5
                  and          t6, s6, t4
                  slli         a3, t6, 25
                  sub          a1, s8, a1
                  xor          t2, a2, s10
                  auipc        s4, 766046
                  auipc        t6, 710511
                  or           a7, t2, t2
                  slli         t2, s10, 19
                  sll          t4, s2, t0
                  nop
                  addi         s1, s10, -178
                  sltu         s8, a6, s9
                  ori          t0, t4, -1139
                  srli         s3, a2, 5
                  lui          s4, 485067
                  srai         t6, zero, 13
                  slli         zero, s9, 0
                  add          s3, a6, s1
                  srl          t4, a0, t5
                  slti         sp, sp, -62
                  and          tp, t4, s9
                  auipc        t3, 937836
                  slti         s7, t6, -438
                  or           s2, s6, a1
                  xor          a5, t4, t3
                  addi         t4, ra, 510
                  slt          a2, a4, a4
                  auipc        a3, 928996
                  add          s8, sp, t6
                  sub          a6, s6, t2
                  slti         gp, sp, -1949
                  ori          t6, t1, 137
                  sltu         s2, zero, s11
                  ori          sp, s7, -738
                  srai         s8, a0, 31
                  ori          t0, a7, 1637
                  sra          t5, s11, sp
                  srai         a7, t1, 23
                  srli         s2, t5, 18
                  xori         ra, s1, -73
                  xori         t1, t6, 447
                  srli         a5, t5, 12
                  sltu         a6, s3, s9
                  andi         a7, s3, 1840
                  sll          t6, ra, a1
                  andi         s7, s11, 344
                  and          tp, s4, gp
                  auipc        t4, 946842
                  slt          s8, s10, a0
                  and          a0, a4, s4
                  add          a5, s4, s9
                  addi         a5, sp, -388
                  nop
                  sltu         gp, zero, gp
                  slt          sp, a2, t2
                  addi         s10, t0, 1484
                  xori         s7, s10, 1476
                  sltu         t2, s3, s4
                  addi         t3, s8, -483
                  sltiu        zero, tp, -1720
                  lui          tp, 32919
                  sltiu        s3, s4, 1628
                  sll          t4, a0, a7
                  sltu         gp, a6, t5
                  sub          t6, a4, sp
                  xor          s1, a3, s7
                  lui          t1, 91951
                  sra          a1, s11, a1
                  slti         a0, s3, -895
                  addi         t4, a3, -1301
                  slti         s10, s10, 353
                  sra          s6, a5, t4
                  slli         t6, s3, 23
                  nop
                  or           s5, a2, a3
                  srl          s9, s3, a5
                  srl          s2, a0, s10
                  sub          t6, t1, s8
                  and          s3, a5, a1
                  sra          t2, t0, t1
                  auipc        a2, 207768
                  slt          t2, a5, a6
                  auipc        a7, 77743
                  andi         s6, t4, 873
                  add          sp, a5, t0
                  auipc        a2, 301838
                  sll          a3, a4, t6
                  addi         a5, a0, -170
                  add          s8, a5, s6
                  andi         t3, s3, 1450
                  nop
                  auipc        t6, 384221
                  sll          t1, s7, a5
                  xori         s3, s2, -1743
                  sltu         ra, a2, sp
                  or           sp, gp, t1
                  or           s10, ra, s1
                  nop
                  add          t4, a5, s1
                  add          t3, s11, s1
                  andi         a6, s5, -1851
                  slti         s4, s10, -1698
                  nop
                  addi         tp, t0, 800
                  and          t1, a5, ra
                  slli         a0, gp, 20
                  srli         s6, a2, 12
                  add          a6, t1, zero
                  slli         t1, a5, 5
                  sltiu        s4, s11, -726
                  xor          s2, gp, t3
                  xor          zero, ra, s5
                  srli         a7, s4, 13
                  srli         t1, t3, 15
                  srai         s9, sp, 21
                  nop
                  slli         s10, t6, 1
                  xor          s9, t5, zero
                  and          a6, zero, tp
                  sll          zero, s0, t1
                  slli         t6, zero, 10
                  add          a7, a5, tp
                  srai         t4, a0, 29
                  sll          s10, t4, zero
                  srli         t4, tp, 16
                  srl          t0, ra, a4
                  xori         t6, a3, -534
                  slli         t0, a7, 29
                  slt          t4, t3, t0
                  sltu         s9, ra, a3
                  slti         tp, a3, -1625
                  srli         s8, tp, 6
                  slli         s3, s2, 26
                  sub          ra, s4, a2
                  add          a3, s10, s11
                  sra          a2, s3, a3
                  sltiu        s8, t2, -1046
                  xori         s9, a4, 178
                  sra          s9, a3, a0
                  sll          s2, s10, s10
                  and          a7, s8, t0
                  addi         s4, s11, -1563
                  slli         s1, s3, 23
                  lui          s5, 594399
                  ori          zero, t1, 1498
                  sll          a5, a2, t1
                  nop
                  xor          s4, a3, s8
                  or           a0, a7, s3
                  and          zero, a3, t6
                  ori          tp, tp, 1197
                  sub          a6, a1, s0
                  sll          a3, s9, t4
                  sll          s9, t5, a4
                  xor          sp, a3, tp
                  andi         t4, t3, -485
                  addi         t2, s2, -1635
                  ori          t2, a3, 1724
                  nop
                  slt          a1, s4, a7
                  and          a0, s0, s5
                  srli         s2, s9, 9
                  and          a2, t0, t0
                  add          a5, a1, s2
                  sub          a0, t1, tp
                  ori          t5, s0, -727
                  sll          t2, a2, a7
                  sll          t3, s7, a6
                  and          t1, a1, t5
                  sltu         t0, a3, t1
                  or           a1, s1, s8
                  andi         zero, s9, -56
                  nop
                  li           t0, 0x2382ef32 #start riscv_int_numeric_corner_stream_5
                  li           a5, 0xffffffff
                  li           s10, 0xffffffff
                  li           t4, 0xffffffff
                  li           s4, 0x0
                  li           s2, 0x3e760ec4
                  li           a7, 0x80000000
                  li           a3, 0xd6f1b12b
                  li           a2, 0x80000000
                  li           t3, 0x80000000
                  addi         t3, a3, -672
                  auipc        a2, 154265
                  nop
                  add          s10, a7, a3
                  nop
                  addi         a2, s4, -1751
                  nop
                  nop
                  add          a5, s10, a3
                  nop
                  lui          t4, 370694
                  nop
                  lui          t3, 344743
                  sub          s2, t0, t0
                  sub          a3, a5, t0
                  addi         t4, a3, 1844
                  addi         t3, t0, -1257 #end riscv_int_numeric_corner_stream_5
                  srai         sp, t4, 7
                  nop
                  slt          t0, s7, s2
                  lui          t2, 961843
                  slli         s1, s9, 18
                  nop
                  lui          s3, 976772
                  lui          a5, 546748
                  addi         t6, t0, -1133
                  srli         t1, a7, 13
                  xori         t6, tp, -1040
                  sra          t3, s6, s6
                  xor          t5, t3, t5
                  xori         s1, s0, -1480
                  slti         t2, t4, -1303
                  sltu         s2, s4, s4
                  srai         s1, s4, 16
                  auipc        t5, 13560
                  andi         s2, s10, -531
                  ori          a5, t2, -960
                  sltiu        t1, a3, 1261
                  sub          zero, zero, t1
                  sll          t2, s10, t3
                  ori          t6, a3, 548
                  slti         t4, t4, 1239
                  slti         t0, t3, -1951
                  add          tp, t3, zero
                  sll          s8, s9, a4
                  sub          a5, s2, a4
                  slt          s6, s1, s6
                  lui          a5, 240875
                  and          t6, t6, s4
                  srl          a6, s8, a4
                  slti         s6, s3, 997
                  sra          s2, a7, s8
                  andi         t1, tp, 386
                  and          s8, s2, s10
                  srai         s7, s5, 21
                  sll          t0, t4, s4
                  xori         s8, s2, 1228
                  or           a7, gp, tp
                  sll          t3, t5, t1
                  andi         zero, t6, -1093
                  ori          a6, s0, 2025
                  srli         s5, a3, 7
                  srl          ra, s3, s7
                  slti         t5, a5, 1982
                  xor          s5, t3, t1
                  sra          ra, a0, t2
                  srl          a5, gp, t4
                  xor          t4, s4, tp
                  ori          a0, s8, 1405
                  slli         s10, s4, 7
                  andi         t6, s0, -1368
                  slti         t2, a5, 353
                  add          t2, s5, a3
                  slti         zero, s4, -63
                  add          ra, t5, a5
                  xor          t4, s8, a2
                  xor          gp, s2, s0
                  add          s4, tp, s2
                  srli         t1, a2, 7
                  srai         a7, sp, 22
                  slti         a3, tp, 1860
                  slti         s9, t0, -1710
                  and          a5, s11, s3
                  sltu         s5, t4, a2
                  xor          t1, ra, t5
                  ori          sp, s2, -124
                  sra          t3, gp, s5
                  srl          a3, t4, a0
                  sub          t2, s6, s10
                  ori          tp, a6, -1421
                  slli         a7, tp, 7
                  sltiu        s2, s11, -1057
                  ori          s2, s2, -521
                  srl          a6, s11, s11
                  sra          t1, s9, a5
                  slti         t5, a7, -1494
                  ori          s10, a3, 1125
                  srl          t1, t1, s5
                  slli         gp, gp, 29
                  xori         gp, a2, -1625
                  srai         s2, gp, 1
                  sll          a3, t5, s0
                  lui          t5, 468075
                  nop
                  srl          tp, a6, ra
                  slt          a2, a6, s9
                  ori          a7, s11, -1660
                  xori         a3, a4, 1061
                  sra          s2, a1, a2
                  xori         a0, t5, -459
                  lui          t4, 933775
                  srli         a3, a7, 16
                  slti         s6, a6, 981
                  and          s7, a0, a2
                  sra          a3, t0, s8
                  sra          ra, s9, s8
                  xor          a5, s8, a6
                  sll          t2, t3, s0
                  srli         s9, t4, 29
                  and          s10, s10, s11
                  sub          s9, t6, a3
                  lui          gp, 385234
                  sub          t2, t0, s6
                  srai         s1, tp, 19
                  addi         s6, t5, 1991
                  or           a3, s3, t2
                  nop
                  nop
                  addi         a6, s2, -1653
                  addi         s8, a0, -1643
                  sltu         s9, a7, s1
                  lui          t0, 510486
                  add          s4, a1, a0
                  xor          a3, s6, s0
                  sltiu        gp, s9, 1792
                  sltiu        t1, tp, 582
                  xor          t2, s7, a1
                  ori          s4, t1, 1314
                  sltu         t5, tp, s3
                  srl          t0, s3, a6
                  xori         sp, a3, 1281
                  xor          zero, s3, ra
                  srai         s5, t6, 10
                  sltu         s7, s2, s8
                  nop
                  srli         s2, s7, 18
                  sltu         s5, t4, t1
                  and          s10, zero, s6
                  slt          tp, s1, a4
                  srai         t6, a6, 12
                  sll          ra, t6, t5
                  nop
                  xori         a3, a0, -1114
                  lui          s8, 518589
                  addi         a7, s7, -1615
                  srli         a5, a5, 26
                  xor          tp, a4, a6
                  sltiu        t3, s6, -590
                  sltu         s8, t2, s2
                  srli         sp, s8, 3
                  xor          a0, s8, tp
                  sltiu        a6, t5, 1600
                  lui          zero, 374635
                  sltiu        s2, t2, -790
                  slti         s7, s0, -1650
                  andi         t4, s7, -496
                  nop
                  sltu         a6, s8, a2
                  sub          t0, a6, a4
                  nop
                  sub          t4, a5, s11
                  and          t3, s9, a5
                  slt          s8, a2, s10
                  srai         a7, a7, 26
                  sll          a3, s1, t6
                  xor          a0, s4, s8
                  srl          s2, t0, s8
                  nop
                  slt          a3, t2, s11
                  srli         t2, ra, 25
                  sltiu        t4, a1, 1831
                  auipc        s7, 725459
                  srl          t6, ra, a0
                  nop
                  slt          tp, s1, s3
                  srli         zero, a5, 24
                  srl          t1, t3, t2
                  sll          s7, s6, s1
                  srai         t2, s6, 10
                  sub          a1, a2, s2
                  slti         t0, gp, 514
                  srl          t3, t3, s7
                  slt          s9, s0, s3
                  srl          a6, sp, sp
                  andi         s2, t0, 179
                  xori         a0, t1, 1850
                  xor          t0, s2, t6
                  andi         a6, a0, 1961
                  slli         s6, s5, 3
                  slli         a0, s7, 23
                  srli         ra, a0, 23
                  sltiu        a5, tp, 1758
                  addi         s1, t4, -1419
                  auipc        s1, 1003920
                  xori         a6, t0, 662
                  sltu         s4, s0, tp
                  or           tp, s6, a2
                  slti         a6, t1, -727
                  or           a3, a7, t5
                  or           t5, s4, t5
                  addi         t2, a7, -47
                  and          t1, zero, s9
                  sub          gp, s6, s6
                  sra          s1, sp, s2
                  slt          a2, ra, sp
                  slli         a0, a5, 9
                  sltu         a2, sp, a4
                  srai         a1, t6, 24
                  xori         a3, a4, -1556
                  sltu         t2, a3, s9
                  xor          s5, t6, s4
                  sub          a2, a3, t5
                  srl          s9, tp, s1
                  srli         a2, s8, 25
                  srli         t3, ra, 13
                  srli         s6, s1, 18
                  slt          s6, a3, tp
                  nop
                  auipc        a2, 75020
                  slli         a7, a6, 7
                  andi         t2, s5, 1266
                  slli         s6, s5, 22
                  nop
                  slli         s7, t0, 17
                  sltu         tp, s0, gp
                  srl          a6, ra, s10
                  slli         gp, s5, 10
                  addi         a1, s4, -1060
                  sltu         a2, s3, t2
                  sll          s9, t3, t5
                  nop
                  addi         t3, a4, 1688
                  xori         s10, s3, 116
                  xor          a1, s4, s1
                  auipc        zero, 26539
                  sltiu        a1, t2, 420
                  xori         tp, s5, 204
                  auipc        s5, 312512
                  sub          s7, t6, zero
                  andi         a2, s1, -1648
                  sltu         a6, t6, a7
                  and          s1, t4, t5
                  sltu         s6, t1, s8
                  lui          t0, 203005
                  slt          ra, a5, t4
                  addi         t3, a4, 138
                  lui          s5, 842237
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           t2, 0x80000000
                  li           ra, 0xffffffff
                  li           a2, 0x776739b3
                  li           a1, 0xffffffff
                  li           a6, 0xffffffff
                  li           t1, 0xbd322b7c
                  li           a5, 0x3e4c7b39
                  li           gp, 0xffffffff
                  li           t3, 0x80000000
                  lui          a2, 270544
                  auipc        gp, 708766
                  nop
                  nop
                  addi         a2, a5, 1542
                  sub          ra, a2, t4
                  addi         a1, gp, -1600
                  auipc        t3, 535782
                  addi         a5, t4, -1649
                  add          a2, a1, a5
                  lui          t2, 88877
                  auipc        a2, 442473
                  nop
                  sub          t3, t3, t2
                  add          t1, ra, a2 #end riscv_int_numeric_corner_stream_13
                  ori          a0, s1, 364
                  slli         t0, s2, 27
                  andi         t2, s11, -1695
                  slt          s4, s9, t5
                  and          s10, a7, s11
                  or           a0, t1, ra
                  xor          s6, s7, a5
                  auipc        s6, 454703
                  xor          a7, s0, t5
                  andi         s3, t5, -402
                  sltu         s3, s4, a2
                  andi         t4, t4, -848
                  lui          gp, 421798
                  xori         s9, s8, -980
                  sra          s5, t5, t4
                  slti         a2, a3, -1487
                  slt          a6, s8, t4
                  slti         s3, s11, 1308
                  srai         a5, s8, 22
                  srl          t3, a4, t3
                  and          s8, s9, s8
                  ori          t0, a5, -692
                  ori          tp, a4, 662
                  lui          t6, 420304
                  srl          t6, t3, a1
                  nop
                  srl          s4, s7, t6
                  xori         s7, s6, -1341
                  addi         a6, a2, 171
                  xor          s7, t6, t3
                  srli         t0, a3, 6
                  sltiu        a2, t5, -1684
                  ori          s6, s4, 597
                  xor          a7, s11, t6
                  addi         s1, t6, 504
                  sra          t3, s9, t6
                  srai         s8, s1, 17
                  sltiu        t1, s11, -1731
                  srl          a2, a5, t3
                  xor          s4, t4, t4
                  sub          s9, a5, tp
                  lui          t4, 408548
                  sll          zero, a3, a6
                  srai         s8, s10, 5
                  sll          t3, s11, s5
                  lui          a3, 355868
                  srl          s9, a5, a0
                  slt          s2, s6, a0
                  xor          t0, s4, t4
                  slt          s3, t1, s10
                  sub          tp, s10, s10
                  slt          a5, a2, s10
                  xor          t0, s8, a4
                  add          s3, t4, s10
                  sra          s2, a3, a1
                  andi         a1, s6, 702
                  auipc        a1, 398279
                  add          a1, gp, zero
                  and          ra, s6, a6
                  and          s4, t3, s3
                  add          s8, a5, t3
                  slti         a7, a6, 277
                  or           a1, s8, s2
                  slt          zero, gp, a7
                  add          t4, ra, zero
                  ori          t6, a2, 954
                  slli         a0, a3, 27
                  add          s9, a1, a7
                  sub          t6, s10, t5
                  slli         a2, zero, 25
                  addi         t5, a3, 428
                  and          s6, ra, s4
                  slli         a6, a3, 24
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           a1, 0xeb343031
                  li           s6, 0x80000000
                  li           tp, 0x80000000
                  li           a2, 0x0
                  li           a3, 0xbdb91bd4
                  li           s4, 0xffffffff
                  li           a0, 0x80000000
                  li           a5, 0xffffffff
                  li           s5, 0x6fb78c89
                  sub          a1, s4, tp
                  addi         s4, tp, -1772
                  addi         a5, s5, 41
                  addi         a0, a1, 4
                  nop
                  lui          a3, 659035
                  auipc        s6, 204815
                  nop
                  lui          a5, 219922
                  add          s8, tp, a2
                  sub          s4, a2, a5
                  lui          a1, 962478
                  auipc        s4, 826566
                  lui          s5, 439513
                  sub          s8, s5, s4 #end riscv_int_numeric_corner_stream_3
                  and          a1, a1, t2
                  slt          s10, s1, a1
                  xori         a1, t2, 1563
                  srai         s1, s2, 16
                  addi         s9, t3, 1805
                  and          a7, a7, s2
                  andi         zero, t1, -451
                  or           t3, a0, s10
                  srli         s10, sp, 31
                  sub          s2, s11, s9
                  add          s7, t0, sp
                  srl          a7, s1, s0
                  or           s10, a1, s9
                  sll          a3, a1, ra
                  addi         s3, a3, -809
                  sub          a5, s6, s10
                  auipc        a6, 348911
                  ori          s2, a1, -89
                  add          a7, a1, s11
                  sltiu        s6, s4, -2006
                  nop
                  sra          ra, s2, gp
                  xori         t6, a2, -988
                  srl          t0, a4, s3
                  nop
                  sub          s3, t1, a5
                  slli         s4, t4, 30
                  or           a1, t3, a5
                  and          s2, a7, s3
                  xori         t5, s10, 185
                  ori          sp, t0, 1318
                  auipc        t5, 455636
                  slt          a1, a5, a6
                  or           t2, t5, s9
                  slti         t6, sp, -1597
                  lui          a1, 1028221
                  or           t5, s8, t6
                  slti         s10, s11, 1792
                  slt          sp, ra, t3
                  nop
                  srl          s1, s5, t4
                  andi         a6, s5, 462
                  slt          a7, t6, s2
                  sra          a1, zero, a4
                  srl          a3, ra, t4
                  srai         s4, s10, 30
                  andi         tp, s8, 1915
                  add          s3, a4, sp
                  auipc        s2, 47832
                  or           t3, a7, a3
                  sub          s8, t1, s1
                  srai         a2, s1, 17
                  and          t1, tp, a0
                  or           a3, s10, sp
                  addi         a1, s1, 117
                  and          t3, s7, s8
                  sra          a7, s7, t5
                  addi         a1, s1, -32
                  sra          a3, a0, s0
                  lui          ra, 7446
                  slli         s3, t2, 2
                  addi         a0, ra, -256
                  ori          s5, s7, -1126
                  lui          s9, 958510
                  andi         ra, t4, -559
                  sra          sp, t6, zero
                  nop
                  lui          s6, 428893
                  addi         s7, t6, 1392
                  addi         a6, t1, 683
                  lui          s7, 844424
                  addi         t3, a3, -2047
                  sub          gp, a4, t4
                  sra          tp, s5, s4
                  sra          t4, s11, a5
                  sra          s9, sp, ra
                  srli         a5, s11, 24
                  srl          t3, a1, a0
                  srai         s1, s0, 0
                  addi         s1, t6, -1358
                  srli         s8, a5, 13
                  sra          t1, a1, a1
                  sltiu        t2, s10, -1442
                  sltiu        t5, a2, 415
                  addi         s5, s1, -122
                  srl          t5, gp, a5
                  sll          t1, s1, s2
                  lui          zero, 924937
                  slt          s8, ra, t6
                  andi         t2, t2, -2042
                  nop
                  srai         s2, zero, 18
                  addi         t0, gp, 1999
                  srli         sp, a4, 9
                  sub          s6, t1, a2
                  slt          t4, s9, s3
                  addi         t2, t6, 1139
                  slt          t5, s2, sp
                  sub          tp, s2, s8
                  sll          t4, a5, a7
                  sltiu        s6, t3, -1582
                  addi         sp, s3, 329
                  lui          s6, 218552
                  srai         t0, a5, 12
                  nop
                  auipc        s9, 898721
                  sub          t1, t2, a3
                  ori          s8, a5, -74
                  sll          s7, t1, t1
                  sra          sp, s11, a3
                  andi         s8, a7, -349
                  sltiu        sp, t5, -1168
                  slt          ra, a4, sp
                  auipc        t5, 1012373
                  lui          s7, 441505
                  nop
                  andi         t6, gp, -832
                  or           s6, s8, s0
                  slt          t6, ra, s0
                  slt          t2, a3, ra
                  and          t2, t1, a2
                  nop
                  srai         t6, t3, 21
                  slli         tp, a4, 19
                  add          t3, a7, s1
                  auipc        a1, 699936
                  sub          sp, sp, t4
                  slt          zero, a2, s3
                  auipc        t1, 609627
                  sltiu        a1, s6, -1627
                  addi         t2, s7, 2014
                  and          a2, s7, t3
                  nop
                  and          s1, s6, t3
                  lui          a1, 270678
                  xori         s2, s8, -720
                  srli         sp, s4, 11
                  addi         t4, gp, 1733
                  sltiu        t0, t0, -56
                  addi         sp, a0, -1144
                  slt          t5, a4, a2
                  sltu         a5, zero, t5
                  and          a5, a2, gp
                  srai         a3, s8, 11
                  add          s7, a2, a0
                  sll          gp, a2, s10
                  lui          zero, 420618
                  auipc        s8, 944029
                  sltu         a5, zero, t2
                  andi         s4, a3, 1832
                  sub          t5, gp, s4
                  nop
                  slli         s3, sp, 15
                  srai         t5, s10, 9
                  sub          a5, a6, s4
                  nop
                  addi         t6, a5, -1741
                  sltu         t6, t4, a5
                  sltu         a1, s2, t5
                  nop
                  sra          t4, t2, a0
                  sll          t4, s1, s7
                  srai         tp, a0, 19
                  nop
                  sltiu        t4, t6, -798
                  xori         s4, a2, -1148
                  ori          a0, s10, 1143
                  sub          s8, a4, zero
                  sra          s7, a2, s1
                  srai         t1, t6, 13
                  sltu         t5, gp, tp
                  srli         t4, s9, 8
                  add          t3, t1, a4
                  sll          sp, s8, s9
                  srl          s7, s0, sp
                  auipc        s1, 665629
                  slli         t2, a0, 18
                  sltu         a7, t1, tp
                  add          zero, a0, zero
                  sltiu        s9, s9, 1754
                  lui          a7, 557985
                  sltu         t4, t6, a3
                  addi         tp, gp, 1543
                  ori          s10, a4, 2018
                  xor          s6, s3, t3
                  sra          t2, t1, s2
                  srli         t6, t3, 9
                  slt          s3, a6, t1
                  xori         t5, a7, 1547
                  sra          t6, a2, t3
                  andi         t4, s8, -1051
                  sltiu        t5, s7, -182
                  addi         a5, t6, 1262
                  lui          t5, 689807
                  auipc        ra, 458385
                  xor          t4, a2, t0
                  auipc        a5, 87304
                  slti         t4, a7, 922
                  srl          sp, t2, s4
                  addi         ra, t2, -918
                  ori          s7, t2, 1889
                  sltu         t0, a3, s7
                  nop
                  add          a2, s5, tp
                  sltu         s8, a7, zero
                  auipc        s3, 455400
                  andi         t3, zero, -1872
                  xor          a0, t1, sp
                  or           sp, s2, a6
                  slti         t6, gp, 352
                  ori          s2, tp, 1896
                  lui          t0, 374861
                  sra          s1, a3, a4
                  sltiu        gp, t0, 1423
                  add          s1, a7, s1
                  slli         s7, t6, 20
                  slli         sp, t1, 9
                  sub          t6, s3, a7
                  and          s8, ra, a1
                  auipc        a3, 515681
                  and          t2, sp, a6
                  nop
                  sltiu        t1, s6, 1463
                  addi         a1, s4, -1745
                  xor          t3, a1, s8
                  xor          a1, t4, s10
                  andi         a2, a6, 397
                  xor          s5, t1, s7
                  slt          t5, tp, ra
                  xor          t6, a7, a0
                  addi         a0, s1, -2008
                  auipc        s4, 102897
                  lui          s7, 1009303
                  slli         s10, t2, 20
                  nop
                  sll          s10, zero, t6
                  srai         s7, a6, 30
                  srli         s6, a2, 14
                  auipc        s9, 276516
                  auipc        s7, 988529
                  xori         s1, s1, -1263
                  slli         t5, s2, 22
                  xor          t5, s1, t3
                  slti         s7, t0, -1863
                  sltu         sp, s1, s7
                  lui          t4, 1001041
                  srl          a1, a4, sp
                  nop
                  auipc        a7, 616948
                  add          s8, zero, s8
                  xori         t3, a5, -1543
                  nop
                  sltiu        s5, t5, -1850
                  andi         s4, a6, 291
                  srai         s6, s6, 5
                  slti         s1, s6, 105
                  nop
                  sra          a2, s10, s3
                  nop
                  xori         s7, s7, -756
                  sltiu        gp, a4, 1924
                  add          gp, ra, t0
                  or           a6, a4, s11
                  and          s1, a5, s0
                  srl          zero, sp, s2
                  xor          a6, a1, a3
                  ori          sp, a6, -795
                  slti         s1, a1, -316
                  xori         s6, sp, 37
                  or           s10, a5, t6
                  xori         s8, s4, -1127
                  lui          t6, 41692
                  xor          a3, s5, s1
                  sltiu        a0, s2, 483
                  sra          ra, s6, gp
                  or           s2, sp, a3
                  slti         t6, t4, 1466
                  sub          s3, a7, s1
                  auipc        zero, 881035
                  add          gp, s3, gp
                  slli         a0, s11, 13
                  auipc        a1, 54675
                  sra          t6, a2, t5
                  slt          s9, s9, a6
                  xori         s10, s4, -1304
                  andi         s8, a3, -2041
                  srai         a3, tp, 27
                  srl          ra, s4, a2
                  srai         gp, s7, 19
                  and          a3, s3, s0
                  auipc        sp, 373724
                  sub          t0, s5, s7
                  addi         a1, t5, -1663
                  xori         t6, s1, -881
                  slt          gp, a1, s1
                  ori          t1, t0, 272
                  xor          a5, s4, t1
                  slti         s6, t2, -1653
                  sll          t0, t3, a3
                  srli         gp, a7, 2
                  sra          s2, s3, a7
                  sra          a7, t0, a2
                  sra          a2, s0, s11
                  xor          t2, s1, ra
                  srl          s1, s1, s4
                  srl          gp, t1, a7
                  sra          zero, s1, a5
                  slt          t0, a4, s7
                  sra          a6, ra, t2
                  sltiu        tp, a0, -582
                  sub          a6, tp, tp
                  sll          s1, s5, s9
                  slt          ra, s0, s0
                  nop
                  srli         a2, gp, 6
                  xor          t4, s8, a4
                  lui          zero, 302739
                  sra          s4, ra, a3
                  xor          zero, s7, a7
                  nop
                  sub          s7, t6, tp
                  and          s6, a1, t1
                  srli         a2, a1, 14
                  slt          a7, s2, a6
                  sltiu        zero, a5, -877
                  ori          s9, s4, 1466
                  sltiu        t4, t5, 294
                  addi         a6, t0, 1860
                  sra          s2, a0, a7
                  srli         t6, a3, 6
                  ori          t2, t1, 358
                  srl          s6, t6, zero
                  add          a7, a1, s7
                  sltu         sp, sp, a5
                  auipc        t4, 412290
                  slli         a0, s1, 16
                  and          t2, a4, ra
                  slli         zero, s0, 28
                  sll          a5, s5, t4
                  addi         s9, s7, -45
                  andi         sp, t3, -1922
                  nop
                  sltu         t3, s8, a4
                  ori          s5, a1, -1687
                  addi         s5, s1, -1995
                  slli         t4, t2, 12
                  add          a2, tp, tp
                  lui          t2, 927184
                  xori         t3, sp, -1439
                  sra          a1, t6, t3
                  srl          tp, gp, s9
                  addi         a0, s1, 372
                  andi         s9, s8, 837
                  xori         a2, a5, 26
                  sll          a5, a2, t1
                  sltu         t5, t1, s10
                  srai         t4, s1, 26
                  xor          t5, s8, sp
                  srli         gp, gp, 6
                  sub          ra, t2, t6
                  slli         t1, zero, 9
                  sll          t0, s1, s1
                  srl          s8, a5, a2
                  addi         a5, s10, 360
                  slt          s6, zero, s6
                  add          a3, s7, t4
                  srli         s4, s10, 18
                  srai         s5, t4, 21
                  xori         t6, s5, -1562
                  slt          a5, a4, s9
                  slt          s4, a2, t3
                  nop
                  and          s4, s0, a0
                  xori         t1, s10, 1495
                  ori          t2, t2, -1916
                  sltu         gp, a0, s3
                  sltiu        t0, t3, 884
                  addi         tp, a3, 977
                  nop
                  sub          t3, a2, s1
                  lui          s6, 554058
                  addi         a0, zero, -851
                  auipc        s9, 227380
                  srl          a1, tp, sp
                  sra          s9, t5, s0
                  srl          a1, t0, s5
                  andi         t6, s1, -1751
                  ori          s9, t4, -622
                  and          a3, t3, a4
                  xor          s10, zero, a2
                  sub          s7, a0, a2
                  sub          s4, t3, a5
                  xor          t3, t5, t3
                  srai         s8, t5, 5
                  and          s7, s7, s0
                  sltu         a1, s3, s11
                  sub          t0, s3, s10
                  or           s7, s8, a6
                  sra          t6, t2, a5
                  slt          a5, s0, t2
                  ori          ra, s10, 76
                  slli         s3, s11, 14
                  ori          zero, s1, 309
                  add          t0, s6, t0
                  slt          t5, a5, a6
                  ori          s3, s2, -925
                  sra          a6, a6, gp
                  srl          gp, s5, s11
                  sll          s2, t2, s11
                  srai         tp, a6, 4
                  srai         t3, t3, 19
                  sltiu        a1, t6, -1732
                  nop
                  srai         a3, s1, 26
                  slti         tp, s6, -456
                  sub          t4, s7, s10
                  slt          t6, a2, t1
                  sll          t6, s5, s11
                  add          s1, a4, t3
                  add          t6, t1, s10
                  xori         s2, t4, 830
                  srai         s6, sp, 17
                  nop
                  or           t3, s11, s11
                  slti         s1, gp, -218
                  addi         s5, s1, -1270
                  sub          t3, s7, a1
                  ori          a0, s8, -1633
                  sll          t4, t2, a4
                  slli         s4, a7, 11
                  andi         a1, t1, -488
                  andi         t4, t0, -2017
                  sub          a2, s11, t5
                  sltu         s3, t2, s4
                  xor          a7, a6, t3
                  addi         s6, t2, 1755
                  lui          s5, 44363
                  srl          t4, s2, s2
                  sll          t0, t1, a2
                  srli         t6, s1, 6
                  slti         s2, a7, 191
                  sltu         a5, a4, t6
                  or           s2, a7, s3
                  srl          a6, t2, a4
                  or           s9, ra, a1
                  srl          a5, s6, a2
                  ori          s7, t6, 817
                  sll          s1, s8, a1
                  auipc        s5, 475867
                  nop
                  srai         sp, a2, 9
                  xor          a1, s0, zero
                  andi         s6, s7, -1220
                  or           s10, s9, tp
                  sltu         s4, s2, t5
                  ori          s4, s11, 1500
                  xor          a3, tp, s0
                  xor          t5, s1, s11
                  xor          s5, a1, s11
                  sra          s2, t1, tp
                  srli         a2, t5, 11
                  sltiu        a1, zero, -1088
                  xori         a0, s4, 1122
                  add          a2, t3, s11
                  addi         s2, t0, 244
                  slt          s3, t0, tp
                  sub          zero, t2, t3
                  and          s2, s11, tp
                  andi         s1, zero, -926
                  xori         s6, s2, -877
                  sltiu        gp, tp, -1932
                  add          s3, a1, s0
                  sra          s3, s10, s11
                  sltiu        t6, s9, -1780
                  add          a5, t1, a3
                  sra          tp, tp, zero
                  xor          s3, a6, t4
                  nop
                  xor          tp, s7, sp
                  slli         zero, a7, 22
                  lui          a7, 268280
                  andi         a6, zero, 223
                  lui          sp, 360095
                  slli         t4, s1, 3
                  sltiu        t6, a3, 1762
                  srai         s1, t6, 12
                  srai         s4, s0, 10
                  auipc        a0, 964661
                  slti         s1, s10, 1646
                  add          a6, t5, s10
                  ori          a2, t1, -247
                  sltu         s2, s7, t0
                  sltiu        a0, t1, 70
                  slt          t6, s7, s3
                  xor          a1, a5, s6
                  xori         a6, s2, -652
                  ori          tp, t1, -26
                  slti         tp, zero, 349
                  sltiu        ra, s8, -705
                  nop
                  nop
                  sll          s3, s9, a0
                  xori         tp, s11, -682
                  srl          s3, t0, t3
                  addi         a7, a7, 934
                  slli         s1, tp, 10
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           a3, 0xffffffff
                  li           s10, 0x3f056fee
                  li           s1, 0x5c42dee3
                  li           s9, 0x80000000
                  li           t0, 0xffffffff
                  li           s8, 0x80000000
                  li           t3, 0x0
                  li           ra, 0x0
                  li           s3, 0xf9631bab
                  sub          s1, ra, t0
                  nop
                  nop
                  lui          s1, 465764
                  add          s3, t0, t6
                  add          s10, s1, s9
                  addi         t0, s10, -2021
                  sub          s3, a3, s9
                  sub          s9, s8, s3
                  nop
                  sub          s10, t0, s3
                  auipc        s1, 958096
                  sub          t0, s8, ra
                  sub          t0, s8, s9
                  sub          s3, s1, ra
                  auipc        t0, 369095
                  auipc        t0, 461276
                  auipc        s3, 318450
                  auipc        s8, 982168
                  add          t6, s1, ra
                  nop
                  sub          t6, t6, t0
                  auipc        s3, 921363 #end riscv_int_numeric_corner_stream_15
                  auipc        s7, 571724
                  srl          a6, s8, t1
                  sltu         s10, a7, t1
                  sub          gp, s2, s8
                  or           t0, s7, t0
                  or           s5, t0, t5
                  slt          t3, t0, s1
                  sra          t4, a4, sp
                  slli         s6, s10, 26
                  sub          s7, s3, t2
                  nop
                  slti         s10, t6, 424
                  srl          gp, s0, ra
                  add          gp, s2, t4
                  add          s8, a4, a0
                  auipc        sp, 43262
                  xori         t4, s4, 95
                  add          a1, t3, s6
                  sltiu        s3, s8, 1723
                  sltiu        t3, s10, -782
                  auipc        s2, 95614
                  slti         s5, t6, 288
                  xori         ra, gp, 1172
                  sll          a0, s2, a6
                  xori         a1, a3, 1144
                  lui          s3, 355944
                  sltu         s7, ra, a7
                  nop
                  nop
                  sltu         a3, a6, a5
                  xori         t4, s5, 376
                  srli         s9, s7, 7
                  nop
                  slt          tp, gp, a3
                  sra          s4, a5, t3
                  lui          t2, 309798
                  slli         t3, a4, 29
                  andi         a1, t3, -999
                  nop
                  auipc        a6, 1009910
                  sltu         s3, s5, tp
                  srli         gp, a5, 29
                  xori         s4, s11, 420
                  xori         t1, zero, 1393
                  nop
                  sra          a7, t2, s4
                  srli         a1, s11, 29
                  xor          gp, a1, a7
                  sub          t1, a5, ra
                  srl          s7, sp, t2
                  srli         s1, s2, 26
                  sltiu        t2, s7, -1137
                  auipc        s8, 730522
                  auipc        a5, 974185
                  xori         s5, s5, 1186
                  sra          a2, a2, t2
                  xori         s10, t2, 1080
                  ori          s9, a1, -775
                  add          a7, a7, s8
                  slti         ra, s3, 1921
                  xor          t2, s5, s0
                  slt          t6, s1, t1
                  addi         s10, t0, -852
                  slti         t2, tp, 1399
                  sltiu        t6, s2, 789
                  ori          s5, tp, 88
                  and          s1, s4, a1
                  slli         zero, s8, 0
                  addi         ra, t3, 1505
                  auipc        t1, 218925
                  and          t5, t5, s11
                  or           s8, s6, a1
                  slt          tp, gp, a3
                  nop
                  srl          a0, t4, a5
                  slli         a2, a7, 26
                  andi         s8, t0, 732
                  srai         t6, a2, 27
                  slt          a2, tp, ra
                  and          ra, s3, a4
                  xor          s8, s7, a6
                  slt          s9, a4, t5
                  and          a7, s10, s3
                  srli         s6, a3, 1
                  sltu         zero, a2, gp
                  srl          s6, s9, t4
                  srl          t3, t2, s9
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           a3, 0x0
                  li           s1, 0xffffffff
                  li           a5, 0x80000000
                  li           s6, 0x0
                  li           s2, 0xffffffff
                  li           gp, 0x0
                  li           s10, 0x8dd1127b
                  li           t5, 0x2b479020
                  li           t4, 0x80000000
                  sub          s9, s10, t4
                  auipc        s1, 1022800
                  nop
                  lui          a5, 880036
                  auipc        gp, 657372
                  add          s1, s2, t4
                  auipc        a3, 596969
                  add          t5, gp, a3
                  addi         s6, s6, 655
                  lui          gp, 442175
                  lui          t4, 411852
                  auipc        t5, 328946
                  sub          s10, s2, s1
                  addi         t5, gp, -1164
                  nop
                  auipc        a5, 652860
                  sub          s10, gp, gp
                  addi         a5, a5, -1235
                  lui          s2, 425945
                  add          s10, t4, a5
                  sub          a3, a5, s10
                  add          s9, a3, a5
                  addi         s10, s6, -332
                  auipc        a3, 581226
                  add          t5, t5, t4 #end riscv_int_numeric_corner_stream_19
                  xor          t1, t6, sp
                  auipc        tp, 438398
                  sltu         s10, s2, a5
                  sltiu        t0, s4, 1402
                  add          s2, a2, sp
                  auipc        s4, 616592
                  auipc        ra, 370361
                  slli         a6, s4, 7
                  or           a0, zero, s9
                  sll          t3, a6, ra
                  sll          s7, a2, s3
                  nop
                  srli         a6, s3, 30
                  auipc        zero, 351446
                  andi         t4, t6, 130
                  andi         a2, s1, -356
                  sra          t0, s10, t4
                  nop
                  xor          s10, s2, t5
                  slti         a1, s9, -1261
                  auipc        t5, 883520
                  srai         s8, a7, 9
                  srli         zero, a4, 31
                  slt          s7, a2, a0
                  srai         ra, s8, 2
                  sltiu        a2, s8, -1738
                  or           a2, tp, s1
                  xor          t4, s3, t1
                  xor          s8, s10, s6
                  sll          a1, t2, t5
                  auipc        a3, 206582
                  add          tp, a2, t6
                  sltu         a1, t0, s5
                  sltiu        t2, s9, 1377
                  and          a1, t4, s11
                  sltu         a3, tp, ra
                  sra          a2, ra, s3
                  sra          t4, a7, t1
                  andi         s4, s8, -2039
                  addi         a1, t3, 1354
                  andi         t6, s11, 761
                  srli         gp, t2, 8
                  sltiu        a1, a4, 346
                  srai         zero, t0, 27
                  addi         s10, s5, 1021
                  slli         zero, a7, 10
                  slt          zero, s6, gp
                  srai         ra, t5, 19
                  ori          s10, s9, 436
                  sll          s1, gp, a5
                  srai         a1, a0, 10
                  srli         s3, a0, 10
                  xor          t4, s2, tp
                  sll          s5, s0, t6
                  xori         t0, t6, 1653
                  ori          s9, s0, 1582
                  auipc        a1, 41821
                  xor          gp, gp, a5
                  xori         a7, s7, -316
                  sltu         ra, zero, s7
                  srl          ra, t1, s0
                  sub          s9, s7, s10
                  srl          t6, a2, a7
                  sll          ra, a5, s1
                  slti         tp, sp, -937
                  xori         gp, t2, -810
                  slti         t4, a2, -1352
                  sll          a2, t2, s8
                  add          t5, gp, a6
                  srai         s5, t5, 0
                  srai         s6, s7, 8
                  auipc        a3, 247663
                  nop
                  sra          s3, s4, s2
                  addi         t6, s0, 737
                  srli         s6, a2, 17
                  andi         a5, s5, -1253
                  or           gp, a4, t0
                  auipc        a0, 324504
                  andi         a7, t0, 986
                  xor          gp, a3, t3
                  srai         sp, t3, 22
                  srl          tp, s4, a7
                  srli         sp, s2, 9
                  sll          t6, s7, a7
                  sltiu        s4, s11, 111
                  addi         a3, s10, 1752
                  slti         t0, a6, 535
                  and          a6, sp, a4
                  sra          t1, a4, gp
                  sltiu        a7, zero, -1876
                  lui          s10, 304038
                  srl          s7, s2, sp
                  nop
                  auipc        s3, 831000
                  xor          s5, s9, a7
                  or           s3, a3, a1
                  srai         s7, a0, 12
                  add          s3, a7, t6
                  xor          ra, gp, a5
                  sltiu        a6, t1, 574
                  xori         a3, sp, -2009
                  ori          a5, s8, 1118
                  sltu         a7, tp, a4
                  ori          a1, t5, 131
                  sll          zero, s0, t3
                  srl          s9, s5, a6
                  andi         ra, t5, -2044
                  srli         s2, s2, 29
                  or           s6, s2, a2
                  xori         s7, s5, -1166
                  srli         a5, sp, 13
                  sltu         sp, t0, sp
                  addi         s1, s2, 1596
                  xor          tp, a5, gp
                  add          t2, a0, s10
                  srli         s8, a7, 9
                  ori          a6, t4, -1964
                  sltu         a2, a3, t4
                  xor          t2, s6, t3
                  ori          t3, tp, -1720
                  sub          t4, a2, s7
                  or           a2, t2, s6
                  slt          t3, s5, s7
                  addi         a6, t0, 202
                  or           a2, t0, s6
                  add          s9, s1, t4
                  sub          a0, a7, zero
                  addi         zero, s8, -527
                  and          s3, a4, ra
                  or           s6, s4, s7
                  lui          t0, 763542
                  xor          t6, sp, s5
                  xori         ra, a7, -901
                  slt          tp, t6, a0
                  srai         gp, t1, 25
                  xori         a1, t2, 991
                  srai         a2, a4, 21
                  or           s8, a0, gp
                  lui          t2, 671179
                  srai         ra, zero, 7
                  slli         s8, a7, 18
                  ori          s8, a5, -816
                  nop
                  slti         a1, t1, 1921
                  sltiu        a0, s7, 1083
                  slli         s3, s2, 6
                  or           tp, a5, s10
                  slli         a6, s9, 24
                  lui          s3, 79779
                  auipc        s9, 160578
                  add          a7, s6, s10
                  xori         tp, t0, 813
                  slli         gp, t3, 3
                  andi         a1, a5, 829
                  sltiu        s9, tp, -1476
                  and          a7, t0, a1
                  lui          gp, 951299
                  slti         gp, s6, 333
                  and          s10, zero, a3
                  lui          t3, 223496
                  addi         gp, s6, -468
                  srl          s7, sp, zero
                  srai         s3, a2, 23
                  sltiu        gp, ra, 519
                  slli         s2, a6, 15
                  sll          a6, a4, ra
                  nop
                  sltu         ra, s11, t6
                  and          s2, s7, a0
                  srli         t2, s0, 8
                  add          a5, sp, a2
                  sltu         s4, s4, sp
                  slli         a0, ra, 28
                  and          s8, a3, t1
                  slti         a3, a7, -550
                  nop
                  lui          sp, 558450
                  sra          s3, s3, t1
                  xori         s6, a7, -676
                  slt          a2, a2, t6
                  srli         s5, t6, 2
                  srli         a5, sp, 6
                  sub          t5, s2, zero
                  auipc        a2, 798913
                  slti         t5, a6, -470
                  or           zero, s8, a3
                  sub          a1, s11, s4
                  sltu         a6, a4, s2
                  sltiu        ra, s4, 1966
                  ori          a3, s1, -1606
                  sltu         sp, tp, gp
                  and          s8, a1, zero
                  lui          s10, 877739
                  sll          s2, t4, a1
                  andi         t1, t2, 395
                  sltu         a3, a2, a5
                  slti         a2, tp, -1114
                  slt          t2, a3, s5
                  sltiu        s3, s8, -1347
                  sra          s4, sp, t0
                  srli         s2, a3, 21
                  or           a2, t2, t3
                  add          a2, a4, s8
                  auipc        a5, 819758
                  and          s8, a7, zero
                  and          s8, a5, tp
                  sll          gp, a3, t0
                  srli         sp, a2, 10
                  slli         a0, t2, 5
                  nop
                  slt          s1, s6, s4
                  sra          s1, s6, s10
                  srl          s8, s0, s9
                  or           s9, a5, a6
                  addi         s10, s8, -1645
                  sltu         a3, sp, zero
                  ori          s4, s6, -575
                  xori         t3, tp, 379
                  auipc        t0, 698700
                  sra          a1, t2, s3
                  slti         t1, zero, 1207
                  srli         t0, s4, 26
                  nop
                  andi         s6, gp, -787
                  slti         ra, t6, 829
                  ori          a3, s7, 931
                  addi         t3, a3, 463
                  andi         sp, s2, -231
                  xor          s8, tp, s6
                  sub          gp, s8, s8
                  sltiu        t3, a2, 1638
                  slti         zero, a1, -1548
                  nop
                  lui          a3, 596351
                  nop
                  addi         a3, t4, 733
                  lui          s1, 344786
                  andi         a5, a3, -1190
                  srl          a0, t1, a7
                  sll          a0, sp, a6
                  add          s1, s7, a2
                  srl          a2, s9, s10
                  srai         tp, s7, 19
                  sltu         s6, s6, tp
                  addi         t3, s8, -159
                  xori         a3, s7, 1804
                  lui          a6, 657228
                  ori          tp, zero, -540
                  sll          t2, s5, a3
                  sub          t1, s11, s0
                  sltiu        s4, t6, -731
                  sll          tp, a7, s1
                  srl          s1, s5, s7
                  slti         a2, s4, 939
                  sltiu        s10, s10, 1572
                  sltiu        s1, s3, -1718
                  xori         s6, sp, 1562
                  addi         s1, gp, 1173
                  sll          s10, s0, a0
                  slti         t3, s7, 57
                  xor          t4, a6, t6
                  or           s2, s8, zero
                  slt          t0, s8, s7
                  sll          s10, a4, t1
                  sll          s7, tp, s11
                  srl          tp, sp, t1
                  slti         t1, ra, -185
                  sltu         t5, a7, s9
                  nop
                  slti         a2, a1, 544
                  slti         s5, zero, 580
                  slti         a1, t4, 2008
                  slt          ra, a2, s0
                  addi         a3, s6, 559
                  sra          s3, t1, t0
                  xori         gp, s4, 1697
                  srli         s2, ra, 5
                  andi         a2, a3, 993
                  sltiu        a3, s8, -810
                  auipc        a7, 245402
                  or           s10, s3, s11
                  ori          a3, t1, -1246
                  and          a7, t2, s11
                  ori          a3, a5, 1947
                  or           a5, s0, a2
                  srai         s6, zero, 18
                  sltiu        a3, a0, -1734
                  xori         a6, t1, -193
                  srl          s10, a5, sp
                  and          a3, s11, a4
                  srai         t4, a2, 8
                  srai         s7, ra, 28
                  sra          s6, a0, a6
                  srl          t3, t0, s4
                  andi         s4, t6, -781
                  slli         t6, zero, 29
                  sltiu        t3, t4, 1961
                  srai         s2, tp, 27
                  srl          a1, a2, ra
                  auipc        s4, 521540
                  sra          ra, s3, tp
                  slt          t5, s5, zero
                  sltu         a5, tp, s6
                  srai         s7, ra, 26
                  xor          t2, s6, s0
                  slt          a5, t2, a0
                  sll          t4, t1, s4
                  auipc        t0, 293170
                  srai         tp, gp, 5
                  auipc        s3, 958073
                  xor          a2, s2, s3
                  ori          t1, t1, -627
                  sll          t2, sp, s4
                  srai         t0, s9, 31
                  slli         ra, gp, 24
                  ori          ra, gp, -1596
                  addi         t4, sp, -1923
                  nop
                  lui          t5, 154262
                  nop
                  lui          s6, 265129
                  srai         t3, a6, 12
                  srai         a3, a1, 17
                  addi         s4, s6, -1707
                  andi         s4, t5, -978
                  add          t1, s6, a2
                  srai         s9, sp, 22
                  sra          t1, a0, s5
                  lui          t4, 965670
                  srli         s1, tp, 13
                  addi         a0, s1, -1247
                  add          s1, gp, a7
                  slli         s3, ra, 9
                  slli         a7, s2, 6
                  or           ra, a4, t5
                  sltu         t3, s10, t2
                  srl          tp, s0, s0
                  srli         s1, a4, 9
                  auipc        t3, 461864
                  add          a5, a1, s10
                  nop
                  srli         s5, t4, 23
                  addi         s6, s9, -437
                  sll          s4, t3, sp
                  lui          t5, 667089
                  sub          t6, s3, t3
                  slti         s2, a6, -1516
                  nop
                  add          t5, zero, a5
                  srl          s2, s2, t2
                  ori          s3, a0, 336
                  auipc        s7, 885143
                  sub          sp, a6, t5
                  sll          t2, s2, t5
                  lui          t0, 691749
                  sub          s4, t1, a5
                  srai         t3, s9, 14
                  srai         s5, s2, 4
                  auipc        a0, 1041378
                  xor          t2, a3, zero
                  srli         sp, a6, 12
                  and          s6, gp, s0
                  andi         s2, a4, 1742
                  srli         t3, t2, 25
                  sltu         s6, s6, a5
                  lui          s5, 522589
                  sub          s2, s9, s10
                  auipc        a6, 136658
                  srli         a2, s9, 6
                  sll          t3, s1, t0
                  sltu         s10, a5, t5
                  slti         zero, t6, -1247
                  auipc        t0, 459694
                  srai         t3, tp, 20
                  ori          s2, tp, 25
                  sltiu        a0, a0, -830
                  ori          t6, sp, 1930
                  and          s7, t2, t6
                  sll          t4, s10, s7
                  lui          ra, 219684
                  sltu         a0, s6, a2
                  add          t0, s4, t1
                  ori          s8, s6, 437
                  sub          t5, t3, s10
                  sltu         a7, a6, s3
                  slti         sp, a6, 1660
                  addi         a5, t0, 1935
                  sltiu        tp, s7, 1594
                  slli         sp, s8, 9
                  slti         a6, s2, 1384
                  nop
                  nop
                  addi         t5, t4, -283
                  xori         a7, t6, 2015
                  slli         ra, s2, 26
                  andi         sp, s1, 893
                  sub          a2, s3, s7
                  srai         s1, t3, 13
                  sll          t0, s3, t3
                  slt          s2, gp, tp
                  andi         a0, gp, -1906
                  slt          a5, t0, s3
                  or           s3, s8, t3
                  sltu         a1, a5, t0
                  sltu         tp, s6, s3
                  ori          s6, s11, -992
                  srl          s2, a1, a4
                  xori         s4, sp, 1975
                  sltiu        a3, t2, 967
                  nop
                  srai         t1, gp, 31
                  add          s4, s6, s3
                  slti         t2, ra, -1521
                  sra          t2, t4, s3
                  srai         a0, a1, 1
                  nop
                  add          a5, zero, t2
                  and          s3, gp, s6
                  auipc        s2, 801705
                  sltiu        t4, tp, 1414
                  xor          zero, ra, s7
                  xor          a7, a0, s2
                  andi         a0, a4, -359
                  srl          s5, t3, t1
                  sra          sp, s3, s3
                  auipc        t2, 76292
                  addi         a7, a1, 1880
                  srai         a5, ra, 21
                  slli         t4, s2, 28
                  and          s9, t3, s10
                  add          a3, s4, gp
                  addi         tp, s3, 430
                  or           gp, t4, s10
                  sra          s5, s10, s5
                  xori         zero, a3, -162
                  lui          t0, 345532
                  srl          t2, s3, s10
                  slt          a7, s5, tp
                  nop
                  srli         sp, a3, 3
                  addi         t5, s10, 165
                  xor          s6, t2, tp
                  addi         t0, gp, 1882
                  lui          t5, 57783
                  or           t5, s9, s11
                  slti         tp, s5, 1463
                  addi         sp, s10, -1970
                  add          s2, a6, t6
                  sll          a0, gp, s7
                  slli         zero, s4, 2
                  slt          tp, a0, a5
                  sub          zero, t3, sp
                  sra          ra, s8, gp
                  srl          t3, t4, t5
                  slti         t1, a7, -367
                  srl          t2, t3, a2
                  srli         t3, a3, 13
                  lui          a7, 222350
                  slt          t6, s1, zero
                  slli         s6, s10, 3
                  srai         s5, t2, 5
                  slt          ra, t2, s4
                  lui          tp, 465947
                  xor          a2, s11, s6
                  sll          t2, a6, t4
                  sltu         a1, gp, t0
                  xori         a6, a1, -1208
                  sltiu        s7, a3, -1926
                  xori         a5, a2, -775
                  xori         s7, a7, 456
                  slt          s7, t1, a0
                  add          s3, t1, s9
                  sltiu        sp, s1, -1518
                  slli         t4, s9, 21
                  lui          a1, 899822
                  xori         s7, a2, 260
                  andi         s2, s6, -1605
                  xor          s5, t6, a5
                  slti         ra, a6, -652
                  addi         gp, tp, 1177
                  andi         zero, s8, 1027
                  xor          t5, a4, t6
                  auipc        t6, 25094
                  ori          a3, zero, 1153
                  srli         a7, s3, 19
                  ori          a7, s10, 1816
                  sra          s10, t6, t2
                  add          s4, s7, t4
                  addi         t1, a4, -587
                  xor          s1, gp, s11
                  addi         t0, t1, -1399
                  sll          s7, s7, t2
                  sub          t3, t6, a7
                  sra          a1, zero, t6
                  slt          a0, s0, a2
                  ori          s10, a3, -1219
                  add          t2, a2, t2
                  xor          s3, s11, sp
                  srli         ra, a2, 0
                  srli         zero, s6, 27
                  sltiu        s7, t2, 1023
                  slli         s8, s3, 26
                  srli         s10, a5, 18
                  xor          t4, zero, t0
                  sltiu        s1, a7, -649
                  auipc        s9, 659490
                  ori          ra, a1, 2006
                  nop
                  srli         a2, t5, 20
                  sltiu        a3, t2, 856
                  slt          a6, a4, s5
                  srai         s7, a4, 8
                  srli         s5, s0, 12
                  and          s5, t1, t1
                  xori         s4, a1, 273
                  auipc        s10, 30510
                  nop
                  add          t3, s3, a7
                  or           a0, s11, s8
                  andi         s1, a2, -1626
                  ori          s1, s7, -24
                  sub          ra, a2, t5
                  srli         sp, t2, 31
                  sub          a0, t0, a4
                  xor          a3, s6, s0
                  or           t2, s2, s8
                  andi         t6, s10, -355
                  slti         sp, zero, 1409
                  sltu         a7, t4, s1
                  sub          s1, s8, gp
                  srai         s10, t3, 19
                  lui          s2, 584011
                  sra          s9, tp, t3
                  slt          a0, a3, s11
                  sll          a5, a6, s1
                  srl          s8, t4, s7
                  add          tp, s2, s10
                  slt          t3, s7, s11
                  auipc        s5, 654538
                  sll          t5, a5, a2
                  add          sp, a2, s9
                  xori         t4, t2, -1160
                  sra          zero, t0, t0
                  nop
                  slt          gp, ra, a1
                  slli         s5, s4, 31
                  srl          t3, t1, t1
                  nop
                  addi         ra, t3, -991
                  sub          s7, t3, a5
                  addi         a2, s8, -1222
                  srli         tp, a4, 12
                  nop
                  sra          a5, t4, s4
                  slt          s8, zero, gp
                  slli         ra, s5, 30
                  sltiu        s9, a3, -2025
                  add          s9, t4, s3
                  and          s5, sp, t1
                  xori         s8, t5, 1444
                  ori          tp, t4, -1482
                  add          a2, t2, t6
                  lui          sp, 19119
                  sll          s7, s6, a2
                  or           a7, ra, s6
                  or           gp, a5, sp
                  slti         ra, t6, -1064
                  xori         a1, s7, -776
                  sltu         sp, a6, s9
                  nop
                  slt          s10, s8, t1
                  slt          s4, a3, s8
                  xor          t2, s7, s2
                  lui          s4, 366734
                  lui          sp, 385070
                  slli         a2, s11, 19
                  xor          sp, t4, s0
                  slti         t2, a1, -1569
                  slli         a1, t3, 25
                  slt          s4, s3, s9
                  slt          a0, a3, a0
                  xor          s9, s0, a5
                  andi         tp, t2, 588
                  slt          s1, a7, s3
                  add          a7, s1, s0
                  slt          a1, a5, s1
                  slti         gp, t4, -1349
                  and          t6, s1, zero
                  andi         ra, s0, 1197
                  andi         s1, s2, 349
                  srai         tp, a5, 27
                  sltu         s8, s0, a5
                  andi         s7, ra, -1888
                  andi         s6, t6, 134
                  slli         s9, t1, 31
                  slli         t2, s8, 12
                  and          a3, s4, gp
                  slli         t1, a7, 20
                  slti         s8, s1, 1022
                  srl          t0, t2, a5
                  addi         a6, s10, -784
                  srli         t3, s7, 14
                  slti         gp, a2, 481
                  xor          a6, zero, s8
                  slti         s4, a3, 189
                  or           a3, a4, s11
                  andi         a2, s1, 1382
                  ori          t3, a4, 669
                  lui          t0, 391305
                  add          s6, s9, a5
                  sltu         t4, t5, s1
                  or           t0, t2, s5
                  auipc        a1, 508016
                  srl          a2, s5, s2
                  sub          t2, s2, a7
                  sra          a7, t2, t1
                  auipc        sp, 907325
                  srli         s6, t1, 26
                  xor          sp, a6, t1
                  xor          s8, t4, a2
                  sub          sp, a2, t3
                  andi         a3, t4, -1126
                  slli         a3, t5, 19
                  xori         s5, s9, -968
                  and          tp, t2, s8
                  sltiu        s1, s2, 1947
                  slti         t0, a2, -590
                  ori          s3, a0, 1864
                  srai         t3, a6, 22
                  addi         s3, t6, 3
                  srl          zero, tp, ra
                  slt          zero, t5, a5
                  ori          a3, s2, 353
                  sltiu        zero, gp, 1278
                  xori         s10, t1, 1721
                  srl          a5, s1, s2
                  auipc        s6, 804258
                  ori          s3, s10, 1024
                  addi         a2, t0, -1177
                  sltu         t6, ra, a4
                  slli         t1, t0, 27
                  sub          a2, a5, t2
                  xori         t2, a5, 2021
                  slli         s10, a1, 8
                  sltiu        s10, t2, -1871
                  srl          s9, a2, a2
                  sra          s9, s10, s1
                  slti         sp, s0, 41
                  andi         a3, t1, -81
                  slti         t0, a2, 587
                  slli         t5, t2, 23
                  sltu         gp, a5, zero
                  sll          s10, a6, t3
                  and          a3, t4, a4
                  ori          t1, t1, 2021
                  sra          a2, a0, t1
                  srli         zero, gp, 1
                  or           a5, s3, s7
                  xor          a6, s0, s5
                  ori          t3, t5, 400
                  srli         a7, s3, 24
                  or           s10, t0, t5
                  lui          s5, 885963
                  sll          a0, s11, a4
                  xori         s5, a2, -905
                  andi         s8, s9, -637
                  and          ra, s2, t2
                  slt          a0, a6, s6
                  nop
                  sltu         t1, s11, sp
                  srli         a5, a2, 23
                  sll          s9, tp, a4
                  sub          t5, a5, t3
                  xori         s3, s10, 86
                  sltiu        t1, s10, -643
                  and          s1, s8, t3
                  srli         t2, a4, 0
                  lui          t1, 995283
                  ori          s3, s5, -1151
                  sll          s7, s6, t0
                  sll          s10, tp, s4
                  sltu         t2, t6, t6
                  slt          a2, tp, a7
                  addi         tp, s6, -994
                  ori          t5, s1, -2005
                  ori          a0, sp, 1770
                  xor          a2, zero, s8
                  sub          s1, s9, t3
                  add          s8, zero, a7
                  slt          s5, t4, zero
                  sub          t0, a7, tp
                  or           s6, s5, s6
                  lui          s3, 412603
                  andi         a7, t3, 1494
                  sll          a1, s4, gp
                  nop
                  li           t2, 0xcda6cee9 #start riscv_int_numeric_corner_stream_16
                  li           t3, 0x0
                  li           s2, 0x8dfbed83
                  li           s1, 0x80000000
                  li           t6, 0xffffffff
                  li           tp, 0xffffffff
                  li           s7, 0xffffffff
                  li           gp, 0x80000000
                  li           a2, 0x0
                  li           s8, 0x0
                  auipc        tp, 777047
                  sub          a2, t2, s2
                  lui          s2, 584052
                  addi         t6, s7, -635
                  sub          tp, t3, t6
                  add          t3, s8, s7
                  addi         s7, t6, 1943
                  lui          t2, 596339
                  lui          t6, 973395
                  lui          tp, 81644
                  nop
                  lui          t6, 201160
                  addi         tp, t2, -208
                  nop
                  add          s2, a2, s7
                  addi         s8, a2, -358
                  lui          s2, 396466
                  auipc        s7, 651641
                  auipc        s7, 552951
                  lui          gp, 24175
                  sub          a2, s2, gp
                  auipc        s7, 112817 #end riscv_int_numeric_corner_stream_16
                  xor          t6, s6, ra
                  slti         a6, s10, -833
                  sltu         t3, t5, a2
                  slti         s10, a3, 1841
                  sltu         t5, sp, s7
                  and          s8, gp, s10
                  and          s4, t1, a5
                  sub          s7, a6, s10
                  lui          s10, 346629
                  sra          s10, a0, zero
                  slt          s7, a2, s1
                  sll          s9, a5, a3
                  addi         s1, s7, -804
                  sll          s4, s1, a3
                  addi         s8, s2, 706
                  slt          sp, t4, s8
                  slt          zero, s0, zero
                  lui          s9, 425102
                  andi         s10, a2, 532
                  lui          a6, 960909
                  lui          t0, 192184
                  ori          s5, ra, 1778
                  xori         ra, gp, 516
                  ori          s9, s8, 471
                  slli         a7, t1, 6
                  add          s2, a1, a6
                  nop
                  sll          a5, tp, gp
                  addi         t0, a0, -738
                  srai         s7, t0, 2
                  sltiu        s9, a2, -1892
                  xori         s10, gp, 1265
                  auipc        t6, 213265
                  sll          s5, t4, a5
                  auipc        s10, 927803
                  auipc        s1, 532735
                  andi         a1, t3, -786
                  xori         zero, t6, -1219
                  ori          a3, tp, -276
                  sra          t4, s6, t5
                  or           a0, s1, a7
                  sltiu        s2, a6, -1018
                  add          t5, s1, t2
                  sll          ra, t3, s1
                  and          t6, a0, t2
                  sll          ra, a0, s2
                  xor          s10, s11, s3
                  slt          s2, a0, t5
                  sll          a1, sp, t0
                  sra          s8, t6, zero
                  srli         s4, t6, 3
                  nop
                  auipc        t4, 9446
                  ori          a5, gp, 1100
                  xori         s5, s10, -1136
                  sltu         zero, a0, a5
                  add          a3, s6, t3
                  srai         zero, a3, 15
                  xori         gp, a7, 1003
                  addi         a5, gp, 1833
                  add          a5, a4, a0
                  and          s7, s1, t2
                  srl          gp, s6, s2
                  xor          gp, s10, gp
                  srli         s9, t6, 1
                  ori          s3, gp, -1119
                  lui          sp, 543689
                  or           zero, zero, s8
                  sll          t0, s9, s11
                  srl          a5, s10, s6
                  srai         gp, a7, 28
                  andi         t2, a1, 1189
                  sltiu        t6, t3, 1516
                  xori         t5, s9, 1912
                  sltu         s10, t4, a4
                  or           tp, t4, a7
                  add          tp, a0, gp
                  lui          s6, 728538
                  srli         t1, ra, 18
                  slli         s9, s8, 8
                  sltiu        a6, a6, 215
                  sltiu        s8, tp, 184
                  sll          t0, s11, a3
                  slli         t1, a0, 31
                  slt          a5, s1, t1
                  sll          a0, a2, sp
                  or           a3, s5, sp
                  andi         t2, a2, -2031
                  sra          a3, a7, a4
                  nop
                  andi         zero, s8, -1575
                  ori          s8, t0, -325
                  slt          a0, a7, tp
                  sub          a3, t5, a5
                  andi         gp, t6, 1518
                  nop
                  sub          a7, a0, a6
                  srl          s4, a5, t1
                  add          a5, s2, a1
                  slli         s1, s6, 0
                  and          s7, t2, a3
                  lui          t2, 213765
                  auipc        gp, 224864
                  sll          t2, a6, ra
                  slt          t3, a2, sp
                  sll          zero, zero, sp
                  sltiu        t3, t1, -1834
                  sll          a2, a2, zero
                  sra          a1, s1, a3
                  slt          tp, ra, gp
                  sub          s5, a3, a2
                  xori         zero, sp, -1548
                  add          t6, s4, s6
                  sra          a2, s8, a7
                  srai         a0, a7, 10
                  addi         a6, t4, -1419
                  add          t6, sp, a4
                  nop
                  sub          t5, s6, s1
                  auipc        a5, 661886
                  andi         t0, s3, 1497
                  or           s9, a0, s0
                  slli         tp, t5, 6
                  srli         sp, s7, 14
                  sra          s1, zero, a4
                  xor          s4, a1, ra
                  andi         t2, tp, -1432
                  sltiu        t1, s11, 1397
                  xor          a1, a3, s7
                  slli         zero, s10, 29
                  srli         t0, a5, 12
                  or           s2, gp, zero
                  lui          s1, 214270
                  slli         tp, s1, 16
                  slt          a3, zero, gp
                  xor          t0, a4, sp
                  sltu         t6, a4, gp
                  or           a5, s8, t6
                  sub          s8, s9, s3
                  xori         zero, t3, 1890
                  sltu         a2, a0, a5
                  sub          zero, t6, tp
                  slt          t3, a2, a3
                  srli         t0, s0, 2
                  sub          t2, s2, s7
                  and          s3, t6, t2
                  srai         s3, t0, 7
                  srai         sp, gp, 10
                  lui          a1, 480071
                  xori         ra, a6, -628
                  slli         t4, s10, 7
                  slli         s2, zero, 30
                  ori          a3, s4, 399
                  srl          t0, a2, s8
                  sltiu        s8, a1, 102
                  slti         t0, s0, 1566
                  ori          s2, s3, -1746
                  or           t4, s4, s9
                  slt          s5, zero, a2
                  sub          s6, t3, zero
                  addi         s8, zero, -1958
                  sltiu        s2, s8, 1001
                  andi         a2, a4, 526
                  srai         s10, t3, 26
                  and          tp, ra, ra
                  sra          a7, t4, s11
                  add          sp, sp, s1
                  sub          s1, t3, t0
                  andi         a0, t6, -1760
                  sub          s8, t6, ra
                  slli         s8, s8, 30
                  sltiu        s5, a2, -1242
                  slt          t0, a5, s7
                  auipc        a0, 624490
                  sltiu        s8, zero, 312
                  srl          a5, a5, a7
                  and          t1, a1, s9
                  addi         t3, s0, -2018
                  addi         t3, t2, -237
                  ori          zero, t4, 901
                  sltiu        s8, sp, 1354
                  or           gp, t0, s1
                  srli         tp, t2, 0
                  ori          a0, a3, -747
                  sll          a2, ra, sp
                  slli         t0, s0, 17
                  sub          t6, tp, a0
                  andi         a3, a0, -1674
                  nop
                  nop
                  srl          a3, t4, a5
                  or           s8, ra, s7
                  sub          t0, gp, s4
                  slti         t1, s7, -778
                  nop
                  addi         s4, a7, -1670
                  auipc        s8, 69337
                  sll          s7, tp, a7
                  sll          a1, tp, s10
                  sub          t0, zero, s0
                  auipc        t4, 559892
                  srli         ra, t0, 21
                  srl          sp, s6, gp
                  nop
                  slli         s3, a5, 17
                  addi         s2, sp, -733
                  sub          s8, t3, a6
                  sll          t1, s1, s1
                  sltiu        s2, a1, -32
                  xor          a1, ra, s7
                  nop
                  sub          t5, s3, s3
                  sltu         a3, s10, s9
                  auipc        a5, 728457
                  srl          s4, t2, ra
                  andi         s2, s9, -1011
                  sltu         a5, a0, s2
                  sltiu        s1, a7, 1708
                  srl          t2, zero, s11
                  and          s1, s3, tp
                  slli         t5, a0, 3
                  xori         tp, a2, -1525
                  sub          zero, t6, s7
                  sltu         s6, s8, a1
                  xor          a2, zero, s5
                  srli         s5, t1, 0
                  sll          a5, s2, t1
                  srli         s10, s0, 8
                  slli         s4, s8, 21
                  ori          s3, a4, 1831
                  ori          t1, s7, 1847
                  lui          zero, 347362
                  sltiu        a0, t2, 343
                  sra          s10, a5, a7
                  auipc        a7, 404544
                  add          s4, t1, s4
                  sra          s3, t0, s0
                  lui          s7, 748356
                  sltu         t5, t6, a1
                  xor          s2, ra, t3
                  lui          s9, 777205
                  andi         t1, tp, -645
                  auipc        t5, 426203
                  sub          sp, s3, s7
                  sltiu        sp, tp, -588
                  slt          s5, zero, s0
                  xori         a3, s6, 1781
                  sra          t0, s7, t0
                  slli         s3, a6, 0
                  ori          s8, t0, -848
                  slti         tp, t4, -1006
                  sltu         s9, a0, t4
                  slti         s6, s8, 1887
                  sub          a0, a7, t3
                  sra          a7, a1, t4
                  slt          tp, s8, a4
                  nop
                  andi         s7, gp, -1149
                  or           s6, t1, gp
                  slli         s4, t4, 22
                  lui          t3, 731738
                  nop
                  srai         a3, a6, 29
                  slli         s3, a4, 21
                  slli         a3, a7, 3
                  addi         s2, s0, -302
                  sub          t1, ra, t3
                  andi         s3, t3, 1769
                  slli         t5, tp, 16
                  andi         a5, a6, 1069
                  sltu         t5, a3, t0
                  srli         ra, s6, 4
                  sltu         s9, s2, a5
                  sltiu        s8, s8, 943
                  srai         a2, s6, 17
                  sltu         a3, s4, t6
                  srli         s1, t0, 22
                  srli         s10, a6, 15
                  srl          s5, t0, s8
                  auipc        t5, 827028
                  xor          s8, gp, sp
                  sltu         s1, t2, s10
                  slli         a1, s7, 8
                  addi         a3, t0, -1410
                  add          s1, t6, ra
                  sub          zero, s4, t1
                  or           tp, t5, s5
                  xor          ra, tp, t6
                  slti         s9, s9, -382
                  xori         s6, s5, 1853
                  andi         sp, zero, 2002
                  add          a6, s9, s4
                  srli         s2, s5, 19
                  nop
                  srl          s9, t6, gp
                  sltiu        a2, a7, 1981
                  sra          tp, a7, s6
                  sltu         a0, tp, s6
                  srl          a2, a2, a3
                  auipc        s10, 891421
                  addi         a2, s4, -230
                  slt          a6, s7, zero
                  nop
                  or           s7, t4, a6
                  and          s2, t1, s3
                  srl          s3, a3, t4
                  sra          a5, gp, t2
                  xor          a0, t1, t1
                  nop
                  xor          s2, a6, sp
                  srli         s2, s4, 15
                  xor          zero, t3, a0
                  sll          s4, s3, a7
                  andi         s6, t1, -1912
                  slli         t4, zero, 20
                  or           t6, a2, s10
                  sub          sp, gp, ra
                  srl          s8, gp, a6
                  or           s1, s9, t3
                  sub          a7, a6, s11
                  srli         a1, a5, 17
                  sll          tp, s9, a6
                  auipc        s5, 389155
                  auipc        t0, 80383
                  slt          t5, t1, s4
                  srl          s10, t4, t4
                  sra          a2, t5, tp
                  lui          a1, 625960
                  sll          t2, a6, a2
                  xori         s7, zero, -327
                  sltiu        s5, a5, -1901
                  srai         t2, a2, 24
                  xor          t1, ra, s4
                  ori          a0, a6, -1726
                  srli         sp, s1, 22
                  add          s5, t3, a0
                  ori          s1, s8, 1082
                  add          t1, tp, t2
                  slt          a5, s3, t6
                  sltu         s4, t3, t3
                  slti         t6, s0, 1169
                  nop
                  and          t4, s5, ra
                  srl          ra, s9, t6
                  slt          s4, t1, t3
                  srai         a1, t4, 22
                  xori         t3, s6, -696
                  nop
                  srli         s10, s7, 30
                  nop
                  ori          a0, sp, 1278
                  srai         t2, a7, 4
                  xor          s6, s0, a6
                  srli         s1, a6, 2
                  slli         s3, s11, 13
                  slt          t6, s4, s7
                  sub          s3, s10, ra
                  slli         s10, s0, 6
                  nop
                  and          s9, a4, a4
                  xori         t2, gp, 1549
                  addi         zero, a4, 530
                  slli         a0, s2, 24
                  and          a5, sp, s9
                  slli         t4, s0, 5
                  andi         a3, t4, 1545
                  slt          tp, s9, gp
                  slt          t5, s10, t4
                  slli         t2, t1, 20
                  auipc        a6, 248305
                  srl          t1, s10, s6
                  sub          s10, a5, s10
                  sltu         a7, s7, t2
                  srl          a7, t1, t1
                  srl          t3, s4, t0
                  auipc        a1, 463255
                  xor          s4, a4, s5
                  addi         t5, s7, -460
                  addi         a5, t1, 688
                  srl          t1, t5, t2
                  nop
                  slli         a3, zero, 0
                  and          t3, t4, s11
                  add          a5, t6, s3
                  slti         tp, t5, 512
                  add          t4, sp, s5
                  slli         s2, a2, 18
                  xor          a0, s4, s0
                  sltu         s1, s3, s4
                  lui          a1, 791852
                  sra          s10, s3, s6
                  sra          t0, s4, t5
                  srli         a2, a5, 25
                  sltu         t2, s2, a2
                  xor          t5, s0, a3
                  nop
                  lui          sp, 836997
                  or           t4, tp, sp
                  and          gp, a2, a5
                  or           s3, a5, t1
                  and          a2, s2, sp
                  add          s5, s11, s1
                  auipc        ra, 36516
                  sltu         s8, t0, t5
                  nop
                  add          s2, a6, s3
                  and          a1, s3, t4
                  sll          sp, a2, t2
                  slt          sp, sp, s7
                  srli         s3, t3, 18
                  srli         s4, s4, 22
                  addi         s3, s8, -268
                  sltiu        t2, a0, 368
                  ori          s9, s5, 1886
                  slt          s2, s2, t3
                  xori         s9, tp, -2028
                  sltiu        a0, s10, 1077
                  slli         s4, a2, 3
                  slli         a0, t1, 1
                  slt          t4, a6, t1
                  slt          a6, t5, s9
                  srai         t4, s8, 9
                  sltiu        a6, s2, 311
                  sltu         s8, t3, a0
                  slli         a6, t5, 28
                  or           t0, s10, s3
                  slti         gp, tp, 293
                  nop
                  add          a1, t0, t3
                  sub          s5, s1, tp
                  slli         a3, t2, 20
                  or           t0, a3, a4
                  lui          tp, 222024
                  lui          sp, 133850
                  auipc        sp, 285516
                  nop
                  slli         s3, s9, 12
                  addi         ra, s6, 802
                  sub          a3, s10, s10
                  sll          t0, s1, ra
                  nop
                  sub          a5, s0, t3
                  auipc        s7, 1004538
                  slli         t3, t1, 21
                  xor          t3, s4, s10
                  srai         s6, t4, 26
                  auipc        tp, 317290
                  auipc        s10, 605177
                  add          tp, s7, a7
                  sll          ra, a3, t1
                  slt          s8, ra, a7
                  add          t6, a6, s11
                  sub          t2, a0, a7
                  srai         tp, s4, 12
                  add          s5, gp, s9
                  lui          s4, 377768
                  add          sp, ra, a2
                  or           a0, s7, a0
                  xori         t4, s0, -428
                  slli         tp, sp, 29
                  sll          t1, a3, s2
                  sub          t1, s5, a5
                  andi         tp, t2, -305
                  slti         t5, s5, 889
                  sub          t1, zero, s0
                  slt          t3, s1, t1
                  addi         a5, a0, 368
                  or           t4, a6, s11
                  lui          ra, 916711
                  xori         s5, s2, 808
                  sra          s1, t0, a1
                  slli         a2, s6, 3
                  sll          sp, s4, s11
                  sltu         tp, s10, s1
                  slti         s2, s4, 1919
                  srai         gp, s6, 16
                  and          s8, ra, t6
                  andi         a1, gp, -290
                  auipc        sp, 719637
                  and          t4, a2, a0
                  xori         s10, a4, 1806
                  sltu         s4, s0, tp
                  srli         s4, tp, 29
                  xor          zero, gp, tp
                  sll          s8, s4, a4
                  sltu         t2, t6, s3
                  slli         a6, t1, 29
                  add          sp, s8, s8
                  sltu         ra, s11, t0
                  slti         s4, t4, 328
                  addi         sp, a6, 13
                  add          a7, s4, a1
                  andi         s10, s4, -184
                  and          sp, s2, t6
                  srl          tp, t3, a5
                  srai         s10, ra, 27
                  auipc        a0, 498933
                  andi         s8, a0, -1600
                  andi         a6, s0, -1111
                  slli         zero, t4, 31
                  lui          zero, 332796
                  srai         tp, a5, 7
                  lui          tp, 45783
                  add          a3, zero, a4
                  xor          t0, a2, s5
                  addi         s6, a6, -149
                  add          tp, t4, t6
                  slt          ra, a0, s2
                  auipc        gp, 788477
                  xor          s4, s2, t0
                  sltiu        s8, sp, 3
                  sltiu        s9, a5, -1224
                  xor          t3, s6, a7
                  xori         t3, a1, 1981
                  sltu         tp, t0, t6
                  srl          s3, t4, a2
                  addi         t5, s0, 1206
                  lui          a5, 1047385
                  srl          t2, s11, a1
                  nop
                  slti         s3, s3, 1822
                  srl          s9, a4, a1
                  sll          s7, sp, t1
                  sra          tp, s7, gp
                  sll          a2, a1, t3
                  slli         s4, a3, 21
                  sub          t3, a0, s10
                  sltiu        s4, t0, -1297
                  nop
                  addi         t2, t2, -17
                  ori          t6, t6, -681
                  addi         s8, s6, 260
                  auipc        t3, 618336
                  auipc        a2, 943467
                  sltiu        s3, s11, 318
                  xori         zero, a4, -1168
                  slli         s1, t0, 5
                  xor          tp, a7, s10
                  lui          s4, 67536
                  sltiu        a6, t6, -1354
                  slli         t0, a0, 18
                  auipc        sp, 814534
                  addi         t2, a5, 483
                  slt          t5, t4, gp
                  auipc        ra, 493121
                  lui          ra, 510712
                  sll          sp, a5, a5
                  sll          t6, a6, zero
                  or           ra, s1, t0
                  auipc        s3, 989495
                  sltu         a6, t4, t4
                  sra          t0, t3, a3
                  ori          zero, s4, 592
                  sll          s4, t0, a6
                  and          s2, t4, a0
                  srli         t1, a1, 9
                  and          s8, s5, a3
                  srai         a1, a1, 19
                  slt          s6, s4, t0
                  xori         ra, s8, -947
                  add          tp, t3, t6
                  slt          a7, s7, s2
                  sra          t1, s6, s9
                  srli         s6, zero, 19
                  sll          t1, t5, s4
                  sll          a0, t0, tp
                  srli         s8, a4, 16
                  srl          a7, s11, gp
                  andi         s6, zero, -1177
                  auipc        s5, 47147
                  slt          zero, zero, zero
                  sltiu        t6, s8, -631
                  srl          s1, gp, a3
                  lui          zero, 10524
                  or           a1, s7, t4
                  sra          a6, s7, a0
                  slt          t4, s8, s1
                  ori          s8, a4, 36
                  sra          a5, s9, a4
                  sub          gp, s11, t4
                  xor          a3, s6, a1
                  auipc        t0, 688142
                  or           a5, s5, s9
                  andi         s6, sp, -1470
                  sub          a7, a1, sp
                  srl          a7, s6, s6
                  auipc        s9, 732681
                  slt          ra, s8, t2
                  srli         s5, a6, 19
                  or           a3, s6, s9
                  andi         t1, ra, 1495
                  sub          s8, s7, t3
                  sll          s6, s10, s4
                  addi         t6, sp, 1356
                  xori         a3, s10, 984
                  add          tp, a2, t5
                  xori         a0, a4, 2023
                  srli         sp, s5, 4
                  or           a0, a2, t3
                  nop
                  nop
                  nop
                  andi         s4, t5, -143
                  slt          a1, t1, t2
                  sltu         s5, a6, zero
                  sra          s9, gp, s4
                  slli         t4, a1, 4
                  auipc        ra, 227651
                  sra          t3, sp, t0
                  slti         s9, s4, -711
                  xor          t6, t0, t4
                  xor          t6, s4, a6
                  srai         s10, s5, 10
                  addi         t5, a4, -299
                  auipc        t6, 340487
                  sub          tp, s9, t1
                  srl          a7, a4, t6
                  srli         t1, ra, 13
                  srli         sp, s0, 12
                  xor          a1, tp, s5
                  srli         a6, a1, 27
                  sltu         s8, t6, s8
                  sra          a2, a3, t6
                  sra          s5, s6, tp
                  xor          t5, ra, s8
                  addi         a2, zero, -985
                  sltiu        s9, a3, -1865
                  slti         s1, zero, -786
                  sra          s2, ra, t6
                  and          t4, tp, t0
                  auipc        s6, 533937
                  sltu         a2, t3, s10
                  auipc        a6, 720634
                  srl          a5, t6, s10
                  xor          s2, t5, t4
                  and          sp, zero, tp
                  or           a7, a1, t0
                  ori          ra, t5, -925
                  sll          t5, t2, a3
                  add          a2, s5, a5
                  nop
                  slti         a0, a2, -539
                  auipc        s5, 113332
                  ori          a1, gp, 121
                  lui          t2, 1031467
                  sll          a3, gp, a4
                  slli         a6, a5, 25
                  srli         a6, ra, 14
                  ori          sp, t6, -1798
                  sll          a1, t6, a7
                  lui          s10, 874009
                  lui          s9, 112084
                  sltu         s10, a4, s2
                  sra          s5, s3, t2
                  addi         t5, t4, -1841
                  and          s3, a3, s6
                  auipc        t4, 818864
                  srl          ra, a5, t6
                  srli         s8, a5, 9
                  slli         a0, a5, 24
                  sltiu        sp, a7, 1580
                  srai         gp, ra, 28
                  nop
                  ori          s1, a0, -74
                  and          t1, a0, a0
                  or           a5, t5, t6
                  add          ra, a1, gp
                  srai         s4, s3, 16
                  slti         t4, s1, -730
                  sltu         t6, s10, s0
                  andi         s1, s9, 390
                  slli         a6, s0, 10
                  slti         s2, a7, 496
                  or           s2, t4, a5
                  sltu         t5, t4, s9
                  srli         s4, ra, 17
                  sub          t1, s8, a1
                  lui          t6, 722732
                  add          sp, t0, a4
                  and          ra, tp, s2
                  sltiu        tp, a1, 15
                  sll          s10, a2, a0
                  sra          tp, s3, zero
                  srl          s5, zero, s0
                  xori         a3, zero, 214
                  sra          s4, s8, s2
                  and          t2, a1, a4
                  andi         t4, s5, 941
                  or           s4, s3, tp
                  sltiu        gp, a2, 1805
                  xor          tp, s0, s7
                  srai         t0, s5, 0
                  andi         t2, s3, -572
                  sltu         a6, s3, s1
                  and          a3, a5, t2
                  sltiu        s4, tp, -1644
                  sra          s1, s7, a7
                  lui          a5, 319623
                  sltiu        s7, s2, -378
                  slt          a0, a6, t4
                  sltiu        t6, t5, -1086
                  srl          s8, s10, s5
                  srai         t0, gp, 1
                  add          s5, t4, sp
                  slti         s2, s3, 1606
                  slt          a1, a4, s8
                  ori          ra, t2, -801
                  sltu         tp, zero, s1
                  sll          sp, gp, s11
                  slti         t2, s6, 636
                  ori          t3, s9, -1465
                  add          t0, s6, a4
                  xor          a1, t6, a3
                  sra          tp, t2, ra
                  srai         s3, t6, 12
                  sub          a0, a3, s10
                  lui          t6, 203275
                  slli         a2, sp, 24
                  sltu         a1, a1, s8
                  xori         tp, s3, 1565
                  lui          ra, 612686
                  and          ra, s0, s8
                  srai         a1, a5, 11
                  slti         a0, s11, 817
                  or           t2, s0, t2
                  srl          s6, t2, a7
                  sra          a2, t5, s11
                  auipc        t4, 710729
                  auipc        a6, 386191
                  lui          sp, 724246
                  and          s1, zero, a0
                  auipc        t3, 11334
                  slti         gp, s3, -721
                  slt          s2, tp, a2
                  srl          sp, t6, s8
                  srai         s2, a3, 27
                  srli         t2, s8, 21
                  sltu         ra, s0, zero
                  sll          a2, ra, ra
                  nop
                  xori         s7, gp, 1755
                  andi         s7, a2, 1354
                  lui          t3, 483364
                  srli         t0, t3, 29
                  and          a5, s6, a3
                  sra          s6, a1, sp
                  slli         t1, s1, 3
                  sub          t0, s4, sp
                  srai         t2, a7, 1
                  slti         a7, s4, -144
                  sltu         s3, sp, a7
                  auipc        s2, 750261
                  slti         t3, t2, 898
                  auipc        s10, 172523
                  auipc        gp, 196091
                  sltiu        ra, a5, 1697
                  andi         sp, s1, 1186
                  sltu         s3, a0, s10
                  auipc        s2, 874055
                  lui          t0, 481028
                  andi         t2, t6, 702
                  xor          zero, t0, t2
                  ori          a3, a1, 1926
                  sub          sp, a7, a3
                  sra          s10, s10, a5
                  slt          a0, a5, gp
                  slti         t0, s6, 1963
                  ori          a6, a3, 1167
                  sra          s1, s11, s4
                  xori         t1, a2, -403
                  or           ra, t5, s8
                  lui          a3, 431560
                  xori         t6, a3, 1750
                  xori         t1, t6, -1254
                  srai         s10, t5, 14
                  andi         a2, a4, 1342
                  ori          t4, s6, -171
                  nop
                  nop
                  addi         t2, s7, 933
                  sltiu        s1, zero, -1443
                  xor          a5, s2, s2
                  nop
                  ori          a0, t5, 186
                  addi         a6, s5, -1903
                  srli         s10, t2, 29
                  add          t0, s3, s6
                  ori          a1, s7, -197
                  slti         a3, t2, -1613
                  auipc        t1, 808784
                  or           a0, s7, gp
                  slli         s1, t4, 18
                  slli         t4, zero, 14
                  sub          t3, a4, a6
                  sll          s9, a4, tp
                  and          t6, ra, a3
                  ori          a0, s0, -198
                  xori         gp, gp, 756
                  srl          a3, s11, t5
                  sub          t6, gp, a5
                  or           s9, a3, s5
                  nop
                  sra          a6, s5, ra
                  srli         s4, a6, 7
                  slt          s6, s0, a6
                  sll          ra, s6, zero
                  add          t6, s5, tp
                  srl          a1, s4, s10
                  sra          t3, t1, zero
                  nop
                  xor          a1, a6, ra
                  srli         s9, t2, 8
                  addi         sp, s5, 1142
                  sltiu        a2, tp, 926
                  slti         tp, s7, -113
                  nop
                  ori          s6, t0, -111
                  srai         a3, t3, 25
                  slti         s7, a6, -672
                  nop
                  nop
                  and          s5, ra, ra
                  lui          t5, 813883
                  add          s2, s4, s2
                  xor          zero, a2, a3
                  andi         s5, s8, -867
                  sll          tp, t3, s4
                  ori          s7, a0, -837
                  and          a7, s6, t3
                  sub          ra, t6, s6
                  sll          t5, s6, t2
                  sltiu        t2, gp, 1910
                  auipc        t4, 39238
                  auipc        s7, 632063
                  sltiu        t1, s4, -1209
                  sltu         s5, a7, t6
                  srl          s3, s1, sp
                  sub          t1, a1, a5
                  add          zero, a1, a4
                  and          s8, zero, a6
                  sub          a0, s9, a7
                  srl          t3, t5, a3
                  and          s5, s7, s7
                  addi         s2, a2, -881
                  sra          tp, s4, sp
                  lui          a3, 15995
                  srai         s4, s11, 9
                  nop
                  slli         t2, gp, 24
                  auipc        t5, 694318
                  slti         t2, s2, 306
                  andi         gp, s5, -794
                  and          s8, t2, s1
                  lui          a1, 600325
                  lui          t0, 559512
                  andi         s3, s2, 848
                  slt          a7, s2, a7
                  sra          s5, t5, s11
                  sub          s2, ra, a3
                  sltiu        a5, tp, -1246
                  addi         s3, a2, -1828
                  or           s3, a5, s0
                  nop
                  add          t4, s7, s4
                  sub          a5, s11, a3
                  srai         s10, t4, 22
                  lui          t1, 674633
                  srai         s9, s6, 5
                  or           s10, s1, t1
                  xori         t2, a0, 1185
                  and          s7, t5, s7
                  sra          gp, s0, a1
                  sltiu        t1, t3, -1487
                  xor          s4, s7, s6
                  sra          s1, a2, t2
                  lui          s8, 1030146
                  srl          a2, a7, t3
                  xor          a7, s2, t5
                  sltu         s1, tp, s0
                  xori         s3, a7, -572
                  addi         t3, a7, -61
                  lui          t2, 369660
                  srli         t0, s2, 18
                  auipc        t4, 247318
                  slti         a5, a1, -1162
                  lui          ra, 827242
                  addi         t1, gp, -129
                  srai         a5, s9, 31
                  srai         zero, t3, 20
                  sra          s3, a6, s1
                  lui          s3, 814640
                  auipc        a1, 753972
                  slti         sp, a4, 1750
                  sltiu        a7, s7, -793
                  addi         a3, s8, 583
                  xor          t6, a2, s2
                  sub          t6, t6, s4
                  auipc        t5, 541056
                  sra          t0, t3, s11
                  or           tp, a7, s9
                  andi         a1, s6, 667
                  addi         t6, s1, -923
                  lui          s6, 36430
                  xor          gp, zero, s11
                  sltiu        s5, s6, -187
                  slli         zero, s10, 19
                  srai         gp, t6, 29
                  slli         a2, gp, 0
                  ori          zero, s3, 1661
                  lui          s9, 941857
                  or           t3, t4, s3
                  and          t2, t6, s11
                  sltu         s10, t4, a5
                  or           sp, s3, zero
                  slti         tp, a6, -1513
                  sltu         a6, gp, gp
                  slt          a3, t4, s10
                  add          a6, zero, s11
                  addi         a1, a5, -371
                  or           t3, s0, s9
                  lui          a6, 243024
                  slli         s7, s0, 21
                  sltu         tp, s6, s5
                  sub          a0, a1, tp
                  slt          a0, s2, a5
                  srl          s9, a4, tp
                  sub          s6, s5, tp
                  or           t3, s11, s3
                  sltiu        s5, s5, 849
                  add          t1, s0, a5
                  srli         t6, ra, 22
                  auipc        s1, 819790
                  srli         s5, a2, 28
                  srai         a0, t0, 28
                  addi         gp, gp, 1583
                  sub          a0, s11, tp
                  slti         a1, a5, 177
                  srai         a3, t0, 5
                  slli         t0, tp, 7
                  slt          a7, t1, t2
                  slt          t1, t4, a3
                  sub          t2, t4, a4
                  xor          sp, s10, a7
                  sltiu        s4, a6, 1278
                  sltiu        gp, a7, 709
                  slti         tp, a1, -1648
                  srl          s4, s0, sp
                  nop
                  slt          s8, s0, t0
                  sltiu        tp, sp, 395
                  sltu         s2, s6, s0
                  addi         a2, zero, -1482
                  or           a0, t4, sp
                  srai         t5, a7, 13
                  sll          t5, t3, s10
                  andi         s5, ra, -1441
                  nop
                  or           a0, s8, s9
                  nop
                  lui          a6, 704663
                  sra          a6, s7, ra
                  lui          zero, 421926
                  sltiu        s10, t1, 801
                  nop
                  nop
                  add          a3, a6, s6
                  xor          a5, a7, s10
                  sub          a1, a5, sp
                  lui          tp, 52481
                  slti         s3, t6, -1022
                  addi         s2, s0, -79
                  sltu         a0, s1, s11
                  slti         s2, zero, -1878
                  sltu         a3, tp, a3
                  sll          a7, s11, s4
                  srai         a6, s4, 0
                  nop
                  sra          ra, t1, s1
                  sltu         a3, sp, s11
                  andi         a7, s5, 1759
                  sra          a5, a4, a1
                  nop
                  xor          s9, a5, t2
                  auipc        t6, 977958
                  sll          a3, a0, s0
                  andi         s7, a1, -584
                  srl          t6, s2, s7
                  sltiu        s3, a7, 1430
                  and          t3, t5, a4
                  slli         s6, s2, 0
                  auipc        s9, 854748
                  lui          a3, 960410
                  and          a1, a3, gp
                  sltu         a1, s0, a4
                  srli         t4, sp, 3
                  srai         a3, sp, 15
                  lui          tp, 176754
                  auipc        s8, 815004
                  slt          a2, t1, t5
                  sll          t0, s11, t3
                  xori         s5, zero, 976
                  sll          t1, t6, s0
                  sub          t5, s9, ra
                  xor          gp, t6, sp
                  srl          t4, t5, a5
                  slti         t2, s7, 1341
                  xori         t2, t0, 1253
                  andi         s9, s11, -1429
                  sra          a3, a5, gp
                  slt          t6, s0, a4
                  lui          t1, 957958
                  sltiu        tp, s10, -471
                  addi         a3, gp, -322
                  slti         zero, s9, 857
                  xori         gp, s3, -1181
                  add          t2, s8, s8
                  srli         ra, t1, 5
                  sll          s4, t5, a3
                  and          t2, t4, s5
                  srli         tp, s11, 21
                  sltiu        s10, zero, 1879
                  xori         sp, a7, 1156
                  sub          a7, a5, ra
                  lui          a0, 786843
                  xori         sp, t5, 2009
                  and          s7, s3, s5
                  andi         s4, t4, -383
                  srli         t4, gp, 25
                  srl          s3, s0, a3
                  add          ra, a5, a1
                  sltiu        t3, s3, -1325
                  lui          tp, 352427
                  or           zero, s3, ra
                  slt          s7, a3, a7
                  add          s3, t4, a6
                  slti         t0, s3, 553
                  srli         s5, t2, 6
                  sltiu        a0, t2, 1310
                  or           tp, a0, s2
                  slli         t0, s5, 9
                  li           t4, 0x2dba5278 #start riscv_int_numeric_corner_stream_14
                  li           s2, 0x77e289c8
                  li           t6, 0x0
                  li           t2, 0x0
                  li           s7, 0xffffffff
                  li           t3, 0x80000000
                  li           s1, 0x80000000
                  li           s5, 0x29764a02
                  li           t5, 0x0
                  li           s8, 0x584cda16
                  lui          t6, 500313
                  add          s1, t2, s7
                  nop
                  auipc        s2, 854340
                  nop
                  auipc        s7, 82353
                  addi         t5, s5, -44
                  auipc        t2, 822960
                  lui          s2, 376216
                  add          t2, t2, s5
                  sub          t4, t3, s7
                  addi         t2, t3, -144
                  nop
                  addi         t5, t2, -627
                  sub          s2, t6, s2
                  sub          t6, t2, t6
                  sub          s2, t3, t4
                  nop
                  nop
                  addi         t4, t5, -654
                  add          t4, s7, s5 #end riscv_int_numeric_corner_stream_14
                  lui          a3, 910671
                  and          s9, s11, s2
                  lui          t6, 877643
                  add          t4, s0, ra
                  addi         s1, s6, -586
                  lui          s4, 977025
                  slt          gp, s7, a4
                  or           t0, s3, s11
                  sltiu        s10, t4, -738
                  ori          a2, s7, -659
                  sra          a1, a3, tp
                  slti         a1, t5, -337
                  addi         a6, t1, -924
                  srai         t2, s1, 0
                  srl          t4, s4, s5
                  nop
                  sltu         s5, a5, s4
                  xori         s9, a2, -1199
                  andi         t4, s3, 2002
                  sltu         a5, s10, t5
                  sltiu        tp, a2, -144
                  srai         t2, s0, 24
                  addi         s2, s1, -683
                  xori         s10, tp, 702
                  andi         s2, a2, 261
                  andi         a6, t5, 1313
                  auipc        s1, 419727
                  srli         a6, t1, 18
                  sltu         ra, t5, s2
                  ori          a2, s10, -297
                  sltu         a3, t2, t6
                  sll          a2, a6, a1
                  sub          t3, s5, sp
                  and          t3, sp, t6
                  slti         s5, s11, 1128
                  sub          s8, s9, s7
                  ori          tp, s10, -1713
                  slti         s9, s4, 1031
                  sltiu        t6, s3, -1788
                  lui          ra, 144661
                  andi         s10, s4, -1567
                  or           a0, a2, gp
                  srl          t4, a1, a3
                  addi         t4, a1, -141
                  slti         ra, s3, -1020
                  addi         s7, s6, 927
                  ori          a6, a3, -460
                  sra          t5, s3, t0
                  lui          s5, 454230
                  slt          t5, a7, sp
                  nop
                  xor          s4, ra, s5
                  xori         a0, s0, 1014
                  ori          a0, s0, -77
                  sll          a0, a2, s1
                  sltiu        a3, s7, -1092
                  andi         s1, s4, -1772
                  addi         a6, a4, -1052
                  sltu         t5, t0, s3
                  xor          s10, ra, s10
                  xor          tp, a6, s4
                  nop
                  xori         t4, s11, -48
                  slti         s3, s1, 1759
                  auipc        s9, 593775
                  xor          t3, s1, t2
                  slli         a5, t5, 3
                  add          s1, a7, s8
                  xori         t5, s2, 714
                  srai         t6, zero, 6
                  nop
                  add          t0, t3, s2
                  xor          tp, zero, a3
                  sra          s5, gp, ra
                  slti         t0, s1, 1751
                  sra          t3, s2, s9
                  nop
                  sra          t4, ra, a2
                  sltu         s9, s5, t5
                  or           sp, s7, s0
                  sra          s6, a1, a3
                  sra          s2, a4, t6
                  srli         t0, s3, 6
                  and          a7, a0, s1
                  add          t2, t2, a6
                  sltiu        a7, gp, 670
                  sll          s9, s11, s9
                  sltu         s8, s0, sp
                  srai         t2, s8, 12
                  lui          s1, 314190
                  sll          s7, sp, a4
                  slti         a7, s10, 1215
                  xor          t5, a2, ra
                  or           s8, ra, s11
                  addi         s5, s9, 61
                  addi         a5, a3, -1543
                  nop
                  slli         s1, zero, 4
                  addi         s4, s1, -1067
                  xori         t6, s2, -1078
                  ori          t0, s8, -1302
                  nop
                  xori         gp, s7, -848
                  auipc        s1, 928471
                  sll          gp, s1, t1
                  add          zero, t6, zero
                  sltu         s5, s5, s3
                  auipc        a3, 1045343
                  or           a3, t5, a2
                  sub          t2, sp, a0
                  sltiu        t6, sp, 506
                  slti         s3, s0, 240
                  slt          gp, s6, a0
                  slti         a5, a2, -439
                  or           s1, t3, s8
                  ori          t4, a7, 715
                  sltiu        s7, a0, 1762
                  auipc        t2, 962621
                  slli         s4, tp, 25
                  xori         t2, ra, 250
                  sltiu        t0, s1, -624
                  addi         a6, s6, 1790
                  lui          a2, 781623
                  auipc        s4, 476044
                  or           t1, t3, s9
                  sra          t1, t2, a1
                  srli         s2, t3, 13
                  srli         a2, a5, 16
                  sll          t1, a2, ra
                  xori         s10, t2, 1851
                  or           a1, a0, zero
                  xori         gp, a6, -1553
                  and          s6, s10, a4
                  and          sp, a6, s4
                  srli         a0, sp, 22
                  srli         ra, s10, 25
                  slti         t2, t1, -1360
                  xori         a0, s11, -1053
                  sra          t0, a6, s9
                  add          s2, a0, t6
                  sub          s8, s6, s3
                  sra          t6, s7, tp
                  add          s7, t6, t5
                  sltiu        s4, a1, -2033
                  sll          t6, s7, t4
                  and          t3, s2, s5
                  xor          a0, s9, zero
                  sltu         s8, s6, s3
                  andi         t1, zero, -1353
                  nop
                  slli         a6, t1, 6
                  slt          gp, a3, s5
                  lui          s6, 580266
                  slli         tp, gp, 30
                  add          s10, s11, t1
                  lui          zero, 418516
                  sra          zero, t0, t0
                  slt          a5, s4, s11
                  auipc        a1, 10692
                  sltu         a5, t5, t6
                  and          a6, s2, s1
                  andi         t0, gp, -244
                  ori          s10, s4, 1908
                  srai         t0, t4, 13
                  addi         gp, ra, -355
                  slli         s4, a4, 24
                  sll          zero, s11, a3
                  slti         t1, s4, -715
                  auipc        s8, 981574
                  ori          a1, s8, -698
                  and          t3, s1, t3
                  sltu         s4, a4, s8
                  srl          s5, a1, a6
                  auipc        a3, 585323
                  xor          t0, s8, gp
                  or           s8, t4, a1
                  xor          t3, t6, s4
                  srli         ra, tp, 27
                  xori         sp, t3, -1868
                  andi         a6, s2, -1626
                  sltiu        s10, ra, 181
                  andi         t2, s6, -992
                  sra          a3, s6, s9
                  srai         a7, a1, 24
                  andi         t3, sp, 1827
                  nop
                  and          s10, t0, s6
                  sub          a1, t3, sp
                  and          s1, t1, a6
                  add          t5, s2, a1
                  xori         s1, a6, -275
                  slt          a1, t1, s8
                  sra          s6, t6, t6
                  lui          s8, 435761
                  or           t3, s3, t3
                  nop
                  slti         a5, a5, -1929
                  and          a2, s8, a0
                  xori         a2, gp, -151
                  auipc        a0, 155272
                  srl          s5, sp, a2
                  srli         sp, a4, 27
                  andi         zero, a3, -1312
                  lui          t6, 372380
                  slli         gp, a3, 5
                  sub          a1, t4, a1
                  slli         tp, s8, 3
                  sll          s3, s3, t3
                  srl          t3, s4, s3
                  xori         s1, s7, -1107
                  lui          t6, 561025
                  add          t2, s5, t6
                  sra          s9, s10, t3
                  ori          s5, a4, 1632
                  sltiu        s10, t0, -303
                  srli         t3, s9, 27
                  srai         s1, t3, 13
                  auipc        t2, 80837
                  sltu         s8, a6, a1
                  srai         s6, a1, 22
                  auipc        tp, 495045
                  lui          s3, 771447
                  sltiu        s5, a7, -238
                  slli         s8, gp, 24
                  xor          gp, s9, s0
                  ori          t3, s4, -1655
                  andi         s2, a3, 1740
                  slt          t1, t1, t3
                  add          t5, a1, ra
                  andi         sp, a2, -1737
                  xori         a1, s11, -1881
                  srai         s10, s6, 26
                  or           gp, a2, s3
                  srai         s4, s0, 5
                  sub          t1, a4, s9
                  srai         a0, a1, 20
                  slti         a6, t6, -775
                  slli         a0, a0, 30
                  sltu         t0, s6, a1
                  sltiu        s3, a5, -1086
                  auipc        tp, 905401
                  or           s9, a2, s0
                  xori         t1, s1, 872
                  or           s7, a3, s7
                  srai         ra, a0, 3
                  sra          t6, a5, t5
                  slli         a1, t5, 16
                  sll          s3, tp, sp
                  xor          t5, ra, t5
                  sll          gp, a3, s8
                  sltu         t2, t0, a2
                  ori          a6, a6, 1244
                  sll          s1, t3, a6
                  nop
                  sltu         s8, s1, t0
                  add          a3, tp, s11
                  sll          t5, s2, gp
                  sra          zero, s9, s7
                  auipc        s5, 420266
                  xor          a6, s0, t4
                  or           a3, gp, ra
                  xor          s4, t5, s3
                  srai         t0, a5, 30
                  or           s10, s2, t0
                  andi         gp, t0, -1878
                  xori         sp, t4, 1922
                  sub          t4, s9, s0
                  srli         a0, a7, 24
                  nop
                  sltiu        s7, s4, 218
                  nop
                  add          t6, ra, t5
                  srli         a3, ra, 4
                  and          a2, a0, s11
                  addi         a2, ra, 1709
                  nop
                  srli         a7, t2, 12
                  xori         t3, t2, -470
                  slt          s10, t5, s8
                  sub          t1, t5, s0
                  lui          ra, 1042886
                  sll          s1, a3, sp
                  srai         t5, t1, 4
                  srai         a7, a3, 1
                  sra          s10, a7, s8
                  slli         s6, a1, 20
                  sll          t1, t6, ra
                  or           a2, s9, a6
                  sub          ra, s0, s0
                  sltu         s2, s2, s3
                  srl          a2, t0, t3
                  addi         t0, s9, 957
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           a5, 0x93f655a8
                  li           gp, 0x80000000
                  li           ra, 0x80000000
                  li           t2, 0x80000000
                  li           s1, 0xffffffff
                  li           s6, 0x80000000
                  li           t6, 0xffffffff
                  li           s10, 0x80000000
                  li           a1, 0xffffffff
                  add          t2, a5, t6
                  auipc        ra, 117209
                  lui          s10, 156211
                  lui          ra, 388837
                  sub          t2, s6, s6
                  nop
                  auipc        gp, 773605
                  sub          a5, a7, a1
                  nop
                  addi         a5, s10, 183
                  auipc        t6, 94697
                  add          ra, a5, a5
                  addi         s6, ra, 276
                  addi         s6, gp, 1271
                  add          s10, gp, a5
                  sub          a1, s1, t6
                  sub          a5, t6, t6
                  sub          s1, s1, s1
                  addi         a7, ra, 1726
                  add          a5, ra, t2
                  auipc        a5, 254779
                  auipc        s10, 544632
                  nop
                  add          ra, ra, s1
                  addi         a5, s1, 374
                  addi         gp, a7, 135
                  lui          a5, 647129
                  sub          gp, t2, a5
                  addi         a7, t6, 862 #end riscv_int_numeric_corner_stream_1
                  slti         a0, gp, 312
                  srai         t2, gp, 22
                  nop
                  slt          t0, s0, t6
                  slli         s9, t0, 11
                  or           zero, s7, zero
                  slt          t0, a4, zero
                  ori          ra, t1, 308
                  auipc        t6, 370861
                  and          a6, tp, a2
                  and          t5, a5, a4
                  sll          s1, s0, gp
                  srli         s4, ra, 1
                  sll          s7, t4, s7
                  srli         t0, s10, 17
                  sra          a0, s2, s5
                  auipc        s6, 551932
                  addi         s4, s8, -80
                  auipc        a5, 701119
                  sltu         a7, a6, a6
                  ori          zero, s7, -218
                  add          a6, a0, s11
                  nop
                  slli         t6, t1, 31
                  slti         s10, s2, -1912
                  auipc        s8, 646221
                  or           ra, sp, s8
                  srl          ra, gp, t3
                  sra          t1, s10, t6
                  sra          a1, s9, t1
                  auipc        s4, 648169
                  sub          s5, s8, s7
                  sra          a3, t2, s0
                  xori         zero, s10, 1500
                  slti         gp, t4, -538
                  slti         s6, tp, 1695
                  lui          a5, 355477
                  slli         s8, zero, 28
                  sltiu        tp, a7, -260
                  addi         s1, s11, 51
                  xor          sp, s3, t1
                  slt          a7, t3, sp
                  ori          s4, t4, -409
                  sub          a6, tp, s0
                  xori         s3, a7, 216
                  slli         a2, ra, 16
                  ori          s7, s1, -1458
                  auipc        s5, 984474
                  nop
                  addi         s9, t6, 1042
                  ori          tp, t0, -482
                  lui          a7, 560378
                  auipc        s5, 295259
                  auipc        s1, 544361
                  sltu         s1, s2, t5
                  and          t5, a2, t5
                  srl          a3, s2, sp
                  sra          a0, s1, ra
                  xori         a0, a5, -741
                  xori         zero, zero, 894
                  xor          s1, t3, a2
                  add          a6, a0, ra
                  sub          t3, gp, t2
                  and          s3, a7, t0
                  slt          t1, s7, t6
                  lui          s2, 427050
                  sub          s9, t5, s9
                  and          s8, a2, s11
                  andi         s2, s2, -610
                  sub          t0, t1, s8
                  xori         a6, s6, 984
                  or           t0, a5, s8
                  sll          s7, tp, s8
                  ori          a0, t1, 1672
                  slli         s2, a6, 10
                  add          a2, ra, a7
                  srai         a1, a6, 15
                  add          t5, a3, tp
                  xor          sp, a4, t0
                  slli         s5, t4, 9
                  sltu         t1, s7, s1
                  sub          s10, t2, t6
                  lui          a3, 303505
                  or           s3, s2, s3
                  lui          a6, 380489
                  nop
                  auipc        s1, 1024977
                  slti         a0, s7, -704
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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x10, 0x300 # MSTATUS
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 31
                  bne x10, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x10, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x10, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x10, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x10, x12, ecall_handler
                  li x12, 0x1
                  beq x10, x12, instr_fault_handler
                  li x12, 0x5
                  beq x10, x12, load_fault_handler
                  li x12, 0x7
                  beq x10, x12, store_fault_handler
                  li x12, 0xc
                  beq x10, x12, pt_fault_handler
                  li x12, 0xd
                  beq x10, x12, pt_fault_handler
                  li x12, 0xf
                  beq x10, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

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
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x14, x27, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

load_fault_handler:
                  add x14, x27, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

store_fault_handler:
                  add x14, x27, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

ebreak_handler:   
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x14, x27, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

illegal_instr_handler:
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x14, x27, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x14, x27, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
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
