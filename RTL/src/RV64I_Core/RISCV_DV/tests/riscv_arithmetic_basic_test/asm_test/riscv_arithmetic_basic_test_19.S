.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 1
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
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0xfc9889ac
                  li x3, 0x9
                  li x4, 0x80000000
                  li x5, 0xe
                  li x6, 0x0
                  li x7, 0xa7256941
                  li x9, 0xf9156e57
                  li x10, 0x0
                  li x11, 0x8
                  li x12, 0xc
                  li x13, 0xa
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0xf48ef54a
                  li x17, 0xa72ad60c
                  li x19, 0xf44d5d45
                  li x20, 0x8
                  li x21, 0xb428d483
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x1
                  li x26, 0x0
                  li x27, 0xe078ea41
                  li x28, 0x960a8f9a
                  li x29, 0x9
                  li x30, 0x3c08c68b
                  li x31, 0x6
                  la x8, user_stack_end
main:             li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           s4, 0x67fbe25c
                  li           gp, 0xffffffff
                  li           tp, 0xffffffff
                  li           s3, 0x80000000
                  li           t5, 0x520ca1a4
                  li           t0, 0xffffffff
                  li           s1, 0x0
                  li           sp, 0x0
                  li           s11, 0x0
                  sub          t2, s4, s11
                  add          gp, s4, s11
                  auipc        sp, 519428
                  auipc        sp, 37592
                  add          s3, s4, s11
                  add          t5, sp, s1
                  auipc        s1, 288753
                  nop
                  addi         s11, t0, 1770
                  lui          t5, 1033341
                  add          sp, gp, s11
                  auipc        t5, 655289
                  addi         s4, tp, 1447
                  sub          t2, t5, s4
                  nop
                  addi         t5, s4, 1994
                  addi         sp, t5, 1825
                  lui          t5, 876129
                  nop #end riscv_int_numeric_corner_stream_15
                  li           a7, 0x7049d2cc #start riscv_int_numeric_corner_stream_2
                  li           a5, 0x0
                  li           t4, 0x0
                  li           a1, 0x0
                  li           s5, 0x0
                  li           s8, 0x0
                  li           t1, 0x80000000
                  li           t2, 0xffffffff
                  li           s10, 0xffffffff
                  li           t3, 0x80000000
                  lui          s8, 727954
                  addi         a7, s8, -1021
                  addi         s5, a5, 402
                  auipc        a5, 516094
                  lui          a7, 232656
                  addi         s8, t2, -1216
                  addi         t3, s10, -1856
                  nop
                  add          a5, t3, s5
                  lui          s10, 510944
                  addi         t1, a1, -610
                  addi         t4, t4, -1196
                  sub          t4, s5, a5
                  addi         a7, a7, -458
                  addi         t3, a1, -507
                  nop
                  sub          t2, t3, t1
                  nop
                  nop
                  addi         a1, t4, 583
                  auipc        a7, 5982
                  auipc        s8, 190422
                  addi         s5, t2, 193
                  lui          a1, 1037876 #end riscv_int_numeric_corner_stream_2
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s7, 0x0
                  li           s4, 0x80000000
                  li           t5, 0x0
                  li           tp, 0x4a40651e
                  li           a0, 0x37f96d5c
                  li           t6, 0x80000000
                  li           a7, 0xffffffff
                  li           a2, 0x80000000
                  li           t1, 0x0
                  lui          t1, 543940
                  nop
                  nop
                  addi         tp, a0, -810
                  add          tp, s4, s4
                  lui          a2, 535175
                  nop
                  addi         a0, tp, 545
                  addi         t5, s4, 374
                  addi         a7, tp, 1119
                  auipc        t5, 1029615
                  addi         a7, a2, 1608
                  lui          a7, 139934
                  add          tp, s4, tp
                  addi         s7, tp, 1920 #end riscv_int_numeric_corner_stream_14
                  li           t2, 0x6c473958 #start riscv_int_numeric_corner_stream_8
                  li           s7, 0xffffffff
                  li           a1, 0xffffffff
                  li           a2, 0x0
                  li           a3, 0x80000000
                  li           s4, 0x0
                  li           gp, 0x0
                  li           s8, 0x0
                  li           t1, 0xffffffff
                  li           a7, 0x80000000
                  addi         s4, gp, 914
                  nop
                  sub          a1, gp, a3
                  sub          a3, s7, a3
                  add          t2, gp, s4
                  nop
                  nop
                  add          gp, t2, s8
                  lui          a2, 281130
                  nop
                  addi         s7, s4, 1443
                  auipc        gp, 217912
                  auipc        a7, 1017271
                  lui          s7, 757828
                  auipc        s8, 584014
                  nop
                  addi         s4, a2, 2034
                  sub          a2, s4, a3
                  addi         a1, t1, 531
                  auipc        a1, 321444
                  auipc        a7, 197495
                  lui          t1, 806206
                  addi         gp, t1, -1676 #end riscv_int_numeric_corner_stream_8
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s5, 0x80000000
                  li           s11, 0x80000000
                  li           s1, 0x80000000
                  li           sp, 0xffffffff
                  li           s10, 0x0
                  li           t6, 0x80000000
                  li           a2, 0x259880a8
                  li           a5, 0xffffffff
                  li           t1, 0x4067af7
                  addi         sp, sp, -665
                  sub          a5, t6, sp
                  add          a5, sp, sp
                  add          sp, s1, s10
                  auipc        a2, 1045816
                  sub          t6, s10, s3
                  auipc        t1, 1008475
                  add          a2, a5, t6
                  sub          a5, a5, t1
                  lui          s1, 107143
                  auipc        s10, 449767
                  sub          s5, a2, a5
                  auipc        t6, 364076
                  lui          s11, 663594
                  auipc        sp, 653006
                  sub          s3, s10, s3
                  lui          sp, 941121
                  nop
                  add          s5, t6, s11
                  lui          s5, 456723
                  addi         a5, s1, -207
                  sub          s1, s1, s11
                  auipc        s5, 632929 #end riscv_int_numeric_corner_stream_11
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           a1, 0x0
                  li           t0, 0x0
                  li           tp, 0x80000000
                  li           t4, 0xffffffff
                  li           a5, 0xffffffff
                  li           a7, 0x866bb4ba
                  li           s4, 0x298f4b36
                  li           s11, 0xcd5acfba
                  li           ra, 0x204dab68
                  lui          ra, 690860
                  nop
                  sub          s10, t4, t4
                  sub          s4, a5, a5
                  add          s4, s11, s4
                  nop
                  lui          tp, 637001
                  lui          s11, 107100
                  addi         tp, t0, 35
                  auipc        a5, 368563
                  nop
                  auipc        a5, 153797
                  add          t0, a5, ra
                  lui          s4, 604413
                  addi         ra, s11, 285 #end riscv_int_numeric_corner_stream_0
                  li           a5, 0x51da2fd4 #start riscv_int_numeric_corner_stream_9
                  li           s3, 0x80000000
                  li           t4, 0x0
                  li           a7, 0x80000000
                  li           s7, 0x143b78ff
                  li           a0, 0x0
                  li           a1, 0xffffffff
                  li           s1, 0xa01d4987
                  li           s10, 0x0
                  li           t0, 0x80000000
                  auipc        a0, 647556
                  lui          s7, 758406
                  auipc        t0, 169129
                  auipc        t0, 731901
                  add          t4, a1, a5
                  lui          s10, 72555
                  lui          t4, 365829
                  add          a7, a1, t4
                  sub          s10, a5, t0
                  sub          s3, a5, s7
                  lui          a1, 751166
                  nop
                  nop
                  lui          t0, 287295
                  addi         a7, s7, 479
                  sub          s3, s10, a0 #end riscv_int_numeric_corner_stream_9
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s1, 0x80000000
                  li           a0, 0xffffffff
                  li           s8, 0xdff256ab
                  li           s5, 0xd805c176
                  li           s9, 0xffffffff
                  li           t0, 0x727d5fa0
                  li           sp, 0xe604bccc
                  li           a4, 0x234b6675
                  li           t5, 0x7bd1f6a6
                  nop
                  addi         s8, s9, 756
                  sub          sp, a0, sp
                  sub          s9, a0, s8
                  nop
                  auipc        s5, 442321
                  addi         t5, t5, 1196
                  sub          a0, s8, s1
                  nop
                  lui          t0, 767133
                  addi         s8, s8, -1172
                  add          a4, t6, s5
                  nop
                  sub          t0, a4, a4
                  addi         s9, a4, -69
                  auipc        s1, 254409
                  addi         s8, t0, 428
                  add          s1, a4, s9
                  nop
                  addi         a4, s8, -1587
                  addi         t5, s8, -512
                  add          t6, t0, s5
                  addi         sp, s1, -347
                  add          s9, a4, a0
                  sub          sp, t5, sp #end riscv_int_numeric_corner_stream_17
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           s10, 0xffffffff
                  li           a7, 0xffffffff
                  li           tp, 0xffffffff
                  li           s7, 0x5c55c4df
                  li           a5, 0xffffffff
                  li           t6, 0x0
                  li           t5, 0x80000000
                  li           a0, 0x3fa2eaf1
                  li           a2, 0x0
                  lui          s7, 554622
                  add          tp, a2, s7
                  addi         s10, a5, -1828
                  nop
                  sub          a2, a5, t1
                  auipc        tp, 774531
                  add          a2, a7, a7
                  nop
                  auipc        t6, 247587
                  lui          a2, 620494
                  add          t5, a0, a0
                  nop
                  add          t1, a5, a7
                  auipc        tp, 395012
                  auipc        s7, 628190
                  auipc        t6, 493553
                  auipc        t1, 898299
                  lui          t6, 754030
                  lui          s7, 430000
                  auipc        tp, 113938
                  lui          a2, 462898
                  lui          s10, 745573
                  add          a0, s7, t6
                  nop #end riscv_int_numeric_corner_stream_16
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           gp, 0x618ee9b6
                  li           s1, 0xffffffff
                  li           t4, 0x80000000
                  li           a2, 0x3f45f561
                  li           t3, 0xffffffff
                  li           a3, 0x80000000
                  li           t5, 0x9a5b7cc3
                  li           a0, 0xdb4ba003
                  li           s5, 0x80000000
                  auipc        t1, 105282
                  add          t3, a3, s5
                  add          a0, a2, a0
                  add          a2, a2, t4
                  addi         t3, gp, -1564
                  sub          s1, gp, s5
                  auipc        t5, 12716
                  sub          t3, t4, a0
                  lui          s5, 872608
                  nop
                  nop
                  lui          a3, 295392
                  auipc        t4, 459518
                  nop
                  lui          gp, 828324
                  auipc        a3, 869245
                  sub          a0, gp, a0
                  lui          a3, 145803
                  add          t4, a0, s5
                  auipc        a0, 921001
                  nop
                  nop
                  add          s1, a2, a3
                  nop
                  nop
                  nop
                  lui          a0, 627619
                  nop #end riscv_int_numeric_corner_stream_3
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           t5, 0x80000000
                  li           t2, 0xffffffff
                  li           a0, 0x0
                  li           s4, 0x80000000
                  li           s10, 0xffffffff
                  li           ra, 0x80000000
                  li           s11, 0x0
                  li           s7, 0x80000000
                  li           a1, 0xffffffff
                  lui          a0, 230309
                  nop
                  lui          ra, 855672
                  add          s11, a0, s11
                  nop
                  lui          t2, 779093
                  auipc        ra, 753720
                  lui          ra, 183839
                  add          a0, s10, a0
                  sub          a0, s7, s7
                  nop
                  nop
                  auipc        s4, 721740
                  addi         s4, a0, -30
                  nop
                  sub          s7, a0, s11
                  addi         s11, s10, 58
                  sub          s4, s4, s7
                  addi         t2, t5, -2027
                  auipc        ra, 660644
                  sub          a0, s4, s3
                  add          s3, t2, s7
                  nop #end riscv_int_numeric_corner_stream_1
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           a1, 0x80000000
                  li           s6, 0x80000000
                  li           s5, 0x0
                  li           s4, 0x25effec
                  li           gp, 0xffffffff
                  li           s10, 0xffffffff
                  li           t3, 0x0
                  li           a2, 0xffffffff
                  li           a3, 0x0
                  nop
                  addi         t3, s4, 1883
                  auipc        t3, 182213
                  add          s4, s4, gp
                  lui          gp, 417163
                  sub          s10, t3, t3
                  sub          s5, s5, t3
                  add          t3, gp, a2
                  addi         s3, s4, -2018
                  sub          gp, s3, t3
                  auipc        gp, 314992
                  add          a2, a1, gp
                  sub          s3, t3, gp
                  lui          a1, 1012990
                  sub          s4, s3, a1
                  auipc        t3, 729991
                  nop
                  auipc        s4, 258016
                  sub          a1, t3, s5
                  add          s3, s3, s3
                  nop
                  addi         s10, a2, 221
                  nop
                  sub          s5, a1, s4
                  auipc        s5, 877067 #end riscv_int_numeric_corner_stream_19
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           t3, 0x80000000
                  li           t5, 0x7b95c32c
                  li           s3, 0x7a3b0e89
                  li           a2, 0xffffffff
                  li           s1, 0xffffffff
                  li           t0, 0x76fd4183
                  li           tp, 0x80000000
                  li           s11, 0x80000000
                  li           a1, 0x0
                  auipc        a1, 350085
                  lui          a1, 657505
                  sub          tp, t5, t0
                  auipc        t3, 316468
                  nop
                  lui          t3, 768532
                  addi         t5, t5, -1526
                  auipc        a2, 323356
                  auipc        a2, 944962
                  addi         t0, s3, 1527
                  sub          t3, a1, s3
                  addi         s11, t0, 1802
                  add          t3, a1, t3
                  lui          t2, 345111
                  addi         s1, a2, -804
                  auipc        s11, 667318
                  nop
                  auipc        t0, 491681
                  add          s3, s3, s11 #end riscv_int_numeric_corner_stream_10
                  li           t0, 0x289fd01f #start riscv_int_numeric_corner_stream_18
                  li           s11, 0x66e4d8dc
                  li           s10, 0xffffffff
                  li           s3, 0x879932b3
                  li           t5, 0x80000000
                  li           t4, 0xffffffff
                  li           s4, 0x0
                  li           s9, 0x0
                  li           a7, 0x80000000
                  li           tp, 0x0
                  sub          tp, s3, s9
                  addi         s11, s11, 1377
                  add          t4, s11, s9
                  nop
                  nop
                  addi         a7, s4, -255
                  lui          s11, 526204
                  add          s3, s4, t5
                  lui          s11, 125277
                  nop
                  auipc        a7, 31849
                  lui          s4, 138196
                  auipc        s11, 255149
                  add          t0, s3, s10
                  add          a7, t0, tp
                  auipc        t4, 169603
                  auipc        s3, 461072
                  lui          s11, 521449
                  addi         s11, t4, -426
                  sub          t5, tp, s3
                  addi         s11, s10, -1001
                  nop
                  lui          s11, 534521
                  sub          s11, a7, tp
                  sub          s4, t0, s11
                  nop #end riscv_int_numeric_corner_stream_18
                  srl          s7, t3, t3
                  xori         s3, t6, 1137
                  andi         tp, zero, -244
                  sra          a7, t4, a5
                  andi         a4, s10, -1566
                  srai         a3, t4, 7
                  andi         t6, a3, -27
                  andi         a1, s2, -813
                  sltiu        a4, s10, 1660
                  slti         a0, s9, 1644
                  andi         a5, ra, -86
                  slti         a5, t5, 709
                  lui          t1, 947594
                  sltiu        zero, a7, -1247
                  auipc        tp, 606265
                  sltu         t0, s5, a6
                  srai         a4, a1, 29
                  xori         t5, s8, 1598
                  add          a1, s9, sp
                  lui          ra, 197279
                  sltiu        t3, zero, -1679
                  lui          t3, 36581
                  sltiu        s5, s0, 1357
                  sll          gp, t4, s0
                  xor          a4, s8, t2
                  add          a3, s6, s1
                  slli         tp, sp, 9
                  sll          ra, gp, s4
                  sltiu        s6, a4, 2016
                  srai         ra, t2, 3
                  auipc        a0, 1046141
                  srai         s9, s10, 5
                  andi         s5, a1, 2019
                  sltu         s5, t0, t3
                  sub          a4, s11, t6
                  addi         a2, t4, -76
                  and          a4, zero, gp
                  sltiu        t3, s3, 1335
                  srai         s7, s8, 18
                  srl          s1, s1, a0
                  sltu         tp, s4, gp
                  xori         gp, a7, 1451
                  or           t6, tp, t0
                  slt          a7, t1, s8
                  ori          zero, a6, 981
                  andi         zero, a0, -1279
                  ori          ra, a5, 1249
                  and          a2, s5, a0
                  sll          t6, s3, s6
                  xori         s9, s3, -240
                  add          gp, s11, a5
                  sltu         s10, s3, s9
                  srai         s11, s2, 30
                  xor          a4, a1, s4
                  sra          t2, s9, s4
                  sra          t3, ra, tp
                  lui          a4, 997403
                  sub          t0, t6, t1
                  auipc        s8, 429376
                  addi         s8, s3, 1134
                  ori          a7, s4, -871
                  srl          t0, s9, a2
                  srai         a3, a0, 3
                  xori         sp, zero, 505
                  and          s11, s9, a0
                  xor          s6, t0, a0
                  lui          sp, 608932
                  srli         a2, a3, 30
                  andi         ra, a1, -1677
                  nop
                  ori          a1, t3, 1407
                  ori          s6, s3, 1283
                  add          s4, s7, ra
                  sltiu        t5, sp, 219
                  sltu         gp, a7, s5
                  slti         s4, t3, -1404
                  addi         s1, ra, 1542
                  add          a2, a4, a0
                  nop
                  ori          s1, t6, -1280
                  slli         a1, t2, 27
                  srai         a1, t6, 17
                  xor          s8, ra, s8
                  lui          t3, 505004
                  sll          t6, s4, ra
                  sub          s5, t3, s9
                  and          sp, a1, ra
                  slti         t1, s10, 127
                  auipc        a5, 796543
                  lui          t0, 799153
                  or           a1, s10, sp
                  slt          t4, sp, t2
                  add          t5, s0, s7
                  xor          zero, t2, ra
                  add          a5, t1, a6
                  xor          a2, s11, t5
                  xori         s10, s5, 1722
                  nop
                  srl          zero, s11, t6
                  lui          sp, 338848
                  xor          s1, t5, s10
                  xor          s11, t4, a4
                  ori          a7, a3, -1568
                  slli         t0, s9, 13
                  lui          tp, 122437
                  sltiu        zero, s4, -244
                  slti         ra, s5, -1652
                  lui          t2, 27675
                  slli         a2, a3, 27
                  sra          sp, s6, ra
                  lui          a0, 447809
                  sll          tp, a2, t1
                  and          t6, s9, t1
                  ori          s3, s2, -835
                  and          zero, tp, s10
                  xori         t2, t4, -103
                  andi         s3, s11, -666
                  or           t0, s2, t6
                  addi         a5, t3, -1649
                  add          s11, a3, a0
                  add          s4, sp, a5
                  nop
                  sltiu        gp, s5, 69
                  or           s5, s7, a3
                  sra          s9, a3, s2
                  sltiu        s10, s4, -384
                  sub          gp, a4, s2
                  srli         s4, s1, 8
                  addi         gp, t6, -1922
                  srl          a4, t3, t3
                  sltu         s8, a3, ra
                  slt          s9, t3, s9
                  srai         a3, a2, 1
                  slt          t5, a5, s4
                  xori         s5, t2, -1165
                  addi         t5, s2, -340
                  sltu         s10, t0, a0
                  srai         a2, s5, 22
                  slt          t1, t2, ra
                  and          zero, sp, t6
                  or           zero, s5, s3
                  srl          zero, zero, t2
                  xori         a5, s7, 684
                  or           s8, s10, s10
                  xori         s8, s6, -1175
                  srai         a5, t1, 31
                  srl          s1, s0, s0
                  auipc        s4, 412823
                  or           s6, tp, s10
                  add          s7, a6, s1
                  addi         s8, t1, 661
                  xori         zero, zero, 901
                  or           s3, a2, t3
                  ori          s4, s1, 1358
                  srai         gp, s7, 29
                  nop
                  add          zero, ra, s10
                  slli         a3, t0, 26
                  sltiu        s9, tp, 161
                  sra          t0, t2, zero
                  sll          s10, s7, s3
                  slt          s1, a1, s0
                  sll          a2, s3, t2
                  sltu         a1, a1, t0
                  lui          t3, 165395
                  ori          a7, s3, -929
                  sltiu        t2, s11, 62
                  sll          zero, a0, s11
                  ori          s5, s6, 955
                  sub          a4, t2, s5
                  sltiu        s5, t1, 1583
                  addi         t0, a5, -1644
                  and          a0, a1, t3
                  andi         s4, s8, -1690
                  add          t2, a7, t5
                  addi         s6, a3, 1069
                  nop
                  add          s7, tp, s10
                  srli         ra, a0, 2
                  ori          a2, s0, -936
                  ori          s5, s11, 842
                  sub          s3, t5, s2
                  sra          t0, t1, s1
                  sltu         s7, s8, a3
                  addi         t0, tp, 336
                  sll          a7, t4, s9
                  xor          s7, a3, s2
                  andi         t6, t3, -139
                  xor          gp, t4, a7
                  addi         s3, s7, -192
                  xor          s9, s11, s11
                  ori          t2, s9, 1954
                  xor          a7, s4, a6
                  slt          s7, a1, t4
                  nop
                  ori          s4, s7, -226
                  srai         t0, s0, 12
                  and          a0, t2, s10
                  srl          t0, a6, gp
                  xori         s6, t3, 1478
                  sltu         s4, t2, gp
                  andi         a2, t5, 839
                  or           a2, s2, s6
                  or           t5, a5, s2
                  srai         a2, s7, 16
                  sra          s7, a3, a6
                  sub          s10, a6, s0
                  lui          s6, 416416
                  sra          t3, s6, t4
                  andi         tp, s8, -216
                  sll          a7, s9, a7
                  slti         a2, s5, 218
                  addi         t0, t0, -311
                  srl          t2, t5, t2
                  srli         zero, s9, 16
                  sra          t5, s1, t2
                  sra          t5, a4, a1
                  srli         zero, t6, 8
                  srli         s1, s5, 26
                  sll          t5, s3, a3
                  sltiu        s8, s2, -1718
                  slt          s6, sp, s9
                  xor          t1, gp, s4
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           s4, 0x0
                  li           sp, 0x0
                  li           s5, 0xffffffff
                  li           s1, 0xffffffff
                  li           s6, 0xa1c84a11
                  li           s3, 0x0
                  li           a7, 0xffffffff
                  li           t5, 0x80000000
                  li           t1, 0xffffffff
                  sub          t1, t5, s4
                  add          sp, sp, t5
                  nop
                  auipc        s5, 623013
                  lui          s1, 161101
                  nop
                  sub          s3, s4, a3
                  addi         a7, t5, -236
                  add          t1, a3, t1
                  nop
                  addi         a7, a7, -871
                  auipc        s5, 104499
                  sub          s3, s1, s1
                  addi         a3, s1, -1912
                  sub          s4, a3, sp
                  addi         t5, s3, -1618
                  add          s3, s3, s6
                  sub          t1, s5, s6
                  nop
                  lui          t5, 348061
                  lui          sp, 246843 #end riscv_int_numeric_corner_stream_12
                  slti         s9, a5, -1932
                  sltiu        gp, s1, -1059
                  nop
                  lui          zero, 459836
                  slti         a0, a1, 1014
                  auipc        t0, 650688
                  lui          s1, 877518
                  sll          s11, gp, a7
                  srai         ra, sp, 16
                  addi         a7, s3, 740
                  srai         s9, s6, 10
                  add          a3, tp, s7
                  auipc        s9, 282225
                  add          s10, t5, s1
                  slti         s7, a3, -425
                  slli         a3, a2, 0
                  addi         s3, a0, -1355
                  and          t5, s4, ra
                  srai         a5, t5, 17
                  slli         ra, t3, 25
                  sltiu        a5, sp, -857
                  and          t1, t1, tp
                  sltiu        tp, zero, -901
                  slti         t1, a7, -1382
                  srai         a2, s9, 14
                  addi         t4, a0, -1566
                  srai         t3, a2, 3
                  ori          a5, zero, -347
                  slli         s3, a6, 19
                  slt          t0, t0, a4
                  sra          s11, s7, t1
                  slli         s11, s7, 14
                  srai         a0, t5, 31
                  slti         s7, t3, -259
                  sll          a2, a0, t0
                  srl          t3, t3, t4
                  xori         a2, a2, -5
                  sll          zero, t1, zero
                  sltiu        a5, s0, -858
                  xor          s8, a6, a4
                  andi         a1, s0, -192
                  or           s7, s8, a4
                  sra          zero, t1, t2
                  xor          ra, gp, s5
                  andi         s8, s7, 1664
                  auipc        a4, 861407
                  sll          s6, t1, s10
                  nop
                  sll          s10, a3, a1
                  sub          a2, a4, a3
                  auipc        t6, 168836
                  lui          s4, 422905
                  nop
                  srai         zero, a6, 13
                  ori          s9, s9, 1721
                  srl          s10, s11, a0
                  add          t1, s5, a0
                  slt          t3, a2, a2
                  xori         gp, a7, -1369
                  sra          s8, s6, sp
                  and          t1, a2, s7
                  ori          sp, ra, -1902
                  nop
                  srli         s8, t6, 2
                  xor          s6, s11, s4
                  xor          t5, s7, s9
                  auipc        t4, 44895
                  srai         t4, sp, 21
                  xor          t5, t0, s2
                  addi         a0, s4, -1988
                  xori         t0, ra, -214
                  add          t5, s7, t4
                  andi         a3, s11, 900
                  xori         sp, s6, -1821
                  srai         s5, s5, 28
                  sub          a0, ra, s8
                  auipc        t2, 169386
                  or           a7, a4, t3
                  addi         s8, sp, -1626
                  slti         a1, t2, 1871
                  and          s1, s8, s2
                  nop
                  slt          a3, t1, s7
                  sll          ra, s1, a7
                  xori         s8, a5, -1517
                  slt          a0, a2, sp
                  sltu         ra, tp, a4
                  srai         s4, a2, 2
                  xori         zero, s8, 1978
                  sll          a4, t3, a1
                  addi         tp, s0, 1742
                  and          s9, ra, gp
                  sub          t4, s0, gp
                  or           a7, zero, s6
                  srai         t3, t3, 6
                  srli         sp, a0, 5
                  srl          s5, s7, s10
                  add          t1, s2, t1
                  slt          t2, t5, s7
                  sll          t4, s7, t6
                  or           s3, t2, s0
                  slli         a1, t5, 30
                  srai         s10, t3, 3
                  and          gp, t1, s4
                  and          a1, s3, tp
                  lui          tp, 500682
                  andi         s4, tp, 761
                  sub          s8, s0, t3
                  sll          s3, s11, s5
                  slli         a2, s9, 14
                  auipc        a4, 106026
                  or           a0, t2, a6
                  sltu         a7, t2, a2
                  srl          gp, gp, s2
                  xori         s10, t0, -536
                  slti         s6, s1, -1022
                  nop
                  andi         t1, s2, -1309
                  auipc        a7, 60248
                  slt          t0, sp, s0
                  srl          s6, s3, a3
                  sll          a7, s7, a3
                  lui          s1, 318903
                  srai         a2, t5, 27
                  nop
                  sltu         tp, s0, s1
                  or           t2, a7, t0
                  sltiu        a1, t2, -1647
                  and          t6, a7, a7
                  and          t0, sp, t4
                  slli         s7, s5, 25
                  and          s5, a7, tp
                  xori         a2, a5, -855
                  add          t0, tp, s1
                  slt          s11, sp, zero
                  or           s7, s8, s6
                  add          s5, t3, gp
                  sll          s4, s1, s6
                  lui          gp, 757312
                  lui          tp, 725944
                  slt          t2, tp, t2
                  andi         t5, a3, -808
                  slt          s1, s9, a1
                  lui          a1, 37646
                  lui          a2, 217217
                  slti         s3, a3, -1318
                  sltu         t6, a2, a4
                  addi         s8, sp, 1323
                  auipc        a4, 802187
                  addi         a7, t1, 1961
                  addi         t2, s9, -1793
                  lui          s5, 22802
                  sll          s6, sp, a4
                  srai         s10, t2, 2
                  xori         s4, gp, -1428
                  slti         a4, s3, -691
                  sra          s11, t2, s1
                  lui          s9, 134259
                  srl          sp, s5, t2
                  slt          t1, s11, a6
                  slti         t3, s9, -1971
                  xor          zero, sp, t4
                  auipc        s6, 878127
                  lui          t2, 451745
                  srl          t6, a0, a7
                  sub          s5, t5, s10
                  slti         t3, t5, 1234
                  lui          a0, 987825
                  srai         a0, a5, 31
                  srl          s11, s5, t2
                  xori         s10, t4, -1480
                  sra          s7, t3, t0
                  srl          a1, s11, t5
                  srli         a1, ra, 22
                  xor          t3, a6, a7
                  or           t3, s9, a2
                  sub          sp, s5, a4
                  sra          tp, a6, a1
                  srl          t6, s5, t3
                  or           a4, s2, s3
                  ori          a5, s4, -1344
                  andi         t0, zero, 1012
                  add          s4, a4, a0
                  addi         s6, t4, -267
                  add          sp, a4, a2
                  and          ra, s6, t0
                  srai         s7, a1, 14
                  add          a5, a1, a2
                  andi         t6, t5, 930
                  slti         a3, a6, 1113
                  slli         s10, a2, 9
                  sra          a3, a3, a1
                  sub          a0, s1, s7
                  slli         s5, s1, 31
                  ori          a5, t6, -959
                  lui          a3, 969399
                  srl          t6, a0, a1
                  sltiu        t5, s11, 77
                  sltiu        sp, t4, 172
                  xori         t3, s0, -2017
                  xori         a4, gp, -1404
                  sltiu        a4, s3, -431
                  slt          s6, a7, sp
                  sub          s5, s8, s1
                  lui          a5, 541952
                  sltu         s8, s7, a7
                  slti         t5, t2, 1771
                  sub          t1, a0, a6
                  xor          s3, t3, sp
                  addi         s9, zero, 193
                  addi         a2, s5, -569
                  srl          s4, s9, s6
                  sltu         s11, a3, zero
                  srl          a5, gp, gp
                  srli         t6, t0, 15
                  or           s4, s3, s0
                  or           a3, s7, s2
                  andi         zero, s6, -912
                  sltu         a4, s4, s1
                  add          s4, s0, t2
                  lui          s1, 668624
                  and          zero, s5, tp
                  sltu         s6, ra, s5
                  srli         a7, s10, 23
                  srli         s8, s9, 14
                  sub          zero, sp, ra
                  nop
                  slli         s6, a0, 24
                  addi         a4, s4, 2006
                  andi         s11, s9, -385
                  andi         a4, s5, -1887
                  andi         gp, a0, 1560
                  srl          s1, t5, t1
                  slli         s4, gp, 13
                  slt          a0, t1, a4
                  sltu         sp, t5, s6
                  xori         s1, s11, 1190
                  lui          a3, 259409
                  or           s6, a4, s11
                  sltiu        a3, sp, 234
                  lui          a3, 463692
                  nop
                  sltiu        s6, a4, -1618
                  nop
                  slt          s10, a7, a6
                  xor          sp, a2, s3
                  xori         s1, a6, -1503
                  and          s11, t0, a7
                  slti         a7, t6, -1056
                  srai         a5, t1, 23
                  sltiu        a5, a1, 1978
                  sub          s10, s1, a0
                  sra          t4, a0, a1
                  sltu         s7, s6, s3
                  andi         a2, t1, 184
                  sub          gp, ra, gp
                  slli         a5, t5, 18
                  slt          s4, a1, a4
                  nop
                  sub          s10, s0, a3
                  srai         sp, a6, 27
                  ori          a3, a2, 822
                  lui          t0, 752449
                  addi         s4, a7, 89
                  addi         s9, a1, -189
                  sub          sp, t3, a4
                  slli         a2, a4, 8
                  slt          t1, t6, s4
                  slt          a0, s4, tp
                  sltiu        t3, a1, 1375
                  nop
                  or           a2, s5, a0
                  sltiu        sp, a5, 130
                  ori          s7, s5, 743
                  xor          a5, ra, s4
                  addi         a3, a2, 1664
                  xori         gp, t3, 183
                  and          a7, gp, t0
                  or           a5, s11, s3
                  slti         t6, zero, 7
                  sub          t6, a6, ra
                  sll          sp, t1, gp
                  nop
                  sltiu        a0, s7, 1271
                  srai         t5, s0, 5
                  sra          t5, gp, t0
                  and          ra, s10, a6
                  xori         tp, a3, -1195
                  auipc        s6, 902960
                  srai         s1, tp, 1
                  slt          a3, a7, tp
                  xori         t2, s5, 1032
                  srli         a7, a6, 6
                  srai         sp, a0, 0
                  slli         s11, zero, 9
                  slli         a0, a1, 4
                  srai         s5, a6, 28
                  or           s6, a3, s10
                  ori          a5, s10, 1931
                  slti         a1, s11, -1489
                  addi         t5, a7, 1641
                  ori          t5, t2, 1335
                  sra          gp, t1, s0
                  sltiu        ra, t4, 1455
                  sub          t1, gp, t0
                  nop
                  addi         gp, t3, 1662
                  slti         tp, gp, 521
                  sltiu        s9, t5, -1766
                  xori         s3, t2, 145
                  xori         s1, a0, 1542
                  slt          t0, t3, a2
                  ori          s7, s11, -1141
                  nop
                  auipc        t1, 554155
                  auipc        s8, 72853
                  ori          t2, s6, -1204
                  slli         gp, s2, 30
                  sltiu        s11, s8, -1329
                  sra          ra, a5, a2
                  xor          s5, gp, s11
                  slli         a7, s8, 13
                  andi         s11, s8, -308
                  srai         t3, sp, 16
                  nop
                  addi         s7, t6, -445
                  or           t3, t3, s9
                  slli         sp, a6, 31
                  srli         t5, tp, 22
                  nop
                  auipc        s5, 141897
                  add          s7, a3, t5
                  auipc        s3, 352520
                  ori          s5, s5, 0
                  or           a2, zero, a5
                  ori          s9, s6, -581
                  srai         tp, a2, 10
                  srai         s9, a3, 4
                  nop
                  xor          t3, s10, s11
                  nop
                  lui          t3, 476055
                  slti         t1, t3, -1675
                  srli         a5, s10, 1
                  srl          t4, sp, a1
                  slti         a1, a3, -1729
                  slli         gp, s5, 29
                  or           s10, t2, a2
                  sll          a1, t3, s4
                  lui          t0, 197737
                  add          t4, s5, s8
                  srli         a5, t4, 1
                  xori         t1, a4, 244
                  sltiu        sp, sp, -354
                  lui          a7, 861667
                  srai         t6, a0, 23
                  sltiu        tp, t1, -1756
                  slti         s3, s2, 603
                  srai         sp, s5, 31
                  slti         s4, t1, -484
                  srai         s7, a2, 18
                  srli         s8, a3, 7
                  addi         s8, a2, -907
                  andi         t5, zero, -1283
                  sub          a7, t5, s10
                  slti         a5, a4, -598
                  or           s10, s0, ra
                  slt          s5, sp, s5
                  sub          s4, t3, s10
                  srl          t4, t4, t3
                  nop
                  xori         a2, s8, -1135
                  xori         t5, s0, 1448
                  andi         s7, a3, 76
                  and          s10, a6, s7
                  or           t6, a7, t0
                  slti         t0, a1, -993
                  ori          s6, t1, 1985
                  xori         ra, s0, -1099
                  or           a4, zero, ra
                  lui          t0, 22201
                  add          s4, sp, a0
                  add          a5, s5, a3
                  or           a4, s0, a0
                  and          s10, t1, a4
                  nop
                  slti         t3, ra, 803
                  xori         s1, s0, 447
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           s1, 0x80000000
                  li           a1, 0xf7affbc5
                  li           s7, 0x80000000
                  li           a5, 0x507bb1d3
                  li           s8, 0xffffffff
                  li           a0, 0x0
                  li           a3, 0xd8783a16
                  li           t2, 0x80000000
                  li           s11, 0x80000000
                  addi         a5, a3, 543
                  lui          s1, 751853
                  auipc        a3, 927470
                  nop
                  nop
                  auipc        a1, 792187
                  lui          a1, 176469
                  lui          s8, 159247
                  nop
                  lui          s7, 1021305
                  lui          s11, 875301
                  addi         s1, s7, 1780
                  nop
                  addi         s1, sp, 1832
                  nop #end riscv_int_numeric_corner_stream_6
                  sltiu        ra, s5, -1377
                  slt          s6, a2, sp
                  addi         s7, sp, 1421
                  sll          tp, tp, t6
                  auipc        t4, 219535
                  add          tp, a1, t1
                  and          gp, t4, a7
                  lui          s7, 400205
                  slt          t6, a7, t2
                  or           a7, t1, t1
                  srli         gp, zero, 18
                  add          zero, t4, s7
                  xor          s4, s2, s4
                  ori          gp, t1, -991
                  auipc        t6, 921061
                  nop
                  xori         a4, t6, -472
                  lui          s7, 807097
                  slli         s3, a7, 1
                  srai         t4, s9, 29
                  andi         t5, ra, 1632
                  sll          a4, a7, ra
                  sra          t0, t2, t1
                  sll          a4, s0, t4
                  sll          a5, a6, s4
                  nop
                  auipc        gp, 954340
                  add          t6, a0, t6
                  addi         a0, s7, -1480
                  nop
                  xori         t2, ra, -1476
                  andi         t2, a0, 201
                  slt          s9, a6, ra
                  ori          sp, t3, 182
                  nop
                  lui          s3, 1003159
                  auipc        ra, 35720
                  auipc        s10, 756788
                  slt          s8, a0, t2
                  sll          t6, a2, a2
                  slli         t1, a5, 30
                  xor          a3, ra, s7
                  or           t3, t4, a7
                  andi         s11, s4, 477
                  xori         a2, t3, 665
                  sltiu        s5, a0, -1114
                  sub          s5, gp, sp
                  srli         t5, s8, 29
                  srai         a3, s11, 26
                  nop
                  slti         s7, a7, 1477
                  sltiu        s1, s2, 381
                  sll          gp, a3, s0
                  lui          t1, 650940
                  andi         t1, t1, 1241
                  slt          gp, a5, a3
                  auipc        s1, 594714
                  nop
                  add          sp, s1, a1
                  slt          s6, a4, s11
                  auipc        zero, 262164
                  or           t6, s2, a4
                  lui          a4, 15605
                  lui          s6, 975753
                  ori          a5, s11, 1720
                  sltu         t3, a1, sp
                  ori          s4, s5, 1577
                  auipc        s10, 104543
                  lui          s6, 992926
                  sub          ra, s4, gp
                  sll          s8, gp, s9
                  sra          s3, sp, sp
                  and          sp, t4, s3
                  lui          a3, 438453
                  sll          t0, s10, ra
                  auipc        s3, 886157
                  sll          a3, s10, t6
                  srli         gp, a7, 13
                  slli         a3, a5, 5
                  slli         s10, s0, 13
                  or           t3, sp, t6
                  ori          s6, a6, 1858
                  slt          t3, t0, a1
                  slti         s10, t3, -286
                  addi         a1, a4, 476
                  andi         tp, s0, 651
                  sub          sp, s5, s11
                  or           sp, zero, s0
                  sub          a1, s6, t6
                  xor          s5, t6, t3
                  sra          s1, zero, a5
                  andi         s5, s10, -1945
                  and          s6, sp, gp
                  addi         a1, s4, -1778
                  xori         t0, s8, 1981
                  auipc        gp, 278528
                  xori         t5, ra, -756
                  ori          tp, a4, -817
                  and          a3, sp, a2
                  and          t3, t6, s1
                  auipc        s5, 939523
                  xor          t0, tp, t1
                  sll          ra, a7, zero
                  slti         s8, a2, -52
                  srli         gp, a3, 0
                  addi         s1, s10, -1995
                  srli         t3, a3, 7
                  nop
                  auipc        a1, 398318
                  srl          tp, s3, s5
                  sltu         t0, s8, zero
                  xor          s3, s9, t2
                  xor          t4, s1, t6
                  or           s5, sp, s0
                  addi         ra, ra, -655
                  sub          s9, gp, t5
                  sll          s9, t0, sp
                  xor          t5, t1, s8
                  slt          a7, a4, t5
                  srai         a4, s8, 30
                  xori         a4, t6, 1884
                  srli         s6, gp, 7
                  auipc        sp, 454853
                  slt          t4, t2, zero
                  xor          t6, t3, s1
                  xori         t1, s3, 1019
                  and          s1, s4, a2
                  auipc        t2, 161776
                  sltu         tp, s3, s8
                  sub          ra, sp, s1
                  and          s1, a4, a4
                  and          t2, t6, s3
                  ori          a0, s4, -27
                  srai         s1, a2, 12
                  srl          sp, ra, a7
                  sltu         t4, t6, s7
                  xor          a7, a5, s10
                  srai         zero, t1, 11
                  sltiu        a5, a2, 195
                  slt          tp, t1, t0
                  srai         t2, tp, 21
                  srai         a3, s5, 5
                  andi         t3, t2, 1420
                  nop
                  or           s10, s2, s1
                  srai         a7, s2, 5
                  sub          a1, a5, tp
                  slt          zero, s5, a1
                  and          a2, s2, s2
                  sub          t4, sp, tp
                  xor          t3, s4, t4
                  srl          a0, s10, t0
                  add          sp, s4, t6
                  nop
                  sltiu        t4, a7, 1990
                  srli         a3, s2, 8
                  andi         t1, s2, -1876
                  addi         a2, s0, -1431
                  sub          a0, zero, gp
                  sub          s6, s0, s1
                  ori          a1, s1, 1276
                  nop
                  slli         s5, t3, 28
                  slli         t6, sp, 22
                  andi         s4, s10, -1756
                  addi         a3, a6, -1950
                  slt          t5, t4, a2
                  ori          t5, tp, -114
                  slt          s3, zero, a6
                  addi         s8, t2, 1570
                  slli         a2, a0, 0
                  slli         t1, s2, 21
                  srli         t3, t3, 19
                  sltu         a0, s5, t2
                  sra          s3, s11, a3
                  sub          a4, t6, a5
                  xor          s11, s3, a7
                  andi         s3, s0, 1133
                  sltiu        a2, gp, -1218
                  slti         sp, tp, -533
                  add          zero, a6, a7
                  sub          t2, s11, s3
                  sll          s1, s7, s4
                  andi         a2, ra, 1227
                  sub          a4, t2, ra
                  andi         s6, t1, 476
                  ori          a0, s4, -264
                  or           s9, s9, s0
                  auipc        t0, 192073
                  nop
                  lui          s4, 479571
                  andi         sp, s0, -888
                  auipc        s6, 727877
                  slt          s6, gp, t5
                  nop
                  sub          a3, s2, s4
                  lui          t3, 762787
                  auipc        t3, 689961
                  and          zero, s8, s2
                  sll          gp, a1, t1
                  slt          zero, t6, a0
                  srl          a3, a5, s10
                  xor          a1, s8, a5
                  srai         a0, a7, 4
                  slti         s9, a3, 695
                  slt          t6, t2, gp
                  slt          t2, a0, t6
                  nop
                  sll          t2, s10, s1
                  or           s11, a4, s5
                  or           a4, s7, s0
                  slti         t2, ra, 1733
                  or           t2, a6, ra
                  andi         s3, a3, 1603
                  sll          t6, s3, s4
                  sltu         t3, a7, t3
                  srl          a4, s5, a2
                  sll          gp, t2, t0
                  lui          a1, 369022
                  srai         s11, s8, 31
                  srli         a2, t6, 31
                  sltu         ra, s0, s7
                  sltiu        t3, zero, -1904
                  andi         a2, t5, 901
                  or           t2, a2, s0
                  slli         s9, sp, 11
                  sltu         s4, s1, t5
                  srli         sp, gp, 28
                  slti         ra, t0, -600
                  lui          s1, 988958
                  sltiu        a4, s11, -799
                  and          t2, s4, a1
                  srl          s3, a1, s8
                  srai         a5, s11, 8
                  lui          gp, 539094
                  andi         a5, s8, -410
                  srli         a0, a0, 2
                  add          t6, s7, s3
                  sltiu        a0, gp, -441
                  slt          a2, a0, s8
                  auipc        tp, 59093
                  sub          s3, a6, t4
                  auipc        s10, 52497
                  nop
                  srl          t2, s10, tp
                  sra          a5, a0, a7
                  xor          a4, a4, s4
                  sub          a5, s8, s1
                  slti         zero, a6, -1311
                  srli         s7, gp, 29
                  lui          s8, 814645
                  nop
                  sub          s5, sp, t5
                  ori          a2, t1, -611
                  slti         a4, s10, -1531
                  nop
                  ori          t5, s11, 384
                  xori         a7, t5, -1460
                  or           a2, t4, s8
                  auipc        t2, 993375
                  xori         zero, s10, -2048
                  and          a4, t3, t6
                  ori          a2, t0, -1370
                  and          t3, t0, a2
                  sub          t0, a7, s0
                  sltiu        a3, s5, -1814
                  sltu         s4, a2, t0
                  nop
                  nop
                  lui          a2, 317981
                  auipc        a2, 945005
                  lui          a7, 579784
                  sltu         gp, s6, s3
                  lui          t3, 695066
                  sltiu        t0, zero, 1324
                  auipc        a2, 933155
                  addi         s3, sp, -2004
                  sltu         a3, s1, a4
                  srai         ra, s9, 0
                  srai         sp, t1, 31
                  nop
                  slti         sp, s11, 129
                  xor          s8, t1, a7
                  sra          s10, a5, a4
                  ori          s8, a5, 751
                  nop
                  sub          ra, s9, s2
                  or           a7, a4, t5
                  sltiu        t4, t2, 1466
                  slti         gp, t5, 625
                  srli         a7, s10, 11
                  sra          sp, ra, s8
                  srl          t6, gp, ra
                  and          t5, a7, t2
                  xor          a3, a5, t5
                  sll          s3, s6, s3
                  srl          t4, sp, sp
                  slt          tp, a7, s4
                  xor          s9, t6, t0
                  andi         a7, a6, 207
                  addi         s7, a1, -1435
                  andi         s11, tp, 707
                  add          s9, s8, t1
                  sub          tp, s0, s10
                  and          t3, tp, t1
                  sub          t4, t0, a6
                  auipc        gp, 143434
                  andi         s7, a0, -1014
                  xor          tp, s4, a6
                  andi         s8, t2, -1904
                  lui          t1, 998506
                  ori          zero, a6, 632
                  andi         a7, s11, 1952
                  srli         t4, s3, 9
                  sub          s11, t6, a6
                  slli         t5, s7, 6
                  sra          t4, s5, t6
                  addi         t0, s5, -363
                  addi         a4, t5, 299
                  and          t6, t5, t5
                  addi         s7, a1, -1952
                  sltiu        t3, a5, 2030
                  sltu         s11, a1, a0
                  add          s7, s10, s8
                  andi         gp, s2, 1181
                  srli         s9, a1, 3
                  sll          s10, a4, a3
                  lui          t2, 529222
                  srai         t6, t2, 9
                  auipc        t4, 422575
                  sltu         s8, a5, a2
                  slli         t3, s10, 14
                  xori         s6, zero, -375
                  sll          a0, ra, a0
                  ori          s3, a7, -615
                  or           gp, t5, zero
                  andi         t6, s4, 1079
                  addi         t1, t0, -1900
                  slli         t4, tp, 22
                  sub          t2, s9, a4
                  sub          sp, a6, a1
                  srli         a5, tp, 10
                  ori          ra, s6, -1927
                  sll          ra, a5, a3
                  ori          a5, t2, 1395
                  addi         ra, s6, -817
                  xori         s7, s8, -62
                  sltu         s10, s2, zero
                  xor          gp, t3, s6
                  sub          s9, t5, ra
                  sltu         a5, s7, s6
                  sltiu        a7, a1, 1680
                  sub          a2, s3, s4
                  and          t1, s3, s9
                  sra          s8, s4, tp
                  and          s3, a1, a0
                  sra          s4, a4, s10
                  sltiu        gp, a3, 1072
                  srl          a4, a0, s9
                  srli         s9, s3, 31
                  ori          t0, t6, -1467
                  sltiu        t6, t3, 1745
                  xori         t3, s11, -1638
                  and          s3, a7, a7
                  srl          tp, a0, t4
                  sub          a2, t6, s1
                  srli         gp, s3, 4
                  nop
                  sltu         gp, a5, t2
                  slt          a5, a5, t2
                  auipc        a2, 460100
                  srli         a5, s8, 10
                  and          s8, t5, a1
                  sra          a2, s3, s2
                  slli         a3, a1, 8
                  xor          ra, t4, s5
                  sub          gp, t0, s4
                  lui          a2, 823389
                  sll          zero, a5, s10
                  sub          gp, t0, a2
                  addi         t4, zero, 354
                  srai         a5, sp, 3
                  addi         t5, gp, -616
                  ori          s10, sp, -675
                  xori         s3, a2, -1430
                  xor          s7, a2, t0
                  andi         a3, a3, -1417
                  xori         gp, a5, 1454
                  lui          s10, 593019
                  slt          a3, s7, s11
                  sltiu        a0, gp, 119
                  xori         s5, s5, 770
                  sltu         a5, zero, s9
                  slt          s8, a6, s4
                  srai         ra, t0, 26
                  sltiu        s7, s7, -332
                  sltu         s10, a5, s7
                  sub          t1, ra, tp
                  xor          a1, t4, a6
                  or           s6, t6, a1
                  xori         a0, s2, -464
                  add          s6, a1, sp
                  srli         gp, s8, 11
                  ori          t6, t0, -1718
                  sll          t6, a1, s4
                  add          s9, t6, t3
                  sltu         t5, t1, a7
                  andi         a4, t0, -1647
                  nop
                  sra          t1, tp, a0
                  and          s11, tp, t4
                  sub          s11, a0, t5
                  nop
                  andi         s3, s3, -1656
                  and          tp, s1, tp
                  nop
                  ori          a3, a2, 243
                  slli         s7, zero, 3
                  sltiu        t5, s4, 1388
                  slt          a4, t4, t3
                  lui          zero, 239236
                  xor          s1, a7, t2
                  xori         s10, s11, -1858
                  add          t5, s1, s9
                  nop
                  slt          t1, t2, a7
                  slli         s1, s5, 11
                  sub          s8, s3, s11
                  and          a5, a5, s1
                  lui          sp, 896757
                  xor          s11, s5, a7
                  sll          t5, a3, t1
                  lui          a7, 419114
                  lui          s10, 631667
                  sll          s5, sp, s7
                  addi         s4, s2, 1277
                  sltu         s5, s8, a3
                  ori          s4, tp, 843
                  slti         t5, t0, -1370
                  slt          tp, a0, a5
                  slt          zero, a2, a0
                  andi         t0, t1, -1195
                  xori         t2, s3, 1958
                  and          t0, s11, a4
                  srai         ra, t1, 5
                  sltu         a7, t6, s3
                  srl          tp, t3, s6
                  auipc        a4, 1044297
                  or           s6, t6, a1
                  add          s8, s3, gp
                  srl          a2, s3, t5
                  slli         sp, s5, 9
                  ori          s1, s9, -2010
                  slt          s11, a2, t4
                  xor          a0, t5, t6
                  add          s5, s5, sp
                  ori          a5, a5, -1369
                  lui          gp, 549020
                  auipc        a7, 565226
                  slt          t5, t6, zero
                  auipc        a5, 682907
                  ori          s9, a7, -1614
                  slt          s8, zero, s9
                  srli         a5, t5, 25
                  ori          a2, s0, -1356
                  sub          t6, tp, t5
                  sltu         a7, s9, t4
                  xori         zero, s5, 1957
                  slti         tp, t0, -1989
                  sub          a4, a4, t2
                  addi         s6, sp, -1247
                  sltu         s9, a7, a0
                  auipc        a3, 678680
                  sll          t2, a5, t2
                  lui          a2, 266451
                  sub          sp, gp, a1
                  auipc        t4, 704316
                  ori          t6, s7, 15
                  slt          a5, t4, t1
                  sub          t2, a2, s5
                  nop
                  add          t5, t0, s11
                  srli         s11, s2, 2
                  srl          s8, a5, s5
                  sltu         gp, t2, a7
                  andi         t5, s11, 1947
                  add          a4, t5, s1
                  ori          s4, s3, -1310
                  and          t1, s10, s3
                  sra          t0, s8, s4
                  srai         sp, t4, 0
                  sltiu        a2, s8, 1186
                  sll          s8, tp, s4
                  addi         a4, s9, -317
                  slli         a3, s6, 24
                  sra          t5, sp, a4
                  slli         s4, t5, 5
                  slti         t5, a5, 1286
                  add          a5, tp, a2
                  slti         t1, s3, 1906
                  addi         sp, tp, -1098
                  andi         a5, ra, -998
                  or           a0, tp, s7
                  lui          gp, 878758
                  srli         sp, s5, 10
                  addi         s3, a6, -877
                  xori         zero, t2, -83
                  slli         s6, t1, 1
                  and          t1, a6, s3
                  srli         s4, a4, 23
                  sll          zero, sp, s0
                  nop
                  slli         s3, a7, 13
                  sra          s4, a7, zero
                  sltiu        a0, t6, 896
                  or           s7, a5, t2
                  sra          t1, a0, a5
                  slti         s8, a4, -1511
                  slt          a7, a2, s10
                  sll          s4, s11, a5
                  srli         t4, s7, 20
                  sub          gp, t0, s4
                  sra          s9, zero, s11
                  slt          a5, a1, t1
                  sll          a7, t0, t3
                  slti         s11, s11, 1115
                  slt          tp, a2, s1
                  sub          a2, t3, s6
                  auipc        a5, 800772
                  auipc        a7, 657517
                  xor          s11, s6, s9
                  and          s4, s8, a1
                  slti         s9, zero, 1622
                  and          s9, a5, s8
                  srli         ra, a4, 10
                  slt          t4, s8, s11
                  xori         a3, s10, -1203
                  auipc        a2, 470749
                  lui          a7, 259746
                  and          sp, a4, a5
                  nop
                  andi         a2, zero, -445
                  nop
                  addi         s9, ra, 1483
                  andi         s5, tp, 1749
                  sltiu        a4, s10, 396
                  slt          s1, ra, t2
                  addi         t2, s11, -913
                  nop
                  nop
                  or           a5, s5, s0
                  sub          s6, s2, s8
                  sltiu        s5, t4, -647
                  auipc        s5, 564133
                  slt          a4, s9, a3
                  xor          t4, s10, a6
                  sll          sp, s7, s11
                  add          s11, a1, t4
                  sll          gp, a6, a2
                  srai         a7, a5, 14
                  slli         s6, s11, 29
                  slti         t5, t5, -722
                  ori          t0, s9, 1454
                  and          s1, ra, sp
                  addi         a1, s1, -462
                  slti         s3, s5, -1686
                  sltiu        a4, s6, -1353
                  slli         s3, s8, 23
                  slt          zero, t6, s7
                  auipc        s6, 50437
                  andi         a2, s4, 500
                  sltu         zero, t6, s4
                  slli         tp, t2, 0
                  srai         ra, t4, 23
                  lui          a5, 401483
                  xori         t4, a4, 852
                  srai         gp, a1, 21
                  srl          t4, a3, a5
                  auipc        t0, 167956
                  slli         s8, s2, 24
                  nop
                  lui          s5, 577229
                  slti         t3, ra, -112
                  ori          a2, s10, -292
                  srli         sp, t3, 21
                  xor          a0, s2, s0
                  slt          a3, s5, s8
                  or           zero, a1, t2
                  sub          s10, a1, s3
                  slti         s11, t0, 214
                  add          tp, a2, a6
                  srli         gp, s6, 13
                  sra          zero, a1, a1
                  lui          a3, 467006
                  sltiu        t1, s1, -585
                  slt          a4, sp, s9
                  sll          t1, s5, s10
                  xori         sp, s5, -1817
                  addi         s4, a6, -1551
                  andi         a5, a2, 603
                  sra          t6, zero, gp
                  sltiu        s10, a6, 1793
                  or           a5, s6, t0
                  sra          s4, t1, s0
                  xor          t3, s2, sp
                  sltiu        t2, s2, -894
                  srli         t5, s0, 14
                  ori          t6, s6, -1481
                  sra          zero, a4, a1
                  nop
                  srl          s1, s3, t6
                  srl          s4, t1, s8
                  addi         gp, t3, -462
                  slt          a5, s2, s7
                  nop
                  ori          t3, s11, -1686
                  srli         zero, s2, 20
                  xori         a5, s5, -1783
                  sltu         t0, s9, gp
                  xor          a2, a0, t6
                  and          gp, s5, a2
                  slti         a5, s7, 357
                  lui          a1, 941731
                  slti         t6, s5, -1266
                  srl          zero, t0, a4
                  andi         tp, s1, 1295
                  sltiu        s11, a7, 1819
                  and          s4, t4, s9
                  ori          t1, s8, -974
                  sub          s5, ra, a7
                  lui          tp, 549319
                  sra          a1, s6, t3
                  sub          a4, a6, s10
                  sltu         a3, t4, s10
                  srai         a4, s1, 3
                  sltu         t6, s10, s11
                  or           t5, t2, zero
                  srai         t6, ra, 17
                  xori         a0, t3, 526
                  sra          s10, a7, t5
                  xor          s8, a4, t6
                  sltiu        s6, t5, -1766
                  slti         sp, ra, -264
                  auipc        t4, 553055
                  sltiu        t3, s2, 1466
                  or           s9, t2, a3
                  and          s7, s0, s11
                  sra          s4, t3, s4
                  slti         t4, a5, -710
                  and          s11, s1, a3
                  lui          t6, 469931
                  sra          a5, t5, sp
                  or           t2, s3, t1
                  slti         s6, t3, 1125
                  sll          a4, tp, t1
                  srli         s10, s3, 17
                  srai         t5, a0, 6
                  sltiu        s6, a1, 286
                  sra          s10, s11, t2
                  srli         s10, a2, 24
                  ori          t3, s11, -663
                  slt          s7, sp, t6
                  nop
                  slti         t2, s1, -408
                  nop
                  srl          t6, gp, s11
                  andi         t0, t5, 1857
                  xori         s7, s1, 1387
                  slti         tp, s9, -365
                  sll          s3, a3, s6
                  slli         zero, s11, 14
                  and          sp, zero, a6
                  or           a7, s0, t0
                  sltu         s7, tp, s0
                  sltiu        t3, a3, -2047
                  srai         s4, a1, 18
                  xor          a0, t6, t5
                  nop
                  lui          s10, 319232
                  srl          s10, a2, a6
                  sub          a2, s10, t6
                  lui          s10, 439740
                  xor          a3, s11, t2
                  and          a2, s8, a0
                  srl          zero, s1, t0
                  ori          s3, t3, -1384
                  andi         t4, s5, 1119
                  nop
                  srai         t3, t2, 19
                  add          s4, a1, t5
                  and          zero, a2, s10
                  slt          tp, t5, t4
                  addi         a7, s7, -849
                  slti         t5, s4, -1588
                  lui          s1, 812716
                  slli         a0, s11, 2
                  sll          a2, s8, a7
                  sub          s11, s5, t4
                  add          zero, s11, s8
                  or           sp, a3, t6
                  or           a1, t3, t6
                  slt          s8, a6, s2
                  xori         s6, s1, -30
                  srl          zero, zero, s2
                  srai         s5, s7, 12
                  nop
                  or           t1, zero, s7
                  srai         t6, s9, 7
                  nop
                  xori         s5, ra, -919
                  sra          sp, s2, zero
                  add          ra, a6, s8
                  or           t3, t0, t6
                  sll          tp, s8, s9
                  and          a2, s0, s8
                  or           s1, s0, a3
                  xori         s9, t1, 1578
                  add          s11, a1, a2
                  slli         s9, s8, 22
                  add          zero, s7, a7
                  addi         tp, zero, -1972
                  xori         a2, t0, 1012
                  addi         s7, a3, -1825
                  andi         s4, t4, -1697
                  slt          a5, a5, t1
                  nop
                  xori         tp, sp, 1275
                  sub          s6, a0, ra
                  sra          s4, gp, t1
                  srl          s4, sp, gp
                  add          a3, t6, s3
                  add          s3, s11, s2
                  and          a0, s2, a0
                  srl          a4, s7, t6
                  xor          t0, t1, tp
                  xor          a5, s10, t6
                  sra          s8, s6, t4
                  srai         t5, tp, 17
                  srli         a1, a2, 13
                  nop
                  sra          t4, s6, t0
                  slli         a4, s9, 29
                  srai         s4, s4, 29
                  slti         a3, s7, 340
                  xori         a3, s1, 1368
                  andi         s1, t0, -1647
                  srai         sp, s8, 22
                  auipc        s4, 344158
                  sltu         t3, t1, sp
                  slt          a2, s10, tp
                  nop
                  nop
                  sll          a0, t2, t3
                  srai         s10, s7, 26
                  xor          t0, t1, s6
                  slti         tp, ra, -40
                  add          a1, t3, zero
                  sll          zero, s1, ra
                  or           s10, s6, s9
                  sltiu        s7, s11, -519
                  srl          t5, t6, sp
                  nop
                  sll          a5, s9, s7
                  sll          gp, a4, a6
                  sltiu        s6, t2, 1985
                  sra          s9, a1, a7
                  slt          zero, a0, a2
                  add          s5, t5, s11
                  slt          a2, ra, a4
                  ori          gp, ra, 1946
                  sub          s1, zero, s8
                  srai         s7, s10, 1
                  xor          t6, s3, tp
                  and          s3, a6, tp
                  sra          t1, s1, s1
                  xori         t0, s11, 75
                  slt          t6, sp, s9
                  auipc        s4, 890978
                  srai         a4, s11, 18
                  add          t5, t0, t4
                  nop
                  andi         t3, s1, 1648
                  xor          t3, a0, s7
                  slti         zero, tp, -1091
                  sll          t2, a5, s1
                  sub          a4, sp, s11
                  ori          s5, sp, -1175
                  or           t2, t6, a2
                  sub          a3, s11, tp
                  srai         gp, a2, 31
                  lui          a3, 334332
                  nop
                  slti         sp, sp, -415
                  addi         s4, s0, 375
                  xori         t1, s5, 1858
                  sra          a4, t2, s7
                  srli         t2, t4, 19
                  ori          t1, t4, 1935
                  auipc        s4, 587269
                  and          t0, t1, t4
                  srli         a5, a2, 26
                  sltiu        a1, s10, -890
                  andi         t1, t0, 1375
                  slt          t0, t2, s8
                  xori         ra, t0, -1500
                  nop
                  or           tp, s8, a2
                  addi         a5, s8, 270
                  xori         t2, t5, -1634
                  sra          s9, s4, s8
                  sra          gp, t1, a1
                  and          s6, t2, sp
                  or           s3, s10, a0
                  srli         a5, t1, 26
                  xor          gp, s2, t6
                  and          t1, t2, zero
                  auipc        a2, 233951
                  andi         s3, sp, 1567
                  srai         s5, a2, 2
                  ori          tp, a4, 793
                  or           sp, s6, t5
                  or           t1, s5, s10
                  sltu         t0, s6, s8
                  srli         tp, t0, 15
                  sll          tp, s0, t3
                  sra          tp, s8, a3
                  or           gp, t0, s3
                  srli         s1, s7, 3
                  sll          s1, a6, a7
                  sra          t2, t2, a0
                  sra          a0, gp, a0
                  ori          t5, s4, -1159
                  addi         a2, t3, 1062
                  sltu         s9, s11, s3
                  srai         a7, s2, 11
                  sltiu        s7, a7, -719
                  addi         t0, s2, 1920
                  or           t5, ra, s0
                  andi         t0, s4, -1310
                  auipc        s10, 486198
                  add          a0, t2, s8
                  sra          a1, a5, t6
                  slti         t3, t3, 511
                  slli         a3, t2, 17
                  and          t4, t0, a2
                  sra          s3, s0, s3
                  slli         s5, a0, 21
                  srai         s6, t6, 16
                  or           a1, s8, a2
                  add          zero, gp, s11
                  ori          s9, a6, 1723
                  sub          s11, gp, t6
                  xor          t2, gp, sp
                  slli         s10, a5, 10
                  nop
                  sra          t4, gp, t3
                  xori         a2, s7, 501
                  slti         t2, s8, 711
                  add          t1, gp, gp
                  slli         a1, ra, 16
                  sltiu        s9, t6, 228
                  nop
                  slli         t6, s7, 20
                  slt          zero, gp, t3
                  addi         s6, a7, 1518
                  add          t4, t0, a4
                  addi         s6, gp, -734
                  slti         s4, s8, 1820
                  srai         s8, s9, 19
                  auipc        t0, 900702
                  andi         a1, s2, -653
                  ori          zero, a0, -540
                  slti         ra, s10, -1561
                  sra          t4, t2, a5
                  add          t0, s11, a6
                  slti         t6, s2, 490
                  slti         t2, s10, -1283
                  sra          s8, gp, sp
                  sltu         a0, s7, s1
                  auipc        t1, 730837
                  xori         s6, a1, 1991
                  slt          t6, a2, a1
                  slli         zero, s7, 18
                  srli         s9, t6, 13
                  sltiu        zero, a4, 240
                  or           s6, a2, ra
                  sub          s4, a3, a3
                  slt          s5, s4, sp
                  sltu         s6, gp, sp
                  srli         s9, s7, 10
                  sra          a3, s9, t4
                  lui          a0, 533614
                  ori          tp, s11, -1897
                  srli         t3, a5, 8
                  xor          t0, a0, ra
                  addi         a7, t1, 50
                  xori         s3, s8, 1666
                  sltiu        t5, t6, 677
                  slli         s3, s0, 4
                  nop
                  slti         zero, t2, -417
                  xori         tp, s0, 678
                  nop
                  srli         zero, sp, 14
                  ori          a3, ra, -1293
                  add          zero, t6, a7
                  sltu         s7, s7, a0
                  sltu         s10, a6, a7
                  srli         t4, s1, 28
                  nop
                  sltu         s3, tp, t3
                  andi         t0, sp, 1753
                  or           t4, tp, t6
                  sub          s4, gp, s5
                  sltiu        a1, t2, -469
                  sra          ra, s8, t6
                  srai         tp, a3, 20
                  slli         t4, t6, 18
                  slli         s11, zero, 13
                  sll          s11, t3, zero
                  nop
                  xori         tp, t5, -514
                  sltu         s6, a1, sp
                  nop
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a2, 0x80000000
                  li           a5, 0xffffffff
                  li           s11, 0xfe26bd42
                  li           s10, 0x0
                  li           t4, 0x0
                  li           a3, 0x80000000
                  li           a4, 0x244da145
                  li           s3, 0x0
                  li           s1, 0x80000000
                  nop
                  nop
                  sub          a4, s10, a5
                  sub          a3, s1, s3
                  lui          s10, 863331
                  auipc        a4, 863389
                  nop
                  addi         a5, s3, 1179
                  add          s1, s1, s3
                  nop
                  addi         a4, s10, 352
                  sub          t4, s8, s3
                  auipc        a2, 162098
                  auipc        s1, 92247
                  sub          a3, a3, a2
                  auipc        s3, 223376
                  add          s3, t4, a5
                  sub          s3, a5, s3
                  addi         a3, a2, -1577
                  add          s11, t4, s10
                  sub          s10, a2, a5
                  auipc        s1, 172812
                  nop #end riscv_int_numeric_corner_stream_13
                  srl          a5, a4, s9
                  srl          s9, a2, zero
                  add          ra, s8, s1
                  or           s11, s11, t3
                  sltiu        t0, t5, -1063
                  sub          t6, a6, s2
                  auipc        t0, 180954
                  sub          a2, s5, a2
                  srl          t3, t1, s1
                  sll          s8, t6, t6
                  srli         a5, t0, 25
                  xor          tp, t4, s9
                  sll          t2, s11, s0
                  sra          s4, s8, t4
                  srli         s3, s7, 0
                  nop
                  lui          t0, 306181
                  and          ra, a3, t5
                  sra          s1, s1, tp
                  slti         a3, s1, -665
                  xor          s3, s3, a1
                  add          ra, t1, s9
                  slti         t6, s1, -49
                  add          a4, gp, a1
                  nop
                  srai         t3, t4, 0
                  nop
                  sltu         a0, a3, a0
                  andi         s9, a2, 1927
                  auipc        t6, 696464
                  srli         a7, s10, 1
                  andi         t3, t3, -1647
                  or           t5, s4, a5
                  sll          ra, t4, tp
                  srl          t3, t6, a5
                  add          s1, s1, a2
                  slli         tp, a2, 4
                  ori          s8, s5, 316
                  andi         s9, t2, -1401
                  srli         ra, sp, 1
                  and          s1, t1, a4
                  andi         s11, s1, -1552
                  slti         zero, a1, -1037
                  slli         t5, s7, 25
                  sub          a7, t0, s1
                  slt          s6, t3, gp
                  add          sp, s2, t4
                  ori          gp, a1, 2001
                  sll          t6, s5, s4
                  sll          s6, t5, a7
                  and          s9, t0, s11
                  lui          s11, 265170
                  add          s6, zero, s4
                  nop
                  xori         t1, a7, 319
                  sra          a7, s4, s8
                  and          t6, tp, t2
                  addi         t3, t1, 1200
                  sll          a7, a5, s7
                  slli         t6, a5, 25
                  sltu         t5, t5, s9
                  add          t6, s11, ra
                  sltu         a4, s9, a6
                  sub          s7, sp, a3
                  slt          t2, s10, s6
                  slti         s7, s6, 331
                  add          s8, s11, t4
                  and          s3, a6, a7
                  slt          a5, zero, a3
                  lui          t5, 105885
                  add          zero, t6, a7
                  and          s7, s11, s8
                  xori         a4, s1, -84
                  srl          s11, a2, sp
                  sll          s7, sp, s4
                  auipc        t2, 825250
                  xor          gp, zero, t6
                  sltu         tp, s5, a0
                  nop
                  slli         zero, a3, 7
                  ori          s7, t4, -1219
                  sltu         s6, zero, t1
                  sub          ra, s4, a0
                  auipc        t5, 261429
                  slti         a2, s9, 161
                  sltu         t5, t5, s3
                  sll          t3, a2, s4
                  or           s3, gp, gp
                  and          t2, ra, a7
                  slli         a1, ra, 12
                  lui          s8, 51002
                  and          gp, a4, ra
                  srl          s10, s6, s0
                  and          a2, s11, t5
                  andi         t2, t4, 1191
                  sub          s4, a7, t4
                  ori          s11, zero, -541
                  nop
                  auipc        t3, 273400
                  andi         a1, tp, -759
                  andi         ra, gp, -1629
                  ori          gp, s3, -1758
                  xor          t6, a7, t4
                  slti         t2, s5, -1132
                  srl          s4, s11, ra
                  srli         ra, s2, 3
                  ori          ra, s11, -110
                  slti         s9, a6, -2011
                  sltu         a1, s9, gp
                  srl          ra, t3, a2
                  srl          t2, a4, ra
                  sub          s8, a0, a5
                  srl          s11, s8, a6
                  xor          gp, s6, s0
                  srli         ra, a1, 28
                  slli         t0, t2, 26
                  and          zero, a2, a1
                  xor          a7, t0, gp
                  add          a1, zero, s0
                  srli         t6, a4, 23
                  sltu         t6, tp, a7
                  sll          a7, s11, s7
                  sra          t3, zero, t6
                  and          a4, s4, ra
                  sll          a7, t5, s4
                  slti         s1, t3, -753
                  sltiu        s3, a1, -1950
                  slli         a3, s6, 8
                  slli         sp, s6, 26
                  sub          t0, a7, t5
                  lui          t2, 506366
                  srl          s3, a7, zero
                  slli         s1, a3, 15
                  sltiu        s4, t2, -1359
                  xor          s6, a1, t2
                  xor          a7, s11, s8
                  auipc        s9, 639567
                  sra          s6, a7, t2
                  lui          s11, 1021773
                  sltiu        t4, a7, 631
                  andi         t2, sp, -312
                  xori         sp, t6, -19
                  sltu         a1, a6, s3
                  slti         s7, zero, 1345
                  sub          t6, s5, ra
                  slt          a7, a7, t3
                  nop
                  sll          a3, t1, t0
                  srl          t0, s9, s1
                  xor          s8, s3, s6
                  slti         t0, a7, 17
                  xor          s8, a4, s0
                  sub          s5, zero, s9
                  slt          t6, s3, s2
                  sltu         s7, t1, a5
                  nop
                  srai         s6, t3, 5
                  slt          s7, s2, a5
                  sra          t5, t2, t4
                  auipc        a0, 554762
                  sll          a2, t0, a6
                  sltiu        s5, gp, -1508
                  addi         gp, s1, -1119
                  lui          s1, 140961
                  ori          a2, a7, 278
                  srai         t6, s10, 11
                  addi         sp, zero, 1953
                  sub          a5, s3, tp
                  srl          gp, t6, t6
                  andi         s6, s11, 525
                  lui          t4, 687062
                  andi         t0, s9, -345
                  sltiu        a5, gp, 540
                  sub          a7, s1, a2
                  add          s11, a3, tp
                  xori         tp, a2, 1229
                  srai         s7, gp, 0
                  xor          a5, a6, s8
                  xori         s1, t6, 1948
                  xori         s8, ra, 474
                  xor          a7, s3, s6
                  srl          tp, s6, a3
                  xor          s10, ra, s6
                  or           s11, a4, a6
                  slti         s8, a6, -1008
                  and          s11, a4, a5
                  sll          s3, s4, a1
                  ori          t1, t2, 402
                  srli         t2, s10, 19
                  sltu         s7, t2, t0
                  slt          t0, a1, s10
                  or           s10, zero, s0
                  addi         s10, s5, 1866
                  add          gp, sp, s4
                  auipc        s4, 282576
                  or           a7, s6, t6
                  slti         s7, tp, -1345
                  srai         s5, a4, 25
                  xori         s10, a6, -1314
                  or           t6, t5, sp
                  andi         t1, s7, 1356
                  addi         s5, t6, -163
                  srai         s8, a4, 0
                  srl          t3, tp, s1
                  sub          t3, t5, s2
                  andi         s3, s3, -589
                  sra          s6, a0, s8
                  slti         gp, zero, -1479
                  xori         a2, a2, -1376
                  slti         zero, s5, -1164
                  srai         s8, t6, 22
                  ori          a2, a7, 1922
                  sub          a2, s2, a6
                  slli         s10, s4, 3
                  addi         t6, s2, 1438
                  xori         s9, s4, -757
                  sub          a5, s2, s0
                  srl          s3, zero, s10
                  ori          s11, s1, -1936
                  slli         a7, a1, 20
                  srli         s9, a5, 11
                  and          sp, a6, a7
                  xor          t1, s1, a6
                  slti         tp, s7, 1399
                  sll          s1, t2, s6
                  slt          s1, s9, zero
                  srl          zero, a3, s1
                  srl          a5, t0, s0
                  srl          gp, s1, ra
                  ori          s7, a6, -521
                  srai         a4, a3, 21
                  auipc        t3, 14117
                  auipc        s3, 212178
                  sra          s6, gp, s7
                  xor          s3, zero, s4
                  add          s4, s0, s7
                  sltiu        t4, t0, -308
                  sub          s1, t4, sp
                  lui          zero, 477100
                  srli         s4, a1, 30
                  li           s4, 0xd3ebad17 #start riscv_int_numeric_corner_stream_5
                  li           a2, 0x754dec88
                  li           s7, 0xf80f17ed
                  li           a7, 0x8d168906
                  li           tp, 0x80000000
                  li           ra, 0x8c9f1e5f
                  li           s6, 0x0
                  li           s11, 0xffffffff
                  li           t3, 0xffffffff
                  li           s10, 0x6bf5d231
                  add          s6, s4, tp
                  auipc        s10, 751183
                  auipc        s4, 782628
                  auipc        t3, 117310
                  add          ra, t3, s11
                  lui          ra, 108884
                  nop
                  add          a2, s10, s11
                  add          s6, s4, s11
                  addi         tp, tp, -1174
                  lui          s11, 92803
                  addi         s10, s6, -1015
                  addi         s6, t3, 1616
                  auipc        ra, 16590
                  addi         a7, s7, -457
                  sub          s6, s4, s10
                  auipc        s7, 287840
                  sub          tp, t3, s6
                  addi         s10, ra, -1546
                  lui          s7, 170757
                  addi         ra, s4, -900
                  nop
                  add          ra, a7, a7
                  nop
                  lui          a2, 203384
                  lui          a2, 423046
                  addi         s4, s4, 185
                  auipc        a2, 499533
                  add          s6, t3, t3
                  addi         ra, s4, 902 #end riscv_int_numeric_corner_stream_5
                  nop
                  slli         tp, a7, 19
                  ori          t4, a0, -715
                  sra          t2, s4, tp
                  sltiu        a1, zero, -1811
                  andi         t5, s9, 302
                  srl          tp, t2, zero
                  sltu         t1, s6, sp
                  sll          t0, a4, s4
                  srai         s5, s9, 30
                  sub          s5, sp, a5
                  add          a1, t5, s6
                  or           s8, t0, a6
                  and          s3, t2, tp
                  slli         s8, a5, 10
                  and          t6, a4, zero
                  sltiu        t1, a2, -1373
                  andi         t2, sp, 879
                  srli         s10, s2, 29
                  sltu         t4, s6, s0
                  slti         t5, zero, -1588
                  andi         a1, t3, -1696
                  sra          a5, s4, t5
                  nop
                  and          a5, t3, t4
                  srai         s10, sp, 15
                  srli         s5, t0, 9
                  slli         s3, a6, 24
                  slt          a7, a1, s3
                  xor          s4, a2, s1
                  srai         a7, s7, 0
                  sltiu        a4, s6, 972
                  lui          t6, 947240
                  slt          s7, t3, a3
                  sra          t2, tp, a2
                  add          a3, s6, s7
                  slli         s10, s3, 16
                  xor          t5, s1, gp
                  srai         t0, s11, 26
                  andi         a1, t6, -1965
                  srli         t2, ra, 16
                  andi         s9, t2, 554
                  sra          t3, s9, tp
                  srl          s11, s4, t2
                  auipc        s8, 274572
                  sltu         s7, s0, tp
                  xori         s1, zero, 621
                  slt          s11, t4, t2
                  andi         a5, a1, -989
                  slli         t1, a6, 23
                  andi         s9, ra, 741
                  sll          t5, a0, t6
                  and          t1, zero, s1
                  sltiu        t2, a1, 611
                  and          a3, s10, t6
                  sll          t1, a3, s4
                  slt          t5, s10, sp
                  andi         t1, a2, -40
                  ori          t5, t5, 131
                  andi         t1, s3, 1224
                  slt          a2, a0, zero
                  auipc        s3, 263929
                  andi         a7, s4, -1420
                  srai         s5, a1, 4
                  srl          s10, s1, a4
                  srli         tp, s6, 25
                  srai         t1, t5, 0
                  lui          s5, 334977
                  ori          s9, s3, 462
                  sltu         tp, s6, s0
                  slli         sp, ra, 4
                  sll          t0, s7, a1
                  addi         t2, t3, -62
                  add          a1, t5, a3
                  ori          s8, t0, 283
                  sltiu        t6, s1, 331
                  srli         a7, a0, 25
                  slli         s10, s2, 12
                  addi         sp, s0, 610
                  slti         t0, s2, -1453
                  nop
                  ori          a4, s9, -514
                  xor          a3, a4, a7
                  lui          sp, 357571
                  sll          s4, s0, zero
                  xori         a2, t0, -607
                  and          t6, s8, a3
                  or           t0, a7, s0
                  addi         t2, a6, 48
                  slti         tp, a0, 789
                  andi         t2, a3, -697
                  srai         a2, s10, 18
                  srli         ra, s9, 20
                  slli         a0, s9, 23
                  srl          t2, ra, a0
                  auipc        s11, 48768
                  lui          gp, 775512
                  lui          t3, 123856
                  nop
                  srai         s10, s10, 10
                  addi         s9, sp, -996
                  andi         s1, a1, 81
                  auipc        t4, 566777
                  sll          a5, s5, s7
                  addi         t0, s5, 697
                  and          s11, t1, s5
                  sll          s8, s1, s0
                  lui          s9, 655910
                  slti         s7, zero, 1725
                  srli         s6, t3, 30
                  srli         a5, s7, 21
                  srl          t1, s8, a1
                  slt          t1, a4, tp
                  xori         s5, s4, -1110
                  lui          a4, 317409
                  sub          t6, s10, s6
                  srli         t3, a7, 10
                  or           s8, s7, s9
                  sltiu        tp, s6, 153
                  xor          t4, s3, t4
                  sub          t6, t3, t5
                  sll          t6, s7, s3
                  srli         s1, s8, 15
                  xori         a3, tp, 1855
                  slt          t3, sp, ra
                  xori         s7, ra, -1837
                  or           s6, tp, a3
                  add          s9, a7, t6
                  nop
                  andi         a1, s7, -1859
                  addi         a2, t4, -241
                  sltiu        t6, s8, 2019
                  srli         t4, s5, 12
                  srli         s8, s3, 21
                  andi         gp, s4, -1798
                  srli         s8, t6, 20
                  ori          s7, s5, -1439
                  nop
                  andi         a4, s5, -547
                  srl          s5, t3, s0
                  sltiu        sp, s5, 399
                  xor          s3, a4, ra
                  sll          gp, t4, s7
                  srai         a4, t1, 6
                  addi         a7, s2, -129
                  srli         zero, t6, 19
                  srai         s5, s8, 17
                  slt          a7, s2, a3
                  srai         s5, tp, 2
                  srai         t1, tp, 29
                  slti         gp, a5, -1444
                  srli         zero, a2, 6
                  add          s5, s1, a3
                  sltiu        t3, a3, -567
                  sltiu        t6, gp, 241
                  lui          gp, 840649
                  addi         a4, a6, 645
                  srli         a0, a2, 12
                  sltu         t5, t2, s8
                  lui          s6, 552116
                  sra          a4, s9, a0
                  nop
                  srli         a1, s11, 13
                  andi         s6, s0, -369
                  add          s6, zero, s11
                  addi         a1, s4, 1963
                  srl          ra, t2, a6
                  auipc        t1, 962306
                  slti         a4, t6, -65
                  slt          s7, zero, a1
                  srl          t3, a2, s2
                  sltiu        s1, s3, 282
                  and          s10, s9, t6
                  auipc        tp, 82620
                  sra          a1, t4, s1
                  srl          t4, s4, s2
                  srai         ra, a4, 16
                  srl          t6, ra, s3
                  slli         s4, t0, 0
                  slli         s7, s9, 25
                  sub          t1, s0, s0
                  lui          t2, 549656
                  srli         s11, s9, 23
                  slti         tp, s5, -1240
                  srli         s11, t0, 27
                  sub          t3, t3, t2
                  srli         s4, t2, 28
                  add          a7, sp, a6
                  srli         s3, s3, 26
                  srli         t0, a4, 18
                  sub          sp, s0, s8
                  sub          sp, a1, a4
                  addi         s9, t3, -722
                  sltu         t1, s7, a4
                  slti         s1, a7, 713
                  lui          a0, 522989
                  slti         t0, a2, -631
                  and          t3, sp, s11
                  andi         s5, a3, 1677
                  srli         zero, a0, 30
                  sra          s11, s8, s0
                  and          a2, s5, sp
                  xor          t6, zero, t1
                  sra          s8, a5, a2
                  andi         s1, a6, -95
                  andi         s1, t3, -1340
                  addi         gp, tp, -1753
                  slt          t6, gp, t2
                  slli         t5, gp, 25
                  addi         s10, a5, -1644
                  ori          s9, s2, -1414
                  auipc        zero, 17823
                  srai         t0, a3, 1
                  srai         a1, a5, 14
                  nop
                  xor          s8, s0, t4
                  and          t1, s11, a0
                  sll          gp, s4, s11
                  or           s7, s9, tp
                  andi         s5, s3, 1141
                  slt          t4, t0, s4
                  sll          s6, t0, s5
                  srl          t4, a6, a5
                  sll          t6, a1, t2
                  srl          t5, t0, s6
                  sra          ra, a0, s1
                  srli         s4, s6, 31
                  lui          a2, 368448
                  srl          a3, s7, tp
                  add          gp, s8, a6
                  sltu         s5, s2, a6
                  or           a5, s2, t3
                  or           t2, a5, a5
                  sltiu        a4, s2, -1508
                  add          t2, zero, t1
                  xor          s1, s7, a6
                  sll          tp, a4, a2
                  nop
                  add          s7, s10, a6
                  addi         a4, s7, -1830
                  sll          s1, t0, s10
                  auipc        t1, 346372
                  xor          s3, s8, s8
                  sll          t5, s10, t3
                  sltiu        s8, s7, -2048
                  lui          ra, 898322
                  and          a4, s7, sp
                  sll          t3, tp, sp
                  lui          a3, 257056
                  sra          s8, a7, a7
                  auipc        gp, 480832
                  andi         t2, a1, -463
                  srai         a2, s11, 3
                  auipc        t5, 697541
                  sltu         a0, s3, tp
                  sltu         a4, zero, a2
                  sltu         t1, s5, sp
                  srai         gp, a6, 28
                  srl          t5, sp, zero
                  addi         a3, a5, 738
                  slt          s1, t5, s11
                  srl          tp, ra, s7
                  auipc        ra, 550657
                  srli         s8, t6, 9
                  and          a5, s0, s5
                  nop
                  srai         s4, ra, 4
                  xor          t2, a5, ra
                  sll          s1, a1, s8
                  or           a7, tp, a0
                  xor          s4, s10, t3
                  nop
                  xori         t3, a0, 721
                  andi         zero, s1, 166
                  xor          ra, s0, t2
                  and          t6, tp, a6
                  xor          a2, s1, s3
                  andi         t2, a1, 515
                  ori          s9, tp, -1383
                  slli         t6, s11, 0
                  or           zero, s7, s2
                  sltiu        a1, t1, 1323
                  addi         gp, a7, 975
                  nop
                  slli         a3, t6, 12
                  addi         t3, a1, -814
                  xori         ra, s6, -1318
                  sll          s5, ra, t5
                  nop
                  add          gp, gp, zero
                  xori         a1, s2, 481
                  nop
                  sra          a2, t3, a7
                  slti         s6, a7, 427
                  slt          s5, ra, a6
                  xor          t0, a1, a4
                  sltiu        s1, t2, -26
                  ori          s11, a7, 988
                  sra          ra, t1, a2
                  auipc        t4, 849146
                  sub          t0, t1, s11
                  srai         s11, t0, 9
                  slt          t2, s8, t3
                  srl          a7, t3, s3
                  sra          s4, a0, t0
                  sra          t6, s7, a5
                  ori          s4, s6, -1472
                  srl          sp, a1, s1
                  add          a1, t0, a7
                  srl          t1, t4, a2
                  andi         zero, s10, 1864
                  sll          s11, t5, s9
                  srai         a5, s11, 21
                  slti         t1, s11, 836
                  slti         s6, t2, -1292
                  slli         t1, t6, 31
                  auipc        s7, 973551
                  srai         a4, t1, 4
                  and          s9, t4, s7
                  addi         t4, a0, 665
                  srl          a3, s5, t2
                  slt          t6, s6, sp
                  sltiu        s7, t2, 1908
                  slt          t3, ra, s9
                  slt          zero, t1, a6
                  srl          a5, s4, t6
                  sub          s3, s3, s11
                  sll          gp, s9, a6
                  lui          gp, 523164
                  or           s1, s3, a0
                  lui          t4, 429787
                  auipc        a7, 272818
                  sub          t1, ra, s5
                  srai         t2, t5, 25
                  srl          sp, a2, t2
                  srai         t1, t4, 4
                  andi         s6, t1, -443
                  or           s4, a6, a3
                  nop
                  and          sp, sp, a2
                  slt          s7, a5, s1
                  srl          a4, t3, a0
                  slt          sp, zero, ra
                  andi         t5, s5, -383
                  sra          a5, s7, t3
                  srai         s3, tp, 25
                  sub          tp, a3, a7
                  or           a4, s1, gp
                  sub          s3, s5, t4
                  andi         ra, zero, 502
                  lui          s3, 355314
                  sltiu        s9, s9, -1967
                  srl          a1, s3, t0
                  slli         a0, t6, 16
                  slli         t2, s8, 1
                  and          zero, a5, ra
                  sub          s3, sp, s10
                  and          sp, t5, s11
                  lui          a3, 832915
                  slti         t3, s8, 1425
                  sll          ra, tp, t3
                  slt          gp, zero, s8
                  xori         sp, ra, 206
                  and          zero, s1, s9
                  slt          s10, gp, gp
                  xor          s3, a4, s10
                  auipc        s7, 563333
                  srli         s6, a6, 15
                  srli         s9, s1, 16
                  sll          t3, s1, s6
                  andi         t4, t2, 241
                  and          s6, ra, a3
                  andi         s6, s5, -1244
                  and          s10, ra, sp
                  lui          a5, 932038
                  slli         t5, gp, 19
                  xori         s3, s7, -975
                  and          t5, s5, s6
                  xor          a5, t0, s5
                  sra          a5, a5, s0
                  sltu         t1, t1, s7
                  sra          a4, s4, s3
                  or           t0, t4, t2
                  and          ra, a6, ra
                  ori          s1, s8, -2044
                  srai         t6, t5, 12
                  nop
                  andi         tp, s3, 1751
                  auipc        t5, 371388
                  add          s4, t5, t1
                  xor          s6, a2, t4
                  lui          t3, 633045
                  andi         t4, t3, 32
                  sltiu        a3, a2, -40
                  slti         s7, s1, 1721
                  slti         t0, s11, -1695
                  srli         a4, zero, 27
                  sra          t3, s8, s8
                  srli         t3, s5, 24
                  sltu         t5, s11, zero
                  sub          sp, s5, t3
                  slt          s11, s0, s10
                  sra          sp, s9, s5
                  ori          t1, t3, 787
                  slti         t2, s5, 498
                  and          a2, t6, s1
                  sra          t2, t1, t5
                  slti         zero, s4, -1651
                  srai         a7, t5, 21
                  and          s5, a5, s4
                  sll          gp, t1, t5
                  andi         s4, s4, -835
                  srl          tp, sp, t2
                  slti         t5, s0, -1513
                  sra          s6, a1, a5
                  and          a0, a6, a0
                  lui          zero, 324020
                  and          a5, a6, zero
                  srli         s1, a1, 4
                  slti         t4, t4, 1534
                  sll          s1, t3, s0
                  add          t1, s8, t0
                  sra          zero, t1, a0
                  addi         s10, s0, 1345
                  sra          s1, s5, s0
                  sll          s7, zero, tp
                  xor          t6, s7, sp
                  and          s4, sp, s3
                  add          t4, gp, ra
                  ori          a3, a1, -1577
                  xori         s3, a2, -1470
                  auipc        t6, 810447
                  add          t0, t2, s7
                  addi         a2, a1, -74
                  ori          s1, a0, -1753
                  srai         s5, a3, 6
                  lui          t6, 513810
                  xor          t5, a0, a1
                  and          a4, s1, t1
                  sub          t6, a6, s4
                  xori         t6, t4, 1067
                  auipc        tp, 7634
                  sub          t0, t5, a1
                  sltiu        t6, gp, 438
                  sltiu        tp, s1, 1005
                  srli         s5, tp, 22
                  srli         a0, t1, 16
                  slti         zero, gp, -986
                  and          tp, a6, s3
                  nop
                  add          s3, t5, t0
                  addi         tp, s0, 232
                  andi         t4, ra, -559
                  sra          a7, a1, s0
                  slti         t6, a7, -1368
                  nop
                  slti         a1, a5, -1368
                  sltu         a3, s7, s10
                  slti         gp, a0, 323
                  nop
                  sub          gp, t0, t6
                  slti         t6, zero, -587
                  slli         t6, a4, 19
                  srli         s7, s7, 25
                  sltiu        t3, t2, 357
                  nop
                  add          s9, a4, a6
                  xori         a4, t1, -896
                  xori         sp, s4, -1018
                  add          s3, s9, t5
                  srai         t4, s9, 19
                  ori          a2, a0, 781
                  xori         a7, a3, 1013
                  and          a0, tp, s7
                  nop
                  and          s5, t2, gp
                  srl          a1, t1, t6
                  sll          s5, a3, t1
                  sltiu        ra, s7, -97
                  lui          tp, 119306
                  slti         tp, sp, 1775
                  srai         s7, t3, 31
                  lui          t6, 97819
                  sltu         t3, t0, a1
                  sub          t6, a5, t4
                  addi         t4, a1, 1474
                  or           sp, s8, s8
                  or           a2, gp, t0
                  add          t6, s3, a0
                  xori         a3, s3, 1498
                  auipc        a2, 176396
                  slti         t0, s3, 521
                  xori         s7, ra, -1742
                  lui          t5, 715962
                  slti         a7, a0, -360
                  sub          t3, gp, t6
                  auipc        a2, 810876
                  slli         s10, s7, 23
                  or           a4, s6, t6
                  andi         s7, tp, -1290
                  sltiu        sp, s3, 961
                  xor          t2, t6, s1
                  slti         a4, s3, -1663
                  srli         zero, s5, 9
                  slti         s9, a1, 1052
                  srl          t3, a2, a7
                  slti         a3, s8, -855
                  srai         t0, t1, 19
                  nop
                  or           s11, t3, a5
                  addi         ra, a3, 1143
                  auipc        t3, 950989
                  andi         sp, a0, 193
                  sra          s6, s6, a7
                  add          t4, s10, s6
                  srli         s9, a2, 11
                  ori          a4, a2, -1359
                  slt          t4, s0, s11
                  sltiu        a4, s6, -909
                  sub          t0, a1, s7
                  and          a5, tp, a7
                  andi         a5, s9, -924
                  slt          s7, s5, t2
                  slli         t1, s6, 30
                  lui          a4, 43641
                  slli         s7, s11, 15
                  and          a0, s5, s4
                  srli         a4, s4, 4
                  slt          a4, a5, a6
                  srl          a5, tp, a5
                  and          t6, s8, s11
                  srl          zero, s4, s11
                  sltu         t6, tp, gp
                  lui          a5, 189049
                  xor          ra, sp, t6
                  nop
                  add          ra, a4, t5
                  sub          a5, s10, a7
                  addi         s1, s11, 359
                  add          a7, s0, s0
                  auipc        s8, 946610
                  sub          t5, s7, s10
                  srli         t1, s10, 1
                  sltu         s10, ra, t1
                  nop
                  sltiu        t4, s0, -1206
                  andi         sp, gp, 1282
                  srl          t4, zero, t1
                  srl          t5, s8, t5
                  nop
                  nop
                  slli         zero, s1, 22
                  xori         a7, t2, 857
                  or           s1, a1, ra
                  xor          t4, t4, a5
                  xor          s6, t4, s8
                  xor          a0, a7, a3
                  sra          t0, a4, s1
                  sltiu        s7, t0, 175
                  srli         s3, s11, 8
                  ori          a2, t1, -402
                  addi         a1, a1, 1052
                  sltiu        s6, gp, 333
                  srl          t1, s5, s3
                  slli         t0, tp, 3
                  lui          a5, 782935
                  slti         a2, t2, 1321
                  sub          s8, s11, tp
                  and          s11, a2, a2
                  srl          a1, t6, s10
                  lui          s3, 397237
                  ori          s10, gp, 39
                  sltiu        t4, a7, 1244
                  srli         s4, s4, 29
                  sll          a3, a6, t2
                  add          s1, t4, s0
                  addi         a1, a2, -1156
                  srl          t0, s4, s11
                  addi         a0, a3, -1431
                  sltu         a2, s11, zero
                  srai         gp, t0, 20
                  sltiu        tp, s4, 2015
                  lui          t3, 982758
                  nop
                  or           s6, s2, t3
                  slli         a4, a4, 8
                  slli         t2, a5, 17
                  xor          t2, a6, s2
                  sra          s8, a3, gp
                  xor          a4, s1, t4
                  sltu         tp, t6, s8
                  slti         s11, t4, 1887
                  or           s7, s8, t3
                  xori         s6, s0, 1778
                  sra          t5, s2, gp
                  andi         a2, s11, 680
                  srai         s7, s8, 25
                  or           s9, s4, t1
                  nop
                  srli         a0, s4, 12
                  sll          t6, t1, s11
                  lui          a4, 467553
                  sltiu        s6, zero, 677
                  sra          t4, a6, t4
                  sub          sp, s10, gp
                  sub          s4, s6, s1
                  and          a3, a7, s3
                  and          gp, s1, a0
                  sub          s5, s2, t1
                  or           a1, t6, a5
                  sltu         t4, s9, t5
                  sltu         s10, t0, s9
                  slti         a5, s10, 517
                  nop
                  andi         t4, a3, -1992
                  sltiu        s4, zero, -1097
                  srli         a3, s1, 11
                  xor          a3, t0, s3
                  slli         s4, a7, 1
                  sra          zero, t2, t0
                  auipc        s8, 578718
                  srl          s5, s8, s2
                  xor          zero, s1, s6
                  nop
                  sltiu        a5, zero, 1756
                  and          s10, ra, sp
                  xor          s5, t1, t6
                  sra          a7, s11, tp
                  slt          a0, s9, t6
                  andi         a2, a3, 2008
                  srli         tp, s6, 23
                  lui          t0, 511494
                  xori         t3, s1, -21
                  slt          t4, a5, s0
                  lui          a7, 630587
                  sltiu        tp, sp, -40
                  add          s10, t6, ra
                  sltiu        t5, s0, -1524
                  ori          a1, sp, 871
                  sra          gp, s4, s6
                  or           a2, s0, s10
                  srai         s10, ra, 13
                  slti         zero, s0, -1068
                  sll          t4, s10, gp
                  andi         s6, t4, -1671
                  sltiu        a7, a0, 1099
                  xor          a7, s0, ra
                  add          s6, a6, s11
                  sra          a2, s7, s4
                  slt          a3, a0, a4
                  or           a7, t5, s0
                  sub          a5, s5, gp
                  slli         a1, s4, 20
                  sra          a1, t1, s5
                  auipc        gp, 376523
                  xor          a4, ra, s1
                  andi         s9, t6, -68
                  xori         t6, s5, 1775
                  nop
                  slli         a1, tp, 19
                  or           sp, s7, s7
                  sltiu        s9, s7, 1880
                  slt          t6, s7, s3
                  xor          t4, a0, a4
                  sll          a5, s11, s7
                  xor          a3, a0, a6
                  srli         s3, a6, 23
                  auipc        a0, 138644
                  sltu         t0, s7, a6
                  and          a3, s5, s1
                  and          s9, s3, s9
                  xor          a4, s8, t5
                  nop
                  xor          tp, s8, s7
                  srai         s9, a2, 10
                  addi         t4, t1, -250
                  srli         a7, s5, 7
                  nop
                  sltu         a3, a0, tp
                  sltiu        ra, a7, -485
                  sltiu        t0, s6, -719
                  srli         gp, a3, 23
                  sltu         a2, sp, gp
                  slti         a2, t6, 623
                  slti         t1, t3, 1268
                  andi         a5, t0, -721
                  sll          t4, sp, a5
                  slti         s11, s1, 216
                  srl          s1, t4, a6
                  sltiu        s1, a2, 1341
                  slt          t4, s3, a6
                  sub          s6, a5, a0
                  srl          s9, t4, a3
                  lui          s1, 826616
                  srai         a4, t6, 14
                  and          t0, t0, s9
                  slti         t1, a6, 1126
                  andi         s6, t6, 910
                  xori         a4, t6, -614
                  slti         t2, a7, 1673
                  srli         a4, t4, 22
                  srli         zero, s3, 31
                  andi         a2, t6, 1824
                  or           s10, a3, s6
                  sll          s7, t2, s9
                  add          t2, t1, a3
                  slli         a5, s4, 3
                  ori          t0, s4, 54
                  ori          s3, t4, -1701
                  sltu         t0, s1, s7
                  sra          zero, t3, a6
                  xor          t4, a7, s3
                  lui          a3, 950656
                  slli         s6, s8, 4
                  and          t4, zero, t2
                  xor          tp, a4, s10
                  slti         t3, t0, -510
                  sll          t4, gp, s4
                  ori          s5, a3, -1528
                  xori         s6, sp, -1909
                  xori         s10, s3, -854
                  slli         s5, s4, 28
                  slli         a5, a7, 6
                  srl          t5, a6, t3
                  sll          a2, s9, s8
                  ori          a4, a3, 1430
                  lui          s7, 325854
                  sltu         t6, s9, a1
                  srai         a1, s6, 12
                  slti         a5, s4, -627
                  lui          sp, 835436
                  ori          s6, s9, 549
                  addi         tp, s4, 420
                  srai         a7, s4, 9
                  lui          ra, 539190
                  lui          s5, 898897
                  xori         s6, s9, 777
                  nop
                  lui          a1, 706796
                  srai         s10, a1, 24
                  xor          t6, s5, t0
                  add          t2, s2, s11
                  srai         s1, s8, 16
                  add          sp, a5, s2
                  nop
                  sll          t6, t3, t0
                  andi         t3, sp, -208
                  srli         tp, s11, 2
                  xori         t1, a7, 1507
                  slti         t2, a5, -935
                  lui          s7, 379400
                  or           s7, a3, s4
                  slti         t3, s7, 1383
                  addi         t4, a7, -1606
                  sub          t2, a7, a4
                  slli         a7, s2, 10
                  xori         zero, a1, 151
                  ori          s1, a6, 154
                  slt          s1, t5, gp
                  slli         zero, s7, 8
                  auipc        t0, 563961
                  srai         t4, t4, 8
                  xor          s6, s8, s3
                  lui          t3, 214845
                  auipc        t4, 551037
                  slli         t2, a2, 3
                  andi         s9, s6, 1363
                  sltiu        s3, s2, -1987
                  add          a1, ra, a6
                  addi         s7, gp, -1321
                  addi         t6, a0, 1076
                  srli         t2, t4, 10
                  slti         a7, t5, -1941
                  or           s7, t6, t2
                  slti         a5, t1, -1244
                  slli         s6, t0, 30
                  or           a1, a2, a3
                  sra          s4, s3, t0
                  and          s8, a6, s3
                  srl          t0, t1, s10
                  sltiu        s5, t6, -1523
                  addi         a5, tp, -1915
                  sra          s11, t2, s3
                  add          t4, t0, t1
                  nop
                  andi         s5, t1, -1679
                  slti         a2, t5, -115
                  nop
                  sub          a3, a3, a7
                  slt          s7, s10, a2
                  add          sp, t3, s9
                  sltiu        t0, sp, -334
                  slt          t5, a7, ra
                  srl          s6, t0, s0
                  sll          s3, a4, s5
                  auipc        s7, 443038
                  lui          a0, 610619
                  addi         s11, s4, 1406
                  srli         a5, a7, 18
                  sub          t1, a5, s3
                  and          a7, a3, a4
                  nop
                  slt          t0, t6, s1
                  srli         gp, a3, 22
                  xor          t4, t5, s7
                  xor          a2, s10, t1
                  and          s11, tp, t5
                  sub          t0, t5, a0
                  xor          t1, t2, a6
                  srai         s9, t1, 3
                  sltu         a2, a7, a7
                  ori          a2, s8, 1054
                  slt          s6, t5, s11
                  sltu         s8, s8, gp
                  srli         s1, s2, 24
                  addi         sp, t1, -103
                  srl          s1, s9, t3
                  add          a4, s9, s11
                  or           zero, a5, a0
                  sra          s11, t1, t1
                  sra          s9, a6, t3
                  sra          ra, a2, zero
                  slli         s6, a7, 22
                  srl          s1, t0, t0
                  and          t1, a5, a4
                  add          t1, t2, t5
                  sra          s6, s9, zero
                  ori          a1, s0, -1049
                  slti         s10, s9, 57
                  xor          s5, a7, t1
                  srli         s6, s0, 31
                  ori          s8, t4, -136
                  srai         s10, s7, 30
                  or           t5, s9, s10
                  add          s10, tp, s2
                  add          a3, s10, s6
                  slt          s7, a7, t4
                  slt          gp, s9, ra
                  sltiu        s7, t4, -634
                  or           s7, zero, t5
                  sra          t2, s3, ra
                  lui          a5, 9708
                  sub          sp, s9, tp
                  ori          zero, s1, -39
                  xori         s7, a7, -253
                  lui          t3, 238375
                  sra          a4, s7, s7
                  sra          zero, s6, t2
                  andi         s11, t5, -681
                  sra          s7, a0, a5
                  sub          tp, a1, t2
                  srai         zero, s1, 6
                  srl          a0, s6, t3
                  sra          s3, t0, s3
                  sub          s6, s6, s4
                  sra          t4, s9, a2
                  addi         t4, s11, 1462
                  slti         s5, t2, -1566
                  ori          a0, gp, -1811
                  and          t0, a3, a5
                  andi         s3, s1, 1935
                  or           gp, tp, zero
                  xor          ra, s3, t2
                  slt          tp, s1, zero
                  lui          t2, 884705
                  add          a5, t4, s8
                  nop
                  srl          t3, s3, a2
                  addi         s11, sp, -1339
                  srl          a4, s2, a7
                  srl          t6, t2, t4
                  lui          s9, 740818
                  srai         s7, s9, 20
                  andi         s11, gp, -361
                  addi         t0, s5, 1791
                  slli         tp, tp, 2
                  nop
                  slt          a5, zero, zero
                  srli         s1, t0, 3
                  sll          t0, s3, t5
                  sra          s10, a0, t5
                  srl          s8, s6, s0
                  sltu         a5, tp, t5
                  add          s7, a1, s9
                  ori          s9, t3, -925
                  sra          t3, s8, t2
                  ori          s4, tp, -1895
                  sltiu        t1, gp, -1077
                  and          t4, sp, tp
                  sra          zero, s1, t4
                  srli         t6, a5, 11
                  sll          sp, t4, s1
                  addi         s4, tp, 1732
                  xor          s5, t4, s10
                  slti         a1, a2, -1717
                  andi         s10, s8, 1538
                  sll          s1, s11, t6
                  srai         a0, t4, 29
                  or           a7, s11, t6
                  slti         s9, a1, 450
                  addi         s5, a4, -478
                  nop
                  andi         s3, a2, 247
                  sub          s1, s0, t6
                  add          sp, s10, s9
                  xor          t4, a0, t0
                  andi         t2, ra, -1181
                  andi         s4, s1, 1178
                  sll          tp, t0, s2
                  sltu         a5, a5, s0
                  sltiu        a7, s11, 1144
                  auipc        t5, 990474
                  slt          t6, s0, t6
                  add          t6, s0, tp
                  addi         a2, s4, 985
                  sltu         s3, s10, a6
                  sub          a3, tp, a4
                  ori          tp, ra, -1925
                  srli         a7, a6, 1
                  sltiu        s3, a7, 340
                  slt          sp, t5, s4
                  auipc        s4, 904500
                  srl          ra, zero, sp
                  srl          tp, s1, gp
                  add          t3, s0, t4
                  lui          s3, 86535
                  lui          s6, 156809
                  nop
                  ori          t0, zero, -1768
                  slti         a0, t6, 535
                  lui          a3, 641240
                  xori         s8, s8, 52
                  sub          zero, sp, a7
                  sra          t6, s11, s8
                  andi         s6, tp, 33
                  sll          a2, t6, ra
                  srli         t6, t5, 28
                  srli         gp, t4, 16
                  andi         s1, a2, -1770
                  xori         t1, s1, 1144
                  srli         t5, t5, 16
                  lui          ra, 104929
                  and          s10, zero, a3
                  xor          a3, t6, s1
                  sll          s8, ra, a0
                  sltiu        tp, s0, -1497
                  sub          s10, s11, t6
                  srl          s5, a2, t5
                  xori         s9, s4, 1301
                  andi         a0, tp, -178
                  andi         s3, a6, 56
                  srai         a7, t2, 6
                  srl          s8, t3, a6
                  srli         zero, s2, 8
                  ori          t1, s6, -175
                  slti         s6, a7, -1268
                  lui          a7, 121533
                  srai         s4, gp, 3
                  sltu         ra, ra, s8
                  andi         a4, s1, -1960
                  srl          t2, s2, a3
                  srli         sp, t0, 9
                  or           s5, t0, gp
                  xor          s6, tp, s0
                  slt          s10, gp, gp
                  srai         t0, s11, 18
                  sltiu        t1, zero, -463
                  srl          a7, s5, t1
                  nop
                  addi         t6, s11, 1731
                  sub          s10, s1, a7
                  or           s4, a3, s11
                  nop
                  lui          ra, 933945
                  xor          s5, s2, s6
                  add          s11, a6, a0
                  sub          sp, t2, a6
                  auipc        t3, 882044
                  sll          s7, s7, zero
                  xori         s7, t1, 522
                  and          t6, gp, a5
                  or           t5, s4, s3
                  or           a1, s6, a0
                  xori         a2, a0, 745
                  sltu         t3, t5, t1
                  srl          s3, t6, s8
                  slli         a0, s4, 14
                  sra          t3, t1, s9
                  sra          a4, ra, t4
                  srli         s1, a0, 12
                  and          a4, s1, ra
                  and          s7, a0, s4
                  slti         s10, s11, -328
                  srli         a0, s7, 12
                  sra          a1, t6, s6
                  addi         zero, s3, 904
                  xor          t6, s5, s8
                  sltu         a2, s9, s11
                  sltu         a2, s1, a2
                  auipc        s10, 680239
                  slt          a3, s0, a5
                  addi         t0, t0, -1316
                  and          s4, a6, s6
                  nop
                  andi         t6, s3, 470
                  slt          s6, s11, a0
                  srai         sp, s10, 2
                  srli         s3, t1, 4
                  sra          t6, s3, a6
                  sltu         a3, a3, t5
                  sltiu        t1, t6, -1644
                  slli         t3, s7, 18
                  nop
                  ori          s7, t6, -83
                  add          t3, zero, s5
                  slti         t5, t5, 18
                  add          a0, s2, ra
                  nop
                  slli         s4, s5, 7
                  and          s5, a3, s3
                  add          a1, t4, gp
                  auipc        a7, 1047024
                  srai         s11, s1, 2
                  srl          t5, t4, s1
                  xor          s1, t6, s7
                  lui          s4, 563900
                  slti         a4, s11, -1536
                  xor          sp, s0, s0
                  slti         s1, a5, 692
                  xori         s8, a1, 1404
                  sll          s11, tp, s3
                  auipc        s7, 825952
                  add          a2, gp, s6
                  ori          s3, t3, -976
                  sra          ra, s11, s11
                  sra          gp, t5, t5
                  sra          tp, t2, t1
                  or           s1, s11, s9
                  ori          s11, s0, -1968
                  sll          t6, t2, t0
                  slti         sp, s5, -927
                  xor          a7, t5, ra
                  xori         a0, t1, -860
                  ori          t5, a5, 837
                  sub          t5, s5, t1
                  srl          tp, a3, sp
                  sll          t0, t5, s9
                  slti         s10, s7, 326
                  sltu         ra, t5, s7
                  sll          a4, gp, s0
                  lui          sp, 1026746
                  auipc        zero, 165446
                  xori         t5, s8, 598
                  nop
                  nop
                  auipc        s10, 875960
                  srl          t3, t5, s5
                  or           s8, t4, a7
                  sub          t5, a4, a7
                  or           s10, a0, s0
                  sll          s4, a4, s6
                  srli         a0, s0, 8
                  add          s6, t6, s11
                  sub          a5, s5, gp
                  sra          s7, s0, a1
                  addi         ra, s5, 444
                  srl          s3, a3, a7
                  srl          a4, t4, ra
                  sll          s4, s6, ra
                  auipc        gp, 396007
                  slli         sp, t4, 22
                  ori          s10, s10, 1965
                  slti         s6, a7, -1114
                  sltu         t3, a0, a5
                  srai         tp, a7, 8
                  slti         a2, a6, -1687
                  sub          a4, zero, t6
                  sltu         tp, a3, a7
                  auipc        s10, 479152
                  lui          gp, 495758
                  lui          t6, 929431
                  xori         s11, t6, 654
                  sll          s3, t3, t3
                  srai         gp, a4, 15
                  sltiu        s11, t5, 945
                  andi         ra, s6, 414
                  srai         a7, s7, 2
                  xor          sp, s1, a6
                  xor          s8, a3, s7
                  ori          s7, a7, -1010
                  sra          t2, s8, sp
                  andi         t4, s4, 1386
                  add          t5, zero, t2
                  slti         a4, t1, -1884
                  slli         t2, s6, 5
                  andi         s11, s2, 1090
                  sra          tp, a0, a1
                  andi         ra, gp, 1866
                  sltu         t1, gp, s8
                  xor          t5, a7, a0
                  slt          s5, a4, a2
                  add          a3, a7, a0
                  sub          t4, gp, s4
                  lui          t1, 521164
                  ori          t5, ra, -739
                  andi         a5, s5, 682
                  and          a0, t2, t0
                  xori         t5, s11, 1787
                  andi         s5, a2, 1718
                  sltu         s5, tp, s4
                  nop
                  lui          a1, 202035
                  sltu         tp, a6, s2
                  lui          s5, 785337
                  addi         zero, tp, 152
                  slti         zero, t5, -1149
                  srli         a4, a7, 26
                  nop
                  addi         tp, a4, 587
                  sltu         t0, gp, a7
                  sra          s6, a1, t1
                  nop
                  sll          s9, a7, a1
                  sra          ra, a4, a4
                  sll          sp, t6, t0
                  slli         sp, s8, 6
                  xori         a7, s3, -1551
                  sll          t0, s3, a0
                  sub          s10, s3, a0
                  sltu         a7, s4, a5
                  ori          gp, a4, 714
                  sub          s3, s1, s11
                  srli         t3, tp, 26
                  srli         ra, s4, 12
                  xor          s1, s11, s10
                  slti         a4, ra, -116
                  xor          s1, t5, sp
                  srai         s3, s0, 0
                  sltiu        tp, s7, 582
                  sub          tp, a0, s8
                  add          s4, a7, t6
                  xori         a7, s8, -845
                  and          t0, zero, a7
                  ori          a3, t4, 530
                  nop
                  ori          t6, t2, 1982
                  ori          s4, a7, 611
                  and          s11, s3, s1
                  sll          a4, tp, s1
                  xor          s11, a1, s5
                  xor          t5, s9, t5
                  srli         t0, t1, 27
                  slt          s7, ra, s9
                  sub          a5, zero, s11
                  sra          s5, s2, a5
                  srai         s4, s0, 15
                  srl          s10, gp, a4
                  slti         zero, t2, -1928
                  srai         s8, t1, 24
                  slti         gp, a5, 1164
                  addi         a0, a3, -532
                  addi         s4, a7, 745
                  sra          a4, a3, s0
                  slli         a0, t0, 28
                  xori         s7, a1, -1196
                  ori          s8, t6, -263
                  slt          s6, s8, s6
                  sltu         t3, a0, a3
                  srli         s8, s6, 14
                  xori         a7, s5, -1613
                  sll          a5, s8, s7
                  slti         a2, gp, 242
                  xori         a4, a6, 1219
                  srli         a4, t3, 27
                  sub          t3, t2, t2
                  xori         s10, t2, -1500
                  slti         a2, t5, 763
                  slti         t2, s3, -871
                  lui          zero, 413544
                  ori          a7, s3, -1439
                  sltiu        gp, t6, 1468
                  slli         a4, s10, 17
                  add          a0, t0, t2
                  or           a5, s0, sp
                  addi         s7, a3, 885
                  slt          a4, ra, t1
                  srli         s6, s5, 12
                  srai         t6, a0, 24
                  slli         t0, zero, 13
                  andi         sp, s5, 1549
                  srli         a1, a2, 16
                  lui          a5, 434005
                  slt          gp, t4, t5
                  lui          tp, 840130
                  add          t0, a4, t4
                  nop
                  srli         t0, tp, 5
                  sll          s10, s1, s6
                  auipc        t6, 379868
                  sltiu        a1, t6, 310
                  add          ra, a3, a6
                  slti         s5, ra, -575
                  lui          t2, 396610
                  sll          s5, s3, a7
                  nop
                  add          t5, zero, t2
                  nop
                  slli         t3, gp, 31
                  ori          s1, a6, -1493
                  ori          t6, s2, -1262
                  addi         s8, t4, -1387
                  sltiu        a7, a3, 829
                  andi         s6, a1, -2028
                  xori         a7, t2, 1983
                  sra          zero, a0, a4
                  slt          t6, a0, gp
                  lui          s5, 453065
                  sll          s5, t1, t2
                  nop
                  nop
                  slti         s6, a2, -1645
                  addi         s10, s1, -373
                  srl          s6, a4, s9
                  sll          a7, tp, s8
                  slti         sp, s9, -216
                  and          a0, a2, s8
                  nop
                  or           a7, a2, t0
                  sub          sp, gp, s5
                  or           s6, zero, t4
                  ori          ra, t3, -1204
                  lui          t2, 537480
                  srl          gp, a0, s8
                  lui          t5, 826418
                  add          a1, s8, ra
                  sll          a5, s7, s1
                  and          t2, a1, a7
                  or           s4, t3, sp
                  ori          s3, a2, -926
                  auipc        t5, 121516
                  xori         s4, a2, 1947
                  slli         s6, gp, 20
                  andi         t2, s0, -897
                  xori         t1, s10, -838
                  or           gp, s9, a5
                  sra          t5, a5, sp
                  sub          zero, a1, t6
                  sll          a0, s6, t6
                  or           s10, t3, t6
                  srl          t1, s8, ra
                  auipc        a1, 765205
                  and          s10, a3, s11
                  srl          a5, s11, s5
                  add          s10, s11, ra
                  sra          s8, a3, t3
                  sltiu        s3, s10, 439
                  sltu         s7, t2, s11
                  srai         tp, a0, 29
                  srl          ra, gp, ra
                  sra          a1, s3, tp
                  xor          a0, t2, a4
                  srl          ra, s4, s1
                  ori          s11, ra, -1058
                  srl          t3, s1, t4
                  sub          a0, t1, a7
                  lui          t4, 937454
                  sltiu        s10, a7, -640
                  add          a4, a2, t5
                  lui          a1, 346767
                  slli         s6, s5, 11
                  nop
                  andi         s8, a1, -1607
                  and          a3, ra, s8
                  slti         ra, a3, 728
                  add          t2, tp, a6
                  auipc        a0, 669162
                  or           a2, s9, a0
                  slli         s5, tp, 17
                  slti         t5, t0, 1231
                  xor          s4, s7, t6
                  srli         sp, a5, 22
                  ori          s7, t1, -1712
                  sltiu        s11, gp, 1077
                  srli         ra, t3, 24
                  xori         zero, s7, -1529
                  sub          a4, s11, a7
                  xor          a2, a6, t3
                  xori         a0, s7, 1954
                  nop
                  add          t1, t0, t3
                  xor          s1, a4, s8
                  srl          t3, s9, s9
                  addi         a7, t3, -1723
                  and          a3, t4, a0
                  sltiu        s3, t6, 1134
                  slti         t3, a1, -1845
                  and          a3, zero, a3
                  sra          zero, s3, t4
                  addi         a5, t0, -2019
                  slt          s11, a5, t5
                  lui          t5, 217448
                  sra          s6, a0, t4
                  srai         t4, gp, 9
                  sll          s10, s8, a5
                  slti         t2, t3, 589
                  sll          a1, s8, gp
                  sltu         t4, a1, s11
                  srli         s7, t4, 10
                  slti         t0, s9, 1503
                  andi         t0, t2, 778
                  nop
                  sltiu        a0, tp, -1876
                  and          t6, t4, t3
                  ori          a0, a3, 836
                  or           t4, s5, s5
                  sra          tp, zero, s4
                  xori         sp, t3, -798
                  sub          a3, s1, a3
                  sltu         t4, s8, a4
                  addi         a0, s8, 500
                  srli         a7, a1, 28
                  addi         s9, tp, 456
                  add          ra, ra, s3
                  and          zero, sp, t6
                  sub          sp, t5, a0
                  sra          s9, s7, s7
                  nop
                  srl          zero, a6, s1
                  sltu         t5, a5, a6
                  slt          s6, a7, gp
                  xor          t6, t3, a2
                  sra          a0, a0, a6
                  or           s11, a4, t5
                  sltiu        s1, s11, -696
                  and          t2, t0, t1
                  srli         a7, a4, 31
                  srli         a1, a6, 31
                  and          s10, s1, ra
                  srl          s6, tp, s10
                  ori          a0, a3, 986
                  sltiu        t1, s6, -1726
                  ori          s9, a4, 1410
                  addi         t6, t0, 1998
                  addi         t0, a1, -956
                  sltu         t1, a0, s4
                  sltu         gp, a0, tp
                  auipc        s7, 483521
                  sub          sp, sp, s6
                  srl          t0, t5, t4
                  sll          t5, s7, a0
                  xori         gp, s7, -427
                  nop
                  xor          zero, t0, s0
                  sltu         a5, t5, s7
                  sub          ra, a2, s3
                  auipc        s7, 243403
                  srl          s1, s8, t6
                  sltu         a0, s1, s5
                  auipc        s3, 479552
                  slti         t3, s1, -1453
                  add          s10, t5, s10
                  or           a3, s7, zero
                  sll          a1, s3, a4
                  sltu         s10, t6, zero
                  sub          a2, ra, a3
                  lui          a0, 153734
                  xori         a0, s10, 911
                  srl          ra, gp, s1
                  slli         t4, t3, 6
                  sltu         t1, s7, t2
                  sub          s5, a6, tp
                  addi         gp, s11, -1345
                  sltu         a5, s0, s5
                  sll          s6, gp, t2
                  sll          a1, gp, gp
                  andi         s9, a1, -1132
                  and          s7, t4, s1
                  slt          s3, t4, a5
                  ori          t2, t2, -502
                  or           s6, s6, a4
                  sll          s7, zero, s5
                  xor          s8, a0, s3
                  sub          s8, s11, t5
                  srl          t1, s8, gp
                  xor          t3, gp, t1
                  or           t2, t1, a1
                  sll          s7, t0, a5
                  and          s1, t0, s10
                  auipc        s8, 242486
                  auipc        a3, 72910
                  and          t1, a7, sp
                  ori          t2, s2, -347
                  sll          a5, a5, a5
                  sltu         s9, s3, a3
                  ori          a7, s7, -999
                  or           gp, t1, a4
                  addi         sp, s5, 492
                  and          s8, s3, t0
                  ori          s4, a3, 212
                  sll          zero, s6, s2
                  xori         a5, s5, -1857
                  sltu         s6, s8, s9
                  xor          ra, t1, a1
                  nop
                  lui          t2, 173807
                  xor          t3, a3, t5
                  sltu         s7, s4, tp
                  addi         a1, a4, -734
                  andi         t5, a1, 1288
                  sra          s7, t1, t0
                  nop
                  andi         a4, s6, 838
                  ori          a5, a6, 834
                  xor          s9, t1, a7
                  sll          gp, t1, s8
                  slt          t5, s8, s7
                  slti         t0, t4, 1098
                  srli         s6, s3, 21
                  lui          s11, 330097
                  addi         sp, a5, -1447
                  addi         tp, s2, -163
                  srai         a3, sp, 18
                  srai         t0, a1, 12
                  sltiu        t2, zero, -1928
                  sra          gp, t1, gp
                  sltiu        t1, s3, -1722
                  addi         gp, zero, 706
                  sltiu        s1, a2, 1659
                  srl          t2, gp, a4
                  auipc        s6, 253639
                  nop
                  sub          t3, zero, a0
                  nop
                  sltu         s11, s1, t2
                  slt          s3, a3, s4
                  addi         tp, s2, -820
                  srai         a5, tp, 8
                  sub          a7, gp, a5
                  sll          t5, a6, a6
                  slt          a5, t6, a3
                  xor          s1, s8, t1
                  sltu         a1, a7, gp
                  or           a7, s8, a6
                  andi         a7, t3, -249
                  slli         t5, s1, 1
                  andi         t4, s4, -569
                  srli         a2, s0, 5
                  sub          a2, t0, t2
                  sltiu        s11, a1, 1247
                  lui          ra, 1035321
                  sra          a3, t2, a3
                  andi         t6, s7, 1487
                  slti         a5, s5, 1198
                  sll          zero, t4, s3
                  and          s5, a0, s10
                  sub          t6, s0, s4
                  addi         tp, a5, 1090
                  nop
                  and          t3, t0, a1
                  slt          a5, s9, s9
                  slli         a0, a2, 3
                  sll          s8, t5, a4
                  slt          gp, zero, t2
                  auipc        t4, 846493
                  srai         t1, s8, 9
                  srai         a7, s10, 11
                  ori          t1, a7, 118
                  slt          zero, s7, a5
                  sub          s3, s7, t0
                  addi         a5, t5, 1510
                  slli         t0, ra, 6
                  nop
                  slti         a7, t2, -637
                  sll          s1, s7, a2
                  sltu         t3, s9, t0
                  or           a2, s1, t2
                  and          sp, a6, zero
                  lui          a5, 866235
                  ori          sp, s2, 1012
                  srl          a7, tp, t5
                  srai         s9, s4, 14
                  srli         tp, a0, 6
                  addi         s6, s4, -381
                  srli         sp, ra, 26
                  add          s5, s11, s10
                  nop
                  sll          t5, s6, gp
                  sub          t6, t4, s3
                  sltiu        zero, a6, 678
                  srl          t2, zero, t0
                  auipc        a0, 778979
                  nop
                  srai         s5, s1, 20
                  slt          t6, s4, gp
                  andi         zero, a6, 114
                  slli         t3, t6, 13
                  srai         a0, s3, 1
                  sra          a3, s9, t3
                  srai         t6, a5, 11
                  or           s3, ra, t0
                  or           t2, a5, s1
                  srli         s11, s6, 6
                  andi         t0, s10, 1188
                  or           sp, a2, ra
                  add          s5, s4, a4
                  slti         s9, a4, 1323
                  slli         s11, t6, 28
                  sra          s3, s6, a3
                  andi         a4, a4, 1303
                  slli         ra, ra, 1
                  sltiu        sp, t6, 306
                  lui          t5, 660677
                  sltu         sp, t2, t3
                  srli         s7, t1, 5
                  and          t2, a7, s5
                  nop
                  slt          t5, s2, s5
                  xori         s4, s9, 1107
                  slli         s5, a0, 2
                  and          s1, s7, ra
                  andi         a0, ra, -111
                  sltiu        zero, a3, -467
                  srli         sp, t3, 9
                  sra          t0, gp, sp
                  or           t2, s9, a5
                  slt          s9, s0, t0
                  add          s6, s9, a7
                  lui          a2, 884592
                  sub          a4, ra, t4
                  sub          sp, s7, s2
                  srai         t1, zero, 5
                  nop
                  or           tp, t6, s3
                  slti         a4, t3, -1288
                  or           a4, sp, sp
                  auipc        t6, 480513
                  sub          a0, t1, gp
                  slt          a5, t5, s8
                  addi         a7, s3, 1784
                  srl          s9, a1, a0
                  srai         t6, s1, 12
                  xori         s4, s9, -1466
                  sltiu        s7, gp, -1408
                  sltiu        s10, s10, -1549
                  lui          a5, 880113
                  xor          sp, t1, t4
                  sub          t4, a5, sp
                  srli         s1, t2, 11
                  srli         s5, s6, 27
                  nop
                  sub          s6, s9, a3
                  addi         a3, s3, -1157
                  add          t3, s6, t2
                  srai         s3, t0, 23
                  slli         t1, s3, 8
                  sltu         t3, s4, a2
                  or           a5, zero, t5
                  sub          sp, a3, s4
                  or           a2, s11, a1
                  sltu         s3, s5, t5
                  slli         a5, s7, 0
                  slti         a7, s11, 1969
                  sub          s4, t3, tp
                  nop
                  andi         gp, tp, -847
                  sll          ra, a5, a0
                  sltu         t4, t3, s5
                  slti         s4, t3, -969
                  add          s5, t4, s9
                  xor          s4, sp, s4
                  sltiu        a1, a5, -588
                  srl          tp, s7, s8
                  slt          s8, sp, t2
                  addi         tp, a5, -786
                  and          zero, s8, s9
                  srl          s3, sp, s7
                  sub          ra, a3, t5
                  sub          t2, t0, s1
                  nop
                  addi         t0, s3, -1742
                  srai         a5, s4, 30
                  srai         tp, a1, 14
                  auipc        s6, 869235
                  sltiu        s8, a0, -293
                  or           a3, a2, s4
                  sub          a0, a0, a1
                  slti         t5, gp, 100
                  sltiu        t3, s3, 229
                  srli         s1, a6, 15
                  sll          s3, a4, a7
                  nop
                  add          s4, tp, a4
                  add          s6, t5, t4
                  andi         t2, t1, -1695
                  li           s4, 0x9bd6a00c #start riscv_int_numeric_corner_stream_7
                  li           t5, 0x80000000
                  li           s7, 0xffffffff
                  li           s5, 0xffffffff
                  li           a0, 0x0
                  li           s1, 0xc1c042ea
                  li           s8, 0x80000000
                  li           sp, 0x0
                  li           a5, 0xd94b7737
                  li           t6, 0xffffffff
                  auipc        t5, 418183
                  nop
                  add          s8, s1, t5
                  nop
                  nop
                  auipc        t5, 467193
                  lui          a5, 724114
                  sub          a5, s5, sp
                  sub          t5, t6, sp
                  auipc        s5, 474489
                  auipc        s1, 537888
                  addi         t5, a0, 386
                  nop
                  add          s8, s7, s1
                  auipc        t5, 87618
                  add          a5, t6, t6
                  auipc        s1, 381958
                  lui          s5, 705097
                  lui          a0, 672849 #end riscv_int_numeric_corner_stream_7
                  andi         s8, t3, -1941
                  auipc        gp, 29778
                  srli         a5, t4, 16
                  add          tp, s9, s5
                  and          zero, s3, a6
                  ori          t6, t4, -1214
                  nop
                  sub          t6, t5, t0
                  slli         t1, a1, 11
                  srli         a5, gp, 27
                  lui          sp, 77203
                  or           s7, tp, s0
                  add          t6, t2, s0
                  sltu         s11, t4, s11
                  addi         a7, s8, -106
                  ori          ra, s10, 1700
                  srai         s4, t1, 13
                  nop
                  addi         s7, a1, 645
                  xori         s10, t6, 733
                  sra          t3, zero, t0
                  addi         s1, gp, 598
                  sra          s4, s8, s10
                  sll          s7, a7, sp
                  sltiu        t0, a2, -948
                  ori          t6, a3, 266
                  ori          t5, a1, 1166
                  auipc        a0, 154628
                  or           a1, sp, zero
                  slt          s4, a7, t5
                  nop
                  srli         a0, a5, 20
                  srl          a0, a0, s9
                  add          s9, t1, a4
                  lui          a4, 546256
                  xori         a7, a5, 128
                  xori         s11, t0, -598
                  xor          a3, sp, ra
                  lui          t3, 266635
                  slt          s10, a4, a3
                  srl          t0, t4, t5
                  ori          a4, t0, -1833
                  add          s6, a5, zero
                  add          a2, s2, s3
                  xori         t5, s10, 1863
                  sltiu        s9, sp, -1179
                  xor          ra, s6, gp
                  or           t1, s5, s10
                  srli         a2, s0, 28
                  nop
                  srl          zero, t4, sp
                  or           s4, tp, s4
                  add          t1, s0, t1
                  addi         t6, t5, 1683
                  add          s11, t3, s6
                  srl          gp, s1, t5
                  auipc        a3, 978995
                  sltiu        t6, s5, 1692
                  ori          t2, s7, 1485
                  add          a0, s1, s2
                  xori         t5, s1, 1334
                  add          sp, s9, s10
                  slt          s1, s10, a5
                  sltu         a4, a7, ra
                  add          tp, t3, a6
                  slti         zero, a6, -488
                  slti         t5, s8, -1630
                  ori          a4, s4, 1693
                  sub          a1, a0, t6
                  addi         s9, s9, 1560
                  srai         s6, a0, 19
                  lui          t6, 187122
                  xori         t2, s10, 442
                  sll          sp, s7, s8
                  xori         s8, s11, -1135
                  nop
                  nop
                  and          t4, s0, sp
                  auipc        t1, 78420
                  srai         a3, s11, 25
                  sltiu        t3, sp, 442
                  sll          s3, a0, a3
                  xor          a7, a6, s6
                  slti         t3, s8, 1514
                  srli         s4, t2, 25
                  sra          a3, t4, a1
                  sll          s6, a3, t2
                  srl          s4, s4, a2
                  slti         s3, t3, 832
                  add          s3, a1, a5
                  xor          t5, s11, a7
                  srl          t6, a2, s1
                  sra          s7, ra, a2
                  addi         s8, a0, -880
                  andi         s4, s7, -651
                  sra          s6, ra, t3
                  srai         gp, zero, 24
                  ori          a1, s0, -730
                  xor          t2, zero, s9
                  sltiu        t6, t4, 1537
                  nop
                  lui          a0, 349210
                  sltiu        s7, tp, -1305
                  sltu         s9, a3, t4
                  auipc        s1, 251988
                  sltu         a0, a4, a6
                  sltu         t1, s0, s3
                  sll          t1, s3, t2
                  srai         t1, gp, 17
                  lui          a3, 352543
                  xor          s11, zero, t2
                  add          s4, s1, a7
                  srli         a1, ra, 21
                  nop
                  lui          t6, 528661
                  slt          t4, s3, a2
                  sra          a4, s8, t2
                  slt          gp, t2, sp
                  sltu         zero, s5, s1
                  nop
                  sltu         a3, s1, a2
                  sll          a2, a2, s9
                  slt          a2, a6, s10
                  srai         t4, a7, 3
                  auipc        t2, 840756
                  auipc        a7, 555297
                  add          a7, s6, ra
                  addi         ra, t1, -1077
                  slt          zero, s2, a7
                  srl          ra, t4, t0
                  sll          s8, a1, a5
                  auipc        s1, 482188
                  srl          s8, s6, tp
                  and          gp, t3, t3
                  andi         s11, a7, -1475
                  slt          s10, s4, s3
                  srli         s3, s9, 1
                  add          gp, a4, s7
                  xori         a0, s10, -1813
                  slli         tp, t1, 23
                  slt          a1, a0, t6
                  sltiu        s1, s1, -1691
                  sltiu        s1, a3, -1181
                  xor          s10, ra, t3
                  srli         a3, s9, 24
                  sra          t3, t6, s0
                  andi         s5, gp, -494
                  addi         a0, s2, -220
                  lui          gp, 856241
                  slt          s11, t0, s8
                  sub          a0, t6, a5
                  slli         a0, t6, 15
                  xor          sp, s6, a1
                  xor          t2, s11, sp
                  slt          t6, ra, s5
                  xori         s11, a1, -626
                  slti         sp, t3, 1531
                  xori         t4, s10, 22
                  xori         s5, ra, 787
                  slt          t4, s9, s1
                  or           ra, s5, a2
                  sltu         gp, tp, s2
                  nop
                  sra          a7, a4, s6
                  ori          a2, s11, 1916
                  sub          a5, s11, sp
                  xor          a4, s3, s6
                  nop
                  slti         a1, sp, 590
                  xor          a1, s8, s10
                  slti         s5, t1, 738
                  nop
                  srli         sp, t2, 22
                  nop
                  sra          t4, t6, t3
                  andi         s8, s8, 930
                  slt          tp, t1, s7
                  slt          s11, sp, t1
                  srli         s11, a1, 10
                  sra          s7, s1, s7
                  sub          s10, a4, s7
                  or           a7, s6, t3
                  slli         zero, zero, 20
                  ori          s4, s8, 466
                  sll          s8, sp, s9
                  lui          s1, 185657
                  add          s1, sp, s5
                  srli         a0, zero, 21
                  sltu         a1, s1, s4
                  slli         s3, a1, 30
                  sra          t3, t1, sp
                  sltu         t2, a5, s11
                  srai         s6, s11, 3
                  slti         s4, s1, 916
                  sub          s7, s10, a7
                  slli         s5, ra, 12
                  auipc        a2, 655522
                  srai         a2, a2, 10
                  sra          s11, tp, s5
                  srli         t0, s9, 3
                  andi         a0, s4, 1857
                  srai         zero, a0, 4
                  lui          a1, 490115
                  slli         a4, s6, 21
                  xor          t6, t3, a5
                  sltiu        t4, s11, 306
                  ori          s10, s6, 1649
                  and          t5, t6, a6
                  slli         ra, a6, 26
                  auipc        sp, 65235
                  xor          tp, ra, s8
                  nop
                  ori          sp, s7, -1350
                  srli         gp, zero, 11
                  auipc        s6, 1007188
                  auipc        s11, 120992
                  sub          t0, tp, s0
                  auipc        s8, 487859
                  sll          t3, a4, t6
                  ori          s5, a7, -567
                  slt          gp, t0, s8
                  srli         t5, s6, 30
                  ori          s11, s4, 1097
                  sltiu        ra, a4, -152
                  xor          a2, s8, s2
                  lui          s6, 256979
                  sll          s9, s2, ra
                  nop
                  xori         s4, s8, 1946
                  and          t3, s9, s9
                  sll          s11, gp, t3
                  xor          s3, s1, ra
                  lui          a0, 895313
                  andi         s8, t4, 307
                  srli         zero, s7, 20
                  srl          a5, s4, s0
                  sltiu        t6, a6, 1482
                  slti         a4, s4, -974
                  lui          s10, 50086
                  xor          gp, s3, s9
                  sll          a3, s5, a2
                  andi         s11, s4, 1086
                  slli         s8, a7, 17
                  auipc        t6, 334645
                  slli         gp, a1, 8
                  sra          ra, t0, a6
                  addi         t5, ra, -926
                  nop
                  srai         t3, a6, 24
                  sra          t4, t4, a5
                  nop
                  add          a0, t3, s11
                  ori          sp, s3, 1844
                  srai         gp, a5, 20
                  or           a4, ra, a2
                  sltu         s6, sp, a5
                  auipc        s11, 648551
                  auipc        t1, 531452
                  sra          a2, a0, sp
                  and          s9, s11, a2
                  slt          gp, s6, t6
                  srl          ra, s1, a5
                  srai         t0, s2, 13
                  auipc        a5, 251567
                  sltiu        a3, tp, -1828
                  srl          a1, a3, s4
                  lui          a7, 119259
                  xor          t5, tp, s5
                  slti         zero, s1, 1502
                  sra          a2, a4, sp
                  sll          t3, t1, a2
                  slli         a5, s3, 4
                  andi         sp, s3, 443
                  lui          zero, 134094
                  slti         t2, s9, 260
                  xor          s11, s3, a4
                  auipc        t2, 296710
                  slt          t0, sp, t5
                  lui          t4, 762476
                  add          tp, t3, a1
                  sltu         tp, s2, s8
                  or           t3, t4, a6
                  andi         s5, t0, -1453
                  srli         s10, a0, 16
                  add          a3, s8, s10
                  ori          s11, t4, 1914
                  srli         sp, a6, 2
                  srai         t6, s4, 28
                  slti         sp, t0, -1955
                  nop
                  add          s6, s1, s5
                  add          t3, s8, s10
                  slti         s3, a6, -979
                  sll          sp, ra, s5
                  lui          s1, 42625
                  and          s5, s5, t0
                  srl          t5, a1, s0
                  sub          s9, sp, t5
                  slli         a7, a3, 12
                  sra          a1, sp, t2
                  andi         s5, s1, -1581
                  xor          gp, s6, gp
                  srli         t0, s9, 30
                  add          tp, a2, a0
                  add          s7, a3, s6
                  add          a2, a7, a5
                  sltu         t3, a4, t3
                  xor          s1, s0, a1
                  and          a7, a4, a2
                  sltiu        s10, a5, -1498
                  nop
                  and          t1, gp, s3
                  andi         tp, a7, 235
                  add          s9, a3, s2
                  xori         t2, s0, -1569
                  sltu         s8, t1, t5
                  auipc        zero, 446464
                  sll          s9, a0, s4
                  sra          sp, t5, s7
                  sra          s9, t4, gp
                  sltu         a7, t1, tp
                  slli         a1, s4, 27
                  slt          a3, a0, a2
                  lui          a3, 815522
                  slli         gp, t0, 1
                  ori          s1, s1, -922
                  srai         t0, a0, 22
                  slti         sp, t1, 1538
                  and          a5, a0, t5
                  sra          a2, s7, s3
                  or           t0, gp, t3
                  andi         s11, t1, 1978
                  andi         gp, zero, -738
                  sltu         s1, s5, a2
                  srai         a3, s7, 16
                  sll          gp, s6, a6
                  add          t2, t3, s8
                  sltiu        tp, s9, -1159
                  srl          t0, s2, tp
                  andi         gp, s4, 881
                  sra          a7, s5, s9
                  and          t6, tp, t0
                  ori          t3, s2, -339
                  srl          a0, s4, s9
                  auipc        s8, 421660
                  sll          tp, a1, sp
                  xor          tp, ra, tp
                  srli         t1, zero, 24
                  andi         t0, s2, -137
                  or           ra, s3, s7
                  srai         s7, s11, 14
                  sltiu        s7, s5, 598
                  auipc        ra, 540477
                  sltu         t6, zero, s7
                  xor          s3, t6, s0
                  srl          t1, s10, a3
                  andi         a1, t1, 1254
                  slt          s3, s11, a0
                  or           s3, s5, t4
                  add          s3, a0, s5
                  slt          a1, sp, s2
                  sltu         a4, s0, zero
                  srai         ra, t2, 25
                  xor          s3, tp, s1
                  or           t2, s4, zero
                  xori         a5, sp, 636
                  addi         a3, t0, -1800
                  sll          t6, sp, s4
                  srl          s6, a7, s4
                  sll          s1, s5, t5
                  or           s10, ra, s10
                  xori         a5, s5, 614
                  add          a4, a2, t6
                  sltu         gp, s10, t4
                  sra          t3, a6, zero
                  or           s5, s10, s1
                  sub          sp, t6, s5
                  lui          a2, 179638
                  addi         t2, s8, -329
                  xor          s5, gp, a6
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           ra, 0xffffffff
                  li           sp, 0xf976dfeb
                  li           t5, 0x80000000
                  li           s3, 0xffffffff
                  li           t1, 0x0
                  li           t4, 0x80000000
                  li           a2, 0xffffffff
                  li           a3, 0x80000000
                  li           t2, 0x0
                  add          t2, s3, s3
                  nop
                  auipc        t1, 102969
                  sub          ra, sp, ra
                  sub          tp, ra, t2
                  sub          tp, ra, t4
                  sub          t5, tp, t4
                  addi         t4, t1, -515
                  add          t5, ra, a3
                  addi         t1, t2, 1254
                  add          sp, s3, t5
                  lui          t2, 443602
                  sub          ra, t5, t1
                  lui          t2, 665317
                  lui          t1, 616304
                  nop
                  nop #end riscv_int_numeric_corner_stream_4
                  ori          s4, t2, 1254
                  and          s10, t4, s7
                  addi         s3, sp, -1494
                  sll          t6, t6, t3
                  slti         t1, ra, -1761
                  sub          a0, a5, t5
                  slli         t2, ra, 2
                  or           t5, a3, t2
                  sltiu        s4, t4, -1003
                  auipc        t0, 645143
                  slli         s1, a1, 22
                  andi         s7, t5, -550
                  slti         s1, a1, 717
                  or           s10, sp, a2
                  slli         t2, s6, 16
                  lui          s8, 133309
                  andi         s3, a7, 1254
                  sll          tp, sp, s5
                  and          t5, s7, s8
                  sltu         a5, t4, gp
                  srai         s5, s0, 31
                  srl          s7, s9, s2
                  xor          sp, s4, s6
                  slti         a7, zero, 541
                  srai         zero, a6, 3
                  auipc        t1, 281725
                  auipc        a0, 1031069
                  ori          zero, t0, -232
                  sltu         s9, t3, gp
                  and          t1, sp, s1
                  sltiu        s4, t6, 198
                  sltu         ra, a3, a0
                  andi         a3, sp, -789
                  slli         sp, s1, 16
                  slt          s6, s2, gp
                  slt          s6, s10, a2
                  addi         tp, s11, 404
                  or           s7, s0, s5
                  slt          t3, s2, t2
                  addi         s7, a2, 604
                  sltiu        t3, s11, -1865
                  or           s6, s2, zero
                  sll          s5, a4, s10
                  ori          a5, t1, -1407
                  nop
                  slti         t1, s11, 1141
                  andi         s10, a0, 1401
                  srli         ra, a2, 4
                  lui          a5, 373942
                  or           t6, sp, t0
                  and          s5, s5, zero
                  xori         t5, a0, 1584
                  lui          s9, 700199
                  ori          s6, sp, 298
                  sltu         s6, gp, a1
                  xori         s8, t3, 646
                  and          a7, a3, t4
                  and          a5, s3, t5
                  sltu         t2, a1, s9
                  sll          a2, s10, tp
                  srl          t0, s8, t6
                  sra          t2, tp, gp
                  sra          t5, t2, s10
                  sub          t2, s3, s11
                  slli         s3, s2, 19
                  nop
                  slli         ra, a7, 19
                  lui          t6, 859943
                  ori          s6, s6, 1429
                  sltu         s8, t4, t3
                  sra          gp, t3, s7
                  add          sp, s10, s0
                  auipc        s1, 579154
                  lui          a5, 957598
                  sll          t6, t5, a3
                  slt          s3, t2, s3
                  xor          gp, ra, a3
                  sltu         s3, t1, ra
                  slti         t4, s9, -1416
                  srai         t0, s1, 2
                  slti         s5, a3, -752
                  sltu         s10, t6, t2
                  sltiu        t0, gp, 2046
                  sltiu        s6, s5, 435
                  lui          t4, 30210
                  slti         s9, s3, 1115
                  xori         s3, sp, -401
                  addi         a2, a3, 1140
                  srl          a0, s10, a0
                  srl          a5, s8, tp
                  sltu         t2, a7, s0
                  sra          t5, sp, s9
                  addi         a7, a7, -463
                  xor          sp, a1, s9
                  addi         a2, t4, -554
                  add          a2, a3, t4
                  xor          t0, gp, a1
                  sltiu        t6, s5, 982
                  slli         t2, a1, 29
                  xori         s11, s6, 1001
                  sltiu        s11, s9, -1022
                  slli         sp, s10, 9
                  and          s9, tp, t1
                  xor          a2, s1, sp
                  slt          a5, a1, a6
                  auipc        s4, 803743
                  andi         s6, s11, -1648
                  sll          a2, t0, s8
                  sll          t0, gp, t1
                  srli         t6, t2, 3
                  xori         a5, t6, -1829
                  addi         s3, s1, -19
                  addi         s3, s9, 961
                  or           a1, tp, ra
                  andi         a3, a1, 1624
                  andi         t3, t4, -932
                  andi         t5, s1, 1310
                  auipc        s6, 783289
                  sltu         s11, s4, s5
                  xor          tp, s3, a4
                  nop
                  srl          a7, s5, zero
                  xor          a5, s4, t1
                  slli         a2, a6, 14
                  ori          gp, a3, -1784
                  andi         a5, zero, 196
                  or           gp, s5, s4
                  auipc        t3, 73976
                  srli         s7, s0, 18
                  sltiu        t6, s2, -352
                  andi         a2, t2, 1213
                  sll          t4, s6, gp
                  auipc        s8, 949855
                  sltiu        t3, t4, 1857
                  srli         s11, s2, 23
                  nop
                  addi         a7, s3, 435
                  or           t5, s1, gp
                  sub          s3, s6, s8
                  auipc        a4, 151292
                  slti         t0, a6, 181
                  srl          s7, s8, s7
                  slti         s9, a4, -569
                  xori         s8, a7, 949
                  nop
                  sub          ra, s3, sp
                  andi         a3, a5, -1315
                  slli         zero, t6, 24
                  sra          a5, a4, s5
                  srai         s11, t0, 18
                  slt          s5, gp, a5
                  andi         s7, t0, -1287
                  auipc        s8, 130109
                  sltiu        t6, a0, -1926
                  nop
                  slti         a0, a7, -1516
                  auipc        s11, 626863
                  slti         a1, t2, 754
                  sltiu        a7, t6, -889
                  sltu         s4, s8, ra
                  auipc        a3, 409718
                  add          t4, a6, s9
                  slti         t0, ra, -1842
                  xor          a4, s4, t4
                  andi         s4, tp, 58
                  srli         s5, t1, 25
                  xori         s5, t0, -1912
                  and          s1, ra, t4
                  slti         zero, zero, 1559
                  andi         s11, s7, -607
                  srl          a7, a1, zero
                  srli         a1, sp, 7
                  andi         s4, s9, 2016
                  xor          t0, s10, s1
                  nop
                  slti         s4, t2, 674
                  sltu         s6, ra, t6
                  lui          a4, 1009509
                  sra          a5, s11, s11
                  sra          a0, t4, s0
                  addi         s4, s2, -1418
                  add          t2, s2, t6
                  srli         zero, t6, 16
                  sub          t4, t3, t4
                  and          s5, a4, s9
                  add          s7, a6, sp
                  slli         tp, a0, 3
                  slti         zero, a5, 1701
                  slli         a5, a6, 28
                  sltu         s7, s0, a4
                  slli         tp, s1, 29
                  sub          s9, a2, t0
                  srli         s8, a1, 3
                  sltu         ra, a7, zero
                  auipc        a7, 786220
                  srl          sp, a1, s4
                  lui          a0, 709990
                  sll          t2, s5, s10
                  srl          t4, a3, t3
                  sltiu        s6, zero, -830
                  sub          t2, s8, tp
                  addi         a5, a6, 727
                  sltiu        t3, a3, -495
                  slti         gp, sp, -2048
                  lui          ra, 75660
                  auipc        s11, 275867
                  lui          s9, 1038515
                  slti         ra, a3, -1817
                  srl          a4, a5, s9
                  addi         a1, s9, 2037
                  and          a1, t4, sp
                  srli         gp, s2, 8
                  slt          a2, a4, s2
                  xori         t5, tp, 507
                  nop
                  slli         s10, s0, 0
                  and          sp, s0, a2
                  add          s10, t5, s3
                  srai         sp, sp, 22
                  slti         s3, a2, -1849
                  srai         t5, s7, 25
                  andi         s6, a7, -762
                  srli         a3, ra, 24
                  and          zero, a5, s10
                  slli         t3, a5, 1
                  xori         gp, s8, 21
                  or           tp, t6, t5
                  xori         s5, s0, 72
                  slt          s4, s7, t1
                  lui          s11, 965278
                  add          t1, s11, s9
                  addi         a3, a7, 780
                  lui          s11, 771918
                  nop
                  sra          ra, a5, a5
                  srai         zero, s1, 0
                  sltu         s11, a2, s2
                  srli         s10, s11, 6
                  sub          s3, a3, t3
                  sltiu        t6, s6, -286
                  sll          gp, s6, s1
                  slli         sp, a5, 4
                  xori         ra, a4, 2014
                  sll          s8, s7, s11
                  srai         s8, s0, 11
                  nop
                  andi         a5, a7, 1394
                  ori          s8, t0, 1242
                  slti         ra, sp, 954
                  slli         t0, a3, 4
                  xor          t2, s9, a6
                  ori          s3, a5, 383
                  slti         a4, a3, -1633
                  ori          s8, s7, -1055
                  slti         s6, s6, 197
                  or           t0, t6, a5
                  slt          t2, t1, s8
                  sra          s8, a0, s1
                  slt          a1, t5, s2
                  addi         zero, a0, -264
                  ori          s3, t5, 49
                  sll          s11, s1, a7
                  xor          s3, t1, tp
                  slt          a1, s6, t0
                  andi         s1, gp, -285
                  sltiu        t6, zero, 1557
                  ori          tp, tp, -1645
                  slli         t2, t2, 26
                  lui          t2, 686942
                  sltu         s8, s1, a2
                  add          a7, s1, a0
                  xori         a7, a5, 489
                  add          t4, s4, a3
                  srai         s6, t6, 8
                  srai         s6, a1, 2
                  slli         zero, s4, 14
                  add          a1, t0, s7
                  nop
                  xor          zero, a0, s1
                  and          s6, s11, a0
                  srai         a7, sp, 13
                  lui          s10, 223613
                  lui          sp, 1042664
                  sltiu        s1, a4, -613
                  xori         ra, a7, 1673
                  srli         s9, zero, 26
                  ori          s9, zero, -1312
                  ori          s1, a3, 532
                  and          s1, t5, t3
                  srl          s8, t6, s3
                  slt          a2, t2, sp
                  slli         s3, a6, 25
                  lui          a2, 419496
                  sra          s9, s0, a1
                  srli         a0, t6, 9
                  ori          t2, s5, -966
                  sltu         a2, s4, a5
                  sub          gp, gp, a4
                  sll          a5, s4, s2
                  slli         a5, a0, 25
                  auipc        a0, 27768
                  or           tp, s7, s3
                  andi         sp, a3, 1662
                  add          t1, a3, a4
                  addi         a3, a0, 107
                  sltu         tp, s8, a1
                  add          s8, t2, s4
                  sltu         s11, s11, a4
                  andi         t4, gp, -30
                  lui          s4, 524063
                  xori         sp, tp, -1244
                  xor          a1, t5, s0
                  sltiu        a2, a0, 1468
                  slt          a0, t1, s11
                  and          t1, ra, tp
                  xor          a7, t2, a0
                  slt          s9, a6, a2
                  addi         t5, a2, -323
                  or           s8, t5, a2
                  lui          s1, 73428
                  slti         sp, s3, 1561
                  slti         s1, gp, 1893
                  srl          s10, a3, a5
                  or           a2, s7, t1
                  andi         s7, s3, -1678
                  add          s6, s5, t4
                  or           a7, s11, sp
                  sub          s3, a7, t5
                  lui          t6, 792472
                  lui          a2, 710540
                  add          sp, sp, a3
                  ori          s7, a1, 716
                  and          a4, t6, a5
                  andi         a4, a4, -1283
                  srli         t1, a5, 23
                  slli         a0, t1, 1
                  lui          s7, 479631
                  slli         s11, s10, 5
                  addi         zero, ra, 1904
                  slli         a0, a2, 4
                  srli         s9, t2, 23
                  lui          t0, 559101
                  slt          s9, s9, a3
                  slt          t4, t2, a1
                  nop
                  addi         t3, s3, -1286
                  nop
                  auipc        s5, 566440
                  sub          s5, t6, a7
                  sll          zero, t6, s4
                  srl          t3, t2, tp
                  slti         s10, s11, 1625
                  add          s3, s9, a4
                  add          s7, t0, zero
                  sra          tp, s3, a0
                  slli         s8, sp, 3
                  sll          s7, s11, ra
                  srl          a4, s9, s1
                  srli         s4, t6, 22
                  sltiu        s7, s7, -1382
                  sub          t1, s6, zero
                  srl          s6, s3, s0
                  sltu         a0, s10, s10
                  addi         s10, a3, -1609
                  lui          ra, 110265
                  or           s8, zero, s9
                  sltu         t3, gp, s1
                  lui          a7, 551970
                  srai         sp, a5, 10
                  slt          a7, s8, s11
                  addi         tp, t3, 777
                  slli         a3, s9, 10
                  lui          t0, 624956
                  xori         t6, sp, -886
                  slt          a1, sp, a6
                  lui          sp, 628356
                  sll          t4, t1, a0
                  srli         t5, a0, 31
                  sltu         t0, zero, t0
                  slt          ra, a0, a6
                  xori         ra, t5, 221
                  srli         sp, s5, 11
                  sltiu        t2, t5, 1991
                  and          sp, a3, sp
                  xori         t6, gp, -1936
                  xor          s5, t5, s4
                  srli         a5, s9, 5
                  nop
                  sub          a1, s2, t4
                  sll          tp, t3, s5
                  lui          sp, 74718
                  addi         a4, a2, 1319
                  slt          ra, t4, tp
                  sltu         a2, s4, zero
                  nop
                  srl          t6, zero, a7
                  srli         s6, s9, 18
                  xori         t2, t1, 1450
                  addi         s5, s0, -551
                  slt          s1, s0, t3
                  slti         t1, sp, 1077
                  lui          t2, 112743
                  sll          sp, s0, tp
                  addi         t2, t6, 874
                  slli         s8, t2, 9
                  srli         a2, a1, 9
                  srl          a4, a5, a4
                  ori          a7, a5, 12
                  auipc        tp, 465538
                  srl          a3, a4, s0
                  slti         gp, a2, 1362
                  srli         a3, t1, 12
                  andi         s3, a0, -1689
                  srl          a3, s1, t6
                  sll          ra, s7, t0
                  slli         s1, ra, 31
                  add          t3, a0, s1
                  sub          gp, gp, a4
                  auipc        gp, 153753
                  slti         zero, tp, 288
                  slt          t3, s3, t5
                  sltu         gp, s0, a2
                  or           t2, s3, a1
                  ori          s1, gp, -1579
                  ori          sp, t2, 155
                  sub          tp, a6, s4
                  sub          s5, s11, a7
                  srl          zero, s9, s9
                  nop
                  add          a5, s2, t2
                  ori          a0, a4, -1821
                  sltu         a7, t3, t3
                  nop
                  add          s6, s0, a6
                  or           a3, zero, tp
                  andi         s10, a1, 1182
                  srl          ra, t1, a7
                  lui          s9, 763274
                  lui          a5, 468996
                  srli         t1, s5, 10
                  xor          s10, s7, s1
                  slli         s10, t0, 3
                  slt          s10, s5, t6
                  ori          s11, t3, -930
                  and          gp, t6, t6
                  slli         t4, a3, 28
                  auipc        s9, 973569
                  ori          tp, zero, 612
                  ori          zero, a3, 1398
                  ori          ra, s0, -1857
                  addi         t2, a5, 116
                  slti         t0, ra, -683
                  slli         s1, t5, 30
                  srli         t0, s1, 2
                  srai         t2, a3, 8
                  srai         s4, t6, 8
                  xori         tp, t1, -541
                  andi         s1, s8, 840
                  sltiu        ra, s4, 486
                  or           a2, zero, s1
                  slti         t3, s0, 1727
                  srai         t5, a3, 14
                  sub          a7, zero, s1
                  nop
                  sub          zero, a1, a1
                  addi         a2, t0, 665
                  sra          ra, t0, t3
                  lui          s5, 484068
                  sra          s3, gp, ra
                  sltu         t1, s7, s1
                  lui          s10, 96199
                  srai         a1, a0, 27
                  slli         s11, a7, 2
                  and          s1, t6, a6
                  sltiu        s4, s4, -949
                  srli         t0, a0, 21
                  addi         a2, s5, 1975
                  xor          zero, s9, t4
                  add          t0, a3, t1
                  add          a1, zero, a5
                  xor          sp, s7, gp
                  sltu         s6, s10, a4
                  sra          s4, a4, t3
                  or           a2, t0, a3
                  slti         t0, a1, 57
                  lui          a0, 930803
                  ori          s11, a0, 1407
                  and          t1, a4, gp
                  slt          s3, t5, t4
                  andi         zero, a6, -1719
                  auipc        a7, 453566
                  addi         zero, a0, -989
                  and          zero, s11, sp
                  nop
                  xor          a2, a1, s3
                  sra          s8, s4, a4
                  lui          s1, 623559
                  lui          tp, 551807
                  lui          a2, 454248
                  srl          a3, t1, s10
                  auipc        a0, 3899
                  slti         a1, a3, -1073
                  andi         a7, a2, 16
                  or           a4, t4, ra
                  and          s5, t2, t6
                  srli         s10, s4, 19
                  xor          t3, t2, s11
                  sltu         a2, a1, s5
                  xor          s7, gp, t4
                  ori          s9, t2, -1556
                  ori          s11, zero, -1865
                  or           s4, s7, a1
                  sub          s9, gp, t2
                  add          sp, ra, t3
                  andi         a7, s11, 1950
                  sltiu        ra, tp, -703
                  sra          a2, s6, t5
                  sltu         t3, t1, a0
                  add          a5, s8, t1
                  xori         a0, s3, -1269
                  slt          a0, a6, t2
                  or           s4, ra, s3
                  sll          a3, t3, s7
                  srli         t3, t2, 7
                  lui          t0, 475445
                  xor          s9, t0, t0
                  add          sp, a3, a7
                  srl          s9, ra, gp
                  slli         zero, a5, 22
                  or           t0, sp, gp
                  nop
                  srai         s3, t3, 8
                  andi         a3, a7, -926
                  xori         s7, tp, -787
                  srl          t5, t6, sp
                  sub          t2, a5, a5
                  add          s10, gp, s11
                  xor          a1, s9, t1
                  ori          s5, s3, 1963
                  slt          ra, s5, t6
                  srl          a4, tp, sp
                  sra          s1, a4, t5
                  slti         ra, s5, 1333
                  srl          a7, a0, s11
                  xor          a7, s10, t2
                  srli         ra, t0, 17
                  nop
                  sltu         t4, zero, s5
                  srli         gp, t6, 22
                  sltiu        s4, a4, 1278
                  srli         a7, s3, 15
                  slt          a2, s10, s6
                  sub          a5, a4, s0
                  sltiu        a3, zero, -769
                  xori         a2, a5, 996
                  slt          sp, s9, a2
                  and          s5, s3, s0
                  sra          s1, s2, s9
                  addi         t4, t5, 1223
                  sltiu        s4, s0, -421
                  addi         ra, sp, -686
                  srli         s4, a6, 27
                  sra          s10, tp, a0
                  xori         tp, s8, 1770
                  sltiu        a2, a7, 803
                  nop
                  lui          t5, 182782
                  add          ra, s1, s7
                  xor          s7, a7, zero
                  sra          t4, s8, zero
                  addi         s8, t4, 670
                  sltiu        s4, t6, -1889
                  addi         t0, a7, 511
                  srai         sp, a2, 6
                  xori         s3, t0, -1279
                  sub          tp, a6, t4
                  srai         s8, s4, 14
                  sll          s9, zero, s1
                  xor          t1, a0, s0
                  slti         a5, a6, -661
                  srai         ra, a5, 4
                  srli         s11, a7, 1
                  and          gp, s3, t2
                  sltiu        s7, s11, -1595
                  auipc        a2, 168210
                  xor          s4, a3, a5
                  add          s10, a7, s0
                  sll          ra, t2, a3
                  sltiu        t0, a1, 1043
                  sra          a2, a7, t3
                  andi         t6, s11, 77
                  xori         s5, t1, 1948
                  sra          s5, s11, a4
                  xori         t0, zero, -1708
                  addi         t3, a2, -1629
                  auipc        ra, 935082
                  andi         t1, t6, 296
                  sra          s7, ra, s5
                  xor          a1, a4, t3
                  addi         a4, tp, -773
                  nop
                  srai         tp, s4, 20
                  or           s11, t4, t3
                  slti         t3, a2, 1536
                  auipc        gp, 494064
                  xor          gp, s0, sp
                  slt          a5, t4, a5
                  auipc        a4, 590000
                  srl          t5, s9, zero
                  xori         s8, a6, -1626
                  and          s9, t6, s4
                  slt          tp, s10, t2
                  andi         s6, s0, 381
                  ori          s7, zero, -1484
                  slli         s8, a7, 7
                  srli         t0, a0, 9
                  xor          s7, a1, s5
                  slti         s4, a6, -1484
                  sltiu        s1, zero, -835
                  sra          t4, zero, s2
                  andi         t6, s10, 513
                  sra          s4, a2, s8
                  srli         t5, s8, 1
                  slli         s1, a1, 22
                  slti         tp, tp, 360
                  sub          t5, zero, s4
                  lui          t6, 938688
                  srai         s5, s9, 12
                  sll          s5, s5, a7
                  and          tp, s6, s8
                  ori          ra, s3, 258
                  sll          a7, t1, s9
                  andi         zero, s1, 762
                  lui          a5, 515203
                  sra          t3, a4, a0
                  slt          a5, t1, t6
                  sub          t6, gp, gp
                  sltu         t5, sp, t6
                  slt          ra, s5, a1
                  slli         zero, a4, 30
                  srli         s1, t1, 19
                  lui          t0, 765575
                  and          a2, s11, s2
                  sltiu        a1, a1, -1925
                  xori         a1, t1, 943
                  nop
                  or           a7, s4, sp
                  xori         a2, s2, -206
                  xor          t2, t3, s3
                  xori         a4, s3, 1587
                  slti         s11, s8, 1292
                  sll          t6, s11, a2
                  sltu         s3, s10, t2
                  auipc        s8, 553804
                  ori          a0, s11, 1449
                  lui          s5, 381984
                  sltu         s1, t2, a5
                  lui          t5, 765225
                  slt          t2, s0, t3
                  andi         t4, a5, 701
                  and          a2, s8, t6
                  or           a5, s1, t5
                  slti         t2, s5, 1052
                  addi         t6, a4, 761
                  xor          s11, s7, a6
                  sltiu        a3, s5, 1939
                  sra          a4, t1, a0
                  ori          s9, t0, -285
                  or           a3, s7, a5
                  srl          a3, t2, a6
                  or           a7, t4, ra
                  xori         t4, t3, 311
                  sltu         a0, s6, gp
                  xori         s3, zero, 561
                  add          s4, s8, a3
                  sra          t5, ra, t1
                  srli         s9, s5, 6
                  lui          a1, 1016859
                  xor          t4, s8, sp
                  add          ra, a5, a3
                  add          t3, a0, a2
                  srl          a1, a3, a5
                  sltu         s1, s6, s7
                  sltiu        s6, s9, 1410
                  slti         s3, s2, 1051
                  slt          t0, t2, sp
                  sra          sp, a6, s1
                  sub          tp, s4, a1
                  lui          s6, 235033
                  sltiu        t2, a3, 1718
                  lui          s3, 194163
                  srl          ra, s3, s1
                  and          tp, a1, t5
                  add          t0, zero, s9
                  xori         s1, s3, 724
                  or           s5, s0, s6
                  slt          a2, s7, s8
                  sub          a3, t3, s7
                  sltiu        a3, s7, 1262
                  slt          a7, s6, s2
                  srai         t0, t4, 4
                  and          s8, a5, s4
                  andi         s4, s6, -873
                  and          tp, s2, s2
                  or           a1, s9, t5
                  sra          t4, a5, t4
                  slt          a1, t4, gp
                  sra          gp, tp, a7
                  srai         a1, t2, 12
                  nop
                  ori          s5, a5, -692
                  srai         a7, s10, 7
                  sltu         ra, a3, sp
                  andi         t6, s5, 1977
                  auipc        s10, 428468
                  srai         a2, s1, 25
                  add          s9, s9, zero
                  slti         s8, s6, -1206
                  nop
                  auipc        s6, 993668
                  srl          t4, tp, t0
                  auipc        t4, 754734
                  srl          t4, s11, gp
                  slti         s9, a2, 1729
                  or           ra, t6, t4
                  and          s3, s5, s1
                  xor          s7, s10, s1
                  sll          t3, t4, s2
                  slti         sp, s2, 1067
                  sltiu        gp, ra, 1086
                  lui          t0, 734825
                  slti         s7, s11, -232
                  ori          a4, a5, 722
                  sltu         tp, s1, a4
                  srl          s10, t4, tp
                  add          t4, a4, s8
                  srl          t2, t3, t5
                  srai         a3, a5, 13
                  sra          s4, sp, t6
                  srli         tp, sp, 22
                  slti         s7, s4, -1641
                  sltu         s8, t4, a7
                  sub          a2, s5, a2
                  slt          s9, t6, gp
                  xori         s1, s0, -1341
                  andi         a2, s11, 1588
                  or           gp, a1, gp
                  slt          t2, t2, gp
                  sll          t6, s4, a4
                  slt          tp, s6, t5
                  slli         s7, s4, 6
                  slti         s9, t1, 1109
                  auipc        s4, 821418
                  sltiu        s11, a0, 18
                  srl          a0, s8, t1
                  srli         s3, a6, 21
                  lui          zero, 549208
                  sub          s11, a0, a7
                  add          s4, a5, gp
                  srai         a1, s0, 11
                  add          s3, s8, zero
                  or           s10, s2, t0
                  srli         a7, s1, 2
                  slt          s8, a4, a5
                  sra          t5, a2, t0
                  add          t0, t5, a3
                  srl          zero, a6, a1
                  andi         s4, s9, 1912
                  slli         s8, a7, 29
                  addi         a7, a7, 1011
                  xori         tp, t4, 1727
                  slli         a2, s10, 10
                  auipc        t4, 923615
                  xori         ra, a5, -1822
                  slli         t0, a7, 13
                  xor          sp, s3, t4
                  andi         t1, t0, 1103
                  ori          s6, a0, 446
                  sltiu        t6, s0, -1577
                  add          a2, s2, a2
                  sra          t5, s3, sp
                  and          s7, a1, a5
                  srai         a7, s7, 6
                  sltiu        zero, sp, 2007
                  lui          t5, 832901
                  addi         s5, s7, -1922
                  auipc        t6, 575507
                  srli         a5, ra, 17
                  slt          s6, s10, a2
                  slt          t4, s0, a3
                  or           a1, t2, a4
                  xor          ra, t5, a0
                  andi         sp, t5, -978
                  sltiu        a0, a5, 968
                  add          s5, s3, s0
                  add          a0, a2, s10
                  and          s9, s0, s9
                  or           t4, s0, sp
                  srl          a4, t6, tp
                  sll          a0, t0, s5
                  sll          a0, a5, a4
                  sltu         a3, a6, s0
                  sll          s8, ra, s0
                  and          s10, t1, s10
                  addi         t0, ra, 498
                  andi         s4, s8, -463
                  auipc        s11, 88412
                  sll          a4, a7, a3
                  and          s11, s7, s3
                  slt          s8, s11, a3
                  sra          zero, s4, s4
                  sub          s8, a1, s9
                  sltiu        ra, s2, -930
                  addi         t4, a1, -188
                  slt          tp, t0, s8
                  auipc        s7, 305320
                  sltiu        s3, s8, -1126
                  nop
                  and          tp, s4, s7
                  slti         sp, t3, 896
                  and          s3, s5, t3
                  sll          ra, s7, a3
                  sltiu        t5, a5, 28
                  srl          a1, s3, s6
                  slt          a2, s4, t1
                  andi         s11, t0, -1534
                  and          t0, a4, s9
                  srai         s9, s3, 18
                  and          s1, a0, s5
                  sltu         tp, t1, t0
                  slt          s6, t6, t3
                  srl          s8, zero, t4
                  srl          t0, a7, t5
                  andi         a5, t3, -198
                  slt          s5, s7, s3
                  and          s11, t2, s7
                  or           s8, a2, a0
                  xori         s8, s6, 381
                  auipc        gp, 501071
                  slt          t1, a6, s7
                  slt          s5, zero, t2
                  slli         t0, s9, 4
                  sltu         a3, a0, s10
                  ori          tp, t0, 808
                  srai         t2, s10, 9
                  add          t5, a1, s5
                  srai         s4, ra, 8
                  srai         s4, s2, 25
                  sub          a2, ra, a3
                  slti         s6, sp, 1608
                  srli         tp, s6, 20
                  xori         s5, t5, -2046
                  ori          gp, zero, -1719
                  ori          a0, gp, 1052
                  xor          a4, zero, a6
                  sub          t4, a3, a4
                  srl          s8, s6, a7
                  sltu         t2, a1, s8
                  xor          s9, t5, s4
                  auipc        s8, 128885
                  add          a4, s5, t4
                  sltu         tp, zero, s11
                  slli         gp, t4, 2
                  auipc        s10, 442735
                  nop
                  sll          tp, s0, s11
                  sub          t5, tp, t1
                  slli         t2, s10, 15
                  srli         tp, a1, 30
                  andi         t6, a6, -577
                  nop
                  sltiu        s9, a7, 784
                  sra          s4, s2, a3
                  sll          a2, s5, gp
                  slt          tp, tp, a7
                  sltu         t2, s2, s5
                  auipc        a0, 350092
                  srli         a3, s3, 7
                  slt          s4, a6, a3
                  auipc        a3, 914181
                  srli         a4, a2, 17
                  srli         tp, a2, 11
                  xori         s9, sp, 767
                  slti         tp, t3, -2002
                  add          s9, s3, a3
                  and          s6, s11, a0
                  slli         a0, t4, 22
                  nop
                  andi         s8, tp, 406
                  xor          a7, t6, a0
                  srai         s9, s1, 0
                  auipc        zero, 851703
                  slli         t5, a3, 4
                  xori         t6, t2, 1219
                  auipc        s3, 581469
                  nop
                  andi         s5, a4, 493
                  sra          t4, a1, s7
                  sra          s4, t6, t6
                  sub          t0, a4, t2
                  sra          s9, s1, ra
                  xor          t3, s9, s4
                  xor          t0, t2, s9
                  ori          a0, s1, -150
                  slt          s8, a1, t1
                  or           a0, t1, t1
                  slti         s4, s5, -777
                  sll          a5, ra, a2
                  slt          s3, s0, t6
                  sltiu        a2, gp, -460
                  ori          s8, zero, 430
                  or           t2, s9, sp
                  srli         s7, a0, 29
                  andi         t3, a0, -1043
                  srai         s7, s3, 4
                  sub          t3, sp, a7
                  or           tp, s3, s10
                  ori          a7, s0, -273
                  slti         s8, s7, 1894
                  auipc        gp, 923010
                  xor          s9, a6, s9
                  srli         a7, s4, 24
                  slt          s6, t3, t5
                  srai         s9, t1, 18
                  sll          a0, s1, a7
                  sltu         t6, t6, a6
                  addi         s4, ra, 1639
                  auipc        t2, 509613
                  slti         a1, gp, 1509
                  srl          s6, a3, t6
                  and          s5, a4, s10
                  auipc        a2, 511229
                  sltu         t1, ra, s9
                  andi         a5, s4, 1021
                  nop
                  slli         a7, a5, 3
                  srli         a0, t1, 24
                  auipc        t2, 34549
                  slli         t2, a5, 28
                  and          s7, s10, s7
                  sltu         tp, t3, t1
                  nop
                  srai         t1, a7, 15
                  sltiu        t4, a2, -717
                  sll          s1, s4, tp
                  andi         t1, a6, 1351
                  sltiu        t5, a6, 832
                  nop
                  add          a4, ra, s4
                  ori          s11, s4, 985
                  or           a2, a5, s10
                  add          s10, s6, t6
                  sltu         zero, s10, t1
                  sll          t5, t4, a2
                  sll          t1, a2, ra
                  ori          a4, s1, 628
                  or           t1, s7, s5
                  slt          zero, s9, ra
                  nop
                  lui          a2, 394538
                  srl          a3, t0, ra
                  sltu         s7, s11, s6
                  xori         s11, a4, 2033
                  srai         a7, ra, 28
                  srai         sp, a6, 23
                  ori          s1, s5, -1944
                  sltu         zero, ra, t1
                  srl          s1, s0, t3
                  sll          s11, s2, s11
                  slti         ra, a5, 1014
                  add          s8, s5, a0
                  slti         tp, t1, -1074
                  srli         tp, a5, 24
                  srai         s9, s11, 17
                  or           s8, a7, t3
                  slli         t1, s6, 17
                  srai         s11, tp, 4
                  xori         ra, t6, 349
                  ori          s3, a0, -141
                  xor          s5, s0, t4
                  xor          s3, t0, s9
                  slt          a7, s9, ra
                  auipc        a5, 534216
                  xori         a4, a2, -1286
                  srli         t1, s3, 26
                  srai         s5, a7, 0
                  add          a0, s11, a7
                  xori         a7, a7, -989
                  sll          a7, s8, tp
                  sub          a4, gp, s5
                  srai         s10, s8, 29
                  srai         s9, a1, 3
                  srai         t0, s6, 15
                  xor          a0, tp, t2
                  ori          s7, t0, -1161
                  auipc        s9, 956742
                  addi         s8, a0, -1481
                  and          a3, s2, s6
                  sra          a4, ra, s4
                  sub          s7, s10, s6
                  srli         sp, tp, 0
                  sra          t6, s11, s4
                  xori         s3, a5, -605
                  sltu         t1, t4, a0
                  andi         a7, s6, 81
                  xori         a4, s6, -976
                  and          zero, s6, a6
                  xor          t1, t6, t2
                  andi         t6, s11, 849
                  auipc        t4, 633210
                  andi         s10, a2, -448
                  auipc        t2, 111712
                  addi         s8, t3, -1213
                  slti         s4, s7, 1040
                  sll          t4, t2, s11
                  sltiu        s8, a0, 345
                  srli         s9, a1, 16
                  srli         a4, s2, 12
                  or           tp, t3, a6
                  nop
                  xor          zero, s10, t2
                  sra          a7, s3, t3
                  xor          t2, s0, s0
                  slli         s3, t5, 6
                  or           t5, a5, a2
                  add          s8, tp, s7
                  auipc        a1, 628448
                  xori         a0, t1, -512
                  slli         a7, tp, 17
                  srli         t1, t0, 4
                  sll          a0, t0, s0
                  addi         s11, a6, -1044
                  sra          tp, t4, s2
                  sltiu        s10, a2, 1180
                  sltiu        t4, a6, 1508
                  xor          s9, s10, t6
                  srli         a3, sp, 30
                  slti         t6, t1, -459
                  sra          a2, t1, t3
                  sltiu        s7, s7, 570
                  add          t0, gp, s8
                  addi         a0, gp, -1169
                  srli         ra, t6, 16
                  ori          s9, s2, 816
                  sltiu        t2, s5, 1316
                  slli         gp, t2, 6
                  sltiu        s4, a4, 1000
                  add          t1, t3, t3
                  srl          a7, s5, s5
                  xor          a0, a7, s6
                  andi         s3, s0, 146
                  lui          s5, 228810
                  sltiu        s7, t2, 1932
                  srl          s1, a0, a7
                  sra          a5, a7, s10
                  add          t4, tp, tp
                  sll          s5, t3, a6
                  srai         t6, a0, 11
                  slli         a5, a3, 7
                  addi         zero, s7, 1050
                  sltiu        gp, a1, -1765
                  srai         t2, t0, 27
                  nop
                  sra          s5, a5, t3
                  slti         zero, a6, -2013
                  sub          tp, a7, a1
                  sltu         a2, s8, t2
                  add          t0, s4, t0
                  srai         sp, gp, 18
                  sltiu        t6, s5, -1895
                  nop
                  sub          a0, s10, s11
                  and          s8, s6, s2
                  xor          s10, s5, s6
                  sra          a2, t3, s7
                  slti         s7, t2, -118
                  andi         s9, s3, -1812
                  lui          a0, 655382
                  ori          s6, a6, 764
                  addi         t2, s8, -1336
                  or           a3, s8, a6
                  slli         gp, s3, 14
                  sltiu        zero, a3, -592
                  ori          s7, t5, 1062
                  nop
                  sll          sp, gp, ra
                  lui          t3, 579242
                  slli         gp, t3, 3
                  srai         zero, a4, 2
                  or           t1, a4, s3
                  andi         s6, t4, -943
                  andi         t3, gp, 128
                  ori          t2, s8, 1736
                  ori          t1, t6, 1809
                  sub          t3, a3, s1
                  sltu         ra, s3, t4
                  lui          t1, 686038
                  sll          t3, s3, ra
                  slli         tp, tp, 31
                  lui          s11, 792949
                  slt          zero, s0, s7
                  nop
                  and          sp, zero, zero
                  or           s5, s8, a0
                  xor          a2, s4, a5
                  slt          t5, t2, s7
                  and          t4, t3, s5
                  srli         a7, s10, 4
                  add          ra, s3, s1
                  xor          a1, a5, t2
                  and          t6, s9, t0
                  srli         s1, a5, 9
                  sltu         zero, t0, t1
                  srli         s3, t6, 27
                  srl          s8, t5, a1
                  slt          a2, s6, t6
                  slli         s8, a2, 21
                  andi         a4, a5, 854
                  add          s7, s5, zero
                  auipc        s10, 2238
                  nop
                  andi         a3, t6, 1994
                  or           a5, s1, s2
                  slt          sp, s4, s7
                  sltu         s11, gp, t6
                  xori         gp, s1, 854
                  sltiu        a2, t5, 677
                  slli         s3, s3, 30
                  slli         t0, s0, 4
                  srai         t6, t4, 14
                  sub          a7, s9, tp
                  sltiu        a0, t2, 1756
                  sub          a0, s7, s0
                  srli         t4, s11, 10
                  nop
                  auipc        a0, 255458
                  sltu         s9, s6, s9
                  nop
                  add          s10, s1, s0
                  add          s10, a4, a0
                  lui          t4, 945918
                  nop
                  sll          s6, s0, a3
                  srli         t1, t2, 22
                  addi         t2, s4, -1515
                  add          zero, s8, s6
                  sra          s1, s8, s2
                  addi         s9, t2, 293
                  auipc        a3, 837442
                  slt          s9, ra, t1
                  slti         gp, s3, -1646
                  sll          sp, a6, a0
                  or           s4, a5, s6
                  and          a5, zero, t6
                  xor          s11, s2, t0
                  slti         t1, t4, -906
                  xori         t6, t6, 132
                  sltu         t4, s4, a7
                  auipc        a4, 628719
                  nop
                  add          s11, t2, s9
                  sll          t6, zero, a0
                  or           a5, s5, s2
                  sra          a3, zero, t1
                  sra          tp, a1, s9
                  slli         a7, t2, 30
                  xor          t4, a7, t0
                  sll          s8, s1, s5
                  slti         a0, a5, 1655
                  srli         s8, s5, 24
                  srl          a2, t0, s1
                  lui          t0, 838844
                  nop
                  srai         s4, sp, 7
                  addi         sp, s9, 598
                  sltu         t5, a6, tp
                  sra          s9, ra, s7
                  addi         a3, sp, 239
                  xori         s11, a3, -2005
                  xori         s6, zero, 901
                  andi         s4, sp, -995
                  and          s5, t5, gp
                  xor          t5, a2, t3
                  slli         a1, s10, 16
                  xori         gp, gp, 167
                  or           gp, ra, s8
                  lui          s9, 775429
                  sub          t2, s2, gp
                  xor          s4, tp, s11
                  xori         a0, s10, -1120
                  addi         t0, a1, 91
                  sra          t6, t2, s7
                  xor          a0, s5, s2
                  slti         s6, a4, 392
                  or           s5, a7, t0
                  ori          a2, s2, -1573
                  and          a5, s2, t2
                  lui          a1, 609846
                  add          zero, a7, t1
                  andi         s11, sp, 405
                  ori          ra, s3, 1784
                  srai         a4, a4, 27
                  or           t2, s11, t1
                  xor          t1, s1, a2
                  sltiu        a1, a0, 889
                  sltu         t1, t6, s5
                  sltiu        s6, a3, -102
                  slli         s5, t1, 6
                  srai         a1, s6, 3
                  xori         s3, t1, 1234
                  sra          s3, s11, tp
                  srl          s1, s5, a7
                  sltiu        s4, tp, 730
                  xor          ra, s1, t2
                  slti         s5, a5, 1263
                  sra          a7, a4, s5
                  addi         ra, s9, -1561
                  sub          t4, s3, s11
                  sltu         a7, t4, a4
                  xori         s3, a0, -1253
                  addi         sp, s6, 501
                  sltu         t6, a2, s8
                  sub          t4, a3, t1
                  or           sp, tp, s8
                  or           a2, t1, gp
                  sltu         gp, t0, a7
                  slt          gp, t3, s1
                  srl          t5, s7, a4
                  andi         t1, a7, -1168
                  sltu         s5, s5, zero
                  xor          a3, t2, a3
                  slt          a5, s0, t5
                  sll          t2, t5, s8
                  srl          s8, zero, s6
                  addi         a1, s9, -101
                  sltiu        a7, t5, 1022
                  xor          sp, t3, tp
                  ori          a1, zero, 2029
                  or           s4, s3, t0
                  nop
                  xori         a7, s9, 377
                  sra          s10, s2, a2
                  sltu         t3, s11, a3
                  lui          s3, 605671
                  xori         a3, a4, -1821
                  sra          a0, s0, s11
                  add          a2, a3, s0
                  andi         a7, t1, 602
                  sltu         s3, s8, t4
                  and          t0, s7, s5
                  srli         s10, t1, 14
                  la x16, test_done
                  jalr x0, x16, 0
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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_2:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_3:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_4:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_5:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_6:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_7:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_8:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_9:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_10:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_11:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_12:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_13:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_14:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_15:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x18, x8, zero
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x2, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x2, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x2, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x2, x31, ecall_handler
                  li x31, 0x1
                  beq x2, x31, instr_fault_handler
                  li x31, 0x5
                  beq x2, x31, load_fault_handler
                  li x31, 0x7
                  beq x2, x31, store_fault_handler
                  li x31, 0xc
                  beq x2, x31, pt_fault_handler
                  li x31, 0xd
                  beq x2, x31, pt_fault_handler
                  li x31, 0xf
                  beq x2, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

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
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x8, x18, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

load_fault_handler:
                  add x8, x18, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

store_fault_handler:
                  add x8, x18, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x8, x18, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x8, x18, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x8, x18, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
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
