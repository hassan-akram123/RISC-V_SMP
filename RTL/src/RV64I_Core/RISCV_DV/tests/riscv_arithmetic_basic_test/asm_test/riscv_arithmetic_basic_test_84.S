.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 1
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
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x5
                  li x4, 0x0
                  li x6, 0x80000000
                  li x7, 0xf11dace1
                  li x9, 0xdf918682
                  li x10, 0x0
                  li x11, 0x26608573
                  li x12, 0x2
                  li x13, 0x7d9daad0
                  li x14, 0x4150946b
                  li x15, 0xf74f751d
                  li x16, 0xf4fc373d
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0xf50c6496
                  li x20, 0x6
                  li x21, 0x80000000
                  li x22, 0x2d115c60
                  li x23, 0xf376590c
                  li x24, 0xa347024
                  li x25, 0xb
                  li x26, 0xc
                  li x27, 0x80000000
                  li x28, 0xd
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0x0
                  la x8, user_stack_end
main:             li           a3, 0xb967d1a5 #start riscv_int_numeric_corner_stream_3
                  li           s3, 0xa6cef114
                  li           ra, 0x0
                  li           s9, 0x0
                  li           t5, 0xcf5b88cf
                  li           sp, 0x0
                  li           a6, 0x43f22561
                  li           s10, 0xffffffff
                  li           t4, 0x9942e969
                  li           a7, 0x0
                  add          s10, t4, a6
                  addi         t4, a7, -1310
                  add          s10, sp, t4
                  lui          s9, 873884
                  addi         t5, t4, -191
                  nop
                  sub          sp, s9, a3
                  nop
                  addi         t4, s3, -1414
                  auipc        sp, 552747
                  add          s9, a6, t4
                  add          a3, a7, t5
                  sub          t4, s9, a3
                  addi         s3, t5, 935
                  auipc        a3, 279082
                  lui          a7, 864770
                  add          a3, s3, ra
                  lui          a6, 31523
                  auipc        t5, 541668
                  add          a6, a6, t5
                  add          a7, t5, s9
                  addi         t4, s3, 1222 #end riscv_int_numeric_corner_stream_3
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           a0, 0x80000000
                  li           s4, 0x80000000
                  li           sp, 0xffffffff
                  li           gp, 0x80000000
                  li           a1, 0x0
                  li           s10, 0x0
                  li           a4, 0x80000000
                  li           t5, 0xffffffff
                  li           s6, 0xffffffff
                  addi         a4, s6, 305
                  lui          a1, 608700
                  lui          s4, 235391
                  nop
                  nop
                  add          t5, a4, s4
                  sub          sp, s6, s4
                  addi         gp, a6, 911
                  nop
                  add          s4, sp, a4
                  auipc        s4, 1009054
                  sub          s10, t5, s6
                  addi         t5, gp, 1194
                  sub          sp, a6, a4
                  lui          sp, 485100
                  lui          s6, 12399
                  add          a4, a6, gp
                  nop #end riscv_int_numeric_corner_stream_10
                  li           tp, 0x4ef1af8f #start riscv_int_numeric_corner_stream_19
                  li           a5, 0xffffffff
                  li           s4, 0x80000000
                  li           a7, 0x80000000
                  li           s2, 0xffffffff
                  li           s9, 0xffffffff
                  li           a6, 0x80000000
                  li           a1, 0x0
                  li           a3, 0x80000000
                  li           s5, 0x80000000
                  auipc        a7, 286085
                  nop
                  addi         a6, s4, -966
                  addi         tp, a6, 1055
                  addi         s5, a1, 1957
                  lui          s2, 429431
                  nop
                  nop
                  sub          a3, a7, s4
                  auipc        s2, 47120
                  nop
                  auipc        s2, 953348
                  sub          s4, s2, tp
                  auipc        s4, 480243
                  addi         a7, a7, 1204
                  nop
                  add          tp, a3, s5
                  addi         a5, a7, 781
                  auipc        a6, 873217
                  lui          tp, 750827
                  addi         s5, a6, 459
                  sub          tp, a5, a1
                  add          s9, s5, a7
                  addi         a3, tp, -1069
                  addi         s5, s2, -1254
                  add          a6, a1, s2
                  addi         a1, a3, -2038 #end riscv_int_numeric_corner_stream_19
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           a6, 0xffffffff
                  li           a0, 0x80000000
                  li           s5, 0x0
                  li           s10, 0x1e48ab5
                  li           sp, 0x123f7a7c
                  li           s2, 0x80000000
                  li           t5, 0x0
                  li           a4, 0x80000000
                  li           tp, 0xffffffff
                  addi         tp, sp, -597
                  sub          s10, s5, a4
                  lui          sp, 27000
                  lui          s11, 367946
                  lui          s10, 606337
                  addi         s5, s10, -1849
                  nop
                  add          tp, sp, t5
                  auipc        a0, 256673
                  sub          a6, sp, t5
                  add          s10, a0, s2
                  addi         s10, a4, -1733
                  lui          a0, 53917
                  add          tp, s2, s10
                  sub          t5, t5, tp
                  add          s10, tp, tp
                  add          tp, sp, s11
                  lui          tp, 925114
                  auipc        s2, 546492 #end riscv_int_numeric_corner_stream_0
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           s11, 0x80000000
                  li           t2, 0x46cb70f1
                  li           s5, 0x80000000
                  li           t6, 0x80000000
                  li           s10, 0xffffffff
                  li           s3, 0xa6ef7304
                  li           t4, 0x80000000
                  li           sp, 0x80000000
                  li           a5, 0xffffffff
                  auipc        t6, 242001
                  lui          ra, 923041
                  addi         sp, s10, 1564
                  add          ra, a5, t6
                  sub          t2, a5, t4
                  sub          ra, s10, s5
                  nop
                  auipc        ra, 37649
                  auipc        sp, 591355
                  add          s5, s11, sp
                  addi         s5, sp, 248
                  lui          a5, 1001127
                  addi         t4, t6, -5
                  nop
                  addi         t2, t6, -651
                  sub          s5, t2, sp
                  add          a5, s10, s3
                  lui          ra, 1001015
                  nop #end riscv_int_numeric_corner_stream_17
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s7, 0x0
                  li           t1, 0xffffffff
                  li           t5, 0x0
                  li           a0, 0x80000000
                  li           s5, 0xffffffff
                  li           a6, 0x80000000
                  li           s8, 0xe6c1c4bf
                  li           a3, 0x0
                  li           t2, 0x80000000
                  sub          a0, t1, a0
                  addi         t5, t1, -1331
                  addi         s7, a7, -679
                  nop
                  addi         a3, s8, 477
                  auipc        s8, 647576
                  nop
                  add          s8, t5, s5
                  addi         t2, a0, 337
                  nop
                  add          s5, a3, a7
                  sub          t1, s7, a7
                  lui          a3, 98751
                  auipc        s7, 835198
                  nop
                  auipc        s8, 883856
                  addi         a0, t5, -202
                  sub          s8, a3, t5
                  nop
                  add          a7, a6, a7
                  nop
                  addi         a3, t2, 1663
                  lui          s5, 507185
                  addi         t5, a6, -31 #end riscv_int_numeric_corner_stream_9
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           t6, 0xec6fe31b
                  li           a7, 0xffffffff
                  li           sp, 0x7f949b01
                  li           s11, 0x0
                  li           a1, 0xde35568f
                  li           gp, 0xccdfa516
                  li           a4, 0x0
                  li           t2, 0xfce39b4
                  li           s9, 0x0
                  sub          s11, a1, a7
                  addi         t6, s11, -1211
                  sub          s2, s9, a7
                  add          gp, s9, a4
                  add          gp, s9, a7
                  addi         gp, s9, -468
                  addi         sp, s2, 622
                  sub          s9, t6, gp
                  auipc        t2, 964017
                  add          gp, gp, s11
                  nop
                  nop
                  addi         s9, a1, -1752
                  addi         t6, a1, -750
                  add          a4, s9, gp
                  nop
                  auipc        a7, 365822
                  add          a1, a4, gp
                  nop
                  addi         s9, s2, 1042 #end riscv_int_numeric_corner_stream_14
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           a2, 0x0
                  li           a1, 0xffffffff
                  li           t5, 0x0
                  li           gp, 0x80000000
                  li           a6, 0x0
                  li           s10, 0x89c816e2
                  li           t4, 0x80000000
                  li           t1, 0x1f1993dd
                  li           s8, 0x80000000
                  add          t1, t4, a1
                  lui          gp, 862355
                  add          t1, a6, a6
                  add          a2, s11, gp
                  addi         s10, a1, -1232
                  nop
                  add          s11, s10, a1
                  nop
                  lui          a6, 401474
                  lui          s8, 993038
                  nop
                  lui          t1, 276222
                  nop
                  addi         a1, t5, -524
                  add          a6, t1, gp
                  sub          a2, s11, t4
                  sub          t5, gp, s10
                  sub          s10, s11, gp
                  add          a1, a6, gp #end riscv_int_numeric_corner_stream_4
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           s5, 0x80000000
                  li           a5, 0x80000000
                  li           gp, 0x0
                  li           s6, 0x0
                  li           t5, 0xffffffff
                  li           t6, 0x80000000
                  li           a6, 0x80000000
                  li           s10, 0x0
                  li           s2, 0x80000000
                  nop
                  auipc        s6, 1029971
                  nop
                  nop
                  auipc        a1, 235663
                  sub          a5, a1, s5
                  add          gp, a6, s6
                  nop
                  addi         s6, s6, -311
                  lui          s6, 705787
                  add          t5, gp, gp
                  lui          a6, 651893
                  sub          t6, a5, gp
                  add          t6, s10, s10
                  auipc        s10, 179193
                  sub          t6, t6, s6
                  lui          s6, 1020448
                  sub          t5, a1, a5
                  auipc        s5, 230298
                  nop
                  addi         s10, t6, 236
                  auipc        s2, 244147
                  addi         a6, a1, 1023
                  lui          t5, 316891 #end riscv_int_numeric_corner_stream_12
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           s9, 0xffffffff
                  li           s11, 0x0
                  li           s3, 0x0
                  li           t1, 0xb5afcffe
                  li           s7, 0x0
                  li           s1, 0x0
                  li           sp, 0x80000000
                  li           t2, 0x0
                  li           a6, 0xd15008f4
                  addi         a6, t1, -738
                  lui          a6, 884219
                  nop
                  auipc        s7, 657442
                  sub          t1, s1, s11
                  nop
                  sub          s1, s11, s3
                  nop
                  add          a6, s7, t2
                  addi         s4, sp, -1336
                  addi         t1, a6, -205
                  nop
                  auipc        t2, 699881
                  sub          t2, s11, s7
                  auipc        s1, 890177
                  auipc        s3, 25503 #end riscv_int_numeric_corner_stream_11
                  slti         s11, sp, -1245
                  sltu         a3, ra, t1
                  or           s8, a5, s11
                  xori         s6, s3, 1189
                  slt          a5, a4, zero
                  srli         ra, gp, 12
                  andi         tp, tp, 752
                  srli         a2, s2, 27
                  srai         t1, gp, 17
                  sltiu        gp, s4, 733
                  xori         a5, a0, 1348
                  lui          s3, 1034013
                  sra          gp, t5, s4
                  srl          gp, a1, s3
                  slt          a4, s0, s3
                  slti         s11, s4, -355
                  and          a7, a4, a6
                  sltu         a6, s8, s3
                  sra          a2, a7, s8
                  auipc        sp, 483050
                  srai         a3, s2, 19
                  auipc        s6, 379726
                  add          gp, a2, s5
                  or           t1, t1, tp
                  xor          a4, s8, a0
                  lui          s10, 983830
                  or           t6, t2, gp
                  srli         a2, zero, 6
                  sub          zero, a5, zero
                  add          t5, sp, a4
                  nop
                  srai         a5, t3, 30
                  sltu         a0, s1, t6
                  ori          zero, sp, -187
                  ori          tp, t1, -1055
                  lui          ra, 240595
                  slli         t6, s8, 10
                  sub          a1, a6, s7
                  sll          t2, t6, a0
                  sltu         s6, zero, t4
                  srl          ra, t1, s4
                  ori          s9, t6, 1865
                  xori         s11, s10, 175
                  srl          a2, a7, s1
                  slt          a3, s3, t1
                  slti         s4, a5, 1788
                  srl          a7, t1, a6
                  lui          s3, 158973
                  sll          s2, s6, s8
                  nop
                  addi         a4, a2, 932
                  nop
                  slli         t1, s3, 20
                  and          t4, s7, s2
                  nop
                  xor          a0, sp, s10
                  sra          s9, s3, s2
                  xor          t5, t2, t0
                  or           ra, s10, a4
                  sltu         a1, t4, sp
                  sub          s11, t2, s1
                  andi         a5, a1, 614
                  sltu         s6, s5, gp
                  xor          s10, s10, a2
                  andi         gp, a6, 1591
                  slli         t6, s7, 4
                  ori          s10, s8, -149
                  and          t6, t0, t5
                  xor          t1, s4, s3
                  sltu         t1, s1, a2
                  auipc        t6, 332104
                  sll          t4, a6, a4
                  xori         a7, a1, 525
                  srl          s11, zero, s9
                  auipc        s6, 295493
                  auipc        gp, 485301
                  lui          a5, 10938
                  sll          s4, a7, a3
                  xor          ra, sp, zero
                  nop
                  sltiu        a7, a7, -652
                  addi         s6, s2, -1042
                  sltiu        s11, s0, -1121
                  add          s3, a4, s10
                  sltiu        s3, t3, 31
                  lui          gp, 591977
                  ori          s9, tp, -205
                  srai         gp, t4, 3
                  or           t4, s9, s7
                  add          zero, a7, t3
                  sll          ra, s1, s2
                  sll          t1, s3, gp
                  slli         a2, a3, 24
                  ori          a1, a4, -130
                  srl          s11, a7, a6
                  auipc        t6, 514815
                  add          s9, t5, t4
                  sub          s8, s5, s3
                  srli         s11, a1, 27
                  srl          gp, t6, s11
                  xor          a4, a0, a2
                  add          s4, sp, a6
                  add          t5, s9, a5
                  srl          s9, s3, s0
                  slt          s10, a6, t2
                  and          a0, s6, s7
                  nop
                  sra          gp, t0, a1
                  sub          a3, t1, a4
                  srl          s2, a6, tp
                  nop
                  xor          a6, a3, a2
                  slli         t4, s2, 19
                  srl          s11, s8, a2
                  andi         t1, sp, 1826
                  lui          t5, 579779
                  sra          s8, a5, t6
                  srli         s9, s2, 5
                  sll          s6, t0, ra
                  and          a3, a5, t5
                  xori         a2, s1, -1678
                  sltiu        tp, s3, 820
                  sltu         tp, t4, s10
                  auipc        s3, 746304
                  or           a0, s2, tp
                  sltu         gp, s5, s3
                  slt          gp, t3, t6
                  xor          gp, t0, a1
                  sll          t6, s0, s11
                  auipc        t4, 804558
                  sll          tp, s6, a2
                  srli         t2, t4, 24
                  add          t6, a5, s3
                  nop
                  auipc        tp, 588576
                  ori          t4, a3, -887
                  slti         zero, gp, -412
                  addi         s6, s9, -756
                  sll          sp, s7, s4
                  slli         sp, a6, 16
                  xor          a1, a0, a6
                  slti         t5, t1, 1331
                  auipc        gp, 328721
                  srai         a6, zero, 30
                  sub          s10, s8, gp
                  lui          s10, 889120
                  xor          sp, s5, t3
                  sll          sp, a7, a5
                  xori         ra, a1, 1744
                  xori         s8, s4, 680
                  or           gp, s2, t6
                  slt          zero, s5, s7
                  and          t2, t4, zero
                  srai         a6, a2, 31
                  andi         a7, a1, -250
                  srl          a1, a5, a0
                  sra          a7, s7, s9
                  sltu         gp, t1, t6
                  srai         a4, s6, 15
                  nop
                  andi         a3, t6, 735
                  sll          s10, a5, a6
                  nop
                  addi         s7, a1, -233
                  srl          s10, s7, s3
                  slti         s11, s9, -1362
                  slti         s1, t6, -1514
                  nop
                  sub          t5, t4, t1
                  srl          a6, s7, a6
                  srl          t6, a0, zero
                  sll          tp, s9, s8
                  addi         s10, zero, 1274
                  and          a3, t6, s6
                  slli         t2, s8, 31
                  slli         s4, a0, 9
                  ori          gp, s8, 1037
                  xor          gp, a7, zero
                  or           s4, ra, s5
                  sra          a0, t5, s1
                  slt          s8, a6, s3
                  srai         t2, s11, 17
                  sub          s11, s2, s3
                  sltu         a1, a3, zero
                  sltiu        t5, s5, -1421
                  sll          a3, a6, s9
                  ori          s9, a3, 1178
                  slti         s1, tp, 678
                  sub          a3, t6, a4
                  and          t5, a0, a7
                  ori          t5, s0, 1096
                  ori          s5, a1, -1554
                  srai         a4, s8, 25
                  auipc        s11, 253132
                  slti         s6, s4, 1053
                  lui          s4, 383443
                  sltu         s4, a2, ra
                  and          a5, s8, s10
                  nop
                  andi         s2, s6, 895
                  add          tp, a7, a0
                  nop
                  srai         a7, a4, 2
                  slli         s1, tp, 9
                  lui          s11, 297265
                  or           s2, s4, sp
                  auipc        t2, 520259
                  sltu         t4, t4, a6
                  slti         t6, a2, -563
                  slli         s5, s5, 8
                  sltu         t2, gp, tp
                  addi         s5, zero, -481
                  slti         s5, s8, 1814
                  srl          t6, t1, a6
                  sub          s1, s10, t1
                  slli         s7, s10, 2
                  sll          s11, ra, a1
                  xor          s4, zero, a3
                  slt          a7, s3, s5
                  sltiu        t5, s5, -246
                  andi         a6, s10, 987
                  add          s4, a2, a7
                  srli         a3, t2, 9
                  lui          s8, 375583
                  add          t1, t5, a2
                  sll          t6, ra, s1
                  xor          a1, t6, t4
                  ori          s2, s11, -1148
                  srai         a1, s8, 8
                  add          s7, t6, s10
                  andi         a0, s10, 576
                  sra          s8, a2, a0
                  andi         tp, t5, 278
                  sltiu        s2, tp, 1942
                  xori         zero, tp, -644
                  srai         a4, a6, 6
                  xori         s7, t4, -1236
                  addi         a2, s10, -1399
                  andi         a7, s0, -1666
                  sltu         a3, s4, s11
                  auipc        s5, 390128
                  slt          a3, s5, s9
                  lui          tp, 343445
                  or           s9, s11, s7
                  and          s4, s1, s3
                  sltu         s2, a2, a2
                  sltiu        a0, a6, -567
                  auipc        a1, 443511
                  slti         s8, a3, -151
                  sra          t1, a6, a2
                  xori         s7, t1, 516
                  srli         s6, a3, 4
                  add          s7, t6, s3
                  slli         s8, gp, 9
                  xor          t4, s11, s0
                  xor          gp, a2, a2
                  addi         s9, s7, -24
                  xor          s1, a6, t2
                  ori          sp, s8, 556
                  slti         a4, a5, 52
                  ori          a6, a1, -791
                  or           s10, s1, s9
                  sub          s3, a1, t4
                  sub          a3, a4, a1
                  slt          a0, t3, t2
                  ori          s1, s3, -1775
                  xori         tp, a7, 1634
                  andi         s9, gp, -755
                  xori         a2, t4, -2021
                  srl          s11, t2, a3
                  srai         a5, a2, 15
                  andi         s4, s0, 87
                  nop
                  sll          s4, t2, a6
                  srai         a5, t1, 10
                  slt          a7, s5, gp
                  sra          s2, s5, a3
                  and          s9, a1, t4
                  slti         s7, a6, -811
                  xori         a1, a7, -782
                  srli         a2, a3, 15
                  srli         a4, s2, 0
                  slti         s9, zero, 1701
                  or           zero, s2, gp
                  slti         s10, s4, -586
                  sltu         a6, s3, s3
                  auipc        t6, 738625
                  sub          t2, a6, gp
                  sra          a7, s8, s9
                  srli         t1, s10, 3
                  lui          tp, 349053
                  sra          s8, s2, t2
                  slli         a7, s0, 16
                  addi         s7, t5, 625
                  xori         a3, gp, -1568
                  sra          s9, a1, t4
                  srai         s1, s2, 18
                  slt          t1, t1, s9
                  sll          a1, a3, s9
                  xori         t6, s0, 1616
                  nop
                  lui          s5, 654944
                  auipc        s11, 413628
                  sltu         s6, ra, t3
                  slti         t4, a0, 1933
                  andi         a2, s1, 1200
                  and          s3, t3, s11
                  slli         a4, s9, 16
                  xor          t1, s10, zero
                  lui          s7, 215957
                  xor          gp, zero, s0
                  srl          zero, s2, t4
                  sra          t1, s3, a1
                  slli         a2, gp, 30
                  ori          a7, a6, -1756
                  xori         a6, a7, -1934
                  ori          s1, a2, -243
                  andi         s7, a2, -1803
                  sltiu        s8, s7, 1642
                  srli         a4, s3, 29
                  xor          t6, s6, a2
                  add          tp, s0, gp
                  andi         s3, s5, 1861
                  andi         a1, a2, -739
                  sltiu        t4, s0, -1456
                  sltu         s6, s4, t6
                  add          a3, t6, t0
                  sra          t5, s10, sp
                  sll          zero, t4, a5
                  sra          sp, a2, s8
                  sll          a6, t3, a4
                  srai         a7, s1, 5
                  sll          a1, a5, s3
                  sll          ra, t2, t5
                  ori          sp, s9, 1892
                  nop
                  ori          s4, a0, -602
                  auipc        s11, 603147
                  sltu         ra, sp, t3
                  auipc        a1, 536090
                  srli         t5, s7, 26
                  srl          s11, a3, a4
                  slt          s1, s1, a7
                  srai         s11, t4, 28
                  sltu         t4, a3, a1
                  srai         t4, gp, 5
                  srli         zero, t4, 31
                  slli         t1, s9, 27
                  or           zero, s3, t0
                  sra          t6, s10, a5
                  sub          sp, s3, a3
                  ori          t6, s4, -740
                  lui          zero, 980860
                  srai         s2, s6, 1
                  auipc        a6, 476188
                  srai         a3, s4, 29
                  addi         t4, s8, -1746
                  slt          s3, s11, t1
                  add          gp, a4, s4
                  sltu         t1, a5, t0
                  xori         t2, a5, -186
                  sub          t1, t0, t3
                  nop
                  addi         tp, a3, 594
                  xori         s3, s11, -1268
                  slli         a2, t0, 11
                  xori         a4, s3, -1147
                  srl          t1, t2, t2
                  slti         t2, t1, -143
                  slti         s7, zero, -135
                  sltiu        s8, t1, -178
                  add          s4, s5, zero
                  srli         ra, a1, 24
                  srai         a2, t4, 9
                  sltiu        t4, gp, 616
                  addi         t6, s7, 1304
                  ori          s6, s7, 1860
                  srai         t2, gp, 27
                  xor          s4, a0, s7
                  ori          t1, t3, 981
                  xor          s10, a5, t2
                  xori         s11, t4, -8
                  andi         a7, a6, 1929
                  sll          sp, s4, s1
                  sub          s1, a1, s1
                  or           a7, a5, s6
                  xori         a3, a3, 562
                  sra          s5, s10, s0
                  or           s4, s11, gp
                  andi         t1, t5, 903
                  and          a5, s10, s5
                  slli         a4, s6, 24
                  sra          t1, s6, s2
                  sltu         t4, s11, a5
                  srai         s4, a5, 14
                  slt          s4, s3, s7
                  srl          a2, s7, sp
                  slli         zero, t6, 11
                  slt          s8, zero, t0
                  andi         a6, t3, 269
                  addi         a5, t6, -865
                  ori          a3, gp, 1950
                  xori         a2, sp, -1626
                  andi         t1, s1, -1561
                  sltu         s4, ra, s6
                  ori          t1, s9, 1092
                  sltiu        gp, a3, 1927
                  andi         a0, a6, -315
                  srai         ra, a2, 1
                  slli         t6, s7, 29
                  addi         s1, t4, 422
                  sll          a3, t6, ra
                  slli         s6, zero, 14
                  lui          zero, 726725
                  srli         s4, t6, 12
                  slli         a1, s4, 21
                  xori         s4, a3, -645
                  sll          gp, t3, zero
                  ori          t4, a0, -153
                  lui          s1, 791289
                  sra          s10, s4, t3
                  sltiu        t6, a6, -116
                  sltu         a4, a1, a7
                  xori         s9, a2, 1967
                  ori          a7, t0, -1650
                  sltu         s11, a7, s7
                  xori         ra, s2, 185
                  addi         a2, s1, -1026
                  sra          s1, t6, a5
                  lui          a3, 605342
                  slti         s4, t2, -1993
                  ori          tp, a4, -1003
                  slti         ra, a1, -1393
                  or           s7, a0, tp
                  sra          tp, a3, t3
                  srai         a3, sp, 27
                  sll          a4, t6, sp
                  sltu         tp, s5, s0
                  slti         t2, s11, 76
                  sra          t5, a4, s8
                  slti         a2, ra, 145
                  sltiu        a1, s6, 1254
                  sll          a6, a5, s9
                  or           s6, t5, gp
                  xori         a4, s8, -1778
                  sll          s10, zero, s0
                  xori         s3, s1, 1743
                  sll          a7, s6, t2
                  srl          a2, sp, s5
                  slt          s8, s5, a1
                  andi         s6, a6, -1804
                  sltiu        a4, t4, -265
                  srl          tp, t6, s9
                  slli         t2, t3, 28
                  sub          s3, tp, s10
                  sra          t5, t1, t3
                  addi         s11, s2, -1238
                  srai         s8, tp, 8
                  or           gp, tp, t5
                  xor          s5, t4, t6
                  or           t6, t1, s4
                  sltiu        t5, s0, 1879
                  auipc        sp, 621130
                  ori          a3, zero, 1177
                  sub          s10, a1, s10
                  addi         s7, tp, 903
                  lui          s7, 351332
                  lui          t2, 228619
                  and          t6, a1, ra
                  sltiu        t1, s5, -432
                  sltiu        s8, t0, 322
                  add          sp, s11, s9
                  srl          tp, t0, t6
                  nop
                  nop
                  andi         s1, s2, -216
                  or           s4, s8, ra
                  sll          gp, t6, s2
                  auipc        s4, 59057
                  lui          t5, 97903
                  slti         a2, s0, 141
                  srai         a1, s4, 24
                  add          s9, t6, a4
                  srl          ra, a4, t3
                  slt          s7, a0, s8
                  xor          zero, a0, ra
                  srli         s4, a1, 13
                  slti         s4, zero, 1976
                  srai         zero, a0, 4
                  lui          a2, 848812
                  ori          t2, s6, 651
                  xori         t6, a1, -1653
                  xor          t5, t0, s5
                  add          t2, a0, s2
                  lui          sp, 288140
                  lui          s2, 530288
                  sltu         s8, zero, a6
                  slli         t6, s11, 9
                  add          s3, a6, a0
                  lui          a5, 533968
                  add          a1, s9, a6
                  slti         s3, t2, -1979
                  andi         t6, s9, 807
                  sll          a6, a0, t3
                  xor          s11, t4, t6
                  slt          zero, s4, tp
                  andi         a0, sp, 370
                  sltu         a0, gp, a0
                  srli         tp, a3, 20
                  addi         s5, s9, -395
                  addi         t1, s10, 872
                  xor          s1, s7, s9
                  slt          ra, t0, s8
                  addi         ra, sp, 1023
                  slti         t6, tp, 128
                  sra          t2, a1, a4
                  sra          s11, t5, a0
                  xor          s2, t0, t3
                  add          t1, t3, a6
                  or           s4, t3, t6
                  slli         s8, s1, 4
                  sub          s11, zero, gp
                  or           s11, s4, t3
                  andi         s2, a7, -1809
                  slti         a7, a2, -395
                  and          gp, s1, s11
                  sltiu        ra, s10, -168
                  nop
                  slti         s8, zero, -892
                  sltiu        s6, sp, -1717
                  sltu         a1, s9, s9
                  srl          a7, s1, t4
                  slti         s8, s11, -877
                  addi         a7, t5, -1044
                  slt          a2, s9, a3
                  addi         t1, s7, -1250
                  srl          s9, s6, s6
                  slli         t4, a2, 26
                  srl          s3, gp, sp
                  add          t6, a7, s6
                  slti         s7, a6, -1199
                  srl          t6, t3, s9
                  srli         s7, t5, 18
                  sltiu        t6, a3, 495
                  srli         a4, a1, 3
                  sll          s3, s5, a7
                  auipc        a1, 17592
                  sra          a4, a1, s0
                  or           s4, t0, s8
                  srai         s11, a0, 29
                  srl          s7, t2, a4
                  sub          t4, t4, s2
                  and          a7, s1, ra
                  slt          s10, t6, s2
                  sub          s7, s2, tp
                  sub          a3, t4, a5
                  addi         a0, s8, -1569
                  slt          tp, t3, t3
                  slti         t5, t1, 1042
                  sltiu        a3, a6, 656
                  srai         a6, s11, 19
                  slt          s11, gp, s6
                  and          s1, t1, a1
                  xori         s9, s8, -399
                  or           zero, sp, s8
                  ori          tp, t0, 1558
                  and          s1, a3, a5
                  slli         a1, s4, 18
                  andi         a3, t2, -1811
                  sub          zero, s6, a3
                  slt          s5, s7, s5
                  or           s4, gp, s5
                  nop
                  andi         s5, tp, -348
                  add          a6, a1, ra
                  sltiu        tp, s5, 1830
                  nop
                  lui          sp, 592177
                  srli         s11, zero, 27
                  sub          s2, a0, s8
                  sub          t2, a2, s2
                  nop
                  auipc        sp, 191713
                  ori          a2, s3, -1250
                  auipc        a1, 33091
                  slli         a6, a7, 2
                  slti         t4, a2, 1363
                  srl          t5, s1, s0
                  srli         a0, s11, 25
                  slli         s2, tp, 12
                  slli         a5, s7, 0
                  lui          s8, 65447
                  sub          s9, gp, s1
                  sll          t5, t6, s3
                  sra          a3, s1, s9
                  xor          gp, s5, s6
                  sltiu        tp, t4, -1962
                  sub          t4, t5, a1
                  slti         a1, s3, 912
                  sltu         tp, s11, zero
                  srli         gp, t5, 23
                  or           s3, a7, a6
                  ori          gp, a6, 1113
                  sltu         t6, a7, s1
                  sub          t5, s11, s4
                  auipc        t1, 377053
                  ori          gp, t2, -1323
                  auipc        zero, 807207
                  sltiu        s2, ra, -1354
                  sltu         s11, t1, s11
                  slti         gp, s0, -1644
                  sra          a6, s8, t4
                  nop
                  srli         s6, s6, 18
                  sltiu        sp, a7, -1250
                  or           a7, s2, s4
                  sub          s11, t4, s9
                  sltu         a0, t0, s5
                  sub          a0, t0, s8
                  add          t1, s9, s6
                  srli         s1, a1, 26
                  slli         s3, s9, 18
                  sltiu        t5, zero, 48
                  slli         s10, t4, 31
                  nop
                  slt          s4, a5, s3
                  ori          zero, s1, 1691
                  nop
                  slt          tp, s5, a7
                  addi         s4, ra, 791
                  addi         t4, s6, -1353
                  andi         a4, s3, -930
                  sub          t1, s8, ra
                  slli         a2, a0, 10
                  slt          gp, t6, a4
                  srli         zero, s7, 22
                  sra          a3, gp, a5
                  andi         s4, s5, 723
                  sll          a7, s1, zero
                  sltiu        a7, zero, 1551
                  sltiu        a7, s5, -1270
                  sub          s1, s4, s4
                  srl          a5, tp, s5
                  sub          s10, s2, zero
                  sra          s8, s9, ra
                  sra          s5, a6, s5
                  auipc        a2, 490351
                  srli         s7, s7, 6
                  sltiu        s9, s10, -1381
                  slt          t5, t0, zero
                  add          s11, s11, a0
                  sub          t2, t1, gp
                  add          s8, s10, a5
                  ori          t5, s1, 291
                  nop
                  xor          t2, a6, t5
                  sltu         s2, a0, s7
                  auipc        s4, 187820
                  xor          t1, a3, ra
                  slti         a6, a4, -460
                  slti         a5, tp, -86
                  slt          t4, t3, s3
                  slli         t5, a0, 14
                  xori         s2, t6, 1382
                  slli         t5, s1, 11
                  and          s10, a6, s8
                  srai         t1, s3, 16
                  sra          a2, t5, s5
                  or           a7, s3, s4
                  sra          t4, s4, s7
                  slti         t5, a7, 1161
                  nop
                  srl          s6, a2, s4
                  srl          t5, gp, s2
                  srli         a0, ra, 2
                  slt          zero, a2, ra
                  nop
                  lui          t5, 730123
                  sra          a5, t6, a6
                  sltiu        t4, t4, -2037
                  and          s9, s1, a6
                  andi         s3, t3, 597
                  slli         a0, s5, 27
                  auipc        s7, 582690
                  nop
                  and          s3, t5, s5
                  and          s7, tp, s6
                  sltiu        s11, t5, 1342
                  xor          s7, zero, a0
                  addi         a5, a5, -1699
                  auipc        sp, 320785
                  sra          a6, t6, ra
                  ori          ra, a4, -1409
                  ori          a4, a1, -1852
                  sub          t6, a7, s7
                  xori         a7, s5, -77
                  and          s11, t0, s9
                  sra          s7, t0, gp
                  srli         s1, s6, 14
                  srli         s2, s5, 29
                  sltiu        t5, s9, -1036
                  sll          s3, s11, a7
                  sra          tp, s8, t4
                  sra          t2, s5, s3
                  srli         t2, a0, 28
                  srli         s10, s3, 9
                  slt          a2, s3, a6
                  nop
                  xor          s2, s7, t6
                  slt          zero, s8, s0
                  sra          s10, s5, s6
                  srli         tp, s7, 0
                  sltu         s4, s10, s0
                  slti         ra, a4, 310
                  sll          a3, s7, zero
                  sll          s7, a0, ra
                  ori          t1, s2, 1529
                  or           a5, s9, s2
                  slti         a1, t1, -5
                  xor          zero, zero, a3
                  srai         a3, a5, 19
                  addi         a3, s6, 740
                  nop
                  sltu         s8, s9, s7
                  or           s6, a2, tp
                  or           t2, a4, t5
                  xori         s10, s7, 1659
                  add          s10, s4, a6
                  slti         zero, sp, -1891
                  sltu         a7, a1, t5
                  xor          s2, ra, s11
                  nop
                  addi         s2, t6, -1307
                  srai         a1, t2, 4
                  sub          a1, a3, s0
                  auipc        s7, 547701
                  ori          s1, sp, -306
                  sub          t2, a6, t3
                  xori         t2, a4, 1113
                  srli         s3, ra, 9
                  and          s5, t3, s3
                  and          ra, a6, a3
                  xori         s11, a7, 2028
                  sub          sp, a1, a4
                  sltiu        s10, t1, 1237
                  srl          a6, s1, a0
                  addi         gp, t5, -36
                  srli         sp, s3, 18
                  sltu         a2, s6, tp
                  slt          s1, zero, s4
                  sll          s5, s9, s5
                  and          a1, s0, a0
                  slli         s11, t5, 2
                  add          s6, s5, s3
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           a4, 0x0
                  li           gp, 0xffffffff
                  li           ra, 0xffffffff
                  li           s5, 0x0
                  li           t6, 0xffffffff
                  li           s6, 0xffffffff
                  li           a0, 0x80000000
                  li           a2, 0x0
                  li           a6, 0x80000000
                  addi         s5, s7, 390
                  auipc        a4, 21034
                  nop
                  add          s6, gp, gp
                  nop
                  lui          a6, 756486
                  sub          a6, a4, t6
                  auipc        a4, 388354
                  auipc        a0, 862613
                  auipc        a4, 621200
                  sub          s6, s5, a0
                  nop
                  nop
                  nop
                  add          s6, a0, s7
                  sub          t6, a4, a0
                  add          t6, ra, s7
                  addi         s7, a0, -50
                  sub          t6, gp, s6
                  addi         a0, a0, 1829
                  sub          t6, s7, a4
                  add          gp, s6, a0
                  add          ra, s5, a4
                  add          a6, gp, gp
                  add          ra, a0, a6
                  nop
                  add          gp, a4, s7 #end riscv_int_numeric_corner_stream_16
                  srai         t1, t2, 28
                  slt          tp, t4, s1
                  andi         s6, s2, 35
                  sltu         a6, s8, s9
                  srl          zero, t1, gp
                  add          s6, s11, a3
                  xori         s5, t0, 706
                  slli         ra, a0, 6
                  nop
                  auipc        t5, 200479
                  srli         s7, s5, 11
                  andi         a3, t6, 1396
                  andi         a7, sp, 858
                  add          s7, s4, a0
                  sltiu        s4, t5, 121
                  sltiu        s6, gp, 433
                  andi         a7, a7, -110
                  lui          s5, 257766
                  srai         t5, a5, 16
                  ori          s11, s8, 1181
                  srli         t6, sp, 30
                  sra          s10, t4, s8
                  srai         s7, ra, 23
                  slt          s1, s10, a2
                  xori         s3, a3, 1255
                  srai         s7, s6, 7
                  andi         s10, s9, 195
                  andi         s4, t2, -493
                  srl          s10, s10, sp
                  srli         t5, s6, 31
                  nop
                  nop
                  slli         tp, a3, 4
                  andi         a1, a2, 572
                  slti         s11, a3, -534
                  addi         s4, sp, 1034
                  xori         t6, a1, -1346
                  sltu         s11, s2, s2
                  sll          a5, s11, s6
                  and          s5, s6, s8
                  srli         s7, t3, 4
                  srli         gp, s3, 13
                  slli         s5, t1, 17
                  sub          s6, s5, s7
                  srl          t5, a3, a2
                  slli         t6, t6, 11
                  slli         sp, t3, 2
                  sll          a5, t0, a7
                  sra          a1, s0, s5
                  xor          tp, s5, s2
                  slti         tp, t5, 1533
                  sub          t2, a4, a1
                  or           gp, a4, s0
                  sltu         s1, t0, t3
                  addi         a4, a3, -328
                  srli         t6, gp, 13
                  slti         a0, a7, 1230
                  sll          s9, s5, t5
                  sltiu        t4, s0, -223
                  addi         s7, s11, -12
                  or           a0, a5, s1
                  srli         s11, a2, 17
                  slli         s10, a3, 28
                  slt          s9, s6, s6
                  lui          s7, 376262
                  ori          a1, t2, 1439
                  ori          a4, t5, 819
                  sub          s10, a3, t4
                  slti         t4, s7, 1710
                  nop
                  sltu         t4, s2, s6
                  slli         ra, ra, 10
                  and          a1, t3, a4
                  and          s11, t6, a4
                  or           zero, s11, t5
                  lui          a7, 621706
                  ori          s7, s2, -1978
                  ori          s6, t6, -2022
                  slli         gp, s1, 5
                  addi         tp, ra, 367
                  ori          s7, s7, 1843
                  slti         s10, t0, 643
                  ori          zero, a5, 1681
                  srai         a3, t4, 24
                  slli         t6, s5, 7
                  srai         t1, ra, 25
                  or           sp, a7, s2
                  or           s7, a4, s10
                  sll          t2, s11, t2
                  srl          t2, s1, a4
                  sltu         s8, a2, s1
                  sltiu        s3, s0, -27
                  or           s10, t3, s2
                  slt          s9, tp, t3
                  slt          a2, a0, t5
                  slti         s9, s9, -1001
                  sltiu        s5, tp, -1049
                  auipc        s5, 368952
                  ori          a4, s11, -1361
                  or           t1, zero, t2
                  slti         s8, gp, 1260
                  lui          sp, 622619
                  addi         t6, a4, -454
                  slti         t1, t4, 904
                  sll          t5, zero, t0
                  sltiu        a2, gp, -1231
                  sltu         a2, s1, s0
                  srli         tp, s2, 5
                  srai         s4, s5, 3
                  sub          t1, tp, s8
                  auipc        s9, 814128
                  xor          a4, a0, s8
                  andi         s5, t3, 1169
                  sltiu        gp, a0, -1864
                  ori          zero, a0, 741
                  srl          sp, s4, a1
                  srl          a2, t4, t4
                  add          s2, t6, s3
                  xori         ra, t6, 1947
                  addi         s3, s11, 700
                  sub          a7, a1, s5
                  and          t6, a3, t3
                  add          tp, t2, s10
                  ori          t4, t2, 1212
                  srli         a6, s5, 15
                  srai         s3, sp, 3
                  sll          s3, a6, zero
                  xor          t6, s7, a2
                  slli         s10, t3, 27
                  sub          a5, t1, t0
                  nop
                  xori         ra, s11, 481
                  add          t5, s6, a7
                  sll          t1, a6, s9
                  nop
                  lui          s2, 140110
                  sll          gp, a4, gp
                  sltiu        a5, t2, 414
                  add          a1, t2, a0
                  andi         a4, gp, -72
                  auipc        ra, 243611
                  sra          a4, gp, t4
                  slt          zero, gp, s6
                  srli         s4, t3, 8
                  slt          a5, zero, s6
                  and          s4, s2, s11
                  sltiu        ra, a6, 1628
                  slt          s9, s7, ra
                  slti         a4, ra, -520
                  srai         a1, gp, 7
                  slt          s8, t2, s6
                  nop
                  andi         s11, sp, -1522
                  xori         a4, ra, -1702
                  auipc        t5, 548850
                  xori         a4, tp, -411
                  slt          s9, ra, a0
                  andi         t5, sp, 771
                  slli         a0, s1, 13
                  slti         s3, a4, -360
                  sra          a3, a6, s5
                  ori          s4, s10, -1468
                  sub          gp, t0, t4
                  slli         a1, a0, 0
                  sltu         gp, t5, s11
                  sll          a4, ra, a5
                  ori          t5, t6, -875
                  add          a2, s9, tp
                  slti         a6, gp, 1608
                  slt          s10, a5, a5
                  slli         gp, s6, 17
                  sll          tp, a3, t2
                  sll          t2, tp, a1
                  sltu         a4, sp, t6
                  ori          a4, a5, -1835
                  or           s3, s5, ra
                  nop
                  sltu         s1, a6, ra
                  sltiu        s7, s0, -1942
                  xor          a6, a3, sp
                  slti         s2, gp, 1566
                  or           t2, s6, s10
                  slti         s4, s3, -1956
                  auipc        s10, 773731
                  or           a6, s11, s7
                  sltu         s9, t5, s9
                  xor          t5, s3, s5
                  srai         s4, ra, 19
                  xor          s1, a2, a0
                  slt          zero, tp, s2
                  xori         a0, t5, -496
                  slt          a4, s2, t2
                  slti         s10, s0, -792
                  nop
                  andi         sp, a1, 115
                  slli         s5, t6, 29
                  and          sp, s3, a7
                  sltu         s9, s4, a4
                  add          sp, zero, s10
                  add          s8, s2, t3
                  xor          s5, gp, a3
                  xori         a7, a2, 1082
                  sltu         s6, t6, s11
                  sll          s11, a0, t5
                  add          s6, a2, s8
                  sltu         s11, sp, s3
                  add          a7, ra, t4
                  sub          t2, a7, t3
                  or           s4, tp, a4
                  xor          sp, zero, a1
                  and          t2, s0, s5
                  srl          a1, s7, t0
                  xor          s5, t2, a4
                  ori          s6, t4, 1554
                  sltu         t6, tp, sp
                  auipc        a5, 232157
                  xor          zero, s10, a2
                  sub          t6, t6, t1
                  slt          a5, tp, a0
                  lui          tp, 979830
                  slt          gp, a5, t2
                  lui          s10, 375005
                  and          t5, t4, t0
                  nop
                  andi         t2, s10, 1213
                  add          s1, a1, t5
                  sltiu        s8, a7, 1997
                  addi         ra, gp, 839
                  srli         a4, zero, 17
                  xori         s2, s3, -1492
                  add          t5, t3, s6
                  andi         t5, s8, -1555
                  andi         s5, a1, -279
                  sltiu        s5, s6, -1054
                  addi         tp, a2, 1484
                  add          s4, s4, a2
                  nop
                  sltu         t4, a1, a6
                  xori         s10, s10, -1575
                  and          a3, s2, t3
                  ori          a7, s10, 1416
                  andi         s7, t1, 1578
                  auipc        s9, 323638
                  addi         s3, s9, -1311
                  sltiu        a2, s4, -1764
                  or           s5, t3, s8
                  slli         s11, s7, 31
                  srai         s10, sp, 14
                  andi         a3, a2, -106
                  xori         a5, t5, 1695
                  and          a1, t4, tp
                  add          s4, s1, a4
                  add          s4, t4, a7
                  andi         tp, a6, -76
                  slti         s5, a3, 570
                  sltu         t4, s10, s4
                  nop
                  srl          a5, t4, t1
                  addi         s3, t1, -1508
                  slti         t5, a2, -610
                  xor          s8, t3, a3
                  auipc        a1, 368580
                  slti         a5, a0, 459
                  sra          a0, gp, zero
                  nop
                  auipc        s6, 81624
                  andi         s9, s0, -799
                  add          s7, t3, s1
                  srli         gp, s6, 4
                  xori         a5, a3, -1735
                  srl          a5, s0, a3
                  sltu         s4, s2, s0
                  srli         s7, a3, 31
                  sra          s6, gp, t4
                  slti         ra, a2, -915
                  slti         gp, s1, 1602
                  sltu         a5, s9, a3
                  xori         s6, t5, 323
                  sub          t4, a7, a3
                  sra          a1, sp, ra
                  slli         a5, t2, 10
                  sltu         t1, s8, a0
                  and          a6, s10, a4
                  auipc        s6, 1010579
                  xori         a5, s4, 309
                  slt          gp, ra, s11
                  slli         s9, s4, 20
                  slt          s3, a0, gp
                  sltiu        s4, s10, -1628
                  add          s1, a0, t1
                  sll          s3, s3, t3
                  xori         zero, tp, 861
                  srai         a0, s0, 7
                  slt          ra, a3, s5
                  srli         s3, s9, 4
                  srai         a3, t3, 10
                  lui          a4, 52729
                  xor          ra, s2, s10
                  slli         s6, s2, 13
                  sltiu        s10, t1, 766
                  sltu         t6, ra, s0
                  xor          s4, s0, s0
                  sltiu        s7, a2, -1673
                  sll          a0, a2, s9
                  srai         a7, t5, 12
                  xor          zero, s9, t2
                  lui          t2, 835546
                  and          s2, a7, s1
                  sll          a3, s3, s9
                  ori          a4, t0, -1695
                  srl          a7, s8, a4
                  sll          s1, s9, s7
                  nop
                  sll          t2, s1, s11
                  and          t2, t0, tp
                  slli         t6, s9, 31
                  xori         s11, t1, -1218
                  slt          s10, a0, t0
                  xori         t1, s10, -1142
                  sll          s4, t4, t0
                  srl          s3, t1, s1
                  or           s8, a7, s4
                  auipc        a5, 586666
                  slt          s7, a1, s6
                  andi         s6, s4, 242
                  nop
                  srl          a2, gp, s5
                  and          t6, s9, t1
                  slli         t6, t2, 24
                  auipc        a6, 245165
                  ori          ra, a5, 1059
                  andi         s5, tp, 347
                  sll          s3, s0, a6
                  andi         a2, s2, 1037
                  and          s4, s1, a2
                  add          gp, zero, t0
                  srl          t6, a0, s5
                  slti         tp, s5, 1779
                  sll          a4, s1, gp
                  sub          gp, a0, s9
                  sll          s6, s0, a6
                  srl          s8, s0, a3
                  or           t2, s5, s1
                  and          gp, t6, a1
                  addi         a0, a0, -349
                  srl          s9, a0, s0
                  sltiu        ra, a6, -118
                  or           a7, a6, s4
                  andi         s1, s4, -455
                  sub          s3, s2, t3
                  addi         s11, t1, 1894
                  sub          a0, s5, s3
                  srl          a5, zero, t3
                  sll          s7, s4, t5
                  xor          t2, a3, a3
                  sra          s4, s11, s2
                  srl          t6, s0, t6
                  addi         t1, s7, -1535
                  or           s10, s8, t1
                  sub          a2, s5, a3
                  xor          s5, s9, t6
                  sll          a6, s8, a7
                  or           a4, s10, t1
                  add          t2, t5, s9
                  slli         t4, s2, 11
                  slli         a0, s9, 24
                  sub          tp, a2, tp
                  xori         a7, a2, -751
                  sub          t2, s3, s11
                  lui          a0, 951009
                  slti         s6, ra, 1849
                  sltu         s9, s3, s7
                  sltu         t6, s7, a0
                  sll          s2, s10, s2
                  xor          t6, s1, a7
                  xori         s2, s8, -1907
                  lui          a7, 58624
                  auipc        a3, 325031
                  or           a2, s8, s10
                  add          a6, t2, ra
                  slti         s4, a3, -1611
                  lui          s4, 599630
                  auipc        a1, 660791
                  srli         a0, s6, 15
                  sll          a7, a0, s9
                  or           a1, s2, a2
                  xor          s4, s5, s2
                  addi         gp, s1, 171
                  sltu         s6, s3, s11
                  and          t6, t5, s0
                  sltiu        t6, a7, -1661
                  nop
                  srli         a6, ra, 31
                  slti         t2, s1, 1009
                  or           t4, zero, s6
                  sltu         t6, t6, sp
                  srl          t1, s9, s3
                  slli         tp, a6, 1
                  sltu         s6, t0, tp
                  slli         a5, s8, 24
                  addi         a1, s4, 1564
                  sub          s7, t1, a7
                  lui          t2, 911105
                  or           a4, sp, a5
                  sll          t5, t2, s0
                  slti         a6, t2, 963
                  srai         t4, t3, 31
                  sltu         a7, s11, t1
                  sll          sp, tp, a5
                  sub          a7, a0, t4
                  add          s4, t1, s10
                  slli         a6, a5, 2
                  lui          s1, 554993
                  slt          s3, t6, t2
                  slli         a6, a3, 7
                  nop
                  or           t6, a2, ra
                  sltiu        s11, a4, 886
                  sra          gp, a6, s9
                  sub          t2, s1, t3
                  sub          a3, s11, s11
                  sltiu        a0, s4, -975
                  xor          s5, s1, t5
                  sra          a5, s3, s4
                  lui          a6, 47343
                  sll          a6, s3, s1
                  nop
                  slt          s3, ra, sp
                  auipc        gp, 347204
                  sll          zero, s5, t5
                  sub          a2, t5, a4
                  slti         s10, s11, -760
                  and          a0, t0, tp
                  sub          a2, a3, s11
                  srli         s10, s6, 19
                  slt          t5, tp, gp
                  add          gp, s5, sp
                  addi         s9, t4, -1729
                  sub          s10, s1, a2
                  nop
                  or           s4, s9, gp
                  or           t5, s5, a1
                  srai         a4, s11, 14
                  srl          s9, s3, a2
                  xor          s1, s0, s5
                  xori         s6, sp, 1008
                  srai         s3, a0, 1
                  lui          t2, 289151
                  ori          zero, s5, 1557
                  slli         a7, s3, 1
                  sltiu        a6, t5, -1159
                  sra          s1, s10, a2
                  srl          s1, t5, s8
                  add          sp, t2, a5
                  addi         a3, t1, 1291
                  sltu         a1, a5, zero
                  andi         a0, s9, 1690
                  slt          a4, tp, ra
                  slt          t4, ra, tp
                  auipc        t1, 614434
                  srli         s9, t6, 30
                  slti         a6, zero, 1349
                  add          t1, a7, s10
                  sra          a7, a2, s9
                  srai         s5, t2, 23
                  xori         zero, t2, -153
                  srl          t4, t2, a6
                  sub          sp, t5, zero
                  andi         sp, s6, 271
                  and          s8, s8, a5
                  ori          t6, t6, -1721
                  sltiu        a4, s4, 1982
                  ori          zero, s2, -2038
                  addi         s4, a1, 1458
                  xor          a7, s7, s7
                  sub          s1, s1, s11
                  ori          s3, s10, -2018
                  xor          s1, s4, t5
                  sltiu        s3, s4, -476
                  sll          s2, t3, t3
                  xor          a4, t0, a4
                  slli         t2, s8, 7
                  and          a7, t4, a6
                  sltu         s4, t3, t1
                  srli         ra, s4, 31
                  ori          s11, a2, 1333
                  addi         a0, tp, -1083
                  srai         sp, a3, 10
                  sll          s5, t4, t1
                  or           tp, s3, s11
                  andi         t5, gp, 313
                  sub          s8, t1, tp
                  sll          a1, t0, a7
                  nop
                  andi         tp, gp, 846
                  and          t5, s5, sp
                  xori         s10, ra, 1016
                  sll          s7, s4, a5
                  srl          a3, t4, sp
                  sll          s1, s6, s2
                  addi         s9, a4, 1972
                  sub          s10, s10, t1
                  auipc        s10, 510133
                  slli         a0, a6, 13
                  sra          zero, s1, t4
                  sltu         s3, s1, s7
                  sltiu        a1, a7, -1933
                  slt          ra, a2, t1
                  srli         s6, t0, 24
                  xori         s1, a5, 1716
                  slti         s7, s3, -717
                  xori         tp, s2, 1495
                  slti         t1, a6, 251
                  xor          s7, t2, s4
                  sltiu        a2, s8, -1577
                  and          t6, t6, gp
                  add          s2, tp, tp
                  or           zero, t6, sp
                  or           s10, a0, s7
                  slli         s4, s3, 18
                  add          s10, s6, t0
                  lui          t2, 173585
                  slti         tp, gp, -1523
                  srai         gp, s7, 0
                  and          s8, s3, s3
                  slli         a0, s1, 16
                  ori          s6, a1, 801
                  sltu         a5, a0, t3
                  ori          s6, s2, 1897
                  sra          a5, s3, s4
                  nop
                  sltiu        a2, t5, -423
                  srl          a0, a2, t1
                  xor          s4, a2, s11
                  slt          s9, t3, s7
                  sll          a4, t4, a2
                  sub          s11, ra, s8
                  sltiu        s6, t1, 1767
                  slti         a7, t0, -824
                  srli         s6, t4, 11
                  or           t1, t6, t4
                  addi         tp, t1, 1778
                  or           s2, s10, s6
                  slli         s5, a7, 12
                  slt          s3, s9, tp
                  slli         t1, a7, 18
                  srai         a1, s9, 15
                  xor          ra, s2, s9
                  andi         a3, a5, -876
                  srl          a1, s6, s8
                  or           s6, t1, s4
                  lui          s6, 523286
                  addi         s1, s4, -1334
                  slt          a4, t6, sp
                  sll          t5, tp, ra
                  sltu         t5, t3, s1
                  srli         s8, a3, 25
                  nop
                  srli         a6, tp, 9
                  lui          t4, 281880
                  sra          s2, s0, a3
                  auipc        t5, 331912
                  slt          sp, a4, a0
                  lui          gp, 915802
                  addi         s11, s0, 1534
                  slti         s7, s4, 929
                  slti         a3, s2, 389
                  sra          a6, t6, t0
                  slti         a4, a6, 862
                  addi         a0, s10, -2004
                  sltiu        a4, a4, 943
                  addi         s2, a3, -627
                  sra          s5, zero, t0
                  auipc        s9, 878153
                  andi         s8, s4, 1103
                  xori         t1, t6, -581
                  xori         gp, s1, -1516
                  xor          a0, tp, a3
                  sra          t2, t4, s1
                  sltiu        a0, t2, -1441
                  sll          t2, t1, s10
                  xori         a6, sp, 2002
                  srai         s3, t1, 9
                  ori          a0, s9, 1839
                  sub          a3, tp, s4
                  auipc        zero, 308636
                  sll          t5, t4, tp
                  sll          s9, s7, t4
                  or           a1, t1, s11
                  auipc        ra, 683576
                  nop
                  sltiu        s6, t0, -37
                  andi         s8, t4, 1920
                  slti         s6, t3, -1212
                  andi         ra, t5, 1564
                  ori          zero, s7, 144
                  slti         t4, s9, 37
                  andi         t1, a7, 690
                  or           s8, s11, a7
                  nop
                  andi         s7, s4, 848
                  sll          a7, s2, a7
                  add          gp, a7, s10
                  lui          s7, 425656
                  auipc        a2, 905301
                  addi         t1, s10, 1700
                  add          a4, a4, tp
                  xori         a4, tp, -1760
                  xor          t4, a6, a3
                  ori          t4, s2, 1946
                  sltu         t6, s1, a3
                  and          s2, t3, a3
                  sltiu        s9, s4, 1992
                  sra          s2, t1, t4
                  srl          s5, a7, t3
                  srli         s6, tp, 20
                  or           a7, t1, t3
                  sll          s5, t5, gp
                  and          s10, s4, s3
                  ori          a1, a7, 407
                  auipc        a7, 302033
                  sll          a6, a2, gp
                  addi         t1, s10, 1052
                  slli         t2, s4, 1
                  or           s10, s3, ra
                  and          a4, a7, s9
                  slt          s7, s7, s10
                  sll          zero, t4, s4
                  ori          s8, a2, -760
                  slt          t2, a7, s7
                  sll          tp, ra, s11
                  lui          s1, 69844
                  sltu         gp, zero, tp
                  add          s8, t4, s7
                  andi         ra, t5, 363
                  lui          s10, 365738
                  xor          t1, s4, t4
                  add          s1, a3, s0
                  or           s6, a2, s5
                  lui          t4, 593298
                  slli         s10, t5, 28
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           a2, 0x0
                  li           s3, 0x80000000
                  li           s11, 0x55009bc4
                  li           s9, 0xea8aaf25
                  li           a6, 0x87b503d1
                  li           t6, 0xffffffff
                  li           a5, 0x0
                  li           t4, 0x80000000
                  li           s2, 0x0
                  add          t4, t4, s3
                  add          a5, a1, s3
                  nop
                  lui          t6, 549437
                  lui          a1, 272480
                  addi         s11, t6, -1435
                  add          s9, s9, s9
                  add          a1, a5, s9
                  addi         t6, s11, -949
                  addi         s9, a5, 1721
                  lui          s9, 812742
                  add          a5, a1, s2
                  auipc        a6, 238278
                  addi         s3, s9, 675
                  auipc        a5, 163276
                  addi         a6, a2, 370
                  lui          t6, 716131 #end riscv_int_numeric_corner_stream_18
                  xori         s3, t6, 1424
                  auipc        t2, 717685
                  xor          t5, t1, a5
                  and          s1, s10, s8
                  sltiu        a4, s5, 305
                  add          t6, gp, a2
                  auipc        ra, 508979
                  slti         a1, a0, 710
                  ori          a0, s8, -49
                  andi         t1, s7, 944
                  and          s10, s3, sp
                  srli         a2, s8, 3
                  slt          a6, t0, a4
                  and          s11, t5, s3
                  sll          s9, s6, a0
                  srl          a6, zero, zero
                  slli         t6, s8, 12
                  or           a6, a0, a0
                  sltu         t5, s1, sp
                  lui          zero, 227966
                  andi         t2, s3, 969
                  and          a3, t2, t4
                  lui          a6, 355021
                  srl          s9, sp, zero
                  lui          s6, 686496
                  auipc        zero, 622855
                  sub          s11, t3, gp
                  srai         s8, s4, 8
                  srli         a1, gp, 4
                  sra          s6, s4, s6
                  sltu         s10, a3, s3
                  sltiu        zero, s9, 657
                  sltiu        a4, t2, 769
                  srl          sp, t6, t6
                  sltiu        a0, a3, -1405
                  slti         a5, t4, -181
                  lui          t4, 733314
                  auipc        tp, 103024
                  addi         gp, a6, 1135
                  ori          a7, s10, 544
                  srli         a0, s9, 28
                  sub          s11, t0, tp
                  slti         a2, s5, -1573
                  sub          s1, s3, a0
                  srl          ra, s3, t5
                  lui          a0, 207306
                  sltiu        zero, zero, 869
                  lui          a6, 685455
                  xori         s3, t6, 1067
                  slli         a7, a7, 7
                  xori         s5, t0, 705
                  slt          sp, t4, s9
                  sra          t5, a6, t6
                  xori         s3, t2, 889
                  or           a0, a7, gp
                  lui          t6, 340546
                  sltu         t4, s0, zero
                  sltu         a2, gp, t4
                  srai         t5, gp, 4
                  sltu         sp, s7, a0
                  srl          sp, t1, s3
                  sub          s1, a3, tp
                  nop
                  xori         t4, s5, -1447
                  or           a4, s8, a1
                  slti         t4, t2, 1038
                  sltu         a3, a0, s8
                  xor          s11, s0, a3
                  xor          a0, t3, a1
                  sltiu        t4, t0, -860
                  sltu         s7, a2, t3
                  sltiu        s10, s1, -430
                  xori         s7, a0, -6
                  or           s5, a2, tp
                  auipc        a3, 143219
                  nop
                  sra          s3, a5, a2
                  sltu         a6, s0, s3
                  slti         s10, a7, 1957
                  or           t6, s11, a4
                  lui          sp, 46658
                  srl          t6, t6, s5
                  sub          s6, t0, zero
                  srli         s6, t3, 10
                  addi         s6, a0, -848
                  nop
                  srli         a4, s0, 29
                  and          tp, a4, t6
                  lui          zero, 518621
                  sltiu        a2, a0, 599
                  slli         s1, a0, 6
                  slli         t5, a6, 29
                  srai         s6, tp, 26
                  lui          s5, 453382
                  srl          t5, t3, t1
                  sltiu        a1, s0, -972
                  srai         s8, s2, 8
                  and          s6, t6, s5
                  sltiu        a4, s8, -1193
                  xor          tp, a1, tp
                  andi         a1, tp, -1416
                  sltiu        t1, sp, -1837
                  slti         a5, s9, -1536
                  and          s3, t4, t4
                  addi         s5, t6, 1402
                  srl          t6, ra, a1
                  and          a5, tp, s9
                  sltu         s11, tp, t3
                  lui          s2, 835648
                  slt          s3, s6, a2
                  xori         sp, t2, 706
                  slt          t2, s8, s5
                  or           s2, zero, gp
                  srai         a6, s0, 26
                  andi         s2, t6, -1691
                  auipc        s1, 997338
                  addi         a1, s7, -629
                  xori         ra, s2, 1095
                  and          gp, t3, sp
                  sll          s10, sp, s2
                  sra          t5, s1, s10
                  add          t1, a6, a7
                  lui          t1, 624726
                  add          tp, a7, s4
                  sll          s2, sp, a3
                  srli         s3, s5, 6
                  slli         zero, s10, 29
                  lui          a7, 557847
                  auipc        s3, 71465
                  ori          s1, tp, 1535
                  slli         t5, a2, 1
                  addi         ra, s0, 843
                  sra          tp, gp, a0
                  sra          a7, t1, tp
                  and          ra, a4, t6
                  slt          s4, ra, tp
                  srli         s6, a7, 14
                  srl          s2, zero, a0
                  xori         a2, t0, 442
                  sll          a1, s7, a7
                  srl          sp, s0, s3
                  xori         t4, s8, 736
                  xori         s7, a5, -798
                  or           t5, a1, s5
                  andi         a3, s6, 617
                  sltiu        s5, s2, -91
                  nop
                  nop
                  slt          t6, s2, a6
                  slti         gp, s4, 669
                  sub          s8, s3, t1
                  add          t1, s10, s0
                  srai         t2, s0, 26
                  slli         a7, t6, 29
                  sltu         s9, a5, gp
                  srl          sp, t3, a2
                  andi         a0, s1, 214
                  and          ra, t6, gp
                  sra          a2, tp, t6
                  sub          s10, t6, t4
                  xori         t1, a7, 672
                  ori          a3, a6, -1522
                  andi         a3, a5, -392
                  srli         s7, t3, 8
                  srli         t4, s5, 20
                  slli         a3, sp, 5
                  slli         t1, s1, 11
                  xori         tp, t5, 918
                  srai         a3, t1, 14
                  sub          zero, a5, s4
                  lui          s11, 507730
                  slti         s7, t3, -748
                  sll          a2, s3, gp
                  lui          s7, 958016
                  add          s5, s10, a5
                  sltiu        t6, s0, -2031
                  srl          t1, a0, s4
                  or           t4, s11, s9
                  addi         s2, a3, 1890
                  slt          s11, t6, t0
                  addi         s3, gp, -1536
                  ori          a2, s10, -359
                  sll          s10, t6, s2
                  xori         s3, s9, -1622
                  lui          sp, 137506
                  lui          zero, 958323
                  sub          t1, a5, t5
                  nop
                  sll          s5, s8, s6
                  sll          s2, t3, ra
                  sll          a1, s4, s2
                  xor          t6, t2, s4
                  add          a6, s6, t0
                  sltiu        gp, t5, -185
                  sltiu        a2, t5, -1074
                  sltu         s10, s6, s10
                  nop
                  add          s10, t4, a1
                  xori         a1, a3, -623
                  sltiu        gp, a5, 1400
                  xor          s4, s0, a3
                  sra          tp, t1, s3
                  sltiu        a2, t3, 1261
                  addi         a7, t1, -1445
                  and          ra, t5, t4
                  lui          s11, 194000
                  andi         t2, zero, -1374
                  sra          a6, a7, s5
                  slti         a0, zero, -1761
                  sll          t5, a4, zero
                  srl          a1, s9, tp
                  sub          a5, s2, a3
                  or           gp, t4, a7
                  slti         s8, s10, -501
                  srl          s10, s9, s3
                  srai         s6, t5, 9
                  addi         zero, s3, -221
                  nop
                  and          s10, t1, s8
                  sll          a0, a2, tp
                  sub          s11, s4, t6
                  add          a3, s3, s0
                  nop
                  auipc        zero, 745549
                  slti         a3, s10, -332
                  ori          a2, a7, -1441
                  srl          a5, t3, tp
                  andi         s11, tp, -1012
                  nop
                  addi         t1, sp, -558
                  and          s10, t1, s11
                  srai         a3, s7, 16
                  srai         t2, a0, 23
                  srli         s1, s3, 16
                  xori         s9, s9, 818
                  xori         t2, t4, 679
                  auipc        s8, 645086
                  add          a3, s2, t6
                  or           s11, t3, s5
                  slli         s10, s8, 26
                  xori         a7, t0, 731
                  add          a5, t4, s5
                  sltiu        s3, t1, 821
                  srl          t5, s1, t4
                  sra          gp, ra, a4
                  srli         t5, a1, 25
                  slt          s1, s7, a6
                  xor          t2, t5, t4
                  or           a1, zero, a5
                  srl          t4, t5, s5
                  slt          s1, t6, a1
                  andi         s5, s8, -1974
                  srl          s8, t2, t4
                  sub          a0, gp, t0
                  andi         zero, ra, -1514
                  sltu         s3, a0, t2
                  andi         a2, zero, -476
                  slli         t2, ra, 6
                  andi         ra, a1, 1638
                  and          gp, s8, s10
                  add          s4, t4, t3
                  xor          tp, t5, t1
                  ori          a7, sp, 355
                  add          t6, s1, zero
                  sltu         a7, zero, t2
                  add          t2, t6, gp
                  xor          a1, s10, a0
                  nop
                  sltu         t4, s9, a6
                  or           t5, a2, a0
                  xor          zero, zero, gp
                  slli         a0, s1, 15
                  auipc        a2, 720977
                  auipc        a1, 300908
                  srai         a5, sp, 4
                  nop
                  slli         s2, t6, 8
                  slt          a2, s5, s2
                  sra          zero, s4, tp
                  lui          a1, 465246
                  srli         s11, s3, 1
                  ori          s6, a5, 773
                  and          a6, a6, a5
                  sra          a1, s7, s8
                  srai         t4, a5, 7
                  sll          s2, t3, s11
                  sltiu        s10, gp, -1085
                  sub          s8, s6, s3
                  and          s11, s3, a2
                  addi         s3, s10, 661
                  nop
                  add          s4, a0, sp
                  and          t1, t4, a0
                  sll          s11, s3, s1
                  xor          s8, ra, a7
                  xori         s9, a6, 1017
                  srl          a5, s8, s0
                  slli         t4, t6, 7
                  sll          s3, s8, t3
                  ori          a6, gp, 955
                  slli         s6, s7, 17
                  and          tp, t4, s9
                  ori          s4, s3, 12
                  srai         a1, t2, 18
                  xor          s4, sp, t5
                  auipc        a6, 118416
                  sltiu        s4, t5, -1154
                  and          s7, s4, a0
                  srl          t6, t4, a0
                  srai         gp, t5, 8
                  srli         s4, s2, 21
                  slti         t1, a7, -1609
                  addi         s5, s11, -1530
                  addi         s2, t3, -882
                  lui          t4, 477131
                  slt          s7, t5, a0
                  sub          t5, tp, s8
                  addi         t4, a2, 966
                  xor          a4, a6, sp
                  add          s8, a3, s11
                  or           s4, s4, t0
                  sltu         ra, t0, a7
                  slli         t6, s1, 10
                  xori         a6, gp, -1730
                  xori         a5, s5, 1908
                  sltu         a5, s4, s9
                  nop
                  or           a6, a0, s10
                  srli         a0, s9, 16
                  srl          s5, t5, a2
                  and          s6, t3, s10
                  sub          s4, s9, s11
                  sub          s8, a2, s10
                  sltu         s1, s6, a6
                  add          s6, a1, a7
                  sll          t6, t2, t1
                  slt          s8, a7, s7
                  sra          a6, t2, t5
                  slli         s10, t1, 19
                  slt          a1, s5, s10
                  and          s3, s10, a5
                  srl          a1, zero, s7
                  srl          a4, t0, s0
                  srl          s11, zero, a6
                  lui          t1, 471388
                  lui          s10, 297596
                  auipc        s9, 31210
                  srli         t1, s0, 0
                  or           a0, t5, a2
                  slt          t5, s10, s11
                  sltu         s2, s5, zero
                  srai         a6, a0, 19
                  srli         t2, sp, 18
                  sra          s8, a4, s7
                  and          zero, ra, s8
                  xor          s11, gp, gp
                  andi         t2, ra, 1711
                  slt          s4, s5, s6
                  addi         s2, a6, 1006
                  and          s10, a6, zero
                  sltiu        t1, a3, -1480
                  sub          a1, a7, t5
                  addi         a3, ra, -1861
                  sub          t2, a7, tp
                  sra          s2, t1, a2
                  slt          sp, t1, a3
                  sll          a6, a2, a2
                  xor          s3, gp, a0
                  add          tp, t1, a5
                  srai         a3, s8, 19
                  or           s2, t3, s4
                  sltiu        s6, s5, 1178
                  slti         a4, a3, -188
                  nop
                  sltiu        s11, s1, 332
                  sra          a1, zero, s9
                  xori         s3, s11, 1449
                  sltu         a3, s7, s6
                  srli         s8, a2, 23
                  lui          ra, 1023346
                  nop
                  xor          a7, t4, a0
                  srli         a1, a5, 16
                  xor          s10, t1, s10
                  sll          sp, ra, t6
                  slli         s11, s3, 2
                  slti         a1, tp, -1117
                  lui          s5, 415567
                  nop
                  and          a6, a6, s3
                  lui          s3, 440047
                  xori         gp, s9, -152
                  sltiu        a5, s2, -978
                  lui          a5, 455691
                  or           s10, s9, t5
                  lui          s4, 463133
                  sltiu        s6, s7, 987
                  srli         s10, s7, 3
                  sltu         a5, s7, a7
                  addi         tp, s5, -1581
                  srli         a6, a2, 14
                  addi         ra, t1, 16
                  slli         s4, a3, 29
                  sltu         sp, s5, a7
                  sltu         ra, t2, a6
                  li           t2, 0x4948363c #start riscv_int_numeric_corner_stream_15
                  li           sp, 0x0
                  li           s4, 0xffffffff
                  li           t1, 0x80000000
                  li           s9, 0x50d12fa4
                  li           a7, 0x80000000
                  li           s10, 0xb3669f87
                  li           tp, 0xb5ac94a8
                  li           s5, 0xffffffff
                  li           ra, 0x80000000
                  addi         s5, sp, -309
                  lui          s5, 237770
                  lui          s5, 76716
                  auipc        ra, 49619
                  sub          sp, tp, s5
                  addi         s5, s4, 306
                  add          ra, s9, sp
                  addi         ra, t2, -961
                  auipc        a7, 475884
                  add          t2, sp, t2
                  lui          s10, 952909
                  nop
                  auipc        s5, 393282
                  sub          s9, s4, ra
                  auipc        sp, 444043
                  auipc        t2, 423637
                  lui          s5, 636226
                  add          s10, s5, s9
                  sub          t2, sp, t2
                  nop
                  addi         sp, s9, 1484
                  lui          t1, 86960
                  nop
                  sub          s10, s4, tp #end riscv_int_numeric_corner_stream_15
                  xor          s9, gp, a7
                  sltu         a7, a7, s6
                  auipc        a4, 934293
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           s3, 0x0
                  li           s10, 0xffffffff
                  li           a7, 0x80000000
                  li           t4, 0xffffffff
                  li           gp, 0x80000000
                  li           t5, 0xc3277dc0
                  li           s8, 0x0
                  li           s7, 0xffffffff
                  li           t6, 0xfc78f4fa
                  nop
                  addi         a4, t5, 207
                  auipc        s10, 217322
                  addi         a7, s10, 1709
                  auipc        gp, 480698
                  auipc        s8, 569094
                  auipc        s10, 174456
                  nop
                  lui          t6, 601798
                  auipc        t5, 304965
                  sub          s7, t4, s7
                  auipc        s8, 879583
                  nop
                  auipc        s3, 1010462
                  lui          s10, 174404
                  sub          s7, s7, t6
                  add          t6, gp, s10
                  addi         t5, t4, -1786
                  lui          s7, 699115
                  addi         t4, s10, -1813
                  lui          t6, 852504
                  add          s7, s10, s3
                  lui          gp, 349857 #end riscv_int_numeric_corner_stream_7
                  add          tp, s5, t6
                  xori         t1, s2, -14
                  or           a4, s10, s9
                  lui          s10, 593390
                  sra          sp, t3, s0
                  nop
                  add          ra, a6, s8
                  sra          s10, t5, s0
                  and          ra, s2, s1
                  addi         tp, s7, 472
                  xori         s8, a4, 1332
                  or           zero, s8, a3
                  sltu         s3, s0, a0
                  andi         s6, s4, 1786
                  slt          a5, s7, ra
                  auipc        s5, 686475
                  slli         t2, ra, 25
                  srai         a4, a4, 14
                  srai         ra, s7, 15
                  slti         a2, s5, -1969
                  sra          a6, s7, t4
                  slt          a7, s7, tp
                  sltu         ra, t0, a3
                  ori          gp, zero, 580
                  sra          t4, a5, s7
                  srli         t4, s11, 7
                  xor          t1, a7, s3
                  slt          a2, s2, zero
                  and          zero, ra, s11
                  andi         a6, s11, 1680
                  srli         a6, s10, 22
                  slt          s7, tp, s0
                  sltiu        a2, a1, 643
                  slti         s9, t4, -1937
                  xor          t4, s2, a7
                  sltu         s6, a5, t1
                  auipc        sp, 36303
                  sltiu        tp, t2, 412
                  slti         s5, a3, 147
                  slli         s11, t2, 14
                  nop
                  nop
                  sltu         a6, a6, t5
                  or           s11, a0, s11
                  sltiu        s6, sp, -611
                  andi         s1, s1, -399
                  sltu         s4, s7, t6
                  slti         s6, t0, 1685
                  sub          a0, s4, t3
                  nop
                  lui          t1, 693154
                  sltu         a7, t1, tp
                  sll          t4, s7, t6
                  sub          s8, s10, a2
                  and          s6, a2, tp
                  lui          s10, 187485
                  lui          a3, 115415
                  li           s10, 0x5fc248b4 #start riscv_int_numeric_corner_stream_8
                  li           s8, 0xa150c2f5
                  li           s9, 0xffffffff
                  li           s2, 0x0
                  li           s11, 0x0
                  li           t1, 0x0
                  li           tp, 0x0
                  li           s7, 0xffffffff
                  li           ra, 0x0
                  li           a4, 0x0
                  nop
                  auipc        s10, 161405
                  sub          s8, s9, a4
                  add          t1, s7, s8
                  add          s10, s9, tp
                  addi         s10, s9, 626
                  lui          s9, 122456
                  lui          s7, 1010877
                  sub          s7, s7, s10
                  addi         s11, ra, -425
                  lui          s8, 648578
                  addi         s9, s9, -889
                  nop
                  nop
                  auipc        s2, 472991
                  addi         a4, ra, 678
                  sub          s9, t1, ra
                  sub          s2, s2, s8
                  auipc        t1, 598825
                  add          s2, a4, s7
                  addi         tp, t1, -865
                  sub          tp, s9, ra #end riscv_int_numeric_corner_stream_8
                  xori         ra, t2, -89
                  sll          t5, a7, s4
                  lui          s10, 575896
                  xori         t1, a1, 536
                  or           s10, a0, s10
                  addi         ra, t4, 709
                  xori         t5, s6, -282
                  sll          s5, a3, t6
                  sltu         a2, a7, a3
                  slti         s11, t6, -831
                  srai         tp, s9, 6
                  or           s2, t5, a5
                  xor          s10, gp, t3
                  sra          zero, s0, t4
                  auipc        t5, 602275
                  sll          s11, s7, a4
                  lui          a5, 704688
                  auipc        a4, 894059
                  srl          s2, s7, tp
                  ori          s6, s0, -1401
                  sltiu        a0, s3, -438
                  srl          s2, t5, t4
                  xor          s5, s0, s10
                  sra          t1, t3, a1
                  andi         gp, s5, 753
                  sltiu        zero, s1, 1444
                  slt          s3, gp, s5
                  sll          s9, t5, a4
                  and          s5, s6, t4
                  andi         s4, zero, -2016
                  auipc        a0, 281091
                  slti         s8, s9, -566
                  slli         t2, a7, 9
                  nop
                  and          t1, t1, s9
                  sll          s6, a6, a7
                  sub          a6, s10, s8
                  auipc        a6, 342919
                  and          s11, a2, a6
                  and          s6, s10, s3
                  and          a5, s11, gp
                  xor          s6, a0, t3
                  slli         a5, s7, 12
                  xori         s10, s11, 1237
                  sra          a0, s6, s8
                  auipc        ra, 641823
                  slt          ra, s8, s6
                  srl          s3, a1, ra
                  ori          a2, s9, 1749
                  addi         a0, s2, 565
                  andi         tp, zero, 1178
                  and          a5, a6, t2
                  add          a5, t1, s3
                  and          t1, s5, a1
                  srai         t2, t1, 11
                  srli         gp, s5, 18
                  srai         sp, t2, 0
                  srl          tp, s11, a6
                  auipc        a2, 206455
                  auipc        t5, 886882
                  xor          s11, tp, a6
                  srl          tp, s2, t6
                  sra          a2, s5, a4
                  sltiu        a1, a7, 357
                  sub          s8, a4, s7
                  sltu         s1, t1, s8
                  sub          a7, s3, s0
                  xor          s8, a3, a3
                  add          a2, s11, tp
                  sltiu        a4, s5, -325
                  xori         a3, a0, -380
                  andi         s7, s2, -902
                  srai         a5, t6, 10
                  andi         t1, ra, 858
                  sra          a5, s5, s8
                  auipc        s2, 645209
                  sra          sp, a4, a0
                  add          ra, t3, s1
                  sltu         t5, t5, a0
                  andi         s7, ra, -309
                  sub          s5, s7, s6
                  lui          a6, 226725
                  srli         gp, t5, 23
                  sltiu        s10, a0, -12
                  slt          t1, t4, a0
                  and          t6, tp, a4
                  sra          t2, a1, s7
                  sub          a6, sp, t4
                  slti         s3, s4, 1187
                  addi         ra, s4, 1054
                  ori          a6, a3, 1553
                  sltu         zero, zero, s6
                  add          s4, s6, a4
                  slli         t4, gp, 20
                  lui          t5, 843921
                  srl          t5, t1, t4
                  slli         s1, t3, 27
                  slli         a6, a2, 27
                  add          a2, s9, t1
                  add          a0, a1, a5
                  nop
                  sra          s6, ra, a6
                  andi         t1, ra, -1664
                  slti         t4, t5, 1906
                  slli         t6, gp, 30
                  sltiu        s11, zero, 102
                  xori         t4, t2, 1304
                  andi         a1, s4, 180
                  sra          a5, s3, s10
                  or           a5, s9, s10
                  addi         s3, t3, 1457
                  and          s7, s4, t2
                  srai         s8, s10, 27
                  sltu         s1, t5, sp
                  srai         t5, t4, 20
                  and          s3, t1, t5
                  srli         s3, t4, 24
                  sub          s7, ra, s5
                  andi         s8, zero, -21
                  xori         a4, s10, -1392
                  xor          s1, s6, s6
                  andi         a7, tp, 241
                  sub          tp, s0, t0
                  andi         sp, t0, 531
                  slti         a4, a4, 1104
                  sub          s5, t5, t4
                  sll          s6, ra, a2
                  or           t2, a2, t0
                  add          t2, a2, a4
                  or           ra, a7, a3
                  lui          a3, 607607
                  addi         gp, a3, 718
                  slli         zero, t4, 31
                  nop
                  srai         gp, s5, 9
                  or           t1, s1, s6
                  sub          s11, s8, tp
                  slti         sp, gp, -1920
                  srli         s11, t2, 29
                  ori          s4, a7, -18
                  srl          t6, s7, a5
                  sll          t1, s3, s9
                  lui          s11, 14188
                  andi         s6, s6, 64
                  srai         tp, a5, 2
                  sltiu        s1, a1, -1549
                  add          s3, t1, ra
                  nop
                  or           zero, gp, s6
                  srli         a7, a1, 4
                  and          s2, a6, s6
                  nop
                  ori          t2, a7, -622
                  xori         t1, tp, -1327
                  or           a3, t1, zero
                  add          gp, sp, a5
                  nop
                  ori          a6, s5, -745
                  slti         s11, t6, 1333
                  srl          t2, t2, s3
                  sltu         a2, zero, t5
                  slt          s5, s1, t0
                  nop
                  xori         t1, t6, -1255
                  sll          s6, a2, t0
                  srai         s11, a4, 21
                  nop
                  nop
                  slli         a2, a1, 22
                  slti         a4, t5, 2008
                  addi         t4, s9, -1781
                  sll          zero, a0, s9
                  slli         gp, s9, 29
                  xor          s9, tp, t4
                  srl          sp, t2, s4
                  sra          a5, t6, t3
                  sub          a0, s7, ra
                  lui          s6, 380005
                  sltiu        s1, gp, -2039
                  and          a7, s8, s8
                  sub          s8, s8, t1
                  srai         t1, s0, 14
                  slti         a4, t5, 1036
                  sub          s5, s1, t1
                  sra          a7, s5, t6
                  and          ra, a2, a2
                  sub          gp, a0, s7
                  srl          tp, s6, s11
                  add          s4, t3, s7
                  add          a1, a0, s1
                  sra          a7, s11, s9
                  slt          a2, ra, a3
                  slli         s1, tp, 3
                  or           s5, a5, t6
                  slti         s10, a6, 767
                  sll          s5, ra, a7
                  lui          a2, 536046
                  add          a0, s7, t3
                  ori          s9, t2, 808
                  slli         a3, s6, 19
                  or           s6, s7, t0
                  slli         s7, t1, 19
                  slti         s9, s6, 549
                  and          s3, tp, s6
                  ori          zero, t4, -14
                  srl          a6, s7, s0
                  auipc        s10, 748001
                  or           t6, gp, s4
                  sll          t4, t0, t0
                  lui          t4, 169923
                  slli         t4, t4, 26
                  srli         s8, a2, 8
                  srl          a2, a6, a1
                  xor          a1, a6, zero
                  xori         gp, t2, 225
                  slti         t2, s2, 1092
                  auipc        a4, 334815
                  sll          zero, zero, s7
                  sub          s2, a3, t2
                  lui          a7, 265603
                  xori         s1, a5, -1822
                  slli         sp, s2, 9
                  or           s5, a5, s6
                  srai         zero, gp, 6
                  ori          sp, s2, -1511
                  sub          a1, a2, s11
                  ori          s9, s0, 925
                  ori          s9, s9, 144
                  sra          a0, t5, tp
                  xor          s1, t4, a6
                  lui          t2, 647127
                  srli         s4, t4, 13
                  add          a5, ra, t2
                  srai         tp, t3, 29
                  add          s9, gp, s11
                  sub          s8, a7, ra
                  sub          a5, s10, s3
                  xor          a7, a3, s8
                  srai         sp, a1, 10
                  nop
                  ori          t4, t0, 1588
                  or           a3, a4, t4
                  sll          s11, ra, ra
                  ori          t2, s8, -1884
                  auipc        t6, 875453
                  xori         t6, tp, -32
                  andi         a3, a7, 0
                  slt          s11, t3, ra
                  auipc        s7, 250308
                  sltiu        t5, s6, -763
                  srl          a3, s3, s7
                  srli         a4, a6, 18
                  sll          a2, s11, s4
                  sra          s6, t6, s5
                  sra          s5, a4, s2
                  sra          a5, t1, a6
                  nop
                  srl          s5, t2, s9
                  sltiu        gp, ra, 110
                  auipc        a7, 65794
                  sra          s8, a5, s10
                  srai         s3, a0, 5
                  andi         s9, s6, -825
                  slti         a5, ra, -1596
                  nop
                  xori         a0, s1, 319
                  srai         s8, t1, 19
                  or           a0, a2, a0
                  sltiu        tp, s6, 321
                  sra          a0, s3, a0
                  ori          s1, s5, 1614
                  auipc        t4, 622853
                  and          s6, t4, a5
                  sltu         s10, s8, t3
                  slti         t2, s9, -713
                  ori          t4, t6, 1222
                  sltu         t6, sp, s6
                  auipc        a1, 138198
                  xori         t4, gp, 1961
                  and          s9, t0, a1
                  slt          s7, a6, a6
                  ori          a4, a5, 1611
                  xor          s6, ra, s1
                  xor          s10, a6, tp
                  xor          t5, t1, s1
                  sltu         a0, s8, a7
                  andi         s10, a5, -414
                  lui          s6, 670700
                  slt          a7, t4, s7
                  slli         sp, t2, 31
                  xori         t5, a1, 117
                  or           s6, ra, s9
                  slli         s1, gp, 3
                  sll          t6, a0, a2
                  sltiu        s4, t3, -1349
                  and          ra, a6, s1
                  and          t2, tp, s8
                  addi         a4, s2, -452
                  auipc        a3, 1007083
                  nop
                  slli         s7, s0, 1
                  srli         t4, a1, 15
                  sll          t6, t6, a6
                  or           t1, gp, s10
                  xori         s8, s5, -1016
                  or           ra, t1, s0
                  auipc        s4, 932036
                  or           s10, s4, s6
                  srl          s2, gp, t4
                  slli         s7, s1, 30
                  auipc        tp, 971992
                  xor          s2, ra, a7
                  slti         sp, s7, -268
                  xori         a1, a1, 1165
                  andi         s3, t1, -1568
                  nop
                  ori          a0, t5, -1445
                  sltiu        a6, a0, 404
                  add          a0, t2, t5
                  add          s10, t3, a5
                  sltu         a5, s1, s7
                  sub          s2, t0, s5
                  nop
                  srai         a1, t4, 25
                  sltu         a1, s8, t0
                  add          a3, s4, gp
                  addi         gp, t1, -250
                  lui          gp, 459893
                  srl          a1, gp, a3
                  slli         a7, sp, 19
                  nop
                  xori         s11, t4, -324
                  sll          a7, a3, s8
                  slti         s8, s1, 1422
                  slli         t4, a0, 16
                  andi         zero, tp, 458
                  slli         gp, s4, 13
                  xor          gp, s11, a1
                  xor          a1, s2, zero
                  srl          s7, sp, s6
                  slli         a7, t3, 2
                  xori         t6, s10, -811
                  srl          s2, s4, s1
                  sra          a1, ra, s7
                  or           t1, a5, s4
                  andi         sp, a0, -1101
                  slli         s7, s3, 4
                  nop
                  andi         s5, t6, -955
                  xori         t5, s3, 1968
                  add          t5, t5, a2
                  and          s3, t5, s7
                  add          s1, t2, a7
                  srai         s11, s11, 12
                  slti         a1, zero, -1450
                  sub          a5, s3, s8
                  xori         sp, s11, -1112
                  or           s6, a7, a1
                  sll          t6, a1, a5
                  ori          a5, gp, 695
                  xori         s10, tp, 745
                  sltu         s8, s7, s11
                  srai         t5, s5, 6
                  srli         a5, a7, 30
                  or           ra, a2, s4
                  xori         a3, s5, -1115
                  andi         s8, s7, -1264
                  sub          s11, sp, tp
                  slti         ra, s7, -555
                  xor          tp, sp, a1
                  xor          s10, a4, s11
                  auipc        a6, 625663
                  ori          s1, a3, -1294
                  sltiu        s7, a5, 313
                  xori         t1, s5, 35
                  auipc        s9, 394139
                  nop
                  lui          s2, 570798
                  xor          zero, a2, s5
                  add          ra, a0, ra
                  slt          t2, t5, a5
                  lui          tp, 711688
                  slti         t1, t3, -1619
                  srl          tp, gp, t3
                  or           s4, a2, a7
                  srl          a4, tp, s4
                  auipc        t4, 284054
                  slt          s9, s6, t0
                  lui          s6, 860078
                  slti         s8, a2, 2005
                  lui          s5, 66155
                  slti         a1, s7, 120
                  add          gp, a7, t1
                  slli         ra, sp, 16
                  sltiu        s5, t6, 2012
                  and          s1, a3, t4
                  andi         s3, s7, 1589
                  addi         a7, tp, -1128
                  slti         s5, s3, 1319
                  addi         a4, zero, 1806
                  and          tp, a1, zero
                  srl          a6, t0, a6
                  slti         a1, a6, -784
                  xori         s9, zero, -1430
                  auipc        t5, 593135
                  sltu         t6, s3, t1
                  slti         t1, s11, 390
                  xori         s4, s2, -1601
                  or           s9, s3, a4
                  sub          t6, s8, t0
                  sltiu        gp, s9, 676
                  auipc        s10, 449334
                  or           s9, s3, t3
                  srl          s7, t0, s11
                  sub          t4, s7, s11
                  and          s4, t4, a2
                  xori         a7, a7, -2018
                  add          gp, s6, t6
                  sub          a3, a0, a0
                  add          s3, a3, t2
                  slt          t6, t6, a5
                  nop
                  nop
                  slti         a0, a4, -523
                  sltu         s10, sp, a2
                  slli         a7, s5, 18
                  srl          s7, s0, t1
                  sltu         s8, s2, s4
                  xori         t4, s4, -317
                  srai         ra, s11, 8
                  xor          a1, a6, t3
                  sub          gp, t3, a5
                  ori          s10, s2, 575
                  srli         s3, t6, 8
                  slti         s1, a0, -1924
                  ori          s9, t6, 1432
                  slt          a1, s5, t6
                  xori         s4, s7, 2024
                  or           s8, s8, a3
                  xori         gp, sp, 919
                  add          sp, s8, gp
                  sra          a2, ra, s4
                  srai         t5, s1, 20
                  auipc        t5, 544917
                  add          tp, s0, s7
                  add          s7, a6, s3
                  andi         a3, t2, 197
                  sub          a1, s1, s6
                  slti         t6, s9, 988
                  auipc        gp, 645614
                  slli         s6, s5, 3
                  slt          a0, s6, zero
                  add          t2, a2, s11
                  slli         gp, a4, 8
                  slli         s6, a7, 3
                  or           tp, a0, t6
                  lui          s6, 497820
                  srli         s5, sp, 23
                  add          a0, t2, zero
                  srli         s1, a0, 13
                  srai         s7, a5, 3
                  xor          s3, a0, s3
                  sltu         t5, s7, t4
                  sub          s7, a5, s1
                  sltiu        s11, t4, -1734
                  slli         sp, t4, 26
                  srl          a5, s11, a4
                  slli         s1, ra, 24
                  nop
                  slti         tp, s5, -913
                  lui          t6, 774857
                  srl          gp, s5, t6
                  slt          a0, a6, ra
                  addi         s5, t2, 488
                  srai         zero, s3, 14
                  lui          ra, 884620
                  xor          a6, sp, t6
                  srl          a4, t5, s11
                  nop
                  sll          s7, t2, s4
                  nop
                  sub          a4, a3, zero
                  sll          s3, t6, s4
                  nop
                  add          a0, s10, sp
                  sub          a4, s7, s3
                  auipc        s4, 810139
                  or           tp, t1, s4
                  add          a6, t3, a2
                  xor          t2, t2, s8
                  sub          tp, a3, tp
                  srai         tp, s9, 22
                  xori         a4, gp, -988
                  xori         sp, t5, -882
                  addi         s10, s7, 1682
                  sub          a4, s9, s1
                  add          a3, t0, s9
                  xori         a4, t0, 809
                  slti         s6, gp, -820
                  and          t1, t3, s4
                  slli         s5, sp, 16
                  srli         s8, a6, 4
                  ori          s5, t0, 1886
                  addi         s10, a4, -1546
                  lui          s10, 763065
                  sltiu        t4, s0, 1673
                  srl          tp, a7, s9
                  lui          ra, 796066
                  addi         a4, s1, 148
                  slli         sp, s9, 20
                  sltiu        a7, s2, -471
                  auipc        a4, 54961
                  sltiu        ra, s10, 650
                  sra          s8, s6, s11
                  slti         a1, a1, 947
                  auipc        t1, 642149
                  xori         s8, a4, 1984
                  srai         s3, ra, 18
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           ra, 0x0
                  li           t4, 0x0
                  li           s6, 0x0
                  li           t1, 0x0
                  li           tp, 0x0
                  li           a3, 0x80000000
                  li           s7, 0x8cd61ac8
                  li           s1, 0xcaf47c57
                  li           s9, 0x80000000
                  add          a0, s1, s6
                  add          s9, s6, s6
                  add          s9, a3, tp
                  addi         a0, s9, -1289
                  sub          s9, tp, ra
                  sub          a0, s1, a0
                  auipc        a0, 564040
                  nop
                  auipc        s1, 351344
                  sub          a3, t1, s7
                  auipc        s6, 811480
                  addi         a0, t4, -1742
                  sub          a0, tp, t1
                  auipc        a0, 725155
                  sub          s9, s1, a0
                  nop
                  sub          s6, s9, a3
                  add          a0, ra, s1
                  sub          ra, tp, s6
                  lui          s1, 255772
                  auipc        s6, 656662
                  nop
                  sub          tp, a0, a0
                  sub          s7, a0, s6
                  add          tp, t1, s1
                  add          ra, t4, s9
                  addi         s1, s9, 496
                  add          a3, s1, t1
                  addi         tp, a3, 1854
                  lui          t4, 101251 #end riscv_int_numeric_corner_stream_5
                  slli         a7, tp, 4
                  auipc        t2, 682649
                  add          t1, t6, zero
                  srai         t5, a3, 8
                  auipc        zero, 1816
                  sll          s4, zero, t6
                  srai         s2, zero, 21
                  xor          s2, s10, s3
                  srli         a6, gp, 22
                  xor          ra, t0, t6
                  and          s11, t2, s3
                  xori         gp, t2, -597
                  or           t2, sp, t3
                  and          s11, a7, a4
                  add          s8, a6, a2
                  slt          t5, a5, a3
                  sltu         a5, s4, s7
                  ori          s3, a4, 333
                  xor          s9, a0, t6
                  sltiu        s11, t5, -238
                  sra          t5, t0, zero
                  sra          t2, sp, a1
                  lui          a5, 761705
                  srl          ra, s1, a6
                  andi         s3, t1, -1120
                  sll          gp, sp, s10
                  xori         t1, s1, -786
                  srai         t5, s5, 31
                  auipc        tp, 710749
                  or           s8, s10, a3
                  srl          zero, s5, s8
                  srli         a7, s5, 12
                  srl          s1, t3, t3
                  add          t1, tp, s4
                  auipc        sp, 828700
                  xori         s1, t0, -586
                  andi         s8, s10, 652
                  nop
                  auipc        t4, 291726
                  nop
                  nop
                  slli         a7, t6, 28
                  andi         s6, a3, 1445
                  lui          t5, 600168
                  xor          s5, a2, gp
                  xor          t1, t4, s2
                  addi         s11, s0, 1049
                  sll          t2, ra, s2
                  lui          a6, 121330
                  andi         ra, t5, 901
                  srai         s11, t2, 3
                  srli         s11, t2, 25
                  sra          s11, a1, t2
                  sltiu        t6, a2, 1827
                  sltiu        gp, s7, 1695
                  sll          t2, s10, a4
                  sll          a4, s6, t3
                  add          a2, s10, sp
                  sltu         s1, s8, a5
                  xor          t2, a2, a3
                  sub          gp, ra, tp
                  lui          s6, 310622
                  slt          ra, t3, t4
                  srl          s10, t4, a5
                  xori         s1, s3, 1766
                  srai         t1, s9, 10
                  slt          s5, tp, zero
                  xor          s2, a4, a2
                  andi         gp, s6, -1413
                  xor          a3, a1, a6
                  or           t1, ra, s0
                  lui          a6, 469043
                  xori         ra, t3, 711
                  sltiu        s9, a5, 1924
                  lui          s3, 720159
                  andi         s5, a7, 1294
                  addi         sp, s3, 1172
                  or           t5, t3, s0
                  lui          a0, 748777
                  andi         t4, t3, 1156
                  slli         a4, s0, 21
                  sltu         t6, s10, s9
                  ori          s3, t3, -556
                  srli         s7, t2, 23
                  add          t5, s5, t0
                  addi         a7, s5, 56
                  srli         a5, a3, 24
                  slli         s10, t0, 15
                  sub          zero, t1, tp
                  xori         a5, a5, 1548
                  slt          a2, t1, s11
                  addi         a6, ra, 100
                  slti         s3, s10, -602
                  sub          s10, a6, t3
                  or           a3, tp, s8
                  xori         tp, a3, -1513
                  sra          t2, s10, zero
                  srl          s7, s3, t5
                  xori         s1, a1, -1223
                  andi         t4, t0, -195
                  xor          s5, t6, zero
                  add          ra, t5, t0
                  sub          a3, a4, a7
                  andi         s10, a0, 236
                  sra          s9, a2, s1
                  auipc        t4, 692820
                  srl          s10, t3, sp
                  sub          s9, s5, s2
                  ori          t6, s8, -772
                  srl          s11, a2, a2
                  slti         t4, ra, 195
                  sltu         a5, s11, s10
                  nop
                  auipc        s1, 548605
                  sll          s2, s9, a3
                  srli         t5, zero, 11
                  sra          t4, s8, s6
                  or           s9, s1, s1
                  auipc        s6, 49115
                  andi         a3, t0, 1172
                  sub          s9, gp, t6
                  and          s11, s11, s3
                  sltiu        t4, a5, 1244
                  addi         a5, s2, -2045
                  slli         a5, s4, 12
                  slt          s7, s6, a7
                  slt          a3, gp, s0
                  sub          a5, t6, s11
                  lui          s8, 589429
                  xor          s6, s7, sp
                  auipc        a7, 555308
                  srl          s9, a3, sp
                  ori          a3, s2, -1600
                  slti         s10, s11, -1672
                  sll          s8, t0, a4
                  sltiu        gp, s2, 382
                  srli         s10, t3, 31
                  ori          s11, zero, 1180
                  slt          tp, s9, t1
                  add          s10, s6, s8
                  srl          s6, ra, zero
                  xor          a7, s9, s2
                  auipc        tp, 692392
                  slt          gp, s8, a5
                  slt          sp, s2, s6
                  srl          a7, a1, s7
                  xor          t5, a3, s7
                  or           a6, gp, s3
                  sub          ra, s3, a3
                  sll          a4, t6, a7
                  lui          gp, 851668
                  sltiu        s3, t5, 1692
                  add          s8, t6, t0
                  sltiu        t6, t6, 416
                  sltiu        sp, a1, -803
                  slli         a6, t2, 12
                  addi         a2, s9, -1249
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           s2, 0xf94b9daa
                  li           t6, 0x80000000
                  li           a1, 0x80000000
                  li           gp, 0x14ccf61e
                  li           s10, 0x0
                  li           s7, 0x80000000
                  li           t1, 0x80000000
                  li           a2, 0xaad4479c
                  li           s8, 0x80000000
                  nop
                  addi         s10, t1, 1607
                  add          s2, gp, t1
                  nop
                  addi         s2, t6, -1615
                  lui          s8, 468598
                  auipc        s8, 337740
                  sub          s8, s2, s2
                  lui          t6, 439780
                  addi         t6, gp, -748
                  nop
                  sub          a2, gp, t1
                  lui          a1, 468413
                  add          a7, t6, gp
                  add          s10, gp, gp
                  add          a2, a1, t6
                  auipc        s2, 76534
                  auipc        s10, 120329
                  nop
                  add          t6, s10, t1
                  nop
                  lui          a2, 393361
                  auipc        gp, 985842
                  nop
                  sub          a1, gp, a2
                  sub          s8, s8, t6
                  add          a7, s8, s7 #end riscv_int_numeric_corner_stream_13
                  sub          t6, a7, a6
                  auipc        s7, 566059
                  srai         s4, s10, 12
                  srai         tp, a0, 12
                  add          t4, a3, tp
                  slli         a7, a3, 9
                  andi         a3, t3, 1294
                  slti         s11, t3, 1324
                  ori          s8, s10, 1784
                  sra          s7, t3, s5
                  srl          s7, a7, t0
                  sltu         s8, a5, t0
                  and          s11, ra, zero
                  auipc        s8, 157929
                  andi         gp, zero, 892
                  sll          a3, a1, a7
                  sub          t5, s2, s7
                  srl          a1, s11, a5
                  sra          s4, t4, t1
                  sltu         a4, s2, s9
                  slt          a1, s1, a0
                  sll          t1, s9, a0
                  or           s3, t4, s0
                  andi         s2, s2, 105
                  srai         t5, s10, 15
                  sra          s5, t2, t3
                  sub          a0, a2, t6
                  add          t6, s8, ra
                  slli         s7, a4, 2
                  slt          a3, t3, a6
                  and          a2, ra, s8
                  ori          t2, s0, 1518
                  auipc        t2, 1040193
                  ori          s10, s3, 183
                  slt          s2, t1, s7
                  xori         s3, t2, -1183
                  srli         a7, sp, 26
                  xori         s10, s11, -653
                  sub          a2, s2, a6
                  srli         s6, s11, 25
                  lui          s1, 88862
                  xori         a7, gp, 1197
                  sra          a2, gp, a0
                  sltiu        a7, s9, 165
                  and          ra, t6, s5
                  or           s3, t4, a1
                  slli         s6, t3, 1
                  sll          s11, tp, a2
                  addi         s8, a6, 1535
                  auipc        s4, 176447
                  sra          t6, s6, ra
                  auipc        s3, 708153
                  slti         sp, t2, -1425
                  slli         t6, gp, 24
                  addi         s6, s2, 1319
                  xor          sp, s8, s8
                  lui          a5, 1011960
                  ori          a6, a2, -1330
                  slt          s4, s5, s6
                  sltiu        gp, t3, 1892
                  sltu         s9, s6, a0
                  auipc        a7, 478819
                  lui          t2, 794723
                  xor          gp, t0, s5
                  slti         s5, s10, -714
                  sub          a2, s11, a1
                  auipc        s5, 107918
                  slti         a5, tp, 1072
                  nop
                  srl          s5, s0, s11
                  sltiu        gp, sp, 1674
                  addi         t6, a3, 571
                  xori         a0, t0, 1684
                  sltiu        s4, gp, -311
                  sltiu        s9, gp, 1848
                  auipc        a5, 1046565
                  andi         t6, t2, -1951
                  srli         t1, sp, 1
                  sub          a2, s11, s5
                  addi         a1, s11, -1416
                  auipc        sp, 1042141
                  slti         s4, t1, 20
                  srl          t2, s0, s4
                  slli         t5, t3, 27
                  ori          a4, ra, -545
                  addi         sp, a3, 1058
                  ori          a4, a0, -271
                  sltiu        tp, s5, -1460
                  slti         a2, t4, 239
                  sltu         a7, a6, s3
                  xori         s10, s7, 266
                  and          s5, a3, s10
                  sll          tp, s0, a2
                  addi         sp, a6, -1227
                  andi         t1, t3, 1407
                  auipc        ra, 1036
                  srai         s2, a6, 20
                  nop
                  nop
                  lui          tp, 595367
                  andi         s4, a4, 965
                  or           s7, s2, s8
                  sub          t4, a6, a2
                  sltiu        gp, t1, 588
                  srl          s3, t2, a3
                  nop
                  srli         a0, a5, 14
                  sltu         a3, s11, zero
                  sra          s4, s0, s9
                  addi         s6, a2, -1459
                  lui          s9, 435566
                  auipc        s6, 274607
                  srli         a3, s1, 25
                  or           s11, s5, s8
                  add          s5, a6, tp
                  srl          t2, t5, a5
                  ori          t5, a4, -1950
                  or           ra, s1, s3
                  srai         s6, sp, 10
                  xor          s4, a6, t4
                  slli         a7, s2, 23
                  xor          a0, a0, s1
                  sll          s4, zero, s9
                  xor          ra, a6, t3
                  sltiu        a4, s6, 376
                  ori          t2, s8, -1017
                  or           a2, s7, s6
                  auipc        a2, 749145
                  sltu         gp, s4, s6
                  sub          t6, t5, s1
                  and          s1, s4, t2
                  sll          a4, s2, t0
                  sra          t1, a0, s5
                  xori         s6, t3, -1762
                  addi         zero, s9, 1786
                  nop
                  slt          s11, t4, s8
                  and          sp, s2, s5
                  sll          a5, a3, t4
                  nop
                  sub          a1, s4, a7
                  slli         s10, s3, 26
                  auipc        t5, 1036587
                  addi         a1, a2, -1049
                  and          s2, a7, a1
                  srli         zero, a5, 11
                  sra          tp, t0, t6
                  and          a2, s1, t6
                  srai         a7, ra, 13
                  srai         s3, sp, 9
                  sltiu        s3, a4, 830
                  sltu         gp, s4, s3
                  srli         s5, a5, 30
                  ori          a6, t0, 713
                  slt          s10, t2, a7
                  slti         t1, a6, -1519
                  addi         s2, a5, 294
                  xori         t5, a1, -1836
                  andi         t4, s10, -1852
                  sltiu        s10, a0, 1968
                  slt          a0, tp, s7
                  sll          tp, tp, s9
                  lui          s7, 490462
                  xor          zero, a5, s1
                  add          tp, s11, s1
                  or           s9, t6, s7
                  slti         zero, t5, 691
                  nop
                  srai         a4, a7, 8
                  addi         s2, t4, 1521
                  sra          a7, a5, gp
                  and          t1, a2, a6
                  sra          s6, s1, s10
                  sltiu        t1, s4, -1747
                  sltu         t1, gp, a7
                  sltiu        t4, sp, -47
                  sltiu        a0, s9, -1303
                  ori          ra, s4, 1732
                  andi         s3, s9, -1826
                  ori          s1, s3, -149
                  srai         t2, sp, 28
                  ori          s8, t2, -1708
                  or           s11, a3, t4
                  auipc        s3, 620386
                  auipc        s3, 380293
                  xor          a2, s3, a7
                  addi         s5, s4, -338
                  xori         a2, a2, 1232
                  srl          ra, a3, t4
                  srli         s6, ra, 27
                  srai         a2, a3, 19
                  slli         a6, gp, 0
                  xor          t4, ra, ra
                  nop
                  xori         s9, a1, -56
                  ori          s10, a0, 1572
                  slt          a2, s3, s10
                  sll          t4, a5, a6
                  slt          s7, s10, t5
                  xor          a1, s9, a1
                  and          t2, s4, s5
                  slt          s9, t4, a7
                  sltu         gp, s5, s8
                  ori          s11, t6, 991
                  sra          a3, s5, s6
                  auipc        a3, 649586
                  andi         s1, s4, 1554
                  srli         s10, s4, 9
                  andi         ra, s3, -1334
                  sltiu        a7, s10, -134
                  auipc        t1, 1026874
                  sub          ra, tp, a4
                  sll          t4, a1, a6
                  srl          s5, a0, a6
                  add          gp, t4, a1
                  addi         t1, s4, -47
                  or           s2, s3, s3
                  or           a5, s0, t2
                  srl          a3, t4, s7
                  add          tp, tp, s5
                  add          s2, zero, s10
                  andi         a5, t1, 260
                  slli         a5, sp, 14
                  slli         t4, t0, 5
                  nop
                  and          s4, a7, tp
                  and          s4, s9, s0
                  ori          ra, t2, 2042
                  addi         a4, a6, 1533
                  slli         s5, s4, 28
                  lui          t6, 712174
                  and          zero, a7, s0
                  ori          s5, a6, 119
                  sub          a2, zero, a1
                  xor          t1, tp, t4
                  slti         s8, t2, 605
                  ori          t5, gp, -1796
                  srli         a7, ra, 18
                  and          a6, s4, gp
                  ori          s9, a5, -900
                  addi         s2, a2, 661
                  sub          s5, a0, gp
                  nop
                  auipc        ra, 11545
                  sltiu        s4, ra, 1698
                  auipc        s2, 773070
                  nop
                  srl          a6, s7, s0
                  srai         a7, a3, 29
                  ori          s11, s8, 1999
                  srl          a0, t0, s8
                  sltiu        s11, a7, -200
                  nop
                  addi         s1, s3, -303
                  add          a2, zero, a4
                  slli         s2, tp, 16
                  srl          t2, a1, s4
                  ori          s3, t1, 1364
                  sra          a4, ra, s7
                  xor          s7, t4, a5
                  slt          t4, t0, s1
                  lui          s9, 1040931
                  slli         t6, s1, 21
                  sll          gp, t4, gp
                  sra          t4, a5, s3
                  slti         t6, a6, -1180
                  nop
                  addi         s2, t1, 1710
                  nop
                  srli         s11, s6, 9
                  slli         tp, s11, 12
                  srai         s8, s0, 12
                  xor          a1, zero, gp
                  sltu         t5, ra, s7
                  sltu         gp, ra, a7
                  sltiu        s10, a0, -429
                  nop
                  auipc        ra, 37302
                  sll          a4, gp, t5
                  sra          sp, s8, s7
                  srli         a2, a5, 8
                  andi         gp, s9, -1899
                  sltu         s8, a6, gp
                  ori          s11, a3, 1710
                  xor          s1, a6, a0
                  or           a6, t4, a3
                  xor          a7, gp, t3
                  auipc        t4, 737232
                  srai         a0, s11, 23
                  slt          a1, ra, sp
                  add          s5, s4, sp
                  add          s4, zero, s2
                  srl          a6, s11, gp
                  addi         tp, ra, 60
                  slli         t1, a1, 1
                  slt          t5, t3, t6
                  auipc        a5, 473470
                  srai         ra, tp, 23
                  slti         s3, a3, 124
                  xori         a5, s5, -1244
                  sltu         s1, s0, a4
                  addi         a7, a5, 1023
                  ori          a0, a1, -1791
                  slt          s9, tp, s4
                  andi         gp, s1, 1347
                  nop
                  lui          t4, 413054
                  auipc        s9, 338820
                  xor          a4, a6, s2
                  sub          t5, s10, s9
                  and          s8, a5, s0
                  ori          s7, gp, -228
                  and          sp, s1, a3
                  lui          t1, 579204
                  slli         s11, t1, 19
                  sltu         gp, t6, s2
                  and          t4, s8, s7
                  or           s10, s10, s6
                  xor          zero, a5, s1
                  sub          s11, s11, a7
                  srl          a1, a0, s11
                  sub          a2, t3, a0
                  slt          t6, t6, t2
                  sub          s6, ra, a7
                  lui          s6, 34158
                  sra          a0, ra, a7
                  and          s3, s10, s9
                  lui          a4, 535617
                  sltiu        a0, s4, 2012
                  xor          sp, a0, t4
                  or           gp, s11, t4
                  srli         s4, t1, 0
                  sub          a3, a3, s2
                  xori         s9, s7, -1676
                  sra          a7, gp, a1
                  xor          a2, s5, t0
                  ori          t1, sp, -816
                  add          a5, s2, s8
                  slt          s1, s10, t4
                  sltu         zero, s7, a2
                  sll          s2, s3, tp
                  nop
                  lui          s11, 927016
                  sll          ra, t3, s11
                  addi         s5, s6, 28
                  add          s11, s9, s2
                  slti         a7, t0, 1541
                  addi         a0, a3, -1346
                  xor          a0, t3, ra
                  srl          a6, t6, t1
                  slti         a5, t4, 1744
                  ori          gp, s4, 1457
                  srai         s2, s5, 4
                  xor          t2, a1, a0
                  srai         s5, t1, 6
                  andi         a2, a4, 1107
                  add          s2, s6, a4
                  sll          s9, s1, a7
                  add          a7, s2, s3
                  sub          t4, s5, s3
                  sub          gp, t5, s4
                  srli         a5, a7, 21
                  sra          s2, s3, tp
                  sra          s11, a7, t4
                  srai         a2, s2, 12
                  andi         a7, s2, 718
                  sltiu        s7, s1, -253
                  sltu         s2, zero, a4
                  srli         tp, tp, 22
                  ori          s11, a4, 1140
                  lui          s4, 226310
                  xor          gp, s9, s8
                  sra          s8, a6, s9
                  sra          t2, t6, a4
                  xor          a0, s5, t1
                  lui          a2, 931003
                  xor          s1, s1, s11
                  nop
                  nop
                  andi         s10, a6, 1885
                  nop
                  auipc        a3, 264970
                  sll          s5, a2, a1
                  auipc        a3, 440352
                  srai         s3, s9, 4
                  ori          t4, s7, 82
                  lui          sp, 951575
                  slt          s10, s6, s0
                  andi         tp, s10, 3
                  lui          gp, 747509
                  auipc        ra, 933086
                  slli         t4, a1, 9
                  auipc        a6, 125131
                  xor          sp, s7, s10
                  sll          sp, s0, s1
                  sltu         zero, a4, s11
                  slli         a7, tp, 8
                  addi         a1, zero, 380
                  sltu         t6, t5, zero
                  srai         a4, a7, 23
                  auipc        a4, 432205
                  or           a1, s8, gp
                  add          a6, tp, t1
                  sltu         s8, t3, a0
                  sra          a0, a6, t0
                  sub          t1, s9, t2
                  and          s4, tp, t6
                  srli         s1, s11, 28
                  sltu         a3, a5, zero
                  sra          zero, a6, a4
                  sra          a0, zero, s9
                  slt          s3, gp, t2
                  addi         s5, t4, -1
                  sub          s7, s4, zero
                  xor          gp, zero, s9
                  xor          s6, tp, s9
                  srli         s5, t0, 23
                  slt          gp, ra, a4
                  nop
                  slti         a6, a7, 1402
                  lui          s2, 156480
                  srai         a3, s4, 22
                  auipc        s1, 578411
                  andi         a7, a6, 1646
                  lui          a0, 373600
                  sra          s6, a4, sp
                  srl          a4, s4, t3
                  lui          s10, 122472
                  addi         s6, s7, 1423
                  xori         s2, s9, 1322
                  sltu         s8, s3, a3
                  srai         a7, s9, 4
                  nop
                  lui          s11, 918952
                  srai         a7, a7, 1
                  lui          sp, 99643
                  add          a1, t5, a2
                  xori         s8, a5, 780
                  lui          t5, 209067
                  and          t1, t1, sp
                  lui          t4, 907077
                  auipc        t5, 187150
                  slli         s11, s8, 9
                  and          t6, s1, s0
                  and          a0, s9, t3
                  nop
                  xori         a3, s10, 67
                  sltu         t1, a1, tp
                  xor          s11, s8, s8
                  andi         s1, a0, 603
                  ori          s3, t2, -120
                  slt          a6, t3, t1
                  lui          ra, 333318
                  sra          s4, s3, s8
                  sra          s6, t0, t3
                  slli         t4, s3, 12
                  or           a3, s1, a1
                  addi         s6, a5, -1678
                  xor          s2, t3, s9
                  add          s2, t0, a7
                  sltu         t2, t4, tp
                  slt          s2, s9, s4
                  srai         s5, tp, 25
                  slli         s3, a1, 27
                  xori         a2, s4, 85
                  sll          s3, s6, s8
                  slti         s7, a7, 1553
                  nop
                  sll          t5, a2, a1
                  nop
                  andi         s3, t6, 1033
                  slt          s1, s10, s5
                  sll          a3, ra, a7
                  andi         s6, s5, 755
                  sltu         zero, s11, t1
                  nop
                  add          s8, s3, a5
                  slt          sp, s4, s3
                  slt          s2, s9, a3
                  sltu         zero, s0, t0
                  lui          a2, 668571
                  addi         s4, s5, -1979
                  srl          t5, s4, gp
                  nop
                  add          a0, s0, s5
                  auipc        t6, 1018925
                  ori          a0, t4, -1004
                  addi         a0, t2, -481
                  ori          ra, a6, 922
                  srl          s2, t5, t4
                  lui          tp, 191357
                  lui          gp, 185981
                  slli         t6, s8, 7
                  slt          t1, a5, ra
                  sra          s7, s8, t2
                  or           a2, s9, ra
                  addi         s10, sp, 4
                  and          s3, t2, s11
                  slt          s8, gp, s10
                  xor          ra, sp, ra
                  xori         a7, s2, -2033
                  srl          zero, s2, ra
                  sub          a3, t3, s9
                  add          a1, s4, t1
                  add          t4, t1, s3
                  slti         sp, tp, 1298
                  nop
                  xor          s4, a7, s7
                  ori          a0, s1, 228
                  srli         a3, a7, 19
                  andi         s9, s7, 762
                  xori         t1, t2, 2026
                  sra          sp, s2, s4
                  slt          a6, a1, t1
                  xor          t6, a4, s8
                  addi         t1, tp, -1643
                  nop
                  srli         a0, s5, 21
                  srai         s2, s4, 18
                  and          a7, a2, a6
                  addi         a0, sp, -775
                  srai         a5, zero, 9
                  ori          zero, t3, -1252
                  andi         s11, tp, -1207
                  slt          a5, a1, a6
                  xor          s7, s3, s0
                  lui          ra, 63676
                  sub          a0, s9, t5
                  auipc        s3, 745284
                  srl          a1, s5, s6
                  slti         s11, t5, -1099
                  xor          s5, a1, t5
                  sltu         s1, s0, s11
                  srli         a2, a5, 14
                  xor          a5, s11, s10
                  sub          s5, s9, a0
                  lui          s4, 992967
                  slt          a7, t1, s6
                  sltiu        t6, a4, -560
                  andi         t2, ra, 1489
                  addi         s8, s9, -1230
                  ori          s9, s6, 1787
                  srli         s4, zero, 25
                  lui          s11, 26995
                  add          a0, ra, ra
                  sra          t6, a6, s11
                  sub          s2, s6, s4
                  lui          t4, 859556
                  srli         s9, t1, 10
                  srli         t5, a2, 6
                  srai         t4, s2, 5
                  srli         a4, s2, 23
                  xori         zero, sp, -163
                  srl          a3, a6, s3
                  nop
                  sltu         t4, t2, a0
                  andi         a1, a7, -1046
                  xor          a2, tp, s1
                  slli         ra, ra, 19
                  auipc        zero, 512752
                  sltu         a7, a7, t3
                  ori          a7, a4, 375
                  and          s6, a0, a4
                  slli         gp, t4, 31
                  slli         t4, s3, 10
                  sltu         a5, a2, s7
                  lui          t6, 551606
                  slli         s5, a4, 17
                  srai         t1, s11, 10
                  sltiu        sp, sp, 1865
                  srl          s4, a6, t2
                  or           gp, s10, s0
                  slli         s2, t4, 1
                  add          s8, s4, gp
                  sra          a5, s11, t5
                  nop
                  xor          t1, t3, s4
                  auipc        gp, 1022526
                  ori          s6, t1, -122
                  xori         s9, a7, 801
                  sll          s10, t5, s8
                  lui          s2, 414067
                  sltiu        a2, zero, -454
                  sra          a6, zero, t4
                  sltiu        a6, a2, 759
                  slt          s8, s4, s9
                  srai         gp, s2, 2
                  slli         tp, s9, 17
                  srai         t6, s3, 17
                  sltu         s11, a0, s8
                  sub          a3, t4, a1
                  sltiu        a4, s7, -586
                  srl          s3, s6, a0
                  or           t4, s6, a7
                  add          s8, zero, tp
                  or           a3, s3, t1
                  andi         a6, a2, 1763
                  addi         t2, t6, -1177
                  ori          s6, s6, -1700
                  nop
                  xor          s2, t4, a0
                  ori          a5, gp, 879
                  auipc        a0, 201867
                  sll          ra, t2, a3
                  lui          s11, 464552
                  add          s6, gp, s9
                  sub          a5, a1, s0
                  or           a3, t6, s4
                  slti         ra, t4, 183
                  srli         s2, a4, 21
                  slli         t2, s11, 23
                  sll          s6, a6, s2
                  lui          t6, 736426
                  andi         s7, a4, 696
                  ori          t5, zero, -978
                  sltiu        ra, s2, 1683
                  srli         s8, t0, 3
                  slti         t5, s2, -1203
                  slli         s1, s2, 25
                  ori          a2, s11, 1247
                  nop
                  srai         s4, s7, 22
                  andi         s3, t2, 1731
                  sub          a7, t0, s6
                  sltu         a5, t2, t5
                  and          s5, s0, s4
                  srai         a5, t1, 31
                  auipc        a0, 122242
                  add          s8, t3, t0
                  or           ra, s6, ra
                  add          s3, s11, a0
                  srai         a0, s7, 28
                  sra          ra, zero, t0
                  sra          s2, t4, s7
                  xor          s2, a5, t6
                  sra          s1, a7, s10
                  sltu         gp, gp, t6
                  add          a6, s9, a0
                  xor          s10, s2, sp
                  srl          a3, s0, a5
                  sltu         zero, a1, t4
                  sltu         s4, t5, a7
                  sltu         s9, a2, s5
                  auipc        gp, 534326
                  slli         a7, a2, 21
                  srli         a2, s4, 16
                  addi         t6, s4, -964
                  slt          t2, s7, a7
                  and          t2, t2, a3
                  srai         sp, zero, 2
                  xor          gp, a7, t4
                  xor          s11, s7, zero
                  xor          sp, s1, s0
                  auipc        a5, 801989
                  sll          a7, a3, s6
                  slli         gp, s8, 15
                  nop
                  sll          tp, t2, t5
                  srl          s1, a2, s9
                  srl          s7, a5, a5
                  slti         sp, a7, -193
                  and          a7, t3, a6
                  slt          s4, tp, s11
                  sub          ra, t3, t5
                  xor          a4, a7, s3
                  srli         sp, a5, 5
                  nop
                  slli         s4, t1, 31
                  nop
                  slt          s10, a7, a7
                  addi         t1, a4, -1500
                  nop
                  andi         s1, s8, -661
                  xori         a0, a7, 1929
                  slli         a2, a4, 21
                  srli         gp, s1, 11
                  sltu         a0, s0, s6
                  slli         a6, a6, 11
                  srai         tp, a3, 21
                  sltiu        s8, s5, -394
                  addi         s1, a1, -29
                  slli         a6, t1, 21
                  srai         s5, a3, 3
                  slt          t4, t3, a1
                  slti         a0, ra, -1270
                  srai         s11, a0, 12
                  and          ra, s5, s8
                  and          t6, zero, ra
                  xor          a6, a2, s6
                  ori          s4, zero, -261
                  or           a4, sp, ra
                  nop
                  add          t5, tp, s9
                  addi         s1, a2, 107
                  ori          a1, t0, -616
                  sltu         a1, s3, t5
                  xori         s9, a5, 962
                  sra          sp, s11, a5
                  auipc        t2, 5996
                  add          s7, s1, s2
                  sltiu        sp, a4, 1437
                  add          sp, a2, a0
                  slti         s9, a2, 1621
                  srl          a6, gp, a4
                  slti         a6, ra, -469
                  xori         t6, a0, 1217
                  andi         s10, t1, -372
                  andi         t1, a7, -167
                  xor          a1, tp, t1
                  ori          s3, t5, -1119
                  slti         a1, tp, -722
                  slti         s4, s7, 514
                  srl          a4, s0, s0
                  slt          a4, s8, t6
                  auipc        a1, 750376
                  xori         s2, t0, 1600
                  sll          s4, t5, a1
                  srl          a0, a0, s9
                  andi         sp, a1, 796
                  nop
                  srai         a3, s10, 11
                  slti         a6, t4, -1538
                  xori         t5, a3, 292
                  auipc        s9, 367833
                  lui          s7, 224241
                  srl          sp, a7, tp
                  add          a7, s5, s3
                  addi         t1, t5, -611
                  xor          s1, t2, t5
                  slti         ra, a7, 1127
                  nop
                  lui          s8, 91384
                  sll          s3, a4, a0
                  nop
                  and          a7, a6, s8
                  add          a6, a1, ra
                  slt          s2, a1, t6
                  sll          a7, s11, a7
                  srl          a4, a4, zero
                  xor          t1, a0, t4
                  and          s7, sp, s10
                  slti         s2, s11, -744
                  slli         tp, a5, 21
                  andi         s6, t4, -713
                  srl          s9, s3, t6
                  and          s5, t5, zero
                  sltu         s8, s9, s6
                  andi         a7, s1, 1196
                  slli         s8, t6, 12
                  addi         ra, a6, -1142
                  srl          ra, s6, s4
                  lui          s4, 637388
                  nop
                  xori         sp, s3, 1405
                  ori          sp, t1, -107
                  andi         a2, s10, -1950
                  slti         s1, t6, 2042
                  nop
                  lui          a2, 639824
                  nop
                  nop
                  slt          a6, gp, a1
                  add          t1, s6, s6
                  sub          s3, a4, s6
                  nop
                  xori         gp, t4, -924
                  xori         s1, a3, -1691
                  or           s6, t5, a6
                  xor          s5, s6, t6
                  or           ra, a6, s9
                  xor          s7, t3, t5
                  addi         s5, s10, 968
                  lui          t4, 662533
                  andi         t4, zero, -148
                  nop
                  slt          ra, a7, gp
                  sltu         sp, s0, t6
                  srai         a0, s4, 4
                  addi         s7, t1, -693
                  srli         a7, a2, 26
                  andi         a0, sp, 573
                  nop
                  slti         s1, s1, -1022
                  sltu         a7, s0, t4
                  srai         a6, gp, 9
                  nop
                  and          t2, a6, s8
                  slt          gp, a3, a7
                  add          s11, gp, s3
                  ori          a7, a6, -1360
                  slt          s5, a7, a2
                  sll          sp, ra, s3
                  sltiu        zero, sp, -679
                  addi         s3, s10, -1706
                  sra          t1, s5, s10
                  slli         s4, s3, 1
                  sll          s6, s3, s2
                  srl          zero, s0, s9
                  slti         a7, s7, 1202
                  and          s3, gp, zero
                  lui          s2, 702875
                  or           a2, t1, s5
                  srai         a0, s6, 12
                  sub          s8, a3, a6
                  auipc        a5, 648156
                  srli         t2, s9, 11
                  srl          t2, t1, a7
                  slli         tp, a0, 21
                  xor          s2, s0, s2
                  sltiu        a3, s8, -713
                  lui          sp, 538428
                  add          a0, s2, s2
                  ori          s7, a6, -1413
                  sub          ra, t3, a1
                  sll          ra, a7, t0
                  srl          a7, a2, s2
                  auipc        sp, 505933
                  addi         a3, s6, -1754
                  xor          t5, t1, a2
                  add          s7, s6, a3
                  or           zero, a6, s11
                  and          t4, s6, t4
                  slli         t5, t5, 6
                  sltu         t6, a3, s5
                  slt          s10, s7, ra
                  sll          a2, t3, t6
                  xor          a5, a0, s1
                  slti         a3, s10, -1091
                  slti         gp, s3, -954
                  auipc        ra, 877392
                  sll          a6, a7, gp
                  xori         s9, t4, -537
                  xori         s10, s6, -2022
                  sll          s10, s2, s1
                  sltiu        t6, s6, -1388
                  xori         gp, gp, 173
                  srl          gp, t2, t6
                  auipc        a4, 498826
                  and          s6, a4, s2
                  lui          t1, 191371
                  sub          a3, s5, t5
                  ori          s8, a4, 1922
                  addi         t1, s9, 1605
                  srai         t2, s9, 3
                  andi         a6, a4, -1447
                  auipc        tp, 696423
                  nop
                  and          t2, gp, t5
                  or           s2, a7, zero
                  xori         t6, t0, 1176
                  add          s8, a4, s2
                  slli         a4, a2, 11
                  ori          s10, t3, -347
                  sll          a2, t5, t0
                  sltiu        t1, s1, -1056
                  lui          s9, 432434
                  slli         t4, s6, 19
                  slt          s10, s3, a0
                  ori          s10, t5, -1430
                  xor          s9, t4, s2
                  auipc        tp, 687609
                  addi         s7, s11, -846
                  add          sp, s7, a2
                  srl          a6, a2, s1
                  addi         a7, t2, -288
                  slt          s7, s1, s2
                  lui          s11, 600858
                  nop
                  slt          s2, s6, a7
                  slt          s3, s3, gp
                  slti         a1, s9, -1654
                  andi         s6, zero, -901
                  srli         ra, a6, 30
                  sll          a2, s2, s5
                  auipc        a7, 525637
                  srli         tp, s8, 4
                  sltiu        gp, t0, 2013
                  andi         t6, s7, 1737
                  addi         s1, t6, 1429
                  ori          a2, s11, -1728
                  andi         ra, a3, -883
                  auipc        s10, 950498
                  srli         t6, ra, 16
                  xor          t5, s6, a5
                  and          a0, t2, s3
                  nop
                  or           a0, s10, t0
                  nop
                  and          a7, s6, a3
                  slt          a5, s9, a0
                  sra          a2, s3, a4
                  srai         t6, t6, 31
                  slli         tp, gp, 22
                  xori         tp, a3, -1450
                  andi         a2, s1, -309
                  auipc        a0, 1221
                  andi         s8, s10, -1491
                  xor          gp, s7, tp
                  xor          a4, a6, t2
                  auipc        s5, 613341
                  sub          ra, a6, zero
                  slti         t1, s8, 1508
                  add          s10, zero, s6
                  nop
                  nop
                  sub          s9, t0, s4
                  nop
                  sll          s7, s10, t1
                  and          s10, t2, s0
                  srl          a3, a2, s2
                  srai         s3, s8, 2
                  srli         a5, t3, 7
                  sltiu        s5, a2, -247
                  addi         t6, t2, -162
                  sra          t5, t4, s3
                  sra          a7, zero, s1
                  srli         gp, t5, 15
                  auipc        s9, 232341
                  lui          s6, 903455
                  srai         t6, a1, 22
                  lui          t6, 47169
                  sra          s11, a7, a5
                  slt          s5, t4, s1
                  lui          t6, 522552
                  sra          t4, s2, s1
                  or           t6, s4, a4
                  slli         s1, t6, 30
                  lui          s6, 541786
                  sll          s4, tp, a0
                  auipc        t5, 192092
                  addi         t6, a0, -839
                  sltiu        t5, sp, 3
                  andi         t4, s0, -1532
                  ori          t5, s5, 2031
                  sra          a4, s8, s4
                  add          t1, t4, t3
                  srli         s5, zero, 7
                  and          tp, t2, s8
                  xori         a6, a1, -1605
                  sra          gp, s11, a5
                  addi         a3, s1, 73
                  slt          s11, zero, s0
                  sub          t2, s0, t0
                  slli         s4, gp, 19
                  sub          s3, a1, a5
                  sub          s9, a6, s8
                  xor          t2, s7, zero
                  andi         a7, gp, -402
                  sll          t6, s11, tp
                  lui          ra, 99980
                  sll          s1, s5, s6
                  add          s6, a4, t5
                  andi         s1, t1, -402
                  and          s6, a1, sp
                  andi         gp, t6, 967
                  and          tp, t4, s6
                  sub          a5, s8, s5
                  sltiu        t4, a1, -998
                  nop
                  xori         t6, t6, 104
                  or           sp, s7, s8
                  slti         s9, a5, 218
                  srli         a2, a1, 28
                  ori          s7, s3, -337
                  srai         t1, s3, 22
                  sltu         s11, s3, sp
                  sub          a6, t4, s10
                  sub          gp, t1, t0
                  add          ra, a2, s6
                  and          sp, ra, sp
                  addi         zero, tp, -1433
                  sltiu        s9, a7, -1604
                  lui          t5, 566631
                  slt          a4, s6, s6
                  sltu         a4, t0, t5
                  slli         a7, a0, 27
                  or           s7, tp, s3
                  slt          s10, s7, s5
                  srai         ra, s8, 2
                  add          a6, s0, ra
                  or           s2, sp, a7
                  andi         a2, tp, 810
                  srai         sp, s6, 2
                  slti         gp, a4, 1315
                  xori         sp, s9, 1869
                  sra          a5, s5, t3
                  srl          a0, s3, s4
                  sra          s7, a5, a6
                  or           a2, a5, t2
                  slti         t1, sp, -1667
                  slti         t2, s7, -1923
                  srli         t6, t3, 24
                  slt          t1, a4, ra
                  ori          s11, s0, -1629
                  slli         s8, s10, 14
                  sub          s9, s9, a5
                  srai         s7, s7, 19
                  nop
                  sltu         ra, s8, t0
                  andi         t5, a6, -1537
                  sra          s6, a0, ra
                  slli         s5, t0, 11
                  addi         s11, t4, -364
                  sll          s3, s11, a6
                  xor          a7, t6, a1
                  sub          s3, t4, s2
                  srl          s9, s9, gp
                  slti         zero, t1, -771
                  sltu         zero, s3, a0
                  sra          s2, s5, t5
                  sltiu        s2, a0, -749
                  srli         s6, t3, 21
                  slti         s4, a6, -1391
                  add          t5, s3, t6
                  sll          ra, a2, s3
                  sll          s7, t0, t6
                  srl          a0, t6, s7
                  andi         s6, s7, -1734
                  slti         tp, a1, 85
                  sll          a6, s6, zero
                  auipc        s3, 893889
                  auipc        a1, 949833
                  or           t2, a4, s3
                  sub          a2, t5, a0
                  sltu         s4, t6, sp
                  sra          s5, a6, s1
                  sub          a5, tp, s2
                  srl          s10, s0, t0
                  addi         ra, s8, -751
                  add          t1, s0, ra
                  slti         s2, s11, 806
                  addi         a3, s0, 1727
                  sra          tp, zero, s7
                  nop
                  add          s8, a7, s4
                  srli         s6, tp, 9
                  sll          s11, tp, a5
                  addi         s8, t6, 558
                  xor          s3, t5, sp
                  auipc        s6, 787971
                  or           t2, s3, a6
                  sll          t6, ra, t4
                  sub          a3, s9, s4
                  ori          a3, ra, -2023
                  andi         s10, a5, 154
                  add          s10, t4, s5
                  or           t1, a0, tp
                  lui          zero, 369791
                  add          tp, a4, s1
                  nop
                  ori          s7, a5, 24
                  ori          gp, t2, -215
                  srl          a3, s11, a0
                  lui          a3, 1015921
                  sub          t2, t4, s3
                  sltu         a1, s10, s1
                  srai         zero, s7, 10
                  slt          sp, sp, s2
                  nop
                  xor          gp, t5, s7
                  slt          s2, s6, t1
                  srli         s11, s8, 13
                  sll          s11, a3, t5
                  lui          a2, 102426
                  or           s6, t3, t1
                  auipc        a1, 276728
                  sra          s2, a4, a7
                  slti         s10, ra, 1102
                  srai         t1, t6, 28
                  srai         s4, s9, 17
                  sll          s2, a3, a3
                  nop
                  srl          tp, t2, s2
                  srai         a4, s10, 7
                  sltiu        tp, t4, 195
                  slti         s9, s8, 1406
                  xor          t4, gp, a7
                  srai         tp, a5, 1
                  or           a1, t1, s8
                  sub          tp, t2, t2
                  lui          t4, 519232
                  or           tp, zero, gp
                  ori          a5, a7, -1167
                  andi         zero, s8, 1862
                  slti         s1, t3, 1508
                  srl          a1, s10, a5
                  lui          sp, 488912
                  addi         t2, s8, -1603
                  sub          s6, ra, s1
                  slti         a3, s8, -1013
                  auipc        t4, 107639
                  lui          t4, 948412
                  xori         a0, a0, 550
                  lui          s3, 150537
                  xori         t5, s4, -913
                  sltiu        a6, s9, -1302
                  andi         a0, t5, 517
                  andi         gp, t0, 405
                  ori          a5, a7, -1585
                  slli         a3, s4, 6
                  auipc        t5, 432097
                  andi         zero, s8, -79
                  slti         tp, s6, 151
                  auipc        a1, 368885
                  xori         s6, s3, -805
                  andi         a3, s7, -1535
                  slt          t4, t3, t5
                  slt          t5, a5, s6
                  addi         a1, a5, 1819
                  lui          s2, 221085
                  xor          a1, a4, a7
                  or           a1, t5, a5
                  and          s6, a0, a5
                  andi         sp, t3, -1400
                  sltu         ra, zero, t4
                  lui          s5, 284994
                  srli         a4, s3, 13
                  slt          t4, a6, a5
                  andi         s6, t3, 113
                  add          s6, a5, t0
                  slt          a5, s1, a5
                  lui          sp, 610921
                  or           t1, s5, a2
                  nop
                  xori         tp, s4, -1797
                  slli         a3, s11, 19
                  sltu         s10, ra, t4
                  sltu         s5, a5, s9
                  andi         s2, s7, -1669
                  sltiu        zero, a5, -410
                  slli         s9, a1, 31
                  lui          ra, 726495
                  srai         a0, t5, 23
                  sll          s7, t3, a2
                  xor          s5, a6, sp
                  sub          ra, a6, t3
                  auipc        gp, 316307
                  nop
                  xori         zero, s9, 462
                  andi         a3, s11, -1701
                  addi         s10, zero, 1546
                  lui          s8, 373030
                  andi         s7, a4, -378
                  sra          gp, t1, s8
                  add          t6, s2, t2
                  sra          a5, s4, s9
                  srai         a0, s7, 3
                  srli         a0, a0, 30
                  srl          s5, s6, a7
                  add          s11, tp, s8
                  srli         a3, s4, 14
                  srl          sp, a4, a6
                  sltu         s8, a2, t3
                  xori         zero, s9, -928
                  srli         t4, t6, 17
                  ori          s10, s10, 1334
                  sltu         a3, a4, a4
                  srl          s3, t3, gp
                  sra          sp, gp, s1
                  or           s11, a2, s4
                  ori          s9, s9, 1494
                  sltu         t4, s9, a0
                  slli         t5, a3, 16
                  lui          a1, 293169
                  srai         ra, s4, 5
                  sll          s3, s4, a6
                  ori          tp, t0, 1197
                  and          a5, ra, t2
                  srai         s3, a0, 8
                  auipc        s3, 16990
                  or           s1, s10, a1
                  auipc        s6, 969867
                  slli         s6, s4, 19
                  lui          a2, 298542
                  nop
                  and          s9, ra, t0
                  sltiu        a0, s0, -934
                  slt          gp, s9, a5
                  sub          a5, s4, s1
                  srli         t6, a4, 5
                  sra          s5, a3, s10
                  srai         gp, t2, 16
                  srli         s7, s9, 24
                  auipc        s1, 548900
                  srl          gp, ra, a0
                  slli         tp, s9, 13
                  or           t1, t2, t2
                  slti         zero, zero, 1970
                  xori         a4, a5, 1705
                  and          a1, s6, s10
                  srl          a5, s7, sp
                  sltu         a2, s0, t5
                  slti         s9, zero, -1079
                  nop
                  andi         sp, s8, 960
                  slt          s2, t6, t5
                  xori         gp, a6, -767
                  srli         s1, t5, 29
                  andi         a1, s11, -1093
                  and          gp, a3, t0
                  xor          gp, s8, a6
                  sra          a1, s4, t4
                  slti         s6, a5, -1752
                  slli         a4, s3, 27
                  addi         s9, t1, 508
                  lui          a7, 441645
                  srai         t6, s2, 4
                  xor          tp, t5, s11
                  or           s8, s2, s10
                  slli         t4, s3, 22
                  slti         a4, a7, -125
                  sra          tp, a7, a6
                  auipc        s4, 441674
                  srli         t2, s2, 14
                  srai         a2, s0, 29
                  slt          a2, s10, gp
                  xori         t4, s1, -1179
                  srli         ra, t1, 25
                  srai         gp, s7, 17
                  xori         s3, t5, -223
                  sra          s10, s9, a7
                  slli         s3, s4, 15
                  sub          a6, sp, s4
                  add          t4, s6, tp
                  addi         s10, s7, 628
                  andi         s3, a6, 296
                  nop
                  sll          s11, t1, zero
                  auipc        t4, 1027089
                  auipc        s5, 330745
                  sll          s10, s6, zero
                  ori          a3, a2, 1151
                  sub          a7, a5, t2
                  srli         s3, s1, 11
                  addi         s7, a1, 1535
                  xori         a1, s3, -1585
                  add          s6, a3, s11
                  sub          a6, s10, t4
                  and          s11, a7, t1
                  andi         a4, s2, -1575
                  sra          s5, t3, s11
                  and          t6, gp, s4
                  sub          s6, s6, a1
                  auipc        t4, 757197
                  and          s4, s1, ra
                  srai         a2, t3, 13
                  nop
                  sra          zero, s0, t6
                  slti         ra, s5, -988
                  slli         s4, s8, 26
                  xor          a3, a5, t5
                  slli         t1, t4, 29
                  slt          ra, s7, t4
                  and          s10, s5, a3
                  or           zero, a4, s4
                  slt          t4, t0, tp
                  lui          s11, 183643
                  srli         sp, s5, 8
                  slt          s8, zero, a3
                  add          s4, a3, t0
                  slti         ra, s6, 2007
                  sltiu        ra, s2, 1444
                  and          t1, s7, a3
                  sra          a4, s6, s0
                  auipc        ra, 999700
                  sra          a4, a7, a1
                  andi         t5, t0, -1525
                  nop
                  and          a6, a1, t6
                  andi         s7, zero, 789
                  sra          s8, a2, a2
                  and          s6, zero, t1
                  slli         t2, a1, 12
                  lui          s1, 807900
                  ori          s4, s3, -876
                  xori         s9, s1, 2027
                  sltiu        ra, s2, 1489
                  add          a3, t6, s8
                  or           s10, gp, t2
                  xor          gp, tp, s3
                  ori          s3, a3, 1884
                  srai         s2, a5, 0
                  srli         tp, a5, 27
                  xori         sp, a1, -1306
                  sra          s2, s2, gp
                  auipc        a3, 584296
                  nop
                  auipc        s7, 1016297
                  sltiu        s2, t1, 1496
                  auipc        s10, 679623
                  lui          s8, 299599
                  slti         a3, ra, 1431
                  sub          zero, s4, s3
                  add          s7, t0, a0
                  and          t1, s6, s3
                  ori          a1, t3, 2028
                  or           sp, t5, t1
                  sra          a0, t3, tp
                  sltu         a6, tp, s10
                  addi         s10, t3, -652
                  sltiu        a7, t5, 51
                  lui          a1, 678141
                  srai         s2, ra, 25
                  slli         t2, t2, 7
                  slli         t6, s3, 24
                  srai         a1, s3, 14
                  or           a0, s8, gp
                  nop
                  xori         s7, t2, -1424
                  nop
                  andi         s3, s11, 812
                  lui          s7, 344499
                  add          s6, gp, s11
                  srl          t2, s7, s8
                  slli         s6, t6, 5
                  srl          zero, s5, s0
                  xori         s9, gp, 661
                  xor          a2, a3, s10
                  sub          t1, s8, s5
                  auipc        t2, 516290
                  xor          s7, t6, s0
                  andi         s8, a7, 1055
                  sltiu        tp, s8, 1812
                  slti         s5, s2, 650
                  or           ra, a4, sp
                  auipc        s11, 452977
                  and          a0, a2, a4
                  srli         a1, a1, 18
                  and          a7, s2, s6
                  ori          s8, a2, 1756
                  add          sp, s2, t6
                  srai         a5, t6, 26
                  sltiu        s4, t3, -333
                  slli         s9, t5, 25
                  sltiu        t1, sp, 1133
                  slt          s3, a5, t4
                  slti         s3, t2, 1420
                  slli         s5, t2, 28
                  xor          t2, s3, s9
                  sltiu        t2, s10, -1650
                  or           zero, a5, a6
                  srl          t5, s1, t0
                  sub          t1, s2, s8
                  lui          t1, 676619
                  ori          a1, t0, 1284
                  add          a2, t4, t5
                  sltiu        s6, tp, 1741
                  andi         a5, a4, -1877
                  nop
                  andi         a5, s7, 1585
                  addi         s7, t6, -1962
                  add          t6, a4, a5
                  sltu         a0, s9, sp
                  sll          a7, sp, s1
                  auipc        s2, 88040
                  and          s8, s3, a0
                  slli         s5, a2, 12
                  sub          s10, t0, s8
                  and          s9, s8, a5
                  xori         t4, s5, -1861
                  sra          a0, s7, zero
                  and          s7, s0, s7
                  add          a2, s3, a2
                  sltiu        a1, t0, -1161
                  xori         gp, s6, -880
                  add          s9, t6, a6
                  or           tp, s7, s7
                  andi         a5, t0, 858
                  sltiu        a7, s3, 1958
                  sub          s8, gp, s7
                  xori         s6, s6, 1829
                  addi         gp, t4, 176
                  sub          s6, s4, s2
                  xori         a7, t4, -304
                  addi         tp, t5, 376
                  andi         gp, a5, 1250
                  add          gp, s4, a5
                  srl          s3, a2, a6
                  slti         s11, s4, 354
                  sll          s2, s4, a0
                  lui          s6, 312563
                  srli         s3, a5, 12
                  xor          s11, t0, a5
                  slli         s10, tp, 18
                  nop
                  srli         t6, t3, 15
                  add          a0, s1, s10
                  or           a7, sp, zero
                  slti         s8, t3, 880
                  srai         s5, s5, 30
                  sltu         a6, t6, a5
                  lui          a5, 991762
                  lui          t4, 474920
                  auipc        a6, 934542
                  sltiu        s9, s6, -1127
                  addi         s3, zero, -752
                  auipc        a6, 285748
                  slli         a2, zero, 25
                  xori         zero, gp, -1480
                  srli         s8, a4, 28
                  or           a2, s0, s1
                  sltiu        a2, t6, -1398
                  sll          s11, s1, s6
                  slli         s3, t5, 9
                  srli         t5, s11, 10
                  or           t6, s3, t3
                  sra          t5, a7, t3
                  ori          a7, s6, 60
                  lui          ra, 707607
                  lui          tp, 677722
                  sub          a4, t6, s4
                  sll          a0, sp, t5
                  sra          a6, t6, s6
                  auipc        ra, 756684
                  slti         a5, t0, -1572
                  or           t4, s11, s0
                  and          a3, a5, zero
                  xori         t6, a1, -854
                  srli         s2, a1, 26
                  srl          a2, a1, s9
                  srli         s11, s1, 5
                  srl          a4, s3, s3
                  slti         s6, a0, -1988
                  auipc        s7, 968126
                  srai         s10, zero, 17
                  slli         s2, a0, 9
                  lui          a7, 263489
                  nop
                  nop
                  sll          ra, s10, t4
                  auipc        s6, 967008
                  xori         t6, s0, -1239
                  sub          s1, t0, s6
                  srli         s3, s3, 10
                  lui          s6, 36978
                  and          gp, gp, s0
                  and          a0, t3, t2
                  and          a2, zero, t2
                  slt          s4, s7, a4
                  sll          a0, s2, t2
                  andi         s6, a0, 826
                  lui          s3, 590471
                  sltiu        t2, t2, -470
                  xori         a5, s1, 928
                  auipc        a2, 936005
                  xori         s8, t6, -1461
                  add          a3, a0, s9
                  srl          a3, s6, a7
                  srai         a0, t5, 2
                  srai         s7, s9, 28
                  or           s7, t3, a3
                  andi         s5, zero, 1841
                  slli         a5, a6, 15
                  sltiu        s11, s0, 231
                  and          t5, a7, s7
                  sltu         a1, sp, s11
                  andi         a3, a5, 1282
                  sltiu        s9, a0, 142
                  nop
                  sub          a6, t0, a2
                  ori          a3, a5, -476
                  ori          gp, s10, -1500
                  addi         s8, sp, 1267
                  srl          tp, ra, s10
                  sltu         a6, s4, t4
                  or           t6, s1, t3
                  and          s2, t4, t3
                  lui          a2, 993895
                  slti         tp, s5, -169
                  or           t2, t1, ra
                  sub          a7, s3, t4
                  sll          s1, a3, t6
                  slli         s2, t2, 27
                  add          a5, s2, s9
                  srl          a0, s2, s1
                  sll          s11, s11, s8
                  xor          a6, a7, s6
                  lui          s2, 1002817
                  addi         s1, gp, -1745
                  or           ra, s4, s7
                  slt          s11, s2, t1
                  sra          t1, a0, s7
                  sra          s2, s3, s5
                  xor          s3, s8, sp
                  lui          ra, 181418
                  slt          s2, s10, s10
                  lui          t1, 140032
                  and          t2, s7, s1
                  and          ra, s8, t3
                  add          s4, t3, s4
                  xori         a5, t1, -1973
                  sll          s9, t2, a0
                  lui          s5, 115372
                  sub          a0, a7, a0
                  nop
                  lui          s1, 146229
                  sra          t2, a4, a0
                  slt          s5, t5, s6
                  xor          s2, s7, a5
                  auipc        sp, 272004
                  lui          zero, 209704
                  lui          tp, 264733
                  srai         s3, sp, 29
                  ori          s10, a2, 279
                  and          s2, s9, t4
                  xor          s9, s9, s6
                  addi         s2, a2, 1599
                  slli         t6, s7, 24
                  srl          a1, s7, s9
                  sll          s3, s9, t1
                  xor          a0, sp, t5
                  srli         t5, a4, 22
                  srai         s10, s11, 0
                  sra          a7, s0, a3
                  addi         s11, s8, 650
                  auipc        a4, 970050
                  addi         s9, s4, 1714
                  or           s4, s9, s0
                  addi         t6, t0, -1207
                  lui          t1, 872405
                  add          sp, s9, sp
                  andi         s6, t1, -149
                  slt          s8, t6, a7
                  slti         a3, s7, 89
                  sub          s11, tp, zero
                  slli         a3, tp, 8
                  sra          s5, s7, a4
                  sra          a1, s6, zero
                  auipc        a0, 500395
                  add          s1, a7, s11
                  ori          a2, a3, -917
                  slti         s5, a1, -498
                  andi         t4, s2, 1540
                  xor          t2, t3, s4
                  slti         s10, a7, 95
                  srai         t4, zero, 14
                  nop
                  lui          s6, 975525
                  lui          s10, 810071
                  srai         a2, s1, 19
                  ori          s4, zero, -1705
                  xor          s7, a2, s5
                  slli         t1, s6, 14
                  srl          s6, a1, t4
                  slt          t1, a5, s1
                  add          gp, sp, s4
                  sra          s3, s5, a7
                  addi         s3, a0, -549
                  sltiu        zero, s9, -1584
                  nop
                  sltiu        s3, sp, -1386
                  srli         s11, s5, 9
                  andi         t1, s0, 1380
                  or           s2, s7, a2
                  slt          s5, a6, s8
                  ori          t6, t3, -917
                  xor          a4, gp, t4
                  addi         t4, s4, -1498
                  srli         gp, a3, 15
                  srai         gp, ra, 12
                  andi         a1, s3, -1689
                  andi         s8, a1, -4
                  srl          s2, a2, a1
                  sltu         tp, a7, ra
                  auipc        s6, 244897
                  ori          t2, zero, -1383
                  srl          a0, a1, s8
                  or           s3, zero, s5
                  addi         a6, s4, 296
                  auipc        a3, 857488
                  slt          a0, t1, s9
                  srl          t5, s0, s8
                  sltiu        s4, s5, 1254
                  sll          ra, zero, s6
                  sra          a7, t6, t5
                  lui          s9, 30365
                  sll          a0, s1, s7
                  sltu         sp, s4, s3
                  sltiu        s9, gp, 1703
                  xori         s6, t3, -1251
                  slt          a5, s5, s10
                  srai         s6, a4, 21
                  lui          s2, 217965
                  srli         gp, a7, 20
                  or           s9, s4, s0
                  nop
                  and          zero, s8, s4
                  addi         a1, sp, 33
                  srai         s6, a5, 13
                  addi         s3, s4, -1055
                  xori         s1, t3, -105
                  slti         s10, gp, 1940
                  lui          s9, 1035510
                  or           s3, t6, t2
                  ori          tp, sp, 1671
                  sub          a4, s9, a2
                  slli         a2, t4, 29
                  sra          a2, t1, gp
                  ori          s5, a4, 524
                  sub          sp, ra, s1
                  sltu         a6, gp, a4
                  auipc        a1, 121302
                  nop
                  slli         s10, t0, 6
                  srai         s5, a5, 1
                  srai         s11, tp, 6
                  sub          tp, s0, s9
                  and          s4, ra, s4
                  sltu         t2, t2, s0
                  andi         s9, a3, -1056
                  xori         zero, tp, -1735
                  sltu         s1, t5, a2
                  slti         a2, t4, 1157
                  add          ra, t6, tp
                  addi         s3, a2, 328
                  and          a6, a3, t2
                  slli         zero, a7, 1
                  ori          a0, tp, -392
                  sltu         ra, a1, s10
                  sra          s7, s2, s3
                  xor          tp, s5, s9
                  lui          s11, 611097
                  xori         a3, t2, -514
                  andi         t4, s4, 1849
                  xor          zero, a5, t4
                  srai         s1, s0, 0
                  slt          t1, s2, t3
                  srai         sp, a4, 6
                  andi         a4, t0, -709
                  addi         s5, s5, -920
                  slli         a3, s6, 1
                  sub          s3, ra, s5
                  add          a4, s7, s2
                  andi         a5, t6, -1500
                  sra          t2, a3, s3
                  srli         s10, s3, 16
                  nop
                  and          t4, zero, s6
                  auipc        s1, 86806
                  sltiu        zero, s11, -655
                  nop
                  sra          a3, a1, tp
                  and          a1, s3, s4
                  lui          s7, 1038985
                  sub          s3, s3, s9
                  sltu         s4, s9, zero
                  srai         s7, a1, 31
                  xor          a2, t3, t3
                  lui          s5, 426782
                  sll          a1, a5, s5
                  slti         t6, s5, -1722
                  xori         a5, t2, -621
                  add          s5, s8, t3
                  sra          a2, t2, a4
                  xor          t5, t2, s9
                  slt          s6, s10, a1
                  xori         sp, a3, 1799
                  slli         tp, t5, 17
                  auipc        t4, 37874
                  sub          s5, s3, s3
                  add          a7, tp, t1
                  sll          s11, t0, t1
                  srai         a1, a2, 28
                  srl          t4, t0, t6
                  srai         a6, s7, 2
                  xor          s6, t6, t6
                  slli         a4, t2, 31
                  slti         s10, t1, 1626
                  add          s7, s4, s0
                  add          s7, s1, a5
                  ori          a2, s6, -1377
                  add          sp, ra, a2
                  or           a0, a0, s5
                  ori          a7, t5, -1929
                  auipc        a0, 401749
                  sltiu        a0, s11, -1393
                  add          s10, t1, a6
                  sltiu        s1, tp, 285
                  andi         t6, a6, -302
                  slti         t1, s10, 1339
                  srl          ra, a3, t1
                  slt          s3, a3, a0
                  xor          a2, s11, a7
                  sra          s2, a1, t5
                  auipc        t5, 413493
                  sltiu        a0, s4, -518
                  slt          a0, s2, t2
                  addi         gp, sp, 1544
                  ori          t2, a3, 169
                  nop
                  sltiu        s2, s2, -91
                  andi         a7, zero, -633
                  sll          ra, s4, ra
                  or           s3, sp, tp
                  xor          s9, s10, a5
                  andi         ra, a6, -1312
                  sltu         sp, s6, s9
                  sltiu        a5, t4, 1502
                  lui          t6, 511838
                  addi         a3, ra, 1176
                  sra          a1, t6, zero
                  lui          s9, 741604
                  sltiu        sp, a3, -1346
                  andi         t5, a1, 194
                  nop
                  or           s11, s11, t3
                  and          a7, t2, sp
                  add          t4, zero, sp
                  srai         t4, gp, 0
                  xori         t4, zero, 1947
                  sltiu        t2, s6, 682
                  xor          s8, s0, s1
                  lui          a5, 243375
                  nop
                  add          s9, s3, s8
                  or           t4, a1, zero
                  and          a6, s4, gp
                  nop
                  slli         s3, s5, 29
                  srl          ra, a5, t0
                  add          s5, a4, ra
                  sub          t4, t0, t0
                  nop
                  sll          t6, s5, a5
                  sra          a3, t0, s4
                  xor          s4, a6, a4
                  and          a2, gp, t0
                  xor          t6, a1, t4
                  xori         a1, t3, -230
                  slt          s5, s10, gp
                  srai         gp, t6, 0
                  srai         sp, t6, 0
                  sltu         s8, a6, s6
                  srai         s5, t6, 13
                  lui          t4, 998531
                  srli         s9, s5, 3
                  sra          s5, t0, s7
                  or           s8, s3, a4
                  and          s1, ra, a7
                  sltu         a3, s9, t0
                  and          gp, s10, a2
                  sltiu        t5, s6, 539
                  sltiu        a0, t4, -1388
                  auipc        s9, 290359
                  and          s10, a7, a1
                  addi         a1, ra, 676
                  sll          s2, gp, s10
                  sub          s7, s6, a6
                  auipc        t4, 250697
                  or           a2, tp, zero
                  sltu         tp, s10, s7
                  andi         sp, a4, -295
                  slt          a6, a7, tp
                  sll          s2, s9, a6
                  xori         s1, a5, -862
                  sub          t5, s9, s6
                  nop
                  add          s7, sp, t4
                  nop
                  slti         a2, s1, -404
                  sra          s9, s1, a6
                  li           a4, 0xdf03c430 #start riscv_int_numeric_corner_stream_1
                  li           s7, 0x0
                  li           a6, 0x0
                  li           gp, 0xffffffff
                  li           a0, 0x7d8d493b
                  li           s5, 0xb0c4a5e1
                  li           s4, 0xf1f7e22c
                  li           t2, 0xce37ee3f
                  li           a1, 0x0
                  li           tp, 0x80000000
                  auipc        a0, 228116
                  nop
                  sub          a4, a6, t2
                  nop
                  add          s7, t2, a1
                  lui          a6, 92300
                  lui          s5, 403317
                  sub          t2, gp, t2
                  lui          t2, 525100
                  add          gp, a4, s4
                  sub          gp, s7, s4
                  add          s4, s5, a4
                  sub          s5, s7, t2
                  add          s4, s4, gp
                  addi         a4, s4, -1886
                  lui          s5, 699192
                  sub          a4, s5, s4 #end riscv_int_numeric_corner_stream_1
                  add          s5, a0, a2
                  sltiu        a3, s9, 1683
                  andi         s2, s5, 1408
                  sll          a2, t2, s1
                  xori         zero, a2, 1191
                  srl          zero, sp, a5
                  auipc        tp, 632746
                  xori         s3, s10, 411
                  sltiu        a6, s10, -992
                  sll          tp, s5, s7
                  xor          a6, t3, a1
                  sub          a7, a0, zero
                  srl          s9, s6, s3
                  sll          a0, tp, s3
                  nop
                  srai         a4, s0, 24
                  or           gp, t2, tp
                  auipc        a0, 907574
                  sub          sp, t1, s5
                  srai         t2, s7, 11
                  slti         t1, zero, -738
                  srai         a4, a2, 3
                  slti         a7, t2, -959
                  ori          s6, tp, -313
                  xor          sp, s9, sp
                  xori         s2, sp, 1024
                  slti         t2, s11, 1260
                  addi         s5, t3, -980
                  slt          s11, s7, s0
                  sltu         ra, a0, t5
                  andi         s6, t5, -518
                  sltiu        t1, s0, -1070
                  sltiu        a5, s1, 1471
                  sll          s8, t6, a2
                  slt          t4, sp, t3
                  andi         a4, s2, 159
                  xor          s1, t2, s10
                  slti         t1, s5, 1159
                  add          s6, s8, t3
                  slti         t6, s1, 1647
                  addi         s4, a7, -876
                  andi         a0, s1, -799
                  xori         s11, ra, 148
                  nop
                  sra          s5, a3, a3
                  andi         a5, s8, 1153
                  slt          a7, gp, s11
                  xori         t2, zero, -145
                  add          s2, t0, s8
                  sltiu        s4, s3, -977
                  sra          a3, s11, s3
                  srl          a2, s6, s3
                  ori          t4, s9, -526
                  sub          a5, t1, s11
                  ori          s1, s4, -1730
                  srli         ra, t6, 0
                  sll          t5, zero, ra
                  nop
                  ori          s9, s7, 1962
                  srli         t5, s1, 18
                  sll          a4, s2, s3
                  sltiu        s4, t1, -139
                  andi         a4, s9, -15
                  srl          a0, s6, a3
                  slli         s10, s3, 21
                  addi         tp, a2, 1123
                  srli         t1, t1, 8
                  xori         s2, a3, -502
                  xori         s8, s0, 12
                  slti         a2, t0, -492
                  sll          tp, s7, a7
                  slli         tp, a3, 23
                  slt          s3, a3, t1
                  srai         zero, s3, 12
                  auipc        gp, 411488
                  slt          a6, t3, s10
                  slli         a3, a1, 6
                  lui          s4, 445218
                  sltiu        a3, s4, -609
                  auipc        a6, 905205
                  ori          a5, t0, -1934
                  lui          s10, 357533
                  andi         a3, a3, 285
                  sll          s3, a2, a1
                  andi         zero, ra, 791
                  sub          t6, s0, t1
                  sltu         a2, s9, s4
                  or           s5, a0, ra
                  sll          s2, a1, a4
                  slt          a4, t3, a5
                  xor          t6, t3, a0
                  xori         tp, ra, -1889
                  andi         a2, s9, 1867
                  andi         s1, a5, -1858
                  auipc        a0, 997306
                  srli         a0, a0, 6
                  slli         a3, s11, 28
                  or           s5, ra, zero
                  sll          t6, t1, a3
                  or           a7, gp, s11
                  ori          a1, ra, 1681
                  sub          s3, gp, s2
                  sub          a4, ra, s9
                  sub          a5, s2, a6
                  sra          s11, a4, s8
                  sltiu        s2, s10, -1153
                  sll          tp, a0, s6
                  ori          a1, s7, -1525
                  sub          tp, s9, t4
                  andi         a1, tp, 800
                  srli         a2, s6, 13
                  and          a5, a3, t1
                  xor          t6, a1, t0
                  sra          s3, t0, t3
                  addi         a3, a7, 1264
                  addi         t5, s7, -1096
                  auipc        s6, 187473
                  sub          a3, t2, s4
                  slli         s11, gp, 29
                  auipc        tp, 906249
                  slli         s10, s9, 22
                  and          tp, a6, s3
                  sltiu        s2, s8, -1615
                  addi         s8, s10, 1967
                  nop
                  lui          s3, 852215
                  lui          a3, 918681
                  sltiu        sp, s8, 620
                  slli         s8, t1, 0
                  lui          a1, 591680
                  lui          t6, 336338
                  slli         a5, s9, 10
                  srai         a1, s3, 3
                  nop
                  srl          s9, s10, a6
                  xori         s6, s9, 741
                  sll          t1, a2, s7
                  lui          ra, 718216
                  sra          tp, a3, s4
                  add          t2, s4, t2
                  lui          t5, 185538
                  and          zero, ra, a5
                  xori         s7, s9, -1842
                  sll          a5, t1, a1
                  slli         a7, s6, 20
                  slli         a1, a6, 30
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           a7, 0x24071031
                  li           a5, 0xffffffff
                  li           s4, 0x80000000
                  li           s3, 0x80000000
                  li           a2, 0x80000000
                  li           tp, 0x80000000
                  li           t2, 0x80000000
                  li           s10, 0x0
                  li           a1, 0xa91e5a31
                  sub          s10, tp, a2
                  addi         s4, s10, 1457
                  sub          a7, s3, s3
                  nop
                  auipc        t2, 510066
                  sub          a5, a7, t2
                  add          t2, a1, t2
                  addi         s10, a1, -1708
                  sub          s3, tp, s4
                  lui          a5, 607664
                  add          s10, s4, a0
                  addi         t2, t2, -697
                  add          s10, t2, s10
                  nop
                  sub          s3, a1, a5
                  add          s10, s3, a1
                  addi         s10, t2, 1768
                  lui          a2, 786562 #end riscv_int_numeric_corner_stream_6
                  andi         t1, t4, 898
                  xor          a6, a6, s5
                  sub          a3, t3, s4
                  srl          s11, s7, gp
                  srai         a5, a2, 3
                  andi         sp, t1, -1181
                  slti         a3, a0, -1964
                  nop
                  slli         tp, s9, 30
                  xori         a2, s7, -316
                  srl          t4, t1, t2
                  slt          s3, t2, s7
                  sll          t6, ra, zero
                  lui          a6, 467220
                  slti         s10, gp, 2025
                  xori         a7, s8, 328
                  nop
                  and          a0, s8, s0
                  sll          a3, s1, t4
                  sltu         s2, a3, t6
                  srl          ra, a1, ra
                  ori          ra, gp, -584
                  srli         t1, s11, 15
                  slli         sp, ra, 6
                  sub          a5, s5, s2
                  xori         gp, a7, -1132
                  srli         s2, s3, 27
                  addi         a3, s6, -827
                  sltiu        a2, gp, -1150
                  xori         a5, s9, -1576
                  nop
                  srai         s3, s7, 25
                  slli         a6, a2, 6
                  addi         s11, a6, 619
                  sra          t6, a3, s2
                  xor          s1, t2, s10
                  lui          sp, 7564
                  nop
                  sltiu        s2, s1, -1760
                  addi         a2, t6, -1147
                  sub          t2, a1, t4
                  srl          zero, a7, t3
                  add          tp, s7, s11
                  srai         t2, s4, 31
                  or           a0, a0, s5
                  lui          a6, 703550
                  slt          t1, a5, a0
                  sltiu        t4, ra, -1434
                  sub          s11, s10, s10
                  or           s7, s0, s9
                  slli         s11, s2, 9
                  srl          s8, s2, a0
                  andi         a5, s2, -1401
                  srli         a3, s5, 29
                  srl          t4, a0, t5
                  xor          a0, t0, a5
                  add          a3, a6, ra
                  sltiu        a5, s9, 226
                  sltu         zero, s2, s7
                  sra          a0, s7, t3
                  xor          t6, sp, t2
                  add          a4, t3, s5
                  nop
                  xori         s6, a0, -1368
                  ori          s3, t0, -1380
                  sltiu        a6, tp, -1489
                  sltiu        a4, t2, -80
                  andi         t4, s2, 926
                  and          a1, a0, sp
                  sll          tp, t1, t0
                  or           s4, s1, a0
                  auipc        t4, 859735
                  nop
                  sltiu        a5, s9, -808
                  srai         a1, s10, 27
                  sub          a6, s0, a6
                  addi         s7, s1, 1716
                  slli         s6, s3, 4
                  add          sp, t6, s3
                  sltiu        s6, s1, 1189
                  srai         a4, a0, 17
                  sll          a3, tp, tp
                  andi         a4, a7, 291
                  lui          sp, 428116
                  slti         s10, t0, -1075
                  sub          a2, a3, s9
                  auipc        s4, 740633
                  add          s3, s6, t6
                  nop
                  xori         gp, a0, 805
                  sltu         t4, t4, a2
                  lui          a1, 747543
                  addi         t1, s2, -1847
                  srl          a6, a4, s10
                  auipc        a6, 905265
                  auipc        s9, 167431
                  sll          s8, a5, t2
                  add          s4, s0, s6
                  ori          t1, a2, -524
                  li           t1, 0xec3e2854 #start riscv_int_numeric_corner_stream_2
                  li           s10, 0x0
                  li           s1, 0x0
                  li           t5, 0x60a22fc8
                  li           s4, 0xffffffff
                  li           a5, 0x80000000
                  li           s11, 0xffffffff
                  li           a4, 0xffffffff
                  li           gp, 0xe0986c0f
                  li           a6, 0xffffffff
                  nop
                  sub          a5, a6, t1
                  auipc        t1, 495502
                  nop
                  nop
                  sub          s1, s10, s11
                  auipc        a4, 898689
                  add          a6, s4, a4
                  lui          s11, 204420
                  lui          t5, 270908
                  auipc        t1, 910806
                  nop
                  nop
                  sub          s10, s4, s1
                  add          a5, s11, s10
                  nop #end riscv_int_numeric_corner_stream_2
                  add          s5, gp, s2
                  xor          s7, s0, a6
                  sub          s8, a7, s9
                  sra          a4, s6, a4
                  lui          a6, 213787
                  srli         t1, a7, 30
                  lui          s7, 907230
                  srl          s9, ra, a3
                  sltiu        a7, a4, 1639
                  xori         s5, t5, 1944
                  auipc        s10, 746642
                  auipc        s2, 601861
                  andi         a2, a7, -840
                  sltiu        s4, s8, 37
                  and          s3, zero, gp
                  slt          s8, t4, a7
                  ori          s4, s3, 1009
                  sub          s1, tp, a5
                  xor          a1, a2, a0
                  sltiu        s9, t0, -1976
                  slt          ra, s4, t0
                  sra          s10, zero, s2
                  sltiu        s2, t1, 1954
                  sra          s4, s10, a6
                  addi         a3, s9, -1621
                  sltiu        a0, s5, 1109
                  srai         ra, s9, 1
                  sll          s4, s7, s1
                  sll          s10, a7, a3
                  sub          s4, s6, s7
                  sub          a4, t6, a7
                  add          tp, sp, sp
                  srai         a6, gp, 26
                  sra          s7, s10, s1
                  sltu         zero, s3, tp
                  ori          sp, a4, -342
                  sub          s9, s7, s7
                  slti         s10, s3, 145
                  lui          a3, 743684
                  xor          s11, s6, s10
                  xori         a2, a2, -1938
                  ori          a2, t0, 856
                  sll          s4, a2, s0
                  srai         tp, gp, 18
                  slli         s5, a4, 25
                  sltu         s3, a1, t4
                  lui          s5, 428159
                  sra          s7, a5, s0
                  xori         s7, s7, 1068
                  slt          s6, a7, t3
                  sra          a2, a2, t0
                  srai         ra, s1, 4
                  auipc        s8, 983770
                  andi         a2, s5, 1371
                  sll          a5, s5, a5
                  addi         s11, t2, 1540
                  sll          ra, gp, sp
                  or           s8, s10, t6
                  andi         t2, zero, 331
                  sra          t6, s4, a5
                  slti         t5, a2, -1336
                  xori         zero, gp, -1020
                  lui          t5, 195789
                  auipc        s6, 728727
                  lui          a7, 602154
                  srl          sp, zero, s9
                  sub          s1, a0, s3
                  addi         s2, s11, 1585
                  add          t5, s0, a7
                  xor          a2, s6, s4
                  and          s6, t0, a4
                  srli         sp, t5, 14
                  or           ra, t6, s3
                  auipc        t5, 996003
                  srli         a0, t6, 10
                  srli         a7, a4, 11
                  addi         t5, a7, -1122
                  slt          s11, a0, s4
                  slli         a5, t0, 31
                  slti         sp, ra, 1665
                  xori         s6, s5, -650
                  andi         zero, ra, 691
                  lui          a4, 431530
                  sltu         t2, t1, s9
                  xor          t2, tp, ra
                  sll          s8, t6, s5
                  slli         t5, s2, 6
                  slti         ra, zero, 1202
                  sub          t2, t6, a2
                  ori          a2, a7, 1375
                  srl          s7, s9, s11
                  and          a4, s10, sp
                  slt          ra, a6, s6
                  sll          s9, t2, t1
                  auipc        s5, 124569
                  xori         a5, s9, -1934
                  and          t4, s6, t1
                  sltu         s3, tp, s11
                  xor          zero, s2, s1
                  srli         s8, sp, 28
                  add          a5, t5, ra
                  sll          tp, a6, s6
                  sra          sp, ra, s10
                  lui          a0, 188721
                  auipc        a5, 236549
                  auipc        s10, 663392
                  nop
                  slli         a0, s3, 1
                  addi         a2, a1, -882
                  xori         t4, ra, -153
                  or           t4, s11, t5
                  add          t5, t2, a2
                  srli         ra, s5, 10
                  sltiu        t5, s4, 174
                  xori         t2, tp, 1587
                  sra          gp, a5, s10
                  or           a0, s8, t2
                  sll          a6, s9, s6
                  ori          gp, t5, -925
                  nop
                  and          a4, s7, a6
                  xor          zero, s1, s9
                  nop
                  srl          a0, s3, s9
                  nop
                  and          t2, s11, a3
                  add          s2, s9, s4
                  srli         a1, s11, 15
                  andi         t6, t2, 647
                  sra          s5, t4, s11
                  slli         a7, s7, 17
                  andi         gp, ra, -1622
                  srl          ra, t6, s4
                  add          a7, s10, s11
                  slli         a0, s3, 8
                  add          a6, a4, t6
                  or           tp, s1, a5
                  sll          a2, t1, tp
                  nop
                  add          s10, s4, a7
                  srli         ra, s5, 6
                  srl          t5, t2, t1
                  srai         s4, t3, 12
                  or           a7, s6, a7
                  nop
                  andi         a0, a4, -719
                  sltiu        a2, a4, 287
                  or           t1, zero, a0
                  and          s10, s0, gp
                  auipc        gp, 13126
                  xori         a7, s6, -824
                  slti         tp, ra, -1691
                  slt          s1, t0, s2
                  xori         s10, s7, -1799
                  srl          a4, s3, a4
                  sra          a3, a4, s2
                  xori         s7, t0, 1185
                  slt          t5, s4, s7
                  add          zero, a2, t5
                  nop
                  sll          a5, s3, s2
                  sltu         t5, s1, a6
                  sub          a5, s6, zero
                  nop
                  lui          t5, 203429
                  nop
                  srai         t4, a1, 10
                  xor          tp, sp, s2
                  and          t6, s7, s11
                  xori         s11, t3, -166
                  xor          s6, a7, tp
                  srai         s2, t2, 5
                  addi         s7, s0, 521
                  lui          sp, 86599
                  auipc        zero, 153972
                  slti         t5, t2, 954
                  lui          s4, 638877
                  slli         t5, t0, 11
                  slli         s5, s4, 20
                  andi         a4, t1, 1152
                  sltu         s9, s1, s10
                  sltiu        a1, t3, -110
                  sll          s9, s10, gp
                  andi         s10, tp, 972
                  andi         a7, s1, 1066
                  sll          t2, s1, tp
                  xori         t2, s6, -1208
                  lui          s9, 154227
                  lui          s9, 405021
                  sra          s2, t1, s7
                  slli         a6, s6, 5
                  slli         gp, s6, 0
                  or           sp, s4, a6
                  nop
                  auipc        s2, 489355
                  slli         zero, s0, 11
                  andi         tp, t2, -610
                  ori          a4, a4, 744
                  nop
                  sll          s11, sp, t3
                  sub          s6, t2, gp
                  slli         a0, a3, 4
                  srl          t4, sp, t0
                  and          tp, s6, a5
                  slt          tp, t6, a5
                  sra          t4, s5, gp
                  andi         s4, s2, 11
                  xori         s1, s5, -1707
                  lui          t1, 492180
                  or           s1, t1, s0
                  ori          s7, s9, -29
                  or           s10, s0, s9
                  srai         zero, s6, 0
                  srli         s6, t5, 8
                  srl          s11, a6, t0
                  addi         s9, zero, 358
                  slli         a1, s10, 20
                  ori          s10, t2, 450
                  sltu         s9, a2, a6
                  and          s8, s3, t4
                  auipc        t2, 631847
                  lui          t4, 588179
                  sltiu        t6, a6, -1845
                  slli         s8, zero, 31
                  srai         t1, s4, 2
                  nop
                  auipc        a2, 1047006
                  andi         a4, s0, -1705
                  sltu         a1, a6, s1
                  auipc        a0, 850554
                  slti         s10, sp, 611
                  sll          s5, s1, t4
                  srli         s7, s10, 19
                  andi         s6, s11, -1194
                  xori         a6, s6, 561
                  addi         a1, zero, -319
                  srai         s1, sp, 5
                  ori          tp, s0, -1998
                  sra          t2, s8, a0
                  sra          a5, a4, tp
                  sra          a6, s10, a0
                  srli         a6, a0, 27
                  slli         s1, tp, 30
                  sltiu        t5, s9, 1387
                  srli         gp, s5, 13
                  auipc        s10, 201384
                  sltu         s4, s11, a5
                  auipc        s1, 736412
                  andi         zero, s1, 1061
                  or           s10, s11, sp
                  sra          t2, s8, a6
                  nop
                  or           s10, sp, s6
                  sltiu        a0, s3, -806
                  slti         s4, s7, 758
                  sll          a7, sp, t1
                  srl          t4, sp, s3
                  addi         s10, s5, 1301
                  lui          a3, 905651
                  sltu         t5, s5, zero
                  andi         s5, a2, 1301
                  xori         gp, gp, 313
                  auipc        a6, 76011
                  lui          a1, 28776
                  lui          a6, 985032
                  sltu         a4, s3, a3
                  slli         t6, a2, 29
                  or           s2, sp, s10
                  addi         a6, a6, -1445
                  srai         s11, t6, 19
                  sub          t2, a1, t2
                  sub          s7, s11, s9
                  auipc        s5, 920823
                  slt          a4, a6, s11
                  srai         s11, s2, 6
                  add          a6, s7, t0
                  sltu         sp, a4, ra
                  auipc        s9, 622790
                  and          ra, a4, a6
                  sltiu        s5, s5, -40
                  ori          gp, s7, -1535
                  ori          s3, a4, 2017
                  auipc        a7, 529348
                  sll          a7, t2, t2
                  nop
                  or           t2, s8, a7
                  sub          a4, t6, s8
                  sll          a2, s3, a6
                  sll          t1, s1, t3
                  add          ra, a7, t6
                  xori         s10, sp, -414
                  slti         tp, t5, -1187
                  auipc        t1, 591066
                  or           s7, t0, s2
                  ori          a6, t6, -1444
                  sub          a7, t5, a0
                  sub          sp, t3, s7
                  sltiu        a6, s1, 1863
                  sll          s10, tp, t6
                  xor          t6, s0, a6
                  slti         s8, s8, 865
                  xor          zero, a1, t1
                  slt          gp, sp, s11
                  srai         a4, tp, 4
                  lui          t4, 453089
                  andi         s9, a6, 1701
                  lui          s5, 916062
                  addi         t5, a7, 488
                  lui          a1, 978325
                  ori          s8, t2, -1276
                  sra          s7, t5, t1
                  or           sp, t5, s11
                  nop
                  auipc        a2, 430236
                  xor          s1, s2, t4
                  srai         a7, sp, 3
                  or           a2, tp, t2
                  or           s2, t4, t3
                  lui          s6, 950817
                  sltu         s7, s3, t4
                  and          a4, t2, t6
                  slli         tp, a3, 24
                  srli         a4, s8, 18
                  srl          zero, a1, s8
                  sltiu        a0, s8, -281
                  srai         s6, s11, 15
                  add          zero, a5, t1
                  add          a6, t3, a2
                  sll          s9, s8, a6
                  srli         ra, t3, 9
                  andi         s7, s11, 1603
                  sub          s7, s0, s2
                  srli         a5, a6, 29
                  srli         s9, s3, 27
                  add          s9, t3, t0
                  addi         s4, s6, -1420
                  lui          s5, 392710
                  nop
                  sltu         gp, s4, s2
                  andi         t4, s7, -88
                  slli         s2, t1, 23
                  sltu         ra, s8, a4
                  sub          s4, a3, t0
                  sra          t4, a5, t3
                  xori         s10, s9, -492
                  xor          a0, sp, s6
                  slt          a5, a3, t0
                  lui          s7, 891418
                  xor          a0, s2, a4
                  xor          s7, zero, t5
                  ori          a7, a2, -319
                  srl          s1, zero, a3
                  andi         s3, t1, 826
                  lui          s10, 1011703
                  add          a7, a3, t5
                  ori          ra, a7, 1855
                  sub          t5, s0, t6
                  andi         s5, s1, -1637
                  srl          a3, gp, t0
                  or           t6, s6, s1
                  srli         s2, s5, 22
                  add          s11, t1, a4
                  xor          s6, s2, a5
                  nop
                  and          a7, t1, a0
                  and          s3, t0, s2
                  sll          a5, s1, s9
                  sll          a5, t1, t1
                  auipc        a0, 176796
                  sltiu        a2, a0, -1721
                  andi         a6, gp, -1399
                  auipc        a4, 627804
                  nop
                  ori          a4, s7, -1803
                  and          zero, t5, s6
                  addi         a6, s6, -206
                  sub          s5, s1, s1
                  sltu         a6, s7, s7
                  xori         t2, zero, -1687
                  xor          a3, a4, a0
                  slt          s4, gp, t2
                  slti         tp, a7, 737
                  or           t1, gp, s10
                  sltu         a3, s7, a1
                  auipc        t6, 288002
                  xori         t2, s3, -1957
                  nop
                  srl          a6, a2, tp
                  lui          s6, 176434
                  auipc        s7, 456266
                  ori          s8, s2, 255
                  sll          a4, a2, t4
                  or           s6, s10, t5
                  xori         s7, s11, 1048
                  lui          s3, 662437
                  xor          zero, t3, t5
                  and          s6, zero, t3
                  xori         zero, t3, 1484
                  add          a1, s11, s4
                  slli         a0, zero, 19
                  auipc        sp, 328942
                  or           a7, s9, tp
                  sra          s5, sp, a4
                  sub          s2, a2, t0
                  slt          sp, a5, s4
                  srli         ra, a6, 26
                  sra          s1, a6, s6
                  slli         s2, s1, 1
                  ori          t2, t5, -1414
                  srli         gp, gp, 25
                  xor          t2, gp, s3
                  slli         a2, t6, 9
                  or           s10, s1, s5
                  sltu         a1, s7, s0
                  sra          s9, s9, t3
                  slt          a6, s5, s4
                  srai         ra, s6, 9
                  andi         a2, t5, 702
                  srli         t4, s11, 0
                  sub          s10, s10, s9
                  auipc        a6, 511117
                  sll          tp, s11, t2
                  auipc        a3, 1007142
                  xori         s9, a0, 899
                  sra          a3, t0, s11
                  nop
                  nop
                  xori         t1, t0, 1906
                  sltu         t4, gp, t3
                  andi         s8, sp, 655
                  xor          s11, s6, s1
                  srai         t2, gp, 29
                  srl          zero, t6, s2
                  nop
                  sll          a6, s10, a2
                  xori         a1, t3, 1960
                  slt          s9, s4, a7
                  andi         s11, t6, -45
                  lui          s4, 497779
                  lui          gp, 185196
                  srai         s6, a2, 13
                  sltu         tp, t1, s7
                  or           t2, t0, t6
                  addi         a0, zero, -508
                  sra          a1, gp, s9
                  srli         zero, s2, 25
                  sub          a4, t1, gp
                  srli         ra, s2, 18
                  xori         t6, s5, 1338
                  slti         t2, t5, 1946
                  and          t6, s3, s2
                  sll          ra, a0, t0
                  xor          s7, a7, s3
                  nop
                  auipc        tp, 203142
                  sltiu        gp, s10, 167
                  sltiu        a3, s7, -1721
                  sll          sp, t4, t1
                  slli         ra, s10, 23
                  la x28, test_done
                  jalr x0, x28, 0
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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x5, x8, zero
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x23, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x23, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x23, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x23, x17, ecall_handler
                  li x17, 0x1
                  beq x23, x17, instr_fault_handler
                  li x17, 0x5
                  beq x23, x17, load_fault_handler
                  li x17, 0x7
                  beq x23, x17, store_fault_handler
                  li x17, 0xc
                  beq x23, x17, pt_fault_handler
                  li x17, 0xd
                  beq x23, x17, pt_fault_handler
                  li x17, 0xf
                  beq x23, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

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
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x8, x5, zero
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
                  add x8, x5, zero
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
                  add x8, x5, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x8, x5, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x8, x5, zero
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
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x8, x5, zero
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
