.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x26, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 0
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0xfaf4f8a4
                  li x1, 0x9eb46c27
                  li x2, 0xaf925711
                  li x3, 0xf088875a
                  li x4, 0x3
                  li x5, 0xb
                  li x6, 0xf2df95a3
                  li x7, 0xf7131adf
                  li x8, 0x0
                  li x9, 0x3bb59575
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x8a3e35c6
                  li x13, 0x80000000
                  li x14, 0xb
                  li x15, 0x9
                  li x16, 0x80000000
                  li x17, 0xe08165ff
                  li x18, 0xf7161d6b
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0x6a09392c
                  li x24, 0x0
                  li x25, 0xfaf47194
                  li x27, 0x80000000
                  li x28, 0x2
                  li x30, 0x8
                  li x31, 0x0
                  la x29, user_stack_end
main:             li           s4, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           t0, 0x0
                  li           a5, 0xffffffff
                  li           s11, 0x80000000
                  li           t6, 0x40d881ce
                  li           s8, 0xffffffff
                  li           sp, 0x80000000
                  li           t5, 0x80000000
                  li           gp, 0xffffffff
                  li           a6, 0xffffffff
                  lui          s11, 772028
                  nop
                  nop
                  addi         t5, s4, 1643
                  lui          s4, 462748
                  sub          t0, a6, s4
                  nop
                  addi         t0, s8, -400
                  sub          t6, s4, s4
                  nop
                  nop
                  add          a6, t6, t0
                  addi         t6, a6, -1322
                  lui          sp, 209816
                  sub          s4, s4, a5
                  auipc        t0, 160525
                  addi         t0, s4, 553
                  add          t5, s4, s8
                  nop
                  sub          t5, s11, t6
                  lui          a5, 664155
                  sub          a5, t6, s4
                  addi         s8, s8, 1032
                  auipc        s8, 760009 #end riscv_int_numeric_corner_stream_1
                  li           t5, 0xe15c871 #start riscv_int_numeric_corner_stream_13
                  li           s8, 0x0
                  li           s5, 0x80000000
                  li           a3, 0x80000000
                  li           s0, 0x0
                  li           s11, 0xf67bbbf6
                  li           a4, 0xffffffff
                  li           a5, 0x0
                  li           ra, 0x2a005b42
                  li           gp, 0x0
                  auipc        s5, 35626
                  sub          a5, s0, ra
                  auipc        s11, 763788
                  addi         t5, a5, -1874
                  addi         s0, s8, -1288
                  sub          ra, a3, a5
                  auipc        s0, 903574
                  lui          a3, 346333
                  addi         a5, a4, -1007
                  auipc        t5, 81600
                  sub          s8, s5, a4
                  auipc        a4, 961882
                  sub          t5, s11, s0
                  auipc        a5, 749745
                  nop
                  auipc        a4, 1042539
                  auipc        ra, 820445
                  lui          s0, 760370
                  add          s5, gp, a5
                  addi         s8, ra, 653 #end riscv_int_numeric_corner_stream_13
                  li           t1, 0x1d7bcd96 #start riscv_int_numeric_corner_stream_19
                  li           s7, 0x7861fcf1
                  li           s11, 0x80000000
                  li           a6, 0x87222d39
                  li           a1, 0xffffffff
                  li           t5, 0x80000000
                  li           s9, 0x978c1eb3
                  li           s1, 0xffffffff
                  li           a4, 0xffffffff
                  li           s8, 0x0
                  nop
                  nop
                  lui          a1, 101840
                  addi         t1, a1, -445
                  lui          a6, 838161
                  addi         a1, a4, 1585
                  sub          s8, t5, a6
                  lui          s7, 613074
                  addi         t5, s1, -2025
                  lui          a1, 793198
                  sub          s8, s9, a4
                  auipc        s7, 743682
                  addi         t1, s7, -214
                  auipc        s7, 272122
                  lui          t5, 1004224
                  auipc        a4, 598012 #end riscv_int_numeric_corner_stream_19
                  li           gp, 0x1e7d29be #start riscv_int_numeric_corner_stream_15
                  li           t5, 0xffffffff
                  li           s0, 0xffffffff
                  li           s9, 0x80000000
                  li           t0, 0x89c02b23
                  li           s1, 0xffffffff
                  li           s2, 0x0
                  li           tp, 0x80000000
                  li           a3, 0x80000000
                  li           a5, 0xffffffff
                  auipc        a5, 477031
                  add          s9, gp, tp
                  auipc        t5, 572006
                  lui          s9, 1016463
                  add          s9, s1, a3
                  sub          s1, s9, s2
                  auipc        a3, 786025
                  add          s0, s0, t0
                  add          t0, tp, t5
                  lui          s1, 863852
                  add          s9, s2, s1
                  nop
                  add          s0, a3, a3
                  sub          s2, tp, s1
                  addi         s2, s9, -310
                  lui          s0, 183328
                  addi         s2, a3, 1318
                  sub          a3, a5, t0
                  lui          gp, 12119 #end riscv_int_numeric_corner_stream_15
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           s2, 0xffffffff
                  li           s3, 0x0
                  li           t1, 0xfeb887e1
                  li           s4, 0x196a8cb9
                  li           t2, 0x16d7fc42
                  li           t0, 0x0
                  li           t6, 0xe1d573e7
                  li           a6, 0x80000000
                  li           s1, 0xffffffff
                  nop
                  sub          s3, t1, t2
                  auipc        a6, 908752
                  nop
                  nop
                  nop
                  auipc        s1, 854463
                  sub          t0, s2, t2
                  sub          s8, t1, s2
                  auipc        t6, 899965
                  auipc        t1, 856662
                  add          t0, s2, s1
                  add          t0, t2, s4
                  sub          s3, t2, t1
                  addi         s2, s4, -32
                  addi         s8, t1, 308
                  addi         s2, t2, 1186
                  lui          s3, 773679
                  sub          t2, a6, t2
                  addi         s1, t6, -1039
                  lui          s1, 289280
                  addi         a6, t2, -1396
                  lui          a6, 777457
                  auipc        t2, 525666
                  sub          s3, s3, s2
                  lui          s2, 292416
                  addi         s4, s4, -1178
                  lui          s1, 647953
                  auipc        s4, 269851 #end riscv_int_numeric_corner_stream_12
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s6, 0xe65a0a4b
                  li           a1, 0xffffffff
                  li           a3, 0xffffffff
                  li           t6, 0x0
                  li           s4, 0x0
                  li           a4, 0x80000000
                  li           t5, 0x80000000
                  li           s0, 0x80000000
                  li           gp, 0xffffffff
                  lui          a4, 347449
                  sub          a4, a3, a4
                  lui          s6, 829212
                  sub          s0, s4, a3
                  lui          a4, 322576
                  sub          t0, a3, a1
                  auipc        t6, 864432
                  sub          t6, a3, a4
                  nop
                  add          s4, a1, a3
                  auipc        a1, 916271
                  addi         a4, s4, 1777
                  addi         t0, t0, -633
                  lui          s4, 740648
                  nop
                  addi         a1, s4, -854
                  addi         t0, a3, 86
                  auipc        s0, 410737
                  add          s0, t5, t6 #end riscv_int_numeric_corner_stream_3
                  li           a3, 0x16c2c6ba #start riscv_int_numeric_corner_stream_5
                  li           a0, 0x0
                  li           s9, 0x80000000
                  li           ra, 0x80000000
                  li           a5, 0xef4a90f6
                  li           a4, 0x0
                  li           s1, 0x80000000
                  li           a7, 0xffffffff
                  li           s2, 0x80000000
                  li           t3, 0x83b663fe
                  auipc        a7, 687376
                  sub          s9, ra, s1
                  addi         s1, a5, -1340
                  auipc        s1, 243282
                  sub          ra, a0, a5
                  lui          ra, 205185
                  nop
                  nop
                  nop
                  sub          a5, s9, ra
                  addi         a5, a5, -1258
                  nop
                  nop
                  nop
                  addi         a4, s9, -394
                  sub          a3, s9, a3
                  sub          a5, s2, s9
                  sub          a5, a7, a0
                  add          s9, a7, s2
                  add          a3, s1, s2
                  add          t3, a4, s9
                  sub          a0, s2, s2
                  sub          ra, s1, t3
                  lui          s1, 568547 #end riscv_int_numeric_corner_stream_5
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           a6, 0x80000000
                  li           sp, 0xffffffff
                  li           s3, 0x0
                  li           s11, 0xea47b4ca
                  li           tp, 0x0
                  li           s0, 0x0
                  li           t0, 0xffffffff
                  li           s8, 0xffffffff
                  li           t2, 0xffffffff
                  add          sp, t0, a6
                  auipc        t0, 915310
                  addi         t0, s8, -976
                  lui          s3, 876907
                  lui          a1, 633067
                  nop
                  lui          t0, 691587
                  lui          a6, 1003988
                  addi         a1, s0, 800
                  lui          s11, 592377
                  lui          t2, 128111
                  nop
                  addi         t0, sp, 698
                  sub          t0, t2, s8
                  lui          a1, 219580
                  addi         a1, s11, -349
                  lui          t0, 330382
                  auipc        s0, 541597 #end riscv_int_numeric_corner_stream_14
                  li           s0, 0xbde6bca9 #start riscv_int_numeric_corner_stream_18
                  li           a7, 0xb80e496d
                  li           a5, 0xffffffff
                  li           ra, 0x429a4a0
                  li           sp, 0xffffffff
                  li           s5, 0x80000000
                  li           t1, 0x92d8c1be
                  li           t6, 0x30a8cc38
                  li           s8, 0x9b9c7520
                  li           s1, 0x94b22ee2
                  lui          s1, 47302
                  sub          s5, a7, sp
                  add          s0, a7, s8
                  nop
                  auipc        t6, 276268
                  lui          a5, 18888
                  lui          t6, 884560
                  add          a7, s5, sp
                  nop
                  addi         ra, s0, 1276
                  lui          a7, 215790
                  auipc        ra, 694627
                  sub          s5, s0, a7
                  auipc        t1, 212626
                  add          a5, a5, s8
                  sub          s1, t6, sp
                  sub          a5, s5, ra
                  sub          t1, s0, a7
                  sub          t6, s5, s1
                  auipc        a5, 573788
                  sub          s1, s1, s8
                  lui          a7, 36836
                  lui          s8, 449867
                  addi         s1, t6, 324
                  add          t1, a5, a5
                  auipc        ra, 848341
                  nop
                  sub          sp, a7, s0
                  sub          t1, t1, sp
                  lui          s1, 232543 #end riscv_int_numeric_corner_stream_18
                  li           tp, 0x10415239 #start riscv_int_numeric_corner_stream_0
                  li           a3, 0x80000000
                  li           a1, 0x80000000
                  li           t3, 0x80000000
                  li           s1, 0x0
                  li           ra, 0xf51f5d1a
                  li           t5, 0x0
                  li           t6, 0x0
                  li           a7, 0xffffffff
                  li           gp, 0x0
                  nop
                  lui          s1, 248735
                  lui          tp, 29763
                  lui          t3, 852108
                  auipc        a3, 677246
                  lui          a3, 398178
                  add          t6, tp, t5
                  nop
                  lui          ra, 541713
                  nop
                  addi         tp, t3, 317
                  sub          a1, a1, tp
                  addi         a1, t5, -107
                  lui          ra, 284293
                  auipc        ra, 188755
                  add          a1, t6, t3
                  lui          a7, 301347
                  sub          t5, s1, a7
                  add          a1, tp, t5
                  nop
                  sub          a7, t3, s1
                  sub          tp, a7, tp
                  add          tp, ra, tp
                  add          ra, t3, ra
                  addi         t3, a7, 58
                  auipc        ra, 725575
                  nop
                  add          t5, t3, s1
                  lui          a1, 11826
                  auipc        t3, 393821 #end riscv_int_numeric_corner_stream_0
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s6, 0x0
                  li           gp, 0xe84c1288
                  li           s9, 0xc327282b
                  li           s8, 0x0
                  li           tp, 0x80000000
                  li           t5, 0xffffffff
                  li           a1, 0x80000000
                  li           s11, 0xffffffff
                  li           s0, 0x0
                  nop
                  sub          s8, gp, s8
                  add          s0, s9, s9
                  lui          gp, 350794
                  auipc        tp, 321507
                  nop
                  add          s9, s11, s9
                  add          s9, s11, t5
                  addi         gp, tp, 255
                  add          tp, s0, s9
                  add          gp, tp, a1
                  nop
                  sub          t5, s9, s6
                  nop
                  nop
                  nop
                  add          s8, s9, t2 #end riscv_int_numeric_corner_stream_17
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           t2, 0x0
                  li           s5, 0xffffffff
                  li           a7, 0xc1ac9bc3
                  li           s7, 0xffffffff
                  li           a3, 0xffffffff
                  li           s0, 0x8eb2d49c
                  li           a0, 0xffffffff
                  li           s4, 0x0
                  li           t1, 0xde10f43d
                  auipc        s7, 863249
                  lui          a0, 68527
                  add          s0, a1, s0
                  sub          s4, a0, s5
                  sub          a3, a3, a3
                  auipc        t1, 814159
                  auipc        t1, 718712
                  addi         a1, t2, 1738
                  add          a1, a1, s5
                  add          a7, t2, a3
                  sub          s0, s4, s5
                  auipc        a3, 576715
                  nop
                  add          t2, a7, t2
                  add          t2, a3, a3
                  sub          a3, a3, a7
                  lui          s5, 977364
                  lui          a7, 526183
                  add          a3, a1, s0
                  lui          t2, 754730
                  add          s5, s0, s7
                  addi         a0, s5, -936
                  auipc        a0, 95861
                  lui          a3, 343533
                  lui          s4, 186896
                  auipc        a7, 213970 #end riscv_int_numeric_corner_stream_16
                  add          a1, t4, a0
                  slli         a7, sp, 0
                  or           s7, t0, t1
                  sub          s7, t3, s8
                  lui          sp, 771413
                  add          a4, a1, t1
                  ori          a0, a0, -581
                  slt          t0, a7, a2
                  slt          gp, a7, gp
                  auipc        s3, 1004640
                  ori          a7, t5, 1447
                  srli         s8, tp, 22
                  andi         s5, t1, -1230
                  slli         tp, t1, 28
                  slli         a1, s5, 3
                  add          t0, t2, a7
                  sra          a4, tp, s7
                  nop
                  add          s1, ra, t3
                  srl          t0, s9, a5
                  lui          a1, 425871
                  lui          s3, 676942
                  and          a6, s4, t1
                  or           a0, a4, t4
                  sltu         s1, a0, s6
                  sltiu        s3, a7, 478
                  ori          t5, t0, -1288
                  ori          tp, zero, -1959
                  ori          t0, sp, 1400
                  sll          s2, gp, s7
                  or           sp, t0, sp
                  slli         a3, s10, 27
                  andi         a4, s5, 921
                  sub          t3, a4, s1
                  and          zero, t2, a2
                  sltiu        a0, sp, -290
                  slli         t6, a1, 20
                  slt          s9, s10, a5
                  or           s1, a2, a4
                  slt          s3, gp, t4
                  or           a3, ra, s11
                  xor          sp, a6, sp
                  srl          gp, a1, a2
                  slti         t6, sp, 936
                  sltu         s8, a1, tp
                  or           t6, s7, a2
                  and          t2, t2, s4
                  add          a3, a3, s5
                  add          s8, s9, t0
                  lui          a5, 726413
                  andi         a4, s0, -1873
                  sub          s5, t3, a7
                  sll          s0, a2, a4
                  slli         s6, s8, 1
                  addi         s3, t5, 3
                  and          s8, t1, t2
                  auipc        s3, 379644
                  slli         s4, t4, 3
                  or           s11, t2, gp
                  add          a7, t4, s0
                  sltiu        t0, s11, 1122
                  or           a4, s4, s1
                  sltu         tp, s8, t4
                  xor          s8, a7, ra
                  slli         t5, a0, 18
                  add          s4, a0, a4
                  nop
                  addi         t2, ra, -1880
                  srai         a0, s5, 4
                  slli         t6, ra, 6
                  sll          s3, s10, s6
                  slti         s6, s8, -8
                  and          t3, gp, a7
                  xori         ra, t6, -1415
                  nop
                  sll          a7, a4, a6
                  andi         t1, ra, 1643
                  slti         t6, a1, 938
                  lui          a5, 536790
                  xor          s11, tp, t1
                  slt          t1, t3, t4
                  auipc        tp, 58222
                  slti         gp, s4, 1301
                  nop
                  xori         t1, tp, -1123
                  slt          a3, t1, a5
                  addi         s1, s7, -1084
                  andi         s2, s7, 1663
                  or           s3, a6, s11
                  addi         a0, s6, 621
                  add          a3, a7, t3
                  or           s11, s8, s3
                  slti         t6, a5, 1320
                  sra          s0, s7, a3
                  sltiu        a6, s0, -919
                  srli         s2, a7, 11
                  nop
                  sub          a6, s1, ra
                  and          s4, t6, ra
                  ori          t2, a4, 675
                  sll          a6, s8, t2
                  auipc        a5, 386909
                  nop
                  ori          a7, t2, -162
                  addi         s9, s1, 927
                  sub          sp, a7, s9
                  nop
                  or           s1, s11, a7
                  and          s9, s10, t3
                  srli         t1, a4, 2
                  sra          t0, a6, t0
                  sra          s9, sp, gp
                  nop
                  slti         t1, zero, -1901
                  xori         s1, s10, 208
                  sra          s7, s9, s11
                  auipc        tp, 886090
                  srai         t1, a5, 30
                  addi         a0, t3, -1543
                  and          t3, t2, s1
                  nop
                  lui          t3, 358835
                  xor          s8, t4, s6
                  sltiu        s3, gp, -1427
                  add          t2, t4, s7
                  andi         s1, sp, 1186
                  slt          s7, sp, s6
                  sll          s1, a0, a0
                  sub          t5, t3, s7
                  addi         t1, a7, -1029
                  slli         a0, s9, 14
                  slli         a5, t5, 11
                  or           s9, a5, a6
                  ori          s5, s11, -772
                  ori          gp, s11, -294
                  slli         tp, t1, 4
                  srli         a5, s6, 23
                  srli         a1, a5, 28
                  nop
                  sltu         s3, s10, s2
                  ori          s8, ra, -543
                  xor          a0, s7, t3
                  sltiu        s0, t1, -743
                  auipc        t6, 146812
                  andi         s9, a3, 1137
                  srl          a7, s11, sp
                  sltiu        a3, ra, 2009
                  slli         t5, t0, 24
                  nop
                  xor          a1, s3, s4
                  or           s11, a4, zero
                  sra          t3, a3, gp
                  slt          s2, t6, t4
                  and          t6, a4, a2
                  sub          a3, sp, a3
                  slli         zero, t2, 15
                  slti         t1, gp, 1782
                  add          a5, t6, zero
                  addi         t0, tp, -1658
                  lui          s5, 944608
                  sll          zero, t5, s9
                  slti         a6, s1, 787
                  add          a4, s10, s2
                  sub          a4, t3, gp
                  nop
                  addi         s9, s9, -110
                  xor          a6, a2, s3
                  sra          sp, s8, a5
                  srli         s8, a6, 10
                  srli         sp, zero, 24
                  slt          s6, a5, a7
                  slli         a7, t6, 15
                  slt          s11, t0, a3
                  srai         tp, t4, 27
                  auipc        zero, 410563
                  sub          s4, s11, t0
                  auipc        tp, 488434
                  sltu         t1, s11, a0
                  or           zero, s5, a4
                  sltiu        s1, ra, -658
                  addi         gp, t2, -1648
                  srai         a5, s1, 9
                  sra          gp, s5, a2
                  add          a4, s3, tp
                  auipc        s7, 234349
                  xor          t1, t2, sp
                  or           a5, zero, t5
                  add          t3, zero, a6
                  slti         t5, t4, 1771
                  slti         gp, s1, 1286
                  andi         a0, a3, 1
                  nop
                  and          s1, s10, t5
                  sra          s9, t4, s5
                  srli         a4, tp, 2
                  lui          s11, 661934
                  sltu         gp, sp, a6
                  sub          t1, gp, s6
                  sltu         t0, s9, a0
                  srli         a7, sp, 7
                  slti         a3, t6, -499
                  xori         gp, s5, 650
                  sltiu        s2, t3, 1490
                  ori          t3, t4, 521
                  slt          a7, s4, a2
                  slti         tp, t2, 707
                  xori         t6, t2, 1056
                  sltu         s4, s9, t6
                  add          a0, a0, s11
                  slt          t1, t1, a2
                  sltu         a7, s10, a6
                  slti         sp, ra, -975
                  andi         s3, s7, -1376
                  srl          s8, ra, t1
                  sltiu        t2, s0, -1295
                  auipc        s11, 123517
                  sra          a3, a2, gp
                  add          a6, a6, a1
                  auipc        s5, 567842
                  add          s9, t2, a6
                  xori         a6, a6, -9
                  srli         s7, s3, 14
                  andi         t0, s8, -1002
                  sltiu        sp, s9, -308
                  sltiu        a3, t6, -815
                  or           a1, s2, ra
                  ori          sp, t0, -164
                  nop
                  sub          a7, s10, s8
                  srli         a6, ra, 14
                  sltiu        s5, a7, 1498
                  auipc        s4, 498948
                  srli         a0, s2, 6
                  auipc        s8, 69993
                  sub          a1, a1, s5
                  srai         sp, t6, 23
                  nop
                  slt          s0, t5, tp
                  auipc        t0, 353812
                  sll          t1, a3, s0
                  or           a5, t3, ra
                  srl          a7, zero, s9
                  auipc        a4, 68804
                  slt          s2, tp, t4
                  sub          s0, s3, a1
                  xor          a4, ra, s5
                  or           a6, t0, s0
                  auipc        s9, 11706
                  add          tp, t0, s8
                  nop
                  srl          s8, gp, zero
                  ori          s2, a0, 705
                  and          s1, s4, ra
                  or           gp, t1, a0
                  sll          sp, t3, tp
                  auipc        s7, 140815
                  srl          a6, s3, a1
                  slti         s1, s0, -900
                  slt          s11, t0, tp
                  srl          s5, s2, t1
                  sltu         s9, a6, a4
                  nop
                  sra          a3, t6, s2
                  srai         zero, zero, 10
                  or           a1, s4, t6
                  slti         zero, s6, -1705
                  slti         tp, s0, 468
                  sll          gp, tp, a4
                  andi         s4, a0, -27
                  srl          s7, ra, gp
                  nop
                  and          s9, sp, s0
                  lui          ra, 789158
                  srl          a5, a3, zero
                  ori          zero, tp, 791
                  slt          t5, t4, s11
                  xori         t6, s4, 1515
                  lui          sp, 368306
                  xori         s0, s5, -955
                  addi         tp, s11, 143
                  srli         a4, t6, 31
                  or           a5, s8, a4
                  lui          t1, 964473
                  add          a0, a0, s8
                  slti         t2, t2, -880
                  sltiu        s8, s9, -1809
                  addi         s1, a5, -1413
                  slt          a6, a6, s2
                  add          s3, a5, t0
                  and          t0, s1, s1
                  andi         a1, ra, 1715
                  slli         t0, a0, 4
                  srl          a6, s7, a7
                  and          gp, tp, a7
                  srai         s11, s9, 10
                  or           t2, t0, t0
                  lui          s5, 800479
                  xor          s1, t1, gp
                  xori         a4, a5, 557
                  addi         s5, sp, -380
                  lui          s2, 1015491
                  sltu         a4, a5, s6
                  ori          s11, t4, -1644
                  or           a7, a3, t1
                  sltu         zero, s3, gp
                  sra          s3, s3, zero
                  sll          s0, s8, s9
                  sub          a4, t5, t4
                  xor          t6, a5, a1
                  ori          tp, s2, -604
                  auipc        a4, 606987
                  srai         sp, s6, 4
                  sra          s9, t0, a4
                  addi         tp, ra, 712
                  srl          ra, ra, s8
                  andi         zero, s3, -1685
                  srli         ra, t1, 2
                  nop
                  slt          zero, a4, s6
                  add          s5, tp, a0
                  srli         s2, s1, 25
                  sltu         tp, s4, a1
                  srl          t1, t3, s10
                  addi         a0, a1, 2011
                  ori          s0, ra, 1909
                  andi         s0, s1, 641
                  slti         a0, s11, 2001
                  lui          t6, 848801
                  addi         t6, a4, 895
                  xor          s6, s6, a6
                  slti         s1, s5, -1405
                  sll          t6, s7, a6
                  sltu         ra, a0, s8
                  slt          s5, a6, gp
                  xori         a5, a7, 878
                  slli         s6, t0, 27
                  srli         s4, s2, 10
                  lui          s1, 81924
                  srai         a1, a7, 9
                  slti         t5, a3, -1953
                  sll          t1, a7, s5
                  srai         a1, s11, 3
                  nop
                  slli         s9, tp, 0
                  sub          t3, t6, s11
                  ori          t5, a6, 789
                  slli         s1, zero, 14
                  add          s3, s0, a6
                  srli         s7, s1, 8
                  add          t1, s3, s1
                  xori         s8, a3, 570
                  ori          t2, zero, 1283
                  srli         a7, s0, 0
                  addi         a3, a3, 1369
                  srai         t2, t0, 11
                  srai         zero, s7, 10
                  and          s1, s2, s5
                  slt          s1, s11, t0
                  ori          a4, a6, 1285
                  add          t3, a5, s0
                  sltu         s9, gp, t1
                  or           t2, s6, a1
                  addi         s11, s6, 37
                  or           a0, s1, t4
                  sub          s8, s2, a3
                  ori          t0, a0, 125
                  sub          s5, s4, a6
                  sltu         a5, t2, s7
                  nop
                  slt          a3, s11, s11
                  slti         zero, tp, -1262
                  xor          s1, t2, a4
                  srli         t6, a2, 17
                  auipc        a0, 215089
                  srli         s2, ra, 8
                  sll          a6, s9, t1
                  xor          s0, t0, sp
                  sra          t0, t6, sp
                  add          s7, tp, s8
                  srai         s5, zero, 3
                  sltu         a1, s5, s10
                  xor          s7, a3, s7
                  andi         t3, s5, 1024
                  addi         s6, t2, -219
                  srai         t6, t2, 27
                  addi         t6, s6, -7
                  sub          t1, a2, s2
                  add          s1, sp, a6
                  sltu         s0, s4, s0
                  ori          s0, s9, 1296
                  and          sp, gp, t1
                  nop
                  srli         a4, a5, 26
                  nop
                  or           t6, t5, s6
                  addi         a0, s0, 546
                  andi         s7, s7, -1890
                  slti         a6, tp, -986
                  ori          ra, s6, 776
                  lui          t2, 141751
                  or           s3, a6, s8
                  nop
                  srl          s0, s2, a3
                  andi         a6, t4, -694
                  andi         t6, a5, 452
                  add          a5, t4, a6
                  andi         a4, s7, -598
                  slli         s6, t2, 29
                  slt          s5, a2, s9
                  slt          a5, s6, s0
                  sltu         a3, s3, a3
                  sltiu        t0, t3, -164
                  lui          s3, 865257
                  sra          t1, t3, a3
                  slt          t6, a4, zero
                  lui          t6, 700756
                  xor          s2, a0, a0
                  lui          a7, 672539
                  slli         s9, s0, 2
                  addi         a1, a3, 837
                  sll          a3, s9, ra
                  slt          a4, s8, a1
                  slli         s11, a4, 26
                  slti         t2, sp, -129
                  srli         t1, s1, 21
                  lui          tp, 895327
                  and          t3, a5, ra
                  slli         a4, s5, 27
                  sra          a1, t1, s9
                  and          s2, t1, t3
                  addi         s5, a5, 1967
                  sltu         t1, s3, sp
                  slli         zero, s4, 7
                  or           s6, s2, a7
                  add          t5, t6, s11
                  srli         ra, s10, 26
                  sub          zero, s6, a3
                  sltiu        s6, s5, -1694
                  srl          s5, a5, s1
                  slti         s5, a0, 1684
                  add          s0, t0, s8
                  sub          a4, t5, t5
                  sltiu        t5, s11, 560
                  slt          s4, a2, s10
                  auipc        s7, 757411
                  slt          ra, ra, s2
                  auipc        s6, 130878
                  xori         t2, t5, -140
                  xori         a1, t0, -1806
                  srai         t5, s3, 31
                  lui          a4, 144169
                  srl          tp, s11, a0
                  lui          s1, 267389
                  sltiu        t2, t4, 175
                  auipc        s11, 300909
                  addi         t3, a5, 300
                  srl          zero, t3, s11
                  xori         a7, s2, 1718
                  srli         t2, t2, 24
                  addi         a5, s0, 667
                  slti         t5, zero, 520
                  xori         s9, s10, 1898
                  sra          t6, s10, tp
                  ori          a5, s9, 1421
                  srl          a1, a7, ra
                  nop
                  sltu         t5, s4, s1
                  addi         a7, zero, 286
                  srai         a5, s1, 15
                  andi         a1, s8, -1769
                  sra          a0, s11, t1
                  slti         s8, t4, 328
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           t0, 0x0
                  li           s3, 0x80000000
                  li           s1, 0xffffffff
                  li           a4, 0xffffffff
                  li           t5, 0x164bc303
                  li           a6, 0xb1aa1ca7
                  li           a3, 0xad8ce37c
                  li           s2, 0xffffffff
                  li           t3, 0x80000000
                  lui          s1, 858035
                  lui          s3, 623738
                  addi         s3, a3, -274
                  auipc        t5, 436618
                  auipc        a4, 990270
                  addi         t5, s5, 1793
                  lui          a4, 973424
                  add          s2, t3, s1
                  nop
                  lui          s5, 17788
                  auipc        s1, 827627
                  add          t3, t5, s2
                  auipc        s1, 129853
                  add          t5, s2, s2
                  lui          a6, 168008
                  sub          a6, a3, s1
                  lui          a4, 632045
                  addi         t5, t0, 273
                  add          s2, a6, a4
                  addi         s1, s1, 278
                  nop
                  lui          a6, 270449
                  nop
                  auipc        t5, 76180
                  addi         a4, a6, -1799
                  sub          t5, s2, t3 #end riscv_int_numeric_corner_stream_10
                  srl          t6, s3, a7
                  lui          s7, 573479
                  sltiu        s5, ra, -1899
                  slli         sp, t5, 4
                  slti         a5, gp, -597
                  xor          a1, s5, s0
                  slli         t1, a0, 27
                  add          ra, t6, zero
                  andi         a5, s2, -705
                  and          tp, t4, t4
                  srai         t0, s3, 12
                  srl          gp, a2, t6
                  sll          t6, ra, gp
                  xor          a6, t1, tp
                  srl          s3, t5, a6
                  addi         t0, s11, -1894
                  slli         s4, ra, 9
                  addi         s7, gp, 312
                  or           a7, t6, t3
                  slt          t3, s11, s10
                  xori         a7, ra, 1017
                  xori         t6, t3, 1076
                  sra          a3, zero, s9
                  sll          t3, s7, gp
                  srl          s3, s1, a7
                  slti         a6, t1, 892
                  srli         ra, s1, 9
                  lui          s0, 1023673
                  sub          tp, ra, a0
                  srl          s1, a4, s7
                  or           zero, sp, s4
                  sll          ra, t4, a1
                  slt          zero, a7, a1
                  srl          ra, s11, s8
                  sltu         s4, ra, s10
                  sltiu        s3, s0, 42
                  addi         s11, s7, 1481
                  ori          a7, a5, 863
                  slli         s6, s0, 26
                  and          s0, gp, t5
                  sll          s9, ra, a2
                  addi         a3, a7, 465
                  sll          s11, tp, a7
                  lui          s3, 459242
                  slti         s2, s7, -1878
                  add          a4, t2, s0
                  or           ra, t5, t6
                  and          s8, s5, a1
                  or           s7, s0, a2
                  andi         a4, a6, -197
                  xori         gp, ra, 1866
                  sll          s0, gp, t5
                  srl          s2, t1, s11
                  auipc        zero, 276884
                  sltu         s3, a5, a3
                  xor          s0, s4, zero
                  srli         a3, a6, 21
                  sub          a4, t6, s6
                  and          s5, t3, s10
                  lui          s0, 903805
                  sltiu        a1, a5, -1118
                  sll          t6, s5, s0
                  nop
                  sra          s3, t6, zero
                  auipc        s4, 602118
                  srl          s4, sp, s9
                  slti         t5, t4, 2013
                  srai         t2, s10, 10
                  and          s6, s5, s3
                  srl          s0, t1, s0
                  xor          a7, a4, a5
                  andi         s7, a0, -402
                  or           s7, a6, s6
                  ori          t5, zero, -361
                  sll          zero, s8, t4
                  sub          a1, s11, s4
                  add          t0, gp, tp
                  sra          gp, a2, t0
                  slti         s7, a5, -1593
                  slti         a0, s1, 314
                  andi         s11, a5, -260
                  xori         t1, t5, -1316
                  nop
                  andi         s11, t0, 649
                  slti         s2, gp, -852
                  auipc        t5, 821908
                  auipc        s11, 630815
                  xori         a6, t5, 337
                  addi         s11, s2, 1411
                  andi         gp, t2, -447
                  sll          gp, a5, a5
                  add          t2, t6, s0
                  sltiu        tp, s7, 361
                  slt          t3, s11, a5
                  sra          t1, t2, t4
                  auipc        t3, 262608
                  andi         a3, s4, -1862
                  add          a0, s6, t5
                  srli         a4, a0, 13
                  add          gp, a6, t6
                  slti         s11, t3, -470
                  sltu         t2, ra, zero
                  sltiu        t0, s2, 211
                  xori         t0, a3, 1130
                  andi         s6, a4, -1777
                  lui          gp, 480913
                  addi         t0, a4, 1831
                  lui          zero, 868338
                  and          t3, s6, t4
                  ori          a3, ra, 20
                  ori          s0, a1, -79
                  slli         a4, s5, 10
                  or           s6, s10, s6
                  add          s0, gp, a3
                  andi         a6, ra, 1816
                  srli         a7, a7, 22
                  nop
                  srl          s3, a5, a7
                  xor          a5, s5, a0
                  and          ra, a6, tp
                  srai         zero, t4, 11
                  ori          s8, tp, -1898
                  sltu         t1, a2, sp
                  xori         s3, s9, 617
                  srl          s8, t5, tp
                  xori         zero, s1, 1043
                  ori          t3, zero, 1876
                  slti         a3, a1, -742
                  xor          s3, s9, a0
                  or           a7, gp, s11
                  andi         a5, tp, -172
                  sll          s1, a6, a1
                  srl          s5, a5, s10
                  sltiu        a5, t3, 1652
                  sltiu        a4, s3, -249
                  ori          a6, gp, 1912
                  addi         a5, s5, -1075
                  sra          zero, a1, s8
                  slli         s6, t2, 19
                  sltu         s0, s9, s5
                  sll          t2, s6, ra
                  addi         t1, a6, 823
                  sltu         t6, t4, t2
                  srai         s8, a6, 1
                  sra          t2, gp, a0
                  sll          t5, a3, s6
                  auipc        s7, 542742
                  slt          t3, a5, t1
                  sltiu        t6, a4, 1014
                  ori          s6, s1, 1958
                  sltu         a1, a6, a4
                  slti         a1, s9, -1195
                  xor          t3, s0, s0
                  or           s0, ra, a7
                  andi         t0, s4, 1561
                  xori         t5, s6, -135
                  srai         s5, t2, 1
                  srai         s5, s9, 19
                  nop
                  andi         sp, a7, 42
                  sll          s6, t2, a7
                  srli         s9, s11, 28
                  addi         ra, a0, 913
                  ori          s2, t2, 130
                  sub          t6, a0, s5
                  auipc        s6, 437245
                  auipc        s2, 301956
                  ori          a1, s3, -1560
                  nop
                  auipc        s7, 143098
                  slli         s8, a2, 3
                  or           s8, t6, a2
                  slti         s1, a3, -14
                  xor          s2, t6, s3
                  srli         s8, sp, 24
                  srl          s3, s5, a6
                  xor          s9, s6, t5
                  sltu         a3, s11, a5
                  ori          sp, s9, -1331
                  auipc        ra, 1029447
                  addi         t3, s0, 515
                  sll          t6, t2, t6
                  sra          s8, a1, a2
                  sub          s9, gp, s11
                  nop
                  add          sp, t6, ra
                  srli         t5, a3, 10
                  or           t5, sp, a6
                  ori          s6, s3, 1491
                  ori          s9, a1, 758
                  srl          t3, a2, t5
                  and          s11, s4, a1
                  xori         s7, a1, 1840
                  sltiu        t0, tp, -1485
                  sltiu        t1, s5, 1379
                  lui          ra, 242780
                  and          s11, a0, ra
                  auipc        sp, 1012775
                  and          s1, sp, s9
                  sra          s8, a3, a2
                  addi         s0, tp, -622
                  sltu         t2, a6, t4
                  addi         t6, t3, 159
                  sub          s11, a7, s1
                  sltiu        a5, a2, -1493
                  slli         s4, s9, 20
                  sra          ra, tp, t2
                  or           s0, t4, s5
                  slti         t5, a2, -1695
                  auipc        s11, 628184
                  srli         s7, s3, 15
                  slli         s3, a7, 13
                  and          s4, t5, ra
                  add          a3, t0, a0
                  sub          s1, s7, s3
                  slti         s5, t6, -402
                  lui          t3, 22959
                  ori          t6, s1, 263
                  ori          tp, gp, -151
                  srai         a4, s11, 4
                  xor          ra, t2, zero
                  sltiu        a3, t6, 755
                  andi         t5, s7, 1179
                  auipc        s4, 857606
                  sra          s6, a0, t2
                  and          a1, t2, a5
                  or           t6, t5, s6
                  and          t2, s2, a4
                  slt          zero, s2, s5
                  srl          s1, t1, s9
                  auipc        t2, 35732
                  sra          ra, s0, t0
                  nop
                  slli         a7, a5, 30
                  slti         t3, a7, -1950
                  nop
                  sltu         t6, t1, s0
                  xor          ra, tp, s11
                  srli         a7, t0, 8
                  sra          t2, a6, t4
                  xori         t6, s10, 892
                  ori          t3, a4, 1592
                  add          t3, t6, a3
                  srl          tp, a3, a4
                  add          ra, a1, a3
                  andi         t5, a4, -537
                  slti         a4, t2, -715
                  add          t3, a3, s4
                  xori         tp, a5, -623
                  nop
                  srli         s0, s6, 22
                  slli         s1, s10, 18
                  slli         t3, a2, 27
                  srai         s2, zero, 27
                  srai         t6, s11, 17
                  sra          a4, s8, a4
                  sltiu        s3, s10, -1780
                  slli         zero, s2, 13
                  sub          a5, a0, s3
                  or           a1, a0, a1
                  srl          a4, t3, t3
                  addi         tp, a4, 840
                  srli         gp, s4, 12
                  sltiu        t5, s1, -1539
                  srli         a4, tp, 24
                  lui          t0, 836695
                  sll          gp, t5, t3
                  sub          s7, s1, s11
                  auipc        a0, 826926
                  andi         s9, s4, -806
                  andi         s8, a0, 1290
                  slli         s0, s4, 3
                  addi         a3, a0, -758
                  sltu         s9, a7, s0
                  xori         s3, s0, 1532
                  add          s1, s3, a4
                  srli         a1, t5, 19
                  slli         s0, gp, 8
                  auipc        t6, 668246
                  lui          tp, 140497
                  srli         s1, s3, 1
                  and          t3, t0, a3
                  slti         a6, s5, 940
                  slti         s4, a1, 1700
                  srai         a5, a0, 2
                  and          s6, a0, s6
                  or           a7, ra, s5
                  and          s2, s5, a7
                  nop
                  sll          s6, a2, s4
                  lui          a6, 672845
                  slt          zero, s4, gp
                  srli         s7, s3, 25
                  slti         t1, a1, -1748
                  slti         a3, s3, 515
                  slt          s11, t1, gp
                  add          s9, s2, t4
                  xor          t3, t1, ra
                  andi         gp, gp, -1815
                  add          s4, s8, s4
                  srl          s6, t1, gp
                  sltu         s6, t3, ra
                  andi         a6, a4, -1529
                  auipc        sp, 230454
                  slti         s5, t2, 2002
                  ori          t2, a3, -411
                  sll          s9, t6, a0
                  addi         zero, s1, -468
                  xor          a0, t5, s11
                  sltu         gp, t4, t1
                  andi         s8, s3, -1993
                  srl          s1, a0, t4
                  srli         tp, t0, 6
                  or           zero, a7, sp
                  sltiu        s0, t4, -1868
                  slti         a7, a3, -1936
                  slti         t2, s7, -932
                  xori         t1, t0, -5
                  sltiu        s7, s10, -571
                  sub          s2, tp, t2
                  andi         t2, s2, -1471
                  ori          s9, s7, -1219
                  andi         s7, t6, -1360
                  xori         t3, s8, -1728
                  ori          tp, t3, 1660
                  lui          s11, 650907
                  sltiu        a0, sp, -1848
                  slt          t5, t2, t1
                  auipc        a3, 27552
                  sll          s1, s5, s7
                  and          t0, gp, t3
                  nop
                  or           s2, a3, a1
                  slli         t3, s10, 31
                  sltiu        gp, t5, 898
                  add          a6, zero, s4
                  sltu         a6, t0, ra
                  add          tp, zero, sp
                  andi         s7, s7, -734
                  ori          sp, s3, -134
                  sltu         s8, s1, s2
                  sll          t0, t4, s0
                  slli         t0, a0, 14
                  srli         a6, sp, 3
                  add          zero, s1, s1
                  sltiu        ra, t5, 807
                  sra          s9, s2, a1
                  sltiu        s0, s11, 1654
                  ori          s2, gp, -905
                  and          a0, s1, a2
                  slti         zero, a3, 638
                  nop
                  sub          s9, t5, s10
                  sra          sp, s5, s7
                  slti         t2, s8, 1770
                  srai         ra, a2, 8
                  auipc        s0, 116951
                  srl          sp, s7, t0
                  addi         s4, s0, 881
                  slti         a1, t6, -1755
                  slli         t1, t0, 30
                  ori          s1, a3, 229
                  sub          s4, a3, s8
                  sra          gp, s7, a2
                  xor          t5, s0, tp
                  slt          a4, zero, a5
                  xor          s9, s8, tp
                  srai         a5, gp, 27
                  srli         s0, t0, 13
                  sll          s11, a2, gp
                  lui          t2, 172109
                  xori         gp, s1, 169
                  nop
                  auipc        s4, 789087
                  slli         t0, s2, 11
                  srli         t3, s2, 18
                  nop
                  srl          t1, s4, a0
                  sltu         s6, t5, ra
                  sra          t0, ra, a0
                  xori         sp, t1, 932
                  lui          s1, 122085
                  and          s0, tp, sp
                  xori         t5, a0, -510
                  sltu         t2, t0, s2
                  srai         s9, s2, 9
                  sra          s2, ra, s9
                  andi         a5, a3, -1562
                  srai         t1, t2, 4
                  xor          s6, a5, a7
                  slli         a1, a7, 27
                  srli         s9, tp, 9
                  sll          a4, tp, s10
                  or           gp, a4, gp
                  srl          s9, s6, t2
                  and          s9, a2, s11
                  slt          a7, tp, s7
                  srai         tp, t2, 29
                  srl          a5, s6, t1
                  xor          s1, s5, ra
                  srai         t6, a6, 10
                  and          t1, s10, s0
                  sub          tp, s7, sp
                  nop
                  lui          s0, 181895
                  andi         a3, tp, -1931
                  slt          sp, a0, zero
                  xori         t1, s0, 1073
                  addi         a6, s3, 1646
                  sll          t1, a3, t4
                  xor          a3, s1, s5
                  srl          s3, s9, t4
                  sub          a1, t6, ra
                  sra          t1, zero, s0
                  andi         tp, t0, -1103
                  xor          a0, s3, t2
                  addi         s4, s2, -44
                  sll          s0, s10, zero
                  ori          a3, a3, -1842
                  auipc        zero, 116484
                  addi         t2, s5, -1623
                  sll          a4, t2, t4
                  xori         t6, s2, -1330
                  ori          s0, a7, 1023
                  and          s9, a3, sp
                  slt          ra, a4, a7
                  slt          s4, a2, s8
                  auipc        t6, 125265
                  nop
                  or           a1, t4, s7
                  xori         s8, s6, -2008
                  addi         t2, t1, 321
                  sltiu        t1, s11, 383
                  auipc        t1, 369690
                  xor          sp, t6, a6
                  slli         a5, s5, 0
                  add          s9, a0, a3
                  slli         t3, s8, 31
                  lui          a7, 193735
                  slt          s2, s3, a0
                  nop
                  xor          s7, t2, t2
                  srl          a3, s7, s5
                  xor          s11, a0, a5
                  and          t0, t2, s0
                  sltiu        a5, s6, -710
                  lui          gp, 886231
                  slt          s8, sp, t6
                  slti         s2, s11, -1574
                  sll          s8, a4, a1
                  sub          t2, s1, s1
                  slti         t1, s11, 889
                  lui          a1, 693420
                  sll          zero, a1, zero
                  auipc        s4, 389508
                  srl          gp, zero, s6
                  sll          tp, ra, t1
                  srli         a7, s3, 31
                  sltu         a7, a1, a3
                  sub          t6, tp, s5
                  sll          t0, s10, t4
                  slt          s6, a7, a0
                  auipc        a4, 302554
                  srli         gp, a2, 26
                  nop
                  add          s6, a3, s3
                  nop
                  sra          s9, a5, s0
                  xori         s1, t5, -525
                  xor          s8, s1, tp
                  slti         s6, gp, 454
                  lui          t5, 630869
                  nop
                  xori         tp, t2, -1336
                  srai         s9, t0, 14
                  srli         a1, a1, 5
                  xor          zero, t4, s0
                  add          s2, a1, s1
                  ori          s5, t0, 1788
                  andi         t3, s2, 916
                  or           t3, a5, s11
                  xor          ra, a2, a2
                  andi         gp, a3, -1933
                  ori          s9, a3, -363
                  xor          sp, zero, t4
                  xori         zero, s1, -408
                  add          tp, s4, s8
                  sltu         s3, a2, a1
                  andi         s2, zero, 1994
                  slli         a0, s1, 12
                  srai         gp, sp, 5
                  lui          a7, 848398
                  sltiu        sp, s6, -1167
                  sra          a3, s7, s8
                  or           s7, s2, s4
                  sltiu        s5, ra, 159
                  addi         tp, t4, -1166
                  or           s2, t6, s9
                  xor          gp, t2, a6
                  slli         gp, a6, 21
                  sll          zero, s7, t5
                  sltu         tp, a3, s8
                  srli         a3, a5, 15
                  srai         t2, s8, 30
                  andi         ra, a3, 1686
                  slti         a0, s10, 530
                  srl          a0, t0, s7
                  srli         s1, a5, 0
                  ori          t1, s10, -1103
                  sll          s7, t6, a7
                  sll          s7, t4, t2
                  lui          a6, 132588
                  and          s5, s7, sp
                  auipc        s2, 124723
                  addi         ra, s0, -983
                  sltiu        s6, s10, -720
                  srli         s9, a0, 28
                  lui          sp, 369049
                  srli         tp, t4, 11
                  sll          t2, a5, a0
                  addi         t3, s7, 70
                  and          s7, t4, t3
                  sltiu        zero, s7, -448
                  auipc        tp, 438619
                  addi         s5, t5, 681
                  srl          gp, s2, s7
                  sltu         a0, t2, s0
                  add          a0, s11, gp
                  xor          s0, s1, a7
                  addi         a6, s6, 774
                  slt          s5, a6, t6
                  ori          a4, s3, 1931
                  sltu         a4, s1, s0
                  sltiu        s5, s8, 1111
                  sll          s0, ra, t5
                  nop
                  addi         a0, a0, 491
                  srl          a1, tp, a5
                  sll          s11, t2, t1
                  srl          t2, t5, t6
                  slti         a5, s6, 1962
                  srai         s11, t0, 1
                  sltu         s8, sp, s11
                  sll          a3, a4, s4
                  auipc        t5, 505330
                  addi         s1, s4, -141
                  srai         t0, a1, 8
                  addi         s1, ra, 1368
                  xor          t6, a5, s2
                  slli         s8, t0, 12
                  xori         ra, t4, -554
                  nop
                  slt          tp, s8, s4
                  srai         a5, s9, 3
                  xor          s8, tp, t5
                  auipc        s2, 1021641
                  sub          a3, a0, t2
                  slti         s0, a5, -1609
                  addi         t0, s10, 1449
                  sub          tp, a2, t3
                  or           s5, a7, ra
                  xor          t3, a6, s1
                  or           a0, sp, s1
                  xori         a4, t3, -909
                  sub          a1, a7, ra
                  xori         t6, t0, -284
                  xor          s3, t6, t2
                  srl          s9, t1, a0
                  sltu         a4, a0, a0
                  nop
                  addi         sp, s1, 650
                  slti         a7, sp, -533
                  ori          s11, a4, 1444
                  or           s9, s2, t1
                  sra          s4, s8, a4
                  andi         s7, a4, -819
                  slti         a6, zero, 1963
                  add          s5, ra, ra
                  sll          tp, t0, s1
                  sra          a5, s10, zero
                  add          t0, zero, ra
                  sll          gp, t3, s7
                  srai         s2, s2, 26
                  srl          a3, s10, s4
                  sll          a0, ra, s4
                  andi         ra, zero, 936
                  lui          t6, 184520
                  srli         s2, t2, 5
                  add          t5, s7, t6
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s6, 0xffffffff
                  li           a6, 0x26ec2fe
                  li           s0, 0x18a35be1
                  li           t2, 0x0
                  li           a0, 0x0
                  li           s7, 0x0
                  li           t5, 0x80000000
                  li           t6, 0x0
                  li           s4, 0x1d59d4e
                  lui          s8, 40979
                  sub          a0, s4, s0
                  nop
                  add          t2, t2, t2
                  addi         s8, t5, 166
                  add          s6, a0, s8
                  addi         s7, t5, 2047
                  add          a6, a0, a6
                  auipc        s7, 217754
                  addi         s4, a6, 966
                  sub          t2, s7, s0
                  add          s4, s0, s4
                  lui          t6, 345669
                  auipc        s7, 614109
                  auipc        s6, 478946
                  add          a0, s8, a6
                  add          t5, s4, s4
                  lui          s8, 395123
                  lui          s7, 996737
                  lui          a0, 363834
                  sub          a0, a0, a6
                  lui          a0, 881446
                  nop
                  addi         s7, t5, -1929 #end riscv_int_numeric_corner_stream_6
                  xori         a1, s8, 2042
                  srl          sp, t1, tp
                  slt          s6, t2, a1
                  addi         t6, sp, -661
                  addi         s3, a6, 1081
                  xor          ra, t6, a4
                  andi         sp, s7, 982
                  sltu         tp, zero, t1
                  and          ra, t6, t4
                  auipc        s11, 1026952
                  sra          a3, s5, a2
                  srai         t1, s3, 28
                  xori         s0, a4, 1170
                  slti         s6, sp, -465
                  and          a4, tp, a4
                  auipc        gp, 335679
                  slti         tp, ra, 1276
                  sll          s5, t4, s9
                  auipc        gp, 398485
                  or           gp, s0, t1
                  slt          s3, t4, a3
                  slt          s6, a0, s9
                  add          s11, s4, sp
                  srl          a6, gp, s7
                  addi         a6, s5, -1214
                  slli         s1, s8, 3
                  sltu         a4, s10, t3
                  andi         s5, a3, 1290
                  or           a1, a1, s10
                  srli         s11, ra, 17
                  srai         s8, gp, 17
                  sub          t5, s6, s11
                  or           t6, s0, a5
                  slt          a7, a3, s11
                  auipc        t2, 13797
                  srai         zero, s5, 0
                  sltu         s7, s3, s4
                  slti         t5, tp, 1693
                  sltu         s5, s1, s2
                  srl          tp, t0, t4
                  or           s2, zero, s4
                  add          s11, a4, t1
                  or           t3, s10, s8
                  sltu         t1, s9, s11
                  nop
                  slti         t1, a4, -1694
                  sll          s8, t6, t2
                  sra          s6, a6, s0
                  sra          sp, zero, s4
                  srai         a6, sp, 4
                  or           t1, ra, s10
                  auipc        t3, 110208
                  nop
                  slt          tp, t6, a5
                  srai         zero, tp, 15
                  addi         t6, s6, 1904
                  lui          a6, 913233
                  slt          t5, s5, s6
                  slti         s4, t6, 1500
                  sll          s9, ra, zero
                  andi         s5, s2, 75
                  addi         a1, t6, -1806
                  sltu         t3, a3, t6
                  srai         ra, s4, 27
                  sub          s4, s3, s5
                  srai         s1, t2, 15
                  sll          t6, t4, a1
                  sltu         gp, a7, s9
                  nop
                  sub          a6, a4, zero
                  slt          s2, t6, s3
                  slti         s0, gp, 357
                  addi         a0, a6, 1468
                  sra          s3, a2, s5
                  sltiu        t5, s4, -1718
                  addi         t2, s3, 543
                  sltu         sp, a5, s8
                  lui          s8, 772739
                  sltiu        a5, s1, 196
                  add          ra, s3, s4
                  nop
                  auipc        a1, 421310
                  andi         t2, s2, -30
                  addi         tp, a6, -1825
                  addi         t2, s8, 645
                  auipc        s9, 21129
                  add          a6, s6, a2
                  sltiu        a7, a0, 1084
                  xori         a7, t0, -1470
                  srai         ra, t5, 0
                  sub          a4, t0, s2
                  sltu         a5, t2, s9
                  sll          s5, t1, a4
                  sll          s2, s7, t3
                  xori         s9, gp, -677
                  addi         s2, s9, -870
                  lui          t6, 277630
                  and          s4, ra, s6
                  slti         t2, s4, -639
                  sll          a3, a0, tp
                  lui          t1, 780178
                  addi         a5, a5, 1633
                  xor          a6, t5, s9
                  slt          s0, a6, t4
                  xori         ra, s3, 1371
                  slti         s11, s8, 39
                  srl          t1, a0, ra
                  sll          a6, s1, a4
                  srl          a3, s11, s0
                  xori         s3, s8, -1974
                  xori         a7, gp, 714
                  sll          t2, t0, a7
                  lui          a3, 793851
                  add          gp, t0, t4
                  srai         s9, s5, 12
                  xori         s7, s8, 381
                  slti         a6, tp, 285
                  or           gp, a3, a7
                  nop
                  addi         t1, gp, 1116
                  xori         a0, s3, 215
                  or           a7, a7, a3
                  srai         a3, a0, 17
                  srl          tp, zero, s8
                  nop
                  and          gp, s4, t4
                  srl          a5, s5, s0
                  auipc        gp, 889040
                  xor          t1, s1, t2
                  sll          s2, t4, s4
                  add          a0, a3, t4
                  sltu         t2, a7, a7
                  addi         a1, s4, -689
                  or           s0, a6, gp
                  slli         t6, s6, 30
                  and          s11, a6, a2
                  srai         a7, s11, 10
                  sltu         s3, a7, s2
                  addi         s2, gp, 285
                  slt          a7, a5, s7
                  srl          t6, a4, s1
                  sub          gp, s9, s3
                  slti         tp, t3, -1434
                  srli         t6, a7, 8
                  slli         s0, a1, 6
                  slli         t3, s10, 2
                  ori          sp, s2, -122
                  nop
                  sll          gp, s1, a1
                  slti         s7, t6, -236
                  srli         tp, s11, 15
                  add          t3, a2, zero
                  auipc        a6, 601358
                  ori          s9, zero, 1567
                  slti         a0, s9, 1149
                  sra          a4, t6, a6
                  xor          s2, s11, s10
                  sltiu        a3, s2, -820
                  andi         s0, gp, 1621
                  sub          t0, a3, a0
                  sltiu        a4, t2, 1598
                  sub          t6, t4, a5
                  add          t1, a4, ra
                  andi         tp, s4, 625
                  xor          t6, zero, s5
                  xor          t1, a6, t6
                  nop
                  andi         t5, a5, 929
                  nop
                  sub          t6, s7, a0
                  nop
                  sra          s3, a0, s10
                  xori         a4, s1, -1573
                  sltu         t5, t3, s0
                  sltu         a7, s10, t3
                  andi         a3, t1, -1678
                  xori         a6, a3, -1398
                  srli         s5, t2, 5
                  slli         s9, a1, 20
                  srl          zero, a5, t3
                  sll          a0, s4, s2
                  add          s0, s0, s0
                  sll          s9, gp, tp
                  srl          t0, s4, s10
                  slli         tp, a2, 11
                  slli         a6, a4, 16
                  addi         a0, t0, -540
                  slt          a6, s5, t2
                  sltiu        t3, t0, -859
                  slli         s0, t0, 29
                  srl          zero, s5, gp
                  slli         gp, ra, 20
                  lui          t5, 648789
                  slt          a7, t0, a0
                  addi         sp, t1, 1534
                  sll          s1, t5, s1
                  xori         a3, s4, -1607
                  sub          t0, s6, t0
                  sub          s8, a7, tp
                  slli         s0, s8, 21
                  sra          s1, t5, s0
                  ori          s2, s3, 298
                  slti         a6, a5, 2025
                  auipc        t3, 22762
                  addi         sp, a6, 937
                  and          tp, a7, s7
                  nop
                  slti         t5, s1, -586
                  slli         a3, s1, 1
                  add          t3, s2, t4
                  sll          s4, t3, a1
                  srl          a5, a6, a1
                  sltiu        s9, s8, -1542
                  sltiu        s2, t5, 545
                  and          sp, s11, a3
                  sltiu        s5, a2, -1589
                  add          t3, tp, t3
                  sltiu        sp, s7, -142
                  srl          a7, zero, t3
                  and          s7, t3, a5
                  auipc        zero, 100940
                  andi         s11, s5, -1018
                  srai         t2, a6, 5
                  srli         t5, t0, 9
                  sra          a7, s1, a5
                  xori         a0, a5, 157
                  andi         tp, s5, 1938
                  xor          t6, s5, s10
                  slt          ra, s1, a4
                  sub          t6, t2, s5
                  slti         a7, gp, 1748
                  auipc        t5, 867486
                  slti         t5, a0, -485
                  slli         s5, s4, 31
                  slti         a3, t5, 157
                  slt          a1, t0, a2
                  andi         s8, t1, 918
                  ori          a5, s11, -278
                  srai         a0, a5, 12
                  srai         t2, s0, 6
                  slli         ra, t3, 23
                  add          gp, s8, s4
                  srli         tp, t4, 8
                  sll          a0, s9, a1
                  slt          s9, a0, s9
                  slt          a0, a2, a3
                  sltiu        s6, t4, -969
                  slt          t1, ra, sp
                  or           t3, zero, a2
                  sub          a7, s2, t4
                  slti         s0, sp, 717
                  add          a7, t1, s0
                  sltiu        t2, s6, -1610
                  nop
                  srai         s0, t0, 30
                  srai         ra, t3, 31
                  addi         t1, a4, -1569
                  sub          tp, a5, s11
                  sltu         t5, a7, sp
                  nop
                  xori         a1, a3, 1438
                  slli         a5, t4, 20
                  addi         s5, t3, -2007
                  srai         s0, a6, 9
                  lui          a1, 53794
                  sra          t0, s2, ra
                  xor          t5, s7, a4
                  auipc        s11, 736650
                  or           t2, s8, a7
                  ori          ra, t6, 1579
                  srl          t6, s2, s6
                  sll          a4, s4, a4
                  srai         zero, a5, 24
                  sub          s6, ra, ra
                  xori         t5, a4, 1922
                  sll          a5, a4, a6
                  sub          t1, a2, zero
                  slti         t6, s4, 962
                  slli         t5, a7, 19
                  sll          a0, s0, sp
                  slt          s7, t4, s9
                  xori         s7, a3, 1384
                  sub          t3, a4, sp
                  or           s8, t4, ra
                  srl          s1, tp, a6
                  sra          s0, t6, s4
                  and          a7, s3, a5
                  lui          t0, 916797
                  slti         zero, s7, 1319
                  slt          a3, a5, t0
                  andi         s11, a5, 86
                  sra          a3, t5, a0
                  auipc        s6, 851534
                  andi         s4, a2, 1044
                  lui          a0, 655144
                  srl          a0, a3, s4
                  and          s2, s8, a5
                  ori          t5, s1, -1923
                  and          sp, tp, s5
                  sub          zero, a6, a4
                  slti         t3, t6, 336
                  ori          a7, t0, 126
                  lui          s2, 802731
                  srl          s0, a2, s7
                  sra          s2, t5, a6
                  nop
                  srl          a4, t1, a7
                  auipc        a1, 38396
                  lui          sp, 1013531
                  andi         a1, s5, 1988
                  xori         s6, s0, -50
                  auipc        a1, 927388
                  slti         s9, s4, 2032
                  auipc        t2, 447229
                  slti         a0, t0, 660
                  lui          a5, 671278
                  srai         s11, a1, 17
                  nop
                  slti         s4, ra, 1955
                  xor          t6, a5, s0
                  sltu         s6, t3, s10
                  ori          s1, s11, 1691
                  auipc        t1, 327899
                  or           s3, gp, s2
                  or           t6, sp, a5
                  xor          t2, s9, s5
                  sll          s3, s0, t5
                  add          t1, zero, s3
                  sltiu        s0, a4, -1626
                  srai         tp, s3, 21
                  add          t2, s0, s5
                  sra          s0, a3, s0
                  or           zero, a7, zero
                  ori          a4, s2, 281
                  sub          s5, s6, a6
                  addi         a6, t6, -1002
                  sub          s5, s7, s4
                  nop
                  slt          s6, a2, t5
                  srai         s5, a2, 30
                  slli         t1, a6, 21
                  auipc        s2, 294099
                  xori         s3, ra, 36
                  auipc        a0, 468443
                  and          t6, s0, a4
                  slt          s1, a5, t6
                  slti         t3, s4, 469
                  slt          s2, ra, s4
                  slti         s5, s9, 782
                  ori          gp, s0, 387
                  auipc        s5, 356929
                  sub          a7, a7, t3
                  srai         a3, a5, 20
                  srli         t2, s6, 14
                  andi         t5, s10, 153
                  ori          s1, a5, -1307
                  sll          t5, tp, s10
                  sltiu        a0, s1, -1413
                  xori         s7, s10, -574
                  sra          s11, t1, s6
                  sra          t3, s5, s5
                  srl          s1, s11, a3
                  lui          a7, 336951
                  srl          t6, s4, gp
                  add          ra, t6, a1
                  sub          s9, s7, a4
                  xor          t5, t5, a1
                  sub          s8, s6, sp
                  lui          s5, 876327
                  or           s0, t4, s1
                  slt          s7, s4, s2
                  nop
                  srli         a4, s3, 12
                  srl          s2, t3, a7
                  add          a1, s9, t6
                  xori         t0, a0, 597
                  xori         s2, t2, -539
                  srl          t0, s11, s5
                  addi         tp, a6, 960
                  slli         s11, s9, 1
                  add          s6, s0, a2
                  slti         s7, s8, -526
                  srli         a0, s3, 6
                  srai         zero, a4, 17
                  sltiu        a5, t4, -1532
                  xor          a0, t5, tp
                  or           s2, t4, t4
                  xori         s7, s0, 4
                  sra          a5, s10, t4
                  andi         sp, s4, 860
                  srai         t5, t6, 1
                  nop
                  srl          zero, t6, a6
                  auipc        s9, 440603
                  srai         a1, a1, 31
                  xori         gp, t6, 126
                  lui          s5, 796047
                  add          s8, t4, t4
                  ori          s6, s11, 591
                  slt          t3, a1, a5
                  sll          s8, t0, s6
                  slt          s1, a4, a3
                  slli         s5, t2, 25
                  xori         s1, a4, -1586
                  xori         a1, t1, -530
                  slt          s2, s6, t6
                  sltiu        a4, s2, 1345
                  add          a3, s4, s0
                  slli         a4, a6, 10
                  and          s0, s1, a7
                  sll          s0, s2, a5
                  auipc        gp, 823873
                  auipc        a3, 956241
                  sltiu        s11, s9, 2005
                  srai         s4, s9, 26
                  xori         s2, a5, 1763
                  slt          t2, s6, a2
                  or           gp, s10, a1
                  auipc        a0, 869332
                  sra          t0, t1, s11
                  slli         t3, s11, 1
                  slt          s11, a5, s2
                  srli         s0, t1, 31
                  sub          t6, t4, a6
                  srli         t3, t1, 12
                  lui          s1, 395739
                  srli         s3, tp, 23
                  and          zero, s6, t0
                  xori         s0, t3, 215
                  srai         tp, sp, 23
                  srl          ra, t5, a2
                  srl          s1, s6, a2
                  addi         s6, s8, 1536
                  addi         zero, s8, 536
                  add          s5, sp, a3
                  sub          a7, s0, a4
                  xor          s8, t0, s9
                  addi         gp, t6, -1304
                  or           s5, s9, t0
                  andi         a1, zero, 741
                  sub          s9, tp, t6
                  auipc        s4, 427858
                  sltu         s11, s10, t1
                  sub          s6, s0, a7
                  sra          s11, a6, a3
                  srl          t6, t2, a5
                  add          a6, sp, a5
                  sll          t6, s10, s9
                  srai         a6, t4, 9
                  srai         s8, a6, 28
                  sll          t0, s9, a6
                  nop
                  srai         s4, t0, 0
                  sltu         gp, a2, t4
                  srli         a1, a3, 0
                  xor          ra, s5, s9
                  slli         tp, ra, 17
                  slt          a0, t2, s1
                  xori         t6, s4, 977
                  xor          s1, s0, s7
                  sub          t3, a7, a2
                  add          t6, a6, s11
                  slli         tp, ra, 17
                  sra          t0, s7, s10
                  or           t1, s4, a7
                  addi         t6, ra, 927
                  slli         t3, tp, 21
                  slti         t2, a0, -625
                  and          tp, a6, a6
                  and          s0, t5, sp
                  lui          s9, 27025
                  andi         s2, a1, 28
                  auipc        a7, 808493
                  or           s1, s7, a0
                  srli         a1, s6, 24
                  srai         s5, s4, 11
                  ori          s3, a7, 306
                  or           sp, a5, a1
                  or           tp, a4, a4
                  srai         s4, s4, 24
                  slt          a7, s6, a5
                  sub          t1, s1, a7
                  srai         a5, ra, 8
                  auipc        t1, 454041
                  srl          s8, s7, t2
                  srl          a6, a4, s2
                  srli         s11, a2, 18
                  nop
                  slti         t1, s9, 1403
                  or           a0, tp, a4
                  andi         sp, t6, 1375
                  addi         a0, a0, 176
                  or           zero, a2, s10
                  slli         t6, s1, 11
                  xori         s5, s10, 528
                  addi         a4, tp, 174
                  sltu         s5, s7, s11
                  or           a3, s8, t2
                  sra          t2, s0, t3
                  nop
                  sltiu        a6, a4, -1401
                  sltiu        s4, s0, -667
                  xor          s9, s6, zero
                  xor          ra, t5, t5
                  nop
                  sll          a7, s10, s10
                  add          s7, s5, a5
                  sltu         s1, a5, t0
                  ori          t3, ra, -463
                  sltiu        t0, s7, -1703
                  lui          a0, 176154
                  srli         t3, s1, 0
                  nop
                  sub          a4, zero, ra
                  slli         sp, t5, 29
                  slli         s3, t2, 0
                  or           s0, s4, s4
                  sub          t2, a6, zero
                  add          t6, s6, s9
                  sltiu        s5, s0, -1473
                  xori         ra, a5, 1042
                  slt          s2, tp, s9
                  sra          t6, a2, zero
                  sub          s7, s2, s3
                  nop
                  sll          a7, tp, ra
                  slti         s2, a7, -1324
                  srl          sp, sp, s7
                  xor          a6, s3, s7
                  srai         a3, s8, 7
                  nop
                  srl          t6, a6, a6
                  srl          a1, s10, a6
                  sltu         a4, s8, s9
                  andi         s9, a0, -254
                  sltu         a4, ra, s9
                  sltu         t2, a2, a5
                  sra          s5, a3, ra
                  sra          s9, t5, a1
                  nop
                  and          s11, s3, a5
                  lui          s4, 35359
                  srai         a6, a1, 12
                  sub          s3, a2, s6
                  lui          a0, 605718
                  ori          gp, a5, 1454
                  sub          zero, a6, t1
                  slli         s0, tp, 17
                  slt          s3, s8, a4
                  ori          t5, t3, -856
                  or           sp, t6, s4
                  sltu         s1, a4, gp
                  add          zero, t5, t4
                  sltiu        s11, tp, 905
                  sltu         t0, a4, s0
                  sltu         t5, a0, s11
                  xori         a1, a4, -234
                  sltu         zero, a6, t3
                  srl          a7, s5, a6
                  sub          a7, s2, t3
                  lui          a4, 190242
                  xori         t2, zero, 1501
                  srai         s2, a5, 15
                  sub          s4, s7, t4
                  nop
                  srli         s7, s1, 22
                  add          a6, a3, s8
                  srai         a7, zero, 16
                  andi         t1, t6, 1861
                  or           s0, s11, a7
                  xori         t3, s3, -195
                  slti         s11, a6, -1630
                  sltu         a7, t3, s11
                  ori          s1, s0, 436
                  auipc        a4, 6770
                  xori         a5, s2, 233
                  sub          a0, t6, a0
                  srl          s0, s1, zero
                  xor          a5, s11, gp
                  sub          t1, zero, s10
                  add          s11, a2, a2
                  srli         t2, s2, 19
                  andi         t5, t4, 1669
                  slt          s8, s6, s11
                  srli         s7, s6, 31
                  srli         s4, a4, 9
                  sub          a4, s3, s2
                  srl          tp, s9, a0
                  sltu         s4, a6, zero
                  sltiu        a6, a2, 1616
                  addi         t0, s5, -1152
                  slli         t1, a7, 14
                  sltiu        s11, t0, 1152
                  sll          s8, a3, zero
                  sltu         gp, a0, t6
                  xori         t2, a6, -1961
                  add          a5, s9, t3
                  ori          t3, s0, -121
                  andi         zero, ra, 600
                  sltiu        gp, t2, 1508
                  andi         a6, ra, 446
                  or           a3, t6, s6
                  nop
                  slti         sp, a3, 266
                  andi         t6, t0, -967
                  sll          a0, s9, t3
                  srai         ra, s7, 9
                  addi         ra, t2, -891
                  sltu         t6, ra, a1
                  sll          s9, s2, t0
                  xor          sp, a5, a3
                  slti         a1, s8, -1571
                  sra          s2, s5, t4
                  xori         a3, s6, -2027
                  ori          tp, t0, -1536
                  slt          s11, a1, a0
                  lui          s1, 1009856
                  srl          tp, zero, a2
                  slti         ra, s1, -1220
                  sltu         s9, t4, a1
                  sltiu        a5, s11, -970
                  sltiu        a1, a7, 280
                  sltu         s11, t3, a6
                  srai         a0, s5, 27
                  srli         a1, a3, 11
                  srai         s9, s6, 31
                  sltiu        ra, s10, -544
                  srl          t6, a3, s4
                  slli         s11, t1, 9
                  auipc        t2, 328124
                  nop
                  xori         t5, a1, 1545
                  xor          a0, s9, s9
                  ori          t1, a2, 1485
                  slli         s6, t0, 26
                  nop
                  sltiu        a4, a7, 329
                  slti         s6, gp, 1014
                  ori          a1, t5, 940
                  addi         s8, zero, -974
                  nop
                  srl          a0, s11, a5
                  auipc        tp, 595441
                  slt          s0, t3, a3
                  or           tp, s0, sp
                  add          a3, a1, s1
                  xori         s5, zero, -1929
                  slti         t5, t3, 1386
                  auipc        s5, 605434
                  sltu         s6, s1, s4
                  and          s3, s9, a5
                  srl          t5, s8, tp
                  lui          s6, 602513
                  andi         s0, t0, 1636
                  srli         s1, t5, 25
                  sll          t2, s0, t4
                  xor          s5, t2, s11
                  xori         s4, t1, 202
                  xori         s6, s11, -604
                  andi         a6, s10, -749
                  or           t0, a3, s7
                  srli         s5, s7, 7
                  ori          s4, s11, 8
                  or           tp, t0, zero
                  or           s5, a7, t4
                  slt          a1, zero, a7
                  xor          s5, a0, s4
                  sra          t5, s1, t3
                  slt          t6, t5, s7
                  add          t2, s2, a2
                  and          s2, s1, s0
                  srl          s5, s11, s1
                  sub          s4, ra, t1
                  andi         s11, tp, -1620
                  sltiu        s5, s6, 1540
                  xori         s4, a2, -1925
                  srl          a3, a0, s5
                  sltu         s6, s1, gp
                  lui          tp, 151501
                  add          s6, gp, s11
                  xor          s8, s7, s0
                  auipc        a0, 668960
                  slli         t3, s11, 23
                  or           t5, s9, s3
                  slti         a6, s9, -1420
                  xori         ra, t3, 323
                  xor          s0, tp, s2
                  addi         a5, a2, -167
                  slt          t1, t3, t0
                  srli         t1, a4, 29
                  add          s2, s9, s3
                  xor          a7, t4, t6
                  addi         s2, s8, 1752
                  auipc        s3, 754769
                  slli         gp, a1, 13
                  addi         sp, s5, 1205
                  sub          a7, s0, t0
                  xor          gp, a7, s4
                  auipc        a6, 539067
                  xor          t0, zero, s1
                  slli         a4, a0, 29
                  slt          t5, sp, a3
                  addi         tp, a4, -449
                  ori          t5, a3, 604
                  sll          a1, s5, s4
                  srli         zero, s5, 13
                  slti         a0, s0, -1656
                  xor          s0, a7, t3
                  srl          a7, s9, a3
                  or           gp, tp, s3
                  addi         a1, a0, 271
                  xor          ra, t2, t6
                  slti         s1, s11, 867
                  slli         gp, s10, 25
                  sub          a5, s9, s1
                  srli         a5, s6, 4
                  sll          a5, s1, a0
                  srli         a5, tp, 26
                  ori          s3, a5, -592
                  sll          s9, s10, a5
                  sra          t5, s6, a6
                  auipc        zero, 135389
                  xor          a1, a1, a3
                  or           s11, t5, zero
                  sll          ra, s10, s3
                  nop
                  xor          sp, t3, sp
                  lui          a7, 692888
                  srai         s7, s11, 27
                  and          s8, a0, s2
                  addi         a5, a4, -392
                  add          sp, a3, ra
                  lui          gp, 171668
                  slli         a6, t0, 7
                  srl          s2, a1, s8
                  srli         zero, a0, 31
                  sltiu        t3, s7, 1130
                  xor          a1, s8, t2
                  nop
                  slti         a6, s9, -1781
                  slt          a1, a3, a0
                  srli         t6, s1, 12
                  slti         s6, s3, 1353
                  or           s6, s7, t2
                  or           s11, a3, a2
                  auipc        t5, 111372
                  sltiu        zero, s1, 2007
                  sltu         s11, s1, s6
                  auipc        t0, 215011
                  andi         a5, a3, 934
                  slt          a6, s11, s10
                  srli         s8, a0, 18
                  ori          ra, a7, 502
                  sll          s4, t5, a6
                  sll          tp, t0, t5
                  sub          t6, a2, t4
                  sltu         t5, a5, s7
                  lui          s8, 174383
                  srli         sp, a2, 20
                  add          s9, sp, s8
                  addi         t0, t6, -135
                  sra          s8, ra, ra
                  sra          s9, t2, a2
                  sra          a4, s2, t5
                  andi         a3, t2, -1435
                  slt          s7, s7, s0
                  srai         s7, t0, 31
                  andi         t6, a4, 1253
                  xori         s9, s8, 82
                  slt          t0, a6, s6
                  srai         t0, sp, 15
                  and          tp, a4, a4
                  sra          gp, s6, gp
                  lui          sp, 657148
                  addi         t6, a0, 1403
                  nop
                  srl          s9, zero, t2
                  addi         s11, s5, 455
                  srl          s6, s10, t4
                  add          t0, t0, t0
                  srai         a5, zero, 15
                  sra          t6, t3, t6
                  auipc        s2, 533709
                  addi         s0, s6, 1159
                  lui          s8, 125367
                  sub          t5, gp, t3
                  sll          s5, s3, a5
                  sll          t3, t1, s7
                  sub          s0, a4, a0
                  nop
                  lui          s4, 278799
                  andi         zero, s7, 1206
                  add          s8, a0, t3
                  nop
                  and          a7, s3, s1
                  sub          t5, ra, tp
                  addi         s3, t0, -1763
                  lui          s6, 657038
                  srl          a3, t1, a3
                  slti         a5, gp, -1534
                  sltiu        zero, ra, 640
                  nop
                  xor          a3, s3, s1
                  srai         sp, t4, 30
                  ori          s3, s2, 601
                  ori          a0, sp, -1033
                  xori         a5, a2, -621
                  nop
                  lui          a4, 18908
                  srl          t0, s11, t1
                  andi         t1, s0, 725
                  addi         t3, s5, -1153
                  slli         t0, s6, 9
                  sub          gp, s5, a1
                  sll          zero, s9, s1
                  lui          s4, 676795
                  ori          tp, a1, -901
                  add          t1, s10, sp
                  slti         tp, a1, 485
                  srai         s4, a2, 24
                  sll          s2, s1, zero
                  addi         s6, t5, -1084
                  xor          a4, s11, s5
                  slt          t3, s7, a3
                  slti         s2, t3, -1653
                  andi         a5, t3, 477
                  sll          s4, a0, t1
                  slti         ra, sp, -993
                  slli         s2, t0, 25
                  sll          a3, sp, a4
                  addi         sp, gp, -1553
                  srli         t6, a5, 18
                  addi         s8, a7, 812
                  srli         ra, ra, 31
                  ori          s7, t3, 1780
                  xor          s7, s5, s3
                  srai         a7, t3, 26
                  sra          s6, s4, s6
                  sll          s11, s6, t1
                  addi         s1, t1, -1972
                  slti         s7, s10, 1917
                  sra          s11, s9, a4
                  srli         a0, s9, 3
                  or           zero, s4, s9
                  andi         s11, ra, 1135
                  xor          s9, s11, s4
                  lui          s11, 610763
                  andi         t1, a4, -1672
                  slli         t5, t4, 15
                  sltiu        s2, t2, 116
                  sub          a7, t3, t5
                  addi         t0, t4, 1550
                  srai         a3, a5, 8
                  srai         s5, t5, 6
                  ori          ra, t5, 702
                  xor          s9, t3, a3
                  or           s11, a0, s1
                  srai         s9, s8, 17
                  auipc        a3, 802335
                  sll          s1, s11, a1
                  sra          s1, s3, a4
                  andi         zero, t4, 1506
                  xori         s6, s6, 1386
                  srl          t1, a2, t2
                  srli         a0, a3, 29
                  slt          s6, t2, sp
                  xor          t6, a4, t0
                  slli         zero, a4, 21
                  srai         ra, ra, 5
                  sub          ra, t1, a7
                  xori         a7, ra, 690
                  sub          a0, t0, a4
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           t3, 0xffffffff
                  li           s11, 0xffffffff
                  li           a4, 0x80000000
                  li           s1, 0x80000000
                  li           a5, 0xffffffff
                  li           a1, 0xa2173e67
                  li           t1, 0xfde87980
                  li           t2, 0x99721c76
                  li           s9, 0xd86a6c45
                  add          t2, s1, t3
                  auipc        a5, 8907
                  addi         t0, s11, 1090
                  nop
                  nop
                  sub          t2, s9, s11
                  auipc        a5, 89646
                  lui          a1, 664790
                  nop
                  sub          t0, t2, t0
                  add          a1, t2, t2
                  addi         s11, t1, 568
                  sub          t2, s11, t3
                  add          a5, a1, t3
                  addi         t3, s11, -1157
                  nop
                  auipc        s9, 865461 #end riscv_int_numeric_corner_stream_7
                  slti         a1, a2, -440
                  xor          t3, s0, s11
                  ori          s4, a1, -272
                  sra          s2, a5, a5
                  xori         tp, t1, -1559
                  srai         a1, gp, 17
                  sll          t3, t6, s1
                  sll          t1, a1, a0
                  slli         ra, zero, 6
                  slti         s9, s9, 1018
                  auipc        s6, 755618
                  or           t6, s2, zero
                  sltiu        a7, t5, -604
                  nop
                  srl          t2, t0, s2
                  xori         s0, s2, 1434
                  sltiu        t6, a7, -1683
                  addi         t5, a1, 1719
                  srli         t3, t5, 18
                  srai         s1, a0, 5
                  slt          t3, t2, t2
                  xori         a7, zero, 605
                  slti         t6, s2, 59
                  xor          s5, s8, s9
                  or           s2, s10, a2
                  sltiu        a5, s0, -66
                  srl          a4, s0, sp
                  and          t0, sp, s1
                  or           a7, s7, s7
                  slli         a4, t3, 7
                  slti         t2, s6, 763
                  slti         s11, t4, -704
                  sltiu        t3, t3, 368
                  sltu         a0, s4, a7
                  sub          a4, a7, a1
                  lui          a7, 779328
                  sltu         sp, s9, s1
                  add          sp, t2, a7
                  add          tp, s5, gp
                  srai         t0, zero, 26
                  addi         s1, a6, 1905
                  slli         a4, s11, 20
                  and          t3, s11, s2
                  lui          a1, 450545
                  xor          zero, s8, a1
                  slti         s8, zero, 1151
                  xori         s3, a5, 974
                  xor          a7, s3, s6
                  slli         s5, s8, 29
                  andi         t2, zero, -1261
                  andi         t6, gp, 200
                  sub          a7, tp, s7
                  nop
                  sra          a4, s2, s2
                  add          s7, sp, a0
                  srai         a1, s0, 25
                  lui          a5, 1008924
                  xor          s6, tp, s6
                  auipc        s7, 539356
                  slli         s2, t4, 23
                  auipc        s6, 413365
                  slli         s11, ra, 26
                  slli         s8, gp, 29
                  slli         s6, s3, 26
                  xor          gp, a5, a7
                  srai         s11, s6, 29
                  andi         t6, a2, -216
                  andi         s2, t4, -1921
                  or           s5, a2, s1
                  addi         s2, s10, 961
                  slli         s11, a4, 11
                  lui          a1, 836982
                  slli         tp, s10, 20
                  and          s8, gp, a7
                  lui          s3, 15047
                  srai         sp, t2, 18
                  sltu         sp, s5, a2
                  slti         sp, a1, -587
                  sltiu        s8, t4, 448
                  andi         s6, a6, -1359
                  lui          t2, 145770
                  addi         s3, s3, -659
                  sll          a4, t5, t1
                  slt          s0, s7, t5
                  slti         s7, tp, -1044
                  nop
                  add          s2, t3, a6
                  sra          s5, a0, s11
                  sltu         a5, s2, sp
                  lui          s3, 279946
                  srai         s2, s10, 18
                  sra          s3, s7, s9
                  srai         a0, s10, 14
                  nop
                  srl          s8, s7, s8
                  sltiu        s3, s9, 1227
                  or           t1, a6, a2
                  sltu         s0, s10, t4
                  addi         t2, t4, -1073
                  sltu         a3, s0, s3
                  auipc        s2, 932032
                  sltiu        s11, s10, 1714
                  ori          sp, t0, 882
                  nop
                  slt          s1, t4, t5
                  srl          tp, a1, s2
                  xor          a6, s10, a5
                  srai         s4, t1, 19
                  xori         t0, s2, 1039
                  lui          s5, 309546
                  slli         s5, ra, 28
                  lui          s3, 306892
                  auipc        t2, 612339
                  sltu         s5, tp, s4
                  xor          s8, sp, t0
                  lui          t2, 917400
                  srli         s0, t3, 14
                  sltiu        a5, t2, -240
                  nop
                  lui          t3, 799220
                  and          s6, a0, t5
                  sra          a0, t2, sp
                  srai         s4, a3, 9
                  andi         s9, zero, 584
                  nop
                  addi         tp, s10, -124
                  sltiu        a0, s7, 1594
                  srl          t3, a0, sp
                  sub          t0, t6, s0
                  lui          a6, 975255
                  addi         s7, gp, -111
                  srl          s11, a0, s3
                  slt          t1, t0, t4
                  sltiu        t5, t2, -1691
                  srai         a0, a1, 4
                  srl          t6, s2, a4
                  slt          s7, s5, a5
                  sub          s0, ra, a2
                  sltiu        s0, a5, -1642
                  slti         a7, zero, -1743
                  sltu         a0, zero, s10
                  sll          s8, s11, sp
                  sub          s4, t6, t3
                  slt          tp, a5, ra
                  sltu         a4, s4, a6
                  ori          gp, gp, 556
                  xori         a4, zero, 415
                  ori          s11, a5, -2002
                  slli         s3, a3, 24
                  lui          a7, 409028
                  srli         a6, t0, 16
                  sub          a3, s7, gp
                  srli         t0, a3, 9
                  sltiu        t2, a5, -1649
                  sltu         t0, s8, t3
                  xori         t3, a4, 1477
                  slti         s11, t0, 122
                  sra          a5, s10, s9
                  srli         t6, t3, 2
                  sltu         a1, s2, s4
                  sltu         a5, s7, a1
                  nop
                  nop
                  or           s6, a6, t0
                  sll          tp, s5, a4
                  sltu         a0, s5, s6
                  andi         s2, t4, -996
                  sltiu        sp, a2, 1733
                  add          t3, a7, a1
                  ori          t5, s3, 570
                  andi         a3, s4, 553
                  nop
                  sub          s1, s6, s1
                  sll          sp, s8, s4
                  nop
                  srli         zero, t6, 27
                  and          s3, s3, s9
                  or           zero, zero, a0
                  srli         s4, s5, 13
                  sub          gp, a2, a2
                  xori         t6, s9, 766
                  ori          t1, s6, 579
                  add          s7, s10, s3
                  sub          s5, s9, s0
                  srli         s3, t6, 18
                  sra          t6, a0, sp
                  or           s1, t0, s7
                  andi         a3, gp, 499
                  srl          t3, s10, a2
                  slt          s0, ra, s4
                  nop
                  xori         t0, s9, 460
                  add          tp, s9, t4
                  nop
                  srl          t3, s1, tp
                  sub          s11, t4, s9
                  add          gp, t3, ra
                  sub          s7, s2, s4
                  srl          a7, a7, t4
                  sltiu        s1, t4, -1541
                  auipc        t5, 631438
                  addi         a1, a7, 473
                  lui          t2, 849948
                  sub          a3, s1, gp
                  sll          s0, zero, t1
                  sltiu        ra, s9, 1415
                  slli         s2, t4, 11
                  slti         t1, s10, -424
                  ori          t2, a2, -579
                  srl          t1, t2, tp
                  nop
                  or           s11, gp, s6
                  andi         a0, a0, -742
                  addi         s1, s3, -1927
                  and          s4, zero, t4
                  slli         tp, t5, 2
                  sll          s6, t2, a2
                  sltiu        a7, s11, 923
                  lui          s11, 186807
                  srl          t1, a0, a3
                  xori         s2, s10, 1972
                  srli         t1, t1, 18
                  xori         s9, s3, 498
                  xor          a6, gp, s9
                  srli         gp, a0, 27
                  slli         t6, zero, 18
                  andi         t3, s2, -928
                  nop
                  srli         sp, s2, 22
                  sra          a5, s9, a7
                  or           a3, t3, sp
                  srli         t5, a6, 27
                  srl          t1, s9, t6
                  nop
                  sltiu        s1, a5, -1054
                  sub          a0, a7, a7
                  sltiu        s4, t6, -544
                  xor          a7, s6, s8
                  or           a5, a2, s4
                  slli         s3, t6, 14
                  or           a1, a5, t2
                  srli         t1, a5, 17
                  and          s3, s6, a0
                  sub          zero, ra, a5
                  sltiu        s9, a6, -934
                  or           gp, a4, s5
                  sltiu        s9, a1, 1807
                  slti         s8, t1, 105
                  and          s0, t0, s4
                  srli         gp, a6, 2
                  xor          t0, s0, gp
                  or           a4, zero, t5
                  lui          s5, 805228
                  sltiu        t0, a5, 388
                  sub          s5, ra, zero
                  sra          t3, t0, a4
                  slti         gp, zero, -248
                  ori          t3, s0, -1968
                  add          a0, zero, a7
                  srl          s7, s1, s11
                  srl          sp, ra, s6
                  sltu         gp, s9, a6
                  or           zero, zero, s4
                  and          s2, s8, s4
                  xor          s9, s8, a1
                  nop
                  or           s6, gp, s5
                  or           a6, s8, s3
                  nop
                  srl          s9, t1, s11
                  srai         s3, a7, 24
                  sll          t6, sp, a3
                  and          tp, t1, s9
                  srl          tp, s2, zero
                  sltiu        s0, t0, -1204
                  nop
                  srli         t2, s7, 11
                  sltiu        t6, s3, 1767
                  sltu         a5, t5, a3
                  nop
                  sra          s11, s8, sp
                  sltiu        a3, a5, 809
                  lui          a6, 411728
                  srai         a1, s8, 14
                  slt          a3, t2, s8
                  slli         t1, t2, 31
                  sub          s6, a3, t6
                  srli         a1, s2, 2
                  sub          a0, s4, t3
                  xor          t0, s1, t1
                  or           s8, tp, t3
                  or           a7, tp, s8
                  sltiu        t0, tp, 955
                  srl          s4, sp, a2
                  slt          gp, s0, zero
                  nop
                  lui          sp, 898638
                  or           s1, s11, a1
                  andi         tp, s10, 2035
                  sra          s5, s1, t4
                  ori          a6, sp, 1110
                  srai         s11, zero, 18
                  slti         s7, a5, -621
                  sltiu        a0, t1, -1910
                  slti         a5, s3, 1297
                  sra          t3, tp, t2
                  sltu         s7, s1, s7
                  xori         t3, s3, 1398
                  sra          a0, s11, a4
                  ori          a0, a5, 817
                  xori         s8, a2, -1855
                  nop
                  ori          a7, t4, -1726
                  srli         tp, s5, 23
                  slt          a6, s5, ra
                  and          ra, s5, t6
                  nop
                  slt          sp, t4, ra
                  ori          s9, t0, -921
                  slti         s5, s0, -728
                  slli         s3, t6, 31
                  or           a1, s8, s10
                  slt          a1, zero, a4
                  auipc        s1, 291180
                  slti         t5, s3, -34
                  add          t6, t6, a2
                  slt          t2, t3, t4
                  slt          sp, ra, s10
                  xor          t2, t3, a1
                  slti         t0, zero, 250
                  sll          t6, s6, sp
                  ori          s8, t3, -1291
                  slt          tp, t0, s3
                  slt          s5, t0, t5
                  sltiu        s1, t2, 1852
                  slti         tp, a4, 2033
                  slti         s2, a5, 383
                  slli         t1, t6, 24
                  lui          s4, 1027286
                  ori          s2, s1, 1523
                  xori         s3, a6, -93
                  srli         s1, t3, 23
                  or           t3, a5, t5
                  auipc        a1, 245929
                  lui          t0, 672931
                  slti         ra, s5, -862
                  slli         gp, s5, 18
                  srl          a1, a0, ra
                  ori          s7, s1, 1957
                  add          ra, zero, a7
                  auipc        s1, 298490
                  xori         t2, s11, -812
                  srli         t3, s4, 11
                  slli         s1, a5, 11
                  lui          a0, 25642
                  lui          ra, 669896
                  slti         s2, t3, 1535
                  auipc        a3, 889495
                  xor          t5, t4, s0
                  sra          gp, tp, ra
                  andi         a1, s6, 1333
                  add          t3, a0, s3
                  and          a7, a6, s8
                  srl          tp, a5, s2
                  sll          sp, t5, a3
                  addi         s0, s0, -1929
                  lui          s11, 788456
                  sltiu        t2, s7, -377
                  srl          t0, s1, t1
                  andi         s5, s6, -1095
                  srl          t0, s8, s8
                  sub          s4, s6, s4
                  slti         a0, a6, -1943
                  ori          t5, t1, 1135
                  slli         s4, a5, 26
                  andi         s2, gp, 832
                  srai         s6, s11, 11
                  sub          t0, tp, a6
                  slti         s8, sp, 971
                  srl          s1, a3, s8
                  sltu         t5, s10, s11
                  lui          s9, 10277
                  slti         s11, s7, -1714
                  xor          s8, s11, a6
                  ori          t1, s7, -543
                  sub          s3, a1, a7
                  addi         zero, s3, -2016
                  srai         t3, ra, 16
                  addi         a4, s6, -106
                  xor          t3, s9, s7
                  lui          t2, 358805
                  nop
                  sltiu        zero, s6, 1577
                  addi         s4, t3, -1180
                  slli         ra, s0, 10
                  slti         gp, a5, -1391
                  addi         t0, a1, 1402
                  sra          t1, gp, t5
                  sra          t5, t0, a6
                  nop
                  slti         t0, ra, -1739
                  addi         a0, t0, 461
                  slli         s3, gp, 6
                  slli         s6, a3, 23
                  addi         a6, zero, 93
                  srai         s5, s7, 16
                  addi         s11, s4, -1575
                  and          sp, sp, s5
                  add          t2, a4, s1
                  lui          a4, 197631
                  srli         t1, t4, 3
                  nop
                  sll          s1, a4, s10
                  srai         a0, s5, 12
                  slli         ra, a7, 26
                  and          zero, a6, t0
                  sll          t1, ra, zero
                  slli         s9, s10, 9
                  sra          a6, a0, a4
                  or           s2, zero, s5
                  nop
                  nop
                  slt          t1, gp, a1
                  srai         t6, t0, 19
                  sll          a4, a0, gp
                  andi         s9, a2, 37
                  slti         a1, t1, 125
                  sub          a1, t4, a0
                  srai         s2, a1, 11
                  lui          a4, 210390
                  lui          s9, 202275
                  ori          tp, s7, 787
                  add          t6, s9, s4
                  slti         t1, a0, -542
                  addi         zero, s10, -645
                  slli         t3, s8, 7
                  nop
                  sra          s7, t2, t0
                  nop
                  xor          s1, s3, a4
                  slli         t1, s1, 6
                  sub          a0, s4, s0
                  srli         a3, a0, 10
                  and          s7, tp, s4
                  ori          s6, s9, -884
                  slti         s7, a3, -706
                  addi         sp, a5, 1385
                  add          s6, gp, t6
                  or           s1, a3, t3
                  srli         a5, zero, 12
                  srai         t3, s7, 20
                  sltu         s4, ra, s8
                  nop
                  sub          a6, s5, a0
                  slt          tp, tp, zero
                  sltiu        a3, t4, -1914
                  slt          t5, s5, s5
                  sra          s0, a2, a6
                  xor          t5, s4, s5
                  sltiu        t1, sp, 1904
                  srai         sp, tp, 15
                  sub          tp, s5, tp
                  xor          t3, t2, a4
                  addi         t0, a4, 1713
                  srl          sp, t5, s10
                  srl          s7, t0, a0
                  and          tp, s8, t6
                  auipc        s7, 151709
                  srai         t3, t3, 29
                  sltiu        s0, s2, -939
                  srl          t1, s9, a7
                  andi         s2, t1, 783
                  srl          s8, t3, s6
                  auipc        sp, 259840
                  slt          t0, t6, t6
                  or           t6, t1, s7
                  nop
                  sll          tp, s0, s0
                  sra          s2, t4, s0
                  xor          s3, t1, s11
                  slli         s6, s9, 4
                  slti         t1, t5, 1334
                  xor          a1, s2, t2
                  sltu         s8, a2, s11
                  slli         s8, t4, 10
                  slt          t0, t0, s8
                  xori         a7, a4, 328
                  nop
                  nop
                  slli         tp, sp, 12
                  xori         a7, a1, 60
                  sll          s5, s3, a7
                  xori         t0, a6, -449
                  and          a7, t3, s11
                  add          zero, s8, s0
                  sltiu        s7, t3, 1721
                  or           a3, zero, t5
                  sltu         a7, a0, s8
                  slli         s2, zero, 22
                  slli         a7, t3, 22
                  slt          t6, zero, s11
                  sra          s1, ra, t3
                  sltu         tp, sp, gp
                  nop
                  xor          s9, ra, zero
                  lui          s7, 953877
                  and          t2, zero, sp
                  xor          s7, s0, gp
                  auipc        s3, 221253
                  andi         a3, a4, -887
                  sltiu        t2, t4, -1761
                  xori         sp, t6, -2025
                  slti         a6, s10, -1845
                  xori         a0, s9, 1421
                  lui          s3, 583510
                  sltu         a7, tp, t0
                  auipc        t3, 351970
                  slli         a7, gp, 24
                  addi         s5, s9, -1386
                  slli         t1, s1, 4
                  nop
                  slti         a1, a6, -1802
                  slti         t5, t0, -715
                  xori         a6, s0, 67
                  sltiu        tp, s11, -1575
                  slli         a6, s3, 0
                  sltiu        tp, s5, -145
                  slt          t2, s4, s7
                  xori         s3, t3, 1448
                  sll          s11, zero, a3
                  xor          a1, s11, t2
                  andi         s6, s3, -949
                  sra          t1, s1, a5
                  sll          a4, t5, t4
                  nop
                  sub          s3, s7, a6
                  sll          ra, a4, s8
                  srli         zero, s7, 30
                  lui          sp, 613767
                  xori         s9, sp, 346
                  sltu         s3, ra, s9
                  sltiu        s5, a2, -1407
                  lui          zero, 278205
                  xor          a7, a7, tp
                  sra          t5, s10, s2
                  srl          a6, s5, s6
                  xor          a1, s9, gp
                  slli         sp, s11, 22
                  xori         s11, a0, 1229
                  sub          a7, tp, t4
                  andi         s6, a2, -702
                  lui          s3, 500800
                  sra          a1, s2, s1
                  andi         s7, s7, 376
                  addi         a3, a3, -391
                  xor          s11, a5, s7
                  xori         s0, a5, -1292
                  xor          s9, s11, a1
                  slt          s8, zero, s7
                  add          s9, a7, a7
                  xor          s5, s6, s9
                  and          a3, tp, gp
                  sltiu        a1, s7, 1479
                  srli         s7, s2, 25
                  xor          s0, t5, a1
                  srai         s6, a2, 15
                  srai         s8, s1, 20
                  slti         tp, t3, -1782
                  and          t5, t3, a2
                  slt          a3, s1, a7
                  sub          s1, t6, s2
                  lui          a0, 943133
                  slti         t1, s4, -904
                  slt          s0, s1, s0
                  or           s2, s1, a1
                  sra          a1, t6, s11
                  sll          a7, a4, a6
                  srai         s4, s9, 14
                  srl          s9, t5, t4
                  slti         a3, t3, 874
                  add          t2, s3, s0
                  slti         t1, s11, 832
                  andi         s9, a7, -1356
                  addi         a3, ra, -1207
                  addi         zero, s7, 305
                  sra          s7, s1, s0
                  xori         tp, t6, 2006
                  and          t1, t2, s11
                  or           sp, t6, a4
                  sra          s8, t1, a5
                  and          s0, sp, t0
                  xor          gp, t5, s5
                  slt          s4, s8, s7
                  sltu         gp, t4, s9
                  slli         sp, sp, 27
                  slti         gp, ra, 1356
                  addi         s3, a6, 595
                  add          t1, s5, t0
                  srai         zero, s3, 0
                  slti         zero, ra, -390
                  auipc        s8, 259894
                  lui          a5, 923938
                  xori         sp, t6, 1751
                  andi         s4, zero, 1161
                  ori          t2, a7, -1657
                  slt          s0, a1, s1
                  srai         t0, sp, 25
                  srli         s2, tp, 16
                  xor          a7, a7, a6
                  nop
                  xori         s7, sp, 1667
                  andi         a5, s3, 718
                  lui          tp, 96412
                  srai         a6, t6, 13
                  andi         a7, s0, 591
                  addi         s2, t3, -1231
                  sltu         s4, a6, a4
                  sltu         zero, t0, sp
                  slti         ra, t0, 474
                  slti         s11, a1, 1429
                  andi         s1, ra, 1506
                  addi         t6, s6, 1346
                  andi         a4, t2, -1778
                  nop
                  sltiu        a7, s3, 1667
                  srli         s5, sp, 21
                  and          s3, s11, t5
                  srai         s3, a0, 21
                  or           s0, a1, s3
                  sra          s2, s4, s3
                  xori         tp, s8, 108
                  slli         a4, t2, 31
                  sra          s1, gp, a7
                  andi         tp, s10, 1151
                  lui          s5, 914234
                  addi         s7, s10, 1117
                  sub          t0, s5, tp
                  andi         s5, t3, -1429
                  srai         t1, s3, 0
                  srli         a1, t0, 1
                  sltu         sp, s10, zero
                  sltiu        a7, a1, -1586
                  nop
                  xor          s4, s2, gp
                  srai         s6, s3, 0
                  srli         a1, s5, 11
                  or           a6, a4, s10
                  sltiu        s8, t6, 492
                  xor          s7, s5, s5
                  srli         a7, s11, 26
                  and          s4, s9, t1
                  addi         s9, s2, -23
                  and          a5, a6, a1
                  xori         s1, t0, -1792
                  xor          t5, a1, sp
                  addi         s0, s5, 1389
                  slli         a4, s3, 0
                  srai         a0, s1, 22
                  or           s0, s9, s1
                  slti         s3, s4, 1863
                  srl          t5, a3, ra
                  add          s5, s6, s3
                  xori         t1, t6, 1981
                  and          a3, s6, s5
                  srli         t0, t5, 30
                  srli         t2, s11, 5
                  xor          a6, s6, a6
                  ori          s3, t0, 1062
                  xor          s8, s5, s6
                  xor          a7, s6, a7
                  srai         s3, s10, 25
                  add          t3, t5, s6
                  addi         ra, tp, 677
                  sll          gp, ra, s9
                  and          s4, a6, s2
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s7, 0xc3e061e0
                  li           s8, 0xffffffff
                  li           a3, 0x0
                  li           s1, 0x80000000
                  li           a4, 0x0
                  li           s0, 0x80000000
                  li           a5, 0x80000000
                  li           ra, 0xb9c926e6
                  li           sp, 0x0
                  addi         s8, a3, 136
                  auipc        a6, 863405
                  auipc        a4, 453552
                  add          a3, s1, s0
                  add          a3, a5, s8
                  add          ra, ra, s8
                  nop
                  nop
                  nop
                  nop
                  sub          s1, s8, sp
                  lui          s0, 342703
                  lui          a6, 557897
                  auipc        s1, 110121
                  auipc        ra, 251734
                  auipc        a3, 108114
                  nop #end riscv_int_numeric_corner_stream_4
                  sltiu        gp, sp, -99
                  sub          a5, s6, s2
                  srli         a3, sp, 6
                  xori         a6, zero, -1025
                  nop
                  addi         s1, s2, 132
                  ori          zero, t2, -913
                  slli         tp, s3, 9
                  slt          gp, a2, a2
                  and          t1, t6, t6
                  srl          ra, s1, s5
                  addi         s0, a0, -1489
                  or           a3, a1, a6
                  sltu         a5, t3, tp
                  and          s4, s0, a3
                  sll          tp, s2, s8
                  srai         t3, a7, 9
                  and          s0, t0, s4
                  add          a6, t3, t3
                  sub          gp, s1, a1
                  lui          s1, 274165
                  lui          s2, 858737
                  srl          a3, a6, s11
                  sltu         a7, gp, s4
                  slt          sp, s7, tp
                  xori         s9, a3, 680
                  srai         ra, tp, 24
                  srli         s4, zero, 1
                  andi         s0, a3, -1471
                  slli         a0, t6, 15
                  slt          a5, a0, s1
                  sltiu        s7, a4, -391
                  sltiu        s8, gp, 510
                  ori          s8, ra, 817
                  lui          s6, 464677
                  ori          s7, t1, 1416
                  auipc        tp, 275226
                  andi         a5, t6, 1423
                  slli         a6, a2, 15
                  slli         s2, s0, 11
                  xor          s8, a4, s7
                  slli         s1, s2, 21
                  srl          gp, t6, s4
                  srai         s7, t3, 28
                  xor          ra, a6, s7
                  or           s11, t5, t1
                  srl          s6, a1, zero
                  srli         a7, s1, 5
                  nop
                  nop
                  lui          s7, 490828
                  nop
                  andi         t5, tp, 1155
                  andi         s11, s8, -46
                  srai         s0, a0, 30
                  sra          s8, s6, a2
                  sra          t2, gp, s10
                  xor          zero, s5, tp
                  nop
                  and          a6, tp, t5
                  slli         t2, s10, 11
                  nop
                  or           t5, s5, s5
                  lui          s2, 113726
                  slt          s4, s9, t0
                  sra          s2, t1, s11
                  xor          sp, s6, t1
                  sra          s9, t6, s8
                  srai         s2, t5, 22
                  slli         s2, s2, 1
                  sra          s9, zero, s3
                  slti         s8, t1, -1336
                  add          sp, a1, s10
                  auipc        t5, 443132
                  andi         t3, gp, -786
                  and          t0, s8, a1
                  srli         s8, t1, 11
                  sltu         a5, s9, s9
                  xori         s5, t4, 305
                  sltiu        sp, ra, -61
                  sll          t6, t4, ra
                  srl          a5, t0, a3
                  sub          a0, t2, a1
                  auipc        ra, 547318
                  or           s3, a4, t6
                  ori          s9, zero, -308
                  or           s1, t1, a3
                  add          a0, s3, a3
                  slt          a1, s10, ra
                  xori         s0, s8, -1130
                  and          tp, s11, s2
                  sltiu        t2, sp, -24
                  auipc        s8, 194090
                  slti         s0, t5, 30
                  sub          s7, ra, a1
                  slli         t6, a6, 6
                  srai         ra, s1, 22
                  and          s5, sp, t6
                  nop
                  sra          t1, a7, gp
                  add          a6, s10, a1
                  srai         zero, t4, 3
                  and          gp, s9, a4
                  xor          s8, a4, s4
                  slt          s9, s10, gp
                  srai         t0, a5, 5
                  andi         s6, tp, -1242
                  auipc        s7, 1026874
                  xor          s0, a5, a4
                  ori          s7, t2, 143
                  xor          t0, s9, a3
                  or           a0, sp, a0
                  auipc        s8, 267413
                  or           t3, s5, ra
                  and          t0, tp, s2
                  xori         t2, s8, -12
                  sll          t1, t6, a3
                  add          a5, a0, a2
                  slti         s0, a7, 1439
                  nop
                  lui          s4, 1037462
                  sra          s3, s2, gp
                  sll          a1, gp, s0
                  add          s4, a0, a3
                  sltiu        s2, s3, -132
                  andi         a3, a4, 1734
                  sltu         a0, t5, a6
                  and          t2, t5, s3
                  or           s1, s11, t0
                  addi         t0, a7, 1123
                  nop
                  and          ra, t3, a4
                  xori         a5, s7, -1792
                  slti         s8, ra, 309
                  ori          s0, s3, 1355
                  slt          t0, s4, s3
                  or           s9, s2, a5
                  sub          s1, s8, a6
                  xor          t6, t4, t5
                  ori          s3, zero, 1520
                  lui          tp, 401501
                  ori          a7, a2, 468
                  and          ra, s2, sp
                  sub          a4, a1, s5
                  ori          a5, s1, -1114
                  andi         s1, a1, 495
                  and          sp, t0, t4
                  nop
                  srli         s6, a0, 7
                  xori         s4, t2, 204
                  and          s2, s4, s8
                  add          t6, t5, a5
                  auipc        gp, 824842
                  auipc        a6, 695317
                  or           s4, t5, s5
                  xori         sp, gp, -1501
                  srai         a6, a0, 2
                  andi         sp, s11, 1997
                  or           s9, s3, a6
                  ori          s1, s0, 672
                  srai         t5, ra, 24
                  sltu         t0, t6, zero
                  sltu         s0, a6, s11
                  auipc        s4, 29293
                  nop
                  andi         a6, s6, -199
                  add          s1, t4, a6
                  xor          sp, t0, s2
                  slli         ra, sp, 16
                  sll          s5, zero, a0
                  add          s0, s9, s2
                  nop
                  srli         ra, ra, 26
                  srli         sp, t1, 11
                  xori         t2, t0, 965
                  ori          t2, a0, 1069
                  srli         s6, s0, 24
                  addi         sp, s10, 139
                  sra          a1, s1, s7
                  xori         s8, s10, 565
                  sll          t3, a1, t1
                  sltu         a5, s7, s9
                  andi         a0, a1, -454
                  sra          a4, zero, t5
                  and          a7, s4, a2
                  auipc        s5, 487516
                  add          sp, a7, a6
                  srli         t6, t6, 1
                  xor          t6, a3, a0
                  slli         ra, gp, 21
                  nop
                  ori          sp, a2, -794
                  ori          a7, sp, 202
                  or           sp, s7, zero
                  ori          s9, ra, -1480
                  slti         s0, a7, -1417
                  xor          a6, s5, a2
                  sltiu        s4, s4, -1364
                  slli         a0, a7, 23
                  srai         a4, t0, 28
                  slli         s8, s1, 27
                  auipc        s2, 826682
                  add          t6, a2, s7
                  addi         s1, a1, 743
                  xor          s3, a1, s5
                  srli         zero, a1, 22
                  srai         a5, a4, 13
                  add          tp, a2, t5
                  sltiu        t0, s3, -1781
                  add          t6, a3, t6
                  srl          a7, a3, gp
                  xor          a3, s0, s3
                  slt          t2, a4, a1
                  andi         t6, t1, 1995
                  nop
                  xor          a0, zero, s0
                  nop
                  lui          a7, 346305
                  andi         s6, a0, -1327
                  nop
                  auipc        s4, 735528
                  addi         a0, s8, -427
                  nop
                  srl          ra, t4, a3
                  srli         s7, a1, 23
                  addi         s8, t4, -1379
                  sub          t2, s3, s6
                  add          s2, a1, t5
                  sub          s3, t3, a1
                  slt          t1, s6, a0
                  sltu         s3, s7, a7
                  ori          s3, a4, -1347
                  slt          t1, a4, ra
                  or           t5, tp, s5
                  slti         s6, s2, -453
                  sltiu        s3, t0, 1228
                  sub          a1, t1, gp
                  srai         s6, a6, 8
                  xor          t6, s9, a0
                  sra          s0, a6, a3
                  srli         ra, a4, 12
                  add          zero, t6, s9
                  and          s8, t2, sp
                  andi         a0, s4, 431
                  ori          t1, zero, -703
                  slli         s6, s7, 27
                  xor          s6, ra, s7
                  srli         a1, a7, 24
                  sll          s2, a2, t5
                  andi         a3, ra, -518
                  xori         s11, a2, 255
                  sltiu        s11, t2, -589
                  slt          a0, t3, t3
                  sra          t2, s11, s4
                  sltu         t1, zero, a0
                  auipc        ra, 16442
                  add          a6, s6, sp
                  ori          a0, zero, 1956
                  sltu         s11, s9, a3
                  addi         s2, a1, -1292
                  auipc        s4, 306547
                  and          s2, gp, a0
                  addi         t3, s8, 1413
                  sra          ra, a5, a4
                  andi         s3, t0, 1340
                  sra          s2, a1, t4
                  slt          t0, s1, t0
                  ori          a6, tp, 60
                  srl          t1, ra, a4
                  nop
                  ori          s0, s5, -969
                  xor          zero, t2, s8
                  lui          a3, 904323
                  addi         s0, s3, -296
                  andi         t2, s0, -596
                  auipc        s2, 331204
                  srli         gp, s5, 8
                  sra          zero, zero, t3
                  add          t3, s3, a3
                  xori         a4, a6, 775
                  xori         s3, a1, -879
                  srl          gp, a3, s9
                  slt          t6, s1, s6
                  xori         s9, gp, -1287
                  and          zero, s9, ra
                  or           t3, a7, s0
                  sltiu        a3, s8, -692
                  nop
                  slti         s8, a1, -1429
                  slt          ra, s9, gp
                  or           t0, a7, a0
                  addi         tp, s2, 1888
                  add          t3, a1, a0
                  sll          a0, t1, s4
                  sub          s3, a5, t1
                  slti         s5, a0, 1412
                  slt          s9, s9, t6
                  nop
                  sll          t0, s3, t2
                  slt          gp, sp, t4
                  slt          s7, a5, t3
                  xori         s8, s4, 34
                  sub          t3, s1, tp
                  xor          t5, t4, a5
                  slti         s1, s4, 1702
                  add          t5, a5, s5
                  slli         a6, ra, 21
                  srli         s1, ra, 30
                  ori          gp, s7, 1537
                  or           s4, s6, sp
                  xor          a6, s7, tp
                  sub          s5, s5, s0
                  slli         s0, s9, 0
                  or           s1, s9, s6
                  slli         a3, gp, 31
                  nop
                  srli         sp, a2, 6
                  or           t0, a2, t2
                  nop
                  slti         a7, t3, 608
                  ori          a7, gp, 886
                  ori          s1, s1, -664
                  xor          t3, s8, a6
                  andi         t5, t4, -1647
                  slti         s11, a7, -1519
                  xor          a6, s2, s2
                  andi         a7, t1, -252
                  xor          a6, t1, a0
                  andi         a0, s9, 2037
                  srl          a7, ra, t2
                  slti         s5, s6, 29
                  addi         s7, s3, 1743
                  srai         s7, a5, 14
                  nop
                  ori          s11, a1, -756
                  sub          ra, s8, t3
                  xor          a1, s10, t3
                  srai         a5, tp, 24
                  xori         ra, s9, 1256
                  and          a0, a5, a2
                  sll          a6, ra, a5
                  ori          t6, s7, 520
                  sub          zero, t6, s8
                  sra          s11, a0, t2
                  ori          s11, t5, -1139
                  sltu         a7, a1, s11
                  slli         t5, tp, 4
                  slt          a1, s6, t5
                  nop
                  and          t5, a4, s5
                  slti         s2, a6, 1395
                  sra          sp, s6, s8
                  andi         s3, s7, -1584
                  slt          ra, t6, s3
                  auipc        a3, 71749
                  sltiu        s0, t1, 401
                  slti         s5, s6, 1469
                  srl          tp, t4, zero
                  add          a5, s3, t2
                  xor          s7, a3, t0
                  andi         a4, t5, 1496
                  sub          s7, a7, s0
                  sltiu        s11, t3, 1378
                  slli         a4, t6, 10
                  sll          s7, t5, a6
                  or           a5, a5, t4
                  srl          zero, t6, s10
                  sltu         s4, a1, t3
                  and          a1, sp, s8
                  auipc        s2, 439752
                  srai         t5, s10, 15
                  xor          t0, s11, s8
                  lui          t0, 131717
                  and          t6, tp, t0
                  sub          s1, a7, s0
                  nop
                  addi         a1, t2, 675
                  slli         s8, s3, 19
                  srl          s11, s2, gp
                  auipc        a5, 518107
                  srli         s11, a6, 6
                  srl          s2, s3, s1
                  slti         t5, a2, -228
                  sll          s8, a6, a2
                  sll          s4, zero, s8
                  sra          s9, zero, a6
                  sll          zero, s1, sp
                  sll          a0, zero, ra
                  and          tp, a2, t1
                  xor          a0, s2, s4
                  andi         tp, s5, -1325
                  and          sp, a1, a6
                  andi         t3, t1, -207
                  add          s5, s11, s7
                  and          s8, s2, s0
                  addi         a0, a6, -1880
                  slt          t0, t1, zero
                  sra          ra, a0, t6
                  nop
                  srai         a3, a5, 20
                  addi         a5, t0, 104
                  srai         tp, a7, 23
                  slli         ra, s0, 1
                  nop
                  auipc        gp, 1028
                  add          s2, t0, tp
                  slli         s4, t5, 7
                  slt          s9, a1, s8
                  srli         s4, s7, 4
                  sll          s8, a5, t6
                  srli         t6, a2, 30
                  xor          a1, s7, a5
                  addi         a5, s0, 223
                  srli         s1, s5, 23
                  xor          a1, s3, a0
                  addi         t5, sp, 0
                  sltiu        a6, s5, 1868
                  sll          s7, a3, s11
                  slti         s9, s4, 1579
                  addi         s6, zero, 964
                  and          a5, s9, s5
                  andi         s4, s10, 1228
                  addi         s7, t2, 1905
                  nop
                  xor          s3, a5, s3
                  sra          gp, t5, s10
                  sltu         a4, s10, a2
                  sll          zero, a6, s8
                  addi         s0, zero, -1290
                  addi         a3, t3, 1897
                  xori         a1, t3, -1820
                  nop
                  sll          s5, s1, a3
                  sub          a1, s10, a4
                  and          gp, a5, s5
                  lui          sp, 338912
                  sltu         s3, s0, a2
                  auipc        t3, 192652
                  sll          zero, s7, t0
                  andi         s6, s9, -1374
                  xori         s4, s10, -714
                  lui          s7, 434944
                  and          a7, s8, a6
                  sltu         t1, a6, s0
                  sll          s4, s5, t1
                  and          t6, a3, a4
                  slt          a1, s3, s7
                  ori          a4, s9, 1778
                  sltu         s9, ra, t4
                  xori         gp, s0, -1535
                  ori          a0, a6, -2047
                  xor          s3, t1, s8
                  sub          a1, t4, ra
                  add          t0, s8, a2
                  srli         s8, a3, 15
                  lui          s7, 543302
                  nop
                  sub          s5, t6, a4
                  addi         s2, gp, -663
                  andi         s8, s0, 867
                  slt          t3, a3, s10
                  xori         a7, t2, -1477
                  sltiu        t6, s9, -1492
                  auipc        a3, 590075
                  slti         s3, a0, -1965
                  or           a0, t3, s9
                  slti         s11, s5, 1694
                  slli         a6, zero, 3
                  and          a0, a7, s11
                  or           t6, t2, t4
                  sltu         s11, s9, ra
                  sltu         s1, s5, sp
                  or           a6, t3, t2
                  addi         a6, s3, -462
                  sub          s2, a6, s6
                  sub          s9, s2, t4
                  sra          a3, s9, s4
                  or           s0, a1, s2
                  sra          a5, s3, t4
                  ori          t6, s4, 1011
                  xor          zero, s7, a4
                  slti         t5, a2, -383
                  sub          a5, t0, ra
                  or           a7, a7, zero
                  nop
                  add          s8, sp, gp
                  xori         s2, t0, 918
                  and          s8, s8, s3
                  slt          a5, s0, s11
                  sltu         a0, s0, s4
                  nop
                  andi         s2, a7, -1790
                  addi         s11, t1, 1471
                  sra          s6, a3, t6
                  sll          gp, a5, a2
                  ori          a0, s2, 1909
                  and          a0, t5, s9
                  sra          s2, a6, s0
                  ori          t5, s2, 289
                  ori          t3, t0, -27
                  auipc        s6, 565175
                  and          a4, a5, a3
                  srai         a0, a4, 21
                  sltiu        zero, a5, 1940
                  and          a1, t0, a5
                  or           s9, t4, s7
                  srai         a1, s5, 18
                  sltu         a5, t0, s10
                  addi         a0, s7, 1840
                  or           s5, s0, tp
                  sra          s3, s7, s10
                  xori         a5, s8, 1814
                  andi         s2, t5, -1458
                  add          s6, s3, a4
                  add          a5, a5, tp
                  srl          s3, t6, ra
                  sub          a4, t4, a5
                  slt          s3, t4, a3
                  sll          a0, a7, tp
                  slti         s0, zero, -1850
                  sltu         s2, s4, a6
                  add          s5, s2, ra
                  srai         t1, s5, 16
                  sltiu        s5, s2, -1566
                  sll          t6, t6, sp
                  srai         s5, t6, 29
                  slti         t0, s4, 947
                  sltu         s5, s10, t6
                  srai         tp, s10, 11
                  sub          zero, a2, t4
                  slti         s0, t4, -1146
                  nop
                  sltiu        tp, a0, -670
                  add          s3, a1, a5
                  sra          s4, a0, s4
                  lui          t1, 74552
                  slt          a6, t1, a2
                  and          s11, s7, zero
                  nop
                  nop
                  srl          t6, a3, t3
                  sll          a6, s0, s6
                  sltiu        a5, s11, 1276
                  slt          s8, s10, ra
                  slli         s8, t3, 24
                  sltiu        a5, a3, -1573
                  xori         a1, t4, 1600
                  add          t6, a0, s4
                  lui          s5, 792402
                  auipc        s8, 1005594
                  nop
                  slt          a1, s11, s1
                  or           a3, a2, t0
                  auipc        t6, 33747
                  sltiu        s2, a5, -1440
                  sra          t5, zero, a6
                  addi         t5, s11, 571
                  srli         s0, tp, 28
                  sub          s5, s7, a6
                  andi         a7, s6, 820
                  sltiu        t6, t2, 192
                  nop
                  ori          t6, s5, 685
                  slli         s7, t0, 21
                  srl          s1, a1, a7
                  srli         a7, s4, 15
                  sltu         t1, tp, gp
                  sll          t6, s9, s0
                  sub          t0, s0, t3
                  xori         ra, tp, 939
                  addi         s7, s4, 52
                  sll          s11, s6, tp
                  sra          t2, s4, s9
                  sll          s2, s5, a5
                  slli         a5, s1, 15
                  slt          a1, s6, t5
                  auipc        t3, 139540
                  and          a3, s8, ra
                  slti         a0, t4, 1435
                  auipc        t6, 362024
                  ori          s9, s3, 354
                  slti         a6, gp, 483
                  srl          sp, a2, t5
                  or           a1, s10, s7
                  srai         a4, s0, 29
                  sub          s11, s8, t6
                  sub          a7, t0, t1
                  or           s5, s1, sp
                  srai         a3, s6, 29
                  slt          ra, a7, s10
                  addi         s2, s7, -686
                  and          s7, s0, s10
                  nop
                  add          a0, a1, t5
                  slli         a5, sp, 31
                  add          s0, t6, t6
                  slli         t2, a4, 12
                  slt          a1, a0, a7
                  lui          a1, 733019
                  slti         t2, t1, -1852
                  sra          a7, t5, s11
                  and          t2, a3, s6
                  lui          a0, 948940
                  slti         t2, s11, 294
                  srli         t5, t2, 4
                  add          t5, a6, sp
                  xor          s7, t4, ra
                  lui          t0, 905046
                  nop
                  sltu         gp, t0, t2
                  xori         s1, s2, -223
                  xori         t2, s1, -1428
                  sra          t1, a5, t4
                  sltiu        s8, a1, -807
                  sltiu        s7, s11, -1967
                  lui          s1, 589605
                  andi         a7, t4, -1401
                  slli         s8, a2, 22
                  srl          zero, s10, a2
                  sltiu        tp, s10, -1985
                  sll          s5, a6, s1
                  srl          t6, s6, t3
                  or           a1, a0, s0
                  slli         s7, a5, 14
                  slt          a4, t2, t3
                  sra          a7, s3, a2
                  or           sp, t5, t5
                  nop
                  slt          s3, ra, s2
                  xori         a0, t0, -580
                  sub          t2, s7, tp
                  addi         a0, zero, 744
                  sub          a6, t6, a6
                  srl          s3, t2, s1
                  slt          t6, a0, a5
                  or           a0, s8, s9
                  xor          a1, zero, s9
                  slti         a5, t2, -1028
                  addi         s8, a2, 960
                  slti         t1, s11, 1006
                  and          s0, s1, a3
                  and          s4, s7, s11
                  auipc        s11, 726615
                  andi         s3, a5, 1677
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s3, 0x0
                  li           s1, 0xffffffff
                  li           gp, 0x0
                  li           t6, 0x0
                  li           s2, 0x2a214645
                  li           ra, 0x0
                  li           s4, 0xffffffff
                  li           a3, 0xf8209aa9
                  li           sp, 0x80000000
                  addi         t6, s1, 1644
                  sub          a3, sp, s3
                  add          a3, s2, s9
                  addi         s4, s1, -1648
                  lui          s1, 626104
                  nop
                  nop
                  add          s9, s2, gp
                  sub          s9, ra, s2
                  auipc        s3, 845587
                  auipc        s1, 988129
                  sub          s4, s1, s1
                  addi         sp, sp, 1029
                  addi         s9, s9, 77
                  add          ra, s9, gp
                  sub          s2, s4, s3
                  lui          gp, 405600
                  sub          s2, s4, s9
                  add          t6, t6, s2
                  addi         t6, s2, -399
                  lui          sp, 838647
                  add          gp, s2, gp #end riscv_int_numeric_corner_stream_11
                  ori          a3, s5, -1246
                  and          gp, s5, a4
                  lui          t6, 981537
                  or           gp, t0, t4
                  add          s0, s9, t2
                  add          a5, s11, a2
                  slt          a4, tp, t3
                  slti         s7, t3, -1329
                  add          s9, tp, a6
                  nop
                  sltu         a4, s8, ra
                  sltiu        tp, t0, -4
                  xori         t1, s0, -194
                  srai         s4, t2, 1
                  xori         s5, a0, 1214
                  slti         s9, a6, -964
                  and          s4, s11, s11
                  auipc        a4, 859874
                  ori          s11, s4, -1412
                  sub          s5, sp, s5
                  sltiu        zero, gp, 950
                  xori         s9, sp, -346
                  srl          s7, a7, s11
                  andi         s11, sp, 1689
                  and          tp, s8, a4
                  xor          s1, t4, a4
                  sub          s5, s4, t5
                  or           s9, gp, s1
                  and          s9, a7, t2
                  srli         s6, s9, 3
                  or           t2, t1, s0
                  ori          a6, t6, -1705
                  nop
                  xori         t2, s4, -1201
                  xor          tp, t4, s9
                  lui          t3, 948050
                  srai         s1, s1, 21
                  srli         s7, s10, 14
                  slt          tp, t0, t3
                  srai         s1, s11, 28
                  srli         t6, t0, 2
                  or           t0, sp, zero
                  nop
                  addi         t1, a4, 923
                  slli         a0, s8, 15
                  slt          ra, t5, t4
                  lui          s2, 893396
                  lui          t5, 487388
                  sll          s8, s9, a2
                  auipc        t1, 2237
                  srli         t0, s11, 31
                  srai         sp, gp, 7
                  sra          ra, a0, gp
                  auipc        a4, 740069
                  ori          t6, a1, -1991
                  auipc        gp, 908215
                  srai         s9, a0, 18
                  add          s7, s2, s9
                  andi         a7, s4, 638
                  or           s1, t0, s7
                  lui          s7, 1047318
                  andi         t6, s0, -1320
                  slt          t2, a1, zero
                  or           s4, t2, t2
                  sltu         gp, gp, t2
                  xori         a1, a4, 1565
                  sltu         t0, s1, s9
                  xori         a4, t4, 1426
                  andi         t1, s11, -195
                  and          t3, s1, s9
                  andi         ra, sp, -1422
                  lui          a3, 420767
                  andi         a1, s6, 1175
                  ori          s1, s6, -322
                  or           gp, tp, t3
                  or           s5, a5, s10
                  xor          a0, s4, s5
                  srli         s5, s5, 9
                  nop
                  andi         s9, s8, 794
                  andi         a3, s2, 1949
                  nop
                  add          gp, sp, a2
                  slt          s11, zero, a4
                  sra          a4, s10, t5
                  slt          s0, sp, sp
                  srai         a3, s2, 12
                  and          s3, a0, a4
                  slt          a5, t0, a1
                  ori          a5, gp, 1720
                  srai         s9, a0, 2
                  ori          tp, a4, 1461
                  xor          ra, a4, t5
                  nop
                  lui          s6, 847222
                  addi         a5, t2, 815
                  and          a1, gp, s2
                  add          s5, s7, t0
                  slti         s0, s7, -1990
                  sub          a4, zero, a0
                  lui          a4, 233280
                  srl          s3, a5, ra
                  nop
                  sra          s0, s7, t5
                  sltiu        a3, s5, -1757
                  slt          zero, s4, tp
                  sltu         s5, t4, t3
                  auipc        t6, 128841
                  srl          sp, a6, t0
                  add          s5, ra, s0
                  sll          s3, a2, a3
                  srli         s6, s2, 7
                  sltiu        t5, a7, -444
                  slti         a3, s9, -1683
                  srai         zero, t4, 24
                  slli         a1, sp, 0
                  lui          zero, 848062
                  srl          s9, a4, gp
                  sll          t5, s0, a6
                  or           t1, s11, t0
                  sll          sp, t2, s3
                  sltiu        a4, s6, -994
                  nop
                  andi         t0, a6, 727
                  sltiu        tp, a2, 1708
                  srai         a0, s4, 27
                  sll          a5, s4, s6
                  sra          zero, s9, s6
                  sltiu        s8, a6, -1541
                  andi         s4, s2, -1000
                  lui          s3, 682928
                  sll          gp, s1, a6
                  xor          t3, a6, tp
                  ori          a6, t1, 651
                  and          s11, a4, s2
                  lui          ra, 258018
                  xor          a3, a4, s11
                  addi         s6, t1, -731
                  sub          t5, s1, t2
                  ori          s0, t4, 182
                  slti         tp, s6, -686
                  sub          s4, ra, t5
                  sltiu        gp, s5, -1104
                  nop
                  srai         sp, s4, 21
                  sll          t2, ra, s0
                  xori         t2, a3, 1690
                  sltu         tp, a0, t2
                  sll          a5, a6, a7
                  srai         t0, a0, 24
                  srai         zero, a0, 11
                  srl          s9, s5, s2
                  slt          a3, s6, ra
                  srai         t5, t3, 13
                  andi         a3, zero, -1703
                  nop
                  slli         s4, a2, 6
                  srl          t2, a3, s4
                  and          s7, a6, s1
                  and          s5, a3, s6
                  sltiu        s5, s6, 862
                  andi         s0, a5, 2002
                  ori          s0, a1, 196
                  andi         s0, s0, 0
                  srl          tp, a5, a1
                  add          s2, s7, t2
                  auipc        s4, 838170
                  sra          a5, a3, s10
                  sltiu        s2, a6, 1421
                  lui          gp, 921697
                  and          a0, s2, a7
                  add          s1, t2, s7
                  xor          a6, t0, a0
                  slli         s0, s3, 9
                  slt          t5, sp, t3
                  sll          s0, s2, s3
                  slt          zero, a7, a6
                  srai         t2, a7, 30
                  andi         a0, s11, 1868
                  sltu         t0, s5, a7
                  add          a7, t1, a6
                  srli         ra, s5, 17
                  sub          s5, a5, a4
                  xor          t3, t2, t2
                  slti         tp, s9, -1061
                  xori         s4, a3, 1933
                  srl          s1, zero, a3
                  nop
                  xor          s7, sp, s6
                  lui          ra, 384862
                  xori         t1, sp, 228
                  lui          t3, 646740
                  xori         t2, a5, -433
                  slt          t3, ra, t2
                  slt          a1, a4, sp
                  sll          s8, s8, a5
                  lui          t6, 1000522
                  addi         s3, s1, 74
                  add          zero, a0, t1
                  auipc        s3, 121457
                  sub          tp, a0, s7
                  srli         gp, tp, 27
                  and          s1, sp, t2
                  sltiu        t1, s7, -1508
                  srai         a5, s0, 24
                  srai         gp, s6, 26
                  nop
                  addi         t1, a1, 1511
                  or           s6, s10, s1
                  ori          a1, a7, 330
                  srai         zero, t2, 11
                  slt          zero, s3, t4
                  slt          ra, gp, s7
                  sll          tp, a1, t0
                  srli         ra, a4, 24
                  auipc        s7, 304909
                  lui          a3, 179219
                  sra          a4, zero, s0
                  sub          t3, s6, s7
                  andi         tp, s5, 399
                  addi         s5, sp, -45
                  nop
                  slli         s3, s7, 24
                  sub          sp, s5, sp
                  sra          t1, a1, zero
                  slli         s2, s9, 21
                  slt          a5, t1, s8
                  srl          a1, a4, a3
                  nop
                  slti         sp, s3, -1473
                  sra          s5, t6, s2
                  srli         s4, sp, 10
                  sll          t1, s10, s4
                  slt          s8, t5, s11
                  add          s5, tp, s0
                  add          s3, s4, s11
                  sub          a0, ra, s1
                  srai         gp, a4, 2
                  nop
                  slt          gp, s0, t3
                  sll          a3, s5, t0
                  sll          t1, a2, a3
                  sub          sp, s8, s1
                  slti         s9, s4, 354
                  slli         t2, a6, 2
                  sub          s1, s6, s10
                  auipc        a3, 339529
                  sra          t0, t2, t6
                  sll          s9, s5, a2
                  and          t6, s11, zero
                  sltu         t3, s0, sp
                  auipc        t1, 468269
                  srl          a4, a1, ra
                  slti         s9, a2, 1541
                  addi         s3, s8, -105
                  or           s11, t4, s4
                  auipc        a3, 966129
                  nop
                  auipc        gp, 335591
                  addi         t0, s7, 116
                  srl          a5, sp, a1
                  ori          s1, zero, 1089
                  ori          s0, gp, -191
                  sll          s7, t0, s0
                  srai         a7, s9, 14
                  xori         s1, t0, 312
                  ori          s5, t4, 1671
                  srai         s9, t6, 21
                  or           zero, a4, tp
                  xor          s7, t5, t6
                  xori         s9, s5, 1236
                  lui          t5, 668976
                  xor          t3, s9, s6
                  sll          a0, a0, a5
                  slti         a4, t0, -192
                  andi         s7, s7, -1388
                  andi         t3, s9, -135
                  slti         t1, t6, -1495
                  slt          s9, s8, s5
                  or           t3, t1, s0
                  auipc        t3, 883093
                  xor          a3, s7, a1
                  slt          t5, a4, s0
                  srl          t3, t0, s1
                  addi         s7, s11, -851
                  andi         zero, t0, -260
                  xori         t6, a5, 1119
                  auipc        s9, 497827
                  sltu         s0, zero, s2
                  and          t0, s1, a7
                  srl          t2, zero, sp
                  slti         t0, zero, -28
                  xor          s4, s0, a6
                  slli         a0, s10, 20
                  srl          s8, zero, t6
                  sltu         a4, t0, t2
                  slti         gp, t1, 1301
                  or           a6, t3, s10
                  slt          tp, s5, s7
                  lui          s8, 701471
                  add          tp, ra, s7
                  xor          a5, t1, a6
                  sltiu        a7, a1, 789
                  and          t3, a5, t6
                  sll          ra, a2, s6
                  sll          a5, s11, a2
                  sra          s8, s10, tp
                  ori          s3, t6, 937
                  slti         s0, t5, -1797
                  srl          zero, gp, s7
                  srli         s7, sp, 29
                  sltu         zero, ra, tp
                  nop
                  ori          s11, s1, -1502
                  xori         ra, t1, 609
                  lui          t3, 103009
                  srl          s9, t4, s0
                  or           ra, a6, t6
                  xori         s6, ra, -1691
                  srai         s2, s4, 12
                  slti         a5, tp, 1568
                  srai         s1, s9, 23
                  sub          s0, a4, a4
                  or           a5, t3, t0
                  srl          t2, a6, zero
                  srli         s4, s2, 12
                  xor          a4, ra, t5
                  xor          a4, s7, a3
                  slli         a4, a0, 30
                  slli         a4, s6, 23
                  sra          a5, zero, t5
                  auipc        s5, 502261
                  srai         t6, s4, 30
                  slli         a5, a5, 18
                  srai         a7, t5, 14
                  srai         a1, a4, 11
                  sll          s3, t5, a1
                  sll          sp, t2, t4
                  auipc        a0, 656392
                  xori         a4, tp, 1457
                  srli         s4, t1, 6
                  sltiu        s9, gp, -2001
                  and          t1, a6, t0
                  xori         a0, a7, -778
                  xori         s1, a1, -1386
                  srai         s3, a5, 10
                  andi         a4, gp, -1635
                  srai         zero, s10, 21
                  auipc        s3, 173001
                  sll          tp, s11, sp
                  sra          t3, t2, tp
                  andi         ra, s1, -1012
                  add          s9, a4, t1
                  or           a6, a4, a2
                  srl          s0, tp, a6
                  sltu         t6, a1, s7
                  nop
                  sub          t1, s5, a3
                  srai         s11, s1, 19
                  nop
                  or           s5, a3, t0
                  sltu         a4, s1, zero
                  sll          s1, a2, s4
                  sll          zero, ra, t2
                  xori         t5, s2, 1998
                  srai         ra, s7, 26
                  slti         s9, t6, -127
                  nop
                  srai         s6, ra, 27
                  andi         s11, t6, -2017
                  sll          a3, s1, t6
                  xor          ra, t4, t2
                  sltu         ra, a5, s4
                  slli         a5, s9, 10
                  srai         ra, sp, 18
                  or           tp, t6, ra
                  srl          s9, a0, s8
                  lui          t6, 728956
                  slti         t3, s6, 583
                  sltu         ra, s5, ra
                  sltiu        t5, s4, -545
                  sll          a5, sp, t2
                  nop
                  slli         s6, t3, 12
                  slli         t2, s8, 22
                  srli         t5, s11, 1
                  srli         ra, s1, 18
                  slti         t6, t1, 368
                  addi         s5, a1, 1764
                  sra          sp, a6, a1
                  srli         s9, ra, 21
                  andi         s8, t3, -1624
                  add          a5, a7, t2
                  addi         gp, a2, -1513
                  ori          a5, s3, 16
                  xor          tp, a3, a7
                  sra          t5, a4, t0
                  nop
                  lui          a3, 541574
                  ori          gp, a6, -456
                  srl          a3, s9, s2
                  sra          gp, s3, a5
                  sra          t2, a1, s11
                  srli         a7, s8, 8
                  srai         t0, a6, 31
                  sltu         s11, s8, a6
                  slti         t6, tp, -795
                  addi         ra, a5, 821
                  auipc        t0, 665740
                  lui          t5, 944733
                  sltu         t1, s2, s10
                  srai         a0, s7, 15
                  sra          a4, a6, s2
                  auipc        a0, 888034
                  xori         s8, s2, 858
                  slli         gp, s9, 8
                  sra          s11, a1, a3
                  and          s5, t1, t4
                  srli         a3, a0, 20
                  sub          a1, s9, s2
                  and          zero, s11, a0
                  sll          s9, t4, s10
                  sub          t3, t6, a5
                  sra          s5, a4, t1
                  slti         s6, a0, 835
                  xor          t6, t2, a1
                  or           gp, t6, s7
                  and          s6, s2, s10
                  lui          t6, 249338
                  srl          tp, t0, t5
                  srl          s5, t4, sp
                  sra          t3, a7, s7
                  sll          t0, a3, tp
                  or           s2, ra, zero
                  sltiu        a5, s4, -1835
                  sll          a1, t5, s8
                  add          t6, a6, s2
                  sub          a3, s8, s1
                  sub          s1, s0, a3
                  lui          t3, 786151
                  xor          a0, s1, ra
                  slt          tp, a6, s1
                  srli         s2, s10, 19
                  andi         s3, s9, 1002
                  sra          s5, s2, s0
                  and          t5, s3, t5
                  auipc        s7, 696832
                  srli         s8, s9, 21
                  slti         t6, ra, 1175
                  sub          s9, s8, a2
                  slti         s7, s4, -1922
                  slli         a5, a4, 6
                  srli         t6, s6, 6
                  auipc        s4, 920464
                  slti         s11, t1, 1496
                  add          a0, ra, s9
                  slli         a1, ra, 27
                  slli         s11, s1, 28
                  srai         t0, s6, 20
                  auipc        a5, 92466
                  slt          t6, t0, sp
                  slli         s2, t5, 13
                  srli         sp, a4, 28
                  slti         a0, s1, -299
                  sltu         ra, a7, a7
                  slli         a4, a3, 17
                  srai         s3, sp, 4
                  srai         s1, a6, 29
                  srl          a7, s9, s6
                  xor          s11, s6, ra
                  sltu         s4, s5, ra
                  andi         s7, t3, 1083
                  lui          tp, 325509
                  ori          s5, t1, 1705
                  slt          sp, a2, t1
                  or           a4, s4, t3
                  slt          s9, a5, s10
                  lui          sp, 741408
                  lui          a3, 294292
                  srli         t3, t0, 29
                  sltu         a5, a5, ra
                  sltiu        s11, ra, 148
                  lui          a4, 108021
                  nop
                  addi         s2, t4, 390
                  lui          s6, 158805
                  slti         s9, t6, 1788
                  auipc        s8, 970446
                  lui          a3, 294695
                  srai         s7, s7, 27
                  srl          s11, t5, t0
                  sra          s0, a4, t3
                  xori         t1, a5, 1924
                  sltu         tp, s0, s4
                  or           tp, a3, t1
                  ori          t0, t0, -1969
                  nop
                  sra          a4, ra, s4
                  xori         s5, a3, -1410
                  srli         gp, t0, 17
                  sltiu        a6, a0, -704
                  sll          gp, s0, a5
                  auipc        s1, 344771
                  sll          a3, t5, ra
                  xor          s9, ra, zero
                  addi         a7, tp, -565
                  add          s4, t0, s4
                  srai         a7, tp, 15
                  srli         t2, t5, 13
                  ori          s6, t4, -682
                  lui          zero, 189017
                  srai         t3, s11, 20
                  sltu         a7, t5, s7
                  auipc        gp, 347890
                  sltu         a6, s10, s1
                  and          s6, s5, s2
                  sltiu        s6, t0, 1145
                  sll          s0, t0, s1
                  sltu         s4, s10, s1
                  or           s2, t5, a3
                  auipc        a1, 842250
                  lui          s5, 333075
                  sll          t2, tp, s5
                  auipc        t2, 5
                  xori         s0, s1, 1455
                  sltu         t1, s5, t3
                  sltu         s5, t3, s10
                  auipc        t5, 836857
                  andi         s8, s9, -1749
                  sra          s3, s1, a7
                  sll          zero, t1, t5
                  xori         a6, a2, 1733
                  lui          a1, 141181
                  nop
                  addi         t2, s3, -682
                  add          a6, s9, s10
                  andi         a1, a3, 152
                  sll          s2, a7, a3
                  or           t1, t5, s3
                  nop
                  lui          s9, 274074
                  slli         a4, s5, 2
                  xor          s0, s8, ra
                  nop
                  sltiu        a7, t4, 762
                  xori         a7, tp, -1632
                  slti         s8, s3, -766
                  srli         t6, a7, 31
                  sub          tp, s5, a2
                  sltiu        gp, s8, 1658
                  slti         t3, a7, 342
                  auipc        t2, 556886
                  ori          s4, t5, -962
                  srli         tp, t1, 1
                  srai         a7, a6, 30
                  srli         t3, s3, 1
                  addi         s2, s6, 190
                  srl          a0, a2, s2
                  sra          s9, t2, s10
                  slt          t5, s5, s4
                  sub          gp, s4, s11
                  sltu         s3, s3, s8
                  xori         t6, s0, -1122
                  sltu         t6, s8, s7
                  and          s11, sp, a5
                  srl          s2, s2, s1
                  auipc        a3, 33796
                  srli         gp, sp, 19
                  sltu         a5, s6, s9
                  srai         t3, s1, 8
                  sll          a6, s9, s0
                  addi         a7, s1, -2001
                  auipc        a7, 104502
                  ori          s11, s9, -1366
                  slti         a4, a1, -1113
                  srli         s2, t5, 26
                  sll          tp, s0, a2
                  sltiu        s8, t4, -1111
                  sltiu        s5, a0, -1596
                  slti         a0, a5, 1865
                  slti         gp, t6, -30
                  sltiu        s4, t0, 226
                  sll          s0, s11, s3
                  srli         t6, s10, 30
                  slli         s4, s11, 11
                  nop
                  xor          a1, s0, a5
                  ori          a0, s1, 1158
                  or           tp, zero, t1
                  ori          tp, ra, -2013
                  slti         t2, a7, -52
                  add          s0, a5, tp
                  sra          a5, s8, s11
                  sra          a6, gp, s8
                  xori         a7, s6, -483
                  xori         a7, t6, 1736
                  sltiu        t1, t5, 1543
                  ori          zero, s11, -1720
                  or           a3, a6, a1
                  andi         t0, gp, 902
                  sub          t1, t5, zero
                  sll          gp, sp, tp
                  lui          t5, 749569
                  sll          s3, sp, s4
                  sltiu        a0, a2, -704
                  nop
                  srli         s1, a2, 23
                  xor          a6, a0, t4
                  sltu         s8, gp, a5
                  srl          a7, s4, a2
                  and          s1, t2, t1
                  and          zero, ra, ra
                  xor          a1, s3, s5
                  or           s3, s1, a2
                  sll          s4, sp, a1
                  slli         a1, a4, 2
                  slti         t3, s11, -633
                  addi         s11, sp, 628
                  auipc        s8, 53913
                  sltiu        t2, s9, -1982
                  or           t2, s11, s11
                  addi         s4, t0, 1014
                  auipc        s6, 611543
                  srai         ra, s5, 5
                  lui          a3, 294250
                  slti         a5, s2, -27
                  srl          t2, t6, a0
                  addi         ra, a7, -1168
                  sltu         t5, a5, t4
                  xor          a0, t5, a1
                  srl          a5, a1, t2
                  srai         a0, s5, 23
                  andi         t5, t1, -731
                  slti         t5, a3, 905
                  sll          t6, ra, sp
                  sltiu        tp, a3, 428
                  add          s11, a4, t6
                  xori         t0, t6, -201
                  sub          s7, a7, t6
                  ori          a1, a1, 220
                  lui          gp, 411355
                  sltiu        a7, t6, 175
                  add          a5, ra, t3
                  ori          a4, s1, -1384
                  srl          s4, tp, s7
                  srl          a3, s8, s2
                  sub          ra, sp, s6
                  or           a1, gp, s0
                  and          a1, a1, a6
                  and          t1, s3, s2
                  auipc        s3, 236705
                  sltiu        t0, a0, -2001
                  ori          zero, sp, -478
                  sll          t3, s10, s10
                  or           s7, t5, s0
                  add          s6, t2, sp
                  slti         a1, sp, 687
                  xori         s7, t5, -1367
                  sub          s9, t3, t1
                  addi         s0, a4, 268
                  srli         t6, s1, 2
                  srli         a0, t1, 11
                  or           t0, a1, tp
                  srli         s1, a1, 21
                  slli         sp, a3, 19
                  sll          a6, s11, a3
                  lui          s5, 790669
                  addi         sp, zero, 877
                  add          s1, a1, s1
                  srai         t6, s11, 24
                  sltiu        a0, gp, -192
                  sub          s4, s7, a4
                  ori          a4, a2, -127
                  add          s6, s11, a0
                  sll          s0, s0, a0
                  sltu         s1, a7, tp
                  andi         zero, t6, -1208
                  srl          t3, zero, zero
                  slt          t5, a7, s10
                  sra          s8, s9, t4
                  sub          t1, s5, t4
                  sll          tp, s0, t2
                  sltu         s8, s8, a0
                  andi         s1, a7, -1229
                  sra          s4, tp, s2
                  auipc        t5, 843903
                  andi         s5, a4, 1854
                  sltu         t0, a4, t1
                  andi         s1, s2, -1331
                  slli         ra, t1, 13
                  xor          a6, s9, s1
                  sll          a6, s2, a1
                  srai         t3, t3, 20
                  srli         a4, ra, 12
                  slt          s11, t2, s10
                  srl          s9, a6, s5
                  xor          tp, t0, a5
                  srai         a5, gp, 13
                  slt          tp, s7, s2
                  slti         gp, zero, 305
                  lui          sp, 382391
                  slt          ra, s0, s3
                  ori          s8, a7, -566
                  srl          sp, a5, zero
                  srai         s11, sp, 8
                  add          a0, t4, t4
                  ori          a7, s8, -78
                  auipc        a5, 159166
                  addi         a7, a7, 1647
                  andi         tp, a5, 583
                  auipc        ra, 990809
                  srli         zero, s11, 19
                  sltu         a7, s9, s6
                  sltu         s9, t4, zero
                  andi         t3, s6, -1829
                  auipc        a3, 818394
                  xor          t1, zero, t4
                  add          t3, a0, ra
                  auipc        s5, 308131
                  slli         tp, a2, 24
                  add          a7, a6, s4
                  nop
                  srai         t1, ra, 8
                  andi         t5, s11, 1456
                  xor          a1, a4, a6
                  lui          t1, 1036915
                  and          s8, s1, gp
                  addi         s6, s5, 1457
                  lui          tp, 49000
                  xori         s2, a7, 1875
                  sltiu        tp, s6, 689
                  sub          s11, s6, s10
                  sltiu        s7, a7, -1059
                  slt          s8, a7, a1
                  auipc        s4, 358029
                  addi         a7, s10, 957
                  srl          a1, t0, t5
                  srl          s2, gp, ra
                  sltu         a1, s3, a7
                  srli         s7, a6, 20
                  sll          t1, a5, s4
                  sltu         a6, t0, t4
                  sub          s8, s10, s7
                  srai         s8, t2, 15
                  auipc        s9, 755239
                  srai         sp, s6, 17
                  addi         ra, t5, 181
                  srl          a4, a5, t1
                  srl          zero, s2, sp
                  nop
                  sltiu        s0, t6, 1826
                  xori         s3, s4, -1750
                  slti         t3, a6, -1997
                  and          t6, s7, s7
                  and          tp, a0, a3
                  xor          t0, s2, s8
                  xor          t3, t4, s1
                  add          a0, s3, a6
                  li           t1, 0xa077213b #start riscv_int_numeric_corner_stream_9
                  li           gp, 0xffffffff
                  li           ra, 0x80000000
                  li           a5, 0xffffffff
                  li           a6, 0xffffffff
                  li           a1, 0xffffffff
                  li           s11, 0x0
                  li           s7, 0x0
                  li           s3, 0x80000000
                  li           t3, 0xffffffff
                  lui          a1, 744741
                  auipc        s3, 162523
                  lui          s7, 37775
                  sub          a1, s7, a1
                  auipc        a5, 268566
                  addi         t1, a5, 937
                  add          s3, a6, a1
                  sub          a6, gp, gp
                  nop
                  add          s11, s3, s3
                  lui          ra, 1031106
                  addi         t3, s7, -300
                  lui          a5, 565021
                  sub          gp, a1, s11
                  lui          a1, 705861
                  sub          a1, t3, t3
                  lui          a1, 403392
                  auipc        a5, 371280 #end riscv_int_numeric_corner_stream_9
                  srli         t5, s10, 16
                  srl          s5, s10, s3
                  lui          t5, 559972
                  srai         zero, t1, 9
                  or           s4, s8, t0
                  slli         s6, s11, 30
                  auipc        s7, 1027044
                  add          s9, a2, s4
                  slli         zero, s6, 24
                  xori         a3, a4, -606
                  ori          zero, a2, -690
                  xor          zero, s8, s6
                  sll          t1, a5, s9
                  lui          t0, 883268
                  srli         t3, gp, 19
                  sltu         s3, s9, a6
                  slli         a3, a3, 31
                  lui          t2, 817209
                  xori         t6, s11, 956
                  sll          a0, s4, s5
                  sll          a5, a2, a4
                  or           s8, t0, a2
                  sll          t3, s6, a2
                  and          t5, a6, s8
                  nop
                  sra          gp, t2, t6
                  slli         t6, a1, 25
                  sltu         t5, s10, s3
                  sra          s6, tp, zero
                  sub          a5, a5, s5
                  sltiu        s4, a4, 660
                  sltu         s1, a6, ra
                  and          ra, a7, t1
                  andi         s7, a6, 1455
                  sra          t1, s6, s7
                  nop
                  srl          t6, a7, t2
                  andi         s11, a5, -120
                  ori          a5, s10, -1681
                  sltu         gp, s4, s4
                  slti         t0, t0, -824
                  srli         s5, tp, 6
                  sra          t2, t1, s5
                  addi         a3, s9, 613
                  add          a6, t1, s6
                  sll          s6, ra, gp
                  xori         tp, ra, -1539
                  andi         s1, s1, -334
                  sltu         s11, s6, ra
                  sltu         t5, a7, t0
                  addi         s9, a0, -1638
                  add          s3, s1, t2
                  addi         s8, tp, -945
                  xori         a1, a4, -1437
                  addi         s8, t6, 1382
                  xor          sp, s3, t0
                  sub          s1, t5, s5
                  auipc        sp, 203434
                  sltiu        t3, s4, 899
                  sltu         t0, sp, a2
                  ori          a1, a4, 1125
                  srai         t0, t3, 21
                  lui          t2, 1044437
                  sll          t2, s10, ra
                  slli         t0, t5, 18
                  addi         s1, s7, -356
                  nop
                  sra          s1, a7, t6
                  slt          t3, zero, t1
                  andi         t2, t6, 690
                  add          zero, s6, s6
                  sll          t3, s11, t6
                  add          s9, ra, s7
                  add          s0, sp, s5
                  addi         s2, zero, -497
                  ori          a6, s8, -1333
                  and          t5, t6, s0
                  slt          ra, s6, a2
                  addi         t2, t0, 1991
                  auipc        a7, 999945
                  sll          a0, t3, t1
                  auipc        a6, 724320
                  srli         s7, tp, 24
                  sub          a7, s4, tp
                  slt          s4, a0, s9
                  andi         a6, a2, 1796
                  slli         t2, s5, 21
                  sub          t0, tp, s9
                  sll          s4, s10, a4
                  srai         s5, s6, 10
                  sll          a7, s1, sp
                  sltu         a5, t4, s0
                  lui          sp, 35604
                  andi         s11, a4, 195
                  xor          zero, s7, t5
                  addi         t3, a2, -630
                  xori         t0, tp, 216
                  and          a3, t0, zero
                  srl          t0, s9, s6
                  addi         a0, a6, 1708
                  andi         t6, a6, -1893
                  and          s3, t6, t0
                  srl          s5, a7, s3
                  add          a7, t3, s10
                  srl          s5, a4, s7
                  slli         a6, t5, 31
                  slli         a4, t6, 19
                  srai         s8, a1, 4
                  srli         s2, s4, 22
                  sra          s9, t6, sp
                  slt          t0, t4, s3
                  sub          a6, tp, t4
                  or           zero, a7, tp
                  xor          s7, s6, s1
                  srai         s2, t0, 22
                  nop
                  and          s3, s10, s10
                  sra          a3, ra, s3
                  auipc        t6, 955751
                  sltu         s6, a3, s5
                  auipc        a1, 261529
                  srli         s2, t0, 17
                  sltiu        a0, t4, -155
                  lui          s5, 702608
                  nop
                  addi         a1, a5, -1643
                  nop
                  sltiu        t5, s8, -1727
                  nop
                  add          tp, s5, zero
                  xor          a4, gp, zero
                  sub          s3, a4, ra
                  nop
                  srli         s6, a2, 6
                  nop
                  slli         a6, a0, 6
                  add          a0, a4, s0
                  srli         s1, t0, 10
                  sltu         s5, s9, t6
                  sltiu        a5, zero, 63
                  andi         a7, s8, -522
                  srai         s8, t5, 28
                  slti         s6, t3, -1803
                  sltiu        s11, a7, 1470
                  slli         s9, t5, 16
                  srli         t0, s5, 17
                  auipc        s2, 1019242
                  srai         s4, a4, 16
                  ori          tp, a1, 920
                  auipc        s0, 759572
                  srl          sp, zero, a2
                  sub          s11, t5, a2
                  sub          a3, s9, tp
                  sltu         s11, t3, zero
                  add          a6, a7, t6
                  auipc        a5, 85287
                  sltu         t1, a6, a0
                  slt          a0, t3, a1
                  sra          s9, gp, a1
                  xor          t2, a0, s3
                  ori          gp, s4, 1495
                  xor          t6, s8, a4
                  nop
                  sub          t0, a7, a7
                  xor          s8, t3, s11
                  lui          s7, 889474
                  lui          sp, 160639
                  slt          s7, a5, s7
                  sltiu        a5, tp, -1654
                  slti         a6, ra, -920
                  and          t2, a4, a1
                  sra          a1, s4, a6
                  ori          t1, a0, 206
                  sltu         s4, t2, a1
                  andi         t1, s1, 1130
                  srai         s7, s2, 1
                  slt          t5, t3, ra
                  nop
                  slti         t3, a4, -699
                  addi         a4, t5, 1351
                  add          a0, a4, s3
                  slti         t6, s7, -149
                  slli         zero, t1, 10
                  sltiu        a5, t0, -475
                  lui          a1, 585818
                  sltu         t3, s11, t1
                  slt          s6, a5, s5
                  add          s8, t4, t5
                  sll          s4, s7, a0
                  sltu         s2, a4, s11
                  sltu         a6, s9, s7
                  ori          s5, sp, 918
                  sra          zero, t0, t5
                  sra          t6, a5, s3
                  add          s5, a4, a4
                  srl          s8, s9, s10
                  or           s0, a1, s3
                  sltu         zero, a2, a5
                  sltu         s1, s9, s0
                  sltu         s3, s7, s5
                  xori         t6, a0, -1830
                  slti         s4, t0, 608
                  nop
                  slt          zero, a3, gp
                  xor          a3, sp, t1
                  sltu         s0, a6, s11
                  xor          a5, t1, tp
                  srai         a6, a0, 25
                  sltiu        a4, t1, -753
                  lui          a6, 748193
                  sra          a6, s10, s0
                  ori          ra, s10, -446
                  slti         a0, sp, 337
                  and          t5, tp, t0
                  xori         t1, a0, 65
                  auipc        s7, 709570
                  slti         t0, a1, 606
                  slli         t1, a0, 10
                  sub          t0, ra, a3
                  addi         a7, s8, -980
                  auipc        t3, 674340
                  ori          gp, a6, 643
                  sltu         s3, a0, s1
                  srai         s5, a0, 23
                  auipc        s9, 955272
                  slt          t6, s11, a1
                  sub          ra, s0, a3
                  or           a6, a3, s9
                  xori         zero, a6, 923
                  slti         s8, zero, 1580
                  slt          t0, t5, a0
                  sll          a1, sp, t3
                  and          s0, gp, a4
                  xori         t0, s0, 1820
                  slt          s11, t6, zero
                  xori         s3, tp, 547
                  slt          a0, t4, a6
                  sll          a0, t6, a6
                  lui          s6, 675988
                  and          gp, s2, zero
                  srli         a5, a4, 22
                  and          tp, t0, s1
                  and          a0, zero, s10
                  lui          t3, 765308
                  slti         a4, a1, 1461
                  slt          t3, s11, s11
                  or           gp, t2, gp
                  sll          s4, t1, ra
                  srl          s7, a3, a3
                  slli         t1, tp, 28
                  auipc        t6, 717685
                  srl          a6, s9, t4
                  sra          s2, s11, s2
                  auipc        sp, 686816
                  sll          s9, t2, t0
                  nop
                  andi         a4, s11, -238
                  sltiu        t0, a2, 713
                  sra          t0, a2, t2
                  sra          a5, s11, s8
                  sra          a0, s3, s0
                  sll          s2, a3, gp
                  add          s7, s8, t0
                  sra          s0, s7, s9
                  srl          a4, zero, s11
                  sltu         t6, s3, a5
                  add          s2, s0, t6
                  and          s9, gp, a6
                  sltiu        s2, a4, 291
                  auipc        s1, 157430
                  auipc        zero, 1037987
                  and          a5, sp, zero
                  slt          s3, gp, t6
                  sltiu        s3, t2, -563
                  slt          zero, a2, a7
                  slli         s1, a2, 10
                  nop
                  add          s1, gp, a6
                  srl          s9, a2, zero
                  addi         t3, s4, 1295
                  auipc        a7, 451078
                  slli         a1, a4, 1
                  slt          s5, s3, a2
                  slli         a4, s7, 9
                  slt          a6, s0, a7
                  sub          s11, a6, tp
                  slt          t0, s7, s10
                  slt          gp, zero, s8
                  andi         s8, s2, 1808
                  srl          t0, s2, s9
                  slti         t0, a7, 1836
                  addi         s7, a6, 771
                  sltu         t6, ra, a6
                  ori          a0, ra, -31
                  nop
                  slti         a7, sp, -1090
                  ori          t3, s8, -200
                  srli         t2, t5, 12
                  srai         gp, s0, 26
                  sltu         a1, s7, s3
                  and          s3, t5, s5
                  ori          tp, sp, 276
                  srl          t3, a1, a5
                  sltiu        s9, s3, 1122
                  sltu         s11, s10, t0
                  slli         a3, s7, 30
                  xori         t3, a4, 1560
                  addi         s2, t2, -1423
                  sll          t2, t2, a6
                  sll          tp, a1, a6
                  slt          s9, tp, gp
                  lui          t5, 558820
                  slli         a7, s4, 4
                  nop
                  slli         s5, a2, 10
                  ori          t2, a1, -590
                  xor          s9, sp, a6
                  slt          s11, s1, t0
                  slt          a6, s9, ra
                  nop
                  add          s11, t1, a0
                  auipc        a7, 979201
                  or           t0, s10, s0
                  sll          t5, s1, t6
                  ori          s4, s11, 1098
                  xori         t6, s1, 628
                  xori         s1, s5, 707
                  srli         t5, s1, 10
                  sll          a0, t0, a2
                  slli         a7, s4, 16
                  or           a0, s10, t1
                  slt          a3, s11, a1
                  srl          a1, a0, t2
                  addi         a5, a3, -1262
                  nop
                  xor          t3, s2, t6
                  auipc        a3, 950400
                  sll          s5, s7, a4
                  and          s5, t5, t2
                  sltiu        a3, sp, 1662
                  add          s4, a3, s2
                  sll          t2, s3, zero
                  sub          a7, a2, gp
                  srai         a7, a5, 1
                  or           s2, a4, sp
                  lui          t1, 169670
                  addi         a5, s1, -840
                  xor          a0, t2, s8
                  srai         sp, s7, 15
                  lui          t0, 548949
                  andi         t2, s11, -777
                  srli         s9, s11, 1
                  xor          a7, t0, s1
                  sub          s9, a1, s3
                  and          t1, tp, a5
                  addi         s8, s5, -1673
                  lui          a1, 377338
                  andi         gp, a7, -1967
                  or           s0, t4, t0
                  sltiu        t5, t1, -196
                  slt          s4, s1, s3
                  xor          ra, a2, a1
                  add          t5, a3, s2
                  slt          a7, sp, t6
                  xori         s9, s3, 495
                  addi         tp, ra, 1137
                  andi         s6, s2, -292
                  xori         gp, s5, 1610
                  ori          t2, t1, 644
                  xori         s0, a4, -957
                  auipc        zero, 987393
                  nop
                  srl          a1, a7, s8
                  and          a1, t2, zero
                  andi         t1, sp, -1762
                  or           tp, gp, ra
                  auipc        s0, 503579
                  add          a0, s5, s11
                  addi         t0, a1, 1398
                  srl          t1, s11, sp
                  andi         a5, a0, -614
                  sll          a5, t1, a3
                  sltu         a6, t1, s8
                  srl          tp, a0, s4
                  sltu         a7, s8, a6
                  ori          s8, a0, -1110
                  srli         a6, t3, 16
                  srai         t1, s0, 25
                  sltiu        s7, s2, -1885
                  ori          sp, s10, -276
                  sll          a6, s11, ra
                  xori         zero, gp, 1732
                  andi         t1, s1, 368
                  addi         s7, a1, 393
                  slli         a1, s9, 25
                  srl          s1, s10, s7
                  xori         zero, s10, 678
                  slti         tp, t3, -1817
                  slli         s4, a4, 17
                  andi         s2, sp, 1121
                  and          s2, t5, ra
                  nop
                  auipc        ra, 374378
                  sltu         sp, a4, s0
                  slti         s7, s4, 1039
                  sll          s9, t3, a2
                  ori          s3, a3, 2032
                  sltiu        a1, sp, -2047
                  slli         a7, a6, 21
                  addi         s0, t2, -1682
                  sltiu        s11, a6, 100
                  lui          tp, 3871
                  slli         a4, t2, 21
                  auipc        a1, 50780
                  andi         a4, s2, -2025
                  slt          zero, gp, s9
                  srli         s3, t6, 29
                  sltiu        s1, sp, 1125
                  nop
                  and          t3, a5, t6
                  sltiu        t1, a1, 29
                  slt          t1, s5, gp
                  sub          a3, t1, t0
                  auipc        s2, 16993
                  sll          t2, s1, a3
                  slti         t0, a6, -1755
                  add          s6, s2, t4
                  sltu         a1, t2, s10
                  lui          tp, 544443
                  andi         a4, t4, -935
                  andi         s8, s1, 1165
                  srl          tp, s0, a6
                  sltu         a4, s11, s10
                  auipc        sp, 520001
                  sra          a1, s11, s7
                  sll          t6, t4, ra
                  ori          s4, a0, 1520
                  xori         s1, a7, -351
                  auipc        zero, 615948
                  slt          s9, sp, ra
                  xor          sp, gp, s10
                  andi         s6, t0, -1523
                  ori          s1, s11, 1685
                  sll          s6, a5, t5
                  srli         s2, a1, 23
                  lui          s6, 77031
                  addi         t6, t0, -1308
                  srai         a1, s9, 28
                  lui          a3, 456312
                  and          s6, t0, s9
                  slti         t6, s5, 1729
                  or           a4, t2, a5
                  and          s8, gp, s11
                  srl          a1, zero, zero
                  slt          s11, a4, a0
                  sra          ra, ra, zero
                  slti         a7, ra, 390
                  add          tp, a0, tp
                  srai         gp, sp, 7
                  sltiu        t3, s2, 1233
                  lui          a1, 351858
                  add          s9, a3, t2
                  srl          a4, a1, s10
                  ori          a4, a6, -265
                  xor          a0, a3, s3
                  xori         s9, a1, 256
                  lui          tp, 735551
                  auipc        s9, 381064
                  slt          a5, s6, t6
                  sltiu        s11, sp, 1438
                  slti         s3, t4, 901
                  sltu         a6, s2, t4
                  sltiu        ra, s11, 906
                  slli         a7, sp, 17
                  sll          t0, s1, s0
                  lui          ra, 41692
                  slt          t0, ra, s6
                  or           a7, a1, s4
                  lui          gp, 900720
                  slti         t3, gp, 1610
                  or           a7, s6, a7
                  and          tp, s10, t5
                  srl          t2, a5, s4
                  ori          a0, s6, -470
                  addi         s4, s2, 788
                  or           s2, tp, s4
                  sra          zero, a7, a1
                  sra          s3, t1, s1
                  srl          a4, a0, ra
                  nop
                  sll          s8, t3, s6
                  nop
                  sll          s5, a5, s1
                  slt          a3, t5, s8
                  xori         s3, s6, 1077
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           s9, 0x0
                  li           s8, 0x80000000
                  li           t0, 0x0
                  li           s3, 0xffffffff
                  li           a3, 0x80000000
                  li           s6, 0xffffffff
                  li           s2, 0xffffffff
                  li           a6, 0x80000000
                  li           a1, 0xffffffff
                  nop
                  addi         s9, a6, -1462
                  addi         s9, a3, -1227
                  auipc        t0, 968633
                  lui          a6, 1047043
                  auipc        a3, 990672
                  sub          s3, s3, s9
                  nop
                  sub          s7, s7, a3
                  add          a6, s7, s2
                  auipc        s3, 634762
                  nop
                  add          a1, s7, s3
                  sub          a1, s6, s7
                  sub          s3, s2, s8 #end riscv_int_numeric_corner_stream_2
                  xori         s2, s3, 969
                  sltiu        a7, a4, -825
                  srai         s1, s11, 21
                  slli         s0, t0, 23
                  sll          s2, t2, a3
                  slli         a3, t2, 0
                  sltiu        s2, s7, -1408
                  or           sp, zero, s6
                  xor          gp, a1, a6
                  srl          a1, a5, s5
                  sltu         t3, sp, s6
                  andi         zero, a0, -1600
                  sll          sp, s2, a7
                  and          t6, s7, gp
                  xori         s2, a5, -612
                  sub          sp, a1, a6
                  or           t0, s10, t4
                  nop
                  xor          tp, zero, a0
                  lui          s11, 382662
                  sltu         gp, s8, s2
                  nop
                  sub          s11, s3, t0
                  xor          t3, a0, a4
                  srli         s6, s9, 25
                  slti         t3, s2, 874
                  addi         s11, s5, -429
                  sltiu        a6, t1, 714
                  slli         t2, s9, 3
                  srli         a6, a1, 30
                  xor          t2, ra, t2
                  sra          gp, zero, t0
                  and          t5, s10, s4
                  andi         t0, s8, 330
                  xor          s8, a0, t0
                  add          a0, t6, s6
                  slt          a4, a3, sp
                  auipc        a4, 267488
                  or           s6, t0, a2
                  slli         t5, sp, 3
                  srli         a0, a5, 13
                  add          s5, zero, t3
                  ori          gp, s4, -990
                  slt          s2, ra, a6
                  sra          a7, a6, s8
                  slt          t5, a1, s0
                  slli         a5, a7, 23
                  srai         s11, t1, 1
                  ori          t6, s7, -522
                  addi         s2, a2, 728
                  ori          t2, a7, 615
                  sltiu        ra, s8, 134
                  xori         a4, a1, -814
                  or           t0, t4, s5
                  slti         a3, t6, 135
                  xor          a1, zero, a6
                  slti         zero, s1, 1474
                  sll          a3, tp, a5
                  lui          t5, 961762
                  and          s11, t4, a2
                  or           t1, s6, a6
                  sltu         s9, s4, a4
                  slt          s6, a4, a1
                  sll          a4, a1, a5
                  or           a6, t2, a1
                  auipc        t3, 418838
                  slli         s5, sp, 8
                  srai         s6, a4, 29
                  slt          a0, ra, a3
                  or           t5, s11, s9
                  sll          sp, a4, t4
                  addi         a0, s10, -786
                  sll          t3, s8, zero
                  addi         a4, tp, 301
                  slti         s2, t1, -702
                  sll          s4, s9, a4
                  srai         a6, s3, 9
                  srli         a0, a4, 8
                  srli         s8, a0, 13
                  xori         a5, a0, 579
                  slli         s4, t4, 13
                  srai         s0, tp, 25
                  add          t3, a6, a3
                  andi         s6, a3, -1685
                  andi         s11, s1, 1672
                  nop
                  addi         s11, s2, -1661
                  slt          s1, s5, s2
                  srl          a3, a1, s6
                  auipc        t6, 395422
                  add          s3, s3, sp
                  and          zero, t4, t3
                  auipc        s11, 392939
                  ori          a7, s10, 482
                  sltiu        a6, s0, -1016
                  srli         s4, t1, 5
                  srli         a3, s9, 14
                  sub          t5, s8, s9
                  or           s8, s3, t3
                  lui          a6, 871875
                  addi         s0, s7, -1464
                  sltu         a0, s2, a5
                  slti         a4, gp, 1927
                  sltu         a0, t2, s11
                  xor          a6, a0, s0
                  add          tp, s5, zero
                  slti         s5, s5, -40
                  sll          a4, s2, s8
                  nop
                  srai         s7, a7, 31
                  add          s0, t6, a1
                  addi         s5, s2, 1368
                  slli         tp, s1, 30
                  srai         t0, s11, 21
                  nop
                  sub          s11, t0, s0
                  auipc        a3, 387556
                  lui          gp, 563882
                  slti         s11, s4, -68
                  srl          a6, zero, t1
                  srai         t1, t0, 17
                  nop
                  lui          sp, 806160
                  andi         a4, a5, 938
                  sra          s2, s5, a0
                  sra          s8, t2, t1
                  sltiu        t0, s5, -445
                  sltu         s5, a4, s2
                  srli         a4, s0, 6
                  sll          s7, a3, t4
                  sltu         gp, s7, tp
                  sll          s1, a6, a1
                  add          zero, t4, s7
                  sra          ra, t1, sp
                  sra          s2, s3, t5
                  lui          s7, 239792
                  andi         sp, s11, -2005
                  sltu         a5, s8, s2
                  or           a1, t0, s2
                  or           t2, t1, sp
                  andi         s3, ra, -308
                  addi         a0, a4, -1828
                  sra          s6, s9, a3
                  and          a7, t5, s0
                  srai         a3, t3, 29
                  sltiu        t6, s6, -1685
                  andi         a6, s4, 1132
                  nop
                  auipc        a1, 843811
                  xori         t5, gp, 666
                  xori         s4, s11, 1681
                  or           gp, t2, s7
                  srl          t6, a4, s6
                  ori          t3, s0, 1387
                  sra          s8, gp, s3
                  auipc        a6, 415235
                  lui          a3, 604815
                  sll          a4, s7, a4
                  sra          s7, s2, gp
                  sll          t6, s1, sp
                  add          s7, gp, s11
                  sub          t2, t0, t4
                  srai         ra, t3, 5
                  srl          s11, s8, ra
                  and          s8, gp, a3
                  lui          s0, 650019
                  and          zero, sp, s9
                  sltiu        a5, s5, -878
                  addi         a7, s0, 714
                  and          t5, ra, t0
                  srl          s4, s6, s3
                  slli         a0, s7, 14
                  srl          a4, t2, ra
                  slti         s5, s9, 183
                  xori         tp, s7, -1179
                  srl          t1, s9, gp
                  slt          tp, t2, s1
                  and          t5, t6, a4
                  addi         s0, ra, 77
                  srli         a0, a0, 25
                  ori          s2, tp, 362
                  slti         a4, s10, -516
                  or           s1, a0, s8
                  auipc        s6, 473646
                  ori          t1, a0, 1785
                  sll          a4, a0, t2
                  slti         s1, s8, -1777
                  nop
                  srl          a0, a1, a6
                  xori         s1, s6, 300
                  xori         t1, gp, -290
                  slli         s1, t4, 2
                  xori         a6, gp, -730
                  or           a0, a0, a5
                  srl          a6, s6, t5
                  add          t1, a6, t5
                  and          s6, a7, s1
                  add          s5, sp, a1
                  nop
                  and          t1, s1, s3
                  sub          s3, s7, s2
                  nop
                  sltu         s3, t3, t0
                  slli         sp, t0, 3
                  sub          s2, s7, s6
                  slti         t6, a3, -1126
                  lui          t0, 853193
                  srl          s0, ra, s6
                  nop
                  andi         s11, a1, 690
                  slt          s9, t5, gp
                  slt          a6, s5, a5
                  srl          t0, a4, s6
                  srl          s6, s0, s2
                  sltiu        a6, s10, 1419
                  addi         t6, s1, 1898
                  add          gp, s4, s8
                  slti         a0, ra, 1244
                  or           s3, tp, s3
                  sra          tp, s2, t5
                  or           s9, t6, a7
                  slli         t5, s6, 28
                  andi         t5, a4, 1883
                  lui          a4, 228102
                  add          t6, s3, t3
                  xor          a1, t0, gp
                  srai         a5, zero, 4
                  srl          zero, s11, s9
                  srli         a6, sp, 24
                  sltu         s11, a0, s3
                  slli         s1, s7, 3
                  sll          a6, a7, s0
                  xori         s4, t1, -1340
                  xor          t5, s6, s3
                  xori         a3, s10, 1320
                  lui          gp, 891432
                  xor          s9, t0, sp
                  srl          s4, s5, a3
                  slti         s5, a2, 381
                  ori          s9, ra, -1859
                  lui          t6, 419189
                  slti         a0, a5, -1420
                  sltiu        tp, tp, -906
                  sll          zero, tp, a2
                  sltu         ra, s5, a2
                  srli         t1, s2, 19
                  xor          s0, s5, a5
                  auipc        t2, 780851
                  sub          s8, gp, s6
                  ori          t6, zero, -1860
                  andi         t6, a0, -15
                  sll          t3, t5, a1
                  auipc        a7, 702138
                  and          a5, s0, a1
                  srl          t1, ra, t3
                  and          a7, s4, s3
                  srl          s4, t6, s6
                  lui          s1, 900324
                  sltu         a4, a5, s11
                  sll          ra, a1, t0
                  andi         a3, s10, -1697
                  slt          s5, gp, s3
                  and          s8, gp, a0
                  lui          a6, 468184
                  add          sp, s11, s3
                  andi         s5, a5, 86
                  srl          s11, a5, a1
                  sltu         a1, s2, a2
                  sltu         t5, s1, gp
                  sra          s7, t6, a4
                  srai         a1, gp, 26
                  srl          s1, t4, s5
                  sltiu        s2, t0, -1957
                  and          s4, s1, a3
                  sltu         s1, a1, a0
                  srli         s2, s3, 13
                  slti         t5, tp, -1816
                  or           s2, a1, a3
                  sltiu        t1, a5, -471
                  sub          s5, t4, s3
                  slli         a7, sp, 29
                  sltu         s11, s3, a0
                  sra          s7, a3, s10
                  addi         s0, a5, 1943
                  sll          a3, s7, t4
                  ori          zero, a7, -1734
                  sltiu        gp, t4, 187
                  xori         zero, t3, 1730
                  andi         t1, tp, 1188
                  andi         s3, a6, -639
                  slt          a1, s4, ra
                  sll          a6, s6, t3
                  lui          s6, 679398
                  nop
                  xor          t5, s8, t4
                  slt          t3, s6, gp
                  sub          tp, t5, tp
                  xor          a0, a3, s9
                  srai         a6, t5, 3
                  sltu         a0, zero, a2
                  and          a4, a6, a1
                  sra          s0, a7, t5
                  auipc        s1, 177383
                  or           s3, ra, t4
                  add          t2, t6, s9
                  xori         s11, t3, 875
                  slti         s7, a7, -329
                  sltiu        a1, t6, 13
                  ori          s2, s4, 1874
                  xori         s4, ra, 1313
                  sub          s1, gp, zero
                  srli         s1, s6, 25
                  sltu         s0, s3, t6
                  srai         a0, a0, 11
                  srl          zero, a4, t0
                  or           s9, s7, ra
                  or           s0, s10, s4
                  or           t1, tp, gp
                  ori          s2, s0, -1007
                  auipc        s7, 1022710
                  srai         s4, t1, 30
                  or           s11, sp, s7
                  slt          s2, t6, s7
                  add          a0, s7, a2
                  andi         a0, s3, 1730
                  sltiu        zero, s9, -88
                  nop
                  sub          s5, t4, s11
                  andi         s8, s8, 507
                  sub          a7, s2, t1
                  sub          s1, sp, s1
                  xor          s7, s9, s8
                  sltiu        t5, s10, -505
                  xori         s5, s9, -994
                  sltiu        gp, tp, -1432
                  xor          s3, s7, a0
                  add          s11, s4, a2
                  andi         s2, a2, 193
                  srl          a1, s2, a4
                  lui          ra, 92840
                  add          s5, ra, t4
                  add          ra, t5, s2
                  nop
                  auipc        s11, 883751
                  sltiu        a0, gp, 1734
                  or           s8, a6, t4
                  slti         s1, a3, -1112
                  sra          s6, t5, a7
                  slli         s1, sp, 1
                  sll          t2, s3, s11
                  slt          t1, a1, t6
                  sub          gp, a7, a6
                  sltiu        s0, s10, 1227
                  add          s2, ra, ra
                  sll          a3, s8, s10
                  srai         gp, t0, 12
                  sll          t6, gp, s7
                  sll          tp, s5, a1
                  auipc        tp, 319882
                  sub          ra, ra, t1
                  and          tp, s2, t0
                  ori          tp, s10, 1925
                  slti         s0, s1, -413
                  or           zero, gp, t0
                  nop
                  slli         t2, a3, 24
                  slti         s5, s10, -998
                  srl          gp, s2, s1
                  andi         s2, sp, 1923
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           s7, 0x0
                  li           t0, 0xffffffff
                  li           s6, 0x0
                  li           ra, 0xc5114568
                  li           s1, 0x0
                  li           s0, 0x6c1b1d79
                  li           tp, 0x0
                  li           sp, 0x995991c0
                  li           gp, 0xdcba1b83
                  auipc        s6, 225768
                  sub          sp, s0, s1
                  nop
                  auipc        t0, 1026436
                  add          gp, ra, s0
                  lui          gp, 321990
                  addi         gp, s1, -514
                  sub          sp, ra, s7
                  nop
                  auipc        gp, 138411
                  add          s7, a5, tp
                  lui          s1, 419626
                  sub          gp, sp, s0
                  add          a5, s1, s0
                  auipc        s7, 604416
                  add          sp, s0, t0
                  sub          ra, a5, s7
                  addi         s0, s6, 701
                  addi         s1, t0, -392
                  nop
                  lui          a5, 4816
                  lui          s6, 175596
                  nop
                  sub          s1, sp, t0
                  add          s6, a5, tp
                  add          s1, a5, s1
                  add          s6, sp, tp
                  lui          sp, 785396 #end riscv_int_numeric_corner_stream_8
                  or           sp, t0, t6
                  auipc        t5, 169904
                  sub          t1, a6, gp
                  sra          a1, a1, a3
                  sltu         a6, gp, gp
                  addi         a1, a0, -1228
                  auipc        t1, 467453
                  and          t1, a5, t0
                  lui          s9, 257469
                  auipc        s7, 82983
                  slt          t1, s10, s0
                  sltu         a0, s6, sp
                  sra          s7, s10, a5
                  and          a5, s6, s2
                  nop
                  auipc        a6, 437596
                  addi         a6, s2, 179
                  xori         t1, t0, -1441
                  srl          s8, a5, t4
                  or           t0, t4, s10
                  lui          s3, 771707
                  sltu         sp, s11, ra
                  srai         s5, zero, 11
                  ori          sp, s0, 5
                  slt          s7, zero, s5
                  srli         s8, s8, 30
                  slt          t0, a2, s6
                  srai         a0, s3, 25
                  or           tp, a6, a4
                  xori         s7, t5, -1346
                  sra          s9, t2, t3
                  andi         t1, t6, -1583
                  andi         ra, gp, -817
                  auipc        gp, 294819
                  srai         s3, t1, 10
                  sub          s11, s7, s10
                  slli         s4, s8, 6
                  lui          t0, 554927
                  add          s9, s10, s10
                  xor          s2, a1, s10
                  srli         a1, sp, 8
                  sub          a3, s2, a4
                  slt          a5, sp, s11
                  andi         s0, sp, 1095
                  nop
                  xor          t6, a0, sp
                  xori         t3, s10, 196
                  xori         a0, t4, 1969
                  sll          s1, s0, a7
                  or           s3, a0, t4
                  srli         s2, s8, 18
                  sub          t1, a5, t1
                  slt          s6, t6, sp
                  srli         s6, t1, 28
                  add          s9, t5, s8
                  andi         s4, t6, 1548
                  andi         s0, t5, 43
                  sll          a3, s3, a2
                  sltiu        s4, s11, -455
                  sub          t5, s7, a1
                  sll          tp, ra, a2
                  slt          tp, t6, a5
                  srli         s5, t1, 23
                  lui          t3, 282370
                  ori          s5, a5, -1452
                  slt          s9, s8, s2
                  ori          sp, a1, -1936
                  auipc        t3, 562228
                  auipc        s0, 256256
                  srl          t0, a0, a3
                  sltiu        ra, s11, -1527
                  slti         zero, s8, -1622
                  nop
                  addi         s6, a0, -865
                  slli         a4, s8, 2
                  ori          s0, ra, 1121
                  ori          a0, t3, -63
                  srai         s9, t2, 26
                  ori          s7, s1, 1625
                  slli         s5, s8, 17
                  srli         s8, t5, 14
                  or           a3, gp, t0
                  srli         s7, a6, 8
                  ori          tp, t5, -911
                  srl          sp, a5, a1
                  slli         a0, s5, 14
                  srai         tp, s9, 30
                  sll          s8, gp, t6
                  nop
                  xori         a3, s11, 1758
                  lui          t6, 936542
                  add          s2, t1, s6
                  slli         s9, a7, 1
                  xor          gp, t2, s1
                  sltiu        sp, s8, 2029
                  slli         gp, s2, 19
                  sltiu        ra, t3, 1870
                  srai         s5, t3, 3
                  slti         s9, s3, -1394
                  slli         t0, a6, 6
                  xori         zero, s2, -1769
                  sltu         a4, zero, t1
                  or           a1, t5, t6
                  lui          a7, 655762
                  sll          a5, s1, t4
                  xori         tp, zero, -1163
                  ori          sp, s9, 2026
                  sll          s9, a6, a4
                  add          s1, s1, a6
                  sltu         s6, s11, t1
                  srai         a1, a5, 25
                  slt          s3, s5, s6
                  sltiu        zero, s1, 1186
                  sra          s2, s6, gp
                  srai         s5, a2, 26
                  sll          gp, t2, t6
                  sra          s3, a3, s1
                  sltu         a7, s10, a7
                  add          s9, s1, s4
                  slli         s7, tp, 5
                  xor          t1, s3, s11
                  sub          t2, t2, t1
                  srli         s0, s10, 24
                  addi         a3, s1, -1598
                  xori         s5, a6, 2014
                  xor          t0, s0, s8
                  la x12, test_done
                  jalr x0, x12, 0
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x26, x29, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x25, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x25, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x25, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x25, x22, ecall_handler
                  li x22, 0x1
                  beq x25, x22, instr_fault_handler
                  li x22, 0x5
                  beq x25, x22, load_fault_handler
                  li x22, 0x7
                  beq x25, x22, store_fault_handler
                  li x22, 0xc
                  beq x25, x22, pt_fault_handler
                  li x22, 0xd
                  beq x25, x22, pt_fault_handler
                  li x22, 0xf
                  beq x25, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x29, x26, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x26, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x26, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x29, x26, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x29, x26, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x29, x26, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
