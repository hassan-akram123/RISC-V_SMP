.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x13, h0_start
jalr x0, x13, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 1
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0x1
                  li x1, 0xf099e8a0
                  li x2, 0x80030233
                  li x3, 0x0
                  li x5, 0xc
                  li x6, 0xf53c8fc0
                  li x7, 0xf50e9b7b
                  li x8, 0x49269fd0
                  li x9, 0x6
                  li x10, 0x6
                  li x11, 0xf5c88fa8
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0xfcdd45c4
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0xf16144eb
                  li x23, 0x1
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0xf8a408bb
                  li x27, 0x6
                  li x28, 0x80000000
                  li x29, 0xf
                  li x30, 0x3
                  li x31, 0x2d8bb0bb
                  la x17, user_stack_end
main:             li           t3, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           s8, 0x0
                  li           s0, 0xffffffff
                  li           s11, 0x0
                  li           a5, 0xc0c35cd3
                  li           ra, 0x0
                  li           a2, 0x8717e6e1
                  li           s4, 0x80000000
                  li           a4, 0x1af3c741
                  li           s6, 0x9834e4c7
                  sub          a2, s0, s8
                  auipc        s11, 152151
                  auipc        a4, 577093
                  addi         a5, t3, 294
                  sub          a2, a4, a2
                  nop
                  add          s6, s0, s11
                  auipc        s11, 612308
                  nop
                  lui          a4, 357573
                  nop
                  addi         s0, a5, 1691
                  lui          a2, 673609
                  nop
                  auipc        a5, 911727 #end riscv_int_numeric_corner_stream_14
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           s3, 0x0
                  li           t5, 0x985bc44a
                  li           a1, 0xffffffff
                  li           s5, 0x245d3d65
                  li           a4, 0x80000000
                  li           t1, 0xe6155599
                  li           gp, 0x0
                  li           a2, 0x56cdd25a
                  li           a6, 0xcb6d4f4b
                  nop
                  sub          s5, a2, s5
                  nop
                  nop
                  nop
                  add          s3, s5, a1
                  nop
                  add          a1, a4, t2
                  nop
                  sub          s3, a2, s5
                  addi         a4, gp, -81
                  auipc        t5, 1006911
                  nop
                  auipc        t2, 609907
                  addi         a2, gp, -1963
                  sub          a4, t5, a6
                  lui          t2, 521408
                  auipc        t1, 766586 #end riscv_int_numeric_corner_stream_15
                  li           a0, 0x4cd5bc20 #start riscv_int_numeric_corner_stream_6
                  li           a4, 0xe41b6c13
                  li           s0, 0x80000000
                  li           t0, 0x80000000
                  li           s5, 0x0
                  li           t6, 0x80000000
                  li           t1, 0x0
                  li           t3, 0xffffffff
                  li           s6, 0xffffffff
                  li           s1, 0xffffffff
                  add          a4, a4, t0
                  addi         s6, a0, -617
                  add          a0, t3, t1
                  addi         t3, s1, -2003
                  nop
                  lui          s6, 330900
                  sub          a0, s1, a0
                  lui          s1, 563704
                  lui          t1, 485208
                  auipc        a4, 552664
                  add          s0, s5, t3
                  addi         t3, t1, -483
                  auipc        s1, 511938
                  sub          s1, t3, a0
                  auipc        a0, 336038
                  sub          s6, a4, t3
                  lui          t3, 622942
                  add          s5, t6, t3
                  add          t3, s1, t1
                  lui          t1, 418810
                  lui          a0, 52338
                  lui          a4, 809264
                  auipc        t1, 316452
                  lui          s0, 440981
                  lui          a0, 286767
                  nop
                  auipc        s1, 231698
                  auipc        a4, 899689 #end riscv_int_numeric_corner_stream_6
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           ra, 0xd3544419
                  li           a5, 0xffffffff
                  li           s9, 0x80000000
                  li           t2, 0xffffffff
                  li           s2, 0x0
                  li           s7, 0xffffffff
                  li           a2, 0x0
                  li           s4, 0x80000000
                  li           t0, 0x0
                  lui          s2, 5512
                  addi         s4, a5, 159
                  addi         a2, ra, -1438
                  sub          a4, a4, a2
                  nop
                  addi         s9, a5, 2022
                  lui          s2, 323823
                  auipc        s7, 616763
                  sub          a5, s7, s9
                  sub          t2, a5, t2
                  sub          a5, s4, s4
                  add          s4, a2, s7
                  lui          s7, 897921
                  lui          t0, 503012
                  addi         ra, s2, 862
                  addi         s9, ra, -1310
                  auipc        a5, 239323
                  add          a4, s7, s7
                  add          t2, s9, ra
                  nop
                  sub          s7, a5, t2
                  nop #end riscv_int_numeric_corner_stream_7
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           a5, 0x0
                  li           t1, 0x80000000
                  li           t3, 0x80000000
                  li           t6, 0x80000000
                  li           a6, 0xffffffff
                  li           s4, 0xffffffff
                  li           s3, 0x80000000
                  li           t2, 0x1e0ddf32
                  li           sp, 0x80000000
                  add          t2, s3, a6
                  sub          s4, t6, s3
                  addi         a5, sp, -1958
                  add          s4, s0, s3
                  add          s4, s0, s4
                  add          t1, sp, t1
                  add          s4, a5, t3
                  lui          t2, 777173
                  auipc        t1, 108476
                  auipc        s3, 543935
                  lui          t1, 418400
                  nop
                  nop
                  auipc        t2, 538357
                  sub          t1, t3, t2
                  lui          t6, 409415
                  addi         t6, s4, 1012
                  auipc        s0, 8100
                  auipc        t6, 299271
                  sub          s3, sp, s0
                  sub          t2, t2, t1
                  nop
                  auipc        t1, 695711
                  addi         t2, a6, 8 #end riscv_int_numeric_corner_stream_17
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           s9, 0x80000000
                  li           t3, 0x0
                  li           s3, 0x0
                  li           t6, 0x80000000
                  li           t1, 0xffffffff
                  li           a6, 0x80000000
                  li           s7, 0x80000000
                  li           t2, 0xffffffff
                  li           s0, 0x80000000
                  lui          t2, 326707
                  sub          ra, s3, t2
                  sub          s0, t3, s3
                  sub          s3, s0, s9
                  sub          t1, s0, ra
                  addi         ra, s0, -1492
                  auipc        a6, 1027946
                  sub          t6, t1, ra
                  nop
                  nop
                  sub          ra, t2, t1
                  lui          s7, 388297
                  auipc        ra, 625643
                  lui          s3, 244079
                  auipc        ra, 623512
                  auipc        s9, 502573
                  add          t3, a6, s7
                  lui          t1, 989009
                  nop
                  auipc        t6, 673822
                  add          t3, t1, s7
                  auipc        ra, 384140
                  add          s0, s3, s9
                  lui          t6, 116849
                  auipc        a6, 129765
                  sub          a6, s3, s0 #end riscv_int_numeric_corner_stream_0
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s6, 0xffffffff
                  li           t2, 0x0
                  li           s4, 0xdd6b66cc
                  li           t0, 0xffffffff
                  li           s8, 0xffffffff
                  li           a1, 0x0
                  li           t1, 0xc638d60e
                  li           a0, 0x80000000
                  li           s7, 0x80000000
                  nop
                  addi         s8, t2, 40
                  nop
                  auipc        t0, 50463
                  sub          s5, t0, s7
                  add          s8, t1, t2
                  lui          s7, 929690
                  add          s5, s7, s8
                  lui          s5, 135091
                  nop
                  nop
                  sub          s6, t0, t1
                  nop
                  nop
                  sub          t2, s7, t1
                  lui          t0, 756455
                  lui          a1, 325385
                  auipc        s6, 556879
                  lui          s5, 621231
                  lui          s8, 254264 #end riscv_int_numeric_corner_stream_18
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           sp, 0x0
                  li           a0, 0xffffffff
                  li           a6, 0xa7cadb94
                  li           t2, 0xffffffff
                  li           s9, 0xffffffff
                  li           s8, 0xffffffff
                  li           t0, 0x80000000
                  li           gp, 0xa7f79a40
                  li           s1, 0xbb44af1c
                  add          a0, a6, a0
                  lui          s8, 426919
                  add          t1, sp, t1
                  auipc        gp, 100110
                  auipc        t2, 502646
                  nop
                  addi         sp, a6, 609
                  nop
                  add          t1, s1, gp
                  addi         t2, sp, 341
                  nop
                  nop
                  addi         s9, a6, -1361
                  nop
                  nop
                  sub          s1, s9, s9
                  addi         t2, t0, -1424
                  lui          sp, 831842
                  auipc        s1, 555619
                  add          s1, sp, a0
                  addi         a6, a6, 300
                  lui          t2, 319718 #end riscv_int_numeric_corner_stream_16
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           a1, 0x80000000
                  li           t6, 0x80000000
                  li           s0, 0x0
                  li           t5, 0x0
                  li           s6, 0xffffffff
                  li           gp, 0xffffffff
                  li           t0, 0xfa52301f
                  li           s10, 0xffffffff
                  li           s8, 0x0
                  sub          a1, t5, a1
                  auipc        gp, 724379
                  auipc        t6, 43248
                  auipc        s6, 525846
                  sub          s8, t6, t0
                  sub          s10, a1, s8
                  lui          t0, 944845
                  nop
                  sub          s0, t5, s10
                  nop
                  addi         s8, s10, 1824
                  lui          t6, 916779
                  lui          t6, 988341
                  add          s0, s6, s0
                  auipc        s10, 871269 #end riscv_int_numeric_corner_stream_13
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           t0, 0x80000000
                  li           s11, 0xffffffff
                  li           s8, 0xffffffff
                  li           a1, 0xffffffff
                  li           t6, 0x0
                  li           a0, 0x48e633b
                  li           s3, 0x0
                  li           t2, 0x1928253b
                  li           a4, 0x55573050
                  auipc        s11, 826062
                  addi         t0, a4, 574
                  auipc        t2, 206803
                  lui          s3, 1029632
                  add          t2, a0, a1
                  nop
                  lui          t6, 441783
                  auipc        s8, 1047787
                  addi         s8, s8, 272
                  addi         t0, t2, 1287
                  sub          t6, s4, t2
                  add          s4, a1, a0
                  lui          t0, 394627
                  sub          t6, t0, t0
                  sub          a1, s3, t0
                  add          s11, s8, t6
                  auipc        a0, 884843
                  lui          a4, 515024
                  auipc        a4, 184188
                  nop
                  sub          s8, a4, s8
                  addi         s4, t0, -99
                  auipc        s4, 17528
                  lui          a0, 170593
                  lui          s4, 795327
                  addi         s8, t6, -1150
                  nop
                  lui          t6, 263693 #end riscv_int_numeric_corner_stream_9
                  andi         t5, s11, -1815
                  slti         t1, s5, 1864
                  slt          a4, t4, s0
                  nop
                  auipc        a5, 311258
                  addi         s0, zero, -1690
                  sltu         zero, a1, sp
                  slt          s8, s3, s8
                  xori         s6, t5, 1885
                  sltu         a2, s9, s0
                  sub          t6, s0, a7
                  and          s1, a2, s1
                  sra          s0, s2, s3
                  addi         a1, s0, 1634
                  srai         t2, s2, 3
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s2, 0xba312255
                  li           a2, 0xffffffff
                  li           a4, 0xffffffff
                  li           ra, 0x0
                  li           s10, 0xbb367c57
                  li           sp, 0x0
                  li           s7, 0x0
                  li           t5, 0x5c97bd57
                  li           t1, 0xffffffff
                  lui          s11, 974254
                  lui          sp, 34041
                  lui          ra, 312375
                  auipc        s11, 792587
                  add          s11, s11, sp
                  auipc        s7, 430135
                  add          ra, a4, t1
                  nop
                  nop
                  sub          a4, sp, t5
                  auipc        a4, 937044
                  sub          s10, a4, t1
                  nop
                  nop
                  auipc        s11, 674627
                  add          a2, a2, s11
                  sub          s11, s2, sp
                  auipc        s2, 12770
                  nop
                  nop
                  nop
                  auipc        s7, 761420 #end riscv_int_numeric_corner_stream_2
                  srli         gp, sp, 18
                  sub          a2, t1, t0
                  add          t1, s8, s10
                  auipc        t5, 946190
                  andi         sp, t0, -328
                  sltu         t4, s8, t1
                  xor          s10, t0, t1
                  slt          t0, a2, ra
                  xori         ra, t0, 1849
                  srl          t6, a3, s10
                  sll          t3, s5, s5
                  auipc        gp, 162759
                  and          ra, t0, t3
                  slti         s0, ra, 202
                  or           a4, t3, t5
                  slli         a0, s7, 19
                  lui          s3, 942718
                  addi         s3, sp, -1953
                  xori         sp, t4, -1180
                  and          s4, t4, ra
                  or           a0, a2, t2
                  ori          s11, a4, 438
                  slt          t2, sp, t2
                  auipc        gp, 999512
                  addi         a6, s0, 420
                  xori         s11, t5, 810
                  nop
                  sra          gp, a1, s4
                  srai         t6, t2, 8
                  and          s9, sp, a6
                  srli         t6, s9, 28
                  auipc        ra, 614003
                  addi         s8, s4, 371
                  sll          s1, ra, t2
                  srli         s0, a6, 13
                  andi         sp, s0, 1867
                  slli         t4, t0, 22
                  sltiu        sp, gp, 1720
                  srli         s5, zero, 6
                  andi         t2, t6, -490
                  addi         t4, ra, -152
                  srli         s10, tp, 29
                  xor          t4, ra, s9
                  xori         t4, s2, 1404
                  sltiu        s0, t5, -285
                  xori         s11, s0, -573
                  or           gp, a1, a2
                  addi         a4, ra, 683
                  or           t2, sp, sp
                  auipc        a1, 264495
                  sltiu        t4, s0, 851
                  add          s3, gp, a4
                  slli         s9, s2, 22
                  auipc        t5, 858784
                  sra          a0, zero, s3
                  sub          t0, a7, t0
                  slti         s0, t4, 1695
                  sra          t3, t5, a7
                  sltu         s4, s8, gp
                  slti         t4, a7, -664
                  add          s1, t1, a3
                  auipc        s2, 550256
                  xor          a6, s11, a4
                  sltu         s9, t4, s9
                  lui          a5, 34957
                  srli         s4, s0, 0
                  srli         a4, s7, 14
                  auipc        a6, 781275
                  auipc        t0, 459407
                  srai         gp, ra, 8
                  or           s2, t5, t5
                  srl          s3, s2, a6
                  add          s10, t1, gp
                  slli         a4, s3, 18
                  sub          t6, a7, tp
                  sltiu        t2, a2, -448
                  srli         s9, s3, 30
                  slli         s7, t3, 27
                  slli         s7, a7, 6
                  ori          a0, s10, -309
                  sll          s9, s0, a0
                  slti         t6, s9, -393
                  srl          a4, t1, s7
                  sub          t3, a5, gp
                  addi         zero, s10, -1074
                  sltu         t3, s7, a1
                  srai         a0, s3, 3
                  slli         a6, s1, 8
                  lui          s4, 256269
                  sll          s3, t3, a6
                  sra          a0, t2, sp
                  slti         t4, a6, 52
                  addi         a1, s0, 724
                  srai         a1, t0, 18
                  or           t0, s2, a3
                  srli         ra, t1, 31
                  sltu         a6, tp, s0
                  or           s4, t6, t4
                  andi         s6, a3, -145
                  add          s1, t0, a7
                  addi         s3, a3, 266
                  sltu         a1, a7, s3
                  xor          a4, a2, a0
                  nop
                  ori          s8, a5, 392
                  addi         s8, s4, 125
                  srl          s6, ra, t3
                  and          s2, s6, s11
                  sub          a1, s9, s11
                  sltiu        s8, s11, 344
                  slti         s1, gp, 608
                  lui          s6, 760596
                  andi         s8, s9, 1319
                  xori         s3, gp, -638
                  srai         a0, s5, 7
                  sltiu        a6, tp, 311
                  or           s3, s2, a4
                  srli         s10, s7, 26
                  sltu         s0, t6, s2
                  slli         sp, gp, 3
                  sltu         t2, a0, s11
                  sll          t4, s3, a5
                  sltu         a4, t6, s4
                  and          s2, s2, a6
                  sra          s5, s6, s0
                  nop
                  addi         s2, t1, 1884
                  sub          s7, ra, t0
                  sub          a1, sp, t2
                  andi         t0, a7, -269
                  slt          s10, a3, ra
                  nop
                  slli         t2, a4, 6
                  nop
                  sll          t0, t1, ra
                  and          s0, gp, a3
                  addi         s10, zero, -1223
                  srl          ra, t3, a6
                  andi         t1, s7, 893
                  add          s0, s4, a0
                  slli         s7, s11, 21
                  lui          zero, 261533
                  and          s0, s5, s6
                  srli         t1, s8, 27
                  add          t5, s6, t5
                  sub          gp, s11, t2
                  sltiu        s8, s2, -156
                  slti         t5, t0, 636
                  sub          s6, t6, s3
                  lui          t1, 937959
                  addi         s9, t0, 1580
                  add          s11, a1, t1
                  srli         zero, a7, 2
                  xor          gp, a1, t2
                  sltiu        s1, s11, -285
                  ori          s2, s5, 1484
                  sra          zero, tp, s3
                  srl          a5, t5, t4
                  slti         sp, s3, -556
                  srl          s3, tp, s11
                  slli         s1, s2, 0
                  srli         s2, t3, 14
                  sll          s10, ra, a5
                  ori          s8, s4, 876
                  sra          a0, s10, a6
                  sub          s5, s8, a1
                  sll          a5, s0, t6
                  and          sp, s4, t1
                  sll          s6, s10, s5
                  lui          s10, 744311
                  addi         s0, s4, 1605
                  slt          s11, a3, tp
                  add          s2, a7, s5
                  add          s1, a1, a5
                  auipc        sp, 353456
                  auipc        s3, 485339
                  sub          s6, t0, a3
                  or           s2, ra, s10
                  or           a0, s6, t2
                  slli         s2, t1, 26
                  slti         t1, t4, 456
                  slti         s8, t0, -1191
                  andi         s7, s1, -965
                  sltiu        s8, s8, -589
                  srl          t3, a7, s10
                  srai         a4, sp, 0
                  auipc        t0, 633109
                  xor          s4, a1, sp
                  srli         t2, sp, 26
                  slli         s2, zero, 28
                  sltiu        t6, gp, 1810
                  sltu         t5, s5, t0
                  andi         ra, t6, 1640
                  slt          a0, tp, tp
                  sub          s4, s10, s11
                  sll          s0, tp, t1
                  sub          a1, a1, s1
                  and          t2, a4, t3
                  sltu         s2, s5, s5
                  xor          t6, s8, a2
                  srl          s0, a0, s0
                  and          s9, s1, s1
                  add          s1, t4, s1
                  slti         s7, ra, -1746
                  srli         sp, t5, 27
                  sltiu        t5, t3, 1500
                  auipc        a4, 82508
                  sub          t1, t1, tp
                  srai         s11, t6, 27
                  lui          t0, 82123
                  sll          s8, s1, s4
                  or           zero, t5, s4
                  sltu         t4, a3, s10
                  ori          s7, s4, 2012
                  xor          s3, a7, a0
                  add          t1, s11, a3
                  sltu         s10, s9, a5
                  srai         s6, a6, 8
                  addi         s7, s3, -754
                  lui          s10, 915472
                  sltu         t3, s10, a4
                  and          t0, a4, a6
                  ori          s9, a2, -1103
                  ori          a5, t4, -1432
                  lui          ra, 657563
                  xori         gp, t1, -1571
                  nop
                  sra          a6, t3, s7
                  srli         s3, sp, 28
                  xor          s8, a5, s2
                  sltu         t5, s2, s3
                  addi         s2, s9, 704
                  slti         a1, gp, 882
                  sltiu        a2, s9, 1745
                  xor          t5, s4, s8
                  srai         s0, s10, 27
                  sltiu        s7, t4, -1551
                  xor          t6, t6, s6
                  srai         s8, s3, 16
                  andi         t5, gp, -1584
                  srai         a6, s3, 18
                  xor          s3, zero, t0
                  and          s5, s10, t0
                  xor          t2, t3, a4
                  auipc        t6, 321968
                  lui          s4, 319110
                  srli         s1, a4, 29
                  srai         s11, a1, 11
                  nop
                  slti         a0, s7, -1434
                  lui          gp, 280812
                  sltiu        s9, s5, -1980
                  sltiu        s2, t3, 1619
                  slli         t3, s3, 31
                  slt          t2, t2, s8
                  andi         s1, s10, 994
                  auipc        zero, 755890
                  lui          s6, 711949
                  sra          s7, a6, a0
                  addi         s2, s0, 950
                  sra          s0, a1, a0
                  slti         s3, t5, 1917
                  slti         t0, s11, 858
                  sll          s4, s10, s7
                  sll          s7, a4, s11
                  auipc        ra, 897266
                  add          a2, a6, t0
                  sltiu        a1, a0, -117
                  auipc        sp, 378034
                  slli         s2, zero, 3
                  slti         s1, s9, -1618
                  auipc        s6, 511587
                  addi         t1, a3, 57
                  sltu         s7, s4, s2
                  lui          t6, 777146
                  auipc        s10, 710543
                  srl          t0, gp, s2
                  sra          a5, s9, t0
                  srl          s10, s1, s9
                  slt          gp, s10, t6
                  add          a1, a2, gp
                  slt          s5, s8, a6
                  slt          t6, a5, a1
                  andi         t4, t5, 1170
                  ori          s1, sp, 69
                  sub          s3, a7, s10
                  slti         s10, s0, 470
                  nop
                  srli         s4, tp, 22
                  sub          s5, ra, tp
                  xori         s8, s6, -1436
                  sll          sp, t0, t0
                  sltu         gp, s9, s0
                  slli         s10, a3, 0
                  lui          t5, 868917
                  addi         s5, s1, -1982
                  ori          t1, a4, -1245
                  sltiu        a4, s11, -966
                  addi         a5, s2, -479
                  slti         t5, a2, -1908
                  sub          zero, a6, s1
                  addi         a6, s8, 1784
                  srai         s1, a7, 12
                  sltiu        a5, t0, -1374
                  xor          s1, t2, gp
                  srli         s1, t0, 20
                  nop
                  add          a4, t2, s0
                  srl          t3, t3, a2
                  addi         s9, s0, -986
                  andi         sp, s4, 1798
                  and          t2, s6, a1
                  nop
                  xori         s0, zero, -1889
                  srli         gp, a7, 20
                  sra          s1, a1, a5
                  auipc        s7, 187758
                  andi         s1, s1, -1558
                  sltu         s5, s11, s4
                  and          t5, t4, a1
                  and          a6, t0, gp
                  srai         t3, tp, 2
                  or           t3, s1, a0
                  and          s8, s2, a3
                  addi         ra, s1, 2041
                  ori          s11, s0, -1814
                  srli         zero, s5, 15
                  and          a5, a0, a2
                  or           t0, s10, t6
                  sltu         s6, t1, a4
                  auipc        s3, 888353
                  slti         t1, s7, 1472
                  auipc        a5, 1004121
                  srai         s10, t2, 22
                  sltu         a0, a7, gp
                  lui          a2, 806418
                  sra          t5, a3, s8
                  slli         t1, t4, 11
                  auipc        a5, 217052
                  slti         s8, a5, -109
                  addi         t0, s10, -1015
                  slli         t5, a4, 6
                  nop
                  srli         s8, t1, 13
                  addi         t4, s1, 298
                  slli         a0, a3, 26
                  sll          a6, t2, t3
                  slli         t3, s4, 25
                  nop
                  ori          s4, a2, -403
                  lui          a2, 702968
                  xor          a2, s4, zero
                  xori         s10, a5, 262
                  and          s1, gp, s4
                  sll          s9, s2, a6
                  lui          a0, 665585
                  slt          s3, a7, s2
                  addi         t2, a7, 680
                  srli         s5, t5, 26
                  sltu         a0, sp, a4
                  auipc        s6, 29628
                  add          t0, t1, tp
                  add          s2, a1, s9
                  sub          a0, s7, sp
                  sltu         s10, t0, ra
                  lui          a1, 495453
                  or           zero, zero, t4
                  slli         t0, t4, 8
                  auipc        t1, 213022
                  xori         a1, t5, 1532
                  lui          gp, 575038
                  srai         t6, a1, 19
                  srli         a2, t1, 2
                  andi         a5, s5, 921
                  srli         s1, s8, 9
                  lui          a0, 414557
                  andi         s8, s2, 1907
                  auipc        a1, 217657
                  ori          t5, tp, -1575
                  slti         t2, a1, 1625
                  sll          s6, a5, sp
                  sll          s9, s2, s10
                  srli         t4, zero, 3
                  xori         zero, s4, -661
                  and          s4, s2, s1
                  slli         t5, t2, 18
                  or           s2, t3, s10
                  sltiu        t6, s3, -523
                  add          a4, s9, a7
                  srai         t2, a5, 8
                  and          t5, a5, t1
                  slt          gp, t5, t5
                  nop
                  sltu         t6, t0, t0
                  srl          t0, gp, s7
                  sltu         s11, s8, tp
                  ori          s7, tp, -334
                  sltu         s9, s9, s10
                  srl          t2, a2, a5
                  andi         s5, a2, 988
                  addi         s6, tp, 2021
                  add          s3, a3, s4
                  ori          s8, t6, -969
                  ori          a0, a1, -1669
                  or           s4, tp, t1
                  sltiu        sp, s9, -777
                  and          a2, t4, a7
                  slli         s11, s3, 26
                  sltiu        t0, a5, 1087
                  add          sp, t1, t5
                  sra          a5, t1, a3
                  ori          s0, t6, 1963
                  add          zero, t3, s7
                  nop
                  srl          s7, a2, s1
                  xori         s3, t3, 513
                  srli         sp, a3, 25
                  auipc        a2, 620529
                  xori         t2, a7, 1022
                  xori         s2, s11, -1866
                  xor          s3, sp, s4
                  srli         s8, a7, 27
                  and          a0, s7, s7
                  andi         t0, zero, 692
                  srli         s2, s5, 19
                  nop
                  sra          s3, a4, s1
                  or           ra, t1, t3
                  nop
                  add          a6, s4, t2
                  add          a0, t6, s3
                  sltu         s11, a5, zero
                  srli         s8, a5, 8
                  slli         a6, a6, 24
                  xori         t4, a3, 476
                  auipc        t1, 206065
                  add          ra, a6, s3
                  and          s5, s2, s8
                  and          s6, a4, a6
                  sltu         t6, t6, sp
                  sltu         s3, t4, ra
                  sltu         s8, a5, s11
                  srl          s6, ra, a2
                  auipc        zero, 433904
                  srli         s9, a5, 9
                  slli         a4, s10, 13
                  and          s10, zero, gp
                  auipc        a0, 974187
                  addi         a1, t4, -1322
                  srl          a5, a6, s1
                  slti         s10, s10, -1229
                  or           s2, ra, sp
                  sra          a4, s6, s9
                  srl          s1, sp, t1
                  sub          s5, ra, s3
                  add          t6, tp, a5
                  sra          a0, t2, s7
                  auipc        s3, 134525
                  auipc        a1, 251735
                  lui          t6, 22137
                  andi         a0, s4, 1658
                  srli         s5, zero, 31
                  xor          t6, s10, tp
                  xori         a0, a7, -1294
                  nop
                  auipc        s8, 581091
                  or           zero, s11, ra
                  sub          s6, t3, gp
                  andi         a1, a0, 106
                  srai         s5, t3, 3
                  srai         a6, t2, 18
                  xori         a6, a6, 483
                  srl          t5, t4, t4
                  auipc        t0, 707969
                  nop
                  addi         s6, a2, -539
                  auipc        sp, 792029
                  sub          t2, a1, ra
                  slti         t6, s9, 2030
                  or           s4, s8, ra
                  srl          ra, s6, a4
                  slt          a1, zero, tp
                  xori         ra, t0, 668
                  add          a0, a6, ra
                  srai         t2, t1, 21
                  sltu         t3, sp, t1
                  slt          sp, t0, a0
                  or           s6, t6, a5
                  lui          s6, 675363
                  sltiu        gp, s5, -1928
                  xor          t3, t6, a4
                  sltiu        a1, a3, -1992
                  sltu         s11, s11, s6
                  sltiu        s8, s4, -300
                  ori          t6, ra, 515
                  ori          s9, s3, 112
                  nop
                  slti         t4, s11, -365
                  and          s2, a7, zero
                  ori          a4, s10, -328
                  xori         t4, a7, 252
                  srl          a5, s4, s4
                  sra          s9, a2, s3
                  and          a5, s10, s1
                  and          t6, a1, a5
                  andi         a5, a1, 1696
                  slt          t1, s6, s4
                  add          s8, s1, ra
                  addi         s4, zero, -49
                  srli         s3, a7, 1
                  sra          gp, tp, a0
                  xor          s2, s8, a6
                  addi         zero, gp, 772
                  addi         a0, a7, -891
                  sll          s10, s9, s1
                  xori         s10, zero, -1893
                  sub          s10, a1, s2
                  srl          t2, s10, t1
                  or           s0, tp, sp
                  srai         s8, t1, 8
                  sltu         s3, s11, ra
                  addi         s11, tp, -662
                  nop
                  ori          a2, tp, -734
                  sub          zero, s6, a5
                  sll          t6, a5, t1
                  add          s11, s10, t0
                  sltu         gp, ra, a5
                  ori          s10, a4, 690
                  or           s6, s11, s11
                  xor          a4, s11, a5
                  addi         s10, a5, -1771
                  slti         ra, t1, 1776
                  sltu         t4, t5, s2
                  xor          gp, a6, a5
                  srli         s11, s11, 23
                  xori         s3, s7, -1328
                  srl          ra, s0, a2
                  lui          s11, 559570
                  andi         s5, t2, 950
                  nop
                  lui          t5, 995630
                  and          a4, s5, a0
                  or           s0, s3, s4
                  sltiu        a6, s5, -289
                  srl          a4, a5, s1
                  add          s11, s2, a5
                  xor          s6, a1, a5
                  xor          s6, s0, s5
                  slti         a1, a1, 280
                  srl          t4, t3, s1
                  lui          t3, 735065
                  auipc        t0, 664788
                  addi         s3, sp, -1941
                  sltiu        t6, ra, -226
                  slli         a1, zero, 19
                  addi         s3, s2, -832
                  or           zero, s0, t4
                  addi         a2, s10, 954
                  sll          s1, s5, s1
                  xor          s7, s4, gp
                  xor          t1, s7, a5
                  add          s4, sp, s6
                  sll          a0, s7, t4
                  sltu         t0, t0, s2
                  sra          s4, s2, t6
                  or           t1, t4, ra
                  or           a0, a5, s9
                  srli         t3, s6, 31
                  sll          t5, s3, t4
                  srai         s5, tp, 5
                  auipc        a2, 318491
                  srli         a0, zero, 18
                  sub          t3, s8, sp
                  sub          s2, t6, s6
                  andi         a0, s8, 409
                  sltiu        a6, s9, 140
                  slti         s2, s2, 825
                  ori          s9, sp, 1264
                  sltu         s4, t4, zero
                  xori         zero, t2, -603
                  sltiu        s11, s0, -440
                  lui          a0, 571254
                  sra          t1, a5, a6
                  nop
                  auipc        t2, 674400
                  nop
                  slti         s11, s5, -595
                  nop
                  slli         s9, t1, 5
                  slt          s0, s3, tp
                  lui          s6, 19315
                  add          s8, t2, a1
                  and          s11, gp, s3
                  nop
                  addi         s1, sp, -277
                  slli         gp, a5, 21
                  add          a1, s4, ra
                  and          t3, t1, s1
                  add          sp, gp, s11
                  srli         t5, s10, 30
                  or           gp, a5, t1
                  sltu         s4, a4, t6
                  and          s4, tp, gp
                  sra          s5, t1, s7
                  srl          a2, sp, a3
                  sra          t3, t5, s10
                  sub          a2, a1, s4
                  srai         a0, a7, 23
                  xori         a4, a6, 1890
                  addi         a0, tp, -70
                  xori         t1, s1, 1037
                  addi         a4, t0, 1829
                  sltu         t0, t4, t6
                  addi         a0, t5, 1488
                  slli         s10, t2, 6
                  sll          a6, s0, a3
                  nop
                  xor          s9, s3, s7
                  xori         t0, s8, 1025
                  srai         a1, a7, 12
                  and          s11, zero, t5
                  slli         a1, t4, 21
                  sub          t6, gp, t4
                  nop
                  sltu         t3, a0, s6
                  sub          t2, t1, s6
                  sra          a5, s7, s1
                  lui          s8, 357524
                  srli         t6, s7, 13
                  slli         a6, a2, 21
                  xori         a6, t5, -1679
                  addi         s10, a5, 68
                  sub          s11, s5, a6
                  lui          sp, 252548
                  ori          ra, a3, 1926
                  sltiu        s1, ra, 1203
                  srli         ra, s4, 6
                  sub          t1, s8, s10
                  sub          t4, t3, a5
                  andi         ra, a7, 584
                  slli         s7, tp, 23
                  sll          s3, a1, a0
                  and          s5, a0, a6
                  addi         s6, a2, -171
                  sra          a6, t0, s9
                  auipc        s11, 1005091
                  andi         t1, s8, 1812
                  xori         t0, s11, 1478
                  sra          s8, t5, zero
                  or           a4, t0, ra
                  slti         s4, t1, 605
                  srl          a1, s2, t1
                  andi         s7, s4, 1781
                  slti         s11, a2, -1774
                  srl          sp, sp, s10
                  slli         s3, t6, 3
                  sll          a6, s2, zero
                  lui          t4, 208717
                  sub          a0, s6, a0
                  sltiu        t2, a2, 630
                  srai         t1, s9, 16
                  or           s3, zero, ra
                  lui          s5, 245388
                  add          a1, s9, tp
                  sub          ra, a0, t0
                  add          a5, s11, t5
                  xori         a0, s11, 1084
                  andi         t5, s2, 7
                  sra          s8, a2, t1
                  sll          sp, s3, s3
                  sub          a0, s1, a4
                  slt          ra, a1, s0
                  or           s7, t5, t1
                  nop
                  addi         a5, s5, -1438
                  nop
                  xori         s8, gp, 15
                  xori         a1, zero, 1097
                  xori         t5, s2, 473
                  slli         a6, a3, 24
                  sltiu        s2, s2, -723
                  slti         s9, s8, -486
                  slt          t6, t3, sp
                  xori         a6, a5, -1984
                  srl          s11, a1, s6
                  auipc        sp, 291130
                  slti         s0, t1, -1184
                  nop
                  ori          t0, ra, -898
                  xor          s4, t1, a7
                  srai         s3, t6, 26
                  slti         t1, s1, 1285
                  nop
                  slli         s5, zero, 21
                  andi         s2, s4, -226
                  xori         a1, s7, -1816
                  sltu         t3, s3, a2
                  and          a0, t4, s2
                  add          s1, a1, ra
                  or           a2, s5, t4
                  addi         s6, s6, -1049
                  srli         ra, t0, 16
                  srai         a0, s8, 27
                  sra          t2, s5, s11
                  slt          t0, a1, t4
                  slti         s5, s5, -1895
                  xori         s9, a0, 1703
                  slti         gp, s6, 1858
                  or           a4, a2, sp
                  xori         t3, t5, -175
                  sltiu        zero, a4, 40
                  xori         s0, s2, -1879
                  srai         s10, s8, 19
                  slt          s5, s6, s1
                  xori         sp, tp, -259
                  ori          s5, a3, 322
                  sub          s2, t4, a3
                  xor          a2, s6, ra
                  and          s2, a5, zero
                  srli         s1, s11, 0
                  sub          t1, a7, a3
                  sra          ra, t4, a3
                  addi         s9, ra, 1208
                  slti         t6, s5, 867
                  slti         t0, tp, -484
                  auipc        a6, 426738
                  nop
                  sltu         t6, ra, s0
                  sltiu        s8, s7, -1461
                  slti         a1, gp, -2006
                  and          s10, ra, a2
                  and          sp, s10, t0
                  sub          s11, a3, a6
                  addi         a0, s7, 1167
                  slti         s5, t3, 1577
                  slli         t0, t0, 17
                  xori         t6, sp, -1883
                  sra          zero, t5, sp
                  add          t6, s0, s10
                  add          s2, s8, a1
                  auipc        sp, 398899
                  xor          a4, a6, ra
                  srai         s9, t6, 2
                  auipc        s10, 237445
                  sltiu        sp, s6, 1193
                  ori          s2, t2, -837
                  sltu         s0, s0, s11
                  sltiu        t2, s2, -1976
                  sll          s1, t0, t3
                  srai         t2, a2, 9
                  sra          s5, t0, t1
                  sra          t2, t4, t2
                  or           zero, t5, s4
                  srai         s6, a2, 6
                  ori          a2, s2, 17
                  and          a0, s2, t1
                  or           t5, s7, s11
                  add          t2, a1, a4
                  slli         t2, s0, 29
                  slli         zero, s0, 29
                  srli         s3, s4, 14
                  slli         t2, a0, 3
                  slt          a6, ra, t1
                  add          s9, a7, s1
                  srai         s2, s2, 12
                  sll          s2, t3, zero
                  xor          zero, a0, ra
                  and          s10, zero, s10
                  sltu         s7, a1, a1
                  lui          s4, 904515
                  sltiu        sp, t5, 669
                  slli         t4, s11, 0
                  slli         s9, s8, 3
                  sltu         ra, s6, t4
                  xori         t6, t1, -1112
                  srai         zero, s8, 19
                  add          zero, s0, t4
                  or           t6, s1, s1
                  sub          a5, a5, a3
                  sltu         a6, t4, ra
                  sub          t5, t6, a1
                  sub          s1, s11, t3
                  andi         s11, t4, 1753
                  sltiu        s8, s10, -1075
                  slli         s3, tp, 0
                  xori         a2, s10, -1639
                  sra          sp, s2, s9
                  addi         s4, a4, -388
                  srai         ra, s1, 8
                  xor          a0, sp, s4
                  or           a1, s3, a7
                  ori          t5, s3, 486
                  sltiu        gp, t2, -1627
                  slli         s6, s10, 11
                  srai         s2, t2, 18
                  ori          t0, s2, -1825
                  srli         s11, tp, 9
                  addi         s6, t3, -192
                  or           sp, s6, s6
                  add          s9, sp, a3
                  add          zero, a7, zero
                  slti         a5, t1, -941
                  srai         a0, s2, 13
                  addi         s10, t5, 88
                  or           a2, a2, s2
                  xor          s3, s10, tp
                  sltiu        s1, t2, -348
                  and          sp, s5, s3
                  and          s5, a6, s0
                  slli         s5, s4, 2
                  add          a0, s5, s7
                  sll          a4, s4, s6
                  and          a0, s10, s2
                  srli         gp, s3, 1
                  sltiu        t6, a7, -1311
                  and          s11, a3, s6
                  srl          a6, t5, s8
                  and          t5, a1, s6
                  lui          a5, 421455
                  addi         s2, s11, -1751
                  sltu         t0, a1, s10
                  srai         t2, t2, 5
                  addi         ra, s6, 317
                  srli         s4, s7, 5
                  srli         gp, gp, 5
                  sltiu        t5, s10, 173
                  or           zero, a2, a2
                  xori         t4, a4, 14
                  sub          s4, s11, t2
                  addi         s9, a7, 1963
                  srli         s6, s9, 0
                  ori          a1, a0, -1001
                  addi         t3, t3, -25
                  addi         s4, a1, 1068
                  xor          zero, tp, tp
                  srl          t6, t3, a2
                  slli         t0, a7, 17
                  sltiu        a4, a5, -955
                  sll          s7, a7, t5
                  sltiu        s8, tp, 1080
                  lui          s2, 83088
                  srl          t6, t0, s9
                  addi         a0, sp, 990
                  sll          s4, s1, s11
                  srai         s2, s0, 2
                  ori          s10, s3, -825
                  srai         sp, a5, 29
                  lui          s2, 363698
                  lui          a5, 714171
                  addi         t3, a0, -40
                  srli         t5, s11, 30
                  slti         a1, t6, -1149
                  sub          a2, t5, t3
                  andi         s5, s9, 217
                  lui          s1, 108095
                  nop
                  slt          s0, a4, s3
                  sll          s1, t1, s2
                  xor          a4, s3, zero
                  nop
                  sll          a5, a2, t4
                  slt          ra, s7, a5
                  slt          zero, s6, tp
                  sltiu        zero, a5, 1403
                  slli         a2, a2, 21
                  xori         s10, a2, 242
                  xor          a6, s2, t0
                  srli         s11, a5, 26
                  ori          a0, zero, 2030
                  add          a4, a0, t1
                  srai         zero, s7, 26
                  auipc        a6, 523648
                  srl          t2, s3, s4
                  srl          sp, zero, gp
                  slt          a0, s8, s11
                  sub          t2, t0, a4
                  srli         a1, t2, 1
                  slt          a2, t4, t6
                  andi         a1, s8, -568
                  srli         a6, a1, 12
                  slti         a0, s6, 1787
                  add          s1, s10, zero
                  add          s3, s10, t4
                  addi         t5, t3, 1063
                  xori         s6, s0, 248
                  auipc        t6, 230496
                  srli         s2, a7, 12
                  sltu         zero, s10, a4
                  srl          t3, s4, s6
                  slti         sp, a7, 534
                  nop
                  sra          t1, t2, a6
                  srli         ra, a5, 11
                  andi         s2, a1, 1705
                  or           s11, t0, a6
                  xor          a4, s4, a0
                  addi         s10, t2, 1614
                  slli         zero, s4, 16
                  xor          s7, a0, a2
                  and          ra, gp, s8
                  xor          a1, s8, a4
                  slli         s5, s10, 15
                  auipc        t1, 132997
                  auipc        s7, 1021015
                  or           a0, sp, a6
                  sll          s8, a6, s3
                  slti         s3, s10, -1388
                  slti         t2, s11, 1661
                  auipc        t2, 536251
                  lui          t6, 638203
                  srli         s1, s4, 20
                  sll          zero, s10, a3
                  slt          s3, a6, t6
                  auipc        t0, 242205
                  sub          t6, s11, a5
                  slli         t3, a1, 24
                  srai         s0, t2, 27
                  addi         t2, t1, -1078
                  slti         a4, s11, 1428
                  add          a5, s0, a3
                  slt          s10, t1, s5
                  and          a1, sp, s5
                  sll          t3, s9, a7
                  slt          a1, a4, t0
                  sll          s5, t5, s9
                  addi         t1, a5, 1846
                  slti         a5, t0, -1424
                  addi         a0, s3, -1569
                  xori         s8, t2, 1129
                  addi         s4, t1, -1574
                  srai         t2, a4, 23
                  or           s9, s1, tp
                  xori         t6, zero, 1817
                  auipc        s3, 650886
                  slli         gp, s1, 18
                  xor          gp, s5, t1
                  slt          s8, t6, s1
                  ori          a6, a4, 300
                  xori         s10, t1, 888
                  or           t3, gp, s10
                  add          a4, t3, zero
                  slli         t2, a3, 25
                  sll          t0, a4, s8
                  or           t2, ra, a2
                  and          s11, ra, a5
                  xor          t5, t4, ra
                  sltiu        s0, t0, 1125
                  slt          s5, a7, t2
                  or           t6, a4, sp
                  xor          t5, t5, a2
                  or           t6, s1, t5
                  srli         s9, t4, 18
                  addi         s4, s11, 1520
                  add          t3, zero, a3
                  srai         s5, s3, 14
                  sra          a6, s4, s4
                  xori         t3, t2, -268
                  andi         s7, s4, -481
                  auipc        a6, 705829
                  sll          t4, ra, s5
                  srl          a0, s11, tp
                  add          t1, s5, s5
                  or           t1, s11, a0
                  xori         gp, sp, -1272
                  srl          t3, a0, a7
                  nop
                  slli         s0, t6, 13
                  sltiu        s3, t4, 1121
                  add          s3, a0, t6
                  sub          s4, t4, s8
                  slli         t2, t3, 13
                  sltu         zero, t3, a5
                  slli         zero, s4, 23
                  auipc        s6, 818174
                  xor          t1, a0, a4
                  sltu         gp, s2, a7
                  and          t4, ra, a6
                  slli         t3, tp, 5
                  nop
                  ori          a2, t3, 1578
                  lui          gp, 55965
                  sra          s3, t3, t5
                  nop
                  addi         a2, sp, -543
                  srli         t0, ra, 26
                  or           s6, s4, s8
                  srli         a4, zero, 11
                  srl          s0, s6, s9
                  sub          s9, zero, a2
                  andi         s10, t0, 1318
                  addi         gp, s2, -733
                  xor          ra, s7, t5
                  lui          t6, 667689
                  sltu         gp, s4, a4
                  or           sp, sp, t0
                  lui          t1, 714868
                  sltiu        t2, t2, -1216
                  slt          s11, s5, sp
                  addi         a4, t0, -1317
                  srl          gp, sp, tp
                  and          s3, tp, s9
                  addi         s6, s3, -1831
                  andi         s3, gp, -1343
                  or           a1, a7, a3
                  andi         sp, s5, -191
                  srli         gp, a5, 26
                  srl          t4, a6, t0
                  sltu         s9, a7, s9
                  xori         ra, a3, 1391
                  auipc        s7, 181600
                  xor          t2, a1, s6
                  andi         t5, s7, 1938
                  nop
                  auipc        s1, 645803
                  sra          s11, a5, s5
                  slt          a2, s6, s10
                  auipc        s11, 672835
                  slti         s11, s0, 619
                  sltiu        s2, sp, -91
                  auipc        a6, 729516
                  srl          a0, s5, s4
                  srl          s11, t1, s4
                  xori         t2, a7, 1010
                  xor          s1, s7, s4
                  srl          t2, zero, a2
                  xor          t4, a6, s8
                  or           a6, a1, s10
                  xor          t2, s0, s8
                  srli         s7, t0, 27
                  auipc        s0, 107425
                  nop
                  slli         a2, t3, 26
                  sltu         t2, a7, s1
                  xor          t3, a6, t2
                  sltiu        t6, s1, -342
                  lui          s11, 65185
                  ori          zero, a4, 1352
                  sub          s10, a6, t6
                  or           s7, s6, tp
                  sra          s1, s6, s6
                  srai         ra, tp, 19
                  sltu         t1, s10, t4
                  sll          gp, s0, t3
                  sltu         t0, sp, s7
                  auipc        t5, 763389
                  lui          t4, 884573
                  srli         t3, ra, 17
                  sltu         a6, t5, t4
                  andi         s1, s0, 485
                  ori          s5, s0, -1399
                  sra          a1, s6, a1
                  srl          a6, t5, s1
                  or           zero, s4, tp
                  or           ra, s5, s1
                  ori          a5, s0, -420
                  srai         a0, zero, 19
                  srai         s1, t2, 10
                  addi         a5, a1, -1264
                  sltu         s5, s6, a3
                  sltiu        sp, s6, -171
                  addi         zero, s4, 656
                  sltiu        s0, s9, 848
                  lui          s7, 400683
                  sll          s6, t5, ra
                  sra          s0, t6, gp
                  slt          t4, s11, t3
                  auipc        s10, 398691
                  sltiu        s11, t6, 1059
                  xori         zero, t1, 605
                  lui          t4, 78388
                  sub          a6, t4, t2
                  srai         s9, s8, 25
                  slli         t6, s4, 1
                  xori         t5, a0, 2035
                  srl          a1, s8, t1
                  slli         t0, s7, 29
                  slli         t3, a1, 14
                  srai         t4, s10, 12
                  xori         t0, sp, -1296
                  andi         t0, gp, 1352
                  or           t4, s2, t1
                  srl          t3, t6, s4
                  xor          s10, s3, s9
                  or           a2, t6, t4
                  add          s6, s3, s4
                  and          s11, s1, s5
                  slt          t4, a6, t0
                  srli         s0, a2, 25
                  sltiu        s10, t3, 36
                  auipc        s7, 90548
                  xori         a2, a4, 1554
                  addi         t2, a6, 419
                  lui          t2, 1036497
                  slli         a6, s3, 24
                  and          a1, s9, s9
                  and          a0, s10, t6
                  or           sp, a0, s1
                  xori         t2, t2, -1275
                  srli         s6, t4, 0
                  slli         s1, t3, 2
                  or           s6, s6, s3
                  and          s1, s11, s6
                  lui          ra, 292601
                  slti         ra, t0, 1737
                  addi         t3, s5, -384
                  srl          t3, a3, t3
                  or           a4, a1, t2
                  add          s10, s5, ra
                  slt          a5, a7, s1
                  sub          gp, s8, s0
                  sra          s3, zero, a0
                  or           s11, s9, s4
                  slt          a0, gp, t3
                  sltu         s11, t3, s5
                  srl          a1, s6, t5
                  srli         gp, s1, 10
                  srl          zero, zero, t6
                  sub          t6, t4, s7
                  srli         s4, a6, 17
                  and          zero, s2, t3
                  xori         t5, a6, 888
                  or           s9, s3, a0
                  xori         a1, s10, -974
                  sltiu        s10, s11, -196
                  andi         a1, s3, 74
                  xori         t0, tp, 1704
                  srai         t3, s8, 6
                  sltu         s5, t0, s4
                  lui          s0, 456537
                  sll          a1, tp, a2
                  add          s0, s1, s10
                  srl          ra, s9, t4
                  ori          s4, s11, 490
                  and          t0, a6, a0
                  xor          t3, a7, s10
                  lui          ra, 359319
                  nop
                  and          zero, a7, t3
                  sra          s1, zero, a0
                  add          t3, s11, s4
                  srl          a4, a5, a5
                  xori         s10, tp, 846
                  nop
                  or           a5, s2, a3
                  ori          s7, s3, -841
                  sll          s4, s1, a2
                  slt          t1, s4, s7
                  sll          s7, s8, s10
                  sll          sp, t4, t0
                  add          t2, s0, t4
                  sltu         t2, s0, a4
                  srl          ra, t6, a6
                  sra          s0, a4, a2
                  slt          s5, s6, s2
                  lui          s9, 1024593
                  auipc        sp, 1016472
                  lui          a1, 779073
                  sra          t0, s11, t5
                  add          ra, s6, s10
                  sll          t6, t5, s1
                  sub          t1, s4, a6
                  sll          a4, ra, t3
                  sltiu        t5, a3, -882
                  sll          a0, t3, t6
                  xor          t4, s8, a7
                  sltu         s11, a2, s10
                  sll          s1, s1, a3
                  srai         a6, s11, 31
                  srl          s5, t5, a2
                  nop
                  auipc        gp, 268240
                  add          s2, a0, a5
                  slli         s3, a1, 15
                  add          s9, a1, s8
                  ori          s11, t2, -315
                  xor          t6, sp, zero
                  xor          t6, t3, a4
                  addi         sp, a4, 1117
                  and          a6, sp, a5
                  andi         sp, s7, 845
                  sll          t1, s6, s8
                  slli         a4, s9, 18
                  xor          a0, a1, s1
                  sll          s7, s1, a2
                  slt          s5, s10, t2
                  ori          zero, a6, 1516
                  xor          t4, s2, a4
                  or           s5, t1, a0
                  xor          t3, t1, s3
                  nop
                  srli         a2, a7, 19
                  ori          s10, t3, -394
                  sltiu        s9, a5, -1146
                  slt          t0, tp, a2
                  sltiu        s9, t1, -1704
                  xori         a4, a5, -1523
                  ori          s0, s2, 1425
                  xori         s2, s3, -197
                  srli         s7, s10, 6
                  nop
                  sra          t2, s9, a4
                  sll          s9, a1, a6
                  slti         s6, s4, 175
                  srl          ra, s8, a2
                  addi         s10, a0, -1303
                  sra          t4, s11, t5
                  sltiu        s4, s4, 391
                  slti         s10, s1, 1995
                  slli         s8, tp, 19
                  srai         s9, s8, 20
                  auipc        gp, 109753
                  or           a0, tp, ra
                  srli         s10, s8, 25
                  ori          a6, s10, -925
                  slli         a2, s3, 15
                  slli         s7, s0, 19
                  sra          t5, a7, a1
                  sll          s9, a6, gp
                  xor          t3, t1, t0
                  ori          s2, s2, 187
                  sub          t3, t3, tp
                  auipc        a2, 679583
                  xori         a1, s4, 510
                  nop
                  auipc        s8, 639116
                  xori         t2, t1, -938
                  xor          s0, s2, t2
                  sltiu        s4, s3, 166
                  add          t5, a1, t4
                  srli         s5, a7, 18
                  addi         t3, s3, -1888
                  add          s5, s0, s6
                  slt          t2, t5, s7
                  sra          gp, s6, a0
                  slt          s7, s7, a6
                  sltu         t4, a3, t4
                  andi         t1, t4, 1001
                  sltu         a0, a2, s3
                  auipc        t3, 691549
                  sra          t3, s0, t6
                  slli         t4, s9, 16
                  lui          a2, 13048
                  add          a0, a3, a2
                  add          sp, t4, sp
                  srli         t1, t2, 4
                  nop
                  or           a2, a7, t0
                  srai         t1, zero, 13
                  sltu         s1, a2, s10
                  addi         gp, s5, -268
                  sra          sp, s8, sp
                  slt          a2, t6, ra
                  sub          a0, zero, s8
                  sltiu        t6, s6, 307
                  add          s5, s8, s4
                  srl          s4, s2, t4
                  xori         t4, s5, -534
                  srl          s8, a7, tp
                  and          s11, s0, t4
                  lui          s2, 733379
                  add          sp, s9, s9
                  slli         a0, ra, 9
                  sltiu        t3, zero, -944
                  add          t1, t2, s8
                  or           s4, a5, s2
                  auipc        s7, 651135
                  add          a4, gp, t3
                  and          t4, tp, s0
                  xor          a2, s10, a0
                  sltiu        sp, s6, -900
                  add          t2, sp, a0
                  and          a1, zero, t1
                  slt          zero, a3, a1
                  sub          s4, s11, t4
                  sltiu        s5, a7, 1506
                  or           s9, tp, zero
                  xor          ra, s9, s10
                  srli         s6, a3, 1
                  sltu         sp, gp, s3
                  ori          sp, s11, 1889
                  xor          t6, a6, t2
                  ori          s6, ra, 917
                  sra          s3, t4, t0
                  srai         a1, s7, 10
                  addi         t5, sp, 1565
                  xori         s3, s3, 758
                  sltiu        t1, ra, 827
                  slli         s11, s0, 10
                  sltiu        t2, t0, -27
                  nop
                  srai         s7, s4, 5
                  sll          a6, s6, s11
                  sra          a2, t4, tp
                  sub          a4, t5, s11
                  add          s7, s4, s3
                  auipc        t2, 430363
                  slli         a2, tp, 11
                  sub          s10, gp, a4
                  xor          s10, a5, s1
                  or           a4, a2, s4
                  nop
                  lui          s9, 588283
                  add          s1, sp, s0
                  srli         s10, a6, 25
                  auipc        t5, 431635
                  lui          s2, 975861
                  andi         zero, a7, -895
                  add          gp, a7, s3
                  xor          s0, a5, t2
                  nop
                  sll          s1, a3, a2
                  srl          s7, s10, gp
                  slti         a1, a2, -1415
                  slt          s0, t5, s8
                  slti         a2, a2, -1985
                  add          s2, s1, s4
                  sra          s7, s9, s5
                  sll          s5, a4, s6
                  xor          a1, t5, gp
                  sub          zero, t3, sp
                  add          ra, s10, s5
                  slt          s1, s4, sp
                  add          ra, s1, t2
                  or           zero, s2, a0
                  or           t6, gp, a0
                  addi         a5, a0, 62
                  sll          a0, t3, s7
                  andi         a1, sp, 1853
                  srli         s8, s3, 11
                  ori          a5, s7, 1513
                  addi         t6, t5, -1774
                  srli         s0, s4, 19
                  andi         s5, s10, 1421
                  slt          s0, ra, t2
                  sub          s7, ra, t3
                  srai         t0, a2, 9
                  srai         gp, t0, 28
                  sltu         s8, ra, s4
                  ori          sp, s5, 1194
                  srai         t1, tp, 5
                  nop
                  or           t3, s9, s3
                  xor          s8, s1, s8
                  or           a2, s2, t1
                  srai         s7, s2, 27
                  sll          s7, t2, s6
                  and          t6, s4, ra
                  auipc        s1, 508612
                  sub          s8, t4, a1
                  srai         t6, a2, 13
                  andi         a6, t3, 1746
                  slti         t5, s2, -1357
                  add          s3, t0, gp
                  andi         a2, a6, 50
                  sltiu        sp, t6, 37
                  or           t3, t6, s4
                  sltiu        s4, a7, -849
                  addi         gp, tp, 783
                  and          a4, s1, a4
                  add          s8, s11, s4
                  sltu         t3, s10, s10
                  srl          t1, s4, t1
                  sltu         t2, a3, a5
                  nop
                  slt          zero, s2, s9
                  sltu         s10, s4, a7
                  slt          a0, a5, t3
                  srai         s1, s0, 21
                  sltu         a1, t4, t2
                  srl          s2, s11, s0
                  srai         a6, s6, 29
                  sltu         zero, a1, ra
                  sub          t4, t5, a3
                  sll          a0, t6, s6
                  ori          s1, a2, 840
                  srli         t5, t4, 28
                  and          s7, ra, a7
                  add          gp, t1, s4
                  auipc        s2, 541835
                  srli         t1, t2, 7
                  srai         a0, sp, 1
                  sra          t2, a7, a6
                  slli         ra, a7, 19
                  srl          gp, t0, zero
                  slti         s5, s9, 1413
                  add          s0, a2, s6
                  sll          s3, t3, s7
                  nop
                  or           t4, a4, t6
                  slli         s3, s4, 30
                  srai         t5, t0, 9
                  sub          s0, s4, a1
                  addi         s10, s8, -776
                  slti         s8, ra, -1289
                  or           a6, gp, s8
                  xori         a6, t4, 36
                  andi         s1, a2, 1034
                  nop
                  andi         s8, s10, -1025
                  xori         s11, s4, -1437
                  ori          s11, a2, -1372
                  sub          a1, t4, s6
                  srl          a5, s6, s4
                  ori          s1, a1, 1413
                  xori         t1, ra, 1196
                  auipc        a0, 580545
                  sltu         t5, t6, s5
                  and          s2, t0, s8
                  lui          a6, 783310
                  nop
                  sll          s8, s9, ra
                  srli         s11, s4, 16
                  auipc        t0, 603488
                  nop
                  slt          ra, t4, s7
                  xor          t0, s0, s9
                  sub          gp, t5, s4
                  srl          a1, a1, a3
                  auipc        s2, 1010905
                  addi         s11, a4, 158
                  sltiu        ra, a6, -105
                  add          s8, a3, t3
                  sub          s6, t5, a0
                  nop
                  lui          ra, 465787
                  and          a1, zero, s2
                  xori         a2, s11, 431
                  auipc        s8, 176298
                  xori         zero, a2, -1977
                  nop
                  addi         a4, a7, -2004
                  srai         a5, s8, 11
                  xori         zero, s1, 1005
                  srli         s0, t5, 22
                  addi         a1, t2, -842
                  srli         s2, s2, 31
                  addi         s1, s0, -1930
                  srai         a0, t6, 1
                  lui          a1, 569525
                  srl          a6, a3, sp
                  slt          t3, ra, sp
                  nop
                  slti         t6, s7, -1617
                  lui          s2, 93538
                  slli         s9, tp, 0
                  slti         a6, a7, 1078
                  srai         a2, t5, 16
                  lui          s10, 1003179
                  sll          a1, s1, s10
                  srai         s8, s1, 1
                  nop
                  or           t4, a4, tp
                  or           a6, a0, s8
                  lui          s6, 156204
                  sll          a4, s1, s8
                  xori         gp, s7, 111
                  and          s7, t4, s11
                  nop
                  slt          t4, t4, zero
                  slti         s2, a2, 603
                  auipc        t6, 390052
                  add          s3, sp, ra
                  xori         s3, sp, 817
                  sra          s5, s9, a4
                  sltu         a6, s7, s0
                  sltiu        t0, t2, 1190
                  slli         gp, t3, 3
                  slli         s2, ra, 12
                  sub          t4, a2, t3
                  lui          sp, 467734
                  slti         s5, gp, 624
                  addi         s3, tp, -886
                  andi         t5, t0, -645
                  andi         t4, zero, 1915
                  xori         t3, s0, -1614
                  or           s7, s0, ra
                  nop
                  srl          a0, t5, s7
                  sltiu        t0, s1, -571
                  sltiu        s10, s5, -1473
                  add          a6, t0, s7
                  and          a6, t1, a1
                  sltu         t4, s6, s7
                  sll          zero, zero, a1
                  sltiu        t1, a1, 906
                  xori         zero, s8, -1574
                  xor          sp, s6, s8
                  sltiu        s2, a4, -312
                  sll          a6, a7, a7
                  sltiu        t5, s0, 1749
                  xori         s0, tp, 1059
                  nop
                  or           s9, s1, a7
                  nop
                  sltiu        s4, a1, 162
                  xor          s10, a0, sp
                  srai         s6, s9, 3
                  xor          a5, a3, t0
                  lui          t2, 922726
                  andi         a6, a6, 847
                  nop
                  slt          t5, s4, t2
                  srli         a6, s1, 22
                  slti         a1, s8, -1706
                  nop
                  slt          a0, s0, s6
                  lui          t0, 346357
                  sltu         a4, s3, zero
                  sra          s3, zero, s10
                  ori          t1, s4, 1994
                  sra          s4, a2, tp
                  srai         zero, s11, 17
                  sra          s1, s5, t0
                  srl          s1, zero, s3
                  slli         a4, a7, 27
                  lui          t4, 611217
                  and          t5, sp, zero
                  sltu         a6, s7, t4
                  srli         s7, s6, 14
                  slti         a1, s1, -377
                  slt          ra, s3, s4
                  or           s5, a5, t5
                  add          s2, a5, s0
                  add          gp, t2, s6
                  nop
                  xori         s7, a1, 1340
                  add          s8, s8, a6
                  sra          s10, a5, s8
                  add          a6, ra, a0
                  ori          s5, ra, 948
                  slti         t0, t3, 1418
                  addi         s11, a3, 1905
                  xori         t6, tp, 420
                  lui          s10, 257617
                  sub          t2, s8, s9
                  nop
                  auipc        s9, 241698
                  auipc        t6, 649672
                  slt          a0, a7, zero
                  lui          t4, 407148
                  xori         s10, a3, -227
                  srl          a0, s10, s2
                  xor          t5, s1, s5
                  addi         ra, zero, -1627
                  sra          s0, t1, t3
                  nop
                  xor          s7, gp, s5
                  slli         a6, s9, 28
                  add          ra, s4, sp
                  slt          s11, a2, t1
                  slti         t6, s10, -2014
                  nop
                  sub          a6, a4, a4
                  slt          s1, t1, t6
                  ori          s7, s8, 1511
                  srai         ra, s4, 0
                  lui          a4, 754477
                  sll          a0, s3, t4
                  slt          t4, s8, sp
                  andi         t0, zero, 1815
                  auipc        t4, 318033
                  add          s6, ra, a3
                  nop
                  xor          t2, a3, t0
                  slt          s2, s1, a4
                  sub          a2, s11, s5
                  auipc        a2, 780588
                  sub          a1, a4, t3
                  xori         a1, t2, 300
                  srai         t2, s2, 21
                  sra          t0, s2, t6
                  srl          s3, s11, t0
                  sra          s10, a1, ra
                  ori          s6, a1, 1739
                  srai         zero, a0, 11
                  addi         ra, t5, -579
                  andi         s4, s6, -1185
                  srai         s9, tp, 13
                  or           t1, s9, s1
                  srl          t0, s11, t5
                  sltu         t0, a1, ra
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           t6, 0xffffffff
                  li           s4, 0x80000000
                  li           t1, 0xffffffff
                  li           s1, 0x97b02e9a
                  li           t3, 0x80000000
                  li           a1, 0xffffffff
                  li           t2, 0x0
                  li           sp, 0x0
                  li           a4, 0xd43419f
                  sub          a1, t1, t2
                  auipc        s8, 994972
                  auipc        a4, 484864
                  addi         sp, t6, 513
                  nop
                  auipc        a1, 429951
                  addi         s1, a4, -898
                  lui          a1, 643613
                  nop
                  addi         s8, t1, -272
                  sub          t2, t6, a1
                  nop
                  add          t2, t1, a1
                  nop
                  lui          t6, 858845
                  lui          a1, 771183
                  add          s1, t1, s1
                  nop
                  nop
                  auipc        t1, 699450
                  lui          t6, 27040
                  sub          t3, s4, t2
                  sub          t2, t1, a1
                  lui          a1, 456023
                  auipc        s4, 649860 #end riscv_int_numeric_corner_stream_19
                  or           s4, t5, s7
                  ori          s9, s9, -526
                  srli         s1, s5, 30
                  add          s10, s2, ra
                  xori         a6, t3, 712
                  srai         s5, s3, 12
                  sub          s6, a4, t0
                  sll          sp, a4, a3
                  xori         gp, t3, -1892
                  addi         a4, t0, 162
                  or           t6, s3, t3
                  srl          sp, t4, s5
                  srli         a4, t0, 13
                  lui          s8, 805714
                  lui          a6, 1011673
                  sub          s5, t0, s7
                  and          a2, a0, a4
                  sra          a6, s8, a3
                  sub          zero, s9, s4
                  xori         sp, s3, -762
                  sltiu        s11, a0, 940
                  andi         s4, a7, -516
                  sra          a6, sp, a2
                  xor          s1, a1, t1
                  srl          s11, a7, a1
                  xor          s0, s2, s10
                  sub          s7, tp, t5
                  addi         s10, s11, -1678
                  xori         a6, tp, -84
                  addi         t1, s11, -671
                  sltu         s5, s1, s4
                  or           gp, zero, s0
                  xori         t4, ra, -2048
                  xor          t1, t1, s0
                  sra          gp, sp, s6
                  auipc        s6, 526902
                  ori          s4, s9, -1440
                  sra          s3, s8, s7
                  and          s2, s8, t4
                  xori         t5, s8, -1665
                  add          s3, s2, t0
                  sra          t5, s11, a6
                  sub          s8, t6, a5
                  srai         a1, t4, 21
                  slti         s0, tp, -708
                  srai         gp, a6, 16
                  sra          s8, s4, a6
                  srli         s0, zero, 8
                  slt          a0, s0, s11
                  or           t0, a6, s0
                  srai         t2, t2, 5
                  addi         t0, tp, -606
                  xor          a4, a7, a1
                  nop
                  sltu         s11, s0, t4
                  add          s3, t4, s7
                  slt          a1, t2, s9
                  add          s0, t6, s4
                  andi         sp, ra, -1748
                  or           zero, s9, ra
                  and          a0, a1, t6
                  sltu         s3, t4, t0
                  ori          s5, s9, -173
                  slti         s10, t6, 632
                  sltu         s10, s9, zero
                  srl          t2, t3, a5
                  add          a0, t2, sp
                  xori         s4, t0, -1093
                  sltu         zero, s7, s7
                  sub          s9, t6, s4
                  slt          t2, t0, s3
                  auipc        t3, 1010021
                  ori          a5, a0, -1301
                  sra          s1, s7, s3
                  slti         a5, t6, -593
                  or           t2, s8, s11
                  srl          t2, s9, t0
                  lui          s3, 117718
                  sltiu        a4, a4, -773
                  slli         t5, s9, 8
                  andi         t1, a2, 281
                  addi         t6, zero, 1870
                  nop
                  auipc        zero, 401981
                  srl          a0, s5, s8
                  slli         t6, s3, 22
                  lui          t4, 228663
                  slti         a4, t2, 312
                  ori          gp, s1, 2016
                  or           gp, sp, t5
                  sll          a2, tp, s6
                  ori          s2, a1, -572
                  nop
                  ori          t1, s8, 1231
                  slt          s2, s0, a7
                  srai         t3, a6, 6
                  sll          t6, zero, s10
                  xor          s0, s7, t2
                  addi         a0, s8, 902
                  lui          t2, 216717
                  or           s2, a1, sp
                  xor          s9, s9, tp
                  ori          s8, a0, -883
                  or           a5, tp, a1
                  lui          a1, 307550
                  xori         s5, s9, -99
                  or           a1, a4, ra
                  auipc        s1, 726368
                  srl          s8, t0, gp
                  or           s7, s5, s6
                  srl          a5, s7, t6
                  xor          a6, t3, sp
                  slt          t4, s11, t4
                  slli         s6, s11, 7
                  and          s11, tp, t1
                  srli         a0, s3, 30
                  xori         s7, s10, -1117
                  add          t5, a0, s0
                  sra          ra, a3, a4
                  sltiu        s2, ra, -819
                  xori         gp, t5, 1242
                  sub          ra, t4, gp
                  srai         s2, s6, 8
                  srai         t4, t5, 8
                  sltiu        s6, s8, -740
                  ori          t1, a5, 264
                  auipc        s3, 116479
                  nop
                  andi         s1, s3, -1138
                  andi         t2, t3, 1205
                  srai         gp, s6, 27
                  or           s6, s0, s0
                  sll          a2, a4, s7
                  slti         s4, s0, -290
                  srl          a5, t2, s5
                  slli         s7, t6, 11
                  add          s5, s7, t6
                  srai         s9, sp, 2
                  slt          s8, s8, a1
                  slti         s6, gp, 205
                  or           s5, s8, t5
                  sltu         a1, s10, a4
                  sll          t4, s11, t6
                  sra          t0, t4, s1
                  or           t2, t4, s4
                  or           s2, gp, s6
                  slli         s8, s10, 0
                  sub          a6, a5, s5
                  srl          s6, a3, s7
                  addi         s11, a0, -823
                  ori          t4, a4, -1737
                  srai         a0, tp, 14
                  sub          gp, sp, s10
                  sltu         s9, ra, a1
                  srai         sp, t1, 12
                  sub          a0, s3, s0
                  sltiu        a1, a1, 1782
                  sltu         a6, s8, a3
                  sll          s5, a7, s5
                  lui          a1, 630468
                  slli         s5, t0, 25
                  xor          s2, s6, tp
                  xori         t2, t6, 793
                  srl          a1, t4, s0
                  slti         ra, gp, 1323
                  andi         t2, s2, 1096
                  sll          zero, s9, a3
                  srli         s11, a3, 5
                  auipc        a2, 878026
                  srai         t5, a4, 4
                  slt          t3, s9, s1
                  ori          t4, s7, -72
                  sub          s3, t3, s1
                  auipc        sp, 648893
                  add          s1, ra, s4
                  srai         s6, s0, 3
                  srli         s10, a0, 18
                  or           s8, zero, a6
                  sub          s0, t3, t2
                  srli         s5, s0, 8
                  andi         a4, t2, -233
                  sra          s6, a7, gp
                  lui          a6, 922383
                  addi         t3, tp, -1206
                  srai         a1, t3, 13
                  slt          s0, s5, t4
                  slli         s3, a7, 29
                  lui          ra, 106711
                  addi         sp, t1, -1788
                  slli         ra, t5, 24
                  or           sp, a3, s1
                  auipc        a4, 432559
                  xor          t3, s2, s5
                  sltu         a1, t5, s10
                  sub          ra, s7, s2
                  addi         t4, a3, 1774
                  or           t3, tp, t0
                  slli         t1, s10, 23
                  auipc        s7, 283191
                  sra          s0, a7, s7
                  slti         s11, sp, -623
                  andi         a0, s7, -1283
                  srai         t1, a0, 25
                  sll          s8, s8, a7
                  sra          t1, t5, s11
                  lui          a5, 536199
                  sltiu        t0, s3, 1511
                  or           t1, a4, gp
                  sll          a2, s8, gp
                  addi         s10, t0, 518
                  andi         sp, a3, -1206
                  slt          zero, s0, s1
                  and          t4, a2, t1
                  xor          s3, s3, t0
                  srli         s0, t4, 10
                  xori         s7, t1, -838
                  sltiu        s1, a2, 766
                  addi         s2, a2, -361
                  sub          a4, s9, s6
                  or           a0, s8, s0
                  slti         s3, a6, 1438
                  and          ra, s4, t5
                  andi         s8, tp, -1836
                  lui          a6, 879341
                  xori         s7, t2, -938
                  sra          a2, a4, a1
                  srli         a6, a3, 17
                  add          t3, gp, s1
                  sub          s3, s9, t6
                  xori         t3, s0, -1088
                  auipc        s2, 984668
                  slti         s11, s7, 1501
                  sra          t1, a2, a6
                  srl          s2, sp, a6
                  sra          s4, zero, s3
                  slli         s7, tp, 19
                  nop
                  srl          a2, sp, t3
                  srli         s0, t2, 19
                  or           s3, s10, s10
                  nop
                  andi         s5, a2, -592
                  slli         t0, tp, 5
                  xor          s8, t1, s11
                  xori         s7, a5, -1566
                  srai         s6, sp, 6
                  slt          t5, a1, s10
                  xori         s0, t5, -1646
                  xori         s8, s2, 1517
                  and          a5, s5, a3
                  slli         t6, t6, 23
                  sub          s6, s0, s11
                  slt          s5, a1, t1
                  addi         sp, tp, 1678
                  sltu         a5, a0, s5
                  addi         s2, t4, 955
                  srai         s11, s0, 31
                  srai         a5, s10, 4
                  srl          s10, s3, s4
                  and          s10, t1, a1
                  addi         a6, sp, -876
                  addi         s11, t3, 952
                  lui          s0, 240573
                  or           s1, ra, t2
                  and          t5, s10, s8
                  and          s9, s7, t2
                  sra          s10, tp, s10
                  slti         s4, s0, 1091
                  and          t1, t5, t5
                  srl          t1, a7, zero
                  add          a2, t5, s4
                  addi         s2, s11, -90
                  sltiu        t2, a0, 953
                  sltu         s3, a6, a0
                  auipc        t1, 425783
                  slti         s4, t1, -1490
                  add          s4, a4, t5
                  xor          a1, a3, a2
                  xor          a4, s9, a7
                  addi         s9, t2, -211
                  sub          t2, t3, a7
                  sub          t3, s7, s8
                  sltiu        s8, a6, 1736
                  andi         s1, gp, -564
                  and          t4, a5, s2
                  slli         t4, s10, 19
                  auipc        s5, 663449
                  sub          s5, a5, t5
                  sub          s3, t4, s9
                  sltiu        s4, t2, 1091
                  sll          s8, s2, a1
                  auipc        s6, 701333
                  addi         s8, s1, -130
                  sltu         a5, s2, sp
                  addi         a0, s7, 1967
                  ori          ra, tp, 1524
                  add          s1, a0, s8
                  or           sp, t6, s6
                  xori         a1, sp, 1105
                  srl          a5, t5, zero
                  ori          s3, s10, 811
                  addi         a6, s10, -524
                  and          s1, s0, s1
                  nop
                  nop
                  or           s11, s11, a6
                  slti         a5, ra, 63
                  xor          zero, s9, sp
                  xor          s1, tp, t5
                  sra          a6, s8, a0
                  srl          s4, a0, a7
                  xor          s10, a6, a7
                  ori          s0, s8, -1991
                  srli         t0, a6, 19
                  slli         t3, a6, 3
                  ori          gp, t3, 383
                  add          s1, s5, t0
                  sltiu        s2, t5, -1130
                  sub          s9, s2, a5
                  and          s0, s10, a2
                  xor          t5, s7, s0
                  slli         s8, a4, 14
                  addi         t6, a2, -1515
                  srli         a4, s4, 22
                  auipc        gp, 470059
                  add          s2, s2, t1
                  nop
                  sra          a2, s10, t2
                  ori          s1, s2, -1690
                  or           s3, s4, a4
                  srl          s10, t0, gp
                  andi         a1, t0, -1888
                  srai         s4, a1, 14
                  xor          s0, s7, t0
                  xor          zero, tp, s4
                  slti         a6, t6, 235
                  sub          t6, s11, s9
                  add          s10, s2, gp
                  lui          zero, 416895
                  andi         t2, s5, 1614
                  sltu         t2, a6, t2
                  sltiu        s5, s8, 736
                  addi         a4, a5, 2016
                  addi         s7, gp, 296
                  ori          t4, ra, 1840
                  sltu         a0, sp, s3
                  nop
                  sll          a0, zero, t1
                  sltiu        s5, s7, 169
                  sra          s8, t5, s6
                  lui          s7, 809581
                  sll          a5, a0, a2
                  add          t0, gp, ra
                  sltiu        s6, tp, 1220
                  or           t0, t6, s5
                  sltiu        s7, a0, -1936
                  srl          a2, s3, sp
                  ori          gp, s6, 614
                  sub          s5, gp, a3
                  or           t4, sp, tp
                  xori         s8, s0, -1911
                  sltiu        a0, zero, 2023
                  srli         t2, tp, 13
                  sltiu        t3, a5, 1223
                  sub          s8, s6, sp
                  auipc        a6, 859801
                  slti         t4, s1, 935
                  sltu         zero, tp, s0
                  xor          t0, ra, t1
                  slti         a5, sp, -1391
                  srai         s10, a1, 10
                  slli         s11, s7, 21
                  slt          sp, t4, tp
                  auipc        t6, 1047591
                  auipc        a1, 309550
                  slli         t1, s9, 15
                  sltu         zero, s8, s2
                  xori         t3, a2, 1603
                  nop
                  srai         s11, s5, 15
                  srl          t5, t3, a3
                  xori         s9, s9, -1927
                  sll          s9, a5, s2
                  srai         a1, ra, 3
                  slli         s4, a0, 27
                  srai         a0, t6, 4
                  xor          zero, s6, gp
                  sub          a1, t1, s11
                  addi         s10, a1, 1364
                  ori          s4, s11, -453
                  xori         s7, tp, -844
                  andi         s3, s9, -936
                  srai         t3, ra, 13
                  ori          s4, a7, 1770
                  sub          s7, a4, s1
                  sltu         s9, sp, a0
                  ori          t0, a3, -1194
                  sub          s3, s7, t0
                  lui          a1, 789025
                  srl          t2, s9, s6
                  auipc        s9, 524905
                  andi         s7, a5, -281
                  ori          a4, s0, 191
                  xori         s9, s3, -319
                  lui          s10, 188828
                  lui          t4, 502766
                  sra          ra, t1, tp
                  srli         t6, s7, 27
                  addi         a1, s6, 1060
                  auipc        t3, 19120
                  srai         s8, t2, 25
                  xori         s11, s0, -1097
                  sra          t3, t1, s1
                  sltiu        ra, s6, 1242
                  lui          s11, 910476
                  sll          a1, s9, t6
                  and          a2, tp, a1
                  andi         s8, a4, -1138
                  addi         t5, t6, -517
                  add          a4, a1, zero
                  srli         sp, t5, 13
                  or           s1, s9, s5
                  sltiu        s5, s6, -1577
                  xori         s3, t3, 758
                  sltiu        sp, t5, 756
                  sltiu        s10, a6, 1248
                  sltiu        s0, s2, 1578
                  xori         sp, a5, 1662
                  sra          s6, s7, s4
                  add          ra, s11, gp
                  xori         a6, a6, 457
                  sra          s7, a1, ra
                  sltu         t5, s10, s4
                  lui          t1, 735222
                  auipc        a4, 806366
                  sltiu        gp, t6, -1363
                  andi         s0, s9, -311
                  or           ra, t2, t2
                  andi         s9, s1, 1624
                  slti         s1, a1, 1530
                  and          s0, s11, gp
                  xor          gp, s2, gp
                  slli         gp, a3, 5
                  sltiu        s6, s2, -868
                  srl          s9, t1, a4
                  nop
                  lui          sp, 889941
                  sll          s3, a2, t5
                  xor          s8, s8, s3
                  srli         s10, a7, 25
                  addi         s8, s9, 1608
                  ori          ra, s1, -1061
                  slt          a1, t1, a6
                  addi         s0, zero, 464
                  ori          s3, t4, 895
                  srl          s0, a6, a5
                  and          s8, t6, s4
                  slt          s10, s11, s1
                  sltiu        s4, s1, -1825
                  and          t1, a6, s2
                  add          s7, t0, t2
                  slti         t1, s7, 383
                  sll          s3, a0, s8
                  srli         t0, s7, 9
                  srai         a1, s2, 25
                  andi         a1, a0, 304
                  sltu         a6, sp, s7
                  or           t3, a6, a0
                  xor          t1, s2, s11
                  xori         a4, a3, 15
                  slt          a1, s0, s3
                  xor          a4, a4, s0
                  slti         t0, a3, 601
                  slti         s4, a2, -2001
                  or           zero, zero, t1
                  nop
                  auipc        t5, 325401
                  slti         s7, a1, 1454
                  add          s1, a1, sp
                  andi         t6, t2, -1099
                  addi         t5, s1, -1114
                  sltu         a5, s2, t4
                  andi         gp, s8, 1910
                  slti         sp, s2, -1475
                  sub          t6, ra, s2
                  addi         s10, t6, 1779
                  srai         s7, a3, 15
                  sll          a4, a1, s9
                  or           s7, s2, s10
                  sub          ra, a2, t5
                  srl          s1, a6, a6
                  ori          t5, t6, 136
                  slti         t4, s7, 569
                  sll          s9, s8, s6
                  or           s1, tp, t4
                  sltu         a2, s5, a6
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s0, 0x80000000
                  li           s10, 0xffffffff
                  li           s9, 0x80000000
                  li           t2, 0x2d7e55bf
                  li           t5, 0x0
                  li           s7, 0xe24aba06
                  li           t3, 0x2f69afc7
                  li           a4, 0x88206bf1
                  li           gp, 0xffffffff
                  auipc        t5, 46632
                  lui          s7, 540198
                  nop
                  addi         gp, s2, -1017
                  add          s9, s2, s0
                  sub          t3, s0, s0
                  add          s2, t3, s2
                  add          t2, s7, s7
                  addi         a4, s10, 1577
                  addi         gp, a4, 395
                  lui          s0, 229497
                  addi         s0, t3, 386
                  nop
                  add          t3, s7, t5
                  nop
                  auipc        a4, 163995
                  lui          t3, 775133
                  nop
                  sub          t5, s9, s9 #end riscv_int_numeric_corner_stream_5
                  sra          s5, t6, zero
                  sltiu        zero, t3, -1000
                  slli         t4, a4, 27
                  srai         t4, t5, 2
                  srli         s9, a5, 7
                  slt          sp, s7, a2
                  srl          a1, t0, s11
                  or           s3, zero, t3
                  nop
                  andi         t1, a2, -1396
                  slli         sp, a4, 3
                  slti         s8, zero, 1894
                  srl          t0, s3, s9
                  or           t1, a3, s9
                  slli         s4, ra, 26
                  or           t5, a3, a2
                  nop
                  slt          s0, s2, s3
                  xor          s3, s3, s9
                  lui          s0, 847400
                  slti         s11, t5, 999
                  lui          s1, 83164
                  srl          t4, s9, s9
                  andi         s2, a6, -437
                  sltiu        s8, t6, 1416
                  slt          s7, gp, a7
                  andi         a5, ra, -53
                  andi         a4, t1, -1534
                  sub          t6, t6, s0
                  sltu         t1, ra, a6
                  lui          s4, 604509
                  srai         s7, t3, 18
                  nop
                  ori          s3, a3, 2017
                  srli         a5, t3, 29
                  xori         a4, a1, -1189
                  sll          t3, s7, a2
                  ori          sp, s0, -1647
                  andi         a0, s9, -1079
                  lui          s4, 381071
                  slli         a2, s10, 1
                  ori          s7, s0, -906
                  sll          t1, s2, a5
                  slti         s4, t6, 2033
                  slli         s1, t0, 9
                  auipc        s5, 120891
                  srai         ra, a4, 1
                  sra          s4, s1, s9
                  ori          s11, s1, 499
                  or           s6, ra, s6
                  xor          s6, ra, t3
                  xori         gp, t1, -1919
                  sltu         t5, s8, s0
                  nop
                  srl          a1, tp, a1
                  xori         gp, s6, -1137
                  and          s11, a4, s5
                  lui          s4, 634966
                  and          a4, a4, a0
                  addi         s5, s5, -750
                  srl          gp, sp, t2
                  srai         s2, a4, 5
                  srl          t3, a5, t1
                  srli         s2, s4, 23
                  sltiu        s8, s6, -642
                  or           t4, a2, a5
                  add          a1, s6, t1
                  srl          ra, a3, t3
                  srai         a2, t0, 10
                  sltu         gp, zero, a4
                  ori          t0, s6, 20
                  and          s1, a1, s10
                  ori          a6, s4, -833
                  sll          s0, s5, a3
                  srai         s9, t2, 20
                  srli         s0, s4, 5
                  slli         s5, s2, 2
                  xori         s8, a3, -886
                  andi         s11, s9, -1994
                  slt          s6, tp, s1
                  sub          t6, s4, s5
                  nop
                  ori          s4, t3, -1259
                  sub          t1, s9, a7
                  slt          a6, ra, s2
                  slli         a1, t5, 3
                  srai         s9, s0, 7
                  add          t3, t5, s1
                  xori         s3, a4, 1045
                  sltiu        s7, s2, 569
                  lui          t2, 155242
                  ori          sp, t6, 331
                  sub          t3, t1, s0
                  srai         a0, s5, 21
                  xori         s5, s9, 664
                  nop
                  add          a0, gp, s10
                  nop
                  xor          s0, s0, a4
                  and          s8, a0, s1
                  and          t2, s10, sp
                  xori         s9, t2, 1461
                  lui          s8, 426812
                  sll          gp, t2, t2
                  srai         a1, s4, 15
                  xor          s8, s0, a3
                  nop
                  auipc        s3, 213080
                  xori         zero, ra, 1115
                  nop
                  nop
                  andi         s9, t4, 462
                  srai         s6, t6, 1
                  sub          s0, gp, s0
                  slti         sp, zero, 1553
                  sll          s11, gp, t5
                  auipc        s4, 568717
                  and          t5, t3, a5
                  sltiu        s2, a2, 1750
                  auipc        ra, 608114
                  add          sp, t0, gp
                  lui          s10, 712071
                  auipc        a6, 862984
                  sll          a1, s11, s2
                  srai         a0, s0, 2
                  andi         s8, s7, 1230
                  nop
                  sltiu        ra, a2, -1041
                  sra          a1, a7, t0
                  and          a2, tp, s7
                  slt          a4, t1, t3
                  or           s1, gp, s0
                  and          a6, s10, s11
                  or           t6, s6, s5
                  sll          ra, a4, t1
                  sub          ra, a1, t3
                  andi         a2, a7, 661
                  ori          t0, s5, -1735
                  slli         t5, s9, 27
                  ori          a0, a1, -1620
                  slt          s7, a5, s1
                  sltu         t5, a1, a7
                  slti         s2, t0, 8
                  nop
                  ori          a1, t1, 1160
                  and          a6, s9, t0
                  addi         t6, s8, -81
                  slt          s0, t2, t3
                  srli         s0, t4, 30
                  andi         s1, s2, 1165
                  nop
                  addi         s5, t2, -182
                  slt          t0, t3, t1
                  auipc        s2, 550274
                  sub          a1, s2, tp
                  addi         zero, tp, -1992
                  andi         a4, s11, 1351
                  slt          s5, gp, zero
                  sltu         s10, t0, a5
                  auipc        a4, 617559
                  srl          a6, s8, t6
                  addi         t6, s1, 518
                  slli         t0, s10, 5
                  srl          gp, ra, a3
                  sltu         t0, t0, t4
                  srl          sp, s3, s0
                  slt          s9, s2, s0
                  sltu         zero, a0, a5
                  srli         t6, s5, 4
                  addi         t3, t2, -1785
                  sra          a6, s3, t6
                  ori          s11, zero, -807
                  slt          s11, t0, t1
                  nop
                  and          t6, s8, s3
                  srli         t1, s6, 14
                  xor          s4, s8, s5
                  addi         s1, s3, 1800
                  andi         a0, s1, -407
                  sll          a5, t0, a1
                  sub          sp, s3, zero
                  lui          t6, 550034
                  slti         a6, s5, -1502
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           s0, 0xffffffff
                  li           a4, 0x80000000
                  li           a0, 0xffffffff
                  li           t6, 0xffffffff
                  li           a1, 0x8cfe726a
                  li           s4, 0x4e250874
                  li           t2, 0x80000000
                  li           s3, 0x80000000
                  li           s5, 0xe57fb96e
                  add          s0, s5, a1
                  sub          a4, s4, a4
                  nop
                  add          a0, a1, a1
                  lui          a0, 346359
                  add          s5, s5, s4
                  sub          t2, a0, s9
                  sub          s9, a1, a0
                  lui          a4, 400287
                  sub          s0, a4, s4
                  lui          s4, 755977
                  auipc        s0, 1041625
                  nop
                  add          s0, a4, s4
                  add          s3, a1, s5
                  lui          s9, 882944
                  add          a4, a4, s4
                  nop
                  sub          a1, s3, s9
                  lui          s5, 992038
                  sub          s3, s0, a0
                  add          s4, s9, s0
                  auipc        a4, 1041265
                  addi         t6, s3, 1437
                  sub          s5, t6, s9 #end riscv_int_numeric_corner_stream_10
                  sub          s8, t4, s8
                  sltu         ra, t1, t6
                  slt          zero, t0, sp
                  srai         s2, t6, 29
                  sra          sp, zero, a0
                  ori          s5, a0, -1196
                  lui          s4, 565282
                  srl          s3, s7, sp
                  or           a1, a0, tp
                  xor          t5, t6, s6
                  srai         t4, s8, 27
                  srli         s3, a3, 15
                  srl          t5, s1, a2
                  or           sp, t4, ra
                  andi         s0, s9, 776
                  srli         s9, t6, 30
                  sltiu        s4, t6, 1409
                  and          sp, s2, s1
                  ori          gp, s5, 1984
                  slt          a5, t1, a0
                  andi         s9, tp, -1406
                  lui          zero, 403693
                  sub          t3, s9, t5
                  or           a2, tp, a0
                  slt          zero, a2, s10
                  xori         a6, a4, -1146
                  slli         a2, s0, 21
                  sltu         a2, s9, zero
                  sub          t5, a1, t2
                  addi         t3, t4, 1400
                  lui          s3, 889603
                  add          gp, a0, tp
                  xor          t0, a4, ra
                  slt          t2, zero, a5
                  and          a5, s3, t6
                  slli         t5, s5, 18
                  and          s7, ra, t5
                  auipc        s11, 291447
                  ori          s11, s10, -1866
                  slli         s8, s5, 7
                  lui          ra, 847663
                  xori         s3, t5, -528
                  slt          t3, a5, t1
                  andi         s1, a2, -163
                  sltiu        t0, s3, 36
                  slt          gp, t6, s3
                  slt          s6, s0, a5
                  srli         s8, s3, 6
                  sltu         t4, a3, t1
                  slli         ra, t3, 9
                  nop
                  ori          a0, s9, -1789
                  and          a1, sp, s3
                  sra          t1, s2, s11
                  xor          s3, s9, a6
                  slti         s0, t3, 256
                  srai         s11, a4, 23
                  xori         s6, s3, -583
                  addi         a2, ra, -1213
                  addi         s1, a4, 400
                  slt          gp, s10, a2
                  addi         gp, s3, -483
                  addi         a6, t0, 838
                  or           zero, a0, a0
                  slt          t0, s3, t6
                  or           t0, t2, s10
                  lui          a1, 826811
                  srai         zero, s9, 30
                  xor          s8, s6, s7
                  xori         s8, t3, -1369
                  srai         gp, ra, 16
                  andi         a1, s1, -524
                  slli         s7, sp, 4
                  srai         a1, s10, 13
                  sll          s6, s8, s10
                  sltu         s1, a7, a6
                  slt          s5, s6, a2
                  slt          s2, t0, a5
                  srli         s10, s11, 31
                  sra          t6, t0, a5
                  ori          s0, a1, -386
                  sra          s2, s10, s8
                  slti         t0, t3, 1510
                  nop
                  and          t0, a3, tp
                  srai         t4, s2, 11
                  slti         s2, sp, 1072
                  sub          t1, zero, s11
                  and          a4, a3, ra
                  slti         t0, s9, -391
                  sltiu        s0, s1, -452
                  slli         a4, zero, 30
                  andi         s2, sp, 567
                  sub          s6, a0, a5
                  slti         s9, ra, -517
                  sll          a0, t3, s5
                  xor          s3, a5, a6
                  or           s6, zero, gp
                  sub          s6, s5, s10
                  nop
                  sltu         s9, tp, sp
                  ori          t3, tp, -887
                  srli         s7, s0, 9
                  xori         s8, t0, -642
                  sub          s2, t4, a5
                  xori         t3, s7, 543
                  addi         t5, s1, -1189
                  or           sp, gp, a4
                  srai         t6, s4, 12
                  nop
                  sub          t1, t5, a4
                  sll          a5, t3, s4
                  or           t0, t4, tp
                  sra          s5, a6, t0
                  slli         t1, zero, 25
                  addi         sp, t5, 516
                  xori         s4, s2, 1302
                  sltu         t2, a5, t4
                  sll          a5, t0, s0
                  xor          a5, s1, tp
                  ori          s3, s0, 554
                  and          s6, s2, s7
                  lui          t4, 135266
                  slt          t3, t1, a2
                  add          t5, ra, a2
                  nop
                  sll          ra, s2, ra
                  xor          s4, a3, a6
                  slti         s0, t3, 2041
                  lui          s2, 87591
                  srl          s1, t0, t2
                  nop
                  slli         t4, s3, 10
                  srl          t5, a0, s7
                  sltu         t3, a2, s11
                  slli         a1, s2, 1
                  lui          t1, 956072
                  nop
                  sra          gp, t3, ra
                  xori         a1, a2, 687
                  sltu         ra, s4, tp
                  lui          s6, 677276
                  sltu         t6, s0, s3
                  srli         a1, s7, 28
                  sra          sp, s8, s3
                  slt          s9, t4, t5
                  slt          s4, t2, s3
                  srai         ra, s10, 21
                  xori         t1, ra, 1420
                  sltiu        ra, a6, 1071
                  slti         t1, s9, -405
                  srai         t5, t4, 4
                  nop
                  srl          ra, a4, s6
                  sltiu        s7, a4, 1504
                  xori         a5, a6, -1232
                  sll          a0, sp, s7
                  sltu         s5, sp, s3
                  slli         a0, s2, 29
                  srli         s9, s1, 29
                  nop
                  xor          s11, s1, t0
                  sltu         s2, s10, t6
                  auipc        s11, 631815
                  sra          a1, s9, s11
                  sub          a5, s4, s1
                  and          gp, s6, s11
                  sltu         a1, s10, t4
                  nop
                  or           s8, gp, gp
                  add          s9, s6, s3
                  srli         s5, s8, 29
                  slt          s5, t5, s9
                  sra          s2, t2, s8
                  slt          a1, t2, s6
                  andi         t1, tp, 423
                  sll          a2, s1, s2
                  slt          s2, gp, t3
                  srl          t1, s11, a7
                  xor          s7, s7, s5
                  xor          a5, s1, s6
                  sub          a2, s8, a4
                  srl          t2, gp, s8
                  slti         a0, t4, 1366
                  addi         s10, t2, 669
                  sltiu        s7, t1, 1799
                  xori         s9, s7, -519
                  slt          s8, t6, zero
                  addi         t0, tp, 601
                  sltiu        s11, t5, -228
                  sltiu        a6, sp, -197
                  andi         s4, s11, 1202
                  sltiu        a6, s11, -1498
                  lui          t4, 237805
                  sub          s9, a3, t0
                  addi         s8, a0, 725
                  slti         t3, gp, -2003
                  slti         a4, s8, 767
                  ori          s10, t4, 116
                  sltu         a5, t3, s2
                  addi         sp, s11, 879
                  or           a4, s0, ra
                  slti         s1, s9, -1869
                  xori         s9, a2, 707
                  slti         s10, a4, -322
                  sll          ra, a4, a5
                  sltiu        s0, s9, -1956
                  slt          s1, s10, t4
                  sra          a0, s6, a7
                  slt          s8, a5, s9
                  ori          s0, t3, 234
                  sltu         s0, a1, s11
                  sub          a4, s2, a4
                  slti         s6, t4, 1340
                  addi         t6, s0, -1323
                  xori         sp, gp, -322
                  sub          t2, s0, s2
                  and          s7, tp, t5
                  and          sp, tp, s8
                  lui          s2, 733891
                  srai         a1, a0, 4
                  srl          t6, s4, t5
                  srli         a2, gp, 4
                  slti         a2, a6, 1573
                  slt          sp, t3, a3
                  ori          t2, t2, 1164
                  sub          s4, t1, sp
                  srli         t6, s6, 9
                  sltu         s10, t0, s3
                  nop
                  andi         a0, a6, 1763
                  lui          s10, 439101
                  slti         sp, s1, 679
                  srli         t0, s5, 29
                  addi         s7, s6, -964
                  srli         t1, s2, 27
                  srli         a5, gp, 1
                  and          s1, t0, s5
                  andi         sp, s3, -2019
                  nop
                  slti         ra, t2, 480
                  srai         s4, a3, 29
                  slt          a5, s9, gp
                  slti         a1, s2, -1034
                  slli         s10, s3, 1
                  add          s5, s6, s7
                  srli         ra, s3, 1
                  nop
                  sll          a6, zero, a4
                  or           s8, s4, s9
                  lui          gp, 120168
                  andi         s6, a1, 382
                  srli         gp, a6, 15
                  slti         s4, sp, 1177
                  add          a6, s0, t1
                  slti         s1, s0, -1237
                  slli         a5, s6, 15
                  srli         sp, a0, 6
                  nop
                  sll          s11, a4, a1
                  xor          a4, a7, ra
                  or           a0, s1, s1
                  srai         t6, t0, 22
                  xor          s1, t2, s8
                  or           s8, a1, s7
                  srai         a1, t6, 15
                  sra          s4, s10, a3
                  slt          a0, tp, s9
                  sll          sp, s10, a1
                  add          gp, t4, t3
                  ori          s11, a5, 1184
                  sll          s3, t0, s10
                  nop
                  addi         a5, a4, -33
                  andi         s9, s9, -355
                  and          s1, s10, a5
                  or           t3, tp, t3
                  srli         sp, a1, 17
                  sll          sp, t5, zero
                  and          a0, t2, t3
                  andi         s10, a1, 89
                  or           s7, s11, gp
                  or           t2, a4, t1
                  sltiu        s0, s8, -204
                  srli         a6, a6, 22
                  xori         s10, a1, -1638
                  slli         s11, s9, 4
                  andi         zero, ra, -1014
                  srai         t5, zero, 19
                  andi         gp, a1, -863
                  xor          s2, zero, tp
                  sub          zero, s3, s8
                  and          sp, t4, a3
                  srai         a6, s10, 14
                  sltiu        zero, a4, 1780
                  auipc        s5, 980836
                  xori         sp, a6, 1318
                  xori         s2, s5, -132
                  xor          t4, s6, s9
                  or           a2, tp, s10
                  srai         zero, s1, 2
                  slli         s4, a4, 20
                  sra          a0, s3, t5
                  add          t4, s9, s11
                  or           s11, s3, t0
                  srai         zero, s4, 20
                  xori         t6, a7, -120
                  srl          zero, s7, s3
                  lui          t1, 338168
                  andi         a4, a5, 1200
                  xori         ra, s3, -159
                  addi         a5, t4, 491
                  srai         t0, t4, 22
                  srai         a2, t2, 24
                  add          s6, ra, s11
                  srli         s4, t0, 17
                  ori          s11, a5, -246
                  lui          t4, 839811
                  or           a2, a2, t0
                  srli         t5, s9, 17
                  nop
                  and          s4, a2, s8
                  andi         s1, t5, -132
                  sltu         t1, s8, t0
                  sltu         t1, a2, s11
                  and          t3, t3, t1
                  sub          zero, zero, t6
                  andi         a0, s1, -130
                  sltu         s7, tp, s1
                  xori         t0, t5, -1153
                  xori         s6, gp, -1586
                  sra          a2, a2, a1
                  sltiu        t4, s0, -2044
                  or           s6, t5, s4
                  sltu         t0, s2, s8
                  srli         s9, a4, 3
                  sll          a6, s3, t3
                  lui          gp, 180520
                  ori          a1, s8, 118
                  xor          t3, zero, a3
                  and          zero, a4, tp
                  add          t0, t0, s4
                  sub          t1, s0, ra
                  and          s0, ra, s6
                  addi         s10, s3, 701
                  slt          s0, s11, a0
                  and          ra, s5, s0
                  xori         t4, t0, 594
                  xori         t3, sp, 134
                  sltu         s11, a4, s4
                  nop
                  sll          s5, s2, a7
                  ori          a2, s1, 5
                  sltu         t2, s3, zero
                  xori         s9, sp, 348
                  sltiu        s4, s7, -1327
                  addi         gp, t4, 1712
                  sra          a2, s3, s3
                  xori         s8, sp, -1835
                  or           a1, t1, a4
                  or           s8, s8, a1
                  sra          t3, t3, t5
                  or           s7, s3, s5
                  slt          s8, a1, s6
                  slt          t3, t2, s11
                  andi         t2, t2, 2017
                  sra          s4, sp, t4
                  xori         s6, sp, -1642
                  lui          a1, 489794
                  slti         t4, t0, 736
                  srli         t6, a6, 19
                  sll          a0, a1, a5
                  sub          t6, t3, t5
                  nop
                  auipc        t4, 367070
                  slt          t3, zero, ra
                  sll          t5, a3, t0
                  and          a6, a4, s3
                  xori         t5, s11, -1096
                  ori          t3, sp, -765
                  slt          ra, sp, t2
                  and          s3, sp, a4
                  andi         a2, a6, -1842
                  slti         s8, s6, -516
                  sll          s3, t5, t5
                  sub          ra, s10, zero
                  sra          s5, s10, t0
                  sub          s5, gp, sp
                  sra          t6, tp, s6
                  xor          s1, sp, t6
                  ori          t3, t6, -602
                  slli         s6, t5, 16
                  auipc        zero, 973455
                  lui          s10, 535853
                  auipc        t3, 1022924
                  sll          t1, s11, a7
                  sll          a0, a3, t2
                  xor          s0, sp, sp
                  srli         t1, tp, 2
                  or           zero, a4, a6
                  nop
                  ori          s7, s3, 1037
                  srli         s3, s3, 3
                  sll          a4, s8, t1
                  sltu         s6, s6, a7
                  or           s3, t1, a7
                  sub          t1, s9, a3
                  srli         s10, s3, 18
                  slt          s2, t3, gp
                  srai         t2, s2, 5
                  or           t1, a7, s2
                  andi         t0, t6, -32
                  srli         gp, t5, 18
                  add          a5, gp, s6
                  sltu         a5, a7, a6
                  add          a0, a3, tp
                  srai         s9, a3, 3
                  lui          t0, 715512
                  slli         a5, s7, 26
                  sub          s10, gp, sp
                  sltiu        s3, a0, 250
                  sub          s3, tp, zero
                  sub          t6, s3, s3
                  sra          a6, t4, t5
                  srli         s4, t2, 17
                  sub          t1, t5, a3
                  nop
                  sltiu        t2, s3, 539
                  sub          t4, s8, s7
                  sltiu        sp, a5, -54
                  xor          a5, s0, s8
                  ori          s1, tp, 564
                  slli         s3, a6, 14
                  ori          a5, s10, 61
                  slli         s7, s2, 4
                  slti         a1, t6, -13
                  andi         s10, s5, 29
                  lui          s7, 303353
                  sltiu        a0, t6, 1918
                  srl          t1, t3, s11
                  auipc        t1, 321902
                  slt          s9, t3, gp
                  andi         a6, a1, 854
                  lui          s7, 273255
                  nop
                  nop
                  srl          zero, s6, a3
                  addi         s6, sp, -1742
                  or           a0, s11, s10
                  addi         s10, t5, 1618
                  slli         zero, s1, 1
                  sltu         s9, a5, t4
                  xor          t6, s5, s11
                  sra          s2, tp, sp
                  lui          a0, 373723
                  srai         s7, a3, 26
                  srli         s9, s3, 21
                  lui          ra, 372035
                  or           a4, s1, t4
                  srl          zero, t5, s5
                  or           s11, s10, sp
                  or           s8, t2, t1
                  sra          a6, s8, a1
                  lui          s7, 31902
                  andi         a0, s1, -1124
                  addi         s1, s3, 2040
                  lui          a1, 711466
                  srli         t1, a7, 8
                  and          t1, t6, t5
                  slli         a4, s0, 30
                  srai         t3, a6, 16
                  sltiu        s2, s2, 1364
                  slti         s9, s10, 1951
                  srai         t6, s5, 25
                  sll          t0, s2, t0
                  slti         s9, t6, 1288
                  nop
                  slt          gp, t4, s8
                  nop
                  xori         s6, a0, 866
                  lui          t6, 523234
                  or           s11, a4, s11
                  slti         zero, tp, -1725
                  nop
                  sub          s10, sp, t2
                  andi         s7, t4, -162
                  srli         s1, t0, 9
                  add          a4, a4, t3
                  srai         a0, a5, 12
                  sra          s8, a1, s0
                  xor          a1, t5, a7
                  ori          s5, s2, 1159
                  nop
                  sltiu        t5, t0, -751
                  nop
                  xor          gp, s8, t2
                  auipc        gp, 399757
                  or           s1, zero, s7
                  add          s0, t4, s2
                  sra          s9, t6, a6
                  sra          s0, tp, t6
                  slt          a0, a7, t3
                  lui          s8, 378019
                  slti         s4, gp, 877
                  sll          sp, a2, t0
                  sltu         s1, a5, a2
                  slt          a2, s1, tp
                  and          t2, s1, a4
                  slt          s2, s11, zero
                  sltiu        t5, a2, 1859
                  add          s2, zero, a1
                  nop
                  srli         s4, ra, 3
                  ori          s4, zero, 1199
                  ori          t2, gp, -1666
                  and          a6, s0, s9
                  and          zero, ra, a3
                  slli         sp, s8, 4
                  xor          gp, t5, s2
                  xor          gp, s11, t3
                  slli         s5, a7, 2
                  xori         s9, t6, -1555
                  sltu         s6, sp, t1
                  ori          s3, sp, -75
                  srl          t1, zero, a6
                  slli         zero, s4, 3
                  auipc        s1, 167530
                  nop
                  sub          gp, s7, sp
                  sra          s2, s5, a1
                  srli         t2, s1, 28
                  xori         t2, s11, 67
                  srai         s3, t1, 10
                  nop
                  lui          t1, 153202
                  nop
                  sub          t5, t4, a7
                  ori          ra, s10, 457
                  slti         t3, a5, 1962
                  srai         s3, s10, 5
                  sub          t0, s10, gp
                  srl          a4, t1, s0
                  or           a5, t3, t6
                  xori         s11, a6, -1918
                  nop
                  or           a0, a0, a7
                  srai         ra, a6, 29
                  srl          t5, t6, a5
                  xori         t2, s10, -862
                  xor          s9, s9, s1
                  nop
                  andi         zero, a3, -2
                  sub          s3, t4, sp
                  slt          a2, t3, s8
                  slli         a2, s5, 19
                  slli         s6, s2, 12
                  sltu         s4, s3, t2
                  addi         zero, a0, 1211
                  xori         s4, s9, -1535
                  sll          gp, a4, t6
                  addi         a6, a7, 1199
                  srl          s3, s0, t6
                  addi         a4, s4, -1200
                  slt          s7, a1, sp
                  add          a5, t4, t4
                  slti         s8, s10, -1120
                  add          s7, s7, s8
                  slti         a2, a1, -1914
                  ori          gp, a7, -111
                  srl          s5, s11, s1
                  slt          s3, s7, t5
                  sltiu        s2, a4, -835
                  sltu         s5, sp, a6
                  ori          s2, s7, 308
                  xor          sp, a3, s8
                  slt          s5, tp, s10
                  andi         t2, s1, -1489
                  srai         s2, gp, 26
                  sltiu        t6, a6, -1111
                  add          s2, ra, a1
                  and          t4, t4, a4
                  nop
                  lui          s6, 629826
                  sub          a5, a3, s10
                  sra          a1, a1, t0
                  nop
                  addi         t0, s0, 1549
                  addi         s8, a3, -1464
                  slt          t4, t0, a0
                  nop
                  sll          t0, a0, a5
                  ori          t2, a1, -762
                  add          s1, t5, s8
                  sll          s8, t1, sp
                  sltiu        a2, s2, 749
                  sub          a4, t0, a7
                  lui          a6, 770709
                  lui          sp, 694733
                  slli         s0, a2, 21
                  auipc        s6, 968913
                  srl          s6, a3, s10
                  and          s7, s0, s1
                  xori         t2, s7, 1715
                  xor          s5, ra, s0
                  and          s4, s3, ra
                  sltu         t6, s7, s9
                  sltiu        t0, s6, 258
                  sub          s0, a6, s6
                  sub          t6, a2, t4
                  lui          s4, 384772
                  add          s10, t1, t3
                  xor          a0, s9, t4
                  sll          s4, t0, s9
                  or           ra, a5, s8
                  slti         zero, zero, 598
                  slti         s9, t1, -1858
                  addi         a1, s9, -700
                  add          s10, s6, t1
                  sub          ra, a5, a5
                  sltu         a5, s1, t4
                  srl          a0, t4, a5
                  srli         a0, s10, 15
                  ori          s2, tp, -186
                  xori         a0, t6, 1933
                  slti         t0, ra, 1104
                  addi         a1, tp, -1165
                  xori         s6, s10, 915
                  sltiu        sp, s5, 383
                  andi         t6, t6, 1142
                  xori         s6, s5, 61
                  andi         s4, s2, 1756
                  andi         zero, s9, 1632
                  sll          s2, s8, t6
                  srl          t5, s0, a7
                  slt          s11, s5, s10
                  sltiu        s7, t4, -1823
                  sltu         t4, a0, s1
                  sltu         a5, gp, s6
                  srai         s2, t4, 24
                  sltu         sp, a6, s9
                  sltu         gp, s4, t5
                  slli         s3, s9, 24
                  addi         t6, ra, -177
                  srli         a5, a4, 2
                  lui          a5, 109392
                  and          s9, a4, a4
                  sltiu        s0, a4, -1101
                  xori         s4, s11, 1998
                  sltu         s11, a2, a2
                  xor          a0, a6, s0
                  xori         a4, gp, 1245
                  srli         s11, s11, 1
                  addi         s9, s9, -899
                  xori         a0, s6, -1136
                  auipc        t2, 155807
                  ori          t5, t6, 1121
                  slt          s4, s9, ra
                  sub          ra, s0, a5
                  slti         gp, t3, 1929
                  sll          s2, tp, s10
                  and          t0, s9, t5
                  andi         s8, gp, 1957
                  or           s9, a6, s2
                  sltu         s5, s0, t1
                  slli         t4, a1, 16
                  auipc        ra, 591939
                  lui          t6, 440721
                  and          a5, s3, s6
                  addi         a0, tp, 668
                  add          t1, a2, s1
                  andi         gp, s11, -285
                  slti         s5, t1, -1607
                  nop
                  sll          s10, s4, a5
                  srai         t1, a2, 31
                  srl          s2, s9, s8
                  sltu         s4, a5, s0
                  sltiu        s2, zero, 775
                  srai         s8, s10, 5
                  srl          zero, t4, s0
                  sll          a1, sp, a7
                  ori          a0, a7, 1045
                  slli         s4, t0, 6
                  andi         s11, s8, 1248
                  and          s4, a3, t0
                  sltiu        a1, s9, 1197
                  slti         t6, ra, -738
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s1, 0x80000000
                  li           t2, 0xb028f8c4
                  li           s0, 0x0
                  li           s11, 0x7ba7ed77
                  li           sp, 0xffffffff
                  li           s6, 0x80000000
                  li           s8, 0xffffffff
                  li           s10, 0x80000000
                  li           t3, 0x6cc110af
                  sub          s1, s1, s8
                  addi         s6, s1, -1857
                  nop
                  add          s11, s10, s10
                  sub          sp, s1, s10
                  auipc        sp, 528894
                  nop
                  addi         t2, s10, 874
                  auipc        sp, 919990
                  sub          s1, s10, s8
                  addi         s6, t2, 1375
                  lui          s11, 992461
                  lui          s10, 904007
                  sub          sp, t3, s8
                  add          t2, s11, a6
                  auipc        s8, 737003
                  sub          t2, sp, a6
                  nop
                  nop
                  lui          s0, 186953
                  sub          s11, a6, t3
                  lui          s1, 703512 #end riscv_int_numeric_corner_stream_11
                  or           a1, a5, gp
                  lui          s8, 685143
                  slli         s1, t2, 13
                  slt          ra, s5, t6
                  sll          s8, s5, a3
                  slli         s0, s9, 12
                  auipc        t6, 958106
                  ori          t1, gp, 1398
                  slti         zero, s11, -1231
                  xori         s0, s4, 1154
                  add          s5, gp, s10
                  and          t0, ra, t5
                  or           a5, s5, s4
                  lui          s9, 83300
                  slt          s1, t3, t0
                  andi         a4, a5, -1493
                  sltu         gp, t3, s10
                  or           s8, a1, a6
                  srli         s3, s4, 29
                  sub          a4, s3, ra
                  sub          t0, s7, zero
                  or           t3, zero, s5
                  xor          t4, s11, t5
                  sltu         s11, a4, t4
                  add          t5, a1, t1
                  or           s10, s2, t0
                  sltiu        s6, t3, -102
                  srli         t1, a1, 15
                  sll          s1, a0, gp
                  auipc        t3, 1037720
                  ori          t5, a5, -854
                  sll          sp, tp, t4
                  and          t0, a5, a6
                  sll          t5, t1, a3
                  xor          s5, gp, t1
                  srl          s6, zero, t4
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           t5, 0x0
                  li           s11, 0x80000000
                  li           a2, 0xffffffff
                  li           s10, 0x849eeb3a
                  li           s5, 0xaa8e923e
                  li           t1, 0x80000000
                  li           t4, 0x80000000
                  li           a1, 0x80000000
                  li           a5, 0xb86e3719
                  sub          s11, s11, a5
                  nop
                  add          t4, s5, a2
                  addi         t4, s10, 906
                  auipc        s0, 236558
                  nop
                  addi         s10, s5, 797
                  sub          s11, a5, a2
                  lui          t5, 486432
                  add          t1, s10, a2
                  addi         s0, s5, 975
                  sub          a2, a5, s10
                  auipc        a5, 151937
                  addi         s5, s11, 1610
                  sub          a1, t1, a5
                  sub          t5, t4, s0
                  sub          a1, t1, s0
                  addi         s5, a5, -1289
                  addi         s10, a1, 977
                  add          t5, s10, t5
                  sub          s0, s0, s0
                  addi         s0, s5, 1699
                  addi         s11, t1, 1010 #end riscv_int_numeric_corner_stream_4
                  slti         t6, t6, -1872
                  sra          s6, s3, s2
                  slt          s3, t0, a6
                  sra          s10, s6, a2
                  slt          t5, s8, zero
                  auipc        s1, 102881
                  andi         s2, s6, -1002
                  xor          sp, s1, s4
                  andi         s8, t2, 824
                  srli         a0, tp, 1
                  sub          t6, a4, s2
                  or           gp, s3, zero
                  slli         s3, s8, 20
                  slt          ra, gp, s0
                  sll          t3, s5, s10
                  srl          s11, t1, zero
                  slti         s5, a3, 1743
                  add          t3, s8, a6
                  srli         s7, s11, 20
                  add          s0, zero, a7
                  srai         s1, s4, 2
                  nop
                  sltiu        s6, zero, -162
                  andi         a2, s2, 280
                  nop
                  slt          t2, a0, t3
                  sra          s8, ra, gp
                  sltu         t2, a7, a4
                  or           s0, s11, t2
                  add          s9, a0, tp
                  lui          a6, 140866
                  xor          sp, t3, s5
                  sub          s9, a4, t0
                  sltiu        a6, s5, 805
                  xori         zero, a7, 748
                  nop
                  slt          t5, t1, s1
                  add          s11, s6, tp
                  slli         s5, s3, 7
                  slt          t0, t6, t0
                  slt          a0, t4, s2
                  lui          gp, 984745
                  slli         s0, zero, 9
                  sltu         zero, s9, t4
                  and          t3, zero, t5
                  srai         t2, s0, 21
                  andi         a0, s0, 1859
                  slt          a2, s4, s11
                  and          a4, a2, a0
                  xori         s5, s11, 773
                  sltiu        a1, s2, 1987
                  nop
                  xori         gp, a5, -477
                  sltiu        t2, t5, -758
                  slli         a4, s5, 24
                  and          a5, t2, gp
                  andi         s7, s9, -1562
                  lui          a2, 738829
                  srai         a5, t6, 31
                  sltiu        t5, t0, 1377
                  slli         a1, a5, 10
                  auipc        zero, 992798
                  sltu         s6, ra, t1
                  addi         a4, tp, -158
                  or           t6, tp, ra
                  lui          a1, 935901
                  nop
                  sltu         a2, s11, s3
                  andi         t4, s9, 160
                  and          a1, s9, s0
                  sltu         a4, s0, a3
                  srli         s2, s11, 13
                  addi         t4, sp, 1213
                  andi         s4, s11, 260
                  lui          t4, 320759
                  srli         zero, t5, 26
                  srl          a5, s8, a3
                  andi         a1, t2, -459
                  srl          t6, s2, s5
                  andi         t2, t3, 1822
                  srl          t5, s11, a2
                  andi         t0, s4, -430
                  slt          a5, a2, s2
                  xori         gp, a7, 613
                  sltiu        t2, s1, 79
                  andi         a1, t6, -104
                  xori         s8, t0, 647
                  srli         t3, tp, 2
                  sll          a0, s3, a1
                  sltiu        a1, s5, -341
                  or           a6, t0, t5
                  add          gp, t0, a2
                  sub          s5, t5, sp
                  andi         a1, s4, -523
                  nop
                  addi         s2, a2, -1678
                  or           s7, a2, s10
                  auipc        s3, 333523
                  ori          t5, gp, 633
                  ori          t2, gp, 1822
                  srai         t2, s1, 7
                  or           zero, a5, a7
                  sll          t3, sp, a5
                  or           s2, s6, t3
                  sll          t6, a7, t5
                  and          s0, s9, a6
                  srli         a6, s9, 15
                  slti         s1, gp, -1612
                  srli         s10, t5, 5
                  xor          s0, a7, t0
                  add          a4, t3, s0
                  slti         t5, t2, -585
                  sll          t4, s0, t6
                  add          s6, s5, a0
                  auipc        s1, 592803
                  sltiu        s9, s10, 78
                  slt          t2, a0, s8
                  and          s0, t2, s11
                  slt          a2, zero, a5
                  and          gp, s2, t6
                  andi         s2, tp, 60
                  slt          t2, t1, a3
                  srli         t0, t3, 15
                  nop
                  andi         t5, sp, 370
                  addi         s8, a5, -1659
                  andi         s2, a1, -287
                  and          a1, sp, a2
                  andi         t3, t4, 1199
                  or           a2, zero, ra
                  slti         a0, s8, -1634
                  auipc        t4, 959378
                  slli         s0, s1, 24
                  auipc        sp, 897847
                  slti         s10, a1, 101
                  srai         sp, ra, 15
                  lui          s2, 445223
                  add          a2, t6, a7
                  nop
                  srl          ra, t0, t3
                  and          s2, t4, a6
                  xor          s5, gp, s9
                  slli         s6, t2, 10
                  sltu         a5, a4, a4
                  ori          t4, a1, -619
                  sub          t6, a0, a7
                  addi         sp, t5, 14
                  or           a6, zero, a0
                  or           s2, s2, t0
                  add          s7, a7, ra
                  xori         s6, s4, -707
                  xori         a2, t6, 1293
                  add          a5, a4, s3
                  auipc        s7, 932905
                  xor          s5, t2, s10
                  sll          t0, s3, a5
                  sltu         s7, s6, s0
                  sub          a2, s5, s4
                  sltu         a2, s6, a4
                  srai         a5, a6, 2
                  xori         gp, s1, 1445
                  addi         a4, a4, 819
                  sll          s0, a6, s6
                  slt          a2, s2, s9
                  or           t6, s1, a6
                  addi         t3, t4, -1146
                  slti         s9, t0, 103
                  auipc        s3, 974291
                  sltu         a5, a0, t5
                  srli         s2, a0, 27
                  srai         a6, s0, 1
                  slli         zero, s9, 15
                  add          s6, s11, s7
                  auipc        s3, 304446
                  sll          s0, t4, a0
                  srai         a0, s4, 0
                  add          s0, a2, t3
                  auipc        a4, 378928
                  auipc        s3, 1041259
                  slt          t5, a0, a1
                  sltiu        s1, tp, 1105
                  sub          s5, s3, s1
                  slt          a2, a3, s8
                  and          t1, s2, a7
                  srl          t5, t4, t0
                  srli         t5, s2, 29
                  ori          t2, tp, -337
                  ori          a0, sp, 76
                  sll          sp, s2, s0
                  sub          s5, a3, t6
                  andi         s4, zero, 578
                  sll          t4, a5, zero
                  auipc        a4, 563408
                  xori         s3, t6, 1887
                  addi         a4, t1, 1283
                  sltu         s3, s6, s2
                  sra          a1, zero, a0
                  sltu         t5, s9, a4
                  lui          s6, 119345
                  slli         zero, t3, 5
                  sub          s0, a5, zero
                  andi         sp, s1, 239
                  sra          a2, a5, s8
                  or           s0, s4, gp
                  srai         gp, s5, 31
                  auipc        a5, 456199
                  slli         a5, s6, 24
                  xor          t0, t4, s10
                  and          t2, t0, t3
                  sra          t1, s6, s3
                  add          s9, a2, s8
                  sub          t3, s1, s0
                  addi         s10, a3, 444
                  slt          zero, gp, tp
                  xor          a5, t1, s5
                  addi         t5, s2, 1499
                  slli         ra, s4, 23
                  xor          t5, t6, gp
                  srl          s5, gp, t5
                  slti         sp, t2, 1009
                  srai         gp, t0, 15
                  srl          a5, a7, a0
                  srl          a1, s5, s7
                  or           s10, a1, tp
                  or           s2, zero, zero
                  addi         s6, a4, 1368
                  slt          a6, sp, t1
                  lui          t3, 979661
                  sll          t6, s0, t3
                  nop
                  addi         s7, a6, 577
                  add          s9, t0, a7
                  or           s2, t4, zero
                  add          t5, a7, a2
                  slli         t1, s9, 26
                  sltiu        ra, a2, 1626
                  slt          s2, s7, s10
                  slt          a6, ra, s1
                  sltu         a1, tp, s11
                  auipc        t1, 497213
                  andi         t3, tp, -139
                  and          sp, ra, t5
                  sra          sp, a0, s1
                  slt          a2, gp, s9
                  xori         t3, sp, -1567
                  sll          s11, t6, gp
                  slti         s5, s11, -1011
                  auipc        t6, 715926
                  nop
                  srl          s8, a4, a0
                  sll          s5, a5, s11
                  slli         a5, t3, 17
                  auipc        s11, 415172
                  auipc        t6, 651604
                  srai         s10, s11, 11
                  slti         s10, t0, 541
                  sltu         t0, s2, s3
                  srai         t5, t1, 18
                  sll          s0, t0, a5
                  slli         sp, s1, 6
                  xor          s11, a1, t5
                  addi         s9, a0, 1373
                  sub          s6, gp, s1
                  andi         t0, a2, 113
                  sltiu        a4, s0, -473
                  srl          zero, s1, a5
                  addi         ra, zero, -1726
                  sll          t1, s2, tp
                  addi         sp, zero, 427
                  sltiu        sp, a4, 282
                  or           s7, t4, s10
                  ori          s1, t1, 1414
                  sub          a6, a1, a2
                  sltu         t4, a1, t1
                  sltu         s1, a4, t6
                  slt          s8, t3, a1
                  lui          a6, 657073
                  ori          sp, t3, 1156
                  and          t2, a4, zero
                  add          a0, s2, a0
                  add          t6, a6, s8
                  srl          s5, s3, t2
                  nop
                  xor          gp, s8, ra
                  srai         a1, a7, 3
                  slti         a0, s0, 1766
                  addi         t4, a7, 361
                  or           s4, a6, a0
                  addi         a6, s7, 527
                  sra          a2, s10, s11
                  andi         zero, sp, -111
                  srli         a0, t4, 19
                  nop
                  srl          a2, t3, gp
                  xori         s6, s0, -709
                  xori         s9, a5, -927
                  addi         a2, sp, 267
                  sltiu        s11, a5, -153
                  srli         s3, s6, 14
                  srai         t1, t1, 25
                  and          a5, a1, s6
                  sll          s4, s6, t4
                  sll          a4, a0, s8
                  auipc        s0, 474999
                  srli         s11, a7, 5
                  sra          a6, a1, a2
                  slt          t5, a0, a4
                  xor          gp, ra, a4
                  slli         s7, s8, 6
                  xor          s5, ra, a3
                  sltiu        a2, t3, 1172
                  lui          a0, 921658
                  nop
                  and          a0, s3, t1
                  add          gp, a0, s5
                  andi         s10, s5, -215
                  addi         a2, s2, 313
                  sltu         t5, t4, a3
                  add          t6, s10, s10
                  sra          s0, t3, a6
                  sll          sp, a0, zero
                  slti         sp, s11, 1766
                  addi         sp, s8, 244
                  xori         s5, a4, -1736
                  srl          t0, s8, a0
                  srl          s1, a2, a0
                  srli         a0, s11, 21
                  slt          s8, a1, a2
                  auipc        t3, 798019
                  add          a5, a2, s10
                  addi         sp, sp, 612
                  xori         t3, s3, 1323
                  ori          s8, s8, 378
                  slli         s9, a2, 30
                  sra          s10, tp, s1
                  slti         a6, s9, 313
                  slli         ra, gp, 19
                  sltiu        t2, a6, 363
                  sltu         s7, s1, s4
                  nop
                  lui          t0, 208649
                  xori         s0, s1, 1708
                  auipc        s10, 812253
                  andi         s4, a2, 1227
                  auipc        a5, 418467
                  ori          a5, s2, -75
                  or           s3, s2, s2
                  sltiu        t0, a2, 1612
                  add          a4, s1, s3
                  sll          t4, t2, gp
                  xor          s9, s7, s10
                  or           a2, a7, s0
                  sltu         s10, s10, s0
                  or           s3, s0, t4
                  sub          a6, a3, s1
                  sll          s5, t0, s6
                  srl          s3, s0, t4
                  slti         s1, a7, -1584
                  xori         s8, a1, -1678
                  add          s5, a4, zero
                  srai         a0, s6, 21
                  xor          s3, s8, s5
                  srai         s4, s2, 0
                  lui          a0, 223887
                  sll          t4, s2, t0
                  andi         a0, a1, -939
                  andi         s2, s0, -2036
                  sltiu        t5, s1, 613
                  nop
                  xori         t2, s8, 179
                  or           sp, a2, a2
                  slti         t5, s3, 1903
                  andi         s6, s8, 1403
                  sltiu        a6, a4, 1231
                  srai         sp, s0, 25
                  xori         t4, a0, 744
                  srl          a4, s2, s11
                  add          s4, s9, ra
                  slti         s3, s2, -1674
                  sll          a5, t6, a5
                  srai         ra, a3, 20
                  addi         a1, s2, 1965
                  srl          a2, a0, s10
                  slti         s6, a4, 1865
                  auipc        s10, 35882
                  sll          t3, t6, gp
                  or           t6, a0, sp
                  sub          s10, a2, s8
                  xor          zero, zero, s3
                  lui          a5, 99142
                  slti         s5, s1, 1141
                  srli         sp, a0, 30
                  addi         zero, s3, 393
                  slti         s2, s7, 655
                  sltu         t4, s2, s0
                  or           s4, s5, t3
                  slti         a1, t1, 535
                  slti         s3, t6, -253
                  andi         a2, a7, 1584
                  srl          s11, ra, t4
                  srli         s1, s10, 0
                  and          s5, t3, s11
                  sub          ra, a7, s9
                  sra          s3, tp, s3
                  lui          s4, 627950
                  xor          t3, s5, t1
                  slt          s10, s4, t5
                  slli         s7, s3, 29
                  auipc        a5, 1941
                  srl          s1, s1, a2
                  slt          s11, t6, a1
                  slli         sp, s6, 4
                  and          s7, a6, zero
                  sra          s9, ra, s1
                  srai         t6, s4, 28
                  sltu         s5, a6, t6
                  slli         s9, s6, 24
                  srai         s11, a0, 14
                  sra          s5, t0, ra
                  nop
                  or           s11, gp, s5
                  auipc        s6, 890224
                  xor          s3, s7, t6
                  srl          gp, a5, a7
                  sll          a5, a4, zero
                  auipc        ra, 119507
                  or           t3, t6, a0
                  sra          gp, t6, sp
                  slti         ra, a4, -1884
                  sub          t4, s2, t0
                  addi         a0, gp, 1384
                  sll          gp, t3, s9
                  sltu         s1, a5, t5
                  li           a5, 0x907ed566 #start riscv_int_numeric_corner_stream_12
                  li           t4, 0x0
                  li           s1, 0x0
                  li           s11, 0x45e42934
                  li           s8, 0x0
                  li           s4, 0x0
                  li           s6, 0xcc7ab126
                  li           t2, 0x80000000
                  li           t5, 0xffffffff
                  li           gp, 0x0
                  auipc        s6, 582240
                  add          a5, t2, t4
                  auipc        t5, 493320
                  nop
                  lui          s11, 867433
                  add          s11, t4, s8
                  add          t5, t4, s1
                  lui          s4, 477132
                  add          a5, a5, t2
                  lui          s1, 918983
                  addi         s8, gp, 1130
                  sub          t5, s4, s4
                  addi         t4, gp, -1522
                  add          s1, s4, gp
                  sub          t2, s8, t5
                  sub          s1, t4, a5
                  lui          s1, 216747
                  nop
                  add          s8, a5, s8
                  addi         s8, t5, 1645
                  lui          gp, 375390
                  add          s8, t4, s8
                  sub          gp, t2, t4
                  lui          gp, 522524
                  add          s1, t2, s4
                  sub          a5, t4, s1
                  sub          t4, t4, t5
                  sub          t4, s1, a5
                  addi         s1, s8, 1224
                  sub          a5, t2, s1 #end riscv_int_numeric_corner_stream_12
                  ori          s2, a2, 1095
                  xori         a4, t0, 1664
                  addi         t6, t1, -1204
                  auipc        s1, 990082
                  andi         t0, s11, 1072
                  slti         a4, gp, 277
                  andi         t1, a2, -278
                  or           t4, zero, a3
                  sub          s0, s8, t2
                  andi         t4, t6, 485
                  andi         s0, s9, -761
                  or           a1, ra, a5
                  addi         t4, a0, -1818
                  xor          s9, a7, zero
                  srai         t1, s9, 31
                  sub          s7, tp, t2
                  andi         t2, t5, 1855
                  and          zero, t1, s5
                  slti         s10, s8, 1627
                  and          a0, a1, s6
                  or           t4, a0, a4
                  andi         a2, t2, 1567
                  add          s8, s0, ra
                  add          a4, s5, t1
                  xor          s3, a4, s2
                  auipc        sp, 956411
                  srl          sp, a6, s0
                  lui          a0, 836406
                  sltu         t1, a0, t5
                  or           s7, t2, gp
                  addi         s2, a2, 27
                  add          ra, t4, t4
                  slt          s10, t6, a7
                  ori          t1, s3, -463
                  slti         ra, s1, -1205
                  slli         a2, s1, 1
                  nop
                  xor          a0, t0, s2
                  xor          s6, s6, s6
                  and          gp, s1, s1
                  srl          t1, s4, a4
                  slli         t6, t4, 6
                  slt          gp, s2, a0
                  auipc        a0, 26888
                  slli         a5, s4, 11
                  sll          a5, a5, t6
                  slt          t2, s0, gp
                  auipc        s2, 576178
                  addi         t3, s8, -907
                  slli         a6, a0, 10
                  srl          a1, zero, s1
                  nop
                  sll          a6, a2, ra
                  addi         s0, a5, 1944
                  auipc        a4, 150533
                  andi         a6, s9, -718
                  slti         s6, a6, 251
                  srli         s2, a1, 3
                  xori         t5, a3, -987
                  addi         gp, gp, 975
                  sll          zero, s9, zero
                  xori         s10, t0, 61
                  srli         s7, s2, 6
                  slti         s3, s1, -1531
                  srai         s1, s11, 16
                  sltiu        s6, t0, 1659
                  slti         a0, t3, -2030
                  slt          a0, t6, sp
                  andi         ra, s5, -153
                  or           s10, t2, zero
                  xori         sp, s3, 805
                  sll          a5, t5, t1
                  andi         a1, s10, -88
                  ori          zero, t3, -1494
                  add          t4, a3, t5
                  xor          t2, tp, s11
                  sltiu        t0, a5, -388
                  nop
                  sra          s3, s2, tp
                  sltiu        s11, zero, 1848
                  sltiu        t6, gp, 1643
                  sltu         a4, s10, s9
                  or           s8, ra, t5
                  add          a2, s9, a2
                  slti         t2, ra, 1724
                  srai         s0, ra, 9
                  srai         ra, a3, 10
                  sra          s3, a0, a6
                  andi         t0, s9, 1539
                  lui          s8, 711173
                  and          s5, s7, s5
                  auipc        t1, 357967
                  slti         t5, sp, -1416
                  xor          t3, a1, s6
                  sltu         gp, sp, tp
                  andi         a2, t4, 2038
                  slli         t3, a2, 5
                  auipc        s10, 22345
                  slli         sp, a4, 8
                  slli         s5, s11, 23
                  auipc        gp, 115034
                  srai         a5, zero, 10
                  srl          s8, tp, t4
                  nop
                  nop
                  addi         t3, zero, 1241
                  slti         s9, t5, 916
                  sub          sp, a4, s1
                  slt          t0, s6, s2
                  sra          s3, s11, t1
                  or           s3, t2, t2
                  sra          s2, a7, s11
                  add          t4, a7, s7
                  nop
                  and          a0, t3, a3
                  srai         gp, a6, 24
                  srai         s1, t4, 24
                  and          zero, t2, s2
                  add          a5, s0, s5
                  ori          a1, a7, 1564
                  slti         s3, t0, -1214
                  sra          a5, a5, s5
                  slli         s0, s10, 11
                  nop
                  addi         s7, s1, 367
                  andi         t1, s4, -1945
                  addi         t2, s2, -1537
                  xor          s6, a3, s1
                  sltiu        sp, s0, -182
                  and          t4, t4, s4
                  slli         a0, t2, 5
                  nop
                  slt          a5, s10, s11
                  addi         sp, s10, 1900
                  sub          s4, s9, s5
                  sll          t1, s1, s6
                  xori         s11, t5, 1414
                  slt          s4, s3, tp
                  auipc        t4, 347732
                  ori          zero, s2, -1044
                  sll          s5, s2, s4
                  slti         t2, a0, -890
                  sll          s1, sp, s2
                  auipc        a1, 730897
                  lui          s4, 752677
                  lui          s5, 512922
                  slli         s11, s8, 19
                  auipc        s3, 608948
                  auipc        s1, 331542
                  srli         s3, s5, 9
                  lui          s7, 199583
                  add          a1, t3, a5
                  sltu         s1, gp, s2
                  srli         a5, s0, 0
                  ori          zero, a2, 311
                  ori          s9, a5, -717
                  add          s0, a2, s5
                  sub          s4, s9, s0
                  slt          s0, a6, t4
                  sub          t6, tp, s9
                  slli         t0, s9, 17
                  slli         t6, a6, 12
                  nop
                  xori         s5, s0, 1399
                  xor          t0, s1, a0
                  andi         a4, s5, 1106
                  slt          t6, gp, gp
                  sll          s0, s4, zero
                  addi         t3, a1, -2025
                  slti         ra, a4, 1098
                  xori         s6, t3, -2035
                  srli         a4, s6, 6
                  xor          s9, s9, s7
                  srai         t6, s6, 28
                  add          t4, s2, s7
                  ori          sp, s7, 441
                  nop
                  xori         t5, ra, 1385
                  or           t6, a2, tp
                  lui          s8, 640418
                  auipc        s7, 77771
                  sll          t3, a3, t3
                  sub          t5, t5, a0
                  xori         s8, ra, 1606
                  sll          s7, tp, a7
                  sll          s4, s8, ra
                  srli         s6, a3, 3
                  slli         t5, t2, 11
                  sltu         t5, a2, s7
                  nop
                  sra          ra, s3, s8
                  srl          s11, s2, s9
                  ori          s8, s9, 712
                  slt          a5, tp, t6
                  slli         s7, sp, 6
                  nop
                  auipc        t5, 952548
                  slt          ra, a3, s1
                  or           s7, t6, a2
                  ori          s8, zero, 807
                  add          s4, s7, s9
                  add          a0, s9, a4
                  sltu         t2, s3, t5
                  addi         s0, t3, 1148
                  or           s7, s6, s11
                  slti         s4, t2, 1466
                  srai         s7, t6, 2
                  srai         a6, a7, 25
                  srai         s7, t1, 3
                  and          a2, t6, s6
                  add          a5, a7, zero
                  slt          t2, t0, s1
                  xori         s5, a6, 276
                  addi         s7, s3, -448
                  slti         s10, t5, 740
                  ori          s8, t4, -241
                  sub          s7, s8, t2
                  and          s5, a0, ra
                  andi         s1, a6, 1537
                  xori         a0, t1, 713
                  addi         t1, s10, 832
                  lui          s5, 954088
                  srli         s0, a0, 3
                  srl          t5, a1, t3
                  add          s2, t3, s9
                  slt          s1, t1, t2
                  auipc        t6, 787370
                  and          s2, s6, a6
                  srl          t3, s1, s6
                  srl          s6, zero, gp
                  lui          t5, 671485
                  add          t3, ra, zero
                  sra          a5, s5, t5
                  sltiu        t2, s1, -992
                  xor          s10, a6, s5
                  xori         s0, s9, -1696
                  sll          a2, gp, sp
                  andi         s1, t1, 498
                  nop
                  sltu         gp, t4, a2
                  srai         t1, a2, 11
                  sll          sp, t0, s8
                  auipc        s7, 476923
                  addi         gp, s1, -9
                  and          s8, s6, s11
                  srai         a1, t1, 27
                  srl          s2, t1, s9
                  xori         sp, t0, 800
                  sltu         s1, s0, tp
                  sltu         s11, a6, s6
                  ori          s3, s9, 488
                  slli         s2, a5, 6
                  slti         s2, a3, -1931
                  xori         s11, s0, -518
                  xori         ra, s11, 1796
                  auipc        t0, 943372
                  lui          a4, 483000
                  or           s10, t5, a6
                  nop
                  sra          sp, a1, s9
                  srli         s5, tp, 29
                  and          s2, t6, t0
                  srai         a4, a6, 16
                  sltu         s1, s7, ra
                  srai         s10, t0, 11
                  addi         s3, t3, 94
                  slti         t4, s10, -1068
                  nop
                  slli         a4, s0, 19
                  addi         t3, gp, -901
                  slti         gp, s7, -1508
                  srli         t0, s0, 23
                  srl          s1, a7, t0
                  srai         s6, a2, 14
                  xori         s3, s0, -1650
                  slt          a0, s7, a5
                  sltiu        t3, a0, 235
                  sub          s5, s5, sp
                  srli         a2, sp, 19
                  srai         t3, t1, 7
                  srli         s8, s3, 6
                  slt          t3, t2, t6
                  sll          gp, t3, a5
                  nop
                  nop
                  srl          t1, a6, s0
                  lui          s4, 260287
                  slt          t5, tp, a4
                  sltiu        t0, a4, -235
                  slli         a5, t2, 8
                  auipc        ra, 752360
                  andi         a2, gp, -244
                  slli         s2, t4, 29
                  sll          a1, s8, t0
                  lui          t6, 489875
                  addi         s6, t4, 1400
                  sltu         gp, a6, gp
                  srli         zero, s9, 9
                  lui          s1, 619971
                  nop
                  srli         t5, zero, 25
                  nop
                  sub          t1, t5, t3
                  sll          s10, a2, a1
                  sra          s2, a2, s5
                  sra          s3, s3, s6
                  nop
                  sub          t6, a0, a5
                  sra          s8, s11, s8
                  sra          a5, t1, t6
                  ori          t0, s1, 102
                  srli         s10, a4, 23
                  sll          zero, s8, s11
                  srli         t3, a6, 1
                  sltu         t5, t5, s6
                  srai         s2, a4, 10
                  lui          t1, 179440
                  xori         a1, s6, 37
                  lui          s4, 680736
                  sll          sp, tp, s8
                  andi         s8, s10, -1832
                  sll          a1, s5, s10
                  slti         s4, s6, 1961
                  srl          t3, s9, t1
                  sltu         a5, s3, t1
                  sltu         a0, t5, s9
                  and          t6, gp, a4
                  sub          ra, s4, t1
                  addi         a4, ra, 1080
                  addi         gp, ra, 151
                  add          a2, a6, t1
                  andi         a5, s2, -796
                  or           s2, t0, a7
                  srai         a0, tp, 25
                  slt          s4, s5, s3
                  slli         t2, t4, 0
                  nop
                  slti         s7, s7, 1335
                  sll          s8, sp, zero
                  srai         t1, a4, 2
                  sltu         t4, s10, a3
                  auipc        ra, 364420
                  and          s4, ra, s11
                  sltu         sp, a1, t2
                  add          s5, a7, s0
                  lui          ra, 783104
                  sltiu        s0, t0, 1306
                  or           t5, s2, s1
                  add          s10, s3, s9
                  sra          t2, zero, a5
                  addi         s3, s9, 211
                  add          t0, s1, ra
                  srli         s1, a7, 21
                  srai         s2, s4, 22
                  sll          ra, s0, a4
                  auipc        ra, 648881
                  xori         t5, s3, 1204
                  xor          s5, s1, s6
                  and          ra, t4, s11
                  add          t3, t4, a5
                  sltiu        gp, a4, 1548
                  slt          s0, ra, a4
                  sra          a2, t1, t1
                  slli         t4, ra, 25
                  lui          a1, 21857
                  add          t2, a5, s5
                  nop
                  sra          a1, s2, a3
                  and          ra, t6, tp
                  xor          s2, s11, a1
                  sltu         t5, ra, a6
                  slt          s1, s5, s6
                  auipc        s0, 791964
                  add          t6, s0, a0
                  auipc        t3, 701039
                  srli         s4, ra, 15
                  srli         a5, ra, 13
                  slti         s9, s5, 1345
                  and          s8, s1, a7
                  sll          s8, s4, ra
                  xori         s9, t3, -1196
                  sll          t1, zero, a6
                  and          ra, ra, a2
                  sra          a2, s4, s11
                  addi         s8, s4, 750
                  srai         s8, s7, 6
                  sll          t1, t6, t5
                  lui          s2, 765339
                  addi         gp, s0, -248
                  ori          zero, zero, 108
                  sltu         t3, s0, a7
                  add          s0, t1, s0
                  srl          t6, s11, s3
                  sra          s11, zero, s5
                  xor          a0, t4, tp
                  xor          a2, ra, a1
                  srl          gp, s4, s5
                  addi         s6, s6, -381
                  sra          zero, t5, t0
                  sltu         t0, t6, s2
                  slt          sp, sp, zero
                  srai         zero, s5, 20
                  lui          s1, 570136
                  srli         gp, a5, 0
                  ori          s8, gp, -353
                  slli         s9, a3, 19
                  sll          s8, ra, s10
                  srl          s1, gp, sp
                  ori          t1, s3, -1374
                  srli         s11, s10, 13
                  sub          s3, a5, gp
                  sub          t2, tp, t3
                  or           s9, sp, s5
                  add          a0, s11, t2
                  ori          s2, s1, -313
                  sra          t4, t4, t6
                  and          t2, t5, t0
                  auipc        t6, 29158
                  nop
                  srli         a4, s0, 5
                  slt          t6, s6, gp
                  slt          s9, gp, s8
                  lui          a5, 622213
                  slli         gp, sp, 3
                  xor          t2, a2, s4
                  ori          a2, s2, 1818
                  sll          t3, s11, a5
                  lui          s0, 671673
                  add          s10, s8, t5
                  auipc        s5, 993565
                  nop
                  andi         s2, s5, -132
                  sll          s5, s7, zero
                  nop
                  sra          gp, a3, a7
                  srai         s3, s9, 7
                  auipc        t4, 582153
                  auipc        s8, 269742
                  srl          a1, a1, s3
                  xor          zero, s0, zero
                  ori          t0, a3, -1506
                  or           t2, t1, a0
                  xori         s6, s3, 1865
                  addi         s9, t6, 450
                  sltu         s3, s3, s0
                  ori          s7, a7, -1159
                  slt          s4, a1, a7
                  addi         sp, a6, 1022
                  ori          s0, s10, -226
                  slt          t0, s0, a5
                  slli         t3, s2, 12
                  slt          t0, sp, s2
                  sltu         a6, zero, s3
                  slli         s1, a4, 29
                  slt          a1, s10, s8
                  or           a2, s11, a7
                  xori         s3, s2, 830
                  sll          s8, s6, tp
                  sltiu        s10, s4, -736
                  addi         t5, s1, -720
                  or           t5, a5, s1
                  xor          a1, a5, a2
                  sra          a2, t0, tp
                  srai         a1, s7, 5
                  andi         s0, s5, 883
                  slti         s4, s6, -286
                  slt          a5, s9, t3
                  andi         t1, a3, -329
                  sltiu        s2, a6, -731
                  sltu         s7, t0, s9
                  sll          s7, a1, a6
                  sll          s4, t5, s8
                  slti         s2, a1, 947
                  sltiu        gp, tp, -476
                  srli         s11, s8, 13
                  sra          s10, t5, a6
                  addi         t3, s6, 654
                  sltiu        ra, t6, -1039
                  sltiu        s2, zero, -287
                  xori         s8, s7, -41
                  srai         s2, a4, 20
                  xor          s1, s11, t2
                  sll          sp, zero, t6
                  xori         t3, s9, -2008
                  sltu         ra, gp, a2
                  lui          s2, 893345
                  sub          s7, tp, s3
                  sub          s11, s10, t2
                  lui          a1, 207592
                  srli         s9, s4, 10
                  srai         t0, s3, 15
                  and          s3, sp, s8
                  slli         s2, tp, 30
                  sub          t1, a1, t4
                  lui          a2, 387518
                  slli         s10, s9, 21
                  sltiu        a6, a1, -676
                  addi         s9, a6, 2033
                  slli         s10, a1, 19
                  sra          s8, s0, a1
                  slt          sp, a5, a0
                  ori          a1, a6, -1679
                  or           s7, s7, s10
                  sll          s1, t1, t6
                  slt          s2, t0, a6
                  slti         s7, a0, 344
                  srli         a1, a2, 11
                  andi         s10, gp, -564
                  slli         gp, s3, 13
                  ori          t5, s5, -1390
                  li           s0, 0x8daab210 #start riscv_int_numeric_corner_stream_8
                  li           ra, 0x67df5656
                  li           a2, 0xffffffff
                  li           t1, 0x94fd53b2
                  li           s8, 0x80000000
                  li           s6, 0x80000000
                  li           a1, 0xa1299cc
                  li           s9, 0x80000000
                  li           a0, 0xffffffff
                  li           sp, 0xffffffff
                  lui          sp, 289649
                  auipc        a2, 284096
                  lui          sp, 1000059
                  lui          s9, 364821
                  auipc        a1, 383680
                  sub          s6, a0, a2
                  nop
                  auipc        a0, 86484
                  addi         sp, s6, -1290
                  sub          a0, s0, ra
                  addi         s6, a2, -10
                  add          sp, s6, s8
                  auipc        a1, 629649
                  addi         a0, a1, 1955
                  sub          ra, s0, a0
                  nop
                  nop
                  auipc        t1, 440652
                  nop
                  sub          s6, t1, s6
                  add          a1, s8, s9
                  auipc        a0, 599791
                  lui          s8, 726106
                  lui          a0, 556834
                  lui          ra, 855209 #end riscv_int_numeric_corner_stream_8
                  sra          t2, a6, t6
                  nop
                  sltiu        s5, a3, 1690
                  sltiu        s2, t1, -501
                  sra          t3, s9, s4
                  ori          s8, s4, 123
                  or           s2, s8, t6
                  add          t3, sp, s7
                  srl          s10, s7, s3
                  or           sp, s1, a1
                  srli         s2, a2, 25
                  sltiu        ra, a2, -1702
                  nop
                  srai         s11, s11, 10
                  sltu         s6, t0, s5
                  slli         s2, a0, 31
                  ori          a6, s4, 109
                  srli         t0, s3, 25
                  srl          a1, s9, t4
                  xori         ra, a7, 1754
                  slt          t3, t6, t3
                  addi         a5, s7, -992
                  srl          sp, a1, s4
                  add          zero, t3, t5
                  andi         s7, s7, -1389
                  sll          a5, s6, s1
                  sra          s6, ra, sp
                  slli         t2, s8, 17
                  xor          sp, s0, t1
                  srai         s10, a5, 24
                  srai         s4, s8, 5
                  and          s2, a6, s9
                  add          s4, a6, a7
                  addi         a0, s1, -1635
                  ori          a4, s10, 741
                  sll          t2, s7, t2
                  lui          t0, 323813
                  slt          s3, t5, s6
                  sra          zero, t4, a7
                  nop
                  ori          a2, s6, 157
                  sll          a1, s9, s11
                  xor          a2, ra, t6
                  slli         t5, s7, 10
                  andi         t1, t3, 1764
                  xori         s11, a2, -1733
                  addi         t1, s11, 1932
                  or           a5, s11, tp
                  sub          s9, t5, a4
                  nop
                  srli         a0, a0, 6
                  auipc        s4, 741463
                  slti         s8, a6, -1214
                  xor          s9, t5, t0
                  addi         gp, a3, 666
                  sra          s5, s6, a0
                  addi         s4, a6, -1269
                  xori         s9, s3, 2038
                  sub          s2, a3, a3
                  srai         t6, a1, 5
                  slli         s8, a6, 26
                  addi         s8, s7, -1411
                  and          s8, s11, t4
                  add          sp, s0, t6
                  addi         t4, t2, -643
                  sra          sp, ra, a4
                  sltu         a1, s2, s6
                  addi         s2, s4, 792
                  slt          s1, t6, a5
                  nop
                  auipc        t6, 282241
                  slli         s7, a4, 31
                  srai         t4, a4, 31
                  lui          s1, 937536
                  sltiu        s2, s7, -155
                  xori         s9, a7, 25
                  sub          a0, zero, s0
                  auipc        s7, 924604
                  slt          a2, s0, gp
                  lui          t1, 446302
                  xor          s11, s1, s4
                  xori         a0, t3, -2003
                  sll          t5, t4, t3
                  sub          t2, zero, a4
                  xori         gp, a4, 20
                  ori          s6, s8, 1968
                  andi         s6, s9, 1145
                  sra          t3, a3, t1
                  sltiu        s11, s9, 709
                  addi         a2, s11, -583
                  lui          t6, 335076
                  slt          s5, gp, a1
                  ori          gp, t0, -408
                  sra          s9, s2, zero
                  nop
                  add          t6, s1, a6
                  sll          s0, s2, s2
                  slt          a0, s7, t3
                  xori         gp, a5, 1033
                  ori          a2, t4, -1495
                  slti         s5, t0, -932
                  sltiu        t2, s9, 1351
                  sltu         a1, a6, a3
                  slli         s0, s4, 14
                  sltiu        a2, t6, 1151
                  lui          sp, 834971
                  auipc        t6, 916714
                  sltu         s9, s6, s8
                  and          t6, s11, t4
                  xori         s0, s1, 1025
                  lui          s6, 774968
                  auipc        s9, 696526
                  srli         gp, s3, 16
                  nop
                  srl          t0, s1, a0
                  or           t1, t6, s11
                  slli         t5, s11, 19
                  or           t2, t6, s10
                  sub          a2, a5, s1
                  sra          gp, gp, s11
                  srli         a0, a2, 2
                  ori          t3, t1, -1311
                  lui          zero, 81177
                  xor          t5, a4, t4
                  xor          a2, t5, a4
                  and          t3, s4, t1
                  xor          zero, a1, t1
                  add          s1, t5, s9
                  srai         a4, s10, 3
                  srli         a4, s11, 7
                  xor          ra, t2, a0
                  srli         s9, gp, 30
                  auipc        s7, 249970
                  and          t4, t4, s6
                  sll          s9, a1, t2
                  lui          s2, 823087
                  slli         t2, a6, 28
                  srli         s3, sp, 31
                  slti         s9, s0, -1708
                  lui          s6, 410032
                  auipc        a5, 132885
                  add          t6, t5, s5
                  sll          s5, a4, s6
                  and          sp, a6, s5
                  nop
                  auipc        zero, 707007
                  xor          s8, s9, s1
                  and          a1, gp, t0
                  xor          a5, t0, s7
                  xor          a6, s7, zero
                  xori         sp, a6, -1188
                  ori          zero, s2, -1806
                  slt          s7, tp, s5
                  srl          t3, a4, s3
                  andi         a5, a2, 1069
                  sltu         s1, a2, sp
                  add          s7, s9, s3
                  sltu         sp, s10, a5
                  add          gp, a6, a1
                  auipc        a6, 631367
                  auipc        t6, 400293
                  srl          a0, s8, zero
                  xori         s3, s2, 936
                  sltiu        s2, a7, -967
                  sub          s4, t1, s4
                  add          s1, tp, zero
                  and          t2, a7, gp
                  slti         s7, s4, 1264
                  sub          t2, a3, s9
                  srai         s11, tp, 25
                  srli         s9, a1, 22
                  addi         t1, zero, -944
                  srai         zero, a3, 22
                  srl          s7, s0, sp
                  sltu         sp, s9, a6
                  slti         s6, a0, -830
                  sll          a5, gp, s3
                  sub          s0, t4, s11
                  lui          zero, 111033
                  slli         gp, s2, 3
                  srli         s10, s2, 22
                  sltiu        s0, ra, -1189
                  slt          a1, ra, t0
                  addi         t2, a1, 1287
                  addi         a1, a5, 528
                  auipc        s5, 152231
                  sra          s10, s1, s5
                  slti         s5, s10, 618
                  addi         a5, tp, 1273
                  srl          a5, s6, a6
                  ori          sp, s4, 1188
                  andi         gp, s2, 1729
                  sub          zero, a1, s8
                  sll          gp, t4, t5
                  sub          s5, t3, tp
                  sll          s7, s2, t4
                  sub          s0, s10, s4
                  sra          s1, t6, s9
                  srai         t2, s5, 29
                  sub          s5, s1, a1
                  sll          a6, t6, zero
                  and          t3, tp, s1
                  andi         t4, a0, 199
                  andi         s10, a5, 1179
                  sub          a5, s9, s2
                  sltiu        s2, t1, 337
                  srli         t2, t1, 29
                  and          t5, t3, s10
                  or           s3, a0, s9
                  slti         t3, s9, -137
                  xori         a0, s9, -1650
                  auipc        ra, 984050
                  or           s10, t0, t5
                  sltiu        t6, ra, -1547
                  auipc        t4, 391085
                  xor          t2, t1, a0
                  lui          s10, 38238
                  srl          a6, s3, s4
                  andi         t5, s5, -588
                  ori          s7, s11, 1027
                  srl          sp, s10, s11
                  lui          a4, 889326
                  srai         t1, s5, 8
                  lui          a0, 634101
                  sub          s6, a4, s6
                  nop
                  add          a2, t2, t2
                  slt          a1, a6, s6
                  or           sp, a4, a6
                  sub          t5, t1, t0
                  ori          s10, s6, 620
                  slti         gp, t2, -973
                  or           t4, s7, a1
                  nop
                  xori         s11, sp, 1545
                  sltiu        sp, t4, -446
                  srli         t4, a1, 6
                  lui          a6, 883870
                  xori         s4, a6, 1304
                  xori         a1, s4, -454
                  sll          s11, t5, a4
                  slt          s8, s10, zero
                  lui          s10, 834202
                  xor          t3, s3, s1
                  add          s9, s9, a0
                  srai         a2, a7, 23
                  nop
                  slti         zero, s0, -926
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s6, 0x0
                  li           s3, 0x80000000
                  li           a5, 0xffffffff
                  li           a6, 0x80000000
                  li           s10, 0x80000000
                  li           s4, 0x80000000
                  li           s0, 0x80000000
                  li           t6, 0x80000000
                  li           t4, 0x4619bf82
                  auipc        a6, 230889
                  add          a6, s6, a5
                  sub          s10, a5, s4
                  add          s3, s5, s3
                  lui          s3, 207316
                  nop
                  sub          s0, t6, s10
                  lui          s6, 17250
                  addi         a5, t6, 918
                  lui          a5, 989
                  nop
                  addi         s4, s10, 845
                  sub          a5, s0, a6
                  sub          a5, a5, a5
                  sub          a5, s6, s4 #end riscv_int_numeric_corner_stream_1
                  lui          ra, 789971
                  sra          a0, a4, t3
                  sub          t0, s10, a1
                  srl          t2, t4, s2
                  or           t1, sp, t2
                  slt          a1, s0, t6
                  auipc        t4, 309661
                  ori          s11, a4, 1145
                  ori          a1, s10, -77
                  slti         t4, sp, 1279
                  sll          s0, a3, t5
                  and          t1, s2, t5
                  xori         s3, s2, 589
                  lui          ra, 190947
                  sltu         zero, a7, t5
                  add          zero, gp, gp
                  nop
                  srli         t0, t5, 5
                  nop
                  sub          s10, s8, s5
                  sltu         s11, a5, t3
                  sra          a1, s11, tp
                  srl          s8, s10, t3
                  slti         a1, a0, 1356
                  sltu         a2, a7, s4
                  sra          a2, s8, s5
                  sra          s8, s6, ra
                  sltu         s1, s8, s2
                  andi         s6, a2, -1137
                  nop
                  srl          s6, gp, t1
                  or           s3, a4, s11
                  nop
                  xor          t6, t5, a7
                  slt          s10, s6, s4
                  nop
                  xor          t6, s7, s3
                  and          a2, s9, s10
                  slli         t5, sp, 20
                  and          s8, s3, a1
                  srai         s0, a2, 22
                  addi         s10, ra, 604
                  addi         s3, t2, 937
                  andi         sp, a5, 1508
                  andi         t6, s4, -279
                  andi         t1, tp, 1060
                  srli         a5, t2, 14
                  sub          a4, a1, t0
                  ori          a6, s6, -1359
                  nop
                  and          s2, zero, t3
                  addi         t1, zero, 585
                  addi         t2, s5, 1678
                  andi         s10, s1, 1173
                  sub          t4, s7, s8
                  sll          s0, a4, s7
                  auipc        zero, 97185
                  auipc        a2, 1018568
                  srli         t1, t5, 18
                  ori          a6, zero, -1317
                  slli         ra, t6, 14
                  xor          gp, s3, a6
                  sltiu        s2, gp, -497
                  auipc        a4, 933852
                  slt          s5, a4, t5
                  sltiu        t3, s6, -171
                  slti         a2, a6, -715
                  or           s6, t6, s9
                  andi         s4, t6, -176
                  and          s6, s4, a5
                  slli         s9, s5, 22
                  slt          t2, s0, zero
                  addi         t3, a5, 1041
                  ori          t6, tp, 194
                  sltu         s0, t0, s0
                  sltu         zero, t6, t6
                  sub          s0, s4, t6
                  ori          s2, gp, 294
                  slli         a2, zero, 30
                  sra          t0, a7, a5
                  or           s4, s2, s11
                  auipc        a1, 514934
                  sll          s8, t2, a5
                  slt          s1, s3, s4
                  srli         a6, a2, 8
                  or           a1, t5, t6
                  xori         s3, a7, 294
                  slti         t1, t3, -370
                  ori          a0, t3, 1635
                  add          a5, s4, t5
                  xori         s11, a6, -856
                  slli         s9, s6, 7
                  sra          a2, tp, s11
                  slli         t1, s4, 12
                  slt          t0, s1, s11
                  sll          ra, t2, zero
                  sra          s1, ra, s11
                  sub          a5, s3, a6
                  sltu         s10, t4, s7
                  xori         s9, s4, 1622
                  xori         s7, gp, -1397
                  srl          s10, s1, t5
                  or           t5, zero, a0
                  lui          a5, 1039425
                  sra          t5, a1, t0
                  sll          s8, s10, t6
                  xor          ra, s4, s1
                  slli         t2, ra, 27
                  slli         s0, gp, 22
                  xori         t5, t5, -1981
                  sll          s9, a2, t6
                  or           a5, s10, a0
                  xori         t4, s10, -568
                  nop
                  andi         t2, s7, 497
                  lui          s8, 69772
                  srli         sp, s3, 6
                  sub          s5, s5, s9
                  addi         sp, t4, -1838
                  sub          a5, a2, s7
                  slt          t5, s10, zero
                  ori          t4, t5, 150
                  andi         s11, s1, -1765
                  lui          s4, 197411
                  slli         t6, s2, 0
                  sltiu        a0, s10, 742
                  or           t6, a3, s2
                  sra          ra, a4, t1
                  andi         gp, s5, -1133
                  addi         sp, t4, -859
                  srli         t6, t2, 0
                  xor          a2, a6, s6
                  sltu         zero, s5, t6
                  sltiu        a4, t3, 947
                  addi         t0, s6, 222
                  andi         zero, t0, 1455
                  or           s9, s11, a5
                  and          gp, s7, t6
                  addi         t1, s6, -1051
                  lui          s4, 307752
                  nop
                  xor          s1, a7, t3
                  add          s1, t1, a6
                  sltu         t2, t5, t0
                  srli         a4, gp, 1
                  slli         t0, a2, 1
                  andi         t3, a7, 1770
                  xor          s11, gp, a3
                  and          t2, t0, t3
                  xor          gp, a0, t6
                  addi         s4, ra, -517
                  andi         s0, s1, -746
                  srl          a4, a6, a2
                  sltiu        t0, s1, -63
                  auipc        s2, 101737
                  nop
                  sll          a0, s7, a2
                  or           t3, s4, sp
                  sltu         a1, a7, s2
                  addi         s11, zero, 522
                  sra          sp, ra, s2
                  srl          a2, t5, s2
                  sll          t3, a1, a1
                  srl          a4, s4, s3
                  slt          s9, a4, gp
                  or           s5, s5, a3
                  slli         s11, tp, 8
                  srl          a6, ra, tp
                  srai         s8, s0, 3
                  srl          a6, s3, s4
                  sltiu        s3, a6, 8
                  auipc        gp, 398278
                  add          s7, a2, a2
                  sltu         t5, s11, t2
                  xori         s6, a6, 1680
                  lui          t1, 255215
                  sltiu        s11, a3, 94
                  srl          zero, s2, s11
                  ori          s7, s11, 353
                  sra          gp, s6, s7
                  xor          s11, t1, s5
                  add          a1, t2, a4
                  addi         a4, a5, 476
                  auipc        t6, 594713
                  slti         s10, a6, -1711
                  sltiu        s8, s10, 1468
                  auipc        t1, 1001488
                  sltu         t3, s2, s5
                  ori          a6, s8, -1498
                  sub          s2, a0, t5
                  addi         s6, tp, 353
                  srl          s4, s3, t0
                  xor          s11, a2, t0
                  add          a0, a5, a1
                  and          a4, s9, a5
                  sltiu        zero, sp, -1457
                  srl          gp, s8, a3
                  xor          gp, t5, s6
                  auipc        s9, 479229
                  sra          a0, s6, tp
                  sub          ra, a4, s6
                  slti         a2, s9, 1561
                  sltiu        ra, s10, -795
                  sltu         a4, s5, gp
                  srl          t0, s1, s11
                  srai         s4, t3, 29
                  slt          a5, s0, a6
                  and          gp, a5, t1
                  srl          t5, s11, s5
                  sltu         s2, t2, t3
                  xori         zero, t3, 1420
                  sra          a5, s8, tp
                  sltu         t2, a4, s8
                  slti         s7, sp, 363
                  xor          a4, s1, a0
                  slt          s0, a3, gp
                  auipc        zero, 1036564
                  slt          s0, a7, s11
                  xor          s5, s2, t5
                  or           a4, a1, s7
                  or           s0, t4, s7
                  srai         a1, s3, 11
                  auipc        a2, 681307
                  andi         t5, t0, -834
                  slt          zero, t5, t2
                  sra          s10, a2, t4
                  lui          t4, 228961
                  srli         a5, a6, 7
                  slli         s2, a5, 4
                  slt          t3, s5, tp
                  xor          t5, s1, a4
                  slt          s2, a1, a4
                  and          t1, tp, a5
                  srli         s6, s4, 10
                  sll          a2, s8, s1
                  sltiu        t1, t1, 899
                  nop
                  sltiu        a6, t1, -1148
                  addi         t1, s1, -1921
                  auipc        zero, 649058
                  slt          s9, tp, zero
                  xori         s2, a4, 1424
                  srli         s11, gp, 29
                  or           s0, s5, t0
                  srl          s5, sp, ra
                  slli         sp, s9, 2
                  ori          zero, t0, -735
                  sub          s7, t4, a7
                  srl          a1, a3, t6
                  andi         t2, s9, -823
                  slti         zero, s3, 2011
                  xor          s7, t5, t0
                  lui          s2, 962977
                  auipc        sp, 564959
                  sltiu        zero, a6, -1519
                  srli         a6, a2, 0
                  sra          a0, a3, t1
                  add          s1, sp, gp
                  or           gp, s4, t6
                  sltu         t1, a5, a1
                  nop
                  lui          t6, 244924
                  sltiu        t3, t5, -1204
                  xor          zero, s11, s4
                  nop
                  srli         a1, a5, 0
                  and          s2, t6, s1
                  add          zero, s2, tp
                  ori          s4, s8, 1264
                  or           s7, a6, ra
                  srl          s0, t3, a7
                  addi         zero, t5, 5
                  auipc        zero, 257216
                  andi         t0, a4, 1193
                  sub          t5, a2, t1
                  addi         s3, a5, 1065
                  srl          t2, a7, gp
                  or           zero, s1, t0
                  sub          t5, a4, t3
                  and          s10, a2, zero
                  sra          a4, a5, s11
                  nop
                  addi         a4, s1, 1820
                  auipc        a2, 727151
                  sll          a0, s3, s1
                  andi         t2, a4, -476
                  srl          s1, t1, ra
                  lui          sp, 85161
                  ori          ra, s10, -651
                  sra          s11, s9, s6
                  srl          t4, a7, t6
                  addi         a5, s10, 1935
                  lui          s7, 836976
                  slli         a4, gp, 10
                  sltiu        a6, s10, -1690
                  slt          s11, gp, tp
                  or           s5, a6, t3
                  or           t5, ra, a7
                  xori         t0, s3, -1622
                  addi         t3, t2, 320
                  sltiu        s3, sp, 175
                  xor          s4, t4, a7
                  srl          a6, t1, s4
                  sra          s7, s4, a4
                  sltiu        a5, t4, -161
                  srai         t5, s7, 0
                  sltu         t4, a7, t2
                  srli         s11, t4, 18
                  add          s10, sp, a4
                  lui          s1, 121046
                  andi         t0, t5, -414
                  srl          gp, zero, gp
                  slt          s8, sp, s5
                  sub          s9, zero, s0
                  add          a0, s6, a6
                  lui          s2, 692940
                  lui          s4, 453613
                  nop
                  srli         s4, t1, 23
                  sra          gp, a6, t1
                  sll          t4, a1, s11
                  auipc        s11, 566569
                  nop
                  srai         s10, a4, 5
                  add          a1, a6, t6
                  srli         sp, s9, 6
                  xor          a0, s0, a5
                  srl          s4, a2, s11
                  sltiu        gp, s10, -623
                  nop
                  auipc        ra, 664659
                  sra          zero, a1, t3
                  sub          s3, s3, a5
                  sra          s1, s11, a1
                  or           sp, t3, s1
                  auipc        s6, 118455
                  srai         a0, s9, 5
                  and          s3, tp, s7
                  xori         a6, ra, -1318
                  or           zero, a1, zero
                  sltu         s1, t6, t6
                  and          t0, t3, a3
                  slli         s8, s4, 23
                  sltiu        t0, t2, -1765
                  auipc        t1, 73918
                  add          s11, t6, s3
                  sltu         t3, tp, t3
                  sltu         s11, t1, zero
                  ori          gp, a2, -736
                  srai         ra, a4, 25
                  slli         s4, a1, 25
                  srai         s10, s0, 0
                  sra          a0, sp, s7
                  xori         s0, t5, 432
                  srli         a5, s11, 1
                  sltu         a2, a1, s5
                  sra          zero, a4, s11
                  sltu         zero, s2, tp
                  sltiu        t2, tp, 83
                  xor          a5, ra, t3
                  or           a1, s10, t4
                  auipc        s10, 784828
                  andi         s6, s6, -1101
                  or           a6, s4, t6
                  srli         s5, a1, 30
                  srl          ra, t3, ra
                  sll          t5, zero, t1
                  sra          s9, sp, s9
                  slli         a5, zero, 31
                  auipc        t2, 592982
                  or           s3, s1, t5
                  andi         t4, s9, 986
                  lui          s6, 824116
                  sltu         ra, t2, t3
                  sub          a5, a2, t0
                  ori          gp, gp, -957
                  nop
                  nop
                  nop
                  sltiu        t0, zero, -1032
                  lui          s1, 914395
                  sub          t5, s6, s9
                  xori         a2, a6, 777
                  sltu         t4, zero, s11
                  srl          ra, gp, s8
                  sll          a5, a5, zero
                  ori          s6, s7, 1783
                  and          sp, t6, s1
                  sltu         a6, a6, s0
                  andi         zero, s7, 1799
                  slli         t5, t0, 27
                  slli         a0, a1, 18
                  sll          s8, s2, t4
                  slt          t0, s5, t3
                  srl          sp, t4, a5
                  addi         s5, ra, 397
                  andi         t1, sp, 566
                  xor          s2, gp, ra
                  sra          t1, a2, a4
                  sll          s9, a5, a6
                  or           zero, a0, s3
                  xori         zero, s5, -1633
                  slti         s7, s5, 270
                  slli         a1, a5, 13
                  lui          s6, 42978
                  xori         a2, s11, -1572
                  sub          s8, s3, a1
                  and          s1, gp, s10
                  slli         s6, a0, 22
                  nop
                  addi         sp, s7, -1785
                  slt          a4, s4, s1
                  lui          s3, 757877
                  slli         a5, a5, 14
                  sltu         t4, a5, a3
                  or           s11, a6, t1
                  slti         t2, a1, 1377
                  or           t4, zero, s9
                  addi         sp, s6, -574
                  srli         s11, s4, 19
                  srai         a6, s9, 26
                  lui          s11, 517288
                  sll          s2, ra, s11
                  addi         s1, t0, -401
                  slti         zero, t6, 1116
                  xor          t2, s2, s5
                  sltiu        s3, a3, -627
                  lui          s3, 37939
                  ori          a2, s11, -679
                  srl          s3, s7, s10
                  add          a2, s6, s5
                  lui          s1, 714788
                  sll          s0, t3, a3
                  add          s0, t4, t0
                  srl          gp, a2, t1
                  lui          s7, 13282
                  or           t5, tp, s4
                  srl          a4, gp, sp
                  sll          sp, t6, t3
                  and          a0, gp, t0
                  slti         a6, a5, -601
                  auipc        a5, 853187
                  lui          t0, 181100
                  xori         s0, s8, 1594
                  sltu         t2, a2, zero
                  ori          ra, t6, 1746
                  xori         s10, a0, -1988
                  xori         a5, a2, -2035
                  slti         s3, t2, 1333
                  sltiu        s0, s1, -419
                  or           s5, t1, s8
                  nop
                  addi         s8, s8, -1489
                  sra          s7, t4, t5
                  auipc        t2, 256393
                  xori         s1, t0, -809
                  auipc        a4, 387994
                  lui          s2, 219905
                  xori         a2, a0, -1837
                  sll          s0, gp, s7
                  sll          s7, sp, a6
                  slt          s7, t6, t6
                  nop
                  lui          t4, 56615
                  or           t4, s11, gp
                  sub          s4, s5, a7
                  and          a6, a0, s6
                  srl          t5, a2, a6
                  nop
                  srl          a5, zero, s10
                  sub          t4, t2, s8
                  add          t4, s7, zero
                  and          a6, s0, s11
                  ori          s11, s3, -272
                  xori         t2, s10, -836
                  and          t1, a0, sp
                  sub          s2, a6, zero
                  slli         a6, a1, 1
                  sra          t4, s1, s2
                  lui          s5, 344457
                  addi         s7, a7, -1138
                  ori          sp, a2, 805
                  auipc        ra, 412064
                  srli         s5, ra, 7
                  andi         a2, a2, 758
                  xori         t6, s3, -415
                  slti         zero, s4, 469
                  slt          s2, a2, ra
                  srai         a5, s5, 14
                  and          a1, s9, t5
                  auipc        t4, 738732
                  sra          s3, a7, s3
                  xor          a1, s7, t6
                  sltiu        t6, s3, 1153
                  addi         s6, a2, 386
                  lui          ra, 943328
                  nop
                  sub          a1, t6, t4
                  sll          t6, a2, t3
                  lui          a6, 1010496
                  addi         a0, s3, 519
                  xor          s0, t5, a7
                  lui          s7, 618631
                  andi         t5, s7, -382
                  addi         sp, s8, 481
                  addi         s5, s9, 1712
                  xori         s7, ra, -136
                  srl          t3, t0, a4
                  auipc        a4, 241493
                  lui          a2, 647148
                  srl          sp, t2, s10
                  srli         ra, a7, 20
                  sltu         a5, s1, s8
                  andi         s6, a4, -185
                  sltu         a1, s1, s1
                  nop
                  andi         s3, t5, 363
                  sll          t4, a5, a7
                  sltu         s7, s3, s5
                  lui          a1, 229304
                  auipc        a2, 494439
                  add          s11, sp, t6
                  sra          s8, t5, a1
                  or           s11, s8, a4
                  and          s7, s7, s10
                  andi         a2, a2, 169
                  and          t6, sp, s6
                  and          s10, t4, t6
                  slti         s11, tp, 550
                  xori         s2, gp, 322
                  nop
                  sltiu        a1, t5, 1066
                  sub          t0, a5, s9
                  or           s6, s6, s0
                  ori          s3, a7, -785
                  srl          s9, tp, s5
                  auipc        s2, 73784
                  xori         s10, s7, 601
                  or           s11, t4, s2
                  xori         s10, a7, -1926
                  sra          t5, s11, t1
                  and          s2, sp, s11
                  andi         a5, t1, -1207
                  xori         s11, s1, -1573
                  sltu         s9, a5, a6
                  and          ra, s5, s2
                  sra          t0, t3, s2
                  nop
                  sll          s0, t5, a5
                  add          ra, gp, a7
                  slli         s11, s7, 10
                  add          s1, s2, a5
                  slt          t3, s11, s5
                  add          a2, t0, s7
                  slt          a2, zero, s3
                  or           sp, s1, s1
                  auipc        zero, 831169
                  xor          s5, t6, s7
                  slt          a6, s6, t5
                  ori          s5, s5, -825
                  sll          zero, tp, t5
                  xori         a5, a7, -1988
                  slti         zero, s1, -441
                  sra          t2, s11, a7
                  srl          a5, a3, s3
                  ori          t5, s1, -327
                  sll          t2, a5, s6
                  and          s10, sp, a0
                  srl          t5, s11, gp
                  slti         t4, s1, 811
                  ori          a0, t6, -880
                  srli         zero, a5, 7
                  xor          s0, s9, s8
                  sll          s10, a4, s4
                  sltu         t3, s0, a0
                  sll          sp, a0, a0
                  nop
                  addi         t4, t4, -1108
                  slt          a6, ra, t0
                  sub          s8, s10, a1
                  sub          t2, s1, s6
                  andi         a2, s4, 1152
                  add          sp, zero, a4
                  or           s3, t1, s0
                  slli         s2, s7, 25
                  addi         s4, t4, -1742
                  sltu         s7, sp, a0
                  addi         s11, a5, -112
                  auipc        t4, 970379
                  srli         s4, s11, 19
                  or           zero, t1, gp
                  ori          ra, t6, -755
                  slt          a5, s0, s2
                  lui          s9, 453492
                  slt          ra, s6, s4
                  sra          gp, ra, zero
                  slti         a6, s5, 2020
                  slti         zero, t4, -1946
                  xor          s10, a0, a5
                  auipc        t2, 696380
                  xori         s4, a0, 71
                  sltiu        s4, s9, 1384
                  andi         t1, a6, -1182
                  sub          t0, zero, t5
                  sll          a6, s5, a6
                  or           a5, s2, t2
                  srli         s0, t2, 29
                  addi         s6, a4, 1859
                  srai         s4, s1, 11
                  ori          gp, s1, -854
                  addi         a0, s6, 627
                  andi         s0, a5, 1907
                  slli         s11, sp, 9
                  srai         a0, t2, 12
                  xori         s10, s2, -140
                  slt          t4, t0, t0
                  xor          t2, s5, ra
                  auipc        a0, 939666
                  sll          a0, t1, a5
                  sll          s3, t3, a2
                  slti         t4, a6, -653
                  addi         s8, s2, -810
                  slli         s9, zero, 30
                  add          gp, t4, tp
                  nop
                  nop
                  sra          s7, gp, sp
                  srl          gp, a1, gp
                  addi         a4, t5, -942
                  slt          t2, s7, gp
                  ori          s0, s2, -9
                  nop
                  nop
                  sltiu        t6, a0, -515
                  sub          s11, a1, t3
                  srl          s3, t2, s3
                  or           s9, t6, s6
                  slti         a2, a4, -1264
                  slti         s0, s3, 619
                  addi         sp, s11, -383
                  sra          s8, s10, a3
                  slli         s2, t1, 7
                  sltiu        a0, s1, -286
                  sltiu        t5, a0, -1273
                  srl          ra, t2, s5
                  or           s11, s0, ra
                  ori          s8, a4, 684
                  xor          a0, ra, a5
                  lui          t0, 1027363
                  srl          a1, t0, t2
                  sltiu        s5, s4, -265
                  sra          a4, t6, t2
                  sltiu        a0, s7, 1539
                  sll          t1, zero, a5
                  srai         zero, t4, 4
                  slt          s5, a3, s7
                  sra          t3, a7, s6
                  srli         s0, a2, 12
                  xor          t3, s2, t3
                  srli         ra, s6, 24
                  nop
                  srli         s7, zero, 21
                  ori          s7, a4, -454
                  or           ra, a1, gp
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           t4, 0xffffffff
                  li           a4, 0xc7241df2
                  li           t6, 0xffffffff
                  li           s10, 0x0
                  li           s2, 0x80000000
                  li           a2, 0xffffffff
                  li           ra, 0x8e3878fb
                  li           s11, 0x363ef63
                  li           t5, 0xdfbbd13
                  sub          a2, ra, t6
                  auipc        ra, 670728
                  auipc        s2, 282127
                  lui          t6, 724940
                  nop
                  auipc        t4, 665875
                  add          ra, a2, s11
                  addi         t6, a2, -1101
                  addi         s2, t6, -300
                  lui          t6, 622104
                  auipc        t6, 105428
                  addi         s11, ra, -1987
                  nop
                  sub          s10, a4, s2
                  lui          s2, 532134
                  nop
                  lui          s11, 616610
                  add          a4, t6, t6
                  nop
                  lui          t6, 384957 #end riscv_int_numeric_corner_stream_3
                  or           s2, sp, s6
                  srl          a1, s7, zero
                  slt          t4, s9, a4
                  ori          t2, s10, 267
                  sltu         s0, zero, a3
                  auipc        s2, 284376
                  or           s5, s10, sp
                  sub          s8, sp, a7
                  and          s10, s4, s8
                  xor          s4, s5, s8
                  nop
                  srli         a6, t6, 27
                  xor          s1, s5, s11
                  xori         t4, t6, 521
                  srli         gp, s11, 0
                  slt          s9, s2, a3
                  xori         a6, s5, 939
                  xori         zero, gp, 1891
                  add          sp, s6, s5
                  slti         s10, s2, -348
                  srli         a5, s0, 8
                  xor          s8, a7, a2
                  srai         s11, a7, 25
                  andi         t1, s6, 312
                  sltiu        zero, t5, 1665
                  sltiu        gp, s4, -978
                  or           a5, a2, t1
                  sltiu        t6, s4, 82
                  xori         ra, tp, 997
                  slt          s0, t0, s10
                  sltiu        a2, s7, 1270
                  slt          t6, s4, a6
                  srli         s5, t5, 30
                  slt          ra, s8, tp
                  or           s7, s0, a5
                  and          a4, s6, sp
                  slti         s5, t0, 477
                  srai         t3, t4, 24
                  sra          zero, s9, s10
                  addi         s8, s0, -619
                  sra          a6, s5, s10
                  andi         gp, t6, 234
                  or           zero, a6, t2
                  srli         s4, a4, 5
                  slti         a2, s1, 1091
                  slli         t2, a4, 23
                  sra          t2, zero, s5
                  srli         s1, t1, 21
                  slt          zero, s11, s4
                  ori          a5, a0, -1627
                  andi         s3, s11, 402
                  srai         a5, t0, 4
                  addi         s10, s4, -5
                  and          a4, sp, t0
                  slt          s5, a1, s2
                  sltu         s7, t0, a4
                  sltiu        s6, a1, -1340
                  slti         t6, zero, -1984
                  ori          t1, s7, 1117
                  sltu         t5, t6, s5
                  auipc        a6, 589372
                  lui          s8, 68345
                  sra          t6, s6, t4
                  addi         t2, t1, -661
                  or           s1, t1, a5
                  sltiu        s5, s8, 181
                  sltiu        s5, t3, 1630
                  srl          t4, a6, s8
                  andi         s1, a5, -1882
                  lui          a4, 442675
                  sll          s8, s0, zero
                  slti         s9, s2, -1483
                  slli         s7, s8, 30
                  xor          s6, s5, s10
                  add          t3, t1, s7
                  slli         a1, t3, 15
                  slt          s6, s7, t1
                  sltu         a4, gp, a1
                  sll          ra, zero, t6
                  sltiu        s5, ra, -782
                  slt          t0, s7, a1
                  xori         s5, a1, -837
                  add          s5, t3, ra
                  sltu         s8, a0, t3
                  xori         t3, ra, 784
                  addi         t6, a2, 2021
                  srai         zero, s0, 6
                  slt          t2, gp, s4
                  addi         t2, s8, -199
                  ori          a4, t5, -522
                  slli         s8, s1, 25
                  sll          s1, t4, t3
                  slti         a5, s0, 1505
                  slli         ra, sp, 11
                  ori          s10, a1, 1538
                  or           t1, s1, s7
                  xor          s9, sp, a3
                  xori         s1, s9, -809
                  sltiu        a5, t2, 299
                  or           gp, s7, s3
                  slli         zero, s3, 25
                  slli         a1, a4, 27
                  sub          t2, s5, s2
                  xori         s9, gp, 155
                  addi         a1, gp, 1295
                  slt          sp, a0, s6
                  andi         a0, s3, -1871
                  ori          t5, tp, 1477
                  and          t4, a0, zero
                  auipc        t2, 934144
                  and          s9, s10, a0
                  xor          zero, a2, s9
                  sra          t4, a5, ra
                  slt          s7, t6, s6
                  andi         a5, s3, 1526
                  slti         a0, t6, 74
                  slti         zero, t5, 1036
                  srai         t6, s8, 3
                  slti         zero, a5, -1602
                  xori         ra, s6, -6
                  add          s6, a3, a6
                  ori          t5, gp, -1059
                  or           t6, a3, s5
                  or           s3, s2, a1
                  ori          a6, t6, -499
                  and          s8, a4, t0
                  xori         a6, a7, 1760
                  add          t2, tp, a2
                  nop
                  srai         a5, gp, 26
                  slt          t2, t4, t5
                  sll          s2, tp, ra
                  or           s9, s8, t3
                  and          t0, t0, t3
                  andi         ra, s0, 71
                  srai         s3, sp, 17
                  slt          a0, s5, a4
                  andi         a0, s6, 1719
                  srl          s0, gp, s9
                  lui          s1, 608584
                  sll          a6, a4, s7
                  srli         ra, a4, 12
                  xor          s3, zero, gp
                  addi         t0, s10, 573
                  xori         gp, a5, 531
                  andi         sp, t3, -837
                  la x13, test_done
                  jalr x0, x13, 0
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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_2:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_3:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_4:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_5:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_6:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_7:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_8:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_9:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_10:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_11:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_12:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_13:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_14:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_15:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x4, x17, zero
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x27, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x27, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x27, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x27, x11, ecall_handler
                  li x11, 0x1
                  beq x27, x11, instr_fault_handler
                  li x11, 0x5
                  beq x27, x11, load_fault_handler
                  li x11, 0x7
                  beq x27, x11, store_fault_handler
                  li x11, 0xc
                  beq x27, x11, pt_fault_handler
                  li x11, 0xd
                  beq x27, x11, pt_fault_handler
                  li x11, 0xf
                  beq x27, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x17, x4, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x4, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x4, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x17, x4, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x17, x4, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x17, x4, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
