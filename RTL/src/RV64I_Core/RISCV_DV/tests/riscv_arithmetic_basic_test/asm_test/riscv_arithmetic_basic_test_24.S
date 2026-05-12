.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x27, kernel_stack_end

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
                  li x0, 0xf3bde74a
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0xa98680e0
                  li x4, 0x0
                  li x5, 0xf3105d79
                  li x6, 0x0
                  li x7, 0xf5c2627a
                  li x8, 0xb9d069c8
                  li x9, 0x80000000
                  li x10, 0x6
                  li x11, 0xf9c1d5c5
                  li x12, 0x80000000
                  li x13, 0xf1c7ddd3
                  li x14, 0x6
                  li x15, 0xfb3b3249
                  li x16, 0x1
                  li x17, 0xf8e4beb6
                  li x19, 0xf52514b4
                  li x20, 0xf13ea87a
                  li x21, 0x0
                  li x22, 0xef808837
                  li x23, 0xfe2aa5b3
                  li x24, 0x80000000
                  li x25, 0x2
                  li x26, 0x0
                  li x28, 0xff97336b
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x18, user_stack_end
main:             li           tp, 0x7ecb977e #start riscv_int_numeric_corner_stream_0
                  li           s8, 0xa32a2a47
                  li           t6, 0x4d7b958d
                  li           t0, 0x4e319c7f
                  li           s10, 0x80000000
                  li           gp, 0x80000000
                  li           s9, 0x80000000
                  li           s3, 0x80000000
                  li           t3, 0x80000000
                  li           t2, 0xffffffff
                  nop
                  nop
                  lui          s3, 417681
                  addi         s10, t6, -776
                  lui          t3, 566634
                  sub          tp, t0, t3
                  lui          s10, 745543
                  addi         t3, s3, -2005
                  nop
                  sub          s9, gp, s10
                  nop
                  sub          tp, s10, t2
                  lui          s9, 765591
                  sub          s3, s10, t3
                  add          tp, t2, s10
                  lui          gp, 508107
                  auipc        t0, 551160
                  sub          s9, s3, s9
                  addi         t3, gp, 1017 #end riscv_int_numeric_corner_stream_0
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s1, 0xaa9c398f
                  li           t4, 0x80000000
                  li           a3, 0xffffffff
                  li           s6, 0x80000000
                  li           a2, 0x0
                  li           t0, 0xffffffff
                  li           a7, 0x614792f7
                  li           a5, 0x16947bc9
                  li           t1, 0x0
                  sub          a7, s6, a5
                  add          t0, a5, a2
                  addi         s5, t0, 42
                  auipc        s6, 313623
                  add          a3, a3, t4
                  auipc        a5, 950554
                  auipc        a3, 767436
                  sub          t4, s6, t4
                  add          s1, a7, t1
                  lui          s1, 536742
                  add          a5, s5, s1
                  addi         t4, t1, -1163
                  addi         s5, a3, 575
                  lui          t4, 920142
                  sub          s1, t4, a3
                  sub          t1, s1, a7
                  sub          s6, t1, s5
                  addi         t4, t0, 1468
                  nop
                  auipc        s6, 267007
                  auipc        a2, 483251
                  lui          s5, 307842
                  sub          a5, t4, a3
                  auipc        s1, 716156
                  add          a2, t1, s5
                  auipc        s1, 504296
                  sub          s5, s1, a7
                  auipc        t4, 322553
                  auipc        s6, 584558 #end riscv_int_numeric_corner_stream_7
                  li           s9, 0xbe307b9d #start riscv_int_numeric_corner_stream_17
                  li           a1, 0xffffffff
                  li           t4, 0x80000000
                  li           a6, 0xffffffff
                  li           a5, 0xffffffff
                  li           a3, 0xc04fed08
                  li           t6, 0x80000000
                  li           s8, 0xcd9923aa
                  li           s1, 0x7e1d6a3b
                  li           t5, 0x0
                  auipc        a3, 1014008
                  addi         a6, t6, -1601
                  auipc        s1, 83701
                  sub          a6, t5, t5
                  nop
                  addi         t5, a6, -122
                  sub          s9, s1, t4
                  add          t6, s9, t6
                  addi         a6, a3, 839
                  add          a1, a5, a6
                  addi         a3, s8, 1338
                  auipc        a6, 653310
                  nop
                  nop
                  sub          a5, s1, t6
                  auipc        s1, 1008563 #end riscv_int_numeric_corner_stream_17
                  li           a6, 0x1e283031 #start riscv_int_numeric_corner_stream_12
                  li           a5, 0xa89821e4
                  li           a0, 0x0
                  li           t2, 0x36e9e9b1
                  li           s3, 0x80000000
                  li           a7, 0x0
                  li           sp, 0x16ba4f5
                  li           a1, 0x1544fe0e
                  li           s10, 0x0
                  li           s0, 0x80000000
                  add          a0, a5, a0
                  add          s3, a6, a6
                  lui          a1, 339178
                  addi         a7, s0, 838
                  add          s0, a0, a5
                  sub          a1, s10, a7
                  addi         a5, s0, -1431
                  add          a5, a0, s0
                  lui          t2, 892159
                  lui          s3, 385537
                  addi         a1, a7, -122
                  auipc        a5, 877970
                  addi         s10, a1, -655
                  auipc        s10, 129336
                  auipc        a0, 573156
                  addi         a5, sp, -160
                  addi         a1, a6, -1118
                  addi         a6, a0, 339
                  sub          s0, a1, a5
                  lui          a5, 3669
                  sub          s0, sp, a0
                  add          a5, a6, a1
                  lui          s0, 380301
                  auipc        a0, 143368
                  lui          a6, 347585 #end riscv_int_numeric_corner_stream_12
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           sp, 0x7cf1ccdd
                  li           a3, 0x80000000
                  li           t3, 0xffffffff
                  li           s7, 0x0
                  li           a2, 0xc6bb1747
                  li           s8, 0x0
                  li           s1, 0xffffffff
                  li           a1, 0x30683cbc
                  li           a0, 0xffffffff
                  add          a1, sp, s3
                  nop
                  sub          s3, s3, s7
                  add          a3, s3, s1
                  addi         s1, a3, 1337
                  sub          s8, a0, a2
                  nop
                  addi         a3, sp, -134
                  nop
                  sub          sp, t3, s8
                  add          s8, s3, a2
                  add          s1, sp, s3
                  lui          s7, 596324
                  nop
                  addi         a0, s7, -1273
                  addi         s1, a0, -1357
                  auipc        a2, 472875
                  lui          s8, 1001001
                  add          s7, a1, a3
                  nop #end riscv_int_numeric_corner_stream_4
                  li           t4, 0xdb3f5a96 #start riscv_int_numeric_corner_stream_2
                  li           s4, 0x9523bae
                  li           t2, 0xe3b9e7cb
                  li           a4, 0x0
                  li           a2, 0x0
                  li           a5, 0x80000000
                  li           s7, 0xb97f45c6
                  li           t0, 0x80000000
                  li           s9, 0x103b8a3c
                  li           t6, 0x80000000
                  lui          s4, 144859
                  addi         s4, s9, 83
                  auipc        a4, 330572
                  lui          t0, 985395
                  add          a4, s9, t2
                  auipc        t4, 190157
                  lui          t0, 611191
                  lui          t2, 168040
                  add          a2, s9, t4
                  auipc        s4, 345502
                  auipc        a2, 791315
                  auipc        s9, 772878
                  auipc        a2, 490333
                  addi         s9, t0, 1455
                  sub          t6, t6, a5
                  lui          t2, 358840
                  nop
                  lui          s4, 684570
                  add          t6, s7, t0
                  sub          s7, t2, s7
                  lui          a2, 542977
                  auipc        t6, 323200
                  add          a2, a5, t4
                  lui          t0, 378820
                  lui          t0, 635714
                  auipc        t0, 466877
                  lui          t6, 84193
                  add          a2, a5, s4
                  nop #end riscv_int_numeric_corner_stream_2
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           t6, 0x0
                  li           s9, 0xffffffff
                  li           s8, 0x80000000
                  li           s5, 0x0
                  li           t5, 0xffffffff
                  li           a2, 0xffffffff
                  li           a7, 0x80000000
                  li           gp, 0xffffffff
                  li           a4, 0xffffffff
                  lui          s5, 953904
                  auipc        a7, 486399
                  add          t5, a7, gp
                  add          s9, gp, a1
                  lui          a7, 234761
                  auipc        s8, 570691
                  auipc        a4, 896490
                  add          s9, t5, a2
                  sub          s9, s5, s5
                  addi         a4, t6, -1354
                  auipc        s9, 908075
                  nop
                  addi         s8, a2, 1047
                  nop
                  lui          s8, 950240
                  sub          a4, t5, s8
                  sub          a4, s9, a2
                  lui          t5, 59508
                  add          a2, t5, a7
                  sub          a7, a4, gp
                  addi         s5, t6, 1744
                  lui          t6, 964351
                  auipc        a7, 539863
                  addi         a4, s5, 727
                  addi         gp, s5, -1504 #end riscv_int_numeric_corner_stream_15
                  li           sp, 0xb49032c8 #start riscv_int_numeric_corner_stream_19
                  li           t6, 0x80000000
                  li           s0, 0xaba3875a
                  li           a3, 0xb9b29f88
                  li           s4, 0x80000000
                  li           s7, 0x80000000
                  li           t4, 0xffffffff
                  li           t0, 0x0
                  li           s6, 0x80000000
                  li           a7, 0x0
                  lui          t6, 756180
                  nop
                  add          s0, s4, t6
                  nop
                  auipc        s4, 932930
                  add          a7, s0, s4
                  addi         t6, t4, 539
                  auipc        s7, 404983
                  auipc        t4, 995192
                  nop
                  auipc        sp, 185837
                  nop
                  addi         a7, sp, 1902
                  nop
                  sub          s0, sp, s7
                  sub          t0, t6, s7
                  addi         t0, s6, -110
                  auipc        sp, 51562
                  add          t0, s7, t0
                  addi         s6, a3, -947
                  auipc        s7, 565748
                  add          t6, t4, s7 #end riscv_int_numeric_corner_stream_19
                  sltiu        t2, tp, 995
                  sltiu        s0, gp, 1297
                  sub          a1, t1, a4
                  addi         a3, tp, 340
                  nop
                  andi         tp, s10, -1048
                  xori         s6, t5, -901
                  auipc        gp, 142235
                  sub          t2, s9, t6
                  sra          tp, a0, t1
                  add          s0, sp, s2
                  srli         s1, s7, 24
                  srai         s5, a7, 8
                  nop
                  addi         a7, ra, -328
                  srl          s4, a0, t3
                  slti         s8, a7, 1578
                  sll          a3, s6, sp
                  addi         a1, t0, -1467
                  srli         a7, tp, 4
                  slli         s7, t1, 13
                  sll          s8, a6, s1
                  lui          s7, 935485
                  sll          tp, s8, zero
                  andi         a6, t5, 1294
                  srl          a2, t4, s11
                  xori         a3, s7, 896
                  sltiu        a0, s11, 1767
                  srl          s10, sp, s2
                  srai         s8, s7, 25
                  sltu         a5, s10, a4
                  srai         s3, s10, 3
                  auipc        a5, 926545
                  slti         t3, a0, -166
                  sltu         t4, zero, s11
                  srl          a4, a1, zero
                  srli         tp, t2, 16
                  slti         a3, tp, -956
                  auipc        a4, 641173
                  slti         s8, a6, -435
                  slti         t2, s5, -174
                  srl          a2, t5, a6
                  andi         s0, t4, 1073
                  add          a0, a1, sp
                  slt          t4, zero, zero
                  slti         s10, s1, -1446
                  srli         t2, t0, 13
                  slt          t2, s2, s0
                  ori          tp, a6, 1465
                  slti         s9, a5, -1639
                  addi         s4, s3, 1639
                  add          s3, a7, a7
                  sltu         s7, gp, s3
                  sra          a2, t2, tp
                  or           t5, s9, s10
                  sltiu        a7, s1, -122
                  slli         s3, a3, 31
                  and          a0, a4, t2
                  sub          s6, s6, t4
                  addi         zero, t1, 1784
                  auipc        s6, 839560
                  andi         s9, a2, -1838
                  andi         s8, t1, -2020
                  srli         a6, a2, 17
                  sltiu        a6, t4, -769
                  srl          s6, t1, t2
                  xori         s0, s4, 28
                  srl          zero, s6, s8
                  or           a1, a0, t3
                  auipc        t5, 74552
                  sltu         s9, a2, t3
                  nop
                  sra          a1, a7, sp
                  sltiu        a4, s11, 1356
                  slli         s3, s4, 3
                  nop
                  auipc        sp, 150033
                  sub          a3, a3, tp
                  sll          s3, s7, t1
                  slli         a2, ra, 7
                  ori          a6, a7, -632
                  and          a7, t0, s1
                  sll          s0, t2, a4
                  add          a6, tp, s0
                  slli         s8, s9, 9
                  or           t2, s1, a0
                  srl          gp, s11, a6
                  addi         zero, t5, 2006
                  srl          s7, a1, gp
                  sltu         a0, t6, s2
                  add          a0, a4, s3
                  and          s6, sp, s1
                  ori          zero, s1, 1503
                  sltiu        a2, a6, 1433
                  auipc        s7, 801250
                  slli         s4, s1, 24
                  sub          s7, t0, s8
                  sra          t1, t0, s4
                  ori          t5, a5, 1003
                  srli         s0, ra, 24
                  auipc        a3, 726927
                  ori          s8, s6, -1269
                  srl          t5, a4, sp
                  sra          t3, a4, t0
                  xor          gp, t1, s9
                  sll          zero, gp, a2
                  and          a5, s8, s0
                  lui          s9, 504876
                  slt          s4, tp, t0
                  addi         a3, s4, -822
                  srai         s6, a5, 27
                  srai         gp, s6, 15
                  and          s4, t6, a3
                  auipc        s10, 817441
                  addi         s3, ra, 99
                  xori         s9, a0, 350
                  slti         t1, s8, 729
                  addi         s7, a0, -441
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s3, 0xa0787ea6
                  li           a7, 0x7f894c6f
                  li           t6, 0xa1a8ef36
                  li           s4, 0xffffffff
                  li           s10, 0xffffffff
                  li           gp, 0x7fbfe7a0
                  li           t3, 0x6831e6d
                  li           a5, 0x0
                  li           sp, 0x0
                  auipc        s10, 283655
                  nop
                  auipc        gp, 467158
                  addi         a7, s4, 285
                  add          a5, s3, s10
                  lui          s10, 35870
                  addi         sp, s10, -23
                  sub          s10, gp, a7
                  auipc        s4, 392512
                  auipc        sp, 593579
                  nop
                  nop
                  addi         sp, t4, 549
                  sub          t4, s3, t3
                  auipc        s10, 399054
                  lui          a5, 1031312
                  add          a5, t3, a5
                  lui          a5, 678229
                  sub          a7, t3, s10
                  nop
                  lui          s3, 962128
                  sub          s3, s4, t6
                  add          s10, a7, s4 #end riscv_int_numeric_corner_stream_5
                  srl          zero, ra, s9
                  slli         t0, s11, 5
                  xor          sp, a0, s0
                  andi         t3, sp, 475
                  srl          a5, a6, a4
                  slli         s1, s9, 26
                  ori          t5, a7, 1844
                  sltu         s10, t1, t1
                  auipc        a0, 741306
                  ori          gp, a1, 1945
                  andi         s7, s2, -1671
                  xori         a7, s8, -579
                  addi         a1, zero, -214
                  and          a5, a5, s11
                  xor          zero, a2, s6
                  ori          t1, a1, -1261
                  sra          s9, s11, zero
                  or           a3, t6, s0
                  xori         t2, s5, 621
                  xor          zero, s4, a3
                  sll          a6, s5, t4
                  slt          t6, t4, s3
                  slt          s5, s3, a5
                  nop
                  srai         s3, t2, 28
                  sltu         t5, s5, t1
                  ori          s9, a1, -821
                  srli         s7, t2, 3
                  and          a3, a2, s3
                  nop
                  srai         sp, s2, 7
                  srli         t3, sp, 0
                  slt          gp, s0, s8
                  auipc        t4, 315938
                  and          s8, t0, t4
                  sra          a7, a0, sp
                  ori          s3, t0, 328
                  sub          s1, t6, s1
                  add          s0, t0, t2
                  andi         a5, sp, 1413
                  andi         t4, s10, -323
                  sub          t2, t3, t6
                  auipc        s7, 754597
                  xori         t2, s7, -1079
                  sra          a1, tp, a4
                  slti         s0, ra, 1416
                  add          t5, s3, s7
                  auipc        s9, 984000
                  sltu         s1, t3, ra
                  sub          s9, s10, s0
                  srli         s8, t1, 23
                  add          s9, sp, sp
                  slt          s6, t4, sp
                  addi         sp, a4, 440
                  add          t1, zero, tp
                  and          a1, a0, t4
                  srl          s10, s3, t0
                  auipc        s5, 262262
                  xor          s6, s4, t6
                  auipc        t1, 738979
                  sll          s8, s4, a0
                  lui          a4, 488835
                  srl          gp, a4, a6
                  sll          t5, t6, s4
                  srai         s1, a7, 8
                  slli         s9, a0, 10
                  xori         a4, s9, 1991
                  sub          s10, s11, zero
                  sub          gp, s9, s2
                  or           t3, s3, a4
                  srli         gp, t3, 20
                  add          t1, s9, zero
                  sltu         t0, t3, t0
                  slt          s6, s8, t3
                  addi         sp, s2, -1296
                  and          a0, t3, t4
                  sub          a6, s8, s8
                  sra          a1, t5, a3
                  lui          t6, 654582
                  slti         sp, a7, 23
                  sltu         t5, a2, sp
                  lui          t0, 763697
                  andi         s3, s1, -133
                  slti         s8, s0, -1154
                  auipc        s5, 1003714
                  or           s8, a5, s5
                  srai         a5, t1, 28
                  sub          s4, s10, a1
                  srli         s7, t0, 20
                  slli         a7, s1, 11
                  slt          zero, s0, t3
                  srai         s3, a7, 29
                  xor          t0, a1, ra
                  srai         a4, a0, 16
                  xori         t2, t6, 1233
                  sltu         s0, t0, t0
                  sltu         a4, ra, gp
                  sltiu        sp, s7, -1553
                  lui          zero, 147317
                  nop
                  lui          sp, 720278
                  add          s1, t2, a0
                  sub          s6, t6, s4
                  add          a1, s7, s11
                  ori          s0, zero, 1002
                  and          t2, s11, a7
                  xori         t2, s1, -623
                  srai         zero, t1, 11
                  addi         s1, s11, 268
                  and          a6, zero, s2
                  add          t5, a5, s7
                  ori          a7, sp, 477
                  sltu         s1, a5, s8
                  addi         s1, s10, 300
                  sll          t0, t1, s10
                  or           s4, a7, t3
                  slti         s10, a2, 1361
                  xor          s10, a2, t2
                  slti         zero, s10, -695
                  xori         a7, s5, -3
                  xori         a6, s3, -765
                  addi         sp, t1, -639
                  sra          s8, s1, t4
                  slli         t5, sp, 15
                  xor          s0, s2, a7
                  srl          t4, s1, a4
                  addi         s9, a5, 204
                  slti         s10, s6, -1184
                  add          t1, a0, s9
                  nop
                  lui          t0, 306459
                  sub          a0, a2, t6
                  and          t4, s1, zero
                  slti         s5, t6, 287
                  li           s9, 0x6b435265 #start riscv_int_numeric_corner_stream_6
                  li           sp, 0xffffffff
                  li           s7, 0xf04d9c34
                  li           s3, 0xffffffff
                  li           t0, 0xffffffff
                  li           t1, 0xffffffff
                  li           s10, 0xffffffff
                  li           tp, 0x1fc42345
                  li           t5, 0x18607dee
                  li           s8, 0x0
                  add          s10, s10, s7
                  add          s10, t5, tp
                  add          s9, tp, t1
                  addi         tp, s3, 964
                  nop
                  nop
                  lui          t0, 515076
                  auipc        t1, 389232
                  add          tp, sp, tp
                  auipc        s9, 745673
                  auipc        t5, 988231
                  add          s10, s3, s10
                  sub          sp, t5, s7
                  auipc        s7, 127108
                  sub          s8, s7, t0
                  nop #end riscv_int_numeric_corner_stream_6
                  xori         s9, s10, -1958
                  srl          gp, s8, s8
                  sra          a0, a3, ra
                  srl          t6, a6, ra
                  add          t0, t2, t1
                  sra          zero, s9, s4
                  addi         t4, a3, 1600
                  srai         t4, s4, 13
                  sra          a3, a3, s1
                  auipc        a6, 631321
                  slti         s10, s8, 801
                  sll          a3, a4, sp
                  andi         a7, s6, -1369
                  sra          t1, sp, a6
                  slt          zero, s7, tp
                  sub          a3, s7, s0
                  andi         a6, t6, -1205
                  andi         a0, sp, -38
                  andi         s10, s0, -1538
                  srl          a6, a3, a1
                  lui          a4, 232492
                  auipc        a4, 127790
                  xori         s10, sp, 1077
                  sra          t0, s2, zero
                  slli         t0, s10, 31
                  slli         s3, t4, 27
                  nop
                  srli         s5, a7, 28
                  slli         t5, s7, 19
                  sltu         t5, s11, t3
                  srl          s4, a2, t4
                  auipc        s7, 275751
                  sll          t1, ra, s0
                  andi         a4, a0, -1436
                  slt          zero, sp, s2
                  andi         s6, a4, 1600
                  srli         gp, s7, 9
                  srl          a4, zero, s5
                  sltu         a3, t1, ra
                  srai         a4, a6, 5
                  nop
                  addi         a0, a3, 849
                  and          s3, s9, a5
                  xori         t0, t5, -1562
                  auipc        s9, 349037
                  sltu         s8, s11, t6
                  and          a0, a2, s11
                  sll          a4, a4, a1
                  addi         a7, s2, 12
                  add          s9, tp, s3
                  sra          s3, t6, a5
                  slti         t5, s6, 1029
                  nop
                  addi         t3, sp, -1383
                  sltiu        s10, t6, -189
                  auipc        t6, 888917
                  or           t5, s0, s11
                  add          t4, s3, a3
                  xori         s7, a1, -1330
                  nop
                  and          s9, a7, a5
                  or           zero, sp, a1
                  sra          a3, s0, tp
                  addi         a6, s0, 1991
                  xor          t3, t6, t5
                  sra          a1, zero, a6
                  srai         s3, a5, 30
                  slt          s5, s2, s5
                  slli         s0, zero, 30
                  srai         gp, s7, 9
                  slti         t1, a4, -1662
                  and          a4, s9, s7
                  xor          a0, s9, a0
                  sra          s10, s4, t4
                  sltiu        s0, s11, -586
                  ori          s3, s0, -1514
                  nop
                  auipc        gp, 1018985
                  xor          s8, s8, s6
                  ori          s1, a1, 1026
                  xor          t2, a1, a2
                  slli         s0, t1, 19
                  addi         a4, a1, 1846
                  xori         a3, t0, 78
                  slti         t6, s10, -1256
                  xori         a3, s2, 258
                  sltu         t3, t4, tp
                  xori         a1, t2, 833
                  sltiu        tp, s10, -1129
                  slli         s10, a5, 27
                  sltu         s6, a0, s9
                  andi         s10, a2, 557
                  slt          a4, t4, a2
                  ori          s9, gp, 12
                  slti         s4, t5, -1666
                  or           a7, s6, t5
                  nop
                  xori         zero, a6, -547
                  sltu         s9, t6, tp
                  srai         a0, t1, 30
                  lui          s0, 203030
                  sll          s7, s6, s9
                  slli         s1, t4, 17
                  nop
                  ori          a0, a1, 748
                  addi         t0, s3, -196
                  sra          a4, a2, s7
                  sra          t3, s9, zero
                  slti         s10, s6, 825
                  add          s9, s3, gp
                  or           a7, gp, t0
                  slti         a0, t1, 735
                  sltiu        zero, gp, 788
                  sll          a2, a3, a7
                  xor          s0, a0, t1
                  sra          s4, s6, s6
                  sll          t4, a7, sp
                  srl          t6, s7, s3
                  add          a7, s2, a7
                  or           a0, a6, a0
                  srai         t1, a1, 28
                  srai         s5, a6, 2
                  auipc        zero, 766056
                  sra          tp, s10, s1
                  sltiu        t6, t2, 1864
                  ori          tp, t0, -402
                  or           s9, a2, s9
                  srl          a4, t6, a7
                  addi         a3, s7, 1394
                  ori          s4, a3, -254
                  slti         s9, s2, 576
                  andi         tp, zero, 1333
                  sltu         s9, s5, tp
                  sub          sp, t2, s2
                  ori          s10, a3, -1115
                  xori         zero, t6, -448
                  lui          s3, 471640
                  sub          a2, t2, t3
                  xor          s4, s9, s3
                  srl          sp, t2, a0
                  slt          s3, gp, s11
                  slti         s9, tp, 1142
                  addi         a2, s10, 292
                  andi         tp, t6, 218
                  sltiu        t0, s0, -46
                  auipc        s7, 623871
                  srl          a7, s8, s5
                  xori         a4, a3, 2038
                  sltiu        t2, s3, -1436
                  sltu         s8, s10, a4
                  xori         s3, s8, -876
                  nop
                  srl          s5, s2, ra
                  sra          gp, t1, a3
                  xori         s8, a3, 1697
                  srli         t6, t5, 19
                  addi         s7, s6, 1330
                  slt          a2, sp, s4
                  srai         s5, a0, 9
                  nop
                  ori          s6, ra, -1217
                  or           sp, s9, t4
                  lui          a3, 1019600
                  srli         sp, s7, 11
                  or           a4, s6, a2
                  addi         s4, s5, -617
                  slt          t2, a3, s6
                  andi         t0, s10, 249
                  xori         a3, s9, -974
                  xori         a3, t1, 58
                  sra          s9, t2, a6
                  sll          s6, s1, s7
                  auipc        s9, 87378
                  xori         s1, t5, -1357
                  xor          t1, a5, t3
                  lui          s3, 159372
                  or           s6, t3, gp
                  slli         t1, s7, 23
                  and          a7, s3, t2
                  andi         t5, s0, 532
                  lui          zero, 1041953
                  sub          t1, a5, t0
                  slt          s7, a3, s5
                  sra          s9, s9, s3
                  sra          a2, t3, gp
                  sltu         t2, t6, s5
                  add          t1, s0, s7
                  slti         s3, t1, 1035
                  ori          s5, s6, -1583
                  auipc        t4, 612883
                  and          zero, a7, s9
                  sll          s5, s1, t0
                  andi         t5, sp, 922
                  sltiu        a2, s0, 1394
                  and          s10, t5, a1
                  srl          a3, s6, t3
                  nop
                  srl          a3, s10, zero
                  sll          a7, t2, a5
                  xori         gp, s2, 627
                  sub          a1, tp, s2
                  sub          sp, s9, s7
                  sltu         s7, s8, zero
                  or           s3, t0, s9
                  nop
                  lui          s1, 678469
                  ori          gp, t4, 874
                  lui          sp, 297846
                  slti         a3, a5, 483
                  slli         a4, a6, 13
                  auipc        s0, 40337
                  ori          s6, a4, 881
                  add          s5, a1, t2
                  sra          s8, s8, s7
                  sltiu        zero, a3, -1268
                  addi         s1, t3, 1494
                  sltiu        t0, t1, -1178
                  sra          a0, tp, t6
                  ori          gp, sp, -465
                  slti         t0, s10, -319
                  lui          a0, 458465
                  sltu         s8, gp, s11
                  xori         s3, s1, 592
                  slti         t4, s5, -1297
                  sll          t0, s11, zero
                  addi         s7, a2, -1896
                  sub          a6, sp, t0
                  srli         a5, t2, 30
                  and          a5, s4, s7
                  sll          s8, s3, t5
                  slli         s1, s0, 29
                  ori          a1, s8, 813
                  sra          a6, t2, s9
                  lui          a5, 1047923
                  xori         a5, t0, -409
                  xor          a5, s2, s3
                  lui          a1, 663560
                  nop
                  slt          a3, t6, s2
                  srai         a2, s2, 4
                  auipc        s5, 234971
                  nop
                  nop
                  nop
                  slt          s1, gp, s3
                  sltiu        t4, s10, -1040
                  slt          s9, t6, s6
                  sltiu        a6, s6, 190
                  auipc        t3, 303582
                  addi         t4, s0, 1756
                  xor          a6, s11, s0
                  andi         s5, s5, 267
                  or           s10, s4, s2
                  ori          s7, s0, 978
                  or           s3, s5, s9
                  srai         t4, s6, 11
                  add          t3, t3, a0
                  xor          a5, s10, s7
                  sub          s7, s6, a1
                  and          a2, s1, s3
                  andi         t2, t1, 1124
                  add          a5, t6, s10
                  xor          s0, s1, s3
                  srai         s4, s2, 21
                  srl          s10, t0, a0
                  xori         s6, a2, 1543
                  slti         a0, t0, 1599
                  slti         s3, s2, -515
                  auipc        s8, 50474
                  slti         t1, t2, -1003
                  ori          t0, s9, 8
                  add          a4, s8, a6
                  or           s10, s2, a1
                  andi         a0, a7, -533
                  nop
                  auipc        s10, 366163
                  addi         s4, s8, -58
                  addi         a3, t4, 1697
                  nop
                  srl          s0, ra, s0
                  slti         a2, t2, 400
                  sltu         s4, s9, tp
                  xori         tp, s6, -652
                  srl          sp, s0, s4
                  slli         a5, ra, 14
                  add          zero, a6, a2
                  add          t6, t6, t5
                  xori         t6, a5, -1298
                  xor          t2, s4, a2
                  and          s0, t3, s0
                  srai         s6, s0, 2
                  slli         t4, s10, 15
                  xor          s6, a7, a1
                  sll          s5, t0, sp
                  nop
                  auipc        a0, 123840
                  lui          s3, 921539
                  slli         s7, s6, 6
                  auipc        a5, 383049
                  lui          sp, 1037577
                  sltiu        t6, s8, -815
                  and          a5, t4, s9
                  sra          s5, tp, t1
                  sub          tp, a6, s6
                  sltiu        a4, s9, 126
                  xor          t5, a0, t4
                  srli         a6, t5, 1
                  slli         s1, a6, 17
                  sltu         t5, a4, s2
                  sltu         gp, a3, s2
                  auipc        s5, 292981
                  ori          sp, ra, -1873
                  xor          zero, a4, a0
                  add          s0, sp, ra
                  ori          s0, s11, -2022
                  sltiu        t1, t0, -501
                  sub          s4, a0, gp
                  addi         t4, gp, -1519
                  sub          s3, t3, a5
                  xor          a2, s6, a4
                  or           a0, tp, s3
                  and          t0, t6, t6
                  ori          gp, s5, 1683
                  add          s0, s6, tp
                  xor          t0, a0, t2
                  add          sp, s5, t6
                  sltu         t5, s3, sp
                  and          a7, t2, s5
                  srli         s1, s9, 30
                  or           s6, ra, s5
                  and          s9, t2, ra
                  or           t2, tp, s11
                  add          a3, s10, t5
                  slti         zero, zero, -985
                  slt          t2, a2, t0
                  ori          t6, s2, 1720
                  sll          a5, s0, a3
                  xor          a7, a5, gp
                  lui          a1, 469532
                  addi         a6, t2, -111
                  slti         t4, gp, 90
                  and          s4, a6, a2
                  sub          s3, s1, s10
                  sltu         a2, a3, s1
                  sll          t2, s5, sp
                  slli         sp, tp, 27
                  sra          t2, t6, ra
                  srli         s0, a3, 23
                  sub          s7, s1, gp
                  ori          s5, s10, -147
                  slt          s5, t0, t3
                  slt          t3, ra, s0
                  slli         s0, s8, 16
                  and          a2, s11, t6
                  nop
                  andi         t6, s0, 1115
                  lui          a7, 788031
                  sltiu        s4, sp, 1913
                  sra          t6, a2, t1
                  sll          t2, s5, t0
                  slti         s7, s0, 173
                  and          t0, t2, t4
                  sltiu        t4, s1, -1534
                  nop
                  sltiu        t6, s11, -1994
                  and          a1, a7, ra
                  and          a6, t0, s3
                  srai         s5, a4, 26
                  xor          a7, t0, a6
                  xori         s6, s2, 1916
                  srl          s6, sp, zero
                  srl          s10, t0, a5
                  sub          t0, a7, s5
                  andi         t1, t3, -1126
                  nop
                  slt          zero, t5, s3
                  xori         s1, s8, 304
                  andi         t0, s2, 581
                  srli         t5, s3, 22
                  add          a2, s2, t1
                  srl          t2, a6, a1
                  ori          a5, ra, -506
                  add          a1, s6, s9
                  sll          t0, ra, s2
                  xori         t1, s9, -687
                  sra          t0, s1, a4
                  andi         a6, s2, -1284
                  or           s9, a7, s6
                  nop
                  sub          s4, t4, a4
                  add          a0, s3, a2
                  auipc        s8, 573262
                  add          s7, sp, s6
                  slti         a7, tp, 2024
                  xori         sp, s2, 1842
                  slli         a5, s9, 5
                  lui          s1, 20945
                  sll          t2, a5, s3
                  or           s8, s8, s1
                  sra          a6, a2, a0
                  sltu         tp, t1, a0
                  lui          zero, 228695
                  ori          tp, t3, -1212
                  andi         t5, s7, -1563
                  andi         a3, s5, -944
                  sll          a7, t1, t5
                  sub          s0, t1, s11
                  xor          t5, a4, a2
                  xori         s0, tp, -519
                  andi         t1, s11, 2038
                  or           a6, a0, a4
                  and          gp, s6, a0
                  sltu         t3, s3, gp
                  slli         t0, a0, 19
                  sltu         a5, a7, t6
                  xori         s4, a1, -1453
                  sltu         s5, a3, t5
                  or           t0, t3, gp
                  ori          s10, s1, 1265
                  srli         s7, a4, 2
                  xori         t1, s5, 874
                  lui          t1, 267532
                  andi         gp, sp, -1677
                  sub          s3, s10, a7
                  sltiu        gp, zero, -1229
                  or           t2, s6, ra
                  srli         a5, s3, 1
                  sltiu        a7, s0, 1689
                  sltu         s1, t6, a7
                  srai         gp, a2, 19
                  addi         t4, a6, -1069
                  lui          s1, 929910
                  slli         s9, s0, 26
                  xori         s1, t0, 1572
                  sltu         t3, zero, s7
                  sltu         s0, a1, gp
                  srl          a3, s10, sp
                  andi         a5, t3, -1441
                  slt          s4, s1, t4
                  sltiu        s5, t2, -1663
                  srl          zero, t3, ra
                  srl          zero, s5, s2
                  auipc        a4, 333801
                  ori          t2, s8, -1035
                  srl          s7, s0, t5
                  xor          t3, a1, s8
                  srai         a2, t0, 16
                  and          t1, t2, s9
                  slli         sp, sp, 30
                  slli         t6, gp, 25
                  add          s10, a4, s2
                  slti         a7, a3, 1389
                  sltiu        s5, sp, -288
                  and          t3, a5, t3
                  sra          a7, t6, s2
                  sltiu        s9, s9, -1515
                  slti         a5, s6, -299
                  srli         sp, s3, 7
                  auipc        a3, 763566
                  ori          tp, ra, 1318
                  sll          s9, t0, a3
                  slt          t6, t6, a1
                  slti         a5, ra, 1633
                  lui          s9, 905755
                  sll          a0, a3, t4
                  or           t4, s5, t2
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           t5, 0x80000000
                  li           s1, 0x38c813dc
                  li           s5, 0xffffffff
                  li           a0, 0x0
                  li           s7, 0x0
                  li           t4, 0x97cb2699
                  li           t3, 0x80000000
                  li           t0, 0x80000000
                  li           a7, 0xffffffff
                  add          t3, t2, a0
                  auipc        a0, 399267
                  auipc        s7, 78349
                  sub          a0, t2, a7
                  nop
                  addi         s5, s7, -712
                  nop
                  sub          t2, a7, s1
                  sub          s7, s1, s5
                  add          s7, t4, s5
                  sub          t5, s5, a0
                  auipc        a7, 476329
                  lui          a7, 1014528
                  lui          s7, 198796
                  add          t3, t0, s1
                  add          t3, s5, t2 #end riscv_int_numeric_corner_stream_3
                  nop
                  xori         sp, a5, -1205
                  xor          s4, s0, s11
                  xori         s5, a1, -106
                  and          t2, t5, s2
                  sltu         a4, zero, a2
                  andi         t5, a5, 1752
                  or           s5, s11, a1
                  lui          a1, 931697
                  xor          a7, t2, tp
                  srl          a7, s4, s10
                  andi         s1, s8, 1675
                  lui          t5, 345632
                  xori         t3, s7, 985
                  sub          a7, t5, s0
                  add          s4, s10, s6
                  sltiu        s7, s6, -1711
                  sub          zero, s0, t0
                  slt          a5, t0, s3
                  srli         gp, a1, 6
                  sltu         tp, t2, s10
                  add          s6, tp, s7
                  sltu         s1, s8, a2
                  slti         zero, ra, -1235
                  ori          gp, s3, 737
                  srli         s10, tp, 21
                  sltiu        a7, s1, 1845
                  nop
                  sll          gp, s6, s1
                  and          s4, s5, gp
                  sltiu        s6, a2, -515
                  srli         s7, a1, 12
                  andi         s0, t4, 309
                  srl          a6, s6, s7
                  add          sp, t5, s5
                  and          a7, s5, s9
                  sll          a1, s9, sp
                  sltu         tp, t6, t1
                  xori         s4, s7, -1199
                  xori         s8, a3, -982
                  add          zero, t3, s7
                  slli         a1, s10, 9
                  slt          s5, s11, t1
                  and          s1, s6, a5
                  xor          t2, t1, a7
                  slt          t5, t2, t4
                  auipc        t5, 993084
                  add          a4, t3, s1
                  xor          s9, s1, a6
                  slli         t4, a6, 15
                  sll          s3, s10, s8
                  and          t4, s8, t4
                  srai         s6, t4, 3
                  slli         a5, t5, 31
                  xor          sp, t3, s0
                  sltu         s7, t0, a6
                  addi         a2, tp, -609
                  add          s9, a6, ra
                  sltu         s10, s4, t3
                  sra          s8, t2, t3
                  nop
                  sltiu        zero, s10, 390
                  srl          t0, t3, s11
                  and          s6, s3, a4
                  sll          s0, sp, s9
                  andi         s3, sp, -482
                  lui          t5, 645053
                  srl          a5, s5, s1
                  lui          s9, 514083
                  xori         t4, t6, -203
                  sltiu        a6, a2, -1168
                  add          t2, t2, t6
                  slt          s5, s5, a1
                  and          gp, tp, tp
                  nop
                  ori          t4, s8, 934
                  andi         s1, tp, 1219
                  slti         a4, s3, 2000
                  lui          gp, 821475
                  andi         t2, tp, 76
                  xor          zero, s10, ra
                  sra          a7, s1, t5
                  slti         s6, s11, 245
                  slt          a5, a6, s11
                  sltu         a3, sp, s10
                  add          s7, t6, a4
                  slti         s6, t3, 588
                  srli         a0, s1, 9
                  andi         t6, s11, -535
                  addi         s8, t3, 1836
                  xor          s10, a1, s9
                  slti         tp, s6, 815
                  sltiu        gp, t4, -6
                  or           tp, a1, a3
                  srli         a5, zero, 9
                  sll          a0, t3, s7
                  auipc        a0, 362775
                  slt          sp, ra, a0
                  ori          t1, a0, 860
                  sub          zero, zero, tp
                  auipc        t1, 70831
                  slt          s7, t5, t4
                  slt          a0, s9, s4
                  srli         a2, s0, 14
                  sll          t5, s8, t2
                  andi         zero, t3, 1468
                  auipc        s3, 619200
                  sltu         a7, a1, ra
                  nop
                  xori         a1, zero, -576
                  srai         t6, t5, 17
                  lui          s4, 645468
                  lui          t5, 653157
                  sll          t6, s11, sp
                  andi         tp, sp, -1246
                  srli         s1, s8, 6
                  sltiu        a6, s2, -1650
                  xor          t0, a3, s0
                  xori         s9, a6, -67
                  xori         a5, ra, -1803
                  andi         t5, s11, -1872
                  lui          t5, 89489
                  auipc        a4, 504747
                  auipc        t6, 986088
                  slti         a5, s3, -355
                  srai         gp, t5, 17
                  or           a4, s10, t2
                  sltiu        a1, s11, -923
                  sra          gp, t6, s2
                  lui          s5, 754836
                  sll          s8, gp, sp
                  andi         t0, t6, 1670
                  ori          t3, a2, -1327
                  xor          a5, a1, s10
                  and          a4, a4, tp
                  andi         s8, a0, 52
                  slti         s0, a2, -541
                  xor          t5, tp, sp
                  srli         s6, s3, 15
                  lui          s5, 815219
                  sub          t6, a5, t3
                  sltu         s9, t6, t1
                  sra          a6, s9, a3
                  srl          t2, a2, t2
                  add          t6, a7, s4
                  auipc        t5, 371422
                  xori         s10, a1, 1645
                  slt          a3, t3, s3
                  ori          a3, a0, -1660
                  addi         s1, s10, -1668
                  slli         t2, s1, 3
                  srl          s5, s1, s9
                  and          gp, a0, a0
                  slt          s6, s0, s3
                  andi         a5, sp, -1901
                  srli         a7, s9, 20
                  sltu         a3, a6, a7
                  or           s1, t1, s9
                  slti         s7, s2, -1298
                  slli         s8, zero, 30
                  xor          t5, t4, ra
                  xori         a6, s7, 377
                  srai         s9, t3, 23
                  sll          s1, s9, t3
                  addi         s7, a3, -1000
                  srli         a1, s10, 22
                  sltiu        a4, zero, 71
                  ori          tp, s3, 560
                  addi         a5, a2, 105
                  andi         t6, a5, 1221
                  slt          s4, s1, a1
                  nop
                  or           a3, s3, t4
                  sltiu        a5, gp, 41
                  andi         a4, sp, -1711
                  srai         tp, t1, 29
                  sra          a5, t2, a6
                  srli         a7, s1, 5
                  nop
                  andi         s3, tp, -1546
                  lui          a5, 35012
                  srai         sp, s5, 3
                  nop
                  addi         zero, a7, 183
                  xor          a5, t0, s11
                  nop
                  ori          tp, a7, -1177
                  andi         t4, s11, -1750
                  slli         a1, s7, 0
                  slt          s8, s1, t2
                  sub          a7, zero, s2
                  andi         a2, s4, -122
                  add          s5, s11, s2
                  add          t6, t4, zero
                  sltiu        a1, ra, 856
                  sll          zero, a0, s7
                  sub          t6, t1, gp
                  and          a7, t3, s2
                  sltiu        a5, a7, -1018
                  lui          t0, 818845
                  srai         a7, s3, 17
                  srai         t2, sp, 9
                  nop
                  slli         a1, t6, 4
                  nop
                  srl          gp, t0, a4
                  addi         a5, s0, 986
                  sra          s5, s4, s7
                  slti         a6, s7, -1606
                  srai         a3, zero, 19
                  sll          s6, s7, s1
                  sll          a1, s4, s7
                  nop
                  sll          s3, s8, zero
                  and          s1, s10, a5
                  slti         t1, t4, 1687
                  slli         s3, a6, 8
                  slli         a0, t5, 18
                  xor          a1, s5, t6
                  andi         t6, tp, 1500
                  xori         tp, a6, 305
                  srl          s9, a7, a3
                  sub          s7, s6, t4
                  sltiu        s3, tp, 1918
                  sub          s5, s11, s2
                  andi         a7, s2, -805
                  xori         a7, s5, 229
                  sll          t0, t2, s11
                  srl          t4, s8, s9
                  sra          a5, a3, t5
                  xor          t5, s10, tp
                  xori         s3, a2, 1121
                  or           s5, a7, t4
                  xori         s9, s0, -1837
                  ori          s8, gp, -1638
                  add          t1, t2, t5
                  auipc        a1, 255866
                  slt          t2, a6, s7
                  nop
                  nop
                  sltu         s7, s5, a4
                  slti         a6, t6, 301
                  xori         s10, ra, -35
                  nop
                  add          s6, a0, a7
                  and          t2, s0, a3
                  slti         s3, a0, -1524
                  and          s4, a6, s0
                  slt          zero, t0, s5
                  srl          a1, s11, s6
                  slti         s1, zero, -1827
                  sltiu        a4, a5, 1383
                  slti         s3, s11, 419
                  andi         t3, a0, -567
                  ori          t2, sp, 354
                  nop
                  addi         zero, a7, 1484
                  srl          s1, a7, a4
                  andi         t5, ra, -235
                  srl          t1, tp, s8
                  sll          a6, a0, s4
                  ori          a5, tp, 585
                  xori         a4, t5, 1747
                  ori          a0, tp, 249
                  xori         a2, s6, 1609
                  addi         t1, a5, -206
                  sltiu        t3, t2, 472
                  sra          s3, s4, s0
                  nop
                  sub          t0, t4, s10
                  xori         t0, s0, 199
                  andi         a7, a6, 732
                  and          t6, t0, s6
                  slli         s9, tp, 8
                  sub          s7, t6, tp
                  slt          s4, s8, s6
                  add          zero, s7, a7
                  sub          a5, a1, s11
                  sll          t0, s4, a4
                  slli         t4, t2, 4
                  xori         a0, a6, -293
                  srai         zero, a3, 6
                  sll          sp, s2, s5
                  srli         s5, t1, 4
                  srli         t0, t1, 9
                  srai         a3, ra, 4
                  slti         sp, t4, -1765
                  or           a5, s7, t4
                  srl          s10, gp, t3
                  srl          gp, tp, s10
                  sra          s5, t2, a6
                  sltu         s1, a1, a4
                  slt          s9, s9, s2
                  sltu         s6, s2, a3
                  sll          s3, t0, t4
                  srli         s5, t2, 19
                  ori          a6, a7, 390
                  srli         t4, t3, 20
                  add          t3, s2, s3
                  and          sp, sp, a4
                  sltu         s3, a2, t1
                  sltiu        a6, s5, -103
                  or           s7, s2, a4
                  sub          a7, s2, a3
                  addi         tp, s6, -1696
                  auipc        s8, 973764
                  and          s5, a4, a0
                  lui          a3, 757812
                  sll          a1, a0, t5
                  slt          a1, t6, gp
                  andi         t4, zero, 586
                  sltiu        zero, s3, -1844
                  xor          gp, s7, ra
                  sra          a3, t4, s10
                  srai         s9, a4, 17
                  sll          tp, zero, t6
                  sltiu        a0, t5, 619
                  srl          s10, s7, a3
                  slti         s4, a4, -2028
                  xor          t6, t1, a6
                  addi         s1, s7, -1114
                  auipc        s7, 570038
                  xor          zero, t0, t0
                  srai         a2, s5, 25
                  sub          t2, gp, s6
                  slli         a2, tp, 30
                  sltu         zero, a6, s7
                  srl          s8, tp, s0
                  nop
                  slt          s7, t6, a3
                  and          a3, a1, s7
                  slt          sp, ra, s3
                  sra          s1, t4, t1
                  nop
                  slli         s4, sp, 20
                  sra          t1, a6, s11
                  andi         a6, a2, -1345
                  nop
                  sltiu        t3, t4, -1496
                  ori          s10, s8, -857
                  xori         gp, s4, -661
                  lui          zero, 899651
                  addi         a1, s4, -540
                  sltu         gp, t3, t3
                  auipc        s5, 792268
                  sub          s10, a4, a2
                  and          s8, t3, a7
                  or           s0, t3, s11
                  srl          t1, a1, s3
                  sltu         t3, a3, ra
                  auipc        s7, 204277
                  andi         t3, ra, 1267
                  sltu         s6, s2, t2
                  auipc        zero, 497
                  and          s5, a5, gp
                  srai         a1, s1, 26
                  srai         a0, t5, 22
                  andi         t4, s4, 1824
                  andi         zero, s5, -1540
                  slt          a2, s4, s5
                  andi         t3, s10, -1956
                  sll          t0, tp, a4
                  sll          s9, t4, s2
                  addi         a1, t5, -311
                  add          t5, s1, t6
                  sltiu        tp, s7, 1984
                  add          s5, a7, t3
                  sltiu        t3, a4, -762
                  xor          s7, t0, s10
                  slti         s3, t1, -1421
                  andi         zero, t3, 510
                  sub          a0, a7, a3
                  addi         s1, sp, 1354
                  xori         a7, s2, 526
                  auipc        a4, 234128
                  nop
                  addi         a1, gp, -839
                  andi         t1, t1, 1483
                  xori         t4, tp, -1607
                  sltiu        s3, a2, -999
                  srai         a4, a4, 26
                  slli         a7, t4, 0
                  addi         s10, s5, 483
                  nop
                  andi         s8, s5, 1200
                  nop
                  add          a6, gp, a5
                  add          t1, s9, s5
                  addi         s5, s3, -1582
                  auipc        t0, 895427
                  slti         tp, s8, 2043
                  srli         a3, t6, 7
                  auipc        a1, 164470
                  xori         sp, a3, -699
                  xori         t5, t5, -1481
                  sltu         s1, s3, s2
                  auipc        t2, 960885
                  sltu         a6, ra, s5
                  xor          t1, t5, a0
                  lui          a7, 33501
                  and          s1, t1, gp
                  add          a3, t4, s9
                  auipc        s4, 767374
                  or           t2, s11, t6
                  nop
                  andi         t2, s7, 313
                  lui          a7, 414443
                  sltu         tp, a7, s2
                  srl          s0, s1, a0
                  andi         t6, t1, -2032
                  srl          s5, a0, t4
                  xori         t4, s7, -1468
                  xori         s3, t2, -1661
                  or           a0, a5, ra
                  srli         s0, s8, 14
                  auipc        a7, 897302
                  sltu         a1, t2, s5
                  or           s10, t4, sp
                  or           t1, t4, t3
                  addi         a6, gp, -1208
                  xori         s4, sp, -1208
                  sra          t6, t5, t5
                  slli         s6, sp, 9
                  lui          s8, 260444
                  addi         s3, s10, 885
                  slt          a7, a0, a4
                  andi         t1, s11, -597
                  sra          s7, a6, s8
                  auipc        a4, 211203
                  slli         s10, t6, 4
                  add          a1, t0, s2
                  and          s8, s8, a6
                  nop
                  lui          a1, 329808
                  xor          t5, s1, a6
                  and          t2, s1, s1
                  sub          s1, t1, s4
                  xor          s6, zero, t6
                  sub          a3, s4, tp
                  auipc        s9, 401258
                  srai         a6, t4, 18
                  sltu         a1, a2, s2
                  xor          s7, s0, a5
                  srli         t2, sp, 19
                  or           s6, ra, a0
                  add          s6, a2, t6
                  addi         a7, s6, 627
                  auipc        a6, 1012125
                  xor          t3, a4, a1
                  addi         zero, s11, 1622
                  srai         a7, s0, 10
                  addi         tp, s0, -1120
                  slti         s10, a1, -551
                  addi         tp, a1, -1196
                  srl          a1, s8, s10
                  sltiu        a4, s7, 1589
                  xor          tp, t1, a3
                  ori          t5, ra, 1639
                  srl          a2, ra, gp
                  srai         s5, a6, 22
                  sll          s7, t4, s5
                  addi         s6, s0, 438
                  xori         t3, t1, 284
                  and          s10, a6, zero
                  slli         s6, zero, 29
                  nop
                  xor          a3, a0, a4
                  nop
                  srai         a0, t0, 22
                  sra          a5, zero, a1
                  sll          s9, ra, a4
                  addi         t5, s2, -386
                  sub          s9, s3, s11
                  sra          t2, a5, zero
                  and          s5, s5, a4
                  slli         t4, t3, 23
                  slti         s5, s2, -1179
                  xori         s5, a5, 1060
                  sra          a1, s11, a4
                  sub          a6, a3, s4
                  lui          a2, 892542
                  xori         s0, s7, -486
                  sll          a6, a7, s8
                  slt          tp, s7, s10
                  sltu         s8, s6, t1
                  sltu         s8, s1, s0
                  ori          s0, a4, -1673
                  srai         t0, a0, 25
                  srl          t5, s5, s0
                  addi         a1, sp, -80
                  srli         gp, a2, 26
                  slti         t3, a7, -828
                  slt          a1, t2, s0
                  and          a6, a3, tp
                  srl          t4, a0, s9
                  srli         s4, s1, 24
                  andi         s7, s6, -692
                  srli         s5, a0, 18
                  slli         a0, s2, 22
                  slt          t4, a1, t6
                  slt          a0, t1, s3
                  sub          a2, t1, s5
                  sub          gp, a4, s6
                  xor          s0, t6, a1
                  sub          s10, s4, t5
                  slt          tp, s11, a7
                  sub          a4, tp, t6
                  xori         a4, a3, 326
                  sltu         a0, gp, ra
                  slli         t0, t5, 11
                  xori         t3, s7, 1200
                  srl          t3, s5, s3
                  ori          a2, s10, -896
                  lui          a7, 1040964
                  nop
                  add          a1, s7, s2
                  lui          s10, 48341
                  srl          a3, a7, a6
                  sub          s8, a7, s1
                  xor          s8, t3, s5
                  or           t3, a0, a3
                  add          t1, sp, a0
                  srai         t4, t2, 30
                  li           s10, 0x53d27e1 #start riscv_int_numeric_corner_stream_10
                  li           t1, 0xffffffff
                  li           s4, 0xffffffff
                  li           s5, 0x0
                  li           t2, 0xffffffff
                  li           s7, 0xffffffff
                  li           s1, 0xffffffff
                  li           a7, 0xffffffff
                  li           t6, 0xffffffff
                  li           s9, 0x7bc06f70
                  sub          s4, s4, a7
                  sub          s10, s4, s9
                  auipc        s10, 34184
                  addi         s9, s10, -1427
                  add          t6, s1, a7
                  auipc        t2, 631774
                  add          a7, s5, s7
                  lui          s7, 199500
                  nop
                  add          s9, t6, t2
                  auipc        t1, 132837
                  auipc        s1, 807773
                  addi         a7, s7, -1567
                  sub          t2, s7, s9
                  auipc        t1, 775618 #end riscv_int_numeric_corner_stream_10
                  sll          s4, s8, s9
                  slti         zero, t5, 965
                  lui          s7, 5521
                  xori         s4, t5, 200
                  add          a1, s11, s11
                  sub          a0, a3, ra
                  or           a7, a7, s1
                  slli         a7, t0, 2
                  ori          a2, t4, -1529
                  sll          s3, a1, a5
                  sub          s3, s6, s5
                  sra          s8, s6, s4
                  lui          s0, 85112
                  srl          t3, s4, s8
                  srl          s9, t1, s1
                  add          t2, s4, tp
                  sltu         s3, a0, zero
                  sub          t6, t5, t4
                  sll          s4, s5, t1
                  nop
                  sra          a1, s5, a7
                  sltu         t1, s1, s3
                  addi         tp, tp, 805
                  lui          zero, 569759
                  xor          sp, ra, a4
                  slt          t1, ra, s9
                  slti         zero, t3, -132
                  nop
                  srli         s1, s5, 30
                  and          a1, t6, t3
                  srli         t1, s5, 7
                  sltiu        gp, s10, 1442
                  nop
                  srai         gp, s2, 10
                  xori         t5, s4, -1460
                  add          zero, s10, a3
                  auipc        a6, 292547
                  or           tp, s10, s0
                  andi         t0, a3, -685
                  sub          s5, t2, gp
                  xor          s5, ra, s2
                  sltu         s8, s9, s10
                  sltiu        t5, s3, 1263
                  xori         s7, a0, -1406
                  addi         t2, s3, -809
                  xor          s5, s6, zero
                  and          a4, ra, s10
                  sll          a5, t6, s6
                  srai         s5, s7, 4
                  xori         s8, s5, 1070
                  nop
                  srli         s10, t6, 11
                  auipc        s3, 150278
                  addi         a5, a7, 113
                  sltiu        sp, a2, -1267
                  sll          t3, s3, s6
                  xor          s7, a0, t3
                  add          a4, a1, zero
                  sra          s9, s8, s7
                  sub          zero, a1, gp
                  andi         t6, s4, -25
                  xori         a7, s7, 940
                  srli         a5, t5, 22
                  srli         t6, tp, 8
                  slt          s3, s4, s2
                  sltu         a0, s4, a4
                  srl          a6, s9, t6
                  nop
                  srai         sp, s11, 3
                  andi         t1, gp, -2035
                  and          t4, s7, s10
                  sub          a5, s1, t1
                  and          s1, a0, a1
                  srl          s7, ra, s2
                  addi         t5, gp, 1058
                  xor          s7, a3, a3
                  addi         s0, a5, -1287
                  sra          tp, s10, t5
                  nop
                  sltu         s0, t3, s2
                  nop
                  lui          a7, 195940
                  slli         s0, a2, 11
                  add          t6, s1, s3
                  add          a3, s9, s3
                  add          a6, a3, t3
                  addi         tp, t4, 22
                  andi         a1, s7, 553
                  nop
                  sll          a6, a1, t6
                  ori          t0, tp, -1269
                  sra          a4, t2, s10
                  srli         s4, t6, 1
                  nop
                  slt          s4, a4, gp
                  srl          s0, a3, a4
                  sll          t0, a2, s5
                  add          t2, t5, s7
                  auipc        a0, 778585
                  srai         a3, t1, 17
                  nop
                  sub          sp, t5, a5
                  lui          t6, 581825
                  andi         t6, gp, 893
                  or           s4, s7, t2
                  ori          t3, s1, 1682
                  lui          a2, 954454
                  sltu         a6, tp, t0
                  slt          s1, t5, t2
                  sra          zero, s11, s2
                  srai         s9, sp, 26
                  or           zero, s7, s10
                  and          s8, a0, s5
                  and          s6, tp, s10
                  slti         s4, s2, -1020
                  sll          a2, s2, t2
                  sll          s9, s4, a6
                  srli         s10, s4, 18
                  slti         s4, a0, 562
                  slti         s10, a1, 7
                  lui          a7, 109955
                  slti         a7, tp, 1421
                  or           t5, t5, t6
                  nop
                  sltu         s10, s2, a7
                  slti         tp, t5, 1095
                  srai         a2, a0, 26
                  sll          a2, a6, a6
                  andi         t2, s5, 1979
                  auipc        s3, 294269
                  add          zero, zero, t6
                  sra          t2, t2, t2
                  andi         a1, s11, 117
                  srai         s4, a4, 31
                  sll          s0, a0, s1
                  sltiu        t0, ra, 1556
                  addi         s8, s0, -1542
                  slt          a0, s10, s8
                  nop
                  addi         s1, a1, -667
                  slli         a7, a0, 7
                  srai         t6, s8, 10
                  sltu         a3, a2, t2
                  andi         t4, t1, 86
                  sra          t2, ra, t2
                  ori          zero, a2, -233
                  andi         a1, t3, -1026
                  slli         a1, t1, 25
                  ori          t0, s2, -865
                  auipc        tp, 298328
                  lui          t1, 289577
                  lui          a7, 43711
                  slli         a7, sp, 30
                  slli         a2, a2, 10
                  srli         a7, a6, 24
                  andi         a7, a6, 1209
                  sll          zero, s4, s6
                  sltu         s0, t2, a7
                  nop
                  slt          t3, ra, t3
                  srai         sp, s0, 7
                  and          gp, ra, s7
                  andi         t4, s1, 984
                  auipc        s10, 52278
                  slti         a4, sp, 983
                  sltu         t0, s4, t5
                  or           a3, zero, t4
                  srai         a3, s8, 25
                  or           s7, s3, s2
                  srl          a0, s6, s5
                  sltu         s7, t4, a5
                  or           a7, a6, s2
                  andi         zero, t6, -1177
                  slt          t4, s7, s2
                  or           s8, s11, gp
                  lui          t3, 140039
                  xor          t2, s4, a4
                  sub          gp, a1, t5
                  addi         a6, gp, 182
                  lui          a5, 1031202
                  add          s9, t3, s6
                  auipc        s6, 542641
                  srl          tp, tp, s4
                  slli         sp, a5, 19
                  slti         s10, t0, 41
                  sltiu        t5, a3, 1338
                  sub          t1, s8, s4
                  srl          s0, ra, s7
                  sltiu        a4, s4, 899
                  srai         s9, s6, 31
                  ori          s6, s9, -253
                  slt          s3, s5, ra
                  auipc        s10, 396649
                  or           gp, s8, t5
                  and          a4, s0, s10
                  sll          a1, s0, s11
                  or           zero, a7, s10
                  slt          s3, a3, s4
                  srli         zero, t2, 28
                  srli         s8, s11, 3
                  lui          t3, 818607
                  sub          t5, s8, s11
                  or           a7, s3, t3
                  andi         a0, s7, -484
                  srai         t5, a0, 11
                  lui          a3, 425134
                  slt          s10, a0, s8
                  xori         zero, tp, 1640
                  srai         s7, a0, 7
                  auipc        a3, 800525
                  ori          t3, a0, 538
                  sltu         tp, s11, sp
                  or           a5, tp, s5
                  sll          a1, t2, a3
                  srai         t2, a3, 2
                  srli         t2, sp, 23
                  add          a1, s6, s4
                  slti         gp, s7, 966
                  slt          s4, ra, zero
                  sub          s1, s0, a5
                  lui          zero, 892743
                  slli         a4, t5, 29
                  sltiu        sp, t2, 786
                  or           t4, sp, a2
                  nop
                  xor          t4, t0, zero
                  andi         a1, s8, -1046
                  add          a6, s3, s4
                  sltu         t0, s5, t1
                  sltu         a4, t4, s7
                  sltu         s4, a7, s6
                  slti         a1, zero, -345
                  sra          a4, gp, t6
                  slt          t3, sp, a6
                  and          s8, a2, a0
                  xor          zero, t6, s5
                  sra          s8, t4, sp
                  addi         a6, s3, -426
                  srl          a1, t0, a1
                  and          a2, s3, ra
                  nop
                  add          s1, s8, s0
                  slti         s1, s5, 1633
                  sll          s5, t1, a3
                  srl          s1, a7, t0
                  ori          t2, ra, 354
                  ori          a3, t5, 1792
                  sra          a7, s0, zero
                  srli         t0, t3, 19
                  sltu         s1, s8, a1
                  auipc        a4, 423211
                  add          s10, s7, s8
                  nop
                  sub          s1, s5, t0
                  xori         a6, t1, 743
                  slti         a1, s1, -870
                  auipc        s0, 387351
                  sltiu        s5, s0, -15
                  ori          s0, s3, 619
                  slti         t5, t6, -142
                  sltiu        t0, s1, 1809
                  addi         gp, s11, 1864
                  slt          a4, a1, ra
                  sra          a2, ra, zero
                  lui          s5, 89794
                  auipc        t1, 659856
                  slt          sp, a3, s9
                  addi         a5, s10, 592
                  or           zero, s4, s10
                  slli         a6, t0, 6
                  ori          t5, s7, -232
                  srai         a3, s7, 4
                  sra          t0, t6, t1
                  sltu         a7, s5, s3
                  xor          zero, s9, s8
                  andi         a2, s10, -1973
                  srli         s7, tp, 27
                  sra          a7, s2, a7
                  sltu         s8, t5, a2
                  slt          a1, a2, a3
                  addi         a0, t3, -860
                  andi         t3, s1, -1079
                  sltu         t5, s1, s0
                  and          s3, t0, s7
                  add          a0, s8, ra
                  addi         tp, s4, -1094
                  sll          zero, s11, s5
                  addi         t0, t1, 1341
                  and          a2, a7, s7
                  nop
                  lui          t6, 579860
                  sltu         s9, s8, s1
                  srai         a0, s7, 20
                  xor          s4, gp, t4
                  or           t4, s3, t3
                  srai         a7, s3, 6
                  ori          a3, s7, -1222
                  srli         s7, s0, 13
                  xor          gp, s11, s8
                  xori         s3, s5, -762
                  srl          a0, sp, t3
                  auipc        s0, 96959
                  addi         t3, sp, -903
                  slti         a0, gp, -879
                  and          s9, s2, s11
                  add          t2, s11, a2
                  lui          a1, 229188
                  sltu         s3, s0, s10
                  nop
                  andi         s1, t3, -1679
                  and          sp, t2, s0
                  sltu         tp, a3, a2
                  sltiu        t6, t5, 772
                  slt          s8, tp, s3
                  or           t4, a7, sp
                  sra          gp, sp, t5
                  and          s9, gp, a0
                  or           s4, s6, s4
                  srai         t6, s10, 26
                  andi         s1, s6, 1997
                  addi         s6, a2, 1860
                  sltiu        s4, a1, -1624
                  auipc        s6, 720208
                  slti         s0, t5, 1052
                  or           a3, s0, s0
                  slli         t1, s3, 9
                  srli         t1, s7, 2
                  srai         s7, s4, 6
                  auipc        s7, 86559
                  srl          t0, s6, a0
                  sll          tp, gp, t4
                  auipc        t2, 308646
                  sltu         s9, s3, t6
                  srli         zero, s5, 12
                  lui          t0, 200896
                  sltiu        a0, a3, -578
                  or           a3, t1, s0
                  xori         a6, a1, -1893
                  sltiu        t1, s11, -476
                  sltu         t2, s0, a2
                  sub          s3, s3, a0
                  srli         s3, tp, 9
                  ori          gp, s1, 457
                  sra          a2, s0, t0
                  sltiu        a7, zero, 923
                  xor          a6, s7, a7
                  sub          t0, zero, s0
                  and          t5, a7, t1
                  srli         s5, a0, 23
                  ori          tp, a5, -1567
                  and          s9, s8, t0
                  sltu         t6, t3, a1
                  sltu         a1, s10, t1
                  srl          t2, zero, s8
                  slt          tp, t5, s0
                  sra          s1, t4, t4
                  xor          t6, t6, t0
                  xor          a5, t5, s8
                  xori         a4, s7, 488
                  and          a3, gp, s7
                  slti         s1, sp, 637
                  slli         a1, s3, 19
                  or           s5, a7, a1
                  andi         gp, t4, 146
                  slt          a0, s9, s1
                  lui          t5, 805495
                  slt          a4, s6, s2
                  sll          sp, tp, t2
                  nop
                  xori         gp, t2, -1106
                  auipc        s8, 1042489
                  srli         a6, a3, 13
                  or           s0, t3, s0
                  and          a5, t0, s4
                  ori          s3, t0, 693
                  sra          s10, t3, s8
                  srai         s9, tp, 2
                  slt          a0, a3, a6
                  sltiu        gp, a6, -684
                  andi         a7, s6, -1945
                  nop
                  sll          s5, s7, a4
                  addi         a4, t2, 1810
                  sltiu        a3, a6, 273
                  slt          s1, s5, t3
                  add          s3, s11, t6
                  ori          t1, s11, -1287
                  and          t4, s8, a6
                  sub          s5, a2, a7
                  sub          s4, zero, s0
                  sub          t0, s10, s8
                  andi         t4, ra, -1392
                  add          s5, s1, t3
                  ori          s10, sp, 684
                  srai         t0, t2, 15
                  add          zero, a1, s8
                  xor          t2, t6, s10
                  xor          a4, tp, t2
                  sra          a3, s1, t2
                  slti         a4, zero, -391
                  sra          s5, t2, t3
                  sltu         sp, t3, sp
                  sll          s10, s5, s5
                  xori         s3, t5, 1654
                  xori         s7, t6, 592
                  srai         s8, s10, 21
                  sll          sp, s9, s10
                  slli         t5, t2, 20
                  xor          s7, s2, zero
                  xor          a4, gp, s3
                  add          a0, sp, a2
                  sltu         gp, sp, a6
                  srli         s8, t1, 18
                  lui          sp, 673600
                  sll          t4, s9, t6
                  sltiu        s9, t5, -950
                  ori          a3, t5, -591
                  add          s0, a4, t2
                  nop
                  sra          t1, a2, zero
                  lui          a5, 1008470
                  nop
                  xori         a4, zero, 837
                  sra          a7, s2, s6
                  srai         s4, s1, 14
                  sltiu        gp, s8, 2008
                  xori         t0, a5, 516
                  slti         a7, t1, 1334
                  srai         s0, s11, 26
                  sub          a2, s1, s2
                  nop
                  lui          s6, 250819
                  srai         a3, t4, 10
                  srli         gp, ra, 21
                  srai         a2, a4, 22
                  srai         s4, a2, 26
                  sra          s8, t3, t1
                  srl          s3, a0, a0
                  and          a2, tp, zero
                  nop
                  sltu         a2, a5, gp
                  slti         s3, t3, -828
                  sltiu        t3, a3, 955
                  srli         s4, zero, 20
                  slti         s4, a7, -998
                  auipc        t3, 864213
                  ori          a4, a6, -266
                  sub          t4, t3, a1
                  andi         gp, t6, -1894
                  or           zero, s9, sp
                  and          s3, a0, s11
                  sra          a5, a7, sp
                  sltiu        gp, a1, 1109
                  xori         s3, a7, -1203
                  slli         a3, s11, 31
                  sub          a4, s9, tp
                  srl          s5, t2, sp
                  add          t3, a6, a3
                  auipc        tp, 608943
                  auipc        a6, 95138
                  sra          t3, t2, a1
                  slti         t6, s1, -46
                  sub          a1, t0, ra
                  lui          t2, 540123
                  xori         t6, s10, -1512
                  sltu         t0, s8, a1
                  add          t3, t4, ra
                  sub          s7, s4, a3
                  xori         a2, t1, 1819
                  ori          t1, a7, 1782
                  add          a5, a0, t1
                  andi         a2, t5, 1921
                  lui          a7, 303080
                  slti         s3, t0, 997
                  srli         a4, a5, 18
                  nop
                  andi         gp, a2, -54
                  srli         t0, t3, 3
                  sltiu        s0, t5, -225
                  add          t5, s3, sp
                  and          s6, s4, a1
                  nop
                  or           sp, t2, a5
                  add          s5, t4, s11
                  slti         zero, t4, 229
                  slti         t5, a1, 1731
                  andi         t2, a1, -1621
                  ori          s9, s10, 1238
                  xor          s8, sp, s8
                  sub          tp, a6, a3
                  srli         a5, s11, 7
                  sub          t2, t5, gp
                  lui          t3, 855591
                  addi         s0, s10, -1908
                  lui          a1, 394252
                  nop
                  andi         a0, s11, 710
                  lui          a0, 140520
                  nop
                  sra          zero, t4, a1
                  xor          s6, t3, a6
                  add          tp, a1, ra
                  sub          s5, s1, ra
                  sltu         s4, s3, s2
                  nop
                  ori          s5, s4, 1332
                  nop
                  slli         s10, ra, 29
                  xor          a0, a5, s7
                  and          a7, a1, s1
                  andi         t6, t2, 1967
                  lui          s4, 303225
                  and          a4, gp, s3
                  slli         t3, s9, 24
                  and          s9, a5, tp
                  slli         t2, ra, 26
                  or           gp, s5, t5
                  xor          s0, s9, t1
                  srl          t5, t3, s0
                  andi         a3, t1, -1157
                  nop
                  addi         s1, s10, 1072
                  srl          t5, a2, t3
                  sub          s6, tp, t6
                  xor          s8, s4, s6
                  xor          s10, zero, t2
                  addi         t3, ra, -760
                  sll          t6, a3, s7
                  xori         a4, a2, 824
                  sltu         zero, s10, gp
                  xor          gp, s3, a7
                  auipc        t4, 462541
                  xor          a1, t1, t2
                  sltiu        a3, gp, 229
                  sltu         t3, s1, t1
                  srl          s9, s5, a6
                  slti         t4, s5, 652
                  slt          gp, a7, s3
                  sra          s1, t2, a5
                  and          a5, s7, s2
                  srli         t5, t1, 29
                  slt          t5, a6, a3
                  auipc        a2, 56267
                  xor          a2, a2, a4
                  srl          t3, s4, a2
                  slli         t5, a6, 25
                  or           s5, ra, a0
                  xori         a1, tp, 1668
                  and          a4, t3, s10
                  slli         gp, s9, 1
                  slt          t5, a7, a4
                  and          a3, s9, s4
                  or           t6, a0, s9
                  sltu         s0, zero, s6
                  slti         a5, s8, -932
                  sltiu        t4, a4, 408
                  sltiu        s3, tp, -110
                  srai         a4, t6, 15
                  lui          s8, 144895
                  srli         t6, t1, 24
                  xor          s5, s8, s8
                  srai         s9, s0, 15
                  ori          s4, a4, 1117
                  slti         a4, s8, -1239
                  sub          s1, s0, t6
                  srai         tp, ra, 25
                  sltiu        t4, ra, -1158
                  sub          s10, s3, s5
                  slt          a3, sp, t5
                  add          a2, t3, s6
                  xor          s9, s11, t2
                  add          zero, t4, s1
                  addi         a6, s2, -16
                  slli         a5, a3, 17
                  slti         s1, t6, -184
                  add          a5, s9, s10
                  andi         s6, s10, -1848
                  lui          s10, 164310
                  slli         s4, a1, 26
                  add          a1, a1, t3
                  srai         a7, t3, 18
                  or           s7, s7, s11
                  xor          s10, t2, a4
                  slti         t2, a3, 1695
                  slli         t6, t6, 31
                  nop
                  sltiu        a7, t2, -1068
                  sub          s10, t0, sp
                  sub          s9, t0, s6
                  ori          t3, s1, 1904
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s5, 0x2b65e397
                  li           t1, 0xffffffff
                  li           t4, 0xffffffff
                  li           tp, 0xffffffff
                  li           a3, 0x6b38f072
                  li           s1, 0x80000000
                  li           gp, 0xffffffff
                  li           t2, 0x0
                  li           a5, 0x80000000
                  add          s5, t2, s6
                  addi         t4, a5, -309
                  addi         t4, s5, 1735
                  lui          tp, 529854
                  lui          a5, 255679
                  auipc        t2, 265046
                  lui          a3, 1003341
                  auipc        s6, 334843
                  nop
                  sub          gp, s1, a5
                  add          t4, t2, a5
                  add          gp, a3, t1
                  sub          t4, tp, s6
                  add          s5, t1, t4
                  nop
                  add          t4, gp, s5
                  auipc        tp, 538292
                  add          tp, t4, gp
                  sub          t2, a3, tp
                  add          s5, t1, s6
                  auipc        gp, 621372
                  addi         t4, t4, 191
                  lui          s1, 561652
                  addi         s1, t4, -1108
                  nop
                  lui          t4, 941780 #end riscv_int_numeric_corner_stream_14
                  xor          s5, t1, s6
                  srli         s9, tp, 1
                  sltiu        a5, s10, 1736
                  sub          s6, s7, s1
                  srai         s8, t3, 1
                  nop
                  lui          s10, 514988
                  slli         a1, s7, 29
                  and          s9, s2, s6
                  xor          s6, s5, a7
                  srli         a0, t2, 27
                  sll          tp, t2, a2
                  xori         s4, s2, -652
                  slti         zero, a6, -405
                  auipc        s0, 731824
                  slt          s0, a7, a4
                  sra          s7, t0, a6
                  and          a6, t5, s2
                  auipc        s0, 708011
                  sra          t0, sp, a7
                  sub          s0, t3, s9
                  and          s5, t2, t5
                  sltiu        s0, t3, -696
                  sra          tp, t2, s10
                  sll          a4, a2, zero
                  nop
                  andi         t3, a2, -1704
                  slli         a6, t5, 27
                  addi         s5, tp, -938
                  sltiu        s10, s3, -304
                  slti         s7, s0, -1709
                  addi         s6, s9, -223
                  nop
                  slt          s7, t1, s8
                  add          zero, a7, t3
                  and          a0, s11, gp
                  slt          a4, a3, gp
                  slli         a6, a2, 21
                  addi         a0, s3, -1298
                  xori         t2, a2, 1296
                  addi         a2, s5, 1807
                  sra          a5, a1, a1
                  xor          t4, tp, s2
                  auipc        tp, 67270
                  xor          s1, t6, a7
                  slti         t2, t4, 960
                  sltu         a4, s0, t3
                  slt          a3, t4, a7
                  slti         a5, s6, 1768
                  xori         s8, s0, -716
                  sltu         zero, a2, s11
                  srli         s10, s5, 9
                  srli         t5, gp, 5
                  lui          t2, 516731
                  xor          sp, a4, gp
                  sltiu        t1, s7, -1953
                  sub          t5, s0, t6
                  slti         s0, t0, 429
                  and          a2, s4, t4
                  addi         t4, s9, 1140
                  sll          t1, s8, gp
                  or           zero, s2, t4
                  xori         s10, s9, -163
                  xor          a5, s5, a7
                  add          s10, a7, s9
                  add          a0, sp, t2
                  or           s6, a4, a3
                  lui          a2, 869964
                  srai         gp, t4, 19
                  slt          tp, a7, tp
                  srai         a7, t6, 21
                  add          a5, a3, t1
                  xori         a6, a1, 168
                  srai         a0, tp, 20
                  and          a7, s1, s10
                  srl          t6, a3, gp
                  srli         s10, s1, 3
                  lui          s6, 900612
                  lui          a1, 610675
                  slt          s10, zero, a7
                  add          s8, s6, t5
                  slti         s8, s1, 71
                  addi         t3, ra, 145
                  slt          t0, gp, a5
                  sltiu        s9, s10, 1995
                  slli         s7, a6, 19
                  sll          gp, a6, gp
                  or           t6, t6, t0
                  or           t2, a0, a2
                  slli         a1, t3, 18
                  andi         s4, tp, 1865
                  addi         s3, a2, 1176
                  sltu         t2, a6, s8
                  xor          s6, s6, s1
                  sub          a0, t3, t5
                  srli         a1, a0, 28
                  or           s6, sp, s5
                  slti         zero, s3, -1433
                  addi         s5, tp, -933
                  sltu         gp, t0, s6
                  or           t5, s10, s8
                  srli         s6, a4, 12
                  add          a0, s3, a3
                  andi         s9, a1, -809
                  slt          s8, s5, s11
                  sltiu        a7, tp, -273
                  auipc        a6, 655823
                  slti         a4, t0, 1794
                  add          t2, t4, ra
                  sub          s6, a2, s9
                  sll          s7, a7, s5
                  slt          t2, s3, a6
                  slti         t5, tp, -1199
                  andi         zero, t0, 2019
                  sltiu        t3, s9, -307
                  srli         a5, t5, 27
                  ori          s6, a3, 302
                  slt          t5, s6, sp
                  sltu         s0, a1, a2
                  slli         a5, s10, 3
                  addi         a1, t5, 1499
                  ori          s9, s8, -1574
                  sub          t3, a6, zero
                  srai         t2, s5, 24
                  slt          s10, t3, s9
                  and          s10, t3, a4
                  add          s10, t3, s6
                  sltiu        gp, t6, -2016
                  sltu         a7, s10, a6
                  sub          t2, s5, a5
                  srl          a4, s4, a3
                  srai         s7, a1, 1
                  ori          s7, gp, 198
                  sra          t6, a3, s4
                  xor          t1, t3, s10
                  add          s0, s8, t2
                  nop
                  nop
                  sra          a6, s11, a1
                  slti         s3, s9, 99
                  auipc        a0, 548404
                  sll          s3, tp, s0
                  sll          t2, s2, a3
                  slti         s9, s6, 1817
                  or           s4, a5, sp
                  sra          t2, s5, s2
                  sll          t1, a2, s7
                  srli         gp, sp, 19
                  and          t3, gp, a1
                  slti         a1, gp, -1837
                  slt          t2, s3, a7
                  sub          t3, tp, s10
                  and          a7, ra, t3
                  or           a7, a7, a2
                  add          t1, s11, s8
                  sra          t3, s5, a1
                  sltu         s0, t1, gp
                  lui          tp, 363934
                  slli         a0, t1, 8
                  xori         s9, sp, -1204
                  sll          s9, s7, t6
                  slli         a2, a1, 2
                  srli         t0, ra, 15
                  sll          s3, s3, a2
                  slti         s3, s8, 584
                  ori          t6, ra, 136
                  addi         tp, s5, 1938
                  andi         t6, s6, -1471
                  andi         a6, a2, 397
                  lui          t1, 942719
                  andi         s10, t6, 1359
                  srli         s5, s4, 25
                  add          a6, s10, t1
                  slti         t1, s4, -1400
                  slt          s3, s1, ra
                  xori         t3, gp, -1191
                  srli         s5, tp, 23
                  sub          s6, s0, tp
                  srli         t6, a0, 18
                  sltiu        a7, a6, 81
                  auipc        a6, 1007398
                  ori          s1, zero, -1118
                  add          a6, a3, sp
                  srai         a5, a3, 18
                  srl          s3, a7, a5
                  slt          s1, s5, a3
                  xori         a7, s4, 1421
                  sltiu        a4, s10, 1315
                  srai         t3, zero, 26
                  slti         a0, t4, 780
                  sub          s5, a0, a2
                  sltiu        a4, gp, -175
                  xor          a1, a4, a6
                  srl          a2, s9, s7
                  or           t5, t5, t0
                  slt          a2, s8, t4
                  andi         t1, a0, 293
                  andi         s9, s3, 302
                  sltu         s3, gp, s1
                  sll          a5, s8, t3
                  andi         t2, sp, -1744
                  srai         a1, s4, 20
                  slli         s3, ra, 2
                  srli         sp, s4, 19
                  srai         t3, a7, 16
                  sltu         a6, tp, t3
                  sub          s9, s8, tp
                  andi         a1, t4, -1751
                  andi         a5, a2, 1009
                  and          t0, t3, gp
                  srai         t6, a7, 16
                  srai         s1, a6, 29
                  nop
                  or           s4, t5, a7
                  auipc        a4, 870757
                  sltu         gp, gp, a4
                  slti         t6, s3, -1005
                  add          s1, sp, gp
                  xori         s9, s11, -708
                  srli         s8, a1, 25
                  slt          s8, s7, t0
                  sll          a0, a4, s0
                  slti         tp, a0, -281
                  and          a6, s0, s10
                  ori          a5, t2, -1603
                  addi         s5, tp, 404
                  nop
                  auipc        zero, 314660
                  slt          t5, gp, ra
                  srl          s6, t2, t0
                  sll          s0, s8, a0
                  auipc        s7, 627446
                  nop
                  sub          s5, a7, zero
                  andi         a0, s9, 122
                  sub          s4, s10, s8
                  slti         s3, a5, -1338
                  auipc        s10, 119899
                  addi         t1, tp, -920
                  slt          t2, a3, s11
                  nop
                  srl          gp, zero, t2
                  addi         t2, t2, 1361
                  xor          a0, t3, s6
                  sll          a1, a0, s1
                  and          s5, s6, s11
                  slt          a4, a6, s2
                  xori         a3, ra, -126
                  xori         a1, sp, 1439
                  sra          t4, s8, zero
                  slti         t4, s11, -336
                  sra          s8, t5, s7
                  auipc        s9, 201010
                  sltiu        a6, s6, -1841
                  srai         s5, s6, 24
                  addi         tp, s10, 468
                  or           a4, a5, t5
                  sltiu        gp, s11, -1340
                  andi         a4, s8, -1443
                  and          tp, s1, s0
                  or           s10, t2, a4
                  auipc        a6, 725452
                  and          a5, s9, s5
                  slli         s3, a4, 15
                  xori         gp, a0, 1345
                  and          a4, ra, s11
                  add          s3, a5, ra
                  auipc        a5, 719262
                  ori          a5, zero, -1707
                  srai         s7, a5, 9
                  nop
                  srli         a0, a6, 14
                  sub          a5, a3, tp
                  xor          s5, a7, a7
                  xor          t1, t5, a6
                  sra          a6, sp, t3
                  srl          t4, s7, a2
                  slti         s10, tp, 1618
                  sll          t4, a3, s3
                  slli         a1, s10, 31
                  sub          a3, s11, s5
                  lui          t4, 817517
                  slli         a7, s1, 2
                  sra          t3, zero, s2
                  nop
                  slli         s0, s3, 18
                  sub          zero, s2, s4
                  srl          a7, s2, a2
                  srai         s5, t5, 13
                  and          s6, a5, s8
                  auipc        t0, 747859
                  srli         t0, a7, 13
                  srai         s8, s10, 23
                  srai         s4, zero, 8
                  srli         t6, s6, 25
                  srli         a3, s5, 22
                  sltu         a3, t3, s0
                  sra          a0, tp, a2
                  addi         gp, t3, -692
                  sub          s4, t0, sp
                  slti         a5, s1, 1618
                  srai         a4, t5, 25
                  slli         a6, gp, 6
                  or           s9, s0, t6
                  andi         s5, t4, -56
                  sltiu        s9, a2, -192
                  sltu         t5, s3, t2
                  andi         a7, s9, -780
                  srli         s1, a1, 8
                  sltu         a5, a2, s4
                  slli         s6, a0, 17
                  andi         a6, t3, 441
                  srl          a3, t2, t5
                  addi         s10, s10, -1897
                  slli         a5, s6, 27
                  nop
                  srli         s1, a2, 7
                  lui          sp, 254353
                  slti         s0, t5, -406
                  sll          a3, a2, t0
                  lui          s4, 711878
                  add          t6, t4, sp
                  slli         a6, t1, 8
                  sub          t2, t2, s3
                  addi         s7, s11, -1649
                  xori         tp, a2, -1254
                  addi         t6, a2, -927
                  srai         s4, t3, 30
                  slli         t0, sp, 19
                  sltiu        tp, t0, 992
                  srli         a6, t2, 29
                  auipc        a0, 846483
                  or           sp, t0, s0
                  sub          gp, s2, t2
                  slli         tp, t5, 24
                  srai         t0, s7, 23
                  addi         a5, s8, 1787
                  andi         a7, s1, -226
                  addi         tp, a5, 1749
                  sub          s3, s6, zero
                  sra          t2, s1, zero
                  srl          t2, t0, s8
                  xori         a3, t1, 395
                  auipc        t3, 649044
                  xori         a6, s10, 1251
                  slti         t0, s9, 1652
                  sub          sp, s10, s5
                  andi         gp, t4, 1669
                  slli         s10, a1, 2
                  sltu         a6, s6, a1
                  add          gp, a1, s2
                  add          t4, s6, a2
                  slt          t3, s2, s11
                  sltu         a3, s3, a4
                  sll          s3, t4, s0
                  slli         s0, a3, 26
                  sub          s3, sp, s2
                  sll          t2, ra, a1
                  add          t5, a6, s1
                  and          t6, a5, a6
                  auipc        tp, 539592
                  ori          s7, s8, 903
                  sub          t4, t1, t3
                  addi         a4, s9, -1281
                  andi         t5, sp, -200
                  and          a5, a4, t2
                  or           t1, ra, a2
                  nop
                  nop
                  sltiu        t5, s5, 874
                  sltiu        a6, a0, 468
                  sll          a3, s10, s0
                  nop
                  andi         a0, s7, 1654
                  auipc        t6, 254314
                  srl          t5, s9, ra
                  nop
                  srai         t0, a1, 31
                  add          s0, zero, t0
                  sub          gp, s10, s6
                  srai         s1, s8, 23
                  xori         a4, s5, -1554
                  slt          s5, t5, s6
                  sra          s1, tp, a3
                  xori         a2, s0, -678
                  srl          s7, a0, s1
                  lui          zero, 797708
                  addi         s1, s8, -1203
                  and          a5, s3, t0
                  slti         s1, zero, 1377
                  add          t4, t6, s10
                  auipc        tp, 690182
                  addi         a7, sp, -1776
                  srli         t2, a0, 11
                  srai         a2, s1, 13
                  slt          t4, sp, t4
                  sltu         zero, a3, s9
                  slli         t6, s9, 7
                  sltu         t4, a6, a6
                  add          s3, t2, tp
                  lui          s9, 461381
                  add          a0, t0, tp
                  and          s6, a7, a0
                  sra          t6, s7, a3
                  sll          gp, a2, s5
                  andi         zero, a6, 1405
                  srai         a4, a0, 28
                  addi         a2, s8, -287
                  xor          t2, t0, s3
                  slti         t4, t0, -1663
                  slli         a2, s4, 11
                  sltu         s5, tp, t3
                  srai         zero, sp, 4
                  nop
                  srli         t2, a0, 18
                  add          t6, s11, t4
                  ori          t3, s2, 1212
                  xori         tp, s10, -252
                  nop
                  and          s3, a7, gp
                  lui          t4, 562613
                  add          t1, s10, sp
                  nop
                  sltu         a6, zero, s0
                  lui          s7, 817857
                  auipc        s5, 602771
                  srl          tp, gp, s8
                  ori          t4, gp, 1942
                  xor          zero, t5, s1
                  slli         tp, s7, 17
                  sll          a1, tp, a5
                  sltu         tp, a7, a6
                  andi         s0, a6, -1680
                  sltiu        t3, s7, -1465
                  and          a4, s11, t6
                  xori         s5, s6, -616
                  andi         t0, s1, 1088
                  sltu         a4, a3, t3
                  slt          a7, a7, s4
                  slt          s5, ra, s1
                  andi         a6, a4, -1047
                  slt          s8, zero, t5
                  srl          s6, a4, a2
                  xor          a6, t0, zero
                  sra          s8, a4, t5
                  or           s0, gp, t6
                  nop
                  sub          s5, t4, s4
                  nop
                  slli         a5, s10, 12
                  sub          gp, zero, t0
                  sltu         t0, s8, t0
                  sltu         a3, a6, s4
                  addi         s7, s6, 480
                  add          s7, gp, tp
                  xor          s0, s7, s0
                  sll          s4, s0, a3
                  nop
                  auipc        t5, 311613
                  srl          t1, t6, s4
                  srai         a5, gp, 9
                  nop
                  nop
                  slli         a5, s2, 17
                  andi         t0, s10, -1459
                  nop
                  sra          t5, s3, s7
                  andi         a0, s6, 827
                  or           s0, a2, s1
                  slli         t5, t6, 7
                  xori         a6, a3, -2037
                  and          a1, s11, a4
                  lui          s5, 561973
                  srl          s0, s6, a5
                  xor          s9, t1, t3
                  and          s1, a5, s7
                  sltu         s10, s10, gp
                  xori         t2, a5, -25
                  or           s7, t3, sp
                  addi         gp, sp, 206
                  srai         s0, s1, 10
                  slt          a1, a4, t1
                  xori         s1, ra, 1158
                  sltu         a7, s11, s5
                  slli         t1, t0, 14
                  auipc        s9, 148961
                  slti         a4, ra, 651
                  sltiu        gp, s8, -1650
                  srai         t4, a6, 26
                  srli         tp, t4, 17
                  xor          sp, s6, s0
                  lui          zero, 347565
                  sra          tp, a2, s5
                  sltu         a4, a3, s2
                  slt          t1, a6, s1
                  sltu         tp, ra, a5
                  lui          s4, 994971
                  srai         s9, t3, 1
                  nop
                  slli         s10, s0, 1
                  nop
                  or           t2, sp, sp
                  addi         a6, s0, -1172
                  slti         a2, t6, -1026
                  slti         a3, s4, 1856
                  nop
                  auipc        a6, 801345
                  sub          sp, s8, s6
                  ori          t4, t5, 1237
                  sra          s10, a7, a4
                  sub          a2, t2, zero
                  addi         a4, s5, -1964
                  slti         s8, t2, 1599
                  xor          s7, t1, a2
                  and          a3, zero, s7
                  sub          s4, a0, s0
                  sll          s9, zero, s4
                  slt          t2, s5, s10
                  srl          tp, s1, a0
                  slti         zero, s1, -1650
                  slt          t1, s7, t4
                  sltu         t1, s8, a2
                  addi         t5, t3, -713
                  andi         t3, s11, 308
                  sltu         t3, ra, s11
                  srl          t3, tp, gp
                  srl          a6, t1, a2
                  xor          a6, a2, ra
                  slli         s10, s2, 9
                  sra          a4, ra, a5
                  slti         a5, s0, -1964
                  sub          s10, a5, a4
                  sub          t3, s11, a6
                  ori          t1, t4, -2035
                  add          s5, a0, s3
                  slli         a0, s3, 9
                  add          s6, s0, a2
                  srai         a3, s0, 5
                  and          a7, s0, a2
                  auipc        zero, 903266
                  slt          t4, t3, s4
                  add          t3, ra, s7
                  srl          a7, a7, t3
                  add          zero, a6, a1
                  xori         t0, s5, 1421
                  addi         a7, zero, -1257
                  nop
                  ori          a5, s8, -1487
                  slti         a3, zero, 269
                  addi         t5, t2, -864
                  slt          s4, t5, a7
                  srli         t0, s6, 6
                  sub          gp, s8, s0
                  xori         t6, t5, -1818
                  srai         t2, zero, 27
                  lui          s6, 138431
                  srli         tp, gp, 11
                  sltiu        t1, t2, -743
                  ori          s5, ra, 1335
                  slli         a2, s9, 17
                  slli         s8, gp, 3
                  sub          a5, zero, t1
                  andi         t2, s1, 1259
                  sub          a0, s1, a6
                  srli         s1, zero, 14
                  and          s10, a5, s4
                  nop
                  auipc        t0, 593509
                  and          t5, a0, s7
                  srai         s8, a3, 8
                  and          zero, a1, a2
                  nop
                  and          s7, a3, s2
                  sub          a5, t6, t5
                  andi         t3, tp, -1179
                  slli         s6, s5, 22
                  add          s9, s5, a6
                  auipc        t4, 754645
                  auipc        t3, 1034450
                  add          a3, a0, t1
                  sra          a0, a1, s7
                  addi         s6, t6, 543
                  sll          s0, s9, s7
                  srli         t6, a5, 16
                  srli         s8, t6, 29
                  srl          t6, s5, s8
                  xori         t0, a1, 1176
                  or           s5, a3, tp
                  sltiu        s7, sp, 607
                  addi         s10, s9, 1127
                  sll          a4, t2, zero
                  and          t2, gp, a6
                  auipc        sp, 989850
                  ori          s3, s9, -1294
                  sub          t4, t1, s2
                  sll          s7, s5, tp
                  xor          t0, s11, sp
                  srai         t0, t5, 10
                  slti         s3, a2, -1900
                  ori          t5, t6, 1211
                  sltiu        gp, s7, 1461
                  andi         s3, s0, -417
                  sra          s8, a6, t0
                  or           a3, s1, s1
                  ori          a0, t6, -713
                  srl          tp, s7, a7
                  slli         t0, a5, 1
                  sub          s6, a2, s4
                  auipc        a1, 252737
                  sltu         s5, s4, s8
                  nop
                  slt          s5, t0, t6
                  ori          s3, a3, -1972
                  or           s9, a3, s6
                  sltiu        s3, s10, 294
                  or           sp, s1, a1
                  slt          a7, a6, s5
                  add          a7, a2, zero
                  srl          s0, a6, t3
                  ori          a4, t4, 65
                  xor          s3, t2, s2
                  slli         s4, tp, 9
                  srl          s6, ra, a0
                  and          t4, s4, s10
                  sra          a3, s11, a4
                  slli         s7, s8, 25
                  ori          a4, a7, 1318
                  sltiu        a7, s6, -82
                  and          a2, t5, a2
                  add          s5, s2, a5
                  sll          t1, a2, s3
                  xor          t5, s2, s2
                  andi         s4, s11, 555
                  and          s3, s8, s7
                  slt          a7, a5, a5
                  sltu         s8, s3, t6
                  auipc        s5, 368439
                  ori          sp, a7, 1569
                  add          a0, s10, s8
                  and          tp, s6, s9
                  slli         t2, s3, 15
                  slli         t6, t5, 28
                  lui          s7, 701604
                  ori          sp, t5, 1003
                  nop
                  addi         s4, a3, 1679
                  addi         s7, sp, -46
                  and          s8, s2, t4
                  sltiu        a7, s3, 806
                  and          t1, a3, s1
                  and          t2, gp, gp
                  sra          a5, t5, sp
                  slli         sp, s8, 21
                  sra          t1, t4, s11
                  andi         t2, s4, -1324
                  srai         a7, t1, 30
                  or           tp, s8, t4
                  sll          s0, t1, tp
                  srli         s9, t4, 29
                  and          a5, a4, a5
                  andi         sp, s9, 1249
                  sub          t4, a4, sp
                  slti         tp, a7, 1772
                  srai         a5, t1, 4
                  sltiu        s6, a1, 997
                  andi         gp, t0, 908
                  sll          s3, s0, a7
                  or           a0, t3, s7
                  sltiu        zero, t6, 1234
                  add          a1, a6, t1
                  xor          t4, a4, t1
                  auipc        zero, 448497
                  slti         a1, s3, 721
                  or           t6, a1, t0
                  slt          a7, a0, s9
                  or           a3, s5, t5
                  lui          tp, 823936
                  sltu         s0, s11, a0
                  slti         a6, t0, -29
                  auipc        t1, 180169
                  xor          a6, t1, t3
                  srli         a2, s2, 4
                  sra          t0, a2, t2
                  sltiu        t4, a0, 1171
                  or           a2, ra, sp
                  sub          s8, tp, t6
                  andi         sp, s11, -1615
                  slt          s6, s5, s4
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s3, 0x0
                  li           t2, 0x5f473d16
                  li           t3, 0x0
                  li           t1, 0x0
                  li           s5, 0x0
                  li           a2, 0x20062228
                  li           a0, 0xa5b4c583
                  li           s10, 0x0
                  li           sp, 0x80000000
                  auipc        a3, 348510
                  sub          s10, t1, a2
                  sub          a3, sp, s5
                  nop
                  sub          a3, a0, t2
                  lui          a0, 759740
                  addi         t3, a0, 1446
                  nop
                  nop
                  nop
                  lui          s10, 48928
                  nop
                  add          s3, a2, t2
                  add          t3, t3, s5
                  lui          a3, 665088
                  nop
                  lui          s5, 37332
                  sub          t1, t1, a3
                  nop
                  auipc        sp, 80634
                  lui          t1, 271998
                  auipc        t1, 751640
                  addi         t1, t3, -596
                  add          s10, s3, s3
                  add          t3, t2, t1
                  lui          s5, 119095
                  nop #end riscv_int_numeric_corner_stream_18
                  srai         s9, s0, 15
                  add          a2, a5, t0
                  srl          s8, s11, a3
                  slli         s6, ra, 26
                  xori         s5, s11, -371
                  addi         a2, t0, -211
                  srai         a5, s6, 24
                  or           s1, s2, s4
                  andi         a1, a6, 292
                  srl          t3, s9, sp
                  xor          a0, s5, zero
                  slt          s9, s7, s3
                  srli         s4, t0, 4
                  auipc        s9, 882960
                  andi         s7, t0, -2009
                  andi         zero, t3, 1798
                  slt          t4, t0, a7
                  ori          t0, t6, 1014
                  addi         s8, a1, 208
                  nop
                  lui          a2, 902377
                  andi         t3, zero, 1300
                  srai         a7, t3, 30
                  xor          a5, t5, a7
                  sra          s10, a7, s3
                  ori          t4, s4, -1161
                  sub          a1, s10, a3
                  srl          t6, s5, a7
                  add          s7, a6, s4
                  sra          sp, a5, a1
                  lui          zero, 332232
                  add          t4, a0, s9
                  srl          tp, t2, s11
                  or           s0, zero, a6
                  addi         t3, s5, -72
                  xori         s10, sp, 1368
                  nop
                  slli         s0, gp, 27
                  sra          t4, a0, sp
                  xor          a0, t0, s4
                  lui          zero, 961195
                  add          s7, zero, s4
                  sra          a5, a7, s6
                  srai         a5, s8, 7
                  andi         s10, t3, 1038
                  lui          zero, 366700
                  sltu         s3, s2, t2
                  nop
                  srai         zero, a6, 30
                  or           s4, ra, t5
                  nop
                  srli         t2, s10, 19
                  auipc        a6, 93741
                  ori          t1, t3, 198
                  addi         a7, s3, -1894
                  auipc        t5, 360452
                  add          zero, t1, s5
                  nop
                  ori          s3, a4, 600
                  lui          s7, 160661
                  ori          s6, s11, -663
                  ori          sp, s5, -2
                  add          gp, s0, s5
                  addi         s6, s4, 290
                  slli         a5, a4, 9
                  slt          s7, gp, s4
                  xor          s10, a6, s6
                  sltu         s5, s9, s6
                  andi         t2, t6, 245
                  sra          a5, s10, a1
                  srai         tp, s3, 29
                  srli         zero, tp, 22
                  andi         s1, s1, -1788
                  sltu         tp, t3, s7
                  slli         t6, s8, 0
                  slli         t3, tp, 15
                  and          t0, s6, s0
                  sll          s3, s8, ra
                  xor          gp, t0, s10
                  andi         s6, ra, 421
                  ori          a1, a1, 741
                  ori          s1, s1, 163
                  andi         t2, s2, -975
                  lui          t1, 224504
                  slti         tp, s0, -1619
                  srai         a3, gp, 6
                  or           s1, sp, a1
                  xor          t0, gp, s11
                  xor          s9, s1, t3
                  sltu         a7, a6, t5
                  andi         a6, s4, -1842
                  ori          t1, s2, 192
                  srli         a0, t6, 20
                  sll          s10, a0, a3
                  slli         tp, s1, 31
                  sra          s5, s3, s0
                  sub          t5, t3, a5
                  sltu         s0, a7, sp
                  slti         s8, s9, -419
                  and          t5, zero, s2
                  sub          a1, a1, s6
                  andi         s8, sp, -830
                  slti         a4, a4, 1338
                  sub          t2, t1, zero
                  xor          a7, s3, s0
                  sltiu        s3, a0, 1165
                  slt          a3, t4, t2
                  xori         gp, s7, 604
                  srl          t3, s8, t5
                  addi         t0, a7, 524
                  slli         t1, s6, 8
                  sra          t1, ra, tp
                  nop
                  sltiu        s9, zero, -1132
                  slt          zero, s5, a1
                  and          s9, s6, gp
                  sra          sp, t6, s10
                  srli         t3, s7, 25
                  andi         s3, tp, 1919
                  xor          s0, a2, s11
                  slt          t6, t6, s8
                  addi         a1, s7, -1662
                  add          s3, a3, a1
                  srli         a4, s3, 11
                  srli         s4, t2, 4
                  andi         s5, s3, 1566
                  andi         s10, a0, 307
                  sra          a2, t2, s1
                  sll          s3, t4, s0
                  sra          a1, t0, s10
                  lui          s3, 566279
                  sll          gp, a2, s6
                  ori          a2, s8, -417
                  sra          s0, s4, a3
                  xori         t0, ra, 148
                  xor          s8, s1, t6
                  sltiu        a2, s8, 585
                  srai         t2, s6, 0
                  sltiu        a6, a5, 638
                  andi         s9, a6, 185
                  or           t4, gp, s7
                  slt          a6, zero, s11
                  add          a2, t5, t0
                  xori         t3, a3, 572
                  add          s5, gp, t3
                  andi         t6, ra, -1606
                  or           s3, ra, t5
                  srl          a0, t1, tp
                  srli         t5, s4, 5
                  srli         t2, s6, 18
                  sll          s0, s10, a0
                  nop
                  and          tp, a4, a3
                  lui          s1, 131003
                  addi         a2, t2, 1715
                  auipc        a5, 263638
                  auipc        s4, 170259
                  ori          s0, a6, -71
                  sll          sp, ra, a4
                  ori          s3, s0, -1629
                  sltiu        t2, s9, 1902
                  or           zero, s9, a4
                  sll          a2, a4, t5
                  sll          a3, s11, s9
                  add          s0, t1, a5
                  srai         t6, s0, 14
                  or           a6, s10, s7
                  sra          s6, s8, s8
                  addi         a4, s1, -875
                  slli         s4, s11, 0
                  srli         a6, s2, 16
                  lui          s1, 111911
                  sltu         gp, t0, a3
                  sub          gp, t4, a2
                  add          a0, t0, t5
                  nop
                  slli         s9, a0, 2
                  slli         tp, t5, 5
                  sra          t3, a3, s5
                  sub          s9, s7, s0
                  srli         a3, a6, 9
                  and          s1, a1, gp
                  or           a5, t1, a5
                  ori          s8, ra, -1276
                  srli         s9, a3, 28
                  srli         a4, t2, 23
                  sra          a2, a2, a6
                  xori         s1, a1, -397
                  add          s1, s2, zero
                  or           t3, sp, gp
                  sltiu        sp, s4, -2041
                  xori         a3, sp, -970
                  xori         t2, t4, 1986
                  add          a1, s5, t6
                  sub          s9, a2, s0
                  or           s5, s7, t4
                  sltiu        s10, s8, -391
                  slti         t2, a6, 74
                  sub          t3, zero, ra
                  sltu         s6, s6, a4
                  srai         s8, tp, 20
                  andi         a1, s2, 1655
                  sra          s7, t6, s1
                  and          t5, s9, a1
                  ori          s4, gp, -1380
                  or           zero, a6, s5
                  srli         s4, s5, 26
                  nop
                  add          s6, s6, s0
                  xori         a0, a2, 1478
                  xor          s4, sp, a6
                  addi         t4, t6, 1323
                  and          s7, a0, a4
                  srl          s6, s8, zero
                  or           t6, s6, t0
                  slt          s8, s4, tp
                  slli         t0, s8, 0
                  lui          s1, 749426
                  srli         t3, s5, 8
                  srai         s6, s8, 3
                  srl          a6, s5, t1
                  sra          t6, s6, gp
                  nop
                  sub          a3, zero, t6
                  add          s4, ra, s5
                  sltiu        sp, gp, -1544
                  auipc        t3, 270831
                  sra          s1, a2, s7
                  add          s0, sp, s8
                  lui          sp, 43320
                  sll          t6, s3, t5
                  slt          s0, a0, zero
                  sra          s4, t3, zero
                  srai         t1, s7, 20
                  sub          t0, t6, a3
                  sub          t6, s5, tp
                  auipc        a3, 786371
                  lui          s7, 591320
                  addi         a1, s4, -834
                  xori         s4, a5, 742
                  andi         a3, a5, -542
                  and          a3, zero, t0
                  add          a2, s4, s3
                  nop
                  sll          s1, zero, a5
                  slt          a7, t6, s4
                  addi         t3, t5, -487
                  nop
                  sll          t6, s10, a4
                  addi         s6, s0, -1673
                  andi         t5, s7, -1751
                  sll          s10, a0, a3
                  sub          gp, a4, t0
                  and          s6, s1, s8
                  sub          a2, s4, s9
                  lui          t3, 273634
                  xor          s1, a6, a6
                  sll          sp, gp, s8
                  slli         sp, a0, 13
                  and          s8, s11, t2
                  sltu         a2, a6, t2
                  auipc        s4, 205570
                  andi         a7, t5, -1887
                  srl          s5, a5, s4
                  sra          s6, a0, t5
                  slti         s6, a0, -686
                  sltiu        s8, a7, -75
                  sll          t1, a7, a2
                  and          t2, t5, s1
                  and          gp, a3, s7
                  or           s9, gp, a6
                  slt          s0, a1, t1
                  sra          t3, a1, t3
                  nop
                  slli         t6, s3, 6
                  sltiu        t3, a1, 1785
                  lui          s5, 562822
                  srai         a2, t6, 21
                  andi         s8, s11, -1679
                  ori          t2, s6, 1421
                  or           s9, a5, a3
                  sra          s0, gp, s7
                  or           t5, s4, s7
                  slt          s1, t3, a6
                  lui          t5, 737938
                  srl          gp, t3, a4
                  and          s4, t2, s5
                  ori          tp, s8, -792
                  slli         s5, t2, 15
                  or           a3, s1, s9
                  srli         s9, a1, 20
                  sub          t1, s7, a7
                  ori          a3, a0, -574
                  or           s9, gp, t2
                  ori          s1, a5, -203
                  andi         s6, gp, -383
                  or           t1, t6, t6
                  auipc        t1, 268526
                  addi         a0, a5, -417
                  and          t4, gp, s0
                  srl          t2, s7, s9
                  or           s10, tp, s11
                  add          t2, ra, t5
                  lui          s7, 179573
                  and          tp, t3, s7
                  sub          a2, sp, s2
                  slli         s1, s3, 10
                  or           t2, a3, ra
                  or           s10, s2, a7
                  add          t1, a0, s11
                  auipc        s1, 718283
                  sll          sp, s7, zero
                  slt          t1, t5, a1
                  sll          a1, sp, s3
                  add          a4, tp, a3
                  sub          s0, zero, s1
                  srai         s6, s8, 14
                  sll          s9, a5, t5
                  ori          zero, a6, -1824
                  auipc        t3, 541158
                  and          t6, t6, t6
                  sra          gp, a2, s9
                  sltiu        s1, s6, -1521
                  sll          t0, a7, s11
                  sra          s1, zero, s9
                  sltiu        a3, t1, 217
                  slli         a4, t2, 30
                  and          t2, t5, t2
                  srli         a5, s3, 5
                  or           t6, t0, ra
                  sltiu        a2, a1, 1251
                  or           t4, s6, t5
                  addi         s1, s5, 983
                  ori          t4, a3, 1558
                  srai         s1, s5, 14
                  srl          a4, gp, a4
                  slti         sp, s8, 1616
                  auipc        t2, 753503
                  lui          s7, 147253
                  or           a4, s11, s10
                  srl          t0, a7, a5
                  srl          t0, t4, s9
                  srai         tp, s10, 21
                  xor          s5, t2, s7
                  xor          a0, tp, s6
                  sltu         sp, a6, s5
                  srl          s8, t1, sp
                  slti         s4, t0, -446
                  sltiu        s5, a4, 1668
                  sra          s0, s9, a5
                  lui          a3, 382321
                  sltiu        t5, t3, 1933
                  slli         s3, ra, 25
                  sra          a6, a4, s7
                  sltiu        s3, sp, -907
                  and          s1, t6, s4
                  slti         t0, s9, 409
                  sltu         sp, t4, s8
                  sra          s10, a7, a7
                  andi         s4, a6, -1102
                  and          s8, t2, t2
                  srai         t3, t0, 13
                  sltu         a5, a5, t5
                  add          t5, t3, a0
                  sub          s4, t5, tp
                  sub          s10, s11, a3
                  slt          t1, a3, a5
                  nop
                  slt          s8, s2, s4
                  srl          sp, t5, s10
                  srai         a4, s7, 15
                  ori          gp, tp, -172
                  auipc        gp, 597333
                  nop
                  addi         t5, s8, 1585
                  or           t6, s8, t5
                  srli         a6, a1, 12
                  sltu         s1, a2, s9
                  sltiu        t6, t4, -976
                  slti         a4, s8, 1005
                  xori         a0, t0, 910
                  slti         s5, a0, 1120
                  andi         s7, t5, 820
                  srl          zero, a1, t4
                  sltiu        s3, s8, -1984
                  sltu         zero, t3, t2
                  auipc        a7, 145332
                  xori         t3, s7, 732
                  sra          a7, t5, t1
                  add          zero, tp, t2
                  slti         a4, a5, 191
                  xor          a2, t4, a7
                  or           t6, s10, t6
                  slti         t1, a2, -1955
                  sra          zero, sp, t6
                  xori         zero, t6, 1107
                  sll          s5, gp, ra
                  srai         s4, s5, 20
                  slti         s8, t6, 504
                  slli         s6, t5, 24
                  addi         a7, t4, 1861
                  sra          s3, gp, t1
                  slti         s5, t3, -845
                  nop
                  andi         t0, a4, 1827
                  or           s7, s8, a1
                  srai         a1, a5, 20
                  auipc        zero, 19862
                  xori         s0, a1, -573
                  sltiu        t3, s3, 73
                  srli         t2, s10, 26
                  slt          s4, a3, t0
                  slli         s10, a5, 3
                  slli         zero, a5, 6
                  nop
                  add          t0, sp, a5
                  and          sp, a0, a3
                  nop
                  xori         t0, a7, -1103
                  srai         s10, s0, 30
                  add          gp, s3, t6
                  andi         a0, a5, -468
                  lui          a1, 776975
                  add          t4, s4, a1
                  sll          a5, t1, gp
                  srli         s8, s1, 1
                  sll          s10, zero, a1
                  addi         t0, s8, 1953
                  or           a1, s0, s10
                  srl          a5, s5, a7
                  add          s8, t5, s5
                  srai         a0, t0, 10
                  xor          a1, t2, a6
                  lui          a4, 1020309
                  srl          a1, t0, a0
                  ori          s9, s5, 1659
                  slt          a5, a2, t0
                  auipc        a7, 687122
                  andi         s6, t3, 1530
                  nop
                  add          s0, s3, t2
                  sll          t5, t4, s2
                  slli         t3, t5, 16
                  sra          s4, a0, a3
                  sra          gp, a4, s0
                  srli         a6, t1, 23
                  add          t1, a5, t4
                  slli         s4, a2, 7
                  and          s6, t5, s6
                  ori          a5, s4, 267
                  sub          s8, a1, a4
                  sltu         t1, sp, a2
                  slli         s4, ra, 27
                  sll          a6, a3, sp
                  lui          s1, 317129
                  xori         t6, s8, 686
                  sltiu        a7, s9, 1254
                  andi         sp, s11, 8
                  xori         s7, s1, -1288
                  andi         t0, s5, -1482
                  slti         gp, a0, -2020
                  slti         s4, a7, -1354
                  lui          s9, 813323
                  srai         a6, sp, 6
                  and          s5, sp, a1
                  srl          t0, s10, s9
                  srai         t5, s11, 18
                  ori          t1, t2, -998
                  lui          s5, 269379
                  sltiu        a0, s8, -839
                  sll          t0, s1, gp
                  sra          sp, a3, sp
                  sll          a5, t0, s9
                  sra          s1, t4, s6
                  srli         s6, a3, 10
                  and          s6, s10, s2
                  addi         t2, t6, 762
                  slti         zero, s0, -627
                  and          a4, a5, a7
                  andi         t6, a4, -366
                  slt          a6, a3, a2
                  add          s10, s7, a1
                  andi         t4, s0, -27
                  srai         t3, a6, 18
                  srli         a6, t0, 29
                  srl          t6, a3, t1
                  sltu         t2, a7, s8
                  srl          t2, s11, s2
                  slt          a6, a1, s11
                  xor          t5, a4, a7
                  xor          s10, gp, s6
                  srai         s3, ra, 17
                  sltiu        a4, a7, -390
                  andi         t1, s10, -904
                  xori         a7, s7, 451
                  sra          a2, sp, a1
                  sub          a1, a4, a0
                  sll          sp, t0, s10
                  sltiu        sp, a4, 271
                  srli         s8, a2, 13
                  srl          t6, s0, s9
                  or           t2, t1, ra
                  sub          t0, s11, a7
                  srli         t2, t5, 21
                  xori         t1, s10, 828
                  addi         s3, t0, 209
                  andi         t0, gp, 957
                  ori          gp, a4, 1343
                  slli         s7, t1, 25
                  sra          t6, a5, a3
                  sra          s5, a7, t4
                  sltiu        t4, ra, -2009
                  lui          tp, 336877
                  ori          s7, t2, 241
                  sra          a1, t4, t3
                  xori         s8, a0, 454
                  slti         s6, s3, 1738
                  sll          a6, gp, s7
                  slt          a0, t5, s11
                  sltiu        t4, s2, -299
                  slt          s7, s9, a2
                  xori         s6, s6, 1615
                  xori         t6, a6, -1197
                  auipc        s4, 730715
                  slti         t1, sp, -858
                  lui          a5, 153397
                  srli         t4, ra, 1
                  ori          t1, s11, -756
                  sltu         a4, a3, s4
                  xori         s4, zero, -456
                  and          s0, tp, zero
                  ori          t0, t5, -226
                  andi         s3, t5, -1927
                  sub          s8, tp, a2
                  addi         a6, ra, 316
                  sltiu        zero, zero, 1224
                  xor          s8, s9, s5
                  sll          a3, s6, a5
                  slt          s5, a6, s10
                  sra          a1, t6, ra
                  sra          s8, a7, s3
                  sltu         a0, a1, s11
                  sltu         t0, gp, a5
                  or           s10, a1, s9
                  slti         t5, t1, -564
                  addi         t4, s8, -496
                  ori          a6, s0, -331
                  slti         s0, a4, 1530
                  addi         a6, s4, -176
                  srl          a3, ra, tp
                  slti         a7, zero, 1226
                  slti         s1, s8, -1147
                  slt          t0, t2, s6
                  xori         a3, s6, 210
                  lui          s8, 119515
                  srl          s4, s6, t0
                  ori          a7, t4, 896
                  xor          a1, s8, a4
                  slti         s4, s2, 1275
                  addi         s10, s7, 1121
                  slti         a2, sp, 457
                  xor          s3, a2, gp
                  auipc        a2, 253610
                  sltiu        a2, a1, 1307
                  nop
                  xori         s5, s9, -1308
                  or           tp, s4, ra
                  sltiu        sp, a0, -1440
                  slti         zero, s2, 212
                  or           t4, a4, s6
                  nop
                  sll          s1, sp, s6
                  andi         a6, s5, -1895
                  xori         s0, s11, -1005
                  slt          tp, a5, a1
                  xori         s10, a7, -256
                  srai         s3, zero, 14
                  and          a2, s6, t2
                  andi         s5, s3, -1666
                  lui          a0, 958848
                  addi         s6, a0, 582
                  nop
                  or           t1, sp, s11
                  nop
                  sra          t0, t5, a1
                  sra          a7, tp, t5
                  sub          t2, a0, gp
                  xori         t5, s9, -735
                  xor          t6, s9, s0
                  slli         s8, s10, 29
                  sra          a5, t5, a3
                  srli         a3, a7, 13
                  srl          s1, s6, zero
                  sll          s5, a7, a0
                  srli         sp, t2, 3
                  andi         t5, sp, 1718
                  slt          a6, a7, t6
                  or           a0, t5, t1
                  add          s1, t5, gp
                  lui          s1, 376296
                  sll          a6, s0, a4
                  addi         gp, s2, 499
                  xori         t0, a2, -142
                  or           t2, a7, s3
                  slli         t6, s3, 1
                  and          a3, t2, sp
                  srli         s7, s0, 21
                  slti         s1, a7, -622
                  lui          a3, 770194
                  auipc        t4, 375995
                  sll          a3, s7, s11
                  addi         tp, t3, 961
                  xori         a0, t5, 2024
                  or           s3, sp, t3
                  nop
                  and          s3, s3, sp
                  sll          t2, s10, s3
                  sra          s10, s6, s5
                  and          t2, s5, a0
                  srai         t3, a1, 6
                  sra          gp, a5, a1
                  and          a4, s8, s2
                  and          s1, t0, a0
                  nop
                  lui          s5, 127138
                  sub          a0, a5, tp
                  sra          t1, a0, s6
                  nop
                  slt          sp, s8, s10
                  xori         s7, t1, 680
                  sltiu        a7, a7, 2003
                  add          s10, zero, s1
                  sub          a0, t4, a3
                  sll          a0, s0, t0
                  add          a7, s1, a2
                  srai         t5, ra, 23
                  sll          t0, s0, t3
                  add          a4, s10, s6
                  addi         s7, a5, 1435
                  addi         s3, a0, -840
                  addi         sp, s0, -240
                  lui          t2, 64867
                  slti         s4, s8, 474
                  srl          s10, gp, t2
                  add          s1, a6, a5
                  auipc        t0, 377020
                  add          t3, a1, s10
                  sll          s3, s3, t1
                  sub          t3, ra, s0
                  ori          s1, s5, -160
                  ori          a1, a0, 22
                  slti         s6, t6, 1496
                  xor          s0, t3, a4
                  xori         zero, s5, 821
                  andi         t0, t6, 589
                  sub          a2, gp, t5
                  sltiu        s8, t2, -464
                  nop
                  ori          tp, s5, -1009
                  sub          s7, a0, a5
                  or           t5, sp, sp
                  nop
                  addi         s5, s0, 304
                  auipc        a4, 49328
                  sltu         t3, s7, t3
                  srli         a6, t2, 20
                  srl          s3, s11, t6
                  srli         sp, ra, 27
                  ori          a1, ra, 5
                  srai         a3, s1, 11
                  sltiu        s10, ra, -985
                  sltu         t6, s4, s6
                  srli         tp, a7, 7
                  srli         a3, ra, 26
                  srai         t2, t2, 11
                  sll          sp, zero, s8
                  nop
                  and          a1, a5, s7
                  sll          s10, t2, sp
                  xori         s6, s11, -1471
                  sll          s0, t6, s8
                  sra          t6, t4, gp
                  and          t6, a5, s11
                  sra          s5, sp, a1
                  sub          s5, s4, a0
                  sub          t6, a4, ra
                  slti         t1, s9, 947
                  nop
                  srai         t0, zero, 4
                  auipc        a3, 752399
                  ori          t4, a5, -146
                  andi         t1, ra, -367
                  andi         s10, t0, -232
                  addi         zero, tp, -1116
                  auipc        tp, 789466
                  sub          s10, a0, t0
                  xor          zero, s2, s4
                  srai         a2, tp, 18
                  slt          s0, s1, a6
                  slt          a1, a1, t4
                  and          s6, t4, s11
                  sltu         s5, zero, a4
                  srai         t1, tp, 15
                  srai         t0, t3, 6
                  sltu         t4, s0, s3
                  srl          a1, zero, a5
                  and          a7, s6, ra
                  ori          a7, a6, 828
                  nop
                  auipc        t6, 255267
                  sltu         s1, s3, a6
                  sltu         a7, sp, s4
                  sltu         t2, sp, ra
                  slti         a4, a2, 473
                  andi         a6, t6, -1113
                  sub          t2, t3, s7
                  slti         t4, s7, 91
                  ori          s9, s4, -1739
                  nop
                  slti         s5, t0, -1302
                  xori         s10, a7, -2008
                  srl          s7, a6, a2
                  srl          a5, gp, tp
                  lui          a0, 1012959
                  xori         a5, a5, 1934
                  slt          s7, s1, ra
                  sltiu        t1, a1, 1718
                  xor          s6, a3, a5
                  sll          s5, a4, sp
                  srli         t2, s10, 7
                  sll          a5, s9, t0
                  slti         s6, a6, 508
                  srl          tp, s0, s8
                  lui          s4, 559613
                  lui          t4, 183191
                  srai         gp, s6, 12
                  or           a1, a5, tp
                  xor          s5, s8, s2
                  slt          tp, t1, t5
                  lui          s9, 451943
                  srl          tp, t5, sp
                  sltiu        s8, t1, -1310
                  srl          s0, a0, s6
                  slti         s7, s5, 278
                  sra          s7, a5, t3
                  sub          s8, a5, s5
                  or           a5, tp, t6
                  lui          s6, 503448
                  slti         s1, s5, 391
                  andi         t4, t3, 1826
                  xori         s10, a1, -1723
                  sra          s9, s5, s6
                  xor          a1, t6, t1
                  slt          s0, a3, s5
                  slli         t5, a1, 19
                  auipc        s9, 672609
                  addi         a3, s4, 862
                  srai         a2, a2, 12
                  and          t2, a5, s10
                  sra          s5, s4, s4
                  sra          t3, a3, s2
                  srli         gp, t5, 13
                  and          a0, s11, t4
                  sltu         t1, s8, s7
                  auipc        s7, 301860
                  addi         a0, a2, -1877
                  and          a3, gp, a6
                  xor          gp, t5, t4
                  sub          s6, a5, s9
                  lui          a5, 134170
                  auipc        s3, 598837
                  slti         s8, s6, -119
                  slli         t1, t6, 19
                  and          tp, s5, t2
                  auipc        t2, 788689
                  andi         s5, s2, 423
                  auipc        s1, 907070
                  lui          s3, 175747
                  slti         s5, s8, 1702
                  and          a5, tp, zero
                  xor          sp, s8, t5
                  slti         s3, t6, -1804
                  srai         a1, zero, 22
                  ori          t5, tp, -202
                  xori         s8, tp, -1480
                  xor          s5, tp, gp
                  slli         a1, s1, 24
                  srl          t0, a3, s8
                  srli         s4, a2, 5
                  sltiu        a4, s10, -86
                  andi         a5, s2, -1157
                  nop
                  andi         tp, a2, 1469
                  slli         s10, s7, 7
                  srli         t3, s8, 29
                  xori         t1, a2, 902
                  sub          a0, a6, t3
                  addi         s6, s6, 876
                  lui          a6, 154396
                  sra          s3, s6, s9
                  add          s5, a4, s7
                  srl          zero, s6, t0
                  slli         sp, s9, 20
                  slt          zero, a3, t1
                  auipc        t0, 402999
                  sub          sp, s0, a3
                  ori          s5, a4, -498
                  xor          t5, s8, a6
                  sll          a4, a7, a2
                  nop
                  addi         a1, s6, -447
                  sub          a1, s4, s3
                  auipc        s10, 374295
                  auipc        gp, 485673
                  srli         a4, a1, 19
                  sll          t5, sp, sp
                  xor          sp, a5, t4
                  nop
                  sltu         a2, a1, s7
                  sra          t0, t5, a7
                  nop
                  or           s1, t3, gp
                  sra          t4, a7, a5
                  xor          a3, s9, sp
                  addi         a2, s1, 168
                  auipc        s1, 710377
                  addi         a2, t6, 1611
                  sltiu        s10, gp, 116
                  slt          s9, sp, s5
                  and          t3, s1, a3
                  xori         a3, a0, -333
                  lui          s9, 409527
                  sra          s7, sp, t5
                  srli         a3, gp, 20
                  ori          a5, a0, 25
                  auipc        zero, 761523
                  or           s0, tp, s10
                  xori         t5, s3, -772
                  sll          gp, t4, s10
                  lui          t4, 819717
                  srl          a0, tp, t6
                  nop
                  slt          tp, s4, gp
                  srli         gp, t4, 5
                  srl          t0, t4, t5
                  and          tp, s10, a2
                  lui          t3, 646909
                  slt          a0, t4, zero
                  lui          t4, 429635
                  sub          t4, gp, s1
                  ori          sp, t3, 103
                  xor          t1, t4, s1
                  sltu         s3, sp, zero
                  lui          t6, 746045
                  sll          tp, a7, s9
                  xori         a7, s2, 214
                  sltiu        a2, zero, -511
                  ori          t0, s6, -61
                  ori          a5, t4, -66
                  slti         a1, a0, -31
                  sltu         sp, t3, t4
                  slli         s7, t1, 22
                  or           a5, s7, s11
                  ori          a2, s1, -789
                  xori         tp, t5, 1038
                  srl          t2, s1, s0
                  sub          t1, s7, s5
                  slt          t5, t5, s9
                  slti         tp, gp, 466
                  sra          s1, s8, a4
                  sra          t4, a7, t4
                  slt          zero, a6, gp
                  lui          t4, 975060
                  sltu         t5, t6, t1
                  slli         t4, a2, 25
                  nop
                  sra          t4, s11, s3
                  and          s10, a2, s2
                  slt          t4, s7, t6
                  srl          s0, s9, t1
                  sub          s1, sp, a0
                  slt          t4, s2, t2
                  sltiu        t3, s3, 1020
                  sll          s8, a5, s1
                  srl          s5, a4, t6
                  slti         a4, s0, -531
                  slt          a1, t1, a5
                  andi         s0, a7, 697
                  andi         s1, a6, -1615
                  srli         t0, a5, 17
                  sra          a1, t1, t6
                  srli         a7, s10, 29
                  sltu         a1, s2, a5
                  andi         tp, t1, -1627
                  slti         t6, s10, -1946
                  auipc        t5, 37656
                  xori         s6, a3, 722
                  nop
                  addi         t5, s1, -1491
                  addi         s6, t1, 470
                  srli         zero, t1, 17
                  slli         t0, s1, 20
                  nop
                  sltu         s8, t1, a2
                  sll          s3, s0, a6
                  slti         s10, a6, 955
                  add          s9, s8, s5
                  nop
                  nop
                  sll          t6, a3, a0
                  sltu         tp, s0, t4
                  sra          s1, t5, t4
                  and          s5, s5, a4
                  ori          s6, s0, -1097
                  sltu         a1, tp, ra
                  srl          sp, ra, s6
                  sll          s7, s9, s6
                  sll          a1, s4, s7
                  sltu         s3, s9, t3
                  ori          zero, s4, -1687
                  sra          a6, a4, t5
                  sltiu        t1, zero, -1766
                  sll          s4, t2, a3
                  xori         s10, t2, -1993
                  sra          s5, a3, s11
                  srli         s9, zero, 28
                  srai         tp, s2, 21
                  and          t6, zero, a1
                  or           s10, a5, a2
                  sltiu        a1, s5, 1925
                  xor          t2, s5, a6
                  xori         gp, s5, 1130
                  slli         s8, t0, 22
                  nop
                  addi         a0, t6, 699
                  lui          tp, 53149
                  sll          t3, s10, tp
                  srli         a7, s11, 19
                  add          t2, s7, s8
                  xori         s9, t6, 1573
                  srai         a0, s6, 16
                  sub          s1, s1, s5
                  ori          s10, gp, -1770
                  srai         t3, s3, 18
                  sub          s5, a6, s2
                  add          s6, a4, a6
                  or           s0, t4, t3
                  sltiu        gp, a3, 474
                  add          a5, t5, sp
                  srl          tp, a4, s1
                  sub          a0, a7, t5
                  addi         t4, t2, -965
                  or           t6, s1, a5
                  xori         sp, gp, -644
                  nop
                  srli         t2, s7, 1
                  slli         s7, s5, 3
                  srli         s7, a4, 1
                  srai         s5, t6, 6
                  sltu         s4, s1, t6
                  srai         s8, t5, 18
                  or           t1, tp, s9
                  sltiu        a1, a3, 794
                  addi         tp, t6, -215
                  slli         tp, s10, 2
                  addi         s1, s11, 871
                  sub          zero, a6, t2
                  slti         a6, ra, 581
                  li           a5, 0xe913bb45 #start riscv_int_numeric_corner_stream_16
                  li           s0, 0x5eb66ce4
                  li           s7, 0x0
                  li           tp, 0x80000000
                  li           a3, 0x2bf5ca27
                  li           s1, 0x0
                  li           s3, 0xffffffff
                  li           gp, 0x0
                  li           t0, 0x80000000
                  li           a6, 0x80000000
                  auipc        s3, 632430
                  sub          s1, s1, t0
                  auipc        s3, 573958
                  nop
                  add          t0, a6, s1
                  sub          a5, s1, a3
                  auipc        gp, 866733
                  auipc        tp, 189079
                  add          t0, a5, tp
                  add          gp, a3, a5
                  addi         s0, s7, -1939
                  sub          a5, s7, a3
                  nop
                  add          s7, a5, gp
                  lui          tp, 951036
                  nop
                  addi         a5, a5, -1409
                  lui          s7, 799919
                  nop #end riscv_int_numeric_corner_stream_16
                  srl          a7, s9, t6
                  and          gp, zero, a2
                  or           a4, s5, s1
                  slt          zero, tp, a1
                  sub          zero, t5, s6
                  lui          t5, 485216
                  lui          s1, 795329
                  xori         a6, a1, -1010
                  xor          s7, t1, s4
                  sll          a5, t3, s8
                  sll          t1, s5, a2
                  ori          sp, s4, -510
                  sra          s6, sp, zero
                  sll          t5, s4, gp
                  sltiu        tp, s1, -621
                  auipc        s10, 1009725
                  sra          s7, a6, s8
                  slti         s10, s10, 1555
                  sltu         t3, s7, t3
                  and          s5, a5, a3
                  addi         sp, a3, 777
                  sltu         a3, a7, ra
                  nop
                  slli         s4, gp, 3
                  slli         a1, t6, 15
                  sub          a0, a4, a2
                  sltiu        t0, zero, 2003
                  xor          t0, t0, s4
                  add          t5, s3, t3
                  slli         s9, t4, 1
                  slli         a2, sp, 9
                  auipc        zero, 996400
                  srai         s5, a4, 17
                  sltu         tp, s4, s3
                  lui          t6, 789899
                  sltu         s1, t0, s8
                  sltu         a4, s2, a4
                  sltiu        a2, s10, -1978
                  and          a3, a4, s2
                  srl          s0, t2, s4
                  add          a7, s2, zero
                  slli         a3, t4, 9
                  add          a2, s5, a7
                  or           s8, s10, t5
                  srai         gp, a2, 18
                  xori         t4, s4, 948
                  slt          s8, s0, t3
                  lui          t2, 825856
                  andi         t3, t0, 1907
                  xor          a7, s0, t2
                  andi         t1, a3, 1475
                  sra          s1, t0, a6
                  and          sp, s6, s10
                  sub          a7, zero, s5
                  auipc        t1, 115140
                  sltu         a0, t4, s9
                  sltiu        s5, t3, -882
                  addi         a7, a1, 1086
                  srl          s8, t0, t6
                  sub          a7, s1, s4
                  sub          s9, a2, gp
                  slti         sp, a6, -1449
                  srl          sp, s8, s8
                  slli         s1, t3, 12
                  slt          gp, ra, t5
                  or           t3, s0, s1
                  auipc        s5, 880503
                  sltu         a0, sp, s11
                  srai         t1, s8, 23
                  addi         s4, t0, -1594
                  nop
                  add          t6, t1, ra
                  srli         a3, s11, 6
                  and          a4, a0, a3
                  ori          s8, s7, -835
                  andi         zero, a0, -984
                  srai         t5, s1, 25
                  nop
                  nop
                  and          a3, t5, t5
                  andi         s5, a2, 577
                  lui          t3, 222012
                  slti         t3, t2, -437
                  addi         s6, a1, -649
                  addi         t4, a4, -1387
                  sltu         s3, s4, t5
                  andi         s6, s3, 53
                  and          t6, s3, t2
                  srl          s4, a5, s10
                  sub          s9, s2, ra
                  xor          a2, tp, gp
                  addi         a3, t6, -1739
                  or           t2, a1, s2
                  xori         s3, a0, -850
                  auipc        t1, 173151
                  srai         s5, s11, 12
                  or           s1, a5, s4
                  sll          a5, a0, a6
                  xor          a3, t6, s1
                  srl          t6, s5, a2
                  addi         s5, s3, 8
                  or           t2, t3, a4
                  ori          t0, t2, -1444
                  auipc        sp, 253949
                  sltu         s3, a2, ra
                  sub          a1, a4, a0
                  xor          a0, sp, a5
                  sltu         t0, s4, s6
                  xori         s10, sp, 607
                  lui          t6, 150931
                  add          t5, t5, t0
                  or           t0, s8, a0
                  srl          a0, a2, tp
                  sltiu        s10, s2, 1088
                  slti         s10, gp, 462
                  sltu         sp, a3, s2
                  nop
                  sltu         a1, t3, s2
                  and          a2, tp, t5
                  slti         s4, t4, -823
                  sra          a3, gp, t3
                  sll          gp, s7, t5
                  nop
                  sll          tp, s4, a3
                  add          s10, s8, ra
                  andi         sp, a3, -572
                  slt          t2, a3, s4
                  lui          s5, 1028345
                  slli         s10, t5, 2
                  sltu         t6, t3, s9
                  srai         a2, a6, 14
                  ori          a1, t1, 954
                  xor          a6, t6, a0
                  and          a3, a7, t0
                  xor          s6, t2, t6
                  ori          t1, tp, 577
                  sltiu        s10, s7, -27
                  add          a4, t4, gp
                  sll          t0, a2, t6
                  andi         t6, a5, -246
                  sltiu        a2, s9, -888
                  sra          tp, s4, a1
                  addi         a1, s9, 547
                  sub          s5, a6, a6
                  xor          s0, s11, a2
                  or           t6, a6, t5
                  ori          t4, s1, -11
                  nop
                  or           s4, a3, t2
                  slti         s9, tp, 884
                  addi         s6, t3, -1440
                  ori          a2, s11, -423
                  sub          s0, a1, s9
                  slli         s9, zero, 15
                  ori          s7, ra, 1942
                  lui          t1, 1040218
                  slti         a2, a5, 497
                  xori         a2, t0, -1640
                  andi         s5, zero, 1536
                  addi         t3, a7, 1859
                  lui          a6, 77868
                  srai         sp, s2, 5
                  sll          t6, t3, zero
                  add          s5, t1, t0
                  ori          s8, t4, 1562
                  srli         a0, t5, 17
                  xor          t1, t4, s3
                  ori          s8, a3, 1488
                  xor          t6, zero, sp
                  sub          s5, s2, t2
                  andi         s9, s2, 380
                  nop
                  andi         a1, t4, 1182
                  or           a7, a2, s6
                  and          t6, a1, t6
                  srl          t0, t3, s7
                  xor          t2, a0, s8
                  sub          a3, tp, tp
                  ori          a0, s7, 402
                  xor          t4, a3, s1
                  slli         t6, s2, 20
                  ori          s1, s8, 574
                  xor          s7, s9, t4
                  lui          t2, 645528
                  and          s3, s2, a3
                  srl          t4, s10, s8
                  xor          a3, a4, tp
                  xor          a6, s4, s5
                  sltiu        a0, s4, -377
                  slt          a6, s7, s3
                  or           t6, a3, gp
                  add          s0, a5, t6
                  slt          t4, s4, ra
                  sltu         a1, a5, zero
                  xori         s5, t5, 1290
                  sltiu        a7, zero, 1718
                  sll          s3, s0, a5
                  lui          t5, 338058
                  andi         t4, s2, 835
                  sub          tp, t6, gp
                  xori         s9, gp, -288
                  xori         t3, a1, 436
                  ori          s10, a3, 1043
                  and          gp, s9, t3
                  slli         a4, gp, 2
                  or           sp, s8, zero
                  srai         sp, ra, 3
                  ori          sp, t0, 875
                  sltu         a7, a0, a4
                  sltu         gp, t2, t0
                  sra          s6, s0, s5
                  add          a1, gp, a7
                  slti         a6, a0, 913
                  or           s9, s10, a7
                  slt          a0, a4, ra
                  slti         t6, s11, -1003
                  sra          a6, a2, s8
                  or           sp, a2, s10
                  srl          a1, t4, ra
                  slli         s1, t3, 16
                  sra          s3, a4, s8
                  srli         a4, a2, 18
                  sra          s6, s5, s4
                  nop
                  ori          a3, t0, 83
                  sltiu        sp, s5, -22
                  sll          tp, s6, gp
                  xor          a4, s4, s4
                  srai         zero, s4, 26
                  xori         s3, gp, 586
                  slti         tp, t4, 637
                  lui          t5, 393878
                  sltiu        zero, s5, 160
                  nop
                  xor          a2, t3, a1
                  nop
                  slti         s7, a4, -487
                  sra          s8, a5, s10
                  and          t1, s7, s4
                  slti         a7, t2, 1531
                  nop
                  slti         s5, s8, -1786
                  andi         a7, s11, -1314
                  xori         sp, s1, -1805
                  xori         gp, a1, 1553
                  auipc        t1, 318894
                  sub          a5, s2, a2
                  or           t2, a4, s0
                  srli         s8, tp, 15
                  xori         s5, s3, -474
                  sltiu        a3, a0, -1693
                  lui          s1, 728763
                  slli         sp, a4, 4
                  auipc        s0, 417289
                  and          a3, s2, t2
                  lui          s7, 107569
                  sra          s0, t3, a0
                  add          t3, s9, a1
                  addi         t2, t4, -1850
                  auipc        s4, 514912
                  add          a5, a1, a1
                  srl          s5, t4, zero
                  andi         s9, t3, -1150
                  sltu         s0, s3, s7
                  sub          s1, t0, gp
                  add          a2, ra, gp
                  lui          sp, 116938
                  sltu         t5, t2, zero
                  andi         a2, t4, 114
                  add          s3, a2, s8
                  slli         s0, a0, 2
                  slt          tp, a3, s1
                  slti         gp, sp, -173
                  sra          a0, s11, t3
                  auipc        a0, 707230
                  xor          a4, s2, s0
                  srai         t6, a6, 10
                  slti         t6, s7, 399
                  ori          a1, sp, -1017
                  and          t1, s0, s1
                  slti         s3, s6, -1362
                  srli         a1, t1, 22
                  srai         t6, a1, 22
                  sll          s6, sp, zero
                  xor          a4, zero, zero
                  lui          a3, 50498
                  xor          tp, t4, tp
                  sltiu        gp, t0, -1546
                  lui          tp, 747453
                  sltu         t0, s4, tp
                  slli         a6, a6, 13
                  lui          a1, 129036
                  add          s1, zero, s7
                  srl          tp, a3, s4
                  nop
                  srli         sp, s3, 22
                  xori         s10, a4, -564
                  sll          t4, t3, s11
                  srai         t2, ra, 30
                  ori          s10, t3, 901
                  xor          t3, s9, s4
                  add          a3, a6, s6
                  slt          a0, a3, s10
                  srli         a7, t5, 19
                  and          s7, s0, a4
                  slti         s7, s1, 181
                  sra          tp, s6, t4
                  and          a2, s0, a6
                  srai         a4, s2, 14
                  sub          t1, t1, s0
                  sra          a4, a7, s4
                  srl          t6, t2, s5
                  sltu         gp, ra, a6
                  sra          s3, a4, s11
                  sltu         tp, a7, s5
                  srl          gp, s6, s4
                  ori          a0, a7, -1331
                  addi         gp, s0, -1787
                  xor          s5, a7, s3
                  nop
                  nop
                  add          a7, s4, s0
                  auipc        sp, 518119
                  srli         s0, a7, 25
                  xori         s9, a7, 358
                  nop
                  xori         t3, s4, 1289
                  addi         zero, ra, 745
                  sltu         a2, a0, t6
                  srai         s8, t4, 26
                  and          a1, s10, zero
                  srl          s10, t6, t1
                  ori          sp, s11, 516
                  andi         t5, t5, 588
                  srai         t6, s11, 15
                  sltiu        a2, t5, 60
                  sltu         t1, sp, t2
                  slti         a3, s3, 245
                  sub          s6, t0, s2
                  xor          s9, s1, s2
                  lui          t1, 897912
                  nop
                  xori         t2, s10, -1430
                  sltiu        a7, s8, -1955
                  or           a0, s5, a2
                  sltu         a4, s11, s10
                  slti         sp, t6, -1224
                  slt          s1, t3, s7
                  ori          t6, tp, -1775
                  sll          t5, t6, sp
                  add          t6, zero, a1
                  sra          s8, t1, t6
                  srai         s9, s4, 0
                  srai         a4, gp, 13
                  sltiu        a5, s10, -715
                  sltu         t0, sp, s5
                  sll          s6, s3, a1
                  xori         a4, s2, 1440
                  andi         s0, t0, 407
                  andi         tp, a1, 65
                  srai         a3, s6, 23
                  ori          sp, t3, -1291
                  xori         a4, s10, -455
                  slt          a1, t0, tp
                  srli         t2, a7, 4
                  add          a3, s7, a7
                  and          s1, s4, s5
                  and          s10, t6, t6
                  xor          a2, t1, s7
                  andi         t2, a1, 1985
                  sub          s8, a5, t2
                  sub          t5, zero, t4
                  srai         a1, s6, 4
                  ori          t0, zero, -653
                  lui          t1, 692406
                  sltiu        gp, s5, 928
                  add          t5, t2, a4
                  slt          t3, t2, a3
                  slti         s6, s5, -1158
                  xori         s3, a2, -1237
                  sra          a7, gp, ra
                  sltu         tp, t2, s8
                  sll          t6, s4, zero
                  sltiu        a5, a6, -773
                  sltu         a3, s2, t2
                  addi         gp, s0, 1454
                  slti         s9, s9, 1081
                  lui          a2, 391487
                  slti         a5, s9, -1417
                  and          sp, t0, ra
                  lui          t6, 384757
                  lui          s6, 662681
                  xor          sp, s2, s6
                  sll          t3, s10, s6
                  lui          s6, 787076
                  addi         t1, a2, -1255
                  lui          t1, 865766
                  and          t2, s6, t4
                  sub          t0, a4, s2
                  addi         t5, t6, 1709
                  or           s5, s8, a4
                  xor          a1, s11, t2
                  auipc        s10, 630392
                  auipc        t1, 689970
                  and          s10, zero, s10
                  nop
                  slti         a5, s7, -1515
                  or           s10, s7, a6
                  xor          a4, t2, a7
                  xori         a7, t1, -1525
                  ori          t0, t3, 846
                  sub          t5, s9, s6
                  xor          sp, t4, t4
                  nop
                  andi         a0, t1, 427
                  nop
                  sltiu        a1, t4, -491
                  and          a1, s10, zero
                  addi         s0, s10, -749
                  ori          s7, s0, -1809
                  sll          s7, a5, a3
                  srli         s9, s3, 10
                  and          t0, t3, t3
                  xori         s8, tp, -1999
                  sltu         a0, gp, a5
                  ori          s6, a3, -1068
                  srli         s6, a7, 17
                  srai         zero, s10, 15
                  srl          sp, a5, s6
                  srl          t4, tp, a3
                  nop
                  auipc        a0, 455564
                  andi         s10, s8, 1155
                  sltiu        a1, t3, 1374
                  srl          a3, t5, sp
                  andi         a0, s5, 227
                  lui          s7, 949469
                  sll          a2, t3, s7
                  srai         s10, s9, 3
                  nop
                  sltiu        t4, gp, -538
                  or           s7, t1, a6
                  slt          s1, s4, s7
                  add          s6, a2, a0
                  sltu         a2, a2, t5
                  slli         s10, s3, 23
                  add          zero, s10, s9
                  addi         tp, s10, -1231
                  srl          t3, t0, s5
                  or           t1, gp, t5
                  auipc        gp, 838026
                  and          zero, s4, a7
                  ori          s10, s0, -131
                  sll          a1, s1, a5
                  srli         a5, s1, 23
                  auipc        s6, 460987
                  ori          s8, s1, 632
                  xor          s6, t4, a6
                  xori         s1, t0, 467
                  or           zero, s3, t4
                  auipc        a5, 726780
                  sra          a2, s1, a3
                  sub          t5, a2, t0
                  slt          s9, zero, s1
                  sub          s6, s5, s8
                  slli         t3, s8, 5
                  addi         a0, tp, 143
                  lui          gp, 88989
                  slti         gp, a0, -263
                  addi         s10, s11, -192
                  or           s6, a6, a7
                  ori          t6, sp, -137
                  slt          tp, a5, s6
                  xor          tp, a5, s2
                  add          s5, t0, s10
                  xor          a6, a5, ra
                  sub          tp, s5, s10
                  sub          a2, t0, sp
                  sub          sp, t6, t6
                  sltiu        a3, t0, -1512
                  slti         a0, s10, 1851
                  xor          s7, a5, a2
                  add          sp, a3, s0
                  andi         a6, a5, 1424
                  slt          a2, s3, t1
                  nop
                  xori         s0, sp, -1645
                  srli         a1, tp, 31
                  xori         t2, sp, -1304
                  srli         s7, t6, 26
                  ori          s9, s6, -1001
                  srli         t6, t5, 9
                  sll          gp, a6, gp
                  slti         a2, s4, 1070
                  add          t4, a2, s1
                  lui          a7, 598791
                  xori         a5, zero, -114
                  slli         s5, s4, 11
                  nop
                  add          s8, s3, s7
                  andi         t1, s11, 1797
                  srai         s8, s9, 26
                  sra          s7, a4, a7
                  sltiu        a7, t0, 1104
                  sltu         s8, t2, s0
                  slt          s0, zero, a7
                  sub          a2, t1, t2
                  nop
                  nop
                  slti         s6, s5, -1283
                  srli         a3, sp, 2
                  srli         t3, s2, 12
                  lui          s9, 119830
                  addi         t0, a0, 1424
                  sltiu        t1, a5, 1990
                  lui          sp, 100662
                  addi         a4, s1, -278
                  sltu         sp, s10, a4
                  srli         a5, sp, 1
                  lui          s3, 824474
                  add          a2, s6, s10
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           a7, 0xffffffff
                  li           s10, 0x80000000
                  li           a2, 0x80000000
                  li           s7, 0x80000000
                  li           t0, 0x251ab81e
                  li           sp, 0x80000000
                  li           tp, 0xffffffff
                  li           t4, 0x8b34168a
                  li           s9, 0x0
                  sub          a7, t0, s7
                  auipc        t4, 397995
                  nop
                  addi         s9, t5, -379
                  auipc        tp, 702908
                  lui          s10, 994699
                  add          a7, a2, t5
                  lui          s10, 948240
                  add          tp, a7, a7
                  sub          t0, sp, t5
                  auipc        t0, 769184
                  add          t4, tp, t0
                  addi         t4, sp, -571
                  add          s9, t0, sp
                  nop
                  add          tp, a7, s9
                  nop
                  addi         s7, sp, 154
                  addi         tp, s10, -1600
                  nop
                  nop
                  sub          t0, t0, t4
                  add          tp, t4, tp
                  nop
                  addi         t0, a2, 1805
                  auipc        sp, 609177 #end riscv_int_numeric_corner_stream_8
                  xori         gp, zero, -1327
                  auipc        s6, 202691
                  lui          t1, 217328
                  srli         s6, s2, 23
                  nop
                  srai         s0, t1, 8
                  sltu         s8, s1, s2
                  andi         a3, s8, 465
                  slt          s5, t2, a1
                  or           s10, a1, s0
                  sra          s9, s6, ra
                  and          s8, s8, sp
                  or           a1, a7, s11
                  auipc        a1, 903256
                  slt          sp, t6, s9
                  sltu         s3, zero, t0
                  sll          t5, s4, s11
                  srai         s3, t4, 16
                  sltiu        tp, s0, 561
                  sltiu        s1, t1, 747
                  xor          s9, t1, s9
                  add          t6, a4, s10
                  and          s9, s11, s10
                  slti         a0, t0, 278
                  slli         sp, s10, 5
                  and          s9, zero, t1
                  slti         a5, a5, -900
                  sra          s3, a2, t4
                  xor          a6, s2, a3
                  sll          s5, s3, s11
                  srl          s1, sp, a5
                  xori         s5, a4, 163
                  sltiu        s3, s4, -1415
                  sltu         t5, a3, a3
                  sll          t2, t5, s3
                  sll          t0, a6, s5
                  sub          a1, t0, s6
                  srli         s9, s9, 22
                  sub          s0, a6, s3
                  and          gp, gp, a2
                  xor          a7, s6, t3
                  srli         s8, a0, 22
                  lui          tp, 717378
                  sll          s9, t3, s9
                  nop
                  srl          t1, tp, gp
                  nop
                  srai         t5, s1, 21
                  xori         t6, s8, 1697
                  srai         s0, s10, 10
                  andi         a6, s1, -425
                  slli         a0, s3, 28
                  srl          s1, s7, s7
                  and          a4, t4, a0
                  and          a2, s9, t0
                  or           s7, a7, a5
                  add          s1, s1, s4
                  srl          t4, s3, t1
                  nop
                  srl          a7, s3, tp
                  and          s6, a2, a6
                  srli         a1, s3, 4
                  andi         t5, s1, -68
                  slti         a6, tp, 461
                  xori         a7, a5, -1859
                  srai         s1, ra, 2
                  add          s6, zero, s4
                  andi         tp, tp, 888
                  slt          s5, s5, gp
                  xor          a4, a7, gp
                  and          s10, sp, s1
                  sltiu        s4, s4, 990
                  andi         t2, t3, -1732
                  sll          s9, s2, a3
                  nop
                  slti         t5, s6, -1549
                  srai         s1, s5, 28
                  srai         a5, s2, 27
                  add          s8, s11, s8
                  sltu         gp, t0, a1
                  andi         a1, s9, 1692
                  srl          t5, a1, a7
                  sra          s8, a7, s4
                  sll          s6, s9, s2
                  srli         a6, t5, 26
                  sltu         a6, sp, t3
                  andi         s6, tp, 976
                  srli         s4, s5, 22
                  and          s3, t6, s1
                  add          a0, a4, zero
                  lui          sp, 345516
                  andi         s4, a1, -979
                  addi         a3, t6, -1632
                  sll          t4, a0, s0
                  add          s3, a0, a1
                  slt          s7, s0, a0
                  srli         s9, a1, 23
                  andi         a1, a4, -1032
                  sra          a1, a4, a2
                  sra          a1, s10, a0
                  sltiu        s5, a2, 130
                  srai         t3, s7, 0
                  sltiu        s8, t6, -30
                  slt          s3, t1, s1
                  and          t0, s1, t4
                  slti         gp, t2, 1597
                  sll          s6, a2, a2
                  sltu         s5, gp, a6
                  or           s1, t1, sp
                  srai         a3, s4, 9
                  and          s9, a4, t1
                  nop
                  andi         s10, s3, -1440
                  or           s3, zero, t1
                  sltu         t6, t2, a5
                  andi         a0, ra, 1818
                  and          s8, t4, ra
                  srai         a1, a0, 28
                  sub          gp, a2, s0
                  srl          t6, s11, t0
                  slli         gp, s0, 8
                  and          a1, t0, sp
                  nop
                  srai         a6, s8, 27
                  sra          s10, s2, s8
                  sub          sp, t4, a2
                  srl          a6, a5, s2
                  sra          s6, ra, t4
                  sltu         t4, tp, a7
                  ori          s10, t0, 1360
                  or           a6, t2, s1
                  nop
                  auipc        t3, 73220
                  sub          zero, s8, s1
                  slt          a0, sp, a5
                  slti         t6, tp, -1132
                  addi         a7, s11, 1317
                  slt          a5, t2, zero
                  sltu         s0, sp, a7
                  addi         s0, t1, -224
                  and          t2, ra, s1
                  sra          a6, a4, s1
                  nop
                  xor          s1, a4, a4
                  xori         t1, s2, 289
                  srai         gp, a6, 17
                  slti         a1, a2, -585
                  sra          s8, a3, t4
                  srai         s1, a6, 14
                  add          s1, s1, gp
                  andi         zero, t1, 1416
                  or           s3, s1, s1
                  srl          a1, t0, t4
                  andi         a7, a1, -196
                  nop
                  slti         s7, t0, 1245
                  ori          t4, s6, -388
                  slt          s5, s7, t3
                  sub          t0, t5, a0
                  auipc        t5, 602014
                  or           t6, s1, t5
                  slt          a7, s10, t4
                  add          s1, a5, zero
                  andi         t3, s1, 734
                  slt          a6, t2, a6
                  sub          s9, s8, a2
                  slli         t2, zero, 10
                  andi         t6, s3, -1236
                  or           gp, a7, s8
                  sra          sp, s4, s9
                  xori         s1, t2, 1691
                  slti         s9, s5, -221
                  lui          s8, 593215
                  slt          zero, t3, t0
                  andi         a4, a5, 1237
                  slti         s3, s10, -1289
                  srl          t3, s1, s0
                  slt          tp, s3, t6
                  nop
                  srli         a6, s0, 8
                  slti         s0, tp, -1622
                  srli         s10, t0, 11
                  sra          s1, s1, a5
                  addi         a3, a5, -1867
                  srl          a3, a1, s1
                  xori         s1, a0, -1224
                  slli         t1, s9, 6
                  xori         a4, ra, -1409
                  sltu         s10, s2, s1
                  srli         a4, s9, 19
                  sltu         s0, t4, a0
                  slti         s1, s1, -1600
                  addi         a1, t3, 1509
                  srai         a0, t1, 4
                  xori         s1, s8, 769
                  srai         t3, t6, 19
                  addi         s8, t5, 897
                  ori          a4, tp, 1147
                  nop
                  addi         t1, s9, 191
                  lui          a3, 582699
                  slt          a3, a1, t3
                  lui          t1, 177185
                  srli         t0, tp, 0
                  xori         s1, t0, -730
                  sltu         t5, s5, s1
                  sub          a1, s5, tp
                  ori          zero, zero, -397
                  add          t4, t4, t1
                  slti         s7, t5, -1364
                  sltu         s6, t5, s4
                  add          s10, s10, s5
                  or           a6, t4, a7
                  auipc        tp, 897395
                  sll          gp, a7, s3
                  add          gp, ra, a1
                  sub          a7, sp, t0
                  srli         a1, t4, 12
                  slt          sp, a1, t2
                  auipc        s1, 86174
                  andi         t5, t6, 167
                  slt          t3, s2, s11
                  nop
                  or           sp, s10, t0
                  and          s0, s1, a1
                  slli         a4, s5, 16
                  xor          a3, s3, s4
                  srli         a7, a7, 2
                  sra          t3, s6, tp
                  srli         s8, t3, 28
                  sltu         t5, a4, t4
                  slt          zero, t0, s2
                  slti         t6, a7, 1711
                  andi         tp, t4, -1852
                  add          a6, t5, s8
                  xor          a0, t3, a3
                  slli         a6, s4, 29
                  xor          t3, a4, s8
                  ori          a1, s2, -775
                  sltu         s7, tp, s8
                  addi         t6, t0, -1218
                  add          t5, a3, s4
                  srl          s4, s8, t1
                  srl          t6, t4, zero
                  xor          sp, s1, s3
                  add          a6, s7, s3
                  andi         s7, a7, -250
                  lui          a2, 370860
                  sub          a3, t5, ra
                  lui          a5, 1011183
                  sub          s0, a5, a2
                  auipc        a1, 771310
                  xori         zero, t1, 1708
                  xori         s9, s7, 1703
                  or           s0, a5, zero
                  xori         s1, a3, 1060
                  add          a3, a6, s3
                  ori          a1, a3, 46
                  auipc        a4, 502378
                  and          a5, s9, a6
                  slli         s3, t2, 17
                  addi         t1, a6, -1300
                  andi         t1, s7, -944
                  ori          a1, a6, 1959
                  sub          s3, zero, a3
                  srai         sp, s2, 23
                  add          t2, sp, a5
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           sp, 0x0
                  li           s7, 0xffffffff
                  li           t5, 0x80000000
                  li           a0, 0x6b3fac2d
                  li           t1, 0x0
                  li           s8, 0x80000000
                  li           s4, 0xffffffff
                  li           s3, 0x80000000
                  li           a3, 0x80000000
                  auipc        s3, 1032722
                  lui          s7, 1028223
                  nop
                  nop
                  addi         s8, s3, -1821
                  auipc        t5, 479830
                  lui          t1, 679545
                  sub          sp, a3, s4
                  nop
                  add          s8, t1, t3
                  lui          a3, 316683
                  lui          t5, 467221
                  addi         t1, a3, 466
                  sub          s3, s7, s7
                  addi         t1, s7, 914
                  sub          sp, t1, s4
                  sub          s8, t5, t5
                  lui          t3, 179361 #end riscv_int_numeric_corner_stream_1
                  sltiu        s6, s6, -997
                  nop
                  slti         t0, tp, 1865
                  nop
                  sub          t3, s7, s3
                  addi         s7, s6, -1741
                  slli         t3, a1, 20
                  slli         sp, s10, 28
                  auipc        t6, 419852
                  sub          s4, s9, gp
                  addi         s5, t1, 1577
                  sltu         t0, t3, s11
                  srl          sp, s8, s4
                  slli         s1, s0, 2
                  ori          t1, ra, 1851
                  auipc        s6, 609274
                  slt          t2, tp, a6
                  sub          a2, t5, s11
                  slti         s3, t3, 1708
                  slt          t0, a5, tp
                  sra          t2, t1, a0
                  nop
                  sra          zero, s9, s6
                  sub          s8, a3, zero
                  slti         s3, s1, 1175
                  srli         sp, a0, 14
                  slli         a1, a0, 17
                  slt          t6, s3, a3
                  ori          a3, t5, 1711
                  sltiu        s5, sp, -1909
                  or           s10, a0, a4
                  slli         t3, a3, 18
                  sra          a2, s10, t2
                  slt          t0, s5, t6
                  ori          tp, a3, 1960
                  lui          tp, 799733
                  slt          s3, t3, sp
                  and          a4, a0, zero
                  sltiu        t1, t4, -484
                  slli         t0, a2, 15
                  lui          zero, 497870
                  slt          a6, t1, s2
                  sltiu        t5, gp, 854
                  srli         t4, t4, 30
                  sll          t3, gp, t0
                  addi         a0, t1, -585
                  sub          t2, s0, a4
                  auipc        s4, 47099
                  srli         a1, t0, 18
                  slti         a2, ra, -1762
                  slli         tp, s7, 26
                  slti         s1, s9, 1629
                  slli         s8, s1, 3
                  or           a4, s8, a3
                  srli         a5, t0, 31
                  slti         t3, s6, 173
                  xori         s9, a3, 1166
                  sltu         s1, t6, s2
                  xori         t3, a2, 242
                  xori         s5, s0, -198
                  and          a7, s9, gp
                  xor          s3, s11, a6
                  slt          t4, sp, s8
                  sltiu        tp, s10, 26
                  and          a5, s8, s1
                  add          s0, a7, s10
                  add          s0, t5, a6
                  sltu         t0, a7, zero
                  sltu         sp, s4, a1
                  andi         a7, s0, -1543
                  slti         s10, s9, 803
                  srl          t4, gp, s11
                  or           a0, t0, a3
                  slt          t4, s4, s8
                  lui          s3, 345390
                  srli         s6, s0, 16
                  slti         s9, s7, -1343
                  sra          a5, gp, s0
                  lui          a7, 447754
                  add          s7, s2, s11
                  xor          t6, s9, s4
                  srl          sp, s2, t1
                  or           sp, s2, s4
                  srl          s8, s10, s8
                  nop
                  addi         a5, gp, 1179
                  or           s9, ra, t6
                  ori          a1, s9, 1023
                  xor          t1, t3, s10
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           tp, 0x8258c50f
                  li           s8, 0xa8f4ce41
                  li           s10, 0x39048cfd
                  li           s4, 0x0
                  li           s7, 0xffffffff
                  li           a7, 0x14d51c56
                  li           t5, 0x80000000
                  li           s9, 0x80000000
                  li           a2, 0xf671a967
                  addi         t5, s10, 1271
                  addi         tp, t5, -599
                  lui          s8, 21741
                  addi         s10, a7, -1747
                  lui          a7, 969654
                  lui          s10, 145851
                  addi         a7, s10, -1099
                  auipc        a2, 94751
                  lui          s7, 28630
                  auipc        a2, 245465
                  sub          s9, s6, tp
                  auipc        s8, 549147
                  lui          a2, 550910
                  sub          a7, s7, s10
                  lui          s4, 208416
                  auipc        s4, 329273
                  sub          s10, s7, s8
                  add          s9, s7, s6
                  nop
                  lui          a2, 682021
                  nop
                  add          s9, s10, tp
                  sub          s7, a2, s6
                  nop
                  sub          s10, s10, s7
                  auipc        tp, 851939
                  nop
                  auipc        s9, 144151 #end riscv_int_numeric_corner_stream_13
                  slti         t5, s8, -715
                  auipc        s5, 478654
                  srai         zero, a7, 9
                  or           tp, gp, s3
                  addi         tp, a1, 857
                  and          t2, t0, s4
                  xori         a0, sp, -358
                  xori         a1, a0, 1486
                  addi         t5, t0, 741
                  sra          s6, ra, s10
                  addi         t2, s6, 1076
                  addi         t5, s1, -1738
                  slt          a0, s0, a0
                  or           t2, s4, t5
                  sra          s8, s9, t6
                  xori         a5, s9, 1937
                  ori          zero, t6, 964
                  andi         s4, s4, 1664
                  srl          t5, s0, s9
                  sltu         zero, tp, s2
                  or           sp, s0, gp
                  addi         a2, s10, 996
                  addi         s6, a3, 946
                  nop
                  sll          a6, t5, t4
                  and          s10, sp, a7
                  slt          s8, s0, sp
                  ori          a2, a2, -1478
                  nop
                  or           t3, a4, a6
                  sltiu        s10, ra, 1597
                  srl          a5, zero, s4
                  sub          t5, sp, a4
                  and          t4, a7, t3
                  auipc        t2, 542381
                  lui          t4, 480110
                  slli         t3, t2, 31
                  sltu         t6, s1, a2
                  addi         s9, t2, -195
                  sltiu        s9, s7, -1939
                  auipc        t0, 781273
                  or           s1, s10, t5
                  addi         a6, s1, 1319
                  andi         s8, t3, -1624
                  slli         tp, s8, 30
                  xor          s6, a6, s11
                  srli         sp, sp, 17
                  ori          a0, a0, 2004
                  slli         a3, a4, 22
                  add          t6, s7, zero
                  ori          a3, a5, 145
                  ori          t1, a6, -1051
                  auipc        zero, 598611
                  srai         s5, s6, 16
                  sub          t2, s5, sp
                  srl          a2, s5, tp
                  lui          s4, 949062
                  sub          s6, t5, gp
                  srl          s5, a2, s8
                  sra          s1, t4, t3
                  slti         s4, t5, 1769
                  sltiu        s8, a6, -1543
                  auipc        t6, 520832
                  add          s3, a3, s3
                  and          t6, s11, ra
                  sll          t6, ra, sp
                  addi         s10, a0, 1895
                  and          t4, s5, a0
                  slti         t4, t1, -703
                  srli         s5, t0, 20
                  addi         sp, a4, 1765
                  sltiu        s1, tp, -1315
                  sub          s3, t0, a0
                  and          s3, a1, s10
                  sll          t5, a7, a1
                  xori         a3, s0, 1572
                  sra          t0, s6, a1
                  sll          a3, a0, a2
                  slt          s10, s7, s5
                  sub          a5, t3, a6
                  sltu         t6, gp, a1
                  andi         t2, s10, -968
                  slt          t4, s8, s8
                  and          s8, s9, t4
                  sltu         a4, t6, a6
                  srli         t4, t5, 12
                  sra          t2, s3, t4
                  and          s0, s5, t4
                  sltiu        a7, s8, -1945
                  slli         t4, tp, 28
                  ori          sp, s4, -157
                  xor          s5, t3, a2
                  slli         sp, s10, 7
                  srli         t3, s2, 30
                  sll          t1, s2, zero
                  slli         s4, s5, 24
                  sltu         s6, t4, t0
                  slt          s5, s3, s8
                  srl          sp, s7, s5
                  auipc        s7, 153065
                  sltiu        a1, a7, 1699
                  sll          t2, zero, s3
                  addi         gp, s1, -1363
                  auipc        s6, 1027161
                  sub          t0, a5, s6
                  lui          t4, 171993
                  srli         s6, s9, 0
                  or           s7, s6, tp
                  auipc        s7, 974367
                  lui          t0, 398839
                  addi         gp, t6, 780
                  auipc        t6, 775223
                  srli         a0, s1, 20
                  andi         s8, s5, -783
                  xor          t6, a7, s8
                  srl          s3, t1, s1
                  slli         a1, a7, 11
                  lui          s8, 862048
                  slli         s4, tp, 12
                  srl          s4, a7, sp
                  sll          t1, s4, s7
                  srli         a2, a2, 28
                  or           a2, ra, a4
                  srl          a3, t6, a5
                  ori          s0, a6, 443
                  xor          a5, tp, t0
                  slti         s4, a2, 510
                  srl          s1, t1, t4
                  auipc        s4, 874146
                  slt          s1, s1, s10
                  srl          s6, s10, t4
                  andi         a6, s3, 488
                  addi         s10, t2, -719
                  srai         t5, s3, 31
                  sub          tp, s9, a1
                  sltu         s1, s8, t2
                  sra          a4, s10, s10
                  andi         t0, t5, -247
                  slti         a2, t0, -428
                  sltu         s6, t3, sp
                  sra          s0, s4, tp
                  nop
                  nop
                  slti         s6, a6, -1153
                  add          a4, t5, s7
                  sltu         s6, s4, t4
                  slt          gp, zero, t5
                  sltu         s6, t1, zero
                  addi         s8, a5, -208
                  slli         s7, a6, 30
                  sltu         s3, zero, t0
                  ori          s10, s4, -1848
                  xor          s7, s7, t1
                  srli         sp, t6, 22
                  andi         t1, s8, -1664
                  sub          gp, a5, s10
                  or           a0, sp, tp
                  andi         s8, zero, 1939
                  sltu         t0, t4, s11
                  ori          s0, s11, 1199
                  lui          a0, 38847
                  lui          t5, 859829
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           t6, 0x727ba273
                  li           s6, 0xffffffff
                  li           t5, 0x80000000
                  li           t2, 0x0
                  li           a0, 0x0
                  li           s4, 0xf2ba8aee
                  li           a6, 0x0
                  li           s1, 0x0
                  li           t1, 0xa3e3a156
                  nop
                  addi         a7, t1, 1705
                  auipc        t5, 74187
                  nop
                  add          s4, t1, t6
                  nop
                  lui          a6, 156307
                  add          a0, t6, s4
                  add          a7, t6, a6
                  auipc        t6, 299538
                  auipc        s1, 646555
                  add          a0, t6, s4
                  addi         s1, a0, -1873
                  add          t5, t5, t6
                  auipc        a7, 549038
                  auipc        a0, 972513
                  addi         t5, t2, -744
                  add          t6, t6, a6
                  sub          t2, t2, t1
                  sub          s4, s6, t5
                  add          a7, t5, t6
                  sub          a6, a7, s6
                  sub          a0, s1, s1
                  add          a7, a0, t6
                  nop
                  addi         a7, s6, 1764
                  lui          t1, 818022
                  auipc        t6, 936045
                  lui          s1, 1039656 #end riscv_int_numeric_corner_stream_11
                  sll          t2, t5, t5
                  sub          t1, a5, s11
                  addi         a0, s4, -267
                  auipc        a7, 349205
                  addi         s0, s10, -648
                  or           t6, s10, s6
                  slli         s6, t4, 24
                  xor          t1, a7, t4
                  addi         a4, t6, -415
                  srli         t6, a1, 0
                  srli         s6, s2, 13
                  auipc        s1, 613328
                  add          s9, t0, s0
                  srl          s9, s5, sp
                  slli         t3, a7, 6
                  andi         t1, s4, 762
                  xori         t1, a5, -553
                  slli         a6, gp, 24
                  srai         a0, t1, 2
                  ori          s0, a5, 2023
                  auipc        a2, 450154
                  lui          t5, 275632
                  sra          t0, t3, gp
                  sltu         a5, s10, s0
                  sub          a2, s2, s4
                  sltu         s10, tp, s11
                  ori          a1, s5, -1750
                  ori          a7, gp, 1122
                  and          s9, s5, s8
                  srl          t0, s2, s1
                  xor          t5, s10, s3
                  xori         zero, t6, 1373
                  or           t3, s3, s10
                  srai         t3, t2, 4
                  and          s9, t5, a4
                  slt          a3, s2, t3
                  or           s6, s0, ra
                  ori          a0, s1, -637
                  add          t4, s4, s4
                  srai         zero, s5, 15
                  srli         gp, s3, 15
                  slli         s9, t3, 9
                  add          t3, t4, a0
                  srli         tp, tp, 29
                  xori         s10, t0, 1855
                  srli         s10, a6, 2
                  srli         t3, s8, 21
                  and          s4, a6, s1
                  xori         t3, a7, -34
                  ori          a1, a7, 275
                  xori         s6, t1, -10
                  srli         s8, zero, 28
                  srli         zero, s10, 26
                  srai         s8, a1, 31
                  sll          t3, ra, a1
                  nop
                  xori         a1, a4, 1851
                  slt          a4, t0, ra
                  slli         t5, a5, 13
                  srai         a4, s5, 17
                  sra          s3, a4, s7
                  sltu         s9, s7, gp
                  srai         a3, s1, 26
                  srli         a2, a1, 24
                  srai         s0, a2, 31
                  srli         t3, tp, 2
                  srai         t5, s7, 2
                  sub          t0, s2, a4
                  sra          s0, s1, a4
                  or           s1, t5, ra
                  srai         sp, s1, 11
                  srl          a6, a5, s4
                  slli         a6, a1, 23
                  slli         a3, s7, 24
                  or           s8, s10, s8
                  sra          a4, s6, s5
                  sltiu        a7, t6, 1416
                  sltu         a4, t5, tp
                  xori         s9, a4, 1771
                  andi         s3, s9, -914
                  srai         s5, s1, 21
                  ori          tp, gp, -906
                  sll          t1, s5, a0
                  add          s7, s3, t2
                  ori          a0, s0, 554
                  slt          gp, t6, sp
                  nop
                  lui          s10, 911091
                  sra          t1, a4, a2
                  srl          tp, s5, t2
                  slt          s3, s5, s6
                  and          s7, a5, a7
                  xori         zero, t6, 839
                  slt          s7, ra, t3
                  sub          t6, t6, s10
                  and          a6, s10, s2
                  sltu         a1, s6, s4
                  nop
                  sub          a0, s10, s1
                  slli         gp, s4, 18
                  sll          s9, a1, a3
                  srl          s5, gp, a4
                  srli         t5, a7, 10
                  auipc        t3, 923926
                  xor          a7, t2, tp
                  or           s4, s9, s10
                  andi         zero, t5, 1819
                  sltu         s10, sp, a5
                  addi         a2, ra, -187
                  sltiu        s0, t3, 209
                  sub          s9, a3, gp
                  sltiu        t5, t4, -1901
                  sltiu        s5, a5, 1040
                  srli         s8, a0, 30
                  auipc        tp, 185889
                  srai         s7, s8, 23
                  andi         s9, a4, 1493
                  slli         a6, s10, 9
                  xori         s5, s5, 486
                  sll          sp, a7, t2
                  slli         s4, a5, 22
                  nop
                  or           s5, t4, s2
                  add          t6, t2, sp
                  slli         s0, ra, 28
                  ori          s7, t3, -2003
                  slti         a4, a4, -108
                  xor          t5, a4, s2
                  xori         t0, s3, 1918
                  xor          s3, t5, a5
                  addi         s6, s9, -665
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           a6, 0x80000000
                  li           s7, 0x526503ca
                  li           t1, 0x80000000
                  li           a1, 0xffffffff
                  li           a2, 0x80000000
                  li           tp, 0x5c5de5ea
                  li           s6, 0x80000000
                  li           t3, 0x80000000
                  li           a7, 0xffffffff
                  nop
                  addi         s4, t3, -1979
                  lui          a2, 977966
                  auipc        a6, 275962
                  nop
                  add          s6, a1, s7
                  lui          s4, 193215
                  nop
                  nop
                  sub          s7, t3, t1
                  auipc        tp, 839917
                  addi         t3, t3, -1134
                  add          t3, s6, s7
                  nop
                  nop
                  sub          s6, a2, s4
                  nop
                  nop
                  add          s4, s7, a6 #end riscv_int_numeric_corner_stream_9
                  and          t2, s11, s6
                  add          s1, s3, s3
                  addi         t5, s3, -102
                  or           t4, t3, s3
                  andi         s7, s9, 104
                  ori          a5, t6, -65
                  xor          a0, ra, a3
                  sltu         s10, gp, a6
                  xori         zero, s1, 1293
                  sltu         a4, s1, s8
                  srl          s8, ra, t5
                  auipc        t3, 573014
                  nop
                  auipc        s8, 854186
                  sub          t3, a3, tp
                  srl          a2, t6, t1
                  auipc        t6, 96204
                  slli         t3, s4, 31
                  slli         s3, t5, 13
                  sltu         s9, t5, a4
                  srli         s3, sp, 20
                  srli         a5, a3, 20
                  sub          s6, a7, a0
                  addi         s9, s2, 451
                  addi         a3, t1, 1498
                  and          a2, t4, zero
                  slt          a4, s2, a6
                  sltu         a2, s7, t4
                  add          a3, a1, t1
                  xori         s5, sp, 392
                  and          a1, t2, a0
                  sub          s6, s8, zero
                  sltiu        a3, a2, 495
                  sub          t4, a0, s11
                  sll          a3, s7, s0
                  sltu         gp, t3, zero
                  slt          a6, a7, t3
                  srli         a4, t5, 31
                  nop
                  andi         gp, ra, -1048
                  sra          t5, a5, s9
                  srli         s4, s3, 21
                  xor          t0, a7, a6
                  slt          a5, t0, s0
                  addi         t4, t4, -239
                  sll          s6, a3, a3
                  srl          s9, s7, t6
                  and          s1, a0, a2
                  xor          t6, a4, s1
                  srli         gp, s2, 16
                  slt          a2, s1, gp
                  srl          t4, t5, s9
                  addi         a5, s7, -1643
                  nop
                  srai         tp, a5, 14
                  sltu         a7, t5, s4
                  srl          s7, a4, s7
                  auipc        s9, 931834
                  andi         zero, s3, 1990
                  lui          t3, 644372
                  sra          t1, t2, t5
                  sra          sp, s4, t2
                  slt          a7, s9, s6
                  xor          a0, s9, s8
                  srai         s8, s8, 23
                  addi         s5, t1, 551
                  xori         a7, a4, -157
                  sltiu        t1, s0, -599
                  sltiu        a7, s8, 402
                  lui          t2, 942815
                  sltiu        s6, a4, -1007
                  nop
                  xor          a7, s10, a5
                  slli         t3, s7, 9
                  sltu         t6, a0, s0
                  sltiu        s3, t5, 397
                  lui          a2, 877346
                  slt          t2, t1, a4
                  slt          a3, gp, s6
                  sltu         t0, t4, a2
                  nop
                  srl          s10, t2, s11
                  slli         t4, s5, 19
                  slli         s4, zero, 16
                  lui          t1, 357083
                  nop
                  slti         sp, t2, 164
                  slti         s9, a2, -676
                  slli         a1, sp, 14
                  slt          s1, s2, gp
                  sub          a5, sp, s9
                  srli         s6, s9, 14
                  slti         s8, s8, 95
                  srl          gp, t3, zero
                  addi         a3, s3, 73
                  sltu         tp, gp, ra
                  sltu         a7, s1, ra
                  sltu         a7, a2, ra
                  ori          s4, t3, 380
                  auipc        tp, 222021
                  ori          s7, a3, 1445
                  slt          a1, t0, t2
                  sltu         s6, t1, a1
                  sub          s8, t1, t2
                  slli         gp, s1, 10
                  nop
                  nop
                  sltiu        t1, s2, 1052
                  auipc        a6, 1044752
                  auipc        s9, 998754
                  srli         a2, a0, 27
                  sra          s0, a2, s1
                  xor          a1, a4, a4
                  srai         a1, a1, 7
                  sub          s1, t1, zero
                  sltiu        t5, a6, -855
                  srl          tp, s5, s5
                  andi         s9, ra, -138
                  addi         s1, s7, 889
                  addi         t0, t2, 864
                  slti         a2, t6, 145
                  slti         a6, a2, -731
                  sll          s9, s8, s8
                  sra          t0, zero, a1
                  addi         s4, t6, -30
                  slt          a7, zero, a0
                  add          a0, a1, t0
                  slt          a4, tp, t1
                  auipc        t4, 384265
                  add          s8, t6, gp
                  xori         a3, a6, 729
                  srli         s9, s11, 6
                  and          a3, s9, s3
                  sll          tp, t3, t3
                  slti         t0, s7, 1299
                  xori         a6, tp, -289
                  lui          t5, 852291
                  srai         s1, t6, 7
                  add          a6, s8, t5
                  auipc        s3, 907115
                  xori         a5, a7, 1675
                  addi         s1, a0, 424
                  add          s4, s5, s11
                  slti         t6, s6, 124
                  slti         t0, a1, 1216
                  srl          a6, a1, a0
                  nop
                  sra          a7, t3, a6
                  sltiu        a2, a6, 732
                  and          a7, s5, tp
                  sra          a4, s1, s7
                  srai         s4, s8, 26
                  sra          s9, a2, s8
                  addi         s1, s9, -1842
                  slt          t5, t2, s0
                  add          a5, s4, s9
                  addi         a6, ra, -932
                  auipc        s4, 660951
                  sltu         sp, s6, a1
                  nop
                  ori          s0, s4, -367
                  xor          s4, t6, s2
                  sltiu        a6, t4, 701
                  or           zero, s9, a0
                  sll          a3, s5, sp
                  andi         t0, a6, 364
                  sll          s8, zero, s4
                  ori          t2, s2, -698
                  slt          tp, s3, tp
                  lui          tp, 733197
                  xor          a1, s1, tp
                  ori          s10, s6, 897
                  auipc        gp, 487430
                  srl          a7, gp, tp
                  slli         s6, a4, 18
                  srli         s9, sp, 4
                  xori         s1, s9, 361
                  srli         s1, s6, 2
                  slt          tp, a6, t4
                  add          a6, a5, zero
                  slt          a7, sp, t1
                  add          t6, sp, s9
                  auipc        t3, 674126
                  sra          s3, a0, a7
                  slt          s0, t3, s1
                  ori          s6, s3, 1162
                  auipc        s0, 877020
                  xor          a5, s4, a7
                  addi         a6, s9, 1148
                  add          a5, s0, s11
                  addi         a1, sp, 1893
                  xor          zero, a7, gp
                  sltiu        a4, tp, -1659
                  slli         gp, s6, 27
                  srli         t2, s11, 16
                  sub          s8, s7, s10
                  srli         t5, t6, 22
                  sub          s0, t2, s8
                  xor          sp, s8, a5
                  auipc        s9, 807173
                  slli         s5, s7, 4
                  or           s6, s0, a6
                  srl          a7, t0, a4
                  xor          t0, zero, a1
                  add          s1, a2, t0
                  sub          t2, a1, a2
                  addi         t0, zero, -458
                  or           a0, a7, t3
                  sltu         t1, s7, t3
                  slti         s10, t3, 223
                  xori         a3, a7, 2009
                  add          a7, a7, s6
                  sltiu        s0, s4, 1938
                  add          t1, a4, s1
                  slt          t4, s4, s2
                  srl          a7, s3, s5
                  nop
                  ori          zero, s2, -1580
                  srli         a2, s7, 10
                  xor          s8, ra, s9
                  srli         s3, s4, 3
                  srai         sp, a1, 14
                  add          s9, gp, a4
                  lui          s7, 263878
                  sra          a6, t5, s5
                  slli         s8, t4, 1
                  add          t3, s11, t6
                  slti         t0, tp, 356
                  add          s8, a4, s8
                  auipc        t4, 247349
                  andi         gp, t3, -1659
                  sra          a5, s7, t5
                  srai         t2, s3, 21
                  and          t1, a7, a0
                  lui          gp, 1032159
                  sra          gp, zero, a3
                  sltu         a4, s7, a4
                  slli         sp, tp, 18
                  nop
                  addi         a0, t6, 763
                  sll          sp, t2, s6
                  sra          a5, tp, s11
                  srai         a5, tp, 19
                  lui          tp, 510433
                  lui          a5, 355984
                  sltu         a2, a3, t1
                  addi         zero, s2, -1335
                  sltu         zero, s0, ra
                  lui          t0, 963559
                  slt          a6, s2, t0
                  xor          t6, a3, s3
                  sltu         a2, a1, a5
                  xori         a3, s8, -958
                  add          s8, sp, s4
                  sra          s6, t4, s8
                  srli         t3, a1, 9
                  xor          s5, s8, s8
                  addi         zero, s2, -531
                  lui          t3, 104641
                  sltiu        a6, t3, 13
                  andi         a6, s1, -1449
                  andi         a1, s3, -752
                  xori         gp, t3, -1796
                  andi         t0, s1, 1362
                  ori          t1, a7, 1895
                  srli         t4, s9, 16
                  and          a2, s0, s1
                  slt          s5, t2, s1
                  xor          s1, s8, a2
                  addi         s9, s10, -1278
                  sltu         s3, s2, s9
                  or           t1, gp, s4
                  or           zero, a7, t3
                  srai         a0, a4, 7
                  lui          s7, 10146
                  ori          s6, s4, -10
                  slt          t5, zero, a5
                  slti         s1, tp, -1654
                  xor          a5, a7, gp
                  sltu         s4, a7, a0
                  xor          s4, t1, a4
                  slli         t1, s3, 16
                  xori         a2, s0, 903
                  xori         a2, t1, -1973
                  ori          t2, t2, -1360
                  srai         s1, t5, 13
                  slt          s8, t1, t5
                  sltu         t5, gp, t1
                  ori          a5, t0, -929
                  srli         s4, t6, 14
                  slt          s5, t2, zero
                  slt          a3, t2, t0
                  slt          a7, s4, t5
                  addi         t6, s0, 1487
                  addi         a3, s10, 282
                  slt          a2, s11, s4
                  addi         s0, a1, -411
                  slt          s0, a7, zero
                  andi         s7, t5, 301
                  sltu         a0, a4, s5
                  addi         a4, s2, 1849
                  srai         t4, s7, 23
                  lui          s9, 14773
                  nop
                  nop
                  addi         sp, a6, 73
                  sll          a2, t2, a0
                  srli         a5, s2, 2
                  or           a3, a5, s10
                  ori          s0, s2, 1380
                  auipc        t0, 163725
                  sra          s10, a3, s3
                  xori         a7, tp, -980
                  srli         sp, ra, 16
                  and          t1, s0, s6
                  add          t3, s6, a0
                  sra          s10, zero, a7
                  nop
                  sub          a5, s9, a7
                  sub          s7, s2, s10
                  slli         t4, sp, 2
                  or           a6, s4, s0
                  auipc        s3, 276973
                  add          a0, s4, s5
                  slt          a0, a0, s6
                  sra          a5, t3, a7
                  auipc        t4, 442775
                  ori          s5, a7, 614
                  sltu         a5, a3, tp
                  sltu         a1, tp, t1
                  or           gp, a7, t2
                  or           s5, tp, a5
                  and          t5, a3, tp
                  xor          s1, gp, s3
                  and          zero, s8, s0
                  and          s3, ra, a5
                  sltu         t2, s8, s7
                  slti         a0, s6, -1943
                  slti         sp, s4, 1254
                  xori         s1, t6, 925
                  nop
                  srai         s4, ra, 22
                  addi         t6, a1, -696
                  la x1, test_done
                  jalr x0, x1, 0
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x27, x18, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x20, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x20, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x20, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x20, x15, ecall_handler
                  li x15, 0x1
                  beq x20, x15, instr_fault_handler
                  li x15, 0x5
                  beq x20, x15, load_fault_handler
                  li x15, 0x7
                  beq x20, x15, store_fault_handler
                  li x15, 0xc
                  beq x20, x15, pt_fault_handler
                  li x15, 0xd
                  beq x20, x15, pt_fault_handler
                  li x15, 0xf
                  beq x20, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

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
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x18, x27, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x27, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x27, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x18, x27, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x18, x27, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x18, x27, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
