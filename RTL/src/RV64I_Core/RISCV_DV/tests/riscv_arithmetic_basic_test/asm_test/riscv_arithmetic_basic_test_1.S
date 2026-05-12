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
                  la x30, kernel_stack_end

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
                  li x0, 0xb52e39af
                  li x1, 0x9
                  li x2, 0x80000000
                  li x3, 0xf
                  li x4, 0x254ea344
                  li x5, 0x80000000
                  li x6, 0x4ad47d2d
                  li x7, 0xd
                  li x8, 0x80000000
                  li x9, 0x21136495
                  li x10, 0x0
                  li x11, 0x435fdd9e
                  li x12, 0xd0b5a4b1
                  li x13, 0xb68be4b1
                  li x14, 0xfdb3838c
                  li x15, 0xe
                  li x16, 0x80000000
                  li x17, 0x728a4794
                  li x18, 0xfdbe0b90
                  li x19, 0x0
                  li x20, 0xa
                  li x21, 0x0
                  li x22, 0xf28c12e0
                  li x23, 0x0
                  li x24, 0xfbf258e1
                  li x25, 0xd4bfc110
                  li x26, 0x0
                  li x28, 0x80000000
                  li x29, 0xd
                  li x31, 0x0
                  la x27, user_stack_end
main:             li           a1, 0x7f59bce6 #start riscv_int_numeric_corner_stream_11
                  li           a0, 0xa658fee1
                  li           t2, 0x0
                  li           s9, 0x401d61ec
                  li           gp, 0x0
                  li           a7, 0xffffffff
                  li           s3, 0xffffffff
                  li           a4, 0x4981b4cd
                  li           s10, 0x80000000
                  li           a2, 0xaa22f920
                  nop
                  lui          s10, 593014
                  add          a2, s10, s3
                  add          a2, s10, t2
                  sub          t2, a2, a4
                  add          a2, a2, gp
                  lui          s10, 442976
                  sub          s3, s9, a7
                  nop
                  auipc        s9, 28917
                  sub          s9, s10, s10
                  nop
                  sub          s9, s10, gp
                  auipc        s10, 292193
                  addi         gp, s9, -1730
                  addi         s9, a4, 1370
                  sub          s10, gp, gp
                  nop
                  auipc        a1, 20000
                  auipc        a1, 725416
                  addi         gp, a2, -1008
                  auipc        a2, 898454 #end riscv_int_numeric_corner_stream_11
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s3, 0xefbe6755
                  li           a5, 0x80000000
                  li           t1, 0x0
                  li           a7, 0xb14fe826
                  li           t2, 0xa97a6d37
                  li           s10, 0xfcdc9e26
                  li           s9, 0x80000000
                  li           s6, 0xffffffff
                  li           a3, 0xffffffff
                  addi         a3, a5, 301
                  add          s10, s10, t1
                  auipc        t2, 184478
                  nop
                  nop
                  add          a3, s9, s6
                  auipc        s6, 798662
                  auipc        t2, 414028
                  add          a5, s3, s6
                  addi         s10, s6, 379
                  lui          t1, 199412
                  lui          ra, 885518
                  lui          s10, 599360
                  sub          s10, a3, a3
                  lui          a7, 498998 #end riscv_int_numeric_corner_stream_5
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           s3, 0xffffffff
                  li           a2, 0x68dd8c54
                  li           t2, 0xffffffff
                  li           gp, 0x0
                  li           a3, 0x0
                  li           t3, 0xffffffff
                  li           s1, 0x80000000
                  li           t0, 0x0
                  li           t1, 0xffffffff
                  addi         t2, s3, 1284
                  nop
                  add          a2, a2, a2
                  nop
                  nop
                  nop
                  addi         a1, gp, -24
                  add          t1, t3, t0
                  sub          a3, gp, t1
                  sub          t1, s1, gp
                  sub          t1, t1, s3
                  addi         a3, a2, -1605
                  auipc        a2, 968613
                  lui          a2, 462227
                  auipc        gp, 643936
                  nop
                  auipc        a1, 493409
                  add          a2, t1, a2
                  nop
                  lui          t1, 997585
                  sub          a1, a3, a2
                  auipc        t0, 653455
                  lui          s3, 1040595 #end riscv_int_numeric_corner_stream_15
                  li           a5, 0x7818a11c #start riscv_int_numeric_corner_stream_2
                  li           s8, 0x0
                  li           t4, 0xffffffff
                  li           a1, 0xffffffff
                  li           gp, 0x80000000
                  li           ra, 0xffffffff
                  li           s3, 0x80000000
                  li           s1, 0x0
                  li           s7, 0xffffffff
                  li           s9, 0x0
                  lui          ra, 682221
                  auipc        s7, 64397
                  sub          t4, gp, ra
                  addi         a5, gp, -1766
                  add          s7, gp, s7
                  nop
                  lui          gp, 68211
                  auipc        s9, 541428
                  lui          s9, 129210
                  lui          a1, 779940
                  addi         s3, ra, 832
                  sub          s9, s7, a1
                  add          s8, gp, t4
                  lui          s7, 37760
                  addi         ra, s3, -1269
                  lui          gp, 1036145
                  addi         a1, s1, 1577
                  add          ra, s9, s1
                  auipc        gp, 670023
                  sub          s3, a1, ra
                  nop
                  lui          s7, 502784
                  add          gp, ra, t4 #end riscv_int_numeric_corner_stream_2
                  li           a6, 0x145b827c #start riscv_int_numeric_corner_stream_9
                  li           t0, 0xffffffff
                  li           s3, 0x0
                  li           t1, 0x0
                  li           tp, 0xa759add1
                  li           a1, 0xffffffff
                  li           s5, 0xffffffff
                  li           t2, 0x80000000
                  li           a3, 0x1cfafe1c
                  li           s9, 0x0
                  lui          t2, 972026
                  lui          s3, 765072
                  nop
                  addi         s9, tp, 1844
                  nop
                  add          s9, t1, tp
                  lui          t0, 261196
                  auipc        s5, 339969
                  addi         a3, t1, 969
                  sub          s3, s5, a3
                  lui          t1, 2748
                  auipc        t1, 458959
                  sub          t0, t0, t0
                  sub          a1, s5, t1
                  nop
                  lui          s3, 350980
                  auipc        t1, 152038
                  sub          t1, a6, s9
                  addi         t1, a1, 689
                  lui          a3, 152845
                  sub          t1, a3, t1
                  add          tp, tp, a1
                  add          t0, t2, t0
                  sub          t1, a3, a6
                  nop
                  nop
                  add          a3, tp, s9
                  auipc        t0, 286666
                  auipc        t2, 107312
                  add          t0, a6, t1 #end riscv_int_numeric_corner_stream_9
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           a7, 0x80000000
                  li           s9, 0x0
                  li           a3, 0xffffffff
                  li           t3, 0xa85f2c15
                  li           s10, 0xffffffff
                  li           a0, 0x0
                  li           a2, 0x80000000
                  li           t4, 0xffffffff
                  li           s0, 0xffffffff
                  addi         s0, a3, 1961
                  sub          s10, s9, a0
                  nop
                  sub          a0, a0, s0
                  addi         s9, s0, -824
                  auipc        s9, 247810
                  auipc        a2, 822201
                  addi         s10, a3, -628
                  sub          t3, t3, a7
                  lui          s9, 225738
                  sub          s0, sp, t4
                  auipc        t4, 114989
                  lui          t3, 250574
                  nop
                  nop #end riscv_int_numeric_corner_stream_6
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s1, 0x0
                  li           s10, 0x0
                  li           s7, 0x80000000
                  li           s6, 0x80000000
                  li           s3, 0xffffffff
                  li           t6, 0x22b4a5a3
                  li           a5, 0xffffffff
                  li           a2, 0x1aec6a37
                  li           a4, 0xffffffff
                  lui          t6, 721651
                  add          s6, t6, s6
                  addi         a5, a4, -727
                  sub          a2, s1, s1
                  lui          a5, 140725
                  lui          t2, 962190
                  addi         s3, s3, 1193
                  add          s6, s10, s6
                  addi         s3, s1, 1315
                  nop
                  addi         s3, s7, -1222
                  auipc        a5, 1000956
                  lui          t2, 1034900
                  lui          t6, 923488
                  sub          s7, t6, a5
                  lui          s7, 254773
                  sub          s1, a5, s6
                  nop
                  add          a4, a4, t2
                  lui          a5, 498699
                  addi         t2, s6, -1988
                  addi         a2, t6, 148
                  nop
                  addi         a2, s7, -906
                  lui          a2, 555076 #end riscv_int_numeric_corner_stream_18
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           gp, 0x0
                  li           a7, 0x0
                  li           a2, 0x80000000
                  li           t6, 0x80000000
                  li           a1, 0xffffffff
                  li           t1, 0x80000000
                  li           a6, 0xdd63e49c
                  li           t3, 0x0
                  li           s8, 0x3b8991b7
                  addi         a7, t3, 1249
                  lui          s9, 711202
                  nop
                  sub          a2, s9, s8
                  auipc        a7, 662087
                  sub          s9, a6, t1
                  nop
                  auipc        gp, 599618
                  lui          s9, 450435
                  addi         t1, a6, 364
                  nop
                  add          a1, t3, a7
                  sub          a2, a2, s9
                  auipc        gp, 752367
                  sub          t6, t3, t6
                  addi         a6, a2, 72
                  lui          t6, 239646
                  nop
                  lui          a6, 691840 #end riscv_int_numeric_corner_stream_3
                  li           a1, 0xda57a223 #start riscv_int_numeric_corner_stream_16
                  li           t1, 0x80000000
                  li           s3, 0x80000000
                  li           s0, 0x13b4f108
                  li           t2, 0x80000000
                  li           a3, 0xffffffff
                  li           a2, 0x80000000
                  li           s8, 0x80000000
                  li           s1, 0x80000000
                  li           s9, 0xffffffff
                  add          s9, s9, s1
                  lui          a3, 865481
                  nop
                  sub          s3, a1, t2
                  addi         s0, t2, 1527
                  sub          s3, s3, a2
                  auipc        a1, 554846
                  auipc        s1, 805604
                  nop
                  auipc        t2, 625984
                  add          s9, s0, a1
                  lui          s3, 112782
                  nop
                  lui          s9, 946523
                  add          s8, s1, t2
                  addi         s9, s3, -1047
                  lui          s3, 678433
                  auipc        s9, 826052 #end riscv_int_numeric_corner_stream_16
                  li           ra, 0xf31b608c #start riscv_int_numeric_corner_stream_10
                  li           a0, 0xffffffff
                  li           t6, 0x8e948cc
                  li           s0, 0xffffffff
                  li           s6, 0x80000000
                  li           s5, 0x0
                  li           s3, 0x34cc7f9d
                  li           t2, 0x41089dc
                  li           sp, 0x80000000
                  li           a2, 0xffffffff
                  nop
                  sub          t6, ra, s3
                  nop
                  lui          s6, 246020
                  lui          sp, 531585
                  sub          t6, s3, a2
                  add          ra, s0, a0
                  add          s0, s3, s6
                  addi         a2, a0, -1109
                  auipc        s3, 750620
                  lui          s3, 460002
                  add          ra, t6, t6
                  lui          s0, 974608
                  lui          sp, 692445
                  nop
                  auipc        a2, 706881
                  sub          s3, ra, s0
                  addi         s3, s6, 904
                  sub          s0, ra, a0
                  addi         s6, t2, 1030
                  nop
                  add          a0, s3, sp #end riscv_int_numeric_corner_stream_10
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           s9, 0x80000000
                  li           t2, 0xca207d2c
                  li           a6, 0xffffffff
                  li           gp, 0xffffffff
                  li           s1, 0xcb6a540c
                  li           a4, 0x0
                  li           ra, 0x0
                  li           t6, 0x80000000
                  li           a2, 0x80000000
                  auipc        ra, 640670
                  addi         gp, gp, 1356
                  auipc        s0, 684391
                  auipc        s0, 382876
                  nop
                  add          a4, a4, t2
                  sub          a6, ra, a4
                  auipc        t2, 953890
                  add          t6, a6, t6
                  nop
                  nop
                  nop
                  nop
                  nop
                  auipc        ra, 449934
                  add          s9, s1, a6
                  addi         a6, t6, -663
                  addi         a4, t2, 181
                  add          a6, t2, s0
                  lui          t6, 963793
                  lui          s1, 1031866
                  auipc        a4, 318397
                  add          s0, gp, t6
                  lui          gp, 904532
                  addi         s9, s0, 1346
                  sub          t2, gp, t2
                  sub          ra, a4, t6 #end riscv_int_numeric_corner_stream_12
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s9, 0x80000000
                  li           a6, 0xffffffff
                  li           a7, 0xffffffff
                  li           tp, 0xffffffff
                  li           s3, 0xffffffff
                  li           s1, 0xffffffff
                  li           a1, 0x0
                  li           a2, 0x8dda031f
                  li           s0, 0x0
                  addi         s0, s3, -1085
                  nop
                  lui          s3, 911865
                  add          a2, sp, s0
                  nop
                  addi         s9, a7, -1239
                  add          s3, a6, tp
                  add          a2, a6, a1
                  addi         a7, tp, 1534
                  lui          s3, 382740
                  nop
                  sub          a7, s3, a7
                  sub          a2, s1, s0
                  auipc        a6, 129854
                  lui          a6, 794817
                  addi         s1, s9, -1519
                  sub          tp, sp, s9
                  lui          a1, 923241
                  nop
                  auipc        tp, 752334
                  lui          s1, 19276
                  add          a2, tp, s3
                  lui          sp, 913215
                  addi         a6, a1, 842
                  auipc        s1, 787924
                  auipc        a6, 225485 #end riscv_int_numeric_corner_stream_19
                  li           ra, 0x4d8ced96 #start riscv_int_numeric_corner_stream_14
                  li           a5, 0xffffffff
                  li           t4, 0x80000000
                  li           a3, 0xffffffff
                  li           gp, 0x0
                  li           a7, 0x0
                  li           a1, 0x9121d205
                  li           tp, 0xffffffff
                  li           a0, 0x80000000
                  li           t1, 0xffffffff
                  nop
                  nop
                  addi         tp, a1, -1917
                  nop
                  lui          ra, 649808
                  nop
                  lui          gp, 108018
                  lui          a1, 710608
                  addi         gp, a5, -116
                  add          a0, tp, a5
                  nop
                  nop
                  lui          a5, 261880
                  nop
                  sub          t4, t4, a0
                  sub          tp, t4, t1
                  auipc        a1, 757294
                  add          a3, t4, t4
                  add          t1, t1, tp
                  add          a0, t1, gp
                  auipc        a1, 707906
                  nop
                  addi         t4, gp, 1416
                  auipc        gp, 370283
                  lui          gp, 250087 #end riscv_int_numeric_corner_stream_14
                  srai         a6, s0, 12
                  sltu         a4, s5, s9
                  lui          a3, 863685
                  slti         zero, t0, 218
                  ori          ra, t5, 1285
                  lui          s9, 460140
                  ori          t3, t0, -479
                  slli         a1, a2, 6
                  slli         s1, a7, 27
                  srli         t2, gp, 5
                  sll          zero, s0, tp
                  sll          t4, a1, s3
                  ori          s6, s9, -83
                  srli         t6, a1, 22
                  slt          zero, a4, t3
                  xori         gp, s11, -1109
                  add          t2, a7, ra
                  sltu         t1, s5, s9
                  sltu         tp, t5, a2
                  xori         s0, t2, -421
                  or           a5, a7, a5
                  lui          sp, 680425
                  addi         a2, s0, 510
                  ori          s4, s9, -198
                  auipc        t2, 10390
                  addi         t1, t3, 590
                  sll          t0, sp, a6
                  srai         a3, a2, 7
                  sub          t1, sp, a6
                  andi         s3, tp, -245
                  srl          zero, sp, zero
                  andi         a1, a7, -1577
                  xori         a7, t1, -739
                  srai         a3, t1, 9
                  sltiu        s8, s11, 965
                  lui          a2, 307159
                  slli         t4, a4, 10
                  srli         a0, a6, 6
                  ori          zero, a4, -558
                  xor          t3, s11, t0
                  or           zero, s8, s11
                  xori         a7, t2, -1141
                  nop
                  add          t2, s7, ra
                  or           a0, s1, s7
                  sra          t6, s10, ra
                  lui          t6, 113136
                  or           s1, s1, a0
                  sltu         a5, s4, a3
                  or           s4, s1, t3
                  nop
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           a0, 0x80000000
                  li           s0, 0x34e8db76
                  li           tp, 0x77ac052d
                  li           gp, 0x89854741
                  li           t0, 0x0
                  li           a1, 0x0
                  li           s1, 0x80000000
                  li           s7, 0xffffffff
                  li           s5, 0x80000000
                  add          s1, a1, s1
                  addi         tp, s1, 1384
                  auipc        a1, 1042243
                  lui          s6, 257612
                  lui          gp, 186655
                  nop
                  auipc        s1, 467983
                  lui          gp, 309986
                  auipc        s7, 622474
                  nop
                  lui          t0, 140352
                  sub          s1, s6, s5
                  sub          s6, tp, a1
                  sub          s7, a0, s5
                  nop
                  lui          s5, 898649
                  nop
                  addi         s0, t0, 124
                  addi         a1, a1, 1063
                  nop
                  nop
                  auipc        s5, 149305
                  auipc        s6, 302664
                  auipc        a1, 314516
                  nop
                  lui          s5, 14239
                  nop
                  auipc        s0, 141088
                  lui          a1, 295961
                  nop #end riscv_int_numeric_corner_stream_0
                  srli         s10, zero, 15
                  srai         gp, a4, 2
                  andi         t1, a2, 1594
                  sll          zero, t2, tp
                  and          a6, a6, a4
                  sltu         s9, t1, a6
                  ori          t3, t6, 1105
                  sll          s8, a2, t6
                  andi         a0, a1, -270
                  ori          s1, a4, 1138
                  xori         a0, t3, -1511
                  auipc        a7, 102984
                  xori         s10, a4, 889
                  andi         s10, a3, 341
                  lui          s0, 652677
                  nop
                  slt          a3, s5, a3
                  slli         a6, s8, 18
                  slti         a3, t3, 1561
                  xori         s7, s8, 1407
                  andi         t3, s4, 1702
                  xori         a0, a3, -863
                  auipc        t0, 706317
                  srl          t1, sp, t5
                  xor          sp, a0, s3
                  sltiu        a2, s6, -408
                  sub          s10, s0, s6
                  andi         zero, t5, 1078
                  slti         s1, t1, -823
                  ori          t3, a2, 562
                  and          s4, t5, s9
                  xor          a0, t5, s7
                  andi         tp, t3, -1495
                  lui          t2, 954446
                  srl          s0, s6, a5
                  auipc        s10, 279108
                  sltiu        a0, a6, 666
                  add          s9, s4, s5
                  srl          s7, s2, t0
                  sll          a2, a1, a5
                  addi         zero, ra, -245
                  sra          sp, tp, a6
                  slli         t3, s9, 23
                  xor          a5, s0, a0
                  auipc        a2, 596658
                  and          a2, a4, ra
                  srl          t4, s8, a6
                  srli         t6, t3, 11
                  sra          t0, t0, ra
                  slli         s8, a2, 26
                  lui          s6, 1017892
                  add          t0, tp, a4
                  or           s6, s11, s3
                  nop
                  nop
                  srli         s0, s7, 14
                  ori          t0, s4, -254
                  add          s8, a7, s2
                  or           s9, t0, s2
                  slt          t6, t2, s6
                  andi         a6, a5, 872
                  sltiu        a6, a4, -1757
                  slti         s1, sp, -1968
                  sll          t3, s2, t0
                  sltu         t1, zero, s7
                  sltu         a1, s11, sp
                  lui          s4, 634671
                  slti         a4, t6, 1088
                  slt          s6, s1, sp
                  sra          t2, a3, s6
                  addi         a7, a0, -151
                  andi         tp, zero, -146
                  or           t4, s8, a4
                  add          zero, s6, t0
                  srai         t4, s10, 19
                  add          s9, t3, s5
                  xor          s5, a7, s4
                  ori          a7, s3, 1418
                  sra          s0, gp, sp
                  auipc        a2, 305009
                  sltiu        s4, s1, 266
                  sltiu        tp, s4, -122
                  nop
                  sltu         a1, a1, a6
                  or           t1, a3, a0
                  addi         a4, t3, -1020
                  sltu         s4, t0, t2
                  srai         s6, s11, 8
                  and          a2, t1, a1
                  or           s6, s6, tp
                  sub          a0, s0, s7
                  ori          a7, a6, 316
                  srai         gp, ra, 21
                  srai         t1, a0, 11
                  addi         t3, s7, -1827
                  sltiu        s7, s2, 89
                  sra          a0, s11, a5
                  srl          sp, t3, zero
                  addi         t3, s9, 764
                  or           a5, t1, s8
                  xori         s10, gp, 1040
                  srai         t4, a0, 26
                  xor          s1, s10, gp
                  add          tp, s8, gp
                  sll          zero, t2, a7
                  xor          t0, a6, s3
                  sub          a4, s10, a7
                  addi         a6, t4, -1494
                  xor          s10, s0, t3
                  or           ra, a7, zero
                  or           sp, a1, s10
                  ori          s1, s8, -916
                  srli         t0, t1, 15
                  xor          tp, a0, a6
                  sltiu        s4, a0, 1365
                  srl          t6, t0, t0
                  addi         t0, a6, 297
                  nop
                  srai         t1, a6, 9
                  andi         s3, s8, 1686
                  srli         s7, sp, 23
                  andi         a5, gp, -300
                  and          s9, t6, s5
                  srl          t4, t3, s9
                  and          s9, s3, a4
                  andi         t6, s6, 10
                  andi         t6, s3, 981
                  slt          t0, a1, s10
                  auipc        a5, 390401
                  or           tp, tp, a1
                  sltu         t4, s4, s1
                  nop
                  ori          a1, s11, 1185
                  sub          a6, s1, tp
                  auipc        t4, 302728
                  sll          a5, s0, s11
                  andi         a0, ra, 179
                  srl          gp, t1, a3
                  slt          a7, a3, s7
                  srai         t2, sp, 3
                  slti         s9, s0, 318
                  xor          tp, s2, tp
                  sub          a3, s8, s4
                  and          a5, tp, a0
                  srai         zero, a1, 23
                  lui          a4, 763436
                  sub          s6, s6, a0
                  or           s6, a2, tp
                  srai         s6, t4, 11
                  sra          a6, t6, s5
                  lui          s1, 665381
                  sub          a0, t2, t5
                  auipc        a3, 767890
                  xor          a0, sp, zero
                  xori         t0, s11, 535
                  srl          a1, t1, s10
                  slt          s10, s9, a6
                  and          tp, t4, sp
                  nop
                  and          s4, s0, s6
                  sll          t4, gp, s4
                  srli         ra, s6, 20
                  sltiu        s7, a7, 1197
                  slli         t1, s10, 26
                  nop
                  slti         s3, a2, -788
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           a5, 0xc779e91
                  li           t1, 0x80000000
                  li           sp, 0x1408dd7
                  li           s3, 0x80000000
                  li           gp, 0x0
                  li           t2, 0x0
                  li           ra, 0x0
                  li           s10, 0x80000000
                  li           tp, 0x80000000
                  sub          t1, ra, s3
                  nop
                  lui          t2, 695165
                  lui          gp, 1036565
                  addi         gp, t0, 1097
                  nop
                  auipc        t2, 146424
                  sub          t2, s3, tp
                  sub          t1, ra, s10
                  nop
                  auipc        sp, 146800
                  addi         a5, t1, 550
                  lui          s10, 266253
                  addi         ra, sp, 1239
                  addi         t1, a5, -1312
                  nop
                  auipc        t0, 680779 #end riscv_int_numeric_corner_stream_7
                  srli         s1, gp, 26
                  slti         a5, t2, -314
                  sll          zero, s6, a1
                  addi         a2, ra, 1630
                  sll          s4, s8, t1
                  sltiu        s10, sp, 1325
                  slti         ra, t2, -89
                  slt          s1, s4, gp
                  xori         sp, s4, -1079
                  sra          a2, t1, a7
                  srai         t6, t6, 15
                  xor          s1, s7, a2
                  srai         s3, s10, 31
                  srai         a5, s1, 5
                  add          a2, t0, s5
                  add          s10, t2, a7
                  and          s8, s10, a4
                  srli         s9, t2, 30
                  add          t1, sp, s11
                  sltu         t3, s6, s1
                  sll          a0, sp, tp
                  xor          a3, s0, s11
                  slti         t0, zero, -201
                  slt          t6, zero, a4
                  sll          a2, s8, a6
                  slt          a2, a5, t3
                  or           t6, s3, a5
                  slt          a7, s1, s8
                  nop
                  sltu         a2, a4, s0
                  addi         ra, s11, -1125
                  xori         s1, t3, 414
                  addi         s5, t3, -1556
                  sltu         s3, a5, t4
                  sra          sp, s6, s5
                  slti         s4, s5, 680
                  sub          t4, s2, t6
                  andi         s1, s5, -555
                  or           ra, s3, a3
                  xori         s10, a1, 863
                  auipc        gp, 660185
                  and          sp, a2, s8
                  ori          a1, s2, -2034
                  sra          t6, t4, s6
                  add          gp, s0, a2
                  xor          s10, s1, gp
                  add          zero, a3, a5
                  addi         t3, s3, 1633
                  slt          s7, ra, zero
                  slt          s8, s0, a6
                  sltu         a7, s8, s8
                  sll          a3, sp, t3
                  srl          s9, s11, a6
                  auipc        s0, 50101
                  slt          a1, s10, t0
                  andi         s1, s4, -329
                  sll          s4, s4, s7
                  sub          t0, s10, t0
                  xori         s10, t5, -999
                  slti         s8, zero, 1605
                  nop
                  auipc        zero, 605030
                  xor          gp, s2, s6
                  addi         t6, s5, -1107
                  srl          zero, a7, s6
                  sltu         ra, t0, a0
                  slt          s0, a4, t4
                  slti         s0, a7, 1989
                  add          t0, a5, s7
                  slti         s4, a6, 2002
                  sra          sp, t2, a3
                  srl          s1, s10, s6
                  nop
                  sltiu        s8, t4, -961
                  xor          gp, t5, ra
                  addi         s3, t4, -1895
                  srli         a2, s9, 14
                  sltu         t0, s6, tp
                  add          s7, a1, sp
                  srli         t2, s7, 20
                  and          a0, s3, t2
                  srl          t3, t6, t0
                  slt          t3, t5, ra
                  sll          s8, a0, a4
                  srl          t3, t1, s5
                  sll          s0, a4, s3
                  add          zero, ra, sp
                  lui          s6, 677796
                  sll          a1, t5, s10
                  slli         s10, a7, 23
                  nop
                  srai         s4, t5, 29
                  sltu         s0, a2, a0
                  sub          a2, sp, s5
                  sub          t1, s0, s9
                  sltiu        t3, t4, -753
                  sltu         s5, s7, t5
                  and          t1, s10, s11
                  sub          s10, s1, a5
                  or           sp, zero, zero
                  srai         s9, t0, 17
                  andi         tp, a7, -233
                  sra          s4, s9, t6
                  sra          t1, s0, a2
                  addi         s10, a4, -143
                  xori         a5, a3, 498
                  sltiu        s10, s6, 464
                  slti         gp, s0, 903
                  auipc        s6, 469204
                  sub          a4, t3, zero
                  andi         s3, zero, -117
                  and          a7, s1, a6
                  xori         t3, s7, 1588
                  sltiu        t0, sp, -983
                  slti         s0, ra, 1562
                  ori          s4, s1, 1040
                  xori         t6, s3, 1129
                  lui          a6, 271100
                  ori          t2, zero, -1489
                  or           t6, a1, s10
                  or           s1, s3, a0
                  sltiu        a4, zero, 665
                  ori          t0, a2, -54
                  lui          t0, 208449
                  lui          s0, 931279
                  lui          a4, 421953
                  slt          s7, s9, s6
                  add          s9, a5, zero
                  srl          s3, a5, s4
                  add          a5, a7, a1
                  srl          s9, s4, s7
                  sra          s10, s2, zero
                  lui          a4, 549568
                  slt          a3, s11, s2
                  slti         t0, a0, -61
                  and          s5, t6, a5
                  sra          a1, tp, s3
                  slti         a3, a6, 822
                  xori         a1, t6, 235
                  or           s10, gp, t3
                  sll          t3, s9, t2
                  nop
                  xor          t3, a2, t0
                  xor          s5, tp, a7
                  srli         s6, t1, 8
                  xori         s3, a1, 203
                  ori          zero, sp, -1837
                  or           t2, s0, a7
                  srai         s5, s9, 4
                  auipc        tp, 1005624
                  addi         a3, a6, 1116
                  and          zero, s4, a4
                  andi         a1, s6, 1330
                  and          zero, a3, t5
                  addi         a4, s3, 1928
                  slt          t6, gp, t4
                  and          s10, ra, s10
                  slli         t2, s5, 0
                  srl          t6, t0, t0
                  slti         t3, s10, 1867
                  andi         a4, t6, -114
                  sltiu        t3, a2, -237
                  slt          a3, s6, t0
                  slli         s0, s9, 13
                  srai         a1, t1, 9
                  and          a1, t1, s9
                  srai         a2, ra, 29
                  sub          tp, ra, s8
                  ori          ra, s7, 1001
                  slt          t6, a3, s10
                  slt          t6, a4, a1
                  srli         a0, gp, 31
                  slt          s3, sp, s0
                  addi         s7, a5, 469
                  sltiu        s8, t2, 550
                  sltu         s0, s3, ra
                  xori         a3, s10, -2002
                  sll          a7, sp, tp
                  sltu         t1, a7, s0
                  slt          s10, sp, s2
                  sll          sp, s0, sp
                  ori          a3, s0, -107
                  srli         a5, t5, 5
                  xori         a3, s8, 870
                  ori          s9, ra, -930
                  sll          s8, t4, s4
                  lui          ra, 280316
                  xori         s5, zero, 2015
                  slti         s8, s8, -506
                  slli         a4, s3, 16
                  sltu         a6, s6, s8
                  slli         a5, t0, 16
                  srl          t1, s2, t4
                  slti         s5, a6, 1410
                  and          t0, t0, tp
                  lui          a6, 717506
                  sra          a5, a2, t0
                  addi         ra, s9, 975
                  ori          t4, s1, -1410
                  slli         s1, a2, 18
                  nop
                  sltu         a0, a6, a5
                  add          t4, t0, s0
                  lui          s8, 384080
                  andi         s5, t1, 659
                  slt          s0, t3, t3
                  add          a6, t6, t1
                  srl          t4, t4, t0
                  sub          s0, s9, s6
                  auipc        a0, 1045673
                  slti         s10, s10, -853
                  sra          ra, tp, s11
                  slti         a0, s8, -831
                  lui          s0, 1037316
                  sltu         s4, gp, zero
                  slli         tp, ra, 24
                  lui          a7, 299749
                  nop
                  slli         zero, a7, 12
                  sub          a1, t3, s9
                  ori          s1, zero, -974
                  sra          t3, s6, gp
                  xor          a6, a1, a7
                  or           s1, zero, s7
                  sltu         a0, s1, s5
                  slli         a0, t3, 30
                  sll          a1, a6, sp
                  srli         a7, s5, 13
                  srli         tp, s0, 25
                  srl          t1, t0, t1
                  sra          a6, s6, gp
                  lui          zero, 170766
                  sltiu        s6, s11, -524
                  lui          a2, 725306
                  andi         t1, a7, 1251
                  add          s9, t4, ra
                  and          gp, t3, gp
                  ori          zero, s3, -893
                  srai         t3, sp, 2
                  slt          t4, s7, s11
                  slt          s4, t1, t2
                  auipc        t6, 550725
                  slti         a4, s10, -22
                  andi         a2, s3, -120
                  sub          s8, s11, s3
                  andi         a5, s1, -1456
                  and          s4, a5, a5
                  andi         s8, tp, 574
                  xori         a3, s9, -2021
                  slti         t6, t6, -694
                  sra          sp, t0, s9
                  lui          t1, 430888
                  srai         s9, s0, 12
                  addi         gp, zero, -1452
                  slli         t6, a7, 7
                  auipc        s9, 389634
                  addi         a2, ra, 1233
                  srli         t6, t2, 16
                  andi         s10, s7, -545
                  xor          gp, t1, a3
                  srai         a7, a5, 15
                  srli         a7, a7, 9
                  add          t3, t4, s3
                  slli         t3, t2, 25
                  slt          sp, sp, s2
                  srl          a1, a3, t5
                  and          t2, t3, t1
                  srai         a0, s9, 5
                  slt          s4, t3, s8
                  xori         s5, s2, -1271
                  and          a0, s7, s8
                  or           a4, t3, s2
                  sltiu        t1, a1, 127
                  or           a3, a0, s11
                  srli         s6, a4, 13
                  ori          gp, a4, -1517
                  sltiu        t0, s10, -749
                  sltu         s6, t0, t1
                  srai         gp, t3, 20
                  slti         s1, ra, 610
                  sub          s7, t5, t6
                  add          s1, s9, s5
                  sub          s6, t0, t2
                  slli         s0, s9, 31
                  addi         s1, s1, 871
                  xori         s3, s4, -1442
                  xori         t2, s7, -675
                  add          a1, s8, ra
                  xor          a3, gp, t6
                  slti         t6, ra, 477
                  srai         sp, tp, 20
                  add          t4, s5, zero
                  and          a3, s2, t4
                  ori          t6, ra, 406
                  slti         t2, t0, -658
                  srli         s6, t2, 6
                  sra          t1, sp, s3
                  sltiu        a6, s6, -1464
                  sra          zero, t1, a6
                  xori         a5, a5, 1963
                  sra          s5, a0, t5
                  slt          s8, a6, a0
                  andi         t4, t4, -2027
                  slli         zero, s3, 13
                  and          s4, a7, t1
                  sll          a3, s9, t0
                  xori         s5, t0, 1922
                  sub          a3, t1, t0
                  or           a6, s3, a6
                  auipc        s8, 645577
                  xori         s7, t1, -869
                  xori         t6, ra, 339
                  srl          s0, a1, t6
                  srl          t2, t2, s9
                  ori          t3, a7, -1758
                  andi         zero, a5, -322
                  slli         s7, a2, 6
                  srli         a0, t4, 13
                  slli         s6, s10, 15
                  slt          t0, t3, s4
                  or           zero, t6, s1
                  slti         ra, s4, 895
                  or           zero, s6, s10
                  slli         a5, gp, 9
                  auipc        s9, 551408
                  sra          a5, t5, gp
                  ori          s10, tp, -934
                  auipc        a3, 748357
                  ori          a7, s8, 1940
                  xori         t2, t3, -1560
                  addi         ra, a5, 314
                  lui          ra, 689563
                  lui          a1, 295603
                  slt          s0, a0, gp
                  lui          sp, 493594
                  auipc        sp, 522868
                  andi         sp, a3, 34
                  sra          t1, s6, s2
                  xori         s0, t2, -241
                  slli         zero, t3, 23
                  slti         s1, ra, -60
                  or           a1, zero, s7
                  srli         t2, ra, 31
                  slt          s5, a0, a7
                  addi         s5, a2, 949
                  and          a0, a5, a0
                  add          a7, s2, a6
                  or           a3, s1, s4
                  sub          a4, a6, s3
                  or           s3, s8, a1
                  andi         a6, zero, -1716
                  or           t6, t4, t0
                  xori         zero, s6, 803
                  sltiu        s4, gp, -1729
                  andi         a2, s4, 1820
                  or           s5, a4, s1
                  xor          a3, s2, t4
                  auipc        t1, 130978
                  nop
                  lui          s10, 996823
                  slli         a6, s8, 1
                  srai         s5, s2, 5
                  lui          a4, 122807
                  srl          s1, gp, s8
                  srli         a2, s0, 5
                  sltu         t3, s1, s9
                  and          s4, gp, t0
                  sltiu        s10, s5, 217
                  and          s5, a2, sp
                  slti         s3, s9, -747
                  and          a5, t4, a5
                  srl          s0, t6, t6
                  lui          a1, 133722
                  sltiu        s10, t5, 828
                  slli         a2, a5, 12
                  sub          zero, a4, t2
                  xor          a4, s8, zero
                  lui          s7, 337751
                  andi         a1, a4, 836
                  ori          s4, a5, 224
                  nop
                  srai         t1, s6, 18
                  xor          s10, t5, tp
                  andi         s7, t1, -1894
                  slti         t0, s4, -339
                  add          s1, t1, a1
                  auipc        sp, 8034
                  sub          t2, t2, ra
                  lui          t6, 838225
                  and          t1, s11, zero
                  sltiu        s4, sp, -817
                  sra          t0, t6, gp
                  xor          s0, s2, s6
                  and          s8, a6, ra
                  srl          t3, gp, gp
                  sra          s1, s3, ra
                  nop
                  lui          t4, 239356
                  sltu         a5, t0, a1
                  srai         a6, t6, 20
                  sll          t1, tp, t4
                  sub          tp, zero, t3
                  sra          s8, t1, s7
                  sra          s8, a1, s9
                  sltiu        s7, s7, 405
                  lui          zero, 481522
                  sltu         s7, ra, a6
                  nop
                  addi         t2, s0, 407
                  slli         a5, zero, 16
                  andi         s9, gp, 294
                  sra          a0, s0, s6
                  srli         ra, a0, 21
                  srai         s3, s9, 4
                  srai         t0, t3, 0
                  xori         s5, ra, -1418
                  or           s10, a1, s7
                  nop
                  ori          a5, t6, -1290
                  xori         s4, s6, -274
                  slli         s4, t4, 8
                  srli         s1, s1, 7
                  srai         t3, s8, 26
                  ori          ra, t1, 1374
                  xor          s8, s7, s6
                  sub          a0, t1, s10
                  andi         a3, a3, 2004
                  sub          t1, s4, s3
                  srl          s5, s8, t5
                  srl          s5, a6, t4
                  srl          s0, s7, s11
                  srai         a0, s10, 24
                  slt          tp, a3, a2
                  sll          ra, s1, s1
                  sra          sp, s7, t5
                  nop
                  srai         s9, s8, 2
                  or           s10, s7, s6
                  add          a0, s5, ra
                  sub          s4, t0, s4
                  sltu         s3, s7, s10
                  and          gp, s1, t1
                  addi         s5, zero, -1330
                  ori          s9, s10, -979
                  sll          a5, t3, zero
                  nop
                  add          gp, s10, s0
                  sltu         t4, t5, t5
                  srli         zero, t0, 19
                  slti         s9, a4, 1716
                  srai         s10, a7, 1
                  andi         s10, s6, -1358
                  add          sp, tp, s7
                  slt          a2, a4, t3
                  xori         gp, t5, -1583
                  nop
                  srai         t0, a0, 0
                  auipc        t4, 178129
                  ori          t0, a7, -362
                  add          s6, s7, tp
                  slt          sp, t4, a3
                  sub          s4, a7, s0
                  sll          s1, t6, s4
                  xor          s0, s1, s3
                  srl          s3, s6, tp
                  xor          t0, t1, s2
                  srai         gp, s8, 19
                  ori          s10, a5, -816
                  lui          t1, 903703
                  slli         ra, s6, 3
                  ori          a7, t4, -346
                  or           s0, a1, t6
                  sub          t1, a2, s6
                  sltiu        t4, a6, -715
                  sll          zero, s10, a5
                  sltu         a3, gp, s0
                  and          s7, s7, s3
                  or           s9, tp, s9
                  xor          s10, t5, a2
                  ori          a7, a6, -1253
                  slt          a7, zero, sp
                  addi         a0, a7, 1537
                  slti         s4, s7, 909
                  add          t3, s1, a5
                  sltiu        t2, s5, -752
                  srl          s9, t4, a3
                  slti         s3, s3, -751
                  xor          s0, a1, s9
                  srli         s8, s4, 3
                  slt          s5, s1, ra
                  slt          gp, s8, s10
                  or           s7, s6, t5
                  add          t1, gp, s4
                  xor          s4, s0, a0
                  andi         s7, zero, 1840
                  addi         s8, s3, -1185
                  andi         s1, s4, 397
                  ori          gp, a6, -794
                  sub          ra, s9, s10
                  auipc        a0, 245061
                  auipc        sp, 388128
                  xori         s6, t2, -986
                  ori          s10, t6, 1245
                  slti         zero, a1, -1813
                  slt          t6, s6, s2
                  srli         a7, a4, 15
                  srl          t0, gp, s7
                  slti         s4, s5, -1029
                  sra          a0, gp, s8
                  or           ra, a7, a0
                  andi         t4, t4, -40
                  slti         a5, s6, 1281
                  addi         s10, t0, -441
                  add          ra, tp, s2
                  ori          t0, a2, 73
                  slli         s3, zero, 29
                  sub          t3, a2, a2
                  sra          s1, a3, t3
                  nop
                  and          t4, s9, a2
                  andi         t4, sp, 952
                  srai         s10, s1, 18
                  sra          t4, s6, s5
                  srli         s4, s5, 23
                  nop
                  auipc        a1, 563171
                  sltiu        a6, s1, -325
                  add          s4, a0, a2
                  and          t0, s0, s5
                  sltu         t1, t1, t1
                  xor          a6, ra, s2
                  slli         t4, a4, 13
                  sll          s8, t6, sp
                  sra          s1, s4, s9
                  slli         s0, sp, 16
                  srli         a3, t5, 5
                  slt          a7, a0, a3
                  xori         s3, s9, -1380
                  and          t0, s5, s11
                  sltu         s8, t4, s9
                  xor          a1, ra, s5
                  sltu         a1, a0, a4
                  srai         s7, t5, 24
                  add          s10, a0, s6
                  sltiu        s10, s7, -427
                  srli         t4, s0, 17
                  or           gp, t3, a5
                  or           s3, t1, gp
                  nop
                  slti         t6, a1, 953
                  xor          t1, s9, s8
                  xori         s9, s9, 1852
                  srl          a5, t4, gp
                  sra          a2, a2, tp
                  srai         t3, s7, 18
                  slti         s9, t5, 1130
                  srai         zero, a7, 26
                  srl          a5, gp, s10
                  sub          s6, t2, a7
                  slt          tp, t5, ra
                  andi         tp, a4, -901
                  srli         a1, t0, 19
                  xori         t1, a6, -975
                  xor          a1, t4, t2
                  sltiu        t0, s7, 891
                  sll          t4, a5, s2
                  lui          t0, 92857
                  ori          t6, s7, -488
                  slli         s7, a0, 30
                  addi         s5, s9, -14
                  nop
                  and          tp, sp, s8
                  sll          a7, sp, s6
                  sra          a4, s11, s3
                  nop
                  srai         a6, s0, 31
                  sltiu        s6, t5, -1497
                  lui          a1, 868824
                  xori         s0, s9, 78
                  sra          zero, a5, a2
                  andi         a2, a3, 1664
                  auipc        s7, 319952
                  addi         a6, ra, -803
                  srl          a4, tp, a2
                  srli         t3, t1, 1
                  sltiu        s9, t3, -196
                  nop
                  sltu         t4, t4, t2
                  slti         s3, s7, 120
                  srl          sp, s10, a5
                  xor          t0, s9, t3
                  sltiu        t2, a0, -1153
                  lui          sp, 671449
                  sll          a2, a6, ra
                  srai         a4, t0, 13
                  srli         t4, s4, 8
                  slt          s8, s2, s4
                  addi         s4, s5, -1657
                  or           t6, s5, t2
                  srl          a0, s11, s5
                  nop
                  andi         t1, gp, 1308
                  ori          a3, a4, -789
                  ori          s1, a4, 1419
                  sra          s7, a0, a1
                  xori         a4, t4, -620
                  nop
                  slli         a6, s9, 18
                  srl          s6, s0, zero
                  ori          t1, t6, -478
                  xor          s8, t0, s2
                  andi         s5, t6, 1457
                  or           a1, s4, t4
                  sra          t6, a7, s5
                  sra          s6, t1, s2
                  addi         t2, s3, 1395
                  nop
                  slli         s7, s5, 18
                  addi         sp, a3, 52
                  slti         zero, t2, -634
                  sll          tp, s7, a5
                  sub          a1, s8, s1
                  sra          a5, s0, s9
                  srai         a4, s9, 24
                  sra          t6, gp, t4
                  nop
                  xori         s5, t3, 283
                  ori          t3, sp, 183
                  srai         gp, t1, 28
                  srl          s7, ra, zero
                  ori          s7, sp, 1702
                  sra          s7, s0, t6
                  xor          t2, s8, a3
                  srli         s10, s6, 22
                  lui          s7, 664664
                  slli         a0, a3, 14
                  ori          t3, ra, 1423
                  slt          ra, a5, s2
                  or           a6, a3, a2
                  auipc        a3, 770006
                  slt          a4, sp, t2
                  sll          ra, s11, a3
                  auipc        a6, 645263
                  slli         a5, t4, 14
                  sltu         s10, t0, t5
                  srai         s0, s7, 16
                  sltu         s10, ra, s10
                  auipc        a6, 995305
                  sll          t6, a5, a7
                  srli         t2, a0, 23
                  or           s1, a0, s2
                  ori          t3, a2, 1371
                  nop
                  srai         t4, s8, 20
                  sra          t6, a0, a3
                  sltu         s9, s2, s11
                  ori          a7, a3, -803
                  and          a3, zero, tp
                  sub          s10, a7, t1
                  srli         a2, s0, 6
                  add          t4, a4, a5
                  xori         s1, t1, -1370
                  slt          t2, sp, t4
                  and          s7, a5, s9
                  srl          t2, s9, s11
                  sll          t6, s9, s3
                  slt          a6, s10, a5
                  nop
                  xor          a3, t5, a2
                  xor          a1, s5, a4
                  xori         t1, t2, 83
                  sra          s8, t6, sp
                  lui          zero, 586250
                  nop
                  lui          s6, 602967
                  srli         ra, s7, 28
                  add          s8, s5, a5
                  slti         t6, s10, 1476
                  srl          a5, a2, a6
                  nop
                  addi         a0, t2, 1624
                  slti         s6, t3, 617
                  auipc        a5, 31049
                  sll          t4, gp, zero
                  xori         ra, s0, 1262
                  and          t6, a6, s2
                  xor          t2, zero, t3
                  nop
                  or           t2, t1, t0
                  xori         s3, tp, 973
                  xor          s1, s5, s9
                  srli         s9, s9, 6
                  auipc        s3, 998517
                  sra          tp, s8, a0
                  sub          s1, t0, s2
                  andi         s10, s5, 1651
                  auipc        tp, 778979
                  sub          sp, a6, t3
                  sltiu        t1, s9, -1421
                  sltu         t6, tp, t0
                  sltiu        zero, t1, -2037
                  slli         s4, s10, 9
                  xor          s3, s9, ra
                  add          t1, s7, s0
                  srli         t2, s9, 1
                  sltiu        a3, s9, 1121
                  sra          t0, s11, t4
                  add          t0, s0, s5
                  srli         t0, a7, 6
                  srli         s3, t2, 6
                  ori          a0, t4, 969
                  sltu         t3, gp, a5
                  and          a1, s8, s8
                  or           a7, a2, tp
                  sll          a3, s2, ra
                  xor          t4, a7, t0
                  sltiu        t3, tp, -1637
                  auipc        s3, 290352
                  xori         t0, zero, 1994
                  lui          a4, 125631
                  sra          s3, t5, a0
                  and          a0, a3, zero
                  addi         a2, s11, -1502
                  srli         s8, t4, 22
                  sll          a1, a7, s0
                  sra          s0, a4, t6
                  srai         t4, t4, 3
                  slt          a1, sp, t3
                  xor          a3, gp, s1
                  slt          a0, s4, a0
                  srli         t4, s3, 1
                  sltu         s4, t2, a5
                  slli         s4, a2, 8
                  and          t4, a5, gp
                  srai         s4, a1, 19
                  sltu         s4, t1, s1
                  addi         s3, a4, 1431
                  srli         a7, a5, 9
                  sub          a4, t3, s7
                  add          tp, s1, tp
                  srl          s10, sp, s7
                  sll          s10, a7, a6
                  xori         s1, t3, 209
                  and          s8, t5, s10
                  andi         ra, s6, -1229
                  nop
                  auipc        s1, 557743
                  slt          a7, s7, s6
                  xor          a2, zero, s2
                  slt          a5, a6, tp
                  xor          ra, s10, a7
                  slti         a0, gp, 1937
                  sub          t2, s4, ra
                  or           s0, a4, a3
                  sub          s5, a5, zero
                  sltu         a3, s5, tp
                  auipc        t3, 65413
                  addi         t6, ra, -1755
                  srai         t0, s10, 0
                  add          s10, t1, t4
                  addi         s1, t3, 1378
                  xor          a5, t2, a5
                  sltu         a4, t1, s7
                  nop
                  sll          t1, ra, ra
                  srli         t2, sp, 26
                  or           a1, s11, a7
                  ori          a7, s3, -867
                  sltu         a1, t4, a6
                  srli         s6, zero, 28
                  and          a0, s6, s4
                  sub          t2, a4, s10
                  sra          a0, s0, a2
                  srai         s8, s11, 15
                  xori         s5, s9, 1695
                  andi         a0, s0, -152
                  sra          s4, s10, t0
                  or           s5, t1, t6
                  xor          t0, a0, a0
                  andi         s8, s7, 1206
                  srl          a7, a7, s4
                  srl          a7, s10, s11
                  srai         a1, a0, 4
                  sra          s4, t5, zero
                  and          a1, sp, s4
                  slli         a0, s5, 16
                  auipc        tp, 149110
                  slli         t3, tp, 9
                  srai         s5, a0, 16
                  nop
                  slt          s6, s4, t2
                  auipc        ra, 85408
                  sltiu        tp, s10, -1910
                  slli         gp, t6, 23
                  xor          t0, s4, a3
                  ori          s10, s11, 559
                  lui          t4, 715074
                  slli         s6, ra, 1
                  addi         t1, s2, 1090
                  and          s8, t2, t3
                  slt          t0, t0, s10
                  and          t0, a3, a4
                  slti         s1, s3, -1007
                  and          s10, s2, ra
                  slt          s4, t0, s3
                  xori         s10, s10, -75
                  nop
                  sra          s5, t0, t0
                  sra          s6, gp, a1
                  add          s1, t2, tp
                  andi         a1, gp, 1614
                  or           s6, s11, t6
                  and          gp, s5, t1
                  xori         s5, a2, 478
                  sra          a6, tp, s2
                  xor          s9, t2, a7
                  auipc        s1, 1025488
                  srl          s1, a5, s9
                  srl          a0, zero, a1
                  slt          a5, s4, s7
                  auipc        a4, 213666
                  auipc        s5, 746912
                  srli         sp, a1, 7
                  or           sp, s3, a7
                  slli         a6, s1, 18
                  addi         a7, t1, 1639
                  slli         s5, a5, 6
                  addi         a3, a0, -585
                  ori          s5, a2, -325
                  or           ra, t5, zero
                  sub          a2, s7, s1
                  andi         s3, a1, 568
                  sra          a6, t4, s11
                  slt          a7, a5, a7
                  slt          gp, t1, s5
                  slti         t0, s0, -831
                  add          s10, s8, t4
                  sltiu        s3, t4, -992
                  add          a7, a1, ra
                  srli         a2, t1, 15
                  srli         ra, sp, 24
                  ori          a4, a6, 1962
                  or           ra, zero, s6
                  slti         s3, a2, 1489
                  srl          s7, s4, t3
                  sltu         s0, t0, t6
                  lui          s0, 77155
                  ori          s6, s4, 1473
                  sltiu        t6, s6, 26
                  xori         s0, s7, 1377
                  slti         s0, tp, 870
                  slti         sp, t3, -1662
                  auipc        t1, 861564
                  xor          a5, s8, a6
                  srai         s3, a2, 2
                  or           a3, t3, a6
                  sra          a4, t2, a2
                  srai         a4, s0, 5
                  ori          zero, t6, 135
                  xori         a5, a0, -630
                  lui          t1, 725200
                  auipc        s4, 403392
                  sltiu        a1, a7, 668
                  slli         a3, s5, 8
                  xor          s10, t1, zero
                  add          s1, s4, s4
                  ori          s6, s6, -530
                  xor          a6, s5, a7
                  lui          s6, 575714
                  xor          s5, zero, s1
                  nop
                  auipc        s0, 377489
                  sra          t2, s2, t6
                  sub          a6, gp, t3
                  sub          zero, s7, s11
                  sll          sp, zero, a0
                  sltu         zero, t0, s6
                  nop
                  sub          a6, a1, t6
                  sltu         t4, a1, s4
                  add          a3, a4, s4
                  addi         a7, s10, -1701
                  slti         t1, s4, -187
                  auipc        t2, 64071
                  slti         t6, tp, -273
                  andi         s5, sp, 721
                  sll          t1, t4, s9
                  auipc        s9, 814527
                  sltiu        s7, t5, 766
                  auipc        s3, 501052
                  srli         sp, s1, 28
                  slt          s6, s10, s7
                  or           s4, s10, a1
                  nop
                  ori          s1, a5, -709
                  ori          a0, t2, 49
                  andi         t1, t4, 38
                  sub          ra, s10, a6
                  auipc        t6, 833873
                  xor          a3, a1, a2
                  nop
                  sra          s6, t6, s9
                  or           zero, a1, s3
                  sltu         zero, s10, s8
                  ori          s10, a2, 883
                  ori          s10, s8, 509
                  auipc        t2, 636646
                  slti         t2, t1, 807
                  slt          a0, s4, t6
                  xor          s0, a7, s4
                  srai         sp, s2, 27
                  nop
                  or           s8, s4, ra
                  or           t2, a3, a5
                  ori          s9, s9, 193
                  xor          a6, s5, a0
                  and          gp, s11, sp
                  lui          s6, 96952
                  srl          s0, s8, s7
                  xor          t3, s7, a7
                  auipc        a3, 57411
                  slt          t1, a3, t1
                  slt          a4, a2, s11
                  nop
                  and          a6, s3, t6
                  add          t3, a6, s10
                  or           tp, a3, s0
                  nop
                  sltiu        t3, tp, 1522
                  sra          ra, s7, gp
                  slti         s5, s11, 1421
                  auipc        a5, 113928
                  srl          a6, s4, s6
                  and          a0, s0, s4
                  sltu         gp, a2, s8
                  sll          s5, a5, t4
                  slli         a7, s7, 21
                  srli         ra, s1, 15
                  add          t6, s6, s4
                  or           s9, a3, t3
                  srl          s7, t3, s10
                  sra          t0, t4, t1
                  or           s0, a6, a0
                  srli         s10, s0, 31
                  nop
                  slti         gp, a7, 517
                  xor          t0, s3, tp
                  and          s6, a7, a5
                  lui          zero, 39720
                  sltu         sp, s9, s6
                  or           a0, t5, tp
                  sltiu        s3, s7, -533
                  srl          a2, tp, a4
                  sltu         s9, t2, s2
                  sll          s1, s5, s10
                  sll          s3, a2, t6
                  xori         a3, a5, 118
                  nop
                  sub          s8, tp, t4
                  slli         t2, t4, 16
                  srli         a1, s9, 24
                  lui          a5, 896527
                  and          tp, s6, a7
                  srai         s3, s4, 13
                  slti         t2, s0, -572
                  and          s9, a3, sp
                  lui          s8, 973774
                  add          s1, t2, a6
                  xori         a6, a4, -1834
                  lui          a3, 667550
                  sltu         a6, t3, a1
                  slti         s0, a6, -506
                  andi         s1, a2, 2011
                  srl          zero, s2, s0
                  nop
                  srli         a7, a0, 1
                  auipc        t1, 795091
                  srl          a6, a1, t2
                  add          zero, s4, ra
                  sltiu        t1, a5, -229
                  srl          s7, a5, a1
                  auipc        sp, 204845
                  nop
                  srai         s8, s8, 18
                  sra          gp, a3, sp
                  ori          sp, t1, -896
                  srli         a2, t5, 28
                  srai         ra, a1, 24
                  sltu         t1, s3, s4
                  sub          s9, sp, s3
                  slli         a3, ra, 0
                  add          a3, s6, tp
                  srl          t1, a4, sp
                  andi         s9, s9, 1235
                  xori         t3, a7, 1256
                  sll          a6, s9, s0
                  nop
                  and          t3, a1, s6
                  sltiu        s8, s1, -478
                  nop
                  sltu         a4, t4, sp
                  srai         t6, s0, 26
                  xor          s8, a3, s9
                  or           ra, s3, t4
                  xori         s5, s1, 1532
                  srai         s3, t2, 4
                  or           a7, a6, s5
                  sltiu        t2, tp, -818
                  xori         s8, s10, -849
                  ori          s10, s4, 133
                  andi         a4, t6, -10
                  ori          ra, t6, -465
                  xori         t0, s0, 986
                  or           t0, s3, a7
                  lui          s0, 397023
                  lui          a4, 260044
                  srl          a6, t3, a2
                  srli         a3, t3, 17
                  andi         s9, a4, 1366
                  slli         s10, a0, 13
                  add          t4, s2, zero
                  slti         a1, a5, 1359
                  auipc        a5, 912032
                  xor          a5, s7, s6
                  auipc        s7, 911717
                  slti         s4, gp, 1012
                  xor          s5, t1, a3
                  xor          s1, a5, zero
                  nop
                  add          s4, s9, s4
                  auipc        t0, 506231
                  andi         t2, s11, 887
                  add          tp, t6, gp
                  li           t6, 0x99d91308 #start riscv_int_numeric_corner_stream_1
                  li           a4, 0x80000000
                  li           s7, 0x0
                  li           s5, 0xffffffff
                  li           s8, 0x0
                  li           a5, 0x0
                  li           a0, 0xffffffff
                  li           t2, 0x0
                  li           a2, 0x0
                  li           s0, 0xffffffff
                  auipc        a4, 903349
                  sub          s7, s7, t2
                  auipc        a0, 494917
                  lui          t2, 441587
                  lui          a0, 648764
                  sub          a0, t6, a5
                  lui          a2, 207027
                  addi         t6, s8, 1132
                  auipc        a2, 69001
                  add          a2, s5, s7
                  lui          s0, 786137
                  nop
                  nop
                  add          s7, s8, a2
                  sub          a2, a2, s5
                  sub          s7, a5, s5
                  sub          s0, t2, a0
                  auipc        s8, 281771 #end riscv_int_numeric_corner_stream_1
                  srl          s9, s1, a3
                  slti         a6, tp, -797
                  slt          a4, t6, a3
                  nop
                  srl          s6, s11, t1
                  slti         sp, t6, 421
                  addi         gp, a0, 332
                  sra          s4, t3, a4
                  sll          a6, a5, s3
                  srai         s8, a5, 28
                  addi         t6, a0, 1084
                  lui          a1, 281708
                  addi         ra, s7, 1381
                  xori         t6, s9, -1004
                  srli         t6, s5, 23
                  xor          a0, t2, a7
                  or           s0, s6, a4
                  srai         s0, a1, 11
                  slt          s10, s0, t5
                  slti         ra, a7, -1387
                  sltiu        s0, s6, -1209
                  ori          s7, t5, -565
                  sltu         t4, a5, a1
                  slli         ra, s9, 11
                  nop
                  xori         s0, s11, -995
                  and          gp, a6, s6
                  xor          s0, s6, s4
                  slt          s7, gp, s4
                  srai         s7, a4, 2
                  srl          tp, s6, t1
                  addi         a1, s5, -1284
                  sltiu        a2, t6, 910
                  slli         s4, zero, 5
                  slt          a4, s9, t0
                  sll          a0, s11, a1
                  srl          a5, s7, s9
                  slti         s10, s4, 101
                  slt          t1, a6, a0
                  sltu         zero, ra, a4
                  xor          a5, s0, a0
                  slti         a4, zero, 1465
                  sub          a6, a4, a1
                  sra          s1, a5, a0
                  ori          s3, a4, -1254
                  add          s5, a4, a0
                  nop
                  and          a7, ra, t0
                  sub          t2, a0, a1
                  slt          a5, t2, s1
                  ori          s0, s5, 1612
                  lui          s4, 59619
                  andi         a3, s3, -1504
                  add          a5, s0, s10
                  sltu         s0, sp, a4
                  sra          t0, t3, t4
                  and          a5, s0, a0
                  xori         t1, gp, -1585
                  add          s6, s6, s6
                  slt          s3, gp, s1
                  sub          s10, s8, s7
                  srai         a7, s5, 16
                  andi         s6, ra, -521
                  sub          t0, t5, s6
                  sltu         s10, t5, s4
                  ori          tp, t4, 1174
                  srai         t1, s0, 21
                  slt          s10, t4, s4
                  sltiu        a7, a3, 85
                  add          t6, s1, a7
                  slt          s9, a3, t2
                  slt          s4, a7, a1
                  xor          gp, gp, t0
                  slti         t4, a6, -310
                  auipc        t0, 1024557
                  sll          a6, zero, t6
                  or           s4, t3, s4
                  addi         a7, s8, -1309
                  nop
                  auipc        t1, 307838
                  srai         tp, s7, 30
                  xori         s9, s3, -868
                  sltiu        a3, s2, 1000
                  andi         t1, s8, -1595
                  and          a7, s7, a3
                  sltu         gp, t3, a0
                  srl          a1, t4, s9
                  andi         gp, t0, -326
                  srai         s4, a3, 16
                  lui          tp, 474360
                  xori         t0, t4, 583
                  nop
                  sltiu        zero, s4, -981
                  slti         s0, s3, -1158
                  slli         gp, a4, 13
                  sll          a0, s1, sp
                  srli         t4, tp, 24
                  sltiu        ra, a7, -267
                  xori         ra, a3, 1312
                  srai         t0, s5, 3
                  auipc        t2, 755530
                  auipc        t2, 725736
                  sub          s9, a1, a6
                  xor          a2, ra, s11
                  nop
                  ori          t4, tp, 434
                  slti         s8, s1, -940
                  nop
                  slt          s4, a5, s6
                  ori          a0, a1, -911
                  lui          a1, 657938
                  add          t4, s7, sp
                  add          a4, t4, s1
                  addi         t6, s8, 1903
                  xori         a1, a2, 605
                  slli         t0, a2, 31
                  and          t1, a3, s10
                  ori          a4, s5, -1595
                  slt          a3, a2, s5
                  srai         s6, a3, 3
                  sra          sp, s5, ra
                  slli         s4, t5, 11
                  sra          s3, s11, s4
                  sll          zero, t6, a6
                  srl          s9, ra, t2
                  sltiu        s3, a0, 950
                  nop
                  and          s1, t5, s9
                  and          a2, s10, a7
                  and          sp, a2, zero
                  sltiu        s9, a3, 1738
                  and          a4, s9, s0
                  sub          ra, s8, s11
                  srli         s4, s4, 15
                  sra          a2, a5, s10
                  auipc        s3, 887551
                  and          s7, a5, t3
                  slti         s6, a3, -1574
                  xor          s3, s6, a6
                  xor          zero, s2, s0
                  ori          s4, t1, -173
                  and          t1, a1, s9
                  srai         a0, s8, 25
                  auipc        t6, 679619
                  srli         sp, s3, 16
                  sra          tp, t2, t5
                  sub          s1, zero, t6
                  slti         t2, sp, 1091
                  addi         t3, s9, -1832
                  or           s4, t5, t4
                  srai         s3, s3, 20
                  slti         zero, s2, -1691
                  and          a3, s6, a6
                  ori          a4, s5, -1856
                  srai         t4, s2, 9
                  lui          t4, 823535
                  xori         s5, t0, 494
                  sub          t4, sp, s3
                  sub          tp, s10, s5
                  addi         a4, s5, 1217
                  xor          gp, s7, s1
                  ori          gp, s2, 1674
                  srli         s4, s11, 23
                  lui          s7, 961401
                  sltu         tp, s3, t4
                  or           zero, s5, s10
                  lui          a6, 708556
                  srai         a4, t2, 7
                  slt          a7, s1, s1
                  xor          s5, s1, ra
                  addi         ra, ra, -1111
                  auipc        a5, 934375
                  xor          s5, s9, sp
                  sub          s3, t3, t0
                  srli         t6, tp, 30
                  auipc        t2, 622106
                  ori          tp, t2, 1535
                  sll          zero, a7, t5
                  lui          t2, 1031583
                  andi         t4, a3, -1979
                  auipc        t4, 727951
                  srl          s3, gp, a7
                  andi         sp, a3, -1923
                  xori         t2, s6, -1797
                  andi         a0, a7, 1444
                  srli         s8, t1, 17
                  sltu         a2, zero, a1
                  and          a3, a1, a4
                  ori          s8, tp, -1636
                  xor          a4, t5, s2
                  nop
                  or           tp, s4, t0
                  srai         s10, s5, 2
                  slti         s0, s0, 1896
                  srli         tp, t5, 16
                  srl          a3, s1, t3
                  xor          a6, s1, s6
                  add          s7, s9, s2
                  ori          s10, t1, -849
                  ori          t1, t5, -1401
                  and          t6, s9, a5
                  sltu         t2, s3, a3
                  sltu         a5, t2, s7
                  nop
                  slli         a6, s1, 7
                  slt          tp, s7, a6
                  nop
                  slti         ra, a7, -167
                  srai         s7, sp, 19
                  slli         a5, s11, 25
                  and          tp, s3, gp
                  srai         t0, s7, 30
                  auipc        zero, 255134
                  sub          a3, a6, a7
                  lui          a2, 673048
                  lui          s4, 399052
                  slli         s5, t0, 26
                  sltu         a6, sp, s4
                  ori          t1, a4, 1984
                  sll          s3, a4, a2
                  lui          s8, 733936
                  auipc        s3, 494361
                  srl          s0, a2, sp
                  srli         a3, a3, 0
                  auipc        a3, 958477
                  slti         s7, a3, -253
                  sub          s6, a3, zero
                  sltiu        s3, a0, -992
                  srai         s7, s0, 28
                  slti         zero, sp, 1231
                  slt          s3, a6, t4
                  and          zero, s11, a3
                  slt          t1, s9, t6
                  ori          a6, t5, 788
                  or           s6, a3, s7
                  lui          s9, 870701
                  sra          t1, t6, a2
                  sll          a0, a5, sp
                  sra          s4, zero, zero
                  srai         s6, t5, 12
                  xor          s10, s10, s9
                  srl          a6, s1, s4
                  andi         t3, s4, 1489
                  srai         a3, s4, 22
                  slti         s6, s9, -518
                  sltiu        t6, s1, -42
                  srli         s0, a5, 10
                  nop
                  ori          a4, t4, 1240
                  addi         t2, sp, -312
                  add          s4, a5, s1
                  add          s6, s5, t1
                  sub          zero, ra, ra
                  sll          ra, t6, s8
                  andi         gp, t5, 325
                  and          a7, s11, t3
                  sub          t1, a3, a2
                  ori          t0, a1, 500
                  add          gp, t3, t1
                  auipc        t2, 141896
                  slti         t0, a6, 1336
                  xori         a2, gp, -546
                  xor          a3, a7, s5
                  sll          s4, t4, tp
                  and          t0, a3, a6
                  nop
                  srl          s7, t0, t2
                  ori          a2, t6, 1753
                  and          a7, sp, tp
                  auipc        tp, 206166
                  sltu         a2, gp, s10
                  sltiu        s9, t0, 1683
                  sra          s6, s3, a3
                  add          a4, t5, s5
                  sll          t3, t6, a5
                  slti         s9, t2, 985
                  srl          s3, t6, s3
                  sra          s8, t5, s3
                  addi         a3, gp, 156
                  addi         sp, t2, -1962
                  andi         s6, t4, 1694
                  sub          s0, s5, t2
                  sll          sp, s6, a6
                  nop
                  sra          a0, s8, a1
                  xori         a3, s0, 1721
                  sub          s10, s11, s6
                  ori          a5, zero, -1204
                  srl          gp, s0, s5
                  sub          tp, s9, t0
                  addi         a7, s6, 585
                  sll          tp, s3, ra
                  srl          s9, t4, ra
                  auipc        a6, 594928
                  add          t0, a7, a3
                  srli         t2, t5, 5
                  or           ra, t4, s11
                  add          zero, s0, gp
                  sltiu        s10, s7, 1242
                  addi         t4, s7, -1305
                  xori         s8, t6, 1359
                  sltiu        a5, s4, 1530
                  xori         s10, s8, 1771
                  sll          a1, s0, a3
                  sra          s1, sp, s0
                  slt          s9, tp, a7
                  or           a4, a3, t4
                  slt          s6, zero, s1
                  sll          t4, s7, t6
                  srai         gp, a2, 9
                  sltiu        a7, gp, 1947
                  xor          s8, s5, t6
                  lui          a0, 811235
                  and          s1, t5, t5
                  sltiu        s5, s10, 219
                  srli         s3, ra, 0
                  srai         s3, t2, 13
                  ori          s4, t4, 413
                  sltu         a0, gp, a1
                  sra          s4, ra, a4
                  nop
                  srl          a0, t4, t5
                  addi         t4, s11, -331
                  andi         a3, gp, 752
                  sll          ra, s4, zero
                  add          sp, s0, s7
                  auipc        a3, 936293
                  srai         t4, s6, 31
                  sltu         gp, a4, t0
                  nop
                  xori         s3, s5, -2029
                  sltiu        tp, s1, 125
                  sltiu        a7, t4, -32
                  ori          s4, s0, 1222
                  sll          s1, s8, ra
                  slt          s4, s6, s10
                  lui          s9, 623770
                  srl          tp, s4, s5
                  auipc        a4, 428504
                  slli         s9, s10, 0
                  sub          s5, a7, a0
                  add          a7, s1, t1
                  nop
                  srl          s5, s5, s10
                  nop
                  sub          a5, a3, t2
                  sltiu        t6, zero, 241
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           sp, 0xffffffff
                  li           t0, 0x0
                  li           s8, 0x0
                  li           s1, 0x0
                  li           t2, 0xffffffff
                  li           a6, 0x0
                  li           t4, 0x0
                  li           t3, 0xec16b102
                  li           s5, 0x550f71cc
                  add          s8, t4, t2
                  add          t2, s8, t2
                  sub          t0, t0, sp
                  addi         t2, s8, 420
                  auipc        a0, 388521
                  sub          s8, s8, s8
                  addi         s1, t2, 871
                  auipc        a6, 227263
                  sub          sp, s8, s1
                  addi         t4, t2, 1410
                  add          s5, t4, a0
                  sub          s5, s5, t0
                  lui          s8, 525129
                  lui          s8, 101429
                  lui          s5, 661775
                  nop
                  sub          a6, sp, t3
                  addi         s1, s1, 1235 #end riscv_int_numeric_corner_stream_17
                  sltu         a6, t4, s8
                  addi         s7, tp, -675
                  sltiu        a4, t5, -1864
                  sub          s9, s4, s2
                  srl          gp, t6, s0
                  addi         s1, s2, 796
                  sra          a2, a3, t5
                  or           t6, a6, s10
                  slli         a5, sp, 21
                  xor          ra, s5, s6
                  add          t6, sp, s9
                  lui          a0, 580108
                  add          s7, zero, s7
                  xor          t2, s1, a7
                  and          t2, s10, s4
                  andi         sp, s5, -668
                  sub          s6, s8, s6
                  add          ra, t4, t1
                  sll          gp, a4, a2
                  slli         s9, t0, 28
                  or           s8, t1, a4
                  sra          s7, s0, t3
                  slt          a6, tp, s1
                  sra          s4, sp, a1
                  sll          s8, s7, t3
                  sltiu        s6, s0, 1146
                  srli         ra, zero, 24
                  sll          sp, sp, a4
                  srl          s9, a5, s6
                  srai         s9, s2, 6
                  sltiu        s5, zero, 440
                  nop
                  srai         a2, s6, 8
                  or           t2, s5, s1
                  srli         t0, ra, 26
                  sub          t0, a6, sp
                  auipc        t3, 205574
                  sll          ra, s2, t2
                  srai         t4, sp, 30
                  sub          t4, s1, s11
                  and          ra, zero, a4
                  add          t0, t5, s4
                  slt          a5, s10, a4
                  srli         ra, t5, 27
                  add          s8, s9, s7
                  xori         a6, s5, 1329
                  sltiu        s8, s3, -222
                  slt          a6, t1, t5
                  ori          a5, a3, 1340
                  sltiu        s6, s11, 866
                  slti         s6, s5, 97
                  srai         gp, a3, 4
                  or           a0, a5, sp
                  xori         t0, zero, -1417
                  slli         a0, a6, 3
                  ori          s8, t1, -1293
                  ori          a4, s3, -1446
                  lui          a5, 650665
                  sub          sp, s8, tp
                  sub          tp, sp, a7
                  and          a0, t2, t0
                  sub          s1, a4, t0
                  srai         a6, a1, 26
                  xori         a7, sp, -661
                  auipc        s1, 683566
                  auipc        t4, 271260
                  sltiu        a3, a4, -832
                  nop
                  lui          s4, 99785
                  srl          a1, s9, zero
                  and          gp, t0, s9
                  addi         s10, s6, 326
                  slt          t6, s6, a7
                  sll          a7, t2, t0
                  slli         ra, s8, 23
                  sll          s10, a1, a5
                  addi         s8, s7, 726
                  sltiu        s4, gp, -1942
                  sra          s5, zero, s9
                  xori         a6, gp, -2019
                  sltu         t2, sp, gp
                  lui          t6, 139024
                  and          s7, a1, a7
                  slti         a0, a0, 1829
                  xori         s4, gp, -1019
                  ori          gp, s6, -707
                  addi         s7, a0, -1606
                  or           zero, s1, s10
                  sra          t2, t1, s10
                  add          s6, a7, a3
                  nop
                  xori         tp, s5, 959
                  nop
                  srli         s0, s1, 18
                  auipc        s5, 56668
                  or           s6, gp, a5
                  xor          a5, a7, t1
                  nop
                  srai         s7, s7, 4
                  xori         t6, s5, -1068
                  sltu         s10, a0, a7
                  and          a4, s9, a0
                  sll          s3, t0, s3
                  nop
                  and          s4, a5, s10
                  sltiu        a3, s9, -1343
                  sltiu        s5, t4, -1219
                  or           t2, t0, a0
                  sll          a7, tp, s5
                  sltu         s8, sp, a3
                  or           ra, a1, s10
                  ori          t3, t5, 1666
                  sra          sp, s2, tp
                  add          sp, s6, s11
                  ori          s1, t3, 2037
                  ori          t2, s5, -881
                  sra          s6, s11, a0
                  andi         a2, s3, 1638
                  nop
                  sll          t2, a4, a5
                  sub          sp, s3, s10
                  andi         t0, a3, 1222
                  xor          ra, s4, a0
                  slt          sp, s3, ra
                  add          tp, zero, t6
                  auipc        gp, 203313
                  slli         s1, s9, 5
                  sra          a0, s6, s1
                  auipc        a1, 141907
                  slt          a6, s6, sp
                  srl          s6, zero, s10
                  xor          s10, s3, s11
                  xori         gp, t4, -1431
                  slli         s9, s7, 15
                  and          s4, a3, s7
                  ori          a1, a6, -1660
                  slti         a2, s6, 1827
                  xori         t0, s0, 1602
                  nop
                  lui          s0, 134127
                  srli         tp, s7, 14
                  srl          t6, s11, s11
                  andi         s6, t2, -342
                  or           t2, s8, a7
                  addi         a2, a2, -84
                  srli         a0, zero, 0
                  xori         a4, a5, 684
                  nop
                  add          a5, s1, ra
                  srli         a6, t3, 27
                  sub          a4, t3, a2
                  auipc        gp, 70966
                  xori         t2, t5, -1714
                  or           ra, gp, a3
                  or           t2, tp, s6
                  and          s9, a1, a3
                  or           s1, s9, t2
                  xori         s5, s8, 287
                  sll          a4, s4, s1
                  addi         s8, s11, -840
                  srai         t6, s2, 17
                  sub          a1, gp, a4
                  ori          s5, tp, 305
                  slt          a7, t4, t1
                  auipc        a3, 85515
                  and          tp, s3, s8
                  sltiu        a4, s6, -757
                  nop
                  sra          s1, a7, a1
                  srl          t3, t0, a0
                  slti         t4, a3, 156
                  sll          t0, a7, s10
                  slti         t0, t6, 1752
                  sra          t2, gp, s3
                  auipc        s6, 695571
                  xori         s5, s10, 820
                  sra          t4, s10, t0
                  slti         a7, s0, -494
                  sub          a3, a6, s2
                  slt          a5, t1, tp
                  add          t6, s9, a6
                  srl          t3, a3, t3
                  or           sp, s1, t4
                  slti         t1, a0, 1058
                  srai         s10, a0, 13
                  srli         gp, s9, 26
                  nop
                  and          s4, a4, s11
                  sll          a1, t3, t0
                  sll          tp, a1, s9
                  sltiu        t4, s0, 2046
                  addi         a4, t2, 1456
                  li           t4, 0x54015219 #start riscv_int_numeric_corner_stream_4
                  li           t1, 0xffffffff
                  li           a1, 0x0
                  li           tp, 0x80000000
                  li           s9, 0x15388d63
                  li           a5, 0x80000000
                  li           ra, 0xffffffff
                  li           a4, 0x80000000
                  li           a7, 0xdbd12fba
                  li           gp, 0x0
                  addi         a5, gp, -593
                  addi         tp, gp, 45
                  add          a4, t1, a7
                  auipc        tp, 341725
                  sub          a5, a5, t4
                  add          ra, ra, t1
                  addi         a1, t1, 968
                  lui          a4, 99826
                  nop
                  addi         t1, a7, -632
                  sub          t1, a7, ra
                  sub          a1, a5, a1
                  auipc        a7, 245395
                  add          gp, ra, a7
                  add          a5, tp, a1
                  lui          a1, 216992
                  nop
                  auipc        a4, 945346
                  sub          a7, a4, tp
                  lui          ra, 214789
                  add          s9, a4, a1
                  lui          t4, 435690
                  addi         a4, t1, -1042
                  nop #end riscv_int_numeric_corner_stream_4
                  slli         zero, t0, 20
                  sltiu        a1, s1, -486
                  addi         t3, t4, 894
                  sra          s7, s4, ra
                  sltu         s9, sp, t6
                  xori         s3, zero, -1823
                  and          sp, s4, s6
                  add          s3, s9, t4
                  srli         s9, t2, 25
                  sltu         s3, s4, a5
                  srai         t2, a0, 19
                  sra          t6, a0, a0
                  sra          a5, t3, tp
                  andi         s10, t1, -602
                  sltiu        a6, a7, -107
                  auipc        t4, 269519
                  andi         sp, a4, 1213
                  sltu         a1, s9, s7
                  auipc        s3, 239037
                  addi         s6, t0, -44
                  xor          s5, tp, s11
                  slli         s9, ra, 29
                  xori         zero, a6, -285
                  sra          t2, a4, tp
                  sra          gp, a7, sp
                  srli         s8, a3, 12
                  slt          s4, gp, s2
                  slti         s10, s8, 724
                  slli         s6, tp, 12
                  srli         s1, t2, 5
                  add          t3, s9, s6
                  addi         s9, t6, 1695
                  andi         tp, s11, 1734
                  andi         tp, s3, -1763
                  ori          s3, s10, 1332
                  sltiu        sp, t6, 608
                  sll          t1, s1, t1
                  xori         s4, s2, -394
                  srli         s6, s5, 10
                  srli         t4, a0, 21
                  sra          s0, s0, s8
                  or           ra, s0, t4
                  sltu         s6, s11, s5
                  xor          a1, s0, s1
                  sub          zero, s4, t3
                  lui          s6, 871309
                  xor          s0, ra, s4
                  or           s1, t3, s11
                  auipc        s8, 540770
                  sltiu        s0, s10, -1571
                  sltiu        s3, t2, -1827
                  srai         s10, a1, 15
                  ori          s3, s1, 1385
                  sra          a3, a6, s10
                  sll          s9, t2, s4
                  sltu         a4, a5, zero
                  or           s1, s1, t5
                  sub          a1, a6, zero
                  and          tp, zero, s4
                  nop
                  sub          s4, a5, t3
                  nop
                  andi         a3, s7, -1054
                  lui          s0, 562994
                  add          a3, t4, s3
                  ori          sp, s6, -794
                  sltu         s1, t5, s5
                  nop
                  andi         s3, t2, -1085
                  addi         s3, tp, -335
                  sll          a5, gp, a7
                  nop
                  xori         s7, gp, -809
                  andi         a5, a1, 998
                  lui          gp, 305625
                  sltu         a0, t2, tp
                  srai         sp, t4, 20
                  sra          s7, t1, sp
                  add          sp, gp, s5
                  addi         a4, a4, 40
                  nop
                  sltiu        ra, t6, -814
                  sub          s8, s0, a4
                  ori          s7, a1, -5
                  xor          a3, s10, tp
                  sra          s6, t2, s11
                  ori          ra, t4, -1396
                  srl          t3, s1, tp
                  nop
                  sra          s10, s5, s3
                  sltiu        s9, s9, -1208
                  sub          s10, t1, s11
                  ori          s1, a1, 1678
                  slti         a5, s5, 1211
                  and          s5, s1, s8
                  slti         t2, s5, -390
                  and          a7, sp, t5
                  or           gp, s1, gp
                  ori          t3, s6, 136
                  sltu         s3, t4, a4
                  sub          a4, a7, s1
                  add          a0, a4, s0
                  add          s8, a7, s0
                  slti         s10, zero, 1160
                  xori         s3, s0, 453
                  slti         s4, t3, 293
                  nop
                  or           a1, gp, a0
                  srai         s6, s1, 26
                  andi         t4, t5, -488
                  andi         a2, t3, -1601
                  sltiu        a7, s6, -465
                  sll          a1, t2, t0
                  sub          a0, sp, t0
                  xori         s8, a1, 1515
                  slli         t3, sp, 14
                  or           s5, tp, s7
                  or           a4, a7, sp
                  srl          a7, a0, t1
                  sub          s4, s5, t2
                  srai         t6, a0, 2
                  sltiu        s0, s9, 1212
                  slt          t0, a1, ra
                  andi         gp, s6, -453
                  slti         s1, s1, -1001
                  add          s9, a3, s0
                  nop
                  nop
                  ori          zero, s4, 635
                  and          ra, a6, s1
                  srli         a7, s1, 22
                  andi         s8, a1, 622
                  andi         a6, tp, -940
                  slti         a0, s11, 2001
                  sltiu        s6, t4, -1503
                  sub          a2, s9, t5
                  lui          a1, 199934
                  srai         a3, ra, 28
                  auipc        a1, 69556
                  xori         s9, s0, -835
                  sra          s8, sp, s4
                  xor          a6, s7, t6
                  lui          s9, 501641
                  sra          t1, a5, s9
                  slt          a3, a0, a4
                  auipc        zero, 688711
                  sltiu        a2, s2, 354
                  and          s3, ra, t0
                  sltu         t1, a7, a0
                  addi         a2, s7, -1493
                  srli         a0, t4, 28
                  addi         a6, a6, 1282
                  xor          a3, s4, ra
                  sltiu        t1, tp, -742
                  and          t0, a7, t0
                  slt          s0, t0, s4
                  nop
                  sra          a1, s6, a2
                  sll          t3, a1, gp
                  auipc        s0, 885983
                  slli         sp, a7, 24
                  srai         t4, t4, 15
                  addi         ra, s10, -35
                  sra          a1, a0, s4
                  auipc        t3, 335630
                  and          zero, t0, t0
                  slt          gp, a0, s11
                  xor          a4, s9, ra
                  sub          gp, gp, a5
                  add          s7, s11, a5
                  slti         s4, s7, -302
                  andi         t4, tp, 348
                  slti         t3, t6, -873
                  slt          tp, t6, t1
                  slti         a6, a0, 1893
                  xor          a0, a4, t3
                  lui          t1, 55680
                  sub          t2, a1, s4
                  slti         ra, s4, 1360
                  sub          s0, s11, a6
                  xor          sp, s4, tp
                  xor          tp, a3, s4
                  add          sp, t0, a6
                  and          s7, a7, s9
                  nop
                  xori         a3, t1, -1201
                  sub          s6, a6, zero
                  slli         sp, t6, 19
                  andi         a3, s6, -1374
                  nop
                  and          sp, a3, s1
                  slti         s4, a3, 923
                  sll          t2, t5, zero
                  and          a0, s10, t2
                  sra          a4, s10, t3
                  and          t4, t1, s6
                  or           t3, s11, zero
                  sub          t4, s10, ra
                  slti         s8, s10, 871
                  xori         s3, t0, 1030
                  ori          s7, t2, 773
                  sub          s10, t5, t1
                  lui          a5, 363724
                  sra          a2, s4, a0
                  xor          tp, s1, s11
                  andi         t4, t2, -1669
                  srli         s0, t3, 11
                  andi         a0, zero, 303
                  sll          a7, a2, s5
                  and          a7, t2, t2
                  xor          zero, t1, ra
                  sltu         s5, ra, s4
                  and          a7, s10, ra
                  srai         t2, a3, 5
                  slt          s8, s3, a2
                  sltu         t3, a3, s0
                  ori          t1, a5, -1391
                  or           t1, s8, s9
                  or           s3, t0, a6
                  andi         a0, s2, -642
                  slti         a3, a0, -1796
                  srli         s1, ra, 19
                  nop
                  sra          t2, s1, tp
                  addi         s8, a0, 565
                  slti         tp, gp, -722
                  add          a6, s7, a1
                  sltu         gp, a6, s11
                  lui          s8, 325870
                  sub          s8, s9, gp
                  lui          a6, 545509
                  sll          s1, s2, t2
                  slli         s10, a3, 12
                  andi         a4, s3, 944
                  nop
                  addi         a3, s11, -205
                  addi         s5, s8, -397
                  sll          ra, a7, s0
                  sra          s7, t5, sp
                  add          a4, t2, a0
                  nop
                  nop
                  or           a4, s9, t0
                  ori          t1, s7, -915
                  and          a0, t0, s5
                  xori         s4, s2, -1064
                  xor          s7, s3, tp
                  addi         s1, s2, -670
                  andi         s7, t0, -191
                  slli         t4, s3, 18
                  or           t0, s1, s5
                  auipc        a6, 366452
                  slli         s5, a1, 25
                  or           a0, s3, s2
                  auipc        t2, 1047367
                  and          s4, t1, s6
                  auipc        t3, 314866
                  or           a4, gp, s6
                  sltu         a0, s6, t4
                  xor          a2, a2, t5
                  sltu         a6, ra, a5
                  addi         s10, t5, 1213
                  slli         gp, s7, 30
                  auipc        a5, 360939
                  xori         s0, t3, -1780
                  auipc        a0, 99226
                  slt          sp, a1, a4
                  sra          t1, a4, t6
                  sll          a2, sp, ra
                  xor          a6, t3, s5
                  ori          s3, a4, 178
                  xor          a5, a4, zero
                  add          a5, t2, ra
                  ori          s10, a4, -1644
                  add          a5, s4, zero
                  sub          ra, t5, t6
                  nop
                  and          s0, t3, s6
                  auipc        a5, 980185
                  ori          s10, t0, -56
                  auipc        s9, 65947
                  addi         sp, s8, 530
                  slli         tp, s5, 22
                  xori         s3, s4, -801
                  sll          gp, s10, a5
                  sll          s8, s2, tp
                  xori         a3, a5, 1475
                  xor          s1, sp, s4
                  sra          sp, t0, gp
                  sltu         a1, s4, s2
                  slt          s10, t6, sp
                  xor          a1, a0, t4
                  or           s8, zero, s3
                  auipc        a7, 479009
                  andi         tp, a7, 1046
                  xor          a0, s9, gp
                  andi         s0, t3, -706
                  sra          s0, sp, t1
                  sra          s4, s9, a3
                  auipc        tp, 362516
                  slli         a2, s0, 20
                  sltu         t3, s6, gp
                  slt          zero, tp, t0
                  or           a3, t2, t1
                  sub          t6, a4, a3
                  addi         gp, a3, -699
                  slti         a6, a6, -1356
                  addi         s10, s9, 1616
                  add          zero, a0, s11
                  srai         s1, a4, 4
                  and          s0, tp, s3
                  sltu         t2, a1, a2
                  nop
                  slti         t6, s10, -2
                  nop
                  andi         s4, zero, -906
                  xor          a7, t4, tp
                  lui          a4, 486930
                  sra          s1, a7, s4
                  lui          a4, 627084
                  sltiu        t6, t6, 102
                  slti         t4, t0, 1242
                  xori         t4, t3, 1632
                  sltiu        a6, a3, -2046
                  andi         s5, a6, 700
                  sll          zero, s10, s8
                  addi         s7, s10, 508
                  slt          s6, t1, t6
                  srai         s0, a7, 5
                  srl          a3, zero, t3
                  add          zero, t3, s6
                  srai         a2, t3, 29
                  xor          t2, s6, s11
                  slt          a4, s8, a0
                  xori         t1, s9, 1336
                  sll          s8, a6, a0
                  slti         tp, s6, 254
                  xori         a3, a0, 1247
                  sub          t3, zero, zero
                  sltiu        a4, t1, -690
                  sra          s1, a7, s5
                  xori         a7, a0, -1544
                  slli         s4, s0, 14
                  sltiu        a5, a1, -1049
                  auipc        a3, 824155
                  andi         t1, t3, -1677
                  slti         s7, a0, -1415
                  sltiu        s4, gp, 840
                  xor          t0, t6, sp
                  sra          sp, a2, s5
                  or           s0, t1, s6
                  auipc        tp, 172927
                  sll          t3, a1, t0
                  sll          t2, a1, s7
                  or           t6, a5, a0
                  xor          ra, s0, t6
                  xor          a3, s10, zero
                  ori          gp, s11, 1926
                  srai         ra, s2, 28
                  xori         t0, t1, -1888
                  andi         zero, t1, 598
                  srai         t6, t1, 1
                  srl          s7, s4, s10
                  sll          a0, s10, a3
                  slti         sp, a6, 72
                  sub          s6, s7, s10
                  auipc        s9, 306432
                  sll          sp, zero, a0
                  srli         s10, s5, 3
                  lui          s9, 957521
                  and          s6, t2, a2
                  add          sp, tp, s2
                  srl          a6, s10, s1
                  sra          a4, a6, a4
                  slli         a5, a5, 22
                  xori         tp, a3, -883
                  slt          a7, s9, t5
                  sub          zero, s10, tp
                  ori          s10, t4, -1483
                  sub          a2, a3, a7
                  xor          t4, t5, a7
                  slt          s3, zero, s7
                  or           a0, t2, s8
                  sll          s3, a1, t3
                  srl          t0, a3, a0
                  add          s5, a3, sp
                  sltu         tp, a4, s1
                  sltiu        a3, t0, 424
                  or           a0, s1, a1
                  add          t1, t4, a1
                  and          a4, ra, t4
                  xori         ra, zero, 248
                  sltu         a6, s11, s5
                  auipc        s6, 280203
                  nop
                  srli         t1, t6, 4
                  ori          s0, t6, 135
                  xor          s6, a0, t0
                  srl          sp, tp, s2
                  xor          s1, s10, s3
                  srai         ra, a5, 5
                  auipc        s0, 184842
                  srl          s10, t2, a2
                  sltiu        a0, a0, -1637
                  addi         a5, s3, -953
                  addi         t6, gp, -203
                  nop
                  sltu         s3, a4, t1
                  srl          sp, t2, a2
                  andi         gp, t6, -488
                  andi         s5, s2, -1361
                  sll          t2, tp, s3
                  slti         t4, s9, 332
                  add          a6, s5, t6
                  sra          a3, tp, sp
                  sll          a2, a3, t4
                  lui          tp, 629970
                  lui          tp, 597322
                  sltiu        t1, s6, 516
                  sub          s5, s8, a6
                  slt          ra, s4, a5
                  add          ra, s1, a0
                  nop
                  slt          s3, a3, s5
                  slt          t2, t1, a3
                  srl          ra, s11, a4
                  ori          gp, s0, 467
                  sltiu        s3, gp, 469
                  sltiu        sp, a7, 308
                  nop
                  ori          s1, s8, 1372
                  srai         t4, s4, 31
                  add          t3, t0, a7
                  slt          a4, a3, a3
                  slli         s4, t5, 29
                  sra          s6, a1, s5
                  sra          t3, t4, s6
                  add          sp, s0, s0
                  auipc        sp, 331971
                  srai         s0, ra, 27
                  add          a0, s10, s0
                  add          a2, s9, s3
                  sltiu        s1, s10, 1661
                  add          t0, t2, a0
                  add          a3, a6, zero
                  ori          a4, s4, 559
                  xori         s0, s6, 6
                  slti         s10, a0, 1292
                  slti         a0, tp, 893
                  ori          t4, t0, 1095
                  lui          a6, 964916
                  nop
                  srli         ra, a0, 17
                  addi         t1, a2, -775
                  xori         zero, s3, 1609
                  xor          t2, a7, s8
                  xori         gp, a7, -765
                  nop
                  sub          s7, s5, a4
                  sltu         t4, s11, t0
                  sll          a6, s5, s6
                  sltiu        s5, a1, 822
                  sll          a4, t6, t5
                  xor          s6, a5, a6
                  sub          s9, tp, a2
                  addi         s4, t6, 1476
                  slti         t2, s7, -989
                  lui          s7, 309587
                  sltiu        t4, t4, 1678
                  and          t1, ra, s3
                  sra          a1, t6, a0
                  add          t2, a6, a6
                  sub          a4, a0, t6
                  xor          t6, s10, a5
                  slti         a7, t4, -38
                  ori          a4, tp, 1620
                  nop
                  addi         s1, s0, 1190
                  add          sp, a5, a1
                  srli         s3, s0, 5
                  xor          a3, sp, s8
                  slti         t2, t1, -852
                  and          s3, s7, s10
                  xor          s4, t4, a1
                  srli         s6, s9, 19
                  lui          a7, 639772
                  sltiu        s10, t1, -1145
                  srai         s0, s4, 29
                  or           sp, a6, tp
                  sra          s8, s1, zero
                  sll          s7, s0, s7
                  add          a3, ra, zero
                  auipc        sp, 736931
                  sra          t0, t0, a4
                  sltu         t1, s3, s4
                  srli         t4, s10, 25
                  or           s10, s0, s3
                  xor          a0, s1, s9
                  auipc        gp, 152268
                  lui          t1, 458289
                  sll          s7, s7, gp
                  or           zero, sp, a3
                  and          s6, s11, s7
                  sra          a1, s3, a4
                  add          s8, t1, a3
                  srl          t3, t4, sp
                  sra          a5, t2, t0
                  and          t4, t0, a2
                  lui          a2, 602537
                  auipc        s8, 565231
                  nop
                  add          zero, t4, s1
                  slti         s8, s2, 590
                  sltu         s10, a7, a2
                  srli         a2, t0, 1
                  slti         s8, s6, -262
                  add          zero, ra, t6
                  xori         a4, a4, -1719
                  and          a7, t1, s5
                  sra          s1, a2, s4
                  lui          t2, 236759
                  sra          t1, s9, t6
                  srl          s3, s7, s5
                  lui          s1, 541494
                  srai         s4, t2, 30
                  ori          a5, t3, 271
                  sltiu        a1, s11, 1107
                  sll          t6, a0, a2
                  srli         a3, s0, 7
                  slti         t3, s9, 765
                  xori         gp, t6, -1919
                  srl          s8, a0, gp
                  ori          t1, gp, -1373
                  slt          s7, a6, s6
                  srai         s9, t4, 23
                  slti         t4, t5, -1695
                  srli         t6, gp, 10
                  andi         t1, s4, 1912
                  srl          s9, s9, a3
                  andi         s9, a5, -437
                  srai         ra, t5, 5
                  auipc        s7, 881032
                  or           t1, t4, s10
                  sll          t6, t2, t5
                  nop
                  slli         s3, t5, 28
                  sub          t4, s11, tp
                  sltiu        a1, a6, -1456
                  andi         s4, a1, -1153
                  addi         s7, t0, 743
                  and          t2, ra, tp
                  slli         t1, a0, 18
                  sll          a6, gp, s3
                  or           a7, t5, ra
                  sltiu        s1, s2, 172
                  nop
                  srli         t2, a5, 7
                  xor          a2, zero, gp
                  srl          t4, sp, s0
                  addi         a3, s9, 1326
                  slt          t1, s7, a7
                  slli         s8, a5, 17
                  nop
                  auipc        s4, 928887
                  and          s9, ra, s11
                  sll          t6, a2, s2
                  srl          s4, sp, sp
                  sub          gp, gp, a4
                  or           a1, s8, a5
                  slti         ra, tp, -1241
                  slt          s9, sp, a6
                  srl          s10, sp, t1
                  andi         s9, a3, -1070
                  addi         s1, a0, -1786
                  addi         a7, s4, -428
                  srai         t1, t6, 2
                  sra          a2, t5, s5
                  addi         s5, t6, -125
                  auipc        t4, 802073
                  sra          a5, s10, a3
                  add          s8, s9, a7
                  xori         sp, a2, 968
                  sra          t1, s4, t0
                  auipc        t1, 434914
                  sltiu        s3, tp, -1420
                  andi         s5, gp, 201
                  xor          a3, t0, a2
                  add          a7, a7, s0
                  xori         gp, t6, 2021
                  and          s6, t4, a3
                  andi         s9, t2, -1556
                  xor          a0, a4, a2
                  srl          t6, t2, s5
                  add          zero, t6, s8
                  andi         t2, s1, 1956
                  srli         s8, zero, 15
                  add          s6, s10, s5
                  srai         s10, s1, 23
                  andi         t4, t2, -719
                  xori         s6, s5, -495
                  nop
                  lui          zero, 427261
                  lui          sp, 102151
                  addi         s5, a6, 1482
                  or           gp, t0, s6
                  sltu         a7, a2, a6
                  srl          t3, sp, t5
                  andi         a7, tp, -929
                  or           s3, a0, s8
                  sub          s9, a4, s3
                  xor          a6, s4, s1
                  add          zero, a5, s10
                  and          gp, s1, ra
                  sltiu        a7, t1, -556
                  sll          s1, t2, s1
                  and          t2, t0, a1
                  slt          s10, a0, a5
                  sub          s6, s9, t3
                  addi         a0, s7, -1144
                  ori          a5, t4, 1660
                  add          t4, s6, t2
                  sub          t6, t1, s0
                  addi         a6, tp, 559
                  sra          s0, s8, s1
                  srli         a6, s4, 17
                  srli         a0, s1, 4
                  srli         s0, t0, 13
                  add          zero, s5, sp
                  srl          t6, t1, a6
                  sll          a4, s7, t2
                  and          s7, s8, t2
                  srai         s6, a7, 24
                  srl          s8, a7, s7
                  srli         a2, a6, 26
                  sll          s0, a6, a1
                  ori          a0, a4, -871
                  srl          a0, a4, t4
                  and          s4, s7, s4
                  addi         gp, a4, 397
                  sll          tp, a5, s5
                  sll          a7, gp, sp
                  lui          s6, 37391
                  sub          a6, sp, s4
                  slt          a0, t1, s9
                  sltiu        a1, sp, 901
                  nop
                  lui          a3, 74656
                  xori         s6, t0, 41
                  srai         t6, t0, 20
                  andi         a6, zero, -622
                  slti         a5, s11, -1182
                  ori          t6, s9, -28
                  nop
                  and          a2, s3, s9
                  addi         s5, s4, -233
                  sll          a0, a0, a6
                  sll          s5, t0, t0
                  add          s4, s5, s5
                  nop
                  add          t6, s0, sp
                  sltu         a6, tp, s10
                  sltiu        s4, a0, -724
                  ori          a0, a2, -1281
                  lui          a4, 773773
                  xor          a4, s9, t0
                  xori         t2, s6, 1568
                  xori         a1, a2, -1228
                  slli         s6, t1, 24
                  sll          sp, s1, t2
                  slli         t4, s4, 13
                  sltiu        a0, t5, 1238
                  sltiu        s8, s6, -857
                  slt          t3, zero, a3
                  sra          t3, tp, a4
                  slt          zero, s7, a6
                  sll          a6, a2, sp
                  slti         s3, a4, -1732
                  nop
                  xori         a7, s4, 433
                  srl          a6, a4, a2
                  slli         s3, a5, 7
                  lui          s4, 787013
                  andi         s0, t6, -1385
                  sltu         s10, a7, a6
                  addi         t0, sp, -330
                  auipc        s4, 350299
                  sra          t3, t6, s1
                  sra          a5, sp, s7
                  lui          ra, 982783
                  lui          t3, 768804
                  or           t3, s7, a3
                  auipc        t4, 291409
                  addi         sp, a5, -117
                  sll          a5, s10, s10
                  sra          s9, a2, s7
                  addi         t1, s0, -1684
                  sub          a2, gp, a2
                  auipc        t1, 71772
                  lui          a6, 905624
                  sll          s10, t3, gp
                  lui          t0, 233657
                  xori         s8, a0, -444
                  slti         a3, t5, 1753
                  ori          t3, s8, 67
                  sltiu        t0, a4, -644
                  srli         s4, s11, 8
                  sltiu        t3, s5, 1437
                  slt          s5, t3, a7
                  sra          a0, tp, a0
                  and          tp, t3, a3
                  sra          s3, sp, s9
                  sltu         a4, tp, tp
                  xori         t4, sp, 1108
                  add          gp, t2, a5
                  and          zero, zero, zero
                  sll          t6, zero, a2
                  srli         zero, a0, 11
                  andi         a4, sp, -1473
                  slt          sp, t3, s0
                  sra          t1, a1, s4
                  add          a4, t4, t0
                  lui          t1, 323416
                  slti         t0, a4, 778
                  sltu         a2, a7, a0
                  xori         ra, a6, -1422
                  ori          t3, a3, 1022
                  lui          a0, 351394
                  srai         a2, ra, 19
                  ori          s6, t2, 1765
                  nop
                  sltiu        a4, t2, 1545
                  sltu         t4, a3, t5
                  sub          s6, s2, s4
                  sll          s4, a3, t4
                  and          a2, t3, a1
                  srl          a2, gp, s0
                  sra          s3, zero, t3
                  xor          s5, t3, s4
                  and          s3, a0, zero
                  srai         zero, a0, 3
                  sltiu        t0, a2, 687
                  slti         s6, a0, 1588
                  sub          a2, sp, a1
                  sltu         s8, s6, a7
                  and          s5, s9, a6
                  srl          ra, s9, s7
                  addi         s1, sp, 516
                  slli         a5, s2, 5
                  slt          zero, s9, a7
                  slli         s4, sp, 13
                  srl          ra, t5, a1
                  ori          s4, s1, -272
                  srl          s7, t1, s9
                  slt          t2, t6, a3
                  xor          a1, s8, s2
                  slti         t4, s1, 1106
                  slti         sp, a6, -902
                  srl          a0, sp, t0
                  xor          s8, sp, s1
                  lui          sp, 305915
                  srai         a3, gp, 12
                  sra          s8, s9, tp
                  sra          s10, ra, a0
                  or           a2, s6, a2
                  slli         a5, gp, 29
                  or           s10, a1, a0
                  slt          sp, t2, a2
                  slli         s8, s6, 20
                  sll          s10, t6, s11
                  slli         s8, t0, 27
                  lui          s8, 351817
                  slti         t1, tp, 300
                  nop
                  xori         a3, s6, 434
                  slli         t6, t2, 28
                  add          s6, s2, a3
                  nop
                  sra          s1, t1, s3
                  sra          a4, a7, s11
                  ori          s0, a5, -1861
                  and          s7, t5, t5
                  add          a2, t1, s11
                  slli         a6, a5, 6
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           t3, 0x94fba719
                  li           tp, 0x80000000
                  li           s3, 0xffffffff
                  li           a3, 0x7ad5a36e
                  li           a1, 0xc2425e9c
                  li           s1, 0x0
                  li           a4, 0xa4d02e63
                  li           s4, 0x80000000
                  li           t2, 0xff312688
                  nop
                  nop
                  lui          a1, 305887
                  nop
                  add          s3, s3, s1
                  auipc        s6, 852291
                  sub          s4, t3, a3
                  addi         tp, a4, -587
                  lui          a1, 235801
                  auipc        s1, 975181
                  lui          s6, 379270
                  auipc        s6, 911613
                  sub          s6, a1, s6
                  nop
                  add          t3, s6, a3
                  add          t2, a3, s4 #end riscv_int_numeric_corner_stream_8
                  slli         s8, s11, 28
                  slti         t3, s11, -443
                  sltiu        a4, t3, 560
                  srl          a6, s8, a2
                  sltu         s5, tp, s10
                  or           s0, s3, s2
                  sub          s5, a0, a4
                  lui          zero, 48262
                  slti         a3, s8, -1008
                  or           t2, a5, zero
                  auipc        s10, 199273
                  lui          t1, 540462
                  sltu         t4, t1, a4
                  sltiu        s3, a6, -658
                  ori          a3, t2, 599
                  sra          t0, t5, ra
                  srli         t0, t6, 8
                  addi         zero, s10, 1896
                  srai         t1, t2, 2
                  sltiu        a4, s3, -209
                  auipc        s9, 267163
                  sll          s7, a1, ra
                  srai         t6, t5, 25
                  andi         t1, s0, -1764
                  sll          tp, t0, a2
                  xor          sp, gp, s10
                  sub          s10, s3, a4
                  and          ra, s4, s0
                  srli         s0, a7, 26
                  addi         t1, s6, -8
                  sltu         s4, t0, s5
                  xor          a4, s7, s3
                  srai         s9, s9, 24
                  slli         a2, a2, 21
                  slli         t1, s0, 17
                  srl          s3, gp, s6
                  srli         t6, s9, 9
                  addi         a1, a7, 948
                  sra          t2, ra, a0
                  slti         s0, s11, -697
                  auipc        t6, 884099
                  addi         s9, t5, 1817
                  xor          a6, a7, s5
                  andi         t6, s5, 1012
                  lui          s4, 78390
                  sub          a0, a7, a4
                  sll          t2, s6, s3
                  ori          s8, s6, 208
                  andi         a1, t5, 672
                  srli         s6, a3, 18
                  or           s5, a3, a3
                  auipc        a1, 801719
                  auipc        t6, 555279
                  srl          s1, a2, s2
                  lui          s0, 517634
                  ori          s9, t1, 190
                  srai         t1, s6, 23
                  add          s4, a2, a2
                  sub          s6, t2, a2
                  nop
                  sra          s3, s1, a5
                  add          a0, a0, a5
                  and          s1, t0, sp
                  sltiu        s1, a0, 476
                  xori         s4, t5, 814
                  sltu         t3, s7, a4
                  nop
                  slti         a5, t6, 274
                  xori         s6, s6, 1911
                  xori         s0, s9, 888
                  or           a1, s3, t3
                  sub          a1, s3, ra
                  sltu         a4, t1, a7
                  andi         zero, s3, -896
                  add          s7, a2, t1
                  lui          s7, 632508
                  and          t4, t1, s10
                  nop
                  sub          t4, a4, s4
                  sra          a7, s3, gp
                  sub          tp, s6, s2
                  srai         a1, s0, 0
                  srl          gp, t0, a7
                  addi         s6, s5, 174
                  slli         t6, gp, 22
                  nop
                  nop
                  slt          tp, s0, s1
                  xori         s8, a3, -145
                  sll          s7, s2, a2
                  lui          t3, 931052
                  sltu         a0, a7, a3
                  srli         a7, t6, 17
                  addi         s10, s11, -51
                  and          a6, a1, gp
                  sra          t4, a4, a0
                  sub          s1, a4, t3
                  slli         t0, s1, 30
                  slti         s1, t6, -61
                  slti         ra, a6, -1589
                  srai         s10, s10, 20
                  nop
                  srli         ra, t1, 17
                  srl          t1, s11, a5
                  sub          s0, a3, s0
                  sltiu        s0, t2, -214
                  auipc        s8, 853013
                  srai         a2, s0, 28
                  xor          t6, s4, a3
                  slt          a2, a1, t0
                  slt          a4, t5, t3
                  sll          t0, t4, t2
                  add          s0, sp, a7
                  sra          s7, s7, zero
                  auipc        a5, 769604
                  nop
                  srai         ra, s9, 1
                  sra          a4, a3, t3
                  lui          a1, 452810
                  add          t1, tp, s6
                  and          a5, t3, s10
                  xori         t3, a5, -808
                  sll          tp, t0, s6
                  add          tp, s10, a3
                  sltiu        sp, s8, -1490
                  sub          a5, s7, tp
                  lui          s9, 816083
                  srli         a6, s11, 10
                  srai         zero, s0, 17
                  add          a7, t3, a0
                  sub          ra, tp, a0
                  sub          sp, a0, s5
                  lui          a2, 839542
                  and          a5, t3, t3
                  srli         s0, a6, 10
                  sra          ra, sp, t6
                  xori         a2, s8, 53
                  srl          s6, a5, t2
                  andi         a0, ra, 2008
                  auipc        a4, 340937
                  xori         t3, t6, 1307
                  xori         t3, s0, -522
                  sll          a1, zero, s2
                  xor          tp, s5, zero
                  xori         zero, s9, -650
                  sll          t4, t1, a7
                  sltu         s8, s3, a4
                  add          t3, s9, a1
                  andi         gp, s1, 1506
                  srli         t4, t3, 22
                  sub          gp, t6, tp
                  addi         t4, s11, -93
                  sltu         a6, zero, a1
                  srli         a7, a1, 1
                  xor          a6, s4, t3
                  sltiu        s10, sp, 495
                  ori          s4, s6, -445
                  addi         a0, s3, -1138
                  xori         t1, a4, -1225
                  sra          s9, s5, a7
                  srli         a7, a3, 27
                  nop
                  sll          t6, s11, a7
                  slt          a3, t0, sp
                  sra          a0, s1, s7
                  slt          s3, s6, s3
                  srl          s5, s0, t3
                  slt          s7, a5, t2
                  srai         s0, t1, 0
                  sra          t1, s4, a0
                  sub          s5, s2, t0
                  sltiu        a4, t4, -344
                  lui          s1, 899751
                  sll          t1, s2, a0
                  sltiu        s5, a4, 1171
                  xor          t3, s6, s4
                  slt          a1, s5, s5
                  xori         gp, s7, -1837
                  and          ra, s1, t5
                  sub          tp, s2, s4
                  add          s10, s2, sp
                  slt          a6, a3, s9
                  lui          a4, 391109
                  slti         s3, t5, 1027
                  and          a6, a1, s10
                  andi         a4, s2, 1314
                  srl          s8, zero, t0
                  slli         a0, s1, 12
                  lui          s10, 768978
                  slti         ra, a1, 1343
                  ori          s4, s11, -109
                  and          sp, sp, s10
                  srli         s0, s1, 3
                  and          a5, sp, a1
                  xor          s1, s7, a7
                  slt          s1, t4, s0
                  srl          tp, s4, gp
                  xor          s3, tp, a1
                  sltiu        s9, s8, -1930
                  sltiu        a1, t6, 1116
                  sltu         t4, s11, a7
                  sltiu        t2, a5, -44
                  add          t1, t2, t6
                  slli         s8, tp, 7
                  andi         s5, s9, -1773
                  srai         a0, s6, 16
                  slt          gp, zero, t2
                  srl          s9, s1, zero
                  slti         a7, s10, -676
                  addi         a6, t4, 222
                  sll          a6, s11, s6
                  auipc        a1, 1012107
                  andi         a2, sp, 93
                  sltu         gp, s2, s2
                  sltiu        t3, s8, -1257
                  lui          a5, 14632
                  addi         t3, s6, 1348
                  or           s8, sp, t2
                  sub          s3, s2, a0
                  xori         gp, a0, 1704
                  slti         a4, gp, 1003
                  xor          s9, s6, a5
                  sub          t4, s8, ra
                  auipc        a5, 189578
                  andi         a3, a5, -1342
                  ori          a1, s8, -405
                  lui          a1, 797208
                  nop
                  and          t4, s9, ra
                  xori         t3, t6, -2036
                  sltiu        t6, a2, 957
                  nop
                  and          t6, a3, t6
                  xori         s8, t3, 1957
                  slti         ra, s9, 1462
                  slli         t2, s5, 30
                  lui          a5, 682355
                  ori          t6, t4, 72
                  lui          t1, 385850
                  ori          t6, ra, -177
                  and          a7, t6, s9
                  sra          a6, t3, a4
                  sra          a4, s7, a5
                  xor          a2, s6, s4
                  slt          a7, a0, s8
                  sltu         tp, s10, s11
                  xor          tp, ra, zero
                  addi         a0, s11, -1512
                  nop
                  sltiu        sp, t1, -554
                  or           zero, a4, s7
                  or           sp, t6, s4
                  nop
                  addi         t1, s10, -1442
                  slt          t0, zero, t2
                  and          s8, t6, a5
                  or           a6, a3, a3
                  or           s6, s2, s3
                  sra          s9, t1, a2
                  sll          s1, s0, t1
                  slli         s8, t4, 31
                  srli         s8, s1, 9
                  srli         t4, ra, 18
                  addi         zero, a5, -243
                  srl          a7, a5, s0
                  srli         sp, sp, 28
                  sltiu        ra, gp, 1829
                  auipc        zero, 19564
                  sltu         s3, gp, a7
                  andi         s10, s9, 979
                  ori          s6, s1, -1828
                  slt          sp, s8, s3
                  xori         s1, ra, 47
                  xori         s5, s5, 1420
                  sra          t6, s0, t2
                  xor          t6, s6, t5
                  xor          a3, a3, zero
                  sub          s6, a6, a1
                  sra          s6, s4, t5
                  or           t0, t0, t3
                  ori          t0, s11, 1724
                  add          tp, s11, s0
                  lui          gp, 714052
                  or           tp, sp, t6
                  andi         t1, a2, 1716
                  xori         s9, t4, -1639
                  slt          a4, s5, s9
                  xor          a2, t5, s4
                  xori         t1, a1, 1389
                  sltu         s8, s5, s6
                  xor          s7, a6, ra
                  srl          t4, s5, a0
                  srl          tp, a5, a7
                  xor          s7, a1, sp
                  sub          t0, ra, a6
                  srli         s7, a4, 26
                  sra          t6, t3, s11
                  sra          sp, a0, s3
                  xor          t4, s11, t6
                  and          s4, t0, a5
                  add          s9, ra, s10
                  ori          t2, t5, 2005
                  sltiu        tp, s3, 2032
                  add          a2, s9, t1
                  sub          t1, a6, s2
                  sltiu        s7, t6, -1350
                  add          s6, zero, a1
                  and          t4, t4, s3
                  add          a7, a0, a5
                  slt          ra, s10, a5
                  srl          a0, t0, a3
                  slti         sp, t5, 112
                  xor          s7, gp, s1
                  and          sp, s8, zero
                  addi         s5, t1, 168
                  ori          t4, s7, -671
                  nop
                  andi         a3, zero, 929
                  lui          s10, 177930
                  and          sp, s9, tp
                  and          s1, s8, s6
                  srai         s8, s5, 29
                  sra          t2, t4, a7
                  srai         tp, a0, 9
                  sub          a2, gp, sp
                  ori          s7, s10, 1669
                  slt          a7, a1, tp
                  srai         s0, t4, 17
                  srl          t3, zero, s7
                  slli         zero, s5, 5
                  andi         s10, t1, 1175
                  srai         a7, s4, 16
                  slt          t6, s3, s9
                  slt          t3, a3, s5
                  nop
                  sltiu        sp, t5, 1067
                  sltu         s0, tp, a1
                  sra          t0, a5, t4
                  srli         tp, s11, 21
                  xor          s5, t1, a5
                  sltu         s3, t6, gp
                  add          s4, s8, gp
                  srai         s0, a7, 28
                  add          t3, a4, t3
                  add          a2, a4, t1
                  lui          a2, 591679
                  ori          s10, a2, -760
                  sra          s8, sp, s3
                  or           zero, t3, a2
                  sll          s3, a3, s4
                  addi         s8, s1, 1411
                  slt          sp, s6, t4
                  andi         s10, t0, 106
                  slli         gp, t0, 14
                  srai         s9, a4, 3
                  add          a7, s8, t0
                  slli         t0, s9, 21
                  sll          a1, a3, a4
                  sll          a1, tp, sp
                  sll          tp, t2, sp
                  nop
                  srl          t1, t2, s3
                  lui          s3, 203623
                  addi         sp, s6, 1052
                  add          tp, t1, a0
                  xor          sp, s6, s6
                  and          s1, s9, a5
                  slt          a4, s4, a1
                  slli         s4, t1, 23
                  slli         s3, s11, 18
                  sll          gp, sp, t1
                  sltu         t3, s7, t4
                  sll          t6, s4, t2
                  sll          a6, t2, s10
                  sub          tp, s7, a5
                  auipc        s8, 812857
                  andi         a3, t4, -863
                  sra          sp, tp, a0
                  auipc        s8, 916922
                  srli         s3, t1, 0
                  sltiu        s8, t0, 1548
                  xor          a3, a2, a2
                  andi         t3, tp, -402
                  sll          t4, t3, s1
                  addi         a7, s11, 84
                  addi         t3, a7, 2
                  andi         zero, t6, -197
                  and          s8, a7, a1
                  xori         zero, a4, -2043
                  xor          a7, s2, s4
                  and          s6, zero, a3
                  sltiu        t4, s2, -1150
                  srl          a1, t0, t2
                  sltiu        gp, s9, 328
                  srl          t0, s10, a6
                  sll          t3, ra, ra
                  srl          s5, t4, a3
                  sltiu        s1, a2, 1749
                  ori          a7, a6, -774
                  xori         a7, s0, 1354
                  auipc        a5, 803637
                  andi         sp, tp, 1311
                  andi         s7, ra, 444
                  sltu         t1, s2, zero
                  lui          t2, 898575
                  sra          sp, ra, s0
                  andi         a2, s1, 1653
                  sll          s4, s1, t4
                  addi         a1, gp, -305
                  nop
                  sub          t4, s6, s7
                  andi         t6, a1, -446
                  xori         s3, a2, 1637
                  nop
                  andi         t0, a0, 85
                  andi         s0, zero, 341
                  auipc        sp, 410589
                  add          s10, t0, t4
                  slt          zero, tp, gp
                  and          s3, s4, t3
                  sltiu        ra, t1, 1265
                  srai         a0, sp, 11
                  srli         a0, t1, 10
                  xor          s1, s8, s6
                  sub          sp, a0, ra
                  sll          s7, a3, t1
                  slt          s1, s7, s3
                  xori         t2, a1, -223
                  lui          a5, 942128
                  andi         a4, s9, 1886
                  sub          s3, a3, t2
                  addi         a6, a2, 1234
                  ori          t0, ra, 1516
                  xori         a7, s5, 1818
                  or           a1, gp, s6
                  sub          t4, t1, s3
                  nop
                  and          t6, t6, zero
                  slli         gp, t1, 21
                  sltu         t1, s2, gp
                  or           ra, s2, s4
                  slli         s1, sp, 4
                  srli         ra, a5, 23
                  slti         s10, a4, 690
                  srli         s8, s2, 20
                  sltu         a4, s5, s11
                  nop
                  lui          s7, 348209
                  slli         ra, s8, 23
                  sra          s4, gp, s8
                  sltu         s6, s6, a7
                  xori         s3, sp, -709
                  andi         zero, t1, 174
                  and          t0, a4, t1
                  sra          s1, s7, a6
                  or           s9, t0, s10
                  ori          a5, a1, -1938
                  slli         gp, a1, 27
                  add          t3, a3, a4
                  srl          t1, a6, a4
                  andi         s8, a1, -1666
                  sltiu        s5, s2, -1662
                  addi         ra, s10, -593
                  or           s1, s3, a3
                  slti         s0, a3, -1278
                  sll          s9, tp, tp
                  xori         gp, t5, 680
                  sub          s7, s6, s0
                  xor          s5, a7, s6
                  addi         a4, s1, -1401
                  sltiu        a0, s2, 1971
                  addi         s5, s11, -1512
                  slti         a0, a5, -1050
                  slt          a4, s0, t3
                  xori         gp, t2, 373
                  lui          t3, 29241
                  sub          s8, s2, s8
                  sll          t1, s11, t4
                  add          sp, s10, a3
                  slli         a1, s10, 9
                  sub          t0, a7, tp
                  sra          gp, sp, s11
                  sltu         t2, a7, s4
                  xor          s10, t3, zero
                  andi         a0, a7, -936
                  andi         t3, a1, -324
                  srai         s1, a6, 5
                  auipc        t6, 1034242
                  and          t0, s10, t3
                  sltu         s7, s0, a2
                  xori         tp, a0, 1944
                  and          ra, a2, a4
                  slti         a2, s6, 563
                  sltiu        a4, t0, -1252
                  sub          a2, a5, a3
                  srai         tp, s8, 0
                  xori         a4, t5, 1509
                  srli         s9, s8, 14
                  sll          gp, t6, s9
                  slli         t2, t6, 10
                  sltu         gp, t1, s7
                  xori         s6, s0, -335
                  xori         a0, s6, 353
                  and          t2, t3, s11
                  sltiu        s3, s0, -1588
                  or           s0, s7, s9
                  auipc        s8, 964261
                  addi         a5, s2, 286
                  lui          a2, 294149
                  slt          t4, a7, a3
                  srai         t0, a1, 26
                  sra          t2, a3, a1
                  slt          zero, t6, t0
                  lui          tp, 651008
                  addi         a1, s1, -1684
                  andi         s7, s10, -1776
                  sub          s1, s0, gp
                  andi         s0, a1, -637
                  andi         sp, s10, -1437
                  add          s3, a7, tp
                  sltu         s7, t4, t0
                  sra          t4, sp, s11
                  slli         s6, t4, 7
                  slti         s5, ra, 1724
                  sltiu        a2, s1, 1308
                  sltiu        s1, t6, 1513
                  or           a3, s4, a2
                  addi         a5, s1, 283
                  add          a1, a5, s8
                  slt          tp, s10, a5
                  srli         a5, tp, 12
                  addi         s6, s5, 1399
                  add          a1, s9, s7
                  addi         sp, s9, 50
                  sltiu        a2, t4, 329
                  andi         t3, t3, -1644
                  andi         s0, t4, 835
                  nop
                  addi         t2, a6, 1641
                  sra          a4, sp, s5
                  sub          s0, a0, t2
                  addi         a6, s6, -1712
                  sltiu        a3, tp, 237
                  auipc        s7, 929609
                  srai         a5, ra, 14
                  xor          t0, s4, a6
                  ori          t4, s11, -1955
                  add          tp, s10, a1
                  add          ra, s11, t4
                  srl          a7, a7, a2
                  slti         a5, ra, 527
                  addi         t0, a6, 386
                  ori          t4, s6, 1646
                  xori         t1, s5, 1394
                  add          a2, a5, a0
                  or           s8, s11, t2
                  nop
                  srai         s0, s8, 21
                  xor          a0, gp, t3
                  srl          s1, s11, s1
                  andi         a0, a2, 192
                  ori          s5, a2, -1031
                  srli         s5, a4, 12
                  andi         s4, t0, 1845
                  lui          a3, 511418
                  srli         a6, t5, 9
                  sltu         t3, tp, s9
                  sll          t1, s11, s9
                  srl          a3, s9, zero
                  sub          sp, t6, ra
                  sub          ra, s2, t5
                  and          a7, a0, a2
                  add          sp, t1, gp
                  srl          a4, s6, t4
                  sltiu        a4, zero, 1550
                  add          a0, s0, s5
                  xor          sp, s11, s10
                  and          s9, tp, ra
                  addi         s9, t1, 1485
                  slli         s5, t6, 10
                  or           t0, s4, s2
                  srl          sp, s2, s9
                  sltu         a7, s10, a4
                  auipc        tp, 813269
                  slt          a6, gp, t0
                  or           zero, s10, s10
                  andi         s6, s10, -1556
                  lui          a3, 533438
                  sltu         tp, s7, a3
                  auipc        s9, 1040183
                  andi         s8, a3, -760
                  and          s3, s4, s0
                  srai         ra, s2, 4
                  sltu         s4, a2, a5
                  nop
                  srli         t4, s10, 10
                  sltiu        s6, t3, -1481
                  sltiu        s8, s9, 1723
                  sll          zero, s3, s2
                  or           s3, s8, s7
                  srl          s5, s6, s1
                  lui          t0, 15125
                  lui          s0, 566047
                  add          t0, s2, t4
                  sll          a4, s11, a5
                  slti         s9, s11, 808
                  add          a7, s0, s9
                  and          s9, s9, s8
                  sll          s5, a6, t2
                  slt          s3, s9, t1
                  auipc        s5, 608368
                  andi         s6, s3, 1315
                  xori         s10, s8, -342
                  slti         a3, a7, -135
                  andi         s4, a1, 491
                  slli         s0, a0, 12
                  add          t0, s11, s5
                  auipc        s0, 819370
                  and          a3, t3, s3
                  srli         zero, t0, 15
                  auipc        t2, 254058
                  nop
                  srl          a7, s5, a0
                  srli         s8, a7, 19
                  sltiu        gp, a3, 158
                  andi         a1, s5, 1390
                  andi         t0, s8, -208
                  ori          a3, s1, -1550
                  nop
                  sub          ra, t5, t4
                  add          s3, t6, a1
                  slli         t3, a4, 16
                  andi         ra, s5, 1962
                  andi         t1, a0, 1090
                  sltu         s3, t0, t4
                  nop
                  ori          s8, s11, 1384
                  xor          s0, t6, s6
                  sra          a0, gp, s7
                  srl          s10, tp, s9
                  srl          tp, a2, a7
                  addi         tp, a5, 1076
                  sub          s9, t6, a2
                  sra          t0, t6, a3
                  sra          sp, sp, tp
                  auipc        sp, 146719
                  slt          a7, s2, s0
                  sltiu        t6, t1, -1193
                  xor          s7, a5, s4
                  srai         t6, t2, 20
                  addi         t4, t1, -1898
                  sra          ra, zero, a0
                  srl          t6, zero, s6
                  sra          a7, t1, s1
                  and          t0, s0, a0
                  slli         t3, a4, 24
                  nop
                  or           t0, a3, s2
                  nop
                  and          sp, s8, a4
                  ori          s9, a1, -1500
                  and          t6, a6, gp
                  sub          a6, t0, a2
                  sll          ra, s11, s6
                  add          gp, sp, t4
                  ori          a4, s3, -591
                  xori         gp, t1, -669
                  slli         s1, s5, 1
                  nop
                  andi         a6, gp, -1990
                  xor          a1, s10, s4
                  add          t2, t3, gp
                  sll          t2, s2, a7
                  srl          s1, s6, sp
                  slti         ra, a0, 364
                  sltiu        s6, s3, -515
                  srli         s7, a3, 5
                  xori         s5, t5, -1969
                  auipc        a4, 90216
                  slli         s10, a3, 31
                  andi         s8, s8, -745
                  srl          a1, s0, s5
                  srli         gp, t3, 10
                  sra          a3, s5, a6
                  srl          s5, s4, s6
                  nop
                  xor          t4, s10, s6
                  andi         a4, s7, 1851
                  srli         a4, s2, 19
                  or           t6, s10, s7
                  sra          t4, s10, a6
                  addi         a1, ra, -324
                  xor          a1, s11, t5
                  sra          t4, gp, s3
                  srli         a7, s7, 29
                  addi         a4, a5, 522
                  srai         a1, t4, 15
                  or           s1, ra, zero
                  sra          t2, a0, a6
                  ori          a0, a0, -95
                  or           t2, s3, a2
                  or           t1, gp, a0
                  sub          a5, a7, a6
                  sra          a6, a4, t4
                  ori          s1, t3, -318
                  ori          s7, a3, -1901
                  srai         s9, a7, 8
                  nop
                  srl          t3, s10, s8
                  and          s5, a5, s4
                  or           s10, t0, a2
                  srai         t0, a2, 29
                  sltiu        s9, t3, -1679
                  ori          t4, s7, 305
                  srai         s7, t2, 9
                  slli         gp, s3, 29
                  sra          tp, a7, a6
                  sra          a1, s9, a1
                  sltiu        a2, s9, -984
                  addi         sp, s8, -1154
                  auipc        a4, 963920
                  slti         a0, t1, -385
                  sll          sp, s10, s8
                  sltiu        s6, ra, 1497
                  xori         s10, a5, -413
                  andi         sp, a1, 1926
                  xori         s5, s8, -843
                  slli         t3, t3, 31
                  xori         ra, a1, -291
                  or           a3, a4, s10
                  and          a1, t1, t4
                  addi         s10, s10, -1965
                  or           s1, s1, a3
                  or           s10, t4, t5
                  or           a5, s5, t0
                  ori          s9, s6, -1854
                  addi         s4, t6, 926
                  sll          a2, t3, ra
                  sll          a4, a3, t3
                  add          a3, a4, t1
                  xori         s4, t3, 479
                  srli         s0, s6, 18
                  sltu         a4, t1, t6
                  srl          zero, a0, sp
                  srl          a7, s11, t1
                  slt          a5, t4, s3
                  and          s4, ra, s9
                  sub          a0, t4, t5
                  or           s3, t3, a5
                  slti         tp, t4, -587
                  xor          a0, a2, a4
                  ori          s1, s5, 996
                  lui          tp, 151909
                  or           a7, s1, a7
                  and          sp, gp, sp
                  auipc        t2, 262031
                  slli         a2, t1, 5
                  sltiu        s10, s6, -499
                  auipc        zero, 567127
                  and          t3, sp, s8
                  srli         t2, a0, 1
                  addi         sp, ra, 1310
                  or           t2, s4, s3
                  sltu         s9, t0, s6
                  addi         a7, s6, 49
                  srl          a2, s3, t6
                  addi         sp, t3, -1914
                  xor          a5, s10, s1
                  lui          s5, 915591
                  andi         s10, a5, 328
                  slti         s7, s10, 321
                  sll          s5, s8, s6
                  srl          ra, a5, s1
                  andi         a7, s11, 1707
                  sltiu        s0, a4, -645
                  sub          t2, a7, a5
                  srli         s1, t1, 3
                  sll          s3, s3, s8
                  srl          a6, a0, s8
                  lui          ra, 27162
                  sll          a6, s4, a6
                  nop
                  sub          ra, s5, s6
                  slti         s6, s5, -974
                  slti         s10, t4, 1748
                  slt          t3, a6, a1
                  lui          s10, 1042739
                  add          s6, a2, t1
                  sra          s5, gp, a6
                  add          s6, t4, a7
                  ori          a0, zero, -1131
                  slli         s10, a5, 5
                  srli         a7, t6, 26
                  srli         s1, zero, 5
                  srai         s3, s10, 8
                  slti         s3, t6, 139
                  and          a0, s11, s2
                  srl          s5, s8, s8
                  slli         t2, zero, 6
                  ori          a6, t5, -1694
                  xor          a1, zero, s4
                  lui          a3, 323729
                  andi         t4, s4, 583
                  sra          a0, a0, a6
                  andi         s7, s3, -1762
                  srli         a4, ra, 17
                  sltu         s0, a3, s6
                  srai         gp, s4, 4
                  srai         t2, t5, 19
                  sltiu        s6, s0, 904
                  sub          s0, s0, zero
                  add          tp, t1, s5
                  sub          a4, s7, s8
                  srai         a0, a4, 1
                  sub          sp, s10, s7
                  sltu         s9, s6, sp
                  slti         a4, s5, -232
                  and          a0, t6, s10
                  lui          t4, 115670
                  addi         s4, s8, -1350
                  slti         s7, s4, -1114
                  srl          a4, s1, s10
                  ori          zero, gp, -180
                  addi         a2, t6, 1696
                  auipc        sp, 652467
                  xori         s0, ra, 1525
                  srai         t0, a3, 16
                  nop
                  and          s9, t0, s6
                  lui          sp, 189476
                  slli         s5, t1, 30
                  xor          s0, t0, s1
                  srai         s0, a4, 1
                  lui          a3, 186813
                  or           zero, s5, s11
                  xor          s1, t3, a5
                  andi         t3, a1, 848
                  ori          a5, t4, -1018
                  sra          a2, s9, sp
                  lui          sp, 594769
                  xor          t3, s10, s9
                  ori          s8, s4, 1309
                  sub          a5, s7, a3
                  sub          a7, t2, sp
                  srl          ra, a7, s5
                  slt          s6, t1, a7
                  srl          a1, t1, gp
                  lui          s9, 724808
                  or           a3, t5, t0
                  andi         s4, s1, -49
                  addi         tp, zero, -1460
                  sra          zero, s2, a5
                  auipc        a4, 274575
                  auipc        t2, 659564
                  sltiu        a4, a3, 473
                  addi         a4, t3, -313
                  nop
                  and          s8, t6, a7
                  srai         t4, a1, 3
                  auipc        gp, 186372
                  sra          t2, s11, a5
                  sub          a0, t0, s9
                  slt          sp, a4, ra
                  xori         s0, a3, -41
                  lui          a2, 292130
                  or           sp, zero, t5
                  ori          s0, gp, -1285
                  ori          tp, t1, 1212
                  sll          s0, a4, s5
                  lui          ra, 363111
                  sra          s5, t4, t0
                  sra          t6, a4, a6
                  sra          s7, a5, s3
                  andi         t3, s11, 1277
                  srl          t4, s1, s5
                  ori          s10, a0, 1896
                  xor          gp, s8, s0
                  sra          s10, tp, a6
                  lui          s7, 784835
                  srai         a3, t6, 0
                  srai         a7, a7, 4
                  slt          a0, a4, ra
                  sltiu        sp, a3, -1310
                  slt          gp, ra, t4
                  srai         t0, s6, 19
                  sll          a1, s11, t6
                  auipc        s5, 149252
                  sll          a5, gp, a1
                  slti         s10, t2, 472
                  auipc        t1, 421179
                  slt          a5, a5, s5
                  xor          a4, s0, s5
                  slli         s0, a0, 21
                  slt          s1, ra, a7
                  srai         s10, zero, 25
                  ori          s7, t1, -118
                  slti         gp, s6, 667
                  sra          a2, a0, s7
                  xor          a6, t6, t4
                  auipc        t3, 540653
                  srai         s8, a0, 9
                  slti         t1, s3, 1649
                  auipc        a2, 929875
                  sltiu        t3, t3, 303
                  sub          a5, t3, s5
                  srai         t3, a5, 17
                  andi         s0, t6, -1509
                  xor          sp, t2, t3
                  srli         t3, a4, 3
                  sltiu        t2, t3, -687
                  andi         s10, s6, 518
                  nop
                  sltu         s1, gp, tp
                  slli         t4, s4, 23
                  sub          a3, a2, s3
                  xor          a3, s8, a3
                  sra          zero, s1, t4
                  slt          s0, s6, s7
                  andi         a4, s4, -515
                  srl          s8, sp, zero
                  nop
                  sltu         ra, s8, a5
                  slti         a4, a6, -38
                  sltiu        s3, sp, -817
                  xor          ra, s11, gp
                  xori         ra, t2, 1429
                  sltiu        s9, a3, -937
                  sltiu        s6, a1, -1770
                  add          gp, s3, a0
                  sll          s7, s10, t2
                  srai         a1, t2, 4
                  xori         s4, tp, -599
                  add          s1, s4, a0
                  and          s8, s4, s2
                  auipc        a7, 565835
                  srai         a2, t0, 26
                  srai         a7, sp, 5
                  slti         t4, sp, 1399
                  auipc        t6, 404235
                  srai         t3, t6, 10
                  sltiu        s5, s3, 1925
                  addi         t6, t0, -1852
                  slt          s0, s1, s11
                  xor          gp, s7, ra
                  nop
                  andi         s9, a6, -210
                  andi         a7, tp, -1182
                  auipc        t1, 43814
                  srli         a7, t6, 1
                  srai         a7, a1, 22
                  ori          zero, a2, -1104
                  xor          ra, s11, t6
                  sltu         a4, t0, tp
                  nop
                  slt          s10, s2, a0
                  li           t2, 0xad780c2 #start riscv_int_numeric_corner_stream_13
                  li           a7, 0x0
                  li           a2, 0x80000000
                  li           s10, 0xb8cbda59
                  li           s6, 0x0
                  li           tp, 0x80000000
                  li           s7, 0x4329f8d7
                  li           s8, 0xffffffff
                  li           a6, 0x0
                  li           a3, 0xd456deab
                  add          a6, t2, s8
                  lui          s10, 277326
                  nop
                  add          a2, a7, s6
                  nop
                  sub          s7, s6, s8
                  sub          s8, a2, s7
                  addi         t2, a7, 27
                  nop
                  addi         s8, t2, 1074
                  add          s8, a7, a2
                  nop
                  addi         s8, tp, -611
                  lui          s7, 664970
                  sub          t2, a2, s7
                  sub          t2, s8, s8
                  lui          a2, 620540 #end riscv_int_numeric_corner_stream_13
                  ori          s8, t6, 828
                  sltiu        s0, a1, 1774
                  or           t3, s4, t6
                  nop
                  sub          t6, t1, a2
                  slti         s4, zero, -293
                  slli         gp, a5, 21
                  sltu         a5, s6, s2
                  or           s6, a6, s2
                  xor          s7, a1, a3
                  sub          s4, t3, s1
                  ori          sp, a5, 1094
                  sltu         t0, t3, sp
                  sltu         t6, s10, tp
                  slti         t6, t6, -681
                  srli         t6, t0, 28
                  sra          zero, t5, s3
                  sltiu        s8, s1, 885
                  ori          a7, s9, 1892
                  addi         a4, t5, -1204
                  ori          a4, t6, -74
                  srai         s9, a2, 4
                  srl          s8, t4, a4
                  srli         a0, t5, 4
                  slti         zero, a5, -1986
                  slli         t2, a4, 22
                  srl          t0, s1, t3
                  lui          s8, 924837
                  sltu         a1, a3, t4
                  slt          a3, s1, s8
                  xori         zero, gp, 740
                  sra          a5, t1, t5
                  slt          s10, sp, a0
                  nop
                  sltu         s7, s5, s11
                  sltiu        tp, a4, -1634
                  sra          t6, s10, zero
                  addi         s3, a7, 442
                  slli         ra, s7, 4
                  xori         a2, ra, 935
                  addi         s4, ra, 130
                  sll          t0, s0, a1
                  auipc        s6, 935276
                  srl          a7, s10, t4
                  addi         a5, s11, 175
                  auipc        a5, 150209
                  slli         s3, s11, 23
                  xori         tp, s10, 1840
                  slli         a4, t2, 2
                  or           s0, s8, t6
                  srli         t6, a0, 15
                  andi         a2, s10, -1773
                  sub          s8, a2, t1
                  nop
                  addi         a7, a0, -1337
                  addi         t0, s11, 636
                  slti         s3, sp, -321
                  andi         s7, s0, 1463
                  sub          a7, a4, a6
                  andi         a4, s3, -228
                  addi         s4, s1, -1852
                  andi         t2, ra, 1208
                  nop
                  slti         gp, s8, -1409
                  srli         s6, t5, 16
                  and          s0, s7, a2
                  sltu         sp, t5, s8
                  srai         s7, sp, 5
                  or           gp, a2, t3
                  sra          a0, t6, a2
                  addi         a3, s10, 616
                  addi         t0, s8, 1084
                  srl          s1, s11, t0
                  sra          a4, s6, ra
                  nop
                  srai         a2, a3, 25
                  sll          a5, s2, a6
                  addi         a0, tp, -1565
                  and          t4, s9, s0
                  or           s6, a2, s11
                  slti         s4, t3, -1312
                  sltiu        s8, s2, 983
                  slt          a7, sp, t0
                  nop
                  nop
                  add          s8, s2, t5
                  slt          s7, ra, s2
                  lui          t6, 666297
                  slt          s0, sp, s0
                  auipc        t3, 771665
                  sltu         tp, a3, s8
                  or           a2, gp, s10
                  sub          t0, ra, s2
                  slli         t0, t0, 31
                  xori         a7, s3, -140
                  slti         sp, a2, 890
                  slti         a6, zero, 86
                  srl          s9, t6, a0
                  xor          s5, t6, a4
                  addi         s7, t1, 1617
                  and          a7, tp, s2
                  sltiu        a3, a4, 1995
                  auipc        s1, 466103
                  and          t3, a7, a7
                  lui          s6, 723402
                  and          a0, a0, a2
                  slli         ra, a3, 30
                  slli         s7, t6, 13
                  lui          s10, 56265
                  slti         t3, a3, 1959
                  xori         s0, a7, -1855
                  auipc        s0, 289302
                  xori         a1, s10, -613
                  srai         t0, s3, 21
                  ori          t1, s10, 568
                  and          gp, a3, s11
                  and          s0, a0, tp
                  lui          s10, 220400
                  srai         gp, s2, 24
                  or           s7, s11, gp
                  sltiu        a7, s3, 146
                  sltiu        t0, s11, 1625
                  slli         zero, t4, 26
                  lui          t2, 716165
                  sltu         a6, t2, sp
                  addi         tp, t2, 1715
                  ori          tp, s11, -1740
                  slli         a2, s7, 29
                  add          a7, a4, s5
                  slti         a0, s3, -1398
                  lui          tp, 976647
                  or           sp, gp, sp
                  ori          s7, s8, -1786
                  ori          s0, s2, -113
                  or           a4, s5, t1
                  addi         s9, t6, -1913
                  slt          a6, s5, t0
                  sltu         t2, a0, s2
                  sra          a0, s11, a0
                  or           a5, s4, ra
                  add          a6, sp, s6
                  addi         gp, t5, -455
                  slli         s0, t2, 27
                  sltu         t3, s1, s5
                  sltiu        a4, s11, -1703
                  add          s6, s7, s5
                  and          a6, a3, s4
                  xori         s10, tp, 2007
                  or           s6, s4, a1
                  sll          ra, t5, ra
                  sll          s7, a3, a7
                  slt          a1, a0, s3
                  srl          s3, sp, t5
                  nop
                  nop
                  srl          s0, s8, s6
                  sub          a0, sp, t3
                  slli         a7, s2, 19
                  xori         tp, t2, 787
                  xori         s10, a2, 442
                  auipc        t0, 779590
                  addi         a1, a7, 763
                  sra          sp, s4, t2
                  slli         a1, t0, 5
                  sltu         s0, s5, s1
                  srl          s10, a0, tp
                  slt          s10, s3, s11
                  ori          s6, t1, 930
                  sra          a0, tp, s11
                  sll          s9, t6, s2
                  slt          a0, s7, s9
                  srl          ra, s4, s5
                  auipc        ra, 296133
                  nop
                  sltu         gp, a5, a6
                  srai         a1, s1, 15
                  xori         t0, sp, 1558
                  sltu         a7, a4, s3
                  sra          a0, tp, s5
                  sra          a4, s9, s9
                  srli         s1, t6, 7
                  ori          a5, a1, -1637
                  lui          s9, 52481
                  xori         t4, t2, -206
                  and          zero, t5, t1
                  srai         s3, s3, 19
                  sll          s1, a4, s4
                  sltu         a5, tp, t1
                  sltu         t4, a1, s5
                  nop
                  sub          a0, t6, s0
                  addi         t2, s10, 736
                  xori         s4, a4, 154
                  lui          tp, 100126
                  slli         a3, t5, 23
                  slt          a4, s10, s2
                  sltu         s6, t6, s6
                  srli         a4, sp, 22
                  or           gp, s1, s7
                  sub          t3, a0, sp
                  or           s9, s1, a6
                  add          a4, s0, a6
                  ori          s0, t2, 1261
                  lui          a3, 20407
                  srli         t6, sp, 3
                  sll          gp, t3, t3
                  or           a6, s11, a7
                  sra          ra, a4, t4
                  srli         a5, s11, 7
                  sub          a7, a4, a4
                  srli         t0, t6, 31
                  or           a4, t2, t6
                  srl          a7, a5, gp
                  sra          t2, s1, a1
                  lui          a1, 603798
                  srli         t3, t2, 31
                  addi         s9, sp, -1217
                  ori          s5, ra, 1615
                  nop
                  xori         a0, zero, 1024
                  andi         t1, gp, -719
                  srli         s5, a7, 7
                  auipc        s6, 1001906
                  sltu         ra, s0, a5
                  srai         s9, s9, 14
                  xori         s10, t3, -1159
                  auipc        zero, 754804
                  sltu         t3, s6, t0
                  xor          gp, a0, s3
                  lui          s9, 150492
                  slli         a6, a2, 18
                  sll          a2, a7, t5
                  sll          gp, s2, t6
                  slti         a2, zero, 827
                  srai         s5, s10, 17
                  slli         t3, s10, 13
                  slt          s6, s1, s5
                  srli         s9, s1, 30
                  nop
                  xor          s6, s2, t3
                  auipc        s3, 262303
                  nop
                  xori         t2, a5, 129
                  andi         s5, s4, -314
                  slti         a4, s0, 761
                  sra          s8, tp, s0
                  xori         s1, t1, 1168
                  xor          a3, t3, t5
                  sltu         a2, s8, s11
                  lui          a0, 226043
                  xor          s1, a6, s2
                  auipc        t3, 586322
                  slti         s5, s5, -1552
                  srai         zero, a7, 17
                  add          gp, sp, s9
                  ori          s7, a5, 423
                  ori          s4, s11, 45
                  lui          s6, 279812
                  sra          a4, s5, s5
                  sll          zero, t3, s10
                  auipc        s8, 693558
                  nop
                  srai         gp, ra, 31
                  slt          a5, s5, ra
                  andi         a6, s7, 1844
                  andi         s5, s6, -135
                  ori          a4, t3, 1036
                  auipc        tp, 125678
                  slli         s9, a5, 1
                  addi         s7, s9, -1232
                  sltiu        s5, s0, -677
                  sltu         a1, sp, t1
                  srli         t2, s3, 17
                  slt          a0, t0, s8
                  ori          t3, s10, 2045
                  slti         a1, t5, -897
                  or           t0, t6, s4
                  slli         ra, gp, 6
                  srl          t1, tp, a6
                  slli         a7, s2, 4
                  addi         s6, a4, -947
                  lui          s4, 64963
                  and          zero, a7, a0
                  sltu         t1, a7, gp
                  srl          t1, t1, t4
                  srai         a0, ra, 23
                  sltu         t2, s10, gp
                  srl          s0, s10, a0
                  addi         s0, s5, -1822
                  and          a2, s8, s11
                  or           t1, s0, s3
                  srai         a3, t6, 0
                  xor          s6, t4, a7
                  xori         s7, t0, -648
                  ori          t3, s6, -1064
                  slt          s5, s1, s0
                  slt          t1, a2, s11
                  and          t0, sp, t5
                  srl          ra, t5, s7
                  add          a7, s5, t5
                  srl          zero, a2, s0
                  xor          a5, t6, s11
                  sll          tp, zero, s4
                  andi         zero, s0, -357
                  slli         a3, t4, 18
                  srli         s8, a2, 0
                  ori          s10, t2, -1158
                  sltu         s7, s4, s0
                  addi         a2, sp, 1009
                  srl          s9, a2, s8
                  and          a1, zero, t3
                  slti         s7, a0, -1472
                  sltiu        s0, t1, -717
                  lui          s6, 255163
                  xori         sp, t4, 1588
                  srli         zero, s11, 15
                  srl          a5, s5, s0
                  sra          s1, s10, t3
                  sub          tp, s9, ra
                  sra          zero, s0, t6
                  sll          a6, ra, s6
                  sltiu        a2, ra, -2003
                  sra          s0, a6, s8
                  slt          t4, a2, a3
                  sub          s1, s11, s0
                  addi         t4, ra, 200
                  nop
                  auipc        ra, 917503
                  srl          a7, s7, t2
                  nop
                  andi         a4, ra, -517
                  ori          t1, s7, -875
                  sra          a5, t0, tp
                  auipc        a6, 325847
                  addi         tp, a6, -18
                  slli         t3, t3, 16
                  xor          gp, s8, a0
                  lui          t6, 375233
                  sltu         tp, t1, t1
                  xor          t1, a7, s7
                  slti         a1, t5, 1290
                  ori          s4, s6, -651
                  xori         t0, a5, -1593
                  sll          t2, a2, s1
                  sub          gp, tp, s7
                  sub          ra, s0, s3
                  auipc        t1, 145721
                  and          zero, a0, s7
                  sltiu        s10, a4, -45
                  andi         s10, t6, 409
                  srl          t2, sp, a2
                  lui          tp, 121520
                  add          t1, a1, t3
                  sltu         s5, s7, t4
                  andi         t1, s5, 1137
                  auipc        t1, 105823
                  sltu         sp, t6, s2
                  addi         t4, s6, 193
                  slli         t4, t1, 28
                  or           a0, tp, t4
                  xori         a2, s1, -1218
                  sra          s0, s7, t3
                  auipc        a5, 288575
                  andi         a0, t4, -1571
                  slli         s1, s6, 5
                  slli         zero, s11, 6
                  srli         sp, a3, 6
                  xor          s7, s6, a6
                  sltu         a6, s3, s0
                  slt          s9, s8, t1
                  or           s9, a7, t3
                  xor          gp, s4, s2
                  sltiu        s6, s2, -617
                  sltu         s10, s5, a0
                  srli         a4, a4, 25
                  sub          a5, t6, t2
                  andi         t3, s4, -159
                  lui          s3, 953045
                  and          s3, s3, s9
                  ori          ra, s2, 1907
                  srl          a5, s10, a3
                  nop
                  sltiu        sp, t2, -1958
                  xori         s5, s7, 2001
                  or           a6, s3, a2
                  slt          t6, s11, a2
                  andi         tp, s3, -288
                  auipc        a0, 1035656
                  nop
                  or           sp, s0, s1
                  nop
                  slt          t4, s11, a6
                  slti         gp, a6, 154
                  sltu         s4, tp, a0
                  srl          t4, t0, s4
                  slti         s9, t1, 1234
                  sltiu        a2, a4, -413
                  nop
                  ori          s0, a5, 56
                  slli         t1, t3, 27
                  sltiu        t3, s3, 1479
                  lui          a0, 96115
                  slti         s1, s3, -1155
                  srli         t4, a7, 8
                  srai         s4, t3, 23
                  nop
                  or           a6, t4, s9
                  addi         s8, t0, 1194
                  slti         gp, a3, -1668
                  ori          a5, a6, -879
                  sub          s1, s10, a7
                  ori          t4, a0, 1584
                  ori          a2, a1, -1407
                  sll          s1, sp, gp
                  andi         s4, s8, 1537
                  srl          a7, gp, s10
                  xori         s5, s9, -565
                  auipc        a0, 265178
                  nop
                  addi         a4, t2, -1782
                  nop
                  xor          a4, t3, s3
                  srai         a3, t6, 14
                  xori         s4, s2, 864
                  srli         t2, t2, 2
                  ori          s0, gp, -948
                  sra          s7, tp, s5
                  auipc        t6, 889345
                  addi         a1, a6, -1768
                  sltiu        gp, t0, 769
                  xori         s1, a4, 1766
                  srai         tp, a1, 0
                  andi         a7, ra, 1820
                  sra          s8, t1, a5
                  or           sp, s3, t4
                  nop
                  lui          ra, 454404
                  sra          s5, t2, t2
                  ori          t1, s4, -1521
                  addi         t2, s8, -1592
                  sll          a3, s3, s6
                  xor          s10, s2, zero
                  xori         s3, a4, -427
                  nop
                  auipc        a6, 543544
                  sll          a3, sp, zero
                  andi         s4, a7, -1747
                  slli         t1, s1, 8
                  addi         s9, t4, 1915
                  srai         t2, zero, 14
                  andi         s9, a0, -747
                  lui          s5, 916800
                  slti         t0, t2, 476
                  slli         s0, t5, 30
                  xor          tp, s5, gp
                  sra          s7, t4, a4
                  add          zero, a3, gp
                  nop
                  xor          tp, s6, s0
                  add          zero, sp, gp
                  ori          t3, sp, 1138
                  sll          a1, a3, s9
                  or           ra, a6, a4
                  srli         a6, t6, 2
                  sra          s7, t4, s9
                  or           s8, ra, zero
                  add          t1, ra, s2
                  xori         s8, t5, -971
                  srai         gp, zero, 8
                  lui          a0, 388689
                  lui          a7, 1022955
                  srli         s3, sp, 1
                  and          t6, a2, s1
                  auipc        a5, 189258
                  andi         s4, sp, 1844
                  or           s7, a4, s7
                  addi         t2, a4, -338
                  slli         a6, a1, 16
                  add          zero, ra, t2
                  xor          t1, s5, t6
                  srli         ra, gp, 22
                  andi         t2, ra, -1158
                  srai         a4, t3, 17
                  andi         s8, s9, -1890
                  andi         t4, s9, -1426
                  addi         t3, t5, 1804
                  slli         ra, s9, 21
                  sltu         t3, s3, a0
                  ori          sp, a5, -954
                  sll          s4, t5, a2
                  addi         a0, a2, -386
                  xor          s8, t2, s11
                  slli         sp, a5, 27
                  sll          ra, s6, a6
                  srai         t3, t6, 30
                  sub          t3, s7, sp
                  andi         a0, s5, 461
                  auipc        a1, 1027529
                  auipc        a4, 251278
                  lui          s9, 168031
                  slli         a5, a1, 24
                  sll          s9, t4, t2
                  ori          a4, a0, -1537
                  xori         tp, s10, -1921
                  nop
                  addi         t3, a7, 1654
                  andi         s9, t5, -598
                  addi         s6, a0, 177
                  nop
                  sltiu        s10, t0, -1753
                  ori          t6, a1, 1605
                  sra          a2, s8, t0
                  ori          a5, s1, -1098
                  sltiu        ra, s2, -1593
                  add          a6, s11, t1
                  slt          sp, a6, s1
                  srl          a2, s4, s6
                  andi         ra, s1, 1728
                  andi         s8, t6, -2
                  slt          s6, sp, s3
                  and          a2, sp, s6
                  slti         s0, s11, 215
                  sll          a2, s10, a6
                  auipc        a6, 847910
                  add          a3, s6, ra
                  slt          tp, ra, t6
                  slti         a6, t3, 1835
                  or           t6, sp, t4
                  addi         a3, s2, 600
                  sra          t4, s6, a6
                  lui          t4, 212143
                  xori         zero, s8, 566
                  add          t3, s8, t3
                  srl          s4, s11, s2
                  xori         s4, t5, 283
                  slti         s6, sp, -1467
                  xori         s7, s0, -321
                  and          tp, s4, t0
                  sra          s8, s7, a5
                  srl          a1, s7, s0
                  srai         s3, tp, 29
                  slti         tp, t5, 1996
                  xori         s9, a5, 908
                  nop
                  auipc        s7, 582455
                  and          t1, a2, t0
                  ori          t0, t6, -1267
                  slti         s8, s3, -633
                  srli         a5, sp, 11
                  slt          t0, s7, t5
                  auipc        a3, 167389
                  xori         ra, s7, 1483
                  andi         s9, a3, 1989
                  lui          t6, 642839
                  lui          s3, 309181
                  xor          s9, s10, zero
                  nop
                  add          zero, s1, tp
                  sltu         a5, ra, gp
                  sltiu        zero, gp, 1668
                  addi         ra, s0, 946
                  sub          t1, a6, a3
                  and          s9, t3, zero
                  sltu         a4, sp, s0
                  sub          t3, a7, s5
                  ori          s7, a0, 1149
                  auipc        s10, 956667
                  srli         s10, s8, 15
                  sub          s6, a0, a0
                  sra          a7, s7, tp
                  sltiu        t1, s5, 1160
                  andi         s4, s4, -874
                  auipc        sp, 395516
                  slli         t6, s8, 9
                  ori          s7, s2, -1006
                  andi         ra, a0, 1859
                  and          s7, t3, s4
                  nop
                  slt          s4, t4, s0
                  and          a7, s3, t3
                  and          t6, a5, s5
                  andi         t1, a0, -234
                  addi         s8, ra, -1661
                  sltiu        a3, ra, -646
                  slli         zero, zero, 15
                  srai         s8, a4, 30
                  addi         s4, s1, -95
                  slti         a6, a6, -746
                  sltu         t3, s6, s1
                  or           s10, s4, a6
                  slti         t4, s2, 729
                  sll          a2, a4, gp
                  nop
                  xor          s4, s9, s11
                  andi         a0, t5, -1751
                  srai         t4, zero, 31
                  srli         t4, sp, 0
                  xor          a0, a3, t3
                  ori          t3, s10, 1353
                  srli         zero, a7, 0
                  andi         s8, t6, -1807
                  xor          t3, tp, t5
                  ori          zero, a6, 346
                  xori         s8, t5, -1546
                  lui          t0, 996608
                  xor          s10, a3, a6
                  ori          a3, tp, -1405
                  lui          tp, 56846
                  srli         a0, zero, 19
                  slti         s3, a4, 589
                  and          sp, s10, sp
                  xori         t0, a4, -1831
                  nop
                  ori          s9, t0, -477
                  sll          a0, t1, s4
                  lui          a6, 1007270
                  sltiu        tp, s9, -1316
                  and          ra, t6, a5
                  srai         s7, t6, 22
                  srli         s6, s6, 23
                  ori          a0, sp, 1332
                  srl          s8, s2, tp
                  srai         s10, s3, 11
                  srli         ra, a3, 2
                  sra          zero, s9, s11
                  slli         s7, s10, 28
                  srl          a2, t6, t3
                  srli         a3, s1, 4
                  sub          a5, t2, s9
                  auipc        a2, 108616
                  or           a0, tp, a5
                  slli         ra, s10, 29
                  srli         s7, sp, 18
                  addi         s9, a1, 741
                  ori          a2, t2, -335
                  ori          s4, a0, -1822
                  srli         t6, a2, 24
                  srai         s9, s4, 7
                  srai         t3, s6, 0
                  srli         a4, s0, 23
                  ori          a1, s2, 1544
                  srai         gp, t2, 6
                  sll          t0, a2, t6
                  sll          sp, a6, s0
                  slti         s10, t0, 1620
                  auipc        s7, 637789
                  srl          s8, a0, t3
                  srai         ra, a3, 31
                  srl          s5, ra, s8
                  or           zero, sp, s7
                  andi         s3, a5, -913
                  lui          sp, 711983
                  lui          t0, 896903
                  andi         a7, t4, 423
                  xori         sp, a1, 1087
                  srl          tp, s8, t3
                  sra          zero, a4, t0
                  slt          a6, a2, a1
                  sra          s8, a0, s10
                  or           t6, t6, s2
                  andi         a0, s0, 1579
                  andi         zero, t1, 497
                  lui          t6, 501286
                  lui          s9, 732459
                  srai         t6, ra, 8
                  lui          a3, 924707
                  sub          gp, s0, zero
                  add          s9, t4, t4
                  srl          t3, a3, s0
                  sltiu        s10, ra, -197
                  slt          a2, tp, s6
                  or           t2, t3, t4
                  xori         a1, t6, -1428
                  xor          s10, t6, t3
                  or           s4, a6, s3
                  add          a7, s6, a5
                  addi         s3, s7, 358
                  ori          a4, a0, 366
                  sll          a2, s1, s2
                  slt          s9, s8, s4
                  sltu         s7, s4, s5
                  or           a6, s4, s11
                  and          tp, s1, a2
                  slti         s4, a3, 1146
                  sll          a5, t1, a0
                  ori          s0, a0, 44
                  andi         t4, t4, 900
                  nop
                  nop
                  slti         a4, a6, 1593
                  xori         s5, s9, 1485
                  xori         s3, s3, -56
                  or           a6, s5, tp
                  addi         gp, s9, -1017
                  slli         a4, t5, 3
                  ori          t1, s3, -916
                  or           a2, ra, t4
                  srli         a5, a6, 22
                  sltu         ra, a5, t6
                  nop
                  slli         a0, tp, 16
                  srl          s7, s9, t0
                  sltu         zero, s8, s2
                  or           a0, sp, s8
                  sltu         zero, t4, s6
                  slti         t6, s4, 518
                  slt          a2, a0, tp
                  ori          s3, a5, 652
                  auipc        gp, 907178
                  xori         s10, a0, 832
                  srli         t1, t0, 19
                  or           zero, a6, s2
                  xor          s0, gp, sp
                  sltu         s5, t6, s3
                  ori          t6, a3, 1940
                  sll          a6, a3, t2
                  xor          t2, zero, a3
                  srai         a1, tp, 31
                  srl          tp, s8, t2
                  ori          a1, s6, -391
                  sltu         t3, a1, a0
                  ori          sp, a6, 1913
                  auipc        a1, 351756
                  srli         s0, tp, 26
                  and          s4, s3, t1
                  addi         s9, s0, -464
                  slli         ra, s7, 24
                  or           s1, s1, a3
                  slti         t3, t1, -587
                  xori         gp, a1, 2010
                  add          t1, t5, s3
                  or           gp, t0, s7
                  andi         s1, s9, 1106
                  sll          s1, t1, tp
                  srai         t1, a1, 14
                  and          s6, t1, t5
                  nop
                  and          a2, s4, sp
                  xori         s6, ra, -1176
                  srli         a5, tp, 13
                  srl          a0, ra, t3
                  add          a1, s3, s10
                  sltiu        t6, zero, 535
                  sltu         t3, t2, a3
                  add          sp, s7, a7
                  slt          a0, t0, s7
                  and          a3, s9, s10
                  sll          zero, a5, s5
                  xor          s7, t4, s5
                  sra          gp, a1, tp
                  slli         t2, a1, 25
                  slli         s9, t5, 11
                  lui          a4, 445290
                  andi         a1, t0, -941
                  sltiu        s10, s8, 524
                  and          t1, sp, t5
                  sltu         sp, s1, s6
                  sub          ra, s6, tp
                  lui          t4, 180327
                  lui          a2, 322270
                  srl          t3, s0, t5
                  srai         t1, a5, 26
                  add          gp, a5, s10
                  andi         ra, t3, -518
                  slti         sp, s10, -110
                  or           s10, tp, a2
                  andi         gp, t5, 1407
                  sll          s0, s0, s10
                  lui          a0, 144189
                  sltiu        s6, a2, 250
                  slt          a1, zero, s1
                  ori          zero, s6, 987
                  add          s0, s9, s11
                  nop
                  add          ra, a5, s7
                  srli         s7, a4, 9
                  andi         a6, s9, 1487
                  or           a5, a6, s4
                  sll          t3, s6, a5
                  add          a4, gp, s2
                  sub          tp, a1, s10
                  ori          a5, s4, 1726
                  auipc        tp, 216304
                  nop
                  lui          s4, 93635
                  srl          a6, s2, s6
                  or           s6, t2, s9
                  add          a6, a3, s9
                  sltiu        ra, t5, -316
                  slti         t1, s1, 1230
                  xor          a0, gp, s5
                  slti         a5, a3, 1938
                  and          gp, a0, t1
                  xor          tp, s1, t6
                  xor          a4, a6, t0
                  sltu         a3, s9, zero
                  lui          t3, 548122
                  ori          s6, t4, 1878
                  slti         a5, t1, -1130
                  ori          s5, t4, -293
                  srli         t1, s2, 16
                  slti         s4, a7, -918
                  xori         t0, a4, -242
                  srli         s9, t0, 25
                  sll          sp, s9, a5
                  add          s7, a6, t5
                  sra          s3, sp, t5
                  sltiu        zero, t1, -897
                  auipc        a1, 140130
                  sltu         s4, t0, tp
                  ori          s7, a5, -1351
                  sub          a5, t6, gp
                  add          tp, a5, s3
                  srli         t1, tp, 15
                  or           t1, a1, a1
                  xor          s6, tp, s6
                  srai         t6, s5, 17
                  add          t4, s9, s1
                  sll          zero, s3, a0
                  sltiu        s8, s11, 1204
                  srai         s7, s3, 25
                  slti         a7, sp, 496
                  srl          t6, t0, s11
                  addi         t0, gp, -620
                  ori          s9, gp, -1743
                  slt          sp, a1, s6
                  lui          s6, 652000
                  srl          zero, a1, a7
                  add          sp, t5, zero
                  slti         s10, zero, -447
                  or           a0, t4, s9
                  or           a6, ra, t1
                  srli         s1, a0, 20
                  andi         a3, t5, -1996
                  slti         tp, a1, 1632
                  sub          t3, sp, sp
                  andi         ra, ra, -595
                  slt          zero, tp, a6
                  sltu         tp, a1, t3
                  srai         a5, s7, 19
                  or           gp, a6, a0
                  sra          s10, s9, t2
                  auipc        t1, 901785
                  slt          a5, t5, t1
                  addi         s0, a0, 392
                  srai         s8, a2, 18
                  xor          s1, a4, t5
                  sub          a1, a4, s1
                  ori          s1, s4, -434
                  nop
                  sra          ra, s10, s11
                  sltiu        t0, t4, -606
                  xori         a5, s3, 1056
                  xori         s1, s10, 189
                  lui          t1, 268232
                  slt          t6, a2, ra
                  srli         s6, s8, 12
                  nop
                  add          s5, a6, ra
                  xori         a6, s8, -429
                  nop
                  andi         gp, a1, -446
                  nop
                  xori         s5, s11, -1761
                  sub          a7, t4, a2
                  nop
                  lui          t3, 63541
                  sltu         sp, a4, s0
                  xori         t2, t6, -651
                  and          a7, a5, a7
                  slti         s7, s2, -383
                  andi         t6, s4, -372
                  addi         sp, t1, -204
                  sll          s4, a0, s4
                  lui          s8, 514358
                  srli         a0, s4, 21
                  srai         a0, t0, 19
                  auipc        a7, 42810
                  slli         a6, a7, 16
                  addi         s0, a6, 627
                  slli         s0, a3, 10
                  sltu         s1, a4, s5
                  add          s6, ra, s0
                  sub          a7, t1, s8
                  srai         t3, s2, 5
                  xor          s6, a2, s11
                  and          zero, tp, ra
                  slli         gp, t6, 1
                  srai         a6, t5, 31
                  sll          s7, a0, s10
                  auipc        t1, 645921
                  sub          a1, tp, s5
                  xori         a6, sp, -1917
                  auipc        s9, 222617
                  slti         t2, gp, 287
                  sltu         s6, t0, s0
                  nop
                  xor          s6, a6, t5
                  nop
                  srli         a5, s5, 6
                  sub          s6, a2, s10
                  or           a5, s0, t6
                  xori         t2, t1, -265
                  srli         a6, a4, 20
                  srli         t6, t2, 26
                  srl          s4, t1, s0
                  sra          a0, a2, s5
                  sra          s1, t0, tp
                  andi         s4, sp, 56
                  sub          a4, t4, s11
                  auipc        ra, 415474
                  sltiu        a1, a2, 1221
                  addi         a5, t5, -497
                  or           a5, a5, s3
                  nop
                  lui          gp, 30145
                  ori          s4, s6, -262
                  addi         tp, t4, -1752
                  slti         a3, s2, 883
                  slti         a5, s3, 109
                  and          s3, s4, a7
                  ori          a1, ra, 432
                  addi         s0, s7, -212
                  xori         a3, t6, 832
                  sub          a5, s1, s1
                  nop
                  sltiu        gp, zero, -520
                  auipc        t6, 535795
                  auipc        a1, 497789
                  lui          sp, 835087
                  and          zero, a4, t0
                  sub          zero, s1, a1
                  ori          a2, a4, 678
                  ori          a3, t4, -1614
                  sltiu        s1, a3, -390
                  sra          tp, t4, t3
                  srli         s6, s6, 7
                  srli         s5, a2, 28
                  nop
                  slt          a4, ra, s10
                  auipc        s7, 10250
                  slti         s1, sp, 1337
                  or           a3, s4, s11
                  nop
                  xori         t4, a4, -1210
                  andi         t1, t0, 1390
                  xori         s10, tp, 1772
                  lui          s8, 351349
                  sra          s5, s1, a0
                  slt          a4, a1, s8
                  sub          s5, tp, t1
                  auipc        t1, 953265
                  lui          s1, 610510
                  srli         t0, s6, 12
                  srai         tp, t1, 20
                  slt          s0, s10, a3
                  andi         a4, a4, 1021
                  auipc        s3, 606900
                  sra          s3, a1, s2
                  or           s7, s4, s3
                  lui          sp, 4013
                  slti         ra, a7, 1531
                  srli         s7, a3, 30
                  auipc        s8, 324218
                  sra          t3, a0, a3
                  nop
                  sltiu        t6, s11, 1925
                  slti         s1, a0, 873
                  srl          gp, t4, s7
                  slt          t2, s5, t1
                  slti         a4, s10, 983
                  srai         a7, a5, 24
                  auipc        zero, 19920
                  ori          s7, s10, 559
                  addi         s0, a2, 459
                  srl          t0, s11, s1
                  auipc        a2, 730397
                  lui          a5, 887504
                  slt          a2, s5, s8
                  slli         t1, zero, 0
                  auipc        t6, 891263
                  auipc        s1, 281552
                  sll          t2, s1, t0
                  addi         a7, a7, 2013
                  lui          s8, 525711
                  srli         s6, s9, 13
                  nop
                  srl          t0, t3, t1
                  sltiu        t4, s1, -1584
                  addi         zero, gp, -1803
                  andi         ra, tp, -1517
                  slti         s7, s5, 187
                  slt          t4, s3, s7
                  srai         s6, ra, 15
                  slli         s1, tp, 5
                  srai         a2, gp, 19
                  slt          t4, a2, s11
                  nop
                  sub          s3, tp, s5
                  sra          s6, a2, s8
                  xori         s1, s0, 68
                  lui          a7, 339422
                  sll          s6, a6, gp
                  srli         s1, s10, 13
                  sltiu        t3, a2, -273
                  nop
                  addi         s10, t0, 674
                  srl          a5, a7, t5
                  lui          t3, 968155
                  srai         a4, a2, 11
                  add          a2, t1, t3
                  auipc        sp, 790952
                  or           t1, s9, s0
                  addi         a6, a4, -347
                  sll          gp, t5, a4
                  or           s1, t0, zero
                  andi         s8, t2, 1574
                  xori         s0, t3, 84
                  sltu         s3, sp, gp
                  srli         ra, sp, 24
                  or           s1, t5, tp
                  lui          a1, 889106
                  sltiu        s4, s3, -1276
                  slli         t2, a7, 29
                  add          a5, s11, a5
                  ori          t3, s11, -1996
                  nop
                  sltiu        t6, s1, 615
                  auipc        sp, 216862
                  or           s6, s6, ra
                  srai         s10, sp, 22
                  andi         t0, s6, -280
                  addi         ra, a4, 606
                  andi         a6, a4, 1798
                  sra          a1, t6, a2
                  xor          a5, s5, s11
                  sll          s10, t1, tp
                  slli         t0, ra, 1
                  sra          t0, a5, s2
                  sub          s10, a6, t1
                  srl          a6, s9, s7
                  sltu         a4, sp, t5
                  srli         s8, t5, 19
                  nop
                  add          ra, a2, a0
                  andi         s0, a0, -1652
                  srl          a7, ra, t3
                  addi         s3, t5, -645
                  sll          a2, s7, t1
                  nop
                  srl          t3, s6, sp
                  and          t6, s9, a2
                  or           t0, tp, a5
                  and          a6, zero, zero
                  sltu         s10, a7, s3
                  slti         s5, s5, -1751
                  srli         sp, t3, 14
                  andi         a6, zero, -1969
                  srli         t0, a2, 31
                  xori         sp, s4, -1365
                  slt          s7, a5, s2
                  sll          tp, gp, s5
                  xori         s6, a7, 1884
                  lui          a7, 818291
                  or           s3, a5, a5
                  ori          s10, a6, 531
                  add          a3, t5, t5
                  sltiu        t3, tp, 700
                  sra          s0, s2, t0
                  srl          t0, s5, s3
                  sll          t1, a3, t3
                  srai         a0, s5, 29
                  slt          t3, s5, a0
                  srl          a6, t0, t4
                  srli         s6, gp, 16
                  srl          t2, a6, a7
                  srai         zero, sp, 7
                  sltu         s4, a2, s9
                  andi         a4, s0, 1300
                  xori         s6, t3, -1347
                  ori          s1, t5, -1145
                  xor          a3, s7, t0
                  xor          a2, t5, tp
                  sra          s5, s2, a1
                  andi         s1, a2, -73
                  xori         a0, t3, 1829
                  lui          s7, 199249
                  slt          s0, t5, s2
                  ori          tp, s10, 371
                  srai         a1, t3, 13
                  slli         gp, a6, 13
                  nop
                  srli         s4, a4, 30
                  xor          s3, a7, t3
                  andi         gp, a0, -365
                  srl          a1, a1, s0
                  slt          a7, a0, sp
                  andi         s4, s8, -292
                  lui          a0, 847022
                  slli         s6, a3, 0
                  slli         a0, s7, 17
                  sra          a3, t4, t3
                  slli         s5, sp, 7
                  sra          t1, t3, s6
                  or           a5, t3, a1
                  sltu         a0, s4, a5
                  add          a3, t3, s3
                  andi         sp, a2, -1608
                  auipc        a3, 487059
                  add          a3, a0, zero
                  auipc        sp, 614702
                  srai         s9, a1, 14
                  slt          s7, t6, a0
                  or           a1, gp, sp
                  slli         s7, t2, 29
                  nop
                  nop
                  sll          s0, s0, s11
                  xori         t1, t5, 1926
                  srli         t0, a1, 21
                  slti         t4, a7, 1726
                  slti         t2, s5, -1633
                  srli         s9, t4, 28
                  lui          s3, 447441
                  sltiu        t4, s10, -972
                  srai         t4, a5, 28
                  sll          a2, t5, a5
                  sltu         a3, s3, s1
                  addi         ra, t6, -83
                  sltu         t2, t5, s1
                  addi         s1, a5, -655
                  add          zero, s4, s10
                  or           t4, t2, s0
                  sltu         zero, a7, zero
                  srai         s9, a6, 11
                  or           sp, a4, s4
                  xori         s9, s11, 878
                  sll          ra, a6, a4
                  sra          s6, s8, t0
                  slli         t3, t1, 23
                  xor          a0, s8, a2
                  srai         s3, s7, 6
                  addi         s9, s10, -1602
                  add          s8, zero, a7
                  xori         s5, a5, 1250
                  srli         s0, t1, 4
                  sll          a3, s8, a7
                  srai         s7, t5, 20
                  and          t0, t5, tp
                  and          t3, s5, gp
                  sltu         a7, t3, ra
                  xor          a4, s11, s4
                  sltu         a7, t3, sp
                  slli         s7, s2, 23
                  auipc        a5, 514713
                  lui          s3, 69305
                  xor          a5, t4, t5
                  srli         tp, s2, 3
                  slli         gp, a0, 20
                  srai         t2, zero, 2
                  ori          a7, gp, -827
                  and          s7, t4, s6
                  srli         s4, s2, 0
                  slli         a2, t2, 0
                  sltiu        tp, s2, 1147
                  sltiu        tp, s1, 661
                  slt          a3, s5, s5
                  sll          s9, s2, t6
                  and          a0, s11, a1
                  slti         sp, zero, 657
                  srai         a4, sp, 5
                  sltiu        t0, s7, 578
                  xor          a0, s3, t1
                  slt          s10, gp, a6
                  andi         s3, t0, 1483
                  add          s5, a7, s4
                  sub          t0, ra, t5
                  srl          s9, s11, a4
                  slli         a3, a7, 4
                  lui          a2, 534314
                  add          a3, t3, a7
                  sll          s9, s5, ra
                  srl          s8, s3, t5
                  nop
                  ori          s5, s7, -129
                  sll          t4, t3, s8
                  srli         a2, t3, 13
                  srli         sp, a2, 25
                  and          s6, t0, s7
                  auipc        s9, 140259
                  andi         sp, a6, -1174
                  xor          t0, t4, t6
                  and          a4, a6, t6
                  or           gp, s11, a2
                  sub          s5, s5, s7
                  addi         s0, a7, -907
                  srl          a2, s10, a6
                  sra          s0, a0, t2
                  slli         t6, t0, 3
                  or           t3, s6, sp
                  ori          a7, t0, 174
                  slli         sp, t0, 23
                  slti         ra, sp, 870
                  srli         sp, t6, 6
                  or           a5, zero, a2
                  andi         t3, s7, 414
                  add          a4, t2, a2
                  sra          ra, s0, a6
                  andi         s8, tp, -1908
                  slli         s4, s9, 4
                  srli         a3, s4, 13
                  xori         sp, zero, 163
                  slli         t6, a1, 13
                  nop
                  lui          t4, 332566
                  sltiu        s3, sp, -1473
                  slti         gp, s2, 1145
                  auipc        s9, 170743
                  ori          sp, s4, 383
                  sub          t3, t0, tp
                  slli         t3, s2, 21
                  xor          t0, s2, t1
                  sra          s0, t4, s5
                  sra          s0, s8, t3
                  and          a2, t4, t0
                  sll          s8, t1, t6
                  add          a2, a5, a6
                  srl          s8, a7, ra
                  sra          gp, a5, s9
                  ori          s10, t5, 1992
                  slli         a5, t6, 8
                  nop
                  slti         t6, s1, 1109
                  sub          s3, s10, t1
                  sra          a7, s5, s4
                  slt          ra, t2, t6
                  srl          t2, tp, a6
                  slti         a3, s4, -1777
                  srli         s7, tp, 18
                  srli         s1, ra, 28
                  andi         t3, s9, 1202
                  srl          tp, s5, s1
                  srl          tp, t4, a7
                  xori         s1, s11, 1944
                  sltu         t4, a7, s7
                  auipc        s0, 960166
                  slt          tp, a5, t1
                  lui          a3, 903589
                  sub          s7, a0, s9
                  sltiu        s5, s6, 1288
                  xor          t4, tp, s8
                  sra          s10, t5, s1
                  sltu         a3, gp, a6
                  sra          s10, t5, a0
                  ori          s8, a4, 342
                  nop
                  lui          s6, 161725
                  ori          s7, s4, -91
                  or           s5, a0, gp
                  lui          sp, 69014
                  sltiu        s7, a0, -1108
                  addi         t4, a1, 11
                  sra          t4, s7, s4
                  srai         t0, a5, 31
                  slt          a6, a0, zero
                  sltu         gp, tp, ra
                  and          s10, ra, a2
                  slli         s9, s7, 25
                  andi         t4, s2, -571
                  andi         zero, s1, 1593
                  add          s3, s10, tp
                  srli         t1, t6, 12
                  lui          t6, 306137
                  add          t4, s1, tp
                  andi         a0, s10, 718
                  xor          t3, s0, sp
                  and          a7, s2, s7
                  sub          t0, a4, t5
                  sll          a1, s4, s11
                  andi         s5, a1, -1780
                  srli         s8, s9, 15
                  addi         a1, t4, -783
                  add          tp, zero, s7
                  xori         s8, a0, 1429
                  srl          a5, s10, a7
                  sltiu        a5, t5, -1655
                  ori          tp, a6, -671
                  nop
                  srli         a1, s8, 18
                  nop
                  andi         s6, s6, 763
                  auipc        t3, 783350
                  slt          s1, s7, a5
                  sra          t0, a7, ra
                  srl          t2, s0, a4
                  or           tp, s7, a7
                  srl          t0, s3, t3
                  slti         t4, s8, -1277
                  slt          s10, t3, t0
                  sll          a6, a5, s6
                  and          s0, a0, a0
                  slti         t6, t0, -799
                  srai         t1, s11, 11
                  sltiu        s4, s9, -1200
                  andi         s5, t2, -1905
                  addi         t6, a5, 1611
                  slti         s5, zero, 1761
                  nop
                  srai         gp, s10, 3
                  nop
                  add          s10, a5, a7
                  srl          s3, s0, a6
                  slt          a3, sp, gp
                  nop
                  sub          a4, s10, a3
                  sub          t0, a3, t1
                  and          s4, s7, t4
                  srli         t3, s10, 11
                  slli         t4, t4, 31
                  addi         t6, t5, -156
                  srli         a2, t6, 6
                  addi         t6, a0, -193
                  lui          tp, 608137
                  nop
                  or           a2, s4, s7
                  xori         t3, t6, 1859
                  ori          s4, a3, -955
                  srli         s0, t4, 10
                  sll          gp, s9, zero
                  lui          s8, 30993
                  sub          s0, t6, s1
                  sll          a1, a5, s3
                  and          a2, s8, t5
                  or           s1, a5, a4
                  xor          zero, zero, t1
                  or           s9, t2, s7
                  sltiu        a4, sp, -1515
                  sll          t1, a5, a6
                  ori          s6, s10, -1402
                  nop
                  srl          t1, s3, a1
                  nop
                  andi         t4, s3, 1746
                  slti         s0, t5, -328
                  ori          s9, a7, -517
                  sll          zero, a0, s10
                  slti         t6, a4, -403
                  srli         a3, t4, 8
                  slt          s0, a7, t6
                  addi         a7, s1, -1382
                  slti         a0, a1, -1488
                  sltu         ra, t5, t3
                  lui          t2, 620554
                  srl          s0, t3, t1
                  slti         a4, s4, -1413
                  srl          s4, s1, s11
                  sub          s0, ra, s10
                  ori          s9, s10, 710
                  slt          t2, t5, ra
                  xori         a1, s2, 981
                  lui          a4, 479783
                  srl          ra, a4, ra
                  auipc        t0, 808034
                  sra          s5, a7, s11
                  nop
                  nop
                  sub          sp, t5, t5
                  srl          s7, s1, t0
                  srai         s10, s8, 10
                  lui          a0, 286907
                  or           t0, t5, s3
                  xori         t0, t0, -429
                  lui          a4, 2575
                  srai         gp, s4, 18
                  sub          s10, s10, ra
                  add          a5, s7, t0
                  sll          s1, t6, s7
                  srli         tp, a1, 7
                  srl          a7, s8, t6
                  xor          s3, gp, sp
                  slti         s1, s9, 15
                  nop
                  slli         a5, sp, 10
                  srli         t3, s7, 25
                  and          gp, s8, t6
                  srai         t3, a2, 27
                  srli         s4, s5, 1
                  srl          t6, t4, s9
                  slli         t6, a1, 24
                  sltu         t3, a7, a6
                  nop
                  srli         a1, s6, 22
                  xor          a6, s0, ra
                  andi         a2, t4, 1359
                  or           t3, zero, a2
                  xori         s6, t1, -649
                  ori          a2, a1, -1612
                  ori          a1, t5, -1890
                  sra          s10, s6, s2
                  ori          a6, a5, 1486
                  srai         s0, tp, 18
                  sltiu        s9, t4, 1609
                  nop
                  sltiu        s10, t2, -353
                  slli         a3, s8, 6
                  sltu         s0, s5, zero
                  sra          s6, a1, gp
                  sltu         t0, a5, t2
                  slli         t6, s3, 2
                  sub          s10, a0, s11
                  addi         s7, s1, -1382
                  ori          s3, s5, 1232
                  ori          a1, s7, -833
                  addi         t4, sp, 438
                  and          s3, s0, zero
                  auipc        t4, 900541
                  sra          a4, sp, t3
                  add          a6, a5, a2
                  sll          a0, zero, s9
                  slti         a5, a7, 446
                  andi         t0, s2, -630
                  xori         a0, s0, 1936
                  add          t1, s10, t5
                  sltu         s4, t0, s0
                  sll          a7, tp, s9
                  xor          a6, sp, a6
                  sll          a6, t0, sp
                  lui          gp, 716140
                  slti         s1, s9, -533
                  xor          s7, zero, s4
                  slt          a6, s11, s1
                  auipc        s5, 860495
                  slt          a2, tp, s10
                  slti         a1, gp, 855
                  sub          s1, t5, a2
                  sub          t6, gp, gp
                  srl          s0, zero, a0
                  slli         t0, t6, 1
                  xori         s1, ra, -1442
                  nop
                  slli         a4, s2, 7
                  lui          a3, 799151
                  sltu         a0, s4, t6
                  addi         s4, a7, -523
                  add          a5, s1, s6
                  xor          a0, t0, a7
                  addi         s8, tp, -126
                  slt          ra, a1, s10
                  sra          s4, a5, t0
                  auipc        a7, 620624
                  srli         sp, s9, 0
                  sltu         s7, a7, s10
                  xori         gp, a7, 1051
                  xor          zero, a0, s0
                  nop
                  srl          a7, s11, s6
                  sltu         s7, t3, t3
                  slt          a2, t6, s8
                  sltiu        zero, s11, 131
                  sub          a2, s1, tp
                  slt          s5, a2, s1
                  or           s6, a4, t1
                  addi         ra, a1, -434
                  xor          sp, s3, zero
                  lui          t6, 438733
                  andi         a0, t4, -1890
                  sub          gp, gp, t6
                  sra          sp, s4, t6
                  sltiu        a3, a5, 250
                  addi         s9, gp, -310
                  lui          t0, 47853
                  sltiu        t3, s5, -1958
                  or           t1, ra, t4
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x30, x27, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x20, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x20, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x20, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x20, x28, ecall_handler
                  li x28, 0x1
                  beq x20, x28, instr_fault_handler
                  li x28, 0x5
                  beq x20, x28, load_fault_handler
                  li x28, 0x7
                  beq x20, x28, store_fault_handler
                  li x28, 0xc
                  beq x20, x28, pt_fault_handler
                  li x28, 0xd
                  beq x20, x28, pt_fault_handler
                  li x28, 0xf
                  beq x20, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
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
                  add x27, x30, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x30, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x30, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x27, x30, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x27, x30, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x27, x30, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
