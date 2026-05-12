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
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x9, kernel_stack_end

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
                  li x0, 0x7ec01c9a
                  li x1, 0xf96f8700
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0x3a521e5
                  li x5, 0xd
                  li x6, 0x3ca38c31
                  li x7, 0x9
                  li x8, 0x5631c5d7
                  li x10, 0xed294cb3
                  li x11, 0xd
                  li x12, 0x3
                  li x13, 0x3
                  li x14, 0x0
                  li x16, 0x0
                  li x17, 0x72d22a03
                  li x18, 0xf97ce6c9
                  li x19, 0x0
                  li x20, 0x9
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xf6ec30b3
                  li x25, 0xf4eaa350
                  li x26, 0x1d740856
                  li x27, 0xf66d4942
                  li x28, 0xe78eb598
                  li x29, 0xd
                  li x30, 0x35c00143
                  li x31, 0x80000000
                  la x15, user_stack_end
main:             li           t5, 0xe06e365f #start riscv_int_numeric_corner_stream_9
                  li           s8, 0x80000000
                  li           s10, 0x0
                  li           t6, 0x5e81feba
                  li           t1, 0x0
                  li           gp, 0x0
                  li           ra, 0xfc21cead
                  li           a1, 0xffffffff
                  li           a4, 0xffffffff
                  li           a0, 0xfae7ee99
                  lui          t6, 107224
                  auipc        s8, 309703
                  lui          s8, 194878
                  sub          ra, s8, t5
                  lui          t6, 587657
                  sub          s8, t6, a0
                  addi         s8, t5, -1814
                  addi         t6, s8, -347
                  lui          a1, 171424
                  add          a4, a1, a0
                  addi         t5, s10, 1450
                  lui          ra, 640801
                  add          gp, s8, a4
                  addi         t5, gp, 1804
                  sub          a1, a4, t6
                  add          s10, t1, gp
                  addi         s8, a1, -1344
                  add          s10, s8, a4
                  auipc        ra, 682268
                  nop
                  add          s10, gp, a1
                  sub          s8, a4, a1 #end riscv_int_numeric_corner_stream_9
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           t1, 0x0
                  li           a2, 0x80000000
                  li           s5, 0x9c8c6015
                  li           s3, 0xffffffff
                  li           t0, 0xa9279d07
                  li           a1, 0x0
                  li           a4, 0xffffffff
                  li           s7, 0x2c970aa8
                  li           a0, 0xffffffff
                  lui          a2, 200460
                  addi         a4, s3, 700
                  add          s7, s7, a0
                  add          a0, a4, t1
                  add          s3, s5, a2
                  addi         a4, t0, 1383
                  auipc        ra, 722118
                  lui          s7, 820677
                  addi         t1, t0, 743
                  nop
                  sub          s7, t1, s7
                  auipc        s5, 204905
                  auipc        t1, 379042
                  add          a0, a1, t0
                  auipc        s7, 797448
                  add          ra, t0, s5
                  nop
                  lui          s3, 363816
                  nop
                  lui          a4, 869334
                  nop #end riscv_int_numeric_corner_stream_4
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           s0, 0x0
                  li           s8, 0xffffffff
                  li           t4, 0x5669e46d
                  li           sp, 0x80000000
                  li           s7, 0xffffffff
                  li           a2, 0x80000000
                  li           t3, 0x80000000
                  li           t1, 0xffffffff
                  li           s11, 0x80000000
                  lui          s7, 614242
                  lui          s11, 632352
                  addi         s7, t3, 1015
                  nop
                  nop
                  addi         t1, sp, 1075
                  nop
                  lui          t1, 1042722
                  sub          t1, s8, s11
                  lui          a2, 290820
                  auipc        t4, 1023748
                  lui          s11, 644033
                  addi         s8, s11, 116
                  auipc        s0, 593912
                  lui          t4, 285408
                  sub          s8, s11, s0
                  add          a2, a2, t1
                  lui          s7, 283499
                  sub          s7, t4, s7
                  sub          t4, a2, s8
                  sub          t3, t4, t1
                  add          s8, s7, t0 #end riscv_int_numeric_corner_stream_15
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           ra, 0x0
                  li           s5, 0x42359776
                  li           tp, 0x0
                  li           t4, 0x80000000
                  li           t3, 0x215d24fd
                  li           a3, 0xffffffff
                  li           s0, 0x49f3cf45
                  li           s6, 0x80000000
                  li           s8, 0x0
                  sub          sp, t3, s6
                  addi         sp, a3, -861
                  addi         sp, t4, 2022
                  add          t4, tp, t3
                  lui          t4, 812075
                  sub          sp, sp, sp
                  add          tp, s6, s6
                  lui          s6, 1027083
                  sub          ra, tp, s5
                  addi         s8, t4, 1784
                  sub          s6, a3, s6
                  auipc        s6, 139328
                  add          sp, a3, ra
                  nop
                  lui          ra, 1045990
                  nop
                  add          ra, s6, s6
                  nop
                  addi         t4, sp, 28 #end riscv_int_numeric_corner_stream_7
                  li           s7, 0x91713ff4 #start riscv_int_numeric_corner_stream_5
                  li           a4, 0x80000000
                  li           a6, 0x80000000
                  li           t3, 0xaf74c527
                  li           s6, 0x80000000
                  li           t6, 0x0
                  li           s0, 0x0
                  li           s10, 0xffffffff
                  li           a2, 0xeed40e9d
                  li           s3, 0x546c1d71
                  nop
                  lui          t3, 1024502
                  lui          t3, 89639
                  lui          s3, 8855
                  add          t3, s10, s7
                  auipc        a2, 54371
                  add          s3, s6, a4
                  addi         t3, t3, 858
                  nop
                  auipc        t3, 242545
                  add          s3, a6, t3
                  auipc        t3, 383128
                  auipc        a4, 263670
                  sub          s7, s0, s0
                  add          s0, t6, s3
                  nop
                  sub          s3, s3, t3
                  addi         t6, a4, 678
                  nop
                  add          t6, s6, t6
                  lui          a6, 655888
                  addi         s0, s3, 487
                  addi         a4, a6, -1009
                  lui          t6, 886262
                  nop
                  lui          s3, 1009654
                  addi         s10, t6, -1024 #end riscv_int_numeric_corner_stream_5
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s9, 0x9bff8791
                  li           sp, 0xffffffff
                  li           t3, 0x0
                  li           a4, 0xf7ba5f48
                  li           t4, 0x23262508
                  li           t0, 0x80000000
                  li           ra, 0x80000000
                  li           a6, 0x7f09f422
                  li           t1, 0x80000000
                  lui          t1, 896612
                  auipc        s8, 988400
                  lui          t3, 233658
                  auipc        a6, 258749
                  add          t0, t3, t0
                  nop
                  lui          t1, 711048
                  addi         t4, a4, 1820
                  addi         t4, sp, -1837
                  auipc        t1, 113285
                  add          t1, sp, t3
                  lui          s8, 229572
                  nop
                  add          ra, a6, t0
                  sub          t3, ra, t4
                  addi         a4, s8, 121
                  lui          a4, 839441
                  sub          t1, sp, t3
                  lui          t1, 901158
                  nop #end riscv_int_numeric_corner_stream_1
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           t0, 0x80000000
                  li           sp, 0x5a879439
                  li           t2, 0x0
                  li           a4, 0x80000000
                  li           s6, 0x80000000
                  li           a3, 0xffffffff
                  li           s8, 0x0
                  li           t4, 0xffffffff
                  li           a6, 0xffffffff
                  add          s8, t0, a4
                  add          s8, t0, a6
                  auipc        t2, 221928
                  sub          a4, a3, t2
                  lui          t0, 485256
                  addi         t2, s6, 1797
                  addi         s6, a4, 972
                  sub          a4, t4, s11
                  sub          a6, s11, t2
                  auipc        t0, 66282
                  lui          s8, 820452
                  addi         sp, t0, 1822
                  nop
                  nop
                  lui          t2, 821444
                  lui          t2, 517017
                  addi         s6, a6, 213
                  addi         a6, a4, -1293
                  addi         s6, a3, 773
                  lui          t4, 503591
                  nop
                  nop
                  add          t2, t4, t4
                  sub          s6, a6, a6
                  add          a4, t2, a6
                  auipc        a6, 819536
                  lui          a4, 702613
                  addi         sp, t0, 1881 #end riscv_int_numeric_corner_stream_11
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           s0, 0x0
                  li           s4, 0xbf1f69fb
                  li           t2, 0x0
                  li           t0, 0x80000000
                  li           s3, 0x80000000
                  li           gp, 0x80000000
                  li           s9, 0x80000000
                  li           s8, 0x0
                  li           t1, 0xf034474c
                  nop
                  sub          s3, s8, t2
                  sub          s4, s3, t1
                  add          s4, t2, s9
                  sub          s0, s0, s9
                  add          t0, t2, gp
                  addi         t1, s9, -860
                  nop
                  sub          t1, s0, t2
                  nop
                  nop
                  sub          s9, t4, s0
                  lui          t4, 421069
                  add          s8, gp, t2
                  auipc        s0, 147828
                  auipc        t4, 918779
                  lui          t1, 648347
                  lui          t1, 734239
                  lui          s3, 376725
                  addi         gp, s8, -613
                  auipc        t1, 85005
                  add          s0, s8, t1
                  lui          t2, 817193
                  sub          t0, s3, t4
                  addi         gp, s9, 1425 #end riscv_int_numeric_corner_stream_12
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           t3, 0x0
                  li           a2, 0xffffffff
                  li           s3, 0x0
                  li           t0, 0xffffffff
                  li           s9, 0x80000000
                  li           tp, 0x80000000
                  li           s11, 0x51712683
                  li           a4, 0xa95e229d
                  li           a3, 0x80000000
                  sub          s0, t3, a3
                  sub          tp, t3, a2
                  sub          t0, a4, tp
                  nop
                  add          t3, a2, s0
                  addi         a2, a2, 1575
                  nop
                  auipc        s11, 801862
                  sub          a3, s11, a4
                  sub          t0, s9, a2
                  nop
                  lui          a2, 806022
                  nop
                  lui          a3, 301254
                  auipc        t0, 881424
                  auipc        s11, 483139 #end riscv_int_numeric_corner_stream_3
                  lui          gp, 835854
                  srli         s6, t3, 9
                  addi         s11, s4, 1818
                  sltu         ra, s8, a4
                  sltu         t1, t1, gp
                  sub          s0, t2, t1
                  slti         tp, t4, 213
                  addi         a2, t6, -1354
                  sra          s6, t2, s2
                  slti         t2, gp, -1127
                  srai         s4, s8, 31
                  lui          s10, 1455
                  sltu         s10, s2, s1
                  sra          t5, sp, gp
                  add          gp, s3, t4
                  or           s0, s5, s8
                  sub          s5, s6, s0
                  or           zero, t4, s2
                  xori         t6, a0, -1347
                  slli         t2, tp, 21
                  lui          t3, 114978
                  nop
                  and          s6, a5, zero
                  xori         gp, s3, 1883
                  xor          a7, s0, s3
                  sra          tp, gp, s0
                  sra          a0, t3, gp
                  ori          a0, s8, 341
                  xori         ra, a7, -2039
                  srl          a0, ra, t5
                  slti         a2, t3, -1956
                  sra          ra, tp, a1
                  slt          a6, t2, t6
                  andi         a2, a0, -1709
                  auipc        a6, 159561
                  srai         s7, a6, 13
                  lui          s8, 664040
                  sll          a2, s1, t0
                  sll          s8, s2, t2
                  slli         t6, a1, 10
                  nop
                  or           a7, t1, s2
                  andi         t4, t3, -1634
                  auipc        s7, 489034
                  andi         s9, t5, -15
                  auipc        gp, 971395
                  xori         a1, s8, -1758
                  xori         s0, a2, -504
                  xor          t3, s8, a7
                  srai         s7, a7, 18
                  or           zero, a4, a7
                  add          a4, a7, a0
                  sltiu        a4, t4, 1268
                  xori         t1, ra, 1044
                  sltu         t6, a2, t5
                  addi         zero, t1, 1898
                  auipc        ra, 450734
                  sub          zero, s10, t5
                  srli         s0, a2, 26
                  srl          a0, tp, a0
                  xor          s10, s8, a3
                  addi         s11, s9, -688
                  slt          t4, t0, s9
                  slti         sp, a6, -1437
                  sll          a3, a3, ra
                  slli         t5, s9, 12
                  sll          ra, s10, a5
                  or           a2, t0, s2
                  sltu         sp, s9, s3
                  lui          ra, 719208
                  srli         t3, s4, 19
                  add          t2, s8, a7
                  auipc        t6, 901204
                  srl          s10, a4, a3
                  xori         s8, s9, -636
                  ori          a2, a4, 1158
                  sub          ra, s5, a2
                  slt          t2, t5, a6
                  srli         s3, t0, 6
                  add          s6, a6, a5
                  slti         sp, gp, 1493
                  xor          tp, s5, t0
                  sub          tp, s6, s0
                  xor          s5, t5, s4
                  sra          a1, tp, t1
                  slti         t3, a7, 2031
                  slli         t5, s3, 4
                  sub          s11, sp, s6
                  slli         zero, a7, 4
                  nop
                  or           t2, t2, ra
                  andi         a3, t6, 1224
                  sltiu        s7, t0, 701
                  sltu         sp, a2, t6
                  sll          zero, ra, t5
                  auipc        a7, 550567
                  auipc        s7, 70733
                  xori         s7, t2, 229
                  sub          a6, sp, a0
                  srli         a6, t4, 9
                  sll          a3, a0, t6
                  slt          gp, sp, s6
                  slt          sp, a4, t0
                  sll          s10, s1, zero
                  sra          s4, t3, gp
                  and          a1, s6, tp
                  auipc        a3, 368605
                  nop
                  lui          t1, 352137
                  and          a4, t1, s7
                  addi         s5, tp, -1621
                  ori          a1, s11, -1091
                  sll          s3, a1, a4
                  slti         a3, t4, 1150
                  lui          s8, 521507
                  srl          sp, sp, s6
                  lui          a7, 1042875
                  slti         a4, t1, -235
                  sub          t0, t1, sp
                  sub          t5, t0, s9
                  xori         t1, a7, 1295
                  andi         sp, gp, 983
                  ori          t2, sp, -1242
                  nop
                  srli         t2, t4, 31
                  srli         a1, t0, 6
                  sll          t3, t4, t0
                  slti         a7, a0, 1301
                  slt          s4, ra, s9
                  auipc        s10, 213765
                  xor          s11, t1, s8
                  srl          t3, t2, a5
                  auipc        a3, 505222
                  and          s3, ra, a7
                  xori         t1, t6, 2002
                  srl          s0, a2, a0
                  auipc        a2, 892133
                  auipc        s0, 186022
                  sltiu        a0, a4, 1936
                  addi         s0, s2, 1609
                  slti         s0, s6, -389
                  slt          s9, s6, s7
                  auipc        a1, 287909
                  xor          t0, t0, s3
                  or           zero, t1, t1
                  sltiu        t2, s2, 1861
                  lui          s0, 298785
                  ori          a3, s7, 1389
                  sltu         s8, a0, s10
                  slti         s10, t4, 929
                  add          a1, a1, s3
                  and          a0, s5, zero
                  sra          a0, zero, s5
                  sltu         a1, s6, s1
                  sltiu        t1, s9, 802
                  slti         s4, t5, -888
                  sub          s5, s11, a5
                  sll          ra, t6, tp
                  and          zero, s6, a7
                  sub          tp, t6, a3
                  nop
                  sll          a2, t3, a3
                  or           a7, zero, a3
                  xori         a0, gp, 160
                  srli         s0, s4, 16
                  auipc        t4, 471052
                  sra          a2, a1, s2
                  srl          s5, sp, a7
                  srl          ra, s5, s1
                  sltu         t4, s5, t1
                  srli         t3, s11, 21
                  nop
                  slti         s0, s5, -1830
                  addi         s0, s0, -1684
                  and          t4, s0, tp
                  xor          a0, a5, sp
                  xor          t4, s10, t1
                  slt          t6, t4, t6
                  xori         s3, s0, -1426
                  auipc        s11, 342953
                  ori          s3, s9, 786
                  sub          s5, s5, a3
                  slti         a1, s3, -1630
                  slti         tp, zero, 1924
                  addi         tp, s8, -1368
                  slli         t2, a3, 16
                  addi         t2, ra, 1513
                  addi         t3, t6, 1449
                  slti         s0, s2, -1608
                  add          a6, sp, s10
                  sub          s5, s8, zero
                  or           ra, t6, t5
                  sltu         t3, t5, t0
                  slli         a4, t5, 13
                  auipc        a4, 1012321
                  addi         gp, s4, -1043
                  slt          a7, a7, t0
                  srai         s8, ra, 27
                  sra          a4, zero, s6
                  or           t3, s8, zero
                  andi         tp, t4, -521
                  addi         a3, s1, 895
                  slti         s4, tp, 1178
                  slt          t3, s1, zero
                  xor          ra, t3, a4
                  or           a4, s7, a1
                  xori         t3, gp, -874
                  auipc        tp, 734283
                  sra          s10, a2, tp
                  nop
                  sll          tp, tp, s8
                  addi         a0, s7, -1981
                  auipc        sp, 337959
                  add          s7, a5, s3
                  and          s3, s8, t1
                  ori          t1, s7, -1758
                  nop
                  auipc        a4, 379611
                  sltiu        a6, a1, 1668
                  ori          a0, s9, 1368
                  srai         a2, sp, 8
                  add          a3, t1, t1
                  and          t0, s9, a4
                  nop
                  srli         s7, a7, 31
                  ori          t5, gp, -1422
                  srl          ra, sp, a1
                  addi         t1, a4, 345
                  auipc        t4, 444320
                  nop
                  lui          s3, 35391
                  and          t1, a5, s7
                  or           a4, s6, a6
                  and          sp, a5, t0
                  andi         t5, s0, 526
                  auipc        a6, 171321
                  sra          gp, t4, a6
                  xor          s10, s5, s8
                  andi         zero, t1, 1392
                  nop
                  nop
                  andi         a0, a2, 358
                  sltu         a6, t2, zero
                  slli         a2, a1, 9
                  or           t5, a2, s11
                  lui          a2, 532034
                  srai         t4, s6, 0
                  xori         t1, t4, 1500
                  or           a3, a6, a6
                  sll          gp, gp, s2
                  srli         s4, a6, 30
                  srl          s0, t0, t3
                  andi         sp, a2, -781
                  slli         zero, s9, 10
                  slt          s11, a0, t2
                  auipc        a3, 53682
                  sltiu        s8, zero, -843
                  addi         a1, a5, -1565
                  slt          s6, t2, s8
                  slli         t3, a0, 19
                  srl          gp, s9, s9
                  auipc        s6, 555060
                  srli         a6, t1, 22
                  srli         tp, s0, 15
                  sll          zero, t6, s11
                  add          a4, sp, a3
                  nop
                  nop
                  slt          t5, s9, s11
                  srli         s9, s4, 25
                  sltiu        s3, t5, 1383
                  sub          t6, ra, tp
                  sll          s10, s8, t4
                  xor          s3, s7, a6
                  sub          s3, s7, s7
                  sltiu        s0, gp, 1789
                  ori          a2, s11, 91
                  lui          sp, 595179
                  srai         a0, sp, 12
                  lui          s11, 787162
                  srli         gp, a5, 14
                  slt          t3, a7, ra
                  srl          s0, a3, a0
                  lui          sp, 348996
                  and          s3, s6, ra
                  slli         a6, s11, 23
                  xori         a4, ra, -1533
                  slti         a2, a2, -120
                  auipc        t3, 392819
                  slt          s11, zero, s1
                  xor          s0, a5, t2
                  sra          a4, zero, s11
                  nop
                  lui          s0, 457251
                  and          a0, s5, a7
                  auipc        t5, 732885
                  xori         a1, a6, -1786
                  or           a2, s10, s8
                  xor          a4, t5, a3
                  ori          s8, s2, 81
                  nop
                  ori          t6, s9, 643
                  and          a4, s4, a5
                  ori          s9, a1, -756
                  and          s4, zero, a0
                  addi         t4, t5, -1397
                  lui          s5, 63186
                  sll          s8, a3, ra
                  slli         s9, a7, 10
                  sltu         s11, t6, s1
                  nop
                  auipc        sp, 490689
                  srli         t1, gp, 4
                  add          a2, a1, sp
                  sltiu        t3, ra, -959
                  srli         sp, a2, 2
                  sll          a2, t5, t2
                  addi         t5, a4, 768
                  add          s5, s2, t5
                  srai         s10, t6, 6
                  xor          s7, a0, a5
                  ori          gp, t2, -1035
                  nop
                  sltiu        s6, t4, 1425
                  or           a7, t6, a0
                  nop
                  xor          a6, a1, s9
                  sra          a6, s2, gp
                  xor          t6, a3, tp
                  or           a0, a4, s6
                  nop
                  nop
                  auipc        t0, 738986
                  srl          a2, sp, gp
                  ori          zero, s8, -376
                  slti         t3, s10, -1251
                  xor          gp, s1, s4
                  xori         s5, s3, -946
                  ori          t0, t4, -1758
                  auipc        s6, 582943
                  andi         s3, ra, 303
                  sra          a0, s2, a0
                  xor          s4, a5, s1
                  nop
                  sll          s3, gp, t5
                  srai         s10, s0, 24
                  nop
                  sra          a6, s9, s10
                  xor          t1, a1, s8
                  srai         ra, s0, 21
                  sub          s11, s4, sp
                  sltiu        a7, a6, -974
                  nop
                  srli         s10, a7, 17
                  addi         a7, s2, 1537
                  sub          s0, s5, a3
                  srli         t3, tp, 12
                  add          tp, gp, s3
                  slli         a1, s2, 16
                  srai         a6, s0, 5
                  andi         s7, t1, -780
                  sltiu        t5, sp, 327
                  andi         a4, s6, -225
                  srl          a2, tp, a6
                  andi         s6, s0, -309
                  srli         s11, s3, 0
                  ori          s7, s11, 483
                  xor          s8, sp, a0
                  nop
                  srl          t1, s4, s8
                  sub          a4, t4, s6
                  and          s6, s10, s11
                  ori          sp, sp, 2017
                  addi         t3, t0, 867
                  and          s9, a2, a3
                  sltu         t4, a5, a1
                  sltu         a3, s8, s4
                  xor          s10, s6, gp
                  auipc        gp, 1036121
                  srli         ra, a3, 3
                  xor          t2, a0, zero
                  andi         t6, a3, 942
                  sltiu        tp, a1, -1086
                  sltu         t0, gp, t3
                  lui          s8, 62226
                  slti         t4, s5, 62
                  srai         s5, a1, 5
                  slt          zero, s4, ra
                  nop
                  sltu         s8, s11, t6
                  slti         tp, ra, 605
                  nop
                  sltiu        s8, t3, -680
                  sltiu        t4, gp, -989
                  addi         t6, a3, -1095
                  xori         s0, a2, -425
                  andi         t5, s5, -253
                  xor          a7, s0, tp
                  slli         s9, s5, 28
                  sra          s9, a5, sp
                  xori         s5, s8, -1828
                  sll          t0, tp, s6
                  slti         t3, t5, 1626
                  sra          s5, s8, a5
                  auipc        a4, 266125
                  ori          t4, a3, 1756
                  addi         a4, s7, -678
                  auipc        s9, 214592
                  ori          s3, sp, -191
                  lui          tp, 725542
                  ori          a4, tp, -289
                  add          gp, s2, a3
                  sra          s5, s11, s10
                  sll          s7, s8, s7
                  addi         a3, s4, -1039
                  sltu         s6, a3, s4
                  sub          t6, t2, s0
                  sra          sp, a2, a6
                  slli         ra, s8, 1
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           a0, 0xffffffff
                  li           t1, 0x80000000
                  li           t2, 0xffffffff
                  li           a4, 0x107ff508
                  li           a3, 0x80000000
                  li           t6, 0x0
                  li           s3, 0xffffffff
                  li           s11, 0xffffffff
                  li           s5, 0xffffffff
                  add          s3, a3, t3
                  auipc        t6, 640908
                  nop
                  addi         t1, s3, 115
                  nop
                  nop
                  auipc        t3, 112167
                  auipc        t2, 444110
                  auipc        a3, 574864
                  lui          a0, 354219
                  auipc        a0, 697917
                  lui          a0, 184772
                  addi         a4, s5, 516
                  add          a3, t1, t3
                  lui          a0, 371229
                  lui          s3, 593069
                  nop
                  auipc        t1, 682323
                  sub          t6, a0, a0
                  auipc        t6, 119791
                  lui          t6, 490320
                  sub          a0, t6, a3
                  addi         t1, t3, -1185
                  nop
                  add          a3, a0, a0
                  lui          s11, 171113
                  auipc        s5, 529160 #end riscv_int_numeric_corner_stream_6
                  slli         gp, s2, 9
                  nop
                  srl          s8, tp, s6
                  slli         t4, s3, 7
                  srai         s0, gp, 26
                  slt          a0, s4, s7
                  and          s5, s5, s9
                  sltu         s8, t3, t1
                  auipc        t6, 869883
                  slti         t1, t2, -2048
                  andi         zero, a6, -378
                  or           s8, s5, a5
                  srai         gp, t4, 13
                  add          t4, a2, s2
                  xor          sp, t5, a0
                  xori         a0, s1, 702
                  sll          s7, a0, a1
                  nop
                  lui          a2, 566769
                  nop
                  sll          a7, s1, s0
                  and          gp, s9, t2
                  srai         sp, s2, 6
                  lui          t4, 511023
                  slli         s10, s0, 29
                  and          a0, zero, t4
                  srl          s11, a7, gp
                  xor          tp, t3, t1
                  xori         t6, zero, -1694
                  srai         a0, t5, 0
                  add          t5, gp, a1
                  sltu         s11, s2, t1
                  srai         t1, tp, 20
                  add          t6, a0, s1
                  lui          sp, 169389
                  or           s10, s7, a4
                  sra          t2, s4, t5
                  xori         a7, a4, -1550
                  sra          s9, a4, s1
                  xori         a3, s10, -637
                  sub          a6, zero, t2
                  or           t6, tp, t5
                  srl          s6, s6, a3
                  sll          s6, sp, zero
                  or           gp, a2, s10
                  and          sp, t4, t0
                  or           a7, a1, a6
                  sltiu        t6, a4, 1634
                  sltiu        s0, s11, -1700
                  lui          a0, 170729
                  or           t0, s5, a4
                  slli         s3, ra, 24
                  slli         s8, s3, 27
                  srai         s10, a0, 19
                  slti         a7, ra, 1466
                  andi         sp, s7, -1264
                  slt          s8, t1, t5
                  srli         zero, s10, 21
                  andi         ra, s1, 1626
                  andi         s6, ra, -1704
                  or           tp, t4, s0
                  nop
                  xori         s0, s4, -1724
                  or           a0, a7, a5
                  xori         zero, s10, -1233
                  auipc        s7, 28401
                  auipc        t0, 993546
                  nop
                  slti         s10, s10, -566
                  nop
                  xor          a6, s8, a3
                  and          t3, s0, t4
                  ori          t2, s1, -1550
                  or           t6, tp, s11
                  slti         s11, s1, 2001
                  ori          t6, tp, -599
                  sltu         a1, tp, a7
                  sll          s6, t2, a5
                  slt          a0, s11, t3
                  slti         s5, s4, -89
                  xori         a1, a0, -1030
                  addi         a1, a5, 1565
                  lui          s5, 914480
                  ori          s0, a1, -18
                  or           t3, a6, a3
                  and          t1, a4, a2
                  add          a0, a6, a6
                  srli         a6, s0, 9
                  srli         gp, s10, 13
                  srl          tp, zero, a7
                  and          a4, zero, t2
                  slti         a2, t5, -1306
                  slli         tp, a7, 2
                  andi         a7, tp, 251
                  lui          t1, 612367
                  srli         t2, a5, 28
                  srli         s6, s1, 22
                  sll          s7, a4, a0
                  slti         s5, s11, -282
                  addi         t5, a4, -1566
                  slt          t0, s3, s3
                  sltu         zero, t1, ra
                  sltu         s8, s2, s2
                  and          t4, t4, t4
                  ori          t3, a0, -1463
                  ori          t6, sp, -1670
                  andi         t0, gp, 1438
                  slti         s5, s10, -367
                  ori          t4, s1, -1599
                  addi         s5, s10, 1700
                  srl          tp, s8, t3
                  srai         s9, ra, 31
                  sltiu        s6, t3, 715
                  slti         a4, s9, -1691
                  slti         a3, s8, -1340
                  xori         a0, zero, 1331
                  srai         t4, s10, 16
                  auipc        a3, 1623
                  srli         a1, a5, 31
                  and          t1, a5, s11
                  xori         t6, t6, -1467
                  sra          a1, a1, s5
                  srl          s10, s10, s0
                  auipc        s9, 458995
                  slli         t3, zero, 30
                  slti         zero, s11, 1073
                  ori          t1, t3, -11
                  andi         s11, t2, -1382
                  sll          ra, sp, tp
                  sub          gp, a3, a0
                  srli         s6, s6, 0
                  sub          t3, s1, s7
                  sub          s9, a4, s11
                  sra          s0, t6, s7
                  sll          sp, tp, a6
                  srl          a2, a1, s11
                  sub          s3, s6, t6
                  sll          s9, t5, s11
                  andi         sp, a3, -1979
                  auipc        a1, 218551
                  xori         t1, zero, 115
                  srli         ra, sp, 14
                  andi         zero, zero, -1524
                  add          t1, t2, s6
                  xor          sp, s11, s7
                  or           zero, s4, s7
                  srli         tp, s3, 25
                  lui          a0, 491998
                  srli         s4, t0, 19
                  auipc        t6, 779417
                  sub          s5, a6, tp
                  ori          a3, t6, -730
                  and          sp, t6, s5
                  add          s0, t5, a5
                  lui          gp, 859225
                  and          t1, t2, s10
                  srl          a3, s6, a5
                  slt          a1, t6, t0
                  or           t5, a4, ra
                  sltu         ra, s2, a5
                  sll          a1, t3, tp
                  slti         s8, t6, -1345
                  sra          s4, tp, s7
                  slli         a3, s3, 21
                  slli         gp, a0, 29
                  sltiu        a6, a0, 1810
                  andi         t2, a0, 195
                  lui          s9, 239834
                  lui          a3, 83460
                  xor          s7, s6, s1
                  sll          t6, t6, s5
                  addi         s9, s11, -1736
                  and          t0, s10, s5
                  xor          sp, s3, s4
                  add          s9, t4, s7
                  lui          s11, 471353
                  sltu         gp, zero, s3
                  auipc        t3, 966826
                  sltu         a7, a1, s6
                  xor          s0, s0, a7
                  add          t1, s1, gp
                  xori         a4, t3, 1788
                  and          t5, t0, ra
                  xor          t6, s1, s11
                  xori         a6, s9, 192
                  sll          t5, s10, a2
                  slli         t2, t0, 5
                  sra          sp, s8, a3
                  or           a6, s0, s4
                  sll          t5, s3, s8
                  ori          a1, a1, 1459
                  nop
                  ori          s6, a0, -742
                  sltu         ra, gp, s7
                  lui          a1, 955822
                  sltiu        zero, s8, 816
                  lui          sp, 500678
                  and          s5, s5, a0
                  add          s10, s0, a5
                  ori          a7, sp, -620
                  srl          t0, s9, t6
                  lui          s0, 764406
                  sltu         a0, s7, s2
                  or           a6, s7, a6
                  sltiu        t2, tp, -1984
                  slti         t2, a0, -1207
                  add          s10, s3, s4
                  slt          t6, s1, t2
                  slti         t1, t4, -1376
                  add          s0, a6, sp
                  slti         s6, t4, -1752
                  nop
                  auipc        t1, 334315
                  lui          s0, 846099
                  slt          s10, a0, s2
                  ori          a1, s10, 409
                  xori         s3, a3, -1768
                  slt          a6, s7, a6
                  sltu         sp, t4, s7
                  slt          s10, t1, sp
                  srli         zero, a1, 13
                  srl          t1, a2, sp
                  sll          s6, s0, s1
                  addi         s5, a7, 1657
                  andi         t3, a4, 570
                  srl          s7, s3, s8
                  xor          t4, a3, a7
                  srl          a3, t0, s4
                  xor          tp, tp, a5
                  xor          a4, a2, a0
                  xori         gp, a5, -423
                  srli         s11, s11, 6
                  addi         gp, sp, -1630
                  srai         zero, a6, 21
                  sub          t0, zero, s0
                  lui          t2, 807937
                  lui          tp, 739416
                  and          s11, a7, t0
                  and          a0, s0, t4
                  sub          t1, a4, t0
                  and          a6, a3, t2
                  nop
                  andi         a4, s6, 1676
                  or           s0, t6, a3
                  lui          t3, 769573
                  sltu         tp, s4, t1
                  srli         s0, a4, 24
                  sltiu        a4, sp, -1878
                  slti         gp, s6, -1390
                  add          sp, a1, s1
                  slli         t2, s8, 20
                  add          ra, t0, t6
                  ori          t3, s6, -1335
                  sra          a2, s11, a2
                  sll          s0, t6, t5
                  sll          t3, tp, a6
                  slti         zero, s1, 13
                  srli         gp, s0, 15
                  auipc        s4, 221794
                  sltu         a7, t6, a0
                  auipc        a6, 669034
                  and          a3, t3, s8
                  srai         a1, s11, 15
                  sll          s3, s6, s8
                  auipc        t5, 96104
                  sltiu        gp, t1, 921
                  xori         s5, t5, -174
                  sll          t4, a0, s5
                  slli         s4, s8, 17
                  andi         gp, sp, 968
                  or           s0, s2, zero
                  add          a6, t6, zero
                  sltiu        t6, s10, -1846
                  sltiu        t6, t2, 743
                  sub          ra, s2, s9
                  andi         s8, s8, 213
                  srai         a1, gp, 29
                  andi         t3, s10, -914
                  sub          a6, s3, a3
                  slti         sp, s7, -462
                  or           t4, a0, t3
                  srli         t2, tp, 20
                  or           s7, s4, t5
                  auipc        t6, 230016
                  add          s10, s2, s5
                  or           a2, sp, s7
                  lui          a3, 233455
                  ori          ra, s11, -1992
                  srl          t1, t5, a3
                  nop
                  and          a2, ra, s7
                  ori          t6, s11, 828
                  sra          s9, tp, a2
                  sltu         t1, t6, t6
                  xori         s10, a6, -1085
                  slti         ra, gp, -1316
                  ori          t1, s0, 1665
                  srai         gp, a6, 22
                  slli         s6, tp, 22
                  auipc        t0, 589142
                  srli         tp, s4, 0
                  srli         a6, s6, 10
                  srl          zero, a7, s4
                  slli         s0, a2, 6
                  sltiu        t1, s7, -212
                  sra          s0, t1, a7
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           t2, 0x80000000
                  li           tp, 0x380cdaf3
                  li           s6, 0x80000000
                  li           s8, 0x80000000
                  li           gp, 0x80000000
                  li           a2, 0x80000000
                  li           sp, 0x0
                  li           t4, 0x0
                  li           t6, 0x0
                  add          t2, t2, sp
                  nop
                  addi         t6, t4, 1909
                  auipc        t2, 357399
                  nop
                  addi         t2, tp, -1331
                  sub          s10, tp, sp
                  add          s6, s6, gp
                  lui          gp, 196162
                  addi         t6, s6, 908
                  lui          t2, 47951
                  nop
                  nop
                  auipc        sp, 485322
                  add          s6, t6, tp
                  sub          s10, t6, gp
                  add          tp, sp, t6
                  auipc        a2, 916892
                  sub          t6, t6, t2
                  lui          s10, 1027711 #end riscv_int_numeric_corner_stream_8
                  add          t5, a3, s11
                  or           t3, s9, ra
                  sll          a0, t3, s0
                  addi         s5, a4, -783
                  auipc        ra, 619237
                  sub          s8, s9, gp
                  or           s7, a2, gp
                  slti         zero, a6, -1563
                  add          s10, a1, t2
                  sra          s9, gp, t4
                  srli         s11, s0, 28
                  xori         t5, tp, 465
                  addi         t3, t5, 947
                  ori          a2, t5, -1656
                  ori          a2, s6, -1560
                  nop
                  or           s4, s7, a3
                  addi         a1, s8, 1981
                  slt          s5, s1, a0
                  srai         s0, t2, 11
                  sra          s4, t1, s8
                  srai         ra, gp, 25
                  nop
                  auipc        s6, 226576
                  or           s8, a5, sp
                  xori         s11, a5, 1623
                  sll          ra, t2, gp
                  sll          s6, a2, ra
                  slli         s11, a4, 6
                  and          t0, a1, a0
                  addi         a3, a4, 203
                  auipc        s3, 1046014
                  nop
                  xor          gp, s7, gp
                  sra          t2, s11, s1
                  or           t1, a1, t2
                  sra          s9, a5, s2
                  sltu         t2, a0, a2
                  slt          s11, t4, s3
                  xori         t0, ra, 817
                  xori         s10, a6, 1865
                  srli         s0, t2, 18
                  sltu         a2, a7, s8
                  addi         t6, s7, 1033
                  xor          t5, a7, a4
                  xori         a4, s6, -1533
                  sll          gp, s7, sp
                  sltiu        s9, sp, -728
                  addi         tp, a3, 1309
                  srai         s10, t1, 7
                  sub          t5, t3, s5
                  sra          a3, a1, t6
                  sub          a0, s3, ra
                  xori         a0, t0, -673
                  auipc        zero, 208709
                  srli         ra, t4, 30
                  sltiu        t5, s5, 272
                  lui          s4, 296669
                  srai         t3, a4, 25
                  slli         t0, s7, 26
                  sltiu        s3, a4, 1410
                  ori          a7, t0, -617
                  addi         t3, s10, 1017
                  add          a0, a2, a3
                  srli         a7, s1, 25
                  or           zero, t4, ra
                  andi         a6, a6, -175
                  and          s11, a3, a4
                  xori         gp, s0, -1107
                  xori         a2, a3, -1396
                  sltu         sp, a3, t0
                  addi         a6, gp, -886
                  andi         gp, s9, 1318
                  xori         ra, t4, -464
                  add          t4, s6, gp
                  slti         s9, a0, -966
                  sltiu        s11, t0, 1061
                  srl          s10, t4, s0
                  sra          a0, s1, t2
                  srl          a0, sp, t3
                  auipc        a2, 35861
                  srli         tp, t2, 16
                  addi         ra, a3, 1268
                  or           t4, a0, s8
                  auipc        s8, 1011851
                  srli         t0, s2, 31
                  or           zero, gp, s7
                  srai         t3, a6, 21
                  xori         t2, a2, -1250
                  sll          t3, ra, t6
                  and          tp, t3, ra
                  srl          ra, t3, s6
                  xor          s10, a1, ra
                  xor          s4, s1, t4
                  xori         a4, s1, 1151
                  ori          zero, tp, 699
                  nop
                  slli         t3, t1, 11
                  sltiu        tp, s8, -968
                  lui          s3, 703011
                  srai         s4, t1, 2
                  add          a3, s2, tp
                  nop
                  addi         s0, zero, -1865
                  add          s4, t3, a0
                  addi         s8, a3, 1633
                  srai         a4, t3, 12
                  srli         s4, s4, 2
                  srai         s4, s5, 2
                  and          s3, t2, a1
                  auipc        t5, 432857
                  srli         sp, t1, 11
                  xor          s9, ra, a1
                  srai         a4, a7, 7
                  addi         s6, t6, -239
                  or           a2, a2, s5
                  sll          s7, ra, s6
                  auipc        t6, 608927
                  slt          gp, a6, a4
                  slti         s8, s7, 2002
                  sra          t1, t6, t6
                  sltu         s3, t4, t2
                  sub          s7, t0, s8
                  slli         sp, a6, 21
                  or           a6, a7, a6
                  and          t0, s9, t6
                  add          s10, gp, s9
                  slli         t4, t1, 4
                  or           s4, s1, s0
                  xori         s11, t6, -1952
                  auipc        a4, 84516
                  slt          t5, a7, a2
                  sra          sp, t1, tp
                  add          s10, t2, s10
                  nop
                  srl          s10, s7, a0
                  add          t5, s2, a4
                  srai         t6, a5, 15
                  nop
                  srli         s5, a5, 19
                  ori          ra, s8, -1728
                  slt          t3, t4, s0
                  andi         t2, s8, 249
                  nop
                  auipc        s6, 623882
                  xori         s8, a5, 141
                  sll          a4, s11, s9
                  or           t0, sp, s3
                  sltiu        s11, s10, 1
                  lui          a1, 901732
                  slt          s11, s0, sp
                  ori          tp, s0, 279
                  sub          t1, a6, s6
                  xori         tp, zero, 63
                  sltiu        a4, a6, -1570
                  slli         t6, a3, 6
                  sub          ra, s0, ra
                  sll          s9, t4, a2
                  slti         t0, s9, 725
                  xor          s10, a0, a3
                  srai         t0, a6, 29
                  slt          gp, t6, gp
                  srl          t3, ra, t3
                  nop
                  or           a2, s6, a4
                  sub          a1, s10, t5
                  xori         t3, t0, 59
                  sll          a1, t2, s10
                  or           s10, a5, a1
                  addi         tp, a2, -592
                  srai         t0, s10, 24
                  lui          zero, 4781
                  lui          s5, 408528
                  xori         t2, a1, -1536
                  slti         a4, t1, -1296
                  xor          t4, s4, a3
                  or           t5, a0, a3
                  or           s3, tp, a1
                  srai         t5, s3, 29
                  lui          t5, 864867
                  lui          a2, 1038853
                  sltiu        s8, t1, 1956
                  sll          s11, sp, a5
                  srl          s9, s7, gp
                  sra          a0, t6, a2
                  srai         s10, t3, 1
                  srai         ra, ra, 17
                  nop
                  sra          s5, a6, t3
                  srl          t5, gp, a1
                  sub          t2, s11, sp
                  sub          s4, s5, s2
                  xor          gp, s6, s8
                  nop
                  lui          tp, 123300
                  lui          s3, 518324
                  addi         a3, a1, -602
                  sll          s0, t1, zero
                  srai         s9, t5, 3
                  slti         a7, t2, -49
                  xor          s7, a6, t3
                  and          tp, a7, s6
                  sll          t3, a0, s1
                  slt          t6, sp, s3
                  sub          a1, s4, s1
                  slt          t4, s3, t4
                  srai         a6, a3, 0
                  auipc        t1, 546280
                  add          s7, t1, s4
                  slt          s8, a5, s10
                  and          s4, a6, t2
                  sub          t4, t4, s0
                  and          t1, t3, t2
                  sll          s11, ra, s11
                  slt          gp, s5, t6
                  lui          s10, 43426
                  sub          gp, s10, a4
                  slt          s5, t1, a7
                  slli         a3, s1, 23
                  auipc        a1, 436337
                  slt          a1, s9, s6
                  nop
                  srl          a6, a7, a4
                  xor          s4, s1, t4
                  srli         t2, s8, 13
                  auipc        s9, 51961
                  nop
                  sub          a2, sp, a3
                  sltiu        s5, s8, -8
                  srli         a6, t1, 1
                  slt          a4, t5, s2
                  srl          tp, s7, zero
                  slt          a1, s1, a5
                  sltu         s10, zero, t1
                  xor          s6, s10, s3
                  lui          s5, 451986
                  auipc        s5, 558660
                  lui          a3, 13194
                  nop
                  add          gp, s6, t5
                  addi         s0, s2, 467
                  xori         t2, t6, 204
                  add          a2, sp, s5
                  li           s9, 0x21f37a11 #start riscv_int_numeric_corner_stream_16
                  li           t3, 0x0
                  li           a6, 0x0
                  li           s3, 0xffffffff
                  li           sp, 0x1cf09b4d
                  li           a3, 0x80000000
                  li           gp, 0xffffffff
                  li           t5, 0xffffffff
                  li           a4, 0x0
                  li           s10, 0x0
                  sub          t3, t3, t5
                  addi         t3, a4, 689
                  nop
                  auipc        s9, 208455
                  lui          a4, 374745
                  add          s10, gp, a4
                  add          gp, gp, a4
                  addi         t5, s10, 1229
                  addi         s10, a4, 292
                  add          s3, a6, t3
                  addi         t3, sp, -1163
                  add          s3, sp, gp
                  sub          s9, s9, s10
                  sub          s10, sp, a4
                  addi         gp, gp, 741
                  sub          gp, gp, sp
                  addi         s9, gp, -979
                  addi         s9, gp, 1342
                  add          sp, s9, a6
                  auipc        a6, 810071
                  auipc        a3, 548846
                  addi         gp, sp, 2027
                  nop
                  lui          s9, 441620
                  add          gp, s3, s10
                  nop #end riscv_int_numeric_corner_stream_16
                  srli         zero, s6, 4
                  slt          ra, s5, t5
                  nop
                  lui          a2, 954227
                  xori         s9, s11, 938
                  srli         s3, s10, 13
                  add          s9, ra, s11
                  srai         zero, s9, 16
                  and          a3, s10, s6
                  sltu         s4, t2, t6
                  andi         s4, s5, -1121
                  addi         a6, s4, 875
                  sra          s6, t4, gp
                  sra          t5, t2, zero
                  sll          a3, s4, ra
                  ori          a6, s6, 690
                  srai         s11, s2, 17
                  srli         ra, t0, 24
                  slli         a7, s0, 25
                  and          s6, s8, a2
                  ori          a2, s0, -578
                  slli         a7, a5, 11
                  srl          sp, ra, a7
                  xori         s7, s4, -67
                  sll          s11, a2, t5
                  sltu         s4, zero, s5
                  nop
                  slli         t0, t0, 19
                  addi         a7, a2, -1653
                  nop
                  or           s0, t2, s8
                  add          ra, s7, s11
                  sra          t2, t3, t0
                  add          t5, sp, gp
                  or           t0, t1, t3
                  add          t2, s8, s11
                  ori          s4, t2, -1989
                  add          a4, t3, t1
                  or           s3, a0, s7
                  sltu         t3, s2, t0
                  slti         zero, s7, -754
                  lui          t1, 86304
                  add          s8, a0, s2
                  srli         sp, s8, 6
                  sub          t6, s3, a3
                  xori         s6, s4, 771
                  addi         t3, s5, -349
                  xori         a4, ra, -1167
                  sra          ra, a0, s3
                  addi         a0, t6, 187
                  xori         s6, a4, -205
                  xori         s6, a0, -1036
                  auipc        a0, 981579
                  sub          t4, s11, t2
                  add          s5, s11, t1
                  andi         a7, zero, 710
                  sltiu        a6, s9, -1231
                  andi         a7, s2, 1242
                  and          a4, s2, a0
                  slti         s8, t6, 1528
                  addi         gp, s10, -137
                  addi         s10, s7, 548
                  xor          t6, a5, a3
                  auipc        gp, 708660
                  xor          t2, t6, a6
                  nop
                  sll          t2, a2, sp
                  slli         s5, s0, 26
                  add          t4, s0, a6
                  auipc        a1, 494806
                  ori          a1, s8, 1330
                  sub          a4, a3, ra
                  sll          s11, t0, a2
                  auipc        a1, 617164
                  sltiu        a7, t4, -269
                  sltiu        s5, a0, -1031
                  slt          s6, ra, a3
                  add          a2, sp, a4
                  sub          ra, s2, a3
                  srai         a2, t0, 31
                  xor          s4, sp, s11
                  xor          t1, t4, s5
                  nop
                  slt          t4, s8, zero
                  sub          s11, a0, gp
                  ori          s9, s7, 1372
                  lui          s0, 699855
                  xori         a1, a7, 1428
                  slti         s4, s5, -1308
                  sltiu        t6, s2, -1649
                  xori         t5, ra, 1925
                  slli         s3, s1, 13
                  sltu         a3, gp, s7
                  sll          gp, s6, s7
                  sltiu        t2, sp, 823
                  nop
                  or           tp, a0, t5
                  sltu         s11, a0, sp
                  sll          t2, t1, ra
                  srli         t6, a7, 15
                  sra          t6, a6, ra
                  andi         s3, a5, 3
                  auipc        t0, 435590
                  or           t5, zero, a1
                  slli         s7, s9, 9
                  and          t3, gp, a6
                  lui          a7, 651829
                  and          s10, s5, s0
                  auipc        s9, 841159
                  sltiu        s9, s8, 712
                  lui          a4, 849807
                  and          a2, t2, a5
                  slti         t6, s11, -1436
                  andi         sp, a7, -1852
                  slti         s5, s1, 1436
                  slti         a3, sp, -1898
                  add          a6, t5, tp
                  xor          t0, sp, a0
                  lui          a6, 548289
                  sltu         s9, tp, t1
                  andi         ra, s4, 1124
                  add          t6, ra, s3
                  slli         s3, s4, 21
                  sltu         a6, a4, a0
                  or           s0, t6, t0
                  slt          s5, ra, a2
                  slli         a4, t3, 21
                  sltu         s5, a4, t0
                  sll          s9, s4, a6
                  ori          s5, s11, 1942
                  sltiu        a3, s6, 1396
                  xori         t5, tp, -1243
                  addi         s10, s6, 1965
                  xor          t4, t0, s1
                  add          s8, t3, a1
                  sltu         s0, s4, a3
                  or           s10, a5, s1
                  srl          s6, a1, t5
                  addi         t1, zero, 715
                  slti         s6, t5, 81
                  auipc        t0, 157821
                  ori          s10, t5, 1868
                  lui          s3, 451578
                  add          t3, t4, tp
                  srai         s9, a7, 13
                  nop
                  sub          a7, t0, t5
                  srli         tp, t4, 25
                  and          a0, s2, s7
                  ori          a2, s6, -992
                  add          a1, a0, a5
                  slli         a2, a5, 31
                  srai         s5, a1, 9
                  andi         s4, a6, -587
                  xor          t0, a4, a1
                  sltu         a7, t3, a6
                  srli         s4, t2, 13
                  andi         a2, s5, 1358
                  sltu         t4, t2, s0
                  and          a6, a1, t2
                  srai         s10, t4, 14
                  or           a3, s7, t0
                  xor          sp, a1, t3
                  and          t3, s4, a3
                  sll          a2, t4, a1
                  xori         t3, t1, -752
                  sub          t4, t5, tp
                  andi         t5, t6, -1655
                  xori         s10, a4, -1107
                  srl          a7, t1, zero
                  srl          t2, a3, s4
                  slli         zero, gp, 18
                  xori         s7, t3, 446
                  sra          zero, t5, s1
                  andi         t0, a0, 1054
                  slti         s10, t5, 544
                  sltu         s10, t4, t5
                  sub          sp, s6, t1
                  srai         zero, s6, 0
                  and          a6, s3, t1
                  lui          t0, 1027249
                  sltiu        a7, a4, 121
                  slli         a2, a4, 12
                  srai         t6, a2, 23
                  sra          s5, s2, s6
                  sltu         a2, s3, a4
                  sll          s10, zero, s4
                  srl          t2, s7, t6
                  or           s9, s5, s8
                  nop
                  sra          sp, t6, a4
                  slti         t2, a0, 1390
                  sra          tp, s8, t5
                  sltu         s9, t3, t4
                  nop
                  or           t3, a7, s5
                  and          s7, ra, ra
                  srl          t2, a3, gp
                  slli         a7, s10, 3
                  srl          a4, s7, a5
                  auipc        t5, 447899
                  sltiu        s6, a6, -1553
                  xori         s6, t1, -612
                  lui          s10, 49476
                  srai         gp, t3, 17
                  add          t3, ra, t5
                  srli         s6, t5, 28
                  sltiu        t2, a6, 1133
                  nop
                  sll          a2, s6, sp
                  sltiu        t3, s2, 652
                  lui          zero, 52330
                  slli         s0, t5, 6
                  xor          s11, t0, a5
                  sra          a3, a6, t5
                  xori         a4, s2, -639
                  srai         t5, sp, 26
                  ori          a0, zero, 893
                  auipc        a3, 150755
                  slti         t0, s1, -1239
                  andi         s10, s4, 389
                  sltiu        s8, gp, -175
                  andi         t6, s2, 17
                  srl          s0, a5, tp
                  add          t4, s9, s6
                  add          t5, t0, a5
                  or           sp, a3, a4
                  nop
                  andi         t6, a6, 1670
                  xor          t6, t2, a0
                  sll          s3, t6, a2
                  auipc        t5, 709013
                  xori         a0, a6, 778
                  srai         a7, s8, 8
                  nop
                  auipc        t2, 562983
                  slli         t2, t6, 10
                  nop
                  sltu         s5, tp, s4
                  lui          a1, 445978
                  srl          t0, s5, a4
                  or           t4, a4, ra
                  nop
                  add          t2, s11, s5
                  sub          a4, s9, a4
                  xor          ra, s9, t1
                  xori         gp, a1, 1187
                  sltu         s10, s5, t3
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           s0, 0xffffffff
                  li           gp, 0xffffffff
                  li           a4, 0x80000000
                  li           s5, 0x80000000
                  li           t6, 0xffffffff
                  li           t5, 0x0
                  li           s8, 0x80000000
                  li           ra, 0xffffffff
                  li           s11, 0x80000000
                  nop
                  addi         t6, t5, 1602
                  addi         s11, a4, 1166
                  add          gp, t5, s11
                  auipc        t5, 193753
                  lui          s0, 620339
                  sub          t6, s8, s0
                  nop
                  auipc        s0, 512223
                  addi         t5, gp, -142
                  lui          s5, 550096
                  nop
                  auipc        ra, 426251
                  sub          s11, t5, s11
                  add          gp, gp, s0
                  addi         s8, t6, -36
                  auipc        a4, 989909
                  add          s8, s11, a1
                  sub          ra, s11, t6
                  nop
                  auipc        t5, 725958
                  lui          a4, 400114
                  auipc        t6, 924845
                  add          s5, ra, s5
                  lui          gp, 1018934 #end riscv_int_numeric_corner_stream_0
                  srl          a6, a3, s6
                  xori         t0, t2, -1213
                  sub          s11, zero, t3
                  ori          s4, zero, -551
                  nop
                  sltu         s9, s8, s1
                  or           s11, t0, s2
                  srli         s9, t5, 28
                  ori          a4, a4, 2004
                  slli         s7, s0, 19
                  slli         a3, s1, 8
                  auipc        s8, 464837
                  sub          s0, t6, a6
                  and          tp, tp, t4
                  ori          sp, s10, -610
                  srli         s4, ra, 27
                  sub          t5, t6, s9
                  auipc        tp, 353339
                  slt          s7, s0, s10
                  sub          s10, a3, zero
                  xori         t4, sp, -1375
                  nop
                  and          a1, s11, s2
                  srli         s8, s2, 1
                  sltiu        t6, t1, 453
                  slli         sp, a6, 30
                  srl          ra, s1, zero
                  auipc        a7, 1003244
                  srl          a0, s7, a4
                  sub          gp, a0, s7
                  xor          s0, t1, gp
                  auipc        s7, 899928
                  slli         sp, s6, 6
                  addi         a1, t2, 804
                  auipc        a0, 937901
                  slli         s8, t1, 11
                  srl          t4, tp, a2
                  slti         t3, ra, -1362
                  srl          t1, a4, s8
                  sll          s10, a5, s9
                  srai         sp, s4, 9
                  sub          s3, a3, s3
                  or           t6, s9, a6
                  slti         t6, tp, 487
                  and          s4, s2, s7
                  lui          s4, 487853
                  slti         s6, t4, 172
                  slt          s4, t6, a5
                  xori         a0, tp, -1700
                  sll          t4, s7, s11
                  add          zero, zero, t1
                  add          s10, t1, s7
                  sra          s7, a7, a4
                  auipc        s7, 412459
                  sll          tp, s8, a0
                  slli         s5, a1, 10
                  slt          s7, s11, a5
                  srai         s11, t6, 11
                  and          a2, a4, a0
                  sll          s4, t4, a2
                  sltu         s5, a2, t4
                  srl          s4, a0, t0
                  auipc        t0, 965724
                  sltiu        tp, a2, 1478
                  srl          a7, gp, s10
                  srli         a7, t6, 11
                  lui          t0, 331868
                  sub          a0, t4, t6
                  lui          s11, 66812
                  sub          a6, s3, gp
                  sll          s4, sp, s2
                  sra          a2, s4, t6
                  and          s7, t0, a5
                  or           s11, sp, t1
                  addi         s9, a6, 1301
                  sll          s8, s0, s6
                  sltiu        a3, zero, 544
                  slt          a3, a1, s5
                  srai         s9, a3, 10
                  nop
                  auipc        a2, 186026
                  srli         a7, s2, 19
                  srli         s10, s5, 2
                  lui          s8, 503361
                  sltu         t4, t0, t3
                  add          t1, a4, t6
                  nop
                  sltu         ra, gp, zero
                  sltu         a2, t5, s11
                  auipc        a2, 953433
                  ori          s4, s6, -1030
                  andi         t5, sp, 231
                  nop
                  nop
                  addi         sp, s11, -995
                  slt          a3, s5, t2
                  add          a3, ra, t2
                  add          ra, t4, a3
                  sltu         ra, a6, s10
                  srli         tp, s2, 22
                  addi         a2, s10, 1140
                  srai         gp, a3, 1
                  or           t6, s8, s8
                  andi         t1, a4, -1896
                  sra          t5, sp, s5
                  xori         s8, t4, -1005
                  srl          zero, s7, s5
                  nop
                  lui          a6, 368602
                  sltu         s6, s4, a5
                  srli         s0, tp, 15
                  slli         ra, s4, 25
                  xor          t2, s4, a0
                  xori         ra, s5, -1345
                  xor          t5, tp, t0
                  sra          t0, s0, s3
                  sltiu        s11, t2, 754
                  xori         a2, a4, 1830
                  xori         s3, a0, -119
                  srl          t0, t2, s6
                  sltiu        s5, gp, -1216
                  xori         t3, s4, 1318
                  slli         s4, s11, 31
                  and          a0, sp, tp
                  slt          s4, t1, s11
                  xor          a7, a7, gp
                  sltiu        t2, t1, 1051
                  ori          tp, s0, 685
                  addi         a0, ra, 389
                  sra          s6, a1, t0
                  slt          s0, s0, s8
                  slti         a6, a3, -1239
                  slli         t3, ra, 3
                  xor          s5, a2, s3
                  addi         a0, s9, 12
                  slti         s8, ra, 676
                  or           a1, s2, a1
                  add          s4, a0, t3
                  lui          t3, 192516
                  slt          t3, s1, a3
                  srli         s10, s6, 17
                  sll          t3, ra, s2
                  auipc        a4, 342751
                  sltiu        t1, s4, -1972
                  nop
                  srli         s5, a0, 11
                  sltiu        a7, s10, 692
                  add          ra, ra, s1
                  srl          sp, ra, t2
                  srli         t0, a4, 4
                  xor          s5, sp, zero
                  andi         t2, t3, 1521
                  addi         gp, s10, 335
                  or           a0, s5, s6
                  sub          s4, a1, s9
                  nop
                  nop
                  add          a2, a6, s2
                  auipc        a6, 885084
                  and          t1, a5, t5
                  addi         t2, t6, -1583
                  ori          s9, gp, -1377
                  nop
                  sltu         tp, a4, s6
                  sltiu        zero, a4, -16
                  auipc        ra, 690467
                  or           a0, s6, s4
                  add          s4, t6, t2
                  auipc        s7, 96408
                  slt          a0, a0, a0
                  slli         s8, a5, 14
                  sltu         sp, s0, t1
                  xori         t5, s2, -593
                  srl          t6, t1, t4
                  ori          a4, s1, -488
                  addi         s10, ra, 978
                  lui          gp, 915768
                  lui          s9, 766560
                  xori         gp, s0, 973
                  xori         s9, s7, 861
                  lui          s4, 686137
                  addi         t5, a4, 1672
                  slt          t1, t3, zero
                  srl          a6, s5, s0
                  and          a0, s1, zero
                  srl          s4, sp, t1
                  xori         gp, t2, -1906
                  slt          ra, s1, t2
                  or           a4, s5, s7
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           s9, 0x80000000
                  li           a3, 0x503829b1
                  li           t3, 0x80000000
                  li           t0, 0x80000000
                  li           s5, 0x4e94ea57
                  li           gp, 0x0
                  li           s4, 0xffffffff
                  li           ra, 0x0
                  li           a4, 0x0
                  add          s5, t0, t0
                  addi         a3, s5, -1460
                  addi         s9, ra, -1029
                  addi         s4, s5, 666
                  auipc        gp, 867077
                  nop
                  addi         t3, s4, 673
                  lui          ra, 514693
                  lui          gp, 418834
                  sub          s5, a3, ra
                  auipc        t3, 164346
                  nop
                  lui          t3, 920440
                  nop
                  nop
                  sub          a3, t3, t3
                  sub          ra, t3, s9
                  auipc        t0, 431390
                  lui          gp, 223444
                  lui          a3, 687197
                  nop #end riscv_int_numeric_corner_stream_2
                  sra          t1, sp, s11
                  add          t3, a2, zero
                  sltiu        t5, t4, -1252
                  sra          s4, s7, t5
                  auipc        s4, 475182
                  slti         a2, ra, 612
                  and          a3, ra, t5
                  sll          a2, t1, a6
                  xor          s6, s5, zero
                  lui          s10, 715243
                  slli         a7, t4, 1
                  lui          s6, 998363
                  xor          a3, a6, s11
                  srl          t4, a2, t0
                  sra          s6, t2, s7
                  addi         s6, s8, 1776
                  andi         s11, tp, -1838
                  add          t0, s5, s6
                  and          a7, a2, a3
                  xor          a2, a2, s3
                  srl          a2, s3, s6
                  nop
                  sltiu        s10, s9, 162
                  xor          gp, a4, t0
                  auipc        a0, 899119
                  and          t0, a2, s10
                  or           t4, a3, ra
                  slti         t6, sp, -1195
                  xor          a6, sp, s9
                  slt          a7, ra, a5
                  srai         a3, s5, 17
                  nop
                  slli         s0, s11, 24
                  addi         a7, zero, 555
                  lui          t3, 529593
                  srai         tp, a7, 8
                  sll          tp, a5, s3
                  srli         t2, a6, 31
                  andi         a6, sp, -930
                  slli         s0, zero, 16
                  nop
                  sltu         s6, a0, t1
                  sll          a6, gp, s3
                  ori          t1, t6, 1070
                  nop
                  addi         gp, gp, 212
                  srli         t5, s1, 23
                  srai         s9, a2, 28
                  xor          ra, t5, t2
                  add          s5, a0, s6
                  sltu         tp, zero, a6
                  srl          t2, t5, s4
                  srai         ra, tp, 29
                  or           t5, sp, t4
                  ori          t0, t6, -798
                  nop
                  or           a1, a2, t1
                  or           s9, s6, s7
                  nop
                  xor          t4, s0, sp
                  srai         a4, a2, 10
                  srli         a0, t3, 30
                  add          s3, t0, sp
                  srli         t0, a3, 22
                  ori          a2, s4, 421
                  nop
                  add          ra, s2, a4
                  srl          s10, tp, s4
                  sltu         s5, s6, a3
                  xori         a0, s4, -1086
                  srl          t3, s11, t4
                  srli         s9, s5, 24
                  sll          sp, a3, s8
                  li           a7, 0x40ff327b #start riscv_int_numeric_corner_stream_10
                  li           a1, 0x80000000
                  li           t6, 0x80000000
                  li           a4, 0xbec24dc9
                  li           tp, 0x0
                  li           gp, 0xffffffff
                  li           a3, 0x0
                  li           s4, 0x80000000
                  li           s7, 0x0
                  li           s0, 0x80000000
                  addi         a7, s0, -1910
                  sub          s4, tp, a4
                  add          tp, a4, a1
                  add          t6, a4, gp
                  lui          tp, 282200
                  sub          a1, a4, s4
                  addi         a7, a7, -1415
                  addi         gp, a7, -685
                  lui          a1, 660109
                  nop
                  sub          a1, gp, s7
                  addi         a1, a3, -1105
                  sub          a3, gp, a1
                  add          s7, a4, a3
                  add          s7, a7, a4
                  sub          s4, tp, a1
                  addi         a1, gp, -1829
                  addi         gp, a4, 623
                  addi         a4, s4, -1309 #end riscv_int_numeric_corner_stream_10
                  slt          s0, sp, t4
                  sll          a3, t1, a2
                  slti         a3, s0, 191
                  sltu         t3, s0, t5
                  srl          a3, a5, s5
                  ori          a7, t4, 844
                  and          t5, t1, s1
                  xori         gp, t5, 1675
                  sltiu        t0, s8, -691
                  sltiu        t1, t2, -1219
                  xori         gp, a5, 1587
                  slt          a3, s4, s5
                  sub          a0, gp, s8
                  ori          s7, s3, 1954
                  sll          s7, s4, t3
                  slli         a4, a1, 19
                  nop
                  sra          a7, t1, s4
                  nop
                  slt          s7, a0, t1
                  lui          sp, 277314
                  slli         a1, tp, 4
                  lui          ra, 471416
                  nop
                  sub          ra, t3, s10
                  sll          ra, a3, a1
                  ori          s10, a6, -1969
                  sub          s11, t0, a3
                  and          t3, ra, t0
                  slti         a2, gp, -1250
                  slti         s5, tp, 479
                  slt          a6, a0, s11
                  xor          s5, s0, s5
                  slli         s10, s2, 29
                  sltu         s0, a7, s10
                  sub          s0, a2, t5
                  add          s4, a6, a3
                  and          s5, t3, s10
                  srli         t3, sp, 28
                  auipc        a6, 545594
                  sltu         zero, s8, a6
                  sra          t4, a6, sp
                  sltu         t1, s8, t1
                  sub          s4, s2, s7
                  ori          a3, a3, 1287
                  add          t5, ra, s6
                  xor          s9, t2, a6
                  lui          s3, 681646
                  add          t0, t6, tp
                  slt          t3, a0, t6
                  srli         s7, s2, 24
                  slli         a3, zero, 15
                  add          t3, t2, s1
                  sll          zero, t5, t2
                  xori         s10, s4, -1705
                  sltiu        s7, sp, 798
                  add          a4, s5, t5
                  sll          s4, a6, tp
                  sltiu        t0, sp, -486
                  auipc        a2, 157753
                  sltiu        a2, sp, -1557
                  lui          a0, 88184
                  sra          a7, s10, t3
                  add          t1, zero, s10
                  lui          tp, 998916
                  xori         tp, ra, -280
                  xor          t2, a3, s11
                  nop
                  slti         s10, t4, 653
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           s0, 0x0
                  li           t5, 0x80000000
                  li           s8, 0x0
                  li           a4, 0x80000000
                  li           a7, 0x1a84dd57
                  li           s10, 0xffffffff
                  li           s7, 0xffffffff
                  li           t0, 0xffffffff
                  li           t1, 0x80000000
                  sub          s7, t1, a3
                  lui          a7, 224654
                  auipc        a7, 621196
                  sub          s7, s8, a4
                  nop
                  nop
                  nop
                  add          s7, a7, a7
                  nop
                  sub          a7, a7, s0
                  add          s0, s10, s7
                  nop
                  sub          a4, a7, s8
                  sub          t5, t1, a4
                  sub          s10, s7, a3
                  auipc        a7, 611837
                  addi         t5, a3, 425
                  addi         a7, s0, 675
                  sub          s0, t0, a3
                  add          s0, a4, a7
                  nop
                  add          a4, s8, s8
                  add          a4, a4, s7
                  add          s10, s10, t1
                  addi         a7, a4, 1474 #end riscv_int_numeric_corner_stream_17
                  addi         t3, a7, -666
                  sll          s5, tp, a6
                  slti         s9, t2, -381
                  add          a2, ra, t3
                  srli         sp, t0, 16
                  and          t0, s8, s2
                  xor          a2, a0, t6
                  sltu         s10, s11, tp
                  lui          sp, 368600
                  add          a7, t5, t5
                  sltu         s10, s11, s6
                  sltu         t4, s7, a6
                  auipc        t4, 728777
                  auipc        s0, 415023
                  or           t0, s11, sp
                  auipc        sp, 178347
                  sll          a4, s8, t1
                  ori          t5, sp, -915
                  sltiu        zero, s3, -1279
                  ori          s0, s3, 860
                  sll          t2, s9, s4
                  sra          sp, a7, s0
                  sll          s11, a6, a6
                  or           a0, t1, sp
                  xori         ra, tp, -1681
                  add          s9, a4, s6
                  slti         s5, t1, 1447
                  and          s9, ra, s11
                  and          a4, a6, a2
                  sra          a1, tp, s3
                  sll          t3, s5, s6
                  slli         t2, s8, 9
                  slt          s8, t5, sp
                  srl          s3, s5, t4
                  and          a2, t1, t3
                  andi         s9, sp, -308
                  srai         gp, gp, 27
                  xori         s4, s3, -61
                  and          s8, s1, zero
                  srai         a1, s4, 21
                  or           tp, t4, s7
                  xor          zero, t0, s9
                  add          sp, a6, zero
                  slt          zero, gp, t5
                  sll          s11, s1, t2
                  addi         t2, s5, 1680
                  or           a4, zero, s7
                  ori          a3, sp, 764
                  srli         s10, a0, 6
                  srli         a0, t5, 5
                  sll          s9, a6, a3
                  add          s7, s6, a3
                  or           a0, s6, t1
                  addi         s9, a3, -1722
                  slli         a3, s8, 7
                  xor          t2, t3, t1
                  andi         t6, zero, -1333
                  nop
                  slli         s0, s2, 28
                  srl          s6, a1, a5
                  sub          s6, a5, s10
                  sub          a7, t4, t6
                  andi         gp, gp, 2042
                  lui          a4, 914466
                  sll          s6, t2, s3
                  nop
                  slti         s11, s8, -785
                  sll          gp, t4, ra
                  sub          s7, s7, s11
                  auipc        t3, 382155
                  slt          a1, gp, s6
                  sll          ra, s5, t0
                  sltiu        sp, s10, -1914
                  xor          s0, t4, t0
                  and          a4, gp, s9
                  or           s4, a6, t1
                  srai         t4, s6, 13
                  xor          s5, s11, a3
                  add          s4, a4, t1
                  sll          a7, a0, a7
                  srli         s6, gp, 29
                  auipc        a6, 440659
                  sltiu        a4, s8, 184
                  nop
                  or           a7, gp, zero
                  auipc        tp, 566398
                  add          a2, s9, gp
                  slt          t2, zero, t3
                  sub          t1, a2, a2
                  sll          s0, a0, s3
                  slli         a1, a3, 16
                  nop
                  srl          t0, a7, s6
                  sub          a7, s9, t1
                  andi         sp, t2, 115
                  sltu         zero, s9, s5
                  sltu         t4, a6, a5
                  slli         a6, tp, 1
                  ori          sp, s11, 491
                  slti         s3, a0, -1322
                  sub          s8, s5, s8
                  slli         s8, t1, 27
                  slti         t6, t4, 1666
                  add          t0, s0, a2
                  sll          t0, t0, sp
                  sll          a1, s0, ra
                  xori         a1, t1, -608
                  xori         s6, s8, 88
                  nop
                  sltiu        t0, a0, 1631
                  lui          t0, 1000407
                  xori         sp, s3, -1911
                  srl          s10, a5, t3
                  srl          s0, a6, ra
                  ori          a6, s4, 1465
                  srai         t2, s1, 29
                  slt          t6, a3, t2
                  slli         t1, a5, 23
                  addi         ra, s5, -419
                  or           s8, a4, a6
                  andi         t3, s4, 372
                  and          s9, a5, zero
                  xor          s11, t4, s0
                  srai         gp, t6, 1
                  srli         t4, s1, 7
                  srl          s5, s3, a3
                  and          a2, a6, a0
                  sltu         s9, a0, gp
                  slt          zero, t6, t2
                  sll          t5, s8, t0
                  srai         a4, s2, 19
                  slli         t0, s4, 15
                  xori         ra, t4, -298
                  sll          s4, a6, t1
                  addi         t1, a7, 747
                  add          gp, t5, a1
                  nop
                  srli         s8, s2, 15
                  srai         s6, s5, 10
                  ori          tp, s4, -1793
                  or           a2, gp, ra
                  sra          tp, zero, a2
                  add          a0, s5, t0
                  srl          a0, t0, t1
                  ori          a2, s0, 979
                  slt          zero, tp, a1
                  sll          a4, a7, t1
                  sub          t5, t6, s6
                  srli         t3, s7, 2
                  addi         gp, a6, 1220
                  sra          s11, gp, zero
                  xor          s11, t1, s4
                  sltiu        t5, sp, 1908
                  sll          t4, s4, s10
                  or           a0, tp, t6
                  add          s3, tp, t2
                  nop
                  and          a0, s3, ra
                  xor          s9, s2, a6
                  sub          a1, t6, t6
                  or           gp, a1, a2
                  andi         a2, zero, -914
                  srai         s0, s7, 2
                  add          s3, ra, a4
                  and          tp, a5, t4
                  auipc        s11, 714449
                  or           a4, sp, t2
                  sra          s6, s4, ra
                  srai         a1, sp, 30
                  slli         s8, zero, 11
                  slli         a3, a7, 7
                  sub          s8, a7, t6
                  srl          s10, t5, s11
                  sub          a6, s9, s2
                  sub          a6, a4, t4
                  srli         s9, a6, 30
                  slti         t4, s9, -516
                  srl          s10, s10, zero
                  lui          s3, 563646
                  slli         s0, t3, 8
                  or           s8, a3, a1
                  sltu         a4, a1, s8
                  add          tp, t6, s4
                  ori          s4, s6, -255
                  slt          s0, s8, s2
                  sra          a3, s10, s0
                  srli         gp, zero, 1
                  nop
                  slt          t6, t2, s5
                  slli         zero, zero, 28
                  auipc        a7, 575459
                  lui          a0, 3351
                  sll          a6, s4, a2
                  srli         t1, s9, 7
                  slt          t6, s0, s1
                  srl          s9, t5, t2
                  ori          t6, a2, 151
                  srli         s7, a6, 16
                  nop
                  sub          t2, tp, sp
                  xori         s8, a1, -1391
                  andi         gp, a0, 684
                  add          s11, t5, t5
                  or           t1, a1, t1
                  xor          s6, s7, s3
                  or           a2, t3, s6
                  slli         s7, a0, 21
                  add          t5, a3, s9
                  slt          t0, a3, s9
                  nop
                  xor          t2, t2, s6
                  xor          a6, t0, s6
                  and          s6, tp, tp
                  slti         zero, a7, -1693
                  andi         t2, s5, -1391
                  add          t5, t1, s10
                  nop
                  sub          s5, s6, a0
                  add          s0, t2, t5
                  slti         t2, s6, 1996
                  srai         s4, t6, 2
                  slt          a3, t6, s0
                  andi         s4, gp, -1355
                  lui          t1, 988537
                  or           tp, a1, s7
                  srai         t4, t5, 18
                  nop
                  srai         a7, s1, 2
                  andi         s5, t2, -1943
                  srl          s0, a6, s5
                  nop
                  addi         a6, t2, -944
                  srli         t1, t2, 25
                  slt          t0, a6, a7
                  ori          s10, a4, 18
                  srl          t6, sp, t6
                  sra          gp, t2, t4
                  addi         s5, t2, -2026
                  sra          zero, s5, s5
                  auipc        ra, 547122
                  sltu         a4, sp, s4
                  and          sp, s10, gp
                  slt          a2, a3, ra
                  sltiu        a7, sp, 685
                  auipc        tp, 551743
                  lui          s4, 448087
                  srai         a2, s2, 1
                  sra          t1, s10, s5
                  sltu         s10, t0, s10
                  sltu         a3, s9, t4
                  srai         a6, t4, 27
                  sub          tp, a7, s7
                  sll          t3, s3, a3
                  and          a1, s0, a1
                  auipc        t6, 936875
                  nop
                  sub          a3, t1, a2
                  auipc        s6, 252221
                  sltu         s3, a4, ra
                  addi         a2, t3, -30
                  sll          t0, a0, sp
                  or           s7, s11, s5
                  nop
                  lui          gp, 30048
                  sll          s8, gp, sp
                  srl          t0, a5, t1
                  sll          t4, a2, ra
                  nop
                  and          s3, a1, a5
                  nop
                  slti         s6, s0, 1942
                  sra          tp, s1, s3
                  srli         t3, a1, 19
                  sub          a3, t2, tp
                  xor          t4, a6, a5
                  nop
                  andi         t2, a3, 1387
                  slli         s10, gp, 1
                  xor          sp, tp, s10
                  slli         s8, s10, 17
                  slt          tp, s11, s1
                  sltiu        a6, s6, 1660
                  sltiu        s10, s6, -109
                  addi         a1, a4, -649
                  sltiu        s8, a2, 1931
                  add          a4, s9, s10
                  xori         a1, s9, -1793
                  andi         a4, gp, 535
                  xori         a6, a1, -1594
                  addi         a1, s10, 91
                  auipc        a6, 609146
                  sub          s8, t5, s6
                  slt          s8, t6, a5
                  sll          s11, t5, s7
                  nop
                  and          t5, s4, a6
                  srai         a0, t1, 7
                  or           t6, s9, a7
                  slli         t3, a4, 28
                  add          s0, s2, sp
                  sub          gp, s11, s2
                  srli         s8, a7, 7
                  srl          s3, a6, sp
                  slli         s7, s1, 7
                  add          s10, t6, t0
                  slli         t6, a0, 9
                  sub          s9, a1, ra
                  xor          a6, s1, s7
                  ori          s4, s5, 438
                  nop
                  xori         s11, t1, 1479
                  sra          t1, s4, a4
                  sra          t6, t6, s3
                  xori         t0, s1, -1542
                  srli         a6, a0, 29
                  addi         s4, t5, 592
                  nop
                  and          s11, s7, s7
                  sub          gp, t3, s6
                  sra          s3, s0, ra
                  ori          t5, zero, 1083
                  andi         sp, sp, -525
                  add          t1, tp, t3
                  auipc        a0, 181933
                  sltiu        s11, ra, -1817
                  srl          s8, t2, a6
                  auipc        s0, 105618
                  xor          s3, a3, a2
                  srai         a3, s1, 18
                  slt          tp, a1, s8
                  nop
                  sll          a4, t6, t4
                  sltiu        s11, a1, -1958
                  sltiu        ra, zero, -1670
                  srai         a4, t0, 0
                  add          zero, t5, a6
                  srai         a0, a5, 31
                  addi         a4, s8, 1633
                  slli         tp, s1, 24
                  slti         t5, s5, -112
                  nop
                  lui          a0, 913156
                  lui          t2, 832169
                  lui          a7, 347808
                  sltiu        t2, a2, 429
                  slli         s7, t2, 24
                  sll          t1, s6, s9
                  addi         sp, s7, 766
                  xori         a7, s11, 187
                  and          a3, s4, a1
                  slt          a4, zero, s8
                  slti         s10, tp, -624
                  auipc        t1, 58789
                  srai         s10, s4, 16
                  xori         s11, t3, -60
                  sltu         a2, t5, a6
                  sltu         s7, s5, s1
                  srl          a4, s0, a2
                  slli         a7, a1, 30
                  sltu         t3, t6, s2
                  slti         a0, gp, 506
                  or           s3, sp, s10
                  sra          tp, t5, s4
                  slli         t6, ra, 2
                  sltu         t0, s7, ra
                  lui          s10, 513441
                  addi         s8, t3, 1530
                  ori          s0, t4, 787
                  sub          t2, s10, t3
                  or           t1, t1, s4
                  sll          a6, gp, s10
                  srli         t1, s6, 1
                  or           ra, gp, t1
                  sltiu        s9, t3, -1525
                  srl          tp, t0, s3
                  slti         s4, s4, 1095
                  lui          sp, 65117
                  or           a6, a6, t5
                  sra          a6, s4, s10
                  nop
                  sra          tp, s0, t1
                  srli         s10, a6, 5
                  xori         ra, s5, 643
                  add          s9, a2, s6
                  sll          ra, s7, t2
                  sltiu        s4, s4, -128
                  add          tp, a0, t3
                  sltiu        a2, zero, -1029
                  xor          s9, a0, s5
                  addi         a1, s2, -1045
                  xori         tp, s0, -599
                  slli         s9, sp, 5
                  srl          gp, t2, s2
                  sub          s0, gp, s4
                  xori         t1, a0, -42
                  andi         s0, t3, -297
                  nop
                  slli         t2, a5, 27
                  slli         s11, s9, 26
                  or           s11, gp, a3
                  slti         s3, s0, -429
                  ori          a1, a7, -780
                  addi         s8, zero, -1872
                  xori         s5, a2, -555
                  lui          a1, 650479
                  slt          s8, s5, s8
                  slli         t1, a1, 12
                  nop
                  sub          t6, s5, t1
                  srai         sp, s5, 11
                  and          tp, t1, gp
                  addi         s8, a4, 550
                  ori          s3, a3, 1456
                  sub          s5, t3, t1
                  sub          s9, s9, t0
                  sra          a3, s4, gp
                  add          a4, a0, gp
                  auipc        t6, 126787
                  nop
                  xori         s11, t1, 1609
                  andi         t2, t5, 1689
                  add          a0, s5, gp
                  sub          s5, t0, zero
                  xori         s8, s2, -538
                  addi         s6, t5, 566
                  sra          s7, s4, a5
                  addi         tp, s8, 1235
                  add          zero, t5, s2
                  sltu         t0, t4, t2
                  slt          s11, ra, a4
                  xor          a2, s9, s2
                  srl          s10, sp, s6
                  sltiu        a1, s8, 403
                  slli         a7, gp, 13
                  slli         ra, t2, 3
                  andi         s9, s2, 4
                  srli         t2, s11, 8
                  sltiu        zero, s6, 621
                  sltu         a2, tp, s8
                  slli         t5, gp, 1
                  and          s9, ra, s5
                  srli         s9, s4, 21
                  ori          t5, t5, -1729
                  sll          t3, a6, a5
                  slti         s10, tp, -664
                  srl          t3, zero, s0
                  sll          s0, zero, a3
                  slti         gp, gp, -1929
                  andi         t6, s6, -1259
                  sll          s9, a4, t6
                  ori          sp, t5, 1245
                  sra          a4, a6, t4
                  and          a0, a2, ra
                  slti         a0, t3, -1900
                  sll          s5, s7, t1
                  sltu         s4, s11, t6
                  addi         t2, s1, -1278
                  sll          s10, ra, a4
                  slti         tp, a3, -1444
                  add          a4, a7, t5
                  lui          zero, 1021800
                  slli         a3, s0, 15
                  slti         t5, a4, 1396
                  andi         a4, a1, 531
                  ori          t4, a0, 765
                  and          a2, s0, s0
                  srai         a0, sp, 5
                  sll          t3, t3, tp
                  ori          a0, t1, -279
                  xor          sp, zero, t2
                  or           zero, a0, tp
                  add          t2, a0, s10
                  slt          gp, a0, s1
                  and          tp, a0, a2
                  slli         tp, s8, 5
                  or           ra, s8, s11
                  add          gp, t1, a3
                  srl          t3, a7, a6
                  sltiu        s9, zero, 1305
                  or           t4, s10, sp
                  nop
                  nop
                  xor          a1, s2, s1
                  sub          ra, t5, a7
                  lui          s0, 50072
                  ori          t4, s3, -111
                  slli         a0, s0, 27
                  add          s8, gp, t6
                  slti         s6, a7, 919
                  auipc        a3, 221506
                  srai         s9, t4, 2
                  slti         a0, s4, -1962
                  xor          t5, t0, s11
                  andi         s8, t0, -1865
                  lui          s11, 340952
                  sltiu        a1, gp, 1412
                  andi         s0, ra, 794
                  nop
                  slli         s9, s0, 29
                  sll          s0, t6, a7
                  and          s11, s1, ra
                  lui          t3, 634591
                  lui          t2, 785334
                  addi         t0, tp, -1400
                  sra          a7, s10, t3
                  ori          t6, a2, -1920
                  sll          a1, a3, a7
                  andi         s6, t3, 914
                  and          s6, gp, a6
                  xori         a1, t5, -1996
                  sltiu        t4, a1, 295
                  sub          s3, t1, s1
                  add          t4, tp, s5
                  slt          a7, s6, s3
                  slti         a6, s6, -1152
                  auipc        a0, 171036
                  xor          s9, s2, t5
                  auipc        s8, 917289
                  sll          t1, a6, s7
                  slt          a6, a7, t5
                  andi         a0, sp, -1345
                  slli         zero, s10, 11
                  or           a7, s2, s9
                  addi         a2, s8, 685
                  slti         a2, gp, -1028
                  lui          a1, 277243
                  ori          t2, tp, 1847
                  nop
                  slt          t4, s8, t1
                  ori          t6, t3, 1566
                  add          s7, gp, t5
                  sltiu        a6, s6, 370
                  sra          t4, a7, s2
                  xori         s5, s4, 691
                  srli         t6, t5, 17
                  slti         a0, s9, 1087
                  addi         tp, s11, 364
                  lui          sp, 11460
                  sra          s3, a2, t0
                  srl          a1, s2, t4
                  slt          t5, tp, s2
                  and          sp, s2, t4
                  sltiu        a0, a0, -1557
                  ori          a4, s9, -1544
                  xori         s6, s1, -1252
                  or           s9, t3, a6
                  sra          a0, t2, s4
                  slt          s0, s9, a3
                  sll          a4, s9, t5
                  srl          zero, ra, s3
                  or           zero, s3, sp
                  sub          a0, a3, gp
                  xor          t5, a0, a1
                  sra          s3, tp, s9
                  nop
                  sub          t1, s5, a0
                  xori         a7, s11, 1685
                  ori          s4, s9, -1579
                  auipc        a1, 260298
                  xori         s6, a3, -658
                  ori          a7, s11, -1200
                  ori          a2, t3, -613
                  slli         t1, s3, 8
                  addi         gp, t2, -751
                  lui          a0, 745507
                  srli         s6, t2, 20
                  or           s9, a0, t4
                  srai         sp, t0, 11
                  auipc        ra, 90465
                  add          s9, gp, s11
                  ori          s10, a0, 137
                  srl          t4, t5, a5
                  srai         a7, t1, 17
                  sll          a7, s0, a7
                  srli         a7, a6, 14
                  add          s8, t6, s6
                  xor          ra, s4, a1
                  srai         t5, a4, 7
                  slli         s0, a0, 9
                  srli         s3, t2, 15
                  lui          a4, 496382
                  sltiu        t3, tp, -1140
                  xor          s0, a1, a1
                  xor          s9, s0, t0
                  srai         zero, t5, 10
                  add          tp, s7, s11
                  sltu         t2, s9, s0
                  lui          t4, 437600
                  slli         t2, s10, 25
                  nop
                  sll          t4, s0, t6
                  sub          a1, gp, s2
                  sll          t2, a6, a3
                  and          t2, s3, a0
                  lui          a3, 970228
                  srai         a2, ra, 28
                  sltiu        a3, s4, 1075
                  sltiu        s4, a1, -924
                  and          t5, s2, s3
                  sll          t6, s2, tp
                  or           t2, a5, a6
                  nop
                  andi         a3, a7, -1023
                  add          s5, t5, a0
                  xor          a7, zero, a0
                  sltiu        s6, t4, 357
                  add          s10, t0, zero
                  srli         s10, t4, 26
                  addi         s10, ra, -798
                  and          t0, a2, ra
                  or           sp, t0, s4
                  add          tp, s1, a7
                  nop
                  slli         s5, s6, 11
                  ori          s10, t3, 1975
                  xor          sp, t0, s7
                  slli         tp, gp, 20
                  xori         t3, t5, 1985
                  sub          t0, a0, t4
                  srl          t3, s8, s0
                  sltu         a7, t2, s3
                  addi         t6, t1, 394
                  xori         s10, s10, 2025
                  sltiu        tp, a1, 561
                  add          s11, a6, s9
                  andi         sp, s7, -1747
                  srai         t3, gp, 18
                  srl          a4, zero, t3
                  andi         a1, t3, 411
                  sltiu        t2, a7, 100
                  sltiu        s11, s10, 1311
                  slt          s9, gp, t3
                  auipc        a2, 182280
                  srai         s9, s0, 15
                  sll          a1, s1, a2
                  srai         s3, a5, 8
                  lui          s6, 266454
                  lui          t0, 584436
                  xor          a2, a6, sp
                  slti         sp, s7, -1303
                  srai         t5, s10, 5
                  slti         s8, s2, 1748
                  slt          t1, tp, t6
                  sra          s0, a2, gp
                  xori         zero, s11, 231
                  slt          sp, t4, s0
                  sra          s7, tp, s11
                  nop
                  sltu         s6, t3, zero
                  lui          s8, 891428
                  srl          s3, a6, a5
                  sltiu        t2, s3, -141
                  sltiu        t2, s1, -210
                  xori         s8, gp, 264
                  sltiu        zero, s8, 714
                  addi         t0, s10, 960
                  add          ra, s7, a3
                  sltu         s7, s4, t6
                  auipc        s7, 335702
                  srl          s10, sp, s11
                  addi         t1, a2, -564
                  or           t6, a0, t6
                  slli         t4, gp, 10
                  slt          s4, t6, t6
                  ori          zero, ra, -319
                  srli         s9, t1, 11
                  xori         t1, t3, 1289
                  srli         s8, t4, 22
                  andi         s8, a0, 73
                  sub          zero, a7, a4
                  add          a3, a6, s6
                  sltu         a3, s1, ra
                  or           a6, s0, a2
                  srai         t4, s8, 11
                  addi         s4, t2, -1482
                  srl          t1, gp, s10
                  sub          s6, s2, zero
                  sra          a4, a3, s6
                  xor          a7, t2, a7
                  and          t4, s6, ra
                  xor          a3, a7, a4
                  sltu         s6, s2, zero
                  addi         s4, t2, 1993
                  ori          s5, sp, -851
                  add          gp, a0, s1
                  slt          s0, tp, a3
                  slt          t6, t4, zero
                  or           a0, zero, sp
                  srli         t2, a6, 10
                  and          s9, t2, a0
                  addi         a7, s9, 1725
                  or           ra, a0, gp
                  and          s4, s5, s10
                  srai         s6, gp, 0
                  srl          a0, t5, a1
                  slli         t0, t4, 5
                  sra          t5, s8, a6
                  and          s0, t5, s9
                  srli         t5, sp, 28
                  addi         t4, s0, -452
                  add          t5, a0, s10
                  sltu         s11, t4, s9
                  slli         t5, s8, 6
                  or           a1, s8, ra
                  slli         t3, a2, 24
                  or           a3, t1, zero
                  slt          a6, s9, zero
                  sra          s8, s8, t2
                  nop
                  sltu         s0, t0, s3
                  auipc        t3, 268056
                  sltiu        a0, t4, 1850
                  sltu         t5, t0, s8
                  add          a1, t6, t1
                  add          a1, s4, a0
                  srai         t6, s0, 27
                  sltiu        s9, t0, 964
                  add          t4, t4, s7
                  and          a0, s1, a6
                  slt          sp, s0, tp
                  sltu         s6, a4, t2
                  slti         gp, s6, 241
                  auipc        s0, 626590
                  add          t2, s9, s11
                  sra          zero, gp, s6
                  slt          t5, t6, s6
                  add          s3, s10, s6
                  sub          t3, s9, s4
                  slti         s10, t5, 1906
                  sra          a6, t1, sp
                  andi         ra, s8, -1224
                  sltiu        ra, tp, -1986
                  sll          s8, s6, a1
                  add          t4, t3, a7
                  sub          s3, a5, s10
                  slti         s8, s11, -1047
                  add          t3, s1, s11
                  ori          t0, tp, 1785
                  or           t4, t2, a3
                  slti         s8, a5, 1582
                  sltu         a4, a5, s2
                  add          s10, s5, tp
                  sra          s7, sp, a2
                  slti         tp, s5, -417
                  sltu         s8, t6, gp
                  addi         s7, zero, 749
                  lui          s0, 162447
                  sra          s11, s6, t3
                  srl          s9, s3, s4
                  addi         s9, zero, -489
                  sub          t4, ra, s3
                  slti         s0, zero, 1828
                  srai         gp, a7, 6
                  slti         s8, a7, -311
                  sltiu        s11, t1, -799
                  addi         t4, t3, 368
                  andi         gp, s10, -856
                  srli         t2, s5, 20
                  slt          t3, a2, a1
                  lui          s9, 113418
                  andi         s8, a7, 326
                  srl          s8, a2, a0
                  srl          a0, gp, zero
                  slti         tp, t6, -1853
                  slti         ra, s10, 1183
                  or           t5, gp, a0
                  ori          sp, s11, -1968
                  xor          s7, sp, s8
                  or           s5, t1, s1
                  nop
                  sltu         s5, s10, a4
                  andi         s4, s4, 1547
                  slti         t1, t4, 2034
                  ori          a6, t6, 1031
                  srl          t0, s8, s3
                  addi         t2, a0, 1551
                  slti         a7, s1, 331
                  srli         t0, s0, 5
                  srl          a7, a4, a6
                  sub          ra, t3, a4
                  slti         a1, a5, 437
                  srai         t6, s11, 23
                  sub          tp, t0, s9
                  sll          a2, a3, sp
                  or           ra, a5, t5
                  nop
                  add          a2, t5, a6
                  srai         t2, t5, 6
                  lui          gp, 848580
                  nop
                  xori         t3, t6, 953
                  auipc        tp, 902579
                  add          t6, s3, sp
                  ori          gp, t0, 832
                  slti         a3, s3, -1044
                  sub          s0, zero, t3
                  sltu         s11, s1, a5
                  sll          s7, a1, a0
                  sub          t6, a5, s5
                  xor          t5, a3, t5
                  srl          t4, s11, s2
                  andi         t2, a2, -295
                  nop
                  or           t1, t0, a7
                  andi         sp, tp, 1910
                  srai         ra, s3, 11
                  slti         a7, s7, -1836
                  srl          a4, s7, a5
                  sll          a7, s10, t6
                  or           ra, s10, s9
                  sub          t6, s4, t0
                  xor          sp, t5, s2
                  lui          t1, 197299
                  sra          t1, a2, s5
                  add          s0, s10, a3
                  sll          t1, s4, s10
                  lui          a2, 554583
                  nop
                  andi         tp, t2, -1198
                  slt          t0, gp, a2
                  sltiu        s11, t5, -1085
                  nop
                  lui          s0, 644150
                  ori          s7, sp, -170
                  srli         a0, t3, 28
                  slti         s10, t0, 1424
                  slt          ra, t2, ra
                  srl          ra, s0, t5
                  slt          a1, sp, s10
                  xor          t6, t3, s8
                  slt          s6, a0, s3
                  lui          t0, 504692
                  slt          s11, a0, a3
                  lui          t6, 676604
                  sra          s6, gp, s7
                  srli         a3, tp, 1
                  sltu         gp, zero, t1
                  and          a0, a6, a4
                  slli         a1, s5, 25
                  lui          s0, 787958
                  ori          t2, t4, -831
                  slt          t1, zero, a0
                  addi         s9, s5, 671
                  srai         a3, t3, 31
                  xor          s9, s0, t3
                  slt          s9, s3, t5
                  lui          t2, 532225
                  or           sp, t6, a7
                  lui          gp, 248503
                  xor          gp, ra, s3
                  slt          t4, gp, t1
                  slt          t1, s8, s11
                  sltiu        zero, t3, 1684
                  slt          t1, zero, a5
                  nop
                  xor          a0, gp, a4
                  andi         sp, t6, 1771
                  ori          t5, t3, 458
                  andi         t5, s8, 802
                  or           a6, s5, s11
                  slli         zero, t3, 21
                  and          s11, s4, s1
                  sll          a1, t5, a1
                  sll          tp, s8, s11
                  slli         a6, s2, 16
                  ori          a3, a5, -1189
                  srai         t3, s4, 10
                  andi         a7, a1, -1976
                  nop
                  lui          a4, 318112
                  nop
                  slti         t4, t2, 1497
                  ori          s8, t4, -1561
                  slti         a7, s4, -1195
                  xor          t3, t2, a1
                  addi         t5, t3, -49
                  xori         s5, t4, -1645
                  andi         s9, ra, -1745
                  add          tp, a7, t3
                  slli         t4, a3, 31
                  add          t4, a6, zero
                  srli         t0, sp, 13
                  srai         s8, gp, 24
                  slt          a1, t3, gp
                  slti         a0, t1, 114
                  srli         ra, gp, 2
                  xor          s8, s3, a3
                  or           a3, ra, a3
                  slli         a6, s9, 12
                  andi         gp, s0, -1702
                  srai         s10, t4, 0
                  auipc        s10, 550971
                  sra          t1, t1, s2
                  andi         s6, s10, -818
                  lui          a0, 701074
                  sra          s0, a6, a1
                  slt          a0, s8, t6
                  and          s5, sp, t6
                  lui          t3, 541738
                  xor          t2, s7, t0
                  sltiu        s0, s0, 699
                  slt          s6, a0, t5
                  srai         zero, t6, 16
                  slli         s0, a0, 12
                  andi         sp, s8, 230
                  add          s9, a1, sp
                  and          a6, t2, t3
                  sub          t0, a3, s5
                  lui          s6, 803978
                  sra          s6, tp, a4
                  sra          a4, a7, s1
                  auipc        s5, 650644
                  sll          s3, gp, s9
                  slli         s11, t0, 18
                  addi         s7, s10, 713
                  ori          a0, zero, -1187
                  slli         s0, zero, 24
                  srl          t6, a0, s0
                  nop
                  addi         a4, a5, -530
                  auipc        t4, 864547
                  sra          a6, ra, zero
                  srl          s4, t0, a3
                  srli         zero, a2, 30
                  add          s10, a0, t4
                  srli         s3, gp, 29
                  srai         t1, ra, 19
                  slli         s4, t1, 6
                  andi         a4, tp, -1751
                  nop
                  srl          ra, a7, zero
                  srai         ra, a0, 6
                  srai         s5, zero, 30
                  srl          gp, s4, sp
                  slt          s8, tp, s6
                  and          t0, ra, t1
                  and          s8, a4, t6
                  sra          s0, a1, ra
                  srai         sp, a5, 0
                  sra          a3, t6, gp
                  sra          sp, s3, t3
                  xori         a2, a1, -1840
                  srl          t2, a4, t4
                  andi         sp, s11, 98
                  ori          s3, s7, 970
                  slli         t1, s4, 20
                  nop
                  xori         a0, s10, -1425
                  sltu         s3, s4, a7
                  sra          s4, s5, s6
                  auipc        s10, 836575
                  sub          s7, t5, sp
                  sub          a3, s6, t1
                  srl          t6, s5, zero
                  and          tp, s2, t2
                  sltu         s11, s2, a2
                  srai         t3, s0, 28
                  srai         a3, a3, 26
                  srli         s3, s11, 1
                  sltu         s9, s1, t2
                  sra          a1, s1, s9
                  lui          t5, 329264
                  srli         a4, s2, 4
                  and          a3, t0, s4
                  sltu         a1, t0, t1
                  sll          sp, tp, s5
                  xori         sp, s8, 368
                  add          t1, a6, s2
                  sra          s6, t4, a1
                  and          a4, t0, t1
                  nop
                  sltiu        s8, t5, -246
                  sra          s6, tp, t2
                  srl          tp, gp, t6
                  sltiu        t4, a4, -730
                  srl          tp, ra, s11
                  sra          s10, a5, s0
                  slti         tp, a4, -1780
                  nop
                  addi         s8, s1, -1104
                  sltu         sp, a7, s8
                  auipc        t6, 965794
                  slti         a2, s10, -79
                  srl          t2, a2, tp
                  and          a1, s11, gp
                  ori          t6, s8, 1047
                  srai         a4, t0, 0
                  xor          a1, t0, zero
                  sltiu        s6, s7, 670
                  xori         s3, s9, 1376
                  addi         t2, s0, 179
                  andi         t5, a0, -1893
                  lui          s11, 889431
                  slt          t2, t0, s1
                  lui          a0, 889519
                  srai         a6, s10, 3
                  addi         t6, t2, -817
                  slt          a4, s9, s3
                  sll          s8, a7, tp
                  srai         t1, s11, 30
                  sub          s4, t4, tp
                  slt          ra, gp, t2
                  sltiu        a0, a5, -363
                  srl          a4, a7, s3
                  sra          s10, t2, t3
                  or           s8, t3, s8
                  slt          a3, gp, s10
                  or           t0, t5, s7
                  auipc        t2, 178202
                  ori          a7, ra, -32
                  lui          t2, 910960
                  sll          tp, t0, t5
                  xori         zero, s2, 239
                  sub          s5, tp, s4
                  lui          t1, 576105
                  addi         t6, s7, -1604
                  lui          t4, 415572
                  sll          ra, s6, zero
                  srai         t1, s8, 5
                  nop
                  srai         s10, a5, 20
                  ori          s10, s0, -268
                  xori         a3, s4, -180
                  and          t2, s9, s0
                  sltu         s10, t6, a7
                  srl          sp, sp, a5
                  sra          t6, a2, a3
                  xori         zero, s7, -1887
                  lui          s6, 116238
                  nop
                  slli         a2, t3, 20
                  and          t0, a4, a2
                  addi         a0, s11, -1606
                  sra          ra, tp, a0
                  nop
                  slti         s6, a1, 1215
                  slt          t1, ra, a6
                  or           s0, s5, s6
                  sll          s9, a2, tp
                  ori          s3, a4, -145
                  and          a2, zero, sp
                  srli         a1, a4, 29
                  xori         gp, t1, 6
                  slti         s0, zero, -1080
                  slt          a6, a5, s0
                  sra          tp, a4, t4
                  sltu         t1, a4, s0
                  slti         s10, t5, 1526
                  slli         a7, gp, 23
                  addi         t4, s6, 1663
                  or           ra, a1, a4
                  srl          zero, s1, s11
                  sra          s9, a7, t4
                  sra          a0, s2, s10
                  addi         t0, s8, 791
                  add          s8, ra, t4
                  and          sp, t0, s10
                  lui          t4, 75295
                  slti         a6, s7, 1656
                  sub          a7, a3, t5
                  addi         a6, s0, 1512
                  andi         a6, a3, -1512
                  addi         t0, s10, 2019
                  nop
                  sll          sp, gp, s1
                  addi         a3, t2, -1044
                  add          s11, a6, s8
                  nop
                  xor          tp, s5, tp
                  srl          t5, gp, s7
                  auipc        t0, 162915
                  or           t4, t0, s2
                  srai         t4, tp, 14
                  srai         t1, a1, 4
                  add          s10, a5, a2
                  addi         t6, a3, 908
                  sltiu        tp, t2, 1868
                  or           a2, s5, zero
                  slt          s5, s3, s4
                  and          s3, ra, s0
                  add          s8, s2, s11
                  slt          s5, t0, a1
                  xori         s3, a0, -1596
                  srai         sp, s4, 19
                  slti         s0, a3, 736
                  xor          s4, t0, s10
                  sll          tp, a5, ra
                  sltiu        s6, s8, -1679
                  sltiu        ra, tp, 1730
                  sra          ra, s4, s2
                  slli         s3, a2, 21
                  sub          a3, t5, a6
                  srli         s7, t0, 21
                  srl          t4, t2, t5
                  slti         gp, s4, 185
                  srl          ra, a0, a5
                  lui          a3, 994794
                  sll          gp, s5, t1
                  slti         s0, a4, 222
                  xor          a6, a0, a4
                  andi         s8, s0, 18
                  slli         t2, t0, 8
                  add          s4, s1, s4
                  srl          a4, s6, a3
                  and          s11, t2, ra
                  andi         s3, s10, -1159
                  srai         t0, s11, 12
                  addi         a0, t2, 591
                  addi         s5, s2, 1077
                  andi         t0, a6, 1217
                  ori          a3, t1, -1245
                  srai         t4, a3, 11
                  or           t0, s4, t6
                  addi         a7, a2, -559
                  sub          s0, s1, s11
                  nop
                  ori          t1, t6, 1518
                  slti         t0, a0, 1710
                  sra          s7, t4, a5
                  sra          s5, t0, t4
                  ori          s10, gp, -209
                  nop
                  xori         gp, a2, -369
                  srl          s3, s7, s5
                  srl          ra, a0, s7
                  ori          gp, tp, -1022
                  sll          a2, t6, s2
                  slli         a1, t4, 22
                  add          t2, s9, t5
                  slt          s8, s10, t1
                  ori          t4, s4, -1244
                  or           s7, s5, s11
                  and          t6, t5, gp
                  add          s9, s0, t5
                  addi         a0, a7, 399
                  slli         gp, tp, 26
                  slli         tp, s10, 29
                  lui          tp, 781085
                  sll          t5, s5, s7
                  sltu         t0, sp, s8
                  add          gp, ra, s7
                  andi         s3, s11, -2
                  srl          s5, a3, zero
                  xor          t2, t0, zero
                  sltu         t6, a6, a5
                  sub          t2, t1, s6
                  auipc        a2, 179286
                  or           a1, gp, a1
                  or           t3, s5, t3
                  xor          t0, sp, a1
                  add          s9, zero, ra
                  lui          gp, 497182
                  sra          a0, s8, s5
                  ori          a1, a7, 1079
                  sub          t0, s1, gp
                  slli         tp, tp, 30
                  srli         s9, a4, 21
                  sub          sp, t6, gp
                  srai         a2, t1, 31
                  and          a0, a7, t3
                  slt          s7, t1, s1
                  xori         a1, s2, 829
                  sra          zero, a2, s11
                  xor          t2, s8, s11
                  auipc        s9, 216707
                  add          s10, s5, t5
                  lui          zero, 874972
                  slti         a6, a6, -1998
                  nop
                  sltu         a6, a6, t1
                  auipc        s6, 80894
                  add          sp, gp, s10
                  sra          tp, a0, s11
                  slt          a0, a2, t4
                  addi         t3, t2, -1905
                  ori          a7, s9, 1336
                  nop
                  srl          s3, ra, s2
                  ori          s10, a6, -797
                  sll          t3, s10, a1
                  sra          s10, zero, gp
                  srai         s6, sp, 1
                  nop
                  slli         a6, t5, 24
                  sll          s9, a4, t1
                  nop
                  srai         s5, sp, 0
                  auipc        a4, 382715
                  xor          s7, ra, a5
                  srl          s9, s3, t3
                  xor          t2, s6, a5
                  xor          s3, a7, sp
                  srli         t5, s0, 15
                  auipc        t0, 443100
                  ori          a0, a5, 972
                  sltu         t2, a7, s4
                  auipc        s4, 381030
                  slti         s10, a7, -473
                  and          ra, t6, ra
                  slt          s9, s6, s5
                  sub          a7, a4, sp
                  slt          a7, t4, s0
                  slli         ra, s6, 18
                  and          t6, a5, a5
                  xori         t4, s7, 1750
                  sll          a7, sp, a0
                  nop
                  ori          a1, s6, -1674
                  srai         t0, s5, 29
                  andi         t3, a6, 1260
                  xori         t5, s10, 1441
                  sltu         t6, a1, sp
                  or           a0, a3, s6
                  lui          t0, 476448
                  sra          a2, a2, s0
                  addi         s6, s11, -349
                  srl          s3, s8, s9
                  addi         t4, s11, 287
                  add          tp, sp, s11
                  ori          s10, tp, 1780
                  sltu         a0, s8, s8
                  and          s8, s2, t4
                  nop
                  srli         t6, s11, 1
                  srai         tp, t4, 30
                  nop
                  xor          a2, s0, t2
                  auipc        ra, 657328
                  srl          tp, a2, a5
                  sltu         s8, s0, a5
                  slli         t2, a4, 2
                  sub          t4, s4, a4
                  lui          t1, 741262
                  xor          a4, zero, s10
                  srli         a1, s5, 19
                  andi         s9, t4, 1167
                  slti         t1, t1, 1577
                  slt          a6, a7, t2
                  slli         s0, a7, 27
                  ori          s5, gp, -926
                  add          a7, a3, a2
                  sll          a7, t2, s10
                  sub          s4, sp, a5
                  sltu         ra, a1, s9
                  lui          s0, 757130
                  sub          s5, a2, s1
                  slli         t5, a1, 25
                  slli         s9, tp, 17
                  nop
                  lui          a1, 171337
                  xori         a7, a5, -104
                  xor          s3, sp, a5
                  sra          s10, a7, a6
                  slti         a6, a4, 1360
                  add          t2, t3, t2
                  slti         zero, s4, 1373
                  xori         a4, ra, -2033
                  xor          s3, t5, s5
                  auipc        s6, 372906
                  xori         s4, a5, 22
                  add          a7, t1, s2
                  srai         t3, t1, 7
                  sll          t6, a6, a0
                  sltiu        tp, a1, 502
                  srai         zero, a4, 16
                  sub          a3, s5, t4
                  or           a7, s5, t0
                  xor          t2, s10, t4
                  addi         a7, s10, 2005
                  andi         s8, a5, -913
                  xor          tp, a5, a1
                  sltu         t1, a3, a1
                  andi         a6, s0, 1413
                  sll          s4, a2, a6
                  srli         a6, zero, 12
                  sll          a1, s5, a5
                  sltiu        s0, t4, -811
                  sltu         s9, a4, s0
                  srli         a6, a0, 10
                  slti         tp, t6, -1397
                  srl          zero, t6, s7
                  sra          t0, t2, s6
                  srli         a3, t1, 5
                  auipc        zero, 349982
                  andi         zero, t1, -1687
                  srai         ra, t2, 13
                  sll          s3, a3, s10
                  and          s7, a1, zero
                  xori         s6, s3, -1658
                  srl          s4, s5, a1
                  addi         s5, s9, 659
                  xor          s11, s0, gp
                  sltiu        t2, s9, -212
                  sub          a1, t6, s7
                  lui          ra, 665888
                  addi         s5, a7, -856
                  andi         s7, t6, 1759
                  nop
                  srai         ra, t5, 14
                  auipc        a4, 725043
                  add          a3, s0, t5
                  addi         t3, a6, -525
                  andi         a6, t4, 1402
                  and          a3, sp, s0
                  andi         s5, s7, -1462
                  sub          a4, t6, a2
                  andi         s11, a5, 265
                  sra          t1, t6, s10
                  add          zero, a2, s2
                  sltu         t1, sp, a6
                  ori          a6, gp, -804
                  slli         a7, a0, 2
                  slt          s7, zero, a5
                  auipc        s10, 64435
                  and          t5, s3, t5
                  xori         ra, s7, 1948
                  lui          s11, 888996
                  sltiu        s7, s0, -384
                  sltiu        t3, s9, -1924
                  sltiu        a7, a2, 94
                  slti         s7, t1, 58
                  slti         s6, tp, 555
                  srl          t0, s6, t5
                  slli         s3, a6, 19
                  xori         gp, t6, 159
                  and          s3, t4, a0
                  slli         s6, s4, 30
                  andi         s0, t5, 899
                  or           t1, a1, t6
                  slli         sp, s3, 7
                  srli         a6, s11, 15
                  slli         s0, a4, 29
                  ori          ra, t2, -819
                  addi         t3, t1, 1810
                  and          s0, s7, s4
                  srli         a4, gp, 7
                  sll          a0, s9, a7
                  srli         s11, t5, 26
                  auipc        s11, 917116
                  sub          s11, a1, s3
                  sra          s0, s1, s11
                  sub          s7, t6, a5
                  slli         t2, s2, 3
                  slt          s10, s1, s8
                  srai         a1, t6, 8
                  lui          s6, 233929
                  srli         s6, t6, 7
                  and          s4, s9, s3
                  lui          t2, 630135
                  ori          a7, tp, 456
                  andi         t4, s2, -52
                  add          s10, zero, s4
                  srai         s8, t5, 27
                  slti         t0, s4, -994
                  srl          s0, t6, s1
                  slli         t0, s9, 18
                  sll          a1, a7, t5
                  sltiu        s3, s4, -1973
                  srai         gp, a3, 6
                  srai         ra, a1, 31
                  xori         s7, s7, -962
                  addi         s7, s1, 1804
                  nop
                  slli         t0, s2, 0
                  srai         t1, a4, 5
                  srl          s10, a7, t0
                  xor          t2, t3, s9
                  lui          s6, 608138
                  slli         a2, s9, 11
                  xor          s6, a5, t2
                  slli         t2, s7, 16
                  xor          s3, zero, ra
                  srai         ra, t6, 27
                  or           s11, tp, a4
                  add          s5, s9, a2
                  nop
                  and          tp, a1, s2
                  slti         sp, t2, 1153
                  add          s9, a7, s0
                  andi         s4, t6, -238
                  addi         t0, t5, 1945
                  srai         s0, t2, 3
                  or           s10, t3, s6
                  xor          a6, s2, a5
                  slli         s10, s10, 31
                  slti         zero, s4, 1123
                  lui          sp, 509553
                  nop
                  slt          zero, t6, s1
                  slt          gp, s2, s3
                  lui          s4, 801348
                  ori          s7, s10, 277
                  srai         s5, a0, 21
                  srai         s10, a5, 31
                  srli         t1, sp, 20
                  srli         s10, s1, 14
                  srl          a3, t6, s8
                  sltiu        sp, s1, 780
                  nop
                  addi         ra, a0, -257
                  or           s0, s9, a3
                  slti         a1, a5, 951
                  andi         tp, s3, -257
                  sltu         a3, t1, t6
                  andi         s4, s4, 1464
                  sll          s3, t4, s4
                  srli         s8, s11, 6
                  sltu         tp, a1, s8
                  nop
                  sltu         s4, a7, t5
                  xor          t0, t0, a0
                  auipc        t0, 946905
                  nop
                  slt          t5, s2, t0
                  slt          s4, zero, s0
                  and          t2, t5, s3
                  sltu         s6, gp, a4
                  andi         s0, a3, 561
                  add          s7, s1, t0
                  srli         a6, t3, 15
                  srai         ra, a6, 7
                  sll          zero, t5, s8
                  srl          t3, t4, t2
                  sra          a4, s2, t2
                  sll          s3, t4, s2
                  sltiu        s4, s0, 1308
                  auipc        t6, 60163
                  sll          s9, tp, zero
                  slt          a4, s3, a6
                  and          zero, zero, a6
                  sltiu        a0, s3, -1356
                  andi         s6, t4, 1744
                  srl          a2, t0, a4
                  nop
                  sra          ra, s6, t1
                  sll          a6, s9, s6
                  xor          s10, s2, s5
                  xori         s9, gp, -663
                  sra          t6, a4, zero
                  srl          s10, s2, s2
                  sll          a6, a7, a2
                  lui          a0, 729343
                  and          t1, a1, s7
                  srl          t6, s10, s8
                  srai         gp, a4, 24
                  ori          s3, s1, -1655
                  addi         s7, a5, -951
                  slt          t6, ra, s8
                  srl          gp, s3, s2
                  addi         a3, a5, 1220
                  add          t5, tp, zero
                  sltiu        gp, s0, -1167
                  srai         s6, a4, 15
                  slt          a4, a0, t1
                  nop
                  slli         s6, s4, 16
                  srai         s7, s7, 5
                  or           ra, t5, s9
                  and          a6, s9, a3
                  add          s8, t0, s5
                  srl          gp, a1, t1
                  andi         sp, s7, 764
                  lui          gp, 908716
                  slli         a4, t0, 2
                  sra          s11, a6, s4
                  lui          s10, 922144
                  and          t5, s1, s8
                  add          t0, a7, s0
                  slt          s7, tp, a0
                  srli         a2, zero, 28
                  sltiu        a0, t2, 576
                  andi         s6, a6, -1053
                  sra          t1, tp, s1
                  auipc        t1, 927209
                  auipc        s0, 380837
                  sltiu        t1, a6, 1544
                  srai         gp, a7, 21
                  sltiu        s0, s7, 1230
                  sra          s4, a2, s8
                  auipc        t6, 204651
                  ori          t0, s4, 83
                  xori         s10, s10, -1440
                  slt          a2, a4, t3
                  add          s8, s11, sp
                  srl          t3, s0, sp
                  sub          a0, gp, s9
                  xor          s6, a5, ra
                  andi         a2, a7, 1599
                  andi         ra, s1, -1877
                  ori          t1, s5, 1693
                  add          t5, s0, ra
                  nop
                  sub          a1, tp, a6
                  and          gp, a4, s8
                  auipc        s4, 1015676
                  nop
                  nop
                  srli         t5, s2, 28
                  ori          s8, t2, -1822
                  andi         s9, a3, 977
                  ori          t3, s0, -1735
                  auipc        a6, 705044
                  addi         zero, a2, -1943
                  slt          t3, ra, s3
                  auipc        tp, 135010
                  sltu         tp, t2, a6
                  or           a0, a2, a7
                  lui          s3, 138096
                  nop
                  slti         t1, s0, 1618
                  slti         s8, sp, 607
                  add          a4, a2, zero
                  xori         s6, a3, 188
                  andi         s11, a6, 738
                  nop
                  add          sp, tp, s5
                  add          s8, t2, t4
                  sub          t5, s7, t1
                  addi         sp, t2, -186
                  sll          t2, s0, s7
                  xor          t3, s5, zero
                  lui          s11, 576846
                  sltu         t1, s0, s6
                  add          s4, s4, s0
                  ori          a1, a6, 139
                  srli         t1, t6, 29
                  sra          gp, a1, s0
                  and          sp, s5, t0
                  and          s9, a5, a6
                  auipc        s6, 1038422
                  add          a6, a7, a1
                  auipc        a7, 811750
                  or           s4, s8, s11
                  xori         ra, t6, -369
                  add          s0, s7, s10
                  lui          t2, 814062
                  slli         s0, t1, 11
                  srai         zero, a0, 7
                  xori         a2, a6, 1970
                  sltiu        gp, s9, -681
                  srli         s9, s0, 2
                  add          t2, t5, s6
                  xori         a1, t0, -187
                  auipc        s5, 660694
                  andi         t6, sp, -1550
                  sltu         sp, s2, t4
                  lui          tp, 7115
                  srli         s5, s8, 10
                  addi         s9, t4, 69
                  lui          ra, 55136
                  sra          a7, tp, s4
                  lui          s7, 965014
                  or           zero, a5, s9
                  xor          t5, zero, sp
                  andi         s4, s11, -1649
                  add          t2, s1, a4
                  add          ra, a1, s6
                  lui          s5, 776065
                  sltiu        a1, t2, -1488
                  nop
                  sltiu        tp, t1, -854
                  nop
                  sltu         a1, s2, t4
                  slti         a4, t3, 1912
                  sltiu        s4, s9, -1251
                  sltiu        t1, gp, -1192
                  addi         s3, t1, -1706
                  lui          s7, 320470
                  slt          a3, sp, t4
                  sll          s0, s4, s10
                  sll          t2, s7, s11
                  srl          t0, gp, zero
                  xori         a7, a2, 660
                  sltu         s11, s1, a7
                  and          s10, s4, a1
                  andi         gp, sp, 664
                  xor          s10, t3, t2
                  sra          s7, a3, s9
                  ori          a7, s1, -1685
                  srl          zero, t4, s6
                  slti         s3, sp, 1609
                  and          ra, t6, t1
                  slli         a6, s0, 15
                  xor          a3, a3, gp
                  slt          s0, a7, s3
                  srli         a6, a1, 24
                  or           ra, t1, a2
                  and          s0, t5, s11
                  and          s11, s3, a6
                  nop
                  slli         tp, s0, 31
                  sra          t1, s6, gp
                  andi         s9, ra, 1246
                  srl          s10, tp, a4
                  sub          s4, s8, a3
                  lui          t4, 186571
                  lui          sp, 275751
                  slti         s4, s3, 943
                  ori          s4, t5, -1381
                  auipc        s6, 523258
                  auipc        a4, 612353
                  slt          s5, t0, t1
                  slli         a3, s4, 11
                  add          s11, s4, s11
                  auipc        t0, 755062
                  srl          s10, t5, s6
                  auipc        a2, 756497
                  sltu         s0, gp, a7
                  and          a1, s0, a3
                  auipc        s3, 917196
                  sltiu        s3, s8, -142
                  sra          ra, a0, gp
                  sltu         t0, s7, ra
                  sra          s4, gp, t5
                  auipc        t1, 21701
                  sll          ra, a0, zero
                  xor          a6, t3, t0
                  slli         tp, s8, 14
                  slt          sp, t6, s7
                  addi         a4, s8, 1987
                  ori          s6, a4, -648
                  srai         a4, t2, 2
                  auipc        t2, 733824
                  srli         a6, t2, 11
                  auipc        sp, 243304
                  andi         ra, t0, -624
                  slt          gp, t6, sp
                  sub          t1, t4, gp
                  addi         s8, t2, 601
                  sltu         a3, a4, s6
                  slli         a2, s11, 16
                  lui          s8, 42407
                  sll          s0, gp, t1
                  xori         gp, t3, -1277
                  ori          t1, s7, -1214
                  slti         s4, s11, -606
                  sltu         a0, sp, s6
                  or           s3, a0, s0
                  add          s5, sp, s9
                  andi         a7, t3, -784
                  xor          a1, ra, s7
                  ori          a1, a4, 1539
                  slt          tp, a0, ra
                  srl          s4, s6, t1
                  xori         t3, a6, 1250
                  srli         s9, a3, 14
                  add          ra, s0, t3
                  sub          t2, t2, s6
                  ori          t3, s10, -1414
                  auipc        a7, 704121
                  slli         t3, sp, 29
                  xor          a3, a2, a0
                  and          s5, s5, s8
                  srli         s4, a7, 3
                  addi         zero, t5, 294
                  addi         gp, s1, 952
                  srli         s8, s11, 31
                  slti         s0, s2, 1200
                  auipc        t1, 779534
                  nop
                  slti         a2, a7, -79
                  slti         s5, s9, -1091
                  or           gp, a7, t2
                  sltiu        a4, a2, 1018
                  nop
                  sub          a7, s0, tp
                  sll          gp, a3, t5
                  and          s7, t2, ra
                  srai         gp, a5, 4
                  ori          s5, a2, 609
                  slt          s3, s2, a2
                  sll          a7, gp, zero
                  slli         t0, a6, 31
                  xor          ra, a3, zero
                  slti         s9, s11, -1457
                  slti         gp, s9, -706
                  andi         zero, s8, -1506
                  sll          t5, a1, a3
                  and          s5, s2, sp
                  srai         a2, t4, 15
                  auipc        a2, 173943
                  xori         gp, s6, 695
                  srli         gp, a7, 14
                  slti         s5, t5, -1559
                  slli         tp, t1, 13
                  sltu         sp, sp, s4
                  or           a4, a5, s9
                  auipc        s3, 84610
                  srl          a1, s10, s5
                  sub          a2, t3, t3
                  sub          t5, s4, s1
                  slli         a7, a2, 16
                  nop
                  xori         gp, s6, -1792
                  nop
                  xor          a1, t0, a3
                  srai         a1, t5, 24
                  sltu         t5, t3, t1
                  srl          ra, s6, t6
                  slli         a6, t2, 13
                  lui          t4, 283199
                  addi         sp, gp, -254
                  sra          s4, s11, s8
                  auipc        a2, 793406
                  andi         gp, ra, 1384
                  or           s5, a6, a7
                  sltu         s10, a5, s9
                  slt          t3, sp, a4
                  sltiu        s7, s8, 1517
                  xori         t2, ra, 1435
                  sltu         s4, t2, a0
                  nop
                  li           a4, 0xa5288428 #start riscv_int_numeric_corner_stream_14
                  li           t1, 0x0
                  li           t0, 0xffffffff
                  li           tp, 0xffffffff
                  li           gp, 0x80000000
                  li           s0, 0x0
                  li           t5, 0xffffffff
                  li           a7, 0xffffffff
                  li           s10, 0xffffffff
                  li           s3, 0x80000000
                  sub          t1, s3, t5
                  nop
                  sub          s0, s3, a4
                  lui          s3, 928233
                  sub          t1, t0, a4
                  addi         t0, a4, -595
                  sub          s3, t1, t1
                  auipc        tp, 918686
                  add          t0, a7, s3
                  sub          s0, s3, t5
                  nop
                  nop
                  lui          s3, 1026749
                  addi         tp, s3, -936
                  sub          a4, t0, s10
                  auipc        t5, 285401
                  nop
                  lui          t1, 108469
                  auipc        gp, 214612
                  nop
                  add          s3, t1, a7
                  add          a7, s3, t0
                  nop #end riscv_int_numeric_corner_stream_14
                  xor          t4, tp, t4
                  auipc        a6, 911224
                  and          s10, s5, s6
                  sra          t5, s10, sp
                  nop
                  add          t4, t6, a4
                  and          a7, s5, s5
                  nop
                  slti         s11, a2, -717
                  sll          sp, a6, t4
                  addi         s10, s10, 1791
                  addi         gp, gp, 1460
                  ori          a7, t3, -1918
                  sub          s6, s7, s0
                  or           t1, s4, t3
                  ori          t3, a3, -1919
                  nop
                  auipc        t0, 1046562
                  ori          a1, a0, 344
                  srai         t6, s2, 8
                  lui          t6, 744042
                  slli         t1, a4, 29
                  lui          s8, 721461
                  slti         a2, s2, 1717
                  ori          s5, zero, -92
                  addi         a7, s7, -517
                  and          t6, a2, tp
                  srl          s3, s3, a1
                  ori          a2, s4, 1320
                  add          s9, t0, s0
                  srli         a6, s6, 28
                  sltiu        s7, t4, -415
                  auipc        ra, 550356
                  slt          t4, s11, s0
                  or           t2, a7, ra
                  addi         a4, s10, -1067
                  nop
                  srai         a4, a7, 4
                  add          a7, s8, a6
                  nop
                  slti         a1, tp, -966
                  sra          t1, ra, a4
                  sltu         s9, s5, s11
                  auipc        a0, 817137
                  srli         a0, s1, 16
                  xori         t4, gp, 1933
                  nop
                  srai         s9, a4, 14
                  srl          zero, t3, t2
                  or           s7, a3, a0
                  sll          a1, a3, s0
                  srl          a2, t0, a1
                  ori          a2, zero, 59
                  slt          s4, t2, zero
                  and          zero, a2, t5
                  and          a3, zero, s2
                  sra          s9, a0, s8
                  auipc        s8, 358601
                  ori          a6, ra, 1433
                  addi         s6, s10, 1811
                  sra          s3, s2, s9
                  and          t2, s2, s0
                  andi         s6, s2, 635
                  auipc        s11, 547128
                  add          sp, a0, s10
                  auipc        s6, 680988
                  xori         t0, s3, -854
                  xor          t4, t2, zero
                  and          t0, s9, s4
                  slt          tp, a4, a2
                  slt          t6, t3, t2
                  slti         s11, gp, 67
                  slt          s6, a7, ra
                  sub          sp, t0, zero
                  sltu         t1, s10, gp
                  or           s3, a4, t3
                  nop
                  xor          s11, a0, a1
                  slli         s4, s4, 8
                  or           s7, a5, sp
                  sltiu        s4, s10, 1495
                  srai         a4, t0, 15
                  or           s11, s2, a6
                  srai         s9, t5, 3
                  or           s10, tp, s5
                  slti         s4, a3, -1694
                  addi         s11, ra, 600
                  lui          s3, 138910
                  sll          t1, a4, s4
                  sub          tp, t4, s6
                  slli         a2, s7, 28
                  sltu         a1, s9, s7
                  srli         t4, a7, 7
                  xori         t4, s5, -1066
                  andi         t4, a1, -534
                  or           gp, s6, s4
                  sub          s11, a0, s9
                  xor          a7, a2, s6
                  and          t6, s6, tp
                  nop
                  slli         ra, ra, 7
                  srli         a6, t3, 0
                  andi         s5, s5, -1503
                  slli         t1, s3, 8
                  andi         t0, a2, -1597
                  sub          gp, zero, t1
                  addi         s11, t0, -815
                  srl          sp, a7, s0
                  nop
                  lui          s4, 702876
                  nop
                  sltiu        s4, s11, -852
                  srli         s9, t2, 0
                  nop
                  sll          ra, t1, t5
                  add          t5, s2, t4
                  srai         t0, a1, 25
                  ori          s9, tp, 1418
                  sltiu        t0, tp, 1872
                  srl          t5, s10, s9
                  or           t1, s11, s3
                  and          tp, s3, s9
                  add          s9, a1, a0
                  slli         a3, ra, 5
                  addi         a2, a5, -1433
                  auipc        t0, 16805
                  nop
                  addi         s11, a7, -91
                  slti         s5, tp, 425
                  and          a2, a6, a3
                  sltiu        a2, t2, -1468
                  ori          a7, s3, -1016
                  ori          s10, gp, -1375
                  sub          a7, sp, s7
                  slt          s7, a2, zero
                  slli         a6, t3, 29
                  sll          ra, a2, gp
                  or           s7, ra, s1
                  sll          t5, s7, a7
                  and          sp, s0, t2
                  srl          t6, t5, a7
                  andi         sp, a0, -1246
                  slli         sp, a3, 16
                  addi         s4, ra, 1937
                  lui          t6, 997818
                  sra          t1, t6, zero
                  sltu         s5, a5, a4
                  addi         a0, s7, 448
                  ori          a3, s5, 1700
                  xori         t2, t5, 1730
                  srai         s6, ra, 17
                  add          tp, s1, t5
                  lui          a4, 329911
                  slti         s11, s11, -351
                  or           tp, s1, s9
                  sltu         t6, s6, t6
                  lui          s9, 1022132
                  auipc        s0, 890185
                  xori         s9, s11, 1583
                  sltu         s5, s6, ra
                  lui          sp, 264178
                  nop
                  slt          a1, a1, t4
                  lui          s8, 2715
                  sltiu        s3, s2, 1029
                  srai         s3, s1, 22
                  slti         ra, s7, -1063
                  srai         gp, s11, 29
                  lui          t2, 326380
                  srai         t1, s9, 6
                  nop
                  auipc        ra, 227622
                  srl          t3, s7, t6
                  srai         a7, s2, 19
                  xori         a1, a2, 1308
                  nop
                  sub          t1, s8, s6
                  srl          s11, t3, t5
                  add          gp, a1, a6
                  auipc        sp, 695388
                  andi         tp, s11, 475
                  srai         s11, tp, 20
                  srai         a7, gp, 4
                  nop
                  slt          t1, ra, a4
                  sltiu        t3, s11, -1855
                  xori         gp, t0, 1332
                  sub          t0, s3, gp
                  srl          t4, s9, s7
                  add          a2, a3, t4
                  sra          t1, t0, t2
                  srai         a1, s0, 18
                  sltu         s8, t6, a4
                  slti         gp, s8, -436
                  srai         s0, s6, 8
                  srl          t1, s8, s7
                  sltu         zero, s4, s1
                  srai         t2, s2, 30
                  sltiu        gp, t0, 160
                  srli         a7, s5, 19
                  srl          t5, a3, s1
                  and          t3, t2, t0
                  xori         s7, ra, 87
                  slti         a1, s3, -1561
                  add          s5, s4, a5
                  add          t3, s5, s10
                  or           a3, tp, t5
                  auipc        t4, 771653
                  xor          sp, s4, s3
                  sltu         s10, a4, zero
                  slti         zero, t3, 1083
                  or           a4, s9, s9
                  slli         s4, s5, 6
                  ori          s7, s0, -223
                  ori          s11, a2, -435
                  li           sp, 0xbe7bfbaf #start riscv_int_numeric_corner_stream_13
                  li           gp, 0xffffffff
                  li           t2, 0x80000000
                  li           a0, 0xcc726054
                  li           a4, 0xdb99e40b
                  li           s5, 0xffffffff
                  li           t4, 0x80000000
                  li           t1, 0x80000000
                  li           t3, 0x503ccdbf
                  li           s0, 0xffffffff
                  nop
                  auipc        t1, 82156
                  lui          s5, 46594
                  nop
                  addi         t2, t4, -1983
                  lui          s5, 974167
                  auipc        a0, 395421
                  add          s0, s0, s0
                  lui          s0, 203884
                  sub          s5, s0, s5
                  add          gp, sp, t2
                  nop
                  nop
                  nop
                  add          a0, s5, gp
                  addi         gp, t3, 1813
                  sub          a0, gp, s0
                  add          a0, sp, gp
                  addi         t4, t3, 580
                  nop
                  nop
                  addi         a0, a0, 1155
                  addi         sp, t4, 1582
                  nop
                  add          sp, t3, gp
                  auipc        a0, 707306
                  sub          t4, a4, t3
                  auipc        a4, 1037705
                  addi         s5, s5, -455 #end riscv_int_numeric_corner_stream_13
                  sra          gp, a0, sp
                  sra          a7, s6, s3
                  sra          t5, s8, s8
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           a0, 0x0
                  li           s3, 0x16c1692f
                  li           s4, 0xffffffff
                  li           t4, 0x0
                  li           s7, 0xffffffff
                  li           t2, 0xf0d33b0c
                  li           a4, 0x6e65e051
                  li           s0, 0x0
                  li           a7, 0x0
                  add          t0, s3, t2
                  lui          s0, 846668
                  nop
                  nop
                  sub          t4, t2, t0
                  nop
                  auipc        s0, 601991
                  auipc        t4, 660083
                  sub          a4, a7, a7
                  sub          s4, s3, s0
                  auipc        a0, 394729
                  nop
                  add          s0, a7, t0
                  add          t0, s7, s4
                  auipc        t4, 155468
                  auipc        a7, 775620
                  nop
                  addi         a7, t0, 1321
                  auipc        a0, 969143
                  sub          s4, a0, a0 #end riscv_int_numeric_corner_stream_18
                  andi         s8, a0, -1066
                  srli         s9, a4, 20
                  xori         s6, t3, -387
                  or           a1, a2, a0
                  addi         a2, s2, 1080
                  lui          a0, 66850
                  ori          s0, a4, -1589
                  andi         s7, s6, 678
                  sra          a7, t6, a2
                  add          a6, a6, t5
                  and          s5, a1, zero
                  srai         t0, sp, 2
                  ori          s8, zero, 1974
                  slli         tp, ra, 23
                  nop
                  slti         s10, a4, -983
                  and          t6, a6, s8
                  sltu         s8, s9, ra
                  slli         t0, t5, 14
                  andi         s8, s9, -1678
                  slti         s8, t2, 513
                  slti         a6, s0, -1841
                  or           s3, s8, gp
                  andi         a7, sp, 1471
                  sltiu        s3, t5, 1125
                  or           a0, s9, s11
                  sltiu        a7, tp, 1732
                  srai         t5, a5, 29
                  addi         a4, a3, 811
                  sltu         t6, a5, t6
                  sll          a1, tp, t4
                  and          s9, a4, gp
                  slli         t4, zero, 17
                  nop
                  or           a1, s8, s11
                  sltiu        s3, s5, -744
                  xor          t0, s4, t4
                  ori          a1, s6, 1297
                  add          gp, t5, s5
                  slti         s10, t5, 1759
                  andi         zero, tp, -1334
                  ori          tp, s7, 1915
                  sub          t2, tp, a3
                  slli         ra, s9, 6
                  xor          a3, s0, s1
                  sll          s0, a3, t6
                  srl          s5, zero, t3
                  nop
                  slt          s3, t1, s2
                  slt          s10, s0, a1
                  slti         t4, sp, 763
                  slti         a2, a0, 164
                  andi         a6, a6, -1044
                  xor          ra, s3, t6
                  and          gp, s9, a0
                  ori          s8, a0, -1845
                  sra          s8, t1, a7
                  slli         tp, s9, 22
                  sll          s9, s5, t4
                  ori          t3, sp, -1120
                  sltiu        gp, t1, 1023
                  or           a3, t3, t1
                  srl          s3, t2, a3
                  slt          t3, zero, a1
                  sltu         s4, s5, a6
                  sub          zero, a0, t0
                  or           gp, a5, s8
                  andi         s11, s1, -1023
                  and          t6, a5, a0
                  ori          ra, a2, 1948
                  sub          s4, t2, s2
                  add          t1, s0, ra
                  sltu         a2, s7, gp
                  add          s10, s6, a3
                  slt          a0, a3, s7
                  sltu         a6, s4, s9
                  slli         a3, s10, 5
                  ori          s10, a5, -1242
                  sub          s0, s1, s3
                  sll          s4, a3, a3
                  srl          a7, t5, s9
                  sltu         tp, t4, t3
                  nop
                  slli         t5, s5, 27
                  slti         a7, t5, 1543
                  slt          a1, s10, s4
                  ori          t5, a7, -1920
                  xor          s8, s0, s3
                  add          a2, s8, a2
                  sra          s10, s9, t3
                  nop
                  xori         t3, s7, -818
                  srl          a6, a6, s11
                  xor          s10, s1, s11
                  sltiu        s8, t1, -112
                  sltiu        s4, a6, -1930
                  slt          t2, t5, ra
                  sltu         a1, s5, s0
                  srli         ra, s0, 13
                  addi         sp, s9, -112
                  and          s4, a7, s11
                  sltu         gp, a6, s6
                  slti         t4, s0, -1101
                  sll          a0, s6, s10
                  sltiu        a7, s2, -583
                  ori          t6, s10, 1353
                  or           tp, t3, s10
                  slli         a4, a6, 6
                  addi         a0, s1, 1346
                  or           t1, a4, zero
                  lui          tp, 95948
                  and          t5, s2, t2
                  slli         a3, s7, 9
                  srl          a7, t0, gp
                  ori          s7, gp, 1686
                  and          a2, t2, gp
                  srli         a3, s2, 1
                  or           a2, t2, t3
                  addi         t1, s7, -1270
                  auipc        sp, 79635
                  ori          s9, a1, 1074
                  add          t0, s6, a1
                  srl          s7, a6, s7
                  xor          s10, s3, zero
                  slli         s3, a3, 26
                  srl          t0, s11, s7
                  srai         t6, s1, 5
                  sltu         a6, a6, s9
                  slt          t4, a0, s1
                  addi         t5, t4, 1898
                  slt          s0, a1, a0
                  srai         t5, t6, 9
                  slti         a2, s4, -358
                  addi         a2, t4, 1209
                  and          a3, gp, zero
                  lui          a0, 78722
                  srai         a1, t0, 15
                  lui          s8, 1014683
                  sltu         a7, t2, a2
                  or           t5, s8, a0
                  ori          s7, t4, -1947
                  add          t3, t1, a5
                  or           s9, s4, s3
                  lui          s8, 285463
                  srli         tp, s2, 5
                  sltu         tp, s1, ra
                  auipc        zero, 518553
                  ori          s5, t2, 862
                  ori          a7, t2, 1717
                  xori         t6, s1, -54
                  xori         a1, a1, -716
                  auipc        sp, 835799
                  slti         s3, t5, 1834
                  sltiu        s0, a1, 808
                  slt          s3, t1, a1
                  and          sp, t4, t2
                  sltiu        zero, s4, 1818
                  xor          s5, a1, t1
                  sltu         t1, s1, s3
                  slti         t3, gp, 1711
                  ori          s8, s1, 1334
                  sll          s10, t4, s10
                  slti         s7, a4, -1245
                  addi         s6, a4, -1184
                  xori         ra, s8, 1049
                  sll          ra, s6, t1
                  addi         s7, a7, 1022
                  srli         t2, t3, 11
                  ori          s11, t2, 27
                  nop
                  slli         gp, a6, 0
                  nop
                  srli         a0, gp, 27
                  sub          s11, s3, a5
                  auipc        s5, 1000756
                  andi         ra, s3, 1447
                  srai         t6, a0, 6
                  and          a4, t3, s4
                  nop
                  sltu         a0, a6, a7
                  xor          s7, t2, a0
                  add          zero, a2, s0
                  add          tp, s7, s10
                  srli         a7, s9, 14
                  xor          s0, s6, s7
                  auipc        t4, 877083
                  srai         t5, s2, 16
                  sltu         sp, a5, a4
                  xor          a1, a2, a6
                  sll          t2, ra, zero
                  andi         t2, t3, 731
                  addi         s11, tp, 257
                  sll          t3, a2, s2
                  andi         sp, a5, 699
                  sra          s0, t3, a7
                  auipc        t3, 611413
                  ori          a0, t6, 1873
                  slt          t3, s4, s8
                  addi         gp, zero, -384
                  srai         s4, s7, 16
                  auipc        s9, 470010
                  srl          a6, t1, a7
                  sub          t2, gp, t2
                  sltu         t0, a4, s7
                  sub          t3, s5, a3
                  sltiu        ra, s7, -990
                  andi         gp, s0, 1238
                  sll          a6, a0, a5
                  slli         t3, tp, 12
                  xor          t1, a2, s9
                  xori         tp, a1, 353
                  srl          zero, t1, ra
                  srl          s6, s5, s7
                  srli         s0, t2, 4
                  srl          t5, t5, a4
                  slli         t3, t2, 20
                  and          zero, a6, s2
                  andi         s10, t1, -1890
                  sltu         a4, a1, gp
                  slli         a0, a7, 4
                  sltiu        t0, a0, -1318
                  ori          t2, t4, -979
                  xor          a1, s1, s9
                  addi         a7, t1, 1194
                  slli         s6, s0, 6
                  xori         a1, t5, 602
                  srl          a1, a4, s4
                  or           sp, t0, s4
                  sltu         ra, tp, s2
                  slt          t2, a6, t6
                  or           gp, a2, ra
                  andi         tp, a0, 441
                  slti         s0, a1, -1498
                  srl          s5, t6, s8
                  sra          tp, s0, tp
                  srai         t6, t6, 9
                  andi         a4, t4, -1156
                  and          t0, s2, s4
                  xori         t3, t4, -1668
                  sll          a6, a4, a6
                  nop
                  xori         ra, a6, -522
                  sltu         t4, a1, s11
                  sub          t6, sp, a5
                  andi         t5, s8, 1124
                  or           s6, s8, s2
                  slti         s11, a6, -16
                  srl          t3, a0, t3
                  slt          sp, a5, s8
                  sltiu        zero, s10, 807
                  ori          s7, a6, 1423
                  lui          t6, 876753
                  slti         ra, t0, -255
                  and          t0, gp, s7
                  addi         t2, s3, -1391
                  sltu         s4, gp, sp
                  sll          a6, a6, a2
                  add          s4, a7, a5
                  or           s8, t2, s3
                  addi         s4, a6, -274
                  xori         s6, s2, -516
                  auipc        t3, 1013956
                  xori         a7, s8, 1412
                  ori          a3, gp, 1787
                  sub          a4, s10, a4
                  srl          t1, zero, t1
                  add          s8, s1, s5
                  slt          s9, a7, tp
                  slli         s11, s11, 23
                  lui          zero, 531
                  add          t6, s7, t4
                  sub          a1, s5, s0
                  andi         s8, a7, 530
                  and          t5, t0, sp
                  and          a7, t3, t4
                  srl          s11, a2, t5
                  andi         s5, t1, 1349
                  slti         zero, t4, -362
                  or           s5, s6, s1
                  srl          t5, s2, s0
                  and          t4, a5, s6
                  slti         zero, gp, -1558
                  sra          a7, s3, a5
                  add          s3, a6, t6
                  sub          s0, a3, zero
                  sltiu        s3, s6, 1170
                  sltiu        zero, a2, 1657
                  sub          ra, t6, t2
                  add          s8, t3, s9
                  auipc        t6, 154258
                  ori          sp, a4, -1564
                  add          s11, t5, s1
                  andi         a0, t6, -912
                  sltiu        s10, t5, -1905
                  slti         s7, s9, 367
                  sra          s5, a7, s2
                  or           a0, t6, t1
                  nop
                  sltu         gp, s4, zero
                  sltiu        t6, s1, 42
                  and          a0, ra, s7
                  xor          tp, s8, a3
                  addi         s10, s1, 1406
                  xor          t1, s3, t3
                  ori          s6, t2, -675
                  add          t0, s5, s11
                  add          a4, s9, ra
                  auipc        s6, 300214
                  slli         t2, s0, 29
                  ori          s6, t3, 1668
                  xor          t4, a7, s8
                  nop
                  srli         s10, a2, 31
                  srli         a4, a3, 14
                  sll          ra, tp, s7
                  xori         a0, a6, 1701
                  auipc        t3, 459525
                  sltiu        s9, a7, 1656
                  slti         a2, t6, -1551
                  xor          a6, t0, gp
                  nop
                  or           sp, s10, t5
                  nop
                  sll          t2, s5, s1
                  xor          s7, s8, a2
                  slti         a7, s9, 1284
                  andi         s5, a4, 1557
                  sll          t5, a1, s9
                  addi         a7, a4, 1710
                  nop
                  slti         t1, zero, -1045
                  srl          s9, t3, s8
                  and          s5, t3, a6
                  lui          s6, 606853
                  sltu         t2, a1, s0
                  and          t3, s7, t3
                  slt          t6, a6, s6
                  sub          s4, a5, t4
                  or           s0, t6, s1
                  slli         s10, t1, 28
                  auipc        s4, 298262
                  lui          ra, 742074
                  srl          sp, s7, a5
                  lui          s8, 793365
                  and          t1, s7, tp
                  auipc        a6, 411819
                  slt          a1, a4, a1
                  slli         s0, s6, 30
                  slli         a7, t6, 15
                  sra          s10, t5, s1
                  slti         a4, s1, 1664
                  sub          a1, s3, a5
                  nop
                  srli         s9, a2, 14
                  and          ra, a4, a2
                  ori          s5, t0, 792
                  sltiu        a6, a3, 1292
                  xor          s11, s11, s7
                  lui          t4, 100906
                  slli         s0, t2, 13
                  xori         zero, a5, 178
                  sra          s5, s2, t5
                  sltu         s4, s3, a4
                  sll          t4, a3, a2
                  or           s11, s3, a7
                  xor          s10, s6, s10
                  sltiu        a7, gp, -173
                  sltu         sp, gp, s8
                  or           t1, s2, s11
                  addi         s0, ra, -1793
                  xor          a1, s11, ra
                  lui          s6, 13704
                  xori         s0, a4, 44
                  nop
                  slti         gp, s11, 1449
                  srl          gp, t2, s3
                  ori          s3, a7, 1100
                  or           t3, tp, a7
                  lui          t6, 516332
                  sltu         t4, a6, s9
                  srli         tp, s4, 13
                  sltiu        s8, zero, -188
                  lui          t1, 797060
                  slli         a0, a1, 27
                  sltiu        s8, t2, -99
                  slti         t4, s5, -1855
                  slli         s9, gp, 7
                  lui          s7, 504918
                  andi         t3, gp, -1086
                  or           a4, sp, s11
                  andi         zero, s0, -789
                  add          s9, s0, s3
                  lui          sp, 727843
                  sub          s10, gp, ra
                  xor          sp, s4, a3
                  srai         s4, s7, 15
                  andi         s8, a2, -2023
                  srli         ra, t5, 3
                  sra          s5, s8, s0
                  srai         s9, a7, 28
                  nop
                  auipc        sp, 212514
                  srl          sp, s9, s9
                  sra          t6, t6, s11
                  xori         t3, a6, 1700
                  nop
                  or           s8, s4, a7
                  and          s8, s4, t5
                  add          s7, t5, sp
                  srl          a0, t6, s9
                  srai         s9, s7, 13
                  srli         a6, a0, 8
                  addi         t5, a1, -119
                  srli         s7, s2, 8
                  or           t1, s4, s4
                  add          gp, a6, s2
                  srli         a1, ra, 10
                  and          t1, t4, gp
                  xori         a1, a3, -2043
                  sltiu        a3, a4, 229
                  auipc        s3, 1008082
                  auipc        s4, 776279
                  sltiu        a0, a7, 850
                  srai         a1, s6, 28
                  auipc        s0, 235231
                  addi         ra, tp, 925
                  sltiu        t1, a7, -373
                  slt          s4, s5, tp
                  sltiu        s0, s2, -1966
                  xori         t3, a5, 1955
                  add          t5, s9, gp
                  srai         t0, s6, 22
                  ori          ra, a2, 260
                  and          s8, a0, a0
                  or           t1, ra, a2
                  srai         t0, s1, 25
                  nop
                  xor          s6, s6, s9
                  srai         t4, t5, 16
                  slli         a7, t2, 21
                  sll          a1, s2, s11
                  sub          gp, a7, s11
                  srai         s4, t1, 18
                  slti         a1, t2, 1401
                  auipc        gp, 137904
                  slt          s8, s10, t2
                  add          ra, a2, s11
                  srli         t0, s6, 12
                  srl          t4, tp, t5
                  nop
                  xori         s6, a4, 674
                  srl          zero, a5, a6
                  nop
                  slli         s0, ra, 27
                  sub          a4, gp, s6
                  sltiu        a1, a2, 2033
                  and          a7, s6, t6
                  and          t3, ra, sp
                  srai         s8, s9, 2
                  lui          zero, 232859
                  srli         s0, s3, 8
                  lui          s7, 723456
                  srl          s4, s4, s9
                  lui          a1, 830808
                  ori          ra, ra, -34
                  auipc        a6, 1012249
                  sll          t0, a3, tp
                  auipc        s4, 397943
                  sub          a1, t0, a1
                  ori          sp, sp, -1071
                  sll          a2, s9, s1
                  slli         t5, a3, 24
                  addi         a1, t6, -1126
                  slti         s4, s10, 1803
                  nop
                  and          s8, a5, a5
                  srl          a2, t6, t1
                  or           s0, gp, s6
                  sll          s4, zero, s6
                  xori         sp, t0, 378
                  srai         t5, tp, 2
                  slt          a4, a7, zero
                  add          s8, ra, s4
                  and          a2, t3, a0
                  sub          t6, s4, sp
                  add          s7, s0, s9
                  slli         s0, a6, 4
                  srai         t3, a7, 1
                  srli         t1, tp, 30
                  auipc        a2, 685438
                  nop
                  and          t3, s6, s7
                  slli         t6, s9, 2
                  sltu         a4, t5, s4
                  sltu         s10, ra, t6
                  srai         ra, zero, 2
                  sll          t2, a7, s9
                  xor          t3, a6, a4
                  lui          a7, 673519
                  slti         s10, t5, 529
                  addi         s0, tp, -768
                  xor          t6, s2, s10
                  sltiu        s11, s6, -977
                  ori          a2, s6, 854
                  add          a2, s4, a7
                  xor          s8, s2, a4
                  lui          t3, 837057
                  or           a4, s6, t3
                  srai         tp, a7, 11
                  xor          s5, a2, t6
                  srli         s11, s1, 21
                  sltiu        t6, ra, -1871
                  nop
                  add          tp, s0, t3
                  srai         s9, s10, 20
                  auipc        a6, 901673
                  addi         a4, a5, -1102
                  auipc        ra, 137024
                  and          t0, t0, t0
                  addi         s7, t4, 219
                  slli         a2, s2, 9
                  sltu         a2, s1, s7
                  andi         s6, s6, -374
                  slti         a2, a2, 1777
                  and          a3, a3, s8
                  srli         a7, s5, 31
                  auipc        t0, 44551
                  lui          a4, 526525
                  slt          t3, a5, t4
                  slti         s11, a3, 302
                  nop
                  lui          t5, 362012
                  xori         sp, s10, -1931
                  or           a6, s3, a1
                  addi         s8, t6, -377
                  andi         t2, zero, -173
                  or           t3, s10, s7
                  nop
                  ori          sp, s9, 1251
                  sltiu        a6, ra, -1169
                  xor          s4, s7, s10
                  sra          s9, sp, s11
                  ori          t2, s2, 382
                  auipc        s3, 851500
                  slti         a3, gp, -1245
                  sltu         t1, t4, t5
                  sltu         s4, zero, t6
                  xori         s3, tp, -1362
                  xor          t5, t1, s6
                  sub          t5, t1, a3
                  slli         a3, t4, 20
                  andi         s6, tp, 832
                  sub          s4, t2, s7
                  sltiu        ra, t4, 59
                  sra          zero, s6, s11
                  slti         s4, s9, 464
                  add          s9, t4, s1
                  lui          t2, 148538
                  sll          s4, a3, t1
                  auipc        t3, 28675
                  slli         s0, s7, 20
                  and          zero, s4, t2
                  lui          s5, 867203
                  sltiu        s7, s5, 331
                  sra          tp, ra, t0
                  srai         ra, a5, 25
                  nop
                  lui          t0, 557684
                  add          a6, s10, s6
                  auipc        s11, 224978
                  lui          t6, 878069
                  slti         a3, t4, 1221
                  or           t0, s3, s11
                  or           t2, a2, a6
                  slt          tp, s6, t4
                  sltiu        s7, s6, 1984
                  andi         t1, t5, -330
                  auipc        s5, 44267
                  slti         sp, t5, 1403
                  srai         s5, s11, 29
                  and          s10, t5, s5
                  slti         s4, a2, 1319
                  andi         a2, t4, -314
                  ori          s3, a5, -817
                  slti         s4, s5, 1082
                  xor          sp, t5, s7
                  xor          t4, sp, a4
                  srai         s8, a7, 27
                  sll          s10, s0, tp
                  sll          a2, s0, a5
                  or           t5, ra, t2
                  andi         gp, t5, 1759
                  addi         a3, t6, -552
                  xor          ra, a5, a0
                  sltu         sp, s3, a0
                  addi         s8, gp, -876
                  sltu         s11, s4, s6
                  lui          s7, 584597
                  andi         a4, sp, -5
                  srli         s8, gp, 2
                  auipc        zero, 101522
                  sra          s4, t1, t2
                  xori         s0, a4, 1965
                  sra          s10, a2, a2
                  slli         s11, zero, 1
                  srli         a6, s7, 13
                  ori          s0, s4, 1079
                  ori          t3, a1, -1508
                  ori          s7, s1, 917
                  nop
                  srli         t0, ra, 18
                  sltiu        s9, s0, -78
                  sltiu        s3, s1, 1022
                  or           a7, a4, a1
                  andi         zero, tp, -613
                  slt          s3, t3, a6
                  andi         zero, s4, -398
                  lui          tp, 682943
                  sltiu        t4, s6, -1261
                  add          s4, t0, s8
                  sll          s11, t0, a3
                  addi         t4, a3, 477
                  xori         s10, s11, 823
                  lui          t3, 55839
                  xor          t4, s4, t1
                  nop
                  sra          s0, t0, t1
                  xori         a1, s8, -906
                  srai         s0, a4, 7
                  slli         s9, gp, 26
                  nop
                  lui          s5, 365490
                  add          a7, t2, sp
                  nop
                  slli         t5, s8, 13
                  slt          s7, s7, s11
                  auipc        s10, 497880
                  xori         a1, s6, 1832
                  srai         a7, s1, 15
                  ori          s0, sp, 871
                  sll          s3, a7, a5
                  slli         s3, s2, 12
                  andi         t4, a6, -1545
                  ori          t0, tp, -760
                  add          t1, s5, ra
                  sub          t6, a6, s2
                  addi         t3, s6, -1398
                  srli         t2, s10, 1
                  sub          ra, s2, s11
                  lui          a1, 833286
                  sltu         a4, ra, sp
                  auipc        a7, 314925
                  ori          s9, a6, 127
                  xori         a1, a4, -993
                  sra          a7, s3, t5
                  xori         a3, zero, -2003
                  sub          t4, s8, a5
                  sltu         a6, t2, ra
                  sltu         a2, a4, gp
                  srli         a6, t0, 10
                  slt          a1, a5, s3
                  slli         sp, tp, 29
                  srl          t1, sp, s4
                  and          t4, s5, a1
                  and          s9, s9, s5
                  auipc        a6, 204158
                  sltiu        t5, s6, 1359
                  slli         t2, zero, 6
                  srl          a6, s9, s6
                  sub          t3, ra, a7
                  sltu         s8, s5, t5
                  srli         s0, s1, 26
                  nop
                  nop
                  andi         s0, s3, 1534
                  auipc        s6, 361782
                  or           zero, a2, t4
                  addi         t3, s7, 1108
                  auipc        gp, 465505
                  auipc        t3, 869916
                  slli         ra, t0, 29
                  sll          zero, a3, s0
                  xor          tp, ra, t6
                  sll          s0, a2, s6
                  sra          s6, s7, s1
                  srai         t1, s6, 23
                  slt          gp, s7, s5
                  sub          t6, t6, ra
                  srai         t1, tp, 7
                  auipc        t4, 123424
                  slli         t3, sp, 16
                  lui          a4, 871416
                  auipc        s10, 441711
                  or           gp, ra, gp
                  lui          s0, 395021
                  addi         s4, t2, 1134
                  sub          sp, s0, s2
                  andi         a4, ra, -1255
                  sll          zero, zero, a5
                  add          a3, a1, t0
                  and          s8, s10, t3
                  add          ra, ra, gp
                  addi         a1, tp, -1697
                  lui          tp, 867938
                  sltiu        s4, s6, -521
                  or           s7, t5, tp
                  add          t3, a4, gp
                  sll          s7, s6, t5
                  ori          gp, a7, 91
                  and          gp, t1, s9
                  ori          s10, s0, -1954
                  sra          zero, t4, t0
                  srli         a4, a7, 31
                  sub          zero, s2, a3
                  auipc        a4, 1034711
                  lui          a4, 473282
                  add          a4, s2, s10
                  slt          a1, a6, t6
                  addi         t0, a0, 72
                  and          s4, t3, a2
                  sub          s6, s8, ra
                  srli         ra, s1, 23
                  slti         a2, sp, 1059
                  srl          tp, t3, a1
                  lui          a6, 708285
                  sll          tp, t0, tp
                  xor          s5, s10, zero
                  lui          zero, 474529
                  andi         sp, s1, 608
                  add          s10, t6, t5
                  and          t4, s7, s0
                  ori          s5, s10, -970
                  or           t3, a7, t0
                  xor          s6, zero, s11
                  auipc        s4, 15221
                  xori         s6, a2, 829
                  srl          t0, t4, s4
                  slli         t6, t6, 10
                  sra          s4, s10, s2
                  srai         t3, gp, 19
                  srli         t4, a6, 15
                  auipc        s7, 499522
                  srai         t0, s3, 15
                  and          s4, a0, s6
                  auipc        a6, 487436
                  auipc        t6, 834376
                  or           gp, t0, s8
                  xori         s7, t3, -1438
                  sll          a3, s11, s8
                  xori         a2, s10, 1221
                  auipc        t4, 786870
                  nop
                  auipc        s4, 525614
                  sub          t2, s10, s10
                  srl          s11, s2, s2
                  add          tp, t1, t1
                  xori         s0, a6, -1194
                  sltiu        tp, s5, -173
                  slti         tp, a6, -899
                  addi         s0, t1, -1965
                  slti         s9, a6, 795
                  slli         sp, ra, 0
                  sub          s11, s4, s11
                  slti         t0, s6, -1803
                  andi         a6, s5, 823
                  sra          t0, t2, t1
                  sltu         s8, t5, s6
                  xori         tp, s10, -69
                  srli         a4, s1, 20
                  add          sp, s11, t0
                  srai         t0, s8, 25
                  sra          a6, t0, s7
                  sra          zero, tp, t4
                  lui          s0, 803538
                  slti         t6, s9, 471
                  sra          t1, t3, ra
                  sltiu        s6, s7, -232
                  lui          s7, 424475
                  sll          t6, s0, s5
                  srli         tp, s6, 11
                  sltu         a2, s8, s5
                  xor          tp, tp, t5
                  sub          s11, sp, t6
                  sll          a3, a0, gp
                  addi         a2, s9, -506
                  nop
                  sltiu        a4, t2, -350
                  ori          t1, s4, 2000
                  slti         s7, s5, 2035
                  auipc        s6, 768466
                  addi         tp, tp, -930
                  slt          ra, s2, s2
                  sll          tp, s6, s3
                  srai         t6, s8, 16
                  srli         zero, gp, 10
                  add          sp, s9, s4
                  lui          s3, 820269
                  and          s3, s1, s7
                  auipc        t6, 614640
                  sll          t5, t0, a7
                  or           a7, t3, a3
                  xori         s7, sp, -1968
                  lui          t5, 467266
                  sll          s6, zero, t5
                  sll          s10, t6, s8
                  slti         a6, s3, -158
                  and          a0, a7, a5
                  nop
                  auipc        t5, 475256
                  srli         zero, s8, 21
                  auipc        s6, 351925
                  xor          s11, s8, s7
                  addi         a4, s10, 1552
                  srli         s10, a7, 22
                  add          a7, s4, t2
                  slt          a3, ra, a1
                  slli         gp, a4, 11
                  srli         t6, t4, 23
                  xor          ra, a2, a4
                  lui          a7, 509477
                  slli         a2, s5, 31
                  sll          s9, a7, t6
                  ori          a1, t4, -964
                  xori         t3, a4, 1673
                  ori          a7, tp, -591
                  or           s3, s1, a1
                  sub          s5, a6, a2
                  nop
                  andi         t5, t3, 479
                  srai         t3, s6, 13
                  xori         a1, t3, 448
                  and          t2, a3, a5
                  sra          t2, s9, a7
                  slt          a1, sp, a0
                  slti         s3, s7, 153
                  addi         gp, ra, -88
                  slti         t0, tp, -192
                  andi         t1, tp, -742
                  xori         t5, t4, -1737
                  and          s4, a1, s1
                  slli         t6, gp, 26
                  sll          t3, zero, gp
                  or           t3, sp, a7
                  sub          a2, s11, s2
                  add          a1, s2, s4
                  nop
                  add          t1, a1, a3
                  and          gp, s4, t3
                  sra          s4, zero, s10
                  andi         tp, s8, 1111
                  slt          t0, s3, s1
                  sll          a3, gp, a2
                  slli         s0, a6, 12
                  xori         t0, a1, -1201
                  ori          a1, s11, 856
                  slli         a6, s3, 18
                  or           s9, a2, t3
                  xori         t2, s5, 1043
                  nop
                  add          t2, tp, t4
                  srai         s9, t5, 23
                  andi         s6, a0, 93
                  addi         t6, t2, -603
                  add          ra, s1, s3
                  sll          tp, s8, a4
                  sltiu        tp, s8, -1827
                  auipc        a4, 616800
                  srai         a4, t5, 4
                  and          gp, t1, zero
                  srai         t4, t5, 24
                  sll          s0, s7, s2
                  sub          a0, s5, a7
                  and          s7, s7, t3
                  ori          s9, gp, -1419
                  sltiu        t6, s10, -962
                  srli         s11, t2, 5
                  sltiu        tp, gp, -715
                  slti         s4, s1, 282
                  ori          a6, s7, 1724
                  lui          a1, 235632
                  andi         gp, s10, 1483
                  addi         s11, s3, -187
                  nop
                  sra          s11, t3, a1
                  xor          t0, s11, s1
                  srli         t5, s2, 16
                  slti         t3, s4, -1203
                  and          t4, a6, a0
                  xor          s3, s11, s0
                  slti         sp, t0, 1632
                  auipc        s9, 501493
                  addi         t0, s0, -954
                  andi         tp, a3, 1921
                  slli         t5, t0, 4
                  xor          s11, tp, a0
                  slli         a2, s11, 29
                  nop
                  sub          a7, s4, sp
                  lui          a0, 541718
                  srli         t3, s9, 0
                  nop
                  sltu         zero, tp, t4
                  xori         zero, t0, -1725
                  sll          t4, a2, a7
                  nop
                  sub          t4, sp, s11
                  xori         t4, s8, 963
                  add          s6, s8, a1
                  nop
                  or           t2, a1, t6
                  add          s6, sp, a4
                  sub          a1, s8, zero
                  xor          t6, s1, s6
                  sra          zero, a3, t4
                  nop
                  sra          tp, s3, gp
                  sra          s5, s10, zero
                  srl          t6, a3, s4
                  slli         a1, t1, 7
                  sra          sp, t6, gp
                  sll          s10, s6, a0
                  andi         ra, ra, -1590
                  add          a2, a7, t6
                  sll          t1, s10, sp
                  addi         t6, sp, -251
                  srai         s7, s3, 6
                  andi         t4, a6, -684
                  slti         s7, s0, -822
                  andi         s6, s4, 583
                  slli         a7, a1, 27
                  srai         s8, a2, 8
                  srl          a4, a7, sp
                  xor          zero, tp, s9
                  or           t6, t2, a5
                  add          tp, gp, zero
                  sub          a7, s6, a4
                  slli         s7, s2, 29
                  ori          sp, s10, -1479
                  lui          t0, 181943
                  nop
                  or           a1, a7, s11
                  and          t3, s7, s1
                  sltu         t4, s0, s9
                  sub          s4, t0, s5
                  slt          ra, sp, t0
                  add          t5, s7, ra
                  srl          t6, a2, t0
                  addi         s9, t4, -1408
                  srai         a7, t0, 7
                  sltiu        ra, t3, -1281
                  auipc        t4, 96125
                  lui          a0, 233795
                  sub          gp, t3, a5
                  or           t5, t5, t5
                  slti         a4, gp, 1483
                  andi         t2, t4, -2046
                  sll          t1, s0, s9
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s0, 0xffffffff
                  li           a1, 0x9f95781a
                  li           a3, 0x80000000
                  li           sp, 0xcdef610f
                  li           t0, 0x80000000
                  li           t5, 0xffffffff
                  li           s10, 0xbf4ef364
                  li           t2, 0x0
                  li           tp, 0x0
                  auipc        a1, 913444
                  add          a1, a4, a3
                  lui          s0, 166779
                  lui          a1, 172866
                  lui          a4, 724929
                  addi         a1, t5, -295
                  nop
                  lui          a3, 968492
                  auipc        a3, 67238
                  auipc        a4, 603320
                  lui          s10, 148622
                  add          s10, a3, tp
                  auipc        a1, 535578
                  sub          t2, a3, s0
                  addi         tp, t2, -847
                  add          a3, t0, a3
                  sub          a4, sp, a1
                  auipc        a4, 698096
                  lui          a1, 656826
                  add          t2, tp, t2
                  add          a1, a3, sp
                  addi         a3, a4, 1509
                  nop
                  lui          a4, 667476
                  addi         a1, t2, -1754
                  nop
                  addi         a1, a1, -1005
                  addi         tp, sp, 40 #end riscv_int_numeric_corner_stream_19
                  xori         s11, t5, 929
                  slt          s9, s6, a7
                  sra          a4, s0, ra
                  xor          a6, zero, s9
                  auipc        t4, 339645
                  auipc        t2, 112287
                  add          s10, t6, s4
                  sub          a3, t3, s9
                  ori          t1, s1, -1383
                  or           t6, s2, a1
                  or           a1, s7, tp
                  sub          s10, a0, s11
                  sltu         t4, a1, sp
                  srai         ra, s10, 29
                  xori         zero, t6, -169
                  xor          s10, a5, t3
                  xor          s10, t1, s7
                  srli         t1, t5, 7
                  auipc        s6, 915143
                  sll          sp, s2, a0
                  auipc        t4, 757498
                  auipc        t4, 404476
                  nop
                  add          s8, a4, s6
                  addi         t1, a3, -595
                  sub          a1, gp, t1
                  sra          sp, s3, s10
                  addi         s11, t6, 1577
                  sra          s9, s1, t1
                  sra          a7, t4, s5
                  or           s0, a3, a5
                  srli         s10, a5, 4
                  sll          s4, t2, s9
                  or           s4, s1, a0
                  xor          t2, t5, s11
                  auipc        t5, 896306
                  slti         t5, s3, 1372
                  or           a2, t0, a5
                  lui          s7, 26019
                  auipc        gp, 444261
                  sub          a1, t4, s7
                  sra          s5, s5, t2
                  nop
                  and          ra, s5, s10
                  lui          s7, 873729
                  or           s5, s4, t6
                  slt          s7, s2, s4
                  xori         t3, s10, 1216
                  srl          t4, s9, gp
                  or           s11, t2, a6
                  slt          s11, a4, s3
                  or           s11, s8, a1
                  and          t3, a0, s4
                  slti         s6, a3, 875
                  srai         s11, a1, 6
                  lui          t2, 775141
                  xori         tp, s11, -407
                  sub          t5, s6, s1
                  xori         s4, tp, -1127
                  xori         s4, sp, 9
                  ori          tp, s2, -193
                  slti         s7, s11, 797
                  srai         t0, a5, 20
                  addi         s0, a7, 1763
                  or           sp, tp, s0
                  auipc        t5, 692231
                  or           ra, t2, a3
                  srl          s11, s1, s3
                  srai         s8, t2, 13
                  sub          s7, s3, a7
                  ori          s0, a1, -453
                  nop
                  sltiu        ra, t2, -1627
                  lui          s7, 893685
                  ori          s4, t5, -2045
                  auipc        s10, 135836
                  sll          a0, s4, zero
                  srli         s11, s10, 21
                  srai         t4, s4, 18
                  sra          s9, s2, a4
                  xori         s11, t3, -1334
                  andi         t0, a7, 1338
                  slt          a2, a3, a4
                  xor          a0, t4, a2
                  sltu         a7, a0, s7
                  ori          a7, s5, 78
                  sra          a2, s10, gp
                  sll          s3, t3, s8
                  and          t1, t5, a1
                  or           a0, a2, a4
                  andi         a2, sp, -1909
                  and          zero, gp, a3
                  slt          s8, s3, zero
                  srli         a2, s9, 26
                  nop
                  slt          t6, s4, s10
                  slli         t6, ra, 24
                  auipc        s3, 539767
                  sltiu        tp, a4, 1280
                  xor          t4, s6, s8
                  xor          s7, gp, t5
                  srl          tp, a7, s3
                  auipc        s9, 513630
                  ori          s7, sp, 1637
                  slt          t5, t0, t3
                  or           ra, s1, s4
                  ori          s3, a5, -1339
                  and          sp, a5, ra
                  sltiu        t1, zero, 107
                  srl          ra, sp, a1
                  lui          s8, 318942
                  lui          s4, 115965
                  sltiu        sp, a2, 588
                  sll          a1, sp, a1
                  sra          t3, t1, a3
                  lui          a2, 460089
                  sub          t0, s4, s0
                  slt          s5, t1, a0
                  sra          a2, s4, a4
                  or           t5, s7, sp
                  lui          a1, 546567
                  srai         s5, zero, 20
                  slli         s8, t1, 19
                  sub          t4, a4, a7
                  srli         a1, s11, 1
                  xor          a4, t4, s9
                  lui          a7, 112650
                  sra          a7, t1, s1
                  xor          t3, t1, s11
                  sra          t0, s7, s8
                  or           a7, s10, s0
                  or           t2, s2, a5
                  slli         a7, t1, 8
                  srl          t5, a1, a7
                  srli         tp, s6, 21
                  add          sp, s0, a6
                  srli         a3, s6, 22
                  andi         a1, a2, 2043
                  srai         s9, ra, 19
                  lui          s11, 530088
                  sra          a7, s0, tp
                  srli         t4, a6, 18
                  ori          t4, a4, 1478
                  add          a4, sp, gp
                  sub          tp, t5, t4
                  sltu         t4, ra, t0
                  slti         t6, t4, -1707
                  sltu         s11, s6, s5
                  srai         a0, t4, 7
                  sll          a7, t5, a5
                  sra          a6, t4, t3
                  and          t6, ra, gp
                  or           a6, a4, a3
                  slt          a7, gp, a7
                  and          a1, ra, s7
                  andi         t2, s10, -150
                  nop
                  andi         t2, s3, -1803
                  add          s9, s3, t4
                  sub          tp, tp, sp
                  sub          s11, tp, s8
                  or           s10, t4, s5
                  sub          a3, a6, s10
                  srl          s5, ra, a3
                  lui          a7, 583845
                  ori          a1, s6, 489
                  sltiu        s3, a5, 13
                  andi         s5, tp, 291
                  srai         s9, s4, 23
                  srli         a7, s3, 3
                  nop
                  addi         a2, a7, 1415
                  ori          a4, t2, -355
                  srli         a3, zero, 7
                  auipc        s7, 264697
                  add          s10, s6, s8
                  auipc        s9, 406937
                  add          s3, a4, t5
                  nop
                  andi         s10, t0, 841
                  srl          s6, s9, a2
                  srai         t2, a0, 20
                  xori         tp, s11, 505
                  andi         a0, t0, -358
                  slti         zero, a5, -972
                  auipc        a4, 375311
                  slt          t1, a6, s7
                  xori         sp, gp, 2007
                  srl          t5, t2, s2
                  and          t4, s3, t6
                  andi         s0, a7, 35
                  xori         sp, a7, 1566
                  srai         s0, t4, 15
                  srl          t0, s11, s11
                  or           s7, s1, a0
                  sltiu        t2, s6, 1433
                  xori         a2, s8, -855
                  lui          a2, 828203
                  addi         t6, s11, -1887
                  lui          t4, 102864
                  slti         ra, s7, 339
                  sll          a3, s2, s11
                  srli         a1, s9, 10
                  ori          a1, t4, 963
                  srai         s8, a4, 17
                  slti         t0, s9, 1978
                  srl          s3, s5, a0
                  lui          s9, 344663
                  lui          ra, 938517
                  slli         a7, a5, 21
                  sra          t6, t0, t1
                  or           t6, s1, s9
                  sltu         s5, t1, a0
                  nop
                  slt          s7, t2, s3
                  lui          gp, 1045041
                  and          ra, a7, s6
                  slli         t0, t1, 3
                  or           s7, ra, a5
                  srai         s9, s5, 19
                  sltu         s6, a1, zero
                  slli         a0, s4, 2
                  slli         sp, s7, 11
                  lui          a6, 474880
                  or           s11, a4, t3
                  srai         a0, s4, 25
                  slt          s9, s0, a2
                  srli         s10, s11, 29
                  and          zero, t4, t6
                  auipc        s10, 111874
                  sltiu        s8, t0, -13
                  or           s5, a7, a1
                  auipc        t2, 82930
                  add          zero, t3, s4
                  srli         t1, ra, 25
                  or           a3, a6, t1
                  slli         ra, tp, 18
                  sub          ra, s5, a5
                  slt          s11, sp, ra
                  sltiu        gp, a7, -1038
                  xori         ra, t6, 1581
                  sltu         s6, a1, s0
                  slli         sp, s0, 19
                  slti         s4, s2, -1429
                  auipc        s10, 272490
                  lui          gp, 431238
                  andi         t2, s11, 2012
                  and          a3, t3, a4
                  slli         a4, gp, 1
                  xori         a1, s1, -761
                  sll          a4, a7, zero
                  slt          a0, s6, sp
                  and          t1, s1, a2
                  xori         s0, gp, 1250
                  srli         ra, sp, 30
                  sub          s5, a5, s6
                  addi         s4, s7, -1512
                  slti         t3, s0, -130
                  srli         t5, t6, 21
                  srli         s4, t6, 14
                  srl          gp, s2, t5
                  nop
                  lui          t1, 180064
                  sltiu        t4, t0, 1067
                  auipc        a6, 6933
                  addi         t6, s5, -868
                  slli         a2, s6, 13
                  lui          s7, 191278
                  lui          s6, 726723
                  xor          tp, t1, ra
                  xor          a7, s11, s11
                  slli         ra, t0, 26
                  sub          a2, sp, s11
                  xor          s0, ra, t3
                  sltu         t1, t5, zero
                  nop
                  xor          tp, t0, sp
                  auipc        a4, 820955
                  lui          a6, 171288
                  addi         s7, t2, -558
                  auipc        s11, 847032
                  add          t4, s3, gp
                  sub          gp, a4, t1
                  auipc        s6, 170595
                  lui          t1, 190913
                  addi         zero, a0, 858
                  sltiu        t1, a2, -1657
                  sra          s0, ra, ra
                  sub          a6, zero, a0
                  and          s7, s4, sp
                  lui          gp, 492263
                  xori         s9, zero, 24
                  nop
                  sltiu        s7, s6, -1560
                  sll          a4, t6, t5
                  lui          a2, 839197
                  lui          a6, 100621
                  sltu         t1, a7, s3
                  sltu         a7, s7, a4
                  nop
                  xor          s7, a5, s4
                  addi         s10, a2, -779
                  srai         a6, a0, 23
                  slti         t2, s9, 986
                  xori         a0, sp, -874
                  srai         a3, s9, 10
                  and          t0, s3, s6
                  sra          s5, s4, s9
                  srli         a2, s7, 22
                  srli         s4, s2, 11
                  add          t6, ra, t3
                  sltu         a4, s2, s9
                  sub          t3, t4, s5
                  sltu         t0, a5, t4
                  lui          a7, 313216
                  nop
                  sltu         tp, a6, gp
                  sra          t0, tp, t2
                  sll          t4, sp, a2
                  slti         t0, s6, -115
                  sra          gp, s1, t0
                  srl          a4, a3, s7
                  or           ra, a1, s0
                  sltu         t0, s8, s2
                  ori          ra, a5, -1613
                  sltu         t4, a3, ra
                  and          a1, s7, a0
                  slti         a2, s7, 268
                  lui          s6, 589069
                  sub          ra, s4, gp
                  sll          s7, sp, zero
                  auipc        t1, 226376
                  srli         t2, t5, 18
                  sra          s3, a2, a2
                  ori          s10, tp, 1884
                  nop
                  addi         t2, a3, -1104
                  slt          t4, s7, a0
                  slt          t6, s10, s6
                  andi         t4, gp, 1773
                  srai         ra, s1, 1
                  or           s11, s11, s6
                  addi         s5, s6, 1413
                  srai         t3, s9, 15
                  xor          a0, t6, tp
                  slti         ra, s5, -1525
                  sltu         a0, t5, a6
                  sll          t0, t0, a5
                  sra          s7, sp, t6
                  xori         s4, s4, 125
                  srli         a4, tp, 18
                  slti         a7, a5, -269
                  srl          t2, s2, a1
                  slti         s8, s3, -1368
                  ori          s0, a5, 1361
                  sltiu        t0, s4, -838
                  srli         gp, a0, 4
                  addi         a6, t2, -998
                  srai         s4, s0, 14
                  and          t1, t3, a6
                  nop
                  slli         a7, s0, 2
                  add          a4, zero, s4
                  slt          s4, s0, t5
                  sltu         s6, s6, a1
                  ori          t2, s2, -1572
                  sll          s9, a3, sp
                  addi         a7, s4, 1310
                  xori         s0, t5, -1691
                  andi         s0, zero, -1829
                  slti         t5, s0, 1260
                  sltu         a4, s8, t1
                  slti         s3, a4, -368
                  xor          t1, a6, s3
                  srli         s10, gp, 28
                  xor          t5, s9, t1
                  srai         t2, gp, 14
                  srli         s0, a7, 5
                  srli         gp, a4, 11
                  or           a7, s10, a7
                  addi         s6, s8, -1532
                  nop
                  xori         s3, a6, 132
                  slti         a2, a3, 1215
                  xori         zero, a0, 322
                  nop
                  sltu         gp, tp, a5
                  or           a7, s6, s1
                  srli         t3, a2, 13
                  sll          s11, a3, sp
                  sltu         t1, s11, t5
                  xor          t1, a7, s5
                  add          a6, t2, t2
                  sra          s9, ra, ra
                  xor          s0, s9, t0
                  sra          tp, s3, s8
                  slti         s7, gp, -978
                  sltu         gp, a1, a3
                  andi         s10, sp, 1017
                  addi         s9, a7, 1962
                  srli         a6, a2, 11
                  add          gp, s6, s6
                  slt          s8, s0, s2
                  sll          t3, a3, a7
                  slti         s6, s5, 978
                  sltu         a0, a6, zero
                  and          ra, s0, s3
                  or           a7, s3, t4
                  slt          a2, a3, zero
                  slti         zero, s1, -197
                  sltiu        tp, s5, 1734
                  sra          s10, s7, t6
                  or           a6, sp, a2
                  srli         a3, s3, 26
                  and          zero, sp, a4
                  or           t0, a1, a4
                  srl          t4, gp, s9
                  xor          a2, s4, s0
                  sltiu        a7, s0, 1727
                  slti         s9, sp, -1522
                  addi         s8, t4, 160
                  slti         t1, t4, 1819
                  slli         a2, ra, 17
                  xori         a6, a2, 999
                  sub          a3, tp, t2
                  and          s5, t0, a0
                  ori          t4, sp, 315
                  srai         s8, a7, 27
                  xori         t5, ra, 714
                  srli         s5, s6, 17
                  add          s3, t0, t5
                  add          t0, s5, s3
                  srli         s10, t3, 17
                  sll          t5, s2, a4
                  srli         a1, a1, 14
                  nop
                  srai         zero, s8, 12
                  srl          s10, a3, t4
                  andi         t1, tp, -448
                  slti         s8, t4, 1276
                  slli         s10, s7, 11
                  nop
                  srli         a0, s7, 11
                  or           s11, sp, t3
                  sra          a0, t1, s1
                  sltu         sp, t6, zero
                  ori          ra, a2, 737
                  sll          a1, ra, s4
                  sltiu        a2, t0, 1583
                  auipc        a3, 523903
                  srl          a7, s10, a2
                  andi         sp, a2, 1040
                  xori         t3, s1, -563
                  ori          t0, ra, -1671
                  srai         t4, a5, 11
                  srli         s5, t6, 18
                  add          s7, ra, s9
                  ori          sp, s6, -350
                  or           t5, s7, t4
                  sll          a3, s8, t4
                  sltu         s9, s9, s6
                  srai         t2, s4, 7
                  sll          t6, s6, s1
                  sltiu        t1, s3, -46
                  ori          t0, s7, -1174
                  xori         a6, ra, -1537
                  sll          a6, s8, t2
                  nop
                  or           tp, a1, s6
                  srli         tp, t4, 31
                  nop
                  sll          a3, t0, s5
                  and          tp, s1, a3
                  sltu         a3, a5, a1
                  srl          t3, s7, s5
                  xori         s11, sp, -486
                  sll          a2, a1, s2
                  sll          t4, t0, a3
                  sltiu        t1, s10, -1606
                  sub          a3, a1, t4
                  xori         a7, gp, 329
                  slt          s9, a2, s5
                  or           a7, a5, tp
                  nop
                  sltiu        gp, s8, -1777
                  srai         s0, t0, 29
                  lui          a0, 555015
                  xori         t1, s9, 621
                  xor          tp, a6, t3
                  and          a3, ra, s4
                  srai         t3, t6, 7
                  auipc        t5, 869052
                  srli         t0, s11, 26
                  xor          t0, s0, sp
                  slti         t0, tp, -1149
                  slli         t5, a0, 15
                  xor          s9, t6, a5
                  andi         t6, tp, 1246
                  auipc        s11, 658188
                  or           a7, t4, s6
                  sltiu        a7, a4, 31
                  slti         t3, t4, 1841
                  slt          a0, s1, a1
                  slti         t2, s3, -1460
                  ori          sp, t6, -995
                  lui          s8, 305539
                  xor          s6, s7, a3
                  and          s8, t3, t5
                  srai         s11, s10, 24
                  slt          a3, t2, zero
                  srli         t1, a5, 7
                  lui          s5, 277598
                  sll          a2, s5, a7
                  slt          a6, s9, tp
                  andi         tp, s9, -1471
                  srai         sp, a5, 28
                  srl          s3, a2, tp
                  nop
                  nop
                  and          a2, t2, s10
                  xor          s8, a6, s1
                  sltiu        t6, t4, 693
                  and          s3, s10, t6
                  sll          t1, t5, a3
                  addi         t6, t3, -20
                  sub          s9, s3, s3
                  xor          a1, t6, s3
                  sub          tp, gp, t3
                  xor          t6, s6, s6
                  addi         s7, zero, 1867
                  auipc        t6, 836442
                  sltu         t0, a1, t5
                  lui          a6, 858881
                  xor          s5, s2, s0
                  add          s10, ra, a0
                  sltu         s5, a7, s11
                  addi         s5, s9, -576
                  sltu         a7, s1, gp
                  ori          s4, a0, -1127
                  nop
                  sll          a7, t1, s10
                  ori          t3, zero, -1210
                  or           zero, t5, a5
                  and          t5, s10, a3
                  sltu         a1, s2, tp
                  sll          s3, a5, a3
                  ori          zero, s10, -226
                  sra          s6, s2, s6
                  addi         s4, s7, 1192
                  xori         s5, s10, 1023
                  slli         a0, t6, 28
                  xori         a6, a3, -548
                  sra          t6, tp, s4
                  slti         s6, s6, 1525
                  srai         sp, s4, 31
                  nop
                  sub          a0, sp, s7
                  sra          t4, s3, s2
                  sltiu        a0, a2, -362
                  andi         sp, t6, -567
                  sra          s11, zero, s3
                  sll          tp, a0, zero
                  and          a0, s1, s6
                  addi         t3, sp, -451
                  sll          s9, ra, s11
                  srl          t3, s10, a4
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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x9, x15, zero
                  csrr x10, 0x300 # MSTATUS
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 31
                  bne x10, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x10, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x10, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x10, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x10, x25, ecall_handler
                  li x25, 0x1
                  beq x10, x25, instr_fault_handler
                  li x25, 0x5
                  beq x10, x25, load_fault_handler
                  li x25, 0x7
                  beq x10, x25, store_fault_handler
                  li x25, 0xc
                  beq x10, x25, pt_fault_handler
                  li x25, 0xd
                  beq x10, x25, pt_fault_handler
                  li x25, 0xf
                  beq x10, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

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
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x15, x9, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

load_fault_handler:
                  add x15, x9, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

store_fault_handler:
                  add x15, x9, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

ebreak_handler:   
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x15, x9, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

illegal_instr_handler:
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x15, x9, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x15, x9, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
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
